; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code

    include "../xosera_equates.asm"

kmain::
    move.l  #XVID_BASE,A0           ; Load base address
    clr.l   D0
    clr.l   D1

.LOOP:
    move.w  #$aaaa,D0
    movep.w D1,(XVID_WR_ADDR,A0)
    movep.w D0,(XVID_DATA,A0)
    movep.w D1,(XVID_RD_ADDR,A0)
    movep.w (XVID_DATA,A0),D0
    addi.w  #1,D1
    cmp.w   #8000,D1
    blt.s   .NORESET

    clr.w   D1

.NORESET:
    cmp.w   #$aaaa,D0
    beq.s   .LOOP

; If here, read error
    subi.w  #1,D1
    move.l  D0,D3

    move.l  #15,D0
    move.b  #16,D2
    trap    #15

    move.l  #1,D0
    move.l  #2,D1
    lea     CRLF,A1
    trap    #15

    move.l  #15,D0
    move.l  D3,D1
    trap    #15

    rts

CRLF  dc.b  13,10
