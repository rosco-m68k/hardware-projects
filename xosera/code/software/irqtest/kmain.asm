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
    bra.s   WAIT

IRQ:
    movem.l D0-D7/A0-A6,-(A7)

    move.b  COUNT,D1                    ; Check count
    tst.b   D1                          ; Is is zero?
    bne.s   .NOSTAR                     ; Go to sub if not

    move.l  #SZASK,A0                   ; Else, let's print a star...
    clr.l   D1
    trap    #14
    move.b  #60,D1                      ; And reset counter.
    bra.s   .CONTINUE

.NOSTAR
    sub.b   #1,D1                       ; It wasn't zero, so just decrement counter

.CONTINUE
    move.b  D1,COUNT                    ; Re-stash counter

;    move.l  #XVID_BASE,A0               ; Finally, we need to clear the interrupt latch...
;    move.b  (A0),D0                     ; ... by reaing from Xosera base

    movem.l (A7)+,D0-D7/A0-A6           ; And we're done.
    rte

SZASK   dc.b  '*',0
COUNT   dc.b  60

