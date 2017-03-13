
.globl bind__8TBaseNPCFv
bind__8TBaseNPCFv: # 0x80217258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    addi    r30, sp, 0x3c
    lwz     r4, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r4, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
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
    bge-    branch_0x8021731c
    stfs    f1, 0xb0(r31)
branch_0x8021731c:
    lfs     f1, 0x38(sp)
    addi    r4, r31, 0xc4
    lfs     f0, 0xc0(r31)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x34(sp)
    lfs     f3, 0x3c(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x1978(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f1, -0x1974(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x38(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x802173e4
    lwz     r3, 0xc4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802173d4
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8021738c
    li      r0, 0x1
    b       branch_0x80217390

branch_0x8021738c:
    li      r0, 0x0
branch_0x80217390:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802173a4
    li      r0, 0x0
    b       branch_0x802173a8

branch_0x802173a4:
    li      r0, 0x1
branch_0x802173a8:
    clrlwi. r0, r0, 24
    beq-    branch_0x802173d4
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x1970(rtoc)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x38(sp)
branch_0x802173d4:
    lwz     r0, 0xc4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802173f0
    b       branch_0x802173f0

branch_0x802173e4:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x802173f0:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 3, 3
    beq-    branch_0x8021741c
    lfs     f1, 0x38(sp)
    mr      r5, r30
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0x34
    lwz     r3, gpMap(r13)
    fadds   f1, f1, f0
    lfs     f2, -0x196c(rtoc)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
branch_0x8021741c:
    lwz     r0, 0x34(sp)
    addi    r3, sp, 0x10
    lwz     r5, 0x38(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x10(sp)
    lwz     r0, 0x3c(sp)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setVariableDamageRadius___8TBaseNPCFv
setVariableDamageRadius___8TBaseNPCFv: # 0x80217470
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stfd    f29, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x4c(r3)
    addis   r3, r3, 0xfc00
    subi    r3, r3, 0x1
    bl      SMSGetNpcInitData__FUl
    lfs     f1, 0x4c(r3)
    mr      r3, r31
    lfs     f0, 0x24(r31)
    fmuls   f30, f0, f1
    fmr     f29, f30
    bl      isBeTrampledNpc__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80217520
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x80217520
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80217520
    lfs     f0, -0x1968(rtoc)
    lfs     f4, 0x0(r3)
    lfs     f3, 0x10(r31)
    fmuls   f1, f0, f30
    lfs     f2, 0x8(r3)
    lfs     f0, 0x18(r31)
    fsubs   f31, f4, f3
    fsubs   f30, f2, f0
    bl      CLBSquared_f___Ff
    lfs     f0, -0x1970(rtoc)
    fmadds  f0, f31, f31, f0
    fmadds  f0, f30, f30, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x80217520
    lwz     r3, 0x228(r31)
    lfs     f29, 0x68(r3)
branch_0x80217520:
    stfs    f29, 0x58(r31)
    mr      r3, r31
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    mtlr    r0
    lfd     f29, 0x58(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x70
    blr


.globl execNpcObjCollision___8TBaseNPCFv
execNpcObjCollision___8TBaseNPCFv: # 0x8021754c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stfd    f27, 0x70(sp)
    stfd    f26, 0x68(sp)
    stw     r31, 0x64(sp)
    li      r31, 0x0
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r29, 0x5c(sp)
    li      r29, 0x0
    stw     r28, 0x58(sp)
    lfs     f29, -0x1970(rtoc)
    lfs     f30, -0x1960(rtoc)
    lfs     f31, -0x1964(rtoc)
    lfs     f27, -0x1978(rtoc)
    lfs     f28, -0x195c(rtoc)
    b       branch_0x80217834

branch_0x802175a4:
    mr      r3, r30
    bl      isNerveWalk__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802175bc
    li      r28, 0x0
    b       branch_0x802175f4

branch_0x802175bc:
    lwz     r3, 0x44(r30)
    lwzx    r3, r3, r29
    lwz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x802175d8
    li      r0, 0x1
    b       branch_0x802175dc

branch_0x802175d8:
    li      r0, 0x0
branch_0x802175dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021782c
    bl      isNerveWalk__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8021782c
    li      r28, 0x1
branch_0x802175f4:
    lwz     r3, 0x44(r30)
    clrlwi. r0, r28, 24
    lfs     f1, 0x10(r30)
    lwzx    r3, r3, r29
    lfs     f3, 0x18(r30)
    lfs     f0, 0x10(r3)
    lfs     f2, 0x18(r3)
    fsubs   f0, f1, f0
    fsubs   f1, f3, f2
    stfs    f0, 0x4c(sp)
    stfs    f29, 0x50(sp)
    stfs    f1, 0x54(sp)
    beq-    branch_0x8021764c
    lfs     f0, 0x4c(sp)
    fneg    f0, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fneg    f0, f0
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fneg    f0, f0
    stfs    f0, 0x54(sp)
branch_0x8021764c:
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x54(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x802176cc
    lwz     r3, 0x44(r30)
    lfs     f1, 0x14(r30)
    lwzx    r3, r3, r29
    lfs     f0, 0x14(r3)
    fsubs   f1, f1, f0
    fcmpo   cr0, f1, f29
    cror    2, 1, 2
    bne-    branch_0x802176a0
    fmr     f0, f1
    b       branch_0x802176a4

branch_0x802176a0:
    fneg    f0, f1
branch_0x802176a4:
    fcmpo   cr0, f0, f30
    bge-    branch_0x802176bc
    stfs    f27, 0x4c(sp)
    stfs    f28, 0x50(sp)
    stfs    f29, 0x54(sp)
    b       branch_0x802177b8

branch_0x802176bc:
    stfs    f29, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f29, 0x54(sp)
    b       branch_0x802177b8

branch_0x802176cc:
    addi    r3, sp, 0x4c
    bl      MsVECMag2__FP3Vec
    lwz     r3, 0x44(r30)
    lfs     f2, 0x50(r30)
    lwzx    r3, r3, r29
    lfs     f0, 0x58(r3)
    fadds   f0, f2, f0
    fsubs   f0, f0, f1
    fcmpo   cr0, f0, f29
    cror    2, 1, 2
    bne-    branch_0x8021771c
    addi    r3, sp, 0x4c
    bl      MsVECMag2__FP3Vec
    lwz     r3, 0x44(r30)
    lfs     f2, 0x50(r30)
    lwzx    r3, r3, r29
    lfs     f0, 0x58(r3)
    fadds   f0, f2, f0
    fsubs   f0, f0, f1
    b       branch_0x80217740

branch_0x8021771c:
    addi    r3, sp, 0x4c
    bl      MsVECMag2__FP3Vec
    lwz     r3, 0x44(r30)
    lfs     f2, 0x50(r30)
    lwzx    r3, r3, r29
    lfs     f0, 0x58(r3)
    fadds   f0, f2, f0
    fsubs   f0, f0, f1
    fneg    f0, f0
branch_0x80217740:
    fcmpo   cr0, f0, f30
    fmr     f26, f0
    bge-    branch_0x80217750
    fmr     f26, f30
branch_0x80217750:
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x54(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f31
    cror    2, 0, 2
    bne-    branch_0x8021778c
    stfs    f29, 0x54(sp)
    stfs    f29, 0x50(sp)
    stfs    f29, 0x4c(sp)
    b       branch_0x802177b8

branch_0x8021778c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f26, f1
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
branch_0x802177b8:
    clrlwi. r0, r28, 24
    beq-    branch_0x802177fc
    lwz     r3, 0x44(r30)
    lfs     f0, 0x4c(sp)
    lwzx    r3, r3, r29
    lfsu    f1, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r3)
    b       branch_0x8021782c

branch_0x802177fc:
    lfs     f1, 0x94(r30)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r30)
    lfs     f1, 0x98(r30)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r30)
    lfs     f1, 0x9c(r30)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r30)
branch_0x8021782c:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x4
branch_0x80217834:
    lhz     r0, 0x48(r30)
    cmpw    r31, r0
    blt+    branch_0x802175a4
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lfd     f27, 0x70(sp)
    lfd     f26, 0x68(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x98
    blr


.globl initNpcObjCollision___8TBaseNPCFPC12TNpcInitInfo
initNpcObjCollision___8TBaseNPCFPC12TNpcInitInfo: # 0x80217878
    mflr    r0
    lis     r6, 0x400
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x2
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x400
    lwz     r5, 0x4c(r30)
    addi    r0, r3, 0x1c
    cmpw    r5, r0
    beq-    branch_0x802178e4
    bge-    branch_0x802178d0
    addi    r0, r3, 0x6
    cmpw    r5, r0
    beq-    branch_0x802178dc
    blt-    branch_0x802178e4
    addi    r0, r3, 0x1a
    cmpw    r5, r0
    bge-    branch_0x802178dc
    b       branch_0x802178e4

branch_0x802178d0:
    addi    r0, r3, 0x1e
    cmpw    r5, r0
    bge-    branch_0x802178e4
branch_0x802178dc:
    li      r31, 0x0
    li      r6, 0x0
branch_0x802178e4:
    lfs     f3, 0x28(r30)
    mr      r3, r30
    lfs     f1, 0x48(r4)
    lfs     f0, 0x50(r4)
    fmuls   f2, f1, f3
    lfs     f5, 0x24(r30)
    lfs     f1, 0x44(r4)
    fmuls   f4, f0, f3
    lfs     f0, 0x4c(r4)
    addi    r4, r5, 0x0
    fmuls   f1, f1, f5
    fmuls   f3, f0, f5
    addi    r5, r31, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x64(r30)
    clrlwi. r0, r31, 16
    clrrwi  r0, r3, 1
    stw     r0, 0x64(r30)
    bne-    branch_0x8021793c
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x2
    stw     r0, 0x64(r30)
branch_0x8021793c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

