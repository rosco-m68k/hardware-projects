;------------------------------------------------------------
;                                  ___ ___ _
;  ___ ___ ___ ___ ___       _____|  _| . | |_
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
;                     |_____|       V9958 Video
;------------------------------------------------------------
; Copyright (c)2020 Ross Bamford
; See top-level LICENSE.md for licence information.
;
; This is a simple echo-loop to prove out the console.
;
; It reads from UART and prints to screen.
;------------------------------------------------------------
;

PORT_RWDATA       equ   $F80000
PORT_WREG_SETUP   equ   $F80002
PORT_WPALETTE     equ   $F80004
PORT_WREG_DATA    equ   $F80006
MFP_GPDR          equ   $F80001
MFP_UDR           equ   $F8002F
IRQ2_HANDLER      equ   $68

    section .text                     ; This is normal code

kmain::
    move.b  #1,PORT_WREG_SETUP        ; Write 1 (SR#1)...
    move.b  #$8F,PORT_WREG_SETUP      ; ... to register 15 (with high bit set)
    eor.l   D1,D1                     ; Zero D1
    move.b  PORT_WREG_SETUP,D1        ; And read status into it
    and.b   #$3E,D1                   ; We only want ID number
    ror.b   #1,D1                     ; Shift right by 1 (for correct display)

    cmp.b   #2,D1                     ; V9958 has ID 2
    beq.s   .IS_9958
    
    lea.l   SZNOID,A1                 ; Print "not a 9958"
    bra.s   .DISPLAY_ID

.IS_9958:    
    lea.l   SZID,A1                   ; Print "is a 9958"

.DISPLAY_ID:
    move.l  #14,D0                    ; Print the message
    trap    #15
    move.l  #3,D0                     ; Print the ID
    trap    #15
    lea.l   SZCRLF,A1                 ; Print CRLF
    move.l  #14,D0
    trap    #15

    jsr     V9958_CON_INIT            ; Init console

    move.l  #SZHEADER,A0
.PRINTLOOP
    move.b  (A0)+,D0
    tst.b   D0
    beq.s   .PRINTDONE
     
    jsr     V9958_CON_PUTCHAR
    bra.s   .PRINTLOOP
.PRINTDONE

.ECHOLOOP:
    move.l  #5,D0
    trap    #15
    move.b  D1,D0
    jsr     V9958_CON_PUTCHAR
    bra.s   .ECHOLOOP

count       dc.l    0 
SZID        dc.b    "VDP Identifies as V9958; ID from SR: ", 0
SZNOID      dc.b    "VDP does not identify / is not a V9958; ID from SR: ", 0
SZCRLF      dc.b    13,10,0
SZSPACE     dc.b    " ", 0


    section .rodata
;                    123456789^123456789^123456789^123456789^123456789^123456789^123456789^123456789^
SZHEADER    dc.b    "                                ___ ___ _                                       "
            dc.b    " ___ ___ ___ __ ___       _____|  _| . | |_                                     "
            dc.b    "|  _| . |_ -| _| . |     |     | . | . | '_|                                    "
            dc.b    "|_| |___|___|__|___|_____|_|_|_|___|___|_,_|                                    "
            dc.b    "                   |_____|       V9958 Video                                    "
            dc.b    "                                                                                "
            dc.b    "READY", 13, 0
