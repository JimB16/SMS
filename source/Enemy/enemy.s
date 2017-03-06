
.globl perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
perform__11TSpineEnemyFUlPQ26JDrama9TGraphics: # 0x80039f64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r0, 0x70(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x80039fe0
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80039ffc
    lwz     r4, 0xf0(r29)
    rlwinm. r0, r4, 0, 29, 30
    bne-    branch_0x80039ffc
    lbz     r0, -0x7f80(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80039ffc
    lwz     r0, 0x4c(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80039ffc
    andi.   r0, r4, 0x201
    bne-    branch_0x8003a00c
    mr      r4, r29
    bl      copyAnmMtx__13TEnemyManagerFP11TSpineEnemy
    clrlwi. r0, r3, 24
    beq-    branch_0x80039ffc
    b       branch_0x8003a00c

branch_0x80039fe0:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80039ffc
    lwz     r3, 0xf0(r29)
    rlwinm. r0, r3, 0, 29, 30
    bne-    branch_0x80039ffc
    andi.   r0, r3, 0x201
    bne-    branch_0x8003a00c
branch_0x80039ffc:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__10TLiveActorFUlPQ26JDrama9TGraphics
branch_0x8003a00c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl checkCurAnmEnd__11TSpineEnemyCFi
checkCurAnmEnd__11TSpineEnemyCFi: # 0x8003a028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r3, 0x74(r3)
    lwz     r31, 0x70(r29)
    bl      getCurAnmIdx__6MActorCFi
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      getSharedMActorSet__13TEnemyManagerFi
    cmplwi  r3, 0x0
    bne-    branch_0x8003a07c
    lwz     r3, 0x74(r29)
    addi    r4, r30, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    b       branch_0x8003a0a8

branch_0x8003a07c:
    lwz     r6, 0x4(r3)
    mr      r4, r30
    lha     r7, 0x7c(r29)
    li      r5, 0x0
    lwz     r3, 0x0(r3)
    divw    r0, r7, r6
    mullw   r0, r0, r6
    subf    r0, r0, r7
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      curAnmEndsNext__6MActorFiPc
branch_0x8003a0a8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl getCurAnmFrameNo__11TSpineEnemyCFi
getCurAnmFrameNo__11TSpineEnemyCFi: # 0x8003a0c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r3, 0x74(r3)
    lwz     r31, 0x70(r29)
    bl      getCurAnmIdx__6MActorCFi
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      getSharedMActorSet__13TEnemyManagerFi
    cmplwi  r3, 0x0
    bne-    branch_0x8003a118
    lwz     r3, 0x74(r29)
    mr      r4, r30
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
    b       branch_0x8003a144

branch_0x8003a118:
    lwz     r5, 0x4(r3)
    mr      r4, r30
    lha     r6, 0x7c(r29)
    lwz     r3, 0x0(r3)
    divw    r0, r6, r5
    mullw   r0, r0, r5
    subf    r0, r0, r6
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, 0x10(r3)
branch_0x8003a144:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl doShortCut__11TSpineEnemyFv
doShortCut__11TSpineEnemyFv: # 0x8003a160
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    stw     r30, 0xa8(sp)
    lwz     r0, 0x118(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8003a468
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003a198
    addi    r4, r3, 0x10
    b       branch_0x8003a19c

branch_0x8003a198:
    addi    r4, r31, 0xf8
branch_0x8003a19c:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x74(sp)
    lfs     f2, 0x78(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, 0x148(r31)
    lfs     f0, 0xbc(r31)
    fmuls   f0, f2, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x8003a258
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8003a468
    addi    r3, sp, 0x60
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x60(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x100(r31)
    b       branch_0x8003a468

branch_0x8003a258:
    li      r0, 0x0
    lfs     f0, -0x7488(rtoc)
    stw     r0, 0x94(sp)
    addi    r6, sp, 0x98
    stfs    f0, 0x98(sp)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0xa0(sp)
    lwz     r3, 0x118(r31)
    lwz     r4, 0x11c(r31)
    subi    r0, r3, 0x1
    slwi    r0, r0, 4
    add     r4, r4, r0
    lwz     r0, 0x0(r4)
    stw     r0, 0x94(sp)
    lwz     r3, 0x4(r4)
    lwz     r0, 0x8(r4)
    stw     r3, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0xc(r4)
    stw     r0, 0xa0(sp)
    lwz     r3, 0x94(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x8003a2b8
    addi    r6, r3, 0x10
branch_0x8003a2b8:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x38
    lwz     r0, 0x4(r6)
    addi    r4, r31, 0x10
    stw     r5, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x40(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x8c(sp)
    lfs     f1, -0x7488(rtoc)
    stw     r0, 0x90(sp)
    lfs     f0, 0x88(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8003a324
    lfs     f0, 0x8c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8003a324
    lfs     f0, 0x90(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8003a324
    lfs     f0, -0x7478(rtoc)
    stfs    f0, 0x88(sp)
branch_0x8003a324:
    lfs     f1, 0x88(sp)
    addi    r30, sp, 0x90
    lfs     f0, 0x8c(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x90(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x7474(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8003a36c
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x90(sp)
    stfs    f0, 0x8c(sp)
    stfs    f0, 0x88(sp)
    b       branch_0x8003a39c

branch_0x8003a36c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x7478(rtoc)
    lfs     f0, 0x88(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
branch_0x8003a39c:
    lfs     f1, 0x140(r31)
    mr      r5, r30
    lfs     f0, 0x88(sp)
    addi    r4, sp, 0x88
    fmuls   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x10(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x18(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f3, 0x148(r31)
    lfs     f0, 0xbc(r31)
    lfs     f1, 0xc0(r31)
    fmuls   f2, f3, f0
    lfs     f0, -0x7470(rtoc)
    fmuls   f3, f3, f1
    lfs     f1, 0x8c(sp)
    lwz     r3, -0x6328(r13)
    fadds   f1, f1, f3
    fmuls   f2, f0, f2
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    bne-    branch_0x8003a468
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8003a468
    addi    r3, sp, 0x48
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x48(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x54(sp)
    stw     r0, 0x100(r31)
branch_0x8003a468:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    addi    sp, sp, 0xb0
    blr


.globl zigzagToCurPathNode__11TSpineEnemyFffff
zigzagToCurPathNode__11TSpineEnemyFffff: # 0x8003a480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    fmr     f31, f1
    stfd    f30, 0x108(sp)
    stfd    f29, 0x100(sp)
    stfd    f28, 0xf8(sp)
    fmr     f28, f3
    stfd    f27, 0xf0(sp)
    fmr     f27, f2
    stfd    f26, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r3
    lwz     r3, 0x124(r3)
    lfs     f0, -0x7488(rtoc)
    lfs     f1, 0x10(r3)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8003a4e4
    fmr     f1, f31
    mr      r3, r31
    fmr     f2, f27
    fmr     f3, f0
    bl      walkToCurPathNode__11TSpineEnemyFfff
    b       branch_0x8003a92c

branch_0x8003a4e4:
    lwz     r3, 0xf4(r31)
    fmuls   f29, f4, f1
    cmplwi  r3, 0x0
    beq-    branch_0x8003a4fc
    addi    r4, r3, 0x10
    b       branch_0x8003a500

branch_0x8003a4fc:
    addi    r4, r31, 0xf8
branch_0x8003a500:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    lfs     f2, 0xa4(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f26, -0x7488(rtoc)
    fmr     f30, f1
    fcmpo   cr0, f26, f28
    fmr     f2, f30
    cror    2, 1, 2
    bne-    branch_0x8003a588
    b       branch_0x8003a5bc

branch_0x8003a588:
    fsubs   f0, f28, f26
    b       branch_0x8003a594

branch_0x8003a590:
    fsubs   f2, f2, f0
branch_0x8003a594:
    fcmpo   cr0, f2, f28
    cror    2, 1, 2
    beq+    branch_0x8003a590
    lfs     f1, -0x7488(rtoc)
    fsubs   f0, f28, f1
    b       branch_0x8003a5b0

branch_0x8003a5ac:
    fadds   f2, f2, f0
branch_0x8003a5b0:
    fcmpo   cr0, f2, f1
    blt+    branch_0x8003a5ac
    fmr     f26, f2
branch_0x8003a5bc:
    lfs     f0, -0x7478(rtoc)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    fdivs   f0, f0, f28
    lfs     f1, -0x746c(rtoc)
    lwz     r12, 0x10c(r12)
    mtlr    r12
    fmuls   f28, f1, f0
    blrl
    fmuls   f2, f26, f28
    lwz     r5, 0xf4(r31)
    lfs     f0, -0x7468(rtoc)
    lwz     r0, -0x5eac(r13)
    cmplwi  r5, 0x0
    fadds   f1, f2, f1
    lwz     r4, -0x5ea8(r13)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r3, 0xdc(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f29, f29, f0
    beq-    branch_0x8003a62c
    addi    r4, r5, 0x10
    b       branch_0x8003a630

branch_0x8003a62c:
    addi    r4, r31, 0xf8
branch_0x8003a630:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xc8(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f2, -0x7488(rtoc)
    lfs     f1, 0xc8(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8003a6a8
    lfs     f0, 0xc0(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x8003a6a0
    lfs     f0, -0x7464(rtoc)
    b       branch_0x8003a724

branch_0x8003a6a0:
    lfs     f0, -0x7460(rtoc)
    b       branch_0x8003a724

branch_0x8003a6a8:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8003a6e8
    lfs     f2, 0xc0(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x745c(rtoc)
    stw     r0, 0xdc(sp)
    lis     r0, 0x4330
    stw     r0, 0xd8(sp)
    lfd     f1, 0xd8(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x8003a724

branch_0x8003a6e8:
    fneg    f1, f1
    lfs     f2, 0xc0(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x745c(rtoc)
    stw     r0, 0xdc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7458(rtoc)
    stw     r0, 0xd8(sp)
    lfd     f2, 0xd8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x8003a724:
    fadds   f26, f29, f0
    lfs     f0, -0x7458(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f26, f0
    fadds   f3, f0, f26
    bl      MsWrap_f___Ffff_8003a968
    lfs     f3, -0x7464(rtoc)
    fsubs   f4, f26, f1
    fcmpo   cr0, f27, f3
    fmr     f5, f4
    cror    2, 1, 2
    bne-    branch_0x8003a75c
    lfs     f1, -0x7488(rtoc)
    b       branch_0x8003a7cc

branch_0x8003a75c:
    lfs     f2, -0x7468(rtoc)
    lwz     r3, -0x5eac(r13)
    fmuls   f1, f2, f27
    lwz     r4, -0x5ea8(r13)
    lfs     f0, -0x7488(rtoc)
    fctiwz  f1, f1
    stfd    f1, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fcmpu   cr0, f0, f1
    bne-    branch_0x8003a79c
    lfs     f1, -0x7454(rtoc)
    b       branch_0x8003a7cc

branch_0x8003a79c:
    lfs     f0, -0x7480(rtoc)
    fnmsubs  f0, f0, f27, f3
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f31, f0
    fdivs   f1, f0, f1
branch_0x8003a7cc:
    lfs     f0, -0x7470(rtoc)
    fmuls   f0, f0, f1
    fcmpo   cr0, f30, f0
    ble-    branch_0x8003a814
    lfs     f0, -0x7488(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x8003a7fc
    fcmpo   cr0, f4, f27
    ble-    branch_0x8003a7f4
    fmr     f4, f27
branch_0x8003a7f4:
    fmr     f5, f4
    b       branch_0x8003a814

branch_0x8003a7fc:
    fneg    f0, f27
    fcmpo   cr0, f4, f0
    ble-    branch_0x8003a80c
    b       branch_0x8003a810

branch_0x8003a80c:
    fmr     f4, f0
branch_0x8003a810:
    fmr     f5, f4
branch_0x8003a814:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x746c(rtoc)
    fadds   f1, f1, f5
    b       branch_0x8003a828

branch_0x8003a824:
    fsubs   f1, f1, f0
branch_0x8003a828:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x8003a824
    lfs     f0, -0x746c(rtoc)
    lfs     f2, -0x7488(rtoc)
    b       branch_0x8003a844

branch_0x8003a840:
    fadds   f1, f1, f0
branch_0x8003a844:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8003a840
    stfs    f1, 0x34(r31)
    addi    r3, sp, 0xa8
    lwz     r0, 0x94(r31)
    lwz     r4, 0x98(r31)
    lfs     f1, -0x7468(rtoc)
    stw     r0, 0xb4(sp)
    lwz     r0, -0x5eac(r13)
    stw     r4, 0xb8(sp)
    lwz     r6, -0x5ea4(r13)
    lwz     r5, 0x9c(r31)
    lwz     r4, -0x5ea8(r13)
    stw     r5, 0xbc(sp)
    lfs     f0, 0x34(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r5, 0xdc(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f31, f1
    fmuls   f1, f31, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8003a958
    lfs     f2, 0xb4(sp)
    lfs     f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    fadds   f2, f2, f0
    lfs     f0, 0xb0(sp)
    stfs    f2, 0xb4(sp)
    lfs     f2, 0xb8(sp)
    fadds   f1, f2, f1
    stfs    f1, 0xb8(sp)
    lfs     f1, 0xbc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lwz     r3, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0xbc(sp)
    stw     r0, 0x9c(r31)
    lfs     f1, 0x12c(r31)
    lfs     f0, -0x7484(rtoc)
    fsubs   f1, f30, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8003a920
    lha     r3, 0x128(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x128(r31)
    b       branch_0x8003a92c

branch_0x8003a920:
    li      r0, 0x0
    sth     r0, 0x128(r31)
    stfs    f30, 0x12c(r31)
branch_0x8003a92c:
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lfd     f29, 0x100(sp)
    lfd     f28, 0xf8(sp)
    lfd     f27, 0xf0(sp)
    lfd     f26, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    addi    sp, sp, 0x118
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8003a958
set_f___Q29JGeometry8TVec3_f_Ffff_8003a958: # 0x8003a958
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl MsWrap_f___Ffff_8003a968
MsWrap_f___Ffff_8003a968: # 0x8003a968
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x8003a9a4
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x3537c, 0x8003a980 - 0x8003a97c
branch_0x8003a980:
    fsubs   f1, f1, f0
branch_0x8003a984:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x8003a980
    b       branch_0x8003a998

branch_0x8003a994:
    fadds   f1, f1, f0
branch_0x8003a998:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8003a994
    blr

branch_0x8003a9a4:
    fsubs   f0, f3, f2
    b       branch_0x8003a984


.incbin "./baserom/code/Text_0x80005600.bin", 0x353ac, 0x8003a9b0 - 0x8003a9ac

.globl walkToCurPathNode__11TSpineEnemyFfff
walkToCurPathNode__11TSpineEnemyFfff: # 0x8003a9b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    fmr     f30, f1
    stfd    f29, 0xc8(sp)
    fmr     f29, f3
    stfd    f28, 0xc0(sp)
    fmr     f28, f2
    stw     r31, 0xbc(sp)
    mr      r31, r3
    lwz     r3, 0xf4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8003a9f4
    addi    r4, r3, 0x10
    b       branch_0x8003a9f8

branch_0x8003a9f4:
    addi    r4, r31, 0xf8
branch_0x8003a9f8:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xa8(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f2, 0xa0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0xa4(sp)
    fmuls   f3, f2, f2
    fmuls   f4, f1, f1
    fmuls   f2, f0, f0
    lfs     f0, -0x7488(rtoc)
    fadds   f2, f3, f2
    fadds   f31, f4, f2
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8003aa74
    b       branch_0x8003aa98

branch_0x8003aa74:
    frsqrte f4, f31
    lfs     f3, -0x7480(rtoc)
    lfs     f0, -0x747c(rtoc)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f31, f2, f0
    fmuls   f0, f3, f0
    fmuls   f31, f31, f0
branch_0x8003aa98:
    lfs     f2, -0x7488(rtoc)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8003aac4
    lfs     f0, 0xa0(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x8003aabc
    lfs     f0, -0x7464(rtoc)
    b       branch_0x8003ab40

branch_0x8003aabc:
    lfs     f0, -0x7460(rtoc)
    b       branch_0x8003ab40

branch_0x8003aac4:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8003ab04
    lfs     f2, 0xa0(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x745c(rtoc)
    stw     r0, 0xb4(sp)
    lis     r0, 0x4330
    stw     r0, 0xb0(sp)
    lfd     f1, 0xb0(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x8003ab40

branch_0x8003ab04:
    fneg    f1, f1
    lfs     f2, 0xa0(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x745c(rtoc)
    stw     r0, 0xb4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7458(rtoc)
    stw     r0, 0xb0(sp)
    lfd     f2, 0xb0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x8003ab40:
    fadds   f29, f29, f0
    lfs     f0, -0x746c(rtoc)
    b       branch_0x8003ab50

branch_0x8003ab4c:
    fsubs   f29, f29, f0
branch_0x8003ab50:
    fcmpo   cr0, f29, f0
    cror    2, 1, 2
    beq+    branch_0x8003ab4c
    lfs     f1, -0x746c(rtoc)
    lfs     f0, -0x7488(rtoc)
    b       branch_0x8003ab6c

branch_0x8003ab68:
    fadds   f29, f29, f1
branch_0x8003ab6c:
    fcmpo   cr0, f29, f0
    blt+    branch_0x8003ab68
    lfs     f0, -0x7458(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f29, f0
    fadds   f3, f0, f29
    bl      MsWrap_f___Ffff_8003a968
    lfs     f3, -0x7464(rtoc)
    fsubs   f29, f29, f1
    fcmpo   cr0, f28, f3
    cror    2, 1, 2
    bne-    branch_0x8003aba4
    lfs     f0, -0x7488(rtoc)
    b       branch_0x8003ac14

branch_0x8003aba4:
    lfs     f2, -0x7468(rtoc)
    lwz     r3, -0x5eac(r13)
    fmuls   f1, f2, f28
    lwz     r4, -0x5ea8(r13)
    lfs     f0, -0x7488(rtoc)
    fctiwz  f1, f1
    stfd    f1, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    fcmpu   cr0, f0, f1
    bne-    branch_0x8003abe4
    lfs     f0, -0x7454(rtoc)
    b       branch_0x8003ac14

branch_0x8003abe4:
    lfs     f0, -0x7480(rtoc)
    fnmsubs  f0, f0, f28, f3
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f30, f0
    fdivs   f0, f0, f1
branch_0x8003ac14:
    lfs     f1, -0x7470(rtoc)
    fmuls   f0, f1, f0
    fcmpo   cr0, f31, f0
    ble-    branch_0x8003ac60
    lfs     f0, -0x7488(rtoc)
    fcmpo   cr0, f29, f0
    ble-    branch_0x8003ac44
    fcmpo   cr0, f29, f28
    ble-    branch_0x8003ac3c
    fmr     f29, f28
branch_0x8003ac3c:
    fmr     f2, f29
    b       branch_0x8003ad58

branch_0x8003ac44:
    fneg    f0, f28
    fcmpo   cr0, f29, f0
    ble-    branch_0x8003ac54
    b       branch_0x8003ac58

branch_0x8003ac54:
    fmr     f29, f0
branch_0x8003ac58:
    fmr     f2, f29
    b       branch_0x8003ad58

branch_0x8003ac60:
    lfs     f0, -0x7480(rtoc)
    lfs     f2, -0x7488(rtoc)
    fmuls   f3, f0, f31
    fcmpu   cr0, f2, f3
    bne-    branch_0x8003ac78
    b       branch_0x8003ad20

branch_0x8003ac78:
    fmuls   f1, f1, f3
    lfs     f0, -0x7478(rtoc)
    fmuls   f2, f1, f3
    fnmsubs  f1, f30, f30, f2
    fdivs   f2, f1, f2
    fcmpo   cr0, f2, f0
    ble-    branch_0x8003ac9c
    fmr     f2, f0
    b       branch_0x8003acac

branch_0x8003ac9c:
    lfs     f0, -0x7448(rtoc)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8003acac
    fmr     f2, f0
branch_0x8003acac:
    lfs     f1, -0x7478(rtoc)
    fcmpu   cr0, f1, f2
    bne-    branch_0x8003acc0
    lfs     f2, -0x7488(rtoc)
    b       branch_0x8003ad20

branch_0x8003acc0:
    lfs     f0, -0x7448(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x8003acd4
    lfs     f2, -0x7458(rtoc)
    b       branch_0x8003ad20

branch_0x8003acd4:
    fnmsubs  f0, f2, f2, f1
    frsqrte f1, f0
    fmul    f0, f0, f1
    frsp    f0, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x5c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x745c(rtoc)
    stw     r0, 0xb4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7464(rtoc)
    stw     r0, 0xb0(sp)
    lfd     f2, 0xb0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x8003ad20:
    lfs     f0, -0x7488(rtoc)
    fcmpo   cr0, f29, f0
    ble-    branch_0x8003ad40
    fcmpo   cr0, f29, f2
    ble-    branch_0x8003ad38
    b       branch_0x8003ad58

branch_0x8003ad38:
    fmr     f2, f29
    b       branch_0x8003ad58

branch_0x8003ad40:
    fneg    f0, f2
    fcmpo   cr0, f29, f0
    ble-    branch_0x8003ad50
    b       branch_0x8003ad54

branch_0x8003ad50:
    fmr     f29, f0
branch_0x8003ad54:
    fmr     f2, f29
branch_0x8003ad58:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x746c(rtoc)
    fadds   f1, f1, f2
    b       branch_0x8003ad6c

branch_0x8003ad68:
    fsubs   f1, f1, f0
branch_0x8003ad6c:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x8003ad68
    lfs     f0, -0x746c(rtoc)
    lfs     f2, -0x7488(rtoc)
    b       branch_0x8003ad88

branch_0x8003ad84:
    fadds   f1, f1, f0
branch_0x8003ad88:
    fcmpo   cr0, f1, f2
    blt+    branch_0x8003ad84
    stfs    f1, 0x34(r31)
    addi    r3, sp, 0x88
    lwz     r0, 0x94(r31)
    lwz     r4, 0x98(r31)
    lfs     f1, -0x7468(rtoc)
    stw     r0, 0x94(sp)
    lwz     r0, -0x5eac(r13)
    stw     r4, 0x98(sp)
    lwz     r6, -0x5ea4(r13)
    lwz     r5, 0x9c(r31)
    lwz     r4, -0x5ea8(r13)
    stw     r5, 0x9c(sp)
    lfs     f0, 0x34(r31)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r5, 0xb4(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f30, f1
    fmuls   f1, f30, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8003a958
    lfs     f2, 0x94(sp)
    lfs     f0, 0x88(sp)
    lfs     f1, 0x8c(sp)
    fadds   f2, f2, f0
    lfs     f0, 0x90(sp)
    stfs    f2, 0x94(sp)
    lfs     f2, 0x98(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x98(sp)
    lfs     f1, 0x9c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lwz     r3, 0x94(sp)
    lwz     r0, 0x98(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x9c(sp)
    stw     r0, 0x9c(r31)
    lfs     f1, 0x12c(r31)
    lfs     f0, -0x7484(rtoc)
    fsubs   f1, f31, f1
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8003ae64
    lha     r3, 0x128(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x128(r31)
    b       branch_0x8003ae70

branch_0x8003ae64:
    li      r0, 0x0
    sth     r0, 0x128(r31)
    stfs    f31, 0x12c(r31)
branch_0x8003ae70:
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    lfd     f28, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    addi    sp, sp, 0xe0
    blr


.globl turnToCurPathNode__11TSpineEnemyFf
turnToCurPathNode__11TSpineEnemyFf: # 0x8003ae94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stfd    f30, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r4, 0xf4(r3)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x8003aecc
    addi    r4, r4, 0x10
    b       branch_0x8003aed0

branch_0x8003aecc:
    addi    r4, r3, 0x4
branch_0x8003aed0:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x30(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x2c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f2, -0x7488(rtoc)
    lfs     f1, 0x30(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8003af48
    lfs     f0, 0x28(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x8003af40
    lfs     f30, -0x7464(rtoc)
    b       branch_0x8003afc4

branch_0x8003af40:
    lfs     f30, -0x7460(rtoc)
    b       branch_0x8003afc4

branch_0x8003af48:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8003af88
    lfs     f2, 0x28(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x745c(rtoc)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    stw     r0, 0x38(sp)
    lfd     f1, 0x38(sp)
    fsubs   f1, f1, f2
    fmuls   f30, f0, f1
    b       branch_0x8003afc4

branch_0x8003af88:
    fneg    f1, f1
    lfs     f2, 0x28(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x745c(rtoc)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7458(rtoc)
    stw     r0, 0x38(sp)
    lfd     f2, 0x38(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f30, f0, f1
branch_0x8003afc4:
    lfs     f0, -0x7458(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_8003a968
    fsubs   f1, f30, f1
    lfs     f0, -0x7488(rtoc)
    li      r3, 0x0
    fcmpo   cr0, f1, f0
    fmr     f2, f1
    ble-    branch_0x8003b008
    fcmpo   cr0, f1, f31
    bge-    branch_0x8003b000
    li      r3, 0x1
    b       branch_0x8003b020

branch_0x8003b000:
    fmr     f2, f31
    b       branch_0x8003b020

branch_0x8003b008:
    fneg    f0, f31
    fcmpo   cr0, f1, f0
    ble-    branch_0x8003b01c
    li      r3, 0x1
    b       branch_0x8003b020

branch_0x8003b01c:
    fmr     f2, f0
branch_0x8003b020:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x746c(rtoc)
    fadds   f2, f1, f2
    b       branch_0x8003b034

branch_0x8003b030:
    fsubs   f2, f2, f0
branch_0x8003b034:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x8003b030
    lfs     f1, -0x746c(rtoc)
    lfs     f0, -0x7488(rtoc)
    b       branch_0x8003b050

branch_0x8003b04c:
    fadds   f2, f2, f1
branch_0x8003b050:
    fcmpo   cr0, f2, f0
    blt+    branch_0x8003b04c
    stfs    f2, 0x34(r31)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x58
    blr


.globl goToDirLimitedNextGraphNode__11TSpineEnemyFf
goToDirLimitedNextGraphNode__11TSpineEnemyFf: # 0x8003b078
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    fmr     f31, f1
    stw     r31, 0xcc(sp)
    mr      r31, r3
    stw     r30, 0xc8(sp)
    stw     r29, 0xc4(sp)
    stw     r28, 0xc0(sp)
    lwz     r5, 0x124(r3)
    lwz     r0, 0x4(r5)
    lwz     r30, 0x8(r5)
    cmpwi   r0, 0x0
    mr      r29, r0
    bge-    branch_0x8003b0d8
    lwz     r3, 0x0(r5)
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b174

branch_0x8003b0d8:
    lfs     f1, -0x7468(rtoc)
    addi    r3, sp, 0x9c
    lfs     f0, 0x34(r31)
    lwz     r28, 0x0(r5)
    fmuls   f0, f1, f0
    lwz     r0, -0x5eac(r13)
    lwz     r6, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    fctiwz  f0, f0
    lfs     f4, -0x7478(rtoc)
    lfs     f2, -0x7488(rtoc)
    stfd    f0, 0xb8(sp)
    lwz     r5, 0xbc(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f4, f1
    fmuls   f1, f4, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8003a958
    lwz     r0, 0x9c(sp)
    fmr     f1, f31
    lwz     r4, 0xa0(sp)
    mr      r3, r28
    stw     r0, 0xa8(sp)
    lwz     r0, 0xa4(sp)
    stw     r4, 0xac(sp)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    stw     r0, 0xb0(sp)
    addi    r6, sp, 0xa8
    addi    r7, r31, 0x10
    li      r8, -0x1
    bl      getRandomButDirLimited__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_fUl
    mr      r0, r3
    lwz     r3, 0x124(r31)
    mr      r4, r0
    bl      moveTo__12TGraphTracerFi
branch_0x8003b174:
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x80
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r4, 0x0
    lwz     r3, 0x80(sp)
    stw     r4, 0x8c(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x88(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x98(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x98(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    sth     r4, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lwz     r31, 0xcc(sp)
    mtlr    r0
    lwz     r30, 0xc8(sp)
    lwz     r29, 0xc4(sp)
    lwz     r28, 0xc0(sp)
    addi    sp, sp, 0xd8
    blr


.globl goToDirectedNextGraphNode__11TSpineEnemyFRCQ29JGeometry8TVec3_f_
goToDirectedNextGraphNode__11TSpineEnemyFRCQ29JGeometry8TVec3_f_: # 0x8003b228
    mflr    r0
    mr      r6, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r3, 0x124(r3)
    lwz     r0, 0x4(r3)
    lwz     r5, 0x8(r3)
    cmpwi   r0, 0x0
    mr      r4, r0
    bge-    branch_0x8003b278
    lwz     r3, 0x0(r3)
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b298

branch_0x8003b278:
    lwz     r3, 0x0(r3)
    addi    r7, r31, 0x10
    li      r8, -0x1
    bl      getAimToDirNextIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_Ul
    mr      r0, r3
    lwz     r3, 0x124(r31)
    mr      r4, r0
    bl      moveTo__12TGraphTracerFi
branch_0x8003b298:
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x74
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r4, 0x0
    lwz     r3, 0x74(sp)
    stw     r4, 0x80(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x80(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    sth     r4, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl goToExclusiveNextGraphNode__11TSpineEnemyFv
goToExclusiveNextGraphNode__11TSpineEnemyFv: # 0x8003b33c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stw     r31, 0x16c(sp)
    mr      r31, r3
    stw     r30, 0x168(sp)
    stw     r29, 0x164(sp)
    lwz     r0, 0x70(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8003b430
    lwz     r3, 0x124(r31)
    lwz     r4, 0x4(r3)
    cmpwi   r4, 0x0
    bge-    branch_0x8003b394
    lwz     r3, 0x0(r3)
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b3b0

branch_0x8003b394:
    lwz     r5, 0x8(r3)
    li      r6, -0x1
    lwz     r3, 0x0(r3)
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      moveTo__12TGraphTracerFi
branch_0x8003b3b0:
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x118
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r30, 0x0
    lwz     r5, 0x118(sp)
    stw     r30, 0x124(sp)
    addi    r29, sp, 0x128
    lwz     r0, 0x11c(sp)
    addi    r4, r29, 0x0
    addi    r3, r31, 0xf8
    stw     r5, 0x128(sp)
    stw     r0, 0x12c(sp)
    lwz     r0, 0x120(sp)
    stw     r0, 0x130(sp)
    lwz     r0, 0x124(sp)
    stw     r0, 0xf4(r31)
    bl      __as__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x124(sp)
    addi    r4, r29, 0x0
    addi    r3, r31, 0x108
    stw     r0, 0x104(r31)
    bl      __as__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    stw     r30, 0x118(r31)
    sth     r30, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
    b       branch_0x8003b56c

branch_0x8003b430:
    lwz     r3, 0x124(r31)
    lwz     r4, 0x4(r3)
    cmpwi   r4, 0x0
    bge-    branch_0x8003b460
    lwz     r3, 0x0(r3)
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b4dc

branch_0x8003b460:
    lwz     r5, 0x8(r3)
    li      r6, -0x1
    lwz     r3, 0x0(r3)
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    addi    r5, r3, 0x0
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8003b4c0

branch_0x8003b480:
    lwz     r3, 0x18(r3)
    lwzx    r3, r3, r30
    cmplw   r31, r3
    beq-    branch_0x8003b4b8
    lwz     r3, 0x124(r3)
    lwz     r0, 0x4(r3)
    cmpw    r5, r0
    bne-    branch_0x8003b4b8
    lwz     r3, 0x124(r31)
    li      r6, -0x1
    lwz     r4, 0x4(r3)
    lwz     r3, 0x0(r3)
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    mr      r5, r3
branch_0x8003b4b8:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8003b4c0:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x14(r3)
    cmpw    r29, r0
    blt+    branch_0x8003b480
    lwz     r3, 0x124(r31)
    mr      r4, r5
    bl      moveTo__12TGraphTracerFi
branch_0x8003b4dc:
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x134
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r4, 0x0
    lwz     r3, 0x134(sp)
    stw     r4, 0x140(sp)
    lwz     r0, 0x138(sp)
    stw     r3, 0x144(sp)
    stw     r0, 0x148(sp)
    lwz     r0, 0x13c(sp)
    stw     r0, 0x14c(sp)
    lwz     r0, 0x140(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x144(sp)
    lwz     r0, 0x148(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x14c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x140(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x144(sp)
    lwz     r0, 0x148(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x14c(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    sth     r4, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
branch_0x8003b56c:
    lwz     r0, 0x174(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    mtlr    r0
    lwz     r29, 0x164(sp)
    addi    sp, sp, 0x170
    blr


.globl __as__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
__as__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x8003b588
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r3)
    blr


.globl goToRandomEscapeGraphNode__11TSpineEnemyFv
goToRandomEscapeGraphNode__11TSpineEnemyFv: # 0x8003b5a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    lwz     r3, 0x124(r3)
    lwz     r4, 0x4(r3)
    cmpwi   r4, 0x0
    bge-    branch_0x8003b5e8
    lwz     r3, 0x0(r3)
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b608

branch_0x8003b5e8:
    lwz     r3, 0x0(r3)
    addi    r6, r31, 0x10
    li      r5, -0x1
    li      r7, -0x1
    bl      getEscapeFromMarioIndex__9TGraphWebCFiiRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      moveTo__12TGraphTracerFi
branch_0x8003b608:
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x68
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r4, 0x0
    lwz     r3, 0x68(sp)
    stw     r4, 0x74(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x70(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x74(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x74(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    sth     r4, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl goToRandomNextGraphNode__11TSpineEnemyFv
goToRandomNextGraphNode__11TSpineEnemyFv: # 0x8003b6ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lwz     r3, 0x124(r3)
    lwz     r4, 0x4(r3)
    cmpwi   r4, 0x0
    bge-    branch_0x8003b6f0
    lwz     r3, 0x0(r3)
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b70c

branch_0x8003b6f0:
    lwz     r5, 0x8(r3)
    li      r6, -0x1
    lwz     r3, 0x0(r3)
    bl      getRandomNextIndex__9TGraphWebCFiiUl
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      moveTo__12TGraphTracerFi
branch_0x8003b70c:
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x74
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r4, 0x0
    lwz     r3, 0x74(sp)
    stw     r4, 0x80(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x80(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x8c(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    sth     r4, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl jumpToNextGraphNode__11TSpineEnemyFv
jumpToNextGraphNode__11TSpineEnemyFv: # 0x8003b7b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    mr      r31, r3
    stw     r30, 0xb8(sp)
    lwz     r6, 0x124(r3)
    lwz     r4, 0x4(r6)
    cmpwi   r4, 0x0
    blt-    branch_0x8003b7f4
    lwz     r3, 0x0(r6)
    slwi    r0, r4, 4
    lwz     r5, 0x0(r3)
    lwzx    r5, r5, r0
    lwz     r0, 0x8(r5)
    clrlwi. r0, r0, 31
    bne-    branch_0x8003b7fc
branch_0x8003b7f4:
    li      r3, -0x1
    b       branch_0x8003b8b8

branch_0x8003b7fc:
    lwz     r5, 0x8(r6)
    li      r6, 0x2
    bl      getNeighborNodeIndexByFlag__9TGraphWebCFiiUl
    mr.     r30, r3
    blt-    branch_0x8003b8b4
    lwz     r3, 0x124(r31)
    mr      r4, r30
    bl      moveTo__12TGraphTracerFi
    lwz     r5, 0x124(r31)
    addi    r4, sp, 0x94
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r5, 0x0
    lwz     r4, 0x94(sp)
    stw     r5, 0xa0(sp)
    mr      r3, r30
    lwz     r0, 0x98(sp)
    stw     r4, 0xa4(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x9c(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0xa0(sp)
    stw     r0, 0xf4(r31)
    lwz     r4, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    stw     r4, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xac(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0xa0(sp)
    stw     r0, 0x104(r31)
    lwz     r4, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    stw     r4, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0xac(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    sth     r5, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
    b       branch_0x8003b8b8

branch_0x8003b8b4:
    li      r3, -0x1
branch_0x8003b8b8:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl goToShortestNextGraphNode__11TSpineEnemyFv
goToShortestNextGraphNode__11TSpineEnemyFv: # 0x8003b8d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    lwz     r5, 0x124(r3)
    lwz     r3, 0x0(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x8003b8fc
    li      r3, -0x1
    b       branch_0x8003b9e0

branch_0x8003b8fc:
    lwz     r4, 0x4(r5)
    cmpwi   r4, 0x0
    bge-    branch_0x8003b924
    addi    r4, r31, 0x10
    li      r5, -0x1
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    b       branch_0x8003b93c

branch_0x8003b924:
    lwz     r5, 0x8(r5)
    li      r6, -0x1
    bl      getShortestNextIndex__9TGraphWebCFiiUl
    mr      r4, r3
    lwz     r3, 0x124(r31)
    bl      moveTo__12TGraphTracerFi
branch_0x8003b93c:
    lwz     r3, 0x124(r31)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    bge-    branch_0x8003b954
    li      r3, -0x1
    b       branch_0x8003b9e0

branch_0x8003b954:
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    addi    r4, sp, 0x90
    lwz     r3, 0x0(r3)
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r5, 0x0
    lwz     r4, 0x90(sp)
    stw     r5, 0x9c(sp)
    li      r3, 0x0
    lwz     r0, 0x94(sp)
    stw     r4, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x98(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x9c(sp)
    stw     r0, 0xf4(r31)
    lwz     r4, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    stw     r4, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0xa8(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x9c(sp)
    stw     r0, 0x104(r31)
    lwz     r4, 0xa0(sp)
    lwz     r0, 0xa4(sp)
    stw     r4, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0xa8(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    sth     r5, 0x128(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r31)
branch_0x8003b9e0:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl setGoalPathFromGraph__11TSpineEnemyFv
setGoalPathFromGraph__11TSpineEnemyFv: # 0x8003b9f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    addi    r4, sp, 0x48
    lwz     r5, 0x124(r3)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r4, 0x0
    lwz     r3, 0x48(sp)
    stw     r4, 0x38(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x38(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x38(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff: # 0x8003baa0
    mflr    r0
    fmr     f4, f3
    stw     r0, 0x4(sp)
    fmr     f3, f2
    fmr     f2, f1
    stwu    sp, -0x8(sp)
    lfs     f1, 0x34(r3)
    addi    r3, r3, 0x10
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl receiveMessage__11TSpineEnemyFP9THitActorUl
receiveMessage__11TSpineEnemyFP9THitActorUl: # 0x8003bad4
    mflr    r0
    cmplwi  r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8003bb00
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8003bb00
    stw     r4, 0x68(r3)
    li      r3, 0x1
    b       branch_0x8003bb24

branch_0x8003bb00:
    cmplwi  r5, 0x2
    bgt-    branch_0x8003bb20
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8003bb24

branch_0x8003bb20:
    li      r3, 0x0
branch_0x8003bb24:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateSquareToMario__11TSpineEnemyFv
updateSquareToMario__11TSpineEnemyFv: # 0x8003bb34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x10
    lwz     r4, -0x60b4(r13)
    bl      PSVECSquareDistance
    stfs    f1, 0x134(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcTurnSpeedToReach__11TSpineEnemyCFff
calcTurnSpeedToReach__11TSpineEnemyCFff: # 0x8003bb6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    lfs     f0, -0x7488(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x8003bb8c
    fmr     f1, f0
    b       branch_0x8003bc3c

branch_0x8003bb8c:
    lfs     f3, -0x7470(rtoc)
    lfs     f0, -0x7478(rtoc)
    fmuls   f3, f3, f2
    fmuls   f2, f3, f2
    fnmsubs  f1, f1, f1, f2
    fdivs   f1, f1, f2
    fcmpo   cr0, f1, f0
    fmr     f2, f1
    ble-    branch_0x8003bbb8
    fmr     f2, f0
    b       branch_0x8003bbc8

branch_0x8003bbb8:
    lfs     f0, -0x7448(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8003bbc8
    fmr     f2, f0
branch_0x8003bbc8:
    lfs     f1, -0x7478(rtoc)
    fcmpu   cr0, f1, f2
    bne-    branch_0x8003bbdc
    lfs     f1, -0x7488(rtoc)
    b       branch_0x8003bc3c

branch_0x8003bbdc:
    lfs     f0, -0x7448(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x8003bbf0
    lfs     f1, -0x7458(rtoc)
    b       branch_0x8003bc3c

branch_0x8003bbf0:
    fnmsubs  f0, f2, f2, f1
    frsqrte f1, f0
    fmul    f0, f0, f1
    frsp    f0, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x1c(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x7450(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x745c(rtoc)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x7464(rtoc)
    stw     r0, 0x28(sp)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x8003bc3c:
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl calcMinimumTurnRadius__11TSpineEnemyCFff
calcMinimumTurnRadius__11TSpineEnemyCFff: # 0x8003bc4c
    stwu    sp, -0x28(sp)
    lfs     f5, -0x7464(rtoc)
    fcmpo   cr0, f2, f5
    cror    2, 1, 2
    bne-    branch_0x8003bc68
    lfs     f1, -0x7488(rtoc)
    b       branch_0x8003bcd8

branch_0x8003bc68:
    lfs     f4, -0x7468(rtoc)
    lwz     r3, -0x5eac(r13)
    fmuls   f3, f4, f2
    lwz     r4, -0x5ea8(r13)
    lfs     f0, -0x7488(rtoc)
    fctiwz  f3, f3
    stfd    f3, 0x20(sp)
    lwz     r0, 0x24(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f3, r4, r0
    fcmpu   cr0, f0, f3
    bne-    branch_0x8003bca8
    lfs     f1, -0x7454(rtoc)
    b       branch_0x8003bcd8

branch_0x8003bca8:
    lfs     f0, -0x7480(rtoc)
    fnmsubs  f0, f0, f2, f5
    fmuls   f0, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f0, f1, f0
    fdivs   f1, f0, f3
branch_0x8003bcd8:
    addi    sp, sp, 0x28
    blr


.globl resetSRTV__11TSpineEnemyFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
resetSRTV__11TSpineEnemyFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8003bce0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r7, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r29, 0x2c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r5, 0x0
    lwz     r8, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r8, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x0(r28)
    mr      r3, r30
    lwz     r0, 0x4(r28)
    stw     r4, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x8(r28)
    stw     r0, 0x38(r30)
    lwz     r4, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r4, 0x24(r30)
    stw     r0, 0x28(r30)
    lwz     r0, 0x8(r29)
    stw     r0, 0x2c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8003bdb4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8003bdb8

branch_0x8003bdb4:
    li      r0, 0x1
branch_0x8003bdb8:
    stb     r0, 0x13c(r30)
    mr      r3, r30
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r4, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x8(r31)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x8000
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl resetToPosition__11TSpineEnemyFRCQ29JGeometry8TVec3_f_
resetToPosition__11TSpineEnemyFRCQ29JGeometry8TVec3_f_: # 0x8003be2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8003beb8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x8003bebc

branch_0x8003beb8:
    li      r0, 0x1
branch_0x8003bebc:
    stb     r0, 0x13c(r31)
    mr      r3, r31
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f1, -0x7488(rtoc)
    lfs     f0, -0x7444(rtoc)
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x20(sp)
    stfs    f1, 0x24(sp)
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x24(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getSaveParam__11TSpineEnemyCFv
getSaveParam__11TSpineEnemyCFv: # 0x8003bf38
    lwz     r3, 0x70(r3)
    lwz     r3, 0x38(r3)
    blr


.globl calcRootMatrix__11TSpineEnemyFv
calcRootMatrix__11TSpineEnemyFv: # 0x8003bf44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8003bfc0
    lwz     r0, 0x6c(r3)
    cmplw   r0, r30
    bne-    branch_0x8003bfc0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    mr.     r31, r3
    beq-    branch_0x8003bfc0
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f2, 0x2c(r31)
    lfs     f1, 0x1c(r31)
    lfs     f0, 0xc(r31)
    stfs    f0, 0x10(r30)
    stfs    f1, 0x14(r30)
    stfs    f2, 0x18(r30)
    b       branch_0x8003bfc8

branch_0x8003bfc0:
    mr      r3, r30
    bl      calcEnemyRootMatrix__11TSpineEnemyFv
branch_0x8003bfc8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl calcEnemyRootMatrix__11TSpineEnemyFv
calcEnemyRootMatrix__11TSpineEnemyFv: # 0x8003bfe0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stfd    f30, 0x118(sp)
    stfd    f29, 0x110(sp)
    stfd    f28, 0x108(sp)
    stfd    f27, 0x100(sp)
    stfd    f26, 0xf8(sp)
    stfd    f25, 0xf0(sp)
    stfd    f24, 0xe8(sp)
    stw     r31, 0xe4(sp)
    stw     r30, 0xe0(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    addi    r31, r3, 0x20
    lwz     r0, 0x28(r30)
    mr      r5, r31
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    lbz     r3, 0x130(r30)
    extsb.  r0, r3
    bne-    branch_0x8003c060
    lfs     f1, 0x30(r30)
    mr      r3, r5
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    b       branch_0x8003c34c

branch_0x8003c060:
    extsb   r0, r3
    cmpwi   r0, 0x2
    blt-    branch_0x8003c1b4
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8003c080
    li      r0, 0x1
    b       branch_0x8003c084

branch_0x8003c080:
    li      r0, 0x0
branch_0x8003c084:
    cmpwi   r0, 0x0
    bne-    branch_0x8003c1b4
    lwz     r4, 0x138(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x8003c1b4
    lwz     r3, 0x34(r4)
    lwz     r0, 0x38(r4)
    lfs     f27, -0x7488(rtoc)
    stw     r3, 0xc0(sp)
    lfs     f3, -0x7478(rtoc)
    stw     r0, 0xc4(sp)
    lfs     f0, -0x7474(rtoc)
    lwz     r0, 0x3c(r4)
    stw     r0, 0xc8(sp)
    lfs     f2, 0xc0(sp)
    lfs     f30, 0xc4(sp)
    fmuls   f1, f2, f27
    lfs     f31, 0xc8(sp)
    fmuls   f4, f30, f27
    fmsubs  f25, f31, f27, f1
    fnmsubs  f24, f31, f3, f4
    fmsubs  f26, f2, f3, f4
    fmuls   f1, f25, f25
    fmadds  f1, f24, f24, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8003c100
    fmr     f28, f27
    fmr     f29, f28
    b       branch_0x8003c118

branch_0x8003c100:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7478(rtoc)
    fmuls   f0, f0, f1
    fmuls   f29, f24, f0
    fmuls   f28, f25, f0
    fmuls   f27, f26, f0
branch_0x8003c118:
    fmuls   f2, f29, f31
    lfs     f3, 0xc0(sp)
    fmuls   f4, f27, f30
    lfs     f0, -0x7474(rtoc)
    fmuls   f1, f28, f3
    fmsubs  f25, f27, f3, f2
    fmsubs  f24, f29, f30, f1
    fmsubs  f26, f28, f31, f4
    fmuls   f1, f25, f25
    fmadds  f1, f26, f26, f1
    fmadds  f1, f24, f24, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8003c160
    lfs     f3, -0x7488(rtoc)
    fmr     f2, f3
    fmr     f1, f2
    b       branch_0x8003c178

branch_0x8003c160:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7478(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f26, f0
    fmuls   f2, f25, f0
    fmuls   f3, f24, f0
branch_0x8003c178:
    stfs    f29, 0x0(r31)
    stfs    f28, 0x10(r31)
    stfs    f27, 0x20(r31)
    lfs     f0, 0xc0(sp)
    stfs    f0, 0x4(r31)
    stfs    f30, 0x14(r31)
    stfs    f31, 0x24(r31)
    stfs    f1, 0x8(r31)
    stfs    f2, 0x18(r31)
    stfs    f3, 0x28(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x1c(r31)
    stfs    f0, 0x2c(r31)
    b       branch_0x8003c34c

branch_0x8003c1b4:
    extsb   r0, r3
    cmpwi   r0, 0x1
    blt-    branch_0x8003c338
    lwz     r8, 0xc4(r30)
    lhz     r0, 0x4(r8)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8003c1d8
    li      r0, 0x1
    b       branch_0x8003c1dc

branch_0x8003c1d8:
    li      r0, 0x0
branch_0x8003c1dc:
    clrlwi. r0, r0, 24
    bne-    branch_0x8003c338
    lfs     f1, -0x7468(rtoc)
    lfs     f0, 0x34(r30)
    lwz     r5, -0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r7, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    lwz     r3, 0x34(r8)
    fctiwz  f0, f0
    lwz     r0, 0x38(r8)
    lfs     f29, -0x7488(rtoc)
    stfd    f0, 0xd8(sp)
    lfs     f0, -0x7474(rtoc)
    lwz     r6, 0xdc(sp)
    clrlwi  r6, r6, 16
    sraw    r5, r6, r5
    slwi    r5, r5, 2
    lfsx    f5, r7, r5
    lfsx    f6, r4, r5
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r0, 0x3c(r8)
    stw     r0, 0xa4(sp)
    lfs     f3, 0x9c(sp)
    lfs     f30, 0xa4(sp)
    fmuls   f2, f3, f5
    lfs     f31, 0xa0(sp)
    fmuls   f4, f30, f29
    fmuls   f1, f31, f6
    fmsubs  f25, f30, f6, f2
    fmsubs  f24, f31, f5, f4
    fmsubs  f26, f3, f29, f1
    fmuls   f1, f25, f25
    fmadds  f1, f24, f24, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8003c284
    fmr     f28, f29
    fmr     f27, f28
    b       branch_0x8003c29c

branch_0x8003c284:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7478(rtoc)
    fmuls   f0, f0, f1
    fmuls   f27, f24, f0
    fmuls   f28, f25, f0
    fmuls   f29, f26, f0
branch_0x8003c29c:
    fmuls   f2, f27, f30
    lfs     f3, 0x9c(sp)
    fmuls   f4, f29, f31
    lfs     f0, -0x7474(rtoc)
    fmuls   f1, f28, f3
    fmsubs  f24, f29, f3, f2
    fmsubs  f26, f27, f31, f1
    fmsubs  f25, f28, f30, f4
    fmuls   f1, f24, f24
    fmadds  f1, f25, f25, f1
    fmadds  f1, f26, f26, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8003c2e4
    lfs     f3, -0x7488(rtoc)
    fmr     f2, f3
    fmr     f1, f2
    b       branch_0x8003c2fc

branch_0x8003c2e4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7478(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f25, f0
    fmuls   f2, f24, f0
    fmuls   f3, f26, f0
branch_0x8003c2fc:
    stfs    f27, 0x0(r31)
    stfs    f28, 0x10(r31)
    stfs    f29, 0x20(r31)
    lfs     f0, 0x9c(sp)
    stfs    f0, 0x4(r31)
    stfs    f31, 0x14(r31)
    stfs    f30, 0x24(r31)
    stfs    f1, 0x8(r31)
    stfs    f2, 0x18(r31)
    stfs    f3, 0x28(r31)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x1c(r31)
    stfs    f0, 0x2c(r31)
    b       branch_0x8003c34c

branch_0x8003c338:
    lfs     f1, 0x30(r30)
    mr      r3, r5
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
branch_0x8003c34c:
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    lfd     f29, 0x110(sp)
    lfd     f28, 0x108(sp)
    lfd     f27, 0x100(sp)
    lfd     f26, 0xf8(sp)
    lfd     f25, 0xf0(sp)
    lfd     f24, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl load__11TSpineEnemyFR20JSUMemoryInputStream
load__11TSpineEnemyFR20JSUMemoryInputStream: # 0x8003c39c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x240(sp)
    stw     r31, 0x23c(sp)
    stw     r30, 0x238(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x234(sp)
    addi    r29, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    addi    r3, r30, 0x0
    addi    r4, sp, 0x12c
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x12c
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x12c
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, sp, 0x2c
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r3, -0x70b0(r13)
    addi    r4, sp, 0x2c
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r29)
    stw     r3, 0x0(r4)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r29)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x244(sp)
    lwz     r31, 0x23c(sp)
    lwz     r30, 0x238(sp)
    mtlr    r0
    lwz     r29, 0x234(sp)
    addi    sp, sp, 0x240
    blr


.globl reset__11TSpineEnemyFv
reset__11TSpineEnemyFv: # 0x8003c460
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r4, 0x124(r3)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    rlwinm  r3, r3, 0, 29, 27
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    rlwinm  r3, r3, 0, 30, 28
    stw     r3, 0xf0(r31)
    lwz     r3, 0xf0(r31)
    ori     r3, r3, 0x800
    stw     r3, 0xf0(r31)
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x8003c504
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8003c504
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8003c504:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl init__11TSpineEnemyFP12TLiveManager
init__11TSpineEnemyFP12TLiveManager: # 0x8003c518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__10TLiveActorFP12TLiveManager
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8003c574
    lfs     f0, 0x2c(r3)
    stfs    f0, 0xbc(r31)
    lfs     f0, 0x40(r3)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x18(r3)
    stfs    f0, 0xc0(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xbc(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0xb8(r31)
branch_0x8003c574:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__11TSpineEnemyFv
__dt__11TSpineEnemyFv: # 0x8003c588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003c5ec
    lis     r3, 0x803b
    subi    r3, r3, 0x1ae8
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    addic.  r0, r30, 0x114
    stw     r3, 0x20(r30)
    beq-    branch_0x8003c5d0
    lis     r3, 0x803b
    subi    r0, r3, 0x19b8
    stw     r0, 0x120(r30)
branch_0x8003c5d0:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x8003c5ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003c5ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__11TSpineEnemyFPCc
__ct__11TSpineEnemyFPCc: # 0x8003c608
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10TLiveActorFPCc
    lis     r3, 0x803b
    lwz     r30, 0x8(sp)
    subi    r3, r3, 0x1ae8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r30)
    li      r31, 0x0
    subi    r3, r3, 0x19b8
    stw     r31, 0xf4(r30)
    li      r0, 0x4
    lfs     f2, -0x7488(rtoc)
    stfs    f2, 0xf8(r30)
    fmr     f1, f2
    fmr     f0, f2
    stfs    f2, 0xfc(r30)
    stfs    f1, 0x100(r30)
    stw     r31, 0x104(r30)
    stfs    f0, 0x108(r30)
    stfs    f2, 0x10c(r30)
    stfs    f2, 0x110(r30)
    stw     r3, 0x120(r30)
    stw     r0, 0x114(r30)
    stw     r31, 0x118(r30)
    stw     r31, 0x11c(r30)
    lwz     r29, 0x114(r30)
    slwi    r3, r29, 4
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8004
    lis     r5, 0x8000
    subi    r4, r4, 0x37d4
    addi    r5, r5, 0x6a2c
    addi    r7, r29, 0x0
    li      r6, 0x10
    bl      __construct_new_array
    stw     r3, 0x11c(r30)
    li      r0, 0x1
    li      r3, 0x28
    sth     r31, 0x128(r30)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x12c(r30)
    stb     r31, 0x130(r30)
    stfs    f0, 0x134(r30)
    stw     r31, 0x138(r30)
    stb     r0, 0x13c(r30)
    lfs     f1, -0x7478(rtoc)
    stfs    f1, 0x140(r30)
    lfs     f0, -0x7444(rtoc)
    stfs    f0, 0x144(r30)
    stfs    f1, 0x148(r30)
    stfs    f1, 0x14c(r30)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8003c750
    lis     r3, 0x803b
    subi    r0, r3, 0x19c8
    stw     r0, 0x24(r29)
    lis     r3, 0x803b
    subi    r3, r3, 0x19d4
    stw     r30, 0x0(r29)
    li      r0, 0x8
    stw     r3, 0x10(r29)
    stw     r0, 0x4(r29)
    stw     r31, 0x8(r29)
    stw     r31, 0xc(r29)
    lwz     r0, 0x4(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r29)
    stw     r31, 0x14(r29)
    stw     r31, 0x18(r29)
    stw     r31, 0x20(r29)
branch_0x8003c750:
    lwz     r4, 0x8(sp)
    li      r3, 0x18
    stw     r29, 0x8c(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8003c770
    mr      r3, r29
    bl      __ct__12TGraphTracerFv
branch_0x8003c770:
    lwz     r3, 0x8(sp)
    stw     r29, 0x124(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__41TSolidStack_PC24TNerveBase_10TLiveActor__Fv
__dt__41TSolidStack_PC24TNerveBase_10TLiveActor__Fv: # 0x8003c794
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8003c7c8
    lis     r3, 0x803b
    subi    r3, r3, 0x19d4
    extsh.  r0, r4
    stw     r3, 0xc(r31)
    ble-    branch_0x8003c7c8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8003c7c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__23TSolidStack_9TPathNode_Fv
__dt__23TSolidStack_9TPathNode_Fv: # 0x8003c7e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8003c814
    lis     r3, 0x803b
    subi    r3, r3, 0x19b8
    extsh.  r0, r4
    stw     r3, 0xc(r31)
    ble-    branch_0x8003c814
    mr      r3, r31
    bl      __dl__FPv
branch_0x8003c814:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9TPathNodeFv
__ct__9TPathNodeFv: # 0x8003c82c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    lfs     f0, -0x7488(rtoc)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    blr


.globl __dt__24TSpineBase_10TLiveActor_Fv
__dt__24TSpineBase_10TLiveActor_Fv: # 0x8003c848
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8003c890
    lis     r3, 0x803b
    subi    r3, r3, 0x19c8
    addic.  r0, r31, 0x4
    stw     r3, 0x24(r31)
    beq-    branch_0x8003c880
    lis     r3, 0x803b
    subi    r0, r3, 0x19d4
    stw     r0, 0x10(r31)
branch_0x8003c880:
    extsh.  r0, r4
    ble-    branch_0x8003c890
    mr      r3, r31
    bl      __dl__FPv
branch_0x8003c890:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl update__24TSpineBase_10TLiveActor_Fv
update__24TSpineBase_10TLiveActor_Fv: # 0x8003c8a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8003c930
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8003c908
    bgt-    branch_0x8003c8e8
    lwz     r3, 0xc(r31)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    b       branch_0x8003c90c

branch_0x8003c8e8:
    lwz     r3, 0x8(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    lwz     r3, 0xc(r31)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    b       branch_0x8003c90c

branch_0x8003c908:
    li      r0, 0x0
branch_0x8003c90c:
    cmplwi  r0, 0x0
    beq-    branch_0x8003c930
    lwz     r3, 0x14(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003c924
    stw     r3, 0x1c(r31)
branch_0x8003c924:
    stw     r0, 0x14(r31)
    li      r0, 0x0
    stw     r0, 0x20(r31)
branch_0x8003c930:
    lwz     r3, 0x14(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8003c98c
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x20(r31)
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bge-    branch_0x8003c970
    li      r0, 0x1
    stw     r0, 0x20(r31)
branch_0x8003c970:
    cmpwi   r3, 0x0
    beq-    branch_0x8003c99c
    lwz     r3, 0x14(r31)
    li      r0, 0x0
    stw     r3, 0x1c(r31)
    stw     r0, 0x14(r31)
    b       branch_0x8003c99c

branch_0x8003c98c:
    lis     r3, 0x8037
    crxor   6, 6, 6
    addi    r3, r3, 0x6ec0
    bl      OSReport
branch_0x8003c99c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_enemy_cpp
__sinit_enemy_cpp: # 0x8003c9b0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x58
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8003c9f8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8003c9f8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8003ca28
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8003ca28:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8003ca58
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8003ca58:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8003ca88
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8003ca88:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cab8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8003cab8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cae8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8003cae8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cb18
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8003cb18:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cb48
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8003cb48:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cb78
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8003cb78:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cba8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8003cba8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cbd8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8003cbd8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cc08
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8003cc08:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cc38
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8003cc38:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cc68
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8003cc68:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8003cc98
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8003cc98:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TSpineEnemyFv
_32___dt__11TSpineEnemyFv: # 0x8003ccac
    subi    r3, r3, 0x20
    b       __dt__11TSpineEnemyFv

