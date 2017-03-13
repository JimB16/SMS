
.globl __dt__21TCoasterKillerManagerFv
__dt__21TCoasterKillerManagerFv: # 0x80133c0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80133c64
    lis     r3, 0x803c
    subi    r0, r3, 0x1290
    stw     r0, 0x0(r30)
    beq-    branch_0x80133c54
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80133c54:
    extsh.  r0, r31
    ble-    branch_0x80133c64
    mr      r3, r30
    bl      __dl__FPv
branch_0x80133c64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createEnemyInstance__21TCoasterKillerManagerFv
createEnemyInstance__21TCoasterKillerManagerFv: # 0x80133c80
    mflr    r0
    li      r3, 0x200
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80133d00
    stw     r31, 0xc(sp)
    lis     r3, 0x8038
    addi    r4, r3, 0x6b7c
    stw     r31, 0x10(sp)
    lwz     r3, 0xc(sp)
    bl      __ct__12TWalkerEnemyFPCc
    lwz     r4, 0xc(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x1054
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r4)
    addi    r3, r4, 0x19c
    stw     r0, 0x198(r4)
    bl      __ct__Q29JGeometry8TVec4_f_Fv
    lwz     r4, 0x10(sp)
    lis     r3, 0x803c
    subi    r3, r3, 0x1228
    stw     r3, 0x0(r4)
    addi    r0, r3, 0x24
    addi    r3, r4, 0x1d0
    stw     r0, 0x20(r4)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
branch_0x80133d00:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__13TCoasterEnemyFv
__dt__13TCoasterEnemyFv: # 0x80133d18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80133d98
    lis     r3, 0x803c
    subi    r3, r3, 0x1054
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80133d88
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80133d88
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80133d88:
    extsh.  r0, r31
    ble-    branch_0x80133d98
    mr      r3, r30
    bl      __dl__FPv
branch_0x80133d98:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__21TCoasterKillerManagerFv
createModelData__21TCoasterKillerManagerFv: # 0x80133db4
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x12b4
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__21TCoasterKillerManagerFv
loadAfter__21TCoasterKillerManagerFv: # 0x80133de8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      loadAfter__18TSmallEnemyManagerFv
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl load__21TCoasterKillerManagerFR20JSUMemoryInputStream
load__21TCoasterKillerManagerFR20JSUMemoryInputStream: # 0x80133e1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r27, 0x5c(sp)
    mr      r31, r3
    lwz     r0, 0x38(r3)
    lis     r3, 0x8038
    addi    r28, r3, 0x6a20
    cmplwi  r0, 0x0
    mr      r3, r31
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x368
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80133f20
    stw     r30, 0x44(sp)
    addi    r4, r28, 0x170
    stw     r30, 0x50(sp)
    lwz     r3, 0x44(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r28, 0x18c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r27, 0x44(sp)
    addi    r5, r3, 0x0
    lfs     f1, -0x4ec0(rtoc)
    addi    r6, r28, 0x18c
    addi    r4, r27, 0x0
    addi    r3, r27, 0x32c
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42d0
    stw     r29, 0x32c(r27)
    addi    r3, r28, 0x1a4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x4ec0(rtoc)
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x340
    addi    r6, r28, 0x1a4
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r29, 0x340(r27)
    mr      r3, r27
    lwz     r4, 0x0(r27)
    bl      load__7TParamsFPCc
    lfs     f0, -0x7bd8(r13)
    addi    r3, r28, 0x1bc
    stfs    f0, 0x33c(r27)
    lfs     f0, -0x7bd4(r13)
    stfs    f0, 0x350(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r27, 0x50(sp)
    addi    r5, r3, 0x0
    addi    r6, r28, 0x1bc
    addi    r4, r27, 0x0
    addi    r3, r27, 0x354
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42c4
    stw     r0, 0x354(r27)
    mr      r3, r27
    lfs     f0, -0x4ebc(rtoc)
    stfs    f0, 0x364(r27)
    stw     r29, 0x354(r27)
    lwz     r4, 0x0(r27)
    bl      load__7TParamsFPCc
branch_0x80133f20:
    stw     r30, 0x38(r31)
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl __ct__21TCoasterKillerManagerFPCc
__ct__21TCoasterKillerManagerFPCc: # 0x80133f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x1290
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x60(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__28TNerveCoasterKillerExplosionCFP24TSpineBase_10TLiveActor_
execute__28TNerveCoasterKillerExplosionCFP24TSpineBase_10TLiveActor_: # 0x80133f84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r29, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80134008
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x364(r3)
    mr      r3, r29
    lfs     f1, 0x148(r29)
    lfs     f0, 0x50(r29)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x1ac(r29)
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x30(r29)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x4eb4(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
branch_0x80134008:
    lfs     f1, 0x190(r29)
    lfs     f0, 0x1ac(r29)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80134028
    lfs     f0, -0x4eb0(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x190(r29)
    b       branch_0x801340dc

branch_0x80134028:
    lwz     r0, 0x64(r29)
    addi    r3, r29, 0x0
    li      r4, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x801340dc
    lwz     r0, 0xf0(r29)
    li      r30, 0x0
    addi    r3, r29, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r29)
    stw     r30, 0x68(r29)
    bl      stopAnmSound__10TLiveActorFv
    stw     r30, 0x8(r31)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80134094
    stw     r0, 0x1c(r31)
branch_0x80134094:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r3, 0x14(r31)
    lwz     r5, 0x18(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x801340d4
    lwz     r4, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r4, r0
    bge-    branch_0x801340d4
    lwz     r3, 0xc(r31)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x801340d4:
    li      r3, 0x1
    b       branch_0x801340e8

branch_0x801340dc:
    mr      r3, r29
    bl      expandCollision__11TSmallEnemyFv
    li      r3, 0x0
branch_0x801340e8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl __dt__28TNerveCoasterKillerExplosionFv
__dt__28TNerveCoasterKillerExplosionFv: # 0x80134104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80134148
    lis     r3, 0x803c
    subi    r0, r3, 0x1238
    stw     r0, 0x0(r31)
    beq-    branch_0x80134138
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80134138:
    extsh.  r0, r4
    ble-    branch_0x80134148
    mr      r3, r31
    bl      __dl__FPv
branch_0x80134148:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setDeadAnm__14TCoasterKillerFv
setDeadAnm__14TCoasterKillerFv: # 0x80134160
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6b64
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    addi    r5, r4, 0x6bec
    addi    r4, r30, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r31, r3
    beq-    branch_0x801341fc
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    addi    r5, r30, 0x24
    bl      generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lfs     f0, 0x24(r31)
    lfs     f1, -0x4eac(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r31)
    lfs     f0, 0x28(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r31)
branch_0x801341fc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setNormalFlyAnm__14TCoasterKillerFv
setNormalFlyAnm__14TCoasterKillerFv: # 0x80134214
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6b50
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__14TCoasterKillerCFv
getBasNameTable__14TCoasterKillerCFv: # 0x80134268
    lis     r3, 0x803c
    subi    r3, r3, 0x12c8
    blr


.globl behaveToWater__14TCoasterKillerFP9THitActor
behaveToWater__14TCoasterKillerFP9THitActor: # 0x80134274
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x801342cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r3, 0x1238
    lis     r4, 0x8013
    stw     r0, -0x64d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x388c
    addi    r4, r4, 0x4104
    subi    r3, r13, 0x64d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x801342cc:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x64d4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80134378
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x80134320
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r4, 0x1238
    lis     r4, 0x8013
    stw     r0, -0x64d4(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x4104
    addi    r5, r5, 0x388c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x80134320:
    subi    r6, r13, 0x64d4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80134378
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8013436c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8013436c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8013436c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80134378:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isCollidMove__14TCoasterKillerFP9THitActor
isCollidMove__14TCoasterKillerFP9THitActor: # 0x8013438c
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r5, 0x3880
    stw     r30, 0x40(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r3, 0x0
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x801343f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r3, 0x1238
    lis     r3, 0x8013
    stw     r0, -0x64d4(r13)
    addi    r4, r3, 0x4104
    subi    r3, r13, 0x64d4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x801343f4:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x64d4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80134410
    li      r3, 0x0
    b       branch_0x8013459c

branch_0x80134410:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf800
    cmplwi  r0, 0x1f
    bne-    branch_0x80134428
    li      r0, 0x1
    b       branch_0x8013442c

branch_0x80134428:
    li      r0, 0x0
branch_0x8013442c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801344cc
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x80134474
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r3, 0x1238
    lis     r3, 0x8013
    stw     r0, -0x64d4(r13)
    addi    r4, r3, 0x4104
    subi    r3, r13, 0x64d4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x80134474:
    subi    r6, r13, 0x64d4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x801344cc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x801344c0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x801344c0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x801344c0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x801344cc:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x2b
    bne-    branch_0x801344e4
    li      r0, 0x1
    b       branch_0x801344e8

branch_0x801344e4:
    li      r0, 0x0
branch_0x801344e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80134598
    mr      r3, r30
    bl      isAttack__7TRocketFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80134598
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x80134540
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r3, 0x1238
    lis     r3, 0x8013
    stw     r0, -0x64d4(r13)
    addi    r4, r3, 0x4104
    subi    r3, r13, 0x64d4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x80134540:
    subi    r6, r13, 0x64d4
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x80134598
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8013458c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8013458c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8013458c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80134598:
    li      r3, 0x1
branch_0x8013459c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl attackToMario__14TCoasterKillerFv
attackToMario__14TCoasterKillerFv: # 0x801345b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x80134610
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r3, 0x1238
    lis     r4, 0x8013
    stw     r0, -0x64d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x388c
    addi    r4, r4, 0x4104
    subi    r3, r13, 0x64d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x80134610:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x64d4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x801346d8
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x80134664
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r4, 0x1238
    lis     r4, 0x8013
    stw     r0, -0x64d4(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x4104
    addi    r5, r5, 0x388c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x80134664:
    subi    r6, r13, 0x64d4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x801346bc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x801346b0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x801346b0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x801346b0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x801346bc:
    lwz     r3, 0x70(r31)
    lbz     r0, 0x60(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801346d8
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x801346d8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setMActorAndKeeper__14TCoasterKillerFv
setMActorAndKeeper__14TCoasterKillerFv: # 0x801346ec
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x6a20
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80134728
    lwz     r4, 0x70(r30)
    addi    r3, r27, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80134728:
    stw     r27, 0x78(r30)
    addi    r4, r31, 0x130
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    addi    r4, r31, 0x144
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x130
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1e8
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r27, r3, 0x0
    addi    r4, r31, 0x130
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1f4
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r28, r3, 0x0
    addi    r4, r31, 0x130
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    subi    r4, rtoc, 0x4ea8
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    addi    r29, r3, 0x0
    clrlwi  r4, r27, 16
    lwz     r3, 0x4(r5)
    addi    r6, r30, 0x1b8
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    clrlwi  r4, r28, 16
    addi    r6, r30, 0x1c0
    lwz     r3, 0x4(r3)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    clrlwi  r4, r29, 16
    addi    r6, r30, 0x1b0
    lwz     r3, 0x4(r3)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x144
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r6, r30, 0x1c8
    li      r4, 0x0
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl perform__14TCoasterKillerFUlPQ26JDrama9TGraphics
perform__14TCoasterKillerFUlPQ26JDrama9TGraphics: # 0x80134840
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x8013498c
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x8013498c
    addi    r3, r31, 0x1d0
    addi    r4, r31, 0x19c
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r31)
    addi    r5, r31, 0x1d0
    addi    r7, r31, 0x0
    stfs    f0, 0x1dc(r31)
    li      r4, 0x174
    li      r6, 0x1
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1ec(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x1fc(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r0, -0x64d8(r13)
    extsb.  r0, r0
    bne-    branch_0x801348f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64d4(r13)
    subi    r0, r3, 0x1238
    lis     r4, 0x8013
    stw     r0, -0x64d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x388c
    addi    r4, r4, 0x4104
    subi    r3, r13, 0x64d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64d8(r13)
branch_0x801348f8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x64d4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8013498c
    lwz     r3, MarioHitActorPos(r13)
    lfs     f3, 0x10(r31)
    lfs     f2, 0x0(r3)
    lfs     f1, 0x14(r31)
    fsubs   f4, f3, f2
    lfs     f0, 0x4(r3)
    lfs     f2, 0x18(r31)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r3)
    fsubs   f2, f2, f0
    fmuls   f1, f4, f4
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmr     f31, f1
    lwz     r3, gpMSound(r13)
    li      r4, 0x20ff
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8013498c
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x20ff
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x8013498c:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl reset__14TCoasterKillerFv
reset__14TCoasterKillerFv: # 0x801349a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x194(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__14TCoasterKillerFP12TLiveManager
init__14TCoasterKillerFP12TLiveManager: # 0x801349f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lwz     r3, -0x70b0(r13)
    subi    r4, rtoc, 0x4e94
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    li      r0, -0x1
    stw     r3, 0x0(r4)
    mr      r3, r31
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lbz     r0, -0x64e0(r13)
    extsb.  r0, r0
    bne-    branch_0x80134a78
    subi    r3, r13, 0x64dc
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x1064
    lis     r4, 0x8013
    stw     r0, -0x64dc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3880
    addi    r4, r4, 0x4b38
    subi    r3, r13, 0x64dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64e0(r13)
branch_0x80134a78:
    lwz     r6, 0x8c(r31)
    li      r5, 0x0
    lis     r3, 0x800
    stw     r5, 0x8(r6)
    subi    r4, r13, 0x64dc
    addi    r3, r3, 0x1f
    stw     r5, 0x20(r6)
    li      r0, 0x11
    stw     r4, 0x14(r6)
    stw     r4, 0x18(r6)
    stw     r5, 0x1c(r6)
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x1
    stw     r4, 0xf0(r31)
    lwz     r4, 0xf0(r31)
    ori     r4, r4, 0x10
    stw     r4, 0xf0(r31)
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x4eb4(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r3, 0x4c(r31)
    stw     r0, 0x150(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x400
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
    sth     r5, 0x1b0(r31)
    sth     r5, 0x1b2(r31)
    sth     r5, 0x1b4(r31)
    sth     r5, 0x1b8(r31)
    sth     r5, 0x1ba(r31)
    sth     r5, 0x1bc(r31)
    sth     r5, 0x1c0(r31)
    sth     r5, 0x1c2(r31)
    sth     r5, 0x1c4(r31)
    sth     r5, 0x1c8(r31)
    sth     r5, 0x1ca(r31)
    sth     r5, 0x1cc(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__24TNerveCoasterEnemyWanderFv
__dt__24TNerveCoasterEnemyWanderFv: # 0x80134b38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80134b7c
    lis     r3, 0x803c
    subi    r0, r3, 0x1064
    stw     r0, 0x0(r31)
    beq-    branch_0x80134b6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80134b6c:
    extsh.  r0, r4
    ble-    branch_0x80134b7c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80134b7c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14TCoasterKillerFPCc
__ct__14TCoasterKillerFPCc: # 0x80134b94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x1054
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r31)
    li      r0, 0x0
    subi    r4, r3, 0x1228
    stw     r0, 0x198(r31)
    addi    r0, r4, 0x24
    addi    r3, r31, 0x0
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveCoasterEnemyWanderCFP24TSpineBase_10TLiveActor_
execute__24TNerveCoasterEnemyWanderCFP24TSpineBase_10TLiveActor_: # 0x80134bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80134c5c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x194(r31)
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
branch_0x80134c5c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80134d00
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80134cb4
    lwz     r3, 0x194(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x194(r31)
    lwz     r3, 0x124(r31)
    lwz     r4, 0x194(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    cmpw    r4, r0
    blt-    branch_0x80134ce0
    li      r0, 0x0
    stw     r0, 0x194(r31)
    b       branch_0x80134ce0

branch_0x80134cb4:
    lwz     r3, 0x194(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x194(r31)
    lwz     r0, 0x194(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x80134ce0
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x8(r3)
    subi    r0, r3, 0x1
    stw     r0, 0x194(r31)
branch_0x80134ce0:
    lwz     r4, 0x194(r31)
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
branch_0x80134d00:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x5c(sp)
    li      r3, 0x0
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setWalkAnm__13TCoasterEnemyFv
setWalkAnm__13TCoasterEnemyFv: # 0x80134d2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setNormalFlyAnm__13TCoasterEnemyFv
setNormalFlyAnm__13TCoasterEnemyFv: # 0x80134d58
    blr


.globl calcRootMatrix__13TCoasterEnemyFv
calcRootMatrix__13TCoasterEnemyFv: # 0x80134d5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0xc
    addi    r4, r30, 0x19c
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    mr      r3, r30
    stfs    f0, 0x18(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x28(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x38(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    addi    r31, sp, 0xc
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl moveCoaster__13TCoasterEnemyFv
moveCoaster__13TCoasterEnemyFv: # 0x80134dec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x208(sp)
    stfd    f31, 0x200(sp)
    stfd    f30, 0x1f8(sp)
    stfd    f29, 0x1f0(sp)
    stfd    f28, 0x1e8(sp)
    stfd    f27, 0x1e0(sp)
    stfd    f26, 0x1d8(sp)
    stfd    f25, 0x1d0(sp)
    stfd    f24, 0x1c8(sp)
    stfd    f23, 0x1c0(sp)
    stfd    f22, 0x1b8(sp)
    stfd    f21, 0x1b0(sp)
    stw     r31, 0x1ac(sp)
    mr      r31, r3
    lwz     r4, 0x124(r3)
    addi    r3, sp, 0x13c
    lwz     r0, 0x0(r4)
    lwz     r5, 0x4(r4)
    mr      r4, r0
    bl      indexToPoint__9TGraphWebCFi
    lwz     r0, 0x13c(sp)
    lwz     r3, 0x140(sp)
    stw     r0, 0x198(sp)
    lwz     r0, 0x144(sp)
    stw     r3, 0x19c(sp)
    stw     r0, 0x1a0(sp)
    lfs     f1, 0x198(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x198(sp)
    lfs     f1, 0x19c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x19c(sp)
    lfs     f1, 0x1a0(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1a0(sp)
    lfs     f1, 0x198(sp)
    lfs     f3, 0x1a0(sp)
    lfs     f0, 0x19c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x4e8c(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80134ed0
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x1a0(sp)
    stfs    f0, 0x19c(sp)
    stfs    f0, 0x198(sp)
    b       branch_0x80134f00

branch_0x80134ed0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4eb4(rtoc)
    lfs     f0, 0x198(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x198(sp)
    lfs     f0, 0x19c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x19c(sp)
    lfs     f0, 0x1a0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a0(sp)
branch_0x80134f00:
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x80134f28
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f3, 0x33c(r3)
    b       branch_0x80134f40

branch_0x80134f28:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f3, 0x350(r3)
branch_0x80134f40:
    lfs     f0, 0x198(sp)
    stfs    f0, 0xac(r31)
    lfs     f0, 0x19c(sp)
    stfs    f0, 0xb0(r31)
    lfs     f2, 0x1a0(sp)
    stfs    f2, 0xb4(r31)
    lfs     f1, 0xac(r31)
    fmuls   f1, f1, f3
    stfs    f1, 0xac(r31)
    lfs     f1, 0xb0(r31)
    fmuls   f1, f1, f3
    stfs    f1, 0xb0(r31)
    lfs     f1, 0xb4(r31)
    fmuls   f1, f1, f3
    stfs    f1, 0xb4(r31)
    lfs     f12, 0x1a0(r31)
    lfs     f10, 0x1a8(r31)
    lfs     f9, 0x19c(r31)
    fmuls   f5, f12, f12
    lfs     f11, 0x1a4(r31)
    fmuls   f1, f10, f12
    lfs     f8, -0x4e98(rtoc)
    fmuls   f6, f9, f11
    fmuls   f1, f8, f1
    lfs     f3, -0x4eb4(rtoc)
    fmuls   f4, f9, f9
    lfs     f22, 0x198(sp)
    fmadds  f28, f8, f6, f1
    fmuls   f7, f12, f11
    lfs     f1, -0x4eb8(rtoc)
    fmuls   f6, f10, f9
    fnmsubs  f13, f8, f4, f3
    fmuls   f21, f8, f7
    fmuls   f7, f8, f6
    fnmsubs  f26, f8, f5, f13
    fmuls   f3, f28, f2
    fsubs   f27, f21, f7
    fmuls   f5, f26, f0
    fmsubs  f23, f26, f22, f3
    fmuls   f4, f27, f22
    fmsubs  f24, f27, f2, f5
    fmuls   f3, f23, f23
    fmuls   f5, f10, f11
    fmsubs  f22, f28, f0, f4
    fmadds  f3, f24, f24, f3
    fmuls   f4, f11, f11
    fmuls   f6, f9, f12
    fmadds  f25, f22, f22, f3
    fmuls   f3, f8, f5
    fnmsubs  f30, f8, f4, f13
    fcmpo   cr0, f25, f1
    fmsubs  f31, f8, f6, f3
    fadds   f29, f21, f7
    cror    2, 0, 2
    bne-    branch_0x80135020
    b       branch_0x80135044

branch_0x80135020:
    frsqrte f5, f25
    lfs     f4, -0x4ea0(rtoc)
    lfs     f1, -0x4e9c(rtoc)
    frsp    f5, f5
    fmuls   f3, f5, f5
    fmuls   f4, f4, f5
    fnmsubs  f1, f25, f3, f1
    fmuls   f1, f4, f1
    fmuls   f25, f25, f1
branch_0x80135044:
    lfs     f1, -0x4e8c(rtoc)
    fcmpo   cr0, f25, f1
    cror    2, 0, 2
    bne-    branch_0x80135070
    lfs     f1, -0x4eb8(rtoc)
    lfs     f0, -0x4eb4(rtoc)
    stfs    f1, 0x170(sp)
    stfs    f1, 0x174(sp)
    stfs    f1, 0x178(sp)
    stfs    f0, 0x17c(sp)
    b       branch_0x801350c8

branch_0x80135070:
    fmuls   f0, f27, f0
    lfs     f1, 0x198(sp)
    fmadds  f0, f28, f1, f0
    fmr     f1, f25
    fmadds  f2, f26, f2, f0
    bl      atan2f
    lfs     f0, -0x4ea0(rtoc)
    lfs     f2, -0x4e88(rtoc)
    fmuls   f0, f0, f1
    fmuls   f21, f2, f0
    fmr     f1, f21
    bl      sinf
    fdivs   f1, f1, f25
    fmuls   f0, f24, f1
    fmuls   f2, f23, f1
    stfs    f0, 0x170(sp)
    fmuls   f0, f22, f1
    fmr     f1, f21
    stfs    f2, 0x174(sp)
    stfs    f0, 0x178(sp)
    bl      cosf
    stfs    f1, 0x17c(sp)
branch_0x801350c8:
    lfs     f5, 0x17c(sp)
    lfs     f10, 0x19c(r31)
    lfs     f8, 0x1a0(r31)
    lfs     f9, 0x170(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1a8(r31)
    fmuls   f1, f5, f8
    lfs     f11, 0x174(sp)
    lfs     f4, 0x1a4(r31)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x178(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x19c(r31)
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f0, f11, f10, f0
    stfs    f1, 0x1a0(r31)
    fnmsubs  f2, f7, f4, f3
    stfs    f0, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
    lfs     f2, -0x4eb8(rtoc)
    lfs     f1, -0x4eb4(rtoc)
    fmuls   f3, f27, f2
    fmuls   f0, f28, f2
    fnmsubs  f22, f26, f1, f3
    fmsubs  f23, f26, f2, f0
    fmsubs  f24, f28, f1, f3
    fmuls   f0, f23, f23
    fmadds  f0, f22, f22, f0
    fmadds  f1, f24, f24, f0
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x80135174
    fmr     f0, f1
    b       branch_0x80135198

branch_0x80135174:
    frsqrte f4, f1
    lfs     f3, -0x4ea0(rtoc)
    lfs     f0, -0x4e9c(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f1, f2, f0
    fmuls   f0, f3, f0
    fmuls   f0, f1, f0
branch_0x80135198:
    lfs     f25, -0x4eb8(rtoc)
    fcmpo   cr0, f0, f25
    ble-    branch_0x801353cc
    lfs     f0, -0x4e8c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801351c0
    fmr     f22, f25
    fmr     f21, f22
    b       branch_0x801351d8

branch_0x801351c0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x4eb4(rtoc)
    fmuls   f0, f0, f1
    fmuls   f21, f22, f0
    fmuls   f22, f23, f0
    fmuls   f25, f24, f0
branch_0x801351d8:
    lfs     f1, -0x4e84(rtoc)
    bl      sinf
    fmuls   f3, f21, f1
    fmuls   f2, f22, f1
    fmuls   f0, f25, f1
    stfs    f3, 0x154(sp)
    stfs    f2, 0x158(sp)
    stfs    f0, 0x15c(sp)
    lfs     f1, -0x4e84(rtoc)
    bl      cosf
    stfs    f1, 0x160(sp)
    lfs     f9, 0x15c(sp)
    lfs     f5, 0x154(sp)
    fmuls   f1, f9, f28
    lfs     f11, 0x158(sp)
    fneg    f0, f5
    lfs     f10, 0x160(sp)
    fmuls   f3, f9, f27
    fmadds  f2, f0, f26, f1
    lfs     f1, -0x4eb8(rtoc)
    fmsubs  f4, f11, f26, f3
    fmuls   f3, f11, f28
    fmadds  f8, f10, f27, f2
    fmuls   f2, f11, f27
    fmsubs  f6, f5, f27, f3
    fneg    f12, f9
    fmsubs  f5, f0, f28, f2
    fmadds  f7, f10, f28, f4
    fmuls   f4, f8, f12
    fmuls   f3, f8, f10
    fneg    f11, f11
    fmuls   f2, f8, f0
    fmadds  f6, f10, f26, f6
    fmadds  f4, f7, f10, f4
    fmsubs  f2, f7, f11, f2
    fmadds  f3, f7, f9, f3
    fnmsubs  f5, f9, f26, f5
    fnmsubs  f4, f6, f11, f4
    fmadds  f2, f6, f10, f2
    fmadds  f3, f6, f0, f3
    fmadds  f4, f5, f0, f4
    fmadds  f6, f5, f12, f2
    fmadds  f5, f5, f11, f3
    fmuls   f0, f30, f4
    fmuls   f2, f31, f6
    fmuls   f3, f29, f5
    fmsubs  f24, f31, f5, f0
    fmsubs  f23, f29, f4, f2
    fmsubs  f22, f30, f6, f3
    fmuls   f0, f23, f23
    fmadds  f0, f22, f22, f0
    fmadds  f25, f24, f24, f0
    fcmpo   cr0, f25, f1
    cror    2, 0, 2
    bne-    branch_0x801352b8
    b       branch_0x801352dc

branch_0x801352b8:
    frsqrte f3, f25
    lfs     f2, -0x4ea0(rtoc)
    lfs     f0, -0x4e9c(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f25, f1, f0
    fmuls   f0, f2, f0
    fmuls   f25, f25, f0
branch_0x801352dc:
    lfs     f0, -0x4e8c(rtoc)
    fcmpo   cr0, f25, f0
    cror    2, 0, 2
    bne-    branch_0x80135308
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x170(sp)
    stfs    f0, 0x174(sp)
    stfs    f0, 0x178(sp)
    lfs     f0, -0x4eb4(rtoc)
    stfs    f0, 0x17c(sp)
    b       branch_0x8013535c

branch_0x80135308:
    fmuls   f0, f30, f5
    fmr     f1, f25
    fmadds  f0, f31, f4, f0
    fmadds  f2, f29, f6, f0
    bl      atan2f
    lfs     f0, -0x4ea0(rtoc)
    lfs     f2, -0x4e88(rtoc)
    fmuls   f0, f0, f1
    fmuls   f21, f2, f0
    fmr     f1, f21
    bl      sinf
    fdivs   f1, f1, f25
    fmuls   f0, f22, f1
    fmuls   f2, f23, f1
    stfs    f0, 0x170(sp)
    fmuls   f0, f24, f1
    fmr     f1, f21
    stfs    f2, 0x174(sp)
    stfs    f0, 0x178(sp)
    bl      cosf
    stfs    f1, 0x17c(sp)
branch_0x8013535c:
    lfs     f5, 0x17c(sp)
    lfs     f10, 0x19c(r31)
    lfs     f8, 0x1a0(r31)
    lfs     f9, 0x170(sp)
    fmuls   f0, f5, f10
    lfs     f6, 0x1a8(r31)
    fmuls   f1, f5, f8
    lfs     f4, 0x1a4(r31)
    lfs     f11, 0x174(sp)
    fmadds  f2, f9, f6, f0
    lfs     f7, 0x178(sp)
    fmuls   f0, f5, f4
    fmadds  f1, f11, f6, f1
    fmuls   f3, f9, f10
    fmadds  f2, f11, f4, f2
    fmadds  f0, f7, f6, f0
    fmadds  f1, f7, f10, f1
    fmsubs  f3, f5, f6, f3
    fnmsubs  f2, f7, f8, f2
    fmadds  f0, f9, f8, f0
    fnmsubs  f3, f11, f8, f3
    fnmsubs  f1, f9, f4, f1
    stfs    f2, 0x19c(r31)
    fnmsubs  f0, f11, f10, f0
    fnmsubs  f2, f7, f4, f3
    stfs    f1, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
branch_0x801353cc:
    lfs     f1, 0x19c(r31)
    lfs     f0, 0x1a0(r31)
    fmuls   f1, f1, f1
    lfs     f2, 0x1a4(r31)
    fmuls   f0, f0, f0
    lfs     f3, 0x1a8(r31)
    fmuls   f2, f2, f2
    fadds   f1, f1, f0
    lfs     f0, -0x4e8c(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80135420
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x19c(r31)
    b       branch_0x8013545c

branch_0x80135420:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4eb4(rtoc)
    lfs     f0, 0x19c(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x19c(r31)
    lfs     f0, 0x1a0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x1a4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a4(r31)
    lfs     f0, 0x1a8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a8(r31)
branch_0x8013545c:
    lwz     r0, 0x20c(sp)
    lfd     f31, 0x200(sp)
    lfd     f30, 0x1f8(sp)
    mtlr    r0
    lfd     f29, 0x1f0(sp)
    lfd     f28, 0x1e8(sp)
    lfd     f27, 0x1e0(sp)
    lfd     f26, 0x1d8(sp)
    lfd     f25, 0x1d0(sp)
    lfd     f24, 0x1c8(sp)
    lfd     f23, 0x1c0(sp)
    lfd     f22, 0x1b8(sp)
    lfd     f21, 0x1b0(sp)
    lwz     r31, 0x1ac(sp)
    addi    sp, sp, 0x208
    blr


.globl makeCoasterGoalPath__13TCoasterEnemyFv
makeCoasterGoalPath__13TCoasterEnemyFv: # 0x8013549c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r31)
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x12c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getGravityY__13TCoasterEnemyCFv
getGravityY__13TCoasterEnemyCFv: # 0x801354d8
    lfs     f1, -0x4eb8(rtoc)
    blr


.globl perform__13TCoasterEnemyFUlPQ26JDrama9TGraphics
perform__13TCoasterEnemyFUlPQ26JDrama9TGraphics: # 0x801354e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl reset__13TCoasterEnemyFv
reset__13TCoasterEnemyFv: # 0x8013550c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    ori     r3, r3, 0x80
    stw     r3, 0xf0(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x194(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl bind__13TCoasterEnemyFv
bind__13TCoasterEnemyFv: # 0x8013555c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r3)
    addi    r3, sp, 0x10
    stw     r4, 0x28(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x2c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lwz     r0, 0x28(sp)
    lwz     r5, 0x2c(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl moveObject__13TCoasterEnemyFv
moveObject__13TCoasterEnemyFv: # 0x80135638
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      moveObject__12TWalkerEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__13TCoasterEnemyFP12TLiveManager
init__13TCoasterEnemyFP12TLiveManager: # 0x80135658
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lwz     r3, -0x70b0(r13)
    subi    r4, rtoc, 0x4e94
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    li      r0, -0x1
    stw     r3, 0x0(r4)
    mr      r3, r31
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lbz     r0, -0x64e0(r13)
    extsb.  r0, r0
    bne-    branch_0x801356dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64dc(r13)
    subi    r0, r3, 0x1064
    lis     r4, 0x8013
    stw     r0, -0x64dc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3880
    addi    r4, r4, 0x4b38
    subi    r3, r13, 0x64dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64e0(r13)
branch_0x801356dc:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x64dc
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f0, -0x4eb8(rtoc)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x4eb4(rtoc)
    stfs    f0, 0x1a8(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__14TCoasterKillerFv
__dt__14TCoasterKillerFv: # 0x80135740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801357c0
    lis     r3, 0x803c
    subi    r3, r3, 0x1228
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801357b0
    lis     r3, 0x803c
    subi    r3, r3, 0x1054
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801357b0
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x801357b0:
    extsh.  r0, r31
    ble-    branch_0x801357c0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801357c0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_coasterkiller_cpp
__sinit_coasterkiller_cpp: # 0x801357dc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x3880
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80135824
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80135824:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80135854
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80135854:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80135884
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80135884:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801358b4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801358b4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801358e4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801358e4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80135914
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80135914:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80135944
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80135944:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80135974
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80135974:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801359a4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801359a4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801359d4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801359d4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80135a04
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80135a04:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80135a34
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80135a34:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80135a64
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80135a64:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80135a94
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80135a94:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80135ac4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80135ac4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__13TCoasterEnemyFv
_32___dt__13TCoasterEnemyFv: # 0x80135ad8
    subi    r3, r3, 0x20
    b       __dt__13TCoasterEnemyFv


.globl _32___dt__14TCoasterKillerFv
_32___dt__14TCoasterKillerFv: # 0x80135ae0
    subi    r3, r3, 0x20
    b       __dt__14TCoasterKillerFv

