
.globl __dt__12TNerveBWFallFv
__dt__12TNerveBWFallFv: # 0x800a4040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a4084
    lis     r3, 0x803b
    addi    r0, r3, 0x5f24
    stw     r0, 0x0(r31)
    beq-    branch_0x800a4074
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a4074:
    extsh.  r0, r4
    ble-    branch_0x800a4084
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a4084:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBWFallCFP24TSpineBase_10TLiveActor_
execute__12TNerveBWFallCFP24TSpineBase_10TLiveActor_: # 0x800a409c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    stw     r29, 0x64(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a41a8
    mr      r3, r31
    lwz     r4, 0x158(r31)
    lwz     r12, 0x0(r31)
    addi    r29, r4, 0x10
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x64d8(rtoc)
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r3, sp, 0x44
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x44(sp)
    li      r4, 0x0
    lwz     r3, 0x48(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r3, 0x158(r31)
    stw     r4, 0x34(sp)
    addi    r5, r3, 0x10
    lwz     r3, 0x10(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x8(r5)
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
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    stw     r4, 0x16c(r31)
branch_0x800a41a8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800a427c
    lwz     r6, 0x158(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    lwz     r5, 0x10(r6)
    lwz     r4, 0x14(r6)
    stw     r5, 0x10(r31)
    stw     r4, 0x14(r31)
    lwz     r4, 0x18(r6)
    stw     r4, 0x18(r31)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r31)
    stw     r0, 0x4(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4240
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r4, 0x800a
    stw     r0, -0x6bc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1594
    addi    r4, r4, 0x429c
    subi    r3, r13, 0x6bc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a4240:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a4274
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a4274
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a4274:
    li      r3, 0x1
    b       branch_0x800a4280

branch_0x800a427c:
    li      r3, 0x0
branch_0x800a4280:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__19TNerveBWGraphWanderFv
__dt__19TNerveBWGraphWanderFv: # 0x800a429c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a42e0
    lis     r3, 0x803b
    addi    r0, r3, 0x6114
    stw     r0, 0x0(r31)
    beq-    branch_0x800a42d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a42d0:
    extsh.  r0, r4
    ble-    branch_0x800a42e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a42e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__12TNerveBWFallFv
theNerve__12TNerveBWFallFv: # 0x800a42f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6b78(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4348
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b74(r13)
    addi    r0, r3, 0x5f24
    lis     r4, 0x800a
    stw     r0, -0x6b74(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x160c
    addi    r4, r4, 0x4040
    subi    r3, r13, 0x6b74
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b78(r13)
branch_0x800a4348:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6b74
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__13TNerveBWShakeCFP24TSpineBase_10TLiveActor_
execute__13TNerveBWShakeCFP24TSpineBase_10TLiveActor_: # 0x800a435c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r29, 0x74(r3)
    mr      r30, r3
    bne-    branch_0x800a4420
    lwz     r31, 0x150(r30)
    lwz     r3, 0x64(r31)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x2
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r31)
    cmplw   r0, r3
    beq-    branch_0x800a43c4
    stw     r0, 0x58(r31)
    stw     r3, 0x54(r31)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r31)
branch_0x800a43c4:
    lwz     r3, 0x74(r30)
    li      r4, 0x2
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    lis     r3, 0x803b
    xoris   r4, r4, 0x8000
    stw     r4, 0x54(sp)
    addi    r4, r3, 0x5f08
    lfs     f2, -0x64c0(rtoc)
    mr      r3, r30
    stw     r0, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r30)
    lwz     r4, 0x8(r4)
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800a4420:
    addi    r3, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a44d4
    lwz     r0, 0x17c(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x800a4488
    lwz     r5, 0x158(r30)
    li      r4, 0xae
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a4488
    lfs     f1, -0x64bc(rtoc)
    stfs    f1, 0x154(r3)
    lfs     f0, -0x64cc(rtoc)
    stfs    f0, 0x158(r3)
    stfs    f1, 0x15c(r3)
    stfs    f1, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f1, 0x17c(r3)
branch_0x800a4488:
    li      r0, 0x0
    stb     r0, 0x194(r30)
    li      r4, 0x2967
    stw     r0, 0x17c(r30)
    lwz     r5, 0x158(r30)
    lwz     r3, -0x6044(r13)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a44cc
    addi    r4, r31, 0x0
    li      r3, 0x2967
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a44cc:
    li      r3, 0x1
    b       branch_0x800a44d8

branch_0x800a44d4:
    li      r3, 0x0
branch_0x800a44d8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl theNerve__13TNerveBWShakeFv
theNerve__13TNerveBWShakeFv: # 0x800a44f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6b80(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4544
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b7c(r13)
    addi    r0, r3, 0x6084
    lis     r4, 0x800a
    stw     r0, -0x6b7c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1600
    addi    r4, r4, 0x4558
    subi    r3, r13, 0x6b7c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b80(r13)
branch_0x800a4544:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6b7c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__13TNerveBWShakeFv
__dt__13TNerveBWShakeFv: # 0x800a4558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a459c
    lis     r3, 0x803b
    addi    r0, r3, 0x6084
    stw     r0, 0x0(r31)
    beq-    branch_0x800a458c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a458c:
    extsh.  r0, r4
    ble-    branch_0x800a459c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a459c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveBWJumpAwayCFP24TSpineBase_10TLiveActor_
execute__16TNerveBWJumpAwayCFP24TSpineBase_10TLiveActor_: # 0x800a45b4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x1570
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a46b8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x64b0(rtoc)
    addi    r4, r30, 0x0
    addi    r3, sp, 0x40
    addi    r5, r31, 0x18
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x40(sp)
    li      r4, 0x0
    lwz     r3, 0x44(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    stw     r4, 0x30(sp)
    lwz     r3, 0x18(r31)
    lwz     r0, 0x1c(r31)
    stw     r3, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x20(r31)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x30(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x30(sp)
    stw     r0, 0x104(r30)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x110(r30)
    stw     r4, 0x118(r30)
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x54(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    stw     r4, 0x16c(r30)
branch_0x800a46b8:
    lwz     r0, 0x188(r30)
    cmpwi   r0, 0x0
    beq-    branch_0x800a4740
    lbz     r0, -0x6b78(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4704
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b74(r13)
    addi    r0, r3, 0x5f24
    lis     r3, 0x800a
    stw     r0, -0x6b74(r13)
    addi    r4, r3, 0x4040
    subi    r3, r13, 0x6b74
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b78(r13)
branch_0x800a4704:
    subi    r4, r13, 0x6b74
    cmplwi  r4, 0x0
    beq-    branch_0x800a4738
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800a4738
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800a4738:
    li      r3, 0x1
    b       branch_0x800a4824

branch_0x800a4740:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800a480c
    lwz     r5, 0x18(r31)
    li      r0, -0x1
    lwz     r4, 0x1c(r31)
    mr      r3, r30
    stw     r5, 0x10(r30)
    stw     r4, 0x14(r30)
    lwz     r4, 0x20(r31)
    stw     r4, 0x18(r30)
    lwz     r4, 0x124(r30)
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r30)
    stw     r0, 0x4(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a47d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r3, 0x800a
    stw     r0, -0x6bc4(r13)
    addi    r4, r3, 0x429c
    subi    r3, r13, 0x6bc4
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a47d0:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a4804
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800a4804
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800a4804:
    li      r3, 0x1
    b       branch_0x800a4824

branch_0x800a480c:
    lfs     f1, -0x64d0(rtoc)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800a4824:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl theNerve__16TNerveBWJumpAwayFv
theNerve__16TNerveBWJumpAwayFv: # 0x800a4840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6b88(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4890
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b84(r13)
    addi    r0, r3, 0x6094
    lis     r4, 0x800a
    stw     r0, -0x6b84(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15f4
    addi    r4, r4, 0x48a4
    subi    r3, r13, 0x6b84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b88(r13)
branch_0x800a4890:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6b84
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__16TNerveBWJumpAwayFv
__dt__16TNerveBWJumpAwayFv: # 0x800a48a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a48e8
    lis     r3, 0x803b
    addi    r0, r3, 0x6094
    stw     r0, 0x0(r31)
    beq-    branch_0x800a48d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a48d8:
    extsh.  r0, r4
    ble-    branch_0x800a48e8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a48e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__11TNerveBWDieCFP24TSpineBase_10TLiveActor_
execute__11TNerveBWDieCFP24TSpineBase_10TLiveActor_: # 0x800a4900
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stmw    r26, 0xe8(sp)
    mr      r27, r4
    subi    r31, r3, 0x2a58
    lwz     r0, 0x20(r4)
    lwz     r4, 0x0(r4)
    cmpwi   r0, 0x0
    lwz     r28, 0x74(r4)
    mr      r29, r4
    bne-    branch_0x800a49a4
    lfs     f0, -0x64d0(rtoc)
    addi    r5, r29, 0x10
    li      r4, 0xb1
    stfs    f0, 0xd8(sp)
    li      r6, 0x0
    li      r7, 0x0
    stfs    f0, 0xd4(sp)
    stfs    f0, 0xd0(sp)
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0xd8(sp)
    stw     r0, 0xb4(r29)
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0x94(r29)
    stw     r0, 0x98(r29)
    lwz     r0, 0xd8(sp)
    stw     r0, 0x9c(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r29)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800a49a4:
    lbz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800a4a58
    beq-    branch_0x800a49c0
    lbz     r3, 0x13c(r29)
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r29)
branch_0x800a49c0:
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    lbz     r0, -0x6b90(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4a1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b8c(r13)
    addi    r0, r3, 0x60a4
    lis     r4, 0x800a
    stw     r0, -0x6b8c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15e8
    addi    r4, r4, 0x4d60
    subi    r3, r13, 0x6b8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b90(r13)
branch_0x800a4a1c:
    subi    r4, r13, 0x6b8c
    cmplwi  r4, 0x0
    beq-    branch_0x800a4a50
    lwz     r5, 0x8(r27)
    lwz     r0, 0x4(r27)
    cmpw    r5, r0
    bge-    branch_0x800a4a50
    lwz     r3, 0xc(r27)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r27)
branch_0x800a4a50:
    li      r3, 0x1
    b       branch_0x800a4d20

branch_0x800a4a58:
    lwz     r0, 0x20(r27)
    cmpwi   r0, 0x0
    bne-    branch_0x800a4ca4
    li      r30, 0x0
    lwz     r3, -0x6048(r13)
    sth     r30, 0xcc(sp)
    addi    r0, sp, 0xcc
    addi    r4, r31, 0x1fc
    stw     r0, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x64d0(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    stw     r30, 0x16c(r29)
    lis     r3, 0x803f
    addi    r5, r3, 0x1570
    lfs     f0, -0x64d0(rtoc)
    li      r0, 0x1
    addi    r3, sp, 0x7c
    stfs    f0, 0x168(r29)
    stb     r0, 0x18c(r29)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x8(r5)
    stw     r0, 0x18(r29)
    lwz     r4, 0x10(r29)
    lwz     r0, 0x14(r29)
    lfs     f0, -0x64ac(rtoc)
    stw     r4, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0x18(r29)
    stw     r0, 0xb8(sp)
    lfs     f1, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lwz     r4, 0x24(r29)
    lwz     r0, 0x28(r29)
    lfs     f1, -0x64a8(rtoc)
    stw     r4, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x2c(r29)
    stw     r0, 0xc4(sp)
    lfs     f0, 0xbc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lwz     r26, 0xec(r29)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x8(sp)
    lfs     f1, 0xb0(sp)
    lfs     f2, 0xb4(sp)
    lfs     f3, 0xb8(sp)
    lfs     f4, 0x30(r29)
    lfs     f5, 0x34(r29)
    lfs     f6, 0x38(r29)
    lfs     f7, 0xbc(sp)
    lfs     f8, 0xc0(sp)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r26, 0x8(r26)
    addi    r4, sp, 0x7c
    addi    r3, r26, 0x0
    bl      setMtx__17TMapCollisionBaseFPA4_f
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x170(r29)
    mr      r3, r30
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r4, 0x174(r29)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r5, 0x154(r29)
    b       branch_0x800a4bd8

branch_0x800a4bbc:
    lwz     r4, 0x18(r5)
    addi    r30, r30, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
branch_0x800a4bd8:
    lwz     r4, 0x14(r5)
    lhz     r0, 0x0(r4)
    cmpw    r30, r0
    blt+    branch_0x800a4bbc
    lwz     r3, 0x158(r29)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r26, 0x150(r29)
    lwz     r3, 0x64(r26)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x1
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r26)
    cmplw   r0, r3
    beq-    branch_0x800a4c30
    stw     r0, 0x58(r26)
    stw     r3, 0x54(r26)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r26)
branch_0x800a4c30:
    lwz     r3, 0x74(r29)
    li      r4, 0x1
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    lis     r3, 0x803b
    xoris   r4, r4, 0x8000
    stw     r4, 0xe4(sp)
    addi    r4, r3, 0x5f08
    lfs     f2, -0x64c0(rtoc)
    mr      r3, r29
    stw     r0, 0xe0(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r29)
    lwz     r4, 0x4(r4)
    bl      setAnmSound__10TLiveActorFPCc
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      setBrkFromIndex__6MActorFi
branch_0x800a4ca4:
    lwz     r0, 0x20(r27)
    cmpwi   r0, 0x3c
    ble-    branch_0x800a4cf0
    lbz     r0, 0x18d(r29)
    extsb.  r0, r0
    bne-    branch_0x800a4cf0
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x800a4cf0
    lwz     r3, -0x62b0(r13)
    addi    r4, r31, 0x210
    lfs     f1, 0x10(r29)
    addi    r5, r31, 0x224
    lfs     f2, 0x14(r29)
    lfs     f3, 0x18(r29)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    li      r0, 0x1
    stb     r0, 0x18d(r29)
branch_0x800a4cf0:
    addi    r3, r28, 0x0
    li      r4, 0x5
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a4d1c
    addi    r3, r28, 0x0
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0xc(r3)
branch_0x800a4d1c:
    li      r3, 0x0
branch_0x800a4d20:
    lmw     r26, 0xe8(sp)
    lwz     r0, 0x104(sp)
    addi    sp, sp, 0x100
    mtlr    r0
    blr


.globl setMtx__17TMapCollisionBaseFPA4_f
setMtx__17TMapCollisionBaseFPA4_f: # 0x800a4d34
    mflr    r0
    addi    r5, r3, 0x0
    stw     r0, 0x4(sp)
    addi    r3, r4, 0x0
    addi    r4, r5, 0x20
    stwu    sp, -0x8(sp)
    bl      PSMTXCopy
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__11TNerveBWDieFv
__dt__11TNerveBWDieFv: # 0x800a4d60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a4da4
    lis     r3, 0x803b
    addi    r0, r3, 0x60a4
    stw     r0, 0x0(r31)
    beq-    branch_0x800a4d94
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a4d94:
    extsh.  r0, r4
    ble-    branch_0x800a4da4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a4da4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__11TNerveBWDieFv
theNerve__11TNerveBWDieFv: # 0x800a4dbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6b90(r13)
    extsb.  r0, r0
    bne-    branch_0x800a4e0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b8c(r13)
    addi    r0, r3, 0x60a4
    lis     r4, 0x800a
    stw     r0, -0x6b8c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15e8
    addi    r4, r4, 0x4d60
    subi    r3, r13, 0x6b8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b90(r13)
branch_0x800a4e0c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6b8c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__18TNerveBWJumpToBathCFP24TSpineBase_10TLiveActor_
execute__18TNerveBWJumpToBathCFP24TSpineBase_10TLiveActor_: # 0x800a4e20
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r3, 0x1570
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a4f24
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x64c0(rtoc)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, sp, 0x50
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x50(sp)
    li      r4, 0x0
    lwz     r3, 0x54(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    stw     r4, 0x40(sp)
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x40(sp)
    stw     r0, 0x104(r30)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x110(r30)
    stw     r4, 0x118(r30)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x8c(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    stw     r4, 0x16c(r30)
branch_0x800a4f24:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x78
    ble-    branch_0x800a4ff0
    lbz     r0, 0x195(r30)
    extsb.  r0, r0
    bne-    branch_0x800a4ff0
    lfs     f1, -0x64c0(rtoc)
    lfs     f0, 0x4(r31)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800a4ff0
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x2820
    addi    r4, r30, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800a4fc0
    lfs     f0, -0x64d8(rtoc)
    addi    r4, sp, 0x6c
    lfs     f2, -0x64ac(rtoc)
    addi    r5, sp, 0x78
    stfs    f0, 0x78(sp)
    lfs     f1, -0x64a4(rtoc)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x14(r30)
    lfs     f3, 0x18(r30)
    fadds   f2, f2, f0
    lfs     f0, 0x10(r30)
    stfs    f0, 0x6c(sp)
    fsubs   f0, f2, f1
    stfs    f0, 0x70(sp)
    stfs    f3, 0x74(sp)
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    li      r0, 0x1
    stb     r0, 0x195(r30)
branch_0x800a4fc0:
    lwz     r3, -0x6044(r13)
    li      r4, 0x2917
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a4ff0
    addi    r4, r30, 0x10
    li      r3, 0x2917
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a4ff0:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x18(sp)
    lwz     r0, 0x10(sp)
    lwz     r3, 0x14(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x18(sp)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x60(sp)
    lfs     f4, 0x14(r30)
    fsubs   f0, f0, f4
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    lfs     f3, 0x64(sp)
    lfs     f0, 0x60(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x64a0(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a5120
    lfs     f0, 0x4(r31)
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800a5120
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(sp)
    stw     r0, 0x18(r30)
    lbz     r0, -0x6b90(r13)
    extsb.  r0, r0
    bne-    branch_0x800a50e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b8c(r13)
    addi    r0, r3, 0x60a4
    lis     r3, 0x800a
    stw     r0, -0x6b8c(r13)
    addi    r4, r3, 0x4d60
    subi    r3, r13, 0x6b8c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b90(r13)
branch_0x800a50e4:
    subi    r4, r13, 0x6b8c
    cmplwi  r4, 0x0
    beq-    branch_0x800a5118
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800a5118
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800a5118:
    li      r3, 0x1
    b       branch_0x800a5138

branch_0x800a5120:
    lfs     f1, -0x64d0(rtoc)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800a5138:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl theNerve__18TNerveBWJumpToBathFv
theNerve__18TNerveBWJumpToBathFv: # 0x800a5154
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6b98(r13)
    extsb.  r0, r0
    bne-    branch_0x800a51a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b94(r13)
    addi    r0, r3, 0x60b4
    lis     r4, 0x800a
    stw     r0, -0x6b94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15dc
    addi    r4, r4, 0x51b8
    subi    r3, r13, 0x6b94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b98(r13)
branch_0x800a51a4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6b94
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveBWJumpToBathFv
__dt__18TNerveBWJumpToBathFv: # 0x800a51b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a51fc
    lis     r3, 0x803b
    addi    r0, r3, 0x60b4
    stw     r0, 0x0(r31)
    beq-    branch_0x800a51ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a51ec:
    extsh.  r0, r4
    ble-    branch_0x800a51fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a51fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__14TNerveBWWakeupCFP24TSpineBase_10TLiveActor_
execute__14TNerveBWWakeupCFP24TSpineBase_10TLiveActor_: # 0x800a5214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a52f0
    lwz     r30, 0x150(r29)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x6
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x800a5278
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r30)
branch_0x800a5278:
    lwz     r3, 0x74(r29)
    li      r4, 0x6
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    lis     r3, 0x803b
    xoris   r4, r4, 0x8000
    stw     r4, 0x34(sp)
    addi    r4, r3, 0x5f08
    lfs     f2, -0x64c0(rtoc)
    mr      r3, r29
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r29)
    lwz     r4, 0x18(r4)
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r29)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
    li      r0, 0x0
    stw     r0, 0x16c(r29)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x168(r29)
branch_0x800a52f0:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a5388
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a534c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r4, 0x800a
    stw     r0, -0x6bc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1594
    addi    r4, r4, 0x429c
    subi    r3, r13, 0x6bc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a534c:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a5380
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800a5380
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800a5380:
    li      r3, 0x1
    b       branch_0x800a538c

branch_0x800a5388:
    li      r3, 0x0
branch_0x800a538c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl theNerve__14TNerveBWWakeupFv
theNerve__14TNerveBWWakeupFv: # 0x800a53a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6ba0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a53f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b9c(r13)
    addi    r0, r3, 0x60c4
    lis     r4, 0x800a
    stw     r0, -0x6b9c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15d0
    addi    r4, r4, 0x540c
    subi    r3, r13, 0x6b9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ba0(r13)
branch_0x800a53f8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6b9c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__14TNerveBWWakeupFv
__dt__14TNerveBWWakeupFv: # 0x800a540c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a5450
    lis     r3, 0x803b
    addi    r0, r3, 0x60c4
    stw     r0, 0x0(r31)
    beq-    branch_0x800a5440
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a5440:
    extsh.  r0, r4
    ble-    branch_0x800a5450
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a5450:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBWStunCFP24TSpineBase_10TLiveActor_
execute__12TNerveBWStunCFP24TSpineBase_10TLiveActor_: # 0x800a5468
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    mr      r30, r4
    stw     r29, 0xfc(sp)
    stw     r28, 0xf8(sp)
    lwz     r4, 0x0(r4)
    lwz     r3, 0x158(r4)
    mr      r31, r4
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800a54a8
    li      r0, 0x1
    b       branch_0x800a54ac

branch_0x800a54a8:
    li      r0, 0x0
branch_0x800a54ac:
    cmpwi   r0, 0x0
    beq-    branch_0x800a5698
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x15c(r31)
    lfs     f0, 0x160(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x164(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x158(r3)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a54fc
    li      r0, 0x0
    b       branch_0x800a5500

branch_0x800a54fc:
    li      r0, 0x1
branch_0x800a5500:
    cmpwi   r0, 0x0
    beq-    branch_0x800a5698
    lwz     r3, 0x124(r31)
    addi    r4, sp, 0xe0
    lwz     r29, 0x0(r3)
    lwz     r28, 0x8(r3)
    lwz     r3, 0x0(r29)
    slwi    r0, r28, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f1, 0xe0(sp)
    addi    r3, sp, 0xe0
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    bl      PSVECMag
    lfs     f0, -0x64d4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a5690
    lwz     r0, 0x10(r29)
    cmpw    r28, r0
    bne-    branch_0x800a55f8
    lbz     r0, -0x6b98(r13)
    extsb.  r0, r0
    bne-    branch_0x800a55bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b94(r13)
    addi    r0, r3, 0x60b4
    lis     r4, 0x800a
    stw     r0, -0x6b94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15dc
    addi    r4, r4, 0x51b8
    subi    r3, r13, 0x6b94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b98(r13)
branch_0x800a55bc:
    subi    r4, r13, 0x6b94
    cmplwi  r4, 0x0
    beq-    branch_0x800a55f0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a55f0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a55f0:
    li      r3, 0x1
    b       branch_0x800a575c

branch_0x800a55f8:
    lwz     r3, 0x124(r31)
    addi    r6, sp, 0xc8
    lwz     r10, -0x60b4(r13)
    addi    r7, r31, 0x10
    lwz     r29, 0x8(r3)
    lwz     r5, 0x4(r3)
    li      r8, -0x1
    lwz     r3, 0x0(r3)
    mr      r4, r29
    lwz     r9, 0x0(r10)
    lwz     r0, 0x4(r10)
    stw     r9, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r0, 0x8(r10)
    stw     r0, 0xd0(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lfs     f1, 0xd0(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(sp)
    bl      getAimToDirNextIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x124(r31)
    stw     r3, 0x8(r4)
    mr      r3, r31
    lwz     r4, 0x124(r31)
    stw     r29, 0x4(r4)
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r31)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x12c(r31)
branch_0x800a5690:
    li      r3, 0x0
    b       branch_0x800a575c

branch_0x800a5698:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x180(r3)
    cmpw    r4, r0
    ble-    branch_0x800a5758
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1bc(r3)
    stb     r0, 0x13c(r31)
    lbz     r0, -0x6ba0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a571c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b9c(r13)
    addi    r0, r3, 0x60c4
    lis     r4, 0x800a
    stw     r0, -0x6b9c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15d0
    addi    r4, r4, 0x540c
    subi    r3, r13, 0x6b9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ba0(r13)
branch_0x800a571c:
    subi    r4, r13, 0x6b9c
    cmplwi  r4, 0x0
    beq-    branch_0x800a5750
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a5750
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a5750:
    li      r3, 0x1
    b       branch_0x800a575c

branch_0x800a5758:
    li      r3, 0x0
branch_0x800a575c:
    lwz     r0, 0x10c(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    lwz     r28, 0xf8(sp)
    addi    sp, sp, 0x108
    blr


.globl theNerve__12TNerveBWStunFv
theNerve__12TNerveBWStunFv: # 0x800a577c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6ba8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a57cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ba4(r13)
    addi    r0, r3, 0x60d4
    lis     r4, 0x800a
    stw     r0, -0x6ba4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15c4
    addi    r4, r4, 0x57e0
    subi    r3, r13, 0x6ba4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ba8(r13)
branch_0x800a57cc:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6ba4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveBWStunFv
__dt__12TNerveBWStunFv: # 0x800a57e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a5824
    lis     r3, 0x803b
    addi    r0, r3, 0x60d4
    stw     r0, 0x0(r31)
    beq-    branch_0x800a5814
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a5814:
    extsh.  r0, r4
    ble-    branch_0x800a5824
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a5824:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBWJumpCFP24TSpineBase_10TLiveActor_
execute__12TNerveBWJumpCFP24TSpineBase_10TLiveActor_: # 0x800a583c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a58e8
    lwz     r4, 0x104(r29)
    addi    r3, r29, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x800a5884
    addi    r30, r4, 0x10
    b       branch_0x800a5888

branch_0x800a5884:
    addi    r30, r3, 0x4
branch_0x800a5888:
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
    addi    r3, sp, 0x30
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r4, 0x30(sp)
    li      r0, 0x0
    lwz     r3, 0x34(sp)
    stw     r4, 0xac(r29)
    stw     r3, 0xb0(r29)
    lwz     r3, 0x38(sp)
    stw     r3, 0xb4(r29)
    lwz     r3, 0xf0(r29)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r29)
    stw     r0, 0x16c(r29)
branch_0x800a58e8:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800a5984
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a5948
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r4, 0x800a
    stw     r0, -0x6bc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1594
    addi    r4, r4, 0x429c
    subi    r3, r13, 0x6bc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a5948:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a597c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800a597c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800a597c:
    li      r3, 0x1
    b       branch_0x800a599c

branch_0x800a5984:
    lfs     f1, -0x64d0(rtoc)
    mr      r3, r29
    lfs     f2, 0x144(r29)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800a599c:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x60
    blr


.globl theNerve__12TNerveBWJumpFv
theNerve__12TNerveBWJumpFv: # 0x800a59bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6bb0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a5a0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bac(r13)
    addi    r0, r3, 0x60e4
    lis     r4, 0x800a
    stw     r0, -0x6bac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15b8
    addi    r4, r4, 0x5a20
    subi    r3, r13, 0x6bac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bb0(r13)
branch_0x800a5a0c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6bac
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveBWJumpFv
__dt__12TNerveBWJumpFv: # 0x800a5a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a5a64
    lis     r3, 0x803b
    addi    r0, r3, 0x60e4
    stw     r0, 0x0(r31)
    beq-    branch_0x800a5a54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a5a54:
    extsh.  r0, r4
    ble-    branch_0x800a5a64
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a5a64:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBWBarkCFP24TSpineBase_10TLiveActor_
execute__12TNerveBWBarkCFP24TSpineBase_10TLiveActor_: # 0x800a5a7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r4
    stw     r29, 0x94(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a5bec
    lwz     r29, 0x150(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x0
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x800a5ae0
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r29)
branch_0x800a5ae0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    lis     r3, 0x803b
    xoris   r4, r4, 0x8000
    stw     r4, 0x8c(sp)
    addi    r4, r3, 0x5f08
    lfs     f2, -0x64c0(rtoc)
    mr      r3, r31
    stw     r0, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r31)
    lwz     r4, 0x0(r4)
    bl      setAnmSound__10TLiveActorFPCc
    li      r0, 0x0
    stw     r0, 0x16c(r31)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x168(r31)
    lbz     r0, 0x194(r31)
    extsb.  r0, r0
    bne-    branch_0x800a5bec
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800a5ba8
    lwz     r5, 0x158(r31)
    li      r4, 0xae
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800a5ba8
    lfs     f1, -0x64bc(rtoc)
    stfs    f1, 0x154(r3)
    lfs     f0, -0x64cc(rtoc)
    stfs    f0, 0x158(r3)
    stfs    f1, 0x15c(r3)
    stfs    f1, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f1, 0x17c(r3)
branch_0x800a5ba8:
    li      r0, 0x0
    stb     r0, 0x194(r31)
    li      r4, 0x2966
    stw     r0, 0x17c(r31)
    lwz     r5, 0x158(r31)
    lwz     r3, -0x6044(r13)
    addi    r29, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a5bec
    addi    r4, r29, 0x0
    li      r3, 0x2966
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a5bec:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x118
    bne-    branch_0x800a5c14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1bc(r3)
    stb     r0, 0x13c(r31)
branch_0x800a5c14:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a5cd8
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a5c70
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r4, 0x800a
    stw     r0, -0x6bc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1594
    addi    r4, r4, 0x429c
    subi    r3, r13, 0x6bc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a5c70:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a5ca4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a5ca4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a5ca4:
    lwz     r0, 0x198(r31)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x800a5cc4
    lwz     r3, -0x6048(r13)
    li      r4, 0x1b
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800a5cc4:
    lwz     r0, 0x198(r31)
    li      r3, 0x1
    ori     r0, r0, 0x2
    stw     r0, 0x198(r31)
    b       branch_0x800a5cdc

branch_0x800a5cd8:
    li      r3, 0x0
branch_0x800a5cdc:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl theNerve__12TNerveBWBarkFv
theNerve__12TNerveBWBarkFv: # 0x800a5cf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6bb8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a5d48
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bb4(r13)
    addi    r0, r3, 0x60f4
    lis     r4, 0x800a
    stw     r0, -0x6bb4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15ac
    addi    r4, r4, 0x5d5c
    subi    r3, r13, 0x6bb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bb8(r13)
branch_0x800a5d48:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6bb4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveBWBarkFv
__dt__12TNerveBWBarkFv: # 0x800a5d5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a5da0
    lis     r3, 0x803b
    addi    r0, r3, 0x60f4
    stw     r0, 0x0(r31)
    beq-    branch_0x800a5d90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a5d90:
    extsh.  r0, r4
    ble-    branch_0x800a5da0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a5da0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBWRollCFP24TSpineBase_10TLiveActor_
execute__12TNerveBWRollCFP24TSpineBase_10TLiveActor_: # 0x800a5db8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stw     r31, 0xfc(sp)
    stw     r30, 0xf8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800a5e00
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x64d0(rtoc)
    li      r0, 0x1
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
    stw     r0, 0x16c(r31)
branch_0x800a5e00:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800a5eb4
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a5e60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r4, 0x800a
    stw     r0, -0x6bc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1594
    addi    r4, r4, 0x429c
    subi    r3, r13, 0x6bc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a5e60:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a5e94
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a5e94
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a5e94:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr      r30, r3
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r30)
    li      r3, 0x1
    b       branch_0x800a5ee0

branch_0x800a5eb4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x16c(r3)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f3, -0x64d0(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800a5ee0:
    lwz     r0, 0x104(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    mtlr    r0
    addi    sp, sp, 0x100
    blr


.globl __dt__12TNerveBWRollFv
__dt__12TNerveBWRollFv: # 0x800a5ef8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800a5f3c
    lis     r3, 0x803b
    addi    r0, r3, 0x6104
    stw     r0, 0x0(r31)
    beq-    branch_0x800a5f2c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800a5f2c:
    extsh.  r0, r4
    ble-    branch_0x800a5f3c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800a5f3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800a5f54
set_f___Q29JGeometry8TVec3_f_Ffff_800a5f54: # 0x800a5f54
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl theNerve__12TNerveBWRollFv
theNerve__12TNerveBWRollFv: # 0x800a5f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6bc0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a5fb4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bbc(r13)
    addi    r0, r3, 0x6104
    lis     r4, 0x800a
    stw     r0, -0x6bbc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15a0
    addi    r4, r4, 0x5ef8
    subi    r3, r13, 0x6bbc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc0(r13)
branch_0x800a5fb4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6bbc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__19TNerveBWGraphWanderCFP24TSpineBase_10TLiveActor_
execute__19TNerveBWGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x800a5fc8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x250(sp)
    stfd    f31, 0x248(sp)
    stmw    r27, 0x234(sp)
    mr      r30, r4
    addi    r29, r3, 0x1570
    lwz     r0, 0x20(r4)
    lis     r4, 0x803b
    lwz     r31, 0x0(r30)
    addi    r28, r4, 0x5ed0
    cmpwi   r0, 0x0
    bne-    branch_0x800a619c
    li      r0, 0x0
    stw     r0, 0x16c(r31)
    li      r4, 0x4
    lwz     r3, 0x74(r31)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800a6178
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800a6178
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800a60cc
    lwz     r27, 0x150(r31)
    lwz     r3, 0x64(r27)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x5
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r27)
    cmplw   r0, r3
    beq-    branch_0x800a6074
    stw     r0, 0x58(r27)
    stw     r3, 0x54(r27)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r27)
branch_0x800a6074:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    addi    r3, r31, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x22c(sp)
    lfs     f2, -0x64c0(rtoc)
    stw     r0, 0x228(sp)
    lfd     f0, 0x228(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r31)
    lwz     r4, 0x4c(r28)
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800a6158

branch_0x800a60cc:
    lwz     r27, 0x150(r31)
    lwz     r3, 0x64(r27)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x4
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r27)
    cmplw   r0, r3
    beq-    branch_0x800a6104
    stw     r0, 0x58(r27)
    stw     r3, 0x54(r27)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r27)
branch_0x800a6104:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    addi    r3, r31, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x22c(sp)
    lfs     f2, -0x64c0(rtoc)
    stw     r0, 0x228(sp)
    lfd     f0, 0x228(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r31)
    lwz     r4, 0x48(r28)
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800a6158:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x64d0(rtoc)
    mr      r27, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r27)
branch_0x800a6178:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x10(r3)
    stfs    f0, 0xc(r3)
branch_0x800a619c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800a6280
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6280
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800a6280
    lwz     r27, 0x150(r31)
    lwz     r3, 0x64(r27)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x5
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r27)
    cmplw   r0, r3
    beq-    branch_0x800a620c
    stw     r0, 0x58(r27)
    stw     r3, 0x54(r27)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r27)
branch_0x800a620c:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    addi    r3, r31, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x22c(sp)
    lfs     f2, -0x64c0(rtoc)
    stw     r0, 0x228(sp)
    lfd     f0, 0x228(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r31)
    lwz     r4, 0x4c(r28)
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x64d0(rtoc)
    mr      r28, r3
    stfs    f0, 0x10(r3)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r28)
branch_0x800a6280:
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800a6508
    lwz     r3, 0x158(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800a62a4
    li      r0, 0x1
    b       branch_0x800a62a8

branch_0x800a62a4:
    li      r0, 0x0
branch_0x800a62a8:
    cmpwi   r0, 0x0
    beq-    branch_0x800a6508
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x15c(r31)
    lfs     f0, 0x160(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x164(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x158(r3)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a62f8
    li      r0, 0x0
    b       branch_0x800a62fc

branch_0x800a62f8:
    li      r0, 0x1
branch_0x800a62fc:
    cmpwi   r0, 0x0
    beq-    branch_0x800a6508
    lwz     r3, 0x124(r31)
    addi    r4, sp, 0x20c
    lwz     r27, 0x0(r3)
    lwz     r28, 0x8(r3)
    lwz     r3, 0x0(r27)
    slwi    r0, r28, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f1, 0x20c(sp)
    addi    r3, sp, 0x20c
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x20c(sp)
    lfs     f1, 0x210(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x210(sp)
    lfs     f1, 0x214(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x214(sp)
    bl      PSVECMag
    lfs     f0, -0x649c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a63f0
    lwz     r0, 0x10(r27)
    cmpw    r28, r0
    bne-    branch_0x800a63f0
    lbz     r0, -0x6b98(r13)
    extsb.  r0, r0
    bne-    branch_0x800a63b4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b94(r13)
    addi    r0, r3, 0x60b4
    lis     r3, 0x800a
    stw     r0, -0x6b94(r13)
    addi    r4, r3, 0x51b8
    subi    r3, r13, 0x6b94
    addi    r5, r29, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b98(r13)
branch_0x800a63b4:
    subi    r4, r13, 0x6b94
    cmplwi  r4, 0x0
    beq-    branch_0x800a63e8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a63e8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a63e8:
    li      r3, 0x1
    b       branch_0x800a699c

branch_0x800a63f0:
    addi    r3, sp, 0x20c
    bl      PSVECMag
    lfs     f0, -0x649c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a649c
    lwz     r3, 0x124(r31)
    addi    r6, sp, 0x1c8
    lwz     r10, -0x60b4(r13)
    addi    r7, r31, 0x10
    lwz     r27, 0x8(r3)
    lwz     r5, 0x4(r3)
    li      r8, -0x1
    lwz     r3, 0x0(r3)
    mr      r4, r27
    lwz     r9, 0x0(r10)
    lwz     r0, 0x4(r10)
    stw     r9, 0x1c8(sp)
    stw     r0, 0x1cc(sp)
    lwz     r0, 0x8(r10)
    stw     r0, 0x1d0(sp)
    lfs     f1, 0x1c8(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c8(sp)
    lfs     f1, 0x1cc(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1cc(sp)
    lfs     f1, 0x1d0(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1d0(sp)
    bl      getAimToDirNextIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x124(r31)
    stw     r3, 0x8(r4)
    mr      r3, r31
    lwz     r4, 0x124(r31)
    stw     r27, 0x4(r4)
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r31)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x12c(r31)
branch_0x800a649c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1bc(r3)
    lis     r4, 0x4330
    lbz     r5, 0x13c(r31)
    mr      r3, r31
    stw     r0, 0x224(sp)
    lfd     f4, -0x6478(rtoc)
    stw     r5, 0x22c(sp)
    lfs     f5, 0x140(r31)
    stw     r4, 0x228(sp)
    lfs     f2, 0x144(r31)
    stw     r4, 0x220(sp)
    lfd     f1, 0x228(sp)
    lfd     f0, 0x220(sp)
    fsubs   f3, f1, f4
    lfs     f1, -0x64c8(rtoc)
    fsubs   f0, f0, f4
    fdivs   f0, f3, f0
    fmuls   f0, f0, f5
    fmuls   f1, f1, f0
    bl      slideToCurPathNode__11TBossWanwanFff
    li      r3, 0x0
    b       branch_0x800a699c

branch_0x800a6508:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x800a6798
    mr      r3, r31
    bl      jumpToNextGraphNode__11TSpineEnemyFv
    cmpwi   r3, 0x0
    blt-    branch_0x800a6620
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a6574
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r3, 0x800a
    stw     r0, -0x6bc4(r13)
    addi    r4, r3, 0x429c
    subi    r3, r13, 0x6bc4
    addi    r5, r29, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a6574:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a65a8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a65a8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a65a8:
    lbz     r0, -0x6bb0(r13)
    extsb.  r0, r0
    bne-    branch_0x800a65e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bac(r13)
    addi    r0, r3, 0x60e4
    lis     r3, 0x800a
    stw     r0, -0x6bac(r13)
    addi    r4, r3, 0x5a20
    subi    r3, r13, 0x6bac
    addi    r5, r29, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bb0(r13)
branch_0x800a65e8:
    subi    r4, r13, 0x6bac
    cmplwi  r4, 0x0
    beq-    branch_0x800a6790
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a6790
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
    b       branch_0x800a6790

branch_0x800a6620:
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a6660
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r3, 0x800a
    stw     r0, -0x6bc4(r13)
    addi    r4, r3, 0x429c
    subi    r3, r13, 0x6bc4
    addi    r5, r29, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a6660:
    subi    r4, r13, 0x6bc4
    cmplwi  r4, 0x0
    beq-    branch_0x800a6694
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800a6694
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800a6694:
    lwz     r3, 0x124(r31)
    lwz     r29, 0x8(r3)
    lwz     r28, 0x4(r3)
    cmpwi   r29, 0x0
    lwz     r30, 0x0(r3)
    blt-    branch_0x800a66fc
    lwz     r3, 0x0(r30)
    slwi    r0, r29, 4
    lwzx    r3, r3, r0
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x2
    blt-    branch_0x800a66fc
    lwz     r3, -0x6048(r13)
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x3840
    blt-    branch_0x800a66fc
    lwz     r0, 0x198(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800a66f0
    lwz     r3, 0x74(r3)
    li      r4, 0x1c
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800a66f0:
    lwz     r0, 0x198(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x198(r31)
branch_0x800a66fc:
    lfs     f1, -0x6498(rtoc)
    addi    r3, sp, 0x1b0
    lfs     f0, 0x34(r31)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r6, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    lfs     f4, -0x64c4(rtoc)
    fctiwz  f0, f0
    lfs     f2, -0x64d0(rtoc)
    stfd    f0, 0x220(sp)
    lwz     r5, 0x224(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800a5f54
    lfs     f1, -0x64d4(rtoc)
    addi    r6, sp, 0x1b0
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r7, r31, 0x10
    li      r8, -0x1
    bl      getEscapeDirLimited__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fUl
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      moveTo__12TGraphTracerFi
    mr      r3, r31
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r31)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x12c(r31)
branch_0x800a6790:
    li      r3, 0x1
    b       branch_0x800a699c

branch_0x800a6798:
    li      r27, 0x0
    stw     r27, 0x16c(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r5, 0x13c(r31)
    lis     r4, 0x4330
    lbz     r0, 0x1bc(r3)
    stw     r5, 0x224(sp)
    lwz     r3, 0x158(r31)
    stw     r0, 0x22c(sp)
    lwz     r0, 0x68(r3)
    stw     r4, 0x220(sp)
    lfd     f2, -0x6478(rtoc)
    cmplwi  r0, 0x0
    stw     r4, 0x228(sp)
    lfd     f1, 0x220(sp)
    lfd     f0, 0x228(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f31, f1, f0
    beq-    branch_0x800a67fc
    li      r27, 0x1
branch_0x800a67fc:
    cmpwi   r27, 0x0
    beq-    branch_0x800a6980
    lwz     r5, -0x60d8(r13)
    lis     r4, 0x4330
    lfd     f1, -0x64b8(rtoc)
    addi    r3, sp, 0x1dc
    lha     r0, 0x90(r5)
    lfs     f3, -0x6494(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f4, -0x6498(rtoc)
    stw     r0, 0x224(sp)
    lwz     r0, -0x5eac(r13)
    stw     r4, 0x220(sp)
    lwz     r6, -0x5ea4(r13)
    lfd     f0, 0x220(sp)
    lwz     r4, -0x5ea8(r13)
    fsubs   f0, f0, f1
    lfs     f5, -0x64c4(rtoc)
    lfs     f2, -0x64d0(rtoc)
    fmuls   f0, f3, f0
    fmuls   f0, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x228(sp)
    lwz     r5, 0x22c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f5, f1
    fmuls   f1, f5, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800a5f54
    lwz     r0, 0x1dc(sp)
    addi    r3, sp, 0x1f0
    lwz     r5, -0x60d8(r13)
    mr      r4, r3
    stw     r0, 0x1fc(sp)
    lwz     r6, 0x1e0(sp)
    addi    r7, r5, 0x10
    lwz     r0, 0x1e4(sp)
    stw     r6, 0x200(sp)
    stw     r0, 0x204(sp)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r5, 0x1f0(sp)
    stw     r0, 0x1f4(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1f8(sp)
    lfs     f1, 0x1f0(sp)
    lfs     f0, 0x0(r7)
    fsubs   f0, f1, f0
    stfs    f0, 0x1f0(sp)
    lfs     f1, 0x1f4(sp)
    lfs     f0, 0x4(r7)
    fsubs   f0, f1, f0
    stfs    f0, 0x1f4(sp)
    lfs     f1, 0x1f8(sp)
    lfs     f0, 0x8(r7)
    fsubs   f0, f1, f0
    stfs    f0, 0x1f8(sp)
    bl      PSVECNormalize
    lwz     r3, -0x60d8(r13)
    lfs     f1, 0x1f4(sp)
    lfs     f0, 0x200(sp)
    lfs     f4, 0x8c(r3)
    lfs     f3, -0x6490(rtoc)
    fmuls   f0, f1, f0
    lfs     f2, 0x1f0(sp)
    lfs     f1, 0x1fc(sp)
    fmuls   f5, f4, f3
    lfd     f4, -0x6488(rtoc)
    fmadds  f0, f2, f1, f0
    lfs     f3, 0x1f8(sp)
    lfs     f2, 0x204(sp)
    fmul    f5, f5, f4
    lfs     f1, -0x64c4(rtoc)
    fmadds  f2, f3, f2, f0
    lfs     f0, -0x64d0(rtoc)
    frsp    f5, f5
    fneg    f2, f2
    fmuls   f5, f5, f2
    fsubs   f1, f1, f5
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a6954
    fmr     f1, f0
    b       branch_0x800a6964

branch_0x800a6954:
    lfs     f0, -0x6480(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800a6964
    fmr     f1, f0
branch_0x800a6964:
    lfs     f0, 0x140(r31)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmuls   f0, f31, f0
    fmuls   f1, f1, f0
    bl      slideToCurPathNode__11TBossWanwanFff
    b       branch_0x800a6998

branch_0x800a6980:
    lfs     f1, 0x140(r31)
    mr      r3, r31
    lfs     f0, -0x647c(rtoc)
    lfs     f2, 0x144(r31)
    fmadds  f1, f31, f1, f0
    bl      slideToCurPathNode__11TBossWanwanFff
branch_0x800a6998:
    li      r3, 0x0
branch_0x800a699c:
    lmw     r27, 0x234(sp)
    lwz     r0, 0x254(sp)
    lfd     f31, 0x248(sp)
    addi    sp, sp, 0x250
    mtlr    r0
    blr


.globl theNerve__19TNerveBWGraphWanderFv
theNerve__19TNerveBWGraphWanderFv: # 0x800a69b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a6a04
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r4, 0x800a
    stw     r0, -0x6bc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1594
    addi    r4, r4, 0x429c
    subi    r3, r13, 0x6bc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a6a04:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6bc4
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__18TBossWanwanManagerFR20JSUMemoryInputStream
load__18TBossWanwanManagerFR20JSUMemoryInputStream: # 0x800a6a18
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x2a58
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    li      r3, 0x1fc
    stw     r28, 0x10(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800a6a60
    addi    r3, r28, 0x0
    addi    r4, r31, 0x254
    bl      __ct__9TBWParamsFPCc
branch_0x800a6a60:
    stw     r28, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xad
    lbz     r0, 0xad(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6aa0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x26c
    li      r5, 0xad
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6aa0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xae
    lbz     r0, 0xae(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6ad0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x298
    li      r5, 0xae
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6ad0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xb0
    lbz     r0, 0xb0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6b00
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2c4
    li      r5, 0xb0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6b00:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xaf
    lbz     r0, 0xaf(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6b30
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2ec
    li      r5, 0xaf
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6b30:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xb1
    lbz     r0, 0xb1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6b60
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x314
    li      r5, 0xb1
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6b60:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1ee
    lbz     r0, 0x1ee(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6b90
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x33c
    li      r5, 0x1ee
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6b90:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x167
    lbz     r0, 0x167(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6bc0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x364
    li      r5, 0x167
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6bc0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x168
    lbz     r0, 0x168(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800a6bf0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x38c
    li      r5, 0x168
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800a6bf0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl createModelData__18TBossWanwanManagerFv
createModelData__18TBossWanwanManagerFv: # 0x800a6c10
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x288c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__18TBossWanwanManagerFv
createEnemyInstance__18TBossWanwanManagerFv: # 0x800a6c44
    mflr    r0
    li      r3, 0x1b8
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800a6c74
    lis     r3, 0x8038
    subi    r4, r3, 0x26a8
    addi    r3, r31, 0x0
    bl      __ct__11TBossWanwanFPCc
branch_0x800a6c74:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__18TBossWanwanManagerFPCc
__ct__18TBossWanwanManagerFPCc: # 0x800a6c8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x6124
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__11TBossWanwanFUlPQ26JDrama9TGraphics
perform__11TBossWanwanFUlPQ26JDrama9TGraphics: # 0x800a6cc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stfd    f31, 0x160(sp)
    stmw    r26, 0x148(sp)
    mr      r31, r3
    addi    r30, r4, 0x0
    addi    r28, r5, 0x0
    lbz     r0, 0x18c(r3)
    lis     r3, 0x803f
    addi    r29, r3, 0x1570
    extsb.  r0, r0
    beq-    branch_0x800a6e04
    lwz     r3, 0x170(r31)
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x800a6d70
    lfs     f0, 0x178(r31)
    lwz     r3, 0x150(r31)
    fneg    f0, f0
    lfs     f1, 0x50(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x50(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a6d60
    stfs    f0, 0x50(r3)
    b       branch_0x800a6d70

branch_0x800a6d60:
    lfs     f0, -0x64c4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800a6d70
    stfs    f0, 0x50(r3)
branch_0x800a6d70:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x800a7514
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800a7514
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f2, -0x64cc(rtoc)
    stw     r4, 0x144(sp)
    lfs     f3, 0x10(r3)
    stw     r0, 0x140(sp)
    lfd     f0, 0x140(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fcmpo   cr0, f3, f0
    ble-    branch_0x800a7514
    lwz     r3, 0x10(r31)
    mr      r7, r31
    lwz     r0, 0x14(r31)
    addi    r5, r31, 0x1a4
    li      r4, 0x168
    stw     r3, 0x1a4(r31)
    li      r6, 0x1
    stw     r0, 0x1a8(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1ac(r31)
    lfs     f1, 0x1a8(r31)
    lfs     f0, -0x64ac(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1a8(r31)
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800a7514

branch_0x800a6e04:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800a6edc
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    addi    r27, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r5, 0x13c(r31)
    lis     r4, 0x4330
    lbz     r0, 0x1bc(r3)
    stw     r5, 0x144(sp)
    lha     r3, 0x8(r27)
    stw     r0, 0x13c(sp)
    subi    r0, r3, 0x1
    lfd     f3, -0x6478(rtoc)
    stw     r4, 0x140(sp)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x64b8(rtoc)
    stw     r4, 0x138(sp)
    lfd     f2, 0x140(sp)
    lfd     f0, 0x138(sp)
    fsubs   f2, f2, f3
    stw     r0, 0x134(sp)
    fsubs   f0, f0, f3
    stw     r4, 0x130(sp)
    fdivs   f31, f2, f0
    lfd     f0, 0x130(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f31, f0
    stfs    f0, 0x10(r27)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0xc(r27)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800a6ec4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x13c(r31)
    lbz     r0, 0x1bc(r3)
    cmplw   r4, r0
    bne-    branch_0x800a6ed4
branch_0x800a6ec4:
    lwz     r3, 0x154(r31)
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    stfs    f31, 0x70(r3)
branch_0x800a6ed4:
    mr      r3, r31
    bl      emitEffects__11TBossWanwanFv
branch_0x800a6edc:
    lwz     r3, 0x170(r31)
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi. r27, r30, 31
    beq-    branch_0x800a6f28
    lwz     r4, 0x170(r31)
    lfs     f1, -0x64ac(rtoc)
    lfs     f2, 0x14(r4)
    lwz     r3, 0x174(r31)
    lfs     f3, 0x18(r4)
    fsubs   f1, f2, f1
    lfs     f0, 0x10(r4)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f3, 0x8(r3)
branch_0x800a6f28:
    lwz     r3, 0x174(r31)
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    cmplwi  r27, 0x0
    beq-    branch_0x800a6fb0
    lbz     r0, 0x194(r31)
    extsb.  r0, r0
    bne-    branch_0x800a6fb0
    lwz     r3, 0x19c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x800a6f78
    li      r0, 0x1
    stw     r0, 0x19c(r31)
branch_0x800a6f78:
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x258
    ble-    branch_0x800a6fb0
    lwz     r0, 0x198(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x800a6fa4
    lwz     r3, -0x6048(r13)
    li      r4, 0x1a
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800a6fa4:
    lwz     r0, 0x198(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x198(r31)
branch_0x800a6fb0:
    cmplwi  r27, 0x0
    beq-    branch_0x800a6ffc
    lbz     r0, 0x1a0(r31)
    extsb.  r0, r0
    bne-    branch_0x800a6ffc
    lwz     r3, -0x6048(r13)
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x7080
    blt-    branch_0x800a6ffc
    lwz     r0, 0x198(r31)
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x800a6ff0
    lwz     r3, 0x74(r3)
    li      r4, 0x1d
    li      r5, 0x1
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800a6ff0:
    lwz     r0, 0x198(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x198(r31)
branch_0x800a6ffc:
    cmplwi  r27, 0x0
    beq-    branch_0x800a7364
    lbz     r0, -0x6b90(r13)
    extsb.  r0, r0
    bne-    branch_0x800a7044
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b8c(r13)
    addi    r0, r3, 0x60a4
    lis     r3, 0x800a
    stw     r0, -0x6b8c(r13)
    addi    r4, r3, 0x4d60
    subi    r3, r13, 0x6b8c
    addi    r5, r29, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b90(r13)
branch_0x800a7044:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6b8c
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800a705c
    b       branch_0x800a7060

branch_0x800a705c:
    lwz     r3, 0x1c(r4)
branch_0x800a7060:
    cmplw   r3, r0
    beq-    branch_0x800a7364
    lbz     r0, -0x6b98(r13)
    extsb.  r0, r0
    bne-    branch_0x800a70a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b94(r13)
    addi    r0, r3, 0x60b4
    lis     r3, 0x800a
    stw     r0, -0x6b94(r13)
    addi    r4, r3, 0x51b8
    subi    r3, r13, 0x6b94
    addi    r5, r29, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b98(r13)
branch_0x800a70a8:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6b94
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800a70c0
    b       branch_0x800a70c4

branch_0x800a70c0:
    lwz     r3, 0x1c(r4)
branch_0x800a70c4:
    cmplw   r3, r0
    beq-    branch_0x800a7364
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800a71ac
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800a71b4
    lbz     r0, 0x194(r31)
    extsb.  r0, r0
    bne-    branch_0x800a71b4
    lwz     r3, 0x184(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x184(r31)
    lwz     r0, 0x184(r31)
    cmpwi   r0, 0x258
    ble-    branch_0x800a71b4
    lbz     r0, -0x6b80(r13)
    extsb.  r0, r0
    bne-    branch_0x800a7148
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b7c(r13)
    addi    r0, r3, 0x6084
    lis     r3, 0x800a
    stw     r0, -0x6b7c(r13)
    addi    r4, r3, 0x4558
    subi    r3, r13, 0x6b7c
    addi    r5, r29, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b80(r13)
branch_0x800a7148:
    subi    r5, r13, 0x6b7c
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800a71a0
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800a7194
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x800a7194
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x800a7194:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x800a71a0:
    li      r0, 0x0
    stw     r0, 0x184(r31)
    b       branch_0x800a71b4

branch_0x800a71ac:
    li      r0, 0x0
    stw     r0, 0x184(r31)
branch_0x800a71b4:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800a7304
    lwz     r3, 0x8c(r31)
    lwz     r26, 0x14(r3)
    cmplwi  r26, 0x0
    beq-    branch_0x800a71d4
    b       branch_0x800a71d8

branch_0x800a71d4:
    lwz     r26, 0x1c(r3)
branch_0x800a71d8:
    lbz     r0, -0x6bb8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a7218
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bb4(r13)
    addi    r0, r3, 0x60f4
    lis     r3, 0x800a
    stw     r0, -0x6bb4(r13)
    addi    r4, r3, 0x5d5c
    subi    r3, r13, 0x6bb4
    addi    r5, r29, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bb8(r13)
branch_0x800a7218:
    subi    r0, r13, 0x6bb4
    cmplw   r26, r0
    beq-    branch_0x800a7304
    lwz     r3, 0x180(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x180(r31)
    lwz     r0, 0x180(r31)
    cmpwi   r0, 0x960
    ble-    branch_0x800a7364
    lwz     r3, 0x8c(r31)
    lwz     r26, 0x14(r3)
    cmplwi  r26, 0x0
    beq-    branch_0x800a7250
    b       branch_0x800a7254

branch_0x800a7250:
    lwz     r26, 0x1c(r3)
branch_0x800a7254:
    lbz     r0, -0x6bb8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a7294
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bb4(r13)
    addi    r0, r3, 0x60f4
    lis     r3, 0x800a
    stw     r0, -0x6bb4(r13)
    addi    r4, r3, 0x5d5c
    subi    r3, r13, 0x6bb4
    addi    r5, r29, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bb8(r13)
branch_0x800a7294:
    subi    r3, r13, 0x6bb4
    cmplw   r26, r3
    beq-    branch_0x800a7364
    lbz     r0, -0x6bb8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a72dc
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6bb4(r13)
    addi    r0, r4, 0x60f4
    lis     r4, 0x800a
    stw     r0, -0x6bb4(r13)
    addi    r4, r4, 0x5d5c
    addi    r5, r29, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bb8(r13)
branch_0x800a72dc:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6bb4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800a72f4
    stw     r0, 0x1c(r4)
branch_0x800a72f4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x800a7364

branch_0x800a7304:
    lwz     r4, -0x6048(r13)
    lis     r3, 0x6666
    addi    r0, r3, 0x6667
    lwz     r4, 0x58(r4)
    mulhw   r0, r0, r4
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x14
    subf.   r0, r0, r4
    bne-    branch_0x800a735c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x13c(r31)
    lbz     r0, 0x1bc(r3)
    cmplw   r4, r0
    bge-    branch_0x800a735c
    addi    r0, r4, 0x1
    stb     r0, 0x13c(r31)
branch_0x800a735c:
    li      r0, 0x0
    stw     r0, 0x180(r31)
branch_0x800a7364:
    cmplwi  r27, 0x0
    beq-    branch_0x800a749c
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a73ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r3, 0x800a
    stw     r0, -0x6bc4(r13)
    addi    r4, r3, 0x429c
    subi    r3, r13, 0x6bc4
    addi    r5, r29, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a73ac:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6bc4
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800a73c4
    b       branch_0x800a73c8

branch_0x800a73c4:
    lwz     r3, 0x1c(r4)
branch_0x800a73c8:
    cmplw   r3, r0
    bne-    branch_0x800a749c
    lwz     r3, 0x158(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800a73e8
    li      r0, 0x1
    b       branch_0x800a73ec

branch_0x800a73e8:
    li      r0, 0x0
branch_0x800a73ec:
    cmpwi   r0, 0x0
    beq-    branch_0x800a749c
    lfs     f1, 0x15c(r31)
    lfs     f0, 0x160(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x164(r31)
    fmuls   f1, f0, f0
    lfs     f0, -0x64d0(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800a7428
    b       branch_0x800a744c

branch_0x800a7428:
    frsqrte f3, f4
    lfs     f2, -0x64cc(rtoc)
    lfs     f0, -0x64c8(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800a744c:
    lwz     r5, 0x154(r31)
    fmr     f31, f4
    lwz     r3, -0x6044(r13)
    li      r4, 0x20d2
    lwz     r5, 0x14(r5)
    lwz     r5, 0x4(r5)
    addi    r26, r5, 0x114
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a749c
    fmr     f1, f31
    addi    r4, r26, 0x0
    li      r3, 0x20d2
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800a749c:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x154(r31)
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x158(r31)
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    cmplwi  r27, 0x0
    beq-    branch_0x800a7514
    lfs     f0, 0x178(r31)
    lwz     r3, 0x150(r31)
    fneg    f0, f0
    lfs     f1, 0x50(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x50(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a7504
    stfs    f0, 0x50(r3)
    b       branch_0x800a7514

branch_0x800a7504:
    lfs     f0, -0x64c4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800a7514
    stfs    f0, 0x50(r3)
branch_0x800a7514:
    lmw     r26, 0x148(sp)
    lwz     r0, 0x16c(sp)
    lfd     f31, 0x160(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr


.globl emitEffects__11TBossWanwanFv
emitEffects__11TBossWanwanFv: # 0x800a752c
    mflr    r0
    li      r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    li      r30, 0x0
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800a7570
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a758c
branch_0x800a7570:
    lwz     r3, 0x74(r31)
    lfs     f1, -0x6470(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a75b8
    li      r30, 0x1
    b       branch_0x800a75b8

branch_0x800a758c:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a75b8
    lwz     r3, 0x74(r31)
    lfs     f1, -0x646c(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a75b8
    li      r30, 0x1
branch_0x800a75b8:
    cmpwi   r30, 0x0
    beq-    branch_0x800a76f0
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xad
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xae
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800a7678
    lwz     r5, 0x154(r31)
    li      r4, 0x2975
    lwz     r3, -0x6044(r13)
    lwz     r5, 0x14(r5)
    lwz     r5, 0x4(r5)
    addi    r30, r5, 0xc
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a763c
    addi    r4, r30, 0x0
    li      r3, 0x2975
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a763c:
    lwz     r5, 0x158(r31)
    li      r4, 0x2976
    lwz     r3, -0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a76f0
    addi    r4, r30, 0x0
    li      r3, 0x2976
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800a76f0

branch_0x800a7678:
    lwz     r5, 0x154(r31)
    li      r4, 0x2973
    lwz     r3, -0x6044(r13)
    lwz     r5, 0x14(r5)
    lwz     r5, 0x4(r5)
    addi    r30, r5, 0xc
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a76b8
    addi    r4, r30, 0x0
    li      r3, 0x2973
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a76b8:
    lwz     r5, 0x158(r31)
    li      r4, 0x2974
    lwz     r3, -0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a76f0
    addi    r4, r30, 0x0
    li      r3, 0x2974
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a76f0:
    lwz     r3, 0x74(r31)
    li      r30, 0x0
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a7724
    lwz     r3, 0x74(r31)
    lfs     f1, -0x6468(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a77a8
    li      r30, 0x1
    b       branch_0x800a77a8

branch_0x800a7724:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800a774c
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a777c
branch_0x800a774c:
    lwz     r3, 0x74(r31)
    lfs     f1, -0x6464(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    bne-    branch_0x800a7774
    lwz     r3, 0x74(r31)
    lfs     f1, -0x6460(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a77a8
branch_0x800a7774:
    li      r30, 0x1
    b       branch_0x800a77a8

branch_0x800a777c:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a77a8
    lwz     r3, 0x74(r31)
    lfs     f1, -0x645c(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a77a8
    li      r30, 0x1
branch_0x800a77a8:
    cmpwi   r30, 0x0
    beq-    branch_0x800a77d4
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0xaf
    addi    r5, r5, 0x30
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800a77d4:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800a77fc
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a781c
branch_0x800a77fc:
    lwz     r3, 0x74(r31)
    lfs     f1, -0x64c0(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a781c
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      shakeCamera__11TBossWanwanFi
branch_0x800a781c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a78f0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6458(rtoc)
    mr      r30, r3
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x800a7864
    mr      r3, r30
    lfs     f1, -0x6454(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a78a0
branch_0x800a7864:
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      shakeCamera__11TBossWanwanFi
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xad
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xae
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800a78a0:
    mr      r3, r30
    lfs     f1, -0x6450(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a78f0
    addi    r3, r31, 0x0
    li      r4, 0x17
    bl      shakeCamera__11TBossWanwanFi
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xad
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xae
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800a78f0:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a7924
    lwz     r3, 0x74(r31)
    lfs     f1, -0x64b0(rtoc)
    bl      checkBckPass__6MActorFf
    cmpwi   r3, 0x0
    beq-    branch_0x800a7924
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      shakeCamera__11TBossWanwanFi
branch_0x800a7924:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800a7954
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x1ee
    addi    r5, r5, 0x30
    li      r6, 0x3
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800a7954:
    lwz     r0, 0x190(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800a7998
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800a7998
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x167
    addi    r5, r5, 0x30
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    li      r0, 0x0
    stw     r0, 0x190(r31)
branch_0x800a7998:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl control__11TBossWanwanFv
control__11TBossWanwanFv: # 0x800a79b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    bl      control__10TLiveActorFv
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800a7a50
    lwz     r3, 0x158(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800a79f0
    li      r0, 0x1
    b       branch_0x800a79f4

branch_0x800a79f0:
    li      r0, 0x0
branch_0x800a79f4:
    cmpwi   r0, 0x0
    beq-    branch_0x800a7c54
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x15c(r31)
    lfs     f0, 0x160(r31)
    fmuls   f2, f1, f1
    lfs     f3, 0x164(r31)
    fmuls   f1, f0, f0
    lfs     f0, 0x158(r3)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a7a44
    li      r0, 0x0
    b       branch_0x800a7a48

branch_0x800a7a44:
    li      r0, 0x1
branch_0x800a7a48:
    cmpwi   r0, 0x0
    beq-    branch_0x800a7c54
branch_0x800a7a50:
    lfs     f1, 0x94(r31)
    lfs     f0, 0x15c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x160(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x164(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x78(sp)
    lwz     r3, 0x154(r31)
    lfs     f1, 0x70(sp)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x4(r3)
    lfsu    f0, 0x90(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f2, -0x64d0(rtoc)
    lfs     f1, 0x78(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800a7b04
    lfs     f0, 0x70(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800a7afc
    lfs     f31, -0x644c(rtoc)
    b       branch_0x800a7b80

branch_0x800a7afc:
    lfs     f31, -0x6448(rtoc)
    b       branch_0x800a7b80

branch_0x800a7b04:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800a7b44
    lfs     f2, 0x70(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6494(rtoc)
    stw     r0, 0x84(sp)
    lis     r0, 0x4330
    stw     r0, 0x80(sp)
    lfd     f1, 0x80(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f0, f1
    b       branch_0x800a7b80

branch_0x800a7b44:
    fneg    f1, f1
    lfs     f2, 0x70(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6494(rtoc)
    stw     r0, 0x84(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6444(rtoc)
    stw     r0, 0x80(sp)
    lfd     f2, 0x80(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f31, f0, f1
branch_0x800a7b80:
    lfs     f0, -0x6440(rtoc)
    b       branch_0x800a7b8c

branch_0x800a7b88:
    fsubs   f31, f31, f0
branch_0x800a7b8c:
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    beq+    branch_0x800a7b88
    lfs     f1, -0x6440(rtoc)
    lfs     f0, -0x64d0(rtoc)
    b       branch_0x800a7ba8

branch_0x800a7ba4:
    fadds   f31, f31, f1
branch_0x800a7ba8:
    fcmpo   cr0, f31, f0
    blt+    branch_0x800a7ba4
    lfs     f0, -0x6444(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_800a7c84
    fsubs   f2, f31, f1
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800a7bf8
    lfs     f1, -0x645c(rtoc)
    lfs     f0, 0x144(r31)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800a7bec
    b       branch_0x800a7bf0

branch_0x800a7bec:
    fmr     f0, f2
branch_0x800a7bf0:
    fmr     f2, f0
    b       branch_0x800a7c18

branch_0x800a7bf8:
    lfs     f0, 0x144(r31)
    lfs     f1, -0x645c(rtoc)
    fneg    f0, f0
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800a7c14
    b       branch_0x800a7c18

branch_0x800a7c14:
    fmr     f2, f0
branch_0x800a7c18:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6440(rtoc)
    fadds   f2, f1, f2
    b       branch_0x800a7c2c

branch_0x800a7c28:
    fsubs   f2, f2, f0
branch_0x800a7c2c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800a7c28
    lfs     f1, -0x6440(rtoc)
    lfs     f0, -0x64d0(rtoc)
    b       branch_0x800a7c48

branch_0x800a7c44:
    fadds   f2, f2, f1
branch_0x800a7c48:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800a7c44
    stfs    f2, 0x34(r31)
branch_0x800a7c54:
    lfs     f0, -0x64d0(rtoc)
    mr      r3, r31
    stfs    f0, 0x164(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x15c(r31)
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl MsWrap_f___Ffff_800a7c84
MsWrap_f___Ffff_800a7c84: # 0x800a7c84
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800a7cc0
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0xa2698, 0x800a7c9c - 0x800a7c98
branch_0x800a7c9c:
    fsubs   f1, f1, f0
branch_0x800a7ca0:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800a7c9c
    b       branch_0x800a7cb4

branch_0x800a7cb0:
    fadds   f1, f1, f0
branch_0x800a7cb4:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800a7cb0
    blr

branch_0x800a7cc0:
    fsubs   f0, f3, f2
    b       branch_0x800a7ca0


.incbin "./baserom/code/Text_0x80005600.bin", 0xa26c8, 0x800a7ccc - 0x800a7cc8

.globl slideToCurPathNode__11TBossWanwanFff
slideToCurPathNode__11TBossWanwanFff: # 0x800a7ccc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    fmr     f30, f2
    stfd    f29, 0x78(sp)
    fmr     f29, f1
    stfd    f28, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r4, 0xf4(r3)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800a7d10
    addi    r5, r4, 0x10
    b       branch_0x800a7d14

branch_0x800a7d10:
    addi    r5, r3, 0x4
branch_0x800a7d14:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x50
    lwz     r0, 0x4(r5)
    stw     r4, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x8(r5)
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
    bl      PSVECMag
    lfs     f2, -0x64d0(rtoc)
    fmr     f31, f1
    lfs     f1, 0x58(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800a7d98
    lfs     f0, 0x50(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800a7d90
    lfs     f28, -0x644c(rtoc)
    b       branch_0x800a7e14

branch_0x800a7d90:
    lfs     f28, -0x6448(rtoc)
    b       branch_0x800a7e14

branch_0x800a7d98:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800a7dd8
    lfs     f2, 0x50(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6494(rtoc)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    stw     r0, 0x60(sp)
    lfd     f1, 0x60(sp)
    fsubs   f1, f1, f2
    fmuls   f28, f0, f1
    b       branch_0x800a7e14

branch_0x800a7dd8:
    fneg    f1, f1
    lfs     f2, 0x50(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6494(rtoc)
    stw     r0, 0x64(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6444(rtoc)
    stw     r0, 0x60(sp)
    lfd     f2, 0x60(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f28, f0, f1
branch_0x800a7e14:
    lfs     f0, -0x6440(rtoc)
    b       branch_0x800a7e20

branch_0x800a7e1c:
    fsubs   f28, f28, f0
branch_0x800a7e20:
    fcmpo   cr0, f28, f0
    cror    2, 1, 2
    beq+    branch_0x800a7e1c
    lfs     f1, -0x6440(rtoc)
    lfs     f0, -0x64d0(rtoc)
    b       branch_0x800a7e3c

branch_0x800a7e38:
    fadds   f28, f28, f1
branch_0x800a7e3c:
    fcmpo   cr0, f28, f0
    blt+    branch_0x800a7e38
    lfs     f0, -0x6444(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f28, f0
    fadds   f3, f0, f28
    bl      MsWrap_f___Ffff_800a7c84
    fsubs   f1, f28, f1
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800a7e7c
    fcmpo   cr0, f1, f30
    ble-    branch_0x800a7e74
    fmr     f1, f30
branch_0x800a7e74:
    fmr     f2, f1
    b       branch_0x800a7e94

branch_0x800a7e7c:
    fneg    f0, f30
    fcmpo   cr0, f1, f0
    ble-    branch_0x800a7e8c
    b       branch_0x800a7e90

branch_0x800a7e8c:
    fmr     f1, f0
branch_0x800a7e90:
    fmr     f2, f1
branch_0x800a7e94:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6440(rtoc)
    fadds   f2, f1, f2
    b       branch_0x800a7ea8

branch_0x800a7ea4:
    fsubs   f2, f2, f0
branch_0x800a7ea8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800a7ea4
    lfs     f1, -0x6440(rtoc)
    lfs     f0, -0x64d0(rtoc)
    b       branch_0x800a7ec4

branch_0x800a7ec0:
    fadds   f2, f2, f1
branch_0x800a7ec4:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800a7ec0
    stfs    f2, 0x34(r31)
    fcmpo   cr0, f31, f0
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x4c(sp)
    ble-    branch_0x800a7f18
    fdivs   f1, f29, f31
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
branch_0x800a7f18:
    lfs     f1, 0x44(sp)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl calcRootMatrix__11TBossWanwanFv
calcRootMatrix__11TBossWanwanFv: # 0x800a7f84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stfd    f29, 0x50(sp)
    stfd    f28, 0x48(sp)
    stfd    f27, 0x40(sp)
    stfd    f26, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    mr      r3, r31
    lfs     f1, -0x64ac(rtoc)
    lfs     f0, 0x14(r31)
    lfs     f26, 0x38(r31)
    fadds   f30, f1, f0
    lfs     f27, 0x34(r31)
    lfs     f28, 0x30(r31)
    lfs     f29, 0x18(r31)
    lfs     f31, 0x10(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x6498(rtoc)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x28(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0x20(sp)
    lwz     r4, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r5, 0x24(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    lfd     f27, 0x40(sp)
    lfd     f26, 0x38(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x68
    blr


.globl receiveMessage__11TBossWanwanFP9THitActorUl
receiveMessage__11TBossWanwanFP9THitActorUl: # 0x800a8068
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800a80a4
    li      r3, 0x0
    b       branch_0x800a829c

branch_0x800a80a4:
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x800a81d4
    lbz     r0, 0x18c(r29)
    extsb.  r0, r0
    beq-    branch_0x800a80c4
    li      r3, 0x1
    b       branch_0x800a829c

branch_0x800a80c4:
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lbz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x800a811c
    lwz     r3, -0x6044(r13)
    li      r4, 0x28d1
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a81ac
    addi    r4, r29, 0x10
    li      r3, 0x28d1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800a81ac

branch_0x800a811c:
    cmplwi  r0, 0x1
    bne-    branch_0x800a817c
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0xb0
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x30
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, -0x6044(r13)
    li      r4, 0x28c5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a81ac
    addi    r4, r29, 0x10
    li      r3, 0x28c5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800a81ac

branch_0x800a817c:
    lwz     r3, -0x6044(r13)
    li      r4, 0x28be
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a81ac
    addi    r4, r29, 0x10
    li      r3, 0x28be
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a81ac:
    lbz     r3, 0x13c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800a81c0
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r29)
branch_0x800a81c0:
    lwz     r4, 0x190(r29)
    li      r3, 0x1
    addi    r0, r4, 0x1
    stw     r0, 0x190(r29)
    b       branch_0x800a829c

branch_0x800a81d4:
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x800a81e8
    li      r0, 0x1
    b       branch_0x800a81ec

branch_0x800a81e8:
    li      r0, 0x0
branch_0x800a81ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x800a828c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x0
    li      r5, 0x1
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x13c(r29)
    lwz     r3, 0x190(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x190(r29)
    lbz     r3, 0x1a0(r29)
    extsb.  r0, r3
    bne-    branch_0x800a8238
    addi    r0, r3, 0x1
    stb     r0, 0x1a0(r29)
branch_0x800a8238:
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0xb0
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x30
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, -0x6044(r13)
    li      r4, 0x28c5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800a828c
    addi    r4, r29, 0x10
    li      r3, 0x28c5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800a828c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      receiveMessage__11TSpineEnemyFP9THitActorUl
branch_0x800a829c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl shakeCamera__11TBossWanwanFi
shakeCamera__11TBossWanwanFi: # 0x800a82b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800a8410
    lfs     f31, 0x134(r30)
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x800a8328
    frsqrte f3, f31
    lfd     f2, -0x6438(rtoc)
    lfd     f0, -0x6430(rtoc)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f31, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f31, f0
    frsp    f0, f0
    stfs    f0, 0x38(sp)
    lfs     f31, 0x38(sp)
branch_0x800a8328:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x1e4(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lfs     f29, 0x1f8(r3)
    mr      r3, r0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800a8378
    lfs     f4, -0x64c4(rtoc)
    b       branch_0x800a83c0

branch_0x800a8378:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r5, 0x13c(r30)
    lis     r4, 0x4330
    lbz     r0, 0x1bc(r3)
    stw     r5, 0x4c(sp)
    lfd     f2, -0x6478(rtoc)
    stw     r0, 0x44(sp)
    stw     r4, 0x48(sp)
    stw     r4, 0x40(sp)
    lfd     f1, 0x48(sp)
    lfd     f0, 0x40(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f4, f1, f0
branch_0x800a83c0:
    lfs     f2, -0x64c4(rtoc)
    lfs     f0, -0x64d0(rtoc)
    fsubs   f1, f2, f4
    fmuls   f1, f29, f1
    fmadds  f1, f30, f4, f1
    fsubs   f3, f1, f31
    fcmpo   cr0, f3, f0
    blt-    branch_0x800a8410
    fdivs   f1, f3, f1
    fcmpo   cr0, f1, f2
    ble-    branch_0x800a83f0
    fmr     f1, f2
branch_0x800a83f0:
    fmuls   f1, f1, f4
    lwz     r3, -0x7108(r13)
    mr      r4, r31
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, -0x60f0(r13)
    addi    r5, r30, 0x10
    li      r4, 0x8
    bl      start__9RumbleMgrFiP3Vec
branch_0x800a8410:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x70
    blr


.globl init__11TBossWanwanFP12TLiveManager
init__11TBossWanwanFP12TLiveManager: # 0x800a8434
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b8(sp)
    stmw    r24, 0x198(sp)
    mr      r31, r3
    subi    r29, r5, 0x2a58
    stw     r4, 0x70(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0x1570
    lwz     r3, 0x70(r31)
    addi    r4, r31, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a8488
    lwz     r4, 0x70(r31)
    addi    r3, r24, 0x0
    li      r5, 0x11
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800a8488:
    stw     r24, 0x78(r31)
    addi    r4, r29, 0x190
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    subi    r4, rtoc, 0x6428
    lwz     r3, -0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    addi    r24, r3, 0x0
    addi    r4, r30, 0x0
    bl      initGoalIndex__9TGraphWebFRC3Vec
    lwz     r3, 0x124(r31)
    stw     r24, 0x0(r3)
    lbz     r0, -0x6bc8(r13)
    extsb.  r0, r0
    bne-    branch_0x800a8500
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6bc4(r13)
    addi    r0, r3, 0x6114
    lis     r3, 0x800a
    stw     r0, -0x6bc4(r13)
    addi    r4, r3, 0x429c
    subi    r3, r13, 0x6bc4
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6bc8(r13)
branch_0x800a8500:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6bc4
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb8(r3)
    mr      r3, r31
    stfs    f0, 0x140(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xcc(r3)
    mr      r3, r31
    stfs    f0, 0x144(r31)
    lwz     r4, 0x18(r30)
    lwz     r0, 0x1c(r30)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x20(r30)
    stw     r0, 0x18(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a85a8
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    addi    r6, r29, 0x3c0
    li      r5, 0xf
    bl      __ct__8TBWLeashFP11TBossWanwaniPCc
branch_0x800a85a8:
    stw     r24, 0x154(r31)
    li      r3, 0xa8
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800a8758
    stw     r27, 0x17c(sp)
    mr      r3, r27
    addi    r4, r29, 0x3d0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r27)
    li      r26, 0x0
    addi    r3, r3, 0x6384
    stw     r26, 0x68(r27)
    addi    r0, r3, 0x24
    stw     r26, 0x6c(r27)
    lwz     r28, 0x17c(sp)
    stw     r3, 0x0(r28)
    addi    r3, r28, 0x74
    stw     r0, 0x20(r28)
    stw     r31, 0x70(r28)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, r28, 0x74
    stw     r26, 0xa4(r28)
    bl      PSMTXIdentity
    lwz     r3, 0x70(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r26, r3, 0xf4
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r25, r3, 0x108
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r24, r3, 0xf4
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lis     r4, 0x800
    lfs     f1, 0x108(r3)
    lfs     f2, 0x0(r24)
    mr      r3, r28
    lfs     f3, 0x0(r25)
    addi    r4, r4, 0xd
    lfs     f4, 0x0(r26)
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r29, 0x3e4
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x3e4
    mtlr    r12
    blrl
    addi    r26, r3, 0x10
    addi    r4, r26, 0x0
    addi    r3, sp, 0xc0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xc0(sp)
    addi    r4, sp, 0xbc
    addi    r3, sp, 0x10c
    stw     r0, 0xbc(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x10c(sp)
    addi    r5, sp, 0xd8
    addi    r4, r26, 0x0
    stw     r0, 0x108(sp)
    addi    r3, sp, 0xd4
    addi    r6, sp, 0x17c
    lwz     r0, 0x108(sp)
    stw     r0, 0xd8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0xd4(sp)
    addi    r3, sp, 0x104
    addi    r4, sp, 0xd0
    stw     r0, 0xd0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x64(r28)
    addi    r4, r29, 0x1b8
    li      r5, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r28)
    lwz     r3, 0x70(r28)
    lwz     r3, 0x78(r3)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0xa4(r28)
branch_0x800a8758:
    stw     r27, 0x158(r31)
    li      r4, 0x1
    li      r0, 0x0
    lwz     r7, 0x158(r31)
    mr      r3, r31
    lwz     r6, 0xc(r30)
    lwz     r5, 0x10(r30)
    stw     r6, 0x10(r7)
    stw     r5, 0x14(r7)
    lwz     r5, 0x14(r30)
    stw     r5, 0x18(r7)
    stw     r4, 0x17c(r31)
    stw     r0, 0x184(r31)
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    lfs     f1, -0x64d0(rtoc)
    lis     r4, 0x800
    addi    r3, r31, 0x0
    fmr     f2, f1
    addi    r4, r4, 0xb
    fmr     f3, f1
    li      r5, 0x1
    fmr     f4, f1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a87f4
    addi    r3, r24, 0x0
    addi    r4, r29, 0x3f0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x62e0
    stw     r3, 0x0(r24)
    addi    r3, r3, 0x24
    li      r0, 0x3
    stw     r3, 0x20(r24)
    stw     r31, 0x68(r24)
    stw     r0, 0x6c(r24)
branch_0x800a87f4:
    stw     r24, 0x170(r31)
    lis     r3, 0x800
    addi    r4, r3, 0xb
    lfs     f1, -0x64ac(rtoc)
    li      r5, 0x3
    lwz     r3, 0x170(r31)
    lis     r6, 0xa000
    fmr     f2, f1
    fmr     f4, f1
    lfs     f3, -0x6420(rtoc)
    bl      initHitActor__9THitActorFUlUsiffff
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a885c
    addi    r3, r24, 0x0
    addi    r4, r29, 0x3f0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x62e0
    stw     r3, 0x0(r24)
    addi    r3, r3, 0x24
    li      r0, -0x1
    stw     r3, 0x20(r24)
    stw     r31, 0x68(r24)
    stw     r0, 0x6c(r24)
branch_0x800a885c:
    stw     r24, 0x174(r31)
    lis     r3, 0x800
    addi    r4, r3, 0xb
    lfs     f2, -0x64ac(rtoc)
    li      r5, 0x3
    lwz     r3, 0x174(r31)
    lis     r6, 0xa000
    fmr     f4, f2
    lfs     f1, -0x641c(rtoc)
    lfs     f3, -0x6418(rtoc)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r29, 0x3e4
    lwz     r26, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r26)
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x3e4
    mtlr    r12
    blrl
    addi    r26, r3, 0x10
    addi    r24, sp, 0xf8
    li      r28, 0x0
    li      r27, 0x0
branch_0x800a88c4:
    addi    r3, sp, 0xcc
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xcc(sp)
    addi    r3, sp, 0x174
    addi    r4, sp, 0xc8
    stw     r0, 0xc8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x174(sp)
    add     r25, r31, r27
    addi    r4, r26, 0x0
    stw     r0, 0x170(sp)
    addi    r5, r24, 0x0
    addi    r3, sp, 0xf4
    lwz     r0, 0x170(sp)
    addi    r6, r25, 0x170
    stw     r0, 0xf8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x170(r25)
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    lwz     r0, 0x64(r3)
    addi    r27, r27, 0x4
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    blt+    branch_0x800a88c4
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    lfs     f0, -0x64ac(rtoc)
    li      r3, 0x70
    stfs    f0, 0xb8(r31)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a89a0
    addi    r27, r24, 0x68
    lis     r3, 0x803b
    stw     r27, 0x0(r24)
    subi    r0, r3, 0xf38
    stw     r0, 0x68(r24)
    addi    r3, r24, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
    lis     r3, 0x803b
    addi    r3, r3, 0x628c
    stw     r3, 0x4c(r24)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r24)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r24)
    subf    r0, r3, r27
    stw     r0, 0x4(r3)
    stw     r31, 0x64(r24)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x50(r24)
branch_0x800a89a0:
    stw     r24, 0x150(r31)
    lwz     r4, 0x150(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x800a89b4
    lwz     r4, 0x0(r4)
branch_0x800a89b4:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800a89d0
    stw     r4, 0x38(r3)
    li      r0, 0x3
    stb     r0, 0x2a(r3)
branch_0x800a89d0:
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r26, 0x150(r31)
    lwz     r3, 0x64(r26)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x4
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r26)
    cmplw   r0, r3
    beq-    branch_0x800a8a1c
    stw     r0, 0x58(r26)
    stw     r3, 0x54(r26)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x50(r26)
branch_0x800a8a1c:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x64b8(rtoc)
    lis     r3, 0x803b
    xoris   r4, r4, 0x8000
    stw     r4, 0x194(sp)
    addi    r4, r3, 0x5f08
    lfs     f2, -0x64c0(rtoc)
    mr      r3, r31
    stw     r0, 0x190(sp)
    lfd     f0, 0x190(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x178(r31)
    lwz     r4, 0x10(r4)
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBrkFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setLightType__6MActorFi
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r24, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x800a8ad0
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800a8ac0
    mr      r3, r25
    bl      __ct__13J3DSkinDeformFv
branch_0x800a8ac0:
    addi    r4, r25, 0x0
    addi    r3, r24, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x800a8ad0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1bc(r3)
    li      r3, 0x18
    stb     r0, 0x13c(r31)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x15c(r31)
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800a8b20
    addi    r3, r24, 0x0
    addi    r6, r31, 0x0
    addi    r5, r29, 0x404
    li      r4, 0x1
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x800a8b20:
    stw     r24, 0xec(r31)
    addi    r4, r29, 0x414
    li      r5, 0x2
    lwz     r3, 0xec(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lwz     r26, 0xec(r31)
    addi    r3, sp, 0x128
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    lfs     f7, 0x24(r31)
    lfs     f8, 0x28(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r26, 0x8(r26)
    addi    r3, sp, 0x128
    addi    r4, r26, 0x20
    bl      PSMTXCopy
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800a8bb0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800a8bb0:
    lmw     r24, 0x198(sp)
    lwz     r0, 0x1bc(sp)
    addi    sp, sp, 0x1b8
    mtlr    r0
    blr


.globl __ct__11TBossWanwanFPCc
__ct__11TBossWanwanFPCc: # 0x800a8bc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    lwz     r5, 0x8(sp)
    addi    r3, r3, 0x6178
    stw     r3, 0x0(r5)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r5)
    li      r0, 0x1
    li      r3, 0x4
    stw     r4, 0x150(r5)
    stw     r4, 0x154(r5)
    stw     r4, 0x158(r5)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x168(r5)
    stw     r4, 0x16c(r5)
    stw     r4, 0x17c(r5)
    stw     r4, 0x180(r5)
    stw     r4, 0x184(r5)
    stw     r4, 0x188(r5)
    stb     r4, 0x18c(r5)
    stb     r4, 0x18d(r5)
    stw     r4, 0x190(r5)
    stb     r0, 0x194(r5)
    stb     r4, 0x195(r5)
    stw     r4, 0x198(r5)
    stw     r4, 0x19c(r5)
    stb     r4, 0x1a0(r5)
    stfs    f0, 0x1a4(r5)
    stfs    f0, 0x1a8(r5)
    stfs    f0, 0x1ac(r5)
    stw     r4, 0x1b0(r5)
    sth     r4, 0x1b4(r5)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800a8c80
    mr      r3, r31
    bl      __ct__7TBinderFv
    lis     r3, 0x803b
    addi    r0, r3, 0x62d0
    stw     r0, 0x0(r31)
branch_0x800a8c80:
    lwz     r3, 0x8(sp)
    stw     r31, 0x88(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calc__18TBossWanwanMtxCalcFUs
calc__18TBossWanwanMtxCalcFUs: # 0x800a8c9c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 16
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xc8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xc4(sp)
    bne-    branch_0x800a8db8
    lwz     r3, 0x64(r30)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800a8cdc
    li      r0, 0x1
    b       branch_0x800a8ce0

branch_0x800a8cdc:
    li      r0, 0x0
branch_0x800a8ce0:
    cmpwi   r0, 0x0
    beq-    branch_0x800a8db8
    cmplwi  r30, 0x0
    addi    r0, r30, 0x0
    beq-    branch_0x800a8cf8
    lwz     r0, 0x0(r30)
branch_0x800a8cf8:
    lis     r3, 0x8040
    addi    r4, r3, 0x45dc
    stw     r0, 0x30(r4)
    lwz     r3, 0x54(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800a8d2c
    lwz     r12, 0xc(r3)
    addi    r4, r31, 0x0
    addi    r5, sp, 0x98
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x800a8d88

branch_0x800a8d2c:
    lwz     r3, 0x38(r4)
    clrlslwi  r0, r31, 16, 2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    lfsu    f0, 0x1c(r3)
    stfs    f0, 0x98(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x9c(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0xa0(sp)
    lha     r0, 0xc(r3)
    sth     r0, 0xa4(sp)
    lha     r0, 0xe(r3)
    sth     r0, 0xa6(sp)
    lha     r0, 0x10(r3)
    sth     r0, 0xa8(sp)
    lfs     f0, 0x14(r3)
    stfs    f0, 0xac(sp)
    lfs     f0, 0x18(r3)
    stfs    f0, 0xb0(sp)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0xb4(sp)
branch_0x800a8d88:
    lfs     f0, -0x64d0(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    stfs    f0, 0xac(sp)
    addi    r5, sp, 0x98
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    lwz     r12, 0x4c(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x800a8eb0

branch_0x800a8db8:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      calc__24M3UMtxCalcSIAnmBlendQuatFUs
    clrlwi  r31, r31, 16
    cmplwi  r31, 0x1
    bne-    branch_0x800a8eb0
    lfs     f3, -0x64d0(rtoc)
    addi    r29, sp, 0x68
    lfs     f2, -0x6498(rtoc)
    stfs    f3, 0x94(sp)
    lwz     r0, -0x5eac(r13)
    stfs    f3, 0x84(sp)
    lwz     r5, -0x5ea8(r13)
    stfs    f3, 0x74(sp)
    lwz     r3, -0x5ea4(r13)
    stfs    f3, 0x90(sp)
    lfs     f1, -0x64c4(rtoc)
    stfs    f3, 0x80(sp)
    stfs    f3, 0x70(sp)
    stfs    f3, 0x8c(sp)
    stfs    f3, 0x7c(sp)
    stfs    f3, 0x6c(sp)
    stfs    f3, 0x88(sp)
    stfs    f3, 0x78(sp)
    stfs    f3, 0x68(sp)
    lwz     r4, 0x64(r30)
    lfs     f0, 0x168(r4)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r4, 0xbc(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    lfsx    f4, r3, r0
    fneg    f0, f2
    stfs    f1, 0x68(sp)
    stfs    f3, 0x6c(sp)
    stfs    f3, 0x70(sp)
    stfs    f3, 0x74(sp)
    stfs    f3, 0x78(sp)
    stfs    f4, 0x7c(sp)
    stfs    f0, 0x80(sp)
    stfs    f3, 0x84(sp)
    stfs    f3, 0x88(sp)
    stfs    f2, 0x8c(sp)
    stfs    f4, 0x90(sp)
    stfs    f3, 0x94(sp)
    lwz     r3, 0x64(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r30, r3, r0
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r30, 0x0
    bl      PSMTXCopy
branch_0x800a8eb0:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    blr


.globl bind__9TBWBinderFP10TLiveActor
bind__9TBWBinderFP10TLiveActor: # 0x800a8ecc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x278(sp)
    stfd    f31, 0x270(sp)
    stfd    f30, 0x268(sp)
    stfd    f29, 0x260(sp)
    stw     r31, 0x25c(sp)
    mr      r31, r4
    stw     r30, 0x258(sp)
    lwz     r3, 0x94(r4)
    lwz     r0, 0x98(r4)
    stw     r3, 0x244(sp)
    stw     r0, 0x248(sp)
    lwz     r0, 0x9c(r4)
    stw     r0, 0x24c(sp)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    lfs     f0, 0x244(sp)
    stw     r3, 0x238(sp)
    stw     r0, 0x23c(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x240(sp)
    lfs     f1, 0x238(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x238(sp)
    lfs     f1, 0x23c(sp)
    lfs     f0, 0x248(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x23c(sp)
    lfs     f1, 0x240(sp)
    lfs     f0, 0x24c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x240(sp)
    lwz     r0, 0xf0(r4)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800a8f64
    li      r0, 0x1
    b       branch_0x800a8f68

branch_0x800a8f64:
    li      r0, 0x0
branch_0x800a8f68:
    cmpwi   r0, 0x0
    beq-    branch_0x800a9004
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    lfs     f1, 0x238(sp)
    stw     r4, 0x22c(sp)
    stw     r0, 0x230(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x234(sp)
    lfs     f0, 0x22c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x238(sp)
    lfs     f1, 0x23c(sp)
    lfs     f0, 0x230(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x23c(sp)
    lfs     f1, 0x240(sp)
    lfs     f0, 0x234(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x240(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x230(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x230(sp)
    lfs     f0, 0x230(sp)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800a8fec
    stfs    f1, 0x230(sp)
branch_0x800a8fec:
    lwz     r3, 0x22c(sp)
    lwz     r0, 0x230(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x234(sp)
    stw     r0, 0xb4(r31)
branch_0x800a9004:
    lbz     r0, -0x6b98(r13)
    extsb.  r0, r0
    bne-    branch_0x800a9048
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b94(r13)
    addi    r0, r3, 0x60b4
    lis     r4, 0x800a
    stw     r0, -0x6b94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15dc
    addi    r4, r4, 0x51b8
    subi    r3, r13, 0x6b94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b98(r13)
branch_0x800a9048:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6b94
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800a9060
    b       branch_0x800a9064

branch_0x800a9060:
    lwz     r3, 0x1c(r4)
branch_0x800a9064:
    cmplw   r3, r0
    beq-    branch_0x800a90d4
    lbz     r0, -0x6b90(r13)
    extsb.  r0, r0
    bne-    branch_0x800a90b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b8c(r13)
    addi    r0, r3, 0x60a4
    lis     r4, 0x800a
    stw     r0, -0x6b8c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15e8
    addi    r4, r4, 0x4d60
    subi    r3, r13, 0x6b8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b90(r13)
branch_0x800a90b0:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6b8c
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800a90c8
    b       branch_0x800a90cc

branch_0x800a90c8:
    lwz     r3, 0x1c(r4)
branch_0x800a90cc:
    cmplw   r3, r0
    bne-    branch_0x800a9114
branch_0x800a90d4:
    lwz     r0, 0x238(sp)
    addi    r3, sp, 0xfc
    lwz     r5, 0x23c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0xfc(sp)
    lwz     r0, 0x240(sp)
    stw     r5, 0x100(sp)
    stw     r0, 0x104(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xfc(sp)
    lwz     r0, 0x100(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x104(sp)
    stw     r0, 0x9c(r31)
    b       branch_0x800a98b0

branch_0x800a9114:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800a9128
    li      r0, 0x1
    b       branch_0x800a912c

branch_0x800a9128:
    li      r0, 0x0
branch_0x800a912c:
    cmpwi   r0, 0x0
    beq-    branch_0x800a9298
    lfs     f1, 0x148(r31)
    addi    r4, sp, 0x228
    lfs     f0, 0xc0(r31)
    lfs     f30, 0x240(sp)
    fmuls   f0, f1, f0
    lfs     f31, 0x23c(sp)
    fmr     f3, f30
    lwz     r3, -0x6328(r13)
    lfs     f1, 0x238(sp)
    fadds   f2, f31, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x14(r31)
    lfs     f0, -0x64c4(rtoc)
    fcmpo   cr0, f2, f31
    fadds   f29, f1, f0
    ble-    branch_0x800a91e0
    lwz     r3, 0x228(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    beq-    branch_0x800a918c
    cmplwi  r0, 0x402
    bne-    branch_0x800a9194
branch_0x800a918c:
    li      r0, 0x1
    b       branch_0x800a9198

branch_0x800a9194:
    li      r0, 0x0
branch_0x800a9198:
    clrlwi. r0, r0, 24
    bne-    branch_0x800a91e0
    lfs     f1, 0x148(r31)
    fmr     f3, f30
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0x224
    lwz     r3, -0x6328(r13)
    fmuls   f0, f1, f0
    lfs     f1, 0x238(sp)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x64c4(rtoc)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f29
    ble-    branch_0x800a91e0
    lwz     r0, 0x224(sp)
    fmr     f29, f0
    stw     r0, 0x228(sp)
branch_0x800a91e0:
    fcmpo   cr0, f31, f29
    cror    2, 0, 2
    bne-    branch_0x800a9280
    lwz     r3, 0x228(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800a9204
    li      r0, 0x1
    b       branch_0x800a9208

branch_0x800a9204:
    li      r0, 0x0
branch_0x800a9208:
    clrlwi. r0, r0, 24
    bne-    branch_0x800a9280
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x801
    beq-    branch_0x800a9224
    cmplwi  r0, 0x402
    bne-    branch_0x800a922c
branch_0x800a9224:
    li      r0, 0x1
    b       branch_0x800a9230

branch_0x800a922c:
    li      r0, 0x0
branch_0x800a9230:
    clrlwi. r0, r0, 24
    bne-    branch_0x800a9280
    stfs    f29, 0x23c(sp)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x15c(sp)
    stfs    f0, 0x160(sp)
    stfs    f0, 0x164(sp)
    lwz     r3, 0x15c(sp)
    lwz     r0, 0x160(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x164(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 17, 15
    stw     r0, 0xf0(r31)
    b       branch_0x800a928c

branch_0x800a9280:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800a928c:
    stfs    f29, 0xc8(r31)
    lwz     r0, 0x228(sp)
    stw     r0, 0xc4(r31)
branch_0x800a9298:
    lwz     r0, 0x238(sp)
    addi    r3, sp, 0xf0
    lwz     r5, 0x23c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0xf0(sp)
    lwz     r0, 0x240(sp)
    stw     r5, 0xf4(sp)
    stw     r0, 0xf8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xf0(sp)
    lwz     r3, 0xf4(sp)
    stw     r0, 0x244(sp)
    lwz     r0, 0xf8(sp)
    stw     r3, 0x248(sp)
    stw     r0, 0x24c(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800a92e8
    li      r0, 0x1
    b       branch_0x800a92ec

branch_0x800a92e8:
    li      r0, 0x0
branch_0x800a92ec:
    cmpwi   r0, 0x0
    bne-    branch_0x800a9448
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800a9448
    lwz     r0, 0x4(r4)
    lwz     r4, 0x8(r4)
    cmpwi   r0, 0x0
    blt-    branch_0x800a9448
    cmpwi   r4, 0x0
    blt-    branch_0x800a9448
    cmpw    r0, r4
    beq-    branch_0x800a9448
    lwz     r5, 0x0(r3)
    slwi    r3, r0, 4
    slwi    r0, r4, 4
    add     r3, r5, r3
    add     r30, r5, r0
    addi    r4, sp, 0x20c
    bl      getPoint__10TGraphNodeCFP3Vec
    addi    r3, r30, 0x0
    addi    r4, sp, 0x200
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f2, 0x20c(sp)
    addi    r3, sp, 0x20c
    lfs     f1, 0x200(sp)
    mr      r4, r3
    lfs     f0, 0x204(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x20c(sp)
    lfs     f1, 0x210(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x210(sp)
    lfs     f1, 0x214(sp)
    lfs     f0, 0x208(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x214(sp)
    bl      PSVECNormalize
    lfs     f6, 0x20c(sp)
    lfs     f5, 0x210(sp)
    fmuls   f1, f6, f6
    lfs     f7, 0x214(sp)
    fmuls   f0, f5, f5
    lfs     f3, -0x64d0(rtoc)
    fmuls   f2, f7, f7
    fadds   f0, f1, f0
    fadds   f4, f2, f0
    fcmpu   cr0, f3, f4
    bne-    branch_0x800a93b8
    b       branch_0x800a93d4

branch_0x800a93b8:
    lfs     f0, 0x248(sp)
    lfs     f1, 0x244(sp)
    fmuls   f0, f0, f5
    lfs     f2, 0x24c(sp)
    fmadds  f0, f1, f6, f0
    fmadds  f0, f2, f7, f0
    fdivs   f3, f0, f4
branch_0x800a93d4:
    lfs     f0, -0x64d0(rtoc)
    fmr     f1, f3
    fcmpo   cr0, f3, f0
    bge-    branch_0x800a93f8
    lfs     f0, -0x6414(rtoc)
    fcmpo   cr0, f3, f0
    ble-    branch_0x800a940c
    fmr     f1, f0
    b       branch_0x800a940c

branch_0x800a93f8:
    ble-    branch_0x800a940c
    lfs     f0, -0x64c8(rtoc)
    fcmpo   cr0, f3, f0
    bge-    branch_0x800a940c
    fmr     f1, f0
branch_0x800a940c:
    lwz     r0, 0x20c(sp)
    lwz     r3, 0x210(sp)
    stw     r0, 0x244(sp)
    lwz     r0, 0x214(sp)
    stw     r3, 0x248(sp)
    stw     r0, 0x24c(sp)
    lfs     f0, 0x244(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x244(sp)
    lfs     f0, 0x248(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x248(sp)
    lfs     f0, 0x24c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x24c(sp)
branch_0x800a9448:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800a945c
    li      r0, 0x1
    b       branch_0x800a9460

branch_0x800a945c:
    li      r0, 0x0
branch_0x800a9460:
    cmpwi   r0, 0x0
    bne-    branch_0x800a9594
    lwz     r0, 0x244(sp)
    addi    r3, sp, 0x1e8
    lwz     r4, 0x248(sp)
    stw     r0, 0x1e8(sp)
    lwz     r0, 0x24c(sp)
    stw     r4, 0x1ec(sp)
    stw     r0, 0x1f0(sp)
    bl      PSVECMag
    lfs     f2, -0x64d0(rtoc)
    fcmpu   cr0, f2, f1
    beq-    branch_0x800a9594
    lfs     f4, -0x6410(rtoc)
    addi    r3, sp, 0x144
    lfs     f3, -0x6498(rtoc)
    fdivs   f1, f1, f4
    lfs     f0, 0x34(r31)
    lfs     f5, -0x6440(rtoc)
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    fmuls   f0, f3, f0
    lwz     r4, -0x5ea8(r13)
    lfs     f4, -0x64c4(rtoc)
    fmuls   f31, f5, f1
    fctiwz  f0, f0
    stfd    f0, 0x250(sp)
    lwz     r5, 0x254(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800a5f54
    lwz     r0, 0x144(sp)
    lwz     r3, 0x148(sp)
    stw     r0, 0x1dc(sp)
    lwz     r0, 0x14c(sp)
    stw     r3, 0x1e0(sp)
    lfs     f3, 0x244(sp)
    stw     r0, 0x1e4(sp)
    lfs     f0, -0x64d0(rtoc)
    lfs     f2, 0x1e0(sp)
    lfs     f1, 0x248(sp)
    lfs     f4, 0x1dc(sp)
    fmuls   f1, f2, f1
    lfs     f5, 0x1e4(sp)
    lfs     f2, 0x24c(sp)
    fmadds  f1, f4, f3, f1
    fmadds  f1, f5, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800a953c
    fneg    f31, f31
branch_0x800a953c:
    lfs     f0, -0x640c(rtoc)
    lwz     r0, 0x16c(r31)
    fmuls   f31, f31, f0
    cmpwi   r0, 0x0
    beq-    branch_0x800a956c
    lfs     f0, 0x168(r31)
    lfs     f2, -0x64d0(rtoc)
    fadds   f1, f31, f0
    lfs     f3, -0x6440(rtoc)
    bl      MsWrap_f___Ffff_800a7c84
    stfs    f1, 0x168(r31)
    b       branch_0x800a9594

branch_0x800a956c:
    lfs     f0, 0x168(r31)
    lfs     f1, -0x64d0(rtoc)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800a9594
    fadds   f2, f0, f31
    lfs     f0, -0x6440(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800a9590
    fmr     f2, f1
branch_0x800a9590:
    stfs    f2, 0x168(r31)
branch_0x800a9594:
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800a9718
    lwz     r6, 0x154(r31)
    addi    r3, sp, 0x1c0
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, 0x244(sp)
    stw     r4, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(sp)
    lwz     r5, 0x10(sp)
    lwz     r4, 0x14(sp)
    stw     r5, 0x1c0(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0x1c4(sp)
    stw     r0, 0x1c8(sp)
    lfs     f1, 0x1c0(sp)
    stw     r5, 0x1cc(sp)
    fadds   f0, f1, f0
    stw     r4, 0x1d0(sp)
    stw     r0, 0x1d4(sp)
    stfs    f0, 0x1c0(sp)
    lfs     f1, 0x1c4(sp)
    lfs     f0, 0x248(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c4(sp)
    lfs     f1, 0x1c8(sp)
    lfs     f0, 0x24c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c8(sp)
    lwz     r4, 0x14(r6)
    lfs     f1, 0x1c0(sp)
    lwz     r5, 0x4(r4)
    lwz     r4, 0x90(r5)
    lwz     r0, 0x94(r5)
    stw     r4, 0x1b4(sp)
    stw     r0, 0x1b8(sp)
    lwz     r0, 0x98(r5)
    stw     r0, 0x1bc(sp)
    lfs     f0, 0x1b4(sp)
    lfs     f31, 0x1b8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fsubs   f0, f0, f31
    stfs    f0, 0x1c4(sp)
    lfs     f0, 0x1c8(sp)
    lfs     f30, 0x1bc(sp)
    fsubs   f0, f0, f30
    stfs    f0, 0x1c8(sp)
    bl      PSVECMag
    lfs     f0, -0x6408(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800a9718
    addi    r3, sp, 0x1c0
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0x1c0(sp)
    lfs     f1, -0x6408(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c4(sp)
    lfs     f0, 0x1c8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c8(sp)
    lfs     f1, 0x1c0(sp)
    lfs     f0, 0x1b4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x1c4(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x1c4(sp)
    lfs     f0, 0x1c8(sp)
    fadds   f0, f0, f30
    stfs    f0, 0x1c8(sp)
    lfs     f2, 0x1c0(sp)
    lfs     f1, 0x1cc(sp)
    lfs     f0, 0x1d0(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x1c0(sp)
    lfs     f1, 0x1c4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c4(sp)
    lfs     f1, 0x1c8(sp)
    lfs     f0, 0x1d4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c8(sp)
    lwz     r0, 0x1c0(sp)
    lwz     r3, 0x1c4(sp)
    stw     r0, 0x244(sp)
    lwz     r0, 0x1c8(sp)
    stw     r3, 0x248(sp)
    stw     r0, 0x24c(sp)
branch_0x800a9718:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800a972c
    li      r0, 0x1
    b       branch_0x800a9730

branch_0x800a972c:
    li      r0, 0x0
branch_0x800a9730:
    cmpwi   r0, 0x0
    bne-    branch_0x800a9898
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x1a4
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r6, 0x0(r3)
    slwi    r3, r0, 4
    lwz     r0, 0x8(r5)
    add     r3, r6, r3
    slwi    r0, r0, 4
    add     r30, r6, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    addi    r3, r30, 0x0
    addi    r4, sp, 0x198
    bl      getPoint__10TGraphNodeCFP3Vec
    addi    r3, sp, 0x138
    addi    r4, sp, 0x198
    addi    r5, sp, 0x1a4
    addi    r6, r31, 0x10
    bl      MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f1, 0x1a4(sp)
    addi    r3, sp, 0x180
    lfs     f0, 0x198(sp)
    lwz     r0, 0x138(sp)
    fsubs   f2, f1, f0
    lfs     f1, 0x19c(sp)
    stw     r0, 0x180(sp)
    lwz     r0, 0x13c(sp)
    stfs    f2, 0x1a4(sp)
    lfs     f0, 0x1a0(sp)
    lfs     f2, 0x1a8(sp)
    stw     r0, 0x184(sp)
    fsubs   f1, f2, f1
    lwz     r0, 0x140(sp)
    stw     r0, 0x188(sp)
    stfs    f1, 0x1a8(sp)
    lfs     f1, 0x180(sp)
    lfs     f2, 0x1ac(sp)
    fsubs   f0, f2, f0
    stfs    f0, 0x1ac(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x180(sp)
    lfs     f1, 0x184(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x184(sp)
    lfs     f1, 0x188(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x188(sp)
    bl      PSVECMag
    fmr     f29, f1
    lfs     f0, -0x64c0(rtoc)
    fcmpo   cr0, f29, f0
    ble-    branch_0x800a9818
    fmr     f29, f0
branch_0x800a9818:
    lfs     f0, -0x6404(rtoc)
    fcmpo   cr0, f29, f0
    bge-    branch_0x800a9838
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x188(sp)
    stfs    f0, 0x184(sp)
    stfs    f0, 0x180(sp)
    b       branch_0x800a9868

branch_0x800a9838:
    addi    r3, sp, 0x180
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0x180(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x180(sp)
    lfs     f0, 0x184(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x184(sp)
    lfs     f0, 0x188(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x188(sp)
branch_0x800a9868:
    lfs     f1, 0x244(sp)
    lfs     f0, 0x180(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x244(sp)
    lfs     f1, 0x248(sp)
    lfs     f0, 0x184(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x248(sp)
    lfs     f1, 0x24c(sp)
    lfs     f0, 0x188(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x24c(sp)
branch_0x800a9898:
    lwz     r3, 0x244(sp)
    lwz     r0, 0x248(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x24c(sp)
    stw     r0, 0x9c(r31)
branch_0x800a98b0:
    lwz     r0, 0x27c(sp)
    lfd     f31, 0x270(sp)
    lfd     f30, 0x268(sp)
    mtlr    r0
    lfd     f29, 0x260(sp)
    lwz     r31, 0x25c(sp)
    lwz     r30, 0x258(sp)
    addi    sp, sp, 0x278
    blr


.globl MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x800a98d4
    stwu    sp, -0x58(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x50(sp)
    lfs     f0, 0x48(sp)
    lfs     f5, 0x0(r4)
    fsubs   f0, f0, f5
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    lfs     f1, 0x4(r4)
    fsubs   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    lfs     f6, 0x8(r4)
    fsubs   f0, f0, f6
    stfs    f0, 0x50(sp)
    lfs     f3, 0x4c(sp)
    lfs     f2, 0x4(r6)
    fmuls   f1, f1, f3
    lfs     f8, 0x48(sp)
    fmuls   f0, f3, f3
    lfs     f4, 0x0(r6)
    fmuls   f3, f2, f3
    fmadds  f2, f5, f8, f1
    lfs     f7, 0x50(sp)
    fmadds  f1, f8, f8, f0
    lfs     f5, 0x8(r6)
    fmadds  f3, f4, f8, f3
    fmadds  f2, f6, f7, f2
    lfs     f0, -0x64d0(rtoc)
    fmadds  f3, f5, f7, f3
    fmadds  f1, f7, f7, f1
    fsubs   f2, f3, f2
    fdivs   f2, f2, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x800a997c
    fmr     f2, f0
    b       branch_0x800a998c

branch_0x800a997c:
    lfs     f0, -0x64c4(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800a998c
    fmr     f2, f0
branch_0x800a998c:
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x50(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, 0x48(sp)
    stw     r3, 0x3c(sp)
    lwz     r5, 0x8(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x58
    stw     r0, 0x8(r5)
    blr


.globl perform__6TBWHitFUlPQ26JDrama9TGraphics
perform__6TBWHitFUlPQ26JDrama9TGraphics: # 0x800a9a1c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x800a9ab4
    lwz     r4, 0x6c(r27)
    cmpwi   r4, 0x0
    blt-    branch_0x800a9a58
    lwz     r3, 0x68(r27)
    addi    r5, r27, 0x10
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x800a9a58:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800a9aa8

branch_0x800a9a64:
    lwz     r4, 0x68(r27)
    lwz     r3, 0x44(r27)
    lbz     r0, 0x13c(r4)
    lwzx    r3, r3, r31
    cmplwi  r0, 0x0
    beq-    branch_0x800a9aa0
    lwz     r5, 0x4c(r3)
    addis   r0, r5, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800a9aa0
    lwz     r12, 0x0(r3)
    li      r5, 0xa
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800a9aa0:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800a9aa8:
    lhz     r0, 0x48(r27)
    cmpw    r30, r0
    blt+    branch_0x800a9a64
branch_0x800a9ab4:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl receiveMessage__6TBWHitFP9THitActorUl
receiveMessage__6TBWHitFP9THitActorUl: # 0x800a9ad8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__9TBWPicketFUlPQ26JDrama9TGraphics
perform__9TBWPicketFUlPQ26JDrama9TGraphics: # 0x800a9b08
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x1a0(sp)
    stw     r31, 0x19c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x198(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x194(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x190(sp)
    beq-    branch_0x800a9d54
    lwz     r4, 0x70(r29)
    mr      r3, r29
    lwz     r4, 0x154(r4)
    lwz     r5, 0x14(r4)
    lhz     r4, 0x0(r5)
    lwz     r5, 0x4(r5)
    subi    r0, r4, 0x1
    mulli   r4, r0, 0x2c
    addi    r0, r4, 0xc
    add     r5, r5, r0
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x8(r5)
    stw     r0, 0x18(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x68(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800a9d54
    lwz     r4, 0x70(r29)
    addi    r5, r3, 0x10
    lfs     f0, 0x0(r5)
    addi    r3, sp, 0x168
    lwz     r6, 0x154(r4)
    mr      r4, r3
    stfs    f0, 0x180(sp)
    lfs     f0, 0x4(r5)
    stfs    f0, 0x184(sp)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x188(sp)
    lwz     r5, 0x14(r6)
    lfs     f1, 0x180(sp)
    lwz     r5, 0x4(r5)
    lfsu    f0, 0xc(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x180(sp)
    lfs     f1, 0x184(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x184(sp)
    lfs     f1, 0x188(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x188(sp)
    lfs     f1, -0x64d0(rtoc)
    lfs     f0, -0x64c4(rtoc)
    stfs    f1, 0x174(sp)
    stfs    f0, 0x178(sp)
    stfs    f1, 0x17c(sp)
    lfs     f3, 0x17c(sp)
    lfs     f6, 0x184(sp)
    lfs     f2, 0x188(sp)
    lfs     f7, 0x174(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x178(sp)
    fmuls   f1, f7, f2
    lfs     f4, 0x180(sp)
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x168(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x16c(sp)
    stfs    f0, 0x170(sp)
    bl      PSVECNormalize
    lfs     f3, 0x188(sp)
    addi    r3, sp, 0x174
    lfs     f6, 0x16c(sp)
    mr      r4, r3
    lfs     f2, 0x170(sp)
    lfs     f7, 0x180(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x184(sp)
    lfs     f4, 0x168(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x174(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x178(sp)
    stfs    f0, 0x17c(sp)
    bl      PSVECNormalize
    lfs     f3, 0x170(sp)
    addi    r3, sp, 0x180
    lfs     f6, 0x178(sp)
    mr      r4, r3
    lfs     f2, 0x17c(sp)
    lfs     f7, 0x168(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x16c(sp)
    lfs     f4, 0x174(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x180(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x184(sp)
    stfs    f0, 0x188(sp)
    bl      PSVECNormalize
    lfs     f0, 0x168(sp)
    addi    r4, r29, 0x10
    stfs    f0, 0x74(r29)
    lfs     f0, 0x16c(sp)
    stfs    f0, 0x84(r29)
    lfs     f0, 0x170(sp)
    stfs    f0, 0x94(r29)
    lfs     f0, 0x174(sp)
    stfs    f0, 0x78(r29)
    lfs     f0, 0x178(sp)
    stfs    f0, 0x88(r29)
    lfs     f0, 0x17c(sp)
    stfs    f0, 0x98(r29)
    lfs     f0, 0x180(sp)
    stfs    f0, 0x7c(r29)
    lfs     f0, 0x184(sp)
    stfs    f0, 0x8c(r29)
    lfs     f0, 0x188(sp)
    stfs    f0, 0x9c(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x80(r29)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x90(r29)
    lfs     f0, 0x18(r29)
    stfs    f0, 0xa0(r29)
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
branch_0x800a9d54:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800a9ff8
    lwz     r3, 0xa4(r29)
    lwz     r3, 0x4(r3)
    addi    r28, r3, 0x20
    addi    r3, r28, 0x0
    bl      PSMTXIdentity
    lwz     r3, 0x70(r29)
    lfs     f0, 0x10(r29)
    lwz     r3, 0x154(r3)
    stfs    f0, 0x154(sp)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x158(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x15c(sp)
    lwz     r4, 0x14(r3)
    lfs     f1, 0x154(sp)
    lhz     r3, 0x0(r4)
    lwz     r4, 0x4(r4)
    subi    r0, r3, 0x3
    mulli   r3, r0, 0x2c
    addi    r3, r3, 0xc
    add     r3, r4, r3
    lfs     f0, 0x0(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x154(sp)
    lfs     f1, 0x158(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x158(sp)
    lfs     f1, 0x15c(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x15c(sp)
    lfs     f1, 0x154(sp)
    lfs     f3, 0x15c(sp)
    lfs     f0, 0x158(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6400(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800a9e20
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x154(sp)
    stfs    f0, 0x158(sp)
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x15c(sp)
branch_0x800a9e20:
    lfs     f1, -0x64d0(rtoc)
    addi    r3, sp, 0x13c
    lfs     f0, -0x64c4(rtoc)
    mr      r4, r3
    stfs    f1, 0x148(sp)
    stfs    f0, 0x14c(sp)
    stfs    f1, 0x150(sp)
    lfs     f3, 0x150(sp)
    lfs     f6, 0x158(sp)
    lfs     f2, 0x15c(sp)
    lfs     f7, 0x148(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x14c(sp)
    fmuls   f1, f7, f2
    lfs     f4, 0x154(sp)
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x13c(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x140(sp)
    stfs    f0, 0x144(sp)
    bl      PSVECNormalize
    lfs     f3, 0x15c(sp)
    addi    r3, sp, 0x148
    lfs     f6, 0x140(sp)
    mr      r4, r3
    lfs     f2, 0x144(sp)
    lfs     f7, 0x154(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x158(sp)
    lfs     f4, 0x13c(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x148(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x14c(sp)
    stfs    f0, 0x150(sp)
    bl      PSVECNormalize
    lfs     f3, 0x144(sp)
    addi    r3, sp, 0x154
    lfs     f6, 0x14c(sp)
    mr      r4, r3
    lfs     f2, 0x150(sp)
    lfs     f7, 0x13c(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0x140(sp)
    lfs     f4, 0x148(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0x154(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0x158(sp)
    stfs    f0, 0x15c(sp)
    bl      PSVECNormalize
    lfs     f0, 0x13c(sp)
    stfs    f0, 0x0(r28)
    lfs     f0, 0x140(sp)
    stfs    f0, 0x10(r28)
    lfs     f0, 0x144(sp)
    stfs    f0, 0x20(r28)
    lfs     f0, 0x148(sp)
    stfs    f0, 0x4(r28)
    lfs     f0, 0x14c(sp)
    stfs    f0, 0x14(r28)
    lfs     f0, 0x150(sp)
    stfs    f0, 0x24(r28)
    lfs     f0, 0x154(sp)
    stfs    f0, 0x8(r28)
    lfs     f0, 0x158(sp)
    stfs    f0, 0x18(r28)
    lfs     f0, 0x15c(sp)
    stfs    f0, 0x28(r28)
    lfs     f0, 0x10(r29)
    stfs    f0, 0xc(r28)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x1c(r28)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x2c(r28)
    lwz     r3, 0x70(r29)
    lwz     r0, 0x17c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800a9f8c
    lfs     f1, 0x1c(r28)
    lfs     f0, -0x63fc(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r28)
branch_0x800a9f8c:
    lwz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800a9fa0
    li      r0, 0x1
    b       branch_0x800a9fa4

branch_0x800a9fa0:
    li      r0, 0x0
branch_0x800a9fa4:
    cmpwi   r0, 0x0
    beq-    branch_0x800a9fd4
    lfs     f2, -0x63f8(rtoc)
    lfs     f1, 0x154(sp)
    lfs     f0, 0xc(r28)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xc(r28)
    lfs     f1, 0x15c(sp)
    lfs     f0, 0x2c(r28)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x2c(r28)
    b       branch_0x800a9ff8

branch_0x800a9fd4:
    lfs     f2, -0x6458(rtoc)
    lfs     f1, 0x154(sp)
    lfs     f0, 0xc(r28)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xc(r28)
    lfs     f1, 0x15c(sp)
    lfs     f0, 0x2c(r28)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x2c(r28)
branch_0x800a9ff8:
    lwz     r3, 0xa4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x1a4(sp)
    lwz     r31, 0x19c(sp)
    lwz     r30, 0x198(sp)
    mtlr    r0
    lwz     r29, 0x194(sp)
    lwz     r28, 0x190(sp)
    addi    sp, sp, 0x1a0
    blr


.globl getTakingMtx__9TBWPicketFv
getTakingMtx__9TBWPicketFv: # 0x800aa038
    addi    r3, r3, 0x74
    blr


.globl moveRequest__9TBWPicketFRCQ29JGeometry8TVec3_f_
moveRequest__9TBWPicketFRCQ29JGeometry8TVec3_f_: # 0x800aa040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6b98(r13)
    extsb.  r0, r0
    bne-    branch_0x800aa0a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b94(r13)
    addi    r0, r3, 0x60b4
    lis     r4, 0x800a
    stw     r0, -0x6b94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15dc
    addi    r4, r4, 0x51b8
    subi    r3, r13, 0x6b94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b98(r13)
branch_0x800aa0a0:
    lwz     r3, 0x70(r30)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subi    r0, r13, 0x6b94
    cmplw   r3, r0
    beq-    branch_0x800aa114
    lbz     r0, -0x6b90(r13)
    extsb.  r0, r0
    bne-    branch_0x800aa0fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b8c(r13)
    addi    r0, r3, 0x60a4
    lis     r4, 0x800a
    stw     r0, -0x6b8c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x15e8
    addi    r4, r4, 0x4d60
    subi    r3, r13, 0x6b8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b90(r13)
branch_0x800aa0fc:
    lwz     r3, 0x70(r30)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subi    r0, r13, 0x6b8c
    cmplw   r3, r0
    bne-    branch_0x800aa11c
branch_0x800aa114:
    li      r3, 0x0
    b       branch_0x800aa1e0

branch_0x800aa11c:
    lwz     r3, 0x70(r30)
    lbz     r0, 0x13c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800aa134
    li      r3, 0x0
    b       branch_0x800aa1e0

branch_0x800aa134:
    lwz     r30, 0x154(r3)
    mr      r4, r31
    lwz     r3, 0x14(r30)
    lwz     r5, 0x4(r3)
    lwz     r3, 0xc(r5)
    lwz     r0, 0x10(r5)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x14(r5)
    stw     r0, 0x50(sp)
    lwz     r3, 0x14(r30)
    bl      constraintTail__5TRopeFRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x14(r30)
    lfs     f1, 0x48(sp)
    lwz     r4, 0x4(r3)
    li      r3, 0x1
    lfsu    f0, 0xc(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f0, 0x48(sp)
    fneg    f0, f0
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fneg    f0, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fneg    f0, f0
    stfs    f0, 0x50(sp)
    lwz     r5, 0x10(r30)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x15c(r5)
    stw     r0, 0x160(r5)
    lwz     r0, 0x50(sp)
    stw     r0, 0x164(r5)
branch_0x800aa1e0:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl receiveMessage__9TBWPicketFP9THitActorUl
receiveMessage__9TBWPicketFP9THitActorUl: # 0x800aa1f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800aa30c
    cmplwi  r5, 0x1
    bne-    branch_0x800aa27c
    lwz     r5, 0x70(r29)
    li      r3, 0x1
    li      r0, 0x0
    stw     r3, 0x17c(r5)
    li      r4, 0x28c0
    stw     r0, 0x184(r5)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800aa274
    addi    r4, r29, 0x10
    li      r3, 0x28c0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800aa274:
    li      r3, 0x1
    b       branch_0x800aa310

branch_0x800aa27c:
    cmplwi  r5, 0x4
    bne-    branch_0x800aa2f0
    lwz     r31, 0x70(r29)
    lwz     r0, 0x17c(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800aa2d8
    lwz     r5, 0x158(r31)
    li      r4, 0xae
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    addi    r5, r5, 0x10
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800aa2d8
    lfs     f1, -0x64bc(rtoc)
    stfs    f1, 0x154(r3)
    lfs     f0, -0x64cc(rtoc)
    stfs    f0, 0x158(r3)
    stfs    f1, 0x15c(r3)
    stfs    f1, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f1, 0x17c(r3)
branch_0x800aa2d8:
    li      r0, 0x0
    stb     r0, 0x194(r31)
    li      r3, 0x1
    stw     r0, 0x17c(r31)
    stw     r30, 0x68(r29)
    b       branch_0x800aa310

branch_0x800aa2f0:
    subi    r0, r5, 0x7
    cmplwi  r0, 0x1
    bgt-    branch_0x800aa30c
    li      r0, 0x0
    stw     r0, 0x68(r29)
    li      r3, 0x1
    b       branch_0x800aa310

branch_0x800aa30c:
    li      r3, 0x0
branch_0x800aa310:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl perform__8TBWLeashFUlPQ26JDrama9TGraphics
perform__8TBWLeashFUlPQ26JDrama9TGraphics: # 0x800aa32c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stmw    r26, 0x108(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x800aa6dc
    lwz     r3, 0x10(r29)
    addi    r5, sp, 0xf4
    li      r4, 0x5
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lwz     r3, 0x14(r29)
    addi    r4, sp, 0xf4
    bl      moveHead__5TRopeFRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(r29)
    li      r0, 0x0
    stw     r0, 0x188(r3)
    lwz     r4, 0x10(r29)
    lwz     r0, 0x17c(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x800aa6dc
    lwz     r3, 0x14(r29)
    lwz     r4, 0x158(r4)
    lwz     r6, 0x4(r3)
    addi    r4, r4, 0x10
    lwz     r5, 0xc(r6)
    lwz     r0, 0x10(r6)
    stw     r5, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x14(r6)
    stw     r0, 0xb4(sp)
    bl      constraintTail__5TRopeFRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x14(r29)
    lfs     f1, 0xac(sp)
    lwz     r3, 0x4(r3)
    lfs     f0, 0xc(r3)
    addi    r4, r3, 0xc
    addi    r3, sp, 0xe8
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lfs     f0, 0xac(sp)
    fneg    f0, f0
    stfs    f0, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fneg    f0, f0
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xb4(sp)
    fneg    f0, f0
    stfs    f0, 0xb4(sp)
    lwz     r5, 0x10(r29)
    lwz     r4, 0xac(sp)
    lwz     r0, 0xb0(sp)
    stw     r4, 0x15c(r5)
    stw     r0, 0x160(r5)
    lwz     r0, 0xb4(sp)
    stw     r0, 0x164(r5)
    lwz     r4, 0x14(r29)
    lfs     f0, -0x64ac(rtoc)
    lwz     r5, 0x4(r4)
    lwz     r4, 0xc(r5)
    lwz     r0, 0x10(r5)
    stw     r4, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x14(r5)
    stw     r0, 0xf0(sp)
    lwz     r5, 0x10(r29)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0xe4(sp)
    lfs     f1, 0xe0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xe0(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0xdc(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xe0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0xe4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xf0(sp)
    bl      PSVECMag
    lfs     f0, -0x63f4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800aa544
    addi    r3, sp, 0xe8
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0xe8(sp)
    li      r0, 0x1
    lfs     f1, -0x63f0(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xe8(sp)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf0(sp)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0xec(sp)
    lwz     r3, 0x10(r29)
    lfs     f0, 0xe8(sp)
    lfsu    f1, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0xec(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0xf0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r3)
    lwz     r3, 0x10(r29)
    stw     r0, 0x188(r3)
branch_0x800aa544:
    lfs     f2, -0x64d0(rtoc)
    lfs     f1, 0xf0(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800aa574
    lfs     f0, 0xe8(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800aa56c
    lfs     f2, -0x644c(rtoc)
    b       branch_0x800aa5f0

branch_0x800aa56c:
    lfs     f2, -0x6448(rtoc)
    b       branch_0x800aa5f0

branch_0x800aa574:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800aa5b4
    lfs     f2, 0xe8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6494(rtoc)
    stw     r0, 0x104(sp)
    lis     r0, 0x4330
    stw     r0, 0x100(sp)
    lfd     f1, 0x100(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x800aa5f0

branch_0x800aa5b4:
    fneg    f1, f1
    lfs     f2, 0xe8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6494(rtoc)
    stw     r0, 0x104(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6444(rtoc)
    stw     r0, 0x100(sp)
    lfd     f2, 0x100(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x800aa5f0:
    lfs     f1, -0x6444(rtoc)
    lfs     f0, -0x6440(rtoc)
    fadds   f30, f1, f2
    b       branch_0x800aa604

branch_0x800aa600:
    fsubs   f30, f30, f0
branch_0x800aa604:
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    beq+    branch_0x800aa600
    lfs     f1, -0x6440(rtoc)
    lfs     f0, -0x64d0(rtoc)
    b       branch_0x800aa620

branch_0x800aa61c:
    fadds   f30, f30, f1
branch_0x800aa620:
    fcmpo   cr0, f30, f0
    blt+    branch_0x800aa61c
    lfs     f0, -0x6444(rtoc)
    lwz     r3, 0x10(r29)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    lfs     f1, 0x34(r3)
    bl      MsWrap_f___Ffff_800a7c84
    fsubs   f2, f30, f1
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800aa678
    lwz     r3, 0x10(r29)
    lfs     f1, -0x6480(rtoc)
    lfs     f0, 0x144(r3)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800aa66c
    b       branch_0x800aa670

branch_0x800aa66c:
    fmr     f0, f2
branch_0x800aa670:
    fmr     f2, f0
    b       branch_0x800aa69c

branch_0x800aa678:
    lwz     r3, 0x10(r29)
    lfs     f1, -0x6480(rtoc)
    lfs     f0, 0x144(r3)
    fneg    f0, f0
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800aa698
    b       branch_0x800aa69c

branch_0x800aa698:
    fmr     f2, f0
branch_0x800aa69c:
    lwz     r3, 0x10(r29)
    lfsu    f1, 0x34(r3)
    lfs     f0, -0x6440(rtoc)
    fadds   f2, f1, f2
    b       branch_0x800aa6b4

branch_0x800aa6b0:
    fsubs   f2, f2, f0
branch_0x800aa6b4:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800aa6b0
    lfs     f1, -0x6440(rtoc)
    lfs     f0, -0x64d0(rtoc)
    b       branch_0x800aa6d0

branch_0x800aa6cc:
    fadds   f2, f2, f1
branch_0x800aa6d0:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800aa6cc
    stfs    f2, 0x0(r3)
branch_0x800aa6dc:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800aa80c
    lwz     r3, 0x10(r29)
    addi    r5, sp, 0xd0
    li      r4, 0x1
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f30, -0x64ac(rtoc)
    li      r26, 0x0
    lfs     f31, -0x64d0(rtoc)
    li      r28, 0x0
branch_0x800aa704:
    lwz     r4, 0x14(r29)
    addi    r3, sp, 0xc0
    lfs     f0, 0xd0(sp)
    lwz     r0, 0x4(r4)
    add     r27, r0, r28
    lwz     r4, 0xc(r27)
    lwz     r0, 0x10(r27)
    stw     r4, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0x14(r27)
    stw     r0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0xd4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0xd8(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xc8(sp)
    bl      PSVECMag
    fcmpo   cr0, f1, f30
    bge-    branch_0x800aa7fc
    fdivs   f1, f30, f1
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0xd0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0xd4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0xd8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(sp)
    stfs    f31, 0x20(r27)
    stfs    f31, 0x1c(r27)
    stfs    f31, 0x18(r27)
    lwz     r3, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stw     r3, 0xc(r27)
    stw     r0, 0x10(r27)
    lwz     r0, 0xc8(sp)
    stw     r0, 0x14(r27)
    lwz     r3, 0xc(r27)
    lwz     r0, 0x10(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x4(r27)
    lwz     r0, 0x14(r27)
    stw     r0, 0x8(r27)
branch_0x800aa7fc:
    addi    r26, r26, 0x1
    cmpwi   r26, 0xf
    addi    r28, r28, 0x2c
    blt+    branch_0x800aa704
branch_0x800aa80c:
    li      r26, 0x0
    li      r28, 0x0
    b       branch_0x800aa834

branch_0x800aa818:
    lwz     r3, 0x18(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwzx    r3, r3, r28
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    addi    r26, r26, 0x1
    addi    r28, r28, 0x4
branch_0x800aa834:
    lwz     r3, 0x14(r29)
    lhz     r0, 0x0(r3)
    cmpw    r26, r0
    blt+    branch_0x800aa818
    lmw     r26, 0x108(sp)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    mtlr    r0
    addi    sp, sp, 0x130
    blr


.globl __ct__8TBWLeashFP11TBossWanwaniPCc
__ct__8TBWLeashFP11TBossWanwaniPCc: # 0x800aa860
    mflr    r0
    lis     r7, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stmw    r22, 0xe0(sp)
    mr      r23, r4
    addi    r27, r5, 0x0
    subi    r30, r7, 0x2a58
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r22, 0x8(sp)
    addi    r3, r6, 0x0
    stw     r0, 0x0(r22)
    stw     r6, 0x4(r22)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r22)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r22)
    li      r4, 0x0
    lis     r3, 0x803b
    sth     r4, 0xc(r22)
    addi    r0, r3, 0x6438
    stw     r0, 0x0(r22)
    stw     r23, 0x10(r22)
    stw     r4, 0x14(r22)
    stw     r4, 0x18(r22)
    lwz     r3, 0x10(r22)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x10(r22)
    lfs     f29, 0xe0(r3)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f30, 0x144(r3)
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800aa944
    lwz     r5, 0x10(r22)
    fmr     f1, f29
    fmr     f2, f30
    lfs     f3, -0x63ec(rtoc)
    lfs     f4, -0x63e8(rtoc)
    addi    r3, r24, 0x0
    clrlwi  r4, r27, 16
    addi    r5, r5, 0x10
    bl      __ct__5TRopeFUsRCQ29JGeometry8TVec3_f_ffff
branch_0x800aa944:
    lwz     r23, 0x8(sp)
    slwi    r3, r27, 2
    stw     r24, 0x14(r23)
    bl      __nwa__FUl
    stw     r3, 0x18(r23)
    lis     r3, 0x803b
    addi    r31, r3, 0x645c
    lfs     f30, -0x64d0(rtoc)
    addi    r29, r31, 0x24
    lfs     f31, -0x63dc(rtoc)
    li      r28, 0x0
    li      r25, 0x0
    lis     r24, 0x800
    b       branch_0x800aaa4c

branch_0x800aa97c:
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800aaa38
    stw     r26, 0xd0(sp)
    subi    r4, rtoc, 0x63e4
    lwz     r3, 0xd0(sp)
    bl      __ct__9THitActorFPCc
    lwz     r23, 0xd0(sp)
    li      r0, 0x0
    addi    r4, r30, 0x1a4
    stw     r31, 0x0(r23)
    li      r5, 0x0
    stw     r29, 0x20(r23)
    lwz     r3, 0x8(sp)
    stw     r3, 0x68(r23)
    stw     r0, 0x6c(r23)
    stfs    f30, 0x70(r23)
    stw     r28, 0x74(r23)
    lwz     r3, 0x68(r23)
    lwz     r22, 0x10(r3)
    lwz     r3, 0x78(r22)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x6c(r23)
    li      r4, 0x2
    lwz     r3, 0x6c(r23)
    bl      setBrkFromIndex__6MActorFi
    lwz     r12, 0x0(r22)
    mr      r3, r22
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r12, 0x0(r22)
    lfs     f29, 0x130(r3)
    mr      r3, r22
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f4, 0x11c(r3)
    fmr     f3, f29
    fmuls   f1, f31, f29
    mr      r3, r23
    fmuls   f2, f31, f4
    addi    r4, r24, 0xc
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
branch_0x800aaa38:
    lwz     r3, 0x8(sp)
    addi    r28, r28, 0x1
    lwz     r3, 0x18(r3)
    stwx    r26, r3, r25
    addi    r25, r25, 0x4
branch_0x800aaa4c:
    cmpw    r28, r27
    blt+    branch_0x800aa97c
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x3e4
    lwz     r23, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r23)
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x3e4
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r29, sp, 0x9c
    subi    r31, r27, 0x2
    li      r28, 0x0
    li      r26, 0x0
    li      r25, 0x0
    b       branch_0x800aab70

branch_0x800aaa9c:
    lwz     r24, 0x8(sp)
    addi    r3, sp, 0x90
    addi    r4, r30, 0x8
    lwz     r0, 0x18(r24)
    add     r23, r0, r25
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x90(sp)
    addi    r3, sp, 0xcc
    addi    r4, sp, 0x8c
    stw     r0, 0x8c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xcc(sp)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    stw     r0, 0xc8(sp)
    addi    r6, r23, 0x0
    addi    r3, sp, 0x98
    lwz     r0, 0xc8(sp)
    stw     r0, 0x9c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    cmpw    r28, r31
    bge-    branch_0x800aab0c
    lwz     r3, 0x18(r24)
    lwzx    r3, r3, r25
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    b       branch_0x800aab20

branch_0x800aab0c:
    lwz     r3, 0x18(r24)
    lwzx    r3, r3, r25
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800aab20:
    cmpwi   r28, 0x2
    bge-    branch_0x800aab48
    lwz     r4, 0x8(sp)
    addi    r3, r26, 0x28
    lwz     r4, 0x14(r4)
    lwz     r4, 0x4(r4)
    lwzx    r0, r4, r3
    ori     r0, r0, 0x1
    stwx    r0, r4, r3
    b       branch_0x800aab64

branch_0x800aab48:
    lwz     r4, 0x8(sp)
    addi    r3, r26, 0x28
    lwz     r4, 0x14(r4)
    lwz     r4, 0x4(r4)
    lwzx    r0, r4, r3
    clrrwi  r0, r0, 1
    stwx    r0, r4, r3
branch_0x800aab64:
    addi    r28, r28, 0x1
    addi    r26, r26, 0x2c
    addi    r25, r25, 0x4
branch_0x800aab70:
    cmpw    r28, r27
    blt+    branch_0x800aaa9c
    lmw     r22, 0xe0(sp)
    lwz     r0, 0x124(sp)
    lwz     r3, 0x8(sp)
    lfd     f31, 0x118(sp)
    mtlr    r0
    lfd     f30, 0x110(sp)
    lfd     f29, 0x108(sp)
    addi    sp, sp, 0x120
    blr


.globl perform__12TBWLeashNodeFUlPQ26JDrama9TGraphics
perform__12TBWLeashNodeFUlPQ26JDrama9TGraphics: # 0x800aab9c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stmw    r27, 0xbc(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x800aac44
    mr      r3, r27
    bl      calcTemperature__12TBWLeashNodeFv
    mr      r3, r27
    bl      calcMatrix__12TBWLeashNodeFv
    lwz     r3, 0x68(r27)
    lwz     r3, 0x10(r3)
    lbz     r0, 0x13c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800aac44
    lwz     r0, 0x74(r27)
    cmpwi   r0, 0x8
    bge-    branch_0x800aac44
    li      r31, 0x0
    li      r30, 0x0
    b       branch_0x800aac38

branch_0x800aac00:
    lwz     r3, 0x44(r27)
    lwzx    r3, r3, r30
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800aac30
    lwz     r12, 0x0(r3)
    addi    r4, r27, 0x0
    li      r5, 0xa
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800aac30:
    addi    r31, r31, 0x1
    addi    r30, r30, 0x4
branch_0x800aac38:
    lhz     r0, 0x48(r27)
    cmpw    r31, r0
    blt+    branch_0x800aac00
branch_0x800aac44:
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x800aad84
    lwz     r3, 0x6c(r27)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    mr.     r30, r3
    beq-    branch_0x800aad84
    lha     r3, 0x8(r30)
    lis     r31, 0x4330
    lwz     r4, 0x74(r27)
    subi    r0, r3, 0x1
    lfd     f2, -0x64b8(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, 0x70(r27)
    stw     r0, 0xb4(sp)
    cmpwi   r4, 0x5
    stw     r31, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f0, f0, f2
    fmuls   f31, f1, f0
    bge-    branch_0x800aad10
    lwz     r3, 0x68(r27)
    lwz     r3, 0x10(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x68(r27)
    lbz     r0, 0x1bc(r3)
    lwz     r3, 0x10(r4)
    stw     r0, 0xa4(sp)
    lbz     r0, 0x13c(r3)
    stw     r31, 0xa0(sp)
    lwz     r3, 0x74(r27)
    stw     r0, 0xac(sp)
    xoris   r0, r3, 0x8000
    lfd     f2, -0x6478(rtoc)
    stw     r31, 0xa8(sp)
    lfd     f0, 0xa0(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f0, f0, f2
    stw     r0, 0xb4(sp)
    fsubs   f1, f1, f2
    lfd     f3, -0x64b8(rtoc)
    stw     r31, 0xb0(sp)
    fdivs   f0, f1, f0
    lfd     f2, 0xb0(sp)
    lfs     f1, -0x63d8(rtoc)
    fsubs   f2, f2, f3
    fmadds  f1, f2, f1, f0
    b       branch_0x800aad50

branch_0x800aad10:
    lwz     r3, 0x68(r27)
    lwz     r3, 0x14(r3)
    lhz     r3, 0x0(r3)
    subi    r0, r3, 0xa
    cmpw    r4, r0
    blt-    branch_0x800aad4c
    subf    r0, r4, r3
    lfs     f0, -0x64c0(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0xa4(sp)
    stw     r31, 0xa0(sp)
    lfd     f1, 0xa0(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    b       branch_0x800aad50

branch_0x800aad4c:
    lfs     f1, -0x64c4(rtoc)
branch_0x800aad50:
    lfs     f0, -0x64c4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800aad64
    fmr     f1, f0
    b       branch_0x800aad74

branch_0x800aad64:
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800aad74
    fmr     f1, f0
branch_0x800aad74:
    fmuls   f31, f31, f1
    stfs    f31, 0x10(r30)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0xc(r30)
branch_0x800aad84:
    lwz     r3, 0x68(r27)
    lwz     r4, 0x74(r27)
    lwz     r3, 0x14(r3)
    lhz     r3, 0x0(r3)
    subi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x800aadb0
    lwz     r3, 0x6c(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800aadb0:
    lmw     r27, 0xbc(sp)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl calcMatrix__12TBWLeashNodeFv
calcMatrix__12TBWLeashNodeFv: # 0x800aadc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    mr      r30, r3
    lwz     r3, 0x68(r3)
    lwz     r7, 0x74(r30)
    lwz     r6, 0x14(r3)
    mulli   r0, r7, 0x2c
    lwz     r3, 0x6c(r30)
    lwz     r8, 0x4(r6)
    lwz     r4, 0x4(r3)
    add     r5, r8, r0
    lwz     r3, 0xc(r5)
    addi    r31, r4, 0x20
    lwz     r0, 0x10(r5)
    stw     r3, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x14(r5)
    stw     r0, 0xd4(sp)
    lhz     r3, 0x0(r6)
    subi    r0, r3, 0x1
    cmpw    r7, r0
    bge-    branch_0x800aae88
    addi    r0, r7, 0x1
    lfs     f2, 0xcc(sp)
    mulli   r3, r0, 0x2c
    lfs     f1, 0xd0(sp)
    lfs     f0, 0xd4(sp)
    addi    r0, r3, 0xc
    add     r4, r8, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xb0(sp)
    lfs     f3, 0xa8(sp)
    fsubs   f2, f3, f2
    stfs    f2, 0xa8(sp)
    lfs     f2, 0xac(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0xac(sp)
    lfs     f1, 0xb0(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    b       branch_0x800aaf04

branch_0x800aae88:
    subi    r0, r7, 0x1
    lfs     f1, 0xcc(sp)
    mulli   r3, r0, 0x2c
    lfs     f0, 0xd0(sp)
    addi    r0, r3, 0xc
    add     r4, r8, r0
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xb0(sp)
    lfs     f2, 0xa8(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0xa8(sp)
    lfs     f1, 0xac(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0xd4(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xa8(sp)
    fneg    f0, f0
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fneg    f0, f0
    stfs    f0, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fneg    f0, f0
    stfs    f0, 0xb0(sp)
branch_0x800aaf04:
    addi    r3, sp, 0xa8
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, -0x64d0(rtoc)
    addi    r3, sp, 0xc0
    lfs     f0, -0x64c4(rtoc)
    mr      r4, r3
    stfs    f1, 0xb4(sp)
    stfs    f0, 0xb8(sp)
    stfs    f1, 0xbc(sp)
    lfs     f3, 0xbc(sp)
    lfs     f6, 0xac(sp)
    lfs     f2, 0xb0(sp)
    lfs     f7, 0xb4(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0xb8(sp)
    fmuls   f1, f7, f2
    lfs     f4, 0xa8(sp)
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0xc0(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    bl      PSVECNormalize
    lfs     f3, 0xb0(sp)
    addi    r3, sp, 0xb4
    lfs     f6, 0xc4(sp)
    mr      r4, r3
    lfs     f2, 0xc8(sp)
    lfs     f7, 0xa8(sp)
    fmuls   f0, f3, f6
    lfs     f5, 0xac(sp)
    lfs     f4, 0xc0(sp)
    fmuls   f1, f7, f2
    fmsubs  f2, f5, f2, f0
    fmuls   f0, f5, f4
    fmsubs  f1, f3, f4, f1
    stfs    f2, 0xb4(sp)
    fmsubs  f0, f7, f6, f0
    stfs    f1, 0xb8(sp)
    stfs    f0, 0xbc(sp)
    bl      PSVECNormalize
    lfs     f0, 0xa8(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0xac(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0xb0(sp)
    stfs    f0, 0x28(r31)
    lwz     r0, 0x74(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x800ab00c
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x4(r31)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0x24(r31)
    b       branch_0x800ab03c

branch_0x800ab00c:
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x4(r31)
    lfs     f0, 0xc4(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0xc8(sp)
    stfs    f0, 0x24(r31)
branch_0x800ab03c:
    lfs     f0, 0xcc(sp)
    stfs    f0, 0xc(r31)
    lfs     f1, -0x64a4(rtoc)
    lfs     f0, 0xd0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0xd4(sp)
    stfs    f0, 0x2c(r31)
    lwz     r3, 0xcc(sp)
    lwz     r0, 0xd0(sp)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0xd4(sp)
    stw     r0, 0x18(r30)
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl calcTemperature__12TBWLeashNodeFv
calcTemperature__12TBWLeashNodeFv: # 0x800ab08c
    lwz     r5, 0x74(r3)
    cmpwi   r5, 0x0
    beqlr-    

    lwz     r4, 0x68(r3)
    subi    r0, r5, 0x1
    slwi    r0, r0, 2
    lfs     f1, 0x70(r3)
    lwz     r4, 0x18(r4)
    lfs     f0, -0x64d0(rtoc)
    lwzx    r4, r4, r0
    lfs     f2, 0x70(r4)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ab0e0
    lfs     f0, -0x63d4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ab0d8
    lfs     f1, -0x63d0(rtoc)
    b       branch_0x800ab0f8

branch_0x800ab0d8:
    lfs     f1, -0x63cc(rtoc)
    b       branch_0x800ab0f8

branch_0x800ab0e0:
    lfs     f0, -0x63c8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ab0f4
    lfs     f1, -0x63c4(rtoc)
    b       branch_0x800ab0f8

branch_0x800ab0f4:
    lfs     f1, -0x63c0(rtoc)
branch_0x800ab0f8:
    lfs     f0, 0x70(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x70(r3)
    lfs     f1, 0x70(r3)
    lfs     f0, -0x64d0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ab118
    stfs    f0, 0x70(r3)
branch_0x800ab118:
    lfs     f1, 0x70(r3)
    lfs     f0, -0x64c4(rtoc)
    fcmpo   cr0, f1, f0
    blelr-    

    stfs    f0, 0x70(r3)
    blr


.globl __ct__9TBWParamsFPCc
__ct__9TBWParamsFPCc: # 0x800ab130
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    subi    r30, r5, 0x2a58
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x42c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x42c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0xa8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x6464(rtoc)
    addi    r3, r30, 0x43c
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x43c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x44c
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x44c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x45c
    lfs     f0, -0x63bc(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x45c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x46c
    lfs     f0, -0x64d4(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x46c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x47c
    lfs     f0, -0x64d4(rtoc)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x47c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x490
    lfs     f0, -0x64d4(rtoc)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x490
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x4a4
    lfs     f0, -0x64d4(rtoc)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x4a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x4bc
    lfs     f0, -0x6458(rtoc)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x4bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x4cc
    lfs     f0, -0x64c4(rtoc)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x4cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x4dc
    lfs     f0, -0x64c0(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x4dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x170(r31)
    li      r0, 0xfa0
    lis     r3, 0x803b
    stw     r0, 0x180(r31)
    subi    r0, r3, 0x42b8
    addi    r3, r30, 0x4ec
    stw     r0, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x4ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x4fc
    lfs     f0, -0x64a0(rtoc)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x4fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x50c
    lfs     f0, -0x6458(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x50c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x2f1c
    stw     r0, 0x1ac(r31)
    li      r0, 0xff
    lis     r3, 0x803b
    stb     r0, 0x1bc(r31)
    subi    r0, r3, 0x2f28
    addi    r3, r30, 0x520
    stw     r0, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x520
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x52c
    lfs     f0, -0x63b8(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x52c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x540
    lfs     f0, -0x63b4(rtoc)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x540
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    mr      r3, r31
    lfs     f0, -0x63b0(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__18TBossWanwanManagerFv
__dt__18TBossWanwanManagerFv: # 0x800ab4a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab4f0
    lis     r3, 0x803b
    addi    r0, r3, 0x6124
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800ab4f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab4f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBossWanwanFv
__dt__11TBossWanwanFv: # 0x800ab50c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab55c
    lis     r3, 0x803b
    addi    r3, r3, 0x6178
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800ab55c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab55c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl kill__11TBossWanwanFv
kill__11TBossWanwanFv: # 0x800ab578
    blr


.globl __dt__18TBossWanwanMtxCalcFv
__dt__18TBossWanwanMtxCalcFv: # 0x800ab57c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab60c
    lis     r3, 0x803b
    addi    r3, r3, 0x628c
    stw     r3, 0x4c(r30)
    addi    r4, r3, 0x24
    addi    r0, r30, 0x68
    lwz     r3, 0x0(r30)
    stw     r4, 0x0(r3)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x800ab5fc
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
branch_0x800ab5fc:
    extsh.  r0, r31
    ble-    branch_0x800ab60c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab60c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TBWBinderFv
__dt__9TBWBinderFv: # 0x800ab628
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab670
    lis     r3, 0x803b
    addi    r0, r3, 0x62d0
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7TBinderFv
    extsh.  r0, r31
    ble-    branch_0x800ab670
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab670:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__6TBWHitFv
__dt__6TBWHitFv: # 0x800ab68c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab6f4
    lis     r3, 0x803b
    addi    r3, r3, 0x62e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800ab6e4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800ab6e4:
    extsh.  r0, r31
    ble-    branch_0x800ab6f4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab6f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TBWPicketFv
__dt__9TBWPicketFv: # 0x800ab710
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab790
    lis     r3, 0x803b
    addi    r3, r3, 0x6384
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800ab780
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800ab780
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800ab780:
    extsh.  r0, r31
    ble-    branch_0x800ab790
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab790:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TBWLeashFv
__dt__8TBWLeashFv: # 0x800ab7ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab804
    lis     r3, 0x803b
    addi    r0, r3, 0x6438
    stw     r0, 0x0(r30)
    beq-    branch_0x800ab7f4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800ab7f4:
    extsh.  r0, r31
    ble-    branch_0x800ab804
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab804:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TBWLeashNodeFv
__dt__12TBWLeashNodeFv: # 0x800ab820
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ab888
    lis     r3, 0x803b
    addi    r3, r3, 0x645c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800ab878
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800ab878:
    extsh.  r0, r31
    ble-    branch_0x800ab888
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ab888:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_bosswanwan_cpp
__sinit_bosswanwan_cpp: # 0x800ab8a4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1570
    lfs     f0, -0x63ac(rtoc)
    stfs    f0, 0x0(r31)
    lfs     f0, -0x63a8(rtoc)
    stfs    f0, 0x4(r31)
    lfs     f0, -0x63a4(rtoc)
    stfs    f0, 0x8(r31)
    lfs     f0, -0x63a0(rtoc)
    stfs    f0, 0xc(r31)
    lfs     f0, -0x64d0(rtoc)
    stfs    f0, 0x10(r31)
    lfs     f0, -0x639c(rtoc)
    stfs    f0, 0x14(r31)
    lfs     f0, -0x6398(rtoc)
    stfs    f0, 0x18(r31)
    lfs     f0, -0x6394(rtoc)
    stfs    f0, 0x1c(r31)
    lfs     f0, -0x6390(rtoc)
    stfs    f0, 0x20(r31)
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800ab934
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800ab934:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800ab964
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800ab964:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800ab994
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800ab994:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800ab9c4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800ab9c4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800ab9f4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800ab9f4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800aba24
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800aba24:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800aba54
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800aba54:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800aba84
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800aba84:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800abab4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800abab4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800abae4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800abae4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800abb14
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800abb14:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800abb44
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800abb44:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800abb74
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800abb74:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800abba4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x144
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800abba4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800abbd4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800abbd4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TBWLeashNodeFv
_32___dt__12TBWLeashNodeFv: # 0x800abbe8
    subi    r3, r3, 0x20
    b       __dt__12TBWLeashNodeFv


.globl _32___dt__9TBWPicketFv
_32___dt__9TBWPicketFv: # 0x800abbf0
    subi    r3, r3, 0x20
    b       __dt__9TBWPicketFv


.globl _32___dt__6TBWHitFv
_32___dt__6TBWHitFv: # 0x800abbf8
    subi    r3, r3, 0x20
    b       __dt__6TBWHitFv


.globl _104_4_calc__18TBossWanwanMtxCalcFUs
_104_4_calc__18TBossWanwanMtxCalcFUs: # 0x800abc00
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calc__18TBossWanwanMtxCalcFUs


.globl _32___dt__11TBossWanwanFv
_32___dt__11TBossWanwanFv: # 0x800abc14
    subi    r3, r3, 0x20
    b       __dt__11TBossWanwanFv

