; ======================================================================
; JOGO DE ADIVINHACAO - 4 OBJETOS
; BANANA -> ELEFANTE -> RELOGIO -> PINGUIM
; ======================================================================

  mov #0, r0        ; r0 sera o acumulador do TOTAL DE PONTOS

org 150
inicio:

; ======================================================================
; OBJETO 1 - BANANA
; ======================================================================

; ----------------------------------------------------------------------
; OBJ1 - DICA 1
; ----------------------------------------------------------------------
obj1_dica1:
  mov #65500, r3
  mov #36, r2
obj1_clr1:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj1_clr1

  mov #0, r2
  mov #4999, r4
  mov #65500, r3
obj1_prt1:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj1_prt1

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj1_rd1:
  mov #65498, r5
  tst (r5)
  beq obj1_rd1

  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj1_bs1
  cmp r1, #13
  bne obj1_not_enter1
  mov r1, (r4)
  jmp obj1_chk1

obj1_bs1:
  cmp r4, #40000
  beq obj1_rd1
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj1_rd1

obj1_not_enter1:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj1_rd1

obj1_chk1:
  mov #40000, r4
  mov #10000, r5
obj1_cmp1:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj1_dica2
  cmp r1, #13
  beq obj1_acerto1
  add #2, r4
  add #2, r5
  jmp obj1_cmp1

obj1_acerto1:
  add #4, r0
  jmp obj2_dica1


; ----------------------------------------------------------------------
; OBJ1 - DICA 2
; ----------------------------------------------------------------------
obj1_dica2:
  mov #65500, r3
  mov #36, r2
obj1_clr2:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj1_clr2

  mov #0, r2
  mov #5099, r4
  mov #65500, r3
obj1_prt2:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj1_prt2

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj1_rd2:
  mov #65498, r5
  tst (r5)
  beq obj1_rd2

  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj1_bs2
  cmp r1, #13
  bne obj1_not_enter2
  mov r1, (r4)
  jmp obj1_chk2

obj1_bs2:
  cmp r4, #40000
  beq obj1_rd2
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj1_rd2

obj1_not_enter2:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj1_rd2

obj1_chk2:
  mov #40000, r4
  mov #10000, r5
obj1_cmp2:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj1_dica3
  cmp r1, #13
  beq obj1_acerto2
  add #2, r4
  add #2, r5
  jmp obj1_cmp2

obj1_acerto2:
  add #3, r0
  jmp obj2_dica1


; ----------------------------------------------------------------------
; OBJ1 - DICA 3
; ----------------------------------------------------------------------
obj1_dica3:
  mov #65500, r3
  mov #36, r2
obj1_clr3:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj1_clr3

  mov #0, r2
  mov #5199, r4
  mov #65500, r3
obj1_prt3:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj1_prt3

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj1_rd3:
  mov #65498, r5
  tst (r5)
  beq obj1_rd3

  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj1_bs3
  cmp r1, #13
  bne obj1_not_enter3
  mov r1, (r4)
  jmp obj1_chk3

obj1_bs3:
  cmp r4, #40000
  beq obj1_rd3
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj1_rd3

obj1_not_enter3:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj1_rd3

obj1_chk3:
  mov #40000, r4
  mov #10000, r5
obj1_cmp3:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj1_dica4
  cmp r1, #13
  beq obj1_acerto3
  add #2, r4
  add #2, r5
  jmp obj1_cmp3

obj1_acerto3:
  add #2, r0
  jmp obj2_dica1


; ----------------------------------------------------------------------
; OBJ1 - DICA 4
; ----------------------------------------------------------------------
obj1_dica4:
  mov #65500, r3
  mov #36, r2
obj1_clr4:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj1_clr4

  mov #0, r2
  mov #5299, r4
  mov #65500, r3
obj1_prt4:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj1_prt4

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj1_rd4:
  mov #65498, r5
  tst (r5)
  beq obj1_rd4

  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj1_bs4
  cmp r1, #13
  bne obj1_not_enter4
  mov r1, (r4)
  jmp obj1_chk4

obj1_bs4:
  cmp r4, #40000
  beq obj1_rd4
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj1_rd4

obj1_not_enter4:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj1_rd4

obj1_chk4:
  mov #40000, r4
  mov #10000, r5
obj1_cmp4:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj1_erro
  cmp r1, #13
  beq obj1_acerto4
  add #2, r4
  add #2, r5
  jmp obj1_cmp4

obj1_acerto4:
  add #1, r0
  jmp obj2_dica1

obj1_erro:
  sub #1, r0
  jmp obj2_dica1


; ======================================================================
; OBJETO 2 - ELEFANTE
; ======================================================================

; ----------------------------------------------------------------------
; OBJ2 - DICA 1
; ----------------------------------------------------------------------
obj2_dica1:
  mov #65500, r3
  mov #36, r2
obj2_clr1:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj2_clr1

  mov #0, r2
  mov #5999, r4
  mov #65500, r3
obj2_prt1:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj2_prt1

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj2_rd1:
  mov #65498, r5
  tst (r5)
  beq obj2_rd1

  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj2_bs1
  cmp r1, #13
  bne obj2_not_enter1
  mov r1, (r4)
  jmp obj2_chk1

obj2_bs1:
  cmp r4, #40000
  beq obj2_rd1
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj2_rd1

obj2_not_enter1:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj2_rd1

obj2_chk1:
  mov #40000, r4
  mov #10100, r5
obj2_cmp1:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj2_dica2
  cmp r1, #13
  beq obj2_acerto1
  add #2, r4
  add #2, r5
  jmp obj2_cmp1

obj2_acerto1:
  add #4, r0
  jmp obj3_dica1


; ----------------------------------------------------------------------
; OBJ2 - DICA 2
; ----------------------------------------------------------------------
obj2_dica2:
  mov #65500, r3
  mov #36, r2
obj2_clr2:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj2_clr2

  mov #0, r2
  mov #6099, r4
  mov #65500, r3
obj2_prt2:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj2_prt2

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj2_rd2:
  mov #65498, r5
  tst (r5)
  beq obj2_rd2
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj2_bs2
  cmp r1, #13
  bne obj2_not_enter2
  mov r1, (r4)
  jmp obj2_chk2

obj2_bs2:
  cmp r4, #40000
  beq obj2_rd2
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj2_rd2

obj2_not_enter2:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj2_rd2

obj2_chk2:
  mov #40000, r4
  mov #10100, r5
obj2_cmp2:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj2_dica3
  cmp r1, #13
  beq obj2_acerto2
  add #2, r4
  add #2, r5
  jmp obj2_cmp2

obj2_acerto2:
  add #3, r0
  jmp obj3_dica1


; ----------------------------------------------------------------------
; OBJ2 - DICA 3
; ----------------------------------------------------------------------
obj2_dica3:
  mov #65500, r3
  mov #36, r2
obj2_clr3:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj2_clr3

  mov #0, r2
  mov #6199, r4
  mov #65500, r3
obj2_prt3:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj2_prt3

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj2_rd3:
  mov #65498, r5
  tst (r5)
  beq obj2_rd3
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj2_bs3
  cmp r1, #13
  bne obj2_not_enter3
  mov r1, (r4)
  jmp obj2_chk3

obj2_bs3:
  cmp r4, #40000
  beq obj2_rd3
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj2_rd3

obj2_not_enter3:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj2_rd3

obj2_chk3:
  mov #40000, r4
  mov #10100, r5
obj2_cmp3:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj2_dica4
  cmp r1, #13
  beq obj2_acerto3
  add #2, r4
  add #2, r5
  jmp obj2_cmp3

obj2_acerto3:
  add #2, r0
  jmp obj3_dica1


; ----------------------------------------------------------------------
; OBJ2 - DICA 4
; ----------------------------------------------------------------------
obj2_dica4:
  mov #65500, r3
  mov #36, r2
obj2_clr4:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj2_clr4

  mov #0, r2
  mov #6299, r4
  mov #65500, r3
obj2_prt4:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj2_prt4

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj2_rd4:
  mov #65498, r5
  tst (r5)
  beq obj2_rd4
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj2_bs4
  cmp r1, #13
  bne obj2_not_enter4
  mov r1, (r4)
  jmp obj2_chk4

obj2_bs4:
  cmp r4, #40000
  beq obj2_rd4
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj2_rd4

obj2_not_enter4:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj2_rd4

obj2_chk4:
  mov #40000, r4
  mov #10100, r5
obj2_cmp4:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj2_erro
  cmp r1, #13
  beq obj2_acerto4
  add #2, r4
  add #2, r5
  jmp obj2_cmp4

obj2_acerto4:
  add #1, r0
  jmp obj3_dica1

obj2_erro:
  sub #1, r0
  jmp obj3_dica1


; ======================================================================
; OBJETO 3 - RELOGIO
; ======================================================================

; ----------------------------------------------------------------------
; OBJ3 - DICA 1
; ----------------------------------------------------------------------
obj3_dica1:
  mov #65500, r3
  mov #36, r2
obj3_clr1:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj3_clr1

  mov #0, r2
  mov #6999, r4
  mov #65500, r3
obj3_prt1:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj3_prt1

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj3_rd1:
  mov #65498, r5
  tst (r5)
  beq obj3_rd1
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj3_bs1
  cmp r1, #13
  bne obj3_not_enter1
  mov r1, (r4)
  jmp obj3_chk1

obj3_bs1:
  cmp r4, #40000
  beq obj3_rd1
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj3_rd1

obj3_not_enter1:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj3_rd1

obj3_chk1:
  mov #40000, r4
  mov #10200, r5
obj3_cmp1:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj3_dica2
  cmp r1, #13
  beq obj3_acerto1
  add #2, r4
  add #2, r5
  jmp obj3_cmp1

obj3_acerto1:
  add #4, r0
  jmp obj4_dica1


; ----------------------------------------------------------------------
; OBJ3 - DICA 2
; ----------------------------------------------------------------------
obj3_dica2:
  mov #65500, r3
  mov #36, r2
obj3_clr2:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj3_clr2

  mov #0, r2
  mov #7099, r4
  mov #65500, r3
obj3_prt2:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj3_prt2

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj3_rd2:
  mov #65498, r5
  tst (r5)
  beq obj3_rd2
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj3_bs2
  cmp r1, #13
  bne obj3_not_enter2
  mov r1, (r4)
  jmp obj3_chk2

obj3_bs2:
  cmp r4, #40000
  beq obj3_rd2
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj3_rd2

obj3_not_enter2:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj3_rd2

obj3_chk2:
  mov #40000, r4
  mov #10200, r5
obj3_cmp2:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj3_dica3
  cmp r1, #13
  beq obj3_acerto2
  add #2, r4
  add #2, r5
  jmp obj3_cmp2

obj3_acerto2:
  add #3, r0
  jmp obj4_dica1


; ----------------------------------------------------------------------
; OBJ3 - DICA 3
; ----------------------------------------------------------------------
obj3_dica3:
  mov #65500, r3
  mov #36, r2
obj3_clr3:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj3_clr3

  mov #0, r2
  mov #7199, r4
  mov #65500, r3
obj3_prt3:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj3_prt3

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj3_rd3:
  mov #65498, r5
  tst (r5)
  beq obj3_rd3
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj3_bs3
  cmp r1, #13
  bne obj3_not_enter3
  mov r1, (r4)
  jmp obj3_chk3

obj3_bs3:
  cmp r4, #40000
  beq obj3_rd3
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj3_rd3

obj3_not_enter3:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj3_rd3

obj3_chk3:
  mov #40000, r4
  mov #10200, r5
obj3_cmp3:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj3_dica4
  cmp r1, #13
  beq obj3_acerto3
  add #2, r4
  add #2, r5
  jmp obj3_cmp3

obj3_acerto3:
  add #2, r0
  jmp obj4_dica1


; ----------------------------------------------------------------------
; OBJ3 - DICA 4
; ----------------------------------------------------------------------
obj3_dica4:
  mov #65500, r3
  mov #36, r2
obj3_clr4:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj3_clr4

  mov #0, r2
  mov #7299, r4
  mov #65500, r3
obj3_prt4:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj3_prt4

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj3_rd4:
  mov #65498, r5
  tst (r5)
  beq obj3_rd4
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj3_bs4
  cmp r1, #13
  bne obj3_not_enter4
  mov r1, (r4)
  jmp obj3_chk4

obj3_bs4:
  cmp r4, #40000
  beq obj3_rd4
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj3_rd4

obj3_not_enter4:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj3_rd4

obj3_chk4:
  mov #40000, r4
  mov #10200, r5
obj3_cmp4:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj3_erro
  cmp r1, #13
  beq obj3_acerto4
  add #2, r4
  add #2, r5
  jmp obj3_cmp4

obj3_acerto4:
  add #1, r0
  jmp obj4_dica1

obj3_erro:
  sub #1, r0
  jmp obj4_dica1


; ======================================================================
; OBJETO 4 - PINGUIM
; ======================================================================

; ----------------------------------------------------------------------
; OBJ4 - DICA 1
; ----------------------------------------------------------------------
obj4_dica1:
  mov #65500, r3
  mov #36, r2
obj4_clr1:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj4_clr1

  mov #0, r2
  mov #7999, r4
  mov #65500, r3
obj4_prt1:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj4_prt1

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj4_rd1:
  mov #65498, r5
  tst (r5)
  beq obj4_rd1
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj4_bs1
  cmp r1, #13
  bne obj4_not_enter1
  mov r1, (r4)
  jmp obj4_chk1

obj4_bs1:
  cmp r4, #40000
  beq obj4_rd1
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj4_rd1

obj4_not_enter1:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj4_rd1

obj4_chk1:
  mov #40000, r4
  mov #10300, r5
obj4_cmp1:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj4_dica2
  cmp r1, #13
  beq obj4_acerto1
  add #2, r4
  add #2, r5
  jmp obj4_cmp1

obj4_acerto1:
  add #4, r0
  jmp fim_jogo


; ----------------------------------------------------------------------
; OBJ4 - DICA 2
; ----------------------------------------------------------------------
obj4_dica2:
  mov #65500, r3
  mov #36, r2
obj4_clr2:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj4_clr2

  mov #0, r2
  mov #8099, r4
  mov #65500, r3
obj4_prt2:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj4_prt2

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj4_rd2:
  mov #65498, r5
  tst (r5)
  beq obj4_rd2
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj4_bs2
  cmp r1, #13
  bne obj4_not_enter2
  mov r1, (r4)
  jmp obj4_chk2

obj4_bs2:
  cmp r4, #40000
  beq obj4_rd2
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj4_rd2

obj4_not_enter2:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj4_rd2

obj4_chk2:
  mov #40000, r4
  mov #10300, r5
obj4_cmp2:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj4_dica3
  cmp r1, #13
  beq obj4_acerto2
  add #2, r4
  add #2, r5
  jmp obj4_cmp2

obj4_acerto2:
  add #3, r0
  jmp fim_jogo


; ----------------------------------------------------------------------
; OBJ4 - DICA 3
; ----------------------------------------------------------------------
obj4_dica3:
  mov #65500, r3
  mov #36, r2
obj4_clr3:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj4_clr3

  mov #0, r2
  mov #8199, r4
  mov #65500, r3
obj4_prt3:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj4_prt3

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj4_rd3:
  mov #65498, r5
  tst (r5)
  beq obj4_rd3
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj4_bs3
  cmp r1, #13
  bne obj4_not_enter3
  mov r1, (r4)
  jmp obj4_chk3

obj4_bs3:
  cmp r4, #40000
  beq obj4_rd3
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj4_rd3

obj4_not_enter3:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj4_rd3

obj4_chk3:
  mov #40000, r4
  mov #10300, r5
obj4_cmp3:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj4_dica4
  cmp r1, #13
  beq obj4_acerto3
  add #2, r4
  add #2, r5
  jmp obj4_cmp3

obj4_acerto3:
  add #2, r0
  jmp fim_jogo


; ----------------------------------------------------------------------
; OBJ4 - DICA 4
; ----------------------------------------------------------------------
obj4_dica4:
  mov #65500, r3
  mov #36, r2
obj4_clr4:
  mov #32, (r3)
  inc r3
  dec r2
  bne obj4_clr4

  mov #0, r2
  mov #8299, r4
  mov #65500, r3
obj4_prt4:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #22
  bne obj4_prt4

  mov #58, (r3)
  inc r3
  mov #32, (r3)
  inc r3

  mov #40000, r4
obj4_rd4:
  mov #65498, r5
  tst (r5)
  beq obj4_rd4
  mov #65499, r5
  mov (r5), r1
  mov #65498, r5
  clr (r5)

  cmp r1, #8
  beq obj4_bs4
  cmp r1, #13
  bne obj4_not_enter4
  mov r1, (r4)
  jmp obj4_chk4

obj4_bs4:
  cmp r4, #40000
  beq obj4_rd4
  sub #2, r4
  dec r3
  mov #32, (r3)
  jmp obj4_rd4

obj4_not_enter4:
  mov r1, (r4)
  mov r1, (r3)
  inc r3
  add #2, r4
  jmp obj4_rd4

obj4_chk4:
  mov #40000, r4
  mov #10300, r5
obj4_cmp4:
  mov (r4), r1
  mov (r5), r2
  cmp r1, r2
  bne obj4_erro
  cmp r1, #13
  beq obj4_acerto4
  add #2, r4
  add #2, r5
  jmp obj4_cmp4

obj4_acerto4:
  add #1, r0
  jmp fim_jogo

obj4_erro:
  sub #1, r0
  jmp fim_jogo


; ======================================================================
; TELA FINAL: MOSTRAR PONTOS
; ======================================================================

fim_jogo:
  mov #65500, r3
  mov #36, r5
clr_fim:
  mov #32, (r3)
  inc r3
  dec r5
  bne clr_fim

  mov #0, r2
  mov #8999, r4
  mov #65500, r3
print_pts_msg:
  mov (r4), (r3)
  inc r4
  inc r2
  inc r3
  cmp r2, #15
  bne print_pts_msg

  cmp r0, #0
  bge print_num
  mov #45, (r3)
  inc r3
  not r0
  add #1, r0

print_num:
  mov r0, r2
  mov #0, r5
div_10:
  cmp r2, #10
  blt end_div
  sub #10, r2
  inc r5
  jmp div_10

end_div:
  cmp r5, #0
  beq skip_dez
  add #48, r5
  mov r5, (r3)
  inc r3

skip_dez:
  add #48, r2
  mov r2, (r3)

wait_end:
  jmp wait_end


; ======================================================================
; BANCO DE DADOS
; ======================================================================
; ATENCAO: Todas as frases agora tem exatamente 20 caracteres!
; Se quiser mudar uma frase, basta preencher com espacos (' ') no final 
; ate que as aspas de fechamento fiquem exatamente nesta mesma linha.

; ----------------------------------------------------------------------
; OBJETO 1 - BANANA
; ----------------------------------------------------------------------

org 5000
dab '1: Eh uma fruta     '

org 5100
dab '2: Geralmente amarela  '

org 5200
dab '3: Tem casca           '

org 5300
dab '4: Eh comprida         '


; ----------------------------------------------------------------------
; OBJETO 2 - ELEFANTE
; ----------------------------------------------------------------------

org 6000
dab '1: Eh um animal        '

org 6100
dab '2: Tem quatro patas    '

org 6200
dab '3: Tem uma tromba      '

org 6300
dab '4: Eh muito grande     '


; ----------------------------------------------------------------------
; OBJETO 3 - RELOGIO
; ----------------------------------------------------------------------

org 7000
dab '1: Marca as horas      '

org 7100
dab '2: Pode ter ponteiros  '

org 7200
dab '3: Pode ser de pulso   '

org 7300
dab '4: Fica na parede      '


; ----------------------------------------------------------------------
; OBJETO 4 - PINGUIM
; ----------------------------------------------------------------------

org 8000
dab '1: Eh uma ave          '

org 8100
dab '2: Vive no frio        '

org 8200
dab '3: Nao sabe voar       '

org 8300
dab '4: Penas pretas/brancas'


; ----------------------------------------------------------------------
; MENSAGEM FINAL
; ----------------------------------------------------------------------

org 9000
dab 'Total Pontos:'


; ======================================================================
; RESPOSTAS
; ======================================================================

; ----------------------------------------------------------------------
; BANANA - 10000
; ----------------------------------------------------------------------

org 10000

DW 98
DW 97
DW 110
DW 97
DW 110
DW 97
DW 13


; ----------------------------------------------------------------------
; ELEFANTE - 10100
; ----------------------------------------------------------------------

org 10100

DW 101
DW 108
DW 101
DW 102
DW 97
DW 110
DW 116
DW 101
DW 13


; ----------------------------------------------------------------------
; RELOGIO - 10200
; ----------------------------------------------------------------------

org 10200

DW 114
DW 101
DW 108
DW 111
DW 103
DW 105
DW 111
DW 13


; ----------------------------------------------------------------------
; PINGUIM - 10300
; ----------------------------------------------------------------------

org 10300

DW 112
DW 105
DW 110
DW 103
DW 117
DW 105
DW 109
DW 13
