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

R_XVID_BASE         equ   $f80060       ; Xosera base address 
R_XVID_RD_ADDR      equ   $0            ; VRAM Read Address           (WO)
R_XVID_WR_ADDR      equ   $4            ; VRAM Write Address          (WO)
R_XVID_DATA         equ   $8            ; VRAM Data (First word)      (RW)
R_XVID_DATA_2       equ   $C            ; VRAM Data (Second word)     (RW)
R_XVID_VID_CTRL     equ   $10           ; Video mode                  (WO)
R_XVID_VID_DATA     equ   $14           ; Video mode data             (RW)
R_XVID_RD_INC       equ   $18           ; Read address increment      (WO)
R_XVID_WR_INC       equ   $1C           ; Write address increment     (WO)
R_XVID_RD_MOD       equ   $20           ; Read modulo width           (WO)
R_XVID_WR_MOD       equ   $24           ; Write modulo width          (WO)
R_XVID_WIDTH        equ   $28           ; Width for 2D blit           (WO)
R_XVID_BLIT_COUNT   equ   $2C           ; Blitter "repeat" count      (RW)
R_XVID_AUX_RD_ADDR  equ   $30           ; Aux read address            (WO)
R_XVID_AUX_WR_ADDR  equ   $34           ; Aux write address           (WO)
R_XVID_AUX_CTRL     equ   $38           ; Aux control                 (WO)
R_XVID_AUX_DATA     equ   $3C           ; Aux memory/data             (RW)

