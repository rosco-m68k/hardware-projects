; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code
  
    include "../xosera_equates.asm"

kmain::
    move.l  #R_XVID_BASE,A0           ; Load base address
    move.l  #CHARS,A1                 ; Load character pointer

.MAINLOOP
    move.l  #3180,D1                  ; 106*30 iterations...
    move.l  #1000,D1                  ; 106*30 iterations...
    move.w  #0000,D0                  ; Start at address 0
    movep.w D0,(R_XVID_WR_ADDR,A0)    
    move.b  #$1e,(R_XVID_DATA,A0)     ; Set text attribute

    bra.s   .NEXTCHARS

.CHARSLOOP
    clr.w   D0
    move.b  (A1),D0
    ori.w   #$1f00,D0     
    movep.w D0,(R_XVID_DATA,A0)       ; Prints char

.NEXTCHARS
    dbra    D1,.CHARSLOOP
    addq.l  #1,A1

.SLOWDOWN
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dbra.w  D1,.SLOWDOWN

    cmp.l   #CHARSEND,A1
    blt.s   .MAINLOOP
    move.l  #CHARS,A1
    move.w  #$FFFF,D1
    bra.s   .MAINLOOP 

    section .data
CHARS     dc.b  "dfhj"
CHARSEND

