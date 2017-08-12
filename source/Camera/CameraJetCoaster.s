
.globl __ct__17TCameraJetCoasterFv
__ct__17TCameraJetCoasterFv: # 0x80030dcc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    sth     r4, 0x4(r3)
    li      r3, 0x80
    sth     r4, 0x6(r31)
    sth     r4, 0x8(r31)
    sth     r4, 0xa(r31)
    stb     r0, 0xc(r31)
    lfs     f1, -0x75c0(r2)
    stfs    f1, 0x10(r31)
    stfs    f1, 0x14(r31)
    lfs     f0, -0x75bc(r2)
    stfs    f0, 0x18(r31)
    stfs    f1, 0x1c(r31)
    stfs    f1, 0x20(r31)
    stfs    f1, 0x24(r31)
    stfs    f1, 0x28(r31)
    lfs     f0, -0x75b8(r2)
    stfs    f0, 0x2c(r31)
    stfs    f1, 0x30(r31)
    lfs     f0, -0x75b4(r2)
    stfs    f0, 0x34(r31)
    sth     r4, 0x38(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80030e54
    mr      r3, r30
    bl      __ct__18TCamSaveJetCoasterFv
branch_0x80030e54:
    stw     r30, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl ctrlJetCoasterCamera___15CPolarSubCameraFv
ctrlJetCoasterCamera___15CPolarSubCameraFv: # 0x80030e74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2b0(sp)
    stfd    f31, 0x2a8(sp)
    stfd    f30, 0x2a0(sp)
    stfd    f29, 0x298(sp)
    stw     r31, 0x294(sp)
    mr      r31, r3
    stw     r30, 0x290(sp)
    stw     r29, 0x28c(sp)
    stw     r28, 0x288(sp)
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0x3a
    bne-    branch_0x80031040
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80031040
    lis     r4, unk_00060001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00060001@l
    bl      getFlag__12TFlagManagerCFUl
    mr      r29, r3
    lwz     r3, R13Off_m0x62b0(r13)
    lis     r4, unk_40000132@h
    addi    r4, r4, unk_40000132@l
    bl      getObjNumWithActorType__18TMapObjBaseManagerCFUl
    lwz     r4, 0x2b8(r31)
    lhzu    r0, 0x38(r4)
    cmplwi  r0, 0x2
    ble-    branch_0x80030f28
    lhz     r3, 0x0(r4)
    addi    r0, r3, -0x1
    sth     r0, 0x0(r4)
    lwz     r3, 0x2b8(r31)
    lhzu    r0, 0x38(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80031040
    li      r0, 0x1
    sth     r0, 0x0(r3)
    li      r4, 0xe05
    li      r5, 0x0
    lwz     r3, R13Off_m0x6048(r13)
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    b       branch_0x80031040

branch_0x80030f28:
    cmplwi  r0, 0x1
    beq-    branch_0x80031040
    cmplw   r29, r3
    li      r30, -0x1
    bne-    branch_0x80030f64
    lis     r4, unk_00030005@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r5, r4, unk_00030005@l
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lwz     r3, 0x2b8(r31)
    li      r0, 0x12c
    li      r30, 0x2a
    sth     r0, 0x38(r3)
    b       branch_0x80031024

branch_0x80030f64:
    lwz     r4, R13Off_m0x6048(r13)
    lwz     r0, 0x58(r4)
    cmpwi   r0, 0x1d4c
    beq-    branch_0x80030fc8
    bge-    branch_0x80030f90
    cmpwi   r0, 0x1db
    beq-    branch_0x80030fc0
    bge-    branch_0x80031024
    cmpwi   r0, 0x3c
    beq-    branch_0x80030fa8
    b       branch_0x80031024

branch_0x80030f90:
    cmpwi   r0, 0x57e4
    beq-    branch_0x80030fec
    bge-    branch_0x80031024
    cmpwi   r0, 0x3a98
    beq-    branch_0x80030fd0
    b       branch_0x80031024

branch_0x80030fa8:
    lwz     r0, 0x74(r4)
    addi    r5, r3, 0x0
    li      r4, 0x0
    mr      r3, r0
    bl      startAppearJetBalloon__11TGCConsole2Fii
    b       branch_0x80031024

branch_0x80030fc0:
    li      r30, 0x26
    b       branch_0x80031024

branch_0x80030fc8:
    li      r30, 0x27
    b       branch_0x80031024

branch_0x80030fd0:
    subf    r0, r29, r3
    cmplwi  r0, 0x7
    blt-    branch_0x80030fe4
    li      r30, 0x28
    b       branch_0x80031024

branch_0x80030fe4:
    li      r30, 0x29
    b       branch_0x80031024

branch_0x80030fec:
    lwz     r3, R13Off_m0x60d8(r13)
    bl      loserExec__6TMarioFv
    li      r0, 0xe10
    stw     r0, 0x78(r31)
    li      r0, 0x0
    lis     r3, sFixCameraPos_localstatic0_drawJetCoasterBalloonMessage___15CPolarSubCameraFv@h
    stw     r0, 0x7c(r31)
    addi    r4, r3, sFixCameraPos_localstatic0_drawJetCoasterBalloonMessage___15CPolarSubCameraFv@l
    addi    r3, r31, 0x0
    addi    r5, r31, 0x3c
    bl      warpPosAndAt__15CPolarSubCameraFRC3VecRC3Vec
    lwz     r3, 0x2b8(r31)
    li      r0, 0x1
    sth     r0, 0x38(r3)
branch_0x80031024:
    cmpwi   r30, -0x1
    beq-    branch_0x80031040
    lwz     r3, R13Off_m0x6048(r13)
    addi    r4, r30, 0x0
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x80031040:
    lwz     r3, 0x120(r31)
    li      r29, 0x0
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x800310a8
    lwz     r3, 0x2b8(r31)
    li      r29, 0x1
    li      r30, 0x4825
    lbz     r0, 0xc(r3)
    xori     r0, r0, 0x1
    stb     r0, 0xc(r3)
    lwz     r3, 0x2b8(r31)
    lbz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80031080
    li      r30, 0x4824
branch_0x80031080:
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800310a8
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x800310a8:
    lwz     r3, 0x2b8(r31)
    lbz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80031564
    clrlwi. r0, r29, 24
    beq-    branch_0x800310cc
    addi    r3, r31, 0x0
    li      r4, 0x2e
    bl      setUpToLButtonCamera___15CPolarSubCameraFi
branch_0x800310cc:
    lwz     r3, 0x120(r31)
    lwz     r0, 0x7c(r31)
    lfs     f0, 0xac(r3)
    cmplwi  r0, 0x0
    fneg    f29, f0
    bne-    branch_0x800310f0
    addi    r3, r31, 0x0
    addi    r4, r31, 0x8c
    bl      getNozzleTopPos___15CPolarSubCameraCFPQ29JGeometry8TVec3_f_
branch_0x800310f0:
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80031120
    mr      r3, r31
    fmr     f1, f29
    bl      rotateX_ByStickY___15CPolarSubCameraFf
    mr      r3, r31
    bl      calcAngleXFromXRotRatio___15CPolarSubCameraCFv
    sth     r3, 0xa4(r31)
    lwz     r3, R13Off_m0x60d8(r13)
    lha     r0, 0x410(r3)
    sth     r0, 0xa6(r31)
branch_0x80031120:
    lwz     r4, 0x8c(r31)
    mr      r3, r31
    lwz     r0, 0x90(r31)
    stw     r4, 0x248(sp)
    stw     r0, 0x24c(sp)
    lwz     r0, 0x94(r31)
    stw     r0, 0x250(sp)
    bl      getOffsetAngleX__15CPolarSubCameraCFv
    lha     r0, 0xa4(r31)
    add     r30, r0, r3
    addi    r3, r31, 0x0
    bl      getOffsetAngleY__15CPolarSubCameraCFv
    lha     r0, 0xa6(r31)
    add     r28, r0, r3
    addi    r3, r31, 0x0
    bl      getToroccoMtx___15CPolarSubCameraCFv
    lfs     f2, 0x20(r3)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x23c(sp)
    stfs    f1, 0x240(sp)
    stfs    f2, 0x244(sp)
    lfs     f2, 0x24(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x230(sp)
    stfs    f1, 0x234(sp)
    stfs    f2, 0x238(sp)
    lfs     f30, 0x8(r3)
    lfs     f31, 0x18(r3)
    lfs     f29, 0x28(r3)
    mr      r3, r31
    lfs     f0, 0x230(sp)
    stfs    f0, 0x30(r31)
    lfs     f0, 0x234(sp)
    stfs    f0, 0x34(r31)
    lfs     f0, 0x238(sp)
    stfs    f0, 0x38(r31)
    bl      calcDistFromXRotRatio___15CPolarSubCameraCFv
    fneg    f1, f1
    lfs     f0, 0x248(sp)
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    fmadds  f0, f30, f1, f0
    addi    r5, sp, 0x23c
    addi    r6, sp, 0x230
    stfs    f0, 0x98(r31)
    addi    r7, sp, 0x248
    addi    r8, r31, 0x98
    lfs     f0, 0x24c(sp)
    addi    r9, r31, 0x30
    fmadds  f0, f31, f1, f0
    stfs    f0, 0x9c(r31)
    lfs     f0, 0x250(sp)
    fmadds  f0, f29, f1, f0
    stfs    f0, 0xa0(r31)
    bl      CLBRotatePosAndUp__FssRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lfs     f1, 0x248(sp)
    addi    r3, sp, 0x218
    lfs     f0, 0x98(r31)
    mr      r4, r3
    lfs     f3, 0x24c(sp)
    lfs     f2, 0x9c(r31)
    fsubs   f0, f1, f0
    lfs     f4, 0x250(sp)
    lfs     f1, 0xa0(r31)
    fsubs   f2, f3, f2
    stfs    f0, 0x218(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x21c(sp)
    stfs    f0, 0x220(sp)
    lfs     f30, -0x75b8(r2)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x75b0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80031268
    lfs     f0, -0x75c0(r2)
    stfs    f0, 0x220(sp)
    stfs    f0, 0x21c(sp)
    stfs    f0, 0x218(sp)
    b       branch_0x8003127c

branch_0x80031268:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x218
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8003127c:
    lwz     r5, 0x30(r31)
    addi    r3, sp, 0x20c
    lwz     r0, 0x34(r31)
    mr      r4, r3
    stw     r5, 0x20c(sp)
    stw     r0, 0x210(sp)
    lwz     r0, 0x38(r31)
    stw     r0, 0x214(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x68(r31)
    addi    r4, sp, 0x218
    lfs     f3, 0xa8(r31)
    lfs     f2, 0x28(r3)
    lfs     f1, 0x24(r3)
    addi    r3, sp, 0x190
    lfs     f0, 0x20c(sp)
    fmadds  f1, f3, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x20c(sp)
    lfs     f0, 0x210(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x210(sp)
    lfs     f0, 0x214(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x214(sp)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x20c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x210(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lfs     f1, 0xa0(r31)
    lfs     f0, 0x214(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(r31)
    lfs     f1, 0x248(sp)
    lfs     f0, 0x20c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x248(sp)
    lfs     f1, 0x24c(sp)
    lfs     f0, 0x210(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x24c(sp)
    lfs     f1, 0x250(sp)
    lfs     f0, 0x214(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x250(sp)
    lwz     r5, 0x30(r31)
    lwz     r0, 0x34(r31)
    lfs     f0, -0x75c0(r2)
    stw     r5, 0x20c(sp)
    stw     r0, 0x210(sp)
    lwz     r0, 0x38(r31)
    stw     r0, 0x214(sp)
    stfs    f0, 0x1a4(sp)
    stfs    f0, 0x198(sp)
    stfs    f0, 0x1ac(sp)
    stfs    f0, 0x194(sp)
    stfs    f0, 0x1a8(sp)
    stfs    f0, 0x19c(sp)
    lfs     f0, -0x75b8(r2)
    stfs    f0, 0x1b0(sp)
    stfs    f0, 0x1a0(sp)
    stfs    f0, 0x190(sp)
    lfs     f1, -0x75ac(r2)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x20c(sp)
    lwz     r3, 0x210(sp)
    stw     r0, 0x1b4(sp)
    lwz     r0, 0x214(sp)
    stw     r3, 0x1b8(sp)
    lfs     f1, 0x190(sp)
    stw     r0, 0x1bc(sp)
    lfs     f4, 0x1b8(sp)
    lfs     f0, 0x19c(sp)
    lfs     f3, 0x1b4(sp)
    fmuls   f0, f4, f0
    lfs     f5, 0x1bc(sp)
    lfs     f2, 0x1a8(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x20c(sp)
    lfs     f0, 0x1a0(sp)
    lfs     f1, 0x194(sp)
    fmuls   f0, f4, f0
    lfs     f2, 0x1ac(sp)
    fmadds  f0, f3, f1, f0
    fmadds  f0, f5, f2, f0
    stfs    f0, 0x210(sp)
    lfs     f0, 0x1a4(sp)
    lfs     f2, 0x1b4(sp)
    fmuls   f0, f4, f0
    lfs     f1, 0x198(sp)
    lfs     f3, 0x1b0(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f5, f3, f0
    stfs    f0, 0x214(sp)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x20c(sp)
    lfs     f1, 0x5c(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x20c(sp)
    lfs     f0, 0x210(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x210(sp)
    lfs     f0, 0x214(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x214(sp)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x20c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x210(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lfs     f1, 0xa0(r31)
    lfs     f0, 0x214(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(r31)
    lfs     f1, 0x248(sp)
    lfs     f0, 0x20c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x248(sp)
    lfs     f1, 0x24c(sp)
    lfs     f0, 0x210(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x24c(sp)
    lfs     f1, 0x250(sp)
    lfs     f0, 0x214(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x250(sp)
    lfs     f2, -0x75c0(r2)
    lfs     f1, 0x234(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800314c4
    lfs     f0, 0x230(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800314bc
    lfs     f1, -0x75a8(r2)
    b       branch_0x80031544

branch_0x800314bc:
    lfs     f1, -0x75a4(r2)
    b       branch_0x80031544

branch_0x800314c4:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80031508
    lfs     f2, 0x230(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x75c8(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x75a0(r2)
    stw     r0, 0x284(sp)
    lis     r0, 0x4330
    stw     r0, 0x280(sp)
    lfd     f1, 0x280(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fneg    f1, f0
    b       branch_0x80031544

branch_0x80031508:
    fneg    f1, f1
    lfs     f2, 0x230(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x75c8(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x75a0(r2)
    stw     r0, 0x284(sp)
    lis     r0, 0x4330
    lfs     f0, -0x759c(r2)
    stw     r0, 0x280(sp)
    lfd     f2, 0x280(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fadds   f1, f0, f1
branch_0x80031544:
    lfs     f0, -0x7598(r2)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    sth     r3, 0x254(r31)
    lwz     r3, 0x68(r31)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x48(r31)
    b       branch_0x80031814

branch_0x80031564:
    clrlwi. r0, r29, 24
    beq-    branch_0x80031574
    mr      r3, r31
    bl      setUpFromLButtonCamera___15CPolarSubCameraFv
branch_0x80031574:
    lwz     r30, 0x2b8(r31)
    lis     r4, 0x4330
    lwz     r5, 0x120(r31)
    lwz     r3, 0x0(r30)
    lha     r0, 0x8(r30)
    lha     r3, 0x40(r3)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x75c8(r2)
    xoris   r3, r3, 0x8000
    stw     r0, 0x27c(sp)
    lfs     f3, 0xc4(r5)
    stw     r3, 0x284(sp)
    lfs     f4, 0xc0(r5)
    stw     r4, 0x280(sp)
    stw     r4, 0x278(sp)
    lfd     f1, 0x280(sp)
    lfd     f0, 0x278(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fnmsubs  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x270(sp)
    lwz     r0, 0x274(sp)
    sth     r0, 0x8(r30)
    lwz     r3, 0x0(r30)
    lha     r0, 0xa(r30)
    lha     r3, 0x54(r3)
    xoris   r0, r0, 0x8000
    xoris   r3, r3, 0x8000
    stw     r0, 0x264(sp)
    stw     r3, 0x26c(sp)
    stw     r4, 0x268(sp)
    stw     r4, 0x260(sp)
    lfd     f1, 0x268(sp)
    lfd     f0, 0x260(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f4, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x258(sp)
    lwz     r0, 0x25c(sp)
    sth     r0, 0xa(r30)
    lwz     r3, 0x0(r30)
    lha     r4, 0x8(r30)
    lha     r0, 0x18(r3)
    cmpw    r4, r0
    neg     r3, r0
    ble-    branch_0x8003163c
    mr      r4, r0
    b       branch_0x8003164c

branch_0x8003163c:
    extsh   r0, r3
    cmpw    r4, r0
    bge-    branch_0x8003164c
    mr      r4, r3
branch_0x8003164c:
    sth     r4, 0x8(r30)
    lwz     r3, 0x0(r30)
    lha     r4, 0xa(r30)
    lha     r0, 0x2c(r3)
    cmpw    r4, r0
    neg     r3, r0
    ble-    branch_0x80031670
    mr      r4, r0
    b       branch_0x80031680

branch_0x80031670:
    extsh   r0, r3
    cmpw    r4, r0
    bge-    branch_0x80031680
    mr      r4, r3
branch_0x80031680:
    sth     r4, 0xa(r30)
    addi    r3, r30, 0x4
    lwz     r5, 0x0(r30)
    lha     r4, 0x8(r30)
    addi    r5, r5, 0x68
    lha     r5, 0x0(r5)
    bl      CLBChaseAngleDecrease__FPsss
    lwz     r5, 0x0(r30)
    addi    r3, r30, 0x6
    lha     r4, 0xa(r30)
    addi    r5, r5, 0x7c
    lha     r5, 0x0(r5)
    bl      CLBChaseAngleDecrease__FPsss
    lwz     r6, 0x2b8(r31)
    addi    r3, sp, 0x1f4
    addi    r4, r3, 0x0
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x98(r31)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x18(r6)
    stw     r0, 0xa0(r31)
    lwz     r6, 0x2b8(r31)
    lwz     r5, 0x1c(r6)
    lwz     r0, 0x20(r6)
    stw     r5, 0x8c(r31)
    stw     r0, 0x90(r31)
    lwz     r0, 0x24(r6)
    stw     r0, 0x94(r31)
    lwz     r6, 0x2b8(r31)
    lwz     r5, 0x28(r6)
    lwz     r0, 0x2c(r6)
    stw     r5, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x30(r6)
    stw     r0, 0x38(r31)
    lwz     r5, 0x2b8(r31)
    lfs     f0, 0x34(r5)
    stfs    f0, 0x48(r31)
    lwz     r5, 0x8c(r31)
    lwz     r0, 0x90(r31)
    lwz     r6, R13Off_m0x60b4(r13)
    stw     r5, 0x248(sp)
    stw     r0, 0x24c(sp)
    lwz     r0, 0x94(r31)
    stw     r0, 0x250(sp)
    lfs     f1, 0x0(r6)
    lfs     f0, 0x98(r31)
    lfs     f3, 0x4(r6)
    lfs     f2, 0x9c(r31)
    fsubs   f0, f1, f0
    lfs     f4, 0x8(r6)
    lfs     f1, 0xa0(r31)
    fsubs   f2, f3, f2
    stfs    f0, 0x1f4(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x1f8(sp)
    stfs    f0, 0x1fc(sp)
    lfs     f30, -0x75b8(r2)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x75b0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80031794
    lfs     f0, -0x75c0(r2)
    stfs    f0, 0x1fc(sp)
    stfs    f0, 0x1f8(sp)
    stfs    f0, 0x1f4(sp)
    b       branch_0x800317a8

branch_0x80031794:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x1f4
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x800317a8:
    lfs     f5, 0x1f8(sp)
    addi    r3, sp, 0x200
    lfs     f6, 0x38(r31)
    mr      r4, r3
    lfs     f3, 0x30(r31)
    lfs     f2, 0x1fc(sp)
    fmuls   f0, f6, f5
    lfs     f7, 0x34(r31)
    lfs     f4, 0x1f4(sp)
    fmuls   f1, f3, f2
    fmsubs  f0, f7, f2, f0
    fmuls   f2, f7, f4
    fmsubs  f1, f6, f4, f1
    stfs    f0, 0x200(sp)
    fmsubs  f0, f3, f5, f2
    stfs    f1, 0x204(sp)
    stfs    f0, 0x208(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x2b8(r31)
    addi    r6, r31, 0x30
    lwz     r7, R13Off_m0x60b4(r13)
    mr      r9, r6
    lha     r4, 0x6(r3)
    lha     r3, 0x4(r3)
    addi    r5, sp, 0x200
    addi    r8, r31, 0x98
    bl      CLBRotatePosAndUp__FssRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
branch_0x80031814:
    lwz     r4, 0x98(r31)
    clrlwi. r0, r29, 24
    lwz     r3, 0x9c(r31)
    stw     r4, 0x80(r31)
    stw     r3, 0x84(r31)
    lwz     r0, 0xa0(r31)
    stw     r0, 0x88(r31)
    beq-    branch_0x80031880
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80031858
    lwz     r3, 0x80(r31)
    lwz     r0, 0x84(r31)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x88(r31)
    stw     r0, 0x18(r31)
branch_0x80031858:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80031928
    lwz     r3, 0x248(sp)
    lwz     r0, 0x24c(sp)
    stw     r3, 0x3c(r31)
    stw     r0, 0x40(r31)
    lwz     r0, 0x250(sp)
    stw     r0, 0x44(r31)
    b       branch_0x80031928

branch_0x80031880:
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800318d4
    lwz     r4, 0x68(r31)
    addi    r3, r31, 0x10
    lfs     f1, 0x80(r31)
    lfs     f2, 0x94(r4)
    lfs     f31, 0x9c(r4)
    fmr     f30, f2
    lfs     f3, -0x75c0(r2)
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f31
    lfs     f1, 0x84(r31)
    lfs     f3, -0x75c0(r2)
    addi    r3, r31, 0x14
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f30
    lfs     f1, 0x88(r31)
    lfs     f3, -0x75c0(r2)
    addi    r3, r31, 0x18
    bl      CLBChaseDecrease__FPffff
branch_0x800318d4:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80031928
    lwz     r4, 0x68(r31)
    addi    r3, r31, 0x3c
    lfs     f1, 0x248(sp)
    lfs     f2, 0xa4(r4)
    lfs     f30, 0xa8(r4)
    fmr     f31, f2
    lfs     f3, -0x75c0(r2)
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f30
    lfs     f1, 0x24c(sp)
    lfs     f3, -0x75c0(r2)
    addi    r3, r31, 0x40
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f31
    lfs     f1, 0x250(sp)
    lfs     f3, -0x75c0(r2)
    addi    r3, r31, 0x44
    bl      CLBChaseDecrease__FPffff
branch_0x80031928:
    lwz     r0, 0x2b4(sp)
    lfd     f31, 0x2a8(sp)
    lfd     f30, 0x2a0(sp)
    mtlr    r0
    lfd     f29, 0x298(sp)
    lwz     r31, 0x294(sp)
    lwz     r30, 0x290(sp)
    lwz     r29, 0x28c(sp)
    lwz     r28, 0x288(sp)
    addi    sp, sp, 0x2b0
    blr


.globl __sinit_CameraJetCoaster_cpp
__sinit_CameraJetCoaster_cpp: # 0x80031954
    mflr    r0
    lis     r3, unk_803efe30@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803efe30@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8003199c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8003199c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800319cc
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800319cc:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800319fc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800319fc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80031a2c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80031a2c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80031a5c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80031a5c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80031a8c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80031a8c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80031abc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80031abc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80031aec
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80031aec:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80031b1c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80031b1c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80031b4c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80031b4c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80031b7c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80031b7c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80031bac
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80031bac:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80031bdc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80031bdc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80031c0c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80031c0c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80031c3c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80031c3c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

