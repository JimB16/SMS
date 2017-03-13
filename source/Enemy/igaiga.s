
.globl __dt__17TNerveGorogoroDieFv
__dt__17TNerveGorogoroDieFv: # 0x800b0e5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b0ea0
    lis     r3, 0x803b
    addi    r0, r3, 0x6880
    stw     r0, 0x0(r31)
    beq-    branch_0x800b0e90
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b0e90:
    extsh.  r0, r4
    ble-    branch_0x800b0ea0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b0ea0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveGorogoroDieCFP24TSpineBase_10TLiveActor_
execute__17TNerveGorogoroDieCFP24TSpineBase_10TLiveActor_: # 0x800b0eb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    stw     r29, 0x34(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x800b0fc4
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800b0f18
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800b0f18
    cmplwi  r3, 0x4104
    bne-    branch_0x800b0f20
branch_0x800b0f18:
    li      r0, 0x1
    b       branch_0x800b0f24

branch_0x800b0f20:
    li      r0, 0x0
branch_0x800b0f24:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b0f60
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b0f40
    li      r0, 0x1
    b       branch_0x800b0f44

branch_0x800b0f40:
    li      r0, 0x0
branch_0x800b0f44:
    cmpwi   r0, 0x0
    bne-    branch_0x800b0f60
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
branch_0x800b0f60:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800b0f84
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x15c(r12)
    mtlr    r12
    blrl
    b       branch_0x800b10a4

branch_0x800b0f84:
    lwz     r3, 0x70(r31)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    lwz     r3, 0x6c(r3)
    bl      generatePolluteModel__25TEnemyPolluteModelManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x194(r12)
    mtlr    r12
    blrl
    b       branch_0x800b10a4

branch_0x800b0fc4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    bne-    branch_0x800b0fe4
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x168
    ble-    branch_0x800b10a4
branch_0x800b0fe4:
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
    beq-    branch_0x800b1048
    stw     r0, 0x1c(r30)
branch_0x800b1048:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800b1088
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x800b1088
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b1088:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800b10d0

branch_0x800b10a4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800b10cc
    mr      r3, r31
    lfs     f1, -0x62d8(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800b10cc:
    li      r3, 0x0
branch_0x800b10d0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl execute__25TNerveGorogoroRollOnGraphCFP24TSpineBase_10TLiveActor_
execute__25TNerveGorogoroRollOnGraphCFP24TSpineBase_10TLiveActor_: # 0x800b10ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b112c
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b112c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b1178
    mr      r3, r31
    bl      jumpToNextGraphNode__11TSpineEnemyFv
    cmpwi   r3, 0x0
    blt-    branch_0x800b1170
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
    b       branch_0x800b1178

branch_0x800b1170:
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
branch_0x800b1178:
    mr      r3, r31
    lfs     f1, -0x62d4(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__25TNerveGorogoroRollOnGraphFv
__dt__25TNerveGorogoroRollOnGraphFv: # 0x800b11ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b11f0
    lis     r3, 0x803b
    addi    r0, r3, 0x6890
    stw     r0, 0x0(r31)
    beq-    branch_0x800b11e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b11e0:
    extsh.  r0, r4
    ble-    branch_0x800b11f0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b11f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl generateByGateKeeper__9TGorogoroFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
generateByGateKeeper__9TGorogoroFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x800b1208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xe0(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xdc(sp)
    mr      r29, r3
    stw     r28, 0xd8(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x124(r29)
    addi    r4, r30, 0x0
    li      r5, -0x1
    lwz     r28, 0x0(r3)
    mr      r3, r28
    bl      findNearestNodeIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_Ul
    lwz     r4, 0x124(r29)
    subi    r5, r3, 0x1
    slwi    r0, r3, 4
    stw     r3, 0x4(r4)
    mr      r3, r30
    lwz     r4, 0x124(r29)
    stw     r5, 0x8(r4)
    lwz     r5, 0x0(r28)
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, 0x4(r31)
    add     r28, r5, r0
    lfs     f2, -0x62d0(rtoc)
    lfs     f3, -0x62cc(rtoc)
    lfs     f4, -0x62c8(rtoc)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x800b12c0
    lwz     r4, MarioHitActorPos(r13)
    li      r31, 0x1
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xc4(sp)
    b       branch_0x800b12d0

branch_0x800b12c0:
    addi    r3, r28, 0x0
    addi    r4, sp, 0xbc
    bl      getPoint__10TGraphNodeCFP3Vec
    li      r31, 0x0
branch_0x800b12d0:
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x4(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lwz     r3, 0x0(r30)
    lwz     r0, 0x4(r30)
    stw     r3, 0x10(r29)
    stw     r0, 0x14(r29)
    lwz     r0, 0x8(r30)
    stw     r0, 0x18(r29)
    lfs     f1, 0xbc(sp)
    lfs     f3, 0xc4(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x62c4(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x800b15ac
    addi    r3, sp, 0xbc
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6298(rtoc)
    stw     r0, 0xd4(sp)
    lis     r28, 0x4330
    addi    r4, sp, 0xbc
    lfs     f2, -0x62c0(rtoc)
    stw     r28, 0xd0(sp)
    lfs     f1, -0x62b8(rtoc)
    mr      r5, r4
    lfd     f3, 0xd0(sp)
    addi    r3, sp, 0x8c
    lfs     f0, -0x62b4(rtoc)
    fsubs   f4, f3, f4
    lfs     f3, -0x62bc(rtoc)
    lwz     r0, -0x5eac(r13)
    lwz     r8, -0x5ea8(r13)
    fmuls   f4, f2, f4
    lwz     r6, -0x5ea4(r13)
    lfs     f2, -0x62b0(rtoc)
    fmsubs  f0, f1, f4, f0
    lfs     f1, -0x62d4(rtoc)
    fmuls   f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r7, 0xcc(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f3
    stfs    f4, 0x8c(sp)
    stfs    f2, 0x90(sp)
    stfs    f3, 0x94(sp)
    stfs    f2, 0x98(sp)
    stfs    f2, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    stfs    f2, 0xa4(sp)
    stfs    f2, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f2, 0xb0(sp)
    stfs    f4, 0xb4(sp)
    stfs    f2, 0xb8(sp)
    bl      PSMTXMultVec
    lfs     f2, -0x62b0(rtoc)
    lfs     f1, 0xc4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800b1438
    lfs     f0, 0xbc(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800b1430
    lfs     f2, -0x62ac(rtoc)
    b       branch_0x800b14ac

branch_0x800b1430:
    lfs     f2, -0x62a8(rtoc)
    b       branch_0x800b14ac

branch_0x800b1438:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800b1474
    lfs     f2, 0xbc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x62a4(rtoc)
    stw     r0, 0xcc(sp)
    stw     r28, 0xc8(sp)
    lfd     f1, 0xc8(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x800b14ac

branch_0x800b1474:
    fneg    f1, f1
    lfs     f2, 0xbc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x62a4(rtoc)
    stw     r0, 0xcc(sp)
    lfs     f0, -0x62a0(rtoc)
    stw     r28, 0xc8(sp)
    lfd     f2, 0xc8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x800b14ac:
    lfs     f0, -0x62cc(rtoc)
    b       branch_0x800b14b8

branch_0x800b14b4:
    fsubs   f2, f2, f0
branch_0x800b14b8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800b14b4
    lfs     f1, -0x62cc(rtoc)
    lfs     f0, -0x62b0(rtoc)
    b       branch_0x800b14d4

branch_0x800b14d0:
    fadds   f2, f2, f1
branch_0x800b14d4:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800b14d0
    stfs    f2, 0x34(r29)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6298(rtoc)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    lfs     f2, -0x62c0(rtoc)
    mr      r3, r29
    stw     r0, 0xc8(sp)
    lfs     f1, -0x629c(rtoc)
    lfd     f3, 0xc8(sp)
    lfs     f0, 0xbc(sp)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xc0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc0(sp)
    lfs     f0, 0xc4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xbc(sp)
    lfs     f0, 0x0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f1, 0xc0(sp)
    lfs     f0, 0x4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(sp)
    lfs     f1, 0xc4(sp)
    lfs     f0, 0x8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x62b4(rtoc)
    addi    r4, r29, 0x0
    addi    r3, sp, 0x80
    addi    r5, sp, 0xbc
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x80(sp)
    lwz     r0, 0x84(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x88(sp)
    stw     r0, 0xb4(r29)
    b       branch_0x800b16d0

branch_0x800b15ac:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x62b4(rtoc)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0x74
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x74(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x7c(sp)
    stw     r0, 0xb4(r29)
    lfs     f2, -0x62b0(rtoc)
    lfs     f1, 0xc4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800b1620
    lfs     f0, 0xbc(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800b1618
    lfs     f2, -0x62ac(rtoc)
    b       branch_0x800b169c

branch_0x800b1618:
    lfs     f2, -0x62a8(rtoc)
    b       branch_0x800b169c

branch_0x800b1620:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800b1660
    lfs     f2, 0xbc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x62a4(rtoc)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    stw     r0, 0xc8(sp)
    lfd     f1, 0xc8(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x800b169c

branch_0x800b1660:
    fneg    f1, f1
    lfs     f2, 0xbc(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x62a4(rtoc)
    stw     r0, 0xcc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x62a0(rtoc)
    stw     r0, 0xc8(sp)
    lfd     f2, 0xc8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x800b169c:
    lfs     f0, -0x62cc(rtoc)
    b       branch_0x800b16a8

branch_0x800b16a4:
    fsubs   f2, f2, f0
branch_0x800b16a8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800b16a4
    lfs     f1, -0x62cc(rtoc)
    lfs     f0, -0x62b0(rtoc)
    b       branch_0x800b16c4

branch_0x800b16c0:
    fadds   f2, f2, f1
branch_0x800b16c4:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800b16c0
    stfs    f2, 0x34(r29)
branch_0x800b16d0:
    cmpwi   r31, 0x0
    beq-    branch_0x800b1764
    li      r0, 0x0
    lwz     r4, MarioHitActorPos(r13)
    stw     r0, 0x64(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x70(sp)
    lwz     r3, 0x118(r29)
    lwz     r0, 0x114(r29)
    cmpw    r3, r0
    bge-    branch_0x800b1744
    lwz     r4, 0x11c(r29)
    slwi    r3, r3, 4
    lwz     r0, 0xf4(r29)
    add     r4, r4, r3
    stw     r0, 0x0(r4)
    lwz     r3, 0xf8(r29)
    lwz     r0, 0xfc(r29)
    stw     r3, 0x4(r4)
    stw     r0, 0x8(r4)
    lwz     r0, 0x100(r29)
    stw     r0, 0xc(r4)
    lwz     r3, 0x118(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x118(r29)
branch_0x800b1744:
    lwz     r0, 0x64(sp)
    stw     r0, 0xf4(r29)
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0xf8(r29)
    stw     r0, 0xfc(r29)
    lwz     r0, 0x70(sp)
    stw     r0, 0x100(r29)
branch_0x800b1764:
    li      r0, 0x1
    stb     r0, 0x1a8(r29)
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    lwz     r28, 0xd8(sp)
    addi    sp, sp, 0xe8
    blr


.globl setMActorAndKeeper__9TGorogoroFv
setMActorAndKeeper__9TGorogoroFv: # 0x800b178c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b17c4
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800b17c4:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x1f24
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


.globl isRolling__9TGorogoroFv
isRolling__9TGorogoroFv: # 0x800b17f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6af0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b1850
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6aec(r13)
    addi    r0, r3, 0x6890
    lis     r4, 0x800b
    stw     r0, -0x6aec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x182c
    addi    r4, r4, 0x11ac
    subi    r3, r13, 0x6aec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6af0(r13)
branch_0x800b1850:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6aec
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b1884
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800b1878
    li      r0, 0x1
    b       branch_0x800b187c

branch_0x800b1878:
    li      r0, 0x0
branch_0x800b187c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b188c
branch_0x800b1884:
    li      r3, 0x1
    b       branch_0x800b1890

branch_0x800b188c:
    li      r3, 0x0
branch_0x800b1890:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getBasNameTable__9TGorogoroCFv
getBasNameTable__9TGorogoroCFv: # 0x800b18a4
    lis     r3, 0x803b
    addi    r3, r3, 0x6840
    blr


.globl bound__9TGorogoroFv
bound__9TGorogoroFv: # 0x800b18b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    addi    r4, r31, 0x10
    lwz     r3, 0x70(r3)
    addi    r5, r31, 0x24
    lwz     r3, 0x6c(r3)
    bl      generatePolluteModel__25TEnemyPolluteModelManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800b1904
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800b1904
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x15
    li      r5, 0xa
    bl      start__9RumbleMgrFiiP3Vec
branch_0x800b1904:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMeltAnm__9TGorogoroFv
setMeltAnm__9TGorogoroFv: # 0x800b1918
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x130(r30)
    addi    r31, r30, 0x1b4
    addi    r4, r31, 0x0
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1000
    stw     r0, 0xf0(r30)
    lwz     r3, 0x74(r30)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    bl      PSMTXCopy
    lfs     f0, 0xc8(r30)
    mr      r5, r31
    li      r4, 0xbe
    stfs    f0, 0x1d0(r30)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, gpMarioParticleManager(r13)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b19c8
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r3)
branch_0x800b19c8:
    lwz     r3, gpMSound(r13)
    li      r4, 0x2913
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b19f8
    addi    r4, r30, 0x10
    li      r3, 0x2913
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800b19f8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setDeadAnm__9TGorogoroFv
setDeadAnm__9TGorogoroFv: # 0x800b1a10
    mflr    r0
    li      r4, 0xbf
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r5, 0x74(r31)
    lwz     r3, gpMarioParticleManager(r13)
    lwz     r5, 0x4(r5)
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b1a80
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
branch_0x800b1a80:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, gpMSound(r13)
    li      r4, 0x2856
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b1ac8
    addi    r4, r31, 0x10
    li      r3, 0x2856
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800b1ac8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl flagJump__9TGorogoroFv
flagJump__9TGorogoroFv: # 0x800b1adc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    addi    r4, sp, 0x44
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r5, 0x124(r3)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f1, 0x14(r31)
    mr      r3, r31
    lfs     f0, -0x62b8(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r12, 0x0(r31)
    lwz     r4, 0x124(r31)
    lwz     r12, 0xe8(r12)
    lfs     f31, 0xc(r4)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r3, sp, 0x5c
    addi    r5, sp, 0x44
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x5c(sp)
    li      r0, 0x1
    lwz     r4, 0x60(sp)
    stw     r3, 0x50(sp)
    lwz     r3, 0x64(sp)
    stw     r4, 0x54(sp)
    stw     r3, 0x58(sp)
    stb     r0, 0x1a8(r31)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl walkBehavior__9TGorogoroFif
walkBehavior__9TGorogoroFif: # 0x800b1bb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x150(sp)
    stfd    f31, 0x148(sp)
    fmr     f31, f1
    stmw    r27, 0x134(sp)
    mr      r30, r3
    mr      r31, r4
    lfs     f1, 0x14(r3)
    lfs     f0, 0xc8(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b1bf0
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x800b1bf0:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800b1d88
    lwz     r5, 0xc4(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800b1c48
    lwz     r4, 0x44(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800b1c48
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x9a
    bne-    branch_0x800b1c48
    addi    r3, r4, 0x0
    addi    r4, r30, 0x0
    bl      turnByEnemy__16TBiancoWatermillFP9THitActorPC12TBGCheckData
    lfs     f0, -0x6290(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    fmuls   f1, f0, f31
    bl      walkBehavior__10TRollEnemyFif
    b       branch_0x800b1e90

branch_0x800b1c48:
    lfs     f1, 0x14(r30)
    addi    r4, sp, 0x12c
    lfs     f0, 0xc0(r30)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r30)
    lfs     f3, 0x18(r30)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r5, 0x12c(sp)
    cmplwi  r5, 0x0
    beq-    branch_0x800b1cb4
    lwz     r4, 0x44(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800b1cb4
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x9a
    bne-    branch_0x800b1cb4
    addi    r3, r4, 0x0
    addi    r4, r30, 0x0
    bl      turnByEnemy__16TBiancoWatermillFP9THitActorPC12TBGCheckData
    lfs     f0, -0x628c(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    fmuls   f1, f0, f31
    bl      walkBehavior__10TRollEnemyFif
    b       branch_0x800b1e90

branch_0x800b1cb4:
    lwz     r3, 0x138(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800b1d88
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800b1d88
    lfs     f1, 0x14(r30)
    li      r0, 0x4
    lfs     f0, 0xc0(r30)
    li      r28, 0x0
    lfs     f3, 0x148(r30)
    lfs     f2, 0x14c(r30)
    fadds   f1, f1, f0
    lfs     f4, 0x18(r30)
    addi    r4, sp, 0x100
    lfs     f0, 0x10(r30)
    fmuls   f2, f3, f2
    stfs    f0, 0x100(sp)
    lwz     r3, gpMap(r13)
    stfs    f1, 0x104(sp)
    stfs    f4, 0x108(sp)
    stfs    f2, 0x10c(sp)
    stw     r0, 0x110(sp)
    stw     r28, 0x118(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x800b1d88
    addi    r29, sp, 0x100
    li      r27, 0x0
    b       branch_0x800b1d64

branch_0x800b1d2c:
    addi    r0, r28, 0x1c
    lwzx    r5, r29, r0
    lwz     r4, 0x44(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800b1d5c
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x9a
    bne-    branch_0x800b1d5c
    addi    r3, r4, 0x0
    addi    r4, r30, 0x0
    bl      turnByEnemy__16TBiancoWatermillFP9THitActorPC12TBGCheckData
branch_0x800b1d5c:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
branch_0x800b1d64:
    lwz     r0, 0x114(sp)
    cmpw    r27, r0
    blt+    branch_0x800b1d2c
    lfs     f0, -0x6290(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    fmuls   f1, f0, f31
    bl      walkBehavior__10TRollEnemyFif
    b       branch_0x800b1e90

branch_0x800b1d88:
    lwz     r4, 0x1a4(r30)
    fmr     f1, f31
    mr      r3, r30
    lfs     f0, 0x1bc(r4)
    mr      r4, r31
    stfs    f0, 0x144(r30)
    bl      walkBehavior__10TRollEnemyFif
    lfs     f2, -0x6288(rtoc)
    lfs     f1, 0x140(r30)
    lfs     f0, 0x194(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x194(r30)
    lbz     r0, -0x6ae8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b1dfc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ae4(r13)
    addi    r0, r3, 0x6880
    lis     r4, 0x800b
    stw     r0, -0x6ae4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1838
    addi    r4, r4, 0xe5c
    subi    r3, r13, 0x6ae4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ae8(r13)
branch_0x800b1dfc:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6ae4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b1e90
    lfs     f1, -0x6284(rtoc)
    lfs     f0, 0xc8(r30)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800b1e90
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800b1e50
    subi    r0, r3, 0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800b1e50
    cmplwi  r3, 0x4104
    bne-    branch_0x800b1e58
branch_0x800b1e50:
    li      r0, 0x1
    b       branch_0x800b1e5c

branch_0x800b1e58:
    li      r0, 0x0
branch_0x800b1e5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b1e90
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800b1e90:
    lmw     r27, 0x134(sp)
    lwz     r0, 0x154(sp)
    lfd     f31, 0x148(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl boundSE__9TGorogoroFv
boundSE__9TGorogoroFv: # 0x800b1ea8
    mflr    r0
    li      r4, 0x2844
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r5, 0xc4(r31)
    lwz     r3, gpMSound(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b1f08
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x2844
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800b1f08:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl rollSE__9TGorogoroFv
rollSE__9TGorogoroFv: # 0x800b1f20
    mflr    r0
    li      r4, 0x2054
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r5, 0xc4(r31)
    lwz     r3, gpMSound(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b1f80
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x2054
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800b1f80:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl behaveToWater__9TGorogoroFP9THitActor
behaveToWater__9TGorogoroFP9THitActor: # 0x800b1f98
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xb0(sp)
    stw     r0, 0x160(r3)
    lwz     r4, 0x1a4(r3)
    lfs     f1, 0x158(r3)
    lfs     f0, 0x364(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b210c
    lfs     f1, 0x350(r4)
    mr      r3, r31
    lfs     f0, 0x148(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x148(r31)
    lfs     f0, 0x158(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x158(r31)
    lfs     f0, 0xb8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(r31)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x24(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lis     r30, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0xac(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xa8(sp)
    lfd     f1, -0x6298(rtoc)
    mtlr    r12
    lfd     f0, 0xa8(sp)
    fsubs   f29, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6298(rtoc)
    stw     r0, 0xa4(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xa0(sp)
    mtlr    r12
    lfd     f0, 0xa0(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6298(rtoc)
    stw     r0, 0x9c(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0x98(sp)
    mtlr    r12
    lfd     f0, 0x98(sp)
    fsubs   f31, f0, f1
    blrl
    lfs     f1, 0x148(r31)
    lfs     f0, 0x154(r31)
    lwz     r0, 0x180(r3)
    mr      r3, r31
    fdivs   f4, f1, f0
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x94(sp)
    stw     r30, 0x90(sp)
    fmuls   f0, f29, f4
    lfd     f2, 0x90(sp)
    fmuls   f1, f30, f4
    fsubs   f2, f2, f3
    stfs    f0, 0x50(r31)
    fmuls   f0, f31, f4
    stfs    f1, 0x54(r31)
    fmuls   f1, f2, f4
    stfs    f0, 0x58(r31)
    stfs    f1, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
branch_0x800b210c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x800b2144
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x800b2148

branch_0x800b2144:
    li      r0, 0x1
branch_0x800b2148:
    lbz     r3, 0x13c(r31)
    clrlwi  r0, r0, 24
    mulli   r3, r3, 0xff
    divw    r0, r3, r0
    stb     r0, 0x1f0(r31)
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x2
    bge-    branch_0x800b2170
    li      r0, 0x1
    stb     r0, 0x13c(r31)
branch_0x800b2170:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x176
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b21c8
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
branch_0x800b21c8:
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    mtlr    r0
    lfd     f29, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    addi    sp, sp, 0xd0
    blr


.globl forceKill__9TGorogoroFv
forceKill__9TGorogoroFv: # 0x800b21ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800b2218
    li      r0, 0x1
    b       branch_0x800b221c

branch_0x800b2218:
    li      r0, 0x0
branch_0x800b221c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b23c4
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x104
    beq-    branch_0x800b2240
    cmplwi  r3, 0x105
    beq-    branch_0x800b2240
    cmplwi  r3, 0x4104
    bne-    branch_0x800b2248
branch_0x800b2240:
    li      r0, 0x1
    b       branch_0x800b224c

branch_0x800b2248:
    li      r0, 0x0
branch_0x800b224c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b2290
    cmplwi  r3, 0x100
    beq-    branch_0x800b227c
    cmplwi  r3, 0x101
    beq-    branch_0x800b227c
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800b227c
    cmplwi  r3, 0x4104
    bne-    branch_0x800b2284
branch_0x800b227c:
    li      r0, 0x1
    b       branch_0x800b2288

branch_0x800b2284:
    li      r0, 0x0
branch_0x800b2288:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b23c4
branch_0x800b2290:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b22a4
    li      r0, 0x1
    b       branch_0x800b22a8

branch_0x800b22a4:
    li      r0, 0x0
branch_0x800b22a8:
    cmpwi   r0, 0x0
    bne-    branch_0x800b23c4
    lbz     r0, -0x6ae8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b22f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ae4(r13)
    addi    r0, r3, 0x6880
    lis     r4, 0x800b
    stw     r0, -0x6ae4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1838
    addi    r4, r4, 0xe5c
    subi    r3, r13, 0x6ae4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ae8(r13)
branch_0x800b22f4:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6ae4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800b23c4
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x6ae8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b2350
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6ae4(r13)
    addi    r0, r4, 0x6880
    lis     r4, 0x800b
    stw     r0, -0x6ae4(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0xe5c
    addi    r5, r5, 0x1838
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ae8(r13)
branch_0x800b2350:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6ae4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800b2368
    stw     r0, 0x1c(r4)
branch_0x800b2368:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800b23ac
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800b23ac
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b23ac:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
branch_0x800b23c4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl kill__9TGorogoroFv
kill__9TGorogoroFv: # 0x800b23d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x194(r3)
    lwz     r3, 0x8c(r3)
    lwz     r30, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x800b2514
    lbz     r0, -0x6ae8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b2450
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ae4(r13)
    addi    r0, r3, 0x6880
    lis     r4, 0x800b
    stw     r0, -0x6ae4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1838
    addi    r4, r4, 0xe5c
    subi    r3, r13, 0x6ae4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ae8(r13)
branch_0x800b2450:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6ae4
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800b2514
    li      r0, 0x0
    stw     r0, 0x8(r4)
    lbz     r0, -0x6ae8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b24ac
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6ae4(r13)
    addi    r0, r4, 0x6880
    lis     r4, 0x800b
    stw     r0, -0x6ae4(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0xe5c
    addi    r5, r5, 0x1838
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ae8(r13)
branch_0x800b24ac:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6ae4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800b24c4
    stw     r0, 0x1c(r4)
branch_0x800b24c4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x800b2508
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800b2508
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b2508:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
branch_0x800b2514:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl reset__9TGorogoroFv
reset__9TGorogoroFv: # 0x800b252c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stb     r0, 0x130(r3)
    bl      reset__10TRollEnemyFv
    lwz     r3, 0xf0(r31)
    li      r0, 0xff
    rlwinm  r3, r3, 0, 20, 18
    stw     r3, 0xf0(r31)
    stb     r0, 0x1f0(r31)
    lfs     f0, -0x6280(rtoc)
    stfs    f0, 0x1ac(r31)
    lfs     f0, -0x62d4(rtoc)
    stfs    f0, 0x1b0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcRootMatrix__9TGorogoroFv
calcRootMatrix__9TGorogoroFv: # 0x800b2584
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stfd    f27, 0x80(sp)
    stfd    f26, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lbz     r0, -0x6ae8(r13)
    stw     r31, -0x6b10(r13)
    extsb.  r0, r0
    bne-    branch_0x800b25f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6ae4(r13)
    addi    r0, r3, 0x6880
    lis     r4, 0x800b
    stw     r0, -0x6ae4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1838
    addi    r4, r4, 0xe5c
    subi    r3, r13, 0x6ae4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6ae8(r13)
branch_0x800b25f8:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6ae4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800b2634
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800b274c
    lfs     f0, 0x10(r31)
    stfs    f0, 0x1c0(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x1e0(r31)
    b       branch_0x800b274c

branch_0x800b2634:
    mr      r3, r31
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800b274c
    lfs     f1, -0x62b8(rtoc)
    lfs     f0, 0xc8(r31)
    lwz     r3, 0x1a4(r31)
    fadds   f0, f1, f0
    lfs     f1, 0x14(r31)
    lfs     f27, 0x38c(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b26bc
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x175
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b26bc
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
branch_0x800b26bc:
    lfs     f1, 0x158(r31)
    mr      r3, r31
    lfs     f0, 0x14(r31)
    lfs     f26, 0x38(r31)
    fmadds  f30, f27, f1, f0
    lfs     f27, 0x34(r31)
    lfs     f28, 0x30(r31)
    lfs     f29, 0x18(r31)
    lfs     f31, 0x10(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x62bc(rtoc)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f28
    fmuls   f2, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x68(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0x60(sp)
    lwz     r4, 0x6c(sp)
    stfd    f0, 0x58(sp)
    lwz     r5, 0x64(sp)
    lwz     r6, 0x5c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
branch_0x800b274c:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lfd     f26, 0x78(sp)
    lwz     r31, 0x74(sp)
    addi    sp, sp, 0xa8
    blr


.globl perform__9TGorogoroFUlPQ26JDrama9TGraphics
perform__9TGorogoroFUlPQ26JDrama9TGraphics: # 0x800b2778
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800b27ec
    lwz     r3, -0x6318(r13)
    addi    r4, r30, 0x10
    bl      isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x800b27ec
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x800b27dc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r30)
    bl      calc__6MActorFv
branch_0x800b27dc:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x800b27ec
    lwz     r3, 0x74(r30)
    bl      viewCalc__6MActorFv
branch_0x800b27ec:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl init__9TGorogoroFP12TLiveManager
init__9TGorogoroFP12TLiveManager: # 0x800b2804
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x19
    stw     r0, 0x4c(r31)
    li      r0, 0x31
    lis     r3, 0xa800
    stw     r0, 0x150(r31)
    subi    r0, r3, 0x1
    lwz     r3, 0x64(r31)
    and     r0, r3, r0
    stw     r0, 0x64(r31)
    lbz     r0, -0x6af0(r13)
    extsb.  r0, r0
    bne-    branch_0x800b2890
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6aec(r13)
    addi    r0, r3, 0x6890
    lis     r4, 0x800b
    stw     r0, -0x6aec(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x182c
    addi    r4, r4, 0x11ac
    subi    r3, r13, 0x6aec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6af0(r13)
branch_0x800b2890:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6aec
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a4(r31)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b28e8
    lis     r3, 0x8038
    subi    r4, r3, 0x1f10
    addi    r3, r30, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x800b28e8:
    lwz     r4, 0x74(r31)
    mr      r3, r30
    li      r5, 0x18
    lwz     r4, 0x4(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    li      r0, 0xff
    lis     r3, 0x8038
    stb     r0, 0x1f0(r31)
    subi    r3, r3, 0x1f00
    bl      getGlbResource__13JKRFileLoaderFPCc
    mr.     r29, r3
    beq-    branch_0x800b2944
    lwz     r3, 0x74(r31)
    addi    r5, r29, 0x0
    subi    r4, rtoc, 0x627c
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    lwz     r3, 0x14(r30)
    addi    r5, r29, 0x0
    subi    r4, rtoc, 0x627c
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x800b2944:
    li      r29, 0x0
    b       branch_0x800b2978

branch_0x800b294c:
    lwz     r3, 0x4(r3)
    addi    r4, r29, 0x0
    addi    r6, r31, 0x1ed
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    lwz     r3, 0x14(r30)
    addi    r4, r29, 0x0
    addi    r6, r31, 0x1ed
    li      r5, 0x0
    bl      SMS_InitPacket_OneTevKColor__FP8J3DModelUs14_GXTevKColorIDPC8_GXColor
    addi    r29, r29, 0x1
branch_0x800b2978:
    lwz     r3, 0x74(r31)
    clrlwi  r5, r29, 16
    lwz     r4, 0x4(r3)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmplw   r5, r0
    blt+    branch_0x800b294c
    lis     r4, 0x800b
    addi    r5, r4, 0x4cd4
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    li      r0, 0x1
    stb     r0, 0x130(r31)
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl __dt__10TRollEnemyFv
__dt__10TRollEnemyFv: # 0x800b29c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b2a48
    lis     r3, 0x803b
    addi    r3, r3, 0x6dc0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b2a38
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b2a38
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800b2a38:
    extsh.  r0, r31
    ble-    branch_0x800b2a48
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b2a48:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__16TGorogoroManagerFUlPQ26JDrama9TGraphics
perform__16TGorogoroManagerFUlPQ26JDrama9TGraphics: # 0x800b2a64
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x170(sp)
    stmw    r27, 0x15c(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    beq-    branch_0x800b2f00
    lwz     r3, 0x60(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x60(r29)
    lwz     r3, 0x38(r29)
    lwz     r0, 0x60(r29)
    lwz     r28, 0x33c(r3)
    cmpw    r0, r28
    ble-    branch_0x800b2f00
    li      r0, 0x0
    stw     r0, 0x60(r29)
    lwz     r3, 0x70(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800b2ae8
    lwz     r4, MarioHitActorPos(r13)
    bne-    branch_0x800b2ac8
    b       branch_0x800b2ad0

branch_0x800b2ac8:
    bl      contain__20TAreaCylinderManagerFRCQ29JGeometry8TVec3_f_
    mr      r0, r3
branch_0x800b2ad0:
    cmpwi   r0, 0x0
    beq-    branch_0x800b2ae0
    li      r0, 0x1
    b       branch_0x800b2aec

branch_0x800b2ae0:
    li      r0, 0x0
    b       branch_0x800b2aec

branch_0x800b2ae8:
    li      r0, 0x1
branch_0x800b2aec:
    cmpwi   r0, 0x0
    beq-    branch_0x800b2f00
    lwz     r5, 0x38(r29)
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x800b2ed0

branch_0x800b2b04:
    lwz     r4, 0x18(r29)
    lwzx    r4, r4, r3
    lwz     r0, 0xf0(r4)
    addi    r27, r4, 0x0
    clrlwi. r0, r0, 31
    beq-    branch_0x800b2ec8
    lwz     r3, 0x64(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x800b2eb0
    li      r4, 0x1
    bl      isBuried__13TMapEventSinkCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800b2ea8
    lbz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800b2e90
    li      r0, 0x0
    stb     r0, 0x68(r29)
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x124(r27)
    addi    r4, sp, 0x120
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0xa0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r6, 0x120(sp)
    li      r5, 0xa
    lwz     r3, 0x124(sp)
    li      r0, 0x9
    addi    r4, sp, 0x120
    stw     r6, 0x10(r27)
    stw     r3, 0x14(r27)
    lwz     r3, 0x128(sp)
    stw     r3, 0x18(r27)
    lwz     r3, 0x124(r27)
    stw     r5, 0x4(r3)
    lwz     r3, 0x124(r27)
    stw     r0, 0x8(r3)
    lwz     r3, 0x124(r27)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0xb0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f2, 0x128(sp)
    lfs     f1, 0x18(r27)
    lfs     f0, -0x62b0(rtoc)
    fsubs   f1, f2, f1
    lfs     f3, 0x120(sp)
    lfs     f2, 0x10(r27)
    fcmpu   cr0, f0, f1
    fsubs   f2, f3, f2
    bne-    branch_0x800b2c00
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800b2bf8
    lfs     f1, -0x62ac(rtoc)
    b       branch_0x800b2c74

branch_0x800b2bf8:
    lfs     f1, -0x62a8(rtoc)
    b       branch_0x800b2c74

branch_0x800b2c00:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800b2c3c
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x62a4(rtoc)
    stw     r0, 0x154(sp)
    lis     r0, 0x4330
    stw     r0, 0x150(sp)
    lfd     f1, 0x150(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800b2c74

branch_0x800b2c3c:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x62a4(rtoc)
    stw     r0, 0x154(sp)
    lis     r0, 0x4330
    lfs     f0, -0x62a0(rtoc)
    stw     r0, 0x150(sp)
    lfd     f2, 0x150(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800b2c74:
    lfs     f2, -0x62b0(rtoc)
    lfs     f3, -0x62cc(rtoc)
    bl      MsWrap_f___Ffff_800b2f40
    stfs    f1, 0x34(r27)
    li      r4, 0x0
    stw     r4, 0x138(sp)
    lwz     r3, 0x120(sp)
    lwz     r0, 0x124(sp)
    stw     r3, 0x13c(sp)
    stw     r0, 0x140(sp)
    lwz     r0, 0x128(sp)
    stw     r0, 0x144(sp)
    lwz     r0, 0x138(sp)
    stw     r0, 0xf4(r27)
    lwz     r3, 0x13c(sp)
    lwz     r0, 0x140(sp)
    stw     r3, 0xf8(r27)
    stw     r0, 0xfc(r27)
    lwz     r0, 0x144(sp)
    stw     r0, 0x100(r27)
    lwz     r0, 0x138(sp)
    stw     r0, 0x104(r27)
    lwz     r3, 0x13c(sp)
    lwz     r0, 0x140(sp)
    stw     r3, 0x108(r27)
    stw     r0, 0x10c(r27)
    lwz     r0, 0x144(sp)
    stw     r0, 0x110(r27)
    stw     r4, 0x118(r27)
    lwz     r3, 0x18(r29)
    lwz     r28, 0x4(r3)
    lwz     r12, 0x0(r28)
    mr      r3, r28
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x124(r28)
    addi    r4, sp, 0xf8
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x100
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r6, 0xf8(sp)
    li      r5, 0x10
    lwz     r3, 0xfc(sp)
    li      r0, 0xf
    addi    r4, sp, 0xf8
    stw     r6, 0x10(r28)
    stw     r3, 0x14(r28)
    lwz     r3, 0x100(sp)
    stw     r3, 0x18(r28)
    lwz     r3, 0x124(r28)
    stw     r5, 0x4(r3)
    lwz     r3, 0x124(r28)
    stw     r0, 0x8(r3)
    lwz     r3, 0x124(r28)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x110
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f2, 0x100(sp)
    lfs     f1, 0x18(r28)
    lfs     f0, -0x62b0(rtoc)
    fsubs   f1, f2, f1
    lfs     f3, 0xf8(sp)
    lfs     f2, 0x10(r28)
    fcmpu   cr0, f0, f1
    fsubs   f2, f3, f2
    bne-    branch_0x800b2da4
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800b2d9c
    lfs     f1, -0x62ac(rtoc)
    b       branch_0x800b2e18

branch_0x800b2d9c:
    lfs     f1, -0x62a8(rtoc)
    b       branch_0x800b2e18

branch_0x800b2da4:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800b2de0
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x62a4(rtoc)
    stw     r0, 0x154(sp)
    lis     r0, 0x4330
    stw     r0, 0x150(sp)
    lfd     f1, 0x150(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800b2e18

branch_0x800b2de0:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x62a4(rtoc)
    stw     r0, 0x154(sp)
    lis     r0, 0x4330
    lfs     f0, -0x62a0(rtoc)
    stw     r0, 0x150(sp)
    lfd     f2, 0x150(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800b2e18:
    lfs     f2, -0x62b0(rtoc)
    lfs     f3, -0x62cc(rtoc)
    bl      MsWrap_f___Ffff_800b2f40
    stfs    f1, 0x34(r28)
    li      r4, 0x0
    stw     r4, 0x110(sp)
    lwz     r3, 0xf8(sp)
    lwz     r0, 0xfc(sp)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x100(sp)
    stw     r0, 0x11c(sp)
    lwz     r0, 0x110(sp)
    stw     r0, 0xf4(r28)
    lwz     r3, 0x114(sp)
    lwz     r0, 0x118(sp)
    stw     r3, 0xf8(r28)
    stw     r0, 0xfc(r28)
    lwz     r0, 0x11c(sp)
    stw     r0, 0x100(r28)
    lwz     r0, 0x110(sp)
    stw     r0, 0x104(r28)
    lwz     r3, 0x114(sp)
    lwz     r0, 0x118(sp)
    stw     r3, 0x108(r28)
    stw     r0, 0x10c(r28)
    lwz     r0, 0x11c(sp)
    stw     r0, 0x110(r28)
    stw     r4, 0x118(r28)
    b       branch_0x800b2f00

branch_0x800b2e90:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800b2f00

branch_0x800b2ea8:
    stw     r28, 0x60(r29)
    b       branch_0x800b2f00

branch_0x800b2eb0:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    b       branch_0x800b2f00

branch_0x800b2ec8:
    addi    r6, r6, 0x1
    addi    r3, r3, 0x4
branch_0x800b2ed0:
    cmplwi  r5, 0x0
    bne-    branch_0x800b2ee0
    lwz     r4, 0x14(r29)
    b       branch_0x800b2ef8

branch_0x800b2ee0:
    lbz     r0, 0xa4(r5)
    lwz     r4, 0x14(r29)
    cmpw    r0, r4
    ble-    branch_0x800b2ef4
    b       branch_0x800b2ef8

branch_0x800b2ef4:
    mr      r4, r0
branch_0x800b2ef8:
    cmpw    r6, r4
    blt+    branch_0x800b2b04
branch_0x800b2f00:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r3, 0x6c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lmw     r27, 0x15c(sp)
    lwz     r0, 0x174(sp)
    addi    sp, sp, 0x170
    mtlr    r0
    blr


.globl MsWrap_f___Ffff_800b2f40
MsWrap_f___Ffff_800b2f40: # 0x800b2f40
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800b2f7c
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0xad954, 0x800b2f58 - 0x800b2f54
branch_0x800b2f58:
    fsubs   f1, f1, f0
branch_0x800b2f5c:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800b2f58
    b       branch_0x800b2f70

branch_0x800b2f6c:
    fadds   f1, f1, f0
branch_0x800b2f70:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800b2f6c
    blr

branch_0x800b2f7c:
    fsubs   f0, f3, f2
    b       branch_0x800b2f5c


.incbin "./baserom/code/Text_0x80005600.bin", 0xad984, 0x800b2f88 - 0x800b2f84

.globl createModelData__16TGorogoroManagerFv
createModelData__16TGorogoroManagerFv: # 0x800b2f88
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6868
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSetEnemies__16TGorogoroManagerFv
initSetEnemies__16TGorogoroManagerFv: # 0x800b2fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800b303c
    stw     r27, 0x24(sp)
    lis     r3, 0x8038
    subi    r4, r3, 0x1edc
    lwz     r3, 0x24(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x24(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803b
    subi    r0, r3, 0x1980
    stw     r0, 0x0(r27)
    li      r5, 0x0
    lis     r3, 0x803b
    stw     r5, 0x10(r27)
    li      r4, 0x5
    addi    r0, r3, 0x6af0
    stw     r4, 0x14(r27)
    stw     r5, 0x18(r27)
    stw     r0, 0x0(r27)
branch_0x800b303c:
    stw     r27, 0x6c(r31)
    lwz     r3, 0x6c(r31)
    lwz     r4, 0x18(r31)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x800b3104

branch_0x800b3068:
    srawi   r0, r28, 1
    lwz     r3, -0x70b0(r13)
    addze   r0, r0
    slwi    r0, r0, 1
    subfc   r0, r0, r28
    slwi    r0, r0, 2
    subi    r4, r13, 0x7e50
    lwzx    r4, r4, r0
    bl      getGraphByName__10TConductorFPCc
    mr      r29, r3
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x800b30ac
    lwz     r3, -0x70b0(r13)
    lwz     r4, -0x7e50(r13)
    bl      getGraphByName__10TConductorFPCc
    mr      r29, r3
branch_0x800b30ac:
    mr      r3, r29
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x800b30fc
    lwz     r5, 0x18(r31)
    addi    r4, sp, 0x34
    lwz     r3, 0x0(r29)
    lwzx    r27, r5, r30
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r3, 0x124(r27)
    stw     r29, 0x0(r3)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x10(r27)
    stw     r0, 0x14(r27)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x18(r27)
    lwz     r3, 0x8(r29)
    subi    r0, r3, 0x1
    stw     r0, 0x1e8(r27)
branch_0x800b30fc:
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x800b3104:
    lwz     r0, 0x14(r31)
    cmpw    r28, r0
    blt+    branch_0x800b3068
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl createEnemyInstance__16TGorogoroManagerFv
createEnemyInstance__16TGorogoroManagerFv: # 0x800b3124
    mflr    r0
    li      r3, 0x1f4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b3190
    stw     r30, 0xc(sp)
    lis     r3, 0x8038
    subi    r4, r3, 0x1ec8
    lwz     r3, 0xc(sp)
    bl      __ct__10TRollEnemyFPCc
    lwz     r31, 0xc(sp)
    lis     r3, 0x803b
    addi    r3, r3, 0x68a0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x1b4
    stw     r0, 0x20(r31)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
    li      r0, 0x0
    stb     r0, 0x1e4(r31)
    stw     r0, 0x1e8(r31)
    stb     r0, 0x1ec(r31)
    stw     r0, -0x6b10(r13)
branch_0x800b3190:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__16TGorogoroManagerFv
loadAfter__16TGorogoroManagerFv: # 0x800b31ac
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    subi    r31, r5, 0x2118
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x25c
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x25c
    mtlr    r12
    blrl
    stw     r3, 0x64(r29)
    addi    r3, r31, 0x27c
    lwz     r30, -0x70b0(r13)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x27c
    mtlr    r12
    blrl
    stw     r3, 0x70(r29)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl load__16TGorogoroManagerFR20JSUMemoryInputStream
load__16TGorogoroManagerFR20JSUMemoryInputStream: # 0x800b3248
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r29, r3, 0x0
    subi    r31, r5, 0x2118
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x390
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b3394
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x298
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0x2ac
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r28, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x2ac
    addi    r4, r28, 0x0
    addi    r3, r28, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x32c(r28)
    li      r0, 0x12c
    lis     r3, 0x803b
    stw     r0, 0x33c(r28)
    subi    r0, r3, 0x42b8
    addi    r3, r31, 0x2c0
    stw     r0, 0x32c(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x340
    addi    r6, r31, 0x2c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42c4
    stw     r26, 0x340(r28)
    lis     r3, 0x803b
    subi    r27, r3, 0x42d0
    lfs     f0, -0x62d4(rtoc)
    addi    r3, r31, 0x2d0
    stfs    f0, 0x350(r28)
    stw     r27, 0x340(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x354
    addi    r6, r31, 0x2d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x354(r28)
    addi    r3, r31, 0x2e0
    lfs     f0, -0x6274(rtoc)
    stfs    f0, 0x364(r28)
    stw     r27, 0x354(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x368
    addi    r6, r31, 0x2e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x368(r28)
    addi    r3, r31, 0x2f0
    lfs     f0, -0x62b4(rtoc)
    stfs    f0, 0x378(r28)
    stw     r27, 0x368(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x37c
    addi    r6, r31, 0x2f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x37c(r28)
    mr      r3, r28
    lfs     f0, -0x6270(rtoc)
    stfs    f0, 0x38c(r28)
    stw     r27, 0x37c(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x800b3394:
    stw     r30, 0x38(r29)
    addi    r3, r29, 0x0
    subi    r4, r13, 0x7e58
    bl      createSharedMActorSet__13TEnemyManagerFPPCc
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__16TGorogoroManagerFPCc
__ct__16TGorogoroManagerFPCc: # 0x800b33b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x6a70
    stw     r0, 0x0(r31)
    li      r4, 0x0
    li      r0, 0x1
    stw     r4, 0x60(r31)
    mr      r3, r31
    stw     r4, 0x64(r31)
    stb     r0, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__21TGorogoroPolluteModelFv
setAnm__21TGorogoroPolluteModelFv: # 0x800b3410
    mflr    r0
    li      r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x10(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__28TGorogoroPolluteModelManagerFP10TLiveActor
init__28TGorogoroPolluteModelManagerFP10TLiveActor: # 0x800b3460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    bl      init__25TEnemyPolluteModelManagerFP10TLiveActor
    lis     r3, 0x8038
    subi    r3, r3, 0x1e14
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r27, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800b34b4
    addi    r3, r27, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800b34b4:
    lis     r4, 0x8038
    lis     r3, 0x803b
    addi    r26, r25, 0x0
    subi    r27, r4, 0x1dec
    addi    r28, r3, 0x6ac8
    li      r25, 0x0
    li      r29, 0x0
    b       branch_0x800b3510

branch_0x800b34d4:
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800b3500
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    addi    r6, r26, 0x0
    addi    r7, r27, 0x0
    li      r5, 0x0
    bl      __ct__18TEnemyPolluteModelFP10TLiveActoriP12SDLModelDataPCc
    stw     r28, 0x0(r24)
branch_0x800b3500:
    lwz     r3, 0x18(r30)
    addi    r25, r25, 0x1
    stwx    r24, r3, r29
    addi    r29, r29, 0x4
branch_0x800b3510:
    lwz     r0, 0x14(r30)
    cmpw    r25, r0
    blt+    branch_0x800b34d4
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl execute__27TNerveIgaigaShootFromCannonCFP24TSpineBase_10TLiveActor_
execute__27TNerveIgaigaShootFromCannonCFP24TSpineBase_10TLiveActor_: # 0x800b3530
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b35a8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6284(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r3, 0x1d8(r30)
    lwz     r0, 0x1dc(r30)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x1e0(r30)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    b       branch_0x800b3670

branch_0x800b35a8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b3670
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b35d0
    li      r0, 0x1
    b       branch_0x800b35d4

branch_0x800b35d0:
    li      r0, 0x0
branch_0x800b35d4:
    cmpwi   r0, 0x0
    bne-    branch_0x800b3670
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6b08(r13)
    extsb.  r0, r0
    bne-    branch_0x800b3634
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b04(r13)
    addi    r0, r3, 0x6b38
    lis     r4, 0x800b
    stw     r0, -0x6b04(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1808
    addi    r4, r4, 0x36a8
    subi    r3, r13, 0x6b04
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b08(r13)
branch_0x800b3634:
    subi    r4, r13, 0x6b04
    cmplwi  r4, 0x0
    beq-    branch_0x800b3668
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800b3668
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800b3668:
    li      r3, 0x1
    b       branch_0x800b3690

branch_0x800b3670:
    mr      r3, r30
    lfs     f1, -0x62d4(rtoc)
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x800b3690:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __dt__23TNerveIgaigaRollOnGraphFv
__dt__23TNerveIgaigaRollOnGraphFv: # 0x800b36a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b36ec
    lis     r3, 0x803b
    addi    r0, r3, 0x6b38
    stw     r0, 0x0(r31)
    beq-    branch_0x800b36dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b36dc:
    extsh.  r0, r4
    ble-    branch_0x800b36ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b36ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__27TNerveIgaigaShootFromCannonFv
__dt__27TNerveIgaigaShootFromCannonFv: # 0x800b3704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b3748
    lis     r3, 0x803b
    addi    r0, r3, 0x6b18
    stw     r0, 0x0(r31)
    beq-    branch_0x800b3738
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b3738:
    extsh.  r0, r4
    ble-    branch_0x800b3748
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b3748:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveIgaigaWaterHitCFP24TSpineBase_10TLiveActor_
execute__20TNerveIgaigaWaterHitCFP24TSpineBase_10TLiveActor_: # 0x800b3760
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b37a0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b37a0:
    lwz     r3, 0x1a4(r31)
    lfs     f1, 0x1e4(r31)
    lfs     f0, 0x364(r3)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800b3818
    lwz     r3, 0x1e8(r31)
    cmpwi   r3, 0x14
    ble-    branch_0x800b380c
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x800b3804
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b3804
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b3804:
    li      r3, 0x1
    b       branch_0x800b39b8

branch_0x800b380c:
    addi    r0, r3, 0x1
    stw     r0, 0x1e8(r31)
    b       branch_0x800b38e0

branch_0x800b3818:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b38e0
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800b3840
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x800b3840:
    cmplwi  r3, 0x0
    bne-    branch_0x800b38e0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6b08(r13)
    extsb.  r0, r0
    bne-    branch_0x800b38a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b04(r13)
    addi    r0, r3, 0x6b38
    lis     r4, 0x800b
    stw     r0, -0x6b04(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1808
    addi    r4, r4, 0x36a8
    subi    r3, r13, 0x6b04
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b08(r13)
branch_0x800b38a4:
    subi    r4, r13, 0x6b04
    cmplwi  r4, 0x0
    beq-    branch_0x800b38d8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800b38d8
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800b38d8:
    li      r3, 0x1
    b       branch_0x800b39b8

branch_0x800b38e0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b392c
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800b3908
    li      r0, 0x1
    b       branch_0x800b390c

branch_0x800b3908:
    li      r0, 0x0
branch_0x800b390c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b392c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b392c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b3998
    mr      r3, r31
    bl      jumpToNextGraphNode__11TSpineEnemyFv
    cmpwi   r3, 0x0
    blt-    branch_0x800b396c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
branch_0x800b396c:
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x800b39b4
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x800b3998:
    mr      r3, r31
    lfs     f1, -0x62d4(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800b39b4:
    li      r3, 0x0
branch_0x800b39b8:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __dt__20TNerveIgaigaWaterHitFv
__dt__20TNerveIgaigaWaterHitFv: # 0x800b39d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800b3a14
    lis     r3, 0x803b
    addi    r0, r3, 0x6b28
    stw     r0, 0x0(r31)
    beq-    branch_0x800b3a04
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800b3a04:
    extsh.  r0, r4
    ble-    branch_0x800b3a14
    mr      r3, r31
    bl      __dl__FPv
branch_0x800b3a14:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveIgaigaRollOnGraphCFP24TSpineBase_10TLiveActor_
execute__23TNerveIgaigaRollOnGraphCFP24TSpineBase_10TLiveActor_: # 0x800b3a2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800b3a60
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
branch_0x800b3a60:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800b3aac
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800b3a88
    li      r0, 0x1
    b       branch_0x800b3a8c

branch_0x800b3a88:
    li      r0, 0x0
branch_0x800b3a8c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b3aac
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b3aac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b3b18
    mr      r3, r31
    bl      jumpToNextGraphNode__11TSpineEnemyFv
    cmpwi   r3, 0x0
    blt-    branch_0x800b3aec
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
branch_0x800b3aec:
    lwz     r4, 0x124(r31)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x800b3b34
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x800b3b18:
    mr      r3, r31
    lfs     f1, -0x62d4(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800b3b34:
    lwz     r0, 0x5c(sp)
    li      r3, 0x0
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl shoot__7TIgaigaFRQ29JGeometry8TVec3_f_
shoot__7TIgaigaFRQ29JGeometry8TVec3_f_: # 0x800b3b4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6af8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b3bac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6af4(r13)
    addi    r0, r3, 0x6b18
    lis     r4, 0x800b
    stw     r0, -0x6af4(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1820
    addi    r4, r4, 0x3704
    subi    r3, r13, 0x6af4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6af8(r13)
branch_0x800b3bac:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6af4
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800b3bc4
    stw     r0, 0x1c(r4)
branch_0x800b3bc4:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    li      r0, 0x1
    stw     r3, 0x14(r4)
    lwz     r4, 0x0(r31)
    lwz     r3, 0x4(r31)
    stw     r4, 0x1d8(r30)
    stw     r3, 0x1dc(r30)
    lwz     r3, 0x8(r31)
    stw     r3, 0x1e0(r30)
    lwz     r3, 0xf0(r30)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r30)
    stb     r0, 0x1a8(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl bound__7TIgaigaFv
bound__7TIgaigaFv: # 0x800b3c14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lfs     f0, -0x626c(rtoc)
    lfs     f1, 0x1a0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b3ca4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800b3ca4
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800b3ca4
    lfs     f1, 0x24(r31)
    lfs     f0, 0x148(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b3c90
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x15
    li      r5, 0xa
    bl      start__9RumbleMgrFiiP3Vec
    b       branch_0x800b3ca4

branch_0x800b3c90:
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x14
    li      r5, 0xa
    bl      start__9RumbleMgrFiiP3Vec
branch_0x800b3ca4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isHitValid__7TIgaigaFUl
isHitValid__7TIgaigaFUl: # 0x800b3cb8
    li      r0, 0x1
    cmplwi  r4, 0x1
    stb     r0, 0x1bc(r3)
    bne-    branch_0x800b3cd0
    li      r0, 0x0
    stb     r0, 0x1bc(r3)
branch_0x800b3cd0:
    li      r3, 0x1
    blr


.globl getBasNameTable__7TIgaigaCFv
getBasNameTable__7TIgaigaCFv: # 0x800b3cd8
    lis     r3, 0x803b
    addi    r3, r3, 0x6820
    blr


.globl setMeltAnm__7TIgaigaFv
setMeltAnm__7TIgaigaFv: # 0x800b3ce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800b3d24
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1c8(r31)
    b       branch_0x800b3d48

branch_0x800b3d24:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1c0(r31)
    stfs    f1, 0x1c4(r31)
    stfs    f2, 0x1c8(r31)
branch_0x800b3d48:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800b3d9c
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800b3d9c
    lfs     f1, 0x24(r31)
    lfs     f0, 0x148(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b3d88
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x15
    li      r5, 0xa
    bl      start__9RumbleMgrFiiP3Vec
    b       branch_0x800b3d9c

branch_0x800b3d88:
    lwz     r3, -0x60f0(r13)
    addi    r6, r31, 0x10
    li      r4, 0x14
    li      r5, 0xa
    bl      start__9RumbleMgrFiiP3Vec
branch_0x800b3d9c:
    lwz     r5, 0x70(r31)
    lwz     r3, 0x10(r31)
    lwz     r4, 0x68(r5)
    lwz     r0, 0x14(r31)
    stw     r3, 0x70(r4)
    stw     r0, 0x74(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x78(r4)
    lwz     r3, gpModelWaterManager(r13)
    lwz     r4, 0x68(r5)
    bl      emitRequest__18TModelWaterManagerFRC14TWaterEmitInfo
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x38
    lwz     r0, 0x28(r31)
    lfs     f1, -0x62d8(rtoc)
    stw     r4, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x40(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x38(sp)
    addi    r5, r31, 0x1c0
    lwz     r3, 0x3c(sp)
    li      r4, 0xa1
    stw     r0, 0x68(sp)
    lwz     r0, 0x40(sp)
    li      r6, 0x0
    stw     r3, 0x6c(sp)
    li      r7, 0x0
    lwz     r3, gpMarioParticleManager(r13)
    stw     r0, 0x70(sp)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b3e4c
    lfs     f0, 0x68(sp)
    stfs    f0, 0x154(r3)
    lfs     f1, 0x6c(sp)
    stfs    f1, 0x158(r3)
    lfs     f2, 0x70(sp)
    stfs    f2, 0x15c(r3)
    lfs     f0, 0x68(sp)
    stfs    f0, 0x174(r3)
    stfs    f1, 0x178(r3)
    stfs    f2, 0x17c(r3)
branch_0x800b3e4c:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x1c0
    li      r4, 0xa2
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800b3e94
    lfs     f0, 0x68(sp)
    stfs    f0, 0x154(r3)
    lfs     f1, 0x6c(sp)
    stfs    f1, 0x158(r3)
    lfs     f2, 0x70(sp)
    stfs    f2, 0x15c(r3)
    lfs     f0, 0x68(sp)
    stfs    f0, 0x174(r3)
    stfs    f1, 0x178(r3)
    stfs    f2, 0x17c(r3)
branch_0x800b3e94:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x62b0(rtoc)
    lfs     f0, -0x62d4(rtoc)
    stfs    f1, 0x60(sp)
    stfs    f0, 0x64(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x60(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x6298(rtoc)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x62c0(rtoc)
    stw     r0, 0x78(sp)
    lfs     f2, 0x60(sp)
    lfd     f3, 0x78(sp)
    lfs     f0, -0x6290(rtoc)
    fsubs   f3, f3, f4
    fmuls   f1, f1, f3
    fmuls   f1, f31, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b3f30
    lfs     f1, -0x6268(rtoc)
    lis     r3, 0x2000
    lfs     f0, 0x14(r31)
    addi    r4, r3, 0x2
    lwz     r3, gpItemManager(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    li      r5, 0x1
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x800b3f30:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl setDeadAnm__7TIgaigaFv
setDeadAnm__7TIgaigaFv: # 0x800b3f48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800b3f84
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x1c0(r31)
    stw     r0, 0x1c4(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1c8(r31)
    b       branch_0x800b3fa8

branch_0x800b3f84:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1c0(r31)
    stfs    f1, 0x1c4(r31)
    stfs    f2, 0x1c8(r31)
branch_0x800b3fa8:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x1c0
    li      r4, 0xcb
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lbz     r0, 0x1bc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800b3fe8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800b4000

branch_0x800b3fe8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800b4000:
    lwz     r6, 0x70(r31)
    lwz     r3, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x44(sp)
    lfs     f2, 0x1cc(r31)
    lfs     f1, 0x1e4(r31)
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
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x14(r31)
    lfs     f1, 0x3c(sp)
    lfs     f0, -0x6274(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b406c
    fmr     f1, f0
    b       branch_0x800b407c

branch_0x800b406c:
    lfs     f0, -0x6264(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b407c
    fmr     f1, f0
branch_0x800b407c:
    stfs    f1, 0x3c(sp)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x3c
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x60(r6)
    bl      generatePolluteModel__25TEnemyPolluteModelManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setWalkAnm__7TIgaigaFv
setWalkAnm__7TIgaigaFv: # 0x800b40b0
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


.globl isReachedToGoalXZ__7TIgaigaFv
isReachedToGoalXZ__7TIgaigaFv: # 0x800b40e0
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x800b4104
    addi    r5, r5, 0x10
    b       branch_0x800b4108

branch_0x800b4104:
    addi    r5, r4, 0x4
branch_0x800b4108:
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
    lbz     r0, 0x1a8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800b4164
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x18(sp)
branch_0x800b4164:
    lfs     f0, -0x62b0(rtoc)
    addi    r3, sp, 0x14
    stfs    f0, 0x18(sp)
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x7e5c(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b4188
    li      r3, 0x1
    b       branch_0x800b418c

branch_0x800b4188:
    li      r3, 0x0
branch_0x800b418c:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl walkBehavior__7TIgaigaFif
walkBehavior__7TIgaigaFif: # 0x800b419c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    bl      walkBehavior__10TRollEnemyFif
    lbz     r0, 0x1a8(r31)
    lfs     f2, 0x94(r31)
    cmplwi  r0, 0x0
    lfs     f0, 0x9c(r31)
    beq-    branch_0x800b420c
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x1c(sp)
    lwz     r4, 0x14(sp)
    lwz     r3, 0x18(sp)
    stw     r4, 0x98(sp)
    lwz     r0, 0x1c(sp)
    stw     r4, 0xa4(sp)
    stw     r3, 0x9c(sp)
    stw     r3, 0xa8(sp)
    stw     r0, 0xa0(sp)
    stw     r0, 0xac(sp)
    lfs     f0, 0xa0(sp)
    lfs     f2, 0xa4(sp)
branch_0x800b420c:
    fmuls   f1, f0, f0
    lfs     f0, -0x62b0(rtoc)
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800b4228
    b       branch_0x800b424c

branch_0x800b4228:
    frsqrte f3, f4
    lfs     f2, -0x62d8(rtoc)
    lfs     f0, -0x6260(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800b424c:
    lfs     f1, 0xbc(r31)
    lfs     f0, 0x1cc(r31)
    lfs     f2, 0x1e4(r31)
    fmuls   f1, f1, f0
    lfs     f3, -0x625c(rtoc)
    lfs     f0, 0x194(r31)
    fmuls   f1, f2, f1
    fdivs   f1, f4, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x194(r31)
    lwz     r3, 0x1b4(r31)
    cmpwi   r3, 0x0
    beq-    branch_0x800b42a0
    addi    r0, r3, 0x1
    stw     r0, 0x1b4(r31)
    lwz     r3, 0x1b4(r31)
    lwz     r0, 0x1b8(r31)
    cmpw    r3, r0
    ble-    branch_0x800b42a0
    li      r0, 0x0
    stw     r0, 0x1b4(r31)
branch_0x800b42a0:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b42b4
    li      r0, 0x1
    b       branch_0x800b42b8

branch_0x800b42b4:
    li      r0, 0x0
branch_0x800b42b8:
    cmpwi   r0, 0x0
    bne-    branch_0x800b42f4
    lwz     r3, 0xc4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800b42f4
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800b42f4
    mr      r3, r0
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800b42f4:
    lwz     r3, 0x138(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800b4324
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800b4324
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800b4324:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl boundSE__7TIgaigaFv
boundSE__7TIgaigaFv: # 0x800b4338
    mflr    r0
    li      r4, 0x28ad
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r5, 0xc4(r31)
    lwz     r3, gpMSound(r13)
    lfs     f0, 0x38(r5)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800b4398
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x28ad
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x800b4398:
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl rollSE__7TIgaigaFv
rollSE__7TIgaigaFv: # 0x800b43b0
    mflr    r0
    addi    r5, r3, 0x10
    stw     r0, 0x4(sp)
    li      r4, 0x212f
    li      r6, 0x0
    stwu    sp, -0x8(sp)
    li      r7, 0x0
    li      r8, 0x0
    lwz     r0, gpMSound(r13)
    li      r9, 0x4
    lfs     f1, 0x24(r3)
    lfs     f2, 0x140(r3)
    mr      r3, r0
    bl      startSoundActorSpecial__6MSoundFUlPC3VecffUlPP8JAISoundUlUc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl moveObject__7TIgaigaFv
moveObject__7TIgaigaFv: # 0x800b43f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stfd    f30, 0x108(sp)
    stfd    f29, 0x100(sp)
    stw     r31, 0xfc(sp)
    mr      r31, r3
    stw     r30, 0xf8(sp)
    bl      moveObject__12TWalkerEnemyFv
    lfs     f2, 0x1cc(r31)
    lfs     f1, -0x6258(rtoc)
    lfs     f0, -0x62d4(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b4440
    fmr     f1, f0
    b       branch_0x800b4450

branch_0x800b4440:
    lfs     f0, -0x62d8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b4450
    fmr     f1, f0
branch_0x800b4450:
    stfs    f1, 0x1cc(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lis     r30, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0xf4(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xf0(sp)
    lfd     f1, -0x6298(rtoc)
    mtlr    r12
    lfd     f0, 0xf0(sp)
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6298(rtoc)
    stw     r0, 0xec(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xe8(sp)
    mtlr    r12
    lfd     f0, 0xe8(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6298(rtoc)
    stw     r0, 0xe4(sp)
    lwz     r12, 0x108(r12)
    stw     r30, 0xe0(sp)
    mtlr    r12
    lfd     f0, 0xe0(sp)
    fsubs   f29, f0, f1
    blrl
    lfs     f1, 0x154(r31)
    lfs     f0, 0x1cc(r31)
    lwz     r0, 0x180(r3)
    fmuls   f3, f1, f0
    lfs     f0, 0x1e4(r31)
    xoris   r0, r0, 0x8000
    lfs     f2, -0x6260(rtoc)
    lfs     f1, 0x148(r31)
    stw     r0, 0xdc(sp)
    fmuls   f2, f2, f1
    fmuls   f4, f0, f3
    lfd     f1, -0x6298(rtoc)
    stw     r30, 0xd8(sp)
    lfd     f0, 0xd8(sp)
    fcmpo   cr0, f4, f2
    fsubs   f7, f0, f1
    ble-    branch_0x800b4548
    fmr     f4, f2
    b       branch_0x800b4554

branch_0x800b4548:
    fcmpo   cr0, f4, f3
    bge-    branch_0x800b4554
    fmr     f4, f3
branch_0x800b4554:
    stfs    f4, 0x148(r31)
    lfs     f4, 0x148(r31)
    lfs     f0, 0x154(r31)
    lfs     f2, 0x1cc(r31)
    fdivs   f8, f4, f0
    lfs     f1, 0x1e4(r31)
    lfs     f0, -0x6254(rtoc)
    fmuls   f6, f2, f1
    fcmpo   cr0, f6, f0
    ble-    branch_0x800b4584
    fmr     f6, f0
    b       branch_0x800b4594

branch_0x800b4584:
    lfs     f0, -0x62d4(rtoc)
    fcmpo   cr0, f6, f0
    bge-    branch_0x800b4594
    fmr     f6, f0
branch_0x800b4594:
    lfs     f0, 0xbc(r31)
    fmuls   f3, f31, f8
    lfs     f5, -0x6250(rtoc)
    fmuls   f2, f30, f8
    fmuls   f4, f4, f0
    fmuls   f1, f29, f8
    fmuls   f0, f7, f8
    mr      r3, r31
    fmuls   f4, f5, f4
    fmuls   f4, f4, f6
    stfs    f4, 0xb8(r31)
    lfs     f4, 0x148(r31)
    stfs    f4, 0x2c(r31)
    stfs    f4, 0x28(r31)
    stfs    f4, 0x24(r31)
    stfs    f3, 0x50(r31)
    stfs    f2, 0x54(r31)
    stfs    f1, 0x58(r31)
    stfs    f0, 0x5c(r31)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x1a4(r31)
    lfs     f0, 0x30c(r3)
    stfs    f0, 0x140(r31)
    lwz     r3, 0x1a4(r31)
    lfs     f0, 0x1bc(r3)
    stfs    f0, 0x144(r31)
    lwz     r3, 0x124(r31)
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    lwz     r5, 0x0(r4)
    slwi    r4, r0, 4
    lwzx    r3, r5, r4
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x800b4660
    add     r3, r5, r4
    addi    r4, sp, 0xc8
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f1, -0x624c(rtoc)
    lfs     f0, 0xcc(sp)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800b4660
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x1bc(r31)
branch_0x800b4660:
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lfd     f29, 0x100(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    addi    sp, sp, 0x118
    blr


.globl kill__7TIgaigaFv
kill__7TIgaigaFv: # 0x800b4684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x194(r3)
    bl      kill__11TSmallEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl reset__7TIgaigaFv
reset__7TIgaigaFv: # 0x800b46ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    bl      reset__10TRollEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    li      r30, 0x0
    li      r3, 0x32
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    li      r0, 0x64
    stw     r30, 0x1b4(r31)
    stw     r3, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    subf    r29, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6298(rtoc)
    stw     r0, 0x34(sp)
    lis     r6, 0x4330
    xoris   r3, r29, 0x8000
    lfs     f1, -0x62c0(rtoc)
    stw     r6, 0x30(sp)
    lwz     r5, 0x14(sp)
    li      r0, 0x1
    stw     r3, 0x2c(sp)
    addi    r4, r31, 0xc4
    lfd     f0, 0x30(sp)
    stw     r6, 0x28(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0x28(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r3, 0x24(sp)
    add     r3, r5, r3
    mulli   r3, r3, 0x78
    stw     r3, 0x1b8(r31)
    stb     r0, 0x1bc(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6268(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xc0(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f0, -0x62d4(rtoc)
    stfs    f0, 0x1e4(r31)
    stfs    f0, 0x1cc(r31)
    lfs     f0, -0x6248(rtoc)
    stfs    f0, 0x1ac(r31)
    lfs     f0, -0x6244(rtoc)
    stfs    f0, 0x1b0(r31)
    stw     r30, 0x1e8(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl behaveToWater__7TIgaigaFP9THitActor
behaveToWater__7TIgaigaFP9THitActor: # 0x800b47ec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    stw     r0, 0x160(r3)
    lwz     r4, 0x1a4(r3)
    lfs     f1, 0x1e4(r3)
    lfs     f0, 0x364(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b482c
    lfs     f0, 0x350(r4)
    fmuls   f0, f1, f0
    stfs    f0, 0x1e4(r31)
branch_0x800b482c:
    li      r30, 0x1
    stb     r30, 0x165(r31)
    lbz     r0, -0x6b00(r13)
    extsb.  r0, r0
    bne-    branch_0x800b4874
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6afc(r13)
    addi    r0, r3, 0x6b28
    lis     r4, 0x800b
    stw     r0, -0x6afc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1814
    addi    r4, r4, 0x39d0
    subi    r3, r13, 0x6afc
    bl      __register_global_object
    stb     r30, -0x6b00(r13)
branch_0x800b4874:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6afc
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800b4920
    lbz     r0, -0x6b00(r13)
    extsb.  r0, r0
    bne-    branch_0x800b48c8
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6afc(r13)
    addi    r0, r4, 0x6b28
    lis     r4, 0x800b
    stw     r0, -0x6afc(r13)
    lis     r5, 0x803f
    addi    r4, r4, 0x39d0
    addi    r5, r5, 0x1814
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b00(r13)
branch_0x800b48c8:
    subi    r6, r13, 0x6afc
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800b4920
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800b4914
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800b4914
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800b4914:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800b4920:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl isRolling__7TIgaigaFv
isRolling__7TIgaigaFv: # 0x800b4938
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x1808
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6b08(r13)
    extsb.  r0, r0
    bne-    branch_0x800b4998
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b04(r13)
    addi    r0, r3, 0x6b38
    lis     r3, 0x800b
    stw     r0, -0x6b04(r13)
    addi    r4, r3, 0x36a8
    subi    r3, r13, 0x6b04
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b08(r13)
branch_0x800b4998:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b04
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b4a54
    lbz     r0, -0x6af8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b49ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6af4(r13)
    addi    r0, r3, 0x6b18
    lis     r3, 0x800b
    stw     r0, -0x6af4(r13)
    addi    r4, r3, 0x3704
    subi    r3, r13, 0x6af4
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6af8(r13)
branch_0x800b49ec:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6af4
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800b4a54
    lbz     r0, -0x6b00(r13)
    extsb.  r0, r0
    bne-    branch_0x800b4a40
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6afc(r13)
    addi    r0, r3, 0x6b28
    lis     r3, 0x800b
    stw     r0, -0x6afc(r13)
    addi    r4, r3, 0x39d0
    subi    r3, r13, 0x6afc
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b00(r13)
branch_0x800b4a40:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6afc
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800b4a5c
branch_0x800b4a54:
    li      r3, 0x1
    b       branch_0x800b4a60

branch_0x800b4a5c:
    li      r3, 0x0
branch_0x800b4a60:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl calcRootMatrix__7TIgaigaFv
calcRootMatrix__7TIgaigaFv: # 0x800b4a78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stw     r3, -0x6b10(r13)
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__7TIgaigaFUlPQ26JDrama9TGraphics
perform__7TIgaigaFUlPQ26JDrama9TGraphics: # 0x800b4a9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMActorAndKeeper__7TIgaigaFv
setMActorAndKeeper__7TIgaigaFv: # 0x800b4abc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b4af4
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800b4af4:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x1f7c
    lwz     r3, 0x78(r31)
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl init__7TIgaigaFP12TLiveManager
init__7TIgaigaFP12TLiveManager: # 0x800b4b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x17
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    stw     r0, 0x150(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 5, 2
    stw     r0, 0x64(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r31)
    lbz     r0, -0x6b08(r13)
    extsb.  r0, r0
    bne-    branch_0x800b4bb0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b04(r13)
    addi    r0, r3, 0x6b38
    lis     r4, 0x800b
    stw     r0, -0x6b04(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1808
    addi    r4, r4, 0x36a8
    subi    r3, r13, 0x6b04
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b08(r13)
branch_0x800b4bb0:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6b04
    stw     r4, 0x8(r5)
    mr      r3, r31
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1a4(r31)
    lis     r3, 0x800b
    addi    r5, r3, 0x4cd4
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtkFromIndex__6MActorFi
    lwz     r3, -0x70b0(r13)
    subi    r4, rtoc, 0x6240
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x124(r31)
    stw     r3, 0x0(r4)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__7TIgaigaFPCc
__ct__7TIgaigaFPCc: # 0x800b4c30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x6dc0
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r31)
    addi    r5, r3, 0x6b48
    li      r6, 0x0
    lfs     f0, -0x62b0(rtoc)
    addi    r4, r5, 0x24
    li      r0, 0x1
    stfs    f0, 0x194(r31)
    mr      r3, r31
    stfs    f0, 0x198(r31)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stw     r6, 0x1a4(r31)
    stb     r6, 0x1a8(r31)
    stfs    f0, 0x1ac(r31)
    lfs     f0, -0x62d4(rtoc)
    stfs    f0, 0x1b0(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r6, 0x1b4(r31)
    stw     r6, 0x1b8(r31)
    stb     r0, 0x1bc(r31)
    stfs    f0, 0x1cc(r31)
    stw     r6, 0x1d0(r31)
    stfs    f0, 0x1e4(r31)
    stw     r6, 0x1e8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl RollEnemyBodyCallback__FP7J3DNodei
RollEnemyBodyCallback__FP7J3DNodei: # 0x800b4cd4
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x800b4de8
    lwz     r3, -0x6b10(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x800b4d18
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne-    branch_0x800b4d20
branch_0x800b4d18:
    li      r3, 0x1
    b       branch_0x800b4dec

branch_0x800b4d20:
    lhz     r30, 0x18(r30)
    lwz     r3, -0x6b10(r13)
    bl      getModel__10TLiveActorCFv
    lwz     r4, -0x6b10(r13)
    mulli   r5, r30, 0x30
    lwz     r3, 0x58(r3)
    lfs     f1, -0x62bc(rtoc)
    lfs     f0, 0x194(r4)
    add     r9, r3, r5
    addi    r31, sp, 0x2c
    lwz     r0, -0x5eac(r13)
    fmuls   f0, f1, f0
    mr      r3, r9
    lwz     r8, -0x5ea8(r13)
    lwz     r6, -0x5ea4(r13)
    mr      r4, r31
    fctiwz  f0, f0
    lfs     f1, -0x62d4(rtoc)
    mr      r5, r3
    stfd    f0, 0x60(sp)
    lwz     r7, 0x64(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f1, 0x2c(sp)
    lfs     f1, -0x62b0(rtoc)
    stfs    f1, 0x30(sp)
    stfs    f1, 0x34(sp)
    stfs    f1, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f3, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f1, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f2, 0x50(sp)
    stfs    f3, 0x54(sp)
    stfs    f1, 0x58(sp)
    lfs     f1, 0x1c(r9)
    lfs     f0, -0x6b0c(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r9)
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r5, r3, 0x4788
    addi    r3, r5, 0x0
    addi    r4, r31, 0x0
    bl      PSMTXConcat
branch_0x800b4de8:
    li      r3, 0x1
branch_0x800b4dec:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl isRolling__10TRollEnemyFv
isRolling__10TRollEnemyFv: # 0x800b4e04
    li      r3, 0x0
    blr


.globl perform__14TIgaigaManagerFUlPQ26JDrama9TGraphics
perform__14TIgaigaManagerFUlPQ26JDrama9TGraphics: # 0x800b4e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r3, 0x60(r29)
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


.globl initSetEnemies__14TIgaigaManagerFv
initSetEnemies__14TIgaigaManagerFv: # 0x800b4e6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1c
    stw     r30, 0x90(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b4ef0
    stw     r30, 0x48(sp)
    lis     r3, 0x8038
    subi    r4, r3, 0x1de0
    lwz     r3, 0x48(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x48(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, 0x803b
    subi    r0, r3, 0x1980
    stw     r0, 0x0(r30)
    li      r5, 0x0
    lis     r3, 0x803b
    stw     r5, 0x10(r30)
    li      r4, 0x5
    addi    r0, r3, 0x6d98
    stw     r4, 0x14(r30)
    stw     r5, 0x18(r30)
    stw     r0, 0x0(r30)
branch_0x800b4ef0:
    stw     r30, 0x60(r31)
    lwz     r3, 0x60(r31)
    lwz     r4, 0x18(r31)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl createEnemyInstance__14TIgaigaManagerFv
createEnemyInstance__14TIgaigaManagerFv: # 0x800b4f28
    mflr    r0
    li      r3, 0x1ec
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800b4f58
    lis     r3, 0x8038
    subi    r4, r3, 0x1dcc
    addi    r3, r31, 0x0
    bl      __ct__7TIgaigaFPCc
branch_0x800b4f58:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__14TIgaigaManagerFv
createModelData__14TIgaigaManagerFv: # 0x800b4f70
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6850
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__14TIgaigaManagerFR20JSUMemoryInputStream
load__14TIgaigaManagerFR20JSUMemoryInputStream: # 0x800b4fa4
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r29, r3, 0x0
    subi    r31, r5, 0x2118
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x390
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b50f0
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x358
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0x2ac
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r28, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x2ac
    addi    r4, r28, 0x0
    addi    r3, r28, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r0, r3, 0x42ac
    stw     r0, 0x32c(r28)
    li      r0, 0x12c
    lis     r3, 0x803b
    stw     r0, 0x33c(r28)
    subi    r0, r3, 0x42b8
    addi    r3, r31, 0x2c0
    stw     r0, 0x32c(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x340
    addi    r6, r31, 0x2c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r26, r3, 0x42c4
    stw     r26, 0x340(r28)
    lis     r3, 0x803b
    subi    r27, r3, 0x42d0
    lfs     f0, -0x62d4(rtoc)
    addi    r3, r31, 0x2d0
    stfs    f0, 0x350(r28)
    stw     r27, 0x340(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x354
    addi    r6, r31, 0x2d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x354(r28)
    addi    r3, r31, 0x2e0
    lfs     f0, -0x6274(rtoc)
    stfs    f0, 0x364(r28)
    stw     r27, 0x354(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x368
    addi    r6, r31, 0x2e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x368(r28)
    addi    r3, r31, 0x2f0
    lfs     f0, -0x62b4(rtoc)
    stfs    f0, 0x378(r28)
    stw     r27, 0x368(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r28, 0x0
    addi    r3, r28, 0x37c
    addi    r6, r31, 0x2f0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r26, 0x37c(r28)
    mr      r3, r28
    lfs     f0, -0x6270(rtoc)
    stfs    f0, 0x38c(r28)
    stw     r27, 0x37c(r28)
    lwz     r4, 0x0(r28)
    bl      load__7TParamsFPCc
branch_0x800b50f0:
    stw     r30, 0x38(r29)
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x800b5110
    addi    r3, r26, 0x0
    addi    r4, r31, 0x36c
    bl      __ct__14TWaterEmitInfoFPCc
branch_0x800b5110:
    stw     r26, 0x68(r29)
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__14TIgaigaManagerFPCc
__ct__14TIgaigaManagerFPCc: # 0x800b5128
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x6d18
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r0, -0x6b10(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__19TIgaigaPolluteModelFv
setAnm__19TIgaigaPolluteModelFv: # 0x800b5174
    mflr    r0
    li      r4, 0x7
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r3, 0x18(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x10(r31)
    li      r4, 0x0
    lwz     r3, 0x18(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__26TIgaigaPolluteModelManagerFP10TLiveActor
init__26TIgaigaPolluteModelManagerFP10TLiveActor: # 0x800b51c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    bl      init__25TEnemyPolluteModelManagerFP10TLiveActor
    lis     r3, 0x8038
    subi    r3, r3, 0x1d94
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r27, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x800b5218
    addi    r3, r27, 0x0
    lis     r4, 0x1021
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r25, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x800b5218:
    lis     r4, 0x8038
    lis     r3, 0x803b
    addi    r26, r25, 0x0
    subi    r27, r4, 0x1d6c
    addi    r28, r3, 0x6d70
    li      r25, 0x0
    li      r29, 0x0
    b       branch_0x800b5274

branch_0x800b5238:
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x800b5264
    addi    r3, r24, 0x0
    addi    r4, r31, 0x0
    addi    r6, r26, 0x0
    addi    r7, r27, 0x0
    li      r5, 0x0
    bl      __ct__18TEnemyPolluteModelFP10TLiveActoriP12SDLModelDataPCc
    stw     r28, 0x0(r24)
branch_0x800b5264:
    lwz     r3, 0x18(r30)
    addi    r25, r25, 0x1
    stwx    r24, r3, r29
    addi    r29, r29, 0x4
branch_0x800b5274:
    lwz     r0, 0x14(r30)
    cmpw    r25, r0
    blt+    branch_0x800b5238
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setBehavior__10TRollEnemyFv
setBehavior__10TRollEnemyFv: # 0x800b5294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    mr      r31, r3
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    lfs     f1, -0x624c(rtoc)
    lfs     f0, 0xc8(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bgt-    branch_0x800b54a0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x8c(r31)
    lwz     r3, 0x2ac(r3)
    lwz     r4, 0x20(r5)
    divw    r0, r4, r3
    mullw   r0, r0, r3
    subf.   r0, r0, r4
    bne-    branch_0x800b54a0
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x800b54a0
    lwz     r30, 0x14(r5)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r30, r3
    beq-    branch_0x800b54a0
    lbz     r0, -0x7ef8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800b54a0
    lwz     r0, 0xf0(r31)
    lfs     f4, -0x6244(rtoc)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x800b546c
    lbz     r0, -0x7ef7(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800b5370
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r3, 0x234(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6230(rtoc)
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f4, f0, f1
    b       branch_0x800b546c

branch_0x800b5370:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x25c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r29, 0x270(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x8c(r31)
    subf    r0, r30, r29
    lwz     r6, 0x284(r3)
    xoris   r0, r0, 0x8000
    lwz     r5, 0x20(r4)
    xoris   r3, r6, 0x8000
    lfd     f3, -0x6298(rtoc)
    divw    r4, r5, r6
    stw     r3, 0x94(sp)
    lfs     f2, -0x62a0(rtoc)
    lfs     f4, -0x62bc(rtoc)
    stw     r0, 0x84(sp)
    mullw   r0, r4, r6
    lwz     r3, -0x5eac(r13)
    lwz     r6, -0x5ea8(r13)
    lfs     f5, 0x148(r31)
    subf    r0, r0, r5
    xoris   r0, r0, 0x8000
    lis     r4, 0x4330
    stw     r0, 0x9c(sp)
    xoris   r0, r30, 0x8000
    stw     r4, 0x98(sp)
    lfd     f0, 0x98(sp)
    stw     r4, 0x90(sp)
    fsubs   f1, f0, f3
    lfd     f0, 0x90(sp)
    stw     r4, 0x80(sp)
    fmuls   f2, f2, f1
    fsubs   f0, f0, f3
    stw     r0, 0x7c(sp)
    lfd     f1, 0x80(sp)
    stw     r4, 0x78(sp)
    fdivs   f2, f2, f0
    lfd     f0, 0x78(sp)
    fmuls   f2, f4, f2
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fctiwz  f2, f2
    stfd    f2, 0x88(sp)
    lwz     r0, 0x8c(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r3
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fmuls   f1, f2, f1
    fmadds  f4, f5, f1, f0
branch_0x800b546c:
    lfs     f6, 0x1ac(r31)
    li      r4, 0x1
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x18(r31)
    lfs     f5, 0x94(r31)
    fmadds  f3, f6, f1, f0
    lfs     f0, -0x6238(rtoc)
    lfs     f1, 0x10(r31)
    fmuls   f4, f0, f4
    lfs     f2, 0x14(r31)
    fmadds  f1, f6, f5, f1
    lwz     r3, gpPollution(r13)
    bl      stampGround__17TPollutionManagerFUsffff
branch_0x800b54a0:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl isReachedToGoalXZ__10TRollEnemyFv
isReachedToGoalXZ__10TRollEnemyFv: # 0x800b54bc
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x800b54e0
    addi    r5, r5, 0x10
    b       branch_0x800b54e4

branch_0x800b54e0:
    addi    r5, r4, 0x4
branch_0x800b54e4:
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
    lbz     r0, 0x1a8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800b5540
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x18(sp)
branch_0x800b5540:
    addi    r3, sp, 0x14
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x6228(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b555c
    li      r3, 0x1
    b       branch_0x800b5560

branch_0x800b555c:
    li      r3, 0x0
branch_0x800b5560:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl isCollidMove__10TRollEnemyFP9THitActor
isCollidMove__10TRollEnemyFP9THitActor: # 0x800b5570
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x4c(r4)
    addis   r0, r5, 0xc000
    cmplwi  r0, 0x22b
    bne-    branch_0x800b5598
    li      r0, 0x1
    b       branch_0x800b559c

branch_0x800b5598:
    li      r0, 0x0
branch_0x800b559c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800b55c0
    mr      r3, r6
    lwz     r12, 0x0(r6)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800b55e0

branch_0x800b55c0:
    mr      r3, r4
    lwz     r12, 0x0(r4)
    addi    r4, r6, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x800b55e0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl flagJump__10TRollEnemyFv
flagJump__10TRollEnemyFv: # 0x800b55f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    addi    r4, sp, 0x5c
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r5, 0x124(r3)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    lwz     r3, 0x0(r3)
    slwi    r0, r0, 4
    add     r3, r3, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f1, 0x14(r31)
    mr      r3, r31
    lfs     f0, -0x62b8(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r12, 0x0(r31)
    lwz     r4, 0x124(r31)
    lwz     r12, 0xe8(r12)
    lfs     f31, 0xc(r4)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r3, sp, 0x44
    addi    r5, sp, 0x5c
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x44(sp)
    li      r0, 0x1
    lwz     r4, 0x48(sp)
    stw     r3, 0x50(sp)
    lwz     r3, 0x4c(sp)
    stw     r4, 0x54(sp)
    stw     r3, 0x58(sp)
    stb     r0, 0x1a8(r31)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl attackToMario__10TRollEnemyFv
attackToMario__10TRollEnemyFv: # 0x800b56c8
    mflr    r0
    li      r4, MARIOMSG_HURT
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl behaveToWater__10TRollEnemyFP9THitActor
behaveToWater__10TRollEnemyFP9THitActor: # 0x800b56ec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x160(r3)
    lwz     r4, 0x1a4(r3)
    lfs     f1, 0x158(r3)
    lfs     f0, 0x364(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800b5860
    lfs     f1, 0x350(r4)
    mr      r3, r30
    lfs     f0, 0x148(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x148(r30)
    lfs     f0, 0x158(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x158(r30)
    lfs     f0, 0xb8(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(r30)
    lfs     f0, 0x2c(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r30)
    stfs    f0, 0x28(r30)
    stfs    f0, 0x24(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lis     r31, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0x74(sp)
    lwz     r12, 0x108(r12)
    stw     r31, 0x70(sp)
    lfd     f1, -0x6298(rtoc)
    mtlr    r12
    lfd     f0, 0x70(sp)
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6298(rtoc)
    stw     r0, 0x6c(sp)
    lwz     r12, 0x108(r12)
    stw     r31, 0x68(sp)
    mtlr    r12
    lfd     f0, 0x68(sp)
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x6298(rtoc)
    stw     r0, 0x64(sp)
    lwz     r12, 0x108(r12)
    stw     r31, 0x60(sp)
    mtlr    r12
    lfd     f0, 0x60(sp)
    fsubs   f29, f0, f1
    blrl
    lfs     f1, 0x148(r30)
    lfs     f0, 0x154(r30)
    lwz     r0, 0x180(r3)
    mr      r3, r30
    fdivs   f4, f1, f0
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x5c(sp)
    stw     r31, 0x58(sp)
    fmuls   f1, f31, f4
    lfd     f2, 0x58(sp)
    fmuls   f0, f30, f4
    fsubs   f2, f2, f3
    stfs    f1, 0x50(r30)
    fmuls   f1, f29, f4
    stfs    f0, 0x54(r30)
    fmuls   f0, f2, f4
    stfs    f1, 0x58(r30)
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
branch_0x800b5860:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x98
    blr


.globl walkBehavior__10TRollEnemyFif
walkBehavior__10TRollEnemyFif: # 0x800b5884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lbz     r0, 0x1a8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800b58ac
    mr      r3, r31
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x800b58ac:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800b58c0
    li      r0, 0x1
    b       branch_0x800b58c4

branch_0x800b58c0:
    li      r0, 0x0
branch_0x800b58c4:
    cmpwi   r0, 0x0
    beq-    branch_0x800b5954
    lfs     f0, -0x6268(rtoc)
    lfs     f1, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f0, f1
    fcmpo   cr0, f2, f0
    ble-    branch_0x800b5954
    fsubs   f1, f2, f1
    lfs     f0, -0x7e60(r13)
    lwz     r3, 0x1a4(r31)
    lfs     f2, -0x62b0(rtoc)
    fdivs   f3, f1, f0
    lfs     f4, 0x378(r3)
    fcmpo   cr0, f2, f4
    cror    2, 1, 2
    bne-    branch_0x800b590c
    b       branch_0x800b5940

branch_0x800b590c:
    fsubs   f0, f4, f2
    b       branch_0x800b5918

branch_0x800b5914:
    fsubs   f3, f3, f0
branch_0x800b5918:
    fcmpo   cr0, f3, f4
    cror    2, 1, 2
    beq+    branch_0x800b5914
    lfs     f1, -0x62b0(rtoc)
    fsubs   f0, f4, f1
    b       branch_0x800b5934

branch_0x800b5930:
    fadds   f3, f3, f0
branch_0x800b5934:
    fcmpo   cr0, f3, f1
    blt+    branch_0x800b5930
    fmr     f2, f3
branch_0x800b5940:
    lfs     f0, 0x1a0(r31)
    fcmpo   cr0, f0, f2
    bge-    branch_0x800b5a24
    stfs    f2, 0x1a0(r31)
    b       branch_0x800b5a24

branch_0x800b5954:
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800b5984
    cmplwi  r3, 0x101
    beq-    branch_0x800b5984
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800b5984
    cmplwi  r3, 0x4104
    bne-    branch_0x800b598c
branch_0x800b5984:
    li      r0, 0x1
    b       branch_0x800b5990

branch_0x800b598c:
    li      r0, 0x0
branch_0x800b5990:
    clrlwi. r0, r0, 24
    bne-    branch_0x800b5a24
    li      r0, 0x0
    stb     r0, 0x1a8(r31)
    lfs     f1, 0x1a0(r31)
    lfs     f0, 0x1b0(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800b5a24
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x62b0(rtoc)
    mr      r3, r31
    stfs    f2, 0x2c(sp)
    lfs     f0, 0x1a0(r31)
    stfs    f0, 0x30(sp)
    stfs    f2, 0x34(sp)
    lwz     r4, 0x2c(sp)
    lwz     r0, 0x30(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x34(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x626c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    stfs    f2, 0x1a0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1cc(r12)
    mtlr    r12
    blrl
branch_0x800b5a24:
    lfs     f1, -0x62b8(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800b5a50
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c8(r12)
    mtlr    r12
    blrl
branch_0x800b5a50:
    lha     r0, 0x128(r31)
    cmpwi   r0, 0x12c
    ble-    branch_0x800b5a7c
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800b5a7c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl rollSE__10TRollEnemyFv
rollSE__10TRollEnemyFv: # 0x800b5a90
    blr


.globl boundSE__10TRollEnemyFv
boundSE__10TRollEnemyFv: # 0x800b5a94
    blr


.globl bound__10TRollEnemyFv
bound__10TRollEnemyFv: # 0x800b5a98
    blr


.globl reset__10TRollEnemyFv
reset__10TRollEnemyFv: # 0x800b5a9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    stw     r31, -0x6b10(r13)
    bl      reset__12TWalkerEnemyFv
    lfs     f1, -0x62b0(rtoc)
    lfs     f0, -0x62cc(rtoc)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0x90(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x8c(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6298(rtoc)
    stw     r0, 0x9c(sp)
    lis     r30, 0x4330
    lfs     f0, -0x62c0(rtoc)
    addi    r4, sp, 0x80
    stw     r30, 0x98(sp)
    lfs     f1, 0x8c(sp)
    lfd     f2, 0x98(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f0, f2
    fmuls   f0, f31, f0
    fadds   f0, f1, f0
    stfs    f0, 0x194(r31)
    lfs     f0, -0x62d4(rtoc)
    stfs    f0, 0x158(r31)
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r3, 0x80(sp)
    addi    r4, sp, 0x80
    lwz     r0, 0x84(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x88(sp)
    stw     r0, 0x18(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6284(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x0(r3)
    addi    r3, r3, 0x10
    bl      getPoint__10TGraphNodeCFP3Vec
    lfs     f2, 0x88(sp)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x62b0(rtoc)
    fsubs   f1, f2, f1
    lfs     f3, 0x80(sp)
    lfs     f2, 0x10(r31)
    fcmpu   cr0, f0, f1
    fsubs   f2, f3, f2
    bne-    branch_0x800b5bb0
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800b5ba8
    lfs     f1, -0x62ac(rtoc)
    b       branch_0x800b5c1c

branch_0x800b5ba8:
    lfs     f1, -0x62a8(rtoc)
    b       branch_0x800b5c1c

branch_0x800b5bb0:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800b5be8
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x62a4(rtoc)
    stw     r0, 0x9c(sp)
    stw     r30, 0x98(sp)
    lfd     f1, 0x98(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800b5c1c

branch_0x800b5be8:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6298(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x62a4(rtoc)
    stw     r0, 0x9c(sp)
    lfs     f0, -0x62a0(rtoc)
    stw     r30, 0x98(sp)
    lfd     f2, 0x98(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800b5c1c:
    lfs     f0, -0x62cc(rtoc)
    b       branch_0x800b5c28

branch_0x800b5c24:
    fsubs   f1, f1, f0
branch_0x800b5c28:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x800b5c24
    lfs     f0, -0x62cc(rtoc)
    lfs     f2, -0x62b0(rtoc)
    b       branch_0x800b5c44

branch_0x800b5c40:
    fadds   f1, f1, f0
branch_0x800b5c44:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800b5c40
    stfs    f1, 0x34(r31)
    li      r0, 0x0
    lfs     f1, -0x6274(rtoc)
    lfs     f0, 0x140(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x198(r31)
    lfs     f0, 0x140(r31)
    stfs    f0, 0x19c(r31)
    stfs    f2, 0x1a0(r31)
    lwz     r3, 0x124(r31)
    stw     r0, 0x4(r3)
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl __ct__10TRollEnemyFPCc
__ct__10TRollEnemyFPCc: # 0x800b5c94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x6dc0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x62b0(rtoc)
    stfs    f0, 0x194(r31)
    stfs    f0, 0x198(r31)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stw     r0, 0x1a4(r31)
    stb     r0, 0x1a8(r31)
    stfs    f0, 0x1ac(r31)
    lfs     f0, -0x62d4(rtoc)
    stfs    f0, 0x1b0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAfterDeadEffect__10TRollEnemyFv
setAfterDeadEffect__10TRollEnemyFv: # 0x800b5d04
    blr


.globl __dt__9TGorogoroFv
__dt__9TGorogoroFv: # 0x800b5d08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b5d88
    lis     r3, 0x803b
    addi    r3, r3, 0x68a0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b5d78
    lis     r3, 0x803b
    addi    r3, r3, 0x6dc0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b5d78
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800b5d78:
    extsh.  r0, r31
    ble-    branch_0x800b5d88
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b5d88:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TGorogoroManagerFv
__dt__16TGorogoroManagerFv: # 0x800b5da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b5dfc
    lis     r3, 0x803b
    addi    r0, r3, 0x6a70
    stw     r0, 0x0(r30)
    beq-    branch_0x800b5dec
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800b5dec:
    extsh.  r0, r31
    ble-    branch_0x800b5dfc
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b5dfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__21TGorogoroPolluteModelFv
__dt__21TGorogoroPolluteModelFv: # 0x800b5e18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b5e80
    lis     r3, 0x803b
    addi    r0, r3, 0x6ac8
    stw     r0, 0x0(r30)
    beq-    branch_0x800b5e70
    lis     r3, 0x803b
    subi    r0, r3, 0x19a8
    stw     r0, 0x0(r30)
    beq-    branch_0x800b5e70
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800b5e70:
    extsh.  r0, r31
    ble-    branch_0x800b5e80
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b5e80:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__28TGorogoroPolluteModelManagerFv
__dt__28TGorogoroPolluteModelManagerFv: # 0x800b5e9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b5f04
    lis     r3, 0x803b
    addi    r0, r3, 0x6af0
    stw     r0, 0x0(r30)
    beq-    branch_0x800b5ef4
    lis     r3, 0x803b
    subi    r0, r3, 0x1980
    stw     r0, 0x0(r30)
    beq-    branch_0x800b5ef4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800b5ef4:
    extsh.  r0, r31
    ble-    branch_0x800b5f04
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b5f04:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__7TIgaigaFv
__dt__7TIgaigaFv: # 0x800b5f20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b5fa0
    lis     r3, 0x803b
    addi    r3, r3, 0x6b48
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b5f90
    lis     r3, 0x803b
    addi    r3, r3, 0x6dc0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b5f90
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800b5f90:
    extsh.  r0, r31
    ble-    branch_0x800b5fa0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b5fa0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TIgaigaManagerFv
__dt__14TIgaigaManagerFv: # 0x800b5fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b6014
    lis     r3, 0x803b
    addi    r0, r3, 0x6d18
    stw     r0, 0x0(r30)
    beq-    branch_0x800b6004
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800b6004:
    extsh.  r0, r31
    ble-    branch_0x800b6014
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b6014:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__19TIgaigaPolluteModelFv
__dt__19TIgaigaPolluteModelFv: # 0x800b6030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b6098
    lis     r3, 0x803b
    addi    r0, r3, 0x6d70
    stw     r0, 0x0(r30)
    beq-    branch_0x800b6088
    lis     r3, 0x803b
    subi    r0, r3, 0x19a8
    stw     r0, 0x0(r30)
    beq-    branch_0x800b6088
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800b6088:
    extsh.  r0, r31
    ble-    branch_0x800b6098
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b6098:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__26TIgaigaPolluteModelManagerFv
__dt__26TIgaigaPolluteModelManagerFv: # 0x800b60b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b611c
    lis     r3, 0x803b
    addi    r0, r3, 0x6d98
    stw     r0, 0x0(r30)
    beq-    branch_0x800b610c
    lis     r3, 0x803b
    subi    r0, r3, 0x1980
    stw     r0, 0x0(r30)
    beq-    branch_0x800b610c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x800b610c:
    extsh.  r0, r31
    ble-    branch_0x800b611c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b611c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_igaiga_cpp
__sinit_igaiga_cpp: # 0x800b6138
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x1808
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6180
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800b6180:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800b61b0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800b61b0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800b61e0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800b61e0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6210
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800b6210:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6240
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800b6240:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6270
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800b6270:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800b62a0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800b62a0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800b62d0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800b62d0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6300
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800b6300:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6330
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800b6330:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6360
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800b6360:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6390
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800b6390:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b63c0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800b63c0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800b63f0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800b63f0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800b6420
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800b6420:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TRollEnemyFv
_32___dt__10TRollEnemyFv: # 0x800b6434
    subi    r3, r3, 0x20
    b       __dt__10TRollEnemyFv


.globl _32___dt__7TIgaigaFv
_32___dt__7TIgaigaFv: # 0x800b643c
    subi    r3, r3, 0x20
    b       __dt__7TIgaigaFv


.globl _32___dt__9TGorogoroFv
_32___dt__9TGorogoroFv: # 0x800b6444
    subi    r3, r3, 0x20
    b       __dt__9TGorogoroFv

