    section .text
;------------------------------------------------------------
;                                  ___ ___ _
;  ___ ___ ___ ___ ___       _____|  _| . | |_
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
;                     |_____|       V9958 Video
;------------------------------------------------------------
; Copyright (c)2020 Ross Bamford
; See top-level LICENSE.md for licence information.
;
; V9958 80x24 TEXT2 console.
;
; This console supports the following features:
;
;   * 80x24 lines
;   * Scrolling (Software, but fairly efficient)
;   * Support for CR and Backspace
;   * Flashing cursor, alternates between any two characters
;
; The following is still TODO (coming soon):
;
;   * Clear screen ability
;   * Programmatically move the cursor
;
;------------------------------------------------------------
;

; Options - Change these to suit your tastes...
DISPMODE          equ   DM_PAL            ; DM_PAL or DM_NTSC
CURSORHIGH        equ   152               ; "little" cursor character
CURSORLOW         equ   145               ; "big" cursor character
CURSORDELAY       equ   18                ; Blink delay, Lower is faster

BACKGROUND1       equ   %00100111         ; BG: 0 R2 R1 R0 0 B2 B1 B0
BACKGROUND2       equ   %00000010         ; BG: 0 0  0  0  0 G2 G1 G0
FOREGROUND1       equ   %01000111         ; FG: 0 R2 R1 R0 0 B2 B1 B0
FOREGROUND2       equ   %00000100         ; FG: 0 0  0  0  0 G2 G1 G0

; Addresses and other constants, don't change unless you know what
; you're doing...
PORT_RWDATA       equ   $F80000
PORT_WREG_SETUP   equ   $F80002
PORT_WPALETTE     equ   $F80004
PORT_WREG_DATA    equ   $F80006
MFP_GPDR          equ   $f80001
MFP_IERA          equ   $f80007
MFP_IERB          equ   $f80009
IRQ2_HANDLER      equ   $68
BSET              equ   $08f9
BCLR              equ   $08b9
NOP               equ   $4E71

LINELENGTH        equ   80                ; Must be a multiple of 4!
DWLINELENGTH      equ   LINELENGTH/4
LINECOUNT         equ   24
DISPLAYSIZE       equ   LINELENGTH*LINECOUNT
DWDISPLAYSIZE     equ   DISPLAYSIZE/4
CURSORDELAY2      equ   CURSORDELAY*2

DM_PAL            equ   2
DM_NTSC           equ   0

; Initialize the console
V9958_CON_INIT::
    movem.l D0-D1/A0,-(A7)

    ori.w   #$0200,SR                     ; No interrupts during init...

    ; Disable *all* MFP interrupts from here on out, they cannot
    ; work with other interrupts due to an IACK bug. We won't need
    ; them any more anyway...
    ;
    ; Also light up I0 in a nice reassuring fashion...
    move.b  #0,MFP_IERA
    move.b  #0,MFP_IERB
    move.b  #$FF,MFP_GPDR
    move.b  #$FE,MFP_GPDR

    move.l  #VBLANK_HANDLER,IRQ2_HANDLER  ; Install ISR

    ; Setup Palette
    move.b  #%00000000,PORT_WREG_SETUP    ; Start at palette register 0
    move.b  #$90,PORT_WREG_SETUP          ; .. in VDP register 16
    move.b  #BACKGROUND1,PORT_WPALETTE    ; 0 R2 R1 R0 0 B2 B1 B0 
    move.b  #BACKGROUND2,PORT_WPALETTE    ; 0 0  0  0  0 G2 G1 G0
    move.b  #FOREGROUND1,PORT_WPALETTE    ; 0 R2 R1 R0 0 B2 B1 B0 
    move.b  #FOREGROUND2,PORT_WPALETTE    ; 0 0  0  0  0 G2 G1 G0
    
    move.b  #%00010000,PORT_WREG_SETUP    ; Select FG1, BG 0
    move.b  #$87,PORT_WREG_SETUP          ; .. In VDP register 7

    move.b  #%00001010,PORT_WREG_SETUP    ; Select 64K DRAM, disable sprites
    move.b  #$88,PORT_WREG_SETUP          ; .. In VDP register 8
    
    ; Set pattern generator table to 0x800
    move.b  #1,PORT_WREG_SETUP            ; bits 16-11 of 0x800
    move.b  #$84,PORT_WREG_SETUP          ; .. to register 4

    ; Set pattern layout table to 0x0
    move.b  #3,PORT_WREG_SETUP            ; bits 10-16 of 0x0 | const 0x3
    move.b  #$82,PORT_WREG_SETUP          ; .. to register 2

    ; Set up to write VRAM at 0x800
    ; 0x800 equates to 00000100000000000, which is split across the writes as:
    ; Write 1: bits 16-14 = (00000)000  = 0
    ; Write 2: bits 7-0   = 00000000    = 0
    ; Write 3: bits 13-8  = (01)001000  = $48 ($40 is write-enable)
    move.b  #0,PORT_WREG_SETUP            ; VRAM Base at 0
    move.b  #$8E,PORT_WREG_SETUP          ; > register 14
    move.b  #0,PORT_WREG_SETUP            ; Set VRAM A0-A7
    move.b  #$48,PORT_WREG_SETUP          ; Set VRAM A8-A13, and write enable
    
    ; Set PAL/NTSC mode (TODO should be runtime configurable...)
    move.b  #DISPMODE,PORT_WREG_SETUP     ; Write PAL/NTSC mode
    move.b  #$89,PORT_WREG_SETUP          ; .. to register 9

    ; Load font to pattern table - Do this *before* enabling output,
    ; that way no slowdown is needed to write to VRAM...
    lea     __FONT_BEGIN,A0
    move.l  A0,D0
    sub.l   #__FONT_BEGIN,D0
    bra.s   .PATTERN_FILL

.PATTERN_FILL_LOOP:
    move.b  (A0)+,PORT_RWDATA             ; Full throttle - display is disabled
.PATTERN_FILL:
    dbra.w  D0,.PATTERN_FILL_LOOP
;    cmpa    #__FONT_END,A0
;    bne.s   .PATTERN_FILL_LOOP
    
    ; Set text mode 1, disable interrupts and enable output
    move.b  #%00000100,PORT_WREG_SETUP    ; Write DG=0,IE2=0,IE1=0,M5=0,M4=0,M3=0
    move.b  #$80,PORT_WREG_SETUP          ; To register 0
    move.b  #%01110000,PORT_WREG_SETUP    ; Write BL=1,IE0=0,M1=1,M2=0,SI=0,MAG=0
    move.b  #$81,PORT_WREG_SETUP          ; To register 1
   
    bsr.s   CLEARBUFFER

    andi.w   #~$0200,SR                   ; Enable interrupts...

    movem.l (A7)+,D0-D1/A0
    rts

; Clear buffer (private)
CLEARBUFFER:
    move.w  #DWDISPLAYSIZE,D1             ; Display size in longwords
    move.l  #BUFFER,A0
    bra.s   .ZEROBUF_START
.ZEROBUF_LOOP:
    move.l  #0,(A0)+                      ; Clear 4 characters
.ZEROBUF_START:
    dbra.w  D1,.ZEROBUF_LOOP
    rts


; Clear the screen
;
; Arguments:
;   None
;
; Modifies: 
;   None
;
; This depends on the implementation of CLEARBUFFER (i.e. 
; the register sizing therein). If that func changes, 
; this needs to be updated!
V9958_CON_CLRSCR::
    move.w  D1,-(A7)
    move.l  A0,-(A7)
    ori.w   #$0200,SR                      ; Disable interrupts
    bsr.s   CLEARBUFFER                    ; Clear
    andi.w  #~$200,SR                      ; And re-enable...
    move.w  #0,CURPOS
    move.l  (A7)+,A0
    move.w  (A7)+,D1
    rts


; Enable or disable flashing of I0 in VBLANK
;
; Arguments:
;   D0.B   0 for no flashing, not 0 for flashing.
;
; Modifies:
;   None
;
; This is here for legacy compatibility - since we no longer
; use MFP interrupts, this driver can flash I0 as a nice 
; and comforting bit of familiarity...
;
; It does mean an MFP access (with wait-states) from VBLANK 
; every once in a while though, so you can switch it off
; with this..
V9958_CON_SETFLASH::
    move.l  A0,-(A7)

    tst.b   D0
    beq.s   .TURNOFF

    ori.w   #$0200,SR                     ; VBLANK would go *badly* here

    lea.l   VBLANK_FLASH_IOOFF,A0         ; Write the BSET...
    move.w  #BSET,(A0)+
    move.w  #$0000,(A0)+
    move.w  #$00f8,(A0)+
    move.w  #$0001,(A0)+

    lea.l   VBLANK_FLASH_IOON,A0          ; ... and the BCLR
    move.w  #BCLR,(A0)+
    move.w  #$0000,(A0)+
    move.w  #$00f8,(A0)+
    move.w  #$0001,(A0)+

    andi.w  #~$0200,SR                    ; Safe to VBLANK again.
    bra.s   .DONE

.TURNOFF
    ori.w   #$0200,SR                     ; Same deal as above...

    lea.l   VBLANK_FLASH_IOOFF,A0         ; Write some NOPs...
    move.w  #NOP,(A0)+
    move.w  #NOP,(A0)+
    move.w  #NOP,(A0)+
    move.w  #NOP,(A0)+

    lea.l   VBLANK_FLASH_IOON,A0
    move.w  #NOP,(A0)+
    move.w  #NOP,(A0)+
    move.w  #NOP,(A0)+
    move.w  #NOP,(A0)+
    
    andi.w  #~$0200,SR                    ; Safe to VBLANK again.

.DONE
    move.l  (A7)+,A0
    rts


; Put a character to the screen
;
; Arguments:
;   D0.B  The character
;
; Modifies
;   D0.B  Possibly trashed
;
; Register alloc in function:
;   A0.L  Buffer
;   D1.W  CURPOS (buffer pointer)
;   D2.W  DISPLAYSTART (start pointer)
; 
V9958_CON_PUTCHAR::
    move.l  A0,-(A7)                      ; TODO this feels like it'll be
    move.w  D1,-(A7)                      ; faster than a movem as word-
    move.w  D2,-(A7)                      ; sized for D1/D2, but needs checking...
    
    move.w  CURPOS,D1                     ; Load current pointer

    ; Is this a carriage-return?
    cmp.b   #13,D0
    bne.s   .NOTCR

    ; Yes - handle CR
    clr.l   D2                            ; Find how far until start
    move.w  D1,D2                         ; of next line.
    divu.w  #LINELENGTH,D2                ; d1 = LINELENGTH - d1 % LINELENGTH                 
    swap    D2
    move.w  #LINELENGTH,D1
    sub.w   D2,D1

    move.b  #0,D0                         ; Recursively clear to EOL
    bra.s   .CLREOL                       ; (TODO Non-recursive would be faster...)
.CLREOL_LOOP
    bsr.s   V9958_CON_PUTCHAR
.CLREOL
    dbra.w  D1,.CLREOL_LOOP

    bra.s   .DONE
.NOTCR
    ; No, is it a backspace?
    cmp.b    #8,D0
    bne.s   .NOTBS

    ; Yes - handle backspace
    lea.l   BUFFER,A0                     ; Get buffer
    move.w  DISPLAYSTART,D2               ; Load start of display pointer
    cmp.w   D1,D2                         ; Are we at display start?
    beq.s   .DONE                         ; Yes - Ignore BS

    ori.w   #$0200,SR                     ; No interrupts for a sec...
    move.b  #0,(A0,D1)                    ; Clear any cursor that may be here
    subq.w  #1,D1                         ; Back a space
    andi.w  #~$0200,SR                    ; Go ahead with the interrupts...
    move.b  #0,(A0,D1)                    ; Clear it
    move.w  D1,CURPOS                     ; Store new position
    bra.s   .DONE

.NOTBS
    ; No - Just print
    lea.l   BUFFER,A0                     ; Get buffer

    move.b  D0,(A0,D1)                    ; Buffer this character
    addq.w  #1,D1

    cmp.w   #DISPLAYSIZE,D1               ; Are we at end of buffer?
    bne.s   .CHECKSCROLL                  ; Nope, go to check scroll

    move.w  #0,D1                         ; Yep, reset pointer

.CHECKSCROLL
    move.w  D1,CURPOS                     ; Store new pointer
    move.w  DISPLAYSTART,D2               ; ... and load start of display pointer
    
    cmp.w   D2,D1                         ; Wrapped back to start of display?
    bne.s   .DONE                         ; Nope, we're done

    ; Let's do some scrolling...
    addi.w  #LINELENGTH,D2                ; Scroll...
    cmp.w   #DISPLAYSIZE,D2               ; Reached end of the buffer?
    bne.s   .STORESTART                   ; Nope - on we go...

    move.w  #0,D2                         ; Yes - wrap around

.STORESTART
    move.w  D2,DISPLAYSTART               ; Save new start so we can reuse D2

    ; Clear the line...
    adda.l  D1,A0                         ; Point to start of line
    move.w  #DWLINELENGTH,D2              ; Counter is line length
    bra.s   .CLEARLINE
.CLEARLINE_LOOP
    move.l  #0,(A0)+                      ; Clear four characters
.CLEARLINE
    dbra.w  D2,.CLEARLINE_LOOP

.DONE
    move.w  (A7)+,D2
    move.w  (A7)+,D1
    move.l  (A7)+,A0
    rts


; Vertical blanking interval ISR
;
; Not using local labels here as some of this code is modified
; by other routines, so labels are used to address those bits
; and need to be visible externally...
;
VBLANK_HANDLER::
    movem.l  D0-D1/A0,-(A7)
    lea.l   BUFFER,A0                     ; We need the buffer...

    ; Sort out the cursor first...
    move.b  CURSORCOUNT,D0
    addq.b  #1,D0
    cmpi.b  #CURSORDELAY,D0
    bne.s   CHECKSHOW

    move.w  CURPOS,D1
    move.b  #CURSORLOW,(A0,D1)            ; Hide cursor at #25
VBLANK_FLASH_IOOFF:                       ; N.B. Next line modified by V9958_CON_SETFLASH!
    bset.b  #0,MFP_GPDR                   ; We've taken over this duty now..
    bra.s   CURSORDONE 

CHECKSHOW
    cmpi.b  #CURSORDELAY2,D0
    bne.s   CURSORDONE
    
    move.w  CURPOS,D1
    move.b  #CURSORHIGH,(A0,D1)           ; Show the cursor
VBLANK_FLASH_IOON:                        ; N.B. Next line modified by V9958_CON_SETFLASH!
    bclr    #0,MFP_GPDR                   ; (Blinking I0 as MFP interrupts are gone)
    move.b  #0,D0

CURSORDONE
    move.b  D0,CURSORCOUNT

    ; Now copy the screen...
    ; Set up to write VRAM at 0x0
    move.b  #0,PORT_WREG_SETUP            ; VRAM Base at 0
    move.b  #$8E,PORT_WREG_SETUP          ; > register 14
    move.b  #0,PORT_WREG_SETUP            ; Set VRAM A0-A7
    move.b  #$40,PORT_WREG_SETUP          ; Set VRAM A8-A13, and write enable

    move.w  DISPLAYSTART,D0
    move.w  #DISPLAYSIZE,D1
    bra.s   .COPY
.COPYLOOP
    move.b  (A0,D0),PORT_RWDATA           ; Full throttle here, allowed in VBLANK.
    addq.w  #1,D0
    cmpi.w  #DISPLAYSIZE,D0
    bne.s   .COPY

    move.w  #0,D0
  
.COPY
    dbra.w  D1,.COPYLOOP  

;.DONE
    move.b  #0,PORT_WREG_SETUP            ; Write 0 (SR#0)...
    move.b  #143,PORT_WREG_SETUP          ; ... to register 15 (with high bit set)
    move.b  PORT_WREG_SETUP,D0            ; And read status into it (clear interrupt flag)
    
    movem.l  (A7)+,D0-D1/A0
    rte


    section .bss

CURPOS        dc.w      0
DISPLAYSTART  dc.w      0
BUFFER        dcb.b     1920,0
CURSORCOUNT   dc.w      0


