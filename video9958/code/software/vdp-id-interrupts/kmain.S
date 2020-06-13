;------------------------------------------------------------
;                                  ___ ___ _
;  ___ ___ ___ ___ ___       _____|  _| . | |_
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_|
;                     |_____|       V9958 Video
;------------------------------------------------------------
; Copyright (c)2020 Ross Bamford
; See top-level LICENSE.md for licence information.
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
    move.b  #143,PORT_WREG_SETUP      ; ... to register 15 (with high bit set)
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


.INSTALL_ISR:
    move.l  #VBLANK_HANDLER,IRQ0_HANDLER

.ENABLE_OUTPUT:
    ; Set PAL mode
    move.b  #2,PORT_WREG_SETUP        ; Write 2 (PAL mode)
    move.b  #137,PORT_WREG_SETUP      ; .. to register 9 (with high bit set)

    ; Set text mode 0, enable interrupts and output
    move.b  #112,PORT_WREG_SETUP      ; Write BL=1,IE0=1,M1=1,M2=0,SI=0,MAG=0
    move.b  #129,PORT_WREG_SETUP      ; To register 1 (with high bit set)

.BUSYSTOP:
    bra.s   .BUSYSTOP


; Expects delay cycles in D0
BUSYWAIT:
    nop
    dbra    D0,BUSYWAIT
    rts
    

VBLANK_HANDLER:
    move.l  D0,-(A7)

    bchg.b  #1,MFP_GPDR               ; Toggle I1
    
    move.b  #0,PORT_WREG_SETUP        ; Write 1 (SR#0)...
    move.b  #143,PORT_WREG_SETUP      ; ... to register 15 (with high bit set)
    move.b  PORT_WREG_SETUP,D0        ; And read status into it (clear interrupt flag)
    
    move.l  count,D0                  ; Increment the counter...
    add.l   #1,D0
    
    cmp.l   #500,D0
    bne.s   .DONE
    
    move.b  #$2E,MFP_UDR              ; Display dot if counter expired
    eor.l   D0,D0

.DONE
    move.l  D0,count
    move.l  (A7)+,D0
    rte

count       dc.l    0 
SZID        dc.b    "VDP Identifies as V9958; ID from SR: ", 0
SZNOID      dc.b    "VDP does not identify / is not a V9958; ID from SR: ", 0
SZCRLF      dc.b    13,10,0

