
.globl GDSetCurrentMtx
GDSetCurrentMtx: # 0x80367f4c
    mflr    r0
    slwi    r11, r4, 6
    stw     r0, 0x4(sp)
    slwi    r9, r9, 6
    slwi    r6, r6, 18
    stwu    sp, -0x50(sp)
    slwi    r7, r7, 24
    stmw    r23, 0x2c(sp)
    lwz     r23, 0x58(sp)
    lwz     r12, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r12)
    lwz     r0, 0xc(r12)
    slwi    r12, r5, 12
    or      r5, r3, r11
    addi    r3, r4, 0x1
    cmplw   r3, r0
    or      r4, r12, r5
    or      r5, r6, r4
    slwi    r3, r10, 12
    or      r0, r8, r9
    slwi    r4, r23, 18
    or      r0, r3, r0
    or      r24, r7, r5
    or      r23, r4, r0
    ble-    branch_0x80367fb4
    bl      GDOverflowed
branch_0x80367fb4:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80367fe8
    bl      GDOverflowed
branch_0x80367fe8:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x30
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x8036801c
    bl      GDOverflowed
branch_0x8036801c:
    lwz     r4, R13Off_m0x5778(r13)
    srwi    r31, r24, 24
    extrwi  r30, r24, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r29, r24, 8, 16
    clrlwi  r28, r24, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r24, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80368098
    bl      GDOverflowed
branch_0x80368098:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803680cc
    bl      GDOverflowed
branch_0x803680cc:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x40
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80368100
    bl      GDOverflowed
branch_0x80368100:
    lwz     r4, R13Off_m0x5778(r13)
    srwi    r27, r23, 24
    extrwi  r26, r23, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r25, r23, 8, 16
    clrlwi  r24, r23, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r27, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r26, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r25, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r23, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x8036817c
    bl      GDOverflowed
branch_0x8036817c:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x10
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x803681b0
    bl      GDOverflowed
branch_0x803681b0:
    lwz     r4, R13Off_m0x5778(r13)
    li      r6, 0x0
    li      r5, 0x1
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
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x803681fc
    bl      GDOverflowed
branch_0x803681fc:
    lwz     r4, R13Off_m0x5778(r13)
    li      r6, 0x10
    li      r5, 0x18
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
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80368248
    bl      GDOverflowed
branch_0x80368248:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r28, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803682b4
    bl      GDOverflowed
branch_0x803682b4:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r27, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r26, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r25, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r24, 0x0(r3)
    lwz     r0, 0x54(sp)
    lmw     r23, 0x2c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr

