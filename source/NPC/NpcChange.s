
.globl kill__8TBaseNPCFv
kill__8TBaseNPCFv: # 0x80212d40
    blr


.globl setPosAndInitAfterSinkBottom__8TBaseNPCFv
setPosAndInitAfterSinkBottom__8TBaseNPCFv: # 0x80212d44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    lwz     r4, 0x194(r31)
    lwz     r0, 0x198(r31)
    lwz     r3, -0x62f0(r13)
    stw     r4, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x19c(r31)
    stw     r0, 0x88(sp)
    lfs     f30, 0x84(sp)
    lfs     f31, 0x88(sp)
    fmr     f2, f30
    lfs     f1, 0x80(sp)
    fmr     f3, f31
    bl      isPolluted__17TPollutionManagerCFfff
    lis     r4, 0xf53a
    lwz     r5, 0xf0(r31)
    subi    r0, r4, 0x20
    and     r0, r5, r0
    stw     r0, 0xf0(r31)
    li      r0, 0x0
    addi    r30, r3, 0x0
    lwz     r3, 0xf0(r31)
    oris    r3, r3, 0x100
    stw     r3, 0xf0(r31)
    stw     r0, 0x6c(r31)
    stw     r0, 0x68(r31)
    lwz     r3, 0x15c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80212dd8
    stw     r0, 0x0(r3)
branch_0x80212dd8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80212e10
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80212e14

branch_0x80212e10:
    li      r0, 0x1
branch_0x80212e14:
    stb     r0, 0x13c(r31)
    lwz     r6, 0x160(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80212e58
    li      r5, 0x0
    addi    r3, r5, 0x0
    b       branch_0x80212e4c

branch_0x80212e30:
    lwz     r4, 0x10(r6)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r4)
branch_0x80212e4c:
    lhz     r0, 0x0(r6)
    cmpw    r5, r0
    blt+    branch_0x80212e30
branch_0x80212e58:
    lwz     r3, 0x8c(r31)
    li      r5, 0x0
    li      r4, -0x1
    stw     r5, 0x8(r3)
    clrlwi. r0, r30, 24
    lwz     r3, 0x18c(r31)
    stw     r5, 0x24(r3)
    lfs     f0, -0x1a48(rtoc)
    stfs    f0, 0x28(r3)
    lwz     r3, 0x190(r31)
    stw     r4, 0x0(r3)
    stw     r5, 0x1cc(r31)
    stfs    f0, 0x1d0(r31)
    beq-    branch_0x80212ff0
    mr      r3, r31
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80212ff0
    lwz     r0, 0x170(r31)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x80212ff0
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    lwz     r3, 0x18(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80212ed0
    stw     r0, 0x1c(r4)
branch_0x80212ed0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    bl      theNerve__13TNerveNPCSinkFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x80212f34
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80212f28
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80212f28
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80212f28:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80212f34:
    bl      theNerve__13TNerveNPCSinkFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x80212f8c
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80212f80
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80212f80
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80212f80:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80212f8c:
    lwz     r0, 0xf0(r31)
    fmr     f3, f31
    addi    r4, r31, 0xc4
    oris    r0, r0, 0xc0
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lfs     f1, 0x148(r31)
    lfs     f0, 0xc0(r31)
    lwz     r3, -0x6328(r13)
    fmuls   f0, f1, f0
    lfs     f1, 0x80(sp)
    fadds   f2, f30, f0
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    stfs    f1, 0x1c4(r31)
    lwz     r3, 0x228(r31)
    lfs     f1, 0x1c4(r31)
    lfs     f0, 0x2fc(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f0, -0x1a48(rtoc)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    b       branch_0x802130b4

branch_0x80212ff0:
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    lwz     r3, 0x18(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80213014
    stw     r0, 0x1c(r4)
branch_0x80213014:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r6, 0x8c(r31)
    lwz     r5, 0x18(r6)
    cmplwi  r5, 0x0
    beq-    branch_0x80213078
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8021306c
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x8021306c
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x8021306c:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80213078:
    lfs     f1, 0x84(sp)
    lfs     f0, -0x1a44(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, -0x1a48(rtoc)
    stfs    f1, 0xac(r31)
    lfs     f0, -0x1a40(rtoc)
    stfs    f0, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8000
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x802130b4:
    lfs     f0, 0x80(sp)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stfs    f0, 0x10(r31)
    lfs     f0, 0x84(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x88(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x1a0(r31)
    stfs    f0, 0x30(r31)
    lfs     f0, 0x1a4(r31)
    stfs    f0, 0x34(r31)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x38(r31)
    lfs     f0, -0x1a48(rtoc)
    stfs    f0, 0x94(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x9c(r31)
    lwz     r4, 0x124(r31)
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r31)
    stw     r0, 0x4(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    mr      r3, r31
    bl      npcWaitIn__8TBaseNPCFv
    mr      r3, r31
    bl      randomizeBckAndBtpFrame___8TBaseNPCFv
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0xa8
    blr


.globl changeNerveProc___8TBaseNPCFv
changeNerveProc___8TBaseNPCFv: # 0x80213140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x128(sp)
    stfd    f31, 0x120(sp)
    stfd    f30, 0x118(sp)
    stmw    r27, 0x104(sp)
    mr      r28, r3
    li      r29, 0x0
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80213174
    b       branch_0x80213178

branch_0x80213174:
    lwz     r31, 0x1c(r3)
branch_0x80213178:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r31, r3
    bne-    branch_0x802131a4
    lwz     r0, 0xf0(r28)
    li      r29, 0x1
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r28)
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf0(r28)
    b       branch_0x802134e8

branch_0x802131a4:
    lwz     r0, 0xf0(r28)
    li      r30, 0x0
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x802131bc
    li      r30, 0x1
    b       branch_0x802133e4

branch_0x802131bc:
    lhz     r0, 0x1e0(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x802133e4
    mr      r3, r28
    bl      isJellyFishMare__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802133e4
    lwz     r3, -0x7118(r13)
    bl      isTalkCameraInbetween__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802133e4
    lwz     r0, 0x68(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x802133e4
    lis     r3, 0xc1
    lwz     r4, 0xf0(r28)
    addi    r0, r3, 0x207
    and.    r0, r4, r0
    bne-    branch_0x802133e4
    lwz     r0, 0x170(r28)
    rlwinm. r0, r0, 0, 17, 17
    bne-    branch_0x802133e4
    lfs     f1, -0x1a48(rtoc)
    lfs     f0, 0x178(r28)
    fcmpu   cr0, f1, f0
    bne-    branch_0x802133e4
    addi    r27, r30, 0x0
    addi    r3, r28, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80213248
    lbz     r0, 0x1d8(r28)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80213248
    li      r27, 0x1
branch_0x80213248:
    clrlwi. r0, r27, 24
    bne-    branch_0x802133e4
    mr      r3, r28
    bl      isNerveCanGoToTalk__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802133e4
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80213280
    lwz     r3, 0xd0(r28)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x802133e4
branch_0x80213280:
    bl      SMS_IsMarioOpeningDoor__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x802133e4
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x7
    bne-    branch_0x802132d4
    lwz     r4, 0x10(r28)
    addi    r3, sp, 0xd0
    lwz     r0, 0x14(r28)
    lfs     f0, -0x1a3c(rtoc)
    stw     r4, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0xd8(sp)
    lfs     f1, 0xd4(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    bl      SMS_IsInSameCameraCube__FRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x802133e4
branch_0x802132d4:
    lwz     r0, 0x17c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x802132f0
    lwz     r4, -0x6220(r13)
    lfs     f31, 0xa4(r4)
    lfs     f30, 0x90(r4)
    b       branch_0x8021331c

branch_0x802132f0:
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1a
    bne-    branch_0x8021330c
    lwz     r3, -0x6220(r13)
    lfs     f30, 0x7c(r3)
    b       branch_0x80213314

branch_0x8021330c:
    lwz     r3, -0x6220(r13)
    lfs     f30, 0x2c(r3)
branch_0x80213314:
    lwz     r3, -0x6220(r13)
    lfs     f31, 0x40(r3)
branch_0x8021331c:
    lwz     r0, 0x170(r28)
    andi.   r0, r0, 0x401
    bne-    branch_0x80213348
    mr      r3, r28
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80213348
    lwz     r3, 0x4c(r28)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x1d
    bne-    branch_0x80213354
branch_0x80213348:
    lwz     r3, -0x6220(r13)
    lfs     f2, 0x68(r3)
    b       branch_0x8021335c

branch_0x80213354:
    lwz     r3, -0x6220(r13)
    lfs     f2, 0x54(r3)
branch_0x8021335c:
    lwz     r4, -0x60b4(r13)
    lfs     f0, 0x14(r28)
    lfs     f1, 0x4(r4)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x802133e4
    fmr     f1, f30
    lfs     f3, -0x1a38(rtoc)
    mr      r3, r28
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x802133e4
    lwz     r3, -0x60ac(r13)
    lis     r0, 0x4330
    lwz     r5, -0x6220(r13)
    fmr     f2, f30
    lha     r4, 0x0(r3)
    lfd     f1, -0x1a30(rtoc)
    xoris   r4, r4, 0x8000
    lfs     f5, -0x1a34(rtoc)
    stw     r4, 0xfc(sp)
    addi    r4, r28, 0x10
    lwz     r3, -0x60b4(r13)
    stw     r0, 0xf8(sp)
    lfs     f3, 0x18(r5)
    lfd     f0, 0xf8(sp)
    lfs     f4, -0x1a48(rtoc)
    fsubs   f0, f0, f1
    fmuls   f1, f5, f0
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x802133e4
    li      r30, 0x1
branch_0x802133e4:
    clrlwi. r0, r30, 24
    beq-    branch_0x802134d0
    lwz     r0, 0xf0(r28)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r28)
    lwz     r0, 0xf0(r28)
    rlwinm. r0, r0, 0, 13, 13
    beq-    branch_0x802134e8
    lwz     r0, 0xf0(r28)
    li      r29, 0x1
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf0(r28)
    lwz     r3, 0x8c(r28)
    lwz     r27, 0x14(r3)
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r27, r3
    beq-    branch_0x80213440
    bl      theNerve__21TNerveNPCRecoverAfterFv
    cmplw   r27, r3
    beq-    branch_0x80213440
    bl      theNerve__12TNerveNPCMadFv
    cmplw   r27, r3
    bne-    branch_0x80213468
branch_0x80213440:
    bl      theNerve__13TNerveNPCTalkFv
    lwz     r4, 0x8c(r28)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80213458
    stw     r0, 0x1c(r4)
branch_0x80213458:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x802134c0

branch_0x80213468:
    bl      theNerve__13TNerveNPCTalkFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r28)
    beq-    branch_0x802134c0
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x802134b4
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x802134b4
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x802134b4:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x802134c0:
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r28)
    b       branch_0x802134e8

branch_0x802134d0:
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 15, 13
    stw     r0, 0xf0(r28)
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf0(r28)
branch_0x802134e8:
    clrlwi. r0, r29, 24
    bne-    branch_0x80213794
    mr      r3, r28
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80213794
    lwz     r0, 0x170(r28)
    andi.   r0, r0, 0x4600
    bne-    branch_0x80213794
    lwz     r0, 0x15c(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80213794
    bl      theNerve__30TNerveNPCSetPosAfterSinkBottomFv
    cmplw   r31, r3
    beq-    branch_0x80213794
    lwz     r5, 0x15c(r28)
    li      r4, 0x0
    lwz     r3, 0x0(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r5)
    lwz     r3, 0x4(r5)
    cmpw    r0, r3
    blt-    branch_0x80213550
    stw     r3, 0x0(r5)
    li      r4, 0x1
branch_0x80213550:
    clrlwi. r0, r4, 24
    beq-    branch_0x80213794
    lwz     r3, 0x15c(r28)
    li      r27, 0x0
    stw     r27, 0x0(r3)
    bl      theNerve__13TNerveNPCSinkFv
    cmplw   r31, r3
    bne-    branch_0x8021360c
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r28)
    lfs     f2, 0x1c4(r28)
    lfs     f3, 0x18(r28)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    bne-    branch_0x80213794
    bl      theNerve__24TNerveNPCRecoverFromSinkFv
    lwz     r6, 0x8c(r28)
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x802135a4
    stw     r0, 0x1c(r6)
branch_0x802135a4:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    li      r4, 0x1a
    li      r5, 0x1
    stw     r3, 0x14(r6)
    mr      r3, r28
    lwz     r0, 0x64(r28)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r28)
    lwz     r0, 0xf0(r28)
    rlwinm  r0, r0, 0, 9, 7
    stw     r0, 0xf0(r28)
    bl      requestNpcAnm___8TBaseNPCF14EnumNpcAnmKind27EnumNpcStopMotionBlendOnOff
    lwz     r3, -0x6044(r13)
    li      r4, 0x3811
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80213794
    addi    r4, r28, 0x10
    li      r3, 0x3811
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80213794

branch_0x8021360c:
    lwz     r3, 0xf0(r28)
    rlwinm. r0, r3, 0, 9, 9
    bne-    branch_0x80213794
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x80213624
    li      r27, 0x1
branch_0x80213624:
    cmpwi   r27, 0x0
    bne-    branch_0x80213794
    lwz     r3, -0x62f0(r13)
    lfs     f1, 0x10(r28)
    lfs     f2, 0x14(r28)
    lfs     f3, 0x18(r28)
    bl      isPolluted__17TPollutionManagerCFfff
    clrlwi. r0, r3, 24
    beq-    branch_0x80213794
    lwz     r3, 0x8c(r28)
    li      r29, 0x0
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80213660
    b       branch_0x80213664

branch_0x80213660:
    lwz     r30, 0x1c(r3)
branch_0x80213664:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x802136ac
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r30, r3
    beq-    branch_0x802136ac
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r30, r3
    beq-    branch_0x802136ac
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r30, r3
    beq-    branch_0x802136ac
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r30, r3
    beq-    branch_0x802136ac
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r30, r3
    bne-    branch_0x802136f0
branch_0x802136ac:
    lwz     r3, 0x8c(r28)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802136ec
    lwz     r4, 0x8(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x802136d0
    li      r30, 0x0
    b       branch_0x802136e0

branch_0x802136d0:
    subi    r0, r4, 0x1
    lwz     r3, 0xc(r3)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
branch_0x802136e0:
    bl      theNerve__13TNerveNPCSinkFv
    cmplw   r30, r3
    beq-    branch_0x802136f0
branch_0x802136ec:
    li      r29, 0x1
branch_0x802136f0:
    clrlwi. r0, r29, 24
    beq-    branch_0x80213794
    lfs     f0, 0x14(r28)
    lis     r3, 0xf7fe
    subi    r0, r3, 0x1
    stfs    f0, 0x1c4(r28)
    mr      r3, r28
    lfs     f0, -0x1a48(rtoc)
    stfs    f0, 0xac(r28)
    stfs    f0, 0xb0(r28)
    stfs    f0, 0xb4(r28)
    lwz     r4, 0xf0(r28)
    and     r0, r4, r0
    stw     r0, 0xf0(r28)
    lwz     r0, 0xf0(r28)
    oris    r0, r0, 0x40
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r28)
    bl      npcFallIn__8TBaseNPCFv
    bl      theNerve__13TNerveNPCSinkFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r28)
    beq-    branch_0x80213794
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80213788
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80213788
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80213788:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80213794:
    lmw     r27, 0x104(sp)
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    mtlr    r0
    addi    sp, sp, 0x128
    blr


.globl isNowCanTaken__8TBaseNPCCFv
isNowCanTaken__8TBaseNPCCFv: # 0x802137b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    lwz     r5, 0xf0(r3)
    rlwinm. r0, r5, 0, 11, 11
    beq-    branch_0x802138c0
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xfc00
    cmplwi  r0, 0x1c
    beq-    branch_0x802138c0
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802138c0
    lwz     r0, 0x6c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802138c0
    lis     r4, 0x84
    addi    r0, r4, 0x7
    and.    r0, r5, r0
    bne-    branch_0x802138c0
    lwz     r0, 0x64(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x802138c0
    lwz     r3, 0x8c(r3)
    li      r31, 0x0
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80213834
    b       branch_0x80213838

branch_0x80213834:
    lwz     r30, 0x1c(r3)
branch_0x80213838:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__13TNerveNPCSinkFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__24TNerveNPCRecoverFromSinkFv
    cmplw   r30, r3
    beq-    branch_0x802138b0
    bl      theNerve__21TNerveNPCRecoverAfterFv
    cmplw   r30, r3
    bne-    branch_0x802138b4
branch_0x802138b0:
    li      r31, 0x1
branch_0x802138b4:
    clrlwi. r0, r31, 24
    beq-    branch_0x802138c0
    li      r29, 0x1
branch_0x802138c0:
    lwz     r0, 0x2c(sp)
    mr      r3, r29
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl isStateGoToMad___8TBaseNPCCFv
isStateGoToMad___8TBaseNPCCFv: # 0x802138e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      isMadNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80213938
    lwz     r0, 0x170(r30)
    andi.   r0, r0, 0x4600
    bne-    branch_0x80213938
    lfs     f1, -0x1a48(rtoc)
    lfs     f0, 0x178(r30)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80213938
    mr      r3, r30
    bl      isInMadSearchRange__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80213938
    li      r31, 0x1
branch_0x80213938:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl behaveToSandBomb___8TBaseNPCFPC10TLiveActor
behaveToSandBomb___8TBaseNPCFPC10TLiveActor: # 0x80213954
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    lfs     f31, 0x1c8(r3)
    mr      r3, r4
    bl      SMS_GetSandRiseUpRatio__FPC10TLiveActor
    stfs    f1, 0x1c8(r31)
    lfs     f1, 0x1c8(r31)
    fcmpo   cr0, f1, f31
    ble-    branch_0x80213b50
    lfs     f0, -0x1a28(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80213b50
    lfs     f0, -0x1a24(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x80213b50
    lwz     r3, 0x8c(r31)
    li      r30, 0x0
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x802139c0
    b       branch_0x802139c4

branch_0x802139c0:
    lwz     r29, 0x1c(r3)
branch_0x802139c4:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r29, r3
    beq-    branch_0x80213a24
    bl      theNerve__18TNerveNPCMareStandFv
    cmplw   r29, r3
    bne-    branch_0x80213a6c
branch_0x80213a24:
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x80213a48
    cmplwi  r0, 0x2
    beq-    branch_0x80213a48
    li      r4, 0x0
branch_0x80213a48:
    clrlwi. r0, r4, 24
    bne-    branch_0x80213a60
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x4
    beq-    branch_0x80213a60
    li      r3, 0x0
branch_0x80213a60:
    clrlwi. r0, r3, 24
    bne-    branch_0x80213a6c
    li      r30, 0x1
branch_0x80213a6c:
    clrlwi. r0, r30, 24
    beq-    branch_0x80213b50
    lwz     r3, -0x6220(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x144(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f0, -0x1a48(rtoc)
    stfs    f0, 0x34(sp)
    stfs    f1, 0x38(sp)
    stfs    f0, 0x3c(sp)
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x3c(sp)
    stw     r0, 0xb4(r31)
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r29, r3
    bne-    branch_0x80213af8
    bl      theNerve__14TNerveNPCBlownFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80213ae8
    stw     r0, 0x1c(r4)
branch_0x80213ae8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x80213b50

branch_0x80213af8:
    bl      theNerve__14TNerveNPCBlownFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r31)
    beq-    branch_0x80213b50
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80213b44
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80213b44
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80213b44:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80213b50:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x60
    blr


.globl behaveToHitObject___8TBaseNPCFP9THitActor20EnumHitNpcObjectKind
behaveToHitObject___8TBaseNPCFP9THitActor20EnumHitNpcObjectKind: # 0x80213b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xb8(sp)
    mr      r30, r3
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    lwz     r0, 0x170(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80213cc0
    cmpwi   r31, 0x0
    bne-    branch_0x80213fc0
    lwz     r6, -0x6048(r13)
    li      r3, 0x1
    addi    r5, r3, 0x0
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x80213bcc
    cmplwi  r0, 0x2
    beq-    branch_0x80213bcc
    li      r5, 0x0
branch_0x80213bcc:
    clrlwi. r0, r5, 24
    bne-    branch_0x80213bfc
    lbz     r5, 0x124(r6)
    li      r0, 0x1
    cmplwi  r5, 0x3
    beq-    branch_0x80213bf0
    cmplwi  r5, 0x4
    beq-    branch_0x80213bf0
    li      r0, 0x0
branch_0x80213bf0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80213bfc
    li      r3, 0x0
branch_0x80213bfc:
    clrlwi. r0, r3, 24
    bne-    branch_0x80213fc0
    lwz     r3, -0x6070(r13)
    addi    r5, r4, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, -0x6044(r13)
    addi    r5, r30, 0x10
    lfs     f1, -0x1a48(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    lis     r31, 0x1
    lwz     r3, -0x6044(r13)
    subi    r4, r31, 0x77c9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80213c74
    subi    r3, r31, 0x77c9
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80213c74:
    lwz     r3, -0x6220(r13)
    lfs     f1, 0x218(r30)
    lfs     f0, 0x284(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x218(r30)
    lfs     f1, 0x218(r30)
    lfs     f0, -0x1a48(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80213fc0
    stfs    f0, 0x218(r30)
    li      r0, -0x4089
    addi    r3, r30, 0x0
    lwz     r5, 0x170(r30)
    li      r4, 0x1
    and     r0, r5, r0
    stw     r0, 0x170(r30)
    bl      npcHappyIn__8TBaseNPCFUc
    b       branch_0x80213fc0

branch_0x80213cc0:
    cmpwi   r31, 0x0
    bne-    branch_0x80213d90
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x80213cec
    cmplwi  r0, 0x2
    beq-    branch_0x80213cec
    li      r4, 0x0
branch_0x80213cec:
    clrlwi. r0, r4, 24
    bne-    branch_0x80213d1c
    lbz     r4, 0x124(r5)
    li      r0, 0x1
    cmplwi  r4, 0x3
    beq-    branch_0x80213d10
    cmplwi  r4, 0x4
    beq-    branch_0x80213d10
    li      r0, 0x0
branch_0x80213d10:
    clrlwi. r0, r0, 24
    bne-    branch_0x80213d1c
    li      r3, 0x0
branch_0x80213d1c:
    clrlwi. r0, r3, 24
    bne-    branch_0x80213d90
    mr      r3, r30
    bl      isPollutionNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80213d90
    lwz     r3, 0x8c(r30)
    lwz     r28, 0x14(r3)
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r28, r3
    bne-    branch_0x80213d90
    lfs     f2, 0x178(r30)
    lfs     f1, -0x1a48(rtoc)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80213d90
    lwz     r3, 0x228(r30)
    lfs     f0, 0x324(r3)
    fsubs   f0, f2, f0
    stfs    f0, 0x178(r30)
    lfs     f0, 0x178(r30)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x80213d90
    stfs    f1, 0x178(r30)
    li      r0, 0x3c
    sth     r0, 0x1e0(r30)
    lbz     r0, 0x1da(r30)
    ori     r0, r0, 0x2
    stb     r0, 0x1da(r30)
branch_0x80213d90:
    lwz     r0, 0x170(r30)
    rlwinm. r0, r0, 0, 21, 22
    bne-    branch_0x80213fc0
    lwz     r3, 0x8c(r30)
    li      r29, 0x0
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80213db4
    b       branch_0x80213db8

branch_0x80213db4:
    lwz     r28, 0x1c(r3)
branch_0x80213db8:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r28, r3
    beq-    branch_0x80213e0c
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r28, r3
    beq-    branch_0x80213e0c
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r28, r3
    beq-    branch_0x80213e0c
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r28, r3
    beq-    branch_0x80213e0c
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r28, r3
    beq-    branch_0x80213e0c
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r28, r3
    beq-    branch_0x80213e0c
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r28, r3
    bne-    branch_0x80213e84
branch_0x80213e0c:
    lwz     r3, 0x8c(r30)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80213e80
    lwz     r4, 0x8(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x80213e30
    li      r28, 0x0
    b       branch_0x80213e40

branch_0x80213e30:
    subi    r0, r4, 0x1
    lwz     r3, 0xc(r3)
    slwi    r0, r0, 2
    lwzx    r28, r3, r0
branch_0x80213e40:
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r28, r3
    beq-    branch_0x80213e84
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80213e64
    li      r28, 0x0
    b       branch_0x80213e74

branch_0x80213e64:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r28, r3, r0
branch_0x80213e74:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r28, r3
    beq-    branch_0x80213e84
branch_0x80213e80:
    li      r29, 0x1
branch_0x80213e84:
    clrlwi. r0, r29, 24
    beq-    branch_0x80213fc0
    lwz     r0, 0x170(r30)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x80213fc0
    lwz     r3, 0x4c(r30)
    li      r4, 0x0
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80213ebc
    lbz     r0, 0x1d8(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80213ebc
    li      r4, 0x1
branch_0x80213ebc:
    clrlwi. r0, r4, 24
    bne-    branch_0x80213fc0
    li      r28, 0x0
    addi    r3, r30, 0x0
    bl      isSunflower__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80213ee8
    lbz     r0, 0x1d8(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80213ee8
    li      r28, 0x1
branch_0x80213ee8:
    clrlwi. r0, r28, 24
    bne-    branch_0x80213fc0
    lfs     f1, -0x1a48(rtoc)
    lfs     f0, 0x178(r30)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80213f08
    cmpwi   r31, 0x1
    beq-    branch_0x80213fc0
branch_0x80213f08:
    lwz     r3, 0x4c(r30)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x6
    bne-    branch_0x80213f30
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80213f30
    cmpwi   r0, 0x6
    bne-    branch_0x80213fc0
branch_0x80213f30:
    lwz     r3, 0x8c(r30)
    lwz     r28, 0x14(r3)
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r28, r3
    bne-    branch_0x80213f54
    lwz     r3, 0x8c(r30)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x4
    blt-    branch_0x80213fc0
branch_0x80213f54:
    cmpwi   r31, 0x1
    bne-    branch_0x80213f68
    lwz     r0, 0xf0(r30)
    oris    r0, r0, 0x400
    stw     r0, 0xf0(r30)
branch_0x80213f68:
    bl      theNerve__12TNerveNPCWetFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x80213fc0
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80213fb4
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80213fb4
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80213fb4:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80213fc0:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xc0
    blr


.globl behaveToBeTrampled___8TBaseNPCFv
behaveToBeTrampled___8TBaseNPCFv: # 0x80213fe0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    bl      isChild__8TBaseNPCCFv
    lis     r4, 0x1
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    subi    r31, r4, 0x77da
    li      r28, 0x1
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214038
    mr      r3, r30
    bl      isSpecialMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214038
    li      r28, 0x0
branch_0x80214038:
    clrlwi. r0, r28, 24
    beq-    branch_0x80214060
    clrlwi. r0, r29, 24
    beq-    branch_0x80214054
    lis     r3, 0x1
    subi    r31, r3, 0x7755
    b       branch_0x802141bc

branch_0x80214054:
    lis     r3, 0x1
    subi    r31, r3, 0x77bc
    b       branch_0x802141bc

branch_0x80214060:
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214088
    mr      r3, r30
    bl      isSpecialMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214088
    li      r28, 0x0
branch_0x80214088:
    clrlwi. r0, r28, 24
    beq-    branch_0x802140b0
    clrlwi. r0, r29, 24
    beq-    branch_0x802140a4
    lis     r3, 0x1
    subi    r31, r3, 0x7754
    b       branch_0x802141bc

branch_0x802140a4:
    lis     r3, 0x1
    subi    r31, r3, 0x77bb
    b       branch_0x802141bc

branch_0x802140b0:
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802140d8
    mr      r3, r30
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802140d8
    li      r28, 0x0
branch_0x802140d8:
    clrlwi. r0, r28, 24
    beq-    branch_0x80214130
    clrlwi. r0, r29, 24
    beq-    branch_0x802140f4
    lis     r3, 0x1
    subi    r31, r3, 0x7753
    b       branch_0x802141bc

branch_0x802140f4:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x12
    cmpw    r4, r0
    bge-    branch_0x80214124
    addi    r0, r3, 0x10
    cmpw    r4, r0
    bge-    branch_0x80214118
    b       branch_0x80214124

branch_0x80214118:
    lis     r3, 0x1
    subi    r31, r3, 0x7751
    b       branch_0x802141bc

branch_0x80214124:
    lis     r3, 0x1
    subi    r31, r3, 0x77ba
    b       branch_0x802141bc

branch_0x80214130:
    li      r28, 0x1
    addi    r3, r30, 0x0
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214158
    mr      r3, r30
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214158
    li      r28, 0x0
branch_0x80214158:
    clrlwi. r0, r28, 24
    beq-    branch_0x80214180
    clrlwi. r0, r29, 24
    beq-    branch_0x80214174
    lis     r3, 0x1
    subi    r31, r3, 0x7752
    b       branch_0x802141bc

branch_0x80214174:
    lis     r3, 0x1
    subi    r31, r3, 0x77b9
    b       branch_0x802141bc

branch_0x80214180:
    lis     r3, 0x400
    lwz     r4, 0x4c(r30)
    addi    r0, r3, 0x17
    cmpw    r4, r0
    beq-    branch_0x802141b4
    bge-    branch_0x802141bc
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x802141a8
    b       branch_0x802141bc

branch_0x802141a8:
    lis     r3, 0x1
    subi    r31, r3, 0x77b7
    b       branch_0x802141bc

branch_0x802141b4:
    lis     r3, 0x1
    subi    r31, r3, 0x77b8
branch_0x802141bc:
    lwz     r3, -0x6044(r13)
    mr      r4, r31
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802141ec
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802141ec:
    lwz     r3, 0x180(r30)
    bl      startTrample__11TNpcTrampleFv
    li      r28, 0x1
    addi    r29, r28, 0x0
    addi    r3, r30, 0x0
    bl      isNormalMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214220
    mr      r3, r30
    bl      isNormalMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214220
    li      r29, 0x0
branch_0x80214220:
    clrlwi. r0, r29, 24
    bne-    branch_0x8021425c
    li      r29, 0x1
    addi    r3, r30, 0x0
    bl      isSpecialMareM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214250
    mr      r3, r30
    bl      isSpecialMareW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80214250
    li      r29, 0x0
branch_0x80214250:
    clrlwi. r0, r29, 24
    bne-    branch_0x8021425c
    li      r28, 0x0
branch_0x8021425c:
    clrlwi. r0, r28, 24
    beq-    branch_0x802144c8
    mr      r3, r30
    bl      isBehaveToWaterNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802144c8
    lwz     r0, 0x170(r30)
    andi.   r0, r0, 0x4200
    bne-    branch_0x802144c8
    lwz     r3, 0xd0(r30)
    lwz     r0, 0x14(r3)
    cmpwi   r0, 0x1b
    beq-    branch_0x802142a0
    bge-    branch_0x80214380
    cmpwi   r0, 0x7
    beq-    branch_0x802142a0
    b       branch_0x80214380

branch_0x802142a0:
    lwz     r3, 0x8c(r30)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x802142b8
    mr      r29, r28
    b       branch_0x802142bc

branch_0x802142b8:
    lwz     r29, 0x1c(r3)
branch_0x802142bc:
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r28, r3
    bne-    branch_0x80214344
    bl      theNerve__12TNerveNPCWetFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x80214320
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80214314
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80214314
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80214314:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80214320:
    lwz     r3, 0x8c(r30)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80214334
    stw     r0, 0x1c(r3)
branch_0x80214334:
    li      r0, 0x0
    stw     r0, 0x20(r3)
    stw     r0, 0x14(r3)
    b       branch_0x802144c8

branch_0x80214344:
    cmplwi  r28, 0x0
    bne-    branch_0x802144c8
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r29, r3
    bne-    branch_0x802144c8
    bl      theNerve__12TNerveNPCWetFv
    lwz     r4, 0x8c(r30)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80214370
    stw     r0, 0x1c(r4)
branch_0x80214370:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x802144c8

branch_0x80214380:
    lwz     r3, 0x8c(r30)
    li      r29, 0x0
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80214398
    b       branch_0x8021439c

branch_0x80214398:
    lwz     r31, 0x1c(r3)
branch_0x8021439c:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r31, r3
    beq-    branch_0x802143f0
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r31, r3
    beq-    branch_0x802143f0
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r31, r3
    beq-    branch_0x802143f0
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r31, r3
    beq-    branch_0x802143f0
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r31, r3
    beq-    branch_0x802143f0
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r31, r3
    beq-    branch_0x802143f0
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r31, r3
    bne-    branch_0x80214468
branch_0x802143f0:
    lwz     r3, 0x8c(r30)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80214464
    lwz     r4, 0x8(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x80214414
    li      r31, 0x0
    b       branch_0x80214424

branch_0x80214414:
    subi    r0, r4, 0x1
    lwz     r3, 0xc(r3)
    slwi    r0, r0, 2
    lwzx    r31, r3, r0
branch_0x80214424:
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r31, r3
    beq-    branch_0x80214468
    lwz     r4, 0x8c(r30)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80214448
    li      r31, 0x0
    b       branch_0x80214458

branch_0x80214448:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r31, r3, r0
branch_0x80214458:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r31, r3
    beq-    branch_0x80214468
branch_0x80214464:
    li      r29, 0x1
branch_0x80214468:
    clrlwi. r0, r29, 24
    beq-    branch_0x802144c8
    bl      theNerve__12TNerveNPCWetFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x802144c8
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x802144bc
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x802144bc
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x802144bc:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x802144c8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl behaveToBeTaken___8TBaseNPCFP9THitActor
behaveToBeTaken___8TBaseNPCFP9THitActor: # 0x802144e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lfs     f0, -0x1a20(rtoc)
    lfs     f1, 0x34(r3)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, 0x34(r30)
    mr      r31, r3
    lfs     f0, -0x1a20(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    subf    r0, r31, r3
    sth     r0, -0x621c(r13)
    lis     r3, 0xffbe
    subi    r0, r3, 0x11
    lwz     r4, 0x18c(r29)
    lwz     r3, 0x0(r4)
    stw     r3, 0x8(r4)
    lwz     r3, 0x64(r29)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r29)
    lwz     r3, 0xf0(r29)
    and     r0, r3, r0
    stw     r0, 0xf0(r29)
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80214588
    mr      r3, r29
    bl      peachParasolOut___8TBaseNPCFv
    lwz     r3, 0x188(r29)
    li      r4, 0x52
    li      r5, 0x2ee
    bl      setNextMessage__11TNpcBalloonFUll
branch_0x80214588:
    bl      theNerve__21TNerveNPCWaitContinueFv
    lwz     r4, 0x8c(r29)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802145a0
    stw     r0, 0x1c(r4)
branch_0x802145a0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r30, 0x68(r29)
    stw     r30, 0x158(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl releaseTaken___8TBaseNPCFv
releaseTaken___8TBaseNPCFv: # 0x802145d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, 0x158(r3)
    lwz     r4, -0x6220(r13)
    lfs     f0, -0x1a20(rtoc)
    lfs     f1, 0x34(r3)
    lfs     f31, 0x1d0(r4)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r5, -0x6220(r13)
    li      r3, 0xf
    sraw    r0, r4, r0
    lwz     r4, -0x5ea8(r13)
    slwi    r0, r0, 2
    lwz     r6, -0x5ea4(r13)
    lfsx    f0, r4, r0
    lfsx    f1, r6, r0
    fmuls   f0, f31, f0
    lfs     f2, 0x1e4(r5)
    fmuls   f1, f31, f1
    stfs    f0, 0xac(r31)
    stfs    f2, 0xb0(r31)
    stfs    f1, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x1000
    stw     r0, 0xf0(r31)
    bl      CLBPalFrame_l___Fl
    stw     r3, 0x1dc(r31)
    li      r0, 0x0
    stw     r0, 0x158(r31)
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x18
    bne-    branch_0x80214688
    mr      r3, r31
    bl      peachTiredIn___8TBaseNPCFv
    lwz     r3, 0x188(r31)
    li      r4, 0x0
    li      r5, -0x1
    bl      setNextMessage__11TNpcBalloonFUll
branch_0x80214688:
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802146a0
    stw     r0, 0x1c(r4)
branch_0x802146a0:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl changeNerveToMad___8TBaseNPCFv
changeNerveToMad___8TBaseNPCFv: # 0x802146c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r31, r3
    bne-    branch_0x80214718
    bl      theNerve__12TNerveNPCMadFv
    lwz     r4, 0x8c(r30)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80214708
    stw     r0, 0x1c(r4)
branch_0x80214708:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x80214770

branch_0x80214718:
    bl      theNerve__12TNerveNPCMadFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x80214770
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80214764
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80214764
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80214764:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80214770:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl changeNerveFromTalk___8TBaseNPCFv
changeNerveFromTalk___8TBaseNPCFv: # 0x80214788
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    lwz     r3, 0x8c(r3)
    lwz     r4, 0x8(r3)
    lwz     r29, 0x14(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x802147c0
    li      r30, 0x0
    b       branch_0x802147d0

branch_0x802147c0:
    subi    r0, r4, 0x1
    lwz     r3, 0xc(r3)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
branch_0x802147d0:
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r29, r3
    bne-    branch_0x80214850
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x80214824
    lwz     r5, 0x8(r4)
    cmpwi   r5, 0x0
    bgt-    branch_0x80214808
    lwz     r3, 0xc(r4)
    slwi    r0, r5, 2
    lwzx    r0, r3, r0
    b       branch_0x80214828

branch_0x80214808:
    subi    r0, r5, 0x1
    stw     r0, 0x8(r4)
    lwz     r0, 0x8(r4)
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    b       branch_0x80214828

branch_0x80214824:
    li      r0, 0x0
branch_0x80214828:
    cmplwi  r0, 0x0
    beq-    branch_0x802148dc
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80214840
    stw     r3, 0x1c(r4)
branch_0x80214840:
    stw     r0, 0x14(r4)
    li      r0, 0x0
    stw     r0, 0x20(r4)
    b       branch_0x802148dc

branch_0x80214850:
    cmplwi  r29, 0x0
    bne-    branch_0x802148d8
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r30, r3
    bne-    branch_0x802148d8
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    ble-    branch_0x802148ac
    lwz     r5, 0x8(r4)
    cmpwi   r5, 0x0
    bgt-    branch_0x80214890
    lwz     r3, 0xc(r4)
    slwi    r0, r5, 2
    lwzx    r0, r3, r0
    b       branch_0x802148b0

branch_0x80214890:
    subi    r0, r5, 0x1
    stw     r0, 0x8(r4)
    lwz     r0, 0x8(r4)
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    b       branch_0x802148b0

branch_0x802148ac:
    li      r0, 0x0
branch_0x802148b0:
    cmplwi  r0, 0x0
    beq-    branch_0x802148dc
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x802148c8
    stw     r3, 0x1c(r4)
branch_0x802148c8:
    stw     r0, 0x14(r4)
    li      r0, 0x0
    stw     r0, 0x20(r4)
    b       branch_0x802148dc

branch_0x802148d8:
    bl      theNerve__13TNerveNPCTalkFv
branch_0x802148dc:
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802148f0
    stw     r0, 0x1c(r3)
branch_0x802148f0:
    li      r0, 0x0
    stw     r0, 0x20(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x17c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80214948
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 2, 2
    beq-    branch_0x80214924
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 3, 1
    stw     r0, 0xf0(r31)
    b       branch_0x80214948

branch_0x80214924:
    bl      theNerve__14TNerveNPCThrowFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8021493c
    stw     r0, 0x1c(r4)
branch_0x8021493c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x80214948:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 7, 5
    stw     r0, 0xf0(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl isNerveCanGoToMad__8TBaseNPCCFv
isNerveCanGoToMad__8TBaseNPCCFv: # 0x80214970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8021499c
    b       branch_0x802149a0

branch_0x8021499c:
    lwz     r31, 0x1c(r3)
branch_0x802149a0:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r31, r3
    beq-    branch_0x802149f4
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r31, r3
    beq-    branch_0x802149f4
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r31, r3
    beq-    branch_0x802149f4
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r31, r3
    beq-    branch_0x802149f4
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r31, r3
    beq-    branch_0x802149f4
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r31, r3
    beq-    branch_0x802149f4
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r31, r3
    bne-    branch_0x802149f8
branch_0x802149f4:
    li      r30, 0x1
branch_0x802149f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isNerveCanGoToTalk__8TBaseNPCCFv
isNerveCanGoToTalk__8TBaseNPCCFv: # 0x80214a14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80214a48
    b       branch_0x80214a4c

branch_0x80214a48:
    lwz     r31, 0x1c(r3)
branch_0x80214a4c:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__20TNerveNPCTurnToMarioFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__21TNerveNPCRecoverAfterFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__12TNerveNPCMadFv
    cmplw   r31, r3
    beq-    branch_0x80214aac
    bl      theNerve__18TNerveNPCMareStandFv
    cmplw   r31, r3
    bne-    branch_0x80214b24
branch_0x80214aac:
    lwz     r3, 0x8c(r29)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80214b20
    lwz     r4, 0x8(r3)
    cmpwi   r4, 0x0
    bne-    branch_0x80214ad0
    li      r31, 0x0
    b       branch_0x80214ae0

branch_0x80214ad0:
    subi    r0, r4, 0x1
    lwz     r3, 0xc(r3)
    slwi    r0, r0, 2
    lwzx    r31, r3, r0
branch_0x80214ae0:
    bl      theNerve__12TNerveNPCWetFv
    cmplw   r31, r3
    beq-    branch_0x80214b24
    lwz     r4, 0x8c(r29)
    lwz     r3, 0x8(r4)
    cmpwi   r3, 0x0
    bne-    branch_0x80214b04
    li      r31, 0x0
    b       branch_0x80214b14

branch_0x80214b04:
    subi    r0, r3, 0x1
    lwz     r3, 0xc(r4)
    slwi    r0, r0, 2
    lwzx    r31, r3, r0
branch_0x80214b14:
    bl      theNerve__13TNerveNPCTalkFv
    cmplw   r31, r3
    beq-    branch_0x80214b24
branch_0x80214b20:
    li      r30, 0x1
branch_0x80214b24:
    lwz     r0, 0x44(sp)
    mr      r3, r30
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl isNerveMaybeDontCalcAnim1__8TBaseNPCCFv
isNerveMaybeDontCalcAnim1__8TBaseNPCCFv: # 0x80214b44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80214b70
    b       branch_0x80214b74

branch_0x80214b70:
    lwz     r31, 0x1c(r3)
branch_0x80214b74:
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r31, r3
    beq-    branch_0x80214b98
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r31, r3
    beq-    branch_0x80214b98
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r31, r3
    bne-    branch_0x80214b9c
branch_0x80214b98:
    li      r30, 0x1
branch_0x80214b9c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isNerveMaybeDontCalcAnim0__8TBaseNPCCFv
isNerveMaybeDontCalcAnim0__8TBaseNPCCFv: # 0x80214bb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80214be4
    b       branch_0x80214be8

branch_0x80214be4:
    lwz     r31, 0x1c(r3)
branch_0x80214be8:
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r31, r3
    beq-    branch_0x80214c00
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r31, r3
    bne-    branch_0x80214c04
branch_0x80214c00:
    li      r30, 0x1
branch_0x80214c04:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isNerveMaybeDontMovement__8TBaseNPCCFv
isNerveMaybeDontMovement__8TBaseNPCCFv: # 0x80214c20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80214c4c
    b       branch_0x80214c50

branch_0x80214c4c:
    lwz     r31, 0x1c(r3)
branch_0x80214c50:
    bl      theNerve__21TNerveNPCWaitContinueFv
    cmplw   r31, r3
    beq-    branch_0x80214c74
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    cmplw   r31, r3
    beq-    branch_0x80214c74
    bl      theNerve__13TNerveNPCSinkFv
    cmplw   r31, r3
    bne-    branch_0x80214c78
branch_0x80214c74:
    li      r30, 0x1
branch_0x80214c78:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isNerveWalk__8TBaseNPCCFv
isNerveWalk__8TBaseNPCCFv: # 0x80214c94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    li      r30, 0x0
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80214cc0
    b       branch_0x80214cc4

branch_0x80214cc0:
    lwz     r31, 0x1c(r3)
branch_0x80214cc4:
    bl      theNerve__20TNerveNPCGraphWanderFv
    cmplw   r31, r3
    beq-    branch_0x80214ce8
    bl      theNerve__14TNerveNPCUTurnFv
    cmplw   r31, r3
    beq-    branch_0x80214ce8
    bl      theNerve__18TNerveNPCGraphWaitFv
    cmplw   r31, r3
    bne-    branch_0x80214cec
branch_0x80214ce8:
    li      r30, 0x1
branch_0x80214cec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_NpcChange_cpp
__sinit_NpcChange_cpp: # 0x80214d08
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5040
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80214d50
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80214d50:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80214d80
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80214d80:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80214db0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80214db0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80214de0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80214de0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80214e10
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80214e10:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80214e40
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80214e40:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80214e70
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80214e70:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80214ea0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80214ea0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80214ed0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80214ed0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80214f00
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80214f00:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80214f30
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80214f30:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80214f60
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80214f60:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80214f90
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80214f90:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80214fc0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80214fc0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80214ff0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80214ff0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

