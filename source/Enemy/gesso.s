
.globl __dt__15TNerveGessoTurnFv
__dt__15TNerveGessoTurnFv: # 0x800462f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80046334
    lis     r3, __vvt__15TNerveGessoTurn@ha
    addi    r0, r3, __vvt__15TNerveGessoTurn@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80046324
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80046324:
    extsh.  r0, r4
    ble-    branch_0x80046334
    mr      r3, r31
    bl      __dl__FPv
branch_0x80046334:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveGessoTurnCFP24TSpineBase_10TLiveActor_
execute__15TNerveGessoTurnCFP24TSpineBase_10TLiveActor_: # 0x8004634c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x8004639c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1b0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    b       branch_0x80046438

branch_0x8004639c:
    lfs     f1, 0x1b0(r31)
    lfs     f2, -0x6fcc(r2)
    lfs     f0, -0x6fc8(r2)
    fadds   f1, f1, f2
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x800463e0
    lfs     f0, -0x6fc4(r2)
    li      r0, 0x0
    stfs    f0, 0x1cc(r31)
    lfs     f0, 0x34(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x34(r31)
    lfs     f0, 0x1b0(r31)
    fadds   f0, f0, f2
    stfs    f0, 0x1b0(r31)
    b       branch_0x80046404

branch_0x800463e0:
    stfs    f0, 0x1b0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046400
    li      r0, 0x1
    b       branch_0x80046404

branch_0x80046400:
    li      r0, 0x0
branch_0x80046404:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046438
    lfs     f0, -0x6fd0(r2)
    li      r3, 0x1
    stfs    f0, 0x1b0(r31)
    lbz     r0, 0x1c4(r31)
    cntlzw  r0, r0
    srwi    r0, r0, 5
    stb     r0, 0x1c4(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    b       branch_0x8004643c

branch_0x80046438:
    li      r3, 0x0
branch_0x8004643c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl execute__15TNerveGessoLandCFP24TSpineBase_10TLiveActor_
execute__15TNerveGessoLandCFP24TSpineBase_10TLiveActor_: # 0x80046450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80046488
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xe
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80046488:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800464ac
    li      r0, 0x0
    stb     r0, 0x1d9(r31)
    li      r3, 0x1
    b       branch_0x800464b0

branch_0x800464ac:
    li      r3, 0x0
branch_0x800464b0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__15TNerveGessoLandFv
__dt__15TNerveGessoLandFv: # 0x800464c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80046508
    lis     r3, __vvt__15TNerveGessoLand@ha
    addi    r0, r3, __vvt__15TNerveGessoLand@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800464f8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800464f8:
    extsh.  r0, r4
    ble-    branch_0x80046508
    mr      r3, r31
    bl      __dl__FPv
branch_0x80046508:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveGessoFindMarioCFP24TSpineBase_10TLiveActor_
execute__20TNerveGessoFindMarioCFP24TSpineBase_10TLiveActor_: # 0x80046520
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80046558
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xd
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80046558:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046574
    li      r3, 0x1
    b       branch_0x80046578

branch_0x80046574:
    li      r3, 0x0
branch_0x80046578:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__20TNerveGessoFindMarioFv
__dt__20TNerveGessoFindMarioFv: # 0x8004658c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800465d0
    lis     r3, __vvt__20TNerveGessoFindMario@ha
    addi    r0, r3, __vvt__20TNerveGessoFindMario@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800465c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800465c0:
    extsh.  r0, r4
    ble-    branch_0x800465d0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800465d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveGessoRollingCFP24TSpineBase_10TLiveActor_
execute__18TNerveGessoRollingCFP24TSpineBase_10TLiveActor_: # 0x800465e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x8004664c
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80046630
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x10
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800466a4

branch_0x80046630:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x13
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800466a4

branch_0x8004664c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800466a4
    lwz     r3, 0x64(r31)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r31)
    stw     r0, 0x19c(r31)
    lbz     r0, 0x1a0(r31)
    cntlzw  r0, r0
    srwi    r0, r0, 5
    stb     r0, 0x1a0(r31)
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8004669c
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r31)
branch_0x8004669c:
    li      r3, 0x1
    b       branch_0x800466a8

branch_0x800466a4:
    li      r3, 0x0
branch_0x800466a8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__18TNerveGessoRollingFv
__dt__18TNerveGessoRollingFv: # 0x800466bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80046700
    lis     r3, __vvt__18TNerveGessoRolling@ha
    addi    r0, r3, __vvt__18TNerveGessoRolling@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800466f0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800466f0:
    extsh.  r0, r4
    ble-    branch_0x80046700
    mr      r3, r31
    bl      __dl__FPv
branch_0x80046700:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveGessoFallCFP24TSpineBase_10TLiveActor_
execute__15TNerveGessoFallCFP24TSpineBase_10TLiveActor_: # 0x80046718
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800468f4
    li      r5, 0x0
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r5, 0x88(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x94(sp)
    lwz     r0, 0x88(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x88(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800467b8
    li      r5, 0x1
branch_0x800467b8:
    clrlwi. r0, r5, 24
    beq-    branch_0x8004688c
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x48
    lwz     r0, 0x14(r31)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x50(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x48(sp)
    lwz     r3, 0x4c(sp)
    stw     r0, 0xb0(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0xb4(sp)
    lfs     f1, -0x6fd0(r2)
    stw     r0, 0xb8(sp)
    stfs    f1, 0xb4(sp)
    lfs     f0, 0xb0(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80046824
    lfs     f0, 0xb8(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80046824
    lfs     f0, -0x6fc0(r2)
    stfs    f0, 0xb8(sp)
branch_0x80046824:
    addi    r3, sp, 0xb0
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0xb0(sp)
    mr      r3, r31
    lfs     f1, -0x6fbc(r2)
    li      r4, 0x6
    fmuls   f0, f0, f1
    stfs    f0, 0xb0(sp)
    lfs     f0, 0xb8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xb8(sp)
    lwz     r5, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    stw     r5, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xb8(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800468e4

branch_0x8004688c:
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800468b4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x6
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x800468dc

branch_0x800468b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x12
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x14(r31)
    lfs     f0, -0x7f6c(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800468dc:
    li      r0, 0x3
    stw     r0, 0x19c(r31)
branch_0x800468e4:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    b       branch_0x80046dc0

branch_0x800468f4:
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80046908
    li      r0, 0x1
    b       branch_0x8004690c

branch_0x80046908:
    li      r0, 0x0
branch_0x8004690c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046b58
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046dc0
    lwz     r4, 0x15c(r31)
    cmpwi   r4, 0x6
    bne-    branch_0x8004693c
    li      r0, 0x1
    b       branch_0x80046940

branch_0x8004693c:
    li      r0, 0x0
branch_0x80046940:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046a1c
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x3c
    lwz     r0, 0x14(r31)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x44(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x3c(sp)
    lwz     r3, 0x40(sp)
    stw     r0, 0xa4(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0xa8(sp)
    lfs     f1, -0x6fd0(r2)
    stw     r0, 0xac(sp)
    stfs    f1, 0xa8(sp)
    lfs     f0, 0xa4(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800469ac
    lfs     f0, 0xac(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x800469ac
    lfs     f0, -0x6fc0(r2)
    stfs    f0, 0xac(sp)
branch_0x800469ac:
    addi    r3, sp, 0xa4
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0xa4(sp)
    mr      r3, r31
    lfs     f2, -0x6fb8(r2)
    li      r4, 0x4
    lfs     f0, -0x6fb4(r2)
    fmuls   f1, f1, f2
    stfs    f1, 0xa4(sp)
    stfs    f0, 0xa8(sp)
    lfs     f0, 0xac(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0xac(sp)
    lwz     r5, 0xa4(sp)
    lwz     r0, 0xa8(sp)
    stw     r5, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xac(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80046dc0

branch_0x80046a1c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80046a30
    li      r0, 0x1
    b       branch_0x80046a34

branch_0x80046a30:
    li      r0, 0x0
branch_0x80046a34:
    cmpwi   r0, 0x0
    bne-    branch_0x80046dc0
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80046a64
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80046a64
    cmplwi  r3, 0x4104
    bne-    branch_0x80046a6c
branch_0x80046a64:
    li      r0, 0x1
    b       branch_0x80046a70

branch_0x80046a6c:
    li      r0, 0x0
branch_0x80046a70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046ac8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x80046ac0
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80046ac0
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80046ac0:
    li      r3, 0x1
    b       branch_0x80046e10

branch_0x80046ac8:
    cmpwi   r4, 0x4
    bne-    branch_0x80046ad8
    li      r0, 0x1
    b       branch_0x80046adc

branch_0x80046ad8:
    li      r0, 0x0
branch_0x80046adc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046b00
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80046dc0

branch_0x80046b00:
    cmpwi   r4, 0x7
    bne-    branch_0x80046b10
    li      r0, 0x1
    b       branch_0x80046b14

branch_0x80046b10:
    li      r0, 0x0
branch_0x80046b14:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046dc0
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x80046b50
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80046b50
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80046b50:
    li      r3, 0x1
    b       branch_0x80046e10

branch_0x80046b58:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x6
    bne-    branch_0x80046b6c
    li      r0, 0x1
    b       branch_0x80046b70

branch_0x80046b6c:
    li      r0, 0x0
branch_0x80046b70:
    clrlwi. r0, r0, 24
    bne-    branch_0x80046b94
    cmpwi   r3, 0x12
    bne-    branch_0x80046b88
    li      r0, 0x1
    b       branch_0x80046b8c

branch_0x80046b88:
    li      r0, 0x0
branch_0x80046b8c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046bdc
branch_0x80046b94:
    lfs     f1, 0x1d0(r31)
    mr      r3, r31
    lfs     f0, -0x6fb0(r2)
    li      r4, 0x0
    fmuls   f0, f1, f0
    stfs    f0, 0x1d0(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046dc0
    li      r0, 0x4
    stw     r0, 0x19c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x4
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80046dc0

branch_0x80046bdc:
    cmpwi   r3, 0x4
    bne-    branch_0x80046bec
    li      r0, 0x1
    b       branch_0x80046bf0

branch_0x80046bec:
    li      r0, 0x0
branch_0x80046bf0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046ce4
    lfs     f1, 0x1d0(r31)
    lfs     f0, -0x6fb0(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x1d0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80046c1c
    li      r0, 0x1
    b       branch_0x80046c20

branch_0x80046c1c:
    li      r0, 0x0
branch_0x80046c20:
    cmpwi   r0, 0x0
    bne-    branch_0x80046dc0
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80046c50
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80046c50
    cmplwi  r3, 0x4104
    bne-    branch_0x80046c58
branch_0x80046c50:
    li      r0, 0x1
    b       branch_0x80046c5c

branch_0x80046c58:
    li      r0, 0x0
branch_0x80046c5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046cb4
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplwi  r3, 0x0
    beq-    branch_0x80046cac
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80046cac
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80046cac:
    li      r3, 0x1
    b       branch_0x80046e10

branch_0x80046cb4:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046dc0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80046dc0

branch_0x80046ce4:
    cmpwi   r3, 0x7
    bne-    branch_0x80046cf4
    li      r0, 0x1
    b       branch_0x80046cf8

branch_0x80046cf4:
    li      r0, 0x0
branch_0x80046cf8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046dc0
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r31)
    lfs     f0, 0x1c8(r31)
    lfs     f1, -0x6fb0(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c8(r31)
    lfs     f0, 0x30(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r31)
    lfs     f0, 0x34(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(r31)
    lfs     f0, 0x38(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046dc0
    li      r3, 0x1
    stw     r3, 0x19c(r31)
    lfs     f0, -0x6fc0(r2)
    stfs    f0, 0x158(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0xf0(r31)
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stb     r3, 0x1a0(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    beq-    branch_0x80046db8
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80046db8
    lwz     r4, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80046db8:
    li      r3, 0x1
    b       branch_0x80046e10

branch_0x80046dc0:
    lwz     r4, 0xac(r31)
    li      r3, 0x0
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x6fac(r2)
    stw     r4, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xa0(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f0, 0xa0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xa0(sp)
    lwz     r4, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xa0(sp)
    stw     r0, 0xb4(r31)
branch_0x80046e10:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    addi    sp, sp, 0xc8
    blr


.globl __dt__15TNerveGessoFallFv
__dt__15TNerveGessoFallFv: # 0x80046e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80046e6c
    lis     r3, __vvt__15TNerveGessoFall@ha
    addi    r0, r3, __vvt__15TNerveGessoFall@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80046e5c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80046e5c:
    extsh.  r0, r4
    ble-    branch_0x80046e6c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80046e6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveGessoPolluteCFP24TSpineBase_10TLiveActor_
execute__18TNerveGessoPolluteCFP24TSpineBase_10TLiveActor_: # 0x80046e84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x80046eac
    mr      r3, r31
    bl      setPolluteGoal__6TGessoFv
branch_0x80046eac:
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0x5
    bne-    branch_0x80046ec0
    li      r0, 0x1
    b       branch_0x80046ec4

branch_0x80046ec0:
    li      r0, 0x0
branch_0x80046ec4:
    clrlwi. r0, r0, 24
    bne-    branch_0x80046ee8
    cmpwi   r3, 0x11
    bne-    branch_0x80046edc
    li      r0, 0x1
    b       branch_0x80046ee0

branch_0x80046edc:
    li      r0, 0x0
branch_0x80046ee0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80046f28
branch_0x80046ee8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6fa8(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x80046f0c
    mr      r3, r31
    bl      pollute__6TGessoFv
branch_0x80046f0c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80046fc8
    li      r3, 0x1
    b       branch_0x80046fcc

branch_0x80046f28:
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80046f3c
    li      r0, 0x1
    b       branch_0x80046f40

branch_0x80046f3c:
    li      r0, 0x0
branch_0x80046f40:
    clrlwi. r0, r0, 24
    bne-    branch_0x80046f54
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80046f70
branch_0x80046f54:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x5
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80046f88

branch_0x80046f70:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x11
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80046f88:
    lwz     r3, 0x74(r31)
    li      r4, 0xbb
    lbz     r0, R13Off_m0x7f77(r13)
    li      r6, 0x0
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
branch_0x80046fc8:
    li      r3, 0x0
branch_0x80046fcc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __dt__18TNerveGessoPolluteFv
__dt__18TNerveGessoPolluteFv: # 0x80046fe0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80047024
    lis     r3, __vvt__18TNerveGessoPollute@ha
    addi    r0, r3, __vvt__18TNerveGessoPollute@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80047014
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80047014:
    extsh.  r0, r4
    ble-    branch_0x80047024
    mr      r3, r31
    bl      __dl__FPv
branch_0x80047024:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__16TNerveGessoPunchCFP24TSpineBase_10TLiveActor_
execute__16TNerveGessoPunchCFP24TSpineBase_10TLiveActor_: # 0x8004703c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80047074
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xb
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80047074:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80047090
    li      r3, 0x1
    b       branch_0x80047094

branch_0x80047090:
    li      r3, 0x0
branch_0x80047094:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__16TNerveGessoPunchFv
__dt__16TNerveGessoPunchFv: # 0x800470a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800470ec
    lis     r3, __vvt__16TNerveGessoPunch@ha
    addi    r0, r3, __vvt__16TNerveGessoPunch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800470dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800470dc:
    extsh.  r0, r4
    ble-    branch_0x800470ec
    mr      r3, r31
    bl      __dl__FPv
branch_0x800470ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveGessoFreezeCFP24TSpineBase_10TLiveActor_
execute__17TNerveGessoFreezeCFP24TSpineBase_10TLiveActor_: # 0x80047104
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r4
    stw     r29, 0x9c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80047368
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x44
    lwz     r0, 0x14(r31)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x4c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x44(sp)
    addi    r3, sp, 0x88
    lwz     r5, 0x48(sp)
    mr      r4, r3
    stw     r0, 0x88(sp)
    lwz     r0, 0x4c(sp)
    stw     r5, 0x8c(sp)
    stw     r0, 0x90(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, -0x6fb4(r2)
    li      r29, 0x0
    lfs     f1, -0x6fbc(r2)
    stfs    f0, 0x8c(sp)
    lfs     f0, 0x88(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x88(sp)
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x90(sp)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x90(sp)
    stw     r0, 0xb4(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6fa0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x1dc(r31)
    stw     r0, 0x1e0(r31)
    lwz     r0, 0x90(sp)
    stw     r0, 0x1e4(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x64(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x70(sp)
branch_0x8004721c:
    lfs     f1, 0x5c(sp)
    mr      r3, r31
    lfs     f0, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x6c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x70(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x6c(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0xc8(r31)
    fcmpo   cr0, f1, f0
    blt-    branch_0x80047288
    addi    r29, r29, 0x1
    cmpwi   r29, 0x32
    blt+    branch_0x8004721c
branch_0x80047288:
    lfs     f2, -0x6fa0(r2)
    addi    r4, sp, 0x74
    lfs     f1, 0xc0(r31)
    lfs     f0, 0x60(sp)
    lwz     r3, R13Off_m0x6328(r13)
    fmadds  f2, f2, f1, f0
    lfs     f1, 0x5c(sp)
    lfs     f3, 0x64(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x74(sp)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800472c4
    li      r0, 0x1
    b       branch_0x800472c8

branch_0x800472c4:
    li      r0, 0x0
branch_0x800472c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x80047350
    lbz     r0, R13Off_m0x707c(r13)
    extsb.  r0, r0
    bne-    branch_0x80047314
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveGessoFall@ha
    stw     r0, R13Off_m0x7078(r13)
    addi    r0, r3, __vvt__15TNerveGessoFall@l
    lis     r4, __dt__15TNerveGessoFallFv@h
    stw     r0, R13Off_m0x7078(r13)
    lis     r3, unk_803f02b0@h
    addi    r5, r3, unk_803f02b0@l
    addi    r4, r4, __dt__15TNerveGessoFallFv@l
    addi    r3, r13, R13Off_m0x7078
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x707c(r13)
branch_0x80047314:
    addi    r4, r13, R13Off_m0x7078
    cmplwi  r4, 0x0
    beq-    branch_0x80047348
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80047348
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80047348:
    li      r3, 0x1
    b       branch_0x80047534

branch_0x80047350:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0xa
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80047368:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8004745c
    lwz     r3, 0x15c(r31)
    cmpwi   r3, 0xa
    bne-    branch_0x80047390
    li      r0, 0x1
    b       branch_0x80047394

branch_0x80047390:
    li      r0, 0x0
branch_0x80047394:
    clrlwi. r0, r0, 24
    beq-    branch_0x800473b8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x9
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8004745c

branch_0x800473b8:
    cmpwi   r3, 0x9
    bne-    branch_0x800473c8
    li      r0, 0x1
    b       branch_0x800473cc

branch_0x800473c8:
    li      r0, 0x0
branch_0x800473cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80047438
    lwz     r3, 0x1e8(r31)
    lwz     r4, 0x20(r30)
    lwz     r0, 0x158(r3)
    cmpw    r4, r0
    ble-    branch_0x80047420
    lbz     r3, 0x165(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800473fc
    li      r0, 0x0
    stb     r0, 0x165(r31)
branch_0x800473fc:
    cmplwi  r3, 0x0
    bne-    branch_0x80047420
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x8
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x8004745c

branch_0x80047420:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x10(r3)
    b       branch_0x8004745c

branch_0x80047438:
    cmpwi   r3, 0x8
    bne-    branch_0x80047448
    li      r0, 0x1
    b       branch_0x8004744c

branch_0x80047448:
    li      r0, 0x0
branch_0x8004744c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004745c
    li      r3, 0x1
    b       branch_0x80047534

branch_0x8004745c:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80047470
    li      r0, 0x1
    b       branch_0x80047474

branch_0x80047470:
    li      r0, 0x0
branch_0x80047474:
    cmpwi   r0, 0x0
    bne-    branch_0x8004750c
    lfs     f1, 0x1e0(r31)
    lfs     f0, -0x6f9c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800474c8
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x9
    bne-    branch_0x800474a0
    li      r0, 0x1
    b       branch_0x800474a4

branch_0x800474a0:
    li      r0, 0x0
branch_0x800474a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80047530
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x12f
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x80047530

branch_0x800474c8:
    lfs     f0, -0x6f98(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x1e0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6fa0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    lwz     r3, 0x1dc(r31)
    lwz     r0, 0x1e0(r31)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x1e4(r31)
    stw     r0, 0xb4(r31)
    b       branch_0x80047530

branch_0x8004750c:
    lwz     r3, 0xf4(r31)
    lwz     r0, R13Off_m0x60b8(r13)
    cmplw   r3, r0
    bne-    branch_0x80047530
    lfs     f1, -0x6fd0(r2)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
branch_0x80047530:
    li      r3, 0x0
branch_0x80047534:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl __dt__17TNerveGessoFreezeFv
__dt__17TNerveGessoFreezeFv: # 0x80047550
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80047594
    lis     r3, __vvt__17TNerveGessoFreeze@ha
    addi    r0, r3, __vvt__17TNerveGessoFreeze@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80047584
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80047584:
    extsh.  r0, r4
    ble-    branch_0x80047594
    mr      r3, r31
    bl      __dl__FPv
branch_0x80047594:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__15TNerveGessoStayCFP24TSpineBase_10TLiveActor_
execute__15TNerveGessoStayCFP24TSpineBase_10TLiveActor_: # 0x800475ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800475e0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x160(r12)
    mtlr    r12
    blrl
branch_0x800475e0:
    mr      r3, r31
    bl      rollCheck__6TGessoFv
    lwz     r5, 0x198(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    addi    r0, r5, 0x1
    stw     r0, 0x198(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800477a0
    lbz     r0, R13Off_m0x7084(r13)
    extsb.  r0, r0
    bne-    branch_0x8004764c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveGessoPollute@ha
    stw     r0, R13Off_m0x7080(r13)
    addi    r0, r3, __vvt__18TNerveGessoPollute@l
    lis     r4, __dt__18TNerveGessoPolluteFv@h
    stw     r0, R13Off_m0x7080(r13)
    lis     r3, unk_803f02a4@h
    addi    r5, r3, unk_803f02a4@l
    addi    r4, r4, __dt__18TNerveGessoPolluteFv@l
    addi    r3, r13, R13Off_m0x7080
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7084(r13)
branch_0x8004764c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x7080
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800477a0
    lwz     r5, 0x1e8(r31)
    lwz     r3, 0x198(r31)
    lwz     r0, 0x38c(r5)
    cmpw    r3, r0
    ble-    branch_0x800477a0
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80047688
    lfs     f1, -0x6fd0(r2)
    b       branch_0x800476c8

branch_0x80047688:
    lbz     r0, 0x1a1(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800476b0
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800476a8
    lfs     f1, -0x6fd0(r2)
    b       branch_0x800476c8

branch_0x800476a8:
    lfs     f1, -0x6fc8(r2)
    b       branch_0x800476c8

branch_0x800476b0:
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800476c4
    lfs     f1, -0x6fc4(r2)
    b       branch_0x800476c8

branch_0x800476c4:
    lfs     f1, -0x6f94(r2)
branch_0x800476c8:
    addi    r3, r5, 0x350
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f3, 0x0(r3)
    addi    r3, r31, 0x10
    lfs     f2, 0x378(r5)
    lfs     f4, -0x6fd0(r2)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x800477a0
    li      r0, 0x0
    stw     r0, 0x198(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lbz     r0, R13Off_m0x7084(r13)
    extsb.  r0, r0
    bne-    branch_0x80047748
    addi    r3, r13, R13Off_m0x7080
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__18TNerveGessoPollute@ha
    addi    r0, r3, __vvt__18TNerveGessoPollute@l
    lis     r4, __dt__18TNerveGessoPolluteFv@h
    stw     r0, R13Off_m0x7080(r13)
    lis     r3, unk_803f02a4@h
    addi    r5, r3, unk_803f02a4@l
    addi    r4, r4, __dt__18TNerveGessoPolluteFv@l
    addi    r3, r13, R13Off_m0x7080
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7084(r13)
branch_0x80047748:
    addi    r6, r13, R13Off_m0x7080
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800477a0
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80047794
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80047794
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80047794:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800477a0:
    lwz     r0, 0x5c(sp)
    li      r3, 0x0
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__15TNerveGessoStayFv
__dt__15TNerveGessoStayFv: # 0x800477b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800477fc
    lis     r3, __vvt__15TNerveGessoStay@ha
    addi    r0, r3, __vvt__15TNerveGessoStay@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800477ec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800477ec:
    extsh.  r0, r4
    ble-    branch_0x800477fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x800477fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl sendMessage__16TGessoPolluteObjFv
sendMessage__16TGessoPolluteObjFv: # 0x80047814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x80047890

branch_0x8004783c:
    lwz     r3, 0x44(r29)
    lwzx    r3, r3, r31
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8004785c
    li      r0, 0x1
    b       branch_0x80047860

branch_0x8004785c:
    li      r0, 0x0
branch_0x80047860:
    clrlwi. r0, r0, 24
    beq-    branch_0x80047888
    addi    r3, r29, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80047888:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80047890:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x8004783c
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl calcRootMatrix__16TGessoPolluteObjFv
calcRootMatrix__16TGessoPolluteObjFv: # 0x800478b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      calcRootMatrix__16TEnemyAttachmentFv
    lbz     r0, 0x168(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80047924
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2012
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8004790c
    addi    r4, r31, 0x10
    li      r3, 0x2012
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8004790c:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x165
    li      r6, 0x1
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80047924:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl set__16TGessoPolluteObjFv
set__16TGessoPolluteObjFv: # 0x80047938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    bl      set__16TEnemyAttachmentFv
    lwz     r3, 0x160(r31)
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80047990
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r31)
    lwz     r3, 0x160(r31)
    lfs     f1, -0x6f90(r2)
    lfs     f0, 0x14(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x160(r31)
    lfs     f0, 0x18(r3)
    stfs    f0, 0x18(r31)
    b       branch_0x80047a50

branch_0x80047990:
    lbz     r30, R13Off_m0x7f77(r13)
    lwz     r3, 0x16c(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mulli   r4, r30, 0x30
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x6fd0(r2)
    add     r30, r5, r4
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x5c(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x14(sp)
    lwz     r4, 0xc(sp)
    lwz     r3, 0x10(sp)
    stw     r4, 0x3c(sp)
    lwz     r0, 0x14(sp)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lfs     f0, 0x3c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80047a18
    stw     r4, 0x30(sp)
    stw     r3, 0x34(sp)
    stw     r0, 0x38(sp)
    lfs     f0, 0x38(sp)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80047a24
branch_0x80047a18:
    addi    r3, sp, 0x54
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
branch_0x80047a24:
    lfs     f2, -0x6f8c(r2)
    lfs     f1, 0x54(sp)
    lfs     f0, 0xc(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0x14(r31)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x2c(r30)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x18(r31)
branch_0x80047a50:
    lis     r4, unk_80377f90@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80377f90@l
    bl      setBck__6MActorFPCc
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl rebirth__16TGessoPolluteObjFv
rebirth__16TGessoPolluteObjFv: # 0x80047a78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lwz     r0, 0x158(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80047af8
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xbc
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0xbd
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2867
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80047af8
    addi    r4, r31, 0x10
    li      r3, 0x2867
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80047af8:
    lwz     r3, 0x158(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x158(r31)
    lwz     r0, 0x158(r31)
    cmpwi   r0, 0xa
    bne-    branch_0x80047b5c
    lfs     f0, -0x6f88(r2)
    li      r4, 0x1
    stfs    f0, 0xb0(r31)
    lfs     f1, -0x6f80(r2)
    lfs     f0, -0x7f70(r13)
    lfs     f4, -0x6f84(r2)
    fmuls   f0, f1, f0
    lfs     f3, 0x18(r31)
    lfs     f2, 0x14(r31)
    lfs     f1, 0x10(r31)
    fmuls   f4, f4, f0
    lwz     r3, R13Off_m0x62f0(r13)
    bl      stamp__17TPollutionManagerFUsffff
    lwz     r3, 0x160(r31)
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    lwz     r3, 0x70(r3)
    lwz     r3, 0x60(r3)
    bl      generatePolluteModel__25TEnemyPolluteModelManagerFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x80047b5c:
    lwz     r0, 0x158(r31)
    cmpwi   r0, 0x14
    ble-    branch_0x80047b80
    li      r0, 0x0
    stw     r0, 0x150(r31)
    stw     r0, 0x158(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x80047b80:
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x6f7c(r2)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x80047bac
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0xb0(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
branch_0x80047bac:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl pollute__16TGessoPolluteObjFv
pollute__16TGessoPolluteObjFv: # 0x80047bc0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x150(r3)
    li      r0, 0x0
    lis     r3, unk_80377fa0@h
    stb     r0, 0x168(r31)
    addi    r4, r3, unk_80377fa0@l
    lwz     r3, 0x74(r31)
    bl      setBck__6MActorFPCc
    lis     r4, unk_80377f90@h
    lwz     r3, 0x74(r31)
    addi    r4, r4, unk_80377f90@l
    bl      setBck__6MActorFPCc
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lfs     f0, 0x164(r31)
    stfs    f0, 0x2c(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x24(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getNowGravity__16TGessoPolluteObjFv
getNowGravity__16TGessoPolluteObjFv: # 0x80047c34
    lwz     r3, 0x16c(r3)
    lbz     r0, 0x1d8(r3)
    lwz     r4, 0x1e8(r3)
    cmplwi  r0, 0x0
    lfs     f1, 0x3a0(r4)
    beqlr-    

    lfs     f1, 0x3dc(r4)
    blr


.globl loadInit__16TGessoPolluteObjFP11TSpineEnemyPCc
loadInit__16TGessoPolluteObjFP11TSpineEnemyPCc: # 0x80047c54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      loadInit__16TEnemyAttachmentFP11TSpineEnemyPCc
    lwz     r29, 0x8(sp)
    lis     r3, unk_80377fac@h
    addi    r31, r3, unk_80377fac@l
    lwz     r0, 0x160(r29)
    mr      r3, r31
    stw     r0, 0x16c(r29)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x40
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x40(sp)
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x3c
    stw     r0, 0x3c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x5c(sp)
    addi    r5, sp, 0x4c
    addi    r4, r31, 0x0
    stw     r0, 0x58(sp)
    addi    r3, sp, 0x48
    addi    r6, sp, 0x8
    lwz     r0, 0x58(sp)
    stw     r0, 0x4c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lfs     f1, -0x6f78(r2)
    lis     r4, unk_10000006@h
    addi    r3, r29, 0x0
    fmr     f2, f1
    addi    r4, r4, unk_10000006@l
    fmr     f3, f1
    li      r5, 0x1
    fmr     f4, f1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x64(r29)
    li      r0, 0x0
    clrrwi  r3, r3, 1
    stw     r3, 0x64(r29)
    stw     r0, 0x150(r29)
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r29)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl load__10TLandGessoFR20JSUMemoryInputStream
load__10TLandGessoFR20JSUMemoryInputStream: # 0x80047d60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__6TGessoFR20JSUMemoryInputStream
    li      r0, 0x1
    stb     r0, 0x1ac(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TSurfGessoFUlPQ26JDrama9TGraphics
perform__10TSurfGessoFUlPQ26JDrama9TGraphics: # 0x80047da8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x8(sp)
    beq-    branch_0x80047dc8
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r3)
branch_0x80047dc8:
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__10TSurfGessoFR20JSUMemoryInputStream
load__10TSurfGessoFR20JSUMemoryInputStream: # 0x80047ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__6TGessoFR20JSUMemoryInputStream
    li      r0, 0x2
    stb     r0, 0x1ac(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__6TGessoCFv
getBasNameTable__6TGessoCFv: # 0x80047e24
    lis     r3, rikuGesso_bastable@ha
    addi    r3, r3, rikuGesso_bastable@l
    blr


.globl initAttacker__6TGessoFP9THitActor
initAttacker__6TGessoFP9THitActor: # 0x80047e30
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x8(sp)
    lwz     r6, 0x30(r4)
    lwz     r5, 0x34(r4)
    stw     r6, 0x30(r3)
    stw     r5, 0x34(r3)
    lwz     r4, 0x38(r4)
    stw     r4, 0x38(r3)
    stb     r0, 0x184(r3)
    stb     r0, 0x1ac(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl rollCheck__6TGessoFv
rollCheck__6TGessoFv: # 0x80047e80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    lwz     r0, 0x194(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80048180
    lwz     r0, 0x19c(r31)
    lwz     r5, 0x1e8(r31)
    cmpwi   r0, 0x1
    lfs     f4, 0x364(r5)
    bne-    branch_0x80047ec0
    lfs     f1, -0x6fd0(r2)
    b       branch_0x80047f00

branch_0x80047ec0:
    lbz     r0, 0x1a1(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80047ee8
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80047ee0
    lfs     f1, -0x6fd0(r2)
    b       branch_0x80047f00

branch_0x80047ee0:
    lfs     f1, -0x6fc8(r2)
    b       branch_0x80047f00

branch_0x80047ee8:
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80047efc
    lfs     f1, -0x6fc4(r2)
    b       branch_0x80047f00

branch_0x80047efc:
    lfs     f1, -0x6f94(r2)
branch_0x80047f00:
    addi    r3, r5, 0x350
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f3, 0x0(r3)
    addi    r3, r31, 0x10
    lfs     f2, 0x33c(r5)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x8004803c
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80047f48
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f1, -0x6f78(r2)
    lfs     f0, 0x4(r3)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bgt-    branch_0x80047f6c
branch_0x80047f48:
    cmplwi  r0, 0x0
    bne-    branch_0x8004803c
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, -0x6f78(r2)
    lfs     f1, 0x4(r3)
    lfs     f2, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x8004803c
branch_0x80047f6c:
    lwz     r3, 0x64(r31)
    li      r0, 0x2
    ori     r3, r3, 0x1
    stw     r3, 0x64(r31)
    stw     r0, 0x19c(r31)
    lbz     r0, R13Off_m0x7074(r13)
    extsb.  r0, r0
    bne-    branch_0x80047fc4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveGessoRolling@ha
    stw     r0, R13Off_m0x7070(r13)
    addi    r0, r3, __vvt__18TNerveGessoRolling@l
    lis     r4, __dt__18TNerveGessoRollingFv@h
    stw     r0, R13Off_m0x7070(r13)
    lis     r3, unk_803f02bc@h
    addi    r5, r3, unk_803f02bc@l
    addi    r4, r4, __dt__18TNerveGessoRollingFv@l
    addi    r3, r13, R13Off_m0x7070
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7074(r13)
branch_0x80047fc4:
    addi    r6, r13, R13Off_m0x7070
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8004801c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80048010
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80048010
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80048010:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8004801c:
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80048034
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
branch_0x80048034:
    li      r0, 0x0
    stw     r0, 0x194(r31)
branch_0x8004803c:
    lwz     r4, 0x1e8(r31)
    mr      r3, r31
    lfs     f31, 0x42c(r4)
    bl      updateSquareToMario__11TSpineEnemyFv
    fmuls   f0, f31, f31
    lfs     f1, 0x134(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80048180
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80048180
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8004807c
    lfs     f1, -0x6fd0(r2)
    b       branch_0x800480bc

branch_0x8004807c:
    lbz     r0, 0x1a1(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800480a4
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8004809c
    lfs     f1, -0x6fd0(r2)
    b       branch_0x800480bc

branch_0x8004809c:
    lfs     f1, -0x6fc8(r2)
    b       branch_0x800480bc

branch_0x800480a4:
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800480b8
    lfs     f1, -0x6fc4(r2)
    b       branch_0x800480bc

branch_0x800480b8:
    lfs     f1, -0x6f94(r2)
branch_0x800480bc:
    lwz     r6, 0x1e8(r31)
    addi    r3, r31, 0x10
    lwz     r4, R13Off_m0x60b4(r13)
    addi    r5, r6, 0x350
    lfs     f2, 0x33c(r6)
    lfs     f3, 0x0(r5)
    lfs     f4, -0x6fd0(r2)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    bne-    branch_0x80048180
    lbz     r0, R13Off_m0x705c(r13)
    extsb.  r0, r0
    bne-    branch_0x80048128
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveGessoTurn@ha
    stw     r0, R13Off_m0x7058(r13)
    addi    r0, r3, __vvt__15TNerveGessoTurn@l
    lis     r4, __dt__15TNerveGessoTurnFv@h
    stw     r0, R13Off_m0x7058(r13)
    lis     r3, unk_803f02e0@h
    addi    r5, r3, unk_803f02e0@l
    addi    r4, r4, __dt__15TNerveGessoTurnFv@l
    addi    r3, r13, R13Off_m0x7058
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x705c(r13)
branch_0x80048128:
    addi    r5, r13, R13Off_m0x7058
    lwz     r6, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x80048180
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80048174
    stw     r0, 0x1c(r6)
    lwz     r3, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r3, r0
    bge-    branch_0x80048174
    lwz     r4, 0x14(r6)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r6)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r6)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r6)
branch_0x80048174:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r5, 0x14(r6)
branch_0x80048180:
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lwz     r31, 0x64(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl behaveToFindMario__6TGessoFv
behaveToFindMario__6TGessoFv: # 0x80048198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x150(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80048264
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x800481f0
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800481f0
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800481f0:
    bl      theNerve__18TNerveWalkerEscapeFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x80048228
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x80048228
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80048228:
    bl      theNerve__20TNerveSmallEnemyJumpFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x800483e4
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x800483e4
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
    b       branch_0x800483e4

branch_0x80048264:
    lwz     r3, R13Off_m0x60b8(r13)
    lfs     f0, -0x6fd0(r2)
    stw     r3, 0x1c(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    beq-    branch_0x8004829c
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x20(sp)
    stfs    f1, 0x24(sp)
    stfs    f2, 0x28(sp)
branch_0x8004829c:
    lwz     r3, 0x1c(sp)
    li      r0, 0x0
    stw     r3, 0xf4(r31)
    lwz     r4, 0x20(sp)
    lwz     r3, 0x24(sp)
    stw     r4, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x28(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x1c(sp)
    stw     r3, 0x104(r31)
    lwz     r4, 0x20(sp)
    lwz     r3, 0x24(sp)
    stw     r4, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x28(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x8004831c
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8004831c
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8004831c:
    bl      theNerve__18TNerveWalkerAttackFv
    cmplwi  r3, 0x0
    lwz     r5, 0x8c(r31)
    beq-    branch_0x80048354
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x80048354
    lwz     r4, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r3, r4, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80048354:
    lwz     r0, 0x1b4(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800483e4
    lbz     r0, R13Off_m0x706c(r13)
    extsb.  r0, r0
    bne-    branch_0x800483a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveGessoFindMario@ha
    stw     r0, R13Off_m0x7068(r13)
    addi    r0, r3, __vvt__20TNerveGessoFindMario@l
    lis     r4, __dt__20TNerveGessoFindMarioFv@h
    stw     r0, R13Off_m0x7068(r13)
    lis     r3, unk_803f02c8@h
    addi    r5, r3, unk_803f02c8@l
    addi    r4, r4, __dt__20TNerveGessoFindMarioFv@l
    addi    r3, r13, R13Off_m0x7068
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x706c(r13)
branch_0x800483a4:
    addi    r5, r13, R13Off_m0x7068
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x800483dc
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x800483dc
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x800483dc:
    li      r0, 0x1
    stw     r0, 0x1b4(r31)
branch_0x800483e4:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl genRandomItem__6TGessoFv
genRandomItem__6TGessoFv: # 0x800483f8
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0xf
    bne-    branch_0x8004841c
    li      r0, 0x1
    b       branch_0x80048420

branch_0x8004841c:
    li      r0, 0x0
branch_0x80048420:
    clrlwi. r0, r0, 24
    beq-    branch_0x80048454
    lis     r4, unk_400000bc@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r6)
    addi    r4, r4, unk_400000bc@l
    lfs     f2, 0x14(r6)
    li      r5, 0x1
    lfs     f3, 0x18(r6)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    cmplwi  r3, 0x0
    bne-    branch_0x8004845c
    b       branch_0x8004845c

branch_0x80048454:
    mr      r3, r6
    bl      genRandomItem__11TSmallEnemyFv
branch_0x8004845c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__6TGessoFv
calcRootMatrix__6TGessoFv: # 0x8004846c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    stw     r29, 0x84(sp)
    mr      r29, r3
    stw     r29, R13Off_m0x70a0(r13)
    lwz     r0, 0x19c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x800484a4
    mr      r3, r29
    bl      calcRootMatrix__11TSpineEnemyFv
    b       branch_0x800485b8

branch_0x800484a4:
    mr      r3, r29
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800485b8
    lfs     f0, 0x38(r29)
    lfs     f2, -0x6f70(r2)
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r29)
    fmuls   f1, f2, f1
    lwz     r3, 0x74(r29)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f7, 0x14(r29)
    fctiwz  f5, f2
    lfs     f6, 0x1d0(r29)
    fctiwz  f0, f0
    stfd    f5, 0x78(sp)
    fadds   f2, f7, f6
    lwz     r31, 0x4(r3)
    stfd    f4, 0x70(sp)
    addi    r30, r31, 0x20
    lfs     f3, 0x18(r29)
    stfd    f0, 0x68(sp)
    mr      r3, r30
    lfs     f1, 0x10(r29)
    lwz     r4, 0x7c(sp)
    lwz     r5, 0x74(sp)
    lwz     r6, 0x6c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lfs     f1, -0x6f70(r2)
    mr      r3, r30
    lfs     f0, 0x1c8(r29)
    mr      r5, r30
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    addi    r4, sp, 0x28
    lfs     f2, -0x6fd0(r2)
    fctiwz  f0, f0
    lfs     f1, -0x6fc0(r2)
    stfd    f0, 0x60(sp)
    lwz     r7, 0x64(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f3
    stfs    f4, 0x28(sp)
    stfs    f2, 0x2c(sp)
    stfs    f3, 0x30(sp)
    stfs    f2, 0x34(sp)
    stfs    f2, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f2, 0x40(sp)
    stfs    f2, 0x44(sp)
    stfs    f0, 0x48(sp)
    stfs    f2, 0x4c(sp)
    stfs    f4, 0x50(sp)
    stfs    f2, 0x54(sp)
    bl      PSMTXConcat
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
branch_0x800485b8:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    addi    sp, sp, 0x90
    blr


.globl kill__6TGessoFv
kill__6TGessoFv: # 0x800485d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x1a0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80048610
    mr      r3, r31
    bl      kill__11TSmallEnemyFv
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x80048610:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl bind__6TGessoFv
bind__6TGessoFv: # 0x80048624
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r3
    lwz     r0, 0x19c(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80048730
    bge-    branch_0x8004865c
    cmpwi   r0, 0x0
    beq-    branch_0x80048738
    bge-    branch_0x8004866c
    b       branch_0x80048748

branch_0x8004865c:
    cmpwi   r0, 0x4
    beq-    branch_0x8004866c
    bge-    branch_0x80048748
    b       branch_0x80048678

branch_0x8004866c:
    mr      r3, r31
    bl      bind__10TLiveActorFv
    b       branch_0x80048748

branch_0x80048678:
    lfs     f1, 0x10(r31)
    mr      r3, r31
    lfs     f0, 0xac(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0xb0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0xb4(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
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
    bge-    branch_0x800486dc
    stfs    f1, 0xb0(r31)
branch_0x800486dc:
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x12
    bne-    branch_0x800486f0
    li      r0, 0x1
    b       branch_0x800486f4

branch_0x800486f0:
    li      r0, 0x0
branch_0x800486f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80048708
    li      r0, 0x4
    stw     r0, 0x19c(r31)
    b       branch_0x80048748

branch_0x80048708:
    lfs     f3, -0x6f84(r2)
    lfs     f2, -0x7f6c(r13)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x1a4(r31)
    fmadds  f1, f3, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80048748
    li      r0, 0x4
    stw     r0, 0x19c(r31)
    b       branch_0x80048748

branch_0x80048730:
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1d0(r31)
branch_0x80048738:
    lfs     f1, 0x1a4(r31)
    lfs     f0, 0x1d0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x80048748:
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x8004875c
    li      r0, 0x0
    b       branch_0x80048760

branch_0x8004875c:
    li      r0, 0x1
branch_0x80048760:
    clrlwi. r0, r0, 24
    beq-    branch_0x800488c4
    lbz     r0, 0x1a0(r31)
    lfs     f1, -0x6fc0(r2)
    cmplwi  r0, 0x0
    bne-    branch_0x8004877c
    lfs     f1, -0x6f6c(r2)
branch_0x8004877c:
    lbz     r0, 0x1a1(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800487b8
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800487a4
    lfs     f6, -0x6fd0(r2)
    fmr     f8, f1
    fmr     f7, f6
    b       branch_0x800487e4

branch_0x800487a4:
    lfs     f6, -0x6fd0(r2)
    lfs     f0, -0x6f6c(r2)
    fmr     f7, f6
    fmuls   f8, f0, f1
    b       branch_0x800487e4

branch_0x800487b8:
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800487d8
    lfs     f0, -0x6f6c(r2)
    lfs     f7, -0x6fd0(r2)
    fmuls   f6, f0, f1
    fmr     f8, f7
    b       branch_0x800487e4

branch_0x800487d8:
    lfs     f7, -0x6fd0(r2)
    fmr     f6, f1
    fmr     f8, f7
branch_0x800487e4:
    lwz     r4, R13Off_m0x60b4(r13)
    addi    r3, sp, 0x38
    lfs     f4, -0x6fd0(r2)
    lfs     f3, 0x8(r4)
    lfs     f2, 0x18(r31)
    fmuls   f1, f8, f4
    lfs     f5, 0x0(r4)
    fmuls   f0, f7, f4
    fsubs   f9, f3, f2
    lfs     f2, 0x10(r31)
    fsubs   f5, f5, f2
    fmuls   f2, f6, f9
    fmsubs  f3, f7, f9, f1
    fmuls   f1, f7, f5
    fmadds  f0, f6, f5, f0
    fmsubs  f2, f8, f5, f2
    stfs    f3, 0x38(sp)
    fmsubs  f1, f6, f4, f1
    fmadds  f31, f8, f9, f0
    stfs    f2, 0x3c(sp)
    stfs    f1, 0x40(sp)
    bl      MsVECMag2__FP3Vec
    fmr     f2, f1
    fmr     f1, f31
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6f60(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6f68(r2)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    lfs     f3, 0x1cc(r31)
    stw     r0, 0x68(sp)
    lfd     f1, 0x68(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    fabs    f1, f0
    fcmpu   cr0, f3, f1
    beq-    branch_0x800488c4
    fcmpo   cr0, f3, f1
    bge-    branch_0x800488a8
    lfs     f0, -0x7f74(r13)
    fadds   f0, f3, f0
    stfs    f0, 0x1cc(r31)
    lfs     f0, 0x1cc(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x800488c4
    stfs    f1, 0x1cc(r31)
    b       branch_0x800488c4

branch_0x800488a8:
    lfs     f0, -0x7f74(r13)
    fsubs   f0, f3, f0
    stfs    f0, 0x1cc(r31)
    lfs     f0, 0x1cc(r31)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800488c4
    stfs    f1, 0x1cc(r31)
branch_0x800488c4:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lwz     r31, 0x74(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl setWaitAnm__6TGessoFv
setWaitAnm__6TGessoFv: # 0x800488dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x19c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80048908
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8004892c
branch_0x80048908:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x15
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1d0(r31)
    b       branch_0x8004894c

branch_0x8004892c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x14
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x5c(r31)
    stfs    f0, 0x1d0(r31)
branch_0x8004894c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setWalkAnm__6TGessoFv
setWalkAnm__6TGessoFv: # 0x80048960
    mflr    r0
    li      r4, 0xc
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


.globl getGravityY__6TGessoCFv
getGravityY__6TGessoCFv: # 0x80048990
    lwz     r0, 0x19c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x800489bc
    lbz     r0, 0x1a0(r3)
    lwz     r3, 0x1e8(r3)
    cmplwi  r0, 0x0
    lfs     f1, 0x3f0(r3)
    beqlr-    

    lfs     f0, -0x6f84(r2)
    fmuls   f1, f1, f0
    blr

branch_0x800489bc:
    lfs     f1, 0xcc(r3)
    blr


.globl setDeadAnm__6TGessoFv
setDeadAnm__6TGessoFv: # 0x800489c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0xc4(r3)
    lhz     r4, 0x0(r5)
    cmplwi  r4, 0x100
    beq-    branch_0x80048a00
    cmplwi  r4, 0x101
    beq-    branch_0x80048a00
    addi    r0, r4, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80048a00
    cmplwi  r4, 0x4104
    bne-    branch_0x80048a08
branch_0x80048a00:
    li      r0, 0x1
    b       branch_0x80048a0c

branch_0x80048a08:
    li      r0, 0x0
branch_0x80048a0c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80048a24
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x2
    stw     r0, 0xf0(r3)
    b       branch_0x80048a7c

branch_0x80048a24:
    lhz     r0, 0x4(r5)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80048a38
    li      r0, 0x1
    b       branch_0x80048a3c

branch_0x80048a38:
    li      r0, 0x0
branch_0x80048a3c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80048a50
    lbz     r0, 0x1ac(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x80048a68
branch_0x80048a50:
    lwz     r12, 0x0(r3)
    li      r4, 0x3
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    b       branch_0x80048a7c

branch_0x80048a68:
    lwz     r12, 0x0(r3)
    li      r4, 0xf
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x80048a7c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setAfterDeadEffect__6TGessoFv
setAfterDeadEffect__6TGessoFv: # 0x80048a8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x1a8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      setAfterDeadEffect__11TSmallEnemyFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl pollute__6TGessoFv
pollute__6TGessoFv: # 0x80048ad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    lwz     r0, 0x19c(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80048b08
    lbz     r0, 0x1a0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80048b08
    lfs     f0, -0x6f58(r2)
    stfs    f0, 0x1bc(r31)
branch_0x80048b08:
    lwz     r4, 0x1a8(r31)
    lwz     r3, 0x1b8(r31)
    lwz     r0, 0x1bc(r31)
    stw     r3, 0xac(r4)
    stw     r0, 0xb0(r4)
    lwz     r0, 0x1c0(r31)
    stw     r0, 0xb4(r4)
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x144(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x1c0(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, -0x6fd0(r2)
    fsubs   f1, f2, f1
    lfs     f3, 0x1b8(r31)
    lfs     f2, 0x10(r31)
    fcmpu   cr0, f0, f1
    fsubs   f2, f3, f2
    bne-    branch_0x80048b78
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80048b70
    lfs     f0, -0x6fc4(r2)
    b       branch_0x80048bec

branch_0x80048b70:
    lfs     f0, -0x6f54(r2)
    b       branch_0x80048bec

branch_0x80048b78:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80048bb4
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6f60(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6f68(r2)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    stw     r0, 0x88(sp)
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x80048bec

branch_0x80048bb4:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6f60(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6f68(r2)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6fc8(r2)
    stw     r0, 0x88(sp)
    lfd     f2, 0x88(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x80048bec:
    lwz     r3, 0x1a8(r31)
    stfs    f0, 0x34(r3)
    lwz     r3, 0x74(r31)
    lbz     r0, R13Off_m0x7f77(r13)
    lwz     r3, 0x4(r3)
    lfs     f1, -0x6fd0(r2)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    lfs     f0, -0x6f8c(r2)
    stfs    f1, 0x6c(sp)
    add     r30, r3, r0
    stfs    f1, 0x70(sp)
    stfs    f0, 0x74(sp)
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80048c40
    fmr     f3, f1
    lfs     f2, 0x34(r31)
    addi    r3, sp, 0x3c
    bl      MsMtxSetRotRPH__FPA4_ffff
    b       branch_0x80048c58

branch_0x80048c40:
    lfs     f2, 0x34(r31)
    fmr     f3, f1
    lfs     f0, 0x1c8(r31)
    addi    r3, sp, 0x3c
    fadds   f2, f2, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
branch_0x80048c58:
    addi    r4, sp, 0x6c
    addi    r5, r4, 0x0
    addi    r3, sp, 0x3c
    bl      PSMTXMultVec
    lfs     f1, 0xc(r30)
    lfs     f0, 0x6c(sp)
    lwz     r3, 0x1a8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f0, 0x1c(r30)
    lwz     r3, 0x1a8(r31)
    stfs    f0, 0x14(r3)
    lfs     f1, 0x2c(r30)
    lfs     f0, 0x74(sp)
    lwz     r3, 0x1a8(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl setPolluteGoal__6TGessoFv
setPolluteGoal__6TGessoFv: # 0x80048cb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stfd    f27, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    stw     r30, 0x78(sp)
    lbz     r0, 0x1a0(r3)
    lwz     r4, 0x1e8(r3)
    cmplwi  r0, 0x0
    lfs     f30, 0x3b4(r4)
    lfs     f31, 0x3a0(r4)
    bne-    branch_0x80048cfc
    lfs     f30, -0x6fd0(r2)
branch_0x80048cfc:
    lbz     r0, 0x1d8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80048dec
    lfs     f1, -0x6f50(r2)
    lfs     f0, -0x6f8c(r2)
    stfs    f1, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x5c(sp)
    fsubs   f28, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r3, R13Off_m0x60b4(r13)
    stw     r0, 0x74(sp)
    lis     r30, 0x4330
    lfd     f1, -0x6f60(r2)
    stw     r30, 0x70(sp)
    lfs     f2, -0x6f4c(r2)
    lfd     f0, 0x70(sp)
    lfs     f4, 0x5c(sp)
    fsubs   f3, f0, f1
    lfs     f0, 0x60(sp)
    lfs     f1, 0x8(r3)
    fsubs   f27, f0, f4
    lfs     f29, 0x4(r3)
    fmuls   f0, f2, f3
    fmuls   f0, f28, f0
    fadds   f0, f4, f0
    fadds   f28, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lwz     r5, R13Off_m0x60b4(r13)
    stw     r0, 0x6c(sp)
    fmr     f1, f30
    lfd     f5, -0x6f60(r2)
    fmr     f2, f31
    stw     r30, 0x68(sp)
    lfs     f0, -0x6f4c(r2)
    lfd     f4, 0x68(sp)
    mr      r4, r31
    lfs     f3, 0x5c(sp)
    addi    r3, sp, 0x50
    fsubs   f5, f4, f5
    lfs     f4, 0x0(r5)
    addi    r5, r31, 0x1b8
    fmuls   f0, f0, f5
    fmuls   f0, f27, f0
    fadds   f0, f3, f0
    fadds   f0, f4, f0
    stfs    f0, 0x1b8(r31)
    stfs    f29, 0x1bc(r31)
    stfs    f28, 0x1c0(r31)
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x1b8(r31)
    stw     r0, 0x1bc(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x1c0(r31)
    b       branch_0x80048e64

branch_0x80048dec:
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r3, r31, 0x1b8
    addi    r4, r3, 0x0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x1b8(r31)
    stw     r0, 0x1bc(r31)
    lwz     r0, 0x8(r6)
    stw     r0, 0x1c0(r31)
    lfs     f1, 0x1b8(r31)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1b8(r31)
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1bc(r31)
    lfs     f1, 0x1c0(r31)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c0(r31)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x1e8(r31)
    lfs     f0, 0x1b8(r31)
    lfs     f1, 0x3c8(r3)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(r31)
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1bc(r31)
    lfs     f0, 0x1c0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(r31)
branch_0x80048e64:
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0xa8
    blr


.globl setBehavior__6TGessoFv
setBehavior__6TGessoFv: # 0x80048e90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lwz     r3, 0x194(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x80048ebc
    addi    r0, r3, 0x1
    stw     r0, 0x194(r31)
branch_0x80048ebc:
    lwz     r0, 0x194(r31)
    cmpwi   r0, 0xc8
    ble-    branch_0x80048ed0
    li      r0, 0x0
    stw     r0, 0x194(r31)
branch_0x80048ed0:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80048ee4
    li      r0, 0x1
    b       branch_0x80048ee8

branch_0x80048ee4:
    li      r0, 0x0
branch_0x80048ee8:
    cmpwi   r0, 0x0
    beq-    branch_0x80048f24
    lfs     f1, -0x6f48(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x80048f24
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__20TNerveWalkerGenerateFv
    cmplw   r30, r3
    beq-    branch_0x80048f24
    li      r0, 0x1
    stb     r0, 0x1d9(r31)
branch_0x80048f24:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80048f38
    li      r0, 0x1
    b       branch_0x80048f3c

branch_0x80048f38:
    li      r0, 0x0
branch_0x80048f3c:
    cmpwi   r0, 0x0
    bne-    branch_0x80049014
    lbz     r0, 0x1d9(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80049014
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    cmplw   r30, r3
    beq-    branch_0x80048f78
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    bl      theNerve__18TNerveWalkerAttackFv
    cmplw   r30, r3
    bne-    branch_0x80049014
branch_0x80048f78:
    lbz     r0, R13Off_m0x7064(r13)
    extsb.  r0, r0
    bne-    branch_0x80048fbc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveGessoLand@ha
    stw     r0, R13Off_m0x7060(r13)
    addi    r0, r3, __vvt__15TNerveGessoLand@l
    lis     r4, __dt__15TNerveGessoLandFv@h
    stw     r0, R13Off_m0x7060(r13)
    lis     r3, unk_803f02d4@h
    addi    r5, r3, unk_803f02d4@l
    addi    r4, r4, __dt__15TNerveGessoLandFv@l
    addi    r3, r13, R13Off_m0x7060
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7064(r13)
branch_0x80048fbc:
    addi    r6, r13, R13Off_m0x7060
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80049014
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80049008
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80049008
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80049008:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80049014:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80049028
    li      r0, 0x1
    b       branch_0x8004902c

branch_0x80049028:
    li      r0, 0x0
branch_0x8004902c:
    cmpwi   r0, 0x0
    bne-    branch_0x8004903c
    li      r0, 0x0
    stb     r0, 0x1d9(r31)
branch_0x8004903c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl attackToMario__6TGessoFv
attackToMario__6TGessoFv: # 0x80049054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r29, 0x5c(sp)
    lwz     r0, 0x19c(r3)
    lis     r3, unk_803f0280@h
    addi    r31, r3, unk_803f0280@l
    cmpwi   r0, 0x1
    beq-    branch_0x8004909c
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    li      r0, 0x1
    stw     r0, 0x194(r30)
    b       branch_0x800492f4

branch_0x8004909c:
    lbz     r0, R13Off_m0x708c(r13)
    extsb.  r0, r0
    bne-    branch_0x800490dc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveGessoPunch@ha
    stw     r0, R13Off_m0x7088(r13)
    addi    r0, r3, __vvt__16TNerveGessoPunch@l
    lis     r3, __dt__16TNerveGessoPunchFv@h
    stw     r0, R13Off_m0x7088(r13)
    addi    r4, r3, __dt__16TNerveGessoPunchFv@l
    addi    r3, r13, R13Off_m0x7088
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x708c(r13)
branch_0x800490dc:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7088
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80049248
    lbz     r0, R13Off_m0x7094(r13)
    extsb.  r0, r0
    bne-    branch_0x80049130
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveGessoFreeze@ha
    stw     r0, R13Off_m0x7090(r13)
    addi    r0, r3, __vvt__17TNerveGessoFreeze@l
    lis     r3, __dt__17TNerveGessoFreezeFv@h
    stw     r0, R13Off_m0x7090(r13)
    addi    r4, r3, __dt__17TNerveGessoFreezeFv@l
    addi    r3, r13, R13Off_m0x7090
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7094(r13)
branch_0x80049130:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7090
    lwz     r29, 0x14(r3)
    cmplw   r29, r0
    beq-    branch_0x80049248
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x80049248
    li      r0, 0x1
    stw     r0, 0x194(r30)
    bl      theNerve__22TNerveWalkerPostAttackFv
    cmplwi  r3, 0x0
    lwz     r6, 0x8c(r30)
    beq-    branch_0x800491b0
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x800491a4
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x800491a4
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x800491a4:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x800491b0:
    lbz     r0, R13Off_m0x708c(r13)
    extsb.  r0, r0
    bne-    branch_0x800491f0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveGessoPunch@ha
    stw     r0, R13Off_m0x7088(r13)
    addi    r0, r3, __vvt__16TNerveGessoPunch@l
    lis     r3, __dt__16TNerveGessoPunchFv@h
    stw     r0, R13Off_m0x7088(r13)
    addi    r4, r3, __dt__16TNerveGessoPunchFv@l
    addi    r3, r13, R13Off_m0x7088
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x708c(r13)
branch_0x800491f0:
    addi    r6, r13, R13Off_m0x7088
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80049248
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8004923c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8004923c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8004923c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80049248:
    lbz     r0, R13Off_m0x708c(r13)
    extsb.  r0, r0
    bne-    branch_0x80049288
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__16TNerveGessoPunch@ha
    stw     r0, R13Off_m0x7088(r13)
    addi    r0, r3, __vvt__16TNerveGessoPunch@l
    lis     r3, __dt__16TNerveGessoPunchFv@h
    stw     r0, R13Off_m0x7088(r13)
    addi    r4, r3, __dt__16TNerveGessoPunchFv@l
    addi    r3, r13, R13Off_m0x7088
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x708c(r13)
branch_0x80049288:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7088
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800492c8
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0x6f78(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x800492f4
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
    b       branch_0x800492f4

branch_0x800492c8:
    lwz     r0, 0x15c(r30)
    cmpwi   r0, 0x9
    bne-    branch_0x800492dc
    li      r0, 0x1
    b       branch_0x800492e0

branch_0x800492dc:
    li      r0, 0x0
branch_0x800492e0:
    clrlwi. r0, r0, 24
    bne-    branch_0x800492f4
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800492f4:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl doKeepDistance__6TGessoFv
doKeepDistance__6TGessoFv: # 0x80049310
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x9
    bne-    branch_0x80049324
    li      r0, 0x1
    b       branch_0x80049328

branch_0x80049324:
    li      r0, 0x0
branch_0x80049328:
    clrlwi. r0, r0, 24
    beq-    branch_0x8004934c
    lfs     f1, -0x6fa8(r2)
    lfs     f0, 0x14(r3)
    lwz     r3, R13Off_m0x60b4(r13)
    fadds   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80049354
branch_0x8004934c:
    li      r3, 0x0
    blr

branch_0x80049354:
    li      r3, 0x1
    blr


.globl isResignationAttack__6TGessoFv
isResignationAttack__6TGessoFv: # 0x8004935c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      isResignationAttack__12TWalkerEnemyFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8004937c
    li      r3, 0x1
    b       branch_0x80049380

branch_0x8004937c:
    li      r3, 0x0
branch_0x80049380:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl walkBehavior__6TGessoFif
walkBehavior__6TGessoFif: # 0x80049390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stw     r31, 0x4c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x6f44(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800493d8
    fmr     f1, f31
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      walkBehavior__12TWalkerEnemyFif
branch_0x800493d8:
    cmpwi   r30, 0x2
    bne-    branch_0x80049598
    lwz     r5, 0x198(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    addi    r0, r5, 0x1
    stw     r0, 0x198(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80049598
    lbz     r0, R13Off_m0x7084(r13)
    extsb.  r0, r0
    bne-    branch_0x80049444
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveGessoPollute@ha
    stw     r0, R13Off_m0x7080(r13)
    addi    r0, r3, __vvt__18TNerveGessoPollute@l
    lis     r4, __dt__18TNerveGessoPolluteFv@h
    stw     r0, R13Off_m0x7080(r13)
    lis     r3, unk_803f02a4@h
    addi    r5, r3, unk_803f02a4@l
    addi    r4, r4, __dt__18TNerveGessoPolluteFv@l
    addi    r3, r13, R13Off_m0x7080
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7084(r13)
branch_0x80049444:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x7080
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80049598
    lwz     r5, 0x1e8(r31)
    lwz     r3, 0x198(r31)
    lwz     r0, 0x38c(r5)
    cmpw    r3, r0
    ble-    branch_0x80049598
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x80049480
    lfs     f1, -0x6fd0(r2)
    b       branch_0x800494c0

branch_0x80049480:
    lbz     r0, 0x1a1(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800494a8
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800494a0
    lfs     f1, -0x6fd0(r2)
    b       branch_0x800494c0

branch_0x800494a0:
    lfs     f1, -0x6fc8(r2)
    b       branch_0x800494c0

branch_0x800494a8:
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800494bc
    lfs     f1, -0x6fc4(r2)
    b       branch_0x800494c0

branch_0x800494bc:
    lfs     f1, -0x6f94(r2)
branch_0x800494c0:
    addi    r3, r5, 0x350
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f3, 0x0(r3)
    addi    r3, r31, 0x10
    lfs     f2, 0x378(r5)
    lfs     f4, -0x6fd0(r2)
    bl      MsIsInSight__FRCQ29JGeometry8TVec3_f_fRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x80049598
    li      r0, 0x0
    stw     r0, 0x198(r31)
    lwz     r3, 0x1a8(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lbz     r0, R13Off_m0x7084(r13)
    extsb.  r0, r0
    bne-    branch_0x80049540
    addi    r3, r13, R13Off_m0x7080
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__18TNerveGessoPollute@ha
    addi    r0, r3, __vvt__18TNerveGessoPollute@l
    lis     r4, __dt__18TNerveGessoPolluteFv@h
    stw     r0, R13Off_m0x7080(r13)
    lis     r3, unk_803f02a4@h
    addi    r5, r3, unk_803f02a4@l
    addi    r4, r4, __dt__18TNerveGessoPolluteFv@l
    addi    r3, r13, R13Off_m0x7080
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7084(r13)
branch_0x80049540:
    addi    r6, r13, R13Off_m0x7080
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80049598
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8004958c
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8004958c
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8004958c:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80049598:
    lwz     r3, 0x1b4(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x800495b8
    cmpwi   r3, 0x12c
    bge-    branch_0x800495b8
    addi    r0, r3, 0x1
    stw     r0, 0x1b4(r31)
    b       branch_0x800495c0

branch_0x800495b8:
    li      r0, 0x0
    stw     r0, 0x1b4(r31)
branch_0x800495c0:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl behaveToWater__6TGessoFP9THitActor
behaveToWater__6TGessoFP9THitActor: # 0x800495dc
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x9c(sp)
    stb     r0, 0x165(r3)
    lis     r3, unk_803f0280@h
    addi    r31, r3, unk_803f0280@l
    lbz     r0, R13Off_m0x7094(r13)
    extsb.  r0, r0
    bne-    branch_0x80049648
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveGessoFreeze@ha
    stw     r0, R13Off_m0x7090(r13)
    addi    r0, r3, __vvt__17TNerveGessoFreeze@l
    lis     r3, __dt__17TNerveGessoFreezeFv@h
    stw     r0, R13Off_m0x7090(r13)
    addi    r4, r3, __dt__17TNerveGessoFreezeFv@l
    addi    r3, r13, R13Off_m0x7090
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7094(r13)
branch_0x80049648:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7090
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x80049664
    li      r0, 0x1
    stb     r0, 0x165(r30)
branch_0x80049664:
    li      r0, 0x0
    stw     r0, 0x160(r30)
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    bl      theNerve__19TNerveSmallEnemyDieFv
    cmplw   r29, r3
    beq-    branch_0x80049994
    lbz     r0, R13Off_m0x707c(r13)
    extsb.  r0, r0
    bne-    branch_0x800496c0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveGessoFall@ha
    stw     r0, R13Off_m0x7078(r13)
    addi    r0, r3, __vvt__15TNerveGessoFall@l
    lis     r3, __dt__15TNerveGessoFallFv@h
    stw     r0, R13Off_m0x7078(r13)
    addi    r4, r3, __dt__15TNerveGessoFallFv@l
    addi    r3, r13, R13Off_m0x7078
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x707c(r13)
branch_0x800496c0:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x7078
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x80049994
    lbz     r0, R13Off_m0x7094(r13)
    extsb.  r0, r0
    bne-    branch_0x80049714
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveGessoFreeze@ha
    stw     r0, R13Off_m0x7090(r13)
    addi    r0, r3, __vvt__17TNerveGessoFreeze@l
    lis     r3, __dt__17TNerveGessoFreezeFv@h
    stw     r0, R13Off_m0x7090(r13)
    addi    r4, r3, __dt__17TNerveGessoFreezeFv@l
    addi    r3, r13, R13Off_m0x7090
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7094(r13)
branch_0x80049714:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x7090
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x80049994
    lwz     r0, 0x19c(r30)
    cmpwi   r0, 0x2
    beq-    branch_0x80049994
    cmpwi   r0, 0x0
    bne-    branch_0x80049900
    lbz     r0, 0x1a0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80049864
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x0(r3)
    lfs     f3, 0x18(r30)
    fsubs   f0, f1, f0
    lfs     f2, 0x8(r3)
    lfs     f1, -0x6fd0(r2)
    fsubs   f2, f3, f2
    stfs    f0, 0x8c(sp)
    stfs    f1, 0x90(sp)
    stfs    f2, 0x94(sp)
    lfs     f0, 0x8c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80049794
    lfs     f0, 0x94(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80049794
    lfs     f0, -0x6fc0(r2)
    stfs    f0, 0x8c(sp)
branch_0x80049794:
    addi    r3, sp, 0x8c
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r4, 0x1e8(r30)
    lfs     f0, 0x8c(sp)
    lfs     f3, 0x440(r4)
    lfs     f4, 0x454(r4)
    fmuls   f0, f0, f3
    lfs     f1, -0x6fb4(r2)
    stfs    f0, 0x8c(sp)
    lfs     f2, 0x8c(sp)
    fabs    f0, f2
    fcmpo   cr0, f0, f1
    bge-    branch_0x800497e8
    lfs     f0, -0x6fd0(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800497e0
    stfs    f1, 0x8c(sp)
    b       branch_0x800497e8

branch_0x800497e0:
    lfs     f0, -0x6f40(r2)
    stfs    f0, 0x8c(sp)
branch_0x800497e8:
    lfs     f0, 0x94(sp)
    fmuls   f0, f0, f3
    stfs    f0, 0x94(sp)
    lfs     f2, 0x94(sp)
    lfs     f1, -0x6fb4(r2)
    fabs    f0, f2
    fcmpo   cr0, f0, f1
    bge-    branch_0x80049824
    lfs     f0, -0x6fd0(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x8004981c
    stfs    f1, 0x94(sp)
    b       branch_0x80049824

branch_0x8004981c:
    lfs     f0, -0x6f40(r2)
    stfs    f0, 0x94(sp)
branch_0x80049824:
    lfs     f0, 0x90(sp)
    fmuls   f0, f0, f4
    stfs    f0, 0x90(sp)
    lwz     r3, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x94(sp)
    stw     r0, 0xb4(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x6fa0(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x80049864:
    lbz     r0, R13Off_m0x707c(r13)
    extsb.  r0, r0
    bne-    branch_0x800498a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveGessoFall@ha
    stw     r0, R13Off_m0x7078(r13)
    addi    r0, r3, __vvt__15TNerveGessoFall@l
    lis     r3, __dt__15TNerveGessoFallFv@h
    stw     r0, R13Off_m0x7078(r13)
    addi    r4, r3, __dt__15TNerveGessoFallFv@l
    addi    r3, r13, R13Off_m0x7078
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x707c(r13)
branch_0x800498a4:
    addi    r6, r13, R13Off_m0x7078
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80049994
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800498f0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800498f0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800498f0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x80049994

branch_0x80049900:
    lbz     r0, R13Off_m0x7094(r13)
    extsb.  r0, r0
    bne-    branch_0x8004993c
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__17TNerveGessoFreeze@ha
    stw     r0, R13Off_m0x7090(r13)
    addi    r0, r4, __vvt__17TNerveGessoFreeze@l
    lis     r4, __dt__17TNerveGessoFreezeFv@h
    stw     r0, R13Off_m0x7090(r13)
    addi    r4, r4, __dt__17TNerveGessoFreezeFv@l
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7094(r13)
branch_0x8004993c:
    addi    r6, r13, R13Off_m0x7090
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x80049994
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80049988
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80049988
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80049988:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80049994:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl load__6TGessoFR20JSUMemoryInputStream
load__6TGessoFR20JSUMemoryInputStream: # 0x800499b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    li      r0, 0x1
    stb     r0, 0x1c4(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, -0x6fd0(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800499e8
    li      r0, 0x0
    stb     r0, 0x1c4(r31)
branch_0x800499e8:
    lfs     f0, -0x6fd0(r2)
    lfs     f1, 0x34(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80049a04
    lfs     f0, -0x6fc8(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80049a2c
branch_0x80049a04:
    li      r0, 0x1
    stb     r0, 0x1a1(r31)
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1c8(r31)
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80049a50
    lfs     f0, -0x6fc8(r2)
    stfs    f0, 0x1c8(r31)
    b       branch_0x80049a50

branch_0x80049a2c:
    li      r0, 0x0
    stb     r0, 0x1a1(r31)
    lfs     f0, -0x6fc4(r2)
    stfs    f0, 0x1c8(r31)
    lbz     r0, 0x1c4(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80049a50
    lfs     f0, -0x6f94(r2)
    stfs    f0, 0x1c8(r31)
branch_0x80049a50:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl reset__6TGessoFv
reset__6TGessoFv: # 0x80049a88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r31, R13Off_m0x70a0(r13)
    bl      reset__12TWalkerEnemyFv
    lbz     r0, 0x1ac(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80049ae4
    li      r0, 0x1
    stw     r0, 0x19c(r31)
    bl      theNerve__23TNerveWalkerGraphWanderFv
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    stw     r3, 0x18(r4)
    stw     r0, 0x1c(r4)
    lfs     f0, -0x6fc0(r2)
    stfs    f0, 0x158(r31)
    b       branch_0x80049b58

branch_0x80049ae4:
    li      r0, 0x0
    stw     r0, 0x19c(r31)
    lbz     r0, R13Off_m0x709c(r13)
    extsb.  r0, r0
    bne-    branch_0x80049b30
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__15TNerveGessoStay@ha
    stw     r0, R13Off_m0x7098(r13)
    addi    r0, r3, __vvt__15TNerveGessoStay@l
    lis     r4, __dt__15TNerveGessoStayFv@h
    stw     r0, R13Off_m0x7098(r13)
    lis     r3, unk_803f0280@h
    addi    r5, r3, unk_803f0280@l
    addi    r4, r4, __dt__15TNerveGessoStayFv@l
    addi    r3, r13, R13Off_m0x7098
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x709c(r13)
branch_0x80049b30:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x7098
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x158(r31)
branch_0x80049b58:
    lwz     r3, 0xf0(r31)
    li      r5, 0x0
    li      r0, 0x1
    rlwinm  r3, r3, 0, 20, 18
    stw     r3, 0xf0(r31)
    addi    r3, r31, 0x0
    li      r4, 0x15
    stb     r5, 0x1d9(r31)
    stb     r0, 0x1a0(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1a4(r31)
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x1d0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r6, 0x70(r31)
    lis     r5, 0x4330
    lha     r4, 0x8(r3)
    lwz     r6, 0x14(r6)
    lha     r0, 0x7c(r31)
    xoris   r4, r4, 0x8000
    xoris   r6, r6, 0x8000
    stw     r4, 0x44(sp)
    xoris   r0, r0, 0x8000
    stw     r6, 0x4c(sp)
    lfd     f3, -0x6f60(r2)
    stw     r5, 0x48(sp)
    lfs     f1, -0x6fc0(r2)
    lfd     f0, 0x48(sp)
    stw     r0, 0x3c(sp)
    fsubs   f0, f0, f3
    stw     r5, 0x40(sp)
    fdivs   f2, f1, f0
    stw     r5, 0x38(sp)
    lfd     f1, 0x40(sp)
    lfd     f0, 0x38(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r3)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl init__6TGessoFP12TLiveManager
init__6TGessoFP12TLiveManager: # 0x80049c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000007@h
    addi    r0, r3, unk_10000007@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1e8(r31)
    lis     r3, GessoBodyCallback__FP7J3DNodei@ha
    addi    r5, r3, GessoBodyCallback__FP7J3DNodei@l
    lwz     r3, 0x74(r31)
    lbz     r4, R13Off_m0x7f78(r13)
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    li      r3, 0x170
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80049cc4
    lis     r4, unk_80377fb8@h
    addi    r3, r30, 0x0
    addi    r4, r4, unk_80377fb8@l
    bl      __ct__16TEnemyAttachmentFPCc
    lis     r3, __vvt__16TGessoPolluteObj@ha
    addi    r3, r3, __vvt__16TGessoPolluteObj@l
    stw     r3, 0x0(r30)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r30)
    stw     r0, 0x16c(r30)
    lfs     f0, -0x6f74(r2)
    stfs    f0, 0x164(r30)
branch_0x80049cc4:
    stw     r30, 0x1a8(r31)
    lis     r3, unk_80377fc8@h
    addi    r5, r3, unk_80377fc8@l
    lwz     r3, 0x1a8(r31)
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x15
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r6, 0x70(r31)
    lis     r5, 0x4330
    lha     r4, 0x8(r3)
    lwz     r6, 0x10(r6)
    lha     r0, 0x7c(r31)
    xoris   r4, r4, 0x8000
    xoris   r6, r6, 0x8000
    stw     r4, 0x44(sp)
    xoris   r0, r0, 0x8000
    stw     r6, 0x4c(sp)
    lfd     f3, -0x6f60(r2)
    stw     r5, 0x48(sp)
    lfs     f1, -0x6fc0(r2)
    lfd     f0, 0x48(sp)
    stw     r0, 0x3c(sp)
    fsubs   f0, f0, f3
    stw     r5, 0x40(sp)
    fdivs   f2, f1, f0
    stw     r5, 0x38(sp)
    lfd     f1, 0x40(sp)
    lfd     f0, 0x38(sp)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    fmuls   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x10(r3)
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__6TGessoFPCc
__ct__6TGessoFPCc: # 0x80049d8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__6TGesso@ha
    addi    r3, r3, __vvt__6TGesso@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x194(r31)
    stw     r4, 0x198(r31)
    stw     r4, 0x19c(r31)
    stb     r0, 0x1a0(r31)
    stb     r0, 0x1a1(r31)
    lfs     f1, -0x6fd0(r2)
    stfs    f1, 0x1a4(r31)
    stw     r4, 0x1a8(r31)
    stb     r4, 0x1ac(r31)
    stw     r4, 0x1b4(r31)
    stb     r0, 0x1c4(r31)
    stfs    f1, 0x1c8(r31)
    lfs     f0, -0x6fc4(r2)
    stfs    f0, 0x1cc(r31)
    stfs    f1, 0x1d0(r31)
    stb     r4, 0x1d8(r31)
    stb     r4, 0x1d9(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12TWalkerEnemyFv
__dt__12TWalkerEnemyFv: # 0x80049e1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80049e84
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80049e74
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x80049e74:
    extsh.  r0, r31
    ble-    branch_0x80049e84
    mr      r3, r30
    bl      __dl__FPv
branch_0x80049e84:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl GessoBodyCallback__FP7J3DNodei
GessoBodyCallback__FP7J3DNodei: # 0x80049ea0
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    bne-    branch_0x8004a034
    lwz     r4, R13Off_m0x70a0(r13)
    cmplwi  r4, 0x0
    beq-    branch_0x80049ee8
    lwz     r0, 0x19c(r4)
    cmpwi   r0, 0x1
    bne-    branch_0x80049edc
    li      r0, 0x0
    b       branch_0x80049ee0

branch_0x80049edc:
    li      r0, 0x1
branch_0x80049ee0:
    clrlwi. r0, r0, 24
    bne-    branch_0x80049ef0
branch_0x80049ee8:
    li      r3, 0x1
    b       branch_0x8004a038

branch_0x80049ef0:
    lhz     r30, 0x18(r3)
    mr      r3, r4
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    mulli   r0, r30, 0x30
    lfs     f1, -0x6fd0(r2)
    lwz     r4, R13Off_m0x70a0(r13)
    stfs    f1, 0x80(sp)
    add     r31, r3, r0
    lfs     f0, -0x6fc4(r2)
    stfs    f1, 0x90(sp)
    stfs    f1, 0xa0(sp)
    lfs     f2, 0x148(r4)
    stfs    f2, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f1, 0x7c(sp)
    stfs    f1, 0x84(sp)
    stfs    f2, 0x88(sp)
    stfs    f1, 0x8c(sp)
    stfs    f1, 0x94(sp)
    stfs    f1, 0x98(sp)
    stfs    f2, 0x9c(sp)
    lfs     f1, 0x1cc(r4)
    lwz     r3, 0x1e8(r4)
    fsubs   f1, f1, f0
    lfs     f0, 0x404(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80049f68
    fmr     f1, f0
    b       branch_0x80049f78

branch_0x80049f68:
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x80049f78
    fmr     f1, f0
branch_0x80049f78:
    lfs     f0, -0x6f70(r2)
    addi    r30, sp, 0x44
    lwz     r0, R13Off_m0x5eac(r13)
    mr      r3, r31
    fmuls   f0, f0, f1
    lwz     r8, R13Off_m0x5ea8(r13)
    mr      r4, r30
    lwz     r6, R13Off_m0x5ea4(r13)
    mr      r5, r31
    fctiwz  f0, f0
    lfs     f1, -0x6fc0(r2)
    stfd    f0, 0xa8(sp)
    lwz     r7, 0xac(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f1, 0x44(sp)
    lfs     f1, -0x6fd0(r2)
    stfs    f1, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f3, 0x58(sp)
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f3, 0x6c(sp)
    stfs    f1, 0x70(sp)
    bl      PSMTXConcat
    addi    r3, r31, 0x0
    addi    r5, r31, 0x0
    addi    r4, sp, 0x74
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r31, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      PSMTXConcat
    addi    r5, r31, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x74
    bl      PSMTXConcat
branch_0x8004a034:
    li      r3, 0x1
branch_0x8004a038:
    lwz     r0, 0xbc(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    mtlr    r0
    addi    sp, sp, 0xb8
    blr


.globl createModelData__13TGessoManagerFv
createModelData__13TGessoManagerFv: # 0x8004a050
    mflr    r0
    lis     r4, entry_2959@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_2959@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initSetEnemies__13TGessoManagerFv
initSetEnemies__13TGessoManagerFv: # 0x8004a084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1c
    stw     r30, 0xe0(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8004a108
    stw     r30, 0x68(sp)
    lis     r3, unk_80377fd8@h
    addi    r4, r3, unk_80377fd8@l
    lwz     r3, 0x68(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x68(sp)
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lis     r3, __vvt__25TEnemyPolluteModelManager@ha
    addi    r0, r3, __vvt__25TEnemyPolluteModelManager@l
    stw     r0, 0x0(r30)
    li      r5, 0x0
    lis     r3, __vvt__25TGessoPolluteModelManager@ha
    stw     r5, 0x10(r30)
    li      r4, 0x5
    addi    r0, r3, __vvt__25TGessoPolluteModelManager@l
    stw     r4, 0x14(r30)
    stw     r5, 0x18(r30)
    stw     r0, 0x0(r30)
branch_0x8004a108:
    stw     r30, 0x60(r31)
    lwz     r3, 0x60(r31)
    lwz     r4, 0x18(r31)
    lwz     r12, 0x0(r3)
    lwz     r4, 0x0(r4)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    addi    sp, sp, 0xe8
    blr


.globl perform__13TGessoManagerFUlPQ26JDrama9TGraphics
perform__13TGessoManagerFUlPQ26JDrama9TGraphics: # 0x8004a140
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r27, 0x3c(sp)
    li      r31, 0x0
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    stw     r31, R13Off_m0x70a0(r13)
    bl      perform__13TEnemyManagerFUlPQ26JDrama9TGraphics
    li      r30, 0x0
    b       branch_0x8004a19c

branch_0x8004a170:
    lwz     r3, 0x18(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r3, 0x1a8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8004a19c:
    lwz     r3, 0x38(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x8004a1b0
    lwz     r3, 0x14(r27)
    b       branch_0x8004a1c8

branch_0x8004a1b0:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r27)
    cmpw    r0, r3
    ble-    branch_0x8004a1c4
    b       branch_0x8004a1c8

branch_0x8004a1c4:
    mr      r3, r0
branch_0x8004a1c8:
    cmpw    r30, r3
    blt+    branch_0x8004a170
    lwz     r3, 0x60(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl clipEnemies__13TGessoManagerFPQ26JDrama9TGraphics
clipEnemies__13TGessoManagerFPQ26JDrama9TGraphics: # 0x8004a200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stmw    r27, 0x6c(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    lwz     r3, 0x38(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8004a238
    lwz     r3, R13Off_m0x70b0(r13)
    lfs     f31, -0x6f3c(r2)
    lfs     f4, 0x9c(r3)
    b       branch_0x8004a240

branch_0x8004a238:
    lfs     f4, 0x68(r3)
    lfs     f31, 0x54(r3)
branch_0x8004a240:
    lwz     r3, R13Off_m0x7118(r13)
    lfs     f3, 0xe8(r30)
    lfs     f2, 0x4c(r3)
    lfs     f1, 0x48(r3)
    bl      SetViewFrustumClipCheckPerspective__Fffff
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x8004a304

branch_0x8004a260:
    lwz     r4, 0x18(r29)
    fmr     f1, f31
    mr      r3, r30
    lwzx    r27, r4, r28
    addi    r4, r27, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8004a290
    lwz     r0, 0xf0(r27)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r27)
    b       branch_0x8004a29c

branch_0x8004a290:
    lwz     r0, 0xf0(r27)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r27)
branch_0x8004a29c:
    lwz     r4, 0x1a8(r27)
    lwz     r0, 0x150(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8004a2b4
    li      r0, 0x1
    b       branch_0x8004a2b8

branch_0x8004a2b4:
    li      r0, 0x0
branch_0x8004a2b8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8004a2fc
    fmr     f1, f31
    addi    r3, r30, 0x0
    addi    r4, r4, 0x10
    bl      ViewFrustumClipCheck__FPQ26JDrama9TGraphicsP3Vecf
    cmpwi   r3, 0x0
    beq-    branch_0x8004a2ec
    lwz     r3, 0x1a8(r27)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0xf0(r3)
    b       branch_0x8004a2fc

branch_0x8004a2ec:
    lwz     r3, 0x1a8(r27)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x4
    stw     r0, 0xf0(r3)
branch_0x8004a2fc:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x8004a304:
    lwz     r0, 0x14(r29)
    cmpw    r31, r0
    blt+    branch_0x8004a260
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl createEnemyInstance__13TGessoManagerFv
createEnemyInstance__13TGessoManagerFv: # 0x8004a328
    mflr    r0
    li      r3, 0x1ec
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8004a358
    lis     r3, unk_80377fec@h
    addi    r4, r3, unk_80377fec@l
    addi    r3, r31, 0x0
    bl      __ct__6TGessoFPCc
branch_0x8004a358:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__13TGessoManagerFv
loadAfter__13TGessoManagerFv: # 0x8004a370
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__18TSmallEnemyManagerFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__13TGessoManagerFR20JSUMemoryInputStream
load__13TGessoManagerFR20JSUMemoryInputStream: # 0x8004a390
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x458
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8004a3cc
    lis     r3, unk_80377ff8@h
    addi    r4, r3, unk_80377ff8@l
    addi    r3, r30, 0x0
    bl      __ct__20TGessoSaveLoadParamsFPCc
branch_0x8004a3cc:
    stw     r30, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__13TGessoManagerFPCc
__ct__13TGessoManagerFPCc: # 0x8004a3e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__13TGessoManager@ha
    addi    r0, r3, __vvt__13TGessoManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x60(r31)
    stw     r0, R13Off_m0x70a0(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TSmallEnemyManagerFv
__dt__18TSmallEnemyManagerFv: # 0x8004a430
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004a478
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8004a478
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004a478:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setAnm__18TGessoPolluteModelFv
setAnm__18TGessoPolluteModelFv: # 0x8004a494
    mflr    r0
    li      r4, 0x16
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
    lfs     f0, -0x6fd0(r2)
    stfs    f0, 0x10(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__25TGessoPolluteModelManagerFP10TLiveActor
init__25TGessoPolluteModelManagerFP10TLiveActor: # 0x8004a4e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    bl      init__25TEnemyPolluteModelManagerFP10TLiveActor
    lis     r3, unk_8037800c@ha
    addi    r3, r3, unk_8037800c@l
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8004a538
    addi    r3, r29, 0x0
    lis     r4, 0x1022
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      __ct__12SDLModelDataFP12J3DModelData
branch_0x8004a538:
    lis     r4, unk_80378034@ha
    lis     r3, __vvt__18TGessoPolluteModel@ha
    addi    r28, r27, 0x0
    addi    r29, r4, unk_80378034@l
    addi    r30, r3, __vvt__18TGessoPolluteModel@l
    li      r27, 0x0
    li      r31, 0x0
branch_0x8004a554:
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8004a580
    addi    r3, r24, 0x0
    addi    r4, r26, 0x0
    addi    r6, r28, 0x0
    addi    r7, r29, 0x0
    li      r5, 0x0
    bl      __ct__18TEnemyPolluteModelFP10TLiveActoriP12SDLModelDataPCc
    stw     r30, 0x0(r24)
branch_0x8004a580:
    lwz     r3, 0x18(r25)
    addi    r27, r27, 0x1
    cmpwi   r27, 0x5
    stwx    r24, r3, r31
    addi    r31, r31, 0x4
    blt+    branch_0x8004a554
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__20TGessoSaveLoadParamsFPCc
__ct__20TGessoSaveLoadParamsFPCc: # 0x8004a5ac
    mflr    r0
    lis     r5, unk_80377c30@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r5, unk_80377c30@l
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r30, 0x410
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x8(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x410
    addi    r4, r31, 0x0
    addi    r3, r31, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r29, r3, __vvt__10TParamT_f_@l
    stw     r29, 0x32c(r31)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r28, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6f38(r2)
    addi    r3, r30, 0x428
    stfs    f0, 0x33c(r31)
    stw     r28, 0x32c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x340
    addi    r6, r30, 0x428
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x340(r31)
    addi    r3, r30, 0x43c
    lfs     f0, -0x6fc8(r2)
    stfs    f0, 0x350(r31)
    stw     r28, 0x340(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x354
    addi    r6, r30, 0x43c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x354(r31)
    addi    r3, r30, 0x450
    lfs     f0, -0x6f38(r2)
    stfs    f0, 0x364(r31)
    stw     r28, 0x354(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x368
    addi    r6, r30, 0x450
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x368(r31)
    addi    r3, r30, 0x464
    lfs     f0, -0x6f90(r2)
    stfs    f0, 0x378(r31)
    stw     r28, 0x368(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x37c
    addi    r6, r30, 0x464
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0x37c(r31)
    li      r0, 0x12c
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x38c(r31)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    addi    r3, r30, 0x47c
    stw     r0, 0x37c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x390
    addi    r6, r30, 0x47c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x390(r31)
    addi    r3, r30, 0x494
    lfs     f0, -0x6fa4(r2)
    stfs    f0, 0x3a0(r31)
    stw     r28, 0x390(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3a4
    addi    r6, r30, 0x494
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3a4(r31)
    addi    r3, r30, 0x4a8
    lfs     f0, -0x6fb4(r2)
    stfs    f0, 0x3b4(r31)
    stw     r28, 0x3a4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3b8
    addi    r6, r30, 0x4a8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3b8(r31)
    addi    r3, r30, 0x4c0
    lfs     f0, -0x6fb4(r2)
    stfs    f0, 0x3c8(r31)
    stw     r28, 0x3b8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3cc
    addi    r6, r30, 0x4c0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3cc(r31)
    addi    r3, r30, 0x4d4
    lfs     f0, -0x6fa4(r2)
    stfs    f0, 0x3dc(r31)
    stw     r28, 0x3cc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3e0
    addi    r6, r30, 0x4d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3e0(r31)
    addi    r3, r30, 0x4e4
    lfs     f0, -0x6f34(r2)
    stfs    f0, 0x3f0(r31)
    stw     r28, 0x3e0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x3f4
    addi    r6, r30, 0x4e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x3f4(r31)
    addi    r3, r30, 0x4f4
    lfs     f0, -0x6f30(r2)
    stfs    f0, 0x404(r31)
    stw     r28, 0x3f4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x408
    addi    r6, r30, 0x4f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x408(r31)
    addi    r3, r30, 0x50c
    lfs     f0, -0x6fa0(r2)
    stfs    f0, 0x418(r31)
    stw     r28, 0x408(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x41c
    addi    r6, r30, 0x50c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x41c(r31)
    addi    r3, r30, 0x51c
    lfs     f0, -0x6f3c(r2)
    stfs    f0, 0x42c(r31)
    stw     r28, 0x41c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x430
    addi    r6, r30, 0x51c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x430(r31)
    addi    r3, r30, 0x52c
    lfs     f0, -0x6f2c(r2)
    stfs    f0, 0x440(r31)
    stw     r28, 0x430(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x444
    addi    r6, r30, 0x52c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x444(r31)
    mr      r3, r31
    lfs     f0, -0x6fb4(r2)
    stfs    f0, 0x454(r31)
    stw     r28, 0x444(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__16TGessoPolluteObjFv
__dt__16TGessoPolluteObjFv: # 0x8004a8c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004a92c
    lis     r3, __vvt__16TGessoPolluteObj@ha
    addi    r3, r3, __vvt__16TGessoPolluteObj@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004a91c
    lis     r3, __vvt__16TEnemyAttachment@ha
    addi    r3, r3, __vvt__16TEnemyAttachment@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8004a91c:
    extsh.  r0, r31
    ble-    branch_0x8004a92c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004a92c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setRunAnm__6TGessoFv
setRunAnm__6TGessoFv: # 0x8004a948
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isEatenByYosshi__11TSmallEnemyFv
isEatenByYosshi__11TSmallEnemyFv: # 0x8004a974
    li      r3, 0x1
    blr


.globl jumpBehavior__11TSmallEnemyFv
jumpBehavior__11TSmallEnemyFv: # 0x8004a97c
    blr


.globl behaveToTaken__11TSmallEnemyFP9THitActor
behaveToTaken__11TSmallEnemyFP9THitActor: # 0x8004a980
    blr


.globl behaveToRelease__11TSmallEnemyFv
behaveToRelease__11TSmallEnemyFv: # 0x8004a984
    blr


.globl setGenerateAnm__11TSmallEnemyFv
setGenerateAnm__11TSmallEnemyFv: # 0x8004a988
    blr


.globl setFreezeAnm__11TSmallEnemyFv
setFreezeAnm__11TSmallEnemyFv: # 0x8004a98c
    blr


.globl setMeltAnm__11TSmallEnemyFv
setMeltAnm__11TSmallEnemyFv: # 0x8004a990
    blr


.globl isHitValid__11TSmallEnemyFUl
isHitValid__11TSmallEnemyFUl: # 0x8004a994
    lwz     r5, 0xf0(r3)
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x8004a9a8
    li      r3, 0x0
    blr

branch_0x8004a9a8:
    cmplwi  r4, 0xb
    bne-    branch_0x8004a9b8
    ori     r0, r5, 0x2
    stw     r0, 0xf0(r3)
branch_0x8004a9b8:
    li      r3, 0x1
    blr


.globl isInhibitedForceMove__11TSmallEnemyFv
isInhibitedForceMove__11TSmallEnemyFv: # 0x8004a9c0
    li      r3, 0x0
    blr


.globl endHitWaterJump__11TSmallEnemyFv
endHitWaterJump__11TSmallEnemyFv: # 0x8004a9c8
    blr


.globl setDeadEffect__11TSmallEnemyFv
setDeadEffect__11TSmallEnemyFv: # 0x8004a9cc
    blr


.globl __dt__10TLandGessoFv
__dt__10TLandGessoFv: # 0x8004a9d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004aa50
    lis     r3, __vvt__10TLandGesso@ha
    addi    r3, r3, __vvt__10TLandGesso@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004aa40
    lis     r3, __vvt__6TGesso@ha
    addi    r3, r3, __vvt__6TGesso@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004aa40
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x8004aa40:
    extsh.  r0, r31
    ble-    branch_0x8004aa50
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004aa50:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TSmallEnemyFv
__dt__11TSmallEnemyFv: # 0x8004aa6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004aabc
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8004aabc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004aabc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isFindMario__10TSurfGessoFf
isFindMario__10TSurfGessoFf: # 0x8004aad8
    li      r3, 0x0
    blr


.globl __dt__10TSurfGessoFv
__dt__10TSurfGessoFv: # 0x8004aae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004ab60
    lis     r3, __vvt__10TSurfGesso@ha
    addi    r3, r3, __vvt__10TSurfGesso@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004ab50
    lis     r3, __vvt__6TGesso@ha
    addi    r3, r3, __vvt__6TGesso@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004ab50
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x8004ab50:
    extsh.  r0, r31
    ble-    branch_0x8004ab60
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004ab60:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__6TGessoFv
__dt__6TGessoFv: # 0x8004ab7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004abfc
    lis     r3, __vvt__6TGesso@ha
    addi    r3, r3, __vvt__6TGesso@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004abec
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8004abec
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8004abec:
    extsh.  r0, r31
    ble-    branch_0x8004abfc
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004abfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TGessoManagerFv
__dt__13TGessoManagerFv: # 0x8004ac18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004ac70
    lis     r3, __vvt__13TGessoManager@ha
    addi    r0, r3, __vvt__13TGessoManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8004ac60
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8004ac60:
    extsh.  r0, r31
    ble-    branch_0x8004ac70
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004ac70:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TGessoPolluteModelFv
__dt__18TGessoPolluteModelFv: # 0x8004ac8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004acf4
    lis     r3, __vvt__18TGessoPolluteModel@ha
    addi    r0, r3, __vvt__18TGessoPolluteModel@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8004ace4
    lis     r3, __vvt__18TEnemyPolluteModel@ha
    addi    r0, r3, __vvt__18TEnemyPolluteModel@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8004ace4
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8004ace4:
    extsh.  r0, r31
    ble-    branch_0x8004acf4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004acf4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__25TGessoPolluteModelManagerFv
__dt__25TGessoPolluteModelManagerFv: # 0x8004ad10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8004ad78
    lis     r3, __vvt__25TGessoPolluteModelManager@ha
    addi    r0, r3, __vvt__25TGessoPolluteModelManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8004ad68
    lis     r3, __vvt__25TEnemyPolluteModelManager@ha
    addi    r0, r3, __vvt__25TEnemyPolluteModelManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8004ad68
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8004ad68:
    extsh.  r0, r31
    ble-    branch_0x8004ad78
    mr      r3, r30
    bl      __dl__FPv
branch_0x8004ad78:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_gesso_cpp
__sinit_gesso_cpp: # 0x8004ad94
    mflr    r0
    lis     r3, unk_803f0280@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f0280@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8004addc
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8004addc:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8004ae0c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8004ae0c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8004ae3c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8004ae3c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8004ae6c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8004ae6c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8004ae9c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8004ae9c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8004aecc
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8004aecc:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8004aefc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8004aefc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8004af2c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8004af2c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8004af5c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8004af5c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8004af8c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8004af8c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8004afbc
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8004afbc:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8004afec
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8004afec:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8004b01c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8004b01c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8004b04c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8004b04c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8004b07c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8004b07c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8004b090
unk_8004b090: # 0x8004b090
    addi    r3, r3, -0x20
    b       __dt__6TGessoFv


.globl unk_8004b098
unk_8004b098: # 0x8004b098
    addi    r3, r3, -0x20
    b       __dt__10TSurfGessoFv


.globl unk_8004b0a0
unk_8004b0a0: # 0x8004b0a0
    addi    r3, r3, -0x20
    b       __dt__10TLandGessoFv


.globl unk_8004b0a8
unk_8004b0a8: # 0x8004b0a8
    addi    r3, r3, -0x20
    b       __dt__16TGessoPolluteObjFv

