
.globl __CARDCheckSum
__CARDCheckSum: # 0x80357074
    li      r0, 0x0
    srawi   r4, r4, 1
    sth     r0, 0x0(r6)
    addze.  r4, r4
    sth     r0, 0x0(r5)
    ble-    branch_0x803571f8
    srwi.   r0, r4, 3
    mtctr   r0
    beq-    branch_0x803571c8
branch_0x80357098:
    lhz     r7, 0x0(r5)
    lhz     r0, 0x0(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0x0(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0x2(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0x2(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0x4(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0x4(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0x6(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0x6(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0x8(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0x8(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0xa(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0xa(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0xc(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0xc(r3)
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    lhz     r7, 0x0(r5)
    lhz     r0, 0xe(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0xe(r3)
    addi    r3, r3, 0x10
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    bdnz+      branch_0x80357098
    andi.   r4, r4, 0x7
    beq-    branch_0x803571f8
branch_0x803571c8:
    mtctr   r4
branch_0x803571cc:
    lhz     r7, 0x0(r5)
    lhz     r0, 0x0(r3)
    add     r0, r7, r0
    sth     r0, 0x0(r5)
    lhz     r0, 0x0(r3)
    addi    r3, r3, 0x2
    lhz     r7, 0x0(r6)
    not     r0, r0
    add     r0, r7, r0
    sth     r0, 0x0(r6)
    bdnz+      branch_0x803571cc
branch_0x803571f8:
    lhz     r0, 0x0(r5)
    cmplwi  r0, 0xffff
    bne-    branch_0x8035720c
    li      r0, 0x0
    sth     r0, 0x0(r5)
branch_0x8035720c:
    lhz     r0, 0x0(r6)
    cmplwi  r0, 0xffff
    bnelr-    

    li      r0, 0x0
    sth     r0, 0x0(r6)
    blr


.globl VerifyID
VerifyID: # 0x80357224
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r27, r3
    lwz     r3, 0x80(r3)
    lhz     r0, 0x20(r3)
    addi    r29, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8035725c
    lhz     r3, 0x22(r29)
    lhz     r0, 0x8(r27)
    cmplw   r3, r0
    beq-    branch_0x80357264
branch_0x8035725c:
    li      r3, -0x6
    b       branch_0x80357494

branch_0x80357264:
    li      r0, 0x1fc
    srawi   r0, r0, 1
    addze.  r0, r0
    addi    r4, r29, 0x0
    li      r7, 0x0
    mr      r3, r0
    li      r6, 0x0
    ble-    branch_0x8035733c
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x80357320
branch_0x80357290:
    lhz     r5, 0x0(r4)
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x2(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x4(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x6(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0x8(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0xa(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0xc(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    lhz     r5, 0xe(r4)
    add     r7, r7, r0
    not     r0, r5
    add     r6, r6, r5
    add     r7, r7, r0
    addi    r4, r4, 0x10
    bdnz+      branch_0x80357290
    andi.   r3, r3, 0x7
    beq-    branch_0x8035733c
branch_0x80357320:
    mtctr   r3
branch_0x80357324:
    lhz     r5, 0x0(r4)
    addi    r4, r4, 0x2
    not     r0, r5
    add     r6, r6, r5
    add     r7, r7, r0
    bdnz+      branch_0x80357324
branch_0x8035733c:
    clrlwi  r0, r6, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x8035734c
    li      r6, 0x0
branch_0x8035734c:
    clrlwi  r0, r7, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x8035735c
    li      r7, 0x0
branch_0x8035735c:
    lhz     r3, 0x1fc(r29)
    clrlwi  r0, r6, 16
    cmplw   r3, r0
    bne-    branch_0x8035737c
    lhz     r3, 0x1fe(r29)
    clrlwi  r0, r7, 16
    cmplw   r3, r0
    beq-    branch_0x80357384
branch_0x8035737c:
    li      r3, -0x6
    b       branch_0x80357494

branch_0x80357384:
    bl      OSGetFontEncode
    lhz     r0, 0x24(r29)
    clrlwi  r3, r3, 16
    cmplw   r0, r3
    beq-    branch_0x803573a0
    li      r3, -0xd
    b       branch_0x80357494

branch_0x803573a0:
    lwz     r31, 0xc(r29)
    lwz     r28, 0x10(r29)
    bl      __OSLockSramEx
    lis     r4, 0x8040
    addi    r0, r4, 0x3460
    lis     r4, 0x7878
    subf    r0, r0, r27
    addi    r4, r4, 0x7879
    mulhw   r0, r4, r0
    srawi   r0, r0, 7
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xc
    lis     r4, 0x41c6
    addi    r26, r29, 0x0
    add     r29, r3, r0
    addi    r30, r4, 0x4e6d
    li      r27, 0x0
branch_0x803573e8:
    mullw   r5, r31, r30
    mulhwu  r3, r28, r30
    li      r31, 0x0
    add     r5, r5, r3
    mullw   r3, r28, r31
    mullw   r0, r28, r30
    li      r28, 0x3039
    addc    r4, r0, r28
    add     r0, r5, r3
    adde    r3, r0, r31
    li      r5, 0x10
    bl      __shr2i
    lbz     r0, 0x0(r29)
    lbz     r6, 0x0(r26)
    addc    r0, r4, r0
    clrlwi  r0, r0, 24
    cmplw   r6, r0
    beq-    branch_0x80357440
    li      r3, 0x0
    bl      __OSUnlockSramEx
    li      r3, -0x6
    b       branch_0x80357494

branch_0x80357440:
    mullw   r5, r3, r30
    mulhwu  r3, r4, r30
    add     r5, r5, r3
    mullw   r3, r4, r31
    mullw   r0, r4, r30
    addc    r4, r0, r28
    add     r0, r5, r3
    adde    r3, r0, r31
    li      r5, 0x10
    bl      __shr2i
    addi    r27, r27, 0x1
    cmpwi   r27, 0xc
    li      r0, 0x7fff
    and     r28, r4, r0
    and     r31, r3, r31
    addi    r29, r29, 0x1
    addi    r26, r26, 0x1
    blt+    branch_0x803573e8
    li      r3, 0x0
    bl      __OSUnlockSramEx
    li      r3, 0x0
branch_0x80357494:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl VerifyDir
VerifyDir: # 0x803574a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r7, sp, 0x1c
    addi    r8, sp, 0x14
    stw     r30, 0x30(sp)
    li      r31, 0x0
    li      r30, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    li      r4, 0x0
branch_0x803574d8:
    addi    r0, r4, 0x1
    lwz     r5, 0x80(r3)
    slwi    r0, r0, 13
    add     r0, r5, r0
    stw     r0, 0x0(r7)
    li      r6, 0x1ffc
    srawi   r6, r6, 1
    lwz     r5, 0x0(r7)
    addze.  r6, r6
    li      r11, 0x0
    addi    r0, r5, 0x1fc0
    stw     r0, 0x0(r8)
    li      r10, 0x0
    lwz     r5, 0x0(r7)
    ble-    branch_0x803575cc
    srwi.   r0, r6, 3
    mtctr   r0
    beq-    branch_0x803575b0
branch_0x80357520:
    lhz     r9, 0x0(r5)
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x2(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x4(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x6(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x8(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0xa(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0xc(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0xe(r5)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    add     r11, r11, r0
    addi    r5, r5, 0x10
    bdnz+      branch_0x80357520
    andi.   r6, r6, 0x7
    beq-    branch_0x803575cc
branch_0x803575b0:
    mtctr   r6
branch_0x803575b4:
    lhz     r9, 0x0(r5)
    addi    r5, r5, 0x2
    not     r0, r9
    add     r10, r10, r9
    add     r11, r11, r0
    bdnz+      branch_0x803575b4
branch_0x803575cc:
    clrlwi  r0, r10, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x803575dc
    li      r10, 0x0
branch_0x803575dc:
    clrlwi  r0, r11, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x803575ec
    li      r11, 0x0
branch_0x803575ec:
    lwz     r6, 0x0(r8)
    clrlwi  r5, r10, 16
    lhz     r0, 0x3c(r6)
    cmplw   r5, r0
    bne-    branch_0x80357610
    lhz     r0, 0x3e(r6)
    clrlwi  r5, r11, 16
    cmplw   r5, r0
    beq-    branch_0x80357620
branch_0x80357610:
    li      r0, 0x0
    stw     r0, 0x84(r3)
    addi    r30, r4, 0x0
    addi    r31, r31, 0x1
branch_0x80357620:
    addi    r4, r4, 0x1
    cmpwi   r4, 0x2
    addi    r7, r7, 0x4
    addi    r8, r8, 0x4
    blt+    branch_0x803574d8
    cmpwi   r31, 0x0
    bne-    branch_0x803576bc
    lwz     r4, 0x84(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x803576a0
    lwz     r5, 0x18(sp)
    lwz     r4, 0x14(sp)
    lha     r5, 0x3a(r5)
    lha     r0, 0x3a(r4)
    subf.   r0, r5, r0
    bge-    branch_0x80357668
    li      r30, 0x0
    b       branch_0x8035766c

branch_0x80357668:
    li      r30, 0x1
branch_0x8035766c:
    slwi    r0, r30, 2
    addi    r6, sp, 0x1c
    add     r6, r6, r0
    lwz     r4, 0x0(r6)
    xori     r0, r30, 0x1
    slwi    r0, r0, 2
    stw     r4, 0x84(r3)
    addi    r4, sp, 0x1c
    li      r5, 0x2000
    lwz     r3, 0x0(r6)
    lwzx    r4, r4, r0
    bl      memcpy
    b       branch_0x803576bc

branch_0x803576a0:
    lwz     r0, 0x1c(sp)
    cmplw   r4, r0
    bne-    branch_0x803576b4
    li      r0, 0x0
    b       branch_0x803576b8

branch_0x803576b4:
    li      r0, 0x1
branch_0x803576b8:
    mr      r30, r0
branch_0x803576bc:
    cmplwi  r29, 0x0
    beq-    branch_0x803576c8
    stw     r30, 0x0(r29)
branch_0x803576c8:
    mr      r3, r31
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl VerifyFAT
VerifyFAT: # 0x803576e8
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r4, sp, 0x10
branch_0x80357714:
    li      r8, 0x1ffc
    lwz     r6, 0x80(r3)
    addi    r0, r5, 0x3
    srawi   r8, r8, 1
    slwi    r0, r0, 13
    add     r7, r6, r0
    addze.  r8, r8
    stw     r7, 0x0(r4)
    addi    r6, r7, 0x4
    li      r11, 0x0
    li      r10, 0x0
    ble-    branch_0x803577fc
    srwi.   r0, r8, 3
    mtctr   r0
    beq-    branch_0x803577e0
branch_0x80357750:
    lhz     r9, 0x0(r6)
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x2(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x4(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x6(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0x8(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0xa(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0xc(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    lhz     r9, 0xe(r6)
    add     r11, r11, r0
    not     r0, r9
    add     r10, r10, r9
    add     r11, r11, r0
    addi    r6, r6, 0x10
    bdnz+      branch_0x80357750
    andi.   r8, r8, 0x7
    beq-    branch_0x803577fc
branch_0x803577e0:
    mtctr   r8
branch_0x803577e4:
    lhz     r9, 0x0(r6)
    addi    r6, r6, 0x2
    not     r0, r9
    add     r10, r10, r9
    add     r11, r11, r0
    bdnz+      branch_0x803577e4
branch_0x803577fc:
    clrlwi  r0, r10, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x8035780c
    li      r10, 0x0
branch_0x8035780c:
    clrlwi  r0, r11, 16
    cmplwi  r0, 0xffff
    bne-    branch_0x8035781c
    li      r11, 0x0
branch_0x8035781c:
    lhz     r6, 0x0(r7)
    clrlwi  r0, r10, 16
    cmplw   r6, r0
    bne-    branch_0x8035783c
    lhz     r6, 0x2(r7)
    clrlwi  r0, r11, 16
    cmplw   r6, r0
    beq-    branch_0x80357850
branch_0x8035783c:
    li      r0, 0x0
    stw     r0, 0x88(r3)
    addi    r30, r5, 0x0
    addi    r31, r31, 0x1
    b       branch_0x803578a8

branch_0x80357850:
    lhz     r8, 0x10(r3)
    addi    r6, r7, 0xa
    li      r10, 0x0
    li      r9, 0x5
    b       branch_0x8035787c

branch_0x80357864:
    lhz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    bne-    branch_0x80357874
    addi    r10, r10, 0x1
branch_0x80357874:
    addi    r6, r6, 0x2
    addi    r9, r9, 0x1
branch_0x8035787c:
    clrlwi  r0, r9, 16
    cmplw   r0, r8
    blt+    branch_0x80357864
    lhz     r0, 0x6(r7)
    clrlwi  r6, r10, 16
    cmplw   r6, r0
    beq-    branch_0x803578a8
    li      r0, 0x0
    stw     r0, 0x88(r3)
    addi    r30, r5, 0x0
    addi    r31, r31, 0x1
branch_0x803578a8:
    addi    r5, r5, 0x1
    cmpwi   r5, 0x2
    addi    r4, r4, 0x4
    blt+    branch_0x80357714
    cmpwi   r31, 0x0
    bne-    branch_0x80357940
    lwz     r4, 0x88(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80357924
    lwz     r5, 0x14(sp)
    lwz     r4, 0x10(sp)
    lha     r5, 0x4(r5)
    lha     r0, 0x4(r4)
    subf.   r0, r5, r0
    bge-    branch_0x803578ec
    li      r30, 0x0
    b       branch_0x803578f0

branch_0x803578ec:
    li      r30, 0x1
branch_0x803578f0:
    slwi    r0, r30, 2
    addi    r6, sp, 0x10
    add     r6, r6, r0
    lwz     r4, 0x0(r6)
    xori     r0, r30, 0x1
    slwi    r0, r0, 2
    stw     r4, 0x88(r3)
    addi    r4, sp, 0x10
    li      r5, 0x2000
    lwz     r3, 0x0(r6)
    lwzx    r4, r4, r0
    bl      memcpy
    b       branch_0x80357940

branch_0x80357924:
    lwz     r0, 0x10(sp)
    cmplw   r4, r0
    bne-    branch_0x80357938
    li      r0, 0x0
    b       branch_0x8035793c

branch_0x80357938:
    li      r0, 0x1
branch_0x8035793c:
    mr      r30, r0
branch_0x80357940:
    cmplwi  r29, 0x0
    beq-    branch_0x8035794c
    stw     r30, 0x0(r29)
branch_0x8035794c:
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDVerify
__CARDVerify: # 0x8035796c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      VerifyID
    cmpwi   r3, 0x0
    bge-    branch_0x80357994
    b       branch_0x803579e0

branch_0x80357994:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      VerifyDir
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      VerifyFAT
    add     r0, r31, r3
    cmpwi   r0, 0x1
    beq-    branch_0x803579d4
    bge-    branch_0x803579dc
    cmpwi   r0, 0x0
    bge-    branch_0x803579cc
    b       branch_0x803579dc

branch_0x803579cc:
    li      r3, 0x0
    b       branch_0x803579e0

branch_0x803579d4:
    li      r3, -0x6
    b       branch_0x803579e0

branch_0x803579dc:
    li      r3, -0x6
branch_0x803579e0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CARDCheckExAsync
CARDCheckExAsync: # 0x803579f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    mr.     r26, r4
    addi    r25, r3, 0x0
    addi    r27, r5, 0x0
    li      r30, 0x0
    li      r29, 0x0
    li      r28, 0x0
    beq-    branch_0x80357a2c
    li      r0, 0x0
    stw     r0, 0x0(r26)
branch_0x80357a2c:
    addi    r3, r25, 0x0
    addi    r4, sp, 0x30
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x80357a44
    b       branch_0x80357f74

branch_0x80357a44:
    lwz     r3, 0x30(sp)
    bl      VerifyID
    mr.     r4, r3
    bge-    branch_0x80357a60
    lwz     r3, 0x30(sp)
    bl      __CARDPutControlBlock
    b       branch_0x80357f74

branch_0x80357a60:
    lwz     r3, 0x30(sp)
    addi    r4, sp, 0x18
    bl      VerifyDir
    mr      r31, r3
    lwz     r3, 0x30(sp)
    addi    r4, sp, 0x1c
    bl      VerifyFAT
    add     r5, r31, r3
    cmpwi   r5, 0x1
    ble-    branch_0x80357a98
    lwz     r3, 0x30(sp)
    li      r4, -0x6
    bl      __CARDPutControlBlock
    b       branch_0x80357f74

branch_0x80357a98:
    lwz     r6, 0x30(sp)
    lwz     r4, 0x80(r6)
    addi    r3, r4, 0x2000
    addi    r0, r4, 0x6000
    stw     r3, 0x28(sp)
    addis   r3, r4, 0x1
    addi    r4, r4, 0x4000
    stw     r0, 0x20(sp)
    subi    r0, r3, 0x8000
    stw     r4, 0x2c(sp)
    stw     r0, 0x24(sp)
    beq-    branch_0x80357ad0
    bge-    branch_0x80357b54
    b       branch_0x80357b54

branch_0x80357ad0:
    addi    r3, r6, 0x84
    lwz     r0, 0x84(r6)
    cmplwi  r0, 0x0
    bne-    branch_0x80357b1c
    lwz     r0, 0x18(sp)
    addi    r4, sp, 0x28
    li      r5, 0x2000
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    stw     r0, 0x0(r3)
    lwz     r3, 0x18(sp)
    xori     r0, r3, 0x1
    slwi    r3, r3, 2
    slwi    r0, r0, 2
    lwzx    r3, r4, r3
    lwzx    r4, r4, r0
    bl      memcpy
    li      r29, 0x1
    b       branch_0x80357b54

branch_0x80357b1c:
    lwz     r0, 0x1c(sp)
    addi    r4, sp, 0x20
    li      r5, 0x2000
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    stw     r0, 0x88(r6)
    lwz     r3, 0x1c(sp)
    xori     r0, r3, 0x1
    slwi    r3, r3, 2
    slwi    r0, r0, 2
    lwzx    r3, r4, r3
    lwzx    r4, r4, r0
    bl      memcpy
    li      r30, 0x1
branch_0x80357b54:
    lwz     r0, 0x1c(sp)
    addi    r3, sp, 0x20
    li      r4, 0x0
    xori     r0, r0, 0x1
    slwi    r0, r0, 2
    lwzx    r31, r3, r0
    li      r5, 0x2000
    addi    r3, r31, 0x0
    bl      memset
    li      r0, 0x7f
    lwz     r5, 0x30(sp)
    mtctr   r0
    li      r6, 0x0
branch_0x80357b88:
    lwz     r0, 0x84(r5)
    add     r7, r0, r6
    lbz     r0, 0x0(r7)
    cmplwi  r0, 0xff
    beq-    branch_0x80357c40
    lhz     r4, 0x36(r7)
    li      r8, 0x0
    b       branch_0x80357bf8

branch_0x80357ba8:
    clrlwi  r3, r4, 16
    cmplwi  r3, 0x5
    blt-    branch_0x80357bdc
    lhz     r0, 0x10(r5)
    cmplw   r3, r0
    bge-    branch_0x80357bdc
    slwi    r4, r3, 1
    lhzx    r3, r31, r4
    addi    r3, r3, 0x1
    clrlwi  r0, r3, 16
    sthx    r3, r31, r4
    cmplwi  r0, 0x1
    ble-    branch_0x80357bec
branch_0x80357bdc:
    lwz     r3, 0x30(sp)
    li      r4, -0x6
    bl      __CARDPutControlBlock
    b       branch_0x80357f74

branch_0x80357bec:
    lwz     r3, 0x88(r5)
    addi    r8, r8, 0x1
    lhzx    r4, r3, r4
branch_0x80357bf8:
    clrlwi  r0, r4, 16
    cmplwi  r0, 0xffff
    beq-    branch_0x80357c14
    lhz     r0, 0x38(r7)
    clrlwi  r3, r8, 16
    cmplw   r3, r0
    blt+    branch_0x80357ba8
branch_0x80357c14:
    lhz     r0, 0x38(r7)
    clrlwi  r3, r8, 16
    cmplw   r3, r0
    bne-    branch_0x80357c30
    clrlwi  r0, r4, 16
    cmplwi  r0, 0xffff
    beq-    branch_0x80357c40
branch_0x80357c30:
    lwz     r3, 0x30(sp)
    li      r4, -0x6
    bl      __CARDPutControlBlock
    b       branch_0x80357f74

branch_0x80357c40:
    addi    r6, r6, 0x40
    bdnz+      branch_0x80357b88
    lwz     r3, 0x30(sp)
    addi    r6, r31, 0xa
    li      r9, 0x0
    li      r8, 0x5
    li      r5, 0xa
    b       branch_0x80357cc4

branch_0x80357c60:
    lwz     r4, 0x88(r3)
    lhz     r0, 0x0(r6)
    add     r4, r4, r5
    cmplwi  r0, 0x0
    lhz     r0, 0x0(r4)
    bne-    branch_0x80357c94
    cmplwi  r0, 0x0
    beq-    branch_0x80357c8c
    li      r0, 0x0
    sth     r0, 0x0(r4)
    li      r28, 0x1
branch_0x80357c8c:
    addi    r9, r9, 0x1
    b       branch_0x80357cb8

branch_0x80357c94:
    cmplwi  r0, 0x5
    blt-    branch_0x80357ca4
    cmplw   r0, r7
    blt-    branch_0x80357cb8
branch_0x80357ca4:
    cmplwi  r0, 0xffff
    beq-    branch_0x80357cb8
    li      r4, -0x6
    bl      __CARDPutControlBlock
    b       branch_0x80357f74

branch_0x80357cb8:
    addi    r5, r5, 0x2
    addi    r6, r6, 0x2
    addi    r8, r8, 0x1
branch_0x80357cc4:
    lhz     r7, 0x10(r3)
    clrlwi  r0, r8, 16
    cmplw   r0, r7
    blt+    branch_0x80357c60
    lwz     r3, 0x88(r3)
    clrlwi  r4, r9, 16
    lhzu    r0, 0x6(r3)
    cmplw   r4, r0
    beq-    branch_0x80357cf0
    sth     r9, 0x0(r3)
    li      r28, 0x1
branch_0x80357cf0:
    cmpwi   r28, 0x0
    beq-    branch_0x80357ebc
    lwz     r3, 0x30(sp)
    li      r4, 0x1ffc
    srawi   r4, r4, 1
    lwz     r6, 0x88(r3)
    li      r0, 0x0
    addze.  r4, r4
    sth     r0, 0x2(r6)
    addi    r7, r6, 0x2
    addi    r5, r6, 0x4
    sth     r0, 0x0(r6)
    addi    r3, r4, 0x0
    ble-    branch_0x80357e94
    srwi.   r0, r3, 3
    mtctr   r0
    beq-    branch_0x80357e64
branch_0x80357d34:
    lhz     r4, 0x0(r6)
    lhz     r0, 0x0(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0x0(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0x2(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0x2(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0x4(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0x4(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0x6(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0x6(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0x8(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0x8(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0xa(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0xa(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0xc(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0xc(r5)
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    lhz     r4, 0x0(r6)
    lhz     r0, 0xe(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0xe(r5)
    addi    r5, r5, 0x10
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    bdnz+      branch_0x80357d34
    andi.   r3, r3, 0x7
    beq-    branch_0x80357e94
branch_0x80357e64:
    mtctr   r3
branch_0x80357e68:
    lhz     r4, 0x0(r6)
    lhz     r0, 0x0(r5)
    add     r0, r4, r0
    sth     r0, 0x0(r6)
    lhz     r0, 0x0(r5)
    addi    r5, r5, 0x2
    lhz     r4, 0x0(r7)
    not     r0, r0
    add     r0, r4, r0
    sth     r0, 0x0(r7)
    bdnz+      branch_0x80357e68
branch_0x80357e94:
    lhz     r0, 0x0(r6)
    cmplwi  r0, 0xffff
    bne-    branch_0x80357ea8
    li      r0, 0x0
    sth     r0, 0x0(r6)
branch_0x80357ea8:
    lhz     r0, 0x0(r7)
    cmplwi  r0, 0xffff
    bne-    branch_0x80357ebc
    li      r0, 0x0
    sth     r0, 0x0(r7)
branch_0x80357ebc:
    lwz     r6, 0x1c(sp)
    addi    r4, sp, 0x20
    li      r5, 0x2000
    xori     r0, r6, 0x1
    slwi    r3, r0, 2
    slwi    r0, r6, 2
    lwzx    r3, r4, r3
    lwzx    r4, r4, r0
    bl      memcpy
    cmpwi   r29, 0x0
    beq-    branch_0x80357f08
    cmplwi  r26, 0x0
    beq-    branch_0x80357ef8
    li      r0, 0x2000
    stw     r0, 0x0(r26)
branch_0x80357ef8:
    addi    r3, r25, 0x0
    addi    r4, r27, 0x0
    bl      __CARDUpdateDir
    b       branch_0x80357f74

branch_0x80357f08:
    or.     r0, r30, r28
    beq-    branch_0x80357f38
    cmplwi  r26, 0x0
    beq-    branch_0x80357f20
    li      r0, 0x2000
    stw     r0, 0x0(r26)
branch_0x80357f20:
    lwz     r4, 0x30(sp)
    addi    r3, r25, 0x0
    addi    r5, r27, 0x0
    lwz     r4, 0x88(r4)
    bl      __CARDUpdateFatBlock
    b       branch_0x80357f74

branch_0x80357f38:
    lwz     r3, 0x30(sp)
    li      r4, 0x0
    bl      __CARDPutControlBlock
    cmplwi  r27, 0x0
    beq-    branch_0x80357f70
    bl      OSDisableInterrupts
    addi    r12, r27, 0x0
    mtlr    r12
    addi    r26, r3, 0x0
    addi    r3, r25, 0x0
    li      r4, 0x0
    blrl
    mr      r3, r26
    bl      OSRestoreInterrupts
branch_0x80357f70:
    li      r3, 0x0
branch_0x80357f74:
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl CARDCheck
CARDCheck: # 0x80357f88
    mflr    r0
    lis     r4, 0x8035
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x4330
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0xc
    bl      CARDCheckExAsync
    cmpwi   r3, 0x0
    blt-    branch_0x80357fc8
    addic.  r0, sp, 0xc
    bne-    branch_0x80357fc0
    b       branch_0x80357fc8

branch_0x80357fc0:
    mr      r3, r31
    bl      __CARDSync
branch_0x80357fc8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

