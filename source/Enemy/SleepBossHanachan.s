
.globl __dt__14TNerveSBH_FallFv
__dt__14TNerveSBH_FallFv: # 0x800ea354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ea398
    lis     r3, __vvt__14TNerveSBH_Fall@ha
    addi    r0, r3, __vvt__14TNerveSBH_Fall@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800ea388
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800ea388:
    extsh.  r0, r4
    ble-    branch_0x800ea398
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ea398:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveSBH_FallCFP24TSpineBase_10TLiveActor_
execute__14TNerveSBH_FallCFP24TSpineBase_10TLiveActor_: # 0x800ea3b0
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800ea4d0
    lwz     r5, 0x150(r30)
    lis     r4, unk_8038180c@h
    lwz     r0, 0x154(r30)
    lis     r3, unk_80381820@h
    addi    r4, r4, unk_8038180c@l
    stw     r5, 0x28(sp)
    addi    r5, r3, unk_80381820@l
    lwz     r3, R13Off_m0x62b0(r13)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x158(r30)
    stw     r0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f2, 0x2c(sp)
    lfs     f3, 0x30(sp)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lwz     r0, 0xf8(r3)
    oris    r0, r0, 0x2000
    stw     r0, 0xf8(r3)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r3, 0x15c(r30)
    lhz     r0, 0x1a(r3)
    ori     r0, r0, 0x1
    sth     r0, 0x1a(r3)
    lwz     r3, 0x14(r3)
    bl      SMS_HideAllShapePacket__FP8J3DModel
    lbz     r0, R13Off_m0x6848(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea494
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveSBH_SleepContinue@ha
    stw     r0, R13Off_m0x6844(r13)
    addi    r0, r3, __vvt__23TNerveSBH_SleepContinue@l
    lis     r4, __dt__23TNerveSBH_SleepContinueFv@ha
    stw     r0, R13Off_m0x6844(r13)
    lis     r3, unk_803f23c0@h
    addi    r5, r3, unk_803f23c0@l
    addi    r4, r4, __dt__23TNerveSBH_SleepContinueFv@l
    addi    r3, r13, R13Off_m0x6844
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6848(r13)
branch_0x800ea494:
    addi    r4, r13, R13Off_m0x6844
    cmplwi  r4, 0x0
    beq-    branch_0x800ea4c8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800ea4c8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800ea4c8:
    li      r3, 0x1
    b       branch_0x800ea4d4

branch_0x800ea4d0:
    li      r3, 0x0
branch_0x800ea4d4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__23TNerveSBH_SleepContinueFv
__dt__23TNerveSBH_SleepContinueFv: # 0x800ea4ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ea530
    lis     r3, __vvt__23TNerveSBH_SleepContinue@ha
    addi    r0, r3, __vvt__23TNerveSBH_SleepContinue@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800ea520
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800ea520:
    extsh.  r0, r4
    ble-    branch_0x800ea530
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ea530:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__14TNerveSBH_FallFv
theNerve__14TNerveSBH_FallFv: # 0x800ea548
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6840(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea598
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveSBH_Fall@ha
    stw     r0, R13Off_m0x683c(r13)
    addi    r0, r3, __vvt__14TNerveSBH_Fall@l
    lis     r4, __dt__14TNerveSBH_FallFv@ha
    stw     r0, R13Off_m0x683c(r13)
    lis     r3, unk_803f23cc@h
    addi    r5, r3, unk_803f23cc@l
    addi    r4, r4, __dt__14TNerveSBH_FallFv@l
    addi    r3, r13, R13Off_m0x683c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6840(r13)
branch_0x800ea598:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x683c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__23TNerveSBH_SleepContinueCFP24TSpineBase_10TLiveActor_
execute__23TNerveSBH_SleepContinueCFP24TSpineBase_10TLiveActor_: # 0x800ea5ac
    li      r3, 0x0
    blr


.globl theNerve__23TNerveSBH_SleepContinueFv
theNerve__23TNerveSBH_SleepContinueFv: # 0x800ea5b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6848(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea604
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveSBH_SleepContinue@ha
    stw     r0, R13Off_m0x6844(r13)
    addi    r0, r3, __vvt__23TNerveSBH_SleepContinue@l
    lis     r4, __dt__23TNerveSBH_SleepContinueFv@ha
    stw     r0, R13Off_m0x6844(r13)
    lis     r3, unk_803f23c0@h
    addi    r5, r3, unk_803f23c0@l
    addi    r4, r4, __dt__23TNerveSBH_SleepContinueFv@l
    addi    r3, r13, R13Off_m0x6844
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6848(r13)
branch_0x800ea604:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6844
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startFall__18TSleepBossHanachanFfff
startFall__18TSleepBossHanachanFfff: # 0x800ea618
    mflr    r0
    lis     r4, unk_0005000b@h
    stw     r0, 0x4(sp)
    addi    r5, r4, unk_0005000b@l
    li      r4, 0x1
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f3
    stfd    f30, 0x38(sp)
    fmr     f30, f2
    stfd    f29, 0x30(sp)
    fmr     f29, f1
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, R13Off_m0x6060(r13)
    mr      r3, r0
    bl      setBool__12TFlagManagerFbUl
    stfs    f29, 0x150(r31)
    li      r4, 0x0
    stfs    f30, 0x154(r31)
    stfs    f31, 0x158(r31)
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lbz     r0, R13Off_m0x6840(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea6c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveSBH_Fall@ha
    stw     r0, R13Off_m0x683c(r13)
    addi    r0, r3, __vvt__14TNerveSBH_Fall@l
    lis     r4, __dt__14TNerveSBH_FallFv@ha
    stw     r0, R13Off_m0x683c(r13)
    lis     r3, unk_803f23cc@h
    addi    r5, r3, unk_803f23cc@l
    addi    r4, r4, __dt__14TNerveSBH_FallFv@l
    addi    r3, r13, R13Off_m0x683c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6840(r13)
branch_0x800ea6c0:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x683c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800ea6d8
    stw     r0, 0x1c(r4)
branch_0x800ea6d8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    lfd     f29, 0x30(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl getBasNameTable__18TSleepBossHanachanCFv
getBasNameTable__18TSleepBossHanachanCFv: # 0x800ea704
    addi    r3, r13, R13Off_m0x7da0
    blr


.globl calcRootMatrix__18TSleepBossHanachanFv
calcRootMatrix__18TSleepBossHanachanFv: # 0x800ea70c
    blr


.globl init__18TSleepBossHanachanFP12TLiveManager
init__18TSleepBossHanachanFP12TLiveManager: # 0x800ea710
    mflr    r0
    li      r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stfd    f29, 0x60(sp)
    stfd    f28, 0x58(sp)
    stfd    f27, 0x50(sp)
    stfd    f26, 0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x40(sp)
    bl      initBase__17TDemoBossHanachanFP12TLiveManagerUl
    lbz     r0, R13Off_m0x6848(r13)
    extsb.  r0, r0
    bne-    branch_0x800ea78c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveSBH_SleepContinue@ha
    stw     r0, R13Off_m0x6844(r13)
    addi    r0, r3, __vvt__23TNerveSBH_SleepContinue@l
    lis     r4, __dt__23TNerveSBH_SleepContinueFv@ha
    stw     r0, R13Off_m0x6844(r13)
    lis     r3, unk_803f23c0@h
    addi    r5, r3, unk_803f23c0@l
    addi    r4, r4, __dt__23TNerveSBH_SleepContinueFv@l
    addi    r3, r13, R13Off_m0x6844
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6848(r13)
branch_0x800ea78c:
    lwz     r8, 0x8c(r31)
    li      r7, 0x0
    lis     r4, unk_08000016@h
    stw     r7, 0x8(r8)
    addi    r0, r13, R13Off_m0x6844
    addi    r3, r31, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, unk_08000016@l
    li      r5, 0x0
    stw     r0, 0x14(r8)
    li      r6, 0x0
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f1, -0x5af8(r2)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      initAnmSound__10TLiveActorFv
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    mr      r3, r31
    bl      setCurAnmSound__10TLiveActorFv
    lfs     f26, 0x38(r31)
    mr      r3, r31
    lfs     f27, 0x34(r31)
    lfs     f28, 0x30(r31)
    lfs     f29, 0x18(r31)
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x5af4(r2)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x38(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0x30(sp)
    lwz     r4, 0x3c(sp)
    stfd    f0, 0x28(sp)
    lwz     r5, 0x34(sp)
    lwz     r6, 0x2c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800ea884
    lis     r3, unk_80381834@h
    addi    r4, r3, unk_80381834@l
    addi    r3, r30, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x800ea884:
    stw     r30, 0x15c(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mr      r4, r3
    lwz     r3, 0x15c(r31)
    li      r5, 0xa
    bl      init__12TMirrorActorFP8J3DModelUs
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lfd     f29, 0x60(sp)
    lfd     f28, 0x58(sp)
    lfd     f27, 0x50(sp)
    lfd     f26, 0x48(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x78
    blr


.globl createModelData__25TSleepBossHanachanManagerFv
createModelData__25TSleepBossHanachanManagerFv: # 0x800ea8d0
    mflr    r0
    lis     r4, entry_2260@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2260@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TSleepBossHanachanFv
__dt__18TSleepBossHanachanFv: # 0x800ea904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ea96c
    lis     r3, __vvt__18TSleepBossHanachan@ha
    addi    r3, r3, __vvt__18TSleepBossHanachan@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800ea95c
    lis     r3, __vvt__17TDemoBossHanachan@ha
    addi    r3, r3, __vvt__17TDemoBossHanachan@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800ea95c:
    extsh.  r0, r31
    ble-    branch_0x800ea96c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ea96c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__25TSleepBossHanachanManagerFv
__dt__25TSleepBossHanachanManagerFv: # 0x800ea988
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ea9e0
    lis     r3, __vvt__25TSleepBossHanachanManager@ha
    addi    r0, r3, __vvt__25TSleepBossHanachanManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800ea9d0
    lis     r3, __vvt__24TDemoBossHanachanManager@ha
    addi    r0, r3, __vvt__24TDemoBossHanachanManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800ea9d0:
    extsh.  r0, r31
    ble-    branch_0x800ea9e0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ea9e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl unk_800ea9fc
unk_800ea9fc: # 0x800ea9fc
    addi    r3, r3, -0x20
    b       __dt__18TSleepBossHanachanFv

