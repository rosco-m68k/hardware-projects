; *************************************************************
; Copyright (c) 2020 You (you@youremail.com)
; *************************************************************
;

    include "../shared/equates.S"

    section .text                     ; This is normal code

kmain::

    move.b  #$0,DUART_IMR             ; Mask all interrupts
    move.b  #$93,DUART_MR1A           ; (Rx RTS, RxRDY, Char, No parity, 8 bits) 
    move.b  #$07,DUART_MR2A           ; (Normal, No TX CTS/RTS, 1 stop bit)

;    38400 working
;    move.b  #$70,DUART_ACR           ; Set 0, Timer, X1/X2, /16
;    move.b  #$CC,DUART_CSRA          ; 38K4

;    57600 working
;    move.b  #$60,DUART_ACR           ; Set 0, Counter, X1/X2, /16
;    move.b  #$DD,DUART_CSRA          ; Baud from timer
    
    ; 115200 working
    move.b  #$60,DUART_ACR            ; Set 0, Counter, X1/X2, /16
    move.b  DUART_CRA,D0              ; Enable undocumented rates
    move.b  #$66,DUART_CSRA           ; 1200 per spec, uses counter instead

    move.b  #0,DUART_CUR              ; Counter high: 0 
    move.b  #2,DUART_CLR              ; Counter  low: 2  (115.2KHz) 
    move.b  R_STARTCNTCMD,D0          ; Start count

    move.b  #%00000011,DUART_OPCR     ; RxCA (1x) on OP2 
    move.b  #%00000101,DUART_CRA      ; Enable TX/RX

    ; TODO CTS/RTS Not yet working - figure out how to lower RTS!    
    move.b  #$ff,W_OPR_RESETCMD       ; Clear all OP bits (lower RTS)
    move.b  #0,W_OPR_SETCMD

    move.b  #'H',D0
    bsr.s   SENDCHAR
    move.b  #'e',D0
    bsr.s   SENDCHAR
    move.b  #'l',D0
    bsr.s   SENDCHAR
    move.b  #'l',D0
    bsr.s   SENDCHAR
    move.b  #'o',D0
    bsr.s   SENDCHAR
    move.b  #',',D0
    bsr.s   SENDCHAR
    move.b  #' ',D0
    bsr.s   SENDCHAR
    move.b  #'W',D0
    bsr.s   SENDCHAR
    move.b  #'o',D0
    bsr.s   SENDCHAR
    move.b  #'r',D0
    bsr.s   SENDCHAR
    move.b  #'l',D0
    bsr.s   SENDCHAR
    move.b  #'d',D0
    bsr.s   SENDCHAR
    move.b  #'!',D0
    bsr.s   SENDCHAR
    move.b  #13,D0
    bsr.s   SENDCHAR
    move.b  #10,D0
    bsr.s   SENDCHAR

.ECHOLOOP:
    bsr.s   RECVCHAR
    bsr.s   SENDCHAR
    bra.s   .ECHOLOOP

; Character in D0
SENDCHAR:
    btst.b  #3,DUART_SRA
    beq.s   SENDCHAR
    move.b  D0,DUART_TBA
    rts

; Result in D0
RECVCHAR:
    btst.b  #0,DUART_SRA
    beq.s   RECVCHAR
    move.b  DUART_RBA,D0
    rts
