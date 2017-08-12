
.globl __dt__21TNerveKillerExplosionFv
__dt__21TNerveKillerExplosionFv: # 0x800db6e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800db728
    lis     r3, __vvt__21TNerveKillerExplosion@ha
    addi    r0, r3, __vvt__21TNerveKillerExplosion@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800db718
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800db718:
    extsh.  r0, r4
    ble-    branch_0x800db728
    mr      r3, r31
    bl      __dl__FPv
branch_0x800db728:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__21TNerveKillerExplosionCFP24TSpineBase_10TLiveActor_
execute__21TNerveKillerExplosionCFP24TSpineBase_10TLiveActor_: # 0x800db740
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
    bne-    branch_0x800db8d8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x3c8(r3)
    mr      r3, r31
    lfs     f1, 0x148(r31)
    lfs     f0, 0x50(r31)
    fmuls   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x20c(r31)
    lfs     f0, -0x5d30(r2)
    stfs    f0, 0x30(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800db7c8
    li      r0, 0x1
    b       branch_0x800db7cc

branch_0x800db7c8:
    li      r0, 0x0
branch_0x800db7cc:
    cmpwi   r0, 0x0
    bne-    branch_0x800db8c8
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x800db7fc
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x800db7fc
    cmplwi  r3, 0x4104
    bne-    branch_0x800db804
branch_0x800db7fc:
    li      r0, 0x1
    b       branch_0x800db808

branch_0x800db804:
    li      r0, 0x0
branch_0x800db808:
    clrlwi. r0, r0, 24
    beq-    branch_0x800db84c
    lis     r4, unk_80380bac@h
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_80380bac@l
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800db84c
    lfs     f0, -0x5d2c(r2)
    addi    r4, r31, 0x10
    addi    r5, sp, 0x48
    stfs    f0, 0x48(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x50(sp)
    bl      generate__21TEffectBombColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800db84c:
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x701
    beq-    branch_0x800db874
    cmplwi  r0, 0x4701
    beq-    branch_0x800db874
    cmplwi  r0, 0x8701
    beq-    branch_0x800db874
    cmplwi  r0, 0xc701
    bne-    branch_0x800db87c
branch_0x800db874:
    li      r0, 0x1
    b       branch_0x800db880

branch_0x800db87c:
    li      r0, 0x0
branch_0x800db880:
    clrlwi. r0, r0, 24
    beq-    branch_0x800db8c8
    lis     r4, unk_80380bcc@h
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_80380bcc@l
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800db8c8
    lfs     f1, -0x5d28(r2)
    addi    r4, r31, 0x10
    lfs     f0, -0x5d24(r2)
    addi    r5, sp, 0x3c
    stfs    f1, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    bl      generate__16TEffectColumSandFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800db8c8:
    lwz     r3, R13Off_m0x60f0(r13)
    addi    r5, r31, 0x10
    li      r4, 0x13
    bl      start__9RumbleMgrFiP3Vec
branch_0x800db8d8:
    lfs     f1, 0x190(r31)
    lfs     f0, 0x20c(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800db8f8
    lfs     f0, -0x5d20(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x190(r31)
    b       branch_0x800db9bc

branch_0x800db8f8:
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800db9bc
    lwz     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
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
    beq-    branch_0x800db964
    stw     r0, 0x1c(r30)
branch_0x800db964:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x800db9a4
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x800db9a4
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x800db9a4:
    lfs     f1, 0x14(r31)
    li      r3, 0x1
    lfs     f0, -0x5d1c(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x800db9c8

branch_0x800db9bc:
    mr      r3, r31
    bl      expandCollision__11TSmallEnemyFv
    li      r3, 0x0
branch_0x800db9c8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl isFindMario__7TKillerFf
isFindMario__7TKillerFf: # 0x800db9e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r5, R13Off_m0x60b4(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r5)
    lfs     f2, 0xe0(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    bge-    branch_0x800dba80
    lfs     f2, 0x8(r5)
    addi    r4, sp, 0x38
    lfs     f0, 0x0(r5)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f2, 0x40(sp)
    lfs     f1, 0xcc(r3)
    lfs     f2, 0x108(r3)
    lfs     f3, 0xf4(r3)
    fmuls   f1, f1, f31
    fmuls   f2, f2, f31
    mr      r3, r31
    fmuls   f3, f3, f31
    bl      isInSight__11TSpineEnemyCFRCQ29JGeometry8TVec3_f_fff
    cmpwi   r3, 0x0
    beq-    branch_0x800dba78
    li      r3, 0x1
    b       branch_0x800dba84

branch_0x800dba78:
    li      r3, 0x0
    b       branch_0x800dba84

branch_0x800dba80:
    li      r3, 0x0
branch_0x800dba84:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl calcRootMatrix__7TKillerFv
calcRootMatrix__7TKillerFv: # 0x800dba9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    lwz     r4, R13Off_m0x6048(r13)
    lhz     r0, 0x4c(r4)
    clrlwi. r0, r0, 28
    beq-    branch_0x800dbad0
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x800dbad0:
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x2
    bne-    branch_0x800dbae4
    li      r0, 0x1
    b       branch_0x800dbae8

branch_0x800dbae4:
    li      r0, 0x0
branch_0x800dbae8:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dbb40
    lbz     r0, 0x1a6(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800dbb24
    li      r5, 0xaa
    sth     r5, 0x1f4(r3)
    li      r4, 0x8c
    li      r0, 0x0
    sth     r5, 0x1ec(r3)
    sth     r4, 0x1f6(r3)
    sth     r4, 0x1ee(r3)
    sth     r0, 0x1f8(r3)
    sth     r0, 0x1f0(r3)
    b       branch_0x800dbb40

branch_0x800dbb24:
    li      r0, 0x0
    sth     r0, 0x1f8(r3)
    sth     r0, 0x1f6(r3)
    sth     r0, 0x1f4(r3)
    sth     r0, 0x1f0(r3)
    sth     r0, 0x1ee(r3)
    sth     r0, 0x1ec(r3)
branch_0x800dbb40:
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800dbb54
    li      r0, 0x1
    b       branch_0x800dbb58

branch_0x800dbb54:
    li      r0, 0x0
branch_0x800dbb58:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dbc88
    li      r6, 0x0
    sth     r6, 0x1f0(r3)
    lis     r4, unk_66666667@h
    addi    r0, r4, unk_66666667@l
    sth     r6, 0x1ee(r3)
    sth     r6, 0x1f4(r3)
    lwz     r4, 0x8c(r3)
    lwz     r5, 0x20(r4)
    mulhw   r0, r0, r5
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    cmpwi   r0, 0x5
    bge-    branch_0x800dbbac
    sth     r6, 0x1ec(r3)
    sth     r6, 0x1f8(r3)
    sth     r6, 0x1f6(r3)
branch_0x800dbbac:
    lbz     r0, 0x1a6(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800dbc1c
    lwz     r5, 0x8c(r3)
    lis     r4, unk_66666667@h
    addi    r0, r4, unk_66666667@l
    lwz     r5, 0x20(r5)
    mulhw   r0, r0, r5
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    cmpwi   r0, 0x5
    bge-    branch_0x800dbc04
    li      r0, 0xaa
    sth     r0, 0x1ec(r3)
    li      r4, 0x8c
    li      r0, 0x0
    sth     r4, 0x1ee(r3)
    sth     r0, 0x1f0(r3)
    b       branch_0x800dbc1c

branch_0x800dbc04:
    li      r0, 0xb4
    sth     r0, 0x1ec(r3)
    li      r4, 0x8c
    li      r0, 0x96
    sth     r4, 0x1ee(r3)
    sth     r0, 0x1f0(r3)
branch_0x800dbc1c:
    lbz     r0, 0x1a5(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800dbc88
    lwz     r5, 0x8c(r3)
    lis     r4, unk_66666667@h
    addi    r0, r4, unk_66666667@l
    lwz     r5, 0x20(r5)
    mulhw   r0, r0, r5
    srawi   r0, r0, 2
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xa
    subf    r0, r0, r5
    cmpwi   r0, 0x5
    bge-    branch_0x800dbc74
    li      r4, 0xc8
    sth     r4, 0x1f4(r3)
    li      r0, 0x0
    sth     r4, 0x1ec(r3)
    sth     r0, 0x1ee(r3)
    sth     r0, 0x1f0(r3)
    b       branch_0x800dbc88

branch_0x800dbc74:
    li      r4, 0x46
    sth     r4, 0x1ec(r3)
    li      r0, 0x14
    sth     r0, 0x1ee(r3)
    sth     r4, 0x1f0(r3)
branch_0x800dbc88:
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x800dbc9c
    li      r0, 0x1
    b       branch_0x800dbca0

branch_0x800dbc9c:
    li      r0, 0x0
branch_0x800dbca0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dbe20
    li      r6, 0x0
    sth     r6, 0x1f4(r3)
    lis     r4, 0x4330
    sth     r6, 0x1f8(r3)
    sth     r6, 0x1f6(r3)
    sth     r6, 0x1f0(r3)
    sth     r6, 0x1ee(r3)
    lwz     r5, 0x8c(r3)
    lbz     r0, 0x1a6(r3)
    lwz     r5, 0x20(r5)
    lfd     f2, -0x5ce0(r2)
    cmplwi  r0, 0x0
    xoris   r0, r5, 0x8000
    lfs     f3, -0x5d14(r2)
    stw     r0, 0x8c(sp)
    lfs     f0, -0x5d10(r2)
    stw     r4, 0x88(sp)
    lfs     f4, -0x5d18(r2)
    lfd     f1, 0x88(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    fsubs   f1, f1, f2
    lwz     r5, R13Off_m0x5ea8(r13)
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    fmuls   f0, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r4, 0x84(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f0, r5, r0
    fabs    f3, f0
    beq-    branch_0x800dbda0
    li      r0, 0xaa
    sth     r0, 0x1fc(r3)
    li      r0, 0x8c
    sth     r0, 0x1fe(r3)
    sth     r6, 0x200(r3)
    lfs     f1, -0x5d08(r2)
    lfs     f0, -0x5d0c(r2)
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r0, 0x84(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x1ec(r3)
    lfs     f1, -0x5d00(r2)
    lfs     f0, -0x5d04(r2)
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x1ee(r3)
    lfs     f0, -0x5cfc(r2)
    fmuls   f0, f0, f3
    fctiwz  f0, f0
    stfd    f0, 0x78(sp)
    lwz     r0, 0x7c(sp)
    clrlwi  r0, r0, 24
    sth     r0, 0x1f0(r3)
branch_0x800dbda0:
    lbz     r0, 0x1a5(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800dbe20
    li      r4, 0x46
    sth     r4, 0x1fc(r3)
    li      r0, 0x14
    sth     r0, 0x1fe(r3)
    sth     r4, 0x200(r3)
    sth     r4, 0x204(r3)
    sth     r0, 0x206(r3)
    sth     r4, 0x208(r3)
    lfs     f1, -0x5cf8(r2)
    lfs     f2, -0x5cf4(r2)
    fnmsubs  f0, f1, f3, f1
    fmadds  f1, f2, f3, f1
    fctiwz  f0, f0
    fctiwz  f1, f1
    stfd    f0, 0x88(sp)
    stfd    f1, 0x78(sp)
    lwz     r0, 0x8c(sp)
    lwz     r4, 0x7c(sp)
    clrlwi  r0, r0, 24
    clrlwi  r4, r4, 24
    sth     r4, 0x1ec(r3)
    lfs     f0, -0x5cf0(r2)
    fnmsubs  f0, f0, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x80(sp)
    lwz     r4, 0x84(sp)
    clrlwi  r4, r4, 24
    sth     r4, 0x1ee(r3)
    sth     r0, 0x1f0(r3)
branch_0x800dbe20:
    stw     r3, R13Off_m0x6910(r13)
    lfs     f0, -0x5cec(r2)
    lfs     f1, 0x30(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800dbe3c
    fmr     f1, f0
    b       branch_0x800dbe4c

branch_0x800dbe3c:
    lfs     f0, -0x5ce8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800dbe4c
    fmr     f1, f0
branch_0x800dbe4c:
    stfs    f1, 0x30(r3)
    bl      calcRootMatrix__11TSpineEnemyFv
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl bind__7TKillerFv
bind__7TKillerFv: # 0x800dbe64
    mflr    r0
    lis     r5, unk_803b9800@ha
    stw     r0, 0x4(sp)
    lis     r4, unk_803f20a0@h
    stwu    sp, -0xd0(sp)
    stmw    r27, 0xbc(sp)
    addi    r29, r3, 0x0
    addi    r30, r5, unk_803b9800@l
    addi    r31, r4, unk_803f20a0@l
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800dbec8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r3, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r4, r3, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800dbec8:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800dbeec
    lwz     r3, 0x1a0(r29)
    lwz     r0, R13Off_m0x7de0(r13)
    cmpw    r3, r0
    bge-    branch_0x800dbef8
branch_0x800dbeec:
    mr      r3, r29
    bl      fly__9TFlyEnemyFv
    b       branch_0x800dbf00

branch_0x800dbef8:
    mr      r3, r29
    bl      bind__10TLiveActorFv
branch_0x800dbf00:
    lwz     r3, 0x1a0(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x1a0(r29)
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dbf48
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r30, 0x70
    lis     r3, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r4, r3, __dt__21TNerveKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x68f8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dbf48:
    lwz     r3, 0x8c(r29)
    addi    r0, r13, R13Off_m0x68f8
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800dc15c
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800dbf70
    li      r0, 0x1
    b       branch_0x800dbf74

branch_0x800dbf70:
    li      r0, 0x0
branch_0x800dbf74:
    cmpwi   r0, 0x0
    bne-    branch_0x800dc024
    lwz     r3, 0x1a0(r29)
    lwz     r0, R13Off_m0x7de0(r13)
    cmpw    r3, r0
    ble-    branch_0x800dc024
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dbfc8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r30, 0x70
    lis     r3, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r4, r3, __dt__21TNerveKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x68f8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dbfc8:
    addi    r6, r13, R13Off_m0x68f8
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x800dc15c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800dc014
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800dc014
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800dc014:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
    b       branch_0x800dc15c

branch_0x800dc024:
    lwz     r3, 0x1a0(r29)
    lwz     r0, R13Off_m0x7de0(r13)
    cmpw    r3, r0
    ble-    branch_0x800dc15c
    lfs     f1, 0x14(r29)
    li      r27, 0x1
    lfs     f0, 0xc0(r29)
    li      r28, 0x0
    lfs     f2, 0xbc(r29)
    lfs     f4, 0x18(r29)
    fadds   f3, f1, f0
    lfs     f0, 0x10(r29)
    addi    r4, sp, 0x74
    lfs     f1, -0x5d2c(r2)
    stfs    f0, 0x74(sp)
    fmuls   f0, f1, f2
    lwz     r3, R13Off_m0x6328(r13)
    stfs    f3, 0x78(sp)
    stfs    f4, 0x7c(sp)
    stfs    f0, 0x80(sp)
    stw     r27, 0x84(sp)
    stw     r28, 0x8c(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x800dc15c
    lwz     r3, 0x90(sp)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800dc0c8
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xa
    bne-    branch_0x800dc0ac
    b       branch_0x800dc0b0

branch_0x800dc0ac:
    mr      r27, r28
branch_0x800dc0b0:
    clrlwi. r0, r27, 24
    beq-    branch_0x800dc0c8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800dc0c8:
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dc104
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r30, 0x70
    lis     r3, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r4, r3, __dt__21TNerveKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x68f8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dc104:
    addi    r6, r13, R13Off_m0x68f8
    lwz     r5, 0x8c(r29)
    cmplwi  r6, 0x0
    beq-    branch_0x800dc15c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800dc150
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800dc150
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800dc150:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800dc15c:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x800dc170
    li      r0, 0x1
    b       branch_0x800dc174

branch_0x800dc170:
    li      r0, 0x0
branch_0x800dc174:
    cmpwi   r0, 0x0
    beq-    branch_0x800dc248
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20a9
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800dc1ac
    addi    r4, r29, 0x10
    li      r3, 0x20a9
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800dc1ac:
    lfs     f1, 0x30(r29)
    lfs     f0, -0x5cec(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800dc1c4
    fmr     f1, f0
    b       branch_0x800dc1d4

branch_0x800dc1c4:
    lfs     f0, -0x5ce8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800dc1d4
    fmr     f1, f0
branch_0x800dc1d4:
    stfs    f1, 0x30(r29)
    addi    r27, r29, 0x1bc
    addi    r3, r27, 0x0
    lfs     f0, 0x38(r29)
    lfs     f2, -0x5d18(r2)
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r29)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r29)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r29)
    fctiwz  f5, f2
    lfs     f2, 0x14(r29)
    fctiwz  f0, f0
    stfd    f4, 0xa8(sp)
    stfd    f5, 0xb0(sp)
    lwz     r5, 0xac(sp)
    stfd    f0, 0xa0(sp)
    lwz     r4, 0xb4(sp)
    lwz     r6, 0xa4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r27, 0x0
    addi    r7, r29, 0x0
    li      r4, 0x174
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800dc248:
    lmw     r27, 0xbc(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl __dt__22TNerveFlyEnemyChaseFlyFv
__dt__22TNerveFlyEnemyChaseFlyFv: # 0x800dc25c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800dc2a0
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800dc290
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800dc290:
    extsh.  r0, r4
    ble-    branch_0x800dc2a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800dc2a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setColorType__7TKillerFv
setColorType__7TKillerFv: # 0x800dc2b8
    lbz     r0, 0x1a6(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800dc2cc
    li      r0, 0x0
    stb     r0, 0x1a5(r3)
branch_0x800dc2cc:
    lbz     r0, 0x1a5(r3)
    cmplwi  r0, 0x0
    beqlr-    

    li      r4, 0x46
    sth     r4, 0x1fc(r3)
    li      r0, 0x14
    sth     r0, 0x1fe(r3)
    sth     r4, 0x200(r3)
    sth     r4, 0x204(r3)
    sth     r0, 0x206(r3)
    sth     r4, 0x208(r3)
    blr


.globl reset__7TKillerFv
reset__7TKillerFv: # 0x800dc2fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    mr      r29, r3
    stw     r29, R13Off_m0x6910(r13)
    bl      reset__12TWalkerEnemyFv
    li      r30, 0x0
    stw     r30, 0x1a0(r29)
    li      r31, 0x1
    stw     r31, 0x198(r29)
    stb     r30, 0x1a4(r29)
    lwz     r3, 0x19c(r29)
    lfs     f0, 0x33c(r3)
    stfs    f0, 0x194(r29)
    stb     r30, 0x1a5(r29)
    lfs     f1, -0x5d30(r2)
    lfs     f0, -0x5cd8(r2)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    sth     r30, 0x208(r29)
    sth     r30, 0x206(r29)
    sth     r30, 0x204(r29)
    sth     r30, 0x200(r29)
    sth     r30, 0x1fe(r29)
    sth     r30, 0x1fc(r29)
    stb     r30, 0x1a6(r29)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x20(sp)
    fsubs   f31, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x5ce0(r2)
    stw     r0, 0x2c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x5cd4(r2)
    stw     r0, 0x28(sp)
    lfs     f2, 0x20(sp)
    lfd     f3, 0x28(sp)
    lfs     f0, -0x5cd0(r2)
    fsubs   f3, f3, f4
    fmuls   f1, f1, f3
    fmuls   f1, f31, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800dc3f0
    stb     r31, 0x1a6(r29)
    li      r3, 0xc8
    li      r0, 0xb9
    sth     r3, 0x1fc(r29)
    li      r4, 0xff
    li      r3, 0xe1
    sth     r0, 0x1fe(r29)
    li      r0, 0x46
    sth     r30, 0x200(r29)
    sth     r4, 0x204(r29)
    sth     r3, 0x206(r29)
    sth     r0, 0x208(r29)
branch_0x800dc3f0:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x48
    blr


.globl changeOut__7TKillerFv
changeOut__7TKillerFv: # 0x800dc410
    mflr    r0
    li      r4, 0x293d
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    lwz     r0, R13Off_m0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800dc45c
    addi    r4, r30, 0x10
    li      r3, 0x293d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800dc45c:
    lwz     r0, 0xf0(r30)
    addi    r3, r30, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(r30)
    addi    r5, r30, 0x10
    li      r4, 0xcd
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r8, 0x178(r30)
    lwz     r3, 0x10(r8)
    lwz     r0, 0x14(r8)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r8)
    stw     r0, 0x18(r30)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r31, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x178(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x178(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl flyBehavior__7TKillerFv
flyBehavior__7TKillerFv: # 0x800dc504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, 0x1b4(r3)
    lfs     f0, 0x1bc(r3)
    stfs    f0, 0x144(r31)
    lwz     r5, 0x1b4(r31)
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x3b4(r5)
    lwz     r3, 0x20(r3)
    cmpw    r3, r0
    ble-    branch_0x800dc54c
    lfs     f1, 0x194(r31)
    lfs     f0, 0x3a0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x194(r31)
branch_0x800dc54c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x800dc598
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x800dc574
    li      r0, 0x1
    b       branch_0x800dc578

branch_0x800dc574:
    li      r0, 0x0
branch_0x800dc578:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dc598
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x800dc598:
    lfs     f1, 0x1b8(r31)
    lfs     f0, -0x5ccc(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x1b8(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl isCollidMove__7TKillerFP9THitActor
isCollidMove__7TKillerFP9THitActor: # 0x800dc5bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    lwz     r5, 0x4c(r4)
    addis   r0, r5, 0xc000
    cmplwi  r0, 0xa
    bne-    branch_0x800dc5e8
    li      r0, 0x1
    b       branch_0x800dc5ec

branch_0x800dc5e8:
    li      r0, 0x0
branch_0x800dc5ec:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dc608
    mr      r3, r4
    lwz     r12, 0x0(r4)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800dc608:
    lbz     r0, R13Off_m0x7de8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800dc708
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800dc658
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800dc658:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800dc708
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dc6b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveKillerExplosion@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r3, __vvt__21TNerveKillerExplosion@l
    lis     r4, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    lis     r3, unk_803f20b8@h
    addi    r5, r3, unk_803f20b8@l
    addi    r4, r4, __dt__21TNerveKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x68f8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dc6b0:
    addi    r6, r13, R13Off_m0x68f8
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800dc708
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800dc6fc
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800dc6fc
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800dc6fc:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800dc708:
    lwz     r0, 0x3c(sp)
    li      r3, 0x1
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isRollFly__7TKillerFv
isRollFly__7TKillerFv: # 0x800dc720
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800dc778
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800dc778:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800dc7b4
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800dc7a0
    li      r0, 0x1
    b       branch_0x800dc7a4

branch_0x800dc7a0:
    li      r0, 0x0
branch_0x800dc7a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dc7b4
    li      r3, 0x1
    b       branch_0x800dc7b8

branch_0x800dc7b4:
    li      r3, 0x0
branch_0x800dc7b8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setChaseFlyAnm__7TKillerFv
setChaseFlyAnm__7TKillerFv: # 0x800dc7cc
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


.globl setNormalFlyAnm__7TKillerFv
setNormalFlyAnm__7TKillerFv: # 0x800dc7fc
    mflr    r0
    lis     r4, unk_80380b80@h
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_80380b80@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x2
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x5d30(r2)
    li      r0, 0x0
    stfs    f0, 0x1b8(r31)
    stw     r0, 0x1a0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__7TKillerCFv
getBasNameTable__7TKillerCFv: # 0x800dc860
    lis     r3, killer_bastable@ha
    addi    r3, r3, killer_bastable@l
    blr


.globl attackToMario__7TKillerFv
attackToMario__7TKillerFv: # 0x800dc86c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f0, 0x14(r3)
    lfs     f1, 0x4(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800dc9a8
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dc8d8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveKillerExplosion@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r3, __vvt__21TNerveKillerExplosion@l
    lis     r4, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    lis     r3, unk_803f20b8@h
    addi    r5, r3, unk_803f20b8@l
    addi    r4, r4, __dt__21TNerveKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x68f8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dc8d8:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x68f8
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800dc99c
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dc92c
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__21TNerveKillerExplosion@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r4, __vvt__21TNerveKillerExplosion@l
    lis     r4, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    lis     r5, unk_803f20b8@h
    addi    r4, r4, __dt__21TNerveKillerExplosionFv@l
    addi    r5, r5, unk_803f20b8@l
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dc92c:
    addi    r6, r13, R13Off_m0x68f8
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x800dc984
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800dc978
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800dc978
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800dc978:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800dc984:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x188(r12)
    mtlr    r12
    blrl
    b       branch_0x800dc9a8

branch_0x800dc99c:
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      SMS_SendMessageToMario__FP9THitActorUl
branch_0x800dc9a8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setDeadAnm__7TKillerFv
setDeadAnm__7TKillerFv: # 0x800dc9bc
    mflr    r0
    lis     r4, unk_80380b94@h
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_80380b94@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x78(r3)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r12, 0x0(r31)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lis     r4, unk_80380be8@h
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_80380be8@l
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x800dca28
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__16TEffectExplosionFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x800dca28:
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x6
    lfs     f1, -0x5cd8(r2)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x5
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl isHitValid__7TKillerFUl
isHitValid__7TKillerFUl: # 0x800dca60
    mflr    r0
    cmplwi  r4, 0xb
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x800dcaa4
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
    b       branch_0x800dcac4

branch_0x800dcaa4:
    lbz     r0, R13Off_m0x7de7(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800dcac0
    lfs     f1, 0x194(r3)
    lfs     f0, -0x5cc8(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x194(r3)
branch_0x800dcac0:
    li      r3, 0x0
branch_0x800dcac4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl genEventCoin__7TKillerFv
genEventCoin__7TKillerFv: # 0x800dcad4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stfd    f27, 0xb0(sp)
    stfd    f26, 0xa8(sp)
    stfd    f25, 0xa0(sp)
    stfd    f24, 0x98(sp)
    stmw    r24, 0x78(sp)
    mr      r28, r3
    li      r30, 0x2
    lbz     r0, 0x1a6(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800dcb1c
    li      r30, 0x8
branch_0x800dcb1c:
    lfs     f26, -0x5d30(r2)
    addi    r31, sp, 0x20
    lfs     f27, -0x5d00(r2)
    xoris   r24, r30, 0x8000
    lfs     f28, -0x5d18(r2)
    lfs     f29, -0x5d14(r2)
    li      r29, 0x0
    lfs     f30, -0x5cd8(r2)
    lis     r25, 0x4330
    lfd     f31, -0x5ce0(r2)
    lfs     f24, -0x5cc4(r2)
    lis     r26, unk_2000000e@h
    lfs     f25, -0x5cf0(r2)
    b       branch_0x800dcc7c

branch_0x800dcb54:
    stw     r24, 0x74(sp)
    addi    r0, r29, 0x1
    xoris   r0, r0, 0x8000
    stw     r25, 0x70(sp)
    addi    r4, sp, 0x50
    addi    r3, r31, 0x0
    lfd     f0, 0x70(sp)
    mr      r5, r4
    stw     r0, 0x6c(sp)
    fsubs   f0, f0, f31
    stw     r25, 0x68(sp)
    fdivs   f1, f30, f0
    lfd     f0, 0x68(sp)
    stfs    f26, 0x50(sp)
    stfs    f26, 0x54(sp)
    stfs    f27, 0x58(sp)
    fmuls   f1, f29, f1
    lwz     r0, R13Off_m0x5eac(r13)
    fsubs   f0, f0, f31
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fmuls   f0, f1, f0
    fmuls   f0, f28, f0
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r7, 0x64(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f2, r6, r0
    fneg    f0, f1
    stfs    f2, 0x20(sp)
    stfs    f26, 0x24(sp)
    stfs    f1, 0x28(sp)
    stfs    f26, 0x2c(sp)
    stfs    f26, 0x30(sp)
    stfs    f30, 0x34(sp)
    stfs    f26, 0x38(sp)
    stfs    f26, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f26, 0x44(sp)
    stfs    f2, 0x48(sp)
    stfs    f26, 0x4c(sp)
    bl      PSMTXMultVec
    lfs     f3, 0x10(r28)
    addi    r4, r26, unk_2000000e@l
    lfs     f1, 0x50(sp)
    li      r5, 0x1
    lfs     f2, 0x18(r28)
    lfs     f0, 0x58(sp)
    fadds   f1, f3, f1
    lwz     r3, R13Off_m0x62b0(r13)
    fadds   f3, f2, f0
    lfs     f2, 0x14(r28)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    mr.     r27, r3
    beq-    branch_0x800dcc78
    lfs     f0, 0x14(r28)
    addi    r3, sp, 0x50
    addi    r4, r3, 0x0
    stfs    f0, 0x14(r27)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x50(sp)
    lfs     f1, 0x58(sp)
    fmuls   f0, f24, f0
    fmuls   f1, f24, f1
    stfs    f0, 0xac(r27)
    stfs    f25, 0xb0(r27)
    stfs    f1, 0xb4(r27)
    lwz     r0, 0xf0(r27)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r27)
branch_0x800dcc78:
    addi    r29, r29, 0x1
branch_0x800dcc7c:
    cmpw    r29, r30
    blt+    branch_0x800dcb54
    lmw     r24, 0x78(sp)
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lfd     f27, 0xb0(sp)
    lfd     f26, 0xa8(sp)
    lfd     f25, 0xa0(sp)
    lfd     f24, 0x98(sp)
    addi    sp, sp, 0xd8
    blr


.globl behaveToWater__7TKillerFP9THitActor
behaveToWater__7TKillerFP9THitActor: # 0x800dccb8
    mflr    r0
    lis     r4, unk_803f20a0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, unk_803f20a0@l
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    lbz     r0, R13Off_m0x690b(r13)
    extsb.  r0, r0
    bne-    branch_0x800dcd18
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveFlyEnemyNormalFly@ha
    stw     r0, R13Off_m0x6908(r13)
    addi    r0, r3, __vvt__23TNerveFlyEnemyNormalFly@l
    lis     r3, __dt__23TNerveFlyEnemyNormalFlyFv@ha
    stw     r0, R13Off_m0x6908(r13)
    addi    r4, r3, __dt__23TNerveFlyEnemyNormalFlyFv@l
    addi    r3, r13, R13Off_m0x6908
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x690b(r13)
branch_0x800dcd18:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6908
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800dcd80
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800dcd6c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r3, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r4, r3, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800dcd6c:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800dcd94
branch_0x800dcd80:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
branch_0x800dcd94:
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dcdd4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__21TNerveKillerExplosion@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r3, __vvt__21TNerveKillerExplosion@l
    lis     r3, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r4, r3, __dt__21TNerveKillerExplosionFv@l
    addi    r3, r13, R13Off_m0x68f8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dcdd4:
    lwz     r4, 0x8c(r30)
    addi    r3, r13, R13Off_m0x68f8
    lwz     r0, 0x14(r4)
    cmplw   r0, r3
    beq-    branch_0x800dceb0
    lbz     r0, R13Off_m0x68fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dce24
    lis     r4, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r4, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r4, __vvt__21TNerveKillerExplosion@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r0, r4, __vvt__21TNerveKillerExplosion@l
    lis     r4, __dt__21TNerveKillerExplosionFv@ha
    stw     r0, R13Off_m0x68f8(r13)
    addi    r4, r4, __dt__21TNerveKillerExplosionFv@l
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x68fc(r13)
branch_0x800dce24:
    addi    r6, r13, R13Off_m0x68f8
    lwz     r5, 0x8c(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x800dce7c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x800dce70
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x800dce70
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x800dce70:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x800dce7c:
    lwz     r0, 0x64(r30)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r30)
    lfs     f0, -0x5d30(r2)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x5c(sp)
    lwz     r3, 0x54(sp)
    lwz     r0, 0x58(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x5c(sp)
    stw     r0, 0xb4(r30)
branch_0x800dceb0:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__23TNerveFlyEnemyNormalFlyFv
__dt__23TNerveFlyEnemyNormalFlyFv: # 0x800dcec8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800dcf0c
    lis     r3, __vvt__23TNerveFlyEnemyNormalFly@ha
    addi    r0, r3, __vvt__23TNerveFlyEnemyNormalFly@l
    stw     r0, 0x0(r31)
    beq-    branch_0x800dcefc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x800dcefc:
    extsh.  r0, r4
    ble-    branch_0x800dcf0c
    mr      r3, r31
    bl      __dl__FPv
branch_0x800dcf0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setMActorAndKeeper__7TKillerFv
setMActorAndKeeper__7TKillerFv: # 0x800dcf24
    mflr    r0
    lis     r4, unk_80380a50@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, unk_80380a50@l
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800dcf60
    lwz     r4, 0x70(r30)
    addi    r3, r27, 0x0
    li      r5, 0x2
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x800dcf60:
    stw     r27, 0x78(r30)
    addi    r4, r31, 0x130
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r30)
    addi    r4, r31, 0x144
    li      r5, 0x3
    lwz     r3, 0x78(r30)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x130
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1b4
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r27, r3, 0x0
    addi    r4, r31, 0x130
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r31, 0x1c0
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r0, 0x78(r30)
    addi    r28, r3, 0x0
    addi    r4, r31, 0x130
    mr      r3, r0
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    addi    r4, r2, R2Off_m0x5cc0
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb4(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lwz     r5, 0x74(r30)
    addi    r29, r3, 0x0
    clrlwi  r4, r27, 16
    lwz     r3, 0x4(r5)
    addi    r6, r30, 0x1ec
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    clrlwi  r4, r28, 16
    addi    r6, r30, 0x1f4
    lwz     r3, 0x4(r3)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r30)
    clrlwi  r4, r29, 16
    addi    r6, r30, 0x1fc
    lwz     r3, 0x4(r3)
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x78(r30)
    addi    r4, r31, 0x144
    bl      getMActor__13TMActorKeeperCFPCc
    lwz     r3, 0x4(r3)
    clrlwi  r4, r29, 16
    addi    r6, r30, 0x204
    li      r5, 0x1
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl init__7TKillerFP12TLiveManager
init__7TKillerFP12TLiveManager: # 0x800dd078
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    bl      init__12TWalkerEnemyFP12TLiveManager
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r31)
    lis     r3, unk_1000001f@h
    addi    r0, r3, unk_1000001f@l
    stw     r0, 0x4c(r31)
    li      r0, 0x11
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x1b4(r31)
    lbz     r0, R13Off_m0x690b(r13)
    extsb.  r0, r0
    bne-    branch_0x800dd120
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__23TNerveFlyEnemyNormalFly@ha
    stw     r0, R13Off_m0x6908(r13)
    addi    r0, r3, __vvt__23TNerveFlyEnemyNormalFly@l
    lis     r4, __dt__23TNerveFlyEnemyNormalFlyFv@ha
    stw     r0, R13Off_m0x6908(r13)
    lis     r3, unk_803f20a0@h
    addi    r5, r3, unk_803f20a0@l
    addi    r4, r4, __dt__23TNerveFlyEnemyNormalFlyFv@l
    addi    r3, r13, R13Off_m0x6908
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x690b(r13)
branch_0x800dd120:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6908
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x400
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 21, 19
    stw     r0, 0xf0(r31)
    lwz     r0, 0x64(r31)
    oris    r0, r0, 0x4000
    stw     r0, 0x64(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r30, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x800dd1a4
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800dd194
    mr      r3, r29
    bl      __ct__13J3DSkinDeformFv
branch_0x800dd194:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x800dd1a4:
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    lha     r0, 0x7c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800dd1e0
    li      r30, 0x0
    b       branch_0x800dd1c4

branch_0x800dd1c0:
    addi    r30, r30, 0x1
branch_0x800dd1c4:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x4(r3)
    clrlwi  r4, r30, 24
    lhz     r0, 0x1c(r3)
    cmpw    r4, r0
    blt+    branch_0x800dd1c0
branch_0x800dd1e0:
    lis     r4, KillerBodyCallback__FP7J3DNodei@ha
    lwz     r3, 0x74(r31)
    addi    r5, r4, KillerBodyCallback__FP7J3DNodei@l
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lfs     f0, -0x5d30(r2)
    stfs    f0, 0x188(r31)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl __ct__7TKillerFPCc
__ct__7TKillerFPCc: # 0x800dd218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__9TFlyEnemy@ha
    addi    r3, r3, __vvt__9TFlyEnemy@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__7TKiller@ha
    stw     r0, 0x20(r31)
    li      r6, 0x0
    addi    r4, r3, __vvt__7TKiller@l
    stw     r6, 0x198(r31)
    li      r5, 0x1
    addi    r0, r4, 0x24
    stw     r6, 0x19c(r31)
    mr      r3, r31
    stw     r6, 0x1a0(r31)
    stb     r5, 0x1a5(r31)
    stb     r6, 0x1a6(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9TFlyEnemyFv
__dt__9TFlyEnemyFv: # 0x800dd28c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800dd30c
    lis     r3, __vvt__9TFlyEnemy@ha
    addi    r3, r3, __vvt__9TFlyEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dd2fc
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800dd2fc
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x800dd2fc:
    extsh.  r0, r31
    ble-    branch_0x800dd30c
    mr      r3, r30
    bl      __dl__FPv
branch_0x800dd30c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl KillerBodyCallback__FP7J3DNodei
KillerBodyCallback__FP7J3DNodei: # 0x800dd328
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x800dd504
    lwz     r31, R13Off_m0x6910(r13)
    cmplwi  r31, 0x0
    beq-    branch_0x800dd3ec
    lbz     r0, R13Off_m0x690c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x800dd3ec
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800dd3a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800dd3a4:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800dd3e0
    lwz     r0, 0x15c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x800dd3cc
    li      r0, 0x1
    b       branch_0x800dd3d0

branch_0x800dd3cc:
    li      r0, 0x0
branch_0x800dd3d0:
    clrlwi. r0, r0, 24
    beq-    branch_0x800dd3e0
    li      r0, 0x1
    b       branch_0x800dd3e4

branch_0x800dd3e0:
    li      r0, 0x0
branch_0x800dd3e4:
    clrlwi. r0, r0, 24
    bne-    branch_0x800dd3f4
branch_0x800dd3ec:
    li      r3, 0x1
    b       branch_0x800dd508

branch_0x800dd3f4:
    lhz     r30, 0x18(r30)
    lwz     r3, R13Off_m0x6910(r13)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    mulli   r0, r30, 0x30
    lfs     f2, -0x5d30(r2)
    lwz     r7, R13Off_m0x6910(r13)
    stfs    f2, 0x90(sp)
    add     r30, r3, r0
    addi    r31, sp, 0x54
    lfs     f1, -0x5d18(r2)
    stfs    f2, 0xa0(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    mr      r3, r30
    stfs    f2, 0xb0(sp)
    mr      r4, r31
    lwz     r8, R13Off_m0x5ea8(r13)
    lfs     f0, 0x148(r7)
    mr      r5, r30
    lwz     r6, R13Off_m0x5ea4(r13)
    stfs    f0, 0x84(sp)
    stfs    f2, 0x88(sp)
    stfs    f2, 0x8c(sp)
    stfs    f2, 0x94(sp)
    stfs    f0, 0x98(sp)
    stfs    f2, 0x9c(sp)
    stfs    f2, 0xa4(sp)
    stfs    f2, 0xa8(sp)
    stfs    f0, 0xac(sp)
    lfs     f0, 0x1b8(r7)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r7, 0xbc(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f1
    stfs    f3, 0x54(sp)
    stfs    f0, 0x58(sp)
    stfs    f2, 0x5c(sp)
    stfs    f2, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f3, 0x68(sp)
    stfs    f2, 0x6c(sp)
    stfs    f2, 0x70(sp)
    stfs    f2, 0x74(sp)
    stfs    f2, 0x78(sp)
    lfs     f0, -0x5cd8(r2)
    stfs    f0, 0x7c(sp)
    stfs    f2, 0x80(sp)
    bl      PSMTXConcat
    addi    r3, r30, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x84
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r30, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      PSMTXConcat
    addi    r5, r30, 0x0
    addi    r3, r30, 0x0
    addi    r4, sp, 0x84
    bl      PSMTXConcat
branch_0x800dd504:
    li      r3, 0x1
branch_0x800dd508:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    addi    sp, sp, 0xc8
    blr


.globl createEnemyInstance__14TKillerManagerFv
createEnemyInstance__14TKillerManagerFv: # 0x800dd520
    mflr    r0
    li      r3, 0x210
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x800dd570
    stw     r31, 0xc(sp)
    addi    r4, r2, R2Off_m0x5cb8
    lwz     r3, 0xc(sp)
    bl      __ct__9TFlyEnemyFPCc
    lwz     r4, 0xc(sp)
    lis     r3, __vvt__7TKiller@ha
    addi    r3, r3, __vvt__7TKiller@l
    stw     r3, 0x0(r4)
    addi    r0, r3, 0x24
    addi    r3, r4, 0x1bc
    stw     r0, 0x20(r4)
    bl      __ct__Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f__Fv
branch_0x800dd570:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9TFlyEnemyFPCc
__ct__9TFlyEnemyFPCc: # 0x800dd588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__9TFlyEnemy@ha
    addi    r3, r3, __vvt__9TFlyEnemy@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, 0x1
    addi    r3, r31, 0x0
    stw     r4, 0x198(r31)
    stw     r4, 0x19c(r31)
    stw     r4, 0x1a0(r31)
    stb     r0, 0x1a5(r31)
    stb     r4, 0x1a6(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createModelData__14TKillerManagerFv
createModelData__14TKillerManagerFv: # 0x800dd5e8
    mflr    r0
    lis     r4, entry_3038@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, entry_3038@l
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__14TKillerManagerFR20JSUMemoryInputStream
load__14TKillerManagerFR20JSUMemoryInputStream: # 0x800dd61c
    mflr    r0
    lis     r5, unk_80380a50@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r31, r5, unk_80380a50@l
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    li      r3, 0x3cc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800dd7d8
    stw     r29, 0x10(sp)
    addi    r4, r31, 0x1cc
    stw     r29, 0x14(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0x1e0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r27, 0x10(sp)
    addi    r5, r3, 0x0
    lfs     f1, -0x5cb0(r2)
    addi    r6, r31, 0x1e0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x32c
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r30, r3, __vvt__11TParamRT_f_@l
    stw     r30, 0x32c(r27)
    addi    r3, r31, 0x1f8
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x5d08(r2)
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x340
    addi    r6, r31, 0x1f8
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r30, 0x340(r27)
    addi    r3, r31, 0x20c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x5cac(r2)
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x354
    addi    r6, r31, 0x20c
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r30, 0x354(r27)
    addi    r3, r31, 0x220
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x5ca8(r2)
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x368
    addi    r6, r31, 0x220
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r30, 0x368(r27)
    addi    r3, r31, 0x230
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x5cac(r2)
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x37c
    addi    r6, r31, 0x230
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r30, 0x37c(r27)
    mr      r3, r27
    lwz     r4, 0x0(r27)
    bl      load__7TParamsFPCc
    addi    r3, r31, 0x244
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r26, 0x14(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x244
    addi    r4, r26, 0x0
    addi    r3, r26, 0x390
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r27, r3, __vvt__10TParamT_f_@l
    stw     r27, 0x390(r26)
    addi    r3, r31, 0x258
    lfs     f0, -0x5cd8(r2)
    stfs    f0, 0x3a0(r26)
    stw     r30, 0x390(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x3a4
    addi    r6, r31, 0x258
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0x3a4(r26)
    li      r0, 0x3e8
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x3b4(r26)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    addi    r3, r31, 0x268
    stw     r0, 0x3a4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x3b8
    addi    r6, r31, 0x268
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x3b8(r26)
    mr      r3, r26
    lfs     f0, -0x5ca4(r2)
    stfs    f0, 0x3c8(r26)
    stw     r30, 0x3b8(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x800dd7d8:
    stw     r29, 0x38(r28)
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__10TParamT_f_FP7TParamsfUsPCc
__ct__10TParamT_f_FP7TParamsfUsPCc: # 0x800dd7f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r0, r3, __vvt__10TParamT_f_@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    stfs    f31, 0x10(r31)
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__14TKillerManagerFPCc
__ct__14TKillerManagerFPCc: # 0x800dd83c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__14TKillerManager@ha
    addi    r0, r3, __vvt__14TKillerManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, R13Off_m0x6910(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveFlyEnemyChaseFlyCFP24TSpineBase_10TLiveActor_
execute__22TNerveFlyEnemyChaseFlyCFP24TSpineBase_10TLiveActor_: # 0x800dd880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stfd    f31, 0x128(sp)
    stfd    f30, 0x120(sp)
    stfd    f29, 0x118(sp)
    stw     r31, 0x114(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800dd8e0
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    stw     r4, 0x1a8(r31)
    stw     r0, 0x1ac(r31)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x1b0(r31)
    bl      calcChaseParam__9TFlyEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
branch_0x800dd8e0:
    lbz     r0, 0x1a5(r31)
    lfs     f1, -0x5cd8(r2)
    cmplwi  r0, 0x0
    bne-    branch_0x800dd968
    lfs     f1, 0x140(r31)
    lfs     f0, -0x5cac(r2)
    fmuls   f5, f1, f1
    stfs    f0, 0x1ac(r31)
    lfs     f1, 0x1a8(r31)
    lfs     f0, 0x1ac(r31)
    lfs     f3, 0x1b0(r31)
    fmuls   f2, f1, f1
    fmuls   f1, f0, f0
    lfs     f0, -0x5d30(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x800dd934
    b       branch_0x800dd958

branch_0x800dd934:
    frsqrte f3, f4
    lfs     f2, -0x5ca0(r2)
    lfs     f0, -0x5cc4(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x800dd958:
    fdivs   f1, f4, f5
    lfs     f0, -0x7de4(r13)
    fmuls   f1, f1, f0
    b       branch_0x800dd978

branch_0x800dd968:
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800dd978
    lfs     f1, -0x5d2c(r2)
branch_0x800dd978:
    lwz     r12, 0x0(r31)
    mr      r3, r31
    li      r4, 0x2
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1a5(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800dd9ac
    mr      r3, r31
    bl      isReachedToGoalXZ__12TWalkerEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x800dd9d0
branch_0x800dd9ac:
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800dd9d8
    lfs     f1, -0x5c9c(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x800dd9d8
branch_0x800dd9d0:
    mr      r3, r31
    bl      calcChaseParam__9TFlyEnemyFv
branch_0x800dd9d8:
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x800dda14
    bge-    branch_0x800ddc94
    cmpwi   r0, 0x0
    bge-    branch_0x800dd9f4
    b       branch_0x800ddc94

branch_0x800dd9f4:
    mr      r3, r31
    lfs     f1, -0x5cd8(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x3
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    b       branch_0x800ddc94

branch_0x800dda14:
    lwz     r3, 0xac(r31)
    addi    r4, r31, 0xf4
    lwz     r0, 0xb0(r31)
    lfs     f1, -0x5d24(r2)
    stw     r3, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xfc(sp)
    lfs     f0, 0xf4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf4(sp)
    lfs     f0, 0xf8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf8(sp)
    lfs     f0, 0xfc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xfc(sp)
    lwz     r3, 0xf4(sp)
    lwz     r0, 0xf8(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xfc(sp)
    stw     r0, 0xb4(r31)
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800dda84
    addi    r5, r3, 0x10
    b       branch_0x800dda88

branch_0x800dda84:
    addi    r5, r4, 0x4
branch_0x800dda88:
    lwz     r4, 0x0(r5)
    addi    r3, sp, 0x88
    lwz     r0, 0x4(r5)
    stw     r4, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x90(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    bl      PSVECMag
    lfs     f2, -0x5d30(r2)
    lfs     f1, 0x90(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800ddb08
    lfs     f0, 0x88(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800ddb00
    lfs     f1, -0x5cec(r2)
    b       branch_0x800ddb84

branch_0x800ddb00:
    lfs     f1, -0x5c98(r2)
    b       branch_0x800ddb84

branch_0x800ddb08:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800ddb48
    lfs     f2, 0x88(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5ce0(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5c94(r2)
    stw     r0, 0x10c(sp)
    lis     r0, 0x4330
    stw     r0, 0x108(sp)
    lfd     f1, 0x108(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800ddb84

branch_0x800ddb48:
    fneg    f1, f1
    lfs     f2, 0x88(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5ce0(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5c94(r2)
    stw     r0, 0x10c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5c90(r2)
    stw     r0, 0x108(sp)
    lfd     f2, 0x108(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800ddb84:
    lfs     f2, -0x5d30(r2)
    lfs     f3, -0x5d14(r2)
    bl      MsWrap_f___Ffff_800dde4c
    fmr     f31, f1
    lfs     f0, -0x5c90(r2)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_800dde4c
    fsubs   f2, f31, f1
    lfs     f0, -0x5d30(r2)
    fcmpo   cr0, f2, f0
    ble-    branch_0x800ddbd0
    lfs     f1, 0x144(r31)
    fcmpo   cr0, f2, f1
    ble-    branch_0x800ddbc8
    b       branch_0x800ddbec

branch_0x800ddbc8:
    fmr     f1, f2
    b       branch_0x800ddbec

branch_0x800ddbd0:
    lfs     f0, 0x144(r31)
    fneg    f0, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800ddbe4
    b       branch_0x800ddbe8

branch_0x800ddbe4:
    fmr     f2, f0
branch_0x800ddbe8:
    fmr     f1, f2
branch_0x800ddbec:
    lfs     f0, 0x34(r31)
    lfs     f2, -0x5d30(r2)
    fadds   f1, f0, f1
    lfs     f3, -0x5d14(r2)
    bl      MsWrap_f___Ffff_800dde4c
    stfs    f1, 0x34(r31)
    lwz     r3, 0x94(r31)
    lwz     r0, 0x98(r31)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x9c(sp)
    lfs     f30, 0x34(r31)
    lfs     f31, 0x140(r31)
    fmr     f1, f30
    bl      MsCos__Ff
    fmuls   f29, f31, f1
    fmr     f1, f30
    bl      MsSin__Ff
    fmuls   f1, f31, f1
    lfs     f2, -0x5d30(r2)
    fmr     f3, f29
    addi    r3, sp, 0xa0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_800dddcc
    lfs     f2, 0x94(sp)
    lfs     f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    fadds   f2, f2, f0
    lfs     f0, 0xa8(sp)
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
branch_0x800ddc94:
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x800ddd44
    lfs     f1, -0x5d1c(r2)
    lfs     f0, 0xc8(r31)
    lfs     f2, 0x14(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x800ddd44
    mr      r3, r31
    lfs     f29, 0x140(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f2, -0x5c8c(r2)
    addi    r3, sp, 0xb8
    lfs     f0, 0x140(r31)
    addi    r4, sp, 0xe8
    fmuls   f1, f2, f1
    stfs    f0, 0xe8(sp)
    stfs    f1, 0xec(sp)
    stfs    f29, 0xf0(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0xb8(sp)
    mr      r3, r31
    stfs    f0, 0x30(r31)
    lwz     r4, 0x94(r31)
    lwz     r0, 0x98(r31)
    stw     r4, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0xe4(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    stfs    f1, 0xe0(sp)
    addi    r3, sp, 0xac
    addi    r4, sp, 0xdc
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0xac(sp)
    stfs    f0, 0x30(r31)
    b       branch_0x800ddd54

branch_0x800ddd44:
    lfs     f1, 0x30(r31)
    lfs     f0, -0x5c88(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x30(r31)
branch_0x800ddd54:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x5c84(r2)
    lfs     f0, 0x24(r31)
    lfs     f2, 0x148(r31)
    fmuls   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x800ddd88
    fmr     f1, f2
    b       branch_0x800ddd98

branch_0x800ddd88:
    lfs     f0, -0x5d30(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800ddd98
    fmr     f1, f0
branch_0x800ddd98:
    stfs    f1, 0x2c(r31)
    li      r3, 0x0
    stfs    f1, 0x28(r31)
    stfs    f1, 0x24(r31)
    lwz     r0, 0x134(sp)
    lfd     f31, 0x128(sp)
    lfd     f30, 0x120(sp)
    lfd     f29, 0x118(sp)
    lwz     r31, 0x114(sp)
    addi    sp, sp, 0x130
    mtlr    r0
    blr


.globl flyBehavior__9TFlyEnemyFv
flyBehavior__9TFlyEnemyFv: # 0x800dddc8
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_800dddcc
set_f___Q29JGeometry8TVec3_f_Ffff_800dddcc: # 0x800dddcc
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl MsSin__Ff
MsSin__Ff: # 0x800ddddc
    stwu    sp, -0x18(sp)
    lfs     f0, -0x5d18(r2)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f0, f1
    lwz     r4, R13Off_m0x5ea8(r13)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    blr


.globl MsCos__Ff
MsCos__Ff: # 0x800dde14
    stwu    sp, -0x18(sp)
    lfs     f0, -0x5d18(r2)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f0, f1
    lwz     r4, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f1, r4, r0
    blr


.globl MsWrap_f___Ffff_800dde4c
MsWrap_f___Ffff_800dde4c: # 0x800dde4c
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x800dde88
    fmr     f1, f2
    blr

branch_0x800dde60:
    b       branch_0x800dde68

branch_0x800dde64:
    fsubs   f1, f1, f0
branch_0x800dde68:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x800dde64
    b       branch_0x800dde7c

branch_0x800dde78:
    fadds   f1, f1, f0
branch_0x800dde7c:
    fcmpo   cr0, f1, f2
    blt+    branch_0x800dde78
    blr

branch_0x800dde88:
    fsubs   f0, f3, f2
    b       branch_0x800dde68

branch_0x800dde90:
    blr


.globl setChaseFlyAnm__9TFlyEnemyFv
setChaseFlyAnm__9TFlyEnemyFv: # 0x800dde94
    blr


.globl execute__23TNerveFlyEnemyNormalFlyCFP24TSpineBase_10TLiveActor_
execute__23TNerveFlyEnemyNormalFlyCFP24TSpineBase_10TLiveActor_: # 0x800dde98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r4
    stw     r30, 0x88(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800dded4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
branch_0x800dded4:
    lbz     r0, 0x1a4(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x800ddf8c
    lwz     r0, 0x1a0(r30)
    cmpwi   r0, 0x1f4
    ble-    branch_0x800ddf8c
    mr      r3, r30
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x19c(r30)
    lfs     f0, 0x134(r30)
    lfs     f1, 0x378(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800de064
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800ddf50
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800ddf50:
    addi    r4, r13, R13Off_m0x6900
    cmplwi  r4, 0x0
    beq-    branch_0x800ddf84
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800ddf84
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800ddf84:
    li      r3, 0x1
    b       branch_0x800de0d0

branch_0x800ddf8c:
    lbz     r0, 0x1a6(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x800de064
    mr      r3, r30
    lfs     f1, -0x5cd8(r2)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800de064
    lwz     r0, 0x1a0(r30)
    cmpwi   r0, 0x64
    ble-    branch_0x800de064
    mr      r3, r30
    bl      updateSquareToMario__11TSpineEnemyFv
    lwz     r3, 0x19c(r30)
    lfs     f0, 0x134(r30)
    lfs     f1, 0x378(r3)
    fmuls   f1, f1, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x800de064
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800de028
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800de028:
    addi    r4, r13, R13Off_m0x6900
    cmplwi  r4, 0x0
    beq-    branch_0x800de05c
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x800de05c
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x800de05c:
    li      r3, 0x1
    b       branch_0x800de0d0

branch_0x800de064:
    lwz     r5, 0xac(r30)
    addi    r4, sp, 0x64
    lwz     r0, 0xb0(r30)
    addi    r3, sp, 0x70
    stw     r5, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x6c(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x70(sp)
    stfs    f0, 0x30(r30)
    lfs     f1, -0x5c80(r2)
    lfs     f0, 0x24(r30)
    lfs     f2, 0x148(r30)
    fmuls   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x800de0b0
    fmr     f1, f2
    b       branch_0x800de0c0

branch_0x800de0b0:
    lfs     f0, -0x5d30(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800de0c0
    fmr     f1, f0
branch_0x800de0c0:
    stfs    f1, 0x2c(r30)
    li      r3, 0x0
    stfs    f1, 0x28(r30)
    stfs    f1, 0x24(r30)
branch_0x800de0d0:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl setNormalFlyAnm__9TFlyEnemyFv
setNormalFlyAnm__9TFlyEnemyFv: # 0x800de0e8
    blr


.globl bind__9TFlyEnemyFv
bind__9TFlyEnemyFv: # 0x800de0ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800de144
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800de144:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x800de168
    lwz     r3, 0x1a0(r31)
    lwz     r0, R13Off_m0x7de0(r13)
    cmpw    r3, r0
    bge-    branch_0x800de174
branch_0x800de168:
    mr      r3, r31
    bl      fly__9TFlyEnemyFv
    b       branch_0x800de17c

branch_0x800de174:
    mr      r3, r31
    bl      bind__10TLiveActorFv
branch_0x800de17c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl calcChaseParam__9TFlyEnemyFv
calcChaseParam__9TFlyEnemyFv: # 0x800de190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f0, 0x10(r3)
    lfs     f1, 0x0(r4)
    lfs     f3, 0x4(r4)
    lfs     f2, 0x14(r3)
    fsubs   f0, f1, f0
    lfs     f4, 0x8(r4)
    lfs     f1, 0x18(r3)
    fsubs   f2, f3, f2
    stfs    f0, 0x78(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x78(sp)
    lfs     f1, -0x5c84(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x80(sp)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x7c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x74(sp)
    lbz     r0, 0x1a5(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800de294
    li      r4, 0x0
    lwz     r3, 0x6c(sp)
    stw     r4, 0x4c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x74(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x4c(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x4c(sp)
    stw     r0, 0x104(r31)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x110(r31)
    stw     r4, 0x118(r31)
branch_0x800de294:
    lfs     f1, 0x7c(sp)
    lfs     f0, -0x5c9c(r2)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x800de2b0
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800de300
branch_0x800de2b0:
    lbz     r0, 0x1a5(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x800de2ec
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x800de2e0
    lwz     r0, 0x160(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800de2e0
    lwz     r3, 0x19c(r31)
    lfs     f0, 0x364(r3)
    stfs    f0, 0x194(r31)
branch_0x800de2e0:
    li      r0, 0x2
    stw     r0, 0x198(r31)
    b       branch_0x800de3ac

branch_0x800de2ec:
    lfs     f1, 0x14(r31)
    lfs     f0, -0x5cd8(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    b       branch_0x800de3ac

branch_0x800de300:
    lwz     r3, 0x19c(r31)
    lfs     f0, 0x33c(r3)
    stfs    f0, 0x194(r31)
    lfs     f0, -0x5d30(r2)
    stfs    f0, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x68(sp)
    lwz     r0, 0x198(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x800de338
    lfs     f1, 0x7c(sp)
    lfs     f0, -0x5cfc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800de378
branch_0x800de338:
    li      r0, 0x0
    addi    r3, sp, 0x78
    stw     r0, 0x198(r31)
    mr      r4, r3
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r4, 0x19c(r31)
    lfs     f0, 0x78(sp)
    lfs     f1, 0x350(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x38c(r4)
    stfs    f0, 0x194(r31)
    b       branch_0x800de388

branch_0x800de378:
    lfs     f1, 0x14(r31)
    lfs     f0, -0x5cc4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800de388:
    lfs     f0, -0x5d30(r2)
    stfs    f0, 0x68(sp)
    stfs    f0, 0x60(sp)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x68(sp)
    stw     r0, 0xb4(r31)
branch_0x800de3ac:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl fly__9TFlyEnemyFv
fly__9TFlyEnemyFv: # 0x800de3c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    addi    r4, r31, 0xc4
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x60(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lwz     r5, R13Off_m0x60a4(r13)
    stw     r3, 0x4c(sp)
    lfs     f2, -0x7ddc(r13)
    stw     r0, 0x50(sp)
    lwz     r3, R13Off_m0x609c(r13)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x54(sp)
    lfs     f0, 0x0(r5)
    lfs     f1, 0x4c(sp)
    fdivs   f0, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x0(r3)
    lfs     f1, 0x54(sp)
    fdivs   f0, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f2, 0x58(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x58(sp)
    lfs     f1, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x60(sp)
    lfs     f1, 0x5c(sp)
    lfs     f0, 0x194(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x5c(sp)
    lfs     f31, 0x5c(sp)
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f31, f0
    lfs     f1, 0x58(sp)
    lfs     f3, 0x60(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lfs     f1, 0xc8(r31)
    lfs     f0, -0x5cd8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r31)
    lfs     f0, 0xc8(r31)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x800de5a4
    lwz     r3, 0x1a0(r31)
    lwz     r0, R13Off_m0x7de0(r13)
    cmpw    r3, r0
    ble-    branch_0x800de524
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    lfs     f0, -0x5d30(r2)
    stfs    f0, 0xac(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xb4(r31)
    lfs     f0, 0xc8(r31)
    stfs    f0, 0x5c(sp)
branch_0x800de524:
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800de568
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xa
    bne-    branch_0x800de54c
    li      r0, 0x1
    b       branch_0x800de550

branch_0x800de54c:
    li      r0, 0x0
branch_0x800de550:
    clrlwi. r0, r0, 24
    beq-    branch_0x800de568
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x800de568:
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800de580
    li      r0, 0x1
    b       branch_0x800de584

branch_0x800de580:
    li      r0, 0x0
branch_0x800de584:
    clrlwi. r0, r0, 24
    beq-    branch_0x800de5b0
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x800de5b0

branch_0x800de5a4:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x800de5b0:
    lwz     r0, 0x58(sp)
    addi    r3, sp, 0x20
    lwz     r5, 0x5c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x20(sp)
    lwz     r0, 0x60(sp)
    stw     r5, 0x24(sp)
    stw     r0, 0x28(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x28(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl reset__9TFlyEnemyFv
reset__9TFlyEnemyFv: # 0x800de604
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      reset__12TWalkerEnemyFv
    li      r4, 0x0
    stw     r4, 0x1a0(r31)
    li      r0, 0x1
    stw     r0, 0x198(r31)
    stb     r4, 0x1a4(r31)
    lwz     r3, 0x19c(r31)
    lfs     f0, 0x33c(r3)
    stfs    f0, 0x194(r31)
    stb     r4, 0x1a5(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl getGravityY__9TFlyEnemyCFv
getGravityY__9TFlyEnemyCFv: # 0x800de654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6904(r13)
    extsb.  r0, r0
    bne-    branch_0x800de6ac
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveFlyEnemyChaseFly@ha
    stw     r0, R13Off_m0x6900(r13)
    addi    r0, r3, __vvt__22TNerveFlyEnemyChaseFly@l
    lis     r4, __dt__22TNerveFlyEnemyChaseFlyFv@ha
    stw     r0, R13Off_m0x6900(r13)
    lis     r3, unk_803f20ac@h
    addi    r5, r3, unk_803f20ac@l
    addi    r4, r4, __dt__22TNerveFlyEnemyChaseFlyFv@l
    addi    r3, r13, R13Off_m0x6900
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6904(r13)
branch_0x800de6ac:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6900
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x800de6c8
    lfs     f1, 0x194(r31)
    b       branch_0x800de6d0

branch_0x800de6c8:
    lwz     r3, 0x19c(r31)
    lfs     f1, 0x33c(r3)
branch_0x800de6d0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl init__9TFlyEnemyFP12TLiveManager
init__9TFlyEnemyFP12TLiveManager: # 0x800de6e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl forceKill__7TKillerFv
forceKill__7TKillerFv: # 0x800de728
    blr


.globl setAfterDeadEffect__9TFlyEnemyFv
setAfterDeadEffect__9TFlyEnemyFv: # 0x800de72c
    blr


.globl __dt__7TKillerFv
__dt__7TKillerFv: # 0x800de730
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800de7b0
    lis     r3, __vvt__7TKiller@ha
    addi    r3, r3, __vvt__7TKiller@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800de7a0
    lis     r3, __vvt__9TFlyEnemy@ha
    addi    r3, r3, __vvt__9TFlyEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800de7a0
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x800de7a0:
    extsh.  r0, r31
    ble-    branch_0x800de7b0
    mr      r3, r30
    bl      __dl__FPv
branch_0x800de7b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__14TKillerManagerFv
__dt__14TKillerManagerFv: # 0x800de7cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800de824
    lis     r3, __vvt__14TKillerManager@ha
    addi    r0, r3, __vvt__14TKillerManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x800de814
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x800de814:
    extsh.  r0, r31
    ble-    branch_0x800de824
    mr      r3, r30
    bl      __dl__FPv
branch_0x800de824:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_killer_cpp
__sinit_killer_cpp: # 0x800de840
    mflr    r0
    lis     r3, unk_803f20a0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f20a0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x800de888
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x800de888:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x800de8b8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x800de8b8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x800de8e8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x800de8e8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x800de918
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x800de918:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x800de948
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x800de948:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x800de978
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x800de978:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x800de9a8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x800de9a8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x800de9d8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x800de9d8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x800dea08
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x800dea08:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x800dea38
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x800dea38:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x800dea68
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x800dea68:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x800dea98
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x800dea98:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x800deac8
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x800deac8:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x800deaf8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x800deaf8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x800deb28
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x800deb28:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_800deb3c
unk_800deb3c: # 0x800deb3c
    addi    r3, r3, -0x20
    b       __dt__9TFlyEnemyFv


.globl unk_800deb44
unk_800deb44: # 0x800deb44
    addi    r3, r3, -0x20
    b       __dt__7TKillerFv

