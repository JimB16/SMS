
.globl __dt__16TTurboNozzleDoorFv
__dt__16TTurboNozzleDoorFv: # 0x801e67f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e6858
    lis     r3, __vvt__16TTurboNozzleDoor@h
    addi    r3, r3, __vvt__16TTurboNozzleDoor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e6848
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e6848:
    extsh.  r0, r31
    ble-    branch_0x801e6858
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e6858:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl touchPlayer__16TTurboNozzleDoorFP9THitActor
touchPlayer__16TTurboNozzleDoorFP9THitActor: # 0x801e6874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      SMS_IsMarioDashing__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801e69cc
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801e68b8
    lis     r3, unk_80392d38@h
    addi    r4, r3, unk_80392d38@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    b       branch_0x801e68e0

branch_0x801e68b8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x144(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e68e0:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x380a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e6910
    addi    r4, r31, 0x10
    li      r3, 0x380a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e6910:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3857
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e6940
    addi    r4, r31, 0x10
    li      r3, 0x3857
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e6940:
    lfs     f0, -0x235c(r2)
    mr      r3, r31
    lfs     f2, -0x2358(r2)
    addi    r6, r31, 0x138
    stfs    f0, 0x34(sp)
    addi    r7, sp, 0x34
    stfs    f0, 0x38(sp)
    li      r4, 0x18
    li      r5, 0x0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f0, 0x10(r31)
    fadds   f1, f2, f1
    stfs    f0, 0x138(r31)
    stfs    f1, 0x13c(r31)
    stfs    f3, 0x140(r31)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x138
    addi    r7, sp, 0x34
    li      r4, 0x19
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x138
    addi    r7, sp, 0x34
    li      r4, 0x39
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x801e69cc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl loadAfter__16TTurboNozzleDoorFv
loadAfter__16TTurboNozzleDoorFv: # 0x801e69e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    lwz     r4, 0x4(r3)
    lis     r3, unk_80392c58@h
    addi    r30, r3, unk_80392c58@l
    addi    r3, r30, 0xec
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801e6a4c
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0xfc
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xfc
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
    b       branch_0x801e6b20

branch_0x801e6a4c:
    lwz     r4, 0x4(r31)
    addi    r3, r30, 0xfc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801e6a94
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0xec
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xec
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
    b       branch_0x801e6b20

branch_0x801e6a94:
    lwz     r4, 0x4(r31)
    addi    r3, r30, 0x10c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801e6adc
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x11c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x11c
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
    b       branch_0x801e6b20

branch_0x801e6adc:
    lwz     r4, 0x4(r31)
    addi    r3, r30, 0x11c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801e6b20
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x10c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x10c
    mtlr    r12
    blrl
    stw     r3, 0x144(r31)
branch_0x801e6b20:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl perform__11TDemoCannonFUlPQ26JDrama9TGraphics
perform__11TDemoCannonFUlPQ26JDrama9TGraphics: # 0x801e6b3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xb8(sp)
    addi    r30, r5, 0x0
    stw     r29, 0xb4(sp)
    addi    r29, r4, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lbz     r0, 0x14c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801e6dc8
    lwz     r3, 0x138(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x13c(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r3, 0x18(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x801e6dc8
    lwz     r3, 0x13c(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x2354(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e6bf8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20c8
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e6bf8
    addi    r4, r31, 0x10
    li      r3, 0x20c8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e6bf8:
    lwz     r3, 0x13c(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2354(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x801e6d24
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x24
    lfs     f1, -0x2350(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0xa
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r5, 0x138(r31)
    li      r4, 0xe8
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x0
    lwz     r5, 0x18(r5)
    li      r7, 0x0
    lwz     r5, 0x4(r5)
    lwz     r30, 0x58(r5)
    mr      r5, r30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    li      r4, 0xe9
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    li      r4, 0xea
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    li      r4, 0xeb
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x0
    li      r4, 0xec
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x294e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e6cf4
    addi    r4, r31, 0x10
    li      r3, 0x294e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e6cf4:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x296d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e6d24
    addi    r4, r31, 0x10
    li      r3, 0x296d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e6d24:
    lwz     r3, 0x13c(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x234c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e6dc8
    lwz     r5, 0x13c(r31)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x166
    lwz     r5, 0x18(r5)
    li      r6, 0x1
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x13c(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x2348(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x801e6dc8
    lwz     r31, R13Off_m0x6044(r13)
    bl      SMS_GetMarioHP__Fv
    addi    r5, r3, 0x0
    addi    r3, r31, 0x0
    li      r4, 0x78bf
    li      r6, 0x0
    bl      startMarioVoice__6MSoundFUlsUc
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x0
    bl      checkMarioVoicePlaying__6MSoundFUc
    cmplwi  r3, 0x0
    beq-    branch_0x801e6dc8
    lfs     f1, -0x2360(r2)
    li      r4, 0x3c
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x801e6dc8:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    addi    sp, sp, 0xc0
    blr


.globl startDemo__11TDemoCannonFv
startDemo__11TDemoCannonFv: # 0x801e6de4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stb     r0, 0x14c(r3)
    lis     r3, unk_80392c58@h
    addi    r31, r3, unk_80392c58@l
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x12c
    bl      setBck__6MActorFPCc
    lwz     r3, 0x138(r30)
    addi    r4, r31, 0x13c
    lwz     r3, 0x18(r3)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x13c(r30)
    addi    r4, r31, 0x14c
    lwz     r3, 0x18(r3)
    bl      setBck__6MActorFPCc
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl initMapObj__11TDemoCannonFv
initMapObj__11TDemoCannonFv: # 0x801e6e50
    mflr    r0
    lis     r4, unk_80392c58@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r27, 0x4c(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, unk_80392c58@l
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x12c
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x2338(r2)
    xoris   r4, r4, 0x8000
    stw     r4, 0x44(sp)
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    addi    r3, r31, 0x164
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x801e6ee0
    addi    r3, r29, 0x0
    lis     r4, 0x1005
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x801e6ee0:
    lwz     r4, 0x74(r30)
    addi    r29, r28, 0x0
    li      r3, 0x1c
    lwz     r4, 0x4(r4)
    lwz     r4, 0x4(r4)
    lwz     r28, 0xb0(r4)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801e6f2c
    addi    r3, r28, 0x0
    addi    r4, r2, R2Off_m0x2344
    bl      getIndex__10JUTNameTabCFPCc
    addi    r5, r3, 0x0
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    addi    r6, r29, 0x0
    addi    r8, r31, 0x188
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x801e6f2c:
    stw     r27, 0x138(r30)
    addi    r3, r31, 0x198
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801e6f64
    addi    r3, r29, 0x0
    lis     r4, 0x1001
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x801e6f64:
    addi    r29, r27, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801e6f94
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    addi    r6, r29, 0x0
    addi    r8, r31, 0x188
    li      r5, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x801e6f94:
    stw     r27, 0x13c(r30)
    lmw     r27, 0x4c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl loadAfter__11TDemoCannonFv
loadAfter__11TDemoCannonFv: # 0x801e6fac
    mflr    r0
    lis     r3, gParticleFlagLoaded@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, gParticleFlagLoaded@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0xe8
    lbz     r0, 0xe8(r3)
    lis     r3, unk_80392c58@h
    addi    r31, r3, unk_80392c58@l
    cmplwi  r0, 0x0
    bne-    branch_0x801e6ff8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x1bc
    li      r5, 0xe8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801e6ff8:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xe9
    lbz     r0, 0xe9(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e7028
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x1dc
    li      r5, 0xe9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801e7028:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xea
    lbz     r0, 0xea(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e7058
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x1fc
    li      r5, 0xea
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801e7058:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xeb
    lbz     r0, 0xeb(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e7088
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x21c
    li      r5, 0xeb
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801e7088:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0xec
    lbz     r0, 0xec(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e70b8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x23c
    li      r5, 0xec
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801e70b8:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x166
    lbz     r0, 0x166(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e70e8
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x25c
    li      r5, 0x166
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801e70e8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__9TMareGateFv
loadAfter__9TMareGateFv: # 0x801e7100
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    lis     r4, unk_00050004@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00050004@l
    bl      getBool__12TFlagManagerCFUl
    clrlwi. r0, r3, 24
    bne-    branch_0x801e7144
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
branch_0x801e7144:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__9TMareGateFv
control__9TMareGateFv: # 0x801e7158
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      control__11TMapObjBaseFv
    lwz     r31, R13Off_m0x6044(r13)
    li      r4, 0x3085
    addi    r3, r31, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e71a8
    addi    r4, r30, 0x10
    addi    r6, r31, 0x7c
    li      r3, 0x3085
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e71a8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl load__12TMapObjSmokeFR20JSUMemoryInputStream
load__12TMapObjSmokeFR20JSUMemoryInputStream: # 0x801e71c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      load__12THideObjBaseFR20JSUMemoryInputStream
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r31, r3, 0x152
    lbz     r0, 0x152(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801e7208
    lis     r4, unk_80392ed8@h
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_80392ed8@l
    li      r5, 0x152
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801e7208:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__12TMapObjSmokeFv
control__12TMapObjSmokeFv: # 0x801e721c
    mflr    r0
    addi    r6, r3, 0x10
    stw     r0, 0x4(sp)
    li      r4, 0x152
    li      r5, 0x1
    stwu    sp, -0x8(sp)
    bl      emitAndRotateScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchWater__12TMapObjSmokeFP9THitActor
touchWater__12TMapObjSmokeFP9THitActor: # 0x801e7248
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lfs     f1, -0x2358(r2)
    lwz     r12, 0x164(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl touchPlayer__14TDptMonteFenceFP9THitActor
touchPlayer__14TDptMonteFenceFP9THitActor: # 0x801e729c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      SMS_IsMarioStatusThrownDown__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801e7330
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x380a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e72ec
    addi    r4, r31, 0x10
    li      r3, 0x380a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e72ec:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3857
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e731c
    addi    r4, r31, 0x10
    li      r3, 0x3857
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e731c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801e7330:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl control__11TBellDolpicFv
control__11TBellDolpicFv: # 0x801e7344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r0, 0x154(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x801e73b0
    lwz     r3, 0x158(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801e73a8
    lwz     r5, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    addi    r4, sp, 0x3c
    lfs     f0, -0x2358(r2)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x44(sp)
    lfs     f1, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    bl      ring__11TBellDolpicFRCQ29JGeometry8TVec3_f_
    b       branch_0x801e73b0

branch_0x801e73a8:
    addi    r0, r3, -0x1
    stw     r0, 0x158(r31)
branch_0x801e73b0:
    mr      r3, r31
    bl      control__11TMapObjBaseFv
    lfs     f1, -0x232c(r2)
    lfs     f0, 0x14c(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r4, R13Off_m0x5ea8(r13)
    lfs     f2, -0x2330(r2)
    lfs     f0, 0x150(r31)
    fctiwz  f1, f1
    stfd    f1, 0x48(sp)
    lwz     r3, 0x4c(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fneg    f1, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x150(r31)
    lfs     f1, 0x14c(r31)
    lfs     f0, 0x150(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14c(r31)
    lfs     f1, 0x14c(r31)
    lfs     f0, -0x2328(r2)
    fcmpo   cr0, f1, f0
    blt-    branch_0x801e7428
    lfs     f0, -0x2324(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e7530
branch_0x801e7428:
    lfs     f0, 0x150(r31)
    fneg    f0, f0
    stfs    f0, 0x150(r31)
    lwz     r0, 0x154(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801e74b4
    lbz     r0, 0x15c(r31)
    extsb.  r0, r0
    beq-    branch_0x801e7480
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38a5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e7524
    addi    r4, r31, 0x10
    li      r3, 0x38a5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801e7524

branch_0x801e7480:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38a6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e7524
    addi    r4, r31, 0x10
    li      r3, 0x38a6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801e7524

branch_0x801e74b4:
    lbz     r0, 0x15c(r31)
    extsb.  r0, r0
    beq-    branch_0x801e74f4
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38a8
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e7524
    addi    r4, r31, 0x10
    li      r3, 0x38a8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801e7524

branch_0x801e74f4:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x38a9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e7524
    addi    r4, r31, 0x10
    li      r3, 0x38a9
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801e7524:
    lbz     r0, 0x15c(r31)
    xori     r0, r0, 0x1
    stb     r0, 0x15c(r31)
branch_0x801e7530:
    lfs     f1, 0x150(r31)
    lfs     f0, -0x2320(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x150(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl receiveMessage__11TBellDolpicFP9THitActorUl
receiveMessage__11TBellDolpicFP9THitActorUl: # 0x801e7554
    mflr    r0
    lis     r5, unk_80392c58@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r5, unk_80392c58@l
    stw     r29, 0x24(sp)
    mr      r29, r4
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801e7594
    li      r0, 0x1
    b       branch_0x801e7598

branch_0x801e7594:
    li      r0, 0x0
branch_0x801e7598:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e75ac
    addi    r3, r31, 0x0
    addi    r4, r29, 0x10
    bl      ring__11TBellDolpicFRCQ29JGeometry8TVec3_f_
branch_0x801e75ac:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x801e75c4
    li      r0, 0x1
    b       branch_0x801e75c8

branch_0x801e75c4:
    li      r0, 0x0
branch_0x801e75c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e76ac
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x154(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801e75fc
    li      r3, 0x1
    b       branch_0x801e76b0

branch_0x801e75fc:
    addi    r0, r3, -0x1
    stw     r0, 0x154(r31)
    lis     r3, unk_10624dd3@h
    addi    r3, r3, unk_10624dd3@l
    lwz     r0, 0x154(r31)
    mulli   r0, r0, 0x64
    mulhw   r0, r3, r0
    srawi   r0, r0, 6
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x13b(r31)
    lwz     r0, 0x154(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801e76a4
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801e7660
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r30, 0x2a0
    lfs     f1, 0x10(r31)
    addi    r5, r30, 0x2c4
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    b       branch_0x801e767c

branch_0x801e7660:
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r30, 0x2e0
    lfs     f1, 0x10(r31)
    addi    r5, r30, 0x304
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
branch_0x801e767c:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x484a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e76a4
    li      r3, 0x484a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801e76a4:
    li      r3, 0x1
    b       branch_0x801e76b0

branch_0x801e76ac:
    li      r3, 0x0
branch_0x801e76b0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl touchPlayer__11TBellDolpicFP9THitActor
touchPlayer__11TBellDolpicFP9THitActor: # 0x801e76cc
    mflr    r0
    addi    r4, r4, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      ring__11TBellDolpicFRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl ring__11TBellDolpicFRCQ29JGeometry8TVec3_f_
ring__11TBellDolpicFRCQ29JGeometry8TVec3_f_: # 0x801e76f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lfs     f1, 0x150(r3)
    lis     r3, up_2645@ha
    lfs     f0, -0x2330(r2)
    addi    r5, r3, up_2645@l
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801e7878
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, -0x2360(r2)
    stfs    f1, 0x24(sp)
    lbz     r0, R13Off_m0x625f(r13)
    extsb.  r0, r0
    bne-    branch_0x801e7794
    stfs    f1, 0xc(r5)
    li      r0, 0x1
    lfs     f0, -0x2350(r2)
    stfs    f0, 0x10(r5)
    stfs    f1, 0x14(r5)
    stb     r0, R13Off_m0x625f(r13)
branch_0x801e7794:
    lfs     f4, 0x24(sp)
    lfs     f5, 0x14(r5)
    lfs     f3, 0xc(r5)
    lfs     f2, 0x28(sp)
    fmuls   f0, f5, f4
    lfs     f6, 0x10(r5)
    lfs     f7, 0x20(sp)
    fmuls   f1, f3, f2
    fmsubs  f0, f6, f2, f0
    fmuls   f2, f6, f7
    fmsubs  f1, f5, f7, f1
    stfs    f0, 0x140(r31)
    fmsubs  f0, f3, f4, f2
    stfs    f1, 0x144(r31)
    stfs    f0, 0x148(r31)
    lfs     f1, 0x140(r31)
    lfs     f0, 0x144(r31)
    lfs     f3, 0x148(r31)
    fmuls   f2, f1, f1
    fmuls   f1, f0, f0
    lfs     f0, -0x231c(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801e7818
    lfs     f0, -0x2350(r2)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x2360(r2)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x148(r31)
    b       branch_0x801e7824

branch_0x801e7818:
    addi    r3, r31, 0x140
    addi    r4, r3, 0x0
    bl      PSVECNormalize
branch_0x801e7824:
    lfs     f1, 0x150(r31)
    lfs     f0, -0x2318(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x150(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2338(r2)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x2314(r2)
    stw     r0, 0x38(sp)
    lfs     f0, -0x2310(r2)
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r3, 0x34(sp)
    addi    r0, r3, 0x5460
    stw     r0, 0x158(r31)
branch_0x801e7878:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl calcRootMatrix__11TBellDolpicFv
calcRootMatrix__11TBellDolpicFv: # 0x801e788c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r3
    bl      calcRootMatrix__11TMapObjBaseFv
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x230c(r2)
    mr      r31, r3
    lfs     f0, 0x14c(r30)
    addi    r3, sp, 0xc
    addi    r4, r30, 0x140
    fmuls   f1, f1, f0
    bl      PSMTXRotAxisRad
    addi    r5, r31, 0x20
    addi    r3, r5, 0x0
    addi    r4, sp, 0xc
    bl      PSMTXConcat
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl initMapObj__11TBellDolpicFv
initMapObj__11TBellDolpicFv: # 0x801e78f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x74(r31)
    bl      offMakeDL__6MActorFv
    li      r0, 0xff
    stb     r0, 0x138(r31)
    stb     r0, 0x139(r31)
    stb     r0, 0x13a(r31)
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801e7948
    lis     r4, unk_00010061@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00010061@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    bne-    branch_0x801e796c
branch_0x801e7948:
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x801e797c
    lis     r4, unk_00010060@h
    lwz     r3, R13Off_m0x6060(r13)
    addi    r4, r4, unk_00010060@l
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x801e797c
branch_0x801e796c:
    li      r0, 0x0
    stb     r0, 0x13b(r31)
    stw     r0, 0x154(r31)
    b       branch_0x801e798c

branch_0x801e797c:
    li      r0, 0x64
    stb     r0, 0x13b(r31)
    li      r0, 0x3e8
    stw     r0, 0x154(r31)
branch_0x801e798c:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r6, r31, 0x138
    li      r4, 0x0
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11TBellDolpicFiPCc
__ct__11TBellDolpicFiPCc: # 0x801e79c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__11TBellDolpic@h
    addi    r3, r3, __vvt__11TBellDolpic@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    li      r4, 0x3e8
    stw     r0, 0x20(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r31, 0x13c(r30)
    lfs     f0, -0x2350(r2)
    stfs    f0, 0x140(r30)
    lfs     f0, -0x2360(r2)
    stfs    f0, 0x144(r30)
    stfs    f0, 0x148(r30)
    stfs    f0, 0x14c(r30)
    stfs    f0, 0x150(r30)
    stw     r4, 0x154(r30)
    stw     r0, 0x158(r30)
    stb     r0, 0x15c(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl control__14TMonumentShineFv
control__14TMonumentShineFv: # 0x801e7a4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lbz     r0, 0x149(r31)
    extsb.  r0, r0
    bne-    branch_0x801e7c88
    lwz     r0, 0x144(r31)
    cmpwi   r0, 0x3
    bge-    branch_0x801e7c88
    lfs     f1, 0x140(r31)
    lfs     f0, -0x2308(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f1, 0xa4(r31)
    lfs     f0, 0x140(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(r31)
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801e7ad4
    lfs     f1, 0x140(r31)
    lfs     f0, -0x2360(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e7ac4
    li      r0, 0x1
    b       branch_0x801e7ac8

branch_0x801e7ac4:
    li      r0, -0x1
branch_0x801e7ac8:
    extsb   r0, r0
    stb     r0, 0x148(r31)
    b       branch_0x801e7c88

branch_0x801e7ad4:
    lfs     f0, 0x140(r31)
    lfs     f1, -0x2304(r2)
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801e7c50
    lwz     r0, 0x144(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x801e7bb8
    lbz     r0, 0x148(r31)
    extsb.  r0, r0
    ble-    branch_0x801e7b5c
    lfs     f2, -0x2300(r2)
    lfs     f0, 0x11c(r31)
    lfs     f1, 0x34(r31)
    fadds   f31, f2, f0
    lfs     f0, -0x22fc(r2)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_801e7ca0
    fsubs   f1, f31, f1
    lfs     f0, -0x2304(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e7b34
    fmr     f1, f0
branch_0x801e7b34:
    lfs     f0, -0x2360(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x801e7b4c
    lwz     r3, 0x144(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x144(r31)
branch_0x801e7b4c:
    lfs     f0, 0xa4(r31)
    fadds   f0, f0, f1
    stfs    f0, 0xa4(r31)
    b       branch_0x801e7c88

branch_0x801e7b5c:
    lfs     f2, 0x11c(r31)
    lfs     f0, -0x2300(r2)
    lfs     f1, 0x34(r31)
    fsubs   f31, f2, f0
    lfs     f0, -0x22fc(r2)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_801e7ca0
    fsubs   f1, f31, f1
    lfs     f0, -0x22f8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801e7b90
    fmr     f1, f0
branch_0x801e7b90:
    lfs     f0, -0x2360(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x801e7ba8
    lwz     r3, 0x144(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x144(r31)
branch_0x801e7ba8:
    lfs     f0, 0xa4(r31)
    fadds   f0, f0, f1
    stfs    f0, 0xa4(r31)
    b       branch_0x801e7c88

branch_0x801e7bb8:
    lbz     r0, 0x148(r31)
    extsb.  r0, r0
    ble-    branch_0x801e7c08
    lfs     f0, 0xa4(r31)
    fadds   f0, f0, f1
    stfs    f0, 0xa4(r31)
    lfs     f2, -0x2300(r2)
    b       branch_0x801e7bf0

branch_0x801e7bd8:
    lfs     f0, 0x34(r31)
    fsubs   f0, f0, f2
    stfs    f0, 0x34(r31)
    lwz     r3, 0x144(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x144(r31)
branch_0x801e7bf0:
    lfs     f1, 0x34(r31)
    lfs     f0, 0xa4(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f2
    bgt+    branch_0x801e7bd8
    b       branch_0x801e7c88

branch_0x801e7c08:
    lfs     f0, 0xa4(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xa4(r31)
    lfs     f3, -0x2300(r2)
    lfs     f0, -0x2360(r2)
    b       branch_0x801e7c38

branch_0x801e7c20:
    lfs     f1, 0x34(r31)
    fadds   f1, f1, f3
    stfs    f1, 0x34(r31)
    lwz     r3, 0x144(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x144(r31)
branch_0x801e7c38:
    lfs     f2, 0x34(r31)
    lfs     f1, 0xa4(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt+    branch_0x801e7c20
    b       branch_0x801e7c88

branch_0x801e7c50:
    lfs     f2, 0x34(r31)
    lfs     f0, -0x2300(r2)
    b       branch_0x801e7c60

branch_0x801e7c5c:
    fsubs   f2, f2, f0
branch_0x801e7c60:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801e7c5c
    lfs     f1, -0x2300(r2)
    lfs     f0, -0x2360(r2)
    b       branch_0x801e7c7c

branch_0x801e7c78:
    fadds   f2, f2, f1
branch_0x801e7c7c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801e7c78
    stfs    f2, 0x34(r31)
branch_0x801e7c88:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl MsWrap_f___Ffff_801e7ca0
MsWrap_f___Ffff_801e7ca0: # 0x801e7ca0
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x801e7cdc
    fmr     f1, f2
    blr

branch_0x801e7cb4:
    b       branch_0x801e7cbc

branch_0x801e7cb8:
    fsubs   f1, f1, f0
branch_0x801e7cbc:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x801e7cb8
    b       branch_0x801e7cd0

branch_0x801e7ccc:
    fadds   f1, f1, f0
branch_0x801e7cd0:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801e7ccc
    blr

branch_0x801e7cdc:
    fsubs   f0, f3, f2
    b       branch_0x801e7cbc

branch_0x801e7ce4:
    blr


.globl receiveMessage__14TMonumentShineFP9THitActorUl
receiveMessage__14TMonumentShineFP9THitActorUl: # 0x801e7ce8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r4
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x801e7d1c
    li      r0, 0x1
    b       branch_0x801e7d20

branch_0x801e7d1c:
    li      r0, 0x0
branch_0x801e7d20:
    clrlwi. r0, r0, 24
    beq-    branch_0x801e7e10
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x2360(r2)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r3, 0x13c(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801e7d78
    li      r3, 0x1
    b       branch_0x801e7e14

branch_0x801e7d78:
    addi    r0, r3, -0x1
    stw     r0, 0x13c(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      hitByWater__14TMonumentShineFP9THitActor
    lwz     r0, 0x13c(r31)
    lis     r3, unk_10624dd3@h
    addi    r3, r3, unk_10624dd3@l
    mulli   r0, r0, 0x64
    mulhw   r0, r3, r0
    srawi   r0, r0, 6
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0x13b(r31)
    lwz     r0, 0x13c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801e7e08
    lis     r4, unk_80392f78@h
    lwz     r3, R13Off_m0x62b0(r13)
    lis     r5, unk_80392f9c@h
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    addi    r4, r4, unk_80392f78@l
    lfs     f3, 0x18(r31)
    addi    r5, r5, unk_80392f9c@l
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x484a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801e7e08
    li      r3, 0x484a
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801e7e08:
    li      r3, 0x1
    b       branch_0x801e7e14

branch_0x801e7e10:
    li      r3, 0x0
branch_0x801e7e14:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl hitByWater__14TMonumentShineFP9THitActor
hitByWater__14TMonumentShineFP9THitActor: # 0x801e7e2c
    stwu    sp, -0x60(sp)
    lis     r6, up_2645@ha
    addi    r6, r6, up_2645@l
    lwz     r5, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0x5c(sp)
    lfs     f0, 0x54(sp)
    lfs     f7, 0x10(r3)
    fsubs   f0, f0, f7
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    lfs     f8, 0x14(r3)
    fsubs   f0, f0, f8
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    lfs     f9, 0x18(r3)
    fsubs   f0, f0, f9
    stfs    f0, 0x5c(sp)
    lfs     f4, -0x2360(r2)
    stfs    f4, 0x58(sp)
    lfs     f0, 0x54(sp)
    lfs     f6, 0x5c(sp)
    lfs     f5, 0x58(sp)
    fmuls   f1, f0, f0
    fmuls   f2, f6, f6
    lfs     f3, -0x231c(r2)
    fmuls   f0, f5, f5
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    beq-    branch_0x801e7fb0
    lwz     r5, R13Off_m0x60b4(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x50(sp)
    lfs     f0, 0x48(sp)
    fsubs   f0, f0, f7
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fsubs   f0, f0, f8
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fsubs   f0, f0, f9
    stfs    f0, 0x50(sp)
    stfs    f4, 0x4c(sp)
    lfs     f11, 0x48(sp)
    lfs     f7, 0x4c(sp)
    lfs     f8, 0x50(sp)
    fmuls   f1, f11, f11
    fmuls   f0, f7, f7
    fmuls   f2, f8, f8
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    beq-    branch_0x801e7fb0
    lbz     r0, R13Off_m0x6260(r13)
    extsb.  r0, r0
    bne-    branch_0x801e7f4c
    stfs    f4, 0x0(r6)
    li      r0, 0x1
    lfs     f0, -0x2350(r2)
    stfs    f0, 0x4(r6)
    stfs    f4, 0x8(r6)
    stb     r0, R13Off_m0x6260(r13)
branch_0x801e7f4c:
    lfs     f10, 0x0(r6)
    lfs     f1, 0x8(r6)
    fmuls   f0, f10, f8
    lfs     f9, 0x4(r6)
    fmuls   f3, f1, f7
    lfs     f2, 0x54(sp)
    fmuls   f4, f9, f11
    fmsubs  f1, f1, f11, f0
    lfs     f0, -0x2360(r2)
    fmsubs  f3, f9, f8, f3
    fmsubs  f4, f10, f7, f4
    fmuls   f1, f1, f5
    fmadds  f1, f3, f2, f1
    fmadds  f1, f4, f6, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801e7fa0
    lfs     f1, 0x140(r3)
    lfs     f0, -0x22f4(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x140(r3)
    b       branch_0x801e7fb0

branch_0x801e7fa0:
    lfs     f1, 0x140(r3)
    lfs     f0, -0x22f4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x140(r3)
branch_0x801e7fb0:
    addi    sp, sp, 0x60
    blr


.globl initMapObj__14TMonumentShineFv
initMapObj__14TMonumentShineFv: # 0x801e7fb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x74(r31)
    bl      offMakeDL__6MActorFv
    li      r0, 0xff
    stb     r0, 0x138(r31)
    lis     r3, unk_00010063@h
    addi    r4, r3, unk_00010063@l
    stb     r0, 0x139(r31)
    stb     r0, 0x13a(r31)
    lwz     r3, R13Off_m0x6060(r13)
    bl      getFlag__12TFlagManagerCFUl
    cmpwi   r3, 0x0
    beq-    branch_0x801e8018
    li      r3, 0x0
    stb     r3, 0x13b(r31)
    li      r0, 0x1
    stw     r3, 0x13c(r31)
    stb     r0, 0x149(r31)
    b       branch_0x801e8030

branch_0x801e8018:
    li      r0, 0x64
    stb     r0, 0x13b(r31)
    li      r3, 0x3e8
    li      r0, 0x0
    stw     r3, 0x13c(r31)
    stb     r0, 0x149(r31)
branch_0x801e8030:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r6, r31, 0x138
    li      r4, 0x0
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14TMonumentShineFPCc
__ct__14TMonumentShineFPCc: # 0x801e8068
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__14TMonumentShine@h
    addi    r3, r3, __vvt__14TMonumentShine@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r3, 0x3e8
    stw     r0, 0x20(r31)
    li      r4, 0x0
    li      r0, 0x1
    stw     r3, 0x13c(r31)
    mr      r3, r31
    lfs     f0, -0x2360(r2)
    stfs    f0, 0x140(r31)
    stw     r4, 0x144(r31)
    stb     r0, 0x148(r31)
    stb     r4, 0x149(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__11TDemoCannonFv
__dt__11TDemoCannonFv: # 0x801e80d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e8138
    lis     r3, __vvt__11TDemoCannon@h
    addi    r3, r3, __vvt__11TDemoCannon@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e8128
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e8128:
    extsh.  r0, r31
    ble-    branch_0x801e8138
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e8138:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TMareGateFv
__dt__9TMareGateFv: # 0x801e8154
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e81bc
    lis     r3, __vvt__9TMareGate@h
    addi    r3, r3, __vvt__9TMareGate@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e81ac
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e81ac:
    extsh.  r0, r31
    ble-    branch_0x801e81bc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e81bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TMapObjSmokeFv
__dt__12TMapObjSmokeFv: # 0x801e81d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e8258
    lis     r3, __vvt__12TMapObjSmoke@h
    addi    r3, r3, __vvt__12TMapObjSmoke@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e8248
    lis     r3, __vvt__12THideObjBase@h
    addi    r3, r3, __vvt__12THideObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e8248
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e8248:
    extsh.  r0, r31
    ble-    branch_0x801e8258
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e8258:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TDptMonteFenceFv
__dt__14TDptMonteFenceFv: # 0x801e8274
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e82dc
    lis     r3, __vvt__14TDptMonteFence@h
    addi    r3, r3, __vvt__14TDptMonteFence@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e82cc
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e82cc:
    extsh.  r0, r31
    ble-    branch_0x801e82dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e82dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TBellDolpicFv
__dt__11TBellDolpicFv: # 0x801e82f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e8360
    lis     r3, __vvt__11TBellDolpic@h
    addi    r3, r3, __vvt__11TBellDolpic@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e8350
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e8350:
    extsh.  r0, r31
    ble-    branch_0x801e8360
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e8360:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMonumentShineFv
__dt__14TMonumentShineFv: # 0x801e837c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e83e4
    lis     r3, __vvt__14TMonumentShine@h
    addi    r3, r3, __vvt__14TMonumentShine@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e83d4
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e83d4:
    extsh.  r0, r31
    ble-    branch_0x801e83e4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e83e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjDolpic_cpp
__sinit_MapObjDolpic_cpp: # 0x801e8400
    mflr    r0
    lis     r3, up_2645@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, up_2645@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8448
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801e8448:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8478
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801e8478:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801e84a8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801e84a8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801e84d8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801e84d8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8508
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801e8508:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8538
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801e8538:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8568
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801e8568:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8598
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801e8598:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801e85c8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801e85c8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801e85f8
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801e85f8:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8628
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801e8628:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8658
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801e8658:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8688
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801e8688:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801e86b8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801e86b8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801e86e8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801e86e8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801e86fc
unk_801e86fc: # 0x801e86fc
    addi    r3, r3, -0x20
    b       __dt__14TMonumentShineFv


.globl unk_801e8704
unk_801e8704: # 0x801e8704
    addi    r3, r3, -0x20
    b       __dt__11TBellDolpicFv


.globl unk_801e870c
unk_801e870c: # 0x801e870c
    addi    r3, r3, -0x20
    b       __dt__14TDptMonteFenceFv


.globl unk_801e8714
unk_801e8714: # 0x801e8714
    addi    r3, r3, -0x20
    b       __dt__12TMapObjSmokeFv


.globl unk_801e871c
unk_801e871c: # 0x801e871c
    addi    r3, r3, -0x20
    b       __dt__9TMareGateFv


.globl unk_801e8724
unk_801e8724: # 0x801e8724
    addi    r3, r3, -0x20
    b       __dt__11TDemoCannonFv


.globl unk_801e872c
unk_801e872c: # 0x801e872c
    addi    r3, r3, -0x20
    b       __dt__16TTurboNozzleDoorFv

