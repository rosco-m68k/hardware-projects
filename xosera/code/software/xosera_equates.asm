;------------------------------------------------------------
;                                  ___ ___ _   
;  ___ ___ ___ ___ ___       _____|  _| . | |_ 
; |  _| . |_ -|  _| . |     |     | . | . | '_|
; |_| |___|___|___|___|_____|_|_|_|___|___|_,_| 
;                     |_____|       software v1 
;------------------------------------------------------------
; Copyright (c)2021 Ross Bamford
; See top-level LICENSE.md for licence information.
;
; Equates for Xosera (XVID) by Xark
;------------------------------------------------------------

;typedef enum logic [3:0] {
;    XVID_RD_INC,            // reg 0: read addr increment value
;    XVID_WR_INC,            // reg 1: write addr increment value
;    XVID_RD_MOD,            // reg 2: TODO read modulo width
;    XVID_WR_MOD,            // reg 3: TODO write modulo width
;    XVID_WIDTH,             // reg 4: TODO width for 2D blit
;    XVID_RD_ADDR,           // reg 5: address to read from VRAM
;    XVID_WR_ADDR,           // reg 6: address to write from VRAM
;    XVID_DATA,              // reg 7: read/write word from/to VRAM RD/WR
;    XVID_DATA_2,            // reg 8: read/write word from/to VRAM RD/WR (for 32-bit)
;    XVID_COUNT,             // reg 9: TODO blitter "repeat" count
;    XVID_VID_CTRL,          // reg A: TODO read status/write control settings
;    XVID_VID_DATA,          // reg B: TODO video data (as set by VID_CTRL)
;    XVID_AUX_RD_ADDR,       // reg C: TODO aux read address (font audio etc.?)
;    XVID_AUX_WR_ADDR,       // reg D: TODO aux write address (font audio etc.?)
;    XVID_AUX_CTRL,          // reg E: TODO audio and other control?
;    XVID_AUX_DATA           // reg F: TODO aux memory/register data read/write value
;} register_t;

R_XVID_BASE         equ   $f80060       ; Xosera base address 
R_XVID_RD_INC       equ   $0            ; Read address increment      (WO)
R_XVID_WR_INC       equ   $4            ; Write address increment     (WO)
R_XVID_RD_MOD       equ   $8            ; Read modulo width           (WO)
R_XVID_WR_MOD       equ   $C            ; Write modulo width          (WO)
R_XVID_WIDTH        equ   $10           ; Width for 2D blit           (WO)
R_XVID_RD_ADDR      equ   $14           ; VRAM Read Address           (WO)
R_XVID_WR_ADDR      equ   $18           ; VRAM Write Address          (WO)
R_XVID_DATA         equ   $1C           ; VRAM Data (First word)      (RW)
R_XVID_DATA_2       equ   $20           ; VRAM Data (Second word)     (RW)
R_XVID_COUNT        equ   $24           ; Blitter "repeat" count      (RW)
R_XVID_VID_CTRL     equ   $28           ; Video mode                  (WO)
R_XVID_VID_DATA     equ   $2C           ; Video mode data             (RW)
R_XVID_AUX_RD_ADDR  equ   $30           ; Aux read address            (WO)
R_XVID_AUX_WR_ADDR  equ   $34           ; Aux write address           (WO)
R_XVID_AUX_CTRL     equ   $38           ; Aux control                 (WO)
R_XVID_AUX_DATA     equ   $3C           ; Aux memory/data             (RW)

