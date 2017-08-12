
.globl __dt__18TNerveCannonObjectFv
__dt__18TNerveCannonObjectFv: # 0x800caf04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800caf48
    lis     r3, __vvt__18TNerveCannonObject@ha
    addi    r0, r3, __vvt__18TNerveCannonObject@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800caf38
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800caf38:
    extsh.  r0, r4
    ble-    branch_0x800caf48
    mr      r3, r31
    bl      __dl__FPv
branch_0x800caf48:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveCannonObjectCFP24TSpineBase_10TLiveActor_
execute__18TNerveCannonObjectCFP24TSpineBase_10TLiveActor_: # 0x800caf60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800cb004
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x800caf9c
    li      r0, 0x1
    b       branch_0x800cafa0

branch_0x800caf9c:
    li      r0, 0x0
branch_0x800cafa0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800caff0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x5f78(r2)
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
branch_0x800caff0:
    lwz     r3, 0x1a8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb004
    lfs     f0, -0x5f98(r2)
    stfs    f0, 0x70(r3)
branch_0x800cb004:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x800cb018
    li      r0, 0x1
    b       branch_0x800cb01c

branch_0x800cb018:
    li      r0, 0x0
branch_0x800cb01c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cb070
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5f94(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800cb070
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38b4
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800cb070
    addi    r4, r31, 0x10
    li      r3, 0x38b4
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800cb070:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x96
    ble-    branch_0x800cb124
    lwz     r3, 0x254(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb124
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x800cb0ec
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x254(r31)
    lis     r3, unk_8037fb18@ha
    lwz     r5, 0x10(r31)
    addi    r4, r3, unk_8037fb18@l
    lwz     r0, 0x14(r31)
    stw     r5, 0x10(r6)
    stw     r0, 0x14(r6)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r6)
    lwz     r3, 0x254(r31)
    lfs     f1, -0x5f90(r2)
    stfsu   f1, 0x24(r3)
    lfs     f0, -0x5f8c(r2)
    stfs    f0, 0x4(r3)
    stfs    f1, 0x8(r3)
    lwz     r3, 0x254(r31)
    lwz     r3, 0x74(r3)
    bl      setBtk__6MActorFPCc
branch_0x800cb0ec:
    lwz     r3, 0x254(r31)
    lfs     f2, -0x5f88(r2)
    lfsu    f1, 0x28(r3)
    lfs     f0, -0x5f84(r2)
    fmuls   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800cb110
    fmr     f1, f0
    b       branch_0x800cb120

branch_0x800cb110:
    lfs     f0, -0x5f80(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800cb120
    fmr     f1, f0
branch_0x800cb120:
    stfs    f1, 0x0(r3)
branch_0x800cb124:
    lwz     r0, 0x64(sp)
    li      r3, 0x0
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl execute__22TNerveCannonDamageDemoCFP24TSpineBase_10TLiveActor_
execute__22TNerveCannonDamageDemoCFP24TSpineBase_10TLiveActor_: # 0x800cb140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800cb1e8
    lwz     r29, 0x1a8(r31)
    li      r4, 0xe
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cb1a4
    li      r0, 0x0
    b       branch_0x800cb1a8

branch_0x800cb1a4:
    lwz     r0, 0x38(r3)
branch_0x800cb1a8:
    stw     r0, 0x78(r29)
    lwz     r3, 0x78(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb1d4
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cb1e8

branch_0x800cb1d4:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cb1e8:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x78
    ble-    branch_0x800cb34c
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cb34c
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x800cb228
    li      r0, 0x1
    b       branch_0x800cb22c

branch_0x800cb228:
    li      r0, 0x0
branch_0x800cb22c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800cb34c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38b3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800cb27c
    addi    r4, r31, 0x10
    li      r3, 0x38b3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800cb27c:
    lis     r4, unk_8037fb24@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_8037fb24@l
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800cb2b8
    lfs     f0, -0x5f70(r2)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x58
    stfs    f0, 0x58(sp)
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x60(sp)
    bl      generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800cb2b8:
    lis     r4, unk_0005000c@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r5, r4, unk_0005000c@l
    li      r4, 0x1
    bl      setBool__12TFlagManagerFbUl
    lbz     r0, R13Off_m0x69a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cb310
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonObject@ha
    stw     r0, R13Off_m0x69a4(r13)
    addi    r0, r3, __vvt__18TNerveCannonObject@l
    lis     r4, __dt__18TNerveCannonObjectFv@ha
    stw     r0, R13Off_m0x69a4(r13)
    lis     r3, unk_803f1e5c@h
    addi    r5, r3, unk_803f1e5c@l
    addi    r4, r4, __dt__18TNerveCannonObjectFv@l
    addi    r3, r13, R13Off_m0x69a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69a8(r13)
branch_0x800cb310:
    addi    r4, r13, R13Off_m0x69a4
    cmplwi  r4, 0x0
    beq-    branch_0x800cb344
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800cb344
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800cb344:
    li      r3, 0x1
    b       branch_0x800cb350

branch_0x800cb34c:
    li      r3, 0x0
branch_0x800cb350:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__22TNerveCannonDamageDemoFv
__dt__22TNerveCannonDamageDemoFv: # 0x800cb36c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cb3b0
    lis     r3, __vvt__22TNerveCannonDamageDemo@ha
    addi    r0, r3, __vvt__22TNerveCannonDamageDemo@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cb3a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cb3a0:
    extsh.  r0, r4
    ble-    branch_0x800cb3b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cb3b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveCannonDamageCFP24TSpineBase_10TLiveActor_
execute__18TNerveCannonDamageCFP24TSpineBase_10TLiveActor_: # 0x800cb3c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stw     r31, 0x164(sp)
    stw     r30, 0x160(sp)
    mr      r30, r4
    stw     r29, 0x15c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800cb878
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xc4
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r29, r3
    beq-    branch_0x800cb430
    lfs     f0, -0x5f6c(r2)
    stfs    f0, 0x154(r29)
    stfs    f0, 0x158(r29)
    stfs    f0, 0x15c(r29)
    stfs    f0, 0x174(r29)
    stfs    f0, 0x178(r29)
    stfs    f0, 0x17c(r29)
branch_0x800cb430:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xc5
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r29, 0x0
    beq-    branch_0x800cb46c
    lfs     f0, -0x5f6c(r2)
    stfs    f0, 0x154(r29)
    stfs    f0, 0x158(r29)
    stfs    f0, 0x15c(r29)
    stfs    f0, 0x174(r29)
    stfs    f0, 0x178(r29)
    stfs    f0, 0x17c(r29)
branch_0x800cb46c:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xc6
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r29, 0x0
    beq-    branch_0x800cb4a8
    lfs     f0, -0x5f6c(r2)
    stfs    f0, 0x154(r29)
    stfs    f0, 0x158(r29)
    stfs    f0, 0x15c(r29)
    stfs    f0, 0x174(r29)
    stfs    f0, 0x178(r29)
    stfs    f0, 0x17c(r29)
branch_0x800cb4a8:
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb4bc
    addi    r0, r3, -0x1
    stb     r0, 0x13c(r31)
branch_0x800cb4bc:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800cb720
    lwz     r3, 0x1a4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb4e4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800cb4e4:
    lwz     r29, 0x1a8(r31)
    li      r4, 0xd
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cb51c
    li      r0, 0x0
    b       branch_0x800cb520

branch_0x800cb51c:
    lwz     r0, 0x34(r3)
branch_0x800cb520:
    stw     r0, 0x78(r29)
    lwz     r3, 0x78(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb54c
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cb560

branch_0x800cb54c:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cb560:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    addi    r29, r3, 0xe
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x800cb58c
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x18
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    b       branch_0x800cb59c

branch_0x800cb58c:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x17
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
branch_0x800cb59c:
    lwz     r5, 0x1a8(r31)
    li      r4, 0xc8
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x6c(r5)
    li      r7, 0x0
    lwz     r5, 0x18(r5)
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x240
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800cb604
    lwz     r4, 0x1a8(r31)
    lfsu    f0, 0x24(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
branch_0x800cb604:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x294
    li      r4, 0xc7
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800cb658
    lwz     r4, 0x1a8(r31)
    lfsu    f0, 0x24(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
branch_0x800cb658:
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x5
    bne-    branch_0x800cb6c4
    lwz     r6, 0x10(r31)
    lis     r3, unk_8037fb40@ha
    lwz     r5, 0x14(r31)
    addi    r4, r3, unk_8037fb40@l
    li      r0, 0x0
    stw     r6, 0x2a0(r31)
    addi    r11, sp, 0x134
    li      r6, -0x1
    stw     r5, 0x2a4(r31)
    addi    r5, r31, 0x2a0
    li      r7, 0x1
    lwz     r3, 0x18(r31)
    li      r8, 0x0
    li      r9, 0x0
    stw     r3, 0x2a8(r31)
    li      r10, 0x0
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x2a4(r31)
    lwz     r3, R13Off_m0x6048(r13)
    sth     r0, 0x134(sp)
    stw     r11, 0x8(sp)
    lfs     f1, 0x34(r31)
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x800cb700

branch_0x800cb6c4:
    li      r0, 0x0
    lwz     r3, R13Off_m0x6048(r13)
    sth     r0, 0x130(sp)
    addi    r0, sp, 0x130
    lis     r4, unk_8037fb50@ha
    stw     r0, 0x8(sp)
    addi    r4, r4, unk_8037fb50@l
    li      r5, 0x0
    lfs     f1, -0x5f80(r2)
    li      r6, -0x1
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x800cb700:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    b       branch_0x800cb830

branch_0x800cb720:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x1a8(r31)
    li      r4, 0xd
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cb76c
    li      r0, 0x0
    b       branch_0x800cb770

branch_0x800cb76c:
    lwz     r0, 0x34(r3)
branch_0x800cb770:
    stw     r0, 0x78(r29)
    lwz     r3, 0x78(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800cb79c
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cb7b0

branch_0x800cb79c:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cb7b0:
    lwz     r3, 0x1a8(r31)
    addi    r5, r31, 0x294
    li      r4, 0xc7
    lwz     r3, 0x6c(r3)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, 0x18(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x294(r31)
    stfs    f1, 0x298(r31)
    stfs    f2, 0x29c(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800cb830
    lwz     r4, 0x1a8(r31)
    lfsu    f0, 0x24(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
branch_0x800cb830:
    lfs     f1, -0x5f80(r2)
    lfs     f0, -0x5f68(r2)
    stfs    f1, 0x138(sp)
    stfs    f0, 0x13c(sp)
    stfs    f1, 0x140(sp)
    lwz     r3, 0x138(sp)
    lwz     r0, 0x13c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x140(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x5f64(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800cb878:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cb9bc
    lwz     r3, 0x1a8(r31)
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800cb93c
    lbz     r0, R13Off_m0x69b0(r13)
    extsb.  r0, r0
    bne-    branch_0x800cb900
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveCannonDamageDemo@ha
    stw     r0, R13Off_m0x69ac(r13)
    addi    r0, r3, __vvt__22TNerveCannonDamageDemo@l
    lis     r4, __dt__22TNerveCannonDamageDemoFv@ha
    stw     r0, R13Off_m0x69ac(r13)
    lis     r3, unk_803f1e50@h
    addi    r5, r3, unk_803f1e50@l
    addi    r4, r4, __dt__22TNerveCannonDamageDemoFv@l
    addi    r3, r13, R13Off_m0x69ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69b0(r13)
branch_0x800cb900:
    addi    r4, r13, R13Off_m0x69ac
    cmplwi  r4, 0x0
    beq-    branch_0x800cb934
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800cb934
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800cb934:
    li      r3, 0x1
    b       branch_0x800cb9c0

branch_0x800cb93c:
    lbz     r0, R13Off_m0x69d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cb980
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonSearch@ha
    stw     r0, R13Off_m0x69d4(r13)
    addi    r0, r3, __vvt__18TNerveCannonSearch@l
    lis     r4, __dt__18TNerveCannonSearchFv@ha
    stw     r0, R13Off_m0x69d4(r13)
    lis     r3, unk_803f1e14@h
    addi    r5, r3, unk_803f1e14@l
    addi    r4, r4, __dt__18TNerveCannonSearchFv@l
    addi    r3, r13, R13Off_m0x69d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d8(r13)
branch_0x800cb980:
    addi    r4, r13, R13Off_m0x69d4
    cmplwi  r4, 0x0
    beq-    branch_0x800cb9b4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800cb9b4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800cb9b4:
    li      r3, 0x1
    b       branch_0x800cb9c0

branch_0x800cb9bc:
    li      r3, 0x0
branch_0x800cb9c0:
    lwz     r0, 0x16c(sp)
    lwz     r31, 0x164(sp)
    lwz     r30, 0x160(sp)
    mtlr    r0
    lwz     r29, 0x15c(sp)
    addi    sp, sp, 0x168
    blr


.globl __dt__18TNerveCannonSearchFv
__dt__18TNerveCannonSearchFv: # 0x800cb9dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cba20
    lis     r3, __vvt__18TNerveCannonSearch@ha
    addi    r0, r3, __vvt__18TNerveCannonSearch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cba10
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cba10:
    extsh.  r0, r4
    ble-    branch_0x800cba20
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cba20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TNerveCannonDamageFv
__dt__18TNerveCannonDamageFv: # 0x800cba38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cba7c
    lis     r3, __vvt__18TNerveCannonDamage@ha
    addi    r0, r3, __vvt__18TNerveCannonDamage@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cba6c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cba6c:
    extsh.  r0, r4
    ble-    branch_0x800cba7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cba7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveCannonCloseCFP24TSpineBase_10TLiveActor_
execute__17TNerveCannonCloseCFP24TSpineBase_10TLiveActor_: # 0x800cba94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    mr      r30, r4
    stw     r29, 0xac(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x800cbb98
    lwz     r0, 0x64(r31)
    li      r4, 0xf
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r29, 0x1a8(r31)
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cbb14
    li      r0, 0x0
    b       branch_0x800cbb18

branch_0x800cbb14:
    lwz     r0, 0x3c(r3)
branch_0x800cbb18:
    stw     r0, 0x78(r29)
    lwz     r3, 0x78(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800cbb44
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cbb58

branch_0x800cbb44:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cbb58:
    lwz     r3, 0x10(r31)
    addi    r5, r31, 0x294
    lwz     r0, 0x14(r31)
    li      r4, 0xc9
    li      r6, 0x0
    stw     r3, 0x294(r31)
    li      r7, 0x0
    stw     r0, 0x298(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x29c(r31)
    lfs     f1, 0x298(r31)
    lfs     f0, -0x5f60(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x298(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800cbb98:
    lwz     r29, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cbbe0
    lwz     r3, 0x6c(r29)
    li      r4, 0xf
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cbbe0
    lfs     f0, -0x5f98(r2)
    li      r0, 0x1
    stfs    f0, 0x70(r29)
    b       branch_0x800cbbe4

branch_0x800cbbe0:
    li      r0, 0x0
branch_0x800cbbe4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cbc24
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800cbc00
    li      r0, 0x1
    b       branch_0x800cbc04

branch_0x800cbc00:
    li      r0, 0x0
branch_0x800cbc04:
    clrlwi. r0, r0, 24
    bne-    branch_0x800cbc24
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800cbc24:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800cbc38
    li      r0, 0x1
    b       branch_0x800cbc3c

branch_0x800cbc38:
    li      r0, 0x0
branch_0x800cbc3c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cbcc4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5f64(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800cbcc4
    lwz     r3, 0x10(r31)
    addi    r5, r31, 0x294
    lwz     r0, 0x14(r31)
    li      r4, 0x11
    li      r6, 0x0
    stw     r3, 0x294(r31)
    li      r7, 0x0
    stw     r0, 0x298(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x29c(r31)
    lfs     f1, 0x298(r31)
    lfs     f0, -0x5f5c(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x298(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800cbcc4
    lfs     f0, -0x5f58(r2)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800cbcc4:
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x28c(r31)
    lfs     f1, -0x5f54(r2)
    lfs     f2, 0x2e4(r3)
    lfs     f0, 0x134(r31)
    fmuls   f2, f2, f1
    fmuls   f2, f2, f2
    fcmpo   cr0, f0, f2
    ble-    branch_0x800cbd88
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lbz     r0, R13Off_m0x69e0(r13)
    extsb.  r0, r0
    bne-    branch_0x800cbd4c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveCannonOpen@ha
    stw     r0, R13Off_m0x69dc(r13)
    addi    r0, r3, __vvt__16TNerveCannonOpen@l
    lis     r4, __dt__16TNerveCannonOpenFv@ha
    stw     r0, R13Off_m0x69dc(r13)
    lis     r3, unk_803f1e08@h
    addi    r5, r3, unk_803f1e08@l
    addi    r4, r4, __dt__16TNerveCannonOpenFv@l
    addi    r3, r13, R13Off_m0x69dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69e0(r13)
branch_0x800cbd4c:
    addi    r4, r13, R13Off_m0x69dc
    cmplwi  r4, 0x0
    beq-    branch_0x800cbd80
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800cbd80
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800cbd80:
    li      r3, 0x1
    b       branch_0x800cbdb0

branch_0x800cbd88:
    lwz     r3, 0x2b0(r31)
    lwz     r4, 0x74(r31)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r4)
    lwz     r12, 0x14(r12)
    lwz     r4, 0x58(r4)
    mtlr    r12
    addi    r4, r4, 0xc0
    blrl
    li      r3, 0x0
branch_0x800cbdb0:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl __dt__16TNerveCannonOpenFv
__dt__16TNerveCannonOpenFv: # 0x800cbdcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cbe10
    lis     r3, __vvt__16TNerveCannonOpen@ha
    addi    r0, r3, __vvt__16TNerveCannonOpen@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cbe00
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cbe00:
    extsh.  r0, r4
    ble-    branch_0x800cbe10
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cbe10:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TNerveCannonCloseFv
__dt__17TNerveCannonCloseFv: # 0x800cbe28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cbe6c
    lis     r3, __vvt__17TNerveCannonClose@ha
    addi    r0, r3, __vvt__17TNerveCannonClose@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cbe5c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cbe5c:
    extsh.  r0, r4
    ble-    branch_0x800cbe6c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cbe6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveCannonForceBombShootCFP24TSpineBase_10TLiveActor_
execute__26TNerveCannonForceBombShootCFP24TSpineBase_10TLiveActor_: # 0x800cbe84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stw     r31, 0xfc(sp)
    stw     r30, 0xf8(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800cbf50
    lwz     r3, 0x28c(r31)
    lfs     f1, -0x5f6c(r2)
    lfs     f0, 0x2f8(r3)
    lfs     f2, 0x134(r31)
    fmuls   f0, f0, f0
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800cbf48
    lwz     r30, 0x1a8(r31)
    li      r4, 0x11
    lwz     r3, 0x6c(r30)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cbf00
    li      r0, 0x0
    b       branch_0x800cbf04

branch_0x800cbf00:
    lwz     r0, 0x44(r3)
branch_0x800cbf04:
    stw     r0, 0x78(r30)
    lwz     r3, 0x78(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800cbf30
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r30)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cbf50

branch_0x800cbf30:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cbf50

branch_0x800cbf48:
    li      r3, 0x1
    b       branch_0x800cc118

branch_0x800cbf50:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x11
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cc028
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cc010
    lwz     r30, 0x1a8(r31)
    li      r4, 0x10
    lwz     r3, 0x6c(r30)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cbfc4
    li      r0, 0x0
    b       branch_0x800cbfc8

branch_0x800cbfc4:
    lwz     r0, 0x40(r3)
branch_0x800cbfc8:
    stw     r0, 0x78(r30)
    lwz     r3, 0x78(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800cbff4
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r30)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cc008

branch_0x800cbff4:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cc008:
    mr      r3, r31
    bl      bombSet__7TCannonFv
branch_0x800cc010:
    lfs     f1, -0x5f80(r2)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x800cc114

branch_0x800cc028:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x10
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cc114
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cc06c
    li      r3, 0x1
    b       branch_0x800cc118

branch_0x800cc06c:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5f50(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800cc098
    mr      r3, r31
    bl      bombShoot__7TCannonFv
branch_0x800cc098:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5f4c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800cc114
    lwz     r3, 0x1a4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cc114
    lfs     f2, 0x220(r31)
    lfs     f0, -0x5f48(r2)
    lfsu    f1, 0x24(r3)
    fmuls   f0, f0, f2
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x800cc0ec
    fmr     f1, f2
    b       branch_0x800cc0fc

branch_0x800cc0ec:
    lfs     f0, -0x5f80(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800cc0fc
    fmr     f1, f0
branch_0x800cc0fc:
    stfs    f1, 0x0(r3)
    lwz     r3, 0x1a4(r31)
    lfs     f0, 0x24(r31)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
branch_0x800cc114:
    li      r3, 0x0
branch_0x800cc118:
    lwz     r0, 0x104(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    mtlr    r0
    addi    sp, sp, 0x100
    blr


.globl __dt__26TNerveCannonForceBombShootFv
__dt__26TNerveCannonForceBombShootFv: # 0x800cc130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cc174
    lis     r3, __vvt__26TNerveCannonForceBombShoot@ha
    addi    r0, r3, __vvt__26TNerveCannonForceBombShoot@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cc164
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cc164:
    extsh.  r0, r4
    ble-    branch_0x800cc174
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cc174:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveCannonShootCFP24TSpineBase_10TLiveActor_
execute__17TNerveCannonShootCFP24TSpineBase_10TLiveActor_: # 0x800cc18c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    stw     r30, 0x118(sp)
    mr      r30, r4
    stw     r29, 0x114(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800cc24c
    lbz     r0, 0x290(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800cc1d0
    mr      r3, r31
    bl      setKillerGoalPoint__7TCannonFv
    b       branch_0x800cc24c

branch_0x800cc1d0:
    lwz     r29, 0x1a8(r31)
    li      r4, 0x11
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cc208
    li      r0, 0x0
    b       branch_0x800cc20c

branch_0x800cc208:
    lwz     r0, 0x44(r3)
branch_0x800cc20c:
    stw     r0, 0x78(r29)
    lwz     r3, 0x78(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800cc238
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cc24c

branch_0x800cc238:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cc24c:
    lbz     r0, 0x290(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800cc498
    lwz     r3, 0x1a8(r31)
    li      r4, 0x11
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cc330
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cc318
    lwz     r29, 0x1a8(r31)
    li      r4, 0x10
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cc2cc
    li      r0, 0x0
    b       branch_0x800cc2d0

branch_0x800cc2cc:
    lwz     r0, 0x40(r3)
branch_0x800cc2d0:
    stw     r0, 0x78(r29)
    lwz     r3, 0x78(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800cc2fc
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cc310

branch_0x800cc2fc:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cc310:
    mr      r3, r31
    bl      bombSet__7TCannonFv
branch_0x800cc318:
    lfs     f1, -0x5f80(r2)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x800cc508

branch_0x800cc330:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x10
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cc508
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cc3ec
    lbz     r0, R13Off_m0x69d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cc3b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonSearch@ha
    stw     r0, R13Off_m0x69d4(r13)
    addi    r0, r3, __vvt__18TNerveCannonSearch@l
    lis     r4, __dt__18TNerveCannonSearchFv@ha
    stw     r0, R13Off_m0x69d4(r13)
    lis     r3, unk_803f1e14@h
    addi    r5, r3, unk_803f1e14@l
    addi    r4, r4, __dt__18TNerveCannonSearchFv@l
    addi    r3, r13, R13Off_m0x69d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d8(r13)
branch_0x800cc3b0:
    addi    r4, r13, R13Off_m0x69d4
    cmplwi  r4, 0x0
    beq-    branch_0x800cc3e4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800cc3e4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800cc3e4:
    li      r3, 0x1
    b       branch_0x800cc50c

branch_0x800cc3ec:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5f50(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800cc418
    mr      r3, r31
    bl      bombShoot__7TCannonFv
branch_0x800cc418:
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5f4c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800cc508
    lwz     r3, 0x1a4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cc508
    lfs     f2, 0x220(r31)
    lfs     f0, -0x5f48(r2)
    lfsu    f1, 0x24(r3)
    fmuls   f0, f0, f2
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x800cc46c
    fmr     f1, f2
    b       branch_0x800cc47c

branch_0x800cc46c:
    lfs     f0, -0x5f80(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800cc47c
    fmr     f1, f0
branch_0x800cc47c:
    stfs    f1, 0x0(r3)
    lwz     r3, 0x1a4(r31)
    lfs     f0, 0x24(r31)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    b       branch_0x800cc508

branch_0x800cc498:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x28
    bge-    branch_0x800cc4b8
    lfs     f1, -0x5f80(r2)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800cc4b8:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x28
    bne-    branch_0x800cc4cc
    mr      r3, r31
    bl      killerShoot__7TCannonFv
branch_0x800cc4cc:
    lwz     r3, 0x28c(r31)
    lwz     r4, 0x20(r30)
    lwz     r0, 0x334(r3)
    cmpw    r4, r0
    ble-    branch_0x800cc508
    lwz     r3, 0x214(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x214(r31)
    lwz     r0, 0x214(r31)
    cmpwi   r0, 0x3
    blt-    branch_0x800cc500
    li      r0, 0x0
    stw     r0, 0x214(r31)
branch_0x800cc500:
    li      r3, 0x1
    b       branch_0x800cc50c

branch_0x800cc508:
    li      r3, 0x0
branch_0x800cc50c:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    lwz     r30, 0x118(sp)
    mtlr    r0
    lwz     r29, 0x114(sp)
    addi    sp, sp, 0x120
    blr


.globl __dt__17TNerveCannonShootFv
__dt__17TNerveCannonShootFv: # 0x800cc528
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800cc56c
    lis     r3, __vvt__17TNerveCannonShoot@ha
    addi    r0, r3, __vvt__17TNerveCannonShoot@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800cc55c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800cc55c:
    extsh.  r0, r4
    ble-    branch_0x800cc56c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800cc56c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveCannonSearchCFP24TSpineBase_10TLiveActor_
execute__18TNerveCannonSearchCFP24TSpineBase_10TLiveActor_: # 0x800cc584
    mflr    r0
    lis     r3, unk_803f1e08@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x198(sp)
    stfd    f31, 0x190(sp)
    stw     r31, 0x18c(sp)
    mr      r31, r4
    stw     r30, 0x188(sp)
    addi    r30, r3, unk_803f1e08@l
    stw     r29, 0x184(sp)
    stw     r28, 0x180(sp)
    lwz     r29, 0x0(r4)
    addi    r3, r29, 0x0
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x28c(r29)
    lwz     r0, 0x20(r31)
    lfs     f0, 0x2f8(r3)
    cmpwi   r0, 0x0
    lfs     f31, 0x134(r29)
    fmuls   f0, f0, f0
    bne-    branch_0x800cc6dc
    fcmpo   cr0, f31, f0
    bge-    branch_0x800cc660
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x5f80(r2)
    stw     r3, 0x158(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x15c(sp)
    stfs    f0, 0x160(sp)
    stfs    f0, 0x164(sp)
    beq-    branch_0x800cc618
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x15c(sp)
    stfs    f1, 0x160(sp)
    stfs    f2, 0x164(sp)
branch_0x800cc618:
    lwz     r3, 0x158(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r29)
    lwz     r4, 0x15c(sp)
    lwz     r3, 0x160(sp)
    stw     r4, 0xf8(r29)
    stw     r3, 0xfc(r29)
    lwz     r3, 0x164(sp)
    stw     r3, 0x100(r29)
    lwz     r3, 0x158(sp)
    stw     r3, 0x104(r29)
    lwz     r4, 0x15c(sp)
    lwz     r3, 0x160(sp)
    stw     r4, 0x108(r29)
    stw     r3, 0x10c(r29)
    lwz     r3, 0x164(sp)
    stw     r3, 0x110(r29)
    stw     r0, 0x118(r29)
branch_0x800cc660:
    lwz     r28, 0x1a8(r29)
    li      r4, 0x13
    lwz     r3, 0x6c(r28)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cc698
    li      r0, 0x0
    b       branch_0x800cc69c

branch_0x800cc698:
    lwz     r0, 0x4c(r3)
branch_0x800cc69c:
    stw     r0, 0x78(r28)
    lwz     r3, 0x78(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x800cc6c8
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r28)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cc6dc

branch_0x800cc6c8:
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cc6dc:
    lwz     r3, 0x1a8(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800cc794
    lwz     r3, 0x1a8(r29)
    li      r4, 0x13
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cc794
    lwz     r28, 0x1a8(r29)
    li      r4, 0x12
    lwz     r3, 0x6c(r28)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cc750
    li      r0, 0x0
    b       branch_0x800cc754

branch_0x800cc750:
    lwz     r0, 0x48(r3)
branch_0x800cc754:
    stw     r0, 0x78(r28)
    lwz     r3, 0x78(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x800cc780
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r28)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cc794

branch_0x800cc780:
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cc794:
    lwz     r4, 0x28c(r29)
    lfs     f0, 0x2e4(r4)
    fmuls   f0, f0, f0
    fcmpo   cr0, f31, f0
    bge-    branch_0x800cc824
    lbz     r0, R13Off_m0x69c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800cc7e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveCannonClose@ha
    stw     r0, R13Off_m0x69bc(r13)
    addi    r0, r3, __vvt__17TNerveCannonClose@l
    lis     r3, __dt__17TNerveCannonCloseFv@ha
    stw     r0, R13Off_m0x69bc(r13)
    addi    r4, r3, __dt__17TNerveCannonCloseFv@l
    addi    r3, r13, R13Off_m0x69bc
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69c0(r13)
branch_0x800cc7e8:
    addi    r4, r13, R13Off_m0x69bc
    cmplwi  r4, 0x0
    beq-    branch_0x800cc81c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800cc81c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800cc81c:
    li      r3, 0x1
    b       branch_0x800ccc24

branch_0x800cc824:
    lfs     f0, 0x2f8(r4)
    fmuls   f0, f0, f0
    fcmpo   cr0, f31, f0
    bge-    branch_0x800cc8c4
    lwz     r3, 0x20(r31)
    lwz     r0, 0x320(r4)
    cmpw    r3, r0
    ble-    branch_0x800ccb4c
    li      r28, 0x1
    stb     r28, 0x290(r29)
    lbz     r0, R13Off_m0x69d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800cc888
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveCannonShoot@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r0, r3, __vvt__17TNerveCannonShoot@l
    lis     r3, __dt__17TNerveCannonShootFv@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r4, r3, __dt__17TNerveCannonShootFv@l
    addi    r3, r13, R13Off_m0x69cc
    addi    r5, r30, 0x18
    bl      __register_global_object
    stb     r28, R13Off_m0x69d0(r13)
branch_0x800cc888:
    addi    r4, r13, R13Off_m0x69cc
    cmplwi  r4, 0x0
    beq-    branch_0x800cc8bc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800cc8bc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800cc8bc:
    li      r3, 0x1
    b       branch_0x800ccc24

branch_0x800cc8c4:
    lbz     r0, 0x230(r29)
    cmplwi  r0, 0x5
    beq-    branch_0x800cc8d8
    cmplwi  r0, 0x9
    bne-    branch_0x800ccb4c
branch_0x800cc8d8:
    lfs     f0, 0x30c(r4)
    fmuls   f0, f0, f0
    fcmpo   cr0, f31, f0
    bge-    branch_0x800ccb4c
    lwz     r3, 0x20(r31)
    lwz     r0, 0x348(r4)
    cmpw    r3, r0
    ble-    branch_0x800ccb4c
    li      r0, 0x0
    stb     r0, 0x290(r29)
    lbz     r0, R13Off_m0x69d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cc940
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonSearch@ha
    stw     r0, R13Off_m0x69d4(r13)
    addi    r0, r3, __vvt__18TNerveCannonSearch@l
    lis     r3, __dt__18TNerveCannonSearchFv@ha
    stw     r0, R13Off_m0x69d4(r13)
    addi    r4, r3, __dt__18TNerveCannonSearchFv@l
    addi    r3, r13, R13Off_m0x69d4
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d8(r13)
branch_0x800cc940:
    addi    r4, r13, R13Off_m0x69d4
    cmplwi  r4, 0x0
    beq-    branch_0x800cc974
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800cc974
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800cc974:
    lbz     r0, R13Off_m0x69c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cc9b4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveCannonForceBombShoot@ha
    stw     r0, R13Off_m0x69c4(r13)
    addi    r0, r3, __vvt__26TNerveCannonForceBombShoot@l
    lis     r3, __dt__26TNerveCannonForceBombShootFv@ha
    stw     r0, R13Off_m0x69c4(r13)
    addi    r4, r3, __dt__26TNerveCannonForceBombShootFv@l
    addi    r3, r13, R13Off_m0x69c4
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69c8(r13)
branch_0x800cc9b4:
    addi    r4, r13, R13Off_m0x69c4
    cmplwi  r4, 0x0
    beq-    branch_0x800cc9e8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800cc9e8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800cc9e8:
    lbz     r0, R13Off_m0x69d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800cca28
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveCannonShoot@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r0, r3, __vvt__17TNerveCannonShoot@l
    lis     r3, __dt__17TNerveCannonShootFv@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r4, r3, __dt__17TNerveCannonShootFv@l
    addi    r3, r13, R13Off_m0x69cc
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d0(r13)
branch_0x800cca28:
    addi    r4, r13, R13Off_m0x69cc
    cmplwi  r4, 0x0
    beq-    branch_0x800cca5c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800cca5c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800cca5c:
    lbz     r0, R13Off_m0x69d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800cca9c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveCannonShoot@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r0, r3, __vvt__17TNerveCannonShoot@l
    lis     r3, __dt__17TNerveCannonShootFv@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r4, r3, __dt__17TNerveCannonShootFv@l
    addi    r3, r13, R13Off_m0x69cc
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d0(r13)
branch_0x800cca9c:
    addi    r4, r13, R13Off_m0x69cc
    cmplwi  r4, 0x0
    beq-    branch_0x800ccad0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800ccad0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800ccad0:
    lbz     r0, R13Off_m0x69d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800ccb10
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveCannonShoot@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r0, r3, __vvt__17TNerveCannonShoot@l
    lis     r3, __dt__17TNerveCannonShootFv@ha
    stw     r0, R13Off_m0x69cc(r13)
    addi    r4, r3, __dt__17TNerveCannonShootFv@l
    addi    r3, r13, R13Off_m0x69cc
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d0(r13)
branch_0x800ccb10:
    addi    r4, r13, R13Off_m0x69cc
    cmplwi  r4, 0x0
    beq-    branch_0x800ccb44
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800ccb44
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800ccb44:
    li      r3, 0x1
    b       branch_0x800ccc24

branch_0x800ccb4c:
    lfs     f0, 0x2ac(r29)
    lfs     f1, 0x34(r29)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ccb90
    stfs    f1, 0x2ac(r29)
    li      r4, 0x20c8
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ccb90
    addi    r4, r29, 0x10
    li      r3, 0x20c8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800ccb90:
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x800ccc0c
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x800ccc0c
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r3, sp, 0xe8
    addi    r4, r29, 0x10
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xf0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xe8(sp)
    addi    r3, sp, 0x140
    lwz     r5, 0xec(sp)
    addi    r4, sp, 0x168
    stw     r0, 0x168(sp)
    lwz     r0, 0xf0(sp)
    stw     r5, 0x16c(sp)
    stw     r0, 0x170(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x144(sp)
    stfs    f0, 0x34(r29)
    b       branch_0x800ccc20

branch_0x800ccc0c:
    lfs     f1, -0x5f80(r2)
    mr      r3, r29
    lfs     f2, 0x144(r29)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800ccc20:
    li      r3, 0x0
branch_0x800ccc24:
    lwz     r0, 0x19c(sp)
    lfd     f31, 0x190(sp)
    lwz     r31, 0x18c(sp)
    mtlr    r0
    lwz     r30, 0x188(sp)
    lwz     r29, 0x184(sp)
    lwz     r28, 0x180(sp)
    addi    sp, sp, 0x198
    blr


.globl execute__16TNerveCannonOpenCFP24TSpineBase_10TLiveActor_
execute__16TNerveCannonOpenCFP24TSpineBase_10TLiveActor_: # 0x800ccc48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ccd08
    lwz     r30, 0x1a8(r29)
    li      r4, 0xc
    lwz     r3, 0x6c(r30)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cccac
    li      r0, 0x0
    b       branch_0x800cccb0

branch_0x800cccac:
    lwz     r0, 0x30(r3)
branch_0x800cccb0:
    stw     r0, 0x78(r30)
    lwz     r3, 0x78(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800cccdc
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x74(r30)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cccf0

branch_0x800cccdc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cccf0:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800ccd08:
    lwz     r30, 0x1a8(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x6c(r30)
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800ccd48
    lwz     r3, 0x6c(r30)
    li      r4, 0xc
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ccd48
    li      r0, 0x1
    b       branch_0x800ccd54

branch_0x800ccd48:
    lfs     f0, -0x5f80(r2)
    li      r0, 0x0
    stfs    f0, 0x70(r30)
branch_0x800ccd54:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ccdf0
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ccdf0
    lbz     r0, R13Off_m0x69d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ccdb4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonSearch@ha
    stw     r0, R13Off_m0x69d4(r13)
    addi    r0, r3, __vvt__18TNerveCannonSearch@l
    lis     r4, __dt__18TNerveCannonSearchFv@ha
    stw     r0, R13Off_m0x69d4(r13)
    lis     r3, unk_803f1e14@h
    addi    r5, r3, unk_803f1e14@l
    addi    r4, r4, __dt__18TNerveCannonSearchFv@l
    addi    r3, r13, R13Off_m0x69d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d8(r13)
branch_0x800ccdb4:
    addi    r4, r13, R13Off_m0x69d4
    cmplwi  r4, 0x0
    beq-    branch_0x800ccde8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800ccde8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800ccde8:
    li      r3, 0x1
    b       branch_0x800ccdf4

branch_0x800ccdf0:
    li      r3, 0x0
branch_0x800ccdf4:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl startChorobeiShout__7TCannonFv
startChorobeiShout__7TCannonFv: # 0x800cce10
    blr


.globl isObject__7TCannonFv
isObject__7TCannonFv: # 0x800cce14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x800cce34
    li      r0, 0x1
    b       branch_0x800cce38

branch_0x800cce34:
    li      r0, 0x0
branch_0x800cce38:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cce58
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800cce58
    li      r3, 0x1
    b       branch_0x800cce5c

branch_0x800cce58:
    li      r3, 0x0
branch_0x800cce5c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setKillerGoalPoint__7TCannonFv
setKillerGoalPoint__7TCannonFv: # 0x800cce6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lbz     r0, 0x239(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800ccfac
    lfs     f1, -0x5f80(r2)
    lfs     f0, -0x5f44(r2)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x58(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r7, R13Off_m0x60b4(r13)
    stw     r0, 0x6c(sp)
    lis     r0, unk_43300000@h
    lfd     f3, -0x5f78(r2)
    addi    r4, r0, unk_43300000@l
    stw     r0, 0x68(sp)
    lfs     f0, -0x5f40(r2)
    lfd     f2, 0x68(sp)
    lfs     f1, 0x58(sp)
    fsubs   f2, f2, f3
    lwz     r5, 0x0(r7)
    lwz     r3, 0x4(r7)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f0, f2
    stw     r5, 0x48(sp)
    lwz     r6, R13Off_m0x5ea4(r13)
    fmuls   f0, f31, f0
    stw     r3, 0x4c(sp)
    lfs     f2, -0x5f3c(r2)
    lwz     r3, 0x8(r7)
    fadds   f0, f1, f0
    stw     r3, 0x50(sp)
    lwz     r3, R13Off_m0x5ea8(r13)
    fctiwz  f1, f0
    lfs     f0, 0x48(sp)
    stfd    f1, 0x60(sp)
    lwz     r5, 0x64(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x48(sp)
    lfsx    f1, r3, r0
    lfs     f0, 0x50(sp)
    stw     r4, 0x34(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x50(sp)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x34(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x34(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    b       branch_0x800cd010

branch_0x800ccfac:
    li      r4, 0x0
    stw     r4, 0x24(sp)
    lwz     r3, 0x248(r31)
    lwz     r0, 0x24c(r31)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x250(r31)
    stw     r0, 0x30(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x800cd010:
    lwz     r0, 0x214(r31)
    li      r4, 0x1
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r31, 0x1ac(r3)
    lwz     r3, 0x18(r31)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x10(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800cd050
    li      r0, 0x0
    b       branch_0x800cd054

branch_0x800cd050:
    lwz     r0, 0x4(r3)
branch_0x800cd054:
    stw     r0, 0x20(r31)
    lwz     r3, 0x20(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800cd080
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x1c(r31)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800cd094

branch_0x800cd080:
    lwz     r3, 0x1c(r31)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800cd094:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl killerShoot__7TCannonFv
killerShoot__7TCannonFv: # 0x800cd0ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2c0(sp)
    stfd    f31, 0x2b8(sp)
    stfd    f30, 0x2b0(sp)
    stfd    f29, 0x2a8(sp)
    stfd    f28, 0x2a0(sp)
    stw     r31, 0x29c(sp)
    stw     r30, 0x298(sp)
    mr      r30, r3
    stw     r29, 0x294(sp)
    lbz     r0, 0x239(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800cd780
    lis     r4, unk_8037fb60@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_8037fb60@l
    addi    r4, r30, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r31, r3
    beq-    branch_0x800cd930
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x214(r30)
    addi    r3, sp, 0x244
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1ac(r4)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r0, r4, 0x20
    stw     r0, 0x1e0(r30)
    lwz     r0, 0x214(r30)
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1ac(r4)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    addi    r0, r4, 0x30
    stw     r0, 0x1e0(r30)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, -0x5f80(r2)
    addi    r4, sp, 0x244
    lfs     f1, -0x5f38(r2)
    mr      r5, r4
    stfs    f0, 0x250(sp)
    lfs     f0, -0x5f34(r2)
    stfs    f1, 0x260(sp)
    stfs    f0, 0x270(sp)
    lwz     r3, 0x1e0(r30)
    bl      PSMTXConcat
    lfs     f2, 0x270(sp)
    lfs     f1, 0x260(sp)
    lfs     f0, 0x250(sp)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r5, R13Off_m0x60a4(r13)
    lwz     r3, R13Off_m0x609c(r13)
    lfs     f31, 0x0(r5)
    lfs     f30, 0x0(r3)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f1, -0x5f30(r2)
    stw     r3, 0x21c(sp)
    lfs     f0, -0x5f60(r2)
    stw     r0, 0x220(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x224(sp)
    stfs    f1, 0x214(sp)
    stfs    f0, 0x218(sp)
    lfs     f1, 0x218(sp)
    lfs     f0, 0x214(sp)
    fsubs   f29, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5f78(r2)
    stw     r0, 0x28c(sp)
    lis     r29, 0x4330
    lfs     f1, -0x5f40(r2)
    stw     r29, 0x288(sp)
    lfs     f4, 0x214(sp)
    lfd     f2, 0x288(sp)
    lfs     f0, 0x21c(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f1, f29, f1
    fadds   f1, f4, f1
    fadds   f0, f0, f1
    stfs    f0, 0x21c(sp)
    lwz     r0, 0x214(r30)
    cmpwi   r0, 0x1
    beq-    branch_0x800cd2f0
    bge-    branch_0x800cd248
    cmpwi   r0, 0x0
    bge-    branch_0x800cd254
    b       branch_0x800cd2f0

branch_0x800cd248:
    cmpwi   r0, 0x3
    bge-    branch_0x800cd2f0
    b       branch_0x800cd2a4

branch_0x800cd254:
    lfs     f0, 0x218(sp)
    fsubs   f29, f0, f4
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x5f78(r2)
    stw     r0, 0x28c(sp)
    lfs     f2, -0x5f40(r2)
    stw     r29, 0x288(sp)
    lfs     f3, 0x214(sp)
    lfd     f0, 0x288(sp)
    lfs     f1, -0x5f6c(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x224(sp)
    fmuls   f2, f2, f4
    fmuls   f2, f29, f2
    fadds   f2, f3, f2
    fabs    f2, f2
    fnmsubs  f0, f1, f2, f0
    stfs    f0, 0x224(sp)
    b       branch_0x800cd2f0

branch_0x800cd2a4:
    lfs     f0, 0x218(sp)
    fsubs   f29, f0, f4
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x5f78(r2)
    stw     r0, 0x28c(sp)
    lfs     f2, -0x5f40(r2)
    stw     r29, 0x288(sp)
    lfs     f3, 0x214(sp)
    lfd     f0, 0x288(sp)
    lfs     f1, -0x5f6c(r2)
    fsubs   f4, f0, f4
    lfs     f0, 0x224(sp)
    fmuls   f2, f2, f4
    fmuls   f2, f29, f2
    fadds   f2, f3, f2
    fabs    f2, f2
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x224(sp)
branch_0x800cd2f0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x5f2c(r2)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x184
    addi    r5, sp, 0x21c
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r5, 0x184(sp)
    addi    r3, sp, 0xf0
    lwz     r0, 0x21c(sp)
    addi    r4, r30, 0x10
    stw     r5, 0x238(sp)
    lwz     r5, 0x188(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x220(sp)
    stw     r5, 0x23c(sp)
    lwz     r5, 0x18c(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x224(sp)
    stw     r5, 0x240(sp)
    stw     r0, 0xf8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xf0(sp)
    addi    r3, sp, 0x208
    lwz     r4, 0xf4(sp)
    stw     r0, 0x208(sp)
    lwz     r0, 0xf8(sp)
    stw     r4, 0x20c(sp)
    stw     r0, 0x210(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f2, 0x238(sp)
    li      r3, 0x0
    lfs     f0, -0x7e04(r13)
    li      r0, 0x64
    fmuls   f0, f2, f0
    stb     r3, 0x1a5(r31)
    stw     r3, 0x1f0(sp)
    fdivs   f0, f1, f0
    stw     r0, 0x1f4(sp)
    lwz     r3, 0x1f0(sp)
    lwz     r0, 0x1f4(sp)
    lfs     f29, -0x7e04(r13)
    fabs    f28, f0
    subf    r29, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5f78(r2)
    stw     r0, 0x28c(sp)
    lis     r5, 0x4330
    xoris   r0, r29, 0x8000
    lfs     f1, -0x5f40(r2)
    stw     r5, 0x288(sp)
    lis     r3, unk_66666667@h
    lwz     r4, 0x1f0(sp)
    stw     r0, 0x284(sp)
    addi    r0, r3, unk_66666667@l
    lfd     f0, 0x288(sp)
    stw     r5, 0x280(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x280(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x278(sp)
    lwz     r3, 0x27c(sp)
    add     r4, r4, r3
    mulhw   r0, r0, r4
    srawi   r0, r0, 1
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x5
    subf.   r0, r0, r4
    bne-    branch_0x800cd434
    li      r0, 0x1
    stb     r0, 0x1a5(r31)
    b       branch_0x800cd45c

branch_0x800cd434:
    lwz     r3, R13Off_m0x60a4(r13)
    lfs     f0, -0x5f6c(r2)
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800cd44c
    lfs     f29, -0x5f28(r2)
branch_0x800cd44c:
    lfs     f0, -0x5f24(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800cd45c
    lfs     f29, -0x5f20(r2)
branch_0x800cd45c:
    fmuls   f3, f31, f28
    lfs     f4, -0x7e00(r13)
    lfs     f2, 0x21c(sp)
    fmuls   f1, f30, f28
    lfs     f0, 0x220(sp)
    fmadds  f2, f4, f3, f2
    mr      r3, r31
    stfs    f2, 0x1f8(sp)
    stfs    f0, 0x1fc(sp)
    lfs     f0, 0x224(sp)
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x200(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x5f2c(r2)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x16c
    addi    r5, sp, 0x1f8
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x16c(sp)
    lwz     r3, 0x170(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x174(sp)
    stw     r3, 0x23c(sp)
    stw     r0, 0x240(sp)
    lfs     f0, 0x238(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x238(sp)
    lfs     f0, 0x23c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x23c(sp)
    lfs     f0, 0x240(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x240(sp)
    lfs     f2, -0x5f80(r2)
    lfs     f1, 0x240(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800cd520
    lfs     f0, 0x238(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800cd518
    lfs     f1, -0x5f1c(r2)
    b       branch_0x800cd59c

branch_0x800cd518:
    lfs     f1, -0x5f18(r2)
    b       branch_0x800cd59c

branch_0x800cd520:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800cd560
    lfs     f2, 0x238(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5f78(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5f14(r2)
    stw     r0, 0x27c(sp)
    lis     r0, 0x4330
    stw     r0, 0x278(sp)
    lfd     f1, 0x278(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800cd59c

branch_0x800cd560:
    fneg    f1, f1
    lfs     f2, 0x238(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5f78(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5f14(r2)
    stw     r0, 0x27c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5f10(r2)
    stw     r0, 0x278(sp)
    lfd     f2, 0x278(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800cd59c:
    lfs     f2, -0x5f80(r2)
    lfs     f3, -0x5f0c(r2)
    bl      MsWrap_f___Ffff_800cd95c
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x30(r31)
    stfs    f1, 0x34(r31)
    stfs    f0, 0x38(r31)
    lfs     f0, -0x5f08(r2)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x800cd614
    lfs     f1, 0x238(sp)
    lfs     f2, -0x5f48(r2)
    lfs     f0, -0x5f04(r2)
    fmuls   f1, f1, f2
    stfs    f1, 0x238(sp)
    lfs     f1, 0x23c(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x23c(sp)
    lfs     f0, 0x240(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x240(sp)
    lfs     f0, -0x5f00(r2)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
branch_0x800cd614:
    mr      r3, r31
    bl      setColorType__7TKillerFv
    lwz     r5, 0x238(sp)
    addi    r3, sp, 0xe4
    lwz     r0, 0x23c(sp)
    addi    r4, r30, 0x10
    stw     r5, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    lwz     r0, 0x240(sp)
    stw     r0, 0x1b0(r31)
    lwz     r5, 0x238(sp)
    lwz     r0, 0x23c(sp)
    stw     r5, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x240(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r6, R13Off_m0x60b4(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0xec(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xe4(sp)
    li      r5, 0x0
    lwz     r3, 0xe8(sp)
    li      r4, 0x285d
    stw     r0, 0x1e4(sp)
    lwz     r0, 0xec(sp)
    stw     r3, 0x1e8(sp)
    lfs     f2, 0x21c(sp)
    stw     r0, 0x1ec(sp)
    lfs     f1, 0x1e4(sp)
    lfs     f0, 0x1ec(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x21c(sp)
    lfs     f1, 0x224(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x224(sp)
    stw     r5, 0x150(sp)
    lwz     r3, 0x21c(sp)
    lwz     r0, 0x220(sp)
    stw     r3, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x224(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0x150(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x154(sp)
    lwz     r0, 0x158(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x15c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x150(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x154(sp)
    lwz     r0, 0x158(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x15c(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800cd74c
    addi    r4, r31, 0x10
    li      r3, 0x285d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800cd74c:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20a9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800cd930
    addi    r4, r31, 0x10
    li      r3, 0x20a9
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800cd930

branch_0x800cd780:
    lis     r4, unk_8037fb74@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_8037fb74@l
    addi    r4, r30, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r31, r3
    beq-    branch_0x800cd930
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x214(r30)
    addi    r3, sp, 0x1b4
    slwi    r0, r0, 2
    add     r4, r30, r0
    lwz     r4, 0x1ac(r4)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    addi    r0, r4, 0x30
    stw     r0, 0x1e0(r30)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, -0x5f80(r2)
    addi    r4, sp, 0x1b4
    lfs     f1, -0x5f38(r2)
    mr      r5, r4
    stfs    f0, 0x1c0(sp)
    lfs     f0, -0x5f34(r2)
    stfs    f1, 0x1d0(sp)
    stfs    f0, 0x1e0(sp)
    lwz     r3, 0x1e0(r30)
    bl      PSMTXConcat
    lfs     f2, 0x1e0(sp)
    addi    r5, r31, 0x10
    lfs     f1, 0x1d0(sp)
    li      r4, 0xcb
    lfs     f0, 0x1c0(sp)
    li      r6, 0x0
    stfs    f0, 0x10(r31)
    li      r8, 0x0
    li      r9, 0x0
    stfs    f1, 0x14(r31)
    li      r10, 0x0
    stfs    f2, 0x18(r31)
    lfs     f1, -0x5efc(r2)
    lfs     f0, 0x34(r31)
    lwz     r3, R13Off_m0x6070(r13)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x278(sp)
    lwz     r7, 0x27c(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800cd89c
    lfs     f3, -0x5f58(r2)
    lfs     f2, 0x24(r30)
    fmr     f4, f3
    lfs     f1, 0x28(r30)
    fmr     f5, f3
    lfs     f0, 0x2c(r30)
    fmuls   f3, f3, f2
    fmuls   f4, f4, f1
    stfs    f3, 0x154(r3)
    fmuls   f5, f5, f0
    stfs    f4, 0x158(r3)
    stfs    f5, 0x15c(r3)
    stfs    f3, 0x174(r3)
    stfs    f4, 0x178(r3)
    stfs    f5, 0x17c(r3)
branch_0x800cd89c:
    lwz     r3, 0x124(r31)
    addi    r4, sp, 0x1a8
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r4, 0x1a8(sp)
    mr      r3, r31
    lwz     r0, 0x1ac(sp)
    stw     r4, 0x248(r30)
    stw     r0, 0x24c(r30)
    lwz     r0, 0x1b0(sp)
    stw     r0, 0x250(r30)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x5f64(r2)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x144
    addi    r5, sp, 0x1a8
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x144(sp)
    mr      r3, r31
    lwz     r5, 0x148(sp)
    addi    r4, sp, 0x190
    stw     r0, 0x190(sp)
    lwz     r0, 0x14c(sp)
    stw     r5, 0x194(sp)
    stw     r0, 0x198(sp)
    lwz     r5, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r5, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r31)
    bl      shoot__7TIgaigaFRQ29JGeometry8TVec3_f_
branch_0x800cd930:
    lwz     r0, 0x2c4(sp)
    lfd     f31, 0x2b8(sp)
    lfd     f30, 0x2b0(sp)
    mtlr    r0
    lfd     f29, 0x2a8(sp)
    lfd     f28, 0x2a0(sp)
    lwz     r31, 0x29c(sp)
    lwz     r30, 0x298(sp)
    lwz     r29, 0x294(sp)
    addi    sp, sp, 0x2c0
    blr


.globl MsWrap_f___Ffff_800cd95c
MsWrap_f___Ffff_800cd95c: # 0x800cd95c
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800cd998
    fmr     f1, f2
    blr

branch_0x800cd970:
    b       branch_0x800cd978

branch_0x800cd974:
    fsubs   f1, f1, f0
branch_0x800cd978:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800cd974
    b       branch_0x800cd98c

branch_0x800cd988:
    fadds   f1, f1, f0
branch_0x800cd98c:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800cd988
    blr

branch_0x800cd998:
    fsubs   f0, f3, f2
    b       branch_0x800cd978

branch_0x800cd9a0:
    blr


.globl bombShoot__7TCannonFv
bombShoot__7TCannonFv: # 0x800cd9a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    lwz     r0, 0x1a4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800cdb54
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x10(r31)
    lfs     f1, 0x0(r3)
    lfs     f3, 0x8(r3)
    fsubs   f0, f1, f0
    lfs     f2, 0x18(r31)
    lfs     f1, -0x5f80(r2)
    fsubs   f2, f3, f2
    stfs    f0, 0x68(sp)
    stfs    f1, 0x6c(sp)
    stfs    f2, 0x70(sp)
    lfs     f0, 0x68(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800cda18
    lfs     f0, 0x70(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800cda18
    lfs     f0, -0x5f98(r2)
    stfs    f0, 0x68(sp)
branch_0x800cda18:
    addi    r3, sp, 0x68
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, -0x5ef8(r2)
    lfs     f0, -0x5ef4(r2)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x64(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x60(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, -0x5f80(r2)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfd     f5, -0x5f78(r2)
    fmr     f3, f1
    stw     r0, 0x78(sp)
    lfs     f2, -0x5f40(r2)
    addi    r3, sp, 0x30
    lfd     f0, 0x78(sp)
    lfs     f4, 0x60(sp)
    fsubs   f5, f0, f5
    lfs     f0, 0x34(r31)
    fmuls   f2, f2, f5
    fmuls   f2, f31, f2
    fadds   f2, f4, f2
    fadds   f2, f0, f2
    bl      MsMtxSetRotRPH__FPA4_ffff
    lwz     r3, 0x28c(r31)
    lfs     f1, 0x3d4(r3)
    stfs    f1, 0x6c(sp)
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x70(sp)
    lbz     r0, 0x21c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800cdae8
    lwz     r3, 0x1a4(r31)
    lfs     f2, 0x70(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x68(sp)
    stfs    f0, 0xac(r3)
    stfs    f1, 0xb0(r3)
    stfs    f2, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
    b       branch_0x800cdb24

branch_0x800cdae8:
    lwz     r4, 0x1a4(r31)
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x70(sp)
    stw     r0, 0xb4(r4)
    lwz     r0, 0xf0(r4)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r4)
    lwz     r30, 0x74(r4)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800cdb24:
    lwz     r3, 0x1a4(r31)
    mr      r4, r31
    lfs     f0, -0x5f6c(r2)
    li      r5, 0x6
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x1a4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800cdb54:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl bombSet__7TCannonFv
bombSet__7TCannonFv: # 0x800cdb70
    mflr    r0
    lis     r4, unk_8037f918@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    addi    r29, r4, unk_8037f918@l
    stw     r28, 0x68(sp)
    lfs     f1, -0x5f80(r2)
    lfs     f0, -0x5f98(r2)
    stfs    f1, 0x48(sp)
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x48(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x28c(r31)
    stw     r0, 0x64(sp)
    lis     r30, 0x4330
    lfd     f3, -0x5f78(r2)
    li      r0, 0x0
    stw     r30, 0x60(sp)
    lfs     f0, -0x5f40(r2)
    lfd     f2, 0x60(sp)
    lfs     f1, 0x48(sp)
    fsubs   f2, f2, f3
    lfs     f3, 0x3c0(r3)
    stb     r0, 0x21c(r31)
    fmuls   f0, f0, f2
    stw     r0, 0x1a4(r31)
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f3
    bge-    branch_0x800cdc24
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r29, 0x274
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr      r28, r3
    b       branch_0x800cdce4

branch_0x800cdc24:
    stw     r0, 0x3c(sp)
    li      r0, 0x64
    stw     r0, 0x40(sp)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    subf    r28, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5f78(r2)
    stw     r0, 0x64(sp)
    xoris   r0, r28, 0x8000
    lfs     f1, -0x5f40(r2)
    stw     r30, 0x60(sp)
    lwz     r3, 0x3c(sp)
    stw     r0, 0x5c(sp)
    lfd     f0, 0x60(sp)
    stw     r30, 0x58(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x58(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    add     r3, r3, r0
    srawi   r0, r3, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc   r0, r0, r3
    cmpwi   r0, 0x1
    bne-    branch_0x800cdccc
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r29, 0x288
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r28, r3
    beq-    branch_0x800cdce4
    mr      r3, r28
    bl      thrownByChorobei__5TPopoFv
    b       branch_0x800cdce4

branch_0x800cdccc:
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r31, 0x10
    addi    r5, r29, 0x29c
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr      r28, r3
branch_0x800cdce4:
    lwz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800cdd20
    cmplwi  r28, 0x0
    stw     r28, 0x1a4(r31)
    beq-    branch_0x800cdd20
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r28)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    bl      setFrameRate__6MActorFfi
branch_0x800cdd20:
    lwz     r7, 0x1a4(r31)
    cmplwi  r7, 0x0
    beq-    branch_0x800cddb0
    lwz     r6, 0x1a8(r31)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r7)
    stw     r0, 0x14(r7)
    lwz     r0, 0x18(r6)
    stw     r0, 0x18(r7)
    lwz     r3, 0x1a4(r31)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x220(r31)
    lwz     r3, 0x1a4(r31)
    lfs     f0, -0x5f80(r2)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r6, 0x1a4(r31)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x30(r6)
    stw     r0, 0x34(r6)
    lwz     r0, 0x38(r31)
    stw     r0, 0x38(r6)
    lwz     r3, 0x1a4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800cddb0
    lwz     r0, 0x1a4(r31)
    stw     r0, 0x6c(r31)
branch_0x800cddb0:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    lwz     r28, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl getTakingMtx__7TCannonFv
getTakingMtx__7TCannonFv: # 0x800cddd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800cde34
    lwz     r4, 0x1a8(r31)
    addi    r3, r31, 0x1e4
    lfs     f1, -0x5ef0(r2)
    lfs     f0, 0x14(r4)
    lfs     f29, 0x18(r4)
    fadds   f30, f1, f0
    lfs     f31, 0x10(r4)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x1f0(r31)
    addi    r3, r31, 0x1e4
    stfs    f30, 0x200(r31)
    stfs    f29, 0x210(r31)
    b       branch_0x800cde78

branch_0x800cde34:
    lwz     r6, 0x1a8(r31)
    addi    r3, r31, 0x1e4
    lbz     r0, R13Off_m0x7e07(r13)
    lwz     r5, 0x6c(r6)
    mulli   r4, r0, 0x30
    lfs     f31, 0x18(r6)
    lwz     r5, 0x18(r5)
    lfs     f29, 0x10(r6)
    lwz     r5, 0x4(r5)
    addi    r0, r4, 0x1c
    lwz     r4, 0x58(r5)
    lfsx    f30, r4, r0
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f29, 0x1f0(r31)
    addi    r3, r31, 0x1e4
    stfs    f30, 0x200(r31)
    stfs    f31, 0x210(r31)
branch_0x800cde78:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lfd     f29, 0x60(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x78
    blr


.globl calcRootMatrix__7TCannonFv
calcRootMatrix__7TCannonFv: # 0x800cde98
    mflr    r0
    lis     r4, unk_8037f918@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stw     r31, 0xf4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xf0(sp)
    addi    r30, r4, unk_8037f918@l
    stw     r29, 0xec(sp)
    stw     r28, 0xe8(sp)
    lbz     r0, R13Off_m0x69a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cdf04
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonObject@ha
    stw     r0, R13Off_m0x69a4(r13)
    addi    r0, r3, __vvt__18TNerveCannonObject@l
    lis     r4, __dt__18TNerveCannonObjectFv@ha
    stw     r0, R13Off_m0x69a4(r13)
    lis     r3, unk_803f1e5c@h
    addi    r5, r3, unk_803f1e5c@l
    addi    r4, r4, __dt__18TNerveCannonObjectFv@l
    addi    r3, r13, R13Off_m0x69a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69a8(r13)
branch_0x800cdf04:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x69a4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ce060
    lfs     f0, -0x5eec(r2)
    addi    r5, r31, 0x274
    addi    r6, r31, 0x268
    stfs    f0, 0xc0(r31)
    addi    r7, r31, 0x25c
    li      r4, 0x0
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xbc(sp)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    lfs     f0, 0xdc(r3)
    stfs    f0, 0xb8(sp)
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x25c(r31)
    stw     r0, 0x260(r31)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x264(r31)
    lfs     f2, -0x5ee8(r2)
    lfs     f1, 0x1e0(r30)
    lfs     f0, 0x25c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x25c(r31)
    lfs     f1, 0x1e4(r30)
    lfs     f0, 0x264(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x264(r31)
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x268(r31)
    stw     r0, 0x26c(r31)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x270(r31)
    lfs     f1, 0x1e8(r30)
    lfs     f0, 0x268(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x268(r31)
    lfs     f1, 0x1ec(r30)
    lfs     f0, 0x270(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x270(r31)
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x274(r31)
    stw     r0, 0x278(r31)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x27c(r31)
    lfs     f1, 0x1f0(r30)
    lfs     f0, 0x274(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x274(r31)
    lfs     f1, 0x1f4(r30)
    lfs     f0, 0x27c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x27c(r31)
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x280(r31)
    stw     r0, 0x284(r31)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x288(r31)
    lfs     f1, 0x1f8(r30)
    lfs     f0, 0x280(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x280(r31)
    lfs     f1, 0x1fc(r30)
    lfs     f0, 0x288(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x288(r31)
    lwz     r3, 0x258(r31)
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0x258(r31)
    addi    r5, r31, 0x25c
    addi    r6, r31, 0x280
    addi    r7, r31, 0x274
    li      r4, 0x1
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x800ce060:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800ce1b4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lbz     r0, R13Off_m0x69a8(r13)
    addi    r30, r3, 0x0
    extsb.  r0, r0
    bne-    branch_0x800ce0c4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonObject@ha
    stw     r0, R13Off_m0x69a4(r13)
    addi    r0, r3, __vvt__18TNerveCannonObject@l
    lis     r4, __dt__18TNerveCannonObjectFv@ha
    stw     r0, R13Off_m0x69a4(r13)
    lis     r3, unk_803f1e5c@h
    addi    r5, r3, unk_803f1e5c@l
    addi    r4, r4, __dt__18TNerveCannonObjectFv@l
    addi    r3, r13, R13Off_m0x69a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69a8(r13)
branch_0x800ce0c4:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x69a4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ce10c
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f2, 0x2c(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0xc(r30)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    b       branch_0x800ce1bc

branch_0x800ce10c:
    lwz     r4, R13Off_m0x6048(r13)
    li      r3, 0x1
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x3
    beq-    branch_0x800ce12c
    cmplwi  r0, 0x4
    beq-    branch_0x800ce12c
    li      r3, 0x0
branch_0x800ce12c:
    clrlwi. r0, r3, 24
    beq-    branch_0x800ce13c
    lfs     f0, -0x5ee4(r2)
    stfs    f0, 0x34(r31)
branch_0x800ce13c:
    lfs     f2, 0x2c(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0xc(r30)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lfs     f0, 0x38(r31)
    lfs     f2, -0x5efc(r2)
    lfs     f1, 0x34(r31)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r31)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lwz     r3, 0x4(r3)
    fctiwz  f5, f2
    lfs     f3, 0x18(r31)
    fctiwz  f0, f0
    stfd    f5, 0xe0(sp)
    addi    r3, r3, 0x20
    lfs     f2, 0x14(r31)
    stfd    f4, 0xd8(sp)
    lfs     f1, 0x10(r31)
    stfd    f0, 0xd0(sp)
    lwz     r4, 0xe4(sp)
    lwz     r5, 0xdc(sp)
    lwz     r6, 0xd4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    b       branch_0x800ce1bc

branch_0x800ce1b4:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x800ce1bc:
    lwz     r3, 0x1a8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800ce304
    lwz     r3, 0x6c(r3)
    li      r4, 0xe
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ce304
    lwz     r3, 0x1a8(r31)
    li      r4, 0x0
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5f6c(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800ce304
    li      r28, 0x0
    li      r30, 0x0
branch_0x800ce20c:
    addi    r29, r30, 0x1ac
    add     r29, r31, r29
    lwz     r3, 0x0(r29)
    bl      getConnectedMtx__12TSharedPartsCFv
    lfs     f2, 0x2c(r3)
    li      r4, 0x2
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x294(r31)
    stfs    f1, 0x298(r31)
    stfs    f2, 0x29c(r31)
    lwz     r29, 0x0(r29)
    lwz     r3, 0x18(r29)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x10(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800ce268
    li      r0, 0x0
    b       branch_0x800ce26c

branch_0x800ce268:
    lwz     r0, 0x8(r3)
branch_0x800ce26c:
    stw     r0, 0x20(r29)
    lwz     r3, 0x20(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800ce298
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr      r4, r3
    lwz     r3, 0x1c(r29)
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x800ce2ac

branch_0x800ce298:
    lwz     r3, 0x1c(r29)
    li      r4, 0x0
    lfs     f1, -0x5f80(r2)
    li      r5, 0x1
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x800ce2ac:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x294
    li      r4, 0x14
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x294
    li      r4, 0x13
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x294
    li      r4, 0x12
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    addi    r28, r28, 0x1
    cmpwi   r28, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x800ce20c
branch_0x800ce304:
    lwz     r0, 0xfc(sp)
    lwz     r31, 0xf4(sp)
    lwz     r30, 0xf0(sp)
    mtlr    r0
    lwz     r29, 0xec(sp)
    lwz     r28, 0xe8(sp)
    addi    sp, sp, 0xf8
    blr


.globl perform__7TCannonFUlPQ26JDrama9TGraphics
perform__7TCannonFUlPQ26JDrama9TGraphics: # 0x800ce324
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stfd    f31, 0x180(sp)
    stfd    f30, 0x178(sp)
    stfd    f29, 0x170(sp)
    stfd    f28, 0x168(sp)
    stfd    f27, 0x160(sp)
    stfd    f26, 0x158(sp)
    stfd    f25, 0x150(sp)
    stfd    f24, 0x148(sp)
    stmw    r21, 0x11c(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lbz     r0, 0x238(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800ce4b0
    lwz     r3, 0x1bc(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r3, 0x18(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x800ce3b0
    lwz     r3, 0x1bc(r29)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800ce3b0
    li      r0, 0x0
    stb     r0, 0x238(r29)
branch_0x800ce3b0:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800ce4b0
    lbz     r0, 0x230(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x800ce4b0
    lwz     r3, 0x1bc(r29)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5ee0(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800ce46c
    lwz     r5, 0x1b8(r29)
    li      r4, 0xe8
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x18(r5)
    li      r7, 0x0
    lwz     r5, 0x4(r5)
    lwz     r21, 0x58(r5)
    mr      r5, r21
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r21, 0x0
    li      r4, 0xe9
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r21, 0x0
    li      r4, 0xea
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r21, 0x0
    li      r4, 0xeb
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r21, 0x0
    li      r4, 0xec
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800ce46c:
    lwz     r3, 0x1bc(r29)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5edc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ce4b0
    lwz     r5, 0x1bc(r29)
    mr      r7, r29
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x166
    lwz     r5, 0x18(r5)
    li      r6, 0x1
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800ce4b0:
    lbz     r0, 0x230(r29)
    cmplwi  r0, 0x5
    beq-    branch_0x800ce4c4
    cmplwi  r0, 0x9
    bne-    branch_0x800ce764
branch_0x800ce4c4:
    lwz     r3, 0x1a8(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x800ce570
    lbz     r0, R13Off_m0x69b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ce52c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonDamage@ha
    stw     r0, R13Off_m0x69b4(r13)
    addi    r0, r3, __vvt__18TNerveCannonDamage@l
    lis     r4, __dt__18TNerveCannonDamageFv@ha
    stw     r0, R13Off_m0x69b4(r13)
    lis     r3, unk_803f1e44@h
    addi    r5, r3, unk_803f1e44@l
    addi    r4, r4, __dt__18TNerveCannonDamageFv@l
    addi    r3, r13, R13Off_m0x69b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69b8(r13)
branch_0x800ce52c:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x69b4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ce570
    lwz     r3, 0x1a8(r29)
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    bl      offMakeDL__6MActorFv
    lwz     r3, 0x1a8(r29)
    addi    r5, r31, 0x0
    addi    r4, r29, 0x10
    lwz     r3, 0x6c(r3)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
branch_0x800ce570:
    lis     r6, __vvt__24TNerveBase_10TLiveActor_@ha
    lfs     f26, -0x5f80(r2)
    lis     r5, __vvt__18TNerveCannonObject@ha
    lfs     f27, -0x5ecc(r2)
    lis     r4, __dt__18TNerveCannonObjectFv@ha
    lfs     f28, -0x5f98(r2)
    lis     r3, unk_803f1e5c@h
    lfs     f29, -0x5f0c(r2)
    lfs     f30, -0x5efc(r2)
    addi    r25, r6, __vvt__24TNerveBase_10TLiveActor_@l
    lfs     f31, -0x5ed8(r2)
    addi    r26, r5, __vvt__18TNerveCannonObject@l
    lfs     f24, -0x5ed4(r2)
    lfs     f25, -0x5ed0(r2)
    addi    r27, r4, __dt__18TNerveCannonObjectFv@l
    addi    r28, r3, unk_803f1e5c@l
    li      r23, 0x0
    li      r22, 0x0
branch_0x800ce5b8:
    add     r21, r29, r22
    addi    r24, r21, 0x1ac
    lwz     r4, 0x1ac(r21)
    lbz     r0, 0x24(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x800ce750
    cmplwi  r30, 0x1
    bne-    branch_0x800ce734
    lwz     r3, 0x28c(r29)
    lfs     f0, 0x134(r29)
    lfs     f1, 0x2f8(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ce700
    lbz     r0, 0x230(r29)
    cmplwi  r0, 0x5
    bne-    branch_0x800ce700
    lfs     f0, 0x224(r21)
    stfs    f0, 0x2c(r4)
    lwz     r0, 0x214(r29)
    cmpw    r23, r0
    beq-    branch_0x800ce734
    lbz     r0, R13Off_m0x69a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ce63c
    stw     r25, R13Off_m0x69a4(r13)
    addi    r3, r13, R13Off_m0x69a4
    addi    r4, r27, 0x0
    stw     r26, R13Off_m0x69a4(r13)
    addi    r5, r28, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69a8(r13)
branch_0x800ce63c:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x69a4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ce734
    lwz     r3, 0x0(r24)
    lfs     f0, 0x30(r3)
    fadds   f0, f0, f28
    stfs    f0, 0x30(r3)
    lwz     r3, 0x0(r24)
    lfsu    f0, 0x30(r3)
    fcmpo   cr0, f0, f29
    ble-    branch_0x800ce678
    fsubs   f0, f0, f29
    stfs    f0, 0x0(r3)
branch_0x800ce678:
    cmpwi   r23, 0x2
    bne-    branch_0x800ce6c0
    lwz     r5, 0x0(r24)
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f0, 0x30(r5)
    lwz     r4, R13Off_m0x5ea8(r13)
    fmuls   f0, f31, f0
    fmuls   f0, f30, f0
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r3, 0x114(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f24, f0
    stfs    f0, 0x28(r5)
    b       branch_0x800ce734

branch_0x800ce6c0:
    lwz     r5, 0x0(r24)
    lwz     r0, R13Off_m0x5eac(r13)
    lfs     f0, 0x30(r5)
    lwz     r4, R13Off_m0x5ea8(r13)
    fmuls   f0, f31, f0
    fmuls   f0, f30, f0
    fctiwz  f0, f0
    stfd    f0, 0x110(sp)
    lwz     r3, 0x114(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f25, f0
    stfs    f0, 0x28(r5)
    b       branch_0x800ce734

branch_0x800ce700:
    stfs    f26, 0x30(r4)
    lwz     r3, 0x0(r24)
    lfs     f0, 0x28(r3)
    fmuls   f0, f0, f27
    stfs    f0, 0x28(r3)
    lwz     r3, 0x0(r24)
    bl      getConnectedMtx__12TSharedPartsCFv
    mr      r4, r3
    lwz     r3, 0x1c0(r21)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x800ce734:
    lwz     r3, 0x0(r24)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800ce750:
    addi    r23, r23, 0x1
    cmpwi   r23, 0x3
    addi    r22, r22, 0x4
    blt+    branch_0x800ce5b8
    b       branch_0x800ce78c

branch_0x800ce764:
    lwz     r3, 0x1b8(r29)
    lbz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800ce78c
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800ce78c:
    lmw     r21, 0x11c(sp)
    lwz     r0, 0x18c(sp)
    lfd     f31, 0x180(sp)
    lfd     f30, 0x178(sp)
    mtlr    r0
    lfd     f29, 0x170(sp)
    lfd     f28, 0x168(sp)
    lfd     f27, 0x160(sp)
    lfd     f26, 0x158(sp)
    lfd     f25, 0x150(sp)
    lfd     f24, 0x148(sp)
    addi    sp, sp, 0x188
    blr


.globl getBasNameTable__7TCannonCFv
getBasNameTable__7TCannonCFv: # 0x800ce7c0
    lis     r3, cannon_bastable@ha
    addi    r3, r3, cannon_bastable@l
    blr


.globl receiveMessage__7TCannonFP9THitActorUl
receiveMessage__7TCannonFP9THitActorUl: # 0x800ce7cc
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xc000
    cmplwi  r0, 0x235
    bne-    branch_0x800ce7fc
    cmplwi  r5, 0x4
    bne-    branch_0x800ce7fc
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800ce7fc
    stw     r4, 0x68(r3)
    li      r3, 0x1
    blr

branch_0x800ce7fc:
    cmplwi  r5, 0xf
    bne-    branch_0x800ce80c
    li      r3, 0x1
    blr

branch_0x800ce80c:
    li      r3, 0x0
    blr


.globl moveObject__7TCannonFv
moveObject__7TCannonFv: # 0x800ce814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    bl      moveObject__11TSmallEnemyFv
    lbz     r0, 0x230(r31)
    cmplwi  r0, 0x5
    beq-    branch_0x800ce844
    cmplwi  r0, 0x9
    bne-    branch_0x800cead8
branch_0x800ce844:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800ce870
    lwz     r4, 0x1a8(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    b       branch_0x800ce8b4

branch_0x800ce870:
    lbz     r30, R13Off_m0x7e08(r13)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, 0x1a8(r31)
    add     r4, r4, r0
    lfs     f0, 0xc(r4)
    stfs    f0, 0x10(r3)
    lfs     f1, 0x1c(r4)
    lfs     f0, -0x5ec8(r2)
    lwz     r3, 0x1a8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f0, 0x2c(r4)
    lwz     r3, 0x1a8(r31)
    stfs    f0, 0x18(r3)
branch_0x800ce8b4:
    lwz     r3, 0x1a8(r31)
    bl      checkHit__9TChorobeiFv
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x60(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x240(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ce944
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    stfs    f0, 0x6c(sp)
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x6c(sp)
    stw     r0, 0xb4(r31)
    lfs     f0, 0x240(r31)
    stfs    f0, 0x14(r31)
branch_0x800ce944:
    lwz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800cead8
    lwz     r4, 0x1a8(r31)
    addi    r3, sp, 0x28
    lwz     r5, 0x194(r31)
    lwz     r0, 0x198(r31)
    addi    r4, r4, 0x10
    stw     r5, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x19c(r31)
    stw     r0, 0x30(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x1a0(r31)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x30(sp)
    stw     r0, 0x18(r4)
    lwz     r3, 0x1a0(r31)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r3)
    lbz     r0, R13Off_m0x69c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800ce9e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveCannonClose@ha
    stw     r0, R13Off_m0x69bc(r13)
    addi    r0, r3, __vvt__17TNerveCannonClose@l
    lis     r4, __dt__17TNerveCannonCloseFv@ha
    stw     r0, R13Off_m0x69bc(r13)
    lis     r3, unk_803f1e38@h
    addi    r5, r3, unk_803f1e38@l
    addi    r4, r4, __dt__17TNerveCannonCloseFv@l
    addi    r3, r13, R13Off_m0x69bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69c0(r13)
branch_0x800ce9e8:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x69bc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800cea1c
    lwz     r3, 0x1a0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x1a0(r31)
    b       branch_0x800cead8

branch_0x800cea1c:
    lwz     r3, 0x1a0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x19c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800cead8
    li      r0, 0x0
    stw     r0, 0x1a0(r31)
    lbz     r0, R13Off_m0x69b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cea80
    addi    r3, r13, R13Off_m0x69b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__18TNerveCannonDamage@ha
    addi    r0, r3, __vvt__18TNerveCannonDamage@l
    lis     r4, __dt__18TNerveCannonDamageFv@ha
    stw     r0, R13Off_m0x69b4(r13)
    lis     r3, unk_803f1e44@h
    addi    r5, r3, unk_803f1e44@l
    addi    r4, r4, __dt__18TNerveCannonDamageFv@l
    addi    r3, r13, R13Off_m0x69b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69b8(r13)
branch_0x800cea80:
    addi    r6, r13, R13Off_m0x69b4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800cead8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ceacc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ceacc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ceacc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800cead8:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl reset__7TCannonFv
reset__7TCannonFv: # 0x800ceaf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      reset__11TSmallEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800ceb40
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800ceb44

branch_0x800ceb40:
    li      r0, 0x1
branch_0x800ceb44:
    stb     r0, 0x13c(r31)
    li      r0, 0x1
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    stw     r0, 0x214(r31)
    lfs     f0, -0x5ec4(r2)
    stfs    f0, 0xc0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x2ac(r31)
    lbz     r0, 0x230(r31)
    cmplwi  r0, 0x9
    bne-    branch_0x800cec04
    li      r4, 0x0
    stb     r4, 0x239(r31)
    lfs     f0, -0x5ec0(r2)
    lfs     f1, -0x5ebc(r2)
    stfs    f0, 0x28(sp)
    lfs     f0, -0x5eb8(r2)
    stfs    f1, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stw     r4, 0x18(sp)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x30(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x800cec04:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl init__7TCannonFP12TLiveManager
init__7TCannonFP12TLiveManager: # 0x800cec18
    mflr    r0
    lis     r5, unk_8037f918@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stmw    r23, 0x17c(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, unk_8037f918@l
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, unk_1000001c@h
    addi    r0, r3, unk_1000001c@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x28c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x2b4
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r26, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800cecb0
    addi    r3, r26, 0x0
    lis     r4, 0x1005
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800cecb0:
    lfs     f0, 0x34(r31)
    lis     r3, gpApplication@ha
    addi    r3, r3, gpApplication@l
    stfs    f0, 0x234(r31)
    mr      r29, r24
    lbz     r0, 0xe(r3)
    stb     r0, 0x230(r31)
    lbz     r0, 0x230(r31)
    cmplwi  r0, 0x5
    beq-    branch_0x800cece0
    cmplwi  r0, 0x9
    bne-    branch_0x800cf068
branch_0x800cece0:
    lbz     r0, R13Off_m0x69d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ced24
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonSearch@ha
    stw     r0, R13Off_m0x69d4(r13)
    addi    r0, r3, __vvt__18TNerveCannonSearch@l
    lis     r4, __dt__18TNerveCannonSearchFv@ha
    stw     r0, R13Off_m0x69d4(r13)
    lis     r3, unk_803f1e14@h
    addi    r5, r3, unk_803f1e14@l
    addi    r4, r4, __dt__18TNerveCannonSearchFv@l
    addi    r3, r13, R13Off_m0x69d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69d8(r13)
branch_0x800ced24:
    lwz     r3, 0x8c(r31)
    li      r4, 0x0
    addi    r0, r13, R13Off_m0x69d4
    stw     r4, 0x8(r3)
    stw     r4, 0x20(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r4, 0x1c(r3)
    lbz     r0, 0x230(r31)
    cmplwi  r0, 0x9
    bne-    branch_0x800cedd0
    stb     r4, 0x239(r31)
    lfs     f0, -0x5ec0(r2)
    lfs     f1, -0x5ebc(r2)
    stfs    f0, 0x168(sp)
    lfs     f0, -0x5eb8(r2)
    stfs    f1, 0x16c(sp)
    stfs    f0, 0x170(sp)
    stw     r4, 0x154(sp)
    lwz     r3, 0x168(sp)
    lwz     r0, 0x16c(sp)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0x170(sp)
    stw     r0, 0x160(sp)
    lwz     r0, 0x154(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x158(sp)
    lwz     r0, 0x15c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x160(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x154(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x158(sp)
    lwz     r0, 0x15c(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x160(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    b       branch_0x800cee50

branch_0x800cedd0:
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x5f80(r2)
    stw     r3, 0x144(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x148(sp)
    stfs    f0, 0x14c(sp)
    stfs    f0, 0x150(sp)
    beq-    branch_0x800cee08
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x148(sp)
    stfs    f1, 0x14c(sp)
    stfs    f2, 0x150(sp)
branch_0x800cee08:
    lwz     r3, 0x144(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x148(sp)
    lwz     r3, 0x14c(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x150(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x144(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x148(sp)
    lwz     r3, 0x14c(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x150(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x800cee50:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800cee74
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    addi    r6, r30, 0x2d4
    li      r5, 0x0
    bl      __ct__9TChorobeiFP7TCannoniPCc
branch_0x800cee74:
    stw     r24, 0x1a8(r31)
    li      r7, 0x0
    lwz     r3, 0x1a8(r31)
    lwz     r4, 0x6c(r3)
    lwz     r6, 0x18(r4)
    b       branch_0x800cee90

branch_0x800cee8c:
    addi    r7, r7, 0x1
branch_0x800cee90:
    lwz     r4, 0x4(r6)
    clrlwi  r5, r7, 24
    lwz     r4, 0x4(r4)
    lhz     r0, 0x1c(r4)
    cmpw    r5, r0
    blt+    branch_0x800cee8c
    lwz     r6, 0x28c(r31)
    lis     r4, unk_1000001d@h
    addi    r4, r4, unk_1000001d@l
    lfs     f2, 0x370(r6)
    li      r5, 0x3
    lfs     f1, 0x35c(r6)
    lfs     f3, 0x384(r6)
    lfs     f4, 0x398(r6)
    lis     r6, 0x9000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x2e0
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x2e0
    mtlr    r12
    blrl
    addi    r27, r3, 0x10
    addi    r3, sp, 0xc8
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xc8(sp)
    addi    r3, sp, 0x118
    addi    r4, sp, 0xc4
    stw     r0, 0xc4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x118(sp)
    addi    r5, sp, 0xdc
    addi    r4, r27, 0x0
    stw     r0, 0x114(sp)
    addi    r3, sp, 0xd8
    addi    r6, r31, 0x1a8
    lwz     r0, 0x114(sp)
    stw     r0, 0xdc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x74(r31)
    lis     r3, sCannonDomPartsJointTable_3045@ha
    addi    r27, r3, sCannonDomPartsJointTable_3045@l
    lwz     r3, 0x4(r4)
    li      r24, 0x0
    li      r28, 0x0
    lwz     r3, 0x4(r3)
    lwz     r25, 0xb0(r3)
branch_0x800cef64:
    add     r3, r27, r28
    lwz     r4, 0x0(r3)
    mr      r3, r25
    bl      getIndex__10JUTNameTabCFPCc
    addi    r26, r3, 0x0
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cefa4
    addi    r3, r23, 0x0
    addi    r4, r31, 0x0
    addi    r5, r26, 0x0
    addi    r6, r29, 0x0
    li      r7, 0x3
    addi    r8, r2, R2Off_m0x5eb4
    bl      __ct__10TCannonDomFP10TLiveActoriP12SDLModelDataUlPCc
branch_0x800cefa4:
    add     r26, r31, r28
    stw     r23, 0x1ac(r26)
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cefc4
    mr      r3, r23
    bl      __ct__17TMapCollisionMoveFv
branch_0x800cefc4:
    stwu    r23, 0x1c0(r26)
    addi    r6, r31, 0x0
    addi    r4, r30, 0x2ec
    lwz     r3, 0x0(r26)
    li      r5, 0x2
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r26)
    addi    r4, r31, 0x10
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    cmpwi   r24, 0x3
    addi    r28, r28, 0x4
    blt+    branch_0x800cef64
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cf028
    mr      r3, r23
    bl      __ct__17TMapCollisionMoveFv
branch_0x800cf028:
    stw     r23, 0x2b0(r31)
    addi    r6, r31, 0x0
    addi    r4, r30, 0x300
    lwz     r3, 0x2b0(r31)
    li      r5, 0x2
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x2b0(r31)
    addi    r4, r31, 0x10
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x800cf124

branch_0x800cf068:
    lbz     r0, R13Off_m0x69a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cf0ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveCannonObject@ha
    stw     r0, R13Off_m0x69a4(r13)
    addi    r0, r3, __vvt__18TNerveCannonObject@l
    lis     r4, __dt__18TNerveCannonObjectFv@ha
    stw     r0, R13Off_m0x69a4(r13)
    lis     r3, unk_803f1e5c@h
    addi    r5, r3, unk_803f1e5c@l
    addi    r4, r4, __dt__18TNerveCannonObjectFv@l
    addi    r3, r13, R13Off_m0x69a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69a8(r13)
branch_0x800cf0ac:
    lwz     r5, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x69a4
    stw     r3, 0x8(r5)
    addi    r4, r2, R2Off_m0x5fa0
    stw     r3, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r3, 0x1c(r5)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r24, r3, 0x0
    li      r3, 0x34
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cf114
    addi    r3, r23, 0x0
    addi    r4, r31, 0x0
    addi    r5, r24, 0x0
    addi    r6, r29, 0x0
    li      r7, 0x3
    addi    r8, r2, R2Off_m0x5eb4
    bl      __ct__10TCannonDomFP10TLiveActoriP12SDLModelDataUlPCc
branch_0x800cf114:
    stw     r23, 0x1b8(r31)
    li      r0, 0x1
    lwz     r3, 0x1b8(r31)
    stb     r0, 0x24(r3)
branch_0x800cf124:
    addi    r3, r30, 0x314
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r26, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cf158
    addi    r3, r26, 0x0
    lis     r4, 0x1001
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800cf158:
    addi    r26, r23, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cf188
    addi    r3, r23, 0x0
    addi    r4, r31, 0x0
    addi    r6, r26, 0x0
    addi    r8, r30, 0x334
    li      r5, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x800cf188:
    stw     r23, 0x1bc(r31)
    li      r24, 0x0
    b       branch_0x800cf198

branch_0x800cf194:
    addi    r24, r24, 0x1
branch_0x800cf198:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r24, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800cf194
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800cf1cc
    mr      r3, r23
    bl      __ct__17TMapCollisionMoveFv
branch_0x800cf1cc:
    stw     r23, 0x258(r31)
    li      r4, 0x2
    li      r5, 0x0
    lwz     r3, 0x258(r31)
    li      r6, 0x0
    li      r7, 0x0
    bl      init__17TMapCollisionMoveFUlUssPC10TLiveActor
    lmw     r23, 0x17c(sp)
    lwz     r0, 0x1a4(sp)
    addi    sp, sp, 0x1a0
    mtlr    r0
    blr


.globl loadAfter__7TCannonFv
loadAfter__7TCannonFv: # 0x800cf1fc
    mflr    r0
    lis     r4, gParticleFlagLoaded@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, gParticleFlagLoaded@l
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0xe8
    lbz     r0, 0xe8(r4)
    lis     r4, unk_8037f918@ha
    addi    r31, r4, unk_8037f918@l
    cmplwi  r0, 0x0
    bne-    branch_0x800cf250
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x344
    li      r5, 0xe8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x800cf250:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0xe9
    lbz     r0, 0xe9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800cf280
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x368
    li      r5, 0xe9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x800cf280:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0xea
    lbz     r0, 0xea(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800cf2b0
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x38c
    li      r5, 0xea
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x800cf2b0:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0xeb
    lbz     r0, 0xeb(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800cf2e0
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x3b0
    li      r5, 0xeb
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x800cf2e0:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0xec
    lbz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800cf310
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x3d4
    li      r5, 0xec
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x800cf310:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r29, r3, 0x166
    lbz     r0, 0x166(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800cf340
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x3f8
    li      r5, 0x166
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x800cf340:
    lbz     r0, 0x230(r30)
    cmplwi  r0, 0x5
    bne-    branch_0x800cf390
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x420
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x420
    mtlr    r12
    blrl
    stw     r3, 0x254(r30)
    lwz     r3, 0x254(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800cf390:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl load__7TCannonFR20JSUMemoryInputStream
load__7TCannonFR20JSUMemoryInputStream: # 0x800cf3ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800cf410
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800cf414

branch_0x800cf410:
    li      r0, 0x1
branch_0x800cf414:
    lis     r3, gpApplication@ha
    stb     r0, 0x13c(r31)
    addi    r3, r3, gpApplication@l
    lbz     r0, 0xe(r3)
    stb     r0, 0x230(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x23c(r31)
    stw     r0, 0x240(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x244(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__7TCannonFPCc
__ct__7TCannonFPCc: # 0x800cf454
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__7TCannon@ha
    lwz     r30, 0x8(sp)
    addi    r3, r3, __vvt__7TCannon@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    stw     r0, 0x20(r30)
    li      r31, 0x0
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    stw     r31, 0x1a0(r30)
    li      r0, 0x1
    addi    r3, r30, 0x25c
    stw     r31, 0x1a8(r30)
    li      r5, 0x0
    li      r6, 0xc
    stw     r31, 0x1b8(r30)
    li      r7, 0x4
    stw     r31, 0x1e0(r30)
    stw     r31, 0x214(r30)
    stw     r31, 0x218(r30)
    stb     r31, 0x21c(r30)
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x220(r30)
    stb     r0, 0x230(r30)
    stb     r31, 0x238(r30)
    stb     r0, 0x239(r30)
    stw     r31, 0x254(r30)
    stw     r31, 0x258(r30)
    bl      __construct_array
    stb     r31, 0x290(r30)
    mr      r3, r30
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x2ac(r30)
    stfs    f0, 0x224(r30)
    stfs    f0, 0x228(r30)
    stfs    f0, 0x22c(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TCannonDomFUlPQ26JDrama9TGraphics
perform__10TCannonDomFUlPQ26JDrama9TGraphics: # 0x800cf51c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x58(sp)
    mr      r28, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 29
    bne-    branch_0x800cf5f4
    cmplwi  r29, 0x2
    bne-    branch_0x800cf5e4
    lwz     r0, 0x1c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x800cf5a0
    lwz     r0, 0x20(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x800cf5a0
    lwz     r3, 0x18(r28)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r4, 0x10(r28)
    li      r5, 0x0
    lfs     f2, 0xc(r3)
    li      r6, 0x4
    lfs     f1, 0x10(r3)
    lwz     r3, 0x1c(r28)
    addi    r4, r4, 0x10
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
branch_0x800cf5a0:
    mr      r3, r28
    bl      getConnectedMtx__12TSharedPartsCFv
    lfs     f1, 0x28(r28)
    mr      r31, r3
    lfs     f2, 0x2c(r28)
    addi    r3, sp, 0x28
    lfs     f3, -0x5f80(r2)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x28
    bl      PSMTXConcat
    lwz     r4, 0x18(r28)
    mr      r3, r31
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x800cf5e4:
    lwz     r3, 0x18(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800cf5f4:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl __ct__10TCannonDomFP10TLiveActoriP12SDLModelDataUlPCc
__ct__10TCannonDomFP10TLiveActoriP12SDLModelDataUlPCc: # 0x800cf614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
    lis     r3, __vvt__10TCannonDom@ha
    lwz     r31, 0x8(sp)
    addi    r0, r3, __vvt__10TCannonDom@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    stw     r0, 0x1c(r31)
    stw     r0, 0x20(r31)
    stb     r0, 0x24(r31)
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x30(sp)
    lfs     f0, -0x5f0c(r2)
    stfs    f0, 0x34(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x30(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5f78(r2)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5f40(r2)
    stw     r0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800cf6cc
    mr      r3, r31
    b       branch_0x800cf708

branch_0x800cf6cc:
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800cf6e8
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r30
    bl      __ct__9MAnmSoundFP6MSound
branch_0x800cf6e8:
    lwz     r31, 0x8(sp)
    li      r4, 0x0
    li      r5, 0x1
    stw     r30, 0x1c(r31)
    lwz     r3, 0x1c(r31)
    lfs     f1, -0x5f80(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    mr      r3, r31
branch_0x800cf708:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl receiveMessage__9TChorobeiFP9THitActorUl
receiveMessage__9TChorobeiFP9THitActorUl: # 0x800cf724
    li      r3, 0x0
    blr


.globl checkHit__9TChorobeiFv
checkHit__9TChorobeiFv: # 0x800cf72c
    mflr    r0
    lis     r4, __dt__18TNerveCannonDamageFv@ha
    stw     r0, 0x4(sp)
    lis     r6, unk_803f1e08@h
    lis     r5, __vvt__24TNerveBase_10TLiveActor_@ha
    stwu    sp, -0x60(sp)
    stmw    r21, 0x34(sp)
    addi    r29, r4, __dt__18TNerveCannonDamageFv@l
    lis     r4, __vvt__18TNerveCannonDamage@ha
    addi    r22, r3, 0x0
    addi    r28, r29, 0x0
    addi    r27, r6, unk_803f1e08@l
    addi    r30, r5, __vvt__24TNerveBase_10TLiveActor_@l
    addi    r31, r4, __vvt__18TNerveCannonDamage@l
    li      r24, 0x0
    li      r21, 0x0
    b       branch_0x800cf998

branch_0x800cf770:
    lwz     r3, 0x44(r22)
    lwzx    r4, r3, r21
    lwz     r3, 0x4c(r4)
    addi    r23, r4, 0x0
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800cf794
    li      r0, 0x1
    b       branch_0x800cf798

branch_0x800cf794:
    li      r0, 0x0
branch_0x800cf798:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cf7ac
    addi    r3, r22, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800cf7ac:
    lwz     r3, 0x4c(r23)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1e
    bne-    branch_0x800cf7c4
    li      r0, 0x1
    b       branch_0x800cf7c8

branch_0x800cf7c4:
    li      r0, 0x0
branch_0x800cf7c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cf8c0
    lbz     r0, R13Off_m0x69b8(r13)
    lwz     r26, 0x68(r22)
    extsb.  r0, r0
    bne-    branch_0x800cf800
    stw     r30, R13Off_m0x69b4(r13)
    addi    r3, r13, R13Off_m0x69b4
    addi    r4, r28, 0x0
    stw     r31, R13Off_m0x69b4(r13)
    addi    r5, r27, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69b8(r13)
branch_0x800cf800:
    lwz     r3, 0x8c(r26)
    addi    r25, r13, R13Off_m0x69b4
    lwz     r0, 0x14(r3)
    cmplw   r0, r25
    beq-    branch_0x800cf8c0
    mr      r3, r23
    bl      isDamageToCannon__8TBombHeiFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800cf8c0
    lbz     r0, R13Off_m0x69b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cf854
    addi    r3, r13, R13Off_m0x69b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r31, R13Off_m0x69b4(r13)
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    addi    r5, r27, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69b8(r13)
branch_0x800cf854:
    addi    r6, r13, R13Off_m0x69b4
    lwz     r5, 0x8c(r26)
    cmplwi  r6, 0x0
    beq-    branch_0x800cf8ac
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800cf8a0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800cf8a0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800cf8a0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800cf8ac:
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800cf8c0:
    lwz     r3, 0x4c(r23)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1f
    bne-    branch_0x800cf8d8
    li      r0, 0x1
    b       branch_0x800cf8dc

branch_0x800cf8d8:
    li      r0, 0x0
branch_0x800cf8dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800cf990
    mr      r3, r23
    bl      isRollFly__7TKillerFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800cf990
    lbz     r0, R13Off_m0x69b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cf920
    stw     r30, R13Off_m0x69b4(r13)
    addi    r3, r13, R13Off_m0x69b4
    addi    r4, r29, 0x0
    stw     r31, R13Off_m0x69b4(r13)
    addi    r5, r27, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x69b8(r13)
branch_0x800cf920:
    lwz     r3, 0x68(r22)
    addi    r5, r13, R13Off_m0x69b4
    cmplwi  r5, 0x0
    lwz     r6, 0x8c(r3)
    beq-    branch_0x800cf97c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800cf970
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x800cf970
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x800cf970:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x800cf97c:
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800cf990:
    addi    r24, r24, 0x1
    addi    r21, r21, 0x4
branch_0x800cf998:
    lhz     r0, 0x48(r22)
    cmpw    r24, r0
    blt+    branch_0x800cf770
    lmw     r21, 0x34(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl perform__9TChorobeiFUlPQ26JDrama9TGraphics
perform__9TChorobeiFUlPQ26JDrama9TGraphics: # 0x800cf9b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x7c(sp)
    mr      r29, r3
    lwz     r3, 0x68(r3)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 29
    bne-    branch_0x800cfac4
    lfs     f1, 0x70(r29)
    lfs     f0, -0x5f80(r2)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800cfac4
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800cfaa0
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800cfa48
    lwz     r0, 0x78(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800cfa48
    lwz     r3, 0x6c(r29)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0xc(r3)
    addi    r4, r29, 0x10
    lfs     f1, 0x10(r3)
    li      r5, 0x0
    lwz     r3, 0x74(r29)
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
branch_0x800cfa48:
    lwz     r3, 0x6c(r29)
    bl      getConnectedMtx__12TSharedPartsCFv
    addi    r4, sp, 0x44
    bl      PSMTXCopy
    lfs     f1, 0x60(sp)
    addi    r3, sp, 0x44
    lfs     f0, 0x7c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lwz     r4, 0x6c(r29)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f0, 0x50(sp)
    stfs    f0, 0x10(r29)
    lfs     f1, 0x60(sp)
    lfs     f0, -0x5f34(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f0, 0x70(sp)
    stfs    f0, 0x18(r29)
branch_0x800cfaa0:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x6c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r3, 0x18(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800cfac4:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl __ct__9TChorobeiFP7TCannoniPCc
__ct__9TChorobeiFP7TCannoniPCc: # 0x800cfae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r4
    addi    r4, r6, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__9TChorobei@ha
    lwz     r31, 0x8(sp)
    addi    r3, r3, __vvt__9TChorobei@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    li      r3, 0x1c
    stw     r29, 0x68(r31)
    stw     r0, 0x6c(r31)
    lfs     f0, -0x5f80(r2)
    stfs    f0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    lfs     f0, -0x5f60(r2)
    stfs    f0, 0x7c(r31)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800cfb84
    lis     r5, unk_8037fd44@ha
    lwz     r4, 0x68(r31)
    lis     r3, unk_8037fc4c@ha
    addi    r6, r5, unk_8037fd44@l
    addi    r9, r3, unk_8037fc4c@l
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    lis     r7, 0x1002
    li      r8, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriPCcUlUlPCc
branch_0x800cfb84:
    lwz     r3, 0x8(sp)
    stw     r29, 0x6c(r3)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800cfb9c
    b       branch_0x800cfbd8

branch_0x800cfb9c:
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800cfbb8
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r29
    bl      __ct__9MAnmSoundFP6MSound
branch_0x800cfbb8:
    lwz     r31, 0x8(sp)
    li      r4, 0x0
    li      r5, 0x1
    stw     r29, 0x74(r31)
    lwz     r3, 0x74(r31)
    lfs     f1, -0x5f80(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    mr      r3, r31
branch_0x800cfbd8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl createEnemyInstance__14TCannonManagerFv
createEnemyInstance__14TCannonManagerFv: # 0x800cfbf4
    mflr    r0
    li      r3, 0x2b4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800cfc20
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x5eac
    bl      __ct__7TCannonFPCc
branch_0x800cfc20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TCannonManagerFR20JSUMemoryInputStream
load__14TCannonManagerFR20JSUMemoryInputStream: # 0x800cfc38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3d8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800cfc74
    lis     r3, unk_8037fd68@ha
    addi    r4, r3, unk_8037fd68@l
    addi    r3, r30, 0x0
    bl      __ct__21TCannonSaveLoadParamsFPCc
branch_0x800cfc74:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__14TCannonManagerFPCc
__ct__14TCannonManagerFPCc: # 0x800cfc90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__14TCannonManager@ha
    addi    r0, r3, __vvt__14TCannonManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__21TCannonSaveLoadParamsFPCc
__ct__21TCannonSaveLoadParamsFPCc: # 0x800cfccc
    mflr    r0
    lis     r5, unk_8037f918@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r30, r5, unk_8037f918@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x464
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x464
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x2d4(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x5f60(r2)
    addi    r3, r30, 0x470
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x470
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x47c
    lfs     f0, -0x5ea4(r2)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x47c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x48c
    lfs     f0, -0x5ea0(r2)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x48c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0x310(r31)
    li      r25, 0x64
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r25, 0x320(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x49c
    stw     r26, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x49c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x324(r31)
    li      r0, 0x32
    addi    r3, r30, 0x4b0
    stw     r0, 0x334(r31)
    stw     r26, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x4b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x338(r31)
    addi    r3, r30, 0x4c4
    stw     r25, 0x348(r31)
    stw     r26, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x4c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x4dc
    lfs     f0, -0x5ec8(r2)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x4dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x4f4
    lfs     f0, -0x5ec8(r2)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x4f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x50c
    lfs     f0, -0x5ec8(r2)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x50c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x388(r31)
    addi    r3, r30, 0x524
    lfs     f0, -0x5ec8(r2)
    stfs    f0, 0x398(r31)
    stw     r28, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x524
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39c(r31)
    addi    r3, r30, 0x53c
    lfs     f0, -0x5e9c(r2)
    stfs    f0, 0x3ac(r31)
    stw     r28, 0x39c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b0
    addi    r6, r30, 0x53c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b0(r31)
    addi    r3, r30, 0x554
    lfs     f0, -0x5e98(r2)
    stfs    f0, 0x3c0(r31)
    stw     r28, 0x3b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3c4
    addi    r6, r30, 0x554
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3c4(r31)
    mr      r3, r31
    lfs     f0, -0x5e94(r2)
    stfs    f0, 0x3d4(r31)
    stw     r28, 0x3c4(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl isCollidMove__7TCannonFP9THitActor
isCollidMove__7TCannonFP9THitActor: # 0x800cff70
    li      r3, 0x0
    blr


.globl isHitVallid__7TCannonFUl
isHitVallid__7TCannonFUl: # 0x800cff78
    li      r3, 0x0
    blr


.globl isInhibitedForceMove__7TCannonFv
isInhibitedForceMove__7TCannonFv: # 0x800cff80
    li      r3, 0x1
    blr


.globl __dt__7TCannonFv
__dt__7TCannonFv: # 0x800cff88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800cfff0
    lis     r3, __vvt__7TCannon@ha
    addi    r3, r3, __vvt__7TCannon@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800cffe0
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800cffe0:
    extsh.  r0, r31
    ble-    branch_0x800cfff0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800cfff0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TCannonDomFv
__dt__10TCannonDomFv: # 0x800d000c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800d0074
    lis     r3, __vvt__10TCannonDom@ha
    addi    r0, r3, __vvt__10TCannonDom@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800d0064
    lis     r3, __vvt__12TSharedParts@ha
    addi    r0, r3, __vvt__12TSharedParts@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800d0064
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800d0064:
    extsh.  r0, r31
    ble-    branch_0x800d0074
    mr      r3, r30
    bl      __dl__FPv
branch_0x800d0074:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TChorobeiFv
__dt__9TChorobeiFv: # 0x800d0090
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800d00f8
    lis     r3, __vvt__9TChorobei@ha
    addi    r3, r3, __vvt__9TChorobei@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800d00e8
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800d00e8:
    extsh.  r0, r31
    ble-    branch_0x800d00f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800d00f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TCannonManagerFv
__dt__14TCannonManagerFv: # 0x800d0114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800d016c
    lis     r3, __vvt__14TCannonManager@ha
    addi    r0, r3, __vvt__14TCannonManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800d015c
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800d015c:
    extsh.  r0, r31
    ble-    branch_0x800d016c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800d016c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl clipEnemies__14TCannonManagerFPQ26JDrama9TGraphics
clipEnemies__14TCannonManagerFPQ26JDrama9TGraphics: # 0x800d0188
    blr


.globl __sinit_cannon_cpp
__sinit_cannon_cpp: # 0x800d018c
    mflr    r0
    lis     r3, unk_803f1e08@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f1e08@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800d01d4
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800d01d4:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0204
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800d0204:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0234
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800d0234:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0264
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800d0264:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0294
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800d0294:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800d02c4
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800d02c4:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800d02f4
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800d02f4:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0324
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800d0324:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0354
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800d0354:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0384
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800d0384:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800d03b4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800d03b4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800d03e4
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800d03e4:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0414
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800d0414:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0444
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800d0444:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0474
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800d0474:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800d0488
unk_800d0488: # 0x800d0488
    addi    r3, r3, -0x20
    b       __dt__9TChorobeiFv


.globl unk_800d0490
unk_800d0490: # 0x800d0490
    addi    r3, r3, -0x20
    b       __dt__7TCannonFv

