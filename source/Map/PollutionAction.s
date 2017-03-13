
.globl action__15TPollutionLayerFv
action__15TPollutionLayerFv: # 0x80199f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stfd    f28, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    stw     r28, 0x70(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x8019a2e8
    lhz     r0, 0x30(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x8019a094
    bge-    branch_0x80199fb4
    cmpwi   r0, 0x1
    beq-    branch_0x80199fc8
    bge-    branch_0x8019a0ec
    b       branch_0x8019a0ec

branch_0x80199fb4:
    cmpwi   r0, 0x9
    bge-    branch_0x8019a0ec
    cmpwi   r0, 0x5
    bge-    branch_0x8019a0ec
    b       branch_0x80199fd4

branch_0x80199fc8:
    mr      r3, r31
    bl      fire__15TPollutionLayerFv
    b       branch_0x8019a0ec

branch_0x80199fd4:
    lwz     r0, 0x90(r31)
    mr      r3, r31
    lwz     r4, 0x98(r31)
    mulli   r0, r0, 0xc
    lfs     f1, -0x7aac(r13)
    add     r4, r4, r0
    bl      getPollutedPosNear__15TPollutionLayerFfPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a0ec
    lwz     r3, 0x8c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8c(r31)
    lwz     r0, 0x8c(r31)
    cmpwi   r0, 0xf
    ble-    branch_0x8019a0ec
    lwz     r0, 0x90(r31)
    li      r4, 0x3805
    lwz     r5, 0x98(r31)
    li      r6, 0x0
    mulli   r0, r0, 0xc
    lwz     r3, gpMSound(r13)
    lfs     f1, -0x41e8(rtoc)
    add     r5, r5, r0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x90(r31)
    mr      r7, r31
    lwz     r5, 0x98(r31)
    li      r4, 0x6f
    mulli   r0, r0, 0xc
    lwz     r3, gpMarioParticleManager(r13)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, 0x90(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x90(r31)
    lwz     r3, 0x90(r31)
    lwz     r0, 0x94(r31)
    cmpw    r3, r0
    blt-    branch_0x8019a088
    li      r0, 0x0
    stw     r0, 0x90(r31)
branch_0x8019a088:
    li      r0, 0x0
    stw     r0, 0x8c(r31)
    b       branch_0x8019a0ec

branch_0x8019a094:
    lfs     f1, -0x7aa8(r13)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x44
    bl      getPollutedPos__15TPollutionLayerFfPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a0ec
    lbz     r0, -0x62f4(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a0c8
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, -0x62f8(r13)
    stb     r0, -0x62f4(r13)
branch_0x8019a0c8:
    lwz     r3, -0x62f8(r13)
    lwz     r0, -0x7aa4(r13)
    cmpw    r3, r0
    bge-    branch_0x8019a0e4
    addi    r0, r3, 0x1
    stw     r0, -0x62f8(r13)
    b       branch_0x8019a0ec

branch_0x8019a0e4:
    li      r0, 0x0
    stw     r0, -0x62f8(r13)
branch_0x8019a0ec:
    lwz     r0, 0x90(r31)
    li      r29, 0x0
    lwz     r3, 0x98(r31)
    lis     r30, 0x4330
    mulli   r0, r0, 0xc
    lfs     f28, -0x7abc(r13)
    lfd     f29, -0x41d0(rtoc)
    lfs     f30, -0x41e4(rtoc)
    add     r28, r3, r0
    lfs     f31, -0x41e0(rtoc)
branch_0x8019a114:
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, MarioHitActorPos(r13)
    stw     r0, 0x6c(sp)
    lfs     f0, 0x0(r3)
    stw     r30, 0x68(sp)
    lfd     f1, 0x68(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fsubs   f1, f1, f31
    fmadds  f0, f28, f1, f0
    stfs    f0, 0x0(r28)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x4(r28)
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r4, MarioHitActorPos(r13)
    stw     r0, 0x64(sp)
    mr      r3, r31
    lfs     f0, 0x8(r4)
    stw     r30, 0x60(sp)
    lfd     f1, 0x60(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fsubs   f1, f1, f31
    fmadds  f0, f28, f1, f0
    stfs    f0, 0x8(r28)
    lwz     r12, 0x0(r31)
    lfs     f1, 0x0(r28)
    lwz     r12, 0x50(r12)
    lfs     f2, 0x4(r28)
    mtlr    r12
    lfs     f3, 0x8(r28)
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a1b0
    li      r0, 0x1
    b       branch_0x8019a1c0

branch_0x8019a1b0:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    blt+    branch_0x8019a114
    li      r0, 0x0
branch_0x8019a1c0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019a2e8
    lhz     r0, 0x30(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8019a284
    cmpwi   r0, 0x7
    beq-    branch_0x8019a284
    lwz     r0, 0x8c(r31)
    cmpwi   r0, 0xf
    ble-    branch_0x8019a278
    lwz     r5, -0x60ac(r13)
    lis     r0, 0x4330
    lwz     r3, 0x90(r31)
    li      r4, 0x1da
    lha     r5, 0x0(r5)
    lfd     f1, -0x41d0(rtoc)
    mulli   r6, r3, 0xc
    lwz     r7, 0x98(r31)
    lfs     f2, -0x41dc(rtoc)
    xoris   r5, r5, 0x8000
    lwz     r3, gpMarioParticleManager(r13)
    stw     r5, 0x64(sp)
    add     r5, r7, r6
    li      r6, 0x0
    stw     r0, 0x60(sp)
    li      r8, 0x0
    li      r9, 0x2
    lfd     f0, 0x60(sp)
    li      r10, 0x0
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x68(sp)
    lwz     r7, 0x6c(sp)
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    lwz     r3, 0x90(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x90(r31)
    lwz     r3, 0x90(r31)
    lwz     r0, 0x94(r31)
    cmpw    r3, r0
    blt-    branch_0x8019a270
    li      r0, 0x0
    stw     r0, 0x90(r31)
branch_0x8019a270:
    li      r0, 0x0
    stw     r0, 0x8c(r31)
branch_0x8019a278:
    lwz     r3, 0x8c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8c(r31)
branch_0x8019a284:
    lhz     r0, 0x32(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8019a2e8
    lwz     r3, 0x4c(r31)
    lwz     r0, -0x7ab8(r13)
    cmpw    r3, r0
    bge-    branch_0x8019a2ac
    addi    r0, r3, 0x1
    stw     r0, 0x4c(r31)
    b       branch_0x8019a2e8

branch_0x8019a2ac:
    li      r0, 0x0
    stw     r0, 0x4c(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x38
    lfs     f1, -0x7abc(r13)
    bl      getPollutedPosNear__15TPollutionLayerFfPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a2e8
    lfs     f3, 0x40(sp)
    li      r4, 0x1
    lfs     f2, 0x3c(sp)
    lfs     f1, 0x38(sp)
    lwz     r3, gpPollution(r13)
    lfs     f4, -0x41d8(rtoc)
    bl      stamp__17TPollutionManagerFUsffff
branch_0x8019a2e8:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lfd     f28, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    lwz     r28, 0x70(sp)
    addi    sp, sp, 0xa0
    blr


.globl getPlaneType__15TPollutionLayerCFv
getPlaneType__15TPollutionLayerCFv: # 0x8019a318
    li      r3, 0x0
    blr


.globl fire__15TPollutionLayerFv
fire__15TPollutionLayerFv: # 0x8019a320
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0x90(r3)
    lwz     r4, 0x98(r31)
    mulli   r0, r0, 0xc
    lfs     f1, -0x7ab4(r13)
    add     r4, r4, r0
    bl      getPollutedPosNear__15TPollutionLayerFfPQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a45c
    lwz     r3, 0x8c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8c(r31)
    lwz     r3, 0x8c(r31)
    lwz     r0, -0x7ab0(r13)
    cmpw    r3, r0
    ble-    branch_0x8019a45c
    lwz     r0, 0x90(r31)
    li      r4, 0x3803
    lwz     r5, 0x98(r31)
    li      r6, 0x0
    mulli   r0, r0, 0xc
    lwz     r3, gpMSound(r13)
    lfs     f1, -0x41e8(rtoc)
    add     r5, r5, r0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lwz     r0, 0x90(r31)
    mr      r7, r31
    lwz     r5, 0x98(r31)
    li      r4, 0x1dc
    mulli   r0, r0, 0xc
    lwz     r3, gpMarioParticleManager(r13)
    add     r5, r5, r0
    li      r6, 0x2
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8019a3e8
    lfs     f0, -0x41c8(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x8019a3e8:
    lwz     r0, 0x90(r31)
    mr      r7, r31
    lwz     r5, 0x98(r31)
    li      r4, 0x65
    mulli   r0, r0, 0xc
    lwz     r3, gpMarioParticleManager(r13)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8019a430
    lfs     f0, -0x41c8(rtoc)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x8019a430:
    lwz     r3, 0x90(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x90(r31)
    lwz     r3, 0x90(r31)
    lwz     r0, 0x94(r31)
    cmpw    r3, r0
    blt-    branch_0x8019a454
    li      r0, 0x0
    stw     r0, 0x90(r31)
branch_0x8019a454:
    li      r0, 0x0
    stw     r0, 0x8c(r31)
branch_0x8019a45c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getPollutedPos__15TPollutionLayerFfPQ29JGeometry8TVec3_f_
getPollutedPos__15TPollutionLayerFfPQ29JGeometry8TVec3_f_: # 0x8019a470
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stfd    f28, 0x40(sp)
    fmr     f28, f1
    stw     r31, 0x3c(sp)
    lis     r31, 0x4330
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x30(sp)
    mr      r28, r3
    lfd     f29, -0x41d0(rtoc)
    lfs     f30, -0x41e4(rtoc)
    lfs     f31, -0x41e0(rtoc)
branch_0x8019a4bc:
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, MarioHitActorPos(r13)
    stw     r0, 0x2c(sp)
    lfs     f0, 0x0(r3)
    stw     r31, 0x28(sp)
    lfd     f1, 0x28(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fsubs   f1, f1, f31
    fmadds  f0, f28, f1, f0
    stfs    f0, 0x0(r29)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x4(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r4, MarioHitActorPos(r13)
    stw     r0, 0x24(sp)
    mr      r3, r28
    lfs     f0, 0x8(r4)
    stw     r31, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f29
    fmuls   f1, f30, f1
    fsubs   f1, f1, f31
    fmadds  f0, f28, f1, f0
    stfs    f0, 0x8(r29)
    lwz     r12, 0x0(r28)
    lfs     f1, 0x0(r29)
    lwz     r12, 0x50(r12)
    lfs     f2, 0x4(r29)
    mtlr    r12
    lfs     f3, 0x8(r29)
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a558
    li      r3, 0x1
    b       branch_0x8019a568

branch_0x8019a558:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x5
    blt+    branch_0x8019a4bc
    li      r3, 0x0
branch_0x8019a568:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lfd     f28, 0x40(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x60
    blr


.globl getPollutedPosNear__15TPollutionLayerFfPQ29JGeometry8TVec3_f_
getPollutedPosNear__15TPollutionLayerFfPQ29JGeometry8TVec3_f_: # 0x8019a598
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stfd    f28, 0x90(sp)
    fmr     f28, f1
    stfd    f27, 0x88(sp)
    stmw    r25, 0x6c(sp)
    mr      r25, r3
    mr      r26, r4
    addi    r30, r25, 0x5c
    li      r29, 0x0
    lis     r31, 0x4330
    lfd     f29, -0x41d0(rtoc)
    lfs     f30, -0x41e4(rtoc)
    lfs     f31, -0x41e0(rtoc)
branch_0x8019a5e0:
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x64(sp)
    stw     r31, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f29
    fmuls   f27, f30, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, -0x7ac0(r13)
    stw     r0, 0x5c(sp)
    lwz     r3, MarioHitActorPos(r13)
    fadds   f1, f0, f27
    stw     r31, 0x58(sp)
    lfs     f0, 0x0(r3)
    lfd     f2, 0x58(sp)
    fsubs   f2, f2, f29
    fmuls   f2, f30, f2
    fsubs   f2, f2, f31
    fmuls   f1, f2, f1
    fmadds  f0, f1, f28, f0
    stfs    f0, 0x0(r26)
    bl      rand
    xoris   r0, r3, 0x8000
    stw     r0, 0x54(sp)
    stw     r31, 0x50(sp)
    lfd     f0, 0x50(sp)
    fsubs   f0, f0, f29
    fmuls   f27, f30, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, -0x7ac0(r13)
    stw     r0, 0x4c(sp)
    mr      r3, r25
    lwz     r4, MarioHitActorPos(r13)
    fadds   f1, f0, f27
    stw     r31, 0x48(sp)
    lfs     f0, 0x8(r4)
    lfd     f2, 0x48(sp)
    fsubs   f2, f2, f29
    fmuls   f2, f30, f2
    fsubs   f2, f2, f31
    fmuls   f1, f2, f1
    fmadds  f0, f1, f28, f0
    stfs    f0, 0x8(r26)
    lwz     r12, 0x0(r25)
    lfs     f1, 0x0(r26)
    lwz     r12, 0x54(r12)
    lfs     f2, -0x41e8(rtoc)
    mtlr    r12
    lfs     f3, 0x8(r26)
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8019a7a4
    mr      r3, r25
    lfs     f1, 0x0(r26)
    lwz     r12, 0x0(r25)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    mr      r0, r3
    lfs     f1, 0x8(r26)
    mr      r3, r25
    lwz     r12, 0x0(r25)
    mr      r28, r0
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    cmpwi   r28, 0x0
    addi    r27, r3, 0x0
    blt-    branch_0x8019a71c
    lwz     r0, 0x0(r30)
    cmpw    r0, r28
    ble-    branch_0x8019a71c
    cmpwi   r27, 0x0
    blt-    branch_0x8019a71c
    lwz     r0, 0x4(r30)
    cmpw    r0, r27
    bgt-    branch_0x8019a724
branch_0x8019a71c:
    li      r0, 0x0
    b       branch_0x8019a728

branch_0x8019a724:
    li      r0, 0x1
branch_0x8019a728:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019a7a4
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r5, r27, 0x0
    bl      getDepthWorld__13TPollutionPosCFii
    stfs    f1, 0x4(r26)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f1, 0x4(r26)
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8019a760
    li      r3, 0x0
    b       branch_0x8019a7b4

branch_0x8019a760:
    lwz     r3, 0x64(r25)
    srawi   r5, r28, 3
    srawi   r4, r27, 2
    lwz     r6, 0x54(r25)
    subi    r0, r3, 0x3
    slw     r0, r4, r0
    add     r0, r5, r0
    clrlwi  r3, r28, 29
    slwi    r0, r0, 5
    add     r0, r0, r3
    clrlslwi  r3, r27, 30, 3
    add     r0, r0, r6
    lbzx    r0, r3, r0
    cmplwi  r0, 0x0
    beq-    branch_0x8019a7a4
    li      r3, 0x1
    b       branch_0x8019a7b4

branch_0x8019a7a4:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x5
    blt+    branch_0x8019a5e0
    li      r3, 0x0
branch_0x8019a7b4:
    lmw     r25, 0x6c(sp)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lfd     f28, 0x90(sp)
    lfd     f27, 0x88(sp)
    addi    sp, sp, 0xb0
    blr


.globl getTexPosS__15TPollutionLayerCFf
getTexPosS__15TPollutionLayerCFf: # 0x8019a7dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x38(r3)
    addi    r3, r3, 0x5c
    fsubs   f1, f1, f0
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isInArea__15TPollutionLayerCFfff
isInArea__15TPollutionLayerCFfff: # 0x8019a808
    lfs     f0, 0x38(r3)
    fcmpo   cr0, f1, f0
    blt-    branch_0x8019a838
    lfs     f0, 0x3c(r3)
    fcmpo   cr0, f0, f1
    blt-    branch_0x8019a838
    lfs     f0, 0x40(r3)
    fcmpo   cr0, f3, f0
    blt-    branch_0x8019a838
    lfs     f0, 0x44(r3)
    fcmpo   cr0, f0, f3
    bge-    branch_0x8019a840
branch_0x8019a838:
    li      r3, 0x0
    blr

branch_0x8019a840:
    li      r3, 0x1
    blr


.globl __sinit_PollutionAction_cpp
__sinit_PollutionAction_cpp: # 0x8019a848
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7b80
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a890
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8019a890:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a8c0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8019a8c0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a8f0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8019a8f0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a920
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8019a920:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a950
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8019a950:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a980
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8019a980:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a9b0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8019a9b0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019a9e0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8019a9e0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019aa10
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8019aa10:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019aa40
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8019aa40:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019aa70
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8019aa70:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019aaa0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8019aaa0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019aad0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8019aad0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ab00
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8019ab00:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ab30
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8019ab30:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

