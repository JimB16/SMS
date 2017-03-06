
.globl __dt__16TMapObjTreeScaleFv
__dt__16TMapObjTreeScaleFv: # 0x801f5f68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f5fe8
    lis     r3, 0x803d
    addi    r3, r3, 0x5ca8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5fd8
    lis     r3, 0x803d
    addi    r3, r3, 0x5e84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f5fd8
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801f5fd8:
    extsh.  r0, r31
    ble-    branch_0x801f5fe8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f5fe8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRadiusAtY__11TMapObjTreeCFf
getRadiusAtY__11TMapObjTreeCFf: # 0x801f6004
    lfs     f3, 0x5c(r3)
    lfs     f0, 0x14(r3)
    lfs     f4, 0x148(r3)
    fadds   f0, f0, f3
    lfs     f2, 0x14c(r3)
    fsubs   f2, f2, f4
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fdivs   f0, f0, f3
    fadds   f1, f4, f0
    blr


.globl __ct__16TMapObjTreeScaleFPCc
__ct__16TMapObjTreeScaleFPCc: # 0x801f6030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    stw     r3, 0x8(sp)
    lwz     r30, 0x8(sp)
    mr      r3, r30
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5e84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r30)
    addi    r8, r3, 0x5ca8
    lis     r3, 0x8002
    lfs     f0, -0x2060(rtoc)
    addi    r4, r3, 0x10dc
    li      r31, 0x0
    stfs    f0, 0x148(r30)
    li      r9, 0x1
    addi    r0, r8, 0x24
    stfs    f0, 0x14c(r30)
    addi    r3, r30, 0x170
    li      r5, 0x0
    stw     r31, 0x150(r30)
    li      r6, 0xc
    li      r7, 0x1e
    stw     r31, 0x154(r30)
    stb     r9, 0x158(r30)
    stfs    f0, 0x15c(r30)
    stfs    f0, 0x160(r30)
    stfs    f0, 0x164(r30)
    stfs    f0, 0x168(r30)
    stw     r31, 0x16c(r30)
    stw     r8, 0x0(r30)
    stw     r0, 0x20(r30)
    bl      __construct_array
    stw     r31, 0x2d8(r30)
    li      r0, 0x3
    mtctr   r0
    li      r3, 0x0
    stw     r31, 0x2dc(r30)
    stw     r31, 0x2e0(r30)
    lfs     f0, -0x2060(rtoc)
branch_0x801f60f0:
    addi    r0, r31, 0x178
    stfsx   f0, r30, r0
    addi    r4, r31, 0x174
    addi    r0, r31, 0x170
    stfsx   f0, r30, r4
    addi    r5, r31, 0x184
    addi    r4, r31, 0x180
    stfsx   f0, r30, r0
    addi    r0, r31, 0x17c
    addi    r8, r31, 0x190
    stfsx   f0, r30, r5
    addi    r7, r31, 0x18c
    addi    r6, r31, 0x188
    stfsx   f0, r30, r4
    addi    r5, r31, 0x19c
    addi    r4, r31, 0x198
    stfsx   f0, r30, r0
    addi    r0, r31, 0x194
    addi    r28, r31, 0x1a8
    stfsx   f0, r30, r8
    addi    r29, r31, 0x1a4
    addi    r12, r31, 0x1a0
    stfsx   f0, r30, r7
    addi    r11, r31, 0x1b4
    addi    r10, r31, 0x1b0
    stfsx   f0, r30, r6
    addi    r9, r31, 0x1ac
    addi    r8, r31, 0x1c0
    stfsx   f0, r30, r5
    addi    r7, r31, 0x1bc
    addi    r6, r31, 0x1b8
    stfsx   f0, r30, r4
    addi    r5, r31, 0x1cc
    addi    r4, r31, 0x1c8
    stfsx   f0, r30, r0
    addi    r0, r31, 0x1c4
    addi    r3, r3, 0x8
    stfsx   f0, r30, r28
    addi    r31, r31, 0x60
    stfsx   f0, r30, r29
    stfsx   f0, r30, r12
    stfsx   f0, r30, r11
    stfsx   f0, r30, r10
    stfsx   f0, r30, r9
    stfsx   f0, r30, r8
    stfsx   f0, r30, r7
    stfsx   f0, r30, r6
    stfsx   f0, r30, r5
    stfsx   f0, r30, r4
    stfsx   f0, r30, r0
    bdnz+      branch_0x801f60f0
    subfic  r0, r3, 0x1e
    lfs     f0, -0x2060(rtoc)
    cmpwi   r3, 0x1e
    mtctr   r0
    mulli   r3, r3, 0xc
    lwz     r5, 0x8(sp)
    bge-    branch_0x801f61f8
branch_0x801f61d8:
    addi    r0, r3, 0x178
    stfsx   f0, r5, r0
    addi    r4, r3, 0x174
    addi    r0, r3, 0x170
    stfsx   f0, r5, r4
    addi    r3, r3, 0xc
    stfsx   f0, r5, r0
    bdnz+      branch_0x801f61d8
branch_0x801f61f8:
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__11TMapObjTreeFv
__dt__11TMapObjTreeFv: # 0x801f621c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f629c
    lis     r3, 0x803d
    addi    r3, r3, 0x5e84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f628c
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801f628c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801f628c:
    extsh.  r0, r31
    ble-    branch_0x801f629c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f629c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__16TMapObjTreeScaleFv
loadAfter__16TMapObjTreeScaleFv: # 0x801f62b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    bl      loadAfter__14TMapObjGeneralFv
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x801f6304
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x801f63a0
branch_0x801f6304:
    lfs     f0, -0x77d8(r13)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    bl      sleep__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x50(r31)
    mr      r3, r31
    stfs    f0, 0x58(r31)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, -0x205c(rtoc)
    mr      r3, r31
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r0, 0xf8(r31)
    lis     r3, 0x4000
    addi    r4, r3, 0x3b
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    li      r0, 0xb
    addi    r3, r31, 0x0
    stw     r4, 0x4c(r31)
    sth     r0, 0xfc(r31)
    bl      getModel__10TLiveActorCFv
    bl      SMS_HideAllShapePacket__FP8J3DModel
branch_0x801f63a0:
    lwz     r4, -0x5db8(r13)
    lis     r3, 0x8039
    addi    r30, r3, 0x3d20
    lwz     r29, 0x4(r4)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    stw     r3, 0x2e0(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl control__16TMapObjTreeScaleFv
control__16TMapObjTreeScaleFv: # 0x801f63f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    lhz     r0, 0xfc(r3)
    cmpwi   r0, 0xc
    beq-    branch_0x801f6490
    bge-    branch_0x801f6430
    cmpwi   r0, 0xb
    bge-    branch_0x801f643c
    b       branch_0x801f65c8

branch_0x801f6430:
    cmpwi   r0, 0xe
    bge-    branch_0x801f65c8
    b       branch_0x801f64ec

branch_0x801f643c:
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x801f65d0
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x801f65d0
    mr      r3, r31
    bl      awake__11TMapObjBaseFv
    lis     r3, 0x4000
    addi    r0, r3, 0x39
    stw     r0, 0x4c(r31)
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    li      r0, 0xc
    sth     r0, 0xfc(r31)
    b       branch_0x801f65d0

branch_0x801f6490:
    lwz     r3, -0x6044(r13)
    li      r4, 0x300f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f64c0
    addi    r4, r31, 0x10
    li      r3, 0x300f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801f64c0:
    lfs     f1, 0x28(r31)
    lfs     f0, -0x77e4(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, -0x77e0(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801f65d0
    li      r0, 0xd
    sth     r0, 0xfc(r31)
    b       branch_0x801f65d0

branch_0x801f64ec:
    lwz     r3, -0x6044(r13)
    li      r4, 0x300f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801f651c
    addi    r4, r31, 0x10
    li      r3, 0x300f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801f651c:
    lfs     f1, 0x28(r31)
    lfs     f0, -0x2058(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f653c
    lfs     f0, -0x77e4(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    b       branch_0x801f6540

branch_0x801f653c:
    stfs    f0, 0x28(r31)
branch_0x801f6540:
    lfs     f1, 0x24(r31)
    lfs     f0, -0x2058(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f6570
    lfs     f0, -0x77dc(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x2c(r31)
    lfs     f0, -0x77dc(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(r31)
    b       branch_0x801f65d0

branch_0x801f6570:
    stfs    f0, 0x24(r31)
    mr      r3, r31
    stfs    f0, 0x2c(r31)
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    b       branch_0x801f65d0

branch_0x801f65c8:
    mr      r3, r31
    bl      control__14TMapObjGeneralFv
branch_0x801f65d0:
    lhz     r3, 0xfc(r31)
    cmplwi  r3, 0xc
    bne-    branch_0x801f65e4
    li      r0, 0x1
    b       branch_0x801f65e8

branch_0x801f65e4:
    li      r0, 0x0
branch_0x801f65e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f660c
    cmplwi  r3, 0xd
    bne-    branch_0x801f6600
    li      r0, 0x1
    b       branch_0x801f6604

branch_0x801f6600:
    li      r0, 0x0
branch_0x801f6604:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f6790
branch_0x801f660c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x801f6674
    lbz     r3, 0x124(r3)
    li      r0, 0x1
    cmplwi  r3, 0x3
    beq-    branch_0x801f6650
    cmplwi  r3, 0x4
    beq-    branch_0x801f6650
    li      r0, 0x0
branch_0x801f6650:
    clrlwi. r0, r0, 24
    bne-    branch_0x801f6694
    lwz     r3, 0x2e0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801f6674
    li      r4, 0x1
    bl      isBuried__13TMapEventSinkCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x801f6694
branch_0x801f6674:
    lwz     r3, -0x60f0(r13)
    addi    r5, r31, 0x10
    li      r4, 0x13
    bl      start__9RumbleMgrFiP3Vec
    lwz     r3, -0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x2058(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
branch_0x801f6694:
    lwz     r3, 0x2dc(r31)
    lwz     r0, -0x77d4(r13)
    cmpw    r3, r0
    ble-    branch_0x801f6784
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x2048(rtoc)
    stw     r0, 0x64(sp)
    lis     r30, 0x4330
    lfs     f3, -0x2054(rtoc)
    stw     r30, 0x60(sp)
    lfs     f2, -0x2050(rtoc)
    lfd     f0, 0x60(sp)
    lfs     f1, 0x18(r31)
    fsubs   f4, f0, f4
    lfs     f0, -0x204c(rtoc)
    lfs     f31, 0x14(r31)
    fmuls   f3, f3, f4
    fmadds  f1, f2, f3, f1
    fsubs   f30, f1, f0
    bl      rand
    xoris   r3, r3, 0x8000
    lwz     r0, 0x2d8(r31)
    stw     r3, 0x5c(sp)
    addi    r7, r31, 0x0
    mulli   r3, r0, 0xc
    lfd     f1, -0x2048(rtoc)
    stw     r30, 0x58(sp)
    lfs     f3, -0x2054(rtoc)
    lfd     f0, 0x58(sp)
    addi    r3, r3, 0x170
    lfs     f2, -0x2050(rtoc)
    fsubs   f4, f0, f1
    lfs     f1, 0x10(r31)
    lfs     f0, -0x204c(rtoc)
    add     r3, r31, r3
    li      r4, 0x1db
    fmuls   f3, f3, f4
    li      r6, 0x2
    fmadds  f1, f2, f3, f1
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    stfs    f31, 0x4(r3)
    stfs    f30, 0x8(r3)
    lwz     r0, 0x2d8(r31)
    lwz     r3, -0x6070(r13)
    mulli   r5, r0, 0xc
    addi    r5, r5, 0x170
    add     r5, r31, r5
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x2d8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x2d8(r31)
    lwz     r0, 0x2d8(r31)
    cmpwi   r0, 0x1e
    blt-    branch_0x801f677c
    li      r0, 0x0
    stw     r0, 0x2d8(r31)
branch_0x801f677c:
    li      r0, 0x0
    stw     r0, 0x2dc(r31)
branch_0x801f6784:
    lwz     r3, 0x2dc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x2dc(r31)
branch_0x801f6790:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl touchWater__16TMapObjTreeScaleFP9THitActor
touchWater__16TMapObjTreeScaleFP9THitActor: # 0x801f67b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f1, -0x2058(rtoc)
    lfs     f0, 0x24(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801f67e0
    mr      r3, r31
    bl      touchWater__14TMapObjGeneralFP9THitActor
    b       branch_0x801f6828

branch_0x801f67e0:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0xb
    bne-    branch_0x801f67f4
    li      r0, 0x1
    b       branch_0x801f67f8

branch_0x801f67f4:
    li      r0, 0x0
branch_0x801f67f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f6824
    mr      r3, r31
    bl      awake__11TMapObjBaseFv
    lis     r3, 0x4000
    addi    r0, r3, 0x39
    stw     r0, 0x4c(r31)
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    li      r0, 0xc
    sth     r0, 0xfc(r31)
branch_0x801f6824:
    li      r3, 0x1
branch_0x801f6828:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__11TMapObjTreeFPCc
__ct__11TMapObjTreeFPCc: # 0x801f683c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__14TMapObjGeneralFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x5e84
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    lfs     f0, -0x2060(rtoc)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x14c(r31)
    stw     r4, 0x150(r31)
    stw     r4, 0x154(r31)
    stb     r0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x168(r31)
    stw     r4, 0x16c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__11TMapObjTreeFv
initMapObj__11TMapObjTreeFv: # 0x801f68b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r25, 0x74(sp)
    mr      r29, r3
    bl      initMapObj__14TMapObjGeneralFv
    mr      r3, r29
    bl      initEach__11TMapObjTreeFv
    lwz     r25, 0x150(r29)
    mulli   r3, r25, 0x3c
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801f
    addi    r4, r4, 0x6ef4
    addi    r7, r25, 0x0
    li      r5, 0x0
    li      r6, 0x3c
    bl      __construct_new_array
    lis     r4, 0x8039
    stw     r3, 0x154(r29)
    lis     r3, 0x8039
    addi    r27, r4, 0x3d58
    addi    r26, r3, 0x3d40
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x801f6a30

branch_0x801f691c:
    lwz     r0, 0x154(r29)
    li      r3, 0x60
    add     r30, r0, r28
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x801f693c
    mr      r3, r25
    bl      __ct__17TMapCollisionMoveFv
branch_0x801f693c:
    stw     r25, 0x8(r30)
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x38
    bne-    branch_0x801f6958
    li      r0, 0x1
    b       branch_0x801f695c

branch_0x801f6958:
    li      r0, 0x0
branch_0x801f695c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f6980
    addi    r5, r26, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2c
    addi    r6, r31, 0x1
    li      r4, 0x100
    bl      snprintf
    b       branch_0x801f699c

branch_0x801f6980:
    lwz     r6, 0xf4(r29)
    addi    r5, r27, 0x0
    addi    r3, sp, 0x2c
    crxor   6, 6, 6
    addi    r7, r31, 0x1
    li      r4, 0x100
    bl      snprintf
branch_0x801f699c:
    lwz     r3, 0x8(r30)
    addi    r6, r29, 0x0
    addi    r4, sp, 0x2c
    lwz     r12, 0x0(r3)
    li      r5, 0x0
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8(r30)
    extsh   r4, r31
    bl      setAllData__17TMapCollisionBaseFs
    lwz     r3, 0x8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x150(r29)
    addi    r3, r29, 0x0
    subf    r25, r31, r0
    bl      getModel__10TLiveActorCFv
    mulli   r0, r25, 0x30
    lwz     r3, 0x58(r3)
    addi    r25, r30, 0xc
    add     r4, r3, r0
    addi    r3, r25, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r30, 0x8(r30)
    addi    r3, r25, 0x0
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
    addi    r28, r28, 0x3c
branch_0x801f6a30:
    lwz     r0, 0x150(r29)
    cmpw    r31, r0
    blt+    branch_0x801f691c
    lwz     r3, 0xec(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801f6a50
    li      r0, 0x0
    stw     r0, 0x10(r3)
branch_0x801f6a50:
    lmw     r25, 0x74(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl initEach__11TMapObjTreeFv
initEach__11TMapObjTreeFv: # 0x801f6a64
    lis     r4, 0x4000
    lwz     r5, 0x4c(r3)
    addi    r0, r4, 0x37
    cmpw    r5, r0
    beq-    branch_0x801f6b60
    bge-    branch_0x801f6a9c
    addi    r0, r4, 0x35
    cmpw    r5, r0
    beq-    branch_0x801f6ae8
    bge-    branch_0x801f6b24
    addi    r0, r4, 0x34
    cmpw    r5, r0
    bge-    branch_0x801f6aac
    blr

branch_0x801f6a9c:
    addi    r0, r4, 0x39
    cmpw    r5, r0
    beq-    branch_0x801f6b9c
    bgelr-    

branch_0x801f6aac:
    lfs     f0, -0x2040(rtoc)
    li      r0, 0xc
    stfs    f0, 0x148(r3)
    lfs     f0, -0x203c(rtoc)
    stfs    f0, 0x14c(r3)
    stw     r0, 0x150(r3)
    lfs     f0, -0x2038(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x2034(rtoc)
    stfs    f0, 0x160(r3)
    lfs     f0, -0x2030(rtoc)
    stfs    f0, 0x164(r3)
    lfs     f0, -0x202c(rtoc)
    stfs    f0, 0x168(r3)
    blr

branch_0x801f6ae8:
    lfs     f0, -0x2040(rtoc)
    li      r0, 0x8
    stfs    f0, 0x148(r3)
    lfs     f0, -0x2028(rtoc)
    stfs    f0, 0x14c(r3)
    stw     r0, 0x150(r3)
    lfs     f0, -0x2038(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x2034(rtoc)
    stfs    f0, 0x160(r3)
    lfs     f0, -0x2030(rtoc)
    stfs    f0, 0x164(r3)
    lfs     f0, -0x202c(rtoc)
    stfs    f0, 0x168(r3)
    blr

branch_0x801f6b24:
    lfs     f0, -0x2024(rtoc)
    li      r0, 0xc
    stfs    f0, 0x148(r3)
    lfs     f0, -0x2028(rtoc)
    stfs    f0, 0x14c(r3)
    stw     r0, 0x150(r3)
    lfs     f0, -0x2038(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x2034(rtoc)
    stfs    f0, 0x160(r3)
    lfs     f0, -0x2030(rtoc)
    stfs    f0, 0x164(r3)
    lfs     f0, -0x202c(rtoc)
    stfs    f0, 0x168(r3)
    blr

branch_0x801f6b60:
    lfs     f0, -0x203c(rtoc)
    li      r0, 0x8
    stfs    f0, 0x148(r3)
    lfs     f0, -0x2020(rtoc)
    stfs    f0, 0x14c(r3)
    stw     r0, 0x150(r3)
    lfs     f0, -0x2038(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x2034(rtoc)
    stfs    f0, 0x160(r3)
    lfs     f0, -0x2030(rtoc)
    stfs    f0, 0x164(r3)
    lfs     f0, -0x202c(rtoc)
    stfs    f0, 0x168(r3)
    blr

branch_0x801f6b9c:
    lfs     f0, -0x201c(rtoc)
    li      r0, 0x8
    stfs    f0, 0x148(r3)
    lfs     f0, -0x2028(rtoc)
    stfs    f0, 0x14c(r3)
    stw     r0, 0x150(r3)
    lfs     f0, -0x2018(rtoc)
    stfs    f0, 0x15c(r3)
    lfs     f0, -0x2014(rtoc)
    stfs    f0, 0x160(r3)
    lfs     f0, -0x2010(rtoc)
    stfs    f0, 0x164(r3)
    lfs     f0, -0x200c(rtoc)
    stfs    f0, 0x168(r3)
    blr


.globl perform__11TMapObjTreeFUlPQ26JDrama9TGraphics
perform__11TMapObjTreeFUlPQ26JDrama9TGraphics: # 0x801f6bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lbz     r0, 0x158(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801f6c50
    clrlwi. r0, r28, 31
    beq-    branch_0x801f6c50
    li      r31, 0x0
    li      r30, 0x0
    b       branch_0x801f6c28

branch_0x801f6c14:
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      controlLeaf__11TMapObjTreeFi
    add     r31, r31, r3
    addi    r30, r30, 0x1
branch_0x801f6c28:
    lwz     r3, 0x150(r27)
    cmpw    r30, r3
    blt+    branch_0x801f6c14
    lhz     r0, 0x48(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x801f6c50
    cmpw    r31, r3
    bne-    branch_0x801f6c50
    li      r0, 0x1
    stb     r0, 0x158(r27)
branch_0x801f6c50:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__14TMapObjGeneralFUlPQ26JDrama9TGraphics
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl controlLeaf__11TMapObjTreeFi
controlLeaf__11TMapObjTreeFi: # 0x801f6c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    mr      r31, r4
    mulli   r0, r31, 0x3c
    stw     r30, 0xc8(sp)
    stw     r29, 0xc4(sp)
    stw     r28, 0xc0(sp)
    addi    r28, r3, 0x0
    lwz     r3, 0x154(r3)
    lfs     f3, -0x2060(rtoc)
    add     r29, r3, r0
    lfs     f1, 0x4(r29)
    fcmpu   cr0, f3, f1
    bne-    branch_0x801f6cf8
    lwz     r3, -0x60a0(r13)
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x801f6cf0
    addi    r31, sp, 0x90
    addi    r4, r29, 0xc
    addi    r3, r31, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lwz     r3, 0x8(r29)
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801f6cf0:
    li      r3, 0x1
    b       branch_0x801f6e10

branch_0x801f6cf8:
    lfs     f0, 0x0(r29)
    addi    r3, sp, 0x60
    addi    r4, sp, 0x24
    fadds   f0, f0, f1
    stfs    f0, 0x0(r29)
    lfs     f2, 0x0(r29)
    lfs     f1, 0x164(r28)
    lfs     f0, 0x4(r29)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x4(r29)
    lfs     f1, 0x4(r29)
    lfs     f0, 0x168(r28)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r29)
    stfs    f3, 0x8c(sp)
    lfs     f0, -0x2058(rtoc)
    stfs    f3, 0x7c(sp)
    stfs    f3, 0x6c(sp)
    stfs    f3, 0x78(sp)
    stfs    f3, 0x68(sp)
    stfs    f3, 0x84(sp)
    stfs    f3, 0x64(sp)
    stfs    f3, 0x80(sp)
    stfs    f3, 0x70(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x74(sp)
    stfs    f3, 0x28(sp)
    stfs    f0, 0x60(sp)
    stfs    f3, 0x2c(sp)
    lfs     f1, 0x0(r29)
    bl      PSMTXRotAxisRad
    addi    r30, sp, 0x30
    addi    r4, r29, 0xc
    addi    r3, r30, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x60
    bl      PSMTXConcat
    lwz     r0, 0x150(r28)
    addi    r3, r28, 0x0
    subf    r31, r31, r0
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r4, 0x58(r3)
    addi    r3, r30, 0x0
    add     r4, r4, r0
    bl      PSMTXCopy
    lwz     r3, -0x60a0(r13)
    lfs     f0, -0x2060(rtoc)
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801f6dec
    lwz     r3, 0x8(r29)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801f6dec:
    lfs     f1, 0x0(r29)
    lfs     f0, 0x15c(r28)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f6e0c
    bge-    branch_0x801f6e0c
    li      r3, 0x1
    b       branch_0x801f6e10

branch_0x801f6e0c:
    li      r3, 0x0
branch_0x801f6e10:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    lwz     r28, 0xc0(sp)
    addi    sp, sp, 0xd0
    blr


.globl touchPlayer__11TMapObjTreeFP9THitActor
touchPlayer__11TMapObjTreeFP9THitActor: # 0x801f6e30
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stb     r0, 0x158(r3)
    lwz     r3, -0x608c(r13)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x44(r3)
    lha     r31, 0x2(r3)
    cmplw   r0, r30
    bne-    branch_0x801f6edc
    extsh.  r0, r31
    blt-    branch_0x801f6edc
    lwz     r0, 0x150(r30)
    cmpw    r31, r0
    blt-    branch_0x801f6e80
    b       branch_0x801f6edc

branch_0x801f6e80:
    mr      r3, r30
    bl      marioHipAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f6eb0
    mulli   r0, r31, 0x3c
    lwz     r3, 0x154(r30)
    lfs     f0, 0x160(r30)
    add     r3, r3, r0
    lfs     f1, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    b       branch_0x801f6edc

branch_0x801f6eb0:
    mr      r3, r30
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801f6edc
    mulli   r0, r31, 0x3c
    lwz     r3, 0x154(r30)
    lfs     f0, 0x15c(r30)
    add     r3, r3, r0
    lfs     f1, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
branch_0x801f6edc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__11TMapObjLeafFv
__ct__11TMapObjLeafFv: # 0x801f6ef4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x40(sp)
    lfs     f0, -0x2060(rtoc)
    stfs    f0, 0x0(r3)
    stfs    f0, 0x4(r3)
    li      r3, 0x60
    stw     r0, 0x8(r31)
    stfs    f0, 0x38(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x18(r31)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x14(r31)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x1c(r31)
    lfs     f0, -0x2058(rtoc)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x20(r31)
    stfs    f0, 0xc(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801f6f6c
    mr      r3, r30
    bl      __ct__17TMapCollisionMoveFv
branch_0x801f6f6c:
    stw     r30, 0x8(r31)
    mr      r3, r31
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __sinit_MapObjTree_cpp
__sinit_MapObjTree_cpp: # 0x801f6f8c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5848
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801f6fd4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801f6fd4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7004
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801f7004:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7034
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801f7034:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7064
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801f7064:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7094
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801f7094:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801f70c4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801f70c4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801f70f4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801f70f4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7124
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801f7124:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7154
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801f7154:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7184
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801f7184:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801f71b4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801f71b4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801f71e4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801f71e4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7214
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801f7214:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7244
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801f7244:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801f7274
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801f7274:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TMapObjTreeFv
_32___dt__11TMapObjTreeFv: # 0x801f7288
    subi    r3, r3, 0x20
    b       __dt__11TMapObjTreeFv


.globl _32___dt__16TMapObjTreeScaleFv
_32___dt__16TMapObjTreeScaleFv: # 0x801f7290
    subi    r3, r3, 0x20
    b       __dt__16TMapObjTreeScaleFv

