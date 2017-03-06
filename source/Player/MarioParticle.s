
.globl askJumpIntoWaterEffectExist__6TMarioCFv
askJumpIntoWaterEffectExist__6TMarioCFv: # 0x80262a88
    lwz     r3, 0x424(r3)
    lwz     r0, 0x6c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80262aa0
    li      r3, 0x1
    blr

branch_0x80262aa0:
    lwz     r0, 0x70(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80262ab4
    li      r3, 0x1
    blr

branch_0x80262ab4:
    li      r3, 0x0
    blr


.globl sinkInSandEffect__6TMarioFv
sinkInSandEffect__6TMarioFv: # 0x80262abc
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x10
    li      r4, 0x53
    stwu    sp, -0x8(sp)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80262b08
    lfs     f0, -0xd20(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x80262b08:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl kickFruitEffect__6TMarioFv
kickFruitEffect__6TMarioFv: # 0x80262b18
    mflr    r0
    li      r4, 0x39
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80262ba8
    lfs     f0, -0xd1c(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, -0xd18(rtoc)
    stw     r4, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x20(sp)
    lfs     f1, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x18(sp)
    stfs    f0, 0x160(r3)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x164(r3)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x168(r3)
branch_0x80262ba8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl toroccoEffect__6TMarioFv
toroccoEffect__6TMarioFv: # 0x80262bbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x404(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x408(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x40c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x68(sp)
    lwz     r0, 0x60(sp)
    lwz     r3, 0x64(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x70(sp)
    lfs     f2, 0x74(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lwz     r4, 0x3f8(r31)
    fmr     f31, f1
    lwz     r3, -0x6070(r13)
    mr      r7, r31
    lwz     r5, 0x4(r4)
    li      r4, 0x11f
    lwz     r5, 0x58(r5)
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80262c90
    lfs     f0, 0x28c8(r31)
    fmuls   f0, f31, f0
    stfs    f0, 0x1b0(r3)
branch_0x80262c90:
    lwz     r5, 0x3f8(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x120
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80262cc4
    lfs     f0, 0x28dc(r31)
    fmuls   f0, f31, f0
    stfs    f0, 0x1b0(r3)
branch_0x80262cc4:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl sleepingEffectKill__6TMarioFv
sleepingEffectKill__6TMarioFv: # 0x80262cdc
    mflr    r0
    mr      r7, r3
    stw     r0, 0x4(sp)
    addi    r5, r7, 0x1b4
    li      r4, 0x124
    stwu    sp, -0x8(sp)
    li      r6, 0x1
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80262d0c
    bl      deleteAllParticle__14JPABaseEmitterFv
branch_0x80262d0c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl sleepingEffect__6TMarioFv
sleepingEffect__6TMarioFv: # 0x80262d1c
    mflr    r0
    mr      r7, r3
    stw     r0, 0x4(sp)
    addi    r5, r7, 0x1b4
    li      r4, 0x124
    stwu    sp, -0x8(sp)
    li      r6, 0x1
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl kickRoofEffect__6TMarioFv
kickRoofEffect__6TMarioFv: # 0x80262d50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xd10(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80262dd0
    lwz     r3, 0x3a8(r31)
    addi    r5, r31, 0x1a8
    lbz     r0, 0x3cb(r31)
    li      r4, 0x39
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    li      r6, 0x0
    li      r7, 0x0
    stfs    f0, 0x1a8(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1ac(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x1b0(r31)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
branch_0x80262dd0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl elecEndEffect__6TMarioFv
elecEndEffect__6TMarioFv: # 0x80262de4
    mflr    r0
    mr      r7, r3
    stw     r0, 0x4(sp)
    addi    r5, r7, 0x178
    li      r4, 0x8b
    stwu    sp, -0x8(sp)
    li      r6, 0x0
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl elecEffect__6TMarioFv
elecEffect__6TMarioFv: # 0x80262e18
    mflr    r0
    li      r4, 0x116
    stw     r0, 0x4(sp)
    li      r6, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r7, r31, 0x0
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x178
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x178
    li      r4, 0x118
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x178
    li      r4, 0x117
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl rocketEffectStart__6TMarioFv
rocketEffectStart__6TMarioFv: # 0x80262e88
    mflr    r0
    li      r4, 0x5
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x4
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x12
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80262f40
    addi    r5, r3, 0x1c90
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x1
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r5, 0x3e4(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x2
    addi    r5, r5, 0x1c90
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r5, 0x3e4(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x3
    addi    r5, r5, 0x1c90
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80262f40:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl meltInWaterEffect__6TMarioFv
meltInWaterEffect__6TMarioFv: # 0x80262f54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lfs     f0, -0xd14(rtoc)
    lfs     f1, 0x134(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80262fec
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x220
    li      r4, 0x12b
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80262fec
    lfs     f1, 0x134(r31)
    lfs     f0, 0x2814(r31)
    lfs     f2, -0xd0c(rtoc)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x1b0(r3)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80262fc4
    li      r0, 0x1
    b       branch_0x80262fc8

branch_0x80262fc4:
    li      r0, 0x0
branch_0x80262fc8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80262fec
    lfs     f0, -0xd08(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x80262fec:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl emitSandEffect__6TMarioFv
emitSandEffect__6TMarioFv: # 0x80263000
    mflr    r0
    li      r4, 0x3b
    stw     r0, 0x4(sp)
    li      r5, 0x3a
    stwu    sp, -0x8(sp)
    bl      emitFootPrintWithEffect__6TMarioFii
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitDirtyFootPrint__6TMarioFv
emitDirtyFootPrint__6TMarioFv: # 0x80263028
    mflr    r0
    li      r4, 0x50
    stw     r0, 0x4(sp)
    li      r5, -0x1
    stwu    sp, -0x8(sp)
    bl      emitFootPrintWithEffect__6TMarioFii
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitFootPrintWithEffect__6TMarioFii
emitFootPrintWithEffect__6TMarioFii: # 0x80263050
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r27, 0x5c(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    li      r28, 0x2
    li      r27, 0x0
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    bne-    branch_0x80263150
    mr      r3, r29
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x802630e8
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xd04(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x802630bc
    lwz     r3, 0x3f0(r29)
    bl      getMtxPtrFootL__6TYoshiCFv
    addi    r27, r3, 0x0
    li      r28, 0x0
branch_0x802630bc:
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xd00(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80263150
    lwz     r3, 0x3f0(r29)
    bl      getMtxPtrFootR__6TYoshiCFv
    addi    r27, r3, 0x0
    li      r28, 0x1
    b       branch_0x80263150

branch_0x802630e8:
    mr      r3, r29
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xcfc(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8026311c
    lwz     r3, 0x3a8(r29)
    li      r28, 0x0
    lbz     r0, 0x3ce(r29)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r27, r3, r0
branch_0x8026311c:
    mr      r3, r29
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f1, -0xd10(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80263150
    lwz     r3, 0x3a8(r29)
    li      r28, 0x1
    lbz     r0, 0x3cc(r29)
    lwz     r3, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r27, r3, r0
branch_0x80263150:
    lwz     r3, 0x7c(r29)
    addis   r0, r3, 0xf3c0
    cmplwi  r0, 0x201
    bne-    branch_0x80263220
    mr      r3, r29
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80263220
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xcf8(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x802631b8
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xcf4(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x802631b8
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xcf0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x802631c8
branch_0x802631b8:
    lwz     r3, 0x3f0(r29)
    bl      getMtxPtrFootL__6TYoshiCFv
    addi    r27, r3, 0x0
    li      r28, 0x0
branch_0x802631c8:
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xcec(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x80263210
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xce8(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    bne-    branch_0x80263210
    lwz     r3, 0x3f0(r29)
    bl      getFrameCtrl__6TYoshiCFv
    lfs     f1, -0xcf0(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80263220
branch_0x80263210:
    lwz     r3, 0x3f0(r29)
    bl      getMtxPtrFootR__6TYoshiCFv
    addi    r27, r3, 0x0
    li      r28, 0x1
branch_0x80263220:
    cmplwi  r27, 0x0
    beq-    branch_0x802632d8
    cmpwi   r28, 0x2
    beq-    branch_0x802632d8
    lfs     f0, 0xc(r27)
    li      r3, 0x0
    eqv     r0, r31, r3
    stfs    f0, 0x1a8(r29)
    subfc   r3, r31, r3
    srwi    r0, r0, 31
    lfs     f0, 0x1c(r27)
    addze   r4, r0
    clrlwi  r4, r4, 31
    stfs    f0, 0x1ac(r29)
    lfs     f0, 0x2c(r27)
    stfs    f0, 0x1b0(r29)
    lfs     f1, 0xb0(r29)
    lfs     f0, -0xcf8(rtoc)
    lwz     r3, 0x7c(r29)
    fcmpo   cr0, f1, f0
    addis   r0, r3, 0xfc00
    mfcr    r3
    cmplwi  r0, 0x440
    extrwi  r0, r3, 1, 1
    bne-    branch_0x802632ac
    cmplwi  r0, 0x0
    beq-    branch_0x802632ac
    cmplwi  r4, 0x0
    beq-    branch_0x802632ac
    lwz     r3, -0x6070(r13)
    addi    r4, r31, 0x0
    addi    r5, r29, 0x1a8
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x802632ac:
    cmpwi   r30, 0x0
    ble-    branch_0x802632d8
    addi    r3, r29, 0x0
    addi    r4, r29, 0x1a8
    bl      calcGroundMtx__6TMarioFRCQ29JGeometry8TVec3_f_
    lwz     r3, -0x6070(r13)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x250
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x802632d8:
    lmw     r27, 0x5c(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl emitRotateShootEffect__6TMarioFv
emitRotateShootEffect__6TMarioFv: # 0x802632ec
    mflr    r0
    li      r4, 0x114
    stw     r0, 0x4(sp)
    li      r6, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r7, r31, 0x0
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x178
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x178
    li      r4, 0x115
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitBlurSpinJump__6TMarioFv
emitBlurSpinJump__6TMarioFv: # 0x80263344
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x105
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x106
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lfs     f1, 0x134(r31)
    lfs     f0, -0xd14(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802633e4
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x126
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x802633e4
    lfs     f1, -0xce4(rtoc)
    lfs     f0, 0x134(r31)
    lfs     f2, -0xd0c(rtoc)
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x1b0(r3)
branch_0x802633e4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitBlurHipDropSuper__6TMarioFv
emitBlurHipDropSuper__6TMarioFv: # 0x802633f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x11a
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x11b
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x11c
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x11d
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitBlurHipDrop__6TMarioFv
emitBlurHipDrop__6TMarioFv: # 0x8026349c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x104
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl warpOutEffect__6TMarioFif
warpOutEffect__6TMarioFif: # 0x802634e0
    mflr    r0
    cmpwi   r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x80263548
    bge-    branch_0x80263580
    cmpwi   r4, 0x0
    bge-    branch_0x80263510
    b       branch_0x80263580


.incbin "./baserom/code/Text_0x80005600.bin", 0x25df0c, 0x80263510 - 0x8026350c
branch_0x80263510:
    lfs     f0, -0xce0(rtoc)
    mr      r10, r31
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    fmuls   f0, f0, f1
    li      r4, 0x40
    li      r6, 0x0
    fctiwz  f0, f0
    li      r8, 0x0
    li      r9, 0x0
    stfd    f0, 0x110(sp)
    lwz     r7, 0x114(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    b       branch_0x80263758

branch_0x80263548:
    lfs     f0, -0xce0(rtoc)
    mr      r10, r31
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    fmuls   f0, f0, f1
    li      r4, 0x41
    li      r6, 0x0
    fctiwz  f0, f0
    li      r8, 0x0
    li      r9, 0x0
    stfd    f0, 0x110(sp)
    lwz     r7, 0x114(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    b       branch_0x80263758

branch_0x80263580:
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3c4(r31)
    li      r4, 0x24
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3cf(r31)
    li      r4, 0x25
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3cf(r31)
    li      r4, 0x26
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3c9(r31)
    li      r4, 0x27
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3ca(r31)
    li      r4, 0x28
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3cb(r31)
    li      r4, 0x29
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3cc(r31)
    li      r4, 0x2a
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3cd(r31)
    li      r4, 0x2b
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3ce(r31)
    li      r4, 0x2c
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80263720
    li      r0, 0x1
    b       branch_0x80263724

branch_0x80263720:
    li      r0, 0x0
branch_0x80263724:
    clrlwi. r0, r0, 24
    beq-    branch_0x80263758
    lwz     r3, 0x3a8(r31)
    mr      r7, r31
    lbz     r0, 0x3c4(r31)
    li      r4, 0x2d
    lwz     r5, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80263758:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    addi    sp, sp, 0x120
    mtlr    r0
    blr


.globl warpInLight__6TMarioFv
warpInLight__6TMarioFv: # 0x8026376c
    mflr    r0
    mr      r7, r3
    stw     r0, 0x4(sp)
    addi    r5, r7, 0x178
    li      r4, 0x51
    stwu    sp, -0x8(sp)
    li      r6, 0x0
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl warpInEffect__6TMarioFv
warpInEffect__6TMarioFv: # 0x802637a0
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x803a
    subi    r31, r4, 0x2d54
    subi    r26, r3, 0x10e8
    addi    r27, r29, 0x45c
    li      r30, 0x0
    li      r28, 0x0
branch_0x802637d0:
    cmplwi  r30, 0x9
    bgt-    branch_0x8026382c
    lwzx    r0, r31, r28
    mtctr   r0
    bctr       
    lbz     r0, 0x3c4(r29)
    b       branch_0x80263830


.incbin "./baserom/code/Text_0x80005600.bin", 0x25e1ec, 0x8026382c - 0x802637ec
branch_0x8026382c:
    lbz     r0, 0x3c4(r29)
branch_0x80263830:
    lwz     r5, 0x3a8(r29)
    add     r3, r26, r28
    clrlwi  r0, r0, 16
    lwz     r4, 0x0(r3)
    lwz     r3, 0x8(r5)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    cmpwi   r4, 0x23
    add     r5, r3, r0
    li      r3, 0x1
    bne-    branch_0x80263880
    lwz     r0, 0x118(r29)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80263870
    li      r0, 0x1
    b       branch_0x80263874

branch_0x80263870:
    li      r0, 0x0
branch_0x80263874:
    clrlwi. r0, r0, 24
    bne-    branch_0x80263880
    li      r3, 0x0
branch_0x80263880:
    cmpwi   r3, 0x1
    bne-    branch_0x802638ac
    lwz     r3, -0x6070(r13)
    addi    r7, r29, 0x0
    li      r6, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x802638ac
    subi    r0, r13, 0x60c4
    stw     r0, 0x114(r3)
    stw     r27, 0x120(r3)
branch_0x802638ac:
    addi    r30, r30, 0x1
    cmpwi   r30, 0xa
    addi    r28, r28, 0x4
    blt+    branch_0x802637d0
    mr      r3, r29
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    li      r4, 0x3c
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r7, 0x68(r29)
    li      r4, 0x1d6
    lwz     r3, -0x6070(r13)
    li      r6, 0x2
    lwz     r5, 0x78(r7)
    lhz     r0, 0x72(r7)
    lwz     r5, 0x4(r5)
    mulli   r0, r0, 0x30
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl execute__15TWarpInCallBackFP14JPABaseEmitterP15JPABaseParticle
execute__15TWarpInCallBackFP14JPABaseEmitterP15JPABaseParticle: # 0x8026391c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stfd    f29, 0xf8(sp)
    stfd    f28, 0xf0(sp)
    stfd    f27, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r5
    extrwi  r0, r31, 6, 24
    xoris   r0, r0, 0x8000
    lwz     r3, -0x60d8(r13)
    stw     r0, 0xdc(sp)
    lis     r0, 0x4330
    lwz     r5, 0x120(r4)
    stw     r0, 0xd8(sp)
    lhz     r4, 0x86(r3)
    lfd     f2, -0xcd0(rtoc)
    stw     r4, 0xd4(sp)
    lfd     f0, 0xd8(sp)
    lfs     f1, 0x468(r3)
    addi    r3, sp, 0x6c
    fsubs   f0, f0, f2
    lfs     f2, -0xcdc(rtoc)
    stw     r0, 0xd0(sp)
    lfs     f30, 0x14(r31)
    fmuls   f27, f2, f0
    lfs     f0, -0xcd8(rtoc)
    lfs     f29, 0x18(r31)
    fadds   f27, f27, f0
    lfs     f28, 0x1c(r31)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    lfd     f2, -0xcc8(rtoc)
    stw     r4, 0x6c(sp)
    lfd     f0, 0xd0(sp)
    stw     r0, 0x70(sp)
    fsubs   f31, f0, f2
    lwz     r0, 0x8(r5)
    stw     r0, 0x74(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x6c(sp)
    fmr     f1, f31
    lwz     r4, 0x70(sp)
    addi    r3, sp, 0x5c
    stw     r0, 0x8c(sp)
    lwz     r0, 0x74(sp)
    stw     r4, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x90(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x94(sp)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x5c(sp)
    fmr     f1, f27
    lwz     r4, 0x60(sp)
    addi    r3, sp, 0x80
    stw     r0, 0x98(sp)
    lwz     r0, 0x64(sp)
    stw     r4, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x98(sp)
    lwz     r4, 0x9c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xa0(sp)
    stw     r4, 0x84(sp)
    stw     r0, 0x88(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x80(sp)
    lwz     r3, 0x84(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lfs     f0, 0xb0(sp)
    lfs     f1, 0xb4(sp)
    fadds   f30, f30, f0
    lfs     f0, 0xb8(sp)
    fadds   f29, f29, f1
    fadds   f28, f28, f0
    stfs    f30, 0x14(r31)
    stfs    f29, 0x18(r31)
    stfs    f28, 0x1c(r31)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    lfd     f29, 0xf8(sp)
    lfd     f28, 0xf0(sp)
    lfd     f27, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl surfingEffect__6TMarioFv
surfingEffect__6TMarioFv: # 0x80263aa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stfd    f28, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lfs     f31, -0xcd8(rtoc)
    bl      getSurfingParamsWater__6TMarioFv
    lfs     f30, 0x144(r3)
    mr      r3, r31
    bl      getSurfingParamsWater__6TMarioFv
    lfs     f29, 0x158(r3)
    mr      r3, r31
    bl      getSurfingParamsWater__6TMarioFv
    lfs     f28, 0x16c(r3)
    mr      r3, r31
    bl      getSurfingParamsWater__6TMarioFv
    lfs     f3, 0xb0(r31)
    lfs     f4, 0x180(r3)
    fcmpo   cr0, f3, f28
    bge-    branch_0x80263b04
    fmr     f31, f30
branch_0x80263b04:
    fcmpo   cr0, f28, f3
    cror    2, 0, 2
    bne-    branch_0x80263b34
    fcmpo   cr0, f3, f4
    cror    2, 0, 2
    bne-    branch_0x80263b34
    fsubs   f2, f29, f30
    fsubs   f1, f3, f28
    fsubs   f0, f4, f28
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    fadds   f31, f30, f0
branch_0x80263b34:
    fcmpo   cr0, f4, f3
    bge-    branch_0x80263b40
    fmr     f31, f29
branch_0x80263b40:
    mr      r3, r31
    bl      getRootAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x1e7
    li      r6, 0x3
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80263b80
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80263b80:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x1f0
    addi    r7, r31, 0x0
    li      r4, 0x121
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80263bb8
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80263bb8:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x1f0
    addi    r7, r31, 0x0
    li      r4, 0x123
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80263bf0
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80263bf0:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x1f0
    addi    r7, r31, 0x0
    li      r4, 0x122
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x80263c28
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x80263c28:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x60
    blr


.globl frontSlipEffect__6TMarioFv
frontSlipEffect__6TMarioFv: # 0x80263c4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x80263c88
    cmplwi  r0, 0x4004
    beq-    branch_0x80263c88
    cmplwi  r0, 0x8004
    beq-    branch_0x80263c88
    cmplwi  r0, 0xc004
    bne-    branch_0x80263c90
branch_0x80263c88:
    li      r0, 0x1
    b       branch_0x80263c94

branch_0x80263c90:
    li      r0, 0x0
branch_0x80263c94:
    clrlwi. r0, r0, 24
    bne-    branch_0x80263cb8
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x456
    bne-    branch_0x80263d1c
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x80263d1c
branch_0x80263cb8:
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x1ea
    li      r6, 0x3
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x112
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    li      r4, 0x113
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    b       branch_0x80263dac

branch_0x80263d1c:
    lfs     f1, 0x14(r31)
    lfs     f0, 0xf0(r31)
    fcmpo   cr0, f1, f0
    blt-    branch_0x80263dac
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x80263d40
    li      r0, 0x1
    b       branch_0x80263d44

branch_0x80263d40:
    li      r0, 0x0
branch_0x80263d44:
    clrlwi. r0, r0, 24
    beq-    branch_0x80263d8c
    addi    r3, r31, 0x0
    addi    r4, r31, 0x178
    bl      calcGroundMtx__6TMarioFRCQ29JGeometry8TVec3_f_
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x250
    li      r4, 0x110
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x178
    li      r4, 0x10f
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x80263dac

branch_0x80263d8c:
    lwz     r5, 0x3a8(r31)
    mr      r7, r31
    lwz     r3, -0x6070(r13)
    li      r4, 0x103
    lwz     r5, 0x8(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80263dac:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl treeSlipEffect__6TMarioFv
treeSlipEffect__6TMarioFv: # 0x80263dc0
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    subi    r31, r4, 0x43f0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      getCenterAnmMtx__6TMarioFv
    mr      r5, r3
    lwz     r3, -0x6070(r13)
    addi    r7, r30, 0x0
    li      r4, 0x102
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r0, -0x60c8(r13)
    extsb.  r0, r0
    bne-    branch_0x80263e20
    lfs     f0, -0xcc0(rtoc)
    li      r0, 0x1
    stfs    f0, 0xc(r31)
    stfs    f0, 0x10(r31)
    stfs    f0, 0x14(r31)
    stb     r0, -0x60c8(r13)
branch_0x80263e20:
    cmplwi  r3, 0x0
    beq-    branch_0x80263e58
    lfs     f0, 0xc(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x17c(r3)
branch_0x80263e58:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl wallSlipEffect__6TMarioFv
wallSlipEffect__6TMarioFv: # 0x80263e70
    mflr    r0
    mr      r7, r3
    stw     r0, 0x4(sp)
    addi    r5, r7, 0x10
    li      r4, 0x102
    stwu    sp, -0x8(sp)
    li      r6, 0x1
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl blurEffect__6TMarioFv
blurEffect__6TMarioFv: # 0x80263ea4
    mflr    r0
    mr      r7, r3
    stw     r0, 0x4(sp)
    li      r4, 0x10e
    li      r6, 0x1
    stwu    sp, -0x8(sp)
    lwz     r5, 0x3a8(r7)
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x8(r5)
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl runningRippleEffect__6TMarioFv
runningRippleEffect__6TMarioFv: # 0x80263ee4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f0, -0xd18(rtoc)
    lfs     f1, 0xb0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80263f20
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x190
    li      r4, 0x34
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80263f20:
    addi    r3, r31, 0x190
    bl      SMS_EmitRippleTiny__FPQ29JGeometry8TVec3_f_
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl swimmingBubbleEffect__6TMarioFv
swimmingBubbleEffect__6TMarioFv: # 0x80263f3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80263ff8
    lwz     r0, 0x118(r30)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80263f74
    li      r0, 0x1
    b       branch_0x80263f78

branch_0x80263f74:
    li      r0, 0x0
branch_0x80263f78:
    clrlwi. r0, r0, 24
    bne-    branch_0x80263ff8
    addi    r31, r30, 0x2850
    lfs     f2, 0x170(r30)
    lfs     f1, 0x2850(r30)
    lfs     f0, 0xf0(r30)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80263fd8
    mr      r3, r30
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x80263fd8
    lwz     r3, -0x6070(r13)
    addi    r8, r30, 0x0
    addi    r5, r30, 0x16c
    li      r4, 0x10c
    li      r6, 0x1
    subi    r7, r13, 0x60cc
    bl      emitParticleCallBack__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcP54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_PCv
    cmplwi  r3, 0x0
    beq-    branch_0x80263fd8
    addi    r4, r30, 0x1c0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
branch_0x80263fd8:
    lfs     f2, 0x17c(r30)
    lfs     f1, 0x0(r31)
    lfs     f0, 0xf0(r30)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80263ff8
    mr      r3, r30
    bl      bubbleFromBody__6TMarioFv
branch_0x80263ff8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl bubbleFromBody__6TMarioFv
bubbleFromBody__6TMarioFv: # 0x80264010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x802640b8
    lfs     f0, 0x2878(r30)
    lfs     f1, 0xb0(r30)
    lfs     f2, -0xd14(rtoc)
    fcmpo   cr0, f1, f0
    lfs     f3, 0x2864(r30)
    ble-    branch_0x80264058
    lfs     f2, -0xcd8(rtoc)
    b       branch_0x8026406c

branch_0x80264058:
    fcmpo   cr0, f1, f3
    ble-    branch_0x8026406c
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fdivs   f2, f1, f0
branch_0x8026406c:
    lfs     f1, 0x288c(r30)
    mr      r8, r30
    lfs     f0, 0x28a0(r30)
    addi    r5, r30, 0x178
    lwz     r3, -0x6070(r13)
    fsubs   f0, f0, f1
    li      r4, 0x111
    li      r6, 0x1
    subi    r7, r13, 0x60cc
    fmadds  f31, f2, f0, f1
    bl      emitParticleCallBack__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcP54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_PCv
    mr.     r31, r3
    beq-    branch_0x802640b8
    mr      r3, r30
    bl      getCenterAnmMtx__6TMarioFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    stfs    f31, 0x1b0(r31)
branch_0x802640b8:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl bubbleFromMouth__6TMarioFi
bubbleFromMouth__6TMarioFi: # 0x802640d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      isMario__6TMarioFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026412c
    mulli   r0, r31, 0x4290
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x16c
    add     r8, r30, r0
    li      r4, 0x10c
    li      r6, 0x1
    subi    r7, r13, 0x60cc
    bl      emitParticleCallBack__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcP54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_PCv
    cmplwi  r3, 0x0
    beq-    branch_0x8026412c
    addi    r4, r30, 0x1c0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
branch_0x8026412c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl execute__15TBubbleCallBackFP14JPABaseEmitterP15JPABaseParticle
execute__15TBubbleCallBackFP14JPABaseEmitterP15JPABaseParticle: # 0x80264144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r5
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80264170
    li      r0, 0x1
    b       branch_0x80264174

branch_0x80264170:
    li      r0, 0x0
branch_0x80264174:
    clrlwi. r0, r0, 24
    bne-    branch_0x802641d4
    addi    r3, r31, 0x0
    addi    r4, sp, 0x30
    bl      getCurrentPosition__15JPABaseParticleFRQ29JGeometry8TVec3_f_
    lwz     r3, -0x60d8(r13)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xf0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802641d4
    lwz     r0, 0x10(r31)
    ori     r0, r0, 0x2
    stw     r0, 0x10(r31)
    lwz     r3, -0x60d8(r13)
    lfs     f0, -0xd14(rtoc)
    lfs     f1, 0x28b4(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x802641d4
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x30
    li      r4, 0x33
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x802641d4:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl inOutWaterEffect__6TMarioFf
inOutWaterEffect__6TMarioFf: # 0x802641e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x24(sp)
    lfs     f0, 0xf0(r31)
    stfs    f0, 0x20(sp)
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80264230
    li      r0, 0x1
    b       branch_0x80264234

branch_0x80264230:
    li      r0, 0x0
branch_0x80264234:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026425c
    lwz     r0, 0x11c(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x80264250
    li      r0, 0x1
    b       branch_0x80264254

branch_0x80264250:
    li      r0, 0x0
branch_0x80264254:
    clrlwi. r0, r0, 24
    beq-    branch_0x80264280
branch_0x8026425c:
    lwz     r3, 0x424(r31)
    bl      setJumpIntoWaterEffectSmall__12TMarioEffectFv
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x31
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x8026438c

branch_0x80264280:
    lwz     r3, 0x424(r31)
    bl      setJumpIntoWaterEffect__12TMarioEffectFv
    lfs     f1, 0xa8(r31)
    lfs     f0, -0xd14(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026429c
    fneg    f1, f1
branch_0x8026429c:
    lfs     f0, 0x22c4(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80264324
    lha     r5, 0x27f8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    bl      rumbleStart__6TMarioFii
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x802642cc
    li      r0, 0x1
    b       branch_0x802642d0

branch_0x802642cc:
    li      r0, 0x0
branch_0x802642d0:
    clrlwi. r0, r0, 24
    bne-    branch_0x802642f0
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x2f
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x802642f0:
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x30
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x1d4
    li      r6, 0x2
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x8026438c

branch_0x80264324:
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x80264338
    li      r0, 0x1
    b       branch_0x8026433c

branch_0x80264338:
    li      r0, 0x0
branch_0x8026433c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026435c
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x31
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8026435c:
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x32
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x1c
    li      r4, 0x1d5
    li      r6, 0x2
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8026438c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl rippleEffect__6TMarioFv
rippleEffect__6TMarioFv: # 0x802643a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x802643c8
    li      r0, 0x1
    b       branch_0x802643cc

branch_0x802643c8:
    li      r0, 0x0
branch_0x802643cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802643e4
    addi    r3, r31, 0x220
    addi    r4, r31, 0x0
    bl      SMS_EmitRipplePool__FPA4_fPv
    b       branch_0x80264428

branch_0x802643e4:
    addi    r3, r31, 0x220
    addi    r4, r31, 0x0
    bl      SMS_EmitRippleSea__FPA4_fPv
    lwz     r0, 0x7c(r31)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80264404
    li      r0, 0x1
    b       branch_0x80264408

branch_0x80264404:
    li      r0, 0x0
branch_0x80264408:
    clrlwi. r0, r0, 24
    beq-    branch_0x80264428
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x2828(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80264428
    li      r0, 0xff
    sth     r0, 0x4ee(r31)
branch_0x80264428:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl smallTouchDownEffect__6TMarioFv
smallTouchDownEffect__6TMarioFv: # 0x8026443c
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    addi    r5, r5, 0x10
    stwu    sp, -0x18(sp)
    li      r6, 0x0
    li      r7, 0x0
    stw     r31, 0x14(sp)
    subi    r31, r4, 0x43f0
    li      r4, 0x11
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lbz     r0, -0x60d0(r13)
    extsb.  r0, r0
    bne-    branch_0x80264494
    lfs     f0, -0xcbc(rtoc)
    li      r0, 0x1
    stfs    f0, 0x0(r31)
    stfs    f0, 0x4(r31)
    stfs    f0, 0x8(r31)
    stb     r0, -0x60d0(r13)
branch_0x80264494:
    cmplwi  r3, 0x0
    beq-    branch_0x802644cc
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x802644cc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl strongTouchDownEffect__6TMarioFv
strongTouchDownEffect__6TMarioFv: # 0x802644e0
    mflr    r0
    li      r4, 0x10
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r8, 0x0
    stwu    sp, -0x18(sp)
    li      r9, 0x0
    li      r10, 0x0
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    lwz     r3, -0x6070(r13)
    lha     r7, 0x96(r31)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    lha     r7, 0x96(r31)
    addi    r5, r31, 0x10
    lwz     r3, -0x6070(r13)
    li      r4, 0x11
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitGetCoinEffect__6TMarioFPQ29JGeometry8TVec3_f_
emitGetCoinEffect__6TMarioFPQ29JGeometry8TVec3_f_: # 0x80264550
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    li      r7, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    addi    r5, r31, 0x0
    lwz     r3, -0x6070(r13)
    li      r4, 0x37
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x0
    li      r4, 0x38
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitGetWaterEffect__6TMarioFv
emitGetWaterEffect__6TMarioFv: # 0x802645a8
    mflr    r0
    addi    r5, r3, 0x160
    stw     r0, 0x4(sp)
    li      r4, 0xf
    li      r6, 0x0
    stwu    sp, -0x8(sp)
    li      r7, 0x0
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitGetEffect__6TMarioFv
emitGetEffect__6TMarioFv: # 0x802645dc
    mflr    r0
    li      r4, 0xe
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r5, r31, 0x160
    lwz     r3, -0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    addi    r3, r31, 0x0
    li      r4, 0x1989
    bl      startSoundActor__6TMarioFUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl emitSweatSometimes__6TMarioFv
emitSweatSometimes__6TMarioFv: # 0x80264628
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, -0x6048(r13)
    lha     r4, 0x96(r3)
    lwz     r0, 0x58(r5)
    clrlwi. r0, r0, 28
    bne-    branch_0x8026464c
    bl      emitSweat__6TMarioFs
branch_0x8026464c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitSweat__6TMarioFs
emitSweat__6TMarioFs: # 0x8026465c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r3
    lwz     r3, 0x118(r3)
    rlwinm. r0, r3, 0, 19, 19
    beq-    branch_0x8026468c
    li      r0, 0x1
    b       branch_0x80264690

branch_0x8026468c:
    li      r0, 0x0
branch_0x80264690:
    clrlwi. r0, r0, 24
    bne-    branch_0x80264718
    rlwinm. r0, r3, 0, 14, 15
    beq-    branch_0x802646a8
    li      r0, 0x1
    b       branch_0x802646ac

branch_0x802646a8:
    li      r0, 0x0
branch_0x802646ac:
    clrlwi. r0, r0, 24
    bne-    branch_0x80264718
    mr      r3, r30
    bl      isUnderWater__6TMarioCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80264718
    lwz     r3, 0x3a8(r30)
    mr      r7, r31
    lbz     r0, 0x3cf(r30)
    addi    r5, sp, 0x30
    lwz     r4, 0x8(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r4, 0x58(r4)
    add     r11, r4, r0
    lfs     f0, 0xc(r11)
    li      r4, 0xd
    li      r6, 0x0
    stfs    f0, 0x30(sp)
    li      r8, 0x0
    li      r9, 0x0
    lfs     f0, 0x1c(r11)
    li      r10, 0x0
    stfs    f0, 0x34(sp)
    lfs     f0, 0x2c(r11)
    stfs    f0, 0x38(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
branch_0x80264718:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl emitSmoke__6TMarioFs
emitSmoke__6TMarioFs: # 0x80264730
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xe0(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x104
    beq-    branch_0x80264760
    cmplwi  r0, 0x105
    beq-    branch_0x80264760
    cmplwi  r0, 0x4104
    bne-    branch_0x80264768
branch_0x80264760:
    li      r0, 0x1
    b       branch_0x8026476c

branch_0x80264768:
    li      r0, 0x0
branch_0x8026476c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80264798
    lwz     r3, -0x6070(r13)
    addi    r7, r4, 0x0
    addi    r5, r5, 0x10
    li      r4, 0x15
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
branch_0x80264798:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitParticle__6TMarioFis
emitParticle__6TMarioFis: # 0x802647a8
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    addi    r7, r5, 0x0
    addi    r5, r6, 0x10
    stwu    sp, -0x8(sp)
    li      r6, 0x0
    li      r8, 0x0
    lwz     r3, -0x6070(r13)
    li      r9, 0x0
    li      r10, 0x0
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x802647e8
    li      r3, 0x0
    b       branch_0x802647ec

branch_0x802647e8:
    li      r3, 0x1
branch_0x802647ec:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_
emitParticle__6TMarioFiPCQ29JGeometry8TVec3_f_: # 0x802647fc
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    li      r7, 0x0
    stwu    sp, -0x8(sp)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80264828
    li      r3, 0x0
    b       branch_0x8026482c

branch_0x80264828:
    li      r3, 0x1
branch_0x8026482c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl emitParticle__6TMarioFi
emitParticle__6TMarioFi: # 0x8026483c
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    addi    r5, r5, 0x10
    li      r6, 0x0
    stwu    sp, -0x8(sp)
    li      r7, 0x0
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80264870
    li      r3, 0x0
    b       branch_0x80264874

branch_0x80264870:
    li      r3, 0x1
branch_0x80264874:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl moveParticle__6TMarioFv
moveParticle__6TMarioFv: # 0x80264884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lha     r0, 0x4ee(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x802648dc
    lwz     r3, -0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x220
    li      r4, 0x109
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x802648dc
    lha     r0, 0x4ee(r31)
    stb     r0, 0x183(r3)
    lha     r3, 0x283c(r31)
    lha     r0, 0x4ee(r31)
    subf    r0, r3, r0
    sth     r0, 0x4ee(r31)
branch_0x802648dc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initParticle__6TMarioFv
initParticle__6TMarioFv: # 0x802648f0
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    lis     r4, 0x803a
    lis     r3, 0x8040
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    subi    r27, r5, 0x2d70
    subi    r28, r4, 0x10f4
    subi    r29, r3, 0x2f98
    li      r31, 0x0
    li      r30, 0x0
branch_0x80264920:
    add     r3, r27, r30
    lwz     r25, 0x0(r3)
    mr      r3, r25
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802649a4
    cmpwi   r31, 0x1
    bge-    branch_0x80264974
    add     r3, r28, r30
    lwz     r0, 0x0(r3)
    clrlwi  r5, r0, 16
    add     r26, r29, r5
    lbz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802649a4
    lwz     r3, -0x5fe0(r13)
    mr      r4, r25
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
    b       branch_0x802649a4

branch_0x80264974:
    add     r3, r28, r30
    lwz     r0, 0x0(r3)
    clrlwi  r5, r0, 16
    add     r26, r29, r5
    lbz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802649a4
    lwz     r3, -0x5fe0(r13)
    mr      r4, r25
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r26)
branch_0x802649a4:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x3
    addi    r30, r30, 0x4
    blt+    branch_0x80264920
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __sinit_MarioParticle_cpp
__sinit_MarioParticle_cpp: # 0x802649c8
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    lis     r3, 0x803e
    subi    r4, r4, 0x2d2c
    stwu    sp, -0x10(sp)
    subi    r3, r3, 0x2d64
    stw     r31, 0xc(sp)
    lbz     r0, -0x7204(r13)
    stw     r4, -0x60cc(r13)
    lis     r4, 0x8040
    extsb.  r0, r0
    stw     r3, -0x60c4(r13)
    subi    r31, r4, 0x43f0
    bne-    branch_0x80264a28
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80264a28:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80264a58
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80264a58:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80264a88
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80264a88:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80264ab8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80264ab8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80264ae8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80264ae8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80264b18
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80264b18:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80264b48
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80264b48:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80264b78
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80264b78:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80264ba8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80264ba8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80264bd8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80264bd8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80264c08
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80264c08:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80264c38
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80264c38:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80264c68
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80264c68:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80264c98
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80264c98:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80264cc8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80264cc8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
