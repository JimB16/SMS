
.globl CLBCalcNearNinePos__FPQ29JGeometry8TVec3_f_P6S16VecRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_sfRCQ29JGeometry8TVec2_f_
CLBCalcNearNinePos__FPQ29JGeometry8TVec3_f_P6S16VecRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_sfRCQ29JGeometry8TVec2_f_: # 0x80027550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stfd    f31, 0x1e8(sp)
    stfd    f30, 0x1e0(sp)
    stfd    f29, 0x1d8(sp)
    stfd    f28, 0x1d0(sp)
    stfd    f27, 0x1c8(sp)
    stfd    f26, 0x1c0(sp)
    stfd    f25, 0x1b8(sp)
    fmr     f25, f1
    stmw    r26, 0x1a0(sp)
    mr      r29, r3
    addi    r3, sp, 0x148
    mr      r30, r4
    mr      r26, r5
    mr      r27, r6
    mr      r28, r7
    addi    r31, r8, 0x0
    addi    r4, r3, 0x0
    lfs     f0, 0x0(r5)
    lfs     f1, 0x0(r6)
    lfs     f2, 0x4(r6)
    fsubs   f0, f1, f0
    lfs     f1, 0x4(r5)
    lfs     f4, 0x8(r6)
    lfs     f3, 0x8(r5)
    fsubs   f1, f2, f1
    stfs    f0, 0x148(sp)
    fsubs   f0, f4, f3
    stfs    f1, 0x14c(sp)
    stfs    f0, 0x150(sp)
    lfs     f1, -0x78b0(rtoc)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lfs     f1, 0x148(sp)
    lfs     f0, 0x0(r26)
    fmadds  f0, f1, f25, f0
    stfs    f0, 0x30(r29)
    lfs     f1, 0x14c(sp)
    lfs     f0, 0x4(r26)
    fmadds  f0, f1, f25, f0
    stfs    f0, 0x34(r29)
    lfs     f1, 0x150(sp)
    lfs     f0, 0x8(r26)
    fmadds  f0, f1, f25, f0
    stfs    f0, 0x38(r29)
    lfs     f1, 0x8(r26)
    lfs     f0, 0x8(r27)
    lfs     f2, 0x0(r26)
    fsubs   f1, f1, f0
    lfs     f0, 0x0(r27)
    fsubs   f2, f2, f0
    fmuls   f0, f1, f1
    fmadds  f1, f2, f2, f0
    bl      MsSqrtf__Ff
    lfs     f2, 0x4(r26)
    lfs     f0, 0x4(r27)
    fsubs   f2, f2, f0
    bl      matan__Fff
    neg     r0, r3
    sth     r0, 0x0(r30)
    lfs     f3, 0x8(r26)
    lfs     f1, 0x8(r27)
    lfs     f2, 0x0(r26)
    lfs     f0, 0x0(r27)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0x2(r30)
    addi    r3, sp, 0x170
    addi    r4, r3, 0x0
    sth     r28, 0x4(r30)
    lfs     f0, -0x78ac(rtoc)
    lfs     f25, -0x78b0(rtoc)
    stfs    f0, 0x188(sp)
    stfs    f25, 0x18c(sp)
    stfs    f0, 0x190(sp)
    stfs    f25, 0x17c(sp)
    stfs    f0, 0x180(sp)
    stfs    f0, 0x184(sp)
    lfs     f1, 0x0(r27)
    lfs     f0, 0x0(r26)
    lfs     f3, 0x4(r27)
    lfs     f2, 0x4(r26)
    fsubs   f0, f1, f0
    lfs     f4, 0x8(r27)
    lfs     f1, 0x8(r26)
    fsubs   f2, f3, f2
    stfs    f0, 0x170(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x174(sp)
    stfs    f0, 0x178(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x78a8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800276e8
    lfs     f0, -0x78ac(rtoc)
    stfs    f0, 0x178(sp)
    stfs    f0, 0x174(sp)
    stfs    f0, 0x170(sp)
    b       branch_0x800276fc

branch_0x800276e8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f25, f1
    addi    r3, sp, 0x170
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x800276fc:
    lhz     r0, 0x0(r30)
    lis     r4, 0x4330
    lwz     r6, -0x5eac(r13)
    lwz     r7, -0x5ea8(r13)
    sraw    r0, r0, r6
    lfs     f0, 0x190(sp)
    slwi    r5, r0, 2
    lwz     r8, -0x5ea4(r13)
    lfsx    f6, r7, r5
    lha     r3, 0x4(r30)
    fmuls   f0, f0, f6
    lfs     f1, 0x18c(sp)
    lfsx    f5, r8, r5
    xoris   r0, r3, 0x8000
    stw     r0, 0x19c(sp)
    fmsubs  f0, f1, f5, f0
    lfs     f4, -0x78a4(rtoc)
    lfs     f3, -0x78a0(rtoc)
    addi    r3, sp, 0x10c
    lfd     f2, -0x7888(rtoc)
    stfs    f0, 0x18c(sp)
    lfs     f0, 0x190(sp)
    stw     r4, 0x198(sp)
    addi    r4, sp, 0x170
    fmuls   f0, f0, f5
    fmadds  f0, f1, f6, f0
    lfd     f1, 0x198(sp)
    fsubs   f1, f1, f2
    stfs    f0, 0x190(sp)
    lhz     r0, 0x2(r30)
    fmuls   f1, f3, f1
    lfs     f0, 0x190(sp)
    sraw    r0, r0, r6
    lfs     f6, 0x188(sp)
    slwi    r0, r0, 2
    lfsx    f5, r7, r0
    fmuls   f25, f4, f1
    lfsx    f3, r8, r0
    fneg    f2, f6
    fmuls   f0, f0, f5
    fmr     f1, f25
    fmadds  f0, f6, f3, f0
    stfs    f0, 0x188(sp)
    lfs     f0, 0x190(sp)
    fmuls   f0, f0, f3
    fmadds  f0, f2, f5, f0
    stfs    f0, 0x190(sp)
    lfs     f0, -0x78ac(rtoc)
    stfs    f0, 0x120(sp)
    stfs    f0, 0x114(sp)
    stfs    f0, 0x128(sp)
    stfs    f0, 0x110(sp)
    stfs    f0, 0x124(sp)
    stfs    f0, 0x118(sp)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0x12c(sp)
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x10c(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x188(sp)
    fmr     f1, f25
    lwz     r3, 0x18c(sp)
    addi    r4, sp, 0x170
    stw     r0, 0x130(sp)
    lwz     r0, 0x190(sp)
    stw     r3, 0x134(sp)
    addi    r3, sp, 0xd8
    lfs     f2, 0x10c(sp)
    stw     r0, 0x138(sp)
    lfs     f5, 0x134(sp)
    lfs     f0, 0x118(sp)
    lfs     f4, 0x130(sp)
    fmuls   f0, f5, f0
    lfs     f6, 0x138(sp)
    lfs     f3, 0x124(sp)
    fmadds  f0, f4, f2, f0
    fmadds  f0, f6, f3, f0
    stfs    f0, 0x188(sp)
    lfs     f0, 0x11c(sp)
    lfs     f2, 0x110(sp)
    fmuls   f0, f5, f0
    lfs     f3, 0x128(sp)
    fmadds  f0, f4, f2, f0
    fmadds  f0, f6, f3, f0
    stfs    f0, 0x18c(sp)
    lfs     f0, 0x120(sp)
    lfs     f3, 0x130(sp)
    fmuls   f0, f5, f0
    lfs     f2, 0x114(sp)
    lfs     f4, 0x12c(sp)
    fmadds  f0, f3, f2, f0
    fmadds  f0, f6, f4, f0
    stfs    f0, 0x190(sp)
    lhz     r0, 0x0(r30)
    lwz     r5, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r0, r5
    lfs     f0, 0x184(sp)
    slwi    r0, r0, 2
    lwz     r7, -0x5ea4(r13)
    lfsx    f4, r6, r0
    lfs     f2, 0x180(sp)
    fmuls   f0, f0, f4
    lfsx    f3, r7, r0
    fmsubs  f0, f2, f3, f0
    stfs    f0, 0x180(sp)
    lfs     f0, 0x184(sp)
    fmuls   f0, f0, f3
    fmadds  f0, f2, f4, f0
    stfs    f0, 0x184(sp)
    lhz     r0, 0x2(r30)
    lfs     f5, 0x17c(sp)
    sraw    r0, r0, r5
    lfs     f0, 0x184(sp)
    slwi    r0, r0, 2
    fneg    f2, f5
    lfsx    f4, r6, r0
    lfsx    f3, r7, r0
    fmuls   f0, f0, f4
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x17c(sp)
    lfs     f0, 0x184(sp)
    fmuls   f0, f0, f3
    fmadds  f0, f2, f4, f0
    stfs    f0, 0x184(sp)
    lfs     f0, -0x78ac(rtoc)
    stfs    f0, 0xec(sp)
    stfs    f0, 0xe0(sp)
    stfs    f0, 0xf4(sp)
    stfs    f0, 0xdc(sp)
    stfs    f0, 0xf0(sp)
    stfs    f0, 0xe4(sp)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0xf8(sp)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xd8(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x17c(sp)
    lwz     r3, 0x180(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x184(sp)
    stw     r3, 0x100(sp)
    lfs     f1, 0xd8(sp)
    stw     r0, 0x104(sp)
    lfs     f4, 0x100(sp)
    lfs     f0, 0xe4(sp)
    lfs     f3, 0xfc(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0x104(sp)
    lfs     f2, 0xf0(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x17c(sp)
    lfs     f0, 0xe8(sp)
    lfs     f1, 0xdc(sp)
    fmuls   f0, f4, f0
    lfs     f2, 0xf4(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x180(sp)
    lfs     f0, 0xec(sp)
    lfs     f2, 0xfc(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0xe0(sp)
    lfs     f3, 0xf8(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x184(sp)
    lfs     f3, -0x789c(rtoc)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x188(sp)
    fmuls   f7, f3, f1
    lfs     f2, 0x0(r31)
    lfs     f1, 0x30(r29)
    fmuls   f2, f3, f2
    fmuls   f30, f0, f7
    fneg    f3, f7
    fmuls   f0, f2, f2
    fadds   f1, f1, f30
    fneg    f6, f2
    fmadds  f31, f7, f7, f0
    stfs    f1, 0xc(r29)
    lfs     f4, 0x18c(sp)
    lfs     f0, 0x34(r29)
    fmuls   f29, f4, f7
    fadds   f0, f0, f29
    stfs    f0, 0x10(r29)
    lfs     f5, 0x190(sp)
    lfs     f0, 0x38(r29)
    fmuls   f28, f5, f7
    fadds   f0, f0, f28
    stfs    f0, 0x14(r29)
    lfs     f1, 0x188(sp)
    lfs     f0, 0x30(r29)
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x54(r29)
    lfs     f0, 0x34(r29)
    fmadds  f0, f4, f3, f0
    stfs    f0, 0x58(r29)
    lfs     f0, 0x38(r29)
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x5c(r29)
    lfs     f0, 0x17c(sp)
    lfs     f1, 0x30(r29)
    fmuls   f0, f0, f6
    fadds   f1, f1, f0
    stfs    f1, 0x24(r29)
    lfs     f4, 0x180(sp)
    lfs     f3, 0x34(r29)
    fmuls   f1, f4, f6
    fmuls   f26, f4, f2
    fadds   f3, f3, f1
    stfs    f3, 0x28(r29)
    lfs     f4, 0x184(sp)
    lfs     f3, 0x38(r29)
    fmuls   f6, f4, f6
    fmuls   f25, f4, f2
    fadds   f3, f3, f6
    stfs    f3, 0x2c(r29)
    lfs     f3, 0x17c(sp)
    lfs     f4, 0x30(r29)
    fmuls   f27, f3, f2
    fadds   f2, f4, f27
    stfs    f2, 0x3c(r29)
    lfs     f2, 0x34(r29)
    fadds   f2, f2, f26
    stfs    f2, 0x40(r29)
    lfs     f2, 0x38(r29)
    fadds   f2, f2, f25
    stfs    f2, 0x44(r29)
    lfs     f2, -0x78ac(rtoc)
    fcmpo   cr0, f31, f2
    ble-    branch_0x80027acc
    frsqrte f5, f31
    lfd     f4, -0x7898(rtoc)
    lfd     f2, -0x7890(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f2, f31, f3, f2
    fmul    f2, f4, f2
    fmul    f2, f31, f2
    frsp    f2, f2
    stfs    f2, 0xd4(sp)
    lfs     f31, 0xd4(sp)
branch_0x80027acc:
    stfs    f0, 0x160(sp)
    addi    r3, sp, 0x160
    addi    r4, r3, 0x0
    stfs    f1, 0x164(sp)
    stfs    f6, 0x168(sp)
    lfs     f0, 0x160(sp)
    fadds   f0, f0, f30
    stfs    f0, 0x160(sp)
    lfs     f0, 0x164(sp)
    fadds   f0, f0, f29
    stfs    f0, 0x164(sp)
    lfs     f0, 0x168(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x168(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x160(sp)
    addi    r3, sp, 0x160
    lfs     f0, 0x30(r29)
    mr      r4, r3
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x0(r29)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x34(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x4(r29)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x38(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x8(r29)
    lfs     f0, 0x160(sp)
    fneg    f0, f0
    stfs    f0, 0x160(sp)
    lfs     f0, 0x164(sp)
    fneg    f0, f0
    stfs    f0, 0x164(sp)
    lfs     f0, 0x168(sp)
    fneg    f0, f0
    stfs    f0, 0x168(sp)
    lfs     f1, 0x160(sp)
    lfs     f0, 0x30(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x60(r29)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x34(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x64(r29)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x38(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x68(r29)
    stfs    f27, 0x160(sp)
    stfs    f26, 0x164(sp)
    stfs    f25, 0x168(sp)
    lfs     f0, 0x160(sp)
    fadds   f0, f0, f30
    stfs    f0, 0x160(sp)
    lfs     f0, 0x164(sp)
    fadds   f0, f0, f29
    stfs    f0, 0x164(sp)
    lfs     f0, 0x168(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x168(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x160(sp)
    lfs     f0, 0x30(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x18(r29)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x34(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x1c(r29)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x38(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x20(r29)
    lfs     f0, 0x160(sp)
    fneg    f0, f0
    stfs    f0, 0x160(sp)
    lfs     f0, 0x164(sp)
    fneg    f0, f0
    stfs    f0, 0x164(sp)
    lfs     f0, 0x168(sp)
    fneg    f0, f0
    stfs    f0, 0x168(sp)
    lfs     f1, 0x160(sp)
    lfs     f0, 0x30(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x48(r29)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x34(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x4c(r29)
    lfs     f1, 0x168(sp)
    lfs     f0, 0x38(r29)
    fmadds  f0, f1, f31, f0
    stfs    f0, 0x50(r29)
    lwz     r0, 0x1f4(sp)
    lfd     f31, 0x1e8(sp)
    lfd     f30, 0x1e0(sp)
    lfd     f29, 0x1d8(sp)
    lfd     f28, 0x1d0(sp)
    lfd     f27, 0x1c8(sp)
    lfd     f26, 0x1c0(sp)
    lfd     f25, 0x1b8(sp)
    lmw     r26, 0x1a0(sp)
    addi    sp, sp, 0x1f0
    mtlr    r0
    blr


.globl setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f: # 0x80027c7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    fmr     f31, f1
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stfd    f27, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    mr      r30, r3
    lfs     f2, 0x0(r4)
    lfs     f1, 0x4(r4)
    fmuls   f2, f2, f2
    lfs     f3, 0x8(r4)
    fmuls   f1, f1, f1
    lfs     f0, -0x78a8(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80027cf0
    lfs     f29, -0x78ac(rtoc)
    fmr     f28, f29
    fmr     f27, f28
    b       branch_0x80027d14

branch_0x80027cf0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x78b0(rtoc)
    lfs     f2, 0x0(r31)
    fmuls   f3, f0, f1
    lfs     f1, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f27, f2, f3
    fmuls   f28, f1, f3
    fmuls   f29, f0, f3
branch_0x80027d14:
    fmr     f1, f31
    bl      sinf
    fmr     f30, f1
    fmr     f1, f31
    bl      cosf
    lfs     f0, -0x78b0(rtoc)
    fmuls   f2, f27, f27
    fmuls   f7, f30, f29
    fsubs   f11, f0, f1
    fmuls   f3, f28, f28
    fmuls   f0, f29, f29
    fmuls   f5, f11, f27
    fmadds  f4, f11, f2, f1
    fmuls   f2, f11, f28
    fmuls   f8, f28, f5
    fmuls   f10, f29, f5
    stfs    f4, 0x0(r30)
    fmuls   f9, f30, f28
    fsubs   f6, f8, f7
    fadds   f4, f8, f7
    fadds   f5, f10, f9
    stfs    f6, 0x4(r30)
    fmuls   f7, f29, f2
    fmuls   f6, f30, f27
    stfs    f5, 0x8(r30)
    fmadds  f2, f11, f3, f1
    stfs    f4, 0xc(r30)
    fsubs   f4, f7, f6
    fsubs   f3, f10, f9
    stfs    f2, 0x10(r30)
    fadds   f2, f7, f6
    stfs    f4, 0x14(r30)
    fmadds  f0, f11, f0, f1
    stfs    f3, 0x18(r30)
    stfs    f2, 0x1c(r30)
    stfs    f0, 0x20(r30)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lfd     f27, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl CLBCalcScaleTranslateMatrix__FPA4_fRC3VecRC3Vec
CLBCalcScaleTranslateMatrix__FPA4_fRC3VecRC3Vec: # 0x80027dd0
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f1, -0x78ac(rtoc)
    stfs    f1, 0x4(r3)
    stfs    f1, 0x8(r3)
    lfs     f0, 0x0(r5)
    stfs    f0, 0xc(r3)
    stfs    f1, 0x10(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x14(r3)
    stfs    f1, 0x18(r3)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x1c(r3)
    stfs    f1, 0x20(r3)
    stfs    f1, 0x24(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x2c(r3)
    blr


.globl CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec
CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec: # 0x80027e20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    lfs     f0, -0x7880(rtoc)
    lfs     f1, 0x0(r4)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, 0x4(r31)
    mr      r30, r3
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, 0x8(r31)
    mr      r31, r3
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r5, -0x5eac(r13)
    clrlwi  r4, r30, 16
    clrlwi  r0, r31, 16
    lwz     r6, -0x5ea8(r13)
    sraw    r4, r4, r5
    sraw    r0, r0, r5
    lwz     r8, -0x5ea4(r13)
    slwi    r4, r4, 2
    slwi    r7, r0, 2
    lfsx    f7, r6, r4
    lfsx    f9, r6, r7
    clrlwi  r0, r3, 16
    sraw    r0, r0, r5
    lfsx    f8, r8, r4
    slwi    r0, r0, 2
    lfsx    f12, r8, r0
    fmuls   f1, f9, f7
    lfsx    f11, r6, r0
    fmuls   f2, f9, f8
    lfsx    f10, r8, r7
    fmuls   f0, f12, f9
    fmuls   f1, f11, f1
    fneg    f3, f11
    fmuls   f0, f7, f0
    fmadds  f4, f10, f12, f1
    fmuls   f1, f11, f10
    fmadds  f3, f3, f10, f0
    stfs    f4, 0x0(r28)
    fmuls   f0, f12, f10
    fmuls   f6, f8, f11
    stfs    f3, 0x4(r28)
    fmuls   f0, f7, f0
    stfs    f2, 0x8(r28)
    fmuls   f5, f8, f12
    fneg    f4, f7
    lfs     f2, 0x0(r29)
    fneg    f3, f9
    stfs    f2, 0xc(r28)
    fmuls   f2, f7, f1
    fmadds  f1, f9, f11, f0
    stfs    f6, 0x10(r28)
    fmadds  f2, f3, f12, f2
    stfs    f5, 0x14(r28)
    fmuls   f0, f10, f8
    stfs    f4, 0x18(r28)
    lfs     f3, 0x4(r29)
    stfs    f3, 0x1c(r28)
    stfs    f2, 0x20(r28)
    stfs    f1, 0x24(r28)
    stfs    f0, 0x28(r28)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x2c(r28)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl CLBCalcPointInCubeRatio__FRC3VecRC3VecRC3VecRC3VecPfPfPf
CLBCalcPointInCubeRatio__FRC3VecRC3VecRC3VecRC3VecPfPfPf: # 0x80027f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stmw    r27, 0x84(sp)
    mr      r27, r5
    mr      r28, r6
    mr      r29, r7
    mr      r30, r8
    mr      r31, r9
    lfs     f0, -0x78ac(rtoc)
    lfs     f5, 0x8(r5)
    lfs     f4, 0x0(r3)
    lfs     f1, 0x0(r4)
    fcmpu   cr0, f0, f5
    lfs     f3, 0x4(r3)
    lfs     f2, 0x4(r4)
    fsubs   f31, f4, f1
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    fsubs   f30, f3, f2
    fsubs   f29, f1, f0
    beq-    branch_0x80028014
    fneg    f1, f5
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    lfsx    f3, r3, r0
    fmuls   f0, f30, f2
    fmuls   f1, f30, f3
    fmadds  f30, f31, f3, f0
    fmsubs  f31, f31, f2, f1
branch_0x80028014:
    lfs     f0, -0x78ac(rtoc)
    lfs     f1, 0x4(r27)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80028068
    fneg    f1, f1
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    fneg    f1, f31
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    lfsx    f3, r4, r0
    lfsx    f4, r3, r0
    fmuls   f0, f29, f3
    fmuls   f2, f29, f4
    fmadds  f29, f1, f4, f0
    fmadds  f31, f31, f3, f2
branch_0x80028068:
    lfs     f0, -0x78ac(rtoc)
    lfs     f1, 0x0(r27)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800280b8
    fneg    f1, f1
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    lfsx    f3, r3, r0
    fmuls   f0, f29, f2
    fmuls   f1, f29, f3
    fmadds  f29, f30, f3, f0
    fmsubs  f30, f30, f2, f1
branch_0x800280b8:
    cmplwi  r29, 0x0
    beq-    branch_0x800280e0
    lfs     f2, 0x0(r28)
    fmr     f3, f31
    lfs     f1, -0x789c(rtoc)
    fneg    f0, f2
    fmuls   f2, f1, f2
    fmuls   f1, f1, f0
    bl      CLBCalcRatio_f___Ffff
    stfs    f1, 0x0(r29)
branch_0x800280e0:
    cmplwi  r30, 0x0
    beq-    branch_0x800280fc
    fmr     f3, f30
    lfs     f1, -0x78ac(rtoc)
    lfs     f2, 0x4(r28)
    bl      CLBCalcRatio_f___Ffff
    stfs    f1, 0x0(r30)
branch_0x800280fc:
    cmplwi  r31, 0x0
    beq-    branch_0x80028124
    lfs     f2, 0x8(r28)
    fmr     f3, f29
    lfs     f1, -0x789c(rtoc)
    fneg    f0, f2
    fmuls   f2, f1, f2
    fmuls   f1, f1, f0
    bl      CLBCalcRatio_f___Ffff
    stfs    f1, 0x0(r31)
branch_0x80028124:
    lmw     r27, 0x84(sp)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec: # 0x80028144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    li      r31, 0x0
    stw     r30, 0x78(sp)
    mr      r30, r6
    stw     r29, 0x74(sp)
    mr      r29, r5
    lfs     f1, -0x78ac(rtoc)
    lfs     f0, 0x4(r5)
    lfs     f5, 0x0(r3)
    lfs     f2, 0x0(r4)
    fcmpu   cr0, f1, f0
    lfs     f4, 0x4(r3)
    lfs     f3, 0x4(r4)
    fsubs   f31, f5, f2
    lfs     f2, 0x8(r3)
    lfs     f0, 0x8(r4)
    fsubs   f30, f4, f3
    fsubs   f29, f2, f0
    bne-    branch_0x800281c0
    lfs     f0, 0x0(r29)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800281c0
    lfs     f0, 0x8(r29)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800282b4
branch_0x800281c0:
    lfs     f0, -0x78ac(rtoc)
    lfs     f1, 0x8(r29)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80028210
    fneg    f1, f1
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    lfsx    f3, r3, r0
    fmuls   f0, f30, f2
    fmuls   f1, f30, f3
    fmadds  f30, f31, f3, f0
    fmsubs  f31, f31, f2, f1
branch_0x80028210:
    lfs     f0, -0x78ac(rtoc)
    lfs     f1, 0x4(r29)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80028264
    fneg    f1, f1
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    fneg    f1, f31
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    lfsx    f3, r4, r0
    lfsx    f4, r3, r0
    fmuls   f0, f29, f3
    fmuls   f2, f29, f4
    fmadds  f29, f1, f4, f0
    fmadds  f31, f31, f3, f2
branch_0x80028264:
    lfs     f0, -0x78ac(rtoc)
    lfs     f1, 0x0(r29)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800282b4
    fneg    f1, f1
    lfs     f0, -0x7880(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    lfsx    f3, r3, r0
    fmuls   f0, f29, f2
    fmuls   f1, f29, f3
    fmadds  f29, f30, f3, f0
    fmsubs  f30, f30, f2, f1
branch_0x800282b4:
    lfs     f2, 0x0(r30)
    lfs     f1, -0x789c(rtoc)
    fneg    f0, f2
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x80028314
    fmuls   f0, f1, f2
    fcmpo   cr0, f31, f0
    bge-    branch_0x80028314
    lfs     f0, -0x78ac(rtoc)
    fcmpo   cr0, f0, f30
    bge-    branch_0x80028314
    lfs     f0, 0x4(r30)
    fcmpo   cr0, f30, f0
    bge-    branch_0x80028314
    lfs     f2, 0x8(r30)
    fneg    f0, f2
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f29
    bge-    branch_0x80028314
    fmuls   f0, f1, f2
    fcmpo   cr0, f29, f0
    bge-    branch_0x80028314
    li      r31, 0x1
branch_0x80028314:
    lwz     r0, 0x9c(sp)
    mr      r3, r31
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x98
    blr


.globl CLBRotatePosAndUp__FssRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
CLBRotatePosAndUp__FssRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80028340
    mflr    r0
    extsh   r3, r3
    stw     r0, 0x4(sp)
    extsh   r0, r4
    xoris   r3, r3, 0x8000
    stwu    sp, -0x248(sp)
    xoris   r0, r0, 0x8000
    lis     r4, 0x4330
    stfd    f31, 0x240(sp)
    stfd    f30, 0x238(sp)
    stmw    r27, 0x224(sp)
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    stw     r3, 0x21c(sp)
    mr      r27, r5
    mr      r28, r6
    stw     r0, 0x214(sp)
    mr      r31, r9
    stw     r4, 0x218(sp)
    lfd     f2, -0x7888(rtoc)
    stw     r4, 0x210(sp)
    mr      r4, r29
    lfd     f1, 0x218(sp)
    lfd     f0, 0x210(sp)
    lwz     r3, 0x0(r8)
    fsubs   f1, f1, f2
    lwz     r0, 0x4(r8)
    fsubs   f0, f0, f2
    lfs     f3, -0x78a0(rtoc)
    stw     r3, 0xfc(sp)
    fmuls   f1, f3, f1
    lfs     f4, -0x78a4(rtoc)
    stw     r0, 0x100(sp)
    fmuls   f0, f3, f0
    addi    r3, sp, 0xfc
    lwz     r0, 0x8(r8)
    fmuls   f31, f4, f1
    fmuls   f30, f4, f0
    stw     r0, 0x104(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xfc(sp)
    fneg    f31, f31
    lwz     r3, 0x100(sp)
    mr      r4, r27
    stw     r0, 0x200(sp)
    lwz     r0, 0x104(sp)
    stw     r3, 0x204(sp)
    fmr     f1, f31
    lfs     f0, -0x78ac(rtoc)
    addi    r3, sp, 0x198
    stw     r0, 0x208(sp)
    stfs    f0, 0x1ac(sp)
    stfs    f0, 0x1a0(sp)
    stfs    f0, 0x1b4(sp)
    stfs    f0, 0x19c(sp)
    stfs    f0, 0x1b0(sp)
    stfs    f0, 0x1a4(sp)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0x1b8(sp)
    stfs    f0, 0x1a8(sp)
    stfs    f0, 0x198(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x200(sp)
    addi    r3, sp, 0xf0
    lwz     r4, 0x204(sp)
    stw     r0, 0x1bc(sp)
    lwz     r0, 0x208(sp)
    stw     r4, 0x1c0(sp)
    addi    r4, sp, 0x200
    lfs     f1, 0x198(sp)
    stw     r0, 0x1c4(sp)
    lfs     f4, 0x1c0(sp)
    lfs     f0, 0x1a4(sp)
    lfs     f3, 0x1bc(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0x1c4(sp)
    lfs     f2, 0x1b0(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x200(sp)
    lfs     f0, 0x1a8(sp)
    lfs     f1, 0x19c(sp)
    fmuls   f0, f4, f0
    lfs     f2, 0x1b4(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x204(sp)
    lfs     f0, 0x1ac(sp)
    lfs     f2, 0x1bc(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x1a0(sp)
    lfs     f3, 0x1b8(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x208(sp)
    lwz     r5, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r5, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0xf8(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xf0(sp)
    fmr     f1, f31
    lwz     r0, 0xf4(sp)
    mr      r4, r27
    stw     r3, 0x0(r30)
    addi    r3, sp, 0x168
    stw     r0, 0x4(r30)
    lwz     r0, 0xf8(sp)
    stw     r0, 0x8(r30)
    lfs     f0, -0x78ac(rtoc)
    stfs    f0, 0x17c(sp)
    stfs    f0, 0x170(sp)
    stfs    f0, 0x184(sp)
    stfs    f0, 0x16c(sp)
    stfs    f0, 0x180(sp)
    stfs    f0, 0x174(sp)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0x188(sp)
    stfs    f0, 0x178(sp)
    stfs    f0, 0x168(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r5, 0x0(r31)
    mr      r4, r29
    lwz     r0, 0x4(r31)
    addi    r3, sp, 0xe4
    lfs     f1, 0x168(sp)
    stw     r5, 0x18c(sp)
    stw     r0, 0x190(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x194(sp)
    lfs     f4, 0x190(sp)
    lfs     f0, 0x174(sp)
    lfs     f2, 0x18c(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0x194(sp)
    lfs     f3, 0x180(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x0(r31)
    lfs     f0, 0x178(sp)
    lfs     f2, 0x18c(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x16c(sp)
    lfs     f3, 0x184(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x4(r31)
    lfs     f0, 0x17c(sp)
    lfs     f2, 0x18c(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x170(sp)
    lfs     f3, 0x188(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x8(r31)
    lwz     r5, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r5, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0xec(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xe4(sp)
    fneg    f31, f30
    lwz     r3, 0xe8(sp)
    mr      r4, r28
    stw     r0, 0x200(sp)
    lwz     r0, 0xec(sp)
    stw     r3, 0x204(sp)
    fmr     f1, f31
    lfs     f0, -0x78ac(rtoc)
    addi    r3, sp, 0x138
    stw     r0, 0x208(sp)
    stfs    f0, 0x14c(sp)
    stfs    f0, 0x140(sp)
    stfs    f0, 0x154(sp)
    stfs    f0, 0x13c(sp)
    stfs    f0, 0x150(sp)
    stfs    f0, 0x144(sp)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0x158(sp)
    stfs    f0, 0x148(sp)
    stfs    f0, 0x138(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x200(sp)
    addi    r3, sp, 0xd8
    lwz     r5, 0x204(sp)
    addi    r4, sp, 0x200
    stw     r0, 0x15c(sp)
    lwz     r0, 0x208(sp)
    stw     r5, 0x160(sp)
    lfs     f1, 0x138(sp)
    stw     r0, 0x164(sp)
    lfs     f4, 0x160(sp)
    lfs     f0, 0x144(sp)
    lfs     f3, 0x15c(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0x164(sp)
    lfs     f2, 0x150(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x200(sp)
    lfs     f0, 0x148(sp)
    lfs     f1, 0x13c(sp)
    fmuls   f0, f4, f0
    lfs     f2, 0x154(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x204(sp)
    lfs     f0, 0x14c(sp)
    lfs     f2, 0x15c(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x140(sp)
    lfs     f3, 0x158(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x208(sp)
    lwz     r5, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r5, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0xe0(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xd8(sp)
    fmr     f1, f31
    lwz     r0, 0xdc(sp)
    mr      r4, r28
    stw     r3, 0x0(r30)
    addi    r3, sp, 0x108
    stw     r0, 0x4(r30)
    lwz     r0, 0xe0(sp)
    stw     r0, 0x8(r30)
    lfs     f0, -0x78ac(rtoc)
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x110(sp)
    stfs    f0, 0x124(sp)
    stfs    f0, 0x10c(sp)
    stfs    f0, 0x120(sp)
    stfs    f0, 0x114(sp)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0x128(sp)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x108(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    lfs     f1, 0x108(sp)
    stw     r3, 0x12c(sp)
    stw     r0, 0x130(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x134(sp)
    lfs     f4, 0x130(sp)
    lfs     f0, 0x114(sp)
    lfs     f2, 0x12c(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0x134(sp)
    lfs     f3, 0x120(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x0(r31)
    lfs     f0, 0x118(sp)
    lfs     f2, 0x12c(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x10c(sp)
    lfs     f3, 0x124(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x4(r31)
    lfs     f0, 0x11c(sp)
    lfs     f2, 0x12c(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x110(sp)
    lfs     f3, 0x128(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x8(r31)
    lwz     r0, 0x24c(sp)
    lfd     f31, 0x240(sp)
    lfd     f30, 0x238(sp)
    lmw     r27, 0x224(sp)
    addi    sp, sp, 0x248
    mtlr    r0
    blr


.globl add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x800287b8
    lfs     f1, 0x0(r3)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r3)
    blr


.globl CLBRevisionLookatByAngleX__FssRC3VecP3Vec
CLBRevisionLookatByAngleX__FssRC3VecP3Vec: # 0x800287ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r30, r5
    mr      r31, r6
    mr      r27, r3
    mr      r28, r4
    lfs     f1, 0x0(r5)
    lfs     f2, 0x0(r6)
    lfs     f4, 0x4(r6)
    fsubs   f30, f2, f1
    lfs     f2, 0x4(r5)
    lfs     f3, 0x8(r6)
    lfs     f1, 0x8(r5)
    fsubs   f2, f4, f2
    fsubs   f31, f3, f1
    lfs     f0, -0x78ac(rtoc)
    fmuls   f6, f30, f30
    fmuls   f5, f31, f31
    fmadds  f1, f2, f2, f6
    fadds   f29, f5, f1
    fcmpo   cr0, f29, f0
    ble-    branch_0x80028884
    frsqrte f4, f29
    lfd     f3, -0x7898(rtoc)
    lfd     f0, -0x7890(rtoc)
    fmul    f1, f4, f4
    fmul    f3, f3, f4
    fnmsub   f0, f29, f1, f0
    fmul    f0, f3, f0
    fmul    f0, f29, f0
    frsp    f0, f0
    stfs    f0, 0x2c(sp)
    lfs     f29, 0x2c(sp)
branch_0x80028884:
    fadds   f1, f6, f5
    lfs     f0, -0x78ac(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800288c0
    frsqrte f5, f1
    lfd     f4, -0x7898(rtoc)
    lfd     f0, -0x7890(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f0, f1, f3, f0
    fmul    f0, f4, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x28(sp)
branch_0x800288c0:
    bl      matan__Fff
    fmr     f1, f31
    mr      r29, r3
    fmr     f2, f30
    bl      matan__Fff
    extsh   r4, r29
    extsh   r0, r28
    cmpw    r4, r0
    addi    r5, r29, 0x0
    ble-    branch_0x800288f0
    mr      r5, r28
    b       branch_0x80028900

branch_0x800288f0:
    extsh   r0, r27
    cmpw    r4, r0
    bge-    branch_0x80028900
    mr      r5, r27
branch_0x80028900:
    lwz     r6, -0x5eac(r13)
    clrlwi  r5, r5, 16
    lwz     r4, -0x5ea4(r13)
    clrlwi  r7, r3, 16
    sraw    r0, r5, r6
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    lfsx    f0, r4, r0
    sraw    r0, r7, r6
    slwi    r0, r0, 2
    lfs     f2, 0x0(r30)
    fmuls   f1, f29, f0
    lfsx    f0, r3, r0
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x0(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f0, 0x4(r30)
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    fmadds  f0, f29, f1, f0
    stfs    f0, 0x4(r31)
    lwz     r3, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r5, r3
    lfs     f2, 0x8(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    sraw    r0, r7, r3
    slwi    r0, r0, 2
    fmuls   f1, f29, f0
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x8(r31)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    lfd     f29, 0x58(sp)
    lmw     r27, 0x44(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl CLBPolarToCross__FRC3VecP3Vecfss
CLBPolarToCross__FRC3VecP3Vecfss: # 0x800289b4
    lwz     r8, -0x5eac(r13)
    clrlwi  r9, r5, 16
    lwz     r7, -0x5ea4(r13)
    clrlwi  r6, r6, 16
    sraw    r0, r9, r8
    slwi    r0, r0, 2
    lwz     r5, -0x5ea8(r13)
    lfsx    f0, r7, r0
    sraw    r0, r6, r8
    slwi    r0, r0, 2
    lfs     f3, 0x0(r3)
    fmuls   f2, f1, f0
    lfsx    f0, r5, r0
    fmuls   f0, f2, f0
    fadds   f0, f3, f0
    stfs    f0, 0x0(r4)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r9, r0
    lfs     f0, 0x4(r3)
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x4(r4)
    lwz     r5, -0x5eac(r13)
    lwz     r7, -0x5ea4(r13)
    sraw    r0, r9, r5
    lfs     f2, 0x8(r3)
    slwi    r0, r0, 2
    lfsx    f0, r7, r0
    sraw    r0, r6, r5
    slwi    r0, r0, 2
    fmuls   f1, f1, f0
    lfsx    f0, r7, r0
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x8(r4)
    blr


.globl CLBCrossToPolar__FRC3VecRC3VecPfPsPs
CLBCrossToPolar__FRC3VecRC3VecPfPsPs: # 0x80028a4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r7
    stw     r30, 0x28(sp)
    mr      r30, r6
    lfs     f1, 0x0(r4)
    lfs     f0, 0x0(r3)
    lfs     f3, 0x4(r4)
    fsubs   f31, f1, f0
    lfs     f2, 0x4(r3)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x8(r3)
    fsubs   f2, f3, f2
    fsubs   f30, f1, f0
    lfs     f0, -0x78ac(rtoc)
    fmuls   f7, f31, f31
    fmuls   f6, f30, f30
    fmadds  f1, f2, f2, f7
    fadds   f5, f6, f1
    fcmpo   cr0, f5, f0
    ble-    branch_0x80028adc
    frsqrte f4, f5
    lfd     f3, -0x7898(rtoc)
    lfd     f0, -0x7890(rtoc)
    fmul    f1, f4, f4
    fmul    f3, f3, f4
    fnmsub   f0, f5, f1, f0
    fmul    f0, f3, f0
    fmul    f0, f5, f0
    frsp    f0, f0
    stfs    f0, 0x20(sp)
    lfs     f5, 0x20(sp)
branch_0x80028adc:
    stfs    f5, 0x0(r5)
    fadds   f1, f7, f6
    lfs     f0, -0x78ac(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80028b1c
    frsqrte f5, f1
    lfd     f4, -0x7898(rtoc)
    lfd     f0, -0x7890(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f0, f1, f3, f0
    fmul    f0, f4, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x1c(sp)
branch_0x80028b1c:
    bl      matan__Fff
    fmr     f1, f30
    sth     r3, 0x0(r30)
    fmr     f2, f31
    bl      matan__Fff
    sth     r3, 0x0(r31)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl CLBChaseSpecialDecrease__FPffff
CLBChaseSpecialDecrease__FPffff: # 0x80028b54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, -0x78b0(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80028b70
    fmr     f2, f0
branch_0x80028b70:
    lfs     f4, 0x0(r3)
    lfs     f0, -0x78ac(rtoc)
    fsubs   f4, f1, f4
    fcmpo   cr0, f3, f0
    fmuls   f2, f2, f4
    cror    2, 1, 2
    bne-    branch_0x80028b94
    fmr     f4, f3
    b       branch_0x80028b98

branch_0x80028b94:
    fneg    f4, f3
branch_0x80028b98:
    lfs     f0, -0x78ac(rtoc)
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80028bb0
    fmr     f0, f2
    b       branch_0x80028bb4

branch_0x80028bb0:
    fneg    f0, f2
branch_0x80028bb4:
    fcmpo   cr0, f0, f4
    bge-    branch_0x80028bc0
    fmr     f2, f3
branch_0x80028bc0:
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CLBChaseDecrease__FPffff
CLBChaseDecrease__FPffff: # 0x80028bd4
    lfs     f0, -0x78b0(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x80028be4
    fmr     f2, f0
branch_0x80028be4:
    lfs     f4, 0x0(r3)
    fsubs   f0, f1, f4
    fmadds  f0, f2, f0, f4
    stfs    f0, 0x0(r3)
    lfs     f2, 0x0(r3)
    lfs     f0, -0x78ac(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80028c10
    b       branch_0x80028c14

branch_0x80028c10:
    fneg    f1, f1
branch_0x80028c14:
    lfs     f0, -0x78ac(rtoc)
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x80028c28
    b       branch_0x80028c2c

branch_0x80028c28:
    fneg    f3, f3
branch_0x80028c2c:
    fcmpo   cr0, f1, f3
    cror    2, 0, 2
    bne-    branch_0x80028c40
    li      r3, 0x0
    blr

branch_0x80028c40:
    li      r3, 0x1
    blr


.globl CLBChaseAngleDecrease__FPsss
CLBChaseAngleDecrease__FPsss: # 0x80028c48
    extsh.  r0, r5
    bne-    branch_0x80028c58
    sth     r4, 0x0(r3)
    b       branch_0x80028c8c

branch_0x80028c58:
    lha     r6, 0x0(r3)
    extsh   r0, r5
    subf    r7, r4, r6
    extsh   r5, r7
    divw    r0, r5, r0
    subf    r7, r0, r7
    add     r7, r7, r4
    extsh   r0, r7
    cmpw    r0, r6
    bne-    branch_0x80028c88
    li      r3, 0x0
    blr

branch_0x80028c88:
    sth     r7, 0x0(r3)
branch_0x80028c8c:
    lha     r3, 0x0(r3)
    extsh   r0, r4
    cmpw    r3, r0
    bne-    branch_0x80028ca4
    li      r3, 0x0
    blr

branch_0x80028ca4:
    li      r3, 0x1
    blr


.globl CLBCalc2DFPos__FPQ29JGeometry8TVec2_f_PA4_CfPA4_CfRC3VecPUlb
CLBCalc2DFPos__FPQ29JGeometry8TVec2_f_PA4_CfPA4_CfRC3VecPUlb: # 0x80028cac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r4, 0x0
    addi    r4, r6, 0x0
    stw     r28, 0x48(sp)
    addi    r28, r3, 0x0
    addi    r3, r5, 0x0
    addi    r5, sp, 0x38
    bl      PSMTXMultVec
    lfs     f4, -0x78ac(rtoc)
    lfs     f6, 0x40(sp)
    fcmpu   cr0, f4, f6
    bne-    branch_0x80028d08
    lfs     f0, -0x787c(rtoc)
    stfs    f0, 0x4(r28)
    stfs    f0, 0x0(r28)
    b       branch_0x80028dac

branch_0x80028d08:
    fneg    f2, f6
    lfs     f3, -0x78b0(rtoc)
    lfs     f1, 0x28(r29)
    clrlwi. r0, r31, 24
    lfs     f0, 0x2c(r29)
    fdivs   f7, f3, f2
    fmadds  f5, f1, f6, f0
    fmuls   f5, f5, f7
    bne-    branch_0x80028d50
    fcmpo   cr0, f5, f4
    bgt-    branch_0x80028d40
    lfs     f0, -0x7878(rtoc)
    fcmpo   cr0, f5, f0
    bge-    branch_0x80028d50
branch_0x80028d40:
    lfs     f0, -0x787c(rtoc)
    stfs    f0, 0x4(r28)
    stfs    f0, 0x0(r28)
    b       branch_0x80028dac

branch_0x80028d50:
    lfs     f0, 0x8(r29)
    cmplwi  r30, 0x0
    lfs     f3, 0x18(r29)
    fmuls   f0, f0, f6
    lfs     f2, 0x0(r29)
    lfs     f1, 0x38(sp)
    fmuls   f3, f3, f6
    lfs     f4, 0x14(r29)
    fmadds  f0, f2, f1, f0
    lfs     f1, 0x3c(sp)
    fmadds  f2, f4, f1, f3
    fmuls   f1, f0, f7
    fmuls   f0, f2, f7
    stfs    f1, 0x0(r28)
    stfs    f0, 0x4(r28)
    beq-    branch_0x80028dac
    lfs     f0, -0x78b0(rtoc)
    lis     r3, 0x100
    subi    r4, r3, 0x1
    fadds   f1, f0, f5
    li      r3, 0x0
    bl      CLBLinearInbetween_Ul___FUlUlf
    stw     r3, 0x0(r30)
branch_0x80028dac:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl CLBLinearInbetween_Ul___FUlUlf
CLBLinearInbetween_Ul___FUlUlf: # 0x80028dcc
    mflr    r0
    subf    r4, r3, r4
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x28(sp)
    stw     r3, 0x1c(sp)
    lfd     f3, -0x7870(rtoc)
    stw     r4, 0x24(sp)
    stw     r0, 0x20(sp)
    stw     r0, 0x18(sp)
    lfd     f2, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f1, f1, f2, f0
    bl      __cvt_fp2unsigned
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __sinit_cameralib_cpp
__sinit_cameralib_cpp: # 0x80028e1c
    lfs     f1, -0x78ac(rtoc)
    lis     r3, 0x803f
    stfsu   f1, -0x298(r3)
    lfs     f0, -0x78b0(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f1, 0x8(r3)
    blr

