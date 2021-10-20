; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code

    include "../xosera_equates.asm"

kmain::
    move.l  #XVID_BASE,A0             ; Load base address

    clr.w   D1

.PALETTELOOP    
    move.w  #$8000,D0                 ; Palette aux base
    or.w    D1,D0                     ; plus offset
    movep.w D0,(XVID_AUX_ADDR,A0)     ; Set for write

    mulu.w  #$0111,D0                 ; Get grayscale for this index
    movep.w D0,(XVID_AUX_DATA,A0)     ; Write to palette

    addq.w  #1,D1                     ; Increment counter
    cmp.w   #$10,D1                   ; Done?
    bne.s   .PALETTELOOP              ; Loop if not

    move.w  #0008,D0                  ; Address 2
    movep.w D0,(XVID_WR_ADDR,A0)
    move.w  #$0030,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0131,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0232,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0333,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0434,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0535,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0636,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0737,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0838,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0939,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0A41,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0B42,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0C43,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0D44,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0E45,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)
    move.w  #$0F46,D0                 ; Prints '0', attribute 0
    movep.w D0,(XVID_DATA,A0)

WAIT:
    bra.s   WAIT

    rts

