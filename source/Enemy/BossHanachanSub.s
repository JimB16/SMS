
.globl __dt__14TWaterHitActorFv
__dt__14TWaterHitActorFv: # 0x800eccd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x800ecd38
    lis     r3, __vvt__14TWaterHitActor@ha
    addi    r3, r3, __vvt__14TWaterHitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x800ecd28
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x800ecd28:
    extsh.  r0, r31
    ble-    branch_0x800ecd38
    mr      r3, r30
    bl      __dl__FPv
branch_0x800ecd38:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setDegreeZAndRevisionPosXZ__11TSphereLinkFif
setDegreeZAndRevisionPosXZ__11TSphereLinkFif: # 0x800ecd54
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0x2c
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    fmr     f30, f1
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    li      r30, 0x0
    stw     r29, 0x8c(sp)
    mr      r29, r3
    lwz     r3, 0x4(r3)
    add     r31, r3, r0
    lfs     f31, 0x28(r31)
    fcmpu   cr0, f31, f30
    beq-    branch_0x800ecf48
    cmpwi   r4, 0x0
    stfs    f30, 0x28(r31)
    li      r30, 0x1
    bne-    branch_0x800ecdb0
    lfs     f3, 0x18(r29)
    b       branch_0x800ecee0

branch_0x800ecdb0:
    addi    r0, r4, -0x1
    lwz     r4, 0x4(r29)
    mulli   r3, r0, 0x2c
    addi    r0, r3, 0xc
    add     r6, r4, r0
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x40
    lwz     r0, 0x4(r6)
    addi    r4, r31, 0xc
    stw     r5, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x48(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x40(sp)
    lwz     r3, 0x44(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x48(sp)
    stw     r3, 0x78(sp)
    lfs     f2, -0x5a58(r2)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x7c(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x800ece30
    lfs     f0, 0x74(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x800ece28
    lfs     f2, -0x5a54(r2)
    b       branch_0x800eceac

branch_0x800ece28:
    lfs     f2, -0x5a50(r2)
    b       branch_0x800eceac

branch_0x800ece30:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x800ece70
    lfs     f2, 0x74(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5a38(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5a4c(r2)
    stw     r0, 0x84(sp)
    lis     r0, 0x4330
    stw     r0, 0x80(sp)
    lfd     f1, 0x80(sp)
    fsubs   f1, f1, f2
    fmuls   f2, f0, f1
    b       branch_0x800eceac

branch_0x800ece70:
    fneg    f1, f1
    lfs     f2, 0x74(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5a38(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5a4c(r2)
    stw     r0, 0x84(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5a48(r2)
    stw     r0, 0x80(sp)
    lfd     f2, 0x80(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f2, f0, f1
branch_0x800eceac:
    lfs     f0, -0x5a44(r2)
    b       branch_0x800eceb8

branch_0x800eceb4:
    fsubs   f2, f2, f0
branch_0x800eceb8:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x800eceb4
    lfs     f1, -0x5a44(r2)
    lfs     f0, -0x5a58(r2)
    b       branch_0x800eced4

branch_0x800eced0:
    fadds   f2, f2, f1
branch_0x800eced4:
    fcmpo   cr0, f2, f0
    blt+    branch_0x800eced0
    fmr     f3, f2
branch_0x800ecee0:
    fsubs   f1, f30, f31
    lfs     f2, 0x14(r29)
    lfs     f0, -0x5a40(r2)
    fmuls   f30, f2, f1
    fmuls   f1, f0, f3
    bl      CLBRoundf_s___Ff
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r3, R13Off_m0x5ea8(r13)
    fneg    f1, f30
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, R13Off_m0x5ea4(r13)
    lfs     f0, -0x5a58(r2)
    lfsx    f5, r3, r0
    lfsx    f4, r4, r0
    fmuls   f3, f0, f5
    lfs     f2, 0xc(r31)
    fmuls   f0, f0, f4
    fmadds  f3, f30, f4, f3
    fmadds  f0, f1, f5, f0
    fadds   f1, f2, f3
    stfs    f1, 0xc(r31)
    lfs     f1, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
branch_0x800ecf48:
    lwz     r0, 0xac(sp)
    mr      r3, r30
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0xa8
    blr


.globl moveHead__11TSphereLinkFRCQ29JGeometry8TVec3_f_
moveHead__11TSphereLinkFRCQ29JGeometry8TVec3_f_: # 0x800ecf70
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    stfd    f28, 0xe8(sp)
    stmw    r27, 0xd4(sp)
    addi    r29, r3, 0x0
    li      r3, 0x0
    b       branch_0x800ecffc

branch_0x800ecfa0:
    lwz     r5, 0x4(r29)
    addi    r0, r3, 0x10
    lfs     f0, 0xc(r29)
    addi    r7, r7, 0x1
    lfsx    f1, r5, r0
    fadds   f0, f1, f0
    stfsx   f0, r5, r0
    lwz     r0, 0x4(r29)
    add     r5, r0, r3
    addi    r6, r5, 0x18
    lfs     f0, 0x18(r5)
    lfsu    f1, 0xc(r5)
    addi    r3, r3, 0x2c
    fadds   f0, f1, f0
    stfs    f0, 0x0(r5)
    lfs     f1, 0x4(r5)
    lfs     f0, 0x4(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r5)
    lfs     f1, 0x8(r5)
    lfs     f0, 0x8(r6)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r5)
branch_0x800ecffc:
    lhz     r0, 0x0(r29)
    cmpw    r7, r0
    blt+    branch_0x800ecfa0
    lwz     r5, 0x4(r29)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x14(r5)
    lwz     r3, 0x4(r29)
    lfs     f2, 0x10(r29)
    addi    r28, r3, 0xc
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x4(r28)
    addi    r4, r28, 0x0
    addi    r5, r28, 0x8
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lfs     f1, 0x4(r28)
    addi    r4, sp, 0x80
    lfs     f0, 0x10(r29)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r28)
    lfs     f3, 0x8(r28)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x80(sp)
    fmr     f28, f1
    cmplwi  r3, 0x0
    beq-    branch_0x800ed0a8
    bl      isIllegalData__12TBGCheckDataCFv
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800ed08c
    li      r0, 0x0
    b       branch_0x800ed090

branch_0x800ed08c:
    li      r0, 0x1
branch_0x800ed090:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ed0a8
    lfs     f0, 0x4(r28)
    fcmpo   cr0, f0, f28
    bge-    branch_0x800ed0a8
    stfs    f28, 0x4(r28)
branch_0x800ed0a8:
    lfs     f28, -0x5a30(r2)
    li      r31, 0x1
    lfs     f29, -0x5a58(r2)
    li      r28, 0x2c
    lfs     f30, -0x5a2c(r2)
    b       branch_0x800ed244

branch_0x800ed0c0:
    addi    r0, r31, -0x1
    lwz     r4, 0x4(r29)
    mulli   r0, r0, 0x2c
    add     r30, r4, r28
    add     r27, r4, r0
    lwz     r3, 0xc(r30)
    lwz     r0, 0x10(r30)
    addi    r4, r27, 0xc
    stw     r3, 0x5c(sp)
    addi    r3, sp, 0x5c
    stw     r0, 0x60(sp)
    lwz     r0, 0x14(r30)
    stw     r0, 0x64(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x5c(sp)
    lwz     r3, 0x60(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x98(sp)
    stw     r0, 0x9c(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x98(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x9c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f28
    cror    2, 0, 2
    bne-    branch_0x800ed14c
    stfs    f29, 0x94(sp)
    stfs    f30, 0x98(sp)
    stfs    f29, 0x9c(sp)
    b       branch_0x800ed158

branch_0x800ed14c:
    addi    r3, sp, 0x94
    addi    r4, r3, 0x0
    bl      PSVECNormalize
branch_0x800ed158:
    lfs     f1, 0x24(r30)
    addi    r3, sp, 0x4c
    lfs     f0, 0x94(sp)
    addi    r4, sp, 0x94
    fmuls   f0, f0, f1
    stfs    f0, 0x94(sp)
    lfs     f0, 0x98(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x98(sp)
    lfs     f0, 0x9c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x9c(sp)
    lwz     r5, 0xc(r27)
    lwz     r0, 0x10(r27)
    stw     r5, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0x14(r27)
    stw     r0, 0x54(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x4c(sp)
    addi    r27, r30, 0xc
    lwz     r0, 0x50(sp)
    addi    r4, r27, 0x0
    addi    r5, r27, 0x8
    stw     r3, 0xc(r30)
    stw     r0, 0x10(r30)
    lwz     r0, 0x54(sp)
    stw     r0, 0x14(r30)
    lfs     f2, 0x10(r29)
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x10(r30)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    lfs     f1, 0x4(r27)
    addi    r4, sp, 0x78
    lfs     f0, 0x10(r29)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r27)
    lfs     f3, 0x8(r27)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x78(sp)
    fmr     f31, f1
    cmplwi  r3, 0x0
    beq-    branch_0x800ed23c
    bl      isIllegalData__12TBGCheckDataCFv
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x800ed220
    li      r0, 0x0
    b       branch_0x800ed224

branch_0x800ed220:
    li      r0, 0x1
branch_0x800ed224:
    clrlwi. r0, r0, 24
    beq-    branch_0x800ed23c
    lfs     f0, 0x4(r27)
    fcmpo   cr0, f0, f31
    bge-    branch_0x800ed23c
    stfs    f31, 0x4(r27)
branch_0x800ed23c:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x2c
branch_0x800ed244:
    lhz     r0, 0x0(r29)
    cmpw    r31, r0
    blt+    branch_0x800ed0c0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x800ed314

branch_0x800ed25c:
    lwz     r0, 0x4(r29)
    addi    r3, sp, 0x3c
    lfs     f28, 0x8(r29)
    add     r6, r0, r31
    lwz     r5, 0xc(r6)
    mr      r4, r6
    lwz     r0, 0x10(r6)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x14(r6)
    stw     r0, 0x44(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x3c(sp)
    fmr     f1, f28
    lwz     r4, 0x40(sp)
    addi    r3, sp, 0x6c
    stw     r0, 0xb8(sp)
    lwz     r0, 0x44(sp)
    stw     r4, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0xb8(sp)
    lwz     r4, 0xbc(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0xc0(sp)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r5, 0x4(r29)
    addi    r4, r31, 0x18
    lwz     r3, 0x6c(sp)
    addi    r30, r30, 0x1
    lwz     r0, 0x70(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x74(sp)
    stw     r0, 0x8(r4)
    lwz     r0, 0x4(r29)
    add     r4, r0, r31
    lwz     r3, 0xc(r4)
    addi    r31, r31, 0x2c
    lwz     r0, 0x10(r4)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x14(r4)
    stw     r0, 0x8(r4)
branch_0x800ed314:
    lhz     r0, 0x0(r29)
    cmpw    r30, r0
    blt+    branch_0x800ed25c
    lmw     r27, 0xd4(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    lfd     f28, 0xe8(sp)
    addi    sp, sp, 0x108
    blr


.globl isIllegalData__12TBGCheckDataCFv
isIllegalData__12TBGCheckDataCFv: # 0x800ed344
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x800ed358
    li      r3, 0x1
    blr

branch_0x800ed358:
    li      r3, 0x0
    blr


.globl __ct__11TSphereLinkFUsRCQ29JGeometry8TVec3_f_ffffff
__ct__11TSphereLinkFUsRCQ29JGeometry8TVec3_f_ffffff: # 0x800ed360
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    fmr     f31, f1
    stfd    f30, 0xa8(sp)
    fmr     f30, f6
    stfd    f29, 0xa0(sp)
    fmr     f29, f5
    stfd    f28, 0x98(sp)
    fmr     f28, f4
    stfd    f27, 0x90(sp)
    fmr     f27, f3
    stfd    f26, 0x88(sp)
    fmr     f26, f2
    stw     r31, 0x84(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x80(sp)
    mr      r30, r3
    stw     r29, 0x7c(sp)
    clrlwi  r29, r4, 16
    mulli   r6, r29, 0x2c
    sth     r4, 0x0(r3)
    addi    r3, r6, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__12TSpherePointFv@ha
    addi    r4, r4, __ct__12TSpherePointFv@l
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x2c
    bl      __construct_new_array
    stw     r3, 0x4(r30)
    li      r3, 0x0
    li      r4, 0x0
    stfs    f27, 0x8(r30)
    stfs    f28, 0xc(r30)
    stfs    f26, 0x10(r30)
    stfs    f29, 0x14(r30)
    stfs    f30, 0x18(r30)
    lfs     f1, -0x5a40(r2)
    lfs     f0, 0x18(r30)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f1, f1, f0
    lwz     r7, R13Off_m0x5ea8(r13)
    lwz     r5, R13Off_m0x5ea4(r13)
    lfs     f0, -0x5a58(r2)
    fctiwz  f1, f1
    stfd    f1, 0x70(sp)
    lwz     r6, 0x74(sp)
    clrlwi  r6, r6, 16
    sraw    r0, r6, r0
    slwi    r0, r0, 2
    lfsx    f2, r7, r0
    lfsx    f1, r5, r0
    fmuls   f2, f2, f31
    fmuls   f3, f1, f31
    b       branch_0x800ed4fc

branch_0x800ed444:
    lwz     r6, 0x4(r30)
    cmpwi   r3, 0x0
    add     r7, r6, r4
    bne-    branch_0x800ed470
    lwz     r5, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r5, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x60(sp)
    b       branch_0x800ed4b0

branch_0x800ed470:
    addi    r0, r3, -0x1
    mulli   r5, r0, 0x2c
    addi    r0, r5, 0xc
    add     r6, r6, r0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x60(sp)
    lfs     f1, 0x58(sp)
    fsubs   f1, f1, f2
    stfs    f1, 0x58(sp)
    lfs     f1, 0x60(sp)
    fsubs   f1, f1, f3
    stfs    f1, 0x60(sp)
branch_0x800ed4b0:
    lwz     r5, 0x58(sp)
    addi    r3, r3, 0x1
    lwz     r0, 0x5c(sp)
    addi    r4, r4, 0x2c
    stw     r5, 0xc(r7)
    stw     r0, 0x10(r7)
    lwz     r0, 0x60(sp)
    stw     r0, 0x14(r7)
    lwz     r5, 0xc(r7)
    lwz     r0, 0x10(r7)
    stw     r5, 0x0(r7)
    stw     r0, 0x4(r7)
    lwz     r0, 0x14(r7)
    stw     r0, 0x8(r7)
    stfs    f0, 0x18(r7)
    stfs    f0, 0x1c(r7)
    stfs    f0, 0x20(r7)
    stfs    f31, 0x24(r7)
    stfs    f0, 0x28(r7)
branch_0x800ed4fc:
    lhz     r0, 0x0(r30)
    cmpw    r3, r0
    blt+    branch_0x800ed444
    lwz     r0, 0xbc(sp)
    mr      r3, r30
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    lfd     f27, 0x90(sp)
    lfd     f26, 0x88(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0xb8
    blr


.globl __ct__12TSpherePointFv
__ct__12TSpherePointFv: # 0x800ed540
    blr


.globl receiveMessage__14TWaterHitActorFP9THitActorUl
receiveMessage__14TWaterHitActorFP9THitActorUl: # 0x800ed544
    cmplwi  r5, 0xf
    li      r0, 0x0
    bne-    branch_0x800ed5ac
    lwz     r6, R13Off_m0x6048(r13)
    li      r4, 0x1
    addi    r5, r4, 0x0
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x1
    beq-    branch_0x800ed574
    cmplwi  r0, 0x2
    beq-    branch_0x800ed574
    li      r5, 0x0
branch_0x800ed574:
    clrlwi. r0, r5, 24
    bne-    branch_0x800ed58c
    lbz     r0, 0x124(r6)
    cmplwi  r0, 0x4
    beq-    branch_0x800ed58c
    li      r4, 0x0
branch_0x800ed58c:
    clrlwi. r0, r4, 24
    beq-    branch_0x800ed5a0
    li      r0, 0x0
    sth     r0, 0x68(r3)
    b       branch_0x800ed5a8

branch_0x800ed5a0:
    li      r0, 0x3c
    sth     r0, 0x68(r3)
branch_0x800ed5a8:
    li      r0, 0x1
branch_0x800ed5ac:
    mr      r3, r0
    blr


.globl onWaterHitCounter__14TWaterHitActorFv
onWaterHitCounter__14TWaterHitActorFv: # 0x800ed5b4
    li      r0, 0x3c
    sth     r0, 0x68(r3)
    blr


.globl BHSCalcRevisionDistXZByRotateZ__FfffPfPf
BHSCalcRevisionDistXZByRotateZ__FfffPfPf: # 0x800ed5c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmuls   f31, f3, f2
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    lfs     f0, -0x5a40(r2)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r4, r3, 16
    lwz     r3, R13Off_m0x5ea8(r13)
    fneg    f1, f31
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, R13Off_m0x5ea4(r13)
    lfs     f0, -0x5a58(r2)
    lfsx    f4, r3, r0
    lfsx    f3, r4, r0
    fmuls   f2, f0, f4
    fmuls   f0, f0, f3
    fmadds  f2, f31, f3, f2
    fmadds  f0, f1, f4, f0
    stfs    f2, 0x0(r30)
    stfs    f0, 0x0(r31)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl BHSCalcCentrifugalForce__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f
BHSCalcCentrifugalForce__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_f: # 0x800ed64c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stfd    f28, 0x80(sp)
    fmr     f28, f1
    stw     r31, 0x7c(sp)
    lfs     f0, 0x8(r3)
    lfs     f6, 0x8(r4)
    lfs     f2, 0x0(r3)
    fsubs   f1, f0, f6
    lfs     f5, 0x0(r4)
    lfs     f4, -0x5a28(r2)
    fsubs   f2, f2, f5
    fmuls   f0, f1, f1
    fmadds  f29, f2, f2, f0
    fcmpo   cr0, f29, f4
    bge-    branch_0x800ed6a4
    lfs     f1, -0x5a58(r2)
    b       branch_0x800ed8d8

branch_0x800ed6a4:
    lfs     f0, 0x8(r5)
    lfs     f3, 0x0(r5)
    fsubs   f30, f6, f0
    fsubs   f31, f5, f3
    fmuls   f0, f30, f30
    fmadds  f0, f31, f31, f0
    fcmpo   cr0, f0, f4
    bge-    branch_0x800ed6cc
    lfs     f1, -0x5a58(r2)
    b       branch_0x800ed8d8

branch_0x800ed6cc:
    lfs     f0, -0x5a58(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x800ed6f4
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x800ed6ec
    lfs     f1, -0x5a54(r2)
    b       branch_0x800ed768

branch_0x800ed6ec:
    lfs     f1, -0x5a50(r2)
    b       branch_0x800ed768

branch_0x800ed6f4:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800ed730
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5a38(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5a4c(r2)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    stw     r0, 0x70(sp)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800ed768

branch_0x800ed730:
    fneg    f1, f1
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5a38(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5a4c(r2)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5a48(r2)
    stw     r0, 0x70(sp)
    lfd     f2, 0x70(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800ed768:
    lfs     f0, -0x5a40(r2)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f0, -0x5a58(r2)
    mr      r31, r3
    fcmpu   cr0, f0, f30
    bne-    branch_0x800ed7a0
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x800ed798
    lfs     f1, -0x5a54(r2)
    b       branch_0x800ed820

branch_0x800ed798:
    lfs     f1, -0x5a50(r2)
    b       branch_0x800ed820

branch_0x800ed7a0:
    fcmpo   cr0, f30, f0
    cror    2, 1, 2
    bne-    branch_0x800ed7e4
    fmr     f1, f30
    fmr     f2, f31
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x5a38(r2)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x5a4c(r2)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    stw     r0, 0x70(sp)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x800ed820

branch_0x800ed7e4:
    fneg    f1, f30
    fmr     f2, f31
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x5a38(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x5a4c(r2)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f0, -0x5a48(r2)
    stw     r0, 0x70(sp)
    lfd     f2, 0x70(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x800ed820:
    lfs     f0, -0x5a40(r2)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    extsh   r31, r31
    extsh   r0, r3
    cmpw    r31, r0
    bne-    branch_0x800ed844
    lfs     f1, -0x5a58(r2)
    b       branch_0x800ed8d8

branch_0x800ed844:
    subf    r4, r0, r31
    extsh   r3, r4
    extsh.  r0, r3
    blt-    branch_0x800ed858
    b       branch_0x800ed85c

branch_0x800ed858:
    neg     r3, r3
branch_0x800ed85c:
    xoris   r0, r3, 0x8000
    lfd     f2, -0x5a38(r2)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfs     f3, -0x5a24(r2)
    stw     r0, 0x70(sp)
    lfs     f0, -0x5a20(r2)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x800ed898
    lfs     f1, -0x5a58(r2)
    b       branch_0x800ed8d8

branch_0x800ed898:
    cmpwi   r4, 0x0
    fmuls   f29, f29, f1
    bge-    branch_0x800ed8a8
    fneg    f29, f29
branch_0x800ed8a8:
    lfs     f0, -0x5a40(r2)
    fmuls   f1, f0, f28
    bl      CLBRoundf_s___Ff
    subf    r3, r3, r31
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, R13Off_m0x5ea4(r13)
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f0, r4, r0
    fmuls   f29, f29, f0
    fmr     f1, f29
branch_0x800ed8d8:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lfd     f28, 0x80(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0xa0
    blr


.globl unk_800ed8fc
unk_800ed8fc: # 0x800ed8fc
    addi    r3, r3, -0x20
    b       __dt__14TWaterHitActorFv

