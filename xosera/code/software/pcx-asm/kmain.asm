; ------------------------------------------------------------
;                                  ___ ___ _
;  ___ ___ ___ ___ ___       _____|  _| . | |_
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
;                     |_____|
; ------------------------------------------------------------
; Copyright (c) 2021 Ross Bamford
; MIT License
;
; Tech demo: Loading PCX data with Xosera
;
; This demo uses a PCX file (currently baked into the
; binary) to set the Xosera palette and draw the image.
;
; The algorithm used here is, in all honesty, overly 
; complicated, and there is no error handling. Specifically,
; the PCX *must* be 1 plane, 8bpp, 320x240. If not, you'll
; likely see garbage on the screen.
;
; It *does* however demonstrate accessing Xosera from 
; assembly (though perhaps not particularly well 😁 ).
; ------------------------------------------------------------
;

    section .text                     ; This is normal code

    include "../xosera_equates.asm"

; Options you can set
VID_MODE  equ MODE_640

; Constants you maybe should leave alone...
MODE_640  equ $8080
MODE_848  equ $8180

; ############################################################################
; ####### Xosera Sync (private)
; #######
; ####### Modifies: D0, D1
; #######
; ####### Returns: D0.w = zero if failed
; ############################################################################
XVID_SYNC:
    move.w  #100,D1                           ; try 100 times

.SYNC_LOOP
    move.w  #$55AA,D0
    movep.w D0,(XVID_CONST,A0)                ; Do sync checks
    movep.w (XVID_CONST,A0),D0                
    cmp.w   #$55AA,D0
    bne.s   .SYNC_NEXT

    move.w  #$AA55,D0
    movep.w D0,(XVID_CONST,A0)
    movep.w (XVID_CONST,A0),D0                
    cmp.w   #$AA55,D0
    bne.s   .SYNC_NEXT
    rts                                       ; return D0 non-zero

.SYNC_NEXT
    move.w  #10000,D0                         ; Wait a while
    bsr.s   DELAY
    
.SYNC_START
    dbra.w  D1,.SYNC_LOOP
    
    ; Fell through loop, so sync failed - fail the sync
    clr.w   D0                                ; return D0 zero
    rts


; ############################################################################
; ####### Delay for D0.w loops of unspecified lengrth
; ####### Modifies D0.
; ############################################################################
DELAY:
    bra.s   .DELAYSTART
.DELAYLOOP
    nop
    nop
    nop
    nop
    nop
.DELAYSTART
    dbra.w  D0,.DELAYLOOP
    rts


; ############################################################################
; ####### ENTRY POINT
; ############################################################################
kmain::
; #####################################
; ####### Basic video adapter setup
; #####################################

    move.l  #XVID_BASE,A0             ; A0 will be Xosera base pointer

    bsr.s   XVID_SYNC                 ; detect Xosera responding
                                      ; if sync failed - fail the init
    tst.w   D0
    beq.w   .BUSY 

    move.w  #$B007,D0                 ; set special constant
    movep.w D0,(XVID_CONST,A0)
    move.w  #VID_MODE,D0              ; Reconfigure Xosera for selected mode
    movep.w D0,(XVID_BLIT_CTRL,A0)

    bsr.s   XVID_SYNC                 ; detect Xosera responding again
                                      ; if sync failed - fail the init
    tst.w   D0
    beq.w   .BUSY

    ; If here, sync succeeded.

    move.l  #IRQ,$68                  ; Setup interrupt handler..
    and.w   #$F0FF,SR                 ; And enable.

; #####################################
; ####### Bitmap mode setup
; #####################################

    move.w  #XVA_gfxctrl,D0           ; Set up to write gfxctrl
    movep.w D0,XVID_AUX_ADDR(A0)
    move.w  #$0075,D0                 ; Zero color base, enabled/bitmap, 8bpp, 2x H/V double
    movep.w D0,XVID_AUX_DATA(A0)
    
    move.w  #XVA_dispwidth,D0         ; Set up to write gfxctrl
    movep.w D0,XVID_AUX_ADDR(A0)
    move.w  #160,D0                   ; Zero color base, enabled/bitmap, 8bpp, 2x H/V double
    movep.w D0,XVID_AUX_DATA(A0)

; #####################################
; ####### Image data setup
; #####################################
    move.l  #_image_start,A1          ; A1 points to start of image data (header)
                                      ; TODO check image matches expected format!

    move.l  A1,A2                     ; A2 points to start of scanlines / bitplanes
    add.l   #128,A2

    move.l  #_image_end,A3            ; A3 points to end of image / start of palette
    sub.l   #768,A3 

; #####################################
; ####### Palette setup
; #####################################

    move.w  #XV_AUX_COLORMEM,D0       ; Set up to write palette mem
    movep.w D0,XVID_AUX_ADDR(A0)

    move.l  A3,A4                     ; A4 is scratch register (current palette data)

    move.w  #256,D2                   ; 256 palette entries
    bra.s   .PALSTART

.PALLOOP
    clr.w   D0

    move.b  (A4)+,D1                  ; Get red component
    and.w   #$00F0,D1                 ; Keep high nibble
    lsl.w   #4,D1                     ; Shift left
    or.w    D1,D0                     ; And or into D0

    move.b  (A4)+,D1                  ; Get green component
    and.w   #$00F0,D1                 ; Keep high nibble
    or.b    D1,D0                     ; And or into D0

    move.b  (A4)+,D1                  ; Get blue component
    and.w   #$00F0,D1                 ; Keep high nibble
    lsr.b   #4,D1                     ; Shift right
    or.b    D1,D0                     ; And or into D0
    
    movep.w D0,XVID_AUX_DATA(A0)      ; And set palette entry

.PALSTART
    dbra.w  D2,.PALLOOP

; #####################################
; ####### Setup done, actual drawing
; #######
; ####### In this section, D2.B is used to signify whether 
; ####### we are currently on the first or second byte of
; ####### an Xosera word, and also to count how many pixels
; ####### we have left in the current run (0 means not in 
; ####### a run).
; #######
; ####### Bit 7 is high if this is the second byte of a word.
; ####### Bit 6 is unused
; ####### Bits 5-0 hold the remaining run length
; #####################################
    
    clr.w   D0                        ; Set up to write VRAM at $0
    movep.w D0,XVID_WR_ADDR(A0)

    clr.w   D1                        ; D1 is our current pixel, clear it
    clr.b   D2                        ; D2 is our flags and run-length, zero it
    clr.b   D3                        ; D3 is our pixel register, zero it
    move.l  A2,A4                     ; A4 is current pixel

    move.l  #480,D4                   ; D4 is Y coord (_should be_ 240 lines)
                                      ; TODO figure out why this needs to be 480 🤔
    bra.s   .YNEXT

.YLOOP
    move.l  #160,D5                   ; D5 is X coord (160 cols * 2 pixels per word = 320 cols)
    bra.s   .XNEXT

.XLOOP
    ; First, are we currently in a run?
    move.b  D2,D0                     ; Check run indicator / flags
    and.b   #$3F,D0                   ; Mask flags
    tst.b   D0                        ; Is length zero?
    beq.s   .NORUN                    ; No current run if so...
    
    subi.b  #1,D0                     ; Else, decrement remaining length
    tst.b   D0                        ; Is it zero now?
    beq.s   .ENDRUN                   ; Do last pixel in run if so

    move.b  (A4),D1                   ; Else just get the run pixel (don't increment)
    bra.s   .UPDATERUN                ; And go to update remaining run length

.ENDRUN
    move.b  (A4)+,D1                  ; Get pixel and increment, as it's the end of the run...

.UPDATERUN
    and.b   #$C0,D2                   ; Clear existing run value...
    or.b    D0,D2                     ; ... or in new value ...
    bra.s   .DRAW                     ; ... and go to draw.    

.NORUN
    ; We aren't already in a run. Are we starting one?
    move.b  (A4)+,D1                  ; Get next data
    move.b  D1,D0                     ; We need to check RLE...

    and.b   #$C0,D0                   ; Are both high bits set?
    cmp.b   #$C0,D0
    bne.s   .DRAW                     ; If not, just draw...

    ; Special case - if run length is zero, we need to just skip the next pixel    
    move.b  D1,D0                     ; Look again at the run indicator...
    and.b   #$3F,D0                   ; Mask off the flags
    tst.b   D0                        ; Is run length zero?
    bne.s   .STARTRUN                 ; No - so start the run
    
    move.b  (A4)+,D0                  ; Else, just read the next pixel
    bra.s   .XLOOP                    ; and skip it.

.STARTRUN
    or.b    D0,D2                     ; Or run length into D2 to track remaining run
    bra.s   .XLOOP                    ; And loop again (we already incremented to next pixel).

.DRAW
    ; We're drawing. We need to know if this is the first or second byte
    ; At this point, pixel is in D1...
    btst    #7,D2                     ; Is high flag set?
    beq.s   .NOTYET                   ; If not, not quite time to draw...

    ; Time to send pixels to Xosera...
    lsl.w   #8,D3                     ; Shift previous pixel...
    or.w    D3,D1                     ; ... and or with current pixel

    movep.w D1,XVID_DATA(A0)          ; Send them to Xosera
    clr.w   D1                        ; And clear word for next time.

    bra.s   .DRAWDONE                 ; We're done drawing...

.NOTYET
    move.b  D1,D3                     ; Stash this pixel for next time we draw...

.DRAWDONE
    bchg    #7,D2                     ; Toggle the high flag for next time...

.XNEXT
    dbra.w  D5,.XLOOP                 ; And around we go.

.YNEXT
    dbra.w  D4,.YLOOP

; #####################################
; ####### Fin.
; #####################################
    
.BUSY                                 ; Just busywait to avoid resetting video
    bra.s   .BUSY


; IRQ handler (not yet used)
; 
IRQ:
    ; Do nothing yet...
    rte


