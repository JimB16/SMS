
.globl __dt__22TNerveBombHeiExplosionFv
__dt__22TNerveBombHeiExplosionFv: # 0x800c83dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c8420
    lis     r3, 0x803c
    subi    r0, r3, 0x7a78
    stw     r0, 0x0(r31)
    beq-    branch_0x800c8410
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c8410:
    extsh.  r0, r4
    ble-    branch_0x800c8420
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c8420:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveBombHeiExplosionCFP24TSpineBase_10TLiveActor_
execute__22TNerveBombHeiExplosionCFP24TSpineBase_10TLiveActor_: # 0x800c8438
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
    bne-    branch_0x800c85c4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x350(r3)
    mr      r3, r31
    lfs     f1, 0x148(r31)
    lfs     f0, 0x50(r31)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x1a0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r3, 0x68(r31)
    lwz     r0, MarioHitActor(r13)
    cmplw   r3, r0
    bne-    branch_0x800c84d4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
branch_0x800c84d4:
    li      r4, 0x0
    stb     r4, 0x164(r31)
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800c8504
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800c8504
    cmplwi  r3, 0x4104
    bne-    branch_0x800c8508
branch_0x800c8504:
    li      r4, 0x1
branch_0x800c8508:
    clrlwi. r0, r4, 24
    beq-    branch_0x800c854c
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x7b4
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800c854c
    lfs     f0, -0x6000(rtoc)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x4c
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    bl      generate__21TEffectBombColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800c854c:
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800c8574
    cmplwi  r0, 0x4701
    beq-    branch_0x800c8574
    cmplwi  r0, 0x8701
    beq-    branch_0x800c8574
    cmplwi  r0, 0xc701
    bne-    branch_0x800c857c
branch_0x800c8574:
    li      r0, 0x1
    b       branch_0x800c8580

branch_0x800c857c:
    li      r0, 0x0
branch_0x800c8580:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c85c4
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x794
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800c85c4
    lfs     f0, -0x5ffc(rtoc)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x40
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    bl      generate__16TEffectColumSandFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800c85c4:
    lfs     f1, 0x190(r31)
    lfs     f0, 0x1a0(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800c85e4
    lfs     f0, -0x5ff8(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x190(r31)
    b       branch_0x800c8698

branch_0x800c85e4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c8698
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
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    lwz     r0, 0x14(r30)
    lwz     r3, 0x18(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800c8650
    stw     r0, 0x1c(r30)
branch_0x800c8650:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800c8690
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x800c8690
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800c8690:
    li      r3, 0x1
    b       branch_0x800c86a4

branch_0x800c8698:
    mr      r3, r31
    bl      expandCollision__11TSmallEnemyFv
    li      r3, 0x0
branch_0x800c86a4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl execute__19TNerveBombHeiThrownCFP24TSpineBase_10TLiveActor_
execute__19TNerveBombHeiThrownCFP24TSpineBase_10TLiveActor_: # 0x800c86c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c878c
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
    lfs     f4, 0x378(r3)
    slwi    r0, r0, 2
    lwz     r6, -0x5ea4(r13)
    lfsx    f0, r4, r0
    slwi    r0, r5, 2
    lfsx    f3, r6, r0
    fmuls   f1, f2, f0
    fmuls   f0, f2, f3
    fmuls   f1, f4, f1
    fmuls   f0, f4, f0
    stfs    f1, 0x4c(sp)
    lfs     f1, 0x364(r3)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x54(sp)
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x54(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6000(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800c878c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x78
    bne-    branch_0x800c87a4
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
branch_0x800c87a4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800c87b8
    li      r0, 0x1
    b       branch_0x800c87bc

branch_0x800c87b8:
    li      r0, 0x0
branch_0x800c87bc:
    cmpwi   r0, 0x0
    bne-    branch_0x800c8858
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c881c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d48
    subi    r4, r4, 0x7c24
    subi    r3, r13, 0x69e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c881c:
    subi    r4, r13, 0x69e4
    cmplwi  r4, 0x0
    beq-    branch_0x800c8850
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800c8850
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800c8850:
    li      r3, 0x1
    b       branch_0x800c885c

branch_0x800c8858:
    li      r3, 0x0
branch_0x800c885c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__19TNerveBombHeiThrownFv
__dt__19TNerveBombHeiThrownFv: # 0x800c8874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c88b8
    lis     r3, 0x803c
    subi    r0, r3, 0x7a28
    stw     r0, 0x0(r31)
    beq-    branch_0x800c88a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c88a8:
    extsh.  r0, r4
    ble-    branch_0x800c88b8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c88b8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveBombHeiPickUpCFP24TSpineBase_10TLiveActor_
execute__19TNerveBombHeiPickUpCFP24TSpineBase_10TLiveActor_: # 0x800c88d0
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c88f4
    lbz     r0, 0x164(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800c88f4
    li      r3, 0x1
    blr

branch_0x800c88f4:
    li      r3, 0x0
    blr


.globl __dt__19TNerveBombHeiPickUpFv
__dt__19TNerveBombHeiPickUpFv: # 0x800c88fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c8940
    lis     r3, 0x803c
    subi    r0, r3, 0x7a18
    stw     r0, 0x0(r31)
    beq-    branch_0x800c8930
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c8930:
    extsh.  r0, r4
    ble-    branch_0x800c8940
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c8940:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveBombHeiWaitExplosionCFP24TSpineBase_10TLiveActor_
execute__26TNerveBombHeiWaitExplosionCFP24TSpineBase_10TLiveActor_: # 0x800c8958
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c89a4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x164(r31)
branch_0x800c89a4:
    lbz     r0, 0x164(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800c8a3c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5ff4(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800c89dc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x5ff0(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x800c89dc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5fec(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800c8ba8
    lwz     r30, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      setFrameRate__6MActorFfi
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x5fe8(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800c8ba8
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f1, -0x5ff0(rtoc)
    bl      setFrameRate__6MActorFfi
    b       branch_0x800c8ba8

branch_0x800c8a3c:
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x3
    bl      checkCurAnmFromIndex__6MActorFii
    cmpwi   r3, 0x0
    bne-    branch_0x800c8a74
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
branch_0x800c8a74:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c8b14
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x96
    ble-    branch_0x800c8b14
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8ad8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d48
    subi    r4, r4, 0x7c24
    subi    r3, r13, 0x69e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c8ad8:
    subi    r4, r13, 0x69e4
    cmplwi  r4, 0x0
    beq-    branch_0x800c8b0c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800c8b0c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800c8b0c:
    li      r3, 0x1
    b       branch_0x800c8bac

branch_0x800c8b14:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lis     r3, 0x6666
    addi    r0, r3, 0x6667
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r4, 0x64(sp)
    mulhw   r0, r0, r4
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x28
    subf.   r0, r0, r4
    bne-    branch_0x800c8b84
    lwz     r3, gpMSound(r13)
    li      r4, 0x2859
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c8b84
    addi    r4, r31, 0x10
    li      r3, 0x2859
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c8b84:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17f
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800c8ba8:
    li      r3, 0x0
branch_0x800c8bac:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__26TNerveBombHeiWaitExplosionFv
__dt__26TNerveBombHeiWaitExplosionFv: # 0x800c8bc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c8c0c
    lis     r3, 0x803c
    subi    r0, r3, 0x7a08
    stw     r0, 0x0(r31)
    beq-    branch_0x800c8bfc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c8bfc:
    extsh.  r0, r4
    ble-    branch_0x800c8c0c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c8c0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveBombHeiWalkExplosionCFP24TSpineBase_10TLiveActor_
execute__26TNerveBombHeiWalkExplosionCFP24TSpineBase_10TLiveActor_: # 0x800c8c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c8c74
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setBtpFromIndex__6MActorFi
    b       branch_0x800c8d08

branch_0x800c8c74:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c8d08
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c8ccc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d48
    subi    r4, r4, 0x7c24
    subi    r3, r13, 0x69e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c8ccc:
    subi    r4, r13, 0x69e4
    cmplwi  r4, 0x0
    beq-    branch_0x800c8d00
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800c8d00
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800c8d00:
    li      r3, 0x1
    b       branch_0x800c8dbc

branch_0x800c8d08:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lis     r3, 0x6666
    addi    r0, r3, 0x6667
    fctiwz  f0, f0
    stfd    f0, 0x50(sp)
    lwz     r4, 0x54(sp)
    mulhw   r0, r0, r4
    srawi   r0, r0, 4
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x28
    subf.   r0, r0, r4
    bne-    branch_0x800c8d78
    lwz     r3, gpMSound(r13)
    li      r4, 0x2859
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c8d78
    addi    r4, r30, 0x10
    li      r3, 0x2859
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c8d78:
    mr      r3, r30
    lfs     f1, -0x5fe4(rtoc)
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x74(r30)
    mr      r7, r30
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17f
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    li      r3, 0x0
branch_0x800c8dbc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__26TNerveBombHeiWalkExplosionFv
__dt__26TNerveBombHeiWalkExplosionFv: # 0x800c8dd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c8e18
    lis     r3, 0x803c
    subi    r0, r3, 0x79f8
    stw     r0, 0x0(r31)
    beq-    branch_0x800c8e08
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c8e08:
    extsh.  r0, r4
    ble-    branch_0x800c8e18
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c8e18:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveBombHeiAttackCFP24TSpineBase_10TLiveActor_
execute__19TNerveBombHeiAttackCFP24TSpineBase_10TLiveActor_: # 0x800c8e30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c8eec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x164(r31)
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x5ff0(rtoc)
    stw     r3, 0x20(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    beq-    branch_0x800c8ea4
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x24(sp)
    stfs    f1, 0x28(sp)
    stfs    f2, 0x2c(sp)
branch_0x800c8ea4:
    lwz     r3, 0x20(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x24(sp)
    lwz     r3, 0x28(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x2c(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x20(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x24(sp)
    lwz     r3, 0x28(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x2c(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
branch_0x800c8eec:
    mr      r3, r31
    lfs     f1, -0x5fe8(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__19TNerveBombHeiAttackFv
__dt__19TNerveBombHeiAttackFv: # 0x800c8f20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c8f64
    lis     r3, 0x803c
    subi    r0, r3, 0x79e8
    stw     r0, 0x0(r31)
    beq-    branch_0x800c8f54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c8f54:
    extsh.  r0, r4
    ble-    branch_0x800c8f64
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c8f64:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveBombHeiGenerateCFP24TSpineBase_10TLiveActor_
execute__21TNerveBombHeiGenerateCFP24TSpineBase_10TLiveActor_: # 0x800c8f7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800c8fec
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    subi    r4, r4, 0x7e0
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f1, -0x5ff0(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x800c8fec:
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800c9008
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x5ff0(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x800c9008:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800c901c
    li      r0, 0x1
    b       branch_0x800c9020

branch_0x800c901c:
    li      r0, 0x0
branch_0x800c9020:
    cmpwi   r0, 0x0
    bne-    branch_0x800c9104
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800c9104
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800c9048
    li      r0, 0x1
    b       branch_0x800c904c

branch_0x800c9048:
    li      r0, 0x0
branch_0x800c904c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c9070
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800c9194

branch_0x800c9070:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800c9194
    lbz     r0, -0x6a10(r13)
    extsb.  r0, r0
    bne-    branch_0x800c90c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a0c(r13)
    subi    r0, r3, 0x79e8
    lis     r4, 0x800d
    stw     r0, -0x6a0c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d0c
    subi    r4, r4, 0x70e0
    subi    r3, r13, 0x6a0c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a10(r13)
branch_0x800c90c8:
    subi    r4, r13, 0x6a0c
    cmplwi  r4, 0x0
    beq-    branch_0x800c90fc
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800c90fc
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800c90fc:
    li      r3, 0x1
    b       branch_0x800c9198

branch_0x800c9104:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x5ff0(rtoc)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x48(sp)
    lfs     f1, 0x44(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800c9194
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800c9140
    li      r0, 0x1
    b       branch_0x800c9144

branch_0x800c9140:
    li      r0, 0x0
branch_0x800c9144:
    clrlwi. r0, r0, 24
    bne-    branch_0x800c9194
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    subi    r4, r4, 0x7e0
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lfs     f1, -0x5ff0(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x800c9194:
    li      r3, 0x0
branch_0x800c9198:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl __dt__21TNerveBombHeiGenerateFv
__dt__21TNerveBombHeiGenerateFv: # 0x800c91b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800c91f4
    lis     r3, 0x803c
    subi    r0, r3, 0x79d8
    stw     r0, 0x0(r31)
    beq-    branch_0x800c91e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800c91e4:
    extsh.  r0, r4
    ble-    branch_0x800c91f4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800c91f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__8TBombHeiCFv
getBasNameTable__8TBombHeiCFv: # 0x800c920c
    lis     r3, 0x803c
    subi    r3, r3, 0x7ab8
    blr


.globl isDamageToCannon__8TBombHeiFv
isDamageToCannon__8TBombHeiFv: # 0x800c9218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x69f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9270
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69ec(r13)
    subi    r0, r3, 0x7a28
    lis     r4, 0x800d
    stw     r0, -0x69ec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d3c
    subi    r4, r4, 0x778c
    subi    r3, r13, 0x69ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f0(r13)
branch_0x800c9270:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x69ec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c92dc
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c92c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d48
    subi    r4, r4, 0x7c24
    subi    r3, r13, 0x69e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c92c8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x69e4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c92f0
branch_0x800c92dc:
    lwz     r0, 0x64(r31)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    b       branch_0x800c92f4

branch_0x800c92f0:
    li      r3, 0x0
branch_0x800c92f4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl forceKill__8TBombHeiFv
forceKill__8TBombHeiFv: # 0x800c9308
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800c9334
    li      r0, 0x1
    b       branch_0x800c9338

branch_0x800c9334:
    li      r0, 0x0
branch_0x800c9338:
    clrlwi. r0, r0, 24
    bne-    branch_0x800c9500
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x800
    bne-    branch_0x800c9354
    li      r0, 0x1
    b       branch_0x800c9358

branch_0x800c9354:
    li      r0, 0x0
branch_0x800c9358:
    clrlwi. r0, r0, 24
    bne-    branch_0x800c93c8
    cmplwi  r3, 0x104
    beq-    branch_0x800c9378
    cmplwi  r3, 0x105
    beq-    branch_0x800c9378
    cmplwi  r3, 0x4104
    bne-    branch_0x800c9380
branch_0x800c9378:
    li      r0, 0x1
    b       branch_0x800c9384

branch_0x800c9380:
    li      r0, 0x0
branch_0x800c9384:
    clrlwi. r0, r0, 24
    bne-    branch_0x800c93c8
    cmplwi  r3, 0x100
    beq-    branch_0x800c93b4
    cmplwi  r3, 0x101
    beq-    branch_0x800c93b4
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800c93b4
    cmplwi  r3, 0x4104
    bne-    branch_0x800c93bc
branch_0x800c93b4:
    li      r0, 0x1
    b       branch_0x800c93c0

branch_0x800c93bc:
    li      r0, 0x0
branch_0x800c93c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c9500
branch_0x800c93c8:
    lwz     r3, 0xf0(r31)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x800c93dc
    li      r0, 0x1
    b       branch_0x800c93e0

branch_0x800c93dc:
    li      r0, 0x0
branch_0x800c93e0:
    cmpwi   r0, 0x0
    bne-    branch_0x800c9500
    rlwinm. r0, r3, 0, 27, 27
    bne-    branch_0x800c9500
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9434
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d48
    subi    r4, r4, 0x7c24
    subi    r3, r13, 0x69e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c9434:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x69e4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800c9500
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9490
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r4, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r5, 0x803f
    subi    r4, r4, 0x7c24
    addi    r5, r5, 0x1d48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c9490:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x69e4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800c94a8
    stw     r0, 0x1c(r4)
branch_0x800c94a8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800c94ec
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800c94ec
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c94ec:
    lwz     r3, 0xf0(r31)
    li      r0, 0x1
    oris    r3, r3, 0x2
    stw     r3, 0xf0(r31)
    stb     r0, 0x13c(r31)
branch_0x800c9500:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl isCollidMove__8TBombHeiFP9THitActor
isCollidMove__8TBombHeiFP9THitActor: # 0x800c9514
    mflr    r0
    lis     r6, 0x803f
    stw     r0, 0x4(sp)
    lis     r5, 0x803c
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    subi    r31, r5, 0x7af0
    stw     r30, 0x78(sp)
    addi    r30, r6, 0x1d00
    stw     r29, 0x74(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x70(sp)
    addi    r28, r3, 0x0
    lbz     r0, -0x7e10(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800c96bc
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x1e
    bne-    branch_0x800c956c
    li      r0, 0x1
    b       branch_0x800c9570

branch_0x800c956c:
    li      r0, 0x0
branch_0x800c9570:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c96bc
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c95b4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c95b4:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x69e4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c95d0
    li      r0, 0x1
    b       branch_0x800c95d4

branch_0x800c95d0:
    li      r0, 0x0
branch_0x800c95d4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c96bc
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9618
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c9618:
    lwz     r4, 0x8c(r28)
    subi    r3, r13, 0x69e4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800c96bc
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9664
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r4, 0x7c24
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c9664:
    subi    r6, r13, 0x69e4
    lwz     r5, 0x8c(r28)
    cmplwi  r6, 0x0
    beq-    branch_0x800c96bc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c96b0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c96b0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c96b0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c96bc:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x13
    bne-    branch_0x800c96d4
    li      r0, 0x1
    b       branch_0x800c96d8

branch_0x800c96d4:
    li      r0, 0x0
branch_0x800c96d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c9834
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c971c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c971c:
    lwz     r3, 0x8c(r28)
    subi    r0, r13, 0x69e4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c974c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r28, 0x0
    li      r5, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800c974c:
    lbz     r0, -0x69f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800c978c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69ec(r13)
    subi    r0, r3, 0x7a28
    lis     r3, 0x800d
    stw     r0, -0x69ec(r13)
    subi    r4, r3, 0x778c
    subi    r3, r13, 0x69ec
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f0(r13)
branch_0x800c978c:
    lwz     r3, 0x8c(r28)
    subi    r0, r13, 0x69ec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c9834
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c97dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c97dc:
    subi    r6, r13, 0x69e4
    lwz     r5, 0x8c(r28)
    cmplwi  r6, 0x0
    beq-    branch_0x800c9834
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c9828
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c9828
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c9828:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c9834:
    lwz     r0, 0x84(sp)
    li      r3, 0x1
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl moveObject__8TBombHeiFv
moveObject__8TBombHeiFv: # 0x800c9858
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r4, 0x1d00
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x84(sp)
    bl      moveObject__12TWalkerEnemyFv
    lbz     r0, -0x69f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800c98c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69ec(r13)
    subi    r0, r3, 0x7a28
    lis     r3, 0x800d
    stw     r0, -0x69ec(r13)
    subi    r4, r3, 0x778c
    subi    r3, r13, 0x69ec
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f0(r13)
branch_0x800c98c0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x69ec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c9aa0
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9914
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c9914:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x69e4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c9aa0
    lbz     r0, -0x6a18(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9968
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a14(r13)
    subi    r0, r3, 0x79d8
    lis     r3, 0x800d
    stw     r0, -0x6a14(r13)
    subi    r4, r3, 0x6e50
    subi    r3, r13, 0x6a14
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a18(r13)
branch_0x800c9968:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6a14
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    beq-    branch_0x800c9aa0
    bl      theNerve__22TNerveSmallEnemyChangeFv
    cmplw   r29, r3
    beq-    branch_0x800c9aa0
    lwz     r3, 0x198(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x198(r30)
    lwz     r3, 0x194(r30)
    lwz     r4, 0x198(r30)
    lwz     r0, 0x33c(r3)
    cmpw    r4, r0
    ble-    branch_0x800c9aa0
    li      r0, 0x0
    stb     r0, 0x164(r30)
    stw     r0, 0x198(r30)
    lbz     r0, -0x6a00(r13)
    extsb.  r0, r0
    bne-    branch_0x800c99f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69fc(r13)
    subi    r0, r3, 0x7a08
    lis     r3, 0x800d
    stw     r0, -0x69fc(r13)
    subi    r4, r3, 0x7438
    subi    r3, r13, 0x69fc
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a00(r13)
branch_0x800c99f4:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x69fc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c9aa0
    lbz     r0, -0x6a08(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9a48
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a04(r13)
    subi    r0, r3, 0x79f8
    lis     r3, 0x800d
    stw     r0, -0x6a04(r13)
    subi    r4, r3, 0x722c
    subi    r3, r13, 0x6a04
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a08(r13)
branch_0x800c9a48:
    subi    r6, r13, 0x6a04
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800c9aa0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c9a94
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c9a94
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c9a94:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c9aa0:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl walkBehavior__8TBombHeiFif
walkBehavior__8TBombHeiFif: # 0x800c9abc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    li      r4, 0x2068
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r0, gpMSound(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800c9b14
    addi    r4, r30, 0x10
    li      r3, 0x2068
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800c9b14:
    fmr     f1, f31
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      walkBehavior__12TWalkerEnemyFif
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl getGravityY__8TBombHeiCFv
getGravityY__8TBombHeiCFv: # 0x800c9b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x69f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9b98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69ec(r13)
    subi    r0, r3, 0x7a28
    lis     r4, 0x800d
    stw     r0, -0x69ec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d3c
    subi    r4, r4, 0x778c
    subi    r3, r13, 0x69ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f0(r13)
branch_0x800c9b98:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x69ec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c9bb8
    lwz     r3, 0x194(r31)
    lfs     f1, 0x38c(r3)
    b       branch_0x800c9bbc

branch_0x800c9bb8:
    lfs     f1, 0xcc(r31)
branch_0x800c9bbc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl reset__8TBombHeiFv
reset__8TBombHeiFv: # 0x800c9bd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    li      r5, 0x0
    stw     r5, 0x198(r31)
    lis     r3, 0x8038
    li      r0, 0x1
    stb     r5, 0x1a4(r31)
    subi    r4, r3, 0x7e0
    stb     r5, 0x164(r31)
    stb     r0, 0x19c(r31)
    lwz     r3, 0x78(r31)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl behaveToRelease__8TBombHeiFv
behaveToRelease__8TBombHeiFv: # 0x800c9c28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    lbz     r0, 0x164(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x1d00
    cmplwi  r0, 0x0
    bne-    branch_0x800c9ca8
    lbz     r0, -0x6a08(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9c94
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a04(r13)
    subi    r0, r3, 0x79f8
    lis     r3, 0x800d
    stw     r0, -0x6a04(r13)
    subi    r4, r3, 0x722c
    subi    r3, r13, 0x6a04
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a08(r13)
branch_0x800c9c94:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6a04
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c9d90
branch_0x800c9ca8:
    lbz     r0, -0x69f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9ce8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69ec(r13)
    subi    r0, r3, 0x7a28
    lis     r3, 0x800d
    stw     r0, -0x69ec(r13)
    subi    r4, r3, 0x778c
    subi    r3, r13, 0x69ec
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f0(r13)
branch_0x800c9ce8:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x69ec
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800c9d90
    lbz     r0, -0x69f0(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9d38
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x69ec(r13)
    subi    r0, r4, 0x7a28
    lis     r4, 0x800d
    stw     r0, -0x69ec(r13)
    subi    r4, r4, 0x778c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f0(r13)
branch_0x800c9d38:
    subi    r6, r13, 0x69ec
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800c9d90
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c9d84
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c9d84
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c9d84:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c9d90:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl behaveToTaken__8TBombHeiFP9THitActor
behaveToTaken__8TBombHeiFP9THitActor: # 0x800c9da8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    lbz     r0, -0x69f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9e08
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69f4(r13)
    subi    r0, r3, 0x7a18
    lis     r4, 0x800d
    stw     r0, -0x69f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d30
    subi    r4, r4, 0x7704
    subi    r3, r13, 0x69f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f8(r13)
branch_0x800c9e08:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x69f4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800c9ee4
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800c9e34
    li      r0, 0x1
    b       branch_0x800c9e38

branch_0x800c9e34:
    li      r0, 0x0
branch_0x800c9e38:
    clrlwi. r0, r0, 24
    beq-    branch_0x800c9e48
    li      r0, 0x1
    stb     r0, 0x1a4(r31)
branch_0x800c9e48:
    lbz     r0, -0x69f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9e8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69f4(r13)
    subi    r0, r3, 0x7a18
    lis     r4, 0x800d
    stw     r0, -0x69f4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d30
    subi    r4, r4, 0x7704
    subi    r3, r13, 0x69f4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69f8(r13)
branch_0x800c9e8c:
    subi    r6, r13, 0x69f4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800c9ee4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800c9ed8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800c9ed8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800c9ed8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800c9ee4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl attackToMario__8TBombHeiFv
attackToMario__8TBombHeiFv: # 0x800c9efc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800c9f54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69e4(r13)
    subi    r0, r3, 0x7a78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d48
    subi    r4, r4, 0x7c24
    subi    r3, r13, 0x69e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800c9f54:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x69e4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800c9f74
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURTFIRE
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800c9f74:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calcRootMatrix__8TBombHeiFv
calcRootMatrix__8TBombHeiFv: # 0x800c9f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r3, gpMarDirector(r13)
    lhz     r0, 0x4c(r3)
    clrlwi. r0, r0, 28
    beq-    branch_0x800c9fc8
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x800c9fc8:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800c9fdc
    li      r0, 0x1
    b       branch_0x800c9fe0

branch_0x800c9fdc:
    li      r0, 0x0
branch_0x800c9fe0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ca030
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6000(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800ca030
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x778
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800ca030
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800ca030:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setDeadAnm__8TBombHeiFv
setDeadAnm__8TBombHeiFv: # 0x800ca044
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x7cc
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    lfs     f1, -0x5ff0(rtoc)
    lfs     f0, -0x5fe0(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5fd8(rtoc)
    stw     r0, 0x24(sp)
    lis     r3, 0x4330
    lfs     f0, -0x5fdc(rtoc)
    li      r0, 0x0
    stw     r3, 0x20(sp)
    lfs     f1, 0x14(sp)
    mr      r3, r31
    lfd     f2, 0x20(sp)
    li      r4, 0x0
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    stb     r0, 0x19c(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x5fe8(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, -0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setFreezeAnm__8TBombHeiFv
setFreezeAnm__8TBombHeiFv: # 0x800ca120
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


.globl setWalkAnm__8TBombHeiFv
setWalkAnm__8TBombHeiFv: # 0x800ca150
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


.globl genEventCoin__8TBombHeiFv
genEventCoin__8TBombHeiFv: # 0x800ca180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    lbz     r0, 0x1a4(r3)
    lwz     r4, 0x70(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800ca278
    lwz     r3, 0x60(r4)
    cmpwi   r3, 0x14
    bge-    branch_0x800ca1c4
    addi    r0, r3, 0x1
    stw     r0, 0x60(r4)
    li      r0, 0x1
    b       branch_0x800ca1c8

branch_0x800ca1c4:
    li      r0, 0x0
branch_0x800ca1c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ca278
    lis     r4, 0x2000
    lwz     r3, gpItemManager(r13)
    lfs     f1, 0x10(r30)
    addi    r4, r4, 0xe
    lfs     f2, 0x14(r30)
    li      r5, 0x1
    lfs     f3, 0x18(r30)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r31, r3
    beq-    branch_0x800ca278
    lfs     f0, 0x14(r30)
    addi    r3, sp, 0x1c
    addi    r4, r30, 0x10
    stfs    f0, 0x14(r31)
    lwz     r6, MarioHitActorPos(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x24(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x1c(sp)
    addi    r3, sp, 0x38
    lwz     r5, 0x20(sp)
    mr      r4, r3
    stw     r0, 0x38(sp)
    lwz     r0, 0x24(sp)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f2, -0x5fd0(rtoc)
    lfs     f0, 0x38(sp)
    lfs     f1, 0x40(sp)
    fmuls   f0, f2, f0
    fmuls   f1, f2, f1
    stfs    f0, 0xac(r31)
    stfs    f2, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x800ca278:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl kill__8TBombHeiFv
kill__8TBombHeiFv: # 0x800ca290
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x1d00
    stw     r29, 0x34(sp)
    mr      r29, r3
    stw     r28, 0x30(sp)
    lwz     r0, 0xf0(r3)
    lis     r3, 0x803c
    subi    r31, r3, 0x7af0
    clrlwi. r0, r0, 31
    bne-    branch_0x800ca404
    li      r28, 0x1
    stb     r28, 0x13c(r29)
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ca30c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r30, 0x48
    bl      __register_global_object
    stb     r28, -0x69e8(r13)
branch_0x800ca30c:
    lwz     r4, 0x8c(r29)
    subi    r3, r13, 0x69e4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800ca3f8
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ca360
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r4, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r4, 0x7c24
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800ca360:
    lwz     r4, 0x8c(r29)
    subi    r3, r13, 0x69e4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800ca378
    stw     r0, 0x1c(r4)
branch_0x800ca378:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x69e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800ca3c0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, -0x69e4(r13)
    addi    r0, r31, 0x78
    lis     r3, 0x800d
    stw     r0, -0x69e4(r13)
    subi    r4, r3, 0x7c24
    subi    r3, r13, 0x69e4
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x69e8(r13)
branch_0x800ca3c0:
    subi    r5, r13, 0x69e4
    lwz     r4, 0x8c(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x800ca3f8
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800ca3f8
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800ca3f8:
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r29)
branch_0x800ca404:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl isHitValid__8TBombHeiFUl
isHitValid__8TBombHeiFUl: # 0x800ca424
    mflr    r0
    cmplwi  r4, 0xb
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x800ca468
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
    b       branch_0x800ca46c

branch_0x800ca468:
    li      r3, 0x0
branch_0x800ca46c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl changeOut__8TBombHeiFv
changeOut__8TBombHeiFv: # 0x800ca47c
    mflr    r0
    li      r4, 0x293d
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r0, gpMSound(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ca4c8
    addi    r4, r30, 0x10
    li      r3, 0x293d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800ca4c8:
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r30)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r8, 0x178(r30)
    lwz     r3, 0x10(r8)
    lwz     r0, 0x14(r8)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r8)
    stw     r0, 0x18(r30)
    lwz     r3, gpMarioParticleManager(r13)
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


.globl behaveToWater__8TBombHeiFP9THitActor
behaveToWater__8TBombHeiFP9THitActor: # 0x800ca570
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x15c(r3)
    cmpwi   r3, 0x4
    bne-    branch_0x800ca598
    li      r0, 0x1
    b       branch_0x800ca59c

branch_0x800ca598:
    li      r0, 0x0
branch_0x800ca59c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ca5c0
    cmpwi   r3, 0x3
    bne-    branch_0x800ca5b4
    li      r0, 0x1
    b       branch_0x800ca5b8

branch_0x800ca5b4:
    li      r0, 0x0
branch_0x800ca5b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ca670
branch_0x800ca5c0:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800ca668
    lbz     r0, -0x6a00(r13)
    extsb.  r0, r0
    bne-    branch_0x800ca610
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x69fc(r13)
    subi    r0, r3, 0x7a08
    lis     r4, 0x800d
    stw     r0, -0x69fc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d24
    subi    r4, r4, 0x7438
    subi    r3, r13, 0x69fc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a00(r13)
branch_0x800ca610:
    subi    r6, r13, 0x69fc
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800ca668
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ca65c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ca65c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ca65c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800ca668:
    li      r0, 0x14
    stw     r0, 0x160(r31)
branch_0x800ca670:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setMActorAndKeeper__8TBombHeiFv
setMActorAndKeeper__8TBombHeiFv: # 0x800ca684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800ca6bc
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800ca6bc:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x7e0
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x7cc
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__8TBombHeiFP12TLiveManager
init__8TBombHeiFP12TLiveManager: # 0x800ca704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x1e
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x194(r31)
    lbz     r0, -0x6a18(r13)
    extsb.  r0, r0
    bne-    branch_0x800ca790
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6a14(r13)
    subi    r0, r3, 0x79d8
    lis     r4, 0x800d
    stw     r0, -0x6a14(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1d00
    subi    r4, r4, 0x6e50
    subi    r3, r13, 0x6a14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6a18(r13)
branch_0x800ca790:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6a14
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800ca7e4
    li      r30, 0x0
    b       branch_0x800ca7c8

branch_0x800ca7c4:
    addi    r30, r30, 0x1
branch_0x800ca7c8:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r30, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800ca7c4
branch_0x800ca7e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__8TBombHeiFPCc
__ct__8TBombHeiFPCc: # 0x800ca7fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x79c8
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x194(r31)
    stw     r4, 0x198(r31)
    stb     r0, 0x19c(r31)
    stb     r4, 0x1a4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__15TBombHeiManagerFv
createEnemyInstance__15TBombHeiManagerFv: # 0x800ca858
    mflr    r0
    li      r3, 0x1a8
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800ca8b0
    addi    r3, r31, 0x0
    subi    r4, rtoc, 0x5fcc
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x79c8
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r3, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    stw     r3, 0x194(r31)
    stw     r3, 0x198(r31)
    stb     r0, 0x19c(r31)
    stb     r3, 0x1a4(r31)
branch_0x800ca8b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__15TBombHeiManagerFv
createModelData__15TBombHeiManagerFv: # 0x800ca8c8
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x7a9c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__15TBombHeiManagerFR20JSUMemoryInputStream
load__15TBombHeiManagerFR20JSUMemoryInputStream: # 0x800ca8fc
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r27, r3, 0x0
    subi    r31, r5, 0x940
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3a4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800caa74
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x1e4
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0x1f8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r26, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x1f8
    addi    r4, r26, 0x0
    addi    r3, r26, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x32c(r26)
    li      r0, 0x3e8
    lis     r3, 0x803b
    stw     r0, 0x33c(r26)
    subi    r0, r3, 0x42b8
    addi    r3, r31, 0x204
    stw     r0, 0x32c(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x340
    addi    r6, r31, 0x204
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r28, r3, 0x42c4
    stw     r28, 0x340(r26)
    lis     r3, 0x803b
    subi    r29, r3, 0x42d0
    lfs     f0, -0x5fc4(rtoc)
    addi    r3, r31, 0x214
    stfs    f0, 0x350(r26)
    stw     r29, 0x340(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x354
    addi    r6, r31, 0x214
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x354(r26)
    addi    r3, r31, 0x220
    lfs     f0, -0x5fc0(rtoc)
    stfs    f0, 0x364(r26)
    stw     r29, 0x354(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x368
    addi    r6, r31, 0x220
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x368(r26)
    addi    r3, r31, 0x230
    lfs     f0, -0x5fbc(rtoc)
    stfs    f0, 0x378(r26)
    stw     r29, 0x368(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x37c
    addi    r6, r31, 0x230
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x37c(r26)
    addi    r3, r31, 0x244
    lfs     f0, -0x5fb8(rtoc)
    stfs    f0, 0x38c(r26)
    stw     r29, 0x37c(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x390
    addi    r6, r31, 0x244
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r28, 0x390(r26)
    mr      r3, r26
    lfs     f0, -0x5fb4(rtoc)
    stfs    f0, 0x3a0(r26)
    stw     r29, 0x390(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x800caa74:
    stw     r30, 0x38(r27)
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__15TBombHeiManagerFPCc
__ct__15TBombHeiManagerFPCc: # 0x800caa8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x7810
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x60(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAfterDeadEffect__8TBombHeiFv
setAfterDeadEffect__8TBombHeiFv: # 0x800caad0
    blr


.globl doKeepDistance__8TBombHeiFv
doKeepDistance__8TBombHeiFv: # 0x800caad4
    lbz     r0, 0x19c(r3)
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    blr


.globl __dt__8TBombHeiFv
__dt__8TBombHeiFv: # 0x800caaec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800cab6c
    lis     r3, 0x803c
    subi    r3, r3, 0x79c8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800cab5c
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800cab5c
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800cab5c:
    extsh.  r0, r31
    ble-    branch_0x800cab6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800cab6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TBombHeiManagerFv
__dt__15TBombHeiManagerFv: # 0x800cab88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800cabe0
    lis     r3, 0x803c
    subi    r0, r3, 0x7810
    stw     r0, 0x0(r30)
    beq-    branch_0x800cabd0
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800cabd0:
    extsh.  r0, r31
    ble-    branch_0x800cabe0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800cabe0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl clipEnemies__15TBombHeiManagerFPQ26JDrama9TGraphics
clipEnemies__15TBombHeiManagerFPQ26JDrama9TGraphics: # 0x800cabfc
    blr


.globl __sinit_bombhei_cpp
__sinit_bombhei_cpp: # 0x800cac00
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1d00
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800cac48
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800cac48:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800cac78
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800cac78:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800caca8
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800caca8:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800cacd8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800cacd8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800cad08
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800cad08:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800cad38
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800cad38:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800cad68
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800cad68:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800cad98
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800cad98:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800cadc8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800cadc8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800cadf8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800cadf8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800cae28
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800cae28:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800cae58
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800cae58:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800cae88
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800cae88:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800caeb8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800caeb8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800caee8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800caee8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__8TBombHeiFv
_32___dt__8TBombHeiFv: # 0x800caefc
    subi    r3, r3, 0x20
    b       __dt__8TBombHeiFv

