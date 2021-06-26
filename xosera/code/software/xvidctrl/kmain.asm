; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code
  
    include "../xosera_equates.asm"

kmain::
    lea     XVID_BASE,A0

.LOOP:
    move.w  #XVID_AUX_VID_W_FONTCTRL,D0
    movep.w D0,(XVID_AUX_ADDR,A0)

    move.w  #$0208,D0
    movep.w D0,(XVID_AUX_DATA,A0)
 
    move.w  #XVID_AUX_VID_W_SCROLLXY,D0
    movep.w D0,(XVID_AUX_ADDR,A0)

    ; move.w  CUR_SCROLL,D0
    move.w  #0700,D0
    movep.w D0,(XVID_AUX_DATA,A0)

    bsr.s   CHECK_INPUT

    ifd DEBUG
    movem.l D0-D2/A0-A2,-(A7)
    move.l  #0,D0
    move.w  #6,D1
    lea     SZGOTKEY,A1
    trap    #15
    move.l  #15,D0
    clr.l   D1
    move.w  CUR_SCROLL,D1
    move.b  #16,D2
    trap    #15
    clr.l   D0
    clr.l   D1
    trap    #15
    movem.l (A7)+,D0-D2/A0-A2

    endif

    bra.s   .LOOP    
    
; Args: 
;   A0    - Xosera base
;
CHECK_INPUT:
    movem.l D0-D1,-(A7)     

    move.l  #5,D0                       ; Check input
    trap    #15

    cmp.b   #'w',D1                     ; Is it a 'w'?
    bne.s   .CHECKDOWN                  ; Nope

    move.w  CUR_SCROLL,D1               ; Yes, scroll up
    tst.b   D1                          ; Already zero?
    beq.s   .DONE                       ; Just finish if so

    subi.b  #1,D1
    move.w  D1,CUR_SCROLL 

    bra.s   .DONE

.CHECKDOWN
    cmp.b   #'s',D1                     ; Is it a 's'?
    bne.s   .CHECKLEFT                  ; Nope

    move.w  CUR_SCROLL,D1               ; Yes, scroll down
    addi.b  #1,D1                       ; Increment
    andi.b  #$0F,D1                     ; Mask unused bits
    move.w  D1,CUR_SCROLL               ; And store back...

    bra.s   .DONE
    
.CHECKLEFT
    cmp.b   #'a',D1                     ; Is it a 'a'?
    bne.s   .CHECKRIGHT                 ; Nope

    clr.w   D1
    move.b  CUR_SCROLX,D1               ; Yes, scroll left
    tst.b   D1                          ; Already zero?
    beq.s   .DONE                       ; Just finish if so

    subi.b  #1,D1
    move.b  D1,CUR_SCROLX
    lsl.w   #8,D1
    and.w   #$00FF,CUR_SCROLL
    or.w    D1,CUR_SCROLL 

    bra.s   .DONE

.CHECKRIGHT
    cmp.b   #'d',D1                     ; Is it a 'd'?
    bne.s   .DONE                       ; Nope 

    clr.w   D1
    move.b  CUR_SCROLX,D1               ; Yes, scroll right
    addi.b  #1,D1                       ; Increment
    andi.b  #$07,D1                     ; Mask unused bits
    move.b  D1,CUR_SCROLX
    lsl.w   #8,D1
    and.w   #$00FF,CUR_SCROLL
    or.w    D1,CUR_SCROLL 


.DONE
    movem.l (A7)+,D0-D1
    rts
   
    section .data
CUR_SCROLL  dc.w  $0000
CUR_SCROLX  dc.b  $00

    align 2
 
    section .rodata
    ifd DEBUG
SZGOTKEY  dc.b    "GOTKEY"
    endif
