; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code
  
    include "../xosera_equates.asm"

kmain::
    move.l  #XVID_BASE,A0             ; Load base address
    move.l  #CHARS,A1                 ; Load character pointer

.MAINLOOP
    move.l  #3180,D1                  ; 106*30 iterations...
    move.w  #0000,D0                  ; Start at address 0
    movep.w D0,(XVID_WR_ADDR,A0)    
    move.b  #$1f,(XVID_DATA,A0)       ; Set text attribute

    bra.s   .NEXTCHARS

.CHARSLOOP    
    move.b  (A1),(XVID_DATA+2,A0)     ; Prints char

.NEXTCHARS
    dbra    D1,.CHARSLOOP
    addq.l  #1,A1
    cmp.l   #CHARSEND,A1
    bls.s   .MAINLOOP
    move.l  #CHARS,A1
    bra.s   .MAINLOOP

    section .data
CHARS     dc.b  "XOSERA"
CHARSEND

