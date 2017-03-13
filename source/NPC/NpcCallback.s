
.globl NPCNeckCallBack__FP7J3DNodei
NPCNeckCallBack__FP7J3DNodei: # 0x80208670
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stfd    f31, 0x188(sp)
    stfd    f30, 0x180(sp)
    stw     r31, 0x17c(sp)
    stw     r30, 0x178(sp)
    stw     r29, 0x174(sp)
    stw     r28, 0x170(sp)
    bne-    branch_0x80208a6c
    lwz     r5, -0x6218(r13)
    cmplwi  r5, 0x0
    bne-    branch_0x802086b0
    li      r3, 0x0
    b       branch_0x80208a70

branch_0x802086b0:
    lwz     r0, 0x164(r5)
    li      r4, 0x0
    cmpwi   r0, -0x1
    beq-    branch_0x802086d0
    lwz     r0, 0xf0(r5)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x802086d0
    li      r4, 0x1
branch_0x802086d0:
    clrlwi. r0, r4, 24
    beq-    branch_0x802086e0
    li      r0, 0x1
    b       branch_0x802086e4

branch_0x802086e0:
    li      r0, 0x0
branch_0x802086e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80208a6c
    lis     r4, 0x8040
    lhz     r0, 0x18(r3)
    addi    r3, r4, 0x45dc
    lwz     r4, 0x38(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x230(r5)
    lwz     r4, 0x58(r4)
    lha     r3, 0x0(r3)
    li      r30, 0x0
    add     r31, r4, r0
    sth     r3, 0x156(sp)
    mr      r3, r5
    li      r28, 0x0
    lwz     r4, 0x230(r5)
    li      r29, 0x0
    lha     r0, 0x2(r4)
    sth     r0, 0x154(sp)
    bl      isNeedNeckStraight__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80208748
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8020874c

branch_0x80208748:
    li      r29, 0x1
branch_0x8020874c:
    clrlwi. r0, r29, 24
    beq-    branch_0x802088e8
    lwz     r4, MarioHitActorPos(r13)
    lfs     f0, -0x1d10(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x144(sp)
    lfs     f1, 0x140(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x140(sp)
    lfs     f1, 0x13c(sp)
    lfs     f0, 0xc(r31)
    lfs     f31, 0x140(sp)
    lfs     f2, 0x1c(r31)
    fsubs   f0, f1, f0
    lfs     f1, 0x2c(r31)
    lfs     f3, 0x144(sp)
    fsubs   f2, f31, f2
    stfs    f0, 0x130(sp)
    fsubs   f0, f3, f1
    stfs    f2, 0x134(sp)
    stfs    f0, 0x138(sp)
    lfs     f1, 0x130(sp)
    lfs     f3, 0x138(sp)
    lfs     f0, 0x134(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x1d0c(rtoc)
    fadds   f1, f2, f1
    fadds   f30, f3, f1
    fcmpo   cr0, f30, f0
    ble-    branch_0x80208890
    lwz     r3, -0x6218(r13)
    lwz     r3, 0x228(r3)
    lfs     f1, 0x1e4(r3)
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f30, f1
    bge-    branch_0x80208890
    lfs     f0, 0x1c(r31)
    lwz     r3, -0x6218(r13)
    fsubs   f0, f31, f0
    lwz     r3, 0x228(r3)
    fabs    f1, f0
    lfs     f0, 0x1f8(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80208890
    lfs     f2, 0x24(r31)
    addi    r3, sp, 0x130
    lfs     f1, 0x14(r31)
    mr      r4, r3
    lfs     f0, 0x4(r31)
    stfs    f0, 0x120(sp)
    stfs    f1, 0x124(sp)
    stfs    f2, 0x128(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    addi    r3, sp, 0xcc
    addi    r4, sp, 0x120
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0xd8
    addi    r4, sp, 0x130
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0xd8(sp)
    addi    r3, sp, 0x78
    lwz     r0, 0xdc(sp)
    addi    r4, sp, 0xcc
    stw     r5, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0xe0(sp)
    stw     r0, 0x80(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x78(sp)
    lwz     r3, 0x7c(sp)
    stw     r0, 0x148(sp)
    lwz     r0, 0x80(sp)
    stw     r3, 0x14c(sp)
    stw     r0, 0x150(sp)
    b       branch_0x802088a0

branch_0x80208890:
    lfs     f0, -0x1d08(rtoc)
    stfs    f0, 0x150(sp)
    stfs    f0, 0x14c(sp)
    stfs    f0, 0x148(sp)
branch_0x802088a0:
    lfs     f1, 0x14c(sp)
    lfs     f0, -0x1d04(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r4, -0x6218(r13)
    lwz     r5, 0x228(r4)
    extsh   r4, r3
    lha     r0, 0x360(r5)
    cmpw    r4, r0
    neg     r5, r0
    ble-    branch_0x802088d4
    mr      r3, r0
    b       branch_0x802088e4

branch_0x802088d4:
    extsh   r0, r5
    cmpw    r4, r0
    bge-    branch_0x802088e4
    mr      r3, r5
branch_0x802088e4:
    mr      r28, r3
branch_0x802088e8:
    lwz     r3, -0x6218(r13)
    lwz     r3, 0x228(r3)
    addi    r3, r3, 0x388
    lha     r3, 0x0(r3)
    bl      CLBPalIntSpeed_s___Fs
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, sp, 0x154
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
    clrlwi. r0, r29, 24
    beq-    branch_0x802089c0
    lfs     f1, 0x148(sp)
    lfs     f0, -0x1d04(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r4, -0x6218(r13)
    extsh   r0, r3
    lwz     r6, 0x228(r4)
    addi    r5, r6, 0x34c
    lha     r4, 0x338(r6)
    lha     r5, 0x0(r5)
    cmpw    r0, r5
    ble-    branch_0x8020894c
    mr      r3, r5
    b       branch_0x80208958

branch_0x8020894c:
    cmpw    r0, r4
    bge-    branch_0x80208958
    mr      r3, r4
branch_0x80208958:
    lha     r5, 0x154(sp)
    addi    r29, r3, 0x0
    extsh.  r0, r5
    blt-    branch_0x8020896c
    b       branch_0x80208970

branch_0x8020896c:
    neg     r5, r5
branch_0x80208970:
    addi    r3, r6, 0x360
    lha     r3, 0x0(r3)
    li      r4, 0x0
    bl      CLBCalcRatio_i___Fiii
    extsh   r0, r29
    lfd     f2, -0x1cf8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f3, -0x1d00(rtoc)
    stw     r0, 0x16c(sp)
    lis     r0, 0x4330
    mr      r4, r29
    stw     r0, 0x168(sp)
    lfd     f0, 0x168(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x160(sp)
    lwz     r3, 0x164(sp)
    bl      CLBEaseOutInbetween_s___Fssf
    mr      r30, r3
branch_0x802089c0:
    lwz     r3, -0x6218(r13)
    lwz     r3, 0x228(r3)
    addi    r3, r3, 0x374
    lha     r3, 0x0(r3)
    bl      CLBPalIntSpeed_s___Fs
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, sp, 0x156
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
    lwz     r5, -0x6218(r13)
    lis     r4, 0x4330
    lha     r6, 0x154(sp)
    addi    r3, sp, 0xf0
    lwz     r5, 0x230(r5)
    lha     r0, 0x156(sp)
    sth     r0, 0x0(r5)
    sth     r6, 0x2(r5)
    lha     r5, 0x156(sp)
    lha     r0, 0x154(sp)
    xoris   r5, r5, 0x8000
    lfd     f3, -0x1cf8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r5, 0x164(sp)
    lfs     f4, -0x1cfc(rtoc)
    stw     r0, 0x16c(sp)
    lfs     f2, -0x1d08(rtoc)
    stw     r4, 0x160(sp)
    stw     r4, 0x168(sp)
    lfd     f1, 0x160(sp)
    lfd     f0, 0x168(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0xf0
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r31, 0x0
    bl      PSMTXCopy
branch_0x80208a6c:
    li      r3, 0x1
branch_0x80208a70:
    lwz     r0, 0x194(sp)
    lfd     f31, 0x188(sp)
    lfd     f30, 0x180(sp)
    mtlr    r0
    lwz     r31, 0x17c(sp)
    lwz     r30, 0x178(sp)
    lwz     r29, 0x174(sp)
    lwz     r28, 0x170(sp)
    addi    sp, sp, 0x190
    blr


.globl CLBEaseOutInbetween_s___Fssf
CLBEaseOutInbetween_s___Fssf: # 0x80208a98
    mflr    r0
    extsh   r5, r4
    stw     r0, 0x4(sp)
    extsh   r0, r3
    subf    r0, r5, r0
    stwu    sp, -0x18(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfd     f2, -0x1cf8(rtoc)
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f2, f0, f2
    bl      CLBTwoDegreeGeneralInbetween_s___Fssff
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CLBCalcRatio_i___Fiii
CLBCalcRatio_i___Fiii: # 0x80208ae0
    stwu    sp, -0x28(sp)
    cmpw    r3, r4
    lfs     f1, -0x1d08(rtoc)
    beq-    branch_0x80208b34
    subf    r0, r3, r4
    lfd     f2, -0x1cf8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1cf0(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    subf    r3, r3, r5
    stw     r0, 0x18(sp)
    xoris   r3, r3, 0x8000
    lfd     f0, 0x18(sp)
    stw     r3, 0x24(sp)
    fsubs   f0, f0, f2
    stw     r0, 0x20(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
branch_0x80208b34:
    addi    sp, sp, 0x28
    blr


.globl CLBPalIntSpeed_s___Fs
CLBPalIntSpeed_s___Fs: # 0x80208b3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    extsh   r0, r31
    lfd     f2, -0x1cf8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    stw     r0, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f2
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

