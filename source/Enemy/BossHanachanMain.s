
.globl __dt__13TBossHanachanFv
__dt__13TBossHanachanFv: # 0x800ed904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ed954
    lis     r3, 0x803c
    subi    r3, r3, 0x5294
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x800ed954
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ed954:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__13TBossHanachanCFv
hasMapCollision__13TBossHanachanCFv: # 0x800ed970
    li      r3, 0x1
    blr


.globl removeAllMapCollision__13TBossHanachanFv
removeAllMapCollision__13TBossHanachanFv: # 0x800ed978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x170(r3)
    lwz     r3, 0x104(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r30, 0x0
    li      r31, 0x0
branch_0x800ed9b4:
    addi    r0, r31, 0x150
    lwzx    r3, r29, r0
    lwz     r3, 0x104(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    cmpwi   r30, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x800ed9b4
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl execDamage__13TBossHanachanFv
execDamage__13TBossHanachanFv: # 0x800ed9fc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r3, 0x8c(r3)
    stw     r0, 0x8(r3)
    lbz     r3, 0x13c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800eda30
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r31)
branch_0x800eda30:
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800edbf0
    lwz     r3, 0x170(r31)
    li      r0, 0x2
    mtctr   r0
    li      r4, 0x0
    lwz     r3, 0x100(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800eda5c:
    addi    r5, r4, 0x150
    add     r5, r31, r5
    lwz     r3, 0x0(r5)
    lwz     r3, 0x100(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x118(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    addi    r5, r4, 0x154
    add     r5, r31, r5
    lwz     r3, 0x11c(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x100(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x118(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    addi    r5, r4, 0x158
    add     r5, r31, r5
    lwz     r3, 0x11c(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x100(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x118(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    addi    r5, r4, 0x15c
    add     r5, r31, r5
    lwz     r3, 0x11c(r3)
    addi    r4, r4, 0x10
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x100(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x118(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0x0(r5)
    lwz     r3, 0x11c(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    bdnz+      branch_0x800eda5c
    bl      theNerve__22TNerveBossHanachanDeadFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800edb8c
    stw     r0, 0x1c(r4)
branch_0x800edb8c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    mr      r3, r31
    bl      setAnmTimerWhenDead__13TBossHanachanFv
    lwz     r5, -0x60b4(r13)
    li      r4, 0x28e6
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x1ac(r31)
    stw     r0, 0x1b0(r31)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1b4(r31)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800edcc8
    addi    r4, r31, 0x1ac
    li      r3, 0x28e6
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x800edcc8

branch_0x800edbf0:
    bl      theNerve__24TNerveBossHanachanDamageFv
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x800edc08
    stw     r0, 0x1c(r4)
branch_0x800edc08:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    mr      r3, r31
    bl      setAnmTimerWhenDamage__13TBossHanachanFv
    lbz     r0, 0x13c(r31)
    lwz     r3, 0x70(r31)
    subfic  r0, r0, 0x3
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r0, 0x58(r3)
    stw     r0, 0x1c0(r31)
    lbz     r0, 0x13c(r31)
    lwz     r3, -0x7d8c(r13)
    cmpwi   r0, 0x2
    addi    r4, r3, 0x0
    beq-    branch_0x800edc64
    bge-    branch_0x800edc68
    cmpwi   r0, 0x1
    bge-    branch_0x800edc5c
    b       branch_0x800edc68

branch_0x800edc5c:
    mr      r4, r3
    b       branch_0x800edc68

branch_0x800edc64:
    lwz     r4, -0x7d88(r13)
branch_0x800edc68:
    lwz     r3, -0x70b0(r13)
    bl      getGraphByName__10TConductorFPCc
    lwz     r5, 0x124(r31)
    li      r4, 0x280f
    stw     r3, 0x0(r5)
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r0, 0x174(r31)
    lwz     r3, -0x6044(r13)
    slwi    r0, r0, 2
    add     r5, r31, r0
    lwz     r5, 0x150(r5)
    addi    r31, r5, 0x154
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800edcc8
    addi    r4, r31, 0x0
    li      r3, 0x280f
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800edcc8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl goToInitialRecoverGraphNode__13TBossHanachanFv
goToInitialRecoverGraphNode__13TBossHanachanFv: # 0x800edcdc
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    li      r0, -0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r4, r31, 0x10
    lwz     r3, 0x124(r3)
    stw     r0, 0x8(r3)
    lwz     r3, 0x124(r31)
    stw     r0, 0x4(r3)
    lwz     r7, 0x1bc(r31)
    lwz     r3, 0x124(r31)
    addi    r6, r7, 0x1f8
    lfs     f1, 0x34(r31)
    lwz     r3, 0x0(r3)
    lfs     f2, 0x1e4(r7)
    lfs     f3, 0x0(r6)
    bl      findNearestVisibleIndex__9TGraphWebCFRCQ29JGeometry8TVec3_f_fffUl
    mr.     r4, r3
    bge-    branch_0x800edd40
    mr      r3, r31
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    b       branch_0x800edd60

branch_0x800edd40:
    lwz     r3, 0x124(r31)
    bl      setTo__12TGraphTracerFi
    mr      r3, r31
    bl      setGoalPathFromGraph__11TSpineEnemyFv
    li      r0, 0x0
    sth     r0, 0x128(r31)
    lfs     f0, -0x5a08(rtoc)
    stfs    f0, 0x12c(r31)
branch_0x800edd60:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl execSlip__13TBossHanachanFv
execSlip__13TBossHanachanFv: # 0x800edd74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    lwz     r4, 0x1c0(r3)
    addi    r3, r31, 0x140
    lfs     f1, -0x5a08(rtoc)
    lfs     f2, 0x90(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f0, -0x5a00(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f1, 0x140(r31)
    lfs     f0, -0x59fc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ee0f4
    lwz     r3, 0x188(r31)
    lwz     r0, 0x18c(r31)
    lfs     f0, -0x59f8(rtoc)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x190(r31)
    stw     r0, 0x84(sp)
    lfs     f1, 0x140(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800edf8c
    addi    r3, r31, 0x150
    lfs     f0, -0x5a08(rtoc)
    lwz     r3, 0x0(r3)
    fabs    f2, f0
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ede0c
    fmr     f0, f1
branch_0x800ede0c:
    addi    r3, r31, 0x154
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ede2c
    fmr     f0, f1
branch_0x800ede2c:
    addi    r3, r31, 0x158
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ede4c
    fmr     f0, f1
branch_0x800ede4c:
    addi    r3, r31, 0x15c
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ede6c
    fmr     f0, f1
branch_0x800ede6c:
    addi    r3, r31, 0x160
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ede8c
    fmr     f0, f1
branch_0x800ede8c:
    addi    r3, r31, 0x164
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800edeac
    fmr     f0, f1
branch_0x800edeac:
    addi    r3, r31, 0x168
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800edecc
    fmr     f0, f1
branch_0x800edecc:
    addi    r3, r31, 0x16c
    fabs    f2, f0
    lwz     r3, 0x0(r3)
    lfs     f1, 0x38(r3)
    fabs    f3, f1
    fcmpo   cr0, f3, f2
    ble-    branch_0x800edeec
    fmr     f0, f1
branch_0x800edeec:
    lfs     f29, -0x5a08(rtoc)
    lfs     f31, -0x59f4(rtoc)
    fcmpo   cr0, f0, f29
    fmr     f30, f29
    ble-    branch_0x800edf0c
    fneg    f29, f29
    fneg    f31, f31
    fmr     f30, f29
branch_0x800edf0c:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x59f0(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r3, -0x5ea8(r13)
    fneg    f4, f31
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, -0x5ea4(r13)
    lfsx    f7, r3, r0
    lfsx    f6, r4, r0
    fmuls   f5, f30, f7
    lfs     f2, -0x59ec(rtoc)
    lfs     f1, 0x140(r31)
    fmuls   f3, f30, f6
    lfs     f0, 0x7c(sp)
    fmuls   f1, f2, f1
    fmadds  f2, f31, f6, f5
    fmadds  f3, f4, f7, f3
    fmuls   f29, f29, f1
    fmuls   f2, f2, f1
    fmuls   f3, f3, f1
    fadds   f0, f0, f2
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fadds   f0, f0, f29
    stfs    f0, 0x80(sp)
    lfs     f0, 0x84(sp)
    fadds   f0, f0, f3
    stfs    f0, 0x84(sp)
branch_0x800edf8c:
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x84(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x59e8(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    mfcr    r0
    extrwi. r0, r0, 1, 2
    bne-    branch_0x800ee0b8
    addi    r3, sp, 0x7c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x7c(sp)
    li      r5, 0x0
    lfs     f1, -0x59e4(rtoc)
    mr      r3, r31
    fmuls   f0, f0, f1
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
    lfs     f0, 0x84(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x84(sp)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    lfs     f0, 0x7c(sp)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f0, 0x84(sp)
    lfs     f1, 0x68(sp)
    stw     r5, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lwz     r4, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r4, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x68(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x50(sp)
    stw     r0, 0xf4(r31)
    lwz     r4, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r4, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x104(r31)
    lwz     r4, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r4, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x5c(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lfs     f1, 0x140(r31)
    lfs     f2, 0x144(r31)
    lfs     f3, -0x5a08(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800ee0b8:
    lwz     r3, -0x7108(r13)
    li      r4, 0x9
    lfs     f1, -0x59f4(rtoc)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800ee0f4
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x20(r3)
    cmpwi   r0, 0x78
    bge-    branch_0x800ee0f4
    lwz     r3, -0x60f0(r13)
    li      r4, 0x16
    li      r5, 0x0
    bl      start__9RumbleMgrFiPf
branch_0x800ee0f4:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0xa8
    blr


.globl execWalk__13TBossHanachanFb
execWalk__13TBossHanachanFb: # 0x800ee114
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 24
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa8(sp)
    beq-    branch_0x800ee150
    lwz     r5, 0x1c0(r31)
    addi    r3, r31, 0x140
    lfs     f1, 0x68(r5)
    lfs     f2, 0x7c(r5)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    b       branch_0x800ee164

branch_0x800ee150:
    lwz     r4, 0x1c0(r31)
    addi    r3, r31, 0x140
    lfs     f1, -0x5a08(rtoc)
    lfs     f2, 0x90(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
branch_0x800ee164:
    lwz     r3, 0x1c0(r31)
    li      r30, 0x1
    lfs     f0, 0xa4(r3)
    stfs    f0, 0x144(r31)
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800ee188
    addi    r5, r3, 0x10
    b       branch_0x800ee18c

branch_0x800ee188:
    addi    r5, r31, 0xf8
branch_0x800ee18c:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x60
    lwz     r0, 0x4(r5)
    lfs     f2, -0x5a08(rtoc)
    stw     r4, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x5c(sp)
    lfs     f4, 0x5c(sp)
    lfs     f3, 0x18(r31)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x10(r31)
    fsubs   f3, f4, f3
    fsubs   f1, f1, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800ee308
    lfs     f1, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x68(sp)
    fmuls   f0, f0, f0
    lfs     f1, -0x59e0(rtoc)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f31, f3, f0
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    bge-    branch_0x800ee1fc
    li      r30, 0x0
branch_0x800ee1fc:
    clrlwi. r0, r30, 24
    beq-    branch_0x800ee218
    lfs     f1, 0x140(r31)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f3, -0x5a08(rtoc)
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x800ee218:
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800ee22c
    addi    r4, r3, 0x10
    b       branch_0x800ee230

branch_0x800ee22c:
    addi    r4, r31, 0xf8
branch_0x800ee230:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x5a08(rtoc)
    stw     r3, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x90(sp)
    lfs     f2, 0x88(sp)
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    fsubs   f1, f2, f1
    lfs     f2, 0x90(sp)
    fsubs   f2, f2, f3
    stfs    f1, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f2, 0x9c(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x98(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x9c(sp)
    fmuls   f0, f0, f0
    lfs     f1, -0x5a04(rtoc)
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fadds   f31, f3, f0
    bl      CLBSquared_f___Ff
    fcmpo   cr0, f31, f1
    bge-    branch_0x800ee2ec
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x800ee2e0
    beq-    branch_0x800ee2ec
    addi    r3, sp, 0x78
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x78(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x7c(sp)
    lwz     r0, 0x80(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x84(sp)
    stw     r0, 0x100(r31)
    b       branch_0x800ee2ec

branch_0x800ee2e0:
    mr      r3, r31
    lfs     f1, -0x59dc(rtoc)
    bl      goToDirLimitedNextGraphNode__11TSpineEnemyFf
branch_0x800ee2ec:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800ee308
set_f___Q29JGeometry8TVec3_f_Ffff_800ee308: # 0x800ee308
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl getBodyMaxRotateZ__13TBossHanachanCFv
getBodyMaxRotateZ__13TBossHanachanCFv: # 0x800ee318
    addi    r4, r3, 0x150
    lfs     f1, -0x5a08(rtoc)
    lwz     r4, 0x0(r4)
    fabs    f2, f1
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee33c
    fmr     f1, f0
branch_0x800ee33c:
    addi    r4, r3, 0x154
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee35c
    fmr     f1, f0
branch_0x800ee35c:
    addi    r4, r3, 0x158
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee37c
    fmr     f1, f0
branch_0x800ee37c:
    addi    r4, r3, 0x15c
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee39c
    fmr     f1, f0
branch_0x800ee39c:
    addi    r4, r3, 0x160
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee3bc
    fmr     f1, f0
branch_0x800ee3bc:
    addi    r4, r3, 0x164
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee3dc
    fmr     f1, f0
branch_0x800ee3dc:
    addi    r4, r3, 0x168
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ee3fc
    fmr     f1, f0
branch_0x800ee3fc:
    addi    r4, r3, 0x16c
    fabs    f2, f1
    lwz     r4, 0x0(r4)
    lfs     f0, 0x38(r4)
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    blelr-    

    fmr     f1, f0
    blr


.globl checkFallDecideAndSetup__13TBossHanachanFv
checkFallDecideAndSetup__13TBossHanachanFv: # 0x800ee420
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x8
    mtctr   r0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    lfs     f1, -0x5a08(rtoc)
branch_0x800ee44c:
    addi    r0, r4, 0x150
    lwz     r5, 0x1c0(r30)
    lwzx    r6, r30, r0
    addi    r5, r5, 0xb8
    lfs     f2, 0x38(r6)
    mr      r31, r6
    fcmpo   cr0, f2, f1
    cror    2, 1, 2
    bne-    branch_0x800ee474
    b       branch_0x800ee478

branch_0x800ee474:
    fneg    f2, f2
branch_0x800ee478:
    lfs     f0, 0x0(r5)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800ee508
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      emitOneTimeSandPillar___13TBossHanachanFP22TBossHanachanPartsBody
    lfs     f1, 0x38(r31)
    lfs     f0, -0x5a08(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ee4ac
    lfs     f0, -0x59d8(rtoc)
    stfs    f0, 0x194(r30)
    b       branch_0x800ee4b4

branch_0x800ee4ac:
    lfs     f0, -0x59d4(rtoc)
    stfs    f0, 0x194(r30)
branch_0x800ee4b4:
    lfs     f2, 0x13c(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, -0x5a08(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800ee4d4
    b       branch_0x800ee4d8

branch_0x800ee4d4:
    fneg    f1, f1
branch_0x800ee4d8:
    lwz     r3, 0x1c0(r30)
    lfs     f0, 0xcc(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x198(r30)
    lwz     r3, 0x1c0(r30)
    lfs     f0, 0x198(r30)
    lfs     f1, 0xe0(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800ee500
    stfs    f1, 0x198(r30)
branch_0x800ee500:
    li      r3, 0x1
    b       branch_0x800ee510

branch_0x800ee508:
    addi    r4, r4, 0x4
    bdnz+      branch_0x800ee44c
branch_0x800ee510:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl isTumbleCompletelyAllBody__13TBossHanachanCFv
isTumbleCompletelyAllBody__13TBossHanachanCFv: # 0x800ee528
    lwz     r4, 0x150(r3)
    li      r5, 0x1
    lfs     f0, -0x59d4(rtoc)
    li      r0, 0x1
    lfs     f1, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee554
    lfs     f0, -0x59d8(rtoc)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee554
    li      r0, 0x0
branch_0x800ee554:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ee564
    li      r0, 0x1
    b       branch_0x800ee568

branch_0x800ee564:
    li      r0, 0x0
branch_0x800ee568:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ee578
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee578:
    lwz     r4, 0x154(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee590
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee590:
    lwz     r4, 0x158(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee5a8
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee5a8:
    lwz     r4, 0x15c(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee5c0
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee5c0:
    lwz     r4, 0x160(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee5d8
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee5d8:
    lwz     r4, 0x164(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee5f0
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee5f0:
    lwz     r4, 0x168(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee608
    li      r5, 0x0
    b       branch_0x800ee61c

branch_0x800ee608:
    lwz     r4, 0x16c(r3)
    lfs     f0, 0x38(r4)
    fcmpu   cr0, f0, f1
    beq-    branch_0x800ee61c
    li      r5, 0x0
branch_0x800ee61c:
    mr      r3, r5
    blr


.globl perform__13TBossHanachanFUlPQ26JDrama9TGraphics
perform__13TBossHanachanFUlPQ26JDrama9TGraphics: # 0x800ee624
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x570(sp)
    stfd    f31, 0x568(sp)
    stfd    f30, 0x560(sp)
    stfd    f29, 0x558(sp)
    stfd    f28, 0x550(sp)
    stfd    f27, 0x548(sp)
    stfd    f26, 0x540(sp)
    stfd    f25, 0x538(sp)
    stfd    f24, 0x530(sp)
    stfd    f23, 0x528(sp)
    stfd    f22, 0x520(sp)
    stfd    f21, 0x518(sp)
    stfd    f20, 0x510(sp)
    stfd    f19, 0x508(sp)
    stfd    f18, 0x500(sp)
    stfd    f17, 0x4f8(sp)
    stfd    f16, 0x4f0(sp)
    stfd    f15, 0x4e8(sp)
    stfd    f14, 0x4e0(sp)
    stmw    r22, 0x4b8(sp)
    mr      r31, r3
    addi    r28, r4, 0x0
    addi    r30, r5, 0x0
    lwz     r6, 0xf0(r3)
    andi.   r0, r6, 0x201
    bne-    branch_0x800efda4
    rlwinm. r0, r6, 0, 13, 13
    beq-    branch_0x800ee78c
    clrlwi. r0, r28, 31
    beq-    branch_0x800efda4
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800efda4
    lwz     r3, -0x6044(r13)
    li      r4, 0x6010
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ee6e0
    addi    r4, r31, 0x10
    li      r3, 0x6010
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800ee6e0:
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x800ee704
    cmplwi  r0, 0x2
    beq-    branch_0x800ee704
    li      r4, 0x0
branch_0x800ee704:
    clrlwi. r0, r4, 24
    bne-    branch_0x800ee71c
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x4
    beq-    branch_0x800ee71c
    li      r3, 0x0
branch_0x800ee71c:
    clrlwi. r0, r3, 24
    bne-    branch_0x800efda4
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 11, 11
    bne-    branch_0x800ee74c
    lwz     r3, -0x6044(r13)
    li      r4, 0x1
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      modBgm__8MSModBgmFUcUc
    cmplwi  r3, 0x0
    bne-    branch_0x800efda4
branch_0x800ee74c:
    lwz     r0, 0xf0(r31)
    lis     r3, 0x8038
    lis     r4, 0x8038
    ori     r0, r0, 0x41
    stw     r0, 0xf0(r31)
    addi    r5, r3, 0x1da0
    addi    r4, r4, 0x1d8c
    lwz     r3, 0x1bc(r31)
    lfs     f1, 0x180(r31)
    lfs     f0, 0x20c(r3)
    lwz     r3, -0x62b0(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x17c(r31)
    lfs     f3, 0x184(r31)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
    b       branch_0x800efda4

branch_0x800ee78c:
    clrlwi. r0, r28, 31
    beq-    branch_0x800ef708
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x800ee7b8
    cmplwi  r0, 0x2
    beq-    branch_0x800ee7b8
    li      r4, 0x0
branch_0x800ee7b8:
    clrlwi. r0, r4, 24
    bne-    branch_0x800ee7d0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x4
    beq-    branch_0x800ee7d0
    li      r3, 0x0
branch_0x800ee7d0:
    clrlwi. r0, r3, 24
    beq-    branch_0x800ee84c
    lfs     f0, -0x5a08(rtoc)
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa0(r31)
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800ef6dc
    lwz     r3, 0x8c(r31)
    lwz     r23, 0x14(r3)
    cmplwi  r23, 0x0
    beq-    branch_0x800ee814
    b       branch_0x800ee818

branch_0x800ee814:
    lwz     r23, 0x1c(r3)
branch_0x800ee818:
    bl      theNerve__22TNerveBossHanachanDeadFv
    cmplw   r23, r3
    bne-    branch_0x800ef6dc
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 11, 11
    bne-    branch_0x800ef6dc
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    li      r4, 0x1e
    oris    r0, r0, 0x10
    stw     r0, 0xf0(r31)
    bl      stopTrackBGM__5MSBgmFUcUl
    b       branch_0x800ef6dc

branch_0x800ee84c:
    rlwinm. r0, r6, 0, 12, 12
    bne-    branch_0x800ee8f8
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x3
    bne-    branch_0x800ee8f8
    lfs     f1, -0x5a08(rtoc)
    lfs     f0, 0x140(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800ee8f8
    lwz     r3, 0x8c(r31)
    lwz     r23, 0x14(r3)
    cmplwi  r23, 0x0
    beq-    branch_0x800ee884
    b       branch_0x800ee888

branch_0x800ee884:
    lwz     r23, 0x1c(r3)
branch_0x800ee888:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r23, r3
    beq-    branch_0x800ee8f8
    lwz     r4, 0x1b8(r31)
    cmpwi   r4, -0x1
    bne-    branch_0x800ee8bc
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x800ee8bc
    li      r0, 0x1c20
    stw     r0, 0x1b8(r31)
    b       branch_0x800ee8f8

branch_0x800ee8bc:
    cmpwi   r4, 0x0
    ble-    branch_0x800ee8f8
    lwz     r3, 0x1b8(r31)
    subi    r0, r3, 0x1
    stw     r0, 0x1b8(r31)
    lwz     r0, 0x1b8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800ee8f8
    li      r0, 0x1c20
    stw     r0, 0x1b8(r31)
    li      r4, 0x6
    li      r5, 0x1
    lwz     r3, -0x6048(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800ee8f8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xd0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x800ee920
    b       branch_0x800ee924

branch_0x800ee920:
    lwz     r29, 0x1c(r3)
branch_0x800ee924:
    li      r0, 0x2
    mtctr   r0
    li      r3, 0x0
branch_0x800ee930:
    addi    r5, r3, 0x150
    lwzx    r6, r31, r5
    addi    r5, r3, 0x154
    lwz     r4, 0x124(r6)
    lwz     r0, 0x128(r6)
    stw     r4, 0x130(r6)
    stw     r0, 0x134(r6)
    lwz     r0, 0x12c(r6)
    stw     r0, 0x138(r6)
    lwz     r4, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r4, 0x124(r6)
    stw     r0, 0x128(r6)
    lwz     r0, 0x18(r6)
    stw     r0, 0x12c(r6)
    lfs     f0, 0x13c(r6)
    stfs    f0, 0x140(r6)
    lfs     f0, 0x38(r6)
    stfs    f0, 0x13c(r6)
    lfs     f0, 0x144(r6)
    stfs    f0, 0x148(r6)
    lwzx    r6, r31, r5
    addi    r5, r3, 0x158
    lwz     r4, 0x124(r6)
    lwz     r0, 0x128(r6)
    stw     r4, 0x130(r6)
    stw     r0, 0x134(r6)
    lwz     r0, 0x12c(r6)
    stw     r0, 0x138(r6)
    lwz     r4, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r4, 0x124(r6)
    stw     r0, 0x128(r6)
    lwz     r0, 0x18(r6)
    stw     r0, 0x12c(r6)
    lfs     f0, 0x13c(r6)
    stfs    f0, 0x140(r6)
    lfs     f0, 0x38(r6)
    stfs    f0, 0x13c(r6)
    lfs     f0, 0x144(r6)
    stfs    f0, 0x148(r6)
    lwzx    r6, r31, r5
    addi    r5, r3, 0x15c
    addi    r3, r3, 0x10
    lwz     r4, 0x124(r6)
    lwz     r0, 0x128(r6)
    stw     r4, 0x130(r6)
    stw     r0, 0x134(r6)
    lwz     r0, 0x12c(r6)
    stw     r0, 0x138(r6)
    lwz     r4, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r4, 0x124(r6)
    stw     r0, 0x128(r6)
    lwz     r0, 0x18(r6)
    stw     r0, 0x12c(r6)
    lfs     f0, 0x13c(r6)
    stfs    f0, 0x140(r6)
    lfs     f0, 0x38(r6)
    stfs    f0, 0x13c(r6)
    lfs     f0, 0x144(r6)
    stfs    f0, 0x148(r6)
    lwzx    r6, r31, r5
    lwz     r4, 0x124(r6)
    lwz     r0, 0x128(r6)
    stw     r4, 0x130(r6)
    stw     r0, 0x134(r6)
    lwz     r0, 0x12c(r6)
    stw     r0, 0x138(r6)
    lwz     r4, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r4, 0x124(r6)
    stw     r0, 0x128(r6)
    lwz     r0, 0x18(r6)
    stw     r0, 0x12c(r6)
    lfs     f0, 0x13c(r6)
    stfs    f0, 0x140(r6)
    lfs     f0, 0x38(r6)
    stfs    f0, 0x13c(r6)
    lfs     f0, 0x144(r6)
    stfs    f0, 0x148(r6)
    bdnz+      branch_0x800ee930
    lwz     r3, 0x150(r31)
    lfs     f0, -0x59f0(rtoc)
    lfs     f1, 0x34(r3)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    sth     r3, 0x478(sp)
    lfs     f0, -0x59f0(rtoc)
    lfs     f1, 0x34(r31)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    addi    r4, r3, 0x0
    addi    r3, sp, 0x478
    li      r5, 0x14
    bl      CLBChaseAngleDecrease__FPsss
    lha     r0, 0x478(sp)
    lis     r27, 0x4330
    lfd     f26, -0x5998(rtoc)
    li      r25, 0x1
    xoris   r0, r0, 0x8000
    stw     r0, 0x4b4(sp)
    li      r23, 0x2c
    lfs     f27, -0x59d0(rtoc)
    li      r24, 0x4
    stw     r27, 0x4b0(sp)
    lwz     r3, 0x150(r31)
    lfd     f0, 0x4b0(sp)
    fsubs   f0, f0, f26
    fmuls   f0, f27, f0
    stfs    f0, 0x34(r3)
    lfs     f28, -0x5a08(rtoc)
    lfs     f22, -0x59c8(rtoc)
branch_0x800eeaf4:
    subi    r0, r25, 0x1
    lwz     r4, 0x178(r31)
    mulli   r3, r0, 0x2c
    lwz     r4, 0x4(r4)
    addi    r0, r3, 0xc
    add     r5, r4, r0
    addi    r0, r24, 0x150
    lwz     r3, 0x0(r5)
    lwzx    r26, r31, r0
    add     r4, r4, r23
    lwz     r0, 0x4(r5)
    addi    r4, r4, 0xc
    stw     r3, 0x248(sp)
    addi    r3, sp, 0x248
    stw     r0, 0x24c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x250(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x248(sp)
    lwz     r3, 0x24c(sp)
    stw     r0, 0x46c(sp)
    lwz     r0, 0x250(sp)
    stw     r3, 0x470(sp)
    stw     r0, 0x474(sp)
    lfs     f1, 0x474(sp)
    fcmpu   cr0, f28, f1
    bne-    branch_0x800eeb80
    lfs     f0, 0x46c(sp)
    fcmpo   cr0, f0, f28
    cror    2, 1, 2
    bne-    branch_0x800eeb78
    lfs     f1, -0x59dc(rtoc)
    b       branch_0x800eebe0

branch_0x800eeb78:
    lfs     f1, -0x59cc(rtoc)
    b       branch_0x800eebe0

branch_0x800eeb80:
    fcmpo   cr0, f1, f28
    cror    2, 1, 2
    bne-    branch_0x800eebb4
    lfs     f2, 0x46c(sp)
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x4b4(sp)
    stw     r27, 0x4b0(sp)
    lfd     f0, 0x4b0(sp)
    fsubs   f0, f0, f26
    fmuls   f1, f27, f0
    b       branch_0x800eebe0

branch_0x800eebb4:
    fneg    f1, f1
    lfs     f2, 0x46c(sp)
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x4b4(sp)
    stw     r27, 0x4b0(sp)
    lfd     f0, 0x4b0(sp)
    fsubs   f0, f0, f26
    fmuls   f0, f27, f0
    fsubs   f1, f22, f0
branch_0x800eebe0:
    lfs     f2, -0x5a08(rtoc)
    lfs     f3, -0x59c4(rtoc)
    bl      MsWrap_f___Ffff_800efe00
    addi    r25, r25, 0x1
    stfs    f1, 0x34(r26)
    cmpwi   r25, 0x8
    addi    r23, r23, 0x2c
    addi    r24, r24, 0x4
    blt+    branch_0x800eeaf4
    lwz     r4, 0x150(r31)
    li      r24, 0x0
    lwz     r3, 0x178(r31)
    li      r23, 0x0
    lfs     f0, 0x34(r4)
    stfs    f0, 0x18(r3)
branch_0x800eec1c:
    addi    r0, r23, 0x150
    lwz     r3, 0x178(r31)
    lwzx    r5, r31, r0
    mr      r4, r24
    lfs     f1, 0x38(r5)
    bl      setDegreeZAndRevisionPosXZ__11TSphereLinkFif
    addi    r24, r24, 0x1
    cmpwi   r24, 0x8
    addi    r23, r23, 0x4
    blt+    branch_0x800eec1c
    lwz     r4, 0x10(r31)
    addi    r3, sp, 0x458
    lwz     r0, 0x14(r31)
    lfs     f3, -0x59f0(rtoc)
    stw     r4, 0x460(sp)
    addi    r4, sp, 0x45c
    lwz     r8, -0x5eac(r13)
    stw     r0, 0x464(sp)
    lwz     r7, -0x5ea8(r13)
    lwz     r0, 0x18(r31)
    lwz     r6, -0x5ea4(r13)
    stw     r0, 0x468(sp)
    lfs     f0, 0x34(r31)
    lwz     r5, 0x1bc(r31)
    fmuls   f2, f3, f0
    lfs     f0, 0x460(sp)
    lfs     f1, 0x16c(r5)
    fctiwz  f2, f2
    stfd    f2, 0x4b0(sp)
    lwz     r0, 0x4b4(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r8
    slwi    r0, r0, 2
    lfsx    f2, r7, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x460(sp)
    lfs     f0, 0x34(r31)
    lwz     r5, 0x1bc(r31)
    fmuls   f2, f3, f0
    lfs     f0, 0x468(sp)
    lfs     f1, 0x16c(r5)
    fctiwz  f2, f2
    stfd    f2, 0x4a8(sp)
    lwz     r0, 0x4ac(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r8
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x468(sp)
    lwz     r5, 0x178(r31)
    lfs     f1, 0x34(r31)
    lfs     f3, 0x14(r5)
    lfs     f2, 0x38(r31)
    bl      BHSCalcRevisionDistXZByRotateZ__FfffPfPf
    lfs     f2, 0x460(sp)
    addi    r4, sp, 0x460
    lfs     f1, 0x458(sp)
    lfs     f0, 0x45c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x460(sp)
    lfs     f1, 0x468(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x468(sp)
    lwz     r3, 0x178(r31)
    bl      moveHead__11TSphereLinkFRCQ29JGeometry8TVec3_f_
    li      r22, 0x0
    li      r23, 0x0
    li      r24, 0x0
branch_0x800eed30:
    addi    r0, r24, 0x150
    lwz     r4, 0x178(r31)
    lwzx    r25, r31, r0
    addi    r3, sp, 0x458
    lfs     f3, 0x14(r4)
    addi    r4, sp, 0x45c
    lfs     f1, 0x34(r25)
    lfs     f2, 0x38(r25)
    bl      BHSCalcRevisionDistXZByRotateZ__FfffPfPf
    lwz     r3, 0x178(r31)
    addi    r0, r23, 0xc
    addi    r22, r22, 0x1
    lwz     r3, 0x4(r3)
    cmpwi   r22, 0x8
    addi    r23, r23, 0x2c
    add     r4, r3, r0
    lwz     r3, 0x0(r4)
    addi    r24, r24, 0x4
    lwz     r0, 0x4(r4)
    stw     r3, 0x10(r25)
    stw     r0, 0x14(r25)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r25)
    lfs     f1, 0x10(r25)
    lfs     f0, 0x458(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x10(r25)
    lfs     f1, 0x18(r25)
    lfs     f0, 0x45c(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(r25)
    blt+    branch_0x800eed30
    lwz     r3, 0x8c(r31)
    li      r23, 0x0
    lfs     f25, -0x5a08(rtoc)
    lwz     r24, 0x14(r3)
    cmplwi  r24, 0x0
    beq-    branch_0x800eedcc
    b       branch_0x800eedd0

branch_0x800eedcc:
    lwz     r24, 0x1c(r3)
branch_0x800eedd0:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r24, r3
    bne-    branch_0x800eedec
    li      r23, 0x1
    addi    r3, r31, 0x0
    bl      getBodyMaxRotateZ__13TBossHanachanCFv
    fmr     f25, f1
branch_0x800eedec:
    lfs     f27, -0x59d8(rtoc)
    clrlwi  r24, r23, 24
    lfs     f26, -0x59d4(rtoc)
    li      r26, 0x0
    li      r23, 0x0
branch_0x800eee00:
    addi    r0, r23, 0x150
    cmplwi  r24, 0x0
    lwzx    r25, r31, r0
    bne-    branch_0x800eee30
    lfs     f1, 0x34(r25)
    addi    r3, r25, 0x10
    addi    r4, r25, 0x124
    addi    r5, r25, 0x130
    bl      BHSCalcCentrifugalForce__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x1c0(r31)
    lfs     f0, 0x158(r3)
    fmuls   f25, f1, f0
branch_0x800eee30:
    lwz     r4, 0x1c0(r31)
    fmr     f1, f25
    addi    r3, r25, 0x144
    lfs     f2, 0x16c(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    lfs     f0, 0x144(r25)
    fcmpo   cr0, f0, f27
    ble-    branch_0x800eee58
    fmr     f0, f27
    b       branch_0x800eee64

branch_0x800eee58:
    fcmpo   cr0, f0, f26
    bge-    branch_0x800eee64
    fmr     f0, f26
branch_0x800eee64:
    addi    r26, r26, 0x1
    stfs    f0, 0x144(r25)
    cmpwi   r26, 0x8
    addi    r23, r23, 0x4
    blt+    branch_0x800eee00
    bl      theNerve__22TNerveBossHanachanDownFv
    cmplw   r29, r3
    beq-    branch_0x800ef500
    lfs     f20, -0x59c0(rtoc)
    li      r26, 0x0
    lfs     f31, -0x5a08(rtoc)
    li      r23, 0x0
    lfs     f0, -0x59f0(rtoc)
    fneg    f18, f20
    lfs     f26, -0x59e4(rtoc)
    fneg    f19, f31
    stfd    f0, 0x4a0(sp)
    lfs     f23, -0x59fc(rtoc)
    lfs     f24, -0x59b4(rtoc)
    lis     r27, 0x4330
    lfd     f29, -0x5998(rtoc)
    lfs     f28, -0x59d0(rtoc)
    lfs     f17, -0x59c8(rtoc)
    lfs     f16, -0x59b0(rtoc)
    lfs     f15, -0x59ac(rtoc)
    lfs     f14, -0x59a8(rtoc)
branch_0x800eeecc:
    addi    r0, r23, 0x150
    lwz     r3, -0x6328(r13)
    lwzx    r25, r31, r0
    lfs     f0, 0x14(r25)
    addi    r4, r25, 0xc4
    lfs     f1, 0x10(r25)
    fadds   f2, f26, f0
    lfs     f3, 0x18(r25)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    fmr     f25, f1
    mr      r3, r25
    bl      getSandActor___22TBossHanachanPartsBaseCFv
    mr.     r24, r3
    beq-    branch_0x800ef098
    lwz     r5, 0x10(r24)
    addi    r3, sp, 0x304
    lwz     r0, 0x14(r24)
    addi    r4, r31, 0x10
    stw     r5, 0x304(sp)
    stw     r0, 0x308(sp)
    lwz     r0, 0x18(r24)
    stw     r0, 0x30c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x304(sp)
    lwz     r3, 0x308(sp)
    stw     r0, 0x440(sp)
    lwz     r0, 0x30c(sp)
    stw     r3, 0x444(sp)
    lfs     f1, -0x59bc(rtoc)
    stw     r0, 0x448(sp)
    lwz     r0, 0x440(sp)
    lwz     r3, 0x444(sp)
    stw     r0, 0x40c(sp)
    lwz     r0, 0x448(sp)
    stw     r3, 0x410(sp)
    stw     r0, 0x414(sp)
    bl      CLBSquared_f___Ff
    lfs     f0, 0x414(sp)
    lfs     f2, 0x40c(sp)
    fmuls   f3, f0, f0
    fmadds  f3, f2, f2, f3
    fcmpo   cr0, f3, f1
    cror    2, 0, 2
    bne-    branch_0x800eef84
    stfs    f31, 0x120(r25)
    b       branch_0x800ef1c0

branch_0x800eef84:
    fcmpu   cr0, f31, f0
    bne-    branch_0x800eefa8
    fcmpo   cr0, f2, f31
    cror    2, 1, 2
    bne-    branch_0x800eefa0
    lfs     f1, -0x59dc(rtoc)
    b       branch_0x800ef004

branch_0x800eefa0:
    lfs     f1, -0x59cc(rtoc)
    b       branch_0x800ef004

branch_0x800eefa8:
    fcmpo   cr0, f0, f31
    cror    2, 1, 2
    bne-    branch_0x800eefdc
    fmr     f1, f0
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x4ac(sp)
    stw     r27, 0x4a8(sp)
    lfd     f0, 0x4a8(sp)
    fsubs   f0, f0, f29
    fmuls   f1, f28, f0
    b       branch_0x800ef004

branch_0x800eefdc:
    fneg    f1, f0
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x4ac(sp)
    stw     r27, 0x4a8(sp)
    lfd     f0, 0x4a8(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f28, f0
    fsubs   f1, f17, f0
branch_0x800ef004:
    lfs     f2, -0x59b8(rtoc)
    lfs     f3, -0x59c8(rtoc)
    bl      MsWrap_f___Ffff_800efe00
    fmr     f25, f1
    lfs     f1, 0x34(r31)
    lfs     f2, -0x59b8(rtoc)
    lfs     f3, -0x59c8(rtoc)
    bl      MsWrap_f___Ffff_800efe00
    fsubs   f1, f25, f1
    lfs     f2, -0x59b8(rtoc)
    lfs     f3, -0x59c8(rtoc)
    bl      MsWrap_f___Ffff_800efe00
    fmr     f30, f1
    fcmpo   cr0, f30, f31
    cror    2, 1, 2
    bne-    branch_0x800ef04c
    fmr     f0, f30
    b       branch_0x800ef050

branch_0x800ef04c:
    fneg    f0, f30
branch_0x800ef050:
    fcmpo   cr0, f0, f24
    cror    2, 0, 2
    beq-    branch_0x800ef068
    fcmpo   cr0, f0, f16
    cror    2, 1, 2
    bne-    branch_0x800ef070
branch_0x800ef068:
    stfs    f31, 0x120(r25)
    b       branch_0x800ef1c0

branch_0x800ef070:
    mr      r3, r24
    bl      SMS_GetSandRiseUpRatio__FPC10TLiveActor
    fcmpo   cr0, f30, f24
    ble-    branch_0x800ef08c
    fmuls   f0, f15, f1
    stfs    f0, 0x120(r25)
    b       branch_0x800ef1c0

branch_0x800ef08c:
    fmuls   f0, f14, f1
    stfs    f0, 0x120(r25)
    b       branch_0x800ef1c0

branch_0x800ef098:
    lfs     f1, 0x34(r25)
    lfd     f0, 0x4a0(sp)
    lfs     f30, -0x5a08(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lfs     f0, 0x14(r25)
    sraw    r0, r3, r0
    lwz     r4, -0x5ea4(r13)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    lfsx    f5, r4, r0
    fadds   f30, f30, f0
    lfsx    f3, r3, r0
    fadds   f21, f19, f0
    fmuls   f1, f31, f5
    fmuls   f2, f31, f3
    lfs     f4, 0x10(r25)
    addi    r4, sp, 0x43c
    fmadds  f3, f18, f3, f1
    fmadds  f1, f20, f5, f2
    fadds   f2, f26, f30
    lfs     f0, 0x18(r25)
    fneg    f30, f3
    fneg    f27, f1
    fadds   f1, f1, f4
    fadds   f3, f3, f0
    lwz     r3, -0x6328(r13)
    fadds   f27, f27, f4
    fadds   f30, f30, f0
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    fmr     f22, f1
    lwz     r3, -0x6328(r13)
    fmr     f1, f27
    addi    r4, sp, 0x43c
    fmr     f3, f30
    fadds   f2, f26, f21
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    fsubs   f2, f22, f25
    fsubs   f0, f1, f25
    fabs    f1, f2
    fabs    f3, f0
    fcmpo   cr0, f1, f23
    bge-    branch_0x800ef15c
    fcmpo   cr0, f3, f23
    bge-    branch_0x800ef15c
    stfs    f31, 0x120(r25)
    b       branch_0x800ef1c0

branch_0x800ef15c:
    fcmpo   cr0, f1, f3
    ble-    branch_0x800ef190
    lfs     f1, -0x59c0(rtoc)
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x4ac(sp)
    stw     r27, 0x4a8(sp)
    lfd     f0, 0x4a8(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f28, f0
    stfs    f0, 0x120(r25)
    b       branch_0x800ef1c0

branch_0x800ef190:
    lfs     f1, -0x59c0(rtoc)
    fmr     f2, f0
    bl      matan__Fff
    extsh   r0, r3
    xoris   r0, r0, 0x8000
    stw     r0, 0x4ac(sp)
    stw     r27, 0x4a8(sp)
    lfd     f0, 0x4a8(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f28, f0
    fneg    f0, f0
    stfs    f0, 0x120(r25)
branch_0x800ef1c0:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x8
    addi    r23, r23, 0x4
    blt+    branch_0x800eeecc
    bl      theNerve__23TNerveBossHanachanGetUpFv
    cmplw   r29, r3
    bne-    branch_0x800ef218
    lwz     r3, 0x170(r31)
    bl      calcRotateZWhenGetUp___22TBossHanachanPartsBaseFv
    lwz     r3, 0x170(r31)
    li      r24, 0x0
    li      r23, 0x0
    lfs     f0, 0x38(r3)
    stfs    f0, 0x38(r31)
branch_0x800ef1f8:
    addi    r0, r23, 0x150
    lwzx    r3, r31, r0
    bl      calcRotateZWhenGetUp___22TBossHanachanPartsBaseFv
    addi    r24, r24, 0x1
    cmpwi   r24, 0x8
    addi    r23, r23, 0x4
    blt+    branch_0x800ef1f8
    b       branch_0x800ef500

branch_0x800ef218:
    mr      r3, r31
    bl      getBodyMaxRotateZ__13TBossHanachanCFv
    lwz     r3, 0x8c(r31)
    fmr     f24, f1
    lwz     r26, 0x14(r3)
    cmplwi  r26, 0x0
    beq-    branch_0x800ef238
    b       branch_0x800ef23c

branch_0x800ef238:
    lwz     r26, 0x1c(r3)
branch_0x800ef23c:
    lwz     r4, 0x1c0(r31)
    li      r25, 0x0
    lwz     r3, 0x1bc(r31)
    li      r23, 0x0
    lfs     f0, 0x194(r4)
    lfs     f2, -0x59a4(rtoc)
    lfs     f1, 0x180(r3)
    fmuls   f0, f0, f2
    lfs     f3, -0x59f4(rtoc)
    fmuls   f5, f1, f1
    lfs     f1, 0x180(r4)
    lfs     f31, -0x59d8(rtoc)
    fadds   f4, f3, f0
    lfs     f30, -0x59d4(rtoc)
    fdivs   f21, f3, f5
    lfs     f25, -0x59a0(rtoc)
    lfs     f26, -0x5a08(rtoc)
    fmuls   f1, f1, f1
    fdivs   f28, f3, f4
    fmuls   f1, f2, f1
    fsubs   f22, f3, f0
    fmuls   f23, f2, f1
branch_0x800ef294:
    add     r4, r31, r23
    lwz     r24, 0x150(r4)
    li      r0, 0x1
    lfs     f0, 0x38(r24)
    fcmpu   cr0, f30, f0
    beq-    branch_0x800ef2b8
    fcmpu   cr0, f31, f0
    beq-    branch_0x800ef2b8
    li      r0, 0x0
branch_0x800ef2b8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ef2c8
    li      r0, 0x1
    b       branch_0x800ef2cc

branch_0x800ef2c8:
    li      r0, 0x0
branch_0x800ef2cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ef2dc
    fcmpu   cr0, f0, f24
    beq-    branch_0x800ef494
branch_0x800ef2dc:
    cmpwi   r25, 0x0
    bne-    branch_0x800ef2f0
    lwz     r3, 0x154(r4)
    lfs     f1, 0x13c(r3)
    b       branch_0x800ef2f8

branch_0x800ef2f0:
    lwz     r3, 0x14c(r4)
    lfs     f1, 0x13c(r3)
branch_0x800ef2f8:
    cmpwi   r25, 0x7
    bne-    branch_0x800ef30c
    lwz     r3, 0x14c(r4)
    lfs     f2, 0x13c(r3)
    b       branch_0x800ef314

branch_0x800ef30c:
    lwz     r3, 0x154(r4)
    lfs     f2, 0x13c(r3)
branch_0x800ef314:
    lfs     f0, 0x13c(r24)
    fadds   f3, f2, f1
    lfs     f2, 0x148(r24)
    fmuls   f1, f25, f0
    lfs     f4, 0x140(r24)
    fmuls   f0, f4, f22
    fsubs   f3, f3, f1
    fmadds  f2, f21, f3, f2
    fmuls   f2, f23, f2
    fmuls   f2, f28, f2
    fmadds  f1, f1, f28, f2
    fnmsubs  f1, f28, f0, f1
    fcmpo   cr0, f1, f31
    ble-    branch_0x800ef354
    fmr     f1, f31
    b       branch_0x800ef360

branch_0x800ef354:
    fcmpo   cr0, f1, f30
    bge-    branch_0x800ef360
    fmr     f1, f30
branch_0x800ef360:
    lwz     r3, 0x1c0(r31)
    addi    r22, r24, 0x38
    lfs     f2, 0x11c(r3)
    mr      r3, r22
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    li      r27, 0x0
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    cmplw   r26, r3
    bne-    branch_0x800ef3ec
    mr      r3, r24
    bl      getSandActor___22TBossHanachanPartsBaseCFv
    cmplwi  r3, 0x0
    beq-    branch_0x800ef3d4
    lfs     f1, 0x120(r24)
    li      r27, 0x1
    fcmpu   cr0, f26, f1
    beq-    branch_0x800ef408
    lfs     f0, 0x140(r31)
    fcmpo   cr0, f1, f26
    lwz     r3, 0x1c0(r31)
    fmuls   f2, f1, f0
    lfs     f1, -0x59d8(rtoc)
    lfs     f0, 0xf4(r3)
    fmuls   f2, f2, f0
    bge-    branch_0x800ef3c8
    lfs     f1, -0x59d4(rtoc)
branch_0x800ef3c8:
    addi    r3, r24, 0x38
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    b       branch_0x800ef408

branch_0x800ef3d4:
    lwz     r4, 0x1c0(r31)
    mr      r3, r22
    lfs     f1, 0x120(r24)
    lfs     f2, 0x130(r4)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    b       branch_0x800ef408

branch_0x800ef3ec:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r26, r3
    bne-    branch_0x800ef408
    lfs     f2, 0x198(r31)
    mr      r3, r22
    lfs     f1, 0x194(r31)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
branch_0x800ef408:
    lfs     f0, 0x38(r24)
    fcmpo   cr0, f0, f31
    ble-    branch_0x800ef41c
    fmr     f0, f31
    b       branch_0x800ef428

branch_0x800ef41c:
    fcmpo   cr0, f0, f30
    bge-    branch_0x800ef428
    fmr     f0, f30
branch_0x800ef428:
    stfs    f0, 0x38(r24)
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    cmplw   r26, r3
    bne-    branch_0x800ef494
    lwz     r5, 0x1c0(r31)
    lwz     r3, 0x8c(r31)
    lha     r0, 0x1d0(r5)
    lwz     r3, 0x20(r3)
    cmpw    r3, r0
    blt-    branch_0x800ef458
    clrlwi. r0, r27, 24
    bne-    branch_0x800ef494
branch_0x800ef458:
    lfs     f0, 0x108(r5)
    lfs     f2, 0x38(r24)
    fneg    f1, f0
    fcmpo   cr0, f2, f1
    bge-    branch_0x800ef47c
    addi    r3, r24, 0x38
    lfs     f2, -0x59b4(rtoc)
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
    b       branch_0x800ef494

branch_0x800ef47c:
    fcmpo   cr0, f2, f0
    ble-    branch_0x800ef494
    fmr     f1, f0
    lfs     f2, -0x59b4(rtoc)
    addi    r3, r24, 0x38
    bl      CLBChaseGeneralConstantSpecifySpeed_f___FPfff
branch_0x800ef494:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x8
    addi    r23, r23, 0x4
    blt+    branch_0x800ef294
    lwz     r4, 0x1c0(r31)
    li      r0, 0x7
    mtctr   r0
    li      r3, 0x4
    lfs     f2, 0x144(r4)
branch_0x800ef4b8:
    add     r4, r31, r3
    lwz     r5, 0x14c(r4)
    lwz     r4, 0x150(r4)
    lfs     f1, 0x38(r5)
    lfsu    f0, 0x38(r4)
    fsubs   f3, f1, f0
    fabs    f3, f3
    fcmpo   cr0, f3, f2
    ble-    branch_0x800ef4f8
    fcmpo   cr0, f0, f1
    bge-    branch_0x800ef4f0
    fsubs   f0, f1, f2
    stfs    f0, 0x0(r4)
    b       branch_0x800ef4f8

branch_0x800ef4f0:
    fadds   f0, f1, f2
    stfs    f0, 0x0(r4)
branch_0x800ef4f8:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800ef4b8
branch_0x800ef500:
    lwz     r3, 0x170(r31)
    li      r0, 0x0
    lwz     r4, 0x100(r3)
    lha     r3, 0x68(r4)
    cmpwi   r3, 0x1
    blt-    branch_0x800ef520
    subi    r3, r3, 0x1
    sth     r3, 0x68(r4)
branch_0x800ef520:
    lwz     r4, 0x170(r31)
    li      r3, 0x0
    lwz     r4, 0x100(r4)
    lhz     r5, 0x48(r4)
    cmpwi   r5, 0x0
    mtctr   r5
    ble-    branch_0x800ef56c
branch_0x800ef53c:
    lwz     r5, 0x44(r4)
    lwzx    r5, r5, r3
    lwz     r5, 0x4c(r5)
    addis   r5, r5, 0x8000
    cmplwi  r5, 0x1
    bne-    branch_0x800ef564
    mr      r3, r31
    bl      throwMario___13TBossHanachanFP9THitActor
    li      r0, 0x1
    b       branch_0x800ef56c

branch_0x800ef564:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800ef53c
branch_0x800ef56c:
    li      r25, 0x0
    li      r27, 0x0
branch_0x800ef574:
    addi    r3, r27, 0x150
    lwzx    r26, r31, r3
    lwz     r4, 0x100(r26)
    lha     r3, 0x68(r4)
    cmpwi   r3, 0x1
    blt-    branch_0x800ef594
    subi    r3, r3, 0x1
    sth     r3, 0x68(r4)
branch_0x800ef594:
    clrlwi. r3, r0, 24
    bne-    branch_0x800ef5e4
    lwz     r4, 0x100(r26)
    li      r3, 0x0
    lhz     r5, 0x48(r4)
    cmpwi   r5, 0x0
    mtctr   r5
    ble-    branch_0x800ef5e4
branch_0x800ef5b4:
    lwz     r5, 0x44(r4)
    lwzx    r5, r5, r3
    lwz     r5, 0x4c(r5)
    addis   r5, r5, 0x8000
    cmplwi  r5, 0x1
    bne-    branch_0x800ef5dc
    mr      r3, r31
    bl      throwMario___13TBossHanachanFP9THitActor
    li      r0, 0x1
    b       branch_0x800ef5e4

branch_0x800ef5dc:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800ef5b4
branch_0x800ef5e4:
    li      r24, 0x0
    li      r23, 0x0
branch_0x800ef5ec:
    addi    r3, r23, 0x118
    lwzx    r4, r26, r3
    lha     r3, 0x68(r4)
    cmpwi   r3, 0x1
    blt-    branch_0x800ef608
    subi    r3, r3, 0x1
    sth     r3, 0x68(r4)
branch_0x800ef608:
    clrlwi. r3, r0, 24
    bne-    branch_0x800ef654
    lhz     r5, 0x48(r4)
    li      r3, 0x0
    cmpwi   r5, 0x0
    mtctr   r5
    ble-    branch_0x800ef654
branch_0x800ef624:
    lwz     r5, 0x44(r4)
    lwzx    r5, r5, r3
    lwz     r5, 0x4c(r5)
    addis   r5, r5, 0x8000
    cmplwi  r5, 0x1
    bne-    branch_0x800ef64c
    mr      r3, r31
    bl      throwMario___13TBossHanachanFP9THitActor
    li      r0, 0x1
    b       branch_0x800ef654

branch_0x800ef64c:
    addi    r3, r3, 0x4
    bdnz+      branch_0x800ef624
branch_0x800ef654:
    addi    r24, r24, 0x1
    cmpwi   r24, 0x2
    addi    r23, r23, 0x4
    blt+    branch_0x800ef5ec
    addi    r25, r25, 0x1
    cmpwi   r25, 0x8
    addi    r27, r27, 0x4
    blt+    branch_0x800ef574
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x800ef6dc
    bl      theNerve__22TNerveBossHanachanDeadFv
    cmplw   r29, r3
    bne-    branch_0x800ef6dc
    lwz     r3, -0x6044(r13)
    li      r4, 0x6010
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ef6bc
    addi    r4, r31, 0x10
    li      r3, 0x6010
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800ef6bc:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 11, 11
    bne-    branch_0x800ef6dc
    lwz     r3, -0x6044(r13)
    li      r4, 0x1
    li      r5, 0x1
    lwz     r3, 0x9c(r3)
    bl      modBgm__8MSModBgmFUcUc
branch_0x800ef6dc:
    lwz     r3, 0x170(r31)
    bl      moveMapCollision___22TBossHanachanPartsBaseFv
    li      r22, 0x0
    li      r24, 0x0
branch_0x800ef6ec:
    addi    r0, r24, 0x150
    lwzx    r3, r31, r0
    bl      moveMapCollision___22TBossHanachanPartsBaseFv
    addi    r22, r22, 0x1
    cmpwi   r22, 0x8
    addi    r24, r24, 0x4
    blt+    branch_0x800ef6ec
branch_0x800ef708:
    rlwinm. r26, r28, 0, 30, 30
    beq-    branch_0x800efb20
    lwz     r3, -0x5fa0(r13)
    li      r4, 0x0
    li      r5, 0x1
    stb     r4, 0x14(r3)
    mr      r3, r5
    lwz     r6, -0x6048(r13)
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x800ef740
    cmplwi  r0, 0x2
    beq-    branch_0x800ef740
    mr      r3, r4
branch_0x800ef740:
    clrlwi. r0, r3, 24
    bne-    branch_0x800ef758
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x4
    beq-    branch_0x800ef758
    li      r5, 0x0
branch_0x800ef758:
    clrlwi. r0, r5, 24
    bne-    branch_0x800efa68
    lwz     r3, 0x8c(r31)
    li      r24, 0x0
    lwz     r22, 0x14(r3)
    cmplwi  r22, 0x0
    beq-    branch_0x800ef778
    b       branch_0x800ef77c

branch_0x800ef778:
    lwz     r22, 0x1c(r3)
branch_0x800ef77c:
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    cmplw   r22, r3
    bne-    branch_0x800ef79c
    lfs     f1, 0x140(r31)
    lfs     f0, -0x59fc(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ef79c
    li      r24, 0x1
branch_0x800ef79c:
    lwz     r3, 0x170(r31)
    clrlwi. r0, r24, 24
    lwz     r3, 0x108(r3)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x3cc(sp)
    stfs    f1, 0x3d0(sp)
    stfs    f2, 0x3d4(sp)
    lwz     r4, 0x1bc(r31)
    lwz     r3, 0x170(r31)
    lfs     f1, 0x3d0(sp)
    lfs     f0, 0x40(r4)
    lwz     r3, 0x100(r3)
    fsubs   f1, f1, f0
    lfs     f2, 0x3d4(sp)
    lfs     f0, 0x3cc(sp)
    stfsu   f0, 0x10(r3)
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    beq-    branch_0x800ef840
    lwz     r3, 0x170(r31)
    lwz     r3, 0x100(r3)
    lwzu    r0, 0x64(r3)
    clrrwi. r0, r0, 31
    beq-    branch_0x800ef80c
    li      r0, 0x1
    b       branch_0x800ef810

branch_0x800ef80c:
    li      r0, 0x0
branch_0x800ef810:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ef890
    lwz     r0, 0x0(r3)
    oris    r0, r0, 0x8000
    stw     r0, 0x0(r3)
    lwz     r3, 0x170(r31)
    lwz     r3, 0x104(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x800ef890

branch_0x800ef840:
    lwz     r3, 0x170(r31)
    lwz     r3, 0x100(r3)
    lwzu    r0, 0x64(r3)
    clrrwi. r0, r0, 31
    beq-    branch_0x800ef85c
    li      r0, 0x1
    b       branch_0x800ef860

branch_0x800ef85c:
    li      r0, 0x0
branch_0x800ef860:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ef890
    lwz     r0, 0x0(r3)
    addi    r4, sp, 0x3cc
    clrlwi  r0, r0, 1
    stw     r0, 0x0(r3)
    lwz     r3, 0x170(r31)
    lwz     r3, 0x104(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x800ef890:
    lwz     r4, 0x1bc(r31)
    clrlwi  r23, r24, 24
    li      r25, 0x0
    lfs     f30, 0x108(r4)
    li      r27, 0x0
    lfs     f23, 0xa4(r4)
branch_0x800ef8a8:
    addi    r0, r27, 0x150
    lwzx    r24, r31, r0
    cmplwi  r23, 0x0
    lwz     r3, 0x108(r24)
    lwz     r5, 0x100(r24)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x154(r24)
    stfs    f1, 0x158(r24)
    stfs    f2, 0x15c(r24)
    lfs     f1, 0x158(r24)
    lfs     f2, 0x15c(r24)
    lfs     f0, 0x154(r24)
    fsubs   f1, f1, f23
    stfs    f0, 0x10(r5)
    stfs    f1, 0x14(r5)
    stfs    f2, 0x18(r5)
    beq-    branch_0x800ef938
    lwz     r0, 0x64(r5)
    clrrwi. r0, r0, 31
    beq-    branch_0x800ef908
    li      r0, 0x1
    b       branch_0x800ef90c

branch_0x800ef908:
    li      r0, 0x0
branch_0x800ef90c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ef97c
    lwz     r0, 0x64(r5)
    oris    r0, r0, 0x8000
    stw     r0, 0x64(r5)
    lwz     r3, 0x104(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x800ef97c

branch_0x800ef938:
    lwz     r0, 0x64(r5)
    clrrwi. r0, r0, 31
    beq-    branch_0x800ef94c
    li      r0, 0x1
    b       branch_0x800ef950

branch_0x800ef94c:
    li      r0, 0x0
branch_0x800ef950:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ef97c
    lwz     r0, 0x64(r5)
    addi    r4, r24, 0x154
    clrlwi  r0, r0, 1
    stw     r0, 0x64(r5)
    lwz     r3, 0x104(r24)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x800ef97c:
    cmplwi  r23, 0x0
    beq-    branch_0x800ef9e8
    lwz     r3, 0x118(r24)
    lwz     r5, 0x6c(r3)
    lfs     f1, 0x1c(r5)
    lfs     f2, 0x2c(r5)
    lfs     f0, 0xc(r5)
    fsubs   f1, f1, f30
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    lwz     r0, 0x64(r3)
    oris    r0, r0, 0x8000
    stw     r0, 0x64(r3)
    lwz     r3, 0x11c(r24)
    lwz     r5, 0x6c(r3)
    lfs     f1, 0x1c(r5)
    lfs     f2, 0x2c(r5)
    lfs     f0, 0xc(r5)
    fsubs   f1, f1, f30
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    lwz     r0, 0x64(r3)
    oris    r0, r0, 0x8000
    stw     r0, 0x64(r3)
    b       branch_0x800efa48

branch_0x800ef9e8:
    lwz     r3, 0x118(r24)
    lwz     r5, 0x6c(r3)
    lfs     f1, 0x1c(r5)
    lfs     f2, 0x2c(r5)
    lfs     f0, 0xc(r5)
    fsubs   f1, f1, f30
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    lwz     r0, 0x64(r3)
    clrlwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r3, 0x11c(r24)
    lwz     r5, 0x6c(r3)
    lfs     f1, 0x1c(r5)
    lfs     f2, 0x2c(r5)
    lfs     f0, 0xc(r5)
    fsubs   f1, f1, f30
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f2, 0x18(r3)
    lwz     r0, 0x64(r3)
    clrlwi  r0, r0, 1
    stw     r0, 0x64(r3)
branch_0x800efa48:
    addi    r25, r25, 0x1
    cmpwi   r25, 0x8
    addi    r27, r27, 0x4
    blt+    branch_0x800ef8a8
    mr      r3, r31
    bl      emitParticle___13TBossHanachanFv
    mr      r3, r31
    bl      emitCamShake___13TBossHanachanFv
branch_0x800efa68:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800efa98
    lwz     r3, 0x19c(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x800efa98
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
branch_0x800efa98:
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x800efabc
    cmplwi  r0, 0x2
    beq-    branch_0x800efabc
    li      r4, 0x0
branch_0x800efabc:
    clrlwi. r0, r4, 24
    bne-    branch_0x800efad4
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x4
    beq-    branch_0x800efad4
    li      r3, 0x0
branch_0x800efad4:
    clrlwi. r0, r3, 24
    bne-    branch_0x800efae4
    mr      r3, r31
    bl      changeAnmRateAndFrameUpdate___13TBossHanachanFv
branch_0x800efae4:
    lwz     r3, 0x170(r31)
    lwz     r4, 0x74(r3)
    lwz     r3, 0x110(r3)
    bl      execMotionBlend__13TNpcInbetweenFP6MActor
    li      r22, 0x0
    li      r24, 0x0
branch_0x800efafc:
    addi    r0, r24, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x74(r3)
    lwz     r3, 0x110(r3)
    bl      execMotionBlend__13TNpcInbetweenFP6MActor
    addi    r22, r22, 0x1
    cmpwi   r22, 0x8
    addi    r24, r24, 0x4
    blt+    branch_0x800efafc
branch_0x800efb20:
    cmplwi  r26, 0x0
    beq-    branch_0x800efccc
    lwz     r5, 0x10(r31)
    addi    r3, r31, 0x30
    lwz     r0, 0x14(r31)
    addi    r4, sp, 0x3b0
    stw     r5, 0x3b0(sp)
    stw     r0, 0x3b4(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x3b8(sp)
    lwz     r5, 0x1bc(r31)
    lfs     f1, 0x1bc(r5)
    bl      CalcRevisionPosByRotateZ__FRCQ29JGeometry8TVec3_f_fP3Vec
    lwz     r3, 0x170(r31)
    addi    r4, r31, 0x30
    addi    r5, sp, 0x3b0
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    bl      CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec
    lwz     r3, 0x170(r31)
    lwz     r3, 0x74(r3)
    bl      calc__6MActorFv
    li      r25, 0x0
    li      r24, 0x0
branch_0x800efb84:
    addi    r0, r24, 0x150
    lwzx    r23, r31, r0
    addi    r4, sp, 0x3a4
    lwz     r5, 0x10(r23)
    addi    r3, r23, 0x30
    lwz     r0, 0x14(r23)
    stw     r5, 0x3a4(sp)
    stw     r0, 0x3a8(sp)
    lwz     r0, 0x18(r23)
    stw     r0, 0x3ac(sp)
    lwz     r5, 0x1bc(r31)
    lfs     f1, 0x1d0(r5)
    bl      CalcRevisionPosByRotateZ__FRCQ29JGeometry8TVec3_f_fP3Vec
    addi    r3, sp, 0x374
    addi    r4, r23, 0x30
    addi    r5, sp, 0x3a4
    bl      CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec
    lwz     r4, 0x74(r23)
    addi    r3, sp, 0x374
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r23)
    bl      calc__6MActorFv
    addi    r25, r25, 0x1
    cmpwi   r25, 0x8
    addi    r24, r24, 0x4
    blt+    branch_0x800efb84
    lwz     r5, -0x6048(r13)
    li      r3, 0x1
    addi    r4, r3, 0x0
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x800efc18
    cmplwi  r0, 0x2
    beq-    branch_0x800efc18
    li      r4, 0x0
branch_0x800efc18:
    clrlwi. r0, r4, 24
    bne-    branch_0x800efc30
    lbz     r0, 0x124(r5)
    cmplwi  r0, 0x4
    beq-    branch_0x800efc30
    li      r3, 0x0
branch_0x800efc30:
    clrlwi. r0, r3, 24
    bne-    branch_0x800efccc
    lwz     r3, 0x8c(r31)
    lwz     r23, 0x14(r3)
    cmplwi  r23, 0x0
    beq-    branch_0x800efc4c
    b       branch_0x800efc50

branch_0x800efc4c:
    lwz     r23, 0x1c(r3)
branch_0x800efc50:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    cmplw   r23, r3
    beq-    branch_0x800efc80
    lwz     r3, 0x8c(r31)
    lwz     r23, 0x14(r3)
    cmplwi  r23, 0x0
    beq-    branch_0x800efc70
    b       branch_0x800efc74

branch_0x800efc70:
    lwz     r23, 0x1c(r3)
branch_0x800efc74:
    bl      theNerve__22TNerveBossHanachanDownFv
    cmplw   r23, r3
    bne-    branch_0x800efccc
branch_0x800efc80:
    lwz     r0, 0x174(r31)
    addi    r4, sp, 0x490
    lfs     f2, -0x599c(rtoc)
    slwi    r0, r0, 2
    lwz     r3, -0x5fa0(r13)
    add     r5, r31, r0
    lwz     r5, 0x150(r5)
    lwz     r5, 0x108(r5)
    lfs     f1, 0x1c(r5)
    lfs     f3, 0x2c(r5)
    lfs     f0, 0xc(r5)
    fadds   f1, f2, f1
    stfs    f0, 0x490(sp)
    stfs    f1, 0x494(sp)
    stfs    f3, 0x498(sp)
    bl      setPos__12TTargetArrowFRCQ29JGeometry8TVec3_f_
    lwz     r3, -0x5fa0(r13)
    li      r0, 0x1
    stb     r0, 0x14(r3)
branch_0x800efccc:
    rlwinm. r0, r28, 0, 22, 22
    beq-    branch_0x800efd4c
    lwz     r3, 0x170(r31)
    bl      entryCircleShadow___22TBossHanachanPartsBaseFv
    lwz     r3, 0x170(r31)
    mr      r4, r30
    bl      setDamageFog___22TBossHanachanPartsBaseFPQ26JDrama9TGraphics
    lwz     r3, 0x170(r31)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0xd8(r12)
    mtlr    r12
    blrl
    li      r22, 0x0
    li      r24, 0x0
branch_0x800efd08:
    addi    r0, r24, 0x150
    lwzx    r23, r31, r0
    mr      r3, r23
    bl      entryCircleShadow___22TBossHanachanPartsBaseFv
    addi    r3, r23, 0x0
    addi    r4, r30, 0x0
    bl      setDamageFog___22TBossHanachanPartsBaseFPQ26JDrama9TGraphics
    mr      r3, r23
    lwz     r12, 0x0(r23)
    mr      r4, r30
    lwz     r12, 0xd8(r12)
    mtlr    r12
    blrl
    addi    r22, r22, 0x1
    cmpwi   r22, 0x8
    addi    r24, r24, 0x4
    blt+    branch_0x800efd08
branch_0x800efd4c:
    rlwinm. r0, r28, 0, 29, 29
    beq-    branch_0x800efd88
    lwz     r3, 0x170(r31)
    lwz     r3, 0x74(r3)
    bl      viewCalc__6MActorFv
    li      r22, 0x0
    li      r24, 0x0
branch_0x800efd68:
    addi    r0, r24, 0x150
    lwzx    r3, r31, r0
    lwz     r3, 0x74(r3)
    bl      viewCalc__6MActorFv
    addi    r22, r22, 0x1
    cmpwi   r22, 0x8
    addi    r24, r24, 0x4
    blt+    branch_0x800efd68
branch_0x800efd88:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x800efda4
    lwz     r3, 0x19c(r31)
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x800efda4:
    lmw     r22, 0x4b8(sp)
    lwz     r0, 0x574(sp)
    lfd     f31, 0x568(sp)
    lfd     f30, 0x560(sp)
    mtlr    r0
    lfd     f29, 0x558(sp)
    lfd     f28, 0x550(sp)
    lfd     f27, 0x548(sp)
    lfd     f26, 0x540(sp)
    lfd     f25, 0x538(sp)
    lfd     f24, 0x530(sp)
    lfd     f23, 0x528(sp)
    lfd     f22, 0x520(sp)
    lfd     f21, 0x518(sp)
    lfd     f20, 0x510(sp)
    lfd     f19, 0x508(sp)
    lfd     f18, 0x500(sp)
    lfd     f17, 0x4f8(sp)
    lfd     f16, 0x4f0(sp)
    lfd     f15, 0x4e8(sp)
    lfd     f14, 0x4e0(sp)
    addi    sp, sp, 0x570
    blr


.globl MsWrap_f___Ffff_800efe00
MsWrap_f___Ffff_800efe00: # 0x800efe00
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800efe3c
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0xea814, 0x800efe18 - 0x800efe14
branch_0x800efe18:
    fsubs   f1, f1, f0
branch_0x800efe1c:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800efe18
    b       branch_0x800efe30

branch_0x800efe2c:
    fadds   f1, f1, f0
branch_0x800efe30:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800efe2c
    blr

branch_0x800efe3c:
    fsubs   f0, f3, f2
    b       branch_0x800efe1c


.incbin "./baserom/code/Text_0x80005600.bin", 0xea844, 0x800efe48 - 0x800efe44

.globl moveObject__13TBossHanachanFv
moveObject__13TBossHanachanFv: # 0x800efe48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      updateSquareToMario__11TSpineEnemyFv
    lfs     f0, 0x94(r30)
    mr      r3, r30
    stfs    f0, 0x188(r30)
    lfs     f0, 0x98(r30)
    stfs    f0, 0x18c(r30)
    lfs     f0, 0x9c(r30)
    stfs    f0, 0x190(r30)
    bl      moveObject__10TLiveActorFv
    lwz     r3, 0x8c(r30)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x800efe98
    b       branch_0x800efe9c

branch_0x800efe98:
    lwz     r31, 0x1c(r3)
branch_0x800efe9c:
    bl      theNerve__23TNerveBossHanachanGetUpFv
    cmplw   r31, r3
    beq-    branch_0x800efec0
    lwz     r4, 0x150(r30)
    addi    r3, r30, 0x38
    lfs     f2, -0x5990(rtoc)
    lfs     f1, 0x38(r4)
    lfs     f3, -0x5a08(rtoc)
    bl      CLBChaseDecrease__FPffff
branch_0x800efec0:
    lwz     r4, 0x170(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x10(r4)
    stw     r0, 0x14(r4)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r4)
    lwz     r4, 0x170(r30)
    lwz     r3, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r3, 0x30(r4)
    stw     r0, 0x34(r4)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r4)
    lwz     r0, 0xc4(r30)
    lwz     r3, 0x170(r30)
    stw     r0, 0xc4(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl bind__13TBossHanachanFv
bind__13TBossHanachanFv: # 0x800eff1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x800f0214
    lwz     r3, 0x88(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800eff60
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x800f0214

branch_0x800eff60:
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    stw     r4, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xa8(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
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
    bge-    branch_0x800f000c
    stfs    f1, 0xb0(r31)
branch_0x800f000c:
    lfs     f0, 0xa0(sp)
    addi    r3, sp, 0x9c
    addi    r4, sp, 0x98
    stfs    f0, 0x17c(r31)
    lfs     f0, 0xa4(sp)
    stfs    f0, 0x180(r31)
    lfs     f0, 0xa8(sp)
    stfs    f0, 0x184(r31)
    lwz     r5, 0x178(r31)
    lfs     f1, 0x34(r31)
    lfs     f3, 0x14(r5)
    lfs     f2, 0x38(r31)
    bl      BHSCalcRevisionDistXZByRotateZ__FfffPfPf
    lfs     f1, 0x17c(r31)
    addi    r4, r31, 0xc4
    lfs     f0, 0x9c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x17c(r31)
    lfs     f1, 0x184(r31)
    lfs     f0, 0x98(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x184(r31)
    lwz     r5, 0x17c(r31)
    lwz     r0, 0x180(r31)
    lwz     r3, -0x6328(r13)
    stw     r5, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x184(r31)
    stw     r0, 0x94(sp)
    lfs     f2, 0x180(r31)
    lfs     f0, 0xc0(r31)
    lfs     f1, 0x17c(r31)
    fadds   f2, f2, f0
    lfs     f3, 0x184(r31)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x59f4(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f1, -0x598c(rtoc)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x180(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x800f0134
    lwz     r3, 0xc4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800f0140
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800f00e8
    li      r0, 0x1
    b       branch_0x800f00ec

branch_0x800f00e8:
    li      r0, 0x0
branch_0x800f00ec:
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800f0100
    li      r0, 0x0
    b       branch_0x800f0104

branch_0x800f0100:
    li      r0, 0x1
branch_0x800f0104:
    clrlwi. r0, r0, 24
    beq-    branch_0x800f0140
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x5a08(rtoc)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x180(r31)
    b       branch_0x800f0140

branch_0x800f0134:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800f0140:
    lfs     f1, 0x180(r31)
    addi    r4, r31, 0x17c
    lfs     f0, 0xc0(r31)
    addi    r5, r31, 0x184
    lwz     r3, -0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, 0xbc(r31)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r5, 0x17c(r31)
    addi    r3, sp, 0x48
    lwz     r0, 0x180(r31)
    addi    r4, sp, 0x8c
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x184(r31)
    stw     r0, 0x50(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0x48(sp)
    addi    r3, sp, 0x2c
    lwz     r0, 0xa0(sp)
    addi    r4, r31, 0x10
    stw     r5, 0x80(sp)
    lwz     r5, 0x4c(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0xa4(sp)
    stw     r5, 0x84(sp)
    lwz     r5, 0x50(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0xa8(sp)
    stw     r5, 0x88(sp)
    stw     r0, 0x34(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x3c
    lwz     r5, 0x30(sp)
    addi    r4, sp, 0x80
    stw     r0, 0x5c(sp)
    lwz     r0, 0x34(sp)
    stw     r5, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x5c(sp)
    lwz     r5, 0x60(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x64(sp)
    stw     r5, 0x40(sp)
    stw     r0, 0x44(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x3c(sp)
    lwz     r0, 0x40(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0x9c(r31)
branch_0x800f0214:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl kill__13TBossHanachanFv
kill__13TBossHanachanFv: # 0x800f0228
    blr


.globl CalcRevisionPosByRotateZ__FRCQ29JGeometry8TVec3_f_fP3Vec
CalcRevisionPosByRotateZ__FRCQ29JGeometry8TVec3_f_fP3Vec: # 0x800f022c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    lfs     f2, 0x8(r3)
    lfs     f0, 0x4(r4)
    fabs    f2, f2
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x4(r4)
    lfs     f0, -0x59dc(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800f02e4
    lfs     f1, 0x8(r3)
    fsubs   f2, f2, f0
    lfs     f0, -0x5a08(rtoc)
    lfs     f3, -0x5988(rtoc)
    fcmpo   cr0, f1, f0
    fmuls   f31, f3, f2
    ble-    branch_0x800f0284
    fneg    f31, f31
branch_0x800f0284:
    lfs     f1, 0x4(r3)
    lfs     f0, -0x59f0(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r3, -0x5ea8(r13)
    fneg    f1, f31
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, -0x5ea4(r13)
    lfs     f0, -0x5a08(rtoc)
    lfsx    f5, r3, r0
    lfsx    f4, r4, r0
    fmuls   f3, f0, f5
    lfs     f2, 0x0(r31)
    fmuls   f0, f0, f4
    fmadds  f3, f31, f4, f3
    fmadds  f0, f1, f5, f0
    fadds   f1, f2, f3
    stfs    f1, 0x0(r31)
    lfs     f1, 0x8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r31)
branch_0x800f02e4:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl throwMario___13TBossHanachanFP9THitActor
throwMario___13TBossHanachanFP9THitActor: # 0x800f02fc
    mflr    r0
    addi    r4, r4, 0x10
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    addi    r3, sp, 0x68
    stw     r30, 0xc0(sp)
    lwz     r6, -0x60b4(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x70(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x68(sp)
    lwz     r3, 0x6c(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0xac(sp)
    lfs     f0, -0x59e8(rtoc)
    stw     r0, 0xb0(sp)
    lfs     f2, 0xa8(sp)
    lfs     f1, 0xac(sp)
    fmuls   f2, f2, f2
    lfs     f3, 0xb0(sp)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800f03b0
    lfs     f1, -0x5a08(rtoc)
    lfs     f0, -0x59f4(rtoc)
    stfs    f1, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f1, 0xb0(sp)
    lwz     r3, 0x1c0(r31)
    lfs     f1, 0x140(r31)
    lfs     f0, 0x25c(r3)
    fmuls   f2, f1, f0
    b       branch_0x800f0604

branch_0x800f03b0:
    lfs     f2, -0x5a08(rtoc)
    lfs     f1, 0x190(r31)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800f03e0
    lfs     f0, 0x188(r31)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800f03d8
    lfs     f1, -0x59dc(rtoc)
    b       branch_0x800f045c

branch_0x800f03d8:
    lfs     f1, -0x59cc(rtoc)
    b       branch_0x800f045c

branch_0x800f03e0:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800f0420
    lfs     f2, 0x188(r31)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5998(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x59d0(rtoc)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    stw     r0, 0xb8(sp)
    lfd     f1, 0xb8(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800f045c

branch_0x800f0420:
    fneg    f1, f1
    lfs     f2, 0x188(r31)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5998(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x59d0(rtoc)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x59c8(rtoc)
    stw     r0, 0xb8(sp)
    lfd     f2, 0xb8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800f045c:
    lfs     f0, -0x59f0(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f2, -0x5a08(rtoc)
    mr      r30, r3
    lfs     f1, 0xb0(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800f049c
    lfs     f0, 0xa8(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800f0494
    lfs     f1, -0x59dc(rtoc)
    b       branch_0x800f0518

branch_0x800f0494:
    lfs     f1, -0x59cc(rtoc)
    b       branch_0x800f0518

branch_0x800f049c:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800f04dc
    lfs     f2, 0xa8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5998(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x59d0(rtoc)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    stw     r0, 0xb8(sp)
    lfd     f1, 0xb8(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800f0518

branch_0x800f04dc:
    fneg    f1, f1
    lfs     f2, 0xa8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5998(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x59d0(rtoc)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    lfs     f0, -0x59c8(rtoc)
    stw     r0, 0xb8(sp)
    lfd     f2, 0xb8(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800f0518:
    lfs     f0, -0x59f0(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    extsh   r3, r3
    extsh   r0, r30
    subf    r0, r3, r0
    extsh   r3, r0
    extsh.  r0, r3
    blt-    branch_0x800f0540
    b       branch_0x800f0544

branch_0x800f0540:
    neg     r3, r3
branch_0x800f0544:
    xoris   r0, r3, 0x8000
    lwz     r4, 0x1c0(r31)
    stw     r0, 0xbc(sp)
    lis     r0, 0x4330
    lfs     f1, 0x140(r31)
    stw     r0, 0xb8(sp)
    lfs     f0, 0x25c(r4)
    lwz     r3, 0x188(r31)
    fmuls   f2, f1, f0
    lwz     r0, 0x18c(r31)
    lfd     f3, -0x5998(rtoc)
    lfd     f0, 0xb8(sp)
    stw     r3, 0x98(sp)
    fsubs   f0, f0, f3
    lfs     f1, -0x5984(rtoc)
    stw     r0, 0x9c(sp)
    lfs     f3, -0x59f4(rtoc)
    fmuls   f0, f1, f0
    lwz     r0, 0x190(r31)
    stw     r0, 0xa0(sp)
    fsubs   f3, f3, f0
    lfs     f1, 0x298(r4)
    lfs     f0, 0x98(sp)
    fmuls   f2, f3, f2
    fmuls   f1, f3, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x98(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x9c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0xa0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lwz     r3, 0x1c0(r31)
    lfs     f0, 0x2ac(r3)
    stfs    f0, 0xac(sp)
branch_0x800f0604:
    lwz     r4, 0x1c0(r31)
    fmr     f31, f2
    lfs     f1, 0x284(r4)
    lfs     f0, 0x270(r4)
    fcmpo   cr0, f2, f1
    ble-    branch_0x800f0624
    fmr     f31, f1
    b       branch_0x800f0630

branch_0x800f0624:
    fcmpo   cr0, f2, f0
    bge-    branch_0x800f0630
    fmr     f31, f0
branch_0x800f0630:
    lwz     r3, 0x170(r31)
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r3, 0x170(r31)
    li      r4, 0x7
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0xa8
    fmr     f1, f31
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x170(r31)
    lwz     r3, 0x100(r3)
    bl      onWaterHitCounter__14TWaterHitActorFv
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    mtlr    r0
    lwz     r30, 0xc0(sp)
    addi    sp, sp, 0xd0
    blr


.globl init__13TBossHanachanFP12TLiveManager
init__13TBossHanachanFP12TLiveManager: # 0x800f067c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x188(sp)
    stmw    r27, 0x174(sp)
    addi    r27, r4, 0x0
    addi    r30, r3, 0x0
    addi    r4, r30, 0x0
    addi    r31, r5, 0x1be8
    stw     r27, 0x70(r3)
    addi    r3, r27, 0x0
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800f06cc
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    li      r5, 0xa
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800f06cc:
    stw     r28, 0x78(r30)
    li      r5, 0x0
    lwz     r3, 0x78(r30)
    lwz     r4, -0x7d90(r13)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x19c(r30)
    li      r0, 0x3
    lwz     r3, 0x54(r27)
    stw     r3, 0x1bc(r30)
    lwz     r3, 0x58(r27)
    stw     r3, 0x1c0(r30)
    lfs     f0, -0x59f4(rtoc)
    stfs    f0, 0x148(r30)
    lfs     f0, -0x5980(rtoc)
    stfs    f0, 0xbc(r30)
    lfs     f0, 0xbc(r30)
    stfs    f0, 0x14c(r30)
    lfs     f0, -0x59e4(rtoc)
    stfs    f0, 0xc0(r30)
    lfs     f1, -0x5a08(rtoc)
    stfs    f1, 0x140(r30)
    lfs     f0, -0x59a0(rtoc)
    stfs    f0, 0xcc(r30)
    stb     r0, 0x13c(r30)
    stfs    f1, 0xb8(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x1008
    stw     r0, 0xf0(r30)
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    lwz     r4, 0x8c(r30)
    li      r29, 0x0
    li      r0, -0x1
    stw     r29, 0x8(r4)
    stw     r29, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    mr      r3, r30
    stw     r29, 0x1c(r4)
    lwz     r4, 0x124(r30)
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    lfs     f1, -0x5a08(rtoc)
    lis     r4, 0x800
    addi    r3, r30, 0x0
    fmr     f2, f1
    addi    r4, r4, 0x14
    fmr     f3, f1
    li      r5, 0x0
    fmr     f4, f1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r30)
    li      r27, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
branch_0x800f07a8:
    li      r3, 0x160
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800f07c8
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x1cc
    bl      __ct__22TBossHanachanPartsBodyFP13TBossHanachanPCc
branch_0x800f07c8:
    addi    r3, r29, 0x150
    add     r3, r30, r3
    stw     r28, 0x0(r3)
    addi    r29, r29, 0x4
    lwz     r3, 0x0(r3)
    stw     r27, 0x114(r3)
    addi    r27, r27, 0x1
    cmpwi   r27, 0x8
    blt+    branch_0x800f07a8
    li      r3, 0x11c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800f080c
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x1e0
    bl      __ct__22TBossHanachanPartsHeadFP13TBossHanachanPCc
branch_0x800f080c:
    stw     r27, 0x170(r30)
    li      r3, 0x1c
    lwz     r4, 0x170(r30)
    lwz     r0, 0x74(r4)
    stw     r0, 0x74(r30)
    lwz     r4, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r4, 0x17c(r30)
    stw     r0, 0x180(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x184(r30)
    lwz     r0, 0x17c(r30)
    lwz     r4, 0x180(r30)
    lfs     f1, -0x59f0(rtoc)
    stw     r0, 0x15c(sp)
    lwz     r0, -0x5eac(r13)
    stw     r4, 0x160(sp)
    lwz     r6, -0x5ea8(r13)
    lwz     r5, 0x184(r30)
    lwz     r4, -0x5ea4(r13)
    stw     r5, 0x164(sp)
    lfs     f0, 0x34(r30)
    lwz     r5, 0x1bc(r30)
    fmuls   f2, f1, f0
    lfs     f0, 0x15c(sp)
    addi    r7, r5, 0x16c
    lfs     f1, 0x16c(r5)
    fctiwz  f2, f2
    stfd    f2, 0x168(sp)
    lwz     r5, 0x16c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x15c(sp)
    lfsx    f2, r4, r0
    lfs     f1, 0x0(r7)
    lfs     f0, 0x164(sp)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x164(sp)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800f0908
    lwz     r4, 0x1bc(r30)
    addi    r5, sp, 0x150
    lfs     f1, 0x15c(sp)
    mr      r3, r27
    lfs     f0, 0x160(sp)
    stfs    f1, 0x150(sp)
    addi    r6, r4, 0xb8
    addi    r7, r4, 0x180
    lfs     f3, -0x597c(rtoc)
    stfs    f0, 0x154(sp)
    lfs     f4, -0x5978(rtoc)
    li      r4, 0x8
    lfs     f0, 0x164(sp)
    lfs     f5, -0x5974(rtoc)
    stfs    f0, 0x158(sp)
    lfs     f1, 0x0(r7)
    lfs     f2, 0x0(r6)
    lfs     f6, 0x34(r30)
    bl      __ct__11TSphereLinkFUsRCQ29JGeometry8TVec3_f_ffffff
branch_0x800f0908:
    stw     r27, 0x178(r30)
    li      r0, 0x4
    mtctr   r0
    li      r3, 0x0
    lwz     r6, 0x170(r30)
    lwz     r5, 0x10(r30)
    li      r4, 0x0
    lwz     r0, 0x14(r30)
    stw     r5, 0x10(r6)
    stw     r0, 0x14(r6)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r6)
    lwz     r6, 0x170(r30)
    lwz     r5, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r5, 0x30(r6)
    stw     r0, 0x34(r6)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r6)
    lwz     r0, 0xc4(r30)
    lwz     r5, 0x170(r30)
    stw     r0, 0xc4(r5)
branch_0x800f0960:
    lwz     r5, 0x178(r30)
    addi    r8, r4, 0x150
    lwzx    r9, r30, r8
    addi    r8, r4, 0x154
    lwz     r0, 0x4(r5)
    addi    r7, r3, 0xc
    add     r6, r0, r7
    lwz     r5, 0x0(r6)
    addi    r7, r3, 0x38
    lwz     r0, 0x4(r6)
    addi    r3, r3, 0x58
    addi    r4, r4, 0x8
    stw     r5, 0x10(r9)
    stw     r0, 0x14(r9)
    lwz     r0, 0x8(r6)
    stw     r0, 0x18(r9)
    lwz     r5, 0x10(r9)
    lwz     r0, 0x14(r9)
    stw     r5, 0x124(r9)
    stw     r0, 0x128(r9)
    lwz     r0, 0x18(r9)
    stw     r0, 0x12c(r9)
    lwz     r5, 0x124(r9)
    lwz     r0, 0x128(r9)
    stw     r5, 0x130(r9)
    stw     r0, 0x134(r9)
    lwz     r0, 0x12c(r9)
    stw     r0, 0x138(r9)
    lwz     r5, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r5, 0x30(r9)
    stw     r0, 0x34(r9)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r9)
    lwz     r5, 0x178(r30)
    lwzx    r9, r30, r8
    lwz     r0, 0x4(r5)
    add     r6, r0, r7
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x10(r9)
    stw     r0, 0x14(r9)
    lwz     r0, 0x8(r6)
    stw     r0, 0x18(r9)
    lwz     r5, 0x10(r9)
    lwz     r0, 0x14(r9)
    stw     r5, 0x124(r9)
    stw     r0, 0x128(r9)
    lwz     r0, 0x18(r9)
    stw     r0, 0x12c(r9)
    lwz     r5, 0x124(r9)
    lwz     r0, 0x128(r9)
    stw     r5, 0x130(r9)
    stw     r0, 0x134(r9)
    lwz     r0, 0x12c(r9)
    stw     r0, 0x138(r9)
    lwz     r5, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r5, 0x30(r9)
    stw     r0, 0x34(r9)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r9)
    bdnz+      branch_0x800f0960
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setHeadAndBodyAnm__13TBossHanachanF23EnumBossHanachanAnmKind36EnumBossHanachanStopMotionBlendOnOff
    lwz     r5, 0x10(r30)
    addi    r3, r30, 0x30
    lwz     r0, 0x14(r30)
    addi    r4, sp, 0x11c
    stw     r5, 0x11c(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x124(sp)
    lwz     r5, 0x1bc(r30)
    lfs     f1, 0x1bc(r5)
    bl      CalcRevisionPosByRotateZ__FRCQ29JGeometry8TVec3_f_fP3Vec
    lwz     r3, 0x170(r30)
    addi    r4, r30, 0x30
    addi    r5, sp, 0x11c
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0x20
    bl      CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec
    lwz     r3, 0x170(r30)
    lwz     r3, 0x74(r3)
    bl      calc__6MActorFv
    li      r27, 0x0
    li      r29, 0x0
branch_0x800f0ac8:
    addi    r0, r29, 0x150
    lwzx    r28, r30, r0
    addi    r4, sp, 0x110
    lwz     r5, 0x10(r28)
    addi    r3, r28, 0x30
    lwz     r0, 0x14(r28)
    stw     r5, 0x110(sp)
    stw     r0, 0x114(sp)
    lwz     r0, 0x18(r28)
    stw     r0, 0x118(sp)
    lwz     r5, 0x1bc(r30)
    lfs     f1, 0x1d0(r5)
    bl      CalcRevisionPosByRotateZ__FRCQ29JGeometry8TVec3_f_fP3Vec
    addi    r3, sp, 0xe0
    addi    r4, r28, 0x30
    addi    r5, sp, 0x110
    bl      CLBCalcRotateZXYTranslateMatrix__FPA4_fRC3VecRC3Vec
    lwz     r4, 0x74(r28)
    addi    r3, sp, 0xe0
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x74(r28)
    bl      calc__6MActorFv
    addi    r27, r27, 0x1
    cmpwi   r27, 0x8
    addi    r29, r29, 0x4
    blt+    branch_0x800f0ac8
    lwz     r4, -0x5db8(r13)
    addi    r3, r31, 0x1f4
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1f4
    mtlr    r12
    blrl
    mr      r0, r3
    lwz     r3, 0x170(r30)
    mr      r29, r0
    addi    r4, r29, 0x0
    bl      initMapCollisionAndHitActor___22TBossHanachanPartsBaseFP12TIdxGroupObj
    li      r28, 0x0
    li      r31, 0x0
branch_0x800f0b80:
    addi    r27, r31, 0x150
    add     r27, r30, r27
    lwz     r3, 0x0(r27)
    mr      r4, r29
    bl      initMapCollisionAndHitActor___22TBossHanachanPartsBaseFP12TIdxGroupObj
    lwz     r3, 0x0(r27)
    mr      r4, r29
    bl      initFootHitActor___22TBossHanachanPartsBodyFP12TIdxGroupObj
    addi    r28, r28, 0x1
    cmpwi   r28, 0x8
    addi    r31, r31, 0x4
    blt+    branch_0x800f0b80
    lmw     r27, 0x174(sp)
    lwz     r0, 0x18c(sp)
    addi    sp, sp, 0x188
    mtlr    r0
    blr


.globl setRandomWeakBodyIndex__13TBossHanachanFv
setRandomWeakBodyIndex__13TBossHanachanFv: # 0x800f0bc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5998(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5984(rtoc)
    stw     r0, 0x18(sp)
    lfs     f0, -0x5970(rtoc)
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    stw     r0, 0x174(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__13TBossHanachanFPCc
__ct__13TBossHanachanFPCc: # 0x800f0c2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803c
    lwz     r31, 0x8(sp)
    subi    r3, r3, 0x5294
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r3, 0x0
    stw     r0, 0x20(r31)
    li      r0, -0x1
    stw     r3, 0x174(r31)
    stw     r3, 0x178(r31)
    lfs     f0, -0x5a08(rtoc)
    stfs    f0, 0x17c(r31)
    stfs    f0, 0x180(r31)
    stfs    f0, 0x184(r31)
    stfs    f0, 0x188(r31)
    stfs    f0, 0x18c(r31)
    stfs    f0, 0x190(r31)
    stfs    f0, 0x194(r31)
    stfs    f0, 0x198(r31)
    stw     r3, 0x19c(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x1a4(r31)
    stfs    f0, 0x1a8(r31)
    stfs    f0, 0x1ac(r31)
    stfs    f0, 0x1b0(r31)
    stfs    f0, 0x1b4(r31)
    stw     r0, 0x1b8(r31)
    stw     r3, 0x1bc(r31)
    stw     r3, 0x1c0(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x5998(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5984(rtoc)
    mr      r3, r31
    stw     r0, 0x20(sp)
    lfs     f0, -0x5970(rtoc)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x174(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl hasMapCollision__20TBossHanachanManagerCFv
hasMapCollision__20TBossHanachanManagerCFv: # 0x800f0d14
    li      r3, 0x1
    blr


.globl clipEnemies__20TBossHanachanManagerFPQ26JDrama9TGraphics
clipEnemies__20TBossHanachanManagerFPQ26JDrama9TGraphics: # 0x800f0d1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x54(r3)
    lfs     f2, 0x2c(r6)
    lfs     f1, 0x18(r6)
    bl      clipActorsAux__12TLiveManagerFPQ26JDrama9TGraphicsff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__20TBossHanachanManagerFv
loadAfter__20TBossHanachanManagerFv: # 0x800f0d48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    lwz     r5, -0x62b8(r13)
    lwz     r4, -0x7d84(r13)
    lwz     r31, 0xc0(r5)
    lwz     r3, 0x14(r31)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r4, 0xc(r31)
    clrlslwi  r0, r3, 16, 5
    li      r30, 0x0
    lwz     r3, 0x4(r4)
    add     r31, r3, r0
branch_0x800f0d8c:
    mr      r3, r29
    bl      getModelDataKeeper__11TObjManagerFv
    mr      r4, r30
    bl      getNthData__16TModelDataKeeperCFi
    lwz     r3, 0x0(r3)
    mr      r5, r31
    lwz     r4, -0x7d80(r13)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
    addi    r30, r30, 0x1
    cmpwi   r30, 0x2
    blt+    branch_0x800f0d8c
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl createModelData__20TBossHanachanManagerFv
createModelData__20TBossHanachanManagerFv: # 0x800f0dd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6823(r13)
    extsb.  r0, r0
    bne-    branch_0x800f0e04
    lis     r4, 0x803c
    lwz     r0, -0x7d90(r13)
    subi    r4, r4, 0x52c4
    stw     r0, 0x18(r4)
    li      r0, 0x1
    stb     r0, -0x6823(r13)
branch_0x800f0e04:
    lwz     r12, 0x0(r3)
    lis     r4, 0x803c
    subi    r4, r4, 0x52c4
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__20TBossHanachanManagerFPCc
__ct__20TBossHanachanManagerFPCc: # 0x800f0e2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__13TEnemyManagerFPCc
    lis     r4, 0x803c
    lwz     r3, 0x8(sp)
    subi    r0, r4, 0x5180
    stw     r0, 0x0(r3)
    lbz     r0, -0x6824(r13)
    extsb.  r0, r0
    bne-    branch_0x800f0e84
    lis     r3, 0x8038
    addi    r3, r3, 0x1de8
    li      r0, 0x1
    stw     r3, -0x6828(r13)
    stb     r0, -0x6824(r13)
branch_0x800f0e84:
    li      r3, 0x24c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800f0ea0
    mr      r3, r29
    lwz     r4, -0x6828(r13)
    bl      __ct__29TBossHanachanCommonSaveParamsFPCc
branch_0x800f0ea0:
    lwz     r4, 0x8(sp)
    lis     r3, 0x803c
    subi    r30, r3, 0x52d0
    stw     r29, 0x54(r4)
    li      r29, 0x0
    li      r31, 0x0
branch_0x800f0eb8:
    li      r3, 0x2b0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x800f0ed8
    add     r3, r30, r31
    lwz     r4, 0x0(r3)
    mr      r3, r28
    bl      __ct__29TBossHanachanChangeSaveParamsFPCc
branch_0x800f0ed8:
    addi    r29, r29, 0x1
    lwz     r3, 0x8(sp)
    addi    r0, r31, 0x58
    cmpwi   r29, 0x3
    stwx    r28, r3, r0
    addi    r31, r31, 0x4
    blt+    branch_0x800f0eb8
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__20TBossHanachanManagerFv
__dt__20TBossHanachanManagerFv: # 0x800f0f14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800f0f5c
    lis     r3, 0x803c
    subi    r0, r3, 0x5180
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x800f0f5c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800f0f5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_BossHanachanMain_cpp
__sinit_BossHanachanMain_cpp: # 0x800f0f78
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x24c0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800f0fc0
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800f0fc0:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800f0ff0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800f0ff0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1020
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800f1020:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1050
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800f1050:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1080
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800f1080:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800f10b0
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800f10b0:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800f10e0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800f10e0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1110
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800f1110:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1140
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800f1140:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1170
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800f1170:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800f11a0
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800f11a0:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800f11d0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800f11d0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1200
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800f1200:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1230
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800f1230:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800f1260
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800f1260:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__13TBossHanachanFv
_32___dt__13TBossHanachanFv: # 0x800f1274
    subi    r3, r3, 0x20
    b       __dt__13TBossHanachanFv

