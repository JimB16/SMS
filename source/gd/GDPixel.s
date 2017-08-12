
.globl GDSetBlendMode
GDSetBlendMode: # 0x80366efc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r5
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r7)
    lwz     r0, 0xc(r7)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80366f44
    bl      GDOverflowed
branch_0x80366f44:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366f78
    bl      GDOverflowed
branch_0x80366f78:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0xfe
    li      r7, 0x0
    lwz     r3, 0x8(r4)
    li      r6, 0x1f
    li      r5, 0xe3
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80366ff4
    bl      GDOverflowed
branch_0x80366ff4:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367028
    bl      GDOverflowed
branch_0x80367028:
    cmpwi   r28, 0x1
    li      r4, 0x1
    beq-    branch_0x80367040
    cmpwi   r28, 0x3
    beq-    branch_0x80367040
    li      r4, 0x0
branch_0x80367040:
    subfic  r3, r28, 0x3
    lwz     r6, R13Off_m0x5778(r13)
    subfic  r0, r28, 0x2
    cntlzw  r0, r0
    lwz     r7, 0x8(r6)
    rlwinm  r0, r0, 28, 4, 30
    cntlzw  r9, r3
    or      r8, r0, r4
    addi    r5, r7, 0x1
    stw     r5, 0x8(r6)
    slwi    r3, r30, 5
    slwi    r4, r29, 8
    or      r6, r3, r8
    or      r8, r4, r6
    extlwi  r5, r9, 21, 6
    slwi    r6, r31, 12
    or      r8, r5, r8
    or      r8, r6, r8
    oris    r8, r8, 0x4100
    srwi    r8, r8, 24
    stb     r8, 0x0(r7)
    cmpwi   r28, 0x1
    li      r7, 0x1
    beq-    branch_0x803670ac
    cmpwi   r28, 0x3
    beq-    branch_0x803670ac
    li      r7, 0x0
branch_0x803670ac:
    or      r7, r0, r7
    lwz     r9, R13Off_m0x5778(r13)
    or      r7, r3, r7
    or      r7, r4, r7
    lwz     r8, 0x8(r9)
    or      r7, r5, r7
    or      r10, r6, r7
    addi    r7, r8, 0x1
    oris    r10, r10, 0x4100
    stw     r7, 0x8(r9)
    extrwi  r7, r10, 8, 8
    cmpwi   r28, 0x1
    stb     r7, 0x0(r8)
    li      r7, 0x1
    beq-    branch_0x803670f4
    cmpwi   r28, 0x3
    beq-    branch_0x803670f4
    li      r7, 0x0
branch_0x803670f4:
    or      r7, r0, r7
    lwz     r9, R13Off_m0x5778(r13)
    or      r7, r3, r7
    or      r7, r4, r7
    lwz     r8, 0x8(r9)
    or      r7, r5, r7
    or      r10, r6, r7
    addi    r7, r8, 0x1
    oris    r10, r10, 0x4100
    stw     r7, 0x8(r9)
    extrwi  r7, r10, 8, 16
    cmpwi   r28, 0x1
    stb     r7, 0x0(r8)
    li      r7, 0x1
    beq-    branch_0x8036713c
    cmpwi   r28, 0x3
    beq-    branch_0x8036713c
    li      r7, 0x0
branch_0x8036713c:
    or      r0, r0, r7
    lwz     r7, R13Off_m0x5778(r13)
    or      r0, r3, r0
    or      r0, r4, r0
    lwz     r3, 0x8(r7)
    or      r0, r5, r0
    or      r4, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r7)
    ori     r4, r4, 0x0
    stb     r4, 0x0(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl GDSetBlendModeEtc
GDSetBlendModeEtc: # 0x80367188
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    mr      r27, r5
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    addi    r31, r9, 0x0
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r10)
    lwz     r0, 0xc(r10)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803671d0
    bl      GDOverflowed
branch_0x803671d0:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367204
    bl      GDOverflowed
branch_0x80367204:
    cmpwi   r25, 0x1
    li      r4, 0x1
    beq-    branch_0x8036721c
    cmpwi   r25, 0x3
    beq-    branch_0x8036721c
    li      r4, 0x0
branch_0x8036721c:
    subfic  r3, r25, 0x3
    lwz     r6, R13Off_m0x5778(r13)
    subfic  r0, r25, 0x2
    cntlzw  r0, r0
    lwz     r10, 0x8(r6)
    rlwinm  r0, r0, 28, 4, 30
    cntlzw  r11, r3
    or      r7, r0, r4
    addi    r5, r10, 0x1
    stw     r5, 0x8(r6)
    clrlslwi  r3, r31, 24, 2
    clrlslwi  r4, r29, 24, 3
    or      r6, r3, r7
    or      r7, r4, r6
    clrlslwi  r5, r30, 24, 4
    or      r8, r5, r7
    slwi    r6, r27, 5
    or      r9, r6, r8
    slwi    r7, r26, 8
    extlwi  r8, r11, 21, 6
    or      r11, r7, r9
    slwi    r9, r28, 12
    or      r11, r8, r11
    or      r11, r9, r11
    oris    r11, r11, 0x4100
    srwi    r11, r11, 24
    stb     r11, 0x0(r10)
    cmpwi   r25, 0x1
    li      r10, 0x1
    beq-    branch_0x803672a0
    cmpwi   r25, 0x3
    beq-    branch_0x803672a0
    li      r10, 0x0
branch_0x803672a0:
    or      r10, r0, r10
    lwz     r12, R13Off_m0x5778(r13)
    or      r10, r3, r10
    or      r10, r4, r10
    lwz     r11, 0x8(r12)
    or      r10, r5, r10
    or      r10, r6, r10
    or      r10, r7, r10
    or      r10, r8, r10
    or      r26, r9, r10
    addi    r10, r11, 0x1
    oris    r26, r26, 0x4100
    stw     r10, 0x8(r12)
    extrwi  r10, r26, 8, 8
    cmpwi   r25, 0x1
    stb     r10, 0x0(r11)
    li      r10, 0x1
    beq-    branch_0x803672f4
    cmpwi   r25, 0x3
    beq-    branch_0x803672f4
    li      r10, 0x0
branch_0x803672f4:
    or      r10, r0, r10
    lwz     r12, R13Off_m0x5778(r13)
    or      r10, r3, r10
    or      r10, r4, r10
    lwz     r11, 0x8(r12)
    or      r10, r5, r10
    or      r10, r6, r10
    or      r10, r7, r10
    or      r10, r8, r10
    or      r26, r9, r10
    addi    r10, r11, 0x1
    oris    r26, r26, 0x4100
    stw     r10, 0x8(r12)
    extrwi  r10, r26, 8, 16
    cmpwi   r25, 0x1
    stb     r10, 0x0(r11)
    li      r10, 0x1
    beq-    branch_0x80367348
    cmpwi   r25, 0x3
    beq-    branch_0x80367348
    li      r10, 0x0
branch_0x80367348:
    or      r0, r0, r10
    lwz     r10, R13Off_m0x5778(r13)
    or      r0, r3, r0
    or      r0, r4, r0
    lwz     r3, 0x8(r10)
    or      r0, r5, r0
    or      r0, r6, r0
    or      r0, r7, r0
    or      r0, r8, r0
    or      r4, r9, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r10)
    ori     r4, r4, 0x0
    stb     r4, 0x0(r3)
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl GDSetZMode
GDSetZMode: # 0x80367394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r5
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803673d4
    bl      GDOverflowed
branch_0x803673d4:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367408
    bl      GDOverflowed
branch_0x80367408:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r5, r29, 24
    slwi    r0, r30, 1
    lwz     r3, 0x8(r4)
    clrlslwi  r6, r31, 24, 4
    or      r0, r5, r0
    or      r0, r6, r0
    oris    r7, r0, 0x4000
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r7, 24
    extrwi  r6, r7, 8, 8
    stb     r0, 0x0(r3)
    extrwi  r5, r7, 8, 16
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl GDSetDstAlpha
GDSetDstAlpha: # 0x80367498
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803674d0
    bl      GDOverflowed
branch_0x803674d0:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80367504
    bl      GDOverflowed
branch_0x80367504:
    lwz     r4, R13Off_m0x5778(r13)
    clrlslwi  r5, r30, 24, 8
    insrwi  r5, r31, 8, 24
    lwz     r3, 0x8(r4)
    oris    r7, r5, 0x4200
    extrwi  r6, r7, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r7, 24
    extrwi  r5, r7, 8, 16
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

