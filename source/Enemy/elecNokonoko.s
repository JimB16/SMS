
.globl __dt__24TNerveElecCarapaceReturnFv
__dt__24TNerveElecCarapaceReturnFv: # 0x8007c2c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007c30c
    lis     r3, 0x803b
    addi    r0, r3, 0x2ec0
    stw     r0, 0x0(r31)
    beq-    branch_0x8007c2fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007c2fc:
    extsh.  r0, r4
    ble-    branch_0x8007c30c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007c30c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveElecCarapaceReturnCFP24TSpineBase_10TLiveActor_
execute__24TNerveElecCarapaceReturnCFP24TSpineBase_10TLiveActor_: # 0x8007c324
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    mr      r31, r4
    stw     r30, 0xb8(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007c3e0
    lwz     r4, 0x16c(r30)
    lfs     f4, -0x69a8(rtoc)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0xb0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x10(r30)
    lfs     f2, 0xac(sp)
    fsubs   f0, f1, f0
    lfs     f1, 0x14(r30)
    lfs     f3, 0xb0(sp)
    fsubs   f1, f2, f1
    lfs     f2, 0x18(r30)
    fmuls   f0, f4, f0
    fsubs   f2, f3, f2
    fmuls   f1, f4, f1
    stfs    f0, 0x18c(r30)
    fmuls   f0, f4, f2
    stfs    f1, 0x190(r30)
    stfs    f0, 0x194(r30)
    lwz     r3, 0x16c(r30)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x8
    bne-    branch_0x8007c3c0
    li      r0, 0x1
    b       branch_0x8007c3c4

branch_0x8007c3c0:
    li      r0, 0x0
branch_0x8007c3c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007c3e0
    lwz     r12, 0x0(r3)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007c3e0:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x14
    bge-    branch_0x8007c424
    lwz     r3, 0x16c(r30)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x8
    bne-    branch_0x8007c404
    li      r0, 0x1
    b       branch_0x8007c408

branch_0x8007c404:
    li      r0, 0x0
branch_0x8007c408:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007c424
    lwz     r12, 0x0(r3)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007c424:
    lbz     r0, -0x6de0(r13)
    lwz     r31, 0x16c(r30)
    extsb.  r0, r0
    bne-    branch_0x8007c46c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ddc(r13)
    addi    r0, r3, 0x2f10
    lis     r4, 0x8008
    stw     r0, -0x6ddc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xccc
    subi    r4, r4, 0x394c
    subi    r3, r13, 0x6ddc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6de0(r13)
branch_0x8007c46c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ddc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8007c4dc
    lwz     r4, 0x194(r31)
    addi    r3, sp, 0x48
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    addi    r4, r4, 0x10
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x50(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x48(sp)
    addi    r3, sp, 0x74
    lwz     r4, 0x4c(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x50(sp)
    stw     r4, 0x78(sp)
    stw     r0, 0x7c(sp)
    bl      PSVECMag
    lfs     f0, -0x69a4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007c4dc
    li      r0, 0x1
    b       branch_0x8007c4e0

branch_0x8007c4dc:
    li      r0, 0x0
branch_0x8007c4e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007c524
    lwz     r3, 0x16c(r30)
    lwz     r0, 0xf0(r3)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r3, 0x16c(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8007c524:
    lwz     r3, 0x16c(r30)
    lfs     f1, 0x188(r30)
    lwz     r3, 0x1a0(r3)
    lfs     f0, 0x38c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x188(r30)
    lfs     f1, 0x188(r30)
    lfs     f0, -0x69a0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007c554
    fsubs   f0, f1, f0
    stfs    f0, 0x188(r30)
branch_0x8007c554:
    lfs     f1, 0x10(r30)
    lfs     f0, 0x18c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x190(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0x194(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
    lwz     r4, 0x16c(r30)
    lfs     f0, -0x699c(rtoc)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x9c(sp)
    lfs     f1, 0x18c(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007c5c8
    lfs     f1, 0x10(r30)
    lfs     f0, 0x94(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007c5dc
    stfs    f0, 0x10(r30)
    b       branch_0x8007c5dc

branch_0x8007c5c8:
    lfs     f1, 0x10(r30)
    lfs     f0, 0x94(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007c5dc
    stfs    f0, 0x10(r30)
branch_0x8007c5dc:
    lfs     f1, 0x190(r30)
    lfs     f0, -0x699c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007c604
    lfs     f0, 0x14(r30)
    lfs     f1, 0x98(sp)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8007c618
    stfs    f1, 0x14(r30)
    b       branch_0x8007c618

branch_0x8007c604:
    lfs     f0, 0x14(r30)
    lfs     f1, 0x98(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8007c618
    stfs    f1, 0x14(r30)
branch_0x8007c618:
    lfs     f1, 0x194(r30)
    lfs     f0, -0x699c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007c640
    lfs     f0, 0x18(r30)
    lfs     f1, 0x9c(sp)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8007c654
    stfs    f1, 0x18(r30)
    b       branch_0x8007c654

branch_0x8007c640:
    lfs     f0, 0x18(r30)
    lfs     f1, 0x9c(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8007c654
    stfs    f1, 0x18(r30)
branch_0x8007c654:
    lwz     r3, 0x16c(r30)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8007c698
    lfs     f1, 0x28(r30)
    lfs     f0, -0x6998(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r30)
    lfs     f1, 0x28(r30)
    lfs     f0, -0x6994(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007c698
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007c698:
    lwz     r0, 0xc4(sp)
    li      r3, 0x0
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl __dt__24TNerveElecNokonokoFreezeFv
__dt__24TNerveElecNokonokoFreezeFv: # 0x8007c6b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007c6f8
    lis     r3, 0x803b
    addi    r0, r3, 0x2f10
    stw     r0, 0x0(r31)
    beq-    branch_0x8007c6e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007c6e8:
    extsh.  r0, r4
    ble-    branch_0x8007c6f8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007c6f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveElecCarapaceWaitCFP24TSpineBase_10TLiveActor_
execute__22TNerveElecCarapaceWaitCFP24TSpineBase_10TLiveActor_: # 0x8007c710
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x3c
    ble-    branch_0x8007c724
    li      r3, 0x1
    blr

branch_0x8007c724:
    li      r3, 0x0
    blr


.globl __dt__22TNerveElecCarapaceWaitFv
__dt__22TNerveElecCarapaceWaitFv: # 0x8007c72c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007c770
    lis     r3, 0x803b
    addi    r0, r3, 0x2ed0
    stw     r0, 0x0(r31)
    beq-    branch_0x8007c760
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007c760:
    extsh.  r0, r4
    ble-    branch_0x8007c770
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007c770:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveElecCarapaceMoveCFP24TSpineBase_10TLiveActor_
execute__22TNerveElecCarapaceMoveCFP24TSpineBase_10TLiveActor_: # 0x8007c788
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stw     r31, 0x11c(sp)
    addi    r31, r3, 0xca8
    stw     r30, 0x118(sp)
    stw     r29, 0x114(sp)
    mr      r29, r4
    stw     r28, 0x110(sp)
    lwz     r30, 0x0(r4)
    lwz     r3, 0x16c(r30)
    lbz     r0, 0x175(r30)
    lwz     r3, 0x1a0(r3)
    cmplwi  r0, 0x0
    lfs     f31, 0x38c(r3)
    lfs     f1, 0x364(r3)
    lfs     f2, 0x378(r3)
    beq-    branch_0x8007c7e8
    lfs     f3, -0x699c(rtoc)
    mr      r3, r30
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x8007c7f8

branch_0x8007c7e8:
    lfs     f3, 0x178(r30)
    mr      r3, r30
    lfs     f4, 0x17c(r30)
    bl      zigzagToCurPathNode__11TSpineEnemyFffff
branch_0x8007c7f8:
    lfs     f0, 0x188(r30)
    fadds   f0, f0, f31
    stfs    f0, 0x188(r30)
    lfs     f1, 0x188(r30)
    lfs     f0, -0x69a0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007c81c
    fsubs   f0, f1, f0
    stfs    f0, 0x188(r30)
branch_0x8007c81c:
    lbz     r0, 0x184(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8007cad0
    lwz     r3, 0x16c(r30)
    lwz     r4, 0x104(r30)
    lwz     r3, 0x1a0(r3)
    lfs     f1, -0x6990(rtoc)
    cmplwi  r4, 0x0
    lfs     f0, 0x364(r3)
    fmuls   f31, f1, f0
    beq-    branch_0x8007c850
    addi    r4, r4, 0x10
    b       branch_0x8007c854

branch_0x8007c850:
    addi    r4, r30, 0x108
branch_0x8007c854:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    lfs     f2, 0xdc(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    bge-    branch_0x8007cad0
    lbz     r0, -0x6df0(r13)
    lwz     r28, 0x16c(r30)
    extsb.  r0, r0
    bne-    branch_0x8007c90c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dec(r13)
    addi    r0, r3, 0x2f30
    lis     r3, 0x8008
    stw     r0, -0x6dec(r13)
    subi    r4, r3, 0x3380
    subi    r3, r13, 0x6dec
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df0(r13)
branch_0x8007c90c:
    lwz     r3, 0x8c(r28)
    subi    r0, r13, 0x6dec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8007c928
    li      r0, 0x1
    b       branch_0x8007c92c

branch_0x8007c928:
    li      r0, 0x0
branch_0x8007c92c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007ca54
    lwz     r30, 0x16c(r30)
    lwz     r3, 0x8c(r30)
    lwz     r28, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r28, r3
    beq-    branch_0x8007ca54
    lbz     r0, -0x6de0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c98c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ddc(r13)
    addi    r0, r3, 0x2f10
    lis     r3, 0x8008
    stw     r0, -0x6ddc(r13)
    subi    r4, r3, 0x394c
    subi    r3, r13, 0x6ddc
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6de0(r13)
branch_0x8007c98c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6ddc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8007ca54
    lbz     r0, -0x6df0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c9e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dec(r13)
    addi    r0, r3, 0x2f30
    lis     r3, 0x8008
    stw     r0, -0x6dec(r13)
    subi    r4, r3, 0x3380
    subi    r3, r13, 0x6dec
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df0(r13)
branch_0x8007c9e0:
    lwz     r3, 0x8c(r30)
    subi    r28, r13, 0x6dec
    lwz     r0, 0x14(r3)
    cmplw   r0, r28
    beq-    branch_0x8007ca54
    lbz     r0, -0x6df0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ca30
    subi    r3, r13, 0x6dec
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2f30
    lis     r3, 0x8008
    stw     r0, -0x6dec(r13)
    subi    r4, r3, 0x3380
    addi    r3, r28, 0x0
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df0(r13)
branch_0x8007ca30:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6dec
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007ca48
    stw     r0, 0x1c(r4)
branch_0x8007ca48:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x8007ca54:
    lbz     r0, -0x6db8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ca94
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6db4(r13)
    addi    r0, r3, 0x2ec0
    lis     r3, 0x8008
    stw     r0, -0x6db4(r13)
    subi    r4, r3, 0x3d38
    subi    r3, r13, 0x6db4
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6db8(r13)
branch_0x8007ca94:
    subi    r4, r13, 0x6db4
    cmplwi  r4, 0x0
    beq-    branch_0x8007cac8
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8007cac8
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8007cac8:
    li      r3, 0x1
    b       branch_0x8007cc5c

branch_0x8007cad0:
    lwz     r4, 0x104(r30)
    addi    r3, r30, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x8007cae8
    addi    r4, r4, 0x10
    b       branch_0x8007caec

branch_0x8007cae8:
    addi    r4, r3, 0x4
branch_0x8007caec:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xf8(sp)
    stw     r0, 0xfc(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x100(sp)
    lfs     f1, 0xf8(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xf8(sp)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xfc(sp)
    lfs     f2, 0x100(sp)
    lfs     f1, 0x18(r30)
    lfs     f0, -0x699c(rtoc)
    fsubs   f1, f2, f1
    stfs    f1, 0x100(sp)
    stfs    f0, 0xfc(sp)
    lbz     r0, 0x176(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8007cc58
    addi    r3, sp, 0xf8
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x698c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007cc58
    lbz     r0, 0x184(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8007cbe4
    lbz     r0, -0x6db8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007cba8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6db4(r13)
    addi    r0, r3, 0x2ec0
    lis     r3, 0x8008
    stw     r0, -0x6db4(r13)
    subi    r4, r3, 0x3d38
    subi    r3, r13, 0x6db4
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6db8(r13)
branch_0x8007cba8:
    subi    r4, r13, 0x6db4
    cmplwi  r4, 0x0
    beq-    branch_0x8007cbdc
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8007cbdc
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8007cbdc:
    li      r3, 0x1
    b       branch_0x8007cc5c

branch_0x8007cbe4:
    li      r0, 0x1
    stb     r0, 0x184(r30)
    li      r4, 0x0
    lwz     r3, 0x16c(r30)
    stw     r4, 0xe8(sp)
    addi    r5, r3, 0x10
    lwz     r3, 0x10(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xf4(sp)
    lwz     r0, 0xe8(sp)
    stw     r0, 0xf4(r30)
    lwz     r3, 0xec(sp)
    lwz     r0, 0xf0(sp)
    stw     r3, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0xf4(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0xe8(sp)
    stw     r0, 0x104(r30)
    lwz     r3, 0xec(sp)
    lwz     r0, 0xf0(sp)
    stw     r3, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0xf4(sp)
    stw     r0, 0x110(r30)
    stw     r4, 0x118(r30)
branch_0x8007cc58:
    li      r3, 0x0
branch_0x8007cc5c:
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lwz     r31, 0x11c(sp)
    mtlr    r0
    lwz     r30, 0x118(sp)
    lwz     r29, 0x114(sp)
    lwz     r28, 0x110(sp)
    addi    sp, sp, 0x128
    blr


.globl __dt__25TNerveElecNokonokoCollectFv
__dt__25TNerveElecNokonokoCollectFv: # 0x8007cc80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007ccc4
    lis     r3, 0x803b
    addi    r0, r3, 0x2f30
    stw     r0, 0x0(r31)
    beq-    branch_0x8007ccb4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007ccb4:
    extsh.  r0, r4
    ble-    branch_0x8007ccc4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007ccc4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__22TNerveElecCarapaceMoveFv
__dt__22TNerveElecCarapaceMoveFv: # 0x8007ccdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007cd20
    lis     r3, 0x803b
    addi    r0, r3, 0x2ee0
    stw     r0, 0x0(r31)
    beq-    branch_0x8007cd10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007cd10:
    extsh.  r0, r4
    ble-    branch_0x8007cd20
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007cd20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveElecNokonokoAttackCFP24TSpineBase_10TLiveActor_
execute__24TNerveElecNokonokoAttackCFP24TSpineBase_10TLiveActor_: # 0x8007cd38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x8007cd78
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8007cd6c
    li      r0, 0x1
    b       branch_0x8007cd70

branch_0x8007cd6c:
    li      r0, 0x0
branch_0x8007cd70:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007cd90
branch_0x8007cd78:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007cd90:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007cdac
    li      r3, 0x1
    b       branch_0x8007cdb0

branch_0x8007cdac:
    li      r3, 0x0
branch_0x8007cdb0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__24TNerveElecNokonokoAttackFv
__dt__24TNerveElecNokonokoAttackFv: # 0x8007cdc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007ce08
    lis     r3, 0x803b
    addi    r0, r3, 0x2ef0
    stw     r0, 0x0(r31)
    beq-    branch_0x8007cdf8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007cdf8:
    extsh.  r0, r4
    ble-    branch_0x8007ce08
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007ce08:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveElecNokonokoRebirthCFP24TSpineBase_10TLiveActor_
execute__25TNerveElecNokonokoRebirthCFP24TSpineBase_10TLiveActor_: # 0x8007ce20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007ce98
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    li      r4, 0xcd
    li      r6, 0x0
    lwz     r5, 0x194(r31)
    li      r7, 0x0
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r5, 0x10
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007ce98:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6984(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8007cecc
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8007cecc:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007cf1c
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x8007cf14
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8007cf14
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8007cf14:
    li      r3, 0x1
    b       branch_0x8007cf20

branch_0x8007cf1c:
    li      r3, 0x0
branch_0x8007cf20:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__25TNerveElecNokonokoRebirthFv
__dt__25TNerveElecNokonokoRebirthFv: # 0x8007cf38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007cf7c
    lis     r3, 0x803b
    addi    r0, r3, 0x2f00
    stw     r0, 0x0(r31)
    beq-    branch_0x8007cf6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007cf6c:
    extsh.  r0, r4
    ble-    branch_0x8007cf7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007cf7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveElecNokonokoFreezeCFP24TSpineBase_10TLiveActor_
execute__24TNerveElecNokonokoFreezeCFP24TSpineBase_10TLiveActor_: # 0x8007cf94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d030
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007cfd0
    li      r0, 0x1
    b       branch_0x8007cfd4

branch_0x8007cfd0:
    li      r0, 0x0
branch_0x8007cfd4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d018
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x74(r31)
    li      r4, 0xca
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x8007d030

branch_0x8007d018:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007d030:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8007d044
    li      r0, 0x1
    b       branch_0x8007d048

branch_0x8007d044:
    li      r0, 0x0
branch_0x8007d048:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d0e0
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6980(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007d0e0
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1a8
    lwz     r3, 0x4(r3)
    li      r4, 0x17e
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x180
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1a8(r31)
    stfs    f1, 0x1ac(r31)
    stfs    f2, 0x1b0(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007d0e0
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
branch_0x8007d0e0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007d1c8
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x7
    bne-    branch_0x8007d108
    li      r0, 0x1
    b       branch_0x8007d10c

branch_0x8007d108:
    li      r0, 0x0
branch_0x8007d10c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d130
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8007d1c8

branch_0x8007d130:
    cmpwi   r3, 0x6
    bne-    branch_0x8007d140
    li      r0, 0x1
    b       branch_0x8007d144

branch_0x8007d140:
    li      r0, 0x0
branch_0x8007d144:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d1c0
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8007d160
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x8007d160:
    cmplwi  r3, 0x0
    bne-    branch_0x8007d1a4
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d17c
    li      r0, 0x1
    b       branch_0x8007d180

branch_0x8007d17c:
    li      r0, 0x0
branch_0x8007d180:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d1a4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8007d1c8

branch_0x8007d1a4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8007d1c8

branch_0x8007d1c0:
    li      r3, 0x1
    b       branch_0x8007d280

branch_0x8007d1c8:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x190
    ble-    branch_0x8007d27c
    li      r0, 0x0
    stw     r0, 0x8(r30)
    lwz     r0, 0x14(r30)
    lwz     r3, 0x18(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8007d1f0
    stw     r0, 0x1c(r30)
branch_0x8007d1f0:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lbz     r0, -0x6dd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007d240
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dd4(r13)
    addi    r0, r3, 0x2f00
    lis     r4, 0x8008
    stw     r0, -0x6dd4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcd8
    subi    r4, r4, 0x30c8
    subi    r3, r13, 0x6dd4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dd8(r13)
branch_0x8007d240:
    subi    r4, r13, 0x6dd4
    cmplwi  r4, 0x0
    beq-    branch_0x8007d274
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8007d274
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8007d274:
    li      r3, 0x1
    b       branch_0x8007d280

branch_0x8007d27c:
    li      r3, 0x0
branch_0x8007d280:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl execute__22TNerveElecNokonokoTurnCFP24TSpineBase_10TLiveActor_
execute__22TNerveElecNokonokoTurnCFP24TSpineBase_10TLiveActor_: # 0x8007d298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d358
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x10
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x699c(rtoc)
    stw     r3, 0x38(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    beq-    branch_0x8007d310
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f2, 0x44(sp)
branch_0x8007d310:
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
branch_0x8007d358:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0xf
    bne-    branch_0x8007d36c
    li      r0, 0x1
    b       branch_0x8007d370

branch_0x8007d36c:
    li      r0, 0x0
branch_0x8007d370:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d3c8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, 0xcc(r3)
    addi    r3, r31, 0x10
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, 0x34(r31)
    lfs     f3, -0x697c(rtoc)
    lfs     f4, -0x699c(rtoc)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x8007d3c8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007d3c8:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007d43c
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x10
    bne-    branch_0x8007d3f0
    li      r0, 0x1
    b       branch_0x8007d3f4

branch_0x8007d3f0:
    li      r0, 0x0
branch_0x8007d3f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d418
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8007d43c

branch_0x8007d418:
    cmpwi   r3, 0xe
    bne-    branch_0x8007d428
    li      r0, 0x1
    b       branch_0x8007d42c

branch_0x8007d428:
    li      r0, 0x0
branch_0x8007d42c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d43c
    li      r3, 0x1
    b       branch_0x8007d4a4

branch_0x8007d43c:
    lwz     r3, 0x194(r31)
    lfs     f2, 0x10(r31)
    lfs     f0, 0x10(r3)
    lfs     f3, -0x699c(rtoc)
    fsubs   f0, f2, f0
    fcmpu   cr0, f3, f0
    bne-    branch_0x8007d478
    lfs     f1, 0x18(r31)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    fcmpu   cr0, f3, f0
    bne-    branch_0x8007d478
    lfs     f0, -0x6978(rtoc)
    fadds   f0, f2, f0
    stfs    f0, 0x10(r31)
branch_0x8007d478:
    lfs     f1, -0x699c(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1f4
    ble-    branch_0x8007d4a0
    li      r3, 0x1
    b       branch_0x8007d4a4

branch_0x8007d4a0:
    li      r3, 0x0
branch_0x8007d4a4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__22TNerveElecNokonokoTurnFv
__dt__22TNerveElecNokonokoTurnFv: # 0x8007d4bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007d500
    lis     r3, 0x803b
    addi    r0, r3, 0x2f20
    stw     r0, 0x0(r31)
    beq-    branch_0x8007d4f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007d4f0:
    extsh.  r0, r4
    ble-    branch_0x8007d500
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007d500:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveElecNokonokoCollectCFP24TSpineBase_10TLiveActor_
execute__25TNerveElecNokonokoCollectCFP24TSpineBase_10TLiveActor_: # 0x8007d518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    mr      r30, r4
    stw     r29, 0x7c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d5fc
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d558
    li      r0, 0x1
    b       branch_0x8007d55c

branch_0x8007d558:
    li      r0, 0x0
branch_0x8007d55c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007d57c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007d57c:
    lwz     r3, 0x194(r31)
    lfs     f0, -0x699c(rtoc)
    stw     r3, 0x5c(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    beq-    branch_0x8007d5b4
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f2, 0x68(sp)
branch_0x8007d5b4:
    lwz     r3, 0x5c(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x60(sp)
    lwz     r3, 0x64(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x68(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x5c(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x60(sp)
    lwz     r3, 0x64(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x68(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x8007d5fc:
    lbz     r0, -0x6dc0(r13)
    lwz     r29, 0x194(r31)
    extsb.  r0, r0
    bne-    branch_0x8007d644
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dbc(r13)
    addi    r0, r3, 0x2ed0
    lis     r4, 0x8008
    stw     r0, -0x6dbc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcfc
    subi    r4, r4, 0x38d4
    subi    r3, r13, 0x6dbc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dc0(r13)
branch_0x8007d644:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6dbc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8007d660
    li      r0, 0x0
    b       branch_0x8007d664

branch_0x8007d660:
    li      r0, 0x1
branch_0x8007d664:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d684
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    b       branch_0x8007d694

branch_0x8007d684:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x699c(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x8007d694:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d6a8
    li      r0, 0x1
    b       branch_0x8007d6ac

branch_0x8007d6a8:
    li      r0, 0x0
branch_0x8007d6ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d724
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    fctiwz  f0, f1
    stfd    f0, 0x70(sp)
    lwz     r4, 0x74(sp)
    cmpwi   r4, 0x14
    ble-    branch_0x8007d6e4
    lwz     r3, 0x194(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x8007d6e4:
    cmpwi   r4, 0x20
    ble-    branch_0x8007d708
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007d708:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007d7c0
    li      r3, 0x1
    b       branch_0x8007d7d8

branch_0x8007d724:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x320
    bgt-    branch_0x8007d740
    lwz     r3, 0x194(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8007d7c0
branch_0x8007d740:
    lbz     r0, -0x6dd8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007d784
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dd4(r13)
    addi    r0, r3, 0x2f00
    lis     r4, 0x8008
    stw     r0, -0x6dd4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcd8
    subi    r4, r4, 0x30c8
    subi    r3, r13, 0x6dd4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dd8(r13)
branch_0x8007d784:
    subi    r4, r13, 0x6dd4
    cmplwi  r4, 0x0
    beq-    branch_0x8007d7b8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8007d7b8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8007d7b8:
    li      r3, 0x1
    b       branch_0x8007d7d8

branch_0x8007d7c0:
    lfs     f1, -0x699c(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x8007d7d8:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl execute__23TNerveElecNokonokoShootCFP24TSpineBase_10TLiveActor_
execute__23TNerveElecNokonokoShootCFP24TSpineBase_10TLiveActor_: # 0x8007d7f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007d834
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007d834:
    lwz     r3, 0x15c(r30)
    cmpwi   r3, 0x9
    bne-    branch_0x8007d848
    li      r0, 0x1
    b       branch_0x8007d84c

branch_0x8007d848:
    li      r0, 0x0
branch_0x8007d84c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d88c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007d9d0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x198(r30)
    b       branch_0x8007d9d0

branch_0x8007d88c:
    cmpwi   r3, 0xc
    bne-    branch_0x8007d89c
    li      r0, 0x1
    b       branch_0x8007d8a0

branch_0x8007d89c:
    li      r0, 0x0
branch_0x8007d8a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007d9d0
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x697c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8007d8d8
    lwz     r3, 0x194(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
branch_0x8007d8d8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6974(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007d904
    lfs     f1, -0x699c(rtoc)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x8007d904:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6974(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8007d93c
    lwz     r3, 0x194(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r0, 0x1a4(r30)
branch_0x8007d93c:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007d9d0
    lbz     r0, -0x6df0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007d994
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dec(r13)
    addi    r0, r3, 0x2f30
    lis     r4, 0x8008
    stw     r0, -0x6dec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcb4
    subi    r4, r4, 0x3380
    subi    r3, r13, 0x6dec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df0(r13)
branch_0x8007d994:
    subi    r4, r13, 0x6dec
    cmplwi  r4, 0x0
    beq-    branch_0x8007d9c8
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8007d9c8
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8007d9c8:
    li      r3, 0x1
    b       branch_0x8007d9d4

branch_0x8007d9d0:
    li      r3, 0x0
branch_0x8007d9d4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__23TNerveElecNokonokoShootFv
__dt__23TNerveElecNokonokoShootFv: # 0x8007d9ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8007da30
    lis     r3, 0x803b
    addi    r0, r3, 0x2f40
    stw     r0, 0x0(r31)
    beq-    branch_0x8007da20
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8007da20:
    extsh.  r0, r4
    ble-    branch_0x8007da30
    mr      r3, r31
    bl      __dl__FPv
branch_0x8007da30:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reflect__13TElecCarapaceFP9THitActor
reflect__13TElecCarapaceFP9THitActor: # 0x8007da48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x170(r3)
    cmplw   r0, r30
    beq-    branch_0x8007dc44
    li      r3, 0x0
    stb     r3, 0x184(r31)
    li      r0, 0x1
    stw     r30, 0x170(r31)
    stb     r0, 0x176(r31)
    stb     r3, 0x175(r31)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x10(r31)
    lfs     f4, 0x18(r30)
    fsubs   f0, f1, f0
    lfs     f3, 0x18(r31)
    lfs     f2, -0x699c(rtoc)
    fsubs   f1, f4, f3
    stfs    f0, 0x38(sp)
    stfs    f2, 0x3c(sp)
    stfs    f1, 0x40(sp)
    lfs     f1, 0x38(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8007dae0
    lfs     f0, 0x3c(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8007dae0
    lfs     f0, 0x40(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8007dae0
    lfs     f0, -0x6978(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
branch_0x8007dae0:
    addi    r3, sp, 0x38
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x40(sp)
    lfs     f0, 0x38(sp)
    lfs     f4, -0x699c(rtoc)
    fdivs   f0, f1, f0
    lfs     f2, -0x6978(rtoc)
    fabs    f0, f0
    fmr     f5, f4
    fcmpo   cr0, f0, f2
    ble-    branch_0x8007db30
    lfs     f1, 0x18(r30)
    lfs     f0, 0x18(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007db28
    fmr     f5, f2
    b       branch_0x8007db4c

branch_0x8007db28:
    lfs     f5, -0x6970(rtoc)
    b       branch_0x8007db4c

branch_0x8007db30:
    lfs     f1, 0x10(r30)
    lfs     f0, 0x10(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007db48
    fmr     f4, f2
    b       branch_0x8007db4c

branch_0x8007db48:
    lfs     f4, -0x6970(rtoc)
branch_0x8007db4c:
    lfs     f0, 0x3c(sp)
    li      r0, 0x0
    lfs     f2, -0x699c(rtoc)
    lfs     f6, 0x38(sp)
    fmuls   f0, f0, f2
    lfs     f1, 0x40(sp)
    lfs     f3, -0x696c(rtoc)
    fmadds  f0, f6, f4, f0
    fmadds  f0, f1, f5, f0
    fmuls   f3, f3, f0
    fmuls   f0, f6, f3
    stfs    f0, 0xac(r31)
    lfs     f1, -0x6968(rtoc)
    stfs    f1, 0xb0(r31)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f3
    stfs    f0, 0xb4(r31)
    lfs     f0, 0xc8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    stb     r0, 0x174(r31)
    lfs     f3, 0xac(r31)
    fcmpo   cr0, f3, f2
    ble-    branch_0x8007dbb8
    lfs     f0, 0xb4(r31)
    fcmpo   cr0, f0, f2
    bgt-    branch_0x8007dbd0
branch_0x8007dbb8:
    lfs     f1, -0x699c(rtoc)
    fcmpo   cr0, f3, f1
    bge-    branch_0x8007dbd8
    lfs     f0, 0xb4(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8007dbd8
branch_0x8007dbd0:
    li      r0, 0x1
    stb     r0, 0x174(r31)
branch_0x8007dbd8:
    lwz     r3, 0x16c(r31)
    li      r4, 0x0
    stw     r4, 0x1c(sp)
    addi    r5, r3, 0x10
    lwz     r3, 0x10(r3)
    lwz     r0, 0x4(r5)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x28(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x8007dc44:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl receiveMessage__13TElecCarapaceFP9THitActorUl
receiveMessage__13TElecCarapaceFP9THitActorUl: # 0x8007dc5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    cmplwi  r31, 0xd
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x8007dcac
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007dcac:
    cmplwi  r31, 0x0
    bne-    branch_0x8007dcc0
    addi    r3, r30, 0x0
    li      r4, MARIOMSG_HURTELECTRIC
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x8007dcc0:
    cmplwi  r31, 0xf
    bne-    branch_0x8007dcd0
    li      r3, 0x1
    b       branch_0x8007dcd4

branch_0x8007dcd0:
    li      r3, 0x0
branch_0x8007dcd4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl sendMessage__13TElecCarapaceFv
sendMessage__13TElecCarapaceFv: # 0x8007dcec
    mflr    r0
    lis     r5, 0x8008
    stw     r0, 0x4(sp)
    lis     r4, 0x803f
    stwu    sp, -0xa0(sp)
    stmw    r24, 0x80(sp)
    subi    r28, r5, 0x38d4
    addi    r29, r4, 0xcfc
    lis     r5, 0x803b
    lis     r4, 0x803b
    addi    r26, r3, 0x0
    subi    r30, r5, 0x48f4
    addi    r31, r4, 0x2ed0
    li      r27, 0x0
    li      r25, 0x0
    b       branch_0x8007dec4

branch_0x8007dd2c:
    lwz     r3, 0x44(r26)
    lwzx    r4, r3, r25
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8007dd4c
    li      r0, 0x1
    b       branch_0x8007dd50

branch_0x8007dd4c:
    li      r0, 0x0
branch_0x8007dd50:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007de3c
    addi    r3, r26, 0x0
    li      r4, MARIOMSG_HURTELECTRIC
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8007debc
    lwz     r0, 0x64(r26)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r26)
    lbz     r0, -0x6dc0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007dda4
    stw     r30, -0x6dbc(r13)
    subi    r3, r13, 0x6dbc
    addi    r4, r28, 0x0
    stw     r31, -0x6dbc(r13)
    addi    r5, r29, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dc0(r13)
branch_0x8007dda4:
    lwz     r4, 0x8c(r26)
    subi    r3, r13, 0x6dbc
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8007debc
    lbz     r0, -0x6dc0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007dde0
    stw     r30, -0x6dbc(r13)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    stw     r31, -0x6dbc(r13)
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dc0(r13)
branch_0x8007dde0:
    subi    r6, r13, 0x6dbc
    lwz     r5, 0x8c(r26)
    cmplwi  r6, 0x0
    beq-    branch_0x8007debc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8007de2c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8007de2c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8007de2c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x8007debc

branch_0x8007de3c:
    lwz     r0, 0x16c(r26)
    cmplw   r4, r0
    bne-    branch_0x8007de58
    lwz     r0, 0x64(r26)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r26)
    b       branch_0x8007debc

branch_0x8007de58:
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8007de70
    li      r0, 0x1
    b       branch_0x8007de74

branch_0x8007de70:
    li      r0, 0x0
branch_0x8007de74:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007dea8
    li      r24, 0x0
    stw     r24, 0x54(sp)
    li      r0, 0x168
    stw     r0, 0x58(sp)
branch_0x8007de8c:
    bl      rand
    bl      rand
    bl      rand
    addi    r24, r24, 0x1
    cmpwi   r24, 0x5
    blt+    branch_0x8007de8c
    b       branch_0x8007debc

branch_0x8007dea8:
    lbz     r0, -0x7ee8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8007debc
    mr      r3, r26
    bl      reflect__13TElecCarapaceFP9THitActor
branch_0x8007debc:
    addi    r27, r27, 0x1
    addi    r25, r25, 0x4
branch_0x8007dec4:
    lhz     r0, 0x48(r26)
    cmpw    r27, r0
    blt+    branch_0x8007dd2c
    lmw     r24, 0x80(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl calcRootMatrix__13TElecCarapaceFv
calcRootMatrix__13TElecCarapaceFv: # 0x8007dee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    lfs     f2, 0x34(r3)
    lfs     f0, 0x188(r3)
    lfs     f1, -0x6964(rtoc)
    fadds   f3, f2, f0
    lfs     f4, 0x38(r3)
    lfs     f2, 0x30(r3)
    fmuls   f0, f1, f4
    lwz     r3, 0x74(r3)
    fmuls   f2, f1, f2
    lwz     r3, 0x4(r3)
    fmuls   f1, f1, f3
    fctiwz  f0, f0
    lfs     f3, 0x18(r31)
    fctiwz  f5, f2
    lfs     f2, 0x14(r31)
    fctiwz  f4, f1
    stfd    f0, 0x90(sp)
    addi    r3, r3, 0x20
    stfd    f5, 0xa0(sp)
    lfs     f1, 0x10(r31)
    stfd    f4, 0x98(sp)
    lwz     r4, 0xa4(sp)
    lwz     r5, 0x9c(sp)
    lwz     r6, 0x94(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r5, 0x74(r31)
    li      r4, 0x20bc
    lwz     r3, 0x24(r31)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x28(r31)
    stw     r3, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r5)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8007dfac
    addi    r4, r31, 0x10
    li      r3, 0x20bc
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8007dfac:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17a
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x60
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007e00c
    lwz     r4, 0x16c(r31)
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
branch_0x8007e00c:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17b
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x60
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007e06c
    lwz     r4, 0x16c(r31)
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
branch_0x8007e06c:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17c
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x60
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007e0cc
    lwz     r4, 0x16c(r31)
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
branch_0x8007e0cc:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl bind__13TElecCarapaceFv
bind__13TElecCarapaceFv: # 0x8007e0e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      bind__16TEnemyAttachmentFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl shoot__13TElecCarapaceFv
shoot__13TElecCarapaceFv: # 0x8007e120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stw     r31, 0xc4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xc0(sp)
    li      r30, 0x0
    stw     r30, 0x180(r3)
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8007e3f8
    lwz     r6, MarioHitActorPos(r13)
    addi    r3, sp, 0x5c
    addi    r4, r31, 0x10
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x64(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x5c(sp)
    addi    r3, sp, 0xa8
    lwz     r5, 0x60(sp)
    mr      r4, r3
    stw     r0, 0xa8(sp)
    lwz     r0, 0x64(sp)
    stw     r5, 0xac(sp)
    stw     r0, 0xb0(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x16c(r31)
    li      r0, 0x2
    lfs     f0, 0xa8(sp)
    lwz     r3, 0x1a0(r3)
    lfs     f2, 0x3b4(r3)
    fmuls   f0, f0, f2
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x14(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x18(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lbz     r3, 0x174(r31)
    cntlzw  r3, r3
    srwi    r3, r3, 5
    stb     r3, 0x174(r31)
    lfs     f0, -0x699c(rtoc)
    stfs    f0, 0x188(r31)
    stw     r0, 0x150(r31)
    stb     r30, 0x176(r31)
    stb     r30, 0x168(r31)
    stb     r30, 0x184(r31)
    stb     r30, 0x175(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lbz     r0, -0x6dc8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007e280
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dc4(r13)
    addi    r0, r3, 0x2ee0
    lis     r4, 0x8008
    stw     r0, -0x6dc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcf0
    subi    r4, r4, 0x3324
    subi    r3, r13, 0x6dc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dc8(r13)
branch_0x8007e280:
    lwz     r3, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6dc4
    stw     r4, 0x8(r3)
    stw     r4, 0x20(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    stw     r4, 0x1c(r3)
    stw     r4, 0x8c(sp)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0xb0(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x98(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x98(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    lfs     f1, -0x6988(rtoc)
    lfs     f0, -0x6960(rtoc)
    stfs    f1, 0x68(sp)
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x68(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x104(r31)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    lfd     f3, -0x6950(rtoc)
    cmplwi  r3, 0x0
    stw     r0, 0xb8(sp)
    lfs     f0, -0x695c(rtoc)
    lfd     f2, 0xb8(sp)
    lfs     f1, 0x68(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f31, f1, f0
    beq-    branch_0x8007e364
    addi    r6, r3, 0x10
    b       branch_0x8007e368

branch_0x8007e364:
    addi    r6, r31, 0x108
branch_0x8007e368:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x48
    lwz     r0, 0x4(r6)
    addi    r4, r31, 0x10
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x50(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x48
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f31, f1
    stfs    f0, 0x178(r31)
    lfs     f1, -0x6958(rtoc)
    lfs     f0, -0x6954(rtoc)
    stfs    f1, 0x74(sp)
    stfs    f0, 0x78(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x74(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6950(rtoc)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x695c(rtoc)
    stw     r0, 0xb8(sp)
    lfs     f1, 0x74(sp)
    lfd     f2, 0xb8(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x17c(r31)
branch_0x8007e3f8:
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    mtlr    r0
    lwz     r30, 0xc0(sp)
    addi    sp, sp, 0xd0
    blr


.globl appear__13TElecCarapaceFv
appear__13TElecCarapaceFv: # 0x8007e414
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x0
    bnelr-    

    li      r0, 0x1
    stw     r0, 0x150(r3)
    li      r0, 0x0
    lwz     r6, 0x16c(r3)
    lwz     r5, 0x10(r6)
    lwz     r4, 0x14(r6)
    stw     r5, 0x10(r3)
    stw     r4, 0x14(r3)
    lwz     r4, 0x18(r6)
    stw     r4, 0x18(r3)
    lwz     r4, 0x16c(r3)
    lfs     f0, 0x24(r4)
    stfs    f0, 0x164(r3)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x24(r3)
    lfs     f0, -0x6948(rtoc)
    stfs    f0, 0xbc(r3)
    stw     r0, 0x170(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    blr


.globl getNowGravity__13TElecCarapaceFv
getNowGravity__13TElecCarapaceFv: # 0x8007e47c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x16c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    lfs     f1, 0x350(r3)
    mtlr    r0
    blr


.globl behaveToHitWall__13TElecCarapaceFPC12TBGCheckData
behaveToHitWall__13TElecCarapaceFPC12TBGCheckData: # 0x8007e4b0
    stwu    sp, -0x38(sp)
    lwz     r0, 0x180(r3)
    cmpwi   r0, 0x0
    bgt-    branch_0x8007e5a8
    lbz     r0, -0x7ee8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8007e5a8
    li      r0, 0x1
    stw     r0, 0x180(r3)
    li      r5, 0x0
    stb     r5, 0x184(r3)
    stb     r0, 0x176(r3)
    stb     r0, 0x175(r3)
    lfs     f1, 0x98(r3)
    lfs     f0, 0x38(r4)
    lfs     f2, 0x94(r3)
    fmuls   f0, f1, f0
    lfs     f1, 0x34(r4)
    lfs     f4, 0x9c(r3)
    lfs     f3, 0x3c(r4)
    fmadds  f1, f2, f1, f0
    lfs     f2, -0x6944(rtoc)
    lfs     f0, 0x34(r4)
    fmadds  f1, f4, f3, f1
    fmuls   f1, f2, f1
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r3)
    lfs     f0, -0x6988(rtoc)
    stfs    f0, 0xb0(r3)
    lfs     f0, 0x3c(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0xb4(r3)
    lfs     f1, -0x6968(rtoc)
    lfs     f0, 0xc8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r4, 0x16c(r3)
    stw     r5, 0x24(sp)
    addi    r6, r4, 0x10
    lwz     r4, 0x10(r4)
    lwz     r0, 0x4(r6)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x30(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0xf4(r3)
    lwz     r4, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r4, 0xf8(r3)
    stw     r0, 0xfc(r3)
    lwz     r0, 0x30(sp)
    stw     r0, 0x100(r3)
    lwz     r0, 0x24(sp)
    stw     r0, 0x104(r3)
    lwz     r4, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r4, 0x108(r3)
    stw     r0, 0x10c(r3)
    lwz     r0, 0x30(sp)
    stw     r0, 0x110(r3)
    stw     r5, 0x118(r3)
branch_0x8007e5a8:
    addi    sp, sp, 0x38
    blr


.globl kill__13TElecCarapaceFv
kill__13TElecCarapaceFv: # 0x8007e5b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      kill__16TEnemyAttachmentFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToHitGround__13TElecCarapaceFv
behaveToHitGround__13TElecCarapaceFv: # 0x8007e5d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x176(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8007e5f8
    li      r0, 0x1
    stb     r0, 0x184(r31)
branch_0x8007e5f8:
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8007e628
    cmplwi  r3, 0x101
    beq-    branch_0x8007e628
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8007e628
    cmplwi  r3, 0x4104
    bne-    branch_0x8007e630
branch_0x8007e628:
    li      r0, 0x1
    b       branch_0x8007e634

branch_0x8007e630:
    li      r0, 0x0
branch_0x8007e634:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007e650
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007e650:
    li      r0, 0x0
    stb     r0, 0x176(r31)
    li      r0, 0x1
    stb     r0, 0x168(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x699c(rtoc)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setBehavior__13TElecCarapaceFv
setBehavior__13TElecCarapaceFv: # 0x8007e690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x16c(r3)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8007e6c8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007e6c8:
    lbz     r0, 0x168(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8007e6dc
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x14(r31)
branch_0x8007e6dc:
    li      r0, 0x0
    stb     r0, 0x168(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__13TElecCarapaceFUlPQ26JDrama9TGraphics
perform__13TElecCarapaceFUlPQ26JDrama9TGraphics: # 0x8007e6f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    bl      perform__16TEnemyAttachmentFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x8007e748
    lwz     r3, 0x180(r31)
    cmpwi   r3, 0x0
    beq-    branch_0x8007e748
    addi    r0, r3, 0x1
    stw     r0, 0x180(r31)
    lwz     r0, 0x180(r31)
    cmpwi   r0, 0x5
    ble-    branch_0x8007e748
    li      r0, 0x0
    stw     r0, 0x180(r31)
branch_0x8007e748:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8007e830
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007e764
    li      r0, 0x1
    b       branch_0x8007e768

branch_0x8007e764:
    li      r0, 0x0
branch_0x8007e768:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007e830
    lwz     r3, 0x16c(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8007e830
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 30
    beq-    branch_0x8007e790
    b       branch_0x8007e830

branch_0x8007e790:
    lfs     f0, -0x699c(rtoc)
    li      r4, 0x0
    li      r5, 0x1
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stb     r4, 0x44(sp)
    stb     r5, 0x45(sp)
    stw     r4, 0x48(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x30(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8007e7ec
    b       branch_0x8007e7f0

branch_0x8007e7ec:
    mr      r5, r4
branch_0x8007e7f0:
    cmpwi   r5, 0x0
    bne-    branch_0x8007e808
    lfs     f0, 0xc8(r31)
    li      r0, 0x0
    stfs    f0, 0x2c(sp)
    stb     r0, 0x45(sp)
branch_0x8007e808:
    lwz     r3, 0x16c(r31)
    addi    r4, sp, 0x28
    lfs     f0, 0xb8(r3)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x3c(sp)
    lwz     r5, 0x4c(r31)
    lwz     r3, -0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x8007e830:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl loadInit__13TElecCarapaceFP11TSpineEnemyPCc
loadInit__13TElecCarapaceFP11TSpineEnemyPCc: # 0x8007e848
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      loadInit__16TEnemyAttachmentFP11TSpineEnemyPCc
    lwz     r31, 0x8(sp)
    lis     r3, 0x8038
    subi    r30, r3, 0x5168
    lwz     r0, 0x160(r31)
    mr      r3, r30
    stw     r0, 0x16c(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x4c
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x70
    addi    r4, sp, 0x48
    stw     r0, 0x48(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x70(sp)
    addi    r5, sp, 0x5c
    addi    r4, r30, 0x0
    stw     r0, 0x6c(sp)
    addi    r3, sp, 0x58
    addi    r6, sp, 0x8
    lwz     r0, 0x6c(sp)
    stw     r0, 0x5c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x6940(rtoc)
    lis     r4, 0x1000
    lfs     f3, -0x697c(rtoc)
    mr      r3, r31
    fmr     f2, f1
    fmr     f4, f3
    addi    r4, r4, 0xb
    li      r5, 0x3
    lis     r6, 0x9800
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r31)
    stw     r0, 0x150(r31)
    lbz     r0, -0x6dc8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007e974
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dc4(r13)
    addi    r0, r3, 0x2ee0
    lis     r4, 0x8008
    stw     r0, -0x6dc4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcf0
    subi    r4, r4, 0x3324
    subi    r3, r13, 0x6dc4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dc8(r13)
branch_0x8007e974:
    lwz     r30, 0x8(sp)
    li      r31, 0x0
    subi    r3, r13, 0x6dc4
    lwz     r4, 0x8c(r30)
    li      r0, 0x12c
    stw     r31, 0x8(r4)
    stw     r31, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r31, 0x1c(r4)
    stw     r31, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    subf    r29, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6950(rtoc)
    stw     r0, 0x94(sp)
    lis     r4, 0x4330
    xoris   r0, r29, 0x8000
    lfs     f1, -0x695c(rtoc)
    stw     r4, 0x90(sp)
    lwz     r3, 0x74(sp)
    stw     r0, 0x8c(sp)
    lfd     f0, 0x90(sp)
    stw     r4, 0x88(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x88(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r0, 0x84(sp)
    add     r0, r3, r0
    cmpwi   r0, 0x96
    bge-    branch_0x8007ea10
    stb     r31, 0x174(r30)
branch_0x8007ea10:
    lfs     f0, -0x6940(rtoc)
    lwz     r3, 0x8(sp)
    stfs    f0, 0xc0(r3)
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __ct__13TElecCarapaceFPCc
__ct__13TElecCarapaceFPCc: # 0x8007ea38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__16TEnemyAttachmentFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x2f50
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x16c(r31)
    stw     r4, 0x170(r31)
    stb     r0, 0x174(r31)
    stb     r4, 0x175(r31)
    stb     r4, 0x176(r31)
    lfs     f0, -0x699c(rtoc)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x17c(r31)
    stw     r4, 0x180(r31)
    stb     r4, 0x184(r31)
    stfs    f0, 0x188(r31)
    stfs    f0, 0x198(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl genRandomItem__13TElecNokonokoFv
genRandomItem__13TElecNokonokoFv: # 0x8007eab4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr      r3, r31
    bl      genRandomItem__11TSmallEnemyFv
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8007eb54
    lwz     r6, 0x194(r31)
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    addi    r4, r4, 0xe
    lfs     f1, 0x10(r6)
    lfs     f2, 0x14(r6)
    li      r5, 0x1
    lfs     f3, 0x18(r6)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    beq-    branch_0x8007eb54
    lfs     f1, -0x699c(rtoc)
    stfs    f1, 0xac(r3)
    lfs     f0, -0x6958(rtoc)
    stfs    f0, 0xb0(r3)
    stfs    f1, 0xb4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
branch_0x8007eb54:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMeltAnm__13TElecNokonokoFv
setMeltAnm__13TElecNokonokoFv: # 0x8007eb68
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xf0(r31)
    li      r0, 0x3
    li      r4, 0xca
    ori     r3, r3, 0x8
    stw     r3, 0xf0(r31)
    li      r6, 0x0
    li      r7, 0x0
    lfs     f0, -0x699c(rtoc)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stw     r0, 0x18c(r31)
    lwz     r5, 0x194(r31)
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0xac(r5)
    stw     r0, 0xb0(r5)
    lwz     r0, 0x2c(sp)
    stw     r0, 0xb4(r5)
    lwz     r5, 0x74(r31)
    lwz     r3, gpMarioParticleManager(r13)
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007ec28
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
branch_0x8007ec28:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setDeadAnm__13TElecNokonokoFv
setDeadAnm__13TElecNokonokoFv: # 0x8007ec3c
    mflr    r0
    li      r4, 0x1
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


.globl setRunAnm__13TElecNokonokoFv
setRunAnm__13TElecNokonokoFv: # 0x8007ec6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0xa
    bne-    branch_0x8007ec8c
    li      r0, 0x1
    b       branch_0x8007ec90

branch_0x8007ec8c:
    li      r0, 0x0
branch_0x8007ec90:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007ecac
    lwz     r12, 0x0(r3)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007ecac:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWalkAnm__13TElecNokonokoFv
setWalkAnm__13TElecNokonokoFv: # 0x8007ecbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0xa
    bne-    branch_0x8007ecdc
    li      r0, 0x1
    b       branch_0x8007ece0

branch_0x8007ecdc:
    li      r0, 0x0
branch_0x8007ece0:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007ecfc
    lwz     r12, 0x0(r3)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007ecfc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWaitAnm__13TElecNokonokoFv
setWaitAnm__13TElecNokonokoFv: # 0x8007ed0c
    mflr    r0
    li      r4, 0x11
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    stw     r0, 0x198(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBasNameTable__13TElecNokonokoCFv
getBasNameTable__13TElecNokonokoCFv: # 0x8007ed44
    lis     r3, 0x803b
    addi    r3, r3, 0x2e60
    blr


.globl behaveToWater__13TElecNokonokoFP9THitActor
behaveToWater__13TElecNokonokoFP9THitActor: # 0x8007ed50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0xc
    bne-    branch_0x8007ed7c
    li      r0, 0x1
    b       branch_0x8007ed80

branch_0x8007ed7c:
    li      r0, 0x0
branch_0x8007ed80:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007eda0
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x693c(rtoc)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x8007eee0
branch_0x8007eda0:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x8007eee0
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007edc8
    li      r0, 0x1
    b       branch_0x8007edcc

branch_0x8007edc8:
    li      r0, 0x0
branch_0x8007edcc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007ede4
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007ede4
    b       branch_0x8007eee0

branch_0x8007ede4:
    li      r30, 0x1
    stb     r30, 0x165(r31)
    li      r0, 0x0
    stw     r0, 0x160(r31)
    lbz     r0, -0x6de0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ee34
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ddc(r13)
    addi    r0, r3, 0x2f10
    lis     r4, 0x8008
    stw     r0, -0x6ddc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xccc
    subi    r4, r4, 0x394c
    subi    r3, r13, 0x6ddc
    bl      __register_global_object
    stb     r30, -0x6de0(r13)
branch_0x8007ee34:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6ddc
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x8007eee0
    lbz     r0, -0x6de0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ee88
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6ddc(r13)
    addi    r0, r4, 0x2f10
    lis     r4, 0x8008
    stw     r0, -0x6ddc(r13)
    lis     r5, 0x803f
    subi    r4, r4, 0x394c
    addi    r5, r5, 0xccc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6de0(r13)
branch_0x8007ee88:
    subi    r6, r13, 0x6ddc
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8007eee0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8007eed4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8007eed4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8007eed4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8007eee0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl behaveToFindMario__13TElecNokonokoFv
behaveToFindMario__13TElecNokonokoFv: # 0x8007eef8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x8007ef44
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8007ef44
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8007ef44:
    bl      theNerve__18TNerveWalkerAttackFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x8007ef7c
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8007ef7c
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8007ef7c:
    lbz     r0, -0x6de8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007efc0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6de4(r13)
    addi    r0, r3, 0x2f20
    lis     r4, 0x8008
    stw     r0, -0x6de4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcc0
    subi    r4, r4, 0x2b44
    subi    r3, r13, 0x6de4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6de8(r13)
branch_0x8007efc0:
    subi    r5, r13, 0x6de4
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8007eff8
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8007eff8
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8007eff8:
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x699c(rtoc)
    stw     r3, 0x1c(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    beq-    branch_0x8007f030
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x20(sp)
    stfs    f1, 0x24(sp)
    stfs    f2, 0x28(sp)
branch_0x8007f030:
    lwz     r3, 0x1c(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x20(sp)
    lwz     r3, 0x24(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x28(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x1c(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x20(sp)
    lwz     r3, 0x24(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x28(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isResignationAttack__13TElecNokonokoFv
isResignationAttack__13TElecNokonokoFv: # 0x8007f08c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    lwz     r3, 0x1a0(r3)
    rlwinm. r0, r0, 0, 29, 29
    lfs     f31, 0x3a0(r3)
    bne-    branch_0x8007f1c8
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8007f0cc
    addi    r4, r3, 0x10
    b       branch_0x8007f0d0

branch_0x8007f0cc:
    addi    r4, r31, 0x108
branch_0x8007f0d0:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x34(sp)
    lfs     f2, 0x38(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    bge-    branch_0x8007f1c8
    lbz     r0, -0x6df8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f188
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6df4(r13)
    addi    r0, r3, 0x2f40
    lis     r4, 0x8008
    stw     r0, -0x6df4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xca8
    subi    r4, r4, 0x2614
    subi    r3, r13, 0x6df4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df8(r13)
branch_0x8007f188:
    subi    r5, r13, 0x6df4
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8007f1c0
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8007f1c0
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8007f1c0:
    li      r3, 0x1
    b       branch_0x8007f1cc

branch_0x8007f1c8:
    li      r3, 0x0
branch_0x8007f1cc:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl receiveMessage__13TElecNokonokoFP9THitActorUl
receiveMessage__13TElecNokonokoFP9THitActorUl: # 0x8007f1e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    cmplwi  r31, 0xd
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x8007f218
    cmplwi  r31, 0xb
    bne-    branch_0x8007f24c
branch_0x8007f218:
    lwz     r0, 0xf0(r29)
    addi    r3, r29, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x194(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007f24c:
    cmplwi  r31, 0x4
    bne-    branch_0x8007f278
    lwz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8007f278
    lwz     r0, 0x64(r29)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    stw     r30, 0x68(r29)
    b       branch_0x8007f34c

branch_0x8007f278:
    subi    r0, r31, 0x6
    cmplwi  r0, 0x1
    bgt-    branch_0x8007f2a0
    lwz     r0, 0x68(r29)
    cmplw   r0, r30
    bne-    branch_0x8007f2a0
    li      r0, 0x0
    stw     r0, 0x68(r29)
    li      r3, 0x1
    b       branch_0x8007f34c

branch_0x8007f2a0:
    cmplwi  r31, 0x0
    bne-    branch_0x8007f2ec
    lwz     r0, 0x1a4(r29)
    cmpwi   r0, 0x1
    bne-    branch_0x8007f2d8
    li      r0, 0x1
    stb     r0, 0x13c(r29)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8007f34c

branch_0x8007f2d8:
    addi    r3, r29, 0x0
    li      r4, MARIOMSG_HURTELECTRIC
    bl      SMS_SendMessageToMario__FP9THitActorUl
    li      r3, 0x0
    b       branch_0x8007f34c

branch_0x8007f2ec:
    cmplwi  r31, 0xf
    bne-    branch_0x8007f348
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x8007f32c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
    b       branch_0x8007f340

branch_0x8007f32c:
    lwz     r3, 0x194(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x8007f340:
    li      r3, 0x1
    b       branch_0x8007f34c

branch_0x8007f348:
    li      r3, 0x0
branch_0x8007f34c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl sendAttackMsgToMario__13TElecNokonokoFv
sendAttackMsgToMario__13TElecNokonokoFv: # 0x8007f368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x1a4(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8007f38c
    li      r4, MARIOMSG_HURTELECTRIC
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x8007f394

branch_0x8007f38c:
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x8007f394:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__13TElecNokonokoFv
calcRootMatrix__13TElecNokonokoFv: # 0x8007f3a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    mr      r31, r3
    stw     r30, 0xc8(sp)
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8007f3d4
    li      r0, 0x1
    b       branch_0x8007f3d8

branch_0x8007f3d4:
    li      r0, 0x0
branch_0x8007f3d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007f5e0
    lbz     r0, -0x6de0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f424
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ddc(r13)
    addi    r0, r3, 0x2f10
    lis     r4, 0x8008
    stw     r0, -0x6ddc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xccc
    subi    r4, r4, 0x394c
    subi    r3, r13, 0x6ddc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6de0(r13)
branch_0x8007f424:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ddc
    lwz     r30, 0x14(r3)
    cmplw   r30, r0
    beq-    branch_0x8007f5e0
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x8007f5e0
    lbz     r0, -0x6df0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f488
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dec(r13)
    addi    r0, r3, 0x2f30
    lis     r4, 0x8008
    stw     r0, -0x6dec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xcb4
    subi    r4, r4, 0x3380
    subi    r3, r13, 0x6dec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df0(r13)
branch_0x8007f488:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6dec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8007f5e0
    lwz     r3, gpMSound(r13)
    li      r4, 0x20bb
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8007f4cc
    addi    r4, r31, 0x10
    li      r3, 0x20bb
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8007f4cc:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17a
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x150
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007f528
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
branch_0x8007f528:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17b
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x150
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007f584
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
branch_0x8007f584:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17c
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x150
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007f5e0
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
branch_0x8007f5e0:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x8007f728
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17d
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007f644
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
branch_0x8007f644:
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1a8
    lwz     r3, 0x4(r3)
    li      r4, 0x17e
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x180
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1a8(r31)
    stfs    f1, 0x1ac(r31)
    stfs    f2, 0x1b0(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007f6bc
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
branch_0x8007f6bc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6938(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8007f728
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1a8
    li      r4, 0x17f
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8007f728
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
branch_0x8007f728:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl attackToMario__13TElecNokonokoFv
attackToMario__13TElecNokonokoFv: # 0x8007f740
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0xca8
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r29, 0x5c(sp)
    lwz     r3, 0x8c(r3)
    lwz     r29, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x8007f934
    mr      r3, r30
    bl      attackToMario__11TSmallEnemyFv
    lbz     r0, -0x6dd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f7c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dcc(r13)
    addi    r0, r3, 0x2ef0
    lis     r3, 0x8008
    stw     r0, -0x6dcc(r13)
    subi    r4, r3, 0x323c
    subi    r3, r13, 0x6dcc
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dd0(r13)
branch_0x8007f7c0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6dcc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8007f934
    lbz     r0, -0x6df0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f814
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dec(r13)
    addi    r0, r3, 0x2f30
    lis     r3, 0x8008
    stw     r0, -0x6dec(r13)
    subi    r4, r3, 0x3380
    subi    r3, r13, 0x6dec
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df0(r13)
branch_0x8007f814:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6dec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8007f934
    lbz     r0, -0x6df8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f868
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6df4(r13)
    addi    r0, r3, 0x2f40
    lis     r3, 0x8008
    stw     r0, -0x6df4(r13)
    subi    r4, r3, 0x2614
    subi    r3, r13, 0x6df4
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6df8(r13)
branch_0x8007f868:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6df4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8007f934
    lwz     r0, 0x1a4(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8007f890
    li      r0, 0x1
    b       branch_0x8007f894

branch_0x8007f890:
    li      r0, 0x0
branch_0x8007f894:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007f934
    lbz     r0, -0x6dd0(r13)
    extsb.  r0, r0
    bne-    branch_0x8007f8dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dcc(r13)
    addi    r0, r3, 0x2ef0
    lis     r3, 0x8008
    stw     r0, -0x6dcc(r13)
    subi    r4, r3, 0x323c
    subi    r3, r13, 0x6dcc
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6dd0(r13)
branch_0x8007f8dc:
    subi    r6, r13, 0x6dcc
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8007f934
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8007f928
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8007f928
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8007f928:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8007f934:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl moveObject__13TElecNokonokoFv
moveObject__13TElecNokonokoFv: # 0x8007f950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      moveObject__12TWalkerEnemyFv
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0xb
    bne-    branch_0x8007f97c
    li      r0, 0x1
    b       branch_0x8007f980

branch_0x8007f97c:
    li      r0, 0x0
branch_0x8007f980:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007f9b4
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8007f9b4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8007f9b4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__13TElecNokonokoFv
setMActorAndKeeper__13TElecNokonokoFv: # 0x8007f9c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8007fa00
    lwz     r4, 0x70(r30)
    addi    r3, r31, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x8007fa00:
    stw     r31, 0x78(r30)
    lis     r3, 0x8038
    subi    r4, r3, 0x517c
    lwz     r3, 0x78(r30)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    li      r5, 0x3
    lwz     r31, 0x74(r30)
    lwz     r4, 0x70(r30)
    lwz     r3, 0x4(r31)
    lwz     r4, 0x60(r4)
    lwz     r3, 0x4(r3)
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    mr      r3, r31
    bl      initDL__6MActorFv
    lwz     r3, 0x4(r31)
    bl      lock__8J3DModelFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl load__13TElecNokonokoFR20JSUMemoryInputStream
load__13TElecNokonokoFR20JSUMemoryInputStream: # 0x8007fa60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl rest__13TElecNokonokoFv
rest__13TElecNokonokoFv: # 0x8007faa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lfs     f0, -0x6934(rtoc)
    stfs    f0, 0xb8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__13TElecNokonokoFP12TLiveManager
init__13TElecNokonokoFP12TLiveManager: # 0x8007fad4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0xa
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a0(r31)
    li      r3, 0x19c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8007fb40
    lis     r3, 0x8038
    subi    r4, r3, 0x515c
    addi    r3, r29, 0x0
    bl      __ct__13TElecCarapaceFPCc
branch_0x8007fb40:
    stw     r29, 0x194(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r6, 0x8c(r31)
    li      r30, 0x0
    lis     r4, 0x8038
    stw     r30, 0x8(r6)
    subi    r5, r4, 0x514c
    addi    r4, r31, 0x0
    stw     r30, 0x20(r6)
    stw     r3, 0x14(r6)
    stw     r3, 0x18(r6)
    stw     r30, 0x1c(r6)
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x194(r31)
    li      r5, 0x3
    lwz     r4, 0x70(r31)
    lwz     r29, 0x74(r3)
    lwz     r4, 0x60(r4)
    lwz     r3, 0x4(r29)
    lwz     r3, 0x4(r3)
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    mr      r3, r29
    bl      initDL__6MActorFv
    lwz     r3, 0x4(r29)
    bl      lock__8J3DModelFv
    stw     r30, 0x30(sp)
    li      r0, 0x12c
    stw     r0, 0x34(sp)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    subf    r30, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6950(rtoc)
    stw     r0, 0x4c(sp)
    lis     r4, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x695c(rtoc)
    stw     r4, 0x48(sp)
    lwz     r3, 0x30(sp)
    stw     r0, 0x44(sp)
    lfd     f0, 0x48(sp)
    stw     r4, 0x40(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x40(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r0, r3, r0
    stw     r0, 0x19c(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl __ct__13TElecNokonokoFPCc
__ct__13TElecNokonokoFPCc: # 0x8007fc4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3098
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x1a4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__20TElecNokonokoManagerFUlPQ26JDrama9TGraphics
perform__20TElecNokonokoManagerFUlPQ26JDrama9TGraphics: # 0x8007fca0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8007fcf8

branch_0x8007fccc:
    lwz     r3, 0x18(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8007fcf8:
    lwz     r3, 0x38(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x8007fd0c
    lwz     r3, 0x14(r27)
    b       branch_0x8007fd24

branch_0x8007fd0c:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r27)
    cmpw    r0, r3
    ble-    branch_0x8007fd20
    b       branch_0x8007fd24

branch_0x8007fd20:
    mr      r3, r0
branch_0x8007fd24:
    cmpw    r30, r3
    blt+    branch_0x8007fccc
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl clipEnemies__20TElecNokonokoManagerFPQ26JDrama9TGraphics
clipEnemies__20TElecNokonokoManagerFPQ26JDrama9TGraphics: # 0x8007fd40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stmw    r27, 0x6c(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    lwz     r3, 0x38(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8007fd78
    lwz     r3, -0x70b0(r13)
    lfs     f31, -0x6930(rtoc)
    lfs     f4, 0x9c(r3)
    b       branch_0x8007fd80

branch_0x8007fd78:
    lfs     f4, 0x68(r3)
    lfs     f31, 0x54(r3)
branch_0x8007fd80:
    lwz     r3, gpCamera(r13)
    lfs     f3, 0xe8(r30)
    lfs     f2, 0x4c(r3)
    lfs     f1, 0x48(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x8007fe44

branch_0x8007fda0:
    lwz     r4, 0x18(r29)
    fmr     f1, f31
    mr      r3, r30
    lwzx    r27, r4, r28
    addi    r4, r27, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8007fdd0
    lwz     r0, 0xf0(r27)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r27)
    b       branch_0x8007fddc

branch_0x8007fdd0:
    lwz     r0, 0xf0(r27)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r27)
branch_0x8007fddc:
    lwz     r4, 0x194(r27)
    lwz     r0, 0x150(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007fdf4
    li      r0, 0x1
    b       branch_0x8007fdf8

branch_0x8007fdf4:
    li      r0, 0x0
branch_0x8007fdf8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007fe3c
    fmr     f1, f31
    addi    r3, r30, 0x0
    addi    r4, r4, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8007fe2c
    lwz     r3, 0x194(r27)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r3)
    b       branch_0x8007fe3c

branch_0x8007fe2c:
    lwz     r3, 0x194(r27)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r3)
branch_0x8007fe3c:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x8007fe44:
    lwz     r0, 0x14(r29)
    cmpw    r31, r0
    blt+    branch_0x8007fda0
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl createModelData__20TElecNokonokoManagerFv
createModelData__20TElecNokonokoManagerFv: # 0x8007fe68
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x2ea8
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__20TElecNokonokoManagerFv
createEnemyInstance__20TElecNokonokoManagerFv: # 0x8007fe9c
    mflr    r0
    li      r3, 0x1b4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8007fef0
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    subi    r4, r4, 0x5138
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3098
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stw     r0, 0x194(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x1a4(r31)
branch_0x8007fef0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initSetEnemies__20TElecNokonokoManagerFv
initSetEnemies__20TElecNokonokoManagerFv: # 0x8007ff08
    blr


.globl load__20TElecNokonokoManagerFR20JSUMemoryInputStream
load__20TElecNokonokoManagerFR20JSUMemoryInputStream: # 0x8007ff0c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r26, r3, 0x0
    subi    r31, r5, 0x5400
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3b8
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800800b0
    stw     r27, 0x10(sp)
    addi    r4, r31, 0x2d8
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0x2f0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r28, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x2f0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x32c(r28)
    li      r0, 0x12c
    lis     r3, 0x803b
    stw     r0, 0x33c(r28)
    subi    r0, r3, 0x42b8
    addi    r3, r31, 0x300
    stw     r0, 0x32c(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x340
    addi    r6, r31, 0x300
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r30, r3, 0x42c4
    stw     r30, 0x340(r28)
    lis     r3, 0x803b
    subi    r29, r3, 0x42d0
    lfs     f0, -0x6994(rtoc)
    addi    r3, r31, 0x314
    stfs    f0, 0x350(r28)
    stw     r29, 0x340(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x354
    addi    r6, r31, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x354(r28)
    addi    r3, r31, 0x328
    lfs     f0, -0x6960(rtoc)
    stfs    f0, 0x364(r28)
    stw     r29, 0x354(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x368
    addi    r6, r31, 0x328
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x368(r28)
    addi    r3, r31, 0x340
    lfs     f0, -0x6968(rtoc)
    stfs    f0, 0x378(r28)
    stw     r29, 0x368(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x37c
    addi    r6, r31, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x37c(r28)
    addi    r3, r31, 0x358
    lfs     f0, -0x6968(rtoc)
    stfs    f0, 0x38c(r28)
    stw     r29, 0x37c(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x390
    addi    r6, r31, 0x358
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x390(r28)
    addi    r3, r31, 0x370
    lfs     f0, -0x692c(rtoc)
    stfs    f0, 0x3a0(r28)
    stw     r29, 0x390(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x3a4
    addi    r6, r31, 0x370
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x3a4(r28)
    mr      r3, r28
    lfs     f0, -0x698c(rtoc)
    stfs    f0, 0x3b4(r28)
    stw     r29, 0x3a4(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x800800b0:
    stw     r27, 0x38(r26)
    addi    r3, r31, 0x384
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, 0x60(r26)
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__20TElecNokonokoManagerFPCc
__ct__20TElecNokonokoManagerFPCc: # 0x800800d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x3254
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13TElecCarapaceFv
__dt__13TElecCarapaceFv: # 0x80080114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008017c
    lis     r3, 0x803b
    addi    r3, r3, 0x2f50
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008016c
    lis     r3, 0x803b
    subi    r3, r3, 0x1958
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8008016c:
    extsh.  r0, r31
    ble-    branch_0x8008017c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008017c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl rebirth__13TElecCarapaceFv
rebirth__13TElecCarapaceFv: # 0x80080198
    blr


.globl recoverScale__13TElecCarapaceFv
recoverScale__13TElecCarapaceFv: # 0x8008019c
    blr


.globl getPhaseShift__13TElecCarapaceCFv
getPhaseShift__13TElecCarapaceCFv: # 0x800801a0
    lbz     r0, 0x174(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800801b4
    lfs     f1, -0x699c(rtoc)
    blr

branch_0x800801b4:
    lfs     f1, -0x6928(rtoc)
    blr


.globl __dt__13TElecNokonokoFv
__dt__13TElecNokonokoFv: # 0x800801bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8008023c
    lis     r3, 0x803b
    addi    r3, r3, 0x3098
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008022c
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008022c
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8008022c:
    extsh.  r0, r31
    ble-    branch_0x8008023c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8008023c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20TElecNokonokoManagerFv
__dt__20TElecNokonokoManagerFv: # 0x80080258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800802b0
    lis     r3, 0x803b
    addi    r0, r3, 0x3254
    stw     r0, 0x0(r30)
    beq-    branch_0x800802a0
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800802a0:
    extsh.  r0, r31
    ble-    branch_0x800802b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800802b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_elecNokonoko_cpp
__sinit_elecNokonoko_cpp: # 0x800802cc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0xca8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80080314
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80080314:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80080344
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80080344:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80080374
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80080374:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800803a4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800803a4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800803d4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800803d4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80080404
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80080404:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80080434
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80080434:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80080464
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80080464:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80080494
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80080494:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800804c4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800804c4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800804f4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800804f4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80080524
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80080524:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80080554
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80080554:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80080584
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80080584:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800805b4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800805b4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__13TElecNokonokoFv
_32___dt__13TElecNokonokoFv: # 0x800805c8
    subi    r3, r3, 0x20
    b       __dt__13TElecNokonokoFv


.globl _32___dt__13TElecCarapaceFv
_32___dt__13TElecCarapaceFv: # 0x800805d0
    subi    r3, r3, 0x20
    b       __dt__13TElecCarapaceFv

