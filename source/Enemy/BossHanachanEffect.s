
.globl emitCamShake___13TBossHanachanFv
emitCamShake___13TBossHanachanFv: # 0x800fd384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stmw    r25, 0x54(sp)
    mr      r30, r3
    lwz     r4, -0x6048(r13)
    lbz     r0, 0x64(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x800fd600
    lwz     r3, 0x8c(r30)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x800fd3c0
    b       branch_0x800fd3c4

branch_0x800fd3c0:
    lwz     r28, 0x1c(r3)
branch_0x800fd3c4:
    lwz     r3, 0x150(r30)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    mr      r31, r3
    bl      SMS_IsMarioTouchGround4cm__Fv
    mr      r27, r3
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    cmplw   r28, r3
    bne-    branch_0x800fd50c
    lfs     f4, 0x134(r30)
    lfs     f0, -0x5760(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x800fd428
    frsqrte f3, f4
    lfd     f2, -0x5758(rtoc)
    lfd     f0, -0x5750(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x40(sp)
    lfs     f4, 0x40(sp)
branch_0x800fd428:
    lwz     r3, 0x1bc(r30)
    fmr     f3, f4
    lfs     f2, 0x234(r3)
    fcmpo   cr0, f4, f2
    cror    2, 0, 2
    bne-    branch_0x800fd448
    lfs     f31, -0x5748(rtoc)
    b       branch_0x800fd48c

branch_0x800fd448:
    lfs     f1, 0x220(r3)
    fcmpo   cr0, f4, f1
    cror    2, 1, 2
    bne-    branch_0x800fd460
    lfs     f31, -0x5760(rtoc)
    b       branch_0x800fd48c

branch_0x800fd460:
    bl      CLBCalcRatio_f___Ffff
    lfs     f0, -0x5748(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800fd478
    fmr     f1, f0
    b       branch_0x800fd488

branch_0x800fd478:
    lfs     f0, -0x5760(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fd488
    fmr     f1, f0
branch_0x800fd488:
    fmr     f31, f1
branch_0x800fd48c:
    clrlwi  r27, r27, 24
    li      r25, 0x0
    li      r29, 0x0
branch_0x800fd498:
    subi    r3, rtoc, 0x5768
    lfsx    f1, r3, r29
    mr      r3, r31
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800fd4f8
    fmr     f1, f31
    lwz     r3, -0x7108(r13)
    li      r4, 0xb
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    cmplwi  r27, 0x0
    beq-    branch_0x800fd4f8
    li      r26, 0x0
    li      r28, 0x0
branch_0x800fd4d0:
    addi    r0, r28, 0x150
    lwz     r3, -0x60f0(r13)
    lwzx    r5, r30, r0
    li      r4, 0x8
    addi    r5, r5, 0x154
    bl      start__9RumbleMgrFiP3Vec
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    addi    r28, r28, 0x4
    blt+    branch_0x800fd4d0
branch_0x800fd4f8:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x800fd498
    b       branch_0x800fd600

branch_0x800fd50c:
    bl      theNerve__23TNerveBossHanachanSnortFv
    cmplw   r28, r3
    bne-    branch_0x800fd580
    lis     r3, 0x8038
    addi    r29, r3, 0x2e18
    clrlwi  r28, r27, 24
    li      r25, 0x0
    li      r30, 0x0
branch_0x800fd52c:
    add     r3, r29, r30
    lfs     f1, 0x0(r3)
    mr      r3, r31
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800fd56c
    lwz     r3, -0x7108(r13)
    li      r4, 0xa
    lfs     f1, -0x5748(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    cmplwi  r28, 0x0
    beq-    branch_0x800fd56c
    lwz     r3, -0x60f0(r13)
    li      r4, 0x8
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
branch_0x800fd56c:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x800fd52c
    b       branch_0x800fd600

branch_0x800fd580:
    bl      theNerve__23TNerveBossHanachanGetUpFv
    cmplw   r28, r3
    bne-    branch_0x800fd600
    lwz     r3, 0x150(r30)
    lwz     r0, 0xf4(r3)
    cmpwi   r0, 0xc
    beq-    branch_0x800fd5ac
    bge-    branch_0x800fd600
    cmpwi   r0, 0x9
    beq-    branch_0x800fd5ac
    b       branch_0x800fd600

branch_0x800fd5ac:
    mr      r3, r31
    lfs     f1, -0x5744(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800fd600
    lwz     r3, -0x7108(r13)
    li      r4, 0xc
    lfs     f1, -0x5748(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    clrlwi. r0, r27, 24
    beq-    branch_0x800fd5e8
    lwz     r3, -0x60f0(r13)
    li      r4, 0x8
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
branch_0x800fd5e8:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x800fd600
    li      r3, 0x1
    li      r4, 0x1e
    bl      stopTrackBGM__5MSBgmFUcUl
branch_0x800fd600:
    lmw     r25, 0x54(sp)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl emitOneTimeSandPillar___13TBossHanachanFP22TBossHanachanPartsBody
emitOneTimeSandPillar___13TBossHanachanFP22TBossHanachanPartsBody: # 0x800fd618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    addi    r3, r4, 0x0
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r4, 0x108(r4)
    lfs     f1, 0x14(r31)
    lfs     f2, 0x2c(r4)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
    bl      getSandActor___22TBossHanachanPartsBaseCFv
    cmplwi  r3, 0x0
    beq-    branch_0x800fd698
    lfs     f1, 0x1a0(r31)
    lfs     f0, 0x10(r3)
    lfs     f2, -0x5740(rtoc)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x1a0(r31)
    lfs     f1, 0x1a8(r31)
    lfs     f0, 0x18(r3)
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x1a8(r31)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x1a4(r31)
branch_0x800fd698:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x1a0
    li      r4, 0x7e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x19c(r31)
    li      r4, 0x25
    lfs     f0, 0x1a0(r31)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    stfs    f0, 0xc(r3)
    lfs     f0, 0x1a4(r31)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x2c(r3)
    lwz     r3, 0x19c(r31)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x19c(r31)
    li      r4, 0x2
    bl      setBtkFromIndex__6MActorFi
    lwz     r3, 0x19c(r31)
    li      r4, 0x2
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, -0x7108(r13)
    li      r4, 0x8
    lfs     f1, -0x5748(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, -0x6044(r13)
    li      r4, 0x2884
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800fd738
    addi    r4, r31, 0x1a0
    li      r3, 0x2884
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800fd738:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl emitParticle___13TBossHanachanFv
emitParticle___13TBossHanachanFv: # 0x800fd74c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stfd    f30, 0xb8(sp)
    stfd    f29, 0xb0(sp)
    stmw    r22, 0x88(sp)
    mr      r31, r3
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x800fd780
    b       branch_0x800fd784

branch_0x800fd780:
    lwz     r30, 0x1c(r3)
branch_0x800fd784:
    bl      theNerve__22TNerveBossHanachanDeadFv
    cmplw   r30, r3
    beq-    branch_0x800fdb40
    lwz     r3, -0x7100(r13)
    lfs     f29, 0x20(r3)
    bl      theNerve__23TNerveBossHanachanSnortFv
    cmplw   r30, r3
    beq-    branch_0x800fd814
    lwz     r7, 0x170(r31)
    lwz     r3, 0x100(r7)
    lha     r0, 0x68(r3)
    extsh.  r0, r0
    ble-    branch_0x800fd814
    lwz     r3, -0x6070(r13)
    li      r4, 0x169
    lwz     r5, 0x118(r7)
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r7, 0x170(r31)
    li      r4, 0x16b
    lwz     r3, -0x6070(r13)
    li      r6, 0x1
    lwz     r5, 0x114(r7)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r7, 0x170(r31)
    li      r4, 0x16a
    lwz     r3, -0x6070(r13)
    li      r6, 0x1
    lwz     r5, 0x118(r7)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r7, 0x170(r31)
    li      r4, 0x16c
    lwz     r3, -0x6070(r13)
    li      r6, 0x1
    lwz     r5, 0x114(r7)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800fd814:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r30, r3
    beq-    branch_0x800fd83c
    bl      theNerve__24TNerveBossHanachanDamageFv
    cmplw   r30, r3
    bne-    branch_0x800fd91c
    lfs     f1, 0x140(r31)
    lfs     f0, -0x573c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800fd91c
branch_0x800fd83c:
    li      r22, 0x0
    li      r25, 0x0
    li      r26, 0x0
branch_0x800fd848:
    lwz     r3, 0x178(r31)
    addi    r0, r26, 0xc
    lwz     r3, 0x4(r3)
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x78(sp)
    lfs     f0, 0x74(sp)
    fcmpo   cr0, f0, f29
    ble-    branch_0x800fd898
    addi    r0, r25, 0x150
    lwz     r3, -0x6070(r13)
    lwzx    r7, r31, r0
    li      r4, 0x16e
    li      r6, 0x1
    addi    r5, r7, 0x154
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800fd898:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x8
    addi    r25, r25, 0x4
    addi    r26, r26, 0x2c
    blt+    branch_0x800fd848
    li      r22, 0x0
    li      r25, 0x0
    li      r26, 0x0
branch_0x800fd8b8:
    lwz     r3, 0x178(r31)
    addi    r0, r26, 0xc
    lwz     r3, 0x4(r3)
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x78(sp)
    lfs     f0, 0x74(sp)
    fcmpo   cr0, f0, f29
    ble-    branch_0x800fd908
    addi    r0, r25, 0x150
    lwz     r3, -0x6070(r13)
    lwzx    r7, r31, r0
    li      r4, 0x16d
    li      r6, 0x1
    addi    r5, r7, 0x154
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800fd908:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x8
    addi    r25, r25, 0x4
    addi    r26, r26, 0x2c
    blt+    branch_0x800fd8b8
branch_0x800fd91c:
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    cmplw   r30, r3
    bne-    branch_0x800fda7c
    lfd     f30, -0x5730(rtoc)
    li      r29, 0x0
    lfs     f31, -0x5738(rtoc)
    li      r26, 0x0
    lis     r24, 0x4330
branch_0x800fd93c:
    add     r30, r31, r26
    lwz     r3, 0x150(r30)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    addi    r28, r3, 0x0
    li      r27, 0x0
    li      r25, 0x0
branch_0x800fd95c:
    subi    r3, rtoc, 0x5768
    lfsx    f1, r3, r25
    mr      r3, r28
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800fda58
    lwz     r4, 0x150(r30)
    addi    r0, r25, 0x118
    lwz     r3, 0x1c0(r31)
    lwzx    r4, r4, r0
    addi    r22, r3, 0x248
    lwz     r23, 0x6c(r4)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x0(r22)
    stw     r0, 0x84(sp)
    stw     r24, 0x80(sp)
    lfd     f1, 0x80(sp)
    fsubs   f1, f1, f30
    fmuls   f1, f31, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fda58
    lfs     f2, 0x1c(r23)
    fcmpo   cr0, f2, f29
    bge-    branch_0x800fda14
    lwz     r4, 0x150(r30)
    addi    r0, r25, 0x14c
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x70
    lwzx    r7, r4, r0
    li      r4, 0x7c
    lfs     f1, 0x2c(r7)
    li      r6, 0x0
    lfs     f0, 0xc(r7)
    li      r7, 0x0
    stfs    f0, 0x70(sp)
    stfs    f29, 0x74(sp)
    stfs    f1, 0x78(sp)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x70
    li      r4, 0x7d
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800fda58

branch_0x800fda14:
    lfs     f1, 0x2c(r23)
    addi    r5, sp, 0x70
    lfs     f0, 0xc(r23)
    li      r4, 0x77
    lwz     r3, -0x6070(r13)
    stfs    f0, 0x70(sp)
    li      r6, 0x0
    li      r7, 0x0
    stfs    f2, 0x74(sp)
    stfs    f1, 0x78(sp)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x70
    li      r4, 0x76
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800fda58:
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r25, r25, 0x4
    blt+    branch_0x800fd95c
    addi    r29, r29, 0x1
    cmpwi   r29, 0x8
    addi    r26, r26, 0x4
    blt+    branch_0x800fd93c
    b       branch_0x800fdb40

branch_0x800fda7c:
    bl      theNerve__23TNerveBossHanachanSnortFv
    cmplw   r30, r3
    bne-    branch_0x800fdb1c
    lwz     r3, 0x170(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5734(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800fdb40
    lwz     r5, 0x170(r31)
    li      r4, 0x78
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x118(r5)
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x170(r31)
    li      r4, 0x7a
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x114(r5)
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x170(r31)
    li      r4, 0x79
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x118(r5)
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x170(r31)
    li      r4, 0x7b
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x114(r5)
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x800fdb40

branch_0x800fdb1c:
    bl      theNerve__22TNerveBossHanachanDownFv
    cmplw   r30, r3
    bne-    branch_0x800fdb40
    lwz     r7, 0x170(r31)
    li      r4, 0x16f
    lwz     r3, -0x6070(r13)
    li      r6, 0x1
    lwz     r5, 0x108(r7)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800fdb40:
    lmw     r22, 0x88(sp)
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lfd     f30, 0xb8(sp)
    mtlr    r0
    lfd     f29, 0xb0(sp)
    addi    sp, sp, 0xc8
    blr


.globl staticLoadParticle__13TBossHanachanFv
staticLoadParticle__13TBossHanachanFv: # 0x800fdb60
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    addi    r30, r3, 0x76
    lbz     r0, 0x76(r3)
    lis     r3, 0x8038
    addi    r31, r3, 0x2d38
    cmplwi  r0, 0x0
    bne-    branch_0x800fdbac
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0xec
    li      r5, 0x76
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdbac:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x77
    lbz     r0, 0x77(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdbdc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x100
    li      r5, 0x77
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdbdc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x78
    lbz     r0, 0x78(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdc0c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x114
    li      r5, 0x78
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdc0c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x79
    lbz     r0, 0x79(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdc3c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x12c
    li      r5, 0x79
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdc3c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x7a
    lbz     r0, 0x7a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdc6c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x144
    li      r5, 0x7a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdc6c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x7b
    lbz     r0, 0x7b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdc9c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x15c
    li      r5, 0x7b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdc9c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x7c
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdccc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x174
    li      r5, 0x7c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdccc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x7d
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdcfc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x188
    li      r5, 0x7d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdcfc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x7e
    lbz     r0, 0x7e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdd2c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x19c
    li      r5, 0x7e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdd2c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x169
    lbz     r0, 0x169(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdd5c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1b0
    li      r5, 0x169
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdd5c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x16a
    lbz     r0, 0x16a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fdd8c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1c8
    li      r5, 0x16a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fdd8c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x16b
    lbz     r0, 0x16b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fddbc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1e0
    li      r5, 0x16b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fddbc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x16c
    lbz     r0, 0x16c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fddec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x1f8
    li      r5, 0x16c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fddec:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x16d
    lbz     r0, 0x16d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fde1c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x210
    li      r5, 0x16d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fde1c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x16e
    lbz     r0, 0x16e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fde4c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x228
    li      r5, 0x16e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fde4c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x16f
    lbz     r0, 0x16f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fde7c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x23c
    li      r5, 0x16f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fde7c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl __sinit_BossHanachanEffect_cpp
__sinit_BossHanachanEffect_cpp: # 0x800fde94
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2958
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdedc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800fdedc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdf0c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800fdf0c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdf3c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800fdf3c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdf6c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800fdf6c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdf9c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800fdf9c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdfcc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800fdfcc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800fdffc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800fdffc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe02c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800fe02c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe05c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800fe05c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe08c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800fe08c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe0bc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800fe0bc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe0ec
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800fe0ec:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe11c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800fe11c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe14c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800fe14c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800fe17c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800fe17c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

