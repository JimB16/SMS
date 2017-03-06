
.globl playerControl__6TMarioFPQ26JDrama9TGraphics
playerControl__6TMarioFPQ26JDrama9TGraphics: # 0x8024de38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    mr      r31, r4
    stw     r30, 0xd8(sp)
    mr      r30, r3
    stw     r29, 0xd4(sp)
    lha     r0, 0x96(r3)
    sth     r0, 0x9c(r3)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r30)
    stw     r3, 0x29c(r30)
    stw     r0, 0x2a0(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x2a4(r30)
    lhz     r0, 0x114(r30)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0x114(r30)
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8024debc
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1308
    beq-    branch_0x8024debc
    lis     r4, 0x1000
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1308
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8024debc:
    lwz     r0, -0x60d8(r13)
    cmplw   r0, r30
    bne-    branch_0x8024df20
    lwz     r3, -0x7118(r13)
    lwz     r4, 0x50(r3)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x8024df20
    lwz     r0, 0x7c(r30)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x14b
    blt-    branch_0x8024def4
    cmplwi  r0, 0x14f
    ble-    branch_0x8024df20
branch_0x8024def4:
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8024df20
    lwz     r3, -0x7118(r13)
    lha     r29, 0x258(r3)
    bl      getOffsetAngleY__15CPolarSubCameraCFv
    addis   r4, r29, 0x1
    subi    r0, r4, 0x8000
    subf    r0, r3, r0
    sth     r0, 0x96(r30)
branch_0x8024df20:
    li      r0, 0x0
    stw     r0, 0x74(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      makeHistory__6TMarioFv
    mr      r3, r30
    bl      checkCurrentPlane__6TMarioFv
    mr      r3, r30
    bl      checkRideMovement__6TMarioFv
    lwz     r3, 0x74(r30)
    clrlwi. r0, r3, 30
    bne-    branch_0x8024df6c
    ori     r0, r3, 0x20
    stw     r0, 0x74(r30)
branch_0x8024df6c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xd8(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      considerTake__6TMarioFv
    lwz     r3, 0x3f0(r30)
    li      r29, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024dfa8
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024dfa8
    li      r29, 0x1
branch_0x8024dfa8:
    clrlwi. r0, r29, 24
    beq-    branch_0x8024dfcc
    lwz     r3, 0x4fc(r30)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x8024dfcc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getOffYoshi__6TMarioFb
branch_0x8024dfcc:
    mr      r3, r30
    bl      thinkYoshiHeadCollision__6TMarioFv
    lwz     r5, 0x108(r30)
    lis     r4, 0x4330
    lha     r0, 0x410(r30)
    mr      r3, r30
    lha     r5, 0x0(r5)
    xoris   r0, r0, 0x8000
    lfd     f3, -0xfe8(rtoc)
    xoris   r5, r5, 0x8000
    stw     r0, 0xc4(sp)
    lfs     f1, 0x870(r30)
    stw     r5, 0xcc(sp)
    stw     r4, 0xc8(sp)
    stw     r4, 0xc0(sp)
    lfd     f2, 0xc8(sp)
    lfd     f0, 0xc0(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f0, f2, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    sth     r0, 0x410(r30)
    bl      stateMachine__6TMarioFv
    mr      r3, r30
    bl      stateMachineUpper__6TMarioFv
    mr      r3, r30
    bl      thinkSituation__6TMarioFv
    mr      r3, r30
    bl      thinkWaterSurface__6TMarioFv
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8024e05c
    li      r0, 0x1
    b       branch_0x8024e060

branch_0x8024e05c:
    li      r0, 0x0
branch_0x8024e060:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024e0c0
    lwz     r3, 0xe0(r30)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x8024e090
    cmplwi  r0, 0x4701
    beq-    branch_0x8024e090
    cmplwi  r0, 0x8701
    beq-    branch_0x8024e090
    cmplwi  r0, 0xc701
    bne-    branch_0x8024e098
branch_0x8024e090:
    li      r0, 0x1
    b       branch_0x8024e09c

branch_0x8024e098:
    li      r0, 0x0
branch_0x8024e09c:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024e0c0
    lwz     r0, 0x118(r30)
    addi    r3, r30, 0x0
    oris    r0, r0, 0x4
    stw     r0, 0x118(r30)
    bl      emitSandEffect__6TMarioFv
    b       branch_0x8024e0cc

branch_0x8024e0c0:
    lwz     r0, 0x118(r30)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0x118(r30)
branch_0x8024e0cc:
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8024e0e0
    li      r0, 0x1
    b       branch_0x8024e0e4

branch_0x8024e0e0:
    li      r0, 0x0
branch_0x8024e0e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024e10c
    lfs     f2, 0x14(r30)
    lfs     f1, 0xec(r30)
    lfs     f0, 0x36c(r30)
    fsubs   f1, f2, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x8024e114
    stfs    f1, 0x36c(r30)
    b       branch_0x8024e114

branch_0x8024e10c:
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x36c(r30)
branch_0x8024e114:
    lhz     r0, 0x96(r30)
    mr      r3, r30
    lwz     r6, -0x5eac(r13)
    addi    r4, sp, 0xa4
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r0, r6
    lfs     f1, 0x15c(r30)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r30)
    lfsx    f2, r5, r0
    lwz     r5, -0x5ea4(r13)
    fmadds  f0, f1, f2, f0
    lfs     f1, -0xff4(rtoc)
    stfs    f0, 0xa4(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0xa8(sp)
    lhz     r0, 0x96(r30)
    lfs     f3, 0x15c(r30)
    sraw    r0, r0, r6
    lfs     f0, 0x18(r30)
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0xac(sp)
    lfs     f2, 0x15c(r30)
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r3, 0x0
    bne-    branch_0x8024e1e8
    lha     r3, 0x96(r30)
    addi    r4, sp, 0x5c
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea4(r13)
    slwi    r0, r0, 2
    lfs     f3, -0xff0(rtoc)
    lfsx    f1, r5, r0
    lfsx    f0, r3, r0
    fmuls   f5, f3, f1
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    fmuls   f4, f3, f0
    lfs     f0, 0x18(r30)
    fadds   f1, f1, f5
    lwz     r3, -0x6328(r13)
    fadds   f2, f3, f2
    fadds   f3, f0, f4
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, 0x14(r30)
    fsubs   f0, f0, f1
    stfs    f0, 0x370(r30)
    b       branch_0x8024e1f0

branch_0x8024e1e8:
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x370(r30)
branch_0x8024e1f0:
    mr      r3, r30
    bl      thinkParams__6TMarioFv
    lwz     r3, 0x2c0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8024e27c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8024e22c
    lwz     r3, 0x2c0(r30)
    addi    r4, sp, 0x74
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x8024e248

branch_0x8024e22c:
    lwz     r3, 0x2c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x74
    bl      PSMTXCopy
branch_0x8024e248:
    addi    r3, sp, 0x74
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    lwz     r6, 0x2f4(r30)
    addi    r3, sp, 0x74
    lwz     r0, 0x2f8(r30)
    addi    r4, r30, 0x10
    addi    r5, r30, 0x2f4
    stw     r6, 0x300(r30)
    stw     r0, 0x304(r30)
    lwz     r0, 0x2fc(r30)
    stw     r0, 0x308(r30)
    bl      PSMTXMultVec
branch_0x8024e27c:
    mr      r3, r30
    bl      checkWet__6TMarioFv
    mr      r3, r30
    bl      checkGraffito__6TMarioFv
    mr      r3, r30
    bl      thinkDirty__6TMarioFv
    mr      r3, r30
    bl      checkSink__6TMarioFv
    mr      r3, r30
    bl      gunExec__6TMarioFv
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8b8
    beq-    branch_0x8024e2c8
    lwz     r3, 0x4e4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8024e2c8
    li      r4, 0x1
    bl      stop__8JAISoundFUl
branch_0x8024e2c8:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    lwz     r29, 0xd4(sp)
    addi    sp, sp, 0xe0
    blr


.globl onYoshi__6TYoshiFv
onYoshi__6TYoshiFv: # 0x8024e2e4
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x8024e2f8
    li      r3, 0x1
    blr

branch_0x8024e2f8:
    li      r3, 0x0
    blr


.globl gunExec__6TMarioFv
gunExec__6TMarioFv: # 0x8024e300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stw     r31, 0xfc(sp)
    li      r31, 0x0
    stw     r30, 0xf8(sp)
    mr      r30, r3
    stw     r29, 0xf4(sp)
    stw     r28, 0xf0(sp)
    li      r28, 0x0
    lwz     r3, 0x3f0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8024e348
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e348
    li      r31, 0x1
branch_0x8024e348:
    clrlwi. r0, r31, 24
    beq-    branch_0x8024e354
    li      r28, 0x1
branch_0x8024e354:
    clrlwi. r0, r28, 24
    bne-    branch_0x8024e368
    lwz     r3, -0x6088(r13)
    li      r0, 0x0
    stb     r0, 0x5d5f(r3)
branch_0x8024e368:
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024e37c
    li      r0, 0x1
    b       branch_0x8024e380

branch_0x8024e37c:
    li      r0, 0x0
branch_0x8024e380:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024e3b0
    lwz     r3, 0x3f0(r30)
    li      r31, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024e3a8
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e3a8
    li      r31, 0x1
branch_0x8024e3a8:
    clrlwi. r0, r31, 24
    beq-    branch_0x8024e724
branch_0x8024e3b0:
    lwz     r31, 0x3e4(r30)
    li      r28, 0x0
    stb     r28, 0x1c86(r31)
    mr      r3, r31
    lwz     r4, 0x1c68(r31)
    addi    r29, r4, 0xcc
    bl      getCurrentNozzle__9TWaterGunCFv
    lha     r4, 0x108(r3)
    lis     r3, 0x4330
    lwz     r0, 0x0(r29)
    xoris   r4, r4, 0x8000
    lfd     f3, -0xfe8(rtoc)
    stw     r4, 0xec(sp)
    xoris   r0, r0, 0x8000
    lfs     f4, -0xff8(rtoc)
    stw     r3, 0xe8(sp)
    lfs     f5, -0xfe0(rtoc)
    stw     r0, 0xe4(sp)
    lfd     f0, 0xe8(sp)
    stw     r3, 0xe0(sp)
    fsubs   f2, f0, f3
    lfs     f0, 0x1c88(r31)
    lfd     f1, 0xe0(sp)
    fmuls   f2, f4, f2
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fmadds  f0, f5, f1, f0
    stfs    f0, 0x1c88(r31)
    lwz     r3, 0x3e4(r30)
    lwz     r4, 0x108(r30)
    bl      triggerPressureMovement__9TWaterGunFRC20TMarioControllerWork
    lwz     r0, 0x118(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0x118(r30)
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8024e448
    li      r28, 0x1
branch_0x8024e448:
    clrlwi. r0, r28, 24
    beq-    branch_0x8024e538
    lwz     r3, 0x3f0(r30)
    li      r28, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024e470
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e470
    li      r28, 0x1
branch_0x8024e470:
    clrlwi. r0, r28, 24
    bne-    branch_0x8024e4f0
    lwz     r3, 0x3e4(r30)
    bl      suck__9TWaterGunFv
    cmpwi   r3, 0x1
    bne-    branch_0x8024e4f0
    lwz     r0, 0x118(r30)
    ori     r0, r0, 0x80
    stw     r0, 0x118(r30)
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8024e4a8
    li      r0, 0x1
    b       branch_0x8024e4ac

branch_0x8024e4a8:
    li      r0, 0x0
branch_0x8024e4ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024e4f0
    lwz     r4, 0xe0(r30)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x104
    beq-    branch_0x8024e4d4
    cmplwi  r0, 0x105
    beq-    branch_0x8024e4d4
    cmplwi  r0, 0x4104
    bne-    branch_0x8024e4dc
branch_0x8024e4d4:
    li      r0, 0x1
    b       branch_0x8024e4e0

branch_0x8024e4dc:
    li      r0, 0x0
branch_0x8024e4e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024e4f0
    lwz     r3, -0x6230(r13)
    bl      subWaterLevel__12TPoolManagerFPC12TBGCheckData
branch_0x8024e4f0:
    lwz     r3, 0x3e4(r30)
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r4, 0x3e4(r30)
    lwz     r0, 0xcc(r3)
    lwz     r3, 0x1c80(r4)
    cmpw    r3, r0
    bne-    branch_0x8024e54c
    lwz     r0, 0x380(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8024e54c
    mr      r3, r4
    bl      emit__9TWaterGunFv
    lwz     r31, 0x3e4(r30)
    mr      r3, r31
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r31)
    b       branch_0x8024e54c

branch_0x8024e538:
    lwz     r0, 0x380(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8024e54c
    lwz     r3, 0x3e4(r30)
    bl      emit__9TWaterGunFv
branch_0x8024e54c:
    lwz     r3, 0x3f0(r30)
    li      r28, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024e56c
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e56c
    li      r28, 0x1
branch_0x8024e56c:
    clrlwi. r0, r28, 24
    beq-    branch_0x8024e590
    lwz     r3, 0x108(r30)
    lfs     f0, -0xff8(rtoc)
    lfs     f1, 0x1c(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024e590
    lwz     r3, 0x3e4(r30)
    bl      emit__9TWaterGunFv
branch_0x8024e590:
    lhz     r0, 0x114(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8024e5a4
    li      r0, 0x1
    b       branch_0x8024e5a8

branch_0x8024e5a4:
    li      r0, 0x0
branch_0x8024e5a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024e5c4
    lwz     r31, 0x3e4(r30)
    mr      r3, r31
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r31)
branch_0x8024e5c4:
    lwz     r3, 0x7c(r30)
    cmplwi  r3, 0x883
    beq-    branch_0x8024e62c
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8b8
    beq-    branch_0x8024e62c
    lwz     r3, 0x4fc(r30)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x8024e62c
    lwz     r3, 0x3f0(r30)
    li      r28, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024e60c
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e60c
    li      r28, 0x1
branch_0x8024e60c:
    clrlwi. r0, r28, 24
    bne-    branch_0x8024e62c
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x447
    beq-    branch_0x8024e62c
    lwz     r3, 0x3e4(r30)
    bl      changeBackup__9TWaterGunFv
branch_0x8024e62c:
    lwz     r3, 0x3e4(r30)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8024e724
    lbz     r0, 0x1c86(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8024e724
    lhz     r3, 0x96(r30)
    li      r31, 0x0
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f0, -0xff8(rtoc)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea4(r13)
    lfsx    f1, r4, r0
    stfs    f1, 0xd4(sp)
    stfs    f0, 0xd8(sp)
    lfsx    f0, r3, r0
    stfs    f0, 0xdc(sp)
    b       branch_0x8024e718

branch_0x8024e680:
    lfs     f1, 0x25b8(r30)
    addi    r3, sp, 0x78
    lfs     f31, 0x25a4(r30)
    lwz     r0, 0xd4(sp)
    lwz     r4, 0xd8(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0xdc(sp)
    stw     r4, 0x7c(sp)
    stw     r0, 0x80(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x78(sp)
    addi    r3, sp, 0x84
    lwz     r5, 0x7c(sp)
    addi    r4, sp, 0xbc
    stw     r0, 0xbc(sp)
    lwz     r0, 0x80(sp)
    stw     r5, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r5, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x8c(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x84(sp)
    fmr     f4, f31
    lwz     r4, 0x88(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x8c(sp)
    stw     r4, 0xcc(sp)
    lwz     r3, -0x62f0(r13)
    stw     r0, 0xd0(sp)
    lfs     f1, 0xc8(sp)
    lfs     f2, 0xcc(sp)
    lfs     f3, 0xd0(sp)
    bl      clean__17TPollutionManagerFffff
    addi    r31, r31, 0x1
branch_0x8024e718:
    lha     r0, 0x2590(r30)
    cmpw    r31, r0
    blt+    branch_0x8024e680
branch_0x8024e724:
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lwz     r31, 0xfc(sp)
    mtlr    r0
    lwz     r30, 0xf8(sp)
    lwz     r29, 0xf4(sp)
    lwz     r28, 0xf0(sp)
    addi    sp, sp, 0x108
    blr


.globl checkWet__6TMarioFv
checkWet__6TMarioFv: # 0x8024e748
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e92c
    lwz     r3, 0x3f0(r31)
    li      r30, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024e798
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e798
    li      r30, 0x1
branch_0x8024e798:
    clrlwi. r0, r30, 24
    bne-    branch_0x8024e92c
    lha     r3, 0x362(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8024e92c
    subi    r0, r3, 0x1
    sth     r0, 0x362(r31)
    addi    r4, sp, 0x50
    lfs     f29, 0x18(r31)
    lfs     f1, -0xfdc(rtoc)
    lfs     f0, 0x14(r31)
    fmr     f3, f29
    lfs     f30, 0x10(r31)
    fadds   f2, f1, f0
    lwz     r3, -0x6328(r13)
    fmr     f1, f30
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f31, f1
    lwz     r3, 0x50(sp)
    bl      isMarioThrough__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8024e80c
    lfs     f0, -0xfd8(rtoc)
    fmr     f1, f30
    fmr     f3, f29
    lwz     r3, -0x6328(r13)
    fsubs   f2, f31, f0
    addi    r4, sp, 0x50
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
branch_0x8024e80c:
    lwz     r3, 0x50(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8024e83c
    cmplwi  r3, 0x101
    beq-    branch_0x8024e83c
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8024e83c
    cmplwi  r3, 0x4104
    bne-    branch_0x8024e844
branch_0x8024e83c:
    li      r0, 0x1
    b       branch_0x8024e848

branch_0x8024e844:
    li      r0, 0x0
branch_0x8024e848:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024e92c
    lfs     f1, 0xf0(r31)
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x8024e92c
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x8024e874
    li      r0, 0x1
    b       branch_0x8024e878

branch_0x8024e874:
    li      r0, 0x0
branch_0x8024e878:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024e92c
    lha     r0, 0x362(r31)
    clrlwi. r0, r0, 29
    bne-    branch_0x8024e92c
    lwz     r6, 0x158(r31)
    lis     r3, 0x803a
    lwz     r5, 0x10(r31)
    subi    r4, r3, 0x13a8
    lwz     r0, 0x14(r31)
    stw     r5, 0x70(r6)
    stw     r0, 0x74(r6)
    lwz     r0, 0x18(r31)
    stw     r0, 0x78(r6)
    lwz     r3, 0x158(r31)
    lfs     f0, -0xfd4(rtoc)
    lfs     f1, 0x74(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x74(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f1, -0xfd0(rtoc)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    lfs     f0, 0xa4(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f0, 0xa8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f0, 0xac(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lwz     r4, 0x158(r31)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x8c(r4)
    stw     r0, 0x90(r4)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x94(r4)
    lwz     r3, -0x6088(r13)
    lwz     r4, 0x158(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x8024e92c:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lfd     f29, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x78
    blr


.globl isMarioThrough__12TBGCheckDataCFv
isMarioThrough__12TBGCheckDataCFv: # 0x8024e950
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x400
    beq-    branch_0x8024e994
    cmplwi  r3, 0x8400
    beq-    branch_0x8024e994
    subi    r0, r3, 0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8024e994
    subi    r0, r3, 0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x8024e994
    cmplwi  r3, 0x201
    beq-    branch_0x8024e994
    cmplwi  r3, 0x203
    bne-    branch_0x8024e99c
branch_0x8024e994:
    li      r3, 0x1
    blr

branch_0x8024e99c:
    li      r3, 0x0
    blr


.globl thinkYoshiHeadCollision__6TMarioFv
thinkYoshiHeadCollision__6TMarioFv: # 0x8024e9a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    li      r31, 0x0
    stw     r30, 0x78(sp)
    mr      r30, r3
    lwz     r3, 0x3f0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8024e9e0
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024e9e0
    li      r31, 0x1
branch_0x8024e9e0:
    clrlwi. r0, r31, 24
    beq-    branch_0x8024eb50
    lwz     r4, 0x10(r30)
    li      r5, 0x4
    lwz     r3, 0x14(r30)
    li      r0, 0x0
    lwz     r6, -0x5eac(r13)
    stw     r4, 0x68(sp)
    addi    r4, sp, 0x3c
    lwz     r8, -0x5ea8(r13)
    stw     r3, 0x6c(sp)
    lwz     r3, -0x5ea4(r13)
    lwz     r7, 0x18(r30)
    stw     r7, 0x70(sp)
    lhz     r7, 0x96(r30)
    lfs     f2, 0x2244(r30)
    sraw    r6, r7, r6
    lfs     f0, 0x68(sp)
    slwi    r6, r6, 2
    lfsx    f1, r8, r6
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x68(sp)
    lfsx    f1, r3, r6
    lfs     f0, 0x70(sp)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x70(sp)
    lfs     f1, -0xff0(rtoc)
    lfs     f0, 0x6c(sp)
    lfs     f3, 0x2258(r30)
    lfs     f2, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f2, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lfs     f31, 0x70(sp)
    stfs    f31, 0x44(sp)
    stfs    f3, 0x48(sp)
    lwz     r3, -0x6328(r13)
    stw     r5, 0x4c(sp)
    stw     r0, 0x54(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024eb50
    lfs     f0, 0x44(sp)
    lfs     f2, 0x3c(sp)
    fsubs   f6, f0, f31
    lfs     f1, 0x68(sp)
    lfs     f0, -0xff8(rtoc)
    fsubs   f5, f2, f1
    fmuls   f1, f6, f6
    fmadds  f4, f5, f5, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x8024eb00
    frsqrte f1, f4
    lfd     f3, -0xfc8(rtoc)
    lfd     f2, -0xfc0(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x24(sp)
    lfs     f4, 0x24(sp)
branch_0x8024eb00:
    lfs     f0, -0xff8(rtoc)
    fmr     f2, f4
    fcmpo   cr0, f4, f0
    ble-    branch_0x8024eb50
    lfs     f1, -0xfd8(rtoc)
    lfs     f0, -0xfb8(rtoc)
    fdivs   f1, f1, f4
    fcmpo   cr0, f0, f4
    fmuls   f5, f5, f1
    fmuls   f6, f6, f1
    bge-    branch_0x8024eb30
    fmr     f2, f0
branch_0x8024eb30:
    fmuls   f5, f5, f2
    lfs     f0, 0x10(r30)
    fmuls   f6, f6, f2
    fadds   f0, f0, f5
    stfs    f0, 0x10(r30)
    lfs     f0, 0x18(r30)
    fadds   f0, f0, f6
    stfs    f0, 0x18(r30)
branch_0x8024eb50:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl getOffYoshi__6TMarioFb
getOffYoshi__6TMarioFb: # 0x8024eb6c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    rlwinm  r0, r3, 0, 17, 15
    stw     r0, 0x74(r31)
    beq-    branch_0x8024ebb8
    addi    r3, r31, 0x0
    li      r4, 0x89c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, 0x3f0(r31)
    li      r4, 0x1
    bl      getOff__6TYoshiFb
    b       branch_0x8024ebe0

branch_0x8024ebb8:
    addi    r3, r31, 0x0
    li      r4, 0x883
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f0, 0xe88(r31)
    li      r4, 0x0
    stfs    f0, 0xa8(r31)
    lwz     r3, 0x3f0(r31)
    bl      getOff__6TYoshiFb
branch_0x8024ebe0:
    lfs     f1, -0xfd8(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x78(r31)
    li      r4, 0x4
    li      r5, 0x1
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r31)
    lfs     f0, -0xfb4(rtoc)
    stfs    f0, 0xb0(r31)
    lwz     r3, 0x3e4(r31)
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    mr      r3, r31
    bl      normalizeNozzle__6TMarioFv
    lwz     r31, 0x3e4(r31)
    mr      r3, r31
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl thinkParams__6TMarioFv
thinkParams__6TMarioFv: # 0x8024ec44
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lha     r3, 0x96(r3)
    lfd     f1, -0xfe8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0xfb0(rtoc)
    stw     r3, 0x6c(sp)
    stw     r0, 0x68(sp)
    lfd     f0, 0x68(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x34(r31)
    lha     r3, 0x14c(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8024ec98
    subi    r0, r3, 0x1
    sth     r0, 0x14c(r31)
branch_0x8024ec98:
    lwz     r3, 0x118(r31)
    rlwinm. r0, r3, 0, 21, 21
    beq-    branch_0x8024ecac
    li      r0, 0x1
    b       branch_0x8024ecb0

branch_0x8024ecac:
    li      r0, 0x0
branch_0x8024ecb0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024ef34
    rlwinm. r3, r3, 0, 14, 15
    beq-    branch_0x8024ecc8
    li      r0, 0x1
    b       branch_0x8024eccc

branch_0x8024ecc8:
    li      r0, 0x0
branch_0x8024eccc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024ee40
    cmplwi  r3, 0x0
    beq-    branch_0x8024ece4
    li      r0, 0x1
    b       branch_0x8024ece8

branch_0x8024ece4:
    li      r0, 0x0
branch_0x8024ece8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024ed10
    lfs     f1, 0xf0(r31)
    lfs     f0, 0x1244(r31)
    lfs     f2, 0x170(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8024ed10
    li      r0, 0x1
    b       branch_0x8024ed14

branch_0x8024ed10:
    li      r0, 0x0
branch_0x8024ed14:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024ee2c
    lwz     r3, 0xe4(r31)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xb
    beq-    branch_0x8024ed44
    cmplwi  r4, 0x800b
    beq-    branch_0x8024ed44
    cmplwi  r4, 0x103
    beq-    branch_0x8024ed44
    cmplwi  r4, 0x101
    bne-    branch_0x8024ed4c
branch_0x8024ed44:
    li      r0, 0x1
    b       branch_0x8024ed50

branch_0x8024ed4c:
    li      r0, 0x0
branch_0x8024ed50:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024ee2c
    cmplwi  r4, 0xb
    beq-    branch_0x8024ed78
    cmplwi  r4, 0x800b
    beq-    branch_0x8024ed78
    cmplwi  r4, 0x103
    beq-    branch_0x8024ed78
    cmplwi  r4, 0x101
    bne-    branch_0x8024ed80
branch_0x8024ed78:
    li      r0, 0x1
    b       branch_0x8024ed84

branch_0x8024ed80:
    li      r0, 0x0
branch_0x8024ed84:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024ee2c
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8024eda0
    li      r0, 0x1
    b       branch_0x8024eda4

branch_0x8024eda0:
    li      r0, 0x0
branch_0x8024eda4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024ee2c
    lha     r0, 0x2(r3)
    cmplwi  r0, 0x9
    bgt-    branch_0x8024ee20
    lis     r3, 0x803e
    subi    r3, r3, 0x2ec0
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    addi    r4, r31, 0x3bd4
    b       branch_0x8024ee24


.incbin "./baserom/code/Text_0x80005600.bin", 0x2497d8, 0x8024ee20 - 0x8024edd8
branch_0x8024ee20:
    addi    r4, r31, 0x3bd4
branch_0x8024ee24:
    mr      r3, r31
    bl      floorDamageExec__6TMarioFRCQ26TMario8TEParams
branch_0x8024ee2c:
    li      r0, 0x0
    sth     r0, 0x126(r31)
    lha     r0, 0x898(r31)
    sth     r0, 0x128(r31)
    b       branch_0x8024eefc

branch_0x8024ee40:
    lwz     r3, 0x3e0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024eef4
    lhz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024ee60
    li      r0, 0x1
    b       branch_0x8024ee64

branch_0x8024ee60:
    li      r0, 0x0
branch_0x8024ee64:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024eef4
    lhz     r3, 0x126(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x126(r31)
    lhz     r3, 0x126(r31)
    lha     r0, 0x128(r31)
    cmpw    r3, r0
    ble-    branch_0x8024eef4
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      decHP__6TMarioFi
    lwz     r3, -0x6044(r13)
    li      r4, 0x480c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024eebc
    li      r3, 0x480c
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x8024eebc:
    lha     r3, 0x898(r31)
    li      r0, 0x0
    addi    r5, r31, 0x27f8
    sth     r3, 0x128(r31)
    addi    r3, r31, 0x0
    li      r4, 0x14
    sth     r0, 0x126(r31)
    lha     r5, 0x0(r5)
    bl      rumbleStart__6TMarioFii
    lfs     f0, 0x55c(r31)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    sth     r0, 0x14c(r31)
branch_0x8024eef4:
    li      r0, 0x0
    sth     r0, 0x122(r31)
branch_0x8024eefc:
    lwz     r3, 0xe0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024ef34
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8024ef34
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x2c7
    bne-    branch_0x8024ef34
    addi    r3, r31, 0x0
    li      r4, -0x1
    li      r5, 0x42
    bl      emitFootPrintWithEffect__6TMarioFii
branch_0x8024ef34:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl thinkSand__6TMarioFv
thinkSand__6TMarioFv: # 0x8024ef48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8024ef68
    li      r0, 0x1
    b       branch_0x8024ef6c

branch_0x8024ef68:
    li      r0, 0x0
branch_0x8024ef6c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024efc8
    lwz     r4, 0xe0(r3)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x701
    beq-    branch_0x8024ef9c
    cmplwi  r0, 0x4701
    beq-    branch_0x8024ef9c
    cmplwi  r0, 0x8701
    beq-    branch_0x8024ef9c
    cmplwi  r0, 0xc701
    bne-    branch_0x8024efa4
branch_0x8024ef9c:
    li      r0, 0x1
    b       branch_0x8024efa8

branch_0x8024efa4:
    li      r0, 0x0
branch_0x8024efa8:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024efc8
    lwz     r0, 0x118(r3)
    oris    r0, r0, 0x4
    stw     r0, 0x118(r3)
    bl      emitSandEffect__6TMarioFv
    b       branch_0x8024efd4

branch_0x8024efc8:
    lwz     r0, 0x118(r3)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0x118(r3)
branch_0x8024efd4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl thinkWaterSurface__6TMarioFv
thinkWaterSurface__6TMarioFv: # 0x8024efe4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    stw     r29, 0xdc(sp)
    mr      r29, r3
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8024f018
    li      r0, 0x1
    b       branch_0x8024f01c

branch_0x8024f018:
    li      r0, 0x0
branch_0x8024f01c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024f850
    lwz     r0, 0x118(r29)
    rlwinm. r3, r0, 0, 14, 15
    beq-    branch_0x8024f038
    li      r0, 0x1
    b       branch_0x8024f03c

branch_0x8024f038:
    li      r0, 0x0
branch_0x8024f03c:
    cmplwi  r3, 0x0
    clrlwi  r31, r0, 24
    li      r30, 0x0
    beq-    branch_0x8024f054
    li      r0, 0x1
    b       branch_0x8024f058

branch_0x8024f054:
    li      r0, 0x0
branch_0x8024f058:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024f06c
    li      r30, 0x1
    b       branch_0x8024f074

branch_0x8024f06c:
    lfs     f0, 0x14(r29)
    stfs    f0, 0xf0(r29)
branch_0x8024f074:
    lwz     r0, 0x118(r29)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0x118(r29)
    lwz     r0, 0x118(r29)
    rlwinm  r0, r0, 0, 15, 13
    stw     r0, 0x118(r29)
    lwz     r4, 0xe0(r29)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x104
    beq-    branch_0x8024f0ac
    cmplwi  r0, 0x105
    beq-    branch_0x8024f0ac
    cmplwi  r0, 0x4104
    bne-    branch_0x8024f0b4
branch_0x8024f0ac:
    li      r0, 0x1
    b       branch_0x8024f0b8

branch_0x8024f0b4:
    li      r0, 0x0
branch_0x8024f0b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f0ec
    lwz     r3, -0x6230(r13)
    bl      getWaterLevel__12TPoolManagerCFPC12TBGCheckData
    stfs    f1, 0xf0(r29)
    lfs     f1, 0xf0(r29)
    lfs     f0, 0x14(r29)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024f0ec
    lwz     r0, 0x118(r29)
    li      r30, 0x1
    oris    r0, r0, 0x1
    stw     r0, 0x118(r29)
branch_0x8024f0ec:
    lfs     f2, 0x14(r29)
    lfs     f1, 0x2a0(r29)
    lfs     f0, -0xff8(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    fmr     f2, f1
    ble-    branch_0x8024f10c
    fmr     f2, f0
branch_0x8024f10c:
    lfs     f1, 0xf0(r29)
    addi    r4, r29, 0xe4
    lfs     f0, 0x1208(r29)
    fsubs   f2, f1, f2
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x10(r29)
    lfs     f3, 0x18(r29)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0xe4(r29)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8024f160
    cmplwi  r3, 0x101
    beq-    branch_0x8024f160
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8024f160
    cmplwi  r3, 0x4104
    bne-    branch_0x8024f168
branch_0x8024f160:
    li      r0, 0x1
    b       branch_0x8024f16c

branch_0x8024f168:
    li      r0, 0x0
branch_0x8024f16c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f1a0
    stfs    f1, 0xf0(r29)
    lfs     f1, 0xf0(r29)
    lfs     f0, 0x14(r29)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8024f1ec
    lwz     r0, 0x118(r29)
    li      r30, 0x1
    oris    r0, r0, 0x2
    stw     r0, 0x118(r29)
    b       branch_0x8024f1ec

branch_0x8024f1a0:
    lwz     r3, -0x6328(r13)
    addi    r4, sp, 0xc0
    lfs     f1, 0x10(r29)
    lfs     f2, 0x14(r29)
    lfs     f3, 0x18(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0xc0(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x810b
    bne-    branch_0x8024f1d0
    li      r0, 0x1
    b       branch_0x8024f1d4

branch_0x8024f1d0:
    li      r0, 0x0
branch_0x8024f1d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f1ec
    lwz     r0, 0x118(r29)
    li      r30, 0x1
    oris    r0, r0, 0x2
    stw     r0, 0x118(r29)
branch_0x8024f1ec:
    cmpwi   r30, 0x0
    beq-    branch_0x8024f460
    lfs     f1, 0x14(r29)
    lfs     f2, 0xf0(r29)
    fcmpo   cr0, f1, f2
    bge-    branch_0x8024f460
    lfs     f0, 0xfbc(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x8024f3fc
    lwz     r3, 0x3f0(r29)
    li      r30, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024f234
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024f234
    li      r30, 0x1
branch_0x8024f234:
    clrlwi. r0, r30, 24
    beq-    branch_0x8024f264
    lwz     r3, 0x3f0(r29)
    bl      disappear__6TYoshiFv
    lwz     r3, 0x3e4(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x8024f264
    li      r4, 0x4
    li      r5, 0x1
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    mr      r3, r29
    bl      normalizeNozzle__6TMarioFv
branch_0x8024f264:
    lfs     f2, -0xfac(rtoc)
    lfs     f1, 0x14(r29)
    lfs     f0, 0xf0(r29)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024f284
    mr      r3, r29
    bl      rippleEffect__6TMarioFv
branch_0x8024f284:
    mr      r3, r29
    bl      swimmingBubbleEffect__6TMarioFv
    lwz     r3, 0x7c(r29)
    li      r4, 0x1
    rlwinm. r0, r3, 0, 18, 18
    clrlwi  r3, r3, 23
    beq-    branch_0x8024f2a8
    li      r0, 0x1
    b       branch_0x8024f2ac

branch_0x8024f2a8:
    li      r0, 0x0
branch_0x8024f2ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f2b8
    li      r4, 0x0
branch_0x8024f2b8:
    cmplwi  r3, 0x168
    blt-    branch_0x8024f2d0
    cmplwi  r3, 0x16c
    bgt-    branch_0x8024f2d0
    li      r0, 0x1
    b       branch_0x8024f2d4

branch_0x8024f2d0:
    li      r0, 0x0
branch_0x8024f2d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f2e0
    li      r4, 0x0
branch_0x8024f2e0:
    cmplwi  r3, 0x145
    blt-    branch_0x8024f2f4
    cmplwi  r3, 0x14a
    bgt-    branch_0x8024f2f4
    li      r4, 0x0
branch_0x8024f2f4:
    cmplwi  r3, 0x140
    blt-    branch_0x8024f308
    cmplwi  r3, 0x143
    bgt-    branch_0x8024f308
    li      r4, 0x0
branch_0x8024f308:
    lwz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8024f31c
    li      r0, 0x1
    b       branch_0x8024f320

branch_0x8024f31c:
    li      r0, 0x0
branch_0x8024f320:
    cmpwi   r0, 0x0
    beq-    branch_0x8024f32c
    li      r4, 0x0
branch_0x8024f32c:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024f460
    lfs     f1, 0xb0(r29)
    lfs     f0, 0x117c(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r29)
    lfs     f1, 0xa8(r29)
    lfs     f0, 0x1190(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r29)
    lwz     r0, 0x7c(r29)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x8024f36c
    li      r0, 0x1
    b       branch_0x8024f370

branch_0x8024f36c:
    li      r0, 0x0
branch_0x8024f370:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f390
    addi    r3, r29, 0x0
    li      r4, 0x24da
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024f460

branch_0x8024f390:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8024f3a4
    li      r0, 0x1
    b       branch_0x8024f3a8

branch_0x8024f3a4:
    li      r0, 0x0
branch_0x8024f3a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f3e4
    addi    r3, r29, 0x0
    li      r4, 0x24d5
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f0, -0xff8(rtoc)
    addi    r3, r29, 0x0
    li      r4, 0x828
    stfs    f0, 0xa8(r29)
    lfs     f0, 0xf0(r29)
    stfs    f0, 0x14(r29)
    bl      startSoundActor__6TMarioFUl
    b       branch_0x8024f460

branch_0x8024f3e4:
    addi    r3, r29, 0x0
    li      r4, 0x22d1
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024f460

branch_0x8024f3fc:
    lfs     f0, 0x233c(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8024f458
    lwz     r3, 0x7c(r29)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x8024f460
    mr      r3, r29
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xfa8(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x8024f44c
    mr      r3, r29
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xfa4(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8024f460
branch_0x8024f44c:
    mr      r3, r29
    bl      runningRippleEffect__6TMarioFv
    b       branch_0x8024f460

branch_0x8024f458:
    mr      r3, r29
    bl      rippleEffect__6TMarioFv
branch_0x8024f460:
    lwz     r3, 0xe0(r29)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x8024f488
    cmplwi  r0, 0x4004
    beq-    branch_0x8024f488
    cmplwi  r0, 0x8004
    beq-    branch_0x8024f488
    cmplwi  r0, 0xc004
    bne-    branch_0x8024f490
branch_0x8024f488:
    li      r0, 0x1
    b       branch_0x8024f494

branch_0x8024f490:
    li      r0, 0x0
branch_0x8024f494:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f4e4
    lwz     r3, 0x7c(r29)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x8024f4e4
    mr      r3, r29
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xfa8(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x8024f4dc
    mr      r3, r29
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xfa4(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8024f4e4
branch_0x8024f4dc:
    mr      r3, r29
    bl      runningRippleEffect__6TMarioFv
branch_0x8024f4e4:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8024f4f8
    li      r0, 0x1
    b       branch_0x8024f4fc

branch_0x8024f4f8:
    li      r0, 0x0
branch_0x8024f4fc:
    lha     r4, 0x9a(r29)
    clrlwi  r30, r0, 24
    lfs     f1, 0x10(r29)
    addi    r6, r29, 0x220
    lfs     f2, 0xf0(r29)
    lfs     f3, 0x18(r29)
    li      r3, 0x0
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    lfs     f0, 0x10(r29)
    addi    r4, r29, 0x1c0
    stfs    f0, 0x190(r29)
    lfs     f0, 0xf0(r29)
    stfs    f0, 0x194(r29)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x198(r29)
    lwz     r3, 0x3a8(r29)
    lbz     r0, 0x3cf(r29)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    cmpw    r30, r31
    beq-    branch_0x8024f6f4
    mr      r3, r29
    lfs     f1, 0xf0(r29)
    bl      inOutWaterEffect__6TMarioFf
    lfs     f1, 0xf0(r29)
    cmpwi   r31, 0x1
    lfs     f0, 0xec(r29)
    fsubs   f1, f1, f0
    bne-    branch_0x8024f644
    cmpwi   r30, 0x0
    bne-    branch_0x8024f644
    li      r0, 0x78
    sth     r0, 0x362(r29)
    lfs     f0, -0xfa0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024f5d0
    lwz     r3, -0x6044(r13)
    li      r4, 0x1939
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f6f4
    addi    r4, r29, 0x10
    li      r3, 0x1939
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8024f6f4

branch_0x8024f5d0:
    lfs     f0, -0xff4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024f610
    lwz     r3, -0x6044(r13)
    li      r4, 0x181d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f6f4
    addi    r4, r29, 0x10
    li      r3, 0x181d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8024f6f4

branch_0x8024f610:
    lwz     r3, -0x6044(r13)
    li      r4, 0x181e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f6f4
    addi    r4, r29, 0x10
    li      r3, 0x181e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8024f6f4

branch_0x8024f644:
    lfs     f0, -0xfa0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024f684
    lwz     r3, -0x6044(r13)
    li      r4, 0x1938
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f6f4
    addi    r4, r29, 0x10
    li      r3, 0x1938
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8024f6f4

branch_0x8024f684:
    lfs     f0, -0xff4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024f6c4
    lwz     r3, -0x6044(r13)
    li      r4, 0x1805
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f6f4
    addi    r4, r29, 0x10
    li      r3, 0x1805
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8024f6f4

branch_0x8024f6c4:
    lwz     r3, -0x6044(r13)
    li      r4, 0x1806
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f6f4
    addi    r4, r29, 0x10
    li      r3, 0x1806
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8024f6f4:
    lwz     r3, 0x118(r29)
    rlwinm. r0, r3, 0, 14, 15
    beq-    branch_0x8024f708
    li      r0, 0x1
    b       branch_0x8024f70c

branch_0x8024f708:
    li      r0, 0x0
branch_0x8024f70c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f734
    lfs     f1, 0xf0(r29)
    lfs     f0, 0x1244(r29)
    lfs     f2, 0x170(r29)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8024f734
    li      r0, 0x1
    b       branch_0x8024f738

branch_0x8024f734:
    li      r0, 0x0
branch_0x8024f738:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024f75c
    rlwinm. r0, r3, 0, 19, 19
    beq-    branch_0x8024f750
    li      r0, 0x1
    b       branch_0x8024f754

branch_0x8024f750:
    li      r0, 0x0
branch_0x8024f754:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f828
branch_0x8024f75c:
    lfs     f31, 0x12c(r29)
    mr      r3, r29
    bl      isWearingHelm__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8024f794
    lwz     r3, 0x7c(r29)
    addis   r0, r3, 0xeffe
    cmplwi  r0, 0x370
    beq-    branch_0x8024f7a4
    lfs     f1, 0x12c(r29)
    lfs     f0, 0x1280(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x12c(r29)
    b       branch_0x8024f7a4

branch_0x8024f794:
    lfs     f1, 0x12c(r29)
    lfs     f0, 0x126c(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x12c(r29)
branch_0x8024f7a4:
    lfs     f0, 0x12c(r29)
    fctiwz  f1, f31
    fctiwz  f0, f0
    stfd    f1, 0xd0(sp)
    stfd    f0, 0xc8(sp)
    lwz     r3, 0xd4(sp)
    lwz     r0, 0xcc(sp)
    cmpw    r3, r0
    beq-    branch_0x8024f7ec
    lha     r5, 0x27f8(r29)
    addi    r3, r29, 0x0
    li      r4, 0x14
    bl      rumbleStart__6TMarioFii
    lfs     f0, 0x55c(r29)
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    sth     r0, 0x14c(r29)
branch_0x8024f7ec:
    lfs     f1, 0x12c(r29)
    lfs     f0, -0xfd8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024f850
    lfs     f0, -0xff8(rtoc)
    mr      r3, r29
    stfs    f0, 0x12c(r29)
    bl      loserExec__6TMarioFv
    lis     r4, 0x2
    addi    r3, r29, 0x0
    addi    r4, r4, 0x24e0
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8024f850

branch_0x8024f828:
    lfs     f1, 0x12c(r29)
    lfs     f0, 0x1294(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x12c(r29)
    lfs     f0, 0x12c(r29)
    lfs     f1, 0x130(r29)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x8024f850
    stfs    f1, 0x12c(r29)
branch_0x8024f850:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    mtlr    r0
    lwz     r30, 0xe0(sp)
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xf0
    blr


.globl thinkSituation__6TMarioFv
thinkSituation__6TMarioFv: # 0x8024f870
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    mr      r31, r3
    stw     r30, 0xd0(sp)
    lwz     r0, 0x118(r3)
    stw     r0, 0x11c(r3)
    lfs     f1, 0xbc(r3)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8024f8b0
    lfs     f0, 0xd0c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(r31)
    b       branch_0x8024f8b4

branch_0x8024f8b0:
    stfs    f0, 0xbc(r31)
branch_0x8024f8b4:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024f92c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8024f92c
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r31)
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r31)
    lwz     r3, 0x68(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x18(r31)
branch_0x8024f92c:
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x118(r31)
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 27, 25
    stw     r0, 0x118(r31)
    lwz     r3, 0xe0(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x106
    beq-    branch_0x8024f95c
    cmplwi  r0, 0x108
    bne-    branch_0x8024f964
branch_0x8024f95c:
    li      r0, 0x1
    b       branch_0x8024f968

branch_0x8024f964:
    li      r0, 0x0
branch_0x8024f968:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024f97c
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x118(r31)
branch_0x8024f97c:
    mr      r3, r31
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024fa3c
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8024f9b0
    li      r0, 0x1
    b       branch_0x8024f9b4

branch_0x8024f9b0:
    li      r0, 0x0
branch_0x8024f9b4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024fa3c
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x133f
    beq-    branch_0x8024fa3c
    lwz     r3, 0xe0(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8024f9e0
    li      r0, 0x1
    b       branch_0x8024f9e4

branch_0x8024f9e0:
    li      r0, 0x0
branch_0x8024f9e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024fa0c
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x600
    bne-    branch_0x8024fa00
    li      r0, 0x1
    b       branch_0x8024fa04

branch_0x8024fa00:
    li      r0, 0x0
branch_0x8024fa04:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024fa3c
branch_0x8024fa0c:
    lha     r3, 0x2ba(r31)
    lha     r0, 0x988(r31)
    add     r0, r3, r0
    sth     r0, 0x2ba(r31)
    lha     r3, 0x2ba(r31)
    lha     r0, 0x99c(r31)
    cmpw    r3, r0
    ble-    branch_0x8024fa5c
    lha     r4, 0x58c(r31)
    mr      r3, r31
    bl      decHP__6TMarioFi
    b       branch_0x8024fa5c

branch_0x8024fa3c:
    lha     r3, 0x2ba(r31)
    subi    r0, r3, 0x1
    sth     r0, 0x2ba(r31)
    lha     r0, 0x2ba(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x8024fa5c
    li      r0, 0x0
    sth     r0, 0x2ba(r31)
branch_0x8024fa5c:
    mr      r3, r31
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024fb10
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8024fa80
    li      r0, 0x1
    b       branch_0x8024fa84

branch_0x8024fa80:
    li      r0, 0x0
branch_0x8024fa84:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024fabc
    lwz     r0, 0x11c(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8024faa4
    li      r0, 0x1
    b       branch_0x8024faa8

branch_0x8024faa4:
    li      r0, 0x0
branch_0x8024faa8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024fabc
    lis     r3, 0x8001
    addi    r3, r3, 0x1b
    bl      startBGM__5MSBgmFUl
branch_0x8024fabc:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8024fad0
    li      r0, 0x1
    b       branch_0x8024fad4

branch_0x8024fad0:
    li      r0, 0x0
branch_0x8024fad4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024fb10
    lwz     r0, 0x11c(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8024faf0
    li      r0, 0x1
    b       branch_0x8024faf4

branch_0x8024faf0:
    li      r0, 0x0
branch_0x8024faf4:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8024fb10
    lis     r3, 0x8001
    addi    r3, r3, 0x1b
    li      r4, 0xa
    bl      stopBGM__5MSBgmFUlUl
branch_0x8024fb10:
    lfs     f1, 0x14(r31)
    addi    r4, sp, 0xc8
    lfs     f0, 0xa8(r31)
    lwz     r3, -0x6328(r13)
    fsubs   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0xc8(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x800
    bne-    branch_0x8024fb48
    li      r0, 0x1
    b       branch_0x8024fb4c

branch_0x8024fb48:
    li      r0, 0x0
branch_0x8024fb4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024fbe0
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024fbe0
    lwz     r3, 0x118(r31)
    li      r0, 0x0
    ori     r3, r3, 0x400
    stw     r3, 0x118(r31)
    sth     r0, 0x120(r31)
    lwz     r3, 0x4dc(r31)
    bl      stop__13JAIAnimeSoundFv
    lwz     r3, 0x3f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024fb8c
    bl      kill__6TYoshiFv
branch_0x8024fb8c:
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b9
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lhz     r0, 0xfa(r31)
    cmplwi  r0, 0x120
    beq-    branch_0x8024fbbc
    addi    r3, r31, 0x0
    li      r4, 0x786b
    bl      startVoice__6TMarioFUl
branch_0x8024fbbc:
    lwz     r3, -0x7118(r13)
    lhz     r0, 0x64(r3)
    ori     r0, r0, 0x800
    sth     r0, 0x64(r3)
    lwz     r3, -0x6048(r13)
    lhz     r0, 0x4e(r3)
    ori     r0, r0, 0x8
    sth     r0, 0x4e(r3)
    b       branch_0x8024fecc

branch_0x8024fbe0:
    lha     r4, 0x9a(r31)
    addi    r6, r31, 0x1f0
    lfs     f1, 0x10(r31)
    li      r3, 0x0
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    li      r3, 0x0
    sth     r3, 0xf8(r31)
    lwz     r4, 0xe0(r31)
    lhz     r0, 0x0(r4)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x8024fc1c
    li      r3, 0x1
branch_0x8024fc1c:
    clrlwi. r0, r3, 24
    beq-    branch_0x8024fc5c
    lfs     f2, -0xf98(rtoc)
    lfs     f1, 0xec(r31)
    lfs     f0, 0x14(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024fc5c
    lha     r0, 0x2(r4)
    sth     r0, 0xf8(r31)
    lha     r0, 0xf8(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8024fc5c
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x20
    stw     r0, 0x118(r31)
branch_0x8024fc5c:
    lwz     r3, -0x70e0(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8024fc80
    addi    r4, r31, 0x10
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x8024fc80
    li      r0, 0x1
    sth     r0, 0xf8(r31)
branch_0x8024fc80:
    lwz     r0, 0x118(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0x118(r31)
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024fcec
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8024fcc0
    li      r0, 0x1
    b       branch_0x8024fcc4

branch_0x8024fcc0:
    li      r0, 0x0
branch_0x8024fcc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024fcec
    lwz     r3, -0x6088(r13)
    addi    r4, r31, 0x10
    bl      askHitWaterParticleOnGround__18TModelWaterManagerFRCQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8024fcec
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x10
    stw     r0, 0x118(r31)
branch_0x8024fcec:
    lwz     r3, 0xe0(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x300
    bne-    branch_0x8024fd04
    li      r0, 0x1
    b       branch_0x8024fd08

branch_0x8024fd04:
    li      r0, 0x0
branch_0x8024fd08:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024fde8
    lwz     r3, 0x3f0(r31)
    li      r30, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x8024fd30
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x8024fd30
    li      r30, 0x1
branch_0x8024fd30:
    clrlwi. r0, r30, 24
    beq-    branch_0x8024fdbc
    lwz     r0, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x883
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0x74(r31)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lfs     f0, 0xe88(r31)
    li      r4, 0x0
    stfs    f0, 0xa8(r31)
    lwz     r3, 0x3f0(r31)
    bl      getOff__6TYoshiFb
    lfs     f1, -0xfd8(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x78(r31)
    li      r4, 0x4
    li      r5, 0x1
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r31)
    lfs     f0, -0xfb4(rtoc)
    stfs    f0, 0xb0(r31)
    lwz     r3, 0x3e4(r31)
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    mr      r3, r31
    bl      normalizeNozzle__6TMarioFv
    lwz     r30, 0x3e4(r31)
    mr      r3, r30
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r30)
branch_0x8024fdbc:
    lwz     r4, 0xe0(r31)
    li      r5, 0x0
    lwz     r3, -0x6048(r13)
    lha     r4, 0x2(r4)
    bl      setNextStage__12TMarDirectorFUsPQ26JDrama6TActor
    lhz     r0, 0x114(r31)
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x114(r31)
    lhz     r0, 0x114(r31)
    rlwinm  r0, r0, 0, 22, 20
    sth     r0, 0x114(r31)
branch_0x8024fde8:
    bl      SMS_isOptionMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8024fe24
    lfs     f0, 0x4264(r31)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x10(r31)
    lfs     f1, 0x4278(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8024fe10
    stfs    f1, 0x10(r31)
branch_0x8024fe10:
    lfs     f0, 0x10(r31)
    lfs     f1, 0x428c(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8024fe24
    stfs    f1, 0x10(r31)
branch_0x8024fe24:
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8024fe38
    li      r0, 0x1
    b       branch_0x8024fe3c

branch_0x8024fe38:
    li      r0, 0x0
branch_0x8024fe3c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024fe4c
    lfs     f0, 0x14(r31)
    stfs    f0, 0x2bc(r31)
branch_0x8024fe4c:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x10
    bl      calcGroundMtx__6TMarioFRCQ29JGeometry8TVec3_f_
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8024feb0
    cmplwi  r3, 0x4
    beq-    branch_0x8024feb0
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8024fe88
    cmplwi  r3, 0x2
    beq-    branch_0x8024fe88
    li      r0, 0x0
branch_0x8024fe88:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024feb0
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x8024fea4
    li      r0, 0x1
    b       branch_0x8024fea8

branch_0x8024fea4:
    li      r0, 0x0
branch_0x8024fea8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024fec0
branch_0x8024feb0:
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x118(r31)
    b       branch_0x8024fecc

branch_0x8024fec0:
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x118(r31)
branch_0x8024fecc:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    addi    sp, sp, 0xd8
    blr


.globl calcGroundMtx__6TMarioFRCQ29JGeometry8TVec3_f_
calcGroundMtx__6TMarioFRCQ29JGeometry8TVec3_f_: # 0x8024fee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    addi    r5, sp, 0x48
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, -0x6328(r13)
    stw     r6, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x8(r4)
    addi    r4, sp, 0x4c
    stw     r0, 0x54(sp)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0x50(sp)
    addi    r4, sp, 0x3c
    addi    r5, sp, 0x48
    lhz     r0, 0x96(r31)
    lwz     r6, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r0, r6
    lfs     f0, 0x4c(sp)
    slwi    r0, r0, 2
    lfs     f1, -0xf94(rtoc)
    lfsx    f2, r3, r0
    fadds   f0, f0, f2
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lhz     r0, 0x96(r31)
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r0, r6
    lfs     f1, 0x54(sp)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0x40(sp)
    addi    r4, sp, 0x30
    addi    r5, sp, 0x48
    lhz     r0, 0x96(r31)
    lwz     r6, -0x5eac(r13)
    lwz     r3, -0x5ea8(r13)
    sraw    r0, r0, r6
    lfs     f0, 0x4c(sp)
    slwi    r0, r0, 2
    lfs     f1, -0xf94(rtoc)
    lfsx    f2, r3, r0
    fadds   f0, f0, f2
    stfs    f0, 0x30(sp)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lhz     r0, 0x96(r31)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r0, r6
    lfs     f1, 0x54(sp)
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0x34(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x4c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x250(r31)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x50(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x260(r31)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x54(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x270(r31)
    lfs     f1, -0xff8(rtoc)
    stfs    f1, 0x254(r31)
    lfs     f0, -0xfd8(rtoc)
    stfs    f0, 0x264(r31)
    stfs    f1, 0x274(r31)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x4c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x258(r31)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x50(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x268(r31)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x54(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x278(r31)
    lfs     f0, 0x4c(sp)
    stfs    f0, 0x25c(r31)
    lfs     f1, -0xf90(rtoc)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x26c(r31)
    lfs     f0, 0x54(sp)
    stfs    f0, 0x27c(r31)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl stateMachine__6TMarioFv
stateMachine__6TMarioFv: # 0x8025009c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    li      r3, 0x1
    b       branch_0x80250178

branch_0x802500c0:
    lwz     r0, 0x7c(r30)
    rlwinm  r0, r0, 0, 23, 25
    cmpwi   r0, 0xc0
    beq-    branch_0x80250140
    bge-    branch_0x802500f8
    cmpwi   r0, 0x40
    beq-    branch_0x80250128
    bge-    branch_0x802500ec
    cmpwi   r0, 0x0
    beq-    branch_0x8025011c
    b       branch_0x8025016c

branch_0x802500ec:
    cmpwi   r0, 0x80
    beq-    branch_0x80250134
    b       branch_0x8025016c

branch_0x802500f8:
    cmpwi   r0, 0x140
    beq-    branch_0x80250158
    bge-    branch_0x80250110
    cmpwi   r0, 0x100
    beq-    branch_0x8025014c
    b       branch_0x8025016c

branch_0x80250110:
    cmpwi   r0, 0x180
    beq-    branch_0x80250164
    b       branch_0x8025016c

branch_0x8025011c:
    mr      r3, r30
    bl      waitMain__6TMarioFv
    b       branch_0x8025016c

branch_0x80250128:
    mr      r3, r30
    bl      moveMain__6TMarioFv
    b       branch_0x8025016c

branch_0x80250134:
    mr      r3, r30
    bl      jumpMain__6TMarioFv
    b       branch_0x8025016c

branch_0x80250140:
    mr      r3, r30
    bl      swimMain__6TMarioFv
    b       branch_0x8025016c

branch_0x8025014c:
    mr      r3, r30
    bl      demoMain__6TMarioFv
    b       branch_0x8025016c

branch_0x80250158:
    mr      r3, r30
    bl      specMain__6TMarioFv
    b       branch_0x8025016c

branch_0x80250164:
    mr      r3, r30
    bl      actnMain__6TMarioFv
branch_0x8025016c:
    addi    r31, r31, 0x1
    cmpwi   r31, 0xa
    bgt-    branch_0x80250180
branch_0x80250178:
    cmpwi   r3, 0x0
    bne+    branch_0x802500c0
branch_0x80250180:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl checkPlayerAction__6TMarioFPQ26JDrama9TGraphics
checkPlayerAction__6TMarioFPQ26JDrama9TGraphics: # 0x80250198
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x74(r3)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      makeHistory__6TMarioFv
    mr      r3, r31
    bl      checkCurrentPlane__6TMarioFv
    mr      r3, r31
    bl      checkRideMovement__6TMarioFv
    lwz     r3, 0x74(r31)
    clrlwi. r0, r3, 30
    bne-    branch_0x802501f0
    ori     r0, r3, 0x20
    stw     r0, 0x74(r31)
branch_0x802501f0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkRideReCalc__6TMarioFv
checkRideReCalc__6TMarioFv: # 0x80250204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, 0x2c0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8025029c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8025024c
    lwz     r3, 0x2c0(r31)
    addi    r4, sp, 0xc
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80250268

branch_0x8025024c:
    lwz     r3, 0x2c0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0xc
    bl      PSMTXCopy
branch_0x80250268:
    addi    r3, sp, 0xc
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    lwz     r6, 0x2f4(r31)
    addi    r3, sp, 0xc
    lwz     r0, 0x2f8(r31)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x2f4
    stw     r6, 0x300(r31)
    stw     r0, 0x304(r31)
    lwz     r0, 0x2fc(r31)
    stw     r0, 0x308(r31)
    bl      PSMTXMultVec
branch_0x8025029c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl checkRideMovement__6TMarioFv
checkRideMovement__6TMarioFv: # 0x802502b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    li      r31, 0x0
    stw     r30, 0xc8(sp)
    mr      r30, r3
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r30)
    lwz     r7, -0x5eac(r13)
    stw     r4, 0xb0(sp)
    addi    r4, sp, 0xb0
    lwz     r6, -0x5ea8(r13)
    stw     r0, 0xb4(sp)
    lfs     f1, -0xfb8(rtoc)
    lwz     r0, 0x18(r30)
    lfs     f3, -0xf8c(rtoc)
    stw     r0, 0xb8(sp)
    lwz     r5, -0x5ea4(r13)
    lhz     r0, 0x96(r30)
    lfs     f0, 0xb0(sp)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fmuls   f2, f1, f2
    fmadds  f0, f3, f2, f0
    stfs    f0, 0xb0(sp)
    lhz     r0, 0x96(r30)
    lfs     f0, 0xb8(sp)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmuls   f2, f1, f2
    fmadds  f0, f3, f2, f0
    stfs    f0, 0xb8(sp)
    lfs     f2, 0x15c(r30)
    bl      checkWallPlane__6TMarioFP3Vecff
    lwz     r4, 0xe0(r30)
    lwz     r5, 0x44(r4)
    cmplwi  r5, 0x0
    beq-    branch_0x802503a8
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80250368
    li      r0, 0x1
    b       branch_0x8025036c

branch_0x80250368:
    li      r0, 0x0
branch_0x8025036c:
    clrlwi. r0, r0, 24
    bne-    branch_0x802503a8
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r30)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80250398
    li      r0, 0x1
    b       branch_0x8025039c

branch_0x80250398:
    li      r0, 0x0
branch_0x8025039c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802503a8
    mr      r31, r5
branch_0x802503a8:
    cmplwi  r5, 0x0
    beq-    branch_0x802503d8
    lwz     r4, 0x7c(r30)
    addis   r0, r4, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x802503d8
    lhz     r0, 0x84(r30)
    cmplwi  r0, 0x2
    beq-    branch_0x802503d4
    cmplwi  r0, 0x3
    bne-    branch_0x802503d8
branch_0x802503d4:
    mr      r31, r5
branch_0x802503d8:
    lwz     r0, 0x7c(r30)
    rlwinm. r0, r0, 0, 2, 2
    beq-    branch_0x802503ec
    li      r0, 0x1
    b       branch_0x802503f0

branch_0x802503ec:
    li      r0, 0x0
branch_0x802503f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250410
    cmplwi  r3, 0x0
    beq-    branch_0x80250410
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80250410
    mr      r31, r0
branch_0x80250410:
    cmplwi  r31, 0x0
    beq-    branch_0x80250560
    lwz     r3, 0x2c0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8025042c
    cmplw   r3, r31
    beq-    branch_0x802504c4
branch_0x8025042c:
    stw     r31, 0x2c0(r30)
    lwz     r3, 0x2c0(r30)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x30c(r30)
    lwz     r3, 0x2c0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80250568
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80250470
    lwz     r3, 0x2c0(r30)
    addi    r4, sp, 0x3c
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x8025048c

branch_0x80250470:
    lwz     r3, 0x2c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x3c
    bl      PSMTXCopy
branch_0x8025048c:
    addi    r3, sp, 0x3c
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    lwz     r6, 0x2f4(r30)
    addi    r3, sp, 0x3c
    lwz     r0, 0x2f8(r30)
    addi    r4, r30, 0x10
    addi    r5, r30, 0x2f4
    stw     r6, 0x300(r30)
    stw     r0, 0x304(r30)
    lwz     r0, 0x2fc(r30)
    stw     r0, 0x308(r30)
    bl      PSMTXMultVec
    b       branch_0x80250568

branch_0x802504c4:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802504ec
    lwz     r3, 0x2c0(r30)
    addi    r4, sp, 0x80
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80250508

branch_0x802504ec:
    lwz     r3, 0x2c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x80
    bl      PSMTXCopy
branch_0x80250508:
    addi    r3, sp, 0x80
    addi    r4, r30, 0x2f4
    addi    r5, r30, 0x10
    bl      PSMTXMultVec
    lwz     r3, 0x2c0(r30)
    lfs     f0, 0x30c(r30)
    lfs     f1, 0x34(r3)
    lfs     f2, -0xf88(rtoc)
    fsubs   f1, f1, f0
    lfs     f0, -0xf84(rtoc)
    lha     r3, 0x96(r30)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    add     r0, r3, r0
    sth     r0, 0x96(r30)
    lwz     r3, 0x2c0(r30)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x30c(r30)
    b       branch_0x80250568

branch_0x80250560:
    li      r0, 0x0
    stw     r0, 0x2c0(r30)
branch_0x80250568:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl checkCurrentPlane__6TMarioFv
checkCurrentPlane__6TMarioFv: # 0x80250580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x290(sp)
    stfd    f31, 0x288(sp)
    stfd    f30, 0x280(sp)
    stmw    r26, 0x268(sp)
    mr      r29, r3
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x802505b0
    li      r0, 0x1
    b       branch_0x802505b4

branch_0x802505b0:
    li      r0, 0x0
branch_0x802505b4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80251020
    lwz     r3, 0x3f0(r29)
    li      r28, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x802505dc
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x802505dc
    li      r28, 0x1
branch_0x802505dc:
    clrlwi. r0, r28, 24
    beq-    branch_0x802505f0
    lfs     f0, -0xff4(rtoc)
    stfs    f0, 0x15c(r29)
    b       branch_0x802505f8

branch_0x802505f0:
    lfs     f0, -0xfb8(rtoc)
    stfs    f0, 0x15c(r29)
branch_0x802505f8:
    lfs     f1, -0xf80(rtoc)
    li      r0, 0x2
    lfs     f0, 0x14(r29)
    li      r28, 0x0
    lfs     f3, 0x15c(r29)
    fadds   f1, f1, f0
    lfs     f2, 0x18(r29)
    lfs     f0, 0x10(r29)
    addi    r4, sp, 0x23c
    stfs    f0, 0x23c(sp)
    stfs    f1, 0x240(sp)
    stfs    f2, 0x244(sp)
    stfs    f3, 0x248(sp)
    stw     r0, 0x24c(sp)
    stw     r28, 0x254(sp)
    lwz     r3, -0x6328(r13)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lha     r0, 0x14c(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x80250650
    li      r0, 0x1
    b       branch_0x802506e4

branch_0x80250650:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80250660
    li      r28, 0x1
branch_0x80250660:
    clrlwi. r0, r28, 24
    beq-    branch_0x80250670
    li      r0, 0x1
    b       branch_0x802506e4

branch_0x80250670:
    lwz     r4, 0x7c(r29)
    cmplwi  r4, 0x89c
    bne-    branch_0x80250684
    li      r0, 0x1
    b       branch_0x802506e4

branch_0x80250684:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x802506d8
    cmplwi  r3, 0x4
    beq-    branch_0x802506d8
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x802506b4
    cmplwi  r3, 0x2
    beq-    branch_0x802506b4
    li      r0, 0x0
branch_0x802506b4:
    clrlwi. r0, r0, 24
    bne-    branch_0x802506d8
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x802506cc
    li      r0, 0x1
    b       branch_0x802506d0

branch_0x802506cc:
    li      r0, 0x0
branch_0x802506d0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802506e0
branch_0x802506d8:
    li      r0, 0x1
    b       branch_0x802506e4

branch_0x802506e0:
    li      r0, 0x0
branch_0x802506e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8025092c
    addi    r30, sp, 0x23c
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x802507e8

branch_0x802506fc:
    addi    r0, r28, 0x1c
    lwzx    r3, r30, r0
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0xb
    beq-    branch_0x80250728
    cmplwi  r0, 0x800b
    beq-    branch_0x80250728
    cmplwi  r0, 0x103
    beq-    branch_0x80250728
    cmplwi  r0, 0x101
    bne-    branch_0x80250730
branch_0x80250728:
    li      r0, 0x1
    b       branch_0x80250734

branch_0x80250730:
    li      r0, 0x0
branch_0x80250734:
    clrlwi. r0, r0, 24
    beq-    branch_0x802507e0
    lha     r4, 0x2(r3)
    mr      r3, r29
    bl      getDmgMapCode__6TMarioCFi
    lhz     r4, 0x96(r29)
    addi    r9, r3, 0x90
    lwz     r0, -0x5eac(r13)
    addi    r10, r3, 0x7c
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r29)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    addi    r8, r3, 0x54
    addi    r11, r3, 0x68
    fadds   f0, f1, f0
    addi    r7, r3, 0x40
    addi    r27, r3, 0x2c
    addi    r26, r3, 0x18
    stfs    f0, 0x484(r29)
    mr      r3, r29
    lhz     r5, 0x96(r29)
    addi    r4, r29, 0x474
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x18(r29)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r29)
    lwz     r12, 0x0(r29)
    lbz     r5, 0x0(r26)
    lwz     r12, 0xdc(r12)
    lbz     r6, 0x0(r27)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x0(r11)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x0(r10)
    lha     r9, 0x0(r9)
    blrl
branch_0x802507e0:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x802507e8:
    lwz     r0, 0x250(sp)
    cmpw    r31, r0
    blt+    branch_0x802506fc
    cmpwi   r0, 0x2
    bne-    branch_0x8025092c
    lwz     r5, 0x258(sp)
    lwz     r6, 0x25c(sp)
    lfs     f2, 0x38(r5)
    lfs     f1, 0x38(r6)
    lfs     f3, 0x34(r5)
    fmuls   f1, f2, f1
    lfs     f2, 0x34(r6)
    lfs     f5, 0x3c(r5)
    lfs     f4, 0x3c(r6)
    fmadds  f1, f3, f2, f1
    lfs     f0, -0xf7c(rtoc)
    fmadds  f1, f5, f4, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025092c
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x14(sp)
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0x224(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x228(sp)
    stw     r0, 0x22c(sp)
    lfs     f6, 0x40(r5)
    lfs     f5, 0x3c(r5)
    lfs     f2, 0x34(r5)
    lfs     f1, 0x38(r5)
    lfs     f0, 0x228(sp)
    stw     r4, 0x218(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x224(sp)
    stw     r3, 0x21c(sp)
    lfs     f4, 0x22c(sp)
    stw     r0, 0x220(sp)
    fmadds  f3, f2, f1, f0
    lfs     f1, 0x38(r6)
    lfs     f0, 0x21c(sp)
    lfs     f2, 0x34(r6)
    fmadds  f4, f5, f4, f3
    fmuls   f0, f1, f0
    lfs     f1, 0x218(sp)
    lfs     f3, 0x3c(r6)
    lwz     r3, 0x44(r5)
    fmadds  f0, f2, f1, f0
    lfs     f1, 0x220(sp)
    cmplwi  r3, 0x0
    lfs     f2, 0x40(r6)
    fadds   f4, f6, f4
    fmadds  f0, f3, f1, f0
    fadds   f1, f2, f0
    beq-    branch_0x802508e4
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x2bd
    beq-    branch_0x80250900
branch_0x802508e4:
    lwz     r3, 0x44(r6)
    cmplwi  r3, 0x0
    beq-    branch_0x8025092c
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x2bd
    bne-    branch_0x8025092c
branch_0x80250900:
    lfs     f0, -0xfe0(rtoc)
    fcmpo   cr0, f4, f0
    blt-    branch_0x80250914
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025092c
branch_0x80250914:
    lha     r4, 0x58c(r29)
    addi    r3, r29, 0x0
    lha     r7, 0x27bc(r29)
    li      r5, 0x3
    li      r6, 0x0
    bl      floorDamageExec__6TMarioFiiii
branch_0x8025092c:
    lfs     f1, -0xf94(rtoc)
    li      r26, 0x1
    lfs     f0, 0x14(r29)
    li      r28, 0x0
    lfs     f2, 0x15c(r29)
    lfs     f3, -0xf78(rtoc)
    fadds   f1, f1, f0
    lfs     f4, 0x18(r29)
    addi    r4, sp, 0x23c
    lfs     f0, 0x10(r29)
    fmuls   f2, f3, f2
    stfs    f0, 0x23c(sp)
    stfs    f1, 0x240(sp)
    stfs    f4, 0x244(sp)
    stfs    f2, 0x248(sp)
    stw     r26, 0x24c(sp)
    stw     r28, 0x254(sp)
    lwz     r3, -0x6328(r13)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lha     r0, 0x14c(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x80250988
    b       branch_0x80250a20

branch_0x80250988:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80250998
    b       branch_0x8025099c

branch_0x80250998:
    mr      r26, r28
branch_0x8025099c:
    clrlwi. r0, r26, 24
    beq-    branch_0x802509ac
    li      r26, 0x1
    b       branch_0x80250a20

branch_0x802509ac:
    lwz     r4, 0x7c(r29)
    cmplwi  r4, 0x89c
    bne-    branch_0x802509c0
    li      r26, 0x1
    b       branch_0x80250a20

branch_0x802509c0:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80250a14
    cmplwi  r3, 0x4
    beq-    branch_0x80250a14
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x802509f0
    cmplwi  r3, 0x2
    beq-    branch_0x802509f0
    li      r0, 0x0
branch_0x802509f0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80250a14
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x80250a08
    li      r0, 0x1
    b       branch_0x80250a0c

branch_0x80250a08:
    li      r0, 0x0
branch_0x80250a0c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250a1c
branch_0x80250a14:
    li      r26, 0x1
    b       branch_0x80250a20

branch_0x80250a1c:
    li      r26, 0x0
branch_0x80250a20:
    clrlwi. r0, r26, 24
    bne-    branch_0x80250b30
    addi    r31, sp, 0x23c
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x80250b24

branch_0x80250a38:
    addi    r0, r28, 0x1c
    lwzx    r3, r31, r0
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0xb
    beq-    branch_0x80250a64
    cmplwi  r0, 0x800b
    beq-    branch_0x80250a64
    cmplwi  r0, 0x103
    beq-    branch_0x80250a64
    cmplwi  r0, 0x101
    bne-    branch_0x80250a6c
branch_0x80250a64:
    li      r0, 0x1
    b       branch_0x80250a70

branch_0x80250a6c:
    li      r0, 0x0
branch_0x80250a70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250b1c
    lha     r4, 0x2(r3)
    mr      r3, r29
    bl      getDmgMapCode__6TMarioCFi
    lhz     r4, 0x96(r29)
    addi    r9, r3, 0x90
    lwz     r0, -0x5eac(r13)
    addi    r10, r3, 0x7c
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r29)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    addi    r8, r3, 0x54
    addi    r11, r3, 0x68
    fadds   f0, f1, f0
    addi    r7, r3, 0x40
    addi    r26, r3, 0x2c
    addi    r27, r3, 0x18
    stfs    f0, 0x484(r29)
    mr      r3, r29
    lhz     r5, 0x96(r29)
    addi    r4, r29, 0x474
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x18(r29)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r29)
    lwz     r12, 0x0(r29)
    lbz     r5, 0x0(r27)
    lwz     r12, 0xdc(r12)
    lbz     r6, 0x0(r26)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x0(r11)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x0(r10)
    lha     r9, 0x0(r9)
    blrl
branch_0x80250b1c:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x4
branch_0x80250b24:
    lwz     r0, 0x250(sp)
    cmpw    r30, r0
    blt+    branch_0x80250a38
branch_0x80250b30:
    lfs     f30, 0x18(r29)
    addi    r4, r29, 0xe0
    lfs     f1, -0xf74(rtoc)
    lfs     f0, 0x14(r29)
    fmr     f3, f30
    lfs     f31, 0x10(r29)
    fadds   f2, f1, f0
    lwz     r3, -0x6328(r13)
    fmr     f1, f31
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xec(r29)
    lwz     r3, 0xe0(r29)
    bl      isMarioThrough__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80250b90
    lfs     f2, 0xec(r29)
    fmr     f1, f31
    lfs     f0, -0xfd8(rtoc)
    fmr     f3, f30
    lwz     r3, -0x6328(r13)
    fsubs   f2, f2, f0
    addi    r4, r29, 0xe0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xec(r29)
branch_0x80250b90:
    lfs     f1, -0xff4(rtoc)
    addi    r4, r29, 0xdc
    lfs     f0, 0x14(r29)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r29)
    lfs     f3, 0x18(r29)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xe8(r29)
    lha     r0, 0x14c(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x80250bc8
    li      r0, 0x1
    b       branch_0x80250c64

branch_0x80250bc8:
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80250bdc
    li      r0, 0x1
    b       branch_0x80250be0

branch_0x80250bdc:
    li      r0, 0x0
branch_0x80250be0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250bf0
    li      r0, 0x1
    b       branch_0x80250c64

branch_0x80250bf0:
    lwz     r4, 0x7c(r29)
    cmplwi  r4, 0x89c
    bne-    branch_0x80250c04
    li      r0, 0x1
    b       branch_0x80250c64

branch_0x80250c04:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80250c58
    cmplwi  r3, 0x4
    beq-    branch_0x80250c58
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80250c34
    cmplwi  r3, 0x2
    beq-    branch_0x80250c34
    li      r0, 0x0
branch_0x80250c34:
    clrlwi. r0, r0, 24
    bne-    branch_0x80250c58
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x80250c4c
    li      r0, 0x1
    b       branch_0x80250c50

branch_0x80250c4c:
    li      r0, 0x0
branch_0x80250c50:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250c60
branch_0x80250c58:
    li      r0, 0x1
    b       branch_0x80250c64

branch_0x80250c60:
    li      r0, 0x0
branch_0x80250c64:
    clrlwi. r0, r0, 24
    bne-    branch_0x80250e94
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r29)
    lfs     f2, 0x14(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80250c90
    li      r0, 0x1
    b       branch_0x80250c94

branch_0x80250c90:
    li      r0, 0x0
branch_0x80250c94:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250d9c
    lwz     r3, 0xe0(r29)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0xb
    beq-    branch_0x80250cc4
    cmplwi  r0, 0x800b
    beq-    branch_0x80250cc4
    cmplwi  r0, 0x103
    beq-    branch_0x80250cc4
    cmplwi  r0, 0x101
    bne-    branch_0x80250ccc
branch_0x80250cc4:
    li      r0, 0x1
    b       branch_0x80250cd0

branch_0x80250ccc:
    li      r0, 0x0
branch_0x80250cd0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250d9c
    lwz     r0, 0x7c(r29)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80250cec
    li      r0, 0x1
    b       branch_0x80250cf0

branch_0x80250cec:
    li      r0, 0x0
branch_0x80250cf0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80250d9c
    lha     r4, 0x2(r3)
    mr      r3, r29
    bl      getDmgMapCode__6TMarioCFi
    lhz     r4, 0x96(r29)
    addi    r9, r3, 0x90
    lwz     r0, -0x5eac(r13)
    addi    r10, r3, 0x7c
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r29)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    addi    r8, r3, 0x54
    addi    r11, r3, 0x68
    fadds   f0, f1, f0
    addi    r7, r3, 0x40
    addi    r26, r3, 0x2c
    addi    r27, r3, 0x18
    stfs    f0, 0x484(r29)
    mr      r3, r29
    lhz     r5, 0x96(r29)
    addi    r4, r29, 0x474
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x18(r29)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r29)
    lwz     r12, 0x0(r29)
    lbz     r5, 0x0(r27)
    lwz     r12, 0xdc(r12)
    lbz     r6, 0x0(r26)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x0(r11)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x0(r10)
    lha     r9, 0x0(r9)
    blrl
branch_0x80250d9c:
    lfs     f2, -0xfac(rtoc)
    lfs     f1, 0x14(r29)
    lfs     f0, 0xe8(r29)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80250e94
    lwz     r3, 0xdc(r29)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0xb
    beq-    branch_0x80250ddc
    cmplwi  r0, 0x800b
    beq-    branch_0x80250ddc
    cmplwi  r0, 0x103
    beq-    branch_0x80250ddc
    cmplwi  r0, 0x101
    bne-    branch_0x80250de4
branch_0x80250ddc:
    li      r0, 0x1
    b       branch_0x80250de8

branch_0x80250de4:
    li      r0, 0x0
branch_0x80250de8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250e94
    lha     r4, 0x2(r3)
    mr      r3, r29
    bl      getDmgMapCode__6TMarioCFi
    lhz     r4, 0x96(r29)
    addi    r9, r3, 0x90
    lwz     r0, -0x5eac(r13)
    addi    r10, r3, 0x7c
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r29)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    addi    r8, r3, 0x54
    addi    r11, r3, 0x68
    fadds   f0, f1, f0
    addi    r7, r3, 0x40
    addi    r26, r3, 0x2c
    addi    r27, r3, 0x18
    stfs    f0, 0x484(r29)
    mr      r3, r29
    lhz     r5, 0x96(r29)
    addi    r4, r29, 0x474
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x18(r29)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r29)
    lwz     r12, 0x0(r29)
    lbz     r5, 0x0(r27)
    lwz     r12, 0xdc(r12)
    lbz     r6, 0x0(r26)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x0(r11)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x0(r10)
    lha     r9, 0x0(r9)
    blrl
branch_0x80250e94:
    lwz     r3, 0xe0(r29)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80250eac
    li      r0, 0x1
    b       branch_0x80250eb0

branch_0x80250eac:
    li      r0, 0x0
branch_0x80250eb0:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80250ec4
    li      r0, 0x0
    b       branch_0x80250ec8

branch_0x80250ec4:
    li      r0, 0x1
branch_0x80250ec8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80251014
    addi    r3, r3, 0x34
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    sth     r3, 0xf4(r29)
    mr      r3, r29
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80250efc
    li      r0, 0x1
    b       branch_0x80250fbc

branch_0x80250efc:
    lwz     r3, 0xe0(r29)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x80250f1c
    cmplwi  r4, 0x800c
    beq-    branch_0x80250f1c
    cmplwi  r4, 0xa00c
    bne-    branch_0x80250f24
branch_0x80250f1c:
    li      r0, 0x1
    b       branch_0x80250f28

branch_0x80250f24:
    li      r0, 0x0
branch_0x80250f28:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250f38
    li      r0, 0x1
    b       branch_0x80250fbc

branch_0x80250f38:
    cmplwi  r4, 0x2
    beq-    branch_0x80250f48
    cmplwi  r4, 0x8002
    bne-    branch_0x80250f50
branch_0x80250f48:
    li      r0, 0x1
    b       branch_0x80250f54

branch_0x80250f50:
    li      r0, 0x0
branch_0x80250f54:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250f74
    lfs     f1, 0x38(r3)
    lfs     f0, -0xf70(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80250f74
    li      r0, 0x1
    b       branch_0x80250fbc

branch_0x80250f74:
    cmplwi  r4, 0x3
    beq-    branch_0x80250f84
    cmplwi  r4, 0x8003
    bne-    branch_0x80250f8c
branch_0x80250f84:
    li      r0, 0x1
    b       branch_0x80250f90

branch_0x80250f8c:
    li      r0, 0x0
branch_0x80250f90:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250fa0
    li      r0, 0x0
    b       branch_0x80250fbc

branch_0x80250fa0:
    lfs     f1, 0x38(r3)
    lfs     f0, 0x834(r29)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80250fb8
    li      r0, 0x1
    b       branch_0x80250fbc

branch_0x80250fb8:
    li      r0, 0x0
branch_0x80250fbc:
    cmpwi   r0, 0x0
    bne-    branch_0x80250fe4
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80250fd8
    li      r0, 0x1
    b       branch_0x80250fdc

branch_0x80250fd8:
    li      r0, 0x0
branch_0x80250fdc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80250ff0
branch_0x80250fe4:
    lwz     r0, 0x74(r29)
    ori     r0, r0, 0x8
    stw     r0, 0x74(r29)
branch_0x80250ff0:
    lfs     f1, -0xff0(rtoc)
    lfs     f0, 0xec(r29)
    lfs     f2, 0x14(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80251014
    lwz     r0, 0x74(r29)
    ori     r0, r0, 0x4
    stw     r0, 0x74(r29)
branch_0x80251014:
    lwz     r0, 0x118(r29)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0x118(r29)
branch_0x80251020:
    lmw     r26, 0x268(sp)
    lwz     r0, 0x294(sp)
    lfd     f31, 0x288(sp)
    lfd     f30, 0x280(sp)
    mtlr    r0
    addi    sp, sp, 0x290
    blr


.globl getDmgMapCode__6TMarioCFi
getDmgMapCode__6TMarioCFi: # 0x8025103c
    cmplwi  r4, 0x9
    bgt-    branch_0x802510ac
    lis     r5, 0x803e
    subi    r5, r5, 0x2e98
    slwi    r0, r4, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr       
    addi    r3, r3, 0x3bd4
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x24ba64, 0x802510ac - 0x80251064
branch_0x802510ac:
    addi    r3, r3, 0x3bd4
    blr


.globl checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData
checkGroundPlane__6TMarioFfffPfPPC12TBGCheckData: # 0x802510b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    fmr     f31, f3
    stfd    f30, 0x30(sp)
    fmr     f30, f1
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    mr      r4, r31
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x0(r30)
    lwz     r3, 0x0(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x400
    beq-    branch_0x80251138
    cmplwi  r3, 0x8400
    beq-    branch_0x80251138
    subi    r0, r3, 0x100
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80251138
    subi    r0, r3, 0x800
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x1
    ble-    branch_0x80251138
    cmplwi  r3, 0x201
    beq-    branch_0x80251138
    cmplwi  r3, 0x203
    bne-    branch_0x80251140
branch_0x80251138:
    li      r0, 0x1
    b       branch_0x80251144

branch_0x80251140:
    li      r0, 0x0
branch_0x80251144:
    clrlwi. r0, r0, 24
    beq-    branch_0x80251170
    lfs     f2, 0x0(r30)
    fmr     f1, f30
    lfs     f0, -0xfd8(rtoc)
    fmr     f3, f31
    lwz     r3, -0x6328(r13)
    fsubs   f2, f2, f0
    mr      r4, r31
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x0(r30)
branch_0x80251170:
    lwz     r3, 0x0(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80251188
    li      r0, 0x1
    b       branch_0x8025118c

branch_0x80251188:
    li      r0, 0x0
branch_0x8025118c:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802511a0
    li      r0, 0x0
    b       branch_0x802511a4

branch_0x802511a0:
    li      r0, 0x1
branch_0x802511a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802511b4
    li      r3, 0x1
    b       branch_0x802511b8

branch_0x802511b4:
    li      r3, 0x0
branch_0x802511b8:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl makeHistory__6TMarioFv
makeHistory__6TMarioFv: # 0x802511d8
    lfs     f1, 0x8c(r3)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802512c4
    lbz     r0, 0x534(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802511fc
    lha     r0, 0x96(r3)
    sth     r0, 0x536(r3)
branch_0x802511fc:
    lbz     r0, 0x534(r3)
    addi    r6, r3, 0x23bc
    lha     r5, 0x90(r3)
    lwz     r4, 0x530(r3)
    slwi    r0, r0, 1
    sthx    r5, r4, r0
    lbz     r4, 0x534(r3)
    addi    r0, r4, 0x1
    stb     r0, 0x534(r3)
    lbz     r4, 0x534(r3)
    lha     r0, 0x23bc(r3)
    cmpw    r4, r0
    blt-    branch_0x8025126c
    li      r7, 0x0
    li      r4, 0x0
    b       branch_0x80251254

branch_0x8025123c:
    lwz     r0, 0x530(r3)
    addi    r7, r7, 0x1
    add     r5, r0, r4
    lha     r0, 0x2(r5)
    addi    r4, r4, 0x2
    sth     r0, 0x0(r5)
branch_0x80251254:
    lha     r0, 0x23bc(r3)
    cmpw    r7, r0
    blt+    branch_0x8025123c
    lha     r4, 0x0(r6)
    subi    r0, r4, 0x1
    stb     r0, 0x534(r3)
branch_0x8025126c:
    lha     r4, 0x96(r3)
    lha     r0, 0x90(r3)
    subf    r0, r4, r0
    extsh   r0, r0
    cmpwi   r0, -0x2000
    blt-    branch_0x802512b8
    cmpwi   r0, 0x2000
    bgt-    branch_0x802512b8
    lha     r4, 0x538(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x538(r3)
    lha     r0, 0x538(r3)
    cmpwi   r0, 0x78
    ble-    branch_0x802512d0
    li      r0, 0x6
    stb     r0, 0x53b(r3)
    li      r0, 0x78
    sth     r0, 0x538(r3)
    b       branch_0x802512d0

branch_0x802512b8:
    li      r0, 0x0
    sth     r0, 0x538(r3)
    b       branch_0x802512d0

branch_0x802512c4:
    li      r0, 0x0
    stb     r0, 0x534(r3)
    sth     r0, 0x538(r3)
branch_0x802512d0:
    lbz     r0, 0x53b(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802512f4
    li      r0, 0x1
    stb     r0, 0x53a(r3)
    lbz     r4, 0x53b(r3)
    subi    r0, r4, 0x1
    stb     r0, 0x53b(r3)
    blr

branch_0x802512f4:
    li      r0, 0x0
    stb     r0, 0x53a(r3)
    stb     r0, 0x53b(r3)
    blr


.globl checkStickRotate__6TMarioFPi
checkStickRotate__6TMarioFPi: # 0x80251304
    stwu    sp, -0x30(sp)
    li      r8, 0x0
    li      r9, 0x0
    lbz     r5, 0x534(r3)
    lis     r6, 0x4330
    lfd     f6, -0xfe8(rtoc)
    subic.  r0, r5, 0x1
    lfs     f4, -0xf6c(rtoc)
    lfs     f3, -0xf68(rtoc)
    li      r5, 0x0
    lfs     f2, -0xf64(rtoc)
    mtctr   r0
    lfs     f1, -0xf60(rtoc)
    ble-    branch_0x80251410
branch_0x8025133c:
    lwz     r0, 0x530(r3)
    add     r7, r0, r5
    lha     r0, 0x0(r7)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    stw     r6, 0x20(sp)
    lfd     f0, 0x20(sp)
    stw     r0, 0x2c(sp)
    fsubs   f0, f0, f6
    stw     r6, 0x28(sp)
    lfd     f5, 0x28(sp)
    fcmpo   cr0, f0, f4
    fsubs   f5, f5, f6
    blt-    branch_0x8025137c
    fcmpo   cr0, f5, f3
    ble-    branch_0x80251384
branch_0x8025137c:
    li      r0, 0x1
    stw     r0, 0x10(sp)
branch_0x80251384:
    fcmpo   cr0, f4, f5
    cror    2, 0, 2
    bne-    branch_0x802513a4
    fcmpo   cr0, f5, f2
    cror    2, 0, 2
    bne-    branch_0x802513a4
    li      r0, 0x1
    stw     r0, 0x14(sp)
branch_0x802513a4:
    fcmpo   cr0, f2, f5
    bge-    branch_0x802513bc
    fcmpo   cr0, f5, f1
    bge-    branch_0x802513bc
    li      r0, 0x1
    stw     r0, 0x18(sp)
branch_0x802513bc:
    fcmpo   cr0, f1, f5
    cror    2, 0, 2
    bne-    branch_0x802513dc
    fcmpo   cr0, f5, f3
    cror    2, 0, 2
    bne-    branch_0x802513dc
    li      r0, 0x1
    stw     r0, 0x1c(sp)
branch_0x802513dc:
    lha     r0, 0x2(r7)
    xoris   r0, r0, 0x8000
    stw     r0, 0x24(sp)
    stw     r6, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f6
    fcmpo   cr0, f5, f0
    bge-    branch_0x80251404
    addi    r8, r8, 0x1
    b       branch_0x80251408

branch_0x80251404:
    addi    r9, r9, 0x1
branch_0x80251408:
    addi    r5, r5, 0x2
    bdnz+      branch_0x8025133c
branch_0x80251410:
    lwz     r0, 0x10(sp)
    li      r3, 0x0
    cmpwi   r0, 0x1
    bne-    branch_0x80251424
    li      r3, 0x1
branch_0x80251424:
    lwz     r0, 0x14(sp)
    cmpwi   r0, 0x1
    bne-    branch_0x80251434
    addi    r3, r3, 0x1
branch_0x80251434:
    lwz     r0, 0x18(sp)
    cmpwi   r0, 0x1
    bne-    branch_0x80251444
    addi    r3, r3, 0x1
branch_0x80251444:
    lwz     r0, 0x1c(sp)
    cmpwi   r0, 0x1
    bne-    branch_0x80251454
    addi    r3, r3, 0x1
branch_0x80251454:
    cmpwi   r3, 0x4
    blt-    branch_0x80251480
    cmpw    r8, r9
    ble-    branch_0x80251470
    li      r0, 0x2
    stw     r0, 0x0(r4)
    b       branch_0x80251478

branch_0x80251470:
    li      r0, 0x3
    stw     r0, 0x0(r4)
branch_0x80251478:
    li      r3, 0x1
    b       branch_0x8025148c

branch_0x80251480:
    li      r0, 0x4
    stw     r0, 0x0(r4)
    li      r3, 0x0
branch_0x8025148c:
    addi    sp, sp, 0x30
    blr


.globl checkController__6TMarioFPQ26JDrama9TGraphics
checkController__6TMarioFPQ26JDrama9TGraphics: # 0x80251494
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f0(sp)
    stfd    f31, 0x1e8(sp)
    stw     r31, 0x1e4(sp)
    mr      r31, r3
    stw     r30, 0x1e0(sp)
    lwz     r4, 0x4fc(r3)
    lfs     f1, -0xf5c(rtoc)
    lfs     f0, 0xa8(r4)
    lwz     r3, 0x108(r3)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1d8(sp)
    lwz     r0, 0x1dc(sp)
    sth     r0, 0x0(r3)
    lwz     r4, 0x4fc(r31)
    lwz     r3, 0x108(r31)
    lfs     f0, 0xac(r4)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x1d0(sp)
    lwz     r0, 0x1d4(sp)
    sth     r0, 0x2(r3)
    lfs     f5, 0x368(r31)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f5, f0
    ble-    branch_0x8025150c
    li      r0, 0x1
    b       branch_0x80251510

branch_0x8025150c:
    li      r0, 0x0
branch_0x80251510:
    cmpwi   r0, 0x0
    beq-    branch_0x802515b4
    lha     r0, 0x2428(r31)
    lis     r4, 0x4330
    lwz     r3, 0x108(r31)
    xoris   r0, r0, 0x8000
    lfd     f2, -0xfe8(rtoc)
    stw     r0, 0x1d4(sp)
    lha     r0, 0x0(r3)
    stw     r4, 0x1d0(sp)
    xoris   r0, r0, 0x8000
    lfs     f6, 0x2464(r31)
    lfd     f0, 0x1d0(sp)
    stw     r0, 0x1dc(sp)
    fsubs   f0, f0, f2
    lfs     f1, 0x2478(r31)
    stw     r4, 0x1d8(sp)
    lfs     f3, -0xfd8(rtoc)
    fsubs   f4, f1, f6
    fdivs   f1, f5, f0
    lfd     f0, 0x1d8(sp)
    fsubs   f1, f3, f1
    fsubs   f0, f0, f2
    fmadds  f1, f4, f1, f6
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x1c8(sp)
    lwz     r0, 0x1cc(sp)
    sth     r0, 0x0(r3)
    lwz     r3, 0x108(r31)
    lha     r0, 0x2(r3)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    stw     r4, 0x1c0(sp)
    lfd     f0, 0x1c0(sp)
    fsubs   f0, f0, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x1b8(sp)
    lwz     r0, 0x1bc(sp)
    sth     r0, 0x2(r3)
branch_0x802515b4:
    lwz     r3, 0x108(r31)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    lwz     r3, 0x108(r31)
    stw     r0, 0x8(r3)
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802515e8
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x4(r3)
branch_0x802515e8:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80251608
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0x8(r3)
branch_0x80251608:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80251628
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x200
    stw     r0, 0x4(r3)
branch_0x80251628:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80251648
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x200
    stw     r0, 0x8(r3)
branch_0x80251648:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80251668
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    ori     r0, r0, 0x20
    stw     r0, 0x4(r3)
branch_0x80251668:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80251688
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x20
    stw     r0, 0x8(r3)
branch_0x80251688:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x802516a8
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x10
    stw     r0, 0x8(r3)
branch_0x802516a8:
    lwz     r5, 0x4fc(r31)
    addi    r3, r31, 0x2358
    lwz     r7, 0x108(r31)
    addi    r4, r31, 0x236c
    lfs     f0, 0xb4(r5)
    addi    r5, r31, 0x2380
    fctiwz  f0, f0
    addi    r6, r31, 0x2394
    stfd    f0, 0x1b8(sp)
    lwz     r0, 0x1bc(sp)
    stb     r0, 0xc(r7)
    lwz     r8, 0x4fc(r31)
    lwz     r7, 0x108(r31)
    lfs     f0, 0xb0(r8)
    fctiwz  f0, f0
    stfd    f0, 0x1c0(sp)
    lwz     r0, 0x1c4(sp)
    stb     r0, 0xd(r7)
    lwz     r7, 0x4fc(r31)
    lbz     r11, 0x2358(r31)
    lfs     f1, 0xb4(r7)
    lfs     f0, 0xb0(r7)
    fctiwz  f1, f1
    lbz     r10, 0x236c(r31)
    fctiwz  f0, f0
    lbz     r9, 0x2380(r31)
    lfs     f4, 0x2394(r31)
    stfd    f1, 0x1d8(sp)
    lwz     r0, 0x1dc(sp)
    stfd    f1, 0x1c8(sp)
    clrlwi  r0, r0, 24
    stfd    f0, 0x1d0(sp)
    cmplw   r0, r11
    lwz     r0, 0x1cc(sp)
    lwz     r7, 0x1d4(sp)
    bge-    branch_0x80251740
    lfs     f0, -0xff8(rtoc)
    b       branch_0x802517ec

branch_0x80251740:
    clrlwi  r8, r0, 24
    cmplw   r8, r10
    bge-    branch_0x80251790
    subf    r8, r11, r8
    lfd     f2, -0xfe8(rtoc)
    xoris   r8, r8, 0x8000
    stw     r8, 0x1bc(sp)
    subf    r8, r11, r10
    lis     r9, 0x4330
    stw     r9, 0x1b8(sp)
    xoris   r8, r8, 0x8000
    stw     r8, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r9, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f4, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    b       branch_0x802517ec

branch_0x80251790:
    cmplw   r8, r9
    bge-    branch_0x802517e8
    subf    r8, r10, r8
    lfs     f0, -0xfd8(rtoc)
    xoris   r8, r8, 0x8000
    lfd     f2, -0xfe8(rtoc)
    stw     r8, 0x1bc(sp)
    subf    r8, r10, r9
    lis     r9, 0x4330
    fsubs   f3, f0, f4
    stw     r9, 0x1b8(sp)
    xoris   r8, r8, 0x8000
    stw     r8, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r9, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    b       branch_0x802517ec

branch_0x802517e8:
    lfs     f0, -0xfd8(rtoc)
branch_0x802517ec:
    lwz     r9, 0x108(r31)
    clrlwi  r8, r7, 24
    stfs    f0, 0x1c(r9)
    lbz     r11, 0x0(r3)
    lbz     r10, 0x0(r4)
    cmplw   r8, r11
    lbz     r9, 0x0(r5)
    lfs     f4, 0x0(r6)
    bge-    branch_0x80251818
    lfs     f0, -0xff8(rtoc)
    b       branch_0x802518c0

branch_0x80251818:
    cmplw   r8, r10
    bge-    branch_0x80251864
    subf    r8, r11, r8
    lfd     f2, -0xfe8(rtoc)
    xoris   r8, r8, 0x8000
    stw     r8, 0x1bc(sp)
    subf    r8, r11, r10
    lis     r9, 0x4330
    stw     r9, 0x1b8(sp)
    xoris   r8, r8, 0x8000
    stw     r8, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r9, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f4, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    b       branch_0x802518c0

branch_0x80251864:
    cmplw   r8, r9
    bge-    branch_0x802518bc
    subf    r8, r10, r8
    lfs     f0, -0xfd8(rtoc)
    xoris   r8, r8, 0x8000
    lfd     f2, -0xfe8(rtoc)
    stw     r8, 0x1bc(sp)
    subf    r8, r10, r9
    lis     r9, 0x4330
    fsubs   f3, f0, f4
    stw     r9, 0x1b8(sp)
    xoris   r8, r8, 0x8000
    stw     r8, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r9, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    b       branch_0x802518c0

branch_0x802518bc:
    lfs     f0, -0xfd8(rtoc)
branch_0x802518c0:
    lwz     r8, 0x108(r31)
    clrlwi  r7, r7, 24
    stfs    f0, 0x20(r8)
    lbz     r10, 0x0(r3)
    lbz     r9, 0x0(r4)
    cmplw   r7, r10
    lbz     r8, 0x0(r5)
    lfs     f4, 0x0(r6)
    bge-    branch_0x802518ec
    lfs     f0, -0xff8(rtoc)
    b       branch_0x80251994

branch_0x802518ec:
    cmplw   r7, r9
    bge-    branch_0x80251938
    subf    r7, r10, r7
    lfd     f2, -0xfe8(rtoc)
    xoris   r7, r7, 0x8000
    stw     r7, 0x1bc(sp)
    subf    r7, r10, r9
    lis     r8, 0x4330
    stw     r8, 0x1b8(sp)
    xoris   r7, r7, 0x8000
    stw     r7, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r8, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f4, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    b       branch_0x80251994

branch_0x80251938:
    cmplw   r7, r8
    bge-    branch_0x80251990
    subf    r7, r9, r7
    lfs     f0, -0xfd8(rtoc)
    xoris   r7, r7, 0x8000
    lfd     f2, -0xfe8(rtoc)
    stw     r7, 0x1bc(sp)
    subf    r7, r9, r8
    lis     r8, 0x4330
    fsubs   f3, f0, f4
    stw     r8, 0x1b8(sp)
    xoris   r7, r7, 0x8000
    stw     r7, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r8, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    b       branch_0x80251994

branch_0x80251990:
    lfs     f0, -0xfd8(rtoc)
branch_0x80251994:
    stfs    f0, 0x10c(r31)
    clrlwi  r0, r0, 24
    lbz     r7, 0x0(r3)
    lbz     r4, 0x0(r4)
    cmplw   r0, r7
    lbz     r3, 0x0(r5)
    lfs     f4, 0x0(r6)
    bge-    branch_0x802519bc
    lfs     f0, -0xff8(rtoc)
    b       branch_0x80251a64

branch_0x802519bc:
    cmplw   r0, r4
    bge-    branch_0x80251a08
    subf    r0, r7, r0
    lfd     f2, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    subf    r0, r7, r4
    lis     r3, 0x4330
    stw     r3, 0x1b8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r3, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f4, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    b       branch_0x80251a64

branch_0x80251a08:
    cmplw   r0, r3
    bge-    branch_0x80251a60
    subf    r0, r4, r0
    lfs     f0, -0xfd8(rtoc)
    xoris   r0, r0, 0x8000
    lfd     f2, -0xfe8(rtoc)
    stw     r0, 0x1bc(sp)
    subf    r0, r4, r3
    lis     r3, 0x4330
    fsubs   f3, f0, f4
    stw     r3, 0x1b8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    lfd     f0, 0x1b8(sp)
    stw     r3, 0x1c0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x1c0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    b       branch_0x80251a64

branch_0x80251a60:
    lfs     f0, -0xfd8(rtoc)
branch_0x80251a64:
    stfs    f0, 0x110(r31)
    lfs     f0, -0xff8(rtoc)
    lwz     r3, 0x108(r31)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x108(r31)
    stfs    f0, 0x14(r3)
    lwz     r4, 0x108(r31)
    lha     r3, 0x0(r4)
    cmpwi   r3, -0x7
    bge-    branch_0x80251ab0
    addi    r0, r3, 0x6
    lfd     f1, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    lis     r0, 0x4330
    stw     r0, 0x1b8(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
branch_0x80251ab0:
    lwz     r4, 0x108(r31)
    lha     r3, 0x0(r4)
    cmpwi   r3, 0x7
    ble-    branch_0x80251ae4
    subi    r0, r3, 0x6
    lfd     f1, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    lis     r0, 0x4330
    stw     r0, 0x1b8(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
branch_0x80251ae4:
    lwz     r4, 0x108(r31)
    lha     r3, 0x2(r4)
    cmpwi   r3, -0x7
    bge-    branch_0x80251b18
    addi    r0, r3, 0x6
    lfd     f1, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    lis     r0, 0x4330
    stw     r0, 0x1b8(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
branch_0x80251b18:
    lwz     r4, 0x108(r31)
    lha     r3, 0x2(r4)
    cmpwi   r3, 0x7
    ble-    branch_0x80251b4c
    subi    r0, r3, 0x6
    lfd     f1, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1bc(sp)
    lis     r0, 0x4330
    stw     r0, 0x1b8(sp)
    lfd     f0, 0x1b8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x14(r4)
branch_0x80251b4c:
    lwz     r3, 0x108(r31)
    lfs     f0, -0xff8(rtoc)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x14(r3)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fadds   f4, f2, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x80251b9c
    frsqrte f3, f4
    lfd     f2, -0xfc8(rtoc)
    lfd     f0, -0xfc0(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x14c(sp)
    lfs     f4, 0x14c(sp)
branch_0x80251b9c:
    lha     r3, 0x23d0(r31)
    fmr     f1, f4
    li      r4, 0x0
    cmpwi   r3, 0x0
    ble-    branch_0x80251c1c
    cmpwi   r3, 0x8
    subi    r3, r3, 0x8
    ble-    branch_0x802521ec
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    ble-    branch_0x802521ec
branch_0x80251bd0:
    lfs     f0, 0x23e4(r31)
    addi    r4, r4, 0x8
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    bdnz+      branch_0x80251bd0
    b       branch_0x802521ec

branch_0x80251c00:
    subf    r0, r4, r3
    cmpw    r4, r3
    mtctr   r0
    bge-    branch_0x80251c1c
branch_0x80251c10:
    lfs     f0, 0x23e4(r31)
    fmuls   f1, f1, f0
    bdnz+      branch_0x80251c10
branch_0x80251c1c:
    lwz     r3, 0x108(r31)
    stfs    f1, 0x18(r3)
    lwz     r3, 0x108(r31)
    lfs     f2, -0xf58(rtoc)
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f0, f2
    ble-    branch_0x80251c68
    fdivs   f0, f2, f0
    lfs     f1, 0x10(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x108(r31)
    lfs     f0, 0x18(r3)
    lfs     f1, 0x14(r3)
    fdivs   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x108(r31)
    stfs    f2, 0x18(r3)
branch_0x80251c68:
    lwz     r3, 0x108(r31)
    lfs     f1, -0xf54(rtoc)
    lfs     f0, 0x18(r3)
    lfs     f2, -0xfa0(rtoc)
    fmuls   f0, f1, f0
    fmuls   f0, f0, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x8c(r31)
    lha     r3, 0xa0(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80251c9c
    subi    r0, r3, 0x1
    sth     r0, 0xa0(r31)
branch_0x80251c9c:
    lha     r3, 0xa0(r31)
    li      r30, 0x0
    extsh.  r0, r3
    ble-    branch_0x80251dac
    xoris   r5, r3, 0x8000
    lha     r0, 0x252c(r31)
    stw     r5, 0x1bc(sp)
    lis     r4, 0x4330
    xoris   r3, r0, 0x8000
    lha     r0, 0x2518(r31)
    stw     r4, 0x1b8(sp)
    xoris   r0, r0, 0x8000
    lfd     f5, -0xfe8(rtoc)
    lfd     f0, 0x1b8(sp)
    stw     r3, 0x1cc(sp)
    fsubs   f1, f0, f5
    lfs     f0, 0x2540(r31)
    stw     r5, 0x1ac(sp)
    lwz     r7, -0x5eac(r13)
    fmuls   f0, f1, f0
    stw     r4, 0x1c8(sp)
    lwz     r6, -0x5ea8(r13)
    fctiwz  f1, f0
    stw     r5, 0x1d4(sp)
    lfd     f0, 0x1c8(sp)
    stw     r4, 0x1a8(sp)
    fsubs   f4, f0, f5
    stfd    f1, 0x1c0(sp)
    lfd     f0, 0x1a8(sp)
    lwz     r3, 0x1c4(sp)
    stw     r4, 0x1d0(sp)
    fsubs   f1, f0, f5
    clrlwi  r3, r3, 16
    lfs     f0, 0x2554(r31)
    sraw    r3, r3, r7
    stw     r0, 0x1dc(sp)
    slwi    r0, r3, 2
    lfd     f2, 0x1d0(sp)
    lfsx    f6, r6, r0
    fmuls   f0, f1, f0
    stw     r4, 0x1d8(sp)
    fsubs   f3, f2, f5
    fmuls   f4, f6, f4
    lfd     f2, 0x1d8(sp)
    fctiwz  f1, f0
    lwz     r3, -0x5ea4(r13)
    fmuls   f3, f4, f3
    fsubs   f2, f2, f5
    lfs     f0, 0x2568(r31)
    stfd    f1, 0x1a0(sp)
    fdivs   f1, f3, f2
    lfs     f2, 0x8c(r31)
    lwz     r0, 0x1a4(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    fctiwz  f3, f1
    lfsx    f1, r3, r0
    fmuls   f0, f1, f0
    stfd    f3, 0x1b0(sp)
    lwz     r30, 0x1b4(sp)
    fadds   f0, f2, f0
    stfs    f0, 0x8c(r31)
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80251dac
    stfs    f0, 0x8c(r31)
branch_0x80251dac:
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80251de8
    lwz     r3, 0x108(r31)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x10(r3)
    fneg    f1, f0
    bl      matan__Fff
    lwz     r4, -0x7118(r13)
    lha     r0, 0x258(r4)
    add     r0, r0, r30
    add     r0, r3, r0
    sth     r0, 0x90(r31)
    b       branch_0x80251df0

branch_0x80251de8:
    lha     r0, 0x96(r31)
    sth     r0, 0x90(r31)
branch_0x80251df0:
    lwz     r4, 0x3e4(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8025205c
    lbz     r0, 0x1c84(r4)
    cmpwi   r0, 0x5
    bne-    branch_0x80251fbc
    lwz     r0, 0x380(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80251e1c
    li      r0, 0x1
    b       branch_0x80251e20

branch_0x80251e1c:
    li      r0, 0x0
branch_0x80251e20:
    clrlwi. r0, r0, 24
    beq-    branch_0x80251fbc
    lwz     r3, 0x4fc(r31)
    lfs     f2, -0xff8(rtoc)
    lfs     f0, 0xb4(r3)
    fcmpo   cr0, f0, f2
    ble-    branch_0x80251fbc
    lwz     r3, 0x1c80(r4)
    lis     r0, 0x4330
    lfd     f1, -0xfe8(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x1a4(sp)
    stw     r0, 0x1a0(sp)
    lfd     f0, 0x1a0(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f2
    ble-    branch_0x80251fbc
    lfs     f0, 0x8c(r31)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80251e78
    lha     r0, 0x96(r31)
    sth     r0, 0x90(r31)
branch_0x80251e78:
    lfs     f1, 0xc0(r31)
    lfs     f0, 0x5c8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(r31)
    lfs     f1, 0xc0(r31)
    lfs     f0, -0xfa0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80251f90
    stfs    f0, 0xc0(r31)
    lis     r3, 0x4330
    lha     r4, 0xc4(r31)
    addi    r0, r4, 0x1
    sth     r0, 0xc4(r31)
    lha     r0, 0xc4(r31)
    lha     r5, 0x5f0(r31)
    xoris   r4, r0, 0x8000
    lfd     f2, -0xfe8(rtoc)
    xoris   r0, r5, 0x8000
    stw     r4, 0x1a4(sp)
    stw     r0, 0x1ac(sp)
    stw     r3, 0x1a0(sp)
    stw     r3, 0x1a8(sp)
    lfd     f1, 0x1a0(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x80251f60
    sth     r5, 0xc4(r31)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80251f00
    li      r0, 0x1
    b       branch_0x80251f04

branch_0x80251f00:
    li      r0, 0x0
branch_0x80251f04:
    clrlwi. r0, r0, 24
    bne-    branch_0x80251f60
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x385(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80251f60
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x4000
    stw     r0, 0x118(r31)
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80251f40
    li      r0, 0x1
    b       branch_0x80251f44

branch_0x80251f40:
    li      r0, 0x0
branch_0x80251f44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80251f60
    addi    r3, r31, 0x0
    li      r4, 0x24d5
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80251f60:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    beq-    branch_0x80251fa4
    cmplwi  r3, 0x24d5
    beq-    branch_0x80251fa4
    li      r0, 0x0
    sth     r0, 0xc4(r31)
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 18, 16
    stw     r0, 0x118(r31)
    b       branch_0x80251fa4

branch_0x80251f90:
    li      r0, 0x0
    sth     r0, 0xc4(r31)
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 18, 16
    stw     r0, 0x118(r31)
branch_0x80251fa4:
    lfs     f0, 0xc0(r31)
    stfs    f0, 0x8c(r31)
    lwz     r3, 0x3e4(r31)
    lfs     f1, 0xc0(r31)
    bl      rotateProp__9TWaterGunFf
    b       branch_0x8025201c

branch_0x80251fbc:
    lfs     f1, 0xc0(r31)
    lfs     f0, -0xf50(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80252000
    lfs     f1, -0xff8(rtoc)
    lfs     f0, 0x8c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80251fe4
    lha     r0, 0x96(r31)
    sth     r0, 0x90(r31)
branch_0x80251fe4:
    lfs     f1, 0xc0(r31)
    lfs     f0, 0x5dc(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xc0(r31)
    lfs     f0, 0xc0(r31)
    stfs    f0, 0x8c(r31)
    b       branch_0x80252008

branch_0x80252000:
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0xc0(r31)
branch_0x80252008:
    li      r0, 0x0
    sth     r0, 0xc4(r31)
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 18, 16
    stw     r0, 0x118(r31)
branch_0x8025201c:
    lwz     r3, 0x3e4(r31)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x8025205c
    lwz     r4, 0x7c(r31)
    addis   r0, r4, 0xf3c0
    cmplwi  r0, 0x201
    beq-    branch_0x80252048
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x8025205c
branch_0x80252048:
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xf4c(rtoc)
    fmuls   f31, f1, f0
    bl      getCurrentNozzle__9TWaterGunCFv
    stfs    f31, 0x714(r3)
branch_0x8025205c:
    lfs     f1, 0x8c(r31)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80252078
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x74(r31)
branch_0x80252078:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80252094
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x74(r31)
branch_0x80252094:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802520b0
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x80
    stw     r0, 0x74(r31)
branch_0x802520b0:
    lwz     r3, 0x108(r31)
    lwz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802520cc
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x4000
    stw     r0, 0x74(r31)
branch_0x802520cc:
    lwz     r3, 0x3f0(r31)
    li      r30, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x802520ec
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x802520ec
    li      r30, 0x1
branch_0x802520ec:
    clrlwi. r0, r30, 24
    bne-    branch_0x8025211c
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x8025211c
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0x74(r31)
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x2000
    stw     r0, 0x74(r31)
branch_0x8025211c:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 18, 18
    bne-    branch_0x8025213c
    lwz     r3, 0x108(r31)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8025216c
branch_0x8025213c:
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80252150
    li      r0, 0x1
    b       branch_0x80252154

branch_0x80252150:
    li      r0, 0x0
branch_0x80252154:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8025216c
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0x74(r31)
branch_0x8025216c:
    lwz     r3, 0x118(r31)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x80252180
    li      r0, 0x1
    b       branch_0x80252184

branch_0x80252180:
    li      r0, 0x0
branch_0x80252184:
    clrlwi. r0, r0, 24
    beq-    branch_0x802521f4
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x8025219c
    li      r0, 0x1
    b       branch_0x802521a0

branch_0x8025219c:
    li      r0, 0x0
branch_0x802521a0:
    clrlwi. r0, r0, 24
    bne-    branch_0x802521f4
    lwz     r3, 0x4fc(r31)
    lwz     r3, 0xd0(r3)
    rlwinm. r0, r3, 0, 21, 21
    bne-    branch_0x802521c0
    rlwinm. r0, r3, 0, 18, 18
    beq-    branch_0x802521cc
branch_0x802521c0:
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x200
    stw     r0, 0x74(r31)
branch_0x802521cc:
    lwz     r3, 0x4fc(r31)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x802521f4
    lwz     r0, 0x74(r31)
    ori     r0, r0, 0x100
    stw     r0, 0x74(r31)
    b       branch_0x802521f4

branch_0x802521ec:
    lha     r3, 0x23d0(r31)
    b       branch_0x80251c00

branch_0x802521f4:
    lwz     r0, 0x1f4(sp)
    lfd     f31, 0x1e8(sp)
    lwz     r31, 0x1e4(sp)
    mtlr    r0
    lwz     r30, 0x1e0(sp)
    addi    sp, sp, 0x1f0
    blr


.globl checkThrowObject__6TMarioFv
checkThrowObject__6TMarioFv: # 0x80252210
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, 0x3a8(r3)
    lfs     f1, -0xf9c(rtoc)
    lwz     r3, 0xc(r3)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80252250
    addi    r3, r31, 0x0
    li      r4, 0x788f
    bl      startVoice__6TMarioFUl
    mr      r3, r31
    bl      dropObject__6TMarioFv
branch_0x80252250:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl checkReturn__6TMarioFv
checkReturn__6TMarioFv: # 0x80252264
    lha     r0, 0x14c(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80252278
    li      r0, 0x1
    b       branch_0x80252314

branch_0x80252278:
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8025228c
    li      r0, 0x1
    b       branch_0x80252290

branch_0x8025228c:
    li      r0, 0x0
branch_0x80252290:
    clrlwi. r0, r0, 24
    beq-    branch_0x802522a0
    li      r0, 0x1
    b       branch_0x80252314

branch_0x802522a0:
    lwz     r5, 0x7c(r3)
    cmplwi  r5, 0x89c
    bne-    branch_0x802522b4
    li      r0, 0x1
    b       branch_0x80252314

branch_0x802522b4:
    lwz     r4, -0x6048(r13)
    lbz     r4, 0x124(r4)
    cmplwi  r4, 0x3
    beq-    branch_0x80252308
    cmplwi  r4, 0x4
    beq-    branch_0x80252308
    cmplwi  r4, 0x1
    li      r0, 0x1
    beq-    branch_0x802522e4
    cmplwi  r4, 0x2
    beq-    branch_0x802522e4
    li      r0, 0x0
branch_0x802522e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80252308
    rlwinm. r0, r5, 0, 19, 19
    beq-    branch_0x802522fc
    li      r0, 0x1
    b       branch_0x80252300

branch_0x802522fc:
    li      r0, 0x0
branch_0x80252300:
    clrlwi. r0, r0, 24
    beq-    branch_0x80252310
branch_0x80252308:
    li      r0, 0x1
    b       branch_0x80252314

branch_0x80252310:
    li      r0, 0x0
branch_0x80252314:
    clrlwi. r0, r0, 24
    bnelr-    

    lwz     r4, 0xe0(r3)
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80252334
    li      r0, 0x1
    b       branch_0x80252338

branch_0x80252334:
    li      r0, 0x0
branch_0x80252338:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8025234c
    li      r0, 0x0
    b       branch_0x80252350

branch_0x8025234c:
    li      r0, 0x1
branch_0x80252350:
    clrlwi. r0, r0, 24
    beqlr-    

    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r4, 0x2a8(r3)
    stw     r0, 0x2ac(r3)
    lwz     r0, 0x18(r3)
    stw     r0, 0x2b0(r3)
    lwz     r0, 0x94(r3)
    stw     r0, 0x2b4(r3)
    lhz     r0, 0x98(r3)
    sth     r0, 0x2b8(r3)
    blr


.globl checkEnforceJump__6TMarioFv
checkEnforceJump__6TMarioFv: # 0x80252384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802523b0
    li      r0, 0x1
    b       branch_0x802523b4

branch_0x802523b0:
    li      r0, 0x0
branch_0x802523b4:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802523c8
    li      r0, 0x0
    b       branch_0x802523cc

branch_0x802523c8:
    li      r0, 0x1
branch_0x802523cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802524a8
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x7
    beq-    branch_0x802523e8
    cmplwi  r0, 0x8007
    bne-    branch_0x802523f0
branch_0x802523e8:
    li      r0, 0x1
    b       branch_0x802523f4

branch_0x802523f0:
    li      r0, 0x0
branch_0x802523f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802524a8
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80252420
    li      r0, 0x1
    b       branch_0x80252424

branch_0x80252420:
    li      r0, 0x0
branch_0x80252424:
    clrlwi. r0, r0, 24
    beq-    branch_0x802524a8
    lwz     r0, 0x80(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x802524a8
    lha     r6, 0x2(r3)
    addi    r4, r31, 0x10
    lwz     r5, 0x4e8(r31)
    lwz     r3, -0x6044(r13)
    lfs     f1, -0xff8(rtoc)
    bl      startForceJumpSound__6MSoundFP3VecUlfUl
    addi    r3, r31, 0x0
    li      r4, 0x78b9
    bl      startVoice__6TMarioFUl
    addi    r3, r31, 0x0
    li      r4, 0x884
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lwz     r3, 0xe0(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802524a8
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x802524a8:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl startForceJumpSound__6MSoundFP3VecUlfUl
startForceJumpSound__6MSoundFP3VecUlfUl: # 0x802524bc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    cmpwi   r0, 0x17
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80252510
    bge-    branch_0x802524f8
    cmpwi   r0, 0x15
    beq-    branch_0x80252510
    b       branch_0x80252518

branch_0x802524f8:
    cmpwi   r0, 0x1e
    beq-    branch_0x80252518
    bge-    branch_0x80252518
    cmpwi   r0, 0x1d
    bge-    branch_0x80252510
    b       branch_0x80252518

branch_0x80252510:
    li      r31, 0x180a
    b       branch_0x8025253c

branch_0x80252518:
    cmplwi  r6, 0x1770
    bge-    branch_0x80252528
    li      r31, 0x1810
    b       branch_0x8025253c

branch_0x80252528:
    cmplwi  r6, 0x2ee0
    bge-    branch_0x80252538
    li      r31, 0x1811
    b       branch_0x8025253c

branch_0x80252538:
    li      r31, 0x1812
branch_0x8025253c:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80252580
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80252580
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80252580:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl checkSink__6TMarioFv
checkSink__6TMarioFv: # 0x8025259c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    lha     r0, 0x14c(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802525c4
    li      r0, 0x1
    b       branch_0x80252660

branch_0x802525c4:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802525d8
    li      r0, 0x1
    b       branch_0x802525dc

branch_0x802525d8:
    li      r0, 0x0
branch_0x802525dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802525ec
    li      r0, 0x1
    b       branch_0x80252660

branch_0x802525ec:
    lwz     r4, 0x7c(r31)
    cmplwi  r4, 0x89c
    bne-    branch_0x80252600
    li      r0, 0x1
    b       branch_0x80252660

branch_0x80252600:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80252654
    cmplwi  r3, 0x4
    beq-    branch_0x80252654
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80252630
    cmplwi  r3, 0x2
    beq-    branch_0x80252630
    li      r0, 0x0
branch_0x80252630:
    clrlwi. r0, r0, 24
    bne-    branch_0x80252654
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x80252648
    li      r0, 0x1
    b       branch_0x8025264c

branch_0x80252648:
    li      r0, 0x0
branch_0x8025264c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025265c
branch_0x80252654:
    li      r0, 0x1
    b       branch_0x80252660

branch_0x8025265c:
    li      r0, 0x0
branch_0x80252660:
    clrlwi. r0, r0, 24
    bne-    branch_0x802528a4
    lwz     r3, 0xe0(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80252680
    li      r0, 0x1
    b       branch_0x80252684

branch_0x80252680:
    li      r0, 0x0
branch_0x80252684:
    clrlwi. r0, r0, 24
    bne-    branch_0x802528a4
    lfs     f2, -0xff0(rtoc)
    lfs     f1, 0xec(r31)
    lfs     f0, 0x14(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x802526b0
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x368(r31)
    b       branch_0x802528a4

branch_0x802526b0:
    lwz     r3, 0x350(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x8025280c
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802526d0
    li      r0, 0x1
    b       branch_0x802526d4

branch_0x802526d0:
    li      r0, 0x0
branch_0x802526d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025280c
    lfs     f1, 0x368(r31)
    lfs     f0, -0xfd8(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x368(r31)
    lha     r0, 0x690(r31)
    sth     r0, 0x360(r31)
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80252738
    lha     r3, 0x2428(r31)
    lis     r0, 0x4330
    lfd     f3, -0xfe8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f1, 0x24dc(r31)
    stw     r3, 0x94(sp)
    lfs     f0, 0x368(r31)
    stw     r0, 0x90(sp)
    lfd     f2, 0x90(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f2, f1
    fcmpo   cr0, f0, f1
    ble-    branch_0x80252738
    stfs    f1, 0x368(r31)
branch_0x80252738:
    lwz     r4, -0x6048(r13)
    lha     r3, 0x243c(r31)
    lwz     r4, 0x58(r4)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r4
    bne-    branch_0x8025276c
    lha     r7, 0x27bc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x3
    li      r6, 0x0
    bl      floorDamageExec__6TMarioFiiii
branch_0x8025276c:
    lwz     r3, -0x6044(r13)
    li      r4, 0x100b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8025279c
    addi    r4, r31, 0x10
    li      r3, 0x100b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8025279c:
    lha     r3, 0x2428(r31)
    lis     r0, 0x4330
    lfd     f1, -0xfe8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x368(r31)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x802527e8
    mr      r3, r31
    bl      loserExec__6TMarioFv
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x1123
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x802527e8:
    lwz     r4, 0xe0(r31)
    addi    r3, r31, 0x10
    li      r5, 0x1
    addi    r4, r4, 0x34
    bl      SMS_EmitSinkInPollutionEffect__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_b
    addi    r3, r31, 0x0
    li      r4, 0x7865
    bl      startVoice__6TMarioFUl
    b       branch_0x802528a4

branch_0x8025280c:
    cmpwi   r3, 0x5
    bne-    branch_0x80252894
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80252828
    li      r0, 0x1
    b       branch_0x8025282c

branch_0x80252828:
    li      r0, 0x0
branch_0x8025282c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80252894
    lfs     f1, 0x374(r31)
    mr      r3, r31
    lfs     f0, 0xb18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x374(r31)
    lfs     f1, 0x378(r31)
    lfs     f0, 0x374(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x378(r31)
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb8(r31)
    bl      loserExec__6TMarioFv
    lis     r4, 0x1000
    addi    r3, r31, 0x0
    addi    r4, r4, 0x1123
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802528a4

branch_0x80252894:
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x374(r31)
    stfs    f0, 0x378(r31)
    stfs    f0, 0x368(r31)
branch_0x802528a4:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl thinkHeight__6TMarioFv
thinkHeight__6TMarioFv: # 0x802528b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x802528e0
    li      r0, 0x1
    b       branch_0x802528e4

branch_0x802528e0:
    li      r0, 0x0
branch_0x802528e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025290c
    lfs     f2, 0x14(r31)
    lfs     f1, 0xec(r31)
    lfs     f0, 0x36c(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x80252914
    stfs    f1, 0x36c(r31)
    b       branch_0x80252914

branch_0x8025290c:
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x36c(r31)
branch_0x80252914:
    lhz     r0, 0x96(r31)
    mr      r3, r31
    lwz     r6, -0x5eac(r13)
    addi    r4, sp, 0x38
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r0, r6
    lfs     f1, 0x15c(r31)
    slwi    r0, r0, 2
    lfs     f0, 0x10(r31)
    lfsx    f2, r5, r0
    lwz     r5, -0x5ea4(r13)
    fmadds  f0, f1, f2, f0
    lfs     f1, -0xff4(rtoc)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x3c(sp)
    lhz     r0, 0x96(r31)
    lfs     f3, 0x15c(r31)
    sraw    r0, r0, r6
    lfs     f0, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x40(sp)
    lfs     f2, 0x15c(r31)
    bl      checkWallPlane__6TMarioFP3Vecff
    cmplwi  r3, 0x0
    bne-    branch_0x802529e8
    lha     r3, 0x96(r31)
    addi    r4, sp, 0x30
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea4(r13)
    slwi    r0, r0, 2
    lfs     f3, -0xff0(rtoc)
    lfsx    f1, r5, r0
    lfsx    f0, r3, r0
    fmuls   f5, f3, f1
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    fmuls   f4, f3, f0
    lfs     f0, 0x18(r31)
    fadds   f1, f1, f5
    lwz     r3, -0x6328(r13)
    fadds   f2, f3, f2
    fadds   f3, f0, f4
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, 0x14(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0x370(r31)
    b       branch_0x802529f0

branch_0x802529e8:
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x370(r31)
branch_0x802529f0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl thinkDirty__6TMarioFv
thinkDirty__6TMarioFv: # 0x80252a04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80252a2c
    li      r0, 0x1
    b       branch_0x80252a30

branch_0x80252a2c:
    li      r0, 0x0
branch_0x80252a30:
    clrlwi. r0, r0, 24
    beq-    branch_0x80252ab8
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    beq-    branch_0x80252a54
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45c
    bne-    branch_0x80252a64
branch_0x80252a54:
    lfs     f1, 0x134(r31)
    lfs     f0, 0x25d4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x134(r31)
branch_0x80252a64:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x456
    beq-    branch_0x80252a8c
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x80252a8c
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45e
    bne-    branch_0x80252a9c
branch_0x80252a8c:
    lfs     f1, 0x134(r31)
    lfs     f0, 0x25e8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x134(r31)
branch_0x80252a9c:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x50
    bne-    branch_0x80252ab8
    lfs     f1, 0x134(r31)
    lfs     f0, 0x25fc(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x134(r31)
branch_0x80252ab8:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80252acc
    li      r0, 0x1
    b       branch_0x80252ad0

branch_0x80252acc:
    li      r0, 0x0
branch_0x80252ad0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80252b10
    lfs     f1, 0xf0(r31)
    lfs     f0, -0xf98(rtoc)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80252af8
    mr      r3, r31
    bl      meltInWaterEffect__6TMarioFv
branch_0x80252af8:
    li      r0, 0x0
    sth     r0, 0x360(r31)
    lfs     f1, 0x134(r31)
    lfs     f0, 0x2610(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x134(r31)
branch_0x80252b10:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x895
    beq-    branch_0x80252b24
    cmplwi  r0, 0x896
    bne-    branch_0x80252b3c
branch_0x80252b24:
    lfs     f1, 0x134(r31)
    li      r0, 0x0
    lfs     f0, 0x2638(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x134(r31)
    sth     r0, 0x360(r31)
branch_0x80252b3c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80252b50
    li      r0, 0x1
    b       branch_0x80252b54

branch_0x80252b50:
    li      r0, 0x0
branch_0x80252b54:
    clrlwi. r0, r0, 24
    beq-    branch_0x80252b74
    lfs     f1, 0x134(r31)
    li      r0, 0x0
    lfs     f0, 0x2624(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x134(r31)
    sth     r0, 0x360(r31)
branch_0x80252b74:
    lfs     f1, 0x134(r31)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80252b88
    stfs    f0, 0x134(r31)
branch_0x80252b88:
    lfs     f1, 0x2700(r31)
    lfs     f0, 0x134(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80252b9c
    stfs    f1, 0x134(r31)
branch_0x80252b9c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl dirtyLimitCheck__6TMarioFv
dirtyLimitCheck__6TMarioFv: # 0x80252bb0
    lfs     f1, 0x134(r3)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80252bc4
    stfs    f0, 0x134(r3)
branch_0x80252bc4:
    lfs     f1, 0x2700(r3)
    lfs     f0, 0x134(r3)
    fcmpo   cr0, f1, f0
    bgelr-    

    stfs    f1, 0x134(r3)
    blr


.globl checkGraffito__6TMarioFv
checkGraffito__6TMarioFv: # 0x80252bdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80252c10
    li      r0, 0x1
    b       branch_0x80252c14

branch_0x80252c10:
    li      r0, 0x0
branch_0x80252c14:
    clrlwi. r0, r0, 24
    bne-    branch_0x80253208
    lwz     r3, 0x3f0(r31)
    li      r29, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x80252c3c
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x80252c3c
    li      r29, 0x1
branch_0x80252c3c:
    clrlwi. r0, r29, 24
    bne-    branch_0x80253208
    lbz     r0, 0x388(r31)
    cmplwi  r0, 0x1
    beq-    branch_0x80253208
    cmplwi  r0, 0x2
    beq-    branch_0x80253208
    lwz     r3, -0x62f0(r13)
    li      r30, 0x0
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      getPollutionType__17TPollutionManagerCFfff
    stw     r3, 0x350(r31)
    lwz     r0, 0x350(r31)
    cmplwi  r0, 0xa
    bgt-    branch_0x80252fe4
    lis     r3, 0x803e
    subi    r3, r3, 0x2e4c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    lwz     r3, 0x10(r31)
    li      r30, 0x1
    lwz     r0, 0x14(r31)
    lfs     f1, -0xfa0(rtoc)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x50(sp)
    lfs     f0, 0x48(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x50(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x50(sp)
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252cf0
    li      r30, 0x0
branch_0x80252cf0:
    lfs     f1, 0x48(sp)
    lfs     f0, -0xfa0(rtoc)
    lwz     r3, -0x62f0(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252d20
    li      r30, 0x0
branch_0x80252d20:
    lfs     f1, 0x48(sp)
    lfs     f0, -0xfa0(rtoc)
    lwz     r3, -0x62f0(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252d50
    li      r30, 0x0
branch_0x80252d50:
    lfs     f1, 0x50(sp)
    lfs     f0, -0xfa0(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252d80
    li      r30, 0x0
branch_0x80252d80:
    lfs     f1, 0x48(sp)
    lfs     f0, -0xfa0(rtoc)
    lwz     r3, -0x62f0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252db0
    li      r30, 0x0
branch_0x80252db0:
    lfs     f1, 0x48(sp)
    lfs     f0, -0xfa0(rtoc)
    lwz     r3, -0x62f0(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252de0
    li      r30, 0x0
branch_0x80252de0:
    lfs     f1, 0x50(sp)
    lfs     f0, -0xfa0(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252e10
    li      r30, 0x0
branch_0x80252e10:
    lfs     f1, 0x48(sp)
    lfs     f0, -0xfa0(rtoc)
    lwz     r3, -0x62f0(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252e40
    li      r30, 0x0
branch_0x80252e40:
    lfs     f1, 0x48(sp)
    lfs     f0, -0xfa0(rtoc)
    lwz     r3, -0x62f0(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x48(sp)
    lfs     f2, 0x4c(sp)
    lfs     f3, 0x50(sp)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80252fe4
    li      r30, 0x0
    b       branch_0x80252fe4


.incbin "./baserom/code/Text_0x80005600.bin", 0x24d874, 0x80252fe4 - 0x80252e74
branch_0x80252fe4:
    lwz     r3, 0x3f0(r31)
    li      r29, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x80253004
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x80253004
    li      r29, 0x1
branch_0x80253004:
    clrlwi. r0, r29, 24
    beq-    branch_0x80253090
    cmpwi   r30, 0x1
    bne-    branch_0x80253090
    lwz     r0, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x89c
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0x74(r31)
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, 0x3f0(r31)
    li      r4, 0x1
    bl      getOff__6TYoshiFb
    lfs     f1, -0xfd8(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x4d
    bl      setAnimation__6TMarioFif
    lwz     r0, 0x78(r31)
    li      r4, 0x4
    li      r5, 0x1
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r31)
    lfs     f0, -0xfb4(rtoc)
    stfs    f0, 0xb0(r31)
    lwz     r3, 0x3e4(r31)
    bl      changeNozzle__9TWaterGunFQ29TWaterGun11TNozzleTypeb
    mr      r3, r31
    bl      normalizeNozzle__6TMarioFv
    lwz     r29, 0x3e4(r31)
    mr      r3, r29
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r0, 0xcc(r3)
    stw     r0, 0x1c80(r29)
branch_0x80253090:
    lwz     r0, 0x350(r31)
    cmplwi  r0, 0x8
    bgt-    branch_0x80253108
    lis     r3, 0x803e
    subi    r3, r3, 0x2e70
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    cmpwi   r30, 0x1
    bne-    branch_0x80253108
    mr      r3, r31
    bl      checkGraffitoElec__6TMarioFv
    b       branch_0x80253108


.incbin "./baserom/code/Text_0x80005600.bin", 0x24dac8, 0x80253108 - 0x802530c8
branch_0x80253108:
    cmpwi   r30, 0x1
    bne-    branch_0x80253120
    lwz     r0, 0x118(r31)
    ori     r0, r0, 0x40
    stw     r0, 0x118(r31)
    b       branch_0x8025312c

branch_0x80253120:
    lwz     r0, 0x118(r31)
    rlwinm  r0, r0, 0, 26, 24
    stw     r0, 0x118(r31)
branch_0x8025312c:
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80253150
    li      r0, 0x1
    b       branch_0x80253154

branch_0x80253150:
    li      r0, 0x0
branch_0x80253154:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253208
    cmpwi   r30, 0x1
    bne-    branch_0x80253178
    lwz     r4, 0xe0(r31)
    addi    r3, r31, 0x10
    li      r5, 0x0
    addi    r4, r4, 0x34
    bl      SMS_EmitSinkInPollutionEffect__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_b
branch_0x80253178:
    lha     r3, 0x360(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80253208
    subi    r0, r3, 0x1
    sth     r0, 0x360(r31)
    lha     r0, 0x690(r31)
    lha     r3, 0x360(r31)
    srawi   r0, r0, 1
    addze   r0, r0
    cmpw    r3, r0
    ble-    branch_0x80253208
    lwz     r3, 0xe0(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x802531bc
    li      r0, 0x1
    b       branch_0x802531c0

branch_0x802531bc:
    li      r0, 0x0
branch_0x802531c0:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802531d4
    li      r0, 0x0
    b       branch_0x802531d8

branch_0x802531d4:
    li      r0, 0x1
branch_0x802531d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253208
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x802531f4
    li      r0, 0x1
    b       branch_0x802531f8

branch_0x802531f4:
    li      r0, 0x0
branch_0x802531f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x80253208
    mr      r3, r31
    bl      emitDirtyFootPrint__6TMarioFv
branch_0x80253208:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl checkGraffitoElec__6TMarioFv
checkGraffitoElec__6TMarioFv: # 0x80253224
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8025324c
    li      r0, 0x1
    b       branch_0x80253250

branch_0x8025324c:
    li      r0, 0x0
branch_0x80253250:
    clrlwi. r0, r0, 24
    bne-    branch_0x80253260
    lbz     r0, 0x6b8(r31)
    sth     r0, 0x34e(r31)
branch_0x80253260:
    lhz     r3, 0x34e(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80253278
    subi    r0, r3, 0x1
    sth     r0, 0x34e(r31)
    b       branch_0x802533c8

branch_0x80253278:
    lha     r0, 0x14c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8025328c
    li      r0, 0x1
    b       branch_0x80253328

branch_0x8025328c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802532a0
    li      r0, 0x1
    b       branch_0x802532a4

branch_0x802532a0:
    li      r0, 0x0
branch_0x802532a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802532b4
    li      r0, 0x1
    b       branch_0x80253328

branch_0x802532b4:
    lwz     r4, 0x7c(r31)
    cmplwi  r4, 0x89c
    bne-    branch_0x802532c8
    li      r0, 0x1
    b       branch_0x80253328

branch_0x802532c8:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8025331c
    cmplwi  r3, 0x4
    beq-    branch_0x8025331c
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x802532f8
    cmplwi  r3, 0x2
    beq-    branch_0x802532f8
    li      r0, 0x0
branch_0x802532f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8025331c
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x80253310
    li      r0, 0x1
    b       branch_0x80253314

branch_0x80253310:
    li      r0, 0x0
branch_0x80253314:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253324
branch_0x8025331c:
    li      r0, 0x1
    b       branch_0x80253328

branch_0x80253324:
    li      r0, 0x0
branch_0x80253328:
    clrlwi. r0, r0, 24
    bne-    branch_0x802533c8
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 23, 25
    beq-    branch_0x80253344
    cmplwi  r0, 0x40
    bne-    branch_0x802533c8
branch_0x80253344:
    lha     r0, 0x360(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x802533c8
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x338
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6044(r13)
    li      r4, 0x1814
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80253398
    addi    r4, r31, 0x10
    li      r3, 0x1814
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80253398:
    lwz     r3, -0x6044(r13)
    li      r4, 0x3806
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802533c8
    addi    r4, r31, 0x10
    li      r3, 0x3806
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802533c8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl checkGraffitoSlip__6TMarioFv
checkGraffitoSlip__6TMarioFv: # 0x802533dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lfs     f1, -0xf9c(rtoc)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80253414
    li      r0, 0x1
    b       branch_0x80253418

branch_0x80253414:
    li      r0, 0x0
branch_0x80253418:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253620
    lha     r0, 0x690(r31)
    sth     r0, 0x360(r31)
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x80253444
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45e
    bne-    branch_0x80253454
branch_0x80253444:
    lfs     f0, 0x264c(r31)
    stfs    f0, 0x138(r31)
    lha     r0, 0x2674(r31)
    sth     r0, 0x13c(r31)
branch_0x80253454:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45c
    beq-    branch_0x8025346c
    cmplwi  r0, 0x561
    bne-    branch_0x8025347c
branch_0x8025346c:
    lfs     f0, 0x2660(r31)
    stfs    f0, 0x138(r31)
    lha     r0, 0x2688(r31)
    sth     r0, 0x13c(r31)
branch_0x8025347c:
    lwz     r3, 0xe0(r31)
    lfs     f0, 0x26ec(r31)
    lfs     f1, 0x38(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802534cc
    lfs     f0, 0x264c(r31)
    lis     r4, 0x4
    addi    r3, r31, 0x0
    stfs    f0, 0x138(r31)
    addi    r4, r4, 0x45e
    li      r5, 0x0
    lha     r0, 0x2674(r31)
    li      r6, 0x0
    sth     r0, 0x13c(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    addi    r3, r31, 0x0
    li      r4, 0x78d3
    bl      startVoice__6TMarioFUl
    b       branch_0x8025359c

branch_0x802534cc:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x88a
    beq-    branch_0x802534fc
    cmplwi  r0, 0x456
    beq-    branch_0x802534fc
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x802534fc
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45e
    bne-    branch_0x80253544
branch_0x802534fc:
    lfs     f0, 0x264c(r31)
    lis     r4, 0x84
    addi    r3, r31, 0x0
    stfs    f0, 0x138(r31)
    addi    r4, r4, 0x45d
    li      r5, 0x0
    lha     r0, 0x2674(r31)
    li      r6, 0x0
    sth     r0, 0x13c(r31)
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, 0x80(r31)
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x8025359c
    addi    r3, r31, 0x0
    li      r4, 0x78d3
    bl      startVoice__6TMarioFUl
    b       branch_0x8025359c

branch_0x80253544:
    cmplwi  r3, 0x386
    beq-    branch_0x8025359c
    lfs     f0, 0x2660(r31)
    stfs    f0, 0x138(r31)
    lha     r0, 0x2688(r31)
    sth     r0, 0x13c(r31)
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x560
    bne-    branch_0x80253584
    lis     r4, 0x4
    addi    r3, r31, 0x0
    addi    r4, r4, 0x561
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025359c

branch_0x80253584:
    lis     r4, 0x4
    addi    r3, r31, 0x0
    addi    r4, r4, 0x45c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025359c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802535b0
    li      r0, 0x1
    b       branch_0x802535b4

branch_0x802535b0:
    li      r0, 0x0
branch_0x802535b4:
    clrlwi. r0, r0, 24
    bne-    branch_0x802535cc
    lha     r3, 0x278c(r31)
    lha     r0, 0x27a0(r31)
    add     r0, r3, r0
    sth     r0, 0x34e(r31)
branch_0x802535cc:
    lhz     r3, 0x34e(r31)
    subi    r0, r3, 0x1
    sth     r0, 0x34e(r31)
    lhz     r3, 0x34e(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8025360c
    lha     r0, 0x27a0(r31)
    cmpw    r3, r0
    bne-    branch_0x8025364c
    lha     r7, 0x27bc(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    li      r5, 0x3
    li      r6, 0x0
    bl      floorDamageExec__6TMarioFiiii
    b       branch_0x8025364c

branch_0x8025360c:
    lha     r3, 0x278c(r31)
    lha     r0, 0x27a0(r31)
    add     r0, r3, r0
    sth     r0, 0x34e(r31)
    b       branch_0x8025364c

branch_0x80253620:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x8025363c
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x45e
    bne-    branch_0x8025364c
branch_0x8025363c:
    lfs     f0, 0x2778(r31)
    stfs    f0, 0x138(r31)
    lha     r0, 0x2674(r31)
    sth     r0, 0x13c(r31)
branch_0x8025364c:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl checkGraffitoFire__6TMarioFv
checkGraffitoFire__6TMarioFv: # 0x80253660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    lha     r0, 0x14c(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80253698
    li      r0, 0x1
    b       branch_0x80253734

branch_0x80253698:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802536ac
    li      r0, 0x1
    b       branch_0x802536b0

branch_0x802536ac:
    li      r0, 0x0
branch_0x802536b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x802536c0
    li      r0, 0x1
    b       branch_0x80253734

branch_0x802536c0:
    lwz     r4, 0x7c(r31)
    cmplwi  r4, 0x89c
    bne-    branch_0x802536d4
    li      r0, 0x1
    b       branch_0x80253734

branch_0x802536d4:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80253728
    cmplwi  r3, 0x4
    beq-    branch_0x80253728
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80253704
    cmplwi  r3, 0x2
    beq-    branch_0x80253704
    li      r0, 0x0
branch_0x80253704:
    clrlwi. r0, r0, 24
    bne-    branch_0x80253728
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x8025371c
    li      r0, 0x1
    b       branch_0x80253720

branch_0x8025371c:
    li      r0, 0x0
branch_0x80253720:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253730
branch_0x80253728:
    li      r0, 0x1
    b       branch_0x80253734

branch_0x80253730:
    li      r0, 0x0
branch_0x80253734:
    clrlwi. r0, r0, 24
    bne-    branch_0x802538bc
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80253750
    li      r0, 0x1
    b       branch_0x80253754

branch_0x80253750:
    li      r0, 0x0
branch_0x80253754:
    clrlwi. r0, r0, 24
    bne-    branch_0x802538bc
    lfs     f2, 0x14(r31)
    lfs     f1, 0xec(r31)
    lfs     f0, 0x24f0(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bgt-    branch_0x802538bc
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8b7
    beq-    branch_0x80253790
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x239
    bne-    branch_0x802537a0
branch_0x80253790:
    lha     r3, 0x96(r31)
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r31)
branch_0x802537a0:
    lhz     r4, 0x96(r31)
    addi    r9, r31, 0x3980
    lwz     r0, -0x5eac(r13)
    addi    r8, r31, 0x3944
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0x10(r31)
    slwi    r0, r0, 2
    lfs     f31, 0xb0(r31)
    lfsx    f0, r5, r0
    addi    r7, r31, 0x3930
    lfs     f30, 0xa8(r31)
    mr      r3, r31
    fadds   f0, f1, f0
    addi    r4, r31, 0x474
    stfs    f0, 0x484(r31)
    lhz     r5, 0x96(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0x18(r31)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fadds   f0, f1, f0
    stfs    f0, 0x48c(r31)
    lwz     r12, 0x0(r31)
    lbz     r5, 0x3908(r31)
    lwz     r12, 0xdc(r12)
    lbz     r6, 0x391c(r31)
    mtlr    r12
    lbz     r7, 0x0(r7)
    lfs     f1, 0x3958(r31)
    lbz     r8, 0x0(r8)
    lfs     f2, 0x396c(r31)
    lha     r9, 0x0(r9)
    blrl
    lfs     f1, 0x55c(r31)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025384c
    fneg    f0, f30
    stfs    f0, 0xa8(r31)
    stfs    f31, 0xb0(r31)
branch_0x8025384c:
    lha     r0, 0x257c(r31)
    mr      r3, r31
    sth     r0, 0x14c(r31)
    bl      dropObject__6TMarioFv
    lis     r4, 0x2
    addi    r3, r31, 0x0
    addi    r4, r4, 0x8b7
    li      r5, 0x1
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    li      r4, 0x1813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802538bc
    addi    r4, r31, 0x10
    li      r3, 0x1813
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802538bc:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x88
    blr


.globl checkAllMotions__6TMarioFv
checkAllMotions__6TMarioFv: # 0x802538e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80253994
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x0
    beq-    branch_0x80253964
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x3
    beq-    branch_0x80253948
    bge-    branch_0x8025395c
    cmpwi   r0, 0x2
    bge-    branch_0x80253930
    b       branch_0x8025395c

branch_0x80253930:
    addi    r3, r31, 0x0
    li      r4, 0x896
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x8025395c

branch_0x80253948:
    addi    r3, r31, 0x0
    li      r4, 0x895
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x8025395c:
    li      r0, 0x1
    b       branch_0x80253968

branch_0x80253964:
    li      r0, 0x0
branch_0x80253968:
    cmpwi   r0, 0x0
    beq-    branch_0x80253978
    li      r3, 0x1
    b       branch_0x802539fc

branch_0x80253978:
    lis     r4, 0x200
    addi    r3, r31, 0x0
    addi    r4, r4, 0x880
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802539fc

branch_0x80253994:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x802539b4
    addi    r3, r31, 0x0
    li      r4, 0x88c
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802539fc

branch_0x802539b4:
    clrlwi. r0, r3, 31
    beq-    branch_0x802539d8
    lis     r4, 0x400
    addi    r3, r31, 0x0
    addi    r4, r4, 0x440
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802539fc

branch_0x802539d8:
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x802539f8
    addi    r3, r31, 0x0
    li      r4, 0x50
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x802539fc

branch_0x802539f8:
    li      r3, 0x0
branch_0x802539fc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl changePlayerDropping__6TMarioFUlUl
changePlayerDropping__6TMarioFUlUl: # 0x80253a10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      dropObject__6TMarioFv
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl changePlayerJumping__6TMarioFUlUl
changePlayerJumping__6TMarioFUlUl: # 0x80253a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x84(sp)
    addi    r29, r4, 0x0
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80253aa0
    lbz     r0, 0x2bcc(r30)
    b       branch_0x80253b70

branch_0x80253aa0:
    lwz     r3, 0xe0(r30)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x80253ac0
    cmplwi  r4, 0x800c
    beq-    branch_0x80253ac0
    cmplwi  r4, 0xa00c
    bne-    branch_0x80253ac8
branch_0x80253ac0:
    li      r0, 0x1
    b       branch_0x80253acc

branch_0x80253ac8:
    li      r0, 0x0
branch_0x80253acc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253adc
    lbz     r0, 0x2cb0(r30)
    b       branch_0x80253b70

branch_0x80253adc:
    cmplwi  r4, 0x2
    beq-    branch_0x80253aec
    cmplwi  r4, 0x8002
    bne-    branch_0x80253af4
branch_0x80253aec:
    li      r0, 0x1
    b       branch_0x80253af8

branch_0x80253af4:
    li      r0, 0x0
branch_0x80253af8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253b18
    lfs     f1, 0x38(r3)
    lfs     f0, -0xf70(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80253b18
    lbz     r0, 0x2d94(r30)
    b       branch_0x80253b70

branch_0x80253b18:
    cmplwi  r4, 0x4
    beq-    branch_0x80253b38
    cmplwi  r4, 0x4004
    beq-    branch_0x80253b38
    cmplwi  r4, 0x8004
    beq-    branch_0x80253b38
    cmplwi  r4, 0xc004
    bne-    branch_0x80253b40
branch_0x80253b38:
    li      r0, 0x1
    b       branch_0x80253b44

branch_0x80253b40:
    li      r0, 0x0
branch_0x80253b44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253b6c
    lfs     f1, 0x38(r3)
    lfs     f0, -0xf48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80253b64
    lbz     r0, 0x2f5c(r30)
    b       branch_0x80253b70

branch_0x80253b64:
    lbz     r0, 0x2e78(r30)
    b       branch_0x80253b70

branch_0x80253b6c:
    lbz     r0, 0x2a04(r30)
branch_0x80253b70:
    cmpwi   r0, 0x0
    beq-    branch_0x80253ca8
    li      r0, 0x0
    sth     r0, 0x94(r30)
    lha     r0, 0x96(r30)
    sth     r0, 0x9a(r30)
    lfs     f4, 0xb0(r30)
    lfs     f3, -0xff8(rtoc)
    fcmpo   cr0, f4, f3
    ble-    branch_0x80253c84
    lha     r3, 0xf4(r30)
    lha     r4, 0x96(r30)
    addis   r5, r3, 0x1
    lwz     r0, -0x5eac(r13)
    subi    r5, r5, 0x8000
    lwz     r3, -0x5ea4(r13)
    extsh   r31, r5
    lfs     f1, -0xf44(rtoc)
    subf    r4, r31, r4
    lwz     r5, -0x5ea8(r13)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    lfsx    f2, r5, r0
    fmuls   f0, f4, f0
    fmuls   f2, f4, f2
    fmuls   f1, f1, f0
    fmuls   f0, f1, f1
    fmadds  f6, f2, f2, f0
    fcmpo   cr0, f6, f3
    ble-    branch_0x80253c1c
    frsqrte f5, f6
    lfd     f4, -0xfc8(rtoc)
    lfd     f0, -0xfc0(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f0, f6, f3, f0
    fmul    f0, f4, f0
    fmul    f0, f6, f0
    frsp    f0, f0
    stfs    f0, 0x5c(sp)
    lfs     f6, 0x5c(sp)
branch_0x80253c1c:
    stfs    f6, 0xb0(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f3, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f3, f0
    stfs    f0, 0xb4(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f3, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f3, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    bl      matan__Fff
    add     r0, r31, r3
    sth     r0, 0x96(r30)
branch_0x80253c84:
    mr      r3, r30
    bl      dropObject__6TMarioFv
    lis     r4, 0x200
    addi    r3, r30, 0x0
    addi    r4, r4, 0x885
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80253d34

branch_0x80253ca8:
    addi    r3, r30, 0x0
    addi    r4, sp, 0x78
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x0
    beq-    branch_0x80253d0c
    lwz     r0, 0x78(sp)
    cmpwi   r0, 0x3
    beq-    branch_0x80253cf0
    bge-    branch_0x80253d04
    cmpwi   r0, 0x2
    bge-    branch_0x80253cd8
    b       branch_0x80253d04

branch_0x80253cd8:
    addi    r3, r30, 0x0
    li      r4, 0x896
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80253d04

branch_0x80253cf0:
    addi    r3, r30, 0x0
    li      r4, 0x895
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80253d04:
    li      r0, 0x1
    b       branch_0x80253d10

branch_0x80253d0c:
    li      r0, 0x0
branch_0x80253d10:
    cmpwi   r0, 0x0
    beq-    branch_0x80253d20
    li      r3, 0x1
    b       branch_0x80253d38

branch_0x80253d20:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80253d34:
    li      r3, 0x1
branch_0x80253d38:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl changePlayerTriJump__6TMarioFv
changePlayerTriJump__6TMarioFv: # 0x80253d54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r3
    bl      isForceSlip__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80253d80
    lbz     r0, 0x2bcc(r30)
    b       branch_0x80253e50

branch_0x80253d80:
    lwz     r3, 0xe0(r30)
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0xc
    beq-    branch_0x80253da0
    cmplwi  r4, 0x800c
    beq-    branch_0x80253da0
    cmplwi  r4, 0xa00c
    bne-    branch_0x80253da8
branch_0x80253da0:
    li      r0, 0x1
    b       branch_0x80253dac

branch_0x80253da8:
    li      r0, 0x0
branch_0x80253dac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253dbc
    lbz     r0, 0x2cb0(r30)
    b       branch_0x80253e50

branch_0x80253dbc:
    cmplwi  r4, 0x2
    beq-    branch_0x80253dcc
    cmplwi  r4, 0x8002
    bne-    branch_0x80253dd4
branch_0x80253dcc:
    li      r0, 0x1
    b       branch_0x80253dd8

branch_0x80253dd4:
    li      r0, 0x0
branch_0x80253dd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253df8
    lfs     f1, 0x38(r3)
    lfs     f0, -0xf70(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80253df8
    lbz     r0, 0x2d94(r30)
    b       branch_0x80253e50

branch_0x80253df8:
    cmplwi  r4, 0x4
    beq-    branch_0x80253e18
    cmplwi  r4, 0x4004
    beq-    branch_0x80253e18
    cmplwi  r4, 0x8004
    beq-    branch_0x80253e18
    cmplwi  r4, 0xc004
    bne-    branch_0x80253e20
branch_0x80253e18:
    li      r0, 0x1
    b       branch_0x80253e24

branch_0x80253e20:
    li      r0, 0x0
branch_0x80253e24:
    clrlwi. r0, r0, 24
    beq-    branch_0x80253e4c
    lfs     f1, 0x38(r3)
    lfs     f0, -0xf48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80253e44
    lbz     r0, 0x2f5c(r30)
    b       branch_0x80253e50

branch_0x80253e44:
    lbz     r0, 0x2e78(r30)
    b       branch_0x80253e50

branch_0x80253e4c:
    lbz     r0, 0x2a04(r30)
branch_0x80253e50:
    cmpwi   r0, 0x0
    beq-    branch_0x80253f88
    li      r0, 0x0
    sth     r0, 0x94(r30)
    lha     r0, 0x96(r30)
    sth     r0, 0x9a(r30)
    lfs     f4, 0xb0(r30)
    lfs     f3, -0xff8(rtoc)
    fcmpo   cr0, f4, f3
    ble-    branch_0x80253f64
    lha     r3, 0xf4(r30)
    lha     r4, 0x96(r30)
    addis   r5, r3, 0x1
    lwz     r0, -0x5eac(r13)
    subi    r5, r5, 0x8000
    lwz     r3, -0x5ea4(r13)
    extsh   r31, r5
    lfs     f1, -0xf44(rtoc)
    subf    r4, r31, r4
    lwz     r5, -0x5ea8(r13)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    lfsx    f2, r5, r0
    fmuls   f0, f4, f0
    fmuls   f2, f4, f2
    fmuls   f1, f1, f0
    fmuls   f0, f1, f1
    fmadds  f6, f2, f2, f0
    fcmpo   cr0, f6, f3
    ble-    branch_0x80253efc
    frsqrte f5, f6
    lfd     f4, -0xfc8(rtoc)
    lfd     f0, -0xfc0(rtoc)
    fmul    f3, f5, f5
    fmul    f4, f4, f5
    fnmsub   f0, f6, f3, f0
    fmul    f0, f4, f0
    fmul    f0, f6, f0
    frsp    f0, f0
    stfs    f0, 0x54(sp)
    lfs     f6, 0x54(sp)
branch_0x80253efc:
    stfs    f6, 0xb0(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f3, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f3, f0
    stfs    f0, 0xb4(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f3, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f3, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    bl      matan__Fff
    add     r0, r31, r3
    sth     r0, 0x96(r30)
branch_0x80253f64:
    mr      r3, r30
    bl      dropObject__6TMarioFv
    lis     r4, 0x200
    addi    r3, r30, 0x0
    addi    r4, r4, 0x885
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80254018

branch_0x80253f88:
    addi    r3, r30, 0x0
    addi    r4, sp, 0x70
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x0
    beq-    branch_0x80253fec
    lwz     r0, 0x70(sp)
    cmpwi   r0, 0x3
    beq-    branch_0x80253fd0
    bge-    branch_0x80253fe4
    cmpwi   r0, 0x2
    bge-    branch_0x80253fb8
    b       branch_0x80253fe4

branch_0x80253fb8:
    addi    r3, r30, 0x0
    li      r4, 0x896
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80253fe4

branch_0x80253fd0:
    addi    r3, r30, 0x0
    li      r4, 0x895
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80253fe4:
    li      r0, 0x1
    b       branch_0x80253ff0

branch_0x80253fec:
    li      r0, 0x0
branch_0x80253ff0:
    cmpwi   r0, 0x0
    beq-    branch_0x80254000
    li      r3, 0x1
    b       branch_0x8025401c

branch_0x80254000:
    lis     r4, 0x200
    addi    r3, r30, 0x0
    addi    r4, r4, 0x880
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80254018:
    li      r3, 0x1
branch_0x8025401c:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl changePlayerStatus__6TMarioFUlUlb
changePlayerStatus__6TMarioFUlUlb: # 0x80254034
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    bne-    branch_0x80254098
    lwz     r0, 0x7c(r30)
    cmplw   r29, r0
    bne-    branch_0x80254074
    li      r3, 0x0
    b       branch_0x802541e4

branch_0x80254074:
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80254084
    li      r0, 0x1
    b       branch_0x80254088

branch_0x80254084:
    li      r0, 0x0
branch_0x80254088:
    clrlwi. r0, r0, 24
    beq-    branch_0x80254098
    li      r3, 0x0
    b       branch_0x802541e4

branch_0x80254098:
    lwz     r3, 0x7c(r30)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x467
    bne-    branch_0x802540b0
    li      r3, 0x0
    b       branch_0x802541e4

branch_0x802540b0:
    bl      SMS_isDivingMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x802540e0
    addis   r0, r29, 0xeffe
    cmplwi  r0, 0x370
    beq-    branch_0x802540e0
    cmplwi  r29, 0x891
    beq-    branch_0x802540e0
    cmplwi  r29, 0x1302
    beq-    branch_0x802540e0
    li      r3, 0x0
    b       branch_0x802541e4

branch_0x802540e0:
    rlwinm  r0, r29, 0, 23, 25
    cmpwi   r0, 0x80
    beq-    branch_0x802541b0
    bge-    branch_0x802541c4
    cmpwi   r0, 0x40
    beq-    branch_0x802540fc
    b       branch_0x802541c4

branch_0x802540fc:
    lfs     f1, 0x8c(r30)
    lfs     f0, -0xfa4(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80254114
    b       branch_0x80254118

branch_0x80254114:
    fmr     f1, f0
branch_0x80254118:
    lis     r3, 0x400
    addi    r0, r3, 0x440
    cmpw    r29, r0
    beq-    branch_0x80254138
    bge-    branch_0x802541c4
    cmpwi   r29, 0x50
    beq-    branch_0x8025415c
    b       branch_0x802541c4

branch_0x80254138:
    lfs     f0, -0xff8(rtoc)
    lfs     f2, 0xb0(r30)
    fcmpo   cr0, f0, f2
    cror    2, 0, 2
    bne-    branch_0x802541c4
    fcmpo   cr0, f2, f1
    bge-    branch_0x802541c4
    stfs    f1, 0xb0(r30)
    b       branch_0x802541c4

branch_0x8025415c:
    lha     r3, 0x96(r30)
    li      r4, 0x0
    lha     r0, 0xf4(r30)
    subf    r0, r3, r0
    extsh   r0, r0
    cmpwi   r0, -0x4000
    ble-    branch_0x80254184
    cmpwi   r0, 0x4000
    bge-    branch_0x80254184
    li      r4, 0x1
branch_0x80254184:
    clrlwi. r0, r4, 24
    beq-    branch_0x80254198
    lis     r3, 0x84
    addi    r29, r3, 0x452
    b       branch_0x802541a0

branch_0x80254198:
    lis     r3, 0x84
    addi    r29, r3, 0x453
branch_0x802541a0:
    addi    r3, r30, 0x0
    li      r4, 0x78cf
    bl      startVoice__6TMarioFUl
    b       branch_0x802541c4

branch_0x802541b0:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    bl      setStatusToJumping__6TMarioFUlUl
    mr      r29, r3
branch_0x802541c4:
    lwz     r4, 0x7c(r30)
    li      r0, 0x0
    li      r3, 0x1
    stw     r4, 0x80(r30)
    stw     r29, 0x7c(r30)
    stw     r31, 0x88(r30)
    sth     r0, 0x84(r30)
    sth     r0, 0x86(r30)
branch_0x802541e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl throwMario__6TMarioFRCQ29JGeometry8TVec3_f_f
throwMario__6TMarioFRCQ29JGeometry8TVec3_f_f: # 0x80254200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f1
    stfd    f30, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0xf40(rtoc)
    stw     r5, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x28(sp)
    lfs     f2, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f3, 0x28(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80254270
    lfs     f0, -0xfd8(rtoc)
    stfs    f0, 0x24(sp)
branch_0x80254270:
    lfs     f1, 0x20(sp)
    lfs     f0, 0x24(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x28(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0xf40(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x802542b4
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x20(sp)
    b       branch_0x802542e4

branch_0x802542b4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0xfd8(rtoc)
    lfs     f0, 0x20(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x20(sp)
    lfs     f0, 0x24(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(sp)
    lfs     f0, 0x28(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(sp)
branch_0x802542e4:
    lfs     f30, 0x28(sp)
    lfs     f2, 0x20(sp)
    fmr     f1, f30
    bl      matan__Fff
    addis   r3, r3, 0x1
    subi    r0, r3, 0x8000
    sth     r0, 0x96(r31)
    lha     r0, 0x96(r31)
    sth     r0, 0x9a(r31)
    lfs     f1, 0x20(sp)
    lfs     f0, -0xff8(rtoc)
    fmuls   f1, f1, f1
    fmadds  f4, f30, f30, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x8025436c
    frsqrte f1, f4
    lfd     f3, -0xfc8(rtoc)
    lfd     f2, -0xfc0(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x1c(sp)
    lfs     f4, 0x1c(sp)
branch_0x8025436c:
    fneg    f0, f4
    fmuls   f0, f31, f0
    stfs    f0, 0xb0(r31)
    lfs     f0, 0x24(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0xa8(r31)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setStatusToJumping__6TMarioFUlUl
setStatusToJumping__6TMarioFUlUl: # 0x802543a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d8(sp)
    stw     r31, 0x1d4(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x1d0(sp)
    mr      r30, r3
    stw     r29, 0x1cc(sp)
    addi    r29, r5, 0x0
    lfs     f0, 0x14(r3)
    stfs    f0, 0x2bc(r3)
    lha     r0, 0x690(r3)
    lha     r3, 0x360(r3)
    srawi   r0, r0, 1
    addze   r0, r0
    cmpw    r3, r0
    ble-    branch_0x80254400
    lfs     f4, 0x26d8(r30)
    li      r4, 0x1
    lfs     f3, 0x18(r30)
    lfs     f2, 0x14(r30)
    lfs     f1, 0x10(r30)
    lwz     r3, -0x62f0(r13)
    bl      stamp__17TPollutionManagerFUsffff
branch_0x80254400:
    lis     r5, 0x2
    addi    r0, r5, 0x8b4
    cmpw    r31, r0
    beq-    branch_0x8025476c
    bge-    branch_0x80254488
    cmpwi   r31, 0x88b
    beq-    branch_0x802549c0
    bge-    branch_0x80254454
    cmpwi   r31, 0x884
    beq-    branch_0x80254704
    bge-    branch_0x8025443c
    cmpwi   r31, 0x882
    beq-    branch_0x802546d0
    bge-    branch_0x80254818
    b       branch_0x80254d88

branch_0x8025443c:
    cmpwi   r31, 0x888
    beq-    branch_0x80254980
    bge-    branch_0x80254d88
    cmpwi   r31, 0x887
    bge-    branch_0x80254870
    b       branch_0x80254d88

branch_0x80254454:
    cmpwi   r31, 0x894
    beq-    branch_0x80254d0c
    bge-    branch_0x80254470
    cmpwi   r31, 0x892
    beq-    branch_0x80254ad8
    bge-    branch_0x80254b5c
    b       branch_0x80254d88

branch_0x80254470:
    cmpwi   r31, 0x89c
    beq-    branch_0x80254534
    bge-    branch_0x80254d88
    cmpwi   r31, 0x897
    bge-    branch_0x80254d88
    b       branch_0x80254738

branch_0x80254488:
    lis     r4, 0x200
    addi    r0, r4, 0x885
    cmpw    r31, r0
    beq-    branch_0x802548a4
    bge-    branch_0x802544f0
    lis     r3, 0x80
    addi    r0, r3, 0x88a
    cmpw    r31, r0
    beq-    branch_0x802548f8
    bge-    branch_0x802544d0
    addi    r0, r5, 0x8b8
    cmpw    r31, r0
    beq-    branch_0x80254d88
    bge-    branch_0x80254d88
    addi    r0, r5, 0x8b7
    cmpw    r31, r0
    bge-    branch_0x802548c8
    b       branch_0x80254d88

branch_0x802544d0:
    addi    r0, r4, 0x881
    cmpw    r31, r0
    beq-    branch_0x8025469c
    bge-    branch_0x80254d88
    addi    r0, r4, 0x880
    cmpw    r31, r0
    bge-    branch_0x80254534
    b       branch_0x80254d88

branch_0x802544f0:
    addi    r0, r4, 0x890
    cmpw    r31, r0
    beq-    branch_0x80254a3c
    bge-    branch_0x80254520
    addi    r0, r4, 0x889
    cmpw    r31, r0
    beq-    branch_0x802549a0
    bge-    branch_0x80254d88
    addi    r0, r4, 0x887
    cmpw    r31, r0
    bge-    branch_0x80254d88
    b       branch_0x80254844

branch_0x80254520:
    lis     r3, 0x281
    addi    r0, r3, 0x89a
    cmpw    r31, r0
    beq-    branch_0x80254780
    b       branch_0x80254d88

branch_0x80254534:
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xf38(rtoc)
    lfs     f0, -0xf3c(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xf8c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lwz     r3, 0xe0(r30)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80254570
    li      r0, 0x1
    b       branch_0x80254574

branch_0x80254570:
    li      r0, 0x0
branch_0x80254574:
    clrlwi. r0, r0, 24
    bne-    branch_0x80254658
    lhz     r4, 0x0(r3)
    cmplwi  r4, 0x108
    beq-    branch_0x80254598
    cmplwi  r4, 0x8
    beq-    branch_0x80254598
    cmplwi  r4, 0x8008
    bne-    branch_0x802545a0
branch_0x80254598:
    li      r0, 0x1
    b       branch_0x802545a4

branch_0x802545a0:
    li      r0, 0x0
branch_0x802545a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802545c4
    bl      getActiveJumpPower__12TBGCheckDataCFv
    lfs     f0, -0xf34(rtoc)
    li      r31, 0x884
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x802545c4:
    cmplwi  r4, 0x9
    beq-    branch_0x802545d4
    cmplwi  r4, 0x8009
    bne-    branch_0x802545dc
branch_0x802545d4:
    li      r0, 0x1
    b       branch_0x802545e0

branch_0x802545dc:
    li      r0, 0x0
branch_0x802545e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80254658
    cmplwi  r3, 0x0
    beq-    branch_0x80254600
    bl      getActiveJumpPower__12TBGCheckDataCFv
    lfs     f0, -0xf34(rtoc)
    fmuls   f2, f0, f1
    b       branch_0x80254604

branch_0x80254600:
    lfs     f2, -0xff8(rtoc)
branch_0x80254604:
    lfs     f0, 0xbc(r30)
    lfs     f1, 0xa8(r30)
    fneg    f0, f0
    fadds   f0, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lwz     r3, 0xe0(r30)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80254644
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80254644:
    addi    r3, r30, 0x0
    li      r4, 0x78b9
    bl      startVoice__6TMarioFUl
    li      r31, 0x884
    b       branch_0x80254d88

branch_0x80254658:
    lfs     f1, 0x370(r30)
    lfs     f0, 0x8ac(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80254670
    li      r0, 0x1
    b       branch_0x80254674

branch_0x80254670:
    li      r0, 0x0
branch_0x80254674:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025468c
    addi    r3, r30, 0x0
    li      r4, 0x78a3
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x8025468c:
    addi    r3, r30, 0x0
    li      r4, 0x78ab
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x8025469c:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, 0xd48(r30)
    li      r4, 0x78b1
    lfs     f0, 0xd34(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, 0xd5c(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x802546d0:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, 0xd98(r30)
    li      r4, 0x78b6
    lfs     f0, 0xd84(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, 0xdac(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x80254704:
    lwz     r3, 0xe0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80254720
    bl      getActiveJumpPower__12TBGCheckDataCFv
    lfs     f0, -0xf34(rtoc)
    fmuls   f0, f0, f1
    b       branch_0x80254724

branch_0x80254720:
    lfs     f0, -0xff8(rtoc)
branch_0x80254724:
    stfs    f0, 0xa8(r30)
    addi    r3, r30, 0x0
    li      r4, 0x78b1
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x80254738:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, -0xf38(rtoc)
    li      r4, 0x78b6
    lfs     f0, 0xc1c(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xf8c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x8025476c:
    lfs     f0, -0xf30(rtoc)
    stfs    f0, 0xa8(r30)
    lfs     f0, -0xfa4(rtoc)
    stfs    f0, 0xb0(r30)
    b       branch_0x80254d88

branch_0x80254780:
    addi    r3, r30, 0x0
    li      r4, 0x78ab
    bl      startVoice__6TMarioFUl
    lwz     r3, -0x6328(r13)
    addi    r4, sp, 0x1a4
    lfs     f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x1a4(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x802547d4
    cmplwi  r3, 0x101
    beq-    branch_0x802547d4
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x802547d4
    cmplwi  r3, 0x4104
    bne-    branch_0x802547dc
branch_0x802547d4:
    li      r0, 0x1
    b       branch_0x802547e0

branch_0x802547dc:
    li      r0, 0x0
branch_0x802547e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80254800
    lfs     f2, 0xb0(r30)
    lfs     f1, 0x17f0(r30)
    lfs     f0, 0x17dc(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x80254800:
    lfs     f2, 0xb0(r30)
    lfs     f1, 0x19c4(r30)
    lfs     f0, 0x19b0(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x80254818:
    lfs     f0, 0xc58(r30)
    addi    r3, r30, 0x0
    li      r4, 0x78b6
    stfs    f0, 0xb0(r30)
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xff8(rtoc)
    lfs     f0, 0xc6c(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x80254844:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, -0xff8(rtoc)
    li      r4, 0x78b1
    lfs     f0, -0xf2c(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f0, -0xf28(rtoc)
    stfs    f0, 0xb0(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x80254870:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, -0xff8(rtoc)
    li      r4, 0x78b6
    lfs     f0, 0xb90(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f0, -0xfa4(rtoc)
    stfs    f0, 0xb0(r30)
    lha     r0, 0x90(r30)
    sth     r0, 0x96(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x802548a4:
    addi    r3, r30, 0x0
    li      r4, 0x78ab
    bl      startVoice__6TMarioFUl
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xf38(rtoc)
    lfs     f0, -0xf3c(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x802548c8:
    lwz     r0, 0x88(r30)
    cmplwi  r0, 0x2
    beq-    branch_0x80254d88
    lfs     f0, 0xbb8(r30)
    stfs    f0, 0xa8(r30)
    lwz     r0, 0x88(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80254d88
    lfs     f0, 0xbe0(r30)
    fneg    f0, f0
    stfs    f0, 0xb0(r30)
    b       branch_0x80254d88

branch_0x802548f8:
    addi    r3, r30, 0x0
    li      r4, 0x7884
    bl      startVoice__6TMarioFUl
    lfs     f2, -0xf24(rtoc)
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xf20(rtoc)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80254920
    fmr     f1, f0
branch_0x80254920:
    stfs    f1, 0xb0(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    b       branch_0x80254d88

branch_0x80254980:
    addi    r3, r30, 0x0
    li      r4, 0x78b1
    bl      startVoice__6TMarioFUl
    lfs     f0, 0xbf4(r30)
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xc08(r30)
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x802549a0:
    addi    r3, r30, 0x0
    li      r4, 0x78b1
    bl      startVoice__6TMarioFUl
    lfs     f0, 0xce4(r30)
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xcf8(r30)
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x802549c0:
    lwz     r3, 0x3e4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80254d88
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802549ec
    addi    r3, r30, 0x0
    li      r4, 0x78b9
    bl      startVoice__6TMarioFUl
    mr      r3, r30
    bl      rocketEffectStart__6TMarioFv
branch_0x802549ec:
    lwz     r3, 0x3e4(r30)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x80254a08
    addi    r3, r30, 0x0
    li      r4, 0x788f
    bl      startVoice__6TMarioFUl
branch_0x80254a08:
    lwz     r3, 0x3e4(r30)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80254a24
    addi    r3, r30, 0x0
    li      r4, 0x78ab
    bl      startVoice__6TMarioFUl
branch_0x80254a24:
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xff8(rtoc)
    lfs     f0, -0xfe0(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    b       branch_0x80254d88

branch_0x80254a3c:
    lhz     r0, 0xfa(r30)
    cmpwi   r0, 0xd2
    beq-    branch_0x80254a80
    bge-    branch_0x80254a50
    b       branch_0x80254a5c

branch_0x80254a50:
    cmpwi   r0, 0xd4
    bge-    branch_0x80254a5c
    b       branch_0x80254aa4

branch_0x80254a5c:
    addi    r3, r30, 0x0
    li      r4, 0x78ab
    bl      startVoice__6TMarioFUl
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xf38(rtoc)
    lfs     f0, 0x7d0(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    b       branch_0x80254ac4

branch_0x80254a80:
    addi    r3, r30, 0x0
    li      r4, 0x78b1
    bl      startVoice__6TMarioFUl
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xf38(rtoc)
    lfs     f0, 0x7e4(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    b       branch_0x80254ac4

branch_0x80254aa4:
    addi    r3, r30, 0x0
    li      r4, 0x78b6
    bl      startVoice__6TMarioFUl
    lfs     f2, 0xb0(r30)
    lfs     f1, -0xf38(rtoc)
    lfs     f0, 0x7f8(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
branch_0x80254ac4:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0xf8c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    b       branch_0x80254d88

branch_0x80254ad8:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, -0xf38(rtoc)
    li      r4, 0x78b6
    lfs     f0, -0xf3c(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f0, -0xff8(rtoc)
    stfs    f0, 0xb0(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x80254b5c:
    cmplwi  r29, 0x0
    bne-    branch_0x80254c34
    lha     r0, 0xf6(r30)
    lis     r3, 0x1
    subi    r4, r3, 0x2000
    lfd     f1, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    lis     r5, 0x4330
    lwz     r0, -0x5eac(r13)
    stw     r5, 0x1c0(sp)
    sraw    r0, r4, r0
    lfs     f2, 0x13ec(r30)
    lfd     f0, 0x1c0(sp)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    fsubs   f3, f0, f1
    lfs     f1, -0xfd8(rtoc)
    lfsx    f0, r3, r0
    fmuls   f2, f3, f2
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    b       branch_0x80254cfc

branch_0x80254c34:
    lha     r0, 0xf6(r30)
    lis     r3, 0x4330
    lfd     f1, -0xfe8(rtoc)
    li      r4, 0x6000
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c4(sp)
    lwz     r0, -0x5eac(r13)
    stw     r3, 0x1c0(sp)
    sraw    r0, r4, r0
    lfs     f2, 0x13ec(r30)
    lfd     f0, 0x1c0(sp)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    fsubs   f3, f0, f1
    lfs     f1, -0xfd8(rtoc)
    lfsx    f0, r3, r0
    fmuls   f2, f3, f2
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lhz     r3, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
branch_0x80254cfc:
    addi    r3, r30, 0x0
    li      r4, 0x78b9
    bl      startVoice__6TMarioFUl
    b       branch_0x80254d88

branch_0x80254d0c:
    lfs     f2, 0xb0(r30)
    mr      r3, r30
    lfs     f1, -0xff8(rtoc)
    li      r4, 0x78ab
    lfs     f0, -0xf3c(rtoc)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa8(r30)
    stfs    f1, 0xb0(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r30)
    lhz     r5, 0x96(r30)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f1, 0xb0(r30)
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f0, 0xb4(r30)
    stfs    f0, 0xa4(r30)
    lfs     f0, 0xb8(r30)
    stfs    f0, 0xac(r30)
    bl      startVoice__6TMarioFUl
branch_0x80254d88:
    lfs     f3, 0x368(r30)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f3, f0
    ble-    branch_0x80254da0
    li      r0, 0x1
    b       branch_0x80254da4

branch_0x80254da0:
    li      r0, 0x0
branch_0x80254da4:
    cmpwi   r0, 0x0
    beq-    branch_0x80254e60
    lha     r0, 0x2428(r30)
    lis     r3, 0x4330
    lfd     f4, -0xfe8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f6, 0x24a0(r30)
    stw     r0, 0x1c4(sp)
    lfs     f0, 0x24b4(r30)
    stw     r3, 0x1c0(sp)
    fsubs   f2, f0, f6
    lfs     f5, -0xfd8(rtoc)
    lfd     f1, 0x1c0(sp)
    lfs     f0, 0xa8(r30)
    fsubs   f1, f1, f4
    fdivs   f1, f3, f1
    fsubs   f1, f5, f1
    fmadds  f1, f2, f1, f6
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(r30)
    lfs     f0, 0xb0(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lha     r0, 0x2428(r30)
    lfs     f2, 0x368(r30)
    xoris   r0, r0, 0x8000
    lfs     f0, 0x248c(r30)
    stw     r0, 0x1bc(sp)
    lfs     f3, 0x368(r30)
    stw     r3, 0x1b8(sp)
    lfd     f1, 0x1b8(sp)
    stw     r0, 0x1b4(sp)
    fsubs   f1, f1, f4
    stw     r3, 0x1b0(sp)
    fdivs   f2, f2, f1
    lfd     f1, 0x1b0(sp)
    fsubs   f1, f1, f4
    fsubs   f2, f5, f2
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    fsubs   f0, f3, f0
    stfs    f0, 0x368(r30)
    lfs     f1, 0x368(r30)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80254e60
    stfs    f0, 0x368(r30)
branch_0x80254e60:
    lwz     r3, 0x3f0(r30)
    li      r29, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x80254e80
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x80254e80
    li      r29, 0x1
branch_0x80254e80:
    clrlwi. r0, r29, 24
    beq-    branch_0x80254eac
    lfs     f1, 0xa8(r30)
    li      r0, 0x0
    lfs     f0, 0x221c(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lwz     r3, 0x3f0(r30)
    stb     r0, 0xb8(r3)
    lhz     r0, 0xbc(r3)
    sth     r0, 0xba(r3)
branch_0x80254eac:
    lfs     f0, 0x14(r30)
    rlwinm. r0, r31, 0, 6, 6
    stfs    f0, 0x104(r30)
    beq-    branch_0x80254ecc
    lwz     r0, 0x78(r30)
    ori     r0, r0, 0x100
    stw     r0, 0x78(r30)
    b       branch_0x80254ed8

branch_0x80254ecc:
    lwz     r0, 0x78(r30)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0x78(r30)
branch_0x80254ed8:
    lwz     r0, 0x1dc(sp)
    mr      r3, r31
    lwz     r31, 0x1d4(sp)
    lwz     r30, 0x1d0(sp)
    mtlr    r0
    lwz     r29, 0x1cc(sp)
    addi    sp, sp, 0x1d8
    blr


.globl checkPlayerAround__6TMarioFif
checkPlayerAround__6TMarioFif: # 0x80254ef8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    lha     r5, 0x96(r3)
    lwz     r0, -0x5eac(r13)
    add     r4, r5, r4
    lwz     r6, -0x5ea8(r13)
    clrlwi  r4, r4, 16
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r4, r0
    lfs     f2, -0xff0(rtoc)
    slwi    r0, r0, 2
    lfs     f0, 0x14(r3)
    lfsx    f5, r6, r0
    addi    r4, sp, 0x24
    lfsx    f4, r5, r0
    fadds   f2, f2, f0
    fmuls   f5, f1, f5
    fmuls   f4, f1, f4
    lfs     f3, 0x10(r3)
    lfs     f0, 0x18(r3)
    fadds   f1, f3, f5
    fadds   f3, f0, f4
    lwz     r3, -0x6328(r13)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getSlideStopCatch__6TMarioFv
getSlideStopCatch__6TMarioFv: # 0x80254f6c
    lwz     r4, 0xe0(r3)
    lhz     r5, 0x0(r4)
    cmplwi  r5, 0x1
    beq-    branch_0x80254f94
    cmplwi  r5, 0x4001
    beq-    branch_0x80254f94
    cmplwi  r5, 0x8001
    beq-    branch_0x80254f94
    cmplwi  r5, 0xc001
    bne-    branch_0x80254f9c
branch_0x80254f94:
    li      r0, 0x1
    b       branch_0x80254fa0

branch_0x80254f9c:
    li      r0, 0x0
branch_0x80254fa0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80254fb0
    li      r0, 0x1
    b       branch_0x80255010

branch_0x80254fb0:
    lwz     r0, 0x350(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80254ff4
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80254fd0
    li      r0, 0x1
    b       branch_0x80254fd4

branch_0x80254fd0:
    li      r0, 0x0
branch_0x80254fd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80254ff4
    lfs     f1, 0x38(r4)
    lfs     f0, 0x26ec(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80254ff4
    li      r0, 0x1
    b       branch_0x80255010

branch_0x80254ff4:
    lfs     f1, 0x38(r4)
    lfs     f0, 0x8d4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025500c
    li      r0, 0x1
    b       branch_0x80255010

branch_0x8025500c:
    li      r0, 0x0
branch_0x80255010:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255020
    lfs     f1, 0x2ba4(r3)
    blr

branch_0x80255020:
    cmplwi  r5, 0xc
    beq-    branch_0x80255038
    cmplwi  r5, 0x800c
    beq-    branch_0x80255038
    cmplwi  r5, 0xa00c
    bne-    branch_0x80255040
branch_0x80255038:
    li      r0, 0x1
    b       branch_0x80255044

branch_0x80255040:
    li      r0, 0x0
branch_0x80255044:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255054
    lfs     f1, 0x2c88(r3)
    blr

branch_0x80255054:
    cmplwi  r5, 0x2
    beq-    branch_0x80255064
    cmplwi  r5, 0x8002
    bne-    branch_0x8025506c
branch_0x80255064:
    li      r0, 0x1
    b       branch_0x80255070

branch_0x8025506c:
    li      r0, 0x0
branch_0x80255070:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255090
    lfs     f1, 0x38(r4)
    lfs     f0, -0xf70(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255090
    lfs     f1, 0x2d6c(r3)
    blr

branch_0x80255090:
    cmplwi  r5, 0x4
    beq-    branch_0x802550b0
    cmplwi  r5, 0x4004
    beq-    branch_0x802550b0
    cmplwi  r5, 0x8004
    beq-    branch_0x802550b0
    cmplwi  r5, 0xc004
    bne-    branch_0x802550b8
branch_0x802550b0:
    li      r0, 0x1
    b       branch_0x802550bc

branch_0x802550b8:
    li      r0, 0x0
branch_0x802550bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802550e4
    lfs     f1, 0x38(r4)
    lfs     f0, -0xf48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802550dc
    lfs     f1, 0x2f34(r3)
    blr

branch_0x802550dc:
    lfs     f1, 0x2e50(r3)
    blr

branch_0x802550e4:
    lfs     f1, 0x29dc(r3)
    blr


.globl getSlideStopNormal__6TMarioFv
getSlideStopNormal__6TMarioFv: # 0x802550ec
    lwz     r4, 0xe0(r3)
    lhz     r5, 0x0(r4)
    cmplwi  r5, 0x1
    beq-    branch_0x80255114
    cmplwi  r5, 0x4001
    beq-    branch_0x80255114
    cmplwi  r5, 0x8001
    beq-    branch_0x80255114
    cmplwi  r5, 0xc001
    bne-    branch_0x8025511c
branch_0x80255114:
    li      r0, 0x1
    b       branch_0x80255120

branch_0x8025511c:
    li      r0, 0x0
branch_0x80255120:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255130
    li      r0, 0x1
    b       branch_0x80255190

branch_0x80255130:
    lwz     r0, 0x350(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80255174
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80255150
    li      r0, 0x1
    b       branch_0x80255154

branch_0x80255150:
    li      r0, 0x0
branch_0x80255154:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255174
    lfs     f1, 0x38(r4)
    lfs     f0, 0x26ec(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255174
    li      r0, 0x1
    b       branch_0x80255190

branch_0x80255174:
    lfs     f1, 0x38(r4)
    lfs     f0, 0x8d4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8025518c
    li      r0, 0x1
    b       branch_0x80255190

branch_0x8025518c:
    li      r0, 0x0
branch_0x80255190:
    clrlwi. r0, r0, 24
    beq-    branch_0x802551a0
    lfs     f1, 0x2b90(r3)
    blr

branch_0x802551a0:
    cmplwi  r5, 0xc
    beq-    branch_0x802551b8
    cmplwi  r5, 0x800c
    beq-    branch_0x802551b8
    cmplwi  r5, 0xa00c
    bne-    branch_0x802551c0
branch_0x802551b8:
    li      r0, 0x1
    b       branch_0x802551c4

branch_0x802551c0:
    li      r0, 0x0
branch_0x802551c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802551d4
    lfs     f1, 0x2c74(r3)
    blr

branch_0x802551d4:
    cmplwi  r5, 0x2
    beq-    branch_0x802551e4
    cmplwi  r5, 0x8002
    bne-    branch_0x802551ec
branch_0x802551e4:
    li      r0, 0x1
    b       branch_0x802551f0

branch_0x802551ec:
    li      r0, 0x0
branch_0x802551f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255210
    lfs     f1, 0x38(r4)
    lfs     f0, -0xf70(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255210
    lfs     f1, 0x2d58(r3)
    blr

branch_0x80255210:
    cmplwi  r5, 0x4
    beq-    branch_0x80255230
    cmplwi  r5, 0x4004
    beq-    branch_0x80255230
    cmplwi  r5, 0x8004
    beq-    branch_0x80255230
    cmplwi  r5, 0xc004
    bne-    branch_0x80255238
branch_0x80255230:
    li      r0, 0x1
    b       branch_0x8025523c

branch_0x80255238:
    li      r0, 0x0
branch_0x8025523c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025525c
    lfs     f1, 0x38(r4)
    lfs     f0, -0xf48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8025525c
    lfs     f1, 0x2f20(r3)
    blr

branch_0x8025525c:
    lfs     f1, 0x2e3c(r3)
    blr


.globl canSlipJump__6TMarioFv
canSlipJump__6TMarioFv: # 0x80255264
    lwz     r4, 0xe0(r3)
    lhz     r5, 0x0(r4)
    cmplwi  r5, 0x1
    beq-    branch_0x8025528c
    cmplwi  r5, 0x4001
    beq-    branch_0x8025528c
    cmplwi  r5, 0x8001
    beq-    branch_0x8025528c
    cmplwi  r5, 0xc001
    bne-    branch_0x80255294
branch_0x8025528c:
    li      r0, 0x1
    b       branch_0x80255298

branch_0x80255294:
    li      r0, 0x0
branch_0x80255298:
    clrlwi. r0, r0, 24
    beq-    branch_0x802552a8
    li      r0, 0x1
    b       branch_0x80255308

branch_0x802552a8:
    lwz     r0, 0x350(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x802552ec
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802552c8
    li      r0, 0x1
    b       branch_0x802552cc

branch_0x802552c8:
    li      r0, 0x0
branch_0x802552cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802552ec
    lfs     f1, 0x38(r4)
    lfs     f0, 0x26ec(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802552ec
    li      r0, 0x1
    b       branch_0x80255308

branch_0x802552ec:
    lfs     f1, 0x38(r4)
    lfs     f0, 0x8d4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255304
    li      r0, 0x1
    b       branch_0x80255308

branch_0x80255304:
    li      r0, 0x0
branch_0x80255308:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255318
    lbz     r3, 0x2bb8(r3)
    blr

branch_0x80255318:
    cmplwi  r5, 0xc
    beq-    branch_0x80255330
    cmplwi  r5, 0x800c
    beq-    branch_0x80255330
    cmplwi  r5, 0xa00c
    bne-    branch_0x80255338
branch_0x80255330:
    li      r0, 0x1
    b       branch_0x8025533c

branch_0x80255338:
    li      r0, 0x0
branch_0x8025533c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8025534c
    lbz     r3, 0x2c9c(r3)
    blr

branch_0x8025534c:
    cmplwi  r5, 0x2
    beq-    branch_0x8025535c
    cmplwi  r5, 0x8002
    bne-    branch_0x80255364
branch_0x8025535c:
    li      r0, 0x1
    b       branch_0x80255368

branch_0x80255364:
    li      r0, 0x0
branch_0x80255368:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255378
    lbz     r3, 0x2d80(r3)
    blr

branch_0x80255378:
    cmplwi  r5, 0x4
    beq-    branch_0x80255398
    cmplwi  r5, 0x4004
    beq-    branch_0x80255398
    cmplwi  r5, 0x8004
    beq-    branch_0x80255398
    cmplwi  r5, 0xc004
    bne-    branch_0x802553a0
branch_0x80255398:
    li      r0, 0x1
    b       branch_0x802553a4

branch_0x802553a0:
    li      r0, 0x0
branch_0x802553a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802553cc
    lfs     f1, 0x38(r4)
    lfs     f0, -0xf48(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802553c4
    lbz     r3, 0x2f48(r3)
    blr

branch_0x802553c4:
    lbz     r3, 0x2e64(r3)
    blr

branch_0x802553cc:
    cmplwi  r5, 0x3
    beq-    branch_0x802553dc
    cmplwi  r5, 0x8003
    bne-    branch_0x802553e4
branch_0x802553dc:
    li      r0, 0x1
    b       branch_0x802553e8

branch_0x802553e4:
    li      r0, 0x0
branch_0x802553e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802553f8
    li      r3, 0x1
    blr

branch_0x802553f8:
    li      r3, 0x1
    blr


.globl isSlipStart__6TMarioFv
isSlipStart__6TMarioFv: # 0x80255400
    lwz     r4, 0xe0(r3)
    lhz     r5, 0x0(r4)
    cmplwi  r5, 0x1
    beq-    branch_0x80255428
    cmplwi  r5, 0x4001
    beq-    branch_0x80255428
    cmplwi  r5, 0x8001
    beq-    branch_0x80255428
    cmplwi  r5, 0xc001
    bne-    branch_0x80255430
branch_0x80255428:
    li      r0, 0x1
    b       branch_0x80255434

branch_0x80255430:
    li      r0, 0x0
branch_0x80255434:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255444
    li      r0, 0x1
    b       branch_0x802554a4

branch_0x80255444:
    lwz     r0, 0x350(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80255488
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80255464
    li      r0, 0x1
    b       branch_0x80255468

branch_0x80255464:
    li      r0, 0x0
branch_0x80255468:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255488
    lfs     f1, 0x38(r4)
    lfs     f0, 0x26ec(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255488
    li      r0, 0x1
    b       branch_0x802554a4

branch_0x80255488:
    lfs     f1, 0x38(r4)
    lfs     f0, 0x8d4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802554a0
    li      r0, 0x1
    b       branch_0x802554a4

branch_0x802554a0:
    li      r0, 0x0
branch_0x802554a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x802554b4
    li      r3, 0x1
    blr

branch_0x802554b4:
    cmplwi  r5, 0xc
    beq-    branch_0x802554cc
    cmplwi  r5, 0x800c
    beq-    branch_0x802554cc
    cmplwi  r5, 0xa00c
    bne-    branch_0x802554d4
branch_0x802554cc:
    li      r0, 0x1
    b       branch_0x802554d8

branch_0x802554d4:
    li      r0, 0x0
branch_0x802554d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802554e8
    li      r3, 0x1
    blr

branch_0x802554e8:
    cmplwi  r5, 0x2
    beq-    branch_0x802554f8
    cmplwi  r5, 0x8002
    bne-    branch_0x80255500
branch_0x802554f8:
    li      r0, 0x1
    b       branch_0x80255504

branch_0x80255500:
    li      r0, 0x0
branch_0x80255504:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255524
    lfs     f1, 0x38(r4)
    lfs     f0, -0xf70(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255524
    li      r3, 0x1
    blr

branch_0x80255524:
    cmplwi  r5, 0x3
    beq-    branch_0x80255534
    cmplwi  r5, 0x8003
    bne-    branch_0x8025553c
branch_0x80255534:
    li      r0, 0x1
    b       branch_0x80255540

branch_0x8025553c:
    li      r0, 0x0
branch_0x80255540:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255550
    li      r3, 0x0
    blr

branch_0x80255550:
    lfs     f1, 0x38(r4)
    lfs     f0, 0x834(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255568
    li      r3, 0x1
    blr

branch_0x80255568:
    li      r3, 0x0
    blr


.globl isFrontSlip__6TMarioFi
isFrontSlip__6TMarioFi: # 0x80255570
    cmpwi   r4, 0x0
    lha     r4, 0x96(r3)
    beq-    branch_0x80255594
    lfs     f1, 0xb0(r3)
    lfs     f0, -0xff8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255594
    addis   r4, r4, 0x1
    subi    r4, r4, 0x8000
branch_0x80255594:
    lha     r0, 0xf4(r3)
    li      r3, 0x0
    subf    r0, r4, r0
    extsh   r0, r0
    cmpwi   r0, -0x4000
    ble-    branch_0x802555b8
    cmpwi   r0, 0x4000
    bge-    branch_0x802555b8
    li      r3, 0x1
branch_0x802555b8:
    clrlwi  r3, r3, 24
    blr


.globl checkRoofPlane__6TMarioFRC3VecfPPC12TBGCheckData
checkRoofPlane__6TMarioFRC3VecfPPC12TBGCheckData: # 0x802555c0
    mflr    r0
    fmr     f2, f1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, -0xff4(rtoc)
    lwz     r3, -0x6328(r13)
    fadds   f2, f0, f2
    lfs     f1, 0x0(r4)
    lfs     f3, 0x8(r4)
    mr      r4, r5
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkWallPlane__6TMarioFP3Vecff
checkWallPlane__6TMarioFP3Vecff: # 0x802555fc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    fmr     f31, f2
    stw     r31, 0x6c(sp)
    li      r31, 0x0
    stw     r30, 0x68(sp)
    li      r30, 0x0
    stw     r29, 0x64(sp)
    mr      r29, r4
    stw     r28, 0x60(sp)
    mr      r28, r3
    lfs     f3, 0x4(r4)
    lfs     f4, 0x8(r4)
    lfs     f0, 0x0(r4)
    fadds   f1, f3, f1
    addi    r4, sp, 0x30
    stfs    f0, 0x30(sp)
    stfs    f1, 0x34(sp)
    stfs    f4, 0x38(sp)
    stfs    f2, 0x3c(sp)
    lwz     r3, -0x6328(r13)
    stw     r0, 0x40(sp)
    stw     r31, 0x48(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802556fc
    lwz     r0, 0x44(sp)
    addi    r4, sp, 0x30
    lfs     f0, -0xff8(rtoc)
    cmpwi   r0, 0x0
    mtctr   r0
    ble-    branch_0x802556fc
branch_0x8025568c:
    addi    r3, r31, 0x1c
    lwz     r0, 0x2c0(r28)
    lwzx    r5, r4, r3
    lwz     r3, 0x44(r5)
    cmplw   r3, r0
    bne-    branch_0x802556ac
    mr      r30, r5
    b       branch_0x802556fc

branch_0x802556ac:
    lfs     f1, 0x4(r29)
    lfs     f2, 0x38(r5)
    lfs     f3, 0x34(r5)
    fmuls   f1, f2, f1
    lfs     f2, 0x0(r29)
    lfs     f5, 0x3c(r5)
    lfs     f4, 0x8(r29)
    fmadds  f2, f3, f2, f1
    lfs     f1, 0x40(r5)
    fmadds  f2, f5, f4, f2
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x802556e4
    fneg    f1, f1
branch_0x802556e4:
    fcmpo   cr0, f1, f31
    bge-    branch_0x802556f4
    mr      r30, r5
    fmr     f31, f1
branch_0x802556f4:
    addi    r31, r31, 0x4
    bdnz+      branch_0x8025568c
branch_0x802556fc:
    lfs     f0, 0x30(sp)
    mr      r3, r30
    stfs    f0, 0x0(r29)
    lfs     f0, 0x38(sp)
    stfs    f0, 0x8(r29)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl setPlayerVelocity__6TMarioFf
setPlayerVelocity__6TMarioFf: # 0x80255734
    stfs    f1, 0xb0(r3)
    lhz     r4, 0x96(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea8(r13)
    sraw    r0, r4, r0
    lfs     f1, 0xb0(r3)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r3)
    lhz     r4, 0x96(r3)
    lwz     r0, -0x5eac(r13)
    lwz     r5, -0x5ea4(r13)
    sraw    r0, r4, r0
    lfs     f1, 0xb0(r3)
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r3)
    lfs     f0, 0xb4(r3)
    stfs    f0, 0xa4(r3)
    lfs     f0, 0xb8(r3)
    stfs    f0, 0xac(r3)
    blr


.globl setNormalAttackArea__6TMarioFv
setNormalAttackArea__6TMarioFv: # 0x80255794
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lfs     f0, 0x708(r3)
    stfs    f0, 0x50(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x744(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl canBendBody__6TMarioFv
canBendBody__6TMarioFv: # 0x802557d8
    lwz     r0, 0x7c(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x14b
    blt-    branch_0x802557f8
    cmplwi  r0, 0x14f
    bgt-    branch_0x802557f8
    li      r3, 0x0
    blr

branch_0x802557f8:
    cmplwi  r0, 0x140
    blt-    branch_0x80255810
    cmplwi  r0, 0x143
    bgt-    branch_0x80255810
    li      r3, 0x0
    blr

branch_0x80255810:
    li      r3, 0x1
    blr


.globl considerRotateJumpStart__6TMarioFv
considerRotateJumpStart__6TMarioFv: # 0x80255818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0xc
    bl      checkStickRotate__6TMarioFPi
    cmpwi   r3, 0x0
    beq-    branch_0x8025588c
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x3
    beq-    branch_0x80255870
    bge-    branch_0x80255884
    cmpwi   r0, 0x2
    bge-    branch_0x80255858
    b       branch_0x80255884

branch_0x80255858:
    addi    r3, r31, 0x0
    li      r4, 0x896
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
    b       branch_0x80255884

branch_0x80255870:
    addi    r3, r31, 0x0
    li      r4, 0x895
    li      r5, 0x0
    li      r6, 0x0
    bl      changePlayerStatus__6TMarioFUlUlb
branch_0x80255884:
    li      r3, 0x1
    b       branch_0x80255890

branch_0x8025588c:
    li      r3, 0x0
branch_0x80255890:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl addVelocity__6TMarioFf
addVelocity__6TMarioFf: # 0x802558a4
    lfs     f0, 0xb0(r3)
    fadds   f0, f0, f1
    stfs    f0, 0xb0(r3)
    lfs     f1, 0xb0(r3)
    lfs     f0, -0xf1c(rtoc)
    fcmpo   cr0, f1, f0
    blelr-    

    stfs    f0, 0xb0(r3)
    blr


#	TMario::onYoshi(const(void))
.globl onYoshi__6TMarioCFv
onYoshi__6TMarioCFv: # 0x802558c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    lwz     r3, 0x3f0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802558f8
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x802558f8
    li      r31, 0x1
branch_0x802558f8:
    lwz     r0, 0x1c(sp)
    clrlwi  r3, r31, 24
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl windMove__6TMarioFRCQ29JGeometry8TVec3_f_
windMove__6TMarioFRCQ29JGeometry8TVec3_f_: # 0x80255910
    lfs     f1, 0x10(r3)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    blr


.globl flowMove__6TMarioFRCQ29JGeometry8TVec3_f_
flowMove__6TMarioFRCQ29JGeometry8TVec3_f_: # 0x80255944
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80255958
    li      r0, 0x1
    b       branch_0x8025595c

branch_0x80255958:
    li      r0, 0x0
branch_0x8025595c:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bnelr-    

    lfs     f1, 0x10(r3)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    blr


.globl warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f
warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f: # 0x8025599c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f1
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    mr      r30, r3
    addi    r3, sp, 0x28
    lwz     r4, 0x0(r4)
    lwz     r0, 0x4(r31)
    stw     r4, 0x28(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x30(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x28(sp)
    mr      r3, r30
    lwz     r5, 0x2c(sp)
    mr      r4, r31
    stw     r0, 0x44(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    lfs     f0, -0xf18(rtoc)
    addi    r4, sp, 0x44
    fmuls   f0, f0, f31
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    sth     r0, 0x96(r30)
    lha     r0, 0x96(r30)
    sth     r0, 0x9a(r30)
    lwz     r3, -0x7118(r13)
    bl      addMoveCameraAndMario__15CPolarSubCameraFRC3Vec
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x7
    beq-    branch_0x80255a58
    lwz     r3, 0x4fc(r30)
    bl      onNeutralMarioKey__13TMarioGamePadFv
branch_0x80255a58:
    lis     r4, 0xc40
    addi    r3, r30, 0x0
    addi    r4, r4, 0x201
    li      r5, 0x0
    li      r6, 0x1
    bl      changePlayerStatus__6TMarioFUlUlb
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl moveRequest__6TMarioFRCQ29JGeometry8TVec3_f_
moveRequest__6TMarioFRCQ29JGeometry8TVec3_f_: # 0x80255a8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    mr      r30, r3
    addi    r3, sp, 0x14
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    addi    r4, r30, 0x10
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x1c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x14(sp)
    lwz     r3, 0x18(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x1c(sp)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r31)
    stw     r0, 0x18(r30)
    lfs     f1, 0x160(r30)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x160(r30)
    lfs     f1, 0x164(r30)
    lfs     f0, 0x60(sp)
    fadds   f1, f1, f0
    stfs    f1, 0x164(r30)
    lfs     f2, 0x168(r30)
    lfs     f1, 0x64(sp)
    fadds   f2, f2, f1
    stfs    f2, 0x168(r30)
    lfs     f3, 0x29c(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x29c(r30)
    lfs     f2, 0x2a0(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x2a0(r30)
    lfs     f2, 0x2a4(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x2a4(r30)
    lfs     f3, 0x428(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x428(r30)
    lfs     f2, 0x42c(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x42c(r30)
    lfs     f2, 0x430(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x430(r30)
    lfs     f3, 0x434(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x434(r30)
    lfs     f2, 0x438(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x438(r30)
    lfs     f2, 0x43c(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x43c(r30)
    lfs     f3, 0x2a8(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x2a8(r30)
    lfs     f2, 0x2ac(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x2ac(r30)
    lfs     f2, 0x2b0(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x2b0(r30)
    lfs     f2, 0x2bc(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x2bc(r30)
    lfs     f3, 0x1cc(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x1cc(r30)
    lfs     f2, 0x1dc(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x1dc(r30)
    lfs     f2, 0x1ec(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x1ec(r30)
    lfs     f3, 0x1fc(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x1fc(r30)
    lfs     f2, 0x20c(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x20c(r30)
    lfs     f2, 0x21c(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x21c(r30)
    lfs     f3, 0x22c(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x22c(r30)
    lfs     f2, 0x23c(r30)
    fadds   f2, f2, f0
    stfs    f2, 0x23c(r30)
    lfs     f2, 0x24c(r30)
    fadds   f2, f2, f1
    stfs    f2, 0x24c(r30)
    lfs     f3, 0x324(r30)
    lfs     f2, 0x5c(sp)
    fadds   f2, f3, f2
    stfs    f2, 0x324(r30)
    lfs     f2, 0x334(r30)
    fadds   f0, f2, f0
    stfs    f0, 0x334(r30)
    lfs     f0, 0x344(r30)
    fadds   f0, f0, f1
    stfs    f0, 0x344(r30)
    lwz     r3, 0x2c0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80255cfc
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80255cac
    lwz     r3, 0x2c0(r30)
    addi    r4, sp, 0x20
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80255cc8

branch_0x80255cac:
    lwz     r3, 0x2c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x20
    bl      PSMTXCopy
branch_0x80255cc8:
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    bl      PSMTXInverse
    lwz     r6, 0x2f4(r30)
    addi    r3, sp, 0x20
    lwz     r0, 0x2f8(r30)
    addi    r4, r30, 0x10
    addi    r5, r30, 0x2f4
    stw     r6, 0x300(r30)
    stw     r0, 0x304(r30)
    lwz     r0, 0x2fc(r30)
    stw     r0, 0x308(r30)
    bl      PSMTXMultVec
branch_0x80255cfc:
    lwz     r0, 0x74(sp)
    li      r3, 0x1
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl isForceSlip__6TMarioFv
isForceSlip__6TMarioFv: # 0x80255d18
    lwz     r4, 0xe0(r3)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x80255d40
    cmplwi  r0, 0x4001
    beq-    branch_0x80255d40
    cmplwi  r0, 0x8001
    beq-    branch_0x80255d40
    cmplwi  r0, 0xc001
    bne-    branch_0x80255d48
branch_0x80255d40:
    li      r0, 0x1
    b       branch_0x80255d4c

branch_0x80255d48:
    li      r0, 0x0
branch_0x80255d4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255d5c
    li      r3, 0x1
    blr

branch_0x80255d5c:
    lwz     r0, 0x350(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80255da0
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80255d7c
    li      r0, 0x1
    b       branch_0x80255d80

branch_0x80255d7c:
    li      r0, 0x0
branch_0x80255d80:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255da0
    lfs     f1, 0x38(r4)
    lfs     f0, 0x26ec(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255da0
    li      r3, 0x1
    blr

branch_0x80255da0:
    lfs     f1, 0x38(r4)
    lfs     f0, 0x8d4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80255db8
    li      r3, 0x1
    blr

branch_0x80255db8:
    li      r3, 0x0
    blr


.globl getRidingMtx__6TMarioFPA4_f
getRidingMtx__6TMarioFPA4_f: # 0x80255dc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x2c0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80255e08
    lwz     r3, 0x2c0(r30)
    mr      r4, r31
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    b       branch_0x80255e24

branch_0x80255e08:
    lwz     r3, 0x2c0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    mr      r4, r31
    bl      PSMTXCopy
branch_0x80255e24:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isWallInFront__6TMarioCFv
isWallInFront__6TMarioCFv: # 0x80255e3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0xd8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80255e8c
    mr      r3, r31
    bl      getWallAngle__6TMarioCFv
    lha     r4, 0x96(r31)
    extsh   r0, r3
    subf    r0, r4, r0
    extsh   r0, r0
    cmpwi   r0, -0x71c7
    blt-    branch_0x80255e84
    cmpwi   r0, 0x71c7
    ble-    branch_0x80255e8c
branch_0x80255e84:
    li      r3, 0x1
    b       branch_0x80255e90

branch_0x80255e8c:
    li      r3, 0x0
branch_0x80255e90:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isInvincible__6TMarioCFv
isInvincible__6TMarioCFv: # 0x80255ea4
    lha     r0, 0x14c(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80255eb8
    li      r3, 0x1
    blr

branch_0x80255eb8:
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80255ecc
    li      r0, 0x1
    b       branch_0x80255ed0

branch_0x80255ecc:
    li      r0, 0x0
branch_0x80255ed0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255ee0
    li      r3, 0x1
    blr

branch_0x80255ee0:
    lwz     r4, 0x7c(r3)
    cmplwi  r4, 0x89c
    bne-    branch_0x80255ef4
    li      r3, 0x1
    blr

branch_0x80255ef4:
    lwz     r3, -0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x80255f48
    cmplwi  r3, 0x4
    beq-    branch_0x80255f48
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x80255f24
    cmplwi  r3, 0x2
    beq-    branch_0x80255f24
    li      r0, 0x0
branch_0x80255f24:
    clrlwi. r0, r0, 24
    bne-    branch_0x80255f48
    rlwinm. r0, r4, 0, 19, 19
    beq-    branch_0x80255f3c
    li      r0, 0x1
    b       branch_0x80255f40

branch_0x80255f3c:
    li      r0, 0x0
branch_0x80255f40:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255f50
branch_0x80255f48:
    li      r3, 0x1
    blr

branch_0x80255f50:
    li      r3, 0x0
    blr


.globl isUnderWater__6TMarioCFv
isUnderWater__6TMarioCFv: # 0x80255f58
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80255f6c
    li      r0, 0x1
    b       branch_0x80255f70

branch_0x80255f6c:
    li      r0, 0x0
branch_0x80255f70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80255f98
    lfs     f1, 0xf0(r3)
    lfs     f0, 0x1244(r3)
    lfs     f2, 0x170(r3)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80255f98
    li      r3, 0x1
    blr

branch_0x80255f98:
    li      r3, 0x0
    blr


.globl canSquat__6TMarioCFv
canSquat__6TMarioCFv: # 0x80255fa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80255fc8
    li      r0, 0x1
    b       branch_0x80255fcc

branch_0x80255fc8:
    li      r0, 0x0
branch_0x80255fcc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80256014
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80256014
    bl      getCurrentNozzle__9TWaterGunCFv
    lbz     r0, 0x18(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x80256014
    lwz     r3, 0x3e4(r31)
    lbz     r0, 0x1c84(r3)
    cmpwi   r0, 0x5
    beq-    branch_0x80256014
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80256014
    li      r3, 0x1
    b       branch_0x80256018

branch_0x80256014:
    li      r3, 0x0
branch_0x80256018:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getJumpSlideControl__6TMarioCFv
getJumpSlideControl__6TMarioCFv: # 0x8025602c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x892
    bne-    branch_0x80256058
    lfs     f1, 0x1428(r30)
    b       branch_0x802560b0

branch_0x80256058:
    lwz     r3, 0x3f0(r30)
    li      r31, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x80256078
    bl      onYoshi__6TYoshiFv
    cmpwi   r3, 0x0
    beq-    branch_0x80256078
    li      r31, 0x1
branch_0x80256078:
    clrlwi. r0, r31, 24
    beq-    branch_0x802560ac
    lwz     r3, 0x3f0(r30)
    lbz     r0, 0xb8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80256098
    li      r0, 0x1
    b       branch_0x8025609c

branch_0x80256098:
    li      r0, 0x0
branch_0x8025609c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802560ac
    lfs     f1, 0x2294(r30)
    b       branch_0x802560b0

branch_0x802560ac:
    lfs     f1, 0xb7c(r30)
branch_0x802560b0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl getJumpAccelControl__6TMarioCFv
getJumpAccelControl__6TMarioCFv: # 0x802560c8
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x892
    bne-    branch_0x802560dc
    lfs     f1, 0x1414(r3)
    blr

branch_0x802560dc:
    lfs     f1, 0xb68(r3)
    blr


.globl __sinit_MarioMove_cpp
__sinit_MarioMove_cpp: # 0x802560e4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4788
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8025612c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8025612c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8025615c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8025615c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8025618c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8025618c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802561bc
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802561bc:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802561ec
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802561ec:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8025621c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8025621c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8025624c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8025624c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8025627c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8025627c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802562ac
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802562ac:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802562dc
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802562dc:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8025630c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8025630c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8025633c
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8025633c:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8025636c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8025636c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8025639c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8025639c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802563cc
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802563cc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
