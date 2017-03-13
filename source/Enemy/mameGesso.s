
.globl __dt__19TNerveMameGessoWaitFv
__dt__19TNerveMameGessoWaitFv: # 0x8005f288
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005f2cc
    lis     r3, 0x803b
    addi    r0, r3, 0x14c4
    stw     r0, 0x0(r31)
    beq-    branch_0x8005f2bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005f2bc:
    extsh.  r0, r4
    ble-    branch_0x8005f2cc
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005f2cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveMameGessoWaitCFP24TSpineBase_10TLiveActor_
execute__19TNerveMameGessoWaitCFP24TSpineBase_10TLiveActor_: # 0x8005f2e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005f320
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
branch_0x8005f320:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005f41c
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8005f35c
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8005f35c
    cmplwi  r3, 0x4104
    bne-    branch_0x8005f364
branch_0x8005f35c:
    li      r0, 0x1
    b       branch_0x8005f368

branch_0x8005f364:
    li      r0, 0x0
branch_0x8005f368:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005f37c
    lwz     r3, 0x194(r30)
    lwz     r4, 0x3dc(r3)
    b       branch_0x8005f384

branch_0x8005f37c:
    lwz     r3, 0x194(r30)
    lwz     r4, 0x3c8(r3)
branch_0x8005f384:
    lha     r0, 0x7c(r30)
    lwz     r3, 0x20(r31)
    mulli   r0, r0, 0xa
    add     r0, r4, r0
    cmpw    r3, r0
    ble-    branch_0x8005f41c
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f3e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r4, 0x8006
    stw     r0, -0x6f6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x668
    subi    r4, r4, 0xbc8
    subi    r3, r13, 0x6f6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x8005f3e0:
    subi    r4, r13, 0x6f6c
    cmplwi  r4, 0x0
    beq-    branch_0x8005f414
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8005f414
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8005f414:
    li      r3, 0x1
    b       branch_0x8005f420

branch_0x8005f41c:
    li      r3, 0x0
branch_0x8005f420:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__30TNerveMameGessoGraphJumpWanderFv
__dt__30TNerveMameGessoGraphJumpWanderFv: # 0x8005f438
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005f47c
    lis     r3, 0x803b
    addi    r0, r3, 0x1534
    stw     r0, 0x0(r31)
    beq-    branch_0x8005f46c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005f46c:
    extsh.  r0, r4
    ble-    branch_0x8005f47c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005f47c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveMameGessoObjectCFP24TSpineBase_10TLiveActor_
execute__21TNerveMameGessoObjectCFP24TSpineBase_10TLiveActor_: # 0x8005f494
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r4
    lwz     r31, 0x0(r4)
    bl      SMS_IsMarioStatusTypeSwimming__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x8005f4e4
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f1, -0x6d68(rtoc)
    lfs     f0, 0x154(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x190(r31)
    bl      expandCollision__11TSmallEnemyFv
    b       branch_0x8005f4f0

branch_0x8005f4e4:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x8005f4f0:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x8005f584
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      calcObjCollision__10TMameGessoFv
    lwz     r3, 0x198(r31)
    addi    r5, r31, 0x1b4
    addi    r6, r31, 0x1a8
    addi    r7, r31, 0x19c
    li      r4, 0x0
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0x198(r31)
    addi    r5, r31, 0x19c
    addi    r6, r31, 0x1c0
    addi    r7, r31, 0x1b4
    li      r4, 0x1
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6d64(rtoc)
    stfs    f0, 0x1e0(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x1e4(r31)
    lfs     f0, -0x6d60(rtoc)
    stfs    f0, 0x1e8(r31)
branch_0x8005f584:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005f5d0
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x8005f5ac
    li      r0, 0x1
    b       branch_0x8005f5b0

branch_0x8005f5ac:
    li      r0, 0x0
branch_0x8005f5b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005f5d0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x10
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8005f5d0:
    lwz     r3, 0x194(r31)
    lwz     r4, 0x20(r30)
    lwz     r0, 0x3f0(r3)
    cmpw    r4, r0
    ble-    branch_0x8005f744
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005f724
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x10
    bne-    branch_0x8005f60c
    li      r0, 0x1
    b       branch_0x8005f610

branch_0x8005f60c:
    li      r0, 0x0
branch_0x8005f610:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005f634
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x12
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8005f724

branch_0x8005f634:
    cmpwi   r3, 0x12
    bne-    branch_0x8005f644
    li      r0, 0x1
    b       branch_0x8005f648

branch_0x8005f644:
    li      r0, 0x0
branch_0x8005f648:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005f724
    mr      r3, r31
    bl      calcObjCollision__10TMameGessoFv
    lwz     r3, 0x198(r31)
    addi    r5, r31, 0x1b4
    addi    r6, r31, 0x1a8
    addi    r7, r31, 0x19c
    li      r4, 0x0
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0x198(r31)
    addi    r5, r31, 0x19c
    addi    r6, r31, 0x1c0
    addi    r7, r31, 0x1b4
    li      r4, 0x1
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f0, 0x1e4(r31)
    stfs    f0, 0x14(r31)
    lfs     f0, -0x6d64(rtoc)
    stfs    f0, 0x1e8(r31)
    lbz     r0, -0x6f38(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f6e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f34(r13)
    addi    r0, r3, 0x14c4
    lis     r4, 0x8006
    stw     r0, -0x6f34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6bc
    subi    r4, r4, 0xd78
    subi    r3, r13, 0x6f34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f38(r13)
branch_0x8005f6e8:
    subi    r4, r13, 0x6f34
    cmplwi  r4, 0x0
    beq-    branch_0x8005f71c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8005f71c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8005f71c:
    li      r3, 0x1
    b       branch_0x8005f7a8

branch_0x8005f724:
    lfs     f1, 0x1e0(r31)
    lfs     f0, -0x6d64(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8005f760
    lfs     f0, -0x6d5c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1e0(r31)
    b       branch_0x8005f760

branch_0x8005f744:
    lfs     f1, 0x1e0(r31)
    lfs     f0, -0x7f30(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005f760
    lfs     f0, -0x6d5c(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x1e0(r31)
branch_0x8005f760:
    bl      SMS_IsMarioStatusTypeSwimming__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x8005f7a4
    mr      r3, r31
    bl      calcObjCollision__10TMameGessoFv
    lwz     r3, 0x198(r31)
    addi    r5, r31, 0x1b4
    addi    r6, r31, 0x1a8
    addi    r7, r31, 0x19c
    li      r4, 0x0
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0x198(r31)
    addi    r5, r31, 0x19c
    addi    r6, r31, 0x1c0
    addi    r7, r31, 0x1b4
    li      r4, 0x1
    bl      setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8005f7a4:
    li      r3, 0x0
branch_0x8005f7a8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __dt__21TNerveMameGessoObjectFv
__dt__21TNerveMameGessoObjectFv: # 0x8005f7c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005f804
    lis     r3, 0x803b
    addi    r0, r3, 0x14d4
    stw     r0, 0x0(r31)
    beq-    branch_0x8005f7f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005f7f4:
    extsh.  r0, r4
    ble-    branch_0x8005f804
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005f804:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveMameGessoThrownCFP24TSpineBase_10TLiveActor_
execute__21TNerveMameGessoThrownCFP24TSpineBase_10TLiveActor_: # 0x8005f81c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005f8e8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x60ac(r13)
    lwz     r6, -0x6090(r13)
    lha     r0, 0x0(r4)
    lwz     r7, -0x5eac(r13)
    clrlwi  r0, r0, 16
    lwz     r4, -0x5ea8(r13)
    sraw    r5, r0, r7
    lfs     f2, 0x0(r6)
    sraw    r0, r0, r7
    lfs     f4, 0x3a0(r3)
    slwi    r0, r0, 2
    lwz     r6, -0x5ea4(r13)
    lfsx    f0, r4, r0
    slwi    r0, r5, 2
    lfsx    f3, r6, r0
    fmuls   f1, f2, f0
    fmuls   f0, f2, f3
    fmuls   f1, f4, f1
    fmuls   f0, f4, f0
    stfs    f1, 0x50(sp)
    lfs     f1, 0x38c(r3)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6d58(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8005f8e8:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8005f8fc
    li      r0, 0x1
    b       branch_0x8005f900

branch_0x8005f8fc:
    li      r0, 0x0
branch_0x8005f900:
    cmpwi   r0, 0x0
    bne-    branch_0x8005fa48
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8005f930
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8005f930
    cmplwi  r3, 0x4104
    bne-    branch_0x8005f938
branch_0x8005f930:
    li      r0, 0x1
    b       branch_0x8005f93c

branch_0x8005f938:
    li      r0, 0x0
branch_0x8005f93c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005f9cc
    lbz     r0, -0x6f40(r13)
    extsb.  r0, r0
    bne-    branch_0x8005f988
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f3c(r13)
    addi    r0, r3, 0x14d4
    lis     r4, 0x8006
    stw     r0, -0x6f3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6b0
    subi    r4, r4, 0x840
    subi    r3, r13, 0x6f3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f40(r13)
branch_0x8005f988:
    subi    r4, r13, 0x6f3c
    cmplwi  r4, 0x0
    beq-    branch_0x8005f9bc
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8005f9bc
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8005f9bc:
    li      r0, 0x0
    stb     r0, 0x164(r31)
    li      r3, 0x1
    b       branch_0x8005fa4c

branch_0x8005f9cc:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8005f9e0
    li      r0, 0x1
    b       branch_0x8005f9e4

branch_0x8005f9e0:
    li      r0, 0x0
branch_0x8005f9e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8005fa04
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8005fa04:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005fa48
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8005fa2c
    li      r0, 0x1
    b       branch_0x8005fa30

branch_0x8005fa2c:
    li      r0, 0x0
branch_0x8005fa30:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005fa48
    li      r0, 0x0
    stb     r0, 0x164(r31)
    li      r3, 0x1
    b       branch_0x8005fa4c

branch_0x8005fa48:
    li      r3, 0x0
branch_0x8005fa4c:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __dt__21TNerveMameGessoThrownFv
__dt__21TNerveMameGessoThrownFv: # 0x8005fa64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005faa8
    lis     r3, 0x803b
    addi    r0, r3, 0x14e4
    stw     r0, 0x0(r31)
    beq-    branch_0x8005fa98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005fa98:
    extsh.  r0, r4
    ble-    branch_0x8005faa8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005faa8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveMameGessoPickUpCFP24TSpineBase_10TLiveActor_
execute__21TNerveMameGessoPickUpCFP24TSpineBase_10TLiveActor_: # 0x8005fac0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8005fafc
    lbz     r0, 0x164(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8005fafc
    li      r3, 0x1
    b       branch_0x8005fb5c

branch_0x8005fafc:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005fb58
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x364(r3)
    cmpw    r4, r0
    ble-    branch_0x8005fb58
    li      r0, 0x0
    stb     r0, 0x164(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8005fb5c

branch_0x8005fb58:
    li      r3, 0x0
branch_0x8005fb5c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__21TNerveMameGessoPickUpFv
__dt__21TNerveMameGessoPickUpFv: # 0x8005fb74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005fbb8
    lis     r3, 0x803b
    addi    r0, r3, 0x14f4
    stw     r0, 0x0(r31)
    beq-    branch_0x8005fba8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005fba8:
    extsh.  r0, r4
    ble-    branch_0x8005fbb8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005fbb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveMameGessoTrampleCFP24TSpineBase_10TLiveActor_
execute__22TNerveMameGessoTrampleCFP24TSpineBase_10TLiveActor_: # 0x8005fbd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x1
    bge-    branch_0x8005fc98
    lbz     r0, 0x1d1(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8005fc48
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0xf
    bne-    branch_0x8005fc0c
    li      r0, 0x1
    b       branch_0x8005fc10

branch_0x8005fc0c:
    li      r0, 0x0
branch_0x8005fc10:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005fc30
    lwz     r12, 0x0(r3)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8005fcb0

branch_0x8005fc30:
    lwz     r12, 0x0(r3)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8005fcb0

branch_0x8005fc48:
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0xf
    bne-    branch_0x8005fc5c
    li      r0, 0x1
    b       branch_0x8005fc60

branch_0x8005fc5c:
    li      r0, 0x0
branch_0x8005fc60:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005fc80
    lwz     r12, 0x0(r3)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8005fcb0

branch_0x8005fc80:
    lwz     r12, 0x0(r3)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8005fcb0

branch_0x8005fc98:
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005fcb0
    li      r3, 0x1
    b       branch_0x8005fcb4

branch_0x8005fcb0:
    li      r3, 0x0
branch_0x8005fcb4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveMameGessoTrampleFv
__dt__22TNerveMameGessoTrampleFv: # 0x8005fcc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005fd08
    lis     r3, 0x803b
    addi    r0, r3, 0x1504
    stw     r0, 0x0(r31)
    beq-    branch_0x8005fcf8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005fcf8:
    extsh.  r0, r4
    ble-    branch_0x8005fd08
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005fd08:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveMameGessoJitabataCFP24TSpineBase_10TLiveActor_
execute__23TNerveMameGessoJitabataCFP24TSpineBase_10TLiveActor_: # 0x8005fd20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bgt-    branch_0x8005fd60
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    b       branch_0x8005ff00

branch_0x8005fd60:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8005ff00
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xf
    bne-    branch_0x8005fd88
    li      r0, 0x1
    b       branch_0x8005fd8c

branch_0x8005fd88:
    li      r0, 0x0
branch_0x8005fd8c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005fdc4
    lwz     r3, 0x194(r31)
    lwz     r4, 0x20(r30)
    lwz     r0, 0x158(r3)
    cmpw    r4, r0
    ble-    branch_0x8005ff00
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8005ff00

branch_0x8005fdc4:
    cmpwi   r3, 0x5
    bne-    branch_0x8005fdd4
    li      r0, 0x1
    b       branch_0x8005fdd8

branch_0x8005fdd4:
    li      r0, 0x0
branch_0x8005fdd8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8005ff00
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8005fdf4
    addi    r4, r3, 0x10
    b       branch_0x8005fdf8

branch_0x8005fdf4:
    addi    r4, r31, 0x108
branch_0x8005fdf8:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x48(sp)
    lfs     f2, 0x4c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x6d54(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8005fe78
    li      r0, 0x0
    stb     r0, 0x1ec(r31)
branch_0x8005fe78:
    lbz     r0, -0x6f38(r13)
    extsb.  r0, r0
    bne-    branch_0x8005febc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f34(r13)
    addi    r0, r3, 0x14c4
    lis     r4, 0x8006
    stw     r0, -0x6f34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6bc
    subi    r4, r4, 0xd78
    subi    r3, r13, 0x6f34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f38(r13)
branch_0x8005febc:
    subi    r4, r13, 0x6f34
    cmplwi  r4, 0x0
    beq-    branch_0x8005fef0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8005fef0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8005fef0:
    li      r0, 0x0
    stb     r0, 0x164(r31)
    li      r3, 0x1
    b       branch_0x8005ff04

branch_0x8005ff00:
    li      r3, 0x0
branch_0x8005ff04:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__23TNerveMameGessoJitabataFv
__dt__23TNerveMameGessoJitabataFv: # 0x8005ff1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8005ff60
    lis     r3, 0x803b
    addi    r0, r3, 0x1514
    stw     r0, 0x0(r31)
    beq-    branch_0x8005ff50
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8005ff50:
    extsh.  r0, r4
    ble-    branch_0x8005ff60
    mr      r3, r31
    bl      __dl__FPv
branch_0x8005ff60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveMameGessoDamageCFP24TSpineBase_10TLiveActor_
execute__21TNerveMameGessoDamageCFP24TSpineBase_10TLiveActor_: # 0x8005ff78
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r3, 0x668
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80060000
    lwz     r5, 0xac(r30)
    mr      r3, r30
    lwz     r0, 0xb0(r30)
    li      r4, 0xd
    lfs     f0, -0x6d64(rtoc)
    stw     r5, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x60(sp)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x60(sp)
    lwz     r5, 0x58(sp)
    lwz     r0, 0x5c(sp)
    stw     r5, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x60(sp)
    stw     r0, 0xb4(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80060000:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80060014
    li      r0, 0x1
    b       branch_0x80060018

branch_0x80060014:
    li      r0, 0x0
branch_0x80060018:
    cmpwi   r0, 0x0
    bne-    branch_0x800600d8
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80060048
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80060048
    cmplwi  r3, 0x4104
    bne-    branch_0x80060050
branch_0x80060048:
    li      r0, 0x1
    b       branch_0x80060054

branch_0x80060050:
    li      r0, 0x0
branch_0x80060054:
    clrlwi. r0, r0, 24
    beq-    branch_0x800600d8
    lbz     r0, -0x6f40(r13)
    extsb.  r0, r0
    bne-    branch_0x8006009c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f3c(r13)
    addi    r0, r3, 0x14d4
    lis     r3, 0x8006
    stw     r0, -0x6f3c(r13)
    subi    r4, r3, 0x840
    subi    r3, r13, 0x6f3c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f40(r13)
branch_0x8006009c:
    subi    r4, r13, 0x6f3c
    cmplwi  r4, 0x0
    beq-    branch_0x800600d0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800600d0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800600d0:
    li      r3, 0x1
    b       branch_0x80060298

branch_0x800600d8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80060294
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0xd
    bne-    branch_0x80060100
    li      r0, 0x1
    b       branch_0x80060104

branch_0x80060100:
    li      r0, 0x0
branch_0x80060104:
    clrlwi. r0, r0, 24
    beq-    branch_0x80060144
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80060120
    li      r0, 0x1
    b       branch_0x80060124

branch_0x80060120:
    li      r0, 0x0
branch_0x80060124:
    cmpwi   r0, 0x0
    beq-    branch_0x80060144
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80060144:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80060158
    li      r0, 0x1
    b       branch_0x8006015c

branch_0x80060158:
    li      r0, 0x0
branch_0x8006015c:
    cmpwi   r0, 0x0
    bne-    branch_0x80060294
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8006018c
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8006018c
    cmplwi  r3, 0x4104
    bne-    branch_0x80060194
branch_0x8006018c:
    li      r0, 0x1
    b       branch_0x80060198

branch_0x80060194:
    li      r0, 0x0
branch_0x80060198:
    clrlwi. r0, r0, 24
    beq-    branch_0x80060218
    lbz     r0, -0x6f40(r13)
    extsb.  r0, r0
    bne-    branch_0x800601e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f3c(r13)
    addi    r0, r3, 0x14d4
    lis     r3, 0x8006
    stw     r0, -0x6f3c(r13)
    subi    r4, r3, 0x840
    subi    r3, r13, 0x6f3c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f40(r13)
branch_0x800601e0:
    subi    r4, r13, 0x6f3c
    cmplwi  r4, 0x0
    beq-    branch_0x8006028c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8006028c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x8006028c

branch_0x80060218:
    lbz     r0, -0x6f60(r13)
    extsb.  r0, r0
    bne-    branch_0x80060258
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f5c(r13)
    addi    r0, r3, 0x1514
    lis     r3, 0x8006
    stw     r0, -0x6f5c(r13)
    subi    r4, r3, 0xe4
    subi    r3, r13, 0x6f5c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f60(r13)
branch_0x80060258:
    subi    r4, r13, 0x6f5c
    cmplwi  r4, 0x0
    beq-    branch_0x8006028c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8006028c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8006028c:
    li      r3, 0x1
    b       branch_0x80060298

branch_0x80060294:
    li      r3, 0x0
branch_0x80060298:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__21TNerveMameGessoDamageFv
__dt__21TNerveMameGessoDamageFv: # 0x800602b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800602f8
    lis     r3, 0x803b
    addi    r0, r3, 0x1524
    stw     r0, 0x0(r31)
    beq-    branch_0x800602e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800602e8:
    extsh.  r0, r4
    ble-    branch_0x800602f8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800602f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__30TNerveMameGessoGraphJumpWanderCFP24TSpineBase_10TLiveActor_
execute__30TNerveMameGessoGraphJumpWanderCFP24TSpineBase_10TLiveActor_: # 0x80060310
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    mr      r30, r4
    stw     r29, 0xd4(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800603b0
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80060368
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80060368
    cmplwi  r3, 0x4104
    bne-    branch_0x80060370
branch_0x80060368:
    li      r0, 0x1
    b       branch_0x80060374

branch_0x80060370:
    li      r0, 0x0
branch_0x80060374:
    clrlwi. r0, r0, 24
    beq-    branch_0x80060398
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800603b0

branch_0x80060398:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800603b0:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xb
    bne-    branch_0x800603c4
    li      r0, 0x1
    b       branch_0x800603c8

branch_0x800603c4:
    li      r0, 0x0
branch_0x800603c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x800603ec
    cmpwi   r3, 0xc
    bne-    branch_0x800603e0
    li      r0, 0x1
    b       branch_0x800603e4

branch_0x800603e0:
    li      r0, 0x0
branch_0x800603e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80060698
branch_0x800603ec:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80060418
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80060418:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8006042c
    li      r0, 0x1
    b       branch_0x80060430

branch_0x8006042c:
    li      r0, 0x0
branch_0x80060430:
    cmpwi   r0, 0x0
    bne-    branch_0x80060698
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6d4c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80060698
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80060478
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80060478
    cmplwi  r3, 0x4104
    bne-    branch_0x80060480
branch_0x80060478:
    li      r0, 0x1
    b       branch_0x80060484

branch_0x80060480:
    li      r0, 0x0
branch_0x80060484:
    clrlwi. r0, r0, 24
    beq-    branch_0x800604a0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
branch_0x800604a0:
    lbz     r0, 0x1ec(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80060554
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r5, 0x104(r31)
    addi    r4, r31, 0x104
    lwz     r3, 0x194(r31)
    cmplwi  r5, 0x0
    lfs     f31, 0x350(r3)
    beq-    branch_0x800604d4
    addi    r29, r5, 0x10
    b       branch_0x800604d8

branch_0x800604d4:
    addi    r29, r4, 0x4
branch_0x800604d8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r5, r29, 0x0
    addi    r3, sp, 0x9c
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0xc4(sp)
    lfs     f0, -0x6d48(rtoc)
    stw     r0, 0xc8(sp)
    lfs     f1, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xc8(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    b       branch_0x80060698

branch_0x80060554:
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x8006056c
    addi    r3, r4, 0x10
    b       branch_0x80060570

branch_0x8006056c:
    addi    r3, r3, 0x4
branch_0x80060570:
    lfs     f1, 0x8(r3)
    cmplwi  r4, 0x0
    lfs     f0, 0x18(r31)
    addi    r3, r31, 0x104
    fsubs   f3, f1, f0
    beq-    branch_0x80060590
    addi    r3, r4, 0x10
    b       branch_0x80060594

branch_0x80060590:
    addi    r3, r3, 0x4
branch_0x80060594:
    lfs     f1, 0x0(r3)
    lfs     f0, 0x10(r31)
    lfs     f2, -0x6d64(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0xb4(sp)
    stfs    f2, 0xb8(sp)
    stfs    f3, 0xbc(sp)
    lfs     f1, 0xb4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800605e0
    lfs     f0, 0xb8(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x800605e0
    lfs     f0, 0xbc(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x800605e0
    lfs     f0, -0x6d5c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xb4(sp)
branch_0x800605e0:
    addi    r3, sp, 0xb4
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r5, 0x194(r31)
    mr      r3, r31
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x10(r31)
    lfs     f2, 0x42c(r5)
    lfs     f31, 0x440(r5)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xb4(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x18(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xbc(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xb8(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r3, sp, 0x90
    addi    r5, sp, 0xb4
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x90(sp)
    lwz     r3, 0x94(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x98(sp)
    stw     r3, 0xac(sp)
    lfs     f0, -0x6d58(rtoc)
    stw     r0, 0xb0(sp)
    lfs     f1, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xb0(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x80060698:
    lbz     r0, 0x1ec(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80060764
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80060704
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800606d4
    li      r0, 0x1
    b       branch_0x800606d8

branch_0x800606d4:
    li      r0, 0x0
branch_0x800606d8:
    cmpwi   r0, 0x0
    beq-    branch_0x800607dc
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800607dc
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800607dc
    b       branch_0x800607dc

branch_0x80060704:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80060718
    li      r0, 0x1
    b       branch_0x8006071c

branch_0x80060718:
    li      r0, 0x0
branch_0x8006071c:
    cmpwi   r0, 0x0
    bne-    branch_0x80060744
    mr      r3, r31
    lfs     f1, -0x6d5c(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    b       branch_0x800607dc

branch_0x80060744:
    mr      r3, r31
    lfs     f1, -0x6d5c(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    b       branch_0x800607dc

branch_0x80060764:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80060788
    li      r0, 0x1
    stb     r0, 0x1ec(r31)
branch_0x80060788:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800607c0
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800607b4
    stw     r0, 0x1c(r30)
branch_0x800607b4:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
branch_0x800607c0:
    mr      r3, r31
    lfs     f1, -0x6d5c(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800607dc:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800607f0
    li      r0, 0x1
    b       branch_0x800607f4

branch_0x800607f0:
    li      r0, 0x0
branch_0x800607f4:
    cmpwi   r0, 0x0
    bne-    branch_0x80060938
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0xa
    bne-    branch_0x80060810
    li      r0, 0x1
    b       branch_0x80060814

branch_0x80060810:
    li      r0, 0x0
branch_0x80060814:
    clrlwi. r0, r0, 24
    beq-    branch_0x800608a4
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80060844
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80060844
    cmplwi  r3, 0x4104
    bne-    branch_0x8006084c
branch_0x80060844:
    li      r0, 0x1
    b       branch_0x80060850

branch_0x8006084c:
    li      r0, 0x0
branch_0x80060850:
    clrlwi. r0, r0, 24
    beq-    branch_0x80060888
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    b       branch_0x80060938

branch_0x80060888:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80060938

branch_0x800608a4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80060938
    lbz     r0, -0x6f38(r13)
    extsb.  r0, r0
    bne-    branch_0x800608fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f34(r13)
    addi    r0, r3, 0x14c4
    lis     r4, 0x8006
    stw     r0, -0x6f34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6bc
    subi    r4, r4, 0xd78
    subi    r3, r13, 0x6f34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f38(r13)
branch_0x800608fc:
    subi    r4, r13, 0x6f34
    cmplwi  r4, 0x0
    beq-    branch_0x80060930
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80060930
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80060930:
    li      r3, 0x1
    b       branch_0x8006093c

branch_0x80060938:
    li      r3, 0x0
branch_0x8006093c:
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lwz     r31, 0xdc(sp)
    mtlr    r0
    lwz     r30, 0xd8(sp)
    lwz     r29, 0xd4(sp)
    addi    sp, sp, 0xe8
    blr


.globl getBasNameTable__10TMameGessoCFv
getBasNameTable__10TMameGessoCFv: # 0x8006095c
    lis     r3, 0x803b
    addi    r3, r3, 0x1478
    blr


.globl doKeepDistance__10TMameGessoFv
doKeepDistance__10TMameGessoFv: # 0x80060968
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x10
    bne-    branch_0x8006097c
    li      r0, 0x1
    b       branch_0x80060980

branch_0x8006097c:
    li      r0, 0x0
branch_0x80060980:
    clrlwi. r0, r0, 24
    beq-    branch_0x80060990
    li      r3, 0x1
    blr

branch_0x80060990:
    li      r3, 0x0
    blr


.globl isInhibitedForceMove__10TMameGessoFv
isInhibitedForceMove__10TMameGessoFv: # 0x80060998
    li      r3, 0x1
    blr


.globl calcObjCollision__10TMameGessoFv
calcObjCollision__10TMameGessoFv: # 0x800609a0
    stwu    sp, -0x58(sp)
    lis     r4, 0x8038
    subi    r6, r4, 0x6e68
    lfs     f0, -0x6d44(rtoc)
    stfs    f0, 0xc0(r3)
    lwz     r4, 0x74(r3)
    lwz     r5, 0x194(r3)
    lwz     r4, 0x4(r4)
    lfs     f0, 0x418(r5)
    lwz     r4, 0x58(r4)
    lfs     f3, 0x50(r3)
    addi    r4, r4, 0x30
    lfs     f2, 0x148(r3)
    lfs     f1, 0xc(r4)
    fmuls   f2, f3, f2
    stfs    f1, 0x48(sp)
    lfs     f1, 0x1c(r4)
    fmuls   f0, f0, f2
    stfs    f1, 0x4c(sp)
    lfs     f1, 0x2c(r4)
    stfs    f1, 0x50(sp)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x19c(r3)
    stw     r0, 0x1a0(r3)
    lwz     r0, 0x50(sp)
    stw     r0, 0x1a4(r3)
    lfs     f1, 0x1a0(r3)
    lfs     f3, -0x6d40(rtoc)
    fadds   f1, f1, f3
    stfs    f1, 0x1a0(r3)
    lfs     f2, 0x24c(r6)
    lfs     f1, 0x19c(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x19c(r3)
    lfs     f2, 0x250(r6)
    lfs     f1, 0x1a4(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x1a4(r3)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x1a8(r3)
    stw     r0, 0x1ac(r3)
    lwz     r0, 0x50(sp)
    stw     r0, 0x1b0(r3)
    lfs     f1, 0x1ac(r3)
    fadds   f1, f1, f3
    stfs    f1, 0x1ac(r3)
    lfs     f2, 0x254(r6)
    lfs     f1, 0x1a8(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x1a8(r3)
    lfs     f2, 0x258(r6)
    lfs     f1, 0x1b0(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x1b0(r3)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x1b4(r3)
    stw     r0, 0x1b8(r3)
    lwz     r0, 0x50(sp)
    stw     r0, 0x1bc(r3)
    lfs     f1, 0x1b8(r3)
    fadds   f1, f1, f3
    stfs    f1, 0x1b8(r3)
    lfs     f2, 0x25c(r6)
    lfs     f1, 0x1b4(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x1b4(r3)
    lfs     f2, 0x260(r6)
    lfs     f1, 0x1bc(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x1bc(r3)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x1c0(r3)
    stw     r0, 0x1c4(r3)
    lwz     r0, 0x50(sp)
    addi    sp, sp, 0x58
    stw     r0, 0x1c8(r3)
    lfs     f1, 0x1c4(r3)
    fadds   f1, f1, f3
    stfs    f1, 0x1c4(r3)
    lfs     f2, 0x264(r6)
    lfs     f1, 0x1c0(r3)
    fmadds  f1, f0, f2, f1
    stfs    f1, 0x1c0(r3)
    lfs     f2, 0x268(r6)
    lfs     f1, 0x1c8(r3)
    fmadds  f0, f0, f2, f1
    stfs    f0, 0x1c8(r3)
    blr


.globl isCollidMove__10TMameGessoFP9THitActor
isCollidMove__10TMameGessoFP9THitActor: # 0x80060b10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x80060b68
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r4, 0x8006
    stw     r0, -0x6f6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x668
    subi    r4, r4, 0xbc8
    subi    r3, r13, 0x6f6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x80060b68:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80060ba4
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80060b90
    li      r0, 0x1
    b       branch_0x80060b94

branch_0x80060b90:
    li      r0, 0x0
branch_0x80060b94:
    cmpwi   r0, 0x0
    bne-    branch_0x80060ba4
    li      r3, 0x0
    b       branch_0x80060ba8

branch_0x80060ba4:
    li      r3, 0x1
branch_0x80060ba8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl behaveToRelease__10TMameGessoFv
behaveToRelease__10TMameGessoFv: # 0x80060bbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lbz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80060ccc
    lbz     r0, -0x6f48(r13)
    extsb.  r0, r0
    bne-    branch_0x80060c20
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f44(r13)
    addi    r0, r3, 0x14e4
    lis     r4, 0x8006
    stw     r0, -0x6f44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6a4
    subi    r4, r4, 0x59c
    subi    r3, r13, 0x6f44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f48(r13)
branch_0x80060c20:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6f44
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80060ccc
    lbz     r0, -0x6f48(r13)
    extsb.  r0, r0
    bne-    branch_0x80060c74
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6f44(r13)
    addi    r0, r4, 0x14e4
    lis     r4, 0x8006
    stw     r0, -0x6f44(r13)
    lis     r5, 0x803f
    subi    r4, r4, 0x59c
    addi    r5, r5, 0x6a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f48(r13)
branch_0x80060c74:
    subi    r6, r13, 0x6f44
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80060ccc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80060cc0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80060cc0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80060cc0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80060ccc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl behaveToTaken__10TMameGessoFP9THitActor
behaveToTaken__10TMameGessoFP9THitActor: # 0x80060ce0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6f50(r13)
    extsb.  r0, r0
    bne-    branch_0x80060d38
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f4c(r13)
    addi    r0, r3, 0x14f4
    lis     r4, 0x8006
    stw     r0, -0x6f4c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x698
    subi    r4, r4, 0x48c
    subi    r3, r13, 0x6f4c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f50(r13)
branch_0x80060d38:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6f4c
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80060de4
    lbz     r0, -0x6f50(r13)
    extsb.  r0, r0
    bne-    branch_0x80060d8c
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6f4c(r13)
    addi    r0, r4, 0x14f4
    lis     r4, 0x8006
    stw     r0, -0x6f4c(r13)
    lis     r5, 0x803f
    subi    r4, r4, 0x48c
    addi    r5, r5, 0x698
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f50(r13)
branch_0x80060d8c:
    subi    r6, r13, 0x6f4c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80060de4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80060dd8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80060dd8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80060dd8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80060de4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl behaveToWater__10TMameGessoFP9THitActor
behaveToWater__10TMameGessoFP9THitActor: # 0x80060df8
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x668
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x80060e58
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r3, 0x8006
    stw     r0, -0x6f6c(r13)
    subi    r4, r3, 0xbc8
    subi    r3, r13, 0x6f6c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x80060e58:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80060ec0
    lbz     r0, -0x6f38(r13)
    extsb.  r0, r0
    bne-    branch_0x80060eac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f34(r13)
    addi    r0, r3, 0x14c4
    lis     r3, 0x8006
    stw     r0, -0x6f34(r13)
    subi    r4, r3, 0xd78
    subi    r3, r13, 0x6f34
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f38(r13)
branch_0x80060eac:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f34
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80060f58
branch_0x80060ec0:
    lbz     r0, -0x6f68(r13)
    extsb.  r0, r0
    bne-    branch_0x80060f00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f64(r13)
    addi    r0, r3, 0x1524
    lis     r3, 0x8006
    stw     r0, -0x6f64(r13)
    addi    r4, r3, 0x2b4
    subi    r3, r13, 0x6f64
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f68(r13)
branch_0x80060f00:
    subi    r6, r13, 0x6f64
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80060f58
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80060f4c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80060f4c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80060f4c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80060f58:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl setDeadAnm__10TMameGessoFv
setDeadAnm__10TMameGessoFv: # 0x80060f70
    li      r0, 0x1
    stb     r0, 0x164(r3)
    blr


.globl setFreezeAnm__10TMameGessoFv
setFreezeAnm__10TMameGessoFv: # 0x80060f7c
    mflr    r0
    li      r4, 0xf
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    stb     r0, 0x164(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setWaitAnm__10TMameGessoFv
setWaitAnm__10TMameGessoFv: # 0x80060fb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80060ff8
    cmplwi  r3, 0x101
    beq-    branch_0x80060ff8
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80060ff8
    cmplwi  r3, 0x4104
    bne-    branch_0x80061000
branch_0x80060ff8:
    li      r0, 0x1
    b       branch_0x80061004

branch_0x80061000:
    li      r0, 0x0
branch_0x80061004:
    clrlwi. r0, r0, 24
    bne-    branch_0x80061028
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80061040

branch_0x80061028:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x11
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80061040:
    lfs     f0, -0x6d3c(rtoc)
    stfs    f0, 0xc0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getGravityY__10TMameGessoCFv
getGravityY__10TMameGessoCFv: # 0x8006105c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lbz     r0, -0x6f70(r13)
    lfs     f31, 0xcc(r3)
    extsb.  r0, r0
    bne-    branch_0x800610bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r4, 0x8006
    stw     r0, -0x6f6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x668
    subi    r4, r4, 0xbc8
    subi    r3, r13, 0x6f6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x800610bc:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800610d8
    lwz     r3, 0x194(r31)
    lfs     f31, 0x33c(r3)
branch_0x800610d8:
    lbz     r0, -0x6f48(r13)
    extsb.  r0, r0
    bne-    branch_0x8006111c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f44(r13)
    addi    r0, r3, 0x14e4
    lis     r4, 0x8006
    stw     r0, -0x6f44(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6a4
    subi    r4, r4, 0x59c
    subi    r3, r13, 0x6f44
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f48(r13)
branch_0x8006111c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f44
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80061138
    lwz     r3, 0x194(r31)
    lfs     f31, 0x378(r3)
branch_0x80061138:
    lwz     r0, 0x64(sp)
    fmr     f1, f31
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl kill__10TMameGessoFv
kill__10TMameGessoFv: # 0x80061154
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r3
    lbz     r0, 0x184(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x668
    cmplwi  r0, 0x0
    beq-    branch_0x8006122c
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x800611c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r3, 0x8006
    stw     r0, -0x6f6c(r13)
    subi    r4, r3, 0xbc8
    subi    r3, r13, 0x6f6c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x800611c0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8006122c
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x8006122c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80061220
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80061220
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80061220:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x8006122c:
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x8006126c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r3, 0x8006
    stw     r0, -0x6f6c(r13)
    subi    r4, r3, 0xbc8
    subi    r3, r13, 0x6f6c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x8006126c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800612d4
    lbz     r0, -0x6f38(r13)
    extsb.  r0, r0
    bne-    branch_0x800612c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f34(r13)
    addi    r0, r3, 0x14c4
    lis     r3, 0x8006
    stw     r0, -0x6f34(r13)
    subi    r4, r3, 0xd78
    subi    r3, r13, 0x6f34
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f38(r13)
branch_0x800612c0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f34
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80061404
branch_0x800612d4:
    lbz     r0, -0x6f68(r13)
    extsb.  r0, r0
    bne-    branch_0x80061314
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f64(r13)
    addi    r0, r3, 0x1524
    lis     r3, 0x8006
    stw     r0, -0x6f64(r13)
    addi    r4, r3, 0x2b4
    subi    r3, r13, 0x6f64
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f68(r13)
branch_0x80061314:
    subi    r6, r13, 0x6f64
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8006136c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80061360
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80061360
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80061360:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8006136c:
    lbz     r0, -0x6f58(r13)
    extsb.  r0, r0
    bne-    branch_0x800613ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f54(r13)
    addi    r0, r3, 0x1504
    lis     r3, 0x8006
    stw     r0, -0x6f54(r13)
    subi    r4, r3, 0x33c
    subi    r3, r13, 0x6f54
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f58(r13)
branch_0x800613ac:
    subi    r6, r13, 0x6f54
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80061404
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800613f8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800613f8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800613f8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80061404:
    lbz     r0, -0x6f60(r13)
    extsb.  r0, r0
    bne-    branch_0x80061444
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f5c(r13)
    addi    r0, r3, 0x1514
    lis     r3, 0x8006
    stw     r0, -0x6f5c(r13)
    subi    r4, r3, 0xe4
    subi    r3, r13, 0x6f5c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f60(r13)
branch_0x80061444:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f5c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800614f0
    lbz     r0, -0x6f58(r13)
    extsb.  r0, r0
    bne-    branch_0x80061498
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f54(r13)
    addi    r0, r3, 0x1504
    lis     r3, 0x8006
    stw     r0, -0x6f54(r13)
    subi    r4, r3, 0x33c
    subi    r3, r13, 0x6f54
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f58(r13)
branch_0x80061498:
    subi    r6, r13, 0x6f54
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800614f0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800614e4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800614e4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800614e4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800614f0:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl isHitValid__10TMameGessoFUl
isHitValid__10TMameGessoFUl: # 0x80061508
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    cmplwi  r31, 0x1
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x80061538
    li      r0, 0x0
    stb     r0, 0x1d1(r30)
    b       branch_0x80061540

branch_0x80061538:
    li      r0, 0x1
    stb     r0, 0x1d1(r30)
branch_0x80061540:
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x80061584
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r4, 0x8006
    stw     r0, -0x6f6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x668
    subi    r4, r4, 0xbc8
    subi    r3, r13, 0x6f6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x80061584:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6f6c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80061608
    cmplwi  r31, 0x1
    bne-    branch_0x80061608
    li      r0, 0x1
    stb     r0, 0x1d0(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x80061600
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800615f4
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800615f4
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800615f4:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80061600:
    li      r3, 0x0
    b       branch_0x8006160c

branch_0x80061608:
    li      r3, 0x1
branch_0x8006160c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl reset__10TMameGessoFv
reset__10TMameGessoFv: # 0x80061624
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    mr      r29, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r3, 0x194(r29)
    li      r31, 0x0
    lwz     r0, 0x3b4(r3)
    stw     r31, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    subf    r30, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6d30(rtoc)
    stw     r0, 0x3c(sp)
    lis     r5, 0x4330
    xoris   r3, r30, 0x8000
    lfs     f1, -0x6d38(rtoc)
    stw     r5, 0x38(sp)
    lwz     r4, 0x20(sp)
    li      r0, 0x1
    stw     r3, 0x34(sp)
    lfd     f0, 0x38(sp)
    stw     r5, 0x30(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x30(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r3, 0x2c(sp)
    add     r3, r4, r3
    stw     r3, 0x1cc(r29)
    stb     r31, 0x1d0(r29)
    lfs     f0, -0x6d64(rtoc)
    stfs    f0, 0x1e8(r29)
    stb     r0, 0x1ec(r29)
    lwz     r3, 0x1d4(r29)
    lwz     r0, 0x1d8(r29)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x1dc(r29)
    stw     r0, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, -0x6d34(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl calcRootMatrix__10TMameGessoFv
calcRootMatrix__10TMameGessoFv: # 0x80061714
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x50(sp)
    lbz     r0, -0x6f40(r13)
    extsb.  r0, r0
    bne-    branch_0x80061770
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f3c(r13)
    addi    r0, r3, 0x14d4
    lis     r4, 0x8006
    stw     r0, -0x6f3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6b0
    subi    r4, r4, 0x840
    subi    r3, r13, 0x6f3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f40(r13)
branch_0x80061770:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f3c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80061810
    mr      r3, r31
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80061818
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    addi    r3, sp, 0x20
    lfs     f1, 0x30(r31)
    lfs     f2, 0x34(r31)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, 0x10(r31)
    addi    r3, r31, 0x0
    addi    r30, sp, 0x20
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x1e0(r31)
    lfs     f2, 0x1e8(r31)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x4c(sp)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x80061818

branch_0x80061810:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x80061818:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl attackToMario__10TMameGessoFv
attackToMario__10TMameGessoFv: # 0x80061830
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lbz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800618b4
    lbz     r0, -0x6f40(r13)
    extsb.  r0, r0
    bne-    branch_0x80061894
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f3c(r13)
    addi    r0, r3, 0x14d4
    lis     r4, 0x8006
    stw     r0, -0x6f3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6b0
    subi    r4, r4, 0x840
    subi    r3, r13, 0x6f3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f40(r13)
branch_0x80061894:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f3c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800618b4
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800618b4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setMActorAndKeeper__10TMameGessoFv
setMActorAndKeeper__10TMameGessoFv: # 0x800618c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80061900
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80061900:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x6bfc
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


.globl moveObject__10TMameGessoFv
moveObject__10TMameGessoFv: # 0x80061934
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      moveObject__12TWalkerEnemyFv
    lbz     r0, -0x6f40(r13)
    extsb.  r0, r0
    bne-    branch_0x80061990
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f3c(r13)
    addi    r0, r3, 0x14d4
    lis     r4, 0x8006
    stw     r0, -0x6f3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x6b0
    subi    r4, r4, 0x840
    subi    r3, r13, 0x6f3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f40(r13)
branch_0x80061990:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6f3c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800619b4
    lfs     f1, 0x1e4(r31)
    lfs     f0, 0x1e8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800619b4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__10TMameGessoFP12TLiveManager
init__10TMameGessoFP12TLiveManager: # 0x800619c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x8
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    stw     r0, 0x150(r31)
    lbz     r0, -0x6f70(r13)
    extsb.  r0, r0
    bne-    branch_0x80061a3c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6f6c(r13)
    addi    r0, r3, 0x1534
    lis     r4, 0x8006
    stw     r0, -0x6f6c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x668
    subi    r4, r4, 0xbc8
    subi    r3, r13, 0x6f6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6f70(r13)
branch_0x80061a3c:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6f6c
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
    stw     r3, 0x194(r31)
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80061a8c
    mr      r3, r30
    bl      __ct__17TMapCollisionMoveFv
branch_0x80061a8c:
    stw     r30, 0x198(r31)
    li      r4, 0x2
    li      r5, 0x0
    lwz     r3, 0x198(r31)
    li      r6, 0x0
    li      r7, 0x0
    bl      init__17TMapCollisionMoveFUlUssPC10TLiveActor
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x1d4(r31)
    stw     r0, 0x1d8(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__10TMameGessoFR20JSUMemoryInputStream
load__10TMameGessoFR20JSUMemoryInputStream: # 0x80061ae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    li      r0, 0x1
    stb     r0, 0x1d2(r31)
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


.globl __ct__10TMameGessoFPCc
__ct__10TMameGessoFPCc: # 0x80061b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    lwz     r31, 0x8(sp)
    addi    r3, r3, 0x1544
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x8002
    stw     r0, 0x20(r31)
    addi    r4, r3, 0x10dc
    addi    r3, r31, 0x19c
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x4
    bl      __construct_array
    li      r4, 0x0
    stw     r4, 0x1cc(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stb     r4, 0x1d0(r31)
    stb     r4, 0x1d1(r31)
    stb     r4, 0x1d2(r31)
    lfs     f0, -0x6d64(rtoc)
    stfs    f0, 0x1e0(r31)
    stfs    f0, 0x1e4(r31)
    stfs    f0, 0x1e8(r31)
    stb     r0, 0x1ec(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__17TMameGessoManagerFUlPQ26JDrama9TGraphics
perform__17TMameGessoManagerFUlPQ26JDrama9TGraphics: # 0x80061bc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    addi    r27, r4, 0x0
    addi    r26, r3, 0x0
    addi    r28, r5, 0x0
    clrlwi  r30, r4, 31
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x80061c4c

branch_0x80061bec:
    cmplwi  r30, 0x0
    beq-    branch_0x80061c44
    lwz     r3, 0x18(r26)
    lwzx    r3, r3, r31
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80061c44
    lbz     r0, 0x1d2(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80061c44
    lwz     r4, 0x1cc(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x1cc(r3)
    lwz     r4, 0x194(r3)
    lwz     r5, 0x1cc(r3)
    lwz     r0, 0x3b4(r4)
    cmpw    r5, r0
    ble-    branch_0x80061c44
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x80061c44:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x80061c4c:
    lwz     r0, 0x14(r26)
    cmpw    r29, r0
    blt+    branch_0x80061bec
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lmw     r26, 0x30(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl initSetEnemies__17TMameGessoManagerFv
initSetEnemies__17TMameGessoManagerFv: # 0x80061c7c
    blr


.globl createEnemyInstance__17TMameGessoManagerFv
createEnemyInstance__17TMameGessoManagerFv: # 0x80061c80
    mflr    r0
    li      r3, 0x1f0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80061cb0
    lis     r3, 0x8038
    subi    r4, r3, 0x6bf0
    addi    r3, r31, 0x0
    bl      __ct__10TMameGessoFPCc
branch_0x80061cb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__17TMameGessoManagerFv
loadAfter__17TMameGessoManagerFv: # 0x80061cc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__17TMameGessoManagerFR20JSUMemoryInputStream
load__17TMameGessoManagerFR20JSUMemoryInputStream: # 0x80061ce8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x444
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80061d24
    lis     r3, 0x8038
    subi    r4, r3, 0x6be0
    addi    r3, r30, 0x0
    bl      __ct__24TMameGessoSaveLoadParamsFPCc
branch_0x80061d24:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMameGessoManagerFPCc
__ct__17TMameGessoManagerFPCc: # 0x80061d40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x16fc
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__24TMameGessoSaveLoadParamsFPCc
__ct__24TMameGessoSaveLoadParamsFPCc: # 0x80061d7c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    subi    r30, r5, 0x6e68
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x2a0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x2a0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x32c(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x6d50(rtoc)
    addi    r3, r30, 0x2b8
    stfs    f0, 0x33c(r31)
    stw     r28, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x2b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x340(r31)
    addi    r3, r30, 0x2cc
    lfs     f0, -0x6d28(rtoc)
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x2cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x354(r31)
    li      r0, 0x64
    lis     r3, 0x803b
    stw     r0, 0x364(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x2dc
    stw     r26, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x2dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x2f0
    lfs     f0, -0x6d50(rtoc)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x2f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x2fc
    lfs     f0, -0x6d44(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x2fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0x6d50(rtoc)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3a4(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x320
    stw     r0, 0x3b4(r31)
    stw     r26, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3b8(r31)
    li      r0, 0x32
    addi    r3, r30, 0x334
    stw     r0, 0x3c8(r31)
    stw     r26, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3cc(r31)
    li      r0, 0xc8
    addi    r3, r30, 0x348
    stw     r0, 0x3dc(r31)
    stw     r26, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x348
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3e0(r31)
    li      r0, 0x3e8
    addi    r3, r30, 0x360
    stw     r0, 0x3f0(r31)
    stw     r26, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x360
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x370
    lfs     f0, -0x6d58(rtoc)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x370
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    addi    r3, r30, 0x384
    lfs     f0, -0x6d5c(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x41c
    addi    r6, r30, 0x384
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41c(r31)
    addi    r3, r30, 0x398
    lfs     f0, -0x6d24(rtoc)
    stfs    f0, 0x42c(r31)
    stw     r28, 0x41c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x430
    addi    r6, r30, 0x398
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x430(r31)
    mr      r3, r31
    lfs     f0, -0x6d48(rtoc)
    stfs    f0, 0x440(r31)
    stw     r28, 0x430(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl changeByJuice__10TMameGessoFv
changeByJuice__10TMameGessoFv: # 0x80062050
    li      r3, 0x0
    blr


.globl isEatenByYosshi__10TMameGessoFv
isEatenByYosshi__10TMameGessoFv: # 0x80062058
    li      r3, 0x0
    blr


.globl forceKill__10TMameGessoFv
forceKill__10TMameGessoFv: # 0x80062060
    blr


.globl setBehavior__11TSmallEnemyFv
setBehavior__11TSmallEnemyFv: # 0x80062064
    blr


.globl setWalkAnm__11TSmallEnemyFv
setWalkAnm__11TSmallEnemyFv: # 0x80062068
    blr


.globl setRunAnm__11TSmallEnemyFv
setRunAnm__11TSmallEnemyFv: # 0x8006206c
    blr


.globl __dt__10TMameGessoFv
__dt__10TMameGessoFv: # 0x80062070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800620f0
    lis     r3, 0x803b
    addi    r3, r3, 0x1544
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800620e0
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800620e0
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800620e0:
    extsh.  r0, r31
    ble-    branch_0x800620f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800620f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TMameGessoManagerFv
__dt__17TMameGessoManagerFv: # 0x8006210c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80062164
    lis     r3, 0x803b
    addi    r0, r3, 0x16fc
    stw     r0, 0x0(r30)
    beq-    branch_0x80062154
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80062154:
    extsh.  r0, r31
    ble-    branch_0x80062164
    mr      r3, r30
    bl      __dl__FPv
branch_0x80062164:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_mameGesso_cpp
__sinit_mameGesso_cpp: # 0x80062180
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x668
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800621c8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800621c8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800621f8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800621f8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80062228
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80062228:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80062258
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80062258:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80062288
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80062288:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800622b8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800622b8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800622e8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800622e8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80062318
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80062318:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80062348
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80062348:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80062378
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80062378:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800623a8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800623a8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800623d8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800623d8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TMameGessoFv
_32___dt__10TMameGessoFv: # 0x800623ec
    subi    r3, r3, 0x20
    b       __dt__10TMameGessoFv

