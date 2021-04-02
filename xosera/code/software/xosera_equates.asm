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
R_XVID_DATA_X       equ   $C            ; VRAM Data (Second word)     (RW)
R_XVID_VID_MODE     equ   $10           ; Video mode                  (WO)
R_XVID_BLIT_CTRL    equ   $14           ; Blitter mode/control/status (RW)
R_XVID_RD_INC       equ   $18           ; Read address increment      (WO)
R_XVID_WR_INC       equ   $18           ; Write address increment     (WO)
R_XVID_RD_MOD       equ   $1C           ; Read modulo width           (WO)
R_XVID_WR_MOD       equ   $20           ; Write modulo width          (WO)
R_XVID_WIDTH        equ   $24           ; Width for 2D blit           (WO)
R_XVID_COUNT        equ   $28           ; Blitter "repeat" count      (WO)
R_XVID_AUX_RD_ADDR  equ   $2C           ; Aux read address            (WO)
R_XVID_AUX_WR_ADDR  equ   $30           ; Aux write address           (WO)
R_XVID_AUX_DATA     equ   $34           ; Aux memory/data             (RW)
R_XVID_AUX_CTRL     equ   $38           ; Aux control                 (RW)

