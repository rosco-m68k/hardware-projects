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
; The algorithm used here is, in all honesty, overly 
; complicated, and there is no error handling. Specifically,
; the PCX *must* be 1 plane, 8bpp, 320x240. If not, you'll
; likely see garbage on the screen.
;
; It *does* however demonstrate accessing Xosera from 
; assembly (though perhaps not particularly well 😁 ).
; ------------------------------------------------------------
;

    section .text.show_pcx            ; This is normal code

    include "../xosera_equates.asm"

; ############################################################################
; ####### EXPORTED FUNCTIONS
; ############################################################################
; ####### SHOW_PCX - Display PCX data from a buffer to Xosera
; #######
; ####### Arguments:
; #######   A0 - Xosera base pointer
; #######   A1 - Start of image buffer (including header and palette)
; #######   A2 - End of image buffer
; #######   D0 - Xosera VRAM base address for drawing
; #######
; ####### Modifies:
; #######   No CPU registers or main memory
; #######   Video registers, image and color memory
; #######
; ############################################################################
SHOW_PCX::
    movem.l D0-D5/A0-A4,-(A7)         ; Modify nothing!

; #####################################
; ####### Image data setup
; #####################################
    move.l  D0,D3                     ; Stash VRAM base address in D3...
    move.l  A1,A3                     ; A3 points to start of scanlines / bitplanes
    add.l   #128,A3                   ; (... after 128 byte file header)
    sub.l   #768,A2                   ; A2 points to end of scanlines + 1 / start of palette
    
    ; TODO check image matches expected format!

; #####################################
; ####### Palette setup
; #####################################

    move.w  #XV_AUX_COLORMEM,D0       ; Set up to write palette mem
    movep.w D0,XVID_AUX_ADDR(A0)

    move.l  A2,A4                     ; A4 is scratch register (current palette data)

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
    
    movep.w D3,XVID_WR_ADDR(A0)       ; Set up to write VRAM at address from args

    clr.w   D1                        ; D1 is our current pixel, clear it
    clr.b   D2                        ; D2 is our flags and run-length, zero it
    clr.b   D3                        ; D3 is our pixel register, zero it
    move.l  A3,A4                     ; A4 is current pixel

    move.l  #480,D4                   ; D4 is Y coord (_should be_ 240 lines)
                                      ; TODO figure out why this needs to be 480 🤔
                                      ; TODO number of lines should come from image...
    bra.s   .YNEXT

.YLOOP
    move.l  #160,D5                   ; D5 is X coord (160 cols * 2 pixels per word = 320 cols)
                                      ; TODO number of columns should come from image...
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
    movem.l  (A7)+,D0-D5/A0-A4        ; Restore registers
    rts

; ############################################################################
; ####### show_pcx - Display PCX data from a buffer to Xosera (C-callable)
; #######
; #######     bool show_pcx(
; #######         void *xosera_base,
; #######         void *data,
; #######         void *data_end,
; #######         uint32_t vram_start
; #######     );
; #######
; ####### Arguments:
; #######
; #######     xosera_base - Pointer to Xosera base address (Usually 0xf80060)  
; #######     data        - Start of PCX file data
; #######     data_end    - End of PCX file data
; #######     vram_start  - VRAM base address at which to draw the image
; #######
; ####### Returns:
; #######     
; #######     Always true (TODO return false after checking image format)
; #######     
; ####### Notes: 
; #######
; #######     The `data` argument must point to the very beginning of the
; #######     PCX data (i.e. the start of the header).
; #######
; #######     The `data_end` pointer must point at exactly the end of the
; #######     PCX data (i.e. the last byte read from the file).
; #######
; ############################################################################
show_pcx::
    move.l  A2,-(A7)                  ; GCC doesn't care about D0-D1/A0-A1
    move.l  $8(A7),A0                 ; Get Xosera base from stack
    move.l  $C(A7),A1                 ; Get Image data start from stack
    move.l  $10(A7),A2                ; Get image data end from stack
    move.l  $14(A7),D0                ; Get VRAM base from stack
    bsr.w   SHOW_PCX                  ; Call main routine
    move.l  (A7)+,A2                  ; Restore A2
    rts                               ; And done
 
