
.globl __dt__22TNerveSamboHeadHitWallFv
__dt__22TNerveSamboHeadHitWallFv: # 0x800df9c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800dfa08
    lis     r3, 0x803c
    subi    r0, r3, 0x6254
    stw     r0, 0x0(r31)
    beq-    branch_0x800df9f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800df9f8:
    extsh.  r0, r4
    ble-    branch_0x800dfa08
    mr      r3, r31
    bl      __dl__FPv
branch_0x800dfa08:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveSamboHeadHitWallCFP24TSpineBase_10TLiveActor_
execute__22TNerveSamboHeadHitWallCFP24TSpineBase_10TLiveActor_: # 0x800dfa20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r4
    stw     r29, 0x5c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800dfb24
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x5c50(rtoc)
    addi    r5, r31, 0x10
    lfs     f0, 0x34(r31)
    li      r4, 0xe2
    lwz     r3, -0x6070(r13)
    fmuls   f0, f1, f0
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    fctiwz  f0, f0
    li      r10, 0x0
    stfd    f0, 0x50(sp)
    lwz     r7, 0x54(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800dfac0
    lfs     f0, -0x5c4c(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800dfac0:
    lfs     f1, -0x5c50(rtoc)
    addi    r5, r31, 0x10
    lfs     f0, 0x34(r31)
    li      r4, 0xe3
    lwz     r3, -0x6070(r13)
    fmuls   f0, f1, f0
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x0
    fctiwz  f0, f0
    li      r10, 0x0
    stfd    f0, 0x50(sp)
    lwz     r7, 0x54(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800dfb24
    lfs     f0, -0x5c4c(rtoc)
    li      r4, 0x6
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    bl      SMSSetEmitterPolColor__FP14JPABaseEmitteri
branch_0x800dfb24:
    lwz     r5, 0x70(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r29, 0x5c(r5)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800dfc14
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lha     r0, 0x8(r3)
    lwz     r3, 0x20(r30)
    add     r0, r29, r0
    cmpw    r3, r0
    ble-    branch_0x800dfc14
    lwz     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
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
    beq-    branch_0x800dfbb8
    stw     r0, 0x1c(r30)
branch_0x800dfbb8:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x800dfbf8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800dfbf8
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800dfbf8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800dfc18

branch_0x800dfc14:
    li      r3, 0x0
branch_0x800dfc18:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl execute__27TNerveSamboHeadRecoverWaterCFP24TSpineBase_10TLiveActor_
execute__27TNerveSamboHeadRecoverWaterCFP24TSpineBase_10TLiveActor_: # 0x800dfc34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800dfc6c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800dfc6c:
    lfs     f1, 0x1ac(r31)
    mr      r3, r31
    lfs     f0, -0x5c48(rtoc)
    li      r4, 0x0
    fmuls   f0, f1, f0
    stfs    f0, 0x1ac(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800dfca8
    lfs     f1, 0x1ac(r31)
    lfs     f0, -0x5c44(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800dfca8
    li      r3, 0x1
    b       branch_0x800dfcac

branch_0x800dfca8:
    li      r3, 0x0
branch_0x800dfcac:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__27TNerveSamboHeadRecoverWaterFv
__dt__27TNerveSamboHeadRecoverWaterFv: # 0x800dfcc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800dfd04
    lis     r3, 0x803c
    subi    r0, r3, 0x6244
    stw     r0, 0x0(r31)
    beq-    branch_0x800dfcf4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800dfcf4:
    extsh.  r0, r4
    ble-    branch_0x800dfd04
    mr      r3, r31
    bl      __dl__FPv
branch_0x800dfd04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveSamboHeadHitWaterCFP24TSpineBase_10TLiveActor_
execute__23TNerveSamboHeadHitWaterCFP24TSpineBase_10TLiveActor_: # 0x800dfd1c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r31, r3, 0x2178
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800dfd84
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r3, 0x1a0(r30)
    stw     r0, 0x1a4(r30)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x1a8(r30)
branch_0x800dfd84:
    mr      r3, r30
    bl      isHitWallInBound__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800dfe9c
    lfs     f0, -0x5c40(rtoc)
    stfs    f0, 0x1ac(r30)
    lbz     r0, 0x1b0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800dfdb8
    lfs     f1, 0x34(r30)
    lfs     f0, -0x5c3c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r30)
branch_0x800dfdb8:
    li      r0, 0x0
    stw     r0, 0x8(r29)
    lbz     r0, -0x6888(r13)
    extsb.  r0, r0
    bne-    branch_0x800dfe00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6884(r13)
    subi    r0, r3, 0x6254
    lis     r3, 0x800e
    stw     r0, -0x6884(r13)
    subi    r4, r3, 0x63c
    subi    r3, r13, 0x6884
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6888(r13)
branch_0x800dfe00:
    lwz     r0, 0x14(r29)
    subi    r3, r13, 0x6884
    cmplwi  r0, 0x0
    beq-    branch_0x800dfe14
    stw     r0, 0x1c(r29)
branch_0x800dfe14:
    li      r0, 0x0
    stw     r0, 0x20(r29)
    stw     r3, 0x14(r29)
    lbz     r0, -0x6888(r13)
    extsb.  r0, r0
    bne-    branch_0x800dfe60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6884(r13)
    subi    r0, r3, 0x6254
    lis     r3, 0x800e
    stw     r0, -0x6884(r13)
    subi    r4, r3, 0x63c
    subi    r3, r13, 0x6884
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6888(r13)
branch_0x800dfe60:
    subi    r4, r13, 0x6884
    cmplwi  r4, 0x0
    beq-    branch_0x800dfe94
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800dfe94
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800dfe94:
    li      r3, 0x1
    b       branch_0x800e01fc

branch_0x800dfe9c:
    lwz     r0, 0x15c(r30)
    lwz     r3, 0x194(r30)
    cmpwi   r0, 0x6
    lfs     f3, 0x418(r3)
    bne-    branch_0x800dfeb8
    li      r0, 0x1
    b       branch_0x800dfebc

branch_0x800dfeb8:
    li      r0, 0x0
branch_0x800dfebc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dff3c
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x64
    bge-    branch_0x800dff04
    lfs     f1, 0x1ac(r30)
    lfs     f0, -0x5c38(rtoc)
    fsubs   f0, f1, f0
    fcmpo   cr0, f0, f3
    ble-    branch_0x800dfeec
    fmr     f0, f3
    b       branch_0x800dfefc

branch_0x800dfeec:
    fneg    f1, f3
    fcmpo   cr0, f0, f1
    bge-    branch_0x800dfefc
    fmr     f0, f1
branch_0x800dfefc:
    stfs    f0, 0x1ac(r30)
    b       branch_0x800dff6c

branch_0x800dff04:
    lfs     f2, -0x5c38(rtoc)
    lfs     f1, 0x1ac(r30)
    lfs     f0, -0x5c40(rtoc)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800dff24
    fmr     f1, f0
    b       branch_0x800dff34

branch_0x800dff24:
    fneg    f0, f3
    fcmpo   cr0, f1, f0
    bge-    branch_0x800dff34
    fmr     f1, f0
branch_0x800dff34:
    stfs    f1, 0x1ac(r30)
    b       branch_0x800dff6c

branch_0x800dff3c:
    lfs     f1, -0x5c38(rtoc)
    lfs     f0, 0x1ac(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f3
    ble-    branch_0x800dff58
    fmr     f0, f3
    b       branch_0x800dff68

branch_0x800dff58:
    fneg    f1, f3
    fcmpo   cr0, f0, f1
    bge-    branch_0x800dff68
    fmr     f0, f1
branch_0x800dff68:
    stfs    f0, 0x1ac(r30)
branch_0x800dff6c:
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x5
    bne-    branch_0x800dff80
    li      r0, 0x1
    b       branch_0x800dff84

branch_0x800dff80:
    li      r0, 0x0
branch_0x800dff84:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dffc4
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800dffa0
    li      r0, 0x1
    b       branch_0x800dffa4

branch_0x800dffa0:
    li      r0, 0x0
branch_0x800dffa4:
    cmpwi   r0, 0x0
    bne-    branch_0x800dffc4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800dffc4:
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x6
    bne-    branch_0x800dffd8
    li      r0, 0x1
    b       branch_0x800dffdc

branch_0x800dffd8:
    li      r0, 0x0
branch_0x800dffdc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e0018
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lfs     f1, -0x5c44(rtoc)
    lfs     f0, 0xc8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r3, 0x1a0(r30)
    lwz     r0, 0x1a4(r30)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x1a8(r30)
    stw     r0, 0xb4(r30)
branch_0x800e0018:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e002c
    li      r0, 0x1
    b       branch_0x800e0030

branch_0x800e002c:
    li      r0, 0x0
branch_0x800e0030:
    cmpwi   r0, 0x0
    bne-    branch_0x800e0050
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800e0050:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e01e4
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x6
    bne-    branch_0x800e0078
    li      r0, 0x1
    b       branch_0x800e007c

branch_0x800e0078:
    li      r0, 0x0
branch_0x800e007c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e01e4
    lwz     r12, 0x0(r30)
    mr      r3, r30
    lwz     r5, 0x194(r30)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    lfs     f31, 0x3f0(r5)
    mtlr    r12
    blrl
    lfs     f0, 0x1a0(r30)
    addi    r3, r30, 0x0
    li      r4, 0xc
    fmuls   f0, f0, f31
    stfs    f0, 0x1a0(r30)
    lfs     f0, 0x1a8(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x1a8(r30)
    lfs     f0, -0x5c40(rtoc)
    stfs    f0, 0x1a4(r30)
    lwz     r5, 0x1a0(r30)
    lwz     r0, 0x1a4(r30)
    stw     r5, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x1a8(r30)
    stw     r0, 0xb4(r30)
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x68a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e0148
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68a4(r13)
    subi    r0, r3, 0x6214
    lis     r3, 0x800e
    stw     r0, -0x68a4(r13)
    addi    r4, r3, 0x21c
    subi    r3, r13, 0x68a4
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a8(r13)
branch_0x800e0148:
    lwz     r0, 0x14(r29)
    subi    r3, r13, 0x68a4
    cmplwi  r0, 0x0
    beq-    branch_0x800e015c
    stw     r0, 0x1c(r29)
branch_0x800e015c:
    li      r0, 0x0
    stw     r0, 0x20(r29)
    stw     r3, 0x14(r29)
    lbz     r0, -0x6890(r13)
    extsb.  r0, r0
    bne-    branch_0x800e01a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x688c(r13)
    subi    r0, r3, 0x6244
    lis     r3, 0x800e
    stw     r0, -0x688c(r13)
    subi    r4, r3, 0x340
    subi    r3, r13, 0x688c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6890(r13)
branch_0x800e01a8:
    subi    r4, r13, 0x688c
    cmplwi  r4, 0x0
    beq-    branch_0x800e01dc
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800e01dc
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800e01dc:
    li      r3, 0x1
    b       branch_0x800e01fc

branch_0x800e01e4:
    lfs     f1, -0x5c40(rtoc)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800e01fc:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    mtlr    r0
    lwz     r30, 0xa0(sp)
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xb0
    blr


.globl __dt__21TNerveSamboHeadAttackFv
__dt__21TNerveSamboHeadAttackFv: # 0x800e021c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e0260
    lis     r3, 0x803c
    subi    r0, r3, 0x6214
    stw     r0, 0x0(r31)
    beq-    branch_0x800e0250
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e0250:
    extsh.  r0, r4
    ble-    branch_0x800e0260
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e0260:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TNerveSamboHeadHitWaterFv
__dt__23TNerveSamboHeadHitWaterFv: # 0x800e0278
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e02bc
    lis     r3, 0x803c
    subi    r0, r3, 0x6234
    stw     r0, 0x0(r31)
    beq-    branch_0x800e02ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e02ac:
    extsh.  r0, r4
    ble-    branch_0x800e02bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e02bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveSamboHeadHideCFP24TSpineBase_10TLiveActor_
execute__19TNerveSamboHeadHideCFP24TSpineBase_10TLiveActor_: # 0x800e02d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e0354
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r31)
    addi    r5, r31, 0x10
    li      r4, 0xb8
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb9
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x800e04e4

branch_0x800e0354:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e0424
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0xc
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x198(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800e03c8
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    addi    r5, r4, 0x1088
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    stw     r3, 0x198(r31)
    lwz     r3, 0x198(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800e03c8:
    lwz     r3, 0x198(r31)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x198(r31)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r3)
    lwz     r3, 0x198(r31)
    lwz     r0, 0xf0(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r3)
    lfs     f0, 0xc8(r31)
    lwz     r3, 0x198(r31)
    stfs    f0, 0x14(r3)
    lwz     r4, 0x198(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    b       branch_0x800e04e4

branch_0x800e0424:
    mr      r3, r31
    lfs     f1, -0x5c44(rtoc)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e04e4
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x194(r31)
    lfs     f0, 0x134(r31)
    lfs     f1, 0x33c(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e04e4
    lbz     r0, -0x68b0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e04a8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68ac(r13)
    subi    r0, r3, 0x6204
    lis     r4, 0x800e
    stw     r0, -0x68ac(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21c0
    addi    r4, r4, 0x514
    subi    r3, r13, 0x68ac
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68b0(r13)
branch_0x800e04a8:
    subi    r4, r13, 0x68ac
    cmplwi  r4, 0x0
    beq-    branch_0x800e04dc
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800e04dc
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e04dc:
    li      r3, 0x1
    b       branch_0x800e04fc

branch_0x800e04e4:
    lfs     f1, -0x5c40(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800e04fc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__21TNerveSamboHeadAppearFv
__dt__21TNerveSamboHeadAppearFv: # 0x800e0514
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e0558
    lis     r3, 0x803c
    subi    r0, r3, 0x6204
    stw     r0, 0x0(r31)
    beq-    branch_0x800e0548
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e0548:
    extsh.  r0, r4
    ble-    branch_0x800e0558
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e0558:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TNerveSamboHeadHideFv
__dt__19TNerveSamboHeadHideFv: # 0x800e0570
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e05b4
    lis     r3, 0x803c
    subi    r0, r3, 0x6224
    stw     r0, 0x0(r31)
    beq-    branch_0x800e05a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e05a4:
    extsh.  r0, r4
    ble-    branch_0x800e05b4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e05b4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveSamboHeadAttackCFP24TSpineBase_10TLiveActor_
execute__21TNerveSamboHeadAttackCFP24TSpineBase_10TLiveActor_: # 0x800e05cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stw     r31, 0x114(sp)
    stw     r30, 0x110(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0xf0(r3)
    addi    r31, r3, 0x0
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e0600
    li      r0, 0x1
    b       branch_0x800e0604

branch_0x800e0600:
    li      r0, 0x0
branch_0x800e0604:
    cmpwi   r0, 0x0
    bne-    branch_0x800e0804
    lwz     r3, 0x194(r31)
    lwz     r4, 0x19c(r31)
    lwz     r0, 0x3a0(r3)
    cmpw    r4, r0
    ble-    branch_0x800e0794
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e0794
    li      r0, 0x0
    stw     r0, 0x19c(r31)
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x800e065c
    addi    r4, r4, 0x10
    b       branch_0x800e0660

branch_0x800e065c:
    addi    r4, r3, 0x4
branch_0x800e0660:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r5, -0x60b4(r13)
    stw     r3, 0xf4(sp)
    lfs     f2, -0x5c40(rtoc)
    stw     r0, 0xf8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xfc(sp)
    lfs     f1, 0x0(r5)
    lfs     f0, 0x10(r31)
    lfs     f4, 0x8(r5)
    fsubs   f0, f1, f0
    lfs     f3, 0x18(r31)
    fsubs   f1, f4, f3
    stfs    f0, 0xf4(sp)
    stfs    f2, 0xf8(sp)
    stfs    f1, 0xfc(sp)
    lfs     f1, 0xf4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800e06d4
    lfs     f0, 0xf8(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x800e06d4
    lfs     f0, 0xfc(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x800e06d4
    lfs     f0, -0x5c44(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xf4(sp)
branch_0x800e06d4:
    addi    r3, sp, 0xf4
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r4, 0x194(r31)
    mr      r3, r31
    lfs     f1, 0xf4(sp)
    lfs     f2, 0x364(r4)
    lfs     f0, 0x10(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xf4(sp)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x18(r31)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0xfc(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xf8(sp)
    lwz     r12, 0x0(r31)
    lwz     r4, 0x194(r31)
    lwz     r12, 0xe8(r12)
    lfs     f31, 0x38c(r4)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r3, sp, 0xdc
    addi    r5, sp, 0xf4
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r5, 0xdc(sp)
    mr      r3, r31
    lwz     r0, 0xe0(sp)
    li      r4, 0x8
    stw     r5, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xe4(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x5c34(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e07a0

branch_0x800e0794:
    lwz     r3, 0x19c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
branch_0x800e07a0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e07ec
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x7
    bne-    branch_0x800e07c8
    li      r0, 0x1
    b       branch_0x800e07cc

branch_0x800e07c8:
    li      r0, 0x0
branch_0x800e07cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e07ec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800e07ec:
    lwz     r30, 0x74(r31)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    b       branch_0x800e0874

branch_0x800e0804:
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x5c40(rtoc)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd4(sp)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e0874
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x8
    bne-    branch_0x800e0840
    li      r0, 0x1
    b       branch_0x800e0844

branch_0x800e0840:
    li      r0, 0x0
branch_0x800e0844:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e0874
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x5c40(rtoc)
    bl      setFrameRate__6MActorFfi
branch_0x800e0874:
    lfs     f1, -0x5c30(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800e08e4
    lwz     r3, 0x194(r31)
    addi    r4, sp, 0xb8
    lwz     r5, 0xac(r31)
    lfs     f31, 0x418(r3)
    addi    r3, sp, 0xc4
    lwz     r0, 0xb0(r31)
    stw     r5, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xc0(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0xc4(sp)
    fcmpo   cr0, f0, f31
    ble-    branch_0x800e08cc
    fmr     f0, f31
    b       branch_0x800e08dc

branch_0x800e08cc:
    fneg    f1, f31
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e08dc
    fmr     f0, f1
branch_0x800e08dc:
    stfs    f0, 0x1ac(r31)
    b       branch_0x800e08f4

branch_0x800e08e4:
    lfs     f1, 0x1ac(r31)
    lfs     f0, -0x5c2c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x1ac(r31)
branch_0x800e08f4:
    lwz     r0, 0xf0(r31)
    lfs     f2, 0x144(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e090c
    li      r0, 0x1
    b       branch_0x800e0910

branch_0x800e090c:
    li      r0, 0x0
branch_0x800e0910:
    cmpwi   r0, 0x0
    beq-    branch_0x800e091c
    lfs     f2, -0x5c28(rtoc)
branch_0x800e091c:
    lfs     f1, -0x5c40(rtoc)
    mr      r3, r31
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lwz     r0, 0x124(sp)
    li      r3, 0x0
    lfd     f31, 0x118(sp)
    lwz     r31, 0x114(sp)
    mtlr    r0
    lwz     r30, 0x110(sp)
    addi    sp, sp, 0x120
    blr


.globl execute__21TNerveSamboHeadAppearCFP24TSpineBase_10TLiveActor_
execute__21TNerveSamboHeadAppearCFP24TSpineBase_10TLiveActor_: # 0x800e094c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r4
    stw     r29, 0x4c(sp)
    stw     r28, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e0ad0
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r28, 0x198(r31)
    lbz     r0, 0x150(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x800e0a5c
    li      r0, 0x1
    stb     r0, 0x150(r28)
    li      r0, 0x0
    addi    r5, r28, 0x10
    stw     r0, 0x154(r28)
    li      r4, 0xb2
    li      r6, 0x0
    lwz     r3, -0x6070(r13)
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lis     r4, 0x8038
    lwz     r3, 0x74(r28)
    addi    r4, r4, 0x10a4
    bl      setBck__6MActorFPCc
    lbz     r0, 0x160(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x800e0a40
    lwz     r4, 0x164(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x800e0a40
    lwz     r3, 0x0(r4)
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
    lwz     r4, 0x164(r28)
    lwz     r3, -0x6044(r13)
    lwz     r4, 0x0(r4)
    addis   r29, r4, 0x1
    subi    r29, r29, 0x7647
    addi    r4, r29, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e0a40
    addi    r3, r29, 0x0
    addi    r4, r28, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e0a40:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e0a74

branch_0x800e0a5c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800e0a74:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r29, 0x198(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x10b0
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r3, 0x74(r29)
    bl      setBck__6MActorFPCc
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r29)
branch_0x800e0ad0:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x14
    bne-    branch_0x800e0afc
    lwz     r3, 0x198(r31)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    lwz     r3, 0x70(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x54(r12)
    mtlr    r12
    blrl
branch_0x800e0afc:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e0ba8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x68a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e0b6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68a4(r13)
    subi    r0, r3, 0x6214
    lis     r4, 0x800e
    stw     r0, -0x68a4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21cc
    addi    r4, r4, 0x21c
    subi    r3, r13, 0x68a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a8(r13)
branch_0x800e0b6c:
    subi    r4, r13, 0x68a4
    cmplwi  r4, 0x0
    beq-    branch_0x800e0ba0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800e0ba0
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e0ba0:
    li      r3, 0x1
    b       branch_0x800e0bac

branch_0x800e0ba8:
    li      r3, 0x0
branch_0x800e0bac:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl getBasNameTable__10TSamboHeadCFv
getBasNameTable__10TSamboHeadCFv: # 0x800e0bcc
    lis     r3, 0x803c
    subi    r3, r3, 0x62ec
    blr


.globl genEventCoin__10TSamboHeadFv
genEventCoin__10TSamboHeadFv: # 0x800e0bd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stfd    f26, 0xc0(sp)
    stfd    f25, 0xb8(sp)
    stfd    f24, 0xb0(sp)
    stfd    f23, 0xa8(sp)
    stfd    f22, 0xa0(sp)
    stfd    f21, 0x98(sp)
    stfd    f20, 0x90(sp)
    stmw    r26, 0x78(sp)
    mr      r28, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x800e0c30
    li      r0, 0x1
    b       branch_0x800e0c34

branch_0x800e0c30:
    li      r0, 0x0
branch_0x800e0c34:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e0e58
    lfs     f29, -0x5c1c(rtoc)
    addi    r30, sp, 0x38
    lfs     f30, -0x5c18(rtoc)
    li      r29, 0x0
    lfs     f31, -0x5c14(rtoc)
    lfs     f23, -0x5c50(rtoc)
    lis     r27, 0x2000
    lfs     f24, -0x5c24(rtoc)
    lis     r31, 0x4330
    lfd     f25, -0x5c08(rtoc)
    lfs     f26, -0x5c40(rtoc)
    lfs     f27, -0x5c44(rtoc)
    lfs     f28, -0x5c20(rtoc)
    lfs     f21, -0x5c10(rtoc)
branch_0x800e0c74:
    xoris   r0, r29, 0x8000
    lfs     f0, 0x34(r28)
    stw     r0, 0x74(sp)
    addi    r4, sp, 0x2c
    fsubs   f0, f0, f24
    lwz     r0, -0x5eac(r13)
    stw     r31, 0x70(sp)
    lwz     r8, -0x5ea8(r13)
    mr      r3, r30
    lfd     f1, 0x70(sp)
    mr      r5, r4
    lwz     r6, -0x5ea4(r13)
    fsubs   f1, f1, f25
    fmadds  f0, f24, f1, f0
    fmuls   f0, f23, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r7, 0x6c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f2, r6, r0
    fneg    f0, f1
    stfs    f2, 0x38(sp)
    stfs    f26, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f26, 0x44(sp)
    stfs    f26, 0x48(sp)
    stfs    f27, 0x4c(sp)
    stfs    f26, 0x50(sp)
    stfs    f26, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f26, 0x5c(sp)
    stfs    f2, 0x60(sp)
    stfs    f26, 0x64(sp)
    stfs    f26, 0x2c(sp)
    stfs    f26, 0x30(sp)
    stfs    f28, 0x34(sp)
    bl      PSMTXMultVec
    cmpwi   r29, 0x1
    bne-    branch_0x800e0d98
    lwz     r4, 0x180(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x800e0d98
    lwz     r3, 0x4c(r4)
    addi    r26, r4, 0x0
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x800e0d44
    li      r0, 0x1
    b       branch_0x800e0d48

branch_0x800e0d44:
    li      r0, 0x0
branch_0x800e0d48:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e0d60
    lwz     r3, -0x62b0(r13)
    addi    r4, r27, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r26, r3
branch_0x800e0d60:
    cmplwi  r26, 0x0
    beq-    branch_0x800e0dc8
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10(r28)
    lwz     r0, 0x14(r28)
    stw     r3, 0x10(r26)
    stw     r0, 0x14(r26)
    lwz     r0, 0x18(r28)
    stw     r0, 0x18(r26)
    b       branch_0x800e0dc8

branch_0x800e0d98:
    lfs     f3, 0x10(r28)
    addi    r4, r27, 0xe
    lfs     f1, 0x2c(sp)
    li      r5, 0x1
    lfs     f2, 0x18(r28)
    lfs     f0, 0x34(sp)
    fadds   f1, f3, f1
    lwz     r3, -0x62b0(r13)
    fadds   f3, f2, f0
    lfs     f2, 0x14(r28)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr      r26, r3
branch_0x800e0dc8:
    cmplwi  r26, 0x0
    beq-    branch_0x800e0e48
    lfs     f0, 0x14(r28)
    addi    r3, sp, 0x2c
    addi    r4, r3, 0x0
    stfs    f0, 0x14(r26)
    bl      MsVECNormalize__FP3VecP3Vec
    stfs    f29, 0x24(sp)
    stfs    f30, 0x28(sp)
    lfs     f2, 0x34(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x24(sp)
    fmuls   f22, f31, f2
    fsubs   f20, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, 0x2c(sp)
    stw     r0, 0x6c(sp)
    fmuls   f0, f31, f0
    lfs     f1, 0x24(sp)
    stw     r31, 0x68(sp)
    lfd     f2, 0x68(sp)
    stfs    f0, 0xac(r26)
    fsubs   f0, f2, f25
    fmuls   f0, f21, f0
    fmuls   f0, f20, f0
    fadds   f0, f1, f0
    stfs    f0, 0xb0(r26)
    stfs    f22, 0xb4(r26)
    lwz     r0, 0xf0(r26)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r26)
branch_0x800e0e48:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3
    blt+    branch_0x800e0c74
    b       branch_0x800e0e60

branch_0x800e0e58:
    mr      r3, r28
    bl      genEventCoin__11TSmallEnemyFv
branch_0x800e0e60:
    lmw     r26, 0x78(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lfd     f26, 0xc0(sp)
    lfd     f25, 0xb8(sp)
    lfd     f24, 0xb0(sp)
    lfd     f23, 0xa8(sp)
    lfd     f22, 0xa0(sp)
    lfd     f21, 0x98(sp)
    lfd     f20, 0x90(sp)
    addi    sp, sp, 0xf0
    blr


.globl calcRootMatrix__10TSamboHeadFv
calcRootMatrix__10TSamboHeadFv: # 0x800e0ea4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r3, -0x68e4(r13)
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setAfterDeadEffect__10TSamboHeadFv
setAfterDeadEffect__10TSamboHeadFv: # 0x800e0ec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x800e0ef0
    li      r0, 0x1
    b       branch_0x800e0ef4

branch_0x800e0ef0:
    li      r0, 0x0
branch_0x800e0ef4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e0f3c
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e0f78
    lfs     f0, -0x5c4c(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    b       branch_0x800e0f78

branch_0x800e0f3c:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe4
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e0f78
    lfs     f0, -0x5c4c(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800e0f78:
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e0fb4
    lfs     f0, -0x5c4c(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x800e0fb4:
    lwz     r3, -0x6044(r13)
    li      r4, 0x295f
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e0fe4
    addi    r4, r31, 0x10
    li      r3, 0x295f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e0fe4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setDeadAnm__10TSamboHeadFv
setDeadAnm__10TSamboHeadFv: # 0x800e0ff8
    mflr    r0
    li      r4, 0x3
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


.globl getGravityY__10TSamboHeadCFv
getGravityY__10TSamboHeadCFv: # 0x800e1028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lbz     r0, -0x68a8(r13)
    lfs     f31, 0xcc(r3)
    extsb.  r0, r0
    bne-    branch_0x800e1088
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68a4(r13)
    subi    r0, r3, 0x6214
    lis     r4, 0x800e
    stw     r0, -0x68a4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21cc
    addi    r4, r4, 0x21c
    subi    r3, r13, 0x68a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a8(r13)
branch_0x800e1088:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x68a4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e10a4
    lwz     r3, 0x194(r31)
    lfs     f31, 0x378(r3)
branch_0x800e10a4:
    lbz     r0, -0x6898(r13)
    extsb.  r0, r0
    bne-    branch_0x800e10e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6894(r13)
    subi    r0, r3, 0x6234
    lis     r4, 0x800e
    stw     r0, -0x6894(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21e4
    addi    r4, r4, 0x278
    subi    r3, r13, 0x6894
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6898(r13)
branch_0x800e10e8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6894
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e1104
    lwz     r3, 0x194(r31)
    lfs     f31, 0x3dc(r3)
branch_0x800e1104:
    lwz     r0, 0x64(sp)
    fmr     f1, f31
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl attackToMario__10TSamboHeadFv
attackToMario__10TSamboHeadFv: # 0x800e1120
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800e1158
    li      r0, 0x1
    b       branch_0x800e115c

branch_0x800e1158:
    li      r0, 0x0
branch_0x800e115c:
    cmpwi   r0, 0x0
    beq-    branch_0x800e11e0
    lwz     r5, -0x60b4(r13)
    addi    r3, sp, 0x3c
    lfs     f1, 0x10(r31)
    mr      r4, r3
    lfs     f0, 0x0(r5)
    lfs     f3, 0x18(r31)
    fsubs   f1, f1, f0
    lfs     f2, 0x8(r5)
    lfs     f0, -0x5c00(rtoc)
    fsubs   f2, f3, f2
    stfs    f1, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f2, 0x44(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x3c(sp)
    lfs     f1, -0x5c1c(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0xb4(r31)
    b       branch_0x800e1290

branch_0x800e11e0:
    lbz     r0, -0x68a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e1224
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68a4(r13)
    subi    r0, r3, 0x6214
    lis     r4, 0x800e
    stw     r0, -0x68a4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21cc
    addi    r4, r4, 0x21c
    subi    r3, r13, 0x68a4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a8(r13)
branch_0x800e1224:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x68a4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e1290
    bl      theNerve__22TNerveSmallEnemyFreezeFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x800e1290
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800e1284
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800e1284
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800e1284:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x800e1290:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl behaveToWater__10TSamboHeadFP9THitActor
behaveToWater__10TSamboHeadFP9THitActor: # 0x800e12a4
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r4, 0x2178
    stw     r30, 0xc8(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xc4(sp)
    lbz     r0, -0x68a0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e1308
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x689c(r13)
    subi    r0, r3, 0x6224
    lis     r3, 0x800e
    stw     r0, -0x689c(r13)
    addi    r4, r3, 0x570
    subi    r3, r13, 0x689c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a0(r13)
branch_0x800e1308:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x689c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e15b0
    lbz     r0, -0x68b0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e135c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68ac(r13)
    subi    r0, r3, 0x6204
    lis     r3, 0x800e
    stw     r0, -0x68ac(r13)
    addi    r4, r3, 0x514
    subi    r3, r13, 0x68ac
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68b0(r13)
branch_0x800e135c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x68ac
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e15b0
    lbz     r0, -0x6888(r13)
    extsb.  r0, r0
    bne-    branch_0x800e13b0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6884(r13)
    subi    r0, r3, 0x6254
    lis     r3, 0x800e
    stw     r0, -0x6884(r13)
    subi    r4, r3, 0x63c
    subi    r3, r13, 0x6884
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6888(r13)
branch_0x800e13b0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6884
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    beq-    branch_0x800e15b0
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    bne-    branch_0x800e13d4
    b       branch_0x800e15b0

branch_0x800e13d4:
    lwz     r5, 0xac(r30)
    addi    r3, sp, 0xa4
    lwz     r0, 0xb0(r30)
    mr      r4, r3
    lfs     f4, -0x5c40(rtoc)
    stw     r5, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0xb8(sp)
    stfs    f4, 0xb4(sp)
    lwz     r5, -0x60b4(r13)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x0(r5)
    lfs     f3, 0x18(r30)
    fsubs   f0, f1, f0
    lfs     f2, 0x8(r5)
    fsubs   f1, f3, f2
    stfs    f0, 0xa4(sp)
    stfs    f4, 0xa8(sp)
    stfs    f1, 0xac(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x194(r30)
    lfs     f0, 0xa4(sp)
    lfs     f1, 0x3b4(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xac(sp)
    lwz     r3, 0x194(r30)
    lfs     f0, 0x3c8(r3)
    stfs    f0, 0xa8(sp)
    lbz     r0, -0x6898(r13)
    extsb.  r0, r0
    bne-    branch_0x800e14a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6894(r13)
    subi    r0, r3, 0x6234
    lis     r3, 0x800e
    stw     r0, -0x6894(r13)
    addi    r4, r3, 0x278
    subi    r3, r13, 0x6894
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6898(r13)
branch_0x800e14a0:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6894
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800e154c
    lbz     r0, -0x6898(r13)
    extsb.  r0, r0
    bne-    branch_0x800e14f0
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x6894(r13)
    subi    r0, r4, 0x6234
    lis     r4, 0x800e
    stw     r0, -0x6894(r13)
    addi    r4, r4, 0x278
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6898(r13)
branch_0x800e14f0:
    subi    r6, r13, 0x6894
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800e157c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e153c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e153c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e153c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800e157c

branch_0x800e154c:
    lfs     f1, 0xa4(sp)
    lfs     f0, 0xb0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0xb4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0xb8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
branch_0x800e157c:
    lwz     r3, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0xac(sp)
    stw     r0, 0xb4(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x5c34(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x800e15b0:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    blr


.globl kill__10TSamboHeadFv
kill__10TSamboHeadFv: # 0x800e15cc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stb     r0, 0x13c(r3)
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r31, r3
    beq-    branch_0x800e1668
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r4, 0x8c(r30)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800e1624
    stw     r0, 0x1c(r4)
branch_0x800e1624:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r30)
    beq-    branch_0x800e1668
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800e1668
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e1668:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl reset__10TSamboHeadFv
reset__10TSamboHeadFv: # 0x800e168c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r31, -0x68e4(r13)
    bl      reset__12TWalkerEnemyFv
    li      r0, 0x0
    stb     r0, 0x165(r31)
    stb     r0, 0x1b0(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x5c40(rtoc)
    stfs    f0, 0x1ac(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__10TSamboHeadFv
setMActorAndKeeper__10TSamboHeadFv: # 0x800e16e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800e1718
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800e1718:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x1078
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


.globl init__10TSamboHeadFP12TLiveManager
init__10TSamboHeadFP12TLiveManager: # 0x800e174c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x1b
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x194(r31)
    lbz     r0, -0x68a0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e17d4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x689c(r13)
    subi    r0, r3, 0x6224
    lis     r4, 0x800e
    stw     r0, -0x689c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21d8
    addi    r4, r4, 0x570
    subi    r3, r13, 0x689c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a0(r13)
branch_0x800e17d4:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    subi    r0, r13, 0x689c
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5c40(rtoc)
    stw     r3, 0x24(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    beq-    branch_0x800e182c
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x28(sp)
    stfs    f1, 0x2c(sp)
    stfs    f2, 0x30(sp)
branch_0x800e182c:
    lwz     r0, 0x24(sp)
    lis     r3, 0x800e
    addi    r5, r3, 0x1d44
    stw     r0, 0xf4(r31)
    li      r0, 0x0
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
    lwz     r3, 0x74(r31)
    lbz     r4, -0x68e8(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl load__10TSamboHeadFR20JSUMemoryInputStream
load__10TSamboHeadFR20JSUMemoryInputStream: # 0x800e189c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5c40(rtoc)
    stw     r3, 0x18(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    beq-    branch_0x800e1900
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x1c(sp)
    stfs    f1, 0x20(sp)
    stfs    f2, 0x24(sp)
branch_0x800e1900:
    lwz     r3, 0x18(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x18(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__10TSamboHeadFPCc
__ct__10TSamboHeadFPCc: # 0x800e195c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x61f4
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x5c40(rtoc)
    stfs    f0, 0x1ac(r31)
    stb     r0, 0x1b0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__17TSamboHeadManagerFv
createEnemyInstance__17TSamboHeadManagerFv: # 0x800e19bc
    mflr    r0
    li      r3, 0x1b4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800e1a1c
    lis     r4, 0x8038
    addi    r3, r31, 0x0
    addi    r4, r4, 0x10c0
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x61f4
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stw     r0, 0x194(r31)
    stw     r0, 0x198(r31)
    stw     r0, 0x19c(r31)
    lfs     f0, -0x5c40(rtoc)
    stfs    f0, 0x1ac(r31)
    stb     r0, 0x1b0(r31)
branch_0x800e1a1c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__17TSamboHeadManagerFv
createModelData__17TSamboHeadManagerFv: # 0x800e1a34
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x626c
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__17TSamboHeadManagerFR20JSUMemoryInputStream
load__17TSamboHeadManagerFR20JSUMemoryInputStream: # 0x800e1a68
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r26, r3, 0x0
    addi    r30, r5, 0xcc8
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x41c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800e1ce8
    stw     r27, 0x10(sp)
    addi    r4, r30, 0x408
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x420
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x420
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x32c(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5bfc(rtoc)
    addi    r3, r30, 0x430
    stfs    f0, 0x33c(r31)
    stw     r28, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x430
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x340(r31)
    addi    r3, r30, 0x43c
    lfs     f0, -0x5bf8(rtoc)
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x43c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x354(r31)
    addi    r3, r30, 0x448
    lfs     f0, -0x5c20(rtoc)
    stfs    f0, 0x364(r31)
    stw     r28, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x448
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x458
    lfs     f0, -0x5bf4(rtoc)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x458
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x464
    lfs     f0, -0x5c00(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x464
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x390(r31)
    li      r0, 0x14
    lis     r3, 0x803b
    stw     r0, 0x3a0(r31)
    subi    r0, r3, 0x42b8
    addi    r3, r30, 0x478
    stw     r0, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x478
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x488
    lfs     f0, -0x5bf0(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x488
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x498
    lfs     f0, -0x5c00(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x498
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    addi    r3, r30, 0x4ac
    lfs     f0, -0x5c44(rtoc)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x4ac
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e0(r31)
    addi    r3, r30, 0x4c0
    lfs     f0, -0x5bec(rtoc)
    stfs    f0, 0x3f0(r31)
    stw     r28, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x4c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x4d4
    lfs     f0, -0x5bec(rtoc)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x4d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    mr      r3, r31
    lfs     f0, -0x5c30(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x800e1ce8:
    stw     r27, 0x38(r26)
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__17TSamboHeadManagerFPCc
__ct__17TSamboHeadManagerFPCc: # 0x800e1d00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x603c
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, -0x68e4(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SamboHeadRollCallback__FP7J3DNodei
SamboHeadRollCallback__FP7J3DNodei: # 0x800e1d44
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    lis     r4, 0x803f
    stwu    sp, -0x148(sp)
    stw     r31, 0x144(sp)
    addi    r31, r4, 0x2178
    stw     r30, 0x140(sp)
    stw     r29, 0x13c(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x800e2028
    lwz     r30, -0x68e4(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x800e1e8c
    lbz     r0, -0x68a8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e1dbc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68a4(r13)
    subi    r0, r3, 0x6214
    lis     r3, 0x800e
    stw     r0, -0x68a4(r13)
    addi    r4, r3, 0x21c
    subi    r3, r13, 0x68a4
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68a8(r13)
branch_0x800e1dbc:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x68a4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e1e78
    lbz     r0, -0x6898(r13)
    extsb.  r0, r0
    bne-    branch_0x800e1e10
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6894(r13)
    subi    r0, r3, 0x6234
    lis     r3, 0x800e
    stw     r0, -0x6894(r13)
    addi    r4, r3, 0x278
    subi    r3, r13, 0x6894
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6898(r13)
branch_0x800e1e10:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6894
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800e1e78
    lbz     r0, -0x6890(r13)
    extsb.  r0, r0
    bne-    branch_0x800e1e64
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x688c(r13)
    subi    r0, r3, 0x6244
    lis     r3, 0x800e
    stw     r0, -0x688c(r13)
    subi    r4, r3, 0x340
    subi    r3, r13, 0x688c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6890(r13)
branch_0x800e1e64:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x688c
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e1e80
branch_0x800e1e78:
    li      r0, 0x1
    b       branch_0x800e1e84

branch_0x800e1e80:
    li      r0, 0x0
branch_0x800e1e84:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e1e94
branch_0x800e1e8c:
    li      r3, 0x1
    b       branch_0x800e202c

branch_0x800e1e94:
    lhz     r29, 0x18(r29)
    lwz     r3, -0x68e4(r13)
    bl      getModel__10TLiveActorCFv
    lwz     r4, -0x68e4(r13)
    mulli   r5, r29, 0x30
    lwz     r6, 0x58(r3)
    lwz     r3, 0xac(r4)
    lwz     r0, 0xb0(r4)
    add     r29, r6, r5
    lfs     f1, -0x5c40(rtoc)
    stw     r3, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0xb4(r4)
    stw     r0, 0xfc(sp)
    lfs     f0, 0xf4(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800e1eec
    lfs     f0, 0xfc(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800e1eec
    lfs     f0, -0x5be8(rtoc)
    stfs    f0, 0xf4(sp)
branch_0x800e1eec:
    lfs     f1, -0x5c40(rtoc)
    addi    r3, sp, 0xdc
    lfs     f0, -0x5c44(rtoc)
    addi    r4, sp, 0xf4
    stfs    f1, 0xdc(sp)
    addi    r5, sp, 0xe8
    stfs    f0, 0xe0(sp)
    stfs    f1, 0xe4(sp)
    bl      PSVECCrossProduct
    lfs     f3, 0x18(r29)
    lwz     r3, -0x68e4(r13)
    fmuls   f0, f3, f3
    lfs     f5, 0x8(r29)
    lfs     f12, 0x28(r29)
    lfs     f4, -0x5c40(rtoc)
    fmadds  f1, f5, f5, f0
    lfs     f0, 0x1ac(r3)
    lfs     f6, 0x0(r29)
    fmadds  f13, f12, f12, f1
    lfs     f7, 0x10(r29)
    lfs     f8, 0x20(r29)
    lfs     f9, 0x4(r29)
    fcmpu   cr0, f4, f13
    lfs     f10, 0x14(r29)
    lfs     f11, 0x24(r29)
    bne-    branch_0x800e1f58
    b       branch_0x800e1f74

branch_0x800e1f58:
    lfs     f1, 0xec(sp)
    lfs     f2, 0xe8(sp)
    fmuls   f1, f1, f3
    lfs     f3, 0xf0(sp)
    fmadds  f1, f2, f5, f1
    fmadds  f1, f3, f12, f1
    fdivs   f4, f1, f13
branch_0x800e1f74:
    fmuls   f1, f10, f10
    lfs     f5, -0x5c40(rtoc)
    fmadds  f1, f9, f9, f1
    fmadds  f12, f11, f11, f1
    fcmpu   cr0, f5, f12
    bne-    branch_0x800e1f90
    b       branch_0x800e1fac

branch_0x800e1f90:
    lfs     f1, 0xec(sp)
    lfs     f2, 0xe8(sp)
    fmuls   f1, f1, f10
    lfs     f3, 0xf0(sp)
    fmadds  f1, f2, f9, f1
    fmadds  f1, f3, f11, f1
    fdivs   f5, f1, f12
branch_0x800e1fac:
    fmuls   f1, f7, f7
    lfs     f2, -0x5c40(rtoc)
    fmadds  f1, f6, f6, f1
    fmadds  f9, f8, f8, f1
    fcmpu   cr0, f2, f9
    bne-    branch_0x800e1fc8
    b       branch_0x800e1fe4

branch_0x800e1fc8:
    lfs     f1, 0xec(sp)
    lfs     f2, 0xe8(sp)
    fmuls   f1, f1, f7
    lfs     f3, 0xf0(sp)
    fmadds  f1, f2, f6, f1
    fmadds  f1, f3, f8, f1
    fdivs   f2, f1, f9
branch_0x800e1fe4:
    stfs    f2, 0xac(sp)
    addi    r3, sp, 0x100
    lfs     f1, -0x5be4(rtoc)
    addi    r4, sp, 0xac
    stfs    f5, 0xb0(sp)
    fmuls   f1, f1, f0
    stfs    f4, 0xb4(sp)
    bl      PSMTXRotAxisRad
    addi    r3, r29, 0x0
    addi    r5, r29, 0x0
    addi    r4, sp, 0x100
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, sp, 0x100
    bl      PSMTXConcat
branch_0x800e2028:
    li      r3, 0x1
branch_0x800e202c:
    lwz     r0, 0x14c(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    mtlr    r0
    lwz     r29, 0x13c(sp)
    addi    sp, sp, 0x148
    blr


.globl execute__21TNerveHanaSamboFreezeCFP24TSpineBase_10TLiveActor_
execute__21TNerveHanaSamboFreezeCFP24TSpineBase_10TLiveActor_: # 0x800e2048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e2080
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800e2080:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e212c
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x5
    bne-    branch_0x800e20a8
    li      r0, 0x1
    b       branch_0x800e20ac

branch_0x800e20a8:
    li      r0, 0x0
branch_0x800e20ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e20ec
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800e20c8
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x800e20c8:
    cmplwi  r3, 0x0
    beq-    branch_0x800e212c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e212c

branch_0x800e20ec:
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800e2100
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x800e2100:
    cmplwi  r3, 0x0
    beq-    branch_0x800e2124
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e212c

branch_0x800e2124:
    li      r3, 0x1
    b       branch_0x800e2130

branch_0x800e212c:
    li      r3, 0x0
branch_0x800e2130:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__21TNerveHanaSamboFreezeFv
__dt__21TNerveHanaSamboFreezeFv: # 0x800e2144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e2188
    lis     r3, 0x803c
    subi    r0, r3, 0x5fe4
    stw     r0, 0x0(r31)
    beq-    branch_0x800e2178
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e2178:
    extsh.  r0, r4
    ble-    branch_0x800e2188
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e2188:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveHanaSamboDieCFP24TSpineBase_10TLiveActor_
execute__18TNerveHanaSamboDieCFP24TSpineBase_10TLiveActor_: # 0x800e21a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r25, 0x4c(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e21e8
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    b       branch_0x800e23c4

branch_0x800e21e8:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    bne-    branch_0x800e2208
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x12c
    ble-    branch_0x800e23c4
branch_0x800e2208:
    lis     r3, 0x803c
    subi    r27, r3, 0x627c
    li      r25, 0x0
    li      r29, 0x0
    li      r28, 0x0
branch_0x800e221c:
    add     r3, r27, r28
    lwz     r4, 0x74(r31)
    lwz     r0, 0x0(r3)
    add     r8, r31, r29
    lwz     r3, 0x4(r4)
    addi    r26, r8, 0x1b4
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f2, 0x2c(r3)
    mr      r5, r26
    lfs     f1, 0x1c(r3)
    li      r4, 0xe4
    lfs     f0, 0xc(r3)
    li      r6, 0x0
    stfs    f0, 0x1b4(r8)
    li      r7, 0x0
    stfs    f1, 0x1b8(r8)
    stfs    f2, 0x1bc(r8)
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e22a8
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
branch_0x800e22a8:
    lwz     r3, -0x6070(r13)
    addi    r5, r26, 0x0
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800e22f8
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
branch_0x800e22f8:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x4
    addi    r29, r29, 0xc
    addi    r28, r28, 0x4
    blt+    branch_0x800e221c
    lwz     r0, 0xf0(r31)
    li      r28, 0x0
    addi    r3, r31, 0x0
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
    stw     r28, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    stw     r28, 0x8(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800e2370
    stw     r0, 0x1c(r30)
branch_0x800e2370:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800e23b0
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x800e23b0
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e23b0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
branch_0x800e23c4:
    lmw     r25, 0x4c(sp)
    li      r3, 0x0
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __dt__18TNerveHanaSamboDieFv
__dt__18TNerveHanaSamboDieFv: # 0x800e23dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e2420
    lis     r3, 0x803c
    subi    r0, r3, 0x5fd4
    stw     r0, 0x0(r31)
    beq-    branch_0x800e2410
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e2410:
    extsh.  r0, r4
    ble-    branch_0x800e2420
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e2420:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveHanaSamboHideCFP24TSpineBase_10TLiveActor_
execute__19TNerveHanaSamboHideCFP24TSpineBase_10TLiveActor_: # 0x800e2438
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e24a8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb8
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb9
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800e24a8:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x4b
    bne-    branch_0x800e2538
    lwz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800e24f0
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    addi    r5, r4, 0x1088
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    stw     r3, 0x1a8(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800e24f0:
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r3)
    lwz     r3, 0x1a8(r31)
    lwz     r0, 0xf0(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r3)
    lwz     r4, 0x1a8(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    lfs     f0, 0xc8(r31)
    lwz     r3, 0x1a8(r31)
    stfs    f0, 0x14(r3)
branch_0x800e2538:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e2610
    lwz     r0, 0x1a8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800e2588
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    addi    r5, r4, 0x1088
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    stw     r3, 0x1a8(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x800e2588:
    lwz     r5, 0x1a8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    lwz     r0, 0xf0(r5)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r5)
    lwz     r5, 0x1a8(r31)
    lwz     r0, 0xf0(r5)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r5)
    lwz     r6, 0x1a8(r31)
    lwz     r5, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r5, 0x10(r6)
    stw     r0, 0x14(r6)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r6)
    lfs     f0, 0xc8(r31)
    lwz     r5, 0x1a8(r31)
    stfs    f0, 0x14(r5)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lfs     f1, -0x5c40(rtoc)
    bl      setFrameRate__6MActorFfi
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
branch_0x800e2610:
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x198(r31)
    lfs     f0, 0x134(r31)
    lfs     f1, 0x30c(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e26b0
    lbz     r0, -0x68e0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2674
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68dc(r13)
    subi    r0, r3, 0x5f94
    lis     r4, 0x800e
    stw     r0, -0x68dc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2178
    addi    r4, r4, 0x26cc
    subi    r3, r13, 0x68dc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68e0(r13)
branch_0x800e2674:
    subi    r4, r13, 0x68dc
    cmplwi  r4, 0x0
    beq-    branch_0x800e26a8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800e26a8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e26a8:
    li      r3, 0x1
    b       branch_0x800e26b4

branch_0x800e26b0:
    li      r3, 0x0
branch_0x800e26b4:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__21TNerveHanaSamboAppearFv
__dt__21TNerveHanaSamboAppearFv: # 0x800e26cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e2710
    lis     r3, 0x803c
    subi    r0, r3, 0x5f94
    stw     r0, 0x0(r31)
    beq-    branch_0x800e2700
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e2700:
    extsh.  r0, r4
    ble-    branch_0x800e2710
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e2710:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TNerveHanaSamboHideFv
__dt__19TNerveHanaSamboHideFv: # 0x800e2728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e276c
    lis     r3, 0x803c
    subi    r0, r3, 0x5fc4
    stw     r0, 0x0(r31)
    beq-    branch_0x800e275c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e275c:
    extsh.  r0, r4
    ble-    branch_0x800e276c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e276c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveHanaSamboAttackCFP24TSpineBase_10TLiveActor_
execute__21TNerveHanaSamboAttackCFP24TSpineBase_10TLiveActor_: # 0x800e2784
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e27d0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x1b0(r30)
    b       branch_0x800e295c

branch_0x800e27d0:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e295c
    lwz     r3, 0x15c(r30)
    cmpwi   r3, 0x3
    bne-    branch_0x800e27f8
    li      r0, 0x1
    b       branch_0x800e27fc

branch_0x800e27f8:
    li      r0, 0x0
branch_0x800e27fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e2858
    mr      r3, r30
    bl      createPollen__10THanaSamboFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x291b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e283c
    addi    r4, r30, 0x10
    li      r3, 0x291b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e283c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e295c

branch_0x800e2858:
    cmpwi   r3, 0x1
    bne-    branch_0x800e2868
    li      r0, 0x1
    b       branch_0x800e286c

branch_0x800e2868:
    li      r0, 0x0
branch_0x800e286c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e28dc
    lwz     r3, 0x198(r30)
    lwz     r4, 0x20(r31)
    lwz     r0, 0x334(r3)
    cmpw    r4, r0
    ble-    branch_0x800e28c0
    lbz     r3, 0x165(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800e289c
    li      r0, 0x0
    stb     r0, 0x165(r30)
branch_0x800e289c:
    cmplwi  r3, 0x0
    bne-    branch_0x800e28c0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e295c

branch_0x800e28c0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e295c

branch_0x800e28dc:
    lbz     r0, -0x68d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2920
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68d4(r13)
    subi    r0, r3, 0x5fa4
    lis     r4, 0x800e
    stw     r0, -0x68d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2184
    addi    r4, r4, 0x2978
    subi    r3, r13, 0x68d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68d8(r13)
branch_0x800e2920:
    subi    r4, r13, 0x68d4
    cmplwi  r4, 0x0
    beq-    branch_0x800e2954
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800e2954
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800e2954:
    li      r3, 0x1
    b       branch_0x800e2960

branch_0x800e295c:
    li      r3, 0x0
branch_0x800e2960:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __dt__19TNerveHanaSamboWaitFv
__dt__19TNerveHanaSamboWaitFv: # 0x800e2978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e29bc
    lis     r3, 0x803c
    subi    r0, r3, 0x5fa4
    stw     r0, 0x0(r31)
    beq-    branch_0x800e29ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e29ac:
    extsh.  r0, r4
    ble-    branch_0x800e29bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e29bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__21TNerveHanaSamboAttackFv
__dt__21TNerveHanaSamboAttackFv: # 0x800e29d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800e2a18
    lis     r3, 0x803c
    subi    r0, r3, 0x5fb4
    stw     r0, 0x0(r31)
    beq-    branch_0x800e2a08
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800e2a08:
    extsh.  r0, r4
    ble-    branch_0x800e2a18
    mr      r3, r31
    bl      __dl__FPv
branch_0x800e2a18:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveHanaSamboWaitCFP24TSpineBase_10TLiveActor_
execute__19TNerveHanaSamboWaitCFP24TSpineBase_10TLiveActor_: # 0x800e2a30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r4
    stw     r30, 0x78(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e2a6c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
branch_0x800e2a6c:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800e2a9c
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x5c18(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800e2a9c
    mr      r3, r30
    bl      createPollen__10THanaSamboFv
branch_0x800e2a9c:
    lwz     r3, 0x198(r30)
    lwz     r4, 0x20(r31)
    lwz     r0, 0x2f8(r3)
    cmpw    r4, r0
    ble-    branch_0x800e2b6c
    lfs     f1, -0x5c20(rtoc)
    lfs     f0, 0x14(r30)
    lwz     r3, -0x60b4(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e2b6c
    mr      r3, r30
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x198(r30)
    lfs     f0, 0x134(r30)
    lfs     f1, 0x2e4(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e2b6c
    lbz     r0, -0x68d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2b30
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68cc(r13)
    subi    r0, r3, 0x5fb4
    lis     r4, 0x800e
    stw     r0, -0x68cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2190
    addi    r4, r4, 0x29d4
    subi    r3, r13, 0x68cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68d0(r13)
branch_0x800e2b30:
    subi    r4, r13, 0x68cc
    cmplwi  r4, 0x0
    beq-    branch_0x800e2b64
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800e2b64
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800e2b64:
    li      r3, 0x1
    b       branch_0x800e2c24

branch_0x800e2b6c:
    mr      r3, r30
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x198(r30)
    lfs     f0, 0x134(r30)
    lfs     f1, 0x320(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    ble-    branch_0x800e2c0c
    lbz     r0, -0x68c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2bd0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68c4(r13)
    subi    r0, r3, 0x5fc4
    lis     r4, 0x800e
    stw     r0, -0x68c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x219c
    addi    r4, r4, 0x2728
    subi    r3, r13, 0x68c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68c8(r13)
branch_0x800e2bd0:
    subi    r4, r13, 0x68c4
    cmplwi  r4, 0x0
    beq-    branch_0x800e2c04
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800e2c04
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800e2c04:
    li      r3, 0x1
    b       branch_0x800e2c24

branch_0x800e2c0c:
    lfs     f1, -0x5c40(rtoc)
    mr      r3, r30
    lfs     f2, 0x144(r30)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800e2c24:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl execute__21TNerveHanaSamboAppearCFP24TSpineBase_10TLiveActor_
execute__21TNerveHanaSamboAppearCFP24TSpineBase_10TLiveActor_: # 0x800e2c3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    mr      r30, r4
    stw     r29, 0x4c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800e2cf4
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x6
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xb7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r29, 0x1a8(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x10b0
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r3, 0x74(r29)
    bl      setBck__6MActorFPCc
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r29)
branch_0x800e2cf4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e2e50
    lbz     r0, -0x68d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2d4c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68d4(r13)
    subi    r0, r3, 0x5fa4
    lis     r4, 0x800e
    stw     r0, -0x68d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2184
    addi    r4, r4, 0x2978
    subi    r3, r13, 0x68d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68d8(r13)
branch_0x800e2d4c:
    subi    r4, r13, 0x68d4
    cmplwi  r4, 0x0
    beq-    branch_0x800e2d80
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800e2d80
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e2d80:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x5c20(rtoc)
    lfs     f0, 0x14(r31)
    lwz     r3, -0x60b4(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e2e48
    mr      r3, r31
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x198(r31)
    lfs     f0, 0x134(r31)
    lfs     f1, 0x2e4(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e2e48
    lbz     r0, -0x68d0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2e14
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68cc(r13)
    subi    r0, r3, 0x5fb4
    lis     r4, 0x800e
    stw     r0, -0x68cc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2190
    addi    r4, r4, 0x29d4
    subi    r3, r13, 0x68cc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68d0(r13)
branch_0x800e2e14:
    subi    r4, r13, 0x68cc
    cmplwi  r4, 0x0
    beq-    branch_0x800e2e48
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800e2e48
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800e2e48:
    li      r3, 0x1
    b       branch_0x800e2e70

branch_0x800e2e50:
    lfs     f1, -0x5c40(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f0, -0x5c38(rtoc)
    fmr     f3, f1
    fmuls   f2, f0, f2
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800e2e70:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl createPollen__10THanaSamboFv
createPollen__10THanaSamboFv: # 0x800e2e8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    mr      r31, r3
    stw     r30, 0xb8(sp)
    lwz     r4, 0x74(r3)
    addi    r3, sp, 0x78
    lbz     r0, -0x7dd7(r13)
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lfs     f1, -0x5c40(rtoc)
    lwz     r4, 0x58(r4)
    fmr     f2, f1
    lfs     f3, -0x5be0(rtoc)
    add     r4, r4, r0
    lfs     f0, 0xc(r4)
    mr      r30, r4
    stfs    f0, 0xa8(sp)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0xac(sp)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0xb0(sp)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x78
    addi    r3, r30, 0x0
    addi    r5, r4, 0x0
    bl      PSMTXConcat
    lbz     r0, -0x68d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e2f40
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68d4(r13)
    subi    r0, r3, 0x5fa4
    lis     r4, 0x800e
    stw     r0, -0x68d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2184
    addi    r4, r4, 0x2978
    subi    r3, r13, 0x68d4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68d8(r13)
branch_0x800e2f40:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x68d4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e2f84
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0xa8
    li      r4, 0xb2
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lfs     f1, 0x94(sp)
    mr      r30, r3
    lfs     f0, -0x5bdc(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x94(sp)
    b       branch_0x800e3008

branch_0x800e2f84:
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0xa8
    li      r4, 0xb3
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lfs     f0, -0x5c40(rtoc)
    mr      r30, r3
    addi    r3, sp, 0x3c
    stfs    f0, 0x6c(sp)
    stfs    f0, 0x70(sp)
    lfs     f0, -0x5bdc(rtoc)
    stfs    f0, 0x74(sp)
    lfs     f1, 0x30(r31)
    lfs     f2, 0x34(r31)
    lfs     f3, 0x38(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x6c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x3c
    bl      PSMTXMultVec
    lfs     f1, 0x84(sp)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x74(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(sp)
branch_0x800e3008:
    cmplwi  r30, 0x0
    beq-    branch_0x800e301c
    addi    r3, r30, 0x0
    addi    r4, sp, 0x78
    bl      setGlobalSRTMatrix__14JPABaseEmitterFPA4_f
branch_0x800e301c:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl perform__10THanaSamboFUlPQ26JDrama9TGraphics
perform__10THanaSamboFUlPQ26JDrama9TGraphics: # 0x800e3034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 29
    bne-    branch_0x800e3078
    lwz     r3, 0x194(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
branch_0x800e3078:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getBasNameTable__10THanaSamboCFv
getBasNameTable__10THanaSamboCFv: # 0x800e3094
    lis     r3, 0x803c
    subi    r3, r3, 0x6318
    blr


.globl setDeadAnm__10THanaSamboFv
setDeadAnm__10THanaSamboFv: # 0x800e30a0
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x106c
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    lbz     r0, 0x1b0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800e30f0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800e3108

branch_0x800e30f0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800e3108:
    lwz     r4, 0x194(r31)
    li      r0, 0x0
    lwz     r3, 0x64(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r4)
    stb     r0, 0x1b0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setWaitAnm__10THanaSamboFv
setWaitAnm__10THanaSamboFv: # 0x800e3140
    mflr    r0
    li      r4, 0x7
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x1b0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__10THanaSamboFv
reset__10THanaSamboFv: # 0x800e3184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__11TSmallEnemyFv
    li      r0, 0x0
    stb     r0, 0x165(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x19c(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1a4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl kill__10THanaSamboFv
kill__10THanaSamboFv: # 0x800e31d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r0, 0xf0(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x2178
    clrlwi. r0, r0, 31
    bne-    branch_0x800e3378
    li      r3, 0x1
    stb     r3, 0x13c(r30)
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x7
    bne-    branch_0x800e3214
    b       branch_0x800e3218

branch_0x800e3214:
    li      r3, 0x0
branch_0x800e3218:
    clrlwi. r0, r3, 24
    beq-    branch_0x800e3228
    li      r0, 0x3
    stw     r0, 0x18c(r30)
branch_0x800e3228:
    lbz     r0, -0x68c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e3268
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68bc(r13)
    subi    r0, r3, 0x5fd4
    lis     r3, 0x800e
    stw     r0, -0x68bc(r13)
    addi    r4, r3, 0x23dc
    subi    r3, r13, 0x68bc
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68c0(r13)
branch_0x800e3268:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x68bc
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800e335c
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x68c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e32c0
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803c
    stw     r0, -0x68bc(r13)
    subi    r0, r4, 0x5fd4
    lis     r4, 0x800e
    stw     r0, -0x68bc(r13)
    addi    r4, r4, 0x23dc
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68c0(r13)
branch_0x800e32c0:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x68bc
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800e32d8
    stw     r0, 0x1c(r4)
branch_0x800e32d8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x68c0(r13)
    extsb.  r0, r0
    bne-    branch_0x800e3324
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68bc(r13)
    subi    r0, r3, 0x5fd4
    lis     r3, 0x800e
    stw     r0, -0x68bc(r13)
    addi    r4, r3, 0x23dc
    subi    r3, r13, 0x68bc
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68c0(r13)
branch_0x800e3324:
    subi    r5, r13, 0x68bc
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800e335c
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800e335c
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800e335c:
    lwz     r3, 0x194(r30)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x40
    stw     r0, 0xf0(r30)
branch_0x800e3378:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl drawObject__10THanaSamboFPQ26JDrama9TGraphics
drawObject__10THanaSamboFPQ26JDrama9TGraphics: # 0x800e3390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      drawObject__10TLiveActorFPQ26JDrama9TGraphics
    lwz     r0, 0xf0(r31)
    andi.   r0, r0, 0xb
    bne-    branch_0x800e33bc
    lwz     r3, 0x1ac(r31)
    bl      entryDrawShadow__16TMBindShadowBodyFv
branch_0x800e33bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl moveObject__10THanaSamboFv
moveObject__10THanaSamboFv: # 0x800e33d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    stw     r28, 0x38(sp)
    bl      moveObject__11TSmallEnemyFv
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800e3420
    lwz     r4, 0x194(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r4)
    b       branch_0x800e345c

branch_0x800e3420:
    lbz     r30, -0x7dd8(r13)
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    mulli   r0, r30, 0x30
    lwz     r4, 0x58(r3)
    lwz     r3, 0x194(r31)
    add     r4, r4, r0
    lfs     f0, 0xc(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x1c(r4)
    lwz     r3, 0x194(r31)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x2c(r4)
    lwz     r3, 0x194(r31)
    stfs    f0, 0x18(r3)
branch_0x800e345c:
    li      r29, 0x0
    lwz     r28, 0x194(r31)
    mr      r30, r29
    b       branch_0x800e34ac

branch_0x800e346c:
    lwz     r3, 0x44(r28)
    lwzx    r3, r3, r30
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x800e348c
    li      r0, 0x1
    b       branch_0x800e3490

branch_0x800e348c:
    li      r0, 0x0
branch_0x800e3490:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e34a4
    addi    r3, r28, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800e34a4:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x800e34ac:
    lhz     r0, 0x48(r28)
    cmpw    r29, r0
    blt+    branch_0x800e346c
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800e351c
    lbz     r0, -0x68c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e3508
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68c4(r13)
    subi    r0, r3, 0x5fc4
    lis     r4, 0x800e
    stw     r0, -0x68c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x219c
    addi    r4, r4, 0x2728
    subi    r3, r13, 0x68c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68c8(r13)
branch_0x800e3508:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x68c4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e352c
branch_0x800e351c:
    lfs     f0, 0x19c(r31)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1a4(r31)
    stfs    f0, 0x18(r31)
branch_0x800e352c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl setMActorAndKeeper__10THanaSamboFv
setMActorAndKeeper__10THanaSamboFv: # 0x800e354c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800e3584
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800e3584:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x1060
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lis     r3, 0x8038
    addi    r4, r3, 0x106c
    lwz     r3, 0x78(r31)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__10THanaSamboFP12TLiveManager
init__10THanaSamboFP12TLiveManager: # 0x800e35cc
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    addi    r31, r5, 0xcc8
    stw     r30, 0xe0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xdc(sp)
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x1a
    stw     r0, 0x4c(r30)
    li      r0, 0x11
    addi    r3, r30, 0x0
    stw     r0, 0x150(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x198(r30)
    lbz     r0, -0x68c8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e3664
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68c4(r13)
    subi    r0, r3, 0x5fc4
    lis     r4, 0x800e
    stw     r0, -0x68c4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x219c
    addi    r4, r4, 0x2728
    subi    r3, r13, 0x68c4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68c8(r13)
branch_0x800e3664:
    lwz     r5, 0x8c(r30)
    li      r4, 0x0
    subi    r0, r13, 0x68c4
    stw     r4, 0x8(r5)
    li      r3, 0x1c
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800e36b0
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x5c4c(rtoc)
    mr      r5, r3
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      __ct__16TMBindShadowBodyFP9THitActorP8J3DModelf
branch_0x800e36b0:
    stw     r29, 0x1ac(r30)
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5c40(rtoc)
    stw     r3, 0xc0(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xc8(sp)
    stfs    f0, 0xcc(sp)
    beq-    branch_0x800e36ec
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xc4(sp)
    stfs    f1, 0xc8(sp)
    stfs    f2, 0xcc(sp)
branch_0x800e36ec:
    lwz     r3, 0xc0(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0xcc(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0xc0(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0xcc(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
    lha     r0, 0x7c(r30)
    cmpwi   r0, 0x0
    bne-    branch_0x800e3770
    li      r29, 0x0
    b       branch_0x800e374c

branch_0x800e3748:
    addi    r29, r29, 0x1
branch_0x800e374c:
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x3a4
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 24
    lwz     r3, 0x4(r3)
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800e3748
branch_0x800e3770:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800e37a0
    addi    r3, r29, 0x0
    addi    r4, r31, 0x4e0
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x5ddc
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r29)
branch_0x800e37a0:
    stw     r29, 0x194(r30)
    addi    r3, r31, 0x4f4
    lwz     r4, -0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x4f4
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x70
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x70(sp)
    addi    r3, sp, 0xac
    addi    r4, sp, 0x6c
    stw     r0, 0x6c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xac(sp)
    addi    r5, sp, 0x80
    addi    r4, r31, 0x0
    stw     r0, 0xa8(sp)
    addi    r3, sp, 0x7c
    addi    r6, r30, 0x194
    lwz     r0, 0xa8(sp)
    stw     r0, 0x80(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r7, 0x198(r30)
    lis     r3, 0x1000
    addi    r4, r3, 0x1b
    lfs     f0, 0x148(r30)
    lfs     f1, 0x348(r7)
    lfs     f2, 0x35c(r7)
    li      r5, 0x2
    lfs     f3, 0x370(r7)
    fmuls   f1, f1, f0
    lfs     f4, 0x384(r7)
    fmuls   f2, f2, f0
    lwz     r3, 0x194(r30)
    fmuls   f3, f3, f0
    fmuls   f4, f4, f0
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x194(r30)
    stw     r30, 0x68(r3)
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xe8
    blr


.globl load__10THanaSamboFR20JSUMemoryInputStream
load__10THanaSamboFR20JSUMemoryInputStream: # 0x800e387c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x5c40(rtoc)
    stw     r3, 0x18(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    beq-    branch_0x800e38e0
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x1c(sp)
    stfs    f1, 0x20(sp)
    stfs    f2, 0x24(sp)
branch_0x800e38e0:
    lwz     r3, 0x18(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x18(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x20(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x24(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__10THanaSamboFPCc
__ct__10THanaSamboFPCc: # 0x800e393c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    lwz     r31, 0x8(sp)
    subi    r3, r3, 0x5f84
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x8002
    stw     r0, 0x20(r31)
    li      r0, 0x0
    addi    r4, r3, 0x10dc
    stw     r0, 0x194(r31)
    addi    r3, r31, 0x1b4
    li      r5, 0x0
    stw     r0, 0x198(r31)
    li      r6, 0xc
    li      r7, 0x4
    stw     r0, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    bl      __construct_array
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__14THanaSamboHeadFP9THitActorUl
receiveMessage__14THanaSamboHeadFP9THitActorUl: # 0x800e39b8
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    bgt-    branch_0x800e39f0
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800e3b18

branch_0x800e39f0:
    cmplwi  r5, 0xf
    bne-    branch_0x800e3b14
    lwz     r31, 0x68(r3)
    li      r30, 0x1
    stb     r30, 0x165(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x130(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800e3b0c
    lbz     r0, -0x68d8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e3a60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x68d4(r13)
    subi    r0, r3, 0x5fa4
    lis     r4, 0x800e
    stw     r0, -0x68d4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x2184
    addi    r4, r4, 0x2978
    subi    r3, r13, 0x68d4
    bl      __register_global_object
    stb     r30, -0x68d8(r13)
branch_0x800e3a60:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x68d4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800e3b0c
    lbz     r0, -0x68b8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e3ab4
    subi    r3, r13, 0x68b4
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0x5fe4
    lis     r4, 0x800e
    stw     r0, -0x68b4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x21b4
    addi    r4, r4, 0x2144
    subi    r3, r13, 0x68b4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x68b8(r13)
branch_0x800e3ab4:
    subi    r6, r13, 0x68b4
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800e3b0c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e3b00
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800e3b00
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800e3b00:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800e3b0c:
    li      r3, 0x1
    b       branch_0x800e3b18

branch_0x800e3b14:
    li      r3, 0x0
branch_0x800e3b18:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl createModelData__17THanaSamboManagerFv
createModelData__17THanaSamboManagerFv: # 0x800e3b30
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x62a0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl createEnemyInstance__17THanaSamboManagerFv
createEnemyInstance__17THanaSamboManagerFv: # 0x800e3b64
    mflr    r0
    li      r3, 0x1e4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800e3be0
    stw     r31, 0xc(sp)
    lis     r3, 0x8038
    addi    r4, r3, 0x11c8
    lwz     r3, 0xc(sp)
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    lwz     r8, 0xc(sp)
    subi    r3, r3, 0x5f84
    stw     r3, 0x0(r8)
    addi    r0, r3, 0x24
    lis     r3, 0x8002
    stw     r0, 0x20(r8)
    li      r0, 0x0
    addi    r4, r3, 0x10dc
    stw     r0, 0x194(r8)
    addi    r3, r8, 0x1b4
    li      r5, 0x0
    stw     r0, 0x198(r8)
    li      r6, 0xc
    li      r7, 0x4
    stw     r0, 0x1a8(r8)
    stw     r0, 0x1ac(r8)
    bl      __construct_array
branch_0x800e3be0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__17THanaSamboManagerFR20JSUMemoryInputStream
load__17THanaSamboManagerFR20JSUMemoryInputStream: # 0x800e3bf8
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r24, 0x18(sp)
    addi    r24, r3, 0x0
    addi    r30, r5, 0xcc8
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x388
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800e3df4
    stw     r25, 0x10(sp)
    addi    r4, r30, 0x50c
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x524
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x524
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2d4(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5bdc(rtoc)
    addi    r3, r30, 0x534
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x534
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x2e8(r31)
    li      r0, 0xc8
    lis     r3, 0x803b
    stw     r0, 0x2f8(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x420
    stw     r26, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x420
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x430
    lfs     f0, -0x5bfc(rtoc)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x430
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x548
    lfs     f0, -0x5bf8(rtoc)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x548
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x324(r31)
    li      r0, 0x1e
    addi    r3, r30, 0x55c
    stw     r0, 0x334(r31)
    stw     r26, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x55c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x570
    lfs     f0, -0x5c24(rtoc)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x570
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x584
    lfs     f0, -0x5bd8(rtoc)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x584
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x598
    lfs     f0, -0x5bd4(rtoc)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x598
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    mr      r3, r31
    lfs     f0, -0x5bd0(rtoc)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x800e3df4:
    stw     r25, 0x38(r24)
    lmw     r24, 0x18(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__17THanaSamboManagerFPCc
__ct__17THanaSamboManagerFPCc: # 0x800e3e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0x5d38
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl drawObject__12TSamboFlowerFPQ26JDrama9TGraphics
drawObject__12TSamboFlowerFPQ26JDrama9TGraphics: # 0x800e3e48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800e3eec
    lfs     f1, -0x5c40(rtoc)
    li      r3, 0x0
    li      r0, 0x1
    stfs    f1, 0x1c(sp)
    addi    r4, sp, 0x10
    stfs    f1, 0x20(sp)
    stfs    f1, 0x24(sp)
    lfs     f0, -0x5bcc(rtoc)
    stfs    f1, 0x28(sp)
    stb     r3, 0x2c(sp)
    stb     r0, 0x2d(sp)
    stw     r3, 0x30(sp)
    stfs    f1, 0x10(sp)
    stfs    f1, 0x14(sp)
    stfs    f1, 0x18(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x1c(sp)
    lwz     r0, 0x4c(r31)
    lwz     r3, -0x6100(r13)
    clrrwi  r5, r0, 16
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
    lwz     r3, 0x74(r31)
    addi    r5, r31, 0x10
    lwz     r4, 0xc4(r31)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x74(r31)
    bl      entry__6MActorFv
branch_0x800e3eec:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl moveObject__12TSamboFlowerFv
moveObject__12TSamboFlowerFv: # 0x800e3f00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    lbz     r0, 0x150(r3)
    lis     r3, 0x8038
    addi    r31, r3, 0xcc8
    cmplwi  r0, 0x0
    beq-    branch_0x800e4060
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800e3f64
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x3dc
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x800e3f64
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x3e8
    bl      setBck__6MActorFPCc
branch_0x800e3f64:
    lbz     r0, 0x160(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800e4060
    lwz     r3, 0x154(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x154(r30)
    lwz     r3, 0x16c(r30)
    lwz     r4, 0x154(r30)
    lwz     r0, 0x108(r3)
    cmpw    r4, r0
    ble-    branch_0x800e4060
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x3e8
    li      r5, 0x0
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x800e4030
    li      r0, 0x0
    stb     r0, 0x150(r30)
    lwz     r4, 0x164(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x800e3fc8
    lwz     r3, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r4)
branch_0x800e3fc8:
    lwz     r3, 0x74(r30)
    addi    r4, r31, 0x3dc
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r30)
    li      r4, 0x0
    lha     r31, 0x8(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    xoris   r0, r31, 0x8000
    lfd     f1, -0x5c08(rtoc)
    stw     r0, 0x34(sp)
    lis     r0, 0x4330
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lwz     r31, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    fneg    f1, f1
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    b       branch_0x800e4060

branch_0x800e4030:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    lfs     f0, -0x5c44(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800e4060
    li      r0, 0x0
    stw     r0, 0x154(r30)
    addi    r4, r31, 0x5ac
    lwz     r3, 0x74(r30)
    bl      setBck__6MActorFPCc
branch_0x800e4060:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x800e4090
    lfs     f1, -0x5c20(rtoc)
    addi    r4, r30, 0xc4
    lfs     f0, 0x14(r30)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f3, 0x18(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x14(r30)
branch_0x800e4090:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl reset__12TSamboFlowerFv
reset__12TSamboFlowerFv: # 0x800e40a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__11TSpineEnemyFv
    lis     r4, 0x8038
    lwz     r3, 0x74(r31)
    addi    r4, r4, 0x1274
    bl      setBck__6MActorFPCc
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__12TSamboFlowerFP9THitActorUl
receiveMessage__12TSamboFlowerFP9THitActorUl: # 0x800e4114
    mflr    r0
    cmplwi  r5, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x800e41e4
    lbz     r0, 0x150(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800e41dc
    li      r0, 0x1
    stb     r0, 0x150(r30)
    li      r0, 0x0
    addi    r5, r30, 0x10
    stw     r0, 0x154(r30)
    li      r4, 0xb2
    li      r6, 0x0
    lwz     r3, -0x6070(r13)
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lis     r4, 0x8038
    lwz     r3, 0x74(r30)
    addi    r4, r4, 0x10a4
    bl      setBck__6MActorFPCc
    lbz     r0, 0x160(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800e41dc
    lwz     r4, 0x164(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x800e41dc
    lwz     r3, 0x0(r4)
    subi    r0, r3, 0x1
    stw     r0, 0x0(r4)
    lwz     r4, 0x164(r30)
    lwz     r3, -0x6044(r13)
    lwz     r4, 0x0(r4)
    addis   r31, r4, 0x1
    subi    r31, r31, 0x7647
    addi    r4, r31, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e41dc
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800e41dc:
    li      r3, 0x1
    b       branch_0x800e41e8

branch_0x800e41e4:
    li      r3, 0x0
branch_0x800e41e8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl setMActorAndKeeper__12TSamboFlowerFv
setMActorAndKeeper__12TSamboFlowerFv: # 0x800e4200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800e4238
    lwz     r4, 0x70(r30)
    addi    r3, r31, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800e4238:
    stw     r31, 0x78(r30)
    lis     r3, 0x8038
    addi    r4, r3, 0x1048
    lwz     r3, 0x78(r30)
    li      r5, 0x3
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    li      r5, 0x3
    lwz     r31, 0x74(r30)
    lwz     r4, 0x70(r30)
    lwz     r3, 0x4(r31)
    lwz     r4, 0x64(r4)
    lwz     r3, 0x4(r3)
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    mr      r3, r31
    bl      initDL__6MActorFv
    lwz     r3, 0x4(r31)
    bl      lock__8J3DModelFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl init__12TSamboFlowerFP12TLiveManager
init__12TSamboFlowerFP12TLiveManager: # 0x800e4298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r4, 0x70(r3)
    addi    r3, r4, 0x0
    addi    r4, r30, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x130(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x16c(r30)
    lwz     r3, 0x16c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800e4330
    lfs     f0, 0x2c(r3)
    stfs    f0, 0xbc(r30)
    lwz     r3, 0x16c(r30)
    lfs     f0, 0x40(r3)
    stfs    f0, 0x14c(r30)
    lwz     r3, 0x16c(r30)
    lfs     f0, 0x18(r3)
    stfs    f0, 0xc0(r30)
    lfs     f1, 0x148(r30)
    lfs     f0, 0xbc(r30)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r30)
branch_0x800e4330:
    lfs     f2, 0xc0(r30)
    lis     r31, 0x1000
    lfs     f1, 0xbc(r30)
    addi    r3, r30, 0x0
    fmr     f4, f2
    fmr     f3, f1
    addi    r4, r31, 0x27
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    addi    r3, r30, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 22, 20
    stw     r0, 0xf0(r30)
    bl      initAnmSound__10TLiveActorFv
    addi    r0, r31, 0x27
    stw     r0, 0x4c(r30)
    li      r0, 0x0
    stb     r0, 0x150(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl loadAfter__12TSamboFlowerFv
loadAfter__12TSamboFlowerFv: # 0x800e43ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x0
    blt-    branch_0x800e441c
    lfs     f0, -0x5c40(rtoc)
    addi    r6, sp, 0xc
    lfs     f1, -0x5c44(rtoc)
    addi    r5, sp, 0x18
    stfs    f0, 0x18(sp)
    addi    r4, sp, 0x24
    stfs    f1, 0xc(sp)
    subi    r3, rtoc, 0x5bc8
    stfs    f0, 0x24(sp)
    stfs    f1, 0x10(sp)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x28(sp)
    stfs    f1, 0x14(sp)
    stfs    f0, 0x20(sp)
    stfs    f0, 0x2c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    cmplwi  r3, 0x0
    beq-    branch_0x800e441c
    stw     r3, 0x168(r31)
branch_0x800e441c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl load__12TSamboFlowerFR20JSUMemoryInputStream
load__12TSamboFlowerFR20JSUMemoryInputStream: # 0x800e4430
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TSpineEnemyFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x15c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x158
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    li      r0, 0x1
    stb     r0, 0x160(r30)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl dropLeaf__19TSamboFlowerManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
dropLeaf__19TSamboFlowerManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_: # 0x800e44b0
    mflr    r0
    lis     r6, 0x8038
    stw     r0, 0x4(sp)
    addi    r7, r6, 0x1054
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stfd    f29, 0xf8(sp)
    stfd    f28, 0xf0(sp)
    stfd    f27, 0xe8(sp)
    stfd    f26, 0xe0(sp)
    stfd    f25, 0xd8(sp)
    stfd    f24, 0xd0(sp)
    stmw    r24, 0xb0(sp)
    mr      r25, r3
    mr      r26, r4
    mr      r27, r5
    addi    r31, sp, 0x90
    li      r29, 0x0
    li      r28, 0x0
    li      r24, 0x0
    lis     r30, 0x4330
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    lfs     f30, -0x5c00(rtoc)
    stw     r6, 0x90(sp)
    lfs     f31, -0x5bc0(rtoc)
    stw     r0, 0x94(sp)
    lfd     f26, -0x5c08(rtoc)
    lwz     r0, 0x8(r7)
    lfs     f27, -0x5c10(rtoc)
    lfs     f28, -0x5c40(rtoc)
    lfs     f29, -0x5bbc(rtoc)
    stw     r0, 0x98(sp)
branch_0x800e4538:
    lwz     r3, 0x60(r25)
    lwzx    r5, r3, r24
    lbz     r0, 0x44(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x800e4694
    lwz     r4, 0x0(r26)
    li      r0, 0x1
    lwz     r3, 0x4(r26)
    stw     r4, 0x14(r5)
    stw     r3, 0x18(r5)
    lwz     r3, 0x8(r26)
    stw     r3, 0x1c(r5)
    lfs     f0, 0x18(r5)
    fadds   f0, f0, f30
    stfs    f0, 0x18(r5)
    stb     r0, 0x44(r5)
    lwz     r3, 0x38(r25)
    lfs     f0, 0xb8(r3)
    lfs     f2, 0xcc(r3)
    fmuls   f1, f31, f0
    stfs    f0, 0x88(sp)
    fmuls   f0, f31, f2
    stfs    f1, 0x8c(sp)
    stfs    f2, 0x80(sp)
    stfs    f0, 0x84(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x88(sp)
    fsubs   f25, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x88(sp)
    stw     r0, 0xac(sp)
    lfs     f1, 0x84(sp)
    stw     r30, 0xa8(sp)
    lfs     f0, 0x80(sp)
    lfd     f3, 0xa8(sp)
    fsubs   f24, f1, f0
    fsubs   f0, f3, f26
    fmuls   f0, f27, f0
    fmuls   f0, f25, f0
    fadds   f25, f2, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f2, 0x80(sp)
    stw     r0, 0xa4(sp)
    fmr     f1, f28
    fmr     f3, f28
    addi    r3, sp, 0x44
    stw     r30, 0xa0(sp)
    lfd     f0, 0xa0(sp)
    stfs    f28, 0x74(sp)
    fsubs   f0, f0, f26
    fmuls   f0, f27, f0
    fmuls   f0, f24, f0
    fadds   f0, f2, f0
    stfs    f0, 0x78(sp)
    stfs    f25, 0x7c(sp)
    lfsx    f24, r31, r24
    fmr     f2, f24
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x74
    addi    r5, r4, 0x0
    addi    r3, sp, 0x44
    bl      PSMTXMultVec
    lwz     r3, 0x60(r25)
    fsubs   f0, f24, f29
    addi    r29, r29, 0x1
    lwzx    r3, r3, r24
    stfsu   f28, 0x20(r3)
    stfs    f0, 0x4(r3)
    stfs    f28, 0x8(r3)
    lwz     r4, 0x60(r25)
    lwz     r3, 0x74(sp)
    lwzx    r4, r4, r24
    lwz     r0, 0x78(sp)
    stw     r3, 0x38(r4)
    stw     r0, 0x3c(r4)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x40(r4)
    lwz     r4, 0x60(r25)
    lwz     r3, 0x0(r27)
    lwzx    r4, r4, r24
    lwz     r0, 0x4(r27)
    stw     r3, 0x2c(r4)
    stw     r0, 0x30(r4)
    lwz     r0, 0x8(r27)
    stw     r0, 0x34(r4)
branch_0x800e4694:
    cmpwi   r29, 0x3
    bge-    branch_0x800e46ac
    addi    r28, r28, 0x1
    cmpwi   r28, 0x12
    addi    r24, r24, 0x4
    blt+    branch_0x800e4538
branch_0x800e46ac:
    lmw     r24, 0xb0(sp)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lfd     f29, 0xf8(sp)
    lfd     f28, 0xf0(sp)
    lfd     f27, 0xe8(sp)
    lfd     f26, 0xe0(sp)
    lfd     f25, 0xd8(sp)
    lfd     f24, 0xd0(sp)
    addi    sp, sp, 0x110
    blr


.globl perform__19TSamboFlowerManagerFUlPQ26JDrama9TGraphics
perform__19TSamboFlowerManagerFUlPQ26JDrama9TGraphics: # 0x800e46e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x800e473c
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x800e473c
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800e4730

branch_0x800e471c:
    lwz     r3, 0x54(r27)
    lwzx    r3, r3, r31
    bl      checkGenCoin__20TSamboFlowerCoinUnitFv
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x800e4730:
    lwz     r0, 0x58(r27)
    cmpw    r30, r0
    blt+    branch_0x800e471c
branch_0x800e473c:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    li      r30, 0x0
    li      r31, 0x0
branch_0x800e4754:
    lwz     r3, 0x60(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x12
    addi    r31, r31, 0x4
    blt+    branch_0x800e4754
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl loadAfter__19TSamboFlowerManagerFv
loadAfter__19TSamboFlowerManagerFv: # 0x800e4798
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r21, 0x9c(sp)
    addi    r30, r4, 0xcc8
    addi    r29, r3, 0x0
    addi    r3, r30, 0x5b8
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r25, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r23, r3
    beq-    branch_0x800e47e8
    addi    r3, r25, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r23, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800e47e8:
    addi    r24, r23, 0x0
    li      r3, 0x48
    bl      __nwa__FUl
    lis     r5, 0x803e
    stw     r3, 0x60(r29)
    lis     r4, 0x803b
    lis     r3, 0x803c
    addi    r25, r5, 0x20f0
    addi    r26, r30, 0x5d4
    subi    r31, r4, 0x497c
    subi    r27, r3, 0x5b70
    li      r23, 0x0
    li      r28, 0x0
branch_0x800e481c:
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r22, r3
    beq-    branch_0x800e4890
    stw     r22, 0x88(sp)
    mr      r3, r26
    stw     r25, 0x0(r22)
    stw     r26, 0x4(r22)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r22)
    li      r0, 0x0
    li      r3, 0xac
    stw     r31, 0x0(r22)
    sth     r0, 0xc(r22)
    lwz     r4, 0x88(sp)
    stw     r27, 0x0(r4)
    stw     r0, 0x10(r4)
    stb     r0, 0x44(r4)
    stw     r29, 0x48(r4)
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x800e4888
    addi    r3, r21, 0x0
    addi    r4, r24, 0x0
    li      r5, 0x3
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x800e4888:
    lwz     r3, 0x88(sp)
    stw     r21, 0x10(r3)
branch_0x800e4890:
    lwz     r3, 0x60(r29)
    addi    r23, r23, 0x1
    cmpwi   r23, 0x12
    stwx    r22, r3, r28
    addi    r28, r28, 0x4
    blt+    branch_0x800e481c
    li      r0, 0x0
    stw     r0, 0x58(r29)
    li      r23, 0x0
    li      r28, 0x0
    b       branch_0x800e48ec

branch_0x800e48bc:
    lwz     r3, 0x18(r3)
    addi    r4, r30, 0x5e4
    lwzx    r3, r3, r28
    lwz     r3, 0x4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x800e48e4
    lwz     r3, 0x58(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x58(r29)
branch_0x800e48e4:
    addi    r23, r23, 0x1
    addi    r28, r28, 0x4
branch_0x800e48ec:
    lwz     r3, -0x62b0(r13)
    lwz     r0, 0x14(r3)
    cmpw    r23, r0
    blt+    branch_0x800e48bc
    lwz     r0, 0x58(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x54(r29)
    lwz     r0, 0x58(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    addi    r31, r3, 0x0
    li      r5, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x800e4938

branch_0x800e492c:
    stwx    r4, r31, r3
    addi    r5, r5, 0x1
    addi    r3, r3, 0x4
branch_0x800e4938:
    lwz     r0, 0x58(r29)
    cmpw    r5, r0
    blt+    branch_0x800e492c
    li      r23, 0x0
    li      r28, 0x0
    b       branch_0x800e499c

branch_0x800e4950:
    lwz     r3, 0x18(r29)
    addi    r4, r30, 0x5fc
    lwzx    r3, r3, r28
    lwz     r3, 0x4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x800e4994
    lwz     r3, 0x18(r29)
    lwz     r0, 0x58(r29)
    lwzx    r3, r3, r28
    lwz     r3, 0x158(r3)
    cmpw    r3, r0
    bge-    branch_0x800e4994
    slwi    r4, r3, 2
    lwzx    r3, r31, r4
    addi    r0, r3, 0x1
    stwx    r0, r31, r4
branch_0x800e4994:
    addi    r23, r23, 0x1
    addi    r28, r28, 0x4
branch_0x800e499c:
    lwz     r0, 0x14(r29)
    cmpw    r23, r0
    blt+    branch_0x800e4950
    li      r23, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x800e49fc

branch_0x800e49b8:
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r21, r3
    beq-    branch_0x800e49ec
    lwzx    r0, r31, r28
    stw     r27, 0x0(r21)
    slwi    r3, r0, 2
    stw     r27, 0x10(r21)
    stw     r0, 0x14(r21)
    stw     r27, 0x18(r21)
    stw     r0, 0x1c(r21)
    bl      __nwa__FUl
    stw     r3, 0x0(r21)
branch_0x800e49ec:
    lwz     r3, 0x54(r29)
    addi    r23, r23, 0x1
    stwx    r21, r3, r28
    addi    r28, r28, 0x4
branch_0x800e49fc:
    lwz     r0, 0x58(r29)
    cmpw    r23, r0
    blt+    branch_0x800e49b8
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x800e4a94

branch_0x800e4a14:
    lwz     r3, 0x18(r3)
    addi    r4, r30, 0x5e4
    lwzx    r3, r3, r28
    lwz     r3, 0x4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x800e4a8c
    lwz     r3, -0x62b0(r13)
    lwz     r0, 0x58(r29)
    lwz     r3, 0x18(r3)
    lwzx    r3, r3, r28
    lwz     r5, 0x158(r3)
    cmpw    r5, r0
    bge-    branch_0x800e4a8c
    lwz     r4, 0x54(r29)
    slwi    r0, r5, 2
    lwzx    r4, r4, r0
    stw     r3, 0x18(r4)
    lwz     r5, 0x54(r29)
    lwz     r4, 0x10(r3)
    lwzx    r5, r5, r0
    lwz     r0, 0x14(r3)
    stw     r4, 0x4(r5)
    stw     r0, 0x8(r5)
    lwz     r0, 0x18(r3)
    stw     r0, 0xc(r5)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800e4a8c:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x800e4a94:
    lwz     r3, -0x62b0(r13)
    lwz     r0, 0x14(r3)
    cmpw    r31, r0
    blt+    branch_0x800e4a14
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x800e4b28

branch_0x800e4ab0:
    lwz     r3, 0x18(r29)
    addi    r4, r30, 0x5fc
    lwzx    r3, r3, r28
    lwz     r3, 0x4(r3)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x800e4b20
    lwz     r3, 0x18(r29)
    lwz     r0, 0x58(r29)
    lwzx    r6, r3, r28
    lwz     r4, 0x158(r6)
    cmpw    r4, r0
    bge-    branch_0x800e4b20
    lwz     r3, 0x54(r29)
    slwi    r0, r4, 2
    lwzx    r5, r3, r0
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    cmpw    r3, r0
    bge-    branch_0x800e4b20
    lwz     r4, 0x0(r5)
    slwi    r3, r3, 2
    addi    r0, r5, 0x1c
    stwx    r6, r4, r3
    stw     r0, 0x164(r6)
    lwz     r3, 0x10(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r5)
branch_0x800e4b20:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x800e4b28:
    lwz     r0, 0x14(r29)
    cmpw    r31, r0
    blt+    branch_0x800e4ab0
    mr      r3, r29
    bl      loadAfter__Q26JDrama8TNameRefFv
    lmw     r21, 0x9c(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl createEnemyInstance__19TSamboFlowerManagerFv
createEnemyInstance__19TSamboFlowerManagerFv: # 0x800e4b50
    mflr    r0
    li      r3, 0x170
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800e4b80
    lis     r3, 0x8038
    addi    r4, r3, 0x12dc
    addi    r3, r31, 0x0
    bl      __ct__12TSamboFlowerFPCc
branch_0x800e4b80:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12TSamboFlowerFPCc
__ct__12TSamboFlowerFPCc: # 0x800e4b98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0x5ce0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stb     r4, 0x150(r31)
    stw     r4, 0x154(r31)
    stw     r0, 0x158(r31)
    stw     r0, 0x15c(r31)
    stb     r4, 0x160(r31)
    stw     r4, 0x164(r31)
    stw     r4, 0x168(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__19TSamboFlowerManagerFv
createModelData__19TSamboFlowerManagerFv: # 0x800e4c00
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x62b8
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__19TSamboFlowerManagerFR20JSUMemoryInputStream
load__19TSamboFlowerManagerFR20JSUMemoryInputStream: # 0x800e4c34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x1ac
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800e4c70
    lis     r3, 0x8038
    addi    r4, r3, 0x12ec
    addi    r3, r30, 0x0
    bl      __ct__26TSamboFlowerSaveLoadParamsFPCc
branch_0x800e4c70:
    lis     r3, 0x8038
    stw     r30, 0x38(r31)
    addi    r3, r3, 0x1304
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      loadMaterialTable__22J3DModelLoaderDataBaseFPCv
    stw     r3, 0x64(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__26TSamboFlowerSaveLoadParamsFPCc
__ct__26TSamboFlowerSaveLoadParamsFPCc: # 0x800e4ca0
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, 0xcc8
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x664
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x664
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0xa8(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x5c14(rtoc)
    addi    r3, r30, 0x678
    stfs    f0, 0xb8(r31)
    stw     r28, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x678
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xbc(r31)
    addi    r3, r30, 0x68c
    lfs     f0, -0x5bb8(rtoc)
    stfs    f0, 0xcc(r31)
    stw     r28, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x68c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xd0(r31)
    addi    r3, r30, 0x69c
    lfs     f0, -0x5bb4(rtoc)
    stfs    f0, 0xe0(r31)
    stw     r28, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x69c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0xe4(r31)
    addi    r3, r30, 0x6a8
    lfs     f0, -0x5bb0(rtoc)
    stfs    f0, 0xf4(r31)
    stw     r28, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x6a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42ac
    stw     r26, 0xf8(r31)
    li      r0, 0x12c
    lis     r3, 0x803b
    stw     r0, 0x108(r31)
    subi    r27, r3, 0x42b8
    addi    r3, r30, 0x6b8
    stw     r27, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x6b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x10c(r31)
    addi    r3, r30, 0x6c8
    lfs     f0, -0x5c20(rtoc)
    stfs    f0, 0x11c(r31)
    stw     r28, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x6c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x120(r31)
    addi    r3, r30, 0x6dc
    lfs     f0, -0x5bf0(rtoc)
    stfs    f0, 0x130(r31)
    stw     r28, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x6dc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x134(r31)
    addi    r3, r30, 0x6f0
    lfs     f0, -0x5c00(rtoc)
    stfs    f0, 0x144(r31)
    stw     r28, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x6f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x148(r31)
    addi    r3, r30, 0x704
    lfs     f0, -0x5bac(rtoc)
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x704
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x15c(r31)
    li      r0, 0xc8
    addi    r3, r30, 0x71c
    stw     r0, 0x16c(r31)
    stw     r27, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x71c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x72c
    lfs     f0, -0x5bf4(rtoc)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x72c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x73c
    lfs     f0, -0x5c00(rtoc)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x73c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    mr      r3, r31
    lfs     f0, -0x5c00(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl perform__10TSamboLeafFUlPQ26JDrama9TGraphics
perform__10TSamboLeafFUlPQ26JDrama9TGraphics: # 0x800e4f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    addi    r31, r4, 0x0
    stw     r30, 0xc0(sp)
    mr      r30, r3
    stw     r29, 0xbc(sp)
    lbz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e5148
    clrlwi. r0, r31, 31
    beq-    branch_0x800e4ffc
    lfs     f1, 0x14(r30)
    lfs     f0, 0x38(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0x3c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0x40(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r30)
    lfs     f1, 0x3c(r30)
    lfs     f0, -0x5ba8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800e4fc8
    lwz     r3, 0x48(r30)
    lwz     r3, 0x38(r3)
    lfs     f0, 0xe0(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(r30)
branch_0x800e4fc8:
    lfs     f1, -0x5bd8(rtoc)
    addi    r4, sp, 0x9c
    lfs     f0, 0x18(r30)
    lwz     r3, -0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x14(r30)
    lfs     f3, 0x1c(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, 0x18(r30)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800e4ffc
    li      r0, 0x0
    stb     r0, 0x44(r30)
branch_0x800e4ffc:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x800e5110
    lfs     f1, 0x24(r30)
    addi    r29, sp, 0x6c
    lfs     f0, -0x5c50(rtoc)
    mr      r3, r29
    lfs     f3, 0x1c(r30)
    fmuls   f0, f0, f1
    lfs     f2, 0x18(r30)
    lfs     f1, 0x14(r30)
    li      r4, 0x0
    li      r6, 0x0
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r5, 0xb4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    addi    r3, sp, 0x30
    addi    r4, r30, 0x38
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f1, 0x30(sp)
    addi    r4, sp, 0x3c
    lfs     f0, -0x5c50(rtoc)
    mr      r3, r29
    fneg    f1, f1
    lwz     r0, -0x5eac(r13)
    mr      r5, r29
    lwz     r8, -0x5ea8(r13)
    fmuls   f0, f0, f1
    lwz     r6, -0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r7, 0xac(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f3, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lfs     f1, -0x5c40(rtoc)
    stfs    f1, 0x44(sp)
    stfs    f1, 0x48(sp)
    stfs    f2, 0x4c(sp)
    stfs    f3, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f1, 0x58(sp)
    stfs    f1, 0x5c(sp)
    stfs    f1, 0x60(sp)
    lfs     f0, -0x5c44(rtoc)
    stfs    f0, 0x64(sp)
    stfs    f1, 0x68(sp)
    bl      PSMTXConcat
    lwz     r4, 0x10(r30)
    addi    r3, r29, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r4, 0x10(r30)
    lwz     r3, 0x2c(r30)
    lwz     r0, 0x30(r30)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x34(r30)
    stw     r0, 0x1c(r4)
    lwz     r3, 0x10(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x800e5110:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x800e512c
    lwz     r3, 0x10(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x800e512c:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x800e5148
    lwz     r3, 0x10(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x800e5148:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xc8
    blr


.globl checkGenCoin__20TSamboFlowerCoinUnitFv
checkGenCoin__20TSamboFlowerCoinUnitFv: # 0x800e5164
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stfd    f28, 0x100(sp)
    stfd    f27, 0xf8(sp)
    stfd    f26, 0xf0(sp)
    stfd    f25, 0xe8(sp)
    stmw    r23, 0xc4(sp)
    mr      r24, r3
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e5488
    lis     r3, 0x8038
    addi    r25, r3, 0x10b0
    li      r26, 0x1
    li      r27, 0x0
    li      r23, 0x0
    b       branch_0x800e51f8

branch_0x800e51b8:
    lwz     r3, 0x0(r24)
    addi    r4, r25, 0x0
    li      r5, 0x0
    lwzx    r3, r3, r23
    lwz     r3, 0x74(r3)
    bl      checkCurAnm__6MActorFPCci
    cmpwi   r3, 0x0
    beq-    branch_0x800e51e0
    li      r0, 0x1
    b       branch_0x800e51e4

branch_0x800e51e0:
    li      r0, 0x0
branch_0x800e51e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800e51f0
    li      r26, 0x0
branch_0x800e51f0:
    addi    r27, r27, 0x1
    addi    r23, r23, 0x4
branch_0x800e51f8:
    lwz     r0, 0x10(r24)
    cmpw    r27, r0
    blt+    branch_0x800e51b8
    clrlwi. r0, r26, 24
    beq-    branch_0x800e5488
    li      r6, 0x0
    li      r7, 0x0
    li      r3, 0x0
    li      r4, 0x0
    b       branch_0x800e5244

branch_0x800e5220:
    lwz     r5, 0x0(r24)
    lwzx    r5, r5, r3
    lwz     r0, 0x168(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800e5238
    addi    r6, r6, 0x1
branch_0x800e5238:
    stb     r4, 0x160(r5)
    addi    r7, r7, 0x1
    addi    r3, r3, 0x4
branch_0x800e5244:
    lwz     r0, 0x10(r24)
    cmpw    r7, r0
    blt+    branch_0x800e5220
    cmpwi   r6, 0x0
    ble-    branch_0x800e5480
    lfs     f26, -0x5c40(rtoc)
    xoris   r30, r6, 0x8000
    lfd     f27, -0x5c08(rtoc)
    addi    r28, sp, 0x6c
    lfs     f28, -0x5c50(rtoc)
    lfs     f29, -0x5ba4(rtoc)
    li      r27, 0x0
    lfs     f30, -0x5c44(rtoc)
    li      r26, 0x0
    lfs     f31, -0x5c1c(rtoc)
    li      r23, 0x0
    lis     r31, 0x2000
    lis     r29, 0x4330
    b       branch_0x800e544c

branch_0x800e5290:
    lwz     r3, 0x0(r24)
    lwzx    r3, r3, r23
    lwz     r0, 0x168(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800e5444
    xoris   r0, r27, 0x8000
    stw     r30, 0xb4(sp)
    lwz     r5, 0x16c(r3)
    addi    r4, sp, 0x60
    stw     r0, 0xbc(sp)
    mr      r3, r28
    lfs     f2, 0x11c(r5)
    stw     r29, 0xb8(sp)
    mr      r5, r4
    stw     r29, 0xb0(sp)
    lfd     f1, 0xb8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f27
    stfs    f26, 0x60(sp)
    fsubs   f0, f0, f27
    stfs    f26, 0x64(sp)
    fdivs   f25, f1, f0
    stfs    f2, 0x68(sp)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    fmuls   f0, f29, f25
    fmuls   f0, f28, f0
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r7, 0xac(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f2, r6, r0
    fneg    f0, f1
    stfs    f2, 0x6c(sp)
    stfs    f26, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f26, 0x78(sp)
    stfs    f26, 0x7c(sp)
    stfs    f30, 0x80(sp)
    stfs    f26, 0x84(sp)
    stfs    f26, 0x88(sp)
    stfs    f0, 0x8c(sp)
    stfs    f26, 0x90(sp)
    stfs    f2, 0x94(sp)
    stfs    f26, 0x98(sp)
    bl      PSMTXMultVec
    lwz     r3, 0x0(r24)
    lwzx    r3, r3, r23
    lwz     r4, 0x168(r3)
    lwz     r3, 0x4c(r4)
    addi    r25, r4, 0x0
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x800e5380
    li      r0, 0x1
    b       branch_0x800e5384

branch_0x800e5380:
    li      r0, 0x0
branch_0x800e5384:
    clrlwi. r0, r0, 24
    beq-    branch_0x800e539c
    lwz     r3, -0x62b0(r13)
    addi    r4, r31, 0xe
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r25, r3
branch_0x800e539c:
    cmplwi  r25, 0x0
    beq-    branch_0x800e5444
    mr      r3, r25
    lwz     r12, 0x0(r25)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x4(r24)
    addi    r3, sp, 0x2c
    lwz     r0, 0x8(r24)
    addi    r4, sp, 0x60
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0xc(r24)
    stw     r0, 0x34(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0x2c(sp)
    addi    r3, sp, 0x60
    lwz     r0, 0x30(sp)
    mr      r4, r3
    stw     r5, 0x10(r25)
    stw     r0, 0x14(r25)
    lwz     r0, 0x34(sp)
    stw     r0, 0x18(r25)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x0(r24)
    addi    r27, r27, 0x1
    lfs     f0, 0x60(sp)
    lwzx    r3, r3, r23
    lfs     f2, 0x68(sp)
    lwz     r3, 0x16c(r3)
    lfs     f4, 0x130(r3)
    lfs     f3, 0x144(r3)
    fmuls   f1, f0, f4
    fmadds  f0, f31, f25, f3
    fmuls   f2, f2, f4
    stfs    f1, 0xac(r25)
    stfs    f0, 0xb0(r25)
    stfs    f2, 0xb4(r25)
    lwz     r0, 0xf0(r25)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r25)
branch_0x800e5444:
    addi    r26, r26, 0x1
    addi    r23, r23, 0x4
branch_0x800e544c:
    lwz     r0, 0x10(r24)
    cmpw    r26, r0
    blt+    branch_0x800e5290
    lwz     r3, -0x6044(r13)
    li      r4, 0x4813
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800e5480
    addi    r4, r27, 0x0
    li      r3, 0x4813
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x800e5480:
    li      r0, 0x0
    stw     r0, 0x18(r24)
branch_0x800e5488:
    lmw     r23, 0xc4(sp)
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lfd     f28, 0x100(sp)
    lfd     f27, 0xf8(sp)
    lfd     f26, 0xf0(sp)
    lfd     f25, 0xe8(sp)
    addi    sp, sp, 0x120
    blr


.globl __dt__10TSamboHeadFv
__dt__10TSamboHeadFv: # 0x800e54b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e5538
    lis     r3, 0x803c
    subi    r3, r3, 0x61f4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e5528
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e5528
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800e5528:
    extsh.  r0, r31
    ble-    branch_0x800e5538
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e5538:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TSamboHeadManagerFv
__dt__17TSamboHeadManagerFv: # 0x800e5554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e55ac
    lis     r3, 0x803c
    subi    r0, r3, 0x603c
    stw     r0, 0x0(r30)
    beq-    branch_0x800e559c
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800e559c:
    extsh.  r0, r31
    ble-    branch_0x800e55ac
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e55ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl behaveToWater__10THanaSamboFP9THitActor
behaveToWater__10THanaSamboFP9THitActor: # 0x800e55c8
    blr


.globl isHitValid__10THanaSamboFUl
isHitValid__10THanaSamboFUl: # 0x800e55cc
    cmplwi  r4, 0xb
    bne-    branch_0x800e55e8
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r3)
    li      r3, 0x1
    blr

branch_0x800e55e8:
    li      r3, 0x0
    blr


.globl isCollidMove__10THanaSamboFP9THitActor
isCollidMove__10THanaSamboFP9THitActor: # 0x800e55f0
    li      r3, 0x0
    blr


.globl __dt__10THanaSamboFv
__dt__10THanaSamboFv: # 0x800e55f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e5660
    lis     r3, 0x803c
    subi    r3, r3, 0x5f84
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e5650
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800e5650:
    extsh.  r0, r31
    ble-    branch_0x800e5660
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e5660:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14THanaSamboHeadFv
__dt__14THanaSamboHeadFv: # 0x800e567c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e56e4
    lis     r3, 0x803c
    subi    r3, r3, 0x5ddc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800e56d4
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800e56d4:
    extsh.  r0, r31
    ble-    branch_0x800e56e4
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e56e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17THanaSamboManagerFv
__dt__17THanaSamboManagerFv: # 0x800e5700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e5758
    lis     r3, 0x803c
    subi    r0, r3, 0x5d38
    stw     r0, 0x0(r30)
    beq-    branch_0x800e5748
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800e5748:
    extsh.  r0, r31
    ble-    branch_0x800e5758
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e5758:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__12TSamboFlowerFv
control__12TSamboFlowerFv: # 0x800e5774
    blr


.globl __dt__12TSamboFlowerFv
__dt__12TSamboFlowerFv: # 0x800e5778
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e57c8
    lis     r3, 0x803c
    subi    r3, r3, 0x5ce0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800e57c8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e57c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19TSamboFlowerManagerFv
__dt__19TSamboFlowerManagerFv: # 0x800e57e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e582c
    lis     r3, 0x803c
    subi    r0, r3, 0x5bc8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800e582c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e582c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TSamboLeafFv
__dt__10TSamboLeafFv: # 0x800e5848
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800e58a0
    lis     r3, 0x803c
    subi    r0, r3, 0x5b70
    stw     r0, 0x0(r30)
    beq-    branch_0x800e5890
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800e5890:
    extsh.  r0, r31
    ble-    branch_0x800e58a0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800e58a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_hanasambo_cpp
__sinit_hanasambo_cpp: # 0x800e58bc
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x2178
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5904
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800e5904:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5934
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800e5934:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5964
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800e5964:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5994
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800e5994:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800e59c4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800e59c4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800e59f4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800e59f4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5a24
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800e5a24:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5a54
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800e5a54:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5a84
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800e5a84:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5ab4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800e5ab4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5ae4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800e5ae4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5b14
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800e5b14:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5b44
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800e5b44:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5b74
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800e5b74:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800e5ba4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800e5ba4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TSamboFlowerFv
_32___dt__12TSamboFlowerFv: # 0x800e5bb8
    subi    r3, r3, 0x20
    b       __dt__12TSamboFlowerFv


.globl _32___dt__14THanaSamboHeadFv
_32___dt__14THanaSamboHeadFv: # 0x800e5bc0
    subi    r3, r3, 0x20
    b       __dt__14THanaSamboHeadFv


.globl _32___dt__10THanaSamboFv
_32___dt__10THanaSamboFv: # 0x800e5bc8
    subi    r3, r3, 0x20
    b       __dt__10THanaSamboFv


.globl _32___dt__10TSamboHeadFv
_32___dt__10TSamboHeadFv: # 0x800e5bd0
    subi    r3, r3, 0x20
    b       __dt__10TSamboHeadFv

