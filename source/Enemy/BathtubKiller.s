
.globl __dt__21TBathtubKillerManagerFv
__dt__21TBathtubKillerManagerFv: # 0x8012f0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8012f140
    lis     r3, __vvt__21TBathtubKillerManager@ha
    addi    r0, r3, __vvt__21TBathtubKillerManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8012f130
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8012f130:
    extsh.  r0, r31
    ble-    branch_0x8012f140
    mr      r3, r30
    bl      __dl__FPv
branch_0x8012f140:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createEnemyInstance__21TBathtubKillerManagerFv
createEnemyInstance__21TBathtubKillerManagerFv: # 0x8012f15c
    mflr    r0
    li      r3, 0x250
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8012f1b8
    stw     r31, 0xc(sp)
    lis     r3, unk_80386718@h
    addi    r4, r3, unk_80386718@l
    lwz     r3, 0xc(sp)
    bl      __ct__11TSmallEnemyFPCc
    lwz     r4, 0xc(sp)
    lis     r3, __vvt__14TBathtubKiller@ha
    addi    r3, r3, __vvt__14TBathtubKiller@l
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r4)
    addi    r3, r4, 0x220
    stw     r0, 0x1cc(r4)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
branch_0x8012f1b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__21TBathtubKillerManagerFv
createModelData__21TBathtubKillerManagerFv: # 0x8012f1d0
    mflr    r0
    lis     r4, entry_3228@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3228@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl countActiveKillers__21TBathtubKillerManagerFv
countActiveKillers__21TBathtubKillerManagerFv: # 0x8012f204
    lwz     r6, 0x38(r3)
    li      r7, 0x0
    li      r8, 0x0
    li      r4, 0x0
    b       branch_0x8012f238

branch_0x8012f218:
    lwz     r5, 0x18(r3)
    lwzx    r5, r5, r4
    lwz     r0, 0xf0(r5)
    clrlwi. r0, r0, 31
    bne-    branch_0x8012f230
    addi    r7, r7, 0x1
branch_0x8012f230:
    addi    r8, r8, 0x1
    addi    r4, r4, 0x4
branch_0x8012f238:
    cmplwi  r6, 0x0
    bne-    branch_0x8012f248
    lwz     r5, 0x14(r3)
    b       branch_0x8012f260

branch_0x8012f248:
    lbz     r0, 0xa4(r6)
    lwz     r5, 0x14(r3)
    cmpw    r0, r5
    ble-    branch_0x8012f25c
    b       branch_0x8012f260

branch_0x8012f25c:
    mr      r5, r0
branch_0x8012f260:
    cmpw    r8, r5
    blt+    branch_0x8012f218
    mr      r3, r7
    blr


.globl loadAfter__21TBathtubKillerManagerFv
loadAfter__21TBathtubKillerManagerFv: # 0x8012f270
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r3
    bl      loadAfter__18TSmallEnemyManagerFv
    lfs     f0, -0x4f34(r2)
    lis     r3, unk_80386728@h
    lfs     f1, -0x4f38(r2)
    addi    r31, r3, unk_80386728@l
    stfs    f0, 0x5c(sp)
    addi    r6, sp, 0x50
    stfs    f1, 0x50(sp)
    addi    r5, sp, 0x5c
    addi    r4, sp, 0x68
    stfs    f0, 0x68(sp)
    mr      r3, r31
    stfs    f1, 0x54(sp)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x70(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f0, -0x4f34(r2)
    addi    r6, sp, 0x2c
    lfs     f1, -0x4f38(r2)
    addi    r5, sp, 0x38
    stfs    f0, 0x38(sp)
    addi    r4, sp, 0x44
    stfs    f1, 0x2c(sp)
    addi    r3, r31, 0x0
    stfs    f0, 0x44(sp)
    stfs    f1, 0x30(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x48(sp)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x4c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lis     r4, unk_00020001@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00020001@l
    bl      getFlag__12TFlagManagerCFUl
    extsb   r0, r3
    stb     r0, 0x60(r30)
    li      r0, 0x0
    stw     r0, 0x64(r30)
    stb     r0, 0x68(r30)
    stb     r0, 0x69(r30)
    lwz     r0, 0x38(r30)
    cmplwi  r0, 0x0
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    lbz     r0, 0x1bd(r3)
    addi    r30, r3, 0x1bd
    li      r31, 0x1
    cmplwi  r0, 0x0
    lwz     r4, R13Off_m0x7be0(r13)
    bne-    branch_0x8012f374
    lwz     r3, R13Off_m0x5fe0(r13)
    li      r5, 0x1bd
    bl      load__18JPAResourceManagerFPCcUs
    stb     r31, 0x0(r30)
branch_0x8012f374:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl load__21TBathtubKillerManagerFR20JSUMemoryInputStream
load__21TBathtubKillerManagerFR20JSUMemoryInputStream: # 0x8012f38c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    mr      r3, r31
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x568
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8012f3d4
    lis     r3, unk_80386734@h
    addi    r4, r3, unk_80386734@l
    addi    r3, r30, 0x0
    bl      __ct__20TBathtubKillerParamsFPCc
branch_0x8012f3d4:
    stw     r30, 0x38(r31)
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __ct__21TBathtubKillerManagerFPCc
__ct__21TBathtubKillerManagerFPCc: # 0x8012f3f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__21TBathtubKillerManager@ha
    addi    r0, r3, __vvt__21TBathtubKillerManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveBathtubKillerExplosionCFP24TSpineBase_10TLiveActor_
execute__28TNerveBathtubKillerExplosionCFP24TSpineBase_10TLiveActor_: # 0x8012f434
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012f524
    lis     r4, unk_803866f8@h
    lwz     r3, 0x78(r31)
    addi    r4, r4, unk_803866f8@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x4f34(r2)
    addi    r3, sp, 0x1c
    li      r4, 0x0
    stfs    f1, 0x1ac(r31)
    li      r5, 0x0
    li      r6, 0x0
    stfs    f1, 0x1b0(r31)
    stfs    f1, 0x1b4(r31)
    lfs     f0, -0x4f38(r2)
    stfs    f0, 0x1b8(r31)
    stfs    f1, 0x1bc(r31)
    stfs    f1, 0x1c0(r31)
    stfs    f1, 0x1c4(r31)
    bl      set_i___Q29JGeometry8TVec3_f_Fiii
    lwz     r4, 0x1c(sp)
    lis     r3, unk_80386750@h
    lwz     r0, 0x20(sp)
    addi    r5, r3, unk_80386750@l
    li      r6, 0x1
    stw     r4, 0xac(r31)
    addi    r4, r31, 0x10
    stw     r0, 0xb0(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r3, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r3, 0x1e0(r31)
    stw     r0, 0x1e4(r31)
    lwz     r3, R13Off_m0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x8012f518
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x8012f518:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x8012f524:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012f55c
    li      r0, 0x0
    stw     r0, 0x21c(r31)
    mr      r3, r31
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    bl      stopAnmSound__10TLiveActorFv
    li      r3, 0x1
    b       branch_0x8012f560

branch_0x8012f55c:
    li      r3, 0x0
branch_0x8012f560:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl set_i___Q29JGeometry8TVec3_f_Fiii
set_i___Q29JGeometry8TVec3_f_Fiii: # 0x8012f574
    stwu    sp, -0x30(sp)
    xoris   r0, r4, 0x8000
    xoris   r4, r5, 0x8000
    stw     r0, 0x2c(sp)
    lis     r5, 0x4330
    xoris   r0, r6, 0x8000
    lfd     f3, -0x4f30(r2)
    stw     r5, 0x28(sp)
    stw     r4, 0x24(sp)
    lfd     f0, 0x28(sp)
    stw     r0, 0x1c(sp)
    fsubs   f2, f0, f3
    stw     r5, 0x20(sp)
    lfd     f0, 0x20(sp)
    stw     r5, 0x18(sp)
    fsubs   f1, f0, f3
    lfd     f0, 0x18(sp)
    addi    sp, sp, 0x30
    stfs    f2, 0x0(r3)
    fsubs   f0, f0, f3
    stfs    f1, 0x4(r3)
    stfs    f0, 0x8(r3)
    blr


.globl theNerve__28TNerveBathtubKillerExplosionFv
theNerve__28TNerveBathtubKillerExplosionFv: # 0x8012f5d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f620
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r4, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    lis     r3, unk_803f37bc@h
    addi    r5, r3, unk_803f37bc@l
    addi    r4, r4, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x8012f620:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x64e4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__28TNerveBathtubKillerExplosionFv
__dt__28TNerveBathtubKillerExplosionFv: # 0x8012f634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012f678
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012f668
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012f668:
    extsh.  r0, r4
    ble-    branch_0x8012f678
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012f678:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveBathtubKillerBreakCFP24TSpineBase_10TLiveActor_
execute__24TNerveBathtubKillerBreakCFP24TSpineBase_10TLiveActor_: # 0x8012f690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012f75c
    lis     r4, unk_803866f8@h
    lwz     r3, 0x78(r31)
    addi    r4, r4, unk_803866f8@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x4f34(r2)
    addi    r3, sp, 0x1c
    li      r4, 0x0
    stfs    f1, 0x1ac(r31)
    li      r5, 0x0
    li      r6, 0x0
    stfs    f1, 0x1b0(r31)
    stfs    f1, 0x1b4(r31)
    lfs     f0, -0x4f38(r2)
    stfs    f0, 0x1b8(r31)
    stfs    f1, 0x1bc(r31)
    stfs    f1, 0x1c0(r31)
    stfs    f1, 0x1c4(r31)
    bl      set_i___Q29JGeometry8TVec3_f_Fiii
    lwz     r4, 0x1c(sp)
    mr      r3, r31
    lwz     r0, 0x20(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r4, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r4, 0x1e0(r31)
    stw     r0, 0x1e4(r31)
    bl      generateItemBathtubKiller__14TBathtubKillerFv
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x8012f75c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8012f794
    li      r0, 0x0
    stw     r0, 0x21c(r31)
    mr      r3, r31
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    bl      stopAnmSound__10TLiveActorFv
    li      r3, 0x1
    b       branch_0x8012f798

branch_0x8012f794:
    li      r3, 0x0
branch_0x8012f798:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl theNerve__24TNerveBathtubKillerBreakFv
theNerve__24TNerveBathtubKillerBreakFv: # 0x8012f7ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x64f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8012f7fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveBathtubKillerBreak@ha
    stw     r0, R13Off_m0x64ec(r13)
    addi    r0, r3, __vvt__24TNerveBathtubKillerBreak@l
    lis     r4, __dt__24TNerveBathtubKillerBreakFv@ha
    stw     r0, R13Off_m0x64ec(r13)
    lis     r3, unk_803f37b0@h
    addi    r5, r3, unk_803f37b0@l
    addi    r4, r4, __dt__24TNerveBathtubKillerBreakFv@l
    addi    r3, r13, R13Off_m0x64ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f0(r13)
branch_0x8012f7fc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x64ec
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__24TNerveBathtubKillerBreakFv
__dt__24TNerveBathtubKillerBreakFv: # 0x8012f810
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012f854
    lis     r3, __vvt__24TNerveBathtubKillerBreak@ha
    addi    r0, r3, __vvt__24TNerveBathtubKillerBreak@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012f844
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012f844:
    extsh.  r0, r4
    ble-    branch_0x8012f854
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012f854:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveBathtubKillerStraightCFP24TSpineBase_10TLiveActor_
execute__27TNerveBathtubKillerStraightCFP24TSpineBase_10TLiveActor_: # 0x8012f86c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012f8bc
    lis     r4, unk_803866dc@h
    lwz     r3, 0x78(r31)
    addi    r4, r4, unk_803866dc@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8012f8bc:
    lwz     r0, 0x218(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8012f8d4
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
branch_0x8012f8d4:
    lfs     f5, 0x1b0(r31)
    addi    r3, sp, 0x1c
    lfs     f1, 0x1b8(r31)
    mr      r4, r3
    lfs     f3, 0x1ac(r31)
    fmuls   f0, f1, f5
    lfs     f6, -0x4f28(r2)
    fmuls   f2, f1, f3
    lfs     f7, 0x1b4(r31)
    fmuls   f4, f3, f3
    fmuls   f1, f3, f7
    lfs     f31, -0x4f38(r2)
    fmuls   f0, f6, f0
    fmuls   f3, f5, f7
    fmuls   f2, f6, f2
    fmadds  f0, f6, f1, f0
    fmuls   f5, f5, f5
    fnmsubs  f1, f6, f4, f31
    stfs    f0, 0x1c(sp)
    fmsubs  f2, f6, f3, f2
    fnmsubs  f0, f6, f5, f1
    stfs    f2, 0x20(sp)
    stfs    f0, 0x24(sp)
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x20(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x4f24(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012f960
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x1c(sp)
    b       branch_0x8012f974

branch_0x8012f960:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x1c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8012f974:
    lfs     f1, 0x1a0(r31)
    addi    r4, sp, 0x28
    lfs     f0, 0x1c(sp)
    mr      r3, r31
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x20(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(sp)
    lfs     f0, 0x24(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(sp)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0xac(r31)
    lfs     f0, 0x20(sp)
    stfs    f0, 0xb0(r31)
    lfs     f0, 0x24(sp)
    stfs    f0, 0xb4(r31)
    lwz     r5, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f2, -0x4f20(r2)
    stw     r5, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x30(sp)
    lfs     f1, 0x198(r31)
    bl      makeQuat__14TBathtubKillerFQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x4c(sp)
    li      r3, 0x0
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __dt__27TNerveBathtubKillerStraightFv
__dt__27TNerveBathtubKillerStraightFv: # 0x8012f9fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012fa40
    lis     r3, __vvt__27TNerveBathtubKillerStraight@ha
    addi    r0, r3, __vvt__27TNerveBathtubKillerStraight@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012fa30
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012fa30:
    extsh.  r0, r4
    ble-    branch_0x8012fa40
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012fa40:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__32TNerveBathtubKillerChaseStraightCFP24TSpineBase_10TLiveActor_
execute__32TNerveBathtubKillerChaseStraightCFP24TSpineBase_10TLiveActor_: # 0x8012fa58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012facc
    lis     r4, unk_803866dc@h
    lwz     r3, 0x78(r31)
    addi    r4, r4, unk_803866dc@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x528(r3)
    stw     r0, 0x210(r31)
branch_0x8012facc:
    lwz     r3, 0x1cc(r31)
    bl      isKillerAttackable__8TBathtubCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8012fae4
    li      r0, 0x0
    b       branch_0x8012fc40

branch_0x8012fae4:
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8012fc3c
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f3, -0x4f34(r2)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x68(sp)
    stfs    f3, 0x64(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x74(sp)
    stfs    f3, 0x70(sp)
    lwz     r4, 0x1cc(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x80(sp)
    stfs    f3, 0x7c(sp)
    lfs     f2, 0x60(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x64(sp)
    fsubs   f1, f2, f1
    lfs     f5, 0x7c(sp)
    lfs     f2, 0x68(sp)
    fsubs   f0, f0, f5
    lfs     f6, 0x80(sp)
    fsubs   f2, f2, f6
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f4, f2, f0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    bne-    branch_0x8012fb98
    b       branch_0x8012fbbc

branch_0x8012fb98:
    frsqrte f3, f4
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8012fbbc:
    lfs     f0, 0x70(sp)
    lfs     f2, 0x6c(sp)
    lfs     f1, 0x78(sp)
    fsubs   f5, f0, f5
    lfs     f3, 0x74(sp)
    fsubs   f2, f2, f1
    lfs     f0, -0x4f34(r2)
    fsubs   f3, f3, f6
    fmuls   f1, f5, f5
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f5, f3, f1
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8012fc00
    b       branch_0x8012fc24

branch_0x8012fc00:
    frsqrte f3, f5
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f5, f1, f0
    fmuls   f0, f2, f0
    fmuls   f5, f5, f0
branch_0x8012fc24:
    lfs     f0, -0x4f14(r2)
    fadds   f0, f0, f4
    fcmpo   cr0, f5, f0
    ble-    branch_0x8012fc3c
    li      r0, 0x0
    b       branch_0x8012fc40

branch_0x8012fc3c:
    li      r0, 0x1
branch_0x8012fc40:
    clrlwi. r0, r0, 24
    bne-    branch_0x8012fcc8
    lbz     r0, R13Off_m0x64f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8012fc8c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveBathtubKillerStraight@ha
    stw     r0, R13Off_m0x64f4(r13)
    addi    r0, r3, __vvt__27TNerveBathtubKillerStraight@l
    lis     r4, __dt__27TNerveBathtubKillerStraightFv@ha
    stw     r0, R13Off_m0x64f4(r13)
    lis     r3, unk_803f37a4@h
    addi    r5, r3, unk_803f37a4@l
    addi    r4, r4, __dt__27TNerveBathtubKillerStraightFv@l
    addi    r3, r13, R13Off_m0x64f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f8(r13)
branch_0x8012fc8c:
    addi    r4, r13, R13Off_m0x64f4
    cmplwi  r4, 0x0
    beq-    branch_0x8012fcc0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8012fcc0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012fcc0:
    li      r3, 0x1
    b       branch_0x8012fe7c

branch_0x8012fcc8:
    lwz     r0, 0x218(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8012fce0
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
branch_0x8012fce0:
    lwz     r0, 0x210(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8012fd6c
    lbz     r0, R13Off_m0x6508(r13)
    extsb.  r0, r0
    bne-    branch_0x8012fd30
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveBathtubKillerChase@ha
    stw     r0, R13Off_m0x6504(r13)
    addi    r0, r3, __vvt__24TNerveBathtubKillerChase@l
    lis     r4, __dt__24TNerveBathtubKillerChaseFv@ha
    stw     r0, R13Off_m0x6504(r13)
    lis     r3, unk_803f378c@h
    addi    r5, r3, unk_803f378c@l
    addi    r4, r4, __dt__24TNerveBathtubKillerChaseFv@l
    addi    r3, r13, R13Off_m0x6504
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6508(r13)
branch_0x8012fd30:
    addi    r4, r13, R13Off_m0x6504
    cmplwi  r4, 0x0
    beq-    branch_0x8012fd64
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8012fd64
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8012fd64:
    li      r3, 0x1
    b       branch_0x8012fe7c

branch_0x8012fd6c:
    lfs     f5, 0x1b0(r31)
    addi    r3, sp, 0x40
    lfs     f1, 0x1b8(r31)
    mr      r4, r3
    lfs     f3, 0x1ac(r31)
    fmuls   f0, f1, f5
    lfs     f6, -0x4f28(r2)
    fmuls   f2, f1, f3
    lfs     f7, 0x1b4(r31)
    fmuls   f4, f3, f3
    fmuls   f1, f3, f7
    lfs     f31, -0x4f38(r2)
    fmuls   f0, f6, f0
    fmuls   f3, f5, f7
    fmuls   f2, f6, f2
    fmadds  f0, f6, f1, f0
    fmuls   f5, f5, f5
    fnmsubs  f1, f6, f4, f31
    stfs    f0, 0x40(sp)
    fmsubs  f2, f6, f3, f2
    fnmsubs  f0, f6, f5, f1
    stfs    f2, 0x44(sp)
    stfs    f0, 0x48(sp)
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x44(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x4f24(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8012fdf8
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x40(sp)
    b       branch_0x8012fe0c

branch_0x8012fdf8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, sp, 0x40
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8012fe0c:
    lfs     f1, 0x1a0(r31)
    addi    r4, sp, 0x4c
    lfs     f0, 0x40(sp)
    mr      r3, r31
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x40(sp)
    stfs    f0, 0xac(r31)
    lfs     f0, 0x44(sp)
    stfs    f0, 0xb0(r31)
    lfs     f0, 0x48(sp)
    stfs    f0, 0xb4(r31)
    lwz     r5, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f2, -0x4f20(r2)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x54(sp)
    lfs     f1, 0x198(r31)
    bl      makeQuat__14TBathtubKillerFQ29JGeometry8TVec3_f_ff
    li      r3, 0x0
branch_0x8012fe7c:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl __dt__24TNerveBathtubKillerChaseFv
__dt__24TNerveBathtubKillerChaseFv: # 0x8012fe98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012fedc
    lis     r3, __vvt__24TNerveBathtubKillerChase@ha
    addi    r0, r3, __vvt__24TNerveBathtubKillerChase@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012fecc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012fecc:
    extsh.  r0, r4
    ble-    branch_0x8012fedc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012fedc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__32TNerveBathtubKillerChaseStraightFv
__dt__32TNerveBathtubKillerChaseStraightFv: # 0x8012fef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8012ff38
    lis     r3, __vvt__32TNerveBathtubKillerChaseStraight@ha
    addi    r0, r3, __vvt__32TNerveBathtubKillerChaseStraight@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8012ff28
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8012ff28:
    extsh.  r0, r4
    ble-    branch_0x8012ff38
    mr      r3, r31
    bl      __dl__FPv
branch_0x8012ff38:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveBathtubKillerChaseCFP24TSpineBase_10TLiveActor_
execute__24TNerveBathtubKillerChaseCFP24TSpineBase_10TLiveActor_: # 0x8012ff50
    mflr    r0
    lis     r3, unk_803f3780@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, unk_803f3780@l
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8012ffb0
    lis     r4, unk_803866dc@h
    lwz     r3, 0x78(r30)
    addi    r4, r4, unk_803866dc@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r30)
    addi    r3, r30, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8012ffb0:
    lwz     r3, 0x1cc(r30)
    bl      isKillerAttackable__8TBathtubCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8012ffc8
    li      r0, 0x0
    b       branch_0x80130124

branch_0x8012ffc8:
    lbz     r0, 0x194(r30)
    cmplwi  r0, 0x2
    bne-    branch_0x80130120
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f3, -0x4f34(r2)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    stfs    f3, 0x48(sp)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x58(sp)
    stfs    f3, 0x54(sp)
    lwz     r4, 0x1cc(r30)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x64(sp)
    stfs    f3, 0x60(sp)
    lfs     f2, 0x44(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x48(sp)
    fsubs   f1, f2, f1
    lfs     f5, 0x60(sp)
    lfs     f2, 0x4c(sp)
    fsubs   f0, f0, f5
    lfs     f6, 0x64(sp)
    fsubs   f2, f2, f6
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f4, f2, f0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    bne-    branch_0x8013007c
    b       branch_0x801300a0

branch_0x8013007c:
    frsqrte f3, f4
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x801300a0:
    lfs     f0, 0x54(sp)
    lfs     f2, 0x50(sp)
    lfs     f1, 0x5c(sp)
    fsubs   f5, f0, f5
    lfs     f3, 0x58(sp)
    fsubs   f2, f2, f1
    lfs     f0, -0x4f34(r2)
    fsubs   f3, f3, f6
    fmuls   f1, f5, f5
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f5, f3, f1
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x801300e4
    b       branch_0x80130108

branch_0x801300e4:
    frsqrte f3, f5
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f5, f1, f0
    fmuls   f0, f2, f0
    fmuls   f5, f5, f0
branch_0x80130108:
    lfs     f0, -0x4f14(r2)
    fadds   f0, f0, f4
    fcmpo   cr0, f5, f0
    ble-    branch_0x80130120
    li      r0, 0x0
    b       branch_0x80130124

branch_0x80130120:
    li      r0, 0x1
branch_0x80130124:
    clrlwi. r0, r0, 24
    bne-    branch_0x801301a8
    lbz     r0, R13Off_m0x64f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8013016c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveBathtubKillerStraight@ha
    stw     r0, R13Off_m0x64f4(r13)
    addi    r0, r3, __vvt__27TNerveBathtubKillerStraight@l
    lis     r3, __dt__27TNerveBathtubKillerStraightFv@ha
    stw     r0, R13Off_m0x64f4(r13)
    addi    r4, r3, __dt__27TNerveBathtubKillerStraightFv@l
    addi    r3, r13, R13Off_m0x64f4
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f8(r13)
branch_0x8013016c:
    addi    r4, r13, R13Off_m0x64f4
    cmplwi  r4, 0x0
    beq-    branch_0x801301a0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x801301a0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x801301a0:
    li      r3, 0x1
    b       branch_0x801302c4

branch_0x801301a8:
    mr      r3, r30
    bl      isAboided__14TBathtubKillerFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801302b8
    lbz     r0, 0x194(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x8013023c
    lbz     r0, R13Off_m0x6500(r13)
    extsb.  r0, r0
    bne-    branch_0x80130204
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__32TNerveBathtubKillerChaseStraight@ha
    stw     r0, R13Off_m0x64fc(r13)
    addi    r0, r3, __vvt__32TNerveBathtubKillerChaseStraight@l
    lis     r3, __dt__32TNerveBathtubKillerChaseStraightFv@ha
    stw     r0, R13Off_m0x64fc(r13)
    addi    r4, r3, __dt__32TNerveBathtubKillerChaseStraightFv@l
    addi    r3, r13, R13Off_m0x64fc
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6500(r13)
branch_0x80130204:
    addi    r4, r13, R13Off_m0x64fc
    cmplwi  r4, 0x0
    beq-    branch_0x801302b0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x801302b0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x801302b0

branch_0x8013023c:
    lbz     r0, R13Off_m0x64f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8013027c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveBathtubKillerStraight@ha
    stw     r0, R13Off_m0x64f4(r13)
    addi    r0, r3, __vvt__27TNerveBathtubKillerStraight@l
    lis     r3, __dt__27TNerveBathtubKillerStraightFv@ha
    stw     r0, R13Off_m0x64f4(r13)
    addi    r4, r3, __dt__27TNerveBathtubKillerStraightFv@l
    addi    r3, r13, R13Off_m0x64f4
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f8(r13)
branch_0x8013027c:
    addi    r4, r13, R13Off_m0x64f4
    cmplwi  r4, 0x0
    beq-    branch_0x801302b0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x801302b0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x801302b0:
    li      r3, 0x1
    b       branch_0x801302c4

branch_0x801302b8:
    mr      r3, r30
    bl      moveChasing__14TBathtubKillerFv
    li      r3, 0x0
branch_0x801302c4:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl execute__25TNerveBathtubKillerWanderCFP24TSpineBase_10TLiveActor_
execute__25TNerveBathtubKillerWanderCFP24TSpineBase_10TLiveActor_: # 0x801302e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80130338
    lis     r4, unk_803866dc@h
    lwz     r3, 0x78(r31)
    addi    r4, r4, unk_803866dc@l
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80130338:
    lwz     r3, 0x1cc(r31)
    bl      isKillerAttackable__8TBathtubCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80130350
    li      r0, 0x0
    b       branch_0x801304ac

branch_0x80130350:
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x801304a8
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f3, -0x4f34(r2)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x64(sp)
    stfs    f3, 0x60(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x70(sp)
    stfs    f3, 0x6c(sp)
    lwz     r4, 0x1cc(r31)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x7c(sp)
    stfs    f3, 0x78(sp)
    lfs     f2, 0x5c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x60(sp)
    fsubs   f1, f2, f1
    lfs     f5, 0x78(sp)
    lfs     f2, 0x64(sp)
    fsubs   f0, f0, f5
    lfs     f6, 0x7c(sp)
    fsubs   f2, f2, f6
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f4, f2, f0
    fcmpo   cr0, f4, f3
    cror    2, 0, 2
    bne-    branch_0x80130404
    b       branch_0x80130428

branch_0x80130404:
    frsqrte f3, f4
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80130428:
    lfs     f0, 0x6c(sp)
    lfs     f2, 0x68(sp)
    lfs     f1, 0x74(sp)
    fsubs   f5, f0, f5
    lfs     f3, 0x70(sp)
    fsubs   f2, f2, f1
    lfs     f0, -0x4f34(r2)
    fsubs   f3, f3, f6
    fmuls   f1, f5, f5
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f5, f3, f1
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8013046c
    b       branch_0x80130490

branch_0x8013046c:
    frsqrte f3, f5
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f5, f1, f0
    fmuls   f0, f2, f0
    fmuls   f5, f5, f0
branch_0x80130490:
    lfs     f0, -0x4f14(r2)
    fadds   f0, f0, f4
    fcmpo   cr0, f5, f0
    ble-    branch_0x801304a8
    li      r0, 0x0
    b       branch_0x801304ac

branch_0x801304a8:
    li      r0, 0x1
branch_0x801304ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x80130534
    lbz     r0, R13Off_m0x64f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801304f8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveBathtubKillerStraight@ha
    stw     r0, R13Off_m0x64f4(r13)
    addi    r0, r3, __vvt__27TNerveBathtubKillerStraight@l
    lis     r4, __dt__27TNerveBathtubKillerStraightFv@ha
    stw     r0, R13Off_m0x64f4(r13)
    lis     r3, unk_803f37a4@h
    addi    r5, r3, unk_803f37a4@l
    addi    r4, r4, __dt__27TNerveBathtubKillerStraightFv@l
    addi    r3, r13, R13Off_m0x64f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f8(r13)
branch_0x801304f8:
    addi    r4, r13, R13Off_m0x64f4
    cmplwi  r4, 0x0
    beq-    branch_0x8013052c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8013052c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8013052c:
    li      r3, 0x1
    b       branch_0x8013067c

branch_0x80130534:
    lwz     r0, 0x20c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80130548
    li      r0, 0x0
    b       branch_0x8013059c

branch_0x80130548:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x49c(r3)
    lwz     r3, 0x1cc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x1c(r3)
    lfs     f0, 0x200(r31)
    lfs     f1, 0x14(r31)
    fadds   f0, f0, f2
    fadds   f0, f0, f31
    fcmpo   cr0, f1, f0
    ble-    branch_0x80130598
    li      r0, 0x0
    b       branch_0x8013059c

branch_0x80130598:
    li      r0, 0x1
branch_0x8013059c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80130624
    lbz     r0, R13Off_m0x6508(r13)
    extsb.  r0, r0
    bne-    branch_0x801305e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveBathtubKillerChase@ha
    stw     r0, R13Off_m0x6504(r13)
    addi    r0, r3, __vvt__24TNerveBathtubKillerChase@l
    lis     r4, __dt__24TNerveBathtubKillerChaseFv@ha
    stw     r0, R13Off_m0x6504(r13)
    lis     r3, unk_803f378c@h
    addi    r5, r3, unk_803f378c@l
    addi    r4, r4, __dt__24TNerveBathtubKillerChaseFv@l
    addi    r3, r13, R13Off_m0x6504
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6508(r13)
branch_0x801305e8:
    addi    r4, r13, R13Off_m0x6504
    cmplwi  r4, 0x0
    beq-    branch_0x8013061c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8013061c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8013061c:
    li      r3, 0x1
    b       branch_0x8013067c

branch_0x80130624:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x4f34(r2)
    fneg    f1, f1
    addi    r4, sp, 0x38
    stfs    f0, 0x1bc(r31)
    mr      r3, r31
    stfs    f1, 0x1c0(r31)
    stfs    f0, 0x1c4(r31)
    lwz     r5, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x4f38(r2)
    stw     r5, 0x38(sp)
    lfs     f2, -0x4f20(r2)
    stw     r0, 0x3c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x40(sp)
    bl      makeQuat__14TBathtubKillerFQ29JGeometry8TVec3_f_ff
    li      r3, 0x0
branch_0x8013067c:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    lwz     r30, 0x88(sp)
    addi    sp, sp, 0x98
    blr


.globl __dt__25TNerveBathtubKillerWanderFv
__dt__25TNerveBathtubKillerWanderFv: # 0x80130698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801306dc
    lis     r3, __vvt__25TNerveBathtubKillerWander@ha
    addi    r0, r3, __vvt__25TNerveBathtubKillerWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x801306cc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x801306cc:
    extsh.  r0, r4
    ble-    branch_0x801306dc
    mr      r3, r31
    bl      __dl__FPv
branch_0x801306dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isAboided__14TBathtubKillerFv
isAboided__14TBathtubKillerFv: # 0x801306f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    lwz     r3, 0x1cc(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x1c(r3)
    lfs     f0, 0x204(r31)
    lfs     f1, -0x4f10(r2)
    fadds   f0, f0, f2
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80130758
    li      r3, 0x0
    b       branch_0x80130a10

branch_0x80130758:
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f4, -0x4f34(r2)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xbc(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xb0(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0xac(sp)
    stfs    f4, 0xb8(sp)
    fsubs   f0, f1, f0
    stfs    f4, 0xac(sp)
    fabs    f31, f0
    lfs     f3, 0xb4(sp)
    lfs     f2, 0xa8(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0xac(sp)
    fsubs   f29, f3, f2
    lfs     f2, 0xbc(sp)
    fsubs   f30, f1, f0
    lfs     f0, 0xb0(sp)
    fmuls   f1, f29, f29
    fsubs   f28, f2, f0
    fmuls   f0, f30, f30
    fmuls   f2, f28, f28
    fadds   f0, f1, f0
    fadds   f27, f2, f0
    fcmpo   cr0, f27, f4
    cror    2, 0, 2
    bne-    branch_0x801307f0
    b       branch_0x80130814

branch_0x801307f0:
    frsqrte f3, f27
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f27, f1, f0
    fmuls   f0, f2, f0
    fmuls   f27, f27, f0
branch_0x80130814:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x474(r3)
    fcmpo   cr0, f31, f0
    ble-    branch_0x80130860
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x488(r3)
    fcmpo   cr0, f27, f0
    cror    2, 0, 2
    bne-    branch_0x80130860
    li      r3, 0x1
    b       branch_0x80130a10

branch_0x80130860:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x438(r3)
    fcmpo   cr0, f27, f0
    ble-    branch_0x80130888
    li      r3, 0x0
    b       branch_0x80130a10

branch_0x80130888:
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xc800
    cmplwi  r0, 0x34b
    bne-    branch_0x801308b4
    li      r0, 0xf0
    stw     r0, 0x218(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    b       branch_0x80130a10

branch_0x801308b4:
    stfs    f29, 0x8c(sp)
    stfs    f30, 0x90(sp)
    stfs    f28, 0x94(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x94(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x4f24(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80130904
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x94(sp)
    stfs    f0, 0x90(sp)
    stfs    f0, 0x8c(sp)
    b       branch_0x80130934

branch_0x80130904:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4f38(r2)
    lfs     f0, 0x8c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x94(sp)
branch_0x80130934:
    lwz     r0, 0x8c(sp)
    addi    r4, sp, 0x6c
    lwz     r5, 0x90(sp)
    addi    r3, sp, 0x88
    stw     r0, 0x6c(sp)
    lwz     r0, 0x94(sp)
    stw     r5, 0x70(sp)
    stw     r0, 0x74(sp)
    bl      __ct__14TDirectionCalcFQ29JGeometry8TVec3_f_
    lfs     f8, 0x1b0(r31)
    addi    r4, sp, 0x60
    lfs     f2, 0x1b8(r31)
    addi    r3, sp, 0x78
    lfs     f1, 0x1ac(r31)
    lfs     f3, 0x1b4(r31)
    fmuls   f0, f2, f8
    lfs     f7, -0x4f28(r2)
    fmuls   f2, f2, f1
    fmuls   f6, f1, f3
    fmuls   f5, f7, f0
    fmuls   f4, f8, f3
    lfs     f0, -0x4f38(r2)
    fmuls   f1, f1, f1
    fmuls   f3, f7, f2
    fmadds  f5, f7, f6, f5
    fnmsubs  f0, f7, f1, f0
    fmuls   f2, f8, f8
    fmsubs  f1, f7, f4, f3
    stfs    f5, 0x7c(sp)
    fnmsubs  f0, f7, f2, f0
    stfs    f1, 0x80(sp)
    stfs    f0, 0x84(sp)
    lwz     r0, 0x7c(sp)
    lwz     r5, 0x80(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x84(sp)
    stw     r5, 0x64(sp)
    stw     r0, 0x68(sp)
    bl      __ct__14TDirectionCalcFQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x78
    lfs     f1, 0x88(sp)
    bl      absDirection__14TDirectionCalcFf
    mr      r3, r31
    fmr     f28, f1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x514(r3)
    bl      d2r__14TDirectionCalcFf
    fcmpo   cr0, f28, f1
    ble-    branch_0x80130a0c
    li      r3, 0x0
    b       branch_0x80130a10

branch_0x80130a0c:
    li      r3, 0x1
branch_0x80130a10:
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    addi    sp, sp, 0xf0
    blr


.globl getBasNameTable__14TBathtubKillerCFv
getBasNameTable__14TBathtubKillerCFv: # 0x80130a38
    lis     r3, bathtubkiller_bastable@ha
    addi    r3, r3, bathtubkiller_bastable@l
    blr


.globl behaveToWater__14TBathtubKillerFP9THitActor
behaveToWater__14TBathtubKillerFP9THitActor: # 0x80130a44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    li      r30, 0x1
    stw     r29, 0x2c(sp)
    lwz     r3, 0x8c(r3)
    lwz     r29, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130aa0
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130aa0
    li      r30, 0x0
branch_0x80130aa0:
    clrlwi. r0, r30, 24
    bne-    branch_0x80130b40
    lbz     r0, R13Off_m0x64f0(r13)
    extsb.  r0, r0
    bne-    branch_0x80130ae8
    addi    r3, r13, R13Off_m0x64ec
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__24TNerveBathtubKillerBreak@ha
    addi    r0, r3, __vvt__24TNerveBathtubKillerBreak@l
    lis     r4, __dt__24TNerveBathtubKillerBreakFv@ha
    stw     r0, R13Off_m0x64ec(r13)
    lis     r3, unk_803f37b0@h
    addi    r5, r3, unk_803f37b0@l
    addi    r4, r4, __dt__24TNerveBathtubKillerBreakFv@l
    addi    r3, r13, R13Off_m0x64ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f0(r13)
branch_0x80130ae8:
    addi    r6, r13, R13Off_m0x64ec
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80130b40
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80130b34
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80130b34
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80130b34:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80130b40:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl isCollidMove__14TBathtubKillerFP9THitActor
isCollidMove__14TBathtubKillerFP9THitActor: # 0x80130b5c
    mflr    r0
    lis     r5, unk_803f3780@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, unk_803f3780@l
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80130bb8
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80130bb8:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x64e4
    li      r28, 0x1
    lwz     r27, 0x14(r3)
    cmplw   r27, r0
    beq-    branch_0x80130be8
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r27, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130be8
    li      r28, 0x0
branch_0x80130be8:
    clrlwi. r0, r28, 24
    beq-    branch_0x80130bf8
    li      r3, 0x0
    b       branch_0x80130f74

branch_0x80130bf8:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x29
    bne-    branch_0x80130c10
    li      r0, 0x1
    b       branch_0x80130c14

branch_0x80130c10:
    li      r0, 0x0
branch_0x80130c14:
    clrlwi. r0, r0, 24
    beq-    branch_0x80130d00
    lwz     r3, 0x8c(r29)
    li      r28, 0x1
    lwz     r30, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r30, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130c5c
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r30, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130c5c
    li      r28, 0x0
branch_0x80130c5c:
    clrlwi. r0, r28, 24
    bne-    branch_0x80130cf8
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80130ca0
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80130ca0:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80130cf8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80130cec
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80130cec
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80130cec:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80130cf8:
    li      r3, 0x1
    b       branch_0x80130f74

branch_0x80130d00:
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x21
    bne-    branch_0x80130d14
    li      r0, 0x1
    b       branch_0x80130d18

branch_0x80130d14:
    li      r0, 0x0
branch_0x80130d18:
    clrlwi. r0, r0, 24
    bne-    branch_0x80130d60
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x2a
    bne-    branch_0x80130d34
    li      r0, 0x1
    b       branch_0x80130d38

branch_0x80130d34:
    li      r0, 0x0
branch_0x80130d38:
    clrlwi. r0, r0, 24
    bne-    branch_0x80130d60
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x2c
    bne-    branch_0x80130d54
    li      r0, 0x1
    b       branch_0x80130d58

branch_0x80130d54:
    li      r0, 0x0
branch_0x80130d58:
    clrlwi. r0, r0, 24
    beq-    branch_0x80130e60
branch_0x80130d60:
    lwz     r3, 0x8c(r29)
    li      r28, 0x1
    lwz     r27, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r27, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130da0
    lwz     r3, 0x8c(r29)
    lwz     r27, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r27, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130da0
    li      r28, 0x0
branch_0x80130da0:
    clrlwi. r0, r28, 24
    bne-    branch_0x80130e3c
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80130de4
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80130de4:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80130e3c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80130e30
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80130e30
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80130e30:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80130e3c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80130f74

branch_0x80130e60:
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x24
    bne-    branch_0x80130e74
    li      r0, 0x1
    b       branch_0x80130e78

branch_0x80130e74:
    li      r0, 0x0
branch_0x80130e78:
    clrlwi. r0, r0, 24
    beq-    branch_0x80130f70
    lwz     r0, 0x214(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x80130f70
    lwz     r3, 0x8c(r29)
    li      r27, 0x1
    lwz     r28, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r28, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130ecc
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r28, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80130ecc
    li      r27, 0x0
branch_0x80130ecc:
    clrlwi. r0, r27, 24
    bne-    branch_0x80130f68
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80130f10
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80130f10:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80130f68
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80130f5c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80130f5c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80130f5c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80130f68:
    li      r3, 0x1
    b       branch_0x80130f74

branch_0x80130f70:
    li      r3, 0x1
branch_0x80130f74:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl attackToMario__14TBathtubKillerFv
attackToMario__14TBathtubKillerFv: # 0x80130f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80130fe4
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r4, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    lis     r3, unk_803f37bc@h
    addi    r5, r3, unk_803f37bc@l
    addi    r4, r4, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80130fe4:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x64e4
    li      r30, 0x1
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    beq-    branch_0x80131014
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80131014
    li      r30, 0x0
branch_0x80131014:
    clrlwi. r0, r30, 24
    bne-    branch_0x80131100
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80131100
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80131074
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r4, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    lis     r3, unk_803f37bc@h
    addi    r5, r3, unk_803f37bc@l
    addi    r4, r4, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80131074:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x801310cc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x801310c0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x801310c0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x801310c0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x801310cc:
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lfs     f2, -0x4f34(r2)
    addi    r3, sp, 0x34
    lfs     f0, -0x4f38(r2)
    stfs    f2, 0x34(sp)
    lfs     f1, -0x4f0c(r2)
    stfs    f0, 0x38(sp)
    stfs    f2, 0x3c(sp)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    li      r0, 0x1
    stw     r0, 0x21c(r31)
branch_0x80131100:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl receiveMessage__14TBathtubKillerFP9THitActorUl
receiveMessage__14TBathtubKillerFP9THitActorUl: # 0x8013111c
    mflr    r0
    cmplwi  r5, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    beq-    branch_0x80131148
    cmplwi  r5, 0x1
    bgt-    branch_0x80131230
branch_0x80131148:
    lwz     r3, 0x8c(r31)
    li      r30, 0x1
    lwz     r29, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80131188
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80131188
    li      r30, 0x0
branch_0x80131188:
    clrlwi. r0, r30, 24
    bne-    branch_0x80131228
    lbz     r0, R13Off_m0x64f0(r13)
    extsb.  r0, r0
    bne-    branch_0x801311d0
    addi    r3, r13, R13Off_m0x64ec
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__24TNerveBathtubKillerBreak@ha
    addi    r0, r3, __vvt__24TNerveBathtubKillerBreak@l
    lis     r4, __dt__24TNerveBathtubKillerBreakFv@ha
    stw     r0, R13Off_m0x64ec(r13)
    lis     r3, unk_803f37b0@h
    addi    r5, r3, unk_803f37b0@l
    addi    r4, r4, __dt__24TNerveBathtubKillerBreakFv@l
    addi    r3, r13, R13Off_m0x64ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64f0(r13)
branch_0x801311d0:
    addi    r6, r13, R13Off_m0x64ec
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80131228
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8013121c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8013121c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8013121c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80131228:
    li      r3, 0x1
    b       branch_0x8013136c

branch_0x80131230:
    cmplwi  r5, 0xa
    bne-    branch_0x80131320
    lwz     r3, 0x8c(r31)
    li      r29, 0x1
    lwz     r30, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r30, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80131278
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r30, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80131278
    li      r29, 0x0
branch_0x80131278:
    clrlwi. r0, r29, 24
    bne-    branch_0x80131318
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x801312c0
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r4, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    lis     r3, unk_803f37bc@h
    addi    r5, r3, unk_803f37bc@l
    addi    r4, r4, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x801312c0:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80131318
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8013130c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8013130c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8013130c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80131318:
    li      r3, 0x1
    b       branch_0x8013136c

branch_0x80131320:
    cmplwi  r5, 0xd
    bne-    branch_0x80131344
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8013136c

branch_0x80131344:
    cmplwi  r5, 0xf
    bne-    branch_0x80131368
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8013136c

branch_0x80131368:
    li      r3, 0x0
branch_0x8013136c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl calcRootMatrix__14TBathtubKillerFv
calcRootMatrix__14TBathtubKillerFv: # 0x80131388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0xc
    addi    r4, r30, 0x1ac
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    mr      r3, r30
    stfs    f0, 0x18(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x28(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x38(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    addi    r31, sp, 0xc
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl getGravityY__14TBathtubKillerCFv
getGravityY__14TBathtubKillerCFv: # 0x80131418
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    lfs     f1, 0x4ec(r3)
    mtlr    r0
    blr


.globl makeQuat__14TBathtubKillerFQ29JGeometry8TVec3_f_ff
makeQuat__14TBathtubKillerFQ29JGeometry8TVec3_f_ff: # 0x80131448
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e0(sp)
    stfd    f31, 0x1d8(sp)
    stfd    f30, 0x1d0(sp)
    stfd    f29, 0x1c8(sp)
    stfd    f28, 0x1c0(sp)
    stfd    f27, 0x1b8(sp)
    stfd    f26, 0x1b0(sp)
    stfd    f25, 0x1a8(sp)
    fmr     f25, f2
    stfd    f24, 0x1a0(sp)
    fmr     f24, f1
    stfd    f23, 0x198(sp)
    stfd    f22, 0x190(sp)
    stfd    f21, 0x188(sp)
    stfd    f20, 0x180(sp)
    stw     r31, 0x17c(sp)
    mr      r31, r3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x4f24(r2)
    stw     r5, 0x168(sp)
    stw     r0, 0x16c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x170(sp)
    lfs     f2, 0x168(sp)
    lfs     f1, 0x16c(sp)
    lfs     f3, 0x170(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801314f0
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x170(sp)
    stfs    f0, 0x16c(sp)
    stfs    f0, 0x168(sp)
    b       branch_0x80131520

branch_0x801314f0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4f38(r2)
    lfs     f0, 0x168(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x168(sp)
    lfs     f0, 0x16c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(sp)
    lfs     f0, 0x170(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x170(sp)
branch_0x80131520:
    lfs     f11, 0x1b0(r31)
    lfs     f9, 0x1b8(r31)
    lfs     f7, 0x1ac(r31)
    fmuls   f4, f11, f11
    lfs     f10, 0x1b4(r31)
    fmuls   f0, f9, f11
    lfs     f8, -0x4f28(r2)
    fmuls   f5, f7, f10
    fmuls   f1, f8, f0
    lfs     f0, -0x4f38(r2)
    fmuls   f3, f7, f7
    lfs     f2, 0x170(sp)
    fmadds  f28, f8, f5, f1
    fmuls   f6, f11, f10
    lfs     f1, 0x16c(sp)
    fmuls   f5, f9, f7
    lfs     f20, 0x168(sp)
    fnmsubs  f12, f8, f3, f0
    fmuls   f0, f8, f6
    lfs     f3, -0x4f34(r2)
    fmuls   f13, f8, f5
    fnmsubs  f26, f8, f4, f12
    fmuls   f4, f28, f2
    fsubs   f27, f0, f13
    fmuls   f6, f26, f1
    fmsubs  f21, f26, f20, f4
    fmuls   f5, f27, f20
    fmsubs  f22, f27, f2, f6
    fmuls   f4, f21, f21
    fmuls   f6, f9, f10
    fmsubs  f20, f28, f1, f5
    fmadds  f4, f22, f22, f4
    fmuls   f5, f10, f10
    fmuls   f7, f7, f11
    fmadds  f23, f20, f20, f4
    fmuls   f4, f8, f6
    fnmsubs  f30, f8, f5, f12
    fcmpo   cr0, f23, f3
    fmsubs  f31, f8, f7, f4
    fadds   f29, f0, f13
    cror    2, 0, 2
    bne-    branch_0x801315cc
    b       branch_0x801315f0

branch_0x801315cc:
    frsqrte f5, f23
    lfs     f4, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f0, f23, f3, f0
    fmuls   f0, f4, f0
    fmuls   f23, f23, f0
branch_0x801315f0:
    lfs     f0, -0x4f24(r2)
    fcmpo   cr0, f23, f0
    cror    2, 0, 2
    bne-    branch_0x8013161c
    lfs     f1, -0x4f34(r2)
    lfs     f0, -0x4f38(r2)
    stfs    f1, 0x140(sp)
    stfs    f1, 0x144(sp)
    stfs    f1, 0x148(sp)
    stfs    f0, 0x14c(sp)
    b       branch_0x80131670

branch_0x8013161c:
    fmuls   f0, f27, f1
    lfs     f1, 0x168(sp)
    fmadds  f0, f28, f1, f0
    fmr     f1, f23
    fmadds  f2, f26, f2, f0
    bl      atan2f
    lfs     f0, -0x4f1c(r2)
    fmuls   f0, f0, f1
    fmuls   f24, f24, f0
    fmr     f1, f24
    bl      sinf
    fdivs   f1, f1, f23
    fmuls   f0, f22, f1
    fmuls   f2, f21, f1
    stfs    f0, 0x140(sp)
    fmuls   f0, f20, f1
    fmr     f1, f24
    stfs    f2, 0x144(sp)
    stfs    f0, 0x148(sp)
    bl      cosf
    stfs    f1, 0x14c(sp)
branch_0x80131670:
    lfs     f5, 0x14c(sp)
    lfs     f10, 0x1ac(r31)
    lfs     f8, 0x1b0(r31)
    lfs     f9, 0x140(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1b8(r31)
    fmuls   f1, f5, f8
    lfs     f11, 0x144(sp)
    lfs     f4, 0x1b4(r31)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x148(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x1ac(r31)
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f0, f11, f10, f0
    stfs    f1, 0x1b0(r31)
    fnmsubs  f2, f7, f4, f3
    stfs    f0, 0x1b4(r31)
    stfs    f2, 0x1b8(r31)
    lfs     f2, -0x4f34(r2)
    lfs     f1, -0x4f38(r2)
    fmuls   f3, f27, f2
    fmuls   f0, f28, f2
    fnmsubs  f20, f26, f1, f3
    fmsubs  f21, f26, f2, f0
    fmsubs  f22, f28, f1, f3
    fmuls   f0, f21, f21
    fmadds  f0, f20, f20, f0
    fmadds  f1, f22, f22, f0
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8013171c
    fmr     f0, f1
    b       branch_0x80131740

branch_0x8013171c:
    frsqrte f4, f1
    lfs     f3, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f0, f1, f0
branch_0x80131740:
    lfs     f23, -0x4f34(r2)
    fcmpo   cr0, f0, f23
    ble-    branch_0x80131970
    lfs     f0, -0x4f24(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80131768
    fmr     f21, f23
    fmr     f20, f21
    b       branch_0x80131780

branch_0x80131768:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x4f38(r2)
    fmuls   f0, f0, f1
    fmuls   f20, f20, f0
    fmuls   f21, f21, f0
    fmuls   f23, f22, f0
branch_0x80131780:
    lfs     f1, -0x4f08(r2)
    bl      sinf
    fmuls   f3, f20, f1
    fmuls   f2, f21, f1
    fmuls   f0, f23, f1
    stfs    f3, 0x124(sp)
    stfs    f2, 0x128(sp)
    stfs    f0, 0x12c(sp)
    lfs     f1, -0x4f08(r2)
    bl      cosf
    stfs    f1, 0x130(sp)
    lfs     f9, 0x12c(sp)
    lfs     f5, 0x124(sp)
    fmuls   f0, f9, f28
    lfs     f11, 0x128(sp)
    fneg    f1, f5
    lfs     f10, 0x130(sp)
    fmuls   f3, f9, f27
    fmadds  f0, f1, f26, f0
    lfs     f2, -0x4f34(r2)
    fmsubs  f4, f11, f26, f3
    fmuls   f3, f11, f28
    fmadds  f8, f10, f27, f0
    fmuls   f0, f11, f27
    fmsubs  f6, f5, f27, f3
    fneg    f12, f9
    fmsubs  f5, f1, f28, f0
    fmadds  f7, f10, f28, f4
    fmuls   f4, f8, f12
    fmuls   f3, f8, f10
    fneg    f11, f11
    fmuls   f0, f8, f1
    fmadds  f6, f10, f26, f6
    fmadds  f4, f7, f10, f4
    fmsubs  f0, f7, f11, f0
    fmadds  f3, f7, f9, f3
    fnmsubs  f5, f9, f26, f5
    fmadds  f0, f6, f10, f0
    fnmsubs  f4, f6, f11, f4
    fmadds  f3, f6, f1, f3
    fmadds  f0, f5, f12, f0
    fmadds  f6, f5, f1, f4
    fmadds  f5, f5, f11, f3
    fmuls   f3, f31, f0
    fmuls   f1, f30, f6
    fmuls   f4, f29, f5
    fmsubs  f21, f29, f6, f3
    fmsubs  f22, f31, f5, f1
    fmsubs  f20, f30, f0, f4
    fmuls   f1, f21, f21
    fmadds  f1, f20, f20, f1
    fmadds  f23, f22, f22, f1
    fcmpo   cr0, f23, f2
    cror    2, 0, 2
    bne-    branch_0x80131860
    b       branch_0x80131884

branch_0x80131860:
    frsqrte f4, f23
    lfs     f3, -0x4f1c(r2)
    lfs     f1, -0x4f18(r2)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f1, f23, f2, f1
    fmuls   f1, f3, f1
    fmuls   f23, f23, f1
branch_0x80131884:
    lfs     f1, -0x4f24(r2)
    fcmpo   cr0, f23, f1
    cror    2, 0, 2
    bne-    branch_0x801318b0
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x140(sp)
    stfs    f0, 0x144(sp)
    stfs    f0, 0x148(sp)
    lfs     f0, -0x4f38(r2)
    stfs    f0, 0x14c(sp)
    b       branch_0x80131900

branch_0x801318b0:
    fmuls   f1, f30, f5
    fmadds  f2, f31, f6, f1
    fmr     f1, f23
    fmadds  f2, f29, f0, f2
    bl      atan2f
    lfs     f0, -0x4f1c(r2)
    fmuls   f0, f0, f1
    fmuls   f24, f25, f0
    fmr     f1, f24
    bl      sinf
    fdivs   f1, f1, f23
    fmuls   f0, f20, f1
    fmuls   f2, f21, f1
    stfs    f0, 0x140(sp)
    fmuls   f0, f22, f1
    fmr     f1, f24
    stfs    f2, 0x144(sp)
    stfs    f0, 0x148(sp)
    bl      cosf
    stfs    f1, 0x14c(sp)
branch_0x80131900:
    lfs     f5, 0x14c(sp)
    lfs     f10, 0x1ac(r31)
    lfs     f8, 0x1b0(r31)
    lfs     f9, 0x140(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1b8(r31)
    fmuls   f1, f5, f8
    lfs     f4, 0x1b4(r31)
    lfs     f11, 0x144(sp)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x148(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x1ac(r31)
    fnmsubs  f0, f11, f10, f0
    fnmsubs  f2, f7, f4, f3
    stfs    f1, 0x1b0(r31)
    stfs    f0, 0x1b4(r31)
    stfs    f2, 0x1b8(r31)
branch_0x80131970:
    lfs     f1, 0x1ac(r31)
    lfs     f0, 0x1b0(r31)
    fmuls   f1, f1, f1
    lfs     f2, 0x1b4(r31)
    fmuls   f0, f0, f0
    lfs     f3, 0x1b8(r31)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    lfs     f0, -0x4f24(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801319c4
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x1b8(r31)
    stfs    f0, 0x1b4(r31)
    stfs    f0, 0x1b0(r31)
    stfs    f0, 0x1ac(r31)
    b       branch_0x80131a00

branch_0x801319c4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4f38(r2)
    lfs     f0, 0x1ac(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1ac(r31)
    lfs     f0, 0x1b0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b0(r31)
    lfs     f0, 0x1b4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(r31)
    lfs     f0, 0x1b8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(r31)
branch_0x80131a00:
    lwz     r0, 0x1e4(sp)
    lfd     f31, 0x1d8(sp)
    lfd     f30, 0x1d0(sp)
    mtlr    r0
    lfd     f29, 0x1c8(sp)
    lfd     f28, 0x1c0(sp)
    lfd     f27, 0x1b8(sp)
    lfd     f26, 0x1b0(sp)
    lfd     f25, 0x1a8(sp)
    lfd     f24, 0x1a0(sp)
    lfd     f23, 0x198(sp)
    lfd     f22, 0x190(sp)
    lfd     f21, 0x188(sp)
    lfd     f20, 0x180(sp)
    lwz     r31, 0x17c(sp)
    addi    sp, sp, 0x1e0
    blr


.globl moveChasing__14TBathtubKillerFv
moveChasing__14TBathtubKillerFv: # 0x80131a44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stfd    f27, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x70(sp)
    lwz     r3, 0x1cc(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1c(r3)
    lwz     r3, 0x1cc(r31)
    lfs     f0, 0x200(r31)
    lwz     r12, 0x0(r3)
    fadds   f29, f0, f1
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x1c(r3)
    lfs     f0, 0x204(r31)
    lfs     f1, -0x4f1c(r2)
    fadds   f31, f0, f2
    fadds   f0, f29, f31
    fmuls   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x14(r31)
    lfs     f4, 0x68(sp)
    fsubs   f28, f1, f0
    lfs     f0, 0x10(r31)
    lfs     f3, 0x70(sp)
    fsubs   f30, f4, f0
    lfs     f2, 0x18(r31)
    fmuls   f1, f28, f28
    lfs     f0, -0x4f24(r2)
    fsubs   f27, f3, f2
    fmadds  f1, f30, f30, f1
    fmadds  f1, f27, f27, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80131b28
    lfs     f0, -0x4f34(r2)
    fmr     f2, f0
    fmr     f1, f2
    b       branch_0x80131b40

branch_0x80131b28:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x4f38(r2)
    fmuls   f0, f0, f1
    fmuls   f1, f30, f0
    fmuls   f2, f28, f0
    fmuls   f0, f27, f0
branch_0x80131b40:
    lfs     f3, 0x19c(r31)
    addi    r4, sp, 0x4c
    addi    r3, r31, 0x0
    fmuls   f1, f1, f3
    fmuls   f2, f2, f3
    fmuls   f0, f0, f3
    stfs    f1, 0x1bc(r31)
    stfs    f2, 0x1c0(r31)
    stfs    f0, 0x1c4(r31)
    lwz     r5, 0x1bc(r31)
    lwz     r0, 0x1c0(r31)
    lfs     f2, -0x4f20(r2)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x1c4(r31)
    stw     r0, 0x54(sp)
    lfs     f1, 0x198(r31)
    bl      makeQuat__14TBathtubKillerFQ29JGeometry8TVec3_f_ff
    lfs     f6, 0x1ac(r31)
    lfs     f1, 0x1b8(r31)
    lfs     f9, 0x1b0(r31)
    fmuls   f2, f6, f6
    lfs     f8, 0x1b4(r31)
    fmuls   f0, f1, f6
    lfs     f7, -0x4f28(r2)
    fmuls   f5, f1, f9
    fmuls   f3, f7, f0
    lfs     f1, -0x4f38(r2)
    fmuls   f4, f9, f8
    lfs     f0, -0x4f24(r2)
    fmuls   f6, f6, f8
    fmuls   f5, f7, f5
    fmsubs  f30, f7, f4, f3
    fnmsubs  f2, f7, f2, f1
    fmuls   f3, f9, f9
    fmadds  f27, f7, f6, f5
    fmuls   f1, f30, f30
    fnmsubs  f28, f7, f3, f2
    fmadds  f1, f27, f27, f1
    fmadds  f1, f28, f28, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80131bfc
    lfs     f4, -0x4f34(r2)
    fmr     f3, f4
    fmr     f2, f3
    b       branch_0x80131c14

branch_0x80131bfc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x4f38(r2)
    fmuls   f0, f0, f1
    fmuls   f2, f27, f0
    fmuls   f3, f30, f0
    fmuls   f4, f28, f0
branch_0x80131c14:
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f1, f31
    ble-    branch_0x80131c38
    lfs     f0, -0x4f34(r2)
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x80131c34
    b       branch_0x80131c38

branch_0x80131c34:
    fmr     f3, f0
branch_0x80131c38:
    fcmpo   cr0, f1, f29
    bge-    branch_0x80131c5c
    lfs     f0, -0x4f34(r2)
    fcmpo   cr0, f0, f3
    cror    2, 1, 2
    bne-    branch_0x80131c54
    b       branch_0x80131c58

branch_0x80131c54:
    fmr     f0, f3
branch_0x80131c58:
    fmr     f3, f0
branch_0x80131c5c:
    lfs     f0, 0x1a0(r31)
    fmuls   f2, f2, f0
    fmuls   f3, f3, f0
    fmuls   f4, f4, f0
    stfs    f2, 0xac(r31)
    stfs    f3, 0xb0(r31)
    stfs    f4, 0xb4(r31)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl makeInitialVelocity__14TBathtubKillerFQ29JGeometry8TVec3_f_
makeInitialVelocity__14TBathtubKillerFQ29JGeometry8TVec3_f_: # 0x80131ca0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stfd    f30, 0xb8(sp)
    stfd    f29, 0xb0(sp)
    stfd    f28, 0xa8(sp)
    stfd    f27, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r4
    stw     r30, 0x98(sp)
    mr      r30, r3
    lfs     f2, 0x0(r4)
    lfs     f1, 0x4(r4)
    fmuls   f2, f2, f2
    lfs     f3, 0x8(r4)
    fmuls   f1, f1, f1
    lfs     f0, -0x4f34(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f27, f3, f1
    fcmpo   cr0, f27, f0
    cror    2, 0, 2
    bne-    branch_0x80131d04
    b       branch_0x80131d28

branch_0x80131d04:
    frsqrte f3, f27
    lfs     f2, -0x4f1c(r2)
    lfs     f0, -0x4f18(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f27, f1, f0
    fmuls   f0, f2, f0
    fmuls   f27, f27, f0
branch_0x80131d28:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f28, 0x4d8(r3)
    fcmpo   cr0, f27, f28
    ble-    branch_0x80131de0
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, -0x4f24(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80131d8c
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80131dbc

branch_0x80131d8c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4f38(r2)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80131dbc:
    lfs     f0, 0x0(r31)
    fmuls   f0, f0, f28
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f28
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f28
    stfs    f0, 0x8(r31)
branch_0x80131de0:
    lfs     f0, 0x0(r31)
    stfs    f0, 0xac(r30)
    lfs     f0, 0x4(r31)
    stfs    f0, 0xb0(r30)
    lfs     f0, 0x8(r31)
    stfs    f0, 0xb4(r30)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x8(r31)
    fmuls   f1, f0, f0
    lfs     f0, -0x4f24(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80131e3c
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x8(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x0(r31)
    b       branch_0x80131e6c

branch_0x80131e3c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4f38(r2)
    lfs     f0, 0x0(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    lfs     f0, 0x4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r31)
branch_0x80131e6c:
    lfs     f9, 0x1b0(r30)
    lfs     f7, 0x1b8(r30)
    lfs     f5, 0x1ac(r30)
    fmuls   f3, f9, f9
    lfs     f8, 0x1b4(r30)
    fmuls   f0, f7, f9
    lfs     f6, -0x4f28(r2)
    fmuls   f4, f5, f8
    fmuls   f0, f6, f0
    lfs     f1, -0x4f38(r2)
    fmuls   f2, f5, f5
    lfs     f10, 0x8(r31)
    fmadds  f0, f6, f4, f0
    fmuls   f4, f7, f5
    lfs     f12, 0x4(r31)
    fnmsubs  f2, f6, f2, f1
    lfs     f11, 0x0(r31)
    fmuls   f5, f9, f8
    fmuls   f4, f6, f4
    lfs     f1, -0x4f34(r2)
    fnmsubs  f7, f6, f3, f2
    fmuls   f2, f0, f10
    fmsubs  f5, f6, f5, f4
    fmuls   f4, f7, f12
    fmsubs  f29, f7, f11, f2
    fmuls   f3, f5, f11
    fmsubs  f30, f5, f10, f4
    fmuls   f2, f29, f29
    fmsubs  f28, f0, f12, f3
    fmadds  f2, f30, f30, f2
    fmadds  f31, f28, f28, f2
    fcmpo   cr0, f31, f1
    cror    2, 0, 2
    bne-    branch_0x80131ef8
    b       branch_0x80131f1c

branch_0x80131ef8:
    frsqrte f4, f31
    lfs     f3, -0x4f1c(r2)
    lfs     f1, -0x4f18(r2)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f1, f31, f2, f1
    fmuls   f1, f3, f1
    fmuls   f31, f31, f1
branch_0x80131f1c:
    lfs     f1, -0x4f24(r2)
    fcmpo   cr0, f31, f1
    cror    2, 0, 2
    bne-    branch_0x80131f48
    lfs     f1, -0x4f34(r2)
    lfs     f0, -0x4f38(r2)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x80(sp)
    stfs    f0, 0x84(sp)
    b       branch_0x80131fa8

branch_0x80131f48:
    lfs     f1, 0x4(r31)
    lfs     f3, 0x0(r31)
    fmuls   f2, f5, f1
    lfs     f4, 0x8(r31)
    fmr     f1, f31
    fmadds  f0, f0, f3, f2
    fmadds  f2, f7, f4, f0
    bl      atan2f
    lfs     f0, -0x4f1c(r2)
    lfs     f2, -0x4f38(r2)
    fmuls   f0, f0, f1
    fmuls   f27, f2, f0
    fmr     f1, f27
    bl      sinf
    fdivs   f1, f1, f31
    fmuls   f0, f30, f1
    fmuls   f2, f29, f1
    stfs    f0, 0x78(sp)
    fmuls   f0, f28, f1
    fmr     f1, f27
    stfs    f2, 0x7c(sp)
    stfs    f0, 0x80(sp)
    bl      cosf
    stfs    f1, 0x84(sp)
branch_0x80131fa8:
    lfs     f5, 0x84(sp)
    lfs     f10, 0x1ac(r30)
    lfs     f8, 0x1b0(r30)
    lfs     f9, 0x78(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1b8(r30)
    fmuls   f1, f5, f8
    lfs     f4, 0x1b4(r30)
    lfs     f11, 0x7c(sp)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x80(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x1ac(r30)
    fnmsubs  f0, f11, f10, f0
    fnmsubs  f2, f7, f4, f3
    stfs    f1, 0x1b0(r30)
    stfs    f0, 0x1b4(r30)
    stfs    f2, 0x1b8(r30)
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lfd     f30, 0xb8(sp)
    lfd     f29, 0xb0(sp)
    lfd     f28, 0xa8(sp)
    lfd     f27, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl perform__14TBathtubKillerFUlPQ26JDrama9TGraphics
perform__14TBathtubKillerFUlPQ26JDrama9TGraphics: # 0x80132044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stfd    f31, 0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xb8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0x1cc(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x801320b4
    lwz     r4, R13Off_m0x5db8(r13)
    lis     r3, unk_8038676c@h
    addi    r29, r3, unk_8038676c@l
    lwz     r28, 0x4(r4)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x1cc(r30)
branch_0x801320b4:
    clrlwi. r0, r31, 31
    beq-    branch_0x8013228c
    lwz     r0, 0xf0(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x8013228c
    addi    r4, r30, 0x208
    lwz     r3, 0x208(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x801320e0
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x801320e0:
    addi    r4, r30, 0x20c
    lwz     r3, 0x20c(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x801320f8
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x801320f8:
    addi    r4, r30, 0x210
    lwz     r3, 0x210(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x80132110
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x80132110:
    addi    r4, r30, 0x214
    lwz     r3, 0x214(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x80132128
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x80132128:
    addi    r4, r30, 0x218
    lwz     r3, 0x218(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x80132140
    addi    r0, r3, -0x1
    stw     r0, 0x0(r4)
branch_0x80132140:
    lwz     r0, 0x208(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8013222c
    lwz     r3, 0x8c(r30)
    li      r28, 0x1
    lwz     r29, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8013218c
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8013218c
    li      r28, 0x0
branch_0x8013218c:
    clrlwi. r0, r28, 24
    bne-    branch_0x8013222c
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x801321d4
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r4, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    lis     r3, unk_803f37bc@h
    addi    r5, r3, unk_803f37bc@l
    addi    r4, r4, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x801321d4:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8013222c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80132220
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80132220
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80132220:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8013222c:
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x10(r30)
    lfs     f2, 0x18(r30)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x80132260
    li      r0, 0x0
    stw     r0, 0x21c(r30)
    mr      r3, r30
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    bl      stopAnmSound__10TLiveActorFv
branch_0x80132260:
    lwz     r3, 0x1cc(r30)
    lbz     r0, 0x29a(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8013228c
    li      r0, 0x0
    stw     r0, 0x21c(r30)
    mr      r3, r30
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    bl      stopAnmSound__10TLiveActorFv
branch_0x8013228c:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x801324ac
    lwz     r0, 0xf0(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x801324ac
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x801322e0
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r4, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    lis     r3, unk_803f37bc@h
    addi    r5, r3, unk_803f37bc@l
    addi    r4, r4, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x801322e0:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x64e4
    li      r28, 0x1
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    beq-    branch_0x80132310
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r29, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80132310
    li      r28, 0x0
branch_0x80132310:
    clrlwi. r0, r28, 24
    bne-    branch_0x801324ac
    lbz     r0, 0x194(r30)
    cmplwi  r0, 0x2
    bne-    branch_0x801323b8
    lfs     f1, 0x1fc(r30)
    lfs     f0, 0x1f8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x1fc(r30)
    lfs     f1, 0x1fc(r30)
    lfs     f0, -0x4f38(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80132368
    stfs    f0, 0x1fc(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x3c0(r3)
    fneg    f0, f0
    stfs    f0, 0x1f8(r30)
branch_0x80132368:
    lfs     f1, 0x1fc(r30)
    lfs     f0, -0x4f34(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80132398
    stfs    f0, 0x1fc(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x3c0(r3)
    stfs    f0, 0x1f8(r30)
branch_0x80132398:
    lfs     f1, -0x4f04(r2)
    lfs     f0, 0x1fc(r30)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r0, 0xac(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x1e0(r30)
branch_0x801323b8:
    lwz     r4, 0x1d4(r30)
    addi    r3, r30, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x1d4(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x1d4(r30)
    lwz     r0, 0x53c(r3)
    cmpw    r4, r0
    blt-    branch_0x8013242c
    li      r0, 0x0
    stw     r0, 0x1d4(r30)
    addi    r3, r30, 0x220
    addi    r4, r30, 0x1ac
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    addi    r5, r30, 0x220
    addi    r7, r30, 0x0
    stfs    f0, 0x22c(r30)
    li      r4, 0x1bd
    li      r6, 0x1
    lfs     f0, 0x14(r30)
    stfs    f0, 0x23c(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x24c(r30)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8013242c:
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f3, 0x10(r30)
    lfs     f2, 0x0(r3)
    lfs     f1, 0x14(r30)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r3)
    lfs     f2, 0x18(r30)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r3)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmr     f31, f1
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20a9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801324ac
    fmr     f1, f31
    addi    r4, r30, 0x10
    li      r3, 0x20a9
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801324ac:
    lwz     r0, 0xcc(sp)
    lfd     f31, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    mtlr    r0
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc8
    blr


.globl bind__14TBathtubKillerFv
bind__14TBathtubKillerFv: # 0x801324d0
    mflr    r0
    lis     r4, unk_803f3780@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r27, 0x7c(sp)
    mr      r29, r3
    addi    r31, r4, unk_803f3780@l
    addi    r30, sp, 0x74
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r29)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x74(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x94(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x98(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x9c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0xac(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0xb0(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0xb4(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0xac(r29)
    lfs     f0, 0x1bc(r29)
    fadds   f0, f1, f0
    stfs    f0, 0xac(r29)
    lfs     f1, 0xb0(r29)
    lfs     f0, 0x1c0(r29)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r29)
    lfs     f1, 0xb4(r29)
    lfs     f0, 0x1c4(r29)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(r29)
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x801325d4
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x801325d4:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x64e4
    li      r28, 0x1
    lwz     r27, 0x14(r3)
    cmplw   r27, r0
    beq-    branch_0x80132604
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r27, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x80132604
    li      r28, 0x0
branch_0x80132604:
    clrlwi. r0, r28, 24
    bne-    branch_0x8013286c
    lfs     f1, 0x70(sp)
    addi    r4, r29, 0xc4
    lfs     f0, 0xc0(r29)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x6c(sp)
    lfs     f3, 0x74(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r29)
    lfs     f1, 0xc8(r29)
    lfs     f0, -0x4f38(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r29)
    lfs     f1, -0x4f00(r2)
    lfs     f0, 0xc8(r29)
    lfs     f2, 0x70(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80132768
    lwz     r3, 0x8c(r29)
    li      r28, 0x1
    lwz     r27, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r27, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8013269c
    lwz     r3, 0x8c(r29)
    lwz     r27, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r27, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x8013269c
    li      r28, 0x0
branch_0x8013269c:
    clrlwi. r0, r28, 24
    bne-    branch_0x80132738
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x801326e0
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x801326e0:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80132738
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8013272c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8013272c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8013272c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80132738:
    lfs     f0, -0x4f34(r2)
    stfs    f0, 0x1bc(r29)
    stfs    f0, 0x1c0(r29)
    stfs    f0, 0x1c4(r29)
    lfs     f0, 0x1bc(r29)
    stfs    f0, 0xac(r29)
    lfs     f0, 0x1c0(r29)
    stfs    f0, 0xb0(r29)
    lfs     f0, 0x1c4(r29)
    stfs    f0, 0xb4(r29)
    lfs     f0, 0xc8(r29)
    stfs    f0, 0x70(sp)
branch_0x80132768:
    lfs     f1, 0x70(sp)
    mr      r5, r30
    lfs     f0, 0xc0(r29)
    addi    r4, sp, 0x6c
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, 0xbc(r29)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x8013286c
    lwz     r3, 0x8c(r29)
    li      r27, 0x1
    lwz     r28, 0x14(r3)
    bl      theNerve__28TNerveBathtubKillerExplosionFv
    subf    r0, r28, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x801327d0
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    bl      theNerve__24TNerveBathtubKillerBreakFv
    subf    r0, r28, r3
    cntlzw  r0, r0
    extrwi. r0, r0, 8, 19
    bne-    branch_0x801327d0
    li      r27, 0x0
branch_0x801327d0:
    clrlwi. r0, r27, 24
    bne-    branch_0x8013286c
    lbz     r0, R13Off_m0x64e8(r13)
    extsb.  r0, r0
    bne-    branch_0x80132814
    addi    r3, r13, R13Off_m0x64e4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__28TNerveBathtubKillerExplosion@ha
    addi    r0, r3, __vvt__28TNerveBathtubKillerExplosion@l
    lis     r3, __dt__28TNerveBathtubKillerExplosionFv@ha
    stw     r0, R13Off_m0x64e4(r13)
    addi    r4, r3, __dt__28TNerveBathtubKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x64e4
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x64e8(r13)
branch_0x80132814:
    addi    r6, r13, R13Off_m0x64e4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x8013286c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80132860
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80132860
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80132860:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8013286c:
    lwz     r0, 0x6c(sp)
    addi    r3, sp, 0x4c
    lwz     r5, 0x70(sp)
    addi    r4, r29, 0x10
    stw     r0, 0x4c(sp)
    lwz     r0, 0x74(sp)
    stw     r5, 0x50(sp)
    stw     r0, 0x54(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x94(r29)
    stw     r0, 0x98(r29)
    lwz     r0, 0x54(sp)
    stw     r0, 0x9c(r29)
    lwz     r0, 0x94(sp)
    lmw     r27, 0x7c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl generateItemBathtubKiller__14TBathtubKillerFv
generateItemBathtubKiller__14TBathtubKillerFv: # 0x801328bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r3
    stw     r28, 0x38(sp)
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80132b28
    lis     r4, unk_00020001@h
    lwz     r3, R13Off_m0x6060(r13)
    lwz     r30, 0x70(r29)
    addi    r4, r4, unk_00020001@l
    li      r31, 0x0
    bl      getFlag__12TFlagManagerCFUl
    mr      r28, r3
    bl      SMS_GetMarioWaterGun__Fv
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8013293c
    lis     r4, unk_20000002@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r29)
    addi    r4, r4, unk_20000002@l
    lfs     f2, 0x14(r29)
    li      r5, 0x1
    lfs     f3, 0x18(r29)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr      r31, r3
    b       branch_0x80132a44

branch_0x8013293c:
    lbz     r3, 0x60(r30)
    extsb   r3, r3
    cmpw    r3, r28
    bne-    branch_0x801329c0
    lbz     r0, 0x69(r30)
    extsb   r0, r0
    cmpwi   r0, 0x7
    bge-    branch_0x801329c0
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x34(sp)
    lwz     r3, 0x64(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8013298c
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801329b0
branch_0x8013298c:
    lis     r4, unk_20000005@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x2c(sp)
    addi    r4, r4, unk_20000005@l
    lfs     f2, 0x30(sp)
    li      r5, 0x1
    lfs     f3, 0x34(sp)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    stw     r3, 0x64(r30)
branch_0x801329b0:
    lbz     r3, 0x69(r30)
    addi    r0, r3, 0x1
    stb     r0, 0x69(r30)
    b       branch_0x80132a44

branch_0x801329c0:
    addi    r0, r3, 0x1
    cmpw    r28, r0
    bgt-    branch_0x80132a44
    lwz     r3, 0x1cc(r29)
    bl      getNumGripsDead__8TBathtubCFv
    cmpwi   r3, 0x3
    bne-    branch_0x80132a44
    lbz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80132a44
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x28(sp)
    lwz     r3, 0x64(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80132a18
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80132a3c
branch_0x80132a18:
    lis     r4, unk_20000005@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x20(sp)
    addi    r4, r4, unk_20000005@l
    lfs     f2, 0x24(sp)
    li      r5, 0x1
    lfs     f3, 0x28(sp)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    stw     r3, 0x64(r30)
branch_0x80132a3c:
    li      r0, 0x1
    stb     r0, 0x68(r30)
branch_0x80132a44:
    cmplwi  r31, 0x0
    bne-    branch_0x80132a70
    lis     r4, unk_20000002@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r29)
    addi    r4, r4, unk_20000002@l
    lfs     f2, 0x14(r29)
    li      r5, 0x1
    lfs     f3, 0x18(r29)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr      r31, r3
branch_0x80132a70:
    cmplwi  r31, 0x0
    beq-    branch_0x80132b28
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x2
    bne-    branch_0x80132b28
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80132ad8
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r3)
branch_0x80132ad8:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80132b28
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r3)
branch_0x80132b28:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl resetBathtubKiller__14TBathtubKillerFv
resetBathtubKiller__14TBathtubKillerFv: # 0x80132b48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6510(r13)
    extsb.  r0, r0
    bne-    branch_0x80132ba0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveBathtubKillerWander@ha
    stw     r0, R13Off_m0x650c(r13)
    addi    r0, r3, __vvt__25TNerveBathtubKillerWander@l
    lis     r4, __dt__25TNerveBathtubKillerWanderFv@h
    stw     r0, R13Off_m0x650c(r13)
    lis     r3, unk_803f3780@h
    addi    r5, r3, unk_803f3780@l
    addi    r4, r4, __dt__25TNerveBathtubKillerWanderFv@l
    addi    r3, r13, R13Off_m0x650c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6510(r13)
branch_0x80132ba0:
    lwz     r3, 0x8c(r31)
    li      r4, 0x0
    addi    r0, r13, R13Off_m0x650c
    stw     r4, 0x8(r3)
    stw     r4, 0x20(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r4, 0x1c(r3)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    stw     r4, 0x208(r31)
    stw     r4, 0x20c(r31)
    stw     r4, 0x210(r31)
    stw     r4, 0x214(r31)
    stw     r4, 0x218(r31)
    lfs     f1, -0x4f34(r2)
    stfs    f1, 0x1ac(r31)
    stfs    f1, 0x1b0(r31)
    stfs    f1, 0x1b4(r31)
    lfs     f0, -0x4f38(r2)
    stfs    f0, 0x1b8(r31)
    stfs    f1, 0xac(r31)
    stfs    f1, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    stfs    f1, 0x1bc(r31)
    stfs    f1, 0x1c0(r31)
    stfs    f1, 0x1c4(r31)
    stw     r4, 0x21c(r31)
    stw     r4, 0x1d4(r31)
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x80132cb0
    li      r0, 0x32
    sth     r0, 0x1d8(r31)
    li      r3, 0x46
    li      r0, 0xa0
    sth     r3, 0x1da(r31)
    mr      r3, r31
    sth     r0, 0x1dc(r31)
    sth     r4, 0x1de(r31)
    lwz     r4, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r4, 0x1e0(r31)
    stw     r0, 0x1e4(r31)
    lwz     r4, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r4, 0x1e8(r31)
    stw     r0, 0x1ec(r31)
    lwz     r4, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r4, 0x1f0(r31)
    stw     r0, 0x1f4(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x348(r3)
    stfs    f0, 0x198(r31)
    lfs     f0, 0x35c(r3)
    stfs    f0, 0x19c(r31)
    lfs     f0, 0x370(r3)
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x384(r3)
    stfs    f0, 0x1a4(r31)
    lwz     r0, 0x398(r3)
    stw     r0, 0x1a8(r31)
    b       branch_0x80132d78

branch_0x80132cb0:
    sth     r4, 0x1d8(r31)
    sth     r4, 0x1da(r31)
    sth     r4, 0x1dc(r31)
    sth     r4, 0x1de(r31)
    lwz     r3, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r3, 0x1e0(r31)
    stw     r0, 0x1e4(r31)
    lwz     r3, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r3, 0x1e8(r31)
    stw     r0, 0x1ec(r31)
    lwz     r3, 0x1d8(r31)
    lwz     r0, 0x1dc(r31)
    stw     r3, 0x1f0(r31)
    stw     r0, 0x1f4(r31)
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x80132d3c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2e4(r3)
    stfs    f0, 0x198(r31)
    lfs     f0, 0x2f8(r3)
    stfs    f0, 0x19c(r31)
    lfs     f0, 0x30c(r3)
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x320(r3)
    stfs    f0, 0x1a4(r31)
    lwz     r0, 0x334(r3)
    stw     r0, 0x1a8(r31)
    b       branch_0x80132d78

branch_0x80132d3c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x3d4(r3)
    stfs    f0, 0x198(r31)
    lfs     f0, 0x3e8(r3)
    stfs    f0, 0x19c(r31)
    lfs     f0, 0x3fc(r3)
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x410(r3)
    stfs    f0, 0x1a4(r31)
    lwz     r0, 0x424(r3)
    stw     r0, 0x1a8(r31)
branch_0x80132d78:
    lfs     f0, -0x4f34(r2)
    mr      r3, r31
    stfs    f0, 0x1fc(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x3c0(r3)
    mr      r3, r31
    stfs    f0, 0x1f8(r31)
    lwz     r0, 0x1a8(r31)
    stw     r0, 0x208(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x550(r3)
    mr      r3, r31
    stw     r0, 0x20c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x564(r3)
    mr      r3, r31
    stw     r0, 0x214(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x44c(r3)
    mr      r3, r31
    stfs    f0, 0x200(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x460(r3)
    stfs    f0, 0x204(r31)
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x80132e9c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x4f30(r2)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    lfs     f1, -0x4efc(r2)
    stw     r0, 0xc8(sp)
    lfs     f0, -0x4ef8(r2)
    lfd     f2, 0xc8(sp)
    lfs     f4, -0x4f34(r2)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    stfd    f0, 0xc0(sp)
    cmpwi   r0, 0x0
    lwz     r0, 0xc4(sp)
    bne-    branch_0x80132e78
    lfs     f4, -0x4ef4(r2)
    b       branch_0x80132e84

branch_0x80132e78:
    cmpwi   r0, 0x1
    bne-    branch_0x80132e84
    lfs     f4, -0x4ef0(r2)
branch_0x80132e84:
    lfs     f0, 0x200(r31)
    fadds   f0, f0, f4
    stfs    f0, 0x200(r31)
    lfs     f0, 0x204(r31)
    fadds   f0, f0, f4
    stfs    f0, 0x204(r31)
branch_0x80132e9c:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl reset__14TBathtubKillerFv
reset__14TBathtubKillerFv: # 0x80132eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__11TSmallEnemyFv
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r31)
    bl      resetBathtubKiller__14TBathtubKillerFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__14TBathtubKillerFv
setMActorAndKeeper__14TBathtubKillerFv: # 0x80132f20
    mflr    r0
    lis     r4, unk_803865a0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, unk_803865a0@l
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80132f5c
    lwz     r4, 0x70(r30)
    addi    r3, r27, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80132f5c:
    stw     r27, 0x78(r30)
    addi    r4, r31, 0x13c
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    addi    r4, r31, 0x158
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x13c
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1d8
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r27, r3, 0x0
    addi    r4, r31, 0x13c
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1e4
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r28, r3, 0x0
    addi    r4, r31, 0x13c
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r2, R2Off_m0x4eec
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r29, r3, 0x0
    addi    r4, r31, 0x13c
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    clrlwi  r4, r27, 16
    addi    r6, r30, 0x1e0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x13c
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    clrlwi  r4, r28, 16
    addi    r6, r30, 0x1e8
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x13c
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 16
    addi    r6, r30, 0x1d8
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x158
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r6, r30, 0x1f0
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl init__14TBathtubKillerFP12TLiveManager
init__14TBathtubKillerFP12TLiveManager: # 0x80133090
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, unk_08000024@h
    addi    r0, r3, unk_08000024@l
    stw     r0, 0x4c(r31)
    li      r3, 0x11
    li      r0, 0x0
    stw     r3, 0x150(r31)
    mr      r3, r31
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x10
    stw     r4, 0xf0(r31)
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x1
    stw     r4, 0xf0(r31)
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x8
    stw     r4, 0xf0(r31)
    lwz     r4, 0x64(r31)
    ori     r4, r4, 0x1
    stw     r4, 0x64(r31)
    stb     r0, 0x194(r31)
    bl      resetBathtubKiller__14TBathtubKillerFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14TBathtubKillerFPCc
__ct__14TBathtubKillerFPCc: # 0x80133110
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__14TBathtubKiller@ha
    addi    r3, r3, __vvt__14TBathtubKiller@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x1cc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__20TBathtubKillerParamsFPCc
__ct__20TBathtubKillerParamsFPCc: # 0x8013315c
    mflr    r0
    lis     r5, unk_803865a0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r30, r5, unk_803865a0@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x1f0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x1f0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x2d4(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x4f00(r2)
    addi    r3, r30, 0x20c
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x20c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x224
    lfs     f0, -0x4ee4(r2)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x224
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x234
    lfs     f0, -0x4ee0(r2)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x234
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x248
    lfs     f0, -0x4edc(r2)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x248
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0x324(r31)
    li      r25, 0x708
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r25, 0x334(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x258
    stw     r26, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x258
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x274
    lfs     f0, -0x4f00(r2)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x274
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x28c
    lfs     f0, -0x4ee4(r2)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x28c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x29c
    lfs     f0, -0x4ee0(r2)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x29c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x2b0
    lfs     f0, -0x4edc(r2)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x2b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x388(r31)
    addi    r3, r30, 0x2c0
    stw     r25, 0x398(r31)
    stw     r26, 0x388(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x39c
    addi    r6, r30, 0x2c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x39c(r31)
    addi    r3, r30, 0x2d4
    lfs     f0, -0x4f00(r2)
    stfs    f0, 0x3ac(r31)
    stw     r28, 0x39c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b0
    addi    r6, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b0(r31)
    addi    r3, r30, 0x2ec
    lfs     f0, -0x4f00(r2)
    stfs    f0, 0x3c0(r31)
    stw     r28, 0x3b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3c4
    addi    r6, r30, 0x2ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3c4(r31)
    addi    r3, r30, 0x304
    lfs     f0, -0x4f00(r2)
    stfs    f0, 0x3d4(r31)
    stw     r28, 0x3c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3d8
    addi    r6, r30, 0x304
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3d8(r31)
    addi    r3, r30, 0x31c
    lfs     f0, -0x4ee4(r2)
    stfs    f0, 0x3e8(r31)
    stw     r28, 0x3d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3ec
    addi    r6, r30, 0x31c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3ec(r31)
    addi    r3, r30, 0x32c
    lfs     f0, -0x4ee0(r2)
    stfs    f0, 0x3fc(r31)
    stw     r28, 0x3ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x400
    addi    r6, r30, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x400(r31)
    addi    r3, r30, 0x33c
    lfs     f0, -0x4ed8(r2)
    stfs    f0, 0x410(r31)
    stw     r28, 0x400(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x414
    addi    r6, r30, 0x33c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x414(r31)
    addi    r3, r30, 0x34c
    stw     r25, 0x424(r31)
    stw     r26, 0x414(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x428
    addi    r6, r30, 0x34c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x428(r31)
    addi    r3, r30, 0x360
    lfs     f0, -0x4edc(r2)
    stfs    f0, 0x438(r31)
    stw     r28, 0x428(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x43c
    addi    r6, r30, 0x360
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x43c(r31)
    addi    r3, r30, 0x370
    lfs     f0, -0x4edc(r2)
    stfs    f0, 0x44c(r31)
    stw     r28, 0x43c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x450
    addi    r6, r30, 0x370
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x450(r31)
    addi    r3, r30, 0x380
    lfs     f0, -0x4f14(r2)
    stfs    f0, 0x460(r31)
    stw     r28, 0x450(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x464
    addi    r6, r30, 0x380
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x464(r31)
    addi    r3, r30, 0x394
    lfs     f0, -0x4f00(r2)
    stfs    f0, 0x474(r31)
    stw     r28, 0x464(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x478
    addi    r6, r30, 0x394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x478(r31)
    addi    r3, r30, 0x3a8
    lfs     f0, -0x4ed4(r2)
    stfs    f0, 0x488(r31)
    stw     r28, 0x478(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x48c
    addi    r6, r30, 0x3a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x48c(r31)
    addi    r3, r30, 0x3bc
    lfs     f0, -0x4ed0(r2)
    stfs    f0, 0x49c(r31)
    stw     r28, 0x48c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4a0
    addi    r6, r30, 0x3bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4a0(r31)
    addi    r3, r30, 0x3d0
    lfs     f0, -0x4ecc(r2)
    stfs    f0, 0x4b0(r31)
    stw     r28, 0x4a0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4b4
    addi    r6, r30, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4b4(r31)
    addi    r3, r30, 0x3e4
    lfs     f0, -0x4f14(r2)
    stfs    f0, 0x4c4(r31)
    stw     r28, 0x4b4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4c8
    addi    r6, r30, 0x3e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4c8(r31)
    addi    r3, r30, 0x3f8
    lfs     f0, -0x4ed0(r2)
    stfs    f0, 0x4d8(r31)
    stw     r28, 0x4c8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4dc
    addi    r6, r30, 0x3f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4dc(r31)
    addi    r3, r30, 0x40c
    lfs     f0, -0x4f20(r2)
    stfs    f0, 0x4ec(r31)
    stw     r28, 0x4dc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4f0
    addi    r6, r30, 0x40c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4f0(r31)
    addi    r3, r30, 0x41c
    lfs     f0, -0x4ec8(r2)
    stfs    f0, 0x500(r31)
    stw     r28, 0x4f0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x504
    addi    r6, r30, 0x41c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x504(r31)
    addi    r3, r30, 0x428
    lfs     f0, -0x4ec4(r2)
    stfs    f0, 0x514(r31)
    stw     r28, 0x504(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x518
    addi    r6, r30, 0x428
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x518(r31)
    li      r28, 0x168
    addi    r3, r30, 0x440
    stw     r28, 0x528(r31)
    stw     r26, 0x518(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x52c
    addi    r6, r30, 0x440
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x52c(r31)
    li      r0, 0x3
    addi    r3, r30, 0x454
    stw     r0, 0x53c(r31)
    stw     r26, 0x52c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x540
    addi    r6, r30, 0x454
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x540(r31)
    addi    r3, r30, 0x468
    stw     r28, 0x550(r31)
    stw     r26, 0x540(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x554
    addi    r6, r30, 0x468
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x554(r31)
    mr      r3, r31
    stw     r28, 0x564(r31)
    stw     r26, 0x554(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, -0x7c70(r13)
    mr      r3, r31
    stfs    f0, 0x2e4(r31)
    lfs     f0, -0x7c6c(r13)
    stfs    f0, 0x2f8(r31)
    lfs     f0, -0x7c68(r13)
    stfs    f0, 0x30c(r31)
    lfs     f0, -0x7c64(r13)
    stfs    f0, 0x320(r31)
    lwz     r0, R13Off_m0x7c60(r13)
    stw     r0, 0x334(r31)
    lfs     f0, -0x7c5c(r13)
    stfs    f0, 0x348(r31)
    lfs     f0, -0x7c58(r13)
    stfs    f0, 0x35c(r31)
    lfs     f0, -0x7c54(r13)
    stfs    f0, 0x370(r31)
    lfs     f0, -0x7c50(r13)
    stfs    f0, 0x384(r31)
    lwz     r0, R13Off_m0x7c4c(r13)
    stw     r0, 0x398(r31)
    lfs     f0, -0x7c48(r13)
    stfs    f0, 0x3d4(r31)
    lfs     f0, -0x7c44(r13)
    stfs    f0, 0x3e8(r31)
    lfs     f0, -0x7c40(r13)
    stfs    f0, 0x3fc(r31)
    lfs     f0, -0x7c3c(r13)
    stfs    f0, 0x410(r31)
    lwz     r0, R13Off_m0x7c38(r13)
    stw     r0, 0x424(r31)
    lfs     f0, -0x7c34(r13)
    stfs    f0, 0x3c0(r31)
    lfs     f0, -0x7c30(r13)
    stfs    f0, 0x438(r31)
    lfs     f0, -0x7c2c(r13)
    stfs    f0, 0x44c(r31)
    lfs     f0, -0x7c28(r13)
    stfs    f0, 0x460(r31)
    lfs     f0, -0x7c24(r13)
    stfs    f0, 0x474(r31)
    lfs     f0, -0x7c20(r13)
    stfs    f0, 0x488(r31)
    lfs     f0, -0x7c1c(r13)
    stfs    f0, 0x49c(r31)
    lwz     r0, R13Off_m0x7c18(r13)
    stw     r0, 0x16c(r31)
    lwz     r0, R13Off_m0x7c14(r13)
    stw     r0, 0x180(r31)
    lwz     r0, R13Off_m0x7c10(r13)
    stw     r0, 0x194(r31)
    lwz     r0, R13Off_m0x7c0c(r13)
    stw     r0, 0x1a8(r31)
    lfs     f0, -0x7c08(r13)
    stfs    f0, 0x4c4(r31)
    lfs     f0, -0x7c04(r13)
    stfs    f0, 0x4d8(r31)
    lfs     f0, -0x7c00(r13)
    stfs    f0, 0x4ec(r31)
    lfs     f0, -0x7bfc(r13)
    stfs    f0, 0x500(r31)
    lfs     f0, -0x7bf8(r13)
    stfs    f0, 0x514(r31)
    lwz     r0, R13Off_m0x7bf4(r13)
    stw     r0, 0x528(r31)
    lwz     r0, R13Off_m0x7bf0(r13)
    stw     r0, 0x53c(r31)
    lwz     r0, R13Off_m0x7bec(r13)
    stw     r0, 0x550(r31)
    lwz     r0, R13Off_m0x7be8(r13)
    stw     r0, 0x564(r31)
    lfs     f0, -0x7be4(r13)
    stfs    f0, 0x3ac(r31)
    lwz     r0, 0x34(sp)
    lmw     r25, 0x14(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__14TBathtubKillerFv
__dt__14TBathtubKillerFv: # 0x80133884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801338ec
    lis     r3, __vvt__14TBathtubKiller@ha
    addi    r3, r3, __vvt__14TBathtubKiller@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801338dc
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x801338dc:
    extsh.  r0, r31
    ble-    branch_0x801338ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x801338ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_BathtubKiller_cpp
__sinit_BathtubKiller_cpp: # 0x80133908
    mflr    r0
    lis     r3, unk_803f3780@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f3780@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80133950
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80133950:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80133980
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80133980:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801339b0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801339b0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801339e0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801339e0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80133a10
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80133a10:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80133a40
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80133a40:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80133a70
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80133a70:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80133aa0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80133aa0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80133ad0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80133ad0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80133b00
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80133b00:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80133b30
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80133b30:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80133b60
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80133b60:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80133b90
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80133b90:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80133bc0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80133bc0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80133bf0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80133bf0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80133c04
unk_80133c04: # 0x80133c04
    addi    r3, r3, -0x20
    b       __dt__14TBathtubKillerFv

