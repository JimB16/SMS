
.globl __dt__20TNervePoihanaTrappedFv
__dt__20TNervePoihanaTrappedFv: # 0x800b644c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b6490
    lis     r3, 0x803b
    addi    r0, r3, 0x6fc8
    stw     r0, 0x0(r31)
    beq-    branch_0x800b6480
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b6480:
    extsh.  r0, r4
    ble-    branch_0x800b6490
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b6490:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNervePoihanaTrappedCFP24TSpineBase_10TLiveActor_
execute__20TNervePoihanaTrappedCFP24TSpineBase_10TLiveActor_: # 0x800b64a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stfd    f31, 0x150(sp)
    stw     r31, 0x14c(sp)
    stw     r30, 0x148(sp)
    mr      r30, r4
    lwz     r3, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r3, 0x3c
    bge-    branch_0x800b6760
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b64e8
    li      r0, 0x1
    b       branch_0x800b64ec

branch_0x800b64e8:
    li      r0, 0x0
branch_0x800b64ec:
    cmpwi   r0, 0x0
    beq-    branch_0x800b64fc
    cmpwi   r3, 0x2
    bge-    branch_0x800b6958
branch_0x800b64fc:
    li      r0, 0x1
    stb     r0, 0x1a9(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6220(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lbz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800b6748
    lwz     r4, 0x19c(r31)
    lfs     f2, 0x38c(r4)
    lfs     f1, 0x3b4(r4)
    lfs     f3, 0x3a0(r4)
    lfs     f0, 0x3c8(r4)
    stfs    f0, 0x124(sp)
    stfs    f1, 0x128(sp)
    stfs    f3, 0x11c(sp)
    stfs    f2, 0x120(sp)
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800b65a0
    lwz     r5, 0x10(r31)
    addi    r4, r3, 0x10
    lwz     r0, 0x14(r31)
    addi    r3, sp, 0xd0
    stw     r5, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xd8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xd0(sp)
    lwz     r3, 0xd4(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    b       branch_0x800b65dc

branch_0x800b65a0:
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0xc4
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xcc(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0xcc(sp)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
branch_0x800b65dc:
    lfs     f2, 0x110(sp)
    lis     r0, 0x4330
    lfs     f0, 0x114(sp)
    lfd     f1, -0x6200(rtoc)
    fcmpu   cr0, f2, f0
    lfs     f2, 0x118(sp)
    mfcr    r3
    extrwi  r3, r3, 1, 2
    stw     r3, 0x144(sp)
    stw     r0, 0x140(sp)
    lfd     f0, 0x140(sp)
    fsubs   f0, f0, f1
    fcmpu   cr0, f2, f0
    bne-    branch_0x800b661c
    lfs     f0, -0x621c(rtoc)
    stfs    f0, 0x110(sp)
branch_0x800b661c:
    addi    r3, sp, 0x110
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0x128(sp)
    lfs     f0, 0x124(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x61f8(rtoc)
    stw     r0, 0x144(sp)
    lis     r30, 0x4330
    lfs     f1, -0x6218(rtoc)
    stw     r30, 0x140(sp)
    lfs     f2, 0x124(sp)
    lfd     f0, 0x140(sp)
    lfs     f3, 0x110(sp)
    fsubs   f4, f0, f4
    lfs     f0, 0x11c(sp)
    fmuls   f1, f1, f4
    fmuls   f1, f31, f1
    fadds   f1, f2, f1
    fmuls   f1, f3, f1
    stfs    f1, 0x110(sp)
    lfs     f1, 0x120(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x61f8(rtoc)
    stw     r0, 0x13c(sp)
    lfs     f0, -0x6218(rtoc)
    stw     r30, 0x138(sp)
    lfs     f1, 0x11c(sp)
    lfd     f2, 0x138(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f1, 0x128(sp)
    lfs     f0, 0x124(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x61f8(rtoc)
    stw     r0, 0x134(sp)
    mr      r3, r31
    lfs     f0, -0x6218(rtoc)
    li      r4, 0x7
    stw     r30, 0x130(sp)
    lfs     f1, 0x124(sp)
    lfd     f3, 0x130(sp)
    lfs     f2, 0x118(sp)
    fsubs   f3, f3, f4
    fmuls   f0, f0, f3
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x118(sp)
    lwz     r5, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r5, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x118(sp)
    stw     r0, 0xb4(r31)
    lwz     r5, 0x110(sp)
    lwz     r0, 0x114(sp)
    stw     r5, 0x1b0(r31)
    stw     r0, 0x1b4(r31)
    lwz     r0, 0x118(sp)
    stw     r0, 0x1b8(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b6958

branch_0x800b6748:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    b       branch_0x800b6958

branch_0x800b6760:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b6774
    li      r0, 0x1
    b       branch_0x800b6778

branch_0x800b6774:
    li      r0, 0x0
branch_0x800b6778:
    cmpwi   r0, 0x0
    bne-    branch_0x800b6958
    lbz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800b68bc
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800b6820
    bne-    branch_0x800b67ac
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x198(r31)
    b       branch_0x800b6814

branch_0x800b67ac:
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xcd
    bne-    branch_0x800b6814
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, -0x6214(rtoc)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800b6814
    lbz     r0, 0x1a9(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b680c
    li      r0, 0x0
    stb     r0, 0x1a8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, 0x198(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b680c
    li      r0, 0x1
    stb     r0, 0x1a8(r31)
    lfs     f0, -0x6210(rtoc)
    stfs    f0, 0xc0(r31)
branch_0x800b680c:
    li      r0, 0x1
    b       branch_0x800b6818

branch_0x800b6814:
    li      r0, 0x0
branch_0x800b6818:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b685c
branch_0x800b6820:
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b6854
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b6854
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b6854:
    li      r3, 0x1
    b       branch_0x800b695c

branch_0x800b685c:
    lfs     f0, 0x1b0(r31)
    lfs     f1, -0x620c(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b0(r31)
    lfs     f0, 0x1b4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(r31)
    lfs     f0, 0x1b8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(r31)
    lwz     r3, 0x1b0(r31)
    lwz     r0, 0x1b4(r31)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x1b8(r31)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6208(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    b       branch_0x800b6958

branch_0x800b68bc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x18(r3)
    stfs    f0, 0xc0(r31)
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b691c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r4, 0x800b
    stw     r0, -0x6ad4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1904
    addi    r4, r4, 0x6978
    subi    r3, r13, 0x6ad4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b691c:
    subi    r4, r13, 0x6ad4
    cmplwi  r4, 0x0
    beq-    branch_0x800b6950
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b6950
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b6950:
    li      r3, 0x1
    b       branch_0x800b695c

branch_0x800b6958:
    li      r3, 0x0
branch_0x800b695c:
    lwz     r0, 0x15c(sp)
    lfd     f31, 0x150(sp)
    lwz     r31, 0x14c(sp)
    mtlr    r0
    lwz     r30, 0x148(sp)
    addi    sp, sp, 0x158
    blr


.globl __dt__19TNervePoihanaFreezeFv
__dt__19TNervePoihanaFreezeFv: # 0x800b6978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b69bc
    lis     r3, 0x803b
    addi    r0, r3, 0x6fe8
    stw     r0, 0x0(r31)
    beq-    branch_0x800b69ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b69ac:
    extsh.  r0, r4
    ble-    branch_0x800b69bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b69bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNervePoihanaThrowCFP24TSpineBase_10TLiveActor_
execute__18TNervePoihanaThrowCFP24TSpineBase_10TLiveActor_: # 0x800b69d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b6a20
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r0, 0x1ac(r31)
branch_0x800b6a20:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x61f0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800b6a58
    lwz     r0, 0x1ac(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x800b6a58
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x61ec(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x800b6a58:
    lwz     r3, 0x1ac(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x800b6af8
    addi    r0, r3, 0x1
    stw     r0, 0x1ac(r31)
    lwz     r0, 0x1ac(r31)
    cmpwi   r0, 0x10
    ble-    branch_0x800b6af8
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_THROW
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r4, 0x19c(r31)
    addi    r3, sp, 0x64
    lfs     f1, 0x30(r31)
    lfs     f31, 0x350(r4)
    lfs     f2, 0x34(r31)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f2, -0x61ec(rtoc)
    addi    r4, sp, 0x58
    lfs     f1, -0x621c(rtoc)
    fneg    f0, f31
    stfs    f2, 0x58(sp)
    mr      r5, r4
    stfs    f1, 0x5c(sp)
    addi    r3, sp, 0x64
    stfs    f0, 0x60(sp)
    bl      PSMTXMultVec
    lwz     r4, 0x19c(r31)
    addi    r3, sp, 0x58
    lfs     f1, 0x33c(r4)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    li      r30, 0x0
    stw     r30, 0x1ac(r31)
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    stw     r30, 0x1ac(r31)
branch_0x800b6af8:
    lwz     r0, 0x1ac(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x800b6b60
    lwz     r3, -0x60f0(r13)
    li      r4, 0x15
    li      r5, 0xf
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, 0x74(r31)
    li      r4, 0xb
    lbz     r0, -0x7e48(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, gpMarioParticleManager(r13)
    lwz     r5, 0x58(r5)
    add     r29, r5, r0
    addi    r5, r29, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r29, 0x0
    li      r4, 0x39
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800b6b60:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b6b7c
    li      r3, 0x1
    b       branch_0x800b6b80

branch_0x800b6b7c:
    li      r3, 0x0
branch_0x800b6b80:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__18TNervePoihanaThrowFv
__dt__18TNervePoihanaThrowFv: # 0x800b6ba0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b6be4
    lis     r3, 0x803b
    addi    r0, r3, 0x6fd8
    stw     r0, 0x0(r31)
    beq-    branch_0x800b6bd4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b6bd4:
    extsh.  r0, r4
    ble-    branch_0x800b6be4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b6be4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNervePoihanaFreezeCFP24TSpineBase_10TLiveActor_
execute__19TNervePoihanaFreezeCFP24TSpineBase_10TLiveActor_: # 0x800b6bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b6ca4
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800b6c4c
    cmplwi  r0, 0x4701
    beq-    branch_0x800b6c4c
    cmplwi  r0, 0x8701
    beq-    branch_0x800b6c4c
    cmplwi  r0, 0xc701
    bne-    branch_0x800b6c54
branch_0x800b6c4c:
    li      r0, 0x1
    b       branch_0x800b6c58

branch_0x800b6c54:
    li      r0, 0x0
branch_0x800b6c58:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b6c7c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b6c94

branch_0x800b6c7c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b6c94:
    lwz     r3, 0x1bc(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800b6ca4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b6de0
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xc
    bne-    branch_0x800b6ccc
    li      r0, 0x1
    b       branch_0x800b6cd0

branch_0x800b6ccc:
    li      r0, 0x0
branch_0x800b6cd0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b6cf4
    cmpwi   r3, 0x3
    bne-    branch_0x800b6ce8
    li      r0, 0x1
    b       branch_0x800b6cec

branch_0x800b6ce8:
    li      r0, 0x0
branch_0x800b6cec:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b6d18
branch_0x800b6cf4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x1a9(r31)
    b       branch_0x800b6de0

branch_0x800b6d18:
    cmpwi   r3, 0x4
    bne-    branch_0x800b6d28
    li      r0, 0x1
    b       branch_0x800b6d2c

branch_0x800b6d28:
    li      r0, 0x0
branch_0x800b6d2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b6d90
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x158(r3)
    cmpw    r4, r0
    ble-    branch_0x800b6d74
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b6de0

branch_0x800b6d74:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b6de0

branch_0x800b6d90:
    cmpwi   r3, 0x2
    bne-    branch_0x800b6da0
    li      r0, 0x1
    b       branch_0x800b6da4

branch_0x800b6da0:
    li      r0, 0x0
branch_0x800b6da4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b6dc8
    cmpwi   r3, 0xd
    bne-    branch_0x800b6dbc
    li      r0, 0x1
    b       branch_0x800b6dc0

branch_0x800b6dbc:
    li      r0, 0x0
branch_0x800b6dc0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b6de0
branch_0x800b6dc8:
    lwz     r4, 0x1bc(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    b       branch_0x800b6de4

branch_0x800b6de0:
    li      r3, 0x0
branch_0x800b6de4:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl execute__18TNervePoihanaSleepCFP24TSpineBase_10TLiveActor_
execute__18TNervePoihanaSleepCFP24TSpineBase_10TLiveActor_: # 0x800b6dfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b6ea4
    lbz     r0, 0x1c8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b6e80
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b6e6c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b6e6c
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b6e6c:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x800b7118

branch_0x800b6e80:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800b6ea4:
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b6edc
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b6ec4
    li      r0, 0x1
    b       branch_0x800b6ec8

branch_0x800b6ec4:
    li      r0, 0x0
branch_0x800b6ec8:
    cmpwi   r0, 0x0
    bne-    branch_0x800b6edc
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
branch_0x800b6edc:
    lwz     r3, 0x1a4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1a4(r31)
    lbz     r0, 0x194(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b6f10
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800b6f08
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x800b6f08:
    cmplwi  r3, 0x0
    beq-    branch_0x800b6f8c
branch_0x800b6f10:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0xa
    bne-    branch_0x800b6f24
    li      r0, 0x1
    b       branch_0x800b6f28

branch_0x800b6f24:
    li      r0, 0x0
branch_0x800b6f28:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b6f8c
    lwz     r3, gpMSound(r13)
    li      r4, 0x2955
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b6f60
    addi    r4, r31, 0x10
    li      r3, 0x2955
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800b6f60:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x61e8(rtoc)
    stfs    f0, 0x10(r3)
branch_0x800b6f8c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b7114
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x6
    bne-    branch_0x800b6fb4
    li      r0, 0x1
    b       branch_0x800b6fb8

branch_0x800b6fb4:
    li      r0, 0x0
branch_0x800b6fb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b6fdc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b7114

branch_0x800b6fdc:
    cmpwi   r3, 0x5
    bne-    branch_0x800b6fec
    li      r0, 0x1
    b       branch_0x800b6ff0

branch_0x800b6fec:
    li      r0, 0x0
branch_0x800b6ff0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b7034
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800b7114
    lwz     r3, 0x19c(r31)
    lwz     r4, 0x1a4(r31)
    lwz     r0, 0x364(r3)
    cmpw    r4, r0
    ble-    branch_0x800b7114
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b7114

branch_0x800b7034:
    cmpwi   r3, 0xa
    bne-    branch_0x800b7044
    li      r0, 0x1
    b       branch_0x800b7048

branch_0x800b7044:
    li      r0, 0x0
branch_0x800b7048:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b70a0
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b708c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b708c
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b708c:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x800b7118

branch_0x800b70a0:
    lbz     r0, 0x1c8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b70fc
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b70e8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b70e8
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b70e8:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x800b7118

branch_0x800b70fc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b7114:
    li      r3, 0x0
branch_0x800b7118:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__18TNervePoihanaSleepFv
__dt__18TNervePoihanaSleepFv: # 0x800b7130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b7174
    lis     r3, 0x803b
    addi    r0, r3, 0x6ff8
    stw     r0, 0x0(r31)
    beq-    branch_0x800b7164
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b7164:
    extsh.  r0, r4
    ble-    branch_0x800b7174
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b7174:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TSleepPoiHanaFR20JSUMemoryInputStream
load__13TSleepPoiHanaFR20JSUMemoryInputStream: # 0x800b718c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stb     r0, 0x1a0(r3)
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


.globl __ct__13TSleepPoiHanaFPCc
__ct__13TSleepPoiHanaFPCc: # 0x800b71d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7378
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    li      r6, 0x0
    addi    r4, r3, 0x7008
    stb     r6, 0x194(r31)
    li      r5, 0x1
    addi    r0, r4, 0x24
    stb     r5, 0x195(r31)
    mr      r3, r31
    lfs     f0, -0x61ec(rtoc)
    stfs    f0, 0x198(r31)
    stb     r5, 0x1a0(r31)
    stw     r6, 0x1a4(r31)
    stb     r5, 0x1a8(r31)
    stb     r6, 0x1a9(r31)
    stw     r6, 0x1bc(r31)
    stb     r5, 0x1c8(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__8TPoiHanaFv
__dt__8TPoiHanaFv: # 0x800b725c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b72dc
    lis     r3, 0x803b
    addi    r3, r3, 0x7378
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b72cc
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b72cc
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800b72cc:
    extsh.  r0, r31
    ble-    branch_0x800b72dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b72dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl attackToMario__11TPoiHanaRedFv
attackToMario__11TPoiHanaRedFv: # 0x800b72f8
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r4, 0x18f8
    stw     r30, 0x68(sp)
    mr      r30, r3
    stw     r29, 0x64(sp)
    lwz     r3, 0x8c(r3)
    lwz     r29, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r29, r3
    bne-    branch_0x800b733c
    addi    r3, r30, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800b733c:
    lbz     r0, -0x6adf(r13)
    extsb.  r0, r0
    bne-    branch_0x800b737c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6adc(r13)
    addi    r0, r3, 0x6ff8
    lis     r3, 0x800b
    stw     r0, -0x6adc(r13)
    addi    r4, r3, 0x7130
    subi    r3, r13, 0x6adc
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6adf(r13)
branch_0x800b737c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6adc
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    bne-    branch_0x800b73ac
    li      r0, 0x1
    stb     r0, 0x1a0(r30)
    stb     r0, 0x194(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    b       branch_0x800b7504

branch_0x800b73ac:
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r29, r3
    bne-    branch_0x800b7450
    lbz     r0, -0x6ad0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b73f4
    subi    r3, r13, 0x6acc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x6fd8
    lis     r3, 0x800b
    stw     r0, -0x6acc(r13)
    addi    r4, r3, 0x6ba0
    subi    r3, r13, 0x6acc
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad0(r13)
branch_0x800b73f4:
    subi    r6, r13, 0x6acc
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800b7504
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800b7440
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800b7440
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b7440:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800b7504

branch_0x800b7450:
    lbz     r0, -0x6ad0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b7490
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6acc(r13)
    addi    r0, r3, 0x6fd8
    lis     r3, 0x800b
    stw     r0, -0x6acc(r13)
    addi    r4, r3, 0x6ba0
    subi    r3, r13, 0x6acc
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad0(r13)
branch_0x800b7490:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6acc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b7504
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b74e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r3, 0x800b
    stw     r0, -0x6ad4(r13)
    addi    r4, r3, 0x6978
    subi    r3, r13, 0x6ad4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b74e4:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6ad4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b7504
    addi    r3, r30, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800b7504:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl init__11TPoiHanaRedFP12TLiveManager
init__11TPoiHanaRedFP12TLiveManager: # 0x800b7520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__8TPoiHanaFP12TLiveManager
    li      r0, 0x11b
    sth     r0, 0x1c0(r31)
    li      r0, -0x35
    li      r3, -0x7a
    sth     r0, 0x1c2(r31)
    li      r0, 0x0
    sth     r3, 0x1c4(r31)
    stb     r0, 0x1c8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__8TPoiHanaCFv
getBasNameTable__8TPoiHanaCFv: # 0x800b756c
    lis     r3, 0x803b
    addi    r3, r3, 0x6f90
    blr


.globl changeByJuice__8TPoiHanaFv
changeByJuice__8TPoiHanaFv: # 0x800b7578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      changeByJuice__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800b75b0
    lwz     r4, 0x1bc(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    b       branch_0x800b75b4

branch_0x800b75b0:
    li      r3, 0x0
branch_0x800b75b4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl genEventCoin__8TPoiHanaFv
genEventCoin__8TPoiHanaFv: # 0x800b75c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    lwz     r4, 0x180(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800b76e0
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x800b7604
    li      r0, 0x1
    b       branch_0x800b7608

branch_0x800b7604:
    li      r0, 0x0
branch_0x800b7608:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b7628
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    addi    r4, r4, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r30, r3
    b       branch_0x800b7640

branch_0x800b7628:
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800b7640:
    cmplwi  r30, 0x0
    beq-    branch_0x800b76e0
    lwz     r4, 0x10(r31)
    addi    r3, sp, 0x14
    lwz     r0, 0x14(r31)
    stw     r4, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r30)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x14(sp)
    addi    r3, sp, 0x34
    lwz     r5, 0x18(sp)
    mr      r4, r3
    stw     r0, 0x34(sp)
    lwz     r0, 0x1c(sp)
    stw     r5, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f2, -0x61e4(rtoc)
    li      r0, 0x0
    lfs     f0, 0x34(sp)
    lfs     f1, 0x3c(sp)
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    stfs    f0, 0xac(r30)
    lfs     f0, -0x61e0(rtoc)
    stfs    f0, 0xb0(r30)
    stfs    f1, 0xb4(r30)
    lwz     r3, 0xf0(r30)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r30)
    stw     r0, 0x180(r31)
branch_0x800b76e0:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl isMoving__8TPoiHanaFv
isMoving__8TPoiHanaFv: # 0x800b76f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6adf(r13)
    extsb.  r0, r0
    bne-    branch_0x800b7750
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6adc(r13)
    addi    r0, r3, 0x6ff8
    lis     r4, 0x800b
    stw     r0, -0x6adc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x18f8
    addi    r4, r4, 0x7130
    subi    r3, r13, 0x6adc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6adf(r13)
branch_0x800b7750:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6adc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b77bc
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b77a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r4, 0x800b
    stw     r0, -0x6ad4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1904
    addi    r4, r4, 0x6978
    subi    r3, r13, 0x6ad4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b77a8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ad4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800b77c4
branch_0x800b77bc:
    li      r3, 0x0
    b       branch_0x800b77c8

branch_0x800b77c4:
    li      r3, 0x1
branch_0x800b77c8:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getGravityY__8TPoiHanaCFv
getGravityY__8TPoiHanaCFv: # 0x800b77dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      getGravityY__10TLiveActorCFv
    lbz     r0, -0x6ac8(r13)
    fmr     f31, f1
    extsb.  r0, r0
    bne-    branch_0x800b7840
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ac4(r13)
    addi    r0, r3, 0x6fc8
    lis     r4, 0x800b
    stw     r0, -0x6ac4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x191c
    addi    r4, r4, 0x644c
    subi    r3, r13, 0x6ac4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ac8(r13)
branch_0x800b7840:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ac4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800b785c
    lwz     r3, 0x19c(r31)
    lfs     f31, 0x3dc(r3)
branch_0x800b785c:
    lwz     r0, 0x44(sp)
    fmr     f1, f31
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl generateItem__8TPoiHanaFv
generateItem__8TPoiHanaFv: # 0x800b7878
    lbz     r0, 0x195(r3)
    cmplwi  r0, 0x0
    beqlr-    

    li      r0, 0x0
    stb     r0, 0x195(r3)
    blr


.globl calcRootMatrix__8TPoiHanaFv
calcRootMatrix__8TPoiHanaFv: # 0x800b7890
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x3
    bne-    branch_0x800b78bc
    li      r0, 0x1
    b       branch_0x800b78c0

branch_0x800b78bc:
    li      r0, 0x0
branch_0x800b78c0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b78e4
    cmpwi   r3, 0x4
    bne-    branch_0x800b78d8
    li      r0, 0x1
    b       branch_0x800b78dc

branch_0x800b78d8:
    li      r0, 0x0
branch_0x800b78dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b7934
branch_0x800b78e4:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x12f
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b7934
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
branch_0x800b7934:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x5
    bne-    branch_0x800b7948
    li      r0, 0x1
    b       branch_0x800b794c

branch_0x800b7948:
    li      r0, 0x0
branch_0x800b794c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b79a4
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x124
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b79a4
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
branch_0x800b79a4:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xc
    bne-    branch_0x800b79b8
    li      r0, 0x1
    b       branch_0x800b79bc

branch_0x800b79b8:
    li      r0, 0x0
branch_0x800b79bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b79e0
    cmpwi   r3, 0xd
    bne-    branch_0x800b79d4
    li      r0, 0x1
    b       branch_0x800b79d8

branch_0x800b79d4:
    li      r0, 0x0
branch_0x800b79d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b7b7c
branch_0x800b79e0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x61e0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800b7b7c
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800b7a24
    cmplwi  r0, 0x4701
    beq-    branch_0x800b7a24
    cmplwi  r0, 0x8701
    beq-    branch_0x800b7a24
    cmplwi  r0, 0xc701
    bne-    branch_0x800b7a2c
branch_0x800b7a24:
    li      r0, 0x1
    b       branch_0x800b7a30

branch_0x800b7a2c:
    li      r0, 0x0
branch_0x800b7a30:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b7adc
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x10
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b7a88
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
branch_0x800b7a88:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x11
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b7b7c
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
    b       branch_0x800b7b7c

branch_0x800b7adc:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x53
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b7b2c
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
branch_0x800b7b2c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x10
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b7b7c
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
branch_0x800b7b7c:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800b7b90
    li      r0, 0x1
    b       branch_0x800b7b94

branch_0x800b7b90:
    li      r0, 0x0
branch_0x800b7b94:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b7c0c
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800b7bc4
    cmplwi  r0, 0x4701
    beq-    branch_0x800b7bc4
    cmplwi  r0, 0x8701
    beq-    branch_0x800b7bc4
    cmplwi  r0, 0xc701
    bne-    branch_0x800b7bcc
branch_0x800b7bc4:
    li      r0, 0x1
    b       branch_0x800b7bd0

branch_0x800b7bcc:
    li      r0, 0x0
branch_0x800b7bd0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b7c0c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x61dc(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800b7c0c
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x53
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800b7c0c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl doKeepDistance__8TPoiHanaFv
doKeepDistance__8TPoiHanaFv: # 0x800b7c20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x800b7c40
    li      r3, 0x0
    b       branch_0x800b7c44

branch_0x800b7c40:
    li      r3, 0x1
branch_0x800b7c44:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isInhibitedForceMove__8TPoiHanaFv
isInhibitedForceMove__8TPoiHanaFv: # 0x800b7c54
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800b7c68
    li      r3, 0x1
    blr

branch_0x800b7c68:
    li      r3, 0x0
    blr


.globl walkBehavior__8TPoiHanaFif
walkBehavior__8TPoiHanaFif: # 0x800b7c70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    bl      walkBehavior__12TWalkerEnemyFif
    lbz     r0, -0x7e47(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800b7dd0
    cmpwi   r30, 0x0
    bne-    branch_0x800b7dd0
    lwz     r5, 0x1a4(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    addi    r0, r5, 0x1
    stw     r0, 0x1a4(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b7dd0
    lha     r0, 0x7c(r31)
    lwz     r4, 0x19c(r31)
    mulli   r3, r0, 0x64
    lwz     r0, 0x1a4(r31)
    lwz     r4, 0x378(r4)
    add     r4, r4, r3
    cmpw    r0, r4
    ble-    branch_0x800b7dd0
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    li      r3, -0x1f4
    li      r0, 0x1f4
    stw     r3, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    subf    r30, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x61f8(rtoc)
    stw     r0, 0x54(sp)
    lis     r4, 0x4330
    xoris   r0, r30, 0x8000
    lfs     f1, -0x6218(rtoc)
    stw     r4, 0x50(sp)
    lwz     r3, 0x34(sp)
    stw     r0, 0x4c(sp)
    lfd     f0, 0x50(sp)
    stw     r4, 0x48(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x48(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    add     r0, r3, r0
    stw     r0, 0x1a4(r31)
    lbz     r0, -0x6adf(r13)
    extsb.  r0, r0
    bne-    branch_0x800b7da4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6adc(r13)
    addi    r0, r3, 0x6ff8
    lis     r4, 0x800b
    stw     r0, -0x6adc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x18f8
    addi    r4, r4, 0x7130
    subi    r3, r13, 0x6adc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6adf(r13)
branch_0x800b7da4:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6adc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800b7dbc
    stw     r0, 0x1c(r4)
branch_0x800b7dbc:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    li      r0, 0x1
    stw     r3, 0x14(r4)
    stb     r0, 0x195(r31)
branch_0x800b7dd0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl isCollidMove__8TPoiHanaFP9THitActor
isCollidMove__8TPoiHanaFP9THitActor: # 0x800b7de8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r0, 0x4c(r4)
    clrrwi  r3, r0, 16
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x0
    bne-    branch_0x800b7f80
    mr      r3, r30
    bl      isHideObj__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x800b7e30
    li      r3, 0x0
    b       branch_0x800b7fcc

branch_0x800b7e30:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x19a
    beq-    branch_0x800b7e48
    cmplwi  r0, 0xd0
    bne-    branch_0x800b7e50
branch_0x800b7e48:
    li      r3, 0x0
    b       branch_0x800b7fcc

branch_0x800b7e50:
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    bne-    branch_0x800b7f78
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b7ea8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r4, 0x800b
    stw     r0, -0x6ad4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1904
    addi    r4, r4, 0x6978
    subi    r3, r13, 0x6ad4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b7ea8:
    subi    r6, r13, 0x6ad4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800b7f00
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800b7ef4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800b7ef4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b7ef4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800b7f00:
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    lfs     f2, -0x61d8(rtoc)
    stw     r3, 0x3c(sp)
    lfs     f0, -0x61d4(rtoc)
    stw     r0, 0x40(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x3c(sp)
    lfs     f1, 0x40(sp)
    fmuls   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x44(sp)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x61e4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800b7f78:
    li      r3, 0x1
    b       branch_0x800b7fcc

branch_0x800b7f80:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b7f94
    li      r0, 0x1
    b       branch_0x800b7f98

branch_0x800b7f94:
    li      r0, 0x0
branch_0x800b7f98:
    cmpwi   r0, 0x0
    bne-    branch_0x800b7fc8
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b7fb4
    li      r0, 0x1
    b       branch_0x800b7fb8

branch_0x800b7fb4:
    li      r0, 0x0
branch_0x800b7fb8:
    cmpwi   r0, 0x0
    bne-    branch_0x800b7fc8
    li      r3, 0x1
    b       branch_0x800b7fcc

branch_0x800b7fc8:
    li      r3, 0x0
branch_0x800b7fcc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl isHitValid__8TPoiHanaFUl
isHitValid__8TPoiHanaFUl: # 0x800b7fe4
    mflr    r0
    cmplwi  r4, 0xb
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x800b8014
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    b       branch_0x800b809c

branch_0x800b8014:
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8058
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r4, 0x800b
    stw     r0, -0x6ad4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1904
    addi    r4, r4, 0x6978
    subi    r3, r13, 0x6ad4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b8058:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ad4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800b8098
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800b8098:
    li      r3, 0x0
branch_0x800b809c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setDeadAnm__8TPoiHanaFv
setDeadAnm__8TPoiHanaFv: # 0x800b80b0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r4, 0x1bc(r3)
    lwz     r3, 0x64(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r4)
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    stb     r0, 0x13c(r31)
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b80fc
    li      r0, 0x3
    stw     r0, 0x18c(r31)
branch_0x800b80fc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xc0
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b8164
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
branch_0x800b8164:
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800b818c
    cmplwi  r0, 0x4701
    beq-    branch_0x800b818c
    cmplwi  r0, 0x8701
    beq-    branch_0x800b818c
    cmplwi  r0, 0xc701
    bne-    branch_0x800b8194
branch_0x800b818c:
    li      r0, 0x1
    b       branch_0x800b8198

branch_0x800b8194:
    li      r0, 0x0
branch_0x800b8198:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b8244
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x10
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b81f0
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
branch_0x800b81f0:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x11
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b82e4
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
    b       branch_0x800b82e4

branch_0x800b8244:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x53
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b8294
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
branch_0x800b8294:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0x10
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b82e4
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
branch_0x800b82e4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setFreezeAnm__8TPoiHanaFv
setFreezeAnm__8TPoiHanaFv: # 0x800b82f8
    mflr    r0
    li      r4, 0xc
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


.globl setRunAnm__8TPoiHanaFv
setRunAnm__8TPoiHanaFv: # 0x800b8328
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


.globl setWaitAnm__8TPoiHanaFv
setWaitAnm__8TPoiHanaFv: # 0x800b8358
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


.globl setWalkAnm__8TPoiHanaFv
setWalkAnm__8TPoiHanaFv: # 0x800b8388
    mflr    r0
    li      r4, 0xb
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


.globl attackToMario__8TPoiHanaFv
attackToMario__8TPoiHanaFv: # 0x800b83b8
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x18f8
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x5c(sp)
    lbz     r0, -0x6adf(r13)
    extsb.  r0, r0
    bne-    branch_0x800b841c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6adc(r13)
    addi    r0, r3, 0x6ff8
    lis     r3, 0x800b
    stw     r0, -0x6adc(r13)
    addi    r4, r3, 0x7130
    subi    r3, r13, 0x6adc
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6adf(r13)
branch_0x800b841c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6adc
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    bne-    branch_0x800b844c
    li      r0, 0x1
    stb     r0, 0x1a0(r30)
    stb     r0, 0x194(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    b       branch_0x800b85a8

branch_0x800b844c:
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r29, r3
    bne-    branch_0x800b84f4
    lbz     r0, -0x6ad0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8498
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6acc(r13)
    addi    r0, r3, 0x6fd8
    lis     r3, 0x800b
    stw     r0, -0x6acc(r13)
    addi    r4, r3, 0x6ba0
    subi    r3, r13, 0x6acc
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad0(r13)
branch_0x800b8498:
    subi    r6, r13, 0x6acc
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800b85a8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800b84e4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800b84e4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b84e4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800b85a8

branch_0x800b84f4:
    lbz     r0, -0x6ad0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8534
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6acc(r13)
    addi    r0, r3, 0x6fd8
    lis     r3, 0x800b
    stw     r0, -0x6acc(r13)
    addi    r4, r3, 0x6ba0
    subi    r3, r13, 0x6acc
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad0(r13)
branch_0x800b8534:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6acc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b85a8
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8588
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r3, 0x800b
    stw     r0, -0x6ad4(r13)
    addi    r4, r3, 0x6978
    subi    r3, r13, 0x6ad4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b8588:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6ad4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b85a8
    addi    r3, r30, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800b85a8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl behaveToWater__8TPoiHanaFP9THitActor
behaveToWater__8TPoiHanaFP9THitActor: # 0x800b85c4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    stb     r0, 0x165(r3)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x800b8620
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    beq-    branch_0x800b8620
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplw   r30, r3
    bne-    branch_0x800b86bc
branch_0x800b8620:
    lbz     r0, -0x6ad8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8664
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ad4(r13)
    addi    r0, r3, 0x6fe8
    lis     r4, 0x800b
    stw     r0, -0x6ad4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1904
    addi    r4, r4, 0x6978
    subi    r3, r13, 0x6ad4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ad8(r13)
branch_0x800b8664:
    subi    r6, r13, 0x6ad4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800b86bc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800b86b0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800b86b0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b86b0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800b86bc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl bind__8TPoiHanaFv
bind__8TPoiHanaFv: # 0x800b86d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6ac8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b872c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ac4(r13)
    addi    r0, r3, 0x6fc8
    lis     r4, 0x800b
    stw     r0, -0x6ac4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x191c
    addi    r4, r4, 0x644c
    subi    r3, r13, 0x6ac4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ac8(r13)
branch_0x800b872c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ac4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800b87d8
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b8754
    li      r0, 0x1
    b       branch_0x800b8758

branch_0x800b8754:
    li      r0, 0x0
branch_0x800b8758:
    cmpwi   r0, 0x0
    beq-    branch_0x800b87d8
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x61ec(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b87d8
    lfs     f1, 0x10(r31)
    mr      r3, r31
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
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
    bge-    branch_0x800b87e0
    stfs    f1, 0xb0(r31)
    b       branch_0x800b87e0

branch_0x800b87d8:
    mr      r3, r31
    bl      bind__10TLiveActorFv
branch_0x800b87e0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl perform__8TPoiHanaFUlPQ26JDrama9TGraphics
perform__8TPoiHanaFUlPQ26JDrama9TGraphics: # 0x800b87f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x1bc(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl moveObject__8TPoiHanaFv
moveObject__8TPoiHanaFv: # 0x800b8848
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    stw     r28, 0x78(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800b8894
    lwz     r4, 0x1bc(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    b       branch_0x800b88d0

branch_0x800b8894:
    lbz     r30, -0x6ae0(r13)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, 0x1bc(r31)
    add     r4, r4, r0
    lfs     f0, 0xc(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x1c(r4)
    lwz     r3, 0x1bc(r31)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x2c(r4)
    lwz     r3, 0x1bc(r31)
    stfs    f0, 0x18(r3)
branch_0x800b88d0:
    li      r29, 0x0
    lwz     r28, 0x1bc(r31)
    mr      r30, r29
    b       branch_0x800b8934

branch_0x800b88e0:
    lwz     r3, 0x44(r28)
    lwzx    r4, r3, r30
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800b8900
    li      r0, 0x1
    b       branch_0x800b8904

branch_0x800b8900:
    li      r0, 0x0
branch_0x800b8904:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b8924
    lwz     r3, 0x68(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
    b       branch_0x800b892c

branch_0x800b8924:
    lwz     r3, 0x68(r28)
    bl      behaveToHitOthers__11TSmallEnemyFP9THitActor
branch_0x800b892c:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800b8934:
    lhz     r0, 0x48(r28)
    cmpw    r29, r0
    blt+    branch_0x800b88e0
    mr      r3, r31
    bl      moveObject__12TWalkerEnemyFv
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b895c
    li      r0, 0x1
    b       branch_0x800b8960

branch_0x800b895c:
    li      r0, 0x0
branch_0x800b8960:
    cmpwi   r0, 0x0
    bne-    branch_0x800b8b04
    lbz     r0, 0x1a9(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b8b04
    lbz     r0, -0x6ac8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b89b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ac4(r13)
    addi    r0, r3, 0x6fc8
    lis     r4, 0x800b
    stw     r0, -0x6ac4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x191c
    addi    r4, r4, 0x644c
    subi    r3, r13, 0x6ac4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ac8(r13)
branch_0x800b89b8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ac4
    lwz     r28, 0x14(r3)
    cmplw   r28, r0
    beq-    branch_0x800b8b04
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r28, r3
    beq-    branch_0x800b8b04
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x800b89f4
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x198(r31)
    b       branch_0x800b8a5c

branch_0x800b89f4:
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xcd
    bne-    branch_0x800b8a5c
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, -0x6214(rtoc)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800b8a5c
    lbz     r0, 0x1a9(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800b8a54
    li      r0, 0x0
    stb     r0, 0x1a8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, 0x198(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b8a54
    li      r0, 0x1
    stb     r0, 0x1a8(r31)
    lfs     f0, -0x6210(rtoc)
    stfs    f0, 0xc0(r31)
branch_0x800b8a54:
    li      r0, 0x1
    b       branch_0x800b8a60

branch_0x800b8a5c:
    li      r0, 0x0
branch_0x800b8a60:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b8b04
    lbz     r0, -0x6ac8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8aac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ac4(r13)
    addi    r0, r3, 0x6fc8
    lis     r4, 0x800b
    stw     r0, -0x6ac4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x191c
    addi    r4, r4, 0x644c
    subi    r3, r13, 0x6ac4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ac8(r13)
branch_0x800b8aac:
    subi    r6, r13, 0x6ac4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800b8b04
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800b8af8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800b8af8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b8af8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800b8b04:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl reset__8TPoiHanaFv
reset__8TPoiHanaFv: # 0x800b8b24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lfs     f0, 0xc8(r31)
    li      r3, 0x0
    li      r0, 0x1
    stfs    f0, 0x198(r31)
    stb     r3, 0x194(r31)
    stb     r3, 0x195(r31)
    stw     r3, 0x1a4(r31)
    stb     r0, 0x1a8(r31)
    stb     r3, 0x1a9(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__8TPoiHanaFv
setMActorAndKeeper__8TPoiHanaFv: # 0x800b8b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b8bac
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800b8bac:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x1aec
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


.globl init__8TPoiHanaFP12TLiveManager
init__8TPoiHanaFP12TLiveManager: # 0x800b8be0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    subi    r31, r5, 0x1d58
    stw     r30, 0xc8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xc4(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x15
    stw     r0, 0x4c(r30)
    li      r0, 0x11
    stw     r0, 0x150(r30)
    lwz     r0, 0x64(r30)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r30)
    lha     r0, 0x7c(r30)
    mulli   r0, r0, -0xfa
    stw     r0, 0x1a4(r30)
    lbz     r0, -0x7e47(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800b8cb4
    lbz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800b8cb4
    lbz     r0, -0x6adf(r13)
    extsb.  r0, r0
    bne-    branch_0x800b8c90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6adc(r13)
    addi    r0, r3, 0x6ff8
    lis     r4, 0x800b
    stw     r0, -0x6adc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x18f8
    addi    r4, r4, 0x7130
    subi    r3, r13, 0x6adc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6adf(r13)
branch_0x800b8c90:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x6adc
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    b       branch_0x800b8cd4

branch_0x800b8cb4:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r0, 0x1c(r4)
branch_0x800b8cd4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r30)
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800b8d1c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x278
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7530
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
branch_0x800b8d1c:
    stw     r29, 0x1bc(r30)
    addi    r3, r31, 0x28c
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x28c
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x5c
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x5c(sp)
    addi    r3, sp, 0x94
    addi    r4, sp, 0x58
    stw     r0, 0x58(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x94(sp)
    addi    r5, sp, 0x6c
    addi    r4, r31, 0x0
    stw     r0, 0x90(sp)
    addi    r3, sp, 0x68
    addi    r6, r30, 0x1bc
    lwz     r0, 0x90(sp)
    stw     r0, 0x6c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r10, 0x19c(r30)
    lis     r8, 0x4330
    lfd     f2, -0x61f8(rtoc)
    li      r4, 0x0
    lwz     r9, 0x194(r10)
    lwz     r7, 0x1a8(r10)
    li      r5, 0x2
    lwz     r3, 0x16c(r10)
    xoris   r9, r9, 0x8000
    lwz     r0, 0x180(r10)
    xoris   r7, r7, 0x8000
    stw     r9, 0xbc(sp)
    xoris   r3, r3, 0x8000
    lfs     f4, 0x148(r30)
    stw     r3, 0xac(sp)
    xoris   r0, r0, 0x8000
    lwz     r3, 0x1bc(r30)
    lis     r6, 0x8000
    stw     r7, 0xb4(sp)
    stw     r0, 0xa4(sp)
    stw     r8, 0xb8(sp)
    stw     r8, 0xb0(sp)
    lfd     f1, 0xb8(sp)
    lfd     f0, 0xb0(sp)
    stw     r8, 0xa8(sp)
    fsubs   f3, f1, f2
    fsubs   f5, f0, f2
    stw     r8, 0xa0(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f6, f1, f2
    fsubs   f0, f0, f2
    fmuls   f1, f3, f4
    fmuls   f2, f5, f4
    fmuls   f3, f6, f4
    fmuls   f4, f0, f4
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r5, 0x1bc(r30)
    li      r4, -0xbf
    li      r3, 0x8
    stw     r30, 0x68(r5)
    li      r0, 0x12f
    sth     r4, 0x1c0(r30)
    sth     r3, 0x1c2(r30)
    sth     r0, 0x1c4(r30)
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl load__8TPoiHanaFR20JSUMemoryInputStream
load__8TPoiHanaFR20JSUMemoryInputStream: # 0x800b8e64
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


.globl __ct__8TPoiHanaFPCc
__ct__8TPoiHanaFPCc: # 0x800b8ea4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x7378
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stb     r4, 0x194(r31)
    stb     r0, 0x195(r31)
    lfs     f0, -0x61ec(rtoc)
    stfs    f0, 0x198(r31)
    stb     r0, 0x1a0(r31)
    stw     r4, 0x1a4(r31)
    stb     r0, 0x1a8(r31)
    stb     r4, 0x1a9(r31)
    stw     r4, 0x1bc(r31)
    stb     r0, 0x1c8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__17TPoiHanaCollisionFP9THitActorUl
receiveMessage__17TPoiHanaCollisionFP9THitActorUl: # 0x800b8f18
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


.globl initSetEnemies__15TPoiHanaManagerFv
initSetEnemies__15TPoiHanaManagerFv: # 0x800b8f48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    stw     r29, 0xd4(sp)
    stw     r28, 0xd0(sp)
    mr      r28, r3
    lwz     r3, 0x18(r3)
    lwz     r3, 0x0(r3)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x61d0
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r30, r3, 0x0
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x800b8fbc

branch_0x800b8f94:
    lwz     r3, 0x18(r28)
    clrlwi  r4, r30, 16
    li      r5, 0x1
    lwzx    r6, r3, r31
    lwz     r3, 0x74(r6)
    addi    r6, r6, 0x1c0
    lwz     r3, 0x4(r3)
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x800b8fbc:
    lwz     r0, 0x14(r28)
    cmpw    r29, r0
    blt+    branch_0x800b8f94
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    lwz     r29, 0xd4(sp)
    lwz     r28, 0xd0(sp)
    addi    sp, sp, 0xe0
    blr


.globl perform__15TPoiHanaManagerFUlPQ26JDrama9TGraphics
perform__15TPoiHanaManagerFUlPQ26JDrama9TGraphics: # 0x800b8fe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__15TPoiHanaManagerFv
createEnemyInstance__15TPoiHanaManagerFv: # 0x800b9008
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x6900
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0x38
    bne-    branch_0x800b9054
    li      r3, 0x1cc
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800b904c
    lis     r3, 0x8038
    subi    r4, r3, 0x1ac0
    addi    r3, r31, 0x0
    bl      __ct__8TPoiHanaFPCc
branch_0x800b904c:
    mr      r3, r31
    b       branch_0x800b9058

branch_0x800b9054:
    li      r3, 0x0
branch_0x800b9058:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__15TPoiHanaManagerFR20JSUMemoryInputStream
load__15TPoiHanaManagerFR20JSUMemoryInputStream: # 0x800b906c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r24, 0x18(sp)
    addi    r24, r3, 0x0
    subi    r30, r5, 0x1d58
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3e0
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800b9268
    stw     r27, 0x10(sp)
    addi    r4, r30, 0x2a4
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x2b8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x2b8
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x32c(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x61c8(rtoc)
    addi    r3, r30, 0x2c8
    stfs    f0, 0x33c(r31)
    stw     r28, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x2c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x340(r31)
    addi    r3, r30, 0x2d8
    lfs     f0, -0x61c4(rtoc)
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x2d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r25, r3, 0x42ac
    stw     r25, 0x354(r31)
    li      r0, 0x3e8
    lis     r3, 0x803b
    stw     r0, 0x364(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x2e8
    stw     r26, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x2e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x368(r31)
    li      r0, 0x7d0
    addi    r3, r30, 0x2f8
    stw     r0, 0x378(r31)
    stw     r26, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x2f8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x30c
    lfs     f0, -0x61e4(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x30c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x320
    lfs     f0, -0x61e4(rtoc)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x334
    lfs     f0, -0x61c0(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x334
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x348
    lfs     f0, -0x61c0(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x348
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    mr      r3, r31
    lfs     f0, -0x621c(rtoc)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x800b9268:
    stw     r27, 0x38(r24)
    lmw     r24, 0x18(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__15TPoiHanaManagerFPCc
__ct__15TPoiHanaManagerFPCc: # 0x800b9280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x75d4
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__13TSleepPoiHanaFv
__dt__13TSleepPoiHanaFv: # 0x800b92bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b933c
    lis     r3, 0x803b
    addi    r3, r3, 0x7008
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b932c
    lis     r3, 0x803b
    addi    r3, r3, 0x7378
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b932c
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800b932c:
    extsh.  r0, r31
    ble-    branch_0x800b933c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b933c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TPoiHanaRedFv
__dt__11TPoiHanaRedFv: # 0x800b9358
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b93d8
    lis     r3, 0x803b
    addi    r3, r3, 0x71c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b93c8
    lis     r3, 0x803b
    addi    r3, r3, 0x7378
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b93c8
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800b93c8:
    extsh.  r0, r31
    ble-    branch_0x800b93d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b93d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TPoiHanaCollisionFv
__dt__17TPoiHanaCollisionFv: # 0x800b93f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b945c
    lis     r3, 0x803b
    addi    r3, r3, 0x7530
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b944c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800b944c:
    extsh.  r0, r31
    ble-    branch_0x800b945c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b945c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TPoiHanaManagerFv
__dt__15TPoiHanaManagerFv: # 0x800b9478
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b94d0
    lis     r3, 0x803b
    addi    r0, r3, 0x75d4
    stw     r0, 0x0(r30)
    beq-    branch_0x800b94c0
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800b94c0:
    extsh.  r0, r31
    ble-    branch_0x800b94d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b94d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_poihana_cpp
__sinit_poihana_cpp: # 0x800b94ec
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x18f8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9534
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800b9534:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9564
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800b9564:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9594
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800b9594:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800b95c4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800b95c4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800b95f4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800b95f4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9624
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800b9624:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9654
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800b9654:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9684
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800b9684:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800b96b4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800b96b4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800b96e4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800b96e4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9714
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800b9714:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9744
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800b9744:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b9774
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800b9774:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800b97a4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800b97a4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800b97d4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800b97d4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__17TPoiHanaCollisionFv
_32___dt__17TPoiHanaCollisionFv: # 0x800b97e8
    subi    r3, r3, 0x20
    b       __dt__17TPoiHanaCollisionFv


.globl _32___dt__8TPoiHanaFv
_32___dt__8TPoiHanaFv: # 0x800b97f0
    subi    r3, r3, 0x20
    b       __dt__8TPoiHanaFv


.globl _32___dt__11TPoiHanaRedFv
_32___dt__11TPoiHanaRedFv: # 0x800b97f8
    subi    r3, r3, 0x20
    b       __dt__11TPoiHanaRedFv


.globl _32___dt__13TSleepPoiHanaFv
_32___dt__13TSleepPoiHanaFv: # 0x800b9800
    subi    r3, r3, 0x20
    b       __dt__13TSleepPoiHanaFv

