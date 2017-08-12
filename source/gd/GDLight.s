
.globl GDSetLightAttn
GDSetLightAttn: # 0x80365e64
    mflr    r0
    stw     r0, 0x4(sp)
    cntlzw  r0, r3
    subfic  r4, r0, 0x1f
    stwu    sp, -0x90(sp)
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x7
    stfd    f31, 0x88(sp)
    fmr     f31, f6
    stfd    f30, 0x80(sp)
    fmr     f30, f5
    stfd    f29, 0x78(sp)
    fmr     f29, f4
    stfd    f28, 0x70(sp)
    fmr     f28, f3
    stfd    f27, 0x68(sp)
    fmr     f27, f2
    stfd    f26, 0x60(sp)
    fmr     f26, f1
    stw     r31, 0x5c(sp)
    ble-    branch_0x80365ebc
    li      r4, 0x0
branch_0x80365ebc:
    lwz     r5, R13Off_m0x5778(r13)
    clrlslwi  r4, r4, 20, 4
    addi    r31, r4, 0x604
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365ee0
    bl      GDOverflowed
branch_0x80365ee0:
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
    ble-    branch_0x80365f14
    bl      GDOverflowed
branch_0x80365f14:
    lwz     r4, R13Off_m0x5778(r13)
    li      r6, 0x0
    li      r5, 0x5
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
    ble-    branch_0x80365f60
    bl      GDOverflowed
branch_0x80365f60:
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r31, 8, 16
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    stfs    f26, 0x54(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365fac
    bl      GDOverflowed
branch_0x80365fac:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x54(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f27, 0x50(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366038
    bl      GDOverflowed
branch_0x80366038:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x50(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x50(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x50(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x50(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f28, 0x4c(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803660c4
    bl      GDOverflowed
branch_0x803660c4:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x4c(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f29, 0x48(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366150
    bl      GDOverflowed
branch_0x80366150:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x48(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x48(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x48(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x48(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f30, 0x44(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803661dc
    bl      GDOverflowed
branch_0x803661dc:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x44(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x44(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x44(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x44(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f31, 0x40(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366268
    bl      GDOverflowed
branch_0x80366268:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x40(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x40(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x40(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x40(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lfd     f27, 0x68(sp)
    lfd     f26, 0x60(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl GDSetLightColor
GDSetLightColor: # 0x80366300
    mflr    r0
    stw     r0, 0x4(sp)
    cntlzw  r0, r3
    subfic  r7, r0, 0x1f
    stwu    sp, -0x20(sp)
    clrlwi  r0, r7, 16
    cmplwi  r0, 0x7
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    lbz     r3, 0x1(r4)
    lbz     r5, 0x0(r4)
    lbz     r6, 0x2(r4)
    slwi    r3, r3, 16
    insrwi  r3, r5, 8, 0
    lbz     r4, 0x3(r4)
    insrwi  r3, r6, 8, 16
    or      r30, r4, r3
    ble-    branch_0x8036634c
    li      r7, 0x0
branch_0x8036634c:
    lwz     r5, R13Off_m0x5778(r13)
    clrlslwi  r4, r7, 20, 4
    addi    r31, r4, 0x603
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80366370
    bl      GDOverflowed
branch_0x80366370:
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
    ble-    branch_0x803663a4
    bl      GDOverflowed
branch_0x803663a4:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
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
    ble-    branch_0x803663ec
    bl      GDOverflowed
branch_0x803663ec:
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r31, 8, 16
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366434
    bl      GDOverflowed
branch_0x80366434:
    lwz     r4, R13Off_m0x5778(r13)
    srwi    r7, r30, 24
    extrwi  r6, r30, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r30, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GDSetLightPos
GDSetLightPos: # 0x803664a8
    mflr    r0
    stw     r0, 0x4(sp)
    cntlzw  r0, r3
    subfic  r4, r0, 0x1f
    stwu    sp, -0x58(sp)
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x7
    stfd    f31, 0x50(sp)
    fmr     f31, f3
    stfd    f30, 0x48(sp)
    fmr     f30, f2
    stfd    f29, 0x40(sp)
    fmr     f29, f1
    stw     r31, 0x3c(sp)
    ble-    branch_0x803664e8
    li      r4, 0x0
branch_0x803664e8:
    lwz     r5, R13Off_m0x5778(r13)
    clrlslwi  r4, r4, 20, 4
    addi    r31, r4, 0x60a
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x8036650c
    bl      GDOverflowed
branch_0x8036650c:
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
    ble-    branch_0x80366540
    bl      GDOverflowed
branch_0x80366540:
    lwz     r4, R13Off_m0x5778(r13)
    li      r6, 0x0
    li      r5, 0x2
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
    ble-    branch_0x8036658c
    bl      GDOverflowed
branch_0x8036658c:
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r31, 8, 16
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    stfs    f29, 0x30(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803665d8
    bl      GDOverflowed
branch_0x803665d8:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x30(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f30, 0x2c(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366664
    bl      GDOverflowed
branch_0x80366664:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x2c(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f31, 0x28(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803666f0
    bl      GDOverflowed
branch_0x803666f0:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x28(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x28(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x28(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x28(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    lfd     f29, 0x40(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl GDSetLightDir
GDSetLightDir: # 0x8036677c
    mflr    r0
    stw     r0, 0x4(sp)
    cntlzw  r0, r3
    subfic  r4, r0, 0x1f
    stwu    sp, -0x58(sp)
    clrlwi  r0, r4, 16
    cmplwi  r0, 0x7
    stfd    f31, 0x50(sp)
    fmr     f31, f3
    stfd    f30, 0x48(sp)
    fmr     f30, f2
    stfd    f29, 0x40(sp)
    fmr     f29, f1
    stw     r31, 0x3c(sp)
    ble-    branch_0x803667bc
    li      r4, 0x0
branch_0x803667bc:
    lwz     r5, R13Off_m0x5778(r13)
    clrlslwi  r4, r4, 20, 4
    addi    r31, r4, 0x60d
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803667e0
    bl      GDOverflowed
branch_0x803667e0:
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
    ble-    branch_0x80366814
    bl      GDOverflowed
branch_0x80366814:
    lwz     r4, R13Off_m0x5778(r13)
    li      r6, 0x0
    li      r5, 0x2
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
    ble-    branch_0x80366860
    bl      GDOverflowed
branch_0x80366860:
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r31, 8, 16
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    stfs    f29, 0x30(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803668ac
    bl      GDOverflowed
branch_0x803668ac:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x30(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f30, 0x2c(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366938
    bl      GDOverflowed
branch_0x80366938:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x2c(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    stfs    f31, 0x28(sp)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803669c4
    bl      GDOverflowed
branch_0x803669c4:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x28(sp)
    lwz     r3, 0x8(r4)
    srwi    r5, r0, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x28(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x28(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x28(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    lfd     f29, 0x40(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl GDSetChanMatColor
GDSetChanMatColor: # 0x80366a50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r8, R13Off_m0x5778(r13)
    lbz     r0, 0x1(r4)
    lwz     r3, 0x8(r8)
    slwi    r5, r0, 16
    lwz     r0, 0xc(r8)
    lbz     r6, 0x0(r4)
    addi    r3, r3, 0x1
    lbz     r7, 0x2(r4)
    cmplw   r3, r0
    insrwi  r5, r6, 8, 0
    lbz     r4, 0x3(r4)
    insrwi  r5, r7, 8, 16
    or      r31, r4, r5
    ble-    branch_0x80366aa4
    bl      GDOverflowed
branch_0x80366aa4:
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
    ble-    branch_0x80366ad8
    bl      GDOverflowed
branch_0x80366ad8:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
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
    ble-    branch_0x80366b20
    bl      GDOverflowed
branch_0x80366b20:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r3, r30, 31
    addi    r6, r3, 0x100c
    lwz     r3, 0x8(r4)
    clrlwi  r6, r6, 16
    srawi   r5, r6, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366b74
    bl      GDOverflowed
branch_0x80366b74:
    lwz     r4, R13Off_m0x5778(r13)
    srwi    r7, r31, 24
    extrwi  r6, r31, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r31, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GDSetChanCtrl
GDSetChanCtrl: # 0x80366be8
    mflr    r0
    cmpwi   r9, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r3, 0x0
    bne-    branch_0x80366c08
    li      r8, 0x0
branch_0x80366c08:
    neg     r3, r9
    lwz     r10, R13Off_m0x5778(r13)
    subic   r0, r3, 0x1
    subfe   r11, r0, r3
    lwz     r3, 0x8(r10)
    lwz     r0, 0xc(r10)
    subfic  r10, r9, 0x2
    clrlslwi  r4, r4, 24, 1
    subic   r9, r10, 0x1
    subfe   r10, r9, r10
    or      r4, r6, r4
    clrlslwi  r9, r7, 28, 2
    addi    r3, r3, 0x1
    cmplw   r3, r0
    slwi    r5, r5, 6
    or      r4, r9, r4
    or      r5, r5, r4
    slwi    r4, r8, 7
    slwi    r6, r10, 9
    or      r4, r5, r4
    or      r0, r6, r4
    slwi    r3, r11, 10
    rlwinm  r4, r7, 7, 17, 20
    or      r0, r3, r0
    or      r27, r4, r0
    ble-    branch_0x80366c74
    bl      GDOverflowed
branch_0x80366c74:
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
    ble-    branch_0x80366ca8
    bl      GDOverflowed
branch_0x80366ca8:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
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
    ble-    branch_0x80366cf0
    bl      GDOverflowed
branch_0x80366cf0:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r3, r26, 30
    addi    r6, r3, 0x100e
    lwz     r3, 0x8(r4)
    clrlwi  r6, r6, 16
    srawi   r5, r6, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366d44
    bl      GDOverflowed
branch_0x80366d44:
    lwz     r5, R13Off_m0x5778(r13)
    addi    r0, r26, -0x4
    srwi    r31, r27, 24
    lwz     r4, 0x8(r5)
    extrwi  r30, r27, 8, 8
    extrwi  r29, r27, 8, 16
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    cmplwi  r0, 0x1
    clrlwi  r28, r27, 24
    stb     r31, 0x0(r4)
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
    stb     r27, 0x0(r3)
    bgt-    branch_0x80366ee8
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80366dcc
    bl      GDOverflowed
branch_0x80366dcc:
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
    ble-    branch_0x80366e00
    bl      GDOverflowed
branch_0x80366e00:
    lwz     r4, R13Off_m0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
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
    ble-    branch_0x80366e48
    bl      GDOverflowed
branch_0x80366e48:
    lwz     r4, R13Off_m0x5778(r13)
    addi    r6, r26, 0x100c
    clrlwi  r6, r6, 16
    lwz     r3, 0x8(r4)
    srawi   r5, r6, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80366e98
    bl      GDOverflowed
branch_0x80366e98:
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
branch_0x80366ee8:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr

