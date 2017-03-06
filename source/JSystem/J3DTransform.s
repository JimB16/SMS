
.globl J3DCalcZValue__FPA4_f3Vec
J3DCalcZValue__FPA4_f3Vec: # 0x802d29f4
    lfs     f3, 0x20(r3)
    lfs     f2, 0x0(r4)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x4(r4)
    fmuls   f2, f3, f2
    lfs     f3, 0x28(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x8(r4)
    lfs     f4, 0x2c(r3)
    fmuls   f1, f3, f1
    fadds   f0, f2, f0
    fadds   f0, f1, f0
    fadds   f1, f4, f0
    blr


.globl J3DPSCalcInverseTranspose__FPA4_fPA3_f
J3DPSCalcInverseTranspose__FPA4_fPA3_f: # 0x802d2a2c
    psq_l   f0, 0x0(3), 1, 0
    psq_l   f1, 0x4(3), 0, 0
    psq_l   f2, 0x10(3), 1, 0
    ps_merge10 f6, f1, f0
    psq_l   f3, 0x14(3), 0, 0
    psq_l   f4, 0x20(3), 1, 0
    ps_merge10 f7, f3, f2
    psq_l   f5, 0x24(3), 0, 0
    ps_mul  f11, f3, f6
    ps_merge10 f8, f5, f4
    ps_mul  f13, f5, f7
    ps_msub f11, f1, f7, f11
    ps_mul  f12, f1, f8
    ps_msub f13, f3, f8, f13
    ps_msub f12, f5, f6, f12
    ps_mul  f10, f3, f4
    ps_mul  f9, f0, f5
    ps_mul  f8, f1, f2
    ps_msub f10, f2, f5, f10
    ps_msub f9, f1, f4, f9
    ps_msub f8, f0, f3, f8
    ps_mul  f7, f0, f13
    ps_sub  f1, f1, f1
    ps_madd f7, f2, f12, f7
    ps_madd f7, f4, f11, f7
    .long 0x10070840 # ps_cmpo0 f0, f7, f1
    bne-    branch_0x802d2aa0
    li      r3, 0x0
    blr

branch_0x802d2aa0:
    fres    f0, f7
    ps_add  f6, f0, f0
    ps_mul  f5, f0, f0
    ps_nmsub f0, f7, f5, f6
    ps_add  f6, f0, f0
    ps_mul  f5, f0, f0
    ps_nmsub f0, f7, f5, f6
    ps_muls0 f13, f13, f0
    ps_muls0 f12, f12, f0
    psq_st  f13, 0x0(4), 0, 0
    ps_muls0 f11, f11, f0
    psq_st  f12, 0xc(4), 0, 0
    ps_muls0 f10, f10, f0
    psq_st  f11, 0x18(4), 0, 0
    ps_muls0 f9, f9, f0
    psq_st  f10, 0x8(4), 1, 0
    ps_muls0 f8, f8, f0
    psq_st  f9, 0x14(4), 1, 0
    li      r3, 0x1
    psq_st  f8, 0x20(4), 1, 0
    blr


.globl J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f
J3DGetTranslateRotateMtx__FRC16J3DTransformInfoPA4_f: # 0x802d2af4
    lhz     r5, 0xc(r3)
    lwz     r7, -0x5eac(r13)
    lhz     r0, 0xe(r3)
    sraw    r6, r5, r7
    lwz     r8, -0x5ea8(r13)
    sraw    r5, r0, r7
    lhz     r0, 0x10(r3)
    slwi    r5, r5, 2
    lwz     r9, -0x5ea4(r13)
    sraw    r0, r0, r7
    lfsx    f5, r8, r5
    slwi    r7, r0, 2
    lfsx    f6, r9, r5
    slwi    r0, r6, 2
    lfsx    f8, r9, r7
    lfsx    f3, r8, r0
    fneg    f2, f5
    lfsx    f4, r9, r0
    fmuls   f0, f8, f6
    lfsx    f7, r8, r7
    fmuls   f1, f6, f3
    stfs    f2, 0x20(r4)
    fmuls   f2, f7, f6
    fmuls   f9, f4, f7
    fmuls   f10, f3, f8
    stfs    f0, 0x0(r4)
    fmuls   f0, f6, f4
    fmuls   f6, f3, f7
    fmuls   f4, f4, f8
    stfs    f2, 0x10(r4)
    fmsubs  f3, f10, f5, f9
    fmsubs  f2, f9, f5, f10
    stfs    f1, 0x24(r4)
    fmadds  f1, f4, f5, f6
    stfs    f0, 0x28(r4)
    fmadds  f0, f6, f5, f4
    stfs    f3, 0x4(r4)
    stfs    f2, 0x18(r4)
    stfs    f1, 0x8(r4)
    stfs    f0, 0x14(r4)
    lfs     f0, 0x14(r3)
    stfs    f0, 0xc(r4)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x1c(r4)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x2c(r4)
    blr


.globl J3DGetTranslateRotateMtx__FsssfffPA4_f
J3DGetTranslateRotateMtx__FsssfffPA4_f: # 0x802d2bb0
    lwz     r7, -0x5eac(r13)
    clrlwi  r3, r3, 16
    clrlwi  r0, r4, 16
    lwz     r4, -0x5ea8(r13)
    sraw    r3, r3, r7
    sraw    r0, r0, r7
    lwz     r9, -0x5ea4(r13)
    slwi    r8, r0, 2
    clrlwi  r0, r5, 16
    lfsx    f8, r4, r8
    sraw    r0, r0, r7
    lfsx    f9, r9, r8
    slwi    r5, r0, 2
    fneg    f5, f8
    slwi    r0, r3, 2
    lfsx    f11, r9, r5
    lfsx    f6, r4, r0
    lfsx    f7, r9, r0
    lfsx    f10, r4, r5
    fmuls   f0, f11, f9
    fmuls   f4, f9, f6
    stfs    f5, 0x20(r6)
    fmuls   f5, f10, f9
    fmuls   f12, f7, f10
    fmuls   f13, f6, f11
    stfs    f0, 0x0(r6)
    fmuls   f0, f9, f7
    fmuls   f9, f6, f10
    fmuls   f7, f7, f11
    stfs    f5, 0x10(r6)
    fmsubs  f6, f13, f8, f12
    fmsubs  f5, f12, f8, f13
    stfs    f4, 0x24(r6)
    fmadds  f4, f7, f8, f9
    stfs    f0, 0x28(r6)
    fmadds  f0, f9, f8, f7
    stfs    f6, 0x4(r6)
    stfs    f5, 0x18(r6)
    stfs    f4, 0x8(r6)
    stfs    f0, 0x14(r6)
    stfs    f1, 0xc(r6)
    stfs    f2, 0x1c(r6)
    stfs    f3, 0x2c(r6)
    blr


.globl J3DGetTextureMtx__FRC17J3DTextureSRTInfo3VecPA4_f
J3DGetTextureMtx__FRC17J3DTextureSRTInfo3VecPA4_f: # 0x802d2c60
    lhz     r7, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f0, 0x0(r3)
    slwi    r0, r0, 2
    lwz     r7, -0x5ea8(r13)
    lfsx    f5, r6, r0
    lfsx    f4, r7, r0
    fmuls   f0, f0, f5
    stfs    f0, 0x0(r5)
    lfs     f0, 0x0(r3)
    fneg    f0, f0
    fmuls   f0, f0, f4
    stfs    f0, 0x4(r5)
    lfs     f0, 0x0(r3)
    lfs     f1, 0x4(r4)
    fneg    f2, f0
    lfs     f6, 0x0(r4)
    fmuls   f0, f0, f4
    lfs     f3, 0xc(r3)
    fmuls   f2, f2, f5
    fmuls   f0, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f6, f0
    fadds   f0, f3, f0
    stfs    f0, 0x8(r5)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f4
    stfs    f0, 0x10(r5)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f5
    stfs    f0, 0x14(r5)
    lfs     f0, 0x4(r3)
    lfs     f6, 0x4(r4)
    fneg    f1, f0
    lfs     f2, 0x0(r4)
    fmuls   f0, f0, f5
    lfs     f3, 0x10(r3)
    fmuls   f1, f1, f4
    fmuls   f0, f6, f0
    fmsubs  f0, f2, f1, f0
    fadds   f0, f6, f0
    fadds   f0, f3, f0
    stfs    f0, 0x18(r5)
    lfs     f0, 0x200(rtoc)
    stfs    f0, 0x2c(r5)
    stfs    f0, 0x24(r5)
    stfs    f0, 0x20(r5)
    stfs    f0, 0x1c(r5)
    stfs    f0, 0xc(r5)
    lfs     f0, 0x204(rtoc)
    stfs    f0, 0x28(r5)
    blr


.globl J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f: # 0x802d2d38
    lhz     r7, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r7, r0
    lfs     f0, 0x0(r3)
    slwi    r0, r0, 2
    lwz     r7, -0x5ea8(r13)
    lfsx    f5, r6, r0
    lfsx    f4, r7, r0
    fmuls   f0, f0, f5
    stfs    f0, 0x0(r5)
    lfs     f0, 0x0(r3)
    fneg    f0, f0
    fmuls   f0, f0, f4
    stfs    f0, 0x4(r5)
    lfs     f0, 0x0(r3)
    lfs     f1, 0x4(r4)
    fneg    f2, f0
    lfs     f6, 0x0(r4)
    fmuls   f0, f0, f4
    lfs     f3, 0xc(r3)
    fmuls   f2, f2, f5
    fmuls   f0, f1, f0
    fmadds  f0, f6, f2, f0
    fadds   f0, f6, f0
    fadds   f0, f3, f0
    stfs    f0, 0xc(r5)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f4
    stfs    f0, 0x10(r5)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f5
    stfs    f0, 0x14(r5)
    lfs     f0, 0x4(r3)
    lfs     f6, 0x4(r4)
    fneg    f1, f0
    lfs     f2, 0x0(r4)
    fmuls   f0, f0, f5
    lfs     f3, 0x10(r3)
    fmuls   f1, f1, f4
    fmuls   f0, f6, f0
    fmsubs  f0, f2, f1, f0
    fadds   f0, f6, f0
    fadds   f0, f3, f0
    stfs    f0, 0x1c(r5)
    lfs     f0, 0x200(rtoc)
    stfs    f0, 0x2c(r5)
    stfs    f0, 0x24(r5)
    stfs    f0, 0x20(r5)
    stfs    f0, 0x18(r5)
    stfs    f0, 0x8(r5)
    lfs     f0, 0x204(rtoc)
    stfs    f0, 0x28(r5)
    blr


.globl J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f: # 0x802d2e10
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x0(r3)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x4(r3)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f4, 0x208(rtoc)
    lfs     f0, 0x10(r3)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    fsubs   f1, f0, f4
    lfs     f0, 0x4(r3)
    sraw    r0, r5, r0
    lfs     f2, 0xc(r3)
    lwz     r6, -0x5ea8(r13)
    slwi    r0, r0, 2
    lwz     r5, -0x5ea4(r13)
    fadds   f0, f1, f0
    lfsx    f3, r6, r0
    fsubs   f2, f2, f4
    lfsx    f1, r5, r0
    fmuls   f0, f0, f3
    fmsubs  f0, f2, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x8(r4)
    lfs     f3, 0x200(rtoc)
    stfs    f3, 0xc(r4)
    lfs     f0, 0x0(r3)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    fneg    f1, f0
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r4)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x4(r3)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r4)
    lfs     f0, 0x10(r3)
    lfs     f2, 0xc(r3)
    fsubs   f1, f0, f4
    lfs     f0, 0x4(r3)
    fsubs   f2, f2, f4
    lhz     r3, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    sraw    r0, r3, r0
    lwz     r5, -0x5ea4(r13)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    fadds   f0, f1, f0
    lfsx    f5, r5, r0
    fneg    f2, f2
    lfsx    f1, r3, r0
    fmuls   f0, f0, f5
    fmsubs  f0, f2, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x18(r4)
    stfs    f3, 0x1c(r4)
    stfs    f3, 0x20(r4)
    stfs    f3, 0x24(r4)
    lfs     f0, 0x204(rtoc)
    stfs    f0, 0x28(r4)
    stfs    f3, 0x2c(r4)
    blr


.globl J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f: # 0x802d2f60
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x0(r3)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x4(r3)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r4)
    lfs     f4, 0x200(rtoc)
    stfs    f4, 0x8(r4)
    lfs     f3, 0x208(rtoc)
    lfs     f0, 0x10(r3)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    fsubs   f1, f0, f3
    lfs     f0, 0x4(r3)
    sraw    r0, r5, r0
    lfs     f2, 0xc(r3)
    lwz     r6, -0x5ea8(r13)
    slwi    r0, r0, 2
    lwz     r5, -0x5ea4(r13)
    fadds   f0, f1, f0
    lfsx    f5, r6, r0
    fsubs   f2, f2, f3
    lfsx    f1, r5, r0
    fmuls   f0, f0, f5
    fmsubs  f0, f2, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0xc(r4)
    lfs     f0, 0x0(r3)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    fneg    f1, f0
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r4)
    lhz     r5, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x4(r3)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r4)
    stfs    f4, 0x18(r4)
    lfs     f0, 0x10(r3)
    lfs     f2, 0xc(r3)
    fsubs   f1, f0, f3
    lfs     f0, 0x4(r3)
    fsubs   f2, f2, f3
    lhz     r3, 0x8(r3)
    lwz     r0, -0x5eac(r13)
    sraw    r0, r3, r0
    lwz     r5, -0x5ea4(r13)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    fadds   f0, f1, f0
    lfsx    f5, r5, r0
    fneg    f2, f2
    lfsx    f1, r3, r0
    fmuls   f0, f0, f5
    fmsubs  f0, f2, f1, f0
    fadds   f0, f3, f0
    stfs    f0, 0x1c(r4)
    stfs    f4, 0x20(r4)
    stfs    f4, 0x24(r4)
    lfs     f0, 0x204(rtoc)
    stfs    f0, 0x28(r4)
    stfs    f4, 0x2c(r4)
    blr


.globl J3DScaleNrmMtx33__FPA3_fRC3Vec
J3DScaleNrmMtx33__FPA3_fRC3Vec: # 0x802d30b0
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f6, 0x0(4), 0, 0
    lfs     f1, 0x8(r3)
    lfs     f7, 0x8(r4)
    ps_mul  f0, f0, f6
    psq_l   f2, 0xc(3), 0, 0
    fmuls   f1, f1, f7
    lfs     f3, 0x14(r3)
    ps_mul  f2, f2, f6
    psq_l   f4, 0x18(3), 0, 0
    fmuls   f3, f3, f7
    lfs     f5, 0x20(r3)
    ps_mul  f4, f4, f6
    psq_st  f0, 0x0(3), 0, 0
    fmuls   f5, f5, f7
    stfs    f1, 0x8(r3)
    psq_st  f2, 0xc(3), 0, 0
    stfs    f3, 0x14(r3)
    psq_st  f4, 0x18(3), 0, 0
    stfs    f5, 0x20(r3)
    blr


.globl J3DMtxProjConcat__FPA4_fPA4_fPA4_f
J3DMtxProjConcat__FPA4_fPA4_fPA4_f: # 0x802d3104
    psq_l   f2, 0x0(3), 0, 0
    psq_l   f3, 0x8(3), 0, 0
    ps_merge00 f6, f2, f2
    ps_merge11 f7, f2, f2
    ps_merge00 f8, f3, f3
    ps_merge11 f9, f3, f3
    psq_l   f10, 0x0(4), 0, 0
    psq_l   f11, 0x10(4), 0, 0
    psq_l   f12, 0x20(4), 0, 0
    psq_l   f13, 0x30(4), 0, 0
    ps_mul  f0, f6, f10
    ps_madd f0, f7, f11, f0
    ps_madd f0, f8, f12, f0
    ps_madd f0, f9, f13, f0
    psq_st  f0, 0x0(5), 0, 0
    psq_l   f10, 0x8(4), 0, 0
    psq_l   f11, 0x18(4), 0, 0
    psq_l   f12, 0x28(4), 0, 0
    psq_l   f13, 0x38(4), 0, 0
    ps_mul  f0, f6, f10
    ps_madd f0, f7, f11, f0
    ps_madd f0, f8, f12, f0
    ps_madd f0, f9, f13, f0
    psq_st  f0, 0x8(5), 0, 0
    psq_l   f2, 0x10(3), 0, 0
    psq_l   f3, 0x18(3), 0, 0
    ps_merge00 f6, f2, f2
    ps_merge11 f7, f2, f2
    ps_merge00 f8, f3, f3
    ps_merge11 f9, f3, f3
    psq_l   f10, 0x0(4), 0, 0
    psq_l   f11, 0x10(4), 0, 0
    psq_l   f12, 0x20(4), 0, 0
    psq_l   f13, 0x30(4), 0, 0
    ps_mul  f0, f6, f10
    ps_madd f0, f7, f11, f0
    ps_madd f0, f8, f12, f0
    ps_madd f0, f9, f13, f0
    psq_st  f0, 0x10(5), 0, 0
    psq_l   f10, 0x8(4), 0, 0
    psq_l   f11, 0x18(4), 0, 0
    psq_l   f12, 0x28(4), 0, 0
    psq_l   f13, 0x38(4), 0, 0
    ps_mul  f0, f6, f10
    ps_madd f0, f7, f11, f0
    ps_madd f0, f8, f12, f0
    ps_madd f0, f9, f13, f0
    psq_st  f0, 0x18(5), 0, 0
    psq_l   f2, 0x20(3), 0, 0
    psq_l   f3, 0x28(3), 0, 0
    ps_merge00 f6, f2, f2
    ps_merge11 f7, f2, f2
    ps_merge00 f8, f3, f3
    ps_merge11 f9, f3, f3
    psq_l   f10, 0x0(4), 0, 0
    psq_l   f11, 0x10(4), 0, 0
    psq_l   f12, 0x20(4), 0, 0
    psq_l   f13, 0x30(4), 0, 0
    ps_mul  f0, f6, f10
    ps_madd f0, f7, f11, f0
    ps_madd f0, f8, f12, f0
    ps_madd f0, f9, f13, f0
    psq_st  f0, 0x20(5), 0, 0
    psq_l   f10, 0x8(4), 0, 0
    psq_l   f11, 0x18(4), 0, 0
    psq_l   f12, 0x28(4), 0, 0
    psq_l   f13, 0x38(4), 0, 0
    ps_mul  f0, f6, f10
    ps_madd f0, f7, f11, f0
    ps_madd f0, f8, f12, f0
    ps_madd f0, f9, f13, f0
    psq_st  f0, 0x28(5), 0, 0
    blr


.globl J3DPSMtx33Copy__FPA3_fPA3_f
J3DPSMtx33Copy__FPA3_fPA3_f: # 0x802d3228
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f1, 0x8(3), 0, 0
    psq_l   f2, 0x10(3), 0, 0
    psq_l   f3, 0x18(3), 0, 0
    lfs     f4, 0x20(r3)
    psq_st  f0, 0x0(4), 0, 0
    psq_st  f1, 0x8(4), 0, 0
    psq_st  f2, 0x10(4), 0, 0
    psq_st  f3, 0x18(4), 0, 0
    stfs    f4, 0x20(r4)
    blr


.globl J3DPSMtx33CopyFrom34__FPA4_fPA3_f
J3DPSMtx33CopyFrom34__FPA4_fPA3_f: # 0x802d3254
    psq_l   f0, 0x0(3), 0, 0
    psq_st  f0, 0x0(4), 0, 0
    lfs     f1, 0x8(r3)
    stfs    f1, 0x8(r4)
    psq_l   f2, 0x10(3), 0, 0
    psq_st  f2, 0xc(4), 0, 0
    lfs     f3, 0x18(r3)
    stfs    f3, 0x14(r4)
    psq_l   f4, 0x20(3), 0, 0
    psq_st  f4, 0x18(4), 0, 0
    lfs     f5, 0x28(r3)
    stfs    f5, 0x20(r4)
    blr


.globl J3DPSMtxArrayCopy__FPA4_fPA4_fUl
J3DPSMtxArrayCopy__FPA4_fPA4_fUl: # 0x802d3288
    subi    r3, r3, 0x8
    subi    r4, r4, 0x8
    mtctr   r5
branch_0x802d3294:
    psq_l   f0, 0x8(3), 0, 0
    psq_st  f0, 0x8(4), 0, 0
    psq_l   f1, 0x10(3), 0, 0
    psq_st  f1, 0x10(4), 0, 0
    psq_l   f2, 0x18(3), 0, 0
    psq_st  f2, 0x18(4), 0, 0
    psq_l   f3, 0x20(3), 0, 0
    psq_st  f3, 0x20(4), 0, 0
    psq_l   f4, 0x28(3), 0, 0
    psq_st  f4, 0x28(4), 0, 0
    psq_lu  f5, 0x30(3), 0, 0
    psq_stu f5, 0x30(4), 0, 0
    bdnz+      branch_0x802d3294
    blr


.globl J3DMTXConcatArrayIndexedSrc__FPA4_CfPA3_A4_CfPCUsPA3_A4_fUl
J3DMTXConcatArrayIndexedSrc__FPA4_CfPA3_A4_CfPCUsPA3_A4_fUl: # 0x802d32cc
    subi    r8, r13, 0x75a8
    lhz     r0, 0x0(r5)
    psq_l   f0, 0x0(3), 0, 0
    mtctr   r7
    psq_l   f2, 0x10(3), 0, 0
    mulli   r0, r0, 0x30
    psq_l   f4, 0x20(3), 0, 0
    psq_lx  f6, f4, f0, 0, 0
    add     r7, r4, r0
    ps_muls0 f9, f6, f0
    psq_l   f7, 0x10(7), 0, 0
    ps_muls0 f10, f6, f2
    ps_muls0 f11, f6, f4
    psq_l   f8, 0x20(7), 0, 0
    ps_madds1 f9, f7, f0, f9
    psq_l   f1, 0x8(3), 0, 0
    ps_madds1 f10, f7, f2, f10
    psq_l   f3, 0x18(3), 0, 0
    ps_madds1 f11, f7, f4, f11
    psq_l   f5, 0x28(3), 0, 0
    ps_madds0 f9, f8, f1, f9
    psq_l   f6, 0x8(7), 0, 0
    ps_madds0 f10, f8, f3, f10
    ps_madds0 f11, f8, f5, f11
    psq_l   f7, 0x18(7), 0, 0
    psq_st  f9, 0x0(6), 0, 0
    ps_muls0 f8, f6, f0
    ps_muls0 f9, f6, f2
    ps_muls0 f12, f6, f4
    psq_l   f6, 0x28(7), 0, 0
    psq_st  f10, 0x10(6), 0, 0
    ps_madds1 f8, f7, f0, f8
    ps_madds1 f9, f7, f2, f9
    ps_madds1 f12, f7, f4, f12
    psq_l   f13, 0x0(8), 0, 0
    psq_st  f11, 0x20(6), 0, 0
    b       branch_0x802d3360

branch_0x802d3360:
    b       branch_0x802d3364

branch_0x802d3364:
    ps_madds0 f8, f6, f1, f8
    ps_madds0 f9, f6, f3, f9
    ps_madds0 f12, f6, f5, f12
    ps_madd f8, f13, f1, f8
    ps_madd f9, f13, f3, f9
    ps_madd f12, f13, f5, f12
    psq_st  f8, 0x8(6), 0, 0
    psq_st  f9, 0x18(6), 0, 0
    psq_st  f12, 0x28(6), 0, 0
    bdz-      branch_0x802d3400
    lhzu    r0, 0x2(r5)
    addi    r6, r6, 0x30
    mulli   r0, r0, 0x30
    psq_lx  f6, f4, f0, 0, 0
    add     r7, r4, r0
    ps_muls0 f9, f6, f0
    psq_l   f7, 0x10(7), 0, 0
    ps_muls0 f10, f6, f2
    ps_muls0 f11, f6, f4
    psq_l   f8, 0x20(7), 0, 0
    ps_madds1 f9, f7, f0, f9
    ps_madds1 f10, f7, f2, f10
    ps_madds1 f11, f7, f4, f11
    psq_l   f6, 0x8(7), 0, 0
    ps_madds0 f9, f8, f1, f9
    ps_madds0 f10, f8, f3, f10
    ps_madds0 f11, f8, f5, f11
    psq_l   f7, 0x18(7), 0, 0
    psq_st  f9, 0x0(6), 0, 0
    ps_muls0 f8, f6, f0
    ps_muls0 f9, f6, f2
    ps_muls0 f12, f6, f4
    psq_l   f6, 0x28(7), 0, 0
    psq_st  f10, 0x10(6), 0, 0
    ps_madds1 f8, f7, f0, f8
    ps_madds1 f9, f7, f2, f9
    ps_madds1 f12, f7, f4, f12
    psq_st  f11, 0x20(6), 0, 0
    b       branch_0x802d3364

branch_0x802d3400:
    blr


.globl J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl: # 0x802d3404
    stwu    sp, -0x40(sp)
    stfd    f14, 0x8(sp)
    lis     r7, 0x8041
    stfd    f15, 0x10(sp)
    subi    r7, r7, 0x33e8
    stfd    f31, 0x28(sp)
    subi    r4, r4, 0x8
    subi    r5, r5, 0x8
    mtctr   r6
branch_0x802d3428:
    psq_l   f0, 0x0(3), 0, 0
    psq_l   f6, 0x8(4), 0, 0
    psq_l   f7, 0x10(4), 0, 0
    psq_l   f8, 0x18(4), 0, 0
    ps_muls0 f12, f6, f0
    psq_l   f2, 0x10(3), 0, 0
    ps_muls0 f13, f7, f0
    psq_l   f31, 0x0(7), 0, 0
    ps_muls0 f14, f6, f2
    psq_l   f9, 0x20(4), 0, 0
    ps_muls0 f15, f7, f2
    psq_l   f1, 0x8(3), 0, 0
    ps_madds1 f12, f8, f0, f12
    psq_l   f3, 0x18(3), 0, 0
    ps_madds1 f14, f8, f2, f14
    psq_l   f10, 0x28(4), 0, 0
    ps_madds1 f13, f9, f0, f13
    psq_lu  f11, 0x30(4), 0, 0
    ps_madds1 f15, f9, f2, f15
    psq_l   f4, 0x20(3), 0, 0
    psq_l   f5, 0x28(3), 0, 0
    ps_madds0 f12, f10, f1, f12
    ps_madds0 f13, f11, f1, f13
    ps_madds0 f14, f10, f3, f14
    ps_madds0 f15, f11, f3, f15
    psq_st  f12, 0x8(5), 0, 0
    ps_muls0 f2, f6, f4
    ps_madds1 f13, f31, f1, f13
    ps_muls0 f0, f7, f4
    psq_st  f14, 0x18(5), 0, 0
    ps_madds1 f15, f31, f3, f15
    psq_st  f13, 0x10(5), 0, 0
    ps_madds1 f2, f8, f4, f2
    ps_madds1 f0, f9, f4, f0
    ps_madds0 f2, f10, f5, f2
    psq_st  f15, 0x20(5), 0, 0
    ps_madds0 f0, f11, f5, f0
    psq_st  f2, 0x28(5), 0, 0
    ps_madds1 f0, f31, f5, f0
    psq_stu f0, 0x30(5), 0, 0
    bdnz+      branch_0x802d3428
    lfd     f14, 0x8(sp)
    lfd     f15, 0x10(sp)
    lfd     f31, 0x28(sp)
    addi    sp, sp, 0x40
    blr

