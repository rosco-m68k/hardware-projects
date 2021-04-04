; *************************************************************
; Copyright (c) 2021 roscopeco <AT> gmail <DOT> com
; *************************************************************
;
    section .text                     ; This is normal code
  
    include "../xosera_equates.asm"

; Config, constants, etc
TERMWIDTH   equ   106
TERMHEIGHT  equ   30
DISPLAYSIZE equ   TERMWIDTH*TERMHEIGHT

; Attribute / Char pairs used for various things
CLEARCHAR   equ   $08B2                   ; Clear screen / empty space
DCLEARCHAR  equ   $40B2                   ; Clear screen (when dead)
BORDERCHAR  equ   $06DB                   ; Playfield border
DBORDERCHAR equ   $0CDB                   ; Playfield border (when dead)
SNAKECHAR   equ   $02DB                   ; Snake

; Each segment of the snake is represented by a single DWORD,
; the four bytes are arranged as follows:
;
;    (MSB) Xpos Ypos Direction (PrevIdx NextIdx)
;
; Where PrevIdx and NextIdx are indexes into the snake list array.
; They're four bits each, so the maximum snake length is 15 segments -
; index 0 is reserved for "end of list").
;
; Direction is 0 for left, 1 for right, 2 for up, 3 for down
SNAKE_X     equ   0
SNAKE_Y     equ   1
SNAKE_D     equ   2
SNAKE_N     equ   3
 
kmain::
    lea     R_XVID_BASE,A0
    move.w  #CLEARCHAR,D0
    bsr.w   CLEAR_SCREEN
    move.w  #BORDERCHAR,D0
    bsr.w   DRAW_PLAYFIELD

    lea     SNAKEARRAY,A1
    lea     SNAKEARRAY_TAIL,A2
    bra.s   .MGL_START

.MGL:
    move.w  #CLEARCHAR,D0
    bsr.s   DRAW_SNAKE

    bsr.w   CONTROL_SNAKE    
    bsr.s   MOVE_SNAKE

    bsr.w   COLLIDE_SNAKE
    tst.b   D1
    beq.s   .MGL_START
    
    move.w  #DCLEARCHAR,D0
    bsr.w   CLEAR_SCREEN
    move.w  #DBORDERCHAR,D0
    bsr.w   DRAW_PLAYFIELD
    bsr.w   GAME_OVER
    rts

.MGL_START 
    move.w  #SNAKECHAR,D0
    bsr.s   DRAW_SNAKE

    bsr.s   .DELAY
    bra.s   .MGL

.DELAY
    movem.l D0-D7/A0-A6,-(A7)
    move.w  #$a000,D1
.DELAY_LOOP
    dbra.w  D1,.DELAY_LOOP
    movem.l (A7)+,D0-D7/A0-A6
    rts


; Args: 
;   A0    - Xosera base
;   A2    - Snake tail
;   D0.W  - Attribute & char
;
; Draw the snake tail-first, as it saves a shift when 
; traversing the segments.
DRAW_SNAKE:
    movem.l D0-D2/A2,-(A7)
    
.LOOP
    clr.w   D1                          ; Figure out VRAM address
    move.b  (SNAKE_Y,A2),D1             ; Get Y pos
    mulu.w  #TERMWIDTH,D1               ; Multiply line length
    move.b  (SNAKE_X,A2),D2             ; Get X pos
    add.w   D2,D1                       ; Add it
    movep.w D1,(R_XVID_WR_ADDR,A0)      ; Set write address
    movep.w D0,(R_XVID_DATA,A0)         ; And draw segment

    ifd DEBUG
    bsr.s   .PRINTSEGADDR
    endif

    clr.l   D1
    move.b  (SNAKE_N,A2),D1             ; Get Prev/Next pointer
    andi.b  #$0F,D1                     ; Mask out prev
    beq.s   .DONE                       ; Done if it's zero

    ifd DEBUG
    bsr.s   .PRINTD1
    endif

    subi.b  #1,D1                       ; Else, make zero based
    lsl.b   #2,D1                       ; Multiply by 4
    lea     SNAKEARRAY,A2               ; And load next segment
    add.l   D1,A2
    
    ifd DEBUG
    bsr.s   .PRINTD1
    bsr.s   .PRINTNEWLINE
    endif

    bra.s   .LOOP

.DONE
    movem.l (A7)+,D0-D2/A2
    rts

    ifd DEBUG
.PRINTD1 
    movem.l D0-D2/A0-A2,-(A7)
    move.l  #15,D0
    move.l  #16,D2
    trap    #15
    clr.l   D0
    clr.l   D1
    trap    #15
    movem.l (A7)+,D0-D2/A0-A2
    rts

.PRINTSEGADDR 
    movem.l D0-D2/A0-A2,-(A7)
    move.l  #15,D0
    move.l  A2,D1
    move.l  #16,D2
    trap    #15
    clr.l   D0
    clr.l   D1
    trap    #15
    movem.l (A7)+,D0-D2/A0-A2
    rts

.PRINTNEWLINE
    movem.l D0-D2/A0-A2,-(A7)
    clr.l   D0
    clr.l   D1
    trap    #15
    movem.l (A7)+,D0-D2/A0-A2
    rts  
    endif

; Args:
;   A1    - Snake head
;   A2    - Snake tail
;
; Both registers are modified with the moved snake head and tail.
MOVE_SNAKE:
    movem.l D0-D4/A3,-(A7)              ; Save registers
  
    move.b  (SNAKE_X,A1),D0             ; Get X position of head
    move.b  (SNAKE_Y,A1),D1             ; Get Y position of head
    move.b  (SNAKE_D,A1),D2             ; Get head direction

    ; TODO jumptable
    cmp.b   #0,D2                       ; Moving left? 
    beq.s   .LEFT                       

    cmp.b   #1,D2                       ; Moving right?
    beq.s   .RIGHT

    cmp.b   #2,D2                       ; Moving up?
    beq.s   .UP

    ; Else, just assume moving down...
    addi.b  #1,D1                       ; So add 1 to Y position
    bra.s   .STORE                      ; And store in new head (old tail)
    
.LEFT
    subi.b  #1,D0                       ; Sub 1 from X position    
    bra.s   .STORE                      ; And store in new head (old tail)
    
.RIGHT
    addi.b  #1,D0                       ; Add 1 to X position    
    bra.s   .STORE                      ; And store in new head (old tail)

.UP
    subi.b  #1,D1                       ; Sub 1 to Y position
                                  
.STORE                                  ; And store in new head (old tail)
    move.b  D0,(SNAKE_X,A2)
    move.b  D1,(SNAKE_Y,A2)
    move.b  D2,(SNAKE_D,A2)

    ; Now massage the list so head/tail are in the right place...
    ; TODO this is a mess (and kinda backwards :D )
    move.l  A1,D2
    sub.l   #SNAKEARRAY,D2              ; Figure out index of current head
    lsr.b   #2,D2                       ; Divide by 4
    addi.b  #1,D2                       ; and make 1-based

    move.l  A2,D3 
    sub.l   #SNAKEARRAY,D3              ; Figure out index of new head (old tail)
    lsr.b   #2,D3                       ; Divide by 4
    addi.b  #1,D3                       ; and make 1-based

    move.b  (SNAKE_N,A2),D4             ; Get prev/next from old tail into D4
    andi.b  #$0F,D4                     ; Mask prev index
    subi.b  #1,D4                       ; Make 0-based
    lsl.b   #2,D4                       ; And multiply by 4
    
    lea     SNAKEARRAY,A3               ; A3 is new tail
    add.l   D4,A3

    ; Zero 'next' in new tail
    move.b  (SNAKE_N,A3),D4             ; Get prev/next from new tail
    andi.b  #$0F,D4                     ; Zero prev index
    move.b  D4,(SNAKE_N,A3)             ; And store back to tail.
  
                                        ; Here, A1 = Old head, A2 = Old tail, A3 = New tail
    exg.l   A1,A2                       ; Now   A1 = New head, A2 = Old Head, A3 = New Tail
    exg.l   A2,A3                       ; Now   A1 = New head, A2 = New Tail, A3 = Old head
    
    lsl.b   #4,D2                       ; Set up previous pointer in new head
    move.b  D2,(SNAKE_N,A1)             ; (previous is old head, next is 0)

    andi.b  #$0F,D3                     ; Set up next pointer in old head
    move.b  (SNAKE_N,A3),D2             ; Need to keep previous pointer intact
    or.b    D3,D2
    move.b  D2,(SNAKE_N,A3)

    move.b  (SNAKE_N,A2),D2             ; Finally, zero previous in new tail
    andi.b  #$0F,D2                     ; Keeping next intact
    move.b  D2,(SNAKE_N,A2)

    movem.l (A7)+,D0-D4/A3              ; Restore registers...
    rts                                 ; ... and Done.


; Args: 
;   A0    - Xosera base
;   A1    - Snake head
;
; Return:
;   D1.W  - 0 if snake head is on CLEARCHAR, nonzero otherwise
;
COLLIDE_SNAKE:
    move.l  D2,-(A7)
    
    clr.w   D1                          ; Figure out VRAM address
    move.b  (SNAKE_Y,A1),D1             ; Get Y pos
    mulu.w  #TERMWIDTH,D1               ; Multiply line length
    move.b  (SNAKE_X,A1),D2             ; Get X pos
    add.w   D2,D1                       ; Add it
    movep.w D1,(R_XVID_RD_ADDR,A0)      ; Set read address
    movep.w (R_XVID_DATA,A0),D1         ; And read it

    eor.w   #CLEARCHAR,D1
    move.l  (A7)+,D2
    rts

; Args: 
;   A0    - Xosera base
;   A1    - Snake head
;
CONTROL_SNAKE:
    movem.l D0-D1/A0-A2,-(A7)     

    move.l  #7,D0                       ; Check input
    trap    #15

    tst.b   D1                          ; Anything pending?
    beq.s   .DONE                       ; Nope...

    ifd DEBUG
    movem.l D0-D2/A0-A2,-(A7)
    move.l  #0,D0
    move.w  #6,D1
    lea     SZGOTKEY,A1
    trap    #15
    movem.l (A7)+,D0-D2/A0-A2
    endif

    move.l  #5,D0                       ; Yes! Read it
    trap    #15

    cmp.b   #'w',D1                     ; Is it a 'w'?
    bne.s   .CHECKDOWN                  ; Nope

    move.b  #2,(SNAKE_D,A1)             ; Yes, go up
    bra.s   .DONE

.CHECKDOWN
    cmp.b   #'s',D1                     ; Is it a 's'?
    bne.s   .CHECKLEFT                  ; Nope

    move.b  #3,(SNAKE_D,A1)             ; Yes, go down
    bra.s   .DONE
    
.CHECKLEFT
    cmp.b   #'a',D1                     ; Is it a 'a'?
    bne.s   .CHECKRIGHT                 ; Nope

    move.b  #0,(SNAKE_D,A1)             ; Yes, go left
    bra.s   .DONE

.CHECKRIGHT
    cmp.b   #'d',D1                     ; Is it a 'd'?
    bne.s   .DONE                       ; Nope 

    move.b  #1,(SNAKE_D,A1)             ; Yes, go right

.DONE
    movem.l (A7)+,D0-D1/A0-A2
    rts
    
; Args: 
;   A0   - Xosera base
;   D0.W - Clear attr / char
;
CLEAR_SCREEN:
    move.w  D1,-(A7)                    ; Stash D1
    clr.w   D1
    movep.w D1,(R_XVID_WR_ADDR,A0)      ; Start writing at 0
    move.w  #DISPLAYSIZE,D1
    bra.s   .LOOP
.LOOPBODY
    movep.w D0,(R_XVID_DATA,A0)         ; Clear attr and char
.LOOP
    dbra.w  D1,.LOOPBODY
    move.w  (A7)+,D1
    rts    
    
; Args: 
;   A0   - Xosera base
;   D0.W - Attribute & character word
;
DRAW_PLAYFIELD:
    movem.w D0-D2,-(A7)
    clr.w   D1
    movep.w D1,(R_XVID_WR_ADDR,A0)      ; Start writing at 0

    bsr.s   .DRAWLINE                   ; Branch to line func for top

    ; Draw sides

    move.w  #TERMHEIGHT-2,D1
    bra.s   .SIDELINE_LOOP
.SIDELINE_LOOPBODY
    move.w  #TERMWIDTH-1,D2
    movep.w D2,(R_XVID_WR_INC,A0)       ; Set incremement to whole line
    movep.w D0,(R_XVID_DATA,A0)         ; Write left border...
    move.w  #1,D2
    movep.w D2,(R_XVID_WR_INC,A0)       ; Increment back to 1
    movep.w D0,(R_XVID_DATA,A0)         ; ... and write right border
.SIDELINE_LOOP
    dbra.w  D1,.SIDELINE_LOOPBODY

    bsr.s   .DRAWLINE                   ; Branch to line func for bottom

    movem.w (A7)+,D0-D2
    rts

.DRAWLINE
    ; Draw top line
    move.w  #TERMWIDTH,D1
    bra.s   .DRAWLINE_LOOP
.DRAWLINE_LOOPBODY
    movep.w D0,(R_XVID_DATA,A0)         ; Write border char
.DRAWLINE_LOOP
    dbra.w  D1,.DRAWLINE_LOOPBODY
    rts

GAME_OVER:
    move.w  #1525,D1
    movep.w D1,(R_XVID_WR_ADDR,A0)      ; Set write address

    lea     GAMEOVER,A1
.LOOP
    cmp.l   #GAMEOVER_END,A1
    beq.s   .DONE
  
    move.w  (A1)+,D1 
    movep.w D1,(R_XVID_DATA,A0)       ; Write next word
    bra.s   .LOOP
.DONE    
    rts 

    section .data

SNAKEARRAY:
    ; Segment 1 (Head)
    dc.b    $20                         ; X = 20
    dc.b    $5                          ; Y = 5
    dc.b    $1                          ; Moving right
    dc.b    $20                         ; Prev is DW2, No next

    ; Segment 2
    dc.b    $20                         ; X = 20
    dc.b    $6                          ; Y = 6
    dc.b    $2                          ; Moving up
    dc.b    $31                         ; Prev is DW3, next is DW1.

    ; Segment 3
    dc.b    $20                         ; X = 20
    dc.b    $7                          ; Y = 6
    dc.b    $2                          ; Moving up
    dc.b    $42                         ; Prev is DW4, next is DW2.

    ; Segment 4
    dc.b    $20                         ; X = 20
    dc.b    $8                          ; Y = 6
    dc.b    $2                          ; Moving up
    dc.b    $53                         ; Prev is DW5, next is DW3.
SNAKEARRAY_TAIL:
    ; Segment 5
    dc.b    $20                         ; X = 20
    dc.b    $9                          ; Y = 6
    dc.b    $2                          ; Moving up
    dc.b    $04                         ; No prev, next is DW4.

    section .rodata
    ifd DEBUG
SZGOTKEY  dc.b  "GOTKEY"
    endif

    align 2
GAMEOVER  dc.b  $40,$b1,$40,$b0
          dc.b  $40,"G",$40," ",$40,"A",$40," ",$40,"M",$40," ",$40,"E",$40," ",$40," ",$40," "
          dc.b  $40,"O",$40," ",$40,"V",$40," ",$40,"E",$40," ",$40,"R"
          dc.b  $40,$b0,$40,$b1
GAMEOVER_END

