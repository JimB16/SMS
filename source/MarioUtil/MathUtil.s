
.globl MsVECMag2__FP3Vec
MsVECMag2__FP3Vec: # 0x8022a414
    psq_l   f3, 0x0(3), 0, 0
    ps_mul  f3, f3, f3
    lfs     f4, 0x8(r3)
    ps_madd f5, f4, f4, f3
    ps_sum0 f2, f5, f3, f3
    frsqrte f0, f2
    fneg    f1, f2
    fsel    f0, f1, f2, f0
    fmuls   f1, f2, f0
    blr


.globl MsVECNormalize__FP3VecP3Vec
MsVECNormalize__FP3VecP3Vec: # 0x8022a43c
    psq_l   f6, 0x0(3), 0, 0
    ps_mul  f3, f6, f6
    lfs     f4, 0x8(r3)
    ps_madd f5, f4, f4, f3
    ps_sum0 f2, f5, f3, f3
    frsqrte f0, f2
    ps_muls0 f6, f6, f0
    psq_st  f6, 0x0(4), 0, 0
    fmuls   f4, f4, f0
    stfs    f4, 0x8(r4)
    blr


.globl SMSCalcJumpVelocityXZ__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ffPQ29JGeometry8TVec3_f_
SMSCalcJumpVelocityXZ__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ffPQ29JGeometry8TVec3_f_: # 0x8022a468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    fmr     f30, f1
    mr      r29, r3
    fmr     f31, f2
    mr      r30, r4
    mr      r31, r5
    lfs     f1, 0x0(r29)
    addi    r3, sp, 0x2c
    lfs     f0, 0x0(r30)
    lfs     f3, 0x8(r29)
    fsubs   f1, f1, f0
    lfs     f2, 0x8(r30)
    lfs     f0, -0x1768(rtoc)
    fsubs   f2, f3, f2
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f2, 0x34(sp)
    bl      PSVECMag
    fdivs   f0, f1, f30
    lis     r0, 0x4330
    lfd     f2, -0x1760(rtoc)
    lfs     f4, 0x4(r29)
    lfs     f3, 0x4(r30)
    fctiwz  f6, f0
    lfs     f0, 0x2c(sp)
    fdivs   f7, f30, f1
    lfs     f5, 0x34(sp)
    stfd    f6, 0x40(sp)
    lwz     r4, 0x44(sp)
    addi    r3, r4, 0x1
    mullw   r3, r3, r4
    fmuls   f0, f0, f7
    fsubs   f1, f4, f3
    fmuls   f3, f5, f7
    stfs    f0, 0x0(r31)
    srawi   r3, r3, 1
    addze   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f31
    fmuls   f0, f7, f0
    fmadds  f0, f7, f1, f0
    stfs    f0, 0x4(r31)
    stfs    f3, 0x8(r31)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x68
    blr


.globl SMSCalcJumpVelocityY__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fffPQ29JGeometry8TVec3_f_
SMSCalcJumpVelocityY__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fffPQ29JGeometry8TVec3_f_: # 0x8022a564
    stwu    sp, -0x30(sp)
    fmr     f6, f1
    lfs     f4, 0x4(r4)
    lfs     f5, 0x4(r3)
    li      r6, 0x1
    lfs     f0, -0x1768(rtoc)
    b       branch_0x8022a580

branch_0x8022a580:
    b       branch_0x8022a584

branch_0x8022a584:
    fcmpo   cr0, f6, f0
    fadds   f4, f4, f6
    bge-    branch_0x8022a59c
    fcmpo   cr0, f4, f5
    cror    2, 0, 2
    beq-    branch_0x8022a5b4
branch_0x8022a59c:
    fsubs   f6, f6, f2
    fcmpo   cr0, f6, f3
    bge-    branch_0x8022a5ac
    fmr     f6, f3
branch_0x8022a5ac:
    addi    r6, r6, 0x1
    b       branch_0x8022a584

branch_0x8022a5b4:
    xoris   r0, r6, 0x8000
    lfd     f4, -0x1760(rtoc)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f6, -0x1758(rtoc)
    stw     r0, 0x28(sp)
    lfs     f2, 0x0(r3)
    lfd     f3, 0x28(sp)
    lfs     f0, 0x0(r4)
    fsubs   f5, f3, f4
    lfs     f4, 0x8(r3)
    lfs     f3, 0x8(r4)
    fsubs   f0, f2, f0
    fdivs   f5, f6, f5
    fmuls   f0, f5, f0
    fsubs   f2, f4, f3
    stfs    f0, 0x0(r5)
    fmuls   f0, f5, f2
    stfs    f1, 0x4(r5)
    stfs    f0, 0x8(r5)
    addi    sp, sp, 0x30
    blr


.globl SMS_GoRotate__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf
SMS_GoRotate__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fPf: # 0x8022a60c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    fmr     f31, f1
    mr      r31, r5
    lfs     f3, 0x0(r4)
    lfs     f2, 0x0(r3)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x8(r3)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    lfs     f2, -0x1754(rtoc)
    extsh   r4, r3
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f31
    fmuls   f0, f2, f0
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f1, 0x28(sp)
    stfd    f0, 0x20(sp)
    lwz     r5, 0x2c(sp)
    lwz     r0, 0x24(sp)
    subf    r0, r0, r4
    extsh   r3, r0
    cmpwi   r3, 0x0
    bge-    branch_0x8022a698
    extsh   r0, r5
    add     r0, r3, r0
    cmpwi   r0, 0x0
    ble-    branch_0x8022a6ac
    li      r0, 0x0
    b       branch_0x8022a6ac

branch_0x8022a698:
    extsh   r0, r5
    subf    r0, r0, r3
    cmpwi   r0, 0x0
    bge-    branch_0x8022a6ac
    li      r0, 0x0
branch_0x8022a6ac:
    subf    r0, r0, r4
    lfd     f1, -0x1760(rtoc)
    extsh   r0, r0
    lfs     f2, -0x1750(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x0(r31)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff: # 0x8022a6f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    fmr     f30, f1
    fmr     f31, f3
    lwz     r5, 0x0(r4)
    fmuls   f0, f4, f4
    lwz     r0, 0x4(r4)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x3c(sp)
    lfs     f3, 0x34(sp)
    lfs     f1, 0x0(r3)
    fsubs   f1, f3, f1
    stfs    f1, 0x34(sp)
    lfs     f3, 0x38(sp)
    lfs     f1, 0x4(r3)
    fsubs   f1, f3, f1
    stfs    f1, 0x38(sp)
    lfs     f3, 0x3c(sp)
    lfs     f1, 0x8(r3)
    fsubs   f1, f3, f1
    stfs    f1, 0x3c(sp)
    lfs     f6, 0x34(sp)
    lfs     f3, 0x38(sp)
    lfs     f1, 0x3c(sp)
    fmuls   f4, f6, f6
    fmuls   f3, f3, f3
    fmuls   f5, f1, f1
    fadds   f3, f4, f3
    fadds   f3, f5, f3
    fcmpo   cr0, f3, f0
    bge-    branch_0x8022a790
    li      r3, 0x1
    b       branch_0x8022a878

branch_0x8022a790:
    fmuls   f0, f2, f2
    fcmpo   cr0, f3, f0
    bge-    branch_0x8022a874
    lfs     f0, -0x1768(rtoc)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8022a7c4
    fcmpo   cr0, f6, f0
    cror    2, 1, 2
    bne-    branch_0x8022a7bc
    lfs     f29, -0x174c(rtoc)
    b       branch_0x8022a840

branch_0x8022a7bc:
    lfs     f29, -0x1748(rtoc)
    b       branch_0x8022a840

branch_0x8022a7c4:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8022a804
    fmr     f2, f6
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1760(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1750(rtoc)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    stw     r0, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f29, f0, f1
    b       branch_0x8022a840

branch_0x8022a804:
    fneg    f1, f1
    fmr     f2, f6
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x1760(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1750(rtoc)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1744(rtoc)
    stw     r0, 0x40(sp)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f29, f0, f1
branch_0x8022a840:
    lfs     f0, -0x1744(rtoc)
    fmr     f1, f30
    fsubs   f2, f29, f0
    fadds   f3, f0, f29
    bl      MsWrap_f___Ffff_8022a894
    fsubs   f1, f29, f1
    lfs     f0, -0x1740(rtoc)
    fmuls   f0, f0, f31
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8022a874
    li      r3, 0x1
    b       branch_0x8022a878

branch_0x8022a874:
    li      r3, 0x0
branch_0x8022a878:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl MsWrap_f___Ffff_8022a894
MsWrap_f___Ffff_8022a894: # 0x8022a894
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x8022a8dc
    fmr     f1, f2
    b       branch_0x8022a8e4

branch_0x8022a8a8:
    b       branch_0x8022a8ac

branch_0x8022a8ac:
    b       branch_0x8022a8b4

branch_0x8022a8b0:
    fsubs   f1, f1, f0
branch_0x8022a8b4:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8022a8b0
    b       branch_0x8022a8c4

branch_0x8022a8c4:
    b       branch_0x8022a8c8

branch_0x8022a8c8:
    b       branch_0x8022a8d0

branch_0x8022a8cc:
    fadds   f1, f1, f0
branch_0x8022a8d0:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8022a8cc
    b       branch_0x8022a8e4

branch_0x8022a8dc:
    fsubs   f0, f3, f2
    b       branch_0x8022a8a8

branch_0x8022a8e4:
    blr


.globl MsMtxSetTRS__FPA4_ffffffffff
MsMtxSetTRS__FPA4_ffffffffff: # 0x8022a8e8
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stfd    f27, 0x68(sp)
    lfs     f0, 0x98(sp)
    lfs     f10, -0x1754(rtoc)
    lwz     r6, -0x5eac(r13)
    fmuls   f9, f10, f4
    lwz     r9, -0x5ea4(r13)
    fmuls   f5, f10, f5
    lwz     r7, -0x5ea8(r13)
    fmuls   f4, f10, f6
    fctiwz  f6, f9
    fctiwz  f5, f5
    fctiwz  f4, f4
    stfd    f6, 0x60(sp)
    stfd    f5, 0x58(sp)
    lwz     r0, 0x64(sp)
    stfd    f4, 0x50(sp)
    lwz     r4, 0x5c(sp)
    clrlwi  r5, r0, 16
    lwz     r0, 0x54(sp)
    sraw    r5, r5, r6
    clrlwi  r4, r4, 16
    sraw    r4, r4, r6
    slwi    r8, r4, 2
    slwi    r4, r5, 2
    lfsx    f9, r9, r8
    clrlwi  r0, r0, 16
    lfsx    f31, r7, r8
    sraw    r0, r0, r6
    lfsx    f29, r9, r4
    slwi    r0, r0, 2
    fneg    f12, f31
    lfsx    f28, r9, r0
    fmuls   f4, f9, f29
    lfsx    f30, r7, r0
    lfsx    f13, r7, r4
    fmuls   f5, f28, f9
    fmuls   f10, f30, f9
    fmuls   f27, f28, f31
    fmuls   f11, f7, f5
    fmuls   f6, f30, f29
    fmuls   f5, f30, f13
    fmuls   f9, f9, f13
    stfs    f11, 0x0(r3)
    fmuls   f10, f7, f10
    fmsubs  f11, f13, f27, f6
    fmadds  f6, f29, f27, f5
    fmuls   f27, f30, f31
    stfs    f10, 0x10(r3)
    fmuls   f10, f28, f29
    fmuls   f12, f12, f7
    fmuls   f5, f28, f13
    fmadds  f7, f13, f27, f10
    fmuls   f11, f8, f11
    stfs    f12, 0x20(r3)
    fmsubs  f5, f29, f27, f5
    fmuls   f10, f8, f7
    stfs    f11, 0x4(r3)
    fmuls   f7, f8, f9
    stfs    f10, 0x14(r3)
    fmuls   f6, f0, f6
    fmuls   f5, f0, f5
    stfs    f7, 0x24(r3)
    fmuls   f0, f0, f4
    stfs    f6, 0x8(r3)
    stfs    f5, 0x18(r3)
    stfs    f0, 0x28(r3)
    stfs    f1, 0xc(r3)
    stfs    f2, 0x1c(r3)
    stfs    f3, 0x2c(r3)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lfd     f27, 0x68(sp)
    addi    sp, sp, 0x90
    blr


.globl MsMtxSetXYZRPH__FPA4_ffffsss
MsMtxSetXYZRPH__FPA4_ffffsss: # 0x8022aa2c
    lwz     r7, -0x5eac(r13)
    clrlwi  r4, r4, 16
    clrlwi  r0, r5, 16
    lwz     r5, -0x5ea8(r13)
    sraw    r4, r4, r7
    sraw    r0, r0, r7
    lwz     r9, -0x5ea4(r13)
    slwi    r8, r0, 2
    clrlwi  r0, r6, 16
    lfsx    f7, r5, r8
    sraw    r0, r0, r7
    lfsx    f10, r9, r8
    slwi    r6, r0, 2
    fneg    f4, f7
    slwi    r0, r4, 2
    lfsx    f11, r9, r6
    lfsx    f6, r5, r0
    lfsx    f8, r5, r6
    lfsx    f9, r9, r0
    fmuls   f0, f11, f10
    fmuls   f5, f8, f10
    stfs    f4, 0x20(r3)
    fmuls   f4, f10, f6
    fmuls   f12, f9, f8
    fmuls   f13, f6, f11
    stfs    f0, 0x0(r3)
    fmuls   f0, f10, f9
    fmuls   f8, f6, f8
    fmuls   f9, f9, f11
    stfs    f5, 0x10(r3)
    fmsubs  f6, f13, f7, f12
    fmsubs  f5, f12, f7, f13
    stfs    f4, 0x24(r3)
    fmadds  f4, f9, f7, f8
    stfs    f0, 0x28(r3)
    fmadds  f0, f8, f7, f9
    stfs    f6, 0x4(r3)
    stfs    f5, 0x18(r3)
    stfs    f4, 0x8(r3)
    stfs    f0, 0x14(r3)
    stfs    f1, 0xc(r3)
    stfs    f2, 0x1c(r3)
    stfs    f3, 0x2c(r3)
    blr


.globl MsMtxSetRotRPH__FPA4_ffff
MsMtxSetRotRPH__FPA4_ffff: # 0x8022aadc
    stwu    sp, -0x50(sp)
    lfs     f0, -0x1754(rtoc)
    lwz     r6, -0x5eac(r13)
    fmuls   f4, f0, f1
    lwz     r9, -0x5ea4(r13)
    fmuls   f1, f0, f2
    lwz     r7, -0x5ea8(r13)
    fmuls   f0, f0, f3
    fctiwz  f2, f4
    fctiwz  f1, f1
    fctiwz  f0, f0
    stfd    f2, 0x48(sp)
    stfd    f1, 0x40(sp)
    lwz     r0, 0x4c(sp)
    stfd    f0, 0x38(sp)
    lwz     r4, 0x44(sp)
    clrlwi  r5, r0, 16
    lwz     r0, 0x3c(sp)
    sraw    r5, r5, r6
    clrlwi  r4, r4, 16
    sraw    r4, r4, r6
    slwi    r8, r4, 2
    slwi    r4, r5, 2
    lfsx    f9, r9, r8
    clrlwi  r0, r0, 16
    lfsx    f6, r7, r4
    sraw    r0, r0, r6
    lfsx    f5, r7, r8
    slwi    r0, r0, 2
    lfsx    f8, r9, r4
    lfsx    f10, r9, r0
    fneg    f4, f5
    lfsx    f7, r7, r0
    fmuls   f3, f9, f6
    fmuls   f0, f10, f9
    fmuls   f2, f7, f9
    fmuls   f11, f10, f5
    stfs    f0, 0x0(r3)
    fmuls   f0, f7, f8
    fmuls   f1, f7, f6
    stfs    f2, 0x10(r3)
    fmuls   f7, f7, f5
    fmuls   f2, f10, f8
    stfs    f4, 0x20(r3)
    fmsubs  f5, f6, f11, f0
    fmuls   f0, f10, f6
    fmadds  f4, f6, f7, f2
    stfs    f5, 0x4(r3)
    fmadds  f2, f8, f11, f1
    fmsubs  f1, f8, f7, f0
    stfs    f4, 0x14(r3)
    fmuls   f0, f9, f8
    stfs    f3, 0x24(r3)
    stfs    f2, 0x8(r3)
    stfs    f1, 0x18(r3)
    stfs    f0, 0x28(r3)
    lfs     f0, -0x1768(rtoc)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x2c(r3)
    addi    sp, sp, 0x50
    blr


.globl MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_: # 0x8022abd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lfs     f4, -0x1768(rtoc)
    stfs    f4, 0x40(sp)
    stfs    f4, 0x3c(sp)
    stfs    f4, 0x38(sp)
    lfs     f0, -0x173c(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x34(sp)
    lfs     f2, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f3, 0x34(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8022ac50
    stfs    f4, 0x34(sp)
    stfs    f4, 0x30(sp)
    stfs    f4, 0x2c(sp)
    b       branch_0x8022ac80

branch_0x8022ac50:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x1758(rtoc)
    lfs     f0, 0x2c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x30(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(sp)
    lfs     f0, 0x34(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
branch_0x8022ac80:
    lfs     f1, -0x1758(rtoc)
    lfs     f2, 0x30(sp)
    fcmpu   cr0, f1, f2
    bne-    branch_0x8022ac9c
    lfs     f0, -0x1748(rtoc)
    stfs    f0, 0x38(sp)
    b       branch_0x8022ad28

branch_0x8022ac9c:
    lfs     f0, -0x1738(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x8022acb4
    lfs     f0, -0x174c(rtoc)
    stfs    f0, 0x38(sp)
    b       branch_0x8022ad28

branch_0x8022acb4:
    fnmsubs  f1, f2, f2, f1
    lfs     f0, -0x1768(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8022acf4
    frsqrte f5, f1
    lfd     f4, -0x1730(rtoc)
    lfd     f0, -0x1728(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f0, f1, f3, f0
    fmul    f0, f4, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x28(sp)
    b       branch_0x8022acf4

branch_0x8022acf4:
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1760(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1750(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fneg    f0, f0
    stfs    f0, 0x38(sp)
branch_0x8022ad28:
    lfs     f2, -0x1768(rtoc)
    lfs     f1, 0x34(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8022ad5c
    lfs     f0, 0x2c(sp)
    fcmpo   cr0, f0, f2
    ble-    branch_0x8022ad50
    lfs     f0, -0x174c(rtoc)
    stfs    f0, 0x3c(sp)
    b       branch_0x8022addc

branch_0x8022ad50:
    lfs     f0, -0x1748(rtoc)
    stfs    f0, 0x3c(sp)
    b       branch_0x8022addc

branch_0x8022ad5c:
    fcmpo   cr0, f1, f2
    ble-    branch_0x8022ad9c
    lfs     f2, 0x2c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1760(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1750(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    b       branch_0x8022addc

branch_0x8022ad9c:
    fneg    f1, f1
    lfs     f2, 0x2c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x1760(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1750(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1744(rtoc)
    stw     r0, 0x48(sp)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
    stfs    f0, 0x3c(sp)
branch_0x8022addc:
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x8(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl matan__Fff
matan__Fff: # 0x8022ae08
    stwu    sp, -0x18(sp)
    lfs     f0, -0x1768(rtoc)
    lis     r3, 0x803e
    subi    r3, r3, 0x57f0
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8022af64
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8022aec8
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8022ae84
    fcmpu   cr0, f0, f1
    bne-    branch_0x8022ae4c
    lhz     r0, 0x28(r3)
    b       branch_0x8022ae78

branch_0x8022ae4c:
    fres    f1, f1
    lfs     f3, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r0, 0x28(r3)
branch_0x8022ae78:
    clrlwi  r0, r0, 16
    mr      r3, r0
    b       branch_0x8022b0a4

branch_0x8022ae84:
    fcmpu   cr0, f0, f2
    bne-    branch_0x8022ae94
    lhz     r0, 0x28(r3)
    b       branch_0x8022aec0

branch_0x8022ae94:
    fres    f3, f2
    lfs     f2, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f1, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r0, 0x28(r3)
branch_0x8022aec0:
    subfic  r3, r0, 0x4000
    b       branch_0x8022b0a4

branch_0x8022aec8:
    fneg    f4, f1
    fcmpo   cr0, f4, f2
    bge-    branch_0x8022af18
    fcmpu   cr0, f0, f2
    bne-    branch_0x8022aee4
    lhz     r3, 0x28(r3)
    b       branch_0x8022af10

branch_0x8022aee4:
    fres    f1, f2
    lfs     f2, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f4, f1
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r3, 0x28(r3)
branch_0x8022af10:
    addi    r3, r3, 0x4000
    b       branch_0x8022b0a4

branch_0x8022af18:
    fcmpu   cr0, f0, f4
    bne-    branch_0x8022af28
    lhz     r4, 0x28(r3)
    b       branch_0x8022af54

branch_0x8022af28:
    fres    f1, f4
    lfs     f3, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r4, 0x28(r3)
branch_0x8022af54:
    lis     r3, 0x1
    subi    r0, r3, 0x8000
    subf    r3, r4, r0
    b       branch_0x8022b0a4

branch_0x8022af64:
    fcmpo   cr0, f1, f0
    fneg    f3, f2
    bge-    branch_0x8022b014
    fneg    f4, f1
    fcmpo   cr0, f4, f3
    cror    2, 1, 2
    bne-    branch_0x8022afc8
    fcmpu   cr0, f0, f4
    bne-    branch_0x8022af90
    lhz     r3, 0x28(r3)
    b       branch_0x8022afbc

branch_0x8022af90:
    fres    f1, f4
    lfs     f2, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f3, f1
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r3, 0x28(r3)
branch_0x8022afbc:
    addis   r3, r3, 0x1
    subi    r3, r3, 0x8000
    b       branch_0x8022b0a4

branch_0x8022afc8:
    fcmpu   cr0, f0, f3
    bne-    branch_0x8022afd8
    lhz     r4, 0x28(r3)
    b       branch_0x8022b004

branch_0x8022afd8:
    fres    f1, f3
    lfs     f2, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f4, f1
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r4, 0x28(r3)
branch_0x8022b004:
    lis     r3, 0x1
    subi    r0, r3, 0x4000
    subf    r3, r4, r0
    b       branch_0x8022b0a4

branch_0x8022b014:
    fcmpo   cr0, f1, f3
    bge-    branch_0x8022b064
    fcmpu   cr0, f0, f3
    bne-    branch_0x8022b02c
    lhz     r3, 0x28(r3)
    b       branch_0x8022b058

branch_0x8022b02c:
    fres    f3, f3
    lfs     f2, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f1, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r3, 0x28(r3)
branch_0x8022b058:
    addis   r3, r3, 0x1
    subi    r3, r3, 0x4000
    b       branch_0x8022b0a4

branch_0x8022b064:
    fcmpu   cr0, f0, f1
    bne-    branch_0x8022b074
    lhz     r0, 0x28(r3)
    b       branch_0x8022b0a0

branch_0x8022b074:
    fres    f1, f1
    lfs     f2, -0x1720(rtoc)
    lfs     f0, -0x1740(rtoc)
    fmuls   f1, f3, f1
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r0, 0x28(r3)
branch_0x8022b0a0:
    neg     r3, r0
branch_0x8022b0a4:
    addi    sp, sp, 0x18
    blr


.globl FConverge__Fffff
FConverge__Fffff: # 0x8022b0ac
    fcmpo   cr0, f1, f2
    bge-    branch_0x8022b0c8
    fadds   f1, f1, f3
    fcmpo   cr0, f1, f2
    ble-    branch_0x8022b0d8
    fmr     f1, f2
    b       branch_0x8022b0d8

branch_0x8022b0c8:
    fsubs   f1, f1, f4
    fcmpo   cr0, f1, f2
    bge-    branch_0x8022b0d8
    fmr     f1, f2
branch_0x8022b0d8:
    blr


.globl IConverge__Fiiii
IConverge__Fiiii: # 0x8022b0dc
    cmpw    r3, r4
    bge-    branch_0x8022b0f8
    add     r3, r3, r5
    cmpw    r3, r4
    ble-    branch_0x8022b108
    mr      r3, r4
    b       branch_0x8022b108

branch_0x8022b0f8:
    subf    r3, r6, r3
    cmpw    r3, r4
    bge-    branch_0x8022b108
    mr      r3, r4
branch_0x8022b108:
    blr

