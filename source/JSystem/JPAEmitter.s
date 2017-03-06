
.globl JPAGetEmitterInfoPtr__Fv
JPAGetEmitterInfoPtr__Fv: # 0x80321c98
    lis     r3, 0x8040
    subi    r3, r3, 0x1ec8
    blr


.globl __ct__14JPABaseEmitterFv
__ct__14JPABaseEmitterFv: # 0x80321ca4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    addi    r3, r31, 0x0
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    lfs     f1, 0x810(rtoc)
    addi    r3, r31, 0x20
    stfs    f1, 0x10(r31)
    lfs     f0, 0x814(rtoc)
    stfs    f0, 0x14(r31)
    stfs    f1, 0x18(r31)
    stfs    f0, 0x1c(r31)
    bl      __ct__15JPAFieldManagerFv
    addi    r3, r31, 0xf4
    bl      initiate__10JSUPtrListFv
    addi    r3, r31, 0x100
    bl      initiate__10JSUPtrListFv
    addi    r3, r31, 0x21c
    li      r4, 0x0
    bl      __ct__Q25JMath13TRandom_fast_FUl
    addi    r3, r31, 0x124
    bl      PSMTXIdentity
    lfs     f1, 0x814(rtoc)
    lis     r3, 0x8040
    subi    r4, r3, 0x1ec8
    stfs    f1, 0x154(r31)
    lis     r3, 0x19
    li      r5, 0x0
    stfs    f1, 0x158(r31)
    addi    r6, r4, 0x8
    addi    r0, r3, 0x660d
    stfs    f1, 0x15c(r31)
    mr      r3, r31
    stfs    f1, 0x174(r31)
    stfs    f1, 0x178(r31)
    stfs    f1, 0x17c(r31)
    sth     r5, 0x170(r31)
    sth     r5, 0x16e(r31)
    sth     r5, 0x16c(r31)
    lfs     f0, 0x810(rtoc)
    stfs    f0, 0x168(r31)
    stfs    f0, 0x164(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x1b8(r31)
    stfs    f0, 0x1bc(r31)
    stfs    f1, 0x1c0(r31)
    stw     r5, 0x110(r31)
    stw     r5, 0x114(r31)
    stw     r5, 0x118(r31)
    stb     r5, 0x172(r31)
    stw     r5, 0x11c(r31)
    lwz     r4, 0x11c(r31)
    ori     r4, r4, 0x30
    stw     r4, 0x11c(r31)
    lwz     r4, 0x0(r6)
    mullw   r4, r4, r0
    addis   r4, r4, 0x3c6f
    subi    r0, r4, 0xca1
    stw     r0, 0x0(r6)
    lwz     r0, 0x0(r6)
    stw     r0, 0x21c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getFovy__14JPABaseEmitterFv
getFovy__14JPABaseEmitterFv: # 0x80321dbc
    lis     r3, 0x8040
    subi    r3, r3, 0x1ec8
    lfs     f1, 0x15c(r3)
    blr


.globl getAspect__14JPABaseEmitterFv
getAspect__14JPABaseEmitterFv: # 0x80321dcc
    lis     r3, 0x8040
    subi    r3, r3, 0x1ec8
    lfs     f1, 0x160(r3)
    blr


.globl deleteAllParticle__14JPABaseEmitterFv
deleteAllParticle__14JPABaseEmitterFv: # 0x80321ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    mr      r28, r3
    addi    r29, r28, 0xf4
    lwz     r3, 0xf4(r3)
    b       branch_0x80321e40

branch_0x80321e08:
    lwz     r30, 0x0(r3)
    lwz     r31, 0xc(r3)
    lwz     r12, 0x58(r30)
    mr      r3, r30
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0x10c(r28)
    mr      r4, r30
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    mr      r3, r31
branch_0x80321e40:
    cmplwi  r3, 0x0
    bne+    branch_0x80321e08
    lwz     r29, 0x100(r28)
    addi    r31, r28, 0x100
    b       branch_0x80321e88

branch_0x80321e54:
    lwz     r30, 0x0(r29)
    lwz     r29, 0xc(r29)
    lwz     r12, 0x58(r30)
    mr      r3, r30
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0x10c(r28)
    mr      r4, r30
    bl      prepend__10JSUPtrListFP10JSUPtrLink
branch_0x80321e88:
    cmplwi  r29, 0x0
    bne+    branch_0x80321e54
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl createChildParticle__14JPABaseEmitterFP15JPABaseParticle
createChildParticle__14JPABaseEmitterFP15JPABaseParticle: # 0x80321eb0
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x258(sp)
    stfd    f31, 0x250(sp)
    stfd    f30, 0x248(sp)
    stfd    f29, 0x240(sp)
    stfd    f28, 0x238(sp)
    stfd    f27, 0x230(sp)
    stfd    f26, 0x228(sp)
    stfd    f25, 0x220(sp)
    stfd    f24, 0x218(sp)
    stfd    f23, 0x210(sp)
    stfd    f22, 0x208(sp)
    stfd    f21, 0x200(sp)
    stfd    f20, 0x1f8(sp)
    stfd    f19, 0x1f0(sp)
    stfd    f18, 0x1e8(sp)
    stfd    f17, 0x1e0(sp)
    stfd    f16, 0x1d8(sp)
    stmw    r22, 0x1b0(sp)
    addi    r22, r3, 0x0
    subi    r3, r5, 0x1ec8
    addi    r23, r4, 0x0
    li      r5, 0x0
    lfs     f0, 0x810(rtoc)
    stfs    f0, 0x198(sp)
    stfs    f0, 0x19c(sp)
    stfs    f0, 0x1a0(sp)
    lwz     r4, 0x118(r22)
    lbz     r0, 0x17f(r3)
    lwz     r27, 0xc(r4)
    cmplwi  r0, 0x0
    lfs     f24, 0x20(r23)
    lha     r26, 0x42(r27)
    lfs     f23, 0x24(r23)
    lfs     f22, 0x28(r23)
    lfs     f21, 0x14(r23)
    lfs     f20, 0x18(r23)
    lfs     f19, 0x1c(r23)
    bne-    branch_0x80321f58
    li      r5, 0x1
branch_0x80321f58:
    lis     r3, 0x19
    lfs     f30, 0x814(rtoc)
    lfs     f31, 0x810(rtoc)
    addi    r31, r3, 0x660d
    lfs     f26, 0x818(rtoc)
    clrlwi  r30, r5, 24
    lfs     f27, 0x81c(rtoc)
    lfs     f28, 0x820(rtoc)
    li      r25, 0x0
    lfd     f25, 0x828(rtoc)
    lis     r29, 0x4330
    lfs     f29, 0x824(rtoc)
    b       branch_0x80322408

branch_0x80321f8c:
    lwz     r3, 0x10c(r22)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80322410
    lwz     r4, 0x0(r3)
    lwz     r28, 0x0(r4)
    mr      r4, r28
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x10(r28)
    addi    r24, r28, 0x0
    addi    r4, r28, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x10(r28)
    addi    r3, r22, 0x100
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x10(r28)
    cmplwi  r30, 0x0
    ori     r0, r0, 0x4
    stw     r0, 0x10(r28)
    stfs    f31, 0x48(r28)
    lha     r0, 0x40(r27)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1ac(sp)
    stw     r29, 0x1a8(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f0, f0, f25
    stfs    f0, 0x4c(r28)
    lwz     r0, 0x114(r22)
    stw     r0, 0x50(r28)
    beq-    branch_0x80322014
    lwz     r0, 0x10(r28)
    ori     r0, r0, 0x40
    stw     r0, 0x10(r28)
    b       branch_0x80322044

branch_0x80322014:
    mr      r3, r23
    lwz     r12, 0x58(r23)
    lwz     r12, 0x44(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x80(r28)
    mr      r3, r23
    lwz     r12, 0x58(r23)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x84(r28)
branch_0x80322044:
    lfs     f0, 0x198(sp)
    stfs    f0, 0x88(r28)
    lfs     f0, 0x19c(sp)
    stfs    f0, 0x8c(r28)
    lfs     f0, 0x1a0(sp)
    stfs    f0, 0x90(r28)
    lfs     f18, 0x1c(r27)
    fcmpu   cr0, f31, f18
    beq-    branch_0x803220f4
    mr      r3, r23
    lwz     r12, 0x58(r23)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x0(r3)
    fmuls   f0, f0, f18
    stfs    f0, 0x164(sp)
    lfs     f0, 0x4(r3)
    fmuls   f0, f0, f18
    stfs    f0, 0x168(sp)
    lfs     f0, 0x8(r3)
    mr      r3, r23
    fmuls   f0, f0, f18
    stfs    f0, 0x16c(sp)
    lwz     r12, 0x58(r23)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x0(r3)
    addi    r4, sp, 0x164
    lfs     f1, 0x4(r3)
    lfs     f0, 0x8(r3)
    mr      r3, r24
    lwz     r12, 0x58(r24)
    fmuls   f17, f2, f18
    fmuls   f16, f1, f18
    lwz     r12, 0x30(r12)
    fmuls   f18, f0, f18
    mtlr    r12
    blrl
    stfs    f17, 0x94(r28)
    stfs    f16, 0x98(r28)
    stfs    f18, 0x9c(r28)
    b       branch_0x80322124

branch_0x803220f4:
    mr      r3, r24
    lwz     r12, 0x58(r24)
    addi    r4, sp, 0x198
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x198(sp)
    stfs    f0, 0x94(r28)
    lfs     f0, 0x19c(sp)
    stfs    f0, 0x98(r28)
    lfs     f0, 0x1a0(sp)
    stfs    f0, 0x9c(r28)
branch_0x80322124:
    lfs     f2, 0xc(r27)
    fcmpu   cr0, f31, f2
    beq-    branch_0x8032228c
    lwz     r0, 0x21c(r22)
    mullw   r3, r0, r31
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r22)
    lwz     r0, 0x21c(r22)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0xd0(sp)
    lwz     r0, 0x21c(r22)
    lfs     f1, 0x20(r27)
    mullw   r3, r0, r31
    lfs     f0, 0xd0(sp)
    fmuls   f1, f2, f1
    fsubs   f0, f0, f30
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    fmsubs  f0, f26, f0, f30
    stw     r0, 0x21c(r22)
    lwz     r0, 0x21c(r22)
    fmuls   f18, f1, f0
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    fadds   f18, f18, f2
    stw     r0, 0xcc(sp)
    lwz     r0, 0x21c(r22)
    lfs     f0, 0xcc(sp)
    mullw   r3, r0, r31
    fsubs   f0, f0, f30
    fsubs   f1, f0, f27
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r22)
    lwz     r0, 0x21c(r22)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0xc8(sp)
    lwz     r0, 0x21c(r22)
    lfs     f0, 0xc8(sp)
    mullw   r3, r0, r31
    fsubs   f0, f0, f30
    fsubs   f2, f0, f27
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r22)
    lwz     r0, 0x21c(r22)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0xc4(sp)
    lfs     f0, 0xc4(sp)
    fsubs   f0, f0, f30
    fsubs   f0, f0, f27
    stfs    f0, 0x148(sp)
    stfs    f2, 0x14c(sp)
    stfs    f1, 0x150(sp)
    lfs     f1, 0x148(sp)
    lfs     f0, 0x14c(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x150(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f28
    cror    2, 0, 2
    bne-    branch_0x80322248
    stfs    f31, 0x150(sp)
    stfs    f31, 0x14c(sp)
    stfs    f31, 0x148(sp)
    b       branch_0x80322274

branch_0x80322248:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f18, f1
    lfs     f0, 0x148(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x148(sp)
    lfs     f0, 0x14c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x14c(sp)
    lfs     f0, 0x150(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x150(sp)
branch_0x80322274:
    mr      r3, r24
    lwz     r12, 0x58(r24)
    addi    r4, sp, 0x148
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
branch_0x8032228c:
    stfs    f31, 0x68(r28)
    mr      r3, r23
    stfs    f29, 0x6c(r28)
    stfs    f31, 0x70(r28)
    lfs     f0, 0x24(r27)
    stfs    f0, 0x78(r28)
    lwz     r12, 0x58(r23)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x7c(r28)
    mr      r3, r23
    lwz     r12, 0x58(r23)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    stfs    f1, 0x74(r28)
    mr      r3, r24
    lwz     r12, 0x58(r24)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x188(r22)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x803222f8
    li      r0, 0x1
    b       branch_0x803222fc

branch_0x803222f8:
    li      r0, 0x0
branch_0x803222fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80322310
    lwz     r0, 0x10(r28)
    ori     r0, r0, 0x20
    stw     r0, 0x10(r28)
branch_0x80322310:
    stfs    f21, 0x14(r28)
    stfs    f20, 0x18(r28)
    stfs    f19, 0x1c(r28)
    stfs    f24, 0x20(r28)
    stfs    f23, 0x24(r28)
    stfs    f22, 0x28(r28)
    lfs     f16, 0x8(r27)
    fcmpu   cr0, f31, f16
    beq-    branch_0x803223ec
    lwz     r0, 0x21c(r22)
    addi    r5, sp, 0x114
    mullw   r3, r0, r31
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r22)
    lwz     r4, 0x21c(r22)
    mullw   r3, r4, r31
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r22)
    extsh   r4, r4
    lwz     r0, 0x21c(r22)
    extsh   r3, r0
    bl      JPAGetXYRotateMtx__FssPA4_f
    lwz     r0, 0x21c(r22)
    addi    r4, sp, 0x108
    addi    r5, r4, 0x0
    mullw   r3, r0, r31
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r22)
    addi    r3, sp, 0x114
    lwz     r0, 0x21c(r22)
    srwi    r0, r0, 9
    stfs    f31, 0x108(sp)
    oris    r0, r0, 0x3f80
    stw     r0, 0xc0(sp)
    lfs     f0, 0xc0(sp)
    fsubs   f0, f0, f30
    stfs    f31, 0x10c(sp)
    fmuls   f0, f16, f0
    stfs    f0, 0x110(sp)
    bl      PSMTXMultVec
    lfs     f1, 0x20(r28)
    lfs     f0, 0x108(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x20(r28)
    lfs     f1, 0x24(r28)
    lfs     f0, 0x10c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r28)
    lfs     f1, 0x28(r28)
    lfs     f0, 0x110(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r28)
branch_0x803223ec:
    addi    r4, r23, 0x0
    addi    r5, r24, 0x0
    addi    r3, r22, 0x30
    bl      initChild__7JPADrawFP15JPABaseParticleP15JPABaseParticle
    lwz     r0, 0x54(r23)
    addi    r25, r25, 0x1
    stw     r0, 0x54(r28)
branch_0x80322408:
    cmpw    r25, r26
    blt+    branch_0x80321f8c
branch_0x80322410:
    lmw     r22, 0x1b0(sp)
    lwz     r0, 0x25c(sp)
    lfd     f31, 0x250(sp)
    lfd     f30, 0x248(sp)
    mtlr    r0
    lfd     f29, 0x240(sp)
    lfd     f28, 0x238(sp)
    lfd     f27, 0x230(sp)
    lfd     f26, 0x228(sp)
    lfd     f25, 0x220(sp)
    lfd     f24, 0x218(sp)
    lfd     f23, 0x210(sp)
    lfd     f22, 0x208(sp)
    lfd     f21, 0x200(sp)
    lfd     f20, 0x1f8(sp)
    lfd     f19, 0x1f0(sp)
    lfd     f18, 0x1e8(sp)
    lfd     f17, 0x1e0(sp)
    lfd     f16, 0x1d8(sp)
    addi    sp, sp, 0x258
    blr


.globl addBaseVelVec__11JPAParticleFRCQ29JGeometry8TVec3_f_
addBaseVelVec__11JPAParticleFRCQ29JGeometry8TVec3_f_: # 0x80322464
    lfs     f1, 0x5c(r3)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(r3)
    lfs     f1, 0x60(r3)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x60(r3)
    lfs     f1, 0x64(r3)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x64(r3)
    blr


.globl setBaseVelVec__11JPAParticleFRCQ29JGeometry8TVec3_f_
setBaseVelVec__11JPAParticleFRCQ29JGeometry8TVec3_f_: # 0x80322498
    lfs     f0, 0x0(r4)
    stfs    f0, 0x5c(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x60(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x64(r3)
    blr


.globl getEmitterGlobalTranslation__14JPABaseEmitterFRQ29JGeometry8TVec3_f_
getEmitterGlobalTranslation__14JPABaseEmitterFRQ29JGeometry8TVec3_f_: # 0x803224b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r4
    stw     r30, 0x78(sp)
    mr      r30, r3
    lfs     f1, 0x154(r3)
    lfs     f2, 0x158(r3)
    addi    r3, sp, 0x44
    lfs     f3, 0x15c(r30)
    bl      PSMTXScale
    addi    r4, sp, 0x44
    addi    r3, r30, 0x124
    addi    r5, r4, 0x0
    bl      PSMTXConcat
    lfs     f0, 0x160(r30)
    stfs    f0, 0x50(sp)
    lfs     f0, 0x164(r30)
    stfs    f0, 0x60(sp)
    lfs     f0, 0x168(r30)
    stfs    f0, 0x70(sp)
    lfs     f5, 0x1a0(r30)
    lfs     f0, 0x48(sp)
    lfs     f2, 0x58(sp)
    fmuls   f0, f5, f0
    lfs     f6, 0x19c(r30)
    lfs     f1, 0x44(sp)
    fmuls   f2, f5, f2
    lfs     f4, 0x68(sp)
    lfs     f3, 0x54(sp)
    fmadds  f0, f6, f1, f0
    fmuls   f4, f5, f4
    lfs     f5, 0x64(sp)
    fmadds  f2, f6, f3, f2
    lfs     f7, 0x1a4(r30)
    fmadds  f4, f6, f5, f4
    lfs     f1, 0x4c(sp)
    lfs     f3, 0x5c(sp)
    fmadds  f0, f7, f1, f0
    lfs     f1, 0x50(sp)
    fmadds  f2, f7, f3, f2
    lfs     f3, 0x60(sp)
    lfs     f5, 0x6c(sp)
    fadds   f0, f1, f0
    lfs     f6, 0x70(sp)
    fmadds  f1, f7, f5, f4
    fadds   f2, f3, f2
    stfs    f0, 0x0(r31)
    fadds   f0, f6, f1
    stfs    f2, 0x4(r31)
    stfs    f0, 0x8(r31)
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl calcEmitterGlobalParams__14JPABaseEmitterFv
calcEmitterGlobalParams__14JPABaseEmitterFv: # 0x8032259c
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stmw    r26, 0x100(sp)
    addi    r30, r3, 0x0
    subi    r31, r4, 0x1ec8
    addi    r0, r30, 0x20
    stw     r30, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r3, 0x118(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x803225ec
    lbz     r0, 0x48(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803225ec
    li      r0, 0x1
    stb     r0, 0x17f(r31)
    b       branch_0x803225f4

branch_0x803225ec:
    li      r0, 0x0
    stb     r0, 0x17f(r31)
branch_0x803225f4:
    lha     r3, 0x1a8(r30)
    addi    r29, r31, 0xcc
    lha     r4, 0x1aa(r30)
    mr      r6, r29
    lha     r0, 0x1ac(r30)
    mulli   r3, r3, 0xb6
    mulli   r4, r4, 0xb6
    mulli   r5, r0, 0xb6
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    addi    r3, r29, 0x0
    addi    r4, sp, 0xd0
    bl      PSMTXCopy
    lfs     f0, 0x190(r30)
    addi    r3, sp, 0xa0
    stfs    f0, 0x30(r31)
    lfs     f0, 0x194(r30)
    stfs    f0, 0x34(r31)
    lfs     f0, 0x198(r30)
    stfs    f0, 0x38(r31)
    lfs     f1, 0x190(r30)
    lfs     f2, 0x194(r30)
    lfs     f3, 0x198(r30)
    bl      PSMTXScale
    addi    r28, r31, 0xfc
    addi    r3, r29, 0x0
    addi    r5, r28, 0x0
    addi    r4, sp, 0xa0
    bl      PSMTXConcat
    lfs     f0, 0x19c(r30)
    addi    r26, r31, 0x9c
    addi    r3, r26, 0x0
    stfs    f0, 0xdc(sp)
    lfs     f0, 0x1a0(r30)
    stfs    f0, 0xec(sp)
    lfs     f0, 0x1a4(r30)
    stfs    f0, 0xfc(sp)
    lfs     f0, 0x154(r30)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x158(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x15c(r30)
    stfs    f0, 0x20(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x154(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x158(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x15c(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0x38(r31)
    lfs     f0, 0x18(r31)
    lfs     f1, 0x814(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0xc(r31)
    lfs     f0, 0x1c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r31)
    lfs     f0, 0x20(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x14(r31)
    lfs     f1, 0x154(r30)
    lfs     f2, 0x158(r30)
    lfs     f3, 0x15c(r30)
    bl      PSMTXScale
    addi    r27, r31, 0x6c
    addi    r3, r30, 0x124
    addi    r4, r27, 0x0
    bl      PSMTXCopy
    addi    r4, r29, 0x0
    addi    r3, r27, 0x0
    addi    r5, r29, 0x0
    bl      PSMTXConcat
    addi    r4, r28, 0x0
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    bl      PSMTXConcat
    addi    r4, r26, 0x0
    addi    r3, r27, 0x0
    addi    r5, r26, 0x0
    bl      PSMTXConcat
    lfs     f0, 0x160(r30)
    addi    r4, sp, 0xd0
    addi    r3, r26, 0x0
    stfs    f0, 0xa8(r31)
    addi    r5, r4, 0x0
    lfs     f0, 0x164(r30)
    stfs    f0, 0xb8(r31)
    lfs     f0, 0x168(r30)
    stfs    f0, 0xc8(r31)
    bl      PSMTXConcat
    lfs     f2, 0xfc(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0x24(r31)
    stfs    f1, 0x28(r31)
    stfs    f2, 0x2c(r31)
    lfs     f2, 0xec(r31)
    lfs     f1, 0xdc(r31)
    lfs     f0, 0xcc(r31)
    stfs    f0, 0x48(r31)
    stfs    f1, 0x4c(r31)
    stfs    f2, 0x50(r31)
    lfs     f2, 0xf0(r31)
    lfs     f1, 0xe0(r31)
    lfs     f0, 0xd0(r31)
    stfs    f0, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f2, 0x5c(r31)
    lfs     f2, 0xf4(r31)
    lfs     f1, 0xe4(r31)
    lfs     f0, 0xd4(r31)
    stfs    f0, 0x60(r31)
    stfs    f1, 0x64(r31)
    stfs    f2, 0x68(r31)
    lfs     f4, 0x810(rtoc)
    stfs    f4, 0x94(sp)
    stfs    f4, 0x98(sp)
    lfs     f0, 0x814(rtoc)
    stfs    f0, 0x9c(sp)
    lfs     f1, 0x210(r30)
    lfs     f3, 0x218(r30)
    lfs     f0, 0x214(r30)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, 0x820(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80322820
    stfs    f4, 0x90(sp)
    stfs    f4, 0x8c(sp)
    stfs    f4, 0x88(sp)
    b       branch_0x80322850

branch_0x80322820:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x814(rtoc)
    lfs     f0, 0x210(r30)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f0, 0x214(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x218(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
branch_0x80322850:
    lfs     f0, 0x88(sp)
    li      r3, 0x0
    addi    r0, r3, 0x0
    stfs    f0, 0x3c(r31)
    lfs     f2, 0x8c(sp)
    stfs    f2, 0x40(r31)
    lfs     f3, 0x90(sp)
    stfs    f3, 0x44(r31)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x94(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80322890
    lfs     f0, 0x98(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x80322890
    li      r0, 0x1
branch_0x80322890:
    clrlwi. r0, r0, 24
    beq-    branch_0x803228a8
    lfs     f0, 0x9c(sp)
    fcmpu   cr0, f3, f0
    bne-    branch_0x803228a8
    li      r3, 0x1
branch_0x803228a8:
    clrlwi. r0, r3, 24
    beq-    branch_0x803228bc
    addi    r3, r31, 0x12c
    bl      PSMTXIdentity
    b       branch_0x803228fc

branch_0x803228bc:
    lwz     r3, 0x94(sp)
    addi    r5, sp, 0x70
    lwz     r0, 0x88(sp)
    addi    r4, sp, 0x7c
    stw     r3, 0x70(sp)
    lwz     r6, 0x98(sp)
    addi    r3, r31, 0x12c
    stw     r0, 0x7c(sp)
    lwz     r0, 0x8c(sp)
    stw     r6, 0x74(sp)
    lwz     r6, 0x9c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x90(sp)
    stw     r6, 0x78(sp)
    stw     r0, 0x84(sp)
    bl      JPAVecToRotaMtx__FPA4_fQ29JGeometry8TVec3_f_Q29JGeometry8TVec3_f_
branch_0x803228fc:
    lmw     r26, 0x100(sp)
    lwz     r0, 0x11c(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl loadBaseEmitterBlock__14JPABaseEmitterFP12JPADataBlock
loadBaseEmitterBlock__14JPABaseEmitterFP12JPADataBlock: # 0x80322910
    mflr    r0
    lis     r7, 0x803e
    stw     r0, 0x4(sp)
    lis     r9, 0x803b
    subi    r0, r9, 0xf0c
    stwu    sp, -0x58(sp)
    lis     r8, 0x803e
    addi    r7, r7, 0x160
    stw     r31, 0x54(sp)
    addi    r31, sp, 0x24
    lis     r6, 0x803e
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r4)
    stw     r31, 0x20(sp)
    lwz     r10, 0x20(sp)
    stw     r0, 0x0(r10)
    li      r0, 0x0
    addi    r9, r10, 0x0
    stb     r0, 0x4(r10)
    addi    r0, r8, 0x184
    addi    r3, r10, 0x0
    stw     r0, 0x0(r10)
    addi    r0, r6, 0x1c8
    stw     r7, 0x0(r10)
    stw     r0, 0x0(r10)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    lwz     r12, 0x0(r31)
    mr      r3, r31
    li      r4, 0xc
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x190
    li      r5, 0xc
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x19c
    li      r5, 0xc
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1a8
    li      r5, 0x6
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1ae
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1af
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1f2
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1b0
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1b4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0x4a(sp)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1ec
    stw     r0, 0x1e8(r30)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1f0
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1f4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1f8(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1ee
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1e0(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1d8(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1dc(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1c4(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1cc(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1d0(r30)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1d4(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1fc
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x200
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x204
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x208
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c8
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x44
    li      r5, 0x6
    bl      read__14JSUInputStreamFPvl
    addi    r3, sp, 0x38
    addi    r4, sp, 0x44
    bl      JPAConvertFixVecToFloatVec__FRQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_s_
    lfs     f1, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x40(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x820(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80322c30
    lfs     f0, 0x810(rtoc)
    stfs    f0, 0x218(r30)
    stfs    f0, 0x214(r30)
    stfs    f0, 0x210(r30)
    b       branch_0x80322c60

branch_0x80322c30:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x814(rtoc)
    lfs     f0, 0x38(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x210(r30)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x214(r30)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x218(r30)
branch_0x80322c60:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x4a
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r3, 0x4a(sp)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x1e4(r30)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x188
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lis     r3, 0x803e
    addi    r0, r3, 0x1c8
    lis     r3, 0x803e
    stw     r0, 0x24(sp)
    addi    r0, r3, 0x160
    stw     r0, 0x24(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl drawEmitterCallBack__14JPABaseEmitterFv
drawEmitterCallBack__14JPABaseEmitterFv: # 0x80322cd8
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x110(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80322d04
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80322d04:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createParticle__14JPABaseEmitterFv
createParticle__14JPABaseEmitterFv: # 0x80322d14
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x548(sp)
    stfd    f31, 0x540(sp)
    stfd    f30, 0x538(sp)
    stfd    f29, 0x530(sp)
    stfd    f28, 0x528(sp)
    stfd    f27, 0x520(sp)
    stfd    f26, 0x518(sp)
    stfd    f25, 0x510(sp)
    stfd    f24, 0x508(sp)
    stfd    f23, 0x500(sp)
    stfd    f22, 0x4f8(sp)
    stfd    f21, 0x4f0(sp)
    stfd    f20, 0x4e8(sp)
    stfd    f19, 0x4e0(sp)
    stfd    f18, 0x4d8(sp)
    stfd    f17, 0x4d0(sp)
    stfd    f16, 0x4c8(sp)
    stfd    f15, 0x4c0(sp)
    stmw    r24, 0x4a0(sp)
    mr      r31, r3
    subi    r30, r4, 0x1ec8
    lwz     r3, 0x10c(r3)
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80323f60
    lwz     r4, 0x0(r3)
    lwz     r29, 0x0(r4)
    mr      r4, r29
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x10(r29)
    addi    r28, r29, 0x0
    addi    r4, r29, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x10(r29)
    addi    r3, r31, 0xf4
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x188(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80322dc4
    li      r0, 0x1
    b       branch_0x80322dc8

branch_0x80322dc4:
    li      r0, 0x0
branch_0x80322dc8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80322ddc
    lwz     r0, 0x10(r29)
    ori     r0, r0, 0x20
    stw     r0, 0x10(r29)
branch_0x80322ddc:
    lfs     f0, 0x24(r30)
    stfs    f0, 0x14(r29)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x18(r29)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x1c(r29)
    lwz     r0, 0x188(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80322e08
    li      r0, 0x1
    b       branch_0x80322e0c

branch_0x80322e08:
    li      r0, 0x0
branch_0x80322e0c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80322f0c
    lis     r3, 0x8040
    lbz     r0, 0x1ae(r31)
    subi    r3, r3, 0x1ec8
    lwz     r27, 0x168(r30)
    lwz     r3, 0x164(r3)
    cmplwi  r0, 0x1
    extsh   r0, r3
    mr      r26, r0
    bne-    branch_0x80322f0c
    lwz     r3, 0x16c(r30)
    lha     r24, 0x174(r30)
    lha     r25, 0x176(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x16c(r30)
    lha     r3, 0x176(r30)
    lha     r0, 0x17a(r30)
    add     r0, r3, r0
    sth     r0, 0x176(r30)
    lwz     r3, 0x16c(r30)
    lwz     r0, 0x170(r30)
    cmpw    r3, r0
    bne-    branch_0x80322f0c
    li      r0, 0x0
    stw     r0, 0x16c(r30)
    lbz     r0, 0x17c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80322ef0
    lwz     r3, 0x170(r30)
    subi    r0, r3, 0x4
    stw     r0, 0x170(r30)
    lwz     r3, 0x170(r30)
    cmpwi   r3, 0x0
    bne-    branch_0x80322ea4
    li      r0, 0x1
    stw     r0, 0x170(r30)
    b       branch_0x80322ec8

branch_0x80322ea4:
    lfs     f1, 0x834(rtoc)
    lfs     f0, 0x1f4(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x498(sp)
    lwz     r0, 0x49c(sp)
    divw    r0, r0, r3
    extsh   r0, r0
    sth     r0, 0x17a(r30)
branch_0x80322ec8:
    lha     r3, 0x174(r30)
    li      r0, 0x0
    neg     r3, r3
    sth     r3, 0x174(r30)
    lha     r4, 0x174(r30)
    lha     r3, 0x178(r30)
    add     r3, r4, r3
    sth     r3, 0x174(r30)
    stb     r0, 0x17c(r30)
    b       branch_0x80322f04

branch_0x80322ef0:
    lha     r3, 0x174(r30)
    li      r0, 0x1
    neg     r3, r3
    sth     r3, 0x174(r30)
    stb     r0, 0x17c(r30)
branch_0x80322f04:
    li      r0, 0x0
    sth     r0, 0x176(r30)
branch_0x80322f0c:
    lhz     r3, 0x1f0(r31)
    lis     r0, 0x4330
    lfd     f2, 0x840(rtoc)
    lfs     f0, 0x810(rtoc)
    stw     r3, 0x49c(sp)
    stfs    f0, 0x70(r29)
    stfs    f0, 0x6c(r29)
    stw     r0, 0x498(sp)
    stfs    f0, 0x68(r29)
    lfd     f1, 0x498(sp)
    lbz     r5, 0x1ae(r31)
    fsubs   f15, f1, f2
    cmplwi  r5, 0x6
    bgt-    branch_0x803236e0
    lis     r3, 0x803e
    addi    r4, r3, 0x3cb0
    slwi    r3, r5, 2
    lwzx    r3, r4, r3
    mtctr   r3
    bctr       
    stfs    f0, 0x470(sp)
    stfs    f0, 0x46c(sp)
    stfs    f0, 0x468(sp)
    b       branch_0x803236e0


.incbin "./baserom/code/Text_0x80005600.bin", 0x31d96c, 0x803236e0 - 0x80322f6c
branch_0x803236e0:
    lbz     r0, 0x1ae(r31)
    cmplwi  r0, 0x3
    beq-    branch_0x803236f8
    lfs     f31, 0x468(sp)
    lfs     f30, 0x810(rtoc)
    lfs     f29, 0x470(sp)
branch_0x803236f8:
    lfs     f1, 0x468(sp)
    addi    r5, r29, 0x20
    lfs     f0, 0x30(r30)
    addi    r3, r30, 0xfc
    lfs     f3, 0x46c(sp)
    fmuls   f21, f1, f0
    lfs     f2, 0x34(r30)
    lfs     f1, 0x470(sp)
    addi    r4, sp, 0x468
    lfs     f0, 0x38(r30)
    fmuls   f20, f3, f2
    fmuls   f19, f1, f0
    bl      PSMTXMultVec
    lis     r3, 0x19
    lwz     r4, 0x21c(r31)
    addi    r0, r3, 0x660d
    mullw   r3, r4, r0
    addis   r3, r3, 0x3c6f
    subi    r3, r3, 0xca1
    stw     r3, 0x21c(r31)
    lwz     r3, 0x21c(r31)
    lfs     f26, 0x810(rtoc)
    srwi    r3, r3, 9
    lfs     f2, 0x818(rtoc)
    oris    r3, r3, 0x3f80
    lfs     f0, 0x814(rtoc)
    stw     r3, 0x2bc(sp)
    fmr     f25, f26
    fmr     f28, f26
    lfs     f3, 0x1c4(r31)
    fmr     f24, f26
    lfs     f1, 0x2bc(sp)
    stfs    f26, 0x398(sp)
    fsubs   f1, f1, f0
    stfs    f26, 0x39c(sp)
    fmr     f23, f26
    fmr     f22, f26
    stfs    f26, 0x3a0(sp)
    fmsubs  f1, f2, f1, f0
    lfs     f17, 0x1fc(r31)
    fmr     f18, f26
    fmr     f15, f26
    fcmpu   cr0, f26, f17
    fmr     f16, f26
    fmadds  f27, f3, f1, f0
    beq-    branch_0x803238d0
    lbz     r3, 0x1ae(r31)
    cmplwi  r3, 0x4
    bne-    branch_0x80323894
    lwz     r3, 0x21c(r31)
    mullw   r3, r3, r0
    addis   r3, r3, 0x3c6f
    subi    r3, r3, 0xca1
    stw     r3, 0x21c(r31)
    lwz     r3, 0x21c(r31)
    lfs     f4, 0x81c(rtoc)
    srwi    r3, r3, 9
    oris    r3, r3, 0x3f80
    stw     r3, 0x294(sp)
    lwz     r3, 0x21c(r31)
    lfs     f1, 0x294(sp)
    mullw   r3, r3, r0
    fsubs   f1, f1, f0
    fsubs   f19, f1, f4
    addis   r3, r3, 0x3c6f
    subi    r3, r3, 0xca1
    stw     r3, 0x21c(r31)
    lwz     r3, 0x21c(r31)
    srwi    r3, r3, 9
    oris    r3, r3, 0x3f80
    stw     r3, 0x290(sp)
    lwz     r3, 0x21c(r31)
    lfs     f1, 0x290(sp)
    mullw   r3, r3, r0
    fsubs   f1, f1, f0
    fsubs   f20, f1, f4
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    fmuls   f1, f20, f20
    lwz     r0, 0x21c(r31)
    lfs     f2, 0x820(rtoc)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x28c(sp)
    lfs     f3, 0x28c(sp)
    lfs     f17, 0x1fc(r31)
    fsubs   f0, f3, f0
    fsubs   f21, f0, f4
    fmadds  f0, f21, f21, f1
    fmadds  f1, f19, f19, f0
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x8032387c
    fmr     f25, f28
    fmr     f26, f25
    b       branch_0x803238d0

branch_0x8032387c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f17, f1
    fmuls   f26, f21, f0
    fmuls   f25, f20, f0
    fmuls   f28, f19, f0
    b       branch_0x803238d0

branch_0x80323894:
    fmuls   f1, f20, f20
    lfs     f0, 0x820(rtoc)
    fmadds  f1, f21, f21, f1
    fmadds  f1, f19, f19, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803238bc
    fmr     f25, f28
    fmr     f26, f25
    b       branch_0x803238d0

branch_0x803238bc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f17, f1
    fmuls   f26, f21, f0
    fmuls   f25, f20, f0
    fmuls   f28, f19, f0
branch_0x803238d0:
    lfs     f2, 0x810(rtoc)
    lfs     f4, 0x200(r31)
    fcmpu   cr0, f2, f4
    beq-    branch_0x80323a64
    lbz     r0, 0x1ae(r31)
    cmplwi  r0, 0x4
    bne-    branch_0x803239f8
    lwz     r0, 0x188(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80323900
    li      r0, 0x1
    b       branch_0x80323904

branch_0x80323900:
    li      r0, 0x0
branch_0x80323904:
    clrlwi. r0, r0, 24
    beq-    branch_0x8032393c
    slwi    r3, r27, 16
    lwz     r0, -0x5eac(r13)
    divw    r4, r3, r26
    lwz     r5, -0x5ea4(r13)
    lwz     r3, -0x5ea8(r13)
    lfs     f17, 0x810(rtoc)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f19, r5, r0
    lfsx    f21, r3, r0
    b       branch_0x803239b0

branch_0x8032393c:
    lis     r3, 0x19
    lwz     r0, 0x21c(r31)
    addi    r4, r3, 0x660d
    mullw   r3, r0, r4
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f2, 0x814(rtoc)
    srwi    r0, r0, 9
    lfs     f1, 0x81c(rtoc)
    oris    r0, r0, 0x3f80
    stw     r0, 0x288(sp)
    lwz     r0, 0x21c(r31)
    lfs     f0, 0x288(sp)
    mullw   r3, r0, r4
    fsubs   f0, f0, f2
    fsubs   f19, f0, f1
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f17, 0x810(rtoc)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x284(sp)
    lfs     f0, 0x284(sp)
    fsubs   f0, f0, f2
    fsubs   f21, f0, f1
branch_0x803239b0:
    fmuls   f1, f17, f17
    lfs     f0, 0x820(rtoc)
    lfs     f20, 0x200(r31)
    fmadds  f1, f21, f21, f1
    fmadds  f1, f19, f19, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x803239e0
    lfs     f22, 0x810(rtoc)
    fmr     f23, f22
    fmr     f24, f23
    b       branch_0x80323a64

branch_0x803239e0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f20, f1
    fmuls   f24, f21, f0
    fmuls   f23, f17, f0
    fmuls   f22, f19, f0
    b       branch_0x80323a64

branch_0x803239f8:
    fmuls   f1, f30, f30
    lfs     f0, 0x820(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f5, f29, f29, f1
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x80323a24
    fmr     f22, f2
    fmr     f23, f22
    fmr     f24, f23
    b       branch_0x80323a64

branch_0x80323a24:
    fcmpo   cr0, f5, f2
    cror    2, 0, 2
    bne-    branch_0x80323a34
    b       branch_0x80323a54

branch_0x80323a34:
    frsqrte f3, f5
    lfs     f2, 0x81c(rtoc)
    lfs     f0, 0x830(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f5, f1, f0
    fmuls   f5, f2, f0
branch_0x80323a54:
    fmuls   f0, f4, f5
    fmuls   f24, f31, f0
    fmuls   f23, f30, f0
    fmuls   f22, f29, f0
branch_0x80323a64:
    lfs     f1, 0x810(rtoc)
    lfs     f0, 0x204(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80323b24
    lis     r3, 0x19
    lwz     r0, 0x21c(r31)
    addi    r4, r3, 0x660d
    mullw   r3, r0, r4
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f2, 0x814(rtoc)
    srwi    r0, r0, 9
    lfs     f1, 0x81c(rtoc)
    oris    r0, r0, 0x3f80
    stw     r0, 0x280(sp)
    lwz     r0, 0x21c(r31)
    lfs     f0, 0x280(sp)
    mullw   r3, r0, r4
    fsubs   f0, f0, f2
    fsubs   f4, f0, f1
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x27c(sp)
    lwz     r0, 0x21c(r31)
    lfs     f0, 0x27c(sp)
    mullw   r3, r0, r4
    fsubs   f0, f0, f2
    fsubs   f5, f0, f1
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x278(sp)
    lfs     f0, 0x278(sp)
    lfs     f3, 0x204(r31)
    fsubs   f0, f0, f2
    fmuls   f15, f5, f3
    fmuls   f16, f4, f3
    fsubs   f18, f0, f1
    fmuls   f18, f18, f3
branch_0x80323b24:
    lfs     f1, 0x810(rtoc)
    lfs     f0, 0x208(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80323c30
    lfs     f0, 0x1e4(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80323bf0
    stfs    f1, 0x398(sp)
    lis     r3, 0x19
    addi    r4, r3, 0x660d
    stfs    f1, 0x39c(sp)
    addi    r5, sp, 0x368
    lfs     f4, 0x814(rtoc)
    stfs    f4, 0x3a0(sp)
    lwz     r0, 0x21c(r31)
    mullw   r3, r0, r4
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f1, 0x818(rtoc)
    srwi    r0, r0, 9
    lfs     f2, 0x838(rtoc)
    oris    r0, r0, 0x3f80
    stw     r0, 0x2b8(sp)
    lfs     f0, 0x2b8(sp)
    lwz     r0, 0x21c(r31)
    fsubs   f0, f0, f4
    lfs     f3, 0x1e4(r31)
    mullw   r3, r0, r4
    fmsubs  f0, f1, f0, f4
    fmuls   f0, f2, f0
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    fmuls   f0, f3, f0
    lwz     r0, 0x21c(r31)
    fctiwz  f0, f0
    extsh   r4, r0
    stfd    f0, 0x490(sp)
    lwz     r3, 0x494(sp)
    bl      JPAGetYZRotateMtx__FssPA4_f
    addi    r4, sp, 0x368
    addi    r3, r30, 0x12c
    addi    r5, r4, 0x0
    bl      PSMTXConcat
    addi    r4, sp, 0x398
    addi    r5, r4, 0x0
    addi    r3, sp, 0x368
    bl      PSMTXMultVec
    b       branch_0x80323c08

branch_0x80323bf0:
    lfs     f0, 0x3c(r30)
    stfs    f0, 0x398(sp)
    lfs     f0, 0x40(r30)
    stfs    f0, 0x39c(sp)
    lfs     f0, 0x44(r30)
    stfs    f0, 0x3a0(sp)
branch_0x80323c08:
    lfs     f1, 0x208(r31)
    lfs     f0, 0x398(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x398(sp)
    lfs     f0, 0x39c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x39c(sp)
    lfs     f0, 0x3a0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3a0(sp)
branch_0x80323c30:
    fadds   f2, f26, f24
    lfs     f3, 0x398(sp)
    fadds   f1, f25, f23
    fadds   f0, f28, f22
    fadds   f2, f18, f2
    fadds   f1, f15, f1
    fadds   f0, f16, f0
    fadds   f2, f3, f2
    stfs    f2, 0x35c(sp)
    lfs     f2, 0x39c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x360(sp)
    lfs     f1, 0x3a0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x364(sp)
    lfs     f1, 0x810(rtoc)
    lfs     f0, 0x1c4(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80323ca0
    lfs     f0, 0x35c(sp)
    fmuls   f0, f0, f27
    stfs    f0, 0x35c(sp)
    lfs     f0, 0x360(sp)
    fmuls   f0, f0, f27
    stfs    f0, 0x360(sp)
    lfs     f0, 0x364(sp)
    fmuls   f0, f0, f27
    stfs    f0, 0x364(sp)
branch_0x80323ca0:
    lwz     r0, 0x188(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80323cb4
    li      r0, 0x1
    b       branch_0x80323cb8

branch_0x80323cb4:
    li      r0, 0x0
branch_0x80323cb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80323cf0
    lfs     f1, 0x35c(sp)
    lfs     f0, 0x190(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x35c(sp)
    lfs     f1, 0x360(sp)
    lfs     f0, 0x194(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x360(sp)
    lfs     f1, 0x364(sp)
    lfs     f0, 0x198(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x364(sp)
branch_0x80323cf0:
    addi    r4, sp, 0x35c
    addi    r3, r30, 0xcc
    addi    r5, r4, 0x0
    bl      PSMTXMultVec
    mr      r3, r28
    lwz     r12, 0x58(r28)
    addi    r4, sp, 0x35c
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x35c(sp)
    lfs     f0, 0x360(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x364(sp)
    fmuls   f1, f0, f0
    lfs     f0, 0x820(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80323d5c
    lfs     f0, 0x810(rtoc)
    stfs    f0, 0x358(sp)
    stfs    f0, 0x354(sp)
    stfs    f0, 0x350(sp)
    b       branch_0x80323d8c

branch_0x80323d5c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x814(rtoc)
    lfs     f0, 0x35c(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x350(sp)
    lfs     f0, 0x360(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x354(sp)
    lfs     f0, 0x364(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x358(sp)
branch_0x80323d8c:
    lwz     r0, 0x350(sp)
    lwz     r3, 0x354(sp)
    stw     r0, 0x340(sp)
    lwz     r0, 0x358(sp)
    stw     r3, 0x344(sp)
    stw     r0, 0x348(sp)
    lfs     f0, 0x340(sp)
    stfs    f0, 0x68(r29)
    lfs     f0, 0x344(sp)
    stfs    f0, 0x6c(r29)
    lfs     f0, 0x348(sp)
    stfs    f0, 0x70(r29)
    lfs     f1, 0x810(rtoc)
    lfs     f0, 0x1c8(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80323e1c
    lis     r3, 0x19
    lwz     r4, 0x21c(r31)
    addi    r0, r3, 0x660d
    mullw   r3, r4, r0
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f1, 0x814(rtoc)
    srwi    r0, r0, 9
    lfs     f2, 0x818(rtoc)
    oris    r0, r0, 0x3f80
    stw     r0, 0x2b0(sp)
    lfs     f0, 0x2b0(sp)
    lfs     f3, 0x1cc(r31)
    fsubs   f0, f0, f1
    lfs     f4, 0x1c8(r31)
    fmsubs  f0, f2, f0, f1
    fmadds  f0, f3, f0, f1
    fmuls   f1, f4, f0
branch_0x80323e1c:
    stfs    f1, 0x78(r29)
    lis     r3, 0x19
    addi    r0, r3, 0x660d
    lwz     r3, 0x21c(r31)
    mullw   r3, r3, r0
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f3, 0x814(rtoc)
    srwi    r0, r0, 9
    lfs     f1, 0x81c(rtoc)
    oris    r0, r0, 0x3f80
    stw     r0, 0x2ac(sp)
    lfs     f0, 0x2ac(sp)
    lfs     f4, 0x1d4(r31)
    fsubs   f2, f0, f3
    lfs     f0, 0x1d0(r31)
    fsubs   f1, f2, f1
    fmadds  f0, f4, f1, f0
    fcmpo   cr0, f0, f3
    ble-    branch_0x80323e78
    fmr     f0, f3
branch_0x80323e78:
    stfs    f0, 0x7c(r29)
    lis     r3, 0x19
    addi    r24, r3, 0x660d
    lwz     r0, 0x21c(r31)
    addi    r3, r28, 0x0
    mullw   r4, r0, r24
    addis   r4, r4, 0x3c6f
    subi    r0, r4, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f1, 0x814(rtoc)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x2a8(sp)
    lfs     f0, 0x2a8(sp)
    lfs     f2, 0x1dc(r31)
    fsubs   f0, f0, f1
    lfs     f3, 0x1d8(r31)
    fnmsubs  f0, f2, f0, f1
    fmuls   f0, f3, f0
    stfs    f0, 0x74(r29)
    bl      initGlobalPosition__15JPABaseParticleFv
    lfs     f2, 0x810(rtoc)
    lis     r0, 0x4330
    stfs    f2, 0x48(r29)
    lha     r3, 0x1ee(r31)
    lfs     f0, 0x1e0(r31)
    xoris   r3, r3, 0x8000
    lfd     f1, 0x828(rtoc)
    stw     r3, 0x494(sp)
    fcmpu   cr0, f2, f0
    stw     r0, 0x490(sp)
    lfd     f0, 0x490(sp)
    fsubs   f3, f0, f1
    beq-    branch_0x80323f40
    lwz     r0, 0x21c(r31)
    mullw   r3, r0, r24
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r31)
    lwz     r0, 0x21c(r31)
    lfs     f1, 0x814(rtoc)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x2a4(sp)
    lfs     f0, 0x2a4(sp)
    lfs     f2, 0x1e0(r31)
    fsubs   f0, f0, f1
    fnmsubs  f0, f2, f0, f1
    fmuls   f3, f3, f0
branch_0x80323f40:
    stfs    f3, 0x4c(r29)
    addi    r4, r28, 0x0
    addi    r3, r31, 0x30
    lwz     r0, 0x114(r31)
    stw     r0, 0x50(r29)
    bl      initParticle__7JPADrawFP15JPABaseParticle
    mr      r3, r29
    b       branch_0x80323f64

branch_0x80323f60:
    li      r3, 0x0
branch_0x80323f64:
    lmw     r24, 0x4a0(sp)
    lwz     r0, 0x54c(sp)
    lfd     f31, 0x540(sp)
    lfd     f30, 0x538(sp)
    mtlr    r0
    lfd     f29, 0x530(sp)
    lfd     f28, 0x528(sp)
    lfd     f27, 0x520(sp)
    lfd     f26, 0x518(sp)
    lfd     f25, 0x510(sp)
    lfd     f24, 0x508(sp)
    lfd     f23, 0x500(sp)
    lfd     f22, 0x4f8(sp)
    lfd     f21, 0x4f0(sp)
    lfd     f20, 0x4e8(sp)
    lfd     f19, 0x4e0(sp)
    lfd     f18, 0x4d8(sp)
    lfd     f17, 0x4d0(sp)
    lfd     f16, 0x4c8(sp)
    lfd     f15, 0x4c0(sp)
    addi    sp, sp, 0x548
    blr


.globl calcCurrentRateTimerStep__14JPABaseEmitterFv
calcCurrentRateTimerStep__14JPABaseEmitterFv: # 0x80323fbc
    stwu    sp, -0x18(sp)
    lbz     r0, 0x1af(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80323fd8
    lfs     f0, 0x814(rtoc)
    stfs    f0, 0x1c0(r3)
    b       branch_0x80324008

branch_0x80323fd8:
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfd     f1, 0x840(rtoc)
    stw     r0, 0x10(sp)
    lfs     f2, 0x814(rtoc)
    lfd     f0, 0x10(sp)
    lfs     f3, 0x848(rtoc)
    fsubs   f0, f0, f1
    fadds   f0, f2, f0
    fdivs   f0, f2, f0
    fadds   f0, f3, f0
    stfs    f0, 0x1c0(r3)
branch_0x80324008:
    addi    sp, sp, 0x18
    blr


.globl calcCreateParticle__14JPABaseEmitterFv
calcCreateParticle__14JPABaseEmitterFv: # 0x80324010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    li      r30, 0x0
    stw     r29, 0x4c(sp)
    mr      r29, r3
    stw     r28, 0x48(sp)
    lwz     r0, 0x11c(r3)
    lis     r3, 0x8040
    subi    r31, r3, 0x1ec8
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80324050
    li      r0, 0x1
    b       branch_0x80324054

branch_0x80324050:
    li      r0, 0x0
branch_0x80324054:
    clrlwi. r0, r0, 24
    beq-    branch_0x80324290
    lwz     r0, 0x188(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80324070
    li      r0, 0x1
    b       branch_0x80324074

branch_0x80324070:
    li      r0, 0x0
branch_0x80324074:
    clrlwi. r0, r0, 24
    bne-    branch_0x80324174
    lfs     f1, 0x810(rtoc)
    lfs     f0, 0x1b4(r29)
    lfs     f4, 0x1b0(r29)
    fcmpu   cr0, f1, f0
    beq-    branch_0x803240dc
    lis     r3, 0x19
    lwz     r4, 0x21c(r29)
    addi    r0, r3, 0x660d
    mullw   r3, r4, r0
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, 0x21c(r29)
    lwz     r0, 0x21c(r29)
    lfs     f1, 0x814(rtoc)
    srwi    r0, r0, 9
    lfs     f2, 0x818(rtoc)
    oris    r0, r0, 0x3f80
    stw     r0, 0x24(sp)
    lfs     f0, 0x24(sp)
    lfs     f3, 0x1b4(r29)
    fsubs   f0, f0, f1
    fmuls   f3, f4, f3
    fmsubs  f0, f2, f0, f1
    fmadds  f4, f3, f0, f4
branch_0x803240dc:
    lfs     f0, 0x1b8(r29)
    fadds   f0, f0, f4
    stfs    f0, 0x1b8(r29)
    lfs     f2, 0x1b8(r29)
    lfs     f0, 0x814(rtoc)
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80324138
    fctiwz  f0, f2
    lis     r0, 0x4330
    lfd     f1, 0x828(rtoc)
    stfd    f0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stfd    f0, 0x40(sp)
    xoris   r3, r3, 0x8000
    stw     r3, 0x34(sp)
    lwz     r30, 0x44(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fsubs   f0, f2, f0
    stfs    f0, 0x1b8(r29)
    b       branch_0x8032422c

branch_0x80324138:
    lfs     f0, 0x810(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x8032416c
    lwz     r0, 0x11c(r29)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80324158
    li      r0, 0x1
    b       branch_0x8032415c

branch_0x80324158:
    li      r0, 0x0
branch_0x8032415c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8032416c
    li      r30, 0x1
    b       branch_0x8032422c

branch_0x8032416c:
    li      r30, 0x0
    b       branch_0x8032422c

branch_0x80324174:
    lbz     r3, 0x1ae(r29)
    cmplwi  r3, 0x1
    bne-    branch_0x80324218
    li      r4, 0x0
    stw     r4, 0x16c(r31)
    li      r3, 0x2
    li      r0, 0x1
    sth     r4, 0x174(r31)
    li      r30, 0x2
    li      r5, 0x0
    sth     r4, 0x176(r31)
    stw     r3, 0x170(r31)
    stb     r0, 0x17c(r31)
    stw     r4, 0x170(r31)
    b       branch_0x803241cc

branch_0x803241b0:
    lwz     r3, 0x170(r31)
    addi    r5, r5, 0x1
    addi    r0, r3, 0x4
    stw     r0, 0x170(r31)
    add     r30, r30, r3
    lwz     r0, 0x170(r31)
    add     r30, r30, r0
branch_0x803241cc:
    lhz     r0, 0x1f2(r29)
    cmpw    r5, r0
    blt+    branch_0x803241b0
    lfs     f1, 0x834(rtoc)
    li      r3, 0x4000
    lfs     f0, 0x1f4(r29)
    lwz     r0, 0x170(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r4, 0x34(sp)
    divw    r0, r4, r0
    extsh   r0, r0
    sth     r0, 0x17a(r31)
    lhz     r0, 0x1f2(r29)
    divw    r0, r3, r0
    extsh   r0, r0
    sth     r0, 0x178(r31)
    b       branch_0x8032422c

branch_0x80324218:
    subi    r0, r3, 0x5
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x8032422c
    lhz     r30, 0x1f2(r29)
branch_0x8032422c:
    lis     r3, 0x8040
    extsh   r0, r30
    subi    r3, r3, 0x1ec8
    stw     r0, 0x164(r3)
    lwz     r0, 0x11c(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x80324250
    li      r0, 0x1
    b       branch_0x80324254

branch_0x80324250:
    li      r0, 0x0
branch_0x80324254:
    clrlwi. r0, r0, 24
    beq-    branch_0x80324260
    li      r30, 0x0
branch_0x80324260:
    cmpwi   r30, 0x0
    beq-    branch_0x80324290
    li      r28, 0x0
    b       branch_0x80324288

branch_0x80324270:
    stw     r28, 0x168(r31)
    mr      r3, r29
    bl      createParticle__14JPABaseEmitterFv
    cmplwi  r3, 0x0
    beq-    branch_0x80324290
    addi    r28, r28, 0x1
branch_0x80324288:
    cmpw    r28, r30
    blt+    branch_0x80324270
branch_0x80324290:
    lfs     f1, 0x814(rtoc)
    lfs     f2, 0x1c0(r29)
    fcmpu   cr0, f1, f2
    bne-    branch_0x803242b0
    lwz     r0, 0x11c(r29)
    ori     r0, r0, 0x20
    stw     r0, 0x11c(r29)
    b       branch_0x803242f0

branch_0x803242b0:
    lfs     f0, 0x1bc(r29)
    fadds   f0, f0, f2
    stfs    f0, 0x1bc(r29)
    lfs     f0, 0x1bc(r29)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x803242e4
    fsubs   f0, f0, f1
    stfs    f0, 0x1bc(r29)
    lwz     r0, 0x11c(r29)
    ori     r0, r0, 0x20
    stw     r0, 0x11c(r29)
    b       branch_0x803242f0

branch_0x803242e4:
    lwz     r0, 0x11c(r29)
    rlwinm  r0, r0, 0, 27, 25
    stw     r0, 0x11c(r29)
branch_0x803242f0:
    lwz     r0, 0x11c(r29)
    addi    r3, r30, 0x0
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0x11c(r29)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl checkStartFrame__14JPABaseEmitterFv
checkStartFrame__14JPABaseEmitterFv: # 0x80324320
    stwu    sp, -0x18(sp)
    lfs     f0, 0x18(r3)
    lha     r0, 0x1ec(r3)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
    extsh   r4, r4
    cmpw    r4, r0
    blt-    branch_0x8032434c
    li      r3, 0x1
    b       branch_0x80324374

branch_0x8032434c:
    lfs     f1, 0x18(r3)
    lfs     f0, 0x1c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x810(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80324370
    stfs    f0, 0x18(r3)
branch_0x80324370:
    li      r3, 0x0
branch_0x80324374:
    addi    sp, sp, 0x18
    blr


.globl checkMaxFrame__14JPABaseEmitterFv
checkMaxFrame__14JPABaseEmitterFv: # 0x8032437c
    stwu    sp, -0x18(sp)
    lwz     r4, 0x1e8(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x80324394
    li      r0, 0x1
    b       branch_0x80324398

branch_0x80324394:
    li      r0, 0x0
branch_0x80324398:
    clrlwi. r0, r0, 24
    beq-    branch_0x803243a8
    li      r3, 0x0
    b       branch_0x80324420

branch_0x803243a8:
    cmpwi   r4, 0x0
    bge-    branch_0x803243c4
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x11c(r3)
    li      r3, 0x1
    b       branch_0x80324420

branch_0x803243c4:
    lfs     f0, 0x10(r3)
    lwz     r0, 0x1e8(r3)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r4, 0x14(sp)
    cmpw    r4, r0
    blt-    branch_0x8032441c
    lwz     r0, 0x11c(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x11c(r3)
    lwz     r0, 0x11c(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80324400
    li      r0, 0x1
    b       branch_0x80324404

branch_0x80324400:
    li      r0, 0x0
branch_0x80324404:
    clrlwi. r0, r0, 24
    beq-    branch_0x80324414
    li      r3, 0x0
    b       branch_0x80324420

branch_0x80324414:
    li      r3, 0x1
    b       branch_0x80324420

branch_0x8032441c:
    li      r3, 0x0
branch_0x80324420:
    addi    sp, sp, 0x18
    blr


.globl doParticle__14JPABaseEmitterFv
doParticle__14JPABaseEmitterFv: # 0x80324428
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    mr      r28, r3
    addi    r30, r28, 0xf4
    lwz     r3, 0xf4(r3)
    b       branch_0x8032456c

branch_0x80324454:
    lwz     r29, 0x0(r3)
    lwz     r31, 0xc(r3)
    mr      r3, r29
    bl      incTimer__15JPABaseParticleFv
    lwz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80324478
    li      r0, 0x1
    b       branch_0x8032447c

branch_0x80324478:
    li      r0, 0x0
branch_0x8032447c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80324510
    mr      r3, r29
    lwz     r12, 0x58(r29)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x58(r29)
    mr      r4, r28
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803244c4
    li      r0, 0x1
    b       branch_0x803244c8

branch_0x803244c4:
    li      r0, 0x0
branch_0x803244c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8032451c
    addi    r3, r28, 0x30
    addi    r4, r29, 0x0
    bl      calcParticle__7JPADrawFP15JPABaseParticle
    mr      r3, r29
    lwz     r12, 0x58(r29)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80324504
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      createChildParticle__14JPABaseEmitterFP15JPABaseParticle
branch_0x80324504:
    mr      r3, r29
    bl      calcGlobalPosition__15JPABaseParticleFv
    b       branch_0x8032451c

branch_0x80324510:
    lwz     r0, 0x10(r29)
    ori     r0, r0, 0x2
    stw     r0, 0x10(r29)
branch_0x8032451c:
    lwz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80324530
    li      r0, 0x1
    b       branch_0x80324534

branch_0x80324530:
    li      r0, 0x0
branch_0x80324534:
    clrlwi. r0, r0, 24
    beq-    branch_0x80324568
    mr      r3, r29
    lwz     r12, 0x58(r29)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0x10c(r28)
    mr      r4, r29
    bl      prepend__10JSUPtrListFP10JSUPtrLink
branch_0x80324568:
    mr      r3, r31
branch_0x8032456c:
    cmplwi  r3, 0x0
    bne+    branch_0x80324454
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl doChildParticle__14JPABaseEmitterFv
doChildParticle__14JPABaseEmitterFv: # 0x80324594
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r28, 0x30(sp)
    mr      r28, r3
    addi    r30, r28, 0x100
    lwz     r3, 0x100(r3)
    b       branch_0x803246c8

branch_0x803245c0:
    lwz     r29, 0x0(r3)
    lwz     r31, 0xc(r3)
    mr      r3, r29
    bl      incTimer__15JPABaseParticleFv
    lwz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x803245e4
    li      r0, 0x1
    b       branch_0x803245e8

branch_0x803245e4:
    li      r0, 0x0
branch_0x803245e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8032466c
    lfs     f0, 0x44(r29)
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x8032461c
    mr      r3, r29
    lwz     r12, 0x58(r29)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8032461c:
    mr      r3, r29
    lwz     r12, 0x58(r29)
    mr      r4, r28
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80324648
    li      r0, 0x1
    b       branch_0x8032464c

branch_0x80324648:
    li      r0, 0x0
branch_0x8032464c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80324678
    addi    r3, r28, 0x30
    addi    r4, r29, 0x0
    bl      calcChild__7JPADrawFP15JPABaseParticle
    mr      r3, r29
    bl      calcGlobalPosition__15JPABaseParticleFv
    b       branch_0x80324678

branch_0x8032466c:
    lwz     r0, 0x10(r29)
    ori     r0, r0, 0x2
    stw     r0, 0x10(r29)
branch_0x80324678:
    lwz     r0, 0x10(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8032468c
    li      r0, 0x1
    b       branch_0x80324690

branch_0x8032468c:
    li      r0, 0x0
branch_0x80324690:
    clrlwi. r0, r0, 24
    beq-    branch_0x803246c4
    mr      r3, r29
    lwz     r12, 0x58(r29)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r3, 0x10c(r28)
    mr      r4, r29
    bl      prepend__10JSUPtrListFP10JSUPtrLink
branch_0x803246c4:
    mr      r3, r31
branch_0x803246c8:
    cmplwi  r3, 0x0
    bne+    branch_0x803245c0
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl calcKeyFrameAnime__14JPABaseEmitterFv
calcKeyFrameAnime__14JPABaseEmitterFv: # 0x803246f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stmw    r22, 0x58(sp)
    mr      r25, r3
    lwz     r4, 0x118(r3)
    lbz     r29, 0x22(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x803248a8
    lis     r3, 0x803e
    lwz     r31, 0x18c(r25)
    lwz     r30, 0x14(r4)
    addi    r23, r3, 0x3ccc
    lfd     f31, 0x828(rtoc)
    li      r28, 0x1
    li      r27, 0x0
    li      r26, 0x0
    li      r24, 0x0
    lis     r22, 0x4330
    b       branch_0x803248a0

branch_0x80324744:
    li      r3, 0x0
branch_0x80324748:
    and.    r0, r31, r28
    beq-    branch_0x80324754
    li      r3, 0x1
branch_0x80324754:
    cmplwi  r3, 0x0
    slwi    r28, r28, 1
    addi    r27, r27, 0x1
    beq+    branch_0x80324748
    lwzx    r3, r30, r24
    lfs     f0, 0x10(r25)
    lwz     r3, 0x4(r3)
    fmr     f1, f0
    lbz     r0, 0x12(r3)
    addi    r4, r3, 0x20
    lbz     r3, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80324790
    li      r0, 0x1
    b       branch_0x80324794

branch_0x80324790:
    li      r0, 0x0
branch_0x80324794:
    clrlwi. r0, r0, 24
    beq-    branch_0x803247e4
    subi    r0, r3, 0x1
    fctiwz  f0, f0
    slwi    r0, r0, 4
    lfsx    f2, r4, r0
    stfd    f0, 0x48(sp)
    fctiwz  f0, f2
    lwz     r0, 0x4c(sp)
    stfd    f0, 0x50(sp)
    lwz     r5, 0x54(sp)
    addi    r5, r5, 0x1
    divw    r0, r0, r5
    mullw   r0, r0, r5
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r22, 0x40(sp)
    lfd     f0, 0x40(sp)
    fsubs   f0, f0, f31
    fsubs   f1, f1, f0
branch_0x803247e4:
    subi    r0, r27, 0x1
    cmplwi  r0, 0xa
    bgt-    branch_0x80324898
    slwi    r0, r0, 2
    lwzx    r0, r23, r0
    mtctr   r0
    bctr       
    bl      JPAGetKeyFrameValue__FfUsPf
    stfs    f1, 0x1b0(r25)
    b       branch_0x80324898


.incbin "./baserom/code/Text_0x80005600.bin", 0x31f20c, 0x80324898 - 0x8032480c
branch_0x80324898:
    addi    r26, r26, 0x1
    addi    r24, r24, 0x4
branch_0x803248a0:
    cmplw   r26, r29
    blt+    branch_0x80324744
branch_0x803248a8:
    lmw     r22, 0x58(sp)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl calc__14JPABaseEmitterFv
calc__14JPABaseEmitterFv: # 0x803248c0
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x1ec8
    li      r5, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r5, 0x164(r4)
    lwz     r0, 0x11c(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803248f4
    li      r5, 0x1
branch_0x803248f4:
    clrlwi. r0, r5, 24
    bne-    branch_0x80324904
    mr      r3, r31
    bl      calcKeyFrameAnime__14JPABaseEmitterFv
branch_0x80324904:
    lwz     r3, 0x110(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80324924
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80324924:
    lwz     r0, 0x11c(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80324938
    li      r0, 0x1
    b       branch_0x8032493c

branch_0x80324938:
    li      r0, 0x0
branch_0x8032493c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80324984
    mr      r3, r31
    bl      calcEmitterGlobalParams__14JPABaseEmitterFv
    addi    r3, r31, 0x30
    bl      calc__7JPADrawFv
    addi    r3, r31, 0x20
    bl      calcFieldParams__15JPAFieldManagerFv
    lwz     r0, 0x11c(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80324970
    li      r0, 0x1
    b       branch_0x80324974

branch_0x80324970:
    li      r0, 0x0
branch_0x80324974:
    clrlwi. r0, r0, 24
    bne-    branch_0x80324984
    mr      r3, r31
    bl      calcCreateParticle__14JPABaseEmitterFv
branch_0x80324984:
    lwz     r3, 0x110(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x803249a4
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x803249a4:
    lwz     r0, 0x11c(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x803249b8
    li      r0, 0x1
    b       branch_0x803249bc

branch_0x803249b8:
    li      r0, 0x0
branch_0x803249bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x803249f8
    mr      r3, r31
    bl      doParticle__14JPABaseEmitterFv
    mr      r3, r31
    bl      doChildParticle__14JPABaseEmitterFv
    lfs     f1, 0x10(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x810(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x803249f8
    stfs    f0, 0x10(r31)
branch_0x803249f8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setGlobalRTMatrix__14JPABaseEmitterFPA4_f
setGlobalRTMatrix__14JPABaseEmitterFPA4_f: # 0x80324a0c
    mflr    r0
    addi    r5, r3, 0x160
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x124
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    mr      r4, r0
    bl      JPAGetRMtxTVecElement__FPA4_fPA4_fRQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setGlobalSRTMatrix__14JPABaseEmitterFPA4_f
setGlobalSRTMatrix__14JPABaseEmitterFPA4_f: # 0x80324a3c
    mflr    r0
    addi    r6, r3, 0x160
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x124
    addi    r5, r3, 0x154
    stwu    sp, -0x8(sp)
    addi    r3, r4, 0x0
    mr      r4, r0
    bl      JPAGetRMtxSTVecElement__FPA4_fPA4_fRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_JPAEmitter_cpp
__sinit_JPAEmitter_cpp: # 0x80324a70
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x1ec8
    addi    r3, r31, 0x8
    bl      __ct__Q25JMath13TRandom_fast_FUl
    addi    r3, r31, 0x6c
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, r31, 0x9c
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, r31, 0xcc
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, r31, 0xfc
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, r31, 0x12c
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

