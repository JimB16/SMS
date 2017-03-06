
.globl __ct__13JPAExtraShapeFPCUc
__ct__13JPAExtraShapeFPCUc: # 0x803361c0
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
    addi    r0, r3, 0x4560
    lwz     r31, 0x8(sp)
    stw     r5, 0x0(r31)
    stw     r0, 0x0(r31)
    lha     r3, 0x14(r4)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x8(r31)
    lha     r3, 0x16(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0xc(r31)
    lha     r3, 0x18(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x10(r31)
    lha     r3, 0x1a(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x14(r31)
    lha     r3, 0x1c(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x18(r31)
    lbz     r0, 0x1e(r30)
    stb     r0, 0x78(r31)
    lbz     r0, 0x1f(r30)
    stb     r0, 0x79(r31)
    lha     r3, 0x20(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1c(r31)
    lha     r3, 0x22(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x20(r31)
    lha     r3, 0x24(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x24(r31)
    lha     r3, 0x26(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x28(r31)
    lfs     f0, 0x970(rtoc)
    lfs     f2, 0x8(r31)
    fcmpu   cr0, f0, f2
    beq-    branch_0x80336298
    lfs     f1, 0x14(r31)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    fdivs   f0, f0, f2
    b       branch_0x8033629c

branch_0x80336298:
    lfs     f0, 0x974(rtoc)
branch_0x8033629c:
    stfs    f0, 0x2c(r31)
    lwz     r3, 0x8(sp)
    lfs     f0, 0x974(rtoc)
    lfs     f1, 0xc(r3)
    fcmpu   cr0, f0, f1
    beq-    branch_0x803362c8
    lfs     f2, 0x18(r3)
    fsubs   f0, f0, f1
    lfs     f1, 0x14(r3)
    fsubs   f1, f2, f1
    fdivs   f0, f1, f0
branch_0x803362c8:
    stfs    f0, 0x30(r3)
    lha     r3, 0x34(r30)
    bl      JPAConvertFixToFloat__Fs
    lwz     r31, 0x8(sp)
    stfs    f1, 0x34(r31)
    lha     r3, 0x36(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x38(r31)
    lha     r3, 0x38(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x3c(r31)
    lha     r3, 0x3a(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x978(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(r31)
    lha     r3, 0x3e(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x978(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(r31)
    lbz     r0, 0x40(r30)
    stb     r0, 0x7a(r31)
    lbz     r0, 0x41(r30)
    stb     r0, 0x7b(r31)
    lha     r0, 0x42(r30)
    sth     r0, 0x74(r31)
    lha     r3, 0x44(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x978(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(r31)
    lha     r3, 0x48(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x978(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(r31)
    lbz     r0, 0x4a(r30)
    stb     r0, 0x7c(r31)
    lbz     r0, 0x4b(r30)
    stb     r0, 0x7d(r31)
    lha     r0, 0x4c(r30)
    sth     r0, 0x76(r31)
    lbz     r0, 0x4e(r30)
    stb     r0, 0x7e(r31)
    lfs     f0, 0x970(rtoc)
    lfs     f1, 0x38(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x803363b8
    lfs     f2, 0x974(rtoc)
    lfs     f0, 0x48(r31)
    fsubs   f0, f2, f0
    fdivs   f0, f0, f1
    stfs    f0, 0x50(r31)
    lfs     f1, 0x40(r31)
    lfs     f0, 0x38(r31)
    fsubs   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x58(r31)
    b       branch_0x803363c4

branch_0x803363b8:
    lfs     f0, 0x974(rtoc)
    stfs    f0, 0x58(r31)
    stfs    f0, 0x50(r31)
branch_0x803363c4:
    lwz     r3, 0x8(sp)
    lfs     f2, 0x974(rtoc)
    lfs     f0, 0x3c(r3)
    fcmpu   cr0, f2, f0
    beq-    branch_0x80336408
    lfs     f1, 0x4c(r3)
    fsubs   f0, f2, f0
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0x54(r3)
    lfs     f1, 0x44(r3)
    lfs     f0, 0x3c(r3)
    fsubs   f1, f1, f2
    fsubs   f0, f2, f0
    fdivs   f0, f1, f0
    stfs    f0, 0x5c(r3)
    b       branch_0x80336410

branch_0x80336408:
    stfs    f2, 0x5c(r3)
    stfs    f2, 0x54(r3)
branch_0x80336410:
    lha     r3, 0x5a(r30)
    bl      JPAConvertFixToFloat__Fs
    lwz     r31, 0x8(sp)
    stfs    f1, 0x60(r31)
    lha     r3, 0x5c(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x64(r31)
    lha     r3, 0x5e(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x68(r31)
    lha     r3, 0x60(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x6c(r31)
    lha     r3, 0x62(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x70(r31)
    mr      r3, r31
    lbz     r0, 0x64(r30)
    stb     r0, 0x7f(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13JPAExtraShapeFv
__dt__13JPAExtraShapeFv: # 0x80336474
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x803364b8
    lis     r3, 0x803e
    addi    r0, r3, 0x4560
    stw     r0, 0x0(r31)
    beq-    branch_0x803364a8
    lis     r3, 0x803e
    addi    r0, r3, 0x4474
    stw     r0, 0x0(r31)
branch_0x803364a8:
    extsh.  r0, r4
    ble-    branch_0x803364b8
    mr      r3, r31
    bl      __dl__FPv
branch_0x803364b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

