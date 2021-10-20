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
; Test harness - This just uses the routines in `show_pcx.asm`
; to display an image that's built into the binary.
;
; See `show_pcx.asm` and `include/pcx_asm.h` for details.
; ------------------------------------------------------------
;

    section .text.kmain               ; This is normal code

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
; ####### Display image
; #####################################
    move.l  #_image_start,A1
    move.l  #_image_end,A2
    clr.l   D0
    jsr     SHOW_PCX

.BUSY                                 ; Just busywait to avoid resetting video
    bra.s   .BUSY

; IRQ handler (not yet used)
; 
IRQ:
    ; Do nothing yet...
    rte


