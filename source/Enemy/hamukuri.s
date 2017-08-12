
.globl __dt__27TNerveDoroHanePrepareAttackFv
__dt__27TNerveDoroHanePrepareAttackFv: # 0x8004e24c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004e290
    lis     r3, __vvt__27TNerveDoroHanePrepareAttack@ha
    addi    r0, r3, __vvt__27TNerveDoroHanePrepareAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004e280
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004e280:
    extsh.  r0, r4
    ble-    branch_0x8004e290
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004e290:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__27TNerveDoroHanePrepareAttackCFP24TSpineBase_10TLiveActor_
execute__27TNerveDoroHanePrepareAttackCFP24TSpineBase_10TLiveActor_: # 0x8004e2a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x32
    bge-    branch_0x8004e2d8
    lfs     f1, 0x234(r3)
    lfs     f0, -0x6ec8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x234(r3)
    b       branch_0x8004e2e8

branch_0x8004e2d8:
    lfs     f1, 0x234(r3)
    lfs     f0, -0x6ec4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x234(r3)
branch_0x8004e2e8:
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x64
    ble-    branch_0x8004e2fc
    li      r3, 0x1
    b       branch_0x8004e318

branch_0x8004e2fc:
    lwz     r12, 0x0(r3)
    li      r4, 0x0
    lfs     f1, -0x6ec0(r2)
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x8004e318:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__22TNerveDoroHaneHitWaterCFP24TSpineBase_10TLiveActor_
execute__22TNerveDoroHaneHitWaterCFP24TSpineBase_10TLiveActor_: # 0x8004e328
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004e3d8
    li      r5, 0x0
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r5, 0x28(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x34(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x34(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x34(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r30, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x6ebc(r2)
    addi    r3, r30, 0x0
    li      r4, 0x0
    fmuls   f1, f0, f1
    bl      setFrameRate__6MActorFfi
branch_0x8004e3d8:
    lfs     f1, -0x6eb8(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x8004e400
    lfs     f1, 0x234(r31)
    lfs     f0, -0x6ec8(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x234(r31)
branch_0x8004e400:
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x20c(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x230(r31)
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x12c
    ble-    branch_0x8004e440
    lwz     r30, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    li      r3, 0x1
    b       branch_0x8004e484

branch_0x8004e440:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6eb0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8004e464
    li      r0, 0x1
    b       branch_0x8004e468

branch_0x8004e464:
    li      r0, 0x0
branch_0x8004e468:
    clrlwi. r0, r0, 24
    bne-    branch_0x8004e480
    lfs     f1, -0x6ec0(r2)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x8004e480:
    li      r3, 0x0
branch_0x8004e484:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl __dt__22TNerveDoroHaneHitWaterFv
__dt__22TNerveDoroHaneHitWaterFv: # 0x8004e4a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004e4e4
    lis     r3, __vvt__22TNerveDoroHaneHitWater@ha
    addi    r0, r3, __vvt__22TNerveDoroHaneHitWater@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004e4d4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004e4d4:
    extsh.  r0, r4
    ble-    branch_0x8004e4e4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004e4e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveDoroHaneRiseCFP24TSpineBase_10TLiveActor_
execute__18TNerveDoroHaneRiseCFP24TSpineBase_10TLiveActor_: # 0x8004e4fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    lwz     r3, 0x0(r4)
    lfs     f1, -0x6eac(r2)
    lfs     f0, 0xc8(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8004e584
    lwz     r4, 0x8c(r3)
    lis     r0, 0x4330
    lfd     f2, -0x6e90(r2)
    lwz     r4, 0x20(r4)
    lfs     f3, -0x6ea8(r2)
    xoris   r4, r4, 0x8000
    lfs     f0, -0x6ea4(r2)
    stw     r4, 0x4c(sp)
    stw     r0, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8004e56c
    fmr     f1, f0
    b       branch_0x8004e578

branch_0x8004e56c:
    fcmpo   cr0, f1, f3
    bge-    branch_0x8004e578
    fmr     f1, f3
branch_0x8004e578:
    lfs     f0, 0x234(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x234(r3)
branch_0x8004e584:
    lfs     f2, -0x6ea0(r2)
    lfs     f3, 0x148(r3)
    lfs     f1, -0x6e9c(r2)
    lfs     f0, 0x24(r3)
    fmuls   f2, f2, f3
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x8004e5ac
    fmr     f0, f2
    b       branch_0x8004e5b8

branch_0x8004e5ac:
    fcmpo   cr0, f0, f3
    bge-    branch_0x8004e5b8
    fmr     f0, f3
branch_0x8004e5b8:
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x24(r3)
    lfs     f1, -0x6e98(r2)
    lfs     f0, 0x28(r3)
    lfs     f2, 0x148(r3)
    fmuls   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x8004e5e0
    fmr     f1, f2
    b       branch_0x8004e5f0

branch_0x8004e5e0:
    lfs     f0, -0x6eb4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8004e5f0
    fmr     f1, f0
branch_0x8004e5f0:
    stfs    f1, 0x28(r3)
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8004e608
    li      r0, 0x1
    b       branch_0x8004e60c

branch_0x8004e608:
    li      r0, 0x0
branch_0x8004e60c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8004e650
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x8004e648
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8004e648
    lwz     r4, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8004e648:
    li      r3, 0x1
    b       branch_0x8004e684

branch_0x8004e650:
    lfs     f1, 0x30(r3)
    lfs     f0, -0x6e9c(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x30(r3)
    lfs     f1, 0x230(r3)
    lfs     f0, 0x234(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f1, -0x6eb4(r2)
    lfs     f2, -0x6ea0(r2)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x8004e684:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__18TNerveDoroHaneRiseFv
__dt__18TNerveDoroHaneRiseFv: # 0x8004e698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004e6dc
    lis     r3, __vvt__18TNerveDoroHaneRise@ha
    addi    r0, r3, __vvt__18TNerveDoroHaneRise@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004e6cc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004e6cc:
    extsh.  r0, r4
    ble-    branch_0x8004e6dc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004e6dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveFireHamuKuriRecoverCFP24TSpineBase_10TLiveActor_
execute__25TNerveFireHamuKuriRecoverCFP24TSpineBase_10TLiveActor_: # 0x8004e6f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r31, 0x0(r4)
    li      r4, 0x0
    addi    r3, r31, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8004e7c0
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x6
    bne-    branch_0x8004e730
    li      r0, 0x1
    b       branch_0x8004e734

branch_0x8004e730:
    li      r0, 0x0
branch_0x8004e734:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004e7a8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8004e774
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8004e778

branch_0x8004e774:
    li      r0, 0x1
branch_0x8004e778:
    stb     r0, 0x13c(r31)
    li      r0, 0x0
    li      r3, 0x1
    lwz     r4, 0x150(r31)
    rlwinm  r4, r4, 0, 31, 29
    stw     r4, 0x150(r31)
    lwz     r4, 0x150(r31)
    ori     r4, r4, 0x1
    stw     r4, 0x150(r31)
    stw     r0, 0x214(r31)
    stb     r0, 0x210(r31)
    b       branch_0x8004e7c4

branch_0x8004e7a8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8004e7c0:
    li      r3, 0x0
branch_0x8004e7c4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setBckAnm__13TFireHamuKuriFi
setBckAnm__13TFireHamuKuriFi: # 0x8004e7d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setBckAnm__11TSmallEnemyFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__25TNerveFireHamuKuriRecoverFv
__dt__25TNerveFireHamuKuriRecoverFv: # 0x8004e7f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004e83c
    lis     r3, __vvt__25TNerveFireHamuKuriRecover@ha
    addi    r0, r3, __vvt__25TNerveFireHamuKuriRecover@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004e82c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004e82c:
    extsh.  r0, r4
    ble-    branch_0x8004e83c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004e83c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveDoroHamuKuriRobCapCFP24TSpineBase_10TLiveActor_
execute__24TNerveDoroHamuKuriRobCapCFP24TSpineBase_10TLiveActor_: # 0x8004e854
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r30, 0x70(r3)
    mr      r31, r3
    beq-    branch_0x8004e88c
    lwz     r3, 0x1f8(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x8004e92c
branch_0x8004e88c:
    lwz     r0, 0x70(r30)
    mr      r3, r31
    stw     r0, 0x1f8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x70(r30)
    lfs     f0, -0x6eb4(r2)
    stw     r3, 0x38(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    beq-    branch_0x8004e8e0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f2, 0x44(sp)
branch_0x8004e8e0:
    lwz     r3, 0x38(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x44(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x38(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x44(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    b       branch_0x8004e9c0

branch_0x8004e92c:
    lwz     r0, 0x70(r30)
    cmplw   r3, r0
    beq-    branch_0x8004e9c0
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6eb4(r2)
    stw     r3, 0x28(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    beq-    branch_0x8004e970
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x2c(sp)
    stfs    f1, 0x30(sp)
    stfs    f2, 0x34(sp)
branch_0x8004e970:
    lwz     r4, 0x28(sp)
    li      r0, 0x0
    li      r3, 0x1
    stw     r4, 0xf4(r31)
    lwz     r5, 0x2c(sp)
    lwz     r4, 0x30(sp)
    stw     r5, 0xf8(r31)
    stw     r4, 0xfc(r31)
    lwz     r4, 0x34(sp)
    stw     r4, 0x100(r31)
    lwz     r4, 0x28(sp)
    stw     r4, 0x104(r31)
    lwz     r5, 0x2c(sp)
    lwz     r4, 0x30(sp)
    stw     r5, 0x108(r31)
    stw     r4, 0x10c(r31)
    lwz     r4, 0x34(sp)
    stw     r4, 0x110(r31)
    stw     r0, 0x118(r31)
    b       branch_0x8004e9e0

branch_0x8004e9c0:
    mr      r3, r31
    lfs     f1, -0x6e88(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x8004e9e0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__24TNerveDoroHamuKuriRobCapFv
__dt__24TNerveDoroHamuKuriRobCapFv: # 0x8004e9f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004ea3c
    lis     r3, __vvt__24TNerveDoroHamuKuriRobCap@ha
    addi    r0, r3, __vvt__24TNerveDoroHamuKuriRobCap@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004ea2c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004ea2c:
    extsh.  r0, r4
    ble-    branch_0x8004ea3c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004ea3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__29TNerveHaneHamuKuriMoveOnGraphCFP24TSpineBase_10TLiveActor_
execute__29TNerveHaneHamuKuriMoveOnGraphCFP24TSpineBase_10TLiveActor_: # 0x8004ea54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    stw     r31, 0x13c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004eb34
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8004eb34
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6eb4(r2)
    stw     r3, 0xf8(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xfc(sp)
    stfs    f0, 0x100(sp)
    stfs    f0, 0x104(sp)
    beq-    branch_0x8004eaec
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xfc(sp)
    stfs    f1, 0x100(sp)
    stfs    f2, 0x104(sp)
branch_0x8004eaec:
    lwz     r3, 0xf8(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0xfc(sp)
    lwz     r3, 0x100(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x104(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0xf8(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0xfc(sp)
    lwz     r3, 0x100(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x104(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x8004eb34:
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8004eb68
    mr      r3, r31
    lfs     f1, -0x6ec0(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    b       branch_0x8004ed38

branch_0x8004eb68:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8004eb8c
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x8004eb8c:
    lwz     r3, 0x124(r31)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8004ed38
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    addi    r4, sp, 0x128
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x11c
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r0, 0x128(sp)
    addi    r3, sp, 0x98
    lwz     r5, 0x12c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x98(sp)
    lwz     r0, 0x130(sp)
    stw     r5, 0x9c(sp)
    stw     r0, 0xa0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x98(sp)
    lwz     r3, 0x9c(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0xa0(sp)
    stw     r3, 0x114(sp)
    lfs     f0, -0x6eb4(r2)
    stw     r0, 0x118(sp)
    lfs     f2, 0x110(sp)
    lfs     f1, 0x114(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x118(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8004ec44
    b       branch_0x8004ec68

branch_0x8004ec44:
    frsqrte f3, f31
    lfs     f2, -0x6ec0(r2)
    lfs     f0, -0x6e84(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x8004ec68:
    lwz     r0, 0x11c(sp)
    addi    r3, sp, 0x8c
    lwz     r5, 0x120(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x8c(sp)
    lwz     r0, 0x124(sp)
    stw     r5, 0x90(sp)
    stw     r0, 0x94(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x8c(sp)
    lwz     r3, 0x90(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0x114(sp)
    lfs     f0, -0x6eb4(r2)
    stw     r0, 0x118(sp)
    lfs     f2, 0x110(sp)
    lfs     f1, 0x114(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0x118(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8004ecd8
    b       branch_0x8004ecfc

branch_0x8004ecd8:
    frsqrte f3, f4
    lfs     f2, -0x6ec0(r2)
    lfs     f0, -0x6e84(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8004ecfc:
    lfs     f2, 0x12c(sp)
    fadds   f0, f31, f4
    lfs     f1, 0x120(sp)
    addi    r3, r31, 0x0
    li      r4, 0x2
    fsubs   f1, f1, f2
    fmuls   f1, f31, f1
    fdivs   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x230(r31)
    lwz     r12, 0x0(r31)
    lfs     f1, -0x6e80(r2)
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x8004ed38:
    lwz     r0, 0x14c(sp)
    li      r3, 0x0
    lfd     f31, 0x140(sp)
    lwz     r31, 0x13c(sp)
    mtlr    r0
    addi    sp, sp, 0x148
    blr


.globl __dt__29TNerveHaneHamuKuriMoveOnGraphFv
__dt__29TNerveHaneHamuKuriMoveOnGraphFv: # 0x8004ed54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004ed98
    lis     r3, __vvt__29TNerveHaneHamuKuriMoveOnGraph@ha
    addi    r0, r3, __vvt__29TNerveHaneHamuKuriMoveOnGraph@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004ed88
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004ed88:
    extsh.  r0, r4
    ble-    branch_0x8004ed98
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004ed98:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveHaneHamuKuriUpWaitCFP24TSpineBase_10TLiveActor_
execute__24TNerveHaneHamuKuriUpWaitCFP24TSpineBase_10TLiveActor_: # 0x8004edb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x1
    bge-    branch_0x8004ee6c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6eb4(r2)
    stw     r3, 0x3c(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    beq-    branch_0x8004ee24
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f2, 0x48(sp)
branch_0x8004ee24:
    lwz     r3, 0x3c(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x48(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x3c(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x48(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x8004ee6c:
    lfs     f2, -0x6ea0(r2)
    lfs     f3, 0x148(r31)
    lfs     f1, -0x6e9c(r2)
    lfs     f0, 0x24(r31)
    fmuls   f2, f2, f3
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x8004ee94
    fmr     f0, f2
    b       branch_0x8004eea0

branch_0x8004ee94:
    fcmpo   cr0, f0, f3
    bge-    branch_0x8004eea0
    fmr     f0, f3
branch_0x8004eea0:
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x24(r31)
    lfs     f1, -0x6e98(r2)
    lfs     f0, 0x28(r31)
    lfs     f2, 0x148(r31)
    fmuls   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x8004eec8
    fmr     f1, f2
    b       branch_0x8004eed8

branch_0x8004eec8:
    lfs     f0, -0x6eb4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8004eed8
    fmr     f1, f0
branch_0x8004eed8:
    stfs    f1, 0x28(r31)
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x190
    ble-    branch_0x8004eef0
    li      r3, 0x1
    b       branch_0x8004ef20

branch_0x8004eef0:
    lfs     f1, 0x234(r31)
    mr      r3, r31
    lfs     f0, -0x6e80(r2)
    li      r4, 0x3
    fadds   f0, f1, f0
    stfs    f0, 0x234(r31)
    lwz     r12, 0x0(r31)
    lfs     f1, -0x6ec0(r2)
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x8004ef20:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__24TNerveHaneHamuKuriUpWaitFv
__dt__24TNerveHaneHamuKuriUpWaitFv: # 0x8004ef38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004ef7c
    lis     r3, __vvt__24TNerveHaneHamuKuriUpWait@ha
    addi    r0, r3, __vvt__24TNerveHaneHamuKuriUpWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004ef6c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004ef6c:
    extsh.  r0, r4
    ble-    branch_0x8004ef7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004ef7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveDangoHamuKuriWaitCFP24TSpineBase_10TLiveActor_
execute__23TNerveDangoHamuKuriWaitCFP24TSpineBase_10TLiveActor_: # 0x8004ef94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x8004f02c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6eb4(r2)
    lfs     f0, -0x6e7c(r2)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x20(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e90(r2)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6e78(r2)
    li      r4, 0x0
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfd     f2, 0x28(sp)
    lwz     r3, 0x74(r31)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f31, f1, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
branch_0x8004f02c:
    lwz     r0, 0x44(sp)
    li      r3, 0x0
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__23TNerveDangoHamuKuriWaitFv
__dt__23TNerveDangoHamuKuriWaitFv: # 0x8004f048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004f08c
    lis     r3, __vvt__23TNerveDangoHamuKuriWait@ha
    addi    r0, r3, __vvt__23TNerveDangoHamuKuriWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004f07c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004f07c:
    extsh.  r0, r4
    ble-    branch_0x8004f08c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004f08c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveHamuKuriJitabataCFP24TSpineBase_10TLiveActor_
execute__22TNerveHamuKuriJitabataCFP24TSpineBase_10TLiveActor_: # 0x8004f0a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004f0e4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8004f0e4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8004f1b8
    lwz     r4, 0x15c(r31)
    lwz     r3, 0x1f4(r31)
    cmpwi   r4, 0xc
    lwz     r3, 0x3c8(r3)
    bne-    branch_0x8004f114
    li      r0, 0x1
    b       branch_0x8004f118

branch_0x8004f114:
    li      r0, 0x0
branch_0x8004f118:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004f13c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8004f1b8

branch_0x8004f13c:
    cmpwi   r4, 0xb
    bne-    branch_0x8004f14c
    li      r0, 0x1
    b       branch_0x8004f150

branch_0x8004f14c:
    li      r0, 0x0
branch_0x8004f150:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004f194
    bl      theNerve__20TNerveSmallEnemyWaitFv
    cmplwi  r3, 0x0
    beq-    branch_0x8004f18c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8004f18c
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8004f18c:
    li      r3, 0x1
    b       branch_0x8004f1bc

branch_0x8004f194:
    lwz     r0, 0x20(r30)
    cmpw    r0, r3
    ble-    branch_0x8004f1b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8004f1b8:
    li      r3, 0x0
branch_0x8004f1bc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__22TNerveHamuKuriJitabataFv
__dt__22TNerveHamuKuriJitabataFv: # 0x8004f1d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004f218
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004f208
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004f208:
    extsh.  r0, r4
    ble-    branch_0x8004f218
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004f218:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveHamuKuriLandCFP24TSpineBase_10TLiveActor_
execute__18TNerveHamuKuriLandCFP24TSpineBase_10TLiveActor_: # 0x8004f230
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004f268
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8004f268:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8004f298
    lwz     r4, 0x64(r31)
    li      r0, 0x0
    li      r3, 0x1
    clrrwi  r4, r4, 1
    stw     r4, 0x64(r31)
    stb     r0, 0x1f0(r31)
    b       branch_0x8004f29c

branch_0x8004f298:
    li      r3, 0x0
branch_0x8004f29c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__18TNerveHamuKuriLandFv
__dt__18TNerveHamuKuriLandFv: # 0x8004f2b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004f2f4
    lis     r3, __vvt__18TNerveHamuKuriLand@ha
    addi    r0, r3, __vvt__18TNerveHamuKuriLand@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004f2e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004f2e4:
    extsh.  r0, r4
    ble-    branch_0x8004f2f4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004f2f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveHamuKuriWallDieCFP24TSpineBase_10TLiveActor_
execute__21TNerveHamuKuriWallDieCFP24TSpineBase_10TLiveActor_: # 0x8004f30c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r4
    stw     r29, 0x74(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004f49c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8004f374
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x54(sp)
    b       branch_0x8004f39c

branch_0x8004f374:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x30
    lfs     f0, 0xc(r3)
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x50(sp)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x54(sp)
branch_0x8004f39c:
    lfs     f1, -0x6e74(r2)
    addi    r5, sp, 0x4c
    lfs     f0, 0x34(r31)
    li      r4, 0xe2
    lwz     r3, R13Off_m0x6070(r13)
    fmuls   f0, f1, f0
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    fctiwz  f0, f0
    li      r10, 0x0
    stfd    f0, 0x68(sp)
    lwz     r7, 0x6c(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8004f40c
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
branch_0x8004f40c:
    lfs     f1, -0x6e74(r2)
    addi    r5, r31, 0x10
    lfs     f0, 0x34(r31)
    li      r4, 0xe3
    lwz     r3, R13Off_m0x6070(r13)
    fmuls   f0, f1, f0
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    fctiwz  f0, f0
    li      r10, 0x0
    stfd    f0, 0x68(sp)
    lwz     r7, 0x6c(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8004f454
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x8004f454:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2804
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8004f484
    addi    r4, r31, 0x10
    li      r3, 0x2804
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8004f484:
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    stb     r0, 0x13c(r31)
    b       branch_0x8004f58c

branch_0x8004f49c:
    lwz     r5, 0x70(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r29, 0x5c(r5)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8004f58c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r0, 0x8(r3)
    lwz     r3, 0x20(r30)
    add     r0, r29, r0
    cmpw    r3, r0
    ble-    branch_0x8004f58c
    lwz     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8004f530
    stw     r0, 0x1c(r30)
branch_0x8004f530:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x8004f570
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x8004f570
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8004f570:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8004f590

branch_0x8004f58c:
    li      r3, 0x0
branch_0x8004f590:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl __dt__21TNerveHamuKuriWallDieFv
__dt__21TNerveHamuKuriWallDieFv: # 0x8004f5ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004f5f0
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004f5e0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004f5e0:
    extsh.  r0, r4
    ble-    branch_0x8004f5f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004f5f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveHamuKuriBoundFreezeCFP24TSpineBase_10TLiveActor_
execute__25TNerveHamuKuriBoundFreezeCFP24TSpineBase_10TLiveActor_: # 0x8004f608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004f6fc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x4c(sp)
    lfs     f0, 0x44(sp)
    stfs    f0, 0x1e4(r31)
    lfs     f0, 0x48(sp)
    stfs    f0, 0x1e8(r31)
    lfs     f0, 0x4c(sp)
    stfs    f0, 0x1ec(r31)
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6eb4(r2)
    stw     r3, 0x34(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    beq-    branch_0x8004f6ac
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f2, 0x40(sp)
branch_0x8004f6ac:
    lwz     r4, 0x34(sp)
    li      r3, 0x0
    li      r0, 0x1
    stw     r4, 0xf4(r31)
    lwz     r5, 0x38(sp)
    lwz     r4, 0x3c(sp)
    stw     r5, 0xf8(r31)
    stw     r4, 0xfc(r31)
    lwz     r4, 0x40(sp)
    stw     r4, 0x100(r31)
    lwz     r4, 0x34(sp)
    stw     r4, 0x104(r31)
    lwz     r5, 0x38(sp)
    lwz     r4, 0x3c(sp)
    stw     r5, 0x108(r31)
    stw     r4, 0x10c(r31)
    lwz     r4, 0x40(sp)
    stw     r4, 0x110(r31)
    stw     r3, 0x118(r31)
    stw     r0, 0x1e0(r31)
branch_0x8004f6fc:
    mr      r3, r31
    bl      isHitWallInBound__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8004f78c
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x8004f750
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    lis     r4, __dt__21TNerveHamuKuriWallDieFv@ha
    stw     r0, R13Off_m0x703c(r13)
    lis     r3, unk_803f03b8@h
    addi    r5, r3, unk_803f03b8@l
    addi    r4, r4, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r3, r13, R13Off_m0x703c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x8004f750:
    addi    r4, r13, R13Off_m0x703c
    cmplwi  r4, 0x0
    beq-    branch_0x8004f784
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8004f784
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8004f784:
    li      r3, 0x1
    b       branch_0x8004f904

branch_0x8004f78c:
    lbz     r0, 0x1a4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8004f8d0
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8004f7ac
    li      r0, 0x1
    b       branch_0x8004f7b0

branch_0x8004f7ac:
    li      r0, 0x0
branch_0x8004f7b0:
    cmpwi   r0, 0x0
    bne-    branch_0x8004f8d0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x1e0(r31)
    lwz     r0, 0x38c(r3)
    cmpw    r4, r0
    blt-    branch_0x8004f848
    lfs     f0, -0x6eb4(r2)
    li      r0, 0x0
    stfs    f0, 0x30(r31)
    stw     r0, 0x8(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8004f800
    stw     r0, 0x1c(r30)
branch_0x8004f800:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x8004f840
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8004f840
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8004f840:
    li      r3, 0x1
    b       branch_0x8004f904

branch_0x8004f848:
    addi    r0, r4, 0x1
    stw     r0, 0x1e0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6ea4(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r4, 0x1e4(r31)
    lwz     r0, 0x1e8(r31)
    stw     r4, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x1ec(r31)
    stw     r0, 0x58(sp)
    lfs     f1, 0x378(r3)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x50(sp)
    stfs    f0, 0x1e4(r31)
    lfs     f0, 0x54(sp)
    stfs    f0, 0x1e8(r31)
    lfs     f0, 0x58(sp)
    stfs    f0, 0x1ec(r31)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
branch_0x8004f8d0:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8004f8e4
    li      r0, 0x1
    b       branch_0x8004f8e8

branch_0x8004f8e4:
    li      r0, 0x0
branch_0x8004f8e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8004f900
    lfs     f1, -0x6e70(r2)
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x8004f900:
    li      r3, 0x0
branch_0x8004f904:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__25TNerveHamuKuriBoundFreezeFv
__dt__25TNerveHamuKuriBoundFreezeFv: # 0x8004f91c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004f960
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004f950
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004f950:
    extsh.  r0, r4
    ble-    branch_0x8004f960
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004f960:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__30TNerveHamuKuriGoForSearchActorCFP24TSpineBase_10TLiveActor_
execute__30TNerveHamuKuriGoForSearchActorCFP24TSpineBase_10TLiveActor_: # 0x8004f978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004f9b4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
branch_0x8004f9b4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8004f9c8
    li      r0, 0x1
    b       branch_0x8004f9cc

branch_0x8004f9c8:
    li      r0, 0x0
branch_0x8004f9cc:
    cmpwi   r0, 0x0
    bne-    branch_0x8004fa6c
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8004f9e8
    addi    r4, r3, 0x10
    b       branch_0x8004f9ec

branch_0x8004f9e8:
    addi    r4, r31, 0x108
branch_0x8004f9ec:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x50(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x4c(sp)
    lfs     f2, 0x50(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6e6c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8004fa6c
    mr      r3, r31
    bl      jumpToSearchActor__9THamuKuriFv
branch_0x8004fa6c:
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8004fac8
    lha     r0, 0x128(r31)
    lwz     r3, 0x1f8(r31)
    cmpwi   r0, 0x64
    bgt-    branch_0x8004faa4
    lfs     f2, 0xc8(r31)
    lfs     f1, 0xc8(r3)
    lfs     f0, -0x6e68(r2)
    fsubs   f1, f2, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8004fabc
branch_0x8004faa4:
    li      r3, 0x1
    stb     r3, 0x1a0(r31)
    li      r0, 0x0
    stw     r0, 0x1f8(r31)
    stw     r0, 0x19c(r31)
    b       branch_0x8004fac0

branch_0x8004fabc:
    li      r3, 0x0
branch_0x8004fac0:
    clrlwi. r0, r3, 24
    beq-    branch_0x8004fb2c
branch_0x8004fac8:
    li      r0, 0x0
    stw     r0, 0x8(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8004fae4
    stw     r0, 0x1c(r30)
branch_0x8004fae4:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x8004fb24
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8004fb24
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8004fb24:
    li      r3, 0x1
    b       branch_0x8004fb4c

branch_0x8004fb2c:
    mr      r3, r31
    lfs     f1, -0x6e88(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x8004fb4c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__30TNerveHamuKuriGoForSearchActorFv
__dt__30TNerveHamuKuriGoForSearchActorFv: # 0x8004fb64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8004fba8
    lis     r3, __vvt__30TNerveHamuKuriGoForSearchActor@ha
    addi    r0, r3, __vvt__30TNerveHamuKuriGoForSearchActor@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8004fb98
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8004fb98:
    extsh.  r0, r4
    ble-    branch_0x8004fba8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8004fba8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isCollidMove__13TDoroHamuKuriFP9THitActor
isCollidMove__13TDoroHamuKuriFP9THitActor: # 0x8004fbc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stmw    r26, 0xd0(sp)
    mr      r29, r3
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8004fbe8
    li      r3, 0x0
    b       branch_0x8004ff68

branch_0x8004fbe8:
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x13
    bne-    branch_0x8004fc00
    li      r0, 0x1
    b       branch_0x8004fc04

branch_0x8004fc00:
    li      r0, 0x0
branch_0x8004fc04:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004ff60
    lbz     r0, 0x198(r4)
    addi    r31, r4, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x8004fc24
    li      r0, 0x1
    b       branch_0x8004fc28

branch_0x8004fc24:
    li      r0, 0x0
branch_0x8004fc28:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004ff58
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8004fc44
    li      r0, 0x1
    b       branch_0x8004fc48

branch_0x8004fc44:
    li      r0, 0x0
branch_0x8004fc48:
    cmpwi   r0, 0x0
    bne-    branch_0x8004ff58
    lfs     f1, -0x6eb4(r2)
    lfs     f0, -0x6e84(r2)
    stfs    f1, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f1, 0xb0(sp)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xb0(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6ea0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8004fcac
    li      r0, 0x1
    b       branch_0x8004fcb0

branch_0x8004fcac:
    li      r0, 0x0
branch_0x8004fcb0:
    cmpwi   r0, 0x0
    bne-    branch_0x8004fd30
    lwz     r4, 0x10(r31)
    mr      r3, r29
    lwz     r0, 0x14(r31)
    stw     r4, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xa4(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x6e64(r2)
    addi    r4, r29, 0x0
    addi    r3, sp, 0x6c
    addi    r5, sp, 0x9c
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x74(sp)
    stw     r0, 0xb4(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, -0x6ea0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r29)
branch_0x8004fd30:
    lbz     r0, 0x198(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8004ff58
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8004fd50
    li      r0, 0x1
    b       branch_0x8004fd54

branch_0x8004fd50:
    li      r0, 0x0
branch_0x8004fd54:
    cmpwi   r0, 0x0
    beq-    branch_0x8004ff58
    lfs     f1, -0x6eb0(r2)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x14(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x8004ff58
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    mr      r28, r0
    bne-    branch_0x8004fd98
    li      r0, 0x0
    stb     r0, 0x198(r31)
    li      r3, 0x1
    stw     r0, 0x6c(r31)
    b       branch_0x8004ff68

branch_0x8004fd98:
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r4, r31, 0x0
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8004ff58
    lwz     r6, 0x10(r31)
    mr      r3, r28
    lwz     r0, 0x14(r31)
    addi    r4, r29, 0x0
    li      r5, 0x4
    stw     r6, 0x10(r28)
    stw     r0, 0x14(r28)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r28)
    lwz     r12, 0x0(r28)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8004ff58
    li      r0, 0x0
    stb     r0, 0x198(r31)
    mr      r3, r29
    stw     r0, 0x6c(r31)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1c4(r12)
    mtlr    r12
    blrl
    stw     r28, 0x6c(r29)
    li      r3, 0x2
    li      r0, 0x3
    lwz     r4, 0x124(r31)
    li      r27, -0x1
    lwz     r30, 0x4(r4)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    subf    r28, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e90(r2)
    stw     r0, 0xcc(sp)
    lis     r4, 0x4330
    xoris   r0, r28, 0x8000
    lfs     f1, -0x6e78(r2)
    stw     r4, 0xc8(sp)
    lwz     r3, 0x88(sp)
    li      r26, 0x0
    stw     r0, 0xc4(sp)
    lfd     f0, 0xc8(sp)
    stw     r4, 0xc0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xc0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    add     r28, r3, r0
    b       branch_0x8004fec4

branch_0x8004fea0:
    lwz     r3, 0x124(r31)
    addi    r4, r30, 0x0
    addi    r5, r27, 0x0
    lwz     r3, 0x0(r3)
    li      r6, -0x1
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    addi    r27, r30, 0x0
    addi    r30, r3, 0x0
    addi    r26, r26, 0x1
branch_0x8004fec4:
    cmpw    r26, r28
    blt+    branch_0x8004fea0
    lwz     r3, 0x124(r31)
    slwi    r0, r30, 4
    addi    r4, sp, 0x7c
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x7f64(r13)
    addi    r4, r29, 0x0
    addi    r3, sp, 0x60
    addi    r5, sp, 0x7c
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x60(sp)
    li      r3, 0x0
    lwz     r4, 0x64(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x68(sp)
    stw     r4, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r29)
    lwz     r4, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r4, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x98(sp)
    stw     r0, 0xb4(r29)
    b       branch_0x8004ff68

branch_0x8004ff58:
    li      r3, 0x1
    b       branch_0x8004ff68

branch_0x8004ff60:
    mr      r3, r29
    bl      isCollidMove__9THamuKuriFP9THitActor
branch_0x8004ff68:
    lmw     r26, 0xd0(sp)
    lwz     r0, 0xec(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl onHaveCap__13TDoroHamuKuriFv
onHaveCap__13TDoroHamuKuriFv: # 0x8004ff7c
    li      r0, 0x1
    stb     r0, 0x198(r3)
    lwz     r4, 0x70(r3)
    stw     r3, 0x70(r4)
    lwz     r4, 0x74(r4)
    stw     r3, 0x1c(r4)
    stw     r3, 0x10(r4)
    blr


.globl setBehavior__13TDoroHamuKuriFv
setBehavior__13TDoroHamuKuriFv: # 0x8004ff9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r29, 0x5c(sp)
    lbz     r0, 0x198(r3)
    lwz     r31, 0x70(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800500b0
    lwz     r0, 0x70(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800500b0
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r29, r3
    bne-    branch_0x800501f0
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8004fffc
    li      r0, 0x1
    b       branch_0x80050000

branch_0x8004fffc:
    li      r0, 0x0
branch_0x80050000:
    cmpwi   r0, 0x0
    bne-    branch_0x800501f0
    lbz     r0, R13Off_m0x7010(r13)
    extsb.  r0, r0
    bne-    branch_0x8005004c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveDoroHamuKuriRobCap@ha
    stw     r0, R13Off_m0x700c(r13)
    addi    r0, r3, __vvt__24TNerveDoroHamuKuriRobCap@l
    lis     r4, __dt__24TNerveDoroHamuKuriRobCapFv@ha
    stw     r0, R13Off_m0x700c(r13)
    lis     r3, unk_803f040c@h
    addi    r5, r3, unk_803f040c@l
    addi    r4, r4, __dt__24TNerveDoroHamuKuriRobCapFv@l
    addi    r3, r13, R13Off_m0x700c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7010(r13)
branch_0x8005004c:
    addi    r6, r13, R13Off_m0x700c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800500a4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80050098
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80050098
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80050098:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800500a4:
    lwz     r0, 0x70(r31)
    stw     r0, 0x1f8(r30)
    b       branch_0x800501f0

branch_0x800500b0:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800500c4
    li      r0, 0x1
    b       branch_0x800500c8

branch_0x800500c4:
    li      r0, 0x0
branch_0x800500c8:
    cmpwi   r0, 0x0
    beq-    branch_0x80050104
    lfs     f1, -0x6e60(r2)
    lfs     f0, 0xc8(r30)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80050104
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__20TNerveWalkerGenerateFv
    cmplw   r29, r3
    beq-    branch_0x80050104
    li      r0, 0x1
    stb     r0, 0x1f0(r30)
branch_0x80050104:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80050118
    li      r0, 0x1
    b       branch_0x8005011c

branch_0x80050118:
    li      r0, 0x0
branch_0x8005011c:
    cmpwi   r0, 0x0
    bne-    branch_0x800501f0
    lbz     r0, 0x1f0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800501f0
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r29, r3
    beq-    branch_0x80050158
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r29, r3
    bne-    branch_0x800501f0
branch_0x80050158:
    lbz     r0, R13Off_m0x7038(r13)
    extsb.  r0, r0
    bne-    branch_0x80050198
    addi    r3, r13, R13Off_m0x7034
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__18TNerveHamuKuriLand@ha
    addi    r0, r3, __vvt__18TNerveHamuKuriLand@l
    lis     r4, __dt__18TNerveHamuKuriLandFv@ha
    stw     r0, R13Off_m0x7034(r13)
    lis     r3, unk_803f03c4@h
    addi    r5, r3, unk_803f03c4@l
    addi    r4, r4, __dt__18TNerveHamuKuriLandFv@l
    addi    r3, r13, R13Off_m0x7034
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7038(r13)
branch_0x80050198:
    addi    r6, r13, R13Off_m0x7034
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800501f0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800501e4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800501e4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800501e4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800501f0:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl attackToMario__13TDoroHamuKuriFv
attackToMario__13TDoroHamuKuriFv: # 0x8005020c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80050264
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r4, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    lis     r3, unk_803f03d0@h
    addi    r5, r3, unk_803f03d0@l
    addi    r4, r4, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80050264:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x702c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800502d4
    lfs     f1, -0x6eb0(r2)
    lfs     f0, 0x14(r31)
    lwz     r6, R13Off_m0x60b4(r13)
    fadds   f1, f1, f0
    lfs     f0, 0x4(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800502dc
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x28
    lwz     r0, 0x4(r6)
    mr      r3, r31
    stw     r5, 0x28(sp)
    li      r5, 0x0
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x30(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    b       branch_0x800502dc

branch_0x800502d4:
    mr      r3, r31
    bl      selectCapHolder__9THamuKuriFv
branch_0x800502dc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl setMActorAndKeeper__13TDoroHamuKuriFv
setMActorAndKeeper__13TDoroHamuKuriFv: # 0x800502f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80050328
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80050328:
    stw     r30, 0x78(r31)
    lis     r3, unk_80378614@ha
    addi    r4, r3, unk_80378614@l
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl kill__13TDoroHamuKuriFv
kill__13TDoroHamuKuriFv: # 0x8005035c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      kill__11TSmallEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__13TDoroHamuKuriFv
reset__13TDoroHamuKuriFv: # 0x8005037c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xf0(r30)
    li      r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
    lwz     r3, 0x1f4(r30)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0x194(r30)
    stb     r31, 0x1f0(r30)
    stb     r31, 0x1a3(r30)
    stb     r31, 0x1a4(r30)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r4, 0x8c(r30)
    stw     r31, 0x8(r4)
    stw     r31, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r31, 0x1c(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl init__13TDoroHamuKuriFP12TLiveManager
init__13TDoroHamuKuriFP12TLiveManager: # 0x800503f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    stw     r28, 0x20(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r30, unk_10000002@h
    addi    r0, r30, unk_10000002@l
    stw     r0, 0x4c(r29)
    li      r0, 0x11
    addi    r3, r29, 0x0
    stw     r0, 0x150(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r29)
    lwz     r0, 0x64(r29)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r29)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r29)
    li      r31, 0x0
    li      r4, 0x1
    stw     r31, 0x8(r5)
    stw     r31, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r31, 0x1c(r5)
    lwz     r3, 0x74(r29)
    bl      setLightType__6MActorFi
    addi    r0, r30, 0x13
    stw     r0, 0x4c(r29)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r4, 0x8c(r29)
    stw     r31, 0x8(r4)
    stw     r31, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r31, 0x1c(r4)
    lha     r0, 0x7c(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x80050530
    lis     r3, unk_80378628@ha
    lwz     r31, 0x70(r29)
    addi    r3, r3, unk_80378628@l
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800504e8
    addi    r3, r30, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800504e8:
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8005052c
    lwz     r4, 0x18(r31)
    addi    r6, r29, 0x0
    addi    r3, r28, 0x0
    lwz     r30, 0x0(r4)
    li      r5, 0x5
    li      r7, 0x3
    addi    r4, r30, 0x0
    addi    r8, r2, R2Off_m0x6e5c
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
    lis     r3, __vvt__9TDoroHige@h
    addi    r0, r3, __vvt__9TDoroHige@l
    stw     r0, 0x0(r28)
    stw     r30, 0x1c(r28)
branch_0x8005052c:
    stw     r28, 0x74(r31)
branch_0x80050530:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl __dt__12TSharedPartsFv
__dt__12TSharedPartsFv: # 0x80050550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800505a8
    lis     r3, __vvt__12TSharedParts@ha
    addi    r0, r3, __vvt__12TSharedParts@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80050598
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80050598:
    extsh.  r0, r31
    ble-    branch_0x800505a8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800505a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__13TDoroHamuKuriFPCc
__ct__13TDoroHamuKuriFPCc: # 0x800505c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13TDoroHamuKuri@ha
    addi    r3, r3, __vvt__13TDoroHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9THamuKuriFv
__dt__9THamuKuriFv: # 0x80050608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80050688
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80050678
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80050678
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80050678:
    extsh.  r0, r31
    ble-    branch_0x80050688
    mr      r3, r30
    bl      __dl__FPv
branch_0x80050688:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl changeTevColor__13TFireHamuKuriFv
changeTevColor__13TFireHamuKuriFv: # 0x800506a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    li      r30, 0x0
    lbz     r0, 0x210(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800506e8
    lwz     r3, 0x218(r31)
    cmpwi   r3, 0x1e
    bge-    branch_0x80050730
    addi    r0, r3, 0x1
    stw     r0, 0x218(r31)
    li      r30, 0x1
    b       branch_0x80050730

branch_0x800506e8:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20c3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80050718
    addi    r4, r31, 0x10
    li      r3, 0x20c3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80050718:
    lwz     r3, 0x218(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80050730
    addi    r0, r3, -0x1
    stw     r0, 0x218(r31)
    li      r30, 0x1
branch_0x80050730:
    clrlwi. r0, r30, 24
    beq-    branch_0x80050858
    lha     r5, -0x7f54(r13)
    lis     r3, unk_88888889@ha
    lwz     r4, 0x218(r31)
    addi    r0, r3, unk_88888889@l
    lha     r6, -0x6ee8(r2)
    mullw   r3, r5, r4
    mulhw   r4, r0, r3
    add     r3, r4, r3
    srawi   r3, r3, 4
    srwi    r4, r3, 31
    add     r3, r3, r4
    add     r3, r6, r3
    sth     r3, 0x21c(r31)
    addi    r6, r13, R13Off_m0x7f54
    addi    r9, r2, R2Off_m0x6ee8
    lha     r4, 0x2(r6)
    addi    r5, r13, R13Off_m0x7f4c
    lwz     r3, 0x218(r31)
    addi    r7, r2, R2Off_m0x6ed8
    lha     r8, 0x2(r9)
    mullw   r3, r4, r3
    mulhw   r4, r0, r3
    add     r3, r4, r3
    srawi   r3, r3, 4
    srwi    r4, r3, 31
    add     r3, r3, r4
    add     r3, r8, r3
    sth     r3, 0x21e(r31)
    lha     r4, 0x4(r6)
    lwz     r3, 0x218(r31)
    lha     r6, 0x4(r9)
    mullw   r3, r4, r3
    mulhw   r4, r0, r3
    add     r3, r4, r3
    srawi   r3, r3, 4
    srwi    r4, r3, 31
    add     r3, r3, r4
    add     r3, r6, r3
    sth     r3, 0x220(r31)
    lha     r4, -0x7f4c(r13)
    lwz     r3, 0x218(r31)
    lha     r6, -0x6ed8(r2)
    mullw   r3, r4, r3
    mulhw   r4, r0, r3
    add     r3, r4, r3
    srawi   r3, r3, 4
    srwi    r4, r3, 31
    add     r3, r3, r4
    add     r3, r6, r3
    sth     r3, 0x224(r31)
    lha     r4, 0x2(r5)
    lwz     r3, 0x218(r31)
    lha     r6, 0x2(r7)
    mullw   r3, r4, r3
    mulhw   r4, r0, r3
    add     r3, r4, r3
    srawi   r3, r3, 4
    srwi    r4, r3, 31
    add     r3, r3, r4
    add     r3, r6, r3
    sth     r3, 0x226(r31)
    lha     r4, 0x4(r5)
    lwz     r3, 0x218(r31)
    lha     r5, 0x4(r7)
    mullw   r3, r4, r3
    mulhw   r0, r0, r3
    add     r0, r0, r3
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    add     r0, r5, r0
    sth     r0, 0x228(r31)
branch_0x80050858:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl sendAttackMsgToMario__13TFireHamuKuriFv
sendAttackMsgToMario__13TFireHamuKuriFv: # 0x80050870
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x210(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80050894
    li      r4, 0xa
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x8005089c

branch_0x80050894:
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x8005089c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWalkAnm__13TFireHamuKuriFv
setWalkAnm__13TFireHamuKuriFv: # 0x800508ac
    mflr    r0
    li      r4, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isHitValid__13TFireHamuKuriFUl
isHitValid__13TFireHamuKuriFUl: # 0x800508dc
    mflr    r0
    cmplwi  r4, 0xb
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x800508f8
    li      r3, 0x1
    b       branch_0x8005096c

branch_0x800508f8:
    lbz     r0, 0x210(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8005090c
    li      r3, 0x0
    b       branch_0x8005096c

branch_0x8005090c:
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80050920
    li      r0, 0x1
    b       branch_0x80050924

branch_0x80050920:
    li      r0, 0x0
branch_0x80050924:
    clrlwi. r0, r0, 24
    beq-    branch_0x80050944
    lwz     r0, 0x70(r3)
    addi    r4, r3, 0x0
    mr      r3, r0
    bl      requestSerialKill__16THamuKuriManagerFP9THamuKuri
    li      r3, 0x1
    b       branch_0x8005096c

branch_0x80050944:
    lwz     r5, 0xf0(r3)
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x80050958
    li      r3, 0x0
    b       branch_0x8005096c

branch_0x80050958:
    cmplwi  r4, 0xb
    bne-    branch_0x80050968
    ori     r0, r5, 0x2
    stw     r0, 0xf0(r3)
branch_0x80050968:
    li      r3, 0x1
branch_0x8005096c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl walkBehavior__13TFireHamuKuriFif
walkBehavior__13TFireHamuKuriFif: # 0x8005097c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x800509a4
    li      r0, 0x1
    b       branch_0x800509a8

branch_0x800509a4:
    li      r0, 0x0
branch_0x800509a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x800509b8
    mr      r3, r31
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x800509b8:
    lwz     r3, 0x214(r31)
    lwz     r4, 0x20c(r31)
    cmpwi   r3, 0x0
    lwz     r4, 0x454(r4)
    ble-    branch_0x800509d4
    addi    r0, r3, 0x1
    stw     r0, 0x214(r31)
branch_0x800509d4:
    lwz     r0, 0x214(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800509f4
    lbz     r0, 0x210(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800509f4
    li      r0, 0x1
    stb     r0, 0x210(r31)
branch_0x800509f4:
    lwz     r0, 0x214(r31)
    cmpw    r0, r4
    ble-    branch_0x80050ae4
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80050a24
    stw     r0, 0x1c(r4)
branch_0x80050a24:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, R13Off_m0x7008(r13)
    extsb.  r0, r0
    bne-    branch_0x80050a74
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveFireHamuKuriRecover@ha
    stw     r0, R13Off_m0x7004(r13)
    addi    r0, r3, __vvt__25TNerveFireHamuKuriRecover@l
    lis     r4, __dt__25TNerveFireHamuKuriRecoverFv@ha
    stw     r0, R13Off_m0x7004(r13)
    lis     r3, unk_803f0418@h
    addi    r5, r3, unk_803f0418@l
    addi    r4, r4, __dt__25TNerveFireHamuKuriRecoverFv@l
    addi    r3, r13, R13Off_m0x7004
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7008(r13)
branch_0x80050a74:
    addi    r6, r13, R13Off_m0x7004
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80050acc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80050ac0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80050ac0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80050ac0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80050acc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80050ae4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calcRootMatrix__13TFireHamuKuriFv
calcRootMatrix__13TFireHamuKuriFv: # 0x80050af8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    bl      calcRootMatrix__11TSpineEnemyFv
    lbz     r0, 0x210(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80050cb8
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80050cb8
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lbz     r0, 0x1ac(r31)
    li      r4, 0x1ed
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x3
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80050b8c
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
branch_0x80050b8c:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lbz     r0, 0x1ac(r31)
    li      r4, 0x135
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80050bf0
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
branch_0x80050bf0:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lbz     r0, 0x1ac(r31)
    li      r4, 0x136
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80050c54
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
branch_0x80050c54:
    lwz     r3, 0x74(r31)
    mr      r7, r31
    lbz     r0, 0x1ac(r31)
    li      r4, 0x137
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80050cb8
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
branch_0x80050cb8:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl moveObject__13TFireHamuKuriFv
moveObject__13TFireHamuKuriFv: # 0x80050ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      moveObject__9THamuKuriFv
    mr      r3, r31
    bl      changeTevColor__13TFireHamuKuriFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__13TFireHamuKuriFv
setMActorAndKeeper__13TFireHamuKuriFv: # 0x80050d00
    mflr    r0
    lis     r4, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, unk_80378260@l
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    li      r3, 0x18
    stw     r29, 0x2c(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80050d44
    lwz     r4, 0x70(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80050d44:
    stw     r29, 0x78(r30)
    addi    r4, r31, 0x360
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    addi    r3, r31, 0x3ec
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80050d84
    lwz     r6, 0x74(r30)
    addi    r5, r3, 0x0
    addi    r4, r31, 0x410
    lwz     r3, 0x4(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80050d84:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl reset__13TFireHamuKuriFv
reset__13TFireHamuKuriFv: # 0x80050da0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r4, 0xf0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    rlwinm  r4, r4, 0, 31, 29
    stw     r4, 0xf0(r31)
    lwz     r4, 0x1f4(r31)
    lfs     f0, 0x11c(r4)
    stfs    f0, 0x194(r31)
    stb     r0, 0x1f0(r31)
    stb     r0, 0x1a3(r31)
    stb     r0, 0x1a4(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80050e18
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80050e1c

branch_0x80050e18:
    li      r0, 0x1
branch_0x80050e1c:
    stb     r0, 0x13c(r31)
    li      r0, 0x0
    lwz     r3, 0x150(r31)
    rlwinm  r3, r3, 0, 31, 29
    stw     r3, 0x150(r31)
    lwz     r3, 0x150(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x150(r31)
    stw     r0, 0x214(r31)
    stb     r0, 0x210(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl behaveToWater__13TFireHamuKuriFP9THitActor
behaveToWater__13TFireHamuKuriFP9THitActor: # 0x80050e58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    mr      r30, r3
    stw     r29, 0xac(sp)
    lbz     r0, 0x210(r3)
    lis     r3, unk_803f03a0@h
    addi    r31, r3, unk_803f03a0@l
    cmplwi  r0, 0x0
    beq-    branch_0x80051024
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x0(r3)
    lfs     f3, 0x18(r30)
    fsubs   f0, f1, f0
    lfs     f1, 0x8(r3)
    lfs     f2, -0x6eb4(r2)
    fsubs   f1, f3, f1
    stfs    f0, 0x98(sp)
    stfs    f2, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    lfs     f1, 0x98(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80050ee4
    lfs     f0, 0x9c(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80050ee4
    lfs     f0, 0xa0(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80050ee4
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x98(sp)
branch_0x80050ee4:
    addi    r3, sp, 0x98
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x98(sp)
    lfs     f1, -0x6e54(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lwz     r3, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0xa0(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6ea4(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80051018
    li      r0, 0x0
    stb     r0, 0x210(r30)
    li      r3, 0x1
    li      r4, 0x2903
    stb     r3, 0x1a2(r30)
    lwz     r0, 0x150(r30)
    ori     r0, r0, 0x2
    stw     r0, 0x150(r30)
    lwz     r0, 0x150(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x150(r30)
    stw     r3, 0x214(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80050fb4
    addi    r4, r30, 0x10
    li      r3, 0x2903
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80050fb4:
    lwz     r3, 0x74(r30)
    li      r4, 0x8b
    lbz     r0, 0x1ac(r30)
    li      r6, 0x0
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80051018
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x80051018:
    li      r0, 0x14
    stw     r0, 0x160(r30)
    b       branch_0x8005121c

branch_0x80051024:
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80051064
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r3, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r4, r3, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80051064:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7044
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8005121c
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x800510b8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    lis     r3, __dt__21TNerveHamuKuriWallDieFv@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r4, r3, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r3, r13, R13Off_m0x703c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x800510b8:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x703c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8005121c
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x8005110c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x8005110c:
    lwz     r3, 0x8c(r30)
    addi    r29, r13, R13Off_m0x702c
    lwz     r0, 0x14(r3)
    cmplw   r0, r29
    bne-    branch_0x8005112c
    li      r0, 0x1
    stb     r0, 0x165(r30)
    b       branch_0x8005121c

branch_0x8005112c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800511e0
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80051184
    addi    r3, r13, R13Off_m0x702c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r29, 0x0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80051184:
    addi    r6, r13, R13Off_m0x702c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8005121c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800511d0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800511d0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800511d0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x8005121c

branch_0x800511e0:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x6eb4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8005121c
    lwz     r7, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x88
    addi    r3, r30, 0x0
    lwz     r6, 0x0(r7)
    li      r5, 0x1
    lwz     r0, 0x4(r7)
    stw     r6, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x90(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
branch_0x8005121c:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xb8
    blr


.globl canDoJitabata__9THamuKuriFv
canDoJitabata__9THamuKuriFv: # 0x80051238
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8005124c
    li      r0, 0x1
    b       branch_0x80051250

branch_0x8005124c:
    li      r0, 0x0
branch_0x80051250:
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl init__13TFireHamuKuriFP12TLiveManager
init__13TFireHamuKuriFP12TLiveManager: # 0x8005125c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r30, unk_10000002@h
    addi    r0, r30, unk_10000002@l
    stw     r0, 0x4c(r29)
    li      r0, 0x11
    addi    r3, r29, 0x0
    stw     r0, 0x150(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r29)
    lwz     r0, 0x64(r29)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r29)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r29)
    li      r31, 0x0
    li      r4, 0x1
    stw     r31, 0x8(r5)
    stw     r31, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r31, 0x1c(r5)
    lwz     r3, 0x74(r29)
    bl      setLightType__6MActorFi
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r4, 0x8c(r29)
    addi    r0, r30, 0x11
    stw     r31, 0x8(r4)
    stw     r31, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    mr      r3, r29
    stw     r31, 0x1c(r4)
    stw     r0, 0x4c(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x20c(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__13TFireHamuKuriFPCc
__ct__13TFireHamuKuriFPCc: # 0x80051338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13TFireHamuKuri@ha
    addi    r3, r3, __vvt__13TFireHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x210(r31)
    stw     r0, 0x214(r31)
    stw     r0, 0x218(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl generateBody__18TBossDangoHamuKuriFv
generateBody__18TBossDangoHamuKuriFv: # 0x8005138c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    stw     r28, 0x38(sp)
    mr      r28, r3
    lwz     r3, 0x23c(r3)
    lwz     r0, 0x238(r28)
    lwz     r31, 0x454(r3)
    cmpw    r0, r31
    bge-    branch_0x800514f8
    lis     r4, unk_80378680@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_80378680@l
    addi    r4, r28, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r30, r3
    addi    r29, r28, 0x0
    beq-    branch_0x800514f8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x7028(r13)
    extsb.  r0, r0
    bne-    branch_0x80051444
    addi    r3, r13, R13Off_m0x7024
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__23TNerveDangoHamuKuriWait@ha
    addi    r0, r3, __vvt__23TNerveDangoHamuKuriWait@l
    lis     r4, __dt__23TNerveDangoHamuKuriWaitFv@ha
    stw     r0, R13Off_m0x7024(r13)
    lis     r3, unk_803f03dc@h
    addi    r5, r3, unk_803f03dc@l
    addi    r4, r4, __dt__23TNerveDangoHamuKuriWaitFv@l
    addi    r3, r13, R13Off_m0x7024
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7028(r13)
branch_0x80051444:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x7024
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8005145c
    stw     r0, 0x1c(r4)
branch_0x8005145c:
    li      r0, 0x0
    mtctr   r31
    stw     r0, 0x20(r4)
    cmpwi   r31, 0x0
    stw     r3, 0x14(r4)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x10(r30)
    stfs    f0, 0x14(r30)
    stfs    f0, 0x18(r30)
    lwz     r4, 0x124(r28)
    lwz     r3, 0x124(r30)
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    lwz     r3, 0x238(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x238(r28)
    ble-    branch_0x800514ec
branch_0x800514a0:
    lwz     r0, 0x228(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x800514e4
    stw     r30, 0x228(r29)
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    stw     r29, 0x22c(r30)
    li      r5, 0x4
    lwz     r12, 0x0(r30)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800514dc
    stw     r30, 0x6c(r29)
branch_0x800514dc:
    stw     r28, 0x234(r30)
    b       branch_0x800514ec

branch_0x800514e4:
    mr      r29, r0
    bdnz+      branch_0x800514a0
branch_0x800514ec:
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
branch_0x800514f8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl genEventCoin__18TBossDangoHamuKuriFv
genEventCoin__18TBossDangoHamuKuriFv: # 0x80051518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r4, 0x180(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800515dc
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x80051554
    li      r0, 0x1
    b       branch_0x80051558

branch_0x80051554:
    li      r0, 0x0
branch_0x80051558:
    clrlwi. r0, r0, 24
    beq-    branch_0x80051578
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r31, r3
    b       branch_0x80051590

branch_0x80051578:
    addi    r31, r4, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x80051590:
    cmplwi  r31, 0x0
    beq-    branch_0x800515dc
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r31)
    lfs     f1, -0x6eb4(r2)
    stfs    f1, 0xac(r31)
    lfs     f0, -0x6e50(r2)
    stfs    f0, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r3, 0x18c(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x18c(r30)
branch_0x800515dc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl moveObject__18TBossDangoHamuKuriFv
moveObject__18TBossDangoHamuKuriFv: # 0x800515f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      moveObject__9THamuKuriFv
    mr      r3, r31
    bl      swingBody__14TDangoHamuKuriFv
    lwz     r3, 0x234(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80051638
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80051638
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
branch_0x80051638:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setGenerateAnm__18TBossDangoHamuKuriFv
setGenerateAnm__18TBossDangoHamuKuriFv: # 0x8005164c
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x23c(r29)
    li      r30, 0x0
    lwz     r31, 0x454(r3)
    b       branch_0x80051698

branch_0x8005168c:
    mr      r3, r29
    bl      generateBody__18TBossDangoHamuKuriFv
    addi    r30, r30, 0x1
branch_0x80051698:
    cmpw    r30, r31
    blt+    branch_0x8005168c
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl reset__18TBossDangoHamuKuriFv
reset__18TBossDangoHamuKuriFv: # 0x800516bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xf0(r30)
    li      r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
    lwz     r3, 0x1f4(r30)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0x194(r30)
    stb     r31, 0x1f0(r30)
    stb     r31, 0x1a3(r30)
    stb     r31, 0x1a4(r30)
    stw     r31, 0x22c(r30)
    stw     r31, 0x228(r30)
    stw     r31, 0x234(r30)
    lfs     f1, -0x6eb4(r2)
    lfs     f0, -0x6e80(r2)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x20(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e90(r2)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6e78(r2)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x20c(r30)
    lwz     r3, 0x74(r30)
    bl      calc__6MActorFv
    stw     r30, 0x234(r30)
    stw     r31, 0x238(r30)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl perform__18TBossDangoHamuKuriFUlPQ26JDrama9TGraphics
perform__18TBossDangoHamuKuriFUlPQ26JDrama9TGraphics: # 0x80051790
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__18TBossDangoHamuKuriFP12TLiveManager
init__18TBossDangoHamuKuriFP12TLiveManager: # 0x800517b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000002@h
    addi    r0, r3, unk_10000002@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r31)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r31)
    li      r0, 0x0
    li      r4, 0x1
    stw     r0, 0x8(r5)
    stw     r0, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lbz     r0, R13Off_m0x7028(r13)
    extsb.  r0, r0
    bne-    branch_0x80051870
    addi    r3, r13, R13Off_m0x7024
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__23TNerveDangoHamuKuriWait@ha
    addi    r0, r3, __vvt__23TNerveDangoHamuKuriWait@l
    lis     r4, __dt__23TNerveDangoHamuKuriWaitFv@ha
    stw     r0, R13Off_m0x7024(r13)
    lis     r3, unk_803f03dc@h
    addi    r5, r3, unk_803f03dc@l
    addi    r4, r4, __dt__23TNerveDangoHamuKuriWaitFv@l
    addi    r3, r13, R13Off_m0x7024
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7028(r13)
branch_0x80051870:
    lwz     r5, 0x8c(r31)
    li      r30, 0x0
    lis     r3, unk_10000010@h
    stw     r30, 0x8(r5)
    addi    r4, r13, R13Off_m0x7024
    addi    r0, r3, unk_10000010@l
    stw     r30, 0x20(r5)
    mr      r3, r31
    stw     r4, 0x14(r5)
    stw     r4, 0x18(r5)
    stw     r30, 0x1c(r5)
    stw     r0, 0x4c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x23c(r31)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r4, 0x8c(r31)
    stw     r30, 0x8(r4)
    stw     r30, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r30, 0x1c(r4)
    stw     r31, 0x234(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__18TBossDangoHamuKuriFPCc
__ct__18TBossDangoHamuKuriFPCc: # 0x800518ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__14TDangoHamuKuri@h
    addi    r3, r3, __vvt__14TDangoHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__18TBossDangoHamuKuri@h
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__18TBossDangoHamuKuri@l
    li      r5, 0x0
    lfs     f0, -0x6eb4(r2)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x218(r31)
    stw     r5, 0x228(r31)
    stw     r5, 0x22c(r31)
    stb     r5, 0x230(r31)
    stw     r5, 0x234(r31)
    stfs    f0, 0x21c(r31)
    stfs    f0, 0x220(r31)
    stfs    f0, 0x224(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x238(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14TDangoHamuKuriFv
__dt__14TDangoHamuKuriFv: # 0x8005197c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800519fc
    lis     r3, __vvt__14TDangoHamuKuri@h
    addi    r3, r3, __vvt__14TDangoHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800519ec
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800519ec
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800519ec:
    extsh.  r0, r31
    ble-    branch_0x800519fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800519fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl swingBody__14TDangoHamuKuriFv
swingBody__14TDangoHamuKuriFv: # 0x80051a18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lfs     f0, -0x6e80(r2)
    lfs     f1, 0x20c(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80051a4c
    fsubs   f0, f1, f0
    stfs    f0, 0x20c(r31)
branch_0x80051a4c:
    lfs     f1, 0x20c(r31)
    lfs     f0, -0x6ea8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x20c(r31)
    lwz     r3, 0x234(r31)
    lfs     f31, -0x6eb0(r2)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    bne-    branch_0x80051a80
    li      r0, 0x1
    b       branch_0x80051a84

branch_0x80051a80:
    li      r0, 0x0
branch_0x80051a84:
    clrlwi. r0, r0, 24
    beq-    branch_0x80051b58
    lbz     r0, R13Off_m0x704f(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80051b54
    lwz     r3, 0x22c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80051b38
    lwz     r4, 0x234(r31)
    cmplw   r3, r4
    bne-    branch_0x80051ad8
    lwz     r3, 0x30(r4)
    lwz     r0, 0x34(r4)
    stw     r3, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x38(r4)
    stw     r0, 0x38(r31)
    lfs     f1, 0x210(r31)
    lfs     f0, -0x6eb0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x210(r31)
branch_0x80051ad8:
    lwz     r3, 0x22c(r31)
    lwz     r0, 0x234(r31)
    lwz     r3, 0x22c(r3)
    cmplw   r3, r0
    bne-    branch_0x80051b54
    lfs     f1, 0x218(r31)
    lfs     f0, -0x6e70(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x218(r31)
    lfs     f0, 0x218(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fctiwz  f1, f0
    lwz     r4, R13Off_m0x5ea8(r13)
    lfs     f2, -0x6e7c(r2)
    lfs     f0, -0x6e4c(r2)
    stfd    f1, 0x48(sp)
    lwz     r3, 0x4c(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x214(r31)
    b       branch_0x80051b54

branch_0x80051b38:
    beq-    branch_0x80051b54
    lwz     r3, 0x22c(r3)
    lwz     r0, 0x234(r31)
    cmplw   r3, r0
    bne-    branch_0x80051b54
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x214(r31)
branch_0x80051b54:
    lfs     f31, -0x6e48(r2)
branch_0x80051b58:
    lfs     f1, -0x6e44(r2)
    lfs     f0, 0x20c(r31)
    lfs     f2, -0x6e74(r2)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea4(r13)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r3, 0x4c(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f31, f0
    stfs    f0, 0x21c(r31)
    lfs     f0, 0x20c(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r4, R13Off_m0x5ea8(r13)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f31, f0
    stfs    f0, 0x224(r31)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl behaveToWater__14TDangoHamuKuriFP9THitActor
behaveToWater__14TDangoHamuKuriFP9THitActor: # 0x80051bec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    mr      r30, r3
    stw     r29, 0xb4(sp)
    lwz     r0, 0x228(r3)
    lis     r3, unk_803f03a0@h
    addi    r31, r3, unk_803f03a0@l
    cmplwi  r0, 0x0
    bne-    branch_0x80051f54
    lwz     r4, 0x22c(r30)
    cmplwi  r4, 0x0
    bne-    branch_0x80051e24
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80051c68
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r3, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r4, r3, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80051c68:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7044
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80052070
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x80051cbc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    lis     r3, __dt__21TNerveHamuKuriWallDieFv@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r4, r3, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r3, r13, R13Off_m0x703c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x80051cbc:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x703c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80052070
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80051d10
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80051d10:
    lwz     r3, 0x8c(r30)
    addi    r29, r13, R13Off_m0x702c
    lwz     r0, 0x14(r3)
    cmplw   r0, r29
    bne-    branch_0x80051d30
    li      r0, 0x1
    stb     r0, 0x165(r30)
    b       branch_0x80052070

branch_0x80051d30:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80051de4
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80051d88
    addi    r3, r13, R13Off_m0x702c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r29, 0x0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80051d88:
    addi    r6, r13, R13Off_m0x702c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80052070
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80051dd4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80051dd4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80051dd4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x80052070

branch_0x80051de4:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x6eb4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80052070
    lwz     r7, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x7c
    addi    r3, r30, 0x0
    lwz     r6, 0x0(r7)
    li      r5, 0x1
    lwz     r0, 0x4(r7)
    stw     r6, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x84(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
    b       branch_0x80052070

branch_0x80051e24:
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x1
    bgt-    branch_0x80052070
    lwz     r12, 0x0(r30)
    mr      r3, r30
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80052070
    li      r4, 0x0
    stw     r4, 0x68(r30)
    li      r0, 0x1
    lwz     r3, 0x22c(r30)
    stw     r4, 0x6c(r3)
    lwz     r3, 0x22c(r30)
    stw     r4, 0x228(r3)
    lwz     r3, 0x22c(r30)
    stw     r0, 0x160(r3)
    stw     r4, 0x22c(r30)
    stw     r4, 0x228(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r30)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80051e94
    stw     r0, 0x1c(r4)
branch_0x80051e94:
    li      r31, 0x0
    stw     r31, 0x20(r4)
    stw     r3, 0x14(r4)
    addi    r3, sp, 0x4c
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x210(r30)
    stfs    f0, 0x214(r30)
    lwz     r5, 0x10(r30)
    lwz     r0, 0x14(r30)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x54(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0xa0
    lwz     r5, 0x50(sp)
    mr      r4, r3
    stw     r0, 0xa0(sp)
    lwz     r0, 0x54(sp)
    stw     r5, 0xa4(sp)
    stw     r0, 0xa8(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0xa0(sp)
    lfs     f2, -0x6ea4(r2)
    lfs     f0, -0x6e80(r2)
    fmuls   f1, f1, f2
    stfs    f1, 0xa0(sp)
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0xa8(sp)
    lwz     r3, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0xa8(sp)
    stw     r0, 0xb4(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6e50(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    stb     r31, 0x230(r30)
    b       branch_0x80052070

branch_0x80051f54:
    lwz     r3, 0x22c(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80052024
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80051f74
    li      r0, 0x1
    b       branch_0x80051f78

branch_0x80051f74:
    li      r0, 0x0
branch_0x80051f78:
    cmpwi   r0, 0x0
    bne-    branch_0x80052070
    lfs     f2, -0x6eb4(r2)
    lfs     f1, -0x6ea0(r2)
    stfs    f2, 0x94(sp)
    lfs     f0, -0x6eb0(r2)
    stfs    f1, 0x98(sp)
    stfs    f2, 0x9c(sp)
    lfs     f1, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lwz     r3, 0x94(sp)
    lwz     r0, 0x98(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x9c(sp)
    stw     r0, 0xb4(r30)
    bl      theNerve__28TNerveSmallEnemyHitWaterJumpFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x80052070
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80052014
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80052014
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80052014:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
    b       branch_0x80052070

branch_0x80052024:
    lbz     r0, 0x230(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80052070
    li      r0, 0x1
    stb     r0, 0x230(r30)
    li      r4, 0x295e
    lfs     f0, -0x6e80(r2)
    stfs    f0, 0x210(r30)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80052070
    addi    r4, r30, 0x10
    li      r3, 0x295e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80052070:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    addi    sp, sp, 0xc0
    blr


.globl forceKill__14TDangoHamuKuriFv
forceKill__14TDangoHamuKuriFv: # 0x8005208c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    lwz     r0, 0x22c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800520bc
    mr      r3, r31
    bl      forceKill__11TSmallEnemyFv
branch_0x800520bc:
    lwz     r29, 0x234(r31)
    cmplwi  r29, 0x0
    beq-    branch_0x800521d0
    lwz     r3, 0x8c(r29)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x80052134
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x80052120
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    lis     r4, __dt__21TNerveHamuKuriWallDieFv@ha
    stw     r0, R13Off_m0x703c(r13)
    lis     r3, unk_803f03b8@h
    addi    r5, r3, unk_803f03b8@l
    addi    r4, r4, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r3, r13, R13Off_m0x703c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x80052120:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x703c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8005213c
branch_0x80052134:
    li      r0, 0x1
    b       branch_0x80052140

branch_0x8005213c:
    li      r0, 0x0
branch_0x80052140:
    clrlwi. r0, r0, 24
    beq-    branch_0x800521d0
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x800521d0
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80052180
    stw     r0, 0x1c(r4)
branch_0x80052180:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800521c4
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800521c4
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800521c4:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
branch_0x800521d0:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl isHitValid__14TDangoHamuKuriFUl
isHitValid__14TDangoHamuKuriFUl: # 0x800521ec
    lwz     r0, 0x22c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80052204
    lwz     r0, 0x228(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8005220c
branch_0x80052204:
    li      r3, 0x0
    blr

branch_0x8005220c:
    li      r3, 0x1
    blr


.globl receiveMessage__14TDangoHamuKuriFP9THitActorUl
receiveMessage__14TDangoHamuKuriFP9THitActorUl: # 0x80052214
    mflr    r0
    cmplwi  r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r4, 0x0
    bne-    branch_0x80052280
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80052280
    lwz     r0, 0x234(r31)
    cmplw   r0, r31
    beq-    branch_0x80052280
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    stw     r30, 0x68(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800523fc

branch_0x80052280:
    addi    r0, r5, -0x6
    cmplwi  r0, 0x1
    bgt-    branch_0x800522c8
    lwz     r0, 0x68(r31)
    cmplw   r0, r30
    bne-    branch_0x800522c8
    li      r0, 0x0
    stw     r0, 0x68(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x148(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    li      r3, 0x1
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x800523fc

branch_0x800522c8:
    cmplwi  r5, 0x1
    ble-    branch_0x800522e0
    cmplwi  r5, 0x3
    beq-    branch_0x800522e0
    cmplwi  r5, 0xb
    bne-    branch_0x80052324
branch_0x800522e0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r5
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8005231c
    li      r0, 0x0
    stb     r0, 0x184(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8005231c:
    li      r3, 0x1
    b       branch_0x800523fc

branch_0x80052324:
    cmplwi  r5, 0xd
    bne-    branch_0x8005234c
    li      r0, 0x0
    stb     r0, 0x13c(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x8005234c:
    cmplwi  r5, 0xf
    bne-    branch_0x800523f8
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x6eb4(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800523f0
    li      r0, 0x1
    stw     r0, 0x160(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800523f0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r30
    lwz     r12, 0x18c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r30
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
branch_0x800523f0:
    li      r3, 0x1
    b       branch_0x800523fc

branch_0x800523f8:
    li      r3, 0x0
branch_0x800523fc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl reset__14TDangoHamuKuriFv
reset__14TDangoHamuKuriFv: # 0x80052414
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    rlwinm  r3, r3, 0, 31, 29
    stw     r3, 0xf0(r31)
    lwz     r3, 0x1f4(r31)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0x194(r31)
    stb     r0, 0x1f0(r31)
    stb     r0, 0x1a3(r31)
    stb     r0, 0x1a4(r31)
    stw     r0, 0x22c(r31)
    stw     r0, 0x228(r31)
    stw     r0, 0x234(r31)
    lfs     f1, -0x6eb4(r2)
    lfs     f0, -0x6e80(r2)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x20(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e90(r2)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6e78(r2)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x20c(r31)
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl calcRootMatrix__14TDangoHamuKuriFv
calcRootMatrix__14TDangoHamuKuriFv: # 0x800524d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80052690
    lwz     r0, 0x6c(r3)
    cmplw   r0, r31
    bne-    branch_0x80052690
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    mr.     r30, r3
    beq-    branch_0x80052690
    lbz     r0, 0x230(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800525cc
    lfs     f1, 0x210(r31)
    lfs     f0, -0x6e40(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x210(r31)
    lfs     f1, 0x210(r31)
    lfs     f0, -0x6e44(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800525cc
    lfs     f1, -0x6eb0(r2)
    lfs     f0, -0x6e50(r2)
    stfs    f1, 0x84(sp)
    stfs    f0, 0x88(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x84(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e90(r2)
    stw     r0, 0x94(sp)
    lis     r3, 0x4330
    lfs     f0, -0x6e78(r2)
    li      r0, 0x0
    stw     r3, 0x90(sp)
    lfs     f1, 0x84(sp)
    lfd     f2, 0x90(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fneg    f0, f0
    stfs    f0, 0x210(r31)
    stb     r0, 0x230(r31)
branch_0x800525cc:
    lwz     r3, 0x68(r31)
    lbz     r0, 0x230(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800525e8
    lfs     f0, 0x210(r3)
    fneg    f0, f0
    stfs    f0, 0x210(r31)
branch_0x800525e8:
    lfs     f1, 0xc(r30)
    mr      r3, r31
    lfs     f0, 0x21c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0x220(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r30)
    lfs     f1, 0x2c(r30)
    lfs     f0, 0x224(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    addi    r3, sp, 0x40
    lfs     f1, -0x6eb4(r2)
    lfs     f2, 0x210(r31)
    lfs     f3, 0x214(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x40
    bl      PSMTXConcat
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
    b       branch_0x80052698

branch_0x80052690:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x80052698:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    lwz     r30, 0x98(sp)
    addi    sp, sp, 0xa8
    blr


.globl setRunAnm__14TDangoHamuKuriFv
setRunAnm__14TDangoHamuKuriFv: # 0x800526b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x228(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800526e4
    lwz     r12, 0x0(r3)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800526f8

branch_0x800526e4:
    lwz     r12, 0x0(r3)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800526f8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getTakingMtx__14TDangoHamuKuriFv
getTakingMtx__14TDangoHamuKuriFv: # 0x80052708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      calc__6MActorFv
    lwz     r4, 0x74(r31)
    lbz     r3, 0x1ac(r31)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x234(r31)
    mulli   r3, r3, 0x30
    lwz     r4, 0x58(r4)
    lfs     f1, -0x6eb4(r2)
    cmplw   r0, r31
    add     r4, r4, r3
    bne-    branch_0x8005275c
    lfs     f1, -0x6e40(r2)
branch_0x8005275c:
    lfs     f0, 0x1c(r4)
    addi    r3, sp, 0x5c
    lfs     f29, 0x2c(r4)
    fadds   f30, f0, f1
    lfs     f31, 0xc(r4)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x68(sp)
    addi    r3, sp, 0x2c
    lfs     f1, -0x6eb4(r2)
    stfs    f30, 0x78(sp)
    fmr     f3, f1
    stfs    f29, 0x88(sp)
    lwz     r4, 0x234(r31)
    lfs     f2, 0x34(r4)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r31, r31, 0x1b0
    addi    r5, r31, 0x0
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x2c
    bl      PSMTXConcat
    lwz     r0, 0xb4(sp)
    mr      r3, r31
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0xb0
    blr


.globl attackToMario__14TDangoHamuKuriFv
attackToMario__14TDangoHamuKuriFv: # 0x800527d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lwz     r0, 0x22c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80052810
    lfs     f1, -0x6e50(r2)
    lfs     f0, 0x14(r31)
    lwz     r3, R13Off_m0x60b4(r13)
    fadds   f1, f1, f0
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800528d0
branch_0x80052810:
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80052854
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r4, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    lis     r3, unk_803f03d0@h
    addi    r5, r3, unk_803f03d0@l
    addi    r4, r4, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80052854:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x702c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800528c4
    lfs     f1, -0x6eb0(r2)
    lfs     f0, 0x14(r31)
    lwz     r6, R13Off_m0x60b4(r13)
    fadds   f1, f1, f0
    lfs     f0, 0x4(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80052918
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x38
    lwz     r0, 0x4(r6)
    mr      r3, r31
    stw     r5, 0x38(sp)
    li      r5, 0x0
    stw     r0, 0x3c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x40(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    b       branch_0x80052918

branch_0x800528c4:
    mr      r3, r31
    bl      attackToMario__12TWalkerEnemyFv
    b       branch_0x80052918

branch_0x800528d0:
    lwz     r3, 0x234(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80052918
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    bne-    branch_0x800528f8
    li      r0, 0x1
    b       branch_0x800528fc

branch_0x800528f8:
    li      r0, 0x0
branch_0x800528fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80052918
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
branch_0x80052918:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl isCollidMove__14TDangoHamuKuriFP9THitActor
isCollidMove__14TDangoHamuKuriFP9THitActor: # 0x80052930
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      isCollidMove__11TSmallEnemyFP9THitActor
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateAnmSound__14TDangoHamuKuriFv
updateAnmSound__14TDangoHamuKuriFv: # 0x80052950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      updateAnmSound__11TSmallEnemyFv
    lwz     r0, 0x234(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80052980
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
branch_0x80052980:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl moveObject__14TDangoHamuKuriFv
moveObject__14TDangoHamuKuriFv: # 0x80052994
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      moveObject__9THamuKuriFv
    mr      r3, r31
    bl      swingBody__14TDangoHamuKuriFv
    lwz     r3, 0x234(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800529d8
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800529d8
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
branch_0x800529d8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl changeByJuice__14TDangoHamuKuriFv
changeByJuice__14TDangoHamuKuriFv: # 0x800529ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x22c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80052a0c
    bl      changeByJuice__11TSmallEnemyFv
    b       branch_0x80052a10

branch_0x80052a0c:
    li      r3, 0x0
branch_0x80052a10:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__14TDangoHamuKuriFUlPQ26JDrama9TGraphics
perform__14TDangoHamuKuriFUlPQ26JDrama9TGraphics: # 0x80052a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    mr      r28, r3
    lwz     r3, 0x234(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80052a8c
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    bl      theNerve__20TNerveWalkerGenerateFv
    cmplw   r31, r3
    bne-    branch_0x80052a70
    li      r0, 0x1
    b       branch_0x80052a74

branch_0x80052a70:
    li      r0, 0x0
branch_0x80052a74:
    clrlwi. r0, r0, 24
    bne-    branch_0x80052a8c
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
branch_0x80052a8c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl init__14TDangoHamuKuriFP12TLiveManager
init__14TDangoHamuKuriFP12TLiveManager: # 0x80052aac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000002@h
    addi    r0, r3, unk_10000002@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r31)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r31)
    li      r0, 0x0
    li      r4, 0x1
    stw     r0, 0x8(r5)
    stw     r0, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lbz     r0, R13Off_m0x7028(r13)
    extsb.  r0, r0
    bne-    branch_0x80052b6c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveDangoHamuKuriWait@ha
    stw     r0, R13Off_m0x7024(r13)
    addi    r0, r3, __vvt__23TNerveDangoHamuKuriWait@l
    lis     r4, __dt__23TNerveDangoHamuKuriWaitFv@ha
    stw     r0, R13Off_m0x7024(r13)
    lis     r3, unk_803f03dc@h
    addi    r5, r3, unk_803f03dc@l
    addi    r4, r4, __dt__23TNerveDangoHamuKuriWaitFv@l
    addi    r3, r13, R13Off_m0x7024
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7028(r13)
branch_0x80052b6c:
    lwz     r6, 0x8c(r31)
    li      r5, 0x0
    lis     r3, unk_10000010@h
    stw     r5, 0x8(r6)
    addi    r4, r13, R13Off_m0x7024
    addi    r0, r3, unk_10000010@l
    stw     r5, 0x20(r6)
    stw     r4, 0x14(r6)
    stw     r4, 0x18(r6)
    stw     r5, 0x1c(r6)
    stw     r0, 0x4c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__14TDangoHamuKuriFPCc
__ct__14TDangoHamuKuriFPCc: # 0x80052bac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__14TDangoHamuKuri@h
    addi    r3, r3, __vvt__14TDangoHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x218(r31)
    stw     r0, 0x228(r31)
    stw     r0, 0x22c(r31)
    stb     r0, 0x230(r31)
    stw     r0, 0x234(r31)
    stfs    f0, 0x21c(r31)
    stfs    f0, 0x220(r31)
    stfs    f0, 0x224(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isReachedToGoal__14THaneHamuKuri2CFv
isReachedToGoal__14THaneHamuKuri2CFv: # 0x80052c24
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80052c48
    addi    r5, r5, 0x10
    b       branch_0x80052c4c

branch_0x80052c48:
    addi    r5, r4, 0x4
branch_0x80052c4c:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(r3)
    addi    r3, sp, 0x14
    lfs     f2, 0x1c(sp)
    lfs     f0, -0x6eb4(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x18(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x6e50(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80052cb8
    li      r3, 0x1
    b       branch_0x80052cbc

branch_0x80052cb8:
    li      r3, 0x0
branch_0x80052cbc:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl walkBehavior__14THaneHamuKuri2Fif
walkBehavior__14THaneHamuKuri2Fif: # 0x80052ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    fmr     f31, f1
    stw     r31, 0x64(sp)
    mr      r31, r4
    stw     r30, 0x60(sp)
    mr      r30, r3
    lfs     f0, -0x6e80(r2)
    lwz     r5, 0x22c(r3)
    lfs     f1, 0x20c(r3)
    lfs     f3, 0x4a4(r5)
    fadds   f0, f1, f0
    lfs     f4, 0x490(r5)
    stfs    f0, 0x20c(r30)
    lfs     f0, 0x20c(r30)
    fcmpo   cr0, f0, f3
    ble-    branch_0x80052d20
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x20c(r30)
branch_0x80052d20:
    lwz     r3, 0x22c(r30)
    lfs     f1, 0x234(r30)
    lfs     f2, 0x47c(r3)
    fcmpo   cr0, f1, f2
    bge-    branch_0x80052d40
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x234(r30)
branch_0x80052d40:
    lfs     f1, 0x234(r30)
    fcmpo   cr0, f1, f2
    ble-    branch_0x80052d58
    lfs     f0, -0x6e80(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x234(r30)
branch_0x80052d58:
    lfs     f1, -0x6e44(r2)
    mr      r3, r30
    lfs     f0, 0x20c(r30)
    lfs     f2, -0x6e74(r2)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, R13Off_m0x5ea8(r13)
    fdivs   f0, f0, f3
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    fmuls   f0, f4, f0
    stfs    f0, 0x210(r30)
    lfs     f1, 0x230(r30)
    lfs     f0, 0x234(r30)
    lfs     f2, 0x210(r30)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x14(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x1bc(r3)
    mr      r3, r30
    stfs    f0, 0x144(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x30c(r3)
    stfs    f0, 0x140(r30)
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x80052e00
    li      r0, 0x1
    b       branch_0x80052e04

branch_0x80052e00:
    li      r0, 0x0
branch_0x80052e04:
    clrlwi. r0, r0, 24
    bne-    branch_0x80052e1c
    fmr     f1, f31
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x80052e1c:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl sendAttackMsgToMario__14THaneHamuKuri2Fv
sendAttackMsgToMario__14THaneHamuKuri2Fv: # 0x80052e38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      sendAttackMsgToMario__11TSmallEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__14THaneHamuKuri2Fv
reset__14THaneHamuKuri2Fv: # 0x80052e58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lfs     f0, -0x6e6c(r2)
    addi    r4, r31, 0xc4
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    stfs    f1, 0x230(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x234(r31)
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x21c(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x230(r31)
    lbz     r0, R13Off_m0x7018(r13)
    extsb.  r0, r0
    bne-    branch_0x80052f10
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__29TNerveHaneHamuKuriMoveOnGraph@ha
    stw     r0, R13Off_m0x7014(r13)
    addi    r0, r3, __vvt__29TNerveHaneHamuKuriMoveOnGraph@l
    lis     r4, __dt__29TNerveHaneHamuKuriMoveOnGraphFv@ha
    stw     r0, R13Off_m0x7014(r13)
    lis     r3, unk_803f0400@h
    addi    r5, r3, unk_803f0400@l
    addi    r4, r4, __dt__29TNerveHaneHamuKuriMoveOnGraphFv@l
    addi    r3, r13, R13Off_m0x7014
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7018(r13)
branch_0x80052f10:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x7014
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__14THaneHamuKuri2FPCc
__ct__14THaneHamuKuri2FPCc: # 0x80052f44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13THaneHamuKuri@h
    addi    r3, r3, __vvt__13THaneHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__14THaneHamuKuri2@h
    stw     r0, 0x20(r31)
    addi    r4, r3, __vvt__14THaneHamuKuri2@l
    addi    r0, r4, 0x24
    lfs     f0, -0x6eb4(r2)
    mr      r3, r31
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x21c(r31)
    stfs    f0, 0x230(r31)
    stfs    f0, 0x234(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13THaneHamuKuriFv
__dt__13THaneHamuKuriFv: # 0x80052fb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80053038
    lis     r3, __vvt__13THaneHamuKuri@h
    addi    r3, r3, __vvt__13THaneHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80053028
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80053028
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x80053028:
    extsh.  r0, r31
    ble-    branch_0x80053038
    mr      r3, r30
    bl      __dl__FPv
branch_0x80053038:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isCollidMove__13TDoroHaneKuriFP9THitActor
isCollidMove__13TDoroHaneKuriFP9THitActor: # 0x80053054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    lwz     r0, 0x4c(r4)
    clrrwi  r3, r0, 16
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x80053100
    mr      r3, r4
    bl      isHideObj__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x80053098
    li      r3, 0x0
    b       branch_0x80053104

branch_0x80053098:
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r31, r3
    bne-    branch_0x80053100
    lwz     r3, 0x94(r30)
    lwz     r0, 0x98(r30)
    lfs     f1, -0x6e3c(r2)
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x9c(r30)
    stw     r0, 0x2c(sp)
    lfs     f0, 0x24(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(sp)
    lfs     f0, 0x2c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x24(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0x2c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
branch_0x80053100:
    li      r3, 0x1
branch_0x80053104:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setBehavior__13TDoroHaneKuriFv
setBehavior__13TDoroHaneKuriFv: # 0x8005311c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r31, r3
    bne-    branch_0x800531cc
    lwz     r3, 0x6c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800531cc
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800531cc
    lwz     r3, 0x6c(r30)
    li      r31, 0x0
    stw     r31, 0x68(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r3)
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x14(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    stw     r31, 0x6c(r30)
branch_0x800531cc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl behaveToWater__13TDoroHaneKuriFP9THitActor
behaveToWater__13TDoroHaneKuriFP9THitActor: # 0x800531e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lfs     f0, -0x6e80(r2)
    stfs    f0, 0x21c(r3)
    lbz     r0, R13Off_m0x6ff8(r13)
    extsb.  r0, r0
    bne-    branch_0x80053244
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveDoroHaneHitWater@ha
    stw     r0, R13Off_m0x6ff4(r13)
    addi    r0, r3, __vvt__22TNerveDoroHaneHitWater@l
    lis     r4, __dt__22TNerveDoroHaneHitWaterFv@ha
    stw     r0, R13Off_m0x6ff4(r13)
    lis     r3, unk_803f0430@h
    addi    r5, r3, unk_803f0430@l
    addi    r4, r4, __dt__22TNerveDoroHaneHitWaterFv@l
    addi    r3, r13, R13Off_m0x6ff4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ff8(r13)
branch_0x80053244:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6ff4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800532f0
    lbz     r0, R13Off_m0x6ff8(r13)
    extsb.  r0, r0
    bne-    branch_0x80053298
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__22TNerveDoroHaneHitWater@ha
    stw     r0, R13Off_m0x6ff4(r13)
    addi    r0, r4, __vvt__22TNerveDoroHaneHitWater@l
    lis     r4, __dt__22TNerveDoroHaneHitWaterFv@ha
    stw     r0, R13Off_m0x6ff4(r13)
    lis     r5, unk_803f0430@h
    addi    r4, r4, __dt__22TNerveDoroHaneHitWaterFv@l
    addi    r5, r5, unk_803f0430@l
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ff8(r13)
branch_0x80053298:
    addi    r6, r13, R13Off_m0x6ff4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800532f0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800532e4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800532e4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800532e4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800532f0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setMActorAndKeeper__13TDoroHaneKuriFv
setMActorAndKeeper__13TDoroHaneKuriFv: # 0x80053304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8005333c
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8005333c:
    stw     r30, 0x78(r31)
    lis     r3, unk_803785ec@ha
    addi    r4, r3, unk_803785ec@l
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl attackToMario__13TDoroHaneKuriFv
attackToMario__13TDoroHaneKuriFv: # 0x80053370
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isWearingCap__6TMarioFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800533dc
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80053518
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2965
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80053518
    addi    r4, r31, 0x10
    li      r3, 0x2965
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80053518

branch_0x800533dc:
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80053518
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2965
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80053420
    addi    r4, r31, 0x10
    li      r3, 0x2965
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80053420:
    lbz     r0, R13Off_m0x7000(r13)
    extsb.  r0, r0
    bne-    branch_0x80053464
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveDoroHaneRise@ha
    stw     r0, R13Off_m0x6ffc(r13)
    addi    r0, r3, __vvt__18TNerveDoroHaneRise@l
    lis     r4, __dt__18TNerveDoroHaneRiseFv@ha
    stw     r0, R13Off_m0x6ffc(r13)
    lis     r3, unk_803f0424@h
    addi    r5, r3, unk_803f0424@l
    addi    r4, r4, __dt__18TNerveDoroHaneRiseFv@l
    addi    r3, r13, R13Off_m0x6ffc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7000(r13)
branch_0x80053464:
    addi    r6, r13, R13Off_m0x6ffc
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800534bc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800534b0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800534b0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800534b0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800534bc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    addi    r5, r31, 0x200
    lbz     r0, 0x1ac(r31)
    li      r4, 0xcd
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    li      r6, 0x0
    lfs     f1, 0x1c(r3)
    li      r7, 0x0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x200(r31)
    stfs    f1, 0x204(r31)
    stfs    f2, 0x208(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80053518:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl onHaveCap__13TDoroHaneKuriFv
onHaveCap__13TDoroHaneKuriFv: # 0x8005352c
    li      r0, 0x1
    stb     r0, 0x198(r3)
    lwz     r4, 0x70(r3)
    lwz     r4, 0x74(r4)
    stw     r3, 0x1c(r4)
    stw     r3, 0x10(r4)
    blr


.globl reset__13TDoroHaneKuriFv
reset__13TDoroHaneKuriFv: # 0x80053548
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x5
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x18c(r3)
    bl      reset__12TWalkerEnemyFv
    lfs     f0, -0x6e6c(r2)
    addi    r4, r31, 0xc4
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    li      r0, 0x0
    stfs    f1, 0x230(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x234(r31)
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x21c(r31)
    stb     r0, 0x198(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x400
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__13TDoroHaneKuriFP12TLiveManager
init__13TDoroHaneKuriFP12TLiveManager: # 0x800535d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r29, unk_10000002@h
    addi    r0, r29, unk_10000002@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r31)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r31)
    li      r30, 0x0
    li      r4, 0x1
    stw     r30, 0x8(r5)
    stw     r30, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r30, 0x1c(r5)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r31)
    addi    r0, r29, 0xf
    stw     r30, 0x8(r4)
    stw     r30, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    mr      r3, r31
    stw     r30, 0x1c(r4)
    stw     r0, 0x4c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x22c(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x188(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r31)
    addi    r0, r29, 0x37
    stw     r30, 0x8(r4)
    stw     r30, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    mr      r3, r31
    stw     r30, 0x1c(r4)
    stw     r0, 0x4c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x238(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x188(r31)
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80053794
    lis     r3, unk_8037869c@ha
    lwz     r30, 0x70(r31)
    addi    r3, r3, unk_8037869c@l
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80053724
    addi    r3, r29, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x80053724:
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80053768
    lwz     r4, 0x18(r30)
    addi    r6, r28, 0x0
    addi    r3, r27, 0x0
    lwz     r29, 0x0(r4)
    li      r5, 0x7
    li      r7, 0x3
    addi    r4, r29, 0x0
    addi    r8, r2, R2Off_m0x6e5c
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
    lis     r3, __vvt__9TDoroHige@h
    addi    r0, r3, __vvt__9TDoroHige@l
    stw     r0, 0x0(r27)
    stw     r29, 0x1c(r27)
branch_0x80053768:
    stw     r27, 0x74(r30)
    li      r29, 0x0
    b       branch_0x80053778

branch_0x80053774:
    addi    r29, r29, 0x1
branch_0x80053778:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x80053774
branch_0x80053794:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __ct__13TDoroHaneKuriFPCc
__ct__13TDoroHaneKuriFPCc: # 0x800537a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13THaneHamuKuri@h
    addi    r3, r3, __vvt__13THaneHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__13TDoroHaneKuri@h
    stw     r0, 0x20(r31)
    addi    r5, r3, __vvt__13TDoroHaneKuri@l
    addi    r4, r5, 0x24
    lfs     f0, -0x6eb4(r2)
    li      r0, 0x5
    addi    r3, r31, 0x0
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x21c(r31)
    stfs    f0, 0x230(r31)
    stfs    f0, 0x234(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stb     r0, 0x1ac(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__13THaneHamuKuriCFv
getBasNameTable__13THaneHamuKuriCFv: # 0x80053824
    lis     r3, hanekuri_bastable@ha
    addi    r3, r3, hanekuri_bastable@l
    blr


.globl isHitValid__13THaneHamuKuriFUl
isHitValid__13THaneHamuKuriFUl: # 0x80053830
    lwz     r5, 0xf0(r3)
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x80053844
    li      r3, 0x0
    blr

branch_0x80053844:
    cmplwi  r4, 0xb
    bne-    branch_0x80053854
    ori     r0, r5, 0x2
    stw     r0, 0xf0(r3)
branch_0x80053854:
    li      r3, 0x1
    blr


.globl isCollidMove__13THaneHamuKuriFP9THitActor
isCollidMove__13THaneHamuKuriFP9THitActor: # 0x8005385c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      isCollidMove__11TSmallEnemyFP9THitActor
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDeadAnm__13THaneHamuKuriFv
setDeadAnm__13THaneHamuKuriFv: # 0x8005387c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80053924
    lwz     r3, 0x6c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80053924
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80053924
    lwz     r3, 0x6c(r30)
    li      r31, 0x0
    stw     r31, 0x68(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r3)
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x14(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    stw     r31, 0x6c(r30)
branch_0x80053924:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl setBckAnm__13THaneHamuKuriFi
setBckAnm__13THaneHamuKuriFi: # 0x80053954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setBckAnm__11TSmallEnemyFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setCrashAnm__13THaneHamuKuriFv
setCrashAnm__13THaneHamuKuriFv: # 0x80053974
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToWater__13THaneHamuKuriFP9THitActor
behaveToWater__13THaneHamuKuriFP9THitActor: # 0x800539a4
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r7, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x14
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r6, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x1c(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setRollAnm__13THaneHamuKuriFv
setRollAnm__13THaneHamuKuriFv: # 0x800539e8
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setRunAnm__13THaneHamuKuriFv
setRunAnm__13THaneHamuKuriFv: # 0x80053a18
    mflr    r0
    li      r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWalkAnm__13THaneHamuKuriFv
setWalkAnm__13THaneHamuKuriFv: # 0x80053a48
    mflr    r0
    li      r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWaitAnm__13THaneHamuKuriFv
setWaitAnm__13THaneHamuKuriFv: # 0x80053a78
    mflr    r0
    li      r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMActorAndKeeper__13THaneHamuKuriFv
setMActorAndKeeper__13THaneHamuKuriFv: # 0x80053aa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80053ae0
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80053ae0:
    stw     r30, 0x78(r31)
    lis     r3, unk_803785dc@ha
    addi    r4, r3, unk_803785dc@l
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl attackToMario__13THaneHamuKuriFv
attackToMario__13THaneHamuKuriFv: # 0x80053b14
    mflr    r0
    li      r4, 0x2965
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80053b5c
    addi    r4, r31, 0x10
    li      r3, 0x2965
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80053b5c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isReachedToGoal__13THaneHamuKuriCFv
isReachedToGoal__13THaneHamuKuriCFv: # 0x80053b84
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80053ba8
    addi    r5, r5, 0x10
    b       branch_0x80053bac

branch_0x80053ba8:
    addi    r5, r4, 0x4
branch_0x80053bac:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(r3)
    addi    r3, sp, 0x14
    lfs     f2, 0x1c(sp)
    lfs     f0, -0x6eb4(r2)
    fsubs   f1, f2, f1
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x18(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x6e68(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80053c18
    li      r3, 0x1
    b       branch_0x80053c1c

branch_0x80053c18:
    li      r3, 0x0
branch_0x80053c1c:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl bind__13THaneHamuKuriFv
bind__13THaneHamuKuriFv: # 0x80053c2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80053df8
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x38(sp)
    lfs     f1, 0x234(r31)
    lfs     f0, 0x210(r31)
    lfs     f2, 0x34(sp)
    fadds   f0, f1, f0
    fsubs   f0, f2, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb0(r31)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80053d10
    stfs    f1, 0xb0(r31)
branch_0x80053d10:
    lfs     f1, -0x6eb4(r2)
    lfs     f0, 0x214(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80053d5c
    lfs     f1, 0x34(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lfs     f2, -0x6e6c(r2)
    fadds   f0, f1, f0
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x30(sp)
    lfs     f3, 0x38(sp)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
branch_0x80053d5c:
    lfs     f1, -0x6e38(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x34(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80053d98
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    b       branch_0x80053da4

branch_0x80053d98:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x80053da4:
    lwz     r0, 0x30(sp)
    addi    r3, sp, 0x10
    lwz     r5, 0x34(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x10(sp)
    lwz     r0, 0x38(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    lfs     f1, 0x234(r31)
    lfs     f0, 0x210(r31)
    lfs     f2, 0x98(r31)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x98(r31)
branch_0x80053df8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl walkBehavior__13THaneHamuKuriFif
walkBehavior__13THaneHamuKuriFif: # 0x80053e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stfd    f31, 0x188(sp)
    stfd    f30, 0x180(sp)
    stfd    f29, 0x178(sp)
    stfd    f28, 0x170(sp)
    fmr     f28, f1
    stw     r31, 0x16c(sp)
    stw     r30, 0x168(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x164(sp)
    mr      r29, r3
    stw     r28, 0x160(sp)
    lbz     r0, R13Off_m0x7050(r13)
    lwz     r6, 0x22c(r3)
    lis     r3, unk_803f03a0@h
    cmplwi  r0, 0x0
    lfs     f31, 0x47c(r6)
    addi    r31, r3, unk_803f03a0@l
    beq-    branch_0x80053ed8
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80053e74
    li      r0, 0x1
    b       branch_0x80053e78

branch_0x80053e74:
    li      r0, 0x0
branch_0x80053e78:
    cmpwi   r0, 0x0
    bne-    branch_0x800544cc
    cmpwi   r30, 0x2
    lfs     f2, 0x454(r6)
    bne-    branch_0x80053e90
    lfs     f2, 0x468(r6)
branch_0x80053e90:
    lfs     f1, -0x6eb4(r2)
    lfs     f0, -0x6eb0(r2)
    stfs    f1, 0x148(sp)
    stfs    f2, 0x14c(sp)
    stfs    f1, 0x150(sp)
    lfs     f1, 0x14(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r29)
    lwz     r3, 0x148(sp)
    lwz     r0, 0x14c(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x150(sp)
    stw     r0, 0xb4(r29)
    b       branch_0x800544cc

branch_0x80053ed8:
    lfs     f0, 0x21c(r29)
    lfs     f1, -0x6eb4(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80053fb8
    lfs     f0, 0x214(r29)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80053f48
    lfs     f2, 0x230(r29)
    lfs     f1, 0xc8(r29)
    lfs     f0, -0x6ea4(r2)
    fsubs   f3, f2, f1
    fabs    f3, f3
    fcmpo   cr0, f3, f0
    ble-    branch_0x80053f48
    fsubs   f1, f1, f2
    lfs     f0, -0x6e34(r2)
    fdivs   f0, f1, f0
    stfs    f0, 0x214(r29)
    lfs     f1, 0x214(r29)
    lfs     f0, -0x6eb0(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80053f34
    stfs    f0, 0x214(r29)
branch_0x80053f34:
    lfs     f1, 0x214(r29)
    lfs     f0, -0x6e30(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80053f48
    stfs    f0, 0x214(r29)
branch_0x80053f48:
    lfs     f1, 0x214(r29)
    lfs     f2, -0x6eb4(r2)
    fcmpo   cr0, f1, f2
    ble-    branch_0x80053f78
    lfs     f0, 0x230(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x230(r29)
    lfs     f1, 0x230(r29)
    lfs     f0, 0xc8(r29)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80053f78
    stfs    f2, 0x214(r29)
branch_0x80053f78:
    lfs     f1, 0x214(r29)
    lfs     f2, -0x6eb4(r2)
    fcmpo   cr0, f1, f2
    bge-    branch_0x80053fb8
    lfs     f0, 0x230(r29)
    fadds   f0, f0, f1
    stfs    f0, 0x230(r29)
    lfs     f1, 0x230(r29)
    lfs     f0, 0xc8(r29)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80053fb8
    stfs    f2, 0x214(r29)
    lfs     f1, -0x6e80(r2)
    lfs     f0, 0xc8(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x230(r29)
branch_0x80053fb8:
    lwz     r5, 0x22c(r29)
    lwz     r3, 0x8c(r29)
    lfs     f29, 0x490(r5)
    lfs     f30, 0x4a4(r5)
    lwz     r28, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r28, r3
    beq-    branch_0x80054040
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r28, r3
    beq-    branch_0x80054040
    lbz     r0, R13Off_m0x6ff0(r13)
    extsb.  r0, r0
    bne-    branch_0x8005402c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveDoroHanePrepareAttack@ha
    stw     r0, R13Off_m0x6fec(r13)
    addi    r0, r3, __vvt__27TNerveDoroHanePrepareAttack@l
    lis     r3, __dt__27TNerveDoroHanePrepareAttackFv@ha
    stw     r0, R13Off_m0x6fec(r13)
    addi    r4, r3, __dt__27TNerveDoroHanePrepareAttackFv@l
    addi    r3, r13, R13Off_m0x6fec
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ff0(r13)
branch_0x8005402c:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x6fec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80054444
branch_0x80054040:
    lfs     f0, 0x21c(r29)
    lfs     f2, -0x6eb4(r2)
    fcmpu   cr0, f0, f2
    bne-    branch_0x800540a0
    lfs     f1, 0x20c(r29)
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x20c(r29)
    lfs     f0, 0x20c(r29)
    fcmpo   cr0, f0, f30
    ble-    branch_0x80054070
    stfs    f2, 0x20c(r29)
branch_0x80054070:
    lfs     f1, 0x234(r29)
    fcmpo   cr0, f1, f31
    bge-    branch_0x80054088
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x234(r29)
branch_0x80054088:
    lfs     f1, 0x234(r29)
    fcmpo   cr0, f1, f31
    ble-    branch_0x800540a0
    lfs     f0, -0x6e80(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x234(r29)
branch_0x800540a0:
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r28, r3
    beq-    branch_0x800540c8
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r28, r3
    bne-    branch_0x80054460
branch_0x800540c8:
    lfs     f1, 0x21c(r29)
    lfs     f0, -0x6eb4(r2)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80054370
    lfs     f2, -0x6ea0(r2)
    addi    r4, r29, 0xc4
    lfs     f1, 0xc0(r29)
    lfs     f0, 0x14(r29)
    lwz     r3, R13Off_m0x6328(r13)
    fmadds  f2, f2, f1, f0
    lfs     f1, 0x10(r29)
    lfs     f3, 0x18(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r29)
    lfs     f0, 0x230(r29)
    lfs     f2, 0x234(r29)
    lfs     f3, 0x210(r29)
    fadds   f1, f0, f2
    lfs     f0, 0xc8(r29)
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800541e0
    lfs     f0, -0x6ec4(r2)
    li      r30, 0x3
    fsubs   f0, f2, f0
    stfs    f0, 0x234(r29)
    lfs     f0, 0xc8(r29)
    stfs    f0, 0x230(r29)
    lfs     f4, -0x6eb4(r2)
    stfs    f4, 0x210(r29)
    stfs    f4, 0x214(r29)
    stfs    f4, 0x20c(r29)
    lfs     f2, 0x234(r29)
    lfs     f1, 0x210(r29)
    lfs     f0, -0x6e6c(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005419c
    lfs     f3, -0x6e98(r2)
    lfs     f2, 0x148(r29)
    lfs     f1, -0x6e2c(r2)
    lfs     f0, 0x28(r29)
    fmuls   f2, f3, f2
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x80054188
    fmr     f0, f2
    b       branch_0x80054194

branch_0x80054188:
    fcmpo   cr0, f0, f4
    bge-    branch_0x80054194
    fmr     f0, f4
branch_0x80054194:
    stfs    f0, 0x28(r29)
    b       branch_0x80054460

branch_0x8005419c:
    lfs     f2, -0x6e98(r2)
    lfs     f3, 0x148(r29)
    lfs     f1, -0x6e28(r2)
    lfs     f0, 0x24(r29)
    fmuls   f4, f2, f3
    lfs     f2, -0x6ec0(r2)
    fmuls   f1, f1, f0
    fmuls   f0, f2, f3
    fcmpo   cr0, f1, f4
    ble-    branch_0x800541cc
    fmr     f1, f4
    b       branch_0x800541d8

branch_0x800541cc:
    fcmpo   cr0, f1, f0
    bge-    branch_0x800541d8
    fmr     f1, f0
branch_0x800541d8:
    stfs    f1, 0x28(r29)
    b       branch_0x80054460

branch_0x800541e0:
    lfs     f0, -0x6eb4(r2)
    addi    r5, r29, 0x10
    li      r4, 0x14
    stfs    f0, 0x21c(r29)
    li      r6, 0x0
    li      r7, 0x0
    stfs    f0, 0x214(r29)
    stfs    f0, 0x210(r29)
    stfs    f0, 0x234(r29)
    stfs    f0, 0x20c(r29)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x180e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80054254
    addi    r4, r29, 0x10
    li      r3, 0x180e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80054254:
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6eb4(r2)
    stw     r3, 0x124(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x128(sp)
    stfs    f0, 0x12c(sp)
    stfs    f0, 0x130(sp)
    beq-    branch_0x8005428c
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x128(sp)
    stfs    f1, 0x12c(sp)
    stfs    f2, 0x130(sp)
branch_0x8005428c:
    lwz     r3, 0x124(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r29)
    lwz     r4, 0x128(sp)
    lwz     r3, 0x12c(sp)
    stw     r4, 0xf8(r29)
    stw     r3, 0xfc(r29)
    lwz     r3, 0x130(sp)
    stw     r3, 0x100(r29)
    lwz     r3, 0x124(sp)
    stw     r3, 0x104(r29)
    lwz     r4, 0x128(sp)
    lwz     r3, 0x12c(sp)
    stw     r4, 0x108(r29)
    stw     r3, 0x10c(r29)
    lwz     r3, 0x130(sp)
    stw     r3, 0x110(r29)
    stw     r0, 0x118(r29)
    lbz     r0, R13Off_m0x7020(r13)
    extsb.  r0, r0
    bne-    branch_0x80054314
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveHaneHamuKuriUpWait@ha
    stw     r0, R13Off_m0x701c(r13)
    addi    r0, r3, __vvt__24TNerveHaneHamuKuriUpWait@l
    lis     r3, __dt__24TNerveHaneHamuKuriUpWaitFv@ha
    stw     r0, R13Off_m0x701c(r13)
    addi    r4, r3, __dt__24TNerveHaneHamuKuriUpWaitFv@l
    addi    r3, r13, R13Off_m0x701c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7020(r13)
branch_0x80054314:
    addi    r6, r13, R13Off_m0x701c
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80054460
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80054360
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80054360
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80054360:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x80054460

branch_0x80054370:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80054460
    lfs     f0, -0x6eb0(r2)
    lfs     f1, 0x234(r29)
    fsubs   f0, f31, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x80054460
    lfs     f0, -0x6e80(r2)
    stfs    f0, 0x21c(r29)
    lbz     r0, R13Off_m0x6ff0(r13)
    extsb.  r0, r0
    bne-    branch_0x800543e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__27TNerveDoroHanePrepareAttack@ha
    stw     r0, R13Off_m0x6fec(r13)
    addi    r0, r3, __vvt__27TNerveDoroHanePrepareAttack@l
    lis     r3, __dt__27TNerveDoroHanePrepareAttackFv@ha
    stw     r0, R13Off_m0x6fec(r13)
    addi    r4, r3, __dt__27TNerveDoroHanePrepareAttackFv@l
    addi    r3, r13, R13Off_m0x6fec
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ff0(r13)
branch_0x800543e8:
    addi    r6, r13, R13Off_m0x6fec
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80054460
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80054434
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80054434
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80054434:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x80054460

branch_0x80054444:
    lfs     f1, 0x234(r29)
    lfs     f0, -0x6eb4(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80054460
    lfs     f0, -0x6e80(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x234(r29)
branch_0x80054460:
    lfs     f1, 0x21c(r29)
    lfs     f0, -0x6eb4(r2)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800544b4
    lfs     f1, -0x6e44(r2)
    lfs     f0, 0x20c(r29)
    lfs     f2, -0x6e74(r2)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r4, R13Off_m0x5ea8(r13)
    fdivs   f0, f0, f30
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x158(sp)
    lwz     r3, 0x15c(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f29, f0
    stfs    f0, 0x210(r29)
branch_0x800544b4:
    lfs     f1, 0x230(r29)
    lfs     f0, 0x234(r29)
    lfs     f2, 0x210(r29)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x14(r29)
branch_0x800544cc:
    lbz     r0, R13Off_m0x7020(r13)
    extsb.  r0, r0
    bne-    branch_0x8005450c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveHaneHamuKuriUpWait@ha
    stw     r0, R13Off_m0x701c(r13)
    addi    r0, r3, __vvt__24TNerveHaneHamuKuriUpWait@l
    lis     r3, __dt__24TNerveHaneHamuKuriUpWaitFv@ha
    stw     r0, R13Off_m0x701c(r13)
    addi    r4, r3, __dt__24TNerveHaneHamuKuriUpWaitFv@l
    addi    r3, r13, R13Off_m0x701c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7020(r13)
branch_0x8005450c:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x701c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80054538
    lfs     f1, 0x234(r29)
    fcmpo   cr0, f1, f31
    bge-    branch_0x80054538
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x234(r29)
branch_0x80054538:
    lwz     r5, 0x10(r29)
    addi    r3, sp, 0x94
    lwz     r0, 0x14(r29)
    addi    r4, r29, 0x220
    stw     r5, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x9c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x94(sp)
    addi    r3, sp, 0x134
    lwz     r5, 0x98(sp)
    mr      r4, r3
    stw     r0, 0x134(sp)
    lwz     r0, 0x9c(sp)
    stw     r5, 0x138(sp)
    stw     r0, 0x13c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lbz     r0, R13Off_m0x7020(r13)
    extsb.  r0, r0
    bne-    branch_0x800545c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveHaneHamuKuriUpWait@ha
    stw     r0, R13Off_m0x701c(r13)
    addi    r0, r3, __vvt__24TNerveHaneHamuKuriUpWait@l
    lis     r3, __dt__24TNerveHaneHamuKuriUpWaitFv@ha
    stw     r0, R13Off_m0x701c(r13)
    addi    r4, r3, __dt__24TNerveHaneHamuKuriUpWaitFv@l
    addi    r3, r13, R13Off_m0x701c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7020(r13)
branch_0x800545c0:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x701c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800545e4
    lfs     f1, 0x30(r29)
    lfs     f0, -0x6e28(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x30(r29)
branch_0x800545e4:
    addi    r3, sp, 0x10c
    addi    r4, sp, 0x134
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x114(sp)
    stfs    f0, 0x38(r29)
    lfs     f1, 0x21c(r29)
    lfs     f0, -0x6eb4(r2)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80054638
    lwz     r0, 0x15c(r29)
    cmpwi   r0, 0x4
    bne-    branch_0x8005461c
    li      r0, 0x1
    b       branch_0x80054620

branch_0x8005461c:
    li      r0, 0x0
branch_0x80054620:
    clrlwi. r0, r0, 24
    bne-    branch_0x80054638
    fmr     f1, f28
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x80054638:
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x220(r29)
    stw     r0, 0x224(r29)
    lwz     r0, 0x18(r29)
    stw     r0, 0x228(r29)
    lfs     f0, 0x34(r29)
    stfs    f0, 0x218(r29)
    lfs     f1, 0x21c(r29)
    lfs     f0, -0x6eb4(r2)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8005467c
    lfs     f0, 0x14(r29)
    lfs     f1, 0xc8(r29)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8005467c
    stfs    f1, 0x14(r29)
branch_0x8005467c:
    lwz     r0, 0x194(sp)
    lfd     f31, 0x188(sp)
    lfd     f30, 0x180(sp)
    mtlr    r0
    lfd     f29, 0x178(sp)
    lfd     f28, 0x170(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    lwz     r29, 0x164(sp)
    lwz     r28, 0x160(sp)
    addi    sp, sp, 0x190
    blr


.globl reset__13THaneHamuKuriFv
reset__13THaneHamuKuriFv: # 0x800546ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lfs     f0, -0x6e6c(r2)
    addi    r4, r31, 0xc4
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    stfs    f1, 0x230(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x234(r31)
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x21c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl moveObject__13THaneHamuKuriFv
moveObject__13THaneHamuKuriFv: # 0x80054720
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      moveObject__12TWalkerEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__13THaneHamuKuriFP12TLiveManager
init__13THaneHamuKuriFP12TLiveManager: # 0x80054740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r30, unk_10000002@h
    addi    r0, r30, unk_10000002@l
    stw     r0, 0x4c(r29)
    li      r0, 0x11
    addi    r3, r29, 0x0
    stw     r0, 0x150(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r29)
    lwz     r0, 0x64(r29)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r29)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r29)
    li      r31, 0x0
    li      r4, 0x1
    stw     r31, 0x8(r5)
    stw     r31, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r31, 0x1c(r5)
    lwz     r3, 0x74(r29)
    bl      setLightType__6MActorFi
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r29)
    addi    r0, r30, 0xf
    stw     r31, 0x8(r4)
    stw     r31, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    mr      r3, r29
    stw     r31, 0x1c(r4)
    stw     r0, 0x4c(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x22c(r29)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x188(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__13THaneHamuKuriFPCc
__ct__13THaneHamuKuriFPCc: # 0x80054824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13THaneHamuKuri@h
    addi    r3, r3, __vvt__13THaneHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x20c(r31)
    stfs    f0, 0x210(r31)
    stfs    f0, 0x214(r31)
    stfs    f0, 0x21c(r31)
    stfs    f0, 0x230(r31)
    stfs    f0, 0x234(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b: # 0x80054884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r5
    stw     r30, 0xa8(sp)
    mr      r30, r3
    stw     r29, 0xa4(sp)
    lfs     f1, 0x10(r3)
    addi    r3, sp, 0x90
    lfs     f0, 0x0(r4)
    lfs     f2, 0x8(r4)
    mr      r4, r3
    fsubs   f1, f1, f0
    lfs     f3, 0x18(r30)
    lfs     f0, -0x6eb0(r2)
    stfs    f1, 0x90(sp)
    fsubs   f1, f3, f2
    stfs    f0, 0x94(sp)
    stfs    f1, 0x98(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r29, r3
    bne-    branch_0x80054930
    lwz     r4, 0x1f4(r30)
    addi    r3, sp, 0x58
    lwz     r0, 0x90(sp)
    lfs     f1, 0x350(r4)
    lwz     r4, 0x94(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x98(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    b       branch_0x80054970

branch_0x80054930:
    lwz     r4, 0x1f4(r30)
    addi    r3, sp, 0x4c
    lwz     r0, 0x90(sp)
    lfs     f1, 0x33c(r4)
    lwz     r4, 0x94(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x98(sp)
    stw     r4, 0x50(sp)
    stw     r0, 0x54(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x50(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
branch_0x80054970:
    lwz     r3, 0xf0(r30)
    clrlwi. r0, r31, 24
    ori     r0, r3, 0x80
    stw     r0, 0xf0(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6eb0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    beq-    branch_0x800549a4
    lwz     r3, 0x1f4(r30)
    lfs     f0, 0x364(r3)
    stfs    f0, 0x94(sp)
    b       branch_0x800549b8

branch_0x800549a4:
    lwz     r3, 0x1f4(r30)
    li      r0, 0x1
    lfs     f0, 0x3dc(r3)
    stfs    f0, 0x94(sp)
    stb     r0, 0x1a4(r30)
branch_0x800549b8:
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x98(sp)
    stw     r0, 0xb4(r30)
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80054a14
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r4, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    lis     r3, unk_803f03ac@h
    addi    r5, r3, unk_803f03ac@l
    addi    r4, r4, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80054a14:
    addi    r6, r13, R13Off_m0x7044
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80054a6c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80054a60
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80054a60
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80054a60:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80054a6c:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl isCollidMove__9THamuKuriFP9THitActor
isCollidMove__9THamuKuriFP9THitActor: # 0x80054a88
    mflr    r0
    lis     r5, unk_803f03a0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    addi    r31, r5, unk_803f03a0@l
    stw     r30, 0xe0(sp)
    mr      r30, r4
    stw     r29, 0xdc(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xd8(sp)
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf800
    cmplwi  r0, 0x13
    bne-    branch_0x80054acc
    li      r0, 0x1
    b       branch_0x80054ad0

branch_0x80054acc:
    li      r0, 0x0
branch_0x80054ad0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80054b48
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80054b18
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r3, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r4, r3, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80054b18:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x7044
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80054b48
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80054b48:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x2
    bne-    branch_0x80054b60
    li      r0, 0x1
    b       branch_0x80054b64

branch_0x80054b60:
    li      r0, 0x0
branch_0x80054b64:
    clrlwi. r0, r0, 24
    bne-    branch_0x80054bcc
    addis   r0, r3, 0xf000
    cmplwi  r0, 0xf
    bne-    branch_0x80054b80
    li      r0, 0x1
    b       branch_0x80054b84

branch_0x80054b80:
    li      r0, 0x0
branch_0x80054b84:
    clrlwi. r0, r0, 24
    bne-    branch_0x80054bcc
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x13
    bne-    branch_0x80054ba0
    li      r0, 0x1
    b       branch_0x80054ba4

branch_0x80054ba0:
    li      r0, 0x0
branch_0x80054ba4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80054bcc
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x11
    bne-    branch_0x80054bc0
    li      r0, 0x1
    b       branch_0x80054bc4

branch_0x80054bc0:
    li      r0, 0x0
branch_0x80054bc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80054d38
branch_0x80054bcc:
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80054c0c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r3, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r4, r3, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80054c0c:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7044
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80054c28
    li      r0, 0x1
    b       branch_0x80054c2c

branch_0x80054c28:
    li      r0, 0x0
branch_0x80054c2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80054d38
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r28, r3
    beq-    branch_0x80054d38
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80054c88
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r3, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r4, r3, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80054c88:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x7044
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80054d38
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x80054cdc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    lis     r3, __dt__21TNerveHamuKuriWallDieFv@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r4, r3, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r3, r13, R13Off_m0x703c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x80054cdc:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x703c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80054d38
    mr      r3, r29
    bl      isHitWallInBound__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80054d38
    li      r0, 0x1
    stb     r0, 0x1a3(r29)
    addi    r4, sp, 0xb8
    addi    r3, r29, 0x0
    lwz     r6, 0x10(r30)
    li      r5, 0x0
    lwz     r0, 0x14(r30)
    stw     r6, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xc0(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
    li      r3, 0x0
    b       branch_0x80054f20

branch_0x80054d38:
    lwz     r4, 0x4c(r30)
    clrrwi  r3, r4, 16
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x80054ec0
    lis     r3, unk_40000390@h
    addi    r0, r3, unk_40000390@l
    cmplw   r4, r0
    blt-    branch_0x80054ec0
    addi    r0, r3, 0x394
    cmplw   r4, r0
    bgt-    branch_0x80054ec0
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f0, -0x6ea0(r2)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xd0(sp)
    lfs     f1, 0xcc(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80054ec0
    lfs     f1, 0xc8(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bgt-    branch_0x80054db4
    lfs     f1, 0xd0(sp)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80054ec0
branch_0x80054db4:
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80054df4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80054df4:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x702c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80054ec0
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80054e1c
    li      r0, 0x1
    b       branch_0x80054e20

branch_0x80054e1c:
    li      r0, 0x0
branch_0x80054e20:
    cmpwi   r0, 0x0
    bne-    branch_0x80054ec0
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x80054e68
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x80054e68:
    addi    r6, r13, R13Off_m0x702c
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80054ec0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80054eb4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80054eb4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80054eb4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80054ec0:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      isCollidMove__11TSmallEnemyFP9THitActor
    clrlwi. r0, r3, 24
    bne-    branch_0x80054edc
    li      r3, 0x0
    b       branch_0x80054f20

branch_0x80054edc:
    lwz     r3, 0x70(r29)
    lwz     r4, 0x4c(r30)
    lwz     r0, 0x60(r3)
    cmplw   r4, r0
    bne-    branch_0x80054ef8
    li      r0, 0x1
    b       branch_0x80054efc

branch_0x80054ef8:
    li      r0, 0x0
branch_0x80054efc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80054f0c
    li      r3, 0x1
    b       branch_0x80054f20

branch_0x80054f0c:
    li      r0, 0x1
    stb     r0, 0x1a0(r29)
    li      r0, 0x0
    li      r3, 0x0
    stw     r0, 0x1f8(r29)
branch_0x80054f20:
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0xe8
    blr


.globl isHitValid__9THamuKuriFUl
isHitValid__9THamuKuriFUl: # 0x80054f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r31, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80054f68
    li      r0, 0x1
    b       branch_0x80054f6c

branch_0x80054f68:
    li      r0, 0x0
branch_0x80054f6c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80055040
    lwz     r26, 0x70(r31)
    li      r29, 0x0
    addi    r30, r29, 0x0
    lwz     r3, 0x38(r26)
    li      r27, 0x1
    lwz     r28, 0x404(r3)
    b       branch_0x80054fdc

branch_0x80054f90:
    lwz     r3, 0x18(r26)
    lwzx    r3, r3, r30
    cmplw   r3, r31
    beq-    branch_0x80054fd4
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80054fb4
    li      r0, 0x1
    b       branch_0x80054fb8

branch_0x80054fb4:
    li      r0, 0x0
branch_0x80054fb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80054fd4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
branch_0x80054fd4:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x80054fdc:
    lwz     r3, 0x38(r26)
    cmplwi  r3, 0x0
    bne-    branch_0x80054ff0
    lwz     r3, 0x14(r26)
    b       branch_0x80055008

branch_0x80054ff0:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r26)
    cmpw    r0, r3
    ble-    branch_0x80055004
    b       branch_0x80055008

branch_0x80055004:
    mr      r3, r0
branch_0x80055008:
    cmpw    r29, r3
    blt+    branch_0x80054f90
    cmpw    r27, r28
    blt-    branch_0x80055038
    lis     r4, unk_20000005@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_20000005@l
    lfs     f2, 0x14(r31)
    li      r5, 0x1
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x80055038:
    li      r3, 0x1
    b       branch_0x80055068

branch_0x80055040:
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80055054
    li      r3, 0x0
    b       branch_0x80055068

branch_0x80055054:
    cmplwi  r4, 0xb
    bne-    branch_0x80055064
    ori     r0, r3, 0x2
    stw     r0, 0xf0(r31)
branch_0x80055064:
    li      r3, 0x1
branch_0x80055068:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl isResignationAttack__9THamuKuriFv
isResignationAttack__9THamuKuriFv: # 0x8005507c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r3, 0x104(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800550a4
    addi    r4, r3, 0x10
    b       branch_0x800550a8

branch_0x800550a4:
    addi    r4, r31, 0x108
branch_0x800550a8:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x30(sp)
    lfs     f2, 0x34(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x194(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80055134
    lwz     r4, 0x1f4(r31)
    li      r3, 0x1
    lfs     f0, 0x11c(r4)
    stfs    f0, 0x194(r31)
    b       branch_0x80055154

branch_0x80055134:
    lbz     r0, 0x1a2(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80055150
    li      r0, 0x0
    stb     r0, 0x1a2(r31)
    li      r3, 0x1
    b       branch_0x80055154

branch_0x80055150:
    li      r3, 0x0
branch_0x80055154:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getTakingMtx__9THamuKuriFv
getTakingMtx__9THamuKuriFv: # 0x80055168
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r3
    addi    r4, r30, 0xc4
    lfs     f2, 0x14(r30)
    lfs     f0, 0xc0(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f2, f0
    lfs     f1, 0x10(r30)
    lfs     f3, 0x18(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r4, 0x6c(r30)
    fmr     f31, f1
    addi    r3, sp, 0x8c
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lfs     f29, 0x18(r30)
    lfs     f30, 0x10(r30)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f30, 0x98(sp)
    addi    r3, sp, 0x5c
    lfs     f1, -0x6eb4(r2)
    stfs    f31, 0xa8(sp)
    fmr     f2, f1
    fmr     f3, f1
    stfs    f29, 0xb8(sp)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, sp, 0x8c
    addi    r5, r3, 0x0
    addi    r4, sp, 0x5c
    bl      PSMTXConcat
    lfs     f1, -0x6e80(r2)
    addi    r31, r30, 0x1b0
    addi    r4, r31, 0x0
    stfs    f1, 0x1b0(r30)
    addi    r5, r31, 0x0
    addi    r3, sp, 0x8c
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x1b4(r30)
    stfs    f0, 0x1b8(r30)
    stfs    f0, 0x1c0(r30)
    stfs    f1, 0x1c4(r30)
    stfs    f0, 0x1c8(r30)
    stfs    f0, 0x1d0(r30)
    stfs    f0, 0x1d4(r30)
    stfs    f1, 0x1d8(r30)
    bl      PSMTXConcat
    lwz     r0, 0xe4(sp)
    mr      r3, r31
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    addi    sp, sp, 0xe0
    blr


.globl getBasNameTable__9THamuKuriCFv
getBasNameTable__9THamuKuriCFv: # 0x80055268
    lis     r3, hamukurianm_bastable@ha
    addi    r3, r3, hamukurianm_bastable@l
    blr


.globl initAttacker__9THamuKuriFP9THitActor
initAttacker__9THamuKuriFP9THitActor: # 0x80055274
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initAttacker__12TWalkerEnemyFP9THitActor
    bl      theNerve__22TNerveWalkerTraceMarioFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x800552e4
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800552d8
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800552d8
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800552d8:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x800552e4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl walkBehavior__9THamuKuriFif
walkBehavior__9THamuKuriFif: # 0x800552f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x80055318
    li      r0, 0x1
    b       branch_0x8005531c

branch_0x80055318:
    li      r0, 0x0
branch_0x8005531c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80055328
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x80055328:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setCrashAnm__9THamuKuriFv
setCrashAnm__9THamuKuriFv: # 0x80055338
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800553e0
    lwz     r3, 0x6c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800553e0
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800553e0
    lwz     r3, 0x6c(r30)
    li      r31, 0x0
    stw     r31, 0x68(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r3)
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x14(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    stw     r31, 0x6c(r30)
branch_0x800553e0:
    li      r0, 0x0
    stb     r0, 0x1a4(r30)
    addi    r3, r30, 0x0
    li      r4, 0x1
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1a3(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80055424
    lwz     r3, 0x70(r30)
    lwz     r0, 0x6c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80055424
    li      r0, 0x1
    stw     r0, 0x6c(r3)
branch_0x80055424:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl setRollAnm__9THamuKuriFv
setRollAnm__9THamuKuriFv: # 0x8005543c
    mflr    r0
    li      r4, 0x7
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setRunAnm__9THamuKuriFv
setRunAnm__9THamuKuriFv: # 0x8005546c
    mflr    r0
    li      r4, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWaitAnm__9THamuKuriFv
setWaitAnm__9THamuKuriFv: # 0x8005549c
    mflr    r0
    li      r4, 0xd
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDeadAnm__9THamuKuriFv
setDeadAnm__9THamuKuriFv: # 0x800554cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80055574
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80055574
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x6
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80055574
    lwz     r3, 0x6c(r31)
    li      r30, 0x0
    stw     r30, 0x68(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r3)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x14(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    stw     r30, 0x6c(r31)
branch_0x80055574:
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800555a8
    lwz     r0, 0xf0(r31)
    addi    r5, r31, 0x10
    li      r4, 0xe4
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800555fc

branch_0x800555a8:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x800555bc
    li      r0, 0x1
    b       branch_0x800555c0

branch_0x800555bc:
    li      r0, 0x0
branch_0x800555c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800555e4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800555fc

branch_0x800555e4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800555fc:
    li      r0, 0x0
    stw     r0, 0x19c(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl setWalkAnm__9THamuKuriFv
setWalkAnm__9THamuKuriFv: # 0x8005561c
    mflr    r0
    li      r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setGenerateAnm__9THamuKuriFv
setGenerateAnm__9THamuKuriFv: # 0x8005564c
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setBckAnm__9THamuKuriFi
setBckAnm__9THamuKuriFi: # 0x8005567c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setBckAnm__11TSmallEnemyFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl endHitWaterJump__9THamuKuriFv
endHitWaterJump__9THamuKuriFv: # 0x8005569c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lfs     f1, -0x6e98(r2)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800556d4
    li      r0, 0x1
    stb     r0, 0x1a2(r31)
branch_0x800556d4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAfterDeadEffect__9THamuKuriFv
setAfterDeadEffect__9THamuKuriFv: # 0x800556e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80055778
    lfs     f1, -0x6e6c(r2)
    lis     r3, unk_2000003c@h
    lfs     f0, 0x14(r31)
    addi    r4, r3, unk_2000003c@l
    lwz     r3, R13Off_m0x62b0(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    li      r5, 0x1
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    beq-    branch_0x80055768
    lfs     f2, 0x18(r3)
    addi    r5, r31, 0x200
    lfs     f1, 0x14(r3)
    li      r4, 0xe4
    lfs     f0, 0x10(r3)
    li      r6, 0x0
    stfs    f0, 0x200(r31)
    li      r7, 0x0
    stfs    f1, 0x204(r31)
    stfs    f2, 0x208(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80055768:
    li      r0, 0x0
    stb     r0, 0x198(r31)
    lwz     r3, 0x70(r31)
    stw     r0, 0x70(r3)
branch_0x80055778:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8005578c
    li      r0, 0x1
    b       branch_0x80055790

branch_0x8005578c:
    li      r0, 0x0
branch_0x80055790:
    clrlwi. r0, r0, 24
    beq-    branch_0x800557ec
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80055804
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
    b       branch_0x80055804

branch_0x800557ec:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe4
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80055804:
    cmplwi  r3, 0x0
    beq-    branch_0x8005583c
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
branch_0x8005583c:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8005588c
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
branch_0x8005588c:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x295f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800558bc
    addi    r4, r31, 0x10
    li      r3, 0x295f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800558bc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl genRandomItem__9THamuKuriFv
genRandomItem__9THamuKuriFv: # 0x800558d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      genRandomItem__11TSmallEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getGravityY__9THamuKuriCFv
getGravityY__9THamuKuriCFv: # 0x800558f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8005591c
    lfs     f1, -0x7f68(r13)
    b       branch_0x80055948

branch_0x8005591c:
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    bl      theNerve__20TNerveWalkerGenerateFv
    cmplw   r31, r3
    bne-    branch_0x80055944
    lbz     r0, 0x1a1(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80055944
    lfs     f1, -0x7f60(r13)
    b       branch_0x80055948

branch_0x80055944:
    lfs     f1, 0xcc(r30)
branch_0x80055948:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl makeCapFly__9THamuKuriFP11TMapObjBase
makeCapFly__9THamuKuriFP11TMapObjBase: # 0x80055960
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r26, 0xc0(sp)
    mr      r28, r3
    mr      r29, r4
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r28)
    lfs     f2, -0x6e50(r2)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0xa4(sp)
    lfs     f1, 0xac(r28)
    lfs     f0, 0x9c(sp)
    fneg    f1, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xb4(r28)
    lfs     f0, 0xa4(sp)
    fneg    f1, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xa4(sp)
    lwz     r3, 0x70(r28)
    lha     r4, 0x7c(r28)
    bl      getHolder__18TSmallEnemyManagerFi
    mr.     r31, r3
    bne-    branch_0x80055aa8
    lwz     r3, 0xc4(r28)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800559e8
    li      r0, 0x1
    b       branch_0x800559ec

branch_0x800559e8:
    li      r0, 0x0
branch_0x800559ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x80055a68
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x104
    beq-    branch_0x80055a10
    cmplwi  r3, 0x105
    beq-    branch_0x80055a10
    cmplwi  r3, 0x4104
    bne-    branch_0x80055a18
branch_0x80055a10:
    li      r0, 0x1
    b       branch_0x80055a1c

branch_0x80055a18:
    li      r0, 0x0
branch_0x80055a1c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80055a68
    cmplwi  r3, 0x100
    beq-    branch_0x80055a4c
    cmplwi  r3, 0x101
    beq-    branch_0x80055a4c
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80055a4c
    cmplwi  r3, 0x4104
    bne-    branch_0x80055a54
branch_0x80055a4c:
    li      r0, 0x1
    b       branch_0x80055a58

branch_0x80055a54:
    li      r0, 0x0
branch_0x80055a58:
    clrlwi. r0, r0, 24
    bne-    branch_0x80055a68
    mr      r31, r28
    b       branch_0x80055aa8

branch_0x80055a68:
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r29)
    lfs     f1, -0x6eb4(r2)
    stfs    f1, 0xac(r29)
    lfs     f0, -0x6eb0(r2)
    stfs    f0, 0xb0(r29)
    stfs    f1, 0xb4(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
    b       branch_0x80055cb0

branch_0x80055aa8:
    lwz     r6, 0x9c(sp)
    mr      r3, r29
    lwz     r0, 0xa0(sp)
    addi    r4, r31, 0x0
    li      r5, 0x4
    stw     r6, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0xa4(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6e68(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x14(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80055ca4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c4(r12)
    mtlr    r12
    blrl
    stw     r29, 0x6c(r31)
    li      r3, 0x2
    li      r0, 0x3
    lwz     r4, 0xf0(r31)
    li      r29, -0x1
    ori     r4, r4, 0x2
    stw     r4, 0xf0(r31)
    lwz     r4, 0xf0(r31)
    clrrwi  r4, r4, 1
    stw     r4, 0xf0(r31)
    lwz     r4, 0xf0(r31)
    rlwinm  r4, r4, 0, 30, 28
    stw     r4, 0xf0(r31)
    lwz     r4, 0x64(r31)
    ori     r4, r4, 0x1
    stw     r4, 0x64(r31)
    lwz     r4, 0x70(r28)
    stw     r31, 0x70(r4)
    lwz     r4, 0x124(r28)
    lwz     r30, 0x4(r4)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    subf    r27, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e90(r2)
    stw     r0, 0xbc(sp)
    lis     r4, 0x4330
    xoris   r0, r27, 0x8000
    lfs     f1, -0x6e78(r2)
    stw     r4, 0xb8(sp)
    lwz     r3, 0x84(sp)
    li      r26, 0x0
    stw     r0, 0xb4(sp)
    lfd     f0, 0xb8(sp)
    stw     r4, 0xb0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xb0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r0, 0xac(sp)
    add     r27, r3, r0
    b       branch_0x80055c08

branch_0x80055be4:
    lwz     r3, 0x124(r28)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    lwz     r3, 0x0(r3)
    li      r6, -0x1
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    addi    r29, r30, 0x0
    addi    r30, r3, 0x0
    addi    r26, r26, 0x1
branch_0x80055c08:
    cmpw    r26, r27
    blt+    branch_0x80055be4
    cmpwi   r30, 0x0
    bge-    branch_0x80055c1c
    li      r30, 0x0
branch_0x80055c1c:
    lwz     r3, 0x124(r28)
    slwi    r0, r30, 4
    addi    r4, sp, 0x78
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x7f64(r13)
    addi    r4, r28, 0x0
    addi    r3, sp, 0x6c
    addi    r5, sp, 0x78
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x6c(sp)
    lwz     r3, 0x70(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0xb4(r31)
    b       branch_0x80055cb0

branch_0x80055ca4:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
branch_0x80055cb0:
    lmw     r26, 0xc0(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl onHaveCap__9THamuKuriFv
onHaveCap__9THamuKuriFv: # 0x80055cc4
    li      r0, 0x1
    stb     r0, 0x198(r3)
    blr


.globl selectCapHolder__9THamuKuriFv
selectCapHolder__9THamuKuriFv: # 0x80055cd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x60d8(r13)
    bl      isWearingCap__6TMarioFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80055d0c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    b       branch_0x80055d6c

branch_0x80055d0c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x70(r31)
    lwz     r0, 0x70(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80055d6c
    lis     r4, unk_2000003c@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_2000003c@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r4, r3
    beq-    branch_0x80055d6c
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    bl      makeCapFly__9THamuKuriFP11TMapObjBase
branch_0x80055d6c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setBehavior__9THamuKuriFv
setBehavior__9THamuKuriFv: # 0x80055d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80055dac
    li      r0, 0x1
    b       branch_0x80055db0

branch_0x80055dac:
    li      r0, 0x0
branch_0x80055db0:
    cmpwi   r0, 0x0
    beq-    branch_0x80055dec
    lfs     f1, -0x6e60(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80055dec
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__20TNerveWalkerGenerateFv
    cmplw   r30, r3
    beq-    branch_0x80055dec
    li      r0, 0x1
    stb     r0, 0x1f0(r31)
branch_0x80055dec:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80055e00
    li      r0, 0x1
    b       branch_0x80055e04

branch_0x80055e00:
    li      r0, 0x0
branch_0x80055e04:
    cmpwi   r0, 0x0
    bne-    branch_0x80055edc
    lbz     r0, 0x1f0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80055edc
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x80055e40
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    bne-    branch_0x80055edc
branch_0x80055e40:
    lbz     r0, R13Off_m0x7038(r13)
    extsb.  r0, r0
    bne-    branch_0x80055e84
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveHamuKuriLand@ha
    stw     r0, R13Off_m0x7034(r13)
    addi    r0, r3, __vvt__18TNerveHamuKuriLand@l
    lis     r4, __dt__18TNerveHamuKuriLandFv@ha
    stw     r0, R13Off_m0x7034(r13)
    lis     r3, unk_803f03c4@h
    addi    r5, r3, unk_803f03c4@l
    addi    r4, r4, __dt__18TNerveHamuKuriLandFv@l
    addi    r3, r13, R13Off_m0x7034
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7038(r13)
branch_0x80055e84:
    addi    r6, r13, R13Off_m0x7034
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80055edc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80055ed0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80055ed0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80055ed0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80055edc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl moveObject__9THamuKuriFv
moveObject__9THamuKuriFv: # 0x80055ef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80055fac
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x80055f38
    li      r0, 0x1
    b       branch_0x80055f3c

branch_0x80055f38:
    li      r0, 0x0
branch_0x80055f3c:
    cmpwi   r0, 0x0
    bne-    branch_0x80055fac
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x80055f94
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80055f70
    stw     r0, 0x1c(r4)
branch_0x80055f70:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80055f94
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r3)
branch_0x80055f94:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
branch_0x80055fac:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    beq-    branch_0x80055fd4
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    bne-    branch_0x80055fdc
branch_0x80055fd4:
    li      r0, 0x1
    b       branch_0x80055fe0

branch_0x80055fdc:
    li      r0, 0x0
branch_0x80055fe0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80055ff4
    lwz     r3, 0x19c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
branch_0x80055ff4:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    bne-    branch_0x80056094
    lwz     r4, 0x1f4(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r4, 0x440(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x1a8(r31)
    lwz     r0, 0x1a8(r31)
    cmpw    r0, r4
    ble-    branch_0x80056048
    li      r0, 0x0
    stw     r0, 0x1a8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x4
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80056048:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x8005605c
    li      r0, 0x1
    b       branch_0x80056060

branch_0x8005605c:
    li      r0, 0x0
branch_0x80056060:
    clrlwi. r0, r0, 24
    beq-    branch_0x80056094
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80056094
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80056094:
    mr      r3, r31
    bl      moveObject__12TWalkerEnemyFv
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl attackToMario__9THamuKuriFv
attackToMario__9THamuKuriFv: # 0x800560b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x8005610c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r4, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    lis     r3, unk_803f03d0@h
    addi    r5, r3, unk_803f03d0@l
    addi    r4, r4, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x8005610c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x702c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8005617c
    lfs     f1, -0x6eb0(r2)
    lfs     f0, 0x14(r31)
    lwz     r6, R13Off_m0x60b4(r13)
    fadds   f1, f1, f0
    lfs     f0, 0x4(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80056184
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x28
    lwz     r0, 0x4(r6)
    mr      r3, r31
    stw     r5, 0x28(sp)
    li      r5, 0x0
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x30(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    b       branch_0x80056184

branch_0x8005617c:
    mr      r3, r31
    bl      attackToMario__12TWalkerEnemyFv
branch_0x80056184:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl behaveToFindMario__9THamuKuriFv
behaveToFindMario__9THamuKuriFv: # 0x80056198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      behaveToFindMario__12TWalkerEnemyFv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2826
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800561e0
    addi    r4, r31, 0x10
    li      r3, 0x2826
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800561e0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl jumpToSearchActor__9THamuKuriFv
jumpToSearchActor__9THamuKuriFv: # 0x800561f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    lwz     r5, 0x1f8(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80056394
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x10(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x14(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x18(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f3, 0x54(sp)
    lfs     f0, 0x50(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6e24(r2)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80056310
    lwz     r3, 0x10(r5)
    li      r4, 0x0
    lwz     r0, 0x14(r5)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x48(sp)
    lfs     f0, 0xc8(r5)
    stfs    f0, 0x44(sp)
    stw     r4, 0x24(sp)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x48(sp)
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
    b       branch_0x80056394

branch_0x80056310:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lwz     r5, 0x1f8(r31)
    lfs     f1, -0x6e80(r2)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x18
    addi    r5, r5, 0x10
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x18(sp)
    li      r4, 0x2939
    lwz     r0, 0x1c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x20(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80056394
    addi    r4, r31, 0x10
    li      r3, 0x2939
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80056394:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl isFindMario__9THamuKuriFf
isFindMario__9THamuKuriFf: # 0x800563a8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    stb     r0, 0x1a2(r3)
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800563d0
    li      r3, 0x0
    b       branch_0x80056420

branch_0x800563d0:
    lwz     r4, R13Off_m0x60d8(r13)
    lwz     r0, 0x380(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8005641c
    lwz     r4, 0x3e4(r4)
    lwz     r0, 0x1c80(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005641c
    lwz     r4, 0x1f4(r3)
    lfs     f0, 0x11c(r4)
    stfs    f0, 0x194(r3)
    lfs     f2, 0x194(r3)
    lfs     f0, -0x6e84(r2)
    fmuls   f0, f2, f0
    stfs    f0, 0x194(r3)
    lfs     f0, -0x6ea4(r2)
    fmuls   f1, f0, f1
    bl      isFindMario__11TSmallEnemyFf
    b       branch_0x80056420

branch_0x8005641c:
    bl      isFindMario__11TSmallEnemyFf
branch_0x80056420:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToWater__9THamuKuriFP9THitActor
behaveToWater__9THamuKuriFP9THitActor: # 0x80056430
    mflr    r0
    lis     r4, unk_803f03a0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r4, unk_803f03a0@l
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    lbz     r0, R13Off_m0x7048(r13)
    extsb.  r0, r0
    bne-    branch_0x80056494
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__25TNerveHamuKuriBoundFreeze@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r0, r3, __vvt__25TNerveHamuKuriBoundFreeze@l
    lis     r3, __dt__25TNerveHamuKuriBoundFreezeFv@ha
    stw     r0, R13Off_m0x7044(r13)
    addi    r4, r3, __dt__25TNerveHamuKuriBoundFreezeFv@l
    addi    r3, r13, R13Off_m0x7044
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7048(r13)
branch_0x80056494:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7044
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80056650
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x800564e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveHamuKuriWallDie@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r0, r3, __vvt__21TNerveHamuKuriWallDie@l
    lis     r3, __dt__21TNerveHamuKuriWallDieFv@ha
    stw     r0, R13Off_m0x703c(r13)
    addi    r4, r3, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r3, r13, R13Off_m0x703c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x800564e8:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x703c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80056650
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x8005653c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r13, R13Off_m0x702c
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x8005653c:
    lwz     r3, 0x8c(r30)
    addi    r29, r13, R13Off_m0x702c
    lwz     r0, 0x14(r3)
    cmplw   r0, r29
    bne-    branch_0x8005655c
    li      r0, 0x1
    stb     r0, 0x165(r30)
    b       branch_0x80056650

branch_0x8005655c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80056614
    lbz     r0, R13Off_m0x7030(r13)
    extsb.  r0, r0
    bne-    branch_0x800565b8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHamuKuriJitabata@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r0, r3, __vvt__22TNerveHamuKuriJitabata@l
    lis     r3, __dt__22TNerveHamuKuriJitabataFv@ha
    stw     r0, R13Off_m0x702c(r13)
    addi    r4, r3, __dt__22TNerveHamuKuriJitabataFv@l
    addi    r3, r29, 0x0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7030(r13)
branch_0x800565b8:
    addi    r6, r13, R13Off_m0x702c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80056650
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80056604
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80056604
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80056604:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x80056650

branch_0x80056614:
    lfs     f1, 0xb0(r30)
    lfs     f0, -0x6eb4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80056650
    lwz     r7, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x58
    addi    r3, r30, 0x0
    lwz     r6, 0x0(r7)
    li      r5, 0x1
    lwz     r0, 0x4(r7)
    stw     r6, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x60(sp)
    bl      forceRoll__9THamuKuriFQ29JGeometry8TVec3_f_b
branch_0x80056650:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl bind__9THamuKuriFv
bind__9THamuKuriFv: # 0x8005666c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    lbz     r0, 0x1a4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800568ac
    lwz     r4, 0x8c(r31)
    lwz     r3, 0x1f4(r31)
    lwz     r4, 0x20(r4)
    lwz     r0, 0x3f0(r3)
    cmpw    r4, r0
    bgt-    branch_0x800566e4
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800566d0
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800566d0
    cmplwi  r3, 0x4104
    bne-    branch_0x800566d8
branch_0x800566d0:
    li      r0, 0x1
    b       branch_0x800566dc

branch_0x800566d8:
    li      r0, 0x0
branch_0x800566dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800566ec
branch_0x800566e4:
    li      r0, 0x0
    stb     r0, 0x1a4(r31)
branch_0x800566ec:
    lfs     f0, -0x6eb4(r2)
    addi    r30, sp, 0x54
    stfs    f0, 0xb0(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x800567a4
    lfs     f1, 0x50(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x4c(sp)
    lfs     f3, 0x54(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    b       branch_0x800567c8

branch_0x800567a4:
    lfs     f1, 0x50(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x4c(sp)
    lfs     f3, 0x54(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
branch_0x800567c8:
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x6e80(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f1, -0x6e38(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x50(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80056840
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8005680c
    li      r0, 0x1
    b       branch_0x80056810

branch_0x8005680c:
    li      r0, 0x0
branch_0x80056810:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005682c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8005682c:
    lfs     f1, -0x6e80(r2)
    lfs     f0, 0xc8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    b       branch_0x8005684c

branch_0x80056840:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8005684c:
    lfs     f1, 0x50(sp)
    mr      r5, r30
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0x4c
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, 0xbc(r31)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x24
    lwz     r5, 0x50(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x24(sp)
    lwz     r0, 0x54(sp)
    stw     r5, 0x28(sp)
    stw     r0, 0x2c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x9c(r31)
    b       branch_0x800568b4

branch_0x800568ac:
    mr      r3, r31
    bl      bind__10TLiveActorFv
branch_0x800568b4:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl reset__9THamuKuriFv
reset__9THamuKuriFv: # 0x800568cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    rlwinm  r3, r3, 0, 31, 29
    stw     r3, 0xf0(r31)
    lwz     r3, 0x1f4(r31)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0x194(r31)
    stb     r0, 0x1f0(r31)
    stb     r0, 0x1a3(r31)
    stb     r0, 0x1a4(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setMActorAndKeeper__9THamuKuriFv
setMActorAndKeeper__9THamuKuriFv: # 0x80056920
    mflr    r0
    lis     r4, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, unk_80378260@l
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    li      r3, 0x18
    stw     r29, 0x44(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80056964
    lwz     r4, 0x70(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80056964:
    stw     r29, 0x78(r30)
    addi    r4, r31, 0x360
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x460
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    clrlwi  r4, r3, 16
    addi    r6, r30, 0x1fc
    lwz     r3, 0x4(r5)
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    li      r0, 0x80
    stb     r0, 0x1ff(r30)
    addi    r3, r31, 0x3ec
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x800569e0
    lwz     r6, 0x74(r30)
    addi    r5, r3, 0x0
    addi    r4, r31, 0x410
    lwz     r3, 0x4(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    b       branch_0x800569e8

branch_0x800569e0:
    li      r0, 0x0
    stb     r0, 0x1ff(r30)
branch_0x800569e8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl init__9THamuKuriFP12TLiveManager
init__9THamuKuriFP12TLiveManager: # 0x80056a04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000002@h
    addi    r0, r3, unk_10000002@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1f4(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r31)
    bl      theNerve__20TNerveWalkerGenerateFv
    lwz     r5, 0x8c(r31)
    li      r0, 0x0
    li      r4, 0x1
    stw     r0, 0x8(r5)
    stw     r0, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9THamuKuriFPCc
__ct__9THamuKuriFPCc: # 0x80056a94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x3
    addi    r3, r31, 0x0
    lfs     f0, -0x6eb4(r2)
    stfs    f0, 0x194(r31)
    stb     r4, 0x198(r31)
    stw     r4, 0x19c(r31)
    stb     r4, 0x1a0(r31)
    stb     r4, 0x1a1(r31)
    stb     r4, 0x1a2(r31)
    stb     r4, 0x1a3(r31)
    stb     r4, 0x1a4(r31)
    stb     r0, 0x1ac(r31)
    stw     r4, 0x1e0(r31)
    stb     r4, 0x1f0(r31)
    stw     r4, 0x1f8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__20TDoroHamuKuriManagerFUlPQ26JDrama9TGraphics
perform__20TDoroHamuKuriManagerFUlPQ26JDrama9TGraphics: # 0x80056b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x68(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80056b60
    lbz     r0, R13Off_m0x7f58(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80056b60
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80056b60
    mr      r3, r29
    bl      setSearchHamuKuri__16THamuKuriManagerFv
branch_0x80056b60:
    clrlwi. r0, r30, 31
    beq-    branch_0x80056b70
    mr      r3, r29
    bl      checkSerialKill__16THamuKuriManagerFv
branch_0x80056b70:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r3, 0x74(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x80056ba4
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80056ba4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl createModelData__20TDoroHamuKuriManagerFv
createModelData__20TDoroHamuKuriManagerFv: # 0x80056bc0
    mflr    r0
    lis     r4, entry_3161@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3161@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__20TDoroHamuKuriManagerFv
createEnemyInstance__20TDoroHamuKuriManagerFv: # 0x80056bf4
    mflr    r0
    li      r3, 0x20c
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80056c38
    lis     r4, unk_803786d0@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_803786d0@l
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13TDoroHamuKuri@ha
    addi    r3, r3, __vvt__13TDoroHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
branch_0x80056c38:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__20TDoroHamuKuriManagerFv
loadAfter__20TDoroHamuKuriManagerFv: # 0x80056c50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lfs     f0, -0x6eb4(r2)
    lis     r3, unk_803786e0@ha
    lfs     f1, -0x6e80(r2)
    addi    r6, sp, 0x50
    stfs    f0, 0x44(sp)
    addi    r5, sp, 0x44
    stfs    f1, 0x50(sp)
    addi    r4, sp, 0x38
    addi    r3, r3, unk_803786e0@l
    stfs    f0, 0x38(sp)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x40(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lis     r3, unk_40000064@h
    addi    r0, r3, unk_40000064@l
    stw     r0, 0x60(r31)
    li      r30, 0x0
    stw     r30, 0x68(r31)
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r4, 0x60(r31)
    bl      getObjNumWithActorType__18TMapObjBaseManagerCFUl
    cmplwi  r3, 0x0
    beq-    branch_0x80056d4c
    slwi    r3, r3, 2
    bl      __nwa__FUl
    stw     r3, 0x64(r31)
    mr      r3, r30
    b       branch_0x80056d3c

branch_0x80056cec:
    lwz     r4, 0x18(r4)
    lwz     r0, 0x60(r31)
    lwzx    r5, r4, r3
    lwz     r4, 0x4c(r5)
    cmplw   r4, r0
    bne-    branch_0x80056d0c
    li      r0, 0x1
    b       branch_0x80056d10

branch_0x80056d0c:
    li      r0, 0x0
branch_0x80056d10:
    clrlwi. r0, r0, 24
    beq-    branch_0x80056d34
    lwz     r0, 0x68(r31)
    lwz     r4, 0x64(r31)
    slwi    r0, r0, 2
    stwx    r5, r4, r0
    lwz     r4, 0x68(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x68(r31)
branch_0x80056d34:
    addi    r30, r30, 0x1
    addi    r3, r3, 0x4
branch_0x80056d3c:
    lwz     r4, R13Off_m0x62b8(r13)
    lwz     r0, 0x14(r4)
    cmpw    r30, r0
    blt+    branch_0x80056cec
branch_0x80056d4c:
    lfs     f0, -0x6eb4(r2)
    lis     r3, unk_803786ec@ha
    lfs     f1, -0x6e80(r2)
    addi    r6, sp, 0x5c
    stfs    f0, 0x68(sp)
    addi    r5, sp, 0x68
    stfs    f1, 0x5c(sp)
    addi    r4, sp, 0x74
    addi    r3, r3, unk_803786ec@l
    stfs    f0, 0x74(sp)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x78(sp)
    stfs    f1, 0x64(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x7c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl load__20TDoroHamuKuriManagerFR20JSUMemoryInputStream
load__20TDoroHamuKuriManagerFR20JSUMemoryInputStream: # 0x80056da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x444
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80056de8
    lis     r3, unk_803786f8@ha
    addi    r4, r3, unk_803786f8@l
    addi    r3, r29, 0x0
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
branch_0x80056de8:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__20TDoroHamuKuriManagerFPCc
__ct__20TDoroHamuKuriManagerFPCc: # 0x80056e14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__20TDoroHamuKuriManager@h
    stw     r4, 0x60(r31)
    addi    r0, r3, __vvt__20TDoroHamuKuriManager@l
    addi    r3, r31, 0x0
    stw     r4, 0x64(r31)
    stw     r4, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    stw     r0, 0x0(r31)
    stw     r4, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16THamuKuriManagerFv
__dt__16THamuKuriManagerFv: # 0x80056e78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80056ed0
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80056ec0
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80056ec0:
    extsh.  r0, r31
    ble-    branch_0x80056ed0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80056ed0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__9TDoroHigeFUlPQ26JDrama9TGraphics
perform__9TDoroHigeFUlPQ26JDrama9TGraphics: # 0x80056eec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x1c(r3)
    lbz     r0, 0x198(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80056f10
    li      r0, 0x1
    b       branch_0x80056f14

branch_0x80056f10:
    li      r0, 0x0
branch_0x80056f14:
    clrlwi. r0, r0, 24
    beq-    branch_0x80056f30
    lwz     r0, 0xf0(r6)
    clrlwi. r0, r0, 29
    beq-    branch_0x80056f2c
    b       branch_0x80056f30

branch_0x80056f2c:
    bl      perform__12TSharedPartsFUlPQ26JDrama9TGraphics
branch_0x80056f30:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__20TFireHamuKuriManagerFv
createModelData__20TFireHamuKuriManagerFv: # 0x80056f40
    mflr    r0
    lis     r4, entry_3149@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3149@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSetEnemies__20TFireHamuKuriManagerFv
initSetEnemies__20TFireHamuKuriManagerFv: # 0x80056f74
    mflr    r0
    lis     r4, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stmw    r25, 0x104(sp)
    addi    r31, r4, unk_80378260@l
    addi    r29, r3, 0x0
    addi    r25, r31, 0x3ac
    addi    r26, r31, 0x3a4
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x800570e8

branch_0x80056fa4:
    lwz     r4, 0x18(r29)
    lwz     r3, R2Off_m0x6ee8(r2)
    lwzx    r30, r4, r27
    lwz     r0, R2Off_m0x6ee4(r2)
    stw     r3, 0x21c(r30)
    stw     r0, 0x220(r30)
    lwz     r3, R2Off_m0x6ed8(r2)
    lwz     r0, R2Off_m0x6ed4(r2)
    stw     r3, 0x224(r30)
    stw     r0, 0x228(r30)
    lwz     r3, 0x18(r29)
    lwz     r3, 0x0(r3)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x4b0
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x74(r30)
    mr      r8, r26
    addi    r10, r25, 0x0
    lwz     r0, 0x4(r4)
    clrlwi  r4, r3, 16
    addi    r6, r31, 0x39c
    mr      r3, r0
    li      r5, 0x1
    li      r7, 0x2
    li      r9, 0x3
    bl      SMS_InitPacket_ThreeTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS1011_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x4c4
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    clrlwi  r4, r3, 16
    addi    r6, r30, 0x21c
    lwz     r3, 0x4(r5)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x460
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    clrlwi  r4, r3, 16
    addi    r6, r30, 0x224
    lwz     r3, 0x4(r5)
    addi    r7, r30, 0x1fc
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
    li      r0, 0x0
    stb     r0, 0x1ff(r30)
    addi    r4, r31, 0x4d0
    lwz     r3, 0x74(r30)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    clrlwi  r4, r3, 16
    addi    r6, r30, 0x224
    lwz     r3, 0x4(r5)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x4dc
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    clrlwi  r4, r3, 16
    addi    r6, r30, 0x224
    lwz     r3, 0x4(r5)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    addi    r28, r28, 0x1
    addi    r27, r27, 0x4
branch_0x800570e8:
    lwz     r0, 0x14(r29)
    cmpw    r28, r0
    blt+    branch_0x80056fa4
    lmw     r25, 0x104(sp)
    lwz     r0, 0x124(sp)
    addi    sp, sp, 0x120
    mtlr    r0
    blr


.globl createEnemyInstance__20TFireHamuKuriManagerFv
createEnemyInstance__20TFireHamuKuriManagerFv: # 0x80057108
    mflr    r0
    li      r3, 0x22c
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8005715c
    lis     r4, unk_80378748@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80378748@l
    bl      __ct__9THamuKuriFPCc
    lis     r3, __vvt__13TFireHamuKuri@ha
    addi    r3, r3, __vvt__13TFireHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stb     r0, 0x210(r31)
    stw     r0, 0x214(r31)
    stw     r0, 0x218(r31)
branch_0x8005715c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__20TFireHamuKuriManagerFR20JSUMemoryInputStream
load__20TFireHamuKuriManagerFR20JSUMemoryInputStream: # 0x80057174
    mflr    r0
    lis     r5, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r31, r5, unk_80378260@l
    li      r3, 0x458
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80057200
    stw     r27, 0x10(sp)
    addi    r4, r31, 0x4f4
    lwz     r3, 0x10(sp)
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
    addi    r3, r31, 0x50c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r30, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x50c
    addi    r4, r30, 0x0
    addi    r3, r30, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0x444(r30)
    li      r0, 0x1f4
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x454(r30)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    mr      r3, r30
    stw     r0, 0x444(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x80057200:
    stw     r27, 0x38(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__20TFireHamuKuriManagerFPCc
__ct__20TFireHamuKuriManagerFPCc: # 0x80057224
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__20TFireHamuKuriManager@h
    stw     r4, 0x60(r31)
    addi    r0, r3, __vvt__20TFireHamuKuriManager@l
    addi    r3, r31, 0x0
    stw     r4, 0x64(r31)
    stw     r4, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    stw     r0, 0x0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__25TBossDangoHamuKuriManagerFv
createEnemyInstance__25TBossDangoHamuKuriManagerFv: # 0x80057284
    mflr    r0
    li      r3, 0x240
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800572d0
    lis     r4, unk_8037877c@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_8037877c@l
    bl      __ct__14TDangoHamuKuriFPCc
    lis     r3, __vvt__18TBossDangoHamuKuri@h
    addi    r3, r3, __vvt__18TBossDangoHamuKuri@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stw     r0, 0x238(r31)
branch_0x800572d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__25TBossDangoHamuKuriManagerFR20JSUMemoryInputStream
load__25TBossDangoHamuKuriManagerFR20JSUMemoryInputStream: # 0x800572e8
    mflr    r0
    lis     r5, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r31, r5, unk_80378260@l
    li      r3, 0x458
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80057374
    stw     r27, 0x10(sp)
    addi    r4, r31, 0x530
    lwz     r3, 0x10(sp)
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
    addi    r3, r31, 0x550
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r30, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x550
    addi    r4, r30, 0x0
    addi    r3, r30, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0x444(r30)
    li      r0, 0x3
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x454(r30)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    mr      r3, r30
    stw     r0, 0x444(r30)
    lwz     r4, 0x0(r30)
    bl      load__7TParamsFPCc
branch_0x80057374:
    stw     r27, 0x38(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__25TBossDangoHamuKuriManagerFPCc
__ct__25TBossDangoHamuKuriManagerFPCc: # 0x80057398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r5, 0x0
    lis     r4, __vvt__21TDangoHamuKuriManager@h
    stw     r5, 0x60(r31)
    lis     r3, __vvt__25TBossDangoHamuKuriManager@h
    addi    r4, r4, __vvt__21TDangoHamuKuriManager@l
    stw     r5, 0x64(r31)
    addi    r0, r3, __vvt__25TBossDangoHamuKuriManager@l
    addi    r3, r31, 0x0
    stw     r5, 0x68(r31)
    stw     r5, 0x6c(r31)
    stw     r5, 0x70(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x0(r31)
    stb     r5, R13Off_m0x7f58(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__21TDangoHamuKuriManagerFv
__dt__21TDangoHamuKuriManagerFv: # 0x80057408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80057470
    lis     r3, __vvt__21TDangoHamuKuriManager@h
    addi    r0, r3, __vvt__21TDangoHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80057460
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80057460
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80057460:
    extsh.  r0, r31
    ble-    branch_0x80057470
    mr      r3, r30
    bl      __dl__FPv
branch_0x80057470:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__20TDoroHaneKuriManagerFUlPQ26JDrama9TGraphics
perform__20TDoroHaneKuriManagerFUlPQ26JDrama9TGraphics: # 0x8005748c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x68(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x800574d8
    lbz     r0, R13Off_m0x7f58(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800574d8
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800574d8
    mr      r3, r29
    bl      setSearchHamuKuri__16THamuKuriManagerFv
branch_0x800574d8:
    clrlwi. r0, r30, 31
    beq-    branch_0x800574e8
    mr      r3, r29
    bl      checkSerialKill__16THamuKuriManagerFv
branch_0x800574e8:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r3, 0x74(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x8005751c
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x8005751c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl createModelDataArray__21TDangoHamuKuriManagerFPC19TModelDataLoadEntry
createModelDataArray__21TDangoHamuKuriManagerFPC19TModelDataLoadEntry: # 0x80057538
    mflr    r0
    lis     r5, unk_803787bc@ha
    stw     r0, 0x4(sp)
    addi    r0, r5, unk_803787bc@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    mr      r4, r0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lwz     r3, R13Off_m0x70b0(r13)
    bl      getManagerByName__10TConductorFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80057584
    lwz     r0, 0x28(r3)
    stw     r0, 0x28(r30)
    bl      getModelDataKeeper__11TObjManagerFv
    stw     r3, 0x24(r30)
    b       branch_0x80057590

branch_0x80057584:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      createModelDataArray__11TObjManagerFPC19TModelDataLoadEntry
branch_0x80057590:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl createEnemyInstance__21TDangoHamuKuriManagerFv
createEnemyInstance__21TDangoHamuKuriManagerFv: # 0x800575a8
    mflr    r0
    li      r3, 0x238
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800575d8
    lis     r3, unk_803787d4@ha
    addi    r4, r3, unk_803787d4@l
    addi    r3, r31, 0x0
    bl      __ct__14TDangoHamuKuriFPCc
branch_0x800575d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__21TDangoHamuKuriManagerFR20JSUMemoryInputStream
load__21TDangoHamuKuriManagerFR20JSUMemoryInputStream: # 0x800575f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x444
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80057630
    lis     r3, unk_803787e4@ha
    addi    r4, r3, unk_803787e4@l
    addi    r3, r29, 0x0
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
branch_0x80057630:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__21TDangoHamuKuriManagerFPCc
__ct__21TDangoHamuKuriManagerFPCc: # 0x8005765c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__21TDangoHamuKuriManager@h
    stw     r4, 0x60(r31)
    addi    r0, r3, __vvt__21TDangoHamuKuriManager@l
    addi    r3, r31, 0x0
    stw     r4, 0x64(r31)
    stw     r4, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    stw     r0, 0x0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__20TDoroHaneKuriManagerFv
createModelData__20TDoroHaneKuriManagerFv: # 0x800576bc
    mflr    r0
    lis     r4, entry_3118@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3118@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__20TDoroHaneKuriManagerFv
createEnemyInstance__20TDoroHaneKuriManagerFv: # 0x800576f0
    mflr    r0
    li      r3, 0x23c
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8005773c
    lis     r4, unk_80378800@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_80378800@l
    bl      __ct__13THaneHamuKuriFPCc
    lis     r3, __vvt__13TDoroHaneKuri@h
    addi    r3, r3, __vvt__13TDoroHaneKuri@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x5
    stw     r3, 0x20(r31)
    stb     r0, 0x1ac(r31)
branch_0x8005773c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__20TDoroHaneKuriManagerFv
loadAfter__20TDoroHaneKuriManagerFv: # 0x80057754
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lfs     f0, -0x6eb4(r2)
    lis     r3, unk_803786e0@ha
    lfs     f1, -0x6e80(r2)
    addi    r6, sp, 0x50
    stfs    f0, 0x44(sp)
    addi    r5, sp, 0x44
    stfs    f1, 0x50(sp)
    addi    r4, sp, 0x38
    addi    r3, r3, unk_803786e0@l
    stfs    f0, 0x38(sp)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x40(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lis     r3, unk_40000064@h
    addi    r0, r3, unk_40000064@l
    stw     r0, 0x60(r31)
    li      r30, 0x0
    stw     r30, 0x68(r31)
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r4, 0x60(r31)
    bl      getObjNumWithActorType__18TMapObjBaseManagerCFUl
    cmplwi  r3, 0x0
    beq-    branch_0x80057850
    slwi    r3, r3, 2
    bl      __nwa__FUl
    stw     r3, 0x64(r31)
    mr      r3, r30
    b       branch_0x80057840

branch_0x800577f0:
    lwz     r4, 0x18(r4)
    lwz     r0, 0x60(r31)
    lwzx    r5, r4, r3
    lwz     r4, 0x4c(r5)
    cmplw   r4, r0
    bne-    branch_0x80057810
    li      r0, 0x1
    b       branch_0x80057814

branch_0x80057810:
    li      r0, 0x0
branch_0x80057814:
    clrlwi. r0, r0, 24
    beq-    branch_0x80057838
    lwz     r0, 0x68(r31)
    lwz     r4, 0x64(r31)
    slwi    r0, r0, 2
    stwx    r5, r4, r0
    lwz     r4, 0x68(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x68(r31)
branch_0x80057838:
    addi    r30, r30, 0x1
    addi    r3, r3, 0x4
branch_0x80057840:
    lwz     r4, R13Off_m0x62b8(r13)
    lwz     r0, 0x14(r4)
    cmpw    r30, r0
    blt+    branch_0x800577f0
branch_0x80057850:
    lfs     f0, -0x6eb4(r2)
    lis     r3, unk_803786ec@ha
    lfs     f1, -0x6e80(r2)
    addi    r6, sp, 0x5c
    stfs    f0, 0x68(sp)
    addi    r5, sp, 0x68
    stfs    f1, 0x5c(sp)
    addi    r4, sp, 0x74
    addi    r3, r3, unk_803786ec@l
    stfs    f0, 0x74(sp)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x78(sp)
    stfs    f1, 0x64(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x7c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl load__20TDoroHaneKuriManagerFR20JSUMemoryInputStream
load__20TDoroHaneKuriManagerFR20JSUMemoryInputStream: # 0x800578ac
    mflr    r0
    lis     r5, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r26, r4, 0x0
    addi    r31, r5, unk_80378260@l
    li      r3, 0x4a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800579e8
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x5b0
    lwz     r3, 0x10(sp)
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
    addi    r3, r31, 0x5c8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r25, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x5c8
    addi    r4, r25, 0x0
    addi    r3, r25, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r27, r3, __vvt__10TParamT_f_@l
    stw     r27, 0x444(r25)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6e54(r2)
    addi    r3, r31, 0x5d8
    stfs    f0, 0x454(r25)
    stw     r28, 0x444(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x458
    addi    r6, r31, 0x5d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x458(r25)
    addi    r3, r31, 0x5e8
    lfs     f0, -0x6ec8(r2)
    stfs    f0, 0x468(r25)
    stw     r28, 0x458(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x46c
    addi    r6, r31, 0x5e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x46c(r25)
    addi    r3, r31, 0x5fc
    lfs     f0, -0x6e68(r2)
    stfs    f0, 0x47c(r25)
    stw     r28, 0x46c(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x480
    addi    r6, r31, 0x5fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x480(r25)
    addi    r3, r31, 0x610
    lfs     f0, -0x6eb8(r2)
    stfs    f0, 0x490(r25)
    stw     r28, 0x480(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x494
    addi    r6, r31, 0x610
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x494(r25)
    mr      r3, r25
    lfs     f0, -0x6e68(r2)
    stfs    f0, 0x4a4(r25)
    stw     r28, 0x494(r25)
    lwz     r4, 0x0(r25)
    bl      load__7TParamsFPCc
branch_0x800579e8:
    stw     r30, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__20TDoroHaneKuriManagerFPCc
__ct__20TDoroHaneKuriManagerFPCc: # 0x80057a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r5, 0x0
    lis     r4, __vvt__20THaneHamuKuriManager@h
    stw     r5, 0x60(r31)
    lis     r3, __vvt__20TDoroHaneKuriManager@h
    addi    r4, r4, __vvt__20THaneHamuKuriManager@l
    stw     r5, 0x64(r31)
    addi    r0, r3, __vvt__20TDoroHaneKuriManager@l
    addi    r3, r31, 0x0
    stw     r5, 0x68(r31)
    stw     r5, 0x6c(r31)
    stw     r5, 0x70(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x0(r31)
    stw     r5, 0x74(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__20THaneHamuKuriManagerFv
__dt__20THaneHamuKuriManagerFv: # 0x80057a7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80057ae4
    lis     r3, __vvt__20THaneHamuKuriManager@h
    addi    r0, r3, __vvt__20THaneHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80057ad4
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80057ad4
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80057ad4:
    extsh.  r0, r31
    ble-    branch_0x80057ae4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80057ae4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createAnmData__20THaneHamuKuriManagerFv
createAnmData__20THaneHamuKuriManagerFv: # 0x80057b00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      createAnmData__11TObjManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__20THaneHamuKuriManagerFv
createModelData__20THaneHamuKuriManagerFv: # 0x80057b20
    mflr    r0
    lis     r4, entry_3108@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3108@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__20THaneHamuKuriManagerFv
createEnemyInstance__20THaneHamuKuriManagerFv: # 0x80057b54
    mflr    r0
    li      r3, 0x238
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80057b84
    lis     r3, unk_80378884@ha
    addi    r4, r3, unk_80378884@l
    addi    r3, r31, 0x0
    bl      __ct__13THaneHamuKuriFPCc
branch_0x80057b84:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__20THaneHamuKuriManagerFR20JSUMemoryInputStream
load__20THaneHamuKuriManagerFR20JSUMemoryInputStream: # 0x80057b9c
    mflr    r0
    lis     r5, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r26, r4, 0x0
    addi    r31, r5, unk_80378260@l
    li      r3, 0x4a8
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80057cd8
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x634
    lwz     r3, 0x10(sp)
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
    addi    r3, r31, 0x5c8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r25, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x5c8
    addi    r4, r25, 0x0
    addi    r3, r25, 0x444
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r27, r3, __vvt__10TParamT_f_@l
    stw     r27, 0x444(r25)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6e54(r2)
    addi    r3, r31, 0x5d8
    stfs    f0, 0x454(r25)
    stw     r28, 0x444(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x458
    addi    r6, r31, 0x5d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x458(r25)
    addi    r3, r31, 0x5e8
    lfs     f0, -0x6ec8(r2)
    stfs    f0, 0x468(r25)
    stw     r28, 0x458(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x46c
    addi    r6, r31, 0x5e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x46c(r25)
    addi    r3, r31, 0x5fc
    lfs     f0, -0x6e68(r2)
    stfs    f0, 0x47c(r25)
    stw     r28, 0x46c(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x480
    addi    r6, r31, 0x5fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x480(r25)
    addi    r3, r31, 0x610
    lfs     f0, -0x6eb8(r2)
    stfs    f0, 0x490(r25)
    stw     r28, 0x480(r25)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r25, 0x0
    addi    r3, r25, 0x494
    addi    r6, r31, 0x610
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x494(r25)
    mr      r3, r25
    lfs     f0, -0x6e68(r2)
    stfs    f0, 0x4a4(r25)
    stw     r28, 0x494(r25)
    lwz     r4, 0x0(r25)
    bl      load__7TParamsFPCc
branch_0x80057cd8:
    stw     r30, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r26, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__20THaneHamuKuriManagerFPCc
__ct__20THaneHamuKuriManagerFPCc: # 0x80057cfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__20THaneHamuKuriManager@h
    stw     r4, 0x60(r31)
    addi    r0, r3, __vvt__20THaneHamuKuriManager@l
    addi    r3, r31, 0x0
    stw     r4, 0x64(r31)
    stw     r4, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    stw     r0, 0x0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__16THamuKuriManagerFv
createEnemyInstance__16THamuKuriManagerFv: # 0x80057d5c
    mflr    r0
    li      r3, 0x20c
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80057d8c
    lis     r3, unk_803788ac@ha
    addi    r4, r3, unk_803788ac@l
    addi    r3, r31, 0x0
    bl      __ct__9THamuKuriFPCc
branch_0x80057d8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkSerialKill__16THamuKuriManagerFv
checkSerialKill__16THamuKuriManagerFv: # 0x80057da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r21, 0x4c(sp)
    mr      r22, r3
    lwz     r3, 0x6c(r3)
    cmpwi   r3, 0x0
    beq-    branch_0x80057f00
    lwz     r4, 0x38(r22)
    addi    r0, r3, 0x1
    li      r27, 0x0
    lwz     r26, 0x418(r4)
    lwz     r3, 0x42c(r4)
    stw     r0, 0x6c(r22)
    lwz     r0, 0x6c(r22)
    cmpw    r0, r3
    ble-    branch_0x80057df0
    li      r0, 0x0
    stw     r0, 0x6c(r22)
branch_0x80057df0:
    lis     r6, __vvt__24TNerveBase_10TLiveActor_@ha
    lis     r5, __vvt__21TNerveHamuKuriWallDie@ha
    lis     r4, __dt__21TNerveHamuKuriWallDieFv@ha
    lis     r3, unk_803f03b8@h
    addi    r28, r6, __vvt__24TNerveBase_10TLiveActor_@l
    addi    r29, r5, __vvt__21TNerveHamuKuriWallDie@l
    addi    r30, r4, __dt__21TNerveHamuKuriWallDieFv@l
    addi    r31, r3, unk_803f03b8@l
    li      r25, 0x0
    li      r24, 0x0
    li      r21, 0x0
    b       branch_0x80057e9c

branch_0x80057e20:
    lwz     r3, 0x18(r22)
    lwzx    r3, r3, r21
    lbz     r0, 0x1a3(r3)
    addi    r23, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x80057e80
    lbz     r0, R13Off_m0x7040(r13)
    extsb.  r0, r0
    bne-    branch_0x80057e64
    stw     r28, R13Off_m0x703c(r13)
    addi    r3, r13, R13Off_m0x703c
    addi    r4, r30, 0x0
    stw     r29, R13Off_m0x703c(r13)
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7040(r13)
branch_0x80057e64:
    lwz     r3, 0x8c(r23)
    addi    r0, r13, R13Off_m0x703c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80057e80
    li      r0, 0x1
    b       branch_0x80057e84

branch_0x80057e80:
    li      r0, 0x0
branch_0x80057e84:
    clrlwi. r0, r0, 24
    beq-    branch_0x80057e94
    addi    r25, r23, 0x0
    addi    r27, r27, 0x1
branch_0x80057e94:
    addi    r24, r24, 0x1
    addi    r21, r21, 0x4
branch_0x80057e9c:
    lwz     r3, 0x38(r22)
    cmplwi  r3, 0x0
    bne-    branch_0x80057eb0
    lwz     r3, 0x14(r22)
    b       branch_0x80057ec8

branch_0x80057eb0:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r22)
    cmpw    r0, r3
    ble-    branch_0x80057ec4
    b       branch_0x80057ec8

branch_0x80057ec4:
    mr      r3, r0
branch_0x80057ec8:
    cmpw    r24, r3
    blt+    branch_0x80057e20
    cmplwi  r25, 0x0
    beq-    branch_0x80057f00
    cmpw    r27, r26
    blt-    branch_0x80057f00
    lis     r4, unk_20000003@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r25)
    addi    r4, r4, unk_20000003@l
    lfs     f2, 0x14(r25)
    li      r5, 0x1
    lfs     f3, 0x18(r25)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x80057f00:
    lmw     r21, 0x4c(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl requestSerialKill__16THamuKuriManagerFP9THamuKuri
requestSerialKill__16THamuKuriManagerFP9THamuKuri: # 0x80057f14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    li      r28, 0x1
    li      r26, 0x0
    li      r29, 0x0
    lwz     r3, 0x38(r3)
    lwz     r27, 0x404(r3)
    b       branch_0x80057f94

branch_0x80057f44:
    lwz     r3, 0x18(r30)
    lwzx    r0, r3, r29
    cmplw   r0, r31
    mr      r3, r0
    beq-    branch_0x80057f8c
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80057f6c
    li      r0, 0x1
    b       branch_0x80057f70

branch_0x80057f6c:
    li      r0, 0x0
branch_0x80057f70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80057f8c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    addi    r28, r28, 0x1
branch_0x80057f8c:
    addi    r26, r26, 0x1
    addi    r29, r29, 0x4
branch_0x80057f94:
    lwz     r3, 0x38(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x80057fa8
    lwz     r3, 0x14(r30)
    b       branch_0x80057fc0

branch_0x80057fa8:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r30)
    cmpw    r0, r3
    ble-    branch_0x80057fbc
    b       branch_0x80057fc0

branch_0x80057fbc:
    mr      r3, r0
branch_0x80057fc0:
    cmpw    r26, r3
    blt+    branch_0x80057f44
    cmpw    r28, r27
    blt-    branch_0x80057ff0
    lis     r4, unk_20000005@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_20000005@l
    lfs     f2, 0x14(r31)
    li      r5, 0x1
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x80057ff0:
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setSearchHamuKuri__16THamuKuriManagerFv
setSearchHamuKuri__16THamuKuriManagerFv: # 0x80058004
    mflr    r0
    lis     r6, __vvt__30TNerveHamuKuriGoForSearchActor@ha
    stw     r0, 0x4(sp)
    lis     r5, __dt__30TNerveHamuKuriGoForSearchActorFv@ha
    lis     r4, unk_803f03a0@h
    stwu    sp, -0x98(sp)
    stmw    r24, 0x78(sp)
    addi    r25, r3, 0x0
    addi    r29, r6, __vvt__30TNerveHamuKuriGoForSearchActor@l
    addi    r30, r5, __dt__30TNerveHamuKuriGoForSearchActorFv@l
    addi    r31, r4, unk_803f03a0@l
    li      r27, 0x0
    li      r24, 0x0
    b       branch_0x80058280

branch_0x8005803c:
    lwz     r3, 0x18(r25)
    lwzx    r28, r3, r24
    lwz     r3, 0x8c(r28)
    lwz     r26, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r26, r3
    beq-    branch_0x8005806c
    lwz     r3, 0x8c(r28)
    lwz     r26, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r26, r3
    bne-    branch_0x80058074
branch_0x8005806c:
    li      r0, 0x1
    b       branch_0x80058078

branch_0x80058074:
    li      r0, 0x0
branch_0x80058078:
    clrlwi. r0, r0, 24
    beq-    branch_0x80058278
    lwz     r0, 0xf0(r28)
    clrlwi. r0, r0, 29
    bne-    branch_0x80058278
    lwz     r4, 0x38(r25)
    lwz     r3, 0x19c(r28)
    lwz     r0, 0x3a0(r4)
    cmpw    r3, r0
    blt-    branch_0x80058278
    lfs     f0, 0x3b4(r4)
    li      r26, 0x0
    lwz     r0, 0x68(r25)
    li      r3, 0x0
    fmr     f3, f0
    cmpwi   r0, 0x0
    mtctr   r0
    fmuls   f3, f3, f0
    ble-    branch_0x80058174
branch_0x800580c4:
    lwz     r4, 0x64(r25)
    lwzx    r5, r4, r3
    lwz     r4, 0xf0(r5)
    andi.   r0, r4, 0x5
    bne-    branch_0x8005816c
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x800580e8
    li      r0, 0x1
    b       branch_0x800580ec

branch_0x800580e8:
    li      r0, 0x0
branch_0x800580ec:
    cmpwi   r0, 0x0
    bne-    branch_0x8005816c
    lwz     r4, 0x10(r28)
    lwz     r0, 0x14(r28)
    stw     r4, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x10(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x14(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x18(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x68(sp)
    lfs     f2, 0x6c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    bge-    branch_0x8005816c
    fmr     f3, f0
    mr      r26, r5
branch_0x8005816c:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800580c4
branch_0x80058174:
    cmplwi  r26, 0x0
    beq-    branch_0x80058278
    li      r0, 0x0
    stw     r0, 0x19c(r28)
    stb     r0, 0x1a0(r28)
    lbz     r0, R13Off_m0x704e(r13)
    extsb.  r0, r0
    bne-    branch_0x800581b8
    addi    r3, r13, R13Off_m0x704c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    stw     r29, R13Off_m0x704c(r13)
    addi    r3, r13, R13Off_m0x704c
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x704e(r13)
branch_0x800581b8:
    addi    r6, r13, R13Off_m0x704c
    lwz     r5, 0x8c(r28)
    cmplwi  r6, 0x0
    beq-    branch_0x80058210
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80058204
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80058204
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80058204:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80058210:
    stw     r26, 0x1f8(r28)
    li      r4, 0x0
    stw     r4, 0x50(sp)
    lwz     r3, 0x10(r26)
    lwz     r0, 0x14(r26)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r26)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0xf4(r28)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0xf8(r28)
    stw     r0, 0xfc(r28)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x100(r28)
    lwz     r0, 0x50(sp)
    stw     r0, 0x104(r28)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x108(r28)
    stw     r0, 0x10c(r28)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x110(r28)
    stw     r4, 0x118(r28)
branch_0x80058278:
    addi    r27, r27, 0x1
    addi    r24, r24, 0x4
branch_0x80058280:
    lwz     r3, 0x38(r25)
    cmplwi  r3, 0x0
    bne-    branch_0x80058294
    lwz     r3, 0x14(r25)
    b       branch_0x800582ac

branch_0x80058294:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r25)
    cmpw    r0, r3
    ble-    branch_0x800582a8
    b       branch_0x800582ac

branch_0x800582a8:
    mr      r3, r0
branch_0x800582ac:
    cmpw    r27, r3
    blt+    branch_0x8005803c
    lmw     r24, 0x78(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl perform__16THamuKuriManagerFUlPQ26JDrama9TGraphics
perform__16THamuKuriManagerFUlPQ26JDrama9TGraphics: # 0x800582c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x68(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80058314
    lbz     r0, R13Off_m0x7f58(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80058314
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80058314
    mr      r3, r29
    bl      setSearchHamuKuri__16THamuKuriManagerFv
branch_0x80058314:
    clrlwi. r0, r30, 31
    beq-    branch_0x80058324
    mr      r3, r29
    bl      checkSerialKill__16THamuKuriManagerFv
branch_0x80058324:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl createAnmData__16THamuKuriManagerFv
createAnmData__16THamuKuriManagerFv: # 0x80058350
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x4c
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80058380
    mr      r3, r30
    bl      __ct__13MActorAnmDataFv
branch_0x80058380:
    lis     r4, unk_803788b8@ha
    addi    r3, r30, 0x0
    addi    r4, r4, unk_803788b8@l
    li      r5, 0x0
    bl      init__13MActorAnmDataFPCcPPCc
    stw     r30, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__16THamuKuriManagerFv
createModelData__16THamuKuriManagerFv: # 0x800583b0
    mflr    r0
    lis     r4, entry_3041@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3041@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__16THamuKuriManagerFv
loadAfter__16THamuKuriManagerFv: # 0x800583e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lfs     f0, -0x6eb4(r2)
    lis     r3, unk_803786e0@ha
    lfs     f1, -0x6e80(r2)
    addi    r6, sp, 0x30
    stfs    f0, 0x3c(sp)
    addi    r5, sp, 0x3c
    stfs    f1, 0x30(sp)
    addi    r4, sp, 0x48
    addi    r3, r3, unk_803786e0@l
    stfs    f0, 0x48(sp)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x38(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x50(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lis     r3, unk_40000064@h
    addi    r0, r3, unk_40000064@l
    stw     r0, 0x60(r31)
    li      r30, 0x0
    stw     r30, 0x68(r31)
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r4, 0x60(r31)
    bl      getObjNumWithActorType__18TMapObjBaseManagerCFUl
    cmplwi  r3, 0x0
    beq-    branch_0x800584e0
    slwi    r3, r3, 2
    bl      __nwa__FUl
    stw     r3, 0x64(r31)
    li      r5, 0x0
    b       branch_0x800584d0

branch_0x80058480:
    lwz     r3, 0x18(r3)
    lwz     r0, 0x60(r31)
    lwzx    r4, r3, r30
    lwz     r3, 0x4c(r4)
    cmplw   r3, r0
    bne-    branch_0x800584a0
    li      r0, 0x1
    b       branch_0x800584a4

branch_0x800584a0:
    li      r0, 0x0
branch_0x800584a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800584c8
    lwz     r0, 0x68(r31)
    lwz     r3, 0x64(r31)
    slwi    r0, r0, 2
    stwx    r4, r3, r0
    lwz     r3, 0x68(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x68(r31)
branch_0x800584c8:
    addi    r5, r5, 0x1
    addi    r30, r30, 0x4
branch_0x800584d0:
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r0, 0x14(r3)
    cmpw    r5, r0
    blt+    branch_0x80058480
branch_0x800584e0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl load__16THamuKuriManagerFR20JSUMemoryInputStream
load__16THamuKuriManagerFR20JSUMemoryInputStream: # 0x800584f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x444
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80058538
    lis     r3, unk_803788cc@ha
    addi    r4, r3, unk_803788cc@l
    addi    r3, r29, 0x0
    bl      __ct__23THamuKuriSaveLoadParamsFPCc
branch_0x80058538:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__16THamuKuriManagerFPCc
__ct__16THamuKuriManagerFPCc: # 0x80058564
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x60(r31)
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r0, 0x6c(r31)
    stw     r0, 0x70(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__23THamuKuriSaveLoadParamsFPCc
__ct__23THamuKuriSaveLoadParamsFPCc: # 0x800585b8
    mflr    r0
    lis     r5, unk_80378260@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r30, r5, unk_80378260@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x680
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x680
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r27, r3, __vvt__10TParamT_f_@l
    stw     r27, 0x32c(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r26, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6e64(r2)
    addi    r3, r30, 0x690
    stfs    f0, 0x33c(r31)
    stw     r26, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x690
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x340(r31)
    addi    r3, r30, 0x6a4
    lfs     f0, -0x6e20(r2)
    stfs    f0, 0x350(r31)
    stw     r26, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x6a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x354(r31)
    addi    r3, r30, 0x6b8
    lfs     f0, -0x6ea4(r2)
    stfs    f0, 0x364(r31)
    stw     r26, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x6b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x368(r31)
    addi    r3, r30, 0x6c8
    lfs     f0, -0x6e28(r2)
    stfs    f0, 0x378(r31)
    stw     r26, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x6c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r29, r3, __vvt__10TParamT_l_@l
    stw     r29, 0x37c(r31)
    li      r25, 0x3
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r25, 0x38c(r31)
    addi    r28, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x6d4
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x6d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    li      r24, 0x1f4
    addi    r3, r30, 0x6e8
    stw     r24, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x6e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3a4(r31)
    addi    r3, r30, 0x6fc
    lfs     f0, -0x6eac(r2)
    stfs    f0, 0x3b4(r31)
    stw     r26, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x6fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    li      r0, 0xc8
    addi    r3, r30, 0x710
    stw     r0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x710
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3cc(r31)
    addi    r3, r30, 0x728
    lfs     f0, -0x6ea0(r2)
    stfs    f0, 0x3dc(r31)
    stw     r26, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x728
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e0(r31)
    addi    r3, r30, 0x734
    stw     r24, 0x3f0(r31)
    stw     r28, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x734
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x748
    stw     r25, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x748
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    addi    r3, r30, 0x75c
    stw     r25, 0x418(r31)
    stw     r28, 0x408(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x41c
    addi    r6, r30, 0x75c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41c(r31)
    li      r0, 0xf
    addi    r3, r30, 0x770
    stw     r0, 0x42c(r31)
    stw     r28, 0x41c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x430
    addi    r6, r30, 0x770
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x430(r31)
    mr      r3, r31
    stw     r24, 0x440(r31)
    stw     r28, 0x430(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl stateLaunch__17THamuKuriLauncherFv
stateLaunch__17THamuKuriLauncherFv: # 0x8005887c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    stw     r30, 0x70(sp)
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800589f4
    lis     r3, unk_803787bc@ha
    addi    r4, r3, unk_803787bc@l
    addi    r3, r31, 0x0
    bl      getProperEnemy__9TLauncherFPCc
    mr.     r30, r3
    beq-    branch_0x800589f4
    lfs     f1, 0x30(r31)
    addi    r3, sp, 0x1c
    lfs     f2, 0x34(r31)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f1, -0x6eb4(r2)
    lis     r3, unk_b60b60b7@h
    lfs     f0, -0x6ec8(r2)
    li      r4, 0x0
    stfs    f1, 0x4c(sp)
    addi    r0, r3, unk_b60b60b7@l
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    lfs     f0, 0x34(r31)
    stfs    f1, 0x58(sp)
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stb     r4, 0x1a1(r30)
    lfs     f0, 0x30(r31)
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r4, 0x6c(sp)
    mulhw   r0, r0, r4
    add     r0, r0, r4
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0xb4
    subf.   r0, r0, r4
    beq-    branch_0x800589b4
    li      r0, 0x1
    stb     r0, 0x1a1(r30)
    addi    r4, sp, 0x14
    lfs     f1, -0x6eb0(r2)
    lfs     f0, 0x14(r31)
    lfs     f30, -0x7f5c(r13)
    fadds   f2, f1, f0
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    mr      r3, r30
    fmr     f31, f1
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmuls   f3, f30, f1
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6eb4(r2)
    fsubs   f1, f31, f1
    lfs     f2, -0x6ec0(r2)
    fmuls   f3, f30, f3
    stfs    f0, 0x4c(sp)
    fmadds  f0, f2, f3, f1
    fdivs   f0, f0, f30
    stfs    f0, 0x50(sp)
    lfs     f0, -0x6e6c(r2)
    fdivs   f0, f0, f30
    stfs    f0, 0x54(sp)
    b       branch_0x800589c0

branch_0x800589b4:
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x54(sp)
branch_0x800589c0:
    addi    r4, sp, 0x4c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x1c
    bl      PSMTXMultVec
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x58
    lwz     r12, 0x104(r12)
    addi    r6, r30, 0x24
    addi    r7, sp, 0x4c
    mtlr    r12
    blrl
branch_0x800589f4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80058a2c
    mr      r3, r31
    bl      resetLaunchTimer__9TLauncherFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x80058a2c:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x88
    blr


.globl drawObject__17THamuKuriLauncherFPQ26JDrama9TGraphics
drawObject__17THamuKuriLauncherFPQ26JDrama9TGraphics: # 0x80058a4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      drawObject__10TLiveActorFPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl doKeepDistance__11TSmallEnemyFv
doKeepDistance__11TSmallEnemyFv: # 0x80058a6c
    li      r3, 0x0
    blr


.globl __dt__13TDoroHamuKuriFv
__dt__13TDoroHamuKuriFv: # 0x80058a74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058af4
    lis     r3, __vvt__13TDoroHamuKuri@ha
    addi    r3, r3, __vvt__13TDoroHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058ae4
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058ae4
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x80058ae4:
    extsh.  r0, r31
    ble-    branch_0x80058af4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058af4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TFireHamuKuriFv
__dt__13TFireHamuKuriFv: # 0x80058b10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058b90
    lis     r3, __vvt__13TFireHamuKuri@ha
    addi    r3, r3, __vvt__13TFireHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058b80
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058b80
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x80058b80:
    extsh.  r0, r31
    ble-    branch_0x80058b90
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058b90:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl changeByJuice__18TBossDangoHamuKuriFv
changeByJuice__18TBossDangoHamuKuriFv: # 0x80058bac
    li      r3, 0x0
    blr


.globl isFindMario__18TBossDangoHamuKuriFf
isFindMario__18TBossDangoHamuKuriFf: # 0x80058bb4
    li      r3, 0x0
    blr


.globl __dt__18TBossDangoHamuKuriFv
__dt__18TBossDangoHamuKuriFv: # 0x80058bbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058c3c
    lis     r3, __vvt__18TBossDangoHamuKuri@h
    addi    r3, r3, __vvt__18TBossDangoHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058c2c
    lis     r3, __vvt__14TDangoHamuKuri@h
    addi    r3, r3, __vvt__14TDangoHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058c2c
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__12TWalkerEnemyFv
branch_0x80058c2c:
    extsh.  r0, r31
    ble-    branch_0x80058c3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058c3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl forceKill__14THaneHamuKuri2Fv
forceKill__14THaneHamuKuri2Fv: # 0x80058c58
    blr


.globl isHitValid__14THaneHamuKuri2FUl
isHitValid__14THaneHamuKuri2FUl: # 0x80058c5c
    li      r3, 0x1
    blr


.globl behaveToWater__14THaneHamuKuri2FP9THitActor
behaveToWater__14THaneHamuKuri2FP9THitActor: # 0x80058c64
    blr


.globl setBehavior__13THaneHamuKuriFv
setBehavior__13THaneHamuKuriFv: # 0x80058c68
    blr


.globl setGenerateAnm__13THaneHamuKuriFv
setGenerateAnm__13THaneHamuKuriFv: # 0x80058c6c
    blr


.globl canDoJitabata__13THaneHamuKuriFv
canDoJitabata__13THaneHamuKuriFv: # 0x80058c70
    li      r3, 0x0
    blr


.globl __dt__14THaneHamuKuri2Fv
__dt__14THaneHamuKuri2Fv: # 0x80058c78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058cf8
    lis     r3, __vvt__14THaneHamuKuri2@h
    addi    r3, r3, __vvt__14THaneHamuKuri2@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058ce8
    lis     r3, __vvt__13THaneHamuKuri@h
    addi    r3, r3, __vvt__13THaneHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058ce8
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__12TWalkerEnemyFv
branch_0x80058ce8:
    extsh.  r0, r31
    ble-    branch_0x80058cf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058cf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TDoroHaneKuriFv
__dt__13TDoroHaneKuriFv: # 0x80058d14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058d94
    lis     r3, __vvt__13TDoroHaneKuri@h
    addi    r3, r3, __vvt__13TDoroHaneKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058d84
    lis     r3, __vvt__13THaneHamuKuri@h
    addi    r3, r3, __vvt__13THaneHamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80058d84
    lis     r3, __vvt__9THamuKuri@h
    addi    r3, r3, __vvt__9THamuKuri@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__12TWalkerEnemyFv
branch_0x80058d84:
    extsh.  r0, r31
    ble-    branch_0x80058d94
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058d94:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20TDoroHamuKuriManagerFv
__dt__20TDoroHamuKuriManagerFv: # 0x80058db0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058e18
    lis     r3, __vvt__20TDoroHamuKuriManager@h
    addi    r0, r3, __vvt__20TDoroHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058e08
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058e08
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80058e08:
    extsh.  r0, r31
    ble-    branch_0x80058e18
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058e18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initSetEnemies__18TSmallEnemyManagerFv
initSetEnemies__18TSmallEnemyManagerFv: # 0x80058e34
    blr


.globl __dt__9TDoroHigeFv
__dt__9TDoroHigeFv: # 0x80058e38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058ea0
    lis     r3, __vvt__9TDoroHige@h
    addi    r0, r3, __vvt__9TDoroHige@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058e90
    lis     r3, __vvt__12TSharedParts@ha
    addi    r0, r3, __vvt__12TSharedParts@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058e90
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80058e90:
    extsh.  r0, r31
    ble-    branch_0x80058ea0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058ea0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20TFireHamuKuriManagerFv
__dt__20TFireHamuKuriManagerFv: # 0x80058ebc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058f24
    lis     r3, __vvt__20TFireHamuKuriManager@h
    addi    r0, r3, __vvt__20TFireHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058f14
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058f14
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80058f14:
    extsh.  r0, r31
    ble-    branch_0x80058f24
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058f24:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__25TBossDangoHamuKuriManagerFv
__dt__25TBossDangoHamuKuriManagerFv: # 0x80058f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80058fb8
    lis     r3, __vvt__25TBossDangoHamuKuriManager@h
    addi    r0, r3, __vvt__25TBossDangoHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058fa8
    lis     r3, __vvt__21TDangoHamuKuriManager@h
    addi    r0, r3, __vvt__21TDangoHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058fa8
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80058fa8
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80058fa8:
    extsh.  r0, r31
    ble-    branch_0x80058fb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x80058fb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl clipEnemies__25TBossDangoHamuKuriManagerFPQ26JDrama9TGraphics
clipEnemies__25TBossDangoHamuKuriManagerFPQ26JDrama9TGraphics: # 0x80058fd4
    blr


.globl clipEnemies__21TDangoHamuKuriManagerFPQ26JDrama9TGraphics
clipEnemies__21TDangoHamuKuriManagerFPQ26JDrama9TGraphics: # 0x80058fd8
    blr


.globl __dt__20TDoroHaneKuriManagerFv
__dt__20TDoroHaneKuriManagerFv: # 0x80058fdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80059054
    lis     r3, __vvt__20TDoroHaneKuriManager@h
    addi    r0, r3, __vvt__20TDoroHaneKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80059044
    lis     r3, __vvt__20THaneHamuKuriManager@h
    addi    r0, r3, __vvt__20THaneHamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80059044
    lis     r3, __vvt__16THamuKuriManager@h
    addi    r0, r3, __vvt__16THamuKuriManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80059044
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80059044:
    extsh.  r0, r31
    ble-    branch_0x80059054
    mr      r3, r30
    bl      __dl__FPv
branch_0x80059054:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17THamuKuriLauncherFv
__dt__17THamuKuriLauncherFv: # 0x80059070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800590d8
    lis     r3, __vvt__17THamuKuriLauncher@h
    addi    r3, r3, __vvt__17THamuKuriLauncher@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800590c8
    lis     r3, __vvt__9TLauncher@h
    addi    r3, r3, __vvt__9TLauncher@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800590c8:
    extsh.  r0, r31
    ble-    branch_0x800590d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800590d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_hamukuri_cpp
__sinit_hamukuri_cpp: # 0x800590f4
    mflr    r0
    addi    r9, r2, R2Off_m0x6ee8
    stw     r0, 0x4(sp)
    addi    r8, r2, R2Off_m0x6ee0
    addi    r7, r13, R13Off_m0x7f54
    stwu    sp, -0x10(sp)
    addi    r6, r2, R2Off_m0x6ed8
    addi    r5, r2, R2Off_m0x6ed0
    stw     r31, 0xc(sp)
    lis     r10, unk_803f03a0@h
    addi    r4, r13, R13Off_m0x7f4c
    lha     r3, -0x6ee8(r2)
    addi    r31, r10, unk_803f03a0@l
    lha     r0, -0x6ee0(r2)
    subf    r0, r3, r0
    sth     r0, -0x7f54(r13)
    lha     r3, 0x2(r9)
    lha     r0, 0x2(r8)
    subf    r0, r3, r0
    sth     r0, 0x2(r7)
    lha     r3, 0x4(r9)
    lha     r0, 0x4(r8)
    subf    r0, r3, r0
    sth     r0, 0x4(r7)
    lha     r3, 0x6(r9)
    lha     r0, 0x6(r8)
    subf    r0, r3, r0
    sth     r0, 0x6(r7)
    lha     r3, -0x6ed8(r2)
    lha     r0, -0x6ed0(r2)
    subf    r0, r3, r0
    sth     r0, -0x7f4c(r13)
    lha     r3, 0x2(r6)
    lha     r0, 0x2(r5)
    subf    r0, r3, r0
    sth     r0, 0x2(r4)
    lha     r3, 0x4(r6)
    lha     r0, 0x4(r5)
    subf    r0, r3, r0
    sth     r0, 0x4(r4)
    lha     r3, 0x6(r6)
    lha     r0, 0x6(r5)
    subf    r0, r3, r0
    sth     r0, 0x6(r4)
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800591d4
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800591d4:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80059204
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80059204:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80059234
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80059234:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80059264
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80059264:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80059294
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80059294:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800592c4
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800592c4:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800592f4
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800592f4:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80059324
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80059324:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80059354
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80059354:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80059384
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80059384:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800593b4
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800593b4:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800593e4
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800593e4:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80059414
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80059414:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80059444
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x144
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80059444:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80059474
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80059474:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80059488
unk_80059488: # 0x80059488
    addi    r3, r3, -0x20
    b       __dt__17THamuKuriLauncherFv


.globl unk_80059490
unk_80059490: # 0x80059490
    addi    r3, r3, -0x20
    b       __dt__9THamuKuriFv


.globl unk_80059498
unk_80059498: # 0x80059498
    addi    r3, r3, -0x20
    b       __dt__13THaneHamuKuriFv


.globl unk_800594a0
unk_800594a0: # 0x800594a0
    addi    r3, r3, -0x20
    b       __dt__13TDoroHaneKuriFv


.globl unk_800594a8
unk_800594a8: # 0x800594a8
    addi    r3, r3, -0x20
    b       __dt__14THaneHamuKuri2Fv


.globl unk_800594b0
unk_800594b0: # 0x800594b0
    addi    r3, r3, -0x20
    b       __dt__14TDangoHamuKuriFv


.globl unk_800594b8
unk_800594b8: # 0x800594b8
    addi    r3, r3, -0x20
    b       __dt__18TBossDangoHamuKuriFv


.globl unk_800594c0
unk_800594c0: # 0x800594c0
    addi    r3, r3, -0x20
    b       __dt__13TFireHamuKuriFv


.globl unk_800594c8
unk_800594c8: # 0x800594c8
    addi    r3, r3, -0x20
    b       __dt__13TDoroHamuKuriFv

