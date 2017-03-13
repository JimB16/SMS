
.globl __dt__25TNerveKageMarioModokiWaitFv
__dt__25TNerveKageMarioModokiWaitFv: # 0x800805d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8008061c
    lis     r3, 0x803b
    addi    r0, r3, 0x32fc
    stw     r0, 0x0(r31)
    beq-    branch_0x8008060c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8008060c:
    extsh.  r0, r4
    ble-    branch_0x8008061c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8008061c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveKageMarioModokiWaitCFP24TSpineBase_10TLiveActor_
execute__25TNerveKageMarioModokiWaitCFP24TSpineBase_10TLiveActor_: # 0x80080634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800806cc
    lwz     r3, 0x74(r31)
    subi    r4, rtoc, 0x691c
    bl      setBck__6MActorFPCc
    li      r5, 0x0
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0x44(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x50(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
branch_0x800806cc:
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x80080798
    mr      r3, r31
    lfs     f1, -0x6914(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80080798
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80080734
    lfs     f0, -0x6910(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x80080734:
    lwz     r0, 0xf0(r31)
    lis     r3, 0x8038
    subi    r5, r3, 0x4ee4
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    addi    r4, r31, 0x10
    li      r6, 0x1
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, -0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r30, r3
    beq-    branch_0x80080790
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x124(r31)
    lwz     r3, 0x124(r30)
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
branch_0x80080790:
    li      r3, 0x1
    b       branch_0x800807b8

branch_0x80080798:
    mr      r3, r31
    lfs     f1, -0x6914(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x800807b8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl init__16TKageMarioModokiFP12TLiveManager
init__16TKageMarioModokiFP12TLiveManager: # 0x800807d0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    subi    r31, r5, 0x5058
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lbz     r0, -0x6d88(r13)
    extsb.  r0, r0
    bne-    branch_0x8008083c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d84(r13)
    addi    r0, r3, 0x32fc
    lis     r4, 0x8008
    stw     r0, -0x6d84(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xe04
    addi    r4, r4, 0x5d8
    subi    r3, r13, 0x6d84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d88(r13)
branch_0x8008083c:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x6d84
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r3, 0x74(r30)
    bl      resetDL__6MActorFv
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setLightType__6MActorFi
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x188
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x188
    mtlr    r12
    blrl
    lwz     r5, 0x74(r30)
    addi    r4, r31, 0x1a0
    lwz     r6, 0x10(r3)
    lwz     r3, 0x4(r5)
    lwz     r5, 0x20(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl load__16TKageMarioModokiFR20JSUMemoryInputStream
load__16TKageMarioModokiFR20JSUMemoryInputStream: # 0x800808d4
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


.globl createModelData__23TKageMarioModokiManagerFv
createModelData__23TKageMarioModokiManagerFv: # 0x80080914
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x32e4
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__23TKageMarioModokiManagerFv
createEnemyInstance__23TKageMarioModokiManagerFv: # 0x80080948
    mflr    r0
    li      r3, 0x194
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8008098c
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    subi    r4, r4, 0x4ea4
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3340
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
branch_0x8008098c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__23TKageMarioModokiManagerFR20JSUMemoryInputStream
load__23TKageMarioModokiManagerFR20JSUMemoryInputStream: # 0x800809a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x32c
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800809e4
    lis     r3, 0x8038
    subi    r4, r3, 0x4e90
    addi    r3, r29, 0x0
    bl      __ct__18TWalkerEnemyParamsFPCc
branch_0x800809e4:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl execute__19TNerveTelesaTrampleCFP24TSpineBase_10TLiveActor_
execute__19TNerveTelesaTrampleCFP24TSpineBase_10TLiveActor_: # 0x80080a10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x20(r4)
    lwz     r3, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80080a44
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80080a5c

branch_0x80080a44:
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80080a5c
    li      r3, 0x1
    b       branch_0x80080a60

branch_0x80080a5c:
    li      r3, 0x0
branch_0x80080a60:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__19TNerveTelesaTrampleFv
__dt__19TNerveTelesaTrampleFv: # 0x80080a70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80080ab4
    lis     r3, 0x803b
    addi    r0, r3, 0x3550
    stw     r0, 0x0(r31)
    beq-    branch_0x80080aa4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80080aa4:
    extsh.  r0, r4
    ble-    branch_0x80080ab4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80080ab4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveTelesaAttackMarioCFP24TSpineBase_10TLiveActor_
execute__23TNerveTelesaAttackMarioCFP24TSpineBase_10TLiveActor_: # 0x80080acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    stfd    f29, 0xe0(sp)
    stw     r31, 0xdc(sp)
    stw     r30, 0xd8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80080c2c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    addi    r3, sp, 0x80
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80080b5c
    lha     r3, 0x7c(r31)
    lis     r0, 0x4330
    lfd     f2, -0x68f0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f3, -0x6908(rtoc)
    stw     r3, 0xd4(sp)
    lfs     f0, -0x690c(rtoc)
    stw     r0, 0xd0(sp)
    lfd     f1, 0xd0(sp)
    fsubs   f1, f1, f2
    fnmsubs  f0, f3, f1, f0
    stfs    f0, 0x34(r31)
branch_0x80080b5c:
    lwz     r0, 0x10(r31)
    li      r4, 0x0
    lwz     r3, 0x14(r31)
    lfs     f3, -0x6904(rtoc)
    stw     r0, 0xb0(sp)
    lwz     r0, -0x5eac(r13)
    stw     r3, 0xb4(sp)
    lwz     r6, -0x5ea8(r13)
    lwz     r3, 0x18(r31)
    lfs     f2, -0x6900(rtoc)
    stw     r3, 0xb8(sp)
    lwz     r3, -0x5ea4(r13)
    lfs     f1, 0x34(r31)
    lfs     f0, 0xb0(sp)
    fmuls   f1, f3, f1
    fctiwz  f1, f1
    stfd    f1, 0xd0(sp)
    lwz     r5, 0xd4(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb0(sp)
    lfsx    f1, r3, r0
    lfs     f0, 0xb8(sp)
    stw     r4, 0xbc(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb8(sp)
    lwz     r3, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xb8(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0xbc(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xc8(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0xc8(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x80080c2c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x80080c44
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
branch_0x80080c44:
    mr      r3, r31
    bl      isReachedToGoalXZ__12TWalkerEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80080d54
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r3, 0x4c(sp)
    lfs     f1, -0x68fc(rtoc)
    stw     r0, 0x50(sp)
    lfs     f0, -0x68f8(rtoc)
    lwz     r0, 0x18(r31)
    stw     r0, 0x54(sp)
    lfs     f5, 0x0(r4)
    lfs     f4, 0x10(r31)
    lfs     f3, 0x8(r4)
    lfs     f2, 0x18(r31)
    fsubs   f30, f5, f4
    stfs    f1, 0x64(sp)
    fsubs   f29, f3, f2
    stfs    f0, 0x68(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x64(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x68f0(rtoc)
    stw     r0, 0xd4(sp)
    lis     r0, 0x4330
    li      r4, 0x0
    lfs     f1, -0x68f4(rtoc)
    stw     r0, 0xd0(sp)
    lfs     f2, 0x64(sp)
    lfd     f3, 0xd0(sp)
    lfs     f0, 0x4c(sp)
    fsubs   f3, f3, f4
    stw     r4, 0x70(sp)
    fmuls   f1, f1, f3
    fmuls   f1, f31, f1
    fadds   f1, f2, f1
    fmadds  f0, f30, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x54(sp)
    fmadds  f0, f29, f1, f0
    stfs    f0, 0x54(sp)
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x70(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x70(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x80080d54:
    mr      r3, r31
    lfs     f1, -0x6910(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xfc(sp)
    li      r3, 0x0
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    mtlr    r0
    lfd     f29, 0xe0(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    addi    sp, sp, 0xf8
    blr


.globl __dt__23TNerveTelesaAttackMarioFv
__dt__23TNerveTelesaAttackMarioFv: # 0x80080d98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80080ddc
    lis     r3, 0x803b
    addi    r0, r3, 0x3560
    stw     r0, 0x0(r31)
    beq-    branch_0x80080dcc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80080dcc:
    extsh.  r0, r4
    ble-    branch_0x80080ddc
    mr      r3, r31
    bl      __dl__FPv
branch_0x80080ddc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTelesaFreezeCFP24TSpineBase_10TLiveActor_
execute__18TNerveTelesaFreezeCFP24TSpineBase_10TLiveActor_: # 0x80080df4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80080eb0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x68e8(rtoc)
    stw     r3, 0x24(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    beq-    branch_0x80080e64
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x28(sp)
    stfs    f1, 0x2c(sp)
    stfs    f2, 0x30(sp)
branch_0x80080e64:
    lwz     r3, 0x24(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x28(sp)
    lwz     r3, 0x2c(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x30(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x28(sp)
    lwz     r3, 0x2c(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x30(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    b       branch_0x80080fd8

branch_0x80080eb0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80080fd8
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x80080ed8
    li      r0, 0x1
    b       branch_0x80080edc

branch_0x80080ed8:
    li      r0, 0x0
branch_0x80080edc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80080f68
    lfs     f1, -0x68e8(rtoc)
    lfs     f0, 0x198(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80080efc
    li      r0, 0x1
    b       branch_0x80080f44

branch_0x80080efc:
    lfs     f0, 0x1a0(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80080f10
    li      r0, 0x1
    b       branch_0x80080f44

branch_0x80080f10:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80080f24
    li      r0, 0x1
    b       branch_0x80080f28

branch_0x80080f24:
    li      r0, 0x0
branch_0x80080f28:
    cmpwi   r0, 0x0
    beq-    branch_0x80080f38
    li      r0, 0x1
    b       branch_0x80080f44

branch_0x80080f38:
    lfs     f0, 0x14(r31)
    li      r0, 0x0
    stfs    f0, 0x1b0(r31)
branch_0x80080f44:
    clrlwi. r0, r0, 24
    bne-    branch_0x80080fd8
    li      r0, 0x0
    stb     r0, 0x1c8(r31)
    li      r3, 0x1
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0x64(r31)
    b       branch_0x80081000

branch_0x80080f68:
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80080f7c
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x80080f7c:
    cmplwi  r3, 0x0
    bne-    branch_0x80080fa4
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x5
    bne-    branch_0x80080f98
    li      r0, 0x1
    b       branch_0x80080f9c

branch_0x80080f98:
    li      r0, 0x0
branch_0x80080f9c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80080fc0
branch_0x80080fa4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80080fd8

branch_0x80080fc0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80080fd8:
    mr      r3, r31
    bl      reduceFlyForce__7TTelesaFv
    lfs     f1, -0x68e8(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f0, -0x68e4(rtoc)
    fmr     f3, f1
    fmuls   f2, f0, f2
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x80081000:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __dt__18TNerveTelesaFreezeFv
__dt__18TNerveTelesaFreezeFv: # 0x80081014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80081058
    lis     r3, 0x803b
    addi    r0, r3, 0x3570
    stw     r0, 0x0(r31)
    beq-    branch_0x80081048
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80081048:
    extsh.  r0, r4
    ble-    branch_0x80081058
    mr      r3, r31
    bl      __dl__FPv
branch_0x80081058:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveTelesaDieCFP24TSpineBase_10TLiveActor_
execute__15TNerveTelesaDieCFP24TSpineBase_10TLiveActor_: # 0x80081070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r4
    stw     r29, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80081124
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800810b0
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x800810b0:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800810e4
    lwz     r0, 0x1dc(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800810d0
    cmpwi   r0, 0x2
    bne-    branch_0x800810d8
branch_0x800810d0:
    li      r0, 0x1
    stw     r0, 0x1dc(r31)
branch_0x800810d8:
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x800810e4:
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8008110c
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x80081124

branch_0x8008110c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80081124:
    mr      r3, r31
    bl      reduceFlyForce__7TTelesaFv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    bne-    branch_0x8008114c
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800812b4
branch_0x8008114c:
    lwz     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x800811d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r4, 0x8008
    stw     r0, -0x6da4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdd4
    addi    r4, r4, 0x12d4
    subi    r3, r13, 0x6da4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x800811d4:
    lwz     r0, 0x14(r30)
    subi    r3, r13, 0x6da4
    cmplwi  r0, 0x0
    beq-    branch_0x800811e8
    stw     r0, 0x1c(r30)
branch_0x800811e8:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80081228
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x80081228
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80081228:
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800812ac
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x70(r31)
    lbz     r3, 0x61(r4)
    addi    r0, r3, 0x1
    stb     r0, 0x61(r4)
    lbz     r0, 0x61(r4)
    cmplwi  r0, 0x5
    blt-    branch_0x80081294
    li      r0, 0x0
    stb     r0, 0x61(r4)
    lis     r3, 0x2000
    addi    r4, r3, 0x2
    lfs     f1, -0x68e0(rtoc)
    li      r5, 0x1
    lfs     f0, 0x14(r31)
    lwz     r3, gpItemManager(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x80081294:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xce
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800812ac:
    li      r3, 0x1
    b       branch_0x800812b8

branch_0x800812b4:
    li      r3, 0x0
branch_0x800812b8:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl __dt__15TNerveTelesaDieFv
__dt__15TNerveTelesaDieFv: # 0x800812d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80081318
    lis     r3, 0x803b
    addi    r0, r3, 0x3580
    stw     r0, 0x0(r31)
    beq-    branch_0x80081308
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80081308:
    extsh.  r0, r4
    ble-    branch_0x80081318
    mr      r3, r31
    bl      __dl__FPv
branch_0x80081318:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveTelesaImitateCFP24TSpineBase_10TLiveActor_
execute__19TNerveTelesaImitateCFP24TSpineBase_10TLiveActor_: # 0x80081330
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x6900
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x98(sp)
    lbz     r0, 0xe(r3)
    lwz     r3, 0x0(r4)
    cmplwi  r0, 0x7
    lwz     r31, 0x1c4(r3)
    mr      r30, r3
    beq-    branch_0x800813e0
    cmplwi  r0, 0xe
    beq-    branch_0x800813e0
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x800813b4
    cmplwi  r31, 0x0
    beq-    branch_0x800813b4
    lwz     r0, 0x1e0(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800813a8
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x800813a8:
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x800813b4:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x1f4
    ble-    branch_0x800813d8
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
branch_0x800813d8:
    li      r3, 0x0
    b       branch_0x800816bc

branch_0x800813e0:
    mr      r3, r30
    lfs     f1, -0x6914(rtoc)
    lwz     r12, 0x0(r30)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0xa
    bne-    branch_0x800814c4
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x68e8(rtoc)
    stw     r3, 0x68(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x70(sp)
    stfs    f0, 0x74(sp)
    beq-    branch_0x80081440
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f2, 0x74(sp)
branch_0x80081440:
    lwz     r3, 0x68(sp)
    cmplwi  r31, 0x0
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0x6c(sp)
    lwz     r3, 0x70(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0x74(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x68(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x6c(sp)
    lwz     r3, 0x70(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0x74(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
    beq-    branch_0x800814bc
    lwz     r0, 0x1e0(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800814ac
    lwz     r3, 0x1c4(r30)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
branch_0x800814ac:
    lwz     r3, 0x18(r31)
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
    b       branch_0x800814c4

branch_0x800814bc:
    li      r3, 0x1
    b       branch_0x800816bc

branch_0x800814c4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r30)
    lfs     f3, 0xf4(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800816b8
    lbz     r3, 0x165(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800814fc
    li      r0, 0x0
    stb     r0, 0x165(r30)
branch_0x800814fc:
    cmplwi  r3, 0x0
    bne-    branch_0x80081520
    lfs     f1, -0x68e8(rtoc)
    mr      r3, r30
    lwz     r4, MarioHitActorPos(r13)
    fmr     f2, f1
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x800816b8
branch_0x80081520:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x0
    stw     r0, 0x1c4(r30)
    lwz     r3, 0x194(r30)
    addi    r28, r3, 0x458
    lfs     f1, 0x45c(r3)
    lfs     f0, 0x458(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x94(sp)
    lis     r31, 0x4330
    lfs     f0, -0x68f4(rtoc)
    stw     r31, 0x90(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x90(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x19c(r30)
    lfs     f1, 0x19c(r30)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x19c(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x198(r30)
    lwz     r3, 0x194(r30)
    addi    r28, r3, 0x460
    lfs     f1, 0x464(r3)
    lfs     f0, 0x460(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x8c(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r31, 0x88(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x88(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1a4(r30)
    lfs     f1, 0x1a4(r30)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1a4(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r30)
    lwz     r3, 0x194(r30)
    addi    r28, r3, 0x468
    lfs     f1, 0x46c(r3)
    lfs     f0, 0x468(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x84(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r31, 0x80(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x80(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1ac(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x80081680
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x80081680
    lwz     r4, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x80081680:
    lwz     r3, gpMSound(r13)
    li      r4, 0x2937
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800816b0
    addi    r4, r30, 0x10
    li      r3, 0x2937
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800816b0:
    li      r3, 0x1
    b       branch_0x800816bc

branch_0x800816b8:
    li      r3, 0x0
branch_0x800816bc:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__19TNerveTelesaImitateFv
__dt__19TNerveTelesaImitateFv: # 0x800816e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80081724
    lis     r3, 0x803b
    addi    r0, r3, 0x3590
    stw     r0, 0x0(r31)
    beq-    branch_0x80081714
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80081714:
    extsh.  r0, r4
    ble-    branch_0x80081724
    mr      r3, r31
    bl      __dl__FPv
branch_0x80081724:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__18TMarioModokiTelesaFP12TLiveManager
init__18TMarioModokiTelesaFP12TLiveManager: # 0x8008173c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__7TTelesaFP12TLiveManager
    lbz     r0, -0x6db0(r13)
    extsb.  r0, r0
    bne-    branch_0x80081798
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dac(r13)
    addi    r0, r3, 0x3590
    lis     r4, 0x8008
    stw     r0, -0x6dac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdc8
    addi    r4, r4, 0x16e0
    subi    r3, r13, 0x6dac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6db0(r13)
branch_0x80081798:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6dac
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    stb     r3, 0x184(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__18TMarioModokiTelesaFR20JSUMemoryInputStream
load__18TMarioModokiTelesaFR20JSUMemoryInputStream: # 0x800817d0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    subi    r30, r5, 0x5058
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    addi    r28, r4, 0x0
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    addi    r3, r28, 0x0
    addi    r4, r31, 0x1e0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1e0(r31)
    lwz     r3, 0x70(r31)
    cmplwi  r0, 0xc
    lwz     r29, 0x64(r3)
    bgt-    branch_0x80081b08
    lis     r3, 0x803b
    addi    r3, r3, 0x330c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8008183C:		# jumptable 80081838 case 1
    addi    r3, r30, 0x1e4
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r28, r3
    beq-    branch_0x80081b08
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80081b08
    addi    r3, r28, 0x0
    lis     r4, 0x1002
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
    b       branch_0x80081b08

branch_0x80081878:		# jumptable 80081838 case 2
addi	  r3, r30, 0x1FC
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x800818B4:		# jumptable 80081838 case 3
addi	  r3, r30, 0x218
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x800818F0:		# jumptable 80081838 case 4
addi	  r3, r30, 0x234
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x8008192C:		# jumptable 80081838 case 5
addi	  r3, r30, 0x254
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x80081968:		# jumptable 80081838 case 6
addi	  r3, r30, 0x274
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x800819A4:		# jumptable 80081838 case 7
addi	  r3, r30, 0x294
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x800819E0:		# jumptable 80081838 case 8
addi	  r3, r30, 0x2B0
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x80081A1C:		# jumptable 80081838 case 9
addi	  r3, r30, 0x2D0
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x80081A58:		# jumptable 80081838 case 10
addi	  r3, r30, 0x2F0
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x80081A94:		# jumptable 80081838 case 11
addi	  r3, r30, 0x30C
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))
b	  def_80081838	# jumptable 80081838 default case

branch_0x80081AD0:		# jumptable 80081838 case 12
addi	  r3, r30, 0x32C
bl	  getGlbResource__13JKRFileLoaderFPCc #	JKRFileLoader::getGlbResource((char const *))
mr.	  r28, r3
beq	  def_80081838	# jumptable 80081838 default case
li	  r3, 0x1C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r29, r3
beq	  def_80081838	# jumptable 80081838 default case
addi	  r3, r28, 0
lis	  r4, 0x1002
bl	  load__22J3DModelLoaderDataBaseFPCvUl # J3DModelLoaderDataBase::load((void const *,ulong))
addi	  r4, r3, 0
addi	  r3, r29, 0
bl	  __ct__12SDLModelDataFP12J3DModelData # SDLModelData::SDLModelData((J3DModelData *))

def_80081838:		# jumptable 80081838 default case
branch_0x80081b08:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80081b34
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r6, r29, 0x0
    addi    r8, r30, 0x348
    li      r5, 0x0
    li      r7, 0x3
    bl      __ct__12TSharedPartsFPC10TLiveActoriP12SDLModelDataUlPCc
branch_0x80081b34:
    stw     r28, 0x1c4(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x14(r31)
    li      r0, 0x0
    stfs    f0, 0x1b0(r31)
    stw     r0, 0x1bc(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__18TMarioModokiTelesaFPCc
__ct__18TMarioModokiTelesaFPCc: # 0x80081b8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__7TTelesaFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x35a0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x1e0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__7TTelesaFv
__dt__7TTelesaFv: # 0x80081bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80081c58
    lis     r3, 0x803b
    addi    r3, r3, 0x3c80
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80081c48
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80081c48
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80081c48:
    extsh.  r0, r31
    ble-    branch_0x80081c58
    mr      r3, r30
    bl      __dl__FPv
branch_0x80081c58:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isHitValid__10TBoxTelesaFUl
isHitValid__10TBoxTelesaFUl: # 0x80081c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6d90(r13)
    extsb.  r0, r0
    bne-    branch_0x80081ccc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d8c(r13)
    addi    r0, r3, 0x3550
    lis     r4, 0x8008
    stw     r0, -0x6d8c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdf8
    addi    r4, r4, 0xa70
    subi    r3, r13, 0x6d8c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d90(r13)
branch_0x80081ccc:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6d8c
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80081d7c
    lbz     r0, -0x6d90(r13)
    extsb.  r0, r0
    bne-    branch_0x80081d20
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6d8c(r13)
    addi    r0, r4, 0x3550
    lis     r4, 0x8008
    stw     r0, -0x6d8c(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0xa70
    addi    r5, r5, 0xdf8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d90(r13)
branch_0x80081d20:
    subi    r6, r13, 0x6d8c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80081d94
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80081d6c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80081d6c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80081d6c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x80081d94

branch_0x80081d7c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80081d94:
    lwz     r0, 0x3c(sp)
    li      r3, 0x0
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl reset__10TBoxTelesaFv
reset__10TBoxTelesaFv: # 0x80081dac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r3, 0x194(r31)
    addi    r30, r3, 0x458
    lfs     f1, 0x45c(r3)
    lfs     f0, 0x458(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x4c(sp)
    lis     r29, 0x4330
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x48(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x19c(r31)
    lfs     f1, 0x19c(r31)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x19c(r31)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x198(r31)
    lwz     r3, 0x194(r31)
    addi    r30, r3, 0x460
    lfs     f1, 0x464(r3)
    lfs     f0, 0x460(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x44(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x40(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1a4(r31)
    lfs     f1, 0x1a4(r31)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r31)
    lwz     r3, 0x194(r31)
    addi    r28, r3, 0x468
    lfs     f1, 0x46c(r3)
    lfs     f0, 0x468(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x3c(sp)
    li      r30, 0x0
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x38(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1ac(r31)
    stb     r30, 0x1b8(r31)
    lfs     f0, -0x68dc(rtoc)
    stfs    f0, 0xc0(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 5, 2
    stw     r0, 0x64(r31)
    lwz     r0, 0x150(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80081f84
    lbz     r0, -0x6d98(r13)
    extsb.  r0, r0
    bne-    branch_0x80081f60
    subi    r3, r13, 0x6d94
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3560
    lis     r4, 0x8008
    stw     r0, -0x6d94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdec
    addi    r4, r4, 0xd98
    subi    r3, r13, 0x6d94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d98(r13)
branch_0x80081f60:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6d94
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    b       branch_0x80081fa0

branch_0x80081f84:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r31)
    stw     r30, 0x8(r4)
    stw     r30, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r30, 0x1c(r4)
branch_0x80081fa0:
    lwz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8008200c
    lbz     r0, -0x6db0(r13)
    extsb.  r0, r0
    bne-    branch_0x80081fec
    subi    r3, r13, 0x6dac
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x3590
    lis     r4, 0x8008
    stw     r0, -0x6dac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdc8
    addi    r4, r4, 0x16e0
    subi    r3, r13, 0x6dac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6db0(r13)
branch_0x80081fec:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6dac
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
branch_0x8008200c:
    lis     r3, 0x8038
    subi    r4, r3, 0x4f0c
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1ce(r31)
    stw     r0, 0x1d2(r31)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x1ce(r31)
    stw     r0, 0x1d2(r31)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl load__10TBoxTelesaFR20JSUMemoryInputStream
load__10TBoxTelesaFR20JSUMemoryInputStream: # 0x80082058
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x14(r31)
    li      r5, 0x0
    li      r3, 0x2
    stfs    f0, 0x1b0(r31)
    li      r0, 0x3
    li      r4, 0x1
    stw     r5, 0x1bc(r31)
    stw     r5, 0x1dc(r31)
    lwz     r5, 0xf0(r31)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0xf0(r31)
    stw     r3, 0x1bc(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    li      r0, 0x40
    stw     r0, 0x150(r31)
    lis     r3, 0x8038
    addi    r6, sp, 0x14
    lfs     f0, -0x68e8(rtoc)
    addi    r5, sp, 0x20
    lfs     f1, -0x6914(rtoc)
    addi    r4, sp, 0x2c
    stfs    f0, 0x20(sp)
    subi    r3, r3, 0x4d00
    stfs    f1, 0x14(sp)
    stfs    f0, 0x2c(sp)
    stfs    f1, 0x18(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x30(sp)
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x34(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    cmplwi  r3, 0x0
    beq-    branch_0x8008214c
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    lfs     f0, -0x6914(rtoc)
    stfs    f0, 0x24(r3)
    stfs    f0, 0x28(r3)
    stfs    f0, 0x2c(r3)
branch_0x8008214c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__10TBoxTelesaFPCc
__ct__10TBoxTelesaFPCc: # 0x80082160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__7TTelesaFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3758
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__11TLoopTelesaFR20JSUMemoryInputStream
load__11TLoopTelesaFR20JSUMemoryInputStream: # 0x800821a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x14(r31)
    li      r3, 0x0
    li      r0, 0x1
    stfs    f0, 0x1b0(r31)
    stw     r3, 0x1bc(r31)
    stw     r3, 0x1dc(r31)
    lwz     r3, 0xf0(r31)
    rlwinm  r3, r3, 0, 31, 29
    stw     r3, 0xf0(r31)
    stw     r0, 0x1bc(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__11TLoopTelesaFPCc
__ct__11TLoopTelesaFPCc: # 0x8008221c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__7TTelesaFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3910
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__10TSeeTelesaFR20JSUMemoryInputStream
load__10TSeeTelesaFR20JSUMemoryInputStream: # 0x80082260
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x14(r31)
    li      r5, 0x0
    li      r3, 0x2
    stfs    f0, 0x1b0(r31)
    li      r0, 0x3
    li      r4, 0x1
    stw     r5, 0x1bc(r31)
    stw     r5, 0x1dc(r31)
    lwz     r5, 0xf0(r31)
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0xf0(r31)
    stw     r3, 0x1bc(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__10TSeeTelesaFPCc
__ct__10TSeeTelesaFPCc: # 0x800822e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__7TTelesaFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3ac8
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl changeTevKColor__7TTelesaFv
changeTevKColor__7TTelesaFv: # 0x8008232c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r0, 0x1dc(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x800824e8
    bge-    branch_0x80082360
    cmpwi   r0, 0x0
    beq-    branch_0x80082448
    bge-    branch_0x80082490
    b       branch_0x80082530

branch_0x80082360:
    cmpwi   r0, 0x4
    bge-    branch_0x80082530
    li      r0, 0xff
    stb     r0, 0x1cc(r31)
    li      r0, 0x0
    stw     r0, 0x1d8(r31)
    lwz     r0, 0x1bc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80082430
    lbz     r0, -0x6da0(r13)
    extsb.  r0, r0
    bne-    branch_0x800823c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d9c(r13)
    addi    r0, r3, 0x3570
    lis     r4, 0x8008
    stw     r0, -0x6d9c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xde0
    addi    r4, r4, 0x1014
    subi    r3, r13, 0x6d9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da0(r13)
branch_0x800823c8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6d9c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80082430
    lwz     r3, 0x1c0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c0(r31)
    lwz     r4, 0x194(r31)
    lwz     r0, 0x1bc(r31)
    addi    r3, r4, 0x440
    cmpwi   r0, 0x0
    lwz     r3, 0x0(r3)
    bne-    branch_0x80082404
    lwz     r3, 0x350(r4)
branch_0x80082404:
    lwz     r0, 0x1c0(r31)
    cmpw    r0, r3
    ble-    branch_0x80082530
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      setLightType__6MActorFi
    li      r0, 0x2
    stw     r0, 0x1dc(r31)
    li      r0, 0x0
    stw     r0, 0x1c0(r31)
    b       branch_0x80082530

branch_0x80082430:
    lwz     r3, 0x194(r31)
    li      r0, 0x0
    lwz     r3, 0x364(r3)
    stw     r3, 0x1d8(r31)
    stw     r0, 0x1c0(r31)
    b       branch_0x80082530

branch_0x80082448:
    li      r5, 0x0
    stw     r5, 0x1d8(r31)
    stb     r5, 0x1cc(r31)
    lwz     r0, 0x1bc(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80082530
    lwz     r3, 0x1c0(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c0(r31)
    lwz     r3, 0x194(r31)
    lwz     r4, 0x1c0(r31)
    lwz     r0, 0x454(r3)
    cmpw    r4, r0
    ble-    branch_0x80082530
    li      r0, 0x1
    stw     r0, 0x1dc(r31)
    stw     r5, 0x1c0(r31)
    b       branch_0x80082530

branch_0x80082490:
    lwz     r4, 0x194(r31)
    lwz     r3, 0x1d8(r31)
    lwz     r4, 0x33c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x1d8(r31)
    lwz     r0, 0x1d8(r31)
    mulli   r0, r0, 0xff
    divw    r0, r0, r4
    cmpwi   r0, 0xff
    blt-    branch_0x800824e0
    li      r0, 0x3
    stw     r0, 0x1dc(r31)
    li      r3, 0x0
    li      r0, 0xff
    stw     r3, 0x1d8(r31)
    li      r4, 0x1
    stb     r0, 0x1cc(r31)
    lwz     r3, 0x74(r31)
    bl      setLightType__6MActorFi
    b       branch_0x80082530

branch_0x800824e0:
    stb     r0, 0x1cc(r31)
    b       branch_0x80082530

branch_0x800824e8:
    lwz     r4, 0x194(r31)
    lwz     r3, 0x1d8(r31)
    lwz     r4, 0x364(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x1d8(r31)
    lwz     r3, 0x1d8(r31)
    lbz     r0, 0x1cc(r31)
    mulli   r3, r3, 0xff
    divw    r3, r3, r4
    cmplwi  r0, 0x0
    subfic  r0, r3, 0xff
    bne-    branch_0x8008252c
    li      r0, 0x0
    stw     r0, 0x1dc(r31)
    stb     r0, 0x1cc(r31)
    stw     r0, 0x1d8(r31)
    b       branch_0x80082530

branch_0x8008252c:
    stb     r0, 0x1cc(r31)
branch_0x80082530:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl isCollidMove__7TTelesaFP9THitActor
isCollidMove__7TTelesaFP9THitActor: # 0x80082544
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x20
    bne-    branch_0x8008255c
    li      r3, 0x0
    blr

branch_0x8008255c:
    li      r3, 0x1
    blr


.globl setAttacker__7TTelesaFv
setAttacker__7TTelesaFv: # 0x80082564
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x1b8(r30)
    li      r3, 0x2
    li      r0, 0x3
    lwz     r5, 0xf0(r30)
    li      r4, 0x1
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0xf0(r30)
    stb     r31, 0x184(r30)
    stw     r3, 0x1bc(r30)
    stw     r0, 0x1dc(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
    lwz     r3, 0x74(r30)
    bl      setLightType__6MActorFi
    lbz     r0, -0x6d98(r13)
    extsb.  r0, r0
    bne-    branch_0x8008260c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d94(r13)
    addi    r0, r3, 0x3560
    lis     r4, 0x8008
    stw     r0, -0x6d94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdec
    addi    r4, r4, 0xd98
    subi    r3, r13, 0x6d94
    bl      __register_global_object
    stb     r31, -0x6d98(r13)
branch_0x8008260c:
    lwz     r4, 0x8c(r30)
    li      r6, 0x0
    subi    r0, r13, 0x6d94
    stw     r6, 0x8(r4)
    mr      r3, r30
    stw     r6, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r6, 0x1c(r4)
    stw     r6, 0x20(sp)
    lwz     r5, MarioHitActorPos(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0xf4(r30)
    lwz     r4, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0xf8(r30)
    stw     r0, 0xfc(r30)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x100(r30)
    lwz     r0, 0x20(sp)
    stw     r0, 0x104(r30)
    lwz     r4, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r4, 0x108(r30)
    stw     r0, 0x10c(r30)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x110(r30)
    stw     r6, 0x118(r30)
    stb     r6, 0x1c8(r30)
    lwz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0x64(r30)
    lwz     r0, 0x150(r30)
    rlwinm  r0, r0, 0, 26, 24
    stw     r0, 0x150(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl initItemAttacker__7TTelesaFP9THitActor
initItemAttacker__7TTelesaFP9THitActor: # 0x800826d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r4
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r29, 0x5c(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xf0(r30)
    li      r29, 0x1
    li      r0, 0x0
    rlwinm  r3, r3, 0, 31, 29
    stw     r3, 0xf0(r30)
    stb     r29, 0x1b8(r30)
    stw     r0, 0x1bc(r30)
    stw     r0, 0x1dc(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
    lbz     r0, -0x6d98(r13)
    extsb.  r0, r0
    bne-    branch_0x80082778
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d94(r13)
    addi    r0, r3, 0x3560
    lis     r4, 0x8008
    stw     r0, -0x6d94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdec
    addi    r4, r4, 0xd98
    subi    r3, r13, 0x6d94
    bl      __register_global_object
    stb     r29, -0x6d98(r13)
branch_0x80082778:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    subi    r0, r13, 0x6d94
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    bl      SMS_GetMarioGrLevel__Fv
    lfs     f0, -0x68d8(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x1b0(r30)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x38(r31)
    stw     r0, 0x38(r30)
    lwz     r3, 0x194(r30)
    addi    r29, r3, 0x458
    lfs     f1, 0x45c(r3)
    lfs     f0, 0x458(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x54(sp)
    lis     r31, 0x4330
    lfs     f0, -0x68f4(rtoc)
    stw     r31, 0x50(sp)
    lfs     f1, 0x0(r29)
    lfd     f2, 0x50(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x19c(r30)
    lfs     f1, 0x19c(r30)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x19c(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x198(r30)
    lwz     r3, 0x194(r30)
    addi    r29, r3, 0x460
    lfs     f1, 0x464(r3)
    lfs     f0, 0x460(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x4c(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r31, 0x48(sp)
    lfs     f1, 0x0(r29)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1a4(r30)
    lfs     f1, 0x1a4(r30)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1a4(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r30)
    lwz     r3, 0x194(r30)
    addi    r29, r3, 0x468
    lfs     f1, 0x46c(r3)
    lfs     f0, 0x468(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x44(sp)
    li      r4, 0x0
    lfs     f0, -0x68f4(rtoc)
    stw     r31, 0x40(sp)
    lfs     f1, 0x0(r29)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1ac(r30)
    lwz     r0, 0x150(r30)
    rlwinm  r0, r0, 0, 26, 24
    stw     r0, 0x150(r30)
    lwz     r3, 0x74(r30)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x68e8(rtoc)
    li      r4, 0x28d8
    stfs    f0, 0x10(r3)
    lfs     f0, -0x68d4(rtoc)
    stfs    f0, 0xc0(r30)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80082924
    addi    r4, r30, 0x10
    li      r3, 0x28d8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80082924:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x70
    blr


.globl initAttacker__7TTelesaFP9THitActor
initAttacker__7TTelesaFP9THitActor: # 0x80082944
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    stw     r29, 0x64(sp)
    mr      r29, r3
    stw     r28, 0x60(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    li      r31, 0x1
    stb     r31, 0x1b8(r29)
    li      r3, 0x2
    li      r0, 0x3
    lwz     r5, 0xf0(r29)
    li      r4, 0x1
    rlwinm  r5, r5, 0, 31, 29
    stw     r5, 0xf0(r29)
    stw     r3, 0x1bc(r29)
    stw     r0, 0x1dc(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r29)
    lwz     r3, 0x74(r29)
    bl      setLightType__6MActorFi
    stb     r31, 0x184(r29)
    lbz     r0, -0x6d98(r13)
    extsb.  r0, r0
    bne-    branch_0x800829fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d94(r13)
    addi    r0, r3, 0x3560
    lis     r4, 0x8008
    stw     r0, -0x6d94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdec
    addi    r4, r4, 0xd98
    subi    r3, r13, 0x6d94
    bl      __register_global_object
    stb     r31, -0x6d98(r13)
branch_0x800829fc:
    lwz     r4, 0x8c(r29)
    li      r31, 0x0
    subi    r0, r13, 0x6d94
    stw     r31, 0x8(r4)
    addi    r3, r30, 0x0
    stw     r31, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r31, 0x1c(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f1, -0x68d0(rtoc)
    addi    r3, r3, 0xf0
    lfs     f2, 0x1c(r3)
    lfs     f3, 0x2c(r3)
    lfs     f0, 0xc(r3)
    fsubs   f1, f2, f1
    stfs    f0, 0x10(r29)
    stfs    f1, 0x14(r29)
    stfs    f3, 0x18(r29)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x1b0(r29)
    lfs     f1, -0x68e8(rtoc)
    stfs    f1, 0xac(r29)
    lfs     f0, -0x68cc(rtoc)
    stfs    f0, 0xb0(r29)
    stfs    f1, 0xb4(r29)
    lwz     r3, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r3, 0x30(r29)
    stw     r0, 0x34(r29)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r29)
    stfs    f1, 0x30(r29)
    lwz     r3, 0x194(r29)
    addi    r28, r3, 0x458
    lfs     f1, 0x45c(r3)
    lfs     f0, 0x458(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x5c(sp)
    lis     r30, 0x4330
    lfs     f0, -0x68f4(rtoc)
    stw     r30, 0x58(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x58(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x19c(r29)
    lfs     f1, 0x19c(r29)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x19c(r29)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x198(r29)
    lwz     r3, 0x194(r29)
    addi    r28, r3, 0x460
    lfs     f1, 0x464(r3)
    lfs     f0, 0x460(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x54(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r30, 0x50(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x50(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1a4(r29)
    lfs     f1, 0x1a4(r29)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1a4(r29)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r29)
    lwz     r3, 0x194(r29)
    addi    r28, r3, 0x468
    lfs     f1, 0x46c(r3)
    lfs     f0, 0x468(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x4c(sp)
    li      r4, 0x0
    lfs     f0, -0x68f4(rtoc)
    stw     r30, 0x48(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1ac(r29)
    stb     r31, 0x1c8(r29)
    lwz     r0, 0x64(r29)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0x64(r29)
    lwz     r0, 0x150(r29)
    rlwinm  r0, r0, 0, 26, 24
    stw     r0, 0x150(r29)
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r29)
    lwz     r3, 0x74(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x68e8(rtoc)
    li      r4, 0x28d8
    stfs    f0, 0x10(r3)
    lfs     f0, -0x68d4(rtoc)
    stfs    f0, 0xc0(r29)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80082c04
    addi    r4, r29, 0x10
    li      r3, 0x28d8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80082c04:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x78
    blr


.globl kill__7TTelesaFv
kill__7TTelesaFv: # 0x80082c28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x80082d50
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x80082c98
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r4, 0x8008
    stw     r0, -0x6da4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdd4
    addi    r4, r4, 0x12d4
    subi    r3, r13, 0x6da4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x80082c98:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6da4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80082d44
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x80082cec
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r4, 0x3580
    lis     r4, 0x8008
    stw     r0, -0x6da4(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x12d4
    addi    r5, r5, 0xdd4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x80082cec:
    subi    r6, r13, 0x6da4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80082d44
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80082d38
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80082d38
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80082d38:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80082d44:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r31)
branch_0x80082d50:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl forceKill__7TTelesaFv
forceKill__7TTelesaFv: # 0x80082d64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80082d90
    li      r0, 0x1
    b       branch_0x80082d94

branch_0x80082d90:
    li      r0, 0x0
branch_0x80082d94:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80082da8
    li      r0, 0x0
    b       branch_0x80082dac

branch_0x80082da8:
    li      r0, 0x1
branch_0x80082dac:
    clrlwi. r0, r0, 24
    bne-    branch_0x80082e28
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80082dc8
    li      r0, 0x1
    b       branch_0x80082dcc

branch_0x80082dc8:
    li      r0, 0x0
branch_0x80082dcc:
    cmpwi   r0, 0x0
    bne-    branch_0x80082e28
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x80082e18
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r4, 0x8008
    stw     r0, -0x6da4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdd4
    addi    r4, r4, 0x12d4
    subi    r3, r13, 0x6da4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x80082e18:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6da4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
branch_0x80082e28:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getGravityY__7TTelesaCFv
getGravityY__7TTelesaCFv: # 0x80082e3c
    lbz     r0, 0x184(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80082e54
    lwz     r3, 0x194(r3)
    lfs     f1, 0x418(r3)
    blr

branch_0x80082e54:
    lwz     r3, 0x194(r3)
    lfs     f1, 0x3f0(r3)
    blr


.globl reduceFlyForce__7TTelesaFv
reduceFlyForce__7TTelesaFv: # 0x80082e60
    lfs     f1, 0x198(r3)
    lfs     f0, -0x68e8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80082e80
    lfs     f0, -0x68c8(rtoc)
    fsubs   f0, f1, f0
    stfs    f0, 0x198(r3)
    b       branch_0x80082e84

branch_0x80082e80:
    stfs    f0, 0x198(r3)
branch_0x80082e84:
    lfs     f2, 0x1a0(r3)
    lfs     f1, -0x68e8(rtoc)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80082eb0
    lfs     f0, -0x68c8(rtoc)
    fsubs   f0, f2, f0
    stfs    f0, 0x1a0(r3)
    lfs     f0, 0x1a0(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80082eb0
    stfs    f1, 0x1a0(r3)
branch_0x80082eb0:
    lfs     f2, 0x1a0(r3)
    lfs     f1, -0x68e8(rtoc)
    fcmpo   cr0, f2, f1
    bge-    branch_0x80082edc
    lfs     f0, -0x68c8(rtoc)
    fadds   f0, f2, f0
    stfs    f0, 0x1a0(r3)
    lfs     f0, 0x1a0(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80082edc
    stfs    f1, 0x1a0(r3)
branch_0x80082edc:
    lfs     f0, 0x1a8(r3)
    lfs     f1, -0x68c4(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a8(r3)
    lfs     f0, 0x30(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r3)
    blr


.globl setWaitAnm__7TTelesaFv
setWaitAnm__7TTelesaFv: # 0x80082efc
    mflr    r0
    li      r4, 0x6
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


.globl setWalkAnm__7TTelesaFv
setWalkAnm__7TTelesaFv: # 0x80082f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x80082f60
    li      r0, 0x1
    b       branch_0x80082f64

branch_0x80082f60:
    li      r0, 0x0
branch_0x80082f64:
    clrlwi. r0, r0, 24
    bne-    branch_0x80082f8c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r31)
branch_0x80082f8c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__7TTelesaCFv
getBasNameTable__7TTelesaCFv: # 0x80082fa0
    lis     r3, 0x803b
    addi    r3, r3, 0x32b0
    blr


.globl changeOut__7TTelesaFv
changeOut__7TTelesaFv: # 0x80082fac
    mflr    r0
    li      r4, 0x293d
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80083000
    addi    r4, r30, 0x10
    li      r3, 0x293d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80083000:
    lwz     r0, 0xf0(r30)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r30)
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


.globl scalingChangeActor__7TTelesaFv
scalingChangeActor__7TTelesaFv: # 0x80083088
    lwz     r4, 0x178(r3)
    lfs     f1, -0x68c0(rtoc)
    lfs     f0, 0x140(r4)
    lfs     f2, -0x7f00(r13)
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x800830ac
    fmr     f1, f2
    b       branch_0x800830bc

branch_0x800830ac:
    lfs     f0, -0x68e8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800830bc
    fmr     f1, f0
branch_0x800830bc:
    stfs    f1, 0x148(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x140(r4)
    lwz     r3, 0x178(r3)
    lfs     f1, -0x68bc(rtoc)
    lfsu    f0, 0x144(r3)
    lfs     f2, -0x7efc(r13)
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x800830ec
    fmr     f1, f2
    b       branch_0x800830fc

branch_0x800830ec:
    lfs     f0, -0x68e8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800830fc
    fmr     f1, f0
branch_0x800830fc:
    stfs    f1, 0x0(r3)
    blr


.globl changeByJuice__7TTelesaFv
changeByJuice__7TTelesaFv: # 0x80083104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0x150(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8008330c
    lwz     r0, 0x178(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80083138
    li      r3, 0x1
    b       branch_0x80083310

branch_0x80083138:
    lis     r4, 0x4000
    lwz     r3, -0x62b8(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, 0x2c4
    lfs     f2, 0x14(r31)
    li      r5, 0x1
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    stw     r3, 0x178(r31)
    lwz     r3, 0x178(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80083170
    li      r3, 0x0
    b       branch_0x80083310

branch_0x80083170:
    lfs     f0, -0x6914(rtoc)
    stfsu   f0, 0x24(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x178(r31)
    lfs     f0, -0x68b8(rtoc)
    stfsu   f0, 0x140(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    lfs     f0, 0x34(r31)
    lwz     r3, 0x178(r31)
    stfs    f0, 0x34(r3)
    lwz     r3, 0x178(r31)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    bl      theNerve__22TNerveSmallEnemyChangeFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x80083220
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80083214
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80083214
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80083214:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80083220:
    lbz     r0, -0x6da0(r13)
    extsb.  r0, r0
    bne-    branch_0x80083264
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d9c(r13)
    addi    r0, r3, 0x3570
    lis     r4, 0x8008
    stw     r0, -0x6d9c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xde0
    addi    r4, r4, 0x1014
    subi    r3, r13, 0x6d9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da0(r13)
branch_0x80083264:
    subi    r5, r13, 0x6d9c
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8008329c
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8008329c
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8008329c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x28cb
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800832cc
    addi    r4, r31, 0x10
    li      r3, 0x28cb
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800832cc:
    lwz     r3, gpMSound(r13)
    li      r4, 0x3881
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800832fc
    addi    r4, r31, 0x10
    li      r3, 0x3881
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800832fc:
    li      r0, 0x1
    stb     r0, 0x185(r31)
    li      r3, 0x1
    b       branch_0x80083310

branch_0x8008330c:
    li      r3, 0x0
branch_0x80083310:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl isReachedToGoal__7TTelesaCFv
isReachedToGoal__7TTelesaCFv: # 0x80083324
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80083348
    addi    r5, r5, 0x10
    b       branch_0x8008334c

branch_0x80083348:
    addi    r5, r4, 0x4
branch_0x8008334c:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, -0x68e8(rtoc)
    stfs    f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800833bc
    lfs     f0, 0x1c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800833bc
    li      r3, 0x1
    b       branch_0x800833dc

branch_0x800833bc:
    addi    r3, sp, 0x14
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x68b4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800833d8
    li      r3, 0x1
    b       branch_0x800833dc

branch_0x800833d8:
    li      r3, 0x0
branch_0x800833dc:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl bind__7TTelesaFv
bind__7TTelesaFv: # 0x800833ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0xdc8
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x80083718
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    stw     r4, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xc0(sp)
    lfs     f1, 0x198(r30)
    lfs     f0, 0x1a0(r30)
    lfs     f2, 0xbc(sp)
    fadds   f0, f1, f0
    fsubs   f0, f2, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0x94(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x98(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x9c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xb8(sp)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0xb0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0xb4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r30)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb0(r30)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800834dc
    stfs    f1, 0xb0(r30)
branch_0x800834dc:
    lfs     f1, -0x68e8(rtoc)
    lfs     f0, 0x1b4(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80083540
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x8008352c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r3, 0x8008
    stw     r0, -0x6da4(r13)
    addi    r4, r3, 0x12d4
    subi    r3, r13, 0x6da4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x8008352c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6da4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80083620
branch_0x80083540:
    lfs     f1, 0xbc(sp)
    addi    r4, r30, 0xc4
    lfs     f0, 0xc0(r30)
    lfs     f2, -0x68b4(rtoc)
    fadds   f0, f1, f0
    lwz     r3, gpMap(r13)
    lfs     f1, 0xb8(sp)
    lfs     f3, 0xc0(sp)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lbz     r0, 0x184(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80083610
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x800835b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r3, 0x8008
    stw     r0, -0x6da4(r13)
    addi    r4, r3, 0x12d4
    subi    r3, r13, 0x6da4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x800835b8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6da4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80083610
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80083610
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80083610
    lwz     r5, 0x124(r30)
    addi    r4, sp, 0xac
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f0, 0xb0(sp)
    stfs    f0, 0xc8(r30)
branch_0x80083610:
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x6914(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
branch_0x80083620:
    lfs     f1, -0x68b0(rtoc)
    lfs     f0, 0xc8(r30)
    lfs     f2, 0xbc(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x800836b8
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0xac(r30)
    stfs    f0, 0xb0(r30)
    stfs    f0, 0xb4(r30)
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x80083698
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r3, 0x8008
    stw     r0, -0x6da4(r13)
    addi    r4, r3, 0x12d4
    subi    r3, r13, 0x6da4
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x80083698:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6da4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800836c4
    lfs     f0, 0xc8(r30)
    stfs    f0, 0xbc(sp)
    b       branch_0x800836c4

branch_0x800836b8:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x800836c4:
    lwz     r0, 0xb8(sp)
    addi    r3, sp, 0x50
    lwz     r5, 0xbc(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x50(sp)
    lwz     r0, 0xc0(sp)
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x58(sp)
    stw     r0, 0x9c(r30)
    lfs     f1, 0x198(r30)
    lfs     f0, 0x1a0(r30)
    lfs     f2, 0x98(r30)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x98(r30)
branch_0x80083718:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    addi    sp, sp, 0xd0
    blr


.globl moveObject__7TTelesaFv
moveObject__7TTelesaFv: # 0x80083730
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      moveObject__12TWalkerEnemyFv
    mr      r3, r31
    bl      changeTevKColor__7TTelesaFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__7TTelesaFv
calcRootMatrix__7TTelesaFv: # 0x80083764
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stfd    f27, 0x118(sp)
    stfd    f26, 0x110(sp)
    stw     r31, 0x10c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x108(sp)
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x800837d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r4, 0x8008
    stw     r0, -0x6da4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdd4
    addi    r4, r4, 0x12d4
    subi    r3, r13, 0x6da4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x800837d8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6da4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800838b4
    li      r30, 0x0
    b       branch_0x80083838

branch_0x800837f4:
    addi    r3, sp, 0xac
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x74(r31)
    clrlslwi  r0, r30, 16, 2
    li      r4, 0x2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r0
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0xac
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    addi    r30, r30, 0x1
branch_0x80083838:
    lwz     r3, 0x74(r31)
    clrlwi  r5, r30, 16
    lwz     r4, 0x4(r3)
    lwz     r3, 0x4(r4)
    lhz     r0, 0x24(r3)
    cmplw   r5, r0
    blt+    branch_0x800837f4
    lwz     r5, 0x58(r4)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x187
    addi    r5, r5, 0xc0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80083880
    lbz     r0, 0x1cc(r31)
    stb     r0, 0x183(r3)
branch_0x80083880:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x188
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x90
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800838b4
    lbz     r0, 0x1cc(r31)
    stb     r0, 0x183(r3)
branch_0x800838b4:
    lfs     f26, 0x38(r31)
    mr      r3, r31
    lfs     f27, 0x34(r31)
    lfs     f28, 0x30(r31)
    lfs     f29, 0x18(r31)
    lfs     f30, 0x14(r31)
    lfs     f31, 0x10(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x6904(rtoc)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x100(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0xf8(sp)
    lwz     r4, 0x104(sp)
    stfd    f0, 0xf0(sp)
    lwz     r5, 0xfc(sp)
    lwz     r6, 0xf4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    lfd     f27, 0x118(sp)
    lfd     f26, 0x110(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl walkBehavior__7TTelesaFif
walkBehavior__7TTelesaFif: # 0x8008396c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      walkBehavior__12TWalkerEnemyFif
    lbz     r0, -0x6da8(r13)
    extsb.  r0, r0
    bne-    branch_0x800839c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6da4(r13)
    addi    r0, r3, 0x3580
    lis     r4, 0x8008
    stw     r0, -0x6da4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdd4
    addi    r4, r4, 0x12d4
    subi    r3, r13, 0x6da4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da8(r13)
branch_0x800839c8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6da4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800839f8
    lfs     f1, 0x198(r31)
    lfs     f0, 0x19c(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800839f8
    lfs     f0, -0x6914(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x198(r31)
branch_0x800839f8:
    lbz     r0, 0x184(r31)
    lfs     f3, 0xc8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80083a0c
    lfs     f3, -0x68ac(rtoc)
branch_0x80083a0c:
    lfs     f2, -0x68e8(rtoc)
    lfs     f0, 0x1b4(r31)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80083a9c
    lfs     f1, 0x1b0(r31)
    lfs     f0, -0x68a8(rtoc)
    fsubs   f1, f1, f3
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80083a9c
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x68a4(rtoc)
    fsubs   f1, f1, f3
    fdivs   f0, f1, f0
    stfs    f0, 0x1b4(r31)
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80083a84
    lfs     f1, 0x1b4(r31)
    lfs     f0, -0x6910(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80083a6c
    fmr     f1, f0
    b       branch_0x80083a7c

branch_0x80083a6c:
    lfs     f0, -0x68a0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80083a7c
    fmr     f1, f0
branch_0x80083a7c:
    stfs    f1, 0x1b4(r31)
    b       branch_0x80083a9c

branch_0x80083a84:
    lfs     f1, 0x1b4(r31)
    lfs     f0, -0x689c(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80083a9c
    stfs    f2, 0x1b4(r31)
branch_0x80083a9c:
    lfs     f2, 0x1b4(r31)
    lfs     f1, -0x68e8(rtoc)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80083ac8
    lfs     f0, 0x1b0(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x1b0(r31)
    lfs     f0, 0x1b0(r31)
    fcmpo   cr0, f0, f3
    ble-    branch_0x80083ac8
    stfs    f1, 0x1b4(r31)
branch_0x80083ac8:
    lfs     f2, 0x1b4(r31)
    lfs     f1, -0x68e8(rtoc)
    fcmpo   cr0, f2, f1
    bge-    branch_0x80083b00
    lfs     f0, 0x1b0(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x1b0(r31)
    lfs     f0, 0x1b0(r31)
    fcmpo   cr0, f0, f3
    bge-    branch_0x80083b00
    stfs    f1, 0x1b4(r31)
    lfs     f0, -0x6914(rtoc)
    fadds   f0, f0, f3
    stfs    f0, 0x1b0(r31)
branch_0x80083b00:
    lfs     f1, 0x1b0(r31)
    lfs     f0, 0x198(r31)
    lfs     f2, 0x1a0(r31)
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl behaveToWater__7TTelesaFP9THitActor
behaveToWater__7TTelesaFP9THitActor: # 0x80083b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x8c(sp)
    li      r29, 0x1
    stb     r29, 0x165(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0xdc8
    lbz     r0, -0x6da0(r13)
    extsb.  r0, r0
    bne-    branch_0x80083b94
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d9c(r13)
    addi    r0, r3, 0x3570
    lis     r3, 0x8008
    stw     r0, -0x6d9c(r13)
    addi    r4, r3, 0x1014
    subi    r3, r13, 0x6d9c
    addi    r5, r31, 0x18
    bl      __register_global_object
    stb     r29, -0x6da0(r13)
branch_0x80083b94:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6d9c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80083da0
    lbz     r0, -0x6db0(r13)
    extsb.  r0, r0
    bne-    branch_0x80083be8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dac(r13)
    addi    r0, r3, 0x3590
    lis     r3, 0x8008
    stw     r0, -0x6dac(r13)
    addi    r4, r3, 0x16e0
    subi    r3, r13, 0x6dac
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6db0(r13)
branch_0x80083be8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6dac
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80083da0
    lbz     r0, 0x184(r30)
    lfs     f4, -0x6910(rtoc)
    cmplwi  r0, 0x0
    beq-    branch_0x80083c10
    lfs     f4, -0x6898(rtoc)
branch_0x80083c10:
    lwz     r5, MarioHitActorPos(r13)
    addi    r3, sp, 0x78
    lfs     f1, 0x10(r30)
    mr      r4, r3
    lfs     f0, 0x0(r5)
    lfs     f3, 0x18(r30)
    fsubs   f1, f1, f0
    lfs     f2, 0x8(r5)
    lfs     f0, -0x6910(rtoc)
    fsubs   f2, f3, f2
    stfs    f1, 0x78(sp)
    stfs    f4, 0x7c(sp)
    stfs    f2, 0x80(sp)
    lfs     f1, 0x14(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    bl      MsVECNormalize__FP3VecP3Vec
    lbz     r0, 0x184(r30)
    lfs     f1, -0x68a8(rtoc)
    cmplwi  r0, 0x0
    beq-    branch_0x80083c7c
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6898(rtoc)
    lwz     r3, 0x194(r30)
    fadds   f0, f1, f0
    lfs     f1, 0x42c(r3)
    stfs    f0, 0x14(r30)
branch_0x80083c7c:
    lwz     r0, 0x78(sp)
    addi    r3, sp, 0x38
    lwz     r4, 0x7c(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x80(sp)
    stw     r4, 0x3c(sp)
    stw     r0, 0x40(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x80(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lwz     r0, 0x1dc(r30)
    cmpwi   r0, 0x3
    beq-    branch_0x80083cf4
    cmpwi   r0, 0x1
    beq-    branch_0x80083cf4
    li      r0, 0x1
    stw     r0, 0x1dc(r30)
branch_0x80083cf4:
    lbz     r0, -0x6da0(r13)
    extsb.  r0, r0
    bne-    branch_0x80083d34
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d9c(r13)
    addi    r0, r3, 0x3570
    lis     r3, 0x8008
    stw     r0, -0x6d9c(r13)
    addi    r4, r3, 0x1014
    subi    r3, r13, 0x6d9c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6da0(r13)
branch_0x80083d34:
    subi    r6, r13, 0x6d9c
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80083d8c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80083d80
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80083d80
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80083d80:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80083d8c:
    li      r0, 0x1
    stb     r0, 0x1c8(r30)
    lwz     r0, 0x64(r30)
    oris    r0, r0, 0x1000
    stw     r0, 0x64(r30)
branch_0x80083da0:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl attackToMario__7TTelesaFv
attackToMario__7TTelesaFv: # 0x80083dbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80083e00
    lfs     f1, 0x14(r31)
    lfs     f0, 0x54(r31)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f2, f1, f0
    lfs     f1, -0x68d8(rtoc)
    lfs     f0, 0x4(r3)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80083e24
branch_0x80083e00:
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lbz     r0, 0x184(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80083e24
    lwz     r3, 0x8c(r31)
    lwz     r31, 0x14(r3)
    bl      theNerve__22TNerveWalkerPostAttackFv
branch_0x80083e24:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setBehavior__7TTelesaFv
setBehavior__7TTelesaFv: # 0x80083e38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x80083ed0
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__20TNerveSmallEnemyWaitFv
    cmplw   r30, r3
    beq-    branch_0x80083ed0
    lbz     r0, -0x6d98(r13)
    extsb.  r0, r0
    bne-    branch_0x80083ebc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d94(r13)
    addi    r0, r3, 0x3560
    lis     r4, 0x8008
    stw     r0, -0x6d94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdec
    addi    r4, r4, 0xd98
    subi    r3, r13, 0x6d94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d98(r13)
branch_0x80083ebc:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6d94
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80083f84
branch_0x80083ed0:
    lfs     f1, 0x1a8(r31)
    lfs     f0, -0x6914(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x1a8(r31)
    lfs     f1, 0x1a8(r31)
    lfs     f0, 0x1ac(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80083ef8
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r31)
branch_0x80083ef8:
    lfs     f2, -0x6894(rtoc)
    lfs     f1, 0x1a8(r31)
    lfs     f0, 0x1ac(r31)
    fmuls   f1, f2, f1
    lfs     f2, -0x6904(rtoc)
    lwz     r0, -0x5eac(r13)
    lwz     r4, -0x5ea8(r13)
    fdivs   f0, f1, f0
    lfs     f1, 0x1a4(r31)
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x40(sp)
    lwz     r3, 0x44(sp)
    clrlwi  r5, r3, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    stfs    f0, 0x1a0(r31)
    lwz     r0, -0x5eac(r13)
    lwz     r3, -0x5ea4(r13)
    sraw    r0, r5, r0
    lfs     f3, -0x7ee0(r13)
    slwi    r0, r0, 2
    lfs     f0, -0x689c(rtoc)
    lfsx    f2, r3, r0
    lfs     f1, 0x30(r31)
    fnmsubs  f3, f3, f2, f0
    lfs     f0, -0x68a8(rtoc)
    fsubs   f2, f3, f1
    fabs    f2, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x80083f80
    b       branch_0x80083f84

branch_0x80083f80:
    stfs    f3, 0x30(r31)
branch_0x80083f84:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl drawObject__7TTelesaFPQ26JDrama9TGraphics
drawObject__7TTelesaFPQ26JDrama9TGraphics: # 0x80083f9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x1c4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80083fb8
    bl      drawObject__10TLiveActorFPQ26JDrama9TGraphics
branch_0x80083fb8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__7TTelesaFUlPQ26JDrama9TGraphics
perform__7TTelesaFUlPQ26JDrama9TGraphics: # 0x80083fc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xb8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xb4(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xb0(sp)
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xf0(r29)
    andi.   r0, r0, 0x201
    bne-    branch_0x80084104
    lwz     r0, 0x1c4(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80084104
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x800840d4
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x64
    lfs     f1, 0x10(r29)
    lfs     f2, 0x14(r29)
    lfs     f3, 0x18(r29)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f5, 0x38(r29)
    addi    r28, sp, 0x68
    lfs     f0, -0x6904(rtoc)
    mr      r3, r28
    lfs     f2, 0x34(r29)
    lfs     f4, 0x30(r29)
    fmuls   f2, f0, f2
    lfs     f6, 0x10(r29)
    fmuls   f4, f0, f4
    lfs     f3, 0x18(r29)
    fmuls   f0, f0, f5
    fctiwz  f5, f4
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f5, 0xa8(sp)
    fmr     f2, f1
    fmr     f1, f6
    stfd    f4, 0xa0(sp)
    lwz     r4, 0xac(sp)
    stfd    f0, 0x98(sp)
    lwz     r5, 0xa4(sp)
    lwz     r6, 0x9c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x1c4(r29)
    mr      r3, r28
    lwz     r4, 0x18(r4)
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f0, -0x6914(rtoc)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lwz     r4, 0x1c4(r29)
    lwz     r3, 0x58(sp)
    lwz     r4, 0x18(r4)
    lwz     r0, 0x5c(sp)
    lwz     r4, 0x4(r4)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x60(sp)
    stw     r0, 0x1c(r4)
branch_0x800840d4:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x800840f0
    lwz     r3, 0x1c4(r29)
    addi    r5, r29, 0x10
    lwz     r4, 0xc4(r29)
    lwz     r3, 0x18(r3)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
branch_0x800840f0:
    lwz     r3, 0x1c4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r3, 0x18(r3)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80084104:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl reset__7TTelesaFv
reset__7TTelesaFv: # 0x80084124
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    stw     r28, 0x58(sp)
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r3, 0x194(r31)
    addi    r30, r3, 0x458
    lfs     f1, 0x45c(r3)
    lfs     f0, 0x458(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x54(sp)
    lis     r29, 0x4330
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x50(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0x50(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x19c(r31)
    lfs     f1, 0x19c(r31)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x19c(r31)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x198(r31)
    lwz     r3, 0x194(r31)
    addi    r30, r3, 0x460
    lfs     f1, 0x464(r3)
    lfs     f0, 0x460(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x4c(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x48(sp)
    lfs     f1, 0x0(r30)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1a4(r31)
    lfs     f1, 0x1a4(r31)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r31)
    lwz     r3, 0x194(r31)
    addi    r28, r3, 0x468
    lfs     f1, 0x46c(r3)
    lfs     f0, 0x468(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x44(sp)
    li      r30, 0x0
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x40(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x40(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1ac(r31)
    stb     r30, 0x1b8(r31)
    lfs     f0, -0x68dc(rtoc)
    stfs    f0, 0xc0(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 5, 2
    stw     r0, 0x64(r31)
    lwz     r0, 0x150(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x80084300
    lbz     r0, -0x6d98(r13)
    extsb.  r0, r0
    bne-    branch_0x800842dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6d94(r13)
    addi    r0, r3, 0x3560
    lis     r4, 0x8008
    stw     r0, -0x6d94(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdec
    addi    r4, r4, 0xd98
    subi    r3, r13, 0x6d94
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6d98(r13)
branch_0x800842dc:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6d94
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    b       branch_0x8008431c

branch_0x80084300:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r31)
    stw     r30, 0x8(r4)
    stw     r30, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r30, 0x1c(r4)
branch_0x8008431c:
    lwz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8008438c
    lbz     r0, -0x6db0(r13)
    extsb.  r0, r0
    bne-    branch_0x8008436c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dac(r13)
    addi    r0, r3, 0x3590
    lis     r4, 0x8008
    stw     r0, -0x6dac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xdc8
    addi    r4, r4, 0x16e0
    subi    r3, r13, 0x6dac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6db0(r13)
branch_0x8008436c:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x6dac
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
branch_0x8008438c:
    lis     r3, 0x8038
    subi    r4, r3, 0x4f0c
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1ce(r31)
    stw     r0, 0x1d2(r31)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setMActorAndKeeper__7TTelesaFv
setMActorAndKeeper__7TTelesaFv: # 0x800843c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80084400
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80084400:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x4efc
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


.globl init__7TTelesaFP12TLiveManager
init__7TTelesaFP12TLiveManager: # 0x80084434
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stw     r31, 0xb4(sp)
    subi    r31, r5, 0x5058
    stw     r30, 0xb0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xac(sp)
    stw     r28, 0xa8(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0xc
    stw     r0, 0x4c(r30)
    li      r0, 0x12
    addi    r3, r30, 0x0
    stw     r0, 0x150(r30)
    lwz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 4, 2
    stw     r0, 0x64(r30)
    lwz     r0, 0x64(r30)
    oris    r0, r0, 0x800
    stw     r0, 0x64(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x194(r30)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r0, 0x1c(r4)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r30)
    lwz     r3, 0x194(r30)
    addi    r28, r3, 0x458
    lfs     f1, 0x45c(r3)
    lfs     f0, 0x458(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0xa4(sp)
    lis     r29, 0x4330
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0xa0(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0xa0(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x19c(r30)
    lfs     f1, 0x19c(r30)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x19c(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x198(r30)
    lwz     r3, 0x194(r30)
    addi    r28, r3, 0x460
    lfs     f1, 0x464(r3)
    lfs     f0, 0x460(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x9c(sp)
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x98(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x98(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1a4(r30)
    lfs     f1, 0x1a4(r30)
    lfs     f0, -0x6914(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1a4(r30)
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x1a8(r30)
    lwz     r3, 0x194(r30)
    addi    r28, r3, 0x468
    lfs     f1, 0x46c(r3)
    lfs     f0, 0x468(r3)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x68f0(rtoc)
    stw     r0, 0x94(sp)
    addi    r3, r31, 0x188
    lfs     f0, -0x68f4(rtoc)
    stw     r29, 0x90(sp)
    lfs     f1, 0x0(r28)
    lfd     f2, 0x90(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x1ac(r30)
    lwz     r4, -0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x188
    mtlr    r12
    blrl
    lwz     r4, 0x10(r3)
    li      r3, 0x14
    lwz     r28, 0x20(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8008462c
    mr      r3, r29
    bl      __ct__13J3DSkinDeformFv
branch_0x8008462c:
    lwz     r3, 0x74(r30)
    mr      r4, r29
    li      r5, 0x1
    lwz     r3, 0x4(r3)
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
    lwz     r3, 0x74(r30)
    bl      resetDL__6MActorFv
    lwz     r3, 0x74(r30)
    addi    r5, r28, 0x0
    addi    r4, r31, 0x364
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setLightType__6MActorFi
    lha     r0, 0x7c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800846a0
    li      r28, 0x0
    b       branch_0x80084684

branch_0x80084680:
    addi    r28, r28, 0x1
branch_0x80084684:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r28, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x80084680
branch_0x800846a0:
    lfs     f0, -0x68e8(rtoc)
    stfs    f0, 0x188(r30)
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    mtlr    r0
    lwz     r30, 0xb0(sp)
    lwz     r29, 0xac(sp)
    lwz     r28, 0xa8(sp)
    addi    sp, sp, 0xc0
    blr


.globl load__7TTelesaFR20JSUMemoryInputStream
load__7TTelesaFR20JSUMemoryInputStream: # 0x800846cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x14(r31)
    li      r0, 0x0
    stfs    f0, 0x1b0(r31)
    stw     r0, 0x1bc(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__7TTelesaFPCc
__ct__7TTelesaFPCc: # 0x8008472c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x3c80
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f1, -0x68e8(rtoc)
    stfs    f1, 0x198(r31)
    stfs    f1, 0x19c(r31)
    lfs     f0, -0x68d8(rtoc)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f1, 0x1a8(r31)
    stfs    f1, 0x1ac(r31)
    stfs    f1, 0x1b0(r31)
    stfs    f1, 0x1b4(r31)
    stb     r0, 0x1b8(r31)
    stw     r0, 0x1bc(r31)
    stw     r0, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    stb     r0, 0x1c8(r31)
    stw     r0, 0x1d8(r31)
    stw     r0, 0x1dc(r31)
    stw     r0, 0x1bc(r31)
    stw     r0, 0x1dc(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setFlagOutOfCube__14TTelesaManagerFv
setFlagOutOfCube__14TTelesaManagerFv: # 0x800847cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    li      r29, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    lfs     f31, -0x6890(rtoc)
    b       branch_0x80084870

branch_0x80084800:
    lwz     r3, 0x18(r28)
    lwzx    r30, r3, r31
    lwz     r0, 0x150(r30)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x80084868
    lwz     r5, 0x10(r30)
    addi    r4, sp, 0x18
    lwz     r0, 0x14(r30)
    lwz     r3, -0x70dc(r13)
    stw     r5, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x20(sp)
    lfs     f0, 0x1c(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x1c(sp)
    bl      isInAreaCube__16TCubeManagerAreaCFRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8008485c
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 23, 21
    stw     r0, 0xf0(r30)
    b       branch_0x80084868

branch_0x8008485c:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x200
    stw     r0, 0xf0(r30)
branch_0x80084868:
    addi    r29, r29, 0x1
    addi    r31, r31, 0x4
branch_0x80084870:
    lwz     r0, 0x14(r28)
    cmpw    r29, r0
    blt+    branch_0x80084800
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lwz     r31, 0x34(sp)
    mtlr    r0
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x40
    blr


.globl telesaForceKill__14TTelesaManagerFv
telesaForceKill__14TTelesaManagerFv: # 0x800848a0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    b       branch_0x800848fc

branch_0x800848cc:
    lwz     r3, 0x18(r29)
    lwzx    r3, r3, r31
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800848f4
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r4, 0x1
branch_0x800848f4:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800848fc:
    lwz     r0, 0x14(r29)
    cmpw    r30, r0
    blt+    branch_0x800848cc
    clrlwi. r0, r4, 24
    beq-    branch_0x8008494c
    lwz     r5, 0x18(r29)
    li      r4, 0x2943
    lwz     r3, gpMSound(r13)
    lwz     r5, 0x0(r5)
    addi    r31, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8008494c
    addi    r4, r31, 0x0
    li      r3, 0x2943
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8008494c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl createModelData__14TTelesaManagerFv
createModelData__14TTelesaManagerFv: # 0x80084968
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x32cc
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemies__14TTelesaManagerFi
createEnemies__14TTelesaManagerFi: # 0x8008499c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r26, 0x68(sp)
    mr      r31, r3
    bl      createEnemies__13TEnemyManagerFi
    lwz     r5, 0x18(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x4ce4
    lwz     r3, 0x0(r5)
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    addi    r29, r3, 0x0
    li      r27, 0x0
    li      r30, 0x0
    b       branch_0x80084a5c

branch_0x800849e8:
    lwz     r3, 0x18(r31)
    li      r26, 0x0
    lwz     r0, -0x6920(rtoc)
    lwzx    r28, r3, r30
    stw     r0, 0x1c9(r28)
    b       branch_0x80084a48

branch_0x80084a00:
    clrlwi  r0, r26, 16
    cmpw    r0, r29
    beq-    branch_0x80084a28
    lwz     r3, 0x74(r28)
    addi    r4, r26, 0x0
    addi    r6, r28, 0x1c9
    lwz     r3, 0x4(r3)
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    b       branch_0x80084a44

branch_0x80084a28:
    lwz     r3, 0x74(r28)
    addi    r4, r26, 0x0
    addi    r6, r28, 0x1ce
    lwz     r3, 0x4(r3)
    addi    r7, r28, 0x1c9
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColorAndOneTevKColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10PC8_GXColor
branch_0x80084a44:
    addi    r26, r26, 0x1
branch_0x80084a48:
    clrlwi  r0, r26, 16
    cmplwi  r0, 0x4
    blt+    branch_0x80084a00
    addi    r27, r27, 0x1
    addi    r30, r30, 0x4
branch_0x80084a5c:
    lwz     r0, 0x14(r31)
    cmpw    r27, r0
    blt+    branch_0x800849e8
    lmw     r26, 0x68(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl createEnemyInstance__14TTelesaManagerFv
createEnemyInstance__14TTelesaManagerFv: # 0x80084a7c
    mflr    r0
    li      r3, 0x1e0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80084aa8
    addi    r3, r31, 0x0
    subi    r4, rtoc, 0x688c
    bl      __ct__7TTelesaFPCc
branch_0x80084aa8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__14TTelesaManagerFR20JSUMemoryInputStream
load__14TTelesaManagerFR20JSUMemoryInputStream: # 0x80084ac0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    li      r3, 0x470
    stw     r28, 0x10(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80084b04
    lis     r3, 0x8038
    subi    r4, r3, 0x4cd8
    addi    r3, r31, 0x0
    bl      __ct__21TTelesaSaveLoadParamsFPCc
branch_0x80084b04:
    lis     r3, 0x8038
    stw     r31, 0x38(r29)
    subi    r3, r3, 0x4cc4
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80084b40
    addi    r3, r31, 0x0
    lis     r4, 0x1102
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x80084b40:
    stw     r28, 0x64(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __ct__14TTelesaManagerFPCc
__ct__14TTelesaManagerFPCc: # 0x80084b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x3e38
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x60(r31)
    stb     r0, 0x61(r31)
    stw     r0, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__21TTelesaSaveLoadParamsFPCc
__ct__21TTelesaSaveLoadParamsFPCc: # 0x80084bbc
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    subi    r30, r5, 0x5058
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x3b0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x3b0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x32c(r31)
    li      r28, 0x3c
    lis     r3, 0x803b
    stw     r28, 0x33c(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x3c0
    stw     r26, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x3c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x340(r31)
    addi    r3, r30, 0x3d0
    stw     r28, 0x350(r31)
    stw     r26, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x354(r31)
    addi    r3, r30, 0x3e0
    stw     r28, 0x364(r31)
    stw     r26, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x3e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x368(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x68b4(rtoc)
    addi    r3, r30, 0x3f0
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x3f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x400
    lfs     f0, -0x68dc(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x400
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x414
    lfs     f0, -0x68dc(rtoc)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x414
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x428
    lfs     f0, -0x68dc(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x428
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x43c
    lfs     f0, -0x68b4(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x43c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    addi    r3, r30, 0x450
    lfs     f0, -0x68dc(rtoc)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x450
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e0(r31)
    addi    r3, r30, 0x464
    lfs     f0, -0x68b8(rtoc)
    stfs    f0, 0x3f0(r31)
    stw     r28, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x464
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3f4(r31)
    li      r0, 0x1f4
    addi    r3, r30, 0x478
    stw     r0, 0x404(r31)
    stw     r26, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x478
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    addi    r3, r30, 0x490
    lfs     f0, -0x68bc(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x41c
    addi    r6, r30, 0x490
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41c(r31)
    addi    r3, r30, 0x4a8
    lfs     f0, -0x6884(rtoc)
    stfs    f0, 0x42c(r31)
    stw     r28, 0x41c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x430
    addi    r6, r30, 0x4a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x430(r31)
    li      r28, 0x64
    addi    r3, r30, 0x4bc
    stw     r28, 0x440(r31)
    stw     r26, 0x430(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x444
    addi    r6, r30, 0x4bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x444(r31)
    mr      r3, r31
    stw     r28, 0x454(r31)
    stw     r26, 0x444(r31)
    lfs     f1, -0x68e8(rtoc)
    stfs    f1, 0x458(r31)
    lfs     f0, -0x6914(rtoc)
    stfs    f0, 0x45c(r31)
    stfs    f1, 0x460(r31)
    stfs    f0, 0x464(r31)
    stfs    f1, 0x468(r31)
    stfs    f0, 0x46c(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lfs     f0, 0x38c(r31)
    mr      r3, r31
    stfs    f0, 0x458(r31)
    lfs     f0, 0x378(r31)
    stfs    f0, 0x45c(r31)
    lfs     f0, 0x3b4(r31)
    stfs    f0, 0x460(r31)
    lfs     f0, 0x3a0(r31)
    stfs    f0, 0x464(r31)
    lfs     f0, 0x3dc(r31)
    stfs    f0, 0x468(r31)
    lfs     f0, 0x3c8(r31)
    stfs    f0, 0x46c(r31)
    lwz     r0, 0x44(sp)
    lmw     r26, 0x28(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __dt__16TKageMarioModokiFv
__dt__16TKageMarioModokiFv: # 0x80084f00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80084f80
    lis     r3, 0x803b
    addi    r3, r3, 0x3340
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80084f70
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80084f70
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80084f70:
    extsh.  r0, r31
    ble-    branch_0x80084f80
    mr      r3, r30
    bl      __dl__FPv
branch_0x80084f80:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__23TKageMarioModokiManagerFv
__dt__23TKageMarioModokiManagerFv: # 0x80084f9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80084ff4
    lis     r3, 0x803b
    addi    r0, r3, 0x34f8
    stw     r0, 0x0(r30)
    beq-    branch_0x80084fe4
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80084fe4:
    extsh.  r0, r31
    ble-    branch_0x80084ff4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80084ff4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isFindMario__7TTelesaFf
isFindMario__7TTelesaFf: # 0x80085010
    li      r3, 0x0
    blr


.globl decHpByWater__7TTelesaFP9THitActor
decHpByWater__7TTelesaFP9THitActor: # 0x80085018
    blr


.globl isInhibitedForceMove__7TTelesaFv
isInhibitedForceMove__7TTelesaFv: # 0x8008501c
    li      r3, 0x1
    blr


.globl getChangeBlockTime__7TTelesaFv
getChangeBlockTime__7TTelesaFv: # 0x80085024
    li      r3, 0xbb8
    blr


.globl __dt__18TMarioModokiTelesaFv
__dt__18TMarioModokiTelesaFv: # 0x8008502c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800850ac
    lis     r3, 0x803b
    addi    r3, r3, 0x35a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008509c
    lis     r3, 0x803b
    addi    r3, r3, 0x3c80
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8008509c
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x8008509c:
    extsh.  r0, r31
    ble-    branch_0x800850ac
    mr      r3, r30
    bl      __dl__FPv
branch_0x800850ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isEatenByYosshi__10TBoxTelesaFv
isEatenByYosshi__10TBoxTelesaFv: # 0x800850c8
    li      r3, 0x0
    blr


.globl __dt__10TBoxTelesaFv
__dt__10TBoxTelesaFv: # 0x800850d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80085150
    lis     r3, 0x803b
    addi    r3, r3, 0x3758
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80085140
    lis     r3, 0x803b
    addi    r3, r3, 0x3c80
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80085140
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x80085140:
    extsh.  r0, r31
    ble-    branch_0x80085150
    mr      r3, r30
    bl      __dl__FPv
branch_0x80085150:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TLoopTelesaFv
__dt__11TLoopTelesaFv: # 0x8008516c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800851ec
    lis     r3, 0x803b
    addi    r3, r3, 0x3910
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800851dc
    lis     r3, 0x803b
    addi    r3, r3, 0x3c80
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800851dc
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800851dc:
    extsh.  r0, r31
    ble-    branch_0x800851ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x800851ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TSeeTelesaFv
__dt__10TSeeTelesaFv: # 0x80085208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80085288
    lis     r3, 0x803b
    addi    r3, r3, 0x3ac8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80085278
    lis     r3, 0x803b
    addi    r3, r3, 0x3c80
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80085278
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x80085278:
    extsh.  r0, r31
    ble-    branch_0x80085288
    mr      r3, r30
    bl      __dl__FPv
branch_0x80085288:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TTelesaManagerFv
__dt__14TTelesaManagerFv: # 0x800852a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800852fc
    lis     r3, 0x803b
    addi    r0, r3, 0x3e38
    stw     r0, 0x0(r30)
    beq-    branch_0x800852ec
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800852ec:
    extsh.  r0, r31
    ble-    branch_0x800852fc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800852fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_telesa_cpp
__sinit_telesa_cpp: # 0x80085318
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0xdc8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80085360
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80085360:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80085390
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80085390:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800853c0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800853c0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800853f0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800853f0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80085420
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80085420:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80085450
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80085450:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80085480
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80085480:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800854b0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800854b0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800854e0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800854e0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80085510
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80085510:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80085540
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80085540:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80085570
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80085570:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800855a0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800855a0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800855d0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800855d0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80085600
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80085600:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__7TTelesaFv
_32___dt__7TTelesaFv: # 0x80085614
    subi    r3, r3, 0x20
    b       __dt__7TTelesaFv


.globl _32___dt__10TSeeTelesaFv
_32___dt__10TSeeTelesaFv: # 0x8008561c
    subi    r3, r3, 0x20
    b       __dt__10TSeeTelesaFv


.globl _32___dt__11TLoopTelesaFv
_32___dt__11TLoopTelesaFv: # 0x80085624
    subi    r3, r3, 0x20
    b       __dt__11TLoopTelesaFv


.globl _32___dt__10TBoxTelesaFv
_32___dt__10TBoxTelesaFv: # 0x8008562c
    subi    r3, r3, 0x20
    b       __dt__10TBoxTelesaFv


.globl _32___dt__18TMarioModokiTelesaFv
_32___dt__18TMarioModokiTelesaFv: # 0x80085634
    subi    r3, r3, 0x20
    b       __dt__18TMarioModokiTelesaFv


.globl _32___dt__16TKageMarioModokiFv
_32___dt__16TKageMarioModokiFv: # 0x8008563c
    subi    r3, r3, 0x20
    b       __dt__16TKageMarioModokiFv

