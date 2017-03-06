
.globl GDSetTevOp
GDSetTevOp: # 0x80367584
    mflr    r0
    li      r6, 0xa
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    li      r29, 0x5
    stw     r28, 0x20(sp)
    mr.     r28, r3
    beq-    branch_0x803675b8
    li      r6, 0x0
    li      r29, 0x0
branch_0x803675b8:
    cmpwi   r4, 0x2
    beq-    branch_0x803676b8
    bge-    branch_0x803675d4
    cmpwi   r4, 0x0
    beq-    branch_0x803675e4
    bge-    branch_0x8036764c
    b       branch_0x803677f8

branch_0x803675d4:
    cmpwi   r4, 0x4
    beq-    branch_0x80367790
    bge-    branch_0x803677f8
    b       branch_0x80367724

branch_0x803675e4:
    li      r31, 0x1
    stw     r31, 0x8(sp)
    li      r30, 0x0
    addi    r3, r28, 0x0
    stw     r30, 0xc(sp)
    li      r4, 0xf
    li      r5, 0x8
    li      r7, 0xf
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevColorCalc
    stw     r31, 0x8(sp)
    addi    r3, r28, 0x0
    addi    r6, r29, 0x0
    stw     r30, 0xc(sp)
    li      r4, 0x7
    li      r5, 0x4
    stw     r30, 0x10(sp)
    li      r7, 0x7
    li      r8, 0x0
    stw     r30, 0x14(sp)
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevAlphaCalcAndSwap
    b       branch_0x803677f8

branch_0x8036764c:
    li      r31, 0x1
    stw     r31, 0x8(sp)
    li      r30, 0x0
    addi    r3, r28, 0x0
    stw     r30, 0xc(sp)
    addi    r4, r6, 0x0
    li      r5, 0x8
    li      r6, 0x9
    li      r7, 0xf
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevColorCalc
    stw     r31, 0x8(sp)
    addi    r3, r28, 0x0
    addi    r7, r29, 0x0
    stw     r30, 0xc(sp)
    li      r4, 0x7
    li      r5, 0x7
    stw     r30, 0x10(sp)
    li      r6, 0x7
    li      r8, 0x0
    stw     r30, 0x14(sp)
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevAlphaCalcAndSwap
    b       branch_0x803677f8

branch_0x803676b8:
    li      r31, 0x1
    stw     r31, 0x8(sp)
    li      r30, 0x0
    addi    r3, r28, 0x0
    stw     r30, 0xc(sp)
    addi    r4, r6, 0x0
    li      r5, 0xc
    li      r6, 0x8
    li      r7, 0xf
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevColorCalc
    stw     r31, 0x8(sp)
    addi    r3, r28, 0x0
    addi    r6, r29, 0x0
    stw     r30, 0xc(sp)
    li      r4, 0x7
    li      r5, 0x4
    stw     r30, 0x10(sp)
    li      r7, 0x7
    li      r8, 0x0
    stw     r30, 0x14(sp)
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevAlphaCalcAndSwap
    b       branch_0x803677f8

branch_0x80367724:
    li      r31, 0x1
    stw     r31, 0x8(sp)
    li      r30, 0x0
    addi    r3, r28, 0x0
    stw     r30, 0xc(sp)
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevColorCalc
    stw     r31, 0x8(sp)
    addi    r3, r28, 0x0
    li      r4, 0x7
    stw     r30, 0xc(sp)
    li      r5, 0x7
    li      r6, 0x7
    stw     r30, 0x10(sp)
    li      r7, 0x4
    li      r8, 0x0
    stw     r30, 0x14(sp)
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevAlphaCalcAndSwap
    b       branch_0x803677f8

branch_0x80367790:
    li      r30, 0x1
    stw     r30, 0x8(sp)
    li      r31, 0x0
    addi    r3, r28, 0x0
    stw     r31, 0xc(sp)
    addi    r7, r6, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevColorCalc
    stw     r30, 0x8(sp)
    addi    r3, r28, 0x0
    addi    r7, r29, 0x0
    stw     r31, 0xc(sp)
    li      r4, 0x7
    li      r5, 0x7
    stw     r31, 0x10(sp)
    li      r6, 0x7
    li      r8, 0x0
    stw     r31, 0x14(sp)
    li      r9, 0x0
    li      r10, 0x0
    bl      GDSetTevAlphaCalcAndSwap
branch_0x803677f8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl GDSetTevColorCalc
GDSetTevColorCalc: # 0x80367818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r22, 0x28(sp)
    mr      r27, r8
    cmpwi   r27, 0x1
    lbz     r30, 0x5b(sp)
    lwz     r31, 0x5c(sp)
    addi    r22, r3, 0x0
    addi    r23, r4, 0x0
    addi    r24, r5, 0x0
    addi    r25, r6, 0x0
    addi    r26, r7, 0x0
    addi    r28, r9, 0x0
    addi    r29, r10, 0x0
    bgt-    branch_0x80367958
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80367874
    bl      GDOverflowed
branch_0x80367874:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803678a8
    bl      GDOverflowed
branch_0x803678a8:
    lwz     r4, -0x5778(r13)
    slwi    r0, r25, 4
    slwi    r5, r24, 8
    lwz     r3, 0x8(r4)
    or      r0, r26, r0
    or      r6, r5, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r7, r23, 12
    or      r0, r7, r6
    slwi    r8, r28, 16
    slwi    r5, r22, 1
    clrlslwi  r4, r27, 31, 18
    or      r0, r8, r0
    or      r0, r4, r0
    slwi    r6, r30, 19
    or      r0, r6, r0
    slwi    r4, r29, 20
    addi    r5, r5, 0xc0
    slwi    r6, r31, 22
    or      r0, r4, r0
    or      r4, r6, r0
    slwi    r0, r5, 24
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    b       branch_0x80367a50

branch_0x80367958:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80367974
    bl      GDOverflowed
branch_0x80367974:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803679a8
    bl      GDOverflowed
branch_0x803679a8:
    lwz     r4, -0x5778(r13)
    slwi    r0, r25, 4
    slwi    r5, r24, 8
    or      r0, r26, r0
    lwz     r3, 0x8(r4)
    or      r0, r5, r0
    slwi    r6, r23, 12
    or      r6, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    oris    r0, r6, 0x3
    clrlslwi  r7, r27, 31, 18
    slwi    r5, r22, 1
    slwi    r4, r30, 19
    or      r0, r7, r0
    or      r0, r4, r0
    rlwinm  r6, r27, 19, 10, 11
    addi    r5, r5, 0xc0
    slwi    r4, r31, 22
    or      r0, r6, r0
    or      r4, r4, r0
    slwi    r0, r5, 24
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
branch_0x80367a50:
    lmw     r22, 0x28(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl GDSetTevAlphaCalcAndSwap
GDSetTevAlphaCalcAndSwap: # 0x80367a64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r20, 0x28(sp)
    mr      r25, r8
    cmpwi   r25, 0x1
    lbz     r28, 0x63(sp)
    lwz     r29, 0x64(sp)
    lwz     r30, 0x68(sp)
    mr      r20, r3
    lwz     r31, 0x6c(sp)
    addi    r21, r4, 0x0
    addi    r22, r5, 0x0
    addi    r23, r6, 0x0
    addi    r24, r7, 0x0
    addi    r26, r9, 0x0
    addi    r27, r10, 0x0
    bgt-    branch_0x80367bbc
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80367ac8
    bl      GDOverflowed
branch_0x80367ac8:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367afc
    bl      GDOverflowed
branch_0x80367afc:
    lwz     r4, -0x5778(r13)
    slwi    r0, r31, 2
    slwi    r5, r24, 4
    or      r0, r30, r0
    lwz     r3, 0x8(r4)
    or      r0, r5, r0
    slwi    r6, r23, 7
    or      r6, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r7, r22, 10
    or      r0, r7, r6
    slwi    r8, r21, 13
    slwi    r5, r20, 1
    slwi    r4, r26, 16
    or      r0, r8, r0
    or      r0, r4, r0
    clrlslwi  r6, r25, 31, 18
    or      r0, r6, r0
    slwi    r4, r28, 19
    or      r0, r4, r0
    slwi    r6, r27, 20
    addi    r5, r5, 0xc1
    slwi    r4, r29, 22
    or      r0, r6, r0
    or      r4, r4, r0
    slwi    r0, r5, 24
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    b       branch_0x80367cc4

branch_0x80367bbc:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80367bd8
    bl      GDOverflowed
branch_0x80367bd8:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367c0c
    bl      GDOverflowed
branch_0x80367c0c:
    lwz     r4, -0x5778(r13)
    slwi    r0, r31, 2
    slwi    r5, r24, 4
    or      r0, r30, r0
    lwz     r3, 0x8(r4)
    or      r0, r5, r0
    slwi    r6, r23, 7
    or      r6, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r7, r22, 10
    or      r0, r7, r6
    slwi    r8, r21, 13
    or      r0, r8, r0
    slwi    r5, r20, 1
    clrlslwi  r4, r25, 31, 18
    oris    r0, r0, 0x3
    or      r0, r4, r0
    slwi    r6, r28, 19
    or      r0, r6, r0
    rlwinm  r4, r25, 19, 10, 11
    addi    r5, r5, 0xc1
    slwi    r6, r29, 22
    or      r0, r4, r0
    or      r4, r6, r0
    slwi    r0, r5, 24
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
branch_0x80367cc4:
    lmw     r20, 0x28(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl GDSetAlphaCompare
GDSetAlphaCompare: # 0x80367cd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    mr      r30, r5
    addi    r31, r6, 0x0
    addi    r27, r7, 0x0
    lwz     r8, -0x5778(r13)
    lwz     r3, 0x8(r8)
    lwz     r0, 0xc(r8)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80367d18
    bl      GDOverflowed
branch_0x80367d18:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367d4c
    bl      GDOverflowed
branch_0x80367d4c:
    lwz     r4, -0x5778(r13)
    clrlslwi  r5, r27, 24, 8
    insrwi  r5, r29, 8, 24
    lwz     r3, 0x8(r4)
    slwi    r6, r31, 19
    insrwi  r5, r28, 16, 0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r4, r30, 22
    or      r0, r6, r5
    or      r0, r4, r0
    oris    r7, r0, 0xf300
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl GDSetTevOrder
GDSetTevOrder: # 0x80367ddc
    mflr    r0
    cmpwi   r5, 0xff
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    beq-    branch_0x80367e08
    rlwinm. r0, r5, 0, 23, 23
    bne-    branch_0x80367e08
    li      r31, 0x1
branch_0x80367e08:
    cmpwi   r8, 0xff
    li      r0, 0x0
    beq-    branch_0x80367e20
    rlwinm. r10, r8, 0, 23, 23
    bne-    branch_0x80367e20
    li      r0, 0x1
branch_0x80367e20:
    lis     r10, 0x803f
    lwz     r30, -0x5778(r13)
    subi    r12, r10, 0x6a88
    clrlwi  r6, r6, 28
    lwz     r10, 0x8(r30)
    add     r11, r12, r6
    lwz     r6, 0xc(r30)
    lbz     r11, 0x0(r11)
    clrlwi  r9, r9, 28
    clrlslwi  r4, r4, 29, 3
    insrwi  r4, r5, 3, 29
    add     r9, r12, r9
    srawi   r12, r3, 1
    lbz     r9, 0x0(r9)
    addi    r3, r10, 0x1
    addze   r12, r12
    cmplw   r3, r6
    slwi    r5, r11, 7
    insrwi  r4, r31, 26, 0
    or      r4, r5, r4
    clrlslwi  r8, r8, 29, 12
    clrlslwi  r5, r7, 29, 15
    or      r4, r8, r4
    slwi    r7, r0, 18
    or      r0, r5, r4
    addi    r10, r12, 0x28
    slwi    r3, r9, 19
    or      r0, r7, r0
    slwi    r4, r10, 24
    or      r0, r3, r0
    or      r31, r4, r0
    ble-    branch_0x80367ea4
    bl      GDOverflowed
branch_0x80367ea4:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367ed8
    bl      GDOverflowed
branch_0x80367ed8:
    lwz     r4, -0x5778(r13)
    srwi    r7, r31, 24
    extrwi  r6, r31, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r31, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

