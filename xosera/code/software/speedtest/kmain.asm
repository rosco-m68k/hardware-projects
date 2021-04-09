; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
; Testing how fast to fill VRAM with longword MOVEP.
;
    section .text                     ; This is normal code

    include "../xosera_equates.asm"

kmain::
    move.l  #$40c,A1                  ; A1 points to upticks counter

    move.l  #15,D0
    move.l  (A1),D1
    move.l  #10,D2
    trap    #15

    clr.l   D0
    clr.l   D1
    trap    #15

    move.l  #R_XVID_BASE,A0           ; Load base address
    clr.w   D0
    movep.w D0,(R_XVID_WR_ADDR,A0)
    add.l   #R_XVID_DATA,A0           ; Point directly to data reg
    move.l  #$40c,A1                  ; Reload this as e68k is _still_ trashing it :(

    move.w  #32768,D0
    move.l  #$1f641f64,D1
    bra.s   .LOOPSTART
.LOOP
    movep.l D1,(A0)
.LOOPSTART
    dbra.w  D0,.LOOP

    move.l  #15,D0
    move.l  (A1),D1
    move.l  #10,D2
    trap    #15

    clr.l   D0
    clr.l   D1
    trap    #15

    rts

