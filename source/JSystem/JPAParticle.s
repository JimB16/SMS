
.globl incTimer__15JPABaseParticleFv
incTimer__15JPABaseParticleFv: # 0x80328954
    lwz     r4, 0x10(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x8032896c
    clrrwi  r0, r4, 1
    stw     r0, 0x10(r3)
    b       branch_0x8032897c

branch_0x8032896c:
    lfs     f1, 0x44(r3)
    lfs     f0, 0x8b4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x44(r3)
branch_0x8032897c:
    lfs     f1, 0x44(r3)
    lfs     f0, 0x4c(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x803289a8
    lfs     f0, 0x8b4(rtoc)
    stfs    f0, 0x48(r3)
    lwz     r0, 0x10(r3)
    ori     r0, r0, 0x80
    stw     r0, 0x10(r3)
    blr

branch_0x803289a8:
    fdivs   f0, f1, f0
    stfs    f0, 0x48(r3)
    blr


.globl executeParticleCallBack__15JPABaseParticleFP14JPABaseEmitter
executeParticleCallBack__15JPABaseParticleFP14JPABaseEmitter: # 0x803289b4
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x50(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x803289e0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x803289e0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl drawParticleCallBack__15JPABaseParticleFP14JPABaseEmitter
drawParticleCallBack__15JPABaseParticleFP14JPABaseEmitter: # 0x803289f0
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x50(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80328a1c
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80328a1c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__11JPAParticleFv
__ct__11JPAParticleFv: # 0x80328a2c
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3e48
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x0
    stw     r0, 0x58(r3)
    bl      __ct__10JSUPtrLinkFPv
    lis     r3, 0x803e
    addi    r0, r3, 0x3df0
    stw     r0, 0x58(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__11JPAParticleFv
init__11JPAParticleFv: # 0x80328a78
    li      r0, 0x0
    stw     r0, 0x10(r3)
    lfs     f1, 0x8b0(rtoc)
    stfs    f1, 0x28(r3)
    stfs    f1, 0x24(r3)
    stfs    f1, 0x20(r3)
    stfs    f1, 0x44(r3)
    stw     r0, 0x50(r3)
    stfs    f1, 0x78(r3)
    lfs     f0, 0x8b4(rtoc)
    stfs    f0, 0x80(r3)
    stfs    f0, 0x84(r3)
    stfs    f1, 0x9c(r3)
    stfs    f1, 0x98(r3)
    stfs    f1, 0x94(r3)
    blr


.globl setVelocity__11JPAParticleFv
setVelocity__11JPAParticleFv: # 0x80328ab8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f1, 0x88(r31)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x88(r31)
    lfs     f1, 0x8c(r31)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(r31)
    lfs     f1, 0x90(r31)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x90(r31)
    lfs     f1, 0x5c(r31)
    lfs     f0, 0x88(r31)
    lfs     f2, 0x84(r31)
    fadds   f0, f1, f0
    lfs     f1, 0x74(r31)
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x38(r31)
    lfs     f1, 0x60(r31)
    lfs     f0, 0x8c(r31)
    lfs     f2, 0x84(r31)
    fadds   f0, f1, f0
    lfs     f1, 0x74(r31)
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x3c(r31)
    lfs     f1, 0x64(r31)
    lfs     f0, 0x90(r31)
    lfs     f2, 0x84(r31)
    fadds   f0, f1, f0
    lfs     f1, 0x74(r31)
    fmuls   f0, f2, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x40(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcVelocity__11JPAParticleFv
calcVelocity__11JPAParticleFv: # 0x80328b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f0, 0x8b0(rtoc)
    stfs    f0, 0x90(r31)
    stfs    f0, 0x8c(r31)
    stfs    f0, 0x88(r31)
    lwz     r0, 0x10(r31)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80328bb0
    li      r0, 0x1
    b       branch_0x80328bb4

branch_0x80328bb0:
    li      r0, 0x0
branch_0x80328bb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80328bd4
    lfs     f0, 0x24(r3)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x28(r3)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x1c(r31)
branch_0x80328bd4:
    lfs     f0, 0x8b0(rtoc)
    lfs     f2, 0x78(r31)
    fcmpu   cr0, f0, f2
    beq-    branch_0x80328c14
    lfs     f1, 0x68(r31)
    lfs     f0, 0x5c(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x5c(r31)
    lfs     f1, 0x6c(r31)
    lfs     f0, 0x60(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x60(r31)
    lfs     f1, 0x70(r31)
    lfs     f0, 0x64(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x64(r31)
branch_0x80328c14:
    lwz     r0, 0x10(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80328c28
    li      r0, 0x1
    b       branch_0x80328c2c

branch_0x80328c28:
    li      r0, 0x0
branch_0x80328c2c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80328c40
    lwz     r3, 0x4(r3)
    mr      r4, r31
    bl      affectField__15JPAFieldManagerFP11JPAParticle
branch_0x80328c40:
    lfs     f1, 0x7c(r31)
    lfs     f0, 0x8b4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80328c74
    lfs     f0, 0x5c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x5c(r31)
    lfs     f0, 0x60(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(r31)
    lfs     f0, 0x64(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x64(r31)
branch_0x80328c74:
    mr      r3, r31
    lwz     r12, 0x58(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initGlobalPosition__15JPABaseParticleFv
initGlobalPosition__15JPABaseParticleFv: # 0x80328c9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f2, 0x20(r31)
    lfs     f1, 0xc(r3)
    lfs     f0, 0x14(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f2, 0x24(r31)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x18(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f2, 0x28(r31)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x1c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcGlobalPosition__15JPABaseParticleFv
calcGlobalPosition__15JPABaseParticleFv: # 0x80328d04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f1, 0x20(r3)
    lfs     f0, 0x38(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x20(r3)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x3c(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r3)
    lfs     f1, 0x28(r3)
    lfs     f0, 0x40(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r3)
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f2, 0x20(r31)
    lfs     f1, 0xc(r3)
    lfs     f0, 0x14(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f2, 0x24(r31)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x18(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f2, 0x28(r31)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x1c(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getCurrentPosition__15JPABaseParticleFRQ29JGeometry8TVec3_f_
getCurrentPosition__15JPABaseParticleFRQ29JGeometry8TVec3_f_: # 0x80328d9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      JPAGetEmitterInfoPtr__Fv
    lfs     f1, 0x20(r30)
    lfs     f0, 0x38(r30)
    lfs     f2, 0xc(r3)
    fadds   f1, f1, f0
    lfs     f0, 0x14(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x24(r30)
    lfs     f0, 0x3c(r30)
    lfs     f2, 0x10(r3)
    fadds   f1, f1, f0
    lfs     f0, 0x18(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x28(r30)
    lfs     f0, 0x40(r30)
    lfs     f2, 0x14(r3)
    fadds   f1, f1, f0
    lfs     f0, 0x1c(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkCreateChildParticle__11JPAParticleFv
checkCreateChildParticle__11JPAParticleFv: # 0x80328e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    li      r31, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    bl      JPAGetEmitterInfoPtr__Fv
    lwz     r3, 0x0(r3)
    lbz     r0, 0x172(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80328ed0
    lfs     f1, 0x4c(r30)
    lfs     f0, 0x8b4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80328e78
    fsubs   f0, f1, f0
    lfs     f1, 0x44(r30)
    fdivs   f1, f1, f0
    b       branch_0x80328e7c

branch_0x80328e78:
    fmr     f1, f0
branch_0x80328e7c:
    lwz     r3, 0x118(r3)
    lwz     r3, 0xc(r3)
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80328ed0
    lbz     r3, 0x47(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x80328ecc
    lfs     f0, 0x44(r30)
    addi    r3, r3, 0x1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r4, 0x4c(sp)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r4
    bne-    branch_0x80328ed0
    li      r31, 0x1
    b       branch_0x80328ed0

branch_0x80328ecc:
    li      r31, 0x1
branch_0x80328ed0:
    lwz     r0, 0x5c(sp)
    mr      r3, r31
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl getDynamicsWeight__11JPAParticleCFv
getDynamicsWeight__11JPAParticleCFv: # 0x80328eec
    lfs     f1, 0x74(r3)
    blr


.globl getAirResistance__11JPAParticleCFv
getAirResistance__11JPAParticleCFv: # 0x80328ef4
    lfs     f1, 0x7c(r3)
    blr


.globl getCurrentDragForce__11JPAParticleCFv
getCurrentDragForce__11JPAParticleCFv: # 0x80328efc
    lfs     f1, 0x84(r3)
    blr


.globl accessBaseVelVec__11JPAParticleFv
accessBaseVelVec__11JPAParticleFv: # 0x80328f04
    addi    r3, r3, 0x5c
    blr


.globl accessFAccVec__11JPAParticleFv
accessFAccVec__11JPAParticleFv: # 0x80328f0c
    addi    r3, r3, 0x94
    blr


.globl accessFVelVec__11JPAParticleFv
accessFVelVec__11JPAParticleFv: # 0x80328f14
    addi    r3, r3, 0x88
    blr


.globl getDrawParamPPtr__11JPAParticleFv
getDrawParamPPtr__11JPAParticleFv: # 0x80328f1c
    addi    r3, r3, 0xa0
    blr


.globl getDrawParamCPtr__11JPAParticleFv
getDrawParamCPtr__11JPAParticleFv: # 0x80328f24
    addi    r3, r3, 0xa0
    blr


.globl getWidth__11JPAParticleFv
getWidth__11JPAParticleFv: # 0x80328f2c
    lfs     f2, 0x8b8(rtoc)
    lis     r4, 0x8041
    lfs     f1, 0xb0(r3)
    subi    r3, r4, 0x3ef0
    lfs     f0, 0x4(r3)
    fmuls   f1, f2, f1
    fmuls   f1, f1, f0
    blr


.globl getHeight__11JPAParticleFv
getHeight__11JPAParticleFv: # 0x80328f4c
    lfs     f2, 0x8b8(rtoc)
    lis     r4, 0x8041
    lfs     f1, 0xb4(r3)
    subi    r3, r4, 0x3ef0
    lfs     f0, 0x8(r3)
    fmuls   f1, f2, f1
    fmuls   f1, f1, f0
    blr

