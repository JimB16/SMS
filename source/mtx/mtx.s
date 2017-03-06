
.globl PSMTXIdentity
PSMTXIdentity: # 0x80349990
    lfs     f0, 0xaf4(rtoc)
    lfs     f1, 0xaf0(rtoc)
    psq_st  f0, 0x8(3), 0, 0
    ps_merge01 f2, f0, f1
    psq_st  f0, 0x18(3), 0, 0
    ps_merge10 f1, f1, f0
    psq_st  f0, 0x20(3), 0, 0
    psq_st  f2, 0x10(3), 0, 0
    psq_st  f1, 0x0(3), 0, 0
    psq_st  f1, 0x28(3), 0, 0
    blr


.globl PSMTXCopy
PSMTXCopy: # 0x803499bc
    psq_l   f0, 0x0(3), 0, 0
    psq_st  f0, 0x0(4), 0, 0
    psq_l   f1, 0x8(3), 0, 0
    psq_st  f1, 0x8(4), 0, 0
    psq_l   f2, 0x10(3), 0, 0
    psq_st  f2, 0x10(4), 0, 0
    psq_l   f3, 0x18(3), 0, 0
    psq_st  f3, 0x18(4), 0, 0
    psq_l   f4, 0x20(3), 0, 0
    psq_st  f4, 0x20(4), 0, 0
    psq_l   f5, 0x28(3), 0, 0
    psq_st  f5, 0x28(4), 0, 0
    blr


.globl PSMTXConcat
PSMTXConcat: # 0x803499f0
    stwu    sp, -0x40(sp)
    psq_l   f0, 0x0(3), 0, 0
    stfd    f14, 0x8(sp)
    psq_l   f6, 0x0(4), 0, 0
    lis     r6, 0x8041
    psq_l   f7, 0x8(4), 0, 0
    stfd    f15, 0x10(sp)
    subi    r6, r6, 0x31a0
    stfd    f31, 0x28(sp)
    psq_l   f8, 0x10(4), 0, 0
    ps_muls0 f12, f6, f0
    psq_l   f2, 0x10(3), 0, 0
    ps_muls0 f13, f7, f0
    psq_l   f31, 0x0(6), 0, 0
    ps_muls0 f14, f6, f2
    psq_l   f9, 0x18(4), 0, 0
    ps_muls0 f15, f7, f2
    psq_l   f1, 0x8(3), 0, 0
    ps_madds1 f12, f8, f0, f12
    psq_l   f3, 0x18(3), 0, 0
    ps_madds1 f14, f8, f2, f14
    psq_l   f10, 0x20(4), 0, 0
    ps_madds1 f13, f9, f0, f13
    psq_l   f11, 0x28(4), 0, 0
    ps_madds1 f15, f9, f2, f15
    psq_l   f4, 0x20(3), 0, 0
    psq_l   f5, 0x28(3), 0, 0
    ps_madds0 f12, f10, f1, f12
    ps_madds0 f13, f11, f1, f13
    ps_madds0 f14, f10, f3, f14
    ps_madds0 f15, f11, f3, f15
    psq_st  f12, 0x0(5), 0, 0
    ps_muls0 f2, f6, f4
    ps_madds1 f13, f31, f1, f13
    ps_muls0 f0, f7, f4
    psq_st  f14, 0x10(5), 0, 0
    ps_madds1 f15, f31, f3, f15
    psq_st  f13, 0x8(5), 0, 0
    ps_madds1 f2, f8, f4, f2
    ps_madds1 f0, f9, f4, f0
    ps_madds0 f2, f10, f5, f2
    lfd     f14, 0x8(sp)
    psq_st  f15, 0x18(5), 0, 0
    ps_madds0 f0, f11, f5, f0
    psq_st  f2, 0x20(5), 0, 0
    ps_madds1 f0, f31, f5, f0
    lfd     f15, 0x10(sp)
    psq_st  f0, 0x28(5), 0, 0
    lfd     f31, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl PSMTXInverse
PSMTXInverse: # 0x80349abc
    psq_l   f0, 0x0(3), 1, 0
    psq_l   f1, 0x4(3), 0, 0
    psq_l   f2, 0x10(3), 1, 0
    ps_merge10 f6, f1, f0
    psq_l   f3, 0x14(3), 0, 0
    psq_l   f4, 0x20(3), 1, 0
    ps_merge10 f7, f3, f2
    psq_l   f5, 0x24(3), 0, 0
    ps_mul  f11, f3, f6
    ps_mul  f13, f5, f7
    ps_merge10 f8, f5, f4
    ps_msub f11, f1, f7, f11
    ps_mul  f12, f1, f8
    ps_msub f13, f3, f8, f13
    ps_mul  f10, f3, f4
    ps_msub f12, f5, f6, f12
    ps_mul  f9, f0, f5
    ps_mul  f8, f1, f2
    ps_sub  f6, f6, f6
    ps_msub f10, f2, f5, f10
    ps_mul  f7, f0, f13
    ps_msub f9, f1, f4, f9
    ps_madd f7, f2, f12, f7
    ps_msub f8, f0, f3, f8
    ps_madd f7, f4, f11, f7
    .long 0x10073040 # ps_cmpo0 f0, f7, f6
    bne-    branch_0x80349b30
    li      r3, 0x0
    blr

branch_0x80349b30:
    fres    f0, f7
    ps_add  f6, f0, f0
    ps_mul  f5, f0, f0
    ps_nmsub f0, f7, f5, f6
    lfs     f1, 0xc(r3)
    ps_muls0 f13, f13, f0
    lfs     f2, 0x1c(r3)
    ps_muls0 f12, f12, f0
    lfs     f3, 0x2c(r3)
    ps_muls0 f11, f11, f0
    ps_merge00 f5, f13, f12
    ps_muls0 f10, f10, f0
    ps_merge11 f4, f13, f12
    ps_muls0 f9, f9, f0
    psq_st  f5, 0x0(4), 0, 0
    ps_mul  f6, f13, f1
    psq_st  f4, 0x10(4), 0, 0
    ps_muls0 f8, f8, f0
    ps_madd f6, f12, f2, f6
    psq_st  f10, 0x20(4), 1, 0
    ps_nmadd f6, f11, f3, f6
    psq_st  f9, 0x24(4), 1, 0
    ps_mul  f7, f10, f1
    ps_merge00 f5, f11, f6
    psq_st  f8, 0x28(4), 1, 0
    ps_merge11 f4, f11, f6
    psq_st  f5, 0x8(4), 0, 0
    ps_madd f7, f9, f2, f7
    psq_st  f4, 0x18(4), 0, 0
    ps_nmadd f7, f8, f3, f7
    li      r3, 0x1
    psq_st  f7, 0x2c(4), 1, 0
    blr


.globl PSMTXRotRad
PSMTXRotRad: # 0x80349bb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    fmr     f31, f1
    mr      r30, r3
    mr      r31, r4
    fmr     f1, f31
    bl      sinf
    fmr     f0, f1
    fmr     f1, f31
    fmr     f31, f0
    bl      cosf
    fmr     f0, f1
    mr      r3, r30
    fmr     f1, f31
    mr      r4, r31
    fmr     f2, f0
    bl      PSMTXRotTrig
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl PSMTXRotTrig
PSMTXRotTrig: # 0x80349c24
    lfs     f0, 0xaf4(rtoc)
    lfs     f3, 0xaf0(rtoc)
    ori     r0, r4, 0x20
    ps_neg  f4, f1
    cmplwi  r0, 0x78
    beq-    branch_0x80349c50
    cmplwi  r0, 0x79
    beq-    branch_0x80349c78
    cmplwi  r0, 0x7a
    beq-    branch_0x80349ca4
    b       branch_0x80349cc8

branch_0x80349c50:
    psq_st  f3, 0x0(3), 1, 0
    psq_st  f0, 0x4(3), 0, 0
    ps_merge00 f5, f1, f2
    psq_st  f0, 0xc(3), 0, 0
    ps_merge00 f2, f2, f4
    psq_st  f0, 0x1c(3), 0, 0
    psq_st  f0, 0x2c(3), 1, 0
    psq_st  f5, 0x24(3), 0, 0
    psq_st  f2, 0x14(3), 0, 0
    b       branch_0x80349cc8

branch_0x80349c78:
    ps_merge00 f5, f2, f0
    ps_merge00 f2, f0, f3
    psq_st  f0, 0x18(3), 0, 0
    psq_st  f5, 0x0(3), 0, 0
    ps_merge00 f4, f4, f0
    ps_merge00 f0, f1, f0
    psq_st  f5, 0x28(3), 0, 0
    psq_st  f2, 0x10(3), 0, 0
    psq_st  f0, 0x8(3), 0, 0
    psq_st  f4, 0x20(3), 0, 0
    b       branch_0x80349cc8

branch_0x80349ca4:
    psq_st  f0, 0x8(3), 0, 0
    ps_merge00 f5, f1, f2
    ps_merge00 f4, f2, f4
    psq_st  f0, 0x18(3), 0, 0
    psq_st  f0, 0x20(3), 0, 0
    ps_merge00 f2, f3, f0
    psq_st  f5, 0x10(3), 0, 0
    psq_st  f4, 0x0(3), 0, 0
    psq_st  f2, 0x28(3), 0, 0
branch_0x80349cc8:
    blr


.globl PSMTXRotAxisRad
PSMTXRotAxisRad: # 0x80349ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stfd    f28, 0x38(sp)
    stfd    f27, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    fmr     f27, f1
    mr      r29, r3
    mr      r30, r4
    fmr     f1, f27
    lfs     f28, 0xaf4(rtoc)
    addi    r31, sp, 0x14
    bl      sinf
    fmr     f30, f1
    fmr     f1, f27
    bl      cosf
    fmr     f31, f1
    lfs     f0, 0xaf0(rtoc)
    mr      r3, r30
    mr      r4, r31
    fsubs   f29, f0, f31
    bl      PSVECNormalize
    psq_l   f27, 0x0(31), 0, 0
    lfs     f1, 0x1c(sp)
    ps_merge00 f0, f31, f31
    ps_muls0 f4, f27, f29
    ps_muls0 f5, f1, f29
    ps_muls1 f3, f4, f27
    ps_muls0 f2, f4, f27
    ps_muls0 f27, f27, f30
    ps_muls0 f4, f4, f1
    fnmsubs  f6, f1, f30, f3
    fmadds  f7, f1, f30, f3
    ps_neg  f9, f27
    ps_sum0 f8, f4, f28, f27
    ps_sum0 f2, f2, f6, f0
    ps_sum1 f3, f0, f7, f3
    ps_sum0 f6, f9, f28, f4
    ps_sum0 f9, f4, f4, f9
    psq_st  f8, 0x8(29), 0, 0
    ps_muls0 f5, f5, f1
    psq_st  f2, 0x0(29), 0, 0
    ps_sum1 f4, f27, f9, f4
    psq_st  f3, 0x10(29), 0, 0
    ps_sum0 f5, f5, f28, f0
    psq_st  f6, 0x18(29), 0, 0
    psq_st  f4, 0x20(29), 0, 0
    psq_st  f5, 0x28(29), 0, 0
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lfd     f28, 0x38(sp)
    lfd     f27, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x58
    blr


.globl PSMTXTrans
PSMTXTrans: # 0x80349dd0
    lfs     f0, 0xaf4(rtoc)
    lfs     f4, 0xaf0(rtoc)
    stfs    f1, 0xc(r3)
    stfs    f2, 0x1c(r3)
    psq_st  f0, 0x4(3), 0, 0
    psq_st  f0, 0x20(3), 0, 0
    stfs    f0, 0x10(r3)
    stfs    f4, 0x14(r3)
    stfs    f0, 0x18(r3)
    stfs    f4, 0x28(r3)
    stfs    f3, 0x2c(r3)
    stfs    f4, 0x0(r3)
    blr


.globl PSMTXTransApply
PSMTXTransApply: # 0x80349e04
    psq_l   f4, 0x0(3), 0, 0
    psq_l   f5, 0x8(3), 0, 0
    psq_l   f7, 0x18(3), 0, 0
    psq_l   f8, 0x28(3), 0, 0
    ps_sum1 f5, f1, f5, f5
    psq_l   f6, 0x10(3), 0, 0
    ps_sum1 f7, f2, f7, f7
    psq_l   f9, 0x20(3), 0, 0
    ps_sum1 f8, f3, f8, f8
    psq_st  f4, 0x0(4), 0, 0
    psq_st  f5, 0x8(4), 0, 0
    psq_st  f6, 0x10(4), 0, 0
    psq_st  f7, 0x18(4), 0, 0
    psq_st  f9, 0x20(4), 0, 0
    psq_st  f8, 0x28(4), 0, 0
    blr


.globl PSMTXScale
PSMTXScale: # 0x80349e44
    lfs     f0, 0xaf4(rtoc)
    stfs    f1, 0x0(r3)
    psq_st  f0, 0x4(3), 0, 0
    psq_st  f0, 0xc(3), 0, 0
    stfs    f2, 0x14(r3)
    psq_st  f0, 0x18(3), 0, 0
    psq_st  f0, 0x20(3), 0, 0
    stfs    f3, 0x28(r3)
    stfs    f0, 0x2c(r3)
    blr


.globl PSMTXScaleApply
PSMTXScaleApply: # 0x80349e6c
    psq_l   f4, 0x0(3), 0, 0
    psq_l   f5, 0x8(3), 0, 0
    ps_muls0 f4, f4, f1
    psq_l   f6, 0x10(3), 0, 0
    ps_muls0 f5, f5, f1
    psq_l   f7, 0x18(3), 0, 0
    ps_muls0 f6, f6, f2
    psq_l   f8, 0x20(3), 0, 0
    psq_st  f4, 0x0(4), 0, 0
    ps_muls0 f7, f7, f2
    psq_l   f2, 0x28(3), 0, 0
    psq_st  f5, 0x8(4), 0, 0
    ps_muls0 f8, f8, f3
    psq_st  f6, 0x10(4), 0, 0
    ps_muls0 f2, f2, f3
    psq_st  f7, 0x18(4), 0, 0
    psq_st  f8, 0x20(4), 0, 0
    psq_st  f2, 0x28(4), 0, 0
    blr


.globl PSMTXQuat
PSMTXQuat: # 0x80349eb8
    lfs     f1, 0xaf0(rtoc)
    psq_l   f4, 0x0(4), 0, 0
    psq_l   f5, 0x8(4), 0, 0
    fsubs   f0, f1, f1
    fadds   f2, f1, f1
    ps_mul  f6, f4, f4
    ps_merge10 f9, f4, f4
    ps_madd f8, f5, f5, f6
    ps_mul  f7, f5, f5
    ps_sum0 f3, f8, f8, f8
    ps_muls1 f10, f9, f5
    fres    f11, f3
    ps_sum1 f8, f7, f8, f6
    ps_nmsub f3, f3, f11, f2
    ps_muls1 f7, f5, f5
    ps_mul  f3, f11, f3
    ps_sum0 f6, f6, f6, f6
    fmuls   f3, f3, f2
    ps_madd f11, f4, f9, f7
    ps_msub f7, f4, f9, f7
    psq_st  f0, 0xc(3), 1, 0
    ps_nmsub f6, f6, f3, f1
    ps_nmsub f8, f8, f3, f1
    psq_st  f0, 0x2c(3), 1, 0
    ps_mul  f11, f11, f3
    ps_mul  f7, f7, f3
    psq_st  f6, 0x28(3), 1, 0
    ps_madds0 f9, f4, f5, f10
    ps_merge00 f5, f11, f8
    ps_nmsub f10, f10, f2, f9
    ps_merge10 f4, f8, f7
    psq_st  f5, 0x10(3), 0, 0
    ps_mul  f9, f9, f3
    ps_mul  f10, f10, f3
    psq_st  f4, 0x0(3), 0, 0
    psq_st  f9, 0x8(3), 1, 0
    ps_merge10 f7, f10, f0
    ps_merge01 f11, f10, f9
    psq_st  f7, 0x18(3), 0, 0
    psq_st  f11, 0x20(3), 0, 0
    blr


.globl C_MTXLookAt
C_MTXLookAt: # 0x80349f5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    mr      r30, r4
    mr      r31, r5
    lfs     f1, 0x0(r30)
    addi    r3, sp, 0x30
    lfs     f0, 0x0(r6)
    mr      r4, r3
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x4(r6)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x8(r30)
    lfs     f0, 0x8(r6)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    bl      PSVECNormalize
    mr      r3, r31
    addi    r4, sp, 0x30
    addi    r5, sp, 0x24
    bl      PSVECCrossProduct
    addi    r3, sp, 0x24
    mr      r4, r3
    bl      PSVECNormalize
    addi    r3, sp, 0x30
    addi    r4, sp, 0x24
    addi    r5, sp, 0x18
    bl      PSVECCrossProduct
    lfs     f0, 0x24(sp)
    stfs    f0, 0x0(r29)
    lfs     f0, 0x28(sp)
    stfs    f0, 0x4(r29)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x8(r29)
    lfs     f3, 0x0(r30)
    lfs     f2, 0x24(sp)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x28(sp)
    fmuls   f2, f3, f2
    lfs     f3, 0x8(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0x2c(sp)
    fmuls   f1, f3, f1
    fadds   f0, f2, f0
    fadds   f0, f1, f0
    fneg    f0, f0
    stfs    f0, 0xc(r29)
    lfs     f0, 0x18(sp)
    stfs    f0, 0x10(r29)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x14(r29)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x18(r29)
    lfs     f3, 0x0(r30)
    lfs     f2, 0x18(sp)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x1c(sp)
    fmuls   f2, f3, f2
    lfs     f3, 0x8(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0x20(sp)
    fmuls   f1, f3, f1
    fadds   f0, f2, f0
    fadds   f0, f1, f0
    fneg    f0, f0
    stfs    f0, 0x1c(r29)
    lfs     f0, 0x30(sp)
    stfs    f0, 0x20(r29)
    lfs     f0, 0x34(sp)
    stfs    f0, 0x24(r29)
    lfs     f0, 0x38(sp)
    stfs    f0, 0x28(r29)
    lfs     f3, 0x0(r30)
    lfs     f2, 0x30(sp)
    lfs     f1, 0x4(r30)
    lfs     f0, 0x34(sp)
    fmuls   f2, f3, f2
    lfs     f3, 0x8(r30)
    fmuls   f0, f1, f0
    lfs     f1, 0x38(sp)
    fmuls   f1, f3, f1
    fadds   f0, f2, f0
    fadds   f0, f1, f0
    fneg    f0, f0
    stfs    f0, 0x2c(r29)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl C_MTXLightFrustum
C_MTXLightFrustum: # 0x8034a0e8
    stwu    sp, -0x30(sp)
    lfs     f12, 0x38(sp)
    fsubs   f10, f4, f3
    lfs     f11, 0xaf0(rtoc)
    fsubs   f0, f1, f2
    lfs     f9, 0xaf8(rtoc)
    fadds   f3, f4, f3
    fdivs   f10, f11, f10
    fmuls   f5, f9, f5
    fdivs   f9, f11, f0
    fmuls   f4, f5, f10
    fmuls   f3, f10, f3
    fadds   f0, f1, f2
    fmuls   f1, f6, f4
    fmuls   f2, f6, f3
    fmuls   f0, f9, f0
    stfs    f1, 0x0(r3)
    fmuls   f1, f5, f9
    fsubs   f2, f2, f8
    lfs     f3, 0xaf4(rtoc)
    fmuls   f0, f7, f0
    stfs    f3, 0x4(r3)
    fmuls   f1, f7, f1
    stfs    f2, 0x8(r3)
    fsubs   f0, f0, f12
    stfs    f3, 0xc(r3)
    stfs    f3, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f0, 0x18(r3)
    stfs    f3, 0x1c(r3)
    stfs    f3, 0x20(r3)
    stfs    f3, 0x24(r3)
    lfs     f0, 0xafc(rtoc)
    stfs    f0, 0x28(r3)
    stfs    f3, 0x2c(r3)
    addi    sp, sp, 0x30
    blr


.globl C_MTXLightPerspective
C_MTXLightPerspective: # 0x8034a17c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stfd    f28, 0x38(sp)
    stfd    f27, 0x30(sp)
    stw     r31, 0x2c(sp)
    fmr     f27, f2
    mr      r31, r3
    fmr     f28, f3
    fmr     f29, f4
    fmr     f30, f5
    fmr     f31, f6
    lfs     f2, 0xb00(rtoc)
    lfs     f0, 0xb04(rtoc)
    fmuls   f1, f2, f1
    fmuls   f1, f0, f1
    bl      tanf
    lfs     f3, 0xaf0(rtoc)
    fneg    f2, f30
    fneg    f0, f31
    fdivs   f4, f3, f1
    fdivs   f1, f4, f27
    fmuls   f3, f28, f1
    fmuls   f1, f4, f29
    stfs    f3, 0x0(r31)
    lfs     f3, 0xaf4(rtoc)
    stfs    f3, 0x4(r31)
    stfs    f2, 0x8(r31)
    stfs    f3, 0xc(r31)
    stfs    f3, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f0, 0x18(r31)
    stfs    f3, 0x1c(r31)
    stfs    f3, 0x20(r31)
    stfs    f3, 0x24(r31)
    lfs     f0, 0xafc(rtoc)
    stfs    f0, 0x28(r31)
    stfs    f3, 0x2c(r31)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    lfd     f28, 0x38(sp)
    lfd     f27, 0x30(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x58
    blr


.globl C_MTXLightOrtho
C_MTXLightOrtho: # 0x8034a248
    fsubs   f10, f4, f3
    lfs     f11, 0xaf0(rtoc)
    fsubs   f0, f1, f2
    lfs     f9, 0xaf8(rtoc)
    fadds   f3, f4, f3
    fdivs   f12, f11, f10
    fdivs   f10, f11, f0
    fmuls   f4, f9, f12
    fneg    f3, f3
    fadds   f0, f1, f2
    fmuls   f1, f4, f5
    fmuls   f2, f12, f3
    fneg    f0, f0
    stfs    f1, 0x0(r3)
    fmuls   f1, f9, f10
    fmuls   f2, f5, f2
    lfs     f3, 0xaf4(rtoc)
    fmuls   f0, f10, f0
    stfs    f3, 0x4(r3)
    fadds   f2, f7, f2
    fmuls   f1, f1, f6
    stfs    f3, 0x8(r3)
    fmuls   f0, f6, f0
    stfs    f2, 0xc(r3)
    stfs    f3, 0x10(r3)
    fadds   f0, f8, f0
    stfs    f1, 0x14(r3)
    stfs    f3, 0x18(r3)
    stfs    f0, 0x1c(r3)
    stfs    f3, 0x20(r3)
    stfs    f3, 0x24(r3)
    stfs    f3, 0x28(r3)
    stfs    f11, 0x2c(r3)
    blr

