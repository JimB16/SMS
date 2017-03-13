
.globl __dt__18TNerveChuuHanaWaitFv
__dt__18TNerveChuuHanaWaitFv: # 0x800abc1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800abc60
    lis     r3, 0x803b
    addi    r0, r3, 0x654c
    stw     r0, 0x0(r31)
    beq-    branch_0x800abc50
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800abc50:
    extsh.  r0, r4
    ble-    branch_0x800abc60
    mr      r3, r31
    bl      __dl__FPv
branch_0x800abc60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveChuuHanaWaitCFP24TSpineBase_10TLiveActor_
execute__18TNerveChuuHanaWaitCFP24TSpineBase_10TLiveActor_: # 0x800abc78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800abcb0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800abcb0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800abccc
    li      r3, 0x1
    b       branch_0x800abcd0

branch_0x800abccc:
    li      r3, 0x0
branch_0x800abcd0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl execute__25TNerveChuuHanaJumpPrepareCFP24TSpineBase_10TLiveActor_
execute__25TNerveChuuHanaJumpPrepareCFP24TSpineBase_10TLiveActor_: # 0x800abce4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800abd24
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800abd24:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lbz     r0, -0x7e76(r13)
    lwz     r5, 0x4(r3)
    mulli   r3, r0, 0x30
    lfs     f1, 0x14(r31)
    lwz     r5, 0x58(r5)
    addi    r0, r3, 0x1c
    lfsx    f0, r5, r0
    fsubs   f0, f1, f0
    stfs    f0, 0x220(r31)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6370(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800abe4c
    lfs     f2, -0x636c(rtoc)
    li      r30, 0x0
    lfs     f1, 0x1f8(r31)
    mr      r3, r31
    lfs     f0, 0x10(r31)
    fmsubs  f0, f2, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x1fc(r31)
    lfs     f0, 0x14(r31)
    fmsubs  f0, f2, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x200(r31)
    lfs     f0, 0x18(r31)
    fmsubs  f0, f2, f1, f0
    stfs    f0, 0x78(sp)
    lwz     r4, 0x21c(r31)
    stb     r30, 0x0(r4)
    lwz     r4, 0x1b4(r31)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x4cc(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lwz     r12, 0x0(r31)
    lwz     r4, 0x1b4(r31)
    lwz     r12, 0xe8(r12)
    lfs     f31, 0x4b8(r4)
    mtlr    r12
    blrl
    fmr     f2, f1
    mr      r4, r31
    fmr     f1, f31
    addi    r3, sp, 0x58
    addi    r5, sp, 0x70
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x58(sp)
    lwz     r3, 0x5c(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x60(sp)
    stw     r3, 0x68(sp)
    lfs     f1, -0x6370(rtoc)
    stw     r0, 0x6c(sp)
    lfs     f0, 0x68(sp)
    fadds   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x14(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x14(r31)
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x6c(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    stb     r30, 0x130(r31)
branch_0x800abe4c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800abe68
    li      r3, 0x1
    b       branch_0x800abe6c

branch_0x800abe68:
    li      r3, 0x0
branch_0x800abe6c:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl __dt__25TNerveChuuHanaJumpPrepareFv
__dt__25TNerveChuuHanaJumpPrepareFv: # 0x800abe88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800abecc
    lis     r3, 0x803b
    addi    r0, r3, 0x655c
    stw     r0, 0x0(r31)
    beq-    branch_0x800abebc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800abebc:
    extsh.  r0, r4
    ble-    branch_0x800abecc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800abecc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveChuuHanaAttackCFP24TSpineBase_10TLiveActor_
execute__20TNerveChuuHanaAttackCFP24TSpineBase_10TLiveActor_: # 0x800abee4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    addi    r31, r3, 0x16d0
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    mr      r29, r4
    stw     r28, 0xa8(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800abfd0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r28, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x636c(rtoc)
    addi    r3, r28, 0x0
    li      r4, 0x0
    fmuls   f1, f0, f1
    bl      setFrameRate__6MActorFfi
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6368(rtoc)
    stw     r3, 0x90(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f0, 0x9c(sp)
    beq-    branch_0x800abf88
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x94(sp)
    stfs    f1, 0x98(sp)
    stfs    f2, 0x9c(sp)
branch_0x800abf88:
    lwz     r3, 0x90(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0x94(sp)
    lwz     r3, 0x98(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0x9c(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x90(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x94(sp)
    lwz     r3, 0x98(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0x9c(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
branch_0x800abfd0:
    lwz     r3, -0x608c(r13)
    lwz     r0, 0x218(r30)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x44(r3)
    cmplw   r3, r0
    beq-    branch_0x800abff4
    lwz     r3, 0x21c(r30)
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x800abff4:
    lwz     r3, 0x1b4(r30)
    lwz     r4, 0x20(r29)
    lwz     r0, 0x51c(r3)
    cmpw    r4, r0
    ble-    branch_0x800ac0f8
    lbz     r0, -0x6b6c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ac048
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b68(r13)
    addi    r0, r3, 0x65ec
    lis     r3, 0x800b
    stw     r0, -0x6b68(r13)
    subi    r4, r3, 0x3cc0
    subi    r3, r13, 0x6b68
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b6c(r13)
branch_0x800ac048:
    subi    r4, r13, 0x6b68
    cmplwi  r4, 0x0
    beq-    branch_0x800ac07c
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800ac07c
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800ac07c:
    lbz     r0, -0x6b1c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ac0bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b18(r13)
    addi    r0, r3, 0x654c
    lis     r3, 0x800b
    stw     r0, -0x6b18(r13)
    subi    r4, r3, 0x43e4
    subi    r3, r13, 0x6b18
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b1c(r13)
branch_0x800ac0bc:
    subi    r4, r13, 0x6b18
    cmplwi  r4, 0x0
    beq-    branch_0x800ac0f0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800ac0f0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800ac0f0:
    li      r3, 0x1
    b       branch_0x800ac2c4

branch_0x800ac0f8:
    lwz     r3, 0x1a4(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1a4(r30)
    lwz     r0, 0x1a4(r30)
    cmpwi   r0, 0x14
    ble-    branch_0x800ac210
    li      r0, 0x0
    stw     r0, 0x1a4(r30)
    mr      r3, r30
    lwz     r4, -0x7e7c(r13)
    bl      willFall__9TChuuHanaFl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ac134
    li      r0, -0x64
    stw     r0, 0x1a4(r30)
branch_0x800ac134:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800ac148
    li      r0, 0x1
    b       branch_0x800ac14c

branch_0x800ac148:
    li      r0, 0x0
branch_0x800ac14c:
    cmpwi   r0, 0x0
    bne-    branch_0x800ac210
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800ac210
    lfs     f2, -0x6364(rtoc)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x1fc(r30)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ac210
    lbz     r0, -0x6b3c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ac1b8
    subi    r3, r13, 0x6b38
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x658c
    lis     r3, 0x800b
    stw     r0, -0x6b38(r13)
    subi    r4, r3, 0x3d1c
    subi    r3, r13, 0x6b38
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b3c(r13)
branch_0x800ac1b8:
    subi    r6, r13, 0x6b38
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800ac210
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ac204
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ac204
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ac204:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800ac210:
    mr      r3, r30
    bl      isReachedToGoalXZ__12TWalkerEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800ac2a0
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6368(rtoc)
    stw     r3, 0x80(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x84(sp)
    stfs    f0, 0x88(sp)
    stfs    f0, 0x8c(sp)
    beq-    branch_0x800ac258
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x84(sp)
    stfs    f1, 0x88(sp)
    stfs    f2, 0x8c(sp)
branch_0x800ac258:
    lwz     r3, 0x80(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r30)
    lwz     r4, 0x84(sp)
    lwz     r3, 0x88(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0x8c(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x80(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x84(sp)
    lwz     r3, 0x88(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0x8c(sp)
    stw     r3, 0x110(r30)
    stw     r0, 0x118(r30)
branch_0x800ac2a0:
    lwz     r12, 0x0(r30)
    mr      r3, r30
    lwz     r5, 0x1b4(r30)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    lfs     f1, 0x508(r5)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x800ac2c4:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    lwz     r29, 0xac(sp)
    lwz     r28, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl __dt__19TNerveChuuHanaFall2Fv
__dt__19TNerveChuuHanaFall2Fv: # 0x800ac2e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac328
    lis     r3, 0x803b
    addi    r0, r3, 0x658c
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac318
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac318:
    extsh.  r0, r4
    ble-    branch_0x800ac328
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac328:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__25TNerveChuuHanaWalkOnPanelFv
__dt__25TNerveChuuHanaWalkOnPanelFv: # 0x800ac340
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac384
    lis     r3, 0x803b
    addi    r0, r3, 0x65ec
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac374
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac374:
    extsh.  r0, r4
    ble-    branch_0x800ac384
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac384:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__20TNerveChuuHanaAttackFv
__dt__20TNerveChuuHanaAttackFv: # 0x800ac39c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac3e0
    lis     r3, 0x803b
    addi    r0, r3, 0x656c
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac3d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac3d0:
    extsh.  r0, r4
    ble-    branch_0x800ac3e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac3e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveChuuHanaObjectCFP24TSpineBase_10TLiveActor_
execute__20TNerveChuuHanaObjectCFP24TSpineBase_10TLiveActor_: # 0x800ac3f8
    li      r3, 0x0
    blr


.globl __dt__20TNerveChuuHanaObjectFv
__dt__20TNerveChuuHanaObjectFv: # 0x800ac400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac444
    lis     r3, 0x803b
    addi    r0, r3, 0x657c
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac434
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac434:
    extsh.  r0, r4
    ble-    branch_0x800ac444
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac444:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveChuuHanaFall2CFP24TSpineBase_10TLiveActor_
execute__19TNerveChuuHanaFall2CFP24TSpineBase_10TLiveActor_: # 0x800ac45c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ac49c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800ac49c:
    lfs     f1, 0x220(r31)
    lfs     f0, -0x6360(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0x220(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800ac4c0
    li      r0, 0x1
    b       branch_0x800ac4c4

branch_0x800ac4c0:
    li      r0, 0x0
branch_0x800ac4c4:
    cmpwi   r0, 0x0
    beq-    branch_0x800ac4d8
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x320
    ble-    branch_0x800ac56c
branch_0x800ac4d8:
    lbz     r0, -0x6b34(r13)
    extsb.  r0, r0
    bne-    branch_0x800ac51c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b30(r13)
    addi    r0, r3, 0x657c
    lis     r4, 0x800b
    stw     r0, -0x6b30(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1724
    subi    r4, r4, 0x3c00
    subi    r3, r13, 0x6b30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b34(r13)
branch_0x800ac51c:
    subi    r4, r13, 0x6b30
    cmplwi  r4, 0x0
    beq-    branch_0x800ac550
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800ac550
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800ac550:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x800ac570

branch_0x800ac56c:
    li      r3, 0x0
branch_0x800ac570:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl execute__18TNerveChuuHanaFallCFP24TSpineBase_10TLiveActor_
execute__18TNerveChuuHanaFallCFP24TSpineBase_10TLiveActor_: # 0x800ac588
    li      r3, 0x0
    blr


.globl __dt__18TNerveChuuHanaFallFv
__dt__18TNerveChuuHanaFallFv: # 0x800ac590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac5d4
    lis     r3, 0x803b
    addi    r0, r3, 0x659c
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac5c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac5c4:
    extsh.  r0, r4
    ble-    branch_0x800ac5d4
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac5d4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveChuuHanaRollCFP24TSpineBase_10TLiveActor_
execute__18TNerveChuuHanaRollCFP24TSpineBase_10TLiveActor_: # 0x800ac5ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ac628
    lfs     f0, -0x6368(rtoc)
    stfs    f0, 0x210(r30)
    stfs    f0, 0x204(r30)
    stfs    f0, 0x208(r30)
    stfs    f0, 0x20c(r30)
branch_0x800ac628:
    lbz     r0, 0x1b0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800ac6c8
    mr      r3, r30
    lwz     r4, -0x7e80(r13)
    bl      willFall__9TChuuHanaFl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ac6dc
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ac68c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r4, 0x800b
    stw     r0, -0x6b58(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16e8
    subi    r4, r4, 0x37f4
    subi    r3, r13, 0x6b58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800ac68c:
    subi    r4, r13, 0x6b58
    cmplwi  r4, 0x0
    beq-    branch_0x800ac6c0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800ac6c0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800ac6c0:
    li      r3, 0x1
    b       branch_0x800ac7f4

branch_0x800ac6c8:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x1388
    ble-    branch_0x800ac6dc
    li      r3, 0x1
    b       branch_0x800ac7f4

branch_0x800ac6dc:
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f4, -0x635c(rtoc)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x18(sp)
    lwz     r4, 0x10(sp)
    lwz     r3, 0x14(sp)
    stw     r4, 0x54(sp)
    lwz     r0, 0x18(sp)
    stw     r4, 0x60(sp)
    stw     r3, 0x58(sp)
    stw     r3, 0x64(sp)
    stw     r0, 0x5c(sp)
    stw     r0, 0x68(sp)
    lfs     f0, 0x54(sp)
    lfs     f1, 0x204(r30)
    lfs     f3, 0x68(sp)
    fsubs   f0, f0, f1
    lfs     f2, 0x20c(r30)
    fsubs   f2, f3, f2
    fmuls   f0, f4, f0
    fmuls   f2, f4, f2
    fadds   f0, f1, f0
    stfs    f0, 0x204(r30)
    lfs     f0, 0x20c(r30)
    fadds   f0, f0, f2
    stfs    f0, 0x20c(r30)
    lfs     f0, 0x20c(r30)
    lfs     f2, 0x204(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x6368(rtoc)
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800ac774
    b       branch_0x800ac798

branch_0x800ac774:
    frsqrte f3, f4
    lfs     f2, -0x6358(rtoc)
    lfs     f0, -0x6354(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800ac798:
    lfs     f0, 0xbc(r30)
    lfs     f1, -0x636c(rtoc)
    fdivs   f0, f4, f0
    fmuls   f0, f1, f0
    stfs    f0, 0x1b8(r30)
    lfs     f1, 0x210(r30)
    lfs     f0, 0x1b8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x210(r30)
    lfs     f1, 0x210(r30)
    lfs     f0, -0x6350(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ac7d4
    fsubs   f0, f1, f0
    stfs    f0, 0x210(r30)
branch_0x800ac7d4:
    lfs     f1, 0x210(r30)
    lfs     f0, -0x6368(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ac7f0
    lfs     f0, -0x6350(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x210(r30)
branch_0x800ac7f0:
    li      r3, 0x0
branch_0x800ac7f4:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl __dt__25TNerveChuuHanaKeepBalanceFv
__dt__25TNerveChuuHanaKeepBalanceFv: # 0x800ac80c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac850
    lis     r3, 0x803b
    addi    r0, r3, 0x65cc
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac840
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac840:
    extsh.  r0, r4
    ble-    branch_0x800ac850
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac850:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TNerveChuuHanaRollFv
__dt__18TNerveChuuHanaRollFv: # 0x800ac868
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ac8ac
    lis     r3, 0x803b
    addi    r0, r3, 0x65ac
    stw     r0, 0x0(r31)
    beq-    branch_0x800ac89c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ac89c:
    extsh.  r0, r4
    ble-    branch_0x800ac8ac
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ac8ac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__19TNerveChuuHanaStickCFP24TSpineBase_10TLiveActor_
execute__19TNerveChuuHanaStickCFP24TSpineBase_10TLiveActor_: # 0x800ac8c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x800ac90c
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x4
    bne-    branch_0x800ac900
    li      r0, 0x1
    b       branch_0x800ac904

branch_0x800ac900:
    li      r0, 0x0
branch_0x800ac904:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ac9a8
branch_0x800ac90c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    li      r5, 0x0
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0x40(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x40(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x40(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lbz     r0, -0x7e64(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800aca94
    lwz     r3, 0x21c(r31)
    li      r0, 0x1
    stb     r0, 0x0(r3)
    b       branch_0x800aca94

branch_0x800ac9a8:
    lwz     r3, 0x224(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x224(r31)
    lwz     r3, 0x1b4(r31)
    lwz     r4, 0x224(r31)
    lwz     r0, 0x530(r3)
    cmpw    r4, r0
    ble-    branch_0x800aca68
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800aca94
    lwz     r3, 0x21c(r31)
    li      r0, 0x0
    stb     r0, 0x0(r3)
    lbz     r0, -0x6b1c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aca2c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b18(r13)
    addi    r0, r3, 0x654c
    lis     r4, 0x800b
    stw     r0, -0x6b18(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1748
    subi    r4, r4, 0x43e4
    subi    r3, r13, 0x6b18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b1c(r13)
branch_0x800aca2c:
    subi    r4, r13, 0x6b18
    cmplwi  r4, 0x0
    beq-    branch_0x800aca60
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800aca60
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800aca60:
    li      r3, 0x1
    b       branch_0x800acb54

branch_0x800aca68:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800aca94
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800aca94:
    lbz     r0, -0x7e75(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800acb34
    mr      r3, r31
    lwz     r4, -0x7e80(r13)
    bl      willFall__9TChuuHanaFl
    clrlwi. r0, r3, 24
    beq-    branch_0x800acb34
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800acaf8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r4, 0x800b
    stw     r0, -0x6b58(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16e8
    subi    r4, r4, 0x37f4
    subi    r3, r13, 0x6b58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800acaf8:
    subi    r4, r13, 0x6b58
    cmplwi  r4, 0x0
    beq-    branch_0x800acb2c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800acb2c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800acb2c:
    li      r3, 0x1
    b       branch_0x800acb54

branch_0x800acb34:
    mr      r3, r31
    lfs     f1, -0x635c(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
branch_0x800acb54:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__19TNerveChuuHanaStickFv
__dt__19TNerveChuuHanaStickFv: # 0x800acb6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800acbb0
    lis     r3, 0x803b
    addi    r0, r3, 0x65bc
    stw     r0, 0x0(r31)
    beq-    branch_0x800acba0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800acba0:
    extsh.  r0, r4
    ble-    branch_0x800acbb0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800acbb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveChuuHanaKeepBalanceCFP24TSpineBase_10TLiveActor_
execute__25TNerveChuuHanaKeepBalanceCFP24TSpineBase_10TLiveActor_: # 0x800acbc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    mr      r31, r4
    stw     r30, 0xe8(sp)
    stw     r29, 0xe4(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800acc44
    lwz     r6, 0x70(r30)
    addi    r3, r30, 0x0
    li      r4, 0x2
    lwz     r5, 0x70(r6)
    addi    r0, r5, 0x1
    stw     r0, 0x70(r6)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x6370(rtoc)
    lfs     f1, 0x1ec(r30)
    lfs     f0, 0x10(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x1f4(r30)
    lfs     f0, 0x18(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x18(r30)
    b       branch_0x800acee0

branch_0x800acc44:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800acee0
    lwz     r3, 0x15c(r30)
    cmpwi   r3, 0x2
    bne-    branch_0x800acc6c
    li      r0, 0x1
    b       branch_0x800acc70

branch_0x800acc6c:
    li      r0, 0x0
branch_0x800acc70:
    clrlwi. r0, r0, 24
    beq-    branch_0x800acc94
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800acee0

branch_0x800acc94:
    cmpwi   r3, 0x1
    bne-    branch_0x800acca4
    li      r0, 0x1
    b       branch_0x800acca8

branch_0x800acca4:
    li      r0, 0x0
branch_0x800acca8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800accfc
    lwz     r3, 0x1b4(r30)
    lwz     r4, 0x20(r31)
    lwz     r0, 0x364(r3)
    cmpw    r4, r0
    ble-    branch_0x800acce0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800acee0

branch_0x800acce0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800acee0

branch_0x800accfc:
    cmpwi   r3, 0x0
    bne-    branch_0x800acd0c
    li      r0, 0x1
    b       branch_0x800acd10

branch_0x800acd0c:
    li      r0, 0x0
branch_0x800acd10:
    clrlwi. r0, r0, 24
    bne-    branch_0x800acd34
    cmpwi   r3, 0x7
    bne-    branch_0x800acd28
    li      r0, 0x1
    b       branch_0x800acd2c

branch_0x800acd28:
    li      r0, 0x0
branch_0x800acd2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800acee0
branch_0x800acd34:
    li      r0, 0x0
    stw     r0, 0x8(r31)
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800acd80
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r4, 0x800b
    stw     r0, -0x6b58(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16e8
    subi    r4, r4, 0x37f4
    subi    r3, r13, 0x6b58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800acd80:
    lwz     r0, 0x14(r31)
    subi    r3, r13, 0x6b58
    cmplwi  r0, 0x0
    beq-    branch_0x800acd94
    stw     r0, 0x1c(r31)
branch_0x800acd94:
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r3, 0x14(r31)
    lwz     r5, 0x18(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800acdd4
    lwz     r4, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r4, r0
    bge-    branch_0x800acdd4
    lwz     r3, 0xc(r31)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800acdd4:
    lwz     r0, -0x7e7c(r13)
    li      r31, 0x0
    stw     r0, 0x1a4(r30)
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    stw     r31, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    subf    r29, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x124(r30)
    stw     r0, 0xdc(sp)
    lis     r6, 0x4330
    lwz     r5, 0x0(r3)
    xoris   r0, r29, 0x8000
    stw     r6, 0xd8(sp)
    lfd     f3, -0x6348(rtoc)
    addi    r4, sp, 0x98
    stw     r0, 0xd4(sp)
    lfd     f0, 0xd8(sp)
    stw     r6, 0xd0(sp)
    fsubs   f2, f0, f3
    lfs     f1, -0x634c(rtoc)
    lfd     f0, 0xd0(sp)
    lwz     r3, 0x8c(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    lwz     r5, 0x0(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    stw     r31, 0xa4(sp)
    li      r0, 0x1
    lwz     r5, 0x98(sp)
    li      r3, 0x1
    lwz     r4, 0x9c(sp)
    stw     r5, 0xa8(sp)
    stw     r4, 0xac(sp)
    lwz     r4, 0xa0(sp)
    stw     r4, 0xb0(sp)
    lwz     r4, 0xa4(sp)
    stw     r4, 0xf4(r30)
    lwz     r5, 0xa8(sp)
    lwz     r4, 0xac(sp)
    stw     r5, 0xf8(r30)
    stw     r4, 0xfc(r30)
    lwz     r4, 0xb0(sp)
    stw     r4, 0x100(r30)
    lwz     r4, 0xa4(sp)
    stw     r4, 0x104(r30)
    lwz     r5, 0xa8(sp)
    lwz     r4, 0xac(sp)
    stw     r5, 0x108(r30)
    stw     r4, 0x10c(r30)
    lwz     r4, 0xb0(sp)
    stw     r4, 0x110(r30)
    stw     r31, 0x118(r30)
    stb     r0, 0x1b2(r30)
    b       branch_0x800acf98

branch_0x800acee0:
    lbz     r0, -0x7e64(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800acef8
    lwz     r3, 0x21c(r30)
    li      r0, 0x1
    stb     r0, 0x0(r3)
branch_0x800acef8:
    lbz     r0, -0x7e75(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800acf94
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800acf94
    lbz     r0, -0x6b44(r13)
    extsb.  r0, r0
    bne-    branch_0x800acf58
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b40(r13)
    addi    r0, r3, 0x659c
    lis     r4, 0x800b
    stw     r0, -0x6b40(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x170c
    subi    r4, r4, 0x3a70
    subi    r3, r13, 0x6b40
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b44(r13)
branch_0x800acf58:
    subi    r4, r13, 0x6b40
    cmplwi  r4, 0x0
    beq-    branch_0x800acf8c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800acf8c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800acf8c:
    li      r3, 0x1
    b       branch_0x800acf98

branch_0x800acf94:
    li      r3, 0x0
branch_0x800acf98:
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    mtlr    r0
    lwz     r29, 0xe4(sp)
    addi    sp, sp, 0xf0
    blr


.globl execute__25TNerveChuuHanaForceJumpedCFP24TSpineBase_10TLiveActor_
execute__25TNerveChuuHanaForceJumpedCFP24TSpineBase_10TLiveActor_: # 0x800acfb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    stw     r30, 0xd0(sp)
    stw     r29, 0xcc(sp)
    mr      r29, r4
    stw     r28, 0xc8(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ad0e8
    lwz     r0, -0x7e7c(r13)
    li      r31, 0x0
    stw     r0, 0x1a4(r30)
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    stw     r31, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    subf    r28, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x124(r30)
    stw     r0, 0xc4(sp)
    lis     r6, 0x4330
    lwz     r5, 0x0(r3)
    xoris   r0, r28, 0x8000
    stw     r6, 0xc0(sp)
    lfd     f3, -0x6348(rtoc)
    addi    r4, sp, 0x94
    stw     r0, 0xbc(sp)
    lfd     f0, 0xc0(sp)
    stw     r6, 0xb8(sp)
    fsubs   f2, f0, f3
    lfs     f1, -0x634c(rtoc)
    lfd     f0, 0xb8(sp)
    lwz     r3, 0x88(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    lwz     r5, 0x0(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    stw     r31, 0xa0(sp)
    li      r0, 0x1
    lwz     r4, 0x94(sp)
    lwz     r3, 0x98(sp)
    stw     r4, 0xa4(sp)
    stw     r3, 0xa8(sp)
    lwz     r3, 0x9c(sp)
    stw     r3, 0xac(sp)
    lwz     r3, 0xa0(sp)
    stw     r3, 0xf4(r30)
    lwz     r4, 0xa4(sp)
    lwz     r3, 0xa8(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0xac(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0xa0(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0xa4(sp)
    lwz     r3, 0xa8(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0xac(sp)
    stw     r3, 0x110(r30)
    stw     r31, 0x118(r30)
    stb     r0, 0x1b2(r30)
branch_0x800ad0e8:
    lbz     r0, 0x214(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad140
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6340(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800ad140
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad138
    mr      r3, r0
    lwz     r12, 0x0(r3)
    addi    r4, r30, 0x0
    li      r5, 0x3
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x800ad138:
    li      r0, 0x0
    stb     r0, 0x214(r30)
branch_0x800ad140:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800ad240
    lbz     r0, 0x1b1(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad1dc
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad1a4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b48(r13)
    addi    r0, r3, 0x65ac
    lis     r4, 0x800b
    stw     r0, -0x6b48(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1700
    subi    r4, r4, 0x3798
    subi    r3, r13, 0x6b48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b4c(r13)
branch_0x800ad1a4:
    subi    r4, r13, 0x6b48
    cmplwi  r4, 0x0
    beq-    branch_0x800ad238
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x800ad238
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
    b       branch_0x800ad238

branch_0x800ad1dc:
    li      r0, 0x0
    stw     r0, 0x8(r29)
    lwz     r0, 0x14(r29)
    lwz     r3, 0x18(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad1f8
    stw     r0, 0x1c(r29)
branch_0x800ad1f8:
    li      r0, 0x0
    stw     r0, 0x20(r29)
    stw     r3, 0x14(r29)
    lwz     r5, 0x18(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x800ad238
    lwz     r4, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r4, r0
    bge-    branch_0x800ad238
    lwz     r3, 0xc(r29)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x800ad238:
    li      r3, 0x1
    b       branch_0x800ad244

branch_0x800ad240:
    li      r3, 0x0
branch_0x800ad244:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    lwz     r28, 0xc8(sp)
    addi    sp, sp, 0xd8
    blr


.globl __dt__25TNerveChuuHanaForceJumpedFv
__dt__25TNerveChuuHanaForceJumpedFv: # 0x800ad264
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800ad2a8
    lis     r3, 0x803b
    addi    r0, r3, 0x65dc
    stw     r0, 0x0(r31)
    beq-    branch_0x800ad298
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800ad298:
    extsh.  r0, r4
    ble-    branch_0x800ad2a8
    mr      r3, r31
    bl      __dl__FPv
branch_0x800ad2a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveChuuHanaWalkOnPanelCFP24TSpineBase_10TLiveActor_
execute__25TNerveChuuHanaWalkOnPanelCFP24TSpineBase_10TLiveActor_: # 0x800ad2c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800ad308
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x21c(r31)
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x800ad308:
    lwz     r0, 0x218(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800ad34c
    lwz     r3, 0xc4(r31)
    lwz     r4, 0x44(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x800ad368
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x1f8(r31)
    stw     r0, 0x1fc(r31)
    lwz     r0, 0x18(r4)
    stw     r0, 0x200(r31)
    lwz     r3, 0xc4(r31)
    lwz     r0, 0x44(r3)
    stw     r0, 0x218(r31)
    b       branch_0x800ad368

branch_0x800ad34c:
    mr      r3, r31
    lfs     f1, -0x633c(rtoc)
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
branch_0x800ad368:
    lwz     r3, 0x1a4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1a4(r31)
    lwz     r0, 0x1a4(r31)
    cmpwi   r0, 0x14
    ble-    branch_0x800ad484
    li      r0, 0x0
    stw     r0, 0x1a4(r31)
    mr      r3, r31
    lwz     r4, -0x7e7c(r13)
    bl      willFall__9TChuuHanaFl
    clrlwi. r0, r3, 24
    beq-    branch_0x800ad3a4
    li      r0, -0x64
    stw     r0, 0x1a4(r31)
branch_0x800ad3a4:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800ad3b8
    li      r0, 0x1
    b       branch_0x800ad3bc

branch_0x800ad3b8:
    li      r0, 0x0
branch_0x800ad3bc:
    cmpwi   r0, 0x0
    bne-    branch_0x800ad484
    lwz     r3, 0xc4(r31)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800ad484
    lfs     f2, -0x6364(rtoc)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x1fc(r31)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ad484
    lbz     r0, -0x6b3c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad42c
    subi    r3, r13, 0x6b38
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x658c
    lis     r4, 0x800b
    stw     r0, -0x6b38(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1718
    subi    r4, r4, 0x3d1c
    subi    r3, r13, 0x6b38
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b3c(r13)
branch_0x800ad42c:
    subi    r6, r13, 0x6b38
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800ad484
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad478
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ad478
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ad478:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800ad484:
    mr      r3, r31
    bl      isReachedToGoalXZ__12TWalkerEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800ad49c
    mr      r3, r31
    bl      setGoal__9TChuuHanaFv
branch_0x800ad49c:
    lwz     r3, 0x21c(r31)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad52c
    lbz     r0, -0x6b2c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad4f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b28(r13)
    addi    r0, r3, 0x656c
    lis     r4, 0x800b
    stw     r0, -0x6b28(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1730
    subi    r4, r4, 0x3c64
    subi    r3, r13, 0x6b28
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b2c(r13)
branch_0x800ad4f0:
    subi    r4, r13, 0x6b28
    cmplwi  r4, 0x0
    beq-    branch_0x800ad524
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x800ad524
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800ad524:
    li      r3, 0x1
    b       branch_0x800ad530

branch_0x800ad52c:
    li      r3, 0x0
branch_0x800ad530:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl getBasNameTable__9TChuuHanaCFv
getBasNameTable__9TChuuHanaCFv: # 0x800ad548
    lis     r3, 0x803b
    addi    r3, r3, 0x6500
    blr


.globl checkStretchType__9TChuuHanaFv
checkStretchType__9TChuuHanaFv: # 0x800ad554
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stw     r31, 0x104(sp)
    stw     r30, 0x100(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xfc(sp)
    stw     r0, 0x1a0(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x16d0
    lbz     r0, -0x6b5c(r13)
    lfs     f31, 0x1a8(r30)
    extsb.  r0, r0
    bne-    branch_0x800ad5c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r3, 0x800b
    stw     r0, -0x6b58(r13)
    subi    r4, r3, 0x37f4
    subi    r3, r13, 0x6b58
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800ad5c8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b58
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ad744
    lha     r0, 0x7c(r30)
    lwz     r4, 0x1b4(r30)
    cmpwi   r0, 0x0
    lfs     f0, 0x38c(r4)
    ble-    branch_0x800ad5f4
    lfs     f0, 0x3dc(r4)
branch_0x800ad5f4:
    cmpwi   r0, 0x2
    ble-    branch_0x800ad600
    lfs     f0, 0x42c(r4)
branch_0x800ad600:
    fcmpo   cr0, f31, f0
    ble-    branch_0x800ad744
    li      r29, 0x1
    stb     r29, 0x1b1(r30)
    stb     r29, 0x214(r30)
    lbz     r0, -0x6b3c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad650
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b38(r13)
    addi    r0, r3, 0x658c
    lis     r3, 0x800b
    stw     r0, -0x6b38(r13)
    subi    r4, r3, 0x3d1c
    subi    r3, r13, 0x6b38
    addi    r5, r31, 0x48
    bl      __register_global_object
    stb     r29, -0x6b3c(r13)
branch_0x800ad650:
    subi    r6, r13, 0x6b38
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800ad6a8
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad69c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ad69c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ad69c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800ad6a8:
    lbz     r0, -0x6b24(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad6e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b20(r13)
    addi    r0, r3, 0x655c
    lis     r3, 0x800b
    stw     r0, -0x6b20(r13)
    subi    r4, r3, 0x4178
    subi    r3, r13, 0x6b20
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b24(r13)
branch_0x800ad6e8:
    subi    r6, r13, 0x6b20
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800ada04
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad734
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ad734
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ad734:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800ada04

branch_0x800ad744:
    lwz     r4, 0x70(r30)
    lwz     r3, 0x6c(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x6c(r4)
    lha     r0, 0x7c(r30)
    lwz     r4, 0x1b4(r30)
    cmpwi   r0, 0x0
    lfs     f0, 0x3a0(r4)
    ble-    branch_0x800ad76c
    lfs     f0, 0x3f0(r4)
branch_0x800ad76c:
    cmpwi   r0, 0x2
    ble-    branch_0x800ad778
    lfs     f0, 0x440(r4)
branch_0x800ad778:
    fcmpo   cr0, f31, f0
    ble-    branch_0x800ad840
    li      r0, 0x0
    stb     r0, 0x1b1(r30)
    addi    r3, r30, 0x0
    li      r4, 0x8
    stb     r0, 0x214(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6b64(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad7e4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b60(r13)
    addi    r0, r3, 0x65dc
    lis     r3, 0x800b
    stw     r0, -0x6b60(r13)
    subi    r4, r3, 0x2d9c
    subi    r3, r13, 0x6b60
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b64(r13)
branch_0x800ad7e4:
    subi    r6, r13, 0x6b60
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800ada04
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad830
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ad830
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ad830:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800ada04

branch_0x800ad840:
    cmpwi   r0, 0x0
    lfs     f0, 0x3b4(r4)
    ble-    branch_0x800ad850
    lfs     f0, 0x404(r4)
branch_0x800ad850:
    cmpwi   r0, 0x2
    ble-    branch_0x800ad85c
    lfs     f0, 0x454(r4)
branch_0x800ad85c:
    fcmpo   cr0, f31, f0
    ble-    branch_0x800ad924
    li      r0, 0x0
    stb     r0, 0x1b1(r30)
    addi    r3, r30, 0x0
    li      r4, 0x9
    stb     r0, 0x214(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6b64(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad8c8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b60(r13)
    addi    r0, r3, 0x65dc
    lis     r3, 0x800b
    stw     r0, -0x6b60(r13)
    subi    r4, r3, 0x2d9c
    subi    r3, r13, 0x6b60
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b64(r13)
branch_0x800ad8c8:
    subi    r6, r13, 0x6b60
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800ada04
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad914
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ad914
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ad914:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800ada04

branch_0x800ad924:
    cmpwi   r0, 0x0
    lfs     f0, 0x3c8(r4)
    ble-    branch_0x800ad934
    lfs     f0, 0x418(r4)
branch_0x800ad934:
    cmpwi   r0, 0x2
    ble-    branch_0x800ad940
    lfs     f0, 0x468(r4)
branch_0x800ad940:
    fcmpo   cr0, f31, f0
    ble-    branch_0x800ada04
    li      r0, 0x0
    stb     r0, 0x1b1(r30)
    addi    r3, r30, 0x0
    li      r4, 0xa
    stb     r0, 0x214(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x6b64(r13)
    extsb.  r0, r0
    bne-    branch_0x800ad9ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b60(r13)
    addi    r0, r3, 0x65dc
    lis     r3, 0x800b
    stw     r0, -0x6b60(r13)
    subi    r4, r3, 0x2d9c
    subi    r3, r13, 0x6b60
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b64(r13)
branch_0x800ad9ac:
    subi    r6, r13, 0x6b60
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800ada04
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800ad9f8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800ad9f8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800ad9f8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800ada04:
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lwz     r31, 0x104(sp)
    mtlr    r0
    lwz     r30, 0x100(sp)
    lwz     r29, 0xfc(sp)
    addi    sp, sp, 0x110
    blr


.globl setGoal__9TChuuHanaFv
setGoal__9TChuuHanaFv: # 0x800ada24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    lfs     f0, 0x10(r3)
    stfs    f0, 0x78(sp)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x80(sp)
    lfs     f1, -0x6334(rtoc)
    lfs     f0, -0x6330(rtoc)
    stfs    f1, 0x6c(sp)
    stfs    f0, 0x70(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x6c(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, -0x6368(rtoc)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfd     f3, -0x6348(rtoc)
    addi    r3, sp, 0x30
    stw     r0, 0x88(sp)
    lfs     f1, -0x634c(rtoc)
    lfd     f2, 0x88(sp)
    stfs    f0, 0x60(sp)
    fsubs   f2, f2, f3
    lfs     f4, 0x6c(sp)
    stfs    f0, 0x64(sp)
    lfs     f0, -0x633c(rtoc)
    fmuls   f1, f1, f2
    stfs    f0, 0x68(sp)
    fmuls   f2, f31, f1
    lfs     f0, 0x34(r31)
    lfs     f1, 0x30(r31)
    lfs     f3, 0x38(r31)
    fadds   f2, f4, f2
    fadds   f2, f0, f2
    bl      MsMtxSetRotRPH__FPA4_ffff
    addi    r4, sp, 0x60
    addi    r5, r4, 0x0
    addi    r3, sp, 0x30
    bl      PSMTXMultVec
    lfs     f2, -0x632c(rtoc)
    li      r4, 0x0
    lfs     f1, 0x60(sp)
    lfs     f0, 0x78(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x80(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x80(sp)
    stw     r4, 0x20(sp)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x80(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x20(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
    lwz     r0, -0x7e7c(r13)
    stw     r0, 0x1a4(r31)
    stb     r4, 0x1b2(r31)
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lwz     r31, 0x94(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl willFall__9TChuuHanaFl
willFall__9TChuuHanaFl: # 0x800adb8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    stw     r30, 0xc8(sp)
    mr      r30, r3
    stw     r29, 0xc4(sp)
    lha     r0, 0x7c(r3)
    lfs     f5, -0x7e70(r13)
    cmpwi   r0, 0x0
    ble-    branch_0x800adbbc
    lfs     f5, -0x7e6c(r13)
branch_0x800adbbc:
    cmpwi   r0, 0x2
    ble-    branch_0x800adbc8
    lfs     f5, -0x7e68(r13)
branch_0x800adbc8:
    lwz     r0, -0x7e80(r13)
    cmpw    r4, r0
    bne-    branch_0x800adbdc
    lfs     f0, -0x6328(rtoc)
    fadds   f5, f5, f0
branch_0x800adbdc:
    lwz     r3, 0x218(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x800add64
    lfs     f1, 0x14(r30)
    lfs     f0, 0x14(r3)
    lfs     f2, 0x10(r30)
    fsubs   f1, f1, f0
    lfs     f0, 0x10(r3)
    lfs     f3, 0x18(r30)
    fsubs   f4, f2, f0
    lfs     f2, 0x18(r3)
    fmuls   f1, f1, f1
    lfs     f0, -0x6368(rtoc)
    fsubs   f2, f3, f2
    fmadds  f1, f4, f4, f1
    fmadds  f4, f2, f2, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800adc2c
    b       branch_0x800adc50

branch_0x800adc2c:
    frsqrte f3, f4
    lfs     f2, -0x6358(rtoc)
    lfs     f0, -0x6354(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800adc50:
    fcmpo   cr0, f4, f5
    ble-    branch_0x800add64
    lwz     r0, -0x7e7c(r13)
    li      r31, 0x0
    stw     r0, 0x1a4(r30)
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    stw     r31, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    subf    r29, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x124(r30)
    stw     r0, 0xbc(sp)
    lis     r6, 0x4330
    lwz     r5, 0x0(r3)
    xoris   r0, r29, 0x8000
    stw     r6, 0xb8(sp)
    lfd     f3, -0x6348(rtoc)
    addi    r4, sp, 0x6c
    stw     r0, 0xb4(sp)
    lfd     f0, 0xb8(sp)
    stw     r6, 0xb0(sp)
    fsubs   f2, f0, f3
    lfs     f1, -0x634c(rtoc)
    lfd     f0, 0xb0(sp)
    lwz     r3, 0x60(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    lwz     r5, 0x0(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xa8(sp)
    lwz     r0, 0xac(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    stw     r31, 0x78(sp)
    li      r0, 0x1
    lwz     r5, 0x6c(sp)
    li      r3, 0x1
    lwz     r4, 0x70(sp)
    stw     r5, 0x7c(sp)
    stw     r4, 0x80(sp)
    lwz     r4, 0x74(sp)
    stw     r4, 0x84(sp)
    lwz     r4, 0x78(sp)
    stw     r4, 0xf4(r30)
    lwz     r5, 0x7c(sp)
    lwz     r4, 0x80(sp)
    stw     r5, 0xf8(r30)
    stw     r4, 0xfc(r30)
    lwz     r4, 0x84(sp)
    stw     r4, 0x100(r30)
    lwz     r4, 0x78(sp)
    stw     r4, 0x104(r30)
    lwz     r5, 0x7c(sp)
    lwz     r4, 0x80(sp)
    stw     r5, 0x108(r30)
    stw     r4, 0x10c(r30)
    lwz     r4, 0x84(sp)
    stw     r4, 0x110(r30)
    stw     r31, 0x118(r30)
    stb     r0, 0x1b2(r30)
    b       branch_0x800add70

branch_0x800add64:
    li      r0, 0x0
    stb     r0, 0x1b2(r30)
    li      r3, 0x0
branch_0x800add70:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    blr


.globl getGravityY__9TChuuHanaCFv
getGravityY__9TChuuHanaCFv: # 0x800add8c
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r4, 0x16d0
    stw     r30, 0xa8(sp)
    addi    r30, r3, 0x0
    bl      getGravityY__10TLiveActorCFv
    lbz     r0, -0x6b6c(r13)
    fmr     f31, f1
    extsb.  r0, r0
    bne-    branch_0x800addf8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b68(r13)
    addi    r0, r3, 0x65ec
    lis     r3, 0x800b
    stw     r0, -0x6b68(r13)
    subi    r4, r3, 0x3cc0
    subi    r3, r13, 0x6b68
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b6c(r13)
branch_0x800addf8:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b68
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800adeb4
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ade4c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r3, 0x800b
    stw     r0, -0x6b58(r13)
    subi    r4, r3, 0x37f4
    subi    r3, r13, 0x6b58
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800ade4c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b58
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800adeb4
    lbz     r0, -0x6b64(r13)
    extsb.  r0, r0
    bne-    branch_0x800adea0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b60(r13)
    addi    r0, r3, 0x65dc
    lis     r3, 0x800b
    stw     r0, -0x6b60(r13)
    subi    r4, r3, 0x2d9c
    subi    r3, r13, 0x6b60
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b64(r13)
branch_0x800adea0:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b60
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800adec0
branch_0x800adeb4:
    lwz     r3, 0x1b4(r30)
    lfs     f31, 0x47c(r3)
    b       branch_0x800adfd0

branch_0x800adec0:
    lbz     r0, -0x6b54(r13)
    extsb.  r0, r0
    bne-    branch_0x800adf00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b50(r13)
    addi    r0, r3, 0x65bc
    lis     r3, 0x800b
    stw     r0, -0x6b50(r13)
    subi    r4, r3, 0x3494
    subi    r3, r13, 0x6b50
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b54(r13)
branch_0x800adf00:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b50
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800adf20
    lwz     r3, 0x1b4(r30)
    lfs     f31, 0x490(r3)
    b       branch_0x800adfd0

branch_0x800adf20:
    lbz     r0, -0x6b3c(r13)
    extsb.  r0, r0
    bne-    branch_0x800adf60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b38(r13)
    addi    r0, r3, 0x658c
    lis     r3, 0x800b
    stw     r0, -0x6b38(r13)
    subi    r4, r3, 0x3d1c
    subi    r3, r13, 0x6b38
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b3c(r13)
branch_0x800adf60:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b38
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800adfc8
    lbz     r0, -0x6b24(r13)
    extsb.  r0, r0
    bne-    branch_0x800adfb4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b20(r13)
    addi    r0, r3, 0x655c
    lis     r3, 0x800b
    stw     r0, -0x6b20(r13)
    subi    r4, r3, 0x4178
    subi    r3, r13, 0x6b20
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b24(r13)
branch_0x800adfb4:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800adfd0
branch_0x800adfc8:
    lwz     r3, 0x1b4(r30)
    lfs     f31, 0x4a4(r3)
branch_0x800adfd0:
    lwz     r0, 0xbc(sp)
    fmr     f1, f31
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    addi    sp, sp, 0xb8
    blr


.globl forceKill__9TChuuHanaFv
forceKill__9TChuuHanaFv: # 0x800adff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0xc4(r3)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800ae01c
    li      r0, 0x1
    b       branch_0x800ae020

branch_0x800ae01c:
    li      r0, 0x0
branch_0x800ae020:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ae0b0
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x800
    bne-    branch_0x800ae03c
    li      r0, 0x1
    b       branch_0x800ae040

branch_0x800ae03c:
    li      r0, 0x0
branch_0x800ae040:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ae0ec
    cmplwi  r3, 0x104
    beq-    branch_0x800ae060
    cmplwi  r3, 0x105
    beq-    branch_0x800ae060
    cmplwi  r3, 0x4104
    bne-    branch_0x800ae068
branch_0x800ae060:
    li      r0, 0x1
    b       branch_0x800ae06c

branch_0x800ae068:
    li      r0, 0x0
branch_0x800ae06c:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ae0ec
    cmplwi  r3, 0x100
    beq-    branch_0x800ae09c
    cmplwi  r3, 0x101
    beq-    branch_0x800ae09c
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x800ae09c
    cmplwi  r3, 0x4104
    bne-    branch_0x800ae0a4
branch_0x800ae09c:
    li      r0, 0x1
    b       branch_0x800ae0a8

branch_0x800ae0a4:
    li      r0, 0x0
branch_0x800ae0a8:
    clrlwi. r0, r0, 24
    bne-    branch_0x800ae0ec
branch_0x800ae0b0:
    lwz     r3, gpMap(r13)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x18(r31)
    bl      isInArea__4TMapCFff
    clrlwi. r0, r3, 24
    beq-    branch_0x800ae0ec
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800ae0e0
    li      r0, 0x1
    b       branch_0x800ae0e4

branch_0x800ae0e0:
    li      r0, 0x0
branch_0x800ae0e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ae100
branch_0x800ae0ec:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800ae100:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl kill__9TChuuHanaFv
kill__9TChuuHanaFv: # 0x800ae114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x800ae174
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r3, 0x218(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800ae16c
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x218(r31)
branch_0x800ae16c:
    mr      r3, r31
    bl      kill__11TSmallEnemyFv
branch_0x800ae174:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setWalkAnm__9TChuuHanaFv
setWalkAnm__9TChuuHanaFv: # 0x800ae188
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x0
    bge-    branch_0x800ae1b8
    li      r31, 0x1
branch_0x800ae1b8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0xc
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r31, 24
    beq-    branch_0x800ae210
    lha     r5, 0x7c(r30)
    lis     r0, 0x4330
    lfd     f1, -0x6348(rtoc)
    li      r4, 0x0
    xoris   r5, r5, 0x8000
    stw     r5, 0x14(sp)
    lfs     f2, -0x6370(rtoc)
    stw     r0, 0x10(sp)
    lwz     r3, 0x74(r30)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f1
    fmuls   f31, f2, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
branch_0x800ae210:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl receiveMessage__9TChuuHanaFP9THitActorUl
receiveMessage__9TChuuHanaFP9THitActorUl: # 0x800ae22c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x44(sp)
    mr      r29, r3
    lwz     r0, 0x1a0(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800ae31c
    lbz     r0, -0x6b6c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae2a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b68(r13)
    addi    r0, r3, 0x65ec
    lis     r4, 0x800b
    stw     r0, -0x6b68(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16d0
    subi    r4, r4, 0x3cc0
    subi    r3, r13, 0x6b68
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b6c(r13)
branch_0x800ae2a0:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6b68
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ae30c
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae2f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r4, 0x800b
    stw     r0, -0x6b58(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16e8
    subi    r4, r4, 0x37f4
    subi    r3, r13, 0x6b58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800ae2f8:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6b58
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ae31c
branch_0x800ae30c:
    cmplwi  r31, 0x1
    bne-    branch_0x800ae31c
    li      r0, 0x1
    stw     r0, 0x1a0(r29)
branch_0x800ae31c:
    cmplwi  r31, 0xf
    bne-    branch_0x800ae39c
    lwz     r0, 0x160(r29)
    cmpwi   r0, 0x0
    bne-    branch_0x800ae350
    li      r0, 0x1
    stw     r0, 0x160(r29)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x12c(r12)
    mtlr    r12
    blrl
branch_0x800ae350:
    li      r0, 0x1
    stb     r0, 0x165(r29)
    addi    r5, r30, 0x10
    li      r4, 0xe7
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, gpMSound(r13)
    addi    r5, r29, 0x10
    lfs     f1, -0x6368(rtoc)
    li      r4, 0x6802
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSet__6MSoundFUlPC3VecUlfUlUlUc
    li      r3, 0x1
    b       branch_0x800ae3a0

branch_0x800ae39c:
    li      r3, 0x0
branch_0x800ae3a0:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl bind__9TChuuHanaFv
bind__9TChuuHanaFv: # 0x800ae3bc
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r4, 0x16d0
    stw     r30, 0x80(sp)
    addi    r30, r3, 0x0
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae41c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b48(r13)
    addi    r0, r3, 0x65ac
    lis     r3, 0x800b
    stw     r0, -0x6b48(r13)
    subi    r4, r3, 0x3798
    subi    r3, r13, 0x6b48
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b4c(r13)
branch_0x800ae41c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b48
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ae4e4
    lbz     r0, -0x6b3c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae470
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b38(r13)
    addi    r0, r3, 0x658c
    lis     r3, 0x800b
    stw     r0, -0x6b38(r13)
    subi    r4, r3, 0x3d1c
    subi    r3, r13, 0x6b38
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b3c(r13)
branch_0x800ae470:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b38
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ae4e4
    lbz     r0, -0x6b24(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae4c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b20(r13)
    addi    r0, r3, 0x655c
    lis     r3, 0x800b
    stw     r0, -0x6b20(r13)
    subi    r4, r3, 0x4178
    subi    r3, r13, 0x6b20
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b24(r13)
branch_0x800ae4c4:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ae4e4
    mr      r3, r30
    bl      bind__10TLiveActorFv
    b       branch_0x800ae68c

branch_0x800ae4e4:
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    addi    r31, sp, 0x78
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x94(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x98(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x9c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0xb0(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0xb4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xb0(r30)
    fsubs   f0, f0, f1
    stfs    f0, 0xb0(r30)
    lfs     f0, 0xb0(r30)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800ae594
    stfs    f1, 0xb0(r30)
branch_0x800ae594:
    lfs     f1, 0x74(sp)
    addi    r4, r30, 0xc4
    lfs     f0, 0xc0(r30)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x70(sp)
    lfs     f3, 0x78(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x633c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f1, -0x6324(rtoc)
    lfs     f0, 0xc8(r30)
    lfs     f2, 0x74(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x800ae624
    lwz     r3, 0xc4(r30)
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800ae624
    lfs     f1, 0x1fc(r30)
    lfs     f0, -0x6364(rtoc)
    lfs     f2, 0x14(r30)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800ae624
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r30)
    lfs     f0, 0xc8(r30)
    stfs    f0, 0x74(sp)
    b       branch_0x800ae630

branch_0x800ae624:
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x800ae630:
    lfs     f1, 0x74(sp)
    mr      r5, r31
    lfs     f0, 0xc0(r30)
    addi    r4, sp, 0x70
    lwz     r3, gpMap(r13)
    fadds   f1, f1, f0
    lfs     f2, 0xbc(r30)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lwz     r0, 0x70(sp)
    addi    r3, sp, 0x30
    lwz     r5, 0x74(sp)
    addi    r4, r30, 0x10
    stw     r0, 0x30(sp)
    lwz     r0, 0x78(sp)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x94(r30)
    stw     r0, 0x98(r30)
    lwz     r0, 0x38(sp)
    stw     r0, 0x9c(r30)
branch_0x800ae68c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl calcRootMatrix__9TChuuHanaFv
calcRootMatrix__9TChuuHanaFv: # 0x800ae6a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x803f
    stw     r29, 0x94(sp)
    addi    r31, r3, 0x16d0
    lbz     r0, -0x6b24(r13)
    stw     r30, -0x6b70(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae70c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b20(r13)
    addi    r0, r3, 0x655c
    lis     r3, 0x800b
    stw     r0, -0x6b20(r13)
    subi    r4, r3, 0x4178
    subi    r3, r13, 0x6b20
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b24(r13)
branch_0x800ae70c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b20
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800ae774
    lbz     r0, -0x6b3c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae760
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b38(r13)
    addi    r0, r3, 0x658c
    lis     r3, 0x800b
    stw     r0, -0x6b38(r13)
    subi    r4, r3, 0x3d1c
    subi    r3, r13, 0x6b38
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b3c(r13)
branch_0x800ae760:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b38
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ae7f4
branch_0x800ae774:
    lfs     f0, 0x38(r30)
    lfs     f2, -0x6320(rtoc)
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f7, 0x14(r30)
    fctiwz  f5, f2
    lfs     f6, 0x220(r30)
    fctiwz  f0, f0
    stfd    f5, 0x88(sp)
    fadds   f2, f7, f6
    lwz     r29, 0x4(r3)
    stfd    f4, 0x80(sp)
    lfs     f3, 0x18(r30)
    addi    r3, r29, 0x20
    stfd    f0, 0x78(sp)
    lfs     f1, 0x10(r30)
    lwz     r4, 0x8c(sp)
    lwz     r5, 0x84(sp)
    lwz     r6, 0x7c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r29)
    stw     r0, 0x18(r29)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r29)
    b       branch_0x800ae7fc

branch_0x800ae7f4:
    mr      r3, r30
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x800ae7fc:
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae83c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r3, 0x800b
    stw     r0, -0x6b58(r13)
    subi    r4, r3, 0x37f4
    subi    r3, r13, 0x6b58
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800ae83c:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b58
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ae86c
    lwz     r3, gpMarioParticleManager(r13)
    addi    r8, r30, 0x0
    addi    r5, r30, 0x10
    addi    r7, r30, 0x228
    li      r4, 0x130
    li      r6, 0x1
    bl      emitParticleCallBack__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcP54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_PCv
branch_0x800ae86c:
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x6
    bne-    branch_0x800ae880
    li      r0, 0x1
    b       branch_0x800ae884

branch_0x800ae880:
    li      r0, 0x0
branch_0x800ae884:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ae90c
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x636c(rtoc)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800ae90c
    lwz     r3, 0x74(r30)
    li      r4, 0x54
    lbz     r0, -0x7e78(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, gpMarioParticleManager(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x800ae90c
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
branch_0x800ae90c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl isCollidMove__9TChuuHanaFP9THitActor
isCollidMove__9TChuuHanaFP9THitActor: # 0x800ae928
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stmw    r27, 0x104(sp)
    mr      r29, r4
    addi    r28, r5, 0x16d0
    addi    r31, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0xf000
    cmplwi  r0, 0x16
    bne-    branch_0x800ae960
    li      r0, 0x1
    b       branch_0x800ae964

branch_0x800ae960:
    li      r0, 0x0
branch_0x800ae964:
    clrlwi. r0, r0, 24
    beq-    branch_0x800aecb0
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800ae9ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b48(r13)
    addi    r0, r3, 0x65ac
    lis     r3, 0x800b
    stw     r0, -0x6b48(r13)
    subi    r4, r3, 0x3798
    subi    r3, r13, 0x6b48
    addi    r5, r28, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b4c(r13)
branch_0x800ae9ac:
    lwz     r3, 0x8c(r29)
    subi    r0, r13, 0x6b48
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800ae9c8
    li      r0, 0x1
    b       branch_0x800ae9cc

branch_0x800ae9c8:
    li      r0, 0x0
branch_0x800ae9cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x800aeac0
    lbz     r0, -0x6b6c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aea14
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b68(r13)
    addi    r0, r3, 0x65ec
    lis     r3, 0x800b
    stw     r0, -0x6b68(r13)
    subi    r4, r3, 0x3cc0
    subi    r3, r13, 0x6b68
    addi    r5, r28, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b6c(r13)
branch_0x800aea14:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b68
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800aecb0
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aea64
    subi    r3, r13, 0x6b48
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x65ac
    lis     r3, 0x800b
    stw     r0, -0x6b48(r13)
    subi    r4, r3, 0x3798
    subi    r3, r13, 0x6b48
    addi    r5, r28, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b4c(r13)
branch_0x800aea64:
    subi    r6, r13, 0x6b48
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800aecb0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800aeab0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800aeab0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800aeab0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800aecb0

branch_0x800aeac0:
    lbz     r0, 0x1b2(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800aecb0
    lbz     r0, -0x6b2c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aeb0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b28(r13)
    addi    r0, r3, 0x656c
    lis     r3, 0x800b
    stw     r0, -0x6b28(r13)
    subi    r4, r3, 0x3c64
    subi    r3, r13, 0x6b28
    addi    r5, r28, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b2c(r13)
branch_0x800aeb0c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b28
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800aecb0
    lha     r3, 0x7c(r29)
    lha     r0, 0x7c(r31)
    cmpw    r3, r0
    ble-    branch_0x800aecb0
    li      r29, 0x0
    stw     r29, 0xe0(sp)
    li      r0, 0x64
    stw     r0, 0xe4(sp)
    lwz     r3, 0xe0(sp)
    lwz     r0, 0xe4(sp)
    subf    r27, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x6348(rtoc)
    stw     r0, 0xfc(sp)
    lis     r30, 0x4330
    xoris   r0, r27, 0x8000
    lfs     f1, -0x634c(rtoc)
    stw     r30, 0xf8(sp)
    lwz     r3, 0xe0(sp)
    stw     r0, 0xf4(sp)
    lfd     f0, 0xf8(sp)
    stw     r30, 0xf0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xf0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xe8(sp)
    lwz     r0, 0xec(sp)
    add     r3, r3, r0
    srawi   r0, r3, 2
    addze   r0, r0
    slwi    r0, r0, 2
    subfc.  r0, r0, r3
    bne-    branch_0x800aecb0
    lwz     r0, -0x7e7c(r13)
    stw     r0, 0x1a4(r31)
    lwz     r3, 0x124(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    stw     r29, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    subf    r27, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x124(r31)
    stw     r0, 0xec(sp)
    xoris   r0, r27, 0x8000
    lwz     r5, 0x0(r3)
    addi    r4, sp, 0xb4
    stw     r30, 0xe8(sp)
    lfd     f3, -0x6348(rtoc)
    stw     r0, 0xf4(sp)
    lfd     f0, 0xe8(sp)
    stw     r30, 0xf0(sp)
    fsubs   f2, f0, f3
    lfs     f1, -0x634c(rtoc)
    lfd     f0, 0xf0(sp)
    lwz     r3, 0xa8(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    lwz     r5, 0x0(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xf8(sp)
    lwz     r0, 0xfc(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    stw     r29, 0xc0(sp)
    li      r0, 0x1
    lwz     r4, 0xb4(sp)
    lwz     r3, 0xb8(sp)
    stw     r4, 0xc4(sp)
    stw     r3, 0xc8(sp)
    lwz     r3, 0xbc(sp)
    stw     r3, 0xcc(sp)
    lwz     r3, 0xc0(sp)
    stw     r3, 0xf4(r31)
    lwz     r4, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0xcc(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0xc0(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0xc4(sp)
    lwz     r3, 0xc8(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0xcc(sp)
    stw     r3, 0x110(r31)
    stw     r29, 0x118(r31)
    stb     r0, 0x1b2(r31)
branch_0x800aecb0:
    lbz     r0, -0x6b34(r13)
    extsb.  r0, r0
    bne-    branch_0x800aecf0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b30(r13)
    addi    r0, r3, 0x657c
    lis     r3, 0x800b
    stw     r0, -0x6b30(r13)
    subi    r4, r3, 0x3c00
    subi    r3, r13, 0x6b30
    addi    r5, r28, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b34(r13)
branch_0x800aecf0:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b30
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800aed0c
    li      r3, 0x0
    b       branch_0x800aed10

branch_0x800aed0c:
    li      r3, 0x1
branch_0x800aed10:
    lmw     r27, 0x104(sp)
    lwz     r0, 0x11c(sp)
    addi    sp, sp, 0x118
    mtlr    r0
    blr


.globl moveObject__9TChuuHanaFv
moveObject__9TChuuHanaFv: # 0x800aed24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    mr      r31, r3
    bl      moveObject__12TWalkerEnemyFv
    lwz     r3, 0x1a0(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x800aed60
    lfs     f0, 0x14(r31)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x198(r31)
    lfs     f0, -0x6368(rtoc)
    stfs    f0, 0x1a8(r31)
    b       branch_0x800aee8c

branch_0x800aed60:
    addi    r0, r3, 0x1
    stw     r0, 0x1a0(r31)
    lfs     f0, 0x198(r31)
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800aed7c
    stfs    f1, 0x198(r31)
branch_0x800aed7c:
    lfs     f0, 0x19c(r31)
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800aed90
    stfs    f1, 0x19c(r31)
branch_0x800aed90:
    lwz     r3, 0x1b4(r31)
    lwz     r4, 0x1a0(r31)
    lwz     r0, 0x378(r3)
    cmpw    r4, r0
    ble-    branch_0x800aee8c
    lfs     f2, 0x19c(r31)
    lfs     f1, 0x198(r31)
    lfs     f0, 0x1a8(r31)
    fsubs   f1, f2, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800aedc0
    stfs    f1, 0x1a8(r31)
branch_0x800aedc0:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x19c(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800aee08
    lwz     r4, 0x1a0(r31)
    lis     r0, 0x4330
    lfd     f1, -0x6348(rtoc)
    addi    r3, r31, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x104(sp)
    lfs     f2, 0x1a8(r31)
    stw     r0, 0x100(sp)
    lfd     f0, 0x100(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x1a8(r31)
    bl      checkStretchType__9TChuuHanaFv
    b       branch_0x800aee8c

branch_0x800aee08:
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aee4c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r4, 0x800b
    stw     r0, -0x6b58(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16e8
    subi    r4, r4, 0x37f4
    subi    r3, r13, 0x6b58
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800aee4c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b58
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800aee78
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800aee78:
    li      r0, 0x1
    stw     r0, 0x1a0(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x198(r31)
branch_0x800aee8c:
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aeed0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b48(r13)
    addi    r0, r3, 0x65ac
    lis     r4, 0x800b
    stw     r0, -0x6b48(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1700
    subi    r4, r4, 0x3798
    subi    r3, r13, 0x6b48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b4c(r13)
branch_0x800aeed0:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b48
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800aefe8
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800aeef8
    li      r0, 0x1
    b       branch_0x800aeefc

branch_0x800aeef8:
    li      r0, 0x0
branch_0x800aeefc:
    cmpwi   r0, 0x0
    bne-    branch_0x800aefe8
    lwz     r4, 0x1b4(r31)
    lwz     r3, 0xc4(r31)
    lfsu    f0, 0x34(r3)
    lfs     f3, 0x350(r4)
    lfs     f2, 0x8(r3)
    fmuls   f0, f3, f0
    lfs     f1, -0x6368(rtoc)
    fmuls   f2, f3, f2
    stfs    f0, 0xf0(sp)
    stfs    f1, 0xf4(sp)
    stfs    f2, 0xf8(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xa0(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x14(sp)
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0xc8(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0xcc(sp)
    stw     r4, 0xbc(sp)
    stw     r0, 0xd0(sp)
    stw     r3, 0xc0(sp)
    lfs     f0, 0xd0(sp)
    stw     r0, 0xc4(sp)
    fmuls   f0, f0, f0
    lfs     f2, 0xbc(sp)
    fmadds  f0, f2, f2, f0
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    addi    r3, sp, 0x98
    addi    r5, r3, 0x0
    addi    r4, sp, 0xf0
    bl      PSVECAdd
    lfs     f0, -0x6368(rtoc)
    stfs    f0, 0x9c(sp)
    lwz     r3, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xa0(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x631c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800aefe8:
    lfs     f2, 0x194(r31)
    lfs     f1, -0x6318(rtoc)
    lfs     f0, -0x633c(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x800af008
    fmr     f1, f0
    b       branch_0x800af018

branch_0x800af008:
    lfs     f0, -0x6368(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800af018
    fmr     f1, f0
branch_0x800af018:
    stfs    f1, 0x194(r31)
    lwz     r3, 0x74(r31)
    lfs     f1, 0x194(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800af034
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800af034:
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    stw     r3, 0x1ec(r31)
    stw     r0, 0x1f0(r31)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x1f4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800af060
    li      r0, 0x1
    b       branch_0x800af064

branch_0x800af060:
    li      r0, 0x0
branch_0x800af064:
    cmpwi   r0, 0x0
    bne-    branch_0x800af09c
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800af088
    lwz     r0, 0x218(r31)
    cmplw   r3, r0
    beq-    branch_0x800af09c
branch_0x800af088:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800af09c:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl attackToMario__9TChuuHanaFv
attackToMario__9TChuuHanaFv: # 0x800af0b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    addi    r31, r3, 0x0
    lbz     r0, -0x6b34(r13)
    extsb.  r0, r0
    bne-    branch_0x800af108
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b30(r13)
    addi    r0, r3, 0x657c
    lis     r4, 0x800b
    stw     r0, -0x6b30(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1724
    subi    r4, r4, 0x3c00
    subi    r3, r13, 0x6b30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b34(r13)
branch_0x800af108:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b30
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800af2f8
    lbz     r0, -0x7e63(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800af138
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x800af300

branch_0x800af138:
    lbz     r0, -0x6b2c(r13)
    extsb.  r0, r0
    bne-    branch_0x800af17c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b28(r13)
    addi    r0, r3, 0x656c
    lis     r4, 0x800b
    stw     r0, -0x6b28(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1730
    subi    r4, r4, 0x3c64
    subi    r3, r13, 0x6b28
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b2c(r13)
branch_0x800af17c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b28
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800af2e8
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800af300
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_THROW
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x34
    lwz     r0, 0x14(r31)
    lwz     r4, MarioHitActorPos(r13)
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x3c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x34(sp)
    lwz     r3, 0x38(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0xa8(sp)
    lfs     f2, -0x6368(rtoc)
    stw     r0, 0xac(sp)
    lfs     f1, 0xac(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800af214
    lfs     f0, 0xa4(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800af20c
    lfs     f2, -0x6314(rtoc)
    b       branch_0x800af290

branch_0x800af20c:
    lfs     f2, -0x6310(rtoc)
    b       branch_0x800af290

branch_0x800af214:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800af254
    lfs     f2, 0xa4(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6348(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x630c(rtoc)
    stw     r0, 0xb4(sp)
    lis     r0, 0x4330
    stw     r0, 0xb0(sp)
    lfd     f1, 0xb0(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x800af290

branch_0x800af254:
    fneg    f1, f1
    lfs     f2, 0xa4(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6348(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x630c(rtoc)
    stw     r0, 0xb4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6308(rtoc)
    stw     r0, 0xb0(sp)
    lfd     f2, 0xb0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x800af290:
    lfs     f1, -0x6368(rtoc)
    addi    r3, sp, 0x74
    fmr     f3, f1
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, -0x6368(rtoc)
    addi    r4, sp, 0x68
    lfs     f1, -0x633c(rtoc)
    mr      r5, r4
    stfs    f0, 0x68(sp)
    lfs     f0, -0x6304(rtoc)
    addi    r3, sp, 0x74
    stfs    f1, 0x6c(sp)
    stfs    f0, 0x70(sp)
    bl      PSMTXMultVec
    lwz     r4, 0x1b4(r31)
    addi    r3, sp, 0x68
    lfs     f1, 0x4f4(r4)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r3, 0x21c(r31)
    li      r0, 0x0
    stb     r0, 0x0(r3)
    b       branch_0x800af300

branch_0x800af2e8:
    addi    r3, r31, 0x0
    li      r4, MARIOMSG_HURT
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x800af300

branch_0x800af2f8:
    li      r0, 0x1
    stb     r0, 0x215(r31)
branch_0x800af300:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl behaveToWater__9TChuuHanaFP9THitActor
behaveToWater__9TChuuHanaFP9THitActor: # 0x800af314
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x1a0(sp)
    stw     r31, 0x19c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x198(sp)
    stw     r29, 0x194(sp)
    li      r29, 0x1
    stb     r29, 0x165(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0x16d0
    stw     r0, 0x224(r31)
    lwz     r4, 0x70(r31)
    lwz     r3, 0x68(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x68(r4)
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800af394
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b48(r13)
    addi    r0, r3, 0x65ac
    lis     r3, 0x800b
    stw     r0, -0x6b48(r13)
    subi    r4, r3, 0x3798
    subi    r3, r13, 0x6b48
    addi    r5, r30, 0x30
    bl      __register_global_object
    stb     r29, -0x6b4c(r13)
branch_0x800af394:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b48
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800af4cc
    lwz     r5, MarioHitActorPos(r13)
    addi    r3, sp, 0x17c
    lfs     f1, 0x10(r31)
    mr      r4, r3
    lfs     f0, 0x0(r5)
    lfs     f3, 0x18(r31)
    fsubs   f1, f1, f0
    lfs     f2, 0x8(r5)
    lfs     f0, -0x6368(rtoc)
    fsubs   f2, f3, f2
    stfs    f1, 0x17c(sp)
    stfs    f0, 0x180(sp)
    stfs    f2, 0x184(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x1b4(r31)
    lfs     f0, 0x17c(sp)
    lfs     f1, 0x33c(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x17c(sp)
    lfs     f0, 0x180(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x180(sp)
    lfs     f0, 0x184(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x184(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f0, -0x6368(rtoc)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x11c(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x18(sp)
    lwz     r4, 0x10(sp)
    lwz     r3, 0x14(sp)
    stw     r4, 0x144(sp)
    lwz     r0, 0x18(sp)
    stw     r3, 0x148(sp)
    stw     r4, 0x138(sp)
    stw     r0, 0x14c(sp)
    stw     r3, 0x13c(sp)
    lfs     f1, 0x14c(sp)
    stw     r0, 0x140(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x138(sp)
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    addi    r3, sp, 0x114
    addi    r5, r3, 0x0
    addi    r4, sp, 0x17c
    bl      PSVECAdd
    lfs     f0, -0x6368(rtoc)
    stfs    f0, 0x118(sp)
    lwz     r3, 0x114(sp)
    lwz     r0, 0x118(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x11c(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6370(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x800af910

branch_0x800af4cc:
    lbz     r0, -0x6b6c(r13)
    extsb.  r0, r0
    bne-    branch_0x800af50c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b68(r13)
    addi    r0, r3, 0x65ec
    lis     r3, 0x800b
    stw     r0, -0x6b68(r13)
    subi    r4, r3, 0x3cc0
    subi    r3, r13, 0x6b68
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b6c(r13)
branch_0x800af50c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b68
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800af628
    lbz     r0, -0x6b2c(r13)
    extsb.  r0, r0
    bne-    branch_0x800af560
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b28(r13)
    addi    r0, r3, 0x656c
    lis     r3, 0x800b
    stw     r0, -0x6b28(r13)
    subi    r4, r3, 0x3c64
    subi    r3, r13, 0x6b28
    addi    r5, r30, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b2c(r13)
branch_0x800af560:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b28
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800af628
    lbz     r0, -0x6b1c(r13)
    extsb.  r0, r0
    bne-    branch_0x800af5b4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b18(r13)
    addi    r0, r3, 0x654c
    lis     r3, 0x800b
    stw     r0, -0x6b18(r13)
    subi    r4, r3, 0x43e4
    subi    r3, r13, 0x6b18
    addi    r5, r30, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b1c(r13)
branch_0x800af5b4:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b18
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800af628
    lbz     r0, -0x7e75(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800af810
    lbz     r0, -0x6b54(r13)
    extsb.  r0, r0
    bne-    branch_0x800af614
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b50(r13)
    addi    r0, r3, 0x65bc
    lis     r3, 0x800b
    stw     r0, -0x6b50(r13)
    subi    r4, r3, 0x3494
    subi    r3, r13, 0x6b50
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b54(r13)
branch_0x800af614:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b50
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800af810
branch_0x800af628:
    li      r4, 0x1
    stb     r4, 0x165(r31)
    lbz     r0, -0x7e64(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800af644
    lwz     r3, 0x21c(r31)
    stb     r4, 0x0(r3)
branch_0x800af644:
    lwz     r5, MarioHitActorPos(r13)
    addi    r3, sp, 0x170
    lfs     f1, 0x10(r31)
    mr      r4, r3
    lfs     f0, 0x0(r5)
    lfs     f3, 0x18(r31)
    fsubs   f1, f1, f0
    lfs     f2, 0x8(r5)
    lfs     f0, -0x6368(rtoc)
    fsubs   f2, f3, f2
    stfs    f1, 0x170(sp)
    stfs    f0, 0x174(sp)
    stfs    f2, 0x178(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x1b4(r31)
    lfs     f0, 0x170(sp)
    lfs     f1, 0x4e0(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x170(sp)
    lfs     f0, 0x174(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x174(sp)
    lfs     f0, 0x178(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x178(sp)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800af6bc
    li      r0, 0x1
    b       branch_0x800af6c0

branch_0x800af6bc:
    li      r0, 0x0
branch_0x800af6c0:
    cmpwi   r0, 0x0
    bne-    branch_0x800af6f8
    lbz     r0, -0x7e74(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800af6e8
    lfs     f1, 0x14(r31)
    lfs     f0, -0x636c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x800af6f8

branch_0x800af6e8:
    lfs     f1, 0x14(r31)
    lfs     f0, -0x633c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800af6f8:
    lwz     r3, 0x170(sp)
    lwz     r0, 0x174(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x178(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lbz     r0, -0x6b54(r13)
    extsb.  r0, r0
    bne-    branch_0x800af75c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b50(r13)
    addi    r0, r3, 0x65bc
    lis     r3, 0x800b
    stw     r0, -0x6b50(r13)
    subi    r4, r3, 0x3494
    subi    r3, r13, 0x6b50
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b54(r13)
branch_0x800af75c:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6b50
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800af804
    lbz     r0, -0x6b54(r13)
    extsb.  r0, r0
    bne-    branch_0x800af7ac
    lis     r4, 0x803b
    subi    r0, r4, 0x48f4
    lis     r4, 0x803b
    stw     r0, -0x6b50(r13)
    addi    r0, r4, 0x65bc
    lis     r4, 0x800b
    stw     r0, -0x6b50(r13)
    subi    r4, r4, 0x3494
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b54(r13)
branch_0x800af7ac:
    subi    r6, r13, 0x6b50
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800af804
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800af7f8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800af7f8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800af7f8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800af804:
    li      r0, 0x0
    stw     r0, 0x160(r31)
    b       branch_0x800af910

branch_0x800af810:
    lbz     r0, -0x7e75(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x800af910
    lbz     r0, -0x6b5c(r13)
    extsb.  r0, r0
    bne-    branch_0x800af85c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b58(r13)
    addi    r0, r3, 0x65cc
    lis     r3, 0x800b
    stw     r0, -0x6b58(r13)
    subi    r4, r3, 0x37f4
    subi    r3, r13, 0x6b58
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b5c(r13)
branch_0x800af85c:
    lwz     r3, 0x8c(r31)
    subi    r0, r13, 0x6b58
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800af910
    lwz     r5, MarioHitActorPos(r13)
    addi    r3, sp, 0x164
    lfs     f1, 0x10(r31)
    mr      r4, r3
    lfs     f0, 0x0(r5)
    lfs     f3, 0x18(r31)
    fsubs   f1, f1, f0
    lfs     f2, 0x8(r5)
    lfs     f0, -0x6370(rtoc)
    fsubs   f2, f3, f2
    stfs    f1, 0x164(sp)
    stfs    f0, 0x168(sp)
    stfs    f2, 0x16c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x1b4(r31)
    lfs     f1, -0x636c(rtoc)
    lfs     f0, 0x33c(r3)
    lfs     f2, 0x164(sp)
    fmuls   f1, f1, f0
    fmuls   f0, f2, f1
    stfs    f0, 0x164(sp)
    lfs     f0, 0x168(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x168(sp)
    lfs     f0, 0x16c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x16c(sp)
    lwz     r3, 0x164(sp)
    lwz     r0, 0x168(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x16c(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6300(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800af910:
    lwz     r0, 0x1a4(sp)
    lwz     r31, 0x19c(sp)
    lwz     r30, 0x198(sp)
    mtlr    r0
    lwz     r29, 0x194(sp)
    addi    sp, sp, 0x1a0
    blr


.globl setBckAnm__9TChuuHanaFi
setBckAnm__9TChuuHanaFi: # 0x800af92c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    lfs     f0, -0x633c(rtoc)
    stfs    f0, 0x194(r3)
    lwz     r3, 0x74(r3)
    lfs     f1, 0x194(r30)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800af968
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x800af968:
    lwz     r5, 0x74(r30)
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    bne-    branch_0x800af980
    li      r4, 0x0
    b       branch_0x800af984

branch_0x800af980:
    lwz     r4, 0x24(r3)
branch_0x800af984:
    lwz     r3, 0xc(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x800af994
    bl      setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
branch_0x800af994:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      setBckAnm__11TSmallEnemyFi
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl reset__9TChuuHanaFv
reset__9TChuuHanaFv: # 0x800af9b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    mr      r30, r3
    stw     r29, 0x94(sp)
    stw     r30, -0x6b70(r13)
    bl      reset__12TWalkerEnemyFv
    li      r31, 0x0
    stb     r31, 0x215(r30)
    li      r0, 0x1e
    stw     r0, 0x1a4(r30)
    lfs     f0, -0x6364(rtoc)
    stfs    f0, 0xc0(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x1f8(r30)
    stw     r0, 0x1fc(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x200(r30)
    lfs     f0, -0x6368(rtoc)
    stfs    f0, 0x19c(r30)
    stfs    f0, 0x198(r30)
    stw     r31, 0x1a0(r30)
    stw     r31, 0x224(r30)
    lwz     r0, -0x7e7c(r13)
    stw     r0, 0x1a4(r30)
    lwz     r3, 0x124(r30)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    stw     r31, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    subf    r29, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x124(r30)
    stw     r0, 0x8c(sp)
    lis     r6, 0x4330
    lwz     r5, 0x0(r3)
    xoris   r0, r29, 0x8000
    stw     r6, 0x88(sp)
    lfd     f3, -0x6348(rtoc)
    addi    r4, sp, 0x5c
    stw     r0, 0x84(sp)
    lfd     f0, 0x88(sp)
    stw     r6, 0x80(sp)
    fsubs   f2, f0, f3
    lfs     f1, -0x634c(rtoc)
    lfd     f0, 0x80(sp)
    lwz     r3, 0x50(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    lwz     r5, 0x0(r5)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    stw     r31, 0x68(sp)
    li      r0, 0x1
    lwz     r4, 0x5c(sp)
    lwz     r3, 0x60(sp)
    stw     r4, 0x6c(sp)
    stw     r3, 0x70(sp)
    lwz     r3, 0x64(sp)
    stw     r3, 0x74(sp)
    lwz     r3, 0x68(sp)
    stw     r3, 0xf4(r30)
    lwz     r4, 0x6c(sp)
    lwz     r3, 0x70(sp)
    stw     r4, 0xf8(r30)
    stw     r3, 0xfc(r30)
    lwz     r3, 0x74(sp)
    stw     r3, 0x100(r30)
    lwz     r3, 0x68(sp)
    stw     r3, 0x104(r30)
    lwz     r4, 0x6c(sp)
    lwz     r3, 0x70(sp)
    stw     r4, 0x108(r30)
    stw     r3, 0x10c(r30)
    lwz     r3, 0x74(sp)
    stw     r3, 0x110(r30)
    stw     r31, 0x118(r30)
    stb     r0, 0x1b2(r30)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl perform__9TChuuHanaFUlPQ26JDrama9TGraphics
perform__9TChuuHanaFUlPQ26JDrama9TGraphics: # 0x800afb3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x24(sp)
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x800afbe0
    lwz     r3, -0x6318(r13)
    addi    r4, r30, 0x10
    bl      isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    bne-    branch_0x800afbac
    lwz     r3, -0x6318(r13)
    addi    r4, sp, 0x1c
    bl      isInMirror__19TMirrorModelManagerCFRQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    beq-    branch_0x800afbe0
branch_0x800afbac:
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x800afbd0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r30)
    bl      calc__6MActorFv
branch_0x800afbd0:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x800afbe0
    lwz     r3, 0x74(r30)
    bl      viewCalc__6MActorFv
branch_0x800afbe0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl setMActorAndKeeper__9TChuuHanaFv
setMActorAndKeeper__9TChuuHanaFv: # 0x800afbf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x18
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800afc30
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800afc30:
    stw     r30, 0x78(r31)
    lis     r3, 0x8038
    subi    r4, r3, 0x2344
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


.globl init__9TChuuHanaFP12TLiveManager
init__9TChuuHanaFP12TLiveManager: # 0x800afc64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, 0x1000
    addi    r0, r3, 0x16
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    stw     r0, 0x150(r31)
    lwz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 2, 0
    stw     r0, 0x64(r31)
    lbz     r0, -0x6b6c(r13)
    extsb.  r0, r0
    bne-    branch_0x800afce4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b68(r13)
    addi    r0, r3, 0x65ec
    lis     r4, 0x800b
    stw     r0, -0x6b68(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x16d0
    subi    r4, r4, 0x3cc0
    subi    r3, r13, 0x6b68
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b6c(r13)
branch_0x800afce4:
    lwz     r6, 0x8c(r31)
    li      r4, 0x0
    lis     r3, 0x800b
    stw     r4, 0x8(r6)
    subi    r0, r13, 0x6b68
    subi    r5, r3, 0x120
    stw     r4, 0x20(r6)
    stw     r0, 0x14(r6)
    stw     r0, 0x18(r6)
    stw     r4, 0x1c(r6)
    lwz     r3, 0x74(r31)
    lbz     r4, -0x7e78(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    li      r0, 0x1
    stb     r0, 0x130(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800afd34
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x800afd34:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1b4(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800afd84
    lis     r3, 0x8038
    subi    r4, r3, 0x2338
    addi    r3, r30, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x800afd84:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x0
    bl      init__12TMirrorActorFP8J3DModelUs
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __ct__9TChuuHanaFPCc
__ct__9TChuuHanaFPCc: # 0x800afdb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, 0x803b
    addi    r3, r3, 0x65fc
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r4, 0x803b
    stw     r0, 0x20(r31)
    lis     r3, 0x803b
    li      r6, 0x0
    lfs     f0, -0x6368(rtoc)
    li      r5, 0x1
    addi    r4, r4, 0x17a0
    stfs    f0, 0x194(r31)
    addi    r0, r3, 0x67b4
    addi    r3, r31, 0x0
    stfs    f0, 0x198(r31)
    stfs    f0, 0x19c(r31)
    stw     r6, 0x1a0(r31)
    stw     r6, 0x1a4(r31)
    stfs    f0, 0x1a8(r31)
    stw     r6, 0x1ac(r31)
    stb     r5, 0x1b0(r31)
    stb     r6, 0x1b1(r31)
    stb     r6, 0x1b2(r31)
    stfs    f0, 0x1b8(r31)
    stfs    f0, 0x210(r31)
    stb     r6, 0x214(r31)
    stb     r6, 0x215(r31)
    stw     r6, 0x218(r31)
    stw     r6, 0x21c(r31)
    stfs    f0, 0x220(r31)
    stw     r6, 0x224(r31)
    stw     r4, 0x228(r31)
    stw     r0, 0x228(r31)
    stw     r31, 0x22c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl draw__23TChuuHanaAseParCallbackFP14JPABaseEmitterP15JPABaseParticle
draw__23TChuuHanaAseParCallbackFP14JPABaseEmitterP15JPABaseParticle: # 0x800afe68
    blr


.globl execute__23TChuuHanaAseParCallbackFP14JPABaseEmitterP15JPABaseParticle
execute__23TChuuHanaAseParCallbackFP14JPABaseEmitterP15JPABaseParticle: # 0x800afe6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    lwz     r3, 0x4(r3)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x800afecc
    lwz     r4, 0x74(r3)
    mr      r3, r31
    lbz     r0, -0x7e77(r13)
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r4, 0x58(r4)
    add     r4, r4, r0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lfs     f0, -0x6338(rtoc)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x174(r31)
    stfs    f0, 0x178(r31)
    stfs    f0, 0x17c(r31)
branch_0x800afecc:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl ChuuHanaBodyCallback__FP7J3DNodei
ChuuHanaBodyCallback__FP7J3DNodei: # 0x800afee0
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stw     r31, 0x134(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x130(sp)
    bne-    branch_0x800b0168
    lwz     r30, -0x6b70(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x800aff78
    lbz     r0, -0x6b4c(r13)
    extsb.  r0, r0
    bne-    branch_0x800aff50
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6b48(r13)
    addi    r0, r3, 0x65ac
    lis     r4, 0x800b
    stw     r0, -0x6b48(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x1700
    subi    r4, r4, 0x3798
    subi    r3, r13, 0x6b48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6b4c(r13)
branch_0x800aff50:
    lwz     r3, 0x8c(r30)
    subi    r0, r13, 0x6b48
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800aff6c
    li      r0, 0x1
    b       branch_0x800aff70

branch_0x800aff6c:
    li      r0, 0x0
branch_0x800aff70:
    clrlwi. r0, r0, 24
    bne-    branch_0x800aff80
branch_0x800aff78:
    li      r3, 0x1
    b       branch_0x800b016c

branch_0x800aff80:
    lhz     r31, 0x18(r31)
    lwz     r3, -0x6b70(r13)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    mulli   r0, r31, 0x30
    lfs     f1, -0x6368(rtoc)
    lfs     f0, -0x633c(rtoc)
    stfs    f1, 0x108(sp)
    add     r30, r3, r0
    lwz     r3, -0x6b70(r13)
    stfs    f1, 0x118(sp)
    stfs    f1, 0x128(sp)
    stfs    f0, 0xfc(sp)
    stfs    f1, 0x100(sp)
    stfs    f1, 0x104(sp)
    stfs    f1, 0x10c(sp)
    stfs    f0, 0x110(sp)
    stfs    f1, 0x114(sp)
    stfs    f1, 0x11c(sp)
    stfs    f1, 0x120(sp)
    stfs    f0, 0x124(sp)
    lfs     f2, 0x20c(r3)
    lfs     f0, 0x204(r3)
    stfs    f0, 0xc0(sp)
    stfs    f1, 0xc4(sp)
    stfs    f2, 0xc8(sp)
    lfs     f0, 0xc0(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800b0008
    lfs     f0, 0xc8(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800b0008
    lfs     f0, -0x62fc(rtoc)
    stfs    f0, 0xc0(sp)
branch_0x800b0008:
    lfs     f1, -0x6368(rtoc)
    addi    r3, sp, 0xa8
    lfs     f0, -0x633c(rtoc)
    addi    r4, sp, 0xc0
    stfs    f1, 0xa8(sp)
    addi    r5, sp, 0xb4
    stfs    f0, 0xac(sp)
    stfs    f1, 0xb0(sp)
    bl      PSVECCrossProduct
    lfs     f3, 0x18(r30)
    lwz     r3, -0x6b70(r13)
    fmuls   f0, f3, f3
    lfs     f5, 0x8(r30)
    lfs     f12, 0x28(r30)
    lfs     f4, -0x6368(rtoc)
    fmadds  f1, f5, f5, f0
    lfs     f0, 0x210(r3)
    lfs     f6, 0x0(r30)
    fmadds  f13, f12, f12, f1
    lfs     f7, 0x10(r30)
    lfs     f8, 0x20(r30)
    lfs     f9, 0x4(r30)
    fcmpu   cr0, f4, f13
    lfs     f10, 0x14(r30)
    lfs     f11, 0x24(r30)
    bne-    branch_0x800b0074
    b       branch_0x800b0090

branch_0x800b0074:
    lfs     f1, 0xb8(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f1, f1, f3
    lfs     f3, 0xbc(sp)
    fmadds  f1, f2, f5, f1
    fmadds  f1, f3, f12, f1
    fdivs   f4, f1, f13
branch_0x800b0090:
    fmuls   f1, f10, f10
    lfs     f5, -0x6368(rtoc)
    fmadds  f1, f9, f9, f1
    fmadds  f12, f11, f11, f1
    fcmpu   cr0, f5, f12
    bne-    branch_0x800b00ac
    b       branch_0x800b00c8

branch_0x800b00ac:
    lfs     f1, 0xb8(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f1, f1, f10
    lfs     f3, 0xbc(sp)
    fmadds  f1, f2, f9, f1
    fmadds  f1, f3, f11, f1
    fdivs   f5, f1, f12
branch_0x800b00c8:
    fmuls   f1, f7, f7
    lfs     f2, -0x6368(rtoc)
    fmadds  f1, f6, f6, f1
    fmadds  f9, f8, f8, f1
    fcmpu   cr0, f2, f9
    bne-    branch_0x800b00e4
    b       branch_0x800b0100

branch_0x800b00e4:
    lfs     f1, 0xb8(sp)
    lfs     f2, 0xb4(sp)
    fmuls   f1, f1, f7
    lfs     f3, 0xbc(sp)
    fmadds  f1, f2, f6, f1
    fmadds  f1, f3, f8, f1
    fdivs   f2, f1, f9
branch_0x800b0100:
    stfs    f2, 0x78(sp)
    addi    r3, sp, 0xcc
    lfs     f1, -0x62f8(rtoc)
    addi    r4, sp, 0x78
    stfs    f5, 0x7c(sp)
    fmuls   f1, f1, f0
    stfs    f4, 0x80(sp)
    bl      PSMTXRotAxisRad
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0xcc
    bl      PSMTXConcat
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0xfc
    bl      PSMTXConcat
    lis     r3, 0x8040
    addi    r31, r3, 0x4788
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0xcc
    bl      PSMTXConcat
    addi    r5, r31, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0xfc
    bl      PSMTXConcat
branch_0x800b0168:
    li      r3, 0x1
branch_0x800b016c:
    lwz     r0, 0x13c(sp)
    lwz     r31, 0x134(sp)
    lwz     r30, 0x130(sp)
    mtlr    r0
    addi    sp, sp, 0x138
    blr


.globl initSetEnemies__16TChuuHanaManagerFv
initSetEnemies__16TChuuHanaManagerFv: # 0x800b0184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stmw    r21, 0x64(sp)
    mr      r23, r3
    lis     r3, 0x803b
    addi    r26, r3, 0x6534
    addi    r28, r23, 0x64
    addi    r29, r23, 0x65
    addi    r30, r23, 0x66
    li      r25, 0x0
    li      r22, 0x0
    lis     r31, 0x4330
    lfd     f29, -0x6348(rtoc)
    lfs     f30, -0x634c(rtoc)
    lfs     f31, -0x62f4(rtoc)
    b       branch_0x800b02e0

branch_0x800b01d4:
    add     r4, r26, r22
    lwz     r3, -0x70b0(r13)
    lwz     r4, 0x0(r4)
    bl      getGraphByName__10TConductorFPCc
    lwz     r4, 0x18(r23)
    cmpwi   r25, 0x0
    addi    r27, r3, 0x0
    lwzx    r24, r4, r22
    bne-    branch_0x800b0200
    stw     r28, 0x21c(r24)
    b       branch_0x800b0214

branch_0x800b0200:
    cmpwi   r25, 0x3
    bge-    branch_0x800b0210
    stw     r29, 0x21c(r24)
    b       branch_0x800b0214

branch_0x800b0210:
    stw     r30, 0x21c(r24)
branch_0x800b0214:
    lwz     r3, 0x8(r27)
    li      r0, 0x0
    stw     r0, 0x40(sp)
    stw     r3, 0x44(sp)
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    subf    r21, r3, r0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, 0x40(sp)
    stw     r0, 0x5c(sp)
    xoris   r0, r21, 0x8000
    lwz     r5, 0x0(r27)
    addi    r4, sp, 0x34
    stw     r31, 0x58(sp)
    stw     r0, 0x54(sp)
    lfd     f0, 0x58(sp)
    stw     r31, 0x50(sp)
    fsubs   f1, f0, f29
    lfd     f0, 0x50(sp)
    fmuls   f1, f30, f1
    fsubs   f0, f0, f29
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    add     r0, r3, r0
    slwi    r0, r0, 4
    add     r3, r5, r0
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r4, 0x34(sp)
    mr      r3, r24
    lwz     r0, 0x38(sp)
    stw     r4, 0x10(r24)
    stw     r0, 0x14(r24)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x18(r24)
    lfs     f0, 0x14(r24)
    fadds   f0, f0, f31
    stfs    f0, 0x14(r24)
    lwz     r0, 0xf0(r24)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r24)
    lwz     r4, 0x124(r24)
    stw     r27, 0x0(r4)
    lwz     r12, 0x0(r24)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    addi    r25, r25, 0x1
    addi    r22, r22, 0x4
branch_0x800b02e0:
    lwz     r0, 0x10(r23)
    cmpw    r25, r0
    blt+    branch_0x800b01d4
    lmw     r21, 0x64(sp)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    addi    sp, sp, 0xa8
    blr


.globl createEnemyInstance__16TChuuHanaManagerFv
createEnemyInstance__16TChuuHanaManagerFv: # 0x800b030c
    mflr    r0
    li      r3, 0x230
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800b033c
    lis     r3, 0x8038
    subi    r4, r3, 0x2328
    addi    r3, r31, 0x0
    bl      __ct__9TChuuHanaFPCc
branch_0x800b033c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__16TChuuHanaManagerFUlPQ26JDrama9TGraphics
perform__16TChuuHanaManagerFUlPQ26JDrama9TGraphics: # 0x800b0354
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x78(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x74(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x800b0478
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800b03dc
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r3, 0x44(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0xcf
    bne-    branch_0x800b03dc
    lwz     r3, 0x60(r29)
    cmpwi   r3, 0x384
    bge-    branch_0x800b03dc
    addi    r0, r3, 0x1
    stw     r0, 0x60(r29)
    lwz     r0, 0x60(r29)
    cmpwi   r0, 0x384
    bne-    branch_0x800b03dc
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x2e
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800b03dc:
    lwz     r0, 0x68(r29)
    cmpwi   r0, 0x3c
    blt-    branch_0x800b0414
    cmpwi   r0, 0x50
    bge-    branch_0x800b0414
    li      r0, 0x3e8
    stw     r0, 0x60(r29)
    li      r0, 0x50
    li      r4, 0x2f
    stw     r0, 0x68(r29)
    li      r5, 0x1
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800b0414:
    lwz     r0, 0x6c(r29)
    cmpwi   r0, 0x5
    beq-    branch_0x800b0428
    cmpwi   r0, 0xa
    bne-    branch_0x800b0448
branch_0x800b0428:
    lwz     r3, 0x6c(r29)
    li      r4, 0x31
    li      r5, 0x1
    addi    r0, r3, 0x1
    stw     r0, 0x6c(r29)
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800b0448:
    lwz     r3, 0x70(r29)
    cmpwi   r3, 0x1
    bne-    branch_0x800b0478
    addi    r0, r3, 0x1
    stw     r0, 0x70(r29)
    li      r0, 0x50
    li      r4, 0x30
    stw     r0, 0x68(r29)
    li      r5, 0x1
    lwz     r3, gpMarDirector(r13)
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800b0478:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl load__16TChuuHanaManagerFR20JSUMemoryInputStream
load__16TChuuHanaManagerFR20JSUMemoryInputStream: # 0x800b04a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x534
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x800b04e0
    lis     r3, 0x8038
    subi    r4, r3, 0x231c
    addi    r3, r30, 0x0
    bl      __ct__23TChuuHanaSaveLoadParamsFPCc
branch_0x800b04e0:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__16TChuuHanaManagerFPCc
__ct__16TChuuHanaManagerFPCc: # 0x800b04fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x67c4
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x60(r31)
    stw     r0, 0x68(r31)
    stw     r0, 0x6c(r31)
    stw     r0, 0x70(r31)
    stw     r0, -0x6b70(r13)
    stb     r0, 0x64(r31)
    stb     r0, 0x65(r31)
    stb     r0, 0x66(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __ct__23TChuuHanaSaveLoadParamsFPCc
__ct__23TChuuHanaSaveLoadParamsFPCc: # 0x800b055c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    subi    r30, r5, 0x2500
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x1f8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x1f8
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x32c(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x633c(rtoc)
    addi    r3, r30, 0x208
    stfs    f0, 0x33c(r31)
    stw     r28, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x208
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x340(r31)
    addi    r3, r30, 0x218
    lfs     f0, -0x633c(rtoc)
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x218
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0x354(r31)
    li      r0, 0xc8
    lis     r3, 0x803b
    stw     r0, 0x364(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x22c
    stw     r26, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x22c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x368(r31)
    li      r0, 0x5
    addi    r3, r30, 0x23c
    stw     r0, 0x378(r31)
    stw     r26, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x23c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x37c(r31)
    addi    r3, r30, 0x250
    lfs     f0, -0x62f0(rtoc)
    stfs    f0, 0x38c(r31)
    stw     r28, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x250
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x264
    lfs     f0, -0x6370(rtoc)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x264
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x27c
    lfs     f0, -0x62ec(rtoc)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x27c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x294
    lfs     f0, -0x6354(rtoc)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x294
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    addi    r3, r30, 0x2a8
    lfs     f0, -0x62f0(rtoc)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x2a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e0(r31)
    addi    r3, r30, 0x2bc
    lfs     f0, -0x6370(rtoc)
    stfs    f0, 0x3f0(r31)
    stw     r28, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x2bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x2d4
    lfs     f0, -0x62ec(rtoc)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    addi    r3, r30, 0x2ec
    lfs     f0, -0x6354(rtoc)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x41c
    addi    r6, r30, 0x2ec
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41c(r31)
    addi    r3, r30, 0x300
    lfs     f0, -0x62f0(rtoc)
    stfs    f0, 0x42c(r31)
    stw     r28, 0x41c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x430
    addi    r6, r30, 0x300
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x430(r31)
    addi    r3, r30, 0x314
    lfs     f0, -0x6370(rtoc)
    stfs    f0, 0x440(r31)
    stw     r28, 0x430(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x444
    addi    r6, r30, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x444(r31)
    addi    r3, r30, 0x32c
    lfs     f0, -0x62ec(rtoc)
    stfs    f0, 0x454(r31)
    stw     r28, 0x444(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x458
    addi    r6, r30, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x458(r31)
    addi    r3, r30, 0x344
    lfs     f0, -0x6354(rtoc)
    stfs    f0, 0x468(r31)
    stw     r28, 0x458(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x46c
    addi    r6, r30, 0x344
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x46c(r31)
    addi    r3, r30, 0x354
    lfs     f0, -0x62e8(rtoc)
    stfs    f0, 0x47c(r31)
    stw     r28, 0x46c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x480
    addi    r6, r30, 0x354
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x480(r31)
    addi    r3, r30, 0x368
    lfs     f0, -0x635c(rtoc)
    stfs    f0, 0x490(r31)
    stw     r28, 0x480(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x494
    addi    r6, r30, 0x368
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x494(r31)
    addi    r3, r30, 0x378
    lfs     f0, -0x635c(rtoc)
    stfs    f0, 0x4a4(r31)
    stw     r28, 0x494(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4a8
    addi    r6, r30, 0x378
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4a8(r31)
    addi    r3, r30, 0x384
    lfs     f0, -0x62e4(rtoc)
    stfs    f0, 0x4b8(r31)
    stw     r28, 0x4a8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4bc
    addi    r6, r30, 0x384
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4bc(r31)
    addi    r3, r30, 0x394
    lfs     f0, -0x62e0(rtoc)
    stfs    f0, 0x4cc(r31)
    stw     r28, 0x4bc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4d0
    addi    r6, r30, 0x394
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4d0(r31)
    addi    r3, r30, 0x3a4
    lfs     f0, -0x633c(rtoc)
    stfs    f0, 0x4e0(r31)
    stw     r28, 0x4d0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4e4
    addi    r6, r30, 0x3a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4e4(r31)
    addi    r3, r30, 0x3b4
    lfs     f0, -0x62dc(rtoc)
    stfs    f0, 0x4f4(r31)
    stw     r28, 0x4e4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x4f8
    addi    r6, r30, 0x3b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x4f8(r31)
    addi    r3, r30, 0x3c0
    lfs     f0, -0x636c(rtoc)
    stfs    f0, 0x508(r31)
    stw     r28, 0x4f8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x50c
    addi    r6, r30, 0x3c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x50c(r31)
    li      r0, 0x12c
    addi    r3, r30, 0x3d0
    stw     r0, 0x51c(r31)
    stw     r26, 0x50c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x520
    addi    r6, r30, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x520(r31)
    li      r0, 0x3c
    mr      r3, r31
    stw     r0, 0x530(r31)
    stw     r26, 0x520(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl isFindMario__9TChuuHanaFf
isFindMario__9TChuuHanaFf: # 0x800b0a40
    li      r3, 0x0
    blr


.globl __dt__9TChuuHanaFv
__dt__9TChuuHanaFv: # 0x800b0a48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b0ac8
    lis     r3, 0x803b
    addi    r3, r3, 0x65fc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b0ab8
    lis     r3, 0x803b
    addi    r3, r3, 0x27b0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800b0ab8
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800b0ab8:
    extsh.  r0, r31
    ble-    branch_0x800b0ac8
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b0ac8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TChuuHanaManagerFv
__dt__16TChuuHanaManagerFv: # 0x800b0ae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800b0b3c
    lis     r3, 0x803b
    addi    r0, r3, 0x67c4
    stw     r0, 0x0(r30)
    beq-    branch_0x800b0b2c
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800b0b2c:
    extsh.  r0, r31
    ble-    branch_0x800b0b3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800b0b3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_chuuhana_cpp
__sinit_chuuhana_cpp: # 0x800b0b58
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x16d0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0ba0
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x800b0ba0:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0bd0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x800b0bd0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0c00
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x800b0c00:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0c30
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x800b0c30:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0c60
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x800b0c60:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0c90
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x800b0c90:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0cc0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x800b0cc0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0cf0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x800b0cf0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0d20
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x800b0d20:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0d50
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x800b0d50:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0d80
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x800b0d80:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0db0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x800b0db0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0de0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x800b0de0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0e10
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x800b0e10:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800b0e40
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x800b0e40:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__9TChuuHanaFv
_32___dt__9TChuuHanaFv: # 0x800b0e54
    subi    r3, r3, 0x20
    b       __dt__9TChuuHanaFv

