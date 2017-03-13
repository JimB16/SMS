
.globl __dt__19TNerveAmiNokoFreezeFv
__dt__19TNerveAmiNokoFreezeFv: # 0x800f5a9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f5ae0
    lis     r3, 0x803c
    subi    r0, r3, 0x4d70
    stw     r0, 0x0(r31)
    beq-    branch_0x800f5ad0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f5ad0:
    extsh.  r0, r4
    ble-    branch_0x800f5ae0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f5ae0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveAmiNokoFreezeCFP24TSpineBase_10TLiveActor_
execute__19TNerveAmiNokoFreezeCFP24TSpineBase_10TLiveActor_: # 0x800f5af8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f5b7c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x74(r31)
    li      r4, 0xca
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r5)
    li      r7, 0x0
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800f5b7c
    lfs     f0, -0x5848(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800f5b7c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f5bf8
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800f5ba4
    li      r0, 0x1
    b       branch_0x800f5ba8

branch_0x800f5ba4:
    li      r0, 0x0
branch_0x800f5ba8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f5bcc
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f5bf8

branch_0x800f5bcc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r30)
    lwz     r0, 0x158(r3)
    cmpw    r4, r0
    ble-    branch_0x800f5bf8
    li      r3, 0x1
    b       branch_0x800f5bfc

branch_0x800f5bf8:
    li      r3, 0x0
branch_0x800f5bfc:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl execute__16TNerveAmiNokoDieCFP24TSpineBase_10TLiveActor_
execute__16TNerveAmiNokoDieCFP24TSpineBase_10TLiveActor_: # 0x800f5c14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    mr      r30, r4
    stw     r29, 0xdc(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f5c74
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0x210(r31)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800f5c74:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f5db8
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800f5c9c
    li      r0, 0x1
    b       branch_0x800f5ca0

branch_0x800f5c9c:
    li      r0, 0x0
branch_0x800f5ca0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f5db8
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x64
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x6c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x64(sp)
    lwz     r3, 0x68(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0xc4(sp)
    lfs     f1, -0x5844(rtoc)
    stw     r0, 0xc8(sp)
    lfs     f0, 0xc0(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f5d14
    lfs     f0, 0xc4(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f5d14
    lfs     f0, 0xc8(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f5d14
    lfs     f0, -0x5840(rtoc)
    stfs    f0, 0xc0(sp)
branch_0x800f5d14:
    lwz     r5, 0x74(r31)
    addi    r3, sp, 0xc0
    addi    r4, r3, 0x0
    lwz     r5, 0x4(r5)
    addi    r5, r5, 0x20
    lfs     f0, 0x4(r5)
    stfs    f0, 0xc0(sp)
    lfs     f0, 0x14(r5)
    stfs    f0, 0xc4(sp)
    lfs     f0, 0x24(r5)
    stfs    f0, 0xc8(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0xc0(sp)
    mr      r3, r31
    lfs     f1, -0x583c(rtoc)
    li      r4, 0x0
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f0, 0xc8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc8(sp)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x5838(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r5, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    stw     r5, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xc8(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f5db8:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x174
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    addi    r5, r5, 0x20
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800f5dec
    li      r0, 0x1
    b       branch_0x800f5df0

branch_0x800f5dec:
    li      r0, 0x0
branch_0x800f5df0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f609c
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1e
    ble-    branch_0x800f609c
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x58
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x60(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x58(sp)
    addi    r4, r31, 0x10
    lwz     r3, 0x5c(sp)
    addi    r5, r31, 0x18
    stw     r0, 0xb0(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0xb4(sp)
    lfs     f2, -0x5834(rtoc)
    stw     r0, 0xb8(sp)
    lwz     r3, gpMap(r13)
    lfs     f0, 0xbc(r31)
    lfs     f1, 0x14(r31)
    fmuls   f2, f2, f0
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    beq-    branch_0x800f5f50
    lfs     f0, -0x5844(rtoc)
    addi    r5, r31, 0x10
    li      r4, 0xe2
    stfs    f0, 0x74(sp)
    li      r6, 0x0
    li      r8, 0x0
    stfs    f0, 0x78(sp)
    li      r9, 0x0
    li      r10, 0x0
    stfs    f0, 0x7c(sp)
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x7c(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, -0x5830(rtoc)
    lfs     f0, 0x34(r31)
    lwz     r3, gpMarioParticleManager(r13)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd0(sp)
    lwz     r7, 0xd4(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800f5f00
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
branch_0x800f5f00:
    lfs     f1, -0x5830(rtoc)
    addi    r5, r31, 0x10
    lfs     f0, 0x34(r31)
    li      r4, 0xe3
    lwz     r3, gpMarioParticleManager(r13)
    fmuls   f0, f1, f0
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    fctiwz  f0, f0
    li      r10, 0x0
    stfd    f0, 0xd0(sp)
    lwz     r7, 0xd4(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800f5f48
    li      r4, 0x6
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800f5f48:
    li      r0, 0x1
    b       branch_0x800f5f54

branch_0x800f5f50:
    li      r0, 0x0
branch_0x800f5f54:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f5fdc
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800f5f70
    li      r0, 0x1
    b       branch_0x800f5f74

branch_0x800f5f70:
    li      r0, 0x0
branch_0x800f5f74:
    cmpwi   r0, 0x0
    beq-    branch_0x800f5fdc
    lfs     f0, 0xb4(sp)
    lfs     f3, 0xb8(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0xb0(sp)
    fmuls   f3, f3, f3
    lfs     f0, -0x5844(rtoc)
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800f5fac
    b       branch_0x800f5fd0

branch_0x800f5fac:
    frsqrte f3, f4
    lfs     f2, -0x582c(rtoc)
    lfs     f0, -0x5834(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800f5fd0:
    lfs     f0, -0x5828(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x800f609c
branch_0x800f5fdc:
    lwz     r0, 0x64(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800f6040
    stw     r0, 0x1c(r30)
branch_0x800f6040:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800f6080
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x800f6080
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800f6080:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800f60a0

branch_0x800f609c:
    li      r3, 0x0
branch_0x800f60a0:
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xe8
    blr


.globl __dt__16TNerveAmiNokoDieFv
__dt__16TNerveAmiNokoDieFv: # 0x800f60bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f6100
    lis     r3, 0x803c
    subi    r0, r3, 0x4d60
    stw     r0, 0x0(r31)
    beq-    branch_0x800f60f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f60f0:
    extsh.  r0, r4
    ble-    branch_0x800f6100
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f6100:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveAmiNokoTurnCFP24TSpineBase_10TLiveActor_
execute__17TNerveAmiNokoTurnCFP24TSpineBase_10TLiveActor_: # 0x800f6118
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f6188
    lbz     r0, 0x20c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800f6170
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f6188

branch_0x800f6170:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f6188:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xb
    bne-    branch_0x800f619c
    li      r0, 0x1
    b       branch_0x800f61a0

branch_0x800f619c:
    li      r0, 0x0
branch_0x800f61a0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f61c4
    cmpwi   r3, 0xe
    bne-    branch_0x800f61b8
    li      r0, 0x1
    b       branch_0x800f61bc

branch_0x800f61b8:
    li      r0, 0x0
branch_0x800f61bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6218
branch_0x800f61c4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f6218
    lbz     r0, 0x20c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800f6200
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f6218

branch_0x800f6200:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f6218:
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800f6230
    addi    r4, r4, 0x10
    b       branch_0x800f6234

branch_0x800f6230:
    addi    r4, r3, 0x4
branch_0x800f6234:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, -0x5844(rtoc)
    lfs     f0, 0x74(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f62ac
    lfs     f0, 0x78(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f62ac
    lfs     f0, 0x7c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800f62ac
    lfs     f0, -0x5840(rtoc)
    stfs    f0, 0x74(sp)
branch_0x800f62ac:
    addi    r3, sp, 0x74
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0x78(sp)
    lfs     f0, 0x1ac(r31)
    lfs     f2, 0x74(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x1a8(r31)
    lfs     f4, 0x7c(sp)
    lfs     f3, 0x1b0(r31)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x5824(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800f6458
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f6458
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x9
    bne-    branch_0x800f6310
    li      r0, 0x1
    b       branch_0x800f6314

branch_0x800f6310:
    li      r0, 0x0
branch_0x800f6314:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f6338
    cmpwi   r3, 0xc
    bne-    branch_0x800f632c
    li      r0, 0x1
    b       branch_0x800f6330

branch_0x800f632c:
    li      r0, 0x0
branch_0x800f6330:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f637c
branch_0x800f6338:
    lbz     r0, 0x20c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800f6360
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f6458

branch_0x800f6360:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f6458

branch_0x800f637c:
    cmpwi   r3, 0xf
    bne-    branch_0x800f638c
    li      r0, 0x1
    b       branch_0x800f6390

branch_0x800f638c:
    li      r0, 0x0
branch_0x800f6390:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6418
    lbz     r0, -0x67e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f63dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67e4(r13)
    subi    r0, r3, 0x4d40
    lis     r4, 0x800f
    stw     r0, -0x67e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2738
    addi    r4, r4, 0x6628
    subi    r3, r13, 0x67e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67e8(r13)
branch_0x800f63dc:
    subi    r4, r13, 0x67e4
    cmplwi  r4, 0x0
    beq-    branch_0x800f6410
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800f6410
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800f6410:
    li      r3, 0x1
    b       branch_0x800f6608

branch_0x800f6418:
    lbz     r0, 0x20c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800f6440
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f6458

branch_0x800f6440:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f6458:
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800f6470
    addi    r4, r4, 0x10
    b       branch_0x800f6474

branch_0x800f6470:
    addi    r4, r3, 0x4
branch_0x800f6474:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f3, 0x54(sp)
    lfs     f0, 0x50(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x5820(rtoc)
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    beq-    branch_0x800f6604
    lfs     f0, -0x5844(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x800f6500
    b       branch_0x800f6524

branch_0x800f6500:
    frsqrte f3, f31
    lfs     f2, -0x582c(rtoc)
    lfs     f0, -0x5834(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x800f6524:
    lfs     f0, -0x5844(rtoc)
    fcmpo   cr0, f0, f31
    ble-    branch_0x800f6534
    b       branch_0x800f6538

branch_0x800f6534:
    fmr     f31, f0
branch_0x800f6538:
    addi    r3, sp, 0x4c
    lfs     f30, -0x5840(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5820(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f656c
    lfs     f0, -0x5844(rtoc)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x4c(sp)
    b       branch_0x800f6580

branch_0x800f656c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x4c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x800f6580:
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x54(sp)
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    lfs     f0, 0x4c(sp)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x64(sp)
    lfs     f1, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x64(sp)
    stw     r0, 0x9c(r31)
branch_0x800f6604:
    li      r3, 0x0
branch_0x800f6608:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x98
    blr


.globl __dt__24TNerveAmiNokoWalkOnFenceFv
__dt__24TNerveAmiNokoWalkOnFenceFv: # 0x800f6628
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f666c
    lis     r3, 0x803c
    subi    r0, r3, 0x4d40
    stw     r0, 0x0(r31)
    beq-    branch_0x800f665c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f665c:
    extsh.  r0, r4
    ble-    branch_0x800f666c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f666c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TNerveAmiNokoTurnFv
__dt__17TNerveAmiNokoTurnFv: # 0x800f6684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800f66c8
    lis     r3, 0x803c
    subi    r0, r3, 0x4d50
    stw     r0, 0x0(r31)
    beq-    branch_0x800f66b8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800f66b8:
    extsh.  r0, r4
    ble-    branch_0x800f66c8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800f66c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveAmiNokoWalkOnFenceCFP24TSpineBase_10TLiveActor_
execute__24TNerveAmiNokoWalkOnFenceCFP24TSpineBase_10TLiveActor_: # 0x800f66e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800f6724
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
branch_0x800f6724:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x5
    bne-    branch_0x800f6738
    li      r0, 0x1
    b       branch_0x800f673c

branch_0x800f6738:
    li      r0, 0x0
branch_0x800f673c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f6760
    cmpwi   r3, 0x8
    bne-    branch_0x800f6754
    li      r0, 0x1
    b       branch_0x800f6758

branch_0x800f6754:
    li      r0, 0x0
branch_0x800f6758:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f67b4
branch_0x800f6760:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f67b4
    lbz     r0, 0x20c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800f679c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f67b4

branch_0x800f679c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f67b4:
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800f67c8
    addi    r4, r3, 0x10
    b       branch_0x800f67cc

branch_0x800f67c8:
    addi    r4, r31, 0xf8
branch_0x800f67cc:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x78(sp)
    lfs     f2, 0x7c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x581c(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800f6988
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800f6988
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x3
    bne-    branch_0x800f686c
    li      r0, 0x1
    b       branch_0x800f6870

branch_0x800f686c:
    li      r0, 0x0
branch_0x800f6870:
    clrlwi. r0, r0, 24
    bne-    branch_0x800f6894
    cmpwi   r3, 0x6
    bne-    branch_0x800f6888
    li      r0, 0x1
    b       branch_0x800f688c

branch_0x800f6888:
    li      r0, 0x0
branch_0x800f688c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f691c
branch_0x800f6894:
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    lbz     r0, -0x67e0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f68e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67dc(r13)
    subi    r0, r3, 0x4d50
    lis     r4, 0x800f
    stw     r0, -0x67dc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2744
    addi    r4, r4, 0x6684
    subi    r3, r13, 0x67dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67e0(r13)
branch_0x800f68e0:
    subi    r4, r13, 0x67dc
    cmplwi  r4, 0x0
    beq-    branch_0x800f6914
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800f6914
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800f6914:
    li      r3, 0x1
    b       branch_0x800f6b38

branch_0x800f691c:
    cmpwi   r3, 0x4
    bne-    branch_0x800f692c
    li      r0, 0x1
    b       branch_0x800f6930

branch_0x800f692c:
    li      r0, 0x0
branch_0x800f6930:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6954
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f6988

branch_0x800f6954:
    cmpwi   r3, 0x7
    bne-    branch_0x800f6964
    li      r0, 0x1
    b       branch_0x800f6968

branch_0x800f6964:
    li      r0, 0x0
branch_0x800f6968:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6988
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f6988:
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800f69a0
    addi    r4, r4, 0x10
    b       branch_0x800f69a4

branch_0x800f69a0:
    addi    r4, r3, 0x4
branch_0x800f69a4:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x54(sp)
    lfs     f3, 0x5c(sp)
    lfs     f0, 0x58(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x5820(rtoc)
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    beq-    branch_0x800f6b34
    lfs     f0, -0x5844(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x800f6a30
    b       branch_0x800f6a54

branch_0x800f6a30:
    frsqrte f3, f31
    lfs     f2, -0x582c(rtoc)
    lfs     f0, -0x5834(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x800f6a54:
    lfs     f0, -0x5834(rtoc)
    fcmpo   cr0, f0, f31
    ble-    branch_0x800f6a64
    b       branch_0x800f6a68

branch_0x800f6a64:
    fmr     f31, f0
branch_0x800f6a68:
    addi    r3, sp, 0x54
    lfs     f30, -0x5840(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5820(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f6a9c
    lfs     f0, -0x5844(rtoc)
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x54(sp)
    b       branch_0x800f6ab0

branch_0x800f6a9c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f30, f1
    addi    r3, sp, 0x54
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x800f6ab0:
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x58(sp)
    lfs     f0, 0x5c(sp)
    fmuls   f0, f0, f31
    stfs    f0, 0x5c(sp)
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    lfs     f0, 0x54(sp)
    stw     r3, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x9c(r31)
branch_0x800f6b34:
    li      r3, 0x0
branch_0x800f6b38:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    addi    sp, sp, 0xa0
    blr


.globl getBasNameTable__8TAmiNokoCFv
getBasNameTable__8TAmiNokoCFv: # 0x800f6b58
    lis     r3, 0x803c
    subi    r3, r3, 0x4dc8
    blr


.globl getGravityY__8TAmiNokoCFv
getGravityY__8TAmiNokoCFv: # 0x800f6b64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x67d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f6bbc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67d4(r13)
    subi    r0, r3, 0x4d60
    lis     r4, 0x800f
    stw     r0, -0x67d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x275c
    addi    r4, r4, 0x60bc
    subi    r3, r13, 0x67d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d8(r13)
branch_0x800f6bbc:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x67d4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800f6bd8
    lfs     f1, -0x5844(rtoc)
    b       branch_0x800f6bdc

branch_0x800f6bd8:
    lfs     f1, 0xcc(r31)
branch_0x800f6bdc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl perform__8TAmiNokoFUlPQ26JDrama9TGraphics
perform__8TAmiNokoFUlPQ26JDrama9TGraphics: # 0x800f6bf0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x800f6c24
    mr      r3, r29
    bl      calcDirection__8TAmiNokoFv
branch_0x800f6c24:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x210(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl bind__8TAmiNokoFv
bind__8TAmiNokoFv: # 0x800f6c6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800f6c94
    li      r0, 0x1
    b       branch_0x800f6c98

branch_0x800f6c94:
    li      r0, 0x0
branch_0x800f6c98:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6e7c
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r31)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r31)
    lfs     f0, 0xb0(r31)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800f6d4c
    stfs    f1, 0xb0(r31)
branch_0x800f6d4c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x800f6d80
    lfs     f1, 0x30(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x2c(sp)
    lfs     f3, 0x34(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    b       branch_0x800f6da4

branch_0x800f6d80:
    lfs     f1, 0x30(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x2c(sp)
    lfs     f3, 0x34(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
branch_0x800f6da4:
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x5840(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f1, -0x5818(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x30(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x800f6e30
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800f6de8
    li      r0, 0x1
    b       branch_0x800f6dec

branch_0x800f6de8:
    li      r0, 0x0
branch_0x800f6dec:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6e08
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800f6e08:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x5844(rtoc)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x30(sp)
    b       branch_0x800f6e3c

branch_0x800f6e30:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800f6e3c:
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x10
    lwz     r5, 0x30(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x10(sp)
    lwz     r0, 0x34(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    b       branch_0x800f6e84

branch_0x800f6e7c:
    mr      r3, r31
    bl      bind__10TLiveActorFv
branch_0x800f6e84:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl calcRootMatrix__8TAmiNokoFv
calcRootMatrix__8TAmiNokoFv: # 0x800f6e98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    bl      emitEffects__8TAmiNokoFv
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800f6ec8
    li      r0, 0x1
    b       branch_0x800f6ecc

branch_0x800f6ec8:
    li      r0, 0x0
branch_0x800f6ecc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f6f2c
    lfs     f0, 0x10(r30)
    addi    r3, r30, 0x0
    addi    r31, r30, 0x1cc
    stfs    f0, 0x1d8(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1e8(r30)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x1f8(r30)
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    b       branch_0x800f7140

branch_0x800f6f2c:
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f5, 0x1ac(r30)
    addi    r31, r3, 0x20
    lfs     f6, 0x1a4(r30)
    lfs     f3, 0x19c(r30)
    lfs     f2, 0x1b0(r30)
    fmuls   f0, f6, f5
    lfs     f7, 0x1a0(r30)
    lfs     f4, 0x1a8(r30)
    fmuls   f1, f3, f2
    fmsubs  f0, f7, f2, f0
    fmuls   f2, f7, f4
    fmsubs  f1, f6, f4, f1
    stfs    f0, 0x50(sp)
    fmsubs  f0, f3, f5, f2
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x54(sp)
    lfs     f2, 0x58(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lfs     f3, -0x5820(rtoc)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x800f705c
    lwz     r3, 0x1b4(r30)
    lwz     r0, 0x1b8(r30)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x1bc(r30)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x1c0(r30)
    lwz     r0, 0x1c4(r30)
    lfs     f5, 0x4c(sp)
    stw     r3, 0x38(sp)
    lfs     f0, 0x44(sp)
    stw     r0, 0x3c(sp)
    lfs     f6, 0x48(sp)
    lwz     r0, 0x1c8(r30)
    stw     r0, 0x40(sp)
    lfs     f7, 0x3c(sp)
    lfs     f4, 0x40(sp)
    fmuls   f2, f5, f7
    lfs     f1, 0x38(sp)
    fmuls   f0, f0, f4
    fmsubs  f2, f6, f4, f2
    fmsubs  f0, f5, f1, f0
    stfs    f2, 0x50(sp)
    stfs    f0, 0x54(sp)
    lfs     f0, 0x38(sp)
    lfs     f1, 0x44(sp)
    fmuls   f0, f6, f0
    fmsubs  f0, f1, f7, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x54(sp)
    lfs     f2, 0x58(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x800f708c
    lfs     f1, -0x5840(rtoc)
    lfs     f0, -0x5844(rtoc)
    stfs    f1, 0x50(sp)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x58(sp)
    b       branch_0x800f708c

branch_0x800f705c:
    lwz     r3, 0x19c(r30)
    lwz     r0, 0x1a0(r30)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x1a4(r30)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x1a8(r30)
    lwz     r0, 0x1ac(r30)
    stw     r3, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x1b0(r30)
    stw     r0, 0x40(sp)
branch_0x800f708c:
    addi    r3, sp, 0x50
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0x50(sp)
    mr      r3, r30
    stfs    f0, 0x0(r31)
    lfs     f0, 0x54(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x58(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x44(sp)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x48(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x4c(sp)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x38(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x28(r31)
    lfs     f2, -0x5814(rtoc)
    lfs     f1, 0x19c(r30)
    lfs     f0, 0x10(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0xc(r31)
    lfs     f1, 0x1a0(r30)
    lfs     f0, 0x14(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f1, 0x1a4(r30)
    lfs     f0, 0x18(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x2c(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x24(r30)
    addi    r4, r30, 0x1cc
    lwz     r0, 0x28(r30)
    stw     r5, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r31
    bl      PSMTXCopy
branch_0x800f7140:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl emitEffects__8TAmiNokoFv
emitEffects__8TAmiNokoFv: # 0x800f7158
    mflr    r0
    li      r4, 0x20f1
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    addi    r31, r3, 0x0
    lwz     r0, gpMSound(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800f71a0
    addi    r4, r31, 0x10
    li      r3, 0x20f1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800f71a0:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x180
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x210
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    addi    r7, r31, 0x214
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x180
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1e0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    addi    r7, r31, 0x428
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x180
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x1b0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x182
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x210
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x181
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x210
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x183
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x210
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r0, -0x67d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f72bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67cc(r13)
    subi    r0, r3, 0x4d70
    lis     r4, 0x800f
    stw     r0, -0x67cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2768
    addi    r4, r4, 0x5a9c
    subi    r3, r13, 0x67cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d0(r13)
branch_0x800f72bc:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x67cc
    lwz     r3, 0x14(r4)
    cmplw   r3, r0
    bne-    branch_0x800f7384
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x2e
    bge-    branch_0x800f7384
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x17d
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800f7320
    lfs     f0, -0x5848(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800f7320:
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1fc
    lwz     r3, 0x4(r3)
    li      r4, 0x17e
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x120
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1fc(r31)
    stfs    f1, 0x200(r31)
    stfs    f2, 0x204(r31)
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800f7384
    lfs     f0, -0x5848(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800f7384:
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl calcDirection__8TAmiNokoFv
calcDirection__8TAmiNokoFv: # 0x800f7398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c0(sp)
    stfd    f31, 0x1b8(sp)
    stw     r31, 0x1b4(sp)
    mr      r31, r3
    stw     r30, 0x1b0(sp)
    lwz     r4, 0xf4(r3)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x800f73cc
    addi    r4, r4, 0x10
    b       branch_0x800f73d0

branch_0x800f73cc:
    addi    r4, r3, 0x4
branch_0x800f73d0:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1a4(sp)
    stw     r0, 0x1a8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1ac(sp)
    lfs     f1, 0x1a4(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1a4(sp)
    lfs     f1, 0x1a8(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1a8(sp)
    lfs     f1, 0x1ac(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1ac(sp)
    lfs     f1, 0x1a4(sp)
    lfs     f3, 0x1ac(sp)
    lfs     f0, 0x1a8(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x5820(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f7460
    lfs     f1, -0x5840(rtoc)
    lfs     f0, -0x5844(rtoc)
    stfs    f1, 0x1a4(sp)
    stfs    f0, 0x1a8(sp)
    stfs    f0, 0x1ac(sp)
    b       branch_0x800f74b0

branch_0x800f7460:
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f7480
    lfs     f0, -0x5844(rtoc)
    stfs    f0, 0x1ac(sp)
    stfs    f0, 0x1a8(sp)
    stfs    f0, 0x1a4(sp)
    b       branch_0x800f74b0

branch_0x800f7480:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5840(rtoc)
    lfs     f0, 0x1a4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1a4(sp)
    lfs     f0, 0x1a8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a8(sp)
    lfs     f0, 0x1ac(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1ac(sp)
branch_0x800f74b0:
    lfs     f3, 0x18(r31)
    li      r0, 0x4
    lfs     f2, 0x14(r31)
    li      r30, 0x0
    lfs     f1, 0x10(r31)
    lfs     f0, -0x5838(rtoc)
    addi    r4, sp, 0x178
    stfs    f1, 0x178(sp)
    lwz     r3, gpMap(r13)
    stfs    f2, 0x17c(sp)
    stfs    f3, 0x180(sp)
    stfs    f0, 0x184(sp)
    stw     r0, 0x188(sp)
    stw     r30, 0x190(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    lfs     f31, -0x5810(rtoc)
    lfs     f0, -0x5844(rtoc)
    addi    r3, sp, 0x178
    li      r6, -0x1
    mtctr   r0
    li      r7, 0x0
    ble-    branch_0x800f757c
branch_0x800f750c:
    addi    r0, r30, 0x1c
    lwzx    r4, r3, r0
    cmpwi   r6, 0x0
    stw     r4, 0x174(sp)
    lfs     f2, 0x38(r4)
    lfs     f1, 0x14(r31)
    lfs     f3, 0x34(r4)
    fmuls   f1, f2, f1
    lfs     f2, 0x10(r31)
    lfs     f5, 0x3c(r4)
    lfs     f4, 0x18(r31)
    fmadds  f2, f3, f2, f1
    lfs     f1, 0x40(r4)
    fmadds  f2, f5, f4, f2
    fadds   f1, f2, f1
    fabs    f1, f1
    blt-    branch_0x800f7560
    fcmpo   cr0, f31, f1
    bgt-    branch_0x800f7560
    fcmpo   cr0, f31, f0
    bge-    branch_0x800f7570
branch_0x800f7560:
    li      r0, 0x2
    fmr     f31, f1
    stw     r0, 0x198(r31)
    mr      r6, r7
branch_0x800f7570:
    addi    r7, r7, 0x1
    addi    r30, r30, 0x4
    bdnz+      branch_0x800f750c
branch_0x800f757c:
    lfs     f2, 0x148(r31)
    slwi    r0, r6, 2
    lfs     f1, 0xc0(r31)
    addi    r3, sp, 0x194
    lfs     f0, 0x14(r31)
    fmuls   f2, f2, f1
    lwzx    r30, r3, r0
    lwz     r3, gpMap(r13)
    addi    r4, sp, 0x174
    lfs     f1, 0x10(r31)
    fadds   f2, f0, f2
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r0, 0x174(sp)
    stw     r0, 0xc4(r31)
    lwz     r4, 0xc4(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x800f7624
    stw     r4, 0x174(sp)
    lfs     f0, -0x5844(rtoc)
    lfs     f2, 0x38(r4)
    lfs     f1, 0x14(r31)
    lfs     f3, 0x34(r4)
    fmuls   f1, f2, f1
    lfs     f2, 0x10(r31)
    lfs     f5, 0x3c(r4)
    lfs     f4, 0x18(r31)
    fmadds  f2, f3, f2, f1
    lfs     f1, 0x40(r4)
    fmadds  f2, f5, f4, f2
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800f7624
    fcmpo   cr0, f31, f1
    bgt-    branch_0x800f7614
    fcmpo   cr0, f31, f0
    bge-    branch_0x800f7624
branch_0x800f7614:
    li      r0, 0x0
    fmr     f31, f1
    stw     r0, 0x198(r31)
    mr      r30, r4
branch_0x800f7624:
    lwz     r3, gpMap(r13)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x174
    bl      checkRoof__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lwz     r4, 0x174(sp)
    cmplwi  r4, 0x0
    beq-    branch_0x800f7698
    lfs     f0, 0x14(r31)
    lfs     f1, 0x38(r4)
    lfs     f2, 0x34(r4)
    fmuls   f0, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f4, 0x3c(r4)
    lfs     f3, 0x18(r31)
    fmadds  f2, f2, f1, f0
    lfs     f1, 0x40(r4)
    lfs     f0, -0x5844(rtoc)
    fmadds  f2, f4, f3, f2
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800f7698
    fcmpo   cr0, f31, f1
    bgt-    branch_0x800f768c
    fcmpo   cr0, f31, f0
    bge-    branch_0x800f7698
branch_0x800f768c:
    li      r0, 0x1
    stw     r0, 0x198(r31)
    mr      r30, r4
branch_0x800f7698:
    cmplwi  r30, 0x0
    beq-    branch_0x800f76a4
    stw     r30, 0x194(r31)
branch_0x800f76a4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x194(r31)
    lfs     f31, 0x350(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800f76e4
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    stw     r3, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x3c(r4)
    stw     r0, 0x16c(sp)
    b       branch_0x800f76f8

branch_0x800f76e4:
    lfs     f1, -0x5844(rtoc)
    lfs     f0, -0x5840(rtoc)
    stfs    f1, 0x164(sp)
    stfs    f0, 0x168(sp)
    stfs    f1, 0x16c(sp)
branch_0x800f76f8:
    lfs     f1, 0x168(sp)
    lfs     f0, 0x1a0(r31)
    lfs     f4, 0x164(sp)
    fmuls   f0, f1, f0
    lfs     f5, 0x19c(r31)
    lfs     f3, 0x16c(sp)
    lfs     f2, 0x1a4(r31)
    fmadds  f1, f4, f5, f0
    lfs     f0, -0x5810(rtoc)
    fmadds  f1, f3, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f7748
    lwz     r3, 0x164(sp)
    lwz     r0, 0x168(sp)
    stw     r3, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x16c(sp)
    stw     r0, 0x1a4(r31)
    b       branch_0x800f7818

branch_0x800f7748:
    fcmpo   cr0, f5, f4
    bge-    branch_0x800f7768
    fadds   f0, f5, f31
    fcmpo   cr0, f0, f4
    ble-    branch_0x800f7760
    b       branch_0x800f7780

branch_0x800f7760:
    fmr     f4, f0
    b       branch_0x800f7780

branch_0x800f7768:
    fsubs   f0, f5, f31
    fcmpo   cr0, f0, f4
    ble-    branch_0x800f7778
    b       branch_0x800f777c

branch_0x800f7778:
    fmr     f0, f4
branch_0x800f777c:
    fmr     f4, f0
branch_0x800f7780:
    stfs    f4, 0x19c(r31)
    lfs     f0, 0x1a0(r31)
    lfs     f1, 0x168(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800f77ac
    fadds   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f77a4
    b       branch_0x800f77c4

branch_0x800f77a4:
    fmr     f1, f0
    b       branch_0x800f77c4

branch_0x800f77ac:
    fsubs   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f77bc
    b       branch_0x800f77c0

branch_0x800f77bc:
    fmr     f0, f1
branch_0x800f77c0:
    fmr     f1, f0
branch_0x800f77c4:
    stfs    f1, 0x1a0(r31)
    lfs     f0, 0x1a4(r31)
    lfs     f1, 0x16c(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800f77f0
    fadds   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f77e8
    b       branch_0x800f7808

branch_0x800f77e8:
    fmr     f1, f0
    b       branch_0x800f7808

branch_0x800f77f0:
    fsubs   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f7800
    b       branch_0x800f7804

branch_0x800f7800:
    fmr     f0, f1
branch_0x800f7804:
    fmr     f1, f0
branch_0x800f7808:
    addi    r3, r31, 0x19c
    stfs    f1, 0x1a4(r31)
    mr      r4, r3
    bl      PSVECNormalize
branch_0x800f7818:
    lfs     f1, 0x1ac(r31)
    lfs     f0, 0x1a8(sp)
    lfs     f2, 0x1a8(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x1a4(sp)
    lfs     f4, 0x1b0(r31)
    lfs     f3, 0x1ac(sp)
    fmadds  f1, f2, f1, f0
    lfs     f0, -0x580c(rtoc)
    fmadds  f1, f4, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800f7868
    lfs     f1, -0x5808(rtoc)
    addi    r3, sp, 0x134
    addi    r4, sp, 0x164
    bl      PSMTXRotAxisRad
    addi    r4, sp, 0x1a4
    addi    r5, r4, 0x0
    addi    r3, sp, 0x134
    bl      PSMTXMultVec
branch_0x800f7868:
    lfs     f0, 0x1a8(r31)
    lfs     f1, 0x1a4(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800f7890
    fadds   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f7888
    b       branch_0x800f78a8

branch_0x800f7888:
    fmr     f1, f0
    b       branch_0x800f78a8

branch_0x800f7890:
    fsubs   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f78a0
    b       branch_0x800f78a4

branch_0x800f78a0:
    fmr     f0, f1
branch_0x800f78a4:
    fmr     f1, f0
branch_0x800f78a8:
    stfs    f1, 0x1a8(r31)
    lfs     f0, 0x1ac(r31)
    lfs     f1, 0x1a8(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800f78d4
    fadds   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f78cc
    b       branch_0x800f78ec

branch_0x800f78cc:
    fmr     f1, f0
    b       branch_0x800f78ec

branch_0x800f78d4:
    fsubs   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f78e4
    b       branch_0x800f78e8

branch_0x800f78e4:
    fmr     f0, f1
branch_0x800f78e8:
    fmr     f1, f0
branch_0x800f78ec:
    stfs    f1, 0x1ac(r31)
    lfs     f0, 0x1b0(r31)
    lfs     f1, 0x1ac(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800f7918
    fadds   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f7910
    b       branch_0x800f7930

branch_0x800f7910:
    fmr     f1, f0
    b       branch_0x800f7930

branch_0x800f7918:
    fsubs   f0, f0, f31
    fcmpo   cr0, f0, f1
    ble-    branch_0x800f7928
    b       branch_0x800f792c

branch_0x800f7928:
    fmr     f0, f1
branch_0x800f792c:
    fmr     f1, f0
branch_0x800f7930:
    addi    r3, r31, 0x1a8
    stfs    f1, 0x1b0(r31)
    mr      r4, r3
    bl      PSVECNormalize
    lfs     f3, 0x1b0(r31)
    lfs     f8, 0x19c(r31)
    lfs     f2, 0x1a4(r31)
    lfs     f7, 0x1ac(r31)
    fmuls   f0, f8, f3
    lfs     f5, 0x1a8(r31)
    fmuls   f1, f2, f7
    lfs     f6, 0x1a0(r31)
    fmsubs  f4, f2, f5, f0
    fmuls   f2, f6, f5
    lfs     f0, -0x5820(rtoc)
    fmsubs  f3, f6, f3, f1
    fmuls   f1, f4, f4
    fmsubs  f5, f8, f7, f2
    fmadds  f1, f3, f3, f1
    fmadds  f1, f5, f5, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x800f79bc
    lwz     r3, 0x19c(r31)
    lwz     r0, 0x1a0(r31)
    stw     r3, 0x1b4(r31)
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x1a4(r31)
    stw     r0, 0x1bc(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0x1ac(r31)
    stw     r3, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r0, 0x1b0(r31)
    stw     r0, 0x1c8(r31)
branch_0x800f79bc:
    lfs     f7, 0x1a0(r31)
    lfs     f8, 0x1a4(r31)
    fmuls   f0, f5, f7
    lfs     f6, 0x19c(r31)
    fmuls   f1, f3, f8
    fmuls   f2, f4, f6
    fmsubs  f0, f4, f8, f0
    fmsubs  f1, f5, f6, f1
    fmsubs  f2, f3, f7, f2
    stfs    f0, 0x1a4(sp)
    stfs    f1, 0x1a8(sp)
    stfs    f2, 0x1ac(sp)
    lfs     f1, 0x1a4(sp)
    lfs     f0, 0x1a8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x1ac(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x5820(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x800f7a34
    lwz     r3, 0x1a4(sp)
    lwz     r0, 0x1a8(sp)
    stw     r3, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    lwz     r0, 0x1ac(sp)
    stw     r0, 0x1b0(r31)
branch_0x800f7a34:
    lwz     r0, 0x1c4(sp)
    lfd     f31, 0x1b8(sp)
    lwz     r31, 0x1b4(sp)
    mtlr    r0
    lwz     r30, 0x1b0(sp)
    addi    sp, sp, 0x1c0
    blr


.globl isHitValid__8TAmiNokoFUl
isHitValid__8TAmiNokoFUl: # 0x800f7a50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    cmplwi  r31, 0xc
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x800f7a84
    cmplwi  r31, 0x1
    bne-    branch_0x800f7b74
branch_0x800f7a84:
    lwz     r3, MarioHitActorPos(r13)
    lfs     f5, 0x10(r30)
    lfs     f4, 0x0(r3)
    lfs     f3, 0x18(r30)
    lfs     f0, 0x8(r3)
    fsubs   f31, f5, f4
    lfs     f1, 0x1a4(r30)
    fsubs   f30, f3, f0
    lfs     f2, 0x19c(r30)
    bl      matan__Fff
    lfs     f1, -0x5844(rtoc)
    lfs     f0, 0x1a0(r30)
    lfs     f2, 0x19c(r30)
    fmuls   f0, f1, f0
    lfs     f3, 0x1a4(r30)
    fmadds  f0, f31, f2, f0
    fmadds  f0, f30, f3, f0
    fcmpo   cr0, f0, f1
    bgt-    branch_0x800f7ad8
    cmplwi  r31, 0x1
    bne-    branch_0x800f7b74
branch_0x800f7ad8:
    lbz     r0, -0x67d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f7b1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67d4(r13)
    subi    r0, r3, 0x4d60
    lis     r4, 0x800f
    stw     r0, -0x67d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x275c
    addi    r4, r4, 0x60bc
    subi    r3, r13, 0x67d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d8(r13)
branch_0x800f7b1c:
    subi    r6, r13, 0x67d4
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800f7b74
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800f7b68
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800f7b68
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800f7b68:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800f7b74:
    cmplwi  r31, 0xb
    bne-    branch_0x800f7b84
    li      r3, 0x1
    b       branch_0x800f7b88

branch_0x800f7b84:
    li      r3, 0x0
branch_0x800f7b88:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl setWalkAnm__8TAmiNokoFv
setWalkAnm__8TAmiNokoFv: # 0x800f7ba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x20c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800f7bd8
    lwz     r12, 0x0(r3)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800f7bec

branch_0x800f7bd8:
    lwz     r12, 0x0(r3)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800f7bec:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl attackToMario__8TAmiNokoFv
attackToMario__8TAmiNokoFv: # 0x800f7bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__22TNerveSmallEnemyChangeFv
    cmplw   r30, r3
    beq-    branch_0x800f7e0c
    lwz     r0, 0x194(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800f7e0c
    lwz     r0, 0x198(r31)
    li      r30, 0x1
    cmpwi   r0, 0x1
    beq-    branch_0x800f7c88
    bge-    branch_0x800f7c54
    cmpwi   r0, 0x0
    bge-    branch_0x800f7c60
    b       branch_0x800f7d00

branch_0x800f7c54:
    cmpwi   r0, 0x3
    bge-    branch_0x800f7d00
    b       branch_0x800f7cb8

branch_0x800f7c60:
    bl      SMS_GetMarioRfPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x800f7d00
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800f7d00
    li      r30, 0x0
    b       branch_0x800f7d00

branch_0x800f7c88:
    bl      SMS_GetMarioGrPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x800f7d00
    lwz     r3, MarioHitActorPos(r13)
    lfs     f2, -0x5804(rtoc)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x14(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800f7d00
    li      r30, 0x0
    b       branch_0x800f7d00

branch_0x800f7cb8:
    bl      SMS_GetMarioWlPlane__Fv
    cmplwi  r3, 0x0
    beq-    branch_0x800f7d00
    lwz     r4, 0x194(r31)
    addi    r5, r3, 0x34
    lfs     f1, 0x38(r3)
    lfs     f0, 0x38(r4)
    lfs     f3, 0x34(r3)
    fmuls   f1, f1, f0
    lfs     f2, 0x34(r4)
    lfs     f5, 0x8(r5)
    lfs     f4, 0x3c(r4)
    fmadds  f1, f3, f2, f1
    lfs     f0, -0x5844(rtoc)
    fmadds  f1, f5, f4, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800f7d00
    li      r30, 0x0
branch_0x800f7d00:
    cmpwi   r30, 0x0
    beq-    branch_0x800f7e0c
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURTELECTRIC
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800f7e0c
    lbz     r0, -0x67d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f7d60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67cc(r13)
    subi    r0, r3, 0x4d70
    lis     r4, 0x800f
    stw     r0, -0x67cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2768
    addi    r4, r4, 0x5a9c
    subi    r3, r13, 0x67cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d0(r13)
branch_0x800f7d60:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x67cc
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800f7e0c
    lbz     r0, -0x67d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f7db4
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x67cc(r13)
    subi    r0, r4, 0x4d70
    lis     r4, 0x800f
    stw     r0, -0x67cc(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x5a9c
    addi    r5, r5, 0x2768
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d0(r13)
branch_0x800f7db4:
    subi    r6, r13, 0x67cc
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800f7e0c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800f7e00
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800f7e00
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800f7e00:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800f7e0c:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl behaveToWater__8TAmiNokoFP9THitActor
behaveToWater__8TAmiNokoFP9THitActor: # 0x800f7e24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x67d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f7e7c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67cc(r13)
    subi    r0, r3, 0x4d70
    lis     r4, 0x800f
    stw     r0, -0x67cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2768
    addi    r4, r4, 0x5a9c
    subi    r3, r13, 0x67cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d0(r13)
branch_0x800f7e7c:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x67cc
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800f7f30
    lbz     r0, -0x67d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800f7ed0
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x67cc(r13)
    subi    r0, r4, 0x4d70
    lis     r4, 0x800f
    stw     r0, -0x67cc(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x5a9c
    addi    r5, r5, 0x2768
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67d0(r13)
branch_0x800f7ed0:
    subi    r6, r13, 0x67cc
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800f7f28
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800f7f1c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800f7f1c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800f7f1c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800f7f28:
    li      r0, 0x0
    stw     r0, 0x160(r31)
branch_0x800f7f30:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl reset__8TAmiNokoFv
reset__8TAmiNokoFv: # 0x800f7f44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      reset__12TWalkerEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMActorAndKeeper__8TAmiNokoFv
setMActorAndKeeper__8TAmiNokoFv: # 0x800f7f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800f7f9c
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800f7f9c:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x27b4
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


.globl init__8TAmiNokoFP12TLiveManager
init__8TAmiNokoFP12TLiveManager: # 0x800f7fd0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r27, 0x84(sp)
    addi    r30, r3, 0x0
    addi    r31, r5, 0x25d0
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x21
    stw     r0, 0x4c(r30)
    li      r0, 0x11
    stw     r0, 0x150(r30)
    lbz     r0, -0x67e8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8048
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x67e4(r13)
    subi    r0, r3, 0x4d40
    lis     r4, 0x800f
    stw     r0, -0x67e4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2738
    addi    r4, r4, 0x6628
    subi    r3, r13, 0x67e4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x67e8(r13)
branch_0x800f8048:
    lwz     r4, 0x8c(r30)
    li      r28, 0x0
    subi    r0, r13, 0x67e4
    stw     r28, 0x8(r4)
    mr      r3, r30
    stw     r28, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r28, 0x1c(r4)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x208(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x800f80dc
    stb     r28, 0x20c(r30)
branch_0x800f80dc:
    li      r0, 0x0
    stb     r0, 0xe8(r30)
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800f81dc
    stw     r29, 0x70(sp)
    addi    r4, r31, 0x1f8
    lwz     r3, 0x70(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    lwz     r28, 0x70(sp)
    subi    r3, r3, 0x4b78
    stw     r3, 0x0(r28)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x20c
    stw     r0, 0x20(r28)
    stw     r30, 0x68(r28)
    lwz     r4, -0x5db8(r13)
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x20c
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r4, r31, 0x0
    addi    r3, sp, 0x44
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x44(sp)
    addi    r4, sp, 0x40
    addi    r3, sp, 0x68
    stw     r0, 0x40(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x68(sp)
    addi    r5, sp, 0x50
    addi    r4, r31, 0x0
    stw     r0, 0x64(sp)
    addi    r3, sp, 0x4c
    addi    r6, sp, 0x70
    lwz     r0, 0x64(sp)
    stw     r0, 0x50(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x60
    addi    r4, sp, 0x48
    stw     r0, 0x48(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x5800(rtoc)
    lis     r4, 0x1000
    lfs     f2, -0x57fc(rtoc)
    mr      r3, r28
    fmr     f3, f1
    fmr     f4, f2
    addi    r4, r4, 0x21
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r28)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r28)
branch_0x800f81dc:
    stw     r29, 0x210(r30)
    lmw     r27, 0x84(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl load__8TAmiNokoFR20JSUMemoryInputStream
load__8TAmiNokoFR20JSUMemoryInputStream: # 0x800f81f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x17c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__8TAmiNokoFPCc
__ct__8TAmiNokoFPCc: # 0x800f823c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x4d30
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x194(r31)
    stw     r4, 0x198(r31)
    stb     r0, 0x20c(r31)
    lfs     f1, -0x5844(rtoc)
    stfs    f1, 0x19c(r31)
    lfs     f0, -0x5840(rtoc)
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    stfs    f1, 0x1a8(r31)
    stfs    f1, 0x1ac(r31)
    stfs    f0, 0x1b0(r31)
    lwz     r4, 0x19c(r31)
    lwz     r0, 0x1a0(r31)
    stw     r4, 0x1b4(r31)
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x1a4(r31)
    stw     r0, 0x1bc(r31)
    lwz     r4, 0x1a8(r31)
    lwz     r0, 0x1ac(r31)
    stw     r4, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r0, 0x1b0(r31)
    stw     r0, 0x1c8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__7TAmiHitFUlPQ26JDrama9TGraphics
perform__7TAmiHitFUlPQ26JDrama9TGraphics: # 0x800f82e4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x60(sp)
    stmw    r27, 0x4c(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x800f847c
    lwz     r4, 0x68(r29)
    lfs     f0, -0x5820(rtoc)
    lwz     r3, 0x19c(r4)
    lwz     r0, 0x1a0(r4)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x1a4(r4)
    stw     r0, 0x44(sp)
    lfs     f2, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f3, 0x44(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f8368
    lfs     f0, -0x5844(rtoc)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x3c(sp)
    b       branch_0x800f8398

branch_0x800f8368:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x5840(rtoc)
    lfs     f0, 0x3c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
branch_0x800f8398:
    lfs     f0, 0x3c(sp)
    lfs     f1, -0x57f8(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lwz     r4, 0x68(r29)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r29)
    lfs     f1, 0x10(r29)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x40(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f1, 0x18(r29)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r29)
    lfs     f2, -0x582c(rtoc)
    lfs     f1, 0x54(r29)
    lfs     f0, 0x14(r29)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r29)
    lwz     r3, 0x68(r29)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800f847c
    li      r27, 0x0
    li      r28, 0x0
    b       branch_0x800f8470

branch_0x800f843c:
    lwz     r3, 0x44(r29)
    lwzx    r3, r3, r28
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800f8468
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
branch_0x800f8468:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
branch_0x800f8470:
    lhz     r0, 0x48(r29)
    cmpw    r27, r0
    blt+    branch_0x800f843c
branch_0x800f847c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lmw     r27, 0x4c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl receiveMessage__7TAmiHitFP9THitActorUl
receiveMessage__7TAmiHitFP9THitActorUl: # 0x800f84a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__15TAmiNokoManagerFv
createEnemyInstance__15TAmiNokoManagerFv: # 0x800f84d0
    li      r3, 0x0
    blr


.globl createModelData__15TAmiNokoManagerFv
createModelData__15TAmiNokoManagerFv: # 0x800f84d8
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x4d88
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__15TAmiNokoManagerFR20JSUMemoryInputStream
load__15TAmiNokoManagerFR20JSUMemoryInputStream: # 0x800f850c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r29, r5, 0x25d0
    li      r3, 0x354
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800f85c4
    stw     r25, 0x10(sp)
    addi    r4, r29, 0x218
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r29, 0x22c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r28, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r29, 0x22c
    addi    r4, r28, 0x0
    addi    r3, r28, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r30, r3, 0x42c4
    stw     r30, 0x32c(r28)
    lis     r3, 0x803b
    subi    r31, r3, 0x42d0
    lfs     f0, -0x57f4(rtoc)
    addi    r3, r29, 0x23c
    stfs    f0, 0x33c(r28)
    stw     r31, 0x32c(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x340
    addi    r6, r29, 0x23c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r30, 0x340(r28)
    mr      r3, r28
    lfs     f0, -0x5818(rtoc)
    stfs    f0, 0x350(r28)
    stw     r31, 0x340(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x800f85c4:
    stw     r25, 0x38(r26)
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__15TAmiNokoManagerFPCc
__ct__15TAmiNokoManagerFPCc: # 0x800f85e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x4ad4
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__8TAmiNokoFv
__dt__8TAmiNokoFv: # 0x800f8624
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f86a4
    lis     r3, 0x803c
    subi    r3, r3, 0x4d30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f8694
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f8694
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800f8694:
    extsh.  r0, r31
    ble-    branch_0x800f86a4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f86a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isCollidMove__8TAmiNokoFP9THitActor
isCollidMove__8TAmiNokoFP9THitActor: # 0x800f86c0
    li      r3, 0x0
    blr


.globl __dt__7TAmiHitFv
__dt__7TAmiHitFv: # 0x800f86c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f8730
    lis     r3, 0x803c
    subi    r3, r3, 0x4b78
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800f8720
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800f8720:
    extsh.  r0, r31
    ble-    branch_0x800f8730
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f8730:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TAmiNokoManagerFv
__dt__15TAmiNokoManagerFv: # 0x800f874c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f87a4
    lis     r3, 0x803c
    subi    r0, r3, 0x4ad4
    stw     r0, 0x0(r30)
    beq-    branch_0x800f8794
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800f8794:
    extsh.  r0, r31
    ble-    branch_0x800f87a4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f87a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_amiNoko_cpp
__sinit_amiNoko_cpp: # 0x800f87c0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2738
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8808
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800f8808:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8838
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800f8838:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8868
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800f8868:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8898
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800f8898:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800f88c8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800f88c8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800f88f8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800f88f8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8928
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800f8928:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8958
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800f8958:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8988
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800f8988:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800f89b8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800f89b8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800f89e8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800f89e8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8a18
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800f8a18:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8a48
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800f8a48:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8a78
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800f8a78:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800f8aa8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800f8aa8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__7TAmiHitFv
_32___dt__7TAmiHitFv: # 0x800f8abc
    subi    r3, r3, 0x20
    b       __dt__7TAmiHitFv


.globl _32___dt__8TAmiNokoFv
_32___dt__8TAmiNokoFv: # 0x800f8ac4
    subi    r3, r3, 0x20
    b       __dt__8TAmiNokoFv

