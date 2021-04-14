; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code

    include "../xosera_equates.asm"

kmain::
    move.l  #XVID_BASE,A0             ; Load base address

    move.w  #0008,D0                  ; Address 2
    movep.w D0,(XVID_WR_ADDR,A0)
    move.w  #$1f48,D0                 ; Prints 'H'
    movep.w D0,(XVID_DATA,A0)
    move.b  #'e',(XVID_DATA+2,A0)     ; Prints 'e'
    move.b  #'l',(XVID_DATA+2,A0)     ; Prints 'l'
    move.b  #'l',(XVID_DATA+2,A0)     ; Prints 'l'
    move.b  #'o',(XVID_DATA+2,A0)     ; Prints 'o'

WAIT:
    bra.s   WAIT

    rts

