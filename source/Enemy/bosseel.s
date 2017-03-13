
.globl __dt__26TNerveBossEelSleepOnBottomFv
__dt__26TNerveBossEelSleepOnBottomFv: # 0x800d0498
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d04dc
    lis     r3, 0x803c
    subi    r0, r3, 0x72f8
    stw     r0, 0x0(r31)
    beq-    branch_0x800d04cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d04cc:
    extsh.  r0, r4
    ble-    branch_0x800d04dc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d04dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveBossEelSleepOnBottomCFP24TSpineBase_10TLiveActor_
execute__26TNerveBossEelSleepOnBottomCFP24TSpineBase_10TLiveActor_: # 0x800d04f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r4
    stw     r29, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d05e8
    li      r29, 0x0
    stw     r29, 0x200(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xa
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r4, 0x74(r31)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800d0560
    b       branch_0x800d0564

branch_0x800d0560:
    lwz     r29, 0x24(r3)
branch_0x800d0564:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0578
    mr      r4, r29
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d0578:
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d059c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d059c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d05dc
    li      r4, 0x0
    b       branch_0x800d05e0

branch_0x800d05dc:
    lwz     r4, 0x28(r3)
branch_0x800d05e0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d05e8:
    lis     r3, 0x51ec
    lwz     r4, 0x20(r30)
    subi    r0, r3, 0x7ae1
    mulhw   r0, r0, r4
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x64
    subf    r0, r0, r4
    cmpwi   r0, 0x1
    bne-    branch_0x800d063c
    srawi   r0, r4, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc   r0, r0, r4
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r4, r0, 24
    addi    r3, r31, 0x0
    bl      forceShedTears__8TBossEelFb
branch_0x800d063c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x3e8
    ble-    branch_0x800d0664
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d0664
    li      r3, 0x1
    b       branch_0x800d0668

branch_0x800d0664:
    li      r3, 0x0
branch_0x800d0668:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x50
    blr


.globl theNerve__26TNerveBossEelSleepOnBottomFv
theNerve__26TNerveBossEelSleepOnBottomFv: # 0x800d0688
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x691c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d06d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6918(r13)
    subi    r0, r3, 0x72f8
    lis     r4, 0x800d
    stw     r0, -0x6918(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fe0
    addi    r4, r4, 0x498
    subi    r3, r13, 0x6918
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x691c(r13)
branch_0x800d06d8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6918
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__26TNerveBossEelMouthOpenWaitCFP24TSpineBase_10TLiveActor_
execute__26TNerveBossEelMouthOpenWaitCFP24TSpineBase_10TLiveActor_: # 0x800d06ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    stw     r29, 0xfc(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d0800
    lbz     r0, 0x1fd(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d0730
    li      r0, 0x0
    stb     r0, 0x1fd(r31)
branch_0x800d0730:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xd
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d0768
    li      r4, 0x0
    b       branch_0x800d076c

branch_0x800d0768:
    lwz     r4, 0x24(r3)
branch_0x800d076c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d077c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d077c:
    lwz     r3, 0x74(r31)
    li      r4, 0xd
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d07a0
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d07a0:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d07e0
    li      r4, 0x0
    b       branch_0x800d07e4

branch_0x800d07e0:
    lwz     r4, 0x34(r3)
branch_0x800d07e4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, -0x7108(r13)
    li      r4, 0x1b
    lfs     f1, -0x5e48(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    b       branch_0x800d0bac

branch_0x800d0800:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d0bac
    lwz     r3, 0x74(r31)
    li      r4, 0xd
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d0974
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xe
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d0860
    li      r4, 0x0
    b       branch_0x800d0864

branch_0x800d0860:
    lwz     r4, 0x24(r3)
branch_0x800d0864:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0874
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d0874:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0898
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d0898:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d08d8
    li      r4, 0x0
    b       branch_0x800d08dc

branch_0x800d08d8:
    lwz     r4, 0x38(r3)
branch_0x800d08dc:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, -0x7108(r13)
    li      r4, 0x1c
    lfs     f1, -0x5e48(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, 0x18c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x74(r31)
    li      r0, 0x0
    lhz     r3, 0x1a4(r31)
    lwz     r5, 0x4(r4)
    mulli   r4, r3, 0x30
    lwz     r3, 0x18c(r31)
    lwz     r5, 0x58(r5)
    add     r4, r5, r4
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    lwz     r3, 0x18c(r31)
    stb     r0, 0x6c(r3)
    lwz     r5, 0x1e8(r31)
    lwz     r3, 0x18c(r31)
    lfs     f0, 0x270(r5)
    lfs     f1, 0x25c(r5)
    stfsu   f1, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f1, 0x8(r3)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x800d0bac

branch_0x800d0974:
    lwz     r5, 0x1e8(r31)
    lwz     r3, 0x20(r29)
    lwz     r0, 0x2ac(r5)
    lwz     r30, 0x284(r5)
    subf    r0, r0, r30
    cmpw    r3, r0
    ble-    branch_0x800d0ab8
    lbz     r0, 0x1c8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d09a4
    li      r0, 0x1
    b       branch_0x800d0a30

branch_0x800d09a4:
    lwz     r4, 0x74(r31)
    addi    r3, sp, 0xd4
    lwz     r5, MarioHitActorPos(r13)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x1a0(r31)
    lwz     r7, 0x58(r4)
    lwz     r4, 0x0(r5)
    mulli   r6, r0, 0x30
    lwz     r0, 0x4(r5)
    stw     r4, 0xd4(sp)
    add     r4, r7, r6
    stw     r0, 0xd8(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0xc(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x1c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x2c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xdc(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f2, 0x1d4(r31)
    lfs     f0, 0x1d8(r31)
    fmuls   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d0a2c
    li      r0, 0x1
    b       branch_0x800d0a30

branch_0x800d0a2c:
    li      r0, 0x0
branch_0x800d0a30:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d0ab8
    lbz     r0, -0x6934(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0a7c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6930(r13)
    subi    r0, r3, 0x7264
    lis     r4, 0x800d
    stw     r0, -0x6930(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fbc
    addi    r4, r4, 0xbf4
    subi    r3, r13, 0x6930
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6934(r13)
branch_0x800d0a7c:
    subi    r4, r13, 0x6930
    cmplwi  r4, 0x0
    beq-    branch_0x800d0ab0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800d0ab0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800d0ab0:
    li      r3, 0x1
    b       branch_0x800d0bd4

branch_0x800d0ab8:
    lwz     r0, 0x20(r29)
    cmpw    r0, r30
    ble-    branch_0x800d0bac
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d0ae0
    li      r3, 0x1
    b       branch_0x800d0bd4

branch_0x800d0ae0:
    lwz     r3, -0x7108(r13)
    li      r4, 0x1d
    lfs     f1, -0x5e48(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x2
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d0b28
    li      r4, 0x0
    b       branch_0x800d0b2c

branch_0x800d0b28:
    lwz     r4, 0x24(r3)
branch_0x800d0b2c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0b3c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d0b3c:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0b60
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d0b60:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d0ba0
    li      r4, 0x0
    b       branch_0x800d0ba4

branch_0x800d0ba0:
    lwz     r4, 0x8(r3)
branch_0x800d0ba4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d0bac:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d0bd0
    lfs     f1, 0x34(r31)
    lfs     f0, -0x7df8(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
branch_0x800d0bd0:
    li      r3, 0x0
branch_0x800d0bd4:
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lwz     r31, 0x104(sp)
    mtlr    r0
    lwz     r30, 0x100(sp)
    lwz     r29, 0xfc(sp)
    addi    sp, sp, 0x110
    blr


.globl __dt__16TNerveBossEelEatFv
__dt__16TNerveBossEelEatFv: # 0x800d0bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d0c38
    lis     r3, 0x803c
    subi    r0, r3, 0x7264
    stw     r0, 0x0(r31)
    beq-    branch_0x800d0c28
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d0c28:
    extsh.  r0, r4
    ble-    branch_0x800d0c38
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d0c38:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__26TNerveBossEelMouthOpenWaitFv
theNerve__26TNerveBossEelMouthOpenWaitFv: # 0x800d0c50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6924(r13)
    extsb.  r0, r0
    bne-    branch_0x800d0ca0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6920(r13)
    subi    r0, r3, 0x7284
    lis     r4, 0x800d
    stw     r0, -0x6920(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fd4
    addi    r4, r4, 0xcb4
    subi    r3, r13, 0x6920
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6924(r13)
branch_0x800d0ca0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6920
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__26TNerveBossEelMouthOpenWaitFv
__dt__26TNerveBossEelMouthOpenWaitFv: # 0x800d0cb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d0cf8
    lis     r3, 0x803c
    subi    r0, r3, 0x7284
    stw     r0, 0x0(r31)
    beq-    branch_0x800d0ce8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d0ce8:
    extsh.  r0, r4
    ble-    branch_0x800d0cf8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d0cf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveBossEelDieCFP24TSpineBase_10TLiveActor_
execute__16TNerveBossEelDieCFP24TSpineBase_10TLiveActor_: # 0x800d0d10
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stmw    r27, 0x104(sp)
    subi    r30, r3, 0x180
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d0f08
    lwz     r3, gpMSound(r13)
    li      r4, 0x298d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d0d6c
    addi    r4, r31, 0x10
    li      r3, 0x298d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d0d6c:
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x14
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r3, 0x7
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
    lwz     r3, -0x7108(r13)
    li      r4, 0x1e
    lfs     f1, -0x5e48(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x3
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d0dd4
    li      r4, 0x0
    b       branch_0x800d0dd8

branch_0x800d0dd4:
    lwz     r4, 0x24(r3)
branch_0x800d0dd8:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0de8
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d0de8:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d0e0c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d0e0c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d0e4c
    li      r4, 0x0
    b       branch_0x800d0e50

branch_0x800d0e4c:
    lwz     r4, 0xc(r3)
branch_0x800d0e50:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x1b0(r31)
    addi    r4, r31, 0x10
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x210(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x18c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x214(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x218(r31)
    bl      generate__17TBossEelHeartCoinFRQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_4
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d0f08
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r31)
    li      r0, 0x0
    addi    r6, sp, 0xec
    lwz     r3, gpMarDirector(r13)
    addi    r4, r30, 0x25c
    sth     r0, 0xec(sp)
    addi    r5, r31, 0x10
    li      r7, 0x0
    stw     r6, 0x8(sp)
    li      r6, -0x1
    li      r8, 0x0
    lfs     f1, -0x5e40(rtoc)
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x800d0f08:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1174
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5e3c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800d0f48
    lwz     r3, 0x218(r31)
    li      r4, 0x8
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
branch_0x800d0f48:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1174
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_8
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d0f8c
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r3, gpMarDirector(r13)
    bl      fireEndDemoCamera__12TMarDirectorFv
branch_0x800d0f8c:
    lwz     r8, MarioHitActorPos(r13)
    addi    r4, sp, 0xf0
    lwz     r3, -0x70b0(r13)
    addi    r5, r30, 0x270
    lwz     r7, 0x0(r8)
    lwz     r0, 0x4(r8)
    li      r6, 0x0
    stw     r7, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x8(r8)
    stw     r0, 0xf8(sp)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r29, r3
    beq-    branch_0x800d1054
    lwz     r3, 0x16c(r29)
    li      r27, 0x0
    li      r28, 0x1
    stb     r27, 0x81(r3)
    lwz     r3, 0x16c(r29)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x16c(r29)
    stb     r28, 0x80(r3)
    lwz     r4, 0x16c(r29)
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r29)
    stw     r0, 0x18(r4)
    lwz     r4, 0x16c(r29)
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r29)
    stw     r0, 0x18(r4)
    bl      theNerve__27TNerveBEelTearsMarioRecoverFv
    lwz     r4, 0x8c(r29)
    stw     r27, 0x8(r4)
    stw     r27, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r27, 0x1c(r4)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r29)
    lwz     r3, 0x16c(r29)
    stb     r28, 0x81(r3)
branch_0x800d1054:
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x5e58
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x74(r31)
    mulli   r0, r3, 0x30
    lwz     r3, gpItemManager(r13)
    lwz     r5, 0x4(r4)
    addi    r4, r30, 0x28c
    lwz     r6, 0x58(r5)
    addi    r5, r30, 0x2a0
    add     r6, r6, r0
    lfs     f1, 0xc(r6)
    lfs     f2, 0x1c(r6)
    lfs     f3, 0x2c(r6)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lwz     r3, 0x184(r31)
    li      r27, 0x0
    li      r4, 0x0
    stw     r27, 0x70(r3)
    lwz     r3, 0x184(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x4
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r4, 0x74(r31)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800d10ec
    b       branch_0x800d10f0

branch_0x800d10ec:
    lwz     r27, 0x24(r3)
branch_0x800d10f0:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1104
    mr      r4, r27
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d1104:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1128
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d1128:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d1168
    li      r4, 0x0
    b       branch_0x800d116c

branch_0x800d1168:
    lwz     r4, 0x10(r3)
branch_0x800d116c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d1174:
    lmw     r27, 0x104(sp)
    li      r3, 0x0
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    addi    sp, sp, 0x120
    mtlr    r0
    blr


.globl theNerve__16TNerveBossEelDieFv
theNerve__16TNerveBossEelDieFv: # 0x800d1190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x692c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d11e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6928(r13)
    subi    r0, r3, 0x7274
    lis     r4, 0x800d
    stw     r0, -0x6928(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fc8
    addi    r4, r4, 0x11f4
    subi    r3, r13, 0x6928
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x692c(r13)
branch_0x800d11e0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6928
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__16TNerveBossEelDieFv
__dt__16TNerveBossEelDieFv: # 0x800d11f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d1238
    lis     r3, 0x803c
    subi    r0, r3, 0x7274
    stw     r0, 0x0(r31)
    beq-    branch_0x800d1228
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d1228:
    extsh.  r0, r4
    ble-    branch_0x800d1238
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d1238:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveBossEelEatCFP24TSpineBase_10TLiveActor_
execute__16TNerveBossEelEatCFP24TSpineBase_10TLiveActor_: # 0x800d1250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stw     r31, 0x10c(sp)
    stw     r30, 0x108(sp)
    mr      r30, r4
    stw     r29, 0x104(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d133c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x11
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d12b8
    li      r4, 0x0
    b       branch_0x800d12bc

branch_0x800d12b8:
    lwz     r4, 0x24(r3)
branch_0x800d12bc:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d12cc
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d12cc:
    lwz     r3, 0x74(r31)
    li      r4, 0x11
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d12f0
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d12f0:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d1330
    li      r4, 0x0
    b       branch_0x800d1334

branch_0x800d1330:
    lwz     r4, 0x44(r3)
branch_0x800d1334:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d133c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1778
    lwz     r3, 0x74(r31)
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1688
    lbz     r0, 0x1c8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d1378
    li      r0, 0x1
    b       branch_0x800d1404

branch_0x800d1378:
    lwz     r4, 0x74(r31)
    addi    r3, sp, 0xec
    lwz     r5, MarioHitActorPos(r13)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x1a0(r31)
    lwz     r7, 0x58(r4)
    lwz     r4, 0x0(r5)
    mulli   r6, r0, 0x30
    lwz     r0, 0x4(r5)
    stw     r4, 0xec(sp)
    add     r4, r7, r6
    stw     r0, 0xf0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xf4(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xc(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x1c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xf0(sp)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0x2c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0xf4(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f2, 0x1d4(r31)
    lfs     f0, 0x1d8(r31)
    fmuls   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d1400
    li      r0, 0x1
    b       branch_0x800d1404

branch_0x800d1400:
    li      r0, 0x0
branch_0x800d1404:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d1550
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xc
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d1444
    li      r4, 0x0
    b       branch_0x800d1448

branch_0x800d1444:
    lwz     r4, 0x24(r3)
branch_0x800d1448:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1458
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d1458:
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d147c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d147c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d14bc
    li      r4, 0x0
    b       branch_0x800d14c0

branch_0x800d14bc:
    lwz     r4, 0x30(r3)
branch_0x800d14c0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_4
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d1778
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r31)
    lbz     r0, 0x21c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800d1778
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x15
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0xe8(sp)
    addi    r0, sp, 0xe8
    lis     r4, 0x8038
    stw     r0, 0x8(sp)
    lis     r5, 0x800d
    addi    r8, r5, 0x356c
    lfs     f1, -0x5e40(rtoc)
    addi    r4, r4, 0x13c
    addi    r9, r31, 0x0
    addi    r5, r31, 0x10
    li      r6, -0x1
    li      r7, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    li      r0, 0x1
    stb     r0, 0x21c(r31)
    b       branch_0x800d1778

branch_0x800d1550:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x5
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d1588
    li      r4, 0x0
    b       branch_0x800d158c

branch_0x800d1588:
    lwz     r4, 0x24(r3)
branch_0x800d158c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d159c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d159c:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d15c0
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d15c0:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d1600
    li      r4, 0x0
    b       branch_0x800d1604

branch_0x800d1600:
    lwz     r4, 0x14(r3)
branch_0x800d1604:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    addi    r5, r31, 0x204
    li      r4, 0xd4
    lwz     r3, 0x4(r3)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0xf0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x204(r31)
    stfs    f1, 0x208(r31)
    stfs    f2, 0x20c(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d1778
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
    b       branch_0x800d1778

branch_0x800d1688:
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1770
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_8
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d16d0
    li      r29, 0x0
    stw     r29, 0x6c(r31)
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r3, gpMarDirector(r13)
    bl      fireEndDemoCamera__12TMarDirectorFv
    stb     r29, 0x21c(r31)
branch_0x800d16d0:
    li      r0, 0x0
    stw     r0, 0x8(r30)
    lwz     r0, 0x14(r30)
    lwz     r3, 0x18(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800d16ec
    stw     r0, 0x1c(r30)
branch_0x800d16ec:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lbz     r0, -0x693c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d173c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6938(r13)
    subi    r0, r3, 0x7254
    lis     r4, 0x800d
    stw     r0, -0x6938(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fb0
    addi    r4, r4, 0x1884
    subi    r3, r13, 0x6938
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x693c(r13)
branch_0x800d173c:
    subi    r4, r13, 0x6938
    cmplwi  r4, 0x0
    beq-    branch_0x800d1770
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d1770
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d1770:
    li      r3, 0x1
    b       branch_0x800d1864

branch_0x800d1778:
    lwz     r3, 0x74(r31)
    li      r4, 0xc
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1860
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5e38(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d17bc
    lwz     r3, -0x60f0(r13)
    addi    r5, r31, 0x10
    li      r4, 0x8
    bl      start__9RumbleMgrFiP3Vec
    b       branch_0x800d17d0

branch_0x800d17bc:
    lwz     r3, -0x60f0(r13)
    li      r4, 0x14
    li      r5, 0xa
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x800d17d0:
    lwz     r3, MarioActor(r13)
    lwz     r3, 0x4fc(r3)
    bl      onNeutralMarioKey__13TMarioGamePadFv
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_4
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d1860
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r31)
    lbz     r0, 0x21c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800d1860
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x15
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0xcc(sp)
    addi    r0, sp, 0xcc
    lis     r4, 0x8038
    stw     r0, 0x8(sp)
    lis     r5, 0x800d
    addi    r8, r5, 0x356c
    lfs     f1, -0x5e40(rtoc)
    addi    r4, r4, 0x13c
    addi    r9, r31, 0x0
    addi    r5, r31, 0x10
    li      r6, -0x1
    li      r7, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    li      r0, 0x1
    stb     r0, 0x21c(r31)
branch_0x800d1860:
    li      r3, 0x0
branch_0x800d1864:
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lwz     r31, 0x10c(sp)
    mtlr    r0
    lwz     r30, 0x108(sp)
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x118
    blr


.globl __dt__22TNerveBossEelQuickBackFv
__dt__22TNerveBossEelQuickBackFv: # 0x800d1884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d18c8
    lis     r3, 0x803c
    subi    r0, r3, 0x7254
    stw     r0, 0x0(r31)
    beq-    branch_0x800d18b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d18b8:
    extsh.  r0, r4
    ble-    branch_0x800d18c8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d18c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__16TNerveBossEelEatFv
theNerve__16TNerveBossEelEatFv: # 0x800d18e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6934(r13)
    extsb.  r0, r0
    bne-    branch_0x800d1930
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6930(r13)
    subi    r0, r3, 0x7264
    lis     r4, 0x800d
    stw     r0, -0x6930(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fbc
    addi    r4, r4, 0xbf4
    subi    r3, r13, 0x6930
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6934(r13)
branch_0x800d1930:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6930
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__22TNerveBossEelQuickBackCFP24TSpineBase_10TLiveActor_
execute__22TNerveBossEelQuickBackCFP24TSpineBase_10TLiveActor_: # 0x800d1944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    mr      r3, r31
    lfs     f1, -0x5e34(rtoc)
    bl      ExecBackNerve_Sub__FP24TSpineBase_10TLiveActor_f
    cmpwi   r3, 0x0
    beq-    branch_0x800d1a50
    lwz     r3, 0x0(r31)
    li      r0, 0x2
    mtctr   r0
    li      r5, 0x0
    addi    r4, r3, 0x16c
    li      r0, 0xff
branch_0x800d1984:
    lwz     r6, 0x0(r4)
    cmplwi  r6, 0x0
    beq-    branch_0x800d19b0
    lwz     r3, 0x70(r6)
    cmpwi   r3, 0x1
    ble-    branch_0x800d19b0
    lwz     r3, 0x6c(r6)
    lwz     r3, 0x1e8(r3)
    lwz     r3, 0x1d0(r3)
    stw     r3, 0x70(r6)
    stb     r0, 0xbb(r6)
branch_0x800d19b0:
    lwzu    r6, 0x4(r4)
    cmplwi  r6, 0x0
    beq-    branch_0x800d19dc
    lwz     r3, 0x70(r6)
    cmpwi   r3, 0x1
    ble-    branch_0x800d19dc
    lwz     r3, 0x6c(r6)
    lwz     r3, 0x1e8(r3)
    lwz     r3, 0x1d0(r3)
    stw     r3, 0x70(r6)
    stb     r0, 0xbb(r6)
branch_0x800d19dc:
    lwzu    r6, 0x4(r4)
    addi    r5, r5, 0x1
    cmplwi  r6, 0x0
    beq-    branch_0x800d1a0c
    lwz     r3, 0x70(r6)
    cmpwi   r3, 0x1
    ble-    branch_0x800d1a0c
    lwz     r3, 0x6c(r6)
    lwz     r3, 0x1e8(r3)
    lwz     r3, 0x1d0(r3)
    stw     r3, 0x70(r6)
    stb     r0, 0xbb(r6)
branch_0x800d1a0c:
    lwzu    r6, 0x4(r4)
    addi    r5, r5, 0x1
    cmplwi  r6, 0x0
    beq-    branch_0x800d1a3c
    lwz     r3, 0x70(r6)
    cmpwi   r3, 0x1
    ble-    branch_0x800d1a3c
    lwz     r3, 0x6c(r6)
    lwz     r3, 0x1e8(r3)
    lwz     r3, 0x1d0(r3)
    stw     r3, 0x70(r6)
    stb     r0, 0xbb(r6)
branch_0x800d1a3c:
    addi    r5, r5, 0x1
    addi    r4, r4, 0x4
    bdnz+      branch_0x800d1984
    li      r3, 0x1
    b       branch_0x800d1a54

branch_0x800d1a50:
    li      r3, 0x0
branch_0x800d1a54:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl theNerve__22TNerveBossEelQuickBackFv
theNerve__22TNerveBossEelQuickBackFv: # 0x800d1a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x693c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d1ab8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6938(r13)
    subi    r0, r3, 0x7254
    lis     r4, 0x800d
    stw     r0, -0x6938(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fb0
    addi    r4, r4, 0x1884
    subi    r3, r13, 0x6938
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x693c(r13)
branch_0x800d1ab8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6938
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__21TNerveBossEelSlowBackCFP24TSpineBase_10TLiveActor_
execute__21TNerveBossEelSlowBackCFP24TSpineBase_10TLiveActor_: # 0x800d1acc
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, -0x5e30(rtoc)
    bl      ExecBackNerve_Sub__FP24TSpineBase_10TLiveActor_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl theNerve__21TNerveBossEelSlowBackFv
theNerve__21TNerveBossEelSlowBackFv: # 0x800d1af4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6944(r13)
    extsb.  r0, r0
    bne-    branch_0x800d1b44
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6940(r13)
    subi    r0, r3, 0x7244
    lis     r4, 0x800d
    stw     r0, -0x6940(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fa4
    addi    r4, r4, 0x1b58
    subi    r3, r13, 0x6940
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6944(r13)
branch_0x800d1b44:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6940
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__21TNerveBossEelSlowBackFv
__dt__21TNerveBossEelSlowBackFv: # 0x800d1b58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d1b9c
    lis     r3, 0x803c
    subi    r0, r3, 0x7244
    stw     r0, 0x0(r31)
    beq-    branch_0x800d1b8c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d1b8c:
    extsh.  r0, r4
    ble-    branch_0x800d1b9c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d1b9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl ExecBackNerve_Sub__FP24TSpineBase_10TLiveActor_f
ExecBackNerve_Sub__FP24TSpineBase_10TLiveActor_f: # 0x800d1bb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r3
    stw     r29, 0x84(sp)
    lwz     r0, 0x20(r3)
    lwz     r31, 0x0(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x800d1db4
    lwz     r3, gpMSound(r13)
    li      r4, 0x2982
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d1c14
    addi    r4, r31, 0x10
    li      r3, 0x2982
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d1c14:
    lbz     r0, 0x1fd(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d1cf8
    li      r29, 0x0
    stb     r29, 0x1fd(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x6
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r4, 0x74(r31)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800d1c5c
    b       branch_0x800d1c60

branch_0x800d1c5c:
    lwz     r29, 0x24(r3)
branch_0x800d1c60:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1c74
    mr      r4, r29
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d1c74:
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1c98
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d1c98:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d1cd8
    li      r4, 0x0
    b       branch_0x800d1cdc

branch_0x800d1cd8:
    lwz     r4, 0x18(r3)
branch_0x800d1cdc:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, -0x7108(r13)
    li      r4, 0x1a
    lfs     f1, -0x5e48(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    b       branch_0x800d1db4

branch_0x800d1cf8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x9
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d1d30
    li      r4, 0x0
    b       branch_0x800d1d34

branch_0x800d1d30:
    lwz     r4, 0x24(r3)
branch_0x800d1d34:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1d44
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d1d44:
    lwz     r3, 0x74(r31)
    li      r4, 0x9
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d1d68
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d1d68:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d1da8
    li      r4, 0x0
    b       branch_0x800d1dac

branch_0x800d1da8:
    lwz     r4, 0x24(r3)
branch_0x800d1dac:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d1db4:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lwz     r4, 0x1e8(r31)
    slwi    r3, r3, 1
    lfd     f1, -0x5e28(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0x2c(r4)
    stw     r3, 0x7c(sp)
    lfs     f3, 0x1f4(r31)
    stw     r0, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fsubs   f0, f3, f0
    stfs    f0, 0x1f4(r31)
    lfs     f1, 0x1f4(r31)
    lfs     f0, -0x5e40(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d1f38
    stfs    f0, 0x1f4(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1f38
    li      r0, 0x0
    stb     r0, 0x1f0(r31)
    lbz     r0, -0x6960(r13)
    extsb.  r0, r0
    bne-    branch_0x800d1e70
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x695c(r13)
    subi    r0, r3, 0x7214
    lis     r4, 0x800d
    stw     r0, -0x695c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f80
    addi    r4, r4, 0x1f5c
    subi    r3, r13, 0x695c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6960(r13)
branch_0x800d1e70:
    subi    r4, r13, 0x695c
    cmplwi  r4, 0x0
    beq-    branch_0x800d1ea4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d1ea4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d1ea4:
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d1f30
    lbz     r0, -0x691c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d1efc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6918(r13)
    subi    r0, r3, 0x72f8
    lis     r4, 0x800d
    stw     r0, -0x6918(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fe0
    addi    r4, r4, 0x498
    subi    r3, r13, 0x6918
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x691c(r13)
branch_0x800d1efc:
    subi    r4, r13, 0x6918
    cmplwi  r4, 0x0
    beq-    branch_0x800d1f30
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d1f30
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d1f30:
    li      r3, 0x1
    b       branch_0x800d1f3c

branch_0x800d1f38:
    li      r3, 0x0
branch_0x800d1f3c:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x98
    blr


.globl __dt__23TNerveBossEelSecondSpinFv
__dt__23TNerveBossEelSecondSpinFv: # 0x800d1f5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d1fa0
    lis     r3, 0x803c
    subi    r0, r3, 0x7214
    stw     r0, 0x0(r31)
    beq-    branch_0x800d1f90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d1f90:
    extsh.  r0, r4
    ble-    branch_0x800d1fa0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d1fa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveBossEelOutWaitCFP24TSpineBase_10TLiveActor_
execute__20TNerveBossEelOutWaitCFP24TSpineBase_10TLiveActor_: # 0x800d1fb8
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r4
    stw     r29, 0x9c(sp)
    addi    r29, r3, 0x1f20
    stw     r28, 0x98(sp)
    lwz     r4, 0x0(r4)
    lwz     r3, 0x200(r4)
    addi    r31, r4, 0x0
    addi    r0, r3, 0x1
    stw     r0, 0x200(r4)
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800d20c8
    li      r28, 0x0
    stb     r28, 0x1fc(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x10
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r4, 0x74(r31)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800d2040
    b       branch_0x800d2044

branch_0x800d2040:
    lwz     r28, 0x24(r3)
branch_0x800d2044:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2058
    mr      r4, r28
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d2058:
    lwz     r3, 0x74(r31)
    li      r4, 0x10
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d207c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d207c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d20bc
    li      r4, 0x0
    b       branch_0x800d20c0

branch_0x800d20bc:
    lwz     r4, 0x40(r3)
branch_0x800d20c0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d20c8:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d2544
    lwz     r5, 0x1e8(r31)
    li      r4, 0x13
    lwz     r3, 0x74(r31)
    lwz     r28, 0x298(r5)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d215c
    lbz     r0, -0x693c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d2138
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6938(r13)
    subi    r0, r3, 0x7254
    lis     r3, 0x800d
    stw     r0, -0x6938(r13)
    addi    r4, r3, 0x1884
    subi    r3, r13, 0x6938
    addi    r5, r29, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x693c(r13)
branch_0x800d2138:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x6938
    cmplwi  r0, 0x0
    beq-    branch_0x800d214c
    stw     r0, 0x1c(r30)
branch_0x800d214c:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    b       branch_0x800d2544

branch_0x800d215c:
    lwz     r0, 0x200(r31)
    cmpwi   r0, 0xe10
    blt-    branch_0x800d21ec
    lbz     r0, -0x6944(r13)
    extsb.  r0, r0
    bne-    branch_0x800d21a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6940(r13)
    subi    r0, r3, 0x7244
    lis     r3, 0x800d
    stw     r0, -0x6940(r13)
    addi    r4, r3, 0x1b58
    subi    r3, r13, 0x6940
    addi    r5, r29, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6944(r13)
branch_0x800d21a8:
    subi    r4, r13, 0x6940
    cmplwi  r4, 0x0
    beq-    branch_0x800d21dc
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d21dc
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d21dc:
    li      r0, 0x0
    stw     r0, 0x200(r31)
    li      r3, 0x1
    b       branch_0x800d2548

branch_0x800d21ec:
    lwz     r0, 0x20(r30)
    cmpw    r0, r28
    ble-    branch_0x800d22e8
    lbz     r0, -0x694c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d2238
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6948(r13)
    subi    r0, r3, 0x7234
    lis     r3, 0x800d
    stw     r0, -0x6948(r13)
    addi    r4, r3, 0x256c
    subi    r3, r13, 0x6948
    addi    r5, r29, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x694c(r13)
branch_0x800d2238:
    subi    r4, r13, 0x6948
    cmplwi  r4, 0x0
    beq-    branch_0x800d226c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d226c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d226c:
    lbz     r0, -0x6924(r13)
    extsb.  r0, r0
    bne-    branch_0x800d22ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6920(r13)
    subi    r0, r3, 0x7284
    lis     r3, 0x800d
    stw     r0, -0x6920(r13)
    addi    r4, r3, 0xcb4
    subi    r3, r13, 0x6920
    addi    r5, r29, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6924(r13)
branch_0x800d22ac:
    subi    r4, r13, 0x6920
    cmplwi  r4, 0x0
    beq-    branch_0x800d22e0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d22e0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d22e0:
    li      r3, 0x1
    b       branch_0x800d2548

branch_0x800d22e8:
    lbz     r0, 0x1fd(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d23b4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x13
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d232c
    li      r4, 0x0
    b       branch_0x800d2330

branch_0x800d232c:
    lwz     r4, 0x24(r3)
branch_0x800d2330:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2340
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d2340:
    lwz     r3, 0x74(r31)
    li      r4, 0x13
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2364
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d2364:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d23a4
    li      r4, 0x0
    b       branch_0x800d23a8

branch_0x800d23a4:
    lwz     r4, 0x4c(r3)
branch_0x800d23a8:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800d2544

branch_0x800d23b4:
    lbz     r0, 0x1fc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d2488
    li      r28, 0x0
    stb     r28, 0x1fc(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x12
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r4, 0x74(r31)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800d23fc
    b       branch_0x800d2400

branch_0x800d23fc:
    lwz     r28, 0x24(r3)
branch_0x800d2400:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2414
    mr      r4, r28
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d2414:
    lwz     r3, 0x74(r31)
    li      r4, 0x12
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2438
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d2438:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d2478
    li      r4, 0x0
    b       branch_0x800d247c

branch_0x800d2478:
    lwz     r4, 0x48(r3)
branch_0x800d247c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x800d2544

branch_0x800d2488:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0x10
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d24c0
    li      r4, 0x0
    b       branch_0x800d24c4

branch_0x800d24c0:
    lwz     r4, 0x24(r3)
branch_0x800d24c4:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d24d4
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d24d4:
    lwz     r3, 0x74(r31)
    li      r4, 0x10
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d24f8
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d24f8:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d2538
    li      r4, 0x0
    b       branch_0x800d253c

branch_0x800d2538:
    lwz     r4, 0x40(r3)
branch_0x800d253c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d2544:
    li      r3, 0x0
branch_0x800d2548:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__20TNerveBossEelOutWaitFv
__dt__20TNerveBossEelOutWaitFv: # 0x800d256c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d25b0
    lis     r3, 0x803c
    subi    r0, r3, 0x7234
    stw     r0, 0x0(r31)
    beq-    branch_0x800d25a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d25a0:
    extsh.  r0, r4
    ble-    branch_0x800d25b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d25b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__20TNerveBossEelOutWaitFv
theNerve__20TNerveBossEelOutWaitFv: # 0x800d25c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x694c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d2618
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6948(r13)
    subi    r0, r3, 0x7234
    lis     r4, 0x800d
    stw     r0, -0x6948(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f98
    addi    r4, r4, 0x256c
    subi    r3, r13, 0x6948
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x694c(r13)
branch_0x800d2618:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6948
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__19TNerveBossEelAppearCFP24TSpineBase_10TLiveActor_
execute__19TNerveBossEelAppearCFP24TSpineBase_10TLiveActor_: # 0x800d262c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r4
    stw     r29, 0x94(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d27c0
    lis     r29, 0x1
    lwz     r3, gpMSound(r13)
    subi    r4, r29, 0x76de
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d2690
    subi    r3, r29, 0x76de
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d2690:
    lwz     r3, 0x210(r31)
    li      r4, 0x0
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x74(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xf
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d26d8
    li      r4, 0x0
    b       branch_0x800d26dc

branch_0x800d26d8:
    lwz     r4, 0x24(r3)
branch_0x800d26dc:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d26ec
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d26ec:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2710
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d2710:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d2750
    li      r4, 0x0
    b       branch_0x800d2754

branch_0x800d2750:
    lwz     r4, 0x3c(r3)
branch_0x800d2754:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    li      r0, 0x1
    stb     r0, 0x1f0(r31)
    li      r4, 0x19
    lwz     r3, -0x7108(r13)
    lfs     f1, -0x5e48(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lwz     r3, 0x1e8(r31)
    slwi    r4, r4, 1
    lfd     f2, -0x5e28(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f0, 0x2c(r3)
    stw     r4, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f0, f1
    fdivs   f0, f0, f1
    stfs    f0, 0x1f8(r31)
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, -0x6950(r13)
branch_0x800d27c0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lwz     r0, 0x20(r30)
    slwi    r3, r3, 1
    cmpw    r0, r3
    bge-    branch_0x800d2888
    xoris   r0, r3, 0x8000
    lwz     r3, 0x1e8(r31)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x5e28(rtoc)
    stw     r0, 0x88(sp)
    lfs     f2, 0x2c(r3)
    lfd     f0, 0x88(sp)
    lfs     f3, 0x1f4(r31)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    fadds   f0, f3, f0
    stfs    f0, 0x1f4(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, -0x5e20(rtoc)
    fmuls   f1, f1, f0
    stfs    f1, 0x144(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800d2840
    lfs     f0, 0x34(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0x34(r31)
    b       branch_0x800d284c

branch_0x800d2840:
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
branch_0x800d284c:
    lfs     f2, 0x34(r31)
    lfs     f0, -0x5e1c(rtoc)
    b       branch_0x800d285c

branch_0x800d2858:
    fsubs   f2, f2, f0
branch_0x800d285c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800d2858
    lfs     f1, -0x5e1c(rtoc)
    lfs     f0, -0x5e40(rtoc)
    b       branch_0x800d2878

branch_0x800d2874:
    fadds   f2, f2, f1
branch_0x800d2878:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800d2874
    stfs    f2, 0x34(r31)
    b       branch_0x800d2954

branch_0x800d2888:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d2954
    lbz     r0, -0x694c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d28e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6948(r13)
    subi    r0, r3, 0x7234
    lis     r4, 0x800d
    stw     r0, -0x6948(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f98
    addi    r4, r4, 0x256c
    subi    r3, r13, 0x6948
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x694c(r13)
branch_0x800d28e0:
    subi    r4, r13, 0x6948
    cmplwi  r4, 0x0
    beq-    branch_0x800d2914
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d2914
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d2914:
    lwz     r3, 0x210(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lbz     r0, 0x21d(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d294c
    li      r0, 0x0
    stb     r0, 0x21d(r31)
    li      r4, 0x13
    li      r5, 0x1
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800d294c:
    li      r3, 0x1
    b       branch_0x800d2958

branch_0x800d2954:
    li      r3, 0x0
branch_0x800d2958:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    mtlr    r0
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa8
    blr


.globl theNerve__19TNerveBossEelAppearFv
theNerve__19TNerveBossEelAppearFv: # 0x800d2978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6958(r13)
    extsb.  r0, r0
    bne-    branch_0x800d29c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6954(r13)
    subi    r0, r3, 0x7224
    lis     r4, 0x800d
    stw     r0, -0x6954(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f8c
    addi    r4, r4, 0x29dc
    subi    r3, r13, 0x6954
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6958(r13)
branch_0x800d29c8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6954
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__19TNerveBossEelAppearFv
__dt__19TNerveBossEelAppearFv: # 0x800d29dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d2a20
    lis     r3, 0x803c
    subi    r0, r3, 0x7224
    stw     r0, 0x0(r31)
    beq-    branch_0x800d2a10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d2a10:
    extsh.  r0, r4
    ble-    branch_0x800d2a20
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d2a20:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveBossEelSecondSpinCFP24TSpineBase_10TLiveActor_
execute__23TNerveBossEelSecondSpinCFP24TSpineBase_10TLiveActor_: # 0x800d2a38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r4
    stw     r29, 0x84(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d2c08
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xa
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d2aa0
    li      r4, 0x0
    b       branch_0x800d2aa4

branch_0x800d2aa0:
    lwz     r4, 0x24(r3)
branch_0x800d2aa4:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2ab4
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d2ab4:
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2ad8
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d2ad8:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d2b18
    li      r4, 0x0
    b       branch_0x800d2b1c

branch_0x800d2b18:
    lwz     r4, 0x28(r3)
branch_0x800d2b1c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r29, 0x1ec(r31)
    li      r0, 0x0
    stw     r0, 0x0(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5e28(rtoc)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5e18(rtoc)
    li      r4, 0x2981
    stw     r0, 0x78(sp)
    lfs     f0, -0x5e14(rtoc)
    lfd     f2, 0x78(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r3, 0x74(sp)
    addi    r0, r3, 0xf1
    stw     r0, 0x4(r29)
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x144(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d2bb8
    lfs     f1, -0x5e10(rtoc)
    addi    r4, r31, 0x10
    li      r3, 0x2981
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800d2bb8:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5e28(rtoc)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5e18(rtoc)
    stw     r0, 0x70(sp)
    lfs     f0, -0x5e0c(rtoc)
    lfd     f2, 0x70(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d2bfc
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    b       branch_0x800d2c08

branch_0x800d2bfc:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
branch_0x800d2c08:
    lfs     f0, 0x144(r31)
    addi    r3, sp, 0x68
    stfs    f0, 0x68(sp)
    lwz     r5, 0x1e8(r31)
    lfs     f1, 0x194(r5)
    lfs     f2, 0x180(r5)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f0, 0x68(sp)
    li      r4, 0x18
    stfs    f0, 0x144(r31)
    lwz     r3, -0x7108(r13)
    lfs     f1, -0x5e48(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800d2cb0
    lfs     f1, 0x34(r31)
    lfs     f0, 0x68(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x5e40(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800d2d14
    lwz     r3, gpMSound(r13)
    li      r4, 0x2981
    lfs     f31, 0x68(sp)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d2d14
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x2981
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x800d2d14

branch_0x800d2cb0:
    lfs     f1, 0x34(r31)
    lfs     f0, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x5e1c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800d2d14
    lwz     r3, gpMSound(r13)
    li      r4, 0x2981
    lfs     f31, 0x68(sp)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d2d14
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x2981
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800d2d14:
    lfs     f1, 0x34(r31)
    lfs     f2, -0x5e40(rtoc)
    lfs     f3, -0x5e1c(rtoc)
    bl      MsWrap_f___Ffff_800d2e00
    stfs    f1, 0x34(r31)
    li      r4, 0x0
    lwz     r5, 0x1ec(r31)
    lwz     r3, 0x0(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    lwz     r3, 0x4(r5)
    cmpw    r0, r3
    blt-    branch_0x800d2d54
    stw     r3, 0x0(r5)
    li      r4, 0x1
branch_0x800d2d54:
    clrlwi. r0, r4, 24
    beq-    branch_0x800d2ddc
    lbz     r0, -0x6958(r13)
    extsb.  r0, r0
    bne-    branch_0x800d2da0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6954(r13)
    subi    r0, r3, 0x7224
    lis     r4, 0x800d
    stw     r0, -0x6954(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f8c
    addi    r4, r4, 0x29dc
    subi    r3, r13, 0x6954
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6958(r13)
branch_0x800d2da0:
    subi    r4, r13, 0x6954
    cmplwi  r4, 0x0
    beq-    branch_0x800d2dd4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d2dd4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d2dd4:
    li      r3, 0x1
    b       branch_0x800d2de0

branch_0x800d2ddc:
    li      r3, 0x0
branch_0x800d2de0:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lwz     r31, 0x8c(sp)
    mtlr    r0
    lwz     r30, 0x88(sp)
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x98
    blr


.globl MsWrap_f___Ffff_800d2e00
MsWrap_f___Ffff_800d2e00: # 0x800d2e00
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800d2e3c
    fmr     f1, f2
    blr

    b       branch_0x800d2e1c

branch_0x800d2e18:
    fsubs   f1, f1, f0
branch_0x800d2e1c:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800d2e18
    b       branch_0x800d2e30

branch_0x800d2e2c:
    fadds   f1, f1, f0
branch_0x800d2e30:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800d2e2c
    blr

branch_0x800d2e3c:
    fsubs   f0, f3, f2
    b       branch_0x800d2e1c
    
    blr


.globl theNerve__23TNerveBossEelSecondSpinFv
theNerve__23TNerveBossEelSecondSpinFv: # 0x800d2e48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6960(r13)
    extsb.  r0, r0
    bne-    branch_0x800d2e98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x695c(r13)
    subi    r0, r3, 0x7214
    lis     r4, 0x800d
    stw     r0, -0x695c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f80
    addi    r4, r4, 0x1f5c
    subi    r3, r13, 0x695c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6960(r13)
branch_0x800d2e98:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x695c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__22TNerveBossEelFirstSpinCFP24TSpineBase_10TLiveActor_
execute__22TNerveBossEelFirstSpinCFP24TSpineBase_10TLiveActor_: # 0x800d2eac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d3028
    lfs     f0, -0x5e40(rtoc)
    li      r4, 0x2981
    stfs    f0, 0x144(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d2f1c
    lfs     f1, -0x5e10(rtoc)
    addi    r4, r31, 0x10
    li      r3, 0x2981
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800d2f1c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xa
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d2f54
    li      r4, 0x0
    b       branch_0x800d2f58

branch_0x800d2f54:
    lwz     r4, 0x24(r3)
branch_0x800d2f58:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2f68
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d2f68:
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d2f8c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d2f8c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d2fcc
    li      r4, 0x0
    b       branch_0x800d2fd0

branch_0x800d2fcc:
    lwz     r4, 0x28(r3)
branch_0x800d2fd0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5e28(rtoc)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5e18(rtoc)
    stw     r0, 0x70(sp)
    lfs     f0, -0x5e0c(rtoc)
    lfd     f2, 0x70(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d301c
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    b       branch_0x800d3028

branch_0x800d301c:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
branch_0x800d3028:
    lfs     f0, 0x144(r31)
    addi    r3, sp, 0x6c
    stfs    f0, 0x6c(sp)
    lwz     r5, 0x1e8(r31)
    lfs     f1, 0x194(r5)
    lfs     f2, 0x180(r5)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f0, 0x6c(sp)
    li      r4, 0x18
    stfs    f0, 0x144(r31)
    lwz     r3, -0x7108(r13)
    lfs     f1, -0x5e48(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800d30d0
    lfs     f1, 0x34(r31)
    lfs     f0, 0x6c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x5e40(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800d3134
    lwz     r3, gpMSound(r13)
    li      r4, 0x2981
    lfs     f31, 0x6c(sp)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d3134
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x2981
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x800d3134

branch_0x800d30d0:
    lfs     f1, 0x34(r31)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x5e1c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800d3134
    lwz     r3, gpMSound(r13)
    li      r4, 0x2981
    lfs     f31, 0x6c(sp)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d3134
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x2981
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800d3134:
    lfs     f1, 0x34(r31)
    lfs     f2, -0x5e40(rtoc)
    lfs     f3, -0x5e1c(rtoc)
    bl      MsWrap_f___Ffff_800d2e00
    stfs    f1, 0x34(r31)
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x168
    blt-    branch_0x800d31d4
    lbz     r0, -0x6958(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3198
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6954(r13)
    subi    r0, r3, 0x7224
    lis     r4, 0x800d
    stw     r0, -0x6954(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f8c
    addi    r4, r4, 0x29dc
    subi    r3, r13, 0x6954
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6958(r13)
branch_0x800d3198:
    subi    r4, r13, 0x6954
    cmplwi  r4, 0x0
    beq-    branch_0x800d31cc
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d31cc
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d31cc:
    li      r3, 0x1
    b       branch_0x800d31d8

branch_0x800d31d4:
    li      r3, 0x0
branch_0x800d31d8:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl theNerve__22TNerveBossEelFirstSpinFv
theNerve__22TNerveBossEelFirstSpinFv: # 0x800d31f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6968(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3244
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6964(r13)
    subi    r0, r3, 0x7204
    lis     r4, 0x800d
    stw     r0, -0x6964(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f74
    addi    r4, r4, 0x3258
    subi    r3, r13, 0x6964
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6968(r13)
branch_0x800d3244:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6964
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__22TNerveBossEelFirstSpinFv
__dt__22TNerveBossEelFirstSpinFv: # 0x800d3258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d329c
    lis     r3, 0x803c
    subi    r0, r3, 0x7204
    stw     r0, 0x0(r31)
    beq-    branch_0x800d328c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d328c:
    extsh.  r0, r4
    ble-    branch_0x800d329c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d329c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveBossEelWaitAppearCFP24TSpineBase_10TLiveActor_
execute__23TNerveBossEelWaitAppearCFP24TSpineBase_10TLiveActor_: # 0x800d32b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d339c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x1b8(r31)
    li      r0, 0xa
    stw     r0, 0x1b4(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    lwz     r5, 0x74(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d3318
    li      r4, 0x0
    b       branch_0x800d331c

branch_0x800d3318:
    lwz     r4, 0x24(r3)
branch_0x800d331c:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d332c
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d332c:
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d3350
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d3350:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x5e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800d3390
    li      r4, 0x0
    b       branch_0x800d3394

branch_0x800d3390:
    lwz     r4, 0x28(r3)
branch_0x800d3394:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800d339c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x9c4
    bne-    branch_0x800d33bc
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x12
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800d33bc:
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, sp, 0x4c
    lfs     f0, -0x5e08(rtoc)
    li      r5, 0x0
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x54(sp)
    lfs     f1, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    lwz     r3, 0x1ac(r31)
    bl      isInCube__16TCubeManagerBaseCFRC3Vecl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d3480
    lbz     r0, -0x6968(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3444
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6964(r13)
    subi    r0, r3, 0x7204
    lis     r4, 0x800d
    stw     r0, -0x6964(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f74
    addi    r4, r4, 0x3258
    subi    r3, r13, 0x6964
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6968(r13)
branch_0x800d3444:
    subi    r4, r13, 0x6964
    cmplwi  r4, 0x0
    beq-    branch_0x800d3478
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d3478
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d3478:
    li      r3, 0x1
    b       branch_0x800d3484

branch_0x800d3480:
    li      r3, 0x0
branch_0x800d3484:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl theNerve__23TNerveBossEelWaitAppearFv
theNerve__23TNerveBossEelWaitAppearFv: # 0x800d34a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6970(r13)
    extsb.  r0, r0
    bne-    branch_0x800d34f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x696c(r13)
    subi    r0, r3, 0x71f4
    lis     r4, 0x800d
    stw     r0, -0x696c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f68
    addi    r4, r4, 0x3504
    subi    r3, r13, 0x696c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6970(r13)
branch_0x800d34f0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x696c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TNerveBossEelWaitAppearFv
__dt__23TNerveBossEelWaitAppearFv: # 0x800d3504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d3548
    lis     r3, 0x803c
    subi    r0, r3, 0x71f4
    stw     r0, 0x0(r31)
    beq-    branch_0x800d3538
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d3538:
    extsh.  r0, r4
    ble-    branch_0x800d3548
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d3548:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__8TBossEelCFv
getBasNameTable__8TBossEelCFv: # 0x800d3560
    lis     r3, 0x803c
    subi    r3, r3, 0x73d8
    blr


.globl hoseiDiveCameraCallback__FUlUl
hoseiDiveCameraCallback__FUlUl: # 0x800d356c
    mflr    r0
    cmplwi  r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    bne-    branch_0x800d35b8
    lwz     r6, 0x10(r3)
    addi    r4, sp, 0x10
    lwz     r0, 0x14(r3)
    lfs     f0, -0x5e04(rtoc)
    stw     r6, 0x10(sp)
    lwz     r5, MarioHitActorPos(r13)
    stw     r0, 0x14(sp)
    lwz     r0, 0x18(r3)
    lwz     r3, gpCamera(r13)
    stw     r0, 0x18(sp)
    lfs     f1, 0x14(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(sp)
    bl      warpPosAndAt__15CPolarSubCameraFRC3VecRC3Vec
branch_0x800d35b8:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isInBossEelMoguDemo__8TBossEelFv
isInBossEelMoguDemo__8TBossEelFv: # 0x800d35cc
    mflr    r0
    li      r4, 0xc
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d3608
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d3610
branch_0x800d3608:
    li      r3, 0x1
    b       branch_0x800d3614

branch_0x800d3610:
    li      r3, 0x0
branch_0x800d3614:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__8TBossEelFUlPQ26JDrama9TGraphics
perform__8TBossEelFUlPQ26JDrama9TGraphics: # 0x800d3628
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x318(sp)
    stmw    r23, 0x2f4(sp)
    rlwinm. r27, r4, 0, 30, 30
    addi    r30, r4, 0x0
    lis     r4, 0x803f
    addi    r31, r3, 0x0
    addi    r29, r5, 0x0
    addi    r28, r4, 0x1f20
    beq-    branch_0x800d36d4
    lbz     r0, -0x692c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3694
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6928(r13)
    subi    r0, r3, 0x7274
    lis     r3, 0x800d
    stw     r0, -0x6928(r13)
    addi    r4, r3, 0x11f4
    subi    r3, r13, 0x6928
    addi    r5, r28, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x692c(r13)
branch_0x800d3694:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6928
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d36d4
    lfs     f1, -0x5e40(rtoc)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1dc
    stfs    f1, 0x1dc(r31)
    li      r4, 0x198
    li      r6, 0x1
    lfs     f0, -0x5e00(rtoc)
    stfs    f0, 0x1e0(r31)
    stfs    f1, 0x1e4(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800d36d4:
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d3704
    lwz     r3, 0x214(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800d3704:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x800d4244
    clrlwi. r0, r30, 31
    beq-    branch_0x800d3db4
    lwz     r4, 0x1e8(r31)
    mr      r3, r31
    lfs     f0, 0x40(r4)
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x24(r31)
    lwz     r4, 0x1e8(r31)
    lfs     f1, 0x154(r31)
    lfs     f0, 0x18(r4)
    lfs     f2, 0x1f4(r31)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x14(r31)
    lwz     r4, 0x1ac(r31)
    lfs     f2, -0x5dfc(rtoc)
    lwz     r4, 0x14(r4)
    lfs     f1, 0x28(r31)
    lwz     r4, 0x10(r4)
    lfs     f0, 0x14(r31)
    lwz     r4, 0x0(r4)
    lfs     f3, 0x18(r31)
    fmadds  f1, f2, f1, f0
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r4)
    stfs    f1, 0x10(r4)
    stfs    f3, 0x14(r4)
    lfs     f4, -0x5df8(rtoc)
    lfs     f0, 0x24(r31)
    lfs     f3, 0x2c(r31)
    fmuls   f0, f4, f0
    lfs     f2, -0x5df4(rtoc)
    lfs     f1, 0x28(r31)
    fmuls   f3, f4, f3
    fmuls   f1, f2, f1
    stfs    f0, 0x24(r4)
    stfs    f1, 0x28(r4)
    stfs    f3, 0x2c(r4)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    bl      calcAnm__6MActorFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      collideToMario__8TBossEelFv
    lwz     r4, 0x74(r31)
    addi    r25, sp, 0x2bc
    lhz     r0, 0x1a4(r31)
    mr      r3, r25
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0x198(r31)
    mr      r4, r25
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x69a0(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800d388c
    addi    r24, sp, 0x28c
    li      r23, 0x0
    li      r26, 0x0
    li      r25, 0x0
branch_0x800d3838:
    addi    r0, r25, 0x1a0
    lwz     r4, 0x74(r31)
    lhzx    r0, r31, r0
    mr      r3, r24
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    addi    r0, r26, 0x190
    lwzx    r3, r31, r0
    mr      r4, r24
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
    cmpwi   r23, 0x2
    addi    r26, r26, 0x4
    addi    r25, r25, 0x2
    blt+    branch_0x800d3838
branch_0x800d388c:
    lbz     r0, -0x7df4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800d3900
    lbz     r0, -0x692c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d38d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6928(r13)
    subi    r0, r3, 0x7274
    lis     r3, 0x800d
    stw     r0, -0x6928(r13)
    addi    r4, r3, 0x11f4
    subi    r3, r13, 0x6928
    addi    r5, r28, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x692c(r13)
branch_0x800d38d8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6928
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d3900
    lwz     r3, 0x1b0(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    b       branch_0x800d3910

branch_0x800d3900:
    lwz     r3, 0x1b0(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800d3910:
    lwz     r4, 0x1a8(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    lwz     r4, 0x1e8(r31)
    lwz     r3, 0x1a8(r31)
    lfs     f2, 0x7c(r4)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x14(r3)
    fmuls   f2, f2, f1
    fadds   f0, f0, f2
    stfs    f0, 0x14(r3)
    lwz     r4, 0x1e8(r31)
    lfs     f3, 0x24(r31)
    lfs     f0, 0xe0(r4)
    lfs     f1, 0xf4(r4)
    fmuls   f0, f0, f3
    lfs     f4, 0x108(r4)
    fmuls   f2, f1, f3
    lfs     f5, 0x11c(r4)
    lwz     r3, 0x1a8(r31)
    stfs    f0, 0x50(r3)
    fmuls   f1, f4, f3
    fmuls   f0, f5, f3
    stfs    f2, 0x54(r3)
    stfs    f1, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
    lwz     r5, 0x1e8(r31)
    mr      r3, r31
    lfs     f4, 0x24(r31)
    lfs     f0, 0x90(r5)
    lfs     f1, 0xa4(r5)
    fmuls   f3, f0, f4
    lfs     f0, 0xcc(r5)
    lfs     f5, 0xb8(r5)
    fmuls   f2, f1, f4
    fmuls   f0, f0, f4
    stfs    f3, 0x50(r31)
    fmuls   f1, f5, f4
    stfs    f2, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x1ac(r31)
    lwz     r3, 0x14(r3)
    addi    r3, r3, 0xc
    bl      begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r3, 0x4(r3)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x38(r31)
    stfs    f0, 0x20(r3)
    lfs     f2, -0x5df0(rtoc)
    lfs     f1, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f0, 0x10(r31)
    fadds   f1, f2, f1
    stfs    f0, 0xc(r3)
    stfs    f1, 0x10(r3)
    stfs    f3, 0x14(r3)
    lfs     f1, -0x5dec(rtoc)
    stfs    f1, 0x24(r3)
    lfs     f0, -0x5de8(rtoc)
    stfs    f0, 0x28(r3)
    stfs    f1, 0x2c(r3)
    lfs     f3, -0x5dfc(rtoc)
    lfs     f2, 0x28(r31)
    lfs     f1, 0x14(r31)
    lfs     f4, 0x18(r31)
    lfs     f0, 0x10(r31)
    fmadds  f1, f3, f2, f1
    stfs    f0, 0xc(r3)
    stfs    f1, 0x10(r3)
    stfs    f4, 0x14(r3)
    lfs     f4, -0x5df8(rtoc)
    lfs     f0, 0x24(r31)
    lfs     f3, 0x2c(r31)
    fmuls   f0, f4, f0
    lfs     f2, -0x5df4(rtoc)
    lfs     f1, 0x28(r31)
    fmuls   f3, f4, f3
    fmuls   f1, f2, f1
    stfs    f0, 0x24(r3)
    stfs    f1, 0x28(r3)
    stfs    f3, 0x2c(r3)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d3c70
    li      r6, 0x0
    stb     r6, 0x1c8(r31)
    li      r3, 0x0
    li      r4, 0x1
    b       branch_0x800d3ac0

branch_0x800d3a9c:
    lwz     r5, 0x44(r5)
    lwzx    r5, r5, r3
    lwz     r5, 0x4c(r5)
    addis   r0, r5, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d3ab8
    stb     r4, 0x1c8(r31)
branch_0x800d3ab8:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
branch_0x800d3ac0:
    lwz     r5, 0x1a8(r31)
    lhz     r0, 0x48(r5)
    cmpw    r6, r0
    blt+    branch_0x800d3a9c
    lbz     r0, -0x6968(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3b10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6964(r13)
    subi    r0, r3, 0x7204
    lis     r3, 0x800d
    stw     r0, -0x6964(r13)
    addi    r4, r3, 0x3258
    subi    r3, r13, 0x6964
    addi    r5, r28, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6968(r13)
branch_0x800d3b10:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6964
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d3c24
    lbz     r0, -0x6960(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3b64
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x695c(r13)
    subi    r0, r3, 0x7214
    lis     r3, 0x800d
    stw     r0, -0x695c(r13)
    addi    r4, r3, 0x1f5c
    subi    r3, r13, 0x695c
    addi    r5, r28, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6960(r13)
branch_0x800d3b64:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x695c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d3c24
    lbz     r0, -0x6924(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3bb8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6920(r13)
    subi    r0, r3, 0x7284
    lis     r3, 0x800d
    stw     r0, -0x6920(r13)
    addi    r4, r3, 0xcb4
    subi    r3, r13, 0x6920
    addi    r5, r28, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6924(r13)
branch_0x800d3bb8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6920
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d3c24
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d3c1c
    lwz     r3, 0x74(r31)
    li      r4, 0x10
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d3c1c
    lwz     r3, 0x74(r31)
    li      r4, 0x12
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d3c1c
    lwz     r3, 0x74(r31)
    li      r4, 0x13
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d3c24
branch_0x800d3c1c:
    mr      r3, r31
    bl      updateTearsCnt__8TBossEelFv
branch_0x800d3c24:
    lfs     f2, 0x1bc(r31)
    lfs     f1, -0x5de4(rtoc)
    lfs     f0, -0x5e48(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d3c44
    fmr     f1, f0
    b       branch_0x800d3c54

branch_0x800d3c44:
    lfs     f0, -0x5e40(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d3c54
    fmr     f1, f0
branch_0x800d3c54:
    stfs    f1, 0x1bc(r31)
    lwz     r3, 0x74(r31)
    lfs     f1, 0x1bc(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d3c70
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d3c70:
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x170(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x174(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x178(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x17c(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x180(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x184(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lwz     r3, 0x188(r31)
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d3db4
    lbz     r0, -0x692c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3d30
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6928(r13)
    subi    r0, r3, 0x7274
    lis     r3, 0x800d
    stw     r0, -0x6928(r13)
    addi    r4, r3, 0x11f4
    subi    r3, r13, 0x6928
    addi    r5, r28, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x692c(r13)
branch_0x800d3d30:
    lwz     r3, 0x8c(r31)
    subi    r24, r13, 0x6928
    lwz     r0, 0x14(r3)
    cmplw   r0, r24
    beq-    branch_0x800d3db4
    lbz     r0, -0x692c(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3d80
    subi    r3, r13, 0x6928
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x7274
    lis     r3, 0x800d
    stw     r0, -0x6928(r13)
    addi    r4, r3, 0x11f4
    addi    r3, r24, 0x0
    addi    r5, r28, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x692c(r13)
branch_0x800d3d80:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6928
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800d3d98
    stw     r0, 0x1c(r4)
branch_0x800d3d98:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800d3db4:
    cmplwi  r27, 0x0
    beq-    branch_0x800d415c
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6960(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3e1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x695c(r13)
    subi    r0, r3, 0x7214
    lis     r3, 0x800d
    stw     r0, -0x695c(r13)
    addi    r4, r3, 0x1f5c
    subi    r3, r13, 0x695c
    addi    r5, r28, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6960(r13)
branch_0x800d3e1c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x695c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d3e84
    lbz     r0, -0x6968(r13)
    extsb.  r0, r0
    bne-    branch_0x800d3e70
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6964(r13)
    subi    r0, r3, 0x7204
    lis     r3, 0x800d
    stw     r0, -0x6964(r13)
    addi    r4, r3, 0x3258
    subi    r3, r13, 0x6964
    addi    r5, r28, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6968(r13)
branch_0x800d3e70:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6964
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d3f9c
branch_0x800d3e84:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0xf0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x204(r31)
    stfs    f1, 0x208(r31)
    stfs    f2, 0x20c(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800d3ed4
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x204
    li      r4, 0x193
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800d3eec

branch_0x800d3ed4:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x204
    li      r4, 0x194
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800d3eec:
    cmplwi  r3, 0x0
    beq-    branch_0x800d3f24
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
branch_0x800d3f24:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800d3f4c
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x204
    li      r4, 0x195
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800d3f64

branch_0x800d3f4c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x204
    li      r4, 0x196
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800d3f64:
    cmplwi  r3, 0x0
    beq-    branch_0x800d3f9c
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
branch_0x800d3f9c:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d40a8
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r4, 0x74(r31)
    mr      r23, r3
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    addi    r4, r4, 0xf0
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x204(r31)
    stfs    f1, 0x208(r31)
    stfs    f2, 0x20c(r31)
    lfs     f1, -0x5de0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800d4048
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x204
    li      r4, 0xd4
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d4048
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
branch_0x800d4048:
    lfs     f1, 0x10(r23)
    lfs     f0, -0x5e34(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d40a8
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x204
    li      r4, 0x197
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d40a8
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
branch_0x800d40a8:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d415c
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x2180
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0xf0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x204(r31)
    stfs    f1, 0x208(r31)
    stfs    f2, 0x20c(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d4120
    addi    r4, r31, 0x10
    li      r3, 0x2180
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d4120:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x204
    li      r4, 0x199
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d415c
    lfs     f0, -0x5ddc(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800d415c:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x800d416c
    lwz     r3, 0x74(r31)
    bl      viewCalc__6MActorFv
branch_0x800d416c:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x800d417c
    lwz     r3, 0x74(r31)
    bl      entry__6MActorFv
branch_0x800d417c:
    li      r24, 0x0
    li      r27, 0x0
branch_0x800d4184:
    addi    r0, r27, 0x15c
    lwzx    r3, r31, r0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    addi    r24, r24, 0x1
    cmpwi   r24, 0x4
    addi    r27, r27, 0x4
    blt+    branch_0x800d4184
    li      r24, 0x0
    li      r27, 0x0
branch_0x800d41b0:
    addi    r0, r27, 0x16c
    lwzx    r3, r31, r0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    addi    r24, r24, 0x1
    cmpwi   r24, 0x8
    addi    r27, r27, 0x4
    blt+    branch_0x800d41b0
    lwz     r3, 0x218(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x18c(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x1b0(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x210(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800d4244:
    lmw     r23, 0x2f4(sp)
    lwz     r0, 0x31c(sp)
    addi    sp, sp, 0x318
    mtlr    r0
    blr


.globl begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv
begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv: # 0x800d4258
    lwz     r3, 0x4(r3)
    blr


.globl collideToMario__8TBossEelFv
collideToMario__8TBossEelFv: # 0x800d4260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stfd    f28, 0x100(sp)
    stfd    f27, 0xf8(sp)
    stfd    f26, 0xf0(sp)
    stfd    f25, 0xe8(sp)
    stfd    f24, 0xe0(sp)
    stfd    f23, 0xd8(sp)
    stfd    f22, 0xd0(sp)
    stfd    f21, 0xc8(sp)
    stfd    f20, 0xc0(sp)
    stfd    f19, 0xb8(sp)
    stw     r31, 0xb4(sp)
    li      r31, 0x0
    stw     r30, 0xb0(sp)
    mr      r30, r3
    stw     r29, 0xac(sp)
    li      r29, 0x0
    lwz     r4, MarioHitActorPos(r13)
    lfs     f24, -0x5e40(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    fmr     f23, f24
    fmr     f25, f24
    lfs     f30, -0x5dd8(rtoc)
    stw     r3, 0x9c(sp)
    fmr     f22, f23
    stw     r0, 0xa0(sp)
    fmr     f26, f24
    lfs     f31, -0x5e48(rtoc)
    lwz     r0, 0x8(r4)
    fmr     f29, f24
    lfs     f27, -0x5e0c(rtoc)
    stw     r0, 0xa4(sp)
    lfs     f28, -0x5ddc(rtoc)
branch_0x800d42fc:
    addi    r0, r29, 0x1a0
    lwz     r3, 0x74(r30)
    lhzx    r0, r30, r0
    cmpwi   r31, 0x0
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f21, 0xc(r3)
    lfs     f20, 0x1c(r3)
    lfs     f19, 0x2c(r3)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x78(sp)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x7c(sp)
    bne-    branch_0x800d4368
    lfs     f0, 0x74(sp)
    fneg    f0, f0
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fneg    f0, f0
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fneg    f0, f0
    stfs    f0, 0x7c(sp)
branch_0x800d4368:
    lfs     f1, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x7c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x800d43a4
    stfs    f25, 0x7c(sp)
    stfs    f25, 0x78(sp)
    stfs    f25, 0x74(sp)
    b       branch_0x800d43d0

branch_0x800d43a4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
branch_0x800d43d0:
    lwz     r0, 0x9c(sp)
    lwz     r3, 0xa0(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lfs     f0, 0x68(sp)
    fsubs   f0, f0, f21
    stfs    f0, 0x68(sp)
    lfs     f0, 0x6c(sp)
    fsubs   f0, f0, f20
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    fsubs   f0, f0, f19
    stfs    f0, 0x70(sp)
    lfs     f0, 0x68(sp)
    lfs     f3, 0x6c(sp)
    fmuls   f1, f0, f0
    lfs     f4, 0x70(sp)
    fmuls   f0, f3, f3
    fmuls   f2, f4, f4
    fadds   f0, f1, f0
    fadds   f2, f2, f0
    fcmpo   cr0, f2, f26
    cror    2, 0, 2
    bne-    branch_0x800d443c
    b       branch_0x800d4458

branch_0x800d443c:
    frsqrte f1, f2
    frsp    f1, f1
    fmuls   f0, f1, f1
    fmuls   f1, f27, f1
    fnmsubs  f0, f2, f0, f28
    fmuls   f0, f1, f0
    fmuls   f2, f2, f0
branch_0x800d4458:
    fcmpu   cr0, f29, f2
    beq-    branch_0x800d45a4
    lfs     f1, 0x1d4(r30)
    fcmpo   cr0, f2, f1
    cror    2, 1, 2
    beq-    branch_0x800d45a4
    lfs     f0, 0x78(sp)
    fsubs   f19, f1, f2
    lfs     f2, 0x68(sp)
    fmuls   f0, f3, f0
    lfs     f1, 0x74(sp)
    lfs     f3, 0x7c(sp)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f0, f29
    cror    2, 1, 2
    beq-    branch_0x800d45a4
    fneg    f1, f0
    fcmpo   cr0, f1, f19
    bge-    branch_0x800d44e8
    lwz     r0, 0x74(sp)
    lwz     r3, 0x78(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0x58(sp)
    stw     r0, 0x5c(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
    b       branch_0x800d458c

branch_0x800d44e8:
    lwz     r0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x58(sp)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x5c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x800d453c
    stfs    f29, 0x5c(sp)
    stfs    f29, 0x58(sp)
    stfs    f29, 0x54(sp)
    b       branch_0x800d4568

branch_0x800d453c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(sp)
branch_0x800d4568:
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f19
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f19
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f19
    stfs    f0, 0x5c(sp)
branch_0x800d458c:
    lfs     f2, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fadds   f22, f22, f2
    fadds   f23, f23, f1
    fadds   f24, f24, f0
branch_0x800d45a4:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x2
    addi    r29, r29, 0x2
    blt+    branch_0x800d42fc
    lfs     f0, 0x9c(sp)
    addi    r3, sp, 0x9c
    fadds   f0, f0, f22
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fadds   f0, f0, f23
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fadds   f0, f0, f24
    stfs    f0, 0xa4(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lfd     f28, 0x100(sp)
    lfd     f27, 0xf8(sp)
    lfd     f26, 0xf0(sp)
    lfd     f25, 0xe8(sp)
    lfd     f24, 0xe0(sp)
    lfd     f23, 0xd8(sp)
    lfd     f22, 0xd0(sp)
    lfd     f21, 0xc8(sp)
    lfd     f20, 0xc0(sp)
    lfd     f19, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0x120
    blr


.globl forceShedTears__8TBossEelFb
forceShedTears__8TBossEelFb: # 0x800d4630
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    stw     r28, 0x48(sp)
    lbz     r3, 0x1d0(r3)
    cntlzw  r0, r3
    srwi    r0, r0, 5
    stb     r0, 0x1d0(r31)
    bne-    branch_0x800d4680
    lbz     r0, 0x1d0(r31)
    li      r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x800d4694
    li      r3, 0x1
    b       branch_0x800d4694

branch_0x800d4680:
    lbz     r0, 0x1d0(r31)
    li      r3, 0x2
    cmplwi  r0, 0x0
    beq-    branch_0x800d4694
    li      r3, 0x3
branch_0x800d4694:
    slwi    r0, r3, 2
    add     r29, r31, r0
    lwzu    r3, 0x15c(r29)
    bl      getConnectedMtx__12TSharedPartsCFv
    lwz     r30, 0x0(r29)
    mr      r28, r3
    li      r4, 0x0
    lwz     r3, 0x18(r30)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r30)
    li      r0, 0x1
    stw     r0, 0x5c(r30)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r30)
    lwz     r5, 0x18(r30)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d46e4
    li      r4, 0x0
    b       branch_0x800d46e8

branch_0x800d46e4:
    lwz     r4, 0x24(r3)
branch_0x800d46e8:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d46f8
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d46f8:
    lwz     r3, 0x18(r30)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r30)
    lfs     f1, 0x64(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d471c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d471c:
    lwz     r4, 0x0(r29)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x6c(r4)
    mr      r4, r28
    bl      shedTears__8TBossEelFPA4_f
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl shedTears__8TBossEelFPA4_f
shedTears__8TBossEelFPA4_f: # 0x800d4754
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    lfs     f2, 0x2c(r4)
    lis     r4, 0x8038
    lfs     f1, 0x1c(r30)
    addi    r5, r4, 0xf0
    lfs     f0, 0xc(r30)
    lwz     r3, -0x70b0(r13)
    addi    r4, sp, 0x5c
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f2, 0x64(sp)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r31, r3
    beq-    branch_0x800d48a0
    stw     r30, 0x168(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x5e40(rtoc)
    lfs     f0, -0x5dd4(rtoc)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f1, 0x48(sp)
    lfs     f0, -0x5e1c(rtoc)
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x48(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, -0x5e40(rtoc)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    lfd     f5, -0x5e28(rtoc)
    fmr     f3, f1
    stw     r0, 0x68(sp)
    lfs     f0, -0x5e18(rtoc)
    addi    r3, sp, 0x18
    lfd     f4, 0x68(sp)
    lfs     f2, 0x48(sp)
    fsubs   f4, f4, f5
    fmuls   f0, f0, f4
    fmuls   f0, f31, f0
    fadds   f2, f2, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x50
    addi    r5, r4, 0x0
    addi    r3, sp, 0x18
    bl      PSMTXMultVec
    lfs     f1, 0x10(r31)
    addi    r3, sp, 0x50
    lfs     f0, 0x50(sp)
    mr      r4, r3
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x50(sp)
    lfs     f1, -0x5e30(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
branch_0x800d48a0:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x80
    blr


.globl updateTearsCnt__8TBossEelFv
updateTearsCnt__8TBossEelFv: # 0x800d48bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    mr      r31, r3
    lwz     r3, 0x1c4(r3)
    addi    r0, r3, 0x1
    stw     r0, 0x1c4(r31)
    lwz     r3, MarioHitActorPos(r13)
    lwz     r4, 0x1e8(r31)
    lfs     f2, 0x14(r31)
    lfs     f1, 0x4(r3)
    lfs     f0, -0x5dd0(rtoc)
    fsubs   f1, f2, f1
    lwz     r30, 0x1e4(r4)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d490c
    slwi    r30, r30, 2
    b       branch_0x800d4930

branch_0x800d490c:
    lfs     f0, -0x5dcc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d4920
    mulli   r30, r30, 0x3
    b       branch_0x800d4930

branch_0x800d4920:
    lfs     f0, -0x5dc8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d4930
    slwi    r30, r30, 1
branch_0x800d4930:
    lwz     r3, 0x1c4(r31)
    subi    r0, r30, 0x64
    cmpw    r3, r0
    bne-    branch_0x800d4a54
    lwz     r4, 0x1c0(r31)
    lis     r3, 0x8038
    addi    r0, r3, 0xcc
    slwi    r3, r4, 2
    add     r3, r0, r3
    lwz     r28, 0x0(r3)
    li      r4, 0x0
    slwi    r0, r28, 2
    add     r3, r31, r0
    lwz     r29, 0x15c(r3)
    lwz     r3, 0x18(r29)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r29)
    li      r0, 0x1
    stw     r0, 0x5c(r29)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r29)
    lwz     r5, 0x18(r29)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d499c
    li      r4, 0x0
    b       branch_0x800d49a0

branch_0x800d499c:
    lwz     r4, 0x24(r3)
branch_0x800d49a0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d49b0
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d49b0:
    lwz     r3, 0x18(r29)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r29)
    lfs     f1, 0x64(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d49d4
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d49d4:
    slwi    r0, r28, 2
    add     r3, r31, r0
    lwz     r3, 0x15c(r3)
    li      r4, 0x0
    lwz     r29, 0x68(r3)
    lwz     r3, 0x18(r29)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r29)
    li      r0, 0x1
    stw     r0, 0x5c(r29)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r29)
    lwz     r5, 0x18(r29)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d4a1c
    li      r4, 0x0
    b       branch_0x800d4a20

branch_0x800d4a1c:
    lwz     r4, 0x24(r3)
branch_0x800d4a20:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d4a30
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d4a30:
    lwz     r3, 0x18(r29)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r29)
    lfs     f1, 0x64(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d4a54
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d4a54:
    lwz     r0, 0x1c4(r31)
    cmpw    r0, r30
    ble-    branch_0x800d4b3c
    li      r30, 0x0
    stw     r30, 0x1c4(r31)
    lis     r3, 0x8038
    addi    r0, r3, 0xcc
    lwz     r3, 0x1c0(r31)
    slwi    r3, r3, 2
    add     r3, r0, r3
    lwz     r0, 0x0(r3)
    slwi    r0, r0, 2
    add     r28, r31, r0
    lwzu    r3, 0x15c(r28)
    bl      getConnectedMtx__12TSharedPartsCFv
    lwz     r29, 0x0(r28)
    mr      r27, r3
    li      r4, 0x0
    lwz     r3, 0x18(r29)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r29)
    li      r0, 0x1
    stw     r0, 0x5c(r29)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r29)
    lwz     r4, 0x18(r29)
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x800d4acc
    b       branch_0x800d4ad0

branch_0x800d4acc:
    lwz     r30, 0x24(r3)
branch_0x800d4ad0:
    lwz     r3, 0xc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x800d4ae4
    mr      r4, r30
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d4ae4:
    lwz     r3, 0x18(r29)
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r29)
    lfs     f1, 0x64(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d4b08
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d4b08:
    lwz     r4, 0x0(r28)
    li      r30, 0x0
    addi    r3, r31, 0x0
    stw     r30, 0x6c(r4)
    mr      r4, r27
    bl      shedTears__8TBossEelFPA4_f
    lwz     r3, 0x1c0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c0(r31)
    lwz     r0, 0x1c0(r31)
    cmpwi   r0, 0x4
    blt-    branch_0x800d4b3c
    stw     r30, 0x1c0(r31)
branch_0x800d4b3c:
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl getTakingMtx__8TBossEelFv
getTakingMtx__8TBossEelFv: # 0x800d4b50
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x150
    blr


.globl init__8TBossEelFP12TLiveManager
init__8TBossEelFP12TLiveManager: # 0x800d4b64
    mflr    r0
    lis     r6, 0x803c
    stw     r0, 0x4(sp)
    lis     r5, 0x8038
    stwu    sp, -0x310(sp)
    stmw    r22, 0x2e8(sp)
    addi    r23, r4, 0x0
    addi    r31, r3, 0x0
    addi    r4, r31, 0x0
    subi    r30, r6, 0x7410
    subi    r29, r5, 0x180
    stw     r23, 0x70(r3)
    addi    r3, r23, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800d4bb8
    addi    r3, r24, 0x0
    addi    r4, r23, 0x0
    bl      __ct__13TMActorKeeperFP12TLiveManager
branch_0x800d4bb8:
    stw     r24, 0x78(r31)
    li      r4, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActorFromAllBmd__13TMActorKeeperFUl
    lwz     r3, 0x78(r31)
    addi    r0, r23, 0x54
    addi    r4, r31, 0xc4
    lwz     r3, 0x8(r3)
    lwz     r3, 0x0(r3)
    stw     r3, 0x74(r31)
    stw     r0, 0x1e8(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x150(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x158(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x18
    stw     r0, 0xf0(r31)
    lfs     f2, 0x148(r31)
    lfs     f1, 0xc0(r31)
    lfs     f0, 0x14(r31)
    fmuls   f2, f2, f1
    lwz     r3, gpMap(r13)
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    fadds   f2, f0, f2
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d4c44
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x800d4c44:
    lbz     r0, -0x6970(r13)
    extsb.  r0, r0
    bne-    branch_0x800d4c88
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x696c(r13)
    subi    r0, r3, 0x71f4
    lis     r4, 0x800d
    stw     r0, -0x696c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f68
    addi    r4, r4, 0x3504
    subi    r3, r13, 0x696c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6970(r13)
branch_0x800d4c88:
    lwz     r8, 0x8c(r31)
    li      r7, 0x0
    lis     r4, 0x800
    stw     r7, 0x8(r8)
    subi    r0, r13, 0x696c
    addi    r3, r31, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, 0x3
    li      r5, 0x1
    stw     r0, 0x14(r8)
    lis     r6, 0x8000
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lwz     r9, 0x1e8(r31)
    lfs     f4, 0xcc(r9)
    lfs     f3, 0xb8(r9)
    lfs     f2, 0xa4(r9)
    lfs     f1, 0x90(r9)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r23, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x800d4d20
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800d4d10
    mr      r3, r24
    bl      __ct__13J3DSkinDeformFv
branch_0x800d4d10:
    addi    r4, r24, 0x0
    addi    r3, r23, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x800d4d20:
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800d4d44
    addi    r3, r23, 0x0
    addi    r4, r29, 0x2d0
    bl      __ct__9THitActorFPCc
branch_0x800d4d44:
    stw     r23, 0x1a8(r31)
    lis     r3, 0x800
    addi    r4, r3, 0x3
    lwz     r9, 0x1e8(r31)
    li      r5, 0x2
    lwz     r3, 0x1a8(r31)
    lis     r6, 0x8000
    lfs     f4, 0x11c(r9)
    lfs     f3, 0x108(r9)
    lfs     f2, 0xf4(r9)
    lfs     f1, 0xe0(r9)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r29, 0x2e4
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x2e4
    mtlr    r12
    blrl
    addi    r27, r3, 0x0
    addi    r25, r27, 0x10
    addi    r3, sp, 0x1a0
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x1a0(sp)
    addi    r3, sp, 0x2a4
    addi    r4, sp, 0x19c
    stw     r0, 0x19c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x2a4(sp)
    addi    r5, sp, 0x218
    addi    r4, r25, 0x0
    stw     r0, 0x2a0(sp)
    addi    r3, sp, 0x214
    addi    r6, r31, 0x1a8
    lwz     r0, 0x2a0(sp)
    stw     r0, 0x218(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x1a8(r31)
    li      r3, 0x80
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800d4e74
    lwz     r4, 0x74(r31)
    mr      r3, r23
    lwz     r5, 0x4(r4)
    addi    r4, r29, 0x2f0
    addi    r25, r5, 0x20
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r23)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r23)
    subi    r3, r3, 0x6ecc
    li      r4, 0x0
    stw     r25, 0x68(r23)
    addi    r0, r3, 0x24
    lfs     f2, -0x5e40(rtoc)
    stfs    f2, 0x6c(r23)
    fmr     f1, f2
    fmr     f0, f2
    stfs    f2, 0x70(r23)
    stfs    f1, 0x74(r23)
    stfs    f0, 0x78(r23)
    stw     r4, 0x7c(r23)
    stw     r3, 0x0(r23)
    stw     r0, 0x20(r23)
branch_0x800d4e74:
    stw     r23, 0x1b0(r31)
    lwz     r3, 0x1b0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x1b0(r31)
    addi    r25, r27, 0x10
    addi    r3, sp, 0x198
    stw     r31, 0x7c(r4)
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x198(sp)
    addi    r3, sp, 0x28c
    addi    r4, sp, 0x194
    stw     r0, 0x194(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x28c(sp)
    addi    r5, sp, 0x204
    addi    r4, r25, 0x0
    stw     r0, 0x288(sp)
    addi    r3, sp, 0x200
    addi    r6, r31, 0x1b0
    lwz     r0, 0x288(sp)
    stw     r0, 0x204(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x1b0(r31)
    li      r3, 0x80
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800d4f68
    lwz     r4, 0x74(r31)
    mr      r3, r23
    lwz     r5, 0x4(r4)
    addi    r4, r29, 0x300
    lwz     r5, 0x58(r5)
    addi    r25, r5, 0x150
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r23)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r23)
    subi    r3, r3, 0x7024
    li      r4, 0x0
    stw     r25, 0x68(r23)
    addi    r0, r3, 0x24
    lfs     f2, -0x5e40(rtoc)
    stfs    f2, 0x6c(r23)
    fmr     f1, f2
    fmr     f0, f2
    stfs    f2, 0x70(r23)
    stfs    f1, 0x74(r23)
    stfs    f0, 0x78(r23)
    stw     r4, 0x7c(r23)
    stw     r3, 0x0(r23)
    stw     r0, 0x20(r23)
branch_0x800d4f68:
    stw     r23, 0x210(r31)
    lwz     r3, 0x210(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r25, r27, 0x10
    addi    r3, sp, 0x190
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x190(sp)
    addi    r3, sp, 0x274
    addi    r4, sp, 0x18c
    stw     r0, 0x18c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x274(sp)
    addi    r5, sp, 0x1f0
    addi    r4, r25, 0x0
    stw     r0, 0x270(sp)
    addi    r3, sp, 0x1ec
    addi    r6, r31, 0x210
    lwz     r0, 0x270(sp)
    stw     r0, 0x1f0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x210(r31)
    addi    r3, r29, 0x310
    lwz     r0, 0x64(r4)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    lwz     r4, 0x74(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x4(r4)
    lwz     r28, 0xb0(r4)
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r23, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800d501c
    addi    r3, r23, 0x0
    lis     r4, 0x1024
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800d501c:
    addi    r26, r24, 0x0
    li      r23, 0x0
    li      r25, 0x0
branch_0x800d5028:
    add     r3, r30, r25
    lwz     r4, 0xc8(r3)
    mr      r3, r28
    bl      getIndex__10JUTNameTabCFPCc
    addi    r24, r3, 0x0
    li      r3, 0x7c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d5068
    addi    r3, r22, 0x0
    addi    r4, r31, 0x0
    addi    r5, r24, 0x0
    addi    r6, r26, 0x0
    addi    r8, r29, 0x328
    li      r7, 0x3
    bl      __ct__11TBossEelEyeFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x800d5068:
    addi    r23, r23, 0x1
    addi    r0, r25, 0x15c
    cmpwi   r23, 0x4
    stwx    r22, r31, r0
    addi    r25, r25, 0x4
    blt+    branch_0x800d5028
    lwz     r0, 0x160(r31)
    li      r4, 0x0
    lwz     r3, 0x15c(r31)
    stw     r0, 0x68(r3)
    lwz     r0, 0x15c(r31)
    lwz     r3, 0x160(r31)
    stw     r0, 0x68(r3)
    lwz     r0, 0x168(r31)
    lwz     r3, 0x164(r31)
    stw     r0, 0x68(r3)
    lwz     r0, 0x164(r31)
    lwz     r3, 0x168(r31)
    stw     r0, 0x68(r3)
    lwz     r3, 0x164(r31)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5dd4(rtoc)
    li      r4, 0x0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x168(r31)
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x5dd4(rtoc)
    stfs    f0, 0x10(r3)
    addi    r3, r29, 0x338
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r24, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d5114
    addi    r3, r24, 0x0
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r22, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800d5114:
    stw     r22, 0x2d4(sp)
    addi    r3, r29, 0x354
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r24, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d514c
    addi    r3, r24, 0x0
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r22, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800d514c:
    stw     r22, 0x2d8(sp)
    addi    r3, r29, 0x374
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r24, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d5184
    addi    r3, r24, 0x0
    lis     r4, 0x1010
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r22, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800d5184:
    stw     r22, 0x2dc(sp)
    addi    r26, sp, 0x2d4
    li      r23, 0x0
    li      r25, 0x0
branch_0x800d5194:
    cmpwi   r23, 0x1
    li      r24, 0x0
    beq-    branch_0x800d51b0
    cmpwi   r23, 0x4
    beq-    branch_0x800d51b0
    cmpwi   r23, 0x7
    bne-    branch_0x800d51b4
branch_0x800d51b0:
    li      r24, 0x1
branch_0x800d51b4:
    cmpwi   r23, 0x6
    bne-    branch_0x800d51c0
    li      r24, 0x2
branch_0x800d51c0:
    li      r3, 0xc0
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d51f4
    add     r3, r30, r25
    clrlslwi  r0, r24, 24, 2
    lwz     r6, 0xd8(r3)
    lwzx    r7, r26, r0
    addi    r3, r22, 0x0
    addi    r4, r24, 0x0
    addi    r5, r31, 0x0
    addi    r8, r29, 0x394
    bl      __ct__13TBossEelToothFUcP8TBossEelPCcP12SDLModelDataPCc
branch_0x800d51f4:
    addi    r4, r25, 0x16c
    add     r4, r31, r4
    stw     r22, 0x0(r4)
    cmplwi  r23, 0x2
    li      r0, 0x0
    lwz     r3, 0x0(r4)
    stb     r0, 0xbc(r3)
    ble-    branch_0x800d521c
    cmpwi   r23, 0x7
    bne-    branch_0x800d5228
branch_0x800d521c:
    lwz     r3, 0x0(r4)
    li      r0, 0x1
    stb     r0, 0xbc(r3)
branch_0x800d5228:
    addi    r23, r23, 0x1
    cmpwi   r23, 0x8
    addi    r25, r25, 0x4
    blt+    branch_0x800d5194
    addi    r3, r29, 0x3a8
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r24, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d526c
    addi    r3, r24, 0x0
    lis     r4, 0x1024
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r22, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800d526c:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800d52f8
    stw     r23, 0x258(sp)
    addi    r4, r31, 0x0
    addi    r6, r22, 0x0
    lwz     r3, 0x258(sp)
    addi    r8, r29, 0x3cc
    li      r5, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
    lis     r4, 0x803c
    lwz     r3, 0x258(sp)
    subi    r0, r4, 0x6d74
    stw     r0, 0x0(r3)
    li      r26, 0x0
    li      r25, 0x0
    stb     r26, 0x1c(r3)
    stw     r26, 0x7c(r3)
    stw     r31, 0x7c(r3)
branch_0x800d52c0:
    lwz     r3, gpItemManager(r13)
    bl      newAndRegisterCoinReal__12TItemManagerFv
    lwz     r4, 0x258(sp)
    addi    r0, r25, 0x20
    stwx    r3, r4, r0
    lwzx    r3, r4, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    cmpwi   r26, 0x14
    addi    r25, r25, 0x4
    blt+    branch_0x800d52c0
branch_0x800d52f8:
    stw     r23, 0x218(r31)
    li      r23, 0x0
    li      r26, 0x0
    li      r25, 0x0
branch_0x800d5308:
    add     r3, r30, r25
    lwz     r4, 0xf8(r3)
    mr      r3, r28
    bl      getIndex__10JUTNameTabCFPCc
    addi    r0, r26, 0x1a0
    sthx    r3, r31, r0
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d5338
    mr      r3, r22
    bl      __ct__17TMapCollisionMoveFv
branch_0x800d5338:
    addi    r24, r25, 0x190
    add     r24, r31, r24
    stw     r22, 0x0(r24)
    add     r4, r30, r25
    addi    r6, r31, 0x0
    lwz     r3, 0x0(r24)
    li      r5, 0x2
    lwz     r4, 0x108(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r24)
    addi    r4, r31, 0x10
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r23, r23, 0x1
    cmpwi   r23, 0x4
    addi    r26, r26, 0x2
    addi    r25, r25, 0x4
    blt+    branch_0x800d5308
    li      r3, 0x88
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d5418
    lwz     r4, 0x74(r31)
    mr      r3, r22
    lhz     r0, 0x1a4(r31)
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r25, r4, r0
    addi    r4, r29, 0x3e8
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r22)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r22)
    subi    r3, r3, 0x6f78
    li      r4, 0x0
    stw     r25, 0x68(r22)
    addi    r0, r3, 0x24
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x6c(r22)
    stfs    f0, 0x70(r22)
    stfs    f0, 0x74(r22)
    stfs    f0, 0x78(r22)
    stw     r4, 0x7c(r22)
    stw     r3, 0x0(r22)
    stw     r0, 0x20(r22)
    stw     r4, 0x80(r22)
    stw     r4, 0x84(r22)
branch_0x800d5418:
    stw     r22, 0x214(r31)
    lwz     r3, 0x214(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r25, r27, 0x10
    addi    r3, sp, 0x188
    addi    r4, r25, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x188(sp)
    addi    r3, sp, 0x24c
    addi    r4, sp, 0x184
    stw     r0, 0x184(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x24c(sp)
    addi    r5, sp, 0x1d0
    addi    r4, r25, 0x0
    stw     r0, 0x248(sp)
    addi    r3, sp, 0x1cc
    addi    r6, r31, 0x214
    lwz     r0, 0x248(sp)
    stw     r0, 0x1d0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r4, 0x214(r31)
    li      r3, 0x74
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800d5590
    stw     r28, 0x238(sp)
    addi    r4, r29, 0x3f8
    lwz     r3, 0x238(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    lwz     r27, 0x238(sp)
    subi    r3, r3, 0x6d2c
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r4, 0x800
    stw     r0, 0x20(r27)
    li      r0, 0x1
    addi    r3, r27, 0x0
    stw     r31, 0x68(r27)
    addi    r4, r4, 0x3
    li      r5, 0x3
    stb     r0, 0x6c(r27)
    lis     r6, 0x8000
    lwz     r7, 0x68(r27)
    lwz     r9, 0x1e8(r7)
    lfs     f4, 0x234(r9)
    lfs     f3, 0x220(r9)
    lfs     f2, 0x20c(r9)
    lfs     f1, 0x1f8(r9)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r29, 0x2e4
    lwz     r25, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r25)
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0x2e4
    mtlr    r12
    blrl
    addi    r25, r3, 0x10
    addi    r4, r25, 0x0
    addi    r3, sp, 0x16c
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x16c(sp)
    addi    r4, sp, 0x168
    addi    r3, sp, 0x1b4
    stw     r0, 0x168(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1b4(sp)
    addi    r5, sp, 0x178
    addi    r4, r25, 0x0
    stw     r0, 0x1b0(sp)
    addi    r3, sp, 0x174
    addi    r6, sp, 0x238
    lwz     r0, 0x1b0(sp)
    stw     r0, 0x178(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x174(sp)
    addi    r3, sp, 0x1ac
    addi    r4, sp, 0x170
    stw     r0, 0x170(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x64(r27)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r27)
branch_0x800d5590:
    stw     r28, 0x18c(r31)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800d55b4
    addi    r3, r22, 0x0
    addi    r4, r29, 0x408
    li      r5, 0x2
    bl      __ct__16TCubeManagerBaseFPCcUc
branch_0x800d55b4:
    stw     r22, 0x1ac(r31)
    lwz     r3, 0x1ac(r31)
    lfs     f1, -0x5dfc(rtoc)
    lwz     r3, 0x14(r3)
    lfs     f0, 0x14(r31)
    lwz     r3, 0x10(r3)
    lfs     f2, 0x18(r31)
    fadds   f1, f1, f0
    lwz     r3, 0x0(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r3)
    stfs    f1, 0x10(r3)
    stfs    f2, 0x14(r3)
    lfs     f1, -0x5df8(rtoc)
    stfs    f1, 0x24(r3)
    lfs     f0, -0x5df4(rtoc)
    stfs    f0, 0x28(r3)
    stfs    f1, 0x2c(r3)
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800d5630
    li      r23, 0x0
    b       branch_0x800d5614

branch_0x800d5610:
    addi    r23, r23, 0x1
branch_0x800d5614:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r23, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800d5610
branch_0x800d5630:
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lmw     r22, 0x2e8(sp)
    lwz     r0, 0x314(sp)
    addi    sp, sp, 0x310
    mtlr    r0
    blr


.globl __dt__17TBossEelCollisionFv
__dt__17TBossEelCollisionFv: # 0x800d5664
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800d56cc
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800d56bc
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800d56bc:
    extsh.  r0, r31
    ble-    branch_0x800d56cc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800d56cc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__29TBossEelTearsRecoverCollisionFUlPQ26JDrama9TGraphics
perform__29TBossEelTearsRecoverCollisionFUlPQ26JDrama9TGraphics: # 0x800d56e8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x800d5774
    mr      r3, r27
    bl      calcEntryRadius__9THitActorFv
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800d5768

branch_0x800d5720:
    lwz     r3, 0x44(r27)
    lwzx    r3, r3, r31
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d5740
    li      r0, 0x1
    b       branch_0x800d5744

branch_0x800d5740:
    li      r0, 0x0
branch_0x800d5744:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d5760
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
branch_0x800d5760:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800d5768:
    lhz     r0, 0x48(r27)
    cmpw    r30, r0
    blt+    branch_0x800d5720
branch_0x800d5774:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl behaveToMario__29TBossEelTearsRecoverCollisionFv
behaveToMario__29TBossEelTearsRecoverCollisionFv: # 0x800d5798
    mflr    r0
    li      r4, MARIOMSG_HURT
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      SMS_SendMessageToMario__FP9THitActorUl
    li      r0, 0x0
    stb     r0, 0x80(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initCollision__29TBossEelTearsRecoverCollisionFv
initCollision__29TBossEelTearsRecoverCollisionFv: # 0x800d57dc
    mflr    r0
    lis     r4, 0x2000
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x2c
    li      r5, 0x3
    stwu    sp, -0x8(sp)
    lis     r6, 0x8000
    lfs     f0, -0x5dc4(rtoc)
    stfs    f0, 0x74(r3)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x78(r3)
    stfs    f0, 0x70(r3)
    lfs     f1, 0x6c(r3)
    lfs     f2, 0x70(r3)
    lfs     f3, 0x74(r3)
    lfs     f4, 0x78(r3)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToMario__24TBossEelBarrierCollisionFv
behaveToMario__24TBossEelBarrierCollisionFv: # 0x800d5830
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    lfs     f1, -0x5e40(rtoc)
    addi    r3, sp, 0x18
    lfs     f0, -0x7df0(r13)
    stfs    f1, 0x18(sp)
    stfs    f0, 0x1c(sp)
    stfs    f1, 0x20(sp)
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x20(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initCollision__24TBossEelBarrierCollisionFv
initCollision__24TBossEelBarrierCollisionFv: # 0x800d589c
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x23
    li      r5, 0x5
    stwu    sp, -0x8(sp)
    lis     r6, 0x8000
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x74(r3)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x78(r3)
    stfs    f0, 0x70(r3)
    lfs     f1, 0x6c(r3)
    lfs     f2, 0x70(r3)
    lfs     f3, 0x74(r3)
    lfs     f4, 0x78(r3)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__20TBossEelAwaCollisionFUlPQ26JDrama9TGraphics
perform__20TBossEelAwaCollisionFUlPQ26JDrama9TGraphics: # 0x800d58f0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x800d59cc
    mr      r3, r29
    bl      calcEntryRadius__9THitActorFv
    lfs     f1, -0x5dc0(rtoc)
    lfs     f0, 0x14(r29)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d5944
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x800d5944:
    lfs     f1, 0x14(r29)
    lfs     f0, 0x54(r29)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d596c
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
branch_0x800d596c:
    li      r27, 0x0
    li      r28, 0x0
    b       branch_0x800d59c0

branch_0x800d5978:
    lwz     r3, 0x44(r29)
    lwzx    r3, r3, r28
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d5998
    li      r0, 0x1
    b       branch_0x800d599c

branch_0x800d5998:
    li      r0, 0x0
branch_0x800d599c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d59b8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
branch_0x800d59b8:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
branch_0x800d59c0:
    lhz     r0, 0x48(r29)
    cmpw    r27, r0
    blt+    branch_0x800d5978
branch_0x800d59cc:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800d5a00
    lwz     r3, 0x68(r29)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r29)
    lwz     r3, 0x68(r29)
    lfs     f1, -0x5dbc(rtoc)
    lfs     f0, 0x1c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r3, 0x68(r29)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x18(r29)
branch_0x800d5a00:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl behaveToMario__20TBossEelAwaCollisionFv
behaveToMario__20TBossEelAwaCollisionFv: # 0x800d5a24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lfs     f1, -0x5e40(rtoc)
    addi    r3, sp, 0x14
    lfs     f0, -0x5e30(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    stfs    f1, 0x1c(sp)
    lfs     f0, -0x5db8(rtoc)
    stfs    f0, 0x18(sp)
    lwz     r4, -0x60a0(r13)
    stfs    f1, 0x0(r4)
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initCollision__20TBossEelAwaCollisionFv
initCollision__20TBossEelAwaCollisionFv: # 0x800d5aa0
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x3
    li      r5, 0x2
    stwu    sp, -0x8(sp)
    lis     r6, 0x8000
    lfs     f0, -0x5db4(rtoc)
    stfs    f0, 0x74(r3)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x78(r3)
    stfs    f0, 0x70(r3)
    lfs     f1, 0x6c(r3)
    lfs     f2, 0x70(r3)
    lfs     f3, 0x74(r3)
    lfs     f4, 0x78(r3)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initCollision__21TBossEelBodyCollisionFv
initCollision__21TBossEelBodyCollisionFv: # 0x800d5af4
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x23
    li      r5, 0x5
    stwu    sp, -0x8(sp)
    lis     r6, 0x8000
    lfs     f0, -0x5db4(rtoc)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x74(r3)
    lfs     f0, -0x5db0(rtoc)
    stfs    f0, 0x70(r3)
    lfs     f0, -0x5dac(rtoc)
    stfs    f0, 0x78(r3)
    lfs     f1, 0x6c(r3)
    lfs     f2, 0x70(r3)
    lfs     f3, 0x74(r3)
    lfs     f4, 0x78(r3)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToMario__17TBossEelCollisionFv
behaveToMario__17TBossEelCollisionFv: # 0x800d5b50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    addi    r3, sp, 0x68
    stw     r30, 0x78(sp)
    lfs     f1, -0x5e40(rtoc)
    lfs     f0, -0x7df0(r13)
    stfs    f1, 0x68(sp)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x70(sp)
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x70(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
    lwz     r30, 0x7c(r31)
    cmplwi  r30, 0x0
    beq-    branch_0x800d5d60
    lbz     r0, 0x1c8(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800d5bd8
    li      r0, 0x1
    b       branch_0x800d5c64

branch_0x800d5bd8:
    lwz     r4, 0x74(r30)
    addi    r3, sp, 0x50
    lwz     r5, MarioHitActorPos(r13)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x1a0(r30)
    lwz     r7, 0x58(r4)
    lwz     r4, 0x0(r5)
    mulli   r6, r0, 0x30
    lwz     r0, 0x4(r5)
    stw     r4, 0x50(sp)
    add     r4, r7, r6
    stw     r0, 0x54(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0xc(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x1c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x2c(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f2, 0x1d4(r30)
    lfs     f0, 0x1d8(r30)
    fmuls   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d5c60
    li      r0, 0x1
    b       branch_0x800d5c64

branch_0x800d5c60:
    li      r0, 0x0
branch_0x800d5c64:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d5d60
    lbz     r0, -0x6934(r13)
    lwz     r31, 0x7c(r31)
    extsb.  r0, r0
    bne-    branch_0x800d5cb4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6930(r13)
    subi    r0, r3, 0x7264
    lis     r4, 0x800d
    stw     r0, -0x6930(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fbc
    addi    r4, r4, 0xbf4
    subi    r3, r13, 0x6930
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6934(r13)
branch_0x800d5cb4:
    lwz     r3, 0x8c(r31)
    subi    r30, r13, 0x6930
    lwz     r0, 0x14(r3)
    cmplw   r0, r30
    beq-    branch_0x800d5d60
    lbz     r0, -0x6934(r13)
    extsb.  r0, r0
    bne-    branch_0x800d5d08
    subi    r3, r13, 0x6930
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x7264
    lis     r4, 0x800d
    stw     r0, -0x6930(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1fbc
    addi    r4, r4, 0xbf4
    addi    r3, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6934(r13)
branch_0x800d5d08:
    subi    r6, r13, 0x6930
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800d5d60
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800d5d54
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800d5d54
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800d5d54:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800d5d60:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl initCollision__17TBossEelCollisionFv
initCollision__17TBossEelCollisionFv: # 0x800d5d78
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x23
    li      r5, 0x5
    stwu    sp, -0x8(sp)
    lis     r6, 0x8000
    lfs     f1, 0x6c(r3)
    lfs     f2, 0x70(r3)
    lfs     f3, 0x74(r3)
    lfs     f4, 0x78(r3)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__17TBossEelCollisionFUlPQ26JDrama9TGraphics
perform__17TBossEelCollisionFUlPQ26JDrama9TGraphics: # 0x800d5db8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x800d5e44
    mr      r3, r27
    bl      calcEntryRadius__9THitActorFv
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800d5e38

branch_0x800d5df0:
    lwz     r3, 0x44(r27)
    lwzx    r3, r3, r31
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d5e10
    li      r0, 0x1
    b       branch_0x800d5e14

branch_0x800d5e10:
    li      r0, 0x0
branch_0x800d5e14:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d5e30
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
branch_0x800d5e30:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800d5e38:
    lhz     r0, 0x48(r27)
    cmpw    r30, r0
    blt+    branch_0x800d5df0
branch_0x800d5e44:
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x800d5e70
    lwz     r3, 0x68(r27)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r27)
    lwz     r3, 0x68(r27)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x14(r27)
    lwz     r3, 0x68(r27)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x18(r27)
branch_0x800d5e70:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl __dt__27TNerveBEelTearsMarioRecoverFv
__dt__27TNerveBEelTearsMarioRecoverFv: # 0x800d5e94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d5ed8
    lis     r3, 0x803c
    subi    r0, r3, 0x6a54
    stw     r0, 0x0(r31)
    beq-    branch_0x800d5ec8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d5ec8:
    extsh.  r0, r4
    ble-    branch_0x800d5ed8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d5ed8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__8TBossEelFPCc
__ct__8TBossEelFPCc: # 0x800d5ef0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    lwz     r4, 0x8(sp)
    subi    r3, r3, 0x71e4
    stw     r3, 0x0(r4)
    addi    r0, r3, 0x24
    li      r30, 0x0
    stw     r0, 0x20(r4)
    li      r31, 0x1
    li      r3, 0x8
    stw     r30, 0x1a8(r4)
    stw     r30, 0x1ac(r4)
    stw     r30, 0x1b0(r4)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r4)
    stw     r30, 0x1c0(r4)
    stw     r30, 0x1c4(r4)
    lfs     f0, -0x5dc0(rtoc)
    stfs    f0, 0x1cc(r4)
    stb     r31, 0x1d0(r4)
    lfs     f0, -0x5da8(rtoc)
    stfs    f0, 0x1d4(r4)
    lfs     f0, -0x5da4(rtoc)
    stfs    f0, 0x1d8(r4)
    stw     r30, 0x1e8(r4)
    stb     r30, 0x1f0(r4)
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x1f4(r4)
    stb     r30, 0x1fc(r4)
    stb     r30, 0x1fd(r4)
    stb     r30, 0x1fe(r4)
    stw     r30, 0x200(r4)
    stw     r30, 0x210(r4)
    stw     r30, 0x214(r4)
    stw     r30, 0x218(r4)
    stb     r30, 0x21c(r4)
    stb     r31, 0x21d(r4)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x800d5fb4
    stw     r30, 0x0(r3)
    stw     r31, 0x4(r3)
branch_0x800d5fb4:
    lwz     r4, 0x8(sp)
    stw     r3, 0x1ec(r4)
    mr      r3, r4
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl generate__17TBossEelHeartCoinFRQ29JGeometry8TVec3_f_
generate__17TBossEelHeartCoinFRQ29JGeometry8TVec3_f_: # 0x800d5fd8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    li      r31, 0x0
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    li      r29, 0x0
    stw     r28, 0x38(sp)
    mr      r28, r3
    lfs     f2, 0x8(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x70(r3)
    stfs    f1, 0x74(r3)
    stfs    f2, 0x78(r3)
    stb     r0, 0x1c(r3)
branch_0x800d6020:
    addi    r30, r31, 0x20
    add     r30, r28, r30
    lwz     r3, 0x0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r30)
    addi    r29, r29, 0x1
    cmpwi   r29, 0x14
    lwz     r0, 0xf8(r3)
    addi    r31, r31, 0x4
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r3)
    lwz     r4, 0x18(r28)
    lwz     r3, 0x0(r30)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    blt+    branch_0x800d6020
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl perform__17TBossEelHeartCoinFUlPQ26JDrama9TGraphics
perform__17TBossEelHeartCoinFUlPQ26JDrama9TGraphics: # 0x800d60a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stfd    f29, 0xf8(sp)
    stmw    r27, 0xe4(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lbz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800d62e4
    rlwinm. r31, r29, 0, 30, 30
    beq-    branch_0x800d6198
    lwz     r3, 0x7c(r28)
    subi    r4, rtoc, 0x5e58
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0x7c(r28)
    mulli   r0, r3, 0x30
    lwz     r3, 0x74(r4)
    li      r4, 0x3
    lwz     r5, 0x4(r3)
    lwz     r5, 0x58(r5)
    add     r27, r5, r0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d615c
    lwz     r3, 0x7c(r28)
    li      r4, 0x0
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5da0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d615c
    lfs     f2, 0x2c(r27)
    lfs     f1, 0x1c(r27)
    lfs     f0, 0xc(r27)
    stfs    f0, 0x70(r28)
    stfs    f1, 0x74(r28)
    stfs    f2, 0x78(r28)
branch_0x800d615c:
    lfs     f0, 0x1c(r27)
    addi    r3, sp, 0xac
    stfs    f0, 0x74(r28)
    lfs     f29, 0x78(r28)
    lfs     f30, 0x74(r28)
    lfs     f31, 0x70(r28)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0xb8(sp)
    addi    r3, sp, 0xac
    stfs    f30, 0xc8(sp)
    stfs    f29, 0xd8(sp)
    lwz     r4, 0x18(r28)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x800d6198:
    lwz     r3, 0x18(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    cmplwi  r31, 0x0
    beq-    branch_0x800d62e4
    li      r0, 0x4
    mtctr   r0
    li      r8, 0x0
    li      r3, 0x0
branch_0x800d61c0:
    lwz     r7, 0x18(r28)
    addi    r6, r8, 0x2
    mulli   r5, r6, 0x30
    lwz     r7, 0x4(r7)
    lwz     r7, 0x58(r7)
    addi    r0, r3, 0x20
    lwzx    r4, r28, r0
    addi    r6, r8, 0x3
    add     r7, r7, r5
    lfs     f2, 0x2c(r7)
    mulli   r5, r6, 0x30
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    addi    r0, r3, 0x24
    stfsu   f0, 0x10(r4)
    addi    r6, r8, 0x4
    stfs    f1, 0x4(r4)
    stfs    f2, 0x8(r4)
    lwz     r7, 0x18(r28)
    lwzx    r4, r28, r0
    addi    r0, r3, 0x28
    lwz     r7, 0x4(r7)
    lwz     r7, 0x58(r7)
    add     r7, r7, r5
    lfs     f2, 0x2c(r7)
    mulli   r5, r6, 0x30
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    addi    r6, r8, 0x5
    stfsu   f0, 0x10(r4)
    stfs    f1, 0x4(r4)
    stfs    f2, 0x8(r4)
    lwz     r7, 0x18(r28)
    lwzx    r4, r28, r0
    addi    r0, r3, 0x2c
    lwz     r7, 0x4(r7)
    lwz     r7, 0x58(r7)
    add     r7, r7, r5
    lfs     f2, 0x2c(r7)
    mulli   r5, r6, 0x30
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    addi    r6, r8, 0x6
    stfsu   f0, 0x10(r4)
    addi    r8, r8, 0x5
    stfs    f1, 0x4(r4)
    stfs    f2, 0x8(r4)
    lwz     r7, 0x18(r28)
    lwzx    r4, r28, r0
    addi    r0, r3, 0x30
    lwz     r7, 0x4(r7)
    addi    r3, r3, 0x14
    lwz     r7, 0x58(r7)
    add     r7, r7, r5
    lfs     f2, 0x2c(r7)
    mulli   r5, r6, 0x30
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    stfsu   f0, 0x10(r4)
    stfs    f1, 0x4(r4)
    stfs    f2, 0x8(r4)
    lwz     r7, 0x18(r28)
    lwzx    r4, r28, r0
    lwz     r7, 0x4(r7)
    lwz     r7, 0x58(r7)
    add     r7, r7, r5
    lfs     f2, 0x2c(r7)
    lfs     f1, 0x1c(r7)
    lfs     f0, 0xc(r7)
    stfsu   f0, 0x10(r4)
    stfs    f1, 0x4(r4)
    stfs    f2, 0x8(r4)
    bdnz+      branch_0x800d61c0
branch_0x800d62e4:
    lmw     r27, 0xe4(sp)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lfd     f29, 0xf8(sp)
    addi    sp, sp, 0x110
    blr


.globl perform__11TBossEelEyeFUlPQ26JDrama9TGraphics
perform__11TBossEelEyeFUlPQ26JDrama9TGraphics: # 0x800d6304
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x9c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x98(sp)
    lwz     r3, 0x10(r3)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 29
    bne-    branch_0x800d658c
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800d6574
    mr      r3, r31
    bl      getConnectedMtx__12TSharedPartsCFv
    lfs     f30, 0x2c(r3)
    mr      r3, r31
    bl      getConnectedMtx__12TSharedPartsCFv
    lfs     f31, 0x1c(r3)
    mr      r3, r31
    bl      getConnectedMtx__12TSharedPartsCFv
    lfs     f0, 0xc(r3)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x70
    stfs    f0, 0x70(r31)
    li      r4, 0x192
    li      r6, 0x1
    stfs    f31, 0x74(r31)
    stfs    f30, 0x78(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d63d0
    lwz     r4, 0x10(r31)
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
branch_0x800d63d0:
    mr      r3, r31
    bl      getConnectedMtx__12TSharedPartsCFv
    addi    r4, sp, 0x68
    bl      PSMTXCopy
    lwz     r4, 0x18(r31)
    addi    r28, sp, 0x68
    addi    r3, r28, 0x0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800d6410
    addi    r4, r31, 0x1c
    addi    r3, r28, 0x0
    bl      PSMTXCopy
branch_0x800d6410:
    lfs     f2, 0x64(r31)
    lfs     f1, -0x5de4(rtoc)
    lfs     f0, -0x5e48(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d6430
    fmr     f1, f0
    b       branch_0x800d6440

branch_0x800d6430:
    lfs     f0, -0x5e40(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d6440
    fmr     f1, f0
branch_0x800d6440:
    stfs    f1, 0x64(r31)
    lwz     r3, 0x18(r31)
    lfs     f1, 0x64(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d645c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d645c:
    lwz     r0, 0x5c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800d6574
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800d6574
    lwz     r3, 0x6c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x6c(r31)
    lwz     r0, 0x6c(r31)
    cmpwi   r0, 0x3
    ble-    branch_0x800d6574
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r31)
    li      r4, 0x0
    stw     r4, 0x5c(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r31)
    lwz     r5, 0x18(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d64cc
    b       branch_0x800d64d0

branch_0x800d64cc:
    lwz     r4, 0x24(r3)
branch_0x800d64d0:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d64e0
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d64e0:
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r31)
    lfs     f1, 0x64(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d6504
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d6504:
    lwz     r28, 0x68(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r28)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r28)
    li      r4, 0x0
    stw     r4, 0x5c(r28)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r28)
    lwz     r5, 0x18(r28)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d653c
    b       branch_0x800d6540

branch_0x800d653c:
    lwz     r4, 0x24(r3)
branch_0x800d6540:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d6550
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d6550:
    lwz     r3, 0x18(r28)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r28)
    lfs     f1, 0x64(r28)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d6574
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d6574:
    lwz     r3, 0x18(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    li      r0, -0x1
    stw     r0, 0x50(r31)
branch_0x800d658c:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xb8
    blr


.globl __ct__11TBossEelEyeFPC10TLiveActoriP12SDLModelDataUlPCc
__ct__11TBossEelEyeFPC10TLiveActoriP12SDLModelDataUlPCc: # 0x800d65b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r7
    stw     r30, 0x58(sp)
    mr      r30, r6
    stw     r29, 0x54(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
    lis     r3, 0x803c
    lwz     r6, 0x8(sp)
    subi    r0, r3, 0x6d50
    stw     r0, 0x0(r6)
    li      r5, 0x0
    li      r4, -0x1
    stw     r5, 0x4c(r6)
    li      r0, 0x32
    li      r3, 0xac
    stw     r4, 0x50(r6)
    sth     r5, 0x54(r6)
    sth     r5, 0x56(r6)
    sth     r5, 0x58(r6)
    sth     r0, 0x5a(r6)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800d6638
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x800d6638:
    lwz     r31, 0x8(sp)
    subi    r4, rtoc, 0x5d9c
    stw     r29, 0x4c(r31)
    lwz     r3, 0x4c(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r3, 0x18(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d6668
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x800d6668:
    lwz     r31, 0x8(sp)
    li      r4, 0x0
    lwz     r3, 0x18(r31)
    bl      getCurAnmIdx__6MActorCFi
    stw     r3, 0x60(r31)
    li      r4, 0x0
    stw     r4, 0x5c(r31)
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x64(r31)
    lwz     r5, 0x18(r31)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800d66a0
    b       branch_0x800d66a4

branch_0x800d66a0:
    lwz     r4, 0x24(r3)
branch_0x800d66a4:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800d66b4
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800d66b4:
    lwz     r31, 0x8(sp)
    li      r4, 0x0
    lwz     r3, 0x18(r31)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x18(r31)
    lfs     f1, 0x64(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d66dc
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800d66dc:
    lwz     r0, 0x64(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl reset__14TBossEelVortexFv
reset__14TBossEelVortexFv: # 0x800d66fc
    lwz     r4, 0x64(r3)
    li      r0, 0x0
    clrrwi  r4, r4, 1
    stw     r4, 0x64(r3)
    lwz     r4, 0x64(r3)
    oris    r4, r4, 0x8000
    stw     r4, 0x64(r3)
    stw     r0, 0x70(r3)
    blr


.globl perform__14TBossEelVortexFUlPQ26JDrama9TGraphics
perform__14TBossEelVortexFUlPQ26JDrama9TGraphics: # 0x800d6720
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1b0(sp)
    stfd    f31, 0x1a8(sp)
    stfd    f30, 0x1a0(sp)
    stfd    f29, 0x198(sp)
    stfd    f28, 0x190(sp)
    stfd    f27, 0x188(sp)
    stfd    f26, 0x180(sp)
    stfd    f25, 0x178(sp)
    stmw    r26, 0x160(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d6a40
    clrlwi. r0, r29, 31
    beq-    branch_0x800d69b4
    lwz     r4, 0x68(r28)
    mr      r3, r28
    lwz     r5, 0x1e8(r4)
    lfs     f4, 0x24(r4)
    lfs     f0, 0x1f8(r5)
    lfs     f1, 0x20c(r5)
    fmuls   f3, f0, f4
    lfs     f0, 0x234(r5)
    lfs     f5, 0x220(r5)
    fmuls   f2, f1, f4
    fmuls   f0, f0, f4
    stfs    f3, 0x50(r28)
    fmuls   f1, f5, f4
    stfs    f2, 0x54(r28)
    stfs    f1, 0x58(r28)
    stfs    f0, 0x5c(r28)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x70(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x70(r28)
    lwz     r0, 0x70(r28)
    cmpwi   r0, 0x1e
    ble-    branch_0x800d69b4
    lwz     r3, 0x68(r28)
    li      r4, 0xe
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d67f8
    lwz     r3, 0x68(r28)
    li      r4, 0x11
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d69a8
branch_0x800d67f8:
    lfs     f26, -0x5d94(rtoc)
    li      r31, 0x0
    lfs     f27, -0x5d90(rtoc)
    li      r27, 0x0
    lfd     f28, -0x5e28(rtoc)
    lfs     f29, -0x5e48(rtoc)
    lis     r26, 0x4330
    lfs     f30, -0x5d8c(rtoc)
    lfs     f31, -0x5e0c(rtoc)
    b       branch_0x800d6998

branch_0x800d6820:
    lwz     r3, 0x44(r28)
    lwzx    r3, r3, r27
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d6840
    li      r0, 0x1
    b       branch_0x800d6844

branch_0x800d6840:
    li      r0, 0x0
branch_0x800d6844:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d6990
    lwz     r6, 0x68(r28)
    addi    r3, sp, 0x138
    lwz     r5, MarioHitActorPos(r13)
    mr      r4, r3
    lfs     f1, 0x10(r6)
    lfs     f0, 0x0(r5)
    lfs     f3, 0x14(r6)
    lfs     f2, 0x4(r5)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r6)
    lfs     f1, 0x8(r5)
    fsubs   f2, f3, f2
    stfs    f0, 0x138(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x13c(sp)
    stfs    f0, 0x140(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r0, 0x70(r28)
    lwz     r4, 0x68(r28)
    xoris   r3, r0, 0x8000
    lwz     r0, -0x5eac(r13)
    stw     r3, 0x15c(sp)
    lwz     r3, 0x1e8(r4)
    stw     r26, 0x158(sp)
    lfs     f25, 0x2c0(r3)
    lfd     f0, 0x158(sp)
    lwz     r4, -0x5ea8(r13)
    fsubs   f0, f0, f28
    fmuls   f0, f27, f0
    fmuls   f0, f26, f0
    fctiwz  f0, f0
    stfd    f0, 0x150(sp)
    lwz     r3, 0x154(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fabs    f0, f0
    fcmpo   cr0, f0, f29
    ble-    branch_0x800d68f4
    fmr     f0, f29
    b       branch_0x800d6900

branch_0x800d68f4:
    fcmpo   cr0, f0, f30
    bge-    branch_0x800d6900
    fmr     f0, f30
branch_0x800d6900:
    fmuls   f25, f25, f0
    lwz     r3, -0x60f0(r13)
    addi    r5, r28, 0x10
    li      r4, 0x8
    bl      start__9RumbleMgrFiP3Vec
    lwz     r3, 0x68(r28)
    li      r4, 0x11
    lwz     r3, 0x74(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d6930
    fmuls   f25, f25, f31
branch_0x800d6930:
    lfs     f0, 0x138(sp)
    addi    r3, sp, 0x138
    fmuls   f0, f0, f25
    stfs    f0, 0x138(sp)
    lfs     f0, 0x13c(sp)
    fmuls   f0, f0, f25
    stfs    f0, 0x13c(sp)
    lfs     f0, 0x140(sp)
    fmuls   f0, f0, f25
    stfs    f0, 0x140(sp)
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, 0x138(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x138(sp)
    lfs     f1, 0x13c(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x13c(sp)
    lfs     f1, 0x140(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x140(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
branch_0x800d6990:
    addi    r31, r31, 0x1
    addi    r27, r27, 0x4
branch_0x800d6998:
    lhz     r0, 0x48(r28)
    cmpw    r31, r0
    blt+    branch_0x800d6820
    b       branch_0x800d69b4

branch_0x800d69a8:
    lwz     r0, 0x64(r28)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r28)
branch_0x800d69b4:
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x800d6a30
    lwz     r4, 0x68(r28)
    lwz     r3, 0x74(r4)
    lhz     r0, 0x1a4(r4)
    lwz     r4, 0x4(r3)
    mulli   r3, r0, 0x30
    lwz     r4, 0x58(r4)
    addi    r0, r3, 0xc
    lfsx    f0, r4, r0
    stfs    f0, 0x10(r28)
    lwz     r4, 0x68(r28)
    lfs     f1, -0x5de8(rtoc)
    lwz     r3, 0x74(r4)
    lhz     r0, 0x1a4(r4)
    lwz     r4, 0x4(r3)
    mulli   r3, r0, 0x30
    lwz     r4, 0x58(r4)
    addi    r0, r3, 0x1c
    lfsx    f0, r4, r0
    fadds   f0, f1, f0
    stfs    f0, 0x14(r28)
    lwz     r4, 0x68(r28)
    lwz     r3, 0x74(r4)
    lhz     r0, 0x1a4(r4)
    lwz     r4, 0x4(r3)
    mulli   r3, r0, 0x30
    lwz     r4, 0x58(r4)
    addi    r0, r3, 0x2c
    lfsx    f0, r4, r0
    stfs    f0, 0x18(r28)
branch_0x800d6a30:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
branch_0x800d6a40:
    lmw     r26, 0x160(sp)
    lwz     r0, 0x1b4(sp)
    lfd     f31, 0x1a8(sp)
    lfd     f30, 0x1a0(sp)
    mtlr    r0
    lfd     f29, 0x198(sp)
    lfd     f28, 0x190(sp)
    lfd     f27, 0x188(sp)
    lfd     f26, 0x180(sp)
    lfd     f25, 0x178(sp)
    addi    sp, sp, 0x1b0
    blr


.globl perform__13TBossEelToothFUlPQ26JDrama9TGraphics
perform__13TBossEelToothFUlPQ26JDrama9TGraphics: # 0x800d6a70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1e8(sp)
    stfd    f31, 0x1e0(sp)
    stmw    r21, 0x1b4(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r6, 0x6c(r3)
    lwz     r0, 0xf0(r6)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800d7068
    lwz     r0, 0x70(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800d6ab0
    b       branch_0x800d7068

branch_0x800d6ab0:
    clrlwi. r0, r31, 31
    beq-    branch_0x800d6e0c
    lwz     r5, 0x1e8(r6)
    mr      r3, r30
    lfs     f4, 0x24(r6)
    lfs     f0, 0x130(r5)
    lfs     f1, 0x144(r5)
    fmuls   f3, f0, f4
    lfs     f0, 0x16c(r5)
    lfs     f5, 0x158(r5)
    fmuls   f2, f1, f4
    fmuls   f0, f0, f4
    stfs    f3, 0x50(r30)
    fmuls   f1, f5, f4
    stfs    f2, 0x54(r30)
    stfs    f1, 0x58(r30)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    lis     r6, 0x803b
    lis     r5, 0x803c
    lis     r4, 0x800d
    lis     r3, 0x803f
    subi    r25, r6, 0x48f4
    subi    r28, r5, 0x7264
    addi    r27, r4, 0xbf4
    addi    r26, r3, 0x1fbc
    li      r24, 0x0
    li      r22, 0x0
    b       branch_0x800d6bc8

branch_0x800d6b24:
    lbz     r0, -0x6934(r13)
    lwz     r3, 0x44(r30)
    extsb.  r0, r0
    lwz     r21, 0x6c(r30)
    lwzx    r23, r3, r22
    bne-    branch_0x800d6b5c
    stw     r25, -0x6930(r13)
    subi    r3, r13, 0x6930
    addi    r4, r27, 0x0
    stw     r28, -0x6930(r13)
    addi    r5, r26, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6934(r13)
branch_0x800d6b5c:
    lwz     r3, 0x8c(r21)
    subi    r0, r13, 0x6930
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d6b78
    li      r0, 0x0
    b       branch_0x800d6b7c

branch_0x800d6b78:
    li      r0, 0x1
branch_0x800d6b7c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d6bc0
    lwz     r3, 0x4c(r23)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d6b9c
    li      r0, 0x1
    b       branch_0x800d6ba0

branch_0x800d6b9c:
    li      r0, 0x0
branch_0x800d6ba0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d6bc0
    lwz     r0, 0x70(r30)
    cmpwi   r0, 0x1
    ble-    branch_0x800d6bc0
    addi    r3, r30, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800d6bc0:
    addi    r24, r24, 0x1
    addi    r22, r22, 0x4
branch_0x800d6bc8:
    lhz     r0, 0x48(r30)
    cmpw    r24, r0
    blt+    branch_0x800d6b24
    lwz     r3, 0x84(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x800d6bec
    subi    r0, r3, 0x1
    stw     r0, 0x84(r30)
    b       branch_0x800d6e0c

branch_0x800d6bec:
    lwz     r3, 0x68(r30)
    li      r4, 0x16
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d6c34
    lwz     r3, 0x68(r30)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800d6c34
    lwz     r3, 0x68(r30)
    li      r4, 0x0
    lfs     f1, -0x5e40(rtoc)
    lwz     r3, 0x18(r3)
    bl      setFrameRate__6MActorFfi
branch_0x800d6c34:
    lwz     r0, 0x70(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800d6e0c
    lbz     r0, 0x74(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x800d6da0
    lwz     r3, 0x68(r30)
    li      r4, 0x16
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d6d5c
    lwz     r3, 0x68(r30)
    li      r4, 0x14
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lfs     f2, 0x7c(r30)
    lis     r3, 0x8038
    lfs     f1, 0xa4(r30)
    addi    r5, r3, 0xf0
    lfs     f3, 0xb4(r30)
    lfs     f0, 0x94(r30)
    fadds   f1, f2, f1
    lwz     r3, -0x70b0(r13)
    addi    r4, sp, 0x19c
    stfs    f0, 0x19c(sp)
    li      r6, 0x0
    stfs    f1, 0x1a0(sp)
    stfs    f3, 0x1a4(sp)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r26, r3
    beq-    branch_0x800d6d44
    lwz     r3, 0x16c(r26)
    li      r27, 0x0
    li      r28, 0x1
    stb     r27, 0x81(r3)
    lwz     r3, 0x16c(r26)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x16c(r26)
    stb     r28, 0x80(r3)
    lwz     r4, 0x16c(r26)
    lwz     r3, 0x10(r26)
    lwz     r0, 0x14(r26)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r26)
    stw     r0, 0x18(r4)
    lwz     r4, 0x16c(r26)
    lwz     r3, 0x10(r26)
    lwz     r0, 0x14(r26)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r26)
    stw     r0, 0x18(r4)
    bl      theNerve__27TNerveBEelTearsMarioRecoverFv
    lwz     r4, 0x8c(r26)
    stw     r27, 0x8(r4)
    stw     r27, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r27, 0x1c(r4)
    lwz     r0, 0xf0(r26)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r26)
    lwz     r3, 0x16c(r26)
    stb     r28, 0x81(r3)
branch_0x800d6d44:
    lwz     r3, 0x68(r30)
    lwz     r21, 0x18(r3)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r21, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800d6d5c:
    lwz     r3, 0x68(r30)
    li      r4, 0x14
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d6da0
    lwz     r3, 0x68(r30)
    li      r4, 0x0
    li      r5, 0x0
    lwz     r3, 0x18(r3)
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800d6da0
    lwz     r3, 0x68(r30)
    li      r4, 0x15
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
branch_0x800d6da0:
    lwz     r3, 0x6c(r30)
    lbz     r0, 0x74(r30)
    lwz     r3, 0x1e8(r3)
    cmplwi  r0, 0x1
    lfs     f1, 0x1a8(r3)
    bne-    branch_0x800d6e0c
    lfs     f0, 0x7c(r30)
    fadds   f0, f0, f1
    stfs    f0, 0x7c(r30)
    lwz     r3, 0x6c(r30)
    lfs     f1, 0x7c(r30)
    lwz     r3, 0x1e8(r3)
    lfs     f0, 0x1bc(r3)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x800d6df8
    lwz     r3, MarioHitActorPos(r13)
    lfs     f1, -0x5db4(rtoc)
    lfs     f0, 0x4(r3)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800d6e0c
branch_0x800d6df8:
    li      r0, 0x0
    stw     r0, 0x70(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
branch_0x800d6e0c:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x800d7044
    lwz     r0, 0x70(r30)
    cmpwi   r0, 0x1
    bgt-    branch_0x800d6e34
    lbz     r0, 0x74(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800d6e34
    cmplwi  r0, 0x2
    bne-    branch_0x800d6e48
branch_0x800d6e34:
    lwz     r3, 0x68(r30)
    bl      getConnectedMtx__12TSharedPartsCFv
    addi    r4, sp, 0x168
    bl      PSMTXCopy
    b       branch_0x800d6e54

branch_0x800d6e48:
    addi    r3, r30, 0x88
    addi    r4, sp, 0x168
    bl      PSMTXCopy
branch_0x800d6e54:
    lwz     r0, 0x70(r30)
    cmpwi   r0, 0x1
    ble-    branch_0x800d6eb4
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x19c
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d6eb4
    lwz     r4, 0x6c(r30)
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
branch_0x800d6eb4:
    lwz     r3, 0x68(r30)
    li      r4, 0x16
    lwz     r3, 0x18(r3)
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d6f40
    lwz     r3, 0x68(r30)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0xc(r3)
    lfs     f0, -0x5e40(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800d6f40
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x19a
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d6f40
    lwz     r4, 0x6c(r30)
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
branch_0x800d6f40:
    lbz     r0, 0x74(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800d6f54
    cmplwi  r0, 0x2
    bne-    branch_0x800d6fb4
branch_0x800d6f54:
    lwz     r0, 0x70(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x800d6fb4
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x10
    li      r4, 0x19b
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d6fb4
    lwz     r4, 0x6c(r30)
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
branch_0x800d6fb4:
    lfs     f31, 0x78(r30)
    addi    r3, sp, 0x138
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    lfs     f0, -0x5e40(rtoc)
    addi    r3, sp, 0x168
    addi    r5, r3, 0x0
    stfs    f0, 0x144(sp)
    addi    r4, sp, 0x138
    stfs    f0, 0x154(sp)
    stfs    f31, 0x164(sp)
    bl      PSMTXConcat
    lfs     f1, 0x80(r30)
    addi    r3, sp, 0x138
    lfs     f3, -0x5e40(rtoc)
    fmr     f2, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r3, sp, 0x168
    addi    r5, r3, 0x0
    addi    r4, sp, 0x138
    bl      PSMTXConcat
    lfs     f1, 0x184(sp)
    addi    r3, sp, 0x168
    lfs     f0, 0x7c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x184(sp)
    lfs     f0, 0x174(sp)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x184(sp)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x194(sp)
    stfs    f0, 0x18(r30)
    lwz     r4, 0x68(r30)
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x800d7044:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r3, 0x68(r30)
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    lwz     r3, 0x18(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800d7068:
    lmw     r21, 0x1b4(sp)
    lwz     r0, 0x1ec(sp)
    lfd     f31, 0x1e0(sp)
    addi    sp, sp, 0x1e8
    mtlr    r0
    blr


.globl receiveMessage__13TBossEelToothFP9THitActorUl
receiveMessage__13TBossEelToothFP9THitActorUl: # 0x800d7080
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    stw     r30, 0x80(sp)
    bne-    branch_0x800d739c
    lwz     r0, 0x84(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800d7398
    lwz     r3, 0x6c(r31)
    lbz     r0, 0x1fd(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7398
    lwz     r0, 0x70(r31)
    cmpwi   r0, 0x1
    ble-    branch_0x800d7398
    li      r0, 0x2
    stw     r0, 0x84(r31)
    lwz     r3, 0x70(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x70(r31)
    lwz     r3, 0x68(r31)
    lwz     r30, 0x18(r3)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x6c(r31)
    li      r0, 0x1
    lis     r4, 0x4330
    stb     r0, 0x1fc(r3)
    lwz     r3, 0x6c(r31)
    lwz     r0, 0x70(r31)
    lwz     r3, 0x1e8(r3)
    mulli   r5, r0, 0xff
    lfd     f2, -0x5e28(rtoc)
    lwz     r0, 0x1d0(r3)
    xoris   r3, r5, 0x8000
    xoris   r0, r0, 0x8000
    stw     r3, 0x7c(sp)
    stw     r0, 0x74(sp)
    stw     r4, 0x78(sp)
    stw     r4, 0x70(sp)
    lfd     f1, 0x78(sp)
    lfd     f0, 0x70(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stb     r0, 0xbb(r31)
    lbz     r0, 0x74(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x800d71a0
    lis     r3, 0x6666
    lwz     r4, 0x70(r31)
    addi    r0, r3, 0x6667
    mulhw   r0, r0, r4
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x14
    subf    r0, r0, r4
    cmpwi   r0, 0x1
    bne-    branch_0x800d71a0
    lwz     r3, 0x6c(r31)
    lbz     r4, 0xbc(r31)
    bl      forceShedTears__8TBossEelFb
branch_0x800d71a0:
    lwz     r0, 0x70(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800d7398
    li      r0, 0x0
    stb     r0, 0xbb(r31)
    addi    r30, r31, 0x88
    lwz     r3, 0x68(r31)
    bl      getConnectedMtx__12TSharedPartsCFv
    mr      r4, r30
    bl      PSMTXCopy
    lbz     r0, 0x74(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x800d72e8
    lwz     r3, gpMSound(r13)
    li      r4, 0x2987
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d7204
    addi    r4, r31, 0x10
    li      r3, 0x2987
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d7204:
    lbz     r0, 0xbc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d724c
    lwz     r5, 0x6c(r31)
    li      r4, 0x2989
    lwz     r3, gpMSound(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d7284
    addi    r4, r30, 0x0
    li      r3, 0x2989
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800d7284

branch_0x800d724c:
    lwz     r5, 0x6c(r31)
    li      r4, 0x298a
    lwz     r3, gpMSound(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d7284
    addi    r4, r30, 0x0
    li      r3, 0x298a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d7284:
    lwz     r3, 0x6c(r31)
    li      r0, 0x1
    addi    r5, r31, 0x10
    stb     r0, 0x1fd(r3)
    li      r4, 0xd3
    li      r6, 0x0
    lwz     r3, gpMarioParticleManager(r13)
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d7398
    lwz     r4, 0x6c(r31)
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
    b       branch_0x800d7398

branch_0x800d72e8:
    lwz     r3, gpMSound(r13)
    li      r4, 0x2988
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d7318
    addi    r4, r31, 0x10
    li      r3, 0x2988
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d7318:
    lbz     r0, 0xbc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d7360
    lwz     r5, 0x6c(r31)
    li      r4, 0x298b
    lwz     r3, gpMSound(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d7398
    addi    r4, r30, 0x0
    li      r3, 0x298b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800d7398

branch_0x800d7360:
    lwz     r5, 0x6c(r31)
    li      r4, 0x298c
    lwz     r3, gpMSound(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d7398
    addi    r4, r30, 0x0
    li      r3, 0x298c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d7398:
    li      r3, 0x1
branch_0x800d739c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl __ct__13TBossEelToothFUcP8TBossEelPCcP12SDLModelDataPCc
__ct__13TBossEelToothFUcP8TBossEelPCcP12SDLModelDataPCc: # 0x800d73b4
    mflr    r0
    lis     r9, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stmw    r26, 0xf8(sp)
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r28, r6, 0x0
    addi    r30, r7, 0x0
    addi    r4, r8, 0x0
    subi    r31, r9, 0x180
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    lwz     r29, 0x8(sp)
    subi    r3, r3, 0x6c84
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    li      r3, 0x0
    stw     r0, 0x20(r29)
    li      r0, 0x1
    addi    r4, r28, 0x0
    stw     r3, 0x68(r29)
    stw     r27, 0x6c(r29)
    stw     r3, 0x70(r29)
    stb     r26, 0x74(r29)
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x78(r29)
    stfs    f0, 0x7c(r29)
    stfs    f0, 0x80(r29)
    stw     r3, 0x84(r29)
    stb     r0, 0xbc(r29)
    lwz     r3, 0x6c(r29)
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r28, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800d7480
    lwz     r4, 0x6c(r29)
    addi    r3, r26, 0x0
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    addi    r8, r31, 0x41c
    li      r7, 0x0
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x800d7480:
    lwz     r30, 0x8(sp)
    li      r4, 0x1
    stw     r26, 0x68(r30)
    lwz     r3, 0x68(r30)
    lwz     r29, 0x18(r3)
    mr      r3, r29
    bl      setLightType__6MActorFi
    lwz     r3, 0x68(r30)
    li      r4, 0x16
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x68(r30)
    li      r4, 0x0
    lfs     f1, -0x5e40(rtoc)
    lwz     r3, 0x18(r3)
    bl      setFrameRate__6MActorFfi
    li      r28, 0x0
    b       branch_0x800d74e0

branch_0x800d74c8:
    lwz     r5, 0x8(sp)
    addi    r4, r28, 0x0
    addi    r6, r5, 0xb8
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColorAndFog__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    addi    r28, r28, 0x1
branch_0x800d74e0:
    lwz     r3, 0x4(r29)
    clrlwi  r5, r28, 16
    lwz     r4, 0x4(r3)
    lhz     r0, 0x24(r4)
    cmplw   r5, r0
    blt+    branch_0x800d74c8
    lwz     r30, 0x8(sp)
    li      r0, 0xff
    lis     r4, 0x800
    stb     r0, 0xbb(r30)
    mr      r3, r30
    addi    r4, r4, 0x22
    lwz     r6, 0x6c(r30)
    li      r5, 0x5
    lwz     r7, 0x1e8(r6)
    lis     r6, 0x8100
    lwz     r0, 0x1d0(r7)
    stw     r0, 0x70(r30)
    lwz     r7, 0x6c(r30)
    lwz     r9, 0x1e8(r7)
    lfs     f4, 0x16c(r9)
    lfs     f3, 0x158(r9)
    lfs     f2, 0x144(r9)
    lfs     f1, 0x130(r9)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x42c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x42c
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0x98
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x98(sp)
    addi    r3, sp, 0xb8
    addi    r4, sp, 0x94
    stw     r0, 0x94(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xb8(sp)
    addi    r5, sp, 0xa4
    addi    r4, r29, 0x0
    stw     r0, 0xb4(sp)
    addi    r3, sp, 0xa0
    addi    r6, sp, 0x8
    lwz     r0, 0xb4(sp)
    stw     r0, 0xa4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r0, 0x114(sp)
    lmw     r26, 0xf8(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl clipEnemies__15TBossEelManagerFPQ26JDrama9TGraphics
clipEnemies__15TBossEelManagerFPQ26JDrama9TGraphics: # 0x800d75dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f2, 0xbc(r3)
    lfs     f1, 0xa8(r3)
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createModelData__15TBossEelManagerFv
createModelData__15TBossEelManagerFv: # 0x800d7604
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x40
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__15TBossEelManagerFv
loadAfter__15TBossEelManagerFv: # 0x800d7638
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0xd3
    lbz     r0, 0xd3(r3)
    lis     r3, 0x8038
    subi    r31, r3, 0x180
    cmplwi  r0, 0x0
    bne-    branch_0x800d7684
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x444
    li      r5, 0xd3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7684:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xd4
    lbz     r0, 0xd4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d76b4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x46c
    li      r5, 0xd4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d76b4:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x192
    lbz     r0, 0x192(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d76e4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x494
    li      r5, 0x192
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d76e4:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x193
    lbz     r0, 0x193(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7714
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4bc
    li      r5, 0x193
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7714:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x194
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7744
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4e8
    li      r5, 0x194
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7744:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x195
    lbz     r0, 0x195(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7774
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x514
    li      r5, 0x195
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7774:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x196
    lbz     r0, 0x196(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d77a4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x53c
    li      r5, 0x196
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d77a4:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x197
    lbz     r0, 0x197(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d77d4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x568
    li      r5, 0x197
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d77d4:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x198
    lbz     r0, 0x198(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7804
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x590
    li      r5, 0x198
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7804:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x199
    lbz     r0, 0x199(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7834
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x5b8
    li      r5, 0x199
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7834:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x19a
    lbz     r0, 0x19a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7864
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x5e0
    li      r5, 0x19a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7864:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x19b
    lbz     r0, 0x19b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d7894
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x60c
    li      r5, 0x19b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d7894:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x19c
    lbz     r0, 0x19c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d78c4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x638
    li      r5, 0x19c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800d78c4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__18TBossEelSaveParamsFv
__ct__18TBossEelSaveParamsFv: # 0x800d78dc
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    subi    r30, r4, 0x180
    addi    r0, r30, 0x664
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r30, 0x678
    stw     r0, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x8
    addi    r6, r30, 0x678
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5e40(rtoc)
    addi    r3, r30, 0x68c
    stfs    f0, 0x18(r31)
    stw     r28, 0x8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c
    addi    r6, r30, 0x68c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c(r31)
    addi    r3, r30, 0x6a0
    lfs     f0, -0x5dc8(rtoc)
    stfs    f0, 0x2c(r31)
    stw     r28, 0x1c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x30
    addi    r6, r30, 0x6a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x30(r31)
    addi    r3, r30, 0x6b0
    lfs     f0, -0x5da4(rtoc)
    stfs    f0, 0x40(r31)
    stw     r28, 0x30(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x44
    addi    r6, r30, 0x6b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x44(r31)
    addi    r3, r30, 0x6c0
    lfs     f0, -0x5d88(rtoc)
    stfs    f0, 0x54(r31)
    stw     r28, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x58
    addi    r6, r30, 0x6c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x58(r31)
    addi    r3, r30, 0x6d4
    lfs     f0, -0x5d84(rtoc)
    stfs    f0, 0x68(r31)
    stw     r28, 0x58(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x6c
    addi    r6, r30, 0x6d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x6c(r31)
    addi    r3, r30, 0x6ec
    lfs     f0, -0x5dc8(rtoc)
    stfs    f0, 0x7c(r31)
    stw     r28, 0x6c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x80
    addi    r6, r30, 0x6ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x80(r31)
    addi    r3, r30, 0x700
    lfs     f0, -0x5d80(rtoc)
    stfs    f0, 0x90(r31)
    stw     r28, 0x80(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x94
    addi    r6, r30, 0x700
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x94(r31)
    addi    r3, r30, 0x714
    lfs     f0, -0x5d7c(rtoc)
    stfs    f0, 0xa4(r31)
    stw     r28, 0x94(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x714
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xa8(r31)
    addi    r3, r30, 0x728
    lfs     f0, -0x5d78(rtoc)
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x728
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x73c
    lfs     f0, -0x5d74(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x73c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x750
    lfs     f0, -0x5d70(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x750
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x764
    lfs     f0, -0x5d6c(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x764
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    addi    r3, r30, 0x778
    lfs     f0, -0x5d68(rtoc)
    stfs    f0, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x778
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x78c
    lfs     f0, -0x5d64(rtoc)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x78c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x7a4
    lfs     f0, -0x5dc0(rtoc)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x7a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x7bc
    lfs     f0, -0x5d60(rtoc)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x7bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x7d4
    lfs     f0, -0x5d5c(rtoc)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x7d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x7ec
    lfs     f0, -0x5dc4(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x7ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x7fc
    lfs     f0, -0x5de4(rtoc)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x7fc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x80c
    lfs     f0, -0x5e30(rtoc)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x80c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x81c
    lfs     f0, -0x5d58(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x81c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x830
    lfs     f0, -0x5db4(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x830
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x1c0(r31)
    li      r0, 0x32
    lis     r3, 0x803b
    stw     r0, 0x1d0(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x844
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x844
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    li      r0, 0x64
    addi    r3, r30, 0x854
    stw     r0, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x854
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x86c
    lfs     f0, -0x5dc0(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x86c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x884
    lfs     f0, -0x5d60(rtoc)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x884
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0x89c
    lfs     f0, -0x5d5c(rtoc)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0x89c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0x8b4
    lfs     f0, -0x5dc4(rtoc)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0x8b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x238(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x8c8
    stw     r0, 0x248(r31)
    stw     r26, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0x8c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0x8dc
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0x8dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0x8ec
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0x8ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x274(r31)
    li      r0, 0x1f4
    addi    r3, r30, 0x900
    stw     r0, 0x284(r31)
    stw     r26, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0x900
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x288(r31)
    li      r0, 0x7d0
    addi    r3, r30, 0x918
    stw     r0, 0x298(r31)
    stw     r26, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0x918
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x29c(r31)
    li      r0, 0xc8
    addi    r3, r30, 0x928
    stw     r0, 0x2ac(r31)
    stw     r26, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0x928
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2b0(r31)
    mr      r3, r31
    lfs     f0, -0x5e30(rtoc)
    stfs    f0, 0x2c0(r31)
    stw     r28, 0x2b0(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl execute__17TNerveOilBallStayCFP24TSpineBase_10TLiveActor_
execute__17TNerveOilBallStayCFP24TSpineBase_10TLiveActor_: # 0x800d7f50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r5, 0x0(r4)
    li      r4, 0x3
    lwz     r3, 0x74(r5)
    mr      r31, r5
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d7fa4
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d7fc4
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x800d7fc4
branch_0x800d7fa4:
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    addi    r4, r4, 0x10
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    li      r4, 0x1
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
branch_0x800d7fc4:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl theNerve__17TNerveOilBallStayFv
theNerve__17TNerveOilBallStayFv: # 0x800d7fdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6978(r13)
    extsb.  r0, r0
    bne-    branch_0x800d802c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6974(r13)
    subi    r0, r3, 0x6b8c
    lis     r4, 0x800e
    stw     r0, -0x6974(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f5c
    subi    r4, r4, 0x7fc0
    subi    r3, r13, 0x6974
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6978(r13)
branch_0x800d802c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6974
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveOilBallStayFv
__dt__17TNerveOilBallStayFv: # 0x800d8040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d8084
    lis     r3, 0x803c
    subi    r0, r3, 0x6b8c
    stw     r0, 0x0(r31)
    beq-    branch_0x800d8074
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d8074:
    extsh.  r0, r4
    ble-    branch_0x800d8084
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d8084:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__8TOilBallFv
calcRootMatrix__8TOilBallFv: # 0x800d809c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl moveObject__8TOilBallFv
moveObject__8TOilBallFv: # 0x800d80bc
    mflr    r0
    lis     r5, 0x4330
    stw     r0, 0x4(sp)
    lis     r6, 0x803f
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stmw    r21, 0xac(sp)
    mr      r22, r3
    addi    r24, r6, 0x1f20
    lwz     r7, 0x15c(r3)
    lfs     f4, 0x24(r3)
    mr      r3, r22
    lwz     r0, 0x130(r7)
    lwz     r4, 0x144(r7)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x5e28(rtoc)
    stw     r0, 0x8c(sp)
    xoris   r4, r4, 0x8000
    lwz     r0, 0x108(r7)
    stw     r4, 0xa4(sp)
    xoris   r4, r0, 0x8000
    lwz     r0, 0x11c(r7)
    stw     r5, 0x88(sp)
    xoris   r0, r0, 0x8000
    stw     r5, 0xa0(sp)
    lfd     f0, 0x88(sp)
    stw     r4, 0x9c(sp)
    lfd     f1, 0xa0(sp)
    fsubs   f0, f0, f3
    stw     r5, 0x98(sp)
    fsubs   f5, f1, f3
    fmuls   f1, f0, f4
    stw     r0, 0x94(sp)
    lfd     f2, 0x98(sp)
    stw     r5, 0x90(sp)
    fsubs   f6, f2, f3
    lfd     f2, 0x90(sp)
    fmuls   f0, f5, f4
    stfs    f1, 0x50(r22)
    fsubs   f2, f2, f3
    stfs    f0, 0x54(r22)
    fmuls   f1, f6, f4
    fmuls   f0, f2, f4
    stfs    f1, 0x58(r22)
    stfs    f0, 0x5c(r22)
    bl      calcEntryRadius__9THitActorFv
    lis     r5, 0x803b
    lfs     f30, -0x5e40(rtoc)
    lis     r4, 0x803c
    lfs     f31, -0x5e48(rtoc)
    lis     r3, 0x800e
    lfs     f29, -0x5d58(rtoc)
    lis     r7, 0x803c
    lis     r6, 0x800e
    lis     r9, 0x803c
    lis     r8, 0x800e
    subi    r29, r5, 0x48f4
    subi    r30, r4, 0x6a64
    subi    r31, r3, 0x7bd8
    subi    r27, r7, 0x6b8c
    subi    r28, r6, 0x7fc0
    subi    r25, r9, 0x6a34
    subi    r26, r8, 0x7b7c
    li      r23, 0x0
    li      r21, 0x0
    b       branch_0x800d83f4

branch_0x800d81cc:
    lwz     r3, 0x44(r22)
    lwzx    r4, r3, r21
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d81ec
    li      r0, 0x1
    b       branch_0x800d81f0

branch_0x800d81ec:
    li      r0, 0x0
branch_0x800d81f0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d830c
    lbz     r0, -0x6998(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8224
    stw     r29, -0x6994(r13)
    subi    r3, r13, 0x6994
    addi    r4, r26, 0x0
    stw     r25, -0x6994(r13)
    addi    r5, r24, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6998(r13)
branch_0x800d8224:
    lwz     r3, 0x8c(r22)
    subi    r0, r13, 0x6994
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d8278
    lbz     r0, -0x6978(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8264
    stw     r29, -0x6974(r13)
    subi    r3, r13, 0x6974
    addi    r4, r28, 0x0
    stw     r27, -0x6974(r13)
    addi    r5, r24, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6978(r13)
branch_0x800d8264:
    lwz     r3, 0x8c(r22)
    subi    r0, r13, 0x6974
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d83ec
branch_0x800d8278:
    addi    r3, r22, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lbz     r0, -0x6980(r13)
    extsb.  r0, r0
    bne-    branch_0x800d82b0
    stw     r29, -0x697c(r13)
    subi    r3, r13, 0x697c
    addi    r4, r31, 0x0
    stw     r30, -0x697c(r13)
    addi    r5, r24, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6980(r13)
branch_0x800d82b0:
    subi    r6, r13, 0x697c
    lwz     r5, 0x8c(r22)
    cmplwi  r6, 0x0
    beq-    branch_0x800d83ec
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800d82fc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800d82fc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800d82fc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800d83ec

branch_0x800d830c:
    stfs    f30, 0x78(sp)
    stfs    f30, 0x7c(sp)
    stfs    f30, 0x80(sp)
    lfs     f1, 0x10(r22)
    lfs     f0, 0x10(r4)
    lfs     f3, 0x14(r22)
    lfs     f2, 0x14(r4)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r22)
    lfs     f1, 0x18(r4)
    fsubs   f2, f3, f2
    stfs    f0, 0x6c(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x70(sp)
    stfs    f0, 0x74(sp)
    lfs     f1, 0x6c(sp)
    fcmpu   cr0, f30, f1
    bne-    branch_0x800d8374
    lfs     f0, 0x70(sp)
    fcmpu   cr0, f30, f0
    bne-    branch_0x800d8374
    lfs     f0, 0x74(sp)
    fcmpu   cr0, f30, f0
    bne-    branch_0x800d8374
    fadds   f0, f1, f31
    stfs    f0, 0x6c(sp)
branch_0x800d8374:
    addi    r3, sp, 0x6c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x70(sp)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(sp)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0x94(r22)
    stw     r0, 0x98(r22)
    lwz     r0, 0x80(sp)
    stw     r0, 0x9c(r22)
branch_0x800d83ec:
    addi    r23, r23, 0x1
    addi    r21, r21, 0x4
branch_0x800d83f4:
    lhz     r0, 0x48(r22)
    cmpw    r23, r0
    blt+    branch_0x800d81cc
    mr      r3, r22
    bl      moveObject__10TLiveActorFv
    lmw     r21, 0xac(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    addi    sp, sp, 0xf0
    blr


.globl __dt__20TNerveBEelTearsSplitFv
__dt__20TNerveBEelTearsSplitFv: # 0x800d8428
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d846c
    lis     r3, 0x803c
    subi    r0, r3, 0x6a64
    stw     r0, 0x0(r31)
    beq-    branch_0x800d845c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d845c:
    extsh.  r0, r4
    ble-    branch_0x800d846c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d846c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__21TNerveBEelTearsMoveUpFv
__dt__21TNerveBEelTearsMoveUpFv: # 0x800d8484
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d84c8
    lis     r3, 0x803c
    subi    r0, r3, 0x6a34
    stw     r0, 0x0(r31)
    beq-    branch_0x800d84b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d84b8:
    extsh.  r0, r4
    ble-    branch_0x800d84c8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d84c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__8TOilBallFv
reset__8TOilBallFv: # 0x800d84e0
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r0, 0x4c(r3)
    bl      reset__11TSpineEnemyFv
    lbz     r0, -0x699f(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8548
    subi    r3, r13, 0x699c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x6a24
    lis     r4, 0x800e
    stw     r0, -0x699c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f20
    subi    r4, r4, 0x7990
    subi    r3, r13, 0x699c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x699f(r13)
branch_0x800d8548:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x699c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r3, 0x150(r31)
    lwz     r0, 0x154(r31)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x158(r31)
    stw     r0, 0x18(r31)
    lbz     r0, -0x6978(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8614
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6974(r13)
    subi    r0, r3, 0x6b8c
    lis     r4, 0x800e
    stw     r0, -0x6974(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f5c
    subi    r4, r4, 0x7fc0
    subi    r3, r13, 0x6974
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6978(r13)
branch_0x800d8614:
    lwz     r5, 0x8c(r31)
    li      r30, 0x0
    lis     r3, 0x8038
    stw     r30, 0x8(r5)
    subi    r0, r13, 0x6974
    addi    r4, r3, 0x10
    stw     r30, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r30, 0x1c(r5)
    lwz     r3, 0x78(r31)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    li      r4, 0x2
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
    stb     r30, 0x160(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__23TNerveBEelTearsGenerateFv
__dt__23TNerveBEelTearsGenerateFv: # 0x800d8670
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d86b4
    lis     r3, 0x803c
    subi    r0, r3, 0x6a24
    stw     r0, 0x0(r31)
    beq-    branch_0x800d86a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d86a4:
    extsh.  r0, r4
    ble-    branch_0x800d86b4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d86b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__8TOilBallFR20JSUMemoryInputStream
load__8TOilBallFR20JSUMemoryInputStream: # 0x800d86cc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stb     r0, 0x160(r3)
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x150(r31)
    stw     r0, 0x154(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x158(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveBEelTearsSplitCFP24TSpineBase_10TLiveActor_
execute__20TNerveBEelTearsSplitCFP24TSpineBase_10TLiveActor_: # 0x800d872c
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
    bne-    branch_0x800d87cc
    lwz     r3, gpMSound(r13)
    li      r4, 0x2985
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d878c
    addi    r4, r31, 0x10
    li      r3, 0x2985
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d878c:
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    addi    r4, r4, 0x1c
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    li      r4, 0x3
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x15c(r31)
    lwz     r29, 0x74(r31)
    lfs     f31, 0x1bc(r3)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800d87cc:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d8958
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xd5
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d8830
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
branch_0x800d8830:
    lwz     r3, 0x16c(r31)
    li      r4, 0x0
    li      r0, 0x1
    stb     r4, 0x81(r3)
    addi    r4, r31, 0x10
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x64(r5)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r5)
    lwz     r3, 0x16c(r31)
    stb     r0, 0x80(r3)
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r5)
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r5)
    lwz     r3, 0x70(r31)
    bl      splitTears__17TBEelTearsManagerFRQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x2986
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d88cc
    addi    r4, r31, 0x10
    li      r3, 0x2986
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d88cc:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lbz     r0, -0x6988(r13)
    extsb.  r0, r0
    bne-    branch_0x800d891c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6984(r13)
    subi    r0, r3, 0x6a54
    lis     r4, 0x800d
    stw     r0, -0x6984(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f44
    addi    r4, r4, 0x5e94
    subi    r3, r13, 0x6984
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6988(r13)
branch_0x800d891c:
    subi    r4, r13, 0x6984
    cmplwi  r4, 0x0
    beq-    branch_0x800d8950
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d8950
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d8950:
    li      r3, 0x1
    b       branch_0x800d895c

branch_0x800d8958:
    li      r3, 0x0
branch_0x800d895c:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl theNerve__20TNerveBEelTearsSplitFv
theNerve__20TNerveBEelTearsSplitFv: # 0x800d897c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6980(r13)
    extsb.  r0, r0
    bne-    branch_0x800d89cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x697c(r13)
    subi    r0, r3, 0x6a64
    lis     r4, 0x800e
    stw     r0, -0x697c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f50
    subi    r4, r4, 0x7bd8
    subi    r3, r13, 0x697c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6980(r13)
branch_0x800d89cc:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x697c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__27TNerveBEelTearsMarioRecoverCFP24TSpineBase_10TLiveActor_
execute__27TNerveBEelTearsMarioRecoverCFP24TSpineBase_10TLiveActor_: # 0x800d89e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r4
    lwz     r4, 0x0(r4)
    lwz     r3, 0x16c(r4)
    mr      r31, r4
    lbz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d8a7c
    lwz     r5, MarioHitActorPos(r13)
    li      r4, 0xd6
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d8a60
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
branch_0x800d8a60:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800d8b28

branch_0x800d8a7c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x19d
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d8acc
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
branch_0x800d8acc:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x3e8
    ble-    branch_0x800d8af4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800d8b28

branch_0x800d8af4:
    lwz     r3, 0x16c(r31)
    lbz     r0, 0x81(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800d8b24
    lwz     r3, 0x15c(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xb8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x14(r31)
    lwz     r3, 0x16c(r31)
    stfs    f0, 0x14(r3)
branch_0x800d8b24:
    li      r3, 0x0
branch_0x800d8b28:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl theNerve__27TNerveBEelTearsMarioRecoverFv
theNerve__27TNerveBEelTearsMarioRecoverFv: # 0x800d8b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6988(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8b90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6984(r13)
    subi    r0, r3, 0x6a54
    lis     r4, 0x800d
    stw     r0, -0x6984(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f44
    addi    r4, r4, 0x5e94
    subi    r3, r13, 0x6984
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6988(r13)
branch_0x800d8b90:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6984
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__23TNerveBEelTearsWaterHitCFP24TSpineBase_10TLiveActor_
execute__23TNerveBEelTearsWaterHitCFP24TSpineBase_10TLiveActor_: # 0x800d8ba4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d8c24
    lwz     r3, gpMSound(r13)
    li      r4, 0x2985
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d8c04
    addi    r4, r31, 0x10
    li      r3, 0x2985
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d8c04:
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    addi    r4, r4, 0x1c
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    li      r4, 0x3
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
branch_0x800d8c24:
    lwz     r3, 0x164(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x164(r31)
    lwz     r0, 0x164(r31)
    lwz     r3, 0x15c(r31)
    cmpwi   r0, 0x0
    lfs     f31, 0x1bc(r3)
    bge-    branch_0x800d8c80
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    fneg    f0, f31
    addi    r3, r29, 0x0
    li      r4, 0x0
    fmuls   f1, f0, f1
    bl      setFrameRate__6MActorFfi
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x5e48(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800d8c98
    li      r3, 0x1
    b       branch_0x800d8e48

branch_0x800d8c80:
    lwz     r29, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    fmuls   f1, f31, f1
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800d8c98:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d8e24
    lbz     r0, -0x6988(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8cf0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6984(r13)
    subi    r0, r3, 0x6a54
    lis     r4, 0x800d
    stw     r0, -0x6984(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f44
    addi    r4, r4, 0x5e94
    subi    r3, r13, 0x6984
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6988(r13)
branch_0x800d8cf0:
    subi    r4, r13, 0x6984
    cmplwi  r4, 0x0
    beq-    branch_0x800d8d24
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800d8d24
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800d8d24:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xd5
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800d8d74
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
branch_0x800d8d74:
    lwz     r3, 0x16c(r31)
    li      r4, 0x0
    li      r0, 0x1
    stb     r4, 0x81(r3)
    addi    r4, r31, 0x10
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x64(r5)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r5)
    lwz     r3, 0x16c(r31)
    stb     r0, 0x80(r3)
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r5)
    lwz     r5, 0x16c(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r5)
    lwz     r3, 0x70(r31)
    bl      splitTears__17TBEelTearsManagerFRQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x2986
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800d8e10
    addi    r4, r31, 0x10
    li      r3, 0x2986
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800d8e10:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    b       branch_0x800d8e48

branch_0x800d8e24:
    lbz     r0, 0x160(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800d8e44
    lwz     r3, 0x15c(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xcc(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800d8e44:
    li      r3, 0x0
branch_0x800d8e48:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x80
    blr


.globl theNerve__23TNerveBEelTearsWaterHitFv
theNerve__23TNerveBEelTearsWaterHitFv: # 0x800d8e68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6990(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8eb8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x698c(r13)
    subi    r0, r3, 0x6a44
    lis     r4, 0x800e
    stw     r0, -0x698c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f38
    subi    r4, r4, 0x7134
    subi    r3, r13, 0x698c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6990(r13)
branch_0x800d8eb8:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x698c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TNerveBEelTearsWaterHitFv
__dt__23TNerveBEelTearsWaterHitFv: # 0x800d8ecc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800d8f10
    lis     r3, 0x803c
    subi    r0, r3, 0x6a44
    stw     r0, 0x0(r31)
    beq-    branch_0x800d8f00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800d8f00:
    extsh.  r0, r4
    ble-    branch_0x800d8f10
    mr      r3, r31
    bl      __dl__FPv
branch_0x800d8f10:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveBEelTearsMoveUpCFP24TSpineBase_10TLiveActor_
execute__21TNerveBEelTearsMoveUpCFP24TSpineBase_10TLiveActor_: # 0x800d8f28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d8f68
    lis     r4, 0x8038
    lwz     r3, 0x78(r31)
    addi    r4, r4, 0x10
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    li      r4, 0x1
    lwz     r3, 0x74(r31)
    bl      setBckFromIndex__6MActorFi
branch_0x800d8f68:
    lwz     r4, 0x15c(r31)
    li      r3, 0x0
    lfs     f1, 0x14(r31)
    lfs     f0, 0xb8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl theNerve__21TNerveBEelTearsMoveUpFv
theNerve__21TNerveBEelTearsMoveUpFv: # 0x800d8f94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6998(r13)
    extsb.  r0, r0
    bne-    branch_0x800d8fe4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6994(r13)
    subi    r0, r3, 0x6a34
    lis     r4, 0x800e
    stw     r0, -0x6994(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f2c
    subi    r4, r4, 0x7b7c
    subi    r3, r13, 0x6994
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6998(r13)
branch_0x800d8fe4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6994
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__23TNerveBEelTearsGenerateCFP24TSpineBase_10TLiveActor_
execute__23TNerveBEelTearsGenerateCFP24TSpineBase_10TLiveActor_: # 0x800d8ff8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800d9040
    lis     r4, 0x8038
    lwz     r3, 0x78(r30)
    addi    r4, r4, 0x10
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r30)
    li      r4, 0x2
    lwz     r3, 0x74(r30)
    bl      setBckFromIndex__6MActorFi
branch_0x800d9040:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800d90d4
    lbz     r0, -0x6998(r13)
    extsb.  r0, r0
    bne-    branch_0x800d9098
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6994(r13)
    subi    r0, r3, 0x6a34
    lis     r4, 0x800e
    stw     r0, -0x6994(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f2c
    subi    r4, r4, 0x7b7c
    subi    r3, r13, 0x6994
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6998(r13)
branch_0x800d9098:
    subi    r4, r13, 0x6994
    cmplwi  r4, 0x0
    beq-    branch_0x800d90cc
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800d90cc
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800d90cc:
    li      r3, 0x1
    b       branch_0x800d90d8

branch_0x800d90d4:
    li      r3, 0x0
branch_0x800d90d8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl theNerve__23TNerveBEelTearsGenerateFv
theNerve__23TNerveBEelTearsGenerateFv: # 0x800d90f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x699f(r13)
    extsb.  r0, r0
    bne-    branch_0x800d9140
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x699c(r13)
    subi    r0, r3, 0x6a24
    lis     r4, 0x800e
    stw     r0, -0x699c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f20
    subi    r4, r4, 0x7990
    subi    r3, r13, 0x699c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x699f(r13)
branch_0x800d9140:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x699c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBasNameTable__10TBEelTearsCFv
getBasNameTable__10TBEelTearsCFv: # 0x800d9154
    lis     r3, 0x803c
    subi    r3, r3, 0x737c
    blr


.globl reset__10TBEelTearsFv
reset__10TBEelTearsFv: # 0x800d9160
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x4c(r3)
    bl      reset__11TSpineEnemyFv
    lbz     r0, -0x699f(r13)
    extsb.  r0, r0
    bne-    branch_0x800d91c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x699c(r13)
    subi    r0, r3, 0x6a24
    lis     r4, 0x800e
    stw     r0, -0x699c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f20
    subi    r4, r4, 0x7990
    subi    r3, r13, 0x699c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x699f(r13)
branch_0x800d91c8:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x699c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl kill__10TBEelTearsFv
kill__10TBEelTearsFv: # 0x800d924c
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r4, 0x16c(r3)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r4)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    blr


.globl receiveMessage__10TBEelTearsFP9THitActorUl
receiveMessage__10TBEelTearsFP9THitActorUl: # 0x800d9278
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    lis     r4, 0x803f
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x1f20
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x800d9458
    li      r0, 0x3c
    stw     r0, 0x164(r30)
    lbz     r0, -0x6998(r13)
    extsb.  r0, r0
    bne-    branch_0x800d92e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6994(r13)
    subi    r0, r3, 0x6a34
    lis     r3, 0x800e
    stw     r0, -0x6994(r13)
    subi    r4, r3, 0x7b7c
    subi    r3, r13, 0x6994
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6998(r13)
branch_0x800d92e8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6994
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800d9350
    lbz     r0, -0x6978(r13)
    extsb.  r0, r0
    bne-    branch_0x800d933c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6974(r13)
    subi    r0, r3, 0x6b8c
    lis     r3, 0x800e
    stw     r0, -0x6974(r13)
    subi    r4, r3, 0x7fc0
    subi    r3, r13, 0x6974
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6978(r13)
branch_0x800d933c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6974
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d93e8
branch_0x800d9350:
    lbz     r0, -0x6990(r13)
    extsb.  r0, r0
    bne-    branch_0x800d9390
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x698c(r13)
    subi    r0, r3, 0x6a44
    lis     r3, 0x800e
    stw     r0, -0x698c(r13)
    subi    r4, r3, 0x7134
    subi    r3, r13, 0x698c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6990(r13)
branch_0x800d9390:
    subi    r6, r13, 0x698c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800d93e8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800d93dc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800d93dc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800d93dc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800d93e8:
    lbz     r0, -0x6990(r13)
    extsb.  r0, r0
    bne-    branch_0x800d9428
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x698c(r13)
    subi    r0, r3, 0x6a44
    lis     r3, 0x800e
    stw     r0, -0x698c(r13)
    subi    r4, r3, 0x7134
    subi    r3, r13, 0x698c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6990(r13)
branch_0x800d9428:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x698c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d9450
    lwz     r30, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
branch_0x800d9450:
    li      r3, 0x1
    b       branch_0x800d945c

branch_0x800d9458:
    li      r3, 0x0
branch_0x800d945c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl perform__10TBEelTearsFUlPQ26JDrama9TGraphics
perform__10TBEelTearsFUlPQ26JDrama9TGraphics: # 0x800d9474
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x84(sp)
    mr      r29, r3
    stw     r28, 0x80(sp)
    lwz     r3, 0x16c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x800d95a0
    clrlwi. r0, r30, 31
    beq-    branch_0x800d94d8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
branch_0x800d94d8:
    rlwinm. r28, r30, 0, 30, 30
    beq-    branch_0x800d9530
    addi    r3, sp, 0x40
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x74(r29)
    li      r4, 0x1
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x40
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xf4(r12)
    mtlr    r12
    blrl
branch_0x800d9530:
    cmplwi  r28, 0x0
    beq-    branch_0x800d9540
    lwz     r3, 0x74(r29)
    bl      frameUpdate__6MActorFv
branch_0x800d9540:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 29, 30
    bne-    branch_0x800d95a0
    cmplwi  r28, 0x0
    beq-    branch_0x800d9570
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r29)
    bl      calc__6MActorFv
branch_0x800d9570:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x800d9580
    lwz     r3, 0x74(r29)
    bl      viewCalc__6MActorFv
branch_0x800d9580:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x800d9590
    lwz     r3, 0x74(r29)
    bl      entry__6MActorFv
branch_0x800d9590:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
branch_0x800d95a0:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl calcRootMatrix__10TBEelTearsFv
calcRootMatrix__10TBEelTearsFv: # 0x800d95c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    lwz     r3, 0x168(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800d9700
    lfs     f0, 0x14(r31)
    lfs     f1, 0x1c(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800d9600
    stfs    f1, 0x14(r31)
branch_0x800d9600:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
    lbz     r0, -0x699f(r13)
    extsb.  r0, r0
    bne-    branch_0x800d964c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x699c(r13)
    subi    r0, r3, 0x6a24
    lis     r4, 0x800e
    stw     r0, -0x699c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f20
    subi    r4, r4, 0x7990
    subi    r3, r13, 0x699c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x699f(r13)
branch_0x800d964c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x699c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d9708
    lfs     f29, 0x18(r31)
    addi    r3, sp, 0x58
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x64(sp)
    addi    r3, sp, 0x58
    lfs     f2, -0x5d8c(rtoc)
    stfs    f30, 0x74(sp)
    stfs    f29, 0x84(sp)
    lwz     r4, 0x168(r31)
    lfs     f1, 0x64(sp)
    lfs     f0, 0xc(r4)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x64(sp)
    lwz     r4, 0x168(r31)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x2c(r4)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x84(sp)
    lwz     r4, 0x15c(r31)
    lfs     f0, 0x1d0(r4)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r5, 0x74(r31)
    lwz     r4, 0x24(r31)
    lwz     r5, 0x4(r5)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r5)
    stw     r0, 0x18(r5)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r5)
    lwz     r4, 0x74(r31)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x800d9708

branch_0x800d9700:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x800d9708:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0xa8
    blr


.globl moveObject__10TBEelTearsFv
moveObject__10TBEelTearsFv: # 0x800d9728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stfd    f29, 0xd0(sp)
    stmw    r22, 0xa8(sp)
    mr      r23, r3
    lfs     f0, 0xac(r3)
    lfs     f1, -0x5d90(rtoc)
    lwz     r3, 0x15c(r3)
    fmuls   f0, f0, f1
    lfs     f3, 0xe0(r3)
    stfs    f0, 0xac(r23)
    lfs     f0, 0xb4(r23)
    fmuls   f0, f0, f1
    stfs    f0, 0xb4(r23)
    lfs     f1, 0x10(r23)
    lfs     f0, 0xac(r23)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r23)
    lfs     f1, 0x18(r23)
    lfs     f0, 0xb4(r23)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r23)
    lwz     r3, 0x16c(r23)
    lbz     r0, 0x81(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800d97ec
    lwz     r4, 0x168(r23)
    cmplwi  r4, 0x0
    beq-    branch_0x800d97ec
    lwz     r3, MarioHitActorPos(r13)
    lfs     f1, -0x5d54(rtoc)
    lfs     f0, 0x4(r3)
    lfs     f2, 0x14(r23)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bgt-    branch_0x800d97d4
    lfs     f0, 0x1c(r4)
    fadds   f0, f0, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x800d97ec
branch_0x800d97d4:
    mr      r3, r23
    lwz     r12, 0x0(r23)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x800d9ad0

branch_0x800d97ec:
    lwz     r7, 0x15c(r23)
    lis     r5, 0x4330
    lfd     f3, -0x5e28(rtoc)
    mr      r3, r23
    lwz     r0, 0x130(r7)
    lwz     r6, 0x144(r7)
    xoris   r0, r0, 0x8000
    lwz     r4, 0x108(r7)
    stw     r0, 0x8c(sp)
    xoris   r6, r6, 0x8000
    xoris   r4, r4, 0x8000
    lwz     r0, 0x11c(r7)
    stw     r6, 0xa4(sp)
    xoris   r0, r0, 0x8000
    lfs     f4, 0x24(r23)
    stw     r5, 0x88(sp)
    stw     r5, 0xa0(sp)
    lfd     f0, 0x88(sp)
    stw     r4, 0x9c(sp)
    lfd     f1, 0xa0(sp)
    fsubs   f0, f0, f3
    stw     r5, 0x98(sp)
    fsubs   f5, f1, f3
    fmuls   f1, f0, f4
    stw     r0, 0x94(sp)
    lfd     f2, 0x98(sp)
    stw     r5, 0x90(sp)
    fsubs   f6, f2, f3
    lfd     f2, 0x90(sp)
    fmuls   f0, f5, f4
    stfs    f1, 0x50(r23)
    fsubs   f2, f2, f3
    stfs    f0, 0x54(r23)
    fmuls   f1, f6, f4
    fmuls   f0, f2, f4
    stfs    f1, 0x58(r23)
    stfs    f0, 0x5c(r23)
    bl      calcEntryRadius__9THitActorFv
    lis     r6, 0x803b
    lfs     f30, -0x5e40(rtoc)
    lis     r5, 0x803c
    lfs     f31, -0x5e48(rtoc)
    lis     r4, 0x800e
    lfs     f29, -0x5d58(rtoc)
    lis     r3, 0x803f
    lis     r9, 0x803c
    lis     r8, 0x800e
    lis     r7, 0x803f
    subi    r28, r6, 0x48f4
    subi    r29, r5, 0x6a64
    subi    r30, r4, 0x7bd8
    addi    r31, r3, 0x1f50
    subi    r25, r9, 0x6a34
    subi    r26, r8, 0x7b7c
    addi    r27, r7, 0x1f2c
    li      r24, 0x0
    li      r22, 0x0
    b       branch_0x800d9abc

branch_0x800d98d4:
    lwz     r3, 0x44(r23)
    lwzx    r4, r3, r22
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800d98f4
    li      r0, 0x1
    b       branch_0x800d98f8

branch_0x800d98f4:
    li      r0, 0x0
branch_0x800d98f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800d99d4
    lbz     r0, -0x6998(r13)
    extsb.  r0, r0
    bne-    branch_0x800d992c
    stw     r28, -0x6994(r13)
    subi    r3, r13, 0x6994
    addi    r4, r26, 0x0
    stw     r25, -0x6994(r13)
    addi    r5, r27, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6998(r13)
branch_0x800d992c:
    lwz     r3, 0x8c(r23)
    subi    r0, r13, 0x6994
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800d9ab4
    addi    r3, r23, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lbz     r0, -0x6980(r13)
    extsb.  r0, r0
    bne-    branch_0x800d9978
    stw     r28, -0x697c(r13)
    subi    r3, r13, 0x697c
    addi    r4, r30, 0x0
    stw     r29, -0x697c(r13)
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6980(r13)
branch_0x800d9978:
    subi    r6, r13, 0x697c
    lwz     r5, 0x8c(r23)
    cmplwi  r6, 0x0
    beq-    branch_0x800d9ab4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800d99c4
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800d99c4
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800d99c4:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800d9ab4

branch_0x800d99d4:
    stfs    f30, 0x74(sp)
    stfs    f30, 0x78(sp)
    stfs    f30, 0x7c(sp)
    lfs     f1, 0x10(r23)
    lfs     f0, 0x10(r4)
    lfs     f3, 0x14(r23)
    lfs     f2, 0x14(r4)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r23)
    lfs     f1, 0x18(r4)
    fsubs   f2, f3, f2
    stfs    f0, 0x68(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x6c(sp)
    stfs    f0, 0x70(sp)
    lfs     f1, 0x68(sp)
    fcmpu   cr0, f30, f1
    bne-    branch_0x800d9a3c
    lfs     f0, 0x6c(sp)
    fcmpu   cr0, f30, f0
    bne-    branch_0x800d9a3c
    lfs     f0, 0x70(sp)
    fcmpu   cr0, f30, f0
    bne-    branch_0x800d9a3c
    fadds   f0, f1, f31
    stfs    f0, 0x68(sp)
branch_0x800d9a3c:
    addi    r3, sp, 0x68
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x68(sp)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x6c(sp)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f29
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x94(r23)
    stw     r0, 0x98(r23)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x9c(r23)
branch_0x800d9ab4:
    addi    r24, r24, 0x1
    addi    r22, r22, 0x4
branch_0x800d9abc:
    lhz     r0, 0x48(r23)
    cmpw    r24, r0
    blt+    branch_0x800d98d4
    mr      r3, r23
    bl      moveObject__10TLiveActorFv
branch_0x800d9ad0:
    lmw     r22, 0xa8(sp)
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lfd     f29, 0xd0(sp)
    addi    sp, sp, 0xe8
    blr


.globl setMActorAndKeeper__10TBEelTearsFv
setMActorAndKeeper__10TBEelTearsFv: # 0x800d9af0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800d9b28
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800d9b28:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x10
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x1c
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__10TBEelTearsFP12TLiveManager
init__10TBEelTearsFP12TLiveManager: # 0x800d9b70
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stmw    r27, 0xf4(sp)
    addi    r31, r3, 0x0
    subi    r30, r5, 0x180
    bl      init__11TSpineEnemyFP12TLiveManager
    lis     r3, 0x800
    addi    r0, r3, 0x3
    stw     r0, 0x4c(r31)
    mr      r3, r31
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x8000
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x15c(r31)
    lbz     r0, -0x699f(r13)
    extsb.  r0, r0
    bne-    branch_0x800d9c1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x699c(r13)
    subi    r0, r3, 0x6a24
    lis     r4, 0x800e
    stw     r0, -0x699c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1f20
    subi    r4, r4, 0x7990
    subi    r3, r13, 0x699c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x699f(r13)
branch_0x800d9c1c:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x699c
    stw     r4, 0x8(r5)
    addi    r3, r30, 0x93c
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x93c
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    li      r3, 0x14
    lwz     r28, 0x20(r4)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800d9c88
    mr      r3, r27
    bl      __ct__13J3DSkinDeformFv
branch_0x800d9c88:
    lwz     r3, 0x78(r31)
    addi    r29, r27, 0x0
    addi    r4, r30, 0x190
    bl      getMActor__13TMActorKeeperCFPCc
    mr      r27, r3
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
    mr      r3, r27
    bl      resetDL__6MActorFv
    lwz     r3, 0x4(r27)
    addi    r5, r28, 0x0
    subi    r4, rtoc, 0x5d50
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    addi    r3, r27, 0x0
    li      r4, 0x3
    bl      setLightType__6MActorFi
    lwz     r3, 0x78(r31)
    addi    r4, r30, 0x19c
    bl      getMActor__13TMActorKeeperCFPCc
    mr      r29, r3
    lwz     r3, 0x4(r3)
    addi    r5, r28, 0x0
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x5d50
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    addi    r3, r29, 0x0
    li      r4, 0x3
    bl      setLightType__6MActorFi
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r3, 0x15c(r31)
    addi    r29, r3, 0x210
    lfs     f1, 0x214(r3)
    lfs     f0, 0x210(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5e28(rtoc)
    stw     r0, 0xec(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5e18(rtoc)
    addi    r3, r30, 0x2e4
    stw     r0, 0xe8(sp)
    lfs     f1, 0x0(r29)
    lfd     f2, 0xe8(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x2e4
    mtlr    r12
    blrl
    addi    r29, r3, 0x0
    li      r3, 0x84
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800d9e04
    lwz     r4, 0x74(r31)
    mr      r3, r27
    lwz     r5, 0x4(r4)
    addi    r4, r30, 0x954
    lwz     r30, 0x58(r5)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r27)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r27)
    subi    r3, r3, 0x70d0
    li      r4, 0x0
    stw     r30, 0x68(r27)
    addi    r0, r3, 0x24
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x6c(r27)
    stfs    f0, 0x70(r27)
    stfs    f0, 0x74(r27)
    stfs    f0, 0x78(r27)
    stw     r4, 0x7c(r27)
    stw     r3, 0x0(r27)
    stw     r0, 0x20(r27)
    stb     r4, 0x80(r27)
    stb     r4, 0x81(r27)
branch_0x800d9e04:
    stw     r27, 0x16c(r31)
    lwz     r3, 0x16c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x10
    addi    r3, sp, 0x90
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x90(sp)
    addi    r3, sp, 0xc4
    addi    r4, sp, 0x8c
    stw     r0, 0x8c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xc4(sp)
    addi    r5, sp, 0xa0
    addi    r4, r29, 0x0
    stw     r0, 0xc0(sp)
    addi    r3, sp, 0x9c
    addi    r6, r31, 0x16c
    lwz     r0, 0xc0(sp)
    stw     r0, 0xa0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, 0x16c(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lmw     r27, 0xf4(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl __ct__10TBEelTearsFPCc
__ct__10TBEelTearsFPCc: # 0x800d9e8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x6a14
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x15c(r31)
    stb     r0, 0x160(r31)
    stw     r4, 0x164(r31)
    stw     r4, 0x168(r31)
    stw     r4, 0x16c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl splitTears__17TBEelTearsManagerFRQ29JGeometry8TVec3_f_
splitTears__17TBEelTearsManagerFRQ29JGeometry8TVec3_f_: # 0x800d9eec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    stfd    f28, 0xe8(sp)
    stfd    f27, 0xe0(sp)
    stfd    f26, 0xd8(sp)
    stfd    f25, 0xd0(sp)
    stmw    r24, 0xb0(sp)
    mr      r27, r3
    mr      r28, r4
    li      r29, 0x0
    li      r26, 0x0
    lis     r31, 0x4330
    lfs     f0, -0x5d5c(rtoc)
    lfs     f1, 0x4(r4)
    lwz     r3, 0x38(r3)
    fadds   f0, f1, f0
    lwz     r30, 0xf4(r3)
    stfs    f0, 0x4(r4)
    lfs     f1, -0x5d48(rtoc)
    lfs     f0, -0x5e38(rtoc)
    stfs    f1, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lfd     f28, -0x5e28(rtoc)
    lfs     f29, -0x5e18(rtoc)
    lfs     f30, -0x5d44(rtoc)
    lfs     f31, -0x5d40(rtoc)
    lfs     f26, -0x5e48(rtoc)
    lfs     f27, -0x5d3c(rtoc)
branch_0x800d9f6c:
    addi    r24, r26, 0x54
    add     r24, r27, r24
    lwz     r3, 0x0(r24)
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800da128
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    lfs     f0, 0x7c(sp)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x78(sp)
    lfs     f1, 0x80(sp)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x7c(sp)
    stw     r0, 0xac(sp)
    lfs     f0, 0x70(sp)
    stw     r31, 0xa8(sp)
    lfd     f1, 0xa8(sp)
    fsubs   f1, f1, f28
    fmuls   f1, f29, f1
    fmuls   f1, f25, f1
    fadds   f1, f2, f1
    fadds   f0, f0, f1
    stfs    f0, 0x70(sp)
    lfs     f0, 0x80(sp)
    fsubs   f25, f0, f2
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x7c(sp)
    stw     r0, 0xa4(sp)
    lfs     f0, 0x74(sp)
    stw     r31, 0xa0(sp)
    lfd     f1, 0xa0(sp)
    fsubs   f1, f1, f28
    fmuls   f1, f29, f1
    fmuls   f1, f25, f1
    fadds   f1, f2, f1
    fadds   f0, f0, f1
    stfs    f0, 0x74(sp)
    lfs     f0, 0x80(sp)
    fsubs   f25, f0, f2
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x7c(sp)
    stw     r0, 0x9c(sp)
    li      r0, 0x1
    lfs     f2, 0x78(sp)
    subi    r30, r30, 0x1
    stw     r31, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f29, f0
    fmuls   f0, f25, f0
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x78(sp)
    lwz     r25, 0x0(r24)
    lwz     r3, 0x64(r25)
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r25)
    stb     r0, 0x6c(r25)
    stfs    f30, 0x58(sp)
    stfs    f31, 0x5c(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x58(sp)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x58(sp)
    stw     r0, 0x94(sp)
    stw     r31, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f29, f0
    fmuls   f0, f25, f0
    fadds   f0, f1, f0
    stfs    f0, 0x70(r25)
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0x10(r25)
    stw     r0, 0x14(r25)
    lwz     r0, 0x78(sp)
    stw     r0, 0x18(r25)
    stfs    f26, 0x60(sp)
    stfs    f27, 0x64(sp)
    bl      rand
    lwz     r3, 0x74(r25)
    lwz     r3, 0x15c(r3)
    addi    r24, r3, 0x218
    lfs     f1, 0x21c(r3)
    lfs     f0, 0x218(r3)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f1, 0x0(r24)
    stw     r0, 0x8c(sp)
    cmpwi   r30, 0x0
    stw     r31, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f29, f0
    fmuls   f0, f25, f0
    fadds   f0, f1, f0
    stfs    f0, 0x24(r25)
    stfs    f0, 0x28(r25)
    stfs    f0, 0x2c(r25)
    blt-    branch_0x800da138
branch_0x800da128:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x1e
    addi    r26, r26, 0x4
    blt+    branch_0x800d9f6c
branch_0x800da138:
    lmw     r24, 0xb0(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    lfd     f28, 0xe8(sp)
    lfd     f27, 0xe0(sp)
    lfd     f26, 0xd8(sp)
    lfd     f25, 0xd0(sp)
    addi    sp, sp, 0x108
    blr


.globl createEnemies__17TBEelTearsManagerFi
createEnemies__17TBEelTearsManagerFi: # 0x800da168
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r27, r3
    bl      createEnemies__13TEnemyManagerFi
    lis     r3, 0x8038
    addi    r3, r3, 0x7e4
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r30, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800da1b8
    addi    r3, r30, 0x0
    lis     r4, 0x1124
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800da1b8:
    lwz     r3, 0x18(r27)
    addi    r30, r28, 0x0
    li      r28, 0x0
    lwz     r29, 0x0(r3)
    li      r31, 0x0
branch_0x800da1cc:
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800da1f4
    addi    r3, r26, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    li      r5, 0x0
    subi    r7, rtoc, 0x5d38
    bl      __ct__14TBEelTearsDropFP10TBEelTearsiP12SDLModelDataPCc
branch_0x800da1f4:
    addi    r28, r28, 0x1
    addi    r0, r31, 0x54
    cmpwi   r28, 0x1e
    stwx    r26, r27, r0
    addi    r31, r31, 0x4
    blt+    branch_0x800da1cc
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl createEnemyInstance__17TBEelTearsManagerFv
createEnemyInstance__17TBEelTearsManagerFv: # 0x800da220
    mflr    r0
    li      r3, 0x170
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800da280
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    addi    r4, r4, 0x808
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x6a14
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r3, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    stw     r3, 0x15c(r31)
    stb     r0, 0x160(r31)
    stw     r3, 0x164(r31)
    stw     r3, 0x168(r31)
    stw     r3, 0x16c(r31)
branch_0x800da280:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__17TBEelTearsManagerFUlPQ26JDrama9TGraphics
perform__17TBEelTearsManagerFUlPQ26JDrama9TGraphics: # 0x800da298
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x800da2d4
    mr      r3, r27
    lwz     r12, 0x0(r27)
    mr      r4, r29
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
branch_0x800da2d4:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800da308

branch_0x800da2e0:
    lwz     r3, 0x18(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800da308:
    lwz     r3, 0x38(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x800da31c
    lwz     r3, 0x14(r27)
    b       branch_0x800da334

branch_0x800da31c:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r27)
    cmpw    r0, r3
    ble-    branch_0x800da330
    b       branch_0x800da334

branch_0x800da330:
    mr      r3, r0
branch_0x800da334:
    cmpw    r30, r3
    blt+    branch_0x800da2e0
    li      r30, 0x0
    li      r31, 0x0
branch_0x800da344:
    addi    r0, r31, 0x54
    lwzx    r3, r27, r0
    lbz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800da370
    lwz     r12, 0x0(r3)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x800da370:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x1e
    addi    r31, r31, 0x4
    blt+    branch_0x800da344
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl createModelData__17TBEelTearsManagerFv
createModelData__17TBEelTearsManagerFv: # 0x800da394
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x736c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__17TBEelTearsManagerFv
loadAfter__17TBEelTearsManagerFv: # 0x800da3c8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0xd5
    lbz     r0, 0xd5(r3)
    lis     r3, 0x8038
    subi    r31, r3, 0x180
    cmplwi  r0, 0x0
    bne-    branch_0x800da414
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x998
    li      r5, 0xd5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800da414:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xd6
    lbz     r0, 0xd6(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800da444
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x9c4
    li      r5, 0xd6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800da444:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x19d
    lbz     r0, 0x19d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800da474
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x9f0
    li      r5, 0x19d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800da474:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__17TBEelTearsManagerFR20JSUMemoryInputStream
load__17TBEelTearsManagerFR20JSUMemoryInputStream: # 0x800da48c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x220
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800da4cc
    lis     r3, 0x8038
    addi    r4, r3, 0x898
    addi    r3, r29, 0x0
    bl      __ct__24TBEelTearsSaveLoadParamsFPCc
branch_0x800da4cc:
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


.globl __ct__17TBEelTearsManagerFPCc
__ct__17TBEelTearsManagerFPCc: # 0x800da4f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x68fc
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__24TBEelTearsSaveLoadParamsFPCc
__ct__24TBEelTearsSaveLoadParamsFPCc: # 0x800da534
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r22, 0x20(sp)
    subi    r30, r5, 0x180
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0xa30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0xa30
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42c4
    stw     r27, 0xa8(r31)
    lis     r3, 0x803b
    subi    r26, r3, 0x42d0
    lfs     f0, -0x5d58(rtoc)
    addi    r3, r30, 0xa40
    stfs    f0, 0xb8(r31)
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0xa40
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    addi    r3, r30, 0xa58
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0xa58
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xd0(r31)
    addi    r3, r30, 0xa6c
    lfs     f0, -0x5db4(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r26, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0xa6c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42ac
    stw     r29, 0xe4(r31)
    li      r0, 0x2
    lis     r3, 0x803b
    stw     r0, 0xf4(r31)
    subi    r28, r3, 0x42b8
    addi    r3, r30, 0xa80
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0xa80
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xf8(r31)
    li      r25, 0x258
    addi    r3, r30, 0xa98
    stw     r25, 0x108(r31)
    stw     r28, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0xa98
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    li      r24, 0x190
    addi    r3, r30, 0xab0
    stw     r24, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0xab0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    li      r23, 0x1f4
    addi    r3, r30, 0xac8
    stw     r23, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0xac8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    li      r22, 0x12c
    addi    r3, r30, 0xae0
    stw     r22, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0xae0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0xafc
    stw     r25, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0xafc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0xb18
    stw     r24, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0xb18
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0xb34
    stw     r23, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0xb34
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0xb50
    stw     r22, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0xb50
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x198(r31)
    addi    r3, r30, 0xb64
    lfs     f0, -0x5d54(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r26, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0xb64
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1ac(r31)
    addi    r3, r30, 0xb78
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r26, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0xb78
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1c0(r31)
    addi    r3, r30, 0xb88
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r26, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0xb88
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1d4(r31)
    addi    r3, r30, 0xb9c
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1e4(r31)
    stw     r26, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0xb9c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1e8(r31)
    addi    r3, r30, 0xbb4
    lfs     f0, -0x5e48(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r26, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0xbb4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x1fc(r31)
    mr      r3, r31
    lfs     f1, -0x5e48(rtoc)
    stfs    f1, 0x20c(r31)
    stw     r26, 0x1fc(r31)
    lfs     f0, -0x5e40(rtoc)
    stfs    f0, 0x210(r31)
    stfs    f1, 0x214(r31)
    stfs    f0, 0x218(r31)
    stfs    f1, 0x21c(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, 0x1d0(r31)
    mr      r3, r31
    stfs    f0, 0x210(r31)
    lfs     f0, 0x1e4(r31)
    stfs    f0, 0x214(r31)
    lfs     f0, 0x1f8(r31)
    stfs    f0, 0x218(r31)
    lfs     f0, 0x20c(r31)
    stfs    f0, 0x21c(r31)
    lwz     r0, 0x4c(sp)
    lmw     r22, 0x20(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl perform__14TBEelTearsDropFUlPQ26JDrama9TGraphics
perform__14TBEelTearsDropFUlPQ26JDrama9TGraphics: # 0x800da8dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xc0(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xbc(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xb8(sp)
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x800da944
    lfs     f1, 0x14(r29)
    lfs     f0, 0x70(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f1, -0x5db4(rtoc)
    lfs     f0, 0x4(r3)
    lfs     f2, 0x14(r29)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800da944
    li      r0, 0x0
    stb     r0, 0x6c(r29)
branch_0x800da944:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800da9f8
    lfs     f0, 0x38(r29)
    addi    r28, sp, 0x6c
    lfs     f2, -0x5d94(rtoc)
    mr      r3, r28
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r29)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r29)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r29)
    fctiwz  f5, f2
    lfs     f2, 0x14(r29)
    fctiwz  f0, f0
    stfd    f4, 0xa8(sp)
    stfd    f5, 0xb0(sp)
    lwz     r5, 0xac(sp)
    stfd    f0, 0xa0(sp)
    lwz     r4, 0xb4(sp)
    lwz     r6, 0xa4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x68(r29)
    mr      r3, r28
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r29)
    lwz     r3, 0x15c(r3)
    lfs     f0, 0x1f8(r3)
    stfs    f0, 0x24(r29)
    stfs    f0, 0x28(r29)
    stfs    f0, 0x2c(r29)
    lwz     r4, 0x68(r29)
    lwz     r3, 0x24(r29)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x28(r29)
    lwz     r4, 0x4(r4)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r4)
branch_0x800da9f8:
    lwz     r3, 0x68(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r3, 0x18(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    lwz     r28, 0xb8(sp)
    addi    sp, sp, 0xc8
    blr


.globl __ct__14TBEelTearsDropFP10TBEelTearsiP12SDLModelDataPCc
__ct__14TBEelTearsDropFP10TBEelTearsiP12SDLModelDataPCc: # 0x800daa2c
    mflr    r0
    lis     r8, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stmw    r27, 0x124(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r4, r7, 0x0
    subi    r31, r8, 0x180
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    lwz     r30, 0x8(sp)
    subi    r3, r3, 0x68a8
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    li      r3, 0x1c
    stw     r0, 0x68(r30)
    stw     r27, 0x74(r30)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800daab0
    lwz     r4, 0x74(r30)
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r8, r31, 0x41c
    li      r7, 0x0
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x800daab0:
    lwz     r30, 0x8(sp)
    lis     r4, 0x2000
    lis     r9, 0x4330
    stw     r27, 0x68(r30)
    mr      r3, r30
    addi    r4, r4, 0x2c
    lwz     r6, 0x74(r30)
    li      r5, 0x3
    lfd     f4, -0x5e28(rtoc)
    lwz     r11, 0x15c(r6)
    lis     r6, 0x8000
    lwz     r8, 0x194(r11)
    lwz     r7, 0x158(r11)
    lwz     r0, 0x16c(r11)
    xoris   r8, r8, 0x8000
    xoris   r7, r7, 0x8000
    stw     r8, 0x114(sp)
    xoris   r0, r0, 0x8000
    stw     r7, 0x10c(sp)
    lwz     r10, 0x180(r11)
    stw     r0, 0x104(sp)
    xoris   r7, r10, 0x8000
    stw     r7, 0x11c(sp)
    stw     r9, 0x110(sp)
    stw     r9, 0x118(sp)
    lfd     f0, 0x110(sp)
    stw     r9, 0x108(sp)
    lfd     f1, 0x118(sp)
    fsubs   f2, f0, f4
    stw     r9, 0x100(sp)
    lfd     f3, 0x108(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x100(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x2e4
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x2e4
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r3, sp, 0xa4
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xa4(sp)
    addi    r3, sp, 0xd4
    addi    r4, sp, 0xa0
    stw     r0, 0xa0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xd4(sp)
    addi    r5, sp, 0xb4
    addi    r4, r29, 0x0
    stw     r0, 0xd0(sp)
    addi    r3, sp, 0xb0
    addi    r6, sp, 0x8
    lwz     r0, 0xd0(sp)
    stw     r0, 0xb4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r0, 0x0
    stb     r0, 0x6c(r30)
    addi    r3, r31, 0x93c
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x93c
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    li      r3, 0x14
    lwz     r29, 0x20(r4)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x800dac04
    bl      __ct__13J3DSkinDeformFv
branch_0x800dac04:
    lwz     r30, 0x8(sp)
    addi    r5, r29, 0x0
    subi    r4, rtoc, 0x5d50
    lwz     r3, 0x68(r30)
    lwz     r6, 0x18(r3)
    lwz     r3, 0x4(r6)
    mr      r29, r6
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    addi    r3, r29, 0x0
    li      r4, 0x3
    bl      setLightType__6MActorFi
    mr      r3, r30
    lmw     r27, 0x124(sp)
    lwz     r0, 0x13c(sp)
    addi    sp, sp, 0x138
    mtlr    r0
    blr


.globl __dt__8TBossEelFv
__dt__8TBossEelFv: # 0x800dac58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800daca8
    lis     r3, 0x803c
    subi    r3, r3, 0x71e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800daca8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800daca8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__8TBossEelCFv
hasMapCollision__8TBossEelCFv: # 0x800dacc4
    li      r3, 0x1
    blr


.globl receiveMessage__8TBossEelFP9THitActorUl
receiveMessage__8TBossEelFP9THitActorUl: # 0x800daccc
    li      r3, 0x0
    blr


.globl __dt__29TBossEelTearsRecoverCollisionFv
__dt__29TBossEelTearsRecoverCollisionFv: # 0x800dacd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800dad54
    lis     r3, 0x803c
    subi    r3, r3, 0x70d0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dad44
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dad44
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800dad44:
    extsh.  r0, r31
    ble-    branch_0x800dad54
    mr      r3, r30
    bl      __dl__FPv
branch_0x800dad54:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TBossEelBarrierCollisionFv
__dt__24TBossEelBarrierCollisionFv: # 0x800dad70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800dadf0
    lis     r3, 0x803c
    subi    r3, r3, 0x7024
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dade0
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dade0
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800dade0:
    extsh.  r0, r31
    ble-    branch_0x800dadf0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800dadf0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__20TBossEelAwaCollisionFv
__dt__20TBossEelAwaCollisionFv: # 0x800dae0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800dae8c
    lis     r3, 0x803c
    subi    r3, r3, 0x6f78
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dae7c
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dae7c
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800dae7c:
    extsh.  r0, r31
    ble-    branch_0x800dae8c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800dae8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TBossEelBodyCollisionFv
__dt__21TBossEelBodyCollisionFv: # 0x800daea8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800daf28
    lis     r3, 0x803c
    subi    r3, r3, 0x6ecc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800daf18
    lis     r3, 0x803c
    subi    r3, r3, 0x6e20
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800daf18
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800daf18:
    extsh.  r0, r31
    ble-    branch_0x800daf28
    mr      r3, r30
    bl      __dl__FPv
branch_0x800daf28:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TBossEelHeartCoinFv
__dt__17TBossEelHeartCoinFv: # 0x800daf44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800dafac
    lis     r3, 0x803c
    subi    r0, r3, 0x6d74
    stw     r0, 0x0(r30)
    beq-    branch_0x800daf9c
    lis     r3, 0x803e
    subi    r0, r3, 0x5a58
    stw     r0, 0x0(r30)
    beq-    branch_0x800daf9c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800daf9c:
    extsh.  r0, r31
    ble-    branch_0x800dafac
    mr      r3, r30
    bl      __dl__FPv
branch_0x800dafac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBossEelEyeFv
__dt__11TBossEelEyeFv: # 0x800dafc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db030
    lis     r3, 0x803c
    subi    r0, r3, 0x6d50
    stw     r0, 0x0(r30)
    beq-    branch_0x800db020
    lis     r3, 0x803e
    subi    r0, r3, 0x5a58
    stw     r0, 0x0(r30)
    beq-    branch_0x800db020
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800db020:
    extsh.  r0, r31
    ble-    branch_0x800db030
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db030:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TBossEelVortexFv
__dt__14TBossEelVortexFv: # 0x800db04c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db0b4
    lis     r3, 0x803c
    subi    r3, r3, 0x6d2c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800db0a4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800db0a4:
    extsh.  r0, r31
    ble-    branch_0x800db0b4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db0b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TBossEelToothFv
__dt__13TBossEelToothFv: # 0x800db0d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db138
    lis     r3, 0x803c
    subi    r3, r3, 0x6c84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800db128
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800db128:
    extsh.  r0, r31
    ble-    branch_0x800db138
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db138:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TBossEelManagerFv
__dt__15TBossEelManagerFv: # 0x800db154
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db19c
    lis     r3, 0x803c
    subi    r0, r3, 0x6be0
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800db19c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db19c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__8TOilBallFv
__dt__8TOilBallFv: # 0x800db1b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db220
    lis     r3, 0x803c
    subi    r3, r3, 0x6b7c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800db210
    lis     r3, 0x803c
    subi    r3, r3, 0x6a14
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800db210:
    extsh.  r0, r31
    ble-    branch_0x800db220
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db220:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBEelTearsFv
__dt__10TBEelTearsFv: # 0x800db23c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db28c
    lis     r3, 0x803c
    subi    r3, r3, 0x6a14
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800db28c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db28c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TBEelTearsManagerFv
__dt__17TBEelTearsManagerFv: # 0x800db2a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db2f0
    lis     r3, 0x803c
    subi    r0, r3, 0x68fc
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800db2f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db2f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TBEelTearsDropFv
__dt__14TBEelTearsDropFv: # 0x800db30c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800db374
    lis     r3, 0x803c
    subi    r3, r3, 0x68a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800db364
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800db364:
    extsh.  r0, r31
    ble-    branch_0x800db374
    mr      r3, r30
    bl      __dl__FPv
branch_0x800db374:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_bosseel_cpp
__sinit_bosseel_cpp: # 0x800db390
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1f20
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800db3d8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800db3d8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800db408
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800db408:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800db438
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800db438:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800db468
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800db468:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800db498
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800db498:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800db4c8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800db4c8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800db4f8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800db4f8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800db528
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800db528:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800db558
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800db558:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800db588
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800db588:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800db5b8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x144
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800db5b8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800db5e8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x150
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800db5e8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800db618
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x15c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800db618:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800db648
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x168
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800db648:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800db678
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x174
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800db678:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__14TBEelTearsDropFv
_32___dt__14TBEelTearsDropFv: # 0x800db68c
    subi    r3, r3, 0x20
    b       __dt__14TBEelTearsDropFv


.globl _32___dt__10TBEelTearsFv
_32___dt__10TBEelTearsFv: # 0x800db694
    subi    r3, r3, 0x20
    b       __dt__10TBEelTearsFv


.globl _32___dt__8TOilBallFv
_32___dt__8TOilBallFv: # 0x800db69c
    subi    r3, r3, 0x20
    b       __dt__8TOilBallFv


.globl _32___dt__13TBossEelToothFv
_32___dt__13TBossEelToothFv: # 0x800db6a4
    subi    r3, r3, 0x20
    b       __dt__13TBossEelToothFv


.globl _32___dt__14TBossEelVortexFv
_32___dt__14TBossEelVortexFv: # 0x800db6ac
    subi    r3, r3, 0x20
    b       __dt__14TBossEelVortexFv


.globl _32___dt__17TBossEelCollisionFv
_32___dt__17TBossEelCollisionFv: # 0x800db6b4
    subi    r3, r3, 0x20
    b       __dt__17TBossEelCollisionFv


.globl _32___dt__21TBossEelBodyCollisionFv
_32___dt__21TBossEelBodyCollisionFv: # 0x800db6bc
    subi    r3, r3, 0x20
    b       __dt__21TBossEelBodyCollisionFv


.globl _32___dt__20TBossEelAwaCollisionFv
_32___dt__20TBossEelAwaCollisionFv: # 0x800db6c4
    subi    r3, r3, 0x20
    b       __dt__20TBossEelAwaCollisionFv


.globl _32___dt__24TBossEelBarrierCollisionFv
_32___dt__24TBossEelBarrierCollisionFv: # 0x800db6cc
    subi    r3, r3, 0x20
    b       __dt__24TBossEelBarrierCollisionFv


.globl _32___dt__29TBossEelTearsRecoverCollisionFv
_32___dt__29TBossEelTearsRecoverCollisionFv: # 0x800db6d4
    subi    r3, r3, 0x20
    b       __dt__29TBossEelTearsRecoverCollisionFv


.globl _32___dt__8TBossEelFv
_32___dt__8TBossEelFv: # 0x800db6dc
    subi    r3, r3, 0x20
    b       __dt__8TBossEelFv

