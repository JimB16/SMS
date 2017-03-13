
.globl __dt__15TMareEventPointFv
__dt__15TMareEventPointFv: # 0x801d7730
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801d7798
    lis     r3, 0x803d
    addi    r3, r3, 0x1238
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801d7788
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801d7788:
    extsh.  r0, r31
    ble-    branch_0x801d7798
    mr      r3, r30
    bl      __dl__FPv
branch_0x801d7798:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__15TMareEventPointFR20JSUMemoryInputStream
load__15TMareEventPointFR20JSUMemoryInputStream: # 0x801d77b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lfs     f1, -0x267c(rtoc)
    lis     r4, 0x4000
    lfs     f3, -0x2678(rtoc)
    mr      r3, r31
    fmr     f2, f1
    lfs     f4, -0x2674(rtoc)
    addi    r4, r4, 0x236
    li      r5, 0x0
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__15TMareEventPointFP9THitActorUl
receiveMessage__15TMareEventPointFP9THitActorUl: # 0x801d7808
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x801d78e0
    mr      r3, r31
    bl      getWaterID__11TMapObjBaseFP9THitActor
    lwz     r4, gpModelWaterManager(r13)
    slwi    r0, r3, 1
    add     r3, r4, r0
    lhz     r0, 0x414(r3)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x801d7858
    li      r0, 0x1
    b       branch_0x801d785c

branch_0x801d7858:
    li      r0, 0x0
branch_0x801d785c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d78e0
    mr      r3, r31
    bl      getWaterPlane__11TMapObjBaseFP9THitActor
    cmplwi  r3, 0x0
    beq-    branch_0x801d78e0
    mr      r3, r31
    bl      getWaterPlane__11TMapObjBaseFP9THitActor
    lfs     f1, 0x38(r3)
    lfs     f0, -0x2670(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d78e0
    lwz     r3, 0x68(r30)
    bl      startEvent__21TMareEventDepressWallFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d78d8
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x267c(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
branch_0x801d78d8:
    li      r3, 0x1
    b       branch_0x801d78e4

branch_0x801d78e0:
    li      r3, 0x0
branch_0x801d78e4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl drawObject__9TMareCorkFPQ26JDrama9TGraphics
drawObject__9TMareCorkFPQ26JDrama9TGraphics: # 0x801d78fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      drawObject__10TLiveActorFPQ26JDrama9TGraphics
    lbz     r0, 0x154(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801d79cc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x266c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d79cc
    lfs     f0, -0x2668(rtoc)
    li      r4, 0x30b1
    stfs    f0, 0x148(r31)
    lfs     f0, -0x2664(rtoc)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x2660(rtoc)
    stfs    f0, 0x150(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d7984
    addi    r4, r31, 0x148
    li      r3, 0x30b1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d7984:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x13c
    li      r4, 0x14c
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x13c
    li      r4, 0x14d
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x13c
    li      r4, 0x14e
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801d79cc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getTakingMtx__9TMareCorkFv
getTakingMtx__9TMareCorkFv: # 0x801d79e0
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x60
    blr


.globl calcRootMatrix__9TMareCorkFv
calcRootMatrix__9TMareCorkFv: # 0x801d79f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lbz     r0, 0x154(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801d7ad0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x265c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x266c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x801d7ad0
    lwz     r3, 0x138(r31)
    bl      startChorobeiShout__7TCannonFv
    lis     r4, 0x8039
    lwz     r3, gpItemManager(r13)
    lis     r5, 0x8039
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    addi    r4, r4, 0x2330
    lfs     f3, 0x18(r31)
    addi    r5, r5, 0x2344
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    lfs     f0, -0x2668(rtoc)
    addi    r5, r31, 0x148
    li      r4, 0x44
    stfs    f0, 0x148(r31)
    li      r6, 0x4000
    li      r7, 0xd82
    lfs     f0, -0x2664(rtoc)
    li      r8, 0x0
    li      r9, 0x0
    stfs    f0, 0x14c(r31)
    li      r10, 0x0
    lfs     f0, -0x2660(rtoc)
    stfs    f0, 0x150(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801d7ad0
    lfs     f0, -0x2658(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x801d7ad0:
    mr      r3, r31
    bl      calcRootMatrix__11TMapObjBaseFv
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl moveObject__9TMareCorkFv
moveObject__9TMareCorkFv: # 0x801d7aec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x138(r3)
    bl      isObject__7TCannonFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d7b4c
    lbz     r0, 0x154(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801d7b4c
    lis     r4, 0x8039
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x2358
    bl      setBck__6MActorFPCc
    lis     r3, 0x8039
    addi    r4, r3, 0x2364
    addi    r3, r31, 0x0
    bl      setAnmSound__10TLiveActorFPCc
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    li      r0, 0x1
    stb     r0, 0x154(r31)
branch_0x801d7b4c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__9TMareCorkFv
loadAfter__9TMareCorkFv: # 0x801d7b60
    mflr    r0
    lis     r5, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    subi    r3, rtoc, 0x2654
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x2238
    stw     r29, 0x2c(sp)
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    subi    r5, rtoc, 0x2654
    mtlr    r12
    blrl
    stw     r3, 0x138(r31)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r3, 0x138(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801d7be0
    lwz     r0, 0x138(r31)
    stw     r0, 0x6c(r31)
branch_0x801d7be0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x14c
    lbz     r0, 0x14c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d7c10
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x148
    li      r5, 0x14c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801d7c10:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x14d
    lbz     r0, 0x14d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d7c40
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x16c
    li      r5, 0x14d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801d7c40:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x14e
    lbz     r0, 0x14e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d7c70
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x190
    li      r5, 0x14e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801d7c70:
    mr      r3, r31
    bl      loadAfter__11TMapObjBaseFv
    lfs     f0, -0x267c(rtoc)
    mr      r3, r31
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    bl      initAnmSound__10TLiveActorFv
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl load__9TMareFallFR20JSUMemoryInputStream
load__9TMareFallFR20JSUMemoryInputStream: # 0x801d7cac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x149
    lbz     r0, 0x149(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d7cf4
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x23ec
    li      r5, 0x149
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801d7cf4:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x14a
    lbz     r0, 0x14a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801d7d28
    lis     r4, 0x8039
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x2410
    li      r5, 0x14a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x801d7d28:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calc__9TMareFallFv
calc__9TMareFallFv: # 0x801d7d3c
    mflr    r0
    li      r4, 0x3007
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lwz     r0, gpMSound(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d7d84
    addi    r4, r31, 0x10
    li      r3, 0x3007
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d7d84:
    lwz     r3, gpMSound(r13)
    li      r4, 0x30a2
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d7db8
    lis     r3, 0x8040
    subi    r4, r3, 0x64a8
    li      r3, 0x30a2
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d7db8:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x149
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x14a
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__10TMuddyBoatFPCc
__ct__10TMuddyBoatFPCc: # 0x801d7dfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x15a4
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stw     r0, 0x168(r31)
    stw     r0, 0x16c(r31)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x184(r31)
    stfs    f0, 0x180(r31)
    stfs    f0, 0x17c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__10TMuddyBoatFv
initMapObj__10TMuddyBoatFv: # 0x801d7e98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x264c(rtoc)
    li      r0, 0x258
    stfs    f0, 0x138(r31)
    lfs     f0, -0x2648(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x2644(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x2640(rtoc)
    stfs    f0, 0x150(r31)
    lfs     f0, -0x263c(rtoc)
    stfs    f0, 0x13c(r31)
    stw     r0, 0x168(r31)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x34
    bne-    branch_0x801d7f18
    lfs     f0, -0x2638(rtoc)
    stfs    f0, 0x158(r31)
    lfs     f1, -0x2634(rtoc)
    stfs    f1, 0x154(r31)
    lfs     f0, -0x2630(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x262c(rtoc)
    stfs    f0, 0x160(r31)
    stfs    f1, 0x164(r31)
    b       branch_0x801d7f3c

branch_0x801d7f18:
    lfs     f1, -0x2628(rtoc)
    stfs    f1, 0x158(r31)
    lfs     f0, -0x262c(rtoc)
    stfs    f0, 0x154(r31)
    lfs     f0, -0x2630(rtoc)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2624(rtoc)
    stfs    f0, 0x160(r31)
    stfs    f1, 0x164(r31)
branch_0x801d7f3c:
    lfs     f0, -0x2620(rtoc)
    stfs    f0, 0x17c(r31)
    lfs     f0, -0x261c(rtoc)
    stfs    f0, 0x180(r31)
    lfs     f0, -0x2618(rtoc)
    stfs    f0, 0x184(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getSDLModelFlag__10TMuddyBoatCFv
getSDLModelFlag__10TMuddyBoatCFv: # 0x801d7f68
    li      r3, 0x0
    blr


.globl calc__10TMuddyBoatFv
calc__10TMuddyBoatFv: # 0x801d7f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    mr      r30, r3
    lfs     f28, 0x18(r30)
    lfs     f3, 0x14(r30)
    lfs     f0, 0x108(r30)
    fmr     f2, f28
    lwz     r3, gpMapObjWave(r13)
    fsubs   f29, f3, f0
    lfs     f1, 0x10(r30)
    bl      getWaveHeight__11TMapObjWaveCFff
    fadds   f30, f29, f1
    lfs     f29, 0x34(r30)
    lfs     f31, 0x10(r30)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x2614(rtoc)
    fmr     f1, f31
    fmr     f2, f30
    lwz     r3, 0x58(r3)
    fmuls   f0, f0, f29
    fmr     f3, f28
    li      r4, 0x0
    fctiwz  f0, f0
    li      r6, 0x0
    stfd    f0, 0xa0(sp)
    lwz     r5, 0xa4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f1, -0x267c(rtoc)
    addi    r3, sp, 0x64
    lfs     f0, -0x2610(rtoc)
    stfs    f1, 0x90(sp)
    stfs    f1, 0x80(sp)
    stfs    f1, 0x70(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x88(sp)
    stfs    f1, 0x68(sp)
    stfs    f1, 0x84(sp)
    stfs    f1, 0x74(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x64(sp)
    lfs     f1, 0x124(r30)
    lfs     f2, 0x128(r30)
    lfs     f3, 0x12c(r30)
    bl      PSMTXScale
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    addi    r5, r31, 0x0
    addi    r4, sp, 0x64
    bl      PSMTXConcat
    lfs     f1, -0x267c(rtoc)
    lfs     f0, 0x140(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801d8100
    lfs     f2, 0x14(r30)
    mr      r3, r30
    lfs     f1, 0x108(r30)
    addi    r6, r30, 0x170
    lfs     f3, 0x18(r30)
    lfs     f0, 0x10(r30)
    fsubs   f1, f2, f1
    addi    r7, sp, 0x58
    stfs    f0, 0x170(r30)
    li      r4, 0x1e8
    li      r5, 0x3
    stfs    f1, 0x174(r30)
    stfs    f3, 0x178(r30)
    lfs     f4, -0x2620(rtoc)
    lfs     f0, 0x24(r30)
    lfs     f3, 0x2c(r30)
    fmuls   f0, f4, f0
    lfs     f1, 0x28(r30)
    lfs     f2, -0x261c(rtoc)
    fmuls   f3, f4, f3
    fmuls   f1, f2, f1
    stfs    f0, 0x58(sp)
    stfs    f1, 0x5c(sp)
    stfs    f3, 0x60(sp)
    bl      emitAndBindScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r30, 0x0
    addi    r6, r30, 0x170
    addi    r7, sp, 0x58
    li      r4, 0x107
    li      r5, 0x1
    bl      emitAndBindScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r0, 0x0
    stw     r0, 0x16c(r30)
branch_0x801d8100:
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    addi    sp, sp, 0xd0
    blr


.globl control__10TMuddyBoatFv
control__10TMuddyBoatFv: # 0x801d8128
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    mr      r3, r31
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d815c
    mr      r3, r31
    bl      moveByWater__10TMuddyBoatFv
branch_0x801d815c:
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801d8258
    bge-    branch_0x801d8178
    cmpwi   r0, 0x1
    bge-    branch_0x801d8184
    b       branch_0x801d83a8

branch_0x801d8178:
    cmpwi   r0, 0x4
    bge-    branch_0x801d83a8
    b       branch_0x801d8290

branch_0x801d8184:
    lfs     f1, 0x140(r31)
    li      r4, 0x3080
    lfs     f0, 0x144(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f0, 0x140(r31)
    lwz     r3, gpMSound(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d81d8
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x3080
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801d81d8:
    lfs     f0, -0x267c(rtoc)
    lfs     f1, 0x14c(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x801d83a8
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x34(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x260c(rtoc)
    b       branch_0x801d8204

branch_0x801d8200:
    fsubs   f1, f1, f0
branch_0x801d8204:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x801d8200
    lfs     f0, -0x260c(rtoc)
    lfs     f2, -0x267c(rtoc)
    b       branch_0x801d8220

branch_0x801d821c:
    fadds   f1, f1, f0
branch_0x801d8220:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801d821c
    stfs    f1, 0x34(r31)
    lfs     f1, 0x14c(r31)
    lfs     f0, 0x150(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x14c(r31)
    lfs     f1, 0x14c(r31)
    lfs     f0, -0x2608(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d83a8
    stfs    f2, 0x14c(r31)
    b       branch_0x801d83a8

branch_0x801d8258:
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d83a8
    lwz     r0, 0x168(r31)
    mr      r3, r31
    stw     r0, 0x104(r31)
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
    bl      sleep__11TMapObjBaseFv
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801d83a8

branch_0x801d8290:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d82a4
    li      r0, 0x1
    b       branch_0x801d82a8

branch_0x801d82a4:
    li      r0, 0x0
branch_0x801d82a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d83a8
    mr      r3, r31
    bl      awake__11TMapObjBaseFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x261c(rtoc)
    addi    r5, r31, 0x170
    lfs     f0, 0x24(r31)
    addi    r6, r31, 0x30
    lfs     f1, 0x28(r31)
    fmuls   f0, f2, f0
    lfs     f3, 0x2c(r31)
    lfs     f4, -0x2620(rtoc)
    fmuls   f1, f2, f1
    addi    r7, sp, 0x40
    stfs    f0, 0x40(sp)
    fmuls   f0, f4, f3
    li      r3, 0xe4
    stfs    f1, 0x44(sp)
    li      r4, 0x0
    stfs    f0, 0x48(sp)
    lfs     f2, 0x14(r31)
    lfs     f1, 0x108(r31)
    lfs     f3, 0x18(r31)
    lfs     f0, 0x10(r31)
    fsubs   f1, f2, f1
    stfs    f0, 0x170(r31)
    stfs    f1, 0x174(r31)
    stfs    f3, 0x178(r31)
    bl      emitAndSRT__11TMapObjBaseFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r5, r31, 0x170
    addi    r6, r31, 0x30
    addi    r7, sp, 0x40
    li      r3, 0xe6
    li      r4, 0x0
    bl      emitAndSRT__11TMapObjBaseFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d83a0
    addi    r4, r31, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d83a0:
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801d83a8:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl bind__10TMuddyBoatFv
bind__10TMuddyBoatFv: # 0x801d83c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x270(sp)
    stfd    f31, 0x268(sp)
    stw     r31, 0x264(sp)
    stw     r30, 0x260(sp)
    mr      r30, r3
    stw     r29, 0x25c(sp)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x801d88f4
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    stw     r4, 0x234(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x23c(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    lfs     f1, 0x140(r30)
    lfs     f2, 0x8(r31)
    lfs     f0, 0x234(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x234(sp)
    lfs     f2, 0x28(r31)
    lfs     f1, 0x140(r30)
    lfs     f0, 0x23c(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x23c(sp)
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, -0x70e4(r13)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x801d84e8
    lwz     r4, -0x70e4(r13)
    slwi    r0, r3, 2
    lfs     f1, -0x267c(rtoc)
    addi    r3, sp, 0x200
    lwz     r4, 0x14(r4)
    lfs     f5, -0x2614(rtoc)
    fmr     f2, f1
    lwz     r4, 0x10(r4)
    fmr     f3, f1
    lwzx    r29, r4, r0
    lfs     f0, 0x20(r29)
    lfs     f4, 0x1c(r29)
    lfs     f6, 0x18(r29)
    fmuls   f0, f5, f0
    fmuls   f4, f5, f4
    fmuls   f5, f5, f6
    fctiwz  f0, f0
    fctiwz  f4, f4
    fctiwz  f5, f5
    stfd    f0, 0x240(sp)
    stfd    f5, 0x250(sp)
    lwz     r6, 0x244(sp)
    stfd    f4, 0x248(sp)
    lwz     r4, 0x254(sp)
    lwz     r5, 0x24c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f2, 0x8(r31)
    lfs     f1, 0x208(sp)
    lfs     f0, -0x267c(rtoc)
    lfs     f3, 0x28(r31)
    fmadds  f0, f2, f1, f0
    lfs     f2, 0x228(sp)
    lfs     f1, 0x40(r29)
    lfs     f4, -0x2608(rtoc)
    fmadds  f2, f3, f2, f0
    lfs     f0, 0x140(r30)
    fmuls   f1, f2, f1
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x140(r30)
branch_0x801d84e8:
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x234
    addi    r5, sp, 0x1e4
    bl      checkGroundIgnoreWaterSurface__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lfs     f3, 0x14(r30)
    lfs     f2, 0x108(r30)
    lfs     f0, -0x2628(rtoc)
    fsubs   f2, f3, f2
    fsubs   f0, f2, f0
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801d8538
    lwz     r3, 0x1e4(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801d852c
    li      r0, 0x1
    b       branch_0x801d8530

branch_0x801d852c:
    li      r0, 0x0
branch_0x801d8530:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d8578
branch_0x801d8538:
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    stw     r4, 0x234(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x23c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x9c(r30)
    stfs    f0, 0x98(r30)
    stfs    f0, 0x94(r30)
    b       branch_0x801d88f4

branch_0x801d8578:
    lfs     f1, 0x8(r31)
    li      r3, 0x4
    lfs     f3, 0x160(r30)
    li      r0, 0x2
    lfs     f0, 0x234(sp)
    addi    r4, sp, 0x17c
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x1d8(sp)
    stfs    f2, 0x1dc(sp)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x23c(sp)
    fmadds  f0, f1, f3, f0
    stfs    f0, 0x1e0(sp)
    lfs     f0, 0x158(r30)
    lwz     r5, 0x1d8(sp)
    lwz     r6, 0x1dc(sp)
    stw     r5, 0x17c(sp)
    lwz     r5, 0x1e0(sp)
    stw     r6, 0x180(sp)
    stw     r5, 0x184(sp)
    stfs    f0, 0x188(sp)
    stw     r3, 0x18c(sp)
    lwz     r3, gpMap(r13)
    stw     r0, 0x194(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x801d8680
    lfs     f1, -0x2604(rtoc)
    mr      r3, r30
    lfs     f0, 0x188(sp)
    lwz     r29, 0x198(sp)
    fadds   f1, f1, f0
    lfs     f0, 0x184(sp)
    lfs     f2, 0x3c(r29)
    fnmsubs  f31, f2, f1, f0
    bl      getObjCollisionHeightOffset__11TMapObjBaseCFv
    lfs     f2, -0x2604(rtoc)
    mr      r3, r30
    lfs     f0, 0x188(sp)
    lfs     f4, 0x14(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x34(r29)
    lfs     f0, 0x17c(sp)
    fsubs   f1, f4, f1
    fnmsubs  f0, f3, f2, f0
    stfs    f0, 0x170(r30)
    lfs     f0, -0x2628(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x174(r30)
    stfs    f31, 0x178(r30)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x234(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x23c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x267c(rtoc)
    li      r0, 0x1
    stfs    f0, 0x9c(r30)
    stfs    f0, 0x98(r30)
    stfs    f0, 0x94(r30)
    b       branch_0x801d8684

branch_0x801d8680:
    li      r0, 0x0
branch_0x801d8684:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d88f4
    lfs     f1, 0x8(r31)
    li      r3, 0x4
    lfs     f4, 0x164(r30)
    li      r0, 0x2
    lfs     f0, 0x234(sp)
    lfs     f3, 0x14(r30)
    addi    r4, sp, 0x144
    lfs     f2, 0x108(r30)
    fnmsubs  f0, f1, f4, f0
    fsubs   f1, f3, f2
    stfs    f0, 0x1d8(sp)
    stfs    f1, 0x1dc(sp)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x23c(sp)
    fnmsubs  f0, f1, f4, f0
    stfs    f0, 0x1e0(sp)
    lfs     f0, 0x15c(r30)
    lwz     r5, 0x1d8(sp)
    lwz     r6, 0x1dc(sp)
    stw     r5, 0x144(sp)
    lwz     r5, 0x1e0(sp)
    stw     r6, 0x148(sp)
    stw     r5, 0x14c(sp)
    stfs    f0, 0x150(sp)
    stw     r3, 0x154(sp)
    lwz     r3, gpMap(r13)
    stw     r0, 0x15c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x801d87a0
    lfs     f1, -0x2604(rtoc)
    mr      r3, r30
    lfs     f0, 0x150(sp)
    lwz     r29, 0x160(sp)
    fadds   f1, f1, f0
    lfs     f0, 0x14c(sp)
    lfs     f2, 0x3c(r29)
    fnmsubs  f31, f2, f1, f0
    bl      getObjCollisionHeightOffset__11TMapObjBaseCFv
    lfs     f2, -0x2604(rtoc)
    mr      r3, r30
    lfs     f0, 0x150(sp)
    lfs     f4, 0x14(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x34(r29)
    lfs     f0, 0x144(sp)
    fsubs   f1, f4, f1
    fnmsubs  f0, f3, f2, f0
    stfs    f0, 0x170(r30)
    lfs     f0, -0x2628(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x174(r30)
    stfs    f31, 0x178(r30)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x234(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x23c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x267c(rtoc)
    li      r0, 0x1
    stfs    f0, 0x9c(r30)
    stfs    f0, 0x98(r30)
    stfs    f0, 0x94(r30)
    b       branch_0x801d87a4

branch_0x801d87a0:
    li      r0, 0x0
branch_0x801d87a4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d88f4
    lfs     f2, 0x14(r30)
    li      r3, 0x4
    lfs     f1, 0x108(r30)
    li      r0, 0x2
    lfs     f0, 0x234(sp)
    fsubs   f1, f2, f1
    addi    r4, sp, 0x10c
    stfs    f0, 0x1d8(sp)
    stfs    f1, 0x1dc(sp)
    lfs     f0, 0x23c(sp)
    stfs    f0, 0x1e0(sp)
    lfs     f0, 0x154(r30)
    lwz     r5, 0x1d8(sp)
    lwz     r6, 0x1dc(sp)
    stw     r5, 0x10c(sp)
    lwz     r5, 0x1e0(sp)
    stw     r6, 0x110(sp)
    stw     r5, 0x114(sp)
    stfs    f0, 0x118(sp)
    stw     r3, 0x11c(sp)
    lwz     r3, gpMap(r13)
    stw     r0, 0x124(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x801d88ac
    lfs     f1, -0x2604(rtoc)
    mr      r3, r30
    lfs     f0, 0x118(sp)
    lwz     r29, 0x128(sp)
    fadds   f1, f1, f0
    lfs     f0, 0x114(sp)
    lfs     f2, 0x3c(r29)
    fnmsubs  f31, f2, f1, f0
    bl      getObjCollisionHeightOffset__11TMapObjBaseCFv
    lfs     f2, -0x2604(rtoc)
    mr      r3, r30
    lfs     f0, 0x118(sp)
    lfs     f4, 0x14(r30)
    fadds   f2, f2, f0
    lfs     f3, 0x34(r29)
    lfs     f0, 0x10c(sp)
    fsubs   f1, f4, f1
    fnmsubs  f0, f3, f2, f0
    stfs    f0, 0x170(r30)
    lfs     f0, -0x2628(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x174(r30)
    stfs    f31, 0x178(r30)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x234(sp)
    stw     r0, 0x238(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x23c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x267c(rtoc)
    li      r0, 0x1
    stfs    f0, 0x9c(r30)
    stfs    f0, 0x98(r30)
    stfs    f0, 0x94(r30)
    b       branch_0x801d88b0

branch_0x801d88ac:
    li      r0, 0x0
branch_0x801d88b0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d88f4
    lwz     r0, 0x234(sp)
    addi    r3, sp, 0xf0
    lwz     r5, 0x238(sp)
    addi    r4, r30, 0x10
    stw     r0, 0xf0(sp)
    lwz     r0, 0x23c(sp)
    stw     r5, 0xf4(sp)
    stw     r0, 0xf8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xf0(sp)
    lwz     r0, 0xf4(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0xf8(sp)
    stw     r0, 0x9c(r30)
branch_0x801d88f4:
    lwz     r0, 0x274(sp)
    lfd     f31, 0x268(sp)
    lwz     r31, 0x264(sp)
    mtlr    r0
    lwz     r30, 0x260(sp)
    lwz     r29, 0x25c(sp)
    addi    sp, sp, 0x270
    blr


.globl getObjCollisionHeightOffset__11TMapObjBaseCFv
getObjCollisionHeightOffset__11TMapObjBaseCFv: # 0x801d8914
    lfs     f1, 0x108(r3)
    blr


.globl kill__10TMuddyBoatFv
kill__10TMuddyBoatFv: # 0x801d891c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r6, sp, 0x24
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x170
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x140(r3)
    stfs    f0, 0x14c(r3)
    li      r3, 0x39
    lfs     f0, -0x2610(rtoc)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    bl      SMS_EasyEmitParticle_27E_SMS_EFFECT_ONETIME_NORMAL___F27E_SMS_EFFECT_ONETIME_NORMALPCQ29JGeometry8TVec3_f_PCvRCQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x387c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d8994
    addi    r4, r30, 0x10
    li      r3, 0x387c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d8994:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r31, r3, 0x20
    addi    r3, r30, 0x0
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    mr      r4, r31
    bl      PSMTXCopy
    lwz     r0, 0xf8(r30)
    addi    r3, r30, 0x0
    li      r4, 0x1
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    bl      startAnim__11TMapObjBaseFUs
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x2
    sth     r0, 0xfc(r30)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl calcRootMatrix__10TMuddyBoatFv
calcRootMatrix__10TMuddyBoatFv: # 0x801d8a04
    blr


.globl moveByWater__10TMuddyBoatFv
moveByWater__10TMuddyBoatFv: # 0x801d8a08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stfd    f29, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    bl      SMS_GetMarioWaterGun__Fv
    lbz     r0, 0x1c86(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x801d8b98
    bl      SMS_GetMarioWaterGun__Fv
    li      r4, 0x0
    bl      getEmitMtx__9TWaterGunFi
    lfs     f0, 0x0(r3)
    lfs     f2, 0x20(r3)
    addi    r3, sp, 0x4c
    fneg    f1, f0
    lfs     f0, -0x267c(rtoc)
    fneg    f2, f2
    mr      r4, r3
    stfs    f1, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f2, 0x54(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lfs     f1, 0x50(sp)
    addi    r4, sp, 0x30
    lwz     r5, 0x58(r3)
    mr      r3, r31
    lfs     f0, -0x267c(rtoc)
    lfs     f31, 0x8(r5)
    fmuls   f0, f1, f0
    lfs     f1, 0x4c(sp)
    lwz     r6, MarioHitActorPos(r13)
    lfs     f30, 0x28(r5)
    fmadds  f0, f1, f31, f0
    lfs     f2, 0x54(sp)
    lfs     f1, 0x0(r6)
    fmadds  f29, f2, f30, f0
    lfs     f2, 0x8(r6)
    bl      getNormalVecFromTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_
    lfs     f1, -0x267c(rtoc)
    lfs     f0, 0x30(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801d8ad4
    lfs     f0, 0x38(sp)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801d8ae0
branch_0x801d8ad4:
    addi    r3, sp, 0x30
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
branch_0x801d8ae0:
    lfs     f2, 0x54(sp)
    lfs     f1, -0x267c(rtoc)
    lfs     f0, 0x34(sp)
    fsubs   f3, f2, f30
    lfs     f4, 0x4c(sp)
    fmuls   f0, f1, f0
    lfs     f2, 0x30(sp)
    fsubs   f5, f4, f31
    fmuls   f4, f31, f3
    lfs     f3, 0x38(sp)
    fmadds  f0, f31, f2, f0
    fmsubs  f2, f30, f5, f4
    fmadds  f0, f30, f3, f0
    fmuls   f0, f2, f0
    fcmpo   cr0, f0, f1
    ble-    branch_0x801d8b40
    fabs    f3, f29
    lfs     f1, -0x2610(rtoc)
    lfs     f2, 0x148(r31)
    lfs     f0, 0x14c(r31)
    fsubs   f1, f1, f3
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x14c(r31)
    b       branch_0x801d8b5c

branch_0x801d8b40:
    fabs    f3, f29
    lfs     f1, -0x2610(rtoc)
    lfs     f2, 0x148(r31)
    lfs     f0, 0x14c(r31)
    fsubs   f1, f1, f3
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14c(r31)
branch_0x801d8b5c:
    lfs     f0, -0x267c(rtoc)
    fcmpo   cr0, f29, f0
    ble-    branch_0x801d8b7c
    lfs     f1, 0x138(r31)
    lfs     f0, 0x140(r31)
    fmadds  f0, f29, f1, f0
    stfs    f0, 0x140(r31)
    b       branch_0x801d8b8c

branch_0x801d8b7c:
    lfs     f1, 0x13c(r31)
    lfs     f0, 0x140(r31)
    fmadds  f0, f29, f1, f0
    stfs    f0, 0x140(r31)
branch_0x801d8b8c:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801d8b98:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lfd     f29, 0x68(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x80
    blr


.globl load__14TMapObjPuncherFR20JSUMemoryInputStream
load__14TMapObjPuncherFR20JSUMemoryInputStream: # 0x801d8bb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x10(sp)
    lis     r0, 0x4330
    lfd     f1, -0x2600(rtoc)
    addi    r3, r30, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x138(r30)
    bl      sleep__11TMapObjBaseFv
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl control__14TMapObjPuncherFv
control__14TMapObjPuncherFv: # 0x801d8c38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801d8c64
    bge-    branch_0x801d8d18
    b       branch_0x801d8d18

branch_0x801d8c64:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f2, 0xc(r3)
    mr      r3, r31
    lfs     f1, -0x25f8(rtoc)
    li      r4, 0x385f
    bl      soundBas__11TMapObjBaseFUlff
    mr      r3, r31
    bl      animIsFinished__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801d8d18
    lfs     f0, -0x261c(rtoc)
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    stfs    f0, 0x20(sp)
    addi    r7, sp, 0x20
    li      r4, 0xe5
    stfs    f0, 0x24(sp)
    li      r5, 0x0
    stfs    f0, 0x28(sp)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    addi    r7, sp, 0x20
    li      r4, 0xe6
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d8d04
    addi    r4, r31, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d8d04:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801d8d18:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl touchPlayer__14TMapObjPuncherFP9THitActor
touchPlayer__14TMapObjPuncherFP9THitActor: # 0x801d8d2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    bl      awake__11TMapObjBaseFv
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    lfs     f1, -0x2610(rtoc)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x54
    bl      makeVecToLocalZ__11TMapObjBaseCFfPQ29JGeometry8TVec3_f_
    lwz     r7, MarioHitActorPos(r13)
    addi    r3, sp, 0x20
    lwz     r5, 0x54(sp)
    lwz     r0, 0x0(r7)
    lwz     r6, 0x4(r7)
    lwz     r4, 0x58(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x5c(sp)
    stw     r6, 0x4c(sp)
    lfs     f1, -0x2628(rtoc)
    lwz     r6, 0x8(r7)
    stw     r5, 0x20(sp)
    stw     r4, 0x24(sp)
    stw     r6, 0x50(sp)
    stw     r0, 0x28(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x20(sp)
    addi    r3, sp, 0x48
    lwz     r4, 0x24(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0x34(sp)
    lfs     f2, 0x48(sp)
    stw     r0, 0x38(sp)
    lfs     f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    fadds   f2, f2, f0
    lfs     f0, 0x38(sp)
    stfs    f2, 0x48(sp)
    lfs     f2, 0x4c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x4c(sp)
    lfs     f1, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x50(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_THROW
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x54
    lfs     f1, 0x138(r31)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    addi    r7, sp, 0x3c
    li      r4, 0xe5
    lfs     f0, -0x261c(rtoc)
    li      r5, 0x0
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r3, r31, 0x0
    addi    r6, r31, 0x10
    addi    r7, sp, 0x3c
    li      r4, 0xe6
    li      r5, 0x0
    bl      emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, gpMSound(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d8e84
    addi    r4, r31, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d8e84:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __ct__9TWireBellFPCc
__ct__9TWireBellFPCc: # 0x801d8ea0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x186c
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, -0x1
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    lfs     f0, -0x25f4(rtoc)
    stfs    f0, 0x13c(r31)
    lfs     f0, -0x25f0(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x2618(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x263c(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x150(r31)
    stfs    f0, 0x14c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__9TWireBellFv
loadAfter__9TWireBellFv: # 0x801d8f1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    lwz     r3, -0x6308(r13)
    addi    r4, r31, 0x10
    bl      getWireNo__15TMapWireManagerCFRCQ29JGeometry8TVec3_f_
    stw     r3, 0x138(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__9TWireBellFv
control__9TWireBellFv: # 0x801d8f58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, -0x6308(r13)
    addi    r6, r31, 0x14c
    lwz     r4, 0x138(r31)
    bl      getPointPosInNthWire__15TMapWireManagerCFiRCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lfs     f0, 0x14c(r31)
    addi    r3, sp, 0x14
    stfs    f0, 0x10(r31)
    lfs     f1, 0x150(r31)
    lfs     f0, 0x13c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x154(r31)
    stfs    f0, 0x18(r31)
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
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, sp, 0x14
    bl      PSMTXCopy
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl draw__9TWireBellCFv
draw__9TWireBellCFv: # 0x801d8ff8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stfd    f28, 0x38(sp)
    stfd    f27, 0x30(sp)
    stfd    f26, 0x28(sp)
    stfd    f25, 0x20(sp)
    stfd    f24, 0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initDraw__9TWireBellCFv
    lfs     f31, 0x14(r31)
    li      r3, 0x98
    lfs     f26, 0x150(r31)
    li      r4, 0x0
    fsubs   f0, f31, f31
    lfs     f4, 0x148(r31)
    fsubs   f1, f26, f31
    lfs     f3, 0x14c(r31)
    li      r5, 0x8
    lfs     f2, 0x140(r31)
    fmuls   f25, f4, f1
    lfs     f1, 0x154(r31)
    fmuls   f24, f4, f0
    lfs     f0, 0x144(r31)
    fadds   f30, f3, f2
    fsubs   f29, f3, f2
    fadds   f28, f1, f0
    fsubs   f27, f1, f0
    bl      GXBegin
    lis     r3, 0xcc01
    lfs     f1, -0x267c(rtoc)
    stfs    f29, -0x8000(r3)
    lfs     f0, -0x2610(rtoc)
    stfs    f26, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    lfd     f29, 0x40(sp)
    lfd     f28, 0x38(sp)
    lfd     f27, 0x30(sp)
    lfd     f26, 0x28(sp)
    lfd     f25, 0x20(sp)
    lfd     f24, 0x18(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl initDraw__9TWireBellCFv
initDraw__9TWireBellCFv: # 0x801d915c
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x9
    li      r5, 0x1
    stwu    sp, -0x80(sp)
    li      r6, 0x4
    li      r7, 0x0
    stw     r31, 0x7c(sp)
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x2680(rtoc)
    addi    r4, sp, 0x20
    li      r3, 0x4
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r4, -0x62b8(r13)
    li      r31, 0x0
    addi    r3, sp, 0x24
    lwz     r4, 0xc8(r4)
    stw     r31, 0x4c(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x74(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x2
    bl      GXSetCullMode
    addi    r3, sp, 0x24
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl __ct__15TMapObjGrowTreeFPCc
__ct__15TMapObjGrowTreeFPCc: # 0x801d9368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x19d0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stw     r0, 0x144(r31)
    stfs    f0, 0x148(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__15TMapObjGrowTreeFv
initMapObj__15TMapObjGrowTreeFv: # 0x801d93c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x25ec(rtoc)
    lis     r3, 0x8039
    li      r0, 0x168
    stfs    f0, 0x138(r31)
    addi    r4, r3, 0x2430
    lfs     f0, -0x25e8(rtoc)
    stfs    f0, 0x13c(r31)
    lfs     f0, -0x2670(rtoc)
    stfs    f0, 0x140(r31)
    stw     r0, 0x144(r31)
    lfs     f0, 0x5c(r31)
    stfs    f0, 0x148(r31)
    lwz     r3, 0x74(r31)
    bl      setBtp__6MActorFPCc
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__15TMapObjGrowTreeFv
loadAfter__15TMapObjGrowTreeFv: # 0x801d942c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__11TMapObjBaseFv
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__15TMapObjGrowTreeFv
control__15TMapObjGrowTreeFv: # 0x801d9460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x801d9494
    li      r0, 0x1
    b       branch_0x801d9498

branch_0x801d9494:
    li      r0, 0x0
branch_0x801d9498:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d9718
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801d9718
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801d94c0
    li      r0, 0x1
    b       branch_0x801d94c4

branch_0x801d94c0:
    li      r0, 0x0
branch_0x801d94c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801d9718
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x267c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d9718
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x78dc(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d950c
    mr      r3, r31
    bl      removeMapCollision__11TMapObjBaseFv
branch_0x801d950c:
    lfs     f0, 0x140(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    fneg    f31, f0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x267c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d9570
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    b       branch_0x801d9718

branch_0x801d9570:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x25e4(rtoc)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801d95d0
    lfs     f0, -0x25e0(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801d95d0
    lwz     r3, gpMSound(r13)
    li      r4, 0x20c6
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801d95d0
    addi    r4, r31, 0x10
    li      r3, 0x20c6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801d95d0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x78e0(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d9668
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x78dc(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d961c
    lfs     f0, 0x138(r31)
    mr      r3, r31
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x801d9678

branch_0x801d961c:
    mr      r3, r31
    bl      getMActor__10TLiveActorCFv
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    mr      r3, r31
    lfs     f3, -0x78e0(r13)
    lfs     f4, 0x148(r31)
    lfs     f2, 0x138(r31)
    fsubs   f1, f0, f3
    lfs     f0, -0x78dc(r13)
    fsubs   f2, f2, f4
    fsubs   f0, f0, f3
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x801d9678

branch_0x801d9668:
    lfs     f0, 0x148(r31)
    mr      r3, r31
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x801d9678:
    lwz     r5, 0x6c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x801d9718
    lwz     r3, 0x10(r5)
    li      r4, 0x0
    lwz     r0, 0x14(r5)
    stw     r3, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0xd4(sp)
    lwz     r3, 0x74(r31)
    lfs     f31, 0x140(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x78e0(r13)
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d96f0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lfs     f2, -0x78dc(r13)
    fcmpo   cr0, f0, f2
    bge-    branch_0x801d96f0
    lfs     f1, 0x138(r31)
    lfs     f0, -0x78e0(r13)
    fmuls   f1, f31, f1
    fsubs   f0, f2, f0
    fdivs   f1, f1, f0
    b       branch_0x801d96f4

branch_0x801d96f0:
    lfs     f1, -0x267c(rtoc)
branch_0x801d96f4:
    lfs     f0, 0xd0(sp)
    addi    r4, sp, 0xcc
    fsubs   f0, f0, f1
    stfs    f0, 0xd0(sp)
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
branch_0x801d9718:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    mtlr    r0
    lwz     r31, 0xe4(sp)
    addi    sp, sp, 0xf8
    blr


.globl touchWater__15TMapObjGrowTreeFP9THitActor
touchWater__15TMapObjGrowTreeFP9THitActor: # 0x801d9734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stw     r31, 0xd4(sp)
    mr      r31, r3
    stw     r30, 0xd0(sp)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x148(r3)
    lfs     f2, 0x14(r4)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801d9774
    li      r3, 0x0
    b       branch_0x801d99fc

branch_0x801d9774:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801d9788
    li      r0, 0x1
    b       branch_0x801d978c

branch_0x801d9788:
    li      r0, 0x0
branch_0x801d978c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801d97bc
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      startAnim__11TMapObjBaseFUs
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x267c(rtoc)
    li      r0, 0x2
    stfs    f0, 0xc(r3)
    sth     r0, 0xfc(r31)
branch_0x801d97bc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lha     r30, 0x8(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    xoris   r0, r30, 0x8000
    lfd     f1, -0x2600(rtoc)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    lfs     f2, 0x10(r3)
    stw     r0, 0xc8(sp)
    lfd     f0, 0xc8(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x801d99c8
    lfs     f1, -0x2620(rtoc)
    mr      r3, r31
    lfs     f2, 0x13c(r31)
    li      r4, 0x289a
    bl      soundBas__11TMapObjBaseFUlff
    lfs     f1, -0x25e4(rtoc)
    mr      r3, r31
    lfs     f2, 0x13c(r31)
    li      r4, 0x289b
    bl      soundBas__11TMapObjBaseFUlff
    lfs     f1, -0x25dc(rtoc)
    mr      r3, r31
    lfs     f2, 0x13c(r31)
    li      r4, 0x289c
    bl      soundBas__11TMapObjBaseFUlff
    lfs     f1, -0x25d8(rtoc)
    mr      r3, r31
    lfs     f2, 0x13c(r31)
    li      r4, 0x289d
    bl      soundBas__11TMapObjBaseFUlff
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f31, 0x13c(r31)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r31)
    li      r4, 0x0
    lfs     f30, 0x10(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fadds   f0, f31, f30
    li      r4, 0x0
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x78e0(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d9918
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x78dc(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d98cc
    lfs     f0, 0x138(r31)
    mr      r3, r31
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x801d9928

branch_0x801d98cc:
    mr      r3, r31
    bl      getMActor__10TLiveActorCFv
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    mr      r3, r31
    lfs     f3, -0x78e0(r13)
    lfs     f4, 0x148(r31)
    lfs     f2, 0x138(r31)
    fsubs   f1, f0, f3
    lfs     f0, -0x78dc(r13)
    fsubs   f2, f2, f4
    fsubs   f0, f0, f3
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f0, f4, f0
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    b       branch_0x801d9928

branch_0x801d9918:
    lfs     f0, 0x148(r31)
    mr      r3, r31
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x801d9928:
    lwz     r5, 0x6c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x801d99c8
    lwz     r3, 0x10(r5)
    li      r4, 0x0
    lwz     r0, 0x14(r5)
    stw     r3, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0xc0(sp)
    lwz     r3, 0x74(r31)
    lfs     f31, 0x13c(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x78e0(r13)
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801d99a0
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    lfs     f2, -0x78dc(r13)
    fcmpo   cr0, f0, f2
    bge-    branch_0x801d99a0
    lfs     f1, 0x138(r31)
    lfs     f0, -0x78e0(r13)
    fmuls   f1, f31, f1
    fsubs   f0, f2, f0
    fdivs   f1, f1, f0
    b       branch_0x801d99a4

branch_0x801d99a0:
    lfs     f1, -0x267c(rtoc)
branch_0x801d99a4:
    lfs     f0, 0xbc(sp)
    addi    r4, sp, 0xb8
    fadds   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
branch_0x801d99c8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x78dc(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801d99f8
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setUpMapCollision__11TMapObjBaseFUs
    lwz     r0, 0x144(r31)
    stw     r0, 0x104(r31)
branch_0x801d99f8:
    li      r3, 0x1
branch_0x801d99fc:
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    addi    sp, sp, 0xe8
    blr


.globl initMapObj__18TMapObjElasticCodeFv
initMapObj__18TMapObjElasticCodeFv: # 0x801d9a1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x2640(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x263c(rtoc)
    stfs    f0, 0xcc(r31)
    lfs     f0, -0x261c(rtoc)
    stfs    f0, 0x138(r31)
    lfs     f0, -0x25d4(rtoc)
    stfs    f0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__18TMapObjElasticCodeFv
control__18TMapObjElasticCodeFv: # 0x801d9a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, 0xb0(r31)
    mr      r3, r31
    lfs     f0, 0x140(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x110(r31)
    lfs     f0, 0x14(r31)
    lfs     f3, 0x13c(r31)
    fsubs   f2, f2, f0
    lfs     f0, 0xb0(r31)
    fmsubs  f1, f3, f2, f1
    fadds   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801d9b3c
    lfs     f1, 0xb0(r31)
    addi    r4, sp, 0x44
    lfs     f0, 0x138(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r5, 0x6c(r31)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x4c(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, 0x48(sp)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x40(sp)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x48(sp)
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
branch_0x801d9b3c:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x34(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x30(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl draw__18TMapObjElasticCodeCFv
draw__18TMapObjElasticCodeCFv: # 0x801d9b78
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    li      r5, 0x1
    li      r6, 0x4
    stwu    sp, -0x38(sp)
    li      r7, 0x0
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x2684(rtoc)
    addi    r4, sp, 0x28
    li      r3, 0x4
    stw     r0, 0x24(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x28(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x5
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x18
    li      r4, 0x0
    bl      GXSetLineWidth
    li      r3, 0xa8
    li      r4, 0x0
    li      r5, 0x2
    bl      GXBegin
    lfs     f2, -0x25ec(rtoc)
    lis     r3, 0xcc01
    lfs     f1, 0x110(r31)
    lfs     f3, 0x114(r31)
    lfs     f0, 0x10c(r31)
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    lfs     f2, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__9TCogwheelFPCc
__ct__9TCogwheelFPCc: # 0x801d9d6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1c98
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x14c(r31)
    stw     r0, 0x150(r31)
    stfs    f0, 0x160(r31)
    stw     r0, 0x164(r31)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x170(r31)
    stfs    f0, 0x16c(r31)
    stfs    f0, 0x168(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__9TCogwheelFv
initMapObj__9TCogwheelFv: # 0x801d9df8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    stfd    f29, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f1, -0x25d0(rtoc)
    lfs     f0, 0x34(r31)
    lfs     f29, -0x78f4(r13)
    fmuls   f30, f1, f0
    fmr     f1, f30
    bl      cosf
    fmr     f31, f1
    fmr     f1, f30
    bl      sinf
    lfs     f2, -0x267c(rtoc)
    lis     r3, 0x8039
    lfs     f0, 0x10(r31)
    addi    r6, sp, 0x44
    fmuls   f3, f2, f1
    fmuls   f4, f2, f31
    lfs     f2, 0x18(r31)
    addi    r3, r3, 0x243c
    fmsubs  f31, f29, f31, f3
    fmadds  f30, f29, f1, f4
    lfs     f1, 0x14(r31)
    addi    r4, sp, 0x50
    fadds   f0, f0, f31
    fsubs   f2, f2, f30
    addi    r5, r31, 0x30
    stfs    f0, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f2, 0x58(sp)
    lfs     f0, -0x2610(rtoc)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x150(r31)
    li      r0, 0x1
    lwz     r4, 0x150(r31)
    stb     r0, 0x154(r4)
    lwz     r4, 0x150(r31)
    stw     r31, 0x158(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x58(sp)
    lis     r3, 0x8039
    lfs     f1, 0x14(r31)
    addi    r6, sp, 0x38
    lfs     f0, 0x50(sp)
    addi    r3, r3, 0x244c
    stfs    f0, 0x154(r31)
    addi    r4, sp, 0x50
    addi    r5, r31, 0x30
    stfs    f1, 0x158(r31)
    stfs    f2, 0x15c(r31)
    lfs     f0, 0x10(r31)
    lfs     f1, 0x18(r31)
    fsubs   f0, f0, f31
    lfs     f2, 0x14(r31)
    fadds   f1, f1, f30
    stfs    f0, 0x50(sp)
    stfs    f2, 0x54(sp)
    stfs    f1, 0x58(sp)
    lfs     f0, -0x2610(rtoc)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x164(r31)
    li      r0, 0x0
    lwz     r4, 0x164(r31)
    stb     r0, 0x154(r4)
    lwz     r4, 0x164(r31)
    stw     r31, 0x158(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x58(sp)
    subi    r4, rtoc, 0x25cc
    lfs     f1, 0x14(r31)
    lfs     f0, 0x50(sp)
    stfs    f0, 0x168(r31)
    stfs    f1, 0x16c(r31)
    stfs    f2, 0x170(r31)
    lwz     r3, 0x4(r31)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801d9fe8
    lfs     f0, -0x25c4(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x25c0(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x25bc(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x25b8(rtoc)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x25ec(rtoc)
    stfs    f0, 0x160(r31)
    lfs     f0, -0x25b4(rtoc)
    stfs    f0, 0x174(r31)
    lfs     f1, -0x267c(rtoc)
    lwz     r3, 0x164(r31)
    stfs    f1, 0x138(r3)
    lwz     r3, 0x164(r31)
    stfs    f1, 0x13c(r3)
    lfs     f0, -0x25b0(rtoc)
    lwz     r3, 0x164(r31)
    stfs    f0, 0x144(r3)
    lfs     f0, -0x25f0(rtoc)
    lwz     r3, 0x150(r31)
    stfs    f0, 0x138(r3)
    lwz     r3, 0x150(r31)
    stfs    f1, 0x13c(r3)
    lwz     r3, 0x150(r31)
    stfs    f1, 0x144(r3)
    b       branch_0x801da054

branch_0x801d9fe8:
    lfs     f0, -0x25ac(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, -0x25a8(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x25bc(rtoc)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x25a4(rtoc)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x25ec(rtoc)
    stfs    f0, 0x160(r31)
    lfs     f0, -0x25a0(rtoc)
    stfs    f0, 0x174(r31)
    lfs     f1, -0x267c(rtoc)
    lwz     r3, 0x164(r31)
    stfs    f1, 0x138(r3)
    lwz     r3, 0x164(r31)
    stfs    f1, 0x13c(r3)
    lfs     f0, -0x25b0(rtoc)
    lwz     r3, 0x164(r31)
    stfs    f0, 0x144(r3)
    lfs     f0, -0x25f0(rtoc)
    lwz     r3, 0x150(r31)
    stfs    f0, 0x138(r3)
    lwz     r3, 0x150(r31)
    stfs    f1, 0x13c(r3)
    lwz     r3, 0x150(r31)
    stfs    f1, 0x144(r3)
branch_0x801da054:
    lfs     f1, 0x14c(r31)
    lfs     f0, -0x25e8(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x13c(r31)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    lfd     f29, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl control__9TCogwheelFv
control__9TCogwheelFv: # 0x801da084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lfs     f1, 0x13c(r31)
    lfs     f0, 0x138(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x13c(r31)
    lwz     r4, 0x164(r31)
    lwz     r3, 0x150(r31)
    lfs     f1, 0x138(r4)
    lfs     f0, 0x140(r4)
    lfs     f3, 0x138(r3)
    lfs     f2, 0x140(r3)
    fadds   f0, f1, f0
    lfs     f1, 0x148(r4)
    fadds   f2, f3, f2
    lfs     f3, 0x148(r3)
    fadds   f1, f1, f0
    lfs     f4, 0x140(r31)
    fadds   f2, f3, f2
    lfs     f0, 0x138(r31)
    fsubs   f1, f2, f1
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x138(r31)
    lfs     f1, 0x138(r31)
    lfs     f0, 0x144(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x138(r31)
    lfs     f1, 0x13c(r31)
    lfs     f0, 0x160(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801da14c
    lfs     f2, 0x138(r31)
    lfs     f1, -0x267c(rtoc)
    fcmpo   cr0, f2, f1
    bge-    branch_0x801da14c
    lfs     f0, 0x148(r31)
    fneg    f0, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x138(r31)
    lfs     f2, 0x138(r31)
    lfs     f0, -0x78e4(r13)
    fabs    f2, f2
    fcmpo   cr0, f2, f0
    bge-    branch_0x801da14c
    stfs    f1, 0x138(r31)
branch_0x801da14c:
    lfs     f1, 0x14c(r31)
    lfs     f0, 0x174(r31)
    lfs     f2, 0x13c(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801da19c
    lfs     f2, 0x138(r31)
    lfs     f1, -0x267c(rtoc)
    fcmpo   cr0, f2, f1
    ble-    branch_0x801da19c
    lfs     f0, 0x148(r31)
    fneg    f0, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x138(r31)
    lfs     f2, 0x138(r31)
    lfs     f0, -0x78e4(r13)
    fabs    f2, f2
    fcmpo   cr0, f2, f0
    bge-    branch_0x801da19c
    stfs    f1, 0x138(r31)
branch_0x801da19c:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x13c(r31)
    lwz     r3, 0x150(r31)
    fsubs   f0, f1, f0
    lfs     f1, 0x108(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x14(r3)
    lfs     f1, 0x14c(r31)
    lfs     f0, 0x13c(r31)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    lwz     r3, 0x164(r31)
    fsubs   f0, f2, f0
    stfs    f0, 0x14(r3)
    lfs     f1, 0x138(r31)
    lfs     f0, -0x263c(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801da22c
    lfs     f0, -0x25f0(rtoc)
    li      r4, 0x3060
    lwz     r3, gpMSound(r13)
    fmuls   f31, f0, f1
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801da22c
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x3060
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801da22c:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl calc__9TCogwheelFv
calc__9TCogwheelFv: # 0x801da244
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r4, sp, 0x48
    stw     r30, 0x78(sp)
    mr      r30, r3
    lfs     f1, -0x261c(rtoc)
    lfs     f0, -0x78f4(r13)
    lfs     f2, 0x13c(r30)
    fmuls   f0, f1, f0
    lfs     f1, -0x259c(rtoc)
    fneg    f2, f2
    lfs     f3, -0x260c(rtoc)
    fmuls   f0, f1, f0
    fdivs   f0, f2, f0
    fmuls   f0, f3, f0
    stfs    f0, 0x38(r30)
    bl      makeRootMtxRotZ__11TMapObjBaseFPA4_f
    lfs     f0, -0x267c(rtoc)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x18
    stfs    f0, 0x54(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x74(sp)
    bl      makeRootMtxRotY__11TMapObjBaseFPA4_f
    lfs     f0, -0x267c(rtoc)
    mr      r3, r30
    stfs    f0, 0x24(sp)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x44(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r31, 0x58(r3)
    addi    r3, sp, 0x18
    addi    r4, sp, 0x48
    addi    r5, r31, 0x0
    bl      PSMTXConcat
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl draw__9TCogwheelCFv
draw__9TCogwheelCFv: # 0x801da308
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stfd    f28, 0x90(sp)
    stfd    f27, 0x88(sp)
    stfd    f26, 0x80(sp)
    stfd    f25, 0x78(sp)
    stfd    f24, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    bl      initDraw__9TCogwheelCFv
    lwz     r5, 0x150(r30)
    li      r3, 0x98
    lfs     f2, -0x2674(rtoc)
    li      r4, 0x0
    lfs     f1, 0x14(r5)
    lfs     f0, 0x108(r5)
    li      r5, 0x8
    lfs     f29, 0x158(r30)
    fsubs   f1, f1, f0
    lfs     f4, 0x154(r30)
    lfs     f3, -0x78f0(r13)
    lfs     f5, 0x15c(r30)
    fadds   f30, f2, f1
    lfs     f2, -0x78ec(r13)
    fsubs   f0, f29, f1
    lfs     f6, -0x78e8(r13)
    fadds   f31, f4, f3
    fsubs   f1, f30, f1
    fsubs   f24, f4, f3
    fadds   f25, f5, f2
    fsubs   f26, f5, f2
    fmuls   f27, f6, f1
    fmuls   f28, f6, f0
    bl      GXBegin
    lis     r31, 0xcc01
    lfs     f4, -0x267c(rtoc)
    stfs    f24, -0x8000(r31)
    li      r3, 0x98
    lfs     f3, -0x2610(rtoc)
    li      r4, 0x0
    stfs    f30, -0x8000(r31)
    lfs     f1, -0x261c(rtoc)
    li      r5, 0x8
    stfs    f26, -0x8000(r31)
    lfs     f0, -0x2620(rtoc)
    stfs    f4, -0x8000(r31)
    lfs     f2, -0x2598(rtoc)
    stfs    f27, -0x8000(r31)
    lfs     f5, -0x78f0(r13)
    stfs    f24, -0x8000(r31)
    lfs     f6, -0x78ec(r13)
    stfs    f29, -0x8000(r31)
    lfs     f7, -0x78e8(r13)
    stfs    f26, -0x8000(r31)
    stfs    f4, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f3, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f24, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f24, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    lwz     r6, 0x164(r30)
    lfs     f3, 0x168(r30)
    lfs     f1, 0x14(r6)
    lfs     f0, 0x108(r6)
    fadds   f30, f3, f5
    lfs     f4, 0x170(r30)
    fsubs   f31, f3, f5
    fsubs   f1, f1, f0
    fadds   f28, f4, f6
    fsubs   f27, f4, f6
    fadds   f26, f2, f1
    fsubs   f0, f29, f1
    fsubs   f1, f26, f1
    fmuls   f24, f7, f0
    fmuls   f25, f7, f1
    bl      GXBegin
    stfs    f31, -0x8000(r31)
    lfs     f1, -0x267c(rtoc)
    stfs    f26, -0x8000(r31)
    lfs     f0, -0x2610(rtoc)
    stfs    f27, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f24, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f24, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f30, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f27, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    stfs    f24, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f26, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    stfs    f31, -0x8000(r31)
    stfs    f29, -0x8000(r31)
    stfs    f28, -0x8000(r31)
    stfs    f0, -0x8000(r31)
    stfs    f24, -0x8000(r31)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    lfd     f29, 0x98(sp)
    lfd     f28, 0x90(sp)
    lfd     f27, 0x88(sp)
    lfd     f26, 0x80(sp)
    lfd     f25, 0x78(sp)
    lfd     f24, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl initDraw__9TCogwheelCFv
initDraw__9TCogwheelCFv: # 0x801da594
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x9
    li      r5, 0x1
    stwu    sp, -0x80(sp)
    li      r6, 0x4
    li      r7, 0x0
    stw     r31, 0x7c(sp)
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x2688(rtoc)
    addi    r4, sp, 0x20
    li      r3, 0x4
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r4, -0x62b8(r13)
    li      r31, 0x0
    addi    r3, sp, 0x24
    lwz     r4, 0xc8(r4)
    stw     r31, 0x4c(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x74(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x2
    bl      GXSetCullMode
    addi    r3, sp, 0x24
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl __ct__14TCogwheelScaleFPCc
__ct__14TCogwheelScaleFPCc: # 0x801da7a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x1dfc
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x138(r31)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stfs    f0, 0x148(r31)
    lfs     f0, -0x263c(rtoc)
    stfs    f0, 0x14c(r31)
    lfs     f0, -0x2618(rtoc)
    stfs    f0, 0x150(r31)
    stb     r0, 0x154(r31)
    stw     r0, 0x158(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__14TCogwheelScaleFv
control__14TCogwheelScaleFv: # 0x801da818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x148(r31)
    bl      control__11TMapObjBaseFv
    lfs     f1, 0x140(r31)
    lfs     f0, -0x267c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801da8b0
    lfs     f0, -0x78f8(r13)
    li      r4, 0x3061
    fsubs   f0, f1, f0
    stfs    f0, 0x140(r31)
    lfs     f0, 0x140(r31)
    lwz     r3, gpMSound(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801da89c
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x3061
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801da89c:
    lfs     f1, 0x140(r31)
    lfs     f0, -0x267c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801da8b0
    stfs    f0, 0x140(r31)
branch_0x801da8b0:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl touchPlayer__14TCogwheelScaleFP9THitActor
touchPlayer__14TCogwheelScaleFP9THitActor: # 0x801da8c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      marioIsOn__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801da8f0
    lfs     f0, 0x13c(r31)
    stfs    f0, 0x148(r31)
branch_0x801da8f0:
    lwz     r3, MarioHitActorPos(r13)
    lfs     f3, 0x14(r31)
    lfs     f2, 0x108(r31)
    lfs     f1, -0x2630(rtoc)
    lfs     f0, 0x4(r3)
    fsubs   f2, f3, f2
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801da9b4
    lbz     r0, 0x154(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801da934
    lwz     r3, 0x158(r31)
    lfs     f0, -0x267c(rtoc)
    lfs     f1, 0x138(r3)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x801da950
branch_0x801da934:
    cmplwi  r0, 0x0
    bne-    branch_0x801da9b4
    lwz     r3, 0x158(r31)
    lfs     f0, -0x267c(rtoc)
    lfs     f1, 0x138(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801da9b4
branch_0x801da950:
    lwz     r3, 0x158(r31)
    lfs     f0, 0x148(r3)
    lfs     f1, 0x138(r3)
    fneg    f0, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x138(r3)
    lfs     f1, 0x138(r3)
    lfs     f0, -0x78e4(r13)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801da984
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x138(r3)
branch_0x801da984:
    mr      r3, r31
    bl      marioHeadAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801da9b4
    lwz     r3, -0x60a0(r13)
    lwz     r4, 0x158(r31)
    lfsu    f2, 0x138(r4)
    lfs     f0, 0x0(r3)
    lfs     f1, 0x14c(r31)
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r4)
branch_0x801da9b4:
    lfs     f0, -0x267c(rtoc)
    stfs    f0, 0x140(r31)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl receiveMessage__14TCogwheelScaleFP9THitActorUl
receiveMessage__14TCogwheelScaleFP9THitActorUl: # 0x801da9d0
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    addi    r6, r3, 0x0
    stwu    sp, -0x8(sp)
    bne-    branch_0x801daa04
    lwz     r4, 0x158(r6)
    li      r3, 0x1
    lfs     f0, 0x150(r6)
    lfsu    f1, 0x138(r4)
    fadds   f0, f0, f1
    stfs    f0, 0x0(r4)
    b       branch_0x801daa0c

branch_0x801daa04:
    mr      r3, r6
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
branch_0x801daa0c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchWater__14TCogwheelScaleFP9THitActor
touchWater__14TCogwheelScaleFP9THitActor: # 0x801daa1c
    lfs     f1, 0x140(r3)
    lfs     f0, 0x144(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801daa38
    lfs     f0, -0x2610(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x140(r3)
branch_0x801daa38:
    li      r3, 0x1
    blr


.globl __dt__9TMareCorkFv
__dt__9TMareCorkFv: # 0x801daa40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801daaa8
    lis     r3, 0x803d
    addi    r3, r3, 0x12dc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801daa98
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801daa98:
    extsh.  r0, r31
    ble-    branch_0x801daaa8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801daaa8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TMareFallFv
__dt__9TMareFallFv: # 0x801daac4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dab2c
    lis     r3, 0x803d
    addi    r3, r3, 0x1440
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dab1c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dab1c:
    extsh.  r0, r31
    ble-    branch_0x801dab2c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dab2c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TMuddyBoatFv
__dt__10TMuddyBoatFv: # 0x801dab48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dabb0
    lis     r3, 0x803d
    addi    r3, r3, 0x15a4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801daba0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801daba0:
    extsh.  r0, r31
    ble-    branch_0x801dabb0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dabb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TMapObjPuncherFv
__dt__14TMapObjPuncherFv: # 0x801dabcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dac34
    lis     r3, 0x803d
    addi    r3, r3, 0x1708
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dac24
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dac24:
    extsh.  r0, r31
    ble-    branch_0x801dac34
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dac34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TWireBellFv
__dt__9TWireBellFv: # 0x801dac50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dacb8
    lis     r3, 0x803d
    addi    r3, r3, 0x186c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801daca8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801daca8:
    extsh.  r0, r31
    ble-    branch_0x801dacb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dacb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMapObjGrowTreeFv
__dt__15TMapObjGrowTreeFv: # 0x801dacd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dad3c
    lis     r3, 0x803d
    addi    r3, r3, 0x19d0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dad2c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dad2c:
    extsh.  r0, r31
    ble-    branch_0x801dad3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dad3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TMapObjElasticCodeFv
__dt__18TMapObjElasticCodeFv: # 0x801dad58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dadc0
    lis     r3, 0x803d
    addi    r3, r3, 0x1b34
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dadb0
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dadb0:
    extsh.  r0, r31
    ble-    branch_0x801dadc0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dadc0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TCogwheelFv
__dt__9TCogwheelFv: # 0x801daddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dae44
    lis     r3, 0x803d
    addi    r3, r3, 0x1c98
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801dae34
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801dae34:
    extsh.  r0, r31
    ble-    branch_0x801dae44
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dae44:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TCogwheelScaleFv
__dt__14TCogwheelScaleFv: # 0x801dae60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801daec8
    lis     r3, 0x803d
    addi    r3, r3, 0x1dfc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801daeb8
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801daeb8:
    extsh.  r0, r31
    ble-    branch_0x801daec8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801daec8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjMare_cpp
__sinit_MapObjMare_cpp: # 0x801daee4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x64a8
    lfs     f0, -0x2594(rtoc)
    stfs    f0, 0x0(r31)
    lfs     f0, -0x2590(rtoc)
    stfs    f0, 0x4(r31)
    lfs     f0, -0x258c(rtoc)
    stfs    f0, 0x8(r31)
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801daf44
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801daf44:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801daf74
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801daf74:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801dafa4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801dafa4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801dafd4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801dafd4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801db004
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801db004:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801db034
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801db034:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801db064
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801db064:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801db094
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801db094:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801db0c4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801db0c4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801db0f4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801db0f4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801db124
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801db124:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801db154
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801db154:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801db184
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801db184:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801db1b4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801db1b4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801db1e4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801db1e4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__14TCogwheelScaleFv
_32___dt__14TCogwheelScaleFv: # 0x801db1f8
    subi    r3, r3, 0x20
    b       __dt__14TCogwheelScaleFv


.globl _32___dt__9TCogwheelFv
_32___dt__9TCogwheelFv: # 0x801db200
    subi    r3, r3, 0x20
    b       __dt__9TCogwheelFv


.globl _32___dt__18TMapObjElasticCodeFv
_32___dt__18TMapObjElasticCodeFv: # 0x801db208
    subi    r3, r3, 0x20
    b       __dt__18TMapObjElasticCodeFv


.globl _32___dt__15TMapObjGrowTreeFv
_32___dt__15TMapObjGrowTreeFv: # 0x801db210
    subi    r3, r3, 0x20
    b       __dt__15TMapObjGrowTreeFv


.globl _32___dt__9TWireBellFv
_32___dt__9TWireBellFv: # 0x801db218
    subi    r3, r3, 0x20
    b       __dt__9TWireBellFv


.globl _32___dt__14TMapObjPuncherFv
_32___dt__14TMapObjPuncherFv: # 0x801db220
    subi    r3, r3, 0x20
    b       __dt__14TMapObjPuncherFv


.globl _32___dt__10TMuddyBoatFv
_32___dt__10TMuddyBoatFv: # 0x801db228
    subi    r3, r3, 0x20
    b       __dt__10TMuddyBoatFv


.globl _32___dt__9TMareFallFv
_32___dt__9TMareFallFv: # 0x801db230
    subi    r3, r3, 0x20
    b       __dt__9TMareFallFv


.globl _32___dt__9TMareCorkFv
_32___dt__9TMareCorkFv: # 0x801db238
    subi    r3, r3, 0x20
    b       __dt__9TMareCorkFv


.globl _32___dt__15TMareEventPointFv
_32___dt__15TMareEventPointFv: # 0x801db240
    subi    r3, r3, 0x20
    b       __dt__15TMareEventPointFv

