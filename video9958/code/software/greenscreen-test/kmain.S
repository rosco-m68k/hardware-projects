; *************************************************************
; Copyright (c) 2020 You (you@youremail.com)
; *************************************************************
;
PORT_RWDATA       equ   $F80000       ; PORT 0
PORT_WREG_SETUP   equ   $F80002       ; PORT 1
PORT_WPALETTE     equ   $F80004       ; PORT 2
PORT_WREG_DATA    equ   $F80006       ; PORT 3

    section .text                     ; This is normal code

kmain::
    move.b  #2,PORT_WREG_SETUP        ; Write 2 (PAL mode)
    move.b  #137,PORT_WREG_SETUP      ; .. to register 9 (with high bit set)


    move.b  #%00000000,PORT_WREG_SETUP
    move.b  #145,PORT_WREG_SETUP      ; Set Pointer of Register #17 to #0

    move.b  #%00000000,PORT_WREG_DATA ; Reg 1 = 0
    move.b  #%00010000,PORT_WREG_DATA ; Reg 2 = 16

    move.b  #8,PORT_WREG_SETUP
    move.b  #145,PORT_WREG_SETUP      ; Set Pointer of Register #17 to #8

    move.b  #%00001010,PORT_WREG_DATA ; Reg 8 = 12
    move.b  #%00000010,PORT_WREG_DATA ; Reg 9 = 2


    move.b  #%00000000,PORT_WREG_SETUP
    move.b  #144,PORT_WREG_SETUP       ; Set Palette Register 0 
    move.b  #%00000000,PORT_WPALETTE   ; 0 R2 R1 R0 0 B2 B1 B0 
    move.b  #%00000111,PORT_WPALETTE   ; 0 0  0  0  0 G2 G1 G0

    move.b  #%00000000,PORT_WREG_SETUP
    move.b  #135,PORT_WREG_SETUP       ' Set Pattern color

    lea.l   HELLO,A0                  ; Get the address of the message
    move.l  A0,-(A7)                  ; Push it on the stack
    jsr     mcPrintln                 ; Call mcPrintln (from the machine lib)
    addq.l  #4,A7                     ; Clean up the stack (important!

DIE:
    bra.s   DIE

HELLO   dc.b    "Hello, world! 😃", 0 ; Our message 

