;------------------------------------------------------------
;                                  ___ ___ _
;  ___ ___ ___ ___ ___       _____|  _| . | |_
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
;                     |_____|       V9958 Video
;------------------------------------------------------------
; Copyright (c)2020 Ross Bamford
; See top-level LICENSE.md for licence information.
;------------------------------------------------------------
;

PORT_RWDATA       equ   $F80000
PORT_WREG_SETUP   equ   $F80002
PORT_WPALETTE     equ   $F80004
PORT_WREG_DATA    equ   $F80006

    section .text                     ; This is normal code

kmain::

    move.b  #1,PORT_WREG_SETUP        ; Write 1 (SR#1)...
    move.b  #$8F,PORT_WREG_SETUP      ; ... to register 15 (with high bit set)
    eor.l   D1,D1                     ; Zero D1
    move.b  PORT_WREG_SETUP,D1        ; And read status into it
    and.b   #$3E,D1                   ; We only want ID number
    ror.b   #1,D1                     ; Shift right by 1 (for correct display)

    cmp.b   #2,D1                     ; V9958 has ID 2
    beq.s   .IS_9958
    
    lea.l   SZNOID,A1                 ; Print "not a 9958"
    bra.s   .DISPLAY_ID

.IS_9958:    
    lea.l   SZID,A1                   ; Print "is a 9958"

.DISPLAY_ID:
    move.l  #14,D0                    ; Print the message
    trap    #15
    move.l  #3,D0                     ; Print the ID
    trap    #15
    lea.l   SZCRLF,A1                 ; Print CRLF
    move.l  #14,D0
    trap    #15

.ENABLE_OUTPUT:
    ; Setup Palette
    move.b  #%00000000,PORT_WREG_SETUP ; Start at palette register 0
    move.b  #$90,PORT_WREG_SETUP       ; .. in VDP register 16
    ; Color 0 is black
    move.b  #%00000000,PORT_WPALETTE   ; 0 R2 R1 R0 0 B2 B1 B0 
    move.b  #%00000000,PORT_WPALETTE   ; 0 0  0  0  0 G2 G1 G0
    ; Color 1 is green
    move.b  #%00000000,PORT_WPALETTE   ; 0 R2 R1 R0 0 B2 B1 B0 
    move.b  #%00000111,PORT_WPALETTE   ; 0 0  0  0  0 G2 G1 G0
    
    move.b  #%00010000,PORT_WREG_SETUP  ; Select FG1, BG 0
    move.b  #$87,PORT_WREG_SETUP        ; .. In VDP register 7

    move.b  #%00001010,PORT_WREG_SETUP  ; Select 64K DRAM, disable sprites
    move.b  #$88,PORT_WREG_SETUP        ; .. In VDP register 8
    
    ; Set pattern generator table to 0x800
    move.b  #1,PORT_WREG_SETUP        ; bits 16-11 of 0x800
    move.b  #$84,PORT_WREG_SETUP      ; .. to register 4

    ; Set pattern layout table to 0x0
    move.b  #3,PORT_WREG_SETUP        ; bits 10-16 of 0x0 :D
    move.b  #$82,PORT_WREG_SETUP      ; .. to register 2

    ; Set up to write VRAM at 0x800
    ; 0x800 equates to 00000100000000000, which is split across the writes as:
    ; Write 1: bits 16-14 = (00000)000  = 0
    ; Write 2: bits 7-0   = 00000000    = 0
    ; Write 3: bits 13-8  = (01)001000  = $48
    move.b  #0,PORT_WREG_SETUP        ; VRAM Base at 0
    move.b  #$8E,PORT_WREG_SETUP      ; > register 14
    move.b  #0,PORT_WREG_SETUP        ; Set VRAM A0-A7
    move.b  #$48,PORT_WREG_SETUP      ; Set VRAM A8-A13, and write enable
    
    ; Set PAL mode
    move.b  #2,PORT_WREG_SETUP        ; Write 2 (PAL mode)
    move.b  #$89,PORT_WREG_SETUP      ; .. to register 9

    ; Set text mode 1, disable interrupts and enable output
    move.b  #%00000100,PORT_WREG_SETUP    ; Write DG=0,IE2=0,IE1=0,M5=0,M4=0,M3=0
    move.b  #$80,PORT_WREG_SETUP          ; To register 0
    move.b  #%01010000,PORT_WREG_SETUP    ; Write BL=1,IE0=0,M1=1,M2=0,SI=0,MAG=0
    move.b  #$81,PORT_WREG_SETUP          ; To register 1
    
    ; Copy 'font' to pattern table
    lea     __FONT_BEGIN,A0
.PATTERN_FILL_LOOP:
    move.b  (A0)+,PORT_RWDATA
    bsr.w   SLOWDOWN
    cmpa    #__FONT_END,A0
    bne.s   .PATTERN_FILL_LOOP
   
    ; Set up to write VRAM at 0x0
    move.b  #0,PORT_WREG_SETUP        ; VRAM Base at 0
    move.b  #$8E,PORT_WREG_SETUP      ; > register 14
    move.b  #0,PORT_WREG_SETUP        ; Set VRAM A0-A7
    move.b  #$40,PORT_WREG_SETUP      ; Set VRAM A8-A13, and write enable

    clr.w   D0
    move.l  #SZHEADER,A0
    bsr.s   PRINTMESSAGE
    move.l  #SZMESSAGE,A0
    bsr.s   PRINTMESSAGE

    ; Clear screen (TODO V9958 supports commands in text mode...) 
    move.w  #$780,D1                  ; Subtract length from full screen length
    sub.w   D0,D1           
    bra.s   .ZEROMEM_START
.ZEROMEM_LOOP:
    move.b  #' ',PORT_RWDATA
    bsr.w   SLOWDOWN   
.ZEROMEM_START:
    dbra.w  D1,.ZEROMEM_LOOP

.BUSYSTOP:
    bra.s   .BUSYSTOP

; Print SZ message in A0, returns length in D0
PRINTMESSAGE:
.PRINTLOOP
    move.b  (A0)+,D1
    tst.b   D1
    beq.s   .PRINTDONE
     
    move.b  D1,PORT_RWDATA  
    add.w   #1,D0                     ; Count length for later screen clear
    bsr.w   SLOWDOWN
    bra.s   .PRINTLOOP
.PRINTDONE
    rts
 
; Really big slowdown
SLOWDOWN:
    move.l  D0,-(A7)
    move.l  #10,D0
.WAIT
    nop
    dbra    D0,.WAIT
    move.l  (A7)+,D0
    rts

count       dc.l    0 
SZID        dc.b    "VDP Identifies as V9958; ID from SR: ", 0
SZNOID      dc.b    "VDP does not identify / is not a V9958; ID from SR: ", 0
SZCRLF      dc.b    13,10,0
SZSPACE     dc.b    " ", 0
;                    123456789^123456789^123456789^123456789^123456789^123456789^123456789^123456789^
SZHEADER    dc.b    "                                ___ ___ _                                       "
            dc.b    " ___ ___ ___ __ ___       _____|  _| . | |_                                     "
            dc.b    "|  _| . |_ -| _| . |     |     | . | . | '_|                                    "
            dc.b    "|_| |___|___|__|___|_____|_|_|_|___|___|_,_|                                    "
            dc.b    "                   |_____|       V9958 Video                                    "
            dc.b    "                                                                                ", 0
SZMESSAGE   dc.b    "Hello, World from rosco_m68k! ", 0

    include "font.S"

