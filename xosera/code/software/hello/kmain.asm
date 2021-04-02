; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code

    include "../xosera_equates.asm"

kmain::
    move.l  #R_XVID_BASE,A0           ; Load base address

    move.w  #0008,D0                  ; Address 2
    movep.w D0,(R_XVID_WR_ADDR,A0)
    move.w  #$1f48,D0                 ; Prints 'H'
    movep.w D0,(R_XVID_DATA,A0)
    move.b  #'e',(R_XVID_DATA+2,A0)   ; Prints 'e'
    move.b  #'l',(R_XVID_DATA+2,A0)   ; Prints 'l'
    move.b  #'l',(R_XVID_DATA+2,A0)   ; Prints 'l'
    move.b  #'o',(R_XVID_DATA+2,A0)   ; Prints 'o'

WAIT:
    bra.s   WAIT

    rts

