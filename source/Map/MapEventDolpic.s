
.globl __dt__26TDolpicEventRiccoMammaGateFv
__dt__26TDolpicEventRiccoMammaGateFv: # 0x801a3484
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a34fc
    lis     r3, 0x803c
    addi    r0, r3, 0x23f8
    stw     r0, 0x0(r30)
    beq-    branch_0x801a34ec
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    beq-    branch_0x801a34ec
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    beq-    branch_0x801a34ec
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801a34ec:
    extsh.  r0, r31
    ble-    branch_0x801a34fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a34fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__26TDolpicEventRiccoMammaGateFPCc
__ct__26TDolpicEventRiccoMammaGateFPCc: # 0x801a3518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TMapEventFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x23f8
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    stw     r0, 0x24(r31)
    stw     r0, 0x28(r31)
    stw     r0, 0x2c(r31)
    stb     r0, 0x30(r31)
    lfs     f0, -0x40a0(rtoc)
    stfs    f0, 0x34(r31)
    stw     r0, 0x38(r31)
    stw     r0, 0x3c(r31)
    stw     r0, 0x40(r31)
    stw     r0, 0x44(r31)
    stfs    f0, 0x60(r31)
    stfs    f0, 0x50(r31)
    stfs    f0, 0x4c(r31)
    stfs    f0, 0x48(r31)
    stfs    f0, 0x5c(r31)
    stfs    f0, 0x58(r31)
    stfs    f0, 0x54(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__26TDolpicEventRiccoMammaGateFR20JSUMemoryInputStream
load__26TDolpicEventRiccoMammaGateFR20JSUMemoryInputStream: # 0x801a35a0
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    subi    r31, r5, 0x5bb8
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r4, 0x0
    bl      load__9TMapEventFR20JSUMemoryInputStream
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    addi    r3, r29, 0x0
    addi    r4, r30, 0x54
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x58
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x5c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, sp, 0x50
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x60
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x4(r30)
    addi    r3, r31, 0xf8
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801a364c
    lis     r3, 0x5
    addi    r0, r3, 0x1
    stw     r0, 0x2c(r30)
    li      r29, 0x0
    b       branch_0x801a365c

branch_0x801a364c:
    lis     r3, 0x5
    addi    r0, r3, 0x2
    stw     r0, 0x2c(r30)
    li      r29, 0x1
branch_0x801a365c:
    addi    r3, r29, 0x1
    li      r4, 0x0
    bl      newAndInitBuildingCollisionMove__11TMapObjBaseFiP10TLiveActor
    stw     r3, 0x24(r30)
    addi    r3, r29, 0x1
    li      r4, 0x0
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    stw     r3, 0x28(r30)
    lwz     r4, 0x2c(r30)
    lwz     r3, -0x6060(r13)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a37fc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    addi    r4, r29, 0x1
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(r3)
    stw     r0, 0x20(r30)
    lwz     r3, 0x20(r30)
    lfs     f1, -0x409c(rtoc)
    bl      setJointScaleY__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x20(r30)
    lfs     f1, -0x4098(rtoc)
    bl      setJointTransY__11TMapObjBaseFP8J3DJointf
    lwz     r3, gpMap(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x2c(r30)
    addis   r0, r3, 0xfffb
    cmplwi  r0, 0x1
    bne-    branch_0x801a3778
    lfs     f0, -0x4094(rtoc)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stfs    f0, 0x48(r30)
    addi    r29, r3, 0x66
    lfs     f0, -0x4090(rtoc)
    stfs    f0, 0x4c(r30)
    lfs     f0, -0x408c(rtoc)
    stfs    f0, 0x50(r30)
    lbz     r0, 0x66(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a3744
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x110
    li      r5, 0x66
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801a3744:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x1e2
    lbz     r0, 0x1e2(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a37f0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x138
    li      r5, 0x1e2
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
    b       branch_0x801a37f0

branch_0x801a3778:
    lfs     f0, -0x4088(rtoc)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stfs    f0, 0x48(r30)
    addi    r29, r3, 0x67
    lfs     f0, -0x4090(rtoc)
    stfs    f0, 0x4c(r30)
    lfs     f0, -0x4084(rtoc)
    stfs    f0, 0x50(r30)
    lbz     r0, 0x67(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a37c0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x160
    li      r5, 0x67
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801a37c0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x1e3
    lbz     r0, 0x1e3(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a37f0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x188
    li      r5, 0x1e3
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801a37f0:
    li      r0, 0x0
    stb     r0, 0x30(r30)
    b       branch_0x801a3804

branch_0x801a37fc:
    li      r0, 0x1
    stb     r0, 0x30(r30)
branch_0x801a3804:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl loadAfter__26TDolpicEventRiccoMammaGateFv
loadAfter__26TDolpicEventRiccoMammaGateFv: # 0x801a3820
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r0, 0x2d0
    stw     r0, 0x38(r31)
    li      r3, 0x78
    lis     r0, 0x4330
    stw     r3, 0x3c(r31)
    stw     r3, 0x40(r31)
    lwz     r4, 0x3c(r31)
    lwz     r3, 0x38(r31)
    lwz     r5, 0x40(r31)
    subf    r3, r4, r3
    lfd     f1, -0x4078(rtoc)
    subf    r3, r5, r3
    lfs     f2, -0x4080(rtoc)
    xoris   r3, r3, 0x8000
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x34(r31)
    lbz     r0, 0x30(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801a38e4
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x18(r31)
    lwz     r3, 0x2c(r31)
    addis   r0, r3, 0xfffb
    cmplwi  r0, 0x1
    bne-    branch_0x801a38d4
    lwz     r3, gpPollution(r13)
    li      r4, 0x0
    addi    r3, r3, 0x70
    bl      offLayer__22TPollutionCounterLayerFi
    b       branch_0x801a38e4

branch_0x801a38d4:
    lwz     r3, gpPollution(r13)
    li      r4, 0x1
    addi    r3, r3, 0x70
    bl      offLayer__22TPollutionCounterLayerFi
branch_0x801a38e4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl watch__26TDolpicEventRiccoMammaGateFv
watch__26TDolpicEventRiccoMammaGateFv: # 0x801a38f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    lwz     r3, -0x6060(r13)
    lwz     r4, 0x2c(r31)
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x801a3af0
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    lwz     r3, 0x60(r3)
    bl      SMS_ShowJoint__FP11J3DMaterialb
    lwz     r3, 0x20(r31)
    lfs     f1, 0x34(r31)
    bl      setJointScaleY__11TMapObjBaseFP8J3DJointf
    lfs     f1, -0x40a0(rtoc)
    lfs     f0, -0x4080(rtoc)
    stfs    f1, 0x94(sp)
    stfs    f1, 0x84(sp)
    stfs    f1, 0x74(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x88(sp)
    stfs    f1, 0x78(sp)
    stfs    f0, 0x90(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x68(sp)
    lfs     f0, 0x34(r31)
    stfs    f0, 0x7c(sp)
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x38(r31)
    stw     r0, 0x44(r31)
    lwz     r3, 0x2c(r31)
    addis   r0, r3, 0xfffb
    cmplwi  r0, 0x1
    bne-    branch_0x801a3a30
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x64(sp)
    addi    r0, sp, 0x64
    lis     r4, 0x8039
    stw     r0, 0x8(sp)
    subi    r4, r4, 0x5a08
    addi    r5, r31, 0x48
    lfs     f1, -0x40a0(rtoc)
    li      r6, -0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x48
    li      r4, 0x66
    li      r6, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x48
    li      r4, 0x1e2
    li      r6, 0x2
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpPollution(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lhz     r0, 0x32(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x32(r3)
    b       branch_0x801a3ab4

branch_0x801a3a30:
    li      r0, 0x0
    lwz     r3, gpMarDirector(r13)
    sth     r0, 0x60(sp)
    addi    r0, sp, 0x60
    lis     r4, 0x8039
    stw     r0, 0x8(sp)
    subi    r4, r4, 0x59f0
    addi    r5, r31, 0x48
    lfs     f1, -0x40a0(rtoc)
    li      r6, -0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x48
    li      r4, 0x67
    li      r6, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x48
    li      r4, 0x1e3
    li      r6, 0x2
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpPollution(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x32(r3)
    ori     r0, r0, 0x2
    sth     r0, 0x32(r3)
branch_0x801a3ab4:
    addi    r3, r31, 0x54
    lfs     f1, 0x60(r31)
    bl      SMS_MarioWarpRequest__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, gpMSound(r13)
    li      r4, 0x484d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a3ae8
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801a3ae8:
    li      r3, 0x1
    b       branch_0x801a3af4

branch_0x801a3af0:
    li      r3, 0x0
branch_0x801a3af4:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl control__26TDolpicEventRiccoMammaGateFv
control__26TDolpicEventRiccoMammaGateFv: # 0x801a3b08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r3, 0x3c(r3)
    lwz     r0, 0x38(r31)
    lwz     r4, 0x44(r31)
    subf    r0, r3, r0
    cmpw    r4, r0
    bge-    branch_0x801a3c18
    lwz     r0, 0x40(r31)
    cmpw    r4, r0
    ble-    branch_0x801a3c18
    lwz     r3, 0x20(r31)
    bl      getJointScaleY__11TMapObjBaseFP8J3DJoint
    lfs     f0, 0x34(r31)
    addi    r3, sp, 0x38
    fadds   f31, f1, f0
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f1, -0x40a0(rtoc)
    addi    r4, sp, 0x38
    lfs     f0, -0x4080(rtoc)
    stfs    f1, 0x64(sp)
    stfs    f1, 0x54(sp)
    stfs    f1, 0x44(sp)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x40(sp)
    stfs    f1, 0x5c(sp)
    stfs    f1, 0x3c(sp)
    stfs    f1, 0x58(sp)
    stfs    f1, 0x48(sp)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x38(sp)
    stfs    f31, 0x4c(sp)
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x4080(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, -0x60f0(r13)
    li      r4, 0x0
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lwz     r3, 0x20(r31)
    fmr     f1, f31
    bl      setJointScaleY__11TMapObjBaseFP8J3DJointf
    lfs     f0, -0x4080(rtoc)
    lfs     f1, -0x4090(rtoc)
    fsubs   f0, f0, f31
    lwz     r3, 0x20(r31)
    fmuls   f1, f1, f0
    bl      setJointTransY__11TMapObjBaseFP8J3DJointf
    lwz     r3, gpMap(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x801a3c18:
    lwz     r3, 0x44(r31)
    lwz     r0, 0x40(r31)
    cmpw    r3, r0
    ble-    branch_0x801a3c68
    lwz     r3, -0x60f0(r13)
    li      r4, 0x13
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lwz     r3, gpMSound(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a3c68
    addi    r4, r31, 0x48
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801a3c68:
    lwz     r3, 0x44(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x801a3c84
    subi    r0, r3, 0x1
    stw     r0, 0x44(r31)
    li      r3, 0x0
    b       branch_0x801a3ce0

branch_0x801a3c84:
    lwz     r3, 0x20(r31)
    lfs     f1, -0x4080(rtoc)
    bl      setJointScaleY__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x24(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMarDirector(r13)
    bl      fireEndDemoCamera__12TMarDirectorFv
    lfs     f1, -0x4080(rtoc)
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    li      r0, 0x0
    stw     r0, 0x18(r31)
    li      r3, 0x1
branch_0x801a3ce0:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl isFinishedAll__26TDolpicEventRiccoMammaGateCFv
isFinishedAll__26TDolpicEventRiccoMammaGateCFv: # 0x801a3cf8
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a3d0c
    li      r0, 0x1
    b       branch_0x801a3d10

branch_0x801a3d0c:
    li      r0, 0x0
branch_0x801a3d10:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a3d20
    li      r3, 0x1
    blr

branch_0x801a3d20:
    li      r3, 0x0
    blr


.globl __ct__22TDolpicEventBiancoGateFPCc
__ct__22TDolpicEventBiancoGateFPCc: # 0x801a3d28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TMapEventFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x2438
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lfs     f0, -0x4070(rtoc)
    stfs    f0, 0x24(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__22TDolpicEventBiancoGateFv
loadAfter__22TDolpicEventBiancoGateFv: # 0x801a3d74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r4, -0x5db8(r13)
    subi    r3, rtoc, 0x406c
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x406c
    mtlr    r12
    blrl
    stw     r3, 0x20(r30)
    lwz     r3, 0x20(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r30)
    lfs     f0, -0x4064(rtoc)
    lfs     f1, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl watch__22TDolpicEventBiancoGateFv
watch__22TDolpicEventBiancoGateFv: # 0x801a3e00
    mflr    r0
    lis     r4, 0x1
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x384
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, -0x6060(r13)
    mr      r3, r0
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a3e58
    lwz     r3, 0x20(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r31)
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
    li      r3, 0x1
    b       branch_0x801a3e5c

branch_0x801a3e58:
    li      r3, 0x0
branch_0x801a3e5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__22TDolpicEventBiancoGateFv
control__22TDolpicEventBiancoGateFv: # 0x801a3e70
    mflr    r0
    li      r4, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x20(r3)
    lfs     f0, 0x24(r31)
    lfs     f1, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, -0x7108(r13)
    lfs     f1, -0x4080(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, -0x60f0(r13)
    li      r4, 0x0
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
    lwz     r4, 0x20(r31)
    lfsu    f1, 0x10(r4)
    lwz     r3, gpPollution(r13)
    lfs     f4, -0x4060(rtoc)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    bl      clean__17TPollutionManagerFffff
    lwz     r3, 0x20(r31)
    lfs     f0, 0x110(r3)
    lfsu    f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801a3f0c
    stfs    f0, 0x0(r3)
    li      r4, 0x0
    lwz     r3, 0x20(r31)
    bl      setUpMapCollision__11TMapObjBaseFUs
    li      r0, 0x0
    stw     r0, 0x18(r31)
    li      r3, 0x1
    b       branch_0x801a3f10

branch_0x801a3f0c:
    li      r3, 0x0
branch_0x801a3f10:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isFinishedAll__22TDolpicEventBiancoGateCFv
isFinishedAll__22TDolpicEventBiancoGateCFv: # 0x801a3f24
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a3f38
    li      r0, 0x1
    b       branch_0x801a3f3c

branch_0x801a3f38:
    li      r0, 0x0
branch_0x801a3f3c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801a3f4c
    li      r3, 0x1
    blr

branch_0x801a3f4c:
    li      r3, 0x0
    blr


.globl __dt__22TDolpicEventBiancoGateFv
__dt__22TDolpicEventBiancoGateFv: # 0x801a3f54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a3fcc
    lis     r3, 0x803c
    addi    r0, r3, 0x2438
    stw     r0, 0x0(r30)
    beq-    branch_0x801a3fbc
    lis     r3, 0x803c
    addi    r0, r3, 0x1790
    stw     r0, 0x0(r30)
    beq-    branch_0x801a3fbc
    lis     r3, 0x803e
    subi    r0, r3, 0x1298
    stw     r0, 0x0(r30)
    beq-    branch_0x801a3fbc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801a3fbc:
    extsh.  r0, r31
    ble-    branch_0x801a3fcc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a3fcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapEventDolpic_cpp
__sinit_MapEventDolpic_cpp: # 0x801a3fe8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7268
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4030
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801a4030:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4060
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801a4060:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4090
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801a4090:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801a40c0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801a40c0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801a40f0
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801a40f0:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4120
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801a4120:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4150
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801a4150:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4180
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801a4180:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a41b0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801a41b0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801a41e0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801a41e0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4210
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801a4210:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4240
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801a4240:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a4270
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801a4270:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801a42a0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801a42a0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801a42d0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801a42d0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

