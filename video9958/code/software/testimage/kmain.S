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

.ENABLE_OUTPUT:
    ; Set mode G7, disable interrupts and enable output
    move.b  #%00001110,PORT_WREG_SETUP   ; Write DG=0,IE2=0,IE1=0,M5=1,M4=1,M3=1
    move.b  #$80,PORT_WREG_SETUP         ; To register 0
    move.b  #%01000000,PORT_WREG_SETUP   ; Write BL=1,IE0=0,M1=0,M2=0,SI=0,MAG=0
    move.b  #$81,PORT_WREG_SETUP         ; To register 1

    ; Set PAL mode
    move.b  #%10000010,PORT_WREG_SETUP   ; Set 212-line, PAL mode...
    move.b  #$89,PORT_WREG_SETUP         ; .. to register 9
    
    move.b  #%00000000,PORT_WREG_SETUP   ; Select BG: GGGRRRBB
    move.b  #$87,PORT_WREG_SETUP         ; .. In VDP register 7
    
    move.b  #%00001010,PORT_WREG_SETUP   ; Select 64K DRAM, disable sprites
    move.b  #$88,PORT_WREG_SETUP         ; .. In VDP register 8
    
    ; Set pattern layout table to 0x0
    move.b  #%00011111,PORT_WREG_SETUP   ; bit 16 of 0x0, constant 11111
    move.b  #$82,PORT_WREG_SETUP         ; .. to register 2

    ; Set sprite pattern generator table to 0xF000
;    move.b  #%00011110,PORT_WREG_SETUP  ; bits 11-16 of 0xF000
;    move.b  #$86,PORT_WREG_SETUP        ; .. to register 6

    ; Set sprite attribute table to 0xF800
;    move.b  #%11110100,PORT_WREG_SETUP  ; bits 10-14 or 0xF800
;    move.b  #$85,PORT_WREG_SETUP        ; .. to register 5, and
;    move.b  #%00000001,PORT_WREG_SETUP  ; bits 15-16 of 0xF800
;    move.b  #$8B,PORT_WREG_SETUP        ; .. to register 11

    ; Set top line displayed to 0
;    move.b  #$0,PORT_WREG_SETUP         ; Top line zero
;    move.b  #$97,PORT_WREG_SETUP        ; .. to register 23

    ; Set up to write VRAM at 0x0
    move.b  #0,PORT_WREG_SETUP           ; VRAM Base at 0
    move.b  #$8E,PORT_WREG_SETUP         ; > register 14
    move.b  #0,PORT_WREG_SETUP           ; Set VRAM A0-A7
    move.b  #$40,PORT_WREG_SETUP         ; Set VRAM A8-A13, and write enable
   
    move.l  #_image_start,A0
    move.l  #_image_size,D0
    bra.s   .COPYSTART
.COPYLOOP:
    move.b  (A0)+,PORT_RWDATA
    bsr.s   SLOWDOWN
.COPYSTART
    dbra.w  D0,.COPYLOOP

    move.l  #$10000,D0
    subi.w  #_image_size,D0
    bra.s   .CLEARSTART
.CLEARLOOP:
    move.b  #0,PORT_RWDATA
    bsr.s   SLOWDOWN
.CLEARSTART:
    dbra.w  D0,.CLEARLOOP

.BUSYSTOP:
    bra.s   .BUSYSTOP


SLOWDOWN:
    nop
    nop
    nop
    rts

count       dc.l    0 
SZID        dc.b    "VDP Identifies as V9958; ID from SR: ", 0
SZNOID      dc.b    "VDP does not identify / is not a V9958; ID from SR: ", 0
SZCRLF      dc.b    13,10,0
SZSPACE     dc.b    " ", 0
