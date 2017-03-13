
.globl drawSyncCallback__6TMarioFUs
drawSyncCallback__6TMarioFUs: # 0x8024d17c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lhz     r0, 0x114(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8024d1a8
    li      r0, 0x1
    b       branch_0x8024d1ac

branch_0x8024d1a8:
    li      r0, 0x0
branch_0x8024d1ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d290
    lfs     f0, 0x450(r30)
    lfs     f1, -0x100c(rtoc)
    fcmpo   cr0, f0, f1
    blt-    branch_0x8024d22c
    lfs     f0, 0x454(r30)
    fcmpo   cr0, f0, f1
    blt-    branch_0x8024d22c
    bl      SMSGetGameRenderWidth__Fv
    clrlwi  r0, r3, 16
    lfd     f2, -0x1008(rtoc)
    stw     r0, 0x24(sp)
    lis     r31, 0x4330
    lfs     f0, 0x450(r30)
    stw     r31, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    beq-    branch_0x8024d22c
    bl      SMSGetGameRenderHeight__Fv
    clrlwi  r0, r3, 16
    lfd     f1, -0x1008(rtoc)
    stw     r0, 0x24(sp)
    lfs     f2, 0x454(r30)
    stw     r31, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8024d23c
branch_0x8024d22c:
    lwz     r0, 0x118(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x118(r30)
    b       branch_0x8024d290

branch_0x8024d23c:
    lfs     f1, 0x450(r30)
    fctiwz  f0, f2
    addi    r5, sp, 0x14
    fctiwz  f1, f1
    stfd    f0, 0x18(sp)
    stfd    f1, 0x20(sp)
    lwz     r4, 0x1c(sp)
    lwz     r3, 0x24(sp)
    bl      GXPeekARGB
    lwz     r0, 0x14(sp)
    clrrwi  r3, r0, 24
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x0
    bne-    branch_0x8024d284
    lwz     r0, 0x118(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x118(r30)
    b       branch_0x8024d290

branch_0x8024d284:
    lwz     r0, 0x118(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x118(r30)
branch_0x8024d290:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl perform__6TMarioFUlPQ26JDrama9TGraphics
perform__6TMarioFUlPQ26JDrama9TGraphics: # 0x8024d2a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x168(sp)
    stmw    r27, 0x154(sp)
    mr      r31, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    lhz     r0, 0x114(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024d31c
    li      r0, 0xff
    lwz     r27, -0x5ff8(r13)
    stb     r0, 0x138(sp)
    li      r3, 0x0
    li      r0, 0x80
    stb     r3, 0x139(sp)
    cmplwi  r27, 0x0
    stb     r3, 0x13a(sp)
    stb     r0, 0x13b(sp)
    lwz     r28, 0x138(sp)
    beq-    branch_0x8024d31c
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8024d31c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 10, 10
    beq-    branch_0x8024d330
    li      r0, 0x1
    b       branch_0x8024d334

branch_0x8024d330:
    li      r0, 0x0
branch_0x8024d334:
    clrlwi. r0, r0, 24
    bne-    branch_0x8024daf8
    clrlwi. r28, r29, 31
    beq-    branch_0x8024d4ac
    lha     r3, 0x14e(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8024d36c
    subi    r0, r3, 0x1
    sth     r0, 0x14e(r31)
    lha     r0, 0x14e(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8024d36c
    lha     r0, 0x924(r31)
    sth     r0, 0x150(r31)
branch_0x8024d36c:
    lha     r3, 0x150(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8024d380
    subi    r0, r3, 0x1
    sth     r0, 0x150(r31)
branch_0x8024d380:
    lha     r0, 0x14e(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8024d40c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r30
    lwz     r12, 0xcc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      setPositions__6TMarioFv
    lwz     r3, 0x3e0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d3d0
    lwz     r12, 0x0(r3)
    addi    r5, r30, 0x0
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d3d0:
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d3f4
    lwz     r12, 0x0(r3)
    addi    r5, r30, 0x0
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d3f4:
    lwz     r3, 0x3f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d404
    bl      movement__6TYoshiFv
branch_0x8024d404:
    mr      r3, r31
    bl      moveParticle__6TMarioFv
branch_0x8024d40c:
    lwz     r0, MarioActor(r13)
    cmplw   r0, r31
    bne-    branch_0x8024d420
    li      r0, 0x1
    b       branch_0x8024d424

branch_0x8024d420:
    li      r0, 0x0
branch_0x8024d424:
    cmpwi   r0, 0x0
    beq-    branch_0x8024d4a4
    lwz     r3, 0x10(r31)
    addi    r4, sp, 0x118
    lwz     r0, 0x14(r31)
    lwz     r27, -0x70dc(r13)
    stw     r3, 0x118(sp)
    lfs     f0, -0x1000(rtoc)
    mr      r3, r27
    stw     r0, 0x11c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x120(sp)
    lfs     f1, 0x11c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x11c(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x1c(r27)
    addi    r4, sp, 0x118
    lwz     r27, -0x70d8(r13)
    mr      r3, r27
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x1c(r27)
    addi    r4, sp, 0x118
    lwz     r27, -0x70d4(r13)
    mr      r3, r27
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x1c(r27)
    addi    r4, sp, 0x118
    lwz     r27, -0x70d0(r13)
    mr      r3, r27
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x1c(r27)
branch_0x8024d4a4:
    mr      r3, r31
    bl      soundMovement__6TMarioFv
branch_0x8024d4ac:
    cmplwi  r28, 0x0
    beq-    branch_0x8024d590
    lha     r0, 0x14e(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8024d590
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 11, 11
    beq-    branch_0x8024d4d4
    li      r0, 0x1
    b       branch_0x8024d4d8

branch_0x8024d4d4:
    li      r0, 0x0
branch_0x8024d4d8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d504
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x28(r3)
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
    b       branch_0x8024d524

branch_0x8024d504:
    lwz     r3, 0x3a8(r31)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x28(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8024d524:
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x2
    bl      calcAnim__6TMarioFUlPQ26JDrama9TGraphics
    mr      r3, r31
    bl      animSound__6TMarioFv
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d580
    lwz     r4, 0x3a8(r31)
    lbz     r0, 0x3c5(r31)
    lwz     r4, 0x8(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      setBaseTRMtx__9TWaterGunFPA4_f
    lwz     r3, 0x3e4(r31)
    addi    r5, r30, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d580:
    lwz     r3, 0x3f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d590
    bl      calcAnim__6TYoshiFv
branch_0x8024d590:
    rlwinm. r0, r29, 0, 29, 29
    beq-    branch_0x8024d630
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      calcView__6TMarioFPQ26JDrama9TGraphics
    lwz     r3, 0x3e4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d5c8
    lwz     r12, 0x0(r3)
    addi    r5, r30, 0x0
    li      r4, 0x4
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d5c8:
    lwz     r3, 0x3f0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8024d5d8
    bl      viewCalc__6TYoshiFv
branch_0x8024d5d8:
    lwz     r0, MarioActor(r13)
    cmplw   r31, r0
    bne-    branch_0x8024d630
    lhz     r0, 0x96(r31)
    addi    r3, r30, 0xb4
    lwz     r7, -0x5eac(r13)
    addi    r5, r31, 0x4f0
    lwz     r4, -0x5ea8(r13)
    sraw    r0, r0, r7
    lfs     f0, -0x100c(rtoc)
    slwi    r0, r0, 2
    lwz     r6, -0x5ea4(r13)
    lfsx    f1, r4, r0
    addi    r4, sp, 0x13c
    stfs    f1, 0x13c(sp)
    stfs    f0, 0x140(sp)
    lhz     r0, 0x96(r31)
    sraw    r0, r0, r7
    slwi    r0, r0, 2
    lfsx    f0, r6, r0
    stfs    f0, 0x144(sp)
    bl      PSMTXMultVecSR
branch_0x8024d630:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x8024d724
    lhz     r0, 0x114(r31)
    li      r3, 0x1
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x8024d64c
    li      r3, 0x0
branch_0x8024d64c:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8024d660
    li      r0, 0x1
    b       branch_0x8024d664

branch_0x8024d660:
    li      r0, 0x0
branch_0x8024d664:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d670
    li      r3, 0x0
branch_0x8024d670:
    cmpwi   r3, 0x1
    bne-    branch_0x8024d70c
    mr      r3, r31
    bl      addDirty__6TMarioFv
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      addDamageFog__6TMarioFPQ26JDrama9TGraphics
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024d6a0
    li      r0, 0x1
    b       branch_0x8024d6a4

branch_0x8024d6a0:
    li      r0, 0x0
branch_0x8024d6a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d6c8
    lwz     r3, 0x3e4(r31)
    addi    r5, r30, 0x0
    li      r4, 0x200
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d6c8:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      entryModels__6TMarioFPQ26JDrama9TGraphics
    lwz     r3, 0x3f0(r31)
    bl      entry__6TYoshiFv
    lfs     f1, 0x368(r31)
    lfs     f0, -0x100c(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8024d6f4
    li      r0, 0x1
    b       branch_0x8024d6f8

branch_0x8024d6f4:
    li      r0, 0x0
branch_0x8024d6f8:
    cmpwi   r0, 0x0
    bne-    branch_0x8024d724
    lwz     r3, 0x390(r31)
    bl      entryDrawShadow__16TMBindShadowBodyFv
    b       branch_0x8024d724

branch_0x8024d70c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8024d724
    lwz     r3, 0x3f0(r31)
    bl      entry__6TYoshiFv
branch_0x8024d724:
    rlwinm. r0, r29, 0, 5, 5
    beq-    branch_0x8024d768
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8024d740
    li      r0, 0x1
    b       branch_0x8024d744

branch_0x8024d740:
    li      r0, 0x0
branch_0x8024d744:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d768
    lwz     r3, 0x3e4(r31)
    addi    r5, r30, 0x0
    lis     r4, 0x400
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d768:
    rlwinm. r0, r29, 0, 3, 3
    beq-    branch_0x8024d7d0
    lwz     r3, 0x394(r31)
    bl      frameInit__13J3DDrawBufferFv
    lwz     r3, 0x398(r31)
    bl      frameInit__13J3DDrawBufferFv
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x44(r3)
    addi    r4, r3, 0x44
    stw     r0, 0x39c(r31)
    lwzu    r0, 0x48(r3)
    stw     r0, 0x3a0(r31)
    lwz     r0, 0x394(r31)
    stw     r0, 0x0(r4)
    lwz     r0, 0x398(r31)
    stw     r0, 0x0(r3)
    lwz     r3, 0x53c(r31)
    bl      movement__19TTrembleModelEffectFv
    lwz     r3, 0x3e0(r31)
    addi    r5, r30, 0x0
    lis     r4, 0x1000
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8024d7d0:
    rlwinm. r0, r29, 0, 4, 4
    beq-    branch_0x8024d7f0
    lis     r3, 0x8040
    lwz     r0, 0x39c(r31)
    addi    r3, r3, 0x45dc
    stw     r0, 0x44(r3)
    lwz     r0, 0x3a0(r31)
    stw     r0, 0x48(r3)
branch_0x8024d7f0:
    rlwinm. r0, r29, 0, 1, 1
    beq-    branch_0x8024d83c
    lhz     r0, 0x114(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8024d80c
    li      r0, 0x1
    b       branch_0x8024d810

branch_0x8024d80c:
    li      r0, 0x0
branch_0x8024d810:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d83c
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r0, 0x3
    stw     r0, 0x4c(r3)
    lwz     r3, 0x394(r31)
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x3f0(r31)
    lwz     r3, 0xa8(r3)
    bl      draw__13J3DDrawBufferCFv
branch_0x8024d83c:
    rlwinm. r0, r29, 0, 2, 2
    beq-    branch_0x8024d888
    lhz     r0, 0x114(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8024d858
    li      r0, 0x1
    b       branch_0x8024d85c

branch_0x8024d858:
    li      r0, 0x0
branch_0x8024d85c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d888
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r0, 0x4
    stw     r0, 0x4c(r3)
    lwz     r3, 0x398(r31)
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x3f0(r31)
    lwz     r3, 0xac(r3)
    bl      draw__13J3DDrawBufferCFv
branch_0x8024d888:
    rlwinm. r0, r29, 0, 7, 7
    beq-    branch_0x8024d8a8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    mr      r4, r30
    lwz     r12, 0xd4(r12)
    mtlr    r12
    blrl
branch_0x8024d8a8:
    rlwinm. r0, r29, 0, 6, 6
    beq-    branch_0x8024d918
    lhz     r0, 0x114(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8024d8c4
    li      r0, 0x1
    b       branch_0x8024d8c8

branch_0x8024d8c4:
    li      r0, 0x0
branch_0x8024d8c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d918
    addi    r4, r30, 0xb4
    addi    r3, r31, 0x0
    bl      boxDrawPrepare__6TMarioFPA4_f
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x10
    bl      GXSetDstAlpha
    bl      GXDrawCube
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
branch_0x8024d918:
    rlwinm. r0, r29, 0, 8, 8
    beq-    branch_0x8024d988
    lhz     r0, 0x114(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8024d934
    li      r0, 0x1
    b       branch_0x8024d938

branch_0x8024d934:
    li      r0, 0x0
branch_0x8024d938:
    clrlwi. r0, r0, 24
    beq-    branch_0x8024d988
    addi    r4, r30, 0xb4
    addi    r3, r31, 0x0
    bl      boxDrawPrepare__6TMarioFPA4_f
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    bl      GXDrawCube
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    li      r3, 0x0
    li      r4, 0x0
    bl      GXSetDstAlpha
branch_0x8024d988:
    clrrwi. r0, r29, 31
    beq-    branch_0x8024dac0
    lhz     r0, 0x114(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8024dac0
    lis     r3, 0x8040
    addi    r29, r3, 0x45dc
    lwz     r0, 0x34(r29)
    addi    r28, r29, 0x34
    addi    r4, sp, 0x134
    ori     r0, r0, 0x2
    stw     r0, 0x34(r29)
    li      r3, 0x4
    lwz     r0, -0x1010(rtoc)
    stw     r0, 0x130(sp)
    lwz     r0, 0x130(sp)
    stw     r0, 0x134(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    lwz     r4, -0x6130(r13)
    li      r3, 0x1
    lfs     f0, 0x48(r4)
    fctiwz  f0, f0
    stfd    f0, 0x148(sp)
    lwz     r4, 0x14c(sp)
    bl      GXSetDstAlpha
    addi    r27, r29, 0x4c
    li      r0, 0x3
    stw     r0, 0x4c(r29)
    lwz     r3, 0x394(r31)
    bl      draw__13J3DDrawBufferCFv
    li      r0, 0x4
    stw     r0, 0x0(r27)
    lwz     r3, 0x398(r31)
    bl      draw__13J3DDrawBufferCFv
    addi    r4, r30, 0xb4
    addi    r3, r31, 0x0
    bl      boxDrawPrepare__6TMarioFPA4_f
    lwz     r3, -0x6130(r13)
    addi    r4, sp, 0x12c
    lwz     r0, 0x12(r3)
    li      r3, 0x4
    stw     r0, 0x12c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x6
    li      r5, 0x7
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x1
    bl      GXSetColorUpdate
    li      r3, 0x1
    bl      GXSetAlphaUpdate
    li      r3, 0x1
    li      r4, 0x0
    bl      GXSetDstAlpha
    bl      GXDrawCube
    lwz     r0, 0x0(r28)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x0(r28)
branch_0x8024dac0:
    lhz     r0, 0x114(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8024daf8
    lwz     r27, -0x5ff8(r13)
    cmplwi  r27, 0x0
    beq-    branch_0x8024daf8
    bl      OSGetTick
    lwz     r0, 0x814(r27)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mulli   r3, r0, 0x408
    addi    r3, r3, 0x4
    add     r3, r27, r3
    bl      append__10TTimeArrayFUlUl
branch_0x8024daf8:
    lmw     r27, 0x154(sp)
    lwz     r0, 0x16c(sp)
    addi    sp, sp, 0x168
    mtlr    r0
    blr


/* TMario::isMario((void))
Input:
r3: MarioActor
*/
.globl isMario__6TMarioFv
isMario__6TMarioFv: # 0x8024db0c
    lwz     r0, MarioActor(r13)
    cmplw   r0, r3
    bne-    branch_0x8024db20
    li      r3, 0x1
    blr

branch_0x8024db20:
    li      r3, 0x0
    blr


.globl __sinit_MarioMain_cpp
__sinit_MarioMain_cpp: # 0x8024db28
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x4848
    lfs     f1, -0x100c(rtoc)
    stfs    f1, 0x0(r31)
    lfs     f0, -0xffc(rtoc)
    stfs    f0, 0x4(r31)
    stfs    f1, 0x8(r31)
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8024db84
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8024db84:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dbb4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8024dbb4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dbe4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8024dbe4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dc14
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8024dc14:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dc44
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8024dc44:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dc74
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8024dc74:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dca4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8024dca4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dcd4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8024dcd4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dd04
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8024dd04:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dd34
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8024dd34:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dd64
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8024dd64:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8024dd94
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8024dd94:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8024ddc4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8024ddc4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8024ddf4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8024ddf4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8024de24
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8024de24:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
