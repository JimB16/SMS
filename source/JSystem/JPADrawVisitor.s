
.globl exec__20JPADrawExecLoadExTexFPC14JPADrawContext
exec__20JPADrawExecLoadExTexFPC14JPADrawContext: # 0x8032f3bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    li      r30, 0x1
    stw     r29, 0x54(sp)
    li      r29, 0x1
    lwz     r3, 0x10(r4)
    lbz     r0, 0x25(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8032f468
    bge-    branch_0x8032f528
    cmpwi   r0, 0x1
    bge-    branch_0x8032f400
    b       branch_0x8032f528

branch_0x8032f400:
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r3, 0x10(r31)
    li      r4, 0x1
    lwz     r5, 0x1c(r31)
    lbz     r0, 0x26(r3)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 1
    lwz     r5, 0x2c(r5)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
    li      r30, 0x2
    li      r29, 0x2
    b       branch_0x8032f528

branch_0x8032f468:
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    li      r3, 0x2
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r3, 0x10(r31)
    li      r4, 0x1
    lwz     r5, 0x1c(r31)
    lbz     r0, 0x26(r3)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 1
    lwz     r5, 0x2c(r5)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r3, 0x10(r31)
    li      r4, 0x2
    lwz     r5, 0x1c(r31)
    lbz     r0, 0x27(r3)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 1
    lwz     r5, 0x2c(r5)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
    li      r30, 0x3
    li      r29, 0x3
branch_0x8032f528:
    lwz     r3, 0x10(r31)
    lbz     r0, 0x28(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8032f594
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r3, 0x10(r31)
    mr      r4, r29
    lwz     r5, 0x1c(r31)
    lbz     r0, 0x29(r3)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 1
    lwz     r5, 0x2c(r5)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r5, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
branch_0x8032f594:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl exec__20JPADrawExecGenPrjMtxFPC14JPADrawContext
exec__20JPADrawExecGenPrjMtxFPC14JPADrawContext: # 0x8032f5b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    lwz     r3, 0x0(r4)
    bl      getAspect__14JPABaseEmitterFv
    fmr     f31, f1
    lwz     r3, 0x0(r31)
    bl      getFovy__14JPABaseEmitterFv
    lfs     f3, 0x900(r2)
    fmr     f2, f31
    lfs     f4, 0x904(r2)
    addi    r3, sp, 0x10
    fmr     f5, f3
    fmr     f6, f3
    bl      C_MTXLightPerspective
    lwz     r4, R13Off_m0x5ad8(r13)
    addi    r3, sp, 0x10
    addi    r5, r3, 0x0
    addi    r4, r4, 0x68
    bl      PSMTXConcat
    addi    r3, sp, 0x10
    li      r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl exec__23JPADrawExecGenPrjTexMtxFPC14JPADrawContext
exec__23JPADrawExecGenPrjTexMtxFPC14JPADrawContext: # 0x8032f660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stw     r31, 0x104(sp)
    mr      r31, r4
    lwz     r3, 0x0(r4)
    bl      getAspect__14JPABaseEmitterFv
    fmr     f31, f1
    lwz     r3, 0x0(r31)
    bl      getFovy__14JPABaseEmitterFv
    lfs     f3, 0x900(r2)
    fmr     f2, f31
    lfs     f4, 0x904(r2)
    addi    r3, sp, 0xc8
    fmr     f5, f3
    fmr     f6, f3
    bl      C_MTXLightPerspective
    lwz     r8, 0x4(r31)
    addi    r4, sp, 0xc8
    lwz     r3, 0x0(r31)
    mr      r5, r4
    lfs     f0, 0x44(r8)
    lfs     f7, 0x10(r3)
    addi    r3, sp, 0x98
    lfs     f1, 0x908(r2)
    fmuls   f0, f7, f0
    lfs     f3, 0x34(r8)
    lfs     f2, 0x1c(r8)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    fmadds  f4, f7, f3, f2
    lfs     f6, 0x900(r2)
    lfs     f3, 0x38(r8)
    fctiwz  f0, f0
    lfs     f2, 0x20(r8)
    lfs     f1, 0x3c(r8)
    fadds   f11, f6, f4
    stfd    f0, 0xf8(sp)
    lfs     f0, 0x24(r8)
    fmadds  f2, f7, f3, f2
    lwz     r7, 0xfc(sp)
    fmadds  f12, f7, f1, f0
    lwz     r6, R13Off_m0x5ea4(r13)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    lwz     r7, R13Off_m0x5ea8(r13)
    slwi    r0, r0, 2
    fadds   f10, f6, f2
    lfsx    f9, r6, r0
    fneg    f1, f12
    lfsx    f8, r7, r0
    fmuls   f0, f9, f11
    fmuls   f3, f12, f9
    lfs     f5, 0x40(r8)
    lfs     f4, 0x28(r8)
    fmuls   f2, f1, f8
    fmsubs  f0, f8, f10, f0
    fmadds  f7, f7, f5, f4
    stfs    f3, 0x98(sp)
    fmuls   f1, f9, f10
    lfs     f5, 0x90c(r2)
    fmadds  f3, f12, f0, f6
    stfs    f2, 0x9c(sp)
    fmuls   f4, f7, f8
    fneg    f2, f7
    lfs     f0, 0x910(r2)
    stfs    f3, 0xa0(sp)
    fmadds  f1, f8, f11, f1
    fmuls   f3, f7, f9
    stfs    f5, 0xa4(sp)
    fmadds  f1, f2, f1, f6
    stfs    f4, 0xa8(sp)
    stfs    f3, 0xac(sp)
    stfs    f1, 0xb0(sp)
    stfs    f5, 0xb4(sp)
    stfs    f5, 0xb8(sp)
    stfs    f5, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    stfs    f5, 0xc4(sp)
    bl      PSMTXConcat
    lwz     r4, R13Off_m0x5ad8(r13)
    addi    r3, sp, 0xc8
    addi    r5, sp, 0x98
    addi    r4, r4, 0x68
    bl      PSMTXConcat
    addi    r3, sp, 0x98
    li      r4, 0x1e
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lwz     r31, 0x104(sp)
    mtlr    r0
    addi    sp, sp, 0x110
    blr


.globl exec__21JPADrawExecGenTexMtx0FPC14JPADrawContext
exec__21JPADrawExecGenTexMtx0FPC14JPADrawContext: # 0x8032f80c
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x1
    li      r5, 0x4
    stwu    sp, -0x8(sp)
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl exec__20JPADrawExecGenIdtMtxFPC14JPADrawContext
exec__20JPADrawExecGenIdtMtxFPC14JPADrawContext: # 0x8032f854
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x1
    li      r5, 0x4
    stwu    sp, -0x8(sp)
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl exec__20JPADrawExecSetTexMtxFPC14JPADrawContext
exec__20JPADrawExecSetTexMtxFPC14JPADrawContext: # 0x8032f89c
    mflr    r0
    lis     r7, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    addi    r3, sp, 0xa8
    stfd    f30, 0x110(sp)
    lwz     r5, 0x0(r4)
    lwz     r9, 0x4(r4)
    li      r4, 0x1e
    lfs     f0, 0x10(r5)
    li      r5, 0x1
    lfs     f5, 0x2c(r9)
    fctiwz  f0, f0
    lfs     f3, 0x900(r2)
    lfs     f1, 0x30(r9)
    lfd     f10, 0x918(r2)
    stfd    f0, 0x108(sp)
    fmuls   f0, f3, f5
    lfs     f2, 0x44(r9)
    lwz     r0, 0x10c(sp)
    fmuls   f1, f3, f1
    lfs     f4, 0x908(r2)
    xoris   r8, r0, 0x8000
    lfs     f8, 0x34(r9)
    stw     r8, 0xe4(sp)
    lfs     f7, 0x1c(r9)
    stw     r7, 0xe0(sp)
    lfs     f6, 0x3c(r9)
    lfd     f3, 0xe0(sp)
    stw     r8, 0x104(sp)
    fsubs   f3, f3, f10
    lfs     f5, 0x24(r9)
    stw     r8, 0xf4(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f2, f3, f2
    stw     r7, 0x100(sp)
    fmuls   f2, f4, f2
    lfd     f3, 0x100(sp)
    stw     r8, 0xfc(sp)
    fsubs   f9, f3, f10
    lfs     f4, 0x38(r9)
    fctiwz  f2, f2
    stw     r7, 0xf0(sp)
    fmadds  f8, f9, f8, f7
    stw     r7, 0xf8(sp)
    lfd     f3, 0xf0(sp)
    stfd    f2, 0xd8(sp)
    fadds   f31, f0, f8
    fsubs   f2, f3, f10
    lfd     f7, 0xf8(sp)
    lwz     r6, 0xdc(sp)
    stw     r8, 0xec(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    stw     r7, 0xe8(sp)
    fmadds  f30, f2, f6, f5
    lfs     f3, 0x20(r9)
    fsubs   f7, f7, f10
    lfd     f6, 0xe8(sp)
    lwz     r6, R13Off_m0x5ea4(r13)
    fmadds  f2, f7, f4, f3
    slwi    r0, r0, 2
    lfsx    f12, r6, r0
    fsubs   f9, f6, f10
    lwz     r7, R13Off_m0x5ea8(r13)
    fadds   f13, f1, f2
    lfsx    f11, r7, r0
    fneg    f4, f30
    lfs     f8, 0x40(r9)
    fmuls   f3, f12, f31
    lfs     f7, 0x28(r9)
    fmuls   f5, f30, f12
    fmuls   f2, f12, f13
    lfs     f6, 0x90c(r2)
    fmuls   f4, f4, f11
    stfs    f5, 0xa8(sp)
    fmadds  f7, f9, f8, f7
    stfs    f4, 0xac(sp)
    fmsubs  f3, f11, f13, f3
    fmadds  f2, f11, f31, f2
    stfs    f6, 0xb0(sp)
    fmadds  f4, f30, f3, f0
    lfs     f0, 0x910(r2)
    fneg    f3, f7
    fmuls   f5, f7, f11
    stfs    f4, 0xb4(sp)
    fmuls   f4, f7, f12
    stfs    f5, 0xb8(sp)
    fmadds  f1, f3, f2, f1
    stfs    f4, 0xbc(sp)
    stfs    f6, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f6, 0xc8(sp)
    stfs    f6, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f6, 0xd4(sp)
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x1e
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      GXEnableTexOffsets
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    addi    sp, sp, 0x120
    blr


.globl exec__29JPADrawExecLoadDefaultTextureFPC14JPADrawContext
exec__29JPADrawExecLoadDefaultTextureFPC14JPADrawContext: # 0x8032fa68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x1c(r4)
    li      r4, 0x0
    addi    r3, r3, 0x4
    bl      GXLoadTexObj
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl exec__22JPADrawExecLoadTextureFPC14JPADrawContext
exec__22JPADrawExecLoadTextureFPC14JPADrawContext: # 0x8032fa94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x14(r4)
    lwz     r5, 0x1c(r4)
    li      r4, 0x0
    lhz     r0, 0xc0(r3)
    lwz     r3, 0x2c(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl exec__23JPADrawExecSetPointSizeFPC14JPADrawContextP15JPABaseParticle
exec__23JPADrawExecSetPointSizeFPC14JPADrawContextP15JPABaseParticle: # 0x8032fad4
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    li      r4, 0x5
    lfs     f1, 0x10(r3)
    lfs     f0, 0x4(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    bl      GXSetPointSize
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl exec__23JPADrawExecSetLineWidthFPC14JPADrawContextP15JPABaseParticle
exec__23JPADrawExecSetLineWidthFPC14JPADrawContextP15JPABaseParticle: # 0x8032fb28
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    li      r4, 0x5
    lfs     f1, 0x10(r3)
    lfs     f0, 0x4(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r3, 0x1c(sp)
    bl      GXSetLineWidth
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl exec__30JPADrawExecRegisterPrmColorAnmFPC14JPADrawContextP15JPABaseParticle
exec__30JPADrawExecRegisterPrmColorAnmFPC14JPADrawContextP15JPABaseParticle: # 0x8032fb7c
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x2c(r3)
    lis     r0, unk_43300001@h
    lwz     r7, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x40
    stw     r5, 0x44(sp)
    lbz     r5, 0x98(r7)
    lbz     r6, 0x44(sp)
    addi    r5, r5, 0x1
    mullw   r5, r6, r5
    extrwi  r5, r5, 8, 16
    stb     r5, 0x44(sp)
    lbz     r5, 0x99(r7)
    lbz     r6, 0x45(sp)
    addi    r5, r5, 0x1
    mullw   r5, r6, r5
    extrwi  r5, r5, 8, 16
    stb     r5, 0x45(sp)
    lbz     r5, 0x9a(r7)
    lbz     r6, 0x46(sp)
    addi    r5, r5, 0x1
    mullw   r5, r6, r5
    extrwi  r5, r5, 8, 16
    stb     r5, 0x46(sp)
    lbz     r5, 0x9b(r7)
    lbz     r6, 0x47(sp)
    addi    r5, r5, 0x1
    lfs     f2, 0x20(r3)
    mullw   r3, r6, r5
    lfd     f1, 0x920(r2)
    extrwi  r3, r3, 8, 16
    stw     r3, 0x54(sp)
    addi    r3, r0, unk_43300001@l
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stb     r0, 0x47(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x40(sp)
    bl      GXSetTevColor
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl exec__30JPADrawExecRegisterPrmAlphaAnmFPC14JPADrawContextP15JPABaseParticle
exec__30JPADrawExecRegisterPrmAlphaAnmFPC14JPADrawContextP15JPABaseParticle: # 0x8032fc58
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x14(r31)
    lis     r0, unk_43300001@h
    lwz     r7, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x40
    lwz     r5, 0xb8(r5)
    stw     r5, 0x44(sp)
    lbz     r5, 0x98(r7)
    lbz     r6, 0x44(sp)
    addi    r5, r5, 0x1
    mullw   r5, r6, r5
    extrwi  r5, r5, 8, 16
    stb     r5, 0x44(sp)
    lbz     r5, 0x99(r7)
    lbz     r6, 0x45(sp)
    addi    r5, r5, 0x1
    mullw   r5, r6, r5
    extrwi  r5, r5, 8, 16
    stb     r5, 0x45(sp)
    lbz     r5, 0x9a(r7)
    lbz     r6, 0x46(sp)
    addi    r5, r5, 0x1
    mullw   r5, r6, r5
    extrwi  r5, r5, 8, 16
    stb     r5, 0x46(sp)
    lbz     r5, 0x9b(r7)
    lbz     r6, 0x47(sp)
    addi    r5, r5, 0x1
    lfs     f2, 0x20(r3)
    mullw   r3, r6, r5
    lfd     f1, 0x920(r2)
    extrwi  r3, r3, 8, 16
    stw     r3, 0x54(sp)
    addi    r3, r0, unk_43300001@l
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stb     r0, 0x47(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x40(sp)
    bl      GXSetTevColor
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl exec__30JPADrawExecRegisterEnvColorAnmFPC14JPADrawContextP15JPABaseParticle
exec__30JPADrawExecRegisterEnvColorAnmFPC14JPADrawContextP15JPABaseParticle: # 0x8032fd44
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x30(r3)
    addi    r4, sp, 0x34
    lwz     r7, R13Off_m0x5ad8(r13)
    li      r3, 0x2
    stw     r0, 0x38(sp)
    lbz     r5, 0x9c(r7)
    lbz     r6, 0x38(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x38(sp)
    lbz     r5, 0x9d(r7)
    lbz     r6, 0x39(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x39(sp)
    lbz     r5, 0x9e(r7)
    lbz     r6, 0x3a(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x3a(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0x34(sp)
    bl      GXSetTevColor
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl exec__26JPADrawExecRegisterPrmCEnvFPC14JPADrawContextP15JPABaseParticle
exec__26JPADrawExecRegisterPrmCEnvFPC14JPADrawContextP15JPABaseParticle: # 0x8032fddc
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x2c(r3)
    lis     r0, unk_43300001@h
    lwz     r5, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x68
    stw     r6, 0x70(sp)
    lwz     r6, 0x30(r3)
    lbz     r7, 0x70(sp)
    stw     r6, 0x6c(sp)
    lbz     r6, 0x98(r5)
    addi    r6, r6, 0x1
    mullw   r6, r7, r6
    extrwi  r6, r6, 8, 16
    stb     r6, 0x70(sp)
    lbz     r6, 0x99(r5)
    lbz     r7, 0x71(sp)
    addi    r6, r6, 0x1
    mullw   r6, r7, r6
    extrwi  r6, r6, 8, 16
    stb     r6, 0x71(sp)
    lbz     r6, 0x9a(r5)
    lbz     r7, 0x72(sp)
    addi    r6, r6, 0x1
    mullw   r6, r7, r6
    extrwi  r6, r6, 8, 16
    stb     r6, 0x72(sp)
    lbz     r6, 0x9b(r5)
    lbz     r7, 0x73(sp)
    addi    r6, r6, 0x1
    lfs     f2, 0x20(r3)
    mullw   r3, r7, r6
    lfd     f1, 0x920(r2)
    extrwi  r3, r3, 8, 16
    stw     r3, 0x84(sp)
    addi    r3, r0, unk_43300001@l
    stw     r0, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stb     r0, 0x73(sp)
    lbz     r6, 0x9c(r5)
    lbz     r7, 0x6c(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6c(sp)
    lbz     r6, 0x9d(r5)
    lbz     r7, 0x6d(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6d(sp)
    lbz     r5, 0x9e(r5)
    lbz     r6, 0x6e(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6e(sp)
    lwz     r0, 0x70(sp)
    stw     r0, 0x68(sp)
    bl      GXSetTevColor
    lwz     r0, 0x6c(sp)
    addi    r4, sp, 0x64
    li      r3, 0x2
    stw     r0, 0x64(sp)
    bl      GXSetTevColor
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl exec__26JPADrawExecRegisterPrmAEnvFPC14JPADrawContextP15JPABaseParticle
exec__26JPADrawExecRegisterPrmAEnvFPC14JPADrawContextP15JPABaseParticle: # 0x8032ff1c
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r4
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x14(r31)
    lis     r0, unk_43300001@h
    lwz     r5, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x68
    lwz     r6, 0xb8(r6)
    stw     r6, 0x70(sp)
    lwz     r6, 0x30(r3)
    lbz     r7, 0x70(sp)
    stw     r6, 0x6c(sp)
    lbz     r6, 0x98(r5)
    addi    r6, r6, 0x1
    mullw   r6, r7, r6
    extrwi  r6, r6, 8, 16
    stb     r6, 0x70(sp)
    lbz     r6, 0x99(r5)
    lbz     r7, 0x71(sp)
    addi    r6, r6, 0x1
    mullw   r6, r7, r6
    extrwi  r6, r6, 8, 16
    stb     r6, 0x71(sp)
    lbz     r6, 0x9a(r5)
    lbz     r7, 0x72(sp)
    addi    r6, r6, 0x1
    mullw   r6, r7, r6
    extrwi  r6, r6, 8, 16
    stb     r6, 0x72(sp)
    lbz     r6, 0x9b(r5)
    lbz     r7, 0x73(sp)
    addi    r6, r6, 0x1
    lfs     f2, 0x20(r3)
    mullw   r3, r7, r6
    lfd     f1, 0x920(r2)
    extrwi  r3, r3, 8, 16
    stw     r3, 0x84(sp)
    addi    r3, r0, unk_43300001@l
    stw     r0, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stb     r0, 0x73(sp)
    lbz     r6, 0x9c(r5)
    lbz     r7, 0x6c(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6c(sp)
    lbz     r6, 0x9d(r5)
    lbz     r7, 0x6d(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6d(sp)
    lbz     r5, 0x9e(r5)
    lbz     r6, 0x6e(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6e(sp)
    lwz     r0, 0x70(sp)
    stw     r0, 0x68(sp)
    bl      GXSetTevColor
    lwz     r0, 0x6c(sp)
    addi    r4, sp, 0x64
    li      r3, 0x2
    stw     r0, 0x64(sp)
    bl      GXSetTevColor
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl exec__20JPADrawExecSetTexMtxFPC14JPADrawContextP15JPABaseParticle
exec__20JPADrawExecSetTexMtxFPC14JPADrawContextP15JPABaseParticle: # 0x8033006c
    mflr    r0
    lis     r7, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    addi    r3, sp, 0xa4
    lfs     f0, 0x44(r5)
    li      r5, 0x1
    lwz     r9, 0x4(r4)
    li      r4, 0x1e
    fctiwz  f0, f0
    lfs     f3, 0x900(r2)
    lfs     f1, 0x30(r9)
    stfd    f0, 0x108(sp)
    lfs     f0, 0x2c(r9)
    fmuls   f1, f3, f1
    lwz     r0, 0x10c(sp)
    lfd     f10, 0x918(r2)
    fmuls   f0, f3, f0
    xoris   r8, r0, 0x8000
    stw     r8, 0xe4(sp)
    lfs     f2, 0x44(r9)
    stw     r7, 0xe0(sp)
    lfs     f4, 0x908(r2)
    lfd     f3, 0xe0(sp)
    stw     r8, 0x104(sp)
    fsubs   f3, f3, f10
    lfs     f7, 0x34(r9)
    stw     r8, 0xf4(sp)
    lfs     f6, 0x1c(r9)
    fmuls   f2, f3, f2
    stw     r7, 0x100(sp)
    lfs     f5, 0x3c(r9)
    fmuls   f2, f4, f2
    lfd     f3, 0x100(sp)
    stw     r8, 0xfc(sp)
    fsubs   f8, f3, f10
    lfs     f3, 0x24(r9)
    stw     r7, 0xf0(sp)
    fctiwz  f2, f2
    fmadds  f7, f8, f7, f6
    stw     r7, 0xf8(sp)
    lfd     f4, 0xf0(sp)
    stfd    f2, 0xd8(sp)
    fadds   f13, f0, f7
    lfd     f6, 0xf8(sp)
    fsubs   f2, f4, f10
    stw     r8, 0xec(sp)
    lwz     r6, 0xdc(sp)
    stw     r7, 0xe8(sp)
    fmadds  f31, f2, f5, f3
    fsubs   f9, f6, f10
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    lfd     f7, 0xe8(sp)
    lfs     f8, 0x38(r9)
    slwi    r0, r0, 2
    lfs     f5, 0x20(r9)
    fneg    f3, f31
    lwz     r6, R13Off_m0x5ea4(r13)
    fmadds  f9, f9, f8, f5
    lwz     r7, R13Off_m0x5ea8(r13)
    lfsx    f12, r6, r0
    fsubs   f8, f7, f10
    lfsx    f11, r7, r0
    lfs     f6, 0x40(r9)
    fmuls   f4, f31, f12
    lfs     f5, 0x28(r9)
    fmuls   f2, f12, f13
    lfs     f7, 0x90c(r2)
    fmadds  f8, f8, f6, f5
    fadds   f5, f1, f9
    stfs    f4, 0xa4(sp)
    fmuls   f3, f3, f11
    fmsubs  f4, f11, f5, f2
    lfs     f2, 0x910(r2)
    fmuls   f6, f8, f11
    stfs    f3, 0xa8(sp)
    fmadds  f0, f31, f4, f0
    stfs    f7, 0xac(sp)
    fmuls   f3, f12, f5
    fmuls   f5, f8, f12
    stfs    f0, 0xb0(sp)
    fneg    f4, f8
    fmadds  f0, f11, f13, f3
    stfs    f6, 0xb4(sp)
    stfs    f5, 0xb8(sp)
    fmadds  f0, f4, f0, f1
    stfs    f7, 0xbc(sp)
    stfs    f0, 0xc0(sp)
    stfs    f7, 0xc4(sp)
    stfs    f7, 0xc8(sp)
    stfs    f2, 0xcc(sp)
    stfs    f7, 0xd0(sp)
    bl      GXLoadTexMtxImm
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl exec__22JPADrawExecLoadTextureFPC14JPADrawContextP15JPABaseParticle
exec__22JPADrawExecLoadTextureFPC14JPADrawContextP15JPABaseParticle: # 0x80330200
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x1c(r31)
    li      r4, 0x0
    lhz     r0, 0x3a(r3)
    lwz     r3, 0x2c(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    addi    r3, r3, 0x8
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl exec__20JPADrawExecBillBoardFPC14JPADrawContextP15JPABaseParticle
exec__20JPADrawExecBillBoardFPC14JPADrawContextP15JPABaseParticle: # 0x8033025c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80330288
    li      r0, 0x1
    b       branch_0x8033028c

branch_0x80330288:
    li      r0, 0x0
branch_0x8033028c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8033041c
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x10(r3)
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r6, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x38
    lfs     f4, 0x14(r3)
    mr      r5, r4
    lfs     f2, 0x4(r6)
    lfs     f0, 0xc(r6)
    lfs     f3, 0x8(r6)
    fsubs   f1, f2, f0
    fadds   f0, f2, f0
    lfs     f2, 0x10(r6)
    fmuls   f5, f31, f1
    fmuls   f31, f31, f0
    fsubs   f1, f3, f2
    fadds   f0, f3, f2
    fneg    f2, f31
    fmuls   f1, f4, f1
    fmuls   f4, f4, f0
    stfs    f2, 0x44(sp)
    fneg    f0, f1
    stfs    f4, 0x48(sp)
    stfs    f5, 0x4c(sp)
    stfs    f4, 0x50(sp)
    stfs    f5, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f2, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x34(r6)
    bl      PSMTXMultVec
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x44(sp)
    lis     r3, 0xcc01
    lfs     f2, 0x38(sp)
    lfs     f1, 0x48(sp)
    lfs     f3, 0x3c(sp)
    fadds   f0, f0, f2
    lfs     f4, 0x40(sp)
    fadds   f1, f1, f3
    lwz     r4, R13Off_m0x5ad8(r13)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x8033041c:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl exec__23JPADrawExecRotBillBoardFPC14JPADrawContextP15JPABaseParticle
exec__23JPADrawExecRotBillBoardFPC14JPADrawContextP15JPABaseParticle: # 0x80330434
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8033045c
    li      r0, 0x1
    b       branch_0x80330460

branch_0x8033045c:
    li      r0, 0x0
branch_0x80330460:
    clrlwi. r0, r0, 24
    bne-    branch_0x8033063c
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r7, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x44
    lfs     f5, 0x10(r3)
    mr      r5, r4
    lfs     f4, 0x4(r7)
    lfs     f0, 0xc(r7)
    fneg    f3, f5
    lfs     f8, 0x14(r3)
    fadds   f2, f4, f0
    lfs     f7, 0x8(r7)
    lfs     f6, 0x10(r7)
    fsubs   f0, f4, f0
    lhz     r3, 0x34(r3)
    fadds   f1, f7, f6
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f11, f5, f0
    sraw    r0, r3, r0
    lwz     r6, R13Off_m0x5ea8(r13)
    fmuls   f10, f8, f1
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f9, f3, f2
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    lfsx    f3, r3, r0
    fneg    f1, f8
    fsubs   f0, f7, f6
    fmuls   f8, f9, f3
    fmuls   f4, f10, f2
    fmuls   f12, f1, f0
    fmuls   f1, f10, f3
    fsubs   f0, f8, f4
    fmuls   f5, f11, f3
    fmuls   f9, f9, f2
    stfs    f0, 0x50(sp)
    fmuls   f6, f11, f2
    fmuls   f7, f12, f2
    fadds   f0, f1, f9
    fsubs   f2, f5, f4
    fadds   f1, f1, f6
    stfs    f0, 0x54(sp)
    fmuls   f3, f12, f3
    fsubs   f0, f5, f7
    stfs    f2, 0x58(sp)
    fadds   f2, f3, f6
    stfs    f1, 0x5c(sp)
    fsubs   f1, f8, f7
    stfs    f0, 0x60(sp)
    fadds   f0, f3, f9
    stfs    f2, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x44(sp)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x4c(sp)
    lwz     r3, 0x34(r7)
    bl      PSMTXMultVec
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x50(sp)
    lis     r3, 0xcc01
    lfs     f2, 0x44(sp)
    lfs     f1, 0x54(sp)
    lfs     f3, 0x48(sp)
    fadds   f0, f0, f2
    lfs     f4, 0x4c(sp)
    fadds   f1, f1, f3
    lwz     r4, R13Off_m0x5ad8(r13)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x8033063c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl exec__21JPADrawExecYBillBoardFPC14JPADrawContextP15JPABaseParticle
exec__21JPADrawExecYBillBoardFPC14JPADrawContextP15JPABaseParticle: # 0x80330650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8033067c
    li      r0, 0x1
    b       branch_0x80330680

branch_0x8033067c:
    li      r0, 0x0
branch_0x80330680:
    clrlwi. r0, r0, 24
    bne-    branch_0x8033085c
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x10(r3)
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r6, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x44
    lfs     f4, 0x14(r3)
    mr      r5, r4
    lfs     f2, 0x4(r6)
    lfs     f0, 0xc(r6)
    addi    r3, r6, 0x38
    lfs     f3, 0x8(r6)
    fsubs   f1, f2, f0
    fadds   f0, f2, f0
    lfs     f2, 0x10(r6)
    li      r6, 0x4
    fmuls   f5, f31, f1
    fmuls   f31, f31, f0
    fsubs   f1, f3, f2
    fadds   f0, f3, f2
    fneg    f2, f31
    fmuls   f1, f4, f1
    fmuls   f4, f4, f0
    stfs    f2, 0x44(sp)
    fneg    f1, f1
    stfs    f4, 0x48(sp)
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x4c(sp)
    stfs    f5, 0x50(sp)
    stfs    f4, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f5, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f1, 0x6c(sp)
    stfs    f0, 0x70(sp)
    bl      PSMTXMultVecArray
    lfs     f0, 0x2c(r31)
    addi    r4, sp, 0x38
    addi    r5, r4, 0x0
    stfs    f0, 0x38(sp)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x40(sp)
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r3, 0x34(r3)
    bl      PSMTXMultVecSR
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x44(sp)
    lis     r3, 0xcc01
    lfs     f3, 0x38(sp)
    lfs     f1, 0x48(sp)
    lfs     f4, 0x3c(sp)
    fadds   f0, f0, f3
    lfs     f2, 0x4c(sp)
    lfs     f5, 0x40(sp)
    fadds   f1, f1, f4
    lwz     r4, R13Off_m0x5ad8(r13)
    stfs    f0, -0x8000(r3)
    fadds   f0, f2, f5
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f2, 0x58(sp)
    fadds   f0, f0, f3
    fadds   f1, f1, f4
    fadds   f2, f2, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f2, 0x64(sp)
    fadds   f0, f0, f3
    fadds   f1, f1, f4
    fadds   f2, f2, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f2, 0x70(sp)
    fadds   f0, f0, f3
    fadds   f1, f1, f4
    fadds   f2, f2, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x8033085c:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl exec__24JPADrawExecRotYBillBoardFPC14JPADrawContextP15JPABaseParticle
exec__24JPADrawExecRotYBillBoardFPC14JPADrawContextP15JPABaseParticle: # 0x80330874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8033089c
    li      r0, 0x1
    b       branch_0x803308a0

branch_0x8033089c:
    li      r0, 0x0
branch_0x803308a0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80330ac8
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r7, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x50
    lfs     f5, 0x10(r3)
    mr      r5, r4
    lfs     f4, 0x4(r7)
    lfs     f0, 0xc(r7)
    fneg    f3, f5
    lfs     f8, 0x14(r3)
    fadds   f2, f4, f0
    lfs     f7, 0x8(r7)
    lfs     f6, 0x10(r7)
    fsubs   f0, f4, f0
    lhz     r3, 0x34(r3)
    fadds   f1, f7, f6
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f5, f5, f0
    sraw    r0, r3, r0
    lwz     r6, R13Off_m0x5ea8(r13)
    fmuls   f10, f8, f1
    lwz     r3, R13Off_m0x5ea4(r13)
    fmuls   f9, f3, f2
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    lfsx    f3, r3, r0
    fneg    f1, f8
    fsubs   f0, f7, f6
    addi    r3, r7, 0x38
    fmuls   f8, f9, f3
    fmuls   f4, f10, f2
    fmuls   f11, f1, f0
    fmuls   f1, f10, f3
    li      r6, 0x4
    fsubs   f0, f8, f4
    fmuls   f9, f9, f2
    fmuls   f7, f11, f2
    stfs    f0, 0x50(sp)
    fmuls   f6, f5, f3
    fadds   f0, f1, f9
    fmuls   f2, f5, f2
    fmuls   f10, f11, f3
    stfs    f0, 0x54(sp)
    fsubs   f5, f6, f4
    fadds   f4, f1, f2
    fsubs   f3, f6, f7
    lfs     f6, 0x90c(r2)
    fadds   f2, f10, f2
    fsubs   f1, f8, f7
    stfs    f6, 0x58(sp)
    fadds   f0, f10, f9
    stfs    f5, 0x5c(sp)
    stfs    f4, 0x60(sp)
    stfs    f6, 0x64(sp)
    stfs    f3, 0x68(sp)
    stfs    f2, 0x6c(sp)
    stfs    f6, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f0, 0x78(sp)
    stfs    f6, 0x7c(sp)
    bl      PSMTXMultVecArray
    lfs     f0, 0x2c(r31)
    addi    r4, sp, 0x44
    addi    r5, r4, 0x0
    stfs    f0, 0x44(sp)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x4c(sp)
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r3, 0x34(r3)
    bl      PSMTXMultVecSR
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x50(sp)
    lis     r3, 0xcc01
    lfs     f3, 0x44(sp)
    lfs     f1, 0x54(sp)
    lfs     f4, 0x48(sp)
    fadds   f0, f0, f3
    lfs     f2, 0x58(sp)
    lfs     f5, 0x4c(sp)
    fadds   f1, f1, f4
    lwz     r4, R13Off_m0x5ad8(r13)
    stfs    f0, -0x8000(r3)
    fadds   f0, f2, f5
    stfs    f1, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f2, 0x64(sp)
    fadds   f0, f0, f3
    fadds   f1, f1, f4
    fadds   f2, f2, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f2, 0x70(sp)
    fadds   f0, f0, f3
    fadds   f1, f1, f4
    fadds   f2, f2, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f2, 0x7c(sp)
    fadds   f0, f0, f3
    fadds   f1, f1, f4
    fadds   f2, f2, f5
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x80330ac8:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl dirTypeVel__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_
dirTypeVel__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_: # 0x80330adc
    lfs     f0, 0x38(r3)
    stfs    f0, 0x0(r5)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0x4(r5)
    lfs     f0, 0x40(r3)
    stfs    f0, 0x8(r5)
    blr


.globl dirTypePos__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_
dirTypePos__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_: # 0x80330af8
    lfs     f0, 0x20(r3)
    stfs    f0, 0x0(r5)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x4(r5)
    lfs     f0, 0x28(r3)
    stfs    f0, 0x8(r5)
    blr


.globl dirTypePosInv__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_
dirTypePosInv__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_: # 0x80330b14
    lfs     f0, 0x20(r3)
    stfs    f0, 0x0(r5)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x4(r5)
    lfs     f0, 0x28(r3)
    stfs    f0, 0x8(r5)
    lfs     f0, 0x0(r5)
    fneg    f0, f0
    stfs    f0, 0x0(r5)
    lfs     f0, 0x4(r5)
    fneg    f0, f0
    stfs    f0, 0x4(r5)
    lfs     f0, 0x8(r5)
    fneg    f0, f0
    stfs    f0, 0x8(r5)
    blr


.globl dirTypeEmtrDir__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_
dirTypeEmtrDir__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_: # 0x80330b54
    lfs     f0, 0x210(r4)
    stfs    f0, 0x0(r5)
    lfs     f0, 0x214(r4)
    stfs    f0, 0x4(r5)
    lfs     f0, 0x218(r4)
    stfs    f0, 0x8(r5)
    blr


.globl dirTypePrevPtcl__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_
dirTypePrevPtcl__FP15JPABaseParticleP14JPABaseEmitterRQ29JGeometry8TVec3_f_: # 0x80330b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stfd    f29, 0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    lwz     r6, 0x8(r3)
    lfs     f31, 0x2c(r3)
    cmplwi  r6, 0x0
    lfs     f30, 0x30(r3)
    lfs     f29, 0x34(r3)
    beq-    branch_0x80330bc8
    lwz     r3, 0x0(r6)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x8(r31)
    b       branch_0x80330bd4

branch_0x80330bc8:
    addi    r3, r4, 0x0
    addi    r4, r31, 0x0
    bl      getEmitterGlobalTranslation__14JPABaseEmitterFRQ29JGeometry8TVec3_f_
branch_0x80330bd4:
    lfs     f0, 0x0(r31)
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fsubs   f0, f0, f30
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fsubs   f0, f0, f29
    stfs    f0, 0x8(r31)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    lfd     f29, 0x50(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl rotTypeY__FffRA3_A4_f
rotTypeY__FffRA3_A4_f: # 0x80330c18
    stfs    f2, 0x0(r3)
    fneg    f0, f1
    lfs     f3, 0x90c(r2)
    stfs    f3, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f3, 0xc(r3)
    stfs    f3, 0x10(r3)
    lfs     f0, 0x910(r2)
    stfs    f0, 0x14(r3)
    stfs    f3, 0x18(r3)
    stfs    f3, 0x1c(r3)
    stfs    f1, 0x20(r3)
    stfs    f3, 0x24(r3)
    stfs    f2, 0x28(r3)
    stfs    f3, 0x2c(r3)
    blr


.globl rotTypeX__FffRA3_A4_f
rotTypeX__FffRA3_A4_f: # 0x80330c58
    lfs     f3, 0x910(r2)
    fneg    f0, f1
    stfs    f3, 0x0(r3)
    lfs     f3, 0x90c(r2)
    stfs    f3, 0x4(r3)
    stfs    f3, 0x8(r3)
    stfs    f3, 0xc(r3)
    stfs    f3, 0x10(r3)
    stfs    f2, 0x14(r3)
    stfs    f0, 0x18(r3)
    stfs    f3, 0x1c(r3)
    stfs    f3, 0x20(r3)
    stfs    f1, 0x24(r3)
    stfs    f2, 0x28(r3)
    stfs    f3, 0x2c(r3)
    blr


.globl rotTypeZ__FffRA3_A4_f
rotTypeZ__FffRA3_A4_f: # 0x80330c98
    fneg    f0, f1
    stfs    f2, 0x0(r3)
    stfs    f0, 0x4(r3)
    lfs     f3, 0x90c(r2)
    stfs    f3, 0x8(r3)
    stfs    f3, 0xc(r3)
    stfs    f1, 0x10(r3)
    stfs    f2, 0x14(r3)
    stfs    f3, 0x18(r3)
    stfs    f3, 0x1c(r3)
    stfs    f3, 0x20(r3)
    stfs    f3, 0x24(r3)
    lfs     f0, 0x910(r2)
    stfs    f0, 0x28(r3)
    stfs    f3, 0x2c(r3)
    blr


.globl rotTypeXYZ__FffRA3_A4_f
rotTypeXYZ__FffRA3_A4_f: # 0x80330cd8
    lfs     f3, 0x910(r2)
    lfs     f0, 0x92c(r2)
    fsubs   f3, f3, f2
    lfs     f4, 0x928(r2)
    fmuls   f0, f0, f1
    fmuls   f3, f4, f3
    fadds   f4, f3, f0
    fsubs   f1, f3, f0
    fadds   f3, f3, f2
    stfs    f3, 0x0(r3)
    stfs    f1, 0x4(r3)
    stfs    f4, 0x8(r3)
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xc(r3)
    stfs    f4, 0x10(r3)
    stfs    f3, 0x14(r3)
    stfs    f1, 0x18(r3)
    stfs    f0, 0x1c(r3)
    stfs    f1, 0x20(r3)
    stfs    f4, 0x24(r3)
    stfs    f3, 0x28(r3)
    stfs    f0, 0x2c(r3)
    blr


.globl rotTypeYJiggle__FffRA3_A4_f
rotTypeYJiggle__FffRA3_A4_f: # 0x80330d34
    stfs    f2, 0x0(r3)
    fneg    f4, f1
    lfs     f3, 0x930(r2)
    fmuls   f0, f3, f4
    fmuls   f3, f3, f2
    stfs    f0, 0x4(r3)
    lfs     f5, 0x934(r2)
    fmuls   f4, f5, f4
    fmuls   f0, f5, f2
    stfs    f4, 0x8(r3)
    lfs     f4, 0x90c(r2)
    stfs    f4, 0xc(r3)
    stfs    f4, 0x10(r3)
    stfs    f5, 0x14(r3)
    lfs     f2, 0x938(r2)
    stfs    f2, 0x18(r3)
    stfs    f4, 0x1c(r3)
    stfs    f1, 0x20(r3)
    stfs    f3, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f4, 0x2c(r3)
    blr


.globl exec__22JPADrawExecDirectionalFPC14JPADrawContextP15JPABaseParticle
exec__22JPADrawExecDirectionalFPC14JPADrawContextP15JPABaseParticle: # 0x80330d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stfd    f30, 0x118(sp)
    stfd    f29, 0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    mr      r30, r5
    stw     r29, 0x104(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80330dcc
    li      r0, 0x1
    b       branch_0x80330dd0

branch_0x80330dcc:
    li      r0, 0x0
branch_0x80330dd0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80331178
    mr      r3, r30
    lwz     r12, 0x58(r30)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5ad8(r13)
    mr      r31, r3
    lfs     f5, 0x10(r3)
    mr      r3, r30
    lfs     f4, 0x4(r4)
    lfs     f0, 0xc(r4)
    fneg    f3, f5
    lfs     f7, 0x8(r4)
    addi    r5, sp, 0xbc
    fadds   f2, f4, f0
    lfs     f6, 0x10(r4)
    lfs     f8, 0x14(r31)
    fsubs   f0, f4, f0
    fmuls   f3, f3, f2
    fadds   f1, f7, f6
    fmuls   f5, f5, f0
    stfs    f3, 0xc8(sp)
    fneg    f2, f8
    fmuls   f4, f8, f1
    fsubs   f1, f7, f6
    stfs    f4, 0xcc(sp)
    fmuls   f1, f2, f1
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xd0(sp)
    stfs    f5, 0xd4(sp)
    stfs    f4, 0xd8(sp)
    stfs    f0, 0xdc(sp)
    stfs    f5, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    stfs    f0, 0xe8(sp)
    stfs    f3, 0xec(sp)
    stfs    f1, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    lwz     r12, 0xa0(r4)
    lwz     r4, 0x0(r29)
    mtlr    r12
    blrl
    lfs     f1, 0xbc(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xc4(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80331178
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80330ed0
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xbc(sp)
    b       branch_0x80330f00

branch_0x80330ed0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0xbc(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
branch_0x80330f00:
    lfs     f3, 0xc4(sp)
    lfs     f7, 0x0(r31)
    lfs     f2, 0x8(r31)
    lfs     f6, 0xc0(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0xbc(sp)
    fmuls   f1, f2, f6
    lfs     f5, 0x4(r31)
    fmsubs  f30, f2, f4, f0
    fmuls   f2, f5, f4
    lfs     f0, 0x93c(r2)
    fmsubs  f29, f5, f3, f1
    fmuls   f1, f30, f30
    fmsubs  f31, f7, f6, f2
    fmadds  f1, f29, f29, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80331178
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80330f68
    lfs     f31, 0x90c(r2)
    fmr     f30, f31
    fmr     f29, f30
    b       branch_0x80330f80

branch_0x80330f68:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x910(r2)
    fmuls   f0, f0, f1
    fmuls   f29, f29, f0
    fmuls   f30, f30, f0
    fmuls   f31, f31, f0
branch_0x80330f80:
    lfs     f4, 0xc4(sp)
    lfs     f3, 0xbc(sp)
    fmuls   f0, f4, f30
    lfs     f5, 0xc0(sp)
    fmuls   f1, f3, f31
    fmuls   f2, f5, f29
    fmsubs  f0, f5, f31, f0
    fmsubs  f1, f4, f29, f1
    fmsubs  f2, f3, f30, f2
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80330ff4
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80331024

branch_0x80330ff4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80331024:
    lfs     f1, 0x0(r31)
    addi    r4, sp, 0xc8
    lfs     f0, 0xbc(sp)
    mr      r5, r4
    stfs    f1, 0x80(sp)
    lfs     f1, 0x90c(r2)
    addi    r3, sp, 0x80
    stfs    f0, 0x84(sp)
    li      r6, 0x4
    stfs    f29, 0x88(sp)
    stfs    f1, 0x8c(sp)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x90(sp)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x94(sp)
    stfs    f30, 0x98(sp)
    stfs    f1, 0x9c(sp)
    lfs     f0, 0x8(r31)
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0xa4(sp)
    stfs    f31, 0xa8(sp)
    stfs    f1, 0xac(sp)
    bl      PSMTXMultVecArray
    lfs     f31, 0x2c(r30)
    li      r3, 0x80
    lfs     f30, 0x30(r30)
    li      r4, 0x0
    lfs     f29, 0x34(r30)
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0xc8(sp)
    lis     r3, 0xcc01
    lfs     f1, 0xcc(sp)
    fadds   f0, f0, f31
    lfs     f2, 0xd0(sp)
    fadds   f1, f1, f30
    lwz     r4, R13Off_m0x5ad8(r13)
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f2, 0xdc(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f2, 0xe8(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f2, 0xf4(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x80331178:
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    mtlr    r0
    lfd     f29, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x128
    blr


.globl exec__25JPADrawExecRotDirectionalFPC14JPADrawContextP15JPABaseParticle
exec__25JPADrawExecRotDirectionalFPC14JPADrawContextP15JPABaseParticle: # 0x803311a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stfd    f30, 0x168(sp)
    stfd    f29, 0x160(sp)
    stw     r31, 0x15c(sp)
    stw     r30, 0x158(sp)
    mr      r30, r5
    stw     r29, 0x154(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x803311e0
    li      r0, 0x1
    b       branch_0x803311e4

branch_0x803311e0:
    li      r0, 0x0
branch_0x803311e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x803315d4
    mr      r3, r30
    lwz     r12, 0x58(r30)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    mr      r31, r3
    lfs     f4, 0x10(r3)
    lfs     f3, 0x4(r5)
    lfs     f0, 0xc(r5)
    fneg    f2, f4
    lhz     r3, 0x34(r3)
    fadds   f1, f3, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f6, 0x8(r5)
    sraw    r0, r3, r0
    lfs     f5, 0x10(r5)
    fmuls   f8, f2, f1
    lwz     r4, R13Off_m0x5ea8(r13)
    fsubs   f0, f3, f0
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x5ea4(r13)
    lfsx    f2, r3, r0
    fadds   f1, f6, f5
    lfs     f7, 0x14(r31)
    fmuls   f10, f4, f0
    lfsx    f3, r4, r0
    fmuls   f9, f7, f1
    stfs    f8, 0xf0(sp)
    fmr     f1, f3
    fneg    f4, f7
    addi    r3, sp, 0x120
    stfs    f9, 0xf4(sp)
    fsubs   f3, f6, f5
    lfs     f0, 0x90c(r2)
    fmuls   f3, f4, f3
    stfs    f0, 0xf8(sp)
    stfs    f10, 0xfc(sp)
    stfs    f9, 0x100(sp)
    stfs    f0, 0x104(sp)
    stfs    f10, 0x108(sp)
    stfs    f3, 0x10c(sp)
    stfs    f0, 0x110(sp)
    stfs    f8, 0x114(sp)
    stfs    f3, 0x118(sp)
    stfs    f0, 0x11c(sp)
    lwz     r12, 0xa4(r5)
    mtlr    r12
    blrl
    lwz     r6, R13Off_m0x5ad8(r13)
    mr      r3, r30
    lwz     r4, 0x0(r29)
    addi    r5, sp, 0xe4
    lwz     r12, 0xa0(r6)
    mtlr    r12
    blrl
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xec(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x803315d4
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8033131c
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xec(sp)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xe4(sp)
    b       branch_0x8033134c

branch_0x8033131c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0xe4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
branch_0x8033134c:
    lfs     f3, 0xec(sp)
    lfs     f7, 0x0(r31)
    lfs     f2, 0x8(r31)
    lfs     f6, 0xe8(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0xe4(sp)
    fmuls   f1, f2, f6
    lfs     f5, 0x4(r31)
    fmsubs  f30, f2, f4, f0
    fmuls   f2, f5, f4
    lfs     f0, 0x93c(r2)
    fmsubs  f29, f5, f3, f1
    fmuls   f1, f30, f30
    fmsubs  f31, f7, f6, f2
    fmadds  f1, f29, f29, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x803315d4
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803313b4
    lfs     f31, 0x90c(r2)
    fmr     f30, f31
    fmr     f29, f30
    b       branch_0x803313cc

branch_0x803313b4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x910(r2)
    fmuls   f0, f0, f1
    fmuls   f29, f29, f0
    fmuls   f30, f30, f0
    fmuls   f31, f31, f0
branch_0x803313cc:
    lfs     f4, 0xec(sp)
    lfs     f3, 0xe4(sp)
    fmuls   f0, f4, f30
    lfs     f5, 0xe8(sp)
    fmuls   f1, f3, f31
    fmuls   f2, f5, f29
    fmsubs  f0, f5, f31, f0
    fmsubs  f1, f4, f29, f1
    fmsubs  f2, f3, f30, f2
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80331440
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80331470

branch_0x80331440:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80331470:
    lfs     f1, 0x0(r31)
    addi    r3, sp, 0xa8
    lfs     f0, 0xe4(sp)
    addi    r4, sp, 0x120
    stfs    f1, 0xa8(sp)
    lfs     f1, 0x90c(r2)
    addi    r5, sp, 0x78
    stfs    f0, 0xac(sp)
    stfs    f29, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    lfs     f0, 0x4(r31)
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xe8(sp)
    stfs    f0, 0xbc(sp)
    stfs    f30, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    lfs     f0, 0x8(r31)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0xec(sp)
    stfs    f0, 0xcc(sp)
    stfs    f31, 0xd0(sp)
    stfs    f1, 0xd4(sp)
    bl      PSMTXConcat
    addi    r4, sp, 0xf0
    addi    r5, r4, 0x0
    addi    r3, sp, 0x78
    li      r6, 0x4
    bl      PSMTXMultVecArray
    lfs     f31, 0x2c(r30)
    li      r3, 0x80
    lfs     f30, 0x30(r30)
    li      r4, 0x0
    lfs     f29, 0x34(r30)
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0xf0(sp)
    lis     r3, 0xcc01
    lfs     f1, 0xf4(sp)
    fadds   f0, f0, f31
    lfs     f2, 0xf8(sp)
    fadds   f1, f1, f30
    lwz     r4, R13Off_m0x5ad8(r13)
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0xfc(sp)
    lfs     f1, 0x100(sp)
    lfs     f2, 0x104(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f2, 0x110(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x114(sp)
    lfs     f1, 0x118(sp)
    lfs     f2, 0x11c(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x803315d4:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lfd     f30, 0x168(sp)
    mtlr    r0
    lfd     f29, 0x160(sp)
    lwz     r31, 0x15c(sp)
    lwz     r30, 0x158(sp)
    lwz     r29, 0x154(sp)
    addi    sp, sp, 0x178
    blr


.globl exec__27JPADrawExecDirectionalCrossFPC14JPADrawContextP15JPABaseParticle
exec__27JPADrawExecDirectionalCrossFPC14JPADrawContextP15JPABaseParticle: # 0x803315fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stfd    f31, 0x160(sp)
    stfd    f30, 0x158(sp)
    stfd    f29, 0x150(sp)
    stw     r31, 0x14c(sp)
    stw     r30, 0x148(sp)
    mr      r30, r5
    stw     r29, 0x144(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8033163c
    li      r0, 0x1
    b       branch_0x80331640

branch_0x8033163c:
    li      r0, 0x0
branch_0x80331640:
    clrlwi. r0, r0, 24
    bne-    branch_0x80331b2c
    mr      r3, r30
    lwz     r12, 0x58(r30)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r4, R13Off_m0x5ad8(r13)
    mr      r31, r3
    lfs     f5, 0x10(r3)
    mr      r3, r30
    lfs     f4, 0x4(r4)
    lfs     f0, 0xc(r4)
    fneg    f3, f5
    lfs     f7, 0x8(r4)
    addi    r5, sp, 0xd4
    fadds   f2, f4, f0
    lfs     f6, 0x10(r4)
    lfs     f8, 0x14(r31)
    fsubs   f0, f4, f0
    fmuls   f3, f3, f2
    fadds   f1, f7, f6
    fmuls   f5, f5, f0
    stfs    f3, 0xe0(sp)
    fneg    f2, f8
    fmuls   f4, f8, f1
    fsubs   f1, f7, f6
    stfs    f4, 0xe4(sp)
    fmuls   f6, f2, f1
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xe8(sp)
    stfs    f5, 0xec(sp)
    stfs    f4, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    stfs    f5, 0xf8(sp)
    stfs    f6, 0xfc(sp)
    stfs    f0, 0x100(sp)
    stfs    f3, 0x104(sp)
    stfs    f6, 0x108(sp)
    stfs    f0, 0x10c(sp)
    lfs     f3, 0xec(sp)
    lfs     f1, 0xe0(sp)
    lfs     f2, 0x900(r2)
    fadds   f0, f3, f1
    fsubs   f1, f3, f1
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    stfs    f0, 0x110(sp)
    stfs    f4, 0x114(sp)
    stfs    f1, 0x118(sp)
    lfs     f1, 0xe0(sp)
    lfs     f3, 0xec(sp)
    fadds   f0, f3, f1
    fsubs   f1, f1, f3
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    stfs    f0, 0x11c(sp)
    stfs    f4, 0x120(sp)
    stfs    f1, 0x124(sp)
    lfs     f1, 0xe0(sp)
    lfs     f3, 0xec(sp)
    fadds   f0, f3, f1
    fsubs   f1, f1, f3
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    stfs    f0, 0x128(sp)
    stfs    f6, 0x12c(sp)
    stfs    f1, 0x130(sp)
    lfs     f3, 0xec(sp)
    lfs     f1, 0xe0(sp)
    fadds   f0, f3, f1
    fsubs   f1, f3, f1
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    stfs    f0, 0x134(sp)
    stfs    f6, 0x138(sp)
    stfs    f1, 0x13c(sp)
    lwz     r12, 0xa0(r4)
    lwz     r4, 0x0(r29)
    mtlr    r12
    blrl
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xdc(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80331b2c
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803317d4
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xdc(sp)
    stfs    f0, 0xd8(sp)
    stfs    f0, 0xd4(sp)
    b       branch_0x80331804

branch_0x803317d4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0xd4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xdc(sp)
branch_0x80331804:
    lfs     f3, 0xdc(sp)
    lfs     f7, 0x0(r31)
    lfs     f2, 0x8(r31)
    lfs     f6, 0xd8(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0xd4(sp)
    fmuls   f1, f2, f6
    lfs     f5, 0x4(r31)
    fmsubs  f30, f2, f4, f0
    fmuls   f2, f5, f4
    lfs     f0, 0x93c(r2)
    fmsubs  f29, f5, f3, f1
    fmuls   f1, f30, f30
    fmsubs  f31, f7, f6, f2
    fmadds  f1, f29, f29, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80331b2c
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8033186c
    lfs     f31, 0x90c(r2)
    fmr     f30, f31
    fmr     f29, f30
    b       branch_0x80331884

branch_0x8033186c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x910(r2)
    fmuls   f0, f0, f1
    fmuls   f29, f29, f0
    fmuls   f30, f30, f0
    fmuls   f31, f31, f0
branch_0x80331884:
    lfs     f4, 0xdc(sp)
    lfs     f3, 0xd4(sp)
    fmuls   f0, f4, f30
    lfs     f5, 0xd8(sp)
    fmuls   f1, f3, f31
    fmuls   f2, f5, f29
    fmsubs  f0, f5, f31, f0
    fmsubs  f1, f4, f29, f1
    fmsubs  f2, f3, f30, f2
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803318f8
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80331928

branch_0x803318f8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80331928:
    lfs     f1, 0x0(r31)
    addi    r4, sp, 0xe0
    lfs     f0, 0xd4(sp)
    mr      r5, r4
    stfs    f1, 0x98(sp)
    lfs     f1, 0x90c(r2)
    addi    r3, sp, 0x98
    stfs    f0, 0x9c(sp)
    li      r6, 0x8
    stfs    f29, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    lfs     f0, 0x4(r31)
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xd8(sp)
    stfs    f0, 0xac(sp)
    stfs    f30, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    lfs     f0, 0x8(r31)
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0xbc(sp)
    stfs    f31, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    bl      PSMTXMultVecArray
    lfs     f31, 0x2c(r30)
    li      r3, 0x80
    lfs     f30, 0x30(r30)
    li      r4, 0x0
    lfs     f29, 0x34(r30)
    li      r5, 0x8
    bl      GXBegin
    lfs     f0, 0xe0(sp)
    lis     r3, 0xcc01
    lfs     f1, 0xe4(sp)
    fadds   f0, f0, f31
    lfs     f2, 0xe8(sp)
    fadds   f1, f1, f30
    lwz     r4, R13Off_m0x5ad8(r13)
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f7, 0x18(r4)
    lfs     f6, 0x14(r4)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    lfs     f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f2, 0xf4(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f8, 0x20(r4)
    lfs     f5, 0x1c(r4)
    stfs    f5, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0xf8(sp)
    lfs     f1, 0xfc(sp)
    lfs     f2, 0x100(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f9, 0x28(r4)
    lfs     f4, 0x24(r4)
    stfs    f4, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    lfs     f0, 0x104(sp)
    lfs     f1, 0x108(sp)
    lfs     f2, 0x10c(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f10, 0x30(r4)
    lfs     f3, 0x2c(r4)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    lfs     f0, 0x110(sp)
    lfs     f1, 0x114(sp)
    lfs     f2, 0x118(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    lfs     f0, 0x11c(sp)
    lfs     f1, 0x120(sp)
    lfs     f2, 0x124(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0x128(sp)
    lfs     f1, 0x12c(sp)
    lfs     f2, 0x130(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    lfs     f0, 0x134(sp)
    lfs     f1, 0x138(sp)
    lfs     f2, 0x13c(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
branch_0x80331b2c:
    lwz     r0, 0x16c(sp)
    lfd     f31, 0x160(sp)
    lfd     f30, 0x158(sp)
    mtlr    r0
    lfd     f29, 0x150(sp)
    lwz     r31, 0x14c(sp)
    lwz     r30, 0x148(sp)
    lwz     r29, 0x144(sp)
    addi    sp, sp, 0x168
    blr


.globl exec__30JPADrawExecRotDirectionalCrossFPC14JPADrawContextP15JPABaseParticle
exec__30JPADrawExecRotDirectionalCrossFPC14JPADrawContextP15JPABaseParticle: # 0x80331b54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d8(sp)
    stfd    f31, 0x1d0(sp)
    stfd    f30, 0x1c8(sp)
    stfd    f29, 0x1c0(sp)
    stw     r31, 0x1bc(sp)
    stw     r30, 0x1b8(sp)
    mr      r30, r5
    stw     r29, 0x1b4(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80331b94
    li      r0, 0x1
    b       branch_0x80331b98

branch_0x80331b94:
    li      r0, 0x0
branch_0x80331b98:
    clrlwi. r0, r0, 24
    bne-    branch_0x803320cc
    mr      r3, r30
    lwz     r12, 0x58(r30)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    mr      r31, r3
    lfs     f4, 0x10(r3)
    lfs     f3, 0x4(r5)
    lfs     f0, 0xc(r5)
    fneg    f2, f4
    lhz     r3, 0x34(r3)
    fadds   f1, f3, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f6, 0x8(r5)
    sraw    r0, r3, r0
    lfs     f5, 0x10(r5)
    fmuls   f8, f2, f1
    lwz     r4, R13Off_m0x5ea8(r13)
    fsubs   f0, f3, f0
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x5ea4(r13)
    lfsx    f2, r3, r0
    fadds   f1, f6, f5
    lfs     f7, 0x14(r31)
    fmuls   f10, f4, f0
    lfsx    f3, r4, r0
    fmuls   f9, f7, f1
    stfs    f8, 0x120(sp)
    fmr     f1, f3
    fneg    f4, f7
    addi    r3, sp, 0x180
    stfs    f9, 0x124(sp)
    fsubs   f0, f6, f5
    lfs     f3, 0x90c(r2)
    fmuls   f0, f4, f0
    stfs    f3, 0x128(sp)
    stfs    f10, 0x12c(sp)
    stfs    f9, 0x130(sp)
    stfs    f3, 0x134(sp)
    stfs    f10, 0x138(sp)
    stfs    f0, 0x13c(sp)
    stfs    f3, 0x140(sp)
    stfs    f8, 0x144(sp)
    stfs    f0, 0x148(sp)
    stfs    f3, 0x14c(sp)
    lfs     f6, 0x12c(sp)
    lfs     f4, 0x120(sp)
    lfs     f5, 0x900(r2)
    fadds   f3, f6, f4
    fsubs   f4, f6, f4
    fmuls   f3, f5, f3
    fmuls   f4, f5, f4
    stfs    f3, 0x150(sp)
    stfs    f9, 0x154(sp)
    stfs    f4, 0x158(sp)
    lfs     f4, 0x120(sp)
    lfs     f6, 0x12c(sp)
    fadds   f3, f6, f4
    fsubs   f4, f4, f6
    fmuls   f3, f5, f3
    fmuls   f4, f5, f4
    stfs    f3, 0x15c(sp)
    stfs    f9, 0x160(sp)
    stfs    f4, 0x164(sp)
    lfs     f4, 0x120(sp)
    lfs     f6, 0x12c(sp)
    fadds   f3, f6, f4
    fsubs   f4, f4, f6
    fmuls   f3, f5, f3
    fmuls   f4, f5, f4
    stfs    f3, 0x168(sp)
    stfs    f0, 0x16c(sp)
    stfs    f4, 0x170(sp)
    lfs     f7, 0x12c(sp)
    lfs     f6, 0x120(sp)
    fsubs   f3, f7, f6
    fmuls   f4, f5, f3
    fadds   f3, f7, f6
    fmuls   f3, f5, f3
    stfs    f3, 0x174(sp)
    stfs    f0, 0x178(sp)
    stfs    f4, 0x17c(sp)
    lwz     r12, 0xa4(r5)
    mtlr    r12
    blrl
    lwz     r6, R13Off_m0x5ad8(r13)
    mr      r3, r30
    lwz     r4, 0x0(r29)
    addi    r5, sp, 0x114
    lwz     r12, 0xa0(r6)
    mtlr    r12
    blrl
    lfs     f1, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x11c(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x803320cc
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80331d64
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x114(sp)
    b       branch_0x80331d94

branch_0x80331d64:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x114(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x114(sp)
    lfs     f0, 0x118(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x118(sp)
    lfs     f0, 0x11c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x11c(sp)
branch_0x80331d94:
    lfs     f3, 0x11c(sp)
    lfs     f7, 0x0(r31)
    lfs     f2, 0x8(r31)
    lfs     f6, 0x118(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0x114(sp)
    fmuls   f1, f2, f6
    lfs     f5, 0x4(r31)
    fmsubs  f30, f2, f4, f0
    fmuls   f2, f5, f4
    lfs     f0, 0x93c(r2)
    fmsubs  f29, f5, f3, f1
    fmuls   f1, f30, f30
    fmsubs  f31, f7, f6, f2
    fmadds  f1, f29, f29, f1
    fmadds  f1, f31, f31, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x803320cc
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80331dfc
    lfs     f31, 0x90c(r2)
    fmr     f30, f31
    fmr     f29, f30
    b       branch_0x80331e14

branch_0x80331dfc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x910(r2)
    fmuls   f0, f0, f1
    fmuls   f29, f29, f0
    fmuls   f30, f30, f0
    fmuls   f31, f31, f0
branch_0x80331e14:
    lfs     f4, 0x11c(sp)
    lfs     f3, 0x114(sp)
    fmuls   f0, f4, f30
    lfs     f5, 0x118(sp)
    fmuls   f1, f3, f31
    fmuls   f2, f5, f29
    fmsubs  f0, f5, f31, f0
    fmsubs  f1, f4, f29, f1
    fmsubs  f2, f3, f30, f2
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80331e88
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80331eb8

branch_0x80331e88:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80331eb8:
    lfs     f1, 0x0(r31)
    addi    r3, sp, 0xd8
    lfs     f0, 0x114(sp)
    addi    r4, sp, 0x180
    stfs    f1, 0xd8(sp)
    lfs     f1, 0x90c(r2)
    addi    r5, sp, 0xa8
    stfs    f0, 0xdc(sp)
    stfs    f29, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    lfs     f0, 0x4(r31)
    stfs    f0, 0xe8(sp)
    lfs     f0, 0x118(sp)
    stfs    f0, 0xec(sp)
    stfs    f30, 0xf0(sp)
    stfs    f1, 0xf4(sp)
    lfs     f0, 0x8(r31)
    stfs    f0, 0xf8(sp)
    lfs     f0, 0x11c(sp)
    stfs    f0, 0xfc(sp)
    stfs    f31, 0x100(sp)
    stfs    f1, 0x104(sp)
    bl      PSMTXConcat
    addi    r4, sp, 0x120
    addi    r5, r4, 0x0
    addi    r3, sp, 0xa8
    li      r6, 0x8
    bl      PSMTXMultVecArray
    lfs     f31, 0x2c(r30)
    li      r3, 0x80
    lfs     f30, 0x30(r30)
    li      r4, 0x0
    lfs     f29, 0x34(r30)
    li      r5, 0x8
    bl      GXBegin
    lfs     f0, 0x120(sp)
    lis     r3, 0xcc01
    lfs     f1, 0x124(sp)
    fadds   f0, f0, f31
    lfs     f2, 0x128(sp)
    fadds   f1, f1, f30
    lwz     r4, R13Off_m0x5ad8(r13)
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f7, 0x18(r4)
    lfs     f6, 0x14(r4)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    lfs     f0, 0x12c(sp)
    lfs     f1, 0x130(sp)
    lfs     f2, 0x134(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f8, 0x20(r4)
    lfs     f5, 0x1c(r4)
    stfs    f5, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0x138(sp)
    lfs     f1, 0x13c(sp)
    lfs     f2, 0x140(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f9, 0x28(r4)
    lfs     f4, 0x24(r4)
    stfs    f4, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    lfs     f0, 0x144(sp)
    lfs     f1, 0x148(sp)
    lfs     f2, 0x14c(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f10, 0x30(r4)
    lfs     f3, 0x2c(r4)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    lfs     f0, 0x150(sp)
    lfs     f1, 0x154(sp)
    lfs     f2, 0x158(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    lfs     f0, 0x15c(sp)
    lfs     f1, 0x160(sp)
    lfs     f2, 0x164(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0x168(sp)
    lfs     f1, 0x16c(sp)
    lfs     f2, 0x170(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    lfs     f0, 0x174(sp)
    lfs     f1, 0x178(sp)
    lfs     f2, 0x17c(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
branch_0x803320cc:
    lwz     r0, 0x1dc(sp)
    lfd     f31, 0x1d0(sp)
    lfd     f30, 0x1c8(sp)
    mtlr    r0
    lfd     f29, 0x1c0(sp)
    lwz     r31, 0x1bc(sp)
    lwz     r30, 0x1b8(sp)
    lwz     r29, 0x1b4(sp)
    addi    sp, sp, 0x1d8
    blr


.globl exec__23JPADrawExecDirBillBoardFPC14JPADrawContextP15JPABaseParticle
exec__23JPADrawExecDirBillBoardFPC14JPADrawContextP15JPABaseParticle: # 0x803320f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    mr      r30, r5
    stw     r29, 0xac(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80332128
    li      r0, 0x1
    b       branch_0x8033212c

branch_0x80332128:
    li      r0, 0x0
branch_0x8033212c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80332428
    mr      r3, r30
    lwz     r12, 0x58(r30)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    mr      r31, r3
    lwz     r4, 0x0(r29)
    mr      r3, r30
    lwz     r12, 0xa0(r5)
    addi    r5, sp, 0x9c
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x5ad8(r13)
    lfs     f6, 0xa4(sp)
    lwz     r3, 0x34(r3)
    lfs     f5, 0x9c(sp)
    lfs     f4, 0x24(r3)
    lfs     f2, 0x28(r3)
    fmuls   f0, f6, f4
    lfs     f7, 0xa0(sp)
    lfs     f3, 0x20(r3)
    fmuls   f1, f5, f2
    fmsubs  f0, f7, f2, f0
    fmuls   f2, f7, f3
    fmsubs  f1, f6, f3, f1
    stfs    f0, 0x9c(sp)
    fmsubs  f0, f5, f4, f2
    stfs    f1, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xa4(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x93c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80332428
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803321fc
    lfs     f0, 0x90c(r2)
    stfs    f0, 0xa4(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0x9c(sp)
    b       branch_0x8033222c

branch_0x803321fc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x9c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa4(sp)
branch_0x8033222c:
    lwz     r3, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x9c
    addi    r5, r4, 0x0
    lwz     r3, 0x34(r3)
    bl      PSMTXMultVecSR
    lwz     r3, R13Off_m0x5ad8(r13)
    addi    r4, sp, 0x60
    lfs     f4, 0x10(r31)
    mr      r5, r4
    lfs     f2, 0x4(r3)
    lfs     f0, 0xc(r3)
    lfs     f3, 0x8(r3)
    fsubs   f1, f2, f0
    lfs     f6, 0x14(r31)
    fadds   f0, f2, f0
    lfs     f2, 0x10(r3)
    lfs     f5, 0xa0(sp)
    fmuls   f7, f4, f1
    fmuls   f4, f4, f0
    fsubs   f0, f3, f2
    fneg    f1, f4
    fmuls   f4, f6, f0
    fadds   f0, f3, f2
    stfs    f1, 0x6c(sp)
    fmuls   f6, f6, f0
    fneg    f0, f4
    stfs    f6, 0x70(sp)
    stfs    f7, 0x74(sp)
    stfs    f6, 0x78(sp)
    stfs    f7, 0x7c(sp)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x84(sp)
    stfs    f0, 0x88(sp)
    lfs     f2, 0x70(sp)
    lfs     f3, 0x6c(sp)
    fmuls   f0, f5, f2
    lfs     f4, 0x9c(sp)
    fmuls   f1, f5, f3
    fmsubs  f0, f4, f3, f0
    fmadds  f1, f4, f2, f1
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x70(sp)
    lfs     f2, 0x78(sp)
    lfs     f3, 0x74(sp)
    fmuls   f0, f5, f2
    fmuls   f1, f5, f3
    fmsubs  f0, f4, f3, f0
    fmadds  f1, f4, f2, f1
    stfs    f0, 0x74(sp)
    stfs    f1, 0x78(sp)
    lfs     f2, 0x80(sp)
    lfs     f3, 0x7c(sp)
    fmuls   f0, f5, f2
    fmuls   f1, f5, f3
    fmsubs  f0, f4, f3, f0
    fmadds  f1, f4, f2, f1
    stfs    f0, 0x7c(sp)
    stfs    f1, 0x80(sp)
    lfs     f2, 0x88(sp)
    lfs     f3, 0x84(sp)
    fmuls   f0, f5, f2
    fmuls   f1, f5, f3
    fmsubs  f0, f4, f3, f0
    fmadds  f1, f4, f2, f1
    stfs    f0, 0x84(sp)
    stfs    f1, 0x88(sp)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x60(sp)
    lfs     f0, 0x30(r30)
    stfs    f0, 0x64(sp)
    lfs     f0, 0x34(r30)
    stfs    f0, 0x68(sp)
    lwz     r3, 0x34(r3)
    bl      PSMTXMultVec
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x6c(sp)
    lis     r3, 0xcc01
    lfs     f2, 0x60(sp)
    lfs     f1, 0x70(sp)
    lfs     f3, 0x64(sp)
    fadds   f0, f0, f2
    lfs     f4, 0x68(sp)
    fadds   f1, f1, f3
    lwz     r4, R13Off_m0x5ad8(r13)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    fadds   f0, f0, f2
    fadds   f1, f1, f3
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x80332428:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl exec__19JPADrawExecRotationFPC14JPADrawContextP15JPABaseParticle
exec__19JPADrawExecRotationFPC14JPADrawContextP15JPABaseParticle: # 0x80332444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stw     r31, 0xbc(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80332478
    li      r0, 0x1
    b       branch_0x8033247c

branch_0x80332478:
    li      r0, 0x0
branch_0x8033247c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8033264c
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    lfs     f4, 0x10(r3)
    lfs     f3, 0x4(r5)
    lfs     f0, 0xc(r5)
    fneg    f2, f4
    lhz     r4, 0x34(r3)
    fadds   f1, f3, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f6, 0x8(r5)
    sraw    r0, r4, r0
    lfs     f7, 0x14(r3)
    fsubs   f0, f3, f0
    lfs     f5, 0x10(r5)
    fmuls   f8, f2, f1
    lwz     r4, R13Off_m0x5ea8(r13)
    fadds   f1, f6, f5
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x5ea4(r13)
    lfsx    f3, r4, r0
    fmuls   f9, f7, f1
    lfsx    f2, r3, r0
    fmuls   f10, f4, f0
    fmr     f1, f3
    stfs    f8, 0x54(sp)
    fneg    f4, f7
    addi    r3, sp, 0x84
    stfs    f9, 0x58(sp)
    fsubs   f3, f6, f5
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x5c(sp)
    fmuls   f3, f4, f3
    stfs    f10, 0x60(sp)
    stfs    f9, 0x64(sp)
    stfs    f0, 0x68(sp)
    stfs    f10, 0x6c(sp)
    stfs    f3, 0x70(sp)
    stfs    f0, 0x74(sp)
    stfs    f8, 0x78(sp)
    stfs    f3, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lwz     r12, 0xa4(r5)
    mtlr    r12
    blrl
    addi    r4, sp, 0x54
    addi    r5, r4, 0x0
    addi    r3, sp, 0x84
    li      r6, 0x4
    bl      PSMTXMultVecArray
    lfs     f31, 0x2c(r31)
    li      r3, 0x80
    lfs     f30, 0x30(r31)
    li      r4, 0x0
    lfs     f29, 0x34(r31)
    li      r5, 0x4
    bl      GXBegin
    lfs     f0, 0x54(sp)
    lis     r3, 0xcc01
    lfs     f1, 0x58(sp)
    fadds   f0, f0, f31
    lfs     f2, 0x5c(sp)
    fadds   f1, f1, f30
    lwz     r4, R13Off_m0x5ad8(r13)
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x18(r4)
    lfs     f0, 0x14(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f2, 0x68(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x20(r4)
    lfs     f0, 0x1c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f2, 0x74(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x28(r4)
    lfs     f0, 0x24(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f2, 0x80(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f1, 0x30(r4)
    lfs     f0, 0x2c(r4)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
branch_0x8033264c:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    addi    sp, sp, 0xd8
    blr


.globl exec__24JPADrawExecRotationCrossFPC14JPADrawContextP15JPABaseParticle
exec__24JPADrawExecRotationCrossFPC14JPADrawContextP15JPABaseParticle: # 0x8033266c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    stfd    f29, 0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x803326a0
    li      r0, 0x1
    b       branch_0x803326a4

branch_0x803326a0:
    li      r0, 0x0
branch_0x803326a4:
    clrlwi. r0, r0, 24
    bne-    branch_0x803329b8
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    lfs     f4, 0x10(r3)
    lfs     f3, 0x4(r5)
    lfs     f0, 0xc(r5)
    fneg    f2, f4
    lhz     r4, 0x34(r3)
    fadds   f1, f3, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f6, 0x8(r5)
    sraw    r0, r4, r0
    lfs     f7, 0x14(r3)
    fsubs   f0, f3, f0
    lfs     f5, 0x10(r5)
    fmuls   f8, f2, f1
    lwz     r4, R13Off_m0x5ea8(r13)
    fadds   f1, f6, f5
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x5ea4(r13)
    lfsx    f3, r4, r0
    fmuls   f9, f7, f1
    lfsx    f2, r3, r0
    fmuls   f10, f4, f0
    fmr     f1, f3
    stfs    f8, 0x84(sp)
    fneg    f4, f7
    addi    r3, sp, 0xe4
    stfs    f9, 0x88(sp)
    fsubs   f0, f6, f5
    lfs     f3, 0x90c(r2)
    stfs    f3, 0x8c(sp)
    fmuls   f0, f4, f0
    stfs    f10, 0x90(sp)
    stfs    f9, 0x94(sp)
    stfs    f3, 0x98(sp)
    stfs    f10, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    stfs    f3, 0xa4(sp)
    stfs    f8, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f3, 0xb0(sp)
    lfs     f6, 0x90(sp)
    lfs     f4, 0x84(sp)
    lfs     f5, 0x900(r2)
    fadds   f3, f6, f4
    fsubs   f4, f6, f4
    fmuls   f3, f5, f3
    fmuls   f4, f5, f4
    stfs    f3, 0xb4(sp)
    stfs    f9, 0xb8(sp)
    stfs    f4, 0xbc(sp)
    lfs     f4, 0x84(sp)
    lfs     f6, 0x90(sp)
    fadds   f3, f6, f4
    fsubs   f4, f4, f6
    fmuls   f3, f5, f3
    fmuls   f4, f5, f4
    stfs    f3, 0xc0(sp)
    stfs    f9, 0xc4(sp)
    stfs    f4, 0xc8(sp)
    lfs     f4, 0x84(sp)
    lfs     f6, 0x90(sp)
    fadds   f3, f6, f4
    fsubs   f4, f4, f6
    fmuls   f3, f5, f3
    fmuls   f4, f5, f4
    stfs    f3, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f4, 0xd4(sp)
    lfs     f7, 0x90(sp)
    lfs     f6, 0x84(sp)
    fsubs   f3, f7, f6
    fmuls   f4, f5, f3
    fadds   f3, f7, f6
    fmuls   f3, f5, f3
    stfs    f3, 0xd8(sp)
    stfs    f0, 0xdc(sp)
    stfs    f4, 0xe0(sp)
    lwz     r12, 0xa4(r5)
    mtlr    r12
    blrl
    addi    r4, sp, 0x84
    addi    r5, r4, 0x0
    addi    r3, sp, 0xe4
    li      r6, 0x8
    bl      PSMTXMultVecArray
    lfs     f31, 0x2c(r31)
    li      r3, 0x80
    lfs     f30, 0x30(r31)
    li      r4, 0x0
    lfs     f29, 0x34(r31)
    li      r5, 0x8
    bl      GXBegin
    lfs     f0, 0x84(sp)
    lis     r3, 0xcc01
    lfs     f1, 0x88(sp)
    fadds   f0, f0, f31
    lfs     f2, 0x8c(sp)
    fadds   f1, f1, f30
    lwz     r4, R13Off_m0x5ad8(r13)
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f7, 0x18(r4)
    lfs     f6, 0x14(r4)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    lfs     f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f2, 0x98(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f8, 0x20(r4)
    lfs     f5, 0x1c(r4)
    stfs    f5, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f2, 0xa4(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f9, 0x28(r4)
    lfs     f4, 0x24(r4)
    stfs    f4, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    lfs     f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f2, 0xb0(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lfs     f10, 0x30(r4)
    lfs     f3, 0x2c(r4)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
    lfs     f0, 0xb4(sp)
    lfs     f1, 0xb8(sp)
    lfs     f2, 0xbc(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f7, -0x8000(r3)
    lfs     f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f2, 0xc8(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f5, -0x8000(r3)
    stfs    f8, -0x8000(r3)
    lfs     f0, 0xcc(sp)
    lfs     f1, 0xd0(sp)
    lfs     f2, 0xd4(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f4, -0x8000(r3)
    stfs    f9, -0x8000(r3)
    lfs     f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f2, 0xe0(sp)
    fadds   f0, f0, f31
    fadds   f1, f1, f30
    fadds   f2, f2, f29
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f10, -0x8000(r3)
branch_0x803329b8:
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    lfd     f29, 0x120(sp)
    lwz     r31, 0x11c(sp)
    addi    sp, sp, 0x138
    blr


.globl exec__16JPADrawExecPointFPC14JPADrawContextP15JPABaseParticle
exec__16JPADrawExecPointFPC14JPADrawContextP15JPABaseParticle: # 0x803329d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stfd    f29, 0x30(sp)
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80332a04
    li      r0, 0x1
    b       branch_0x80332a08

branch_0x80332a04:
    li      r0, 0x0
branch_0x80332a08:
    clrlwi. r0, r0, 24
    bne-    branch_0x80332a48
    lfs     f31, 0x2c(r5)
    li      r3, 0xb8
    lfs     f30, 0x30(r5)
    li      r4, 0x0
    lfs     f29, 0x34(r5)
    li      r5, 0x1
    bl      GXBegin
    lis     r3, 0xcc01
    lfs     f0, 0x90c(r2)
    stfs    f31, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f0, -0x8000(r3)
branch_0x80332a48:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    lfd     f29, 0x30(sp)
    addi    sp, sp, 0x48
    blr


.globl exec__15JPADrawExecLineFPC14JPADrawContextP15JPABaseParticle
exec__15JPADrawExecLineFPC14JPADrawContextP15JPABaseParticle: # 0x80332a64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r5
    lwz     r0, 0x10(r5)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80332a98
    li      r0, 0x1
    b       branch_0x80332a9c

branch_0x80332a98:
    li      r0, 0x0
branch_0x80332a9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80332c04
    lfs     f31, 0x2c(r31)
    lfs     f30, 0x30(r31)
    lfs     f29, 0x34(r31)
    lwz     r3, 0x38(r31)
    lwz     r0, 0x3c(r31)
    lfs     f0, 0x93c(r2)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x40(r31)
    stw     r0, 0x48(sp)
    lfs     f2, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f3, 0x48(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x80332c04
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80332b18
    lfs     f0, 0x90c(r2)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x40(sp)
    b       branch_0x80332b48

branch_0x80332b18:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x910(r2)
    lfs     f0, 0x40(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
branch_0x80332b48:
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x5ad8(r13)
    li      r4, 0x0
    lfs     f2, 0x14(r3)
    li      r3, 0xa8
    lfs     f1, 0x8(r5)
    lfs     f0, 0x40(sp)
    li      r5, 0x2
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x40(sp)
    fsubs   f0, f31, f0
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fsubs   f0, f30, f0
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fsubs   f0, f29, f0
    stfs    f0, 0x48(sp)
    bl      GXBegin
    lis     r3, 0xcc01
    lfs     f2, 0x90c(r2)
    stfs    f31, -0x8000(r3)
    lfs     f1, 0x40(sp)
    stfs    f30, -0x8000(r3)
    lfs     f0, 0x910(r2)
    stfs    f29, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    lfs     f1, 0x44(sp)
    stfs    f1, -0x8000(r3)
    lfs     f1, 0x48(sp)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f0, -0x8000(r3)
branch_0x80332c04:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lfd     f29, 0x60(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x78
    blr


.globl stripeGetNext__FP26JSULink_15JPABaseParticle_
stripeGetNext__FP26JSULink_15JPABaseParticle_: # 0x80332c24
    lwz     r3, 0xc(r3)
    blr


.globl stripeGetPrev__FP26JSULink_15JPABaseParticle_
stripeGetPrev__FP26JSULink_15JPABaseParticle_: # 0x80332c2c
    lwz     r3, 0x8(r3)
    blr


.globl exec__17JPADrawExecStripeFPC14JPADrawContext
exec__17JPADrawExecStripeFPC14JPADrawContext: # 0x80332c34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f8(sp)
    stfd    f31, 0x1f0(sp)
    stfd    f30, 0x1e8(sp)
    stfd    f29, 0x1e0(sp)
    stfd    f28, 0x1d8(sp)
    stfd    f27, 0x1d0(sp)
    stfd    f26, 0x1c8(sp)
    stfd    f25, 0x1c0(sp)
    stfd    f24, 0x1b8(sp)
    stfd    f23, 0x1b0(sp)
    stfd    f22, 0x1a8(sp)
    stfd    f21, 0x1a0(sp)
    stfd    f20, 0x198(sp)
    stfd    f19, 0x190(sp)
    stfd    f18, 0x188(sp)
    stfd    f17, 0x180(sp)
    stmw    r26, 0x168(sp)
    mr      r31, r4
    lwz     r6, 0x18(r4)
    lwz     r5, 0x8(r6)
    cmplwi  r5, 0x2
    blt-    branch_0x80333054
    addi    r0, r5, -0x1
    lfd     f1, 0x920(r2)
    stw     r0, 0x164(sp)
    lis     r4, 0x4330
    lwz     r3, 0x4(r31)
    stw     r4, 0x160(sp)
    lbz     r0, 0x7c(r3)
    lfd     f0, 0x160(sp)
    lfs     f2, 0x910(r2)
    clrlwi. r0, r0, 31
    fsubs   f0, f0, f1
    lfs     f22, 0x90c(r2)
    fdivs   f20, f2, f0
    bne-    branch_0x80332ce0
    lis     r3, stripeGetNext__FP26JSULink_15JPABaseParticle_@h
    lwz     r28, 0x0(r6)
    addi    r0, r3, stripeGetNext__FP26JSULink_15JPABaseParticle_@l
    mr      r27, r0
    b       branch_0x80332cf8

branch_0x80332ce0:
    lis     r3, stripeGetPrev__FP26JSULink_15JPABaseParticle_@h
    fmr     f22, f2
    addi    r0, r3, stripeGetPrev__FP26JSULink_15JPABaseParticle_@l
    fneg    f20, f20
    lwz     r28, 0x4(r6)
    mr      r27, r0
branch_0x80332cf8:
    clrlslwi  r5, r5, 17, 1
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f29, 0x93c(r2)
    mr      r26, r28
    lfs     f30, 0x90c(r2)
    lis     r30, 0xcc01
    lfs     f31, 0x910(r2)
    b       branch_0x8033304c

branch_0x80332d20:
    lwz     r28, 0x0(r26)
    lwz     r12, 0x58(r28)
    mr      r3, r28
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r7, R13Off_m0x5ad8(r13)
    mr      r29, r3
    lfs     f4, 0x10(r3)
    mr      r3, r28
    lfs     f3, 0x4(r7)
    lfs     f0, 0xc(r7)
    fneg    f2, f4
    lhz     r4, 0x34(r29)
    addi    r5, sp, 0x108
    fadds   f1, f3, f0
    fsubs   f0, f3, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea8(r13)
    fmuls   f2, f2, f1
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, R13Off_m0x5ea4(r13)
    lfsx    f1, r6, r0
    fmuls   f3, f4, f0
    lfsx    f0, r4, r0
    lwz     r12, 0xa0(r7)
    fmuls   f28, f2, f1
    fmuls   f24, f2, f0
    fmuls   f27, f3, f1
    mtlr    r12
    fmuls   f23, f3, f0
    lfs     f21, 0x2c(r28)
    lfs     f26, 0x30(r28)
    lfs     f25, 0x34(r28)
    lwz     r4, 0x0(r31)
    blrl
    lfs     f1, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x110(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80332df0
    stfs    f30, 0x108(sp)
    stfs    f31, 0x10c(sp)
    stfs    f30, 0x110(sp)
    b       branch_0x80332e38

branch_0x80332df0:
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80332e0c
    stfs    f30, 0x110(sp)
    stfs    f30, 0x10c(sp)
    stfs    f30, 0x108(sp)
    b       branch_0x80332e38

branch_0x80332e0c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x108(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x110(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x110(sp)
branch_0x80332e38:
    lfs     f3, 0x110(sp)
    lfs     f7, 0x0(r29)
    lfs     f1, 0x8(r29)
    lfs     f6, 0x10c(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0x108(sp)
    fmuls   f2, f1, f6
    lfs     f5, 0x4(r29)
    fmsubs  f18, f1, f4, f0
    fmuls   f1, f5, f4
    fmsubs  f19, f5, f3, f2
    fmuls   f0, f18, f18
    fmsubs  f17, f7, f6, f1
    fmadds  f0, f19, f19, f0
    fmadds  f1, f17, f17, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80332e90
    lfs     f18, 0x90c(r2)
    lfs     f19, 0x910(r2)
    fmr     f17, f18
    b       branch_0x80332ec0

branch_0x80332e90:
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80332eac
    lfs     f17, 0x90c(r2)
    fmr     f18, f17
    fmr     f19, f18
    b       branch_0x80332ec0

branch_0x80332eac:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f31, f1
    fmuls   f19, f19, f0
    fmuls   f18, f18, f0
    fmuls   f17, f17, f0
branch_0x80332ec0:
    lfs     f4, 0x110(sp)
    lfs     f3, 0x108(sp)
    fmuls   f0, f4, f18
    lfs     f5, 0x10c(sp)
    fmuls   f1, f3, f17
    fmuls   f2, f5, f19
    fmsubs  f0, f5, f17, f0
    fmsubs  f1, f4, f19, f1
    fmsubs  f2, f3, f18, f2
    stfs    f0, 0x0(r29)
    stfs    f1, 0x4(r29)
    stfs    f2, 0x8(r29)
    lfs     f1, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r29)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80332f2c
    stfs    f30, 0x8(r29)
    stfs    f30, 0x4(r29)
    stfs    f30, 0x0(r29)
    b       branch_0x80332f58

branch_0x80332f2c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x0(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r29)
    lfs     f0, 0x8(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r29)
branch_0x80332f58:
    stfs    f19, 0x138(sp)
    addi    r12, r27, 0x0
    mtlr    r12
    addi    r3, r26, 0x0
    stfs    f18, 0x13c(sp)
    stfs    f17, 0x140(sp)
    lfs     f0, 0x108(sp)
    stfs    f0, 0x144(sp)
    lfs     f0, 0x10c(sp)
    stfs    f0, 0x148(sp)
    lfs     f0, 0x110(sp)
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x150(sp)
    lfs     f0, 0x4(r29)
    stfs    f0, 0x154(sp)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x158(sp)
    lfs     f0, 0x144(sp)
    lfs     f1, 0x148(sp)
    fmuls   f11, f30, f0
    lfs     f12, 0x138(sp)
    lfs     f2, 0x14c(sp)
    fmuls   f8, f30, f1
    lfs     f9, 0x13c(sp)
    fmadds  f0, f24, f12, f11
    lfs     f13, 0x150(sp)
    fmuls   f5, f30, f2
    lfs     f6, 0x140(sp)
    fmadds  f1, f24, f9, f8
    fmadds  f0, f28, f13, f0
    lfs     f10, 0x154(sp)
    fmadds  f2, f24, f6, f5
    lfs     f7, 0x158(sp)
    fmadds  f3, f28, f10, f1
    fadds   f0, f0, f21
    fmadds  f4, f28, f7, f2
    fmadds  f1, f23, f12, f11
    fmadds  f2, f23, f9, f8
    stfs    f0, -0x8000(r30)
    fadds   f0, f3, f26
    fmadds  f8, f27, f13, f1
    fmadds  f1, f23, f6, f5
    fmadds  f3, f27, f10, f2
    stfs    f0, -0x8000(r30)
    fadds   f0, f4, f25
    fmadds  f4, f27, f7, f1
    fadds   f2, f8, f21
    stfs    f0, -0x8000(r30)
    fadds   f1, f3, f26
    fadds   f0, f4, f25
    stfs    f30, -0x8000(r30)
    stfs    f22, -0x8000(r30)
    stfs    f2, -0x8000(r30)
    stfs    f1, -0x8000(r30)
    stfs    f0, -0x8000(r30)
    stfs    f31, -0x8000(r30)
    stfs    f22, -0x8000(r30)
    blrl
    fadds   f22, f22, f20
    mr      r26, r3
branch_0x8033304c:
    cmplwi  r26, 0x0
    bne+    branch_0x80332d20
branch_0x80333054:
    lmw     r26, 0x168(sp)
    lwz     r0, 0x1fc(sp)
    lfd     f31, 0x1f0(sp)
    lfd     f30, 0x1e8(sp)
    mtlr    r0
    lfd     f29, 0x1e0(sp)
    lfd     f28, 0x1d8(sp)
    lfd     f27, 0x1d0(sp)
    lfd     f26, 0x1c8(sp)
    lfd     f25, 0x1c0(sp)
    lfd     f24, 0x1b8(sp)
    lfd     f23, 0x1b0(sp)
    lfd     f22, 0x1a8(sp)
    lfd     f21, 0x1a0(sp)
    lfd     f20, 0x198(sp)
    lfd     f19, 0x190(sp)
    lfd     f18, 0x188(sp)
    lfd     f17, 0x180(sp)
    addi    sp, sp, 0x1f8
    blr


.globl exec__22JPADrawExecStripeCrossFPC14JPADrawContext
exec__22JPADrawExecStripeCrossFPC14JPADrawContext: # 0x803330a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2b8(sp)
    stfd    f31, 0x2b0(sp)
    stfd    f30, 0x2a8(sp)
    stfd    f29, 0x2a0(sp)
    stfd    f28, 0x298(sp)
    stfd    f27, 0x290(sp)
    stfd    f26, 0x288(sp)
    stfd    f25, 0x280(sp)
    stfd    f24, 0x278(sp)
    stfd    f23, 0x270(sp)
    stfd    f22, 0x268(sp)
    stfd    f21, 0x260(sp)
    stfd    f20, 0x258(sp)
    stfd    f19, 0x250(sp)
    stfd    f18, 0x248(sp)
    stfd    f17, 0x240(sp)
    stfd    f16, 0x238(sp)
    stmw    r24, 0x218(sp)
    mr      r29, r4
    lwz     r6, 0x18(r4)
    lwz     r5, 0x8(r6)
    cmplwi  r5, 0x2
    blt-    branch_0x80333838
    addi    r0, r5, -0x1
    lfd     f1, 0x920(r2)
    stw     r0, 0x214(sp)
    lis     r4, 0x4330
    lwz     r3, 0x4(r29)
    stw     r4, 0x210(sp)
    lbz     r0, 0x7c(r3)
    lfd     f0, 0x210(sp)
    lfs     f2, 0x910(r2)
    clrlwi. r0, r0, 31
    fsubs   f0, f0, f1
    fdivs   f20, f2, f0
    bne-    branch_0x80333158
    lfs     f16, 0x90c(r2)
    lis     r3, stripeGetNext__FP26JSULink_15JPABaseParticle_@h
    addi    r0, r3, stripeGetNext__FP26JSULink_15JPABaseParticle_@l
    lwz     r31, 0x0(r6)
    fmr     f30, f16
    mr      r30, r0
    b       branch_0x80333174

branch_0x80333158:
    fmr     f16, f2
    lis     r3, stripeGetPrev__FP26JSULink_15JPABaseParticle_@h
    addi    r0, r3, stripeGetPrev__FP26JSULink_15JPABaseParticle_@l
    fneg    f20, f20
    lwz     r31, 0x4(r6)
    fmr     f30, f16
    mr      r30, r0
branch_0x80333174:
    slwi    r25, r5, 1
    clrlslwi  r5, r5, 17, 1
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f23, 0x93c(r2)
    mr      r24, r31
    lfs     f22, 0x90c(r2)
    lis     r28, 0xcc01
    lfs     f21, 0x910(r2)
    b       branch_0x803334cc

branch_0x803331a0:
    lwz     r26, 0x0(r24)
    lwz     r12, 0x58(r26)
    mr      r3, r26
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r7, R13Off_m0x5ad8(r13)
    mr      r27, r3
    lfs     f4, 0x10(r3)
    mr      r3, r26
    lfs     f3, 0x4(r7)
    lfs     f0, 0xc(r7)
    fneg    f2, f4
    lhz     r4, 0x34(r27)
    addi    r5, sp, 0x1bc
    fadds   f1, f3, f0
    fsubs   f0, f3, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r6, R13Off_m0x5ea8(r13)
    fmuls   f2, f2, f1
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, R13Off_m0x5ea4(r13)
    lfsx    f1, r6, r0
    fmuls   f3, f4, f0
    lfsx    f0, r4, r0
    lwz     r12, 0xa0(r7)
    fmuls   f24, f2, f1
    fmuls   f28, f2, f0
    fmuls   f25, f3, f1
    mtlr    r12
    fmuls   f29, f3, f0
    lfs     f31, 0x2c(r26)
    lfs     f26, 0x30(r26)
    lfs     f27, 0x34(r26)
    lwz     r4, 0x0(r29)
    blrl
    lfs     f1, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x1c4(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x80333270
    stfs    f22, 0x1bc(sp)
    stfs    f21, 0x1c0(sp)
    stfs    f22, 0x1c4(sp)
    b       branch_0x803332b8

branch_0x80333270:
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x8033328c
    stfs    f22, 0x1c4(sp)
    stfs    f22, 0x1c0(sp)
    stfs    f22, 0x1bc(sp)
    b       branch_0x803332b8

branch_0x8033328c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f21, f1
    lfs     f0, 0x1bc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c4(sp)
branch_0x803332b8:
    lfs     f3, 0x1c4(sp)
    lfs     f7, 0x0(r27)
    lfs     f1, 0x8(r27)
    lfs     f6, 0x1c0(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0x1bc(sp)
    fmuls   f2, f1, f6
    lfs     f5, 0x4(r27)
    fmsubs  f18, f1, f4, f0
    fmuls   f1, f5, f4
    fmsubs  f19, f5, f3, f2
    fmuls   f0, f18, f18
    fmsubs  f17, f7, f6, f1
    fmadds  f0, f19, f19, f0
    fmadds  f1, f17, f17, f0
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x80333310
    lfs     f18, 0x90c(r2)
    lfs     f19, 0x910(r2)
    fmr     f17, f18
    b       branch_0x80333340

branch_0x80333310:
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x8033332c
    lfs     f17, 0x90c(r2)
    fmr     f18, f17
    fmr     f19, f18
    b       branch_0x80333340

branch_0x8033332c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f21, f1
    fmuls   f19, f19, f0
    fmuls   f18, f18, f0
    fmuls   f17, f17, f0
branch_0x80333340:
    lfs     f4, 0x1c4(sp)
    lfs     f3, 0x1bc(sp)
    fmuls   f0, f4, f18
    lfs     f5, 0x1c0(sp)
    fmuls   f1, f3, f17
    fmuls   f2, f5, f19
    fmsubs  f0, f5, f17, f0
    fmsubs  f1, f4, f19, f1
    fmsubs  f2, f3, f18, f2
    stfs    f0, 0x0(r27)
    stfs    f1, 0x4(r27)
    stfs    f2, 0x8(r27)
    lfs     f1, 0x0(r27)
    lfs     f0, 0x4(r27)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r27)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x803333ac
    stfs    f22, 0x8(r27)
    stfs    f22, 0x4(r27)
    stfs    f22, 0x0(r27)
    b       branch_0x803333d8

branch_0x803333ac:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f21, f1
    lfs     f0, 0x0(r27)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r27)
    lfs     f0, 0x4(r27)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r27)
    lfs     f0, 0x8(r27)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r27)
branch_0x803333d8:
    stfs    f19, 0x1ec(sp)
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r24, 0x0
    stfs    f18, 0x1f0(sp)
    stfs    f17, 0x1f4(sp)
    lfs     f0, 0x1bc(sp)
    stfs    f0, 0x1f8(sp)
    lfs     f0, 0x1c0(sp)
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x1c4(sp)
    stfs    f0, 0x200(sp)
    lfs     f0, 0x0(r27)
    stfs    f0, 0x204(sp)
    lfs     f0, 0x4(r27)
    stfs    f0, 0x208(sp)
    lfs     f0, 0x8(r27)
    stfs    f0, 0x20c(sp)
    lfs     f0, 0x1f8(sp)
    lfs     f1, 0x1fc(sp)
    fmuls   f11, f22, f0
    lfs     f12, 0x1ec(sp)
    lfs     f2, 0x200(sp)
    fmuls   f8, f22, f1
    lfs     f9, 0x1f0(sp)
    fmadds  f0, f28, f12, f11
    lfs     f13, 0x204(sp)
    fmuls   f5, f22, f2
    lfs     f6, 0x1f4(sp)
    fmadds  f1, f28, f9, f8
    fmadds  f0, f24, f13, f0
    lfs     f10, 0x208(sp)
    fmadds  f2, f28, f6, f5
    lfs     f7, 0x20c(sp)
    fmadds  f3, f24, f10, f1
    fadds   f0, f0, f31
    fmadds  f4, f24, f7, f2
    fmadds  f1, f29, f12, f11
    fmadds  f2, f29, f9, f8
    stfs    f0, -0x8000(r28)
    fadds   f0, f3, f26
    fmadds  f8, f25, f13, f1
    fmadds  f1, f29, f6, f5
    fmadds  f3, f25, f10, f2
    stfs    f0, -0x8000(r28)
    fadds   f0, f4, f27
    fmadds  f4, f25, f7, f1
    fadds   f2, f8, f31
    stfs    f0, -0x8000(r28)
    fadds   f1, f3, f26
    fadds   f0, f4, f27
    stfs    f22, -0x8000(r28)
    stfs    f30, -0x8000(r28)
    stfs    f2, -0x8000(r28)
    stfs    f1, -0x8000(r28)
    stfs    f0, -0x8000(r28)
    stfs    f21, -0x8000(r28)
    stfs    f30, -0x8000(r28)
    blrl
    fadds   f30, f30, f20
    mr      r24, r3
branch_0x803334cc:
    cmplwi  r24, 0x0
    bne+    branch_0x803331a0
    fmr     f26, f16
    clrlwi  r5, r25, 16
    li      r3, 0x98
    li      r4, 0x0
    bl      GXBegin
    lfs     f29, 0x93c(r2)
    mr      r24, r31
    lfs     f30, 0x90c(r2)
    lis     r29, 0xcc01
    lfs     f31, 0x910(r2)
    b       branch_0x80333830

branch_0x80333500:
    lwz     r25, 0x0(r24)
    lwz     r12, 0x58(r25)
    mr      r3, r25
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    mr      r31, r3
    lwz     r5, R13Off_m0x5ad8(r13)
    lhz     r3, 0x34(r3)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, R13Off_m0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f5, 0x14(r31)
    lfsx    f0, r3, r0
    lfs     f21, 0x2c(r25)
    fneg    f1, f5
    lfs     f25, 0x30(r25)
    fneg    f6, f0
    lfs     f24, 0x34(r25)
    lfsx    f3, r4, r0
    lfs     f4, 0x8(r5)
    lfs     f0, 0x10(r5)
    lwz     r3, 0x38(r25)
    lwz     r0, 0x3c(r25)
    fadds   f2, f4, f0
    fsubs   f0, f4, f0
    stw     r3, 0x1bc(sp)
    fmuls   f2, f5, f2
    stw     r0, 0x1c0(sp)
    fmuls   f0, f1, f0
    lwz     r0, 0x40(r25)
    fmuls   f28, f2, f3
    fmuls   f23, f2, f6
    stw     r0, 0x1c4(sp)
    fmuls   f27, f0, f3
    fmuls   f22, f0, f6
    lfs     f1, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    lfs     f2, 0x1c4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x803335d4
    stfs    f30, 0x1bc(sp)
    stfs    f31, 0x1c0(sp)
    stfs    f30, 0x1c4(sp)
    b       branch_0x8033361c

branch_0x803335d4:
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x803335f0
    stfs    f30, 0x1c4(sp)
    stfs    f30, 0x1c0(sp)
    stfs    f30, 0x1bc(sp)
    b       branch_0x8033361c

branch_0x803335f0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x1bc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c4(sp)
branch_0x8033361c:
    lfs     f3, 0x1c4(sp)
    lfs     f7, 0x0(r31)
    lfs     f1, 0x8(r31)
    lfs     f6, 0x1c0(sp)
    fmuls   f0, f7, f3
    lfs     f4, 0x1bc(sp)
    fmuls   f2, f1, f6
    lfs     f5, 0x4(r31)
    fmsubs  f16, f1, f4, f0
    fmuls   f1, f5, f4
    fmsubs  f18, f5, f3, f2
    fmuls   f0, f16, f16
    fmsubs  f17, f7, f6, f1
    fmadds  f0, f18, f18, f0
    fmadds  f1, f17, f17, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80333674
    lfs     f16, 0x90c(r2)
    lfs     f18, 0x910(r2)
    fmr     f17, f16
    b       branch_0x803336a4

branch_0x80333674:
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80333690
    lfs     f17, 0x90c(r2)
    fmr     f16, f17
    fmr     f18, f16
    b       branch_0x803336a4

branch_0x80333690:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f31, f1
    fmuls   f18, f18, f0
    fmuls   f16, f16, f0
    fmuls   f17, f17, f0
branch_0x803336a4:
    lfs     f4, 0x1c4(sp)
    lfs     f3, 0x1bc(sp)
    fmuls   f0, f4, f16
    lfs     f5, 0x1c0(sp)
    fmuls   f1, f3, f17
    fmuls   f2, f5, f18
    fmsubs  f0, f5, f17, f0
    fmsubs  f1, f4, f18, f1
    fmsubs  f2, f3, f16, f2
    stfs    f0, 0x0(r31)
    stfs    f1, 0x4(r31)
    stfs    f2, 0x8(r31)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r31)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f29
    cror    2, 0, 2
    bne-    branch_0x80333710
    stfs    f30, 0x8(r31)
    stfs    f30, 0x4(r31)
    stfs    f30, 0x0(r31)
    b       branch_0x8033373c

branch_0x80333710:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x8033373c:
    stfs    f18, 0x1ec(sp)
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r24, 0x0
    stfs    f16, 0x1f0(sp)
    stfs    f17, 0x1f4(sp)
    lfs     f0, 0x1bc(sp)
    stfs    f0, 0x1f8(sp)
    lfs     f0, 0x1c0(sp)
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x1c4(sp)
    stfs    f0, 0x200(sp)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x204(sp)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x208(sp)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x20c(sp)
    lfs     f0, 0x1f8(sp)
    lfs     f1, 0x1fc(sp)
    fmuls   f11, f30, f0
    lfs     f12, 0x1ec(sp)
    lfs     f2, 0x200(sp)
    fmuls   f8, f30, f1
    lfs     f9, 0x1f0(sp)
    fmadds  f0, f23, f12, f11
    lfs     f13, 0x204(sp)
    fmuls   f5, f30, f2
    lfs     f6, 0x1f4(sp)
    fmadds  f1, f23, f9, f8
    fmadds  f0, f28, f13, f0
    lfs     f10, 0x208(sp)
    fmadds  f2, f23, f6, f5
    lfs     f7, 0x20c(sp)
    fmadds  f3, f28, f10, f1
    fadds   f0, f0, f21
    fmadds  f4, f28, f7, f2
    fmadds  f1, f22, f12, f11
    fmadds  f2, f22, f9, f8
    stfs    f0, -0x8000(r29)
    fadds   f0, f3, f25
    fmadds  f8, f27, f13, f1
    fmadds  f1, f22, f6, f5
    fmadds  f3, f27, f10, f2
    stfs    f0, -0x8000(r29)
    fadds   f0, f4, f24
    fmadds  f4, f27, f7, f1
    fadds   f2, f8, f21
    stfs    f0, -0x8000(r29)
    fadds   f1, f3, f25
    fadds   f0, f4, f24
    stfs    f30, -0x8000(r29)
    stfs    f26, -0x8000(r29)
    stfs    f2, -0x8000(r29)
    stfs    f1, -0x8000(r29)
    stfs    f0, -0x8000(r29)
    stfs    f31, -0x8000(r29)
    stfs    f26, -0x8000(r29)
    blrl
    fadds   f26, f26, f20
    mr      r24, r3
branch_0x80333830:
    cmplwi  r24, 0x0
    bne+    branch_0x80333500
branch_0x80333838:
    lmw     r24, 0x218(sp)
    lwz     r0, 0x2bc(sp)
    lfd     f31, 0x2b0(sp)
    lfd     f30, 0x2a8(sp)
    mtlr    r0
    lfd     f29, 0x2a0(sp)
    lfd     f28, 0x298(sp)
    lfd     f27, 0x290(sp)
    lfd     f26, 0x288(sp)
    lfd     f25, 0x280(sp)
    lfd     f24, 0x278(sp)
    lfd     f23, 0x270(sp)
    lfd     f22, 0x268(sp)
    lfd     f21, 0x260(sp)
    lfd     f20, 0x258(sp)
    lfd     f19, 0x250(sp)
    lfd     f18, 0x248(sp)
    lfd     f17, 0x240(sp)
    lfd     f16, 0x238(sp)
    addi    sp, sp, 0x2b8
    blr


.globl exec__33JPADrawExecRegisterColorEmitterPEFPC14JPADrawContext
exec__33JPADrawExecRegisterColorEmitterPEFPC14JPADrawContext: # 0x8033388c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    lwz     r3, 0x14(r4)
    addi    r4, sp, 0x64
    lwz     r5, R13Off_m0x5ad8(r13)
    lwz     r0, 0xb8(r3)
    stw     r0, 0x6c(sp)
    lwz     r0, 0xbc(r3)
    li      r3, 0x1
    lbz     r7, 0x6c(sp)
    stw     r0, 0x68(sp)
    lbz     r6, 0x98(r5)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6c(sp)
    lbz     r6, 0x99(r5)
    lbz     r7, 0x6d(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6d(sp)
    lbz     r6, 0x9a(r5)
    lbz     r7, 0x6e(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6e(sp)
    lbz     r6, 0x9b(r5)
    lbz     r7, 0x6f(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6f(sp)
    lbz     r6, 0x9c(r5)
    lbz     r7, 0x68(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x68(sp)
    lbz     r6, 0x9d(r5)
    lbz     r7, 0x69(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x69(sp)
    lbz     r5, 0x9e(r5)
    lbz     r6, 0x6a(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x6a(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x64(sp)
    bl      GXSetTevColor
    lwz     r0, 0x68(sp)
    addi    r4, sp, 0x60
    li      r3, 0x2
    stw     r0, 0x60(sp)
    bl      GXSetTevColor
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl exec__32JPADrawExecRegisterColorEmitterPFPC14JPADrawContext
exec__32JPADrawExecRegisterColorEmitterPFPC14JPADrawContext: # 0x80333990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    lwz     r3, 0x14(r4)
    addi    r4, sp, 0x3c
    lwz     r7, R13Off_m0x5ad8(r13)
    lwz     r0, 0xb8(r3)
    li      r3, 0x1
    stw     r0, 0x40(sp)
    lbz     r5, 0x98(r7)
    lbz     r6, 0x40(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x40(sp)
    lbz     r5, 0x99(r7)
    lbz     r6, 0x41(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x41(sp)
    lbz     r5, 0x9a(r7)
    lbz     r6, 0x42(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x42(sp)
    lbz     r5, 0x9b(r7)
    lbz     r6, 0x43(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x43(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0x3c(sp)
    bl      GXSetTevColor
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl exec__32JPADrawExecRegisterColorEmitterEFPC14JPADrawContext
exec__32JPADrawExecRegisterColorEmitterEFPC14JPADrawContext: # 0x80333a30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    lwz     r3, 0x14(r4)
    addi    r4, sp, 0x30
    lwz     r7, R13Off_m0x5ad8(r13)
    lwz     r0, 0xbc(r3)
    li      r3, 0x2
    stw     r0, 0x34(sp)
    lbz     r5, 0x9c(r7)
    lbz     r6, 0x34(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x34(sp)
    lbz     r5, 0x9d(r7)
    lbz     r6, 0x35(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x35(sp)
    lbz     r5, 0x9e(r7)
    lbz     r6, 0x36(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x36(sp)
    lwz     r0, 0x34(sp)
    stw     r0, 0x30(sp)
    bl      GXSetTevColor
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl exec__31JPADrawExecRegisterColorChildPEFPC14JPADrawContext
exec__31JPADrawExecRegisterColorChildPEFPC14JPADrawContext: # 0x80333ab8
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    lwz     r6, 0xc(r4)
    addi    r4, sp, 0x7c
    lwz     r5, R13Off_m0x5ad8(r13)
    lwz     r0, 0x38(r6)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x3c(r6)
    lbz     r7, 0x84(sp)
    stw     r0, 0x80(sp)
    lbz     r6, 0x98(r5)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x84(sp)
    lbz     r6, 0x99(r5)
    lbz     r7, 0x85(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x85(sp)
    lbz     r6, 0x9a(r5)
    lbz     r7, 0x86(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x86(sp)
    lbz     r6, 0x9b(r5)
    lbz     r7, 0x87(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x87(sp)
    lbz     r6, 0x9c(r5)
    lbz     r7, 0x80(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x80(sp)
    lbz     r6, 0x9d(r5)
    lbz     r7, 0x81(sp)
    addi    r0, r6, 0x1
    mullw   r0, r7, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x81(sp)
    lbz     r5, 0x9e(r5)
    lbz     r6, 0x82(sp)
    addi    r0, r5, 0x1
    mullw   r0, r6, r0
    extrwi  r0, r0, 8, 16
    stb     r0, 0x82(sp)
    lwz     r0, 0x84(sp)
    stw     r0, 0x7c(sp)
    bl      GXSetTevColor
    lwz     r0, 0x80(sp)
    addi    r4, sp, 0x78
    li      r3, 0x2
    stw     r0, 0x78(sp)
    bl      GXSetTevColor
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl calc__19JPADrawCalcColorPrmFPC14JPADrawContext
calc__19JPADrawCalcColorPrmFPC14JPADrawContext: # 0x80333bc4
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r5, 0x4(r4)
    lha     r0, 0xac(r3)
    lwz     r5, 0xc(r5)
    slwi    r0, r0, 2
    lwz     r3, 0x14(r4)
    lwzx    r0, r5, r0
    stw     r0, 0xb8(r3)
    blr


.globl calc__19JPADrawCalcColorEnvFPC14JPADrawContext
calc__19JPADrawCalcColorEnvFPC14JPADrawContext: # 0x80333be8
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r5, 0x4(r4)
    lha     r0, 0xac(r3)
    lwz     r5, 0x10(r5)
    slwi    r0, r0, 2
    lwz     r3, 0x14(r4)
    lwzx    r0, r5, r0
    stw     r0, 0xbc(r3)
    blr


.globl calc__30JPADrawCalcColorAnmFrameNormalFPC14JPADrawContext
calc__30JPADrawCalcColorAnmFrameNormalFPC14JPADrawContext: # 0x80333c0c
    stwu    sp, -0x38(sp)
    lwz     r5, 0x0(r4)
    lwz     r3, 0x4(r4)
    lfs     f0, 0x10(r5)
    lha     r4, 0x5e(r3)
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stfd    f0, 0x30(sp)
    cmpw    r0, r4
    lwz     r0, 0x34(sp)
    bge-    branch_0x80333c40
    mr      r4, r0
branch_0x80333c40:
    lwz     r3, R13Off_m0x5ad8(r13)
    extsh   r0, r4
    sth     r0, 0xac(r3)
    addi    sp, sp, 0x38
    blr


.globl calc__30JPADrawCalcColorAnmFrameRepeatFPC14JPADrawContext
calc__30JPADrawCalcColorAnmFrameRepeatFPC14JPADrawContext: # 0x80333c54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    lwz     r3, 0x0(r4)
    lfs     f1, 0x10(r3)
    bl      __cvt_fp2unsigned
    lwz     r5, 0x4(r31)
    lwz     r4, R13Off_m0x5ad8(r13)
    lha     r5, 0x5e(r5)
    addi    r5, r5, 0x1
    divwu   r0, r3, r5
    mullw   r0, r0, r5
    subf    r0, r0, r3
    extsh   r0, r0
    sth     r0, 0xac(r4)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl calc__31JPADrawCalcColorAnmFrameReverseFPC14JPADrawContext
calc__31JPADrawCalcColorAnmFrameReverseFPC14JPADrawContext: # 0x80333cac
    stwu    sp, -0x30(sp)
    lwz     r5, 0x0(r4)
    lwz     r3, 0x4(r4)
    lfs     f0, 0x10(r5)
    lha     r6, 0x5e(r3)
    fctiwz  f0, f0
    lwz     r3, R13Off_m0x5ad8(r13)
    stfd    f0, 0x28(sp)
    lwz     r5, 0x2c(sp)
    addi    sp, sp, 0x30
    divw    r4, r5, r6
    mullw   r0, r4, r6
    clrlwi  r7, r4, 31
    subf    r5, r0, r5
    mullw   r4, r7, r5
    mullw   r0, r7, r6
    slwi    r4, r4, 1
    add     r0, r5, r0
    subf    r0, r4, r0
    sth     r0, 0xac(r3)
    blr


.globl calc__29JPADrawCalcColorAnmFrameMergeFPC14JPADrawContext
calc__29JPADrawCalcColorAnmFrameMergeFPC14JPADrawContext: # 0x80333d00
    lwz     r3, R13Off_m0x5ad8(r13)
    li      r0, 0x0
    sth     r0, 0xac(r3)
    blr


.globl calc__30JPADrawCalcColorAnmFrameRandomFPC14JPADrawContext
calc__30JPADrawCalcColorAnmFrameRandomFPC14JPADrawContext: # 0x80333d10
    lwz     r3, R13Off_m0x5ad8(r13)
    li      r0, 0x0
    sth     r0, 0xac(r3)
    blr


.globl calc__32JPADrawCalcTextureAnmIndexNormalFPC14JPADrawContext
calc__32JPADrawCalcTextureAnmIndexNormalFPC14JPADrawContext: # 0x80333d20
    stwu    sp, -0x40(sp)
    lwz     r3, 0x0(r4)
    lwz     r6, 0x4(r4)
    lfs     f0, 0x10(r3)
    lbz     r3, 0x7e(r6)
    fctiwz  f0, f0
    addi    r5, r3, -0x1
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    stfd    f0, 0x38(sp)
    cmpw    r5, r0
    lwz     r0, 0x3c(sp)
    bge-    branch_0x80333d58
    b       branch_0x80333d5c

branch_0x80333d58:
    mr      r5, r0
branch_0x80333d5c:
    lwz     r3, 0x8(r6)
    clrlwi  r0, r5, 24
    lwz     r5, 0x20(r4)
    lbzx    r0, r3, r0
    lwz     r3, 0x14(r4)
    slwi    r0, r0, 1
    lhzx    r0, r5, r0
    sth     r0, 0xc0(r3)
    addi    sp, sp, 0x40
    blr


.globl calc__32JPADrawCalcTextureAnmIndexRepeatFPC14JPADrawContext
calc__32JPADrawCalcTextureAnmIndexRepeatFPC14JPADrawContext: # 0x80333d84
    stwu    sp, -0x38(sp)
    lwz     r3, 0x0(r4)
    lwz     r5, 0x4(r4)
    lfs     f0, 0x10(r3)
    lbz     r7, 0x7e(r5)
    fctiwz  f0, f0
    lwz     r6, 0x20(r4)
    lwz     r3, 0x14(r4)
    lwz     r5, 0x8(r5)
    stfd    f0, 0x30(sp)
    lwz     r4, 0x34(sp)
    addi    sp, sp, 0x38
    divw    r0, r4, r7
    mullw   r0, r0, r7
    subf    r0, r0, r4
    clrlwi  r0, r0, 24
    lbzx    r0, r5, r0
    slwi    r0, r0, 1
    lhzx    r0, r6, r0
    sth     r0, 0xc0(r3)
    blr


.globl calc__33JPADrawCalcTextureAnmIndexReverseFPC14JPADrawContext
calc__33JPADrawCalcTextureAnmIndexReverseFPC14JPADrawContext: # 0x80333dd8
    stwu    sp, -0x30(sp)
    lwz     r3, 0x0(r4)
    lwz     r5, 0x4(r4)
    lfs     f0, 0x10(r3)
    lbz     r3, 0x7e(r5)
    fctiwz  f0, f0
    lwz     r6, 0x20(r4)
    addi    r8, r3, -0x1
    lwz     r3, 0x14(r4)
    lwz     r5, 0x8(r5)
    stfd    f0, 0x28(sp)
    lwz     r7, 0x2c(sp)
    addi    sp, sp, 0x30
    divw    r4, r7, r8
    mullw   r0, r4, r8
    clrlwi  r9, r4, 31
    subf    r7, r0, r7
    mullw   r4, r9, r7
    mullw   r0, r9, r8
    slwi    r4, r4, 1
    add     r0, r7, r0
    subf    r0, r4, r0
    clrlwi  r0, r0, 24
    lbzx    r0, r5, r0
    slwi    r0, r0, 1
    lhzx    r0, r6, r0
    sth     r0, 0xc0(r3)
    blr


.globl calc__31JPADrawCalcTextureAnmIndexMergeFPC14JPADrawContext
calc__31JPADrawCalcTextureAnmIndexMergeFPC14JPADrawContext: # 0x80333e48
    lwz     r5, 0x4(r4)
    lwz     r3, 0x14(r4)
    lbz     r0, 0x7f(r5)
    sth     r0, 0xc0(r3)
    blr


.globl calc__32JPADrawCalcTextureAnmIndexRandomFPC14JPADrawContext
calc__32JPADrawCalcTextureAnmIndexRandomFPC14JPADrawContext: # 0x80333e5c
    lwz     r5, 0x4(r4)
    lwz     r3, 0x14(r4)
    lbz     r0, 0x7f(r5)
    sth     r0, 0xc0(r3)
    blr


.globl exec__19JPADrawExecCallBackFPC14JPADrawContext
exec__19JPADrawExecCallBackFPC14JPADrawContext: # 0x80333e70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r4)
    bl      drawEmitterCallBack__14JPABaseEmitterFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl exec__19JPADrawExecCallBackFPC14JPADrawContextP15JPABaseParticle
exec__19JPADrawExecCallBackFPC14JPADrawContextP15JPABaseParticle: # 0x80333e94
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x58(r5)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__17JPADrawCalcScaleXFPC14JPADrawContextP15JPABaseParticle
calc__17JPADrawCalcScaleXFPC14JPADrawContextP15JPABaseParticle: # 0x80333ec8
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x8(r31)
    lwz     r4, R13Off_m0x5ad8(r13)
    lfs     f0, 0x38(r5)
    lfs     f3, 0xa8(r4)
    fcmpo   cr0, f3, f0
    bge-    branch_0x80333f24
    lfs     f1, 0x50(r5)
    lfs     f0, 0x48(r5)
    lfs     f2, 0xc(r3)
    fmadds  f0, f3, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r3)
    b       branch_0x80333f58

branch_0x80333f24:
    lfs     f0, 0x3c(r5)
    fcmpo   cr0, f3, f0
    ble-    branch_0x80333f50
    fsubs   f1, f3, f0
    lfs     f2, 0x54(r5)
    lfs     f0, 0x910(r2)
    lfs     f3, 0xc(r3)
    fmadds  f0, f2, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x10(r3)
    b       branch_0x80333f58

branch_0x80333f50:
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r3)
branch_0x80333f58:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl calc__17JPADrawCalcScaleYFPC14JPADrawContextP15JPABaseParticle
calc__17JPADrawCalcScaleYFPC14JPADrawContextP15JPABaseParticle: # 0x80333f6c
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x8(r31)
    lwz     r4, R13Off_m0x5ad8(r13)
    lfs     f0, 0x38(r5)
    lfs     f3, 0xa8(r4)
    fcmpo   cr0, f3, f0
    bge-    branch_0x80333fc8
    lfs     f1, 0x58(r5)
    lfs     f0, 0x40(r5)
    lfs     f2, 0xc(r3)
    fmadds  f0, f3, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x14(r3)
    b       branch_0x80333ffc

branch_0x80333fc8:
    lfs     f0, 0x3c(r5)
    fcmpo   cr0, f3, f0
    ble-    branch_0x80333ff4
    fsubs   f1, f3, f0
    lfs     f2, 0x5c(r5)
    lfs     f0, 0x910(r2)
    lfs     f3, 0xc(r3)
    fmadds  f0, f2, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x14(r3)
    b       branch_0x80333ffc

branch_0x80333ff4:
    lfs     f0, 0xc(r3)
    stfs    f0, 0x14(r3)
branch_0x80333ffc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl calc__24JPADrawCalcScaleXBySpeedFPC14JPADrawContextP15JPABaseParticle
calc__24JPADrawCalcScaleXBySpeedFPC14JPADrawContextP15JPABaseParticle: # 0x80334010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x38(r31)
    lwz     r0, 0x3c(r31)
    lwz     r4, R13Off_m0x5ad8(r13)
    stw     r5, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x40(r31)
    stw     r0, 0x68(sp)
    lwz     r5, 0x8(r30)
    lfs     f3, 0xa8(r4)
    lfs     f0, 0x38(r5)
    fcmpo   cr0, f3, f0
    bge-    branch_0x8033408c
    lfs     f1, 0x50(r5)
    lfs     f0, 0x48(r5)
    lfs     f2, 0xc(r3)
    fmadds  f0, f3, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r3)
    b       branch_0x803340c0

branch_0x8033408c:
    lfs     f0, 0x3c(r5)
    fcmpo   cr0, f3, f0
    ble-    branch_0x803340b8
    fsubs   f1, f3, f0
    lfs     f2, 0x54(r5)
    lfs     f0, 0x910(r2)
    lfs     f3, 0xc(r3)
    fmadds  f0, f2, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x10(r3)
    b       branch_0x803340c0

branch_0x803340b8:
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r3)
branch_0x803340c0:
    lfs     f0, 0x64(sp)
    lfs     f3, 0x68(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0x60(sp)
    fmuls   f3, f3, f3
    lfs     f0, 0x90c(r2)
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x803340f0
    b       branch_0x80334114

branch_0x803340f0:
    frsqrte f3, f4
    lfs     f2, 0x900(r2)
    lfs     f0, 0x940(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80334114:
    lfs     f0, 0x944(r2)
    lfs     f1, 0x10(r3)
    fmuls   f0, f0, f4
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl calc__24JPADrawCalcScaleYBySpeedFPC14JPADrawContextP15JPABaseParticle
calc__24JPADrawCalcScaleYBySpeedFPC14JPADrawContextP15JPABaseParticle: # 0x80334140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x38(r31)
    lwz     r0, 0x3c(r31)
    lwz     r4, R13Off_m0x5ad8(r13)
    stw     r5, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x40(r31)
    stw     r0, 0x68(sp)
    lwz     r5, 0x8(r30)
    lfs     f3, 0xa8(r4)
    lfs     f0, 0x38(r5)
    fcmpo   cr0, f3, f0
    bge-    branch_0x803341bc
    lfs     f1, 0x58(r5)
    lfs     f0, 0x40(r5)
    lfs     f2, 0xc(r3)
    fmadds  f0, f3, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x14(r3)
    b       branch_0x803341f0

branch_0x803341bc:
    lfs     f0, 0x3c(r5)
    fcmpo   cr0, f3, f0
    ble-    branch_0x803341e8
    fsubs   f1, f3, f0
    lfs     f2, 0x5c(r5)
    lfs     f0, 0x910(r2)
    lfs     f3, 0xc(r3)
    fmadds  f0, f2, f1, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x14(r3)
    b       branch_0x803341f0

branch_0x803341e8:
    lfs     f0, 0xc(r3)
    stfs    f0, 0x14(r3)
branch_0x803341f0:
    lfs     f0, 0x64(sp)
    lfs     f3, 0x68(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0x60(sp)
    fmuls   f3, f3, f3
    lfs     f0, 0x90c(r2)
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80334220
    b       branch_0x80334244

branch_0x80334220:
    frsqrte f3, f4
    lfs     f2, 0x900(r2)
    lfs     f0, 0x940(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80334244:
    lfs     f0, 0x944(r2)
    lfs     f1, 0x14(r3)
    fmuls   f0, f0, f4
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl calc__23JPADrawCalcScaleCopyX2YFPC14JPADrawContextP15JPABaseParticle
calc__23JPADrawCalcScaleCopyX2YFPC14JPADrawContextP15JPABaseParticle: # 0x80334270
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__31JPADrawCalcScaleAnmTimingNormalFPC14JPADrawContextP15JPABaseParticle
calc__31JPADrawCalcScaleAnmTimingNormalFPC14JPADrawContextP15JPABaseParticle: # 0x803342a8
    lfs     f0, 0x48(r5)
    lwz     r3, R13Off_m0x5ad8(r13)
    stfs    f0, 0xa8(r3)
    blr


.globl calc__32JPADrawCalcScaleAnmTimingRepeatXFPC14JPADrawContextP15JPABaseParticle
calc__32JPADrawCalcScaleAnmTimingRepeatXFPC14JPADrawContextP15JPABaseParticle: # 0x803342b8
    stwu    sp, -0x40(sp)
    lfs     f0, 0x44(r5)
    lis     r5, 0x4330
    lwz     r3, 0x8(r4)
    fctiwz  f0, f0
    lfd     f2, 0x918(r2)
    lha     r6, 0x76(r3)
    lwz     r3, R13Off_m0x5ad8(r13)
    stfd    f0, 0x38(sp)
    xoris   r0, r6, 0x8000
    lwz     r4, 0x3c(sp)
    stw     r0, 0x2c(sp)
    divw    r0, r4, r6
    stw     r5, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f2
    mullw   r0, r0, r6
    subf    r0, r0, r4
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    stw     r5, 0x30(sp)
    lfd     f1, 0x30(sp)
    addi    sp, sp, 0x40
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0xa8(r3)
    blr


.globl calc__32JPADrawCalcScaleAnmTimingRepeatYFPC14JPADrawContextP15JPABaseParticle
calc__32JPADrawCalcScaleAnmTimingRepeatYFPC14JPADrawContextP15JPABaseParticle: # 0x80334324
    stwu    sp, -0x40(sp)
    lfs     f0, 0x44(r5)
    lis     r5, 0x4330
    lwz     r3, 0x8(r4)
    fctiwz  f0, f0
    lfd     f2, 0x918(r2)
    lha     r6, 0x74(r3)
    lwz     r3, R13Off_m0x5ad8(r13)
    stfd    f0, 0x38(sp)
    xoris   r0, r6, 0x8000
    lwz     r4, 0x3c(sp)
    stw     r0, 0x2c(sp)
    divw    r0, r4, r6
    stw     r5, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f2
    mullw   r0, r0, r6
    subf    r0, r0, r4
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    stw     r5, 0x30(sp)
    lfd     f1, 0x30(sp)
    addi    sp, sp, 0x40
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0xa8(r3)
    blr


.globl calc__33JPADrawCalcScaleAnmTimingReverseXFPC14JPADrawContextP15JPABaseParticle
calc__33JPADrawCalcScaleAnmTimingReverseXFPC14JPADrawContextP15JPABaseParticle: # 0x80334390
    stwu    sp, -0x60(sp)
    lis     r6, 0x4330
    lfs     f0, 0x44(r5)
    lwz     r3, 0x8(r4)
    fctiwz  f1, f0
    lfd     f4, 0x918(r2)
    lha     r8, 0x76(r3)
    lfs     f0, 0x948(r2)
    stfd    f1, 0x48(sp)
    xoris   r0, r8, 0x8000
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r5, 0x4c(sp)
    stfd    f1, 0x58(sp)
    divw    r4, r5, r8
    stw     r0, 0x3c(sp)
    lwz     r7, 0x5c(sp)
    stw     r6, 0x38(sp)
    lfd     f1, 0x38(sp)
    mullw   r0, r4, r8
    fsubs   f1, f1, f4
    subf    r0, r0, r5
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    divw    r7, r7, r8
    stw     r6, 0x40(sp)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f4
    fdivs   f2, f2, f1
    clrlwi  r0, r7, 31
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r6, 0x50(sp)
    lfd     f3, 0x50(sp)
    addi    sp, sp, 0x60
    fsubs   f1, f3, f4
    fmuls   f0, f0, f1
    fnmsubs  f0, f0, f2, f2
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r3)
    blr


.globl calc__33JPADrawCalcScaleAnmTimingReverseYFPC14JPADrawContextP15JPABaseParticle
calc__33JPADrawCalcScaleAnmTimingReverseYFPC14JPADrawContextP15JPABaseParticle: # 0x80334430
    stwu    sp, -0x60(sp)
    lis     r6, 0x4330
    lfs     f0, 0x44(r5)
    lwz     r3, 0x8(r4)
    fctiwz  f1, f0
    lfd     f4, 0x918(r2)
    lha     r8, 0x74(r3)
    lfs     f0, 0x948(r2)
    stfd    f1, 0x48(sp)
    xoris   r0, r8, 0x8000
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r5, 0x4c(sp)
    stfd    f1, 0x58(sp)
    divw    r4, r5, r8
    stw     r0, 0x3c(sp)
    lwz     r7, 0x5c(sp)
    stw     r6, 0x38(sp)
    lfd     f1, 0x38(sp)
    mullw   r0, r4, r8
    fsubs   f1, f1, f4
    subf    r0, r0, r5
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    divw    r7, r7, r8
    stw     r6, 0x40(sp)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f4
    fdivs   f2, f2, f1
    clrlwi  r0, r7, 31
    xoris   r0, r0, 0x8000
    stw     r0, 0x54(sp)
    stw     r6, 0x50(sp)
    lfd     f3, 0x50(sp)
    addi    sp, sp, 0x60
    fsubs   f1, f3, f4
    fmuls   f0, f0, f1
    fnmsubs  f0, f0, f2, f2
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r3)
    blr


.globl calc__19JPADrawCalcColorPrmFPC14JPADrawContextP15JPABaseParticle
calc__19JPADrawCalcColorPrmFPC14JPADrawContextP15JPABaseParticle: # 0x803344d0
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    lwz     r12, 0x58(r5)
    lwz     r6, R13Off_m0x5ad8(r13)
    lwz     r4, 0x4(r4)
    lwz     r12, 0x48(r12)
    lha     r0, 0xac(r6)
    lwz     r30, 0xc(r4)
    mtlr    r12
    slwi    r31, r0, 2
    blrl
    lwzx    r0, r30, r31
    stw     r0, 0x2c(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl calc__19JPADrawCalcColorEnvFPC14JPADrawContextP15JPABaseParticle
calc__19JPADrawCalcColorEnvFPC14JPADrawContextP15JPABaseParticle: # 0x8033452c
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    lwz     r12, 0x58(r5)
    lwz     r6, R13Off_m0x5ad8(r13)
    lwz     r4, 0x4(r4)
    lwz     r12, 0x48(r12)
    lha     r0, 0xac(r6)
    lwz     r30, 0x10(r4)
    mtlr    r12
    slwi    r31, r0, 2
    blrl
    lwzx    r0, r30, r31
    stw     r0, 0x30(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl calc__31JPADrawCalcColorCopyFromEmitterFPC14JPADrawContextP15JPABaseParticle
calc__31JPADrawCalcColorCopyFromEmitterFPC14JPADrawContextP15JPABaseParticle: # 0x80334588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    addi    r3, r30, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r4
    lwz     r12, 0x58(r30)
    lwz     r31, 0x14(r4)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xb8(r31)
    stw     r0, 0x2c(r3)
    mr      r3, r30
    lwz     r12, 0x58(r30)
    lwz     r31, 0x14(r29)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xbc(r31)
    stw     r0, 0x30(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl calc__30JPADrawCalcColorAnmFrameNormalFPC14JPADrawContextP15JPABaseParticle
calc__30JPADrawCalcColorAnmFrameNormalFPC14JPADrawContextP15JPABaseParticle: # 0x80334604
    stwu    sp, -0x38(sp)
    lfs     f0, 0x44(r5)
    lwz     r3, 0x4(r4)
    fctiwz  f0, f0
    lha     r4, 0x5e(r3)
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    cmpw    r0, r4
    bge-    branch_0x80334630
    stfd    f0, 0x30(sp)
    lwz     r4, 0x34(sp)
branch_0x80334630:
    lwz     r3, R13Off_m0x5ad8(r13)
    extsh   r0, r4
    sth     r0, 0xac(r3)
    addi    sp, sp, 0x38
    blr


.globl calc__30JPADrawCalcColorAnmFrameRepeatFPC14JPADrawContextP15JPABaseParticle
calc__30JPADrawCalcColorAnmFrameRepeatFPC14JPADrawContextP15JPABaseParticle: # 0x80334644
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    lfs     f0, 0x44(r5)
    lwz     r4, 0x4(r4)
    fctiwz  f0, f0
    lwz     r12, 0x58(r5)
    lha     r31, 0x5a(r4)
    lwz     r12, 0x48(r12)
    stfd    f0, 0x20(sp)
    lha     r29, 0x5e(r4)
    mtlr    r12
    lwz     r30, 0x24(sp)
    blrl
    lwz     r0, 0x28(r3)
    addi    r4, r29, 0x1
    lwz     r3, R13Off_m0x5ad8(r13)
    and     r0, r0, r31
    add     r5, r30, r0
    divw    r0, r5, r4
    mullw   r0, r0, r4
    subf    r0, r0, r5
    extsh   r0, r0
    sth     r0, 0xac(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calc__31JPADrawCalcColorAnmFrameReverseFPC14JPADrawContextP15JPABaseParticle
calc__31JPADrawCalcColorAnmFrameReverseFPC14JPADrawContextP15JPABaseParticle: # 0x803346d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x44(r31)
    lwz     r4, 0x4(r30)
    fctiwz  f0, f0
    lwz     r3, 0x28(r3)
    lha     r0, 0x5a(r4)
    lha     r6, 0x5e(r4)
    stfd    f0, 0x30(sp)
    and     r4, r3, r0
    lwz     r3, R13Off_m0x5ad8(r13)
    lwz     r0, 0x34(sp)
    add     r5, r4, r0
    divw    r4, r5, r6
    mullw   r0, r4, r6
    clrlwi  r7, r4, 31
    subf    r5, r0, r5
    mullw   r4, r7, r5
    mullw   r0, r7, r6
    slwi    r4, r4, 1
    add     r0, r5, r0
    subf    r0, r4, r0
    sth     r0, 0xac(r3)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl calc__29JPADrawCalcColorAnmFrameMergeFPC14JPADrawContextP15JPABaseParticle
calc__29JPADrawCalcColorAnmFrameMergeFPC14JPADrawContextP15JPABaseParticle: # 0x8033476c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x4(r30)
    lis     r4, 0x4330
    lwz     r6, 0x28(r3)
    lha     r0, 0x5a(r5)
    lha     r3, 0x5e(r5)
    and     r0, r6, r0
    lfd     f3, 0x918(r2)
    addi    r6, r3, 0x1
    lfs     f1, 0x48(r31)
    xoris   r5, r6, 0x8000
    lwz     r3, R13Off_m0x5ad8(r13)
    xoris   r0, r0, 0x8000
    stw     r5, 0x3c(sp)
    stw     r0, 0x34(sp)
    stw     r4, 0x38(sp)
    stw     r4, 0x30(sp)
    lfd     f2, 0x38(sp)
    lfd     f0, 0x30(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r4, 0x2c(sp)
    divw    r0, r4, r6
    mullw   r0, r0, r6
    subf    r0, r0, r4
    extsh   r0, r0
    sth     r0, 0xac(r3)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl calc__30JPADrawCalcColorAnmFrameRandomFPC14JPADrawContextP15JPABaseParticle
calc__30JPADrawCalcColorAnmFrameRandomFPC14JPADrawContextP15JPABaseParticle: # 0x80334828
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    lwz     r12, 0x58(r5)
    lwz     r4, 0x4(r4)
    lwz     r12, 0x48(r12)
    lha     r31, 0x5a(r4)
    lha     r30, 0x5e(r4)
    mtlr    r12
    blrl
    lwz     r0, 0x28(r3)
    addi    r4, r30, 0x1
    lwz     r3, R13Off_m0x5ad8(r13)
    and     r5, r0, r31
    divw    r0, r5, r4
    mullw   r0, r0, r4
    subf    r0, r0, r5
    extsh   r0, r0
    sth     r0, 0xac(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calc__16JPADrawCalcAlphaFPC14JPADrawContextP15JPABaseParticle
calc__16JPADrawCalcAlphaFPC14JPADrawContextP15JPABaseParticle: # 0x80334898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    lwz     r3, 0x8(r4)
    lfs     f2, 0x48(r5)
    lfs     f0, 0x8(r3)
    fcmpo   cr0, f2, f0
    bge-    branch_0x803348cc
    lfs     f1, 0x2c(r3)
    lfs     f0, 0x10(r3)
    fmadds  f31, f2, f1, f0
    b       branch_0x803348f0

branch_0x803348cc:
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f2, f0
    ble-    branch_0x803348ec
    fsubs   f1, f2, f0
    lfs     f2, 0x30(r3)
    lfs     f0, 0x14(r3)
    fmadds  f31, f2, f1, f0
    b       branch_0x803348f0

branch_0x803348ec:
    lfs     f31, 0x14(r3)
branch_0x803348f0:
    mr      r3, r5
    lwz     r12, 0x58(r5)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    stfs    f31, 0x20(r3)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl calc__27JPADrawCalcAlphaFlickNrmSinFPC14JPADrawContextP15JPABaseParticle
calc__27JPADrawCalcAlphaFlickNrmSinFPC14JPADrawContextP15JPABaseParticle: # 0x8033491c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x50(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x44(r31)
    lis     r4, 0x4330
    lwz     r7, 0x8(r30)
    fctiwz  f0, f0
    lfd     f4, 0x918(r2)
    lfs     f1, 0x1c(r7)
    lfs     f6, 0x910(r2)
    stfd    f0, 0x48(sp)
    lfs     f7, 0x24(r3)
    fsubs   f5, f6, f1
    lwz     r5, 0x4c(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    slwi    r5, r5, 14
    lwz     r6, R13Off_m0x5ea8(r13)
    xoris   r5, r5, 0x8000
    lfs     f2, 0x900(r2)
    stw     r5, 0x44(sp)
    lfs     f0, 0x24(r7)
    stw     r4, 0x40(sp)
    lfs     f3, 0x20(r3)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f4
    fmuls   f1, f7, f1
    fmuls   f1, f5, f1
    fctiwz  f1, f1
    stfd    f1, 0x38(sp)
    lwz     r4, 0x3c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    fsubs   f1, f1, f6
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    fmadds  f0, f7, f0, f6
    fmuls   f0, f3, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x90c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x803349f4
    stfs    f0, 0x20(r3)
branch_0x803349f4:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl calc__27JPADrawCalcAlphaFlickAddSinFPC14JPADrawContextP15JPABaseParticle
calc__27JPADrawCalcAlphaFlickAddSinFPC14JPADrawContextP15JPABaseParticle: # 0x80334a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x44(r31)
    lis     r0, 0x4330
    lwz     r5, 0x8(r30)
    fctiwz  f0, f0
    lfd     f4, 0x918(r2)
    lfs     f7, 0x24(r3)
    lfs     f2, 0x20(r5)
    stfd    f0, 0x68(sp)
    lfs     f1, 0x910(r2)
    lwz     r4, 0x6c(sp)
    lfs     f0, 0x1c(r5)
    fsubs   f5, f1, f2
    slwi    r4, r4, 14
    lwz     r6, R13Off_m0x5eac(r13)
    xoris   r4, r4, 0x8000
    stw     r4, 0x64(sp)
    fsubs   f0, f1, f0
    lwz     r7, R13Off_m0x5ea8(r13)
    stw     r0, 0x60(sp)
    lfs     f1, 0x948(r2)
    lfd     f2, 0x60(sp)
    lfs     f3, 0x900(r2)
    fsubs   f6, f2, f4
    lfs     f2, 0x24(r5)
    lfs     f4, 0x20(r3)
    fmuls   f6, f7, f6
    fmuls   f5, f6, f5
    fmuls   f0, f6, f0
    fctiwz  f5, f5
    fctiwz  f0, f0
    stfd    f5, 0x58(sp)
    stfd    f0, 0x50(sp)
    lwz     r4, 0x5c(sp)
    lwz     r0, 0x54(sp)
    clrlwi  r4, r4, 16
    sraw    r4, r4, r6
    clrlwi  r0, r0, 16
    sraw    r0, r0, r6
    slwi    r4, r4, 2
    slwi    r0, r0, 2
    lfsx    f5, r7, r4
    lfsx    f0, r7, r0
    fadds   f0, f0, f5
    fsubs   f0, f0, f1
    fmuls   f0, f3, f0
    fmuls   f0, f2, f0
    fmadds  f0, f7, f0, f1
    fmuls   f0, f3, f0
    fmuls   f0, f4, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x90c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80334b18
    stfs    f0, 0x20(r3)
branch_0x80334b18:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl calc__28JPADrawCalcAlphaFlickMultSinFPC14JPADrawContextP15JPABaseParticle
calc__28JPADrawCalcAlphaFlickMultSinFPC14JPADrawContextP15JPABaseParticle: # 0x80334b30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x44(r31)
    lis     r0, 0x4330
    lwz     r5, 0x8(r30)
    fctiwz  f0, f0
    lfd     f6, 0x918(r2)
    lfs     f7, 0x24(r3)
    lfs     f3, 0x910(r2)
    stfd    f0, 0x68(sp)
    lfs     f1, 0x20(r5)
    lwz     r4, 0x6c(sp)
    lfs     f0, 0x1c(r5)
    fsubs   f1, f3, f1
    slwi    r4, r4, 14
    lwz     r6, R13Off_m0x5eac(r13)
    xoris   r4, r4, 0x8000
    stw     r4, 0x64(sp)
    fsubs   f0, f3, f0
    lfs     f4, 0x24(r5)
    stw     r0, 0x60(sp)
    lfs     f2, 0x900(r2)
    lfd     f5, 0x60(sp)
    fmuls   f4, f2, f4
    lwz     r5, R13Off_m0x5ea8(r13)
    fsubs   f5, f5, f6
    lfs     f2, 0x20(r3)
    fmuls   f6, f7, f4
    fmuls   f4, f7, f5
    fmuls   f1, f4, f1
    fmuls   f0, f4, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x58(sp)
    stfd    f0, 0x50(sp)
    lwz     r4, 0x5c(sp)
    lwz     r0, 0x54(sp)
    clrlwi  r4, r4, 16
    sraw    r4, r4, r6
    clrlwi  r0, r0, 16
    sraw    r0, r0, r6
    slwi    r4, r4, 2
    slwi    r0, r0, 2
    lfsx    f0, r5, r4
    lfsx    f1, r5, r0
    fsubs   f0, f0, f3
    fsubs   f1, f1, f3
    fmadds  f0, f6, f0, f3
    fmadds  f1, f6, f1, f3
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x20(r3)
    lfs     f0, 0x90c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80334c3c
    stfs    f0, 0x20(r3)
branch_0x80334c3c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl calc__32JPADrawCalcTextureAnmIndexNormalFPC14JPADrawContextP15JPABaseParticle
calc__32JPADrawCalcTextureAnmIndexNormalFPC14JPADrawContextP15JPABaseParticle: # 0x80334c54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    lfs     f0, 0x44(r5)
    lwz     r7, 0x4(r4)
    fctiwz  f0, f0
    lbz     r3, 0x7e(r7)
    stfd    f0, 0x38(sp)
    addi    r6, r3, -0x1
    lwz     r0, 0x3c(sp)
    cmpw    r6, r0
    bge-    branch_0x80334c8c
    b       branch_0x80334c94

branch_0x80334c8c:
    stfd    f0, 0x38(sp)
    lwz     r6, 0x3c(sp)
branch_0x80334c94:
    mr      r3, r5
    lwz     r5, 0x8(r7)
    clrlwi  r0, r6, 24
    lwz     r12, 0x58(r3)
    lbzx    r0, r5, r0
    lwz     r12, 0x48(r12)
    lwz     r4, 0x20(r4)
    slwi    r0, r0, 1
    mtlr    r12
    lhzx    r31, r4, r0
    blrl
    sth     r31, 0x3a(r3)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl calc__32JPADrawCalcTextureAnmIndexRepeatFPC14JPADrawContextP15JPABaseParticle
calc__32JPADrawCalcTextureAnmIndexRepeatFPC14JPADrawContextP15JPABaseParticle: # 0x80334cd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r28, r5
    mr      r27, r4
    mr      r3, r28
    lfs     f0, 0x44(r5)
    lwz     r4, 0x4(r4)
    fctiwz  f0, f0
    lwz     r12, 0x58(r28)
    lha     r31, 0x5c(r4)
    lwz     r12, 0x48(r12)
    stfd    f0, 0x28(sp)
    mtlr    r12
    lbz     r29, 0x7e(r4)
    lwz     r30, 0x2c(sp)
    blrl
    lwz     r0, 0x28(r3)
    mr      r3, r28
    lwz     r4, 0x4(r27)
    and     r0, r0, r31
    lwz     r12, 0x58(r28)
    add     r6, r30, r0
    lwz     r4, 0x8(r4)
    divw    r0, r6, r29
    lwz     r12, 0x48(r12)
    lwz     r5, 0x20(r27)
    mtlr    r12
    mullw   r0, r0, r29
    subf    r0, r0, r6
    clrlwi  r0, r0, 24
    lbzx    r0, r4, r0
    slwi    r0, r0, 1
    lhzx    r31, r5, r0
    blrl
    sth     r31, 0x3a(r3)
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl calc__33JPADrawCalcTextureAnmIndexReverseFPC14JPADrawContextP15JPABaseParticle
calc__33JPADrawCalcTextureAnmIndexReverseFPC14JPADrawContextP15JPABaseParticle: # 0x80334d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x44(r31)
    lwz     r4, 0x4(r30)
    fctiwz  f0, f0
    lwz     r5, 0x28(r3)
    lha     r0, 0x5c(r4)
    mr      r3, r31
    lbz     r6, 0x7e(r4)
    stfd    f0, 0x38(sp)
    and     r5, r5, r0
    lwz     r12, 0x58(r31)
    addi    r8, r6, -0x1
    lwz     r0, 0x3c(sp)
    lwz     r12, 0x48(r12)
    add     r7, r5, r0
    lwz     r5, 0x8(r4)
    divw    r4, r7, r8
    lwz     r6, 0x20(r30)
    mtlr    r12
    mullw   r0, r4, r8
    clrlwi  r9, r4, 31
    subf    r7, r0, r7
    mullw   r4, r9, r7
    mullw   r0, r9, r8
    slwi    r4, r4, 1
    add     r0, r7, r0
    subf    r0, r4, r0
    clrlwi  r0, r0, 24
    lbzx    r0, r5, r0
    slwi    r0, r0, 1
    lhzx    r31, r6, r0
    blrl
    sth     r31, 0x3a(r3)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl calc__31JPADrawCalcTextureAnmIndexMergeFPC14JPADrawContextP15JPABaseParticle
calc__31JPADrawCalcTextureAnmIndexMergeFPC14JPADrawContextP15JPABaseParticle: # 0x80334e48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    addi    r29, r5, 0x0
    addi    r3, r29, 0x0
    stw     r28, 0x48(sp)
    mr      r28, r4
    lwz     r12, 0x58(r29)
    lwz     r30, 0x4(r4)
    lwz     r12, 0x48(r12)
    lbz     r31, 0x7e(r30)
    mtlr    r12
    blrl
    lwz     r6, 0x28(r3)
    xoris   r4, r31, 0x8000
    lha     r0, 0x5c(r30)
    mr      r3, r29
    lwz     r5, 0x4(r28)
    and     r0, r6, r0
    lwz     r12, 0x58(r29)
    xoris   r0, r0, 0x8000
    stw     r4, 0x44(sp)
    lis     r4, 0x4330
    lwz     r12, 0x48(r12)
    stw     r0, 0x3c(sp)
    lfd     f3, 0x918(r2)
    mtlr    r12
    stw     r4, 0x40(sp)
    lfs     f1, 0x48(r29)
    stw     r4, 0x38(sp)
    lfd     f2, 0x40(sp)
    lfd     f0, 0x38(sp)
    fsubs   f2, f2, f3
    lwz     r5, 0x8(r5)
    fsubs   f0, f0, f3
    lwz     r6, 0x20(r28)
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r4, 0x34(sp)
    divw    r0, r4, r31
    mullw   r0, r0, r31
    subf    r0, r0, r4
    clrlwi  r0, r0, 24
    lbzx    r0, r5, r0
    slwi    r0, r0, 1
    lhzx    r31, r6, r0
    blrl
    sth     r31, 0x3a(r3)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl calc__32JPADrawCalcTextureAnmIndexRandomFPC14JPADrawContextP15JPABaseParticle
calc__32JPADrawCalcTextureAnmIndexRandomFPC14JPADrawContextP15JPABaseParticle: # 0x80334f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r4
    lwz     r12, 0x58(r31)
    lwz     r12, 0x48(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x4(r30)
    lwz     r5, 0x28(r3)
    mr      r3, r31
    lha     r0, 0x5c(r4)
    lbz     r6, 0x7e(r4)
    and     r7, r5, r0
    lwz     r12, 0x58(r31)
    divw    r0, r7, r6
    lwz     r4, 0x8(r4)
    lwz     r12, 0x48(r12)
    lwz     r5, 0x20(r30)
    mtlr    r12
    mullw   r0, r0, r6
    subf    r0, r0, r7
    clrlwi  r0, r0, 24
    lbzx    r0, r4, r0
    slwi    r0, r0, 1
    lhzx    r31, r5, r0
    blrl
    sth     r31, 0x3a(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl calc__24JPADrawCalcChildAlphaOutFPC14JPADrawContextP15JPABaseParticle
calc__24JPADrawCalcChildAlphaOutFPC14JPADrawContextP15JPABaseParticle: # 0x80334fd0
    mflr    r0
    mr      r3, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    lwz     r12, 0x58(r5)
    lfs     f1, 0x910(r2)
    lfs     f0, 0x48(r5)
    lwz     r12, 0x4c(r12)
    fsubs   f31, f1, f0
    mtlr    r12
    blrl
    stfs    f31, 0x20(r3)
    lwz     r0, 0x24(sp)
    lfd     f31, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calc__24JPADrawCalcChildScaleOutFPC14JPADrawContextP15JPABaseParticle
calc__24JPADrawCalcChildScaleOutFPC14JPADrawContextP15JPABaseParticle: # 0x80335018
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x58(r31)
    lwz     r12, 0x4c(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x910(r2)
    lfs     f0, 0x48(r31)
    lfs     f1, 0xc(r3)
    fsubs   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f0, 0x48(r31)
    lfs     f1, 0x24(r3)
    fsubs   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl unk_80335080
unk_80335080: # 0x80335080
    addi    r3, r3, -0x4
    b       exec__20JPADrawExecSetTexMtxFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335088
unk_80335088: # 0x80335088
    addi    r3, r3, -0x4
    b       __dt__20JPADrawExecSetTexMtxFv


.globl unk_80335090
unk_80335090: # 0x80335090
    addi    r3, r3, -0x4
    b       exec__22JPADrawExecLoadTextureFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335098
unk_80335098: # 0x80335098
    addi    r3, r3, -0x4
    b       __dt__22JPADrawExecLoadTextureFv


.globl unk_803350a0
unk_803350a0: # 0x803350a0
    addi    r3, r3, -0x4
    b       calc__19JPADrawCalcColorPrmFPC14JPADrawContextP15JPABaseParticle


.globl unk_803350a8
unk_803350a8: # 0x803350a8
    addi    r3, r3, -0x4
    b       __dt__19JPADrawCalcColorPrmFv


.globl unk_803350b0
unk_803350b0: # 0x803350b0
    addi    r3, r3, -0x4
    b       calc__19JPADrawCalcColorEnvFPC14JPADrawContextP15JPABaseParticle


.globl unk_803350b8
unk_803350b8: # 0x803350b8
    addi    r3, r3, -0x4
    b       __dt__19JPADrawCalcColorEnvFv


.globl unk_803350c0
unk_803350c0: # 0x803350c0
    addi    r3, r3, -0x4
    b       calc__30JPADrawCalcColorAnmFrameNormalFPC14JPADrawContextP15JPABaseParticle


.globl unk_803350c8
unk_803350c8: # 0x803350c8
    addi    r3, r3, -0x4
    b       __dt__30JPADrawCalcColorAnmFrameNormalFv


.globl unk_803350d0
unk_803350d0: # 0x803350d0
    addi    r3, r3, -0x4
    b       calc__30JPADrawCalcColorAnmFrameRepeatFPC14JPADrawContextP15JPABaseParticle


.globl unk_803350d8
unk_803350d8: # 0x803350d8
    addi    r3, r3, -0x4
    b       __dt__30JPADrawCalcColorAnmFrameRepeatFv


.globl unk_803350e0
unk_803350e0: # 0x803350e0
    addi    r3, r3, -0x4
    b       calc__31JPADrawCalcColorAnmFrameReverseFPC14JPADrawContextP15JPABaseParticle


.globl unk_803350e8
unk_803350e8: # 0x803350e8
    addi    r3, r3, -0x4
    b       __dt__31JPADrawCalcColorAnmFrameReverseFv


.globl unk_803350f0
unk_803350f0: # 0x803350f0
    addi    r3, r3, -0x4
    b       calc__29JPADrawCalcColorAnmFrameMergeFPC14JPADrawContextP15JPABaseParticle


.globl unk_803350f8
unk_803350f8: # 0x803350f8
    addi    r3, r3, -0x4
    b       __dt__29JPADrawCalcColorAnmFrameMergeFv


.globl unk_80335100
unk_80335100: # 0x80335100
    addi    r3, r3, -0x4
    b       calc__30JPADrawCalcColorAnmFrameRandomFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335108
unk_80335108: # 0x80335108
    addi    r3, r3, -0x4
    b       __dt__30JPADrawCalcColorAnmFrameRandomFv


.globl unk_80335110
unk_80335110: # 0x80335110
    addi    r3, r3, -0x4
    b       calc__32JPADrawCalcTextureAnmIndexNormalFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335118
unk_80335118: # 0x80335118
    addi    r3, r3, -0x4
    b       __dt__32JPADrawCalcTextureAnmIndexNormalFv


.globl unk_80335120
unk_80335120: # 0x80335120
    addi    r3, r3, -0x4
    b       calc__32JPADrawCalcTextureAnmIndexRepeatFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335128
unk_80335128: # 0x80335128
    addi    r3, r3, -0x4
    b       __dt__32JPADrawCalcTextureAnmIndexRepeatFv


.globl unk_80335130
unk_80335130: # 0x80335130
    addi    r3, r3, -0x4
    b       calc__33JPADrawCalcTextureAnmIndexReverseFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335138
unk_80335138: # 0x80335138
    addi    r3, r3, -0x4
    b       __dt__33JPADrawCalcTextureAnmIndexReverseFv


.globl unk_80335140
unk_80335140: # 0x80335140
    addi    r3, r3, -0x4
    b       calc__31JPADrawCalcTextureAnmIndexMergeFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335148
unk_80335148: # 0x80335148
    addi    r3, r3, -0x4
    b       __dt__31JPADrawCalcTextureAnmIndexMergeFv


.globl unk_80335150
unk_80335150: # 0x80335150
    addi    r3, r3, -0x4
    b       calc__32JPADrawCalcTextureAnmIndexRandomFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335158
unk_80335158: # 0x80335158
    addi    r3, r3, -0x4
    b       __dt__32JPADrawCalcTextureAnmIndexRandomFv


.globl unk_80335160
unk_80335160: # 0x80335160
    addi    r3, r3, -0x4
    b       exec__19JPADrawExecCallBackFPC14JPADrawContextP15JPABaseParticle


.globl unk_80335168
unk_80335168: # 0x80335168
    addi    r3, r3, -0x4
    b       __dt__19JPADrawExecCallBackFv

