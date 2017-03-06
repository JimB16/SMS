
.globl __dt__13TPinnaCoasterFv
__dt__13TPinnaCoasterFv: # 0x801d3f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d3ff0
    lis     r3, 0x803d
    addi    r3, r3, 0x1a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d3fe0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d3fe0:
    extsh.  r0, r31
    ble-    branch_0x801d3ff0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d3ff0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__13TPinnaCoasterFPCc
__ct__13TPinnaCoasterFPCc: # 0x801d400c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1a0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    lfs     f0, -0x2750(rtoc)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__13TPinnaCoasterFv
initMapObj__13TPinnaCoasterFv: # 0x801d4068
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x70(r31)
    bl      getMActorAnmData__11TObjManagerFv
    lis     r5, 0x8039
    addi    r4, r3, 0x0
    addi    r3, r5, 0x1f98
    li      r5, 0x3
    lis     r6, 0x1021
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x138(r31)
    lis     r3, 0x8039
    addi    r4, r3, 0x1fb8
    lwz     r3, 0x138(r31)
    bl      setBck__6MActorFPCc
    lfs     f0, 0x38(r31)
    lfs     f2, -0x274c(rtoc)
    lfs     f1, 0x34(r31)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    lwz     r3, 0x138(r31)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lwz     r3, 0x4(r3)
    fctiwz  f5, f2
    lfs     f3, 0x18(r31)
    fctiwz  f0, f0
    stfd    f5, 0x38(sp)
    addi    r3, r3, 0x20
    lfs     f2, 0x14(r31)
    stfd    f4, 0x30(sp)
    lfs     f1, 0x10(r31)
    stfd    f0, 0x28(sp)
    lwz     r4, 0x3c(sp)
    lwz     r5, 0x34(sp)
    lwz     r6, 0x2c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x2748(rtoc)
    li      r4, 0x0
    lwz     r3, 0x138(r31)
    fmuls   f31, f1, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x140(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x144(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x148(r31)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl control__13TPinnaCoasterFv
control__13TPinnaCoasterFv: # 0x801d4160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    bl      control__11TMapObjBaseFv
    lwz     r3, 0x138(r31)
    bl      frameUpdate__6MActorFv
    lwz     r3, 0x138(r31)
    bl      calc__6MActorFv
    lwz     r4, 0x138(r31)
    mr      r3, r31
    lwz     r4, 0x4(r4)
    lwz     r30, 0x58(r4)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r31)
    bl      frameUpdate__6MActorFv
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x140(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x144(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x148(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lwz     r0, 0x54(sp)
    lwz     r3, 0x58(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x5c(sp)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x68(sp)
    lfs     f2, 0x6c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r0, -0x6288(r13)
    fmr     f31, f1
    cmpwi   r0, 0x0
    beq-    branch_0x801d42b8
    lwz     r3, -0x6044(r13)
    li      r4, 0x305a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d42b8
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x305a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d42b8:
    lwz     r0, -0x6288(r13)
    xori     r0, r0, 0x1
    stw     r0, -0x6288(r13)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x140(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x144(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x148(r31)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl touchPlayer__8TAmiKingFP9THitActor
touchPlayer__8TAmiKingFP9THitActor: # 0x801d42f8
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl bind__8TAmiKingFv
bind__8TAmiKingFv: # 0x801d431c
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801d435c
    lfs     f1, 0x14(r5)
    addi    r4, r5, 0xc4
    lfs     f0, 0xc0(r5)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r5)
    lfs     f3, 0x18(r5)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    b       branch_0x801d4364

branch_0x801d435c:
    mr      r3, r5
    bl      bind__10TLiveActorFv
branch_0x801d4364:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__8TAmiKingFv
calc__8TAmiKingFv: # 0x801d4374
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x184
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r0, 0x138(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801d44ac
    lwz     r3, 0x74(r31)
    lwz     r4, 0x4(r3)
    addi    r3, sp, 0x5c
    lwz     r4, 0x58(r4)
    addi    r4, r4, 0x120
    lfs     f2, 0x2c(r4)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0xc(r4)
    stfs    f0, 0x13c(r31)
    stfs    f1, 0x140(r31)
    stfs    f2, 0x144(r31)
    lfs     f1, -0x2750(rtoc)
    stfs    f1, 0x8c(sp)
    fmr     f3, f1
    stfs    f1, 0x90(sp)
    lfs     f0, -0x2740(rtoc)
    stfs    f0, 0x94(sp)
    lfs     f2, 0x34(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x8c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x5c
    bl      PSMTXMultVec
    lfs     f1, 0x13c(r31)
    mr      r7, r31
    lfs     f0, 0x8c(sp)
    addi    r5, r31, 0x13c
    li      r4, 0x124
    fadds   f0, f1, f0
    li      r6, 0x1
    stfs    f0, 0x13c(r31)
    lfs     f1, 0x140(r31)
    lfs     f0, 0x90(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x94(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801d4478
    lfs     f0, -0x273c(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x801d4478:
    lwz     r3, -0x6044(r13)
    li      r4, 0x214f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d44dc
    addi    r4, r31, 0x10
    li      r3, 0x214f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801d44dc

branch_0x801d44ac:
    lwz     r3, -0x6044(r13)
    li      r4, 0x2120
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d44dc
    addi    r4, r31, 0x10
    li      r3, 0x2120
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d44dc:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl moveObject__8TAmiKingFv
moveObject__8TAmiKingFv: # 0x801d44f0
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r4, 0x1ea0
    stw     r30, 0xd0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xcc(sp)
    bl      moveObject__10TLiveActorFv
    lbz     r0, 0x138(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801d4714
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x124
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x801d4564
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801d483c
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x13c
    bl      setBck__6MActorFPCc
    b       branch_0x801d483c

branch_0x801d4564:
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801d4594
    cmplwi  r3, 0x101
    beq-    branch_0x801d4594
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801d4594
    cmplwi  r3, 0x4104
    bne-    branch_0x801d459c
branch_0x801d4594:
    li      r0, 0x1
    b       branch_0x801d45a0

branch_0x801d459c:
    li      r0, 0x0
branch_0x801d45a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d483c
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801d45bc
    li      r0, 0x1
    b       branch_0x801d45c0

branch_0x801d45bc:
    li      r0, 0x0
branch_0x801d45c0:
    cmpwi   r0, 0x0
    bne-    branch_0x801d483c
    lwz     r3, -0x6044(r13)
    li      r4, 0x2921
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d45f8
    addi    r4, r30, 0x10
    li      r3, 0x2921
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d45f8:
    lwz     r5, 0x74(r30)
    li      r4, 0xca
    lwz     r3, -0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801d463c
    lfs     f0, -0x2738(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x801d463c:
    lwz     r3, -0x70b0(r13)
    addi    r4, r30, 0x10
    addi    r5, r31, 0x154
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x801d4674
    lfs     f0, -0x2738(rtoc)
    addi    r4, r30, 0x10
    addi    r5, sp, 0xac
    stfs    f0, 0xac(sp)
    stfs    f0, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x801d4674:
    lwz     r3, -0x62b0(r13)
    addi    r4, r31, 0x170
    lfs     f1, 0x10(r30)
    addi    r5, r31, 0x190
    lfs     f2, 0x14(r30)
    lfs     f3, 0x18(r30)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x1a8
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1a8
    mtlr    r12
    blrl
    li      r0, 0x0
    lwz     r5, -0x6048(r13)
    sth     r0, 0xa4(sp)
    addi    r0, sp, 0xa4
    lis     r4, 0x801d
    stw     r0, 0x8(sp)
    addi    r9, r3, 0x0
    addi    r8, r4, 0x6ad0
    lfs     f1, -0x2750(rtoc)
    addi    r3, r5, 0x0
    addi    r4, r31, 0x1b4
    addi    r5, r9, 0x10
    li      r6, -0x1
    li      r7, 0x1
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801d483c

branch_0x801d4714:
    lwz     r3, 0xc4(r30)
    lwz     r4, 0x44(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801d483c
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x6a
    bne-    branch_0x801d483c
    lhz     r0, 0xfc(r4)
    cmplwi  r0, 0x3
    bne-    branch_0x801d4748
    li      r0, 0x1
    b       branch_0x801d474c

branch_0x801d4748:
    li      r0, 0x0
branch_0x801d474c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d47ac
    lhz     r3, 0xfc(r4)
    cmplwi  r3, 0x5
    bne-    branch_0x801d4768
    li      r0, 0x1
    b       branch_0x801d476c

branch_0x801d4768:
    li      r0, 0x0
branch_0x801d476c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d47ac
    cmplwi  r3, 0x4
    bne-    branch_0x801d4784
    li      r0, 0x1
    b       branch_0x801d4788

branch_0x801d4784:
    li      r0, 0x0
branch_0x801d4788:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d47ac
    cmplwi  r3, 0x6
    bne-    branch_0x801d47a0
    li      r0, 0x1
    b       branch_0x801d47a4

branch_0x801d47a0:
    li      r0, 0x0
branch_0x801d47a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d47b4
branch_0x801d47ac:
    li      r0, 0x1
    b       branch_0x801d47b8

branch_0x801d47b4:
    li      r0, 0x0
branch_0x801d47b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d483c
    li      r0, 0x1
    stb     r0, 0x138(r30)
    addi    r4, r31, 0x124
    lfs     f0, -0x2734(rtoc)
    stfs    f0, 0xac(r30)
    lfs     f0, -0x2730(rtoc)
    stfs    f0, 0xb0(r30)
    lfs     f0, -0x272c(rtoc)
    stfs    f0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setAnmSound__10TLiveActorFPCc
    li      r0, 0x0
    lwz     r3, -0x6048(r13)
    sth     r0, 0xa0(sp)
    addi    r0, sp, 0xa0
    addi    r4, r31, 0x1c8
    stw     r0, 0x8(sp)
    addi    r5, r30, 0x10
    li      r6, -0x1
    lfs     f1, -0x2750(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x801d483c:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    addi    sp, sp, 0xd8
    blr


.globl initMapObj__8TAmiKingFv
initMapObj__8TAmiKingFv: # 0x801d4858
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    lis     r4, 0x8039
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x2080
    bl      setBck__6MActorFPCc
    lis     r3, 0x8039
    addi    r4, r3, 0x2090
    addi    r3, r31, 0x0
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r0, 0xf0(r31)
    li      r6, 0x0
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r5, 0x74(r31)
    b       branch_0x801d48b4

branch_0x801d48b0:
    addi    r6, r6, 0x1
branch_0x801d48b4:
    lwz     r3, 0x4(r5)
    clrlwi  r4, r6, 24
    lwz     r3, 0x4(r3)
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x801d48b0
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl loadAfter__8TAmiKingFv
loadAfter__8TAmiKingFv: # 0x801d48e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      loadAfter__11TMapObjBaseFv
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x184
    lbz     r0, 0x184(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d4928
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x20b4
    li      r5, 0x184
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801d4928:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__16TWaterRecoverObjFP9THitActor
touchPlayer__16TWaterRecoverObjFP9THitActor: # 0x801d493c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r5, 0x4c(r4)
    addis   r0, r5, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801d4968
    li      r0, 0x1
    b       branch_0x801d496c

branch_0x801d4968:
    li      r0, 0x0
branch_0x801d496c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d49b8
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d4988
    li      r0, 0x1
    b       branch_0x801d498c

branch_0x801d4988:
    li      r0, 0x0
branch_0x801d498c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d49b8
    mr      r3, r4
    lwz     r12, 0x0(r4)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x258
    stw     r0, 0x104(r31)
branch_0x801d49b8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__14TPinnaEntranceFv
loadAfter__14TPinnaEntranceFv: # 0x801d49cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    lfs     f1, -0x2728(rtoc)
    lis     r3, 0x8039
    lfs     f0, -0x2724(rtoc)
    addi    r6, sp, 0xc
    stfs    f1, 0x18(sp)
    lfs     f1, -0x2750(rtoc)
    addi    r3, r3, 0x20d0
    stfs    f0, 0xc(sp)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x18
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x10(sp)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x14(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl load__15TBalloonKoopaJrFR20JSUMemoryInputStream
load__15TBalloonKoopaJrFR20JSUMemoryInputStream: # 0x801d4a34
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r5, 0x1ea0
    stw     r29, 0x34(sp)
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x5a
    lbz     r0, 0x5a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d4a8c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x23c
    li      r5, 0x5a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801d4a8c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x5b
    lbz     r0, 0x5b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d4abc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x260
    li      r5, 0x5b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801d4abc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x5c
    lbz     r0, 0x5c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d4aec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x284
    li      r5, 0x5c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801d4aec:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x2720
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r30, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x148(r31)
    stfs    f1, 0x14c(r31)
    stfs    f2, 0x150(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl kill__15TBalloonKoopaJrFv
kill__15TBalloonKoopaJrFv: # 0x801d4b54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      kill__14TMapObjGeneralFv
    addi    r3, r31, 0x0
    addi    r6, r31, 0x148
    li      r4, 0x5a
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x148
    li      r4, 0x5b
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x148
    li      r4, 0x5c
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lis     r4, 0x6
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x1
    li      r5, 0x1
    bl      incFlag__12TFlagManagerFUll
    lwz     r3, -0x6044(r13)
    li      r4, 0x28b8
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d4bec
    addi    r4, r31, 0x10
    li      r3, 0x28b8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d4bec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchActor__15TBalloonKoopaJrFP9THitActor
touchActor__15TBalloonKoopaJrFP9THitActor: # 0x801d4c00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__24TChangeStageMerrygoroundFv
calc__24TChangeStageMerrygoroundFv: # 0x801d4c2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x13c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801d4c7c
    lwz     r5, -0x60b4(r13)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x100
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r5, -0x60b4(r13)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x101
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801d4c7c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__24TChangeStageMerrygoroundFP9THitActor
touchPlayer__24TChangeStageMerrygoroundFP9THitActor: # 0x801d4c90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r0, 0x104(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x801d4cc0
    li      r0, 0x1
    b       branch_0x801d4cc4

branch_0x801d4cc0:
    li      r0, 0x0
branch_0x801d4cc4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d4d4c
    bl      SMS_GetYoshi__Fv
    lbz     r0, 0xd0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801d4d1c
    lwz     r3, -0x6044(r13)
    li      r4, 0x4840
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d4d04
    li      r3, 0x4840
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801d4d04:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      touchPlayer__18TMapObjChangeStageFP9THitActor
    li      r0, 0x1
    stb     r0, 0x13c(r30)
    b       branch_0x801d4d44

branch_0x801d4d1c:
    lwz     r3, -0x6044(r13)
    li      r4, 0x483e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d4d44
    li      r3, 0x483e
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801d4d44:
    li      r0, 0x258
    stw     r0, 0x104(r30)
branch_0x801d4d4c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __ct__13TMerrygoroundFPCc
__ct__13TMerrygoroundFPCc: # 0x801d4d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0xa70
    stw     r3, 0x0(r31)
    li      r6, 0x8
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
    li      r5, 0x0
    subfic  r0, r6, 0x9
    stw     r5, 0x1a0(r31)
    cmpwi   r6, 0x9
    mtctr   r0
    slwi    r4, r6, 2
    sth     r5, 0x1a4(r31)
    slwi    r3, r6, 1
    stw     r5, 0x138(r31)
    sth     r5, 0x140(r31)
    stw     r5, 0x13c(r31)
    sth     r5, 0x142(r31)
    stw     r5, 0x144(r31)
    sth     r5, 0x18c(r31)
    stw     r5, 0x168(r31)
    stw     r5, 0x148(r31)
    sth     r5, 0x18e(r31)
    stw     r5, 0x16c(r31)
    stw     r5, 0x14c(r31)
    sth     r5, 0x190(r31)
    stw     r5, 0x170(r31)
    stw     r5, 0x150(r31)
    sth     r5, 0x192(r31)
    stw     r5, 0x174(r31)
    stw     r5, 0x154(r31)
    sth     r5, 0x194(r31)
    stw     r5, 0x178(r31)
    stw     r5, 0x158(r31)
    sth     r5, 0x196(r31)
    stw     r5, 0x17c(r31)
    stw     r5, 0x15c(r31)
    sth     r5, 0x198(r31)
    stw     r5, 0x180(r31)
    stw     r5, 0x160(r31)
    sth     r5, 0x19a(r31)
    stw     r5, 0x184(r31)
    bge-    branch_0x801d4e48
branch_0x801d4e28:
    add     r6, r31, r4
    stw     r5, 0x144(r6)
    addi    r0, r3, 0x18c
    addi    r3, r3, 0x2
    sthx    r5, r31, r0
    addi    r4, r4, 0x4
    stw     r5, 0x168(r6)
    bdnz+      branch_0x801d4e28
branch_0x801d4e48:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl initMapObj__13TMerrygoroundFv
initMapObj__13TMerrygoroundFv: # 0x801d4e60
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stmw    r23, 0xa4(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x1ea0
    bl      initMapObj__11TMapObjBaseFv
    li      r29, 0x0
    li      r28, 0x0
    li      r25, 0x1
    b       branch_0x801d4f3c

branch_0x801d4e98:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    mr      r4, r25
    lwz     r3, 0xb0(r3)
    bl      getName__10JUTNameTabCFUs
    addi    r26, r3, 0x0
    subi    r4, rtoc, 0x2718
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x801d4ed4
    addi    r0, r29, 0x140
    sthx    r25, r30, r0
    addi    r29, r29, 0x2
    b       branch_0x801d4f38

branch_0x801d4ed4:
    addi    r3, r26, 0x0
    addi    r4, r31, 0x2a8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d4ef0
    sth     r25, 0x1a4(r30)
    b       branch_0x801d4f38

branch_0x801d4ef0:
    addi    r3, r26, 0x0
    subi    r4, rtoc, 0x2714
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x801d4f38
    addi    r3, r26, 0x0
    subi    r4, rtoc, 0x2710
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x801d4f38
    addi    r3, r26, 0x0
    subi    r4, rtoc, 0x2708
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x801d4f38
    addi    r0, r28, 0x18c
    sthx    r25, r30, r0
    addi    r28, r28, 0x2
branch_0x801d4f38:
    addi    r25, r25, 0x1
branch_0x801d4f3c:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r25, 16
    lhz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt+    branch_0x801d4e98
    lfs     f31, -0x2724(rtoc)
    addi    r28, sp, 0x78
    lfs     f30, -0x2750(rtoc)
    addi    r27, sp, 0x84
    addi    r26, sp, 0x90
    li      r25, 0x0
    li      r29, 0x0
branch_0x801d4f74:
    stfs    f31, 0x78(sp)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    stfs    f30, 0x84(sp)
    addi    r6, r28, 0x0
    addi    r3, r31, 0x2b4
    stfs    f30, 0x90(sp)
    stfs    f31, 0x7c(sp)
    stfs    f30, 0x88(sp)
    stfs    f30, 0x94(sp)
    stfs    f31, 0x80(sp)
    stfs    f30, 0x8c(sp)
    stfs    f30, 0x98(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r4, r29, 0x138
    add     r4, r30, r4
    stw     r3, 0x0(r4)
    lwz     r3, 0x0(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    cmpwi   r25, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x801d4f74
    lfs     f30, -0x2724(rtoc)
    addi    r26, sp, 0x54
    lfs     f31, -0x2750(rtoc)
    addi    r27, sp, 0x60
    addi    r28, sp, 0x6c
    li      r24, 0x0
    li      r29, 0x0
branch_0x801d4ff8:
    stfs    f30, 0x54(sp)
    addi    r4, r28, 0x0
    addi    r5, r27, 0x0
    stfs    f31, 0x60(sp)
    addi    r6, r26, 0x0
    addi    r3, r31, 0x2c0
    stfs    f31, 0x6c(sp)
    stfs    f30, 0x58(sp)
    stfs    f31, 0x64(sp)
    stfs    f31, 0x70(sp)
    stfs    f30, 0x5c(sp)
    stfs    f31, 0x68(sp)
    stfs    f31, 0x74(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    add     r25, r30, r29
    stw     r3, 0x144(r25)
    lwz     r3, 0x144(r25)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x801d5064
    mr      r3, r23
    bl      __ct__17TMapCollisionMoveFv
branch_0x801d5064:
    stwu    r23, 0x168(r25)
    addi    r6, r30, 0x0
    addi    r4, r31, 0x2cc
    lwz     r3, 0x0(r25)
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r25)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
    cmpwi   r24, 0x9
    addi    r29, r29, 0x4
    blt+    branch_0x801d4ff8
    lfs     f0, -0x2750(rtoc)
    addi    r6, sp, 0x30
    lfs     f1, -0x2724(rtoc)
    addi    r5, sp, 0x3c
    stfs    f0, 0x3c(sp)
    addi    r4, sp, 0x48
    stfs    f1, 0x30(sp)
    addi    r3, r31, 0x2ec
    stfs    f0, 0x48(sp)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x38(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x50(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x1a0(r30)
    li      r0, 0x29
    lwz     r3, 0x1a0(r30)
    sth     r0, 0x138(r3)
    lwz     r3, 0x1a0(r30)
    lfs     f0, -0x2700(rtoc)
    lfs     f1, 0x28(r3)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r3)
    lwz     r3, 0x1a0(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x304
    lwz     r4, 0x1a0(r30)
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
    lmw     r23, 0xa4(sp)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd8
    blr


.globl draw__13TMerrygoroundCFv
draw__13TMerrygoroundCFv: # 0x801d514c
    blr


.globl control__13TMerrygoroundFv
control__13TMerrygoroundFv: # 0x801d5150
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, 0x34(r31)
    lfs     f0, -0x7900(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x26fc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d5194
    fsubs   f0, f1, f0
    stfs    f0, 0x34(r31)
branch_0x801d5194:
    li      r26, 0x0
    li      r29, 0x0
    li      r30, 0x0
branch_0x801d51a0:
    addi    r0, r30, 0x140
    lhzx    r28, r31, r0
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r27, r29, 0x138
    lwz     r4, 0x58(r3)
    add     r27, r31, r27
    lwz     r3, 0x0(r27)
    mulli   r0, r28, 0x30
    lwz     r12, 0x0(r3)
    add     r28, r4, r0
    lwz     r12, 0x11c(r12)
    addi    r4, r28, 0x0
    mtlr    r12
    blrl
    lwz     r3, 0x0(r27)
    addi    r26, r26, 0x1
    lfs     f2, 0x2c(r28)
    cmpwi   r26, 0x2
    lfs     f1, 0x1c(r28)
    lfs     f0, 0xc(r28)
    addi    r29, r29, 0x4
    addi    r30, r30, 0x2
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    blt+    branch_0x801d51a0
    lfs     f31, -0x26f8(rtoc)
    li      r26, 0x0
    li      r30, 0x0
    li      r29, 0x0
branch_0x801d521c:
    addi    r0, r29, 0x18c
    lhzx    r28, r31, r0
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r27, r30, 0x144
    lwz     r4, 0x58(r3)
    mulli   r0, r28, 0x30
    add     r27, r31, r27
    lwz     r3, 0x0(r27)
    add     r28, r4, r0
    addi    r4, r28, 0x0
    addi    r3, r3, 0x138
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lfs     f1, 0x1c(r28)
    addi    r26, r26, 0x1
    lwz     r3, 0x0(r27)
    cmpwi   r26, 0x9
    lfs     f2, 0x2c(r28)
    lfs     f0, 0xc(r28)
    fsubs   f1, f1, f31
    addi    r30, r30, 0x4
    stfsu   f0, 0x10(r3)
    addi    r29, r29, 0x2
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    blt+    branch_0x801d521c
    bl      SMS_IsMarioOnYoshi__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d52a4
    lwz     r3, 0x1a0(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    b       branch_0x801d52b4

branch_0x801d52a4:
    lwz     r3, 0x1a0(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x801d52b4:
    lhz     r28, 0x1a4(r31)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r28, 0x30
    lwz     r4, 0x58(r3)
    lfs     f1, -0x26f8(rtoc)
    lwz     r3, 0x1a0(r31)
    add     r4, r4, r0
    lfs     f2, 0x1c(r4)
    lfs     f3, 0x2c(r4)
    lfs     f0, 0xc(r4)
    fsubs   f1, f2, f1
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f3, 0x8(r3)
    lmw     r26, 0x30(sp)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __ct__9TShellCupFPCc
__ct__9TShellCupFPCc: # 0x801d5308
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    lwz     r31, 0x8(sp)
    addi    r3, r3, 0xbd4
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r4, 0x801d
    lis     r3, 0x801d
    stw     r0, 0x20(r31)
    addi    r5, r3, 0x5384
    addi    r4, r4, 0x5408
    addi    r3, r31, 0x138
    li      r6, 0x90
    li      r7, 0x6
    bl      __construct_array
    li      r0, 0x0
    stw     r0, 0x498(r31)
    mr      r3, r31
    stw     r0, 0x49c(r31)
    stw     r0, 0x4a0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TPinnaShellFv
__dt__11TPinnaShellFv: # 0x801d5384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d53ec
    lis     r3, 0x803d
    addi    r3, r3, 0xd38
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d53dc
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801d53dc:
    extsh.  r0, r31
    ble-    branch_0x801d53ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d53ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__11TPinnaShellFv
__ct__11TPinnaShellFv: # 0x801d5408
    mflr    r0
    subi    r4, rtoc, 0x26f4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0xc(sp)
    lwz     r3, 0xc(sp)
    bl      __ct__9THitActorFPCc
    lwz     r31, 0xc(sp)
    lis     r3, 0x803d
    addi    r3, r3, 0xd38
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r4, 0x4000
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x68(r31)
    addi    r4, r4, 0x13a
    li      r5, 0x1
    lfs     f0, -0x2750(rtoc)
    lis     r6, 0x8000
    stfs    f0, 0x6c(r31)
    stfs    f0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    stw     r0, 0x7c(r31)
    stw     r0, 0x80(r31)
    stw     r0, 0x84(r31)
    stw     r0, 0x88(r31)
    stw     r0, 0x8c(r31)
    lfs     f1, -0x26ec(rtoc)
    lfs     f2, -0x26e8(rtoc)
    fmr     f3, f1
    lfs     f4, -0x2740(rtoc)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__9TShellCupFv
initMapObj__9TShellCupFv: # 0x801d54b0
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stfd    f28, 0x98(sp)
    stfd    f27, 0x90(sp)
    stfd    f26, 0x88(sp)
    stfd    f25, 0x80(sp)
    stmw    r21, 0x54(sp)
    addi    r26, r3, 0x0
    addi    r30, r4, 0x1ea0
    bl      initMapObj__11TMapObjBaseFv
    lis     r3, 0x803d
    lfs     f25, -0x2750(rtoc)
    subi    r31, r3, 0x5464
    lfs     f26, -0x26e4(rtoc)
    lfd     f27, -0x26d0(rtoc)
    addi    r29, r31, 0x24
    lfs     f28, -0x26e0(rtoc)
    li      r27, 0x0
    lfs     f29, -0x26dc(rtoc)
    lfs     f30, -0x273c(rtoc)
    li      r25, 0x0
    lfs     f31, -0x26d8(rtoc)
    lis     r23, 0x4330
    lis     r24, 0x1000
branch_0x801d5524:
    add     r28, r26, r25
    li      r0, 0x0
    stw     r0, 0x1a0(r28)
    mr      r3, r26
    stfs    f25, 0x1a4(r28)
    stfs    f26, 0x1a8(r28)
    bl      getModel__10TLiveActorCFv
    addi    r22, r27, 0x1
    lwz     r3, 0x58(r3)
    mulli   r0, r22, 0x30
    add     r0, r3, r0
    stw     r0, 0x1ac(r28)
    mr      r3, r26
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlslwi  r0, r22, 16, 2
    lwz     r3, 0x20(r3)
    lwzx    r0, r3, r0
    stw     r0, 0x1b0(r28)
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x4c(sp)
    addi    r3, r30, 0x314
    addi    r4, r28, 0x138
    stw     r23, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f27
    fmuls   f0, f28, f0
    fmuls   f0, f29, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0x1b4(r28)
    stw     r26, 0x1c4(r28)
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x801d55c8
    mr      r3, r21
    bl      __ct__17TMapCollisionMoveFv
branch_0x801d55c8:
    addi    r22, r28, 0x1bc
    stw     r21, 0x1bc(r28)
    addi    r6, r26, 0x0
    addi    r4, r30, 0x32c
    lwz     r3, 0x1bc(r28)
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r22)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x801d5628
    addi    r3, r21, 0x0
    addi    r4, r30, 0x340
    bl      __ct__9THitActorFPCc
    stw     r31, 0x0(r21)
    stw     r29, 0x20(r21)
branch_0x801d5628:
    stw     r21, 0x1c0(r28)
    addi    r22, r28, 0x1c0
    addi    r4, r24, 0x36
    lwz     r3, 0x1c0(r28)
    stfsu   f30, 0x24(r3)
    stfs    f31, 0x4(r3)
    stfs    f30, 0x8(r3)
    lwz     r3, 0x1c0(r28)
    bl      init__10TDamageObjFUl
    lwz     r3, 0x0(r22)
    addi    r27, r27, 0x1
    cmpwi   r27, 0x6
    lwz     r0, 0x64(r3)
    addi    r25, r25, 0x90
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    blt+    branch_0x801d5524
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x801d5684
    mr      r3, r21
    bl      __ct__19TMapCollisionStaticFv
branch_0x801d5684:
    addi    r22, r21, 0x0
    addi    r3, r22, 0x0
    lwz     r12, 0x0(r22)
    addi    r6, r26, 0x0
    addi    r4, r30, 0x354
    lwz     r12, 0x8(r12)
    li      r5, 0x2
    mtlr    r12
    blrl
    mr      r3, r26
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r4, r22, 0x20
    bl      PSMTXCopy
    mr      r3, r22
    lwz     r12, 0x0(r22)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lmw     r21, 0x54(sp)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    lfd     f27, 0x90(sp)
    lfd     f26, 0x88(sp)
    lfd     f25, 0x80(sp)
    addi    sp, sp, 0xb8
    blr


.globl loadAfter__9TShellCupFv
loadAfter__9TShellCupFv: # 0x801d5700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    stw     r28, 0x58(sp)
    bl      loadAfter__11TMapObjBaseFv
    lis     r3, 0x8039
    addi    r29, r3, 0x21b4
    li      r28, 0x0
    li      r30, 0x0
branch_0x801d5734:
    addi    r0, r30, 0x1c0
    lwzx    r4, r31, r0
    mr      r3, r29
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
    addi    r28, r28, 0x1
    cmpwi   r28, 0x6
    addi    r30, r30, 0x90
    blt+    branch_0x801d5734
    lfs     f0, -0x2750(rtoc)
    lis     r3, 0x8039
    lfs     f1, -0x2724(rtoc)
    addi    r6, sp, 0x30
    stfs    f0, 0x3c(sp)
    addi    r5, sp, 0x3c
    stfs    f1, 0x30(sp)
    addi    r4, sp, 0x48
    addi    r3, r3, 0x220c
    stfs    f0, 0x48(sp)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x38(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x50(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x498(r31)
    lwz     r3, -0x62b0(r13)
    bl      newAndRegisterCoinReal__12TItemManagerFv
    stw     r3, 0x49c(r31)
    lwz     r3, -0x62b0(r13)
    bl      newAndRegisterCoinReal__12TItemManagerFv
    stw     r3, 0x4a0(r31)
    li      r0, 0x2
    lwz     r3, 0x498(r31)
    stw     r0, 0x134(r3)
    lwz     r4, 0x498(r31)
    lwz     r3, -0x6048(r13)
    lwz     r0, 0x134(r4)
    lbz     r4, 0x7c(r3)
    lwz     r3, -0x6060(r13)
    clrlwi  r5, r0, 24
    bl      getBlueCoinFlag__12TFlagManagerCFUcUc
    clrlwi. r0, r3, 24
    bne-    branch_0x801d5800
    lwz     r3, 0x498(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x498(r31)
    stw     r0, 0x1b8(r31)
branch_0x801d5800:
    lwz     r3, 0x49c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x49c(r31)
    lwz     r0, 0xf8(r3)
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r3)
    lwz     r3, 0x4a0(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4a0(r31)
    lwz     r0, 0xf8(r3)
    oris    r0, r0, 0x1000
    stw     r0, 0xf8(r3)
    lwz     r0, 0x49c(r31)
    stw     r0, 0x2d8(r31)
    lwz     r0, 0x4a0(r31)
    stw     r0, 0x3f8(r31)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl perform__9TShellCupFUlPQ26JDrama9TGraphics
perform__9TShellCupFUlPQ26JDrama9TGraphics: # 0x801d5878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    stw     r28, 0x58(sp)
    addi    r28, r4, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x801d59a4
    lwz     r3, -0x6048(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x801d58c8
    cmplwi  r3, 0x2
    beq-    branch_0x801d58c8
    li      r0, 0x0
branch_0x801d58c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d58f0
    cmplwi  r3, 0x3
    li      r0, 0x1
    beq-    branch_0x801d58e8
    cmplwi  r3, 0x4
    beq-    branch_0x801d58e8
    li      r0, 0x0
branch_0x801d58e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d59a4
branch_0x801d58f0:
    li      r28, 0x0
    addi    r30, r28, 0x0
branch_0x801d58f8:
    addi    r29, r30, 0x138
    add     r29, r31, r29
    lfs     f1, 0x6c(r29)
    addi    r3, sp, 0x28
    bl      MsMtxSetRotX__FPA4_ff
    lwz     r3, 0x74(r29)
    addi    r4, sp, 0x28
    addi    r5, r3, 0x0
    bl      concatOnlyRotFromRight__11TMapObjBaseFPA4_fPA4_fPA4_f
    addi    r28, r28, 0x1
    cmpwi   r28, 0x6
    addi    r30, r30, 0x90
    blt+    branch_0x801d58f8
    lwz     r3, 0x498(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801d5954
    lfs     f0, 0x148(r31)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14c(r31)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x150(r31)
    stfs    f0, 0x18(r3)
branch_0x801d5954:
    lwz     r3, 0x49c(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801d597c
    lfs     f0, 0x268(r31)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x26c(r31)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x270(r31)
    stfs    f0, 0x18(r3)
branch_0x801d597c:
    lwz     r3, 0x4a0(r31)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801d59a4
    lfs     f0, 0x388(r31)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x38c(r31)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x390(r31)
    stfs    f0, 0x18(r3)
branch_0x801d59a4:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl MsMtxSetRotX__FPA4_ff
MsMtxSetRotX__FPA4_ff: # 0x801d59c4
    stwu    sp, -0x20(sp)
    lfs     f0, -0x274c(rtoc)
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f0, f1
    lwz     r6, -0x5ea8(r13)
    lwz     r4, -0x5ea4(r13)
    lfs     f1, -0x2724(rtoc)
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r5, 0x1c(sp)
    addi    sp, sp, 0x20
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    lfsx    f3, r4, r0
    fneg    f0, f2
    stfs    f1, 0x0(r3)
    lfs     f1, -0x2750(rtoc)
    stfs    f1, 0x4(r3)
    stfs    f1, 0x8(r3)
    stfs    f1, 0xc(r3)
    stfs    f1, 0x10(r3)
    stfs    f3, 0x14(r3)
    stfs    f0, 0x18(r3)
    stfs    f1, 0x1c(r3)
    stfs    f1, 0x20(r3)
    stfs    f2, 0x24(r3)
    stfs    f3, 0x28(r3)
    stfs    f1, 0x2c(r3)
    blr


.globl control__9TShellCupFv
control__9TShellCupFv: # 0x801d5a40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x74(r3)
    bl      calc__6MActorFv
    li      r30, 0x0
    li      r31, 0x0
branch_0x801d5a6c:
    addi    r3, r31, 0x138
    add     r3, r29, r3
    bl      control__11TPinnaShellFv
    addi    r30, r30, 0x1
    cmpwi   r30, 0x6
    addi    r31, r31, 0x90
    blt+    branch_0x801d5a6c
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl control__11TPinnaShellFv
control__11TPinnaShellFv: # 0x801d5aa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    lwz     r3, 0x7c(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x801d5acc
    subi    r0, r3, 0x1
    stw     r0, 0x7c(r31)
branch_0x801d5acc:
    lwz     r0, 0x68(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801d5c4c
    bge-    branch_0x801d5aec
    cmpwi   r0, 0x0
    beq-    branch_0x801d5af8
    bge-    branch_0x801d5b54
    b       branch_0x801d5cfc

branch_0x801d5aec:
    cmpwi   r0, 0x4
    bge-    branch_0x801d5cfc
    b       branch_0x801d5c94

branch_0x801d5af8:
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d5b4c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x26d0(rtoc)
    stw     r0, 0xa4(sp)
    lis     r0, 0x4330
    lfs     f3, -0x26e0(rtoc)
    stw     r0, 0xa0(sp)
    lfs     f1, -0x2744(rtoc)
    lfd     f0, 0xa0(sp)
    lfs     f2, -0x7904(r13)
    fsubs   f4, f0, f4
    lfs     f0, 0x6c(r31)
    fmuls   f3, f3, f4
    fmadds  f1, f1, f3, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x6c(r31)
    b       branch_0x801d5cfc

branch_0x801d5b4c:
    stfs    f0, 0x6c(r31)
    b       branch_0x801d5cfc

branch_0x801d5b54:
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x26c8(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(r31)
    lfs     f0, -0x7910(r13)
    lfs     f1, 0x6c(r31)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d5cfc
    stfs    f0, 0x6c(r31)
    li      r0, 0x168
    stw     r0, 0x7c(r31)
    lwz     r3, 0x80(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801d5c18
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x801d5c18
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801d5bb4
    li      r0, 0x1
    b       branch_0x801d5bb8

branch_0x801d5bb4:
    li      r0, 0x0
branch_0x801d5bb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d5bec
    lwz     r3, -0x6044(r13)
    li      r4, 0x483f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d5c40
    li      r3, 0x483f
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801d5c40

branch_0x801d5bec:
    lwz     r3, -0x6044(r13)
    li      r4, 0x4813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d5c40
    li      r3, 0x4813
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    b       branch_0x801d5c40

branch_0x801d5c18:
    lwz     r3, -0x6044(r13)
    li      r4, 0x483d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d5c40
    li      r3, 0x483d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801d5c40:
    li      r0, 0x2
    stw     r0, 0x68(r31)
    b       branch_0x801d5cfc

branch_0x801d5c4c:
    lwz     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x801d5cfc
    li      r0, 0x3
    stw     r0, 0x68(r31)
    li      r4, 0x389f
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d5cfc
    addi    r4, r31, 0x10
    li      r3, 0x389f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801d5cfc

branch_0x801d5c94:
    lfs     f1, 0x6c(r31)
    lfs     f0, 0x70(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(r31)
    lfs     f0, -0x790c(r13)
    lfs     f1, 0x6c(r31)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801d5ccc
    lwz     r3, 0x88(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x801d5ccc:
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801d5cfc
    stfs    f0, 0x6c(r31)
    li      r0, 0x0
    stw     r0, 0x68(r31)
    lwz     r3, 0x88(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x801d5cfc:
    lwz     r3, 0x74(r31)
    lwz     r4, 0x8c(r31)
    lfs     f0, 0xc(r3)
    lfs     f6, 0x10(r4)
    lfs     f4, -0x26c4(rtoc)
    fsubs   f0, f0, f6
    lfs     f5, 0x18(r4)
    lfs     f3, 0x2c(r3)
    lfs     f2, 0x1c(r3)
    lfs     f1, -0x26c0(rtoc)
    fmadds  f0, f4, f0, f6
    fsubs   f3, f3, f5
    fsubs   f1, f2, f1
    stfs    f0, 0x10(r31)
    fmadds  f0, f4, f3, f5
    stfs    f1, 0x14(r31)
    stfs    f0, 0x18(r31)
    lwz     r3, 0x88(r31)
    lfs     f0, 0x10(r31)
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x8(r3)
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801d5e04
    lfs     f1, -0x274c(rtoc)
    addi    r4, sp, 0x64
    lfs     f0, 0x6c(r31)
    mr      r5, r4
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r7, -0x5ea8(r13)
    lwz     r3, -0x5ea4(r13)
    lfs     f2, -0x2724(rtoc)
    fctiwz  f0, f0
    lfs     f1, -0x2750(rtoc)
    stfd    f0, 0xa0(sp)
    lwz     r6, 0xa4(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f3, r7, r0
    lfsx    f4, r3, r0
    fneg    f0, f3
    stfs    f2, 0x64(sp)
    stfs    f1, 0x68(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f4, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x84(sp)
    stfs    f3, 0x88(sp)
    stfs    f4, 0x8c(sp)
    stfs    f1, 0x90(sp)
    lwz     r3, 0x74(r31)
    bl      concatOnlyRotFromRight__11TMapObjBaseFPA4_fPA4_fPA4_f
    lwz     r3, 0x84(r31)
    addi    r4, sp, 0x64
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x801d5e04:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl receiveMessage__11TPinnaShellFP9THitActorUl
receiveMessage__11TPinnaShellFP9THitActorUl: # 0x801d5e18
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801d5eb0
    lwz     r3, -0x6070(r13)
    addi    r5, r4, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    addi    r5, r31, 0x10
    lfs     f1, -0x2750(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x68(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801d5ea8
    lfs     f1, 0x6c(r31)
    lfs     f0, -0x7908(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(r31)
    lfs     f0, -0x7910(r13)
    lfs     f1, 0x6c(r31)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d5ea8
    li      r0, 0x1
    stw     r0, 0x68(r31)
branch_0x801d5ea8:
    li      r3, 0x1
    b       branch_0x801d5eb4

branch_0x801d5eb0:
    li      r3, 0x0
branch_0x801d5eb4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__7TVikingFPCc
__ct__7TVikingFPCc: # 0x801d5ec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0xf44
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803d
    stw     r0, 0x20(r31)
    addi    r5, r3, 0xddc
    addi    r4, r5, 0x24
    lfs     f0, -0x2750(rtoc)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x148(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17THorizontalVikingFv
__dt__17THorizontalVikingFv: # 0x801d5f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d5fb4
    lis     r3, 0x803d
    addi    r3, r3, 0xf44
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d5fa4
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d5fa4:
    extsh.  r0, r31
    ble-    branch_0x801d5fb4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d5fb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__7TVikingFv
initMapObj__7TVikingFv: # 0x801d5fd0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x14c(r3)
    lis     r3, 0x8039
    addi    r4, r3, 0x2218
    lwz     r3, 0x4(r31)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d6038
    lfs     f0, -0x26bc(rtoc)
    stfs    f0, 0x138(r31)
    lfs     f0, -0x26b8(rtoc)
    stfs    f0, 0x13c(r31)
    lfs     f0, -0x26b4(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x26b0(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x26ac(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x26a8(rtoc)
    stfs    f0, 0x150(r31)
    b       branch_0x801d6064

branch_0x801d6038:
    lfs     f0, -0x26bc(rtoc)
    stfs    f0, 0x138(r31)
    lfs     f0, -0x26b8(rtoc)
    stfs    f0, 0x13c(r31)
    lfs     f0, -0x26b4(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x26b0(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f0, -0x26a8(rtoc)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x150(r31)
branch_0x801d6064:
    lfs     f1, 0x14(r31)
    mr      r3, r31
    lfs     f0, 0x138(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    bl      initMapObj__11TMapObjBaseFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__7TVikingFv
loadAfter__7TVikingFv: # 0x801d6090
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__7TVikingFv
reset__7TVikingFv: # 0x801d60d0
    lfs     f0, 0x140(r3)
    stfs    f0, 0x144(r3)
    lfs     f1, -0x2750(rtoc)
    stfs    f1, 0x148(r3)
    lfs     f0, 0x140(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801d60f8
    li      r0, 0x1
    sth     r0, 0xfc(r3)
    blr

branch_0x801d60f8:
    li      r0, 0x2
    sth     r0, 0xfc(r3)
    blr


.globl control__7TVikingFv
control__7TVikingFv: # 0x801d6104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x14c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x801d61cc
    bge-    branch_0x801d61d4
    cmpwi   r0, 0x0
    bge-    branch_0x801d6138
    b       branch_0x801d61d4

branch_0x801d6138:
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801d6190
    bge-    branch_0x801d61d4
    cmpwi   r0, 0x1
    bge-    branch_0x801d6154
    b       branch_0x801d61d4

branch_0x801d6154:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d61d4
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    b       branch_0x801d61d4

branch_0x801d6190:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d61d4
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    b       branch_0x801d61d4

branch_0x801d61cc:
    mr      r3, r31
    bl      roll__7TVikingFv
branch_0x801d61d4:
    lfs     f1, 0x148(r31)
    lfs     f0, -0x26a0(rtoc)
    lfs     f2, -0x26a4(rtoc)
    fdivs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      sinf
    lfs     f2, 0x138(r31)
    lfs     f0, 0x10c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x26a0(rtoc)
    lfs     f2, -0x26a4(rtoc)
    fdivs   f0, f1, f0
    lfs     f31, 0x108(r31)
    fmuls   f1, f2, f0
    bl      cosf
    lfs     f0, -0x2724(rtoc)
    mr      r3, r31
    lfs     f2, 0x138(r31)
    fsubs   f1, f0, f1
    lfs     f0, 0x110(r31)
    fmadds  f0, f2, f1, f0
    fadds   f0, f31, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x148(r31)
    stfs    f0, 0x38(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl roll__7TVikingFv
roll__7TVikingFv: # 0x801d6268
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmpwi   r0, 0x3
    beq-    branch_0x801d649c
    bge-    branch_0x801d62a0
    cmpwi   r0, 0x1
    beq-    branch_0x801d62ac
    bge-    branch_0x801d63a4
    b       branch_0x801d65f4

branch_0x801d62a0:
    cmpwi   r0, 0x5
    bge-    branch_0x801d65f4
    b       branch_0x801d654c

branch_0x801d62ac:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x154(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d6338
    lfs     f0, 0x144(r31)
    li      r4, 0x38a0
    lwz     r3, -0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d6330
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x38a0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d6330:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
branch_0x801d6338:
    lfs     f1, 0x148(r31)
    lfs     f0, -0x26a0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d65f4
    lfs     f0, -0x26fc(rtoc)
    li      r4, 0x38a0
    fsubs   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f0, 0x144(r31)
    lwz     r3, -0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d6398
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x38a0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d6398:
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801d65f4

branch_0x801d63a4:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x154(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d6430
    lfs     f0, 0x144(r31)
    li      r4, 0x38a0
    lwz     r3, -0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d6428
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x38a0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d6428:
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801d6430:
    lfs     f1, 0x148(r31)
    lfs     f0, -0x269c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d65f4
    lfs     f0, -0x26fc(rtoc)
    li      r4, 0x38a0
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f0, 0x144(r31)
    lwz     r3, -0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d6490
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x38a0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d6490:
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801d65f4

branch_0x801d649c:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x158(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d65f4
    lfs     f0, 0x144(r31)
    li      r4, 0x38a0
    lwz     r3, -0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d6520
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x38a0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d6520:
    lfs     f0, 0x150(r31)
    lfs     f1, 0x144(r31)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d6540
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    b       branch_0x801d65f4

branch_0x801d6540:
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801d65f4

branch_0x801d654c:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x158(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d65f4
    lfs     f0, 0x144(r31)
    li      r4, 0x38a0
    lwz     r3, -0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d65d0
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x38a0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d65d0:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x150(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d65ec
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    b       branch_0x801d65f4

branch_0x801d65ec:
    li      r0, 0x3
    sth     r0, 0xfc(r31)
branch_0x801d65f4:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl initMapObj__17THorizontalVikingFv
initMapObj__17THorizontalVikingFv: # 0x801d660c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x2698(rtoc)
    mr      r3, r31
    stfs    f0, 0x138(r31)
    lfs     f0, -0x2694(rtoc)
    stfs    f0, 0x13c(r31)
    lfs     f0, -0x2690(rtoc)
    stfs    f0, 0x140(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__17THorizontalVikingFv
reset__17THorizontalVikingFv: # 0x801d6664
    lfs     f0, 0x140(r3)
    stfs    f0, 0x144(r3)
    lfs     f1, -0x2750(rtoc)
    stfs    f1, 0x148(r3)
    lfs     f0, 0x144(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801d668c
    li      r0, 0x1
    sth     r0, 0xfc(r3)
    blr

branch_0x801d668c:
    li      r0, 0x2
    sth     r0, 0xfc(r3)
    blr


.globl control__17THorizontalVikingFv
control__17THorizontalVikingFv: # 0x801d6698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801d670c
    bge-    branch_0x801d6744
    cmpwi   r0, 0x1
    bge-    branch_0x801d66d0
    b       branch_0x801d6744

branch_0x801d66d0:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d6744
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    b       branch_0x801d6744

branch_0x801d670c:
    lfs     f1, 0x144(r31)
    lfs     f0, 0x13c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x144(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x148(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x2750(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d6744
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801d6744:
    lfs     f1, 0x148(r31)
    lfs     f0, -0x26a0(rtoc)
    lfs     f2, -0x26a4(rtoc)
    fdivs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      sinf
    lfs     f2, 0x138(r31)
    lfs     f0, 0x10c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, -0x26a0(rtoc)
    lfs     f2, -0x26a4(rtoc)
    fdivs   f0, f1, f0
    lfs     f31, 0x108(r31)
    fmuls   f1, f2, f0
    bl      cosf
    lfs     f0, -0x2724(rtoc)
    lfs     f2, 0x138(r31)
    fsubs   f1, f0, f1
    lfs     f0, 0x110(r31)
    fmadds  f0, f2, f1, f0
    fadds   f0, f31, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__12TFerrisWheelFPCc
__ct__12TFerrisWheelFPCc: # 0x801d67bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x10ac
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    lfs     f0, -0x2750(rtoc)
    stfs    f0, 0x140(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__12TFerrisWheelFv
initMapObj__12TFerrisWheelFv: # 0x801d6814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stmw    r26, 0x50(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    lhz     r3, 0x1c(r3)
    subi    r0, r3, 0x1
    stw     r0, 0x138(r31)
    lwz     r0, 0x138(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x13c(r31)
    lis     r3, 0x8039
    addi    r29, sp, 0x2c
    lfs     f30, -0x2724(rtoc)
    addi    r28, sp, 0x38
    lfs     f31, -0x2750(rtoc)
    addi    r27, sp, 0x44
    addi    r30, r3, 0x2224
    li      r26, 0x0
    b       branch_0x801d68e0

branch_0x801d6880:
    stfs    f30, 0x2c(sp)
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    stfs    f31, 0x38(sp)
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    stfs    f31, 0x44(sp)
    stfs    f30, 0x30(sp)
    stfs    f31, 0x3c(sp)
    stfs    f31, 0x48(sp)
    stfs    f30, 0x34(sp)
    stfs    f31, 0x40(sp)
    stfs    f31, 0x4c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r4, 0x13c(r31)
    clrlslwi  r0, r26, 16, 2
    stwx    r3, r4, r0
    lwz     r3, 0x13c(r31)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
branch_0x801d68e0:
    lwz     r0, 0x138(r31)
    clrlwi  r3, r26, 16
    cmpw    r3, r0
    blt+    branch_0x801d6880
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x801d690c
    lfs     f0, -0x2730(rtoc)
    stfs    f0, 0x140(r31)
    b       branch_0x801d691c

branch_0x801d690c:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x2748(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x140(r31)
branch_0x801d691c:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl control__12TFerrisWheelFv
control__12TFerrisWheelFv: # 0x801d6938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stmw    r27, 0x3c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x801d696c
    li      r0, 0x1
    b       branch_0x801d6970

branch_0x801d696c:
    li      r0, 0x0
branch_0x801d6970:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d69c8
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d698c
    li      r0, 0x1
    b       branch_0x801d6990

branch_0x801d698c:
    li      r0, 0x0
branch_0x801d6990:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d69c8
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x2748(rtoc)
    lfs     f2, 0x140(r31)
    fmuls   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801d69c0
    lfs     f0, -0x268c(rtoc)
    fsubs   f0, f2, f0
    stfs    f0, 0x140(r31)
    b       branch_0x801d69c8

branch_0x801d69c0:
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801d69c8:
    bl      SMSGetAnmFrameRate__Fv
    lfs     f2, -0x2748(rtoc)
    lfs     f0, 0x140(r31)
    fmuls   f1, f1, f2
    fcmpo   cr0, f0, f1
    ble-    branch_0x801d6a14
    lwz     r30, -0x6044(r13)
    li      r4, 0x3085
    addi    r3, r30, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d6a14
    addi    r4, r31, 0x10
    addi    r6, r30, 0x80
    li      r3, 0x3085
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d6a14:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f31, 0x140(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r28, 0x0
    li      r30, 0x0
    stfs    f0, 0x10(r3)
    b       branch_0x801d6aa8

branch_0x801d6a4c:
    lwz     r4, 0x13c(r31)
    mr      r3, r31
    lwzx    r27, r4, r30
    bl      getModel__10TLiveActorCFv
    addi    r0, r28, 0x1
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    add     r29, r3, r0
    addi    r3, r27, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r29
    bl      PSMTXCopy
    lfs     f2, 0x1c(r29)
    addi    r28, r28, 0x1
    lfs     f1, 0x108(r27)
    addi    r30, r30, 0x4
    lfs     f3, 0x2c(r29)
    lfs     f0, 0xc(r29)
    fadds   f1, f2, f1
    stfs    f0, 0x10(r27)
    stfs    f1, 0x14(r27)
    stfs    f3, 0x18(r27)
branch_0x801d6aa8:
    lwz     r0, 0x138(r31)
    cmpw    r28, r0
    blt+    branch_0x801d6a4c
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl becomeCalmlyCallback__12TFerrisWheelFUlUl
becomeCalmlyCallback__12TFerrisWheelFUlUl: # 0x801d6ad0
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x801d6b34
    li      r0, 0x2
    sth     r0, 0xfc(r30)
    lwz     r31, -0x6044(r13)
    lwz     r3, 0x80(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801d6b2c
    lfs     f1, -0x2750(rtoc)
    li      r4, 0xc8
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
    lwz     r3, 0x80(r31)
    li      r4, 0xc8
    lfs     f1, -0x2744(rtoc)
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
branch_0x801d6b2c:
    li      r0, 0x78
    stw     r0, 0x104(r30)
branch_0x801d6b34:
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__8TAmiKingFv
__dt__8TAmiKingFv: # 0x801d6b50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6bb8
    lis     r3, 0x803d
    addi    r3, r3, 0x304
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6ba8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6ba8:
    extsh.  r0, r31
    ble-    branch_0x801d6bb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6bb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchWater__8TAmiKingFP9THitActor
touchWater__8TAmiKingFP9THitActor: # 0x801d6bd4
    li      r3, 0x1
    blr


.globl __dt__16TWaterRecoverObjFv
__dt__16TWaterRecoverObjFv: # 0x801d6bdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6c44
    lis     r3, 0x803d
    addi    r3, r3, 0x468
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6c34
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6c34:
    extsh.  r0, r31
    ble-    branch_0x801d6c44
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6c44:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TPinnaEntranceFv
__dt__14TPinnaEntranceFv: # 0x801d6c60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6cc8
    lis     r3, 0x803d
    addi    r3, r3, 0x5cc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6cb8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6cb8:
    extsh.  r0, r31
    ble-    branch_0x801d6cc8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6cc8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TBalloonKoopaJrFv
__dt__15TBalloonKoopaJrFv: # 0x801d6ce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6d64
    lis     r3, 0x803d
    addi    r3, r3, 0x730
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6d54
    lis     r3, 0x803d
    subi    r3, r3, 0x74e0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6d54
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6d54:
    extsh.  r0, r31
    ble-    branch_0x801d6d64
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6d64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TChangeStageMerrygoroundFv
__dt__24TChangeStageMerrygoroundFv: # 0x801d6d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6e00
    lis     r3, 0x803d
    addi    r3, r3, 0x90c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6df0
    lis     r3, 0x803d
    subi    r3, r3, 0x50f8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6df0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6df0:
    extsh.  r0, r31
    ble-    branch_0x801d6e00
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6e00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TMerrygoroundFv
__dt__13TMerrygoroundFv: # 0x801d6e1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6e84
    lis     r3, 0x803d
    addi    r3, r3, 0xa70
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6e74
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6e74:
    extsh.  r0, r31
    ble-    branch_0x801d6e84
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6e84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TShellCupFv
__dt__9TShellCupFv: # 0x801d6ea0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6f24
    lis     r3, 0x803d
    addi    r3, r3, 0xbd4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x801d
    stw     r0, 0x20(r30)
    addi    r4, r3, 0x5384
    addi    r3, r30, 0x138
    li      r5, 0x90
    li      r6, 0x6
    bl      __destroy_arr
    cmplwi  r30, 0x0
    beq-    branch_0x801d6f14
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6f14:
    extsh.  r0, r31
    ble-    branch_0x801d6f24
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6f24:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__7TVikingFv
__dt__7TVikingFv: # 0x801d6f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d6fc0
    lis     r3, 0x803d
    addi    r3, r3, 0xddc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6fb0
    lis     r3, 0x803d
    addi    r3, r3, 0xf44
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d6fb0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d6fb0:
    extsh.  r0, r31
    ble-    branch_0x801d6fc0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d6fc0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TFerrisWheelFv
__dt__12TFerrisWheelFv: # 0x801d6fdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d7044
    lis     r3, 0x803d
    addi    r3, r3, 0x10ac
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d7034
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801d7034:
    extsh.  r0, r31
    ble-    branch_0x801d7044
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d7044:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjPinna_cpp
__sinit_MapObjPinna_cpp: # 0x801d7060
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6618
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801d70a8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801d70a8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801d70d8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801d70d8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7108
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801d7108:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7138
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801d7138:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7168
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801d7168:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7198
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801d7198:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801d71c8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801d71c8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801d71f8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801d71f8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7228
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801d7228:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7258
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801d7258:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7288
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801d7288:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801d72b8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801d72b8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801d72e8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801d72e8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7318
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801d7318:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801d7348
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801d7348:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TFerrisWheelFv
_32___dt__12TFerrisWheelFv: # 0x801d735c
    subi    r3, r3, 0x20
    b       __dt__12TFerrisWheelFv


.globl _32___dt__17THorizontalVikingFv
_32___dt__17THorizontalVikingFv: # 0x801d7364
    subi    r3, r3, 0x20
    b       __dt__17THorizontalVikingFv


.globl _32___dt__7TVikingFv
_32___dt__7TVikingFv: # 0x801d736c
    subi    r3, r3, 0x20
    b       __dt__7TVikingFv


.globl _32___dt__11TPinnaShellFv
_32___dt__11TPinnaShellFv: # 0x801d7374
    subi    r3, r3, 0x20
    b       __dt__11TPinnaShellFv


.globl _32___dt__9TShellCupFv
_32___dt__9TShellCupFv: # 0x801d737c
    subi    r3, r3, 0x20
    b       __dt__9TShellCupFv


.globl _32___dt__13TMerrygoroundFv
_32___dt__13TMerrygoroundFv: # 0x801d7384
    subi    r3, r3, 0x20
    b       __dt__13TMerrygoroundFv


.globl _32___dt__24TChangeStageMerrygoroundFv
_32___dt__24TChangeStageMerrygoroundFv: # 0x801d738c
    subi    r3, r3, 0x20
    b       __dt__24TChangeStageMerrygoroundFv


.globl _32___dt__15TBalloonKoopaJrFv
_32___dt__15TBalloonKoopaJrFv: # 0x801d7394
    subi    r3, r3, 0x20
    b       __dt__15TBalloonKoopaJrFv


.globl _32___dt__14TPinnaEntranceFv
_32___dt__14TPinnaEntranceFv: # 0x801d739c
    subi    r3, r3, 0x20
    b       __dt__14TPinnaEntranceFv


.globl _32___dt__16TWaterRecoverObjFv
_32___dt__16TWaterRecoverObjFv: # 0x801d73a4
    subi    r3, r3, 0x20
    b       __dt__16TWaterRecoverObjFv


.globl _32___dt__8TAmiKingFv
_32___dt__8TAmiKingFv: # 0x801d73ac
    subi    r3, r3, 0x20
    b       __dt__8TAmiKingFv


.globl _32___dt__13TPinnaCoasterFv
_32___dt__13TPinnaCoasterFv: # 0x801d73b4
    subi    r3, r3, 0x20
    b       __dt__13TPinnaCoasterFv

