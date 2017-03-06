
.globl __dt__8TBaseNPCFv
__dt__8TBaseNPCFv: # 0x80206298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802062e8
    lis     r3, 0x803e
    subi    r3, r3, 0x7bb8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x802062e8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802062e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getPtrInitPollutionColor__8TBaseNPCCFv
getPtrInitPollutionColor__8TBaseNPCCFv: # 0x80206304
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r29, 0x1c(sp)
    lwz     r6, 0x4c(r3)
    addis   r4, r6, 0xfc00
    subi    r4, r4, 0x1
    cmplwi  r4, 0x15
    bgt-    branch_0x80206358
    lis     r3, 0x803e
    subi    r3, r3, 0x7aa4
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr       
    li      r5, 0x1
branch_0x80206358:
    clrlwi. r0, r5, 24
    beq-    branch_0x80206368
    addi    r31, r30, 0x174
    b       branch_0x8020641c

branch_0x80206368:
    addis   r0, r6, 0xfc00
    cmplwi  r0, 0x6
    beq-    branch_0x8020641c
    lis     r3, 0x400
    addi    r0, r3, 0xa
    cmpw    r6, r0
    li      r4, 0x0
    bge-    branch_0x8020639c
    addi    r0, r3, 0x6
    cmpw    r6, r0
    bge-    branch_0x80206398
    b       branch_0x8020639c

branch_0x80206398:
    li      r4, 0x1
branch_0x8020639c:
    clrlwi. r0, r4, 24
    li      r29, 0x1
    bne-    branch_0x802063bc
    mr      r3, r30
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802063bc
    li      r29, 0x0
branch_0x802063bc:
    clrlwi. r0, r29, 24
    bne-    branch_0x80206418
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x13
    cmpw    r4, r0
    li      r5, 0x0
    bge-    branch_0x802063f0
    addi    r0, r3, 0xf
    cmpw    r4, r0
    bge-    branch_0x802063ec
    b       branch_0x802063f0

branch_0x802063ec:
    li      r5, 0x1
branch_0x802063f0:
    clrlwi. r0, r5, 24
    li      r29, 0x1
    bne-    branch_0x80206410
    mr      r3, r30
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80206410
    li      r29, 0x0
branch_0x80206410:
    clrlwi. r0, r29, 24
    beq-    branch_0x8020641c
branch_0x80206418:
    addi    r31, r30, 0x174
branch_0x8020641c:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl setBalloonMessage__8TBaseNPCFUll
setBalloonMessage__8TBaseNPCFUll: # 0x8020643c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x188(r3)
    bl      setNextMessage__11TNpcBalloonFUll
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDummyConnectActor__8TBaseNPCFPCQ26JDrama6TActor
setDummyConnectActor__8TBaseNPCFPCQ26JDrama6TActor: # 0x80206460
    lwz     r5, 0x4c(r3)
    addis   r0, r5, 0xfc00
    cmplwi  r0, 0x1c
    bnelr-    

    stw     r4, 0x1d4(r3)
    lwz     r5, 0x1d4(r3)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r5)
    stw     r0, 0x18(r3)
    lwz     r5, 0x1d4(r3)
    lwz     r4, 0x30(r5)
    lwz     r0, 0x34(r5)
    stw     r4, 0x30(r3)
    stw     r0, 0x34(r3)
    lwz     r0, 0x38(r5)
    stw     r0, 0x38(r3)
    blr


.globl perform__8TBaseNPCFUlPQ26JDrama9TGraphics
perform__8TBaseNPCFUlPQ26JDrama9TGraphics: # 0x802064b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b0(sp)
    stfd    f31, 0x1a8(sp)
    stmw    r27, 0x194(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1c
    bne-    branch_0x80206570
    clrlwi. r0, r29, 31
    beq-    branch_0x80206c80
    lwz     r4, 0x1d4(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x80206528
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r28)
    stw     r0, 0x14(r28)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r28)
    lwz     r4, 0x1d4(r28)
    lwz     r3, 0x30(r4)
    lwz     r0, 0x34(r4)
    stw     r3, 0x30(r28)
    stw     r0, 0x34(r28)
    lwz     r0, 0x38(r4)
    stw     r0, 0x38(r28)
branch_0x80206528:
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 31
    bne-    branch_0x80206c80
    mr      r3, r28
    bl      updateForbidCount___8TBaseNPCFv
    mr      r3, r28
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80206c80
    mr      r3, r28
    bl      changeNerveProc___8TBaseNPCFv
    b       branch_0x80206c80

branch_0x80206570:
    cmplwi  r0, 0x1d
    bne-    branch_0x802065e0
    lwz     r3, 0xf0(r28)
    andi.   r0, r3, 0x201
    bne-    branch_0x80206c80
    clrlwi. r0, r29, 31
    beq-    branch_0x802065cc
    clrlwi. r0, r3, 31
    bne-    branch_0x802065cc
    mr      r3, r28
    bl      updateForbidCount___8TBaseNPCFv
    mr      r3, r28
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802065cc
    mr      r3, r28
    bl      changeNerveProc___8TBaseNPCFv
branch_0x802065cc:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      performOnlyDraw__10TLiveActorFUlPQ26JDrama9TGraphics
    b       branch_0x80206c80

branch_0x802065e0:
    lwz     r3, 0xf0(r28)
    li      r31, 0x1
    clrlwi. r0, r3, 31
    beq-    branch_0x802065f8
    li      r31, 0x0
    b       branch_0x80206764

branch_0x802065f8:
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x80206608
    li      r31, 0x0
    b       branch_0x80206764

branch_0x80206608:
    andi.   r0, r29, 0x204
    beq-    branch_0x80206620
    rlwinm. r0, r3, 0, 29, 30
    beq-    branch_0x80206620
    li      r31, 0x0
    b       branch_0x80206764

branch_0x80206620:
    clrlwi. r0, r29, 31
    beq-    branch_0x80206764
    lwz     r0, 0x68(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80206764
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x80206644
    li      r0, 0x1
    b       branch_0x80206648

branch_0x80206644:
    li      r0, 0x0
branch_0x80206648:
    cmpwi   r0, 0x0
    bne-    branch_0x80206764
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x80206764
    lwz     r3, 0x8c(r28)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80206764
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    beq-    branch_0x80206764
    mr      r3, r28
    bl      isNerveMaybeDontMovement__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80206764
    lwz     r0, 0xf0(r28)
    rlwinm. r0, r0, 0, 8, 8
    bne-    branch_0x80206764
    lwz     r4, 0x70(r28)
    lwz     r3, -0x70b0(r13)
    cmplwi  r4, 0x0
    lfs     f31, 0x9c(r3)
    beq-    branch_0x802066c4
    lwz     r3, 0x58(r4)
    lfs     f31, 0x0(r3)
branch_0x802066c4:
    lwz     r3, -0x7118(r13)
    addi    r4, r3, 0x148
    addi    r3, r3, 0x124
    lfs     f3, 0x8(r4)
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r4)
    lfs     f0, 0x0(r3)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    extsh   r0, r3
    lwz     r3, -0x7118(r13)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1d40(rtoc)
    stw     r0, 0x18c(sp)
    lis     r0, 0x4330
    lfs     f1, 0x124(r3)
    addi    r5, r3, 0x124
    stw     r0, 0x188(sp)
    lfd     f4, -0x1d30(rtoc)
    fadds   f2, f0, f31
    stfs    f1, 0x164(sp)
    addi    r3, sp, 0x164
    lfd     f3, 0x188(sp)
    lfs     f0, 0x4(r5)
    fsubs   f1, f3, f4
    lfs     f4, -0x1d44(rtoc)
    stfs    f0, 0x168(sp)
    addi    r4, r28, 0x10
    lfs     f3, -0x1d3c(rtoc)
    lfs     f0, 0x8(r5)
    fmuls   f1, f4, f1
    lfs     f4, -0x1d38(rtoc)
    stfs    f0, 0x16c(sp)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    bne-    branch_0x80206764
    mr      r3, r28
    bl      updateSquareToMario__11TSpineEnemyFv
    li      r31, 0x0
branch_0x80206764:
    clrlwi. r0, r31, 24
    bne-    branch_0x8020677c
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 15, 12
    stw     r0, 0xf0(r28)
    b       branch_0x80206c80

branch_0x8020677c:
    clrlwi. r0, r29, 31
    stw     r28, -0x6218(r13)
    beq-    branch_0x8020691c
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80206918
    mr      r3, r28
    bl      changeNerveProc___8TBaseNPCFv
    lwz     r0, 0x68(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80206834
    mr      r3, r28
    bl      isNerveWalk__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802067d4
    mr      r3, r28
    bl      walkAnmRateChange___8TBaseNPCFv
branch_0x802067d4:
    lwz     r3, 0xd0(r28)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80206834
    bl      SMSGetAnmFrameRate__Fv
    lwz     r4, 0x228(r28)
    lfs     f2, 0x144(r28)
    lfs     f0, 0x180(r4)
    lfs     f3, 0x16c(r4)
    fmuls   f0, f2, f0
    lfs     f2, 0x158(r4)
    fmuls   f3, f1, f3
    fmuls   f2, f1, f2
    fmuls   f1, f1, f0
    fcmpo   cr0, f1, f3
    ble-    branch_0x8020681c
    fmr     f1, f3
    b       branch_0x80206828

branch_0x8020681c:
    fcmpo   cr0, f1, f2
    bge-    branch_0x80206828
    fmr     f1, f2
branch_0x80206828:
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x80206834:
    lwz     r3, 0x18c(r28)
    addi    r4, r28, 0x10
    bl      execPosInbetween__13TNpcInbetweenFPQ29JGeometry8TVec3_f_
    lwz     r3, 0x1dc(r28)
    cmpwi   r3, 0x0
    ble-    branch_0x80206884
    subi    r0, r3, 0x1
    stw     r0, 0x1dc(r28)
    lwz     r0, 0x1dc(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80206884
    lwz     r0, 0x68(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80206884
    lwz     r0, 0x64(r28)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r28)
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0xf0(r28)
branch_0x80206884:
    lis     r3, 0x400
    lwz     r5, 0x4c(r28)
    addi    r0, r3, 0x14
    cmpw    r5, r0
    li      r4, 0x0
    beq-    branch_0x802068b0
    bge-    branch_0x802068b4
    addi    r0, r3, 0xf
    cmpw    r5, r0
    beq-    branch_0x802068b0
    b       branch_0x802068b4

branch_0x802068b0:
    li      r4, 0x1
branch_0x802068b4:
    clrlwi. r0, r4, 24
    bne-    branch_0x802068d0
    addis   r0, r5, 0xfc00
    cmplwi  r0, 0x7
    beq-    branch_0x802068d0
    mr      r3, r28
    bl      setVariableDamageRadius___8TBaseNPCFv
branch_0x802068d0:
    mr      r3, r28
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80206918
    lwz     r3, 0x228(r28)
    lis     r0, 0x4330
    lfd     f1, -0x1d28(rtoc)
    lbz     r3, 0x310(r3)
    lfs     f2, 0x178(r28)
    stw     r3, 0x18c(sp)
    stw     r0, 0x188(sp)
    lfd     f0, 0x188(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x180(sp)
    lwz     r0, 0x184(sp)
    stb     r0, 0x177(r28)
branch_0x80206918:
    clrrwi  r29, r29, 1
branch_0x8020691c:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80206b3c
    lwz     r0, 0x170(r28)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80206964
    lis     r31, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r31, 0x7fe9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80206964
    subi    r3, r31, 0x7fe9
    addi    r4, r28, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80206964:
    lis     r3, 0x100
    lwz     r4, 0xf0(r28)
    addi    r0, r3, 0x6
    and.    r0, r4, r0
    bne-    branch_0x80206980
    mr      r3, r28
    bl      emitParticle___8TBaseNPCFv
branch_0x80206980:
    lwz     r4, 0xf0(r28)
    li      r31, 0x0
    clrlwi. r0, r4, 29
    beq-    branch_0x80206998
    li      r3, 0x1
    b       branch_0x8020699c

branch_0x80206998:
    mr      r3, r31
branch_0x8020699c:
    rlwinm. r0, r4, 0, 7, 7
    beq-    branch_0x802069ac
    li      r27, 0x1
    b       branch_0x802069b0

branch_0x802069ac:
    li      r27, 0x0
branch_0x802069b0:
    clrlwi. r0, r3, 24
    beq-    branch_0x80206a08
    mr      r3, r28
    lwz     r12, 0x0(r28)
    li      r31, 0x1
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    bl      execMotionBlend___8TBaseNPCFv
    lwz     r3, 0x74(r28)
    bl      frameUpdate__6MActorFv
    lwz     r0, 0x168(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80206ae0
    mr      r3, r28
    bl      isPartsAnmNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80206ae0
    lwz     r3, 0x168(r28)
    bl      partsFrameUpdate__9TNpcPartsFv
    b       branch_0x80206ae0

branch_0x80206a08:
    lwz     r0, 0x68(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80206ae0
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x80206a24
    li      r0, 0x1
    b       branch_0x80206a28

branch_0x80206a24:
    li      r0, 0x0
branch_0x80206a28:
    cmpwi   r0, 0x0
    bne-    branch_0x80206ae0
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x80206ae0
    mr      r3, r28
    bl      isNerveMaybeDontCalcAnim0__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80206a6c
    mr      r3, r28
    bl      isNerveMaybeDontCalcAnim1__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80206ae0
branch_0x80206a6c:
    mr      r3, r28
    bl      getAnmOffDist___8TBaseNPCFv
    lwz     r3, -0x7118(r13)
    lfsu    f3, 0x124(r3)
    lfs     f4, 0x10(r28)
    lfs     f2, 0x14(r28)
    fsubs   f5, f4, f3
    lfs     f0, 0x4(r3)
    lfs     f3, 0x18(r28)
    fsubs   f4, f2, f0
    lfs     f0, 0x8(r3)
    fsubs   f3, f3, f0
    fmuls   f2, f5, f5
    fmuls   f0, f4, f4
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f31, f3, f0
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    ble-    branch_0x80206ae0
    clrlwi. r0, r27, 24
    bne-    branch_0x80206ae0
    lwz     r3, 0x8c(r28)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x2
    ble-    branch_0x80206ae0
    li      r31, 0x1
    addi    r3, r28, 0x0
    bl      execMotionBlend___8TBaseNPCFv
branch_0x80206ae0:
    clrlwi. r0, r27, 24
    beq-    branch_0x80206b30
    clrlwi. r0, r31, 24
    bne-    branch_0x80206b30
    lwz     r6, 0x160(r28)
    cmplwi  r6, 0x0
    beq-    branch_0x80206b30
    li      r5, 0x0
    addi    r3, r5, 0x0
    b       branch_0x80206b24

branch_0x80206b08:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r4)
branch_0x80206b24:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80206b08
branch_0x80206b30:
    clrlwi. r0, r31, 24
    beq-    branch_0x80206b3c
    rlwinm  r29, r29, 0, 31, 29
branch_0x80206b3c:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80206ba8
    lwz     r3, 0x160(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80206ba8
    bl      setUserArea__15TMultiMtxEffectFv
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80206ba8
    lwz     r0, 0x68(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80206ba8
    lwz     r6, 0x160(r28)
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x80206b9c

branch_0x80206b80:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r4)
branch_0x80206b9c:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80206b80
branch_0x80206ba8:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x80206c58
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 8, 6
    stw     r0, 0xf0(r28)
    lwz     r4, -0x7118(r13)
    lfsu    f2, 0x124(r4)
    lfs     f3, 0x10(r28)
    lfs     f1, 0x14(r28)
    fsubs   f2, f3, f2
    lfs     f0, 0x4(r4)
    lfs     f3, 0x18(r28)
    fsubs   f4, f1, f0
    lfs     f0, 0x8(r4)
    fsubs   f3, f3, f0
    lwz     r3, 0x228(r28)
    fmuls   f2, f2, f2
    fmuls   f0, f4, f4
    lfs     f1, 0x1d0(r3)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f31, f3, f0
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    ble-    branch_0x80206c50
    lis     r3, 0x400
    lwz     r4, 0x4c(r28)
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    li      r5, 0x0
    bge-    branch_0x80206c38
    addi    r0, r3, 0x1a
    cmpw    r4, r0
    bge-    branch_0x80206c34
    b       branch_0x80206c38

branch_0x80206c34:
    li      r5, 0x1
branch_0x80206c38:
    clrlwi. r0, r5, 24
    bne-    branch_0x80206c50
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    bl      lock__8J3DModelFv
    b       branch_0x80206c58

branch_0x80206c50:
    lwz     r3, 0x74(r28)
    bl      unlockDLIfNeed__6MActorFv
branch_0x80206c58:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x168(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80206c80
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      partsPerform__9TNpcPartsFUlPQ26JDrama9TGraphics
branch_0x80206c80:
    lmw     r27, 0x194(sp)
    lwz     r0, 0x1b4(sp)
    lfd     f31, 0x1a8(sp)
    addi    sp, sp, 0x1b0
    mtlr    r0
    blr


.globl getAnmOffDist___8TBaseNPCFv
getAnmOffDist___8TBaseNPCFv: # 0x80206c98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stw     r31, 0x54(sp)
    li      r31, 0x0
    stw     r30, 0x50(sp)
    mr      r30, r3
    lwz     r0, 0x170(r3)
    lwz     r4, 0xd0(r3)
    lwz     r5, -0x7118(r13)
    andi.   r0, r0, 0x204
    lwz     r3, -0x6220(r13)
    lfs     f31, 0x2c(r5)
    lwz     r4, 0x14(r4)
    lfs     f30, 0x1bc(r3)
    bne-    branch_0x80206d00
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0xd
    beq-    branch_0x80206d00
    cmpwi   r4, 0xa
    beq-    branch_0x80206d00
    cmpwi   r4, 0x17
    bne-    branch_0x80206d04
branch_0x80206d00:
    li      r31, 0x1
branch_0x80206d04:
    mr      r3, r30
    bl      isNerveMaybeDontCalcAnim0__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80206d40
    lwz     r3, 0x228(r30)
    clrlwi. r0, r31, 24
    lfs     f31, 0x194(r3)
    beq-    branch_0x80206d78
    fcmpo   cr0, f30, f31
    ble-    branch_0x80206d34
    fmr     f0, f30
    b       branch_0x80206d38

branch_0x80206d34:
    fmr     f0, f31
branch_0x80206d38:
    fmr     f31, f0
    b       branch_0x80206d78

branch_0x80206d40:
    mr      r3, r30
    bl      isNerveMaybeDontCalcAnim1__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80206d78
    lwz     r3, 0x228(r30)
    clrlwi. r0, r31, 24
    lfs     f31, 0x1a8(r3)
    beq-    branch_0x80206d78
    fcmpo   cr0, f30, f31
    ble-    branch_0x80206d70
    fmr     f0, f30
    b       branch_0x80206d74

branch_0x80206d70:
    fmr     f0, f31
branch_0x80206d74:
    fmr     f31, f0
branch_0x80206d78:
    lwz     r0, 0x6c(sp)
    fmr     f1, f31
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x68
    blr


.globl updateForbidCount___8TBaseNPCFv
updateForbidCount___8TBaseNPCFv: # 0x80206d9c
    lhz     r4, 0x1e0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80206db0
    subi    r0, r4, 0x1
    sth     r0, 0x1e0(r3)
branch_0x80206db0:
    lhz     r4, 0x1e2(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80206dc4
    subi    r0, r4, 0x1
    sth     r0, 0x1e2(r3)
branch_0x80206dc4:
    lhz     r4, 0x1e4(r3)
    cmplwi  r4, 0x0
    beqlr-    

    subi    r0, r4, 0x1
    sth     r0, 0x1e4(r3)
    blr


.globl calcRootMatrix__8TBaseNPCFv
calcRootMatrix__8TBaseNPCFv: # 0x80206ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1d
    bne-    branch_0x80206e10
    mr      r3, r31
    bl      calcRootMatrix__10TLiveActorFv
    b       branch_0x80206eec

branch_0x80206e10:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80206e28
    li      r0, 0x1
    b       branch_0x80206e2c

branch_0x80206e28:
    li      r0, 0x0
branch_0x80206e2c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80206e3c
    mr      r3, r31
    bl      setKeepAnm___8TBaseNPCFv
branch_0x80206e3c:
    lwz     r4, 0x74(r31)
    lwz     r3, 0x18c(r31)
    bl      execMotionBlend__13TNpcInbetweenFP6MActor
    lwz     r3, 0x18c(r31)
    lfs     f0, -0x1d48(rtoc)
    lfs     f1, 0x28(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80206e64
    li      r0, 0x1
    b       branch_0x80206e68

branch_0x80206e64:
    li      r0, 0x0
branch_0x80206e68:
    clrlwi. r0, r0, 24
    beq-    branch_0x80206e7c
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
branch_0x80206e7c:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80206ee4
    lwz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80206ee4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x150(r31)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x150(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x154(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x80206eec

branch_0x80206ee4:
    mr      r3, r31
    bl      calcRootMatrix__10TLiveActorFv
branch_0x80206eec:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl execMotionBlend___8TBaseNPCFv
execMotionBlend___8TBaseNPCFv: # 0x80206f04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x18c(r3)
    lwz     r0, 0x24(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80206f30
    li      r0, 0x1
    b       branch_0x80206f34

branch_0x80206f30:
    li      r0, 0x0
branch_0x80206f34:
    clrlwi. r0, r0, 24
    bne-    branch_0x80206f44
    mr      r3, r31
    bl      setKeepAnm___8TBaseNPCFv
branch_0x80206f44:
    lwz     r4, 0x74(r31)
    lwz     r3, 0x18c(r31)
    bl      execMotionBlend__13TNpcInbetweenFP6MActor
    lwz     r3, 0x18c(r31)
    lfs     f0, -0x1d48(rtoc)
    lfs     f1, 0x28(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80206f6c
    li      r0, 0x1
    b       branch_0x80206f70

branch_0x80206f6c:
    li      r0, 0x0
branch_0x80206f70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80206f84
    lwz     r3, 0x190(r31)
    li      r0, -0x1
    stw     r0, 0x0(r3)
branch_0x80206f84:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl moveObject__8TBaseNPCFv
moveObject__8TBaseNPCFv: # 0x80206f98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x802073d0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x158(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80206ff0
    lwz     r0, 0x6c(r3)
    cmplw   r0, r31
    beq-    branch_0x80206ff0
    mr      r3, r31
    bl      releaseTaken___8TBaseNPCFv
branch_0x80206ff0:
    lwz     r3, 0x180(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80207038
    lfs     f1, 0x1b0(r31)
    addi    r4, r31, 0x28
    bl      updateTrample__11TNpcTrampleFfPf
    clrlwi. r0, r3, 24
    beq-    branch_0x80207038
    mr      r3, r31
    bl      isNerveCanGoToMad__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80207038
    mr      r3, r31
    bl      isStateGoToMad___8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80207038
    mr      r3, r31
    bl      changeNerveToMad___8TBaseNPCFv
branch_0x80207038:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80207060
    lfs     f0, 0x18(r3)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x18(r31)
branch_0x80207060:
    lwz     r3, 0x184(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80207070
    bl      updateCoin__8TNpcCoinFv
branch_0x80207070:
    lwz     r3, 0x188(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8020715c
    lwz     r6, -0x6048(r13)
    li      r4, 0x1
    lwz     r30, 0x0(r3)
    mr      r5, r4
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x802070a4
    cmplwi  r0, 0x2
    beq-    branch_0x802070a4
    li      r5, 0x0
branch_0x802070a4:
    clrlwi. r0, r5, 24
    bne-    branch_0x802070d4
    lbz     r5, 0x124(r6)
    li      r0, 0x1
    cmplwi  r5, 0x3
    beq-    branch_0x802070c8
    cmplwi  r5, 0x4
    beq-    branch_0x802070c8
    li      r0, 0x0
branch_0x802070c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x802070d4
    li      r4, 0x0
branch_0x802070d4:
    clrlwi. r0, r4, 24
    bne-    branch_0x8020715c
    bl      updateBalloon__11TNpcBalloonFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8020715c
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80207140
    cmpwi   r30, 0x53
    beq-    branch_0x8020715c
    bge-    branch_0x8020710c
    cmpwi   r30, 0x52
    bge-    branch_0x80207118
    b       branch_0x8020715c

branch_0x8020710c:
    cmpwi   r30, 0x55
    bge-    branch_0x8020715c
    b       branch_0x8020712c

branch_0x80207118:
    lwz     r3, 0x188(r31)
    li      r4, 0x54
    li      r5, 0x1c20
    bl      setNextMessage__11TNpcBalloonFUll
    b       branch_0x8020715c

branch_0x8020712c:
    lwz     r3, 0x188(r31)
    li      r4, 0x52
    li      r5, 0x1c20
    bl      setNextMessage__11TNpcBalloonFUll
    b       branch_0x8020715c

branch_0x80207140:
    cmpwi   r30, 0x53
    beq-    branch_0x8020714c
    b       branch_0x8020715c

branch_0x8020714c:
    lwz     r3, 0x188(r31)
    li      r4, 0x53
    li      r5, 0x1c20
    bl      setNextMessage__11TNpcBalloonFUll
branch_0x8020715c:
    lhz     r3, 0x1e0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80207170
    subi    r0, r3, 0x1
    sth     r0, 0x1e0(r31)
branch_0x80207170:
    lhz     r3, 0x1e2(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80207184
    subi    r0, r3, 0x1
    sth     r0, 0x1e2(r31)
branch_0x80207184:
    lhz     r3, 0x1e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80207198
    subi    r0, r3, 0x1
    sth     r0, 0x1e4(r31)
branch_0x80207198:
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lfs     f0, -0x1d48(rtoc)
    lis     r3, 0x4000
    addi    r4, r3, 0xcd
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa0(r31)
    lwz     r3, 0xc4(r31)
    bl      SMS_GetGroundActor__FPC12TBGCheckDataUl
    mr.     r4, r3
    beq-    branch_0x802071ec
    lwz     r5, -0x6220(r13)
    mr      r3, r31
    lfs     f0, 0x130(r5)
    stfs    f0, 0xc0(r31)
    bl      behaveToSandBomb___8TBaseNPCFPC10TLiveActor
    b       branch_0x80207200

branch_0x802071ec:
    lwz     r3, -0x6220(r13)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0xc0(r31)
    lfs     f0, -0x1d48(rtoc)
    stfs    f0, 0x1c8(r31)
branch_0x80207200:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 9, 9
    bne-    branch_0x80207228
    mr      r3, r31
    bl      calcRideMomentum__10TLiveActorFv
branch_0x80207228:
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 9, 9
    beq-    branch_0x80207244
    rlwinm. r0, r3, 0, 7, 7
    bne-    branch_0x80207244
    mr      r3, r31
    bl      emitSinkEffect___8TBaseNPCFv
branch_0x80207244:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80207258
    b       branch_0x8020725c

branch_0x80207258:
    lwz     r30, 0x1c(r3)
branch_0x8020725c:
    bl      theNerve__30TNerveNPCSetPosAfterSinkBottomFv
    cmplw   r30, r3
    beq-    branch_0x802073d0
    mr      r3, r31
    bl      execNpcObjCollision___8TBaseNPCFv
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80207290
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
branch_0x80207290:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8020731c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lwz     r0, 0x150(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802073c8
    lwz     r3, 0x68(r31)
    lfs     f0, -0x1d20(rtoc)
    lfs     f1, 0x34(r3)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lha     r4, -0x621c(r13)
    lis     r0, 0x4330
    lfd     f1, -0x1d30(rtoc)
    subf    r3, r4, r3
    lfs     f2, -0x1d44(rtoc)
    extsh   r3, r3
    xoris   r3, r3, 0x8000
    stw     r3, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x34(r31)
    b       branch_0x802073c8

branch_0x8020731c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80207368
    mr      r3, r31
    bl      isNerveWalk__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80207368
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x80207368
    lfs     f1, 0x98(r31)
    lfs     f0, -0x1d1c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80207368
    stfs    f0, 0x98(r31)
branch_0x80207368:
    lfs     f1, 0x10(r31)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0xa0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0xa4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0xa8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r31)
branch_0x802073c8:
    mr      r3, r31
    bl      calcRidePos__10TLiveActorFv
branch_0x802073d0:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl receiveMessage__8TBaseNPCFP9THitActorUl
receiveMessage__8TBaseNPCFP9THitActorUl: # 0x802073e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x400
    stw     r28, 0x40(sp)
    addi    r0, r3, 0x1c
    lwz     r6, 0x4c(r29)
    cmpw    r6, r0
    beq-    branch_0x802075e0
    cmplwi  r31, 0x4
    bne-    branch_0x8020745c
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x8020745c
    lwz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8020745c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      behaveToBeTaken___8TBaseNPCFP9THitActor
    li      r4, 0x1
    b       branch_0x802075e0

branch_0x8020745c:
    cmplwi  r31, 0x0
    bne-    branch_0x80207474
    mr      r3, r29
    bl      behaveToBeTrampled___8TBaseNPCFv
    li      r4, 0x1
    b       branch_0x802075e0

branch_0x80207474:
    cmplwi  r31, 0xf
    bne-    branch_0x802074cc
    addis   r4, r6, 0xfc00
    subi    r4, r4, 0x7
    cmplwi  r4, 0x16
    li      r5, 0x1
    bgt-    branch_0x802074ac
    lis     r3, 0x803e
    subi    r3, r3, 0x7a24
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr       
    li      r5, 0x0
branch_0x802074ac:
    clrlwi. r0, r5, 24
    beq-    branch_0x802074c4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      behaveToHitObject___8TBaseNPCFP9THitActor20EnumHitNpcObjectKind
branch_0x802074c4:
    li      r4, 0x1
    b       branch_0x802075e0

branch_0x802074cc:
    cmplwi  r31, 0x10
    beq-    branch_0x802074ec
    cmplwi  r31, 0xe
    bne-    branch_0x802075e0
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x802075e0
branch_0x802074ec:
    lhz     r0, 0x1e4(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8020756c
    lfs     f0, -0x1d18(rtoc)
    addi    r6, sp, 0x30
    addi    r4, r30, 0x10
    stfs    f0, 0x30(sp)
    li      r3, 0xa
    li      r5, 0x0
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x1d18(rtoc)
    addi    r6, sp, 0x24
    addi    r4, r30, 0x10
    stfs    f0, 0x24(sp)
    li      r3, 0xb
    li      r5, 0x0
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x1d18(rtoc)
    addi    r6, sp, 0x18
    addi    r4, r30, 0x10
    stfs    f0, 0x18(sp)
    li      r3, 0xc
    li      r5, 0x0
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    li      r0, 0x10
    sth     r0, 0x1e4(r29)
branch_0x8020756c:
    li      r28, 0x0
    addi    r3, r29, 0x0
    bl      isMadNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80207588
    li      r28, 0x1
    b       branch_0x802075b8

branch_0x80207588:
    lwz     r3, 0x4c(r29)
    addis   r4, r3, 0xfc00
    subi    r4, r4, 0xe
    cmplwi  r4, 0x9
    bgt-    branch_0x802075b8
    lis     r3, 0x803e
    subi    r3, r3, 0x7a4c
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr       
    li      r28, 0x1
branch_0x802075b8:
    clrlwi. r0, r28, 24
    beq-    branch_0x802075dc
    cmplwi  r31, 0x10
    li      r5, 0x2
    bne-    branch_0x802075d0
    li      r5, 0x1
branch_0x802075d0:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      behaveToHitObject___8TBaseNPCFP9THitActor20EnumHitNpcObjectKind
branch_0x802075dc:
    li      r4, 0x1
branch_0x802075e0:
    lwz     r0, 0x54(sp)
    clrlwi  r3, r4, 24
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl getFocalPoint__8TBaseNPCCFv
getFocalPoint__8TBaseNPCCFv: # 0x80207604
    lwz     r6, 0x228(r4)
    lfs     f3, 0x1b0(r4)
    lfs     f2, 0x18(r6)
    lfs     f0, 0x40(r6)
    lfs     f1, 0x14(r4)
    fsubs   f2, f2, f0
    lfs     f4, 0x18(r4)
    lfs     f0, 0x10(r4)
    fmadds  f1, f3, f2, f1
    stfs    f0, 0x0(r3)
    stfs    f1, 0x4(r3)
    stfs    f4, 0x8(r3)
    blr


.globl getCursorPos__8TBaseNPCCFv
getCursorPos__8TBaseNPCCFv: # 0x80207638
    lwz     r5, 0x228(r4)
    lfs     f3, 0x1b0(r4)
    lfs     f2, 0x18(r5)
    lfs     f0, 0x14(r4)
    lfs     f1, 0x2c(r5)
    fmadds  f2, f3, f2, f0
    lfs     f3, 0x18(r4)
    lfs     f0, 0x10(r4)
    fadds   f1, f2, f1
    stfs    f0, 0x0(r3)
    stfs    f1, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl isInMadSearchRange__8TBaseNPCCFv
isInMadSearchRange__8TBaseNPCCFv: # 0x8020766c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    lwz     r4, -0x60b4(r13)
    lwz     r7, 0x228(r3)
    lfs     f2, 0x4(r4)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x270(r7)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x802076c0
    lfs     f3, 0x298(r7)
    lfs     f2, 0x284(r7)
    lfs     f1, 0x25c(r7)
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x802076c0
    li      r31, 0x1
branch_0x802076c0:
    lwz     r0, 0x44(sp)
    mr      r3, r31
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl isInBodyTurnSearchRange__8TBaseNPCCFv
isInBodyTurnSearchRange__8TBaseNPCCFv: # 0x802076d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    lwz     r4, -0x60b4(r13)
    lwz     r7, 0x228(r3)
    lfs     f2, 0x4(r4)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x220(r7)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8020772c
    lfs     f3, 0x248(r7)
    lfs     f2, 0x234(r7)
    lfs     f1, 0x20c(r7)
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x8020772c
    li      r31, 0x1
branch_0x8020772c:
    lwz     r0, 0x44(sp)
    mr      r3, r31
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl isNeedNeckStraight__8TBaseNPCCFv
isNeedNeckStraight__8TBaseNPCCFv: # 0x80207744
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r30, r3
    li      r31, 0x0
    lwz     r4, 0x68(r3)
    lwz     r3, 0xd0(r3)
    cmplwi  r4, 0x0
    lwz     r29, 0x14(r3)
    beq-    branch_0x8020777c
    lwz     r0, -0x60b8(r13)
    cmplw   r4, r0
    beq-    branch_0x80207878
branch_0x8020777c:
    lfs     f1, -0x1d48(rtoc)
    lfs     f0, 0x178(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80207878
    lwz     r4, 0x4c(r30)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x12
    beq-    branch_0x80207878
    cmplwi  r0, 0x19
    bne-    branch_0x802077ac
    cmpwi   r29, 0x5
    beq-    branch_0x80207878
branch_0x802077ac:
    lis     r3, 0x400
    addi    r0, r3, 0xe
    cmpw    r4, r0
    li      r0, 0x0
    beq-    branch_0x802077c4
    b       branch_0x802077c8

branch_0x802077c4:
    li      r0, 0x1
branch_0x802077c8:
    clrlwi. r0, r0, 24
    li      r28, 0x1
    addi    r27, r28, 0x0
    bne-    branch_0x802077ec
    mr      r3, r30
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802077ec
    li      r27, 0x0
branch_0x802077ec:
    clrlwi. r0, r27, 24
    bne-    branch_0x80207828
    li      r27, 0x1
    addi    r3, r30, 0x0
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020781c
    mr      r3, r30
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020781c
    li      r27, 0x0
branch_0x8020781c:
    clrlwi. r0, r27, 24
    bne-    branch_0x80207828
    li      r28, 0x0
branch_0x80207828:
    clrlwi. r0, r28, 24
    beq-    branch_0x80207838
    cmpwi   r29, 0xc
    beq-    branch_0x80207878
branch_0x80207838:
    lbz     r0, 0x1d8(r30)
    li      r5, 0x1
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80207854
    cmpwi   r29, 0x5
    beq-    branch_0x80207854
    li      r5, 0x0
branch_0x80207854:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x18
    subf    r0, r4, r0
    cntlzw  r0, r0
    extrwi  r3, r0, 8, 19
    clrlwi  r0, r5, 24
    and.    r0, r3, r0
    beq-    branch_0x8020787c
branch_0x80207878:
    li      r31, 0x1
branch_0x8020787c:
    mr      r3, r31
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl isPartsAnmNpc__8TBaseNPCCFv
isPartsAnmNpc__8TBaseNPCCFv: # 0x80207894
    lis     r4, 0x400
    lwz     r6, 0x4c(r3)
    addi    r0, r4, 0x14
    cmpw    r6, r0
    li      r3, 0x0
    li      r5, 0x0
    beq-    branch_0x802078c4
    bge-    branch_0x802078c8
    addi    r0, r4, 0xf
    cmpw    r6, r0
    beq-    branch_0x802078c4
    b       branch_0x802078c8

branch_0x802078c4:
    li      r5, 0x1
branch_0x802078c8:
    clrlwi. r0, r5, 24
    beq-    branch_0x802078d8
    li      r3, 0x1
    blr

branch_0x802078d8:
    lis     r4, 0x400
    addi    r0, r4, 0x15
    cmpw    r6, r0
    beq-    branch_0x80207908
    bge-    branch_0x802078fc
    addi    r0, r4, 0x10
    cmpw    r6, r0
    beq-    branch_0x80207908
    blr

branch_0x802078fc:
    addi    r0, r4, 0x18
    cmpw    r6, r0
    bnelr-    

branch_0x80207908:
    li      r3, 0x1
    blr


.globl isBehaveToWaterNpc__8TBaseNPCCFv
isBehaveToWaterNpc__8TBaseNPCCFv: # 0x80207910
    lwz     r4, 0x4c(r3)
    li      r3, 0x1
    addis   r5, r4, 0xfc00
    subi    r5, r5, 0x7
    cmplwi  r5, 0x16
    bgtlr-    

    lis     r4, 0x803e
    subi    r4, r4, 0x79c8
    slwi    r5, r5, 2
    lwzx    r0, r4, r5
    mtctr   r0
    bctr       
    li      r3, 0x0
    blr


.globl isMadNpc__8TBaseNPCCFv
isMadNpc__8TBaseNPCCFv: # 0x80207948
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x400
    lwz     r4, 0x4c(r29)
    addi    r0, r3, 0x6
    cmpw    r4, r0
    bge-    branch_0x80207994
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x80207990
    b       branch_0x80207994

branch_0x80207990:
    li      r5, 0x1
branch_0x80207994:
    clrlwi. r0, r5, 24
    li      r31, 0x1
    bne-    branch_0x802079b4
    mr      r3, r29
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802079b4
    li      r31, 0x0
branch_0x802079b4:
    clrlwi. r0, r31, 24
    beq-    branch_0x802079c4
    li      r30, 0x1
    b       branch_0x802079fc

branch_0x802079c4:
    lis     r3, 0x400
    lwz     r4, 0x4c(r29)
    addi    r0, r3, 0xd
    cmpw    r4, r0
    beq-    branch_0x802079f8
    bge-    branch_0x802079fc
    addi    r0, r3, 0x8
    cmpw    r4, r0
    bge-    branch_0x802079fc
    addi    r0, r3, 0x6
    cmpw    r4, r0
    bge-    branch_0x802079f8
    b       branch_0x802079fc

branch_0x802079f8:
    li      r30, 0x1
branch_0x802079fc:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl isBeTrampledNpc__8TBaseNPCCFv
isBeTrampledNpc__8TBaseNPCCFv: # 0x80207a1c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x400
    stw     r29, 0x1c(sp)
    addi    r0, r3, 0x14
    stw     r28, 0x18(sp)
    lwz     r4, 0x4c(r30)
    cmpw    r4, r0
    beq-    branch_0x80207a6c
    bge-    branch_0x80207a70
    addi    r0, r3, 0xf
    cmpw    r4, r0
    beq-    branch_0x80207a6c
    b       branch_0x80207a70

branch_0x80207a6c:
    li      r5, 0x1
branch_0x80207a70:
    clrlwi. r0, r5, 24
    bne-    branch_0x80207ba0
    li      r29, 0x1
    addi    r28, r29, 0x0
    addi    r3, r30, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207aa4
    mr      r3, r30
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207aa4
    li      r28, 0x0
branch_0x80207aa4:
    clrlwi. r0, r28, 24
    bne-    branch_0x80207ae0
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isSpecialMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207ad4
    mr      r3, r30
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207ad4
    li      r28, 0x0
branch_0x80207ad4:
    clrlwi. r0, r28, 24
    bne-    branch_0x80207ae0
    li      r29, 0x0
branch_0x80207ae0:
    clrlwi. r0, r29, 24
    bne-    branch_0x80207b70
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0xe
    cmpw    r4, r0
    li      r0, 0x0
    beq-    branch_0x80207b04
    b       branch_0x80207b08

branch_0x80207b04:
    li      r0, 0x1
branch_0x80207b08:
    clrlwi. r0, r0, 24
    li      r28, 0x1
    addi    r29, r28, 0x0
    bne-    branch_0x80207b2c
    mr      r3, r30
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207b2c
    li      r29, 0x0
branch_0x80207b2c:
    clrlwi. r0, r29, 24
    bne-    branch_0x80207b68
    li      r29, 0x1
    addi    r3, r30, 0x0
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207b5c
    mr      r3, r30
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207b5c
    li      r29, 0x0
branch_0x80207b5c:
    clrlwi. r0, r29, 24
    bne-    branch_0x80207b68
    li      r28, 0x0
branch_0x80207b68:
    clrlwi. r0, r28, 24
    beq-    branch_0x80207b78
branch_0x80207b70:
    li      r31, 0x1
    b       branch_0x80207ba0

branch_0x80207b78:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x18
    cmpw    r4, r0
    bge-    branch_0x80207ba0
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80207b9c
    b       branch_0x80207ba0

branch_0x80207b9c:
    li      r31, 0x1
branch_0x80207ba0:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl isPollutionNpc__8TBaseNPCCFv
isPollutionNpc__8TBaseNPCCFv: # 0x80207bc4
    lwz     r4, 0x4c(r3)
    li      r3, 0x0
    addis   r5, r4, 0xfc00
    subi    r5, r5, 0x1
    cmplwi  r5, 0x15
    bgtlr-    

    lis     r4, 0x803e
    subi    r4, r4, 0x796c
    slwi    r5, r5, 2
    lwzx    r0, r4, r5
    mtctr   r0
    bctr       
    li      r3, 0x1
    blr


.globl isSmallNpc__8TBaseNPCCFv
isSmallNpc__8TBaseNPCCFv: # 0x80207bfc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lfs     f1, -0x1d14(rtoc)
    lfs     f0, 0x24(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80207c50
    lfs     f0, 0x28(r30)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80207c50
    lfs     f0, 0x2c(r30)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80207c50
    li      r0, 0x1
branch_0x80207c50:
    clrlwi. r0, r0, 24
    bne-    branch_0x80207ce0
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0xe
    cmpw    r4, r0
    li      r0, 0x0
    beq-    branch_0x80207c74
    b       branch_0x80207c78

branch_0x80207c74:
    li      r0, 0x1
branch_0x80207c78:
    clrlwi. r0, r0, 24
    li      r29, 0x1
    addi    r28, r29, 0x0
    bne-    branch_0x80207c9c
    mr      r3, r30
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207c9c
    li      r28, 0x0
branch_0x80207c9c:
    clrlwi. r0, r28, 24
    bne-    branch_0x80207cd8
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207ccc
    mr      r3, r30
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80207ccc
    li      r28, 0x0
branch_0x80207ccc:
    clrlwi. r0, r28, 24
    bne-    branch_0x80207cd8
    li      r29, 0x0
branch_0x80207cd8:
    clrlwi. r0, r29, 24
    beq-    branch_0x80207ce8
branch_0x80207ce0:
    li      r31, 0x1
    b       branch_0x80207d10

branch_0x80207ce8:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x18
    cmpw    r4, r0
    bge-    branch_0x80207d10
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80207d0c
    b       branch_0x80207d10

branch_0x80207d0c:
    li      r31, 0x1
branch_0x80207d10:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl isChild__8TBaseNPCCFv
isChild__8TBaseNPCCFv: # 0x80207d34
    lfs     f0, 0x24(r3)
    li      r0, 0x0
    lfs     f1, -0x1d14(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80207d64
    lfs     f0, 0x28(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80207d64
    lfs     f0, 0x2c(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80207d64
    li      r0, 0x1
branch_0x80207d64:
    mr      r3, r0
    blr


.globl isSunflower__8TBaseNPCCFv
isSunflower__8TBaseNPCCFv: # 0x80207d6c
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x1c
    cmpw    r5, r0
    li      r3, 0x0
    bgelr-    

    addi    r0, r4, 0x1a
    cmpw    r5, r0
    bltlr-    

    li      r3, 0x1
    blr


.globl isJellyFishMare__8TBaseNPCCFv
isJellyFishMare__8TBaseNPCCFv: # 0x80207d98
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x14
    cmpw    r5, r0
    li      r3, 0x0
    beq-    branch_0x80207dc0
    bgelr-    

    addi    r0, r4, 0xf
    cmpw    r5, r0
    bnelr-    

branch_0x80207dc0:
    li      r3, 0x1
    blr


.globl isSpecialMareW__8TBaseNPCCFv
isSpecialMareW__8TBaseNPCCFv: # 0x80207dc8
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x16
    cmpw    r5, r0
    li      r3, 0x0
    bgelr-    

    addi    r0, r4, 0x14
    cmpw    r5, r0
    bltlr-    

    li      r3, 0x1
    blr


.globl isSpecialMareM__8TBaseNPCCFv
isSpecialMareM__8TBaseNPCCFv: # 0x80207df4
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x13
    cmpw    r5, r0
    li      r3, 0x0
    bgelr-    

    addi    r0, r4, 0xf
    cmpw    r5, r0
    bltlr-    

    li      r3, 0x1
    blr


.globl isNormalMareW__8TBaseNPCCFv
isNormalMareW__8TBaseNPCCFv: # 0x80207e20
    lis     r4, 0x400
    lwz     r3, 0x4c(r3)
    addi    r0, r4, 0x13
    cmpw    r3, r0
    li      r3, 0x0
    bnelr-    

    li      r3, 0x1
    blr


.globl isNormalMareM__8TBaseNPCCFv
isNormalMareM__8TBaseNPCCFv: # 0x80207e40
    lis     r4, 0x400
    lwz     r3, 0x4c(r3)
    addi    r0, r4, 0xe
    cmpw    r3, r0
    li      r3, 0x0
    bnelr-    

    li      r3, 0x1
    blr


.globl isSpecialMonteW__8TBaseNPCCFv
isSpecialMonteW__8TBaseNPCCFv: # 0x80207e60
    lis     r4, 0x400
    lwz     r3, 0x4c(r3)
    addi    r0, r4, 0xd
    cmpw    r3, r0
    li      r3, 0x0
    bnelr-    

    li      r3, 0x1
    blr


.globl isSpecialMonteM__8TBaseNPCCFv
isSpecialMonteM__8TBaseNPCCFv: # 0x80207e80
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0xa
    cmpw    r5, r0
    li      r3, 0x0
    bgelr-    

    addi    r0, r4, 0x6
    cmpw    r5, r0
    bltlr-    

    li      r3, 0x1
    blr


.globl isNormalMonteW__8TBaseNPCCFv
isNormalMonteW__8TBaseNPCCFv: # 0x80207eac
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0xd
    cmpw    r5, r0
    li      r3, 0x0
    bgelr-    

    addi    r0, r4, 0xa
    cmpw    r5, r0
    bltlr-    

    li      r3, 0x1
    blr


.globl isNormalMonteM__8TBaseNPCCFv
isNormalMonteM__8TBaseNPCCFv: # 0x80207ed8
    lis     r4, 0x400
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x6
    cmpw    r5, r0
    li      r3, 0x0
    bgelr-    

    addi    r0, r4, 0x1
    cmpw    r5, r0
    bltlr-    

    li      r3, 0x1
    blr


.globl loadAfter__8TBaseNPCFv
loadAfter__8TBaseNPCFv: # 0x80207f04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80207f6c
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80207f6c
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80207f6c
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80207f68
    li      r0, 0x0
    stw     r0, 0x0(r3)
    li      r0, -0x1
    stw     r0, 0x4(r3)
branch_0x80207f68:
    stw     r3, 0x188(r31)
branch_0x80207f6c:
    lwz     r3, -0x6048(r13)
    mr      r4, r31
    bl      entryNPC__12TMarDirectorFP8TBaseNPC
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl load__8TBaseNPCFR20JSUMemoryInputStream
load__8TBaseNPCFR20JSUMemoryInputStream: # 0x80207f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    lwz     r5, 0x10(r30)
    mr      r4, r30
    lwz     r0, 0x14(r30)
    addi    r3, sp, 0x10
    stw     r5, 0x194(r30)
    stw     r0, 0x198(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x19c(r30)
    lwz     r5, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r5, 0x1a0(r30)
    stw     r0, 0x1a4(r30)
    lwz     r0, 0x38(r30)
    stw     r0, 0x1a8(r30)
    lwz     r5, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r5, 0x1ac(r30)
    stw     r0, 0x1b0(r30)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1b4(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf0(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x10(sp)
    lis     r3, 0x400
    lwz     r4, 0x14(sp)
    addi    r0, r3, 0x1e
    stw     r5, 0x1b8(r30)
    stw     r4, 0x1bc(r30)
    lwz     r4, 0x18(sp)
    stw     r4, 0x1c0(r30)
    lwz     r4, 0x4c(r30)
    cmpw    r4, r0
    bge-    branch_0x80208044
    addi    r0, r3, 0x1c
    cmpw    r4, r0
    bge-    branch_0x80208050
branch_0x80208044:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      setIndividualDifference___8TBaseNPCFR20JSUMemoryInputStream
branch_0x80208050:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__8TBaseNPCFUlPCc
__ct__8TBaseNPCFUlPCc: # 0x80208068
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r4
    mr      r4, r5
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803e
    lwz     r5, 0x8(sp)
    subi    r3, r3, 0x7bb8
    stw     r3, 0x0(r5)
    addi    r3, r3, 0x24
    addis   r0, r29, 0xfc00
    stw     r3, 0x20(r5)
    li      r30, 0x0
    li      r31, -0x1
    stw     r30, 0x150(r5)
    li      r4, 0x78
    li      r3, 0xff
    stw     r30, 0x154(r5)
    cmplwi  r0, 0x1c
    stw     r30, 0x158(r5)
    stw     r30, 0x15c(r5)
    stw     r30, 0x160(r5)
    stw     r31, 0x164(r5)
    stw     r30, 0x168(r5)
    stw     r30, 0x16c(r5)
    stw     r30, 0x170(r5)
    lfs     f1, -0x1d48(rtoc)
    stfs    f1, 0x178(r5)
    stw     r30, 0x17c(r5)
    stw     r30, 0x180(r5)
    stw     r30, 0x184(r5)
    stw     r30, 0x188(r5)
    stw     r30, 0x18c(r5)
    stw     r30, 0x190(r5)
    stfs    f1, 0x1c4(r5)
    stfs    f1, 0x1c8(r5)
    stw     r30, 0x1cc(r5)
    stfs    f1, 0x1d0(r5)
    stw     r30, 0x1d4(r5)
    stb     r30, 0x1d8(r5)
    stb     r30, 0x1d9(r5)
    stb     r30, 0x1da(r5)
    stw     r30, 0x1dc(r5)
    sth     r4, 0x1e0(r5)
    sth     r30, 0x1e2(r5)
    sth     r30, 0x1e4(r5)
    stw     r30, 0x1e8(r5)
    stw     r30, 0x1ec(r5)
    stfs    f1, 0x1f0(r5)
    stfs    f1, 0x1f4(r5)
    stfs    f1, 0x1f8(r5)
    stw     r30, 0x1fc(r5)
    stw     r30, 0x200(r5)
    stw     r30, 0x204(r5)
    stw     r30, 0x208(r5)
    stfs    f1, 0x20c(r5)
    stfs    f1, 0x210(r5)
    stfs    f1, 0x214(r5)
    lfs     f0, -0x1d18(rtoc)
    stfs    f0, 0x218(r5)
    stfs    f1, 0x21c(r5)
    stfs    f1, 0x220(r5)
    stfs    f1, 0x224(r5)
    stw     r30, 0x22c(r5)
    stw     r30, 0x230(r5)
    stw     r30, -0x6218(r13)
    sth     r30, -0x621c(r13)
    stb     r3, 0x174(r5)
    stb     r3, 0x175(r5)
    stb     r3, 0x176(r5)
    stb     r30, 0x177(r5)
    stw     r29, 0x4c(r5)
    beq-    branch_0x8020834c
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802081bc
    stw     r31, 0x0(r3)
    stb     r30, 0x4(r3)
branch_0x802081bc:
    lwz     r6, 0x8(sp)
    lis     r4, 0x400
    li      r31, 0x0
    stw     r3, 0x190(r6)
    addi    r0, r4, 0x14
    addi    r5, r31, 0x0
    lwz     r3, 0x4c(r6)
    cmpw    r3, r0
    beq-    branch_0x802081f4
    bge-    branch_0x802081f8
    addi    r0, r4, 0xf
    cmpw    r3, r0
    beq-    branch_0x802081f4
    b       branch_0x802081f8

branch_0x802081f4:
    li      r5, 0x1
branch_0x802081f8:
    clrlwi. r0, r5, 24
    bne-    branch_0x80208314
    li      r30, 0x1
    addi    r29, r30, 0x0
    addi    r3, r6, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020822c
    lwz     r3, 0x8(sp)
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020822c
    li      r29, 0x0
branch_0x8020822c:
    clrlwi. r0, r29, 24
    bne-    branch_0x80208268
    li      r29, 0x1
    lwz     r3, 0x8(sp)
    bl      isSpecialMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020825c
    lwz     r3, 0x8(sp)
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020825c
    li      r29, 0x0
branch_0x8020825c:
    clrlwi. r0, r29, 24
    bne-    branch_0x80208268
    li      r30, 0x0
branch_0x80208268:
    clrlwi. r0, r30, 24
    bne-    branch_0x802082e0
    li      r29, 0x1
    lwz     r3, 0x8(sp)
    mr      r30, r29
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020829c
    lwz     r3, 0x8(sp)
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8020829c
    li      r30, 0x0
branch_0x8020829c:
    clrlwi. r0, r30, 24
    bne-    branch_0x802082d8
    li      r30, 0x1
    lwz     r3, 0x8(sp)
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802082cc
    lwz     r3, 0x8(sp)
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802082cc
    li      r30, 0x0
branch_0x802082cc:
    clrlwi. r0, r30, 24
    bne-    branch_0x802082d8
    li      r29, 0x0
branch_0x802082d8:
    clrlwi. r0, r29, 24
    beq-    branch_0x802082e8
branch_0x802082e0:
    li      r31, 0x1
    b       branch_0x80208314

branch_0x802082e8:
    lwz     r4, 0x8(sp)
    lis     r3, 0x400
    addi    r0, r3, 0x18
    lwz     r4, 0x4c(r4)
    cmpw    r4, r0
    bge-    branch_0x80208314
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80208310
    b       branch_0x80208314

branch_0x80208310:
    li      r31, 0x1
branch_0x80208314:
    clrlwi. r0, r31, 24
    beq-    branch_0x8020834c
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80208344
    lfs     f0, -0x1d48(rtoc)
    li      r0, 0x0
    stfs    f0, 0x0(r3)
    sth     r0, 0x4(r3)
    sth     r0, 0x6(r3)
    stfs    f0, -0x6158(r13)
branch_0x80208344:
    lwz     r4, 0x8(sp)
    stw     r3, 0x180(r4)
branch_0x8020834c:
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __sinit_NpcBase_cpp
__sinit_NpcBase_cpp: # 0x8020836c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5270
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802083b4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802083b4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802083e4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802083e4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80208414
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80208414:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80208444
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80208444:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80208474
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80208474:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802084a4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802084a4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802084d4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802084d4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80208504
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80208504:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80208534
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80208534:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80208564
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80208564:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80208594
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80208594:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802085c4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802085c4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802085f4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802085f4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80208624
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80208624:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80208654
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80208654:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__8TBaseNPCFv
_32___dt__8TBaseNPCFv: # 0x80208668
    subi    r3, r3, 0x20
    b       __dt__8TBaseNPCFv

