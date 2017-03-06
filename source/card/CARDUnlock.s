
.globl bitrev
bitrev: # 0x803555c8
    li      r0, 0x8
    mtctr   r0
    srwi    r6, r3, 31
    li      r9, 0x0
    li      r10, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r5, 0x1
branch_0x803555e8:
    cmplwi  r8, 0xf
    ble-    branch_0x80355618
    cmplwi  r8, 0x1f
    bne-    branch_0x80355600
    or      r7, r7, r6
    b       branch_0x80355634

branch_0x80355600:
    slw     r0, r5, r8
    and     r0, r3, r0
    srw     r0, r0, r10
    or      r7, r7, r0
    addi    r10, r10, 0x2
    b       branch_0x80355634

branch_0x80355618:
    slw     r4, r5, r8
    subfic  r0, r8, 0x1f
    subf    r0, r9, r0
    and     r4, r3, r4
    slw     r0, r4, r0
    or      r7, r7, r0
    addi    r9, r9, 0x1
branch_0x80355634:
    addi    r8, r8, 0x1
    cmplwi  r8, 0xf
    ble-    branch_0x80355668
    cmplwi  r8, 0x1f
    bne-    branch_0x80355650
    or      r7, r7, r6
    b       branch_0x80355684

branch_0x80355650:
    slw     r0, r5, r8
    and     r0, r3, r0
    srw     r0, r0, r10
    or      r7, r7, r0
    addi    r10, r10, 0x2
    b       branch_0x80355684

branch_0x80355668:
    slw     r4, r5, r8
    subfic  r0, r8, 0x1f
    subf    r0, r9, r0
    and     r4, r3, r4
    slw     r0, r4, r0
    or      r7, r7, r0
    addi    r9, r9, 0x1
branch_0x80355684:
    addi    r8, r8, 0x1
    cmplwi  r8, 0xf
    ble-    branch_0x803556b8
    cmplwi  r8, 0x1f
    bne-    branch_0x803556a0
    or      r7, r7, r6
    b       branch_0x803556d4

branch_0x803556a0:
    slw     r0, r5, r8
    and     r0, r3, r0
    srw     r0, r0, r10
    or      r7, r7, r0
    addi    r10, r10, 0x2
    b       branch_0x803556d4

branch_0x803556b8:
    slw     r4, r5, r8
    subfic  r0, r8, 0x1f
    subf    r0, r9, r0
    and     r4, r3, r4
    slw     r0, r4, r0
    or      r7, r7, r0
    addi    r9, r9, 0x1
branch_0x803556d4:
    addi    r8, r8, 0x1
    cmplwi  r8, 0xf
    ble-    branch_0x80355708
    cmplwi  r8, 0x1f
    bne-    branch_0x803556f0
    or      r7, r7, r6
    b       branch_0x80355724

branch_0x803556f0:
    slw     r0, r5, r8
    and     r0, r3, r0
    srw     r0, r0, r10
    or      r7, r7, r0
    addi    r10, r10, 0x2
    b       branch_0x80355724

branch_0x80355708:
    slw     r4, r5, r8
    subfic  r0, r8, 0x1f
    subf    r0, r9, r0
    and     r4, r3, r4
    slw     r0, r4, r0
    or      r7, r7, r0
    addi    r9, r9, 0x1
branch_0x80355724:
    addi    r8, r8, 0x1
    bdnz+      branch_0x803555e8
    mr      r3, r7
    blr


.globl ReadArrayUnlock
ReadArrayUnlock: # 0x80355734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x8040
    addi    r0, r3, 0x3460
    mulli   r8, r29, 0x110
    addi    r26, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    addi    r27, r7, 0x0
    addi    r3, r29, 0x0
    add     r28, r0, r8
    li      r4, 0x0
    li      r5, 0x4
    bl      EXISelect
    cmpwi   r3, 0x0
    bne-    branch_0x80355788
    li      r3, -0x3
    b       branch_0x80355864

branch_0x80355788:
    clrrwi  r26, r26, 12
    addi    r3, sp, 0x1c
    li      r4, 0x0
    li      r5, 0x5
    bl      memset
    li      r0, 0x52
    cmpwi   r27, 0x0
    stb     r0, 0x1c(sp)
    bne-    branch_0x803557d0
    extrwi  r0, r26, 2, 1
    stb     r0, 0x1d(sp)
    extrwi  r0, r26, 8, 3
    extrwi  r3, r26, 2, 11
    stb     r0, 0x1e(sp)
    extrwi  r0, r26, 7, 13
    stb     r3, 0x1f(sp)
    stb     r0, 0x20(sp)
    b       branch_0x803557e0

branch_0x803557d0:
    srwi    r0, r26, 24
    stb     r0, 0x1d(sp)
    extrwi  r0, r26, 8, 8
    stb     r0, 0x1e(sp)
branch_0x803557e0:
    addi    r3, r29, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x5
    li      r6, 0x1
    bl      EXIImmEx
    lwz     r4, 0x80(r28)
    cntlzw  r0, r3
    lwz     r5, 0x14(r28)
    addi    r3, r29, 0x0
    srwi    r28, r0, 5
    addi    r4, r4, 0x200
    li      r6, 0x1
    bl      EXIImmEx
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    or      r28, r28, r0
    li      r6, 0x0
    bl      EXIImmEx
    cntlzw  r0, r3
    srwi    r0, r0, 5
    addi    r3, r29, 0x0
    or      r28, r28, r0
    bl      EXIDeselect
    cntlzw  r0, r3
    srwi    r0, r0, 5
    or.     r28, r28, r0
    beq-    branch_0x80355860
    li      r3, -0x3
    b       branch_0x80355864

branch_0x80355860:
    li      r3, 0x0
branch_0x80355864:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl DummyLen
DummyLen: # 0x80355878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    li      r30, 0x1
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    bl      OSGetTick
    stw     r3, -0x7308(r13)
    lis     r3, 0x41c6
    addi    r31, r3, 0x4e6d
    lwz     r0, -0x7308(r13)
    mullw   r3, r0, r31
    addi    r0, r3, 0x3039
    stw     r0, -0x7308(r13)
    lwz     r0, -0x7308(r13)
    extrwi  r3, r0, 5, 11
    addi    r3, r3, 0x1
    b       branch_0x80355904

branch_0x803558c8:
    bl      OSGetTick
    slw     r0, r3, r30
    addi    r30, r30, 0x1
    cmplwi  r30, 0x10
    ble-    branch_0x803558e0
    li      r30, 0x1
branch_0x803558e0:
    stw     r0, -0x7308(r13)
    addi    r29, r29, 0x1
    lwz     r0, -0x7308(r13)
    mullw   r3, r0, r31
    addi    r0, r3, 0x3039
    stw     r0, -0x7308(r13)
    lwz     r0, -0x7308(r13)
    extrwi  r3, r0, 5, 11
    addi    r3, r3, 0x1
branch_0x80355904:
    cmpwi   r3, 0x4
    bge-    branch_0x80355914
    cmplwi  r29, 0xa
    blt+    branch_0x803558c8
branch_0x80355914:
    cmpwi   r3, 0x4
    bge-    branch_0x80355920
    li      r3, 0x4
branch_0x80355920:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __CARDUnlock
__CARDUnlock: # 0x8035593c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stmw    r22, 0xf8(sp)
    addi    r24, r3, 0x0
    lis     r3, 0x8040
    mulli   r5, r24, 0x110
    addi    r0, r3, 0x3460
    add     r31, r0, r5
    addi    r23, r4, 0x0
    addi    r30, r31, 0x30
    lwz     r3, 0x80(r31)
    addi    r0, r3, 0x2f
    clrrwi  r28, r0, 5
    addi    r29, r3, 0x0
    addi    r22, r28, 0x20
    bl      OSGetTick
    stw     r3, -0x7308(r13)
    lis     r3, 0x41c6
    lis     r5, 0x7fed
    lwz     r4, -0x7308(r13)
    addi    r0, r3, 0x4e6d
    subi    r25, r5, 0x8000
    mullw   r3, r4, r0
    addi    r0, r3, 0x3039
    stw     r0, -0x7308(r13)
    lwz     r0, -0x7308(r13)
    extrwi  r0, r0, 15, 1
    or      r25, r25, r0
    clrrwi  r25, r25, 12
    bl      DummyLen
    addi    r26, r3, 0x0
    addi    r6, r26, 0x0
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, sp, 0xa4
    li      r7, 0x0
    bl      ReadArrayUnlock
    cmpwi   r3, 0x0
    bge-    branch_0x803559e4
    li      r3, -0x3
    b       branch_0x80356480

branch_0x803559e4:
    slwi    r3, r26, 3
    addi    r4, r3, 0x1
    cmplwi  r4, 0x0
    li      r3, 0x0
    ble-    branch_0x80355b5c
    cmplwi  r4, 0x8
    subi    r5, r4, 0x8
    ble-    branch_0x80355b24
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmplwi  r5, 0x0
    mtctr   r0
    ble-    branch_0x80355b24
branch_0x80355a18:
    srwi    r0, r25, 7
    srwi    r5, r25, 15
    xor     r0, r25, r0
    xor     r0, r5, r0
    srwi    r6, r25, 23
    eqv     r0, r6, r0
    srwi    r5, r25, 1
    clrlslwi  r0, r0, 31, 30
    or      r7, r5, r0
    srwi    r0, r7, 7
    srwi    r5, r7, 15
    xor     r0, r7, r0
    srwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r8, r0, 31, 30
    rlwimi  r8, r7, 31, 2, 31
    srwi    r0, r8, 7
    srwi    r5, r8, 15
    xor     r0, r8, r0
    srwi    r6, r8, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r7, r0, 31, 30
    rlwimi  r7, r8, 31, 2, 31
    srwi    r0, r7, 7
    srwi    r5, r7, 15
    xor     r0, r7, r0
    srwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r8, r0, 31, 30
    rlwimi  r8, r7, 31, 2, 31
    srwi    r0, r8, 7
    srwi    r5, r8, 15
    xor     r0, r8, r0
    srwi    r6, r8, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r7, r0, 31, 30
    rlwimi  r7, r8, 31, 2, 31
    srwi    r0, r7, 7
    srwi    r5, r7, 15
    xor     r0, r7, r0
    srwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r8, r0, 31, 30
    rlwimi  r8, r7, 31, 2, 31
    srwi    r0, r8, 7
    srwi    r5, r8, 15
    xor     r0, r8, r0
    srwi    r6, r8, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r7, r0, 31, 30
    rlwimi  r7, r8, 31, 2, 31
    srwi    r0, r7, 7
    srwi    r5, r7, 15
    xor     r0, r7, r0
    srwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    clrlslwi  r25, r0, 31, 30
    rlwimi  r25, r7, 31, 2, 31
    addi    r3, r3, 0x8
    bdnz+      branch_0x80355a18
branch_0x80355b24:
    subf    r0, r3, r4
    cmplw   r3, r4
    mtctr   r0
    bge-    branch_0x80355b5c
branch_0x80355b34:
    srwi    r0, r25, 7
    srwi    r3, r25, 15
    xor     r0, r25, r0
    srwi    r4, r25, 23
    xor     r0, r3, r0
    eqv     r0, r4, r0
    srwi    r3, r25, 1
    clrlslwi  r0, r0, 31, 30
    or      r25, r3, r0
    bdnz+      branch_0x80355b34
branch_0x80355b5c:
    srwi    r0, r25, 7
    srwi    r3, r25, 15
    xor     r0, r25, r0
    srwi    r4, r25, 23
    xor     r0, r3, r0
    eqv     r0, r4, r0
    slwi    r0, r0, 31
    or      r0, r25, r0
    stw     r0, 0x2c(r31)
    lwz     r3, 0x2c(r31)
    bl      bitrev
    stw     r3, 0x2c(r31)
    bl      DummyLen
    addi    r27, r3, 0x0
    addi    r6, r27, 0x14
    addi    r3, r24, 0x0
    addi    r5, sp, 0xa4
    li      r4, 0x0
    li      r7, 0x1
    bl      ReadArrayUnlock
    cmpwi   r3, 0x0
    bge-    branch_0x80355bbc
    li      r3, -0x3
    b       branch_0x80356480

branch_0x80355bbc:
    li      r3, 0x4
    lwz     r7, 0x2c(r31)
    lwz     r25, 0xa4(sp)
    mtctr   r3
    lwz     r26, 0xa8(sp)
    lwz     r24, 0xac(sp)
    xor     r25, r25, r7
    lwz     r0, 0xb0(sp)
    lwz     r5, 0xb4(sp)
branch_0x80355be0:
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    xor     r3, r4, r3
    slwi    r6, r7, 23
    eqv     r3, r6, r3
    slwi    r4, r7, 1
    rlwinm  r3, r3, 2, 30, 30
    or      r7, r4, r3
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r9, r3, 2, 30, 30
    rlwimi  r9, r7, 1, 0, 29
    slwi    r3, r9, 7
    slwi    r4, r9, 15
    xor     r3, r9, r3
    slwi    r6, r9, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    bdnz+      branch_0x80355be0
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    srwi    r3, r3, 31
    or      r3, r7, r3
    stw     r3, 0x2c(r31)
    li      r3, 0x4
    mtctr   r3
    lwz     r7, 0x2c(r31)
    xor     r26, r26, r7
branch_0x80355d1c:
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    xor     r3, r4, r3
    slwi    r6, r7, 23
    eqv     r3, r6, r3
    slwi    r4, r7, 1
    rlwinm  r3, r3, 2, 30, 30
    or      r7, r4, r3
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r9, r3, 2, 30, 30
    rlwimi  r9, r7, 1, 0, 29
    slwi    r3, r9, 7
    slwi    r4, r9, 15
    xor     r3, r9, r3
    slwi    r6, r9, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    bdnz+      branch_0x80355d1c
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    srwi    r3, r3, 31
    or      r3, r7, r3
    stw     r3, 0x2c(r31)
    li      r3, 0x4
    mtctr   r3
    lwz     r7, 0x2c(r31)
    xor     r24, r24, r7
branch_0x80355e58:
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    xor     r3, r4, r3
    slwi    r6, r7, 23
    eqv     r3, r6, r3
    slwi    r4, r7, 1
    rlwinm  r3, r3, 2, 30, 30
    or      r7, r4, r3
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r9, r3, 2, 30, 30
    rlwimi  r9, r7, 1, 0, 29
    slwi    r3, r9, 7
    slwi    r4, r9, 15
    xor     r3, r9, r3
    slwi    r6, r9, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    bdnz+      branch_0x80355e58
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    srwi    r3, r3, 31
    or      r3, r7, r3
    stw     r3, 0x2c(r31)
    li      r3, 0x4
    mtctr   r3
    lwz     r7, 0x2c(r31)
    xor     r0, r0, r7
branch_0x80355f94:
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    xor     r3, r4, r3
    slwi    r6, r7, 23
    eqv     r3, r6, r3
    slwi    r4, r7, 1
    rlwinm  r3, r3, 2, 30, 30
    or      r7, r4, r3
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r9, r3, 2, 30, 30
    rlwimi  r9, r7, 1, 0, 29
    slwi    r3, r9, 7
    slwi    r4, r9, 15
    xor     r3, r9, r3
    slwi    r6, r9, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    slwi    r6, r7, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r8, r3, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r3, r8, 7
    slwi    r4, r8, 15
    xor     r3, r8, r3
    slwi    r6, r8, 23
    xor     r3, r4, r3
    eqv     r3, r6, r3
    rlwinm  r7, r3, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    bdnz+      branch_0x80355f94
    slwi    r3, r7, 7
    slwi    r4, r7, 15
    xor     r3, r7, r3
    xor     r3, r4, r3
    slwi    r6, r7, 23
    eqv     r3, r6, r3
    srwi    r3, r3, 31
    or      r3, r7, r3
    stw     r3, 0x2c(r31)
    slwi    r4, r27, 3
    cmplwi  r4, 0x0
    lwz     r6, 0x2c(r31)
    li      r3, 0x0
    xor     r5, r5, r6
    ble-    branch_0x8035623c
    cmplwi  r4, 0x8
    subi    r8, r4, 0x8
    ble-    branch_0x80356204
    addi    r7, r8, 0x7
    srwi    r7, r7, 3
    cmplwi  r8, 0x0
    mtctr   r7
    ble-    branch_0x80356204
branch_0x803560f8:
    slwi    r7, r6, 7
    slwi    r8, r6, 15
    xor     r7, r6, r7
    xor     r7, r8, r7
    slwi    r9, r6, 23
    eqv     r7, r9, r7
    slwi    r8, r6, 1
    rlwinm  r6, r7, 2, 30, 30
    or      r9, r8, r6
    slwi    r6, r9, 7
    slwi    r7, r9, 15
    xor     r6, r9, r6
    slwi    r8, r9, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r10, r6, 2, 30, 30
    rlwimi  r10, r9, 1, 0, 29
    slwi    r6, r10, 7
    slwi    r7, r10, 15
    xor     r6, r10, r6
    slwi    r8, r10, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r9, r6, 2, 30, 30
    rlwimi  r9, r10, 1, 0, 29
    slwi    r6, r9, 7
    slwi    r7, r9, 15
    xor     r6, r9, r6
    slwi    r8, r9, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r10, r6, 2, 30, 30
    rlwimi  r10, r9, 1, 0, 29
    slwi    r6, r10, 7
    slwi    r7, r10, 15
    xor     r6, r10, r6
    slwi    r8, r10, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r9, r6, 2, 30, 30
    rlwimi  r9, r10, 1, 0, 29
    slwi    r6, r9, 7
    slwi    r7, r9, 15
    xor     r6, r9, r6
    slwi    r8, r9, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r10, r6, 2, 30, 30
    rlwimi  r10, r9, 1, 0, 29
    slwi    r6, r10, 7
    slwi    r7, r10, 15
    xor     r6, r10, r6
    slwi    r8, r10, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r9, r6, 2, 30, 30
    rlwimi  r9, r10, 1, 0, 29
    slwi    r6, r9, 7
    slwi    r7, r9, 15
    xor     r6, r9, r6
    slwi    r8, r9, 23
    xor     r6, r7, r6
    eqv     r6, r8, r6
    rlwinm  r6, r6, 2, 30, 30
    rlwimi  r6, r9, 1, 0, 29
    addi    r3, r3, 0x8
    bdnz+      branch_0x803560f8
branch_0x80356204:
    subf    r7, r3, r4
    cmplw   r3, r4
    mtctr   r7
    bge-    branch_0x8035623c
branch_0x80356214:
    slwi    r3, r6, 7
    slwi    r4, r6, 15
    xor     r3, r6, r3
    slwi    r7, r6, 23
    xor     r3, r4, r3
    eqv     r3, r7, r3
    slwi    r4, r6, 1
    rlwinm  r3, r3, 2, 30, 30
    or      r6, r4, r3
    bdnz+      branch_0x80356214
branch_0x8035623c:
    slwi    r3, r6, 7
    slwi    r4, r6, 15
    xor     r3, r6, r3
    slwi    r7, r6, 23
    xor     r3, r4, r3
    eqv     r3, r7, r3
    srwi    r3, r3, 31
    or      r3, r6, r3
    stw     r3, 0x2c(r31)
    li      r3, 0x4
    mtctr   r3
    li      r3, 0x0
    lwz     r4, 0x2c(r31)
branch_0x80356270:
    slwi    r6, r4, 7
    slwi    r7, r4, 15
    xor     r6, r4, r6
    xor     r6, r7, r6
    slwi    r8, r4, 23
    eqv     r6, r8, r6
    slwi    r7, r4, 1
    rlwinm  r4, r6, 2, 30, 30
    or      r8, r7, r4
    slwi    r4, r8, 7
    slwi    r6, r8, 15
    xor     r4, r8, r4
    slwi    r7, r8, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r9, r4, 2, 30, 30
    rlwimi  r9, r8, 1, 0, 29
    slwi    r4, r9, 7
    slwi    r6, r9, 15
    xor     r4, r9, r4
    slwi    r7, r9, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r8, r4, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r4, r8, 7
    slwi    r6, r8, 15
    xor     r4, r8, r4
    slwi    r7, r8, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r9, r4, 2, 30, 30
    rlwimi  r9, r8, 1, 0, 29
    slwi    r4, r9, 7
    slwi    r6, r9, 15
    xor     r4, r9, r4
    slwi    r7, r9, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r8, r4, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r4, r8, 7
    slwi    r6, r8, 15
    xor     r4, r8, r4
    slwi    r7, r8, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r9, r4, 2, 30, 30
    rlwimi  r9, r8, 1, 0, 29
    slwi    r4, r9, 7
    slwi    r6, r9, 15
    xor     r4, r9, r4
    slwi    r7, r9, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r8, r4, 2, 30, 30
    rlwimi  r8, r9, 1, 0, 29
    slwi    r4, r8, 7
    slwi    r6, r8, 15
    xor     r4, r8, r4
    slwi    r7, r8, 23
    xor     r4, r6, r4
    eqv     r4, r7, r4
    rlwinm  r4, r4, 2, 30, 30
    rlwimi  r4, r8, 1, 0, 29
    addi    r3, r3, 0x8
    bdnz+      branch_0x80356270
    subfic  r6, r3, 0x21
    cmplwi  r3, 0x21
    mtctr   r6
    bge-    branch_0x803563b4
branch_0x8035638c:
    slwi    r3, r4, 7
    slwi    r6, r4, 15
    xor     r3, r4, r3
    slwi    r7, r4, 23
    xor     r3, r6, r3
    eqv     r3, r7, r3
    slwi    r4, r4, 1
    rlwinm  r3, r3, 2, 30, 30
    or      r4, r4, r3
    bdnz+      branch_0x8035638c
branch_0x803563b4:
    slwi    r3, r4, 7
    slwi    r6, r4, 15
    xor     r3, r4, r3
    slwi    r7, r4, 23
    xor     r3, r6, r3
    eqv     r3, r7, r3
    srwi    r3, r3, 31
    or      r3, r4, r3
    stw     r3, 0x2c(r31)
    li      r6, 0x8
    li      r27, 0x0
    stw     r0, 0x0(r28)
    addi    r3, r28, 0x0
    li      r4, 0x8
    stw     r5, 0x4(r28)
    stw     r28, 0x0(r29)
    stw     r6, 0x4(r29)
    stw     r22, 0xc(r29)
    stw     r27, 0x8(r29)
    bl      DCFlushRange
    addi    r3, r22, 0x0
    li      r4, 0x4
    bl      DCInvalidateRange
    addi    r3, r29, 0x0
    li      r4, 0x10
    bl      DCFlushRange
    li      r0, 0xff
    lis     r3, 0x803f
    stw     r0, 0x4(r30)
    subi    r3, r3, 0x73e0
    addis   r0, r3, 0x8000
    stw     r0, 0xc(r30)
    li      r0, 0x160
    lis     r4, 0x8035
    stw     r0, 0x10(r30)
    lis     r3, 0x8035
    li      r5, 0x10
    stw     r27, 0x14(r30)
    addi    r4, r4, 0x6494
    addi    r0, r3, 0x6504
    sth     r5, 0x24(r30)
    mr      r3, r30
    stw     r4, 0x28(r30)
    stw     r27, 0x2c(r30)
    stw     r0, 0x30(r30)
    stw     r27, 0x34(r30)
    bl      DSPAddTask
    stw     r25, 0x0(r23)
    li      r3, 0x0
    stw     r26, 0x4(r23)
    stw     r24, 0x8(r23)
branch_0x80356480:
    lmw     r22, 0xf8(sp)
    lwz     r0, 0x124(sp)
    addi    sp, sp, 0x120
    mtlr    r0
    blr


.globl InitCallback
InitCallback: # 0x80356494
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3460
    addi    r0, r4, 0x30
    stwu    sp, -0x18(sp)
    cmplw   r0, r3
    stw     r31, 0x14(sp)
    beq-    branch_0x803564c4
    addi    r0, r4, 0x140
    cmplw   r0, r3
    addi    r4, r4, 0x110
branch_0x803564c4:
    lwz     r31, 0x80(r4)
    lis     r3, 0xff00
    bl      DSPSendMailToDSP
branch_0x803564d0:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803564d0
    mr      r3, r31
    bl      DSPSendMailToDSP
branch_0x803564e4:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803564e4
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl DoneCallback
DoneCallback: # 0x80356504
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3460
    addi    r0, r4, 0x30
    stwu    sp, -0x88(sp)
    cmplw   r0, r3
    stw     r31, 0x84(sp)
    li      r31, 0x0
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x78(sp)
    beq-    branch_0x80356558
    addi    r0, r4, 0x140
    cmplw   r0, r3
    addi    r4, r4, 0x110
    addi    r29, r4, 0x0
    li      r31, 0x1
    beq-    branch_0x80356558
    li      r31, 0x2
branch_0x80356558:
    lwz     r3, 0x80(r29)
    addi    r0, r3, 0x2f
    clrrwi  r3, r0, 5
    lwz     r30, 0x20(r3)
    bl      DummyLen
    lwz     r0, 0x2c(r29)
    addi    r28, r3, 0x0
    addi    r6, r28, 0x0
    xor     r0, r30, r0
    clrrwi  r4, r0, 16
    addi    r3, r31, 0x0
    addi    r5, sp, 0x34
    li      r7, 0x1
    bl      ReadArrayUnlock
    cmpwi   r3, 0x0
    bge-    branch_0x803565b0
    mr      r3, r31
    bl      EXIUnlock
    addi    r3, r31, 0x0
    li      r4, -0x3
    bl      __CARDMountCallback
    b       branch_0x80356808

branch_0x803565b0:
    lwz     r4, 0x14(r29)
    li      r3, 0x0
    lwz     r0, 0x2c(r29)
    add     r4, r28, r4
    addi    r4, r4, 0x4
    slwi    r4, r4, 3
    addi    r4, r4, 0x1
    cmplwi  r4, 0x0
    ble-    branch_0x80356738
    cmplwi  r4, 0x8
    subi    r6, r4, 0x8
    ble-    branch_0x80356700
    addi    r5, r6, 0x7
    srwi    r5, r5, 3
    cmplwi  r6, 0x0
    mtctr   r5
    ble-    branch_0x80356700
branch_0x803565f4:
    slwi    r5, r0, 7
    slwi    r6, r0, 15
    xor     r5, r0, r5
    xor     r5, r6, r5
    slwi    r7, r0, 23
    eqv     r5, r7, r5
    slwi    r6, r0, 1
    rlwinm  r0, r5, 2, 30, 30
    or      r7, r6, r0
    slwi    r0, r7, 7
    slwi    r5, r7, 15
    xor     r0, r7, r0
    slwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r8, r0, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r0, r8, 7
    slwi    r5, r8, 15
    xor     r0, r8, r0
    slwi    r6, r8, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r7, r0, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r0, r7, 7
    slwi    r5, r7, 15
    xor     r0, r7, r0
    slwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r8, r0, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r0, r8, 7
    slwi    r5, r8, 15
    xor     r0, r8, r0
    slwi    r6, r8, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r7, r0, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r0, r7, 7
    slwi    r5, r7, 15
    xor     r0, r7, r0
    slwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r8, r0, 2, 30, 30
    rlwimi  r8, r7, 1, 0, 29
    slwi    r0, r8, 7
    slwi    r5, r8, 15
    xor     r0, r8, r0
    slwi    r6, r8, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r7, r0, 2, 30, 30
    rlwimi  r7, r8, 1, 0, 29
    slwi    r0, r7, 7
    slwi    r5, r7, 15
    xor     r0, r7, r0
    slwi    r6, r7, 23
    xor     r0, r5, r0
    eqv     r0, r6, r0
    rlwinm  r0, r0, 2, 30, 30
    rlwimi  r0, r7, 1, 0, 29
    addi    r3, r3, 0x8
    bdnz+      branch_0x803565f4
branch_0x80356700:
    subf    r5, r3, r4
    cmplw   r3, r4
    mtctr   r5
    bge-    branch_0x80356738
branch_0x80356710:
    slwi    r3, r0, 7
    slwi    r4, r0, 15
    xor     r3, r0, r3
    slwi    r5, r0, 23
    xor     r3, r4, r3
    eqv     r3, r5, r3
    slwi    r4, r0, 1
    rlwinm  r0, r3, 2, 30, 30
    or      r0, r4, r0
    bdnz+      branch_0x80356710
branch_0x80356738:
    slwi    r3, r0, 7
    slwi    r4, r0, 15
    xor     r3, r0, r3
    slwi    r5, r0, 23
    xor     r3, r4, r3
    eqv     r3, r5, r3
    srwi    r3, r3, 31
    or      r0, r0, r3
    stw     r0, 0x2c(r29)
    bl      DummyLen
    lwz     r0, 0x2c(r29)
    slwi    r4, r30, 16
    addi    r6, r3, 0x0
    xor     r0, r4, r0
    clrrwi  r4, r0, 16
    addi    r3, r31, 0x0
    addi    r5, sp, 0x34
    li      r7, 0x1
    bl      ReadArrayUnlock
    cmpwi   r3, 0x0
    bge-    branch_0x803567a4
    mr      r3, r31
    bl      EXIUnlock
    addi    r3, r31, 0x0
    li      r4, -0x3
    bl      __CARDMountCallback
    b       branch_0x80356808

branch_0x803567a4:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x30
    bl      __CARDReadStatus
    addi    r28, r3, 0x0
    addi    r3, r31, 0x0
    bl      EXIProbe
    cmpwi   r3, 0x0
    bne-    branch_0x803567dc
    mr      r3, r31
    bl      EXIUnlock
    addi    r3, r31, 0x0
    li      r4, -0x3
    bl      __CARDMountCallback
    b       branch_0x80356808

branch_0x803567dc:
    cmpwi   r28, 0x0
    bne-    branch_0x803567fc
    lbz     r0, 0x30(sp)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x803567fc
    mr      r3, r31
    bl      EXIUnlock
    li      r28, -0x5
branch_0x803567fc:
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      __CARDMountCallback
branch_0x80356808:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr

