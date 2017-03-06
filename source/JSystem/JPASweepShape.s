
.globl __ct__13JPASweepShapeFPCUc
__ct__13JPASweepShapeFPCUc: # 0x803367cc
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r5, r5, 0x4474
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r4
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x4570
    lwz     r31, 0x8(sp)
    stw     r5, 0x0(r31)
    stw     r0, 0x0(r31)
    lbz     r0, 0x10(r4)
    stb     r0, 0x44(r31)
    lbz     r0, 0x11(r4)
    stb     r0, 0x45(r31)
    lbz     r0, 0x12(r4)
    stb     r0, 0x46(r31)
    lha     r0, 0x14(r4)
    sth     r0, 0x40(r31)
    lha     r0, 0x16(r4)
    sth     r0, 0x42(r31)
    lbz     r0, 0x1a(r4)
    stb     r0, 0x47(r31)
    lfs     f0, 0x28(r4)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0xc(r31)
    lbz     r0, 0x36(r4)
    stb     r0, 0x48(r31)
    lbz     r0, 0x44(r4)
    stb     r0, 0x49(r31)
    lbz     r0, 0x45(r4)
    stb     r0, 0x4a(r31)
    lbz     r0, 0x46(r4)
    stb     r0, 0x4b(r31)
    lbz     r0, 0x47(r4)
    stb     r0, 0x4c(r31)
    lfs     f0, 0x4c(r4)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x50(r4)
    stfs    f0, 0x14(r31)
    lbz     r0, 0x56(r4)
    stb     r0, 0x4d(r31)
    lbz     r0, 0x57(r4)
    stb     r0, 0x4e(r31)
    lwz     r0, 0x58(r4)
    stw     r0, 0x38(r31)
    lwz     r0, 0x5c(r4)
    stw     r0, 0x3c(r31)
    lha     r3, 0x18(r4)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x18(r31)
    lha     r3, 0x30(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1c(r31)
    lha     r3, 0x32(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x20(r31)
    lha     r3, 0x34(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x24(r31)
    lha     r3, 0x48(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x28(r31)
    lha     r3, 0x4a(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x2c(r31)
    lha     r3, 0x60(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x34(r31)
    lha     r3, 0x54(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x30(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13JPASweepShapeFv
__dt__13JPASweepShapeFv: # 0x80336918
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8033695c
    lis     r3, 0x803e
    addi    r0, r3, 0x4570
    stw     r0, 0x0(r31)
    beq-    branch_0x8033694c
    lis     r3, 0x803e
    addi    r0, r3, 0x4474
    stw     r0, 0x0(r31)
branch_0x8033694c:
    extsh.  r0, r4
    ble-    branch_0x8033695c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8033695c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

