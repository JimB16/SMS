
.globl ClampStick
ClampStick: # 0x80350754
    lbz     r0, 0x0(r3)
    lbz     r12, 0x0(r4)
    extsb.  r0, r0
    extsb   r12, r12
    mr      r11, r0
    blt-    branch_0x80350774
    li      r0, 0x1
    b       branch_0x8035077c

branch_0x80350774:
    li      r0, -0x1
    neg     r11, r11
branch_0x8035077c:
    cmpwi   r12, 0x0
    blt-    branch_0x8035078c
    li      r8, 0x1
    b       branch_0x80350794

branch_0x8035078c:
    li      r8, -0x1
    neg     r12, r12
branch_0x80350794:
    extsb   r7, r7
    cmpw    r11, r7
    bgt-    branch_0x803507a8
    li      r11, 0x0
    b       branch_0x803507ac

branch_0x803507a8:
    subf    r11, r7, r11
branch_0x803507ac:
    cmpw    r12, r7
    bgt-    branch_0x803507bc
    li      r12, 0x0
    b       branch_0x803507c0

branch_0x803507bc:
    subf    r12, r7, r12
branch_0x803507c0:
    cmpwi   r11, 0x0
    bne-    branch_0x803507e0
    cmpwi   r12, 0x0
    bne-    branch_0x803507e0
    li      r0, 0x0
    stb     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    blr

branch_0x803507e0:
    extsb   r6, r6
    mullw   r9, r6, r12
    mullw   r7, r6, r11
    cmpw    r9, r7
    bgt-    branch_0x80350834
    extsb   r9, r5
    subf    r5, r6, r9
    mullw   r5, r12, r5
    mullw   r9, r6, r9
    add     r7, r7, r5
    cmpw    r9, r7
    bge-    branch_0x80350870
    mullw   r6, r11, r9
    mullw   r5, r12, r9
    divw    r6, r6, r7
    divw    r5, r5, r7
    extsb   r6, r6
    extsb   r5, r5
    addi    r11, r6, 0x0
    addi    r12, r5, 0x0
    b       branch_0x80350870

branch_0x80350834:
    extsb   r7, r5
    subf    r5, r6, r7
    mullw   r5, r11, r5
    mullw   r10, r6, r7
    add     r7, r9, r5
    cmpw    r10, r7
    bge-    branch_0x80350870
    mullw   r6, r11, r10
    mullw   r5, r12, r10
    divw    r6, r6, r7
    divw    r5, r5, r7
    extsb   r6, r6
    extsb   r5, r5
    addi    r11, r6, 0x0
    addi    r12, r5, 0x0
branch_0x80350870:
    mullw   r5, r0, r11
    mullw   r0, r8, r12
    stb     r5, 0x0(r3)
    stb     r0, 0x0(r4)
    blr


.globl PADClamp
PADClamp: # 0x80350884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
branch_0x803508a4:
    lbz     r0, 0xa(r30)
    extsb.  r0, r0
    bne-    branch_0x80350960
    addi    r29, r13, R13Off_m0x7330
    lbz     r5, 0x3(r29)
    addi    r3, r30, 0x2
    lbz     r6, 0x4(r29)
    addi    r4, r30, 0x3
    lbz     r7, 0x2(r29)
    bl      ClampStick
    lbz     r5, 0x6(r29)
    addi    r3, r30, 0x4
    lbz     r6, 0x7(r29)
    addi    r4, r30, 0x5
    lbz     r7, 0x5(r29)
    bl      ClampStick
    lbz     r3, 0x6(r30)
    lbz     r0, R13Off_m0x7330(r13)
    cmplw   r3, r0
    bgt-    branch_0x80350900
    li      r0, 0x0
    stb     r0, 0x6(r30)
    b       branch_0x80350920

branch_0x80350900:
    lbz     r0, 0x1(r29)
    cmplw   r0, r3
    bge-    branch_0x80350910
    stb     r0, 0x6(r30)
branch_0x80350910:
    lbz     r3, R13Off_m0x7330(r13)
    lbz     r0, 0x6(r30)
    subf    r0, r3, r0
    stb     r0, 0x6(r30)
branch_0x80350920:
    lbz     r4, 0x7(r30)
    lbz     r0, R13Off_m0x7330(r13)
    cmplw   r4, r0
    bgt-    branch_0x8035093c
    li      r0, 0x0
    stb     r0, 0x7(r30)
    b       branch_0x80350960

branch_0x8035093c:
    addi    r3, r13, R13Off_m0x7330
    lbz     r0, 0x1(r3)
    cmplw   r0, r4
    bge-    branch_0x80350950
    stb     r0, 0x7(r30)
branch_0x80350950:
    lbz     r3, R13Off_m0x7330(r13)
    lbz     r0, 0x7(r30)
    subf    r0, r3, r0
    stb     r0, 0x7(r30)
branch_0x80350960:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x4
    addi    r30, r30, 0xc
    blt+    branch_0x803508a4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

