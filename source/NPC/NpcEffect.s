
.globl emitParticle___8TBaseNPCFv
emitParticle___8TBaseNPCFv: # 0x8021529c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r3
    stw     r30, 0xe0(sp)
    stw     r29, 0xdc(sp)
    lwz     r0, 0x208(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802153ec
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x802153ec
    lis     r3, unk_04000018@h
    lwz     r4, 0x4c(r31)
    addi    r0, r3, unk_04000018@l
    cmpw    r4, r0
    bge-    branch_0x80215310
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x802152f8
    b       branch_0x80215310

branch_0x802152f8:
    lfs     f1, -0x19f0(r2)
    addi    r3, sp, 0xa8
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80215afc
    b       branch_0x80215328

branch_0x80215310:
    lwz     r3, 0x1ac(r31)
    lwz     r0, 0x1b0(r31)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x1b4(r31)
    stw     r0, 0xb0(sp)
branch_0x80215328:
    lwz     r0, 0xa8(sp)
    mr      r5, r31
    lwz     r3, 0xac(sp)
    addi    r4, r31, 0x20c
    stw     r0, 0xcc(sp)
    lwz     r0, 0xb0(sp)
    addi    r6, sp, 0xcc
    stw     r3, 0xd0(sp)
    li      r3, 0x170
    stw     r0, 0xd4(sp)
    lwz     r7, 0x208(r31)
    lfs     f2, 0x2c(r7)
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    stfs    f0, 0x20c(r31)
    stfs    f1, 0x210(r31)
    stfs    f2, 0x214(r31)
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xcc(sp)
    mr      r5, r31
    lwz     r3, 0xd0(sp)
    addi    r4, r31, 0x20c
    stw     r0, 0xc0(sp)
    lwz     r0, 0xd4(sp)
    addi    r6, sp, 0xc0
    stw     r3, 0xc4(sp)
    li      r3, 0x1ed
    stw     r0, 0xc8(sp)
    lfs     f1, 0x218(r31)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    bl      SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    addi    r5, r31, 0x0
    addi    r4, r31, 0x20c
    addi    r6, sp, 0xc0
    li      r3, 0x135
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    addi    r5, r31, 0x0
    addi    r4, r31, 0x20c
    addi    r6, sp, 0xc0
    li      r3, 0x136
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x802153ec:
    lwz     r0, 0x1ec(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802154d8
    lwz     r4, 0x4c(r31)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x12
    bne-    branch_0x80215418
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x5
    beq-    branch_0x802154d8
branch_0x80215418:
    lis     r3, unk_04000018@h
    addi    r0, r3, unk_04000018@l
    cmpw    r4, r0
    bge-    branch_0x80215450
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80215438
    b       branch_0x80215450

branch_0x80215438:
    lfs     f1, -0x19f0(r2)
    addi    r3, sp, 0x9c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80215afc
    b       branch_0x80215468

branch_0x80215450:
    lwz     r3, 0x1ac(r31)
    lwz     r0, 0x1b0(r31)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x1b4(r31)
    stw     r0, 0xa4(sp)
branch_0x80215468:
    lwz     r0, 0x9c(sp)
    mr      r5, r31
    lwz     r3, 0xa0(sp)
    addi    r4, r31, 0x1f0
    stw     r0, 0xb4(sp)
    lwz     r0, 0xa4(sp)
    addi    r6, sp, 0xb4
    stw     r3, 0xb8(sp)
    li      r3, 0x18b
    lfs     f1, -0x19ec(r2)
    stw     r0, 0xbc(sp)
    lfs     f0, 0xb4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xb8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(sp)
    lfs     f0, 0xbc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lwz     r7, 0x1ec(r31)
    lfs     f2, 0x2c(r7)
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    stfs    f0, 0x1f0(r31)
    stfs    f1, 0x1f4(r31)
    stfs    f2, 0x1f8(r31)
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x802154d8:
    lwz     r4, 0x4c(r31)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x7
    beq-    branch_0x802154f8
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80215644
branch_0x802154f8:
    lis     r3, unk_04000018@h
    lfs     f31, -0x19e8(r2)
    addi    r0, r3, unk_04000018@l
    cmpw    r4, r0
    li      r30, 0x0
    bge-    branch_0x80215538
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80215520
    b       branch_0x80215538

branch_0x80215520:
    lfs     f1, -0x19f0(r2)
    addi    r3, sp, 0x84
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80215afc
    b       branch_0x80215550

branch_0x80215538:
    lwz     r3, 0x1ac(r31)
    lwz     r0, 0x1b0(r31)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x1b4(r31)
    stw     r0, 0x8c(sp)
branch_0x80215550:
    lwz     r0, 0x84(sp)
    lwz     r3, 0x88(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x7
    bne-    branch_0x802155a8
    lfs     f0, 0x78(sp)
    li      r30, 0x1
    lfs     f1, -0x19e4(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
    b       branch_0x80215600

branch_0x802155a8:
    lfs     f1, 0x14(r31)
    lfs     f0, -0x19e0(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80215600
    lfs     f1, -0x19e8(r2)
    lfs     f0, 0x94(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802155d8
    lfs     f0, 0x9c(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80215600
branch_0x802155d8:
    lwz     r3, R13Off_m0x626c(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      getWaveHeight__11TMapObjWaveCFff
    fmr     f31, f1
    lfs     f0, 0x14(r31)
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x80215600
    li      r30, 0x1
branch_0x80215600:
    clrlwi. r0, r30, 24
    beq-    branch_0x80215644
    lfs     f1, 0x18(r31)
    mr      r5, r31
    lfs     f0, 0x10(r31)
    addi    r4, r31, 0x21c
    addi    r6, sp, 0x78
    stfs    f0, 0x21c(r31)
    li      r3, 0x1f7
    stfs    f31, 0x220(r31)
    stfs    f1, 0x224(r31)
    bl      SMS_EasyEmitParticle_26E_SMS_EFFECT_LOOP_INDIRECT___F26E_SMS_EFFECT_LOOP_INDIRECTPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    addi    r5, r31, 0x0
    addi    r4, r31, 0x21c
    addi    r6, sp, 0x78
    li      r3, 0x171
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
branch_0x80215644:
    lwz     r3, 0xd0(r31)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x19
    beq-    branch_0x80215848
    bge-    branch_0x80215980
    cmpwi   r0, 0xf
    beq-    branch_0x80215664
    b       branch_0x80215980

branch_0x80215664:
    mr      r3, r31
    bl      isPolWaitCEffectEmitTime___8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80215734
    addi    r3, r31, 0x0
    li      r30, -0x1
    li      r29, 0x1
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802156a0
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802156a0
    li      r29, 0x0
branch_0x802156a0:
    clrlwi. r0, r29, 24
    beq-    branch_0x802156b0
    li      r30, 0x72
    b       branch_0x802156dc

branch_0x802156b0:
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802156c8
    li      r30, 0x74
    b       branch_0x802156dc

branch_0x802156c8:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x802156dc
    li      r30, 0x75
branch_0x802156dc:
    cmpwi   r30, -0x1
    beq-    branch_0x80215734
    lwz     r5, 0x1fc(r31)
    addi    r4, r30, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x80215734
    addi    r3, sp, 0x50
    addi    r4, r31, 0x0
    bl      getEffectScale___8TBaseNPCCFv
    addi    r3, r30, 0x154
    addi    r4, sp, 0x50
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
    addi    r3, r30, 0x174
    addi    r4, sp, 0x50
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x80215734:
    li      r29, 0x1
    addi    r3, r31, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8021575c
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8021575c
    li      r29, 0x0
branch_0x8021575c:
    clrlwi. r0, r29, 24
    beq-    branch_0x80215980
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lis     r4, sCheckFrameMonte_localstatic0_isPolWaitLEffectEmitTime___8TBaseNPCCFv@ha
    addi    r4, r4, sCheckFrameMonte_localstatic0_isPolWaitLEffectEmitTime___8TBaseNPCCFv@l
    bl      IsCheckPassFrame__FP12J3DFrameCtrlPCf
    clrlwi. r0, r3, 24
    beq-    branch_0x802157d4
    lwz     r5, 0x200(r31)
    li      r4, 0x73
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x802157d4
    addi    r3, sp, 0x44
    addi    r4, r31, 0x0
    bl      getEffectScale___8TBaseNPCCFv
    addi    r3, r30, 0x154
    addi    r4, sp, 0x44
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
    addi    r3, r30, 0x174
    addi    r4, sp, 0x44
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x802157d4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lis     r4, sCheckFrameMonte_localstatic0_isPolWaitREffectEmitTime___8TBaseNPCCFv@ha
    addi    r4, r4, sCheckFrameMonte_localstatic0_isPolWaitREffectEmitTime___8TBaseNPCCFv@l
    bl      IsCheckPassFrame__FP12J3DFrameCtrlPCf
    clrlwi. r0, r3, 24
    beq-    branch_0x80215980
    lwz     r5, 0x204(r31)
    li      r4, 0x73
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x80215980
    addi    r3, sp, 0x38
    addi    r4, r31, 0x0
    bl      getEffectScale___8TBaseNPCCFv
    addi    r3, r30, 0x154
    addi    r4, sp, 0x38
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
    addi    r3, r30, 0x174
    addi    r4, sp, 0x38
    bl      set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
    b       branch_0x80215980

branch_0x80215848:
    addi    r3, r31, 0x0
    li      r30, -0x1
    li      r29, 0x1
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215874
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215874
    li      r29, 0x0
branch_0x80215874:
    clrlwi. r0, r29, 24
    beq-    branch_0x80215884
    li      r30, 0x172
    b       branch_0x802158c8

branch_0x80215884:
    li      r29, 0x1
    addi    r3, r31, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802158ac
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802158ac
    li      r29, 0x0
branch_0x802158ac:
    clrlwi. r0, r29, 24
    bne-    branch_0x802158c4
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x802158c8
branch_0x802158c4:
    li      r30, 0x173
branch_0x802158c8:
    cmpwi   r30, -0x1
    beq-    branch_0x80215980
    lwz     r3, R13Off_m0x6070(r13)
    mr      r4, r30
    lwz     r5, 0x1fc(r31)
    addi    r7, r31, 0x0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr.     r30, r3
    beq-    branch_0x80215980
    lis     r3, unk_04000018@h
    lwz     r4, 0x4c(r31)
    addi    r0, r3, unk_04000018@l
    cmpw    r4, r0
    bge-    branch_0x8021592c
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80215914
    b       branch_0x8021592c

branch_0x80215914:
    lfs     f1, -0x19f0(r2)
    addi    r3, sp, 0x68
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80215afc
    b       branch_0x80215944

branch_0x8021592c:
    lwz     r3, 0x1ac(r31)
    lwz     r0, 0x1b0(r31)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x1b4(r31)
    stw     r0, 0x70(sp)
branch_0x80215944:
    lfs     f0, 0x68(sp)
    mr      r3, r30
    li      r4, 0x6
    stfs    f0, 0x154(r30)
    lfs     f0, 0x6c(sp)
    stfs    f0, 0x158(r30)
    lfs     f0, 0x70(sp)
    stfs    f0, 0x15c(r30)
    lfs     f0, 0x68(sp)
    stfs    f0, 0x174(r30)
    lfs     f0, 0x6c(sp)
    stfs    f0, 0x178(r30)
    lfs     f0, 0x70(sp)
    stfs    f0, 0x17c(r30)
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x80215980:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    mtlr    r0
    lwz     r30, 0xe0(sp)
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xf0
    blr


.globl set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0
set_f___Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f__802159a0: # 0x802159a0
    lfs     f0, 0x0(r4)
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    blr


.globl isPolWaitCEffectEmitTime___8TBaseNPCCFv
isPolWaitCEffectEmitTime___8TBaseNPCCFv: # 0x802159bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    li      r29, 0x1
    stw     r28, 0x18(sp)
    li      r28, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215a0c
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215a0c
    li      r29, 0x0
branch_0x80215a0c:
    clrlwi. r0, r29, 24
    beq-    branch_0x80215a24
    lis     r3, sCheckFrameMonte_localstatic0_isPolWaitCEffectEmitTime___8TBaseNPCCFv@ha
    addi    r0, r3, sCheckFrameMonte_localstatic0_isPolWaitCEffectEmitTime___8TBaseNPCCFv@l
    mr      r28, r0
    b       branch_0x80215a80

branch_0x80215a24:
    li      r29, 0x1
    addi    r3, r31, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215a4c
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215a4c
    li      r29, 0x0
branch_0x80215a4c:
    clrlwi. r0, r29, 24
    beq-    branch_0x80215a64
    lis     r3, sCheckFrameMare_localstatic1_isPolWaitCEffectEmitTime___8TBaseNPCCFv@ha
    addi    r0, r3, sCheckFrameMare_localstatic1_isPolWaitCEffectEmitTime___8TBaseNPCCFv@l
    mr      r28, r0
    b       branch_0x80215a80

branch_0x80215a64:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x80215a80
    lis     r3, sCheckFrameKino_localstatic2_isPolWaitCEffectEmitTime___8TBaseNPCCFv@ha
    addi    r0, r3, sCheckFrameKino_localstatic2_isPolWaitCEffectEmitTime___8TBaseNPCCFv@l
    mr      r28, r0
branch_0x80215a80:
    cmplwi  r28, 0x0
    beq-    branch_0x80215ad4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    li      r30, 0x0
    lfs     f31, -0x19e8(r2)
    addi    r29, r3, 0x0
    addi    r31, r30, 0x0
    b       branch_0x80215ac4

branch_0x80215aa8:
    mr      r3, r29
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80215ac0
    li      r30, 0x1
    b       branch_0x80215ad4

branch_0x80215ac0:
    addi    r31, r31, 0x4
branch_0x80215ac4:
    lfsx    f1, r28, r31
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    beq+    branch_0x80215aa8
branch_0x80215ad4:
    lwz     r0, 0x34(sp)
    mr      r3, r30
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80215afc
set_f___Q29JGeometry8TVec3_f_Ffff_80215afc: # 0x80215afc
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl emitHappyEffect___8TBaseNPCFv
emitHappyEffect___8TBaseNPCFv: # 0x80215b0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lis     r3, unk_04000018@h
    stw     r30, 0x38(sp)
    addi    r0, r3, unk_04000018@l
    lwz     r4, 0x4c(r31)
    cmpw    r4, r0
    bge-    branch_0x80215b60
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x80215b48
    b       branch_0x80215b60

branch_0x80215b48:
    lfs     f1, -0x19f0(r2)
    addi    r3, sp, 0x1c
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80215afc
    b       branch_0x80215b78

branch_0x80215b60:
    lwz     r3, 0x1ac(r31)
    lwz     r0, 0x1b0(r31)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x1b4(r31)
    stw     r0, 0x24(sp)
branch_0x80215b78:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r4, 0x20(sp)
    li      r30, 0x1
    stw     r0, 0x28(sp)
    lwz     r0, 0x24(sp)
    stw     r4, 0x2c(sp)
    lwz     r4, R13Off_m0x6220(r13)
    stw     r0, 0x30(sp)
    lfs     f1, 0x25c(r4)
    lfs     f0, 0x28(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(sp)
    lfs     f0, 0x2c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x30(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(sp)
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215be4
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215be4
    li      r30, 0x0
branch_0x80215be4:
    clrlwi. r0, r30, 24
    beq-    branch_0x80215c04
    lwz     r4, 0x1e8(r31)
    addi    r5, r31, 0x0
    addi    r6, sp, 0x28
    li      r3, 0x70
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    b       branch_0x80215c58

branch_0x80215c04:
    li      r30, 0x1
    addi    r3, r31, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215c2c
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215c2c
    li      r30, 0x0
branch_0x80215c2c:
    clrlwi. r0, r30, 24
    bne-    branch_0x80215c44
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x80215c58
branch_0x80215c44:
    lwz     r4, 0x1e8(r31)
    addi    r5, r31, 0x0
    addi    r6, sp, 0x28
    li      r3, 0x71
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
branch_0x80215c58:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl emitSinkEffect___8TBaseNPCFv
emitSinkEffect___8TBaseNPCFv: # 0x80215c70
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    lfs     f2, 0x18(r3)
    lfs     f1, 0x1c4(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x18(sp)
    stfs    f1, 0x1c(sp)
    stfs    f2, 0x20(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 8, 8
    beq-    branch_0x80215ca8
    li      r5, 0x0
branch_0x80215ca8:
    lwz     r4, 0xc4(r3)
    addi    r3, sp, 0x18
    addi    r4, r4, 0x34
    bl      SMS_EmitSinkInPollutionEffect__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_b
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getEffectScale___8TBaseNPCCFv
getEffectScale___8TBaseNPCCFv: # 0x80215cc8
    lis     r5, unk_04000018@h
    lwz     r6, 0x4c(r4)
    addi    r0, r5, unk_04000018@l
    cmpw    r6, r0
    bge-    branch_0x80215d00
    addi    r0, r5, 0x16
    cmpw    r6, r0
    bge-    branch_0x80215cec
    b       branch_0x80215d00

branch_0x80215cec:
    lfs     f0, -0x19f0(r2)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    blr

branch_0x80215d00:
    lwz     r5, 0x1ac(r4)
    lwz     r0, 0x1b0(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x1b4(r4)
    stw     r0, 0x8(r3)
    blr


.globl IsCheckPassFrame__FP12J3DFrameCtrlPCf
IsCheckPassFrame__FP12J3DFrameCtrlPCf: # 0x80215d1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    lfs     f31, -0x19e8(r2)
    b       branch_0x80215d70

branch_0x80215d54:
    mr      r3, r28
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80215d6c
    li      r30, 0x1
    b       branch_0x80215d80

branch_0x80215d6c:
    addi    r31, r31, 0x4
branch_0x80215d70:
    lfsx    f1, r29, r31
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    beq+    branch_0x80215d54
branch_0x80215d80:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x28
    blr


.globl setSmokeEffectMtxPtr___8TBaseNPCFb
setSmokeEffectMtxPtr___8TBaseNPCFb: # 0x80215da8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80215de4
    lwz     r3, 0x168(r30)
    li      r4, 0xb
    li      r5, 0x0
    bl      getPartsMActor__9TNpcPartsFii
    lwz     r31, 0x4(r3)
    addi    r4, r2, R2Off_m0x19dc
    b       branch_0x80215dfc

branch_0x80215de4:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lis     r4, unk_8039a59c@ha
    addi    r0, r4, unk_8039a59c@l
    addi    r31, r3, 0x0
    mr      r4, r0
branch_0x80215dfc:
    lwz     r3, 0x4(r31)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x58(r31)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x208(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setPollutionEffectMtxPtr___8TBaseNPCFPC10JUTNameTab
setPollutionEffectMtxPtr___8TBaseNPCFPC10JUTNameTab: # 0x80215e34
    mflr    r0
    lis     r5, unk_8039a458@ha
    stw     r0, 0x4(sp)
    addi    r5, r5, unk_8039a458@l
    stwu    sp, -0x50(sp)
    stmw    r24, 0x30(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    addi    r28, r5, 0x150
    addi    r26, r5, 0x15c
    addi    r25, r5, 0x168
    addi    r24, r5, 0x174
    addi    r27, r2, R2Off_m0x19d4
    li      r29, 0x1
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215e8c
    mr      r3, r30
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215e8c
    li      r29, 0x0
branch_0x80215e8c:
    clrlwi. r0, r29, 24
    beq-    branch_0x80215ef4
    addi    r3, r31, 0x0
    addi    r4, r25, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r29, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x200(r30)
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r29, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x204(r30)
    mr      r4, r28
    b       branch_0x80215f48

branch_0x80215ef4:
    li      r29, 0x1
    addi    r3, r30, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215f1c
    mr      r3, r30
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80215f1c
    li      r29, 0x0
branch_0x80215f1c:
    clrlwi. r0, r29, 24
    beq-    branch_0x80215f2c
    mr      r4, r27
    b       branch_0x80215f48

branch_0x80215f2c:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x80215f44
    mr      r4, r26
    b       branch_0x80215f48

branch_0x80215f44:
    li      r4, 0x0
branch_0x80215f48:
    cmplwi  r4, 0x0
    beq-    branch_0x80215f78
    mr      r3, r31
    bl      getIndex__10JUTNameTabCFPCc
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r31, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x1fc(r30)
branch_0x80215f78:
    lmw     r24, 0x30(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setNoteEffectMtxPtr___8TBaseNPCFPC10JUTNameTab
setNoteEffectMtxPtr___8TBaseNPCFPC10JUTNameTab: # 0x80215f8c
    mflr    r0
    lis     r6, unk_8039a5d8@ha
    stw     r0, 0x4(sp)
    addi    r6, r6, unk_8039a5d8@l
    li      r7, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lis     r3, unk_04000012@h
    lwz     r5, 0x4c(r30)
    addi    r0, r3, unk_04000012@l
    cmpw    r5, r0
    addi    r0, r2, R2Off_m0x19cc
    beq-    branch_0x80215fe4
    bge-    branch_0x80215fe8
    addi    r0, r3, 0x9
    cmpw    r5, r0
    beq-    branch_0x80215fdc
    b       branch_0x80215fe8

branch_0x80215fdc:
    mr      r7, r6
    b       branch_0x80215fe8

branch_0x80215fe4:
    mr      r7, r0
branch_0x80215fe8:
    cmplwi  r7, 0x0
    beq-    branch_0x8021601c
    addi    r3, r4, 0x0
    addi    r4, r7, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r31, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x1ec(r30)
branch_0x8021601c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl setHappyEffectMtxPtr___8TBaseNPCFPC10JUTNameTab
setHappyEffectMtxPtr___8TBaseNPCFPC10JUTNameTab: # 0x80216034
    mflr    r0
    lis     r6, unk_8039a5a8@ha
    stw     r0, 0x4(sp)
    lis     r5, unk_8039a5b4@ha
    addi    r0, r5, unk_8039a5b4@l
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r31, r3, 0x0
    addi    r3, r6, unk_8039a5a8@l
    addi    r29, r3, 0x0
    addi    r26, r4, 0x0
    mr      r27, r0
    addi    r3, r31, 0x0
    addi    r28, r2, R2Off_m0x19d4
    li      r30, 0x1
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80216090
    mr      r3, r31
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80216090
    li      r30, 0x0
branch_0x80216090:
    clrlwi. r0, r30, 24
    beq-    branch_0x802160a0
    mr      r4, r29
    b       branch_0x802160f4

branch_0x802160a0:
    li      r30, 0x1
    addi    r3, r31, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802160c8
    mr      r3, r31
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802160c8
    li      r30, 0x0
branch_0x802160c8:
    clrlwi. r0, r30, 24
    beq-    branch_0x802160d8
    mr      r4, r28
    b       branch_0x802160f4

branch_0x802160d8:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x16
    bne-    branch_0x802160f0
    mr      r4, r27
    b       branch_0x802160f4

branch_0x802160f0:
    li      r4, 0x0
branch_0x802160f4:
    cmplwi  r4, 0x0
    beq-    branch_0x80216124
    mr      r3, r26
    bl      getIndex__10JUTNameTabCFPCc
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r30, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x1e8(r31)
branch_0x80216124:
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

