
.globl control__12TEffectModelFv
control__12TEffectModelFv: # 0x8003630c
    blr


.globl __dt__16TEffectExplosionFv
__dt__16TEffectExplosionFv: # 0x80036310
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80036378
    lis     r3, 0x803b
    subi    r3, r3, 0x2620
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80036368
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80036368:
    extsh.  r0, r31
    ble-    branch_0x80036378
    mr      r3, r30
    bl      __dl__FPv
branch_0x80036378:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x80036394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r31)
    mr      r5, r30
    lwz     r0, 0x4(r31)
    li      r4, 0xc4
    li      r6, 0x0
    stw     r3, 0x24(r29)
    li      r7, 0x0
    stw     r0, 0x28(r29)
    lwz     r0, 0x8(r31)
    stw     r0, 0x2c(r29)
    lfs     f31, 0x0(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036420
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80036420:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x0
    li      r4, 0xc5
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036458
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80036458:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x0
    li      r4, 0xc6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036490
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80036490:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x0
    li      r4, 0xa2
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800364c8
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x800364c8:
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl reset__16TEffectExplosionFv
reset__16TEffectExplosionFv: # 0x800364f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      reset__11TSpineEnemyFv
    lfs     f1, -0x74e0(rtoc)
    lfs     f0, -0x74dc(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74c8(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f0, -0x74d8(rtoc)
    subi    r4, rtoc, 0x74d4
    stw     r0, 0x20(sp)
    lfs     f1, 0x14(sp)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x74d4
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x74d4
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x4
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl init__16TEffectExplosionFP12TLiveManager
init__16TEffectExplosionFP12TLiveManager: # 0x80036618
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r0, 0xf0(r31)
    lis     r3, 0x1000
    addi    r3, r3, 0x20
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    subi    r4, rtoc, 0x74d4
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    stw     r3, 0x4c(r31)
    stfs    f0, 0x38(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x30(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    stw     r3, 0x4c(r31)
    lwz     r3, 0x74(r31)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x74d4
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x74d4
    bl      setBtk__6MActorFPCc
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12TEffectModelFv
__dt__12TEffectModelFv: # 0x800366d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80036720
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x80036720
    mr      r3, r30
    bl      __dl__FPv
branch_0x80036720:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__23TEffectExplosionManagerFv
createModelData__23TEffectExplosionManagerFv: # 0x8003673c
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2638
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__23TEffectExplosionManagerFv
createEnemyInstance__23TEffectExplosionManagerFv: # 0x80036770
    mflr    r0
    li      r3, 0x150
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800367c8
    lis     r4, 0x8037
    addi    r3, r31, 0x0
    addi    r4, r4, 0x6a70
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    subi    r3, r3, 0x2620
    addi    r0, r3, 0x24
    stw     r3, 0x0(r31)
    stw     r0, 0x20(r31)
branch_0x800367c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__23TEffectExplosionManagerFv
loadAfter__23TEffectExplosionManagerFv: # 0x800367e0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0xc4
    lbz     r0, 0xc4(r3)
    lis     r3, 0x8037
    addi    r31, r3, 0x6948
    cmplwi  r0, 0x0
    bne-    branch_0x8003682c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x138
    li      r5, 0xc4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8003682c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xc5
    lbz     r0, 0xc5(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8003685c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x160
    li      r5, 0xc5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8003685c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xc6
    lbz     r0, 0xc6(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8003688c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x188
    li      r5, 0xc6
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8003688c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__23TEffectExplosionManagerFR20JSUMemoryInputStream
load__23TEffectExplosionManagerFR20JSUMemoryInputStream: # 0x800368a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xa8
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800368e4
    lis     r3, 0x8037
    addi    r4, r3, 0x6af8
    addi    r3, r29, 0x0
    bl      __ct__17TSpineEnemyParamsFPCc
branch_0x800368e4:
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


.globl __ct__23TEffectExplosionManagerFPCc
__ct__23TEffectExplosionManagerFPCc: # 0x80036910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    subi    r0, r3, 0x24b8
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TEffectModelManagerFv
__dt__19TEffectModelManagerFv: # 0x80036958
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800369a0
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800369a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800369a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl generate__16TEffectColumSandFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
generate__16TEffectColumSandFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x800369bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r31)
    mr      r5, r30
    lwz     r0, 0x4(r31)
    li      r4, 0x7e
    li      r6, 0x0
    stw     r3, 0x24(r29)
    li      r7, 0x0
    stw     r0, 0x28(r29)
    lwz     r0, 0x8(r31)
    stw     r0, 0x2c(r29)
    lfs     f31, 0x0(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036a48
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80036a48:
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl reset__16TEffectColumSandFv
reset__16TEffectColumSandFv: # 0x80036a74
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x6948
    bl      reset__11TSpineEnemyFv
    lfs     f1, -0x74e0(rtoc)
    lfs     f0, -0x74dc(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74c8(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f0, -0x74d8(rtoc)
    addi    r4, r30, 0x1c8
    stw     r0, 0x20(sp)
    lfs     f1, 0x14(sp)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r31)
    addi    r4, r30, 0x1c8
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r31)
    addi    r4, r30, 0x1c8
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x4
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl init__16TEffectColumSandFP12TLiveManager
init__16TEffectColumSandFP12TLiveManager: # 0x80036ba8
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x6948
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r0, 0xf0(r30)
    lis     r3, 0x1000
    addi    r3, r3, 0x20
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    addi    r4, r31, 0x1c8
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    stw     r3, 0x4c(r30)
    stfs    f0, 0x38(r30)
    stfs    f0, 0x34(r30)
    stfs    f0, 0x30(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    stw     r3, 0x4c(r30)
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1c8
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x1c8
    bl      setBtk__6MActorFPCc
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__23TEffectColumSandManagerFv
createModelData__23TEffectColumSandManagerFv: # 0x80036c70
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2650
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__23TEffectColumSandManagerFv
createEnemyInstance__23TEffectColumSandManagerFv: # 0x80036ca4
    mflr    r0
    li      r3, 0x150
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80036cfc
    lis     r4, 0x8037
    addi    r3, r31, 0x0
    addi    r4, r4, 0x6b20
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    subi    r3, r3, 0x2464
    addi    r0, r3, 0x24
    stw     r3, 0x0(r31)
    stw     r0, 0x20(r31)
branch_0x80036cfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__23TEffectColumSandManagerFv
loadAfter__23TEffectColumSandManagerFv: # 0x80036d14
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x7e
    lbz     r0, 0x7e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80036d58
    lis     r4, 0x8037
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x6b30
    li      r5, 0x7e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x80036d58:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__23TEffectColumSandManagerFR20JSUMemoryInputStream
load__23TEffectColumSandManagerFR20JSUMemoryInputStream: # 0x80036d6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xa8
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80036dac
    lis     r3, 0x8037
    addi    r4, r3, 0x6b5c
    addi    r3, r29, 0x0
    bl      __ct__17TSpineEnemyParamsFPCc
branch_0x80036dac:
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


.globl __ct__23TEffectColumSandManagerFPCc
__ct__23TEffectColumSandManagerFPCc: # 0x80036dd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    subi    r0, r3, 0x2350
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl generate__21TEffectBombColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
generate__21TEffectBombColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x80036e20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r31)
    mr      r5, r30
    lwz     r0, 0x4(r31)
    li      r4, 0x2f
    li      r6, 0x0
    stw     r3, 0x24(r29)
    li      r7, 0x0
    stw     r0, 0x28(r29)
    lwz     r0, 0x8(r31)
    stw     r0, 0x2c(r29)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036ebc
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x80036ebc:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x0
    li      r4, 0x30
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036f0c
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x80036f0c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x0
    li      r4, 0x1d4
    li      r6, 0x2
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80036f5c
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x80036f5c:
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl reset__21TEffectBombColumWaterFv
reset__21TEffectBombColumWaterFv: # 0x80036f84
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x6948
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      reset__11TSpineEnemyFv
    lfs     f1, -0x74e0(rtoc)
    lfs     f0, -0x74dc(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74c8(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f0, -0x74d8(rtoc)
    addi    r4, r31, 0x22c
    stw     r0, 0x20(sp)
    lfs     f1, 0x14(sp)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x22c
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x22c
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x22c
    bl      setBpk__6MActorFPCc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x4
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x2
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl init__21TEffectBombColumWaterFP12TLiveManager
init__21TEffectBombColumWaterFP12TLiveManager: # 0x800370d8
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x6948
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r0, 0xf0(r30)
    lis     r3, 0x1000
    addi    r3, r3, 0x20
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    addi    r4, r31, 0x22c
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    stw     r3, 0x4c(r30)
    stfs    f0, 0x38(r30)
    stfs    f0, 0x34(r30)
    stfs    f0, 0x30(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    stw     r3, 0x4c(r30)
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x22c
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x22c
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x22c
    bl      setBpk__6MActorFPCc
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__28TEffectBombColumWaterManagerFv
createModelData__28TEffectBombColumWaterManagerFv: # 0x800371ac
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2668
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__28TEffectBombColumWaterManagerFv
createEnemyInstance__28TEffectBombColumWaterManagerFv: # 0x800371e0
    mflr    r0
    li      r3, 0x150
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80037238
    lis     r4, 0x8037
    addi    r3, r31, 0x0
    addi    r4, r4, 0x6b80
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    subi    r3, r3, 0x22fc
    addi    r0, r3, 0x24
    stw     r3, 0x0(r31)
    stw     r0, 0x20(r31)
branch_0x80037238:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__28TEffectBombColumWaterManagerFv
loadAfter__28TEffectBombColumWaterManagerFv: # 0x80037250
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x2f
    lbz     r0, 0x2f(r3)
    lis     r3, 0x8037
    addi    r31, r3, 0x6948
    cmplwi  r0, 0x0
    bne-    branch_0x8003729c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x24c
    li      r5, 0x2f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8003729c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x30
    lbz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800372cc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x27c
    li      r5, 0x30
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800372cc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1d4
    lbz     r0, 0x1d4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800372fc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2ac
    li      r5, 0x1d4
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800372fc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__28TEffectBombColumWaterManagerFR20JSUMemoryInputStream
load__28TEffectBombColumWaterManagerFR20JSUMemoryInputStream: # 0x80037314
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xa8
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80037354
    lis     r3, 0x8037
    addi    r4, r3, 0x6c24
    addi    r3, r29, 0x0
    bl      __ct__17TSpineEnemyParamsFPCc
branch_0x80037354:
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


.globl __ct__28TEffectBombColumWaterManagerFPCc
__ct__28TEffectBombColumWaterManagerFPCc: # 0x80037380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    subi    r0, r3, 0x21e8
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x800373c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r31)
    addi    r3, sp, 0x18
    lwz     r0, 0x4(r31)
    lfs     f1, -0x74c0(rtoc)
    stw     r4, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x20(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r3, 0x18(sp)
    mr      r5, r30
    lwz     r0, 0x1c(sp)
    li      r4, 0x89
    li      r6, 0x0
    stw     r3, 0x24(r29)
    li      r7, 0x0
    stw     r0, 0x28(r29)
    lwz     r0, 0x20(sp)
    stw     r0, 0x2c(r29)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80037488
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x80037488:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x0
    li      r4, 0x8a
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800374d8
    lfs     f0, 0x24(r29)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x17c(r3)
branch_0x800374d8:
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl reset__17TEffectColumWaterFv
reset__17TEffectColumWaterFv: # 0x80037500
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x6948
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      reset__11TSpineEnemyFv
    lfs     f1, -0x74e0(rtoc)
    lfs     f0, -0x74dc(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74c8(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f0, -0x74d8(rtoc)
    addi    r4, r31, 0x2f8
    stw     r0, 0x20(sp)
    lfs     f1, 0x14(sp)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x2f8
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x2f8
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x2f8
    bl      setBpk__6MActorFPCc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x5
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x4
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    li      r4, 0x2
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl init__17TEffectColumWaterFP12TLiveManager
init__17TEffectColumWaterFP12TLiveManager: # 0x80037654
    mflr    r0
    lis     r5, 0x8037
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r5, 0x6948
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r0, 0xf0(r30)
    lis     r3, 0x1000
    addi    r3, r3, 0x20
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    addi    r4, r31, 0x2f8
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    stw     r3, 0x4c(r30)
    stfs    f0, 0x38(r30)
    stfs    f0, 0x34(r30)
    stfs    f0, 0x30(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    stfs    f0, 0x24(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x2c(r30)
    stw     r3, 0x4c(r30)
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x2f8
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x2f8
    bl      setBtk__6MActorFPCc
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x2f8
    bl      setBpk__6MActorFPCc
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__24TEffectColumWaterManagerFv
createModelData__24TEffectColumWaterManagerFv: # 0x80037728
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2680
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__24TEffectColumWaterManagerFv
createEnemyInstance__24TEffectColumWaterManagerFv: # 0x8003775c
    mflr    r0
    li      r3, 0x150
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800377b4
    lis     r4, 0x8037
    addi    r3, r31, 0x0
    addi    r4, r4, 0x6c54
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    subi    r3, r3, 0x2194
    addi    r0, r3, 0x24
    stw     r3, 0x0(r31)
    stw     r0, 0x20(r31)
branch_0x800377b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__24TEffectColumWaterManagerFv
loadAfter__24TEffectColumWaterManagerFv: # 0x800377cc
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x89
    lbz     r0, 0x89(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80037810
    lis     r4, 0x8037
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x6c64
    li      r5, 0x89
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x80037810:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r31, r3, 0x8a
    lbz     r0, 0x8a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80037844
    lis     r4, 0x8037
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x6c8c
    li      r5, 0x8a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x80037844:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__24TEffectColumWaterManagerFR20JSUMemoryInputStream
load__24TEffectColumWaterManagerFR20JSUMemoryInputStream: # 0x80037858
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0xa8
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80037898
    lis     r3, 0x8037
    addi    r4, r3, 0x6cb4
    addi    r3, r29, 0x0
    bl      __ct__17TSpineEnemyParamsFPCc
branch_0x80037898:
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


.globl __ct__24TEffectColumWaterManagerFPCc
__ct__24TEffectColumWaterManagerFPCc: # 0x800378c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    subi    r0, r3, 0x2080
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__12TEffectModelFv
calcRootMatrix__12TEffectModelFv: # 0x8003790c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, sp, 0x30
    stw     r30, 0x78(sp)
    mr      r30, r3
    lfs     f0, -0x74bc(rtoc)
    lfs     f2, 0x34(r3)
    lfs     f5, 0x38(r3)
    mr      r3, r31
    fmuls   f4, f0, f2
    lfs     f1, 0x30(r30)
    lfs     f3, 0x18(r30)
    fmuls   f1, f0, f1
    lfs     f2, 0x14(r30)
    fmuls   f0, f0, f5
    fctiwz  f5, f1
    lfs     f1, 0x10(r30)
    fctiwz  f4, f4
    fctiwz  f0, f0
    stfd    f5, 0x70(sp)
    stfd    f4, 0x68(sp)
    lwz     r4, 0x74(sp)
    stfd    f0, 0x60(sp)
    lwz     r5, 0x6c(sp)
    lwz     r6, 0x64(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f29, 0x18(r30)
    mr      r3, r31
    lfs     f30, 0x14(r30)
    lfs     f31, 0x10(r30)
    bl      identity33__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fv
    stfs    f31, 0x3c(sp)
    mr      r3, r31
    stfs    f30, 0x4c(sp)
    stfs    f29, 0x5c(sp)
    lwz     r4, 0x74(r30)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x74(r30)
    lwz     r3, 0x24(r30)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl moveObject__12TEffectModelFv
moveObject__12TEffectModelFv: # 0x80037a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80037a50
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80037a50
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r31)
branch_0x80037a50:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__12TEffectModelFv
reset__12TEffectModelFv: # 0x80037a64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      reset__11TSpineEnemyFv
    lfs     f1, -0x74e0(rtoc)
    lfs     f0, -0x74dc(rtoc)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x18(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x74c8(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f0, -0x74d8(rtoc)
    stw     r0, 0x20(sp)
    lfs     f1, 0x14(sp)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl init__12TEffectModelFP12TLiveManager
init__12TEffectModelFP12TLiveManager: # 0x80037b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__11TSpineEnemyFP12TLiveManager
    lwz     r4, 0xf0(r31)
    lis     r3, 0x1000
    addi    r0, r3, 0x20
    ori     r3, r4, 0x1
    stw     r3, 0xf0(r31)
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r3, 0x64(r31)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    stw     r0, 0x4c(r31)
    stfs    f0, 0x38(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x30(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl insert__Q27JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__FQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorRCP14TEffectObjBase
insert__Q27JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__FQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorRCP14TEffectObjBase: # 0x80037b94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x80037bdc
    li      r3, 0x0
    b       branch_0x80037bf8

branch_0x80037bdc:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x80037bf8
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x80037bf8:
    cmplwi  r3, 0x0
    bne-    branch_0x80037c10
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x80037c2c

branch_0x80037c10:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x80037c2c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl perform__17TEffectObjManagerFUlPQ26JDrama9TGraphics
perform__17TEffectObjManagerFUlPQ26JDrama9TGraphics: # 0x80037c4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    addi    r28, r4, 0x0
    andi.   r0, r28, 0x9
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x80037d0c
    lwz     r3, 0x1c(r27)
    addi    r0, r27, 0x1c
    stw     r3, 0x48(sp)
    stw     r0, 0x44(sp)
    b       branch_0x80037cb4

branch_0x80037c84:
    lwz     r3, 0x48(sp)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x48(sp)
branch_0x80037cb4:
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x30(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x2c(sp)
    cmplw   r3, r0
    bne+    branch_0x80037c84
    li      r30, 0x0
    li      r31, 0x0
branch_0x80037cdc:
    lwz     r3, 0x24(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x5
    addi    r31, r31, 0x4
    blt+    branch_0x80037cdc
branch_0x80037d0c:
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl load__17TEffectObjManagerFR20JSUMemoryInputStream
load__17TEffectObjManagerFR20JSUMemoryInputStream: # 0x80037d20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__17TEffectObjManagerFPCc
__ct__17TEffectObjManagerFPCc: # 0x80037d40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stmw    r25, 0x1c(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r27, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r27)
    mr      r26, r27
    stw     r4, 0x4(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, 0x803b
    sth     r3, 0x8(r26)
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r26)
    li      r28, 0x0
    lis     r3, 0x803b
    sth     r28, 0xc(r26)
    subi    r0, r3, 0x1f18
    addi    r4, r27, 0x0
    stw     r0, 0x0(r27)
    addi    r0, r27, 0x1c
    stw     r28, 0x10(r27)
    lbz     r3, 0x10(sp)
    stb     r3, 0x14(r27)
    stw     r28, 0x18(r27)
    stw     r0, 0x1c(r27)
    stw     r0, 0x20(r27)
    lwz     r3, -0x70b0(r13)
    bl      registerOtherObj__10TConductorFPQ26JDrama8TViewObj
    stw     r27, -0x70a8(r13)
    li      r3, 0x14
    bl      __nwa__FUl
    stw     r3, 0x24(r27)
    lis     r3, 0x803b
    subi    r29, r3, 0x1ef4
    lis     r3, 0x8037
    lfs     f31, -0x74e0(rtoc)
    addi    r31, r28, 0x0
    addi    r27, r29, 0x24
    addi    r30, r3, 0x6ccc
    li      r26, 0x0
branch_0x80037df4:
    li      r3, 0x78
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x80037e24
    addi    r3, r25, 0x0
    addi    r4, r30, 0x0
    bl      __ct__9THitActorFPCc
    stw     r29, 0x0(r25)
    stw     r27, 0x20(r25)
    stw     r28, 0x68(r25)
    stfs    f31, 0x6c(r25)
    stfs    f31, 0x70(r25)
branch_0x80037e24:
    lwz     r3, 0x8(sp)
    addi    r26, r26, 0x1
    cmpwi   r26, 0x5
    lwz     r4, 0x24(r3)
    stwx    r25, r4, r31
    addi    r31, r31, 0x4
    blt+    branch_0x80037df4
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl erase__Q27JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__FQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iterator
erase__Q27JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__FQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iterator: # 0x80037e58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl behaveToWater__14TEffectObjBaseFP9THitActor
behaveToWater__14TEffectObjBaseFP9THitActor: # 0x80037ec4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x68(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x80037f98
    lfs     f1, 0x70(r31)
    lfs     f0, -0x74e0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80037f04
    lfs     f0, -0x74b8(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(r31)
    b       branch_0x80037f98

branch_0x80037f04:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28c5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80037f34
    addi    r4, r31, 0x10
    li      r3, 0x28c5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80037f34:
    li      r0, 0x3
    stw     r0, 0x68(r31)
    addi    r5, r31, 0x10
    li      r4, 0x8b
    lwz     r0, 0x64(r31)
    li      r6, 0x0
    li      r7, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80037f98
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
branch_0x80037f98:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl moveObject__14TEffectObjBaseFv
moveObject__14TEffectObjBaseFv: # 0x80037fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r3
    lwz     r0, 0x68(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x800380f4
    lwz     r5, 0x74(r29)
    addi    r3, r29, 0x24
    addi    r4, sp, 0x3c
    addi    r0, r5, 0x1
    stw     r0, 0x74(r29)
    lfs     f1, 0x70(r29)
    lfs     f0, 0x6c(r29)
    fdivs   f1, f1, f0
    bl      PSVECScale
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x1f5
    li      r6, 0x3
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8003803c
    lfs     f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f2, 0x44(sp)
    stfs    f0, 0x154(r3)
    stfs    f1, 0x158(r3)
    stfs    f2, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f1, 0x178(r3)
    stfs    f2, 0x17c(r3)
branch_0x8003803c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x1c4
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80038080
    lfs     f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f2, 0x44(sp)
    stfs    f0, 0x154(r3)
    stfs    f1, 0x158(r3)
    stfs    f2, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f1, 0x178(r3)
    stfs    f2, 0x17c(r3)
branch_0x80038080:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x10
    li      r4, 0x1c5
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800380c4
    lfs     f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f2, 0x44(sp)
    stfs    f0, 0x154(r3)
    stfs    f1, 0x158(r3)
    stfs    f2, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f1, 0x178(r3)
    stfs    f2, 0x17c(r3)
branch_0x800380c4:
    lwz     r3, gpMSound(r13)
    li      r4, 0x30b2
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800380f4
    addi    r4, r29, 0x10
    li      r3, 0x30b2
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800380f4:
    lwz     r0, 0x68(r29)
    cmpwi   r0, 0x3
    bne-    branch_0x80038108
    li      r0, 0x0
    stw     r0, 0x68(r29)
branch_0x80038108:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80038154

branch_0x80038114:
    lwz     r3, 0x44(r29)
    lwzx    r3, r3, r31
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x80038134
    li      r0, 0x1
    b       branch_0x80038138

branch_0x80038134:
    li      r0, 0x0
branch_0x80038138:
    clrlwi. r0, r0, 24
    beq-    branch_0x8003814c
    addi    r3, r29, 0x0
    li      r4, MARIOMSG_HURTFIRE
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x8003814c:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80038154:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x80038114
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl receiveMessage__14TEffectObjBaseFP9THitActorUl
receiveMessage__14TEffectObjBaseFP9THitActorUl: # 0x8003817c
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x800381a8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800381ac

branch_0x800381a8:
    li      r3, 0x0
branch_0x800381ac:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__14TEffectObjBaseFUlPQ26JDrama9TGraphics
perform__14TEffectObjBaseFUlPQ26JDrama9TGraphics: # 0x800381bc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    beq-    branch_0x80038200
    lwz     r0, 0x68(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x800381f0
    li      r0, 0x0
    stw     r0, 0x74(r3)
    li      r0, 0x2
    stw     r0, 0x68(r3)
branch_0x800381f0:
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb0(r12)
    mtlr    r12
    blrl
branch_0x80038200:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl reset__14TEffectObjBaseFv
reset__14TEffectObjBaseFv: # 0x80038214
    li      r0, 0x1
    stw     r0, 0x68(r3)
    li      r0, 0x0
    lfs     f0, -0x74b4(rtoc)
    stfs    f0, 0x6c(r3)
    stfs    f0, 0x70(r3)
    lwz     r4, 0x64(r3)
    clrrwi  r4, r4, 1
    stw     r4, 0x64(r3)
    stw     r0, 0x74(r3)
    blr


.globl init__14TEffectObjBaseFv
init__14TEffectObjBaseFv: # 0x80038240
    mflr    r0
    lis     r4, 0x1000
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x5
    li      r5, 0x5
    stwu    sp, -0x18(sp)
    lis     r6, 0x8000
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f1, -0x74b0(rtoc)
    lfs     f2, -0x74ac(rtoc)
    fmr     f3, f1
    fmr     f4, f2
    bl      initHitActor__9THitActorFUlUsiffff
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TEffectObjBaseFR20JSUMemoryInputStream
load__14TEffectObjBaseFR20JSUMemoryInputStream: # 0x800382a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r31, -0x70a8(r13)
    cmplwi  r31, 0x0
    beq-    branch_0x80038310
    addi    r0, r31, 0x1c
    stw     r30, 0x20(sp)
    addi    r5, sp, 0x18
    stw     r0, 0x1c(sp)
    addi    r3, sp, 0x14
    addi    r4, r31, 0x14
    lwz     r0, 0x1c(sp)
    addi    r6, sp, 0x20
    stw     r0, 0x18(sp)
    bl      insert__Q27JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__FQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorRCP14TEffectObjBase
    lwz     r3, 0x10(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r31)
branch_0x80038310:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __ct__14TEffectObjBaseFPCc
__ct__14TEffectObjBaseFPCc: # 0x80038328
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x1ef4
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    lfs     f0, -0x74e0(rtoc)
    stfs    f0, 0x6c(r31)
    stfs    f0, 0x70(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitEffect__19TEffectBiancoFunsuiFv
emitEffect__19TEffectBiancoFunsuiFv: # 0x80038380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    addi    r31, r30, 0x48
    lfs     f0, -0x74bc(rtoc)
    lfs     f2, 0x34(r3)
    lfs     f5, 0x38(r3)
    mr      r3, r31
    fmuls   f4, f0, f2
    lfs     f1, 0x30(r30)
    lfs     f3, 0x18(r30)
    fmuls   f1, f0, f1
    lfs     f2, 0x14(r30)
    fmuls   f0, f0, f5
    fctiwz  f5, f1
    lfs     f1, 0x10(r30)
    fctiwz  f4, f4
    fctiwz  f0, f0
    stfd    f5, 0x28(sp)
    stfd    f4, 0x20(sp)
    lwz     r4, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r5, 0x24(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x1a9
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x5006
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80038438
    addi    r4, r30, 0x10
    li      r3, 0x5006
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80038438:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl loadAfter__19TEffectBiancoFunsuiFv
loadAfter__19TEffectBiancoFunsuiFv: # 0x80038450
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x1a9
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lbz     r0, 0x1a9(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8003849c
    lis     r4, 0x8037
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x6cdc
    li      r5, 0x1a9
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x8003849c:
    lwz     r3, -0x70b0(r13)
    mr      r4, r30
    bl      registerOtherObj__10TConductorFPQ26JDrama8TViewObj
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl emitEffect__18TEffectPinnaFunsuiFv
emitEffect__18TEffectPinnaFunsuiFv: # 0x800384c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    addi    r31, r30, 0x48
    lfs     f0, -0x74bc(rtoc)
    lfs     f2, 0x34(r3)
    lfs     f5, 0x38(r3)
    mr      r3, r31
    fmuls   f4, f0, f2
    lfs     f1, 0x30(r30)
    lfs     f3, 0x18(r30)
    fmuls   f1, f0, f1
    lfs     f2, 0x14(r30)
    fmuls   f0, f0, f5
    fctiwz  f5, f1
    lfs     f1, 0x10(r30)
    fctiwz  f4, f4
    fctiwz  f0, f0
    stfd    f5, 0x28(sp)
    stfd    f4, 0x20(sp)
    lwz     r4, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r5, 0x24(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x1a8
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, gpMSound(r13)
    li      r4, 0x5006
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80038578
    addi    r4, r30, 0x10
    li      r3, 0x5006
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80038578:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl loadAfter__18TEffectPinnaFunsuiFv
loadAfter__18TEffectPinnaFunsuiFv: # 0x80038590
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x1a8
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lbz     r0, 0x1a8(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x800385dc
    lis     r4, 0x8037
    lwz     r3, -0x5fe0(r13)
    addi    r4, r4, 0x6d00
    li      r5, 0x1a8
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r31)
branch_0x800385dc:
    lwz     r3, -0x70b0(r13)
    mr      r4, r30
    bl      registerOtherObj__10TConductorFPQ26JDrama8TViewObj
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__13TSimpleEffectFUlPQ26JDrama9TGraphics
perform__13TSimpleEffectFUlPQ26JDrama9TGraphics: # 0x80038600
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x8(sp)
    beq-    branch_0x80038624
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x80038624:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__23TEffectExplosionManagerFv
__dt__23TEffectExplosionManagerFv: # 0x80038634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003868c
    lis     r3, 0x803b
    subi    r0, r3, 0x24b8
    stw     r0, 0x0(r30)
    beq-    branch_0x8003867c
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8003867c:
    extsh.  r0, r31
    ble-    branch_0x8003868c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003868c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TEffectColumSandFv
__dt__16TEffectColumSandFv: # 0x800386a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038710
    lis     r3, 0x803b
    subi    r3, r3, 0x2464
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80038700
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80038700:
    extsh.  r0, r31
    ble-    branch_0x80038710
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038710:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__23TEffectColumSandManagerFv
__dt__23TEffectColumSandManagerFv: # 0x8003872c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038784
    lis     r3, 0x803b
    subi    r0, r3, 0x2350
    stw     r0, 0x0(r30)
    beq-    branch_0x80038774
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80038774:
    extsh.  r0, r31
    ble-    branch_0x80038784
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038784:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TEffectBombColumWaterFv
__dt__21TEffectBombColumWaterFv: # 0x800387a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038808
    lis     r3, 0x803b
    subi    r3, r3, 0x22fc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800387f8
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800387f8:
    extsh.  r0, r31
    ble-    branch_0x80038808
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038808:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__28TEffectBombColumWaterManagerFv
__dt__28TEffectBombColumWaterManagerFv: # 0x80038824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003887c
    lis     r3, 0x803b
    subi    r0, r3, 0x21e8
    stw     r0, 0x0(r30)
    beq-    branch_0x8003886c
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8003886c:
    extsh.  r0, r31
    ble-    branch_0x8003887c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003887c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TEffectColumWaterFv
__dt__17TEffectColumWaterFv: # 0x80038898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038900
    lis     r3, 0x803b
    subi    r3, r3, 0x2194
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800388f0
    lis     r3, 0x803b
    subi    r3, r3, 0x202c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800388f0:
    extsh.  r0, r31
    ble-    branch_0x80038900
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038900:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TEffectColumWaterManagerFv
__dt__24TEffectColumWaterManagerFv: # 0x8003891c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038974
    lis     r3, 0x803b
    subi    r0, r3, 0x2080
    stw     r0, 0x0(r30)
    beq-    branch_0x80038964
    lis     r3, 0x803b
    subi    r0, r3, 0x250c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80038964:
    extsh.  r0, r31
    ble-    branch_0x80038974
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038974:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TEffectObjManagerFv
__dt__17TEffectObjManagerFv: # 0x80038990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    mr.     r31, r3
    addi    r27, r4, 0x0
    beq-    branch_0x80038a6c
    lis     r3, 0x803b
    subi    r3, r3, 0x1f18
    addic.  r0, r31, 0x14
    stw     r3, 0x0(r31)
    beq-    branch_0x80038a3c
    addi    r3, sp, 0x4c
    addi    r4, r31, 0x1c
    bl      __ct__Q37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorFPQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x44
    stw     r0, 0x48(sp)
    lwz     r4, 0x1c(r31)
    bl      __ct__Q37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorFPQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__6TNode_
    lwz     r0, 0x44(sp)
    addi    r30, sp, 0x30
    addi    r29, sp, 0x28
    stw     r0, 0x40(sp)
    addi    r28, sp, 0x24
    b       branch_0x80038a18

branch_0x800389f8:
    lwz     r0, 0x40(sp)
    addi    r5, r30, 0x0
    addi    r3, sp, 0x2c
    stw     r0, 0x30(sp)
    addi    r4, r31, 0x14
    bl      erase__Q27JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__FQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iterator
    lwz     r0, 0x2c(sp)
    stw     r0, 0x40(sp)
branch_0x80038a18:
    lwz     r5, 0x48(sp)
    mr      r3, r28
    lwz     r0, 0x40(sp)
    mr      r4, r29
    stw     r5, 0x28(sp)
    stw     r0, 0x24(sp)
    bl      __eq__7JGadgetFQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x800389f8
branch_0x80038a3c:
    cmplwi  r31, 0x0
    beq-    branch_0x80038a5c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80038a5c:
    extsh.  r0, r27
    ble-    branch_0x80038a6c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80038a6c:
    mr      r3, r31
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __eq__7JGadgetFQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iterator
__eq__7JGadgetFQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iterator: # 0x80038a84
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl __ct__Q37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorFPQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__6TNode_
__ct__Q37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__8iteratorFPQ37JGadget66TList_P14TEffectObjBase_Q27JGadget29TAllocator_P14TEffectObjBase__6TNode_: # 0x80038a9c
    stw     r4, 0x0(r3)
    blr


.globl __dt__14TEffectObjBaseFv
__dt__14TEffectObjBaseFv: # 0x80038aa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038b0c
    lis     r3, 0x803b
    subi    r3, r3, 0x1ef4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80038afc
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80038afc:
    extsh.  r0, r31
    ble-    branch_0x80038b0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038b0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19TEffectBiancoFunsuiFv
__dt__19TEffectBiancoFunsuiFv: # 0x80038b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038b90
    lis     r3, 0x803b
    subi    r3, r3, 0x1e40
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80038b80
    lis     r3, 0x803b
    subi    r3, r3, 0x1cf8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80038b80:
    extsh.  r0, r31
    ble-    branch_0x80038b90
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038b90:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TEffectPinnaFunsuiFv
__dt__18TEffectPinnaFunsuiFv: # 0x80038bac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038c14
    lis     r3, 0x803b
    subi    r3, r3, 0x1d9c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80038c04
    lis     r3, 0x803b
    subi    r3, r3, 0x1cf8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80038c04:
    extsh.  r0, r31
    ble-    branch_0x80038c14
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038c14:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TSimpleEffectFv
__dt__13TSimpleEffectFv: # 0x80038c30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80038c80
    lis     r3, 0x803b
    subi    r3, r3, 0x1cf8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x80038c80
    mr      r3, r30
    bl      __dl__FPv
branch_0x80038c80:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_effectObj_cpp
__sinit_effectObj_cpp: # 0x80038c9c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x118
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80038ce4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80038ce4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80038d14
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80038d14:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80038d44
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80038d44:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80038d74
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80038d74:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80038da4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80038da4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80038dd4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80038dd4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80038e04
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80038e04:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80038e34
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80038e34:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80038e64
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80038e64:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80038e94
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80038e94:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80038ec4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80038ec4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80038ef4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80038ef4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80038f24
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80038f24:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80038f54
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80038f54:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80038f84
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80038f84:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__13TSimpleEffectFv
_32___dt__13TSimpleEffectFv: # 0x80038f98
    subi    r3, r3, 0x20
    b       __dt__13TSimpleEffectFv


.globl _32___dt__18TEffectPinnaFunsuiFv
_32___dt__18TEffectPinnaFunsuiFv: # 0x80038fa0
    subi    r3, r3, 0x20
    b       __dt__18TEffectPinnaFunsuiFv


.globl _32___dt__19TEffectBiancoFunsuiFv
_32___dt__19TEffectBiancoFunsuiFv: # 0x80038fa8
    subi    r3, r3, 0x20
    b       __dt__19TEffectBiancoFunsuiFv


.globl _32___dt__14TEffectObjBaseFv
_32___dt__14TEffectObjBaseFv: # 0x80038fb0
    subi    r3, r3, 0x20
    b       __dt__14TEffectObjBaseFv


.globl _32___dt__12TEffectModelFv
_32___dt__12TEffectModelFv: # 0x80038fb8
    subi    r3, r3, 0x20
    b       __dt__12TEffectModelFv


.globl _32___dt__17TEffectColumWaterFv
_32___dt__17TEffectColumWaterFv: # 0x80038fc0
    subi    r3, r3, 0x20
    b       __dt__17TEffectColumWaterFv


.globl _32___dt__21TEffectBombColumWaterFv
_32___dt__21TEffectBombColumWaterFv: # 0x80038fc8
    subi    r3, r3, 0x20
    b       __dt__21TEffectBombColumWaterFv


.globl _32___dt__16TEffectColumSandFv
_32___dt__16TEffectColumSandFv: # 0x80038fd0
    subi    r3, r3, 0x20
    b       __dt__16TEffectColumSandFv


.globl _32___dt__16TEffectExplosionFv
_32___dt__16TEffectExplosionFv: # 0x80038fd8
    subi    r3, r3, 0x20
    b       __dt__16TEffectExplosionFv

