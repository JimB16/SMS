
.globl initialize__21J3DColorBlockLightOffFv
initialize__21J3DColorBlockLightOffFv: # 0x802d63f0
    li      r0, 0x0
    stb     r0, 0xc(r3)
    lis     r4, unk_0000ffff@ha
    addi    r7, r13, R13Off_m0x7548
    lbz     r6, R13Off_m0x7548(r13)
    addi    r8, r13, R13Off_m0x7548
    addi    r0, r4, unk_0000ffff@l
    stb     r6, 0x4(r3)
    addi    r9, r13, R13Off_m0x7548
    lbz     r5, 0x1(r7)
    stb     r5, 0x5(r3)
    lbz     r4, 0x2(r8)
    stb     r4, 0x6(r3)
    lbz     r4, 0x3(r9)
    stb     r4, 0x7(r3)
    stb     r6, 0x8(r3)
    lbz     r4, 0x1(r7)
    stb     r4, 0x9(r3)
    lbz     r4, 0x2(r8)
    stb     r4, 0xa(r3)
    lbz     r4, 0x3(r9)
    stb     r4, 0xb(r3)
    sth     r0, 0xe(r3)
    sth     r0, 0x10(r3)
    sth     r0, 0x12(r3)
    sth     r0, 0x14(r3)
    blr


.globl initialize__20J3DColorBlockLightOnFv
initialize__20J3DColorBlockLightOnFv: # 0x802d645c
    li      r6, 0x0
    stb     r6, 0x14(r3)
    addi    r7, r13, R13Off_m0x7548
    addi    r8, r13, R13Off_m0x7548
    lbz     r5, R13Off_m0x7548(r13)
    addi    r9, r13, R13Off_m0x7548
    lis     r4, unk_0000ffff@ha
    stb     r5, 0x4(r3)
    addi    r10, r13, R13Off_m0x7544
    addi    r11, r13, R13Off_m0x7544
    lbz     r0, 0x1(r7)
    addi    r12, r13, R13Off_m0x7544
    stb     r0, 0x5(r3)
    lbz     r0, 0x2(r8)
    stb     r0, 0x6(r3)
    addi    r0, r4, unk_0000ffff@l
    lbz     r4, 0x3(r9)
    stb     r4, 0x7(r3)
    stb     r5, 0x8(r3)
    lbz     r4, 0x1(r7)
    stb     r4, 0x9(r3)
    lbz     r4, 0x2(r8)
    stb     r4, 0xa(r3)
    lbz     r4, 0x3(r9)
    stb     r4, 0xb(r3)
    lbz     r5, R13Off_m0x7544(r13)
    stb     r5, 0xc(r3)
    lbz     r4, 0x1(r10)
    stb     r4, 0xd(r3)
    lbz     r4, 0x2(r11)
    stb     r4, 0xe(r3)
    lbz     r4, 0x3(r12)
    stb     r4, 0xf(r3)
    stb     r5, 0x10(r3)
    lbz     r4, 0x1(r10)
    stb     r4, 0x11(r3)
    lbz     r4, 0x2(r11)
    stb     r4, 0x12(r3)
    lbz     r4, 0x3(r12)
    stb     r4, 0x13(r3)
    sth     r0, 0x16(r3)
    sth     r0, 0x18(r3)
    sth     r0, 0x1a(r3)
    sth     r0, 0x1c(r3)
    stw     r6, 0x20(r3)
    stw     r6, 0x24(r3)
    stw     r6, 0x28(r3)
    stw     r6, 0x2c(r3)
    stw     r6, 0x30(r3)
    stw     r6, 0x34(r3)
    stw     r6, 0x38(r3)
    stw     r6, 0x3c(r3)
    blr


.globl initialize__12J3DTevBlock2Fv
initialize__12J3DTevBlock2Fv: # 0x802d6530
    lis     r4, unk_0000ffff@ha
    addi    r0, r4, unk_0000ffff@l
    sth     r0, 0x4(r3)
    li      r7, 0xc
    addi    r8, r13, R13Off_m0x7534
    sth     r0, 0x6(r3)
    li      r0, 0x1
    addi    r9, r13, R13Off_m0x7534
    stb     r0, 0x30(r3)
    li      r0, 0xc0
    addi    r10, r13, R13Off_m0x7534
    stb     r0, 0x31(r3)
    li      r0, 0xc1
    addi    r4, r13, R13Off_m0x7528
    stb     r0, 0x35(r3)
    li      r0, 0xc2
    addi    r5, r13, R13Off_m0x7528
    stb     r0, 0x39(r3)
    li      r0, 0xc3
    addi    r6, r13, R13Off_m0x7528
    stb     r0, 0x3d(r3)
    li      r0, 0x1c
    stb     r7, 0x51(r3)
    stb     r7, 0x52(r3)
    stb     r0, 0x53(r3)
    stb     r0, 0x54(r3)
    lha     r7, -0x7534(r13)
    sth     r7, 0x10(r3)
    lha     r0, 0x2(r8)
    sth     r0, 0x12(r3)
    lha     r0, 0x4(r9)
    sth     r0, 0x14(r3)
    lha     r0, 0x6(r10)
    sth     r0, 0x16(r3)
    sth     r7, 0x18(r3)
    lha     r0, 0x2(r8)
    sth     r0, 0x1a(r3)
    lha     r0, 0x4(r9)
    sth     r0, 0x1c(r3)
    lha     r0, 0x6(r10)
    sth     r0, 0x1e(r3)
    sth     r7, 0x20(r3)
    lha     r0, 0x2(r8)
    sth     r0, 0x22(r3)
    lha     r0, 0x4(r9)
    sth     r0, 0x24(r3)
    lha     r0, 0x6(r10)
    sth     r0, 0x26(r3)
    lbz     r7, R13Off_m0x7528(r13)
    stb     r7, 0x41(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x42(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x43(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x44(r3)
    stb     r7, 0x45(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x46(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x47(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x48(r3)
    stb     r7, 0x49(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x4a(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x4b(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x4c(r3)
    stb     r7, 0x4d(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x4e(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x4f(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x50(r3)
    blr


.globl initialize__12J3DTevBlock4Fv
initialize__12J3DTevBlock4Fv: # 0x802d6668
    stwu    sp, -0x30(sp)
    lis     r4, unk_0000ffff@ha
    addi    r0, r4, unk_0000ffff@l
    stw     r31, 0x2c(sp)
    li      r7, 0x1
    li      r8, 0xc1
    stw     r30, 0x28(sp)
    li      r11, 0xc4
    li      r10, 0xc5
    sth     r0, 0x4(r3)
    li      r9, 0xc6
    addi    r12, r13, R13Off_m0x7534
    sth     r0, 0x6(r3)
    addi    r31, r13, R13Off_m0x7534
    addi    r30, r13, R13Off_m0x7534
    sth     r0, 0x8(r3)
    addi    r4, r13, R13Off_m0x7528
    addi    r5, r13, R13Off_m0x7528
    sth     r0, 0xa(r3)
    li      r0, 0xc0
    addi    r6, r13, R13Off_m0x7528
    stb     r7, 0x1c(r3)
    li      r7, 0xc2
    stb     r0, 0x1d(r3)
    li      r0, 0xc3
    stb     r8, 0x21(r3)
    li      r8, 0xc7
    stb     r7, 0x25(r3)
    li      r7, 0xc
    stb     r0, 0x29(r3)
    li      r0, 0x1c
    stb     r11, 0x2d(r3)
    stb     r10, 0x31(r3)
    stb     r9, 0x35(r3)
    stb     r8, 0x39(r3)
    stb     r7, 0x6e(r3)
    stb     r7, 0x6f(r3)
    stb     r7, 0x70(r3)
    stb     r7, 0x71(r3)
    stb     r0, 0x72(r3)
    stb     r0, 0x73(r3)
    stb     r0, 0x74(r3)
    stb     r0, 0x75(r3)
    lha     r7, -0x7534(r13)
    sth     r7, 0x3e(r3)
    lha     r0, 0x2(r12)
    sth     r0, 0x40(r3)
    lha     r0, 0x4(r31)
    sth     r0, 0x42(r3)
    lha     r0, 0x6(r30)
    sth     r0, 0x44(r3)
    sth     r7, 0x46(r3)
    lha     r0, 0x2(r12)
    sth     r0, 0x48(r3)
    lha     r0, 0x4(r31)
    sth     r0, 0x4a(r3)
    lha     r0, 0x6(r30)
    sth     r0, 0x4c(r3)
    sth     r7, 0x4e(r3)
    lha     r0, 0x2(r12)
    sth     r0, 0x50(r3)
    lha     r0, 0x4(r31)
    sth     r0, 0x52(r3)
    lha     r0, 0x6(r30)
    sth     r0, 0x54(r3)
    lbz     r7, R13Off_m0x7528(r13)
    stb     r7, 0x5e(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x5f(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x60(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x61(r3)
    stb     r7, 0x62(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x63(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x64(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x65(r3)
    stb     r7, 0x66(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x67(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x68(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x69(r3)
    stb     r7, 0x6a(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x6b(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x6c(r3)
    lbz     r0, 0x3(r6)
    stb     r0, 0x6d(r3)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    blr


.globl initialize__13J3DTevBlock16Fv
initialize__13J3DTevBlock16Fv: # 0x802d67f0
    stwu    sp, -0x50(sp)
    lis     r4, unk_0000ffff@ha
    addi    r8, r4, unk_0000ffff@l
    stw     r31, 0x4c(sp)
    li      r0, 0x1
    addi    r12, r13, R13Off_m0x7534
    stw     r30, 0x48(sp)
    addi    r31, r13, R13Off_m0x7534
    addi    r30, r13, R13Off_m0x7534
    sth     r8, 0x4(r3)
    addi    r4, r13, R13Off_m0x7528
    addi    r5, r13, R13Off_m0x7528
    sth     r8, 0x6(r3)
    addi    r6, r13, R13Off_m0x7528
    li      r9, 0xc
    sth     r8, 0x8(r3)
    sth     r8, 0xa(r3)
    sth     r8, 0xc(r3)
    sth     r8, 0xe(r3)
    sth     r8, 0x10(r3)
    sth     r8, 0x12(r3)
    li      r8, 0x1c
    stb     r0, 0x54(r3)
    lha     r11, -0x7534(r13)
    sth     r11, 0xd6(r3)
    lha     r10, 0x2(r12)
    sth     r10, 0xd8(r3)
    lha     r10, 0x4(r31)
    sth     r10, 0xda(r3)
    lha     r10, 0x6(r30)
    sth     r10, 0xdc(r3)
    sth     r11, 0xde(r3)
    lha     r10, 0x2(r12)
    sth     r10, 0xe0(r3)
    lha     r10, 0x4(r31)
    sth     r10, 0xe2(r3)
    lha     r10, 0x6(r30)
    sth     r10, 0xe4(r3)
    sth     r11, 0xe6(r3)
    lha     r10, 0x2(r12)
    sth     r10, 0xe8(r3)
    lha     r10, 0x4(r31)
    sth     r10, 0xea(r3)
    lha     r10, 0x6(r30)
    sth     r10, 0xec(r3)
    lbz     r11, R13Off_m0x7528(r13)
    stb     r11, 0xf6(r3)
    lbz     r10, 0x1(r4)
    stb     r10, 0xf7(r3)
    lbz     r10, 0x2(r5)
    stb     r10, 0xf8(r3)
    lbz     r10, 0x3(r6)
    stb     r10, 0xf9(r3)
    stb     r11, 0xfa(r3)
    lbz     r10, 0x1(r4)
    stb     r10, 0xfb(r3)
    lbz     r10, 0x2(r5)
    stb     r10, 0xfc(r3)
    lbz     r10, 0x3(r6)
    stb     r10, 0xfd(r3)
    stb     r11, 0xfe(r3)
    lbz     r10, 0x1(r4)
    stb     r10, 0xff(r3)
    lbz     r10, 0x2(r5)
    stb     r10, 0x100(r3)
    lbz     r10, 0x3(r6)
    stb     r10, 0x101(r3)
    stb     r11, 0x102(r3)
    lbz     r4, 0x1(r4)
    stb     r4, 0x103(r3)
    lbz     r4, 0x2(r5)
    stb     r4, 0x104(r3)
    lbz     r4, 0x3(r6)
    stb     r4, 0x105(r3)
    stb     r9, 0x106(r3)
    stb     r9, 0x107(r3)
    stb     r9, 0x108(r3)
    stb     r9, 0x109(r3)
    stb     r9, 0x10a(r3)
    stb     r9, 0x10b(r3)
    stb     r9, 0x10c(r3)
    stb     r9, 0x10d(r3)
    stb     r9, 0x10e(r3)
    stb     r9, 0x10f(r3)
    stb     r9, 0x110(r3)
    stb     r9, 0x111(r3)
    stb     r9, 0x112(r3)
    stb     r9, 0x113(r3)
    stb     r9, 0x114(r3)
    stb     r9, 0x115(r3)
    stb     r8, 0x116(r3)
    stb     r8, 0x117(r3)
    stb     r8, 0x118(r3)
    stb     r8, 0x119(r3)
    stb     r8, 0x11a(r3)
    stb     r8, 0x11b(r3)
    stb     r8, 0x11c(r3)
    stb     r8, 0x11d(r3)
    stb     r8, 0x11e(r3)
    stb     r8, 0x11f(r3)
    stb     r8, 0x120(r3)
    stb     r8, 0x121(r3)
    stb     r8, 0x122(r3)
    stb     r8, 0x123(r3)
    stb     r8, 0x124(r3)
    stb     r8, 0x125(r3)
    li      r4, 0xc0
    stb     r4, 0x55(r3)
    slwi    r5, r0, 1
    li      r4, 0xc1
    stb     r4, 0x59(r3)
    addi    r4, r5, 0xc0
    li      r0, 0x2
    stb     r4, 0x5d(r3)
    slwi    r6, r0, 1
    addi    r4, r5, 0xc1
    stb     r4, 0x61(r3)
    addi    r4, r6, 0xc0
    li      r0, 0x3
    stb     r4, 0x65(r3)
    slwi    r5, r0, 1
    addi    r4, r6, 0xc1
    stb     r4, 0x69(r3)
    addi    r4, r5, 0xc0
    li      r0, 0x4
    stb     r4, 0x6d(r3)
    slwi    r7, r0, 1
    addi    r4, r5, 0xc1
    stb     r4, 0x71(r3)
    addi    r5, r7, 0xc0
    addi    r4, r7, 0xc1
    stb     r5, 0x75(r3)
    li      r0, 0x5
    slwi    r6, r0, 1
    stb     r4, 0x79(r3)
    slwi    r7, r9, 1
    addi    r4, r6, 0xc0
    stb     r4, 0x7d(r3)
    addi    r4, r6, 0xc1
    li      r0, 0x6
    slwi    r8, r0, 1
    stb     r4, 0x81(r3)
    addi    r0, r8, 0xc0
    stb     r0, 0x85(r3)
    addi    r5, r8, 0xc1
    li      r0, 0x7
    slwi    r9, r0, 1
    stb     r5, 0x89(r3)
    addi    r4, r9, 0xc0
    stb     r4, 0x8d(r3)
    addi    r0, r9, 0xc1
    li      r4, 0x9
    stb     r0, 0x91(r3)
    slwi    r5, r4, 1
    addi    r3, r3, 0x40
    li      r4, 0xd0
    stb     r4, 0x55(r3)
    li      r4, 0xd1
    li      r0, 0xa
    stb     r4, 0x59(r3)
    addi    r4, r5, 0xc0
    slwi    r6, r0, 1
    stb     r4, 0x5d(r3)
    addi    r4, r5, 0xc1
    li      r0, 0xb
    stb     r4, 0x61(r3)
    addi    r4, r6, 0xc0
    slwi    r5, r0, 1
    stb     r4, 0x65(r3)
    addi    r4, r6, 0xc1
    li      r0, 0xd
    stb     r4, 0x69(r3)
    addi    r4, r5, 0xc0
    slwi    r6, r0, 1
    stb     r4, 0x6d(r3)
    addi    r4, r5, 0xc1
    li      r0, 0xe
    stb     r4, 0x71(r3)
    addi    r5, r7, 0xc0
    slwi    r8, r0, 1
    stb     r5, 0x75(r3)
    addi    r4, r7, 0xc1
    li      r0, 0xf
    stb     r4, 0x79(r3)
    addi    r4, r6, 0xc0
    slwi    r9, r0, 1
    stb     r4, 0x7d(r3)
    addi    r4, r6, 0xc1
    addi    r0, r8, 0xc0
    stb     r4, 0x81(r3)
    addi    r5, r8, 0xc1
    addi    r4, r9, 0xc0
    stb     r0, 0x85(r3)
    addi    r0, r9, 0xc1
    stb     r5, 0x89(r3)
    stb     r4, 0x8d(r3)
    stb     r0, 0x91(r3)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x50
    blr


.globl createColorBlock__11J3DMaterialFi
createColorBlock__11J3DMaterialFi: # 0x802d6b14
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    bne-    branch_0x802d6bac
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802d6ba4
    lis     r3, __vvt__13J3DColorBlock@h
    stw     r31, 0x10(sp)
    addi    r0, r3, __vvt__13J3DColorBlock@l
    stw     r0, 0x0(r31)
    lis     r4, __vvt__21J3DColorBlockLightOff@h
    addi    r0, r4, __vvt__21J3DColorBlockLightOff@l
    lwz     r30, 0x10(sp)
    lis     r3, __ct__10J3DGXColorFv@h
    addi    r4, r3, __ct__10J3DGXColorFv@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x4
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x2
    bl      __construct_array
    lis     r3, __ct__12J3DColorChanFv@h
    addi    r4, r3, __ct__12J3DColorChanFv@l
    addi    r3, r30, 0xe
    li      r5, 0x0
    li      r6, 0x2
    li      r7, 0x4
    bl      __construct_array
    mr      r3, r30
    bl      initialize__21J3DColorBlockLightOffFv
branch_0x802d6ba4:
    mr      r3, r31
    b       branch_0x802d6c3c

branch_0x802d6bac:
    li      r3, 0x44
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802d6c38
    lis     r3, __vvt__13J3DColorBlock@h
    stw     r29, 0xc(sp)
    addi    r0, r3, __vvt__13J3DColorBlock@l
    stw     r0, 0x0(r29)
    lis     r4, __vvt__20J3DColorBlockLightOn@h
    lis     r3, __ct__10J3DGXColorFv@h
    lwz     r30, 0xc(sp)
    addi    r0, r4, __vvt__20J3DColorBlockLightOn@l
    addi    r31, r3, __ct__10J3DGXColorFv@l
    stw     r0, 0x0(r30)
    addi    r4, r31, 0x0
    addi    r3, r30, 0x4
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x2
    bl      __construct_array
    addi    r4, r31, 0x0
    addi    r3, r30, 0xc
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x2
    bl      __construct_array
    lis     r3, __ct__12J3DColorChanFv@h
    addi    r4, r3, __ct__12J3DColorChanFv@l
    addi    r3, r30, 0x16
    li      r5, 0x0
    li      r6, 0x2
    li      r7, 0x4
    bl      __construct_array
    mr      r3, r30
    bl      initialize__20J3DColorBlockLightOnFv
branch_0x802d6c38:
    mr      r3, r29
branch_0x802d6c3c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__12J3DColorChanFv
__ct__12J3DColorChanFv: # 0x802d6c58
    mflr    r0
    addi    r4, r13, R13Off_m0x7518
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lbz     r8, 0x5(r4)
    addis   r0, r8, 0x0
    cmplwi  r0, 0xffff
    bne-    branch_0x802d6c84
    li      r8, 0x0
branch_0x802d6c84:
    addi    r7, r13, R13Off_m0x7518
    lbz     r3, R13Off_m0x7518(r13)
    lbz     r4, 0x1(r7)
    lbz     r5, 0x2(r7)
    lbz     r6, 0x3(r7)
    lbz     r7, 0x4(r7)
    bl      calcColorChanID__FUsUcUcUcUcUc
    sth     r3, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcColorChanID__FUsUcUcUcUcUc
calcColorChanID__FUsUcUcUcUcUc: # 0x802d6cbc
    stwu    sp, -0x20(sp)
    clrlwi  r0, r5, 31
    neg     r10, r0
    stw     r31, 0x1c(sp)
    subic   r9, r10, 0x1
    rlwinm  r0, r5, 0, 30, 30
    stw     r30, 0x18(sp)
    neg     r11, r0
    subfe   r10, r9, r10
    stw     r29, 0x14(sp)
    subic   r9, r11, 0x1
    rlwinm  r0, r5, 0, 29, 29
    stw     r28, 0x10(sp)
    clrlslwi  r28, r3, 16, 1
    clrlwi  r3, r4, 24
    or      r3, r28, r3
    rlwinm  r4, r3, 0, 26, 24
    clrlslwi  r3, r8, 24, 6
    or      r3, r4, r3
    rlwinm  r4, r3, 0, 30, 28
    clrlslwi  r3, r10, 24, 2
    subfe   r9, r9, r11
    neg     r12, r0
    or      r3, r4, r3
    subic   r0, r12, 0x1
    rlwinm  r11, r5, 0, 28, 28
    rlwinm  r4, r3, 0, 29, 27
    clrlslwi  r3, r9, 24, 3
    subfe   r0, r0, r12
    neg     r29, r11
    or      r3, r4, r3
    subic   r12, r29, 0x1
    rlwinm  r11, r5, 0, 27, 27
    neg     r30, r11
    subfe   r29, r12, r29
    subic   r12, r30, 0x1
    rlwinm  r11, r5, 0, 26, 26
    neg     r31, r11
    subfe   r30, r12, r30
    subic   r12, r31, 0x1
    rlwinm  r11, r5, 0, 25, 25
    subfe   r31, r12, r31
    neg     r12, r11
    subic   r11, r12, 0x1
    rlwinm  r3, r3, 0, 28, 26
    clrlslwi  r0, r0, 24, 4
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 27, 25
    clrlslwi  r0, r29, 24, 5
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 21, 19
    clrlslwi  r0, r30, 24, 11
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 20, 18
    clrlslwi  r0, r31, 24, 12
    or      r0, r3, r0
    rlwinm  r5, r5, 0, 24, 24
    subfe   r12, r11, r12
    neg     r11, r5
    subic   r5, r11, 0x1
    rlwinm  r3, r0, 0, 19, 17
    clrlslwi  r0, r12, 24, 13
    subfe   r11, r5, r11
    or      r0, r3, r0
    rlwinm  r3, r0, 0, 18, 16
    clrlslwi  r0, r11, 24, 14
    clrlwi. r5, r7, 24
    or      r8, r3, r0
    bne-    branch_0x802d6dd8
    li      r6, 0x0
    b       branch_0x802d6ddc

branch_0x802d6dd8:
    clrlwi  r6, r6, 24
branch_0x802d6ddc:
    clrlwi  r5, r7, 24
    lwz     r31, 0x1c(sp)
    subfic  r3, r5, 0x2
    lwz     r30, 0x18(sp)
    subic   r0, r3, 0x1
    lwz     r29, 0x14(sp)
    subfe   r4, r0, r3
    lwz     r28, 0x10(sp)
    neg     r3, r5
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    rlwinm  r5, r8, 0, 25, 22
    slwi    r3, r6, 7
    or      r3, r5, r3
    rlwinm  r5, r3, 0, 23, 21
    clrlslwi  r3, r4, 24, 9
    or      r3, r5, r3
    rlwinm  r3, r3, 0, 22, 20
    clrlslwi  r0, r0, 24, 10
    or      r0, r3, r0
    clrlwi  r3, r0, 16
    addi    sp, sp, 0x20
    blr


.globl __ct__10J3DGXColorFv
__ct__10J3DGXColorFv: # 0x802d6e38
    blr


.globl __dt__13J3DColorBlockFv
__dt__13J3DColorBlockFv: # 0x802d6e3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d6e70
    lis     r3, __vvt__13J3DColorBlock@h
    addi    r3, r3, __vvt__13J3DColorBlock@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802d6e70
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d6e70:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createTexGenBlock__11J3DMaterialFi
createTexGenBlock__11J3DMaterialFi: # 0x802d6e88
    mflr    r0
    li      r3, 0x5c
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802d6f3c
    lis     r3, __vvt__14J3DTexGenBlock@h
    stw     r30, 0x18(sp)
    addi    r0, r3, __vvt__14J3DTexGenBlock@l
    stw     r0, 0x0(r30)
    lis     r4, __vvt__19J3DTexGenBlockBasic@h
    addi    r0, r4, __vvt__19J3DTexGenBlockBasic@l
    lwz     r31, 0x18(sp)
    lis     r3, __ct__11J3DTexCoordFv@h
    addi    r4, r3, __ct__11J3DTexCoordFv@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x8
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x8
    bl      __construct_array
    lis     r3, j3dDefaultNBTScaleInfo@h
    addi    r4, r3, j3dDefaultNBTScaleInfo@l
    lbz     r3, 0x0(r4)
    li      r0, 0x0
    stb     r3, 0x48(r31)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4c(r31)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x50(r31)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x54(r31)
    stw     r0, 0x4(r31)
    stw     r0, 0x28(r31)
    stw     r0, 0x2c(r31)
    stw     r0, 0x30(r31)
    stw     r0, 0x34(r31)
    stw     r0, 0x38(r31)
    stw     r0, 0x3c(r31)
    stw     r0, 0x40(r31)
    stw     r0, 0x44(r31)
    stw     r0, 0x58(r31)
branch_0x802d6f3c:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__11J3DTexCoordFv
__ct__11J3DTexCoordFv: # 0x802d6f58
    lis     r4, 0x803e
    lbzu    r0, 0x15d8(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr


.globl __dt__14J3DTexGenBlockFv
__dt__14J3DTexGenBlockFv: # 0x802d6f78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d6fac
    lis     r3, __vvt__14J3DTexGenBlock@h
    addi    r3, r3, __vvt__14J3DTexGenBlock@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802d6fac
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d6fac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createTevBlock__11J3DMaterialFi
createTevBlock__11J3DMaterialFi: # 0x802d6fc4
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    bgt-    branch_0x802d708c
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802d7084
    lis     r3, __vvt__11J3DTevBlock@h
    stw     r31, 0x18(sp)
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
    lis     r4, __vvt__12J3DTevBlock1@h
    addi    r0, r4, __vvt__12J3DTevBlock1@l
    lwz     r30, 0x18(sp)
    lis     r3, __ct__11J3DTevOrderFv@h
    addi    r4, r3, __ct__11J3DTevOrderFv@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x6
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x1
    bl      __construct_array
    lis     r3, __ct__11J3DTevStageFv@h
    addi    r4, r3, __ct__11J3DTevStageFv@l
    addi    r3, r30, 0xa
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x1
    bl      __construct_array
    lis     r3, __ct__14J3DIndTevStageFv@h
    addi    r4, r3, __ct__14J3DIndTevStageFv@l
    addi    r3, r30, 0x12
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x1
    bl      __construct_array
    lis     r3, unk_0000ffff@ha
    addi    r0, r3, unk_0000ffff@l
    sth     r0, 0x4(r30)
    li      r3, 0xc0
    li      r0, 0xc1
    stb     r3, 0xa(r30)
    stb     r0, 0xe(r30)
branch_0x802d7084:
    mr      r0, r31
    b       branch_0x802d7358

branch_0x802d708c:
    cmpwi   r3, 0x2
    bne-    branch_0x802d717c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802d7174
    lis     r3, __vvt__11J3DTevBlock@h
    stw     r31, 0x14(sp)
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
    lis     r4, __vvt__12J3DTevBlock2@h
    addi    r0, r4, __vvt__12J3DTevBlock2@l
    lwz     r30, 0x14(sp)
    lis     r3, __ct__11J3DTevOrderFv@h
    addi    r4, r3, __ct__11J3DTevOrderFv@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x8
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x2
    bl      __construct_array
    lis     r3, __ct__13J3DGXColorS10Fv@h
    addi    r4, r3, __ct__13J3DGXColorS10Fv@l
    addi    r3, r30, 0x10
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__11J3DTevStageFv@h
    addi    r4, r3, __ct__11J3DTevStageFv@l
    addi    r3, r30, 0x31
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x2
    bl      __construct_array
    lis     r3, __ct__10J3DGXColorFv@h
    addi    r4, r3, __ct__10J3DGXColorFv@l
    addi    r3, r30, 0x41
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__19J3DTevSwapModeTableFv@h
    addi    r4, r3, __ct__19J3DTevSwapModeTableFv@l
    addi    r3, r30, 0x55
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__14J3DIndTevStageFv@h
    addi    r4, r3, __ct__14J3DIndTevStageFv@l
    addi    r3, r30, 0x59
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x2
    bl      __construct_array
    mr      r3, r30
    bl      initialize__12J3DTevBlock2Fv
branch_0x802d7174:
    mr      r0, r31
    b       branch_0x802d7358

branch_0x802d717c:
    cmpwi   r3, 0x4
    bgt-    branch_0x802d726c
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802d7264
    lis     r3, __vvt__11J3DTevBlock@h
    stw     r31, 0x10(sp)
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
    lis     r4, __vvt__12J3DTevBlock4@h
    addi    r0, r4, __vvt__12J3DTevBlock4@l
    lwz     r30, 0x10(sp)
    lis     r3, __ct__11J3DTevOrderFv@h
    addi    r4, r3, __ct__11J3DTevOrderFv@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0xc
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__11J3DTevStageFv@h
    addi    r4, r3, __ct__11J3DTevStageFv@l
    addi    r3, r30, 0x1d
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__13J3DGXColorS10Fv@h
    addi    r4, r3, __ct__13J3DGXColorS10Fv@l
    addi    r3, r30, 0x3e
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__10J3DGXColorFv@h
    addi    r4, r3, __ct__10J3DGXColorFv@l
    addi    r3, r30, 0x5e
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__19J3DTevSwapModeTableFv@h
    addi    r4, r3, __ct__19J3DTevSwapModeTableFv@l
    addi    r3, r30, 0x76
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__14J3DIndTevStageFv@h
    addi    r4, r3, __ct__14J3DIndTevStageFv@l
    addi    r3, r30, 0x7a
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x4
    bl      __construct_array
    mr      r3, r30
    bl      initialize__12J3DTevBlock4Fv
branch_0x802d7264:
    mr      r0, r31
    b       branch_0x802d7358

branch_0x802d726c:
    cmpwi   r3, 0x10
    bgt-    branch_0x802d7358
    li      r3, 0x1ec
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802d7354
    lis     r3, __vvt__11J3DTevBlock@h
    stw     r31, 0xc(sp)
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
    lis     r4, __vvt__13J3DTevBlock16@h
    addi    r0, r4, __vvt__13J3DTevBlock16@l
    lwz     r30, 0xc(sp)
    lis     r3, __ct__11J3DTevOrderFv@h
    addi    r4, r3, __ct__11J3DTevOrderFv@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x14
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x10
    bl      __construct_array
    lis     r3, __ct__11J3DTevStageFv@h
    addi    r4, r3, __ct__11J3DTevStageFv@l
    addi    r3, r30, 0x55
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x10
    bl      __construct_array
    lis     r3, __ct__13J3DGXColorS10Fv@h
    addi    r4, r3, __ct__13J3DGXColorS10Fv@l
    addi    r3, r30, 0xd6
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__10J3DGXColorFv@h
    addi    r4, r3, __ct__10J3DGXColorFv@l
    addi    r3, r30, 0xf6
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__19J3DTevSwapModeTableFv@h
    addi    r4, r3, __ct__19J3DTevSwapModeTableFv@l
    addi    r3, r30, 0x126
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x4
    bl      __construct_array
    lis     r3, __ct__14J3DIndTevStageFv@h
    addi    r4, r3, __ct__14J3DIndTevStageFv@l
    addi    r3, r30, 0x12a
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x10
    bl      __construct_array
    mr      r3, r30
    bl      initialize__13J3DTevBlock16Fv
branch_0x802d7354:
    mr      r0, r31
branch_0x802d7358:
    mr      r3, r0
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__19J3DTevSwapModeTableFv
__ct__19J3DTevSwapModeTableFv: # 0x802d7374
    lbz     r0, R13Off_m0x7510(r13)
    stb     r0, 0x0(r3)
    blr


.globl __ct__13J3DGXColorS10Fv
__ct__13J3DGXColorS10Fv: # 0x802d7380
    blr


.globl __ct__14J3DIndTevStageFv
__ct__14J3DIndTevStageFv: # 0x802d7384
    lis     r4, 0x803e
    lbzu    r0, 0x168c(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r3)
    lbz     r0, 0x4(r4)
    stb     r0, 0x4(r3)
    lbz     r0, 0x5(r4)
    stb     r0, 0x5(r3)
    lbz     r0, 0x6(r4)
    stb     r0, 0x6(r3)
    lbz     r0, 0x7(r4)
    stb     r0, 0x7(r3)
    lbz     r0, 0x8(r4)
    stb     r0, 0x8(r3)
    blr


.globl __ct__11J3DTevStageFv
__ct__11J3DTevStageFv: # 0x802d73d4
    mflr    r0
    lis     r4, j3dDefaultTevStageInfo@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, j3dDefaultTevStageInfo@l
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lbz     r4, 0x5(r31)
    lbz     r5, 0x6(r31)
    lbz     r6, 0x7(r31)
    lbz     r7, 0x8(r31)
    lbz     r8, 0x9(r31)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r31)
    mr      r3, r30
    lbz     r0, 0x2(r31)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r30)
    lbz     r4, 0x3(r31)
    lbz     r0, 0x4(r31)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r30)
    lbz     r0, 0xa(r31)
    lbz     r5, 0xb(r31)
    lbz     r4, 0x6(r30)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r31)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r31)
    srawi   r4, r7, 1
    stb     r0, 0x6(r30)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r30)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r30)
    lbz     r5, 0x6(r30)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r30)
    lbz     r4, 0x7(r30)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r30)
    lbz     r4, 0x7(r30)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r30)
    lbz     r4, 0xe(r31)
    lbz     r5, 0xf(r31)
    lbz     r6, 0x10(r31)
    lbz     r7, 0x11(r31)
    lbz     r8, 0x12(r31)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
    addi    r3, r13, R13Off_m0x7524
    lbz     r4, 0x7(r30)
    lbz     r0, 0x1(r3)
    addi    r3, r30, 0x0
    rlwinm  r4, r4, 0, 30, 27
    slwi    r0, r0, 2
    or      r0, r4, r0
    stb     r0, 0x7(r30)
    lbz     r4, 0x7(r30)
    lbz     r0, R13Off_m0x7524(r13)
    clrrwi  r4, r4, 2
    or      r0, r4, r0
    stb     r0, 0x7(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__11J3DTevOrderFv
__ct__11J3DTevOrderFv: # 0x802d7508
    lbz     r0, R13Off_m0x753c(r13)
    addi    r4, r13, R13Off_m0x753c
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r3)
    blr


.globl __dt__11J3DTevBlockFv
__dt__11J3DTevBlockFv: # 0x802d7528
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d755c
    lis     r3, __vvt__11J3DTevBlock@h
    addi    r3, r3, __vvt__11J3DTevBlock@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802d755c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d755c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createIndBlock__11J3DMaterialFi
createIndBlock__11J3DMaterialFi: # 0x802d7574
    mflr    r0
    cmpwi   r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    beq-    branch_0x802d762c
    li      r3, 0x7c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802d7624
    lis     r3, __vvt__11J3DIndBlock@h
    stw     r30, 0x10(sp)
    addi    r0, r3, __vvt__11J3DIndBlock@l
    stw     r0, 0x0(r30)
    lis     r4, __vvt__15J3DIndBlockFull@h
    addi    r0, r4, __vvt__15J3DIndBlockFull@l
    lwz     r31, 0x10(sp)
    lis     r3, __ct__14J3DIndTexOrderFv@h
    addi    r4, r3, __ct__14J3DIndTexOrderFv@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x5
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    lis     r4, __ct__12J3DIndTexMtxFv@h
    lis     r3, __dt__12J3DIndTexMtxFv@h
    addi    r5, r3, __dt__12J3DIndTexMtxFv@l
    addi    r4, r4, __ct__12J3DIndTexMtxFv@l
    addi    r3, r31, 0x18
    li      r6, 0x1c
    li      r7, 0x3
    bl      __construct_array
    lis     r4, __ct__19J3DIndTexCoordScaleFv@h
    lis     r3, __dt__19J3DIndTexCoordScaleFv@h
    addi    r5, r3, __dt__19J3DIndTexCoordScaleFv@l
    addi    r4, r4, __ct__19J3DIndTexCoordScaleFv@l
    addi    r3, r31, 0x6c
    li      r6, 0x4
    li      r7, 0x4
    bl      __construct_array
    li      r0, 0x0
    stb     r0, 0x4(r31)
branch_0x802d7624:
    mr      r3, r30
    b       branch_0x802d7654

branch_0x802d762c:
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802d7654
    lis     r4, __vvt__11J3DIndBlock@h
    addi    r0, r4, __vvt__11J3DIndBlock@l
    lis     r4, __vvt__15J3DIndBlockNull@h
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__15J3DIndBlockNull@l
    stw     r0, 0x0(r3)
branch_0x802d7654:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__19J3DIndTexCoordScaleFv
__dt__19J3DIndTexCoordScaleFv: # 0x802d766c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d7694
    extsh.  r0, r4
    ble-    branch_0x802d7694
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d7694:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__19J3DIndTexCoordScaleFv
__ct__19J3DIndTexCoordScaleFv: # 0x802d76ac
    lbz     r0, R13Off_m0x752c(r13)
    addi    r4, r13, R13Off_m0x752c
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    blr


.globl __dt__12J3DIndTexMtxFv
__dt__12J3DIndTexMtxFv: # 0x802d76c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d76ec
    extsh.  r0, r4
    ble-    branch_0x802d76ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d76ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12J3DIndTexMtxFv
__ct__12J3DIndTexMtxFv: # 0x802d7704
    lis     r4, 0x803e
    lfsu    f0, 0x165c(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x14(r3)
    lbz     r0, 0x18(r4)
    stb     r0, 0x18(r3)
    blr


.globl __ct__14J3DIndTexOrderFv
__ct__14J3DIndTexOrderFv: # 0x802d7744
    lbz     r0, R13Off_m0x7538(r13)
    addi    r4, r13, R13Off_m0x7538
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    blr


.globl __dt__11J3DIndBlockFv
__dt__11J3DIndBlockFv: # 0x802d775c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d7790
    lis     r3, __vvt__11J3DIndBlock@h
    addi    r3, r3, __vvt__11J3DIndBlock@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802d7790
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d7790:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createPEBlock__11J3DMaterialFiUl
createPEBlock__11J3DMaterialFiUl: # 0x802d77a8
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x802d7858
    clrlwi. r0, r4, 31
    beq-    branch_0x802d77f0
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802d78e0
    lis     r4, __vvt__10J3DPEBlock@h
    addi    r0, r4, __vvt__10J3DPEBlock@l
    lis     r4, __vvt__13J3DPEBlockOpa@h
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__13J3DPEBlockOpa@l
    stw     r0, 0x0(r3)
    b       branch_0x802d78e0

branch_0x802d77f0:
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x802d7824
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802d78e0
    lis     r4, __vvt__10J3DPEBlock@h
    addi    r0, r4, __vvt__10J3DPEBlock@l
    lis     r4, __vvt__17J3DPEBlockTexEdge@h
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__17J3DPEBlockTexEdge@l
    stw     r0, 0x0(r3)
    b       branch_0x802d78e0

branch_0x802d7824:
    rlwinm. r0, r4, 0, 29, 29
    beq-    branch_0x802d7858
    li      r3, 0x4
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802d78e0
    lis     r4, __vvt__10J3DPEBlock@h
    addi    r0, r4, __vvt__10J3DPEBlock@l
    lis     r4, __vvt__13J3DPEBlockXlu@h
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__13J3DPEBlockXlu@l
    stw     r0, 0x0(r3)
    b       branch_0x802d78e0

branch_0x802d7858:
    li      r3, 0x14
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802d78e0
    lis     r4, __vvt__10J3DPEBlock@h
    addi    r0, r4, __vvt__10J3DPEBlock@l
    lis     r4, __vvt__14J3DPEBlockFull@h
    stw     r0, 0x0(r3)
    addi    r0, r4, __vvt__14J3DPEBlockFull@l
    stw     r0, 0x0(r3)
    lis     r4, unk_0000ffff@ha
    li      r7, 0x0
    lhz     r0, -0x750e(r13)
    addi    r6, r13, R13Off_m0x751c
    addi    r4, r4, unk_0000ffff@l
    sth     r0, 0x8(r3)
    li      r0, 0xff
    stb     r7, 0xa(r3)
    stb     r7, 0xb(r3)
    lbz     r5, R13Off_m0x751c(r13)
    stb     r5, 0xc(r3)
    lbz     r5, 0x1(r6)
    stb     r5, 0xd(r3)
    lbz     r5, 0x2(r6)
    stb     r5, 0xe(r3)
    lbz     r5, 0x3(r6)
    stb     r5, 0xf(r3)
    lhz     r5, -0x750c(r13)
    sth     r5, 0x10(r3)
    stw     r7, 0x4(r3)
    sth     r4, 0x8(r3)
    sth     r4, 0x10(r3)
    stb     r0, 0x12(r3)
    stb     r0, 0x13(r3)
branch_0x802d78e0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__10J3DPEBlockFv
__dt__10J3DPEBlockFv: # 0x802d78f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802d7924
    lis     r3, __vvt__10J3DPEBlock@h
    addi    r3, r3, __vvt__10J3DPEBlock@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802d7924
    mr      r3, r31
    bl      __dl__FPv
branch_0x802d7924:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initialize__11J3DMaterialFv
initialize__11J3DMaterialFv: # 0x802d793c
    li      r6, 0x0
    stw     r6, 0x4(r3)
    lis     r4, unk_0000ffff@ha
    li      r5, 0x1
    stw     r6, 0x0(r3)
    addi    r0, r4, unk_0000ffff@l
    stw     r5, 0x8(r3)
    sth     r0, 0xc(r3)
    stw     r6, 0x10(r3)
    stw     r6, 0x18(r3)
    stw     r6, 0x1c(r3)
    stw     r6, 0x20(r3)
    stw     r6, 0x24(r3)
    stw     r6, 0x28(r3)
    stw     r6, 0x2c(r3)
    stw     r6, 0x30(r3)
    stw     r6, 0x34(r3)
    stw     r6, 0x38(r3)
    stw     r6, 0x3c(r3)
    blr


.globl addShape__11J3DMaterialFP8J3DShape
addShape__11J3DMaterialFP8J3DShape: # 0x802d798c
    stw     r4, 0x4(r3)
    blr


.globl countDLSize__21J3DColorBlockLightOffFv
countDLSize__21J3DColorBlockLightOffFv: # 0x802d7994
    li      r3, 0x60
    blr


.globl countDLSize__20J3DColorBlockLightOnFv
countDLSize__20J3DColorBlockLightOnFv: # 0x802d799c
    li      r3, 0x140
    blr


.globl countDLSize__19J3DTexGenBlockBasicFv
countDLSize__19J3DTexGenBlockBasicFv: # 0x802d79a4
    li      r3, 0x260
    blr


.globl countDLSize__12J3DTevBlock1Fv
countDLSize__12J3DTevBlock1Fv: # 0x802d79ac
    li      r3, 0x80
    blr


.globl countDLSize__12J3DTevBlock2Fv
countDLSize__12J3DTevBlock2Fv: # 0x802d79b4
    li      r3, 0x180
    blr


.globl countDLSize__12J3DTevBlock4Fv
countDLSize__12J3DTevBlock4Fv: # 0x802d79bc
    li      r3, 0x260
    blr


.globl countDLSize__13J3DTevBlock16Fv
countDLSize__13J3DTevBlock16Fv: # 0x802d79c4
    li      r3, 0x580
    blr


.globl countDLSize__15J3DIndBlockFullFv
countDLSize__15J3DIndBlockFullFv: # 0x802d79cc
    li      r3, 0x64
    blr


.globl countDLSize__13J3DPEBlockOpaFv
countDLSize__13J3DPEBlockOpaFv: # 0x802d79d4
    li      r3, 0x20
    blr


.globl countDLSize__17J3DPEBlockTexEdgeFv
countDLSize__17J3DPEBlockTexEdgeFv: # 0x802d79dc
    li      r3, 0x20
    blr


.globl countDLSize__13J3DPEBlockXluFv
countDLSize__13J3DPEBlockXluFv: # 0x802d79e4
    li      r3, 0x20
    blr


.globl countDLSize__14J3DPEBlockFullFv
countDLSize__14J3DPEBlockFullFv: # 0x802d79ec
    li      r3, 0x60
    blr


.globl countDLSize__11J3DMaterialFv
countDLSize__11J3DMaterialFv: # 0x802d79f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    lwz     r3, 0x20(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r30, r3
    lwz     r3, 0x28(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    add     r31, r31, r3
    lwz     r3, 0x2c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    add     r31, r31, r3
    lwz     r3, 0x30(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    add     r3, r31, r3
    add     r3, r30, r3
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl load__21J3DColorBlockLightOffFv
load__21J3DColorBlockLightOffFv: # 0x802d7aa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r29, r3, 0x0
    addi    r25, sp, 0x24
    li      r26, 0x0
    li      r27, 0x0
branch_0x802d7ac8:
    addi    r0, r27, 0x4
    lwzx    r0, r29, r0
    addi    r4, r25, 0x0
    addi    r3, r26, 0x4
    stw     r0, 0x24(sp)
    bl      J3DGDSetChanMatColor__F12_GXChannelID8_GXColor
    addi    r26, r26, 0x1
    cmplwi  r26, 0x2
    addi    r27, r27, 0x4
    blt+    branch_0x802d7ac8
    lis     r3, unk_803a9f90@ha
    addi    r31, r3, unk_803a9f90@l
    addi    r25, sp, 0x10
    addi    r26, sp, 0x14
    li      r30, 0x0
    li      r28, 0x0
    li      r27, 0x0
branch_0x802d7b0c:
    lwz     r5, 0x0(r31)
    addi    r0, r27, 0xe
    lwz     r4, 0x4(r31)
    lwz     r3, R2Off_0x250(r2)
    stw     r5, 0x14(sp)
    stw     r4, 0x18(sp)
    lwz     r5, 0x8(r31)
    lwz     r4, 0xc(r31)
    stw     r5, 0x1c(sp)
    stw     r4, 0x20(sp)
    stw     r3, 0x10(sp)
    lhzx    r7, r29, r0
    lwzx    r3, r26, r28
    extrwi  r0, r7, 2, 21
    lbzx    r9, r25, r0
    rlwinm  r0, r7, 25, 24, 27
    rlwimi  r0, r7, 30, 28, 31
    extrwi  r8, r7, 2, 23
    clrlwi  r6, r7, 31
    extrwi  r5, r7, 1, 25
    extrwi  r4, r7, 1, 30
    clrlwi  r7, r0, 24
    bl      J3DGDSetChanCtrl__F12_GXChannelIDUc11_GXColorSrc11_GXColorSrcUl12_GXDiffuseFn9_GXAttnFn
    addi    r30, r30, 0x1
    cmplwi  r30, 0x4
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
    blt+    branch_0x802d7b0c
    lbz     r3, 0x16(r29)
    cmplwi  r3, 0xff
    beq-    branch_0x802d7b8c
    bl      loadCullMode__FUc
branch_0x802d7b8c:
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__20J3DColorBlockLightOnFv
load__20J3DColorBlockLightOnFv: # 0x802d7ba0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r25, 0x34(sp)
    addi    r29, r3, 0x0
    addi    r25, sp, 0x28
    li      r26, 0x0
    li      r27, 0x0
branch_0x802d7bc0:
    addi    r0, r27, 0x4
    lwzx    r0, r29, r0
    addi    r4, r25, 0x0
    addi    r3, r26, 0x4
    stw     r0, 0x28(sp)
    bl      J3DGDSetChanMatColor__F12_GXChannelID8_GXColor
    addi    r26, r26, 0x1
    cmplwi  r26, 0x2
    addi    r27, r27, 0x4
    blt+    branch_0x802d7bc0
    addi    r25, sp, 0x24
    li      r26, 0x0
    li      r27, 0x0
branch_0x802d7bf4:
    addi    r0, r27, 0xc
    lwzx    r0, r29, r0
    addi    r4, r25, 0x0
    addi    r3, r26, 0x4
    stw     r0, 0x24(sp)
    bl      J3DGDSetChanAmbColor__F12_GXChannelID8_GXColor
    addi    r26, r26, 0x1
    cmplwi  r26, 0x2
    addi    r27, r27, 0x4
    blt+    branch_0x802d7bf4
    lis     r3, unk_803a9f90@ha
    addi    r31, r3, unk_803a9f90@l
    addi    r25, sp, 0x10
    addi    r26, sp, 0x14
    li      r30, 0x0
    li      r28, 0x0
    li      r27, 0x0
branch_0x802d7c38:
    lwz     r5, 0x0(r31)
    addi    r0, r27, 0x16
    lwz     r4, 0x4(r31)
    lwz     r3, R2Off_0x250(r2)
    stw     r5, 0x14(sp)
    stw     r4, 0x18(sp)
    lwz     r5, 0x8(r31)
    lwz     r4, 0xc(r31)
    stw     r5, 0x1c(sp)
    stw     r4, 0x20(sp)
    stw     r3, 0x10(sp)
    lhzx    r7, r29, r0
    lwzx    r3, r26, r28
    extrwi  r0, r7, 2, 21
    lbzx    r9, r25, r0
    rlwinm  r0, r7, 25, 24, 27
    rlwimi  r0, r7, 30, 28, 31
    extrwi  r8, r7, 2, 23
    clrlwi  r6, r7, 31
    extrwi  r5, r7, 1, 25
    extrwi  r4, r7, 1, 30
    clrlwi  r7, r0, 24
    bl      J3DGDSetChanCtrl__F12_GXChannelIDUc11_GXColorSrc11_GXColorSrcUl12_GXDiffuseFn9_GXAttnFn
    addi    r30, r30, 0x1
    cmplwi  r30, 0x4
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
    blt+    branch_0x802d7c38
    li      r25, 0x0
    li      r30, 0x0
branch_0x802d7cb0:
    addi    r0, r30, 0x20
    lwzx    r3, r29, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802d7cc8
    mr      r4, r25
    bl      load__11J3DLightObjCFUl
branch_0x802d7cc8:
    addi    r25, r25, 0x1
    cmplwi  r25, 0x8
    addi    r30, r30, 0x4
    blt+    branch_0x802d7cb0
    lbz     r3, 0x40(r29)
    cmplwi  r3, 0xff
    beq-    branch_0x802d7ce8
    bl      loadCullMode__FUc
branch_0x802d7ce8:
    lmw     r25, 0x34(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl load__19J3DTexGenBlockBasicFv
load__19J3DTexGenBlockBasicFv: # 0x802d7cfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x802d7d48

branch_0x802d7d24:
    add     r4, r29, r31
    lbz     r5, 0x9(r4)
    mr      r3, r30
    lbz     r4, 0x8(r4)
    li      r6, 0x0
    li      r7, 0x7d
    bl      J3DGDSetTexCoordGen__F13_GXTexCoordID13_GXTexGenType12_GXTexGenSrcUcUl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x802d7d48:
    lwz     r0, 0x4(r29)
    cmplw   r30, r0
    blt+    branch_0x802d7d24
    lwz     r4, R13Off_m0x5778(r13)
    li      r30, 0x0
    li      r31, 0x0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x8(r4)
    subf    r0, r3, r0
    stw     r0, 0x58(r29)
branch_0x802d7d70:
    addi    r0, r31, 0x28
    lwzx    r3, r29, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802d7d88
    mr      r4, r30
    bl      load__9J3DTexMtxCFUl
branch_0x802d7d88:
    addi    r30, r30, 0x1
    cmplwi  r30, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x802d7d70
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl patch__19J3DTexGenBlockBasicFv
patch__19J3DTexGenBlockBasicFv: # 0x802d7db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r0, 0x58(r3)
    lwz     r3, 0x0(r4)
    add     r0, r3, r0
    stw     r0, 0x8(r4)
    lwz     r3, R13Off_m0x5778(r13)
    lwz     r30, 0x8(r3)
branch_0x802d7df8:
    addi    r0, r31, 0x28
    lwzx    r3, r28, r0
    cmplwi  r3, 0x0
    beq-    branch_0x802d7e10
    mr      r4, r29
    bl      load__9J3DTexMtxCFUl
branch_0x802d7e10:
    addi    r29, r29, 0x1
    cmplwi  r29, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x802d7df8
    lwz     r4, R13Off_m0x5778(r13)
    mr      r3, r30
    lwz     r0, 0x8(r4)
    subf    r4, r30, r0
    bl      DCFlushRange
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl load__12J3DTevBlock1Fv
load__12J3DTevBlock1Fv: # 0x802d7e54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0xffff
    beq-    branch_0x802d7e80
    li      r3, 0x0
    addi    r4, r31, 0x4
    bl      loadTexNo__FUlRCUs
branch_0x802d7e80:
    addi    r6, r31, 0x6
    lbz     r4, 0x6(r31)
    li      r3, 0x0
    lbz     r5, 0x7(r31)
    li      r7, 0xff
    lbz     r6, 0x2(r6)
    li      r8, 0xff
    li      r9, 0xff
    bl      JRNISetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
    lbz     r5, 0x7(r31)
    lis     r4, sTexCoordScaleTable__6J3DSys@h
    addi    r0, r4, sTexCoordScaleTable__6J3DSys@l
    lbz     r3, 0x6(r31)
    clrlslwi  r4, r5, 29, 3
    add     r7, r0, r4
    lhz     r4, 0x4(r7)
    li      r6, 0x0
    lhz     r0, 0x6(r7)
    li      r9, 0x0
    subfic  r5, r4, 0x1
    subfic  r0, r0, 0x1
    lhz     r4, 0x0(r7)
    cntlzw  r5, r5
    lhz     r7, 0x2(r7)
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0xa
    cmplw   r3, r0
    ble-    branch_0x802d7f0c
    bl      GDOverflowed
branch_0x802d7f0c:
    lwz     r5, R13Off_m0x5778(r13)
    li      r9, 0x61
    lwz     r10, 0xa(r31)
    li      r3, 0x0
    lwz     r4, 0x8(r5)
    srwi    r8, r10, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    extrwi  r7, r10, 8, 8
    extrwi  r6, r10, 8, 16
    stb     r9, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r10, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r10, 0xe(r31)
    lwz     r4, 0x8(r5)
    srwi    r8, r10, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    extrwi  r7, r10, 8, 8
    extrwi  r6, r10, 8, 16
    stb     r9, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r10, 0x0(r4)
    lbz     r0, 0x19(r31)
    stw     r0, 0x8(sp)
    lbz     r0, 0x1a(r31)
    stw     r0, 0xc(sp)
    lbz     r4, 0x12(r31)
    lbz     r5, 0x13(r31)
    lbz     r6, 0x14(r31)
    lbz     r7, 0x15(r31)
    lbz     r8, 0x16(r31)
    lbz     r9, 0x17(r31)
    lbz     r10, 0x18(r31)
    bl      JRNSetTevIndirect__F13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__12J3DTevBlock2Fv
load__12J3DTevBlock2Fv: # 0x802d8040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r22, 0x38(sp)
    mr      r31, r3
    li      r22, 0x0
    li      r26, 0x0
    lbz     r27, 0x30(r3)
branch_0x802d8060:
    addi    r4, r26, 0x4
    add     r4, r31, r4
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802d807c
    mr      r3, r22
    bl      loadTexNo__FUlRCUs
branch_0x802d807c:
    addi    r22, r22, 0x1
    cmplwi  r22, 0x2
    addi    r26, r26, 0x2
    blt+    branch_0x802d8060
    addi    r9, r31, 0xc
    addi    r6, r31, 0x8
    lbz     r7, 0xc(r31)
    lbz     r4, 0x8(r31)
    li      r3, 0x0
    lbz     r5, 0x9(r31)
    lbz     r6, 0x2(r6)
    lbz     r8, 0xd(r31)
    lbz     r9, 0x2(r9)
    bl      JRNISetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
    lbz     r0, 0x9(r31)
    lis     r4, sTexCoordScaleTable__6J3DSys@h
    addi    r26, r4, sTexCoordScaleTable__6J3DSys@l
    lbz     r3, 0x8(r31)
    clrlslwi  r0, r0, 29, 3
    add     r7, r26, r0
    lhz     r4, 0x4(r7)
    li      r6, 0x0
    lhz     r0, 0x6(r7)
    li      r9, 0x0
    subfic  r5, r4, 0x1
    subfic  r0, r0, 0x1
    lhz     r4, 0x0(r7)
    cntlzw  r5, r5
    lhz     r7, 0x2(r7)
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r3, 0xd(r31)
    li      r6, 0x0
    lbz     r0, 0xc(r31)
    li      r9, 0x0
    clrlslwi  r3, r3, 29, 3
    add     r7, r26, r3
    lhz     r4, 0x4(r7)
    clrlwi  r3, r0, 29
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    addi    r22, sp, 0x2c
    li      r23, 0x0
    li      r26, 0x0
branch_0x802d8154:
    addi    r0, r26, 0x10
    add     r3, r31, r0
    lwz     r5, 0x0(r3)
    mr      r4, r22
    lwz     r0, 0x4(r3)
    addi    r3, r23, 0x1
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      JRNISetTevColorS10__F11_GXTevRegID11_GXColorS10
    addi    r23, r23, 0x1
    cmplwi  r23, 0x3
    addi    r26, r26, 0x8
    blt+    branch_0x802d8154
    addi    r22, sp, 0x28
    li      r23, 0x0
    li      r26, 0x0
branch_0x802d8194:
    addi    r0, r26, 0x41
    lwzx    r0, r31, r0
    addi    r3, r23, 0x0
    addi    r4, r22, 0x0
    stw     r0, 0x28(sp)
    bl      J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
    addi    r23, r23, 0x1
    cmplwi  r23, 0x4
    addi    r26, r26, 0x4
    blt+    branch_0x802d8194
    li      r28, 0x0
    li      r26, 0x0
    li      r29, 0x0
    b       branch_0x802d8320

branch_0x802d81cc:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0xa
    cmplw   r3, r0
    ble-    branch_0x802d81e8
    bl      GDOverflowed
branch_0x802d81e8:
    lwz     r6, R13Off_m0x5778(r13)
    addi    r4, r29, 0x31
    add     r4, r31, r4
    lwz     r5, 0x8(r6)
    li      r0, 0x61
    lwz     r12, 0x0(r4)
    add     r10, r31, r26
    addi    r3, r5, 0x1
    stw     r3, 0x8(r6)
    srwi    r11, r12, 24
    extrwi  r9, r12, 8, 8
    stb     r0, 0x0(r5)
    extrwi  r8, r12, 8, 16
    mr      r3, r28
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r11, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r9, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r8, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r12, 0x0(r6)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r9, 0x4(r4)
    lwz     r5, 0x8(r6)
    srwi    r8, r9, 24
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    extrwi  r7, r9, 8, 8
    extrwi  r6, r9, 8, 16
    stb     r0, 0x0(r5)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r9, 0x0(r4)
    lbz     r0, 0x60(r10)
    stw     r0, 0x8(sp)
    lbz     r0, 0x61(r10)
    stw     r0, 0xc(sp)
    lbz     r4, 0x59(r10)
    lbz     r5, 0x5a(r10)
    lbz     r6, 0x5b(r10)
    lbz     r7, 0x5c(r10)
    lbz     r8, 0x5d(r10)
    lbz     r9, 0x5e(r10)
    lbz     r10, 0x5f(r10)
    bl      JRNSetTevIndirect__F13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
    addi    r28, r28, 0x1
    addi    r26, r26, 0xc
    addi    r29, r29, 0x8
branch_0x802d8320:
    cmplw   r28, r27
    blt+    branch_0x802d81cc
    lis     r3, j3dTevSwapTableTable@h
    addi    r30, r3, j3dTevSwapTableTable@l
    li      r26, 0x0
branch_0x802d8334:
    srwi    r3, r26, 2
    lwz     r5, R13Off_m0x5778(r13)
    addi    r27, r3, 0x55
    lbz     r28, 0x54(r31)
    add     r27, r31, r27
    lwz     r3, 0x8(r5)
    lbz     r4, 0x0(r27)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x5
    slwi    r4, r4, 2
    lbz     r29, 0x52(r31)
    add     r4, r30, r4
    cmplw   r3, r0
    lbz     r22, 0x1(r4)
    lbz     r23, 0x0(r4)
    lbz     r24, 0x53(r31)
    lbz     r25, 0x51(r31)
    ble-    branch_0x802d8380
    bl      GDOverflowed
branch_0x802d8380:
    lwz     r5, R13Off_m0x5778(r13)
    srawi   r3, r26, 1
    addze   r3, r3
    lwz     r4, 0x8(r5)
    addi    r7, r3, 0xf6
    slwi    r0, r22, 2
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    li      r5, 0x61
    slwi    r3, r25, 4
    stb     r5, 0x0(r4)
    or      r0, r23, r0
    slwi    r5, r24, 9
    lwz     r4, R13Off_m0x5778(r13)
    or      r0, r3, r0
    or      r0, r5, r0
    slwi    r6, r29, 14
    lwz     r3, 0x8(r4)
    slwi    r5, r28, 19
    or      r0, r6, r0
    or      r5, r5, r0
    addi    r0, r3, 0x1
    clrlwi  r8, r5, 8
    stw     r0, 0x8(r4)
    insrwi  r8, r7, 8, 0
    srwi    r0, r8, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r8, 8, 8
    extrwi  r5, r8, 8, 16
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
    lwz     r5, R13Off_m0x5778(r13)
    lbz     r0, 0x0(r27)
    lwz     r3, 0x8(r5)
    slwi    r4, r0, 2
    lwz     r0, 0xc(r5)
    add     r4, r30, r4
    lbz     r29, 0x54(r31)
    addi    r3, r3, 0x5
    lbz     r25, 0x3(r4)
    cmplw   r3, r0
    lbz     r24, 0x2(r4)
    lbz     r28, 0x52(r31)
    lbz     r23, 0x53(r31)
    lbz     r22, 0x51(r31)
    ble-    branch_0x802d8470
    bl      GDOverflowed
branch_0x802d8470:
    lwz     r6, R13Off_m0x5778(r13)
    addi    r3, r26, 0x2
    srawi   r3, r3, 1
    lwz     r5, 0x8(r6)
    slwi    r0, r25, 2
    addze   r3, r3
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    li      r4, 0x61
    addi    r8, r3, 0xf6
    stb     r4, 0x0(r5)
    addi    r26, r26, 0x4
    slwi    r3, r22, 4
    lwz     r4, R13Off_m0x5778(r13)
    or      r0, r24, r0
    or      r0, r3, r0
    lwz     r3, 0x8(r4)
    slwi    r5, r23, 9
    or      r5, r5, r0
    addi    r0, r3, 0x1
    slwi    r6, r28, 14
    stw     r0, 0x8(r4)
    slwi    r7, r29, 19
    or      r0, r6, r5
    or      r0, r7, r0
    clrlwi  r7, r0, 8
    insrwi  r7, r8, 8, 0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, R13Off_m0x5778(r13)
    cmplwi  r26, 0x10
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
    blt+    branch_0x802d8334
    lmw     r22, 0x38(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl load__12J3DTevBlock4Fv
load__12J3DTevBlock4Fv: # 0x802d8544
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r21, 0x3c(sp)
    mr      r31, r3
    li      r21, 0x0
    li      r25, 0x0
    lbz     r26, 0x1c(r3)
branch_0x802d8564:
    addi    r4, r25, 0x4
    add     r4, r31, r4
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802d8580
    mr      r3, r21
    bl      loadTexNo__FUlRCUs
branch_0x802d8580:
    addi    r21, r21, 0x1
    cmplwi  r21, 0x4
    addi    r25, r25, 0x2
    blt+    branch_0x802d8564
    lis     r3, sTexCoordScaleTable__6J3DSys@h
    addi    r30, r3, sTexCoordScaleTable__6J3DSys@l
    li      r29, 0x0
    li      r25, 0x0
    b       branch_0x802d8674

branch_0x802d85a4:
    addi    r0, r29, 0x1
    slwi    r0, r0, 2
    add     r28, r31, r0
    addi    r27, r28, 0xc
    add     r22, r31, r25
    lbz     r7, 0xc(r28)
    addi    r21, r22, 0xc
    lbz     r8, 0xd(r28)
    lbz     r4, 0xc(r22)
    mr      r3, r29
    lbz     r5, 0xd(r22)
    lbz     r6, 0xe(r22)
    lbz     r9, 0xe(r28)
    bl      JRNISetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
    lbz     r3, 0xd(r22)
    li      r6, 0x0
    lbz     r0, 0x0(r21)
    li      r9, 0x0
    clrlslwi  r3, r3, 29, 3
    add     r7, r30, r3
    lhz     r4, 0x4(r7)
    clrlwi  r3, r0, 29
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r3, 0xd(r28)
    li      r6, 0x0
    lbz     r0, 0x0(r27)
    li      r9, 0x0
    clrlslwi  r3, r3, 29, 3
    add     r7, r30, r3
    lhz     r4, 0x4(r7)
    clrlwi  r3, r0, 29
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    addi    r29, r29, 0x2
    addi    r25, r25, 0x8
branch_0x802d8674:
    cmplw   r29, r26
    blt+    branch_0x802d85a4
    addi    r21, sp, 0x2c
    li      r22, 0x0
    li      r25, 0x0
branch_0x802d8688:
    addi    r0, r25, 0x3e
    add     r3, r31, r0
    lwz     r5, 0x0(r3)
    mr      r4, r21
    lwz     r0, 0x4(r3)
    addi    r3, r22, 0x1
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      JRNISetTevColorS10__F11_GXTevRegID11_GXColorS10
    addi    r22, r22, 0x1
    cmplwi  r22, 0x3
    addi    r25, r25, 0x8
    blt+    branch_0x802d8688
    addi    r21, sp, 0x28
    li      r22, 0x0
    li      r25, 0x0
branch_0x802d86c8:
    addi    r0, r25, 0x5e
    lwzx    r0, r31, r0
    addi    r3, r22, 0x0
    addi    r4, r21, 0x0
    stw     r0, 0x28(sp)
    bl      J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
    addi    r22, r22, 0x1
    cmplwi  r22, 0x4
    addi    r25, r25, 0x4
    blt+    branch_0x802d86c8
    li      r27, 0x0
    li      r25, 0x0
    li      r28, 0x0
    b       branch_0x802d8854

branch_0x802d8700:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0xa
    cmplw   r3, r0
    ble-    branch_0x802d871c
    bl      GDOverflowed
branch_0x802d871c:
    lwz     r6, R13Off_m0x5778(r13)
    addi    r4, r28, 0x1d
    add     r4, r31, r4
    lwz     r5, 0x8(r6)
    li      r0, 0x61
    lwz     r12, 0x0(r4)
    add     r10, r31, r25
    addi    r3, r5, 0x1
    stw     r3, 0x8(r6)
    srwi    r11, r12, 24
    extrwi  r9, r12, 8, 8
    stb     r0, 0x0(r5)
    extrwi  r8, r12, 8, 16
    mr      r3, r27
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r11, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r9, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r8, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r12, 0x0(r6)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r9, 0x4(r4)
    lwz     r5, 0x8(r6)
    srwi    r8, r9, 24
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    extrwi  r7, r9, 8, 8
    extrwi  r6, r9, 8, 16
    stb     r0, 0x0(r5)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r9, 0x0(r4)
    lbz     r0, 0x81(r10)
    stw     r0, 0x8(sp)
    lbz     r0, 0x82(r10)
    stw     r0, 0xc(sp)
    lbz     r4, 0x7a(r10)
    lbz     r5, 0x7b(r10)
    lbz     r6, 0x7c(r10)
    lbz     r7, 0x7d(r10)
    lbz     r8, 0x7e(r10)
    lbz     r9, 0x7f(r10)
    lbz     r10, 0x80(r10)
    bl      JRNSetTevIndirect__F13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
    addi    r27, r27, 0x1
    addi    r25, r25, 0xc
    addi    r28, r28, 0x8
branch_0x802d8854:
    cmplw   r27, r26
    blt+    branch_0x802d8700
    lis     r3, j3dTevSwapTableTable@h
    addi    r30, r3, j3dTevSwapTableTable@l
    li      r25, 0x0
branch_0x802d8868:
    srwi    r3, r25, 2
    lwz     r5, R13Off_m0x5778(r13)
    addi    r27, r3, 0x76
    add     r27, r31, r27
    lwz     r3, 0x8(r5)
    lbz     r4, 0x0(r27)
    add     r26, r31, r25
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x5
    slwi    r4, r4, 2
    add     r4, r30, r4
    lbz     r28, 0x73(r26)
    cmplw   r3, r0
    lbz     r21, 0x1(r4)
    lbz     r22, 0x0(r4)
    lbz     r29, 0x6f(r26)
    lbz     r23, 0x72(r26)
    lbz     r24, 0x6e(r26)
    ble-    branch_0x802d88b8
    bl      GDOverflowed
branch_0x802d88b8:
    lwz     r5, R13Off_m0x5778(r13)
    srawi   r3, r25, 1
    addze   r3, r3
    lwz     r4, 0x8(r5)
    addi    r7, r3, 0xf6
    slwi    r0, r21, 2
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    li      r5, 0x61
    slwi    r3, r24, 4
    stb     r5, 0x0(r4)
    or      r0, r22, r0
    slwi    r5, r23, 9
    lwz     r4, R13Off_m0x5778(r13)
    or      r0, r3, r0
    or      r0, r5, r0
    slwi    r6, r29, 14
    lwz     r3, 0x8(r4)
    slwi    r5, r28, 19
    or      r0, r6, r0
    or      r5, r5, r0
    addi    r0, r3, 0x1
    clrlwi  r8, r5, 8
    stw     r0, 0x8(r4)
    insrwi  r8, r7, 8, 0
    srwi    r0, r8, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r8, 8, 8
    extrwi  r5, r8, 8, 16
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
    lbz     r0, 0x0(r27)
    lwz     r5, R13Off_m0x5778(r13)
    slwi    r4, r0, 2
    lbz     r27, 0x75(r26)
    add     r4, r30, r4
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x5
    lbz     r23, 0x3(r4)
    cmplw   r3, r0
    lbz     r22, 0x2(r4)
    lbz     r29, 0x71(r26)
    lbz     r28, 0x74(r26)
    lbz     r21, 0x70(r26)
    ble-    branch_0x802d89a8
    bl      GDOverflowed
branch_0x802d89a8:
    lwz     r6, R13Off_m0x5778(r13)
    addi    r3, r25, 0x2
    srawi   r3, r3, 1
    lwz     r5, 0x8(r6)
    slwi    r0, r23, 2
    addze   r3, r3
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    li      r4, 0x61
    addi    r8, r3, 0xf6
    stb     r4, 0x0(r5)
    addi    r25, r25, 0x4
    slwi    r3, r21, 4
    lwz     r4, R13Off_m0x5778(r13)
    or      r0, r22, r0
    or      r0, r3, r0
    lwz     r3, 0x8(r4)
    slwi    r5, r28, 9
    or      r5, r5, r0
    addi    r0, r3, 0x1
    slwi    r6, r29, 14
    stw     r0, 0x8(r4)
    slwi    r7, r27, 19
    or      r0, r6, r5
    or      r0, r7, r0
    clrlwi  r7, r0, 8
    insrwi  r7, r8, 8, 0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, R13Off_m0x5778(r13)
    cmplwi  r25, 0x10
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
    blt+    branch_0x802d8868
    lmw     r21, 0x3c(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl load__13J3DTevBlock16Fv
load__13J3DTevBlock16Fv: # 0x802d8a7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r21, 0x3c(sp)
    mr      r31, r3
    li      r21, 0x0
    li      r25, 0x0
    lbz     r26, 0x54(r3)
branch_0x802d8a9c:
    addi    r4, r25, 0x4
    add     r4, r31, r4
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0xffff
    beq-    branch_0x802d8ab8
    mr      r3, r21
    bl      loadTexNo__FUlRCUs
branch_0x802d8ab8:
    addi    r21, r21, 0x1
    cmplwi  r21, 0x8
    addi    r25, r25, 0x2
    blt+    branch_0x802d8a9c
    lis     r3, sTexCoordScaleTable__6J3DSys@h
    addi    r30, r3, sTexCoordScaleTable__6J3DSys@l
    li      r29, 0x0
    li      r25, 0x0
    b       branch_0x802d8bac

branch_0x802d8adc:
    addi    r0, r29, 0x1
    slwi    r0, r0, 2
    add     r28, r31, r0
    addi    r27, r28, 0x14
    add     r22, r31, r25
    lbz     r7, 0x14(r28)
    addi    r21, r22, 0x14
    lbz     r8, 0x15(r28)
    lbz     r4, 0x14(r22)
    mr      r3, r29
    lbz     r5, 0x15(r22)
    lbz     r6, 0x16(r22)
    lbz     r9, 0x16(r28)
    bl      JRNISetTevOrder__F13_GXTevStageID13_GXTexCoordID11_GXTexMapID12_GXChannelID13_GXTexCoordID11_GXTexMapID12_GXChannelID
    lbz     r3, 0x15(r22)
    li      r6, 0x0
    lbz     r0, 0x0(r21)
    li      r9, 0x0
    clrlslwi  r3, r3, 29, 3
    add     r7, r30, r3
    lhz     r4, 0x4(r7)
    clrlwi  r3, r0, 29
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r3, 0x15(r28)
    li      r6, 0x0
    lbz     r0, 0x0(r27)
    li      r9, 0x0
    clrlslwi  r3, r3, 29, 3
    add     r7, r30, r3
    lhz     r4, 0x4(r7)
    clrlwi  r3, r0, 29
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    addi    r29, r29, 0x2
    addi    r25, r25, 0x8
branch_0x802d8bac:
    cmplw   r29, r26
    blt+    branch_0x802d8adc
    addi    r21, sp, 0x2c
    li      r22, 0x0
    li      r25, 0x0
branch_0x802d8bc0:
    addi    r0, r25, 0xd6
    add     r3, r31, r0
    lwz     r5, 0x0(r3)
    mr      r4, r21
    lwz     r0, 0x4(r3)
    addi    r3, r22, 0x1
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    bl      JRNISetTevColorS10__F11_GXTevRegID11_GXColorS10
    addi    r22, r22, 0x1
    cmplwi  r22, 0x3
    addi    r25, r25, 0x8
    blt+    branch_0x802d8bc0
    addi    r21, sp, 0x28
    li      r22, 0x0
    li      r25, 0x0
branch_0x802d8c00:
    addi    r0, r25, 0xf6
    lwzx    r0, r31, r0
    addi    r3, r22, 0x0
    addi    r4, r21, 0x0
    stw     r0, 0x28(sp)
    bl      J3DGDSetTevKColor__F14_GXTevKColorID8_GXColor
    addi    r22, r22, 0x1
    cmplwi  r22, 0x4
    addi    r25, r25, 0x4
    blt+    branch_0x802d8c00
    li      r27, 0x0
    li      r25, 0x0
    li      r28, 0x0
    b       branch_0x802d8d8c

branch_0x802d8c38:
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0xa
    cmplw   r3, r0
    ble-    branch_0x802d8c54
    bl      GDOverflowed
branch_0x802d8c54:
    lwz     r6, R13Off_m0x5778(r13)
    addi    r4, r28, 0x55
    add     r4, r31, r4
    lwz     r5, 0x8(r6)
    li      r0, 0x61
    lwz     r12, 0x0(r4)
    add     r10, r31, r25
    addi    r3, r5, 0x1
    stw     r3, 0x8(r6)
    srwi    r11, r12, 24
    extrwi  r9, r12, 8, 8
    stb     r0, 0x0(r5)
    extrwi  r8, r12, 8, 16
    mr      r3, r27
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r11, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r9, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r8, 0x0(r6)
    lwz     r7, R13Off_m0x5778(r13)
    lwz     r6, 0x8(r7)
    addi    r5, r6, 0x1
    stw     r5, 0x8(r7)
    stb     r12, 0x0(r6)
    lwz     r6, R13Off_m0x5778(r13)
    lwz     r9, 0x4(r4)
    lwz     r5, 0x8(r6)
    srwi    r8, r9, 24
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    extrwi  r7, r9, 8, 8
    extrwi  r6, r9, 8, 16
    stb     r0, 0x0(r5)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r9, 0x0(r4)
    lbz     r0, 0x131(r10)
    stw     r0, 0x8(sp)
    lbz     r0, 0x132(r10)
    stw     r0, 0xc(sp)
    lbz     r4, 0x12a(r10)
    lbz     r5, 0x12b(r10)
    lbz     r6, 0x12c(r10)
    lbz     r7, 0x12d(r10)
    lbz     r8, 0x12e(r10)
    lbz     r9, 0x12f(r10)
    lbz     r10, 0x130(r10)
    bl      JRNSetTevIndirect__F13_GXTevStageID16_GXIndTexStageID15_GXIndTexFormat16_GXIndTexBiasSel14_GXIndTexMtxID13_GXIndTexWrap13_GXIndTexWrapUcUc17_GXIndTexAlphaSel
    addi    r27, r27, 0x1
    addi    r25, r25, 0xc
    addi    r28, r28, 0x8
branch_0x802d8d8c:
    cmplw   r27, r26
    blt+    branch_0x802d8c38
    lis     r3, j3dTevSwapTableTable@h
    addi    r30, r3, j3dTevSwapTableTable@l
    li      r25, 0x0
branch_0x802d8da0:
    srwi    r3, r25, 2
    lwz     r5, R13Off_m0x5778(r13)
    addi    r27, r3, 0x126
    add     r27, r31, r27
    lwz     r3, 0x8(r5)
    lbz     r4, 0x0(r27)
    add     r26, r31, r25
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x5
    slwi    r4, r4, 2
    add     r4, r30, r4
    lbz     r28, 0x117(r26)
    cmplw   r3, r0
    lbz     r21, 0x1(r4)
    lbz     r22, 0x0(r4)
    lbz     r29, 0x107(r26)
    lbz     r23, 0x116(r26)
    lbz     r24, 0x106(r26)
    ble-    branch_0x802d8df0
    bl      GDOverflowed
branch_0x802d8df0:
    lwz     r5, R13Off_m0x5778(r13)
    srawi   r3, r25, 1
    addze   r3, r3
    lwz     r4, 0x8(r5)
    addi    r7, r3, 0xf6
    slwi    r0, r21, 2
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    li      r5, 0x61
    slwi    r3, r24, 4
    stb     r5, 0x0(r4)
    or      r0, r22, r0
    slwi    r5, r23, 9
    lwz     r4, R13Off_m0x5778(r13)
    or      r0, r3, r0
    or      r0, r5, r0
    slwi    r6, r29, 14
    lwz     r3, 0x8(r4)
    slwi    r5, r28, 19
    or      r0, r6, r0
    or      r5, r5, r0
    addi    r0, r3, 0x1
    clrlwi  r8, r5, 8
    stw     r0, 0x8(r4)
    insrwi  r8, r7, 8, 0
    srwi    r0, r8, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r8, 8, 8
    extrwi  r5, r8, 8, 16
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
    lbz     r0, 0x0(r27)
    lwz     r5, R13Off_m0x5778(r13)
    slwi    r4, r0, 2
    lbz     r27, 0x119(r26)
    add     r4, r30, r4
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    addi    r3, r3, 0x5
    lbz     r23, 0x3(r4)
    cmplw   r3, r0
    lbz     r22, 0x2(r4)
    lbz     r29, 0x109(r26)
    lbz     r28, 0x118(r26)
    lbz     r21, 0x108(r26)
    ble-    branch_0x802d8ee0
    bl      GDOverflowed
branch_0x802d8ee0:
    lwz     r6, R13Off_m0x5778(r13)
    addi    r3, r25, 0x2
    srawi   r3, r3, 1
    lwz     r5, 0x8(r6)
    slwi    r0, r23, 2
    addze   r3, r3
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    li      r4, 0x61
    addi    r8, r3, 0xf6
    stb     r4, 0x0(r5)
    addi    r25, r25, 0x4
    slwi    r3, r21, 4
    lwz     r4, R13Off_m0x5778(r13)
    or      r0, r22, r0
    or      r0, r3, r0
    lwz     r3, 0x8(r4)
    slwi    r5, r28, 9
    or      r5, r5, r0
    addi    r0, r3, 0x1
    slwi    r6, r29, 14
    stw     r0, 0x8(r4)
    slwi    r7, r27, 19
    or      r0, r6, r5
    or      r0, r7, r0
    clrlwi  r7, r0, 8
    insrwi  r7, r8, 8, 0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
    lwz     r4, R13Off_m0x5778(r13)
    cmplwi  r25, 0x10
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
    blt+    branch_0x802d8da0
    lmw     r21, 0x3c(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl load__15J3DIndBlockFullFP11J3DTevBlock
load__15J3DIndBlockFullFP11J3DTevBlock: # 0x802d8fb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    li      r30, 0x0
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    li      r28, 0x0
    lbz     r29, 0x4(r3)
    b       branch_0x802d9000

branch_0x802d8fe4:
    add     r4, r31, r30
    lbz     r5, 0x30(r4)
    addi    r3, r28, 0x1
    addi    r4, r4, 0x18
    bl      JRNSetIndTexMtx__F14_GXIndTexMtxIDPA3_fSc
    addi    r28, r28, 0x1
    addi    r30, r30, 0x1c
branch_0x802d9000:
    cmplw   r28, r29
    blt+    branch_0x802d8fe4
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x802d9038

branch_0x802d9014:
    add     r4, r31, r30
    lbz     r7, 0x71(r4)
    mr      r3, r28
    lbz     r6, 0x70(r4)
    lbz     r5, 0x6d(r4)
    lbz     r4, 0x6c(r4)
    bl      JRNSetIndTexCoordScale__F16_GXIndTexStageID14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale14_GXIndTexScale
    addi    r28, r28, 0x2
    addi    r30, r30, 0x8
branch_0x802d9038:
    cmplw   r28, r29
    blt+    branch_0x802d9014
    lbz     r0, 0x6(r31)
    lis     r4, sTexCoordScaleTable__6J3DSys@h
    addi    r30, r4, sTexCoordScaleTable__6J3DSys@l
    lbz     r3, 0x5(r31)
    clrlslwi  r0, r0, 29, 3
    add     r7, r30, r0
    lhz     r4, 0x4(r7)
    li      r6, 0x0
    lhz     r0, 0x6(r7)
    li      r9, 0x0
    subfic  r5, r4, 0x1
    subfic  r0, r0, 0x1
    lhz     r4, 0x0(r7)
    cntlzw  r5, r5
    lhz     r7, 0x2(r7)
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r0, 0xa(r31)
    li      r6, 0x0
    lbz     r3, 0x9(r31)
    li      r9, 0x0
    clrlslwi  r0, r0, 29, 3
    add     r7, r30, r0
    lhz     r4, 0x4(r7)
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r0, 0xe(r31)
    li      r6, 0x0
    lbz     r3, 0xd(r31)
    li      r9, 0x0
    clrlslwi  r0, r0, 29, 3
    add     r7, r30, r0
    lhz     r4, 0x4(r7)
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r0, 0x12(r31)
    li      r6, 0x0
    lbz     r3, 0x11(r31)
    li      r9, 0x0
    clrlslwi  r0, r0, 29, 3
    add     r7, r30, r0
    lhz     r4, 0x4(r7)
    lhz     r0, 0x6(r7)
    subfic  r5, r4, 0x1
    lhz     r4, 0x0(r7)
    subfic  r0, r0, 0x1
    lhz     r7, 0x2(r7)
    cntlzw  r5, r5
    cntlzw  r0, r0
    srwi    r5, r5, 5
    srwi    r8, r0, 5
    bl      J3DGDSetTexCoordScale2__F13_GXTexCoordIDUsUcUcUsUcUc
    lbz     r10, 0x11(r31)
    mr      r3, r29
    lbz     r9, 0xe(r31)
    lbz     r8, 0xd(r31)
    lbz     r7, 0xa(r31)
    lbz     r6, 0x9(r31)
    lbz     r5, 0x6(r31)
    lbz     r4, 0x5(r31)
    lbz     r0, 0x12(r31)
    stw     r0, 0x8(sp)
    bl      JRNSetIndTexOrder__FUl13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID13_GXTexCoordID11_GXTexMapID
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl load__13J3DPEBlockOpaFv
load__13J3DPEBlockOpaFv: # 0x802d91a4
    mflr    r0
    li      r3, 0x7
    stw     r0, 0x4(sp)
    li      r4, 0x0
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    li      r6, 0x7
    li      r7, 0x0
    bl      GDSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x3
    bl      GDSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GDSetZMode
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802d9208
    bl      GDOverflowed
branch_0x802d9208:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0xfe
    lwz     r3, 0x8(r4)
    li      r6, 0x0
    li      r5, 0x40
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
    ble-    branch_0x802d9298
    bl      GDOverflowed
branch_0x802d9298:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0x43
    lwz     r3, 0x8(r4)
    li      r6, 0x0
    li      r5, 0x40
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
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__17J3DPEBlockTexEdgeFv
load__17J3DPEBlockTexEdgeFv: # 0x802d931c
    mflr    r0
    li      r3, 0x6
    stw     r0, 0x4(sp)
    li      r4, 0x80
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    li      r6, 0x3
    li      r7, 0xff
    bl      GDSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x3
    bl      GDSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GDSetZMode
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802d9380
    bl      GDOverflowed
branch_0x802d9380:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0xfe
    lwz     r3, 0x8(r4)
    li      r6, 0x0
    li      r5, 0x40
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
    ble-    branch_0x802d9410
    bl      GDOverflowed
branch_0x802d9410:
    lwz     r4, R13Off_m0x5778(r13)
    li      r7, 0x61
    li      r6, 0x43
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
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__13J3DPEBlockXluFv
load__13J3DPEBlockXluFv: # 0x802d9490
    mflr    r0
    li      r3, 0x7
    stw     r0, 0x4(sp)
    li      r4, 0x0
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    li      r6, 0x7
    li      r7, 0x0
    bl      GDSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x3
    bl      GDSetBlendMode
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GDSetZMode
    lwz     r4, R13Off_m0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x5
    cmplw   r3, r0
    ble-    branch_0x802d94f4
    bl      GDOverflowed
branch_0x802d94f4:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0xfe
    lwz     r3, 0x8(r4)
    li      r6, 0x0
    li      r5, 0x40
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
    ble-    branch_0x802d9584
    bl      GDOverflowed
branch_0x802d9584:
    lwz     r4, R13Off_m0x5778(r13)
    li      r8, 0x61
    li      r7, 0x43
    lwz     r3, 0x8(r4)
    li      r6, 0x0
    li      r5, 0x40
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
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__14J3DPEBlockFullFv
load__14J3DPEBlockFullFv: # 0x802d9608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    lwz     r30, 0x4(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x802d9660
    lwz     r0, 0x14(r30)
    addi    r4, sp, 0xc
    stw     r0, 0xc(sp)
    lbz     r3, 0x0(r30)
    lfs     f1, 0x4(r30)
    lfs     f2, 0x8(r30)
    lfs     f3, 0xc(r30)
    lfs     f4, 0x10(r30)
    bl      J3DGDSetFog__F10_GXFogTypeffff8_GXColor
    lbz     r3, 0x1(r30)
    addi    r5, r30, 0x18
    lhz     r4, 0x2(r30)
    bl      JRNISetFogRangeAdj__FUcUsP14_GXFogAdjTable
branch_0x802d9660:
    lhz     r0, 0x8(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x802d9694
    mulli   r5, r0, 0x3
    lbz     r7, 0xb(r31)
    lbz     r4, 0xa(r31)
    lis     r3, j3dAlphaCmpTable@h
    addi    r0, r3, j3dAlphaCmpTable@l
    add     r3, r0, r5
    lbz     r6, 0x2(r3)
    lbz     r5, 0x1(r3)
    lbz     r3, 0x0(r3)
    bl      GDSetAlphaCompare
branch_0x802d9694:
    lbz     r3, 0xc(r31)
    lbz     r4, 0xd(r31)
    lbz     r5, 0xe(r31)
    lbz     r6, 0xf(r31)
    bl      GDSetBlendMode
    lhz     r0, 0x10(r31)
    cmplwi  r0, 0xffff
    beq-    branch_0x802d96d4
    mulli   r4, r0, 0x3
    lis     r3, j3dZModeTable@h
    addi    r0, r3, j3dZModeTable@l
    add     r3, r0, r4
    lbz     r5, 0x2(r3)
    lbz     r4, 0x1(r3)
    lbz     r3, 0x0(r3)
    bl      GDSetZMode
branch_0x802d96d4:
    lbz     r30, 0x12(r31)
    cmplwi  r30, 0xff
    beq-    branch_0x802d9718
    li      r3, 0x5
    bl      GDOverflowCheck_802d97b8
    li      r3, 0x61
    bl      __GDWrite
    lis     r3, unk_fe000040@h
    addi    r3, r3, unk_fe000040@l
    bl      J3DGDWrite_u32__FUl
    li      r3, 0x5
    bl      GDOverflowCheck_802d97b8
    li      r3, 0x61
    bl      __GDWrite
    slwi    r0, r30, 6
    oris    r3, r0, 0x4300
    bl      J3DGDWrite_u32__FUl
branch_0x802d9718:
    lbz     r3, 0x13(r31)
    cmplwi  r3, 0xff
    beq-    branch_0x802d9728
    bl      loadDither__FUc
branch_0x802d9728:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl J3DGDWrite_u32__FUl
J3DGDWrite_u32__FUl: # 0x802d9740
    lwz     r5, R13Off_m0x5778(r13)
    srwi    r8, r3, 24
    extrwi  r7, r3, 8, 8
    lwz     r4, 0x8(r5)
    extrwi  r6, r3, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r3, 0x0(r4)
    blr


.globl __GDWrite
__GDWrite: # 0x802d97a0
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r3, 0x0(r4)
    blr


.globl GDOverflowCheck_802d97b8
GDOverflowCheck_802d97b8: # 0x802d97b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, R13Off_m0x5778(r13)
    lwz     r4, 0x8(r5)
    lwz     r0, 0xc(r5)
    add     r3, r4, r3
    cmplw   r3, r0
    ble-    branch_0x802d97e0
    bl      GDOverflowed
branch_0x802d97e0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__21J3DColorBlockLightOffFP13J3DColorBlock
reset__21J3DColorBlockLightOffFP13J3DColorBlock: # 0x802d97f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    stb     r3, 0xc(r28)
    li      r30, 0x0
    li      r31, 0x0
branch_0x802d9834:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    addi    r30, r30, 0x1
    add     r3, r28, r31
    cmplwi  r30, 0x2
    stw     r0, 0x4(r3)
    addi    r31, r31, 0x4
    blt+    branch_0x802d9834
    li      r30, 0x0
    li      r31, 0x0
branch_0x802d9870:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    addi    r30, r30, 0x1
    add     r3, r28, r31
    cmplwi  r30, 0x4
    sth     r0, 0xe(r3)
    addi    r31, r31, 0x2
    blt+    branch_0x802d9870
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl reset__20J3DColorBlockLightOnFP13J3DColorBlock
reset__20J3DColorBlockLightOnFP13J3DColorBlock: # 0x802d98c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    stb     r3, 0x14(r30)
    li      r27, 0x0
    li      r29, 0x0
branch_0x802d98fc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r27
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    addi    r27, r27, 0x1
    add     r3, r30, r29
    cmplwi  r27, 0x2
    stw     r0, 0x4(r3)
    addi    r29, r29, 0x4
    blt+    branch_0x802d98fc
    li      r27, 0x0
    li      r29, 0x0
branch_0x802d9938:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r27
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    addi    r27, r27, 0x1
    add     r3, r30, r29
    cmplwi  r27, 0x4
    sth     r0, 0x16(r3)
    addi    r29, r29, 0x2
    blt+    branch_0x802d9938
    li      r27, 0x0
    li      r29, 0x0
branch_0x802d9974:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r27
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802d99b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r27
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    add     r3, r30, r29
    stw     r0, 0xc(r3)
branch_0x802d99b8:
    addi    r27, r27, 0x1
    cmplwi  r27, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x802d9974
    lis     r3, j3dDefaultLightInfo@h
    addi    r28, r3, j3dDefaultLightInfo@l
    li      r26, 0x0
    li      r29, 0x0
branch_0x802d99d8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r26
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802d9a60
    addi    r27, r29, 0x20
    add     r27, r30, r27
    lwz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x802d9a2c
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802d9a28
    addi    r3, r25, 0x0
    addi    r4, r28, 0x0
    bl      __as__12J3DLightInfoFRC12J3DLightInfo
branch_0x802d9a28:
    stw     r25, 0x0(r27)
branch_0x802d9a2c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r26
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    mr      r4, r3
    lwz     r3, 0x0(r27)
    li      r5, 0x74
    bl      memcpy
    lwz     r3, 0x0(r27)
    li      r4, 0x74
    bl      DCStoreRange
branch_0x802d9a60:
    addi    r26, r26, 0x1
    cmplwi  r26, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x802d99d8
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __as__12J3DLightInfoFRC12J3DLightInfo
__as__12J3DLightInfoFRC12J3DLightInfo: # 0x802d9a84
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x14(r3)
    lbz     r0, 0x18(r4)
    stb     r0, 0x18(r3)
    lbz     r0, 0x19(r4)
    stb     r0, 0x19(r3)
    lbz     r0, 0x1a(r4)
    stb     r0, 0x1a(r3)
    lbz     r0, 0x1b(r4)
    stb     r0, 0x1b(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r4)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r4)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x28(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x2c(r3)
    lfs     f0, 0x30(r4)
    stfs    f0, 0x30(r3)
    blr


.globl reset__19J3DTexGenBlockBasicFP14J3DTexGenBlock
reset__19J3DTexGenBlockBasicFP14J3DTexGenBlock: # 0x802d9b08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r27, r4, 0x0
    addi    r26, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x0(r27)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    stw     r3, 0x4(r26)
    li      r29, 0x0
    li      r31, 0x0
branch_0x802d9b40:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    mr      r4, r29
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    add     r4, r26, r31
    addi    r29, r29, 0x1
    stb     r0, 0x8(r4)
    cmplwi  r29, 0x8
    addi    r31, r31, 0x4
    lbz     r0, 0x1(r3)
    stb     r0, 0x9(r4)
    lbz     r0, 0x2(r3)
    stb     r0, 0xa(r4)
    blt+    branch_0x802d9b40
    lis     r3, j3dDefaultTexMtxInfo@h
    addi    r30, r3, j3dDefaultTexMtxInfo@l
    li      r28, 0x0
    li      r31, 0x0
branch_0x802d9b94:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    mr      r4, r28
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802d9c1c
    addi    r29, r31, 0x28
    add     r29, r26, r29
    lwz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x802d9be8
    li      r3, 0xc4
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802d9be4
    addi    r3, r25, 0x0
    addi    r4, r30, 0x0
    bl      __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
branch_0x802d9be4:
    stw     r25, 0x0(r29)
branch_0x802d9be8:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    mr      r4, r28
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    mr      r4, r3
    lwz     r3, 0x0(r29)
    li      r5, 0xc4
    bl      memcpy
    lwz     r3, 0x0(r29)
    li      r4, 0xc4
    bl      DCStoreRange
branch_0x802d9c1c:
    addi    r28, r28, 0x1
    cmplwi  r28, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x802d9b94
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    stb     r0, 0x48(r26)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x4c(r26)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x50(r26)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x54(r26)
    lwz     r0, 0x34(sp)
    lmw     r25, 0x14(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl reset__12J3DTevBlock1FP11J3DTevBlock
reset__12J3DTevBlock1FP11J3DTevBlock: # 0x802d9c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    li      r4, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0x4(r31)
    addi    r3, r30, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x0
    stb     r0, 0x6(r31)
    lbz     r0, 0x1(r3)
    stb     r0, 0x7(r31)
    lbz     r0, 0x2(r3)
    mr      r3, r30
    stb     r0, 0x8(r31)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x0
    stb     r0, 0xb(r31)
    lbz     r0, 0x2(r3)
    stb     r0, 0xc(r31)
    lbz     r0, 0x3(r3)
    stb     r0, 0xd(r31)
    lbz     r0, 0x5(r3)
    stb     r0, 0xf(r31)
    lbz     r0, 0x6(r3)
    stb     r0, 0x10(r31)
    lbz     r0, 0x7(r3)
    mr      r3, r30
    stb     r0, 0x11(r31)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    stb     r0, 0x12(r31)
    lbz     r0, 0x1(r3)
    stb     r0, 0x13(r31)
    lbz     r0, 0x2(r3)
    stb     r0, 0x14(r31)
    lbz     r0, 0x3(r3)
    stb     r0, 0x15(r31)
    lbz     r0, 0x4(r3)
    stb     r0, 0x16(r31)
    lbz     r0, 0x5(r3)
    stb     r0, 0x17(r31)
    lbz     r0, 0x6(r3)
    stb     r0, 0x18(r31)
    lbz     r0, 0x7(r3)
    stb     r0, 0x19(r31)
    lbz     r0, 0x8(r3)
    stb     r0, 0x1a(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__12J3DTevBlock2FP11J3DTevBlock
reset__12J3DTevBlock2FP11J3DTevBlock: # 0x802d9d9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    stb     r3, 0x30(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0x4(r30)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0x6(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x1
    stb     r0, 0x32(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x33(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x34(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x36(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x37(r30)
    lbz     r0, 0x7(r3)
    mr      r3, r31
    stb     r0, 0x38(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x0
    stb     r0, 0x3a(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x3b(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x3c(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x3e(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x3f(r30)
    lbz     r0, 0x7(r3)
    mr      r3, r31
    stb     r0, 0x40(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x1
    stb     r0, 0x59(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x5a(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x5b(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x5c(r30)
    lbz     r0, 0x4(r3)
    stb     r0, 0x5d(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x5e(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x5f(r30)
    lbz     r0, 0x7(r3)
    stb     r0, 0x60(r30)
    lbz     r0, 0x8(r3)
    mr      r3, r31
    stb     r0, 0x61(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x0
    stb     r0, 0x65(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x66(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x67(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x68(r30)
    lbz     r0, 0x4(r3)
    stb     r0, 0x69(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x6a(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x6b(r30)
    lbz     r0, 0x7(r3)
    stb     r0, 0x6c(r30)
    lbz     r0, 0x8(r3)
    mr      r3, r31
    stb     r0, 0x6d(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x1
    stb     r0, 0x8(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x9(r30)
    lbz     r0, 0x2(r3)
    mr      r3, r31
    stb     r0, 0xa(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x0
    stb     r0, 0xc(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0xd(r30)
    lbz     r0, 0x2(r3)
    mr      r3, r31
    stb     r0, 0xe(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x51(r30)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x52(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    stb     r3, 0x53(r30)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    stb     r3, 0x54(r30)
    li      r28, 0x0
    li      r29, 0x0
branch_0x802da038:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r3)
    add     r5, r30, r29
    lwz     r0, 0x4(r3)
    addi    r28, r28, 0x1
    cmplwi  r28, 0x4
    stw     r4, 0x10(r5)
    addi    r29, r29, 0x8
    stw     r0, 0x14(r5)
    blt+    branch_0x802da038
    li      r28, 0x0
    li      r29, 0x0
branch_0x802da07c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    addi    r28, r28, 0x1
    add     r3, r30, r29
    cmplwi  r28, 0x4
    stw     r0, 0x41(r3)
    addi    r29, r29, 0x4
    blt+    branch_0x802da07c
    li      r28, 0x0
branch_0x802da0b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x84(r12)
    mtlr    r12
    blrl
    add     r4, r30, r28
    lbz     r0, 0x0(r3)
    addi    r28, r28, 0x1
    cmplwi  r28, 0x4
    stb     r0, 0x55(r4)
    blt+    branch_0x802da0b4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl reset__12J3DTevBlock4FP11J3DTevBlock
reset__12J3DTevBlock4FP11J3DTevBlock: # 0x802da104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    stb     r3, 0x1c(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0x4(r30)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0x6(r30)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0x8(r30)
    addi    r3, r31, 0x0
    li      r4, 0x3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    sth     r3, 0xa(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x1
    stb     r0, 0x1e(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x1f(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x20(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x22(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x23(r30)
    lbz     r0, 0x7(r3)
    mr      r3, r31
    stb     r0, 0x24(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x2
    stb     r0, 0x26(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x27(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x28(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x2a(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x2b(r30)
    lbz     r0, 0x7(r3)
    mr      r3, r31
    stb     r0, 0x2c(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x3
    stb     r0, 0x2e(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x2f(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x30(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x32(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x33(r30)
    lbz     r0, 0x7(r3)
    mr      r3, r31
    stb     r0, 0x34(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    li      r4, 0x0
    stb     r0, 0x36(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x37(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x38(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x3a(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x3b(r30)
    lbz     r0, 0x7(r3)
    mr      r3, r31
    stb     r0, 0x3c(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x1
    stb     r0, 0x7a(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x7b(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x7c(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x7d(r30)
    lbz     r0, 0x4(r3)
    stb     r0, 0x7e(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x7f(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x80(r30)
    lbz     r0, 0x7(r3)
    stb     r0, 0x81(r30)
    lbz     r0, 0x8(r3)
    mr      r3, r31
    stb     r0, 0x82(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x2
    stb     r0, 0x86(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x87(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x88(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x89(r30)
    lbz     r0, 0x4(r3)
    stb     r0, 0x8a(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x8b(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x8c(r30)
    lbz     r0, 0x7(r3)
    stb     r0, 0x8d(r30)
    lbz     r0, 0x8(r3)
    mr      r3, r31
    stb     r0, 0x8e(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x3
    stb     r0, 0x92(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x93(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0x94(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0x95(r30)
    lbz     r0, 0x4(r3)
    stb     r0, 0x96(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0x97(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0x98(r30)
    lbz     r0, 0x7(r3)
    stb     r0, 0x99(r30)
    lbz     r0, 0x8(r3)
    mr      r3, r31
    stb     r0, 0x9a(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x0
    stb     r0, 0x9e(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x9f(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0xa0(r30)
    lbz     r0, 0x3(r3)
    stb     r0, 0xa1(r30)
    lbz     r0, 0x4(r3)
    stb     r0, 0xa2(r30)
    lbz     r0, 0x5(r3)
    stb     r0, 0xa3(r30)
    lbz     r0, 0x6(r3)
    stb     r0, 0xa4(r30)
    lbz     r0, 0x7(r3)
    stb     r0, 0xa5(r30)
    lbz     r0, 0x8(r3)
    mr      r3, r31
    stb     r0, 0xa6(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x1
    stb     r0, 0xc(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0xd(r30)
    lbz     r0, 0x2(r3)
    mr      r3, r31
    stb     r0, 0xe(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x2
    stb     r0, 0x10(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x11(r30)
    lbz     r0, 0x2(r3)
    mr      r3, r31
    stb     r0, 0x12(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x3
    stb     r0, 0x14(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x15(r30)
    lbz     r0, 0x2(r3)
    mr      r3, r31
    stb     r0, 0x16(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    li      r4, 0x0
    stb     r0, 0x18(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0x19(r30)
    lbz     r0, 0x2(r3)
    mr      r3, r31
    stb     r0, 0x1a(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x6e(r30)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x6f(r30)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x70(r30)
    addi    r3, r31, 0x0
    li      r4, 0x3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x71(r30)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    stb     r3, 0x72(r30)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    stb     r3, 0x73(r30)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    stb     r3, 0x74(r30)
    addi    r3, r31, 0x0
    li      r4, 0x3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    stb     r3, 0x75(r30)
    li      r28, 0x0
    li      r29, 0x0
branch_0x802da5f8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r3)
    add     r5, r30, r29
    lwz     r0, 0x4(r3)
    addi    r28, r28, 0x1
    cmplwi  r28, 0x4
    stw     r4, 0x3e(r5)
    addi    r29, r29, 0x8
    stw     r0, 0x42(r5)
    blt+    branch_0x802da5f8
    li      r28, 0x0
    li      r29, 0x0
branch_0x802da63c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    addi    r28, r28, 0x1
    add     r3, r30, r29
    cmplwi  r28, 0x4
    stw     r0, 0x5e(r3)
    addi    r29, r29, 0x4
    blt+    branch_0x802da63c
    li      r28, 0x0
branch_0x802da674:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x84(r12)
    mtlr    r12
    blrl
    add     r4, r30, r28
    lbz     r0, 0x0(r3)
    addi    r28, r28, 0x1
    cmplwi  r28, 0x4
    stb     r0, 0x76(r4)
    blt+    branch_0x802da674
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl reset__13J3DTevBlock16FP11J3DTevBlock
reset__13J3DTevBlock16FP11J3DTevBlock: # 0x802da6c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    stb     r3, 0x54(r29)
    li      r28, 0x0
    li      r27, 0x0
branch_0x802da6fc:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r28
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
    addi    r0, r27, 0x4
    cmplwi  r28, 0x8
    sthx    r3, r29, r0
    addi    r27, r27, 0x2
    blt+    branch_0x802da6fc
    li      r28, 0x0
    li      r27, 0x0
branch_0x802da734:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r28
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    add     r4, r29, r27
    addi    r28, r28, 0x1
    stb     r0, 0x14(r4)
    cmplwi  r28, 0x10
    addi    r27, r27, 0x4
    lbz     r0, 0x1(r3)
    stb     r0, 0x15(r4)
    lbz     r0, 0x2(r3)
    stb     r0, 0x16(r4)
    blt+    branch_0x802da734
    li      r31, 0x0
    li      r28, 0x0
    li      r27, 0x0
branch_0x802da784:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    add     r5, r29, r27
    addi    r4, r31, 0x0
    stb     r0, 0x56(r5)
    lbz     r0, 0x2(r3)
    stb     r0, 0x57(r5)
    lbz     r0, 0x3(r3)
    stb     r0, 0x58(r5)
    lbz     r0, 0x5(r3)
    stb     r0, 0x5a(r5)
    lbz     r0, 0x6(r3)
    stb     r0, 0x5b(r5)
    lbz     r0, 0x7(r3)
    mr      r3, r30
    stb     r0, 0x5c(r5)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x90(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    add     r4, r29, r28
    addi    r31, r31, 0x1
    stb     r0, 0x12a(r4)
    cmplwi  r31, 0x10
    addi    r28, r28, 0xc
    lbz     r0, 0x1(r3)
    addi    r27, r27, 0x8
    stb     r0, 0x12b(r4)
    lbz     r0, 0x2(r3)
    stb     r0, 0x12c(r4)
    lbz     r0, 0x3(r3)
    stb     r0, 0x12d(r4)
    lbz     r0, 0x4(r3)
    stb     r0, 0x12e(r4)
    lbz     r0, 0x5(r3)
    stb     r0, 0x12f(r4)
    lbz     r0, 0x6(r3)
    stb     r0, 0x130(r4)
    lbz     r0, 0x7(r3)
    stb     r0, 0x131(r4)
    lbz     r0, 0x8(r3)
    stb     r0, 0x132(r4)
    blt+    branch_0x802da784
    li      r27, 0x0
    li      r31, 0x0
branch_0x802da850:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r27
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r3)
    add     r5, r29, r31
    lwz     r0, 0x4(r3)
    addi    r27, r27, 0x1
    cmplwi  r27, 0x4
    stw     r4, 0xd6(r5)
    addi    r31, r31, 0x8
    stw     r0, 0xda(r5)
    blt+    branch_0x802da850
    li      r27, 0x0
    li      r31, 0x0
branch_0x802da894:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r27
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x0(r3)
    addi    r27, r27, 0x1
    add     r3, r29, r31
    cmplwi  r27, 0x4
    stw     r0, 0xf6(r3)
    addi    r31, r31, 0x4
    blt+    branch_0x802da894
    li      r27, 0x0
branch_0x802da8cc:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r27
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    addi    r0, r27, 0x106
    addi    r27, r27, 0x1
    stbx    r3, r29, r0
    cmplwi  r27, 0x10
    blt+    branch_0x802da8cc
    li      r27, 0x0
branch_0x802da8fc:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r27
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    addi    r0, r27, 0x116
    addi    r27, r27, 0x1
    stbx    r3, r29, r0
    cmplwi  r27, 0x10
    blt+    branch_0x802da8fc
    li      r27, 0x0
branch_0x802da92c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r27
    lwz     r12, 0x84(r12)
    mtlr    r12
    blrl
    add     r4, r29, r27
    lbz     r0, 0x0(r3)
    addi    r27, r27, 0x1
    cmplwi  r27, 0x4
    stb     r0, 0x126(r4)
    blt+    branch_0x802da92c
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl reset__15J3DIndBlockFullFP11J3DIndBlock
reset__15J3DIndBlockFullFP11J3DIndBlock: # 0x802da970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    stb     r3, 0x4(r28)
    li      r30, 0x0
    li      r31, 0x0
branch_0x802da9b4:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    add     r4, r28, r31
    addi    r30, r30, 0x1
    stb     r0, 0x5(r4)
    cmplwi  r30, 0x4
    addi    r31, r31, 0x4
    lbz     r0, 0x1(r3)
    stb     r0, 0x6(r4)
    blt+    branch_0x802da9b4
    li      r30, 0x0
    li      r31, 0x0
branch_0x802da9f8:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    add     r5, r28, r31
    addi    r4, r3, 0x0
    addi    r3, r5, 0x18
    bl      __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
    addi    r30, r30, 0x1
    cmplwi  r30, 0x3
    addi    r31, r31, 0x1c
    blt+    branch_0x802da9f8
    li      r30, 0x0
    li      r31, 0x0
branch_0x802daa38:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    add     r4, r28, r31
    addi    r30, r30, 0x1
    stb     r0, 0x6c(r4)
    cmplwi  r30, 0x4
    addi    r31, r31, 0x4
    lbz     r0, 0x1(r3)
    stb     r0, 0x6d(r4)
    blt+    branch_0x802daa38
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
__as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo: # 0x802daa94
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x14(r3)
    lbz     r0, 0x18(r4)
    stb     r0, 0x18(r3)
    blr


.globl reset__14J3DPEBlockFullFP10J3DPEBlock
reset__14J3DPEBlockFullFP10J3DPEBlock: # 0x802daad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    stw     r29, 0x84(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802dab6c
    lwz     r0, 0x4(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802dab3c
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802dab38
    lis     r3, j3dDefaultFogInfo@h
    addi    r4, r3, j3dDefaultFogInfo@l
    addi    r3, r29, 0x0
    bl      __as__10J3DFogInfoFRC10J3DFogInfo
branch_0x802dab38:
    stw     r29, 0x4(r30)
branch_0x802dab3c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r4, r3
    lwz     r3, 0x4(r30)
    li      r5, 0x2c
    bl      memcpy
    lwz     r3, 0x4(r30)
    li      r4, 0x2c
    bl      DCStoreRange
branch_0x802dab6c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lis     r4, unk_50454f50@h
    addi    r0, r4, unk_50454f50@l
    cmpw    r3, r0
    beq-    branch_0x802dabc4
    bge-    branch_0x802dabb4
    addi    r0, r4, 0x464c
    cmpw    r3, r0
    beq-    branch_0x802dad98
    bge-    branch_0x802dae2c
    addi    r0, r4, 0x4544
    cmpw    r3, r0
    beq-    branch_0x802dac60
    b       branch_0x802dae2c

branch_0x802dabb4:
    addi    r0, r4, 0x584c
    cmpw    r3, r0
    beq-    branch_0x802dacfc
    b       branch_0x802dae2c

branch_0x802dabc4:
    lwz     r4, R2Off_0x254(r2)
    li      r0, 0x1
    lwz     r3, R2Off_0x25c(r2)
    stw     r4, 0x78(sp)
    lwz     r5, R2Off_0x258(r2)
    lwz     r4, R2Off_0x260(r2)
    stw     r5, 0x7c(sp)
    stw     r3, 0x74(sp)
    lbz     r3, 0x79(sp)
    stw     r4, 0x70(sp)
    stb     r3, 0xa(r30)
    lbz     r3, 0x7c(sp)
    stb     r3, 0xb(r30)
    lbz     r3, 0x7a(sp)
    lbz     r4, 0x78(sp)
    lbz     r5, 0x7b(sp)
    slwi    r3, r3, 3
    slwi    r4, r4, 5
    add     r3, r3, r5
    add     r3, r4, r3
    sth     r3, 0x8(r30)
    lbz     r3, 0x74(sp)
    stb     r3, 0xc(r30)
    lbz     r3, 0x75(sp)
    stb     r3, 0xd(r30)
    lbz     r3, 0x76(sp)
    stb     r3, 0xe(r30)
    lbz     r3, 0x77(sp)
    stb     r3, 0xf(r30)
    lbz     r3, 0x70(sp)
    lbz     r4, 0x71(sp)
    lbz     r5, 0x72(sp)
    slwi    r3, r3, 4
    slwi    r4, r4, 1
    add     r3, r3, r5
    add     r3, r4, r3
    sth     r3, 0x10(r30)
    stb     r0, 0x12(r30)
    b       branch_0x802dae2c

branch_0x802dac60:
    lwz     r4, R2Off_0x264(r2)
    li      r0, 0x0
    lwz     r3, R2Off_0x26c(r2)
    stw     r4, 0x64(sp)
    lwz     r5, R2Off_0x268(r2)
    lwz     r4, R2Off_0x270(r2)
    stw     r5, 0x68(sp)
    stw     r3, 0x60(sp)
    lbz     r3, 0x65(sp)
    stw     r4, 0x5c(sp)
    stb     r3, 0xa(r30)
    lbz     r3, 0x68(sp)
    stb     r3, 0xb(r30)
    lbz     r3, 0x66(sp)
    lbz     r4, 0x64(sp)
    lbz     r5, 0x67(sp)
    slwi    r3, r3, 3
    slwi    r4, r4, 5
    add     r3, r3, r5
    add     r3, r4, r3
    sth     r3, 0x8(r30)
    lbz     r3, 0x60(sp)
    stb     r3, 0xc(r30)
    lbz     r3, 0x61(sp)
    stb     r3, 0xd(r30)
    lbz     r3, 0x62(sp)
    stb     r3, 0xe(r30)
    lbz     r3, 0x63(sp)
    stb     r3, 0xf(r30)
    lbz     r3, 0x5c(sp)
    lbz     r4, 0x5d(sp)
    lbz     r5, 0x5e(sp)
    slwi    r3, r3, 4
    slwi    r4, r4, 1
    add     r3, r3, r5
    add     r3, r4, r3
    sth     r3, 0x10(r30)
    stb     r0, 0x12(r30)
    b       branch_0x802dae2c

branch_0x802dacfc:
    lwz     r4, R2Off_0x274(r2)
    li      r0, 0x1
    lwz     r3, R2Off_0x27c(r2)
    stw     r4, 0x50(sp)
    lwz     r5, R2Off_0x278(r2)
    lwz     r4, R2Off_0x280(r2)
    stw     r5, 0x54(sp)
    stw     r3, 0x4c(sp)
    lbz     r3, 0x51(sp)
    stw     r4, 0x48(sp)
    stb     r3, 0xa(r30)
    lbz     r3, 0x54(sp)
    stb     r3, 0xb(r30)
    lbz     r3, 0x52(sp)
    lbz     r4, 0x50(sp)
    lbz     r5, 0x53(sp)
    slwi    r3, r3, 3
    slwi    r4, r4, 5
    add     r3, r3, r5
    add     r3, r4, r3
    sth     r3, 0x8(r30)
    lbz     r3, 0x4c(sp)
    stb     r3, 0xc(r30)
    lbz     r3, 0x4d(sp)
    stb     r3, 0xd(r30)
    lbz     r3, 0x4e(sp)
    stb     r3, 0xe(r30)
    lbz     r3, 0x4f(sp)
    stb     r3, 0xf(r30)
    lbz     r3, 0x48(sp)
    lbz     r4, 0x49(sp)
    lbz     r5, 0x4a(sp)
    slwi    r3, r3, 4
    slwi    r4, r4, 1
    add     r3, r3, r5
    add     r3, r4, r3
    sth     r3, 0x10(r30)
    stb     r0, 0x12(r30)
    b       branch_0x802dae2c

branch_0x802dad98:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    sth     r0, 0x8(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0xa(r30)
    lbz     r0, 0x3(r3)
    mr      r3, r31
    stb     r0, 0xb(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    stb     r0, 0xc(r30)
    lbz     r0, 0x1(r3)
    stb     r0, 0xd(r30)
    lbz     r0, 0x2(r3)
    stb     r0, 0xe(r30)
    lbz     r0, 0x3(r3)
    mr      r3, r31
    stb     r0, 0xf(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    mr      r3, r31
    sth     r0, 0x10(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    stb     r3, 0x12(r30)
branch_0x802dae2c:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl getZCompLoc__10J3DPEBlockCFv
getZCompLoc__10J3DPEBlockCFv: # 0x802dae48
    li      r3, 0x0
    blr


.globl getBlend__10J3DPEBlockFv
getBlend__10J3DPEBlockFv: # 0x802dae50
    li      r3, 0x0
    blr


.globl getAlphaComp__10J3DPEBlockFv
getAlphaComp__10J3DPEBlockFv: # 0x802dae58
    li      r3, 0x0
    blr


.globl __as__10J3DFogInfoFRC10J3DFogInfo
__as__10J3DFogInfoFRC10J3DFogInfo: # 0x802dae60
    lbz     r0, 0x0(r4)
    li      r5, 0x8
    cmpwi   r5, 0xa
    stb     r0, 0x0(r3)
    subfic  r0, r5, 0xa
    mtctr   r0
    slwi    r5, r5, 1
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lhz     r0, 0x2(r4)
    sth     r0, 0x2(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x10(r3)
    lbz     r0, 0x14(r4)
    stb     r0, 0x14(r3)
    lbz     r0, 0x15(r4)
    stb     r0, 0x15(r3)
    lbz     r0, 0x16(r4)
    stb     r0, 0x16(r3)
    lbz     r0, 0x17(r4)
    stb     r0, 0x17(r3)
    lhz     r0, 0x18(r4)
    sth     r0, 0x18(r3)
    lhz     r0, 0x1a(r4)
    sth     r0, 0x1a(r3)
    lhz     r0, 0x1c(r4)
    sth     r0, 0x1c(r3)
    lhz     r0, 0x1e(r4)
    sth     r0, 0x1e(r3)
    lhz     r0, 0x20(r4)
    sth     r0, 0x20(r3)
    lhz     r0, 0x22(r4)
    sth     r0, 0x22(r3)
    lhz     r0, 0x24(r4)
    sth     r0, 0x24(r3)
    lhz     r0, 0x26(r4)
    sth     r0, 0x26(r3)
    bgelr-    

branch_0x802daf10:
    addi    r6, r5, 0x18
    lhzx    r0, r4, r6
    addi    r5, r5, 0x2
    sthx    r0, r3, r6
    bdnz+      branch_0x802daf10
    blr


.globl makeDisplayList__11J3DMaterialFv
makeDisplayList__11J3DMaterialFv: # 0x802daf28
    mflr    r0
    lis     r4, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r4, r4, j3dSys@l
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r27, r4, 0x3c
    mr      r26, r3
    lwz     r4, 0x3c(r4)
    lwz     r0, 0x10(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x802daf60
    li      r0, 0x1
    b       branch_0x802daf64

branch_0x802daf60:
    li      r0, 0x0
branch_0x802daf64:
    cmpwi   r0, 0x0
    bne-    branch_0x802db078
    lwz     r0, 0x18(r26)
    stw     r0, 0x3c(r4)
    lwz     r3, 0x0(r27)
    bl      beginDL__13J3DDrawPacketFv
    lwz     r3, 0x28(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x98(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x2c(r26)
    lwz     r4, 0x28(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x30(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x60(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    clrlwi  r28, r3, 24
    lwz     r3, 0x2c(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r29, r3
    lwz     r3, 0x28(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    mr      r30, r3
    lwz     r3, 0x20(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    lwz     r3, 0x24(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi  r3, r3, 24
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    addi    r7, r28, 0x0
    bl      GDSetGenMode2
    lwz     r3, 0x20(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x60(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x24(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r27)
    bl      endDL__13J3DDrawPacketFv
branch_0x802db078:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl load__11J3DMaterialFv
load__11J3DMaterialFv: # 0x802db08c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lis     r3, j3dSys@h
    lwz     r0, 0x8(r31)
    addi    r3, r3, j3dSys@l
    stw     r0, 0x50(r3)
    lwz     r0, 0x34(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802db0c4
    li      r0, 0x1
    b       branch_0x802db0c8

branch_0x802db0c4:
    li      r0, 0x0
branch_0x802db0c8:
    cmpwi   r0, 0x0
    bne-    branch_0x802db0fc
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    lwz     r3, 0x3c(r3)
    lwz     r3, 0x30(r3)
    bl      callDL__17J3DDisplayListObjFv
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    bl      loadNBTScale__FR11J3DNBTScale
branch_0x802db0fc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl safeMakeDisplayList__11J3DMaterialFv
safeMakeDisplayList__11J3DMaterialFv: # 0x802db110
    mflr    r0
    lis     r4, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r4, r4, j3dSys@l
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r27, r4, 0x3c
    mr      r26, r3
    lwz     r4, 0x3c(r4)
    lwz     r0, 0x10(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x802db148
    li      r0, 0x1
    b       branch_0x802db14c

branch_0x802db148:
    li      r0, 0x0
branch_0x802db14c:
    cmpwi   r0, 0x0
    bne-    branch_0x802db260
    lwz     r0, 0x18(r26)
    stw     r0, 0x3c(r4)
    lwz     r3, 0x0(r27)
    bl      beginDL__13J3DDrawPacketFv
    lwz     r3, 0x28(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x98(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x2c(r26)
    lwz     r4, 0x28(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x30(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x60(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x58(r12)
    mtlr    r12
    blrl
    clrlwi  r28, r3, 24
    lwz     r3, 0x2c(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r29, r3
    lwz     r3, 0x28(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x64(r12)
    mtlr    r12
    blrl
    mr      r30, r3
    lwz     r3, 0x20(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    lwz     r3, 0x24(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi  r3, r3, 24
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    addi    r7, r28, 0x0
    bl      GDSetGenMode2
    lwz     r3, 0x20(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x60(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x24(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r27)
    bl      endDL__13J3DDrawPacketFv
branch_0x802db260:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl calc__19J3DTexGenBlockBasicFPA4_f
calc__19J3DTexGenBlockBasicFPA4_f: # 0x802db274
    mflr    r0
    lis     r5, j3dSys@h
    stw     r0, 0x4(sp)
    addi    r5, r5, j3dSys@l
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stmw    r25, 0xe4(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    lwz     r5, 0x34(r5)
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x802db2ac
    li      r0, 0x1
    b       branch_0x802db2b0

branch_0x802db2ac:
    li      r0, 0x0
branch_0x802db2b0:
    cmpwi   r0, 0x0
    beq-    branch_0x802db2d4
    rlwinm. r0, r5, 0, 28, 28
    beq-    branch_0x802db2c8
    li      r0, 0x1
    b       branch_0x802db2cc

branch_0x802db2c8:
    li      r0, 0x0
branch_0x802db2cc:
    cmpwi   r0, 0x0
    bne-    branch_0x802db3f4
branch_0x802db2d4:
    lis     r3, j3dSys@h
    lfs     f31, 0x284(r2)
    addi    r28, r3, j3dSys@l
    li      r26, 0x0
    li      r29, 0x0
branch_0x802db2e8:
    addi    r27, r29, 0x28
    add     r27, r30, r27
    lwz     r4, 0x0(r27)
    cmplwi  r4, 0x0
    beq-    branch_0x802db3e0
    lbz     r0, 0x1(r4)
    clrlwi  r3, r0, 25
    cmplwi  r3, 0x7
    beq-    branch_0x802db31c
    cmplwi  r3, 0x6
    beq-    branch_0x802db31c
    cmplwi  r3, 0x1
    bne-    branch_0x802db34c
branch_0x802db31c:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, sp, 0xac
    bl      PSMTXConcat
    stfs    f31, 0xb8(sp)
    addi    r3, sp, 0xac
    stfs    f31, 0xc8(sp)
    stfs    f31, 0xd8(sp)
    lwz     r4, 0x0(r27)
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    b       branch_0x802db3d8

branch_0x802db34c:
    cmplwi  r3, 0x8
    beq-    branch_0x802db35c
    cmplwi  r3, 0x2
    bne-    branch_0x802db36c
branch_0x802db35c:
    addi    r3, r31, 0x0
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    b       branch_0x802db3d8

branch_0x802db36c:
    cmplwi  r3, 0x9
    beq-    branch_0x802db37c
    cmplwi  r3, 0x3
    bne-    branch_0x802db3a0
branch_0x802db37c:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, sp, 0x7c
    bl      PSMTXConcat
    lwz     r4, 0x0(r27)
    addi    r3, sp, 0x7c
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    b       branch_0x802db3d8

branch_0x802db3a0:
    addi    r0, r3, -0xa
    cmplwi  r0, 0x1
    ble-    branch_0x802db3b4
    cmplwi  r3, 0x5
    bne-    branch_0x802db3d8
branch_0x802db3b4:
    addi    r3, r31, 0x0
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    lwz     r3, 0x0(r27)
    stfs    f31, 0xa0(r3)
    lwz     r3, 0x0(r27)
    stfs    f31, 0xb0(r3)
    lwz     r3, 0x0(r27)
    stfs    f31, 0xc0(r3)
branch_0x802db3d8:
    lwz     r3, 0x0(r27)
    bl      calc__9J3DTexMtxFv
branch_0x802db3e0:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x802db2e8
    b       branch_0x802db4ec

branch_0x802db3f4:
    lis     r4, j3dSys@h
    lfs     f31, 0x284(r2)
    lis     r3, j3dDefaultMtx@h
    addi    r27, r4, j3dSys@l
    addi    r29, r3, j3dDefaultMtx@l
    addi    r28, r27, 0x0
    li      r25, 0x0
    li      r31, 0x0
branch_0x802db414:
    addi    r26, r31, 0x28
    add     r26, r30, r26
    lwz     r4, 0x0(r26)
    cmplwi  r4, 0x0
    beq-    branch_0x802db4dc
    lbz     r0, 0x1(r4)
    clrlwi  r3, r0, 25
    cmplwi  r3, 0x7
    beq-    branch_0x802db448
    cmplwi  r3, 0x6
    beq-    branch_0x802db448
    cmplwi  r3, 0x1
    bne-    branch_0x802db474
branch_0x802db448:
    addi    r3, r28, 0x0
    addi    r4, sp, 0x4c
    bl      PSMTXCopy
    stfs    f31, 0x58(sp)
    addi    r3, sp, 0x4c
    stfs    f31, 0x68(sp)
    stfs    f31, 0x78(sp)
    lwz     r4, 0x0(r26)
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    b       branch_0x802db4d4

branch_0x802db474:
    cmplwi  r3, 0x8
    beq-    branch_0x802db484
    cmplwi  r3, 0x2
    bne-    branch_0x802db494
branch_0x802db484:
    addi    r3, r29, 0x0
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    b       branch_0x802db4d4

branch_0x802db494:
    cmplwi  r3, 0x9
    beq-    branch_0x802db4a4
    cmplwi  r3, 0x3
    bne-    branch_0x802db4b4
branch_0x802db4a4:
    addi    r3, r27, 0x0
    addi    r4, r4, 0x94
    bl      PSMTXCopy
    b       branch_0x802db4d4

branch_0x802db4b4:
    addi    r0, r3, -0xa
    cmplwi  r0, 0x1
    ble-    branch_0x802db4c8
    cmplwi  r3, 0x5
    bne-    branch_0x802db4d4
branch_0x802db4c8:
    addi    r3, r29, 0x0
    addi    r4, r4, 0x94
    bl      PSMTXCopy
branch_0x802db4d4:
    lwz     r3, 0x0(r26)
    bl      calc__9J3DTexMtxFv
branch_0x802db4dc:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x802db414
branch_0x802db4ec:
    lmw     r25, 0xe4(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    addi    sp, sp, 0x108
    mtlr    r0
    blr


.globl calc__11J3DMaterialFPA4_f
calc__11J3DMaterialFPA4_f: # 0x802db504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setCurrentMtx__11J3DMaterialFv
setCurrentMtx__11J3DMaterialFv: # 0x802db534
    mflr    r0
    li      r4, 0x7
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r24, 0x40(sp)
    mr      r24, r3
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r31, 0x2(r3)
    li      r4, 0x6
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r30, 0x2(r3)
    li      r4, 0x5
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r29, 0x2(r3)
    li      r4, 0x4
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r28, 0x2(r3)
    li      r4, 0x3
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r27, 0x2(r3)
    li      r4, 0x2
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r26, 0x2(r3)
    li      r4, 0x1
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lbz     r25, 0x2(r3)
    li      r4, 0x0
    lwz     r3, 0x24(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x4(r24)
    lbz     r0, 0x2(r3)
    stb     r0, 0x3c(r4)
    stb     r25, 0x3d(r4)
    stb     r26, 0x3e(r4)
    stb     r27, 0x3f(r4)
    stb     r28, 0x40(r4)
    stb     r29, 0x41(r4)
    stb     r30, 0x42(r4)
    stb     r31, 0x43(r4)
    lwz     r0, 0x64(sp)
    lmw     r24, 0x40(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl copy__11J3DMaterialFP11J3DMaterial
copy__11J3DMaterialFP11J3DMaterial: # 0x802db660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r3)
    lwz     r0, 0x18(r3)
    clrlwi  r0, r0, 1
    stw     r0, 0x18(r3)
    lwz     r3, 0x20(r3)
    lwz     r4, 0x20(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x24(r30)
    lwz     r4, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r30)
    lwz     r4, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x2c(r30)
    lwz     r4, 0x2c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x30(r30)
    lwz     r4, 0x30(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl reset__10J3DPEBlockFP10J3DPEBlock
reset__10J3DPEBlockFP10J3DPEBlock: # 0x802db720
    blr


.globl reset__11J3DIndBlockFP11J3DIndBlock
reset__11J3DIndBlockFP11J3DIndBlock: # 0x802db724
    blr


.globl reset__11J3DTevBlockFP11J3DTevBlock
reset__11J3DTevBlockFP11J3DTevBlock: # 0x802db728
    blr


.globl reset__14J3DTexGenBlockFP14J3DTexGenBlock
reset__14J3DTexGenBlockFP14J3DTexGenBlock: # 0x802db72c
    blr


.globl reset__13J3DColorBlockFP13J3DColorBlock
reset__13J3DColorBlockFP13J3DColorBlock: # 0x802db730
    blr


.globl change__11J3DMaterialFv
change__11J3DMaterialFv: # 0x802db734
    lwz     r4, 0x18(r3)
    clrrwi. r0, r4, 30
    bnelr-    

    oris    r0, r4, 0x8000
    stw     r0, 0x18(r3)
    li      r0, 0x0
    lwz     r4, 0x34(r3)
    lwz     r4, 0x8(r4)
    stw     r4, 0x8(r3)
    lwz     r4, 0x34(r3)
    lwz     r4, 0x10(r4)
    stw     r4, 0x10(r3)
    stw     r0, 0x38(r3)
    blr


.globl newSharedDisplayList__11J3DMaterialFUl
newSharedDisplayList__11J3DMaterialFUl: # 0x802db76c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x3c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802db7c8
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802db7b8
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x802db7b8:
    stw     r3, 0x3c(r30)
    mr      r4, r31
    lwz     r3, 0x3c(r30)
    bl      newDisplayList__17J3DDisplayListObjFUl
branch_0x802db7c8:
    lwz     r0, 0x1c(sp)
    lwz     r3, 0x3c(r30)
    lwz     r31, 0x14(sp)
    mtlr    r0
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl getType__14J3DPEBlockFullFv
getType__14J3DPEBlockFullFv: # 0x802db7e4
    lis     r3, unk_5045464c@h
    addi    r3, r3, unk_5045464c@l
    blr


.globl setFog__14J3DPEBlockFullFP6J3DFog
setFog__14J3DPEBlockFullFP6J3DFog: # 0x802db7f0
    stw     r4, 0x4(r3)
    blr


.globl replaceFog__14J3DPEBlockFullFP6J3DFog
replaceFog__14J3DPEBlockFullFP6J3DFog: # 0x802db7f8
    lwz     r0, 0x4(r3)
    stw     r4, 0x4(r3)
    mr      r3, r0
    blr


.globl getFog__14J3DPEBlockFullFv
getFog__14J3DPEBlockFullFv: # 0x802db808
    lwz     r3, 0x4(r3)
    blr


.globl setAlphaComp__14J3DPEBlockFullF12J3DAlphaComp
setAlphaComp__14J3DPEBlockFullF12J3DAlphaComp: # 0x802db810
    lhz     r0, 0x0(r4)
    sth     r0, 0x8(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0xa(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0xb(r3)
    blr


.globl setAlphaComp__14J3DPEBlockFullFPC12J3DAlphaComp
setAlphaComp__14J3DPEBlockFullFPC12J3DAlphaComp: # 0x802db82c
    lhz     r0, 0x0(r4)
    sth     r0, 0x8(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0xa(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0xb(r3)
    blr


.globl getAlphaComp__14J3DPEBlockFullFv
getAlphaComp__14J3DPEBlockFullFv: # 0x802db848
    addi    r3, r3, 0x8
    blr


.globl setBlend__14J3DPEBlockFullF8J3DBlend
setBlend__14J3DPEBlockFullF8J3DBlend: # 0x802db850
    lbz     r0, 0x0(r4)
    stb     r0, 0xc(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0xd(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0xe(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0xf(r3)
    blr


.globl setBlend__14J3DPEBlockFullFPC8J3DBlend
setBlend__14J3DPEBlockFullFPC8J3DBlend: # 0x802db874
    lbz     r0, 0x0(r4)
    stb     r0, 0xc(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0xd(r3)
    lbz     r0, 0x2(r4)
    stb     r0, 0xe(r3)
    lbz     r0, 0x3(r4)
    stb     r0, 0xf(r3)
    blr


.globl getBlend__14J3DPEBlockFullFv
getBlend__14J3DPEBlockFullFv: # 0x802db898
    addi    r3, r3, 0xc
    blr


.globl setZMode__14J3DPEBlockFullF8J3DZMode
setZMode__14J3DPEBlockFullF8J3DZMode: # 0x802db8a0
    lhz     r0, 0x0(r4)
    sth     r0, 0x10(r3)
    blr


.globl setZMode__14J3DPEBlockFullFPC8J3DZMode
setZMode__14J3DPEBlockFullFPC8J3DZMode: # 0x802db8ac
    lhz     r0, 0x0(r4)
    sth     r0, 0x10(r3)
    blr


.globl getZMode__14J3DPEBlockFullFv
getZMode__14J3DPEBlockFullFv: # 0x802db8b8
    addi    r3, r3, 0x10
    blr


.globl setZCompLoc__14J3DPEBlockFullFUc
setZCompLoc__14J3DPEBlockFullFUc: # 0x802db8c0
    stb     r4, 0x12(r3)
    blr


.globl setZCompLoc__14J3DPEBlockFullFPCUc
setZCompLoc__14J3DPEBlockFullFPCUc: # 0x802db8c8
    lbz     r0, 0x0(r4)
    stb     r0, 0x12(r3)
    blr


.globl getZCompLoc__14J3DPEBlockFullCFv
getZCompLoc__14J3DPEBlockFullCFv: # 0x802db8d4
    lbz     r3, 0x12(r3)
    blr


.globl setDither__14J3DPEBlockFullFUc
setDither__14J3DPEBlockFullFUc: # 0x802db8dc
    stb     r4, 0x13(r3)
    blr


.globl setDither__14J3DPEBlockFullFPCUc
setDither__14J3DPEBlockFullFPCUc: # 0x802db8e4
    lbz     r0, 0x0(r4)
    stb     r0, 0x13(r3)
    blr


.globl getDither__14J3DPEBlockFullCFv
getDither__14J3DPEBlockFullCFv: # 0x802db8f0
    lbz     r3, 0x13(r3)
    blr


.globl __dt__14J3DPEBlockFullFv
__dt__14J3DPEBlockFullFv: # 0x802db8f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802db93c
    lis     r3, __vvt__14J3DPEBlockFull@h
    addi    r0, r3, __vvt__14J3DPEBlockFull@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802db92c
    lis     r3, __vvt__10J3DPEBlock@h
    addi    r0, r3, __vvt__10J3DPEBlock@l
    stw     r0, 0x0(r31)
branch_0x802db92c:
    extsh.  r0, r4
    ble-    branch_0x802db93c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802db93c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__15J3DIndBlockFullFv
getType__15J3DIndBlockFullFv: # 0x802db954
    lis     r3, unk_49424c46@h
    addi    r3, r3, unk_49424c46@l
    blr


.globl setIndTexStageNum__15J3DIndBlockFullFUc
setIndTexStageNum__15J3DIndBlockFullFUc: # 0x802db960
    stb     r4, 0x4(r3)
    blr


.globl getIndTexStageNum__15J3DIndBlockFullCFv
getIndTexStageNum__15J3DIndBlockFullCFv: # 0x802db968
    lbz     r3, 0x4(r3)
    blr


.globl setIndTexOrder__15J3DIndBlockFullFUl14J3DIndTexOrder
setIndTexOrder__15J3DIndBlockFullFUl14J3DIndTexOrder: # 0x802db970
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x5(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x6(r3)
    blr


.globl setIndTexOrder__15J3DIndBlockFullFUlPC14J3DIndTexOrder
setIndTexOrder__15J3DIndBlockFullFUlPC14J3DIndTexOrder: # 0x802db98c
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x5(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x6(r3)
    blr


.globl getIndTexOrder__15J3DIndBlockFullFUl
getIndTexOrder__15J3DIndBlockFullFUl: # 0x802db9a8
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x5
    add     r3, r0, r3
    blr


.globl setIndTexMtx__15J3DIndBlockFullFUl12J3DIndTexMtx
setIndTexMtx__15J3DIndBlockFullFUl12J3DIndTexMtx: # 0x802db9bc
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0x1c
    stwu    sp, -0x8(sp)
    add     r3, r3, r0
    addi    r4, r5, 0x0
    addi    r3, r3, 0x18
    bl      __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setIndTexMtx__15J3DIndBlockFullFUlPC12J3DIndTexMtx
setIndTexMtx__15J3DIndBlockFullFUlPC12J3DIndTexMtx: # 0x802db9ec
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0x1c
    stwu    sp, -0x8(sp)
    add     r3, r3, r0
    addi    r4, r5, 0x0
    addi    r3, r3, 0x18
    bl      __as__16J3DIndTexMtxInfoFRC16J3DIndTexMtxInfo
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getIndTexMtx__15J3DIndBlockFullFUl
getIndTexMtx__15J3DIndBlockFullFUl: # 0x802dba1c
    mulli   r4, r4, 0x1c
    addi    r0, r3, 0x0
    addi    r3, r4, 0x18
    add     r3, r0, r3
    blr


.globl setIndTexCoordScale__15J3DIndBlockFullFUl19J3DIndTexCoordScale
setIndTexCoordScale__15J3DIndBlockFullFUl19J3DIndTexCoordScale: # 0x802dba30
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x6c(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x6d(r3)
    blr


.globl setIndTexCoordScale__15J3DIndBlockFullFUlPC19J3DIndTexCoordScale
setIndTexCoordScale__15J3DIndBlockFullFUlPC19J3DIndTexCoordScale: # 0x802dba4c
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x6c(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x6d(r3)
    blr


.globl getIndTexCoordScale__15J3DIndBlockFullFUl
getIndTexCoordScale__15J3DIndBlockFullFUl: # 0x802dba68
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x6c
    add     r3, r0, r3
    blr


.globl __dt__15J3DIndBlockFullFv
__dt__15J3DIndBlockFullFv: # 0x802dba7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802dbafc
    lis     r3, __vvt__15J3DIndBlockFull@h
    addi    r0, r3, __vvt__15J3DIndBlockFull@l
    lis     r3, __dt__19J3DIndTexCoordScaleFv@h
    stw     r0, 0x0(r30)
    addi    r4, r3, __dt__19J3DIndTexCoordScaleFv@l
    addi    r3, r30, 0x6c
    li      r5, 0x4
    li      r6, 0x4
    bl      __destroy_arr
    lis     r3, __dt__12J3DIndTexMtxFv@h
    addi    r4, r3, __dt__12J3DIndTexMtxFv@l
    addi    r3, r30, 0x18
    li      r5, 0x1c
    li      r6, 0x3
    bl      __destroy_arr
    cmplwi  r30, 0x0
    beq-    branch_0x802dbaec
    lis     r3, __vvt__11J3DIndBlock@h
    addi    r0, r3, __vvt__11J3DIndBlock@l
    stw     r0, 0x0(r30)
branch_0x802dbaec:
    extsh.  r0, r31
    ble-    branch_0x802dbafc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802dbafc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getType__13J3DTevBlock16Fv
getType__13J3DTevBlock16Fv: # 0x802dbb18
    lis     r3, unk_54563136@h
    addi    r3, r3, unk_54563136@l
    blr


.globl setTexNo__13J3DTevBlock16FUlUs
setTexNo__13J3DTevBlock16FUlUs: # 0x802dbb24
    slwi    r0, r4, 1
    add     r3, r3, r0
    sth     r5, 0x4(r3)
    blr


.globl setTexNo__13J3DTevBlock16FUlPCUs
setTexNo__13J3DTevBlock16FUlPCUs: # 0x802dbb34
    slwi    r0, r4, 1
    lhz     r4, 0x0(r5)
    add     r3, r3, r0
    sth     r4, 0x4(r3)
    blr


.globl getTexNo__13J3DTevBlock16CFUl
getTexNo__13J3DTevBlock16CFUl: # 0x802dbb48
    slwi    r0, r4, 1
    add     r3, r3, r0
    lhz     r3, 0x4(r3)
    blr


.globl setTevOrder__13J3DTevBlock16FUl11J3DTevOrder
setTevOrder__13J3DTevBlock16FUl11J3DTevOrder: # 0x802dbb58
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x14(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x15(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x16(r3)
    blr


.globl setTevOrder__13J3DTevBlock16FUlPC11J3DTevOrder
setTevOrder__13J3DTevBlock16FUlPC11J3DTevOrder: # 0x802dbb7c
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x14(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x15(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x16(r3)
    blr


.globl getTevOrder__13J3DTevBlock16FUl
getTevOrder__13J3DTevBlock16FUl: # 0x802dbba0
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x14
    add     r3, r0, r3
    blr


.globl setTevColor__13J3DTevBlock16FUl13J3DGXColorS10
setTevColor__13J3DTevBlock16FUl13J3DGXColorS10: # 0x802dbbb4
    slwi    r6, r4, 3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r3, r6
    stw     r4, 0xd6(r3)
    stw     r0, 0xda(r3)
    blr


.globl setTevColor__13J3DTevBlock16FUlPC13J3DGXColorS10
setTevColor__13J3DTevBlock16FUlPC13J3DGXColorS10: # 0x802dbbd0
    slwi    r6, r4, 3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r3, r6
    stw     r4, 0xd6(r3)
    stw     r0, 0xda(r3)
    blr


.globl getTevColor__13J3DTevBlock16FUl
getTevColor__13J3DTevBlock16FUl: # 0x802dbbec
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0xd6
    add     r3, r0, r3
    blr


.globl setTevKColor__13J3DTevBlock16FUl10J3DGXColor
setTevKColor__13J3DTevBlock16FUl10J3DGXColor: # 0x802dbc00
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0xf6(r3)
    blr


.globl setTevKColor__13J3DTevBlock16FUlPC10J3DGXColor
setTevKColor__13J3DTevBlock16FUlPC10J3DGXColor: # 0x802dbc14
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0xf6(r3)
    blr


.globl getTevKColor__13J3DTevBlock16FUl
getTevKColor__13J3DTevBlock16FUl: # 0x802dbc28
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0xf6
    add     r3, r0, r3
    blr


.globl setTevKColorSel__13J3DTevBlock16FUlUc
setTevKColorSel__13J3DTevBlock16FUlUc: # 0x802dbc3c
    add     r3, r3, r4
    stb     r5, 0x106(r3)
    blr


.globl setTevKColorSel__13J3DTevBlock16FUlPCUc
setTevKColorSel__13J3DTevBlock16FUlPCUc: # 0x802dbc48
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x106(r3)
    blr


.globl getTevKColorSel__13J3DTevBlock16FUl
getTevKColorSel__13J3DTevBlock16FUl: # 0x802dbc58
    add     r3, r3, r4
    lbz     r3, 0x106(r3)
    blr


.globl setTevKAlphaSel__13J3DTevBlock16FUlUc
setTevKAlphaSel__13J3DTevBlock16FUlUc: # 0x802dbc64
    add     r3, r3, r4
    stb     r5, 0x116(r3)
    blr


.globl setTevKAlphaSel__13J3DTevBlock16FUlPCUc
setTevKAlphaSel__13J3DTevBlock16FUlPCUc: # 0x802dbc70
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x116(r3)
    blr


.globl getTevKAlphaSel__13J3DTevBlock16FUl
getTevKAlphaSel__13J3DTevBlock16FUl: # 0x802dbc80
    add     r3, r3, r4
    lbz     r3, 0x116(r3)
    blr


.globl setTevStageNum__13J3DTevBlock16FUc
setTevStageNum__13J3DTevBlock16FUc: # 0x802dbc8c
    stb     r4, 0x54(r3)
    blr


.globl setTevStageNum__13J3DTevBlock16FPCUc
setTevStageNum__13J3DTevBlock16FPCUc: # 0x802dbc94
    lbz     r0, 0x0(r4)
    stb     r0, 0x54(r3)
    blr


.globl getTevStageNum__13J3DTevBlock16CFv
getTevStageNum__13J3DTevBlock16CFv: # 0x802dbca0
    lbz     r3, 0x54(r3)
    blr


.globl setTevStage__13J3DTevBlock16FUl11J3DTevStage
setTevStage__13J3DTevBlock16FUl11J3DTevStage: # 0x802dbca8
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0x56(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x57(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x58(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x5a(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x5b(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x5c(r3)
    blr


.globl setTevStage__13J3DTevBlock16FUlPC11J3DTevStage
setTevStage__13J3DTevBlock16FUlPC11J3DTevStage: # 0x802dbce4
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0x56(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x57(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x58(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x5a(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x5b(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x5c(r3)
    blr


.globl getTevStage__13J3DTevBlock16FUl
getTevStage__13J3DTevBlock16FUl: # 0x802dbd20
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0x55
    add     r3, r0, r3
    blr


.globl setTevSwapModeInfo__13J3DTevBlock16FUl18J3DTevSwapModeInfo
setTevSwapModeInfo__13J3DTevBlock16FUl18J3DTevSwapModeInfo: # 0x802dbd34
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r4, r3, r4
    lbz     r3, 0x5c(r4)
    slwi    r0, r0, 2
    rlwinm  r3, r3, 0, 30, 27
    or      r0, r3, r0
    stb     r0, 0x5c(r4)
    lbz     r3, 0x5c(r4)
    lbz     r0, 0x0(r5)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x5c(r4)
    blr


.globl setTevSwapModeInfo__13J3DTevBlock16FUlPC18J3DTevSwapModeInfo
setTevSwapModeInfo__13J3DTevBlock16FUlPC18J3DTevSwapModeInfo: # 0x802dbd6c
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r4, r3, r4
    lbz     r3, 0x5c(r4)
    slwi    r0, r0, 2
    rlwinm  r3, r3, 0, 30, 27
    or      r0, r3, r0
    stb     r0, 0x5c(r4)
    lbz     r3, 0x5c(r4)
    lbz     r0, 0x0(r5)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x5c(r4)
    blr


.globl setTevSwapModeTable__13J3DTevBlock16FUl19J3DTevSwapModeTable
setTevSwapModeTable__13J3DTevBlock16FUl19J3DTevSwapModeTable: # 0x802dbda4
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x126(r3)
    blr


.globl setTevSwapModeTable__13J3DTevBlock16FUlPC19J3DTevSwapModeTable
setTevSwapModeTable__13J3DTevBlock16FUlPC19J3DTevSwapModeTable: # 0x802dbdb4
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x126(r3)
    blr


.globl getTevSwapModeTable__13J3DTevBlock16FUl
getTevSwapModeTable__13J3DTevBlock16FUl: # 0x802dbdc4
    addi    r0, r3, 0x0
    addi    r3, r4, 0x126
    add     r3, r0, r3
    blr


.globl setIndTevStage__13J3DTevBlock16FUl14J3DIndTevStage
setIndTevStage__13J3DTevBlock16FUl14J3DIndTevStage: # 0x802dbdd4
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x12a(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x12b(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x12c(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x12d(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x12e(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x12f(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x130(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x131(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x132(r3)
    blr


.globl setIndTevStage__13J3DTevBlock16FUlPC14J3DIndTevStage
setIndTevStage__13J3DTevBlock16FUlPC14J3DIndTevStage: # 0x802dbe28
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x12a(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x12b(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x12c(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x12d(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x12e(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x12f(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x130(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x131(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x132(r3)
    blr


.globl getIndTevStage__13J3DTevBlock16FUl
getIndTevStage__13J3DTevBlock16FUl: # 0x802dbe7c
    mulli   r4, r4, 0xc
    addi    r0, r3, 0x0
    addi    r3, r4, 0x12a
    add     r3, r0, r3
    blr


.globl __dt__13J3DTevBlock16Fv
__dt__13J3DTevBlock16Fv: # 0x802dbe90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dbed4
    lis     r3, __vvt__13J3DTevBlock16@h
    addi    r0, r3, __vvt__13J3DTevBlock16@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dbec4
    lis     r3, __vvt__11J3DTevBlock@h
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
branch_0x802dbec4:
    extsh.  r0, r4
    ble-    branch_0x802dbed4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dbed4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__12J3DTevBlock4Fv
getType__12J3DTevBlock4Fv: # 0x802dbeec
    lis     r3, unk_54564234@h
    addi    r3, r3, unk_54564234@l
    blr


.globl setTexNo__12J3DTevBlock4FUlUs
setTexNo__12J3DTevBlock4FUlUs: # 0x802dbef8
    slwi    r0, r4, 1
    add     r3, r3, r0
    sth     r5, 0x4(r3)
    blr


.globl setTexNo__12J3DTevBlock4FUlPCUs
setTexNo__12J3DTevBlock4FUlPCUs: # 0x802dbf08
    slwi    r0, r4, 1
    lhz     r4, 0x0(r5)
    add     r3, r3, r0
    sth     r4, 0x4(r3)
    blr


.globl getTexNo__12J3DTevBlock4CFUl
getTexNo__12J3DTevBlock4CFUl: # 0x802dbf1c
    slwi    r0, r4, 1
    add     r3, r3, r0
    lhz     r3, 0x4(r3)
    blr


.globl setTevOrder__12J3DTevBlock4FUl11J3DTevOrder
setTevOrder__12J3DTevBlock4FUl11J3DTevOrder: # 0x802dbf2c
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0xc(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0xd(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xe(r3)
    blr


.globl setTevOrder__12J3DTevBlock4FUlPC11J3DTevOrder
setTevOrder__12J3DTevBlock4FUlPC11J3DTevOrder: # 0x802dbf50
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0xc(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0xd(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xe(r3)
    blr


.globl getTevOrder__12J3DTevBlock4FUl
getTevOrder__12J3DTevBlock4FUl: # 0x802dbf74
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0xc
    add     r3, r0, r3
    blr


.globl setTevColor__12J3DTevBlock4FUl13J3DGXColorS10
setTevColor__12J3DTevBlock4FUl13J3DGXColorS10: # 0x802dbf88
    slwi    r6, r4, 3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r3, r6
    stw     r4, 0x3e(r3)
    stw     r0, 0x42(r3)
    blr


.globl setTevColor__12J3DTevBlock4FUlPC13J3DGXColorS10
setTevColor__12J3DTevBlock4FUlPC13J3DGXColorS10: # 0x802dbfa4
    slwi    r6, r4, 3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r3, r6
    stw     r4, 0x3e(r3)
    stw     r0, 0x42(r3)
    blr


.globl getTevColor__12J3DTevBlock4FUl
getTevColor__12J3DTevBlock4FUl: # 0x802dbfc0
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0x3e
    add     r3, r0, r3
    blr


.globl setTevKColor__12J3DTevBlock4FUl10J3DGXColor
setTevKColor__12J3DTevBlock4FUl10J3DGXColor: # 0x802dbfd4
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x5e(r3)
    blr


.globl setTevKColor__12J3DTevBlock4FUlPC10J3DGXColor
setTevKColor__12J3DTevBlock4FUlPC10J3DGXColor: # 0x802dbfe8
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x5e(r3)
    blr


.globl getTevKColor__12J3DTevBlock4FUl
getTevKColor__12J3DTevBlock4FUl: # 0x802dbffc
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x5e
    add     r3, r0, r3
    blr


.globl setTevKColorSel__12J3DTevBlock4FUlUc
setTevKColorSel__12J3DTevBlock4FUlUc: # 0x802dc010
    add     r3, r3, r4
    stb     r5, 0x6e(r3)
    blr


.globl setTevKColorSel__12J3DTevBlock4FUlPCUc
setTevKColorSel__12J3DTevBlock4FUlPCUc: # 0x802dc01c
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x6e(r3)
    blr


.globl getTevKColorSel__12J3DTevBlock4FUl
getTevKColorSel__12J3DTevBlock4FUl: # 0x802dc02c
    add     r3, r3, r4
    lbz     r3, 0x6e(r3)
    blr


.globl setTevKAlphaSel__12J3DTevBlock4FUlUc
setTevKAlphaSel__12J3DTevBlock4FUlUc: # 0x802dc038
    add     r3, r3, r4
    stb     r5, 0x72(r3)
    blr


.globl setTevKAlphaSel__12J3DTevBlock4FUlPCUc
setTevKAlphaSel__12J3DTevBlock4FUlPCUc: # 0x802dc044
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x72(r3)
    blr


.globl getTevKAlphaSel__12J3DTevBlock4FUl
getTevKAlphaSel__12J3DTevBlock4FUl: # 0x802dc054
    add     r3, r3, r4
    lbz     r3, 0x72(r3)
    blr


.globl setTevStageNum__12J3DTevBlock4FUc
setTevStageNum__12J3DTevBlock4FUc: # 0x802dc060
    stb     r4, 0x1c(r3)
    blr


.globl setTevStageNum__12J3DTevBlock4FPCUc
setTevStageNum__12J3DTevBlock4FPCUc: # 0x802dc068
    lbz     r0, 0x0(r4)
    stb     r0, 0x1c(r3)
    blr


.globl getTevStageNum__12J3DTevBlock4CFv
getTevStageNum__12J3DTevBlock4CFv: # 0x802dc074
    lbz     r3, 0x1c(r3)
    blr


.globl setTevStage__12J3DTevBlock4FUl11J3DTevStage
setTevStage__12J3DTevBlock4FUl11J3DTevStage: # 0x802dc07c
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0x1e(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x1f(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x20(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x22(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x23(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x24(r3)
    blr


.globl setTevStage__12J3DTevBlock4FUlPC11J3DTevStage
setTevStage__12J3DTevBlock4FUlPC11J3DTevStage: # 0x802dc0b8
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0x1e(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x1f(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x20(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x22(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x23(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x24(r3)
    blr


.globl getTevStage__12J3DTevBlock4FUl
getTevStage__12J3DTevBlock4FUl: # 0x802dc0f4
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0x1d
    add     r3, r0, r3
    blr


.globl setTevSwapModeInfo__12J3DTevBlock4FUl18J3DTevSwapModeInfo
setTevSwapModeInfo__12J3DTevBlock4FUl18J3DTevSwapModeInfo: # 0x802dc108
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r4, r3, r4
    lbz     r3, 0x24(r4)
    slwi    r0, r0, 2
    rlwinm  r3, r3, 0, 30, 27
    or      r0, r3, r0
    stb     r0, 0x24(r4)
    lbz     r3, 0x24(r4)
    lbz     r0, 0x0(r5)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x24(r4)
    blr


.globl setTevSwapModeInfo__12J3DTevBlock4FUlPC18J3DTevSwapModeInfo
setTevSwapModeInfo__12J3DTevBlock4FUlPC18J3DTevSwapModeInfo: # 0x802dc140
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r4, r3, r4
    lbz     r3, 0x24(r4)
    slwi    r0, r0, 2
    rlwinm  r3, r3, 0, 30, 27
    or      r0, r3, r0
    stb     r0, 0x24(r4)
    lbz     r3, 0x24(r4)
    lbz     r0, 0x0(r5)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x24(r4)
    blr


.globl setTevSwapModeTable__12J3DTevBlock4FUl19J3DTevSwapModeTable
setTevSwapModeTable__12J3DTevBlock4FUl19J3DTevSwapModeTable: # 0x802dc178
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x76(r3)
    blr


.globl setTevSwapModeTable__12J3DTevBlock4FUlPC19J3DTevSwapModeTable
setTevSwapModeTable__12J3DTevBlock4FUlPC19J3DTevSwapModeTable: # 0x802dc188
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x76(r3)
    blr


.globl getTevSwapModeTable__12J3DTevBlock4FUl
getTevSwapModeTable__12J3DTevBlock4FUl: # 0x802dc198
    addi    r0, r3, 0x0
    addi    r3, r4, 0x76
    add     r3, r0, r3
    blr


.globl setIndTevStage__12J3DTevBlock4FUl14J3DIndTevStage
setIndTevStage__12J3DTevBlock4FUl14J3DIndTevStage: # 0x802dc1a8
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x7a(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x7b(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x7c(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x7d(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x7e(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x7f(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x80(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x81(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x82(r3)
    blr


.globl setIndTevStage__12J3DTevBlock4FUlPC14J3DIndTevStage
setIndTevStage__12J3DTevBlock4FUlPC14J3DIndTevStage: # 0x802dc1fc
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x7a(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x7b(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x7c(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x7d(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x7e(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x7f(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x80(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x81(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x82(r3)
    blr


.globl getIndTevStage__12J3DTevBlock4FUl
getIndTevStage__12J3DTevBlock4FUl: # 0x802dc250
    mulli   r4, r4, 0xc
    addi    r0, r3, 0x0
    addi    r3, r4, 0x7a
    add     r3, r0, r3
    blr


.globl __dt__12J3DTevBlock4Fv
__dt__12J3DTevBlock4Fv: # 0x802dc264
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dc2a8
    lis     r3, __vvt__12J3DTevBlock4@h
    addi    r0, r3, __vvt__12J3DTevBlock4@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dc298
    lis     r3, __vvt__11J3DTevBlock@h
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
branch_0x802dc298:
    extsh.  r0, r4
    ble-    branch_0x802dc2a8
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dc2a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__12J3DTevBlock2Fv
getType__12J3DTevBlock2Fv: # 0x802dc2c0
    lis     r3, unk_54564232@h
    addi    r3, r3, unk_54564232@l
    blr


.globl setTexNo__12J3DTevBlock2FUlUs
setTexNo__12J3DTevBlock2FUlUs: # 0x802dc2cc
    slwi    r0, r4, 1
    add     r3, r3, r0
    sth     r5, 0x4(r3)
    blr


.globl setTexNo__12J3DTevBlock2FUlPCUs
setTexNo__12J3DTevBlock2FUlPCUs: # 0x802dc2dc
    slwi    r0, r4, 1
    lhz     r4, 0x0(r5)
    add     r3, r3, r0
    sth     r4, 0x4(r3)
    blr


.globl getTexNo__12J3DTevBlock2CFUl
getTexNo__12J3DTevBlock2CFUl: # 0x802dc2f0
    slwi    r0, r4, 1
    add     r3, r3, r0
    lhz     r3, 0x4(r3)
    blr


.globl setTevOrder__12J3DTevBlock2FUl11J3DTevOrder
setTevOrder__12J3DTevBlock2FUl11J3DTevOrder: # 0x802dc300
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x8(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x9(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xa(r3)
    blr


.globl setTevOrder__12J3DTevBlock2FUlPC11J3DTevOrder
setTevOrder__12J3DTevBlock2FUlPC11J3DTevOrder: # 0x802dc324
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x8(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x9(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xa(r3)
    blr


.globl getTevOrder__12J3DTevBlock2FUl
getTevOrder__12J3DTevBlock2FUl: # 0x802dc348
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x8
    add     r3, r0, r3
    blr


.globl setTevColor__12J3DTevBlock2FUl13J3DGXColorS10
setTevColor__12J3DTevBlock2FUl13J3DGXColorS10: # 0x802dc35c
    slwi    r6, r4, 3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r3, r6
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl setTevColor__12J3DTevBlock2FUlPC13J3DGXColorS10
setTevColor__12J3DTevBlock2FUlPC13J3DGXColorS10: # 0x802dc378
    slwi    r6, r4, 3
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    add     r3, r3, r6
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl getTevColor__12J3DTevBlock2FUl
getTevColor__12J3DTevBlock2FUl: # 0x802dc394
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0x10
    add     r3, r0, r3
    blr


.globl setTevKColor__12J3DTevBlock2FUl10J3DGXColor
setTevKColor__12J3DTevBlock2FUl10J3DGXColor: # 0x802dc3a8
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x41(r3)
    blr


.globl setTevKColor__12J3DTevBlock2FUlPC10J3DGXColor
setTevKColor__12J3DTevBlock2FUlPC10J3DGXColor: # 0x802dc3bc
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x41(r3)
    blr


.globl getTevKColor__12J3DTevBlock2FUl
getTevKColor__12J3DTevBlock2FUl: # 0x802dc3d0
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x41
    add     r3, r0, r3
    blr


.globl setTevKColorSel__12J3DTevBlock2FUlUc
setTevKColorSel__12J3DTevBlock2FUlUc: # 0x802dc3e4
    add     r3, r3, r4
    stb     r5, 0x51(r3)
    blr


.globl setTevKColorSel__12J3DTevBlock2FUlPCUc
setTevKColorSel__12J3DTevBlock2FUlPCUc: # 0x802dc3f0
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x51(r3)
    blr


.globl getTevKColorSel__12J3DTevBlock2FUl
getTevKColorSel__12J3DTevBlock2FUl: # 0x802dc400
    add     r3, r3, r4
    lbz     r3, 0x51(r3)
    blr


.globl setTevKAlphaSel__12J3DTevBlock2FUlUc
setTevKAlphaSel__12J3DTevBlock2FUlUc: # 0x802dc40c
    add     r3, r3, r4
    stb     r5, 0x53(r3)
    blr


.globl setTevKAlphaSel__12J3DTevBlock2FUlPCUc
setTevKAlphaSel__12J3DTevBlock2FUlPCUc: # 0x802dc418
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x53(r3)
    blr


.globl getTevKAlphaSel__12J3DTevBlock2FUl
getTevKAlphaSel__12J3DTevBlock2FUl: # 0x802dc428
    add     r3, r3, r4
    lbz     r3, 0x53(r3)
    blr


.globl setTevStageNum__12J3DTevBlock2FUc
setTevStageNum__12J3DTevBlock2FUc: # 0x802dc434
    stb     r4, 0x30(r3)
    blr


.globl setTevStageNum__12J3DTevBlock2FPCUc
setTevStageNum__12J3DTevBlock2FPCUc: # 0x802dc43c
    lbz     r0, 0x0(r4)
    stb     r0, 0x30(r3)
    blr


.globl getTevStageNum__12J3DTevBlock2CFv
getTevStageNum__12J3DTevBlock2CFv: # 0x802dc448
    lbz     r3, 0x30(r3)
    blr


.globl setTevStage__12J3DTevBlock2FUl11J3DTevStage
setTevStage__12J3DTevBlock2FUl11J3DTevStage: # 0x802dc450
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0x32(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x33(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x34(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x36(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x37(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x38(r3)
    blr


.globl setTevStage__12J3DTevBlock2FUlPC11J3DTevStage
setTevStage__12J3DTevBlock2FUlPC11J3DTevStage: # 0x802dc48c
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0x32(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x33(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x34(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x36(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x37(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x38(r3)
    blr


.globl getTevStage__12J3DTevBlock2FUl
getTevStage__12J3DTevBlock2FUl: # 0x802dc4c8
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0x31
    add     r3, r0, r3
    blr


.globl setTevSwapModeInfo__12J3DTevBlock2FUl18J3DTevSwapModeInfo
setTevSwapModeInfo__12J3DTevBlock2FUl18J3DTevSwapModeInfo: # 0x802dc4dc
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r4, r3, r4
    lbz     r3, 0x38(r4)
    slwi    r0, r0, 2
    rlwinm  r3, r3, 0, 30, 27
    or      r0, r3, r0
    stb     r0, 0x38(r4)
    lbz     r3, 0x38(r4)
    lbz     r0, 0x0(r5)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x38(r4)
    blr


.globl setTevSwapModeInfo__12J3DTevBlock2FUlPC18J3DTevSwapModeInfo
setTevSwapModeInfo__12J3DTevBlock2FUlPC18J3DTevSwapModeInfo: # 0x802dc514
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r4, r3, r4
    lbz     r3, 0x38(r4)
    slwi    r0, r0, 2
    rlwinm  r3, r3, 0, 30, 27
    or      r0, r3, r0
    stb     r0, 0x38(r4)
    lbz     r3, 0x38(r4)
    lbz     r0, 0x0(r5)
    clrrwi  r3, r3, 2
    or      r0, r3, r0
    stb     r0, 0x38(r4)
    blr


.globl setTevSwapModeTable__12J3DTevBlock2FUl19J3DTevSwapModeTable
setTevSwapModeTable__12J3DTevBlock2FUl19J3DTevSwapModeTable: # 0x802dc54c
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x55(r3)
    blr


.globl setTevSwapModeTable__12J3DTevBlock2FUlPC19J3DTevSwapModeTable
setTevSwapModeTable__12J3DTevBlock2FUlPC19J3DTevSwapModeTable: # 0x802dc55c
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x55(r3)
    blr


.globl getTevSwapModeTable__12J3DTevBlock2FUl
getTevSwapModeTable__12J3DTevBlock2FUl: # 0x802dc56c
    addi    r0, r3, 0x0
    addi    r3, r4, 0x55
    add     r3, r0, r3
    blr


.globl setIndTevStage__12J3DTevBlock2FUl14J3DIndTevStage
setIndTevStage__12J3DTevBlock2FUl14J3DIndTevStage: # 0x802dc57c
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x59(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x5a(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x5b(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x5c(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x5d(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x5e(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x5f(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x60(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x61(r3)
    blr


.globl setIndTevStage__12J3DTevBlock2FUlPC14J3DIndTevStage
setIndTevStage__12J3DTevBlock2FUlPC14J3DIndTevStage: # 0x802dc5d0
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x59(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x5a(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x5b(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x5c(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x5d(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x5e(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x5f(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x60(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x61(r3)
    blr


.globl getIndTevStage__12J3DTevBlock2FUl
getIndTevStage__12J3DTevBlock2FUl: # 0x802dc624
    mulli   r4, r4, 0xc
    addi    r0, r3, 0x0
    addi    r3, r4, 0x59
    add     r3, r0, r3
    blr


.globl __dt__12J3DTevBlock2Fv
__dt__12J3DTevBlock2Fv: # 0x802dc638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dc67c
    lis     r3, __vvt__12J3DTevBlock2@h
    addi    r0, r3, __vvt__12J3DTevBlock2@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dc66c
    lis     r3, __vvt__11J3DTevBlock@h
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
branch_0x802dc66c:
    extsh.  r0, r4
    ble-    branch_0x802dc67c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dc67c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__12J3DTevBlock1Fv
getType__12J3DTevBlock1Fv: # 0x802dc694
    lis     r3, unk_54564231@h
    addi    r3, r3, unk_54564231@l
    blr


.globl setTexNo__12J3DTevBlock1FUlUs
setTexNo__12J3DTevBlock1FUlUs: # 0x802dc6a0
    slwi    r0, r4, 1
    add     r3, r3, r0
    sth     r5, 0x4(r3)
    blr


.globl setTexNo__12J3DTevBlock1FUlPCUs
setTexNo__12J3DTevBlock1FUlPCUs: # 0x802dc6b0
    slwi    r0, r4, 1
    lhz     r4, 0x0(r5)
    add     r3, r3, r0
    sth     r4, 0x4(r3)
    blr


.globl getTexNo__12J3DTevBlock1CFUl
getTexNo__12J3DTevBlock1CFUl: # 0x802dc6c4
    slwi    r0, r4, 1
    add     r3, r3, r0
    lhz     r3, 0x4(r3)
    blr


.globl setTevOrder__12J3DTevBlock1FUl11J3DTevOrder
setTevOrder__12J3DTevBlock1FUl11J3DTevOrder: # 0x802dc6d4
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x6(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x7(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x8(r3)
    blr


.globl setTevOrder__12J3DTevBlock1FUlPC11J3DTevOrder
setTevOrder__12J3DTevBlock1FUlPC11J3DTevOrder: # 0x802dc6f8
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x6(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x7(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x8(r3)
    blr


.globl getTevOrder__12J3DTevBlock1FUl
getTevOrder__12J3DTevBlock1FUl: # 0x802dc71c
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x6
    add     r3, r0, r3
    blr


.globl setTevColor__12J3DTevBlock1FUl13J3DGXColorS10
setTevColor__12J3DTevBlock1FUl13J3DGXColorS10: # 0x802dc730
    blr


.globl setTevColor__12J3DTevBlock1FUlPC13J3DGXColorS10
setTevColor__12J3DTevBlock1FUlPC13J3DGXColorS10: # 0x802dc734
    blr


.globl getTevColor__12J3DTevBlock1FUl
getTevColor__12J3DTevBlock1FUl: # 0x802dc738
    li      r3, 0x0
    blr


.globl setTevKColor__12J3DTevBlock1FUl10J3DGXColor
setTevKColor__12J3DTevBlock1FUl10J3DGXColor: # 0x802dc740
    blr


.globl setTevKColor__12J3DTevBlock1FUlPC10J3DGXColor
setTevKColor__12J3DTevBlock1FUlPC10J3DGXColor: # 0x802dc744
    blr


.globl getTevKColor__12J3DTevBlock1FUl
getTevKColor__12J3DTevBlock1FUl: # 0x802dc748
    li      r3, 0x0
    blr


.globl setTevKColorSel__12J3DTevBlock1FUlUc
setTevKColorSel__12J3DTevBlock1FUlUc: # 0x802dc750
    blr


.globl setTevKColorSel__12J3DTevBlock1FUlPCUc
setTevKColorSel__12J3DTevBlock1FUlPCUc: # 0x802dc754
    blr


.globl getTevKColorSel__12J3DTevBlock1FUl
getTevKColorSel__12J3DTevBlock1FUl: # 0x802dc758
    li      r3, 0x0
    blr


.globl setTevKAlphaSel__12J3DTevBlock1FUlUc
setTevKAlphaSel__12J3DTevBlock1FUlUc: # 0x802dc760
    blr


.globl setTevKAlphaSel__12J3DTevBlock1FUlPCUc
setTevKAlphaSel__12J3DTevBlock1FUlPCUc: # 0x802dc764
    blr


.globl getTevKAlphaSel__12J3DTevBlock1FUl
getTevKAlphaSel__12J3DTevBlock1FUl: # 0x802dc768
    li      r3, 0x0
    blr


.globl setTevStageNum__12J3DTevBlock1FUc
setTevStageNum__12J3DTevBlock1FUc: # 0x802dc770
    blr


.globl setTevStageNum__12J3DTevBlock1FPCUc
setTevStageNum__12J3DTevBlock1FPCUc: # 0x802dc774
    blr


.globl getTevStageNum__12J3DTevBlock1CFv
getTevStageNum__12J3DTevBlock1CFv: # 0x802dc778
    li      r3, 0x1
    blr


.globl setTevStage__12J3DTevBlock1FUl11J3DTevStage
setTevStage__12J3DTevBlock1FUl11J3DTevStage: # 0x802dc780
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0xb(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xc(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0xd(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0xf(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x10(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x11(r3)
    blr


.globl setTevStage__12J3DTevBlock1FUlPC11J3DTevStage
setTevStage__12J3DTevBlock1FUlPC11J3DTevStage: # 0x802dc7bc
    slwi    r4, r4, 3
    lbz     r0, 0x1(r5)
    add     r3, r3, r4
    stb     r0, 0xb(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xc(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0xd(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0xf(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x10(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x11(r3)
    blr


.globl getTevStage__12J3DTevBlock1FUl
getTevStage__12J3DTevBlock1FUl: # 0x802dc7f8
    slwi    r4, r4, 3
    addi    r0, r3, 0x0
    addi    r3, r4, 0xa
    add     r3, r0, r3
    blr


.globl setTevSwapModeInfo__12J3DTevBlock1FUl18J3DTevSwapModeInfo
setTevSwapModeInfo__12J3DTevBlock1FUl18J3DTevSwapModeInfo: # 0x802dc80c
    blr


.globl setTevSwapModeInfo__12J3DTevBlock1FUlPC18J3DTevSwapModeInfo
setTevSwapModeInfo__12J3DTevBlock1FUlPC18J3DTevSwapModeInfo: # 0x802dc810
    blr


.globl setTevSwapModeTable__12J3DTevBlock1FUl19J3DTevSwapModeTable
setTevSwapModeTable__12J3DTevBlock1FUl19J3DTevSwapModeTable: # 0x802dc814
    blr


.globl setTevSwapModeTable__12J3DTevBlock1FUlPC19J3DTevSwapModeTable
setTevSwapModeTable__12J3DTevBlock1FUlPC19J3DTevSwapModeTable: # 0x802dc818
    blr


.globl getTevSwapModeTable__12J3DTevBlock1FUl
getTevSwapModeTable__12J3DTevBlock1FUl: # 0x802dc81c
    li      r3, 0x0
    blr


.globl setIndTevStage__12J3DTevBlock1FUl14J3DIndTevStage
setIndTevStage__12J3DTevBlock1FUl14J3DIndTevStage: # 0x802dc824
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x12(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x13(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x14(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x15(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x16(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x17(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x18(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x19(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x1a(r3)
    blr


.globl setIndTevStage__12J3DTevBlock1FUlPC14J3DIndTevStage
setIndTevStage__12J3DTevBlock1FUlPC14J3DIndTevStage: # 0x802dc878
    mulli   r4, r4, 0xc
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x12(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x13(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0x14(r3)
    lbz     r0, 0x3(r5)
    stb     r0, 0x15(r3)
    lbz     r0, 0x4(r5)
    stb     r0, 0x16(r3)
    lbz     r0, 0x5(r5)
    stb     r0, 0x17(r3)
    lbz     r0, 0x6(r5)
    stb     r0, 0x18(r3)
    lbz     r0, 0x7(r5)
    stb     r0, 0x19(r3)
    lbz     r0, 0x8(r5)
    stb     r0, 0x1a(r3)
    blr


.globl getIndTevStage__12J3DTevBlock1FUl
getIndTevStage__12J3DTevBlock1FUl: # 0x802dc8cc
    mulli   r4, r4, 0xc
    addi    r0, r3, 0x0
    addi    r3, r4, 0x12
    add     r3, r0, r3
    blr


.globl __dt__12J3DTevBlock1Fv
__dt__12J3DTevBlock1Fv: # 0x802dc8e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dc924
    lis     r3, __vvt__12J3DTevBlock1@h
    addi    r0, r3, __vvt__12J3DTevBlock1@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dc914
    lis     r3, __vvt__11J3DTevBlock@h
    addi    r0, r3, __vvt__11J3DTevBlock@l
    stw     r0, 0x0(r31)
branch_0x802dc914:
    extsh.  r0, r4
    ble-    branch_0x802dc924
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dc924:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__19J3DTexGenBlockBasicFv
getType__19J3DTexGenBlockBasicFv: # 0x802dc93c
    lis     r3, unk_54474243@h
    addi    r3, r3, unk_54474243@l
    blr


.globl setTexGenNum__19J3DTexGenBlockBasicFUl
setTexGenNum__19J3DTexGenBlockBasicFUl: # 0x802dc948
    stw     r4, 0x4(r3)
    blr


.globl setTexGenNum__19J3DTexGenBlockBasicFPCUl
setTexGenNum__19J3DTexGenBlockBasicFPCUl: # 0x802dc950
    lwz     r0, 0x0(r4)
    stw     r0, 0x4(r3)
    blr


.globl getTexGenNum__19J3DTexGenBlockBasicCFv
getTexGenNum__19J3DTexGenBlockBasicCFv: # 0x802dc95c
    lwz     r3, 0x4(r3)
    blr


.globl setTexCoord__19J3DTexGenBlockBasicFUlPC11J3DTexCoord
setTexCoord__19J3DTexGenBlockBasicFUlPC11J3DTexCoord: # 0x802dc964
    slwi    r4, r4, 2
    lbz     r0, 0x0(r5)
    add     r3, r3, r4
    stb     r0, 0x8(r3)
    lbz     r0, 0x1(r5)
    stb     r0, 0x9(r3)
    lbz     r0, 0x2(r5)
    stb     r0, 0xa(r3)
    blr


.globl getTexCoord__19J3DTexGenBlockBasicFUl
getTexCoord__19J3DTexGenBlockBasicFUl: # 0x802dc988
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x8
    add     r3, r0, r3
    blr


.globl setTexMtx__19J3DTexGenBlockBasicFUlP9J3DTexMtx
setTexMtx__19J3DTexGenBlockBasicFUlP9J3DTexMtx: # 0x802dc99c
    slwi    r0, r4, 2
    add     r3, r3, r0
    stw     r5, 0x28(r3)
    blr


.globl replaceTexMtx__19J3DTexGenBlockBasicFUlP9J3DTexMtx
replaceTexMtx__19J3DTexGenBlockBasicFUlP9J3DTexMtx: # 0x802dc9ac
    slwi    r0, r4, 2
    add     r4, r3, r0
    lwz     r3, 0x28(r4)
    stw     r5, 0x28(r4)
    blr


.globl getTexMtx__19J3DTexGenBlockBasicFUl
getTexMtx__19J3DTexGenBlockBasicFUl: # 0x802dc9c0
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x28(r3)
    blr


.globl setNBTScale__19J3DTexGenBlockBasicF11J3DNBTScale
setNBTScale__19J3DTexGenBlockBasicF11J3DNBTScale: # 0x802dc9d0
    lbz     r0, 0x0(r4)
    stb     r0, 0x48(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4c(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x50(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x54(r3)
    blr


.globl setNBTScale__19J3DTexGenBlockBasicFPC11J3DNBTScale
setNBTScale__19J3DTexGenBlockBasicFPC11J3DNBTScale: # 0x802dc9f4
    lbz     r0, 0x0(r4)
    stb     r0, 0x48(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4c(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x50(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x54(r3)
    blr


.globl getNBTScale__19J3DTexGenBlockBasicFv
getNBTScale__19J3DTexGenBlockBasicFv: # 0x802dca18
    addi    r3, r3, 0x48
    blr


.globl __dt__19J3DTexGenBlockBasicFv
__dt__19J3DTexGenBlockBasicFv: # 0x802dca20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dca64
    lis     r3, __vvt__19J3DTexGenBlockBasic@h
    addi    r0, r3, __vvt__19J3DTexGenBlockBasic@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dca54
    lis     r3, __vvt__14J3DTexGenBlock@h
    addi    r0, r3, __vvt__14J3DTexGenBlock@l
    stw     r0, 0x0(r31)
branch_0x802dca54:
    extsh.  r0, r4
    ble-    branch_0x802dca64
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dca64:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__20J3DColorBlockLightOnFv
getType__20J3DColorBlockLightOnFv: # 0x802dca7c
    lis     r3, unk_434c4f4e@h
    addi    r3, r3, unk_434c4f4e@l
    blr


.globl setMatColor__20J3DColorBlockLightOnFUl10J3DGXColor
setMatColor__20J3DColorBlockLightOnFUl10J3DGXColor: # 0x802dca88
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x4(r3)
    blr


.globl setMatColor__20J3DColorBlockLightOnFUlPC10J3DGXColor
setMatColor__20J3DColorBlockLightOnFUlPC10J3DGXColor: # 0x802dca9c
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x4(r3)
    blr


.globl getMatColor__20J3DColorBlockLightOnFUl
getMatColor__20J3DColorBlockLightOnFUl: # 0x802dcab0
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x4
    add     r3, r0, r3
    blr


.globl setAmbColor__20J3DColorBlockLightOnFUl10J3DGXColor
setAmbColor__20J3DColorBlockLightOnFUl10J3DGXColor: # 0x802dcac4
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0xc(r3)
    blr


.globl setAmbColor__20J3DColorBlockLightOnFUlPC10J3DGXColor
setAmbColor__20J3DColorBlockLightOnFUlPC10J3DGXColor: # 0x802dcad8
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0xc(r3)
    blr


.globl getAmbColor__20J3DColorBlockLightOnFUl
getAmbColor__20J3DColorBlockLightOnFUl: # 0x802dcaec
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0xc
    add     r3, r0, r3
    blr


.globl setColorChanNum__20J3DColorBlockLightOnFPCUc
setColorChanNum__20J3DColorBlockLightOnFPCUc: # 0x802dcb00
    lbz     r0, 0x0(r4)
    stb     r0, 0x14(r3)
    blr


.globl setColorChanNum__20J3DColorBlockLightOnFUc
setColorChanNum__20J3DColorBlockLightOnFUc: # 0x802dcb0c
    stb     r4, 0x14(r3)
    blr


.globl getColorChanNum__20J3DColorBlockLightOnCFv
getColorChanNum__20J3DColorBlockLightOnCFv: # 0x802dcb14
    lbz     r3, 0x14(r3)
    blr


.globl setColorChan__20J3DColorBlockLightOnFUlPC12J3DColorChan
setColorChan__20J3DColorBlockLightOnFUlPC12J3DColorChan: # 0x802dcb1c
    slwi    r4, r4, 1
    lhz     r0, 0x0(r5)
    add     r3, r3, r4
    sth     r0, 0x16(r3)
    blr


.globl setColorChan__20J3DColorBlockLightOnFUlRC12J3DColorChan
setColorChan__20J3DColorBlockLightOnFUlRC12J3DColorChan: # 0x802dcb30
    slwi    r4, r4, 1
    lhz     r0, 0x0(r5)
    add     r3, r3, r4
    sth     r0, 0x16(r3)
    blr


.globl getColorChan__20J3DColorBlockLightOnFUl
getColorChan__20J3DColorBlockLightOnFUl: # 0x802dcb44
    slwi    r4, r4, 1
    addi    r0, r3, 0x0
    addi    r3, r4, 0x16
    add     r3, r0, r3
    blr


.globl setLight__20J3DColorBlockLightOnFUlP11J3DLightObj
setLight__20J3DColorBlockLightOnFUlP11J3DLightObj: # 0x802dcb58
    slwi    r0, r4, 2
    add     r3, r3, r0
    stw     r5, 0x20(r3)
    blr


.globl replaceLight__20J3DColorBlockLightOnFUlP11J3DLightObj
replaceLight__20J3DColorBlockLightOnFUlP11J3DLightObj: # 0x802dcb68
    slwi    r0, r4, 2
    add     r4, r3, r0
    lwz     r3, 0x20(r4)
    stw     r5, 0x20(r4)
    blr


.globl getLight__20J3DColorBlockLightOnFUl
getLight__20J3DColorBlockLightOnFUl: # 0x802dcb7c
    slwi    r0, r4, 2
    add     r3, r3, r0
    lwz     r3, 0x20(r3)
    blr


.globl setCullMode__20J3DColorBlockLightOnFUc
setCullMode__20J3DColorBlockLightOnFUc: # 0x802dcb8c
    stb     r4, 0x40(r3)
    blr


.globl setCullMode__20J3DColorBlockLightOnFPCUc
setCullMode__20J3DColorBlockLightOnFPCUc: # 0x802dcb94
    lbz     r0, 0x0(r4)
    stb     r0, 0x40(r3)
    blr


.globl getCullMode__20J3DColorBlockLightOnCFv
getCullMode__20J3DColorBlockLightOnCFv: # 0x802dcba0
    lbz     r3, 0x40(r3)
    blr


.globl __dt__20J3DColorBlockLightOnFv
__dt__20J3DColorBlockLightOnFv: # 0x802dcba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dcbec
    lis     r3, __vvt__20J3DColorBlockLightOn@h
    addi    r0, r3, __vvt__20J3DColorBlockLightOn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dcbdc
    lis     r3, __vvt__13J3DColorBlock@h
    addi    r0, r3, __vvt__13J3DColorBlock@l
    stw     r0, 0x0(r31)
branch_0x802dcbdc:
    extsh.  r0, r4
    ble-    branch_0x802dcbec
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dcbec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__21J3DColorBlockLightOffFv
getType__21J3DColorBlockLightOffFv: # 0x802dcc04
    lis     r3, unk_434c4f46@h
    addi    r3, r3, unk_434c4f46@l
    blr


.globl setMatColor__21J3DColorBlockLightOffFUl10J3DGXColor
setMatColor__21J3DColorBlockLightOffFUl10J3DGXColor: # 0x802dcc10
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x4(r3)
    blr


.globl setMatColor__21J3DColorBlockLightOffFUlPC10J3DGXColor
setMatColor__21J3DColorBlockLightOffFUlPC10J3DGXColor: # 0x802dcc24
    slwi    r4, r4, 2
    lwz     r0, 0x0(r5)
    add     r3, r3, r4
    stw     r0, 0x4(r3)
    blr


.globl getMatColor__21J3DColorBlockLightOffFUl
getMatColor__21J3DColorBlockLightOffFUl: # 0x802dcc38
    slwi    r4, r4, 2
    addi    r0, r3, 0x0
    addi    r3, r4, 0x4
    add     r3, r0, r3
    blr


.globl setAmbColor__21J3DColorBlockLightOffFUl10J3DGXColor
setAmbColor__21J3DColorBlockLightOffFUl10J3DGXColor: # 0x802dcc4c
    blr


.globl setAmbColor__21J3DColorBlockLightOffFUlPC10J3DGXColor
setAmbColor__21J3DColorBlockLightOffFUlPC10J3DGXColor: # 0x802dcc50
    blr


.globl getAmbColor__21J3DColorBlockLightOffFUl
getAmbColor__21J3DColorBlockLightOffFUl: # 0x802dcc54
    li      r3, 0x0
    blr


.globl setColorChanNum__21J3DColorBlockLightOffFPCUc
setColorChanNum__21J3DColorBlockLightOffFPCUc: # 0x802dcc5c
    lbz     r0, 0x0(r4)
    stb     r0, 0xc(r3)
    blr


.globl setColorChanNum__21J3DColorBlockLightOffFUc
setColorChanNum__21J3DColorBlockLightOffFUc: # 0x802dcc68
    stb     r4, 0xc(r3)
    blr


.globl getColorChanNum__21J3DColorBlockLightOffCFv
getColorChanNum__21J3DColorBlockLightOffCFv: # 0x802dcc70
    lbz     r3, 0xc(r3)
    blr


.globl setColorChan__21J3DColorBlockLightOffFUlPC12J3DColorChan
setColorChan__21J3DColorBlockLightOffFUlPC12J3DColorChan: # 0x802dcc78
    slwi    r4, r4, 1
    lhz     r0, 0x0(r5)
    add     r3, r3, r4
    sth     r0, 0xe(r3)
    blr


.globl setColorChan__21J3DColorBlockLightOffFUlRC12J3DColorChan
setColorChan__21J3DColorBlockLightOffFUlRC12J3DColorChan: # 0x802dcc8c
    slwi    r4, r4, 1
    lhz     r0, 0x0(r5)
    add     r3, r3, r4
    sth     r0, 0xe(r3)
    blr


.globl getColorChan__21J3DColorBlockLightOffFUl
getColorChan__21J3DColorBlockLightOffFUl: # 0x802dcca0
    slwi    r4, r4, 1
    addi    r0, r3, 0x0
    addi    r3, r4, 0xe
    add     r3, r0, r3
    blr


.globl setLight__21J3DColorBlockLightOffFUlP11J3DLightObj
setLight__21J3DColorBlockLightOffFUlP11J3DLightObj: # 0x802dccb4
    blr


.globl replaceLight__21J3DColorBlockLightOffFUlP11J3DLightObj
replaceLight__21J3DColorBlockLightOffFUlP11J3DLightObj: # 0x802dccb8
    li      r3, 0x0
    blr


.globl getLight__21J3DColorBlockLightOffFUl
getLight__21J3DColorBlockLightOffFUl: # 0x802dccc0
    li      r3, 0x0
    blr


.globl setCullMode__21J3DColorBlockLightOffFUc
setCullMode__21J3DColorBlockLightOffFUc: # 0x802dccc8
    stb     r4, 0x16(r3)
    blr


.globl setCullMode__21J3DColorBlockLightOffFPCUc
setCullMode__21J3DColorBlockLightOffFPCUc: # 0x802dccd0
    lbz     r0, 0x0(r4)
    stb     r0, 0x16(r3)
    blr


.globl getCullMode__21J3DColorBlockLightOffCFv
getCullMode__21J3DColorBlockLightOffCFv: # 0x802dccdc
    lbz     r3, 0x16(r3)
    blr


.globl __dt__21J3DColorBlockLightOffFv
__dt__21J3DColorBlockLightOffFv: # 0x802dcce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dcd28
    lis     r3, __vvt__21J3DColorBlockLightOff@h
    addi    r0, r3, __vvt__21J3DColorBlockLightOff@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dcd18
    lis     r3, __vvt__13J3DColorBlock@h
    addi    r0, r3, __vvt__13J3DColorBlock@l
    stw     r0, 0x0(r31)
branch_0x802dcd18:
    extsh.  r0, r4
    ble-    branch_0x802dcd28
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dcd28:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__13J3DPEBlockXluFv
getType__13J3DPEBlockXluFv: # 0x802dcd40
    lis     r3, unk_5045584c@h
    addi    r3, r3, unk_5045584c@l
    blr


.globl __dt__13J3DPEBlockXluFv
__dt__13J3DPEBlockXluFv: # 0x802dcd4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dcd90
    lis     r3, __vvt__13J3DPEBlockXlu@h
    addi    r0, r3, __vvt__13J3DPEBlockXlu@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dcd80
    lis     r3, __vvt__10J3DPEBlock@h
    addi    r0, r3, __vvt__10J3DPEBlock@l
    stw     r0, 0x0(r31)
branch_0x802dcd80:
    extsh.  r0, r4
    ble-    branch_0x802dcd90
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dcd90:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setFog__10J3DPEBlockFP6J3DFog
setFog__10J3DPEBlockFP6J3DFog: # 0x802dcda8
    blr


.globl replaceFog__10J3DPEBlockFP6J3DFog
replaceFog__10J3DPEBlockFP6J3DFog: # 0x802dcdac
    li      r3, 0x0
    blr


.globl setAlphaComp__10J3DPEBlockF12J3DAlphaComp
setAlphaComp__10J3DPEBlockF12J3DAlphaComp: # 0x802dcdb4
    blr


.globl setAlphaComp__10J3DPEBlockFPC12J3DAlphaComp
setAlphaComp__10J3DPEBlockFPC12J3DAlphaComp: # 0x802dcdb8
    blr


.globl setBlend__10J3DPEBlockF8J3DBlend
setBlend__10J3DPEBlockF8J3DBlend: # 0x802dcdbc
    blr


.globl setBlend__10J3DPEBlockFPC8J3DBlend
setBlend__10J3DPEBlockFPC8J3DBlend: # 0x802dcdc0
    blr


.globl setZMode__10J3DPEBlockF8J3DZMode
setZMode__10J3DPEBlockF8J3DZMode: # 0x802dcdc4
    blr


.globl setZMode__10J3DPEBlockFPC8J3DZMode
setZMode__10J3DPEBlockFPC8J3DZMode: # 0x802dcdc8
    blr


.globl setZCompLoc__10J3DPEBlockFUc
setZCompLoc__10J3DPEBlockFUc: # 0x802dcdcc
    blr


.globl setZCompLoc__10J3DPEBlockFPCUc
setZCompLoc__10J3DPEBlockFPCUc: # 0x802dcdd0
    blr


.globl setDither__10J3DPEBlockFUc
setDither__10J3DPEBlockFUc: # 0x802dcdd4
    blr


.globl setDither__10J3DPEBlockFPCUc
setDither__10J3DPEBlockFPCUc: # 0x802dcdd8
    blr


.globl getDither__10J3DPEBlockCFv
getDither__10J3DPEBlockCFv: # 0x802dcddc
    li      r3, 0x0
    blr


.globl getType__17J3DPEBlockTexEdgeFv
getType__17J3DPEBlockTexEdgeFv: # 0x802dcde4
    lis     r3, unk_50454544@h
    addi    r3, r3, unk_50454544@l
    blr


.globl __dt__17J3DPEBlockTexEdgeFv
__dt__17J3DPEBlockTexEdgeFv: # 0x802dcdf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dce34
    lis     r3, __vvt__17J3DPEBlockTexEdge@h
    addi    r0, r3, __vvt__17J3DPEBlockTexEdge@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dce24
    lis     r3, __vvt__10J3DPEBlock@h
    addi    r0, r3, __vvt__10J3DPEBlock@l
    stw     r0, 0x0(r31)
branch_0x802dce24:
    extsh.  r0, r4
    ble-    branch_0x802dce34
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dce34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__13J3DPEBlockOpaFv
getType__13J3DPEBlockOpaFv: # 0x802dce4c
    lis     r3, unk_50454f50@h
    addi    r3, r3, unk_50454f50@l
    blr


.globl __dt__13J3DPEBlockOpaFv
__dt__13J3DPEBlockOpaFv: # 0x802dce58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dce9c
    lis     r3, __vvt__13J3DPEBlockOpa@h
    addi    r0, r3, __vvt__13J3DPEBlockOpa@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dce8c
    lis     r3, __vvt__10J3DPEBlock@h
    addi    r0, r3, __vvt__10J3DPEBlock@l
    stw     r0, 0x0(r31)
branch_0x802dce8c:
    extsh.  r0, r4
    ble-    branch_0x802dce9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dce9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__15J3DIndBlockNullFP11J3DIndBlock
reset__15J3DIndBlockNullFP11J3DIndBlock: # 0x802dceb4
    blr


.globl countDLSize__15J3DIndBlockNullFv
countDLSize__15J3DIndBlockNullFv: # 0x802dceb8
    li      r3, 0x0
    blr


.globl getType__15J3DIndBlockNullFv
getType__15J3DIndBlockNullFv: # 0x802dcec0
    lis     r3, unk_49424c4e@h
    addi    r3, r3, unk_49424c4e@l
    blr


.globl setIndTexStageNum__15J3DIndBlockNullFUc
setIndTexStageNum__15J3DIndBlockNullFUc: # 0x802dcecc
    blr


.globl getIndTexStageNum__15J3DIndBlockNullCFv
getIndTexStageNum__15J3DIndBlockNullCFv: # 0x802dced0
    li      r3, 0x0
    blr


.globl setIndTexOrder__15J3DIndBlockNullFUlPC14J3DIndTexOrder
setIndTexOrder__15J3DIndBlockNullFUlPC14J3DIndTexOrder: # 0x802dced8
    blr


.globl setIndTexOrder__15J3DIndBlockNullFUl14J3DIndTexOrder
setIndTexOrder__15J3DIndBlockNullFUl14J3DIndTexOrder: # 0x802dcedc
    blr


.globl getIndTexOrder__15J3DIndBlockNullFUl
getIndTexOrder__15J3DIndBlockNullFUl: # 0x802dcee0
    li      r3, 0x0
    blr


.globl setIndTexMtx__15J3DIndBlockNullFUl12J3DIndTexMtx
setIndTexMtx__15J3DIndBlockNullFUl12J3DIndTexMtx: # 0x802dcee8
    blr


.globl setIndTexMtx__15J3DIndBlockNullFUlPC12J3DIndTexMtx
setIndTexMtx__15J3DIndBlockNullFUlPC12J3DIndTexMtx: # 0x802dceec
    blr


.globl getIndTexMtx__15J3DIndBlockNullFUl
getIndTexMtx__15J3DIndBlockNullFUl: # 0x802dcef0
    li      r3, 0x0
    blr


.globl setIndTexCoordScale__15J3DIndBlockNullFUl19J3DIndTexCoordScale
setIndTexCoordScale__15J3DIndBlockNullFUl19J3DIndTexCoordScale: # 0x802dcef8
    blr


.globl setIndTexCoordScale__15J3DIndBlockNullFUlPC19J3DIndTexCoordScale
setIndTexCoordScale__15J3DIndBlockNullFUlPC19J3DIndTexCoordScale: # 0x802dcefc
    blr


.globl getIndTexCoordScale__15J3DIndBlockNullFUl
getIndTexCoordScale__15J3DIndBlockNullFUl: # 0x802dcf00
    li      r3, 0x0
    blr


.globl __dt__15J3DIndBlockNullFv
__dt__15J3DIndBlockNullFv: # 0x802dcf08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dcf4c
    lis     r3, __vvt__15J3DIndBlockNull@h
    addi    r0, r3, __vvt__15J3DIndBlockNull@l
    stw     r0, 0x0(r31)
    beq-    branch_0x802dcf3c
    lis     r3, __vvt__11J3DIndBlock@h
    addi    r0, r3, __vvt__11J3DIndBlock@l
    stw     r0, 0x0(r31)
branch_0x802dcf3c:
    extsh.  r0, r4
    ble-    branch_0x802dcf4c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dcf4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__15J3DIndBlockNullFP11J3DTevBlock
load__15J3DIndBlockNullFP11J3DTevBlock: # 0x802dcf64
    blr

