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
;        // register 16-bit read/write (no side effects)
;    XVID_AUX_ADDR,          // reg 0: TODO video data (as set by VID_CTRL)
;    XVID_CONST,             // reg 1: TODO CPU data (instead of read from VRAM)
;    XVID_RD_ADDR,           // reg 2: address to read from VRAM
;    XVID_WR_ADDR,           // reg 3: address to write from VRAM
;
;        // special registers (with side effects), odd byte write triggers effect
;    XVID_DATA,              // reg 4: read/write word from/to VRAM RD/WR
;    XVID_DATA_2,            // reg 5: read/write word from/to VRAM RD/WR (for 32-bit)
;    XVID_AUX_DATA,          // reg 6: aux data (font/audio)
;    XVID_COUNT,             // reg 7: TODO blitter "repeat" count/trigger
;
;        // write only, 16-bit
;    XVID_RD_INC,            // reg 9: read addr increment value
;    XVID_WR_INC,            // reg A: write addr increment value
;    XVID_WR_MOD,            // reg C: TODO write modulo width for 2D blit
;    XVID_RD_MOD,            // reg B: TODO read modulo width for 2D blit
;    XVID_WIDTH,             // reg 8: TODO width for 2D blit
;    XVID_BLIT_CTRL,         // reg D: TODO
;    XVID_UNUSED_1,          // reg E: TODO
;    XVID_UNUSED_2           // reg F: TODO

XVID_BASE         equ   $f80060       ; Xosera base address 
XVID_AUX_ADDR     equ   $0            ; Aux read address            (RW)
XVID_CONST        equ   $4            ; CPU Data(?)                 (RW)
XVID_RD_ADDR      equ   $8            ; VRAM Read Address           (RW)
XVID_WR_ADDR      equ   $C            ; VRAM Write Address          (RW)
XVID_DATA         equ   $10           ; VRAM Data (First word)      (RW)
XVID_DATA_2       equ   $14           ; VRAM Data (Second word)     (RW)
XVID_AUX_DATA     equ   $18           ; Aux memory/data             (RW)
XVID_COUNT        equ   $1C           ; Blitter "repeat" count      (RW)
XVID_RD_INC       equ   $20           ; Read address increment      (WO)
XVID_WR_INC       equ   $24           ; Write address increment     (WO)
XVID_RD_MOD       equ   $28           ; Read modulo width           (WO)
XVID_WR_MOD       equ   $2C           ; Write modulo width          (WO)
XVID_WIDTH        equ   $30           ; Width for 2D blit           (WO)
XVID_BLIT_CTRL    equ   $34           ; Blitter control             (WO)
XVID_UNUSED_1     equ   $38           ; Unused at present           
XVID_UNUSED_2     equ   $3C           ; Unused at present

XV_AUX_VIDREG     equ   $0000         ; 0x0000-0x000F 16 word video registers (see below)
XV_AUX_FONTMEM    equ   $4000         ; 0x4000-0x5FFF 4K words of font memory
XV_AUX_COLORMEM   equ   $8000         ; 0x8000-0x80FF 256 word color lookup table (0xXRGB)
XV_AUX_AUDMEM     equ   $C000         ; 0xC000-0x??? TODO (audio registers)

; Xosera AUX video registers
XVA_dispstart     equ   $0            ; Display start address
XVA_dispwidth     equ   $1            ; Display width(?)
XVA_scrollxy      equ   $2            ; [10:8] H fine scroll, [3:0] V fine scroll
XVA_fontctrl      equ   $3            ; [9:8] 2KB font bank, [3:0] font height
XVA_gfxctrl       equ   $4            ; [15:8] Colorbase [7] enable [6] bitmap (0 tiled, 1 bitmap) [5:4] bpp [3:2] H repeat [1:0] V repeat
XVA_unused_5      equ   $5
XVA_unused_6      equ   $6
XVA_unused_7      equ   $7
XVA_vidwidth      equ   $8            ; Display resolution width
XVA_vidheight     equ   $9            ; Display resolution height
XVA_features      equ   $A            ; [15] = 1 (test)
XVA_scanline      equ   $B            ; [15] V blank, [14:11] zero [10:0] V line
XVA_githash_h     equ   $C
XVA_githash_l     equ   $D
XVA_unused_e      equ   $E
XVA_unused_f      equ   $F

