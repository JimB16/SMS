
.globl J3DGDLoadTexMtxImm__FPA4_fUl13_GXTexMtxType
J3DGDLoadTexMtxImm__FPA4_fUl13_GXTexMtxType: # 0x802f2d00
    mflr    r0
    cmplwi  r4, 0x40
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    addi    r30, r5, 0x0
    stw     r29, 0xac(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xa8(sp)
    blt-    branch_0x802f2d40
    addi    r0, r4, -0x40
    slwi    r3, r0, 2
    addi    r31, r3, 0x500
    li      r28, 0xc
    b       branch_0x802f2d5c

branch_0x802f2d40:
    cmpwi   r30, 0x1
    clrlslwi  r31, r4, 18, 2
    bne-    branch_0x802f2d54
    li      r0, 0x8
    b       branch_0x802f2d58

branch_0x802f2d54:
    li      r0, 0xc
branch_0x802f2d58:
    clrlwi  r28, r0, 24
branch_0x802f2d5c:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x25
    cmplw   r3, r0
    ble-    branch_0x802f2d78
    bl      GDOverflowed
branch_0x802f2d78:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r3, r28, 24
    addi    r7, r3, -0x1
    lwz     r3, 0x8(r4)
    clrlwi  r7, r7, 16
    srawi   r6, r7, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r0, 0x10
    extrwi  r5, r31, 8, 16
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
    stb     r7, 0x0(r3)
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
    lfs     f0, 0x0(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0xa0(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0xa0(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0xa0(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0xa0(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0xa0(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x4(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x98(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x98(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x98(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x98(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x98(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x8(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x90(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x90(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x90(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x90(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x90(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0xc(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x88(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x88(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x88(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x88(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x88(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x10(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x80(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x80(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x80(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x80(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    cmpwi   r30, 0x0
    lwz     r5, 0x80(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x14(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x78(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x78(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x78(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x18(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x70(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x70(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x70(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x1c(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x68(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x68(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x68(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    bne-    branch_0x802f3388
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x10
    cmplw   r3, r0
    ble-    branch_0x802f31b8
    bl      GDOverflowed
branch_0x802f31b8:
    lfs     f0, 0x20(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x60(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x60(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x60(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x60(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x60(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x24(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x58(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x58(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x58(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x58(sp)
    lwz     r3, 0x8(r4)
    extrwi  r5, r0, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r5, 0x58(sp)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lfs     f0, 0x28(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x50(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x50(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
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
    lfs     f0, 0x2c(r29)
    lwz     r4, R13Off_m0x5778(r13)
    stfs    f0, 0x48(sp)
    lwz     r3, 0x8(r4)
    lwz     r5, 0x48(sp)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r5, 24
    stb     r0, 0x0(r3)
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
branch_0x802f3388:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    lwz     r28, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl J3DGDSetChanAmbColor__F12_GXChannelID8_GXColor
J3DGDSetChanAmbColor__F12_GXChannelID8_GXColor: # 0x802f33a8
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
    addi    r3, r3, 0x9
    lbz     r7, 0x2(r4)
    cmplw   r3, r0
    insrwi  r5, r6, 8, 0
    lbz     r4, 0x3(r4)
    insrwi  r5, r7, 8, 16
    or      r31, r4, r5
    ble-    branch_0x802f33fc
    bl      GDOverflowed
branch_0x802f33fc:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r3, r30, 31
    addi    r10, r3, 0x100a
    lwz     r3, 0x8(r4)
    clrlwi  r10, r10, 16
    li      r9, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r0, 0x10
    srawi   r8, r10, 8
    stb     r0, 0x0(r3)
    srwi    r7, r31, 24
    extrwi  r6, r31, 8, 8
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r31, 8, 16
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r9, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r9, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r10, 0x0(r3)
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl J3DGDSetChanMatColor__F12_GXChannelID8_GXColor
J3DGDSetChanMatColor__F12_GXChannelID8_GXColor: # 0x802f34ec
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
    addi    r3, r3, 0x9
    lbz     r7, 0x2(r4)
    cmplw   r3, r0
    insrwi  r5, r6, 8, 0
    lbz     r4, 0x3(r4)
    insrwi  r5, r7, 8, 16
    or      r31, r4, r5
    ble-    branch_0x802f3540
    bl      GDOverflowed
branch_0x802f3540:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r3, r30, 31
    addi    r10, r3, 0x100c
    lwz     r3, 0x8(r4)
    clrlwi  r10, r10, 16
    li      r9, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r0, 0x10
    srawi   r8, r10, 8
    stb     r0, 0x0(r3)
    srwi    r7, r31, 24
    extrwi  r6, r31, 8, 8
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r31, 8, 16
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r9, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r9, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r10, 0x0(r3)
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl J3DGDSetChanCtrl__F12_GXChannelIDUc11_GXColorSrc11_GXColorSrcUl12_GXDiffuseFn9_GXAttnFn
J3DGDSetChanCtrl__F12_GXChannelIDUc11_GXColorSrc11_GXColorSrcUl12_GXDiffuseFn9_GXAttnFn: # 0x802f3630
    mflr    r0
    cmpwi   r9, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r3, 0x0
    bne-    branch_0x802f3650
    li      r8, 0x0
branch_0x802f3650:
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
    addi    r3, r3, 0x9
    cmplw   r3, r0
    slwi    r5, r5, 6
    or      r4, r9, r4
    or      r5, r5, r4
    slwi    r4, r8, 7
    clrlslwi  r6, r10, 24, 9
    or      r4, r5, r4
    or      r0, r6, r4
    clrlslwi  r3, r11, 24, 10
    rlwinm  r4, r7, 7, 17, 20
    or      r0, r3, r0
    or      r27, r4, r0
    ble-    branch_0x802f36bc
    bl      GDOverflowed
branch_0x802f36bc:
    lwz     r4, R13Off_m0x5778(r13)
    clrlwi  r3, r26, 30
    addi    r8, r3, 0x100e
    lwz     r3, 0x8(r4)
    clrlwi  r8, r8, 16
    li      r7, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r4, 0x10
    addi    r0, r26, -0x4
    stb     r4, 0x0(r3)
    cmplwi  r0, 0x1
    srawi   r5, r8, 8
    lwz     r6, R13Off_m0x5778(r13)
    srwi    r31, r27, 24
    extrwi  r30, r27, 8, 8
    lwz     r4, 0x8(r6)
    extrwi  r29, r27, 8, 16
    clrlwi  r28, r27, 24
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    stb     r7, 0x0(r4)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
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
    stb     r27, 0x0(r3)
    bgt-    branch_0x802f3888
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x9
    cmplw   r3, r0
    ble-    branch_0x802f37c0
    bl      GDOverflowed
branch_0x802f37c0:
    lwz     r4, R13Off_m0x5778(r13)
    addi    r8, r26, 0x100c
    clrlwi  r8, r8, 16
    lwz     r3, 0x8(r4)
    li      r7, 0x10
    li      r6, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srawi   r5, r8, 8
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
    stb     r8, 0x0(r3)
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
branch_0x802f3888:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl J3DGDSetTexCoordGen__F13_GXTexCoordID13_GXTexGenType12_GXTexGenSrcUcUl
J3DGDSetTexCoordGen__F13_GXTexCoordID13_GXTexGenType12_GXTexGenSrcUcUl: # 0x802f389c
    mflr    r0
    cmplwi  r5, 0x14
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r23, 0x24(sp)
    addi    r23, r3, 0x0
    addi    r24, r6, 0x0
    addi    r25, r7, 0x0
    li      r31, 0x0
    li      r29, 0x0
    li      r28, 0x5
    li      r27, 0x5
    li      r26, 0x0
    bgt-    branch_0x802f39a0
    lis     r3, unk_803e18a8@h
    addi    r3, r3, unk_803e18a8@l
    slwi    r0, r5, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x802f38ec:
    li      r28, 0x0
    li      r31, 0x1
    b       branch_0x802f39a0

branch_0x802f38f8:
    li      r28, 0x1
    li      r31, 0x1
    b       branch_0x802f39a0

branch_0x802f3904:
    li      r28, 0x3
    li      r31, 0x1
    b       branch_0x802f39a0

branch_0x802f3910:
    li      r28, 0x4
    li      r31, 0x1
    b       branch_0x802f39a0

branch_0x802f391c:
    li      r28, 0x2
    b       branch_0x802f39a0

branch_0x802f3924:
    li      r28, 0x2
    b       branch_0x802f39a0

branch_0x802f392c:
    li      r28, 0x5
    b       branch_0x802f39a0

branch_0x802f3934:
    li      r28, 0x6
    b       branch_0x802f39a0

branch_0x802f393c:
    li      r28, 0x7
    b       branch_0x802f39a0

branch_0x802f3944:
    li      r28, 0x8
    b       branch_0x802f39a0

branch_0x802f394c:
    li      r28, 0x9
    b       branch_0x802f39a0

branch_0x802f3954:
    li      r28, 0xa
    b       branch_0x802f39a0

branch_0x802f395c:
    li      r28, 0xb
    b       branch_0x802f39a0

branch_0x802f3964:
    li      r28, 0xc
    b       branch_0x802f39a0

branch_0x802f396c:
    li      r27, 0x0
    b       branch_0x802f39a0

branch_0x802f3974:
    li      r27, 0x1
    b       branch_0x802f39a0

branch_0x802f397c:
    li      r27, 0x2
    b       branch_0x802f39a0

branch_0x802f3984:
    li      r27, 0x3
    b       branch_0x802f39a0

branch_0x802f398c:
    li      r27, 0x4
    b       branch_0x802f39a0

branch_0x802f3994:
    li      r27, 0x5
    b       branch_0x802f39a0

branch_0x802f399c:
    li      r27, 0x6
branch_0x802f39a0:
    cmpwi   r4, 0x1
    beq-    branch_0x802f39c8
    bge-    branch_0x802f39b8
    cmpwi   r4, 0x0
    bge-    branch_0x802f39d0
    b       branch_0x802f39fc

branch_0x802f39b8:
    cmpwi   r4, 0xa
    beq-    branch_0x802f39e8
    bge-    branch_0x802f39fc
    b       branch_0x802f39dc

branch_0x802f39c8:
    li      r30, 0x0
    b       branch_0x802f39fc

branch_0x802f39d0:
    li      r30, 0x0
    li      r29, 0x1
    b       branch_0x802f39fc

branch_0x802f39dc:
    addi    r26, r4, -0x2
    li      r30, 0x1
    b       branch_0x802f39fc

branch_0x802f39e8:
    cmpwi   r5, 0x13
    bne-    branch_0x802f39f8
    li      r30, 0x2
    b       branch_0x802f39fc

branch_0x802f39f8:
    li      r30, 0x3
branch_0x802f39fc:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x12
    cmplw   r3, r0
    ble-    branch_0x802f3a18
    bl      GDOverflowed
branch_0x802f3a18:
    lwz     r4, R13Off_m0x5778(r13)
    addi    r5, r23, 0x1040
    addi    r7, r23, 0x1050
    lwz     r6, 0x8(r4)
    clrlwi  r5, r5, 16
    slwi    r9, r29, 1
    addi    r3, r6, 0x1
    stw     r3, 0x8(r4)
    li      r4, 0x10
    li      r3, 0x0
    stb     r4, 0x0(r6)
    slwi    r6, r31, 2
    or      r6, r9, r6
    lwz     r12, R13Off_m0x5778(r13)
    slwi    r9, r28, 7
    srawi   r0, r5, 8
    lwz     r11, 0x8(r12)
    clrlwi  r7, r7, 16
    srawi   r8, r7, 8
    addi    r10, r11, 0x1
    stw     r10, 0x8(r12)
    slwi    r10, r30, 4
    or      r6, r10, r6
    stb     r3, 0x0(r11)
    or      r6, r9, r6
    slwi    r10, r27, 12
    lwz     r12, R13Off_m0x5778(r13)
    or      r6, r10, r6
    slwi    r9, r26, 15
    lwz     r11, 0x8(r12)
    or      r6, r9, r6
    addi    r10, r11, 0x1
    stw     r10, 0x8(r12)
    srwi    r12, r6, 24
    extrwi  r10, r6, 8, 16
    stb     r3, 0x0(r11)
    extrwi  r11, r6, 8, 8
    lwz     r26, R13Off_m0x5778(r13)
    lwz     r23, 0x8(r26)
    addi    r9, r23, 0x1
    stw     r9, 0x8(r26)
    stb     r0, 0x0(r23)
    lwz     r23, R13Off_m0x5778(r13)
    lwz     r9, 0x8(r23)
    addi    r0, r9, 0x1
    stw     r0, 0x8(r23)
    stb     r5, 0x0(r9)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r5, 0x8(r9)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r9)
    stb     r12, 0x0(r5)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r5, 0x8(r9)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r9)
    stb     r11, 0x0(r5)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r5, 0x8(r9)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r9)
    stb     r10, 0x0(r5)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r5, 0x8(r9)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r9)
    stb     r6, 0x0(r5)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r5, 0x8(r6)
    addi    r0, r5, 0x1
    stw     r0, 0x8(r6)
    stb     r4, 0x0(r5)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r3, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r3, 0x0(r4)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r6, R13Off_m0x5778(r13)
    addi    r3, r25, -0x40
    clrlslwi  r0, r24, 24, 8
    lwz     r5, 0x8(r6)
    or      r9, r3, r0
    srwi    r8, r9, 24
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    extrwi  r6, r9, 8, 8
    stb     r7, 0x0(r5)
    extrwi  r5, r9, 8, 16
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
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
    stb     r9, 0x0(r3)
    lmw     r23, 0x24(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl J3DGDSetFog__F10_GXFogTypeffff8_GXColor
J3DGDSetFog__F10_GXFogTypeffff8_GXColor: # 0x802f3c04
    mflr    r0
    fcmpu   cr0, f4, f3
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r25, 0x34(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    beq-    branch_0x802f3c2c
    fcmpu   cr0, f2, f1
    bne-    branch_0x802f3c3c
branch_0x802f3c2c:
    lfs     f3, 0x398(r2)
    lfs     f4, 0x39c(r2)
    stfs    f3, 0x24(sp)
    b       branch_0x802f3c5c

branch_0x802f3c3c:
    fsubs   f0, f4, f3
    fsubs   f5, f2, f1
    fmuls   f3, f4, f3
    fdivs   f4, f4, f0
    fmuls   f2, f0, f5
    fdivs   f0, f1, f5
    fdivs   f3, f3, f2
    stfs    f0, 0x24(sp)
branch_0x802f3c5c:
    lfs     f1, 0x39c(r2)
    li      r26, 0x1
    lfd     f0, 0x3a0(r2)
    b       branch_0x802f3c74

branch_0x802f3c6c:
    fmuls   f4, f4, f1
    addi    r26, r26, 0x1
branch_0x802f3c74:
    fcmpo   cr0, f4, f0
    bgt+    branch_0x802f3c6c
    lfd     f0, 0x3b0(r2)
    lfs     f2, 0x3a8(r2)
    lfs     f1, 0x398(r2)
    b       branch_0x802f3c94

branch_0x802f3c8c:
    fmuls   f4, f4, f2
    addi    r26, r26, -0x1
branch_0x802f3c94:
    fcmpo   cr0, f4, f1
    ble-    branch_0x802f3ca4
    fcmpo   cr0, f4, f0
    blt+    branch_0x802f3c8c
branch_0x802f3ca4:
    li      r0, 0x1
    lfs     f0, 0x3b8(r2)
    slw     r0, r0, r26
    lfd     f2, 0x3c0(r2)
    xoris   r0, r0, 0x8000
    fmuls   f1, f0, f4
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    stw     r0, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f2
    fdivs   f0, f3, f0
    stfs    f0, 0x20(sp)
    bl      __cvt_fp2unsigned
    lwz     r4, R13Off_m0x5778(r13)
    mr      r25, r3
    lwz     r27, 0x20(sp)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x19
    lwz     r31, 0x24(sp)
    cmplw   r3, r0
    ble-    branch_0x802f3d04
    bl      GDOverflowed
branch_0x802f3d04:
    lwz     r7, R13Off_m0x5778(r13)
    oris    r4, r25, 0xef00
    srwi    r0, r27, 12
    lwz     r6, 0x8(r7)
    oris    r3, r0, 0xee00
    oris    r5, r26, 0xf000
    addi    r0, r6, 0x1
    stw     r0, 0x8(r7)
    li      r0, 0x61
    srwi    r10, r3, 24
    stb     r0, 0x0(r6)
    extrwi  r25, r3, 8, 8
    extrwi  r26, r3, 8, 16
    lwz     r8, R13Off_m0x5778(r13)
    srwi    r28, r4, 24
    extrwi  r12, r4, 8, 8
    lwz     r7, 0x8(r8)
    extrwi  r11, r4, 8, 16
    srwi    r9, r5, 24
    addi    r6, r7, 0x1
    stw     r6, 0x8(r8)
    extrwi  r8, r5, 8, 8
    stb     r10, 0x0(r7)
    extrwi  r7, r5, 8, 16
    lwz     r27, R13Off_m0x5778(r13)
    lwz     r10, 0x8(r27)
    addi    r6, r10, 0x1
    stw     r6, 0x8(r27)
    stb     r25, 0x0(r10)
    lwz     r27, R13Off_m0x5778(r13)
    lwz     r10, 0x8(r27)
    addi    r6, r10, 0x1
    stw     r6, 0x8(r27)
    stb     r26, 0x0(r10)
    lwz     r27, R13Off_m0x5778(r13)
    lwz     r10, 0x8(r27)
    addi    r6, r10, 0x1
    stw     r6, 0x8(r27)
    stb     r3, 0x0(r10)
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r10)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r10)
    stb     r0, 0x0(r6)
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r10)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r10)
    stb     r28, 0x0(r6)
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r10)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r10)
    stb     r12, 0x0(r6)
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r10)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r10)
    stb     r11, 0x0(r6)
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r10)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r10)
    stb     r4, 0x0(r6)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r6)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    stb     r0, 0x0(r4)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r6)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    stb     r9, 0x0(r4)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r6)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    stb     r8, 0x0(r4)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r6)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    stb     r7, 0x0(r4)
    lwz     r7, R13Off_m0x5778(r13)
    slwi    r3, r29, 21
    inslwi  r3, r31, 20, 12
    lwz     r6, 0x8(r7)
    oris    r9, r3, 0xf100
    srwi    r8, r9, 24
    addi    r4, r6, 0x1
    stw     r4, 0x8(r7)
    extrwi  r7, r9, 8, 8
    stb     r5, 0x0(r6)
    extrwi  r6, r9, 8, 16
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r0, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r9, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lbz     r8, 0x0(r30)
    lwz     r4, 0x8(r5)
    lbz     r6, 0x1(r30)
    lbz     r7, 0x2(r30)
    addi    r3, r4, 0x1
    insrwi  r7, r6, 8, 16
    stw     r3, 0x8(r5)
    insrwi  r7, r8, 8, 8
    oris    r8, r7, 0xf200
    stb     r0, 0x0(r4)
    srwi    r7, r8, 24
    extrwi  r6, r8, 8, 8
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r8, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lmw     r25, 0x34(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc: # 0x802f3f80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    mr      r28, r5
    addi    r29, r6, 0x0
    addi    r27, r7, 0x0
    addi    r30, r8, 0x0
    addi    r31, r9, 0x0
    lwz     r10, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r10)
    lwz     r0, 0xc(r10)
    addi    r3, r3, 0xf
    cmplw   r3, r0
    ble-    branch_0x802f3fc8
    bl      GDOverflowed
branch_0x802f3fc8:
    lwz     r3, R13Off_m0x5778(r13)
    slwi    r9, r25, 1
    addi    r4, r9, 0x30
    lwz     r5, 0x8(r3)
    li      r10, 0xfe
    clrlwi  r7, r26, 16
    addi    r0, r5, 0x1
    stw     r0, 0x8(r3)
    li      r3, 0x61
    slwi    r4, r4, 24
    stb     r3, 0x0(r5)
    addi    r5, r9, 0x31
    li      r12, 0x3
    lwz     r8, R13Off_m0x5778(r13)
    clrlwi  r6, r27, 16
    slwi    r5, r5, 24
    lwz     r9, 0x8(r8)
    addi    r0, r9, 0x1
    stw     r0, 0x8(r8)
    addi    r8, r7, -0x1
    clrlslwi  r7, r28, 24, 16
    stb     r10, 0x0(r9)
    clrlslwi  r9, r29, 24, 17
    or      r7, r8, r7
    lwz     r10, R13Off_m0x5778(r13)
    or      r7, r9, r7
    or      r4, r7, r4
    lwz     r8, 0x8(r10)
    li      r0, 0xff
    srwi    r11, r4, 24
    addi    r7, r8, 0x1
    stw     r7, 0x8(r10)
    addi    r7, r6, -0x1
    clrlslwi  r6, r30, 24, 16
    stb     r12, 0x0(r8)
    or      r6, r7, r6
    clrlslwi  r8, r31, 24, 17
    lwz     r28, R13Off_m0x5778(r13)
    or      r6, r8, r6
    or      r5, r6, r5
    lwz     r12, 0x8(r28)
    extrwi  r10, r4, 8, 8
    extrwi  r9, r4, 8, 16
    addi    r7, r12, 0x1
    stw     r7, 0x8(r28)
    srwi    r6, r5, 24
    stb     r0, 0x0(r12)
    lwz     r12, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r12)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r12)
    stb     r0, 0x0(r8)
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r7, 0x8(r8)
    addi    r0, r7, 0x1
    stw     r0, 0x8(r8)
    stb     r3, 0x0(r7)
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r7, 0x8(r8)
    addi    r0, r7, 0x1
    stw     r0, 0x8(r8)
    stb     r11, 0x0(r7)
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r7, 0x8(r8)
    addi    r0, r7, 0x1
    stw     r0, 0x8(r8)
    stb     r10, 0x0(r7)
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r7, 0x8(r8)
    addi    r0, r7, 0x1
    stw     r0, 0x8(r8)
    stb     r9, 0x0(r7)
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r7, 0x8(r8)
    addi    r0, r7, 0x1
    stw     r0, 0x8(r8)
    stb     r4, 0x0(r7)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r7)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r7)
    stb     r3, 0x0(r4)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r7, r5, 8, 8
    extrwi  r6, r5, 8, 16
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
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl J3DGDSetTexImgAttr__F11_GXTexMapIDUsUs9_GXTexFmt
J3DGDSetTexImgAttr__F11_GXTexMapIDUsUs9_GXTexFmt: # 0x802f417c
    mflr    r0
    clrlwi  r5, r5, 16
    stw     r0, 0x4(sp)
    clrlwi  r7, r4, 16
    addi    r5, r5, -0x1
    stwu    sp, -0x20(sp)
    addi    r8, r13, R13Off_m0x7578
    addi    r7, r7, -0x1
    stw     r31, 0x1c(sp)
    lwz     r9, R13Off_m0x5778(r13)
    lbzx    r8, r8, r3
    slwi    r3, r5, 10
    lwz     r4, 0x8(r9)
    lwz     r0, 0xc(r9)
    addi    r4, r4, 0x5
    cmplw   r4, r0
    or      r0, r7, r3
    slwi    r4, r6, 20
    slwi    r3, r8, 24
    or      r0, r4, r0
    or      r31, r3, r0
    ble-    branch_0x802f41d8
    bl      GDOverflowed
branch_0x802f41d8:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    srwi    r7, r31, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r31, 8, 8
    extrwi  r5, r31, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl J3DGDSetTexImgPtr__F11_GXTexMapIDPv
J3DGDSetTexImgPtr__F11_GXTexMapIDPv: # 0x802f4260
    mflr    r0
    addis   r4, r4, 0x8000
    stw     r0, 0x4(sp)
    addi    r5, r13, R13Off_m0x7560
    srwi    r4, r4, 5
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r6, R13Off_m0x5778(r13)
    lbzx    r5, r5, r3
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    slwi    r0, r5, 24
    or      r31, r4, r0
    ble-    branch_0x802f42a4
    bl      GDOverflowed
branch_0x802f42a4:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    srwi    r7, r31, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r31, 8, 8
    extrwi  r5, r31, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl J3DGDSetTexTlut__F11_GXTexMapIDUl10_GXTlutFmt
J3DGDSetTexTlut__F11_GXTexMapIDUl10_GXTlutFmt: # 0x802f432c
    mflr    r0
    addi    r6, r13, R13Off_m0x7558
    stw     r0, 0x4(sp)
    addis   r4, r4, 0xfff8
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r8, R13Off_m0x5778(r13)
    lbzx    r7, r6, r3
    srwi    r6, r4, 9
    lwz     r3, 0x8(r8)
    slwi    r4, r5, 10
    lwz     r0, 0xc(r8)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    slwi    r3, r7, 24
    or      r0, r6, r4
    or      r31, r3, r0
    ble-    branch_0x802f4378
    bl      GDOverflowed
branch_0x802f4378:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    srwi    r7, r31, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r31, 8, 8
    extrwi  r5, r31, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl J3DGDLoadTlut__FPvUl11_GXTlutSize
J3DGDLoadTlut__FPvUl11_GXTlutSize: # 0x802f4400
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
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f4440
    bl      GDOverflowed
branch_0x802f4440:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0xfe
    lwz     r3, 0x8(r4)
    li      r6, 0xff
    li      r5, 0x0
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
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f44d0
    bl      GDOverflowed
branch_0x802f44d0:
    lwz     r4, R13Off_m0x5778(r13)
    li      r7, 0x61
    li      r6, 0xf
    lwz     r3, 0x8(r4)
    li      r5, 0x0
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
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f455c
    bl      GDOverflowed
branch_0x802f455c:
    lwz     r4, R13Off_m0x5778(r13)
    addis   r0, r29, 0x8000
    srwi    r0, r0, 5
    lwz     r3, 0x8(r4)
    oris    r8, r0, 0x6400
    li      r5, 0x61
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r7, r8, 24
    extrwi  r6, r8, 8, 8
    stb     r5, 0x0(r3)
    extrwi  r5, r8, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f45f8
    bl      GDOverflowed
branch_0x802f45f8:
    lwz     r6, R13Off_m0x5778(r13)
    addis   r0, r30, 0xfff8
    srwi    r3, r0, 9
    lwz     r5, 0x8(r6)
    slwi    r0, r31, 10
    or      r0, r3, r0
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    li      r7, 0x61
    oris    r8, r0, 0x6500
    stb     r7, 0x0(r5)
    srwi    r7, r8, 24
    extrwi  r6, r8, 8, 8
    lwz     r4, R13Off_m0x5778(r13)
    extrwi  r5, r8, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f469c
    bl      GDOverflowed
branch_0x802f469c:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0xfe
    lwz     r3, 0x8(r4)
    li      r6, 0xff
    li      r5, 0x0
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
    stb     r6, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f472c
    bl      GDOverflowed
branch_0x802f472c:
    lwz     r4, R13Off_m0x5778(r13)
    li      r7, 0x61
    li      r6, 0xf
    lwz     r3, 0x8(r4)
    li      r5, 0x0
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
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor: # 0x802f47b8
    mflr    r0
    slwi    r5, r3, 1
    stw     r0, 0x4(sp)
    addi    r7, r5, 0xe0
    addi    r5, r5, 0xe1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    lwz     r10, R13Off_m0x5778(r13)
    lbz     r8, 0x3(r4)
    lwz     r3, 0x8(r10)
    lbz     r6, 0x1(r4)
    lbz     r9, 0x0(r4)
    addi    r3, r3, 0xa
    lwz     r0, 0xc(r10)
    insrwi  r9, r8, 8, 12
    lbz     r4, 0x2(r4)
    insrwi  r4, r6, 8, 12
    cmplw   r3, r0
    oris    r8, r9, 0x80
    slwi    r6, r7, 24
    oris    r3, r4, 0x80
    slwi    r0, r5, 24
    or      r31, r8, r6
    or      r30, r3, r0
    ble-    branch_0x802f4824
    bl      GDOverflowed
branch_0x802f4824:
    lwz     r4, R13Off_m0x5778(r13)
    li      r11, 0x61
    srwi    r10, r31, 24
    lwz     r3, 0x8(r4)
    extrwi  r9, r31, 8, 8
    extrwi  r8, r31, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r7, r30, 24
    extrwi  r6, r30, 8, 8
    stb     r11, 0x0(r3)
    extrwi  r5, r30, 8, 16
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r10, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r9, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r11, 0x0(r3)
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JRNLoadCurrentMtx__FUlUlUlUlUlUlUlUlUl
JRNLoadCurrentMtx__FUlUlUlUlUlUlUlUlUl: # 0x802f4920
    stwu    sp, -0x30(sp)
    slwi    r12, r4, 6
    li      r11, 0x8
    stw     r31, 0x2c(sp)
    lis     r4, 0xcc01
    slwi    r5, r5, 12
    lwz     r31, 0x38(sp)
    or      r3, r3, r12
    or      r3, r5, r3
    stb     r11, -0x8000(r4)
    li      r0, 0x30
    slwi    r6, r6, 18
    stb     r0, -0x8000(r4)
    or      r3, r6, r3
    slwi    r5, r7, 24
    or      r7, r5, r3
    stw     r7, -0x8000(r4)
    slwi    r0, r9, 6
    or      r3, r8, r0
    slwi    r5, r10, 12
    stb     r11, -0x8000(r4)
    li      r0, 0x40
    stb     r0, -0x8000(r4)
    slwi    r6, r31, 18
    or      r3, r5, r3
    or      r5, r6, r3
    stw     r5, -0x8000(r4)
    li      r0, 0x10
    li      r3, 0x1
    stb     r0, -0x8000(r4)
    li      r0, 0x1018
    sth     r3, -0x8000(r4)
    sth     r0, -0x8000(r4)
    stw     r7, -0x8000(r4)
    stw     r5, -0x8000(r4)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    blr


.globl JRNSetTevIndirect__F13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
JRNSetTevIndirect__F13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel: # 0x802f49b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r22, 0x28(sp)
    mr      r22, r3
    lbz     r31, 0x5b(sp)
    mr      r27, r4
    lwz     r26, 0x5c(sp)
    addi    r23, r5, 0x0
    addi    r24, r6, 0x0
    addi    r25, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    lwz     r11, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r11)
    lwz     r0, 0xc(r11)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f4a0c
    bl      GDOverflowed
branch_0x802f4a0c:
    lwz     r6, R13Off_m0x5778(r13)
    slwi    r0, r23, 2
    slwi    r3, r24, 4
    lwz     r5, 0x8(r6)
    or      r0, r27, r0
    or      r0, r3, r0
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    li      r4, 0x61
    slwi    r6, r25, 9
    stb     r4, 0x0(r5)
    slwi    r5, r26, 7
    or      r0, r5, r0
    lwz     r4, R13Off_m0x5778(r13)
    or      r5, r6, r0
    slwi    r7, r28, 13
    lwz     r3, 0x8(r4)
    slwi    r6, r29, 16
    addi    r8, r22, 0x10
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    or      r0, r7, r5
    slwi    r4, r31, 19
    or      r0, r6, r0
    or      r0, r4, r0
    clrlslwi  r5, r30, 24, 20
    slwi    r4, r8, 24
    or      r0, r5, r0
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
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
    lmw     r22, 0x28(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl JRNSetIndTexMtx__F14_GXIndTexMtxIDPA3_fSc
JRNSetIndTexMtx__F14_GXIndTexMtxIDPA3_fSc: # 0x802f4ae0
    mflr    r0
    cmpwi   r3, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r24, 0x60(sp)
    addi    r25, r5, 0x0
    beq-    branch_0x802f4b3c
    bge-    branch_0x802f4b18
    cmpwi   r3, 0x4
    beq-    branch_0x802f4b3c
    bge-    branch_0x802f4b2c
    cmpwi   r3, 0x1
    bge-    branch_0x802f4b24
    b       branch_0x802f4b3c

branch_0x802f4b18:
    cmpwi   r3, 0xc
    bge-    branch_0x802f4b3c
    b       branch_0x802f4b34

branch_0x802f4b24:
    addi    r26, r3, -0x1
    b       branch_0x802f4b40

branch_0x802f4b2c:
    addi    r26, r3, -0x5
    b       branch_0x802f4b40

branch_0x802f4b34:
    addi    r26, r3, -0x9
    b       branch_0x802f4b40

branch_0x802f4b3c:
    li      r26, 0x0
branch_0x802f4b40:
    lfs     f6, 0x3c8(r2)
    lfs     f1, 0x0(r4)
    lfs     f0, 0xc(r4)
    lfs     f3, 0x4(r4)
    fmuls   f5, f6, f1
    lfs     f2, 0x10(r4)
    fmuls   f4, f6, f0
    lwz     r5, R13Off_m0x5778(r13)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x14(r4)
    fmuls   f3, f6, f3
    fmuls   f2, f6, f2
    lwz     r3, 0x8(r5)
    fmuls   f1, f6, f1
    fmuls   f0, f6, f0
    fctiwz  f5, f5
    fctiwz  f4, f4
    lwz     r0, 0xc(r5)
    fctiwz  f3, f3
    fctiwz  f2, f2
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f5, 0x58(sp)
    addi    r3, r3, 0xf
    stfd    f4, 0x50(sp)
    lwz     r4, 0x5c(sp)
    stfd    f3, 0x48(sp)
    cmplw   r3, r0
    lwz     r0, 0x54(sp)
    clrlwi  r31, r4, 21
    stfd    f2, 0x40(sp)
    lwz     r3, 0x4c(sp)
    clrlwi  r24, r0, 21
    stfd    f1, 0x38(sp)
    lwz     r0, 0x44(sp)
    clrlwi  r30, r3, 21
    stfd    f0, 0x30(sp)
    lwz     r3, 0x3c(sp)
    clrlwi  r29, r0, 21
    lwz     r0, 0x34(sp)
    clrlwi  r28, r3, 21
    clrlwi  r27, r0, 21
    ble-    branch_0x802f4bf0
    bl      GDOverflowed
branch_0x802f4bf0:
    lwz     r4, R13Off_m0x5778(r13)
    mulli   r12, r26, 0x3
    lwz     r3, 0x8(r4)
    addi    r5, r25, 0x11
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    li      r0, 0x61
    extsb   r5, r5
    stb     r0, 0x0(r3)
    slwi    r3, r24, 11
    slwi    r8, r29, 11
    lwz     r6, R13Off_m0x5778(r13)
    addi    r7, r12, 0x6
    clrlslwi  r10, r5, 30, 22
    lwz     r4, 0x8(r6)
    or      r9, r31, r3
    or      r9, r10, r9
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    slwi    r3, r7, 24
    or      r3, r9, r3
    srwi    r6, r3, 24
    stb     r6, 0x0(r4)
    addi    r4, r12, 0x7
    addi    r6, r12, 0x8
    lwz     r11, R13Off_m0x5778(r13)
    extrwi  r12, r3, 8, 8
    or      r8, r30, r8
    lwz     r10, 0x8(r11)
    slwi    r4, r4, 24
    extrwi  r25, r3, 8, 16
    addi    r9, r10, 0x1
    stw     r9, 0x8(r11)
    rlwinm  r9, r5, 20, 8, 9
    or      r8, r9, r8
    stb     r12, 0x0(r10)
    or      r4, r8, r4
    slwi    r7, r27, 11
    lwz     r9, R13Off_m0x5778(r13)
    srwi    r11, r4, 24
    extrwi  r10, r4, 8, 8
    lwz     r12, 0x8(r9)
    addi    r8, r12, 0x1
    stw     r8, 0x8(r9)
    rlwinm  r8, r5, 18, 8, 9
    or      r5, r28, r7
    stb     r25, 0x0(r12)
    or      r7, r8, r5
    slwi    r5, r6, 24
    lwz     r12, R13Off_m0x5778(r13)
    or      r5, r7, r5
    extrwi  r9, r4, 8, 16
    lwz     r8, 0x8(r12)
    addi    r6, r8, 0x1
    stw     r6, 0x8(r12)
    stb     r3, 0x0(r8)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r7)
    stb     r0, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r7)
    stb     r11, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r7)
    stb     r10, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r7)
    stb     r9, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r3, r6, 0x1
    stw     r3, 0x8(r7)
    stb     r4, 0x0(r6)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r6)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r6)
    stb     r0, 0x0(r4)
    lwz     r4, R13Off_m0x5778(r13)
    srwi    r8, r5, 24
    extrwi  r7, r5, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r6, r5, 8, 16
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
    lmw     r24, 0x60(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl JRNSetIndTexCoordScale__F16_GXIndTexStageID14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale
JRNSetIndTexCoordScale__F16_GXIndTexStageID14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale: # 0x802f4db8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    mr      r29, r5
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r8)
    lwz     r0, 0xc(r8)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f4df8
    bl      GDOverflowed
branch_0x802f4df8:
    lwz     r5, R13Off_m0x5778(r13)
    srawi   r3, r27, 1
    addi    r6, r3, 0x25
    lwz     r4, 0x8(r5)
    slwi    r0, r29, 4
    li      r7, 0x61
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    slwi    r3, r30, 8
    or      r0, r28, r0
    stb     r7, 0x0(r4)
    slwi    r5, r31, 12
    or      r0, r3, r0
    lwz     r4, R13Off_m0x5778(r13)
    slwi    r6, r6, 24
    or      r0, r5, r0
    lwz     r3, 0x8(r4)
    or      r8, r6, r0
    srwi    r7, r8, 24
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    extrwi  r6, r8, 8, 8
    extrwi  r5, r8, 8, 16
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
    stb     r8, 0x0(r3)
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl JRNSetIndTexOrder__FUl13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID
JRNSetIndTexOrder__FUl13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID: # 0x802f4ea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r23, 0x2c(sp)
    mr      r31, r3
    lwz     r30, 0x58(sp)
    mr      r23, r4
    addi    r24, r5, 0x0
    addi    r25, r6, 0x0
    addi    r26, r7, 0x0
    addi    r27, r8, 0x0
    addi    r28, r9, 0x0
    addi    r29, r10, 0x0
    lwz     r11, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r11)
    lwz     r0, 0xc(r11)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f4ef8
    bl      GDOverflowed
branch_0x802f4ef8:
    lwz     r5, R13Off_m0x5778(r13)
    clrlslwi  r9, r23, 29, 3
    insrwi  r9, r24, 3, 29
    mtctr   r31
    lwz     r4, 0x8(r5)
    insrwi  r9, r26, 3, 23
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    li      r5, 0x61
    insrwi  r9, r25, 3, 20
    stb     r5, 0x0(r4)
    insrwi  r9, r28, 3, 17
    insrwi  r9, r27, 3, 14
    lwz     r8, R13Off_m0x5778(r13)
    insrwi  r9, r30, 3, 11
    insrwi  r9, r29, 3, 8
    lwz     r7, 0x8(r8)
    oris    r23, r9, 0x2700
    clrlwi  r0, r24, 29
    addi    r6, r7, 0x1
    stw     r6, 0x8(r8)
    srwi    r6, r23, 24
    extrwi  r10, r23, 8, 8
    stb     r6, 0x0(r7)
    li      r6, 0x1
    clrlwi  r4, r28, 29
    lwz     r9, R13Off_m0x5778(r13)
    clrlwi  r5, r30, 29
    slw     r11, r6, r0
    lwz     r8, 0x8(r9)
    slw     r12, r6, r4
    clrlwi  r3, r26, 29
    addi    r0, r8, 0x1
    stw     r0, 0x8(r9)
    slw     r9, r6, r3
    slw     r5, r6, r5
    stb     r10, 0x0(r8)
    extrwi  r7, r23, 8, 16
    cmplwi  r31, 0x0
    lwz     r4, R13Off_m0x5778(r13)
    li      r24, 0x0
    li      r6, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r23, 0x0(r3)
    ble-    branch_0x802f5014
branch_0x802f4fc8:
    cmpwi   r6, 0x2
    beq-    branch_0x802f5000
    bge-    branch_0x802f4fe4
    cmpwi   r6, 0x0
    beq-    branch_0x802f4ff0
    bge-    branch_0x802f4ff8
    b       branch_0x802f500c

branch_0x802f4fe4:
    cmpwi   r6, 0x4
    bge-    branch_0x802f500c
    b       branch_0x802f5008

branch_0x802f4ff0:
    or      r24, r24, r11
    b       branch_0x802f500c

branch_0x802f4ff8:
    or      r24, r24, r9
    b       branch_0x802f500c

branch_0x802f5000:
    or      r24, r24, r12
    b       branch_0x802f500c

branch_0x802f5008:
    or      r24, r24, r5
branch_0x802f500c:
    addi    r6, r6, 0x1
    bdnz+      branch_0x802f4fc8
branch_0x802f5014:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802f5030
    bl      GDOverflowed
branch_0x802f5030:
    lwz     r4, R13Off_m0x5778(r13)
    oris    r9, r24, 0xf00
    li      r8, 0x61
    lwz     r3, 0x8(r4)
    srwi    r7, r9, 24
    extrwi  r6, r9, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    extrwi  r5, r9, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r9, 0x0(r3)
    lmw     r23, 0x2c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize
JRNLoadTexCached__F11_GXTexMapIDUl15_GXTexCacheSizeUl15_GXTexCacheSize: # 0x802f50bc
    addi    r5, r5, 0x3
    addi    r8, r13, R13Off_m0x7500
    lbzx    r10, r8, r3
    srwi    r4, r4, 5
    slwi    r0, r5, 15
    slwi    r5, r5, 18
    or      r0, r4, r0
    li      r9, 0x61
    lis     r8, 0xcc01
    stb     r9, -0x8000(r8)
    slwi    r4, r10, 24
    or      r0, r5, r0
    or      r0, r4, r0
    cmpwi   r7, 0x3
    stw     r0, -0x8000(r8)
    beqlr-    

    lis     r0, 0x10
    cmplw   r6, r0
    bgelr-    

    addi    r4, r7, 0x3
    addi    r5, r13, R13Off_m0x74f8
    lbzx    r5, r5, r3
    srwi    r3, r6, 5
    slwi    r0, r4, 15
    slwi    r4, r4, 18
    stb     r9, -0x8000(r8)
    or      r0, r3, r0
    slwi    r3, r5, 24
    or      r0, r4, r0
    or      r0, r3, r0
    stw     r0, -0x8000(r8)
    blr


.globl JRNISetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
JRNISetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID: # 0x802f513c
    mflr    r0
    cmpwi   r4, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    blt-    branch_0x802f515c
    li      r4, 0x0
branch_0x802f515c:
    cmpwi   r7, 0x8
    blt-    branch_0x802f5168
    li      r7, 0x0
branch_0x802f5168:
    cmpwi   r5, 0xff
    li      r30, 0x0
    beq-    branch_0x802f5180
    rlwinm. r0, r5, 0, 23, 23
    bne-    branch_0x802f5180
    li      r30, 0x1
branch_0x802f5180:
    cmpwi   r8, 0xff
    li      r0, 0x0
    beq-    branch_0x802f5198
    rlwinm. r10, r8, 0, 23, 23
    bne-    branch_0x802f5198
    li      r0, 0x1
branch_0x802f5198:
    lis     r10, c2r_795@h
    lwz     r31, R13Off_m0x5778(r13)
    addi    r12, r10, c2r_795@l
    clrlwi  r6, r6, 28
    lwz     r10, 0x8(r31)
    add     r11, r12, r6
    lwz     r6, 0xc(r31)
    clrlwi  r9, r9, 28
    lbz     r11, 0x0(r11)
    add     r9, r12, r9
    lbz     r12, 0x0(r9)
    slwi    r9, r4, 3
    srawi   r31, r3, 1
    insrwi  r9, r5, 3, 29
    clrlslwi  r4, r30, 24, 6
    addi    r3, r10, 0x5
    addze   r31, r31
    cmplw   r3, r6
    slwi    r5, r11, 7
    or      r4, r9, r4
    or      r4, r5, r4
    clrlslwi  r8, r8, 29, 12
    slwi    r5, r7, 15
    or      r4, r8, r4
    clrlslwi  r7, r0, 24, 18
    or      r0, r5, r4
    addi    r10, r31, 0x28
    slwi    r3, r12, 19
    or      r0, r7, r0
    slwi    r4, r10, 24
    or      r0, r3, r0
    or      r31, r4, r0
    ble-    branch_0x802f5220
    bl      GDOverflowed
branch_0x802f5220:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    srwi    r7, r31, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r31, 8, 8
    extrwi  r5, r31, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl JRNISetTevColorS10__F11_GXTevRegID11_GXColorS10
JRNISetTevColorS10__F11_GXTevRegID11_GXColorS10: # 0x802f52ac
    mflr    r0
    slwi    r10, r3, 1
    stw     r0, 0x4(sp)
    addi    r7, r10, 0xe0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    lwz     r11, R13Off_m0x5778(r13)
    lha     r8, 0x6(r4)
    lwz     r3, 0x8(r11)
    lwz     r0, 0xc(r11)
    addi    r3, r3, 0x14
    lha     r5, 0x2(r4)
    cmplw   r3, r0
    lha     r9, 0x0(r4)
    lha     r6, 0x4(r4)
    clrlslwi  r3, r8, 21, 12
    clrlslwi  r0, r5, 21, 12
    insrwi  r3, r9, 11, 21
    insrwi  r0, r6, 11, 21
    addi    r31, r3, 0x0
    addi    r4, r10, 0xe1
    mr      r30, r0
    insrwi  r31, r7, 8, 0
    insrwi  r30, r4, 8, 0
    ble-    branch_0x802f5318
    bl      GDOverflowed
branch_0x802f5318:
    lwz     r5, R13Off_m0x5778(r13)
    li      r0, 0x61
    srwi    r12, r31, 24
    lwz     r4, 0x8(r5)
    extrwi  r11, r31, 8, 8
    extrwi  r10, r31, 8, 16
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    srwi    r3, r30, 24
    extrwi  r5, r30, 8, 16
    stb     r0, 0x0(r4)
    extrwi  r4, r30, 8, 8
    clrlwi  r6, r30, 24
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r12, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r11, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r10, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r31, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r0, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r3, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r4, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r5, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r30, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r0, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r3, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r4, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r5, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r6, 0x0(r8)
    lwz     r9, R13Off_m0x5778(r13)
    lwz     r8, 0x8(r9)
    addi    r7, r8, 0x1
    stw     r7, 0x8(r9)
    stb     r0, 0x0(r8)
    lwz     r8, R13Off_m0x5778(r13)
    lwz     r7, 0x8(r8)
    addi    r0, r7, 0x1
    stw     r0, 0x8(r8)
    stb     r3, 0x0(r7)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r7)
    stb     r4, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl JRNISetFogRangeAdj__FUcUsP14_GXFogAdjTable
JRNISetFogRangeAdj__FUcUsP14_GXFogAdjTable: # 0x802f54e0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r3, 24
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x802f55d4
    li      r31, 0x0
    li      r26, 0x0
branch_0x802f550c:
    lwz     r6, R13Off_m0x5778(r13)
    add     r7, r29, r26
    srawi   r4, r31, 1
    lhz     r5, 0x2(r7)
    lwz     r3, 0x8(r6)
    addze   r4, r4
    lwz     r0, 0xc(r6)
    addi    r6, r4, 0xe9
    lhz     r4, 0x0(r7)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    slwi    r3, r6, 24
    slwi    r0, r5, 12
    or      r0, r3, r0
    or      r30, r0, r4
    ble-    branch_0x802f5550
    bl      GDOverflowed
branch_0x802f5550:
    lwz     r4, R13Off_m0x5778(r13)
    addi    r31, r31, 0x2
    li      r8, 0x61
    lwz     r3, 0x8(r4)
    srwi    r7, r30, 24
    extrwi  r6, r30, 8, 8
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    extrwi  r5, r30, 8, 16
    cmpwi   r31, 0xa
    stb     r8, 0x0(r3)
    addi    r26, r26, 0x4
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    blt+    branch_0x802f550c
branch_0x802f55d4:
    lwz     r5, R13Off_m0x5778(r13)
    clrlwi  r3, r28, 16
    addi    r4, r3, 0x156
    lwz     r3, 0x8(r5)
    oris    r4, r4, 0xe800
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    clrlslwi  r0, r27, 24, 10
    or      r30, r4, r0
    ble-    branch_0x802f5604
    bl      GDOverflowed
branch_0x802f5604:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    srwi    r7, r30, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r30, 8, 8
    extrwi  r5, r30, 8, 16
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
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

