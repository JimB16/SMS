
.globl __dt__19TNerveBGKLaunchNameFv
__dt__19TNerveBGKLaunchNameFv: # 0x800f8acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f8b10
    lis     r3, 0x803c
    subi    r0, r3, 0x4a28
    stw     r0, 0x0(r31)
    beq-    branch_0x800f8b00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f8b00:
    extsh.  r0, r4
    ble-    branch_0x800f8b10
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f8b10:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveBGKLaunchNameCFP24TSpineBase_10TLiveActor_
execute__19TNerveBGKLaunchNameCFP24TSpineBase_10TLiveActor_: # 0x800f8b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f8b5c
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f8b5c:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x34
    bne-    branch_0x800f8b98
    mr      r3, r30
    bl      launchNamekuri__17TBiancoGateKeeperFv
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f8b98
    mr      r3, r30
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r30)
    addi    r5, r30, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f8b98:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800f8c30
    lbz     r0, -0x67c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8bf4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8010
    stw     r0, -0x67bc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2834
    subi    r4, r4, 0x73b4
    subi    r3, r13, 0x67bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c0(r13)
branch_0x800f8bf4:
    subi    r4, r13, 0x67bc
    cmplwi  r4, 0x0
    beq-    branch_0x800f8c28
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f8c28
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f8c28:
    li      r3, 0x1
    b       branch_0x800f8c34

branch_0x800f8c30:
    li      r3, 0x0
branch_0x800f8c34:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__15TNerveBGKAppearFv
__dt__15TNerveBGKAppearFv: # 0x800f8c4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f8c90
    lis     r3, 0x803c
    subi    r0, r3, 0x4904
    stw     r0, 0x0(r31)
    beq-    branch_0x800f8c80
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f8c80:
    extsh.  r0, r4
    ble-    branch_0x800f8c90
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f8c90:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveBGKLaunchGoroCFP24TSpineBase_10TLiveActor_
execute__19TNerveBGKLaunchGoroCFP24TSpineBase_10TLiveActor_: # 0x800f8ca8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f8cdc
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f8cdc:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x34
    bne-    branch_0x800f8d3c
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    addi    r5, r4, 0x2a9c
    addi    r4, r30, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800f8d14
    addi    r4, r30, 0x10
    addi    r5, r30, 0x30
    bl      generateByGateKeeper__9TGorogoroFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x800f8d14:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f8d3c
    mr      r3, r30
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r30)
    addi    r5, r30, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f8d3c:
    lha     r0, 0x17c(r30)
    cmpwi   r0, 0xff
    blt-    branch_0x800f8dc8
    lbz     r0, -0x67c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8d8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8010
    stw     r0, -0x67bc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2834
    subi    r4, r4, 0x73b4
    subi    r3, r13, 0x67bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c0(r13)
branch_0x800f8d8c:
    subi    r4, r13, 0x67bc
    cmplwi  r4, 0x0
    beq-    branch_0x800f8dc0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f8dc0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f8dc0:
    li      r3, 0x1
    b       branch_0x800f8e64

branch_0x800f8dc8:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800f8e60
    lbz     r0, -0x67c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8e24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67c4(r13)
    subi    r0, r3, 0x48f4
    lis     r4, 0x8010
    stw     r0, -0x67c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2828
    subi    r4, r4, 0x7184
    subi    r3, r13, 0x67c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c8(r13)
branch_0x800f8e24:
    subi    r4, r13, 0x67c4
    cmplwi  r4, 0x0
    beq-    branch_0x800f8e58
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f8e58
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f8e58:
    li      r3, 0x1
    b       branch_0x800f8e64

branch_0x800f8e60:
    li      r3, 0x0
branch_0x800f8e64:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__14TNerveBGKSleepFv
__dt__14TNerveBGKSleepFv: # 0x800f8e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f8ec0
    lis     r3, 0x803c
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
    beq-    branch_0x800f8eb0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f8eb0:
    extsh.  r0, r4
    ble-    branch_0x800f8ec0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f8ec0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TNerveBGKLaunchGoroFv
__dt__19TNerveBGKLaunchGoroFv: # 0x800f8ed8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f8f1c
    lis     r3, 0x803c
    subi    r0, r3, 0x4974
    stw     r0, 0x0(r31)
    beq-    branch_0x800f8f0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f8f0c:
    extsh.  r0, r4
    ble-    branch_0x800f8f1c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f8f1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__13TNerveBGKDiveCFP24TSpineBase_10TLiveActor_
execute__13TNerveBGKDiveCFP24TSpineBase_10TLiveActor_: # 0x800f8f34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f8f6c
    addi    r3, r31, 0x0
    li      r4, 0x6
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f8f6c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xf0
    bne-    branch_0x800f8fc0
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x1df
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x2
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f8fc0
    mr      r3, r31
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r31)
    addi    r5, r31, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f8fc0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800f911c
    lbz     r0, 0x292(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800f909c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0xe0(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x57e8(rtoc)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lis     r3, 0x8038
    lfs     f1, -0x57f0(rtoc)
    stw     r0, 0x50(sp)
    lfs     f0, -0x57ec(rtoc)
    addi    r5, r3, 0x2a9c
    lfd     f2, 0x50(sp)
    addi    r4, r31, 0x10
    li      r6, 0x0
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    add     r29, r0, r29
    subi    r29, r29, 0x78
    extsh   r0, r29
    sth     r0, 0x298(r31)
    lwz     r3, -0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800f9074
    addi    r4, r31, 0x10
    addi    r5, r31, 0x30
    bl      generateByGateKeeper__9TGorogoroFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x800f9074:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f909c
    mr      r3, r31
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r31)
    addi    r5, r31, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f909c:
    lbz     r0, -0x67c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f90e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67c4(r13)
    subi    r0, r3, 0x48f4
    lis     r4, 0x8010
    stw     r0, -0x67c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2828
    subi    r4, r4, 0x7184
    subi    r3, r13, 0x67c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c8(r13)
branch_0x800f90e0:
    subi    r4, r13, 0x67c4
    cmplwi  r4, 0x0
    beq-    branch_0x800f9114
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800f9114
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800f9114:
    li      r3, 0x1
    b       branch_0x800f9120

branch_0x800f911c:
    li      r3, 0x0
branch_0x800f9120:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl __dt__13TNerveBGKDiveFv
__dt__13TNerveBGKDiveFv: # 0x800f913c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f9180
    lis     r3, 0x803c
    subi    r0, r3, 0x4964
    stw     r0, 0x0(r31)
    beq-    branch_0x800f9170
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f9170:
    extsh.  r0, r4
    ble-    branch_0x800f9180
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f9180:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBGKDieCFP24TSpineBase_10TLiveActor_
execute__12TNerveBGKDieCFP24TSpineBase_10TLiveActor_: # 0x800f9198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r4
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f9310
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      changeBck__17TBiancoGateKeeperFi
    lbz     r0, 0x292(r30)
    extsb   r0, r0
    cmpwi   r0, 0x3
    beq-    branch_0x800f91ec
    cmpwi   r0, 0x4
    bne-    branch_0x800f91f8
branch_0x800f91ec:
    lbz     r0, 0x296(r30)
    extsb.  r0, r0
    beq-    branch_0x800f9310
branch_0x800f91f8:
    lis     r3, 0x8038
    lwz     r6, 0x4(r30)
    addi    r5, r3, 0x2ab4
    crxor   6, 6, 6
    addi    r3, r30, 0x188
    li      r4, 0x100
    bl      snprintf
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x8c(sp)
    addi    r0, sp, 0x8c
    addi    r4, r30, 0x188
    stw     r0, 0x8(sp)
    addi    r5, r30, 0x10
    li      r6, -0x1
    lfs     f1, -0x57e0(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lbz     r3, 0x292(r30)
    li      r4, 0x0
    extsb   r3, r3
    bl      setGateKeeperBGMPlayFlag__10MSMainProcFUlb
    bl      getGateKeeperBGMStopFlag__10MSMainProcFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f9278
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    b       branch_0x800f928c

branch_0x800f9278:
    lfs     f1, -0x57e0(rtoc)
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x800f928c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBpkFromIndex__6MActorFi
    lwz     r3, 0x74(r30)
    li      r4, 0x2
    bl      getFrameCtrl__6MActorFi
    mr.     r29, r3
    beq-    branch_0x800f92bc
    lfs     f0, -0x57e0(rtoc)
    stfs    f0, 0x10(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r29)
branch_0x800f92bc:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0xa7
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0x120
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800f92f0
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800f92f0:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0xa8
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800f9310:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x154
    bne-    branch_0x800f9394
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x1df
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x2
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x38b0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800f936c
    addi    r4, r30, 0x10
    li      r3, 0x38b0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800f936c:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f9394
    mr      r3, r30
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r30)
    addi    r5, r30, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f9394:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f9404
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800f9404
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f3, 0x10(r3)
    addi    r3, r30, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x94(sp)
    lfd     f2, -0x57e8(rtoc)
    stw     r0, 0x90(sp)
    lfs     f0, -0x57dc(rtoc)
    lfd     f1, 0x90(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    fsubs   f31, f0, f1
    bl      getRumblePow__17TBiancoGateKeeperFv
    fmuls   f0, f31, f1
    addi    r5, r30, 0x29c
    li      r4, 0x8
    stfs    f0, 0x29c(r30)
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f9404:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800f9580
    lbz     r0, 0x292(r30)
    extsb   r0, r0
    cmpwi   r0, 0x3
    beq-    branch_0x800f9434
    cmpwi   r0, 0x4
    bne-    branch_0x800f955c
branch_0x800f9434:
    lbz     r0, 0x296(r30)
    extsb.  r0, r0
    bne-    branch_0x800f955c
    lbz     r3, 0x296(r30)
    li      r0, 0x3
    addi    r3, r3, 0x1
    stb     r3, 0x296(r30)
    stb     r0, 0x13c(r30)
    lbz     r0, 0x292(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x800f94dc
    lbz     r0, -0x6780(r13)
    extsb.  r0, r0
    bne-    branch_0x800f94a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x677c(r13)
    subi    r0, r3, 0x4a28
    lis     r4, 0x8010
    stw     r0, -0x677c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2894
    subi    r4, r4, 0x7534
    subi    r3, r13, 0x677c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6780(r13)
branch_0x800f94a4:
    subi    r4, r13, 0x677c
    cmplwi  r4, 0x0
    beq-    branch_0x800f9554
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f9554
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x800f9554

branch_0x800f94dc:
    lbz     r0, -0x67c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f9520
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67bc(r13)
    subi    r0, r3, 0x4904
    lis     r4, 0x8010
    stw     r0, -0x67bc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2834
    subi    r4, r4, 0x73b4
    subi    r3, r13, 0x67bc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c0(r13)
branch_0x800f9520:
    subi    r4, r13, 0x67bc
    cmplwi  r4, 0x0
    beq-    branch_0x800f9554
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f9554
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f9554:
    li      r3, 0x1
    b       branch_0x800f9584

branch_0x800f955c:
    li      r0, 0x0
    stb     r0, 0x160(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800f9584

branch_0x800f9580:
    li      r3, 0x0
branch_0x800f9584:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__12TNerveBGKDieFv
__dt__12TNerveBGKDieFv: # 0x800f95a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f95e8
    lis     r3, 0x803c
    subi    r0, r3, 0x4954
    stw     r0, 0x0(r31)
    beq-    branch_0x800f95d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f95d8:
    extsh.  r0, r4
    ble-    branch_0x800f95e8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f95e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveBGKAwakeDamageCFP24TSpineBase_10TLiveActor_
execute__20TNerveBGKAwakeDamageCFP24TSpineBase_10TLiveActor_: # 0x800f9600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r4
    stw     r30, 0x60(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f9634
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f9634:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    bne-    branch_0x800f9650
    li      r0, 0x1
    b       branch_0x800f96d0

branch_0x800f9650:
    lbz     r4, 0x5(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x800f9664
    li      r0, 0x1
    b       branch_0x800f9668

branch_0x800f9664:
    li      r0, 0x0
branch_0x800f9668:
    cmpwi   r0, 0x0
    bne-    branch_0x800f96c4
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x800f9680
    li      r0, 0x1
    b       branch_0x800f9684

branch_0x800f9680:
    li      r0, 0x0
branch_0x800f9684:
    cmpwi   r0, 0x0
    bne-    branch_0x800f96c4
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x57d8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0x5c(sp)
    lfd     f1, -0x57e8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800f96cc
branch_0x800f96c4:
    li      r0, 0x1
    b       branch_0x800f96d0

branch_0x800f96cc:
    li      r0, 0x0
branch_0x800f96d0:
    cmpwi   r0, 0x0
    beq-    branch_0x800f97e4
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800f9764
    lbz     r0, -0x67b0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f972c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67ac(r13)
    subi    r0, r3, 0x4924
    lis     r4, 0x8010
    stw     r0, -0x67ac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x284c
    subi    r4, r4, 0x67a4
    subi    r3, r13, 0x67ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67b0(r13)
branch_0x800f972c:
    subi    r4, r13, 0x67ac
    cmplwi  r4, 0x0
    beq-    branch_0x800f97dc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f97dc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x800f97dc

branch_0x800f9764:
    lbz     r0, -0x67b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f97a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67b4(r13)
    subi    r0, r3, 0x4914
    lis     r4, 0x8010
    stw     r0, -0x67b4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2840
    subi    r4, r4, 0x6800
    subi    r3, r13, 0x67b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67b8(r13)
branch_0x800f97a8:
    subi    r4, r13, 0x67b4
    cmplwi  r4, 0x0
    beq-    branch_0x800f97dc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f97dc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f97dc:
    li      r3, 0x1
    b       branch_0x800f97e8

branch_0x800f97e4:
    li      r3, 0x0
branch_0x800f97e8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__13TNerveBGKWaitFv
__dt__13TNerveBGKWaitFv: # 0x800f9800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f9844
    lis     r3, 0x803c
    subi    r0, r3, 0x4914
    stw     r0, 0x0(r31)
    beq-    branch_0x800f9834
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f9834:
    extsh.  r0, r4
    ble-    branch_0x800f9844
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f9844:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14TNerveBGKWait2Fv
__dt__14TNerveBGKWait2Fv: # 0x800f985c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f98a0
    lis     r3, 0x803c
    subi    r0, r3, 0x4924
    stw     r0, 0x0(r31)
    beq-    branch_0x800f9890
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f9890:
    extsh.  r0, r4
    ble-    branch_0x800f98a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f98a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20TNerveBGKAwakeDamageFv
__dt__20TNerveBGKAwakeDamageFv: # 0x800f98b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f98fc
    lis     r3, 0x803c
    subi    r0, r3, 0x4944
    stw     r0, 0x0(r31)
    beq-    branch_0x800f98ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f98ec:
    extsh.  r0, r4
    ble-    branch_0x800f98fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f98fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveBGKSleepDamageCFP24TSpineBase_10TLiveActor_
execute__20TNerveBGKSleepDamageCFP24TSpineBase_10TLiveActor_: # 0x800f9914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f994c
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f994c:
    lbz     r0, 0x292(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800f9a30
    lha     r3, 0x298(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800f996c
    subi    r0, r3, 0x1
    sth     r0, 0x298(r30)
branch_0x800f996c:
    lha     r0, 0x298(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800f9a30
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0xf4(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x57e8(rtoc)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lis     r3, 0x8038
    lfs     f1, -0x57f0(rtoc)
    stw     r0, 0x48(sp)
    lfs     f0, -0x57ec(rtoc)
    addi    r5, r3, 0x2a9c
    lfd     f2, 0x48(sp)
    addi    r4, r30, 0x10
    li      r6, 0x0
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r29, r0, r29
    subi    r29, r29, 0x78
    extsh   r0, r29
    sth     r0, 0x298(r30)
    lwz     r3, -0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800f9a08
    addi    r4, r30, 0x10
    addi    r5, r30, 0x30
    bl      generateByGateKeeper__9TGorogoroFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x800f9a08:
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800f9a30
    mr      r3, r30
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r30)
    addi    r5, r30, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800f9a30:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800f9ac8
    lbz     r0, -0x67c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f9a8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67c4(r13)
    subi    r0, r3, 0x48f4
    lis     r4, 0x8010
    stw     r0, -0x67c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2828
    subi    r4, r4, 0x7184
    subi    r3, r13, 0x67c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c8(r13)
branch_0x800f9a8c:
    subi    r4, r13, 0x67c4
    cmplwi  r4, 0x0
    beq-    branch_0x800f9ac0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800f9ac0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800f9ac0:
    li      r3, 0x1
    b       branch_0x800f9acc

branch_0x800f9ac8:
    li      r3, 0x0
branch_0x800f9acc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl __dt__20TNerveBGKSleepDamageFv
__dt__20TNerveBGKSleepDamageFv: # 0x800f9ae8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f9b2c
    lis     r3, 0x803c
    subi    r0, r3, 0x4934
    stw     r0, 0x0(r31)
    beq-    branch_0x800f9b1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f9b1c:
    extsh.  r0, r4
    ble-    branch_0x800f9b2c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f9b2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveBGKWait2CFP24TSpineBase_10TLiveActor_
execute__14TNerveBGKWait2CFP24TSpineBase_10TLiveActor_: # 0x800f9b44
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x2828
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    mr      r29, r4
    stw     r28, 0xa0(sp)
    lwz     r0, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r28, 0x74(r4)
    mr      r30, r4
    bne-    branch_0x800f9b90
    addi    r3, r30, 0x0
    li      r4, 0x11
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f9b90:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800f9cb0
    lbz     r3, 0x13c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800f9bb0
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r30)
branch_0x800f9bb0:
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800f9c34
    lbz     r0, -0x6798(r13)
    extsb.  r0, r0
    bne-    branch_0x800f9bfc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6794(r13)
    subi    r0, r3, 0x4954
    lis     r3, 0x8010
    stw     r0, -0x6794(r13)
    subi    r4, r3, 0x6a5c
    subi    r3, r13, 0x6794
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6798(r13)
branch_0x800f9bfc:
    subi    r4, r13, 0x6794
    cmplwi  r4, 0x0
    beq-    branch_0x800f9ca8
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800f9ca8
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x800f9ca8

branch_0x800f9c34:
    lbz     r0, -0x67a0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f9c74
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x679c(r13)
    subi    r0, r3, 0x4944
    lis     r3, 0x8010
    stw     r0, -0x679c(r13)
    subi    r4, r3, 0x6748
    subi    r3, r13, 0x679c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67a0(r13)
branch_0x800f9c74:
    subi    r4, r13, 0x679c
    cmplwi  r4, 0x0
    beq-    branch_0x800f9ca8
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800f9ca8
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800f9ca8:
    li      r3, 0x1
    b       branch_0x800f9ee8

branch_0x800f9cb0:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    bne-    branch_0x800f9ccc
    li      r0, 0x1
    b       branch_0x800f9d4c

branch_0x800f9ccc:
    lbz     r4, 0x5(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x800f9ce0
    li      r0, 0x1
    b       branch_0x800f9ce4

branch_0x800f9ce0:
    li      r0, 0x0
branch_0x800f9ce4:
    cmpwi   r0, 0x0
    bne-    branch_0x800f9d40
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x800f9cfc
    li      r0, 0x1
    b       branch_0x800f9d00

branch_0x800f9cfc:
    li      r0, 0x0
branch_0x800f9d00:
    cmpwi   r0, 0x0
    bne-    branch_0x800f9d40
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x57d8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0x9c(sp)
    lfd     f1, -0x57e8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800f9d48
branch_0x800f9d40:
    li      r0, 0x1
    b       branch_0x800f9d4c

branch_0x800f9d48:
    li      r0, 0x0
branch_0x800f9d4c:
    cmpwi   r0, 0x0
    beq-    branch_0x800f9ee4
    addi    r3, r28, 0x0
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f9d78
    addi    r3, r30, 0x0
    li      r4, 0xf
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800f9ee4

branch_0x800f9d78:
    addi    r3, r28, 0x0
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f9d9c
    addi    r3, r30, 0x0
    li      r4, 0x10
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800f9ee4

branch_0x800f9d9c:
    addi    r3, r28, 0x0
    li      r4, 0x10
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f9e30
    lha     r3, 0x288(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x288(r30)
    lha     r0, 0x288(r30)
    cmpwi   r0, 0x2
    bne-    branch_0x800f9df4
    lha     r0, 0x28a(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800f9df4
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800f9df4
    lwz     r3, 0x74(r3)
    li      r4, 0x0
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800f9df4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lha     r4, 0x288(r30)
    lwz     r0, 0xcc(r3)
    cmpw    r4, r0
    ble-    branch_0x800f9ee4
    addi    r3, r30, 0x0
    li      r4, 0xc
    bl      changeBck__17TBiancoGateKeeperFi
    li      r0, 0x0
    sth     r0, 0x288(r30)
    b       branch_0x800f9ee4

branch_0x800f9e30:
    addi    r3, r28, 0x0
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f9e54
    addi    r3, r30, 0x0
    li      r4, 0xd
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800f9ee4

branch_0x800f9e54:
    addi    r3, r28, 0x0
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f9ee4
    lbz     r0, -0x6790(r13)
    extsb.  r0, r0
    bne-    branch_0x800f9ea8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x678c(r13)
    subi    r0, r3, 0x4964
    lis     r3, 0x8010
    stw     r0, -0x678c(r13)
    subi    r4, r3, 0x6ec4
    subi    r3, r13, 0x678c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6790(r13)
branch_0x800f9ea8:
    subi    r4, r13, 0x678c
    cmplwi  r4, 0x0
    beq-    branch_0x800f9edc
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800f9edc
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800f9edc:
    li      r3, 0x1
    b       branch_0x800f9ee8

branch_0x800f9ee4:
    li      r3, 0x0
branch_0x800f9ee8:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb0
    blr


.globl execute__13TNerveBGKWaitCFP24TSpineBase_10TLiveActor_
execute__13TNerveBGKWaitCFP24TSpineBase_10TLiveActor_: # 0x800f9f08
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r3, 0x2828
    stw     r30, 0xb8(sp)
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    mr      r28, r4
    lwz     r0, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r4)
    mr      r30, r4
    bne-    branch_0x800f9f54
    addi    r3, r30, 0x0
    li      r4, 0x11
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800f9f54:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800f9f98
    lwz     r3, 0x74(r30)
    li      r4, 0x12
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f9f98
    mr      r3, r30
    bl      isHeadHitActive__17TBiancoGateKeeperCFv
    cmpwi   r3, 0x0
    bne-    branch_0x800f9f98
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      changeBck__17TBiancoGateKeeperFi
    li      r3, 0x0
    b       branch_0x800fa4a8

branch_0x800f9f98:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800fa108
    addi    r3, r29, 0x0
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fa108
    addi    r3, r29, 0x0
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fa108
    addi    r3, r29, 0x0
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fa108
    addi    r3, r29, 0x0
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fa108
    lbz     r3, 0x13c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800fa008
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r30)
branch_0x800fa008:
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800fa08c
    lbz     r0, -0x6798(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa054
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6794(r13)
    subi    r0, r3, 0x4954
    lis     r3, 0x8010
    stw     r0, -0x6794(r13)
    subi    r4, r3, 0x6a5c
    subi    r3, r13, 0x6794
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6798(r13)
branch_0x800fa054:
    subi    r4, r13, 0x6794
    cmplwi  r4, 0x0
    beq-    branch_0x800fa100
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x800fa100
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
    b       branch_0x800fa100

branch_0x800fa08c:
    lbz     r0, -0x67a0(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa0cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x679c(r13)
    subi    r0, r3, 0x4944
    lis     r3, 0x8010
    stw     r0, -0x679c(r13)
    subi    r4, r3, 0x6748
    subi    r3, r13, 0x679c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67a0(r13)
branch_0x800fa0cc:
    subi    r4, r13, 0x679c
    cmplwi  r4, 0x0
    beq-    branch_0x800fa100
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x800fa100
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x800fa100:
    li      r3, 0x1
    b       branch_0x800fa4a8

branch_0x800fa108:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800fa13c
    addi    r3, r29, 0x0
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa13c
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      changeBck__17TBiancoGateKeeperFi
    li      r3, 0x0
    b       branch_0x800fa4a8

branch_0x800fa13c:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800fa164
    addi    r3, r29, 0x0
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa164
    li      r0, 0x0
    sth     r0, 0x290(r30)
branch_0x800fa164:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r28)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    ble-    branch_0x800fa24c
    addi    r3, r29, 0x0
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fa24c
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    bne-    branch_0x800fa1b8
    li      r0, 0x1
    b       branch_0x800fa238

branch_0x800fa1b8:
    lbz     r4, 0x5(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x800fa1cc
    li      r0, 0x1
    b       branch_0x800fa1d0

branch_0x800fa1cc:
    li      r0, 0x0
branch_0x800fa1d0:
    cmpwi   r0, 0x0
    bne-    branch_0x800fa22c
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x800fa1e8
    li      r0, 0x1
    b       branch_0x800fa1ec

branch_0x800fa1e8:
    li      r0, 0x0
branch_0x800fa1ec:
    cmpwi   r0, 0x0
    bne-    branch_0x800fa22c
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x57d8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0xac(sp)
    lfd     f1, -0x57e8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800fa234
branch_0x800fa22c:
    li      r0, 0x1
    b       branch_0x800fa238

branch_0x800fa234:
    li      r0, 0x0
branch_0x800fa238:
    cmpwi   r0, 0x0
    beq-    branch_0x800fa24c
    addi    r3, r30, 0x0
    li      r4, 0xd
    bl      changeBck__17TBiancoGateKeeperFi
branch_0x800fa24c:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    bne-    branch_0x800fa268
    li      r0, 0x1
    b       branch_0x800fa2e8

branch_0x800fa268:
    lbz     r4, 0x5(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x800fa27c
    li      r0, 0x1
    b       branch_0x800fa280

branch_0x800fa27c:
    li      r0, 0x0
branch_0x800fa280:
    cmpwi   r0, 0x0
    bne-    branch_0x800fa2dc
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x800fa298
    li      r0, 0x1
    b       branch_0x800fa29c

branch_0x800fa298:
    li      r0, 0x0
branch_0x800fa29c:
    cmpwi   r0, 0x0
    bne-    branch_0x800fa2dc
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfs     f2, -0x57d8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x10(r3)
    stw     r4, 0xac(sp)
    lfd     f1, -0x57e8(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0xa8(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800fa2e4
branch_0x800fa2dc:
    li      r0, 0x1
    b       branch_0x800fa2e8

branch_0x800fa2e4:
    li      r0, 0x0
branch_0x800fa2e8:
    cmpwi   r0, 0x0
    beq-    branch_0x800fa4a4
    addi    r3, r29, 0x0
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa32c
    lha     r0, 0x28a(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800fa32c
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x3
    bne-    branch_0x800fa32c
    addi    r3, r30, 0x0
    li      r4, 0xb
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa32c:
    addi    r3, r29, 0x0
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa350
    addi    r3, r30, 0x0
    li      r4, 0x12
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa350:
    addi    r3, r29, 0x0
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa374
    addi    r3, r30, 0x0
    li      r4, 0x12
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa374:
    addi    r3, r29, 0x0
    li      r4, 0x12
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa398
    addi    r3, r30, 0x0
    li      r4, 0x12
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa398:
    addi    r3, r29, 0x0
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa414
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800fa3d0
    li      r0, 0x0
    sth     r0, 0x290(r30)
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa3d0:
    li      r3, 0x0
    sth     r3, 0x17c(r30)
    lha     r0, 0x290(r30)
    cmpwi   r0, 0x0
    blt-    branch_0x800fa3f8
    sth     r3, 0x290(r30)
    addi    r3, r30, 0x0
    li      r4, 0x12
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa3f8:
    lha     r5, 0x290(r30)
    addi    r3, r30, 0x0
    li      r4, 0x7
    addi    r0, r5, 0x1
    sth     r0, 0x290(r30)
    bl      changeBck__17TBiancoGateKeeperFi
    b       branch_0x800fa4a4

branch_0x800fa414:
    addi    r3, r29, 0x0
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fa4a4
    lbz     r0, -0x6790(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa468
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x678c(r13)
    subi    r0, r3, 0x4964
    lis     r3, 0x8010
    stw     r0, -0x678c(r13)
    subi    r4, r3, 0x6ec4
    subi    r3, r13, 0x678c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6790(r13)
branch_0x800fa468:
    subi    r4, r13, 0x678c
    cmplwi  r4, 0x0
    beq-    branch_0x800fa49c
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x800fa49c
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x800fa49c:
    li      r3, 0x1
    b       branch_0x800fa4a8

branch_0x800fa4a4:
    li      r3, 0x0
branch_0x800fa4a8:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl execute__15TNerveBGKAppearCFP24TSpineBase_10TLiveActor_
execute__15TNerveBGKAppearCFP24TSpineBase_10TLiveActor_: # 0x800fa4c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800fa5c8
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeBck__17TBiancoGateKeeperFi
    lha     r3, 0x28a(r31)
    extsh.  r0, r3
    bne-    branch_0x800fa594
    extsh.  r0, r3
    bne-    branch_0x800fa594
    lis     r3, 0x8038
    lwz     r6, 0x4(r31)
    addi    r5, r3, 0x2ac4
    crxor   6, 6, 6
    addi    r3, r31, 0x188
    li      r4, 0x100
    bl      snprintf
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x68(sp)
    addi    r0, sp, 0x68
    addi    r4, r31, 0x188
    stw     r0, 0x8(sp)
    addi    r5, r31, 0x10
    li      r6, -0x1
    lfs     f1, -0x57e0(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lfs     f1, -0x57e0(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lis     r3, 0x8001
    addi    r3, r3, 0xb
    bl      startBGM__5MSBgmFUl
    lbz     r3, 0x292(r31)
    li      r4, 0x1
    extsb   r3, r3
    bl      setGateKeeperBGMPlayFlag__10MSMainProcFUlb
branch_0x800fa594:
    lha     r3, 0x28a(r31)
    cmpwi   r3, 0xff
    bge-    branch_0x800fa5a8
    addi    r0, r3, 0x1
    sth     r0, 0x28a(r31)
branch_0x800fa5a8:
    lha     r0, 0x28a(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800fa5c8
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x4a
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800fa5c8:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x8
    bne-    branch_0x800fa620
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x1df
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x2
    addi    r5, r5, 0x240
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800fa620
    mr      r3, r31
    bl      getRumblePow__17TBiancoGateKeeperFv
    stfs    f1, 0x29c(r31)
    addi    r5, r31, 0x29c
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800fa620:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800fa744
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fa6c4
    lbz     r0, -0x67b0(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa68c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67ac(r13)
    subi    r0, r3, 0x4924
    lis     r4, 0x8010
    stw     r0, -0x67ac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x284c
    subi    r4, r4, 0x67a4
    subi    r3, r13, 0x67ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67b0(r13)
branch_0x800fa68c:
    subi    r4, r13, 0x67ac
    cmplwi  r4, 0x0
    beq-    branch_0x800fa73c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800fa73c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
    b       branch_0x800fa73c

branch_0x800fa6c4:
    lbz     r0, -0x67b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa708
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67b4(r13)
    subi    r0, r3, 0x4914
    lis     r4, 0x8010
    stw     r0, -0x67b4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2840
    subi    r4, r4, 0x6800
    subi    r3, r13, 0x67b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67b8(r13)
branch_0x800fa708:
    subi    r4, r13, 0x67b4
    cmplwi  r4, 0x0
    beq-    branch_0x800fa73c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800fa73c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800fa73c:
    li      r3, 0x1
    b       branch_0x800fa748

branch_0x800fa744:
    li      r3, 0x0
branch_0x800fa748:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl execute__14TNerveBGKSleepCFP24TSpineBase_10TLiveActor_
execute__14TNerveBGKSleepCFP24TSpineBase_10TLiveActor_: # 0x800fa760
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x2828
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r4
    stw     r28, 0x78(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800fa7dc
    addi    r3, r30, 0x0
    li      r4, 0xa
    bl      changeBck__17TBiancoGateKeeperFi
    lwz     r0, 0x64(r30)
    li      r4, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r3, 0x74(r30)
    bl      setBpkFromIndex__6MActorFi
    lwz     r3, 0x74(r30)
    li      r4, 0x2
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800fa7dc
    lfs     f0, -0x57e0(rtoc)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x800fa7dc:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x800fa8ec
    lha     r3, 0x298(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800fa800
    subi    r0, r3, 0x1
    sth     r0, 0x298(r30)
branch_0x800fa800:
    lha     r0, 0x298(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800fa8ec
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r28, 0xe0(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x57e8(rtoc)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f1, -0x57f0(rtoc)
    stw     r0, 0x70(sp)
    lfs     f0, -0x57ec(rtoc)
    lfd     f2, 0x70(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    add     r28, r0, r28
    subi    r28, r28, 0x78
    extsh   r0, r28
    sth     r0, 0x298(r30)
    lbz     r0, -0x6788(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa8b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6784(r13)
    subi    r0, r3, 0x4974
    lis     r3, 0x8010
    stw     r0, -0x6784(r13)
    subi    r4, r3, 0x7128
    subi    r3, r13, 0x6784
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6788(r13)
branch_0x800fa8b0:
    subi    r4, r13, 0x6784
    cmplwi  r4, 0x0
    beq-    branch_0x800fa8e4
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800fa8e4
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800fa8e4:
    li      r3, 0x1
    b       branch_0x800faa34

branch_0x800fa8ec:
    lwz     r3, 0x74(r30)
    lfs     f1, -0x57d4(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800fa920
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x1e0
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x2
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800fa920:
    lha     r0, 0x17c(r30)
    cmpwi   r0, 0xff
    blt-    branch_0x800fa9a8
    lbz     r0, -0x67c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa96c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67bc(r13)
    subi    r0, r3, 0x4904
    lis     r3, 0x8010
    stw     r0, -0x67bc(r13)
    subi    r4, r3, 0x73b4
    subi    r3, r13, 0x67bc
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c0(r13)
branch_0x800fa96c:
    subi    r4, r13, 0x67bc
    cmplwi  r4, 0x0
    beq-    branch_0x800fa9a0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800fa9a0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800fa9a0:
    li      r3, 0x1
    b       branch_0x800faa34

branch_0x800fa9a8:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x800faa30
    lbz     r0, -0x67a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800fa9f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67a4(r13)
    subi    r0, r3, 0x4934
    lis     r3, 0x8010
    stw     r0, -0x67a4(r13)
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x67a4
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67a8(r13)
branch_0x800fa9f4:
    subi    r4, r13, 0x67a4
    cmplwi  r4, 0x0
    beq-    branch_0x800faa28
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800faa28
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800faa28:
    li      r3, 0x1
    b       branch_0x800faa34

branch_0x800faa30:
    li      r3, 0x0
branch_0x800faa34:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl perform__17TBiancoGateKeeperFUlPQ26JDrama9TGraphics
perform__17TBiancoGateKeeperFUlPQ26JDrama9TGraphics: # 0x800faa54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r26, 0xb0(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800fad90
    lwz     r3, gpMarDirector(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x800faa9c
    cmplwi  r3, 0x4
    beq-    branch_0x800faa9c
    li      r0, 0x0
branch_0x800faa9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800faac8
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x800faabc
    cmplwi  r3, 0x2
    beq-    branch_0x800faabc
    li      r0, 0x0
branch_0x800faabc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800faac8
    clrrwi  r28, r28, 1
branch_0x800faac8:
    clrlwi. r31, r28, 31
    beq-    branch_0x800faba0
    li      r26, 0x0
    li      r30, 0x0
    b       branch_0x800fab1c

branch_0x800faadc:
    lwz     r3, 0x44(r27)
    lwzx    r3, r3, r30
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800faafc
    li      r0, 0x1
    b       branch_0x800fab00

branch_0x800faafc:
    li      r0, 0x0
branch_0x800fab00:
    clrlwi. r0, r0, 24
    beq-    branch_0x800fab14
    addi    r3, r27, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800fab14:
    addi    r26, r26, 0x1
    addi    r30, r30, 0x4
branch_0x800fab1c:
    lhz     r0, 0x48(r27)
    cmpw    r26, r0
    blt+    branch_0x800faadc
    lwz     r0, 0x154(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x800fab3c
    li      r0, 0x10
    sth     r0, 0x17e(r27)
branch_0x800fab3c:
    lha     r0, 0x17e(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x800fab6c
    lha     r3, 0x17c(r27)
    cmpwi   r3, 0xff
    bge-    branch_0x800fab60
    addi    r0, r3, 0x1
    sth     r0, 0x17c(r27)
    b       branch_0x800fab8c

branch_0x800fab60:
    li      r0, 0xff
    sth     r0, 0x17c(r27)
    b       branch_0x800fab8c

branch_0x800fab6c:
    lha     r3, 0x17c(r27)
    cmpwi   r3, 0x0
    ble-    branch_0x800fab84
    subi    r0, r3, 0x1
    sth     r0, 0x17c(r27)
    b       branch_0x800fab8c

branch_0x800fab84:
    li      r0, 0x0
    sth     r0, 0x17c(r27)
branch_0x800fab8c:
    lha     r3, 0x17e(r27)
    cmpwi   r3, 0x0
    ble-    branch_0x800faba0
    subi    r0, r3, 0x1
    sth     r0, 0x17e(r27)
branch_0x800faba0:
    cmplwi  r31, 0x0
    beq-    branch_0x800fabe8
    lfs     f0, 0x158(r27)
    lwz     r3, 0x178(r27)
    fneg    f0, f0
    lfs     f1, 0x50(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x50(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, -0x57e0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fabd8
    stfs    f0, 0x50(r3)
    b       branch_0x800fabe8

branch_0x800fabd8:
    lfs     f0, -0x57dc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800fabe8
    stfs    f0, 0x50(r3)
branch_0x800fabe8:
    cmplwi  r31, 0x0
    beq-    branch_0x800fabf8
    mr      r3, r27
    bl      controlCollision__17TBiancoGateKeeperFv
branch_0x800fabf8:
    rlwinm. r30, r28, 0, 30, 30
    beq-    branch_0x800fac30
    lwz     r3, gpMSound(r13)
    li      r4, 0x210b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800fac30
    addi    r4, r27, 0x10
    li      r3, 0x210b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800fac30:
    cmplwi  r30, 0x0
    beq-    branch_0x800fac60
    lwz     r4, 0x178(r27)
    cmplwi  r4, 0x0
    beq-    branch_0x800fac48
    lwz     r4, 0x0(r4)
branch_0x800fac48:
    lwz     r3, 0x74(r27)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    stw     r4, 0x58(r3)
branch_0x800fac60:
    rlwinm. r0, r28, 0, 22, 22
    beq-    branch_0x800facac
    mr      r3, r27
    bl      isDamageFogSituation__17TBiancoGateKeeperCFv
    cmpwi   r3, 0x0
    beq-    branch_0x800fac9c
    lwz     r3, 0x74(r27)
    bl      offMakeDL__6MActorFv
    lwz     r3, 0x74(r27)
    addi    r5, r29, 0x0
    addi    r4, r27, 0x10
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    b       branch_0x800facac

branch_0x800fac9c:
    lwz     r3, 0x74(r27)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x800facac:
    lwz     r3, 0x174(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28c(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmplwi  r30, 0x0
    beq-    branch_0x800facf4
    lwz     r3, 0x15c(r27)
    bl      update__9TMultiBtkFv
branch_0x800facf4:
    cmplwi  r31, 0x0
    beq-    branch_0x800fad64
    lbz     r0, 0x293(r27)
    extsb.  r0, r0
    bne-    branch_0x800fad64
    lwz     r3, 0x74(r27)
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fad64
    lwz     r0, 0x154(r27)
    cmpwi   r0, 0x0
    ble-    branch_0x800fad64
    lha     r3, 0x294(r27)
    addi    r0, r3, 0x1
    sth     r0, 0x294(r27)
    lha     r0, 0x294(r27)
    cmpwi   r0, 0xa0
    ble-    branch_0x800fad64
    li      r0, 0x0
    sth     r0, 0x294(r27)
    li      r0, 0x1
    li      r4, 0x2b
    stb     r0, 0x293(r27)
    li      r5, 0x1
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800fad64:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__15TGateKeeperBaseFUlPQ26JDrama9TGraphics
    cmplwi  r30, 0x0
    beq-    branch_0x800fad90
    lwz     r0, 0xf0(r27)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800fad90
    mr      r3, r27
    bl      emitParticles__17TBiancoGateKeeperFv
branch_0x800fad90:
    lmw     r26, 0xb0(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl controlCollision__17TBiancoGateKeeperFv
controlCollision__17TBiancoGateKeeperFv: # 0x800fada4
    mflr    r0
    li      r4, 0xb
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fade0
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fadf8
branch_0x800fade0:
    lwz     r3, 0x174(r31)
    li      r4, 0x1
    li      r0, 0x0
    stw     r4, 0x70(r3)
    stb     r0, 0x161(r31)
    b       branch_0x800faf0c

branch_0x800fadf8:
    lwz     r3, 0x74(r31)
    li      r4, 0x12
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fae24
    lwz     r3, 0x174(r31)
    li      r4, 0x1
    li      r0, 0x0
    stw     r4, 0x70(r3)
    stb     r0, 0x161(r31)
    b       branch_0x800faf0c

branch_0x800fae24:
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fae4c
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fae64
branch_0x800fae4c:
    lwz     r3, 0x174(r31)
    li      r4, 0x0
    li      r0, 0x1
    stw     r4, 0x70(r3)
    stb     r0, 0x161(r31)
    b       branch_0x800faf0c

branch_0x800fae64:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800faebc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x57d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800faea4
    lwz     r3, 0x174(r31)
    li      r0, 0x1
    stw     r0, 0x70(r3)
    b       branch_0x800faeb0

branch_0x800faea4:
    lwz     r3, 0x174(r31)
    li      r0, 0x0
    stw     r0, 0x70(r3)
branch_0x800faeb0:
    li      r0, 0x0
    stb     r0, 0x161(r31)
    b       branch_0x800faf0c

branch_0x800faebc:
    lwz     r3, 0x74(r31)
    li      r4, 0x10
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800faee4
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800faefc
branch_0x800faee4:
    lwz     r3, 0x174(r31)
    li      r4, 0x1
    li      r0, 0x0
    stw     r4, 0x70(r3)
    stb     r0, 0x161(r31)
    b       branch_0x800faf0c

branch_0x800faefc:
    lwz     r3, 0x174(r31)
    li      r0, 0x0
    stw     r0, 0x70(r3)
    stb     r0, 0x161(r31)
branch_0x800faf0c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl emitParticles__17TBiancoGateKeeperFv
emitParticles__17TBiancoGateKeeperFv: # 0x800faf20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    lbz     r0, -0x67c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800faf7c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67c4(r13)
    subi    r0, r3, 0x48f4
    lis     r4, 0x8010
    stw     r0, -0x67c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2828
    subi    r4, r4, 0x7184
    subi    r3, r13, 0x67c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c8(r13)
branch_0x800faf7c:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x67c4
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800faf94
    b       branch_0x800faf98

branch_0x800faf94:
    lwz     r3, 0x1c(r4)
branch_0x800faf98:
    cmplw   r3, r0
    beq-    branch_0x800fb0c4
    lbz     r0, -0x6788(r13)
    extsb.  r0, r0
    bne-    branch_0x800fafe4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6784(r13)
    subi    r0, r3, 0x4974
    lis     r4, 0x8010
    stw     r0, -0x6784(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2888
    subi    r4, r4, 0x7128
    subi    r3, r13, 0x6784
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6788(r13)
branch_0x800fafe4:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6784
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800faffc
    b       branch_0x800fb000

branch_0x800faffc:
    lwz     r3, 0x1c(r4)
branch_0x800fb000:
    cmplw   r3, r0
    beq-    branch_0x800fb0c4
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mr      r30, r3
    lwz     r3, gpMarioParticleManager(r13)
    lwz     r5, 0x58(r30)
    addi    r7, r31, 0x0
    li      r4, 0x140
    addi    r5, r5, 0x120
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800fb040
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800fb040:
    lwz     r5, 0x58(r30)
    addi    r7, r31, 0x1
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x142
    addi    r5, r5, 0x1b0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800fb06c
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800fb06c:
    lwz     r5, 0x58(r30)
    addi    r7, r31, 0x2
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x142
    addi    r5, r5, 0xf0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800fb098
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800fb098:
    lwz     r5, 0x58(r30)
    addi    r7, r31, 0x3
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x141
    addi    r5, r5, 0x180
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800fb0c4
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800fb0c4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl getBasNameTable__17TBiancoGateKeeperCFv
getBasNameTable__17TBiancoGateKeeperCFv: # 0x800fb0dc
    lis     r3, 0x803c
    subi    r3, r3, 0x4a78
    blr


.globl isDamageFogSituation__17TBiancoGateKeeperCFv
isDamageFogSituation__17TBiancoGateKeeperCFv: # 0x800fb0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x67a0(r13)
    extsb.  r0, r0
    bne-    branch_0x800fb140
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x679c(r13)
    subi    r0, r3, 0x4944
    lis     r4, 0x8010
    stw     r0, -0x679c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2864
    subi    r4, r4, 0x6748
    subi    r3, r13, 0x679c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67a0(r13)
branch_0x800fb140:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x679c
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800fb158
    b       branch_0x800fb15c

branch_0x800fb158:
    lwz     r3, 0x1c(r4)
branch_0x800fb15c:
    cmplw   r3, r0
    bne-    branch_0x800fb178
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x6e
    bgt-    branch_0x800fb178
    li      r3, 0x1
    b       branch_0x800fb240

branch_0x800fb178:
    lwz     r3, 0x74(r31)
    li      r4, 0x12
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fb1bc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x57cc(rtoc)
    lfs     f1, 0x10(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800fb1b4
    lfs     f0, -0x57c8(rtoc)
    fcmpo   cr0, f1, f0
    blt-    branch_0x800fb1bc
branch_0x800fb1b4:
    li      r3, 0x0
    b       branch_0x800fb240

branch_0x800fb1bc:
    lwz     r3, 0x74(r31)
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fb220
    lwz     r3, 0x74(r31)
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fb220
    lwz     r3, 0x74(r31)
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fb220
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fb220
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fb228
branch_0x800fb220:
    li      r3, 0x0
    b       branch_0x800fb240

branch_0x800fb228:
    lha     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x800fb23c
    li      r3, 0x1
    b       branch_0x800fb240

branch_0x800fb23c:
    li      r3, 0x0
branch_0x800fb240:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl isHeadHitActive__17TBiancoGateKeeperCFv
isHeadHitActive__17TBiancoGateKeeperCFv: # 0x800fb254
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    addi    r31, r3, 0x0
    li      r4, 0x12
    mr      r3, r0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fb2c0
    lfs     f0, -0x57cc(rtoc)
    lfs     f1, 0x10(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800fb2b8
    lfs     f0, -0x57c8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fb2b8
    li      r3, 0x1
    b       branch_0x800fb328

branch_0x800fb2b8:
    li      r3, 0x0
    b       branch_0x800fb328

branch_0x800fb2c0:
    lwz     r3, 0x74(r30)
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fb2f4
    lfs     f1, 0x10(r31)
    lfs     f0, -0x57d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800fb2ec
    li      r3, 0x1
    b       branch_0x800fb328

branch_0x800fb2ec:
    li      r3, 0x0
    b       branch_0x800fb328

branch_0x800fb2f4:
    lwz     r3, 0x74(r30)
    li      r4, 0x10
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fb31c
    lwz     r3, 0x74(r30)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fb324
branch_0x800fb31c:
    li      r3, 0x1
    b       branch_0x800fb328

branch_0x800fb324:
    li      r3, 0x0
branch_0x800fb328:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl getRumblePow__17TBiancoGateKeeperFv
getRumblePow__17TBiancoGateKeeperFv: # 0x800fb340
    stwu    sp, -0x28(sp)
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    lwz     r5, MarioHitActorPos(r13)
    stw     r4, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x18(r3)
    stw     r0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f3, 0x20(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x57e0(rtoc)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800fb3c4
    b       branch_0x800fb3e8

branch_0x800fb3c4:
    frsqrte f3, f4
    lfs     f2, -0x57c4(rtoc)
    lfs     f0, -0x57c0(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800fb3e8:
    lfs     f0, -0x57e0(rtoc)
    fcmpu   cr0, f0, f4
    bne-    branch_0x800fb3fc
    lfs     f1, -0x57dc(rtoc)
    b       branch_0x800fb414

branch_0x800fb3fc:
    lfs     f1, -0x57bc(rtoc)
    lfs     f0, -0x57dc(rtoc)
    fdivs   f1, f1, f4
    fcmpo   cr0, f1, f0
    ble-    branch_0x800fb414
    fmr     f1, f0
branch_0x800fb414:
    addi    sp, sp, 0x28
    blr


.globl launchNamekuri__17TBiancoGateKeeperFv
launchNamekuri__17TBiancoGateKeeperFv: # 0x800fb41c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stfd    f26, 0xc0(sp)
    stfd    f25, 0xb8(sp)
    stmw    r27, 0xa4(sp)
    addi    r28, r5, 0x2820
    addi    r27, r3, 0x0
    addi    r3, r28, 0x2b4
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x2b4
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    bne-    branch_0x800fb4bc
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x2d0
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x2d0
    mtlr    r12
    blrl
    mr      r30, r3
branch_0x800fb4bc:
    cmplwi  r30, 0x0
    beq-    branch_0x800fb6e8
    lfs     f25, -0x57b8(rtoc)
    li      r29, 0x0
    lfs     f26, -0x57dc(rtoc)
    lis     r31, 0x4330
    lfs     f27, -0x57b4(rtoc)
    lfs     f28, -0x57b0(rtoc)
    lfs     f29, -0x57ac(rtoc)
    lfd     f30, -0x57e8(rtoc)
    lfs     f31, -0x57a8(rtoc)
branch_0x800fb4e8:
    mr      r3, r30
    bl      getFarOutEnemy__13TEnemyManagerFv
    mr.     r28, r3
    beq-    branch_0x800fb6e8
    lwz     r5, 0x10(r27)
    xoris   r0, r29, 0x8000
    lwz     r4, 0x14(r27)
    mr      r3, r28
    stw     r0, 0x9c(sp)
    lwz     r0, -0x5eac(r13)
    stw     r5, 0x80(sp)
    lwz     r6, -0x5ea8(r13)
    stw     r4, 0x84(sp)
    lwz     r4, -0x5ea4(r13)
    lwz     r5, 0x18(r27)
    stw     r31, 0x98(sp)
    stw     r5, 0x88(sp)
    lfd     f0, 0x98(sp)
    lfs     f1, 0x84(sp)
    fsubs   f0, f0, f30
    fadds   f1, f1, f25
    fmuls   f0, f29, f0
    stfs    f1, 0x84(sp)
    fmuls   f0, f28, f0
    lwz     r7, 0x30(r27)
    lwz     r5, 0x34(r27)
    stw     r7, 0x74(sp)
    fctiwz  f0, f0
    stw     r5, 0x78(sp)
    lwz     r7, 0x38(r27)
    stfd    f0, 0x90(sp)
    stfs    f26, 0x68(sp)
    lwz     r5, 0x94(sp)
    stfs    f26, 0x6c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    stw     r7, 0x7c(sp)
    slwi    r0, r0, 2
    stfs    f26, 0x70(sp)
    lfsx    f0, r6, r0
    fmuls   f0, f27, f0
    stfs    f0, 0x58(sp)
    stfs    f31, 0x5c(sp)
    lfsx    f0, r4, r0
    fmuls   f0, f27, f0
    stfs    f0, 0x60(sp)
    lwz     r12, 0x0(r28)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x80(sp)
    mr      r3, r28
    lwz     r0, 0x84(sp)
    stw     r4, 0x10(r28)
    stw     r0, 0x14(r28)
    lwz     r0, 0x88(sp)
    stw     r0, 0x18(r28)
    lwz     r4, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r4, 0x30(r28)
    stw     r0, 0x34(r28)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x38(r28)
    lwz     r4, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r4, 0x24(r28)
    stw     r0, 0x28(r28)
    lwz     r0, 0x70(sp)
    stw     r0, 0x2c(r28)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800fb630
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800fb634

branch_0x800fb630:
    li      r0, 0x1
branch_0x800fb634:
    stb     r0, 0x13c(r28)
    li      r0, -0xa
    lwz     r4, 0x58(sp)
    lwz     r3, 0x5c(sp)
    stw     r4, 0xac(r28)
    stw     r3, 0xb0(r28)
    lwz     r3, 0x60(sp)
    stw     r3, 0xb4(r28)
    lwz     r3, 0xf0(r28)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r28)
    lwz     r3, 0xf0(r28)
    and     r0, r3, r0
    stw     r0, 0xf0(r28)
    lwz     r0, 0xf0(r28)
    ori     r0, r0, 0x8000
    stw     r0, 0xf0(r28)
    lwz     r0, 0x64(r28)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r28)
    bl      theNerve__21TNerveNameKuriDiffuseFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r28)
    beq-    branch_0x800fb6dc
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800fb6d0
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800fb6d0
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800fb6d0:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x800fb6dc:
    addi    r29, r29, 0x1
    cmpwi   r29, 0xa
    blt+    branch_0x800fb4e8
branch_0x800fb6e8:
    lmw     r27, 0xa4(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lfd     f26, 0xc0(sp)
    lfd     f25, 0xb8(sp)
    addi    sp, sp, 0xf0
    blr


.globl changeBck__17TBiancoGateKeeperFi
changeBck__17TBiancoGateKeeperFi: # 0x800fb718
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r29, 0x94(sp)
    lwz     r3, 0x74(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x11
    bne-    branch_0x800fb754
    cmpwi   r31, 0xb
    beq-    branch_0x800fb7c4
branch_0x800fb754:
    cmpwi   r3, 0x11
    bne-    branch_0x800fb764
    cmpwi   r31, 0x12
    beq-    branch_0x800fb7c4
branch_0x800fb764:
    cmpwi   r3, 0xb
    bne-    branch_0x800fb774
    cmpwi   r31, 0x12
    beq-    branch_0x800fb7c4
branch_0x800fb774:
    cmpwi   r3, 0x12
    bne-    branch_0x800fb784
    cmpwi   r31, 0xb
    beq-    branch_0x800fb7c4
branch_0x800fb784:
    cmpwi   r3, 0x7
    bne-    branch_0x800fb794
    cmpwi   r31, 0x7
    beq-    branch_0x800fb7c4
branch_0x800fb794:
    cmpwi   r3, 0x7
    bne-    branch_0x800fb7a4
    cmpwi   r31, 0x12
    beq-    branch_0x800fb7c4
branch_0x800fb7a4:
    cmpwi   r3, 0xf
    bne-    branch_0x800fb7b4
    cmpwi   r31, 0x10
    beq-    branch_0x800fb7c4
branch_0x800fb7b4:
    cmpwi   r3, 0x10
    bne-    branch_0x800fb870
    cmpwi   r31, 0xc
    bne-    branch_0x800fb870
branch_0x800fb7c4:
    lwz     r5, 0x178(r30)
    lwz     r3, 0x64(r5)
    lwz     r3, 0x78(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x800fb7f4
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x800fb7f8

branch_0x800fb7f4:
    li      r0, 0x0
branch_0x800fb7f8:
    stw     r0, 0x54(r5)
    li      r4, 0x0
    cmpwi   r31, 0x0
    stw     r4, 0x58(r5)
    lfs     f0, -0x57e0(rtoc)
    stfs    f0, 0x50(r5)
    lwz     r3, 0x74(r30)
    lwz     r29, 0xc(r3)
    stw     r31, 0x0(r29)
    blt-    branch_0x800fb864
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x800fb83c
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r4, r3, r0
branch_0x800fb83c:
    stw     r4, 0x24(r29)
    addi    r3, r29, 0x4
    lwz     r4, 0x24(r29)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r29)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r29)
branch_0x800fb864:
    lfs     f0, -0x57e0(rtoc)
    stfs    f0, 0x158(r30)
    b       branch_0x800fb984

branch_0x800fb870:
    lwz     r4, 0x178(r30)
    lwz     r3, 0x64(r4)
    lwz     r3, 0x78(r3)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x800fb8a0
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x800fb8a4

branch_0x800fb8a0:
    li      r0, 0x0
branch_0x800fb8a4:
    lwz     r3, 0x54(r4)
    cmplw   r3, r0
    beq-    branch_0x800fb8c0
    stw     r3, 0x58(r4)
    stw     r0, 0x54(r4)
    lfs     f0, -0x57dc(rtoc)
    stfs    f0, 0x50(r4)
branch_0x800fb8c0:
    lwz     r3, 0x74(r30)
    cmpwi   r31, 0x0
    lwz     r29, 0xc(r3)
    stw     r31, 0x0(r29)
    blt-    branch_0x800fb920
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x800fb8f4
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x800fb8f8

branch_0x800fb8f4:
    li      r0, 0x0
branch_0x800fb8f8:
    stw     r0, 0x24(r29)
    addi    r3, r29, 0x4
    lwz     r4, 0x24(r29)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r29)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r29)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r29)
branch_0x800fb920:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800fb97c
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f2, -0x57e8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f3, -0x57a4(rtoc)
    stw     r3, 0x8c(sp)
    lfs     f0, -0x57dc(rtoc)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fb970
    stfs    f0, 0x158(r30)
    b       branch_0x800fb984

branch_0x800fb970:
    fdivs   f0, f0, f1
    stfs    f0, 0x158(r30)
    b       branch_0x800fb984

branch_0x800fb97c:
    lfs     f0, -0x57dc(rtoc)
    stfs    f0, 0x158(r30)
branch_0x800fb984:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800fb9a8
    li      r4, 0x0
    b       branch_0x800fb9b0

branch_0x800fb9a8:
    slwi    r0, r31, 2
    lwzx    r4, r3, r0
branch_0x800fb9b0:
    mr      r3, r30
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl kill__17TBiancoGateKeeperFv
kill__17TBiancoGateKeeperFv: # 0x800fb9d4
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r4, 0x174(r3)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r3, 0x28c(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    blr


.globl init__17TBiancoGateKeeperFP12TLiveManager
init__17TBiancoGateKeeperFP12TLiveManager: # 0x800fba10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c8(sp)
    stmw    r26, 0x1b0(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x8038
    addi    r31, r3, 0x2820
    lwz     r28, 0x8(sp)
    stw     r4, 0x70(r28)
    mr      r4, r28
    lwz     r3, 0x70(r28)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800fba60
    lwz     r4, 0x70(r28)
    addi    r3, r27, 0x0
    li      r5, 0x3
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800fba60:
    lwz     r30, 0x8(sp)
    addi    r4, r31, 0x228
    li      r5, 0x3
    stw     r27, 0x78(r30)
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    addi    r4, r31, 0x2e8
    lwz     r3, 0x4(r30)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x800fbac0
    li      r0, 0x3
    stb     r0, 0x292(r30)
    lis     r3, 0x5
    addi    r4, r3, 0x1
    lwz     r3, -0x6060(r13)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x800fbb3c
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    b       branch_0x800fbb3c

branch_0x800fbac0:
    lwz     r3, 0x4(r30)
    addi    r4, r31, 0x300
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x800fbb04
    li      r0, 0x4
    stb     r0, 0x292(r30)
    lis     r3, 0x5
    addi    r4, r3, 0x2
    lwz     r3, -0x6060(r13)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x800fbb3c
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    b       branch_0x800fbb3c

branch_0x800fbb04:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fbb20
    li      r0, 0x0
    stb     r0, 0x292(r30)
    b       branch_0x800fbb3c

branch_0x800fbb20:
    cmplwi  r0, 0x1
    bne-    branch_0x800fbb34
    li      r0, 0x2
    stb     r0, 0x292(r30)
    b       branch_0x800fbb3c

branch_0x800fbb34:
    li      r0, 0x1
    stb     r0, 0x292(r30)
branch_0x800fbb3c:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x800fbc10
    lwz     r28, 0x8(sp)
    addi    r4, r31, 0x240
    li      r5, 0x3
    lwz     r3, 0x78(r28)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x150(r28)
    li      r4, 0x13
    lwz     r3, 0x150(r28)
    bl      setBckFromIndex__6MActorFi
    lbz     r0, 0x292(r28)
    extsb   r0, r0
    cmpwi   r0, 0x2
    bne-    branch_0x800fbbac
    lfs     f1, -0x57a0(rtoc)
    lfs     f0, 0x164(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x164(r28)
    lfs     f0, 0x168(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x168(r28)
    lfs     f0, 0x16c(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(r28)
    b       branch_0x800fbc10

branch_0x800fbbac:
    cmpwi   r0, 0x3
    bne-    branch_0x800fbbe0
    lfs     f0, 0x164(r28)
    lfs     f1, -0x579c(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x164(r28)
    lfs     f0, 0x168(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x168(r28)
    lfs     f0, 0x16c(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(r28)
    b       branch_0x800fbc10

branch_0x800fbbe0:
    cmpwi   r0, 0x4
    bne-    branch_0x800fbc10
    lfs     f0, 0x164(r28)
    lfs     f1, -0x5798(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x164(r28)
    lfs     f0, 0x168(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x168(r28)
    lfs     f0, 0x16c(r28)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(r28)
branch_0x800fbc10:
    lfs     f1, -0x5794(rtoc)
    lis     r3, 0x1000
    lfs     f2, -0x5790(rtoc)
    addi    r4, r3, 0x22
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x8(sp)
    li      r5, 0x5
    lis     r6, 0x8100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x31c
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x31c
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r3, sp, 0x124
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x124(sp)
    addi    r3, sp, 0x194
    addi    r4, sp, 0x120
    stw     r0, 0x120(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x194(sp)
    addi    r5, sp, 0x154
    addi    r4, r28, 0x0
    stw     r0, 0x190(sp)
    addi    r3, sp, 0x150
    addi    r6, sp, 0x8
    lwz     r0, 0x190(sp)
    stw     r0, 0x154(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x8(sp)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lbz     r0, -0x67c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800fbd00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67c4(r13)
    subi    r0, r3, 0x48f4
    lis     r4, 0x8010
    stw     r0, -0x67c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2828
    subi    r4, r4, 0x7184
    subi    r3, r13, 0x67c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67c8(r13)
branch_0x800fbd00:
    lwz     r4, 0x8(sp)
    li      r3, 0x0
    subi    r0, r13, 0x67c4
    lwz     r5, 0x8c(r4)
    stw     r3, 0x8(r5)
    stw     r3, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r3, 0x1c(r5)
    lwz     r3, 0x74(r4)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r28, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x800fbd64
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800fbd54
    mr      r3, r27
    bl      __ct__13J3DSkinDeformFv
branch_0x800fbd54:
    addi    r4, r27, 0x0
    addi    r3, r28, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x800fbd64:
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800fbdc4
    addi    r28, r27, 0x68
    lis     r3, 0x803b
    stw     r28, 0x0(r27)
    subi    r0, r3, 0xf38
    stw     r0, 0x68(r27)
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
    lis     r3, 0x803c
    subi    r3, r3, 0x47d0
    stw     r3, 0x4c(r27)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r27)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r27)
    subf    r0, r3, r28
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(sp)
    stw     r0, 0x64(r27)
branch_0x800fbdc4:
    lwz     r3, 0x8(sp)
    stw     r27, 0x178(r3)
    lwz     r4, 0x178(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800fbddc
    lwz     r4, 0x0(r4)
branch_0x800fbddc:
    lwz     r3, 0x74(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800fbdf8
    stw     r4, 0x38(r3)
    li      r0, 0x3
    stb     r0, 0x2a(r3)
branch_0x800fbdf8:
    lwz     r28, 0x8(sp)
    li      r0, 0x3
    stb     r0, 0x13c(r28)
    lwz     r3, 0x74(r28)
    bl      offMakeDL__6MActorFv
    lwz     r4, 0x78(r28)
    li      r3, 0x10
    lwz     r29, 0xc(r4)
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800fbe3c
    mr      r3, r28
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    addi    r3, r26, 0x0
    li      r4, 0x2
    bl      __ct__9TMultiBtkFiP12J3DModelData
branch_0x800fbe3c:
    lwz     r3, 0x8(sp)
    li      r27, 0x0
    li      r30, 0x0
    stw     r26, 0x15c(r3)
branch_0x800fbe4c:
    lwz     r3, 0x38(r29)
    lwz     r0, 0x0(r3)
    cmpw    r27, r0
    bge-    branch_0x800fbe68
    lwz     r3, 0xc(r3)
    lwzx    r5, r3, r30
    b       branch_0x800fbe6c

branch_0x800fbe68:
    li      r5, 0x0
branch_0x800fbe6c:
    lwz     r28, 0x8(sp)
    mr      r4, r27
    lwz     r3, 0x15c(r28)
    bl      setNthData__9TMultiBtkFiP19J3DAnmTextureSRTKey
    addi    r27, r27, 0x1
    cmpwi   r27, 0x1
    addi    r30, r30, 0x4
    ble+    branch_0x800fbe4c
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800fbfa8
    stw     r30, 0x174(sp)
    addi    r4, r31, 0x328
    lwz     r3, 0x174(sp)
    bl      __ct__9THitActorFPCc
    lwz     r29, 0x174(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x4a18
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    lis     r4, 0x1000
    stw     r0, 0x20(r29)
    addi    r3, r29, 0x0
    addi    r4, r4, 0x22
    lwz     r7, 0x10(r28)
    li      r5, 0x1
    lwz     r0, 0x14(r28)
    lis     r6, 0x8000
    stw     r7, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x18(r28)
    stw     r0, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, -0x578c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f1, -0x5788(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    addi    r3, r31, 0x31c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x31c
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0xf0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xf0(sp)
    addi    r4, sp, 0xec
    addi    r3, sp, 0x13c
    stw     r0, 0xec(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x13c(sp)
    addi    r5, sp, 0x110
    addi    r4, r28, 0x0
    stw     r0, 0x138(sp)
    addi    r3, sp, 0x10c
    addi    r6, sp, 0x174
    lwz     r0, 0x138(sp)
    stw     r0, 0x110(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x10c(sp)
    addi    r3, sp, 0x134
    addi    r4, sp, 0x108
    stw     r0, 0x108(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x800fbfa8:
    lwz     r29, 0x8(sp)
    addi    r3, r31, 0x338
    stw     r30, 0x28c(r29)
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x800fbfd8
    lwz     r6, 0x74(r29)
    addi    r5, r3, 0x0
    addi    r4, r31, 0x35c
    lwz     r3, 0x4(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x800fbfd8:
    lwz     r3, 0x8(sp)
    bl      initAnmSound__10TLiveActorFv
    lwz     r3, 0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    li      r3, 0x74
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800fc100
    stw     r30, 0x164(sp)
    addi    r4, r31, 0x374
    lwz     r3, 0x164(sp)
    bl      __ct__9THitActorFPCc
    lwz     r29, 0x164(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x4620
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    lis     r4, 0x1000
    stw     r0, 0x20(r29)
    li      r7, 0xa
    li      r0, 0x0
    lwz     r5, 0x8(sp)
    addi    r3, r29, 0x0
    addi    r4, r4, 0x22
    stw     r5, 0x68(r29)
    li      r5, 0x1
    lis     r6, 0x8000
    stw     r7, 0x6c(r29)
    stw     r0, 0x70(r29)
    lfs     f1, -0x57e0(rtoc)
    lfs     f3, -0x5790(rtoc)
    fmr     f2, f1
    lfs     f4, -0x5784(rtoc)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    addi    r3, r31, 0x31c
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x31c
    mtlr    r12
    blrl
    addi    r28, r3, 0x10
    addi    r4, r28, 0x0
    addi    r3, sp, 0xe8
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xe8(sp)
    addi    r4, sp, 0xe4
    addi    r3, sp, 0x130
    stw     r0, 0xe4(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x130(sp)
    addi    r5, sp, 0xfc
    addi    r4, r28, 0x0
    stw     r0, 0x12c(sp)
    addi    r3, sp, 0xf8
    addi    r6, sp, 0x164
    lwz     r0, 0x12c(sp)
    stw     r0, 0xfc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xf8(sp)
    addi    r3, sp, 0x128
    addi    r4, sp, 0xf4
    stw     r0, 0xf4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
branch_0x800fc100:
    lwz     r31, 0x8(sp)
    stw     r30, 0x174(r31)
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x150(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800fc120
    bl      calc__6MActorFv
branch_0x800fc120:
    lwz     r4, 0x8(sp)
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x800fc15c
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r3, 0x174(r4)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x28c(r4)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800fc15c:
    lmw     r26, 0x1b0(sp)
    lwz     r0, 0x1cc(sp)
    addi    sp, sp, 0x1c8
    mtlr    r0
    blr


.globl __ct__17TBiancoGateKeeperFPCc
__ct__17TBiancoGateKeeperFPCc: # 0x800fc170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x4734
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r31)
    li      r7, 0x0
    subi    r5, r3, 0x48e4
    stw     r7, 0x150(r31)
    li      r6, 0x1
    addi    r4, r5, 0x24
    stw     r7, 0x154(r31)
    li      r0, 0x2
    addi    r3, r31, 0x0
    lfs     f1, -0x57e0(rtoc)
    stfs    f1, 0x158(r31)
    stw     r7, 0x15c(r31)
    stb     r6, 0x160(r31)
    stb     r7, 0x161(r31)
    lfs     f0, -0x57dc(rtoc)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x16c(r31)
    lwz     r6, 0xf0(r31)
    ori     r6, r6, 0x10
    stw     r6, 0xf0(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r7, 0x170(r31)
    stw     r7, 0x174(r31)
    stw     r7, 0x178(r31)
    sth     r7, 0x17c(r31)
    sth     r7, 0x17e(r31)
    stfs    f1, 0x180(r31)
    stw     r7, 0x184(r31)
    sth     r7, 0x288(r31)
    sth     r7, 0x28a(r31)
    stw     r7, 0x28c(r31)
    sth     r7, 0x290(r31)
    stb     r0, 0x292(r31)
    stb     r7, 0x293(r31)
    sth     r7, 0x294(r31)
    stb     r7, 0x296(r31)
    sth     r7, 0x298(r31)
    stfs    f1, 0x29c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__15TGateKeeperBaseFv
__dt__15TGateKeeperBaseFv: # 0x800fc250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fc2a0
    lis     r3, 0x803c
    subi    r3, r3, 0x4734
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800fc2a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fc2a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calc__11TBGKMtxCalcFUs
calc__11TBGKMtxCalcFUs: # 0x800fc2bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stfd    f31, 0x140(sp)
    stfd    f30, 0x138(sp)
    stw     r31, 0x134(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x130(sp)
    addi    r30, r3, 0x0
    bl      calc__24M3UMtxCalcSIAnmBlendQuatFUs
    clrlwi  r0, r31, 16
    cmplwi  r0, 0xb
    bne-    branch_0x800fc370
    lwz     r4, 0x64(r30)
    mulli   r0, r0, 0x30
    lfs     f2, -0x57b0(rtoc)
    lfs     f0, 0x38(r4)
    lfs     f1, 0x34(r4)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r4)
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r4)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lwz     r3, 0x4(r3)
    fctiwz  f5, f2
    lfs     f3, 0x18(r4)
    fctiwz  f0, f0
    lwz     r3, 0x58(r3)
    stfd    f4, 0x120(sp)
    add     r30, r3, r0
    lfs     f2, 0x14(r4)
    stfd    f0, 0x118(sp)
    mr      r3, r30
    lfs     f1, 0x10(r4)
    stfd    f5, 0x128(sp)
    lwz     r5, 0x124(sp)
    lwz     r4, 0x12c(sp)
    lwz     r6, 0x11c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r30, 0x0
    bl      PSMTXCopy
    b       branch_0x800fc6f4

branch_0x800fc370:
    cmplwi  r0, 0x0
    bne-    branch_0x800fc6f4
    lwz     r3, 0x64(r30)
    mulli   r0, r0, 0x30
    lwz     r4, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    lbz     r6, 0x124(r4)
    li      r5, 0x1
    lwz     r4, 0x4(r3)
    cmplwi  r6, 0x3
    lwz     r4, 0x58(r4)
    add     r31, r4, r0
    beq-    branch_0x800fc3b0
    cmplwi  r6, 0x4
    beq-    branch_0x800fc3b0
    li      r5, 0x0
branch_0x800fc3b0:
    clrlwi. r0, r5, 24
    bne-    branch_0x800fc65c
    cmplwi  r6, 0x1
    li      r0, 0x1
    beq-    branch_0x800fc3d0
    cmplwi  r6, 0x2
    beq-    branch_0x800fc3d0
    li      r0, 0x0
branch_0x800fc3d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800fc65c
    li      r4, 0xb
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fc448
    lwz     r3, 0x64(r30)
    li      r4, 0x12
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fc448
    lwz     r3, 0x64(r30)
    li      r4, 0xf
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fc448
    lwz     r3, 0x64(r30)
    li      r4, 0x10
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800fc448
    lwz     r3, 0x64(r30)
    li      r4, 0xc
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800fc65c
branch_0x800fc448:
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x114(sp)
    lwz     r3, 0x64(r30)
    lfs     f1, 0x10c(sp)
    lfsu    f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x110(sp)
    lfs     f1, 0x114(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f2, -0x57e0(rtoc)
    lfs     f1, 0x114(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800fc4c8
    lfs     f0, 0x10c(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800fc4c0
    lfs     f31, -0x5780(rtoc)
    b       branch_0x800fc544

branch_0x800fc4c0:
    lfs     f31, -0x577c(rtoc)
    b       branch_0x800fc544

branch_0x800fc4c8:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800fc508
    lfs     f2, 0x10c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x57e8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5778(rtoc)
    stw     r0, 0x11c(sp)
    lis     r0, 0x4330
    stw     r0, 0x118(sp)
    lfd     f1, 0x118(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f0, f1
    b       branch_0x800fc544

branch_0x800fc508:
    fneg    f1, f1
    lfs     f2, 0x10c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x57e8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5778(rtoc)
    stw     r0, 0x11c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5774(rtoc)
    stw     r0, 0x118(sp)
    lfd     f2, 0x118(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f31, f0, f1
branch_0x800fc544:
    lwz     r3, 0x64(r30)
    lfs     f1, -0x5770(rtoc)
    lfs     f3, 0x180(r3)
    lfs     f2, 0x34(r3)
    lfs     f0, -0x5774(rtoc)
    fadds   f2, f2, f3
    b       branch_0x800fc564

branch_0x800fc560:
    fsubs   f31, f31, f1
branch_0x800fc564:
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    beq+    branch_0x800fc560
    lfs     f1, -0x5770(rtoc)
    lfs     f0, -0x576c(rtoc)
    b       branch_0x800fc580

branch_0x800fc57c:
    fadds   f31, f31, f1
branch_0x800fc580:
    fcmpo   cr0, f31, f0
    blt+    branch_0x800fc57c
    fmr     f30, f2
    lfs     f1, -0x5770(rtoc)
    lfs     f0, -0x5774(rtoc)
    b       branch_0x800fc59c

branch_0x800fc598:
    fsubs   f30, f30, f1
branch_0x800fc59c:
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    beq+    branch_0x800fc598
    lfs     f1, -0x5770(rtoc)
    lfs     f0, -0x576c(rtoc)
    b       branch_0x800fc5b8

branch_0x800fc5b4:
    fadds   f30, f30, f1
branch_0x800fc5b8:
    fcmpo   cr0, f30, f0
    blt+    branch_0x800fc5b4
    lfs     f0, -0x5774(rtoc)
    fmr     f1, f30
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_800fc714
    fsubs   f1, f31, f1
    lfs     f0, -0x57e0(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800fc600
    lfs     f0, -0x7d50(r13)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800fc5f4
    b       branch_0x800fc5f8

branch_0x800fc5f4:
    fmr     f1, f0
branch_0x800fc5f8:
    fmr     f2, f1
    b       branch_0x800fc618

branch_0x800fc600:
    lfs     f0, -0x7d4c(r13)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800fc610
    b       branch_0x800fc614

branch_0x800fc610:
    fmr     f0, f1
branch_0x800fc614:
    fmr     f2, f0
branch_0x800fc618:
    lwz     r3, 0x64(r30)
    fadds   f2, f2, f30
    lfs     f0, -0x5770(rtoc)
    lfs     f1, 0x34(r3)
    fsubs   f2, f2, f1
    b       branch_0x800fc634

branch_0x800fc630:
    fsubs   f2, f2, f0
branch_0x800fc634:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800fc630
    lfs     f1, -0x5770(rtoc)
    lfs     f0, -0x57e0(rtoc)
    b       branch_0x800fc650

branch_0x800fc64c:
    fadds   f2, f2, f1
branch_0x800fc650:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800fc64c
    stfs    f2, 0x180(r3)
branch_0x800fc65c:
    lwz     r4, 0x64(r30)
    mr      r3, r31
    lfs     f1, -0x57b0(rtoc)
    mr      r5, r31
    lfs     f0, 0x180(r4)
    lwz     r0, -0x5eac(r13)
    addi    r4, sp, 0xdc
    fmuls   f0, f1, f0
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    lfs     f2, -0x57e0(rtoc)
    fctiwz  f0, f0
    lfs     f1, -0x57dc(rtoc)
    stfd    f0, 0x118(sp)
    lwz     r7, 0x11c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f3
    stfs    f4, 0xdc(sp)
    stfs    f2, 0xe0(sp)
    stfs    f3, 0xe4(sp)
    stfs    f2, 0xe8(sp)
    stfs    f2, 0xec(sp)
    stfs    f1, 0xf0(sp)
    stfs    f2, 0xf4(sp)
    stfs    f2, 0xf8(sp)
    stfs    f0, 0xfc(sp)
    stfs    f2, 0x100(sp)
    stfs    f4, 0x104(sp)
    stfs    f2, 0x108(sp)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r31, 0x0
    bl      PSMTXCopy
branch_0x800fc6f4:
    lwz     r0, 0x14c(sp)
    lfd     f31, 0x140(sp)
    lfd     f30, 0x138(sp)
    mtlr    r0
    lwz     r31, 0x134(sp)
    lwz     r30, 0x130(sp)
    addi    sp, sp, 0x148
    blr


.globl MsWrap_f___Ffff_800fc714
MsWrap_f___Ffff_800fc714: # 0x800fc714
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800fc750
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0xf7128, 0x800fc72c - 0x800fc728
branch_0x800fc72c:
    fsubs   f1, f1, f0
branch_0x800fc730:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800fc72c
    b       branch_0x800fc744

branch_0x800fc740:
    fadds   f1, f1, f0
branch_0x800fc744:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800fc740
    blr

branch_0x800fc750:
    fsubs   f0, f3, f2
    b       branch_0x800fc730


.incbin "./baserom/code/Text_0x80005600.bin", 0xf7158, 0x800fc75c - 0x800fc758

.globl createModelData__24TBiancoGateKeeperManagerFv
createModelData__24TBiancoGateKeeperManagerFv: # 0x800fc75c
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x2a78
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__24TBiancoGateKeeperManagerFR20JSUMemoryInputStream
load__24TBiancoGateKeeperManagerFR20JSUMemoryInputStream: # 0x800fc790
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    addi    r31, r5, 0x2820
    li      r3, 0xf8
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800fc894
    addi    r3, r28, 0x0
    addi    r4, r31, 0x380
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r31, 0x398
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xa8
    addi    r6, r31, 0x398
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r25, r3, 0x42ac
    stw     r25, 0xa8(r28)
    li      r0, 0x1e0
    lis     r3, 0x803b
    stw     r0, 0xb8(r28)
    subi    r26, r3, 0x42b8
    addi    r3, r31, 0x3a8
    stw     r26, 0xa8(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xbc
    addi    r6, r31, 0x3a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0xbc(r28)
    li      r0, 0x5
    addi    r3, r31, 0x3b8
    stw     r0, 0xcc(r28)
    stw     r26, 0xbc(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xd0
    addi    r6, r31, 0x3b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0xd0(r28)
    li      r27, 0x258
    addi    r3, r31, 0x3d0
    stw     r27, 0xe0(r28)
    stw     r26, 0xd0(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0xe4
    addi    r6, r31, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0xe4(r28)
    mr      r3, r28
    stw     r27, 0xf4(r28)
    stw     r26, 0xe4(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x800fc894:
    stw     r28, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl initJParticle__24TBiancoGateKeeperManagerFv
initJParticle__24TBiancoGateKeeperManagerFv: # 0x800fc8cc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0xa7
    lbz     r0, 0xa7(r3)
    lis     r3, 0x8038
    addi    r31, r3, 0x2820
    cmplwi  r0, 0x0
    bne-    branch_0x800fc918
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x3e8
    li      r5, 0xa7
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fc918:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xa8
    lbz     r0, 0xa8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fc948
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x410
    li      r5, 0xa8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fc948:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x140
    lbz     r0, 0x140(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fc978
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x43c
    li      r5, 0x140
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fc978:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x141
    lbz     r0, 0x141(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fc9a8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x464
    li      r5, 0x141
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fc9a8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x142
    lbz     r0, 0x142(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fc9d8
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x490
    li      r5, 0x142
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fc9d8:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1df
    lbz     r0, 0x1df(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fca08
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4bc
    li      r5, 0x1df
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fca08:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1e0
    lbz     r0, 0x1e0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800fca38
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4e8
    li      r5, 0x1e0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800fca38:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__24TBiancoGateKeeperManagerFPCc
__ct__24TBiancoGateKeeperManagerFPCc: # 0x800fca50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x478c
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__15TGateKeeperBaseFUlPQ26JDrama9TGraphics
perform__15TGateKeeperBaseFUlPQ26JDrama9TGraphics: # 0x800fca8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r27, r5, 0x0
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800fcbb0
    rlwinm. r28, r30, 0, 30, 30
    beq-    branch_0x800fcac4
    lwz     r3, 0x15c(r29)
    bl      update__9TMultiBtkFv
branch_0x800fcac4:
    clrlwi. r31, r30, 31
    beq-    branch_0x800fcb14
    lwz     r3, 0x74(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x800fcae4
    lfs     f1, -0x57e0(rtoc)
    b       branch_0x800fcae8

branch_0x800fcae4:
    bl      getMotionBlendRatio__12MActorAnmBckCFv
branch_0x800fcae8:
    lfs     f2, 0x158(r29)
    lfs     f0, -0x57e0(rtoc)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800fcb00
    fmr     f1, f0
branch_0x800fcb00:
    lwz     r3, 0x74(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800fcb14
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800fcb14:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r27, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lbz     r0, 0x160(r29)
    extsb.  r0, r0
    beq-    branch_0x800fcba0
    lwz     r0, 0x150(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800fcba0
    cmplwi  r28, 0x0
    beq-    branch_0x800fcb88
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x150(r29)
    addi    r3, r3, 0x20
    lwz     r4, 0x164(r29)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x168(r29)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x16c(r29)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x150(r29)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x150(r29)
    bl      calcAnm__6MActorFv
branch_0x800fcb88:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x800fcba0
    lwz     r4, 0x150(r29)
    lwz     r3, gpPollution(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x800fcba0:
    cmplwi  r31, 0x0
    beq-    branch_0x800fcbb0
    li      r0, 0x0
    stw     r0, 0x154(r29)
branch_0x800fcbb0:
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl receiveMessage__15TGateKeeperBaseFP9THitActorUl
receiveMessage__15TGateKeeperBaseFP9THitActorUl: # 0x800fcbc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x800fcc4c
    lbz     r0, 0x161(r3)
    extsb.  r0, r0
    beq-    branch_0x800fcc08
    cmplwi  r5, 0xf
    bne-    branch_0x800fcc08
    lwz     r4, 0x154(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x154(r3)
branch_0x800fcc08:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x57e0(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    li      r3, 0x1
    b       branch_0x800fcc50

branch_0x800fcc4c:
    li      r3, 0x0
branch_0x800fcc50:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl kill__15TGateKeeperBaseFv
kill__15TGateKeeperBaseFv: # 0x800fcc64
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    blr


.globl perform__9TGKHitObjFUlPQ26JDrama9TGraphics
perform__9TGKHitObjFUlPQ26JDrama9TGraphics: # 0x800fcc74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r7, 0x68(r3)
    lwz     r6, 0xf0(r7)
    clrlwi. r0, r6, 31
    bne-    branch_0x800fccf0
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x800fccec
    rlwinm. r0, r6, 0, 29, 29
    bne-    branch_0x800fccd4
    lwz     r6, 0x74(r7)
    lwz     r0, 0x6c(r3)
    lwz     r6, 0x4(r6)
    mulli   r0, r0, 0x30
    lwz     r6, 0x58(r6)
    add     r6, r6, r0
    lfs     f2, 0x2c(r6)
    lfs     f1, 0x1c(r6)
    lfs     f0, 0xc(r6)
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    b       branch_0x800fccec

branch_0x800fccd4:
    lwz     r6, 0x10(r7)
    lwz     r0, 0x14(r7)
    stw     r6, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r7)
    stw     r0, 0x18(r3)
branch_0x800fccec:
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
branch_0x800fccf0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__9TGKHitObjFP9THitActorUl
receiveMessage__9TGKHitObjFP9THitActorUl: # 0x800fcd00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x800fcd8c
    cmplwi  r5, 0xf
    bne-    branch_0x800fcd8c
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x800fcd48
    lwz     r4, 0x68(r3)
    lwz     r3, 0x154(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x154(r4)
branch_0x800fcd48:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x57e0(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    li      r3, 0x1
    b       branch_0x800fcda4

branch_0x800fcd8c:
    lwz     r3, 0x68(r3)
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800fcda4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__12TBGKObstacleFv
__dt__12TBGKObstacleFv: # 0x800fcdb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fce20
    lis     r3, 0x803c
    subi    r3, r3, 0x4a18
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800fce10
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800fce10:
    extsh.  r0, r31
    ble-    branch_0x800fce20
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fce20:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TBiancoGateKeeperFv
__dt__17TBiancoGateKeeperFv: # 0x800fce3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fcea4
    lis     r3, 0x803c
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800fce94
    lis     r3, 0x803c
    subi    r3, r3, 0x4734
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800fce94:
    extsh.  r0, r31
    ble-    branch_0x800fcea4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fcea4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBGKMtxCalcFv
__dt__11TBGKMtxCalcFv: # 0x800fcec0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fcf50
    lis     r3, 0x803c
    subi    r3, r3, 0x47d0
    stw     r3, 0x4c(r30)
    addi    r4, r3, 0x24
    addi    r0, r30, 0x68
    lwz     r3, 0x0(r30)
    stw     r4, 0x0(r3)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x800fcf40
    lis     r3, 0x803e
    subi    r3, r3, 0x4484
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x24
    addi    r0, r30, 0x64
    lwz     r5, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    stw     r6, 0x0(r5)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__19J3DMtxCalcSoftimageFv
branch_0x800fcf40:
    extsh.  r0, r31
    ble-    branch_0x800fcf50
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fcf50:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TBiancoGateKeeperManagerFv
__dt__24TBiancoGateKeeperManagerFv: # 0x800fcf6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fcfb4
    lis     r3, 0x803c
    subi    r0, r3, 0x478c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800fcfb4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fcfb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TGKHitObjFv
__dt__9TGKHitObjFv: # 0x800fcfd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800fd038
    lis     r3, 0x803c
    subi    r3, r3, 0x4620
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800fd028
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800fd028:
    extsh.  r0, r31
    ble-    branch_0x800fd038
    mr      r3, r30
    bl      __dl__FPv
branch_0x800fd038:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_gatekeeper_cpp
__sinit_gatekeeper_cpp: # 0x800fd054
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2828
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd09c
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800fd09c:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd0cc
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800fd0cc:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd0fc
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800fd0fc:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd12c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800fd12c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd15c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800fd15c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd18c
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800fd18c:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd1bc
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800fd1bc:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd1ec
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800fd1ec:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd21c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800fd21c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd24c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800fd24c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd27c
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800fd27c:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd2ac
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800fd2ac:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd2dc
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800fd2dc:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd30c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800fd30c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800fd33c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800fd33c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__9TGKHitObjFv
_32___dt__9TGKHitObjFv: # 0x800fd350
    subi    r3, r3, 0x20
    b       __dt__9TGKHitObjFv


.globl _32___dt__15TGateKeeperBaseFv
_32___dt__15TGateKeeperBaseFv: # 0x800fd358
    subi    r3, r3, 0x20
    b       __dt__15TGateKeeperBaseFv


.globl _104_4_calc__11TBGKMtxCalcFUs
_104_4_calc__11TBGKMtxCalcFUs: # 0x800fd360
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calc__11TBGKMtxCalcFUs


.globl _32___dt__17TBiancoGateKeeperFv
_32___dt__17TBiancoGateKeeperFv: # 0x800fd374
    subi    r3, r3, 0x20
    b       __dt__17TBiancoGateKeeperFv


.globl _32___dt__12TBGKObstacleFv
_32___dt__12TBGKObstacleFv: # 0x800fd37c
    subi    r3, r3, 0x20
    b       __dt__12TBGKObstacleFv

