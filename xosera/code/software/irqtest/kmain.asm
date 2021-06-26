; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code

    include "../xosera_equates.asm"

kmain::
    move.l  #IRQ,$68
    and.w   #$F0FF,SR
    clr.l   D1
    move.w  SR,D1
    move.l  #15,D0
    move.l  #16,D2
    trap    #15

WAIT:
;    move.b  XVID_BASE,D0
    bra.s   WAIT

IRQ:
    movem.l D0-D2/A0,-(A7)
;    move.l  #SZASK,A0
;    clr.l   D0
;    trap    #14
    move.l  #XVID_BASE,A0
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    move.b  (A0),D0 
    movem.l (A7)+,D0-D2/A0
    rte

SZASK   dc.b  '*',0
