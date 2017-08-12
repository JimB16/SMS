
.globl __dt__18TNerveHino2WaitAnmFv
__dt__18TNerveHino2WaitAnmFv: # 0x800594d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80059514
    lis     r3, __vvt__18TNerveHino2WaitAnm@h
    addi    r0, r3, __vvt__18TNerveHino2WaitAnm@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80059504
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80059504:
    extsh.  r0, r4
    ble-    branch_0x80059514
    mr      r3, r31
    bl      __dl__FPv
branch_0x80059514:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveHino2WaitAnmCFP24TSpineBase_10TLiveActor_
execute__18TNerveHino2WaitAnmCFP24TSpineBase_10TLiveActor_: # 0x8005952c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r4)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005955c
    li      r3, 0x1
    b       branch_0x80059560

branch_0x8005955c:
    li      r3, 0x0
branch_0x80059560:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__17TNerveHino2FreezeCFP24TSpineBase_10TLiveActor_
execute__17TNerveHino2FreezeCFP24TSpineBase_10TLiveActor_: # 0x80059570
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800595ac
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      changeBck__10THinokuri2Fi
    li      r0, 0x1
    stw     r0, 0x184(r31)
branch_0x800595ac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x338(r3)
    cmpw    r4, r0
    blt-    branch_0x800595e0
    li      r0, 0x0
    stw     r0, 0x184(r31)
    li      r3, 0x1
    b       branch_0x800595e4

branch_0x800595e0:
    li      r3, 0x0
branch_0x800595e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__17TNerveHino2FreezeFv
__dt__17TNerveHino2FreezeFv: # 0x800595fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80059640
    lis     r3, __vvt__17TNerveHino2Freeze@h
    addi    r0, r3, __vvt__17TNerveHino2Freeze@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80059630
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80059630:
    extsh.  r0, r4
    ble-    branch_0x80059640
    mr      r3, r31
    bl      __dl__FPv
branch_0x80059640:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveHino2StampCFP24TSpineBase_10TLiveActor_
execute__16TNerveHino2StampCFP24TSpineBase_10TLiveActor_: # 0x80059658
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r4
    stw     r29, 0xbc(sp)
    stw     r28, 0xb8(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005969c
    addi    r3, r31, 0x0
    li      r4, 0xb
    bl      changeBck__10THinokuri2Fi
    li      r0, 0x0
    stw     r0, 0x160(r31)
branch_0x8005969c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800597f0
    mr      r3, r31
    lwz     r28, 0x160(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c0(r3)
    addi    r3, r28, 0x1
    cmpw    r3, r0
    ble-    branch_0x800597ec
    li      r0, 0x0
    stw     r0, 0x160(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1bc(r3)
    subf    r28, r29, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e10(r2)
    stw     r0, 0xb4(sp)
    lis     r3, 0x4330
    xoris   r0, r28, 0x8000
    lfs     f1, -0x6e18(r2)
    stw     r3, 0xb0(sp)
    stw     r0, 0xac(sp)
    lfd     f0, 0xb0(sp)
    stw     r3, 0xa8(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xa8(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    add     r0, r29, r0
    stw     r0, 0x164(r31)
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x800597b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r4, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    lis     r3, unk_803f050c@h
    addi    r5, r3, unk_803f050c@l
    addi    r4, r4, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fdc(r13)
branch_0x800597b0:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x800597e4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800597e4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800597e4:
    li      r3, 0x1
    b       branch_0x800598ac

branch_0x800597ec:
    stw     r3, 0x160(r31)
branch_0x800597f0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lwz     r0, 0xf0(r31)
    fctiwz  f0, f0
    rlwinm. r0, r0, 0, 24, 24
    stfd    f0, 0xa0(sp)
    lwz     r3, 0xa4(sp)
    beq-    branch_0x80059820
    li      r0, 0x1
    b       branch_0x80059824

branch_0x80059820:
    li      r0, 0x0
branch_0x80059824:
    cmpwi   r0, 0x0
    bne-    branch_0x800598a8
    cmpwi   r3, 0x1c
    beq-    branch_0x8005983c
    cmpwi   r3, 0x3e
    bne-    branch_0x800598a8
branch_0x8005983c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x158(r3)
    lfs     f0, 0x134(r31)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80059874
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x4
    lfs     f1, -0x6e14(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x80059874:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x2d4(r3)
    lfs     f0, 0x134(r31)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800598a8
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800598a8:
    li      r3, 0x0
branch_0x800598ac:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    lwz     r28, 0xb8(sp)
    addi    sp, sp, 0xc8
    blr


.globl __dt__22TNerveHino2GraphWanderFv
__dt__22TNerveHino2GraphWanderFv: # 0x800598cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80059910
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80059900
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80059900:
    extsh.  r0, r4
    ble-    branch_0x80059910
    mr      r3, r31
    bl      __dl__FPv
branch_0x80059910:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__16TNerveHino2StampFv
__dt__16TNerveHino2StampFv: # 0x80059928
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005996c
    lis     r3, __vvt__16TNerveHino2Stamp@h
    addi    r0, r3, __vvt__16TNerveHino2Stamp@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005995c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005995c:
    extsh.  r0, r4
    ble-    branch_0x8005996c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005996c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveHino2DieCFP24TSpineBase_10TLiveActor_
execute__14TNerveHino2DieCFP24TSpineBase_10TLiveActor_: # 0x80059984
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80059acc
    addi    r3, r31, 0x0
    li      r4, 0xd
    bl      changeBck__10THinokuri2Fi
    lwz     r5, 0x10(r31)
    lis     r3, unk_2000000e@h
    lwz     r0, 0x14(r31)
    addi    r4, r3, unk_2000000e@l
    lwz     r3, R13Off_m0x62b0(r13)
    stw     r5, 0x64(sp)
    li      r5, 0x0
    stw     r0, 0x68(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f2, 0x68(sp)
    lfs     f3, 0x6c(sp)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x170(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x174(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x178(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0x19c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80059acc
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    blt-    branch_0x80059a68
    addi    r3, r31, 0x0
    addi    r5, sp, 0x58
    li      r4, 0x19
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    b       branch_0x80059aa4

branch_0x80059a68:
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x60(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x2e8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
branch_0x80059aa4:
    lwz     r4, 0x19c(r31)
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x60(sp)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x19c(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x80059acc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80059b94
    lwz     r4, 0x124(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r0, 0x0
    stw     r0, 0x8(r30)
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x80059b44
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r4, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    lis     r3, unk_803f050c@h
    addi    r5, r3, unk_803f050c@l
    addi    r4, r4, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fdc(r13)
branch_0x80059b44:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x80059b78
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80059b78
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80059b78:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x80059b98

branch_0x80059b94:
    li      r3, 0x0
branch_0x80059b98:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl __dt__14TNerveHino2DieFv
__dt__14TNerveHino2DieFv: # 0x80059bb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80059bf4
    lis     r3, __vvt__14TNerveHino2Die@h
    addi    r0, r3, __vvt__14TNerveHino2Die@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80059be4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80059be4:
    extsh.  r0, r4
    ble-    branch_0x80059bf4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80059bf4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveHino2BurstCFP24TSpineBase_10TLiveActor_
execute__16TNerveHino2BurstCFP24TSpineBase_10TLiveActor_: # 0x80059c0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80059cd0
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      changeBck__10THinokuri2Fi
    lwz     r0, 0x19c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80059cd0
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    blt-    branch_0x80059c6c
    addi    r3, r31, 0x0
    addi    r5, sp, 0x78
    li      r4, 0x19
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    b       branch_0x80059ca8

branch_0x80059c6c:
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x80(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x2e8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
branch_0x80059ca8:
    lwz     r4, 0x19c(r31)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x80(sp)
    stw     r0, 0x78(r4)
    lwz     r3, R13Off_m0x6088(r13)
    lwz     r4, 0x19c(r31)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
branch_0x80059cd0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80059e50
    lwz     r4, 0x1a8(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, -0x1
    bl      setLevel__10THinokuri2Fi
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80059d3c
    bge-    branch_0x80059d14
    cmpwi   r0, 0x0
    bge-    branch_0x80059d20
    b       branch_0x80059d74

branch_0x80059d14:
    cmpwi   r0, 0x3
    bge-    branch_0x80059d74
    b       branch_0x80059d58

branch_0x80059d20:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x80059db0

branch_0x80059d3c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x80059db0

branch_0x80059d58:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x80059db0

branch_0x80059d74:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80059dac
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80059db0

branch_0x80059dac:
    li      r0, 0x1
branch_0x80059db0:
    stb     r0, 0x13c(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r0, 0x0
    stw     r0, 0x8(r30)
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x80059e14
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r4, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    lis     r3, unk_803f050c@h
    addi    r5, r3, unk_803f050c@l
    addi    r4, r4, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fdc(r13)
branch_0x80059e14:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x80059e48
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80059e48
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80059e48:
    li      r3, 0x1
    b       branch_0x80059e54

branch_0x80059e50:
    li      r3, 0x0
branch_0x80059e54:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl __dt__16TNerveHino2BurstFv
__dt__16TNerveHino2BurstFv: # 0x80059e6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80059eb0
    lis     r3, __vvt__16TNerveHino2Burst@h
    addi    r0, r3, __vvt__16TNerveHino2Burst@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80059ea0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80059ea0:
    extsh.  r0, r4
    ble-    branch_0x80059eb0
    mr      r3, r31
    bl      __dl__FPv
branch_0x80059eb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveHino2SquatCFP24TSpineBase_10TLiveActor_
execute__16TNerveHino2SquatCFP24TSpineBase_10TLiveActor_: # 0x80059ec8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    lwz     r3, 0x0(r4)
    stw     r0, 0x188(r3)
    mr      r30, r3
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80059f08
    addi    r3, r30, 0x0
    li      r4, 0x13
    bl      changeBck__10THinokuri2Fi
branch_0x80059f08:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80059ffc
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x13
    bne-    branch_0x80059f70
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x158(r3)
    lfs     f0, 0x134(r30)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80059f64
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x4
    lfs     f1, -0x6e14(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x80059f64:
    addi    r3, r30, 0x0
    li      r4, 0x14
    bl      changeBck__10THinokuri2Fi
branch_0x80059f70:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x14
    bne-    branch_0x80059ffc
    lbz     r0, R13Off_m0x6f94(r13)
    extsb.  r0, r0
    bne-    branch_0x80059fc0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveHino2Burst@h
    stw     r0, R13Off_m0x6f90(r13)
    addi    r0, r3, __vvt__16TNerveHino2Burst@l
    lis     r4, __dt__16TNerveHino2BurstFv@ha
    stw     r0, R13Off_m0x6f90(r13)
    lis     r3, unk_803f0578@h
    addi    r5, r3, unk_803f0578@l
    addi    r4, r4, __dt__16TNerveHino2BurstFv@l
    addi    r3, r13, R13Off_m0x6f90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f94(r13)
branch_0x80059fc0:
    addi    r4, r13, R13Off_m0x6f90
    cmplwi  r4, 0x0
    beq-    branch_0x80059ff4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80059ff4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80059ff4:
    li      r3, 0x1
    b       branch_0x8005a000

branch_0x80059ffc:
    li      r3, 0x0
branch_0x8005a000:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__16TNerveHino2SquatFv
__dt__16TNerveHino2SquatFv: # 0x8005a018
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005a05c
    lis     r3, __vvt__16TNerveHino2Squat@h
    addi    r0, r3, __vvt__16TNerveHino2Squat@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005a04c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005a04c:
    extsh.  r0, r4
    ble-    branch_0x8005a05c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005a05c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveHino2DamageCFP24TSpineBase_10TLiveActor_
execute__17TNerveHino2DamageCFP24TSpineBase_10TLiveActor_: # 0x8005a074
    mflr    r0
    lis     r3, unk_803f0500@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    addi    r31, r3, unk_803f0500@l
    stw     r30, 0xe8(sp)
    stw     r29, 0xe4(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005a0bc
    li      r0, 0x1
    stw     r0, 0x180(r30)
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      changeBck__10THinokuri2Fi
branch_0x8005a0bc:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a104
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x5
    bne-    branch_0x8005a0ec
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      changeBck__10THinokuri2Fi
branch_0x8005a0ec:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x2
    bne-    branch_0x8005a104
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      changeBck__10THinokuri2Fi
branch_0x8005a104:
    lwz     r0, 0x18c(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x8005a1bc
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x5
    beq-    branch_0x8005a128
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      changeBck__10THinokuri2Fi
branch_0x8005a128:
    li      r3, 0x0
    stw     r3, 0x18c(r30)
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8005a1bc
    stw     r3, 0x180(r30)
    lbz     r0, R13Off_m0x6f9c(r13)
    extsb.  r0, r0
    bne-    branch_0x8005a180
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveHino2Squat@h
    stw     r0, R13Off_m0x6f98(r13)
    addi    r0, r3, __vvt__16TNerveHino2Squat@l
    lis     r3, __dt__16TNerveHino2SquatFv@ha
    stw     r0, R13Off_m0x6f98(r13)
    addi    r4, r3, __dt__16TNerveHino2SquatFv@l
    addi    r3, r13, R13Off_m0x6f98
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f9c(r13)
branch_0x8005a180:
    addi    r4, r13, R13Off_m0x6f98
    cmplwi  r4, 0x0
    beq-    branch_0x8005a1b4
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8005a1b4
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8005a1b4:
    li      r3, 0x1
    b       branch_0x8005a48c

branch_0x8005a1bc:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r29)
    lwz     r0, 0x1e4(r3)
    cmpw    r4, r0
    blt-    branch_0x8005a488
    li      r0, 0x0
    stw     r0, 0x180(r30)
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8005a270
    lbz     r0, R13Off_m0x6f9c(r13)
    extsb.  r0, r0
    bne-    branch_0x8005a234
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveHino2Squat@h
    stw     r0, R13Off_m0x6f98(r13)
    addi    r0, r3, __vvt__16TNerveHino2Squat@l
    lis     r3, __dt__16TNerveHino2SquatFv@ha
    stw     r0, R13Off_m0x6f98(r13)
    addi    r4, r3, __dt__16TNerveHino2SquatFv@l
    addi    r3, r13, R13Off_m0x6f98
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f9c(r13)
branch_0x8005a234:
    addi    r4, r13, R13Off_m0x6f98
    cmplwi  r4, 0x0
    beq-    branch_0x8005a268
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8005a268
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8005a268:
    li      r3, 0x1
    b       branch_0x8005a48c

branch_0x8005a270:
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x4
    beq-    branch_0x8005a288
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      changeBck__10THinokuri2Fi
branch_0x8005a288:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a488
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x4
    bne-    branch_0x8005a488
    lwz     r4, 0x124(r30)
    li      r0, -0x1
    addi    r3, r30, 0x0
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    li      r0, 0x0
    stw     r0, 0x8(r29)
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005a308
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r3, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r4, r3, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fdc(r13)
branch_0x8005a308:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x8005a33c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8005a33c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8005a33c:
    lwz     r0, 0x1a8(r30)
    cmpwi   r0, 0x1
    beq-    branch_0x8005a380
    bge-    branch_0x8005a358
    cmpwi   r0, 0x0
    bge-    branch_0x8005a364
    b       branch_0x8005a3b8

branch_0x8005a358:
    cmpwi   r0, 0x3
    bge-    branch_0x8005a3b8
    b       branch_0x8005a39c

branch_0x8005a364:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005a3f4

branch_0x8005a380:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005a3f4

branch_0x8005a39c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005a3f4

branch_0x8005a3b8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005a3f0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005a3f4

branch_0x8005a3f0:
    li      r0, 0x1
branch_0x8005a3f4:
    stb     r0, 0x13c(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x1a8(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1bc(r3)
    subf    r31, r29, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e10(r2)
    stw     r0, 0xdc(sp)
    lis     r4, 0x4330
    xoris   r0, r31, 0x8000
    lfs     f1, -0x6e18(r2)
    stw     r4, 0xd8(sp)
    li      r3, 0x1
    stw     r0, 0xd4(sp)
    lfd     f0, 0xd8(sp)
    stw     r4, 0xd0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xd0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    add     r0, r29, r0
    stw     r0, 0x164(r30)
    b       branch_0x8005a48c

branch_0x8005a488:
    li      r3, 0x0
branch_0x8005a48c:
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    mtlr    r0
    lwz     r29, 0xe4(sp)
    addi    sp, sp, 0xf0
    blr


.globl __dt__17TNerveHino2DamageFv
__dt__17TNerveHino2DamageFv: # 0x8005a4a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005a4ec
    lis     r3, __vvt__17TNerveHino2Damage@h
    addi    r0, r3, __vvt__17TNerveHino2Damage@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005a4dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005a4dc:
    extsh.  r0, r4
    ble-    branch_0x8005a4ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005a4ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveHino2PolluteCFP24TSpineBase_10TLiveActor_
execute__18TNerveHino2PolluteCFP24TSpineBase_10TLiveActor_: # 0x8005a504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    mr      r30, r4
    stw     r29, 0xdc(sp)
    stw     r28, 0xd8(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005a548
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      changeBck__10THinokuri2Fi
    li      r3, 0x0
    b       branch_0x8005a894

branch_0x8005a548:
    lwz     r0, 0x154(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x8005a588
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a580
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      changeBck__10THinokuri2Fi
    li      r0, 0x1
    stw     r0, 0x180(r31)
branch_0x8005a580:
    li      r3, 0x0
    b       branch_0x8005a894

branch_0x8005a588:
    cmpwi   r0, 0x3
    bne-    branch_0x8005a5f4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a5ec
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r28, 0x160(r31)
    lwz     r12, 0x108(r12)
    addi    r28, r28, 0x1
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    cmpw    r28, r0
    ble-    branch_0x8005a5e8
    li      r0, 0x0
    stw     r0, 0x180(r31)
    addi    r3, r31, 0x0
    li      r4, 0x10
    bl      changeBck__10THinokuri2Fi
    li      r28, 0x0
branch_0x8005a5e8:
    stw     r28, 0x160(r31)
branch_0x8005a5ec:
    li      r3, 0x0
    b       branch_0x8005a894

branch_0x8005a5f4:
    cmpwi   r0, 0x10
    bne-    branch_0x8005a678
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a670
    addi    r3, r31, 0x0
    li      r4, 0x11
    bl      changeBck__10THinokuri2Fi
    li      r0, 0x0
    stw     r0, 0x15c(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8005a660
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, -0x6e08(r2)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xb0(sp)
    lfs     f1, 0xac(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    b       branch_0x8005a670

branch_0x8005a660:
    addi    r3, r31, 0x0
    addi    r5, sp, 0xa8
    li      r4, 0x18
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8005a670:
    li      r3, 0x0
    b       branch_0x8005a894

branch_0x8005a678:
    cmpwi   r0, 0x11
    bne-    branch_0x8005a6ac
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a6a4
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      changeBck__10THinokuri2Fi
branch_0x8005a6a4:
    li      r3, 0x0
    b       branch_0x8005a894

branch_0x8005a6ac:
    cmpwi   r0, 0x1
    bne-    branch_0x8005a890
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005a890
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8005a710
    bge-    branch_0x8005a6e8
    cmpwi   r0, 0x0
    bge-    branch_0x8005a6f4
    b       branch_0x8005a748

branch_0x8005a6e8:
    cmpwi   r0, 0x3
    bge-    branch_0x8005a748
    b       branch_0x8005a72c

branch_0x8005a6f4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005a784

branch_0x8005a710:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005a784

branch_0x8005a72c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005a784

branch_0x8005a748:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005a780
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005a784

branch_0x8005a780:
    li      r0, 0x1
branch_0x8005a784:
    stb     r0, 0x13c(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1bc(r3)
    subf    r28, r29, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e10(r2)
    stw     r0, 0xd4(sp)
    lis     r3, 0x4330
    xoris   r0, r28, 0x8000
    lfs     f1, -0x6e18(r2)
    stw     r3, 0xd0(sp)
    stw     r0, 0xcc(sp)
    lfd     f0, 0xd0(sp)
    stw     r3, 0xc8(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xc8(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    add     r0, r29, r0
    stw     r0, 0x164(r31)
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005a854
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r4, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    lis     r3, unk_803f050c@h
    addi    r5, r3, unk_803f050c@l
    addi    r4, r4, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fdc(r13)
branch_0x8005a854:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x8005a888
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8005a888
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8005a888:
    li      r3, 0x1
    b       branch_0x8005a894

branch_0x8005a890:
    li      r3, 0x0
branch_0x8005a894:
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0xe8
    blr


.globl __dt__18TNerveHino2PolluteFv
__dt__18TNerveHino2PolluteFv: # 0x8005a8b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005a8f8
    lis     r3, __vvt__18TNerveHino2Pollute@h
    addi    r0, r3, __vvt__18TNerveHino2Pollute@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005a8e8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005a8e8:
    extsh.  r0, r4
    ble-    branch_0x8005a8f8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005a8f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveHino2PrePolCFP24TSpineBase_10TLiveActor_
execute__17TNerveHino2PrePolCFP24TSpineBase_10TLiveActor_: # 0x8005a910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005a94c
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      changeBck__10THinokuri2Fi
branch_0x8005a94c:
    lwz     r0, 0x154(r31)
    cmpwi   r0, 0x16
    bne-    branch_0x8005aaf0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005aae8
    mr      r3, r31
    lwz     r29, 0x160(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x180(r3)
    addi    r3, r29, 0x1
    cmpw    r3, r0
    ble-    branch_0x8005aae4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x2ac(r3)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x6e10(r2)
    stw     r0, 0x54(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6e18(r2)
    stw     r0, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fcmpo   cr0, f0, f31
    bge-    branch_0x8005aa5c
    lbz     r0, R13Off_m0x6f84(r13)
    extsb.  r0, r0
    bne-    branch_0x8005aa24
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveHino2Stamp@h
    stw     r0, R13Off_m0x6f80(r13)
    addi    r0, r3, __vvt__16TNerveHino2Stamp@l
    lis     r4, __dt__16TNerveHino2StampFv@ha
    stw     r0, R13Off_m0x6f80(r13)
    lis     r3, unk_803f0590@h
    addi    r5, r3, unk_803f0590@l
    addi    r4, r4, __dt__16TNerveHino2StampFv@l
    addi    r3, r13, R13Off_m0x6f80
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f84(r13)
branch_0x8005aa24:
    addi    r4, r13, R13Off_m0x6f80
    cmplwi  r4, 0x0
    beq-    branch_0x8005aad4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8005aad4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
    b       branch_0x8005aad4

branch_0x8005aa5c:
    lbz     r0, R13Off_m0x6fac(r13)
    extsb.  r0, r0
    bne-    branch_0x8005aaa0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveHino2Pollute@h
    stw     r0, R13Off_m0x6fa8(r13)
    addi    r0, r3, __vvt__18TNerveHino2Pollute@l
    lis     r4, __dt__18TNerveHino2PolluteFv@ha
    stw     r0, R13Off_m0x6fa8(r13)
    lis     r3, unk_803f0554@h
    addi    r5, r3, unk_803f0554@l
    addi    r4, r4, __dt__18TNerveHino2PolluteFv@l
    addi    r3, r13, R13Off_m0x6fa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fac(r13)
branch_0x8005aaa0:
    addi    r4, r13, R13Off_m0x6fa8
    cmplwi  r4, 0x0
    beq-    branch_0x8005aad4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8005aad4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8005aad4:
    li      r0, 0x0
    stw     r0, 0x160(r31)
    li      r3, 0x1
    b       branch_0x8005aaf4

branch_0x8005aae4:
    stw     r3, 0x160(r31)
branch_0x8005aae8:
    li      r3, 0x0
    b       branch_0x8005aaf4

branch_0x8005aaf0:
    li      r3, 0x0
branch_0x8005aaf4:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__17TNerveHino2PrePolFv
__dt__17TNerveHino2PrePolFv: # 0x8005ab14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005ab58
    lis     r3, __vvt__17TNerveHino2PrePol@h
    addi    r0, r3, __vvt__17TNerveHino2PrePol@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005ab48
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005ab48:
    extsh.  r0, r4
    ble-    branch_0x8005ab58
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005ab58:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveHino2TurnCFP24TSpineBase_10TLiveActor_
execute__15TNerveHino2TurnCFP24TSpineBase_10TLiveActor_: # 0x8005ab70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r3, 0x0(r4)
    lwz     r4, 0xf4(r3)
    addi    r5, r3, 0xf4
    addi    r31, r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x8005abac
    addi    r4, r4, 0x10
    b       branch_0x8005abb0

branch_0x8005abac:
    addi    r4, r5, 0x4
branch_0x8005abb0:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f2, -0x6e04(r2)
    lfs     f1, 0x58(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8005ac28
    lfs     f0, 0x50(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x8005ac20
    lfs     f31, -0x6e00(r2)
    b       branch_0x8005aca4

branch_0x8005ac20:
    lfs     f31, -0x6dfc(r2)
    b       branch_0x8005aca4

branch_0x8005ac28:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8005ac68
    lfs     f2, 0x50(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6e10(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6df8(r2)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    stw     r0, 0x60(sp)
    lfd     f1, 0x60(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f0, f1
    b       branch_0x8005aca4

branch_0x8005ac68:
    fneg    f1, f1
    lfs     f2, 0x50(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6e10(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6df8(r2)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6df4(r2)
    stw     r0, 0x60(sp)
    lfd     f2, 0x60(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f31, f0, f1
branch_0x8005aca4:
    lfs     f0, -0x6df0(r2)
    b       branch_0x8005acb0

branch_0x8005acac:
    fsubs   f31, f31, f0
branch_0x8005acb0:
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    beq+    branch_0x8005acac
    lfs     f1, -0x6df0(r2)
    lfs     f0, -0x6e04(r2)
    b       branch_0x8005accc

branch_0x8005acc8:
    fadds   f31, f31, f1
branch_0x8005accc:
    fcmpo   cr0, f31, f0
    blt+    branch_0x8005acc8
    lfs     f0, -0x6df4(r2)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_8005add4
    lwz     r0, 0x20(r30)
    fsubs   f31, f31, f1
    cmpwi   r0, 0x0
    bne-    branch_0x8005ad20
    fabs    f1, f31
    lfs     f0, -0x6dec(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005ad20
    lwz     r0, 0x154(r31)
    cmpwi   r0, 0x15
    beq-    branch_0x8005ad20
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      changeBck__10THinokuri2Fi
branch_0x8005ad20:
    lfs     f0, -0x6e04(r2)
    lfs     f3, 0x144(r31)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8005ad44
    fcmpo   cr0, f31, f3
    ble-    branch_0x8005ad3c
    fmr     f31, f3
branch_0x8005ad3c:
    fmr     f4, f31
    b       branch_0x8005ad5c

branch_0x8005ad44:
    fneg    f0, f3
    fcmpo   cr0, f31, f0
    ble-    branch_0x8005ad54
    b       branch_0x8005ad58

branch_0x8005ad54:
    fmr     f31, f0
branch_0x8005ad58:
    fmr     f4, f31
branch_0x8005ad5c:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6df0(r2)
    fadds   f2, f1, f4
    b       branch_0x8005ad70

branch_0x8005ad6c:
    fsubs   f2, f2, f0
branch_0x8005ad70:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x8005ad6c
    lfs     f1, -0x6df0(r2)
    lfs     f0, -0x6e04(r2)
    b       branch_0x8005ad8c

branch_0x8005ad88:
    fadds   f2, f2, f1
branch_0x8005ad8c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8005ad88
    stfs    f2, 0x34(r31)
    fabs    f1, f4
    lfs     f0, -0x6de8(r2)
    fmuls   f0, f0, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x8005adb4
    li      r3, 0x1
    b       branch_0x8005adb8

branch_0x8005adb4:
    li      r3, 0x0
branch_0x8005adb8:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl MsWrap_f___Ffff_8005add4
MsWrap_f___Ffff_8005add4: # 0x8005add4
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x8005ae10
    fmr     f1, f2
    blr

branch_0x8005ade8:
    b       branch_0x8005adf0

branch_0x8005adec:
    fsubs   f1, f1, f0
branch_0x8005adf0:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8005adec
    b       branch_0x8005ae04

branch_0x8005ae00:
    fadds   f1, f1, f0
branch_0x8005ae04:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8005ae00
    blr

branch_0x8005ae10:
    fsubs   f0, f3, f2
    b       branch_0x8005adf0

branch_0x8005ae18:
    blr


.globl __dt__15TNerveHino2TurnFv
__dt__15TNerveHino2TurnFv: # 0x8005ae1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005ae60
    lis     r3, __vvt__15TNerveHino2Turn@h
    addi    r0, r3, __vvt__15TNerveHino2Turn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005ae50
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005ae50:
    extsh.  r0, r4
    ble-    branch_0x8005ae60
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005ae60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveHino2LandingCFP24TSpineBase_10TLiveActor_
execute__18TNerveHino2LandingCFP24TSpineBase_10TLiveActor_: # 0x8005ae78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005aedc
    addi    r3, r31, 0x0
    li      r4, 0xe
    bl      changeBck__10THinokuri2Fi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x158(r3)
    lfs     f0, 0x134(r31)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x8005aedc
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x4
    lfs     f1, -0x6e14(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8005aedc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lwz     r0, 0xf0(r31)
    fctiwz  f0, f0
    rlwinm. r0, r0, 0, 29, 29
    stfd    f0, 0x50(sp)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005af20
    li      r3, 0x1
    b       branch_0x8005af24

branch_0x8005af20:
    li      r3, 0x0
branch_0x8005af24:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl __dt__18TNerveHino2LandingFv
__dt__18TNerveHino2LandingFv: # 0x8005af38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005af7c
    lis     r3, __vvt__18TNerveHino2Landing@h
    addi    r0, r3, __vvt__18TNerveHino2Landing@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005af6c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005af6c:
    extsh.  r0, r4
    ble-    branch_0x8005af7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005af7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveHino2JumpInCFP24TSpineBase_10TLiveActor_
execute__17TNerveHino2JumpInCFP24TSpineBase_10TLiveActor_: # 0x8005af94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005afd0
    addi    r3, r29, 0x0
    li      r4, 0x9
    bl      changeBck__10THinokuri2Fi
branch_0x8005afd0:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005b0dc
    lwz     r4, 0x104(r29)
    addi    r3, r29, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x8005b000
    addi    r30, r4, 0x10
    b       branch_0x8005b004

branch_0x8005b000:
    addi    r30, r3, 0x4
branch_0x8005b004:
    mr      r3, r29
    lwz     r4, 0x124(r29)
    lwz     r12, 0x0(r29)
    lfs     f31, 0xc(r4)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r29
    fmr     f1, f31
    addi    r5, r30, 0x0
    addi    r3, sp, 0x34
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x3c(sp)
    stw     r0, 0xb4(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r29)
    lbz     r0, R13Off_m0x6fd4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b0a0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveHino2Fly@h
    stw     r0, R13Off_m0x6fd0(r13)
    addi    r0, r3, __vvt__14TNerveHino2Fly@l
    lis     r4, __dt__14TNerveHino2FlyFv@ha
    stw     r0, R13Off_m0x6fd0(r13)
    lis     r3, unk_803f0518@h
    addi    r5, r3, unk_803f0518@l
    addi    r4, r4, __dt__14TNerveHino2FlyFv@l
    addi    r3, r13, R13Off_m0x6fd0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fd4(r13)
branch_0x8005b0a0:
    addi    r4, r13, R13Off_m0x6fd0
    cmplwi  r4, 0x0
    beq-    branch_0x8005b0d4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8005b0d4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8005b0d4:
    li      r3, 0x1
    b       branch_0x8005b0e0

branch_0x8005b0dc:
    li      r3, 0x0
branch_0x8005b0e0:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x68
    blr


.globl __dt__14TNerveHino2FlyFv
__dt__14TNerveHino2FlyFv: # 0x8005b100
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005b144
    lis     r3, __vvt__14TNerveHino2Fly@h
    addi    r0, r3, __vvt__14TNerveHino2Fly@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005b134
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005b134:
    extsh.  r0, r4
    ble-    branch_0x8005b144
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005b144:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TNerveHino2JumpInFv
__dt__17TNerveHino2JumpInFv: # 0x8005b15c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005b1a0
    lis     r3, __vvt__17TNerveHino2JumpIn@h
    addi    r0, r3, __vvt__17TNerveHino2JumpIn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005b190
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005b190:
    extsh.  r0, r4
    ble-    branch_0x8005b1a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005b1a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveHino2FlyCFP24TSpineBase_10TLiveActor_
execute__14TNerveHino2FlyCFP24TSpineBase_10TLiveActor_: # 0x8005b1b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005b1ec
    addi    r3, r30, 0x0
    li      r4, 0xc
    bl      changeBck__10THinokuri2Fi
branch_0x8005b1ec:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005b21c
    lwz     r0, 0x154(r30)
    cmpwi   r0, 0x8
    beq-    branch_0x8005b21c
    addi    r3, r30, 0x0
    li      r4, 0x8
    bl      changeBck__10THinokuri2Fi
branch_0x8005b21c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8005b264
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8005b2e4
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8005b258
    li      r0, 0x1
    b       branch_0x8005b25c

branch_0x8005b258:
    li      r0, 0x0
branch_0x8005b25c:
    cmpwi   r0, 0x0
    bne-    branch_0x8005b2e4
branch_0x8005b264:
    lbz     r0, R13Off_m0x6fc4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b2a8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveHino2Landing@h
    stw     r0, R13Off_m0x6fc0(r13)
    addi    r0, r3, __vvt__18TNerveHino2Landing@l
    lis     r4, __dt__18TNerveHino2LandingFv@ha
    stw     r0, R13Off_m0x6fc0(r13)
    lis     r3, unk_803f0530@h
    addi    r5, r3, unk_803f0530@l
    addi    r4, r4, __dt__18TNerveHino2LandingFv@l
    addi    r3, r13, R13Off_m0x6fc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fc4(r13)
branch_0x8005b2a8:
    addi    r4, r13, R13Off_m0x6fc0
    cmplwi  r4, 0x0
    beq-    branch_0x8005b2dc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8005b2dc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8005b2dc:
    li      r3, 0x1
    b       branch_0x8005b2e8

branch_0x8005b2e4:
    li      r3, 0x0
branch_0x8005b2e8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl execute__22TNerveHino2GraphWanderCFP24TSpineBase_10TLiveActor_
execute__22TNerveHino2GraphWanderCFP24TSpineBase_10TLiveActor_: # 0x8005b300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    li      r31, 0x1
    stw     r30, 0x108(sp)
    stw     r29, 0x104(sp)
    stw     r28, 0x100(sp)
    mr      r28, r4
    lwz     r29, 0x0(r4)
    lis     r4, unk_803f0500@h
    addi    r30, r4, unk_803f0500@l
    stw     r31, 0x188(r29)
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x8005b540
    mr      r3, r29
    bl      jumpToNextGraphNode__11TSpineEnemyFv
    cmpwi   r3, 0x0
    blt-    branch_0x8005b4c0
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b39c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r3, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r4, r3, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    addi    r5, r30, 0xc
    bl      __register_global_object
    stb     r31, R13Off_m0x6fdc(r13)
branch_0x8005b39c:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x8005b3d0
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8005b3d0
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8005b3d0:
    lbz     r0, R13Off_m0x6fcc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b410
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveHino2JumpIn@h
    stw     r0, R13Off_m0x6fc8(r13)
    addi    r0, r3, __vvt__17TNerveHino2JumpIn@l
    lis     r3, __dt__17TNerveHino2JumpInFv@ha
    stw     r0, R13Off_m0x6fc8(r13)
    addi    r4, r3, __dt__17TNerveHino2JumpInFv@l
    addi    r3, r13, R13Off_m0x6fc8
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fcc(r13)
branch_0x8005b410:
    addi    r4, r13, R13Off_m0x6fc8
    cmplwi  r4, 0x0
    beq-    branch_0x8005b444
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8005b444
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8005b444:
    lbz     r0, R13Off_m0x6fbc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b484
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveHino2Turn@h
    stw     r0, R13Off_m0x6fb8(r13)
    addi    r0, r3, __vvt__15TNerveHino2Turn@l
    lis     r3, __dt__15TNerveHino2TurnFv@ha
    stw     r0, R13Off_m0x6fb8(r13)
    addi    r4, r3, __dt__15TNerveHino2TurnFv@l
    addi    r3, r13, R13Off_m0x6fb8
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fbc(r13)
branch_0x8005b484:
    addi    r4, r13, R13Off_m0x6fb8
    cmplwi  r4, 0x0
    beq-    branch_0x8005b4b8
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8005b4b8
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8005b4b8:
    li      r3, 0x1
    b       branch_0x8005b7c0

branch_0x8005b4c0:
    mr      r3, r29
    bl      goToExclusiveNextGraphNode__11TSpineEnemyFv
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b504
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r3, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r4, r3, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    addi    r5, r30, 0xc
    bl      __register_global_object
    stb     r31, R13Off_m0x6fdc(r13)
branch_0x8005b504:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x8005b538
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8005b538
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8005b538:
    li      r3, 0x1
    b       branch_0x8005b7c0

branch_0x8005b540:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x2
    blt-    branch_0x8005b6b8
    lwz     r0, 0x164(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x8005b6b8
    lwz     r0, 0x1a8(r29)
    cmpwi   r0, 0x1
    blt-    branch_0x8005b5e0
    lbz     r0, R13Off_m0x6fb4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b5a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveHino2PrePol@h
    stw     r0, R13Off_m0x6fb0(r13)
    addi    r0, r3, __vvt__17TNerveHino2PrePol@l
    lis     r3, __dt__17TNerveHino2PrePolFv@ha
    stw     r0, R13Off_m0x6fb0(r13)
    addi    r4, r3, __dt__17TNerveHino2PrePolFv@l
    addi    r3, r13, R13Off_m0x6fb0
    addi    r5, r30, 0x48
    bl      __register_global_object
    stb     r31, R13Off_m0x6fb4(r13)
branch_0x8005b5a4:
    addi    r4, r13, R13Off_m0x6fb0
    cmplwi  r4, 0x0
    beq-    branch_0x8005b5d8
    lwz     r5, 0x8(r28)
    lwz     r0, 0x4(r28)
    cmpw    r5, r0
    bge-    branch_0x8005b5d8
    lwz     r3, 0xc(r28)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r28)
branch_0x8005b5d8:
    li      r3, 0x1
    b       branch_0x8005b7c0

branch_0x8005b5e0:
    li      r0, 0x0
    stw     r0, 0x15c(r29)
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8005b620
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    lfs     f0, -0x6e08(r2)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0xb8(sp)
    lfs     f1, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(sp)
    b       branch_0x8005b630

branch_0x8005b620:
    addi    r3, r29, 0x0
    addi    r5, sp, 0xb0
    li      r4, 0x18
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8005b630:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x1a8(r3)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1bc(r3)
    subf    r31, r30, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e10(r2)
    stw     r0, 0xfc(sp)
    lis     r3, 0x4330
    xoris   r0, r31, 0x8000
    lfs     f1, -0x6e18(r2)
    stw     r3, 0xf8(sp)
    stw     r0, 0xf4(sp)
    lfd     f0, 0xf8(sp)
    stw     r3, 0xf0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xf0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r0, 0xec(sp)
    add     r0, r30, r0
    stw     r0, 0x164(r29)
branch_0x8005b6b8:
    lwz     r0, 0x20(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x8005b6d0
    addi    r3, r29, 0x0
    li      r4, 0x18
    bl      changeBck__10THinokuri2Fi
branch_0x8005b6d0:
    lwz     r0, 0x154(r29)
    cmpwi   r0, 0x18
    bne-    branch_0x8005b6f0
    lfs     f2, 0x144(r29)
    mr      r3, r29
    lfs     f1, 0x140(r29)
    lfs     f3, -0x6e04(r2)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x8005b6f0:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lwz     r0, 0x1a8(r29)
    fctiwz  f0, f0
    cmpwi   r0, 0x0
    stfd    f0, 0xe8(sp)
    lwz     r28, 0xec(sp)
    beq-    branch_0x8005b7bc
    lwz     r3, 0xf0(r29)
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x8005b7bc
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x8005b734
    li      r0, 0x1
    b       branch_0x8005b738

branch_0x8005b734:
    li      r0, 0x0
branch_0x8005b738:
    cmpwi   r0, 0x0
    bne-    branch_0x8005b7bc
    cmpwi   r28, 0x24
    beq-    branch_0x8005b750
    cmpwi   r28, 0x55
    bne-    branch_0x8005b7bc
branch_0x8005b750:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x144(r3)
    lfs     f0, 0x134(r29)
    fmuls   f1, f1, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x8005b788
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x3
    lfs     f1, -0x6e14(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x8005b788:
    cmpwi   r28, 0x24
    bne-    branch_0x8005b7a4
    addi    r3, r29, 0x0
    addi    r5, sp, 0xd4
    li      r4, 0x9
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    b       branch_0x8005b7bc

branch_0x8005b7a4:
    cmpwi   r28, 0x55
    bne-    branch_0x8005b7bc
    addi    r3, r29, 0x0
    addi    r5, sp, 0xd4
    li      r4, 0x10
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8005b7bc:
    li      r3, 0x0
branch_0x8005b7c0:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x110
    blr


.globl execute__17TNerveHino2AppearCFP24TSpineBase_10TLiveActor_
execute__17TNerveHino2AppearCFP24TSpineBase_10TLiveActor_: # 0x8005b7e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005b814
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      changeBck__10THinokuri2Fi
branch_0x8005b814:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8005b8b4
    mr      r3, r30
    bl      goToExclusiveNextGraphNode__11TSpineEnemyFv
    lbz     r0, R13Off_m0x6fdc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005b878
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveHino2GraphWander@h
    stw     r0, R13Off_m0x6fd8(r13)
    addi    r0, r3, __vvt__22TNerveHino2GraphWander@l
    lis     r4, __dt__22TNerveHino2GraphWanderFv@ha
    stw     r0, R13Off_m0x6fd8(r13)
    lis     r3, unk_803f050c@h
    addi    r5, r3, unk_803f050c@l
    addi    r4, r4, __dt__22TNerveHino2GraphWanderFv@l
    addi    r3, r13, R13Off_m0x6fd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fdc(r13)
branch_0x8005b878:
    addi    r4, r13, R13Off_m0x6fd8
    cmplwi  r4, 0x0
    beq-    branch_0x8005b8ac
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8005b8ac
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8005b8ac:
    li      r3, 0x1
    b       branch_0x8005b8b8

branch_0x8005b8b4:
    li      r3, 0x0
branch_0x8005b8b8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__17TNerveHino2AppearFv
__dt__17TNerveHino2AppearFv: # 0x8005b8d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005b914
    lis     r3, __vvt__17TNerveHino2Appear@h
    addi    r0, r3, __vvt__17TNerveHino2Appear@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8005b904
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8005b904:
    extsh.  r0, r4
    ble-    branch_0x8005b914
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005b914:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10THinokuri2FUlPQ26JDrama9TGraphics
perform__10THinokuri2FUlPQ26JDrama9TGraphics: # 0x8005b92c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x4c(sp)
    mr      r29, r3
    stw     r28, 0x48(sp)
    stw     r29, R13Off_m0x6fe8(r13)
    lwz     r3, 0x16c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x170(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x174(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x178(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8005ba38
    lwz     r3, 0x74(r29)
    bl      resetDL__6MActorFv
    li      r28, 0x2
    b       branch_0x8005ba2c

branch_0x8005b9d8:
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlslwi  r0, r28, 16, 2
    lwz     r3, 0x30(r3)
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    beq-    branch_0x8005ba28
    lwz     r0, 0x1a8(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x8005ba0c
    cmpwi   r0, 0x2
    bne-    branch_0x8005ba1c
branch_0x8005ba0c:
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
    b       branch_0x8005ba28

branch_0x8005ba1c:
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x8005ba28:
    addi    r28, r28, 0x1
branch_0x8005ba2c:
    clrlwi  r0, r28, 16
    cmplwi  r0, 0x5
    blt+    branch_0x8005b9d8
branch_0x8005ba38:
    rlwinm. r28, r30, 0, 30, 30
    beq-    branch_0x8005ba94
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    bl      frameUpdate__6MActorFv
    lwz     r0, 0xf0(r29)
    andi.   r0, r0, 0x5
    bne-    branch_0x8005baa4
    lwz     r3, 0x74(r29)
    bl      updateIn__6MActorFv
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    bl      updateOut__6MActorFv
    b       branch_0x8005baa4

branch_0x8005ba94:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
branch_0x8005baa4:
    lwz     r0, 0xf0(r29)
    andi.   r0, r0, 0x5
    bne-    branch_0x8005bb44
    lwz     r0, 0x1a8(r29)
    cmpwi   r0, 0x2
    beq-    branch_0x8005bacc
    lwz     r3, 0x1a4(r29)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x8005bb0c
branch_0x8005bacc:
    cmplwi  r28, 0x0
    beq-    branch_0x8005bafc
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x1a4(r29)
    lwz     r3, 0x58(r3)
    lwz     r0, 0x4(r4)
    addi    r3, r3, 0x450
    cmpwi   r0, 0x2
    beq-    branch_0x8005bafc
    addi    r4, r4, 0x4c
    bl      PSMTXCopy
branch_0x8005bafc:
    lwz     r3, 0x1a4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__10THino2MaskFUlPQ26JDrama9TGraphics
branch_0x8005bb0c:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x8005bb44
    lwz     r3, 0x150(r29)
    bl      entryDrawShadow__16TMBindShadowBodyFv
    lwz     r5, 0x10(r29)
    addi    r4, sp, 0x34
    lwz     r0, 0x14(r29)
    lwz     r3, R13Off_m0x6138(r13)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0x3c(sp)
    lfs     f1, 0xb8(r29)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x8005bb44:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl moveObject__10THinokuri2Fv
moveObject__10THinokuri2Fv: # 0x8005bb64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x178(sp)
    stfd    f31, 0x170(sp)
    stw     r31, 0x16c(sp)
    mr      r31, r3
    stw     r30, 0x168(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8005c25c
    lwz     r3, 0x164(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8005bba0
    addi    r0, r3, -0x1
    stw     r0, 0x164(r31)
branch_0x8005bba0:
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8005bdd0
    beq-    branch_0x8005bbe8
    bge-    branch_0x8005bbc0
    cmpwi   r0, 0x0
    bge-    branch_0x8005bbcc
    b       branch_0x8005bc20

branch_0x8005bbc0:
    cmpwi   r0, 0x3
    bge-    branch_0x8005bc20
    b       branch_0x8005bc04

branch_0x8005bbcc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005bc5c

branch_0x8005bbe8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005bc5c

branch_0x8005bc04:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005bc5c

branch_0x8005bc20:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005bc58
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005bc5c

branch_0x8005bc58:
    li      r0, 0x1
branch_0x8005bc5c:
    lbz     r5, 0x13c(r31)
    clrlwi  r4, r0, 24
    lwz     r0, 0x1a8(r31)
    lis     r3, 0x4330
    subf    r4, r5, r4
    xoris   r4, r4, 0x8000
    lfd     f1, -0x6e10(r2)
    stw     r4, 0x164(sp)
    cmpwi   r0, 0x1
    stw     r3, 0x160(sp)
    lfd     f0, 0x160(sp)
    fsubs   f31, f0, f1
    beq-    branch_0x8005bcc8
    bge-    branch_0x8005bca0
    cmpwi   r0, 0x0
    bge-    branch_0x8005bcac
    b       branch_0x8005bd00

branch_0x8005bca0:
    cmpwi   r0, 0x3
    bge-    branch_0x8005bd00
    b       branch_0x8005bce4

branch_0x8005bcac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r30, 0x2fc(r3)
    b       branch_0x8005bd3c

branch_0x8005bcc8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r30, 0x310(r3)
    b       branch_0x8005bd3c

branch_0x8005bce4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r30, 0x324(r3)
    b       branch_0x8005bd3c

branch_0x8005bd00:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005bd38
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r30, 0x7c(r3)
    b       branch_0x8005bd3c

branch_0x8005bd38:
    li      r30, 0x1
branch_0x8005bd3c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    clrlwi  r0, r30, 24
    lfd     f2, -0x6dc8(r2)
    stw     r0, 0x164(sp)
    lis     r0, 0x4330
    lfs     f1, 0x1d0(r3)
    stw     r0, 0x160(sp)
    lfs     f4, -0x6de0(r2)
    lfd     f0, 0x160(sp)
    fsubs   f3, f1, f4
    lfs     f1, 0x194(r31)
    fsubs   f2, f0, f2
    lfs     f0, -0x6e04(r2)
    fdivs   f2, f31, f2
    fmadds  f2, f3, f2, f4
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    fmr     f0, f1
    ble-    branch_0x8005bdb0
    lfs     f1, -0x7f38(r13)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8005bda8
    b       branch_0x8005bdc0

branch_0x8005bda8:
    fmr     f1, f0
    b       branch_0x8005bdc0

branch_0x8005bdb0:
    lfs     f1, -0x7f34(r13)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8005bdc0
    fmr     f1, f0
branch_0x8005bdc0:
    lfs     f0, 0x194(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x194(r31)
    b       branch_0x8005bdd8

branch_0x8005bdd0:
    lfs     f0, -0x6de0(r2)
    stfs    f0, 0x194(r31)
branch_0x8005bdd8:
    lwz     r4, R13Off_m0x6048(r13)
    lis     r3, unk_1b4e81b5@ha
    addi    r0, r3, unk_1b4e81b5@l
    lwz     r4, 0x58(r4)
    mulhw   r0, r0, r4
    srawi   r0, r0, 6
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x258
    subf.   r0, r0, r4
    bne-    branch_0x8005beac
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8005be3c
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, -0x6de4(r2)
    stw     r3, 0x128(sp)
    stw     r0, 0x12c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x130(sp)
    lfs     f1, 0x12c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x12c(sp)
    b       branch_0x8005be4c

branch_0x8005be3c:
    addi    r3, r31, 0x0
    addi    r5, sp, 0x128
    li      r4, 0x14
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8005be4c:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e10(r2)
    stw     r0, 0x164(sp)
    lis     r0, 0x4330
    lfs     f1, -0x6e18(r2)
    stw     r0, 0x160(sp)
    lfs     f0, -0x6de8(r2)
    lfd     f2, 0x160(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005be88
    li      r0, 0x0
    b       branch_0x8005be8c

branch_0x8005be88:
    li      r0, 0x1
branch_0x8005be8c:
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r4, r13, R13Off_m0x7f40
    lwzx    r5, r4, r0
    addi    r4, sp, 0x128
    li      r6, 0x1
    li      r7, 0x0
    bl      makeEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCcii
branch_0x8005beac:
    mr      r3, r31
    bl      doShortCut__11TSpineEnemyFv
    lfs     f0, -0x6e04(r2)
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa0(r31)
    lwz     r0, 0xec(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8005bf10
    addi    r3, r31, 0x0
    addi    r5, sp, 0x148
    li      r4, 0x17
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8005bf10
    lwz     r12, 0x0(r3)
    addi    r4, sp, 0x148
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x8005bf10:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1f8(r3)
    lfs     f0, 0x148(r31)
    lwz     r3, 0x16c(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(r3)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x20c(r3)
    lfs     f0, 0x148(r31)
    lwz     r3, 0x16c(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8005bff0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x248(r3)
    lfs     f0, 0x148(r31)
    lwz     r3, 0x170(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(r3)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x25c(r3)
    lfs     f0, 0x148(r31)
    lwz     r3, 0x170(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x8005c058

branch_0x8005bff0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x220(r3)
    lfs     f0, 0x148(r31)
    lwz     r3, 0x170(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x58(r3)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x234(r3)
    lfs     f0, 0x148(r31)
    lwz     r3, 0x170(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
branch_0x8005c058:
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    mr      r3, r31
    lfs     f31, 0x34(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x10(r31)
    fmr     f1, f31
    lfs     f0, 0x94(r31)
    fadds   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f0, 0x98(r31)
    fadds   f0, f2, f0
    stfs    f0, 0x14(r31)
    lfs     f2, 0x18(r31)
    lfs     f0, 0x9c(r31)
    fadds   f0, f2, f0
    stfs    f0, 0x18(r31)
    lfs     f2, 0x30(r31)
    lfs     f0, 0xa0(r31)
    fadds   f0, f2, f0
    stfs    f0, 0x30(r31)
    lfs     f2, 0x34(r31)
    lfs     f0, 0xa4(r31)
    fadds   f0, f2, f0
    stfs    f0, 0x34(r31)
    lfs     f2, 0x38(r31)
    lfs     f0, 0xa8(r31)
    fadds   f0, f2, f0
    stfs    f0, 0x38(r31)
    lfs     f31, 0x34(r31)
    lfs     f0, -0x6df4(r2)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_8005add4
    fsubs   f31, f31, f1
    lfs     f1, -0x6df0(r2)
    lfs     f0, -0x6df4(r2)
    b       branch_0x8005c118

branch_0x8005c114:
    fsubs   f31, f31, f1
branch_0x8005c118:
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    beq+    branch_0x8005c114
    lfs     f1, -0x6df0(r2)
    lfs     f0, -0x6ddc(r2)
    b       branch_0x8005c134

branch_0x8005c130:
    fadds   f31, f31, f1
branch_0x8005c134:
    fcmpo   cr0, f31, f0
    blt+    branch_0x8005c130
    lfs     f0, -0x6dd8(r2)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8005c150
    fmr     f31, f0
    b       branch_0x8005c160

branch_0x8005c150:
    lfs     f0, -0x6dd4(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8005c160
    fmr     f31, f0
branch_0x8005c160:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    fneg    f2, f31
    lfs     f1, 0x270(r3)
    lfs     f0, 0x198(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x198(r31)
    lfs     f2, 0x198(r31)
    lfs     f1, -0x6df0(r2)
    lfs     f0, -0x6df4(r2)
    b       branch_0x8005c19c

branch_0x8005c198:
    fsubs   f2, f2, f1
branch_0x8005c19c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x8005c198
    lfs     f1, -0x6df0(r2)
    lfs     f0, -0x6ddc(r2)
    b       branch_0x8005c1b8

branch_0x8005c1b4:
    fadds   f2, f2, f1
branch_0x8005c1b8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8005c1b4
    stfs    f2, 0x198(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x284(r3)
    lfs     f1, 0x198(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005c1f0
    fmr     f1, f0
    b       branch_0x8005c200

branch_0x8005c1f0:
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8005c200
    fmr     f1, f0
branch_0x8005c200:
    stfs    f1, 0x198(r31)
    lfs     f2, 0x198(r31)
    lfs     f1, -0x6e04(r2)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8005c230
    lfs     f0, -0x6dd0(r2)
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x8005c228
    fmr     f0, f1
branch_0x8005c228:
    stfs    f0, 0x198(r31)
    b       branch_0x8005c248

branch_0x8005c230:
    lfs     f0, -0x6dd0(r2)
    fsubs   f0, f2, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x8005c244
    fmr     f0, f1
branch_0x8005c244:
    stfs    f0, 0x198(r31)
branch_0x8005c248:
    lwz     r3, 0x168(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8005c25c
    addi    r0, r3, -0x1
    stw     r0, 0x168(r31)
branch_0x8005c25c:
    lwz     r0, 0x17c(sp)
    lfd     f31, 0x170(sp)
    lwz     r31, 0x16c(sp)
    mtlr    r0
    lwz     r30, 0x168(sp)
    addi    sp, sp, 0x178
    blr


.globl moveTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
moveTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_: # 0x8005c278
    blr


.globl receiveMessage__10THinokuri2FP9THitActorUl
receiveMessage__10THinokuri2FP9THitActorUl: # 0x8005c27c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8005c29c
    li      r3, 0x0
    b       branch_0x8005c2e0

branch_0x8005c29c:
    lwz     r0, 0x1a8(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8005c2cc
    bge-    branch_0x8005c2b8
    cmpwi   r0, 0x0
    bge-    branch_0x8005c2c4
    b       branch_0x8005c2dc

branch_0x8005c2b8:
    cmpwi   r0, 0x3
    bge-    branch_0x8005c2dc
    b       branch_0x8005c2d4

branch_0x8005c2c4:
    bl      receiveMessageLv0__10THinokuri2FP9THitActorUl
    b       branch_0x8005c2e0

branch_0x8005c2cc:
    bl      receiveMessageLv1__10THinokuri2FP9THitActorUl
    b       branch_0x8005c2e0

branch_0x8005c2d4:
    bl      receiveMessageLv2__10THinokuri2FP9THitActorUl
    b       branch_0x8005c2e0

branch_0x8005c2dc:
    li      r3, 0x0
branch_0x8005c2e0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessageLv2__10THinokuri2FP9THitActorUl
receiveMessageLv2__10THinokuri2FP9THitActorUl: # 0x8005c2f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xb8(sp)
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005c4c4
    cmplwi  r5, 0xf
    bne-    branch_0x8005c4c4
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x13
    beq-    branch_0x8005c334
    li      r3, 0x1
    b       branch_0x8005c668

branch_0x8005c334:
    lwz     r0, 0x68(r4)
    lwz     r3, R13Off_m0x6088(r13)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lha     r0, 0x614(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x8005c358
    li      r3, 0x1
    b       branch_0x8005c668

branch_0x8005c358:
    lwz     r4, 0x190(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x190(r31)
    lwz     r5, 0x1a4(r31)
    lwz     r4, 0xc(r5)
    addi    r0, r4, 0x1
    stw     r0, 0xc(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34c(r3)
    stw     r0, 0x168(r31)
    lwz     r0, 0x190(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x8005c4bc
    li      r30, 0x0
    stw     r30, 0x190(r31)
    mr      r3, r31
    lwz     r4, 0x1a8(r31)
    addi    r4, r4, -0x1
    bl      setLevel__10THinokuri2Fi
    lwz     r3, 0x1a4(r31)
    li      r0, 0x2
    stw     r0, 0x4(r3)
    stw     r30, 0x8(r3)
    lfs     f1, -0x6e04(r2)
    stfs    f1, 0x24(r3)
    stfs    f1, 0x20(r3)
    stfs    f1, 0x1c(r3)
    stfs    f1, 0x30(r3)
    stfs    f1, 0x2c(r3)
    stfs    f1, 0x28(r3)
    stfs    f1, 0x34(r3)
    stfs    f1, 0x38(r3)
    lfs     f0, -0x6dc0(r2)
    stfs    f0, 0x3c(r3)
    stfs    f1, 0x40(r3)
    stfs    f1, 0x44(r3)
    lfs     f0, -0x6dbc(r2)
    stfs    f0, 0x48(r3)
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8005c444
    bge-    branch_0x8005c41c
    cmpwi   r0, 0x0
    bge-    branch_0x8005c428
    b       branch_0x8005c47c

branch_0x8005c41c:
    cmpwi   r0, 0x3
    bge-    branch_0x8005c47c
    b       branch_0x8005c460

branch_0x8005c428:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005c4b8

branch_0x8005c444:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005c4b8

branch_0x8005c460:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005c4b8

branch_0x8005c47c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005c4b4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005c4b8

branch_0x8005c4b4:
    li      r0, 0x1
branch_0x8005c4b8:
    stb     r0, 0x13c(r31)
branch_0x8005c4bc:
    li      r3, 0x1
    b       branch_0x8005c668

branch_0x8005c4c4:
    addis   r0, r6, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x8005c664
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x13
    beq-    branch_0x8005c4e4
    li      r3, 0x1
    b       branch_0x8005c668

branch_0x8005c4e4:
    lwz     r4, 0x190(r31)
    addi    r3, r31, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x190(r31)
    lwz     r5, 0x1a4(r31)
    lwz     r4, 0xc(r5)
    addi    r0, r4, 0x1
    stw     r0, 0xc(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34c(r3)
    stw     r0, 0x168(r31)
    lwz     r0, 0x190(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x8005c64c
    li      r30, 0x0
    stw     r30, 0x190(r31)
    mr      r3, r31
    lwz     r4, 0x1a8(r31)
    addi    r4, r4, -0x1
    bl      setLevel__10THinokuri2Fi
    lwz     r3, 0x1a4(r31)
    li      r0, 0x2
    stw     r0, 0x4(r3)
    stw     r30, 0x8(r3)
    lfs     f1, -0x6e04(r2)
    stfs    f1, 0x24(r3)
    stfs    f1, 0x20(r3)
    stfs    f1, 0x1c(r3)
    stfs    f1, 0x30(r3)
    stfs    f1, 0x2c(r3)
    stfs    f1, 0x28(r3)
    stfs    f1, 0x34(r3)
    stfs    f1, 0x38(r3)
    lfs     f0, -0x6dc0(r2)
    stfs    f0, 0x3c(r3)
    stfs    f1, 0x40(r3)
    stfs    f1, 0x44(r3)
    lfs     f0, -0x6dbc(r2)
    stfs    f0, 0x48(r3)
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8005c5d0
    bge-    branch_0x8005c5a8
    cmpwi   r0, 0x0
    bge-    branch_0x8005c5b4
    b       branch_0x8005c608

branch_0x8005c5a8:
    cmpwi   r0, 0x3
    bge-    branch_0x8005c608
    b       branch_0x8005c5ec

branch_0x8005c5b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005c644

branch_0x8005c5d0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005c644

branch_0x8005c5ec:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005c644

branch_0x8005c608:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005c640
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005c644

branch_0x8005c640:
    li      r0, 0x1
branch_0x8005c644:
    stb     r0, 0x13c(r31)
    b       branch_0x8005c65c

branch_0x8005c64c:
    lwz     r3, 0x1a4(r31)
    li      r4, 0xf
    lwz     r3, 0x10(r3)
    bl      setBckFromIndex__6MActorFi
branch_0x8005c65c:
    li      r3, 0x1
    b       branch_0x8005c668

branch_0x8005c664:
    li      r3, 0x0
branch_0x8005c668:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl receiveMessageLv1__10THinokuri2FP9THitActorUl
receiveMessageLv1__10THinokuri2FP9THitActorUl: # 0x8005c680
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r3
    lwz     r6, 0x17c(r3)
    lis     r3, unk_803f0500@h
    addi    r31, r3, unk_803f0500@l
    cmpwi   r6, 0x13
    bne-    branch_0x8005c6cc
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005c6cc
    cmplwi  r5, 0xf
    bne-    branch_0x8005c6cc
    li      r3, 0x1
    b       branch_0x8005c8fc

branch_0x8005c6cc:
    lwz     r7, 0x180(r30)
    cmpwi   r7, 0x0
    beq-    branch_0x8005c80c
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005c80c
    cmplwi  r5, 0xf
    bne-    branch_0x8005c80c
    cmpwi   r6, 0x19
    beq-    branch_0x8005c700
    li      r3, 0x1
    b       branch_0x8005c8fc

branch_0x8005c700:
    lwz     r0, 0x68(r4)
    lwz     r3, R13Off_m0x6088(r13)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lha     r0, 0x614(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8005c724
    li      r3, 0x1
    b       branch_0x8005c8fc

branch_0x8005c724:
    lbz     r3, 0x13c(r30)
    cmpw    r0, r3
    blt-    branch_0x8005c73c
    li      r0, 0x0
    stb     r0, 0x13c(r30)
    b       branch_0x8005c744

branch_0x8005c73c:
    subf    r0, r0, r3
    stb     r0, 0x13c(r30)
branch_0x8005c744:
    lwz     r3, 0x18c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x18c(r30)
    lbz     r0, R13Off_m0x6fa4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005c790
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveHino2Damage@h
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r0, r3, __vvt__17TNerveHino2Damage@l
    lis     r3, __dt__17TNerveHino2DamageFv@ha
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r4, r3, __dt__17TNerveHino2DamageFv@l
    addi    r3, r13, R13Off_m0x6fa0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fa4(r13)
branch_0x8005c790:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6fa0
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8005c804
    lbz     r0, R13Off_m0x6fa4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005c7e0
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__17TNerveHino2Damage@h
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r0, r4, __vvt__17TNerveHino2Damage@l
    lis     r4, __dt__17TNerveHino2DamageFv@ha
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r4, r4, __dt__17TNerveHino2DamageFv@l
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fa4(r13)
branch_0x8005c7e0:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6fa0
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8005c7f8
    stw     r0, 0x1c(r4)
branch_0x8005c7f8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8005c804:
    li      r3, 0x1
    b       branch_0x8005c8fc

branch_0x8005c80c:
    cmpwi   r7, 0x0
    beq-    branch_0x8005c8f8
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x8005c8f8
    cmpwi   r6, 0x19
    beq-    branch_0x8005c834
    li      r3, 0x1
    b       branch_0x8005c8fc

branch_0x8005c834:
    li      r0, 0x0
    stb     r0, 0x13c(r30)
    lbz     r0, R13Off_m0x6fa4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005c87c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveHino2Damage@h
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r0, r3, __vvt__17TNerveHino2Damage@l
    lis     r3, __dt__17TNerveHino2DamageFv@ha
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r4, r3, __dt__17TNerveHino2DamageFv@l
    addi    r3, r13, R13Off_m0x6fa0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fa4(r13)
branch_0x8005c87c:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6fa0
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8005c8f0
    lbz     r0, R13Off_m0x6fa4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005c8cc
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__17TNerveHino2Damage@h
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r0, r4, __vvt__17TNerveHino2Damage@l
    lis     r4, __dt__17TNerveHino2DamageFv@ha
    stw     r0, R13Off_m0x6fa0(r13)
    addi    r4, r4, __dt__17TNerveHino2DamageFv@l
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fa4(r13)
branch_0x8005c8cc:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x6fa0
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8005c8e4
    stw     r0, 0x1c(r4)
branch_0x8005c8e4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8005c8f0:
    li      r3, 0x1
    b       branch_0x8005c8fc

branch_0x8005c8f8:
    li      r3, 0x0
branch_0x8005c8fc:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl receiveMessageLv0__10THinokuri2FP9THitActorUl
receiveMessageLv0__10THinokuri2FP9THitActorUl: # 0x8005c914
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
    lwz     r6, 0x17c(r3)
    lis     r3, unk_803f0500@h
    addi    r31, r3, unk_803f0500@l
    cmpwi   r6, 0x13
    bne-    branch_0x8005c970
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005c970
    cmplwi  r30, 0xf
    bne-    branch_0x8005c970
    li      r3, 0x1
    b       branch_0x8005cb74

branch_0x8005c970:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005ca80
    cmplwi  r30, 0xf
    bne-    branch_0x8005ca80
    cmpwi   r6, 0x19
    beq-    branch_0x8005c998
    li      r3, 0x1
    b       branch_0x8005cb74

branch_0x8005c998:
    lbz     r0, R13Off_m0x6f7c(r13)
    extsb.  r0, r0
    bne-    branch_0x8005c9d8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveHino2Freeze@h
    stw     r0, R13Off_m0x6f78(r13)
    addi    r0, r3, __vvt__17TNerveHino2Freeze@l
    lis     r3, __dt__17TNerveHino2FreezeFv@ha
    stw     r0, R13Off_m0x6f78(r13)
    addi    r4, r3, __dt__17TNerveHino2FreezeFv@l
    addi    r3, r13, R13Off_m0x6f78
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f7c(r13)
branch_0x8005c9d8:
    lwz     r4, 0x8c(r28)
    addi    r3, r13, R13Off_m0x6f78
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8005ca80
    lbz     r0, R13Off_m0x6f7c(r13)
    extsb.  r0, r0
    bne-    branch_0x8005ca28
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__17TNerveHino2Freeze@h
    stw     r0, R13Off_m0x6f78(r13)
    addi    r0, r4, __vvt__17TNerveHino2Freeze@l
    lis     r4, __dt__17TNerveHino2FreezeFv@ha
    stw     r0, R13Off_m0x6f78(r13)
    addi    r4, r4, __dt__17TNerveHino2FreezeFv@l
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f7c(r13)
branch_0x8005ca28:
    addi    r6, r13, R13Off_m0x6f78
    lwz     r5, 0x8c(r28)
    cmplwi  r6, 0x0
    beq-    branch_0x8005ca80
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8005ca74
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8005ca74
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8005ca74:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8005ca80:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8005cb70
    cmplwi  r30, 0x0
    bne-    branch_0x8005cb70
    lwz     r0, 0x17c(r28)
    cmpwi   r0, 0x19
    beq-    branch_0x8005caac
    li      r3, 0x1
    b       branch_0x8005cb74

branch_0x8005caac:
    li      r0, 0x0
    stb     r0, 0x13c(r28)
    lbz     r0, R13Off_m0x6f8c(r13)
    extsb.  r0, r0
    bne-    branch_0x8005caf4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__14TNerveHino2Die@h
    stw     r0, R13Off_m0x6f88(r13)
    addi    r0, r3, __vvt__14TNerveHino2Die@l
    lis     r3, __dt__14TNerveHino2DieFv@ha
    stw     r0, R13Off_m0x6f88(r13)
    addi    r4, r3, __dt__14TNerveHino2DieFv@l
    addi    r3, r13, R13Off_m0x6f88
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f8c(r13)
branch_0x8005caf4:
    lwz     r4, 0x8c(r28)
    addi    r3, r13, R13Off_m0x6f88
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8005cb70
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, R13Off_m0x6f8c(r13)
    extsb.  r0, r0
    bne-    branch_0x8005cb4c
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__14TNerveHino2Die@h
    stw     r0, R13Off_m0x6f88(r13)
    addi    r0, r4, __vvt__14TNerveHino2Die@l
    lis     r4, __dt__14TNerveHino2DieFv@ha
    stw     r0, R13Off_m0x6f88(r13)
    addi    r4, r4, __dt__14TNerveHino2DieFv@l
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6f8c(r13)
branch_0x8005cb4c:
    lwz     r4, 0x8c(r28)
    addi    r3, r13, R13Off_m0x6f88
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8005cb64
    stw     r0, 0x1c(r4)
branch_0x8005cb64:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8005cb70:
    li      r3, 0x0
branch_0x8005cb74:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl changeBck__10THinokuri2Fi
changeBck__10THinokuri2Fi: # 0x8005cb94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr.     r31, r4
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x74(sp)
    blt-    branch_0x8005cd94
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpw    r31, r3
    beq-    branch_0x8005cd10
    cmpwi   r3, 0x16
    bne-    branch_0x8005cbdc
    cmpwi   r31, 0x18
    beq-    branch_0x8005cc2c
branch_0x8005cbdc:
    cmpwi   r3, 0x18
    bne-    branch_0x8005cbec
    cmpwi   r31, 0x16
    beq-    branch_0x8005cc2c
branch_0x8005cbec:
    cmpwi   r3, 0x18
    bne-    branch_0x8005cbfc
    cmpwi   r31, 0x9
    beq-    branch_0x8005cc2c
branch_0x8005cbfc:
    cmpwi   r3, 0xe
    bne-    branch_0x8005cc0c
    cmpwi   r31, 0x18
    beq-    branch_0x8005cc2c
branch_0x8005cc0c:
    cmpwi   r3, 0x16
    bne-    branch_0x8005cc1c
    cmpwi   r31, 0xb
    beq-    branch_0x8005cc2c
branch_0x8005cc1c:
    cmpwi   r3, 0xb
    bne-    branch_0x8005cc7c
    cmpwi   r31, 0x18
    bne-    branch_0x8005cc7c
branch_0x8005cc2c:
    lwz     r3, 0x78(r30)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x8005cc54
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r3, r3, r0
    b       branch_0x8005cc58

branch_0x8005cc54:
    li      r3, 0x0
branch_0x8005cc58:
    lwz     r4, 0x1a0(r30)
    lwz     r0, 0x58(r4)
    cmplw   r0, r3
    beq-    branch_0x8005ccb0
    stw     r0, 0x5c(r4)
    stw     r3, 0x58(r4)
    lfs     f0, -0x6de0(r2)
    stfs    f0, 0x78(r4)
    b       branch_0x8005ccb0

branch_0x8005cc7c:
    lwz     r3, 0x78(r30)
    lwz     r3, 0xc(r3)
    lwz     r3, 0x2c(r3)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x8005cca4
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x8005cca8

branch_0x8005cca4:
    li      r0, 0x0
branch_0x8005cca8:
    lwz     r3, 0x1a0(r30)
    stw     r0, 0x58(r3)
branch_0x8005ccb0:
    lwz     r3, 0x74(r30)
    cmpwi   r31, 0x0
    lwz     r29, 0xc(r3)
    stw     r31, 0x0(r29)
    blt-    branch_0x8005cd10
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x8005cce4
    lwz     r3, 0xc(r3)
    slwi    r0, r31, 2
    lwzx    r0, r3, r0
    b       branch_0x8005cce8

branch_0x8005cce4:
    li      r0, 0x0
branch_0x8005cce8:
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
branch_0x8005cd10:
    stw     r31, 0x154(r30)
    lis     r3, hinokuri2_bastable@h
    addi    r0, r3, hinokuri2_bastable@l
    lwz     r4, 0x154(r30)
    addi    r3, r30, 0x0
    slwi    r4, r4, 2
    add     r4, r0, r4
    lwz     r4, 0x0(r4)
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r29, r3
    beq-    branch_0x8005cd94
    lwz     r0, 0x1a8(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8005cd8c
    addi    r0, r31, -0x17
    cmplwi  r0, 0x1
    ble-    branch_0x8005cd6c
    addi    r0, r31, -0x1a
    cmplwi  r0, 0x1
    bgt-    branch_0x8005cd8c
branch_0x8005cd6c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x360(r3)
    stfs    f0, 0xc(r29)
    b       branch_0x8005cd94

branch_0x8005cd8c:
    lfs     f0, -0x6de0(r2)
    stfs    f0, 0xc(r29)
branch_0x8005cd94:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl updateAnmSound__10THinokuri2Fv
updateAnmSound__10THinokuri2Fv: # 0x8005cdb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      updateAnmSound__10TLiveActorFv
    lwz     r0, 0x158(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8005ce04
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2007
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8005ce04
    addi    r4, r31, 0x10
    li      r3, 0x2007
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8005ce04:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setLevel__10THinokuri2Fi
setLevel__10THinokuri2Fi: # 0x8005ce18
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    lis     r5, unk_803789e0@ha
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, unk_803789e0@l
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    bge-    branch_0x8005ce4c
    li      r4, 0x0
    b       branch_0x8005ce58

branch_0x8005ce4c:
    cmpwi   r4, 0x3
    blt-    branch_0x8005ce58
    li      r4, 0x2
branch_0x8005ce58:
    stw     r4, 0x1a8(r29)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005cef4
    lwz     r0, 0x1a8(r29)
    cmpwi   r0, 0x1
    beq-    branch_0x8005ceb0
    bge-    branch_0x8005cec8
    cmpwi   r0, 0x0
    bge-    branch_0x8005ce98
    b       branch_0x8005cec8

branch_0x8005ce94:
    b       branch_0x8005cec8

branch_0x8005ce98:
    lfs     f0, 0xb8(r3)
    addi    r30, r31, 0x4e4
    stfs    f0, 0x140(r29)
    lfs     f0, 0xf4(r3)
    stfs    f0, 0x144(r29)
    b       branch_0x8005cedc

branch_0x8005ceb0:
    lfs     f0, 0xcc(r3)
    addi    r30, r31, 0x4e4
    stfs    f0, 0x140(r29)
    lfs     f0, 0x108(r3)
    stfs    f0, 0x144(r29)
    b       branch_0x8005cedc

branch_0x8005cec8:
    lfs     f0, 0xe0(r3)
    addi    r30, r31, 0x4e4
    stfs    f0, 0x140(r29)
    lfs     f0, 0x11c(r3)
    stfs    f0, 0x144(r29)
branch_0x8005cedc:
    lfs     f0, 0x130(r3)
    stfs    f0, 0x148(r29)
    lfs     f0, 0x148(r29)
    stfs    f0, 0x24(r29)
    stfs    f0, 0x28(r29)
    stfs    f0, 0x2c(r29)
branch_0x8005cef4:
    lwz     r3, R13Off_m0x70b0(r13)
    mr      r4, r30
    bl      getGraphByName__10TConductorFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8005cf24
    lwz     r4, 0x124(r29)
    li      r0, -0x1
    stw     r3, 0x0(r4)
    mr      r3, r29
    lwz     r4, 0x124(r29)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
branch_0x8005cf24:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl kill__10THinokuri2Fv
kill__10THinokuri2Fv: # 0x8005cf40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r4, 0x16c(r3)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x170(r3)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x174(r3)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x178(r3)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    bl      kill__10TLiveActorFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__10THinokuri2Fv
reset__10THinokuri2Fv: # 0x8005cfac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    stw     r29, 0x8c(sp)
    bl      reset__11TSpineEnemyFv
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1bc(r3)
    subf    r29, r30, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6e10(r2)
    stw     r0, 0x84(sp)
    lis     r3, 0x4330
    xoris   r0, r29, 0x8000
    lfs     f1, -0x6e18(r2)
    stw     r3, 0x80(sp)
    stw     r0, 0x7c(sp)
    lfd     f0, 0x80(sp)
    stw     r3, 0x78(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x78(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    add     r0, r30, r0
    stw     r0, 0x164(r31)
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8005d0a4
    bge-    branch_0x8005d07c
    cmpwi   r0, 0x0
    bge-    branch_0x8005d088
    b       branch_0x8005d0dc

branch_0x8005d07c:
    cmpwi   r0, 0x3
    bge-    branch_0x8005d0dc
    b       branch_0x8005d0c0

branch_0x8005d088:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005d118

branch_0x8005d0a4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005d118

branch_0x8005d0c0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005d118

branch_0x8005d0dc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005d114
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005d118

branch_0x8005d114:
    li      r0, 0x1
branch_0x8005d118:
    stb     r0, 0x13c(r31)
    li      r0, 0x0
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    lwz     r4, 0x16c(r31)
    lwz     r3, 0x64(r4)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r4)
    lwz     r4, 0x170(r31)
    lwz     r3, 0x64(r4)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r4)
    lwz     r4, 0x174(r31)
    lwz     r3, 0x64(r4)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r4)
    lwz     r4, 0x178(r31)
    lwz     r3, 0x64(r4)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r4)
    stw     r0, 0x190(r31)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl init__10THinokuri2FP12TLiveManager
init__10THinokuri2FP12TLiveManager: # 0x8005d18c
    mflr    r0
    lis     r5, unk_803789e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f8(sp)
    stw     r31, 0x1f4(sp)
    mr      r31, r3
    stw     r30, 0x1f0(sp)
    addi    r30, r5, unk_803789e0@l
    stw     r29, 0x1ec(sp)
    stw     r4, 0x70(r3)
    addi    r4, r31, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d1e0
    lwz     r4, 0x70(r31)
    addi    r3, r29, 0x0
    li      r5, 0x4
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8005d1e0:
    stw     r29, 0x78(r31)
    addi    r4, r30, 0x410
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    li      r3, 0x7c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d214
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__10THino2MaskFP10THinokuri2
branch_0x8005d214:
    stw     r29, 0x1a4(r31)
    addi    r4, r30, 0x4e4
    lwz     r3, R13Off_m0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    stw     r3, 0x0(r4)
    lbz     r0, R13Off_m0x6fe4(r13)
    extsb.  r0, r0
    bne-    branch_0x8005d270
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveHino2Appear@h
    stw     r0, R13Off_m0x6fe0(r13)
    addi    r0, r3, __vvt__17TNerveHino2Appear@l
    lis     r4, __dt__17TNerveHino2AppearFv@ha
    stw     r0, R13Off_m0x6fe0(r13)
    lis     r3, unk_803f0500@h
    addi    r5, r3, unk_803f0500@l
    addi    r4, r4, __dt__17TNerveHino2AppearFv@l
    addi    r3, r13, R13Off_m0x6fe0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6fe4(r13)
branch_0x8005d270:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    addi    r0, r13, R13Off_m0x6fe0
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x16c(r3)
    mr      r3, r31
    stfs    f0, 0xcc(r31)
    bl      initAnmSound__10TLiveActorFv
    lfs     f2, 0xc0(r31)
    lis     r4, 0x800
    lfs     f1, 0xbc(r31)
    addi    r3, r31, 0x0
    fmr     f4, f2
    fmr     f3, f1
    addi    r4, r4, 0x1
    li      r5, 0x5
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d31c
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x6de0(r2)
    mr      r5, r3
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__16TMBindShadowBodyFP9THitActorP8J3DModelf
branch_0x8005d31c:
    stw     r29, 0x150(r31)
    addi    r3, r30, 0x4f0
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x4f0
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x118
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x118(sp)
    addi    r3, sp, 0x1d8
    addi    r4, sp, 0x114
    stw     r0, 0x114(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1d8(sp)
    addi    r5, sp, 0x160
    addi    r4, r30, 0x0
    stw     r0, 0x1d4(sp)
    addi    r3, sp, 0x15c
    addi    r6, r31, 0x16c
    lwz     r0, 0x1d4(sp)
    stw     r0, 0x160(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0x110
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x110(sp)
    addi    r3, sp, 0x1cc
    addi    r4, sp, 0x10c
    stw     r0, 0x10c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1cc(sp)
    addi    r5, sp, 0x154
    addi    r4, r30, 0x0
    stw     r0, 0x1c8(sp)
    addi    r3, sp, 0x150
    addi    r6, r31, 0x170
    lwz     r0, 0x1c8(sp)
    stw     r0, 0x154(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0x108
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x108(sp)
    addi    r3, sp, 0x1c0
    addi    r4, sp, 0x104
    stw     r0, 0x104(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1c0(sp)
    addi    r5, sp, 0x148
    addi    r4, r30, 0x0
    stw     r0, 0x1bc(sp)
    addi    r3, sp, 0x144
    addi    r6, r31, 0x178
    lwz     r0, 0x1bc(sp)
    stw     r0, 0x148(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, sp, 0x100
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x100(sp)
    addi    r3, sp, 0x1b4
    addi    r4, sp, 0xfc
    stw     r0, 0xfc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1b4(sp)
    addi    r5, sp, 0x13c
    addi    r4, r30, 0x0
    stw     r0, 0x1b0(sp)
    addi    r3, sp, 0x138
    addi    r6, r31, 0x174
    lwz     r0, 0x1b0(sp)
    stw     r0, 0x13c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x16c(r31)
    lis     r30, unk_08000001@h
    addi    r4, r30, unk_08000001@l
    lfs     f4, 0x5c(r3)
    li      r5, 0x5
    lfs     f3, 0x58(r3)
    lis     r6, 0x4100
    lfs     f2, 0x54(r3)
    lfs     f1, 0x50(r3)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r7, 0x16c(r31)
    addi    r4, r30, 0x1
    lwz     r3, 0x170(r31)
    li      r5, 0x5
    lfs     f4, 0x5c(r7)
    lfs     f3, 0x58(r7)
    lis     r6, 0xc100
    lfs     f2, 0x54(r7)
    lfs     f1, 0x50(r7)
    bl      initHitActor__9THitActorFUlUsiffff
    lfs     f1, -0x6db8(r2)
    addi    r4, r30, 0x1
    lfs     f2, -0x6db4(r2)
    li      r5, 0x5
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x174(r31)
    lis     r6, 0x9000
    bl      initHitActor__9THitActorFUlUsiffff
    lfs     f1, -0x6db8(r2)
    addi    r4, r30, 0x1
    lfs     f2, -0x6db4(r2)
    li      r5, 0x5
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x178(r31)
    lis     r6, 0x9000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    lis     r3, Hino2HeadCallback__FP7J3DNodei@ha
    addi    r5, r3, Hino2HeadCallback__FP7J3DNodei@l
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    li      r4, 0x17
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x170(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x174(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x178(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x74(r31)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8005d5a0
    lbz     r0, 0x7d(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8005d580
    bge-    branch_0x8005d590
    b       branch_0x8005d590

branch_0x8005d57c:
    b       branch_0x8005d590

branch_0x8005d580:
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      setLevel__10THinokuri2Fi
    b       branch_0x8005d5e8

branch_0x8005d590:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setLevel__10THinokuri2Fi
    b       branch_0x8005d5e8

branch_0x8005d5a0:
    cmplwi  r0, 0x0
    bne-    branch_0x8005d5dc
    lbz     r0, 0x7d(r3)
    cmpwi   r0, 0x7
    beq-    branch_0x8005d5bc
    bge-    branch_0x8005d5cc
    b       branch_0x8005d5cc

branch_0x8005d5bc:
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      setLevel__10THinokuri2Fi
    b       branch_0x8005d5e8

branch_0x8005d5cc:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setLevel__10THinokuri2Fi
    b       branch_0x8005d5e8

branch_0x8005d5dc:
    lha     r4, 0x7c(r31)
    mr      r3, r31
    bl      setLevel__10THinokuri2Fi
branch_0x8005d5e8:
    lwz     r0, 0x1a8(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8005d62c
    bge-    branch_0x8005d604
    cmpwi   r0, 0x0
    bge-    branch_0x8005d610
    b       branch_0x8005d664

branch_0x8005d604:
    cmpwi   r0, 0x3
    bge-    branch_0x8005d664
    b       branch_0x8005d648

branch_0x8005d610:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x2fc(r3)
    b       branch_0x8005d6a0

branch_0x8005d62c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x310(r3)
    b       branch_0x8005d6a0

branch_0x8005d648:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x324(r3)
    b       branch_0x8005d6a0

branch_0x8005d664:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8005d69c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8005d6a0

branch_0x8005d69c:
    li      r0, 0x1
branch_0x8005d6a0:
    stb     r0, 0x13c(r31)
    lwz     r4, 0x1a0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8005d6b4
    lwz     r4, 0x0(r4)
branch_0x8005d6b4:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8005d6d0
    stw     r4, 0x38(r3)
    li      r0, 0x3
    stb     r0, 0x2a(r3)
branch_0x8005d6d0:
    lwz     r0, 0x1fc(sp)
    lwz     r31, 0x1f4(sp)
    lwz     r30, 0x1f0(sp)
    mtlr    r0
    lwz     r29, 0x1ec(sp)
    addi    sp, sp, 0x1f8
    blr


.globl __ct__10THinokuri2FPCc
__ct__10THinokuri2FPCc: # 0x8005d6ec
    mflr    r0
    lis     r5, unk_803789e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, unk_803789e0@l
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, __vvt__10THinokuri2@h
    lwz     r5, 0x8(sp)
    addi    r3, r3, __vvt__10THinokuri2@l
    stw     r3, 0x0(r5)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r5)
    li      r0, -0x1
    li      r3, 0x34
    stw     r4, 0x150(r5)
    stw     r0, 0x154(r5)
    stw     r4, 0x158(r5)
    stw     r4, 0x15c(r5)
    stw     r4, 0x160(r5)
    stw     r4, 0x164(r5)
    stw     r4, 0x168(r5)
    stw     r4, 0x16c(r5)
    stw     r4, 0x170(r5)
    stw     r4, 0x174(r5)
    stw     r4, 0x178(r5)
    stw     r4, 0x180(r5)
    stw     r4, 0x184(r5)
    stw     r4, 0x188(r5)
    stw     r4, 0x18c(r5)
    stw     r4, 0x190(r5)
    lfs     f0, -0x6de0(r2)
    stfs    f0, 0x194(r5)
    lfs     f0, -0x6e04(r2)
    stfs    f0, 0x198(r5)
    stw     r4, 0x19c(r5)
    stw     r4, 0x1a0(r5)
    stw     r4, 0x1a4(r5)
    stw     r4, 0x1a8(r5)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d7b0
    mr      r3, r29
    bl      __ct__7TWalkerFv
branch_0x8005d7b0:
    lwz     r30, 0x8(sp)
    li      r3, 0x70
    stw     r29, 0x88(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d7f4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4fc
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__9THino2Hit@h
    addi    r3, r3, __vvt__9THino2Hit@l
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x19
    stw     r3, 0x20(r29)
    stw     r30, 0x68(r29)
    stw     r0, 0x6c(r29)
branch_0x8005d7f4:
    lwz     r30, 0x8(sp)
    li      r3, 0x70
    stw     r29, 0x16c(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d838
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4fc
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__9THino2Hit@h
    addi    r3, r3, __vvt__9THino2Hit@l
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x13
    stw     r3, 0x20(r29)
    stw     r30, 0x68(r29)
    stw     r0, 0x6c(r29)
branch_0x8005d838:
    lwz     r30, 0x8(sp)
    li      r3, 0x70
    stw     r29, 0x170(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d87c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4fc
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__9THino2Hit@h
    addi    r3, r3, __vvt__9THino2Hit@l
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x9
    stw     r3, 0x20(r29)
    stw     r30, 0x68(r29)
    stw     r0, 0x6c(r29)
branch_0x8005d87c:
    lwz     r30, 0x8(sp)
    li      r3, 0x70
    stw     r29, 0x174(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d8c0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4fc
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__9THino2Hit@h
    addi    r3, r3, __vvt__9THino2Hit@l
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x10
    stw     r3, 0x20(r29)
    stw     r30, 0x68(r29)
    stw     r0, 0x6c(r29)
branch_0x8005d8c0:
    lwz     r4, 0x8(sp)
    li      r3, 0x160
    stw     r29, 0x178(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d8e4
    addi    r3, r29, 0x0
    addi    r4, r31, 0x51c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x8005d8e4:
    lwz     r4, 0x8(sp)
    li      r3, 0x84
    stw     r29, 0x19c(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005d970
    addi    r31, r29, 0x7c
    stw     r31, 0x0(r29)
    lis     r4, __vvt__10J3DMtxCalc@ha
    addi    r0, r4, __vvt__10J3DMtxCalc@l
    stw     r31, 0x50(r29)
    addi    r3, r29, 0x0
    li      r4, 0x0
    stw     r0, 0x7c(r29)
    li      r5, 0x5
    li      r6, 0x6
    lfs     f1, -0x6dec(r2)
    li      r7, 0x9
    li      r8, 0xc
    li      r9, 0xd
    li      r10, 0x10
    bl      __ct__15TMtxCalcFootInvFUsUsUsUsUsUsf
    lis     r3, __vvt__13THino2MtxCalc@h
    addi    r3, r3, __vvt__13THino2MtxCalc@l
    stw     r3, 0x4c(r29)
    addi    r4, r3, 0x34
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r29)
    stw     r4, 0x0(r3)
    stw     r0, 0x54(r29)
    lwz     r3, 0x0(r29)
    subf    r0, r3, r31
    stw     r0, 0x4(r3)
    lfs     f0, -0x6e04(r2)
    stfs    f0, 0x78(r29)
branch_0x8005d970:
    lwz     r3, 0x8(sp)
    stw     r29, 0x1a0(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl Hino2HeadCallback__FP7J3DNodei
Hino2HeadCallback__FP7J3DNodei: # 0x8005d994
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stw     r31, 0xfc(sp)
    stw     r30, 0xf8(sp)
    bne-    branch_0x8005db6c
    lhz     r30, 0x18(r3)
    lwz     r3, R13Off_m0x6fe8(r13)
    bl      getModel__10TLiveActorCFv
    lwz     r7, R13Off_m0x6fe8(r13)
    mulli   r0, r30, 0x30
    lwz     r3, 0x58(r3)
    lwz     r4, 0x1a8(r7)
    add     r31, r3, r0
    cmpwi   r4, 0x1
    bne-    branch_0x8005dad0
    lfs     f2, -0x6e04(r2)
    addi    r30, sp, 0x8c
    lfs     f1, -0x6db0(r2)
    mr      r3, r31
    stfs    f2, 0xc8(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    mr      r4, r30
    stfs    f2, 0xd8(sp)
    mr      r5, r31
    lwz     r8, R13Off_m0x5ea8(r13)
    stfs    f2, 0xe8(sp)
    lwz     r6, R13Off_m0x5ea4(r13)
    lfs     f0, 0x194(r7)
    stfs    f0, 0xbc(sp)
    stfs    f2, 0xc0(sp)
    stfs    f2, 0xc4(sp)
    stfs    f2, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f2, 0xd4(sp)
    stfs    f2, 0xdc(sp)
    stfs    f2, 0xe0(sp)
    stfs    f0, 0xe4(sp)
    lfs     f0, 0x198(r7)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r7, 0xf4(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f1
    stfs    f3, 0x8c(sp)
    stfs    f2, 0x90(sp)
    stfs    f1, 0x94(sp)
    stfs    f2, 0x98(sp)
    stfs    f2, 0x9c(sp)
    lfs     f1, -0x6de0(r2)
    stfs    f1, 0xa0(sp)
    stfs    f2, 0xa4(sp)
    stfs    f2, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f2, 0xb0(sp)
    stfs    f3, 0xb4(sp)
    stfs    f2, 0xb8(sp)
    bl      PSMTXConcat
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0xbc
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r31, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      PSMTXConcat
    addi    r5, r31, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0xbc
    bl      PSMTXConcat
    b       branch_0x8005db6c

branch_0x8005dad0:
    lfs     f1, -0x6db0(r2)
    addi    r30, sp, 0x5c
    lfs     f0, 0x198(r7)
    mr      r3, r31
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    fctiwz  f0, f0
    stfd    f0, 0xf0(sp)
    lwz     r7, 0xf4(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f1
    stfs    f3, 0x5c(sp)
    lfs     f2, -0x6e04(r2)
    stfs    f2, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f2, 0x6c(sp)
    lfs     f1, -0x6de0(r2)
    stfs    f1, 0x70(sp)
    stfs    f2, 0x74(sp)
    stfs    f2, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f2, 0x80(sp)
    stfs    f3, 0x84(sp)
    stfs    f2, 0x88(sp)
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, r30, 0x0
    bl      PSMTXConcat
branch_0x8005db6c:
    lwz     r0, 0x104(sp)
    li      r3, 0x1
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    mtlr    r0
    addi    sp, sp, 0x100
    blr


.globl perform__10THino2MaskFUlPQ26JDrama9TGraphics
perform__10THino2MaskFUlPQ26JDrama9TGraphics: # 0x8005db88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r26, 0xc0(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8005de5c
    cmpwi   r0, 0x1
    bne-    branch_0x8005dc28
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x8005dc14
    lwz     r4, 0x10(r29)
    addi    r3, r29, 0x4c
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x10(r29)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lwz     r4, 0xc(r29)
    lis     r0, 0x4330
    lfd     f1, -0x6e10(r2)
    xoris   r4, r4, 0x8000
    stw     r4, 0xbc(sp)
    stw     r0, 0xb8(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, -0x6e04(r2)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x10(r29)
    bl      resetDL__6MActorFv
branch_0x8005dc14:
    lwz     r3, 0x10(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    b       branch_0x8005de5c

branch_0x8005dc28:
    rlwinm. r26, r30, 0, 30, 30
    beq-    branch_0x8005dce4
    lwz     r0, 0x8(r29)
    cmpwi   r0, 0xf0
    ble-    branch_0x8005dc48
    li      r0, 0x0
    stw     r0, 0x4(r29)
    b       branch_0x8005de5c

branch_0x8005dc48:
    lwz     r3, 0x0(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x16c(r3)
    lfs     f0, 0x40(r29)
    fsubs   f0, f0, f1
    stfs    f0, 0x40(r29)
    lfs     f0, 0x34(r29)
    fsubs   f0, f0, f1
    stfs    f0, 0x34(r29)
    lfs     f1, 0x28(r29)
    lfs     f0, 0x40(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r29)
    lfs     f1, 0x2c(r29)
    lfs     f0, 0x44(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r29)
    lfs     f1, 0x30(r29)
    lfs     f0, 0x48(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r29)
    lfs     f1, 0x1c(r29)
    lfs     f0, 0x34(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r29)
    lfs     f1, 0x20(r29)
    lfs     f0, 0x38(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x20(r29)
    lfs     f1, 0x24(r29)
    lfs     f0, 0x3c(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r29)
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8005dce4:
    cmplwi  r26, 0x0
    beq-    branch_0x8005de00
    addi    r3, sp, 0x80
    bl      PSMTXIdentity
    lfs     f0, 0x28(r29)
    lis     r28, 0x4330
    addi    r3, sp, 0x50
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x9c(sp)
    lfs     f0, 0x30(r29)
    stfs    f0, 0xac(sp)
    lwz     r0, 0x8(r29)
    lfs     f1, -0x6e04(r2)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x6e10(r2)
    stw     r0, 0xbc(sp)
    fmr     f3, f1
    lfs     f4, -0x6df0(r2)
    stw     r28, 0xb8(sp)
    lfd     f0, 0xb8(sp)
    fsubs   f0, f0, f2
    fsubs   f2, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r26, r29, 0x4c
    addi    r4, sp, 0x80
    addi    r3, r26, 0x0
    addi    r5, r4, 0x0
    bl      PSMTXConcat
    addi    r3, sp, 0x80
    addi    r5, r3, 0x0
    addi    r4, sp, 0x50
    bl      PSMTXConcat
    lwz     r4, 0x14(r29)
    addi    r27, sp, 0x80
    addi    r3, r27, 0x0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    mr      r3, r27
    bl      PSMTXIdentity
    lfs     f0, 0x1c(r29)
    addi    r3, sp, 0x50
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x20(r29)
    stfs    f0, 0x9c(sp)
    lfs     f0, 0x24(r29)
    stfs    f0, 0xac(sp)
    lwz     r0, 0x8(r29)
    lfs     f1, -0x6e04(r2)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x6e10(r2)
    stw     r0, 0xb4(sp)
    fmr     f3, f1
    stw     r28, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f2, f0, f2
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r27, 0x0
    bl      PSMTXConcat
    addi    r3, r27, 0x0
    addi    r5, r27, 0x0
    addi    r4, sp, 0x50
    bl      PSMTXConcat
    lwz     r4, 0x18(r29)
    mr      r3, r27
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x8005de00:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8005de3c
    lwz     r4, 0x8(r29)
    cmpwi   r4, 0x3c
    ble-    branch_0x8005de3c
    lis     r3, unk_2aaaaaab@ha
    addi    r0, r3, unk_2aaaaaab@l
    mulhw   r3, r0, r4
    srwi    r0, r3, 31
    add     r0, r3, r0
    mulli   r0, r0, 0x6
    subf    r0, r0, r4
    cmpwi   r0, 0x3
    blt-    branch_0x8005de3c
    rlwinm  r30, r30, 0, 23, 21
branch_0x8005de3c:
    lwz     r3, 0x14(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x18(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x8005de5c:
    lmw     r26, 0xc0(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl __ct__10THino2MaskFP10THinokuri2
__ct__10THino2MaskFP10THinokuri2: # 0x8005de70
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    stw     r4, 0x0(r3)
    lis     r3, unk_803789e0@ha
    addi    r31, r3, unk_803789e0@l
    stw     r0, 0x4(r29)
    li      r0, 0x0
    addi    r4, r31, 0x424
    stw     r0, 0x8(r29)
    stw     r0, 0xc(r29)
    stw     r0, 0x10(r29)
    stw     r0, 0x14(r29)
    stw     r0, 0x18(r29)
    lwz     r3, 0x0(r29)
    lwz     r30, 0x78(r3)
    mr      r3, r30
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x10(r29)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x440
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x14(r29)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x45c
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x18(r29)
    addi    r4, r31, 0x538
    lwz     r3, 0x10(r29)
    bl      setBtp__6MActorFPCc
    lwz     r0, 0x34(sp)
    mr      r3, r29
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl receiveMessage__9THino2HitFP9THitActorUl
receiveMessage__9THino2HitFP9THitActorUl: # 0x8005df28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r7, 0x6c(r3)
    cmpwi   r7, 0x19
    bne-    branch_0x8005dfd0
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8005df70
    lwz     r6, 0x68(r3)
    stw     r7, 0x17c(r6)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e040

branch_0x8005df70:
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005dfa4
    cmplwi  r5, 0xf
    bne-    branch_0x8005dfa4
    lwz     r6, 0x68(r3)
    stw     r7, 0x17c(r6)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e040

branch_0x8005dfa4:
    addis   r0, r6, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x8005dfd0
    lwz     r6, 0x68(r3)
    stw     r7, 0x17c(r6)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e040

branch_0x8005dfd0:
    cmpwi   r7, 0x13
    bne-    branch_0x8005e03c
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8005e010
    cmplwi  r5, 0xf
    bne-    branch_0x8005e010
    lwz     r6, 0x68(r3)
    stw     r7, 0x17c(r6)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e040

branch_0x8005e010:
    addis   r0, r6, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x8005e03c
    lwz     r6, 0x68(r3)
    stw     r7, 0x17c(r6)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e040

branch_0x8005e03c:
    li      r3, 0x0
branch_0x8005e040:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__9THino2HitFUlPQ26JDrama9TGraphics
perform__9THino2HitFUlPQ26JDrama9TGraphics: # 0x8005e050
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    stw     r28, 0x28(sp)
    beq-    branch_0x8005e1d0
    lwz     r3, 0x68(r31)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8005e0a4
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r3)
    stw     r0, 0x18(r31)
    b       branch_0x8005e1d0

branch_0x8005e0a4:
    lwz     r4, 0x6c(r31)
    addi    r5, r31, 0x10
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x19
    bne-    branch_0x8005e0cc
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6dac(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x8005e0cc:
    lwz     r3, 0x68(r31)
    lwz     r0, 0x188(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x8005e1d0
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8005e1c4

branch_0x8005e0e8:
    lwz     r0, 0x6c(r31)
    lwz     r3, 0x44(r31)
    cmpwi   r0, 0x10
    lwzx    r28, r3, r30
    beq-    branch_0x8005e104
    cmpwi   r0, 0x9
    bne-    branch_0x8005e1bc
branch_0x8005e104:
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8005e11c
    li      r0, 0x1
    b       branch_0x8005e120

branch_0x8005e11c:
    li      r0, 0x0
branch_0x8005e120:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005e148
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e1bc

branch_0x8005e148:
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x3
    bne-    branch_0x8005e15c
    li      r0, 0x1
    b       branch_0x8005e160

branch_0x8005e15c:
    li      r0, 0x0
branch_0x8005e160:
    clrlwi. r0, r0, 24
    bne-    branch_0x8005e188
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x2
    bne-    branch_0x8005e17c
    li      r0, 0x1
    b       branch_0x8005e180

branch_0x8005e17c:
    li      r0, 0x0
branch_0x8005e180:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005e1bc
branch_0x8005e188:
    lwz     r3, 0x68(r31)
    li      r4, 0xe
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005e1bc
    mr      r3, r28
    lwz     r12, 0x0(r28)
    addi    r4, r31, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8005e1bc:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8005e1c4:
    lhz     r0, 0x48(r31)
    cmpw    r29, r0
    blt+    branch_0x8005e0e8
branch_0x8005e1d0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl calc__13THino2MtxCalcFUs
calc__13THino2MtxCalcFUs: # 0x8005e1f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stw     r31, 0x144(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x140(sp)
    mr.     r30, r3
    stw     r29, 0x13c(sp)
    addi    r0, r30, 0x0
    beq-    branch_0x8005e21c
    lwz     r0, 0x0(r30)
branch_0x8005e21c:
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    stw     r0, 0x30(r3)
    lwz     r3, R13Off_m0x6fe8(r13)
    lwz     r0, 0x1a8(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x8005e308
    clrlwi  r0, r31, 16
    cmplwi  r0, 0x13
    beq-    branch_0x8005e24c
    cmplwi  r0, 0x17
    bne-    branch_0x8005e308
branch_0x8005e24c:
    lwz     r3, 0x58(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8005e274
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x114
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e2d8

branch_0x8005e274:
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    lwz     r3, 0x38(r3)
    clrlslwi  r0, r31, 16, 2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    lfsu    f0, 0x1c(r3)
    stfs    f0, 0x114(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x118(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x11c(sp)
    lha     r0, 0xc(r3)
    sth     r0, 0x120(sp)
    lha     r0, 0xe(r3)
    sth     r0, 0x122(sp)
    lha     r0, 0x10(r3)
    sth     r0, 0x124(sp)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x128(sp)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x12c(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x130(sp)
branch_0x8005e2d8:
    lfs     f0, -0x6de0(r2)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    stfs    f0, 0x114(sp)
    addi    r5, sp, 0x114
    stfs    f0, 0x118(sp)
    stfs    f0, 0x11c(sp)
    lwz     r12, 0x4c(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e498

branch_0x8005e308:
    lwz     r3, 0x58(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x8005e3a4
    lwz     r0, 0x5c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8005e3a4
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    lwz     r3, 0x38(r3)
    clrlslwi  r0, r31, 16, 2
    addi    r4, r31, 0x0
    lwz     r5, 0x4(r3)
    addi    r3, r30, 0x0
    lwz     r6, 0x20(r5)
    addi    r5, sp, 0xf4
    lwzx    r6, r6, r0
    lfsu    f0, 0x1c(r6)
    stfs    f0, 0xf4(sp)
    lfs     f0, 0x4(r6)
    stfs    f0, 0xf8(sp)
    lfs     f0, 0x8(r6)
    stfs    f0, 0xfc(sp)
    lha     r0, 0xc(r6)
    sth     r0, 0x100(sp)
    lha     r0, 0xe(r6)
    sth     r0, 0x102(sp)
    lha     r0, 0x10(r6)
    sth     r0, 0x104(sp)
    lfs     f0, 0x14(r6)
    stfs    f0, 0x108(sp)
    lfs     f0, 0x18(r6)
    stfs    f0, 0x10c(sp)
    lfs     f0, 0x1c(r6)
    stfs    f0, 0x110(sp)
    lwz     r12, 0x4c(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e498

branch_0x8005e3a4:
    lfs     f0, -0x6e04(r2)
    lfs     f1, 0x78(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8005e3c0
    lwz     r0, 0x5c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8005e3f8
branch_0x8005e3c0:
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0xd4
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x4c(r30)
    addi    r4, r31, 0x0
    addi    r5, sp, 0xd4
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e498

branch_0x8005e3f8:
    lfs     f0, -0x6de0(r2)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8005e40c
    cmplwi  r3, 0x0
    bne-    branch_0x8005e448
branch_0x8005e40c:
    mr      r3, r0
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0xb4
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x4c(r30)
    addi    r4, r31, 0x0
    addi    r5, sp, 0xb4
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x8005e498

branch_0x8005e448:
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x74
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x5c(r30)
    addi    r29, sp, 0x94
    addi    r4, r31, 0x0
    lwz     r12, 0xc(r3)
    mr      r5, r29
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x78(r30)
    addi    r3, r31, 0x0
    addi    r5, r29, 0x0
    addi    r4, sp, 0x74
    li      r6, 0x0
    bl      M3UMtxCalcBlendAux__FUsP16J3DTransformInfoP16J3DTransformInfofb
branch_0x8005e498:
    lhz     r6, 0x6c(r30)
    clrlwi  r0, r31, 16
    cmplw   r6, r0
    bne-    branch_0x8005e4c4
    lis     r3, j3dSys@h
    lhz     r4, 0x68(r30)
    addi    r3, r3, j3dSys@l
    lhz     r5, 0x6a(r30)
    lwz     r3, 0x38(r3)
    lfs     f1, 0x74(r30)
    bl      FeetInvCalc__FP8J3DModelUsUsUsf
branch_0x8005e4c4:
    lhz     r6, 0x72(r30)
    clrlwi  r0, r31, 16
    cmplw   r6, r0
    bne-    branch_0x8005e4f0
    lis     r3, j3dSys@h
    lhz     r4, 0x6e(r30)
    addi    r3, r3, j3dSys@l
    lhz     r5, 0x70(r30)
    lwz     r3, 0x38(r3)
    lfs     f1, 0x74(r30)
    bl      FeetInvCalc__FP8J3DModelUsUsUsf
branch_0x8005e4f0:
    clrlwi. r0, r31, 16
    bne-    branch_0x8005e52c
    lfs     f2, 0x78(r30)
    lfs     f1, -0x6da8(r2)
    lfs     f0, -0x6de0(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005e518
    fmr     f1, f0
    b       branch_0x8005e528

branch_0x8005e518:
    lfs     f0, -0x6e04(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8005e528
    fmr     f1, f0
branch_0x8005e528:
    stfs    f1, 0x78(r30)
branch_0x8005e52c:
    lwz     r0, 0x14c(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    mtlr    r0
    lwz     r29, 0x13c(sp)
    addi    sp, sp, 0x148
    blr


.globl getTransform__15J3DAnmTransformCFUsP16J3DTransformInfo
getTransform__15J3DAnmTransformCFUsP16J3DTransformInfo: # 0x8005e548
    blr


.globl createEnemyInstance__17THinokuri2ManagerFv
createEnemyInstance__17THinokuri2ManagerFv: # 0x8005e54c
    mflr    r0
    li      r3, 0x1ac
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8005e57c
    lis     r3, unk_80378f28@ha
    addi    r4, r3, unk_80378f28@l
    addi    r3, r31, 0x0
    bl      __ct__10THinokuri2FPCc
branch_0x8005e57c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__17THinokuri2ManagerFR20JSUMemoryInputStream
load__17THinokuri2ManagerFR20JSUMemoryInputStream: # 0x8005e594
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x364
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8005e5d4
    lis     r3, unk_80378f34@ha
    addi    r4, r3, unk_80378f34@l
    addi    r3, r29, 0x0
    bl      __ct__12THino2ParamsFPCc
branch_0x8005e5d4:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl createModelData__17THinokuri2ManagerFv
createModelData__17THinokuri2ManagerFv: # 0x8005e600
    mflr    r0
    lis     r4, entry_3006@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3006@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__17THinokuri2ManagerFPCc
__ct__17THinokuri2ManagerFPCc: # 0x8005e634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, __vvt__17THinokuri2Manager@h
    addi    r0, r3, __vvt__17THinokuri2Manager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12THino2ParamsFPCc
__ct__12THino2ParamsFPCc: # 0x8005e670
    mflr    r0
    lis     r5, unk_803789e0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r23, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, unk_803789e0@l
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x56c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x56c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0xa8(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6da4(r2)
    addi    r3, r30, 0x580
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x580
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x594
    lfs     f0, -0x6da0(r2)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x594
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x5a8
    lfs     f0, -0x6da0(r2)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x5a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x5b8
    lfs     f0, -0x6d9c(r2)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x5b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x5c8
    lfs     f0, -0x6d9c(r2)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x5c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x5d8
    lfs     f0, -0x6d9c(r2)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x5d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x5e8
    lfs     f0, -0x6d98(r2)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x5e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x5f8
    lfs     f0, -0x6d94(r2)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x5f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x608
    lfs     f0, -0x6d94(r2)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x608
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x614
    lfs     f0, -0x6d90(r2)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x614
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r27, r3, __vvt__10TParamT_l_@l
    stw     r27, 0x170(r31)
    li      r23, 0x2
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r23, 0x180(r31)
    addi    r26, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x624
    stw     r26, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x624
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x184(r31)
    addi    r3, r30, 0x634
    stw     r23, 0x194(r31)
    stw     r26, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x634
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    li      r0, 0x7d0
    addi    r3, r30, 0x648
    stw     r0, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x648
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    li      r0, 0xbb8
    addi    r3, r30, 0x65c
    stw     r0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x65c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x670
    lfs     f0, -0x6d8c(r2)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x670
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    li      r25, 0x708
    addi    r3, r30, 0x680
    stw     r25, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x680
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x68c
    lfs     f0, -0x6d88(r2)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x68c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x698
    lfs     f0, -0x6d84(r2)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x698
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x6a4
    lfs     f0, -0x6d80(r2)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x6a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x6b0
    lfs     f0, -0x6df4(r2)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x6b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0x6c0
    lfs     f0, -0x6de4(r2)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x6c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x6d0
    lfs     f0, -0x6d7c(r2)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x6d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x6dc
    lfs     f0, -0x6de8(r2)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x6dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0x6ec
    lfs     f0, -0x6d78(r2)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x6ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0x6fc
    lfs     f0, -0x6d74(r2)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x6fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0x70c
    lfs     f0, -0x6de8(r2)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x70c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x2b0(r31)
    li      r0, 0xa
    addi    r3, r30, 0x71c
    stw     r0, 0x2c0(r31)
    stw     r26, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0x71c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0x730
    lfs     f0, -0x6d74(r2)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0x730
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0x740
    lfs     f0, -0x6d70(r2)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0x740
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__11TParamT_Uc_@ha
    addi    r23, r3, __vvt__11TParamT_Uc_@l
    stw     r23, 0x2ec(r31)
    li      r0, 0x1
    lis     r3, __vvt__12TParamRT_Uc_@ha
    stb     r0, 0x2fc(r31)
    addi    r24, r3, __vvt__12TParamRT_Uc_@l
    addi    r3, r30, 0x754
    stw     r24, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0x754
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x300(r31)
    li      r0, 0x96
    addi    r3, r30, 0x768
    stb     r0, 0x310(r31)
    stw     r24, 0x300(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x314
    addi    r6, r30, 0x768
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x314(r31)
    li      r0, 0x64
    addi    r3, r30, 0x77c
    stb     r0, 0x324(r31)
    stw     r24, 0x314(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x328
    addi    r6, r30, 0x77c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x328(r31)
    addi    r3, r30, 0x790
    stw     r25, 0x338(r31)
    stw     r26, 0x328(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x33c
    addi    r6, r30, 0x790
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x33c(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x7a4
    stw     r0, 0x34c(r31)
    stw     r26, 0x33c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x350
    addi    r6, r30, 0x7a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x350(r31)
    mr      r3, r31
    lfs     f0, -0x6d6c(r2)
    stfs    f0, 0x360(r31)
    stw     r28, 0x350(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r23, 0x14(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__10THinokuri2Fv
__dt__10THinokuri2Fv: # 0x8005ece0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8005ed30
    lis     r3, __vvt__10THinokuri2@h
    addi    r3, r3, __vvt__10THinokuri2@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8005ed30
    mr      r3, r30
    bl      __dl__FPv
branch_0x8005ed30:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9THino2HitFv
__dt__9THino2HitFv: # 0x8005ed4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8005edb4
    lis     r3, __vvt__9THino2Hit@h
    addi    r3, r3, __vvt__9THino2Hit@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8005eda4
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8005eda4:
    extsh.  r0, r31
    ble-    branch_0x8005edb4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8005edb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13THino2MtxCalcFv
__dt__13THino2MtxCalcFv: # 0x8005edd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    lis     r3, unk_803b0fb0@h
    addi    r3, r3, unk_803b0fb0@l
    beq-    branch_0x8005ee74
    addi    r0, r3, 0x41c
    stw     r0, 0x4c(r30)
    addi    r5, r3, 0x450
    addi    r3, r3, 0x440
    lwz     r4, 0x0(r30)
    addi    r0, r30, 0x7c
    stw     r5, 0x0(r4)
    stw     r3, 0x54(r30)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x8005ee64
    lis     r3, __vvt__15TMtxCalcFootInv@ha
    addi    r3, r3, __vvt__15TMtxCalcFootInv@l
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x34
    addi    r5, r3, 0x24
    lwz     r4, 0x0(r30)
    addi    r0, r30, 0x78
    addi    r3, r30, 0x0
    stw     r6, 0x0(r4)
    li      r4, 0x0
    stw     r5, 0x54(r30)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__22J3DMtxCalcSoftimageAnmFv
branch_0x8005ee64:
    extsh.  r0, r31
    ble-    branch_0x8005ee74
    mr      r3, r30
    bl      __dl__FPv
branch_0x8005ee74:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17THinokuri2ManagerFv
__dt__17THinokuri2ManagerFv: # 0x8005ee90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8005eed8
    lis     r3, __vvt__17THinokuri2Manager@h
    addi    r0, r3, __vvt__17THinokuri2Manager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8005eed8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8005eed8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_hinokuri2_cpp
__sinit_hinokuri2_cpp: # 0x8005eef4
    mflr    r0
    lis     r3, unk_803f0500@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f0500@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8005ef3c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8005ef3c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8005ef6c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8005ef6c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8005ef9c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8005ef9c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8005efcc
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8005efcc:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8005effc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8005effc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f02c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8005f02c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f05c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8005f05c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f08c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8005f08c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f0bc
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8005f0bc:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f0ec
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8005f0ec:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f11c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8005f11c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f14c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8005f14c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f17c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x144
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8005f17c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f1ac
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8005f1ac:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f1dc
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x15c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8005f1dc:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8005f1f0
unk_8005f1f0: # 0x8005f1f0
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x7c
    b       calc__13THino2MtxCalcFUs


.globl unk_8005f204
unk_8005f204: # 0x8005f204
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x7c
    b       calcTransform__19J3DMtxCalcSoftimageFUsRC16J3DTransformInfo


.globl unk_8005f218
unk_8005f218: # 0x8005f218
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x7c
    b       recursiveEntry__15J3DMtxCalcBasicFP7J3DNode


.globl unk_8005f22c
unk_8005f22c: # 0x8005f22c
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x7c
    b       recursiveCalc__15J3DMtxCalcBasicFP7J3DNode


.globl unk_8005f240
unk_8005f240: # 0x8005f240
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x7c
    b       recursiveUpdate__15J3DMtxCalcBasicFP7J3DNode


.globl unk_8005f254
unk_8005f254: # 0x8005f254
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    addi    r3, r3, -0x7c
    b       init__19J3DMtxCalcSoftimageFRC3VecRA3_A4_Cf


.globl unk_8005f268
unk_8005f268: # 0x8005f268
    addi    r3, r3, -0x50
    b       calc__13THino2MtxCalcFUs


.globl unk_8005f270
unk_8005f270: # 0x8005f270
    addi    r3, r3, -0x50
    b       __dt__13THino2MtxCalcFv


.globl unk_8005f278
unk_8005f278: # 0x8005f278
    addi    r3, r3, -0x20
    b       __dt__9THino2HitFv


.globl unk_8005f280
unk_8005f280: # 0x8005f280
    addi    r3, r3, -0x20
    b       __dt__10THinokuri2Fv

