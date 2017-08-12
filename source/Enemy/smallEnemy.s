
.globl __dt__22TNerveSmallEnemyChangeFv
__dt__22TNerveSmallEnemyChangeFv: # 0x8006a344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006a388
    lis     r3, __vvt__22TNerveSmallEnemyChange@h
    addi    r0, r3, __vvt__22TNerveSmallEnemyChange@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006a378
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006a378:
    extsh.  r0, r4
    ble-    branch_0x8006a388
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006a388:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveSmallEnemyChangeCFP24TSpineBase_10TLiveActor_
execute__22TNerveSmallEnemyChangeCFP24TSpineBase_10TLiveActor_: # 0x8006a3a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r4
    lwz     r30, 0x0(r4)
    lwz     r12, 0x0(r30)
    mr      r3, r30
    lwz     r12, 0x138(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x20(r29)
    addi    r31, r3, 0x0
    cmpwi   r0, 0x0
    bne-    branch_0x8006a40c
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    lfs     f1, -0x6c08(r2)
    bl      setFrameRate__6MActorFfi
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8006a40c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    lfs     f1, -0x6c08(r2)
    bl      setFrameRate__6MActorFfi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x13c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x134(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x8006a458
    lwz     r0, 0x20(r29)
    cmpw    r0, r31
    ble-    branch_0x8006a474
branch_0x8006a458:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x140(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8006a478

branch_0x8006a474:
    li      r3, 0x0
branch_0x8006a478:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl theNerve__22TNerveSmallEnemyChangeFv
theNerve__22TNerveSmallEnemyChangeFv: # 0x8006a494
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6e80(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a4e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveSmallEnemyChange@h
    stw     r0, R13Off_m0x6e7c(r13)
    addi    r0, r3, __vvt__22TNerveSmallEnemyChange@l
    lis     r4, __dt__22TNerveSmallEnemyChangeFv@ha
    stw     r0, R13Off_m0x6e7c(r13)
    lis     r3, unk_803f09b4@h
    addi    r5, r3, unk_803f09b4@l
    addi    r4, r4, __dt__22TNerveSmallEnemyChangeFv@l
    addi    r3, r13, R13Off_m0x6e7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e80(r13)
branch_0x8006a4e4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6e7c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__20TNerveSmallEnemyWaitCFP24TSpineBase_10TLiveActor_
execute__20TNerveSmallEnemyWaitCFP24TSpineBase_10TLiveActor_: # 0x8006a4f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8006a534
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
branch_0x8006a534:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8006a574
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x248(r3)
    cmpw    r4, r0
    ble-    branch_0x8006a574
    li      r3, 0x1
    b       branch_0x8006a578

branch_0x8006a574:
    li      r3, 0x0
branch_0x8006a578:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setWaitAnm__11TSmallEnemyFv
setWaitAnm__11TSmallEnemyFv: # 0x8006a590
    blr


.globl theNerve__20TNerveSmallEnemyWaitFv
theNerve__20TNerveSmallEnemyWaitFv: # 0x8006a594
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6e88(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a5e4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveSmallEnemyWait@h
    stw     r0, R13Off_m0x6e84(r13)
    addi    r0, r3, __vvt__20TNerveSmallEnemyWait@l
    lis     r4, __dt__20TNerveSmallEnemyWaitFv@ha
    stw     r0, R13Off_m0x6e84(r13)
    lis     r3, unk_803f09a8@h
    addi    r5, r3, unk_803f09a8@l
    addi    r4, r4, __dt__20TNerveSmallEnemyWaitFv@l
    addi    r3, r13, R13Off_m0x6e84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e88(r13)
branch_0x8006a5e4:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6e84
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__20TNerveSmallEnemyWaitFv
__dt__20TNerveSmallEnemyWaitFv: # 0x8006a5f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006a63c
    lis     r3, __vvt__20TNerveSmallEnemyWait@h
    addi    r0, r3, __vvt__20TNerveSmallEnemyWait@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006a62c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006a62c:
    extsh.  r0, r4
    ble-    branch_0x8006a63c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006a63c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveSmallEnemyHitWaterJumpCFP24TSpineBase_10TLiveActor_
execute__28TNerveSmallEnemyHitWaterJumpCFP24TSpineBase_10TLiveActor_: # 0x8006a654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8006a798
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8006a694
    li      r0, 0x1
    b       branch_0x8006a698

branch_0x8006a694:
    li      r0, 0x0
branch_0x8006a698:
    cmpwi   r0, 0x0
    bne-    branch_0x8006a6a8
    rlwinm. r0, r3, 0, 13, 13
    beq-    branch_0x8006a6b0
branch_0x8006a6a8:
    li      r3, 0x1
    b       branch_0x8006a840

branch_0x8006a6b0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x128(r12)
    mtlr    r12
    blrl
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x70(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb8(r3)
    stfs    f0, 0x6c(sp)
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x70(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f1, -0x6c04(r2)
    lfs     f0, -0x6c00(r2)
    stfs    f1, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x5c(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6bf0(r2)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6bfc(r2)
    stw     r0, 0x78(sp)
    lfs     f1, 0x5c(sp)
    lfd     f3, 0x78(sp)
    lfs     f2, 0x34(r31)
    fsubs   f3, f3, f4
    fmuls   f0, f0, f3
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x34(r31)
branch_0x8006a798:
    lfs     f1, -0x6bf8(r2)
    lfs     f0, -0x6bf4(r2)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x54(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6bf0(r2)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6bfc(r2)
    stw     r0, 0x78(sp)
    lfs     f1, 0x54(sp)
    lfd     f3, 0x78(sp)
    lfs     f2, 0x34(r31)
    fsubs   f3, f3, f4
    fmuls   f0, f0, f3
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006a808
    li      r0, 0x1
    b       branch_0x8006a80c

branch_0x8006a808:
    li      r0, 0x0
branch_0x8006a80c:
    cmpwi   r0, 0x0
    beq-    branch_0x8006a820
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x168
    ble-    branch_0x8006a83c
branch_0x8006a820:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x184(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8006a840

branch_0x8006a83c:
    li      r3, 0x0
branch_0x8006a840:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl theNerve__28TNerveSmallEnemyHitWaterJumpFv
theNerve__28TNerveSmallEnemyHitWaterJumpFv: # 0x8006a85c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6e90(r13)
    extsb.  r0, r0
    bne-    branch_0x8006a8ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__28TNerveSmallEnemyHitWaterJump@h
    stw     r0, R13Off_m0x6e8c(r13)
    addi    r0, r3, __vvt__28TNerveSmallEnemyHitWaterJump@l
    lis     r4, __dt__28TNerveSmallEnemyHitWaterJumpFv@ha
    stw     r0, R13Off_m0x6e8c(r13)
    lis     r3, unk_803f099c@h
    addi    r5, r3, unk_803f099c@l
    addi    r4, r4, __dt__28TNerveSmallEnemyHitWaterJumpFv@l
    addi    r3, r13, R13Off_m0x6e8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e90(r13)
branch_0x8006a8ac:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6e8c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__28TNerveSmallEnemyHitWaterJumpFv
__dt__28TNerveSmallEnemyHitWaterJumpFv: # 0x8006a8c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006a904
    lis     r3, __vvt__28TNerveSmallEnemyHitWaterJump@h
    addi    r0, r3, __vvt__28TNerveSmallEnemyHitWaterJump@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006a8f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006a8f4:
    extsh.  r0, r4
    ble-    branch_0x8006a904
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006a904:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveSmallEnemyJumpCFP24TSpineBase_10TLiveActor_
execute__20TNerveSmallEnemyJumpCFP24TSpineBase_10TLiveActor_: # 0x8006a91c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8006a9ec
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8006a950
    li      r0, 0x1
    b       branch_0x8006a954

branch_0x8006a950:
    li      r0, 0x0
branch_0x8006a954:
    cmpwi   r0, 0x0
    bne-    branch_0x8006a964
    rlwinm. r0, r3, 0, 13, 13
    beq-    branch_0x8006a96c
branch_0x8006a964:
    li      r3, 0x1
    b       branch_0x8006aa18

branch_0x8006a96c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x128(r12)
    mtlr    r12
    blrl
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x48(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xb8(r3)
    lfs     f0, 0x148(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8006a9ec:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006aa00
    li      r0, 0x1
    b       branch_0x8006aa04

branch_0x8006aa00:
    li      r0, 0x0
branch_0x8006aa04:
    cmpwi   r0, 0x0
    bne-    branch_0x8006aa14
    li      r3, 0x1
    b       branch_0x8006aa18

branch_0x8006aa14:
    li      r3, 0x0
branch_0x8006aa18:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl theNerve__20TNerveSmallEnemyJumpFv
theNerve__20TNerveSmallEnemyJumpFv: # 0x8006aa2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6e98(r13)
    extsb.  r0, r0
    bne-    branch_0x8006aa7c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveSmallEnemyJump@h
    stw     r0, R13Off_m0x6e94(r13)
    addi    r0, r3, __vvt__20TNerveSmallEnemyJump@l
    lis     r4, __dt__20TNerveSmallEnemyJumpFv@ha
    stw     r0, R13Off_m0x6e94(r13)
    lis     r3, unk_803f0990@h
    addi    r5, r3, unk_803f0990@l
    addi    r4, r4, __dt__20TNerveSmallEnemyJumpFv@l
    addi    r3, r13, R13Off_m0x6e94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e98(r13)
branch_0x8006aa7c:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6e94
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__20TNerveSmallEnemyJumpFv
__dt__20TNerveSmallEnemyJumpFv: # 0x8006aa90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006aad4
    lis     r3, __vvt__20TNerveSmallEnemyJump@h
    addi    r0, r3, __vvt__20TNerveSmallEnemyJump@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006aac4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006aac4:
    extsh.  r0, r4
    ble-    branch_0x8006aad4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006aad4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveSmallEnemyFreezeCFP24TSpineBase_10TLiveActor_
execute__22TNerveSmallEnemyFreezeCFP24TSpineBase_10TLiveActor_: # 0x8006aaec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    mr      r29, r4
    lwz     r31, 0x0(r4)
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x20(r29)
    lwz     r30, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8006ab44
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
branch_0x8006ab44:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8006ab6c
    lwz     r0, 0x20(r29)
    cmpw    r0, r30
    blt-    branch_0x8006ab6c
    li      r3, 0x1
    b       branch_0x8006ab70

branch_0x8006ab6c:
    li      r3, 0x0
branch_0x8006ab70:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl theNerve__22TNerveSmallEnemyFreezeFv
theNerve__22TNerveSmallEnemyFreezeFv: # 0x8006ab8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6ea0(r13)
    extsb.  r0, r0
    bne-    branch_0x8006abdc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveSmallEnemyFreeze@h
    stw     r0, R13Off_m0x6e9c(r13)
    addi    r0, r3, __vvt__22TNerveSmallEnemyFreeze@l
    lis     r4, __dt__22TNerveSmallEnemyFreezeFv@ha
    stw     r0, R13Off_m0x6e9c(r13)
    lis     r3, unk_803f0984@h
    addi    r5, r3, unk_803f0984@l
    addi    r4, r4, __dt__22TNerveSmallEnemyFreezeFv@l
    addi    r3, r13, R13Off_m0x6e9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea0(r13)
branch_0x8006abdc:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6e9c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveSmallEnemyFreezeFv
__dt__22TNerveSmallEnemyFreezeFv: # 0x8006abf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006ac34
    lis     r3, __vvt__22TNerveSmallEnemyFreeze@h
    addi    r0, r3, __vvt__22TNerveSmallEnemyFreeze@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006ac24
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006ac24:
    extsh.  r0, r4
    ble-    branch_0x8006ac34
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006ac34:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveSmallEnemyDieCFP24TSpineBase_10TLiveActor_
execute__19TNerveSmallEnemyDieCFP24TSpineBase_10TLiveActor_: # 0x8006ac4c
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
    bne-    branch_0x8006addc
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8006ac8c
    addi    r0, r3, -0x1
    stb     r0, 0x13c(r31)
branch_0x8006ac8c:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8006ad14
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8006accc
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8006accc
    cmplwi  r3, 0x4104
    bne-    branch_0x8006acd4
branch_0x8006accc:
    li      r0, 0x1
    b       branch_0x8006acd8

branch_0x8006acd4:
    li      r0, 0x0
branch_0x8006acd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006ad14
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006acf4
    li      r0, 0x1
    b       branch_0x8006acf8

branch_0x8006acf4:
    li      r0, 0x0
branch_0x8006acf8:
    cmpwi   r0, 0x0
    bne-    branch_0x8006ad14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
branch_0x8006ad14:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8006ad38
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x15c(r12)
    mtlr    r12
    blrl
    b       branch_0x8006addc

branch_0x8006ad38:
    lwz     r0, 0x150(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x8006ad90
    lwz     r4, 0x70(r31)
    lis     r0, 0x4330
    lfd     f2, -0x6be0(r2)
    lwz     r3, 0x38(r4)
    lfs     f4, -0x6be8(r2)
    lbz     r3, 0x298(r3)
    lfs     f5, 0x158(r31)
    stw     r3, 0x6c(sp)
    lhz     r4, 0x58(r4)
    stw     r0, 0x68(sp)
    lwz     r3, R13Off_m0x62f0(r13)
    lfd     f0, 0x68(sp)
    lfs     f1, 0x10(r31)
    fsubs   f0, f0, f2
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    fmuls   f0, f4, f0
    fmuls   f4, f0, f5
    bl      stamp__17TPollutionManagerFUsffff
branch_0x8006ad90:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8006add4
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x194(r12)
    mtlr    r12
    blrl
    b       branch_0x8006addc

branch_0x8006add4:
    li      r3, 0x1
    b       branch_0x8006af78

branch_0x8006addc:
    lwz     r3, 0xc4(r31)
    lwz     r4, 0x70(r31)
    lhz     r3, 0x0(r3)
    lwz     r29, 0x5c(r4)
    cmplwi  r3, 0x100
    beq-    branch_0x8006ae0c
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8006ae0c
    cmplwi  r3, 0x4104
    bne-    branch_0x8006ae14
branch_0x8006ae0c:
    li      r0, 0x1
    b       branch_0x8006ae18

branch_0x8006ae14:
    li      r0, 0x0
branch_0x8006ae18:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006ae24
    li      r29, 0x0
branch_0x8006ae24:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8006ae58
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r0, 0x8(r3)
    lwz     r3, 0x20(r30)
    add     r0, r29, r0
    cmpw    r3, r0
    bgt-    branch_0x8006ae70
branch_0x8006ae58:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x168
    bgt-    branch_0x8006ae70
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8006af74
branch_0x8006ae70:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006af18
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    lis     r4, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    lis     r3, unk_803f0978@h
    addi    r5, r3, unk_803f0978@l
    addi    r4, r4, __dt__19TNerveSmallEnemyDieFv@l
    addi    r3, r13, R13Off_m0x6ea4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006af18:
    lwz     r0, 0x14(r30)
    addi    r3, r13, R13Off_m0x6ea4
    cmplwi  r0, 0x0
    beq-    branch_0x8006af2c
    stw     r0, 0x1c(r30)
branch_0x8006af2c:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x8006af6c
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x8006af6c
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8006af6c:
    li      r3, 0x1
    b       branch_0x8006af78

branch_0x8006af74:
    li      r3, 0x0
branch_0x8006af78:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl __dt__19TNerveSmallEnemyDieFv
__dt__19TNerveSmallEnemyDieFv: # 0x8006af94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8006afd8
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8006afc8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8006afc8:
    extsh.  r0, r4
    ble-    branch_0x8006afd8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8006afd8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setDeadAnm__11TSmallEnemyFv
setDeadAnm__11TSmallEnemyFv: # 0x8006aff0
    blr


.globl theNerve__19TNerveSmallEnemyDieFv
theNerve__19TNerveSmallEnemyDieFv: # 0x8006aff4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006b044
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    lis     r4, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    lis     r3, unk_803f0978@h
    addi    r5, r3, unk_803f0978@l
    addi    r4, r4, __dt__19TNerveSmallEnemyDieFv@l
    addi    r3, r13, R13Off_m0x6ea4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006b044:
    lwz     r0, 0xc(sp)
    addi    r3, r13, R13Off_m0x6ea4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
perform__11TSmallEnemyFUlPQ26JDrama9TGraphics: # 0x8006b058
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    lwz     r6, R13Off_m0x6048(r13)
    lbz     r6, 0x124(r6)
    cmplwi  r6, 0x3
    beq-    branch_0x8006b084
    cmplwi  r6, 0x4
    beq-    branch_0x8006b084
    li      r0, 0x0
branch_0x8006b084:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b0c0
    cmplwi  r6, 0x1
    li      r0, 0x1
    beq-    branch_0x8006b0a4
    cmplwi  r6, 0x2
    beq-    branch_0x8006b0a4
    li      r0, 0x0
branch_0x8006b0a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006b0c0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xdc(r12)
    mtlr    r12
    blrl
    b       branch_0x8006b0c4

branch_0x8006b0c0:
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
branch_0x8006b0c4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToHitOthers__11TSmallEnemyFP9THitActor
behaveToHitOthers__11TSmallEnemyFP9THitActor: # 0x8006b0d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x17c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006b204
    lfs     f5, -0x6c08(r2)
    stfs    f5, 0x20(sp)
    stfs    f5, 0x24(sp)
    stfs    f5, 0x28(sp)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x10(r31)
    lfs     f3, 0x14(r30)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r30)
    lfs     f1, 0x18(r31)
    fsubs   f2, f3, f2
    stfs    f0, 0x14(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x18(sp)
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    fcmpu   cr0, f5, f1
    bne-    branch_0x8006b178
    lfs     f0, 0x18(sp)
    fcmpu   cr0, f5, f0
    bne-    branch_0x8006b178
    lfs     f0, 0x1c(sp)
    fcmpu   cr0, f5, f0
    bne-    branch_0x8006b178
    lfs     f0, -0x6bd8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(sp)
branch_0x8006b178:
    addi    r3, sp, 0x14
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f2, -0x6bd4(r2)
    lfs     f0, 0x140(r30)
    lfs     f1, 0x158(r30)
    fmuls   f2, f2, f0
    lfs     f0, 0x14(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x14(sp)
    lfs     f0, 0x18(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x18(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x14(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x28(sp)
    stw     r0, 0x9c(r30)
branch_0x8006b204:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl isHitWallInBound__11TSmallEnemyFv
isHitWallInBound__11TSmallEnemyFv: # 0x8006b21c
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0x6c
    lfs     f0, -0x6bd0(r2)
    stfs    f0, 0x14c(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0xc0(r3)
    lfs     f3, 0x14c(r3)
    fadds   f4, f1, f0
    lfs     f2, 0x148(r3)
    lfs     f5, 0x18(r3)
    lfs     f0, 0x10(r3)
    fmuls   f1, f3, f2
    stfs    f0, 0x6c(sp)
    lfs     f2, -0x6bcc(r2)
    stfs    f4, 0x70(sp)
    fmuls   f0, f2, f1
    stfs    f5, 0x74(sp)
    stfs    f0, 0x78(sp)
    lwz     r3, R13Off_m0x6328(r13)
    stw     r5, 0x7c(sp)
    stw     r0, 0x84(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x8006b33c
    lwz     r3, 0x88(sp)
    lfs     f1, 0x3c(r3)
    lfs     f2, 0x34(r3)
    bl      matan__Fff
    lwz     r4, 0x88(sp)
    extsh   r0, r3
    xoris   r3, r0, 0x8000
    lfs     f1, -0x6c08(r2)
    addi    r4, r4, 0x34
    lfs     f0, 0x4(r4)
    lis     r0, 0x4330
    stw     r3, 0x9c(sp)
    fmuls   f0, f1, f0
    lfs     f3, 0xac(r31)
    lfs     f2, 0x0(r4)
    stw     r0, 0x98(sp)
    fmadds  f0, f3, f2, f0
    lfs     f3, 0xb4(r31)
    lfs     f2, 0x8(r4)
    lfd     f4, -0x6bf0(r2)
    fmadds  f0, f3, f2, f0
    lfd     f3, 0x98(sp)
    lfs     f2, -0x6bc8(r2)
    fsubs   f3, f3, f4
    fcmpo   cr0, f0, f1
    fmuls   f1, f2, f3
    ble-    branch_0x8006b308
    li      r3, 0x0
    b       branch_0x8006b340

branch_0x8006b308:
    lfs     f0, 0x6c(sp)
    li      r3, 0x1
    stfs    f0, 0x10(r31)
    lfs     f0, 0x74(sp)
    stfs    f0, 0x18(r31)
    stfs    f1, 0x34(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    b       branch_0x8006b340

branch_0x8006b33c:
    li      r3, 0x0
branch_0x8006b340:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl isEaten__11TSmallEnemyFv
isEaten__11TSmallEnemyFv: # 0x8006b354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8006b3d4
    lwz     r0, 0x6c(r3)
    cmplw   r0, r30
    bne-    branch_0x8006b3d4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    mr.     r31, r3
    beq-    branch_0x8006b3d4
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f2, 0x2c(r31)
    li      r3, 0x1
    lfs     f1, 0x1c(r31)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x10(r30)
    stfs    f1, 0x14(r30)
    stfs    f2, 0x18(r30)
    b       branch_0x8006b3d8

branch_0x8006b3d4:
    li      r3, 0x0
branch_0x8006b3d8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl expandCollision__11TSmallEnemyFv
expandCollision__11TSmallEnemyFv: # 0x8006b3f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stfd    f29, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lis     r31, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    lwz     r12, 0x108(r12)
    stw     r31, 0x58(sp)
    lfd     f1, -0x6bf0(r2)
    mtlr    r12
    lfd     f0, 0x58(sp)
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0x54(sp)
    lwz     r12, 0x108(r12)
    stw     r31, 0x50(sp)
    mtlr    r12
    lfd     f0, 0x50(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0x4c(sp)
    lwz     r12, 0x108(r12)
    stw     r31, 0x48(sp)
    mtlr    r12
    lfd     f0, 0x48(sp)
    fsubs   f29, f0, f1
    blrl
    lfs     f1, 0x190(r30)
    lfs     f0, 0x154(r30)
    lwz     r0, 0x180(r3)
    mr      r3, r30
    fdivs   f4, f1, f0
    lfd     f3, -0x6bf0(r2)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r31, 0x40(sp)
    fmuls   f1, f31, f4
    lfd     f2, 0x40(sp)
    fmuls   f0, f30, f4
    fsubs   f2, f2, f3
    stfs    f1, 0x50(r30)
    fmuls   f1, f29, f4
    stfs    f0, 0x54(r30)
    fmuls   f0, f2, f4
    stfs    f1, 0x58(r30)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lfd     f29, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x80
    blr


.globl setBckAnm__11TSmallEnemyFi
setBckAnm__11TSmallEnemyFi: # 0x8006b52c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    stw     r31, 0x15c(r3)
    lwz     r3, 0x74(r3)
    bl      setBckFromIndex__6MActorFi
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8006b578
    li      r4, 0x0
    b       branch_0x8006b580

branch_0x8006b578:
    slwi    r0, r31, 2
    lwzx    r4, r3, r0
branch_0x8006b580:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl generateEffectColumWater__11TSmallEnemyFv
generateEffectColumWater__11TSmallEnemyFv: # 0x8006b5a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8006b61c
    lis     r4, unk_80379d04@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_80379d04@l
    addi    r4, r31, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x8006b61c
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x286d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006b61c
    addi    r4, r31, 0x10
    li      r3, 0x286d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8006b61c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isFindMarioFromParam__11TSmallEnemyCFf
isFindMarioFromParam__11TSmallEnemyCFf: # 0x8006b630
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f1
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, R13Off_m0x60b4(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r6)
    lfs     f2, 0xe0(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x8006b6d0
    lwz     r5, 0x0(r6)
    addi    r4, sp, 0x30
    lwz     r0, 0x4(r6)
    stw     r5, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x38(sp)
    lfs     f1, 0xcc(r3)
    lfs     f2, 0x108(r3)
    lfs     f3, 0xf4(r3)
    fmuls   f1, f1, f31
    fmuls   f2, f2, f31
    mr      r3, r31
    fmuls   f3, f3, f31
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x8006b6c8
    li      r3, 0x1
    b       branch_0x8006b6d4

branch_0x8006b6c8:
    li      r3, 0x0
    b       branch_0x8006b6d4

branch_0x8006b6d0:
    li      r3, 0x0
branch_0x8006b6d4:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl isMarioInWater__11TSmallEnemyCFv
isMarioInWater__11TSmallEnemyCFv: # 0x8006b6ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x1
    stw     r30, 0x10(sp)
    addi    r30, r31, 0x0
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r4, 0x0(r3)
    addi    r3, r31, 0x0
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8006b724
    mr      r0, r31
    b       branch_0x8006b728

branch_0x8006b724:
    li      r0, 0x0
branch_0x8006b728:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b750
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x8006b740
    li      r0, 0x1
    b       branch_0x8006b744

branch_0x8006b740:
    li      r0, 0x0
branch_0x8006b744:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b750
    li      r3, 0x0
branch_0x8006b750:
    clrlwi. r0, r3, 24
    bne-    branch_0x8006b770
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8006b770
    li      r30, 0x0
branch_0x8006b770:
    clrlwi. r0, r30, 24
    bne-    branch_0x8006b7a0
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x8006b790
    li      r0, 0x1
    b       branch_0x8006b794

branch_0x8006b790:
    li      r0, 0x0
branch_0x8006b794:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b7a0
    li      r31, 0x0
branch_0x8006b7a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isFindMario__11TSmallEnemyFf
isFindMario__11TSmallEnemyFf: # 0x8006b7bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    mr      r31, r3
    li      r3, 0x1
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x3
    beq-    branch_0x8006b804
    cmplwi  r0, 0x4
    beq-    branch_0x8006b804
    li      r3, 0x0
branch_0x8006b804:
    clrlwi. r0, r3, 24
    beq-    branch_0x8006b814
    li      r3, 0x0
    b       branch_0x8006b904

branch_0x8006b814:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006b828
    li      r0, 0x1
    b       branch_0x8006b82c

branch_0x8006b828:
    li      r0, 0x0
branch_0x8006b82c:
    cmpwi   r0, 0x0
    beq-    branch_0x8006b83c
    li      r3, 0x0
    b       branch_0x8006b904

branch_0x8006b83c:
    lwz     r3, R13Off_m0x6094(r13)
    li      r29, 0x1
    addi    r28, r29, 0x0
    lwz     r4, 0x0(r3)
    addi    r3, r29, 0x0
    li      r30, 0x0
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x8006b864
    mr      r0, r29
    b       branch_0x8006b868

branch_0x8006b864:
    mr      r0, r30
branch_0x8006b868:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b890
    rlwinm. r0, r4, 0, 15, 15
    beq-    branch_0x8006b880
    li      r0, 0x1
    b       branch_0x8006b884

branch_0x8006b880:
    li      r0, 0x0
branch_0x8006b884:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b890
    li      r3, 0x0
branch_0x8006b890:
    clrlwi. r0, r3, 24
    bne-    branch_0x8006b8b0
    lwz     r3, R13Off_m0x608c(r13)
    lwz     r3, 0x0(r3)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8006b8b0
    li      r28, 0x0
branch_0x8006b8b0:
    clrlwi. r0, r28, 24
    bne-    branch_0x8006b8e0
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x8006b8d0
    li      r0, 0x1
    b       branch_0x8006b8d4

branch_0x8006b8d0:
    li      r0, 0x0
branch_0x8006b8d4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006b8e0
    li      r29, 0x0
branch_0x8006b8e0:
    clrlwi. r0, r29, 24
    bne-    branch_0x8006b900
    mr      r3, r31
    fmr     f1, f31
    bl      isFindMarioFromParam__11TSmallEnemyCFf
    clrlwi. r0, r3, 24
    beq-    branch_0x8006b900
    li      r30, 0x1
branch_0x8006b900:
    mr      r3, r30
branch_0x8006b904:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x38
    blr


.globl kill__11TSmallEnemyFv
kill__11TSmallEnemyFv: # 0x8006b928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    lwz     r0, 0xf0(r3)
    lis     r3, unk_803f0978@h
    addi    r31, r3, unk_803f0978@l
    clrlwi. r0, r0, 31
    bne-    branch_0x8006ba9c
    li      r29, 0x1
    stb     r29, 0x13c(r30)
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006b99c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    lis     r3, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r4, r3, __dt__19TNerveSmallEnemyDieFv@l
    addi    r3, r13, R13Off_m0x6ea4
    addi    r5, r31, 0x0
    bl      __register_global_object
    stb     r29, R13Off_m0x6ea7(r13)
branch_0x8006b99c:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6ea4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8006ba90
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006b9f4
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r4, __vvt__19TNerveSmallEnemyDie@l
    lis     r4, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r4, r4, __dt__19TNerveSmallEnemyDieFv@l
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006b9f4:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6ea4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8006ba0c
    stw     r0, 0x1c(r4)
branch_0x8006ba0c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006ba58
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    lis     r3, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r4, r3, __dt__19TNerveSmallEnemyDieFv@l
    addi    r3, r13, R13Off_m0x6ea4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006ba58:
    addi    r5, r13, R13Off_m0x6ea4
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x8006ba90
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8006ba90
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8006ba90:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r30)
branch_0x8006ba9c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl decHpByWater__11TSmallEnemyFP9THitActor
decHpByWater__11TSmallEnemyFP9THitActor: # 0x8006bab8
    lwz     r0, 0x68(r4)
    lwz     r4, R13Off_m0x6088(r13)
    slwi    r0, r0, 1
    add     r4, r4, r0
    lha     r0, 0x614(r4)
    cmpwi   r0, 0x1
    mr      r4, r0
    bge-    branch_0x8006badc
    li      r4, 0x1
branch_0x8006badc:
    lbz     r0, 0x13c(r3)
    extsh   r4, r4
    cmpw    r0, r4
    bge-    branch_0x8006baf8
    li      r0, 0x0
    stb     r0, 0x13c(r3)
    blr

branch_0x8006baf8:
    subf    r0, r4, r0
    stb     r0, 0x13c(r3)
    blr


.globl changeOut__11TSmallEnemyFv
changeOut__11TSmallEnemyFv: # 0x8006bb04
    mflr    r0
    li      r4, 0x293d
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r0, R13Off_m0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006bb50
    addi    r4, r30, 0x10
    li      r3, 0x293d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8006bb50:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r8, 0x178(r30)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    lwz     r3, 0x10(r8)
    li      r6, 0x0
    lwz     r0, 0x14(r8)
    li      r7, 0x0
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r8)
    stw     r0, 0x18(r30)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r31, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x178(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x178(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl scalingChangeActor__11TSmallEnemyFv
scalingChangeActor__11TSmallEnemyFv: # 0x8006bbe0
    lwz     r4, 0x178(r3)
    lfs     f1, -0x6bc4(r2)
    lfs     f0, 0x140(r4)
    lfs     f2, -0x7f00(r13)
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x8006bc04
    fmr     f1, f2
    b       branch_0x8006bc14

branch_0x8006bc04:
    lfs     f0, -0x6c08(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006bc14
    fmr     f1, f0
branch_0x8006bc14:
    stfs    f1, 0x148(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x140(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x2c(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x24(r4)
    lwz     r4, 0x178(r3)
    lfs     f1, -0x6bc0(r2)
    lfsu    f0, 0x144(r4)
    lfs     f2, -0x7efc(r13)
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x8006bc54
    fmr     f1, f2
    b       branch_0x8006bc64

branch_0x8006bc54:
    lfs     f0, -0x6c08(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8006bc64
    fmr     f1, f0
branch_0x8006bc64:
    stfs    f1, 0x0(r4)
    lwz     r3, 0x178(r3)
    stfs    f1, 0x28(r3)
    blr


.globl changeMove__11TSmallEnemyFv
changeMove__11TSmallEnemyFv: # 0x8006bc74
    mflr    r0
    lis     r6, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stw     r31, 0x134(sp)
    mr      r31, r3
    stw     r30, 0x130(sp)
    lwz     r4, R13Off_m0x7f10(r13)
    lwz     r3, 0x8c(r3)
    xoris   r0, r4, 0x8000
    lfd     f5, -0x6bf0(r2)
    stw     r0, 0x12c(sp)
    lwz     r30, 0x20(r3)
    stw     r6, 0x128(sp)
    xoris   r0, r30, 0x8000
    lfs     f2, -0x6bbc(r2)
    stw     r0, 0x124(sp)
    lfd     f0, 0x128(sp)
    stw     r6, 0x120(sp)
    fsubs   f1, f0, f5
    lfd     f0, 0x120(sp)
    fmuls   f6, f2, f1
    fsubs   f0, f0, f5
    fcmpo   cr0, f0, f6
    cror    2, 0, 2
    bne-    branch_0x8006bd84
    stw     r0, 0x124(sp)
    lfs     f1, -0x6bb0(r2)
    stw     r6, 0x120(sp)
    lfs     f2, -0x6bb4(r2)
    lfd     f0, 0x120(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    fsubs   f0, f0, f5
    lfs     f4, -0x6bb8(r2)
    lfs     f3, -0x7f08(r13)
    lwz     r5, R13Off_m0x5ea8(r13)
    fmuls   f1, f1, f0
    fmuls   f3, f4, f3
    lfs     f4, 0x188(r31)
    lfs     f0, 0x14(r31)
    fdivs   f1, f1, f6
    lwz     r3, 0x178(r31)
    fmuls   f1, f2, f1
    fctiwz  f1, f1
    stfd    f1, 0x128(sp)
    lwz     r4, 0x12c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    fmuls   f1, f3, f1
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x8c(r31)
    lfs     f1, -0x6bac(r2)
    lwz     r0, 0x20(r3)
    lfs     f2, 0x34(r31)
    xoris   r0, r0, 0x8000
    lwz     r3, 0x178(r31)
    stw     r0, 0x11c(sp)
    stw     r6, 0x118(sp)
    lfd     f0, 0x118(sp)
    fsubs   f0, f0, f5
    fmuls   f0, f1, f0
    fdivs   f0, f0, f6
    fadds   f0, f2, f0
    stfs    f0, 0x34(r3)
    b       branch_0x8006c09c

branch_0x8006bd84:
    cmpw    r30, r4
    ble-    branch_0x8006c09c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x138(r12)
    mtlr    r12
    blrl
    addi    r0, r3, -0xc8
    cmpw    r30, r0
    ble-    branch_0x8006be00
    lwz     r4, 0x8c(r31)
    lis     r3, unk_66666667@h
    addi    r0, r3, unk_66666667@l
    lwz     r4, 0x20(r4)
    mulhw   r0, r0, r4
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x14
    subf    r0, r0, r4
    cmpwi   r0, 0xa
    bge-    branch_0x8006bdf0
    lwz     r3, 0x178(r31)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r3)
    b       branch_0x8006be00

branch_0x8006bdf0:
    lwz     r3, 0x178(r31)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
branch_0x8006be00:
    lbz     r0, 0x185(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x8006be30
    bge-    branch_0x8006be1c
    cmpwi   r0, 0x1
    bge-    branch_0x8006be28
    b       branch_0x8006bfb0

branch_0x8006be1c:
    cmpwi   r0, 0x4
    bge-    branch_0x8006bfb0
    b       branch_0x8006bf40

branch_0x8006be28:
    li      r3, 0x0
    b       branch_0x8006c0b8

branch_0x8006be30:
    lfs     f1, -0x6c08(r2)
    addi    r3, sp, 0xd4
    lfs     f0, -0x6bd8(r2)
    stfs    f1, 0x104(sp)
    fmr     f3, f1
    stfs    f1, 0x108(sp)
    stfs    f0, 0x10c(sp)
    lfs     f2, 0x34(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x104
    addi    r5, r4, 0x0
    addi    r3, sp, 0xd4
    bl      PSMTXMultVec
    lwz     r3, 0x178(r31)
    lfs     f2, 0x104(sp)
    lfs     f1, -0x7f0c(r13)
    lfs     f0, 0x10(r3)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x178(r31)
    lfs     f2, 0x10c(sp)
    lfs     f1, -0x7f0c(r13)
    lfs     f0, 0x18(r3)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x18(r3)
    lwz     r6, 0x178(r31)
    lfs     f1, -0x6ba8(r2)
    lfs     f0, 0xbc(r31)
    addi    r4, r6, 0x10
    lwz     r3, R13Off_m0x6328(r13)
    addi    r5, r6, 0x18
    fmuls   f2, f1, f0
    lfs     f1, 0x14(r6)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x8006bec8
    li      r3, 0x1
    b       branch_0x8006c0b8

branch_0x8006bec8:
    lwz     r5, 0x178(r31)
    addi    r4, sp, 0x110
    lfs     f2, -0x6ba4(r2)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    lfs     f1, 0x104(sp)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0xd0(sp)
    lfs     f0, 0xc8(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0xd0(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xd0(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0xc8(sp)
    lfs     f3, 0xd0(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x178(r31)
    lfs     f0, 0x14(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8006bfb8
    li      r3, 0x1
    b       branch_0x8006c0b8

branch_0x8006bf40:
    lwz     r3, 0x178(r31)
    addi    r4, sp, 0x110
    lfs     f0, -0x7f0c(r13)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r5, 0x178(r31)
    lfs     f0, 0xc0(r31)
    lfs     f1, 0x14(r5)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r5)
    lfs     f3, 0x18(r5)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x110(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x8006bfb8
    lwz     r4, 0x178(r31)
    lfs     f0, 0xc0(r31)
    lfs     f2, 0x14(r4)
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x8006bfb8
    lwz     r0, 0x44(r3)
    cmplw   r0, r4
    beq-    branch_0x8006bfb8
    li      r3, 0x1
    b       branch_0x8006c0b8

branch_0x8006bfb0:
    li      r3, 0x0
    b       branch_0x8006c0b8

branch_0x8006bfb8:
    lfs     f0, -0x6bbc(r2)
    addi    r3, sp, 0x8c
    lfs     f1, -0x6c08(r2)
    stfs    f0, 0xbc(sp)
    fmr     f3, f1
    stfs    f1, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    lfs     f2, 0x34(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0xbc
    addi    r5, r4, 0x0
    addi    r3, sp, 0x8c
    bl      PSMTXMultVec
    lwz     r4, 0x8c(r31)
    lis     r3, unk_88888889@ha
    addi    r0, r3, unk_88888889@l
    lwz     r4, 0x20(r4)
    mulhw   r0, r0, r4
    add     r0, r0, r4
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x1e
    subf    r0, r0, r4
    cmpwi   r0, 0xf
    ble-    branch_0x8006c060
    lwz     r3, 0x178(r31)
    lfs     f0, -0x6ba0(r2)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x178(r31)
    lfs     f0, 0xbc(sp)
    lfs     f1, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x178(r31)
    lfs     f0, 0xc4(sp)
    lfs     f1, 0x18(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    b       branch_0x8006c09c

branch_0x8006c060:
    lwz     r3, 0x178(r31)
    lfs     f0, -0x6ba0(r2)
    lfs     f1, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x178(r31)
    lfs     f0, 0xbc(sp)
    lfs     f1, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x178(r31)
    lfs     f0, 0xc4(sp)
    lfs     f1, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(r3)
branch_0x8006c09c:
    lwz     r3, 0x178(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8006c0b4
    li      r3, 0x1
    b       branch_0x8006c0b8

branch_0x8006c0b4:
    li      r3, 0x0
branch_0x8006c0b8:
    lwz     r0, 0x13c(sp)
    lwz     r31, 0x134(sp)
    lwz     r30, 0x130(sp)
    mtlr    r0
    addi    sp, sp, 0x138
    blr


.globl getChangeBlockTime__11TSmallEnemyFv
getChangeBlockTime__11TSmallEnemyFv: # 0x8006c0d0
    lwz     r3, R13Off_m0x7f04(r13)
    blr


.globl changeByJuice__11TSmallEnemyFv
changeByJuice__11TSmallEnemyFv: # 0x8006c0d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r4, R13Off_m0x6088(r13)
    lbz     r3, 0x5d5f(r4)
    cmplwi  r3, 0x1
    beq-    branch_0x8006c11c
    addi    r0, r3, -0x2
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    ble-    branch_0x8006c11c
    lbz     r0, R13Off_m0x6ea8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8006c324
branch_0x8006c11c:
    lwz     r0, 0x178(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8006c130
    li      r3, 0x1
    b       branch_0x8006c328

branch_0x8006c130:
    lis     r4, unk_400002c6@h
    lwz     r3, R13Off_m0x62b8(r13)
    lfs     f1, 0x10(r30)
    addi    r4, r4, unk_400002c6@l
    lfs     f2, 0x14(r30)
    li      r5, 0x1
    lfs     f3, 0x18(r30)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr      r31, r3
    stw     r31, 0x178(r30)
    lwz     r3, 0x178(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x8006c16c
    li      r3, 0x0
    b       branch_0x8006c328

branch_0x8006c16c:
    lfs     f0, -0x6b9c(r2)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x178(r30)
    lfs     f0, -0x6c08(r2)
    stfsu   f0, 0x140(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x178(r30)
    lfs     f1, 0x34(r30)
    stfsu   f0, 0x30(r3)
    stfs    f1, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x178(r30)
    stw     r30, 0x14c(r3)
    lwz     r3, 0x178(r30)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lbz     r0, R13Off_m0x6e80(r13)
    extsb.  r0, r0
    bne-    branch_0x8006c224
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveSmallEnemyChange@h
    stw     r0, R13Off_m0x6e7c(r13)
    addi    r0, r3, __vvt__22TNerveSmallEnemyChange@l
    lis     r4, __dt__22TNerveSmallEnemyChangeFv@ha
    stw     r0, R13Off_m0x6e7c(r13)
    lis     r3, unk_803f09b4@h
    addi    r5, r3, unk_803f09b4@l
    addi    r4, r4, __dt__22TNerveSmallEnemyChangeFv@l
    addi    r3, r13, R13Off_m0x6e7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6e80(r13)
branch_0x8006c224:
    addi    r6, r13, R13Off_m0x6e7c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8006c27c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8006c270
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8006c270
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8006c270:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8006c27c:
    lwz     r3, R13Off_m0x6088(r13)
    lbz     r0, 0x5d5f(r3)
    stb     r0, 0x185(r30)
    lbz     r0, R13Off_m0x6ea8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8006c298
    stb     r0, 0x185(r30)
branch_0x8006c298:
    lbz     r0, 0x185(r30)
    cmpwi   r0, 0x2
    beq-    branch_0x8006c2dc
    bge-    branch_0x8006c2b4
    cmpwi   r0, 0x1
    bge-    branch_0x8006c2c0
    b       branch_0x8006c310

branch_0x8006c2b4:
    cmpwi   r0, 0x4
    bge-    branch_0x8006c310
    b       branch_0x8006c2f8

branch_0x8006c2c0:
    li      r0, 0x1c2
    sth     r0, 0x138(r31)
    li      r3, 0xdc
    li      r0, 0x50
    sth     r3, 0x13a(r31)
    sth     r0, 0x13c(r31)
    b       branch_0x8006c310

branch_0x8006c2dc:
    li      r0, 0x118
    sth     r0, 0x138(r31)
    li      r3, 0x6e
    li      r0, 0x154
    sth     r3, 0x13a(r31)
    sth     r0, 0x13c(r31)
    b       branch_0x8006c310

branch_0x8006c2f8:
    li      r0, 0x1e0
    sth     r0, 0x138(r31)
    li      r3, 0xfa
    li      r0, 0x154
    sth     r3, 0x13a(r31)
    sth     r0, 0x13c(r31)
branch_0x8006c310:
    lwz     r0, 0xf0(r30)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r30)
    b       branch_0x8006c328

branch_0x8006c324:
    li      r3, 0x0
branch_0x8006c328:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl receiveMessage__11TSmallEnemyFP9THitActorUl
receiveMessage__11TSmallEnemyFP9THitActorUl: # 0x8006c340
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    addi    r29, r5, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006c3c0
    cmplwi  r29, 0x4
    bne-    branch_0x8006c3c0
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8006c3c0
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    stw     r31, 0x68(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8006c554

branch_0x8006c3c0:
    addi    r0, r29, -0x6
    cmplwi  r0, 0x1
    bgt-    branch_0x8006c408
    lwz     r0, 0x68(r30)
    cmplw   r0, r31
    bne-    branch_0x8006c408
    li      r0, 0x0
    stw     r0, 0x68(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x148(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r30)
    li      r3, 0x1
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    b       branch_0x8006c554

branch_0x8006c408:
    cmplwi  r29, 0x1
    ble-    branch_0x8006c438
    cmplwi  r29, 0x3
    beq-    branch_0x8006c438
    cmplwi  r29, 0xb
    beq-    branch_0x8006c438
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x21
    bne-    branch_0x8006c47c
    cmplwi  r29, 0xc
    bne-    branch_0x8006c47c
branch_0x8006c438:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r29
    lwz     r12, 0x178(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006c474
    li      r0, 0x0
    stb     r0, 0x184(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8006c474:
    li      r3, 0x1
    b       branch_0x8006c554

branch_0x8006c47c:
    cmplwi  r29, 0xd
    bne-    branch_0x8006c4a4
    li      r0, 0x0
    stb     r0, 0x13c(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
branch_0x8006c4a4:
    cmplwi  r29, 0xf
    bne-    branch_0x8006c550
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x6c08(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x160(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8006c548
    li      r0, 0x1
    stw     r0, 0x160(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x8006c548
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x18c(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    mr      r4, r31
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
branch_0x8006c548:
    li      r3, 0x1
    b       branch_0x8006c554

branch_0x8006c550:
    li      r3, 0x0
branch_0x8006c554:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl updateAnmSound__11TSmallEnemyFv
updateAnmSound__11TSmallEnemyFv: # 0x8006c570
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      updateAnmSound__10TLiveActorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl moveObject__11TSmallEnemyFv
moveObject__11TSmallEnemyFv: # 0x8006c590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    stw     r29, 0x8c(sp)
    stw     r28, 0x88(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8006c9c0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lis     r30, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0x84(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0x80(sp)
    lfd     f1, -0x6bf0(r2)
    mtlr    r12
    lfd     f0, 0x80(sp)
    fsubs   f29, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0x7c(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0x78(sp)
    mtlr    r12
    lfd     f0, 0x78(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0x74(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0x70(sp)
    mtlr    r12
    lfd     f0, 0x70(sp)
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x180(r3)
    mr      r3, r31
    lfs     f5, 0x148(r31)
    xoris   r0, r0, 0x8000
    lfd     f4, -0x6bf0(r2)
    stw     r0, 0x6c(sp)
    fmuls   f2, f29, f5
    fmuls   f1, f30, f5
    stw     r30, 0x68(sp)
    fmuls   f0, f31, f5
    lfd     f3, 0x68(sp)
    stfs    f2, 0x50(r31)
    fsubs   f2, f3, f4
    stfs    f1, 0x54(r31)
    fmuls   f1, f2, f5
    stfs    f0, 0x58(r31)
    stfs    f1, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6c08(r2)
    mr      r3, r31
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x180(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8006c720
    mr      r3, r31
    bl      calcRideMomentum__10TLiveActorFv
branch_0x8006c720:
    lfs     f29, -0x6c08(r2)
    li      r29, 0x0
    lfs     f30, -0x6bd8(r2)
    li      r30, 0x0
    lfs     f31, -0x6bd4(r2)
    b       branch_0x8006c898

branch_0x8006c738:
    lwz     r3, 0x44(r31)
    lwzx    r4, r3, r30
    lwz     r3, 0x4c(r4)
    addi    r28, r4, 0x0
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8006c75c
    li      r0, 0x1
    b       branch_0x8006c760

branch_0x8006c75c:
    li      r0, 0x0
branch_0x8006c760:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006c780
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    b       branch_0x8006c890

branch_0x8006c780:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r28
    lwz     r12, 0x17c(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006c890
    stfs    f29, 0x30(sp)
    stfs    f29, 0x34(sp)
    stfs    f29, 0x38(sp)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x10(r28)
    lfs     f3, 0x14(r31)
    lfs     f2, 0x14(r28)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r31)
    lfs     f1, 0x18(r28)
    fsubs   f2, f3, f2
    stfs    f0, 0x3c(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x40(sp)
    stfs    f0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    fcmpu   cr0, f29, f1
    bne-    branch_0x8006c808
    lfs     f0, 0x40(sp)
    fcmpu   cr0, f29, f0
    bne-    branch_0x8006c808
    lfs     f0, 0x44(sp)
    fcmpu   cr0, f29, f0
    bne-    branch_0x8006c808
    fadds   f0, f1, f30
    stfs    f0, 0x3c(sp)
branch_0x8006c808:
    addi    r3, sp, 0x3c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x140(r31)
    lfs     f1, 0x158(r31)
    fmuls   f2, f31, f0
    lfs     f0, 0x3c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x40(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x38(sp)
    stw     r0, 0x9c(r31)
branch_0x8006c890:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8006c898:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x8006c738
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x16c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
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
    lwz     r3, 0x160(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8006c954
    addi    r0, r3, 0x1
    stw     r0, 0x160(r31)
branch_0x8006c954:
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x1e
    ble-    branch_0x8006c968
    li      r0, 0x0
    stw     r0, 0x160(r31)
branch_0x8006c968:
    lwz     r3, 0xec(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8006c99c
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8006c99c
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r31, 0x24
    mtlr    r12
    blrl
branch_0x8006c99c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x180(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8006c9c0
    mr      r3, r31
    bl      calcRidePos__10TLiveActorFv
branch_0x8006c9c0:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    lwz     r28, 0x88(sp)
    addi    sp, sp, 0xb0
    blr


.globl moveSRT__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
moveSRT__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8006c9ec
    blr


.globl isCollidMove__11TSmallEnemyFP9THitActor
isCollidMove__11TSmallEnemyFP9THitActor: # 0x8006c9f0
    lwz     r0, 0x4c(r4)
    clrrwi  r5, r0, 16
    addis   r0, r5, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x8006ca0c
    li      r3, 0x0
    blr

branch_0x8006ca0c:
    lwz     r0, 0xf0(r4)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006ca20
    li      r0, 0x1
    b       branch_0x8006ca24

branch_0x8006ca20:
    li      r0, 0x0
branch_0x8006ca24:
    cmpwi   r0, 0x0
    bne-    branch_0x8006ca54
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006ca40
    li      r0, 0x1
    b       branch_0x8006ca44

branch_0x8006ca40:
    li      r0, 0x0
branch_0x8006ca44:
    cmpwi   r0, 0x0
    bne-    branch_0x8006ca54
    li      r3, 0x1
    blr

branch_0x8006ca54:
    li      r3, 0x0
    blr


.globl generateItem__11TSmallEnemyFv
generateItem__11TSmallEnemyFv: # 0x8006ca5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lfs     f1, -0x6c08(r2)
    lfs     f0, -0x6c00(r2)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x38(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x34(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x6bf0(r2)
    stw     r0, 0x44(sp)
    lis     r0, 0x4330
    addi    r3, r31, 0x0
    lfs     f0, -0x6bfc(r2)
    stw     r0, 0x40(sp)
    lwz     r12, 0x0(r31)
    lfd     f1, 0x40(sp)
    lwz     r12, 0x108(r12)
    fsubs   f2, f1, f2
    lfs     f1, 0x34(sp)
    mtlr    r12
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f31, f1, f0
    blrl
    lfs     f30, 0x220(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x20c(r3)
    fadds   f0, f30, f0
    fcmpo   cr0, f31, f0
    bge-    branch_0x8006cb48
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8006cb1c
    li      r0, 0x1
    b       branch_0x8006cb20

branch_0x8006cb1c:
    li      r0, 0x0
branch_0x8006cb20:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006cb48
    lis     r4, unk_20000008@h
    lwz     r3, R13Off_m0x62b8(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_20000008@l
    lfs     f2, 0xc8(r31)
    li      r5, 0x1
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x8006cb48:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x60
    blr


.globl setAfterDeadEffect__11TSmallEnemyFv
setAfterDeadEffect__11TSmallEnemyFv: # 0x8006cb64
    mflr    r0
    li      r4, 0xe4
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8006cbc8
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
branch_0x8006cbc8:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8006cc18
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
branch_0x8006cc18:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x295f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8006cc48
    addi    r4, r31, 0x10
    li      r3, 0x295f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8006cc48:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl genEventCoin__11TSmallEnemyFv
genEventCoin__11TSmallEnemyFv: # 0x8006cc5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stfd    f28, 0xe0(sp)
    stfd    f27, 0xd8(sp)
    stfd    f26, 0xd0(sp)
    stfd    f25, 0xc8(sp)
    stfd    f24, 0xc0(sp)
    stfd    f23, 0xb8(sp)
    stfd    f22, 0xb0(sp)
    stfd    f21, 0xa8(sp)
    stfd    f20, 0xa0(sp)
    stmw    r27, 0x8c(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 14, 14
    bne-    branch_0x8006cf1c
    lwz     r4, 0x180(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8006cd58
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x8006ccd0
    li      r0, 0x1
    b       branch_0x8006ccd4

branch_0x8006ccd0:
    li      r0, 0x0
branch_0x8006ccd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006ccf4
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r27, r3
    b       branch_0x8006cd0c

branch_0x8006ccf4:
    addi    r27, r4, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x0(r27)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x8006cd0c:
    cmplwi  r27, 0x0
    beq-    branch_0x8006cd58
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r27)
    stw     r0, 0x14(r27)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r27)
    lfs     f1, -0x6c08(r2)
    stfs    f1, 0xac(r27)
    lfs     f0, -0x6ba8(r2)
    stfs    f0, 0xb0(r27)
    stfs    f1, 0xb4(r27)
    lwz     r0, 0xf0(r27)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r27)
    lwz     r3, 0x18c(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x18c(r30)
branch_0x8006cd58:
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x8006cf1c
    lfs     f29, -0x6b94(r2)
    li      r31, 0x0
    lfs     f30, -0x6b90(r2)
    lis     r27, 0x4330
    lfs     f31, -0x6bf8(r2)
    lfs     f23, -0x6bb4(r2)
    lis     r28, 0x2000
    lfs     f24, -0x6b98(r2)
    lfd     f25, -0x6bf0(r2)
    lfs     f26, -0x6c08(r2)
    lfs     f27, -0x6bd8(r2)
    lfs     f28, -0x6c00(r2)
    lfs     f21, -0x6bfc(r2)
    b       branch_0x8006cf10

branch_0x8006cd9c:
    xoris   r0, r0, 0x8000
    lfs     f0, 0x34(r30)
    stw     r0, 0x84(sp)
    xoris   r3, r31, 0x8000
    lwz     r0, R13Off_m0x5eac(r13)
    stw     r27, 0x80(sp)
    lwz     r5, R13Off_m0x5ea8(r13)
    lfd     f1, 0x80(sp)
    stw     r3, 0x7c(sp)
    fsubs   f1, f1, f25
    lwz     r3, R13Off_m0x5ea4(r13)
    stw     r27, 0x78(sp)
    fdivs   f2, f24, f1
    lfd     f1, 0x78(sp)
    fsubs   f1, f1, f25
    fmadds  f0, f2, f1, f0
    fmuls   f0, f23, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r4, 0x74(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    lfsx    f2, r3, r0
    fneg    f0, f1
    stfs    f2, 0x40(sp)
    stfs    f26, 0x44(sp)
    stfs    f1, 0x48(sp)
    stfs    f26, 0x4c(sp)
    stfs    f26, 0x50(sp)
    stfs    f27, 0x54(sp)
    stfs    f26, 0x58(sp)
    stfs    f26, 0x5c(sp)
    stfs    f0, 0x60(sp)
    stfs    f26, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f26, 0x6c(sp)
    stfs    f26, 0x30(sp)
    stfs    f26, 0x34(sp)
    stfs    f28, 0x38(sp)
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x8006ce50
    stfs    f27, 0x38(sp)
branch_0x8006ce50:
    addi    r4, sp, 0x30
    addi    r5, r4, 0x0
    addi    r3, sp, 0x40
    bl      PSMTXMultVec
    lfs     f3, 0x10(r30)
    addi    r4, r28, 0xe
    lfs     f1, 0x30(sp)
    li      r5, 0x0
    lfs     f2, 0x18(r30)
    lfs     f0, 0x38(sp)
    fadds   f1, f3, f1
    lwz     r3, R13Off_m0x62b0(r13)
    fadds   f3, f2, f0
    lfs     f2, 0x14(r30)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r29, r3
    beq-    branch_0x8006cf0c
    lfs     f0, 0x14(r30)
    addi    r3, sp, 0x30
    addi    r4, r3, 0x0
    stfs    f0, 0x14(r29)
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f29, 0x28(sp)
    stfs    f30, 0x2c(sp)
    lfs     f2, 0x38(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x28(sp)
    fmuls   f22, f31, f2
    fsubs   f20, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x30(sp)
    stw     r0, 0x74(sp)
    fmuls   f0, f31, f0
    lfs     f1, 0x28(sp)
    stw     r27, 0x70(sp)
    lfd     f2, 0x70(sp)
    stfs    f0, 0xac(r29)
    fsubs   f0, f2, f25
    fmuls   f0, f21, f0
    fmuls   f0, f20, f0
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r29)
    stfs    f22, 0xb4(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
branch_0x8006cf0c:
    addi    r31, r31, 0x1
branch_0x8006cf10:
    lwz     r0, 0x18c(r30)
    cmpw    r31, r0
    blt+    branch_0x8006cd9c
branch_0x8006cf1c:
    lmw     r27, 0x8c(sp)
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    mtlr    r0
    lfd     f29, 0xe8(sp)
    lfd     f28, 0xe0(sp)
    lfd     f27, 0xd8(sp)
    lfd     f26, 0xd0(sp)
    lfd     f25, 0xc8(sp)
    lfd     f24, 0xc0(sp)
    lfd     f23, 0xb8(sp)
    lfd     f22, 0xb0(sp)
    lfd     f21, 0xa8(sp)
    lfd     f20, 0xa0(sp)
    addi    sp, sp, 0x100
    blr


.globl genRandomItem__11TSmallEnemyFv
genRandomItem__11TSmallEnemyFv: # 0x8006cf60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8006cfdc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x198(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lis     r3, unk_00020001@h
    lwz     r4, 0xf0(r31)
    addi    r0, r3, unk_00020001@l
    and.    r0, r4, r0
    bne-    branch_0x8006cfdc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x11c(r12)
    mtlr    r12
    blrl
branch_0x8006cfdc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl forceKill__11TSmallEnemyFv
forceKill__11TSmallEnemyFv: # 0x8006cff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8006d01c
    li      r0, 0x1
    b       branch_0x8006d020

branch_0x8006d01c:
    li      r0, 0x0
branch_0x8006d020:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006d0d8
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x800
    bne-    branch_0x8006d03c
    li      r0, 0x1
    b       branch_0x8006d040

branch_0x8006d03c:
    li      r0, 0x0
branch_0x8006d040:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006d0b0
    cmplwi  r3, 0x104
    beq-    branch_0x8006d060
    cmplwi  r3, 0x105
    beq-    branch_0x8006d060
    cmplwi  r3, 0x4104
    bne-    branch_0x8006d068
branch_0x8006d060:
    li      r0, 0x1
    b       branch_0x8006d06c

branch_0x8006d068:
    li      r0, 0x0
branch_0x8006d06c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8006d0b0
    cmplwi  r3, 0x100
    beq-    branch_0x8006d09c
    cmplwi  r3, 0x101
    beq-    branch_0x8006d09c
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8006d09c
    cmplwi  r3, 0x4104
    bne-    branch_0x8006d0a4
branch_0x8006d09c:
    li      r0, 0x1
    b       branch_0x8006d0a8

branch_0x8006d0a4:
    li      r0, 0x0
branch_0x8006d0a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8006d0d8
branch_0x8006d0b0:
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x8006d0c4
    li      r0, 0x1
    b       branch_0x8006d0c8

branch_0x8006d0c4:
    li      r0, 0x0
branch_0x8006d0c8:
    cmpwi   r0, 0x0
    bne-    branch_0x8006d0d8
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8006d0f0
branch_0x8006d0d8:
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    bne-    branch_0x8006d200
branch_0x8006d0f0:
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006d134
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    lis     r4, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    lis     r3, unk_803f0978@h
    addi    r5, r3, unk_803f0978@l
    addi    r4, r4, __dt__19TNerveSmallEnemyDieFv@l
    addi    r3, r13, R13Off_m0x6ea4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006d134:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6ea4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8006d200
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006d190
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r4, __vvt__19TNerveSmallEnemyDie@l
    lis     r4, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    lis     r5, unk_803f0978@h
    addi    r4, r4, __dt__19TNerveSmallEnemyDieFv@l
    addi    r5, r5, unk_803f0978@l
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006d190:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6ea4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8006d1a8
    stw     r0, 0x1c(r4)
branch_0x8006d1a8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x8006d1ec
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8006d1ec
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8006d1ec:
    lwz     r3, 0xf0(r31)
    li      r0, 0x1
    oris    r3, r3, 0x2
    stw     r3, 0xf0(r31)
    stb     r0, 0x13c(r31)
branch_0x8006d200:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl reset__11TSmallEnemyFv
reset__11TSmallEnemyFv: # 0x8006d214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stfd    f27, 0x118(sp)
    stfd    f26, 0x110(sp)
    stw     r31, 0x10c(sp)
    mr      r31, r3
    stw     r30, 0x108(sp)
    stw     r29, 0x104(sp)
    bl      reset__11TSpineEnemyFv
    lfs     f0, -0x6bd8(r2)
    mr      r3, r31
    stfs    f0, 0x158(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x2c4
    lfs     f1, 0x2c8(r3)
    lfs     f0, 0x2c4(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6bf0(r2)
    stw     r0, 0xfc(sp)
    lis     r29, 0x4330
    lfs     f0, -0x6bfc(r2)
    mr      r3, r31
    stw     r29, 0xf8(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0xf8(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x2cc
    lfs     f1, 0x2d0(r3)
    lfs     f0, 0x2cc(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6bf0(r2)
    stw     r0, 0xf4(sp)
    mr      r3, r31
    lfs     f0, -0x6bfc(r2)
    stw     r29, 0xf0(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0xf0(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f0, 0x148(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x190(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2c(r3)
    mr      r3, r31
    stfs    f0, 0xbc(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x40(r3)
    mr      r3, r31
    stfs    f0, 0x14c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x18(r3)
    mr      r3, r31
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xbc(r31)
    lfs     f2, -0x6b8c(r2)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xb8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8006d3b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8006d3bc

branch_0x8006d3b8:
    li      r0, 0x1
branch_0x8006d3bc:
    stb     r0, 0x13c(r31)
    mr      r3, r31
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 15, 13
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2c0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8006d420
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
    b       branch_0x8006d42c

branch_0x8006d420:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x800
    stw     r0, 0xf0(r31)
branch_0x8006d42c:
    lwz     r4, 0x124(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r31)
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x8006d490
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8006d490
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8006d490:
    lfs     f0, 0x148(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stw     r29, 0x160(r31)
    stb     r29, 0x165(r31)
    stb     r29, 0x184(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lis     r30, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0xf4(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xf0(sp)
    lfd     f1, -0x6bf0(r2)
    mtlr    r12
    lfd     f0, 0xf0(sp)
    fsubs   f26, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0xfc(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xf8(sp)
    mtlr    r12
    lfd     f0, 0xf8(sp)
    fsubs   f27, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0xec(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xe8(sp)
    mtlr    r12
    lfd     f0, 0xe8(sp)
    fsubs   f28, f0, f1
    blrl
    lwz     r0, 0x180(r3)
    mr      r3, r31
    lfs     f5, 0x148(r31)
    xoris   r0, r0, 0x8000
    lfd     f4, -0x6bf0(r2)
    stw     r0, 0xe4(sp)
    fmuls   f2, f26, f5
    fmuls   f1, f27, f5
    stw     r30, 0xe0(sp)
    fmuls   f0, f28, f5
    lfd     f3, 0xe0(sp)
    stfs    f2, 0x50(r31)
    fsubs   f2, f3, f4
    stfs    f1, 0x54(r31)
    fmuls   f1, f2, f5
    stfs    f0, 0x58(r31)
    stfs    f1, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    stb     r29, 0x164(r31)
    mr      r3, r31
    lfs     f26, 0x38(r31)
    lfs     f27, 0x34(r31)
    lfs     f28, 0x30(r31)
    lfs     f29, 0x18(r31)
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x6bb4(r2)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0xd8(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0xd0(sp)
    lwz     r4, 0xdc(sp)
    stfd    f0, 0xc8(sp)
    lwz     r5, 0xd4(sp)
    lwz     r6, 0xcc(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    mtlr    r0
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lfd     f27, 0x118(sp)
    lfd     f26, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x140
    blr


.globl attackToMario__11TSmallEnemyFv
attackToMario__11TSmallEnemyFv: # 0x8006d648
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6c08(r2)
    addi    r3, sp, 0x20
    addi    r4, r3, 0x0
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x34(sp)
    lwz     r5, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x0(r5)
    lfs     f3, 0x14(r31)
    lfs     f2, 0x4(r5)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r31)
    lfs     f1, 0x8(r5)
    fsubs   f2, f3, f2
    stfs    f0, 0x20(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x24(sp)
    stfs    f0, 0x28(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x20(sp)
    stfs    f0, 0xac(r31)
    lfs     f0, 0x28(sp)
    stfs    f0, 0xb4(r31)
    lfs     f2, 0x148(r31)
    lfs     f1, 0xbc(r31)
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
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x20(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x24(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x28(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x34(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl sendAttackMsgToMario__11TSmallEnemyFv
sendAttackMsgToMario__11TSmallEnemyFv: # 0x8006d758
    mflr    r0
    li      r4, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToWater__11TSmallEnemyFP9THitActor
behaveToWater__11TSmallEnemyFP9THitActor: # 0x8006d77c
    mflr    r0
    lis     r4, unk_803f0978@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, unk_803f0978@l
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    lbz     r0, R13Off_m0x6ea0(r13)
    extsb.  r0, r0
    bne-    branch_0x8006d7dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveSmallEnemyFreeze@h
    stw     r0, R13Off_m0x6e9c(r13)
    addi    r0, r3, __vvt__22TNerveSmallEnemyFreeze@l
    lis     r3, __dt__22TNerveSmallEnemyFreezeFv@ha
    stw     r0, R13Off_m0x6e9c(r13)
    addi    r4, r3, __dt__22TNerveSmallEnemyFreezeFv@l
    addi    r3, r13, R13Off_m0x6e9c
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea0(r13)
branch_0x8006d7dc:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6e9c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8006d8dc
    lbz     r0, R13Off_m0x6ea7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006d830
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveSmallEnemyDie@h
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r0, r3, __vvt__19TNerveSmallEnemyDie@l
    lis     r3, __dt__19TNerveSmallEnemyDieFv@ha
    stw     r0, R13Off_m0x6ea4(r13)
    addi    r4, r3, __dt__19TNerveSmallEnemyDieFv@l
    addi    r3, r13, R13Off_m0x6ea4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea7(r13)
branch_0x8006d830:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6ea4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8006d8dc
    lbz     r0, R13Off_m0x6ea0(r13)
    extsb.  r0, r0
    bne-    branch_0x8006d884
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveSmallEnemyFreeze@h
    stw     r0, R13Off_m0x6e9c(r13)
    addi    r0, r3, __vvt__22TNerveSmallEnemyFreeze@l
    lis     r3, __dt__22TNerveSmallEnemyFreezeFv@ha
    stw     r0, R13Off_m0x6e9c(r13)
    addi    r4, r3, __dt__22TNerveSmallEnemyFreezeFv@l
    addi    r3, r13, R13Off_m0x6e9c
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6ea0(r13)
branch_0x8006d884:
    addi    r6, r13, R13Off_m0x6e9c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8006d8dc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8006d8d0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8006d8d0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8006d8d0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8006d8dc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl loadAfter__11TSmallEnemyFv
loadAfter__11TSmallEnemyFv: # 0x8006d8f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x17c(r3)
    bl      newAndRegisterCoin__12TItemManagerFUl
    stw     r3, 0x180(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__11TSmallEnemyFR20JSUMemoryInputStream
load__11TSmallEnemyFR20JSUMemoryInputStream: # 0x8006d928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x17c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x17c(r30)
    cmpwi   r0, 0x65
    beq-    branch_0x8006d96c
    li      r0, 0x1
    stw     r0, 0x18c(r30)
branch_0x8006d96c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__11TSmallEnemyFP12TLiveManager
init__11TSmallEnemyFP12TLiveManager: # 0x8006d998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stfd    f30, 0x118(sp)
    stfd    f29, 0x110(sp)
    stw     r31, 0x10c(sp)
    mr      r31, r3
    stw     r30, 0x108(sp)
    stw     r29, 0x104(sp)
    stw     r4, 0x70(r3)
    addi    r3, r4, 0x0
    addi    r4, r31, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8006da18
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8006da18
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2000
    stw     r0, 0xf0(r31)
branch_0x8006da18:
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lfs     f0, -0x6bd8(r2)
    stfs    f0, 0x158(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r29, r3, 0x2c4
    lfs     f1, 0x2c8(r3)
    lfs     f0, 0x2c4(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6bf0(r2)
    stw     r0, 0xfc(sp)
    lis     r30, 0x4330
    lfs     f0, -0x6bfc(r2)
    mr      r3, r31
    stw     r30, 0xf8(sp)
    lfs     f1, 0x0(r29)
    lfd     f2, 0xf8(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    addi    r29, r3, 0x2cc
    lfs     f1, 0x2d0(r3)
    lfs     f0, 0x2cc(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6bf0(r2)
    stw     r0, 0xf4(sp)
    mr      r3, r31
    lfs     f0, -0x6bfc(r2)
    stw     r30, 0xf0(sp)
    lfs     f1, 0x0(r29)
    lfd     f2, 0xf0(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f0, 0x148(r31)
    stfs    f0, 0x154(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2c(r3)
    mr      r3, r31
    stfs    f0, 0xbc(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x40(r3)
    mr      r3, r31
    stfs    f0, 0x14c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x18(r3)
    mr      r3, r31
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xbc(r31)
    lfs     f2, -0x6b8c(r2)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0xb8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0xec(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xe8(sp)
    mtlr    r12
    lfd     f0, 0xe8(sp)
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0xe4(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xe0(sp)
    mtlr    r12
    lfd     f0, 0xe0(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6bf0(r2)
    stw     r0, 0xdc(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xd8(sp)
    mtlr    r12
    lfd     f0, 0xd8(sp)
    fsubs   f29, f0, f1
    blrl
    lwz     r0, 0x180(r3)
    mr      r3, r31
    lfs     f5, 0x148(r31)
    li      r4, 0x0
    xoris   r0, r0, 0x8000
    stw     r0, 0xd4(sp)
    fmuls   f1, f31, f5
    lfd     f4, -0x6bf0(r2)
    fmuls   f2, f30, f5
    stw     r30, 0xd0(sp)
    fmuls   f3, f29, f5
    lfd     f0, 0xd0(sp)
    li      r5, 0x5
    lis     r6, 0x9800
    fsubs   f0, f0, f4
    fmuls   f4, f0, f5
    bl      initHitActor__9THitActorFUlUsiffff
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8006dc60
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8006dc74
branch_0x8006dc60:
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r2, R2Off_m0x6b88
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    stw     r3, 0x0(r4)
branch_0x8006dc74:
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6c08(r2)
    stw     r3, 0xbc(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    beq-    branch_0x8006dcac
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f2, 0xc8(sp)
branch_0x8006dcac:
    lwz     r4, 0xbc(sp)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0xf4(r31)
    lwz     r5, 0xc0(sp)
    lwz     r4, 0xc4(sp)
    stw     r5, 0xf8(r31)
    stw     r4, 0xfc(r31)
    lwz     r4, 0xc8(sp)
    stw     r4, 0x100(r31)
    lwz     r4, 0xbc(sp)
    stw     r4, 0x104(r31)
    lwz     r5, 0xc0(sp)
    lwz     r4, 0xc4(sp)
    stw     r5, 0x108(r31)
    stw     r4, 0x10c(r31)
    lwz     r4, 0xc8(sp)
    stw     r4, 0x110(r31)
    stw     r0, 0x118(r31)
    bl      initAnmSound__10TLiveActorFv
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    mtlr    r0
    lfd     f29, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x128
    blr


.globl setMActorAndKeeper__11TSmallEnemyFv
setMActorAndKeeper__11TSmallEnemyFv: # 0x8006dd24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x18(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8006dd5c
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8006dd5c:
    stw     r30, 0x78(r31)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActorFromNthData__13TMActorKeeperFiUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__11TSmallEnemyFPCc
__ct__11TSmallEnemyFPCc: # 0x8006dd8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r4, 0x150(r31)
    lfs     f0, -0x6bd8(r2)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stw     r0, 0x15c(r31)
    stw     r4, 0x160(r31)
    stb     r4, 0x164(r31)
    stb     r4, 0x165(r31)
    stw     r4, 0x174(r31)
    stw     r4, 0x178(r31)
    stw     r0, 0x17c(r31)
    stw     r4, 0x180(r31)
    stb     r4, 0x184(r31)
    stb     r4, 0x185(r31)
    stfs    f0, 0x188(r31)
    stw     r4, 0x18c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getHolder__18TSmallEnemyManagerFi
getHolder__18TSmallEnemyManagerFi: # 0x8006de18
    lwz     r7, 0x38(r3)
    li      r8, 0x0
    li      r5, 0x0
    b       branch_0x8006de54

branch_0x8006de28:
    cmpw    r8, r4
    beq-    branch_0x8006de4c
    lwz     r6, 0x18(r3)
    lwzx    r6, r6, r5
    lwz     r0, 0xf0(r6)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8006de4c
    mr      r3, r6
    blr

branch_0x8006de4c:
    addi    r8, r8, 0x1
    addi    r5, r5, 0x4
branch_0x8006de54:
    cmplwi  r7, 0x0
    bne-    branch_0x8006de64
    lwz     r6, 0x14(r3)
    b       branch_0x8006de7c

branch_0x8006de64:
    lbz     r0, 0xa4(r7)
    lwz     r6, 0x14(r3)
    cmpw    r0, r6
    ble-    branch_0x8006de78
    b       branch_0x8006de7c

branch_0x8006de78:
    mr      r6, r0
branch_0x8006de7c:
    cmpw    r8, r6
    blt+    branch_0x8006de28
    li      r3, 0x0
    blr


.globl createEnemies__18TSmallEnemyManagerFi
createEnemies__18TSmallEnemyManagerFi: # 0x8006de8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      createEnemies__13TEnemyManagerFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__18TSmallEnemyManagerFv
loadAfter__18TSmallEnemyManagerFv: # 0x8006decc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lis     r3, unk_80379d20@ha
    addi    r3, r3, unk_80379d20@l
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r0, 0x10(r31)
    addi    r6, r3, 0x0
    lwz     r4, R13Off_m0x62f0(r13)
    clrlwi  r5, r0, 16
    addi    r3, r4, 0x70
    li      r4, 0x1
    bl      registerTexStamp__22TPollutionCounterLayerFUsUsP7ResTIMG
    sth     r3, 0x58(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__18TSmallEnemyManagerFR20JSUMemoryInputStream
load__18TSmallEnemyManagerFR20JSUMemoryInputStream: # 0x8006df24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__18TSmallEnemyManagerFv
createModelData__18TSmallEnemyManagerFv: # 0x8006df44
    mflr    r0
    lis     r4, entry_3006_803b2330@h
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3006_803b2330@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__18TSmallEnemyManagerFPCc
__ct__18TSmallEnemyManagerFPCc: # 0x8006df78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r31)
    li      r3, 0x0
    li      r0, 0x3c
    sth     r3, 0x58(r31)
    mr      r3, r31
    stw     r0, 0x5c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__17TSmallEnemyParamsFPCc
__ct__17TSmallEnemyParamsFPCc: # 0x8006dfc4
    mflr    r0
    lis     r5, unk_80379c00@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r23, 0x24(sp)
    addi    r30, r5, unk_80379c00@l
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x13c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x13c
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xa8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6bf4(r2)
    addi    r3, r30, 0x14c
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x14c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x15c
    lfs     f0, -0x6b80(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x15c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x16c
    lfs     f0, -0x6b7c(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x16c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x17c
    lfs     f0, -0x6b78(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x17c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x18c
    lfs     f0, -0x6b74(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x18c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x19c
    lfs     f0, -0x6b70(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x19c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x1ac
    lfs     f0, -0x6b6c(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x1ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0x134(r31)
    li      r0, 0x78
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x144(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x1bc
    stw     r26, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x1bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x148(r31)
    li      r23, 0x12c
    addi    r3, r30, 0x1cc
    stw     r23, 0x158(r31)
    stw     r26, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x1cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x15c(r31)
    li      r25, 0x50
    addi    r3, r30, 0x1dc
    stw     r25, 0x16c(r31)
    stw     r26, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x1dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x170(r31)
    li      r24, 0x3c
    addi    r3, r30, 0x1ec
    stw     r24, 0x180(r31)
    stw     r26, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x1ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    addi    r3, r30, 0x1fc
    stw     r25, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x1fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    addi    r3, r30, 0x20c
    stw     r24, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x20c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x21c
    lfs     f0, -0x6bd4(r2)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x21c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x230
    lfs     f0, -0x6b68(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x230
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x240
    lfs     f0, -0x6b64(r2)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x240
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x254
    lfs     f0, -0x6b60(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x254
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x264
    lfs     f0, -0x6b5c(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x264
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x274
    lfs     f0, -0x6bf4(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x274
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r28, r3, __vvt__11TParamT_Uc_@l
    stw     r28, 0x224(r31)
    li      r25, 0x5
    lis     r3, __vvt__12TParamRT_Uc_@ha
    stb     r25, 0x234(r31)
    addi    r29, r3, __vvt__12TParamRT_Uc_@l
    addi    r3, r30, 0x284
    stw     r29, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x284
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x238(r31)
    li      r0, 0x64
    addi    r3, r30, 0x290
    stw     r0, 0x248(r31)
    stw     r26, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x290
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x24c(r31)
    li      r0, 0x1
    addi    r3, r30, 0x2a0
    stw     r0, 0x25c(r31)
    stw     r26, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x2a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x260(r31)
    li      r0, 0x3
    addi    r3, r30, 0x2b0
    stw     r0, 0x270(r31)
    stw     r26, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x2b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x274(r31)
    addi    r3, r30, 0x2c0
    stw     r23, 0x284(r31)
    stw     r26, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x2c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x288(r31)
    addi    r3, r30, 0x2d0
    stb     r25, 0x298(r31)
    stw     r29, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x2d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x29c(r31)
    addi    r3, r30, 0x2e4
    stw     r24, 0x2ac(r31)
    stw     r26, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x2e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x2b0(r31)
    li      r0, 0x0
    mr      r3, r31
    stb     r0, 0x2c0(r31)
    stw     r29, 0x2b0(r31)
    lfs     f1, -0x6c08(r2)
    stfs    f1, 0x2c4(r31)
    lfs     f0, -0x6bd8(r2)
    stfs    f0, 0x2c8(r31)
    stfs    f1, 0x2cc(r31)
    stfs    f0, 0x2d0(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, 0x1bc(r31)
    mr      r3, r31
    stfs    f0, 0x2c4(r31)
    lfs     f0, 0x1d0(r31)
    stfs    f0, 0x2c8(r31)
    lfs     f0, 0x1e4(r31)
    stfs    f0, 0x2cc(r31)
    lfs     f0, 0x1f8(r31)
    stfs    f0, 0x2d0(r31)
    lwz     r0, 0x4c(sp)
    lmw     r23, 0x24(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __sinit_smallEnemy_cpp
__sinit_smallEnemy_cpp: # 0x8006e508
    mflr    r0
    lis     r3, unk_803f0978@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f0978@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e550
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8006e550:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e580
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8006e580:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e5b0
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8006e5b0:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e5e0
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8006e5e0:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e610
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8006e610:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e640
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8006e640:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e670
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8006e670:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e6a0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8006e6a0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e6d0
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8006e6d0:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e700
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8006e700:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e730
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8006e730:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e760
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8006e760:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e790
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8006e790:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e7c0
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8006e7c0:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8006e7f0
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8006e7f0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8006e804
unk_8006e804: # 0x8006e804
    addi    r3, r3, -0x20
    b       __dt__11TSmallEnemyFv

