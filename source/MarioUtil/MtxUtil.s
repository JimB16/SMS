
.globl SMS_GetActorMtx__FRC9THitActorPA4_f
SMS_GetActorMtx__FRC9THitActorPA4_f: # 0x8022b10c
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lfs     f0, 0x2c(r3)
    mr      r3, r4
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r5)
    lfs     f2, 0x14(r5)
    lfs     f3, 0x18(r5)
    lfs     f4, 0x30(r5)
    lfs     f5, 0x34(r5)
    lfs     f6, 0x38(r5)
    lfs     f7, 0x24(r5)
    lfs     f8, 0x28(r5)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl moveHead__5TRopeFRCQ29JGeometry8TVec3_f_
moveHead__5TRopeFRCQ29JGeometry8TVec3_f_: # 0x8022b15c
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    stw     r29, 0x74(sp)
    b       branch_0x8022b1e4

branch_0x8022b188:
    lwz     r5, 0x4(r30)
    addi    r0, r3, 0x10
    lfs     f0, 0xc(r30)
    addi    r7, r7, 0x1
    lfsx    f1, r5, r0
    fadds   f0, f1, f0
    stfsx   f0, r5, r0
    lwz     r0, 0x4(r30)
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
branch_0x8022b1e4:
    lhz     r0, 0x0(r30)
    cmpw    r7, r0
    blt+    branch_0x8022b188
    mr      r3, r30
    bl      constraintHead__5TRopeFRCQ29JGeometry8TVec3_f_
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x8022b2bc

branch_0x8022b204:
    lwz     r0, 0x4(r30)
    addi    r3, sp, 0x30
    lfs     f31, 0x8(r30)
    add     r6, r0, r29
    lwz     r5, 0xc(r6)
    mr      r4, r6
    lwz     r0, 0x10(r6)
    stw     r5, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x14(r6)
    stw     r0, 0x38(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x30(sp)
    fmr     f1, f31
    lwz     r4, 0x34(sp)
    addi    r3, sp, 0x40
    stw     r0, 0x58(sp)
    lwz     r0, 0x38(sp)
    stw     r4, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x58(sp)
    lwz     r4, 0x5c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x60(sp)
    stw     r4, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r5, 0x4(r30)
    addi    r4, r29, 0x18
    lwz     r3, 0x40(sp)
    addi    r31, r31, 0x1
    lwz     r0, 0x44(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x48(sp)
    stw     r0, 0x8(r4)
    lwz     r0, 0x4(r30)
    add     r4, r0, r29
    lwz     r3, 0xc(r4)
    addi    r29, r29, 0x2c
    lwz     r0, 0x10(r4)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x14(r4)
    stw     r0, 0x8(r4)
branch_0x8022b2bc:
    lhz     r0, 0x0(r30)
    cmpw    r31, r0
    blt+    branch_0x8022b204
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x88
    blr


.globl constraintTail__5TRopeFRCQ29JGeometry8TVec3_f_
constraintTail__5TRopeFRCQ29JGeometry8TVec3_f_: # 0x8022b2e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r28, r3
    lhz     r5, 0x0(r28)
    lwz     r6, 0x4(r28)
    addi    r0, r5, -0x1
    lwz     r3, 0x0(r4)
    mulli   r5, r0, 0x2c
    lwz     r0, 0x4(r4)
    addi    r5, r5, 0xc
    add     r5, r6, r5
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r5)
    lhz     r3, 0x0(r28)
    lfs     f30, -0x1718(r2)
    addi    r29, r3, -0x1
    lfs     f31, -0x1714(r2)
    mulli   r27, r29, 0x2c
    b       branch_0x8022b4e8

branch_0x8022b34c:
    addi    r0, r29, -0x1
    lwz     r3, 0x4(r28)
    mulli   r0, r0, 0x2c
    add     r31, r3, r27
    add     r30, r3, r0
    lfs     f0, 0xc(r31)
    lfs     f1, 0xc(r30)
    li      r3, 0x0
    addi    r4, r3, 0x0
    fsubs   f0, f1, f0
    mr      r0, r3
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x8022b394
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8022b394
    li      r0, 0x1
branch_0x8022b394:
    clrlwi. r0, r0, 24
    beq-    branch_0x8022b3d4
    lfs     f1, 0x10(r30)
    li      r0, 0x0
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x8022b3c8
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8022b3c8
    li      r0, 0x1
branch_0x8022b3c8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8022b3d4
    li      r4, 0x1
branch_0x8022b3d4:
    clrlwi. r0, r4, 24
    beq-    branch_0x8022b414
    lfs     f1, 0x14(r30)
    li      r0, 0x0
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    fcmpo   cr0, f30, f0
    cror    2, 0, 2
    bne-    branch_0x8022b408
    fcmpo   cr0, f0, f31
    cror    2, 0, 2
    bne-    branch_0x8022b408
    li      r0, 0x1
branch_0x8022b408:
    clrlwi. r0, r0, 24
    beq-    branch_0x8022b414
    li      r3, 0x1
branch_0x8022b414:
    clrlwi. r0, r3, 24
    bne-    branch_0x8022b4e0
    lwz     r5, 0xc(r30)
    addi    r3, sp, 0x34
    lwz     r0, 0x10(r30)
    mr      r4, r3
    stw     r5, 0x34(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x14(r30)
    stw     r0, 0x3c(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0xc(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x3c(sp)
    bl      PSVECNormalize
    lfs     f1, 0x24(r31)
    lfs     f0, 0x34(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x34(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(sp)
    lwz     r3, 0xc(r31)
    lwz     r0, 0x10(r31)
    stw     r3, 0xc(r30)
    stw     r0, 0x10(r30)
    lwz     r0, 0x14(r31)
    stw     r0, 0x14(r30)
    lfs     f1, 0xc(r30)
    lfs     f0, 0x34(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r30)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x38(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
branch_0x8022b4e0:
    addi    r29, r29, -0x1
    addi    r27, r27, -0x2c
branch_0x8022b4e8:
    cmpwi   r29, 0x0
    bgt+    branch_0x8022b34c
    mr      r3, r28
    bl      collision__5TRopeFv
    lmw     r27, 0x44(sp)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl constraintHead__5TRopeFRCQ29JGeometry8TVec3_f_
constraintHead__5TRopeFRCQ29JGeometry8TVec3_f_: # 0x8022b514
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stfd    f29, 0x40(sp)
    stmw    r27, 0x2c(sp)
    mr      r30, r3
    li      r31, 0x0
    li      r29, 0x0
    lwz     r3, 0x0(r4)
    lwz     r5, 0x4(r30)
    lwz     r0, 0x4(r4)
    stw     r3, 0xc(r5)
    stw     r0, 0x10(r5)
    lwz     r0, 0x8(r4)
    stw     r0, 0x14(r5)
    lfs     f29, -0x1714(r2)
    lfs     f30, -0x1710(r2)
    lfs     f31, -0x170c(r2)
    b       branch_0x8022b680

branch_0x8022b568:
    addi    r0, r31, 0x1
    lwz     r4, 0x4(r30)
    mulli   r0, r0, 0x2c
    add     r28, r4, r0
    lwz     r3, 0xc(r28)
    add     r27, r4, r29
    lwz     r0, 0x10(r28)
    stw     r3, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x14(r28)
    stw     r0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0xc(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x10(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x14(r27)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x1c(sp)
    lfs     f2, 0x20(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f29
    cror    2, 0, 2
    bne-    branch_0x8022b5fc
    stfs    f30, 0x18(sp)
    stfs    f31, 0x1c(sp)
    stfs    f30, 0x20(sp)
branch_0x8022b5fc:
    addi    r3, sp, 0x18
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f1, 0x24(r27)
    addi    r31, r31, 0x1
    lfs     f0, 0x18(sp)
    addi    r29, r29, 0x2c
    fmuls   f0, f0, f1
    stfs    f0, 0x18(sp)
    lfs     f0, 0x1c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x20(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(sp)
    lwz     r3, 0xc(r27)
    lwz     r0, 0x10(r27)
    stw     r3, 0xc(r28)
    stw     r0, 0x10(r28)
    lwz     r0, 0x14(r27)
    stw     r0, 0x14(r28)
    lfs     f1, 0xc(r28)
    lfs     f0, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc(r28)
    lfs     f1, 0x10(r28)
    lfs     f0, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r28)
    lfs     f1, 0x14(r28)
    lfs     f0, 0x20(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r28)
branch_0x8022b680:
    lhz     r3, 0x0(r30)
    addi    r0, r3, -0x1
    cmpw    r31, r0
    blt+    branch_0x8022b568
    mr      r3, r30
    bl      collision__5TRopeFv
    lmw     r27, 0x2c(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    lfd     f29, 0x40(sp)
    addi    sp, sp, 0x58
    blr


.globl collision__5TRopeFv
collision__5TRopeFv: # 0x8022b6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    stw     r28, 0x18(sp)
    lfs     f30, -0x1708(r2)
    lfs     f31, -0x1704(r2)
    b       branch_0x8022b7ec

branch_0x8022b6f4:
    lwz     r0, 0x4(r30)
    add     r3, r0, r29
    lwz     r0, 0x28(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8022b7e4
    addi    r28, r3, 0xc
    lfs     f0, 0x10(r30)
    lfs     f1, 0x10(r3)
    addi    r4, sp, 0x14
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r28)
    lfs     f3, 0x8(r28)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x14(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x8022b774
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8022b74c
    li      r0, 0x1
    b       branch_0x8022b750

branch_0x8022b74c:
    li      r0, 0x0
branch_0x8022b750:
    clrlwi. r0, r0, 24
    bne-    branch_0x8022b774
    lfs     f0, 0x4(r28)
    lfs     f2, 0x10(r30)
    fadds   f0, f0, f2
    fcmpo   cr0, f0, f1
    ble-    branch_0x8022b774
    fnmsubs  f0, f30, f2, f1
    stfs    f0, 0x4(r28)
branch_0x8022b774:
    lfs     f1, 0x4(r28)
    addi    r4, sp, 0x14
    lfs     f0, 0x10(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x0(r28)
    lfs     f3, 0x8(r28)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x14(sp)
    fadds   f1, f1, f31
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8022b7b0
    li      r0, 0x1
    b       branch_0x8022b7b4

branch_0x8022b7b0:
    li      r0, 0x0
branch_0x8022b7b4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8022b7cc
    lfs     f0, 0x4(r28)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8022b7cc
    stfs    f1, 0x4(r28)
branch_0x8022b7cc:
    lfs     f2, 0x10(r30)
    mr      r4, r28
    lwz     r3, R13Off_m0x6328(r13)
    addi    r5, r28, 0x8
    lfs     f1, 0x4(r28)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
branch_0x8022b7e4:
    addi    r31, r31, 0x1
    addi    r29, r29, 0x2c
branch_0x8022b7ec:
    lhz     r0, 0x0(r30)
    cmpw    r31, r0
    blt+    branch_0x8022b6f4
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    mtlr    r0
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x38
    blr


.globl __ct__5TRopeFUsRCQ29JGeometry8TVec3_f_ffff
__ct__5TRopeFUsRCQ29JGeometry8TVec3_f_ffff: # 0x8022b820
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f4
    stfd    f30, 0x58(sp)
    fmr     f30, f3
    stfd    f29, 0x50(sp)
    fmr     f29, f2
    stfd    f28, 0x48(sp)
    fmr     f28, f1
    stw     r31, 0x44(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x40(sp)
    mr      r30, r3
    stw     r29, 0x3c(sp)
    clrlwi  r29, r4, 16
    mulli   r6, r29, 0x2c
    sth     r4, 0x0(r3)
    addi    r3, r6, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__10TRopePointFv@ha
    addi    r4, r4, __ct__10TRopePointFv@l
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x2c
    bl      __construct_new_array
    stw     r3, 0x4(r30)
    cmpwi   r29, 0x0
    addi    r3, r29, 0x0
    stfs    f30, 0x8(r30)
    li      r4, 0x0
    stfs    f31, 0xc(r30)
    stfs    f29, 0x10(r30)
    lfs     f0, -0x1710(r2)
    ble-    branch_0x8022ba40
    srwi.   r0, r3, 1
    mtctr   r0
    beq-    branch_0x8022b9bc
branch_0x8022b8bc:
    lwz     r10, 0x4(r30)
    addi    r9, r4, 0xc
    lwz     r8, 0x0(r31)
    addi    r11, r4, 0x18
    lwz     r5, 0x4(r31)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    addi    r7, r4, 0x24
    addi    r0, r4, 0x28
    stw     r5, 0x4(r9)
    li      r6, 0x0
    lwz     r5, 0x8(r31)
    stw     r5, 0x8(r9)
    addi    r9, r4, 0x38
    lwz     r5, 0x4(r30)
    add     r10, r5, r4
    lwz     r8, 0xc(r10)
    lwz     r5, 0x10(r10)
    stw     r8, 0x0(r10)
    stw     r5, 0x4(r10)
    lwz     r5, 0x14(r10)
    stw     r5, 0x8(r10)
    lwz     r5, 0x4(r30)
    add     r11, r5, r11
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stfs    f0, 0x8(r11)
    addi    r11, r4, 0x44
    lwz     r5, 0x4(r30)
    stfsx   f28, r5, r7
    addi    r7, r4, 0x50
    lwz     r5, 0x4(r30)
    stwx    r6, r5, r0
    addi    r0, r4, 0x54
    addi    r4, r4, 0x2c
    lwz     r10, 0x4(r30)
    lwz     r8, 0x0(r31)
    lwz     r5, 0x4(r31)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    stw     r5, 0x4(r9)
    lwz     r5, 0x8(r31)
    stw     r5, 0x8(r9)
    lwz     r5, 0x4(r30)
    add     r10, r5, r4
    lwz     r8, 0xc(r10)
    addi    r4, r4, 0x2c
    lwz     r5, 0x10(r10)
    stw     r8, 0x0(r10)
    stw     r5, 0x4(r10)
    lwz     r5, 0x14(r10)
    stw     r5, 0x8(r10)
    lwz     r5, 0x4(r30)
    add     r11, r5, r11
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stfs    f0, 0x8(r11)
    lwz     r5, 0x4(r30)
    stfsx   f28, r5, r7
    lwz     r5, 0x4(r30)
    stwx    r6, r5, r0
    bdnz+      branch_0x8022b8bc
    andi.   r3, r3, 0x1
    beq-    branch_0x8022ba40
branch_0x8022b9bc:
    mtctr   r3
branch_0x8022b9c0:
    lwz     r10, 0x4(r30)
    addi    r9, r4, 0xc
    lwz     r8, 0x0(r31)
    addi    r11, r4, 0x18
    lwz     r5, 0x4(r31)
    add     r9, r10, r9
    stw     r8, 0x0(r9)
    addi    r7, r4, 0x24
    addi    r0, r4, 0x28
    stw     r5, 0x4(r9)
    li      r6, 0x0
    lwz     r5, 0x8(r31)
    stw     r5, 0x8(r9)
    lwz     r5, 0x4(r30)
    add     r10, r5, r4
    lwz     r8, 0xc(r10)
    addi    r4, r4, 0x2c
    lwz     r5, 0x10(r10)
    stw     r8, 0x0(r10)
    stw     r5, 0x4(r10)
    lwz     r5, 0x14(r10)
    stw     r5, 0x8(r10)
    lwz     r5, 0x4(r30)
    add     r11, r5, r11
    stfs    f0, 0x0(r11)
    stfs    f0, 0x4(r11)
    stfs    f0, 0x8(r11)
    lwz     r5, 0x4(r30)
    stfsx   f28, r5, r7
    lwz     r5, 0x4(r30)
    stwx    r6, r5, r0
    bdnz+      branch_0x8022b9c0
branch_0x8022ba40:
    lwz     r0, 0x6c(sp)
    mr      r3, r30
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x68
    blr


.globl __ct__10TRopePointFv
__ct__10TRopePointFv: # 0x8022ba70
    blr


.globl SMS_GetLightPerspectiveForEffectMtx__FPA4_f
SMS_GetLightPerspectiveForEffectMtx__FPA4_f: # 0x8022ba74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x7118(r13)
    lfs     f4, 0x2c(r4)
    lfs     f3, 0x28(r4)
    lfs     f2, 0x4c(r4)
    lfs     f1, 0x48(r4)
    bl      C_MTXPerspective
    lfs     f1, -0x1710(r2)
    stfs    f1, 0x20(r31)
    stfs    f1, 0x24(r31)
    lfs     f0, -0x1700(r2)
    stfs    f0, 0x28(r31)
    stfs    f1, 0x2c(r31)
    stfs    f1, 0x30(r31)
    stfs    f1, 0x34(r31)
    stfs    f1, 0x38(r31)
    lfs     f0, -0x170c(r2)
    stfs    f0, 0x3c(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl SMS_MakeJointsToArc__FP8J3DModelRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
SMS_MakeJointsToArc__FP8J3DModelRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8022bae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c8(sp)
    stfd    f31, 0x1c0(sp)
    stfd    f30, 0x1b8(sp)
    stfd    f29, 0x1b0(sp)
    stfd    f28, 0x1a8(sp)
    stfd    f27, 0x1a0(sp)
    stfd    f26, 0x198(sp)
    stfd    f25, 0x190(sp)
    stfd    f24, 0x188(sp)
    stfd    f23, 0x180(sp)
    stfd    f22, 0x178(sp)
    stfd    f21, 0x170(sp)
    stfd    f20, 0x168(sp)
    stfd    f19, 0x160(sp)
    stfd    f18, 0x158(sp)
    stfd    f17, 0x150(sp)
    stmw    r25, 0x134(sp)
    mr      r25, r3
    addi    r26, r4, 0x0
    addi    r28, r5, 0x0
    addi    r27, r6, 0x0
    lwz     r12, 0x0(r25)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x0(r27)
    mr      r4, r26
    lwz     r0, 0x4(r27)
    addi    r3, sp, 0x90
    stw     r5, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x8(r27)
    stw     r0, 0x98(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x90(sp)
    addi    r3, sp, 0x114
    lwz     r4, 0x94(sp)
    stw     r0, 0x114(sp)
    lwz     r0, 0x98(sp)
    stw     r4, 0x118(sp)
    stw     r0, 0x11c(sp)
    bl      PSVECMag
    fmr     f31, f1
    lfs     f2, -0x170c(r2)
    lfs     f1, 0x114(sp)
    lfs     f0, -0x1714(r2)
    fdivs   f2, f2, f31
    fmuls   f1, f1, f2
    stfs    f1, 0x114(sp)
    lfs     f1, 0x118(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x118(sp)
    lfs     f1, 0x11c(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x11c(sp)
    lwz     r3, 0x0(r28)
    lwz     r0, 0x4(r28)
    stw     r3, 0x104(sp)
    stw     r0, 0x108(sp)
    lwz     r0, 0x8(r28)
    stw     r0, 0x10c(sp)
    lfs     f2, 0x104(sp)
    lfs     f1, 0x108(sp)
    lfs     f3, 0x10c(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8022bc1c
    lfs     f0, -0x1710(r2)
    stfs    f0, 0x10c(sp)
    stfs    f0, 0x108(sp)
    stfs    f0, 0x104(sp)
    b       branch_0x8022bc4c

branch_0x8022bc1c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x170c(r2)
    lfs     f0, 0x104(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x104(sp)
    lfs     f0, 0x108(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x108(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x10c(sp)
branch_0x8022bc4c:
    lwz     r3, 0x4(r25)
    li      r27, 0x0
    lfd     f20, -0x16f8(r2)
    lis     r30, 0x4330
    lhz     r28, 0x1c(r3)
    lfd     f21, -0x16f0(r2)
    addi    r0, r28, -0x1
    lfs     f22, -0x170c(r2)
    lfs     f23, -0x1714(r2)
    xoris   r31, r0, 0x8000
    lfs     f24, -0x1710(r2)
    b       branch_0x8022bf2c

branch_0x8022bc7c:
    clrlwi  r0, r27, 16
    stw     r31, 0x124(sp)
    lwz     r5, 0x114(sp)
    addi    r3, sp, 0x4c
    stw     r0, 0x12c(sp)
    lwz     r4, 0x118(sp)
    stw     r30, 0x128(sp)
    lwz     r0, 0x11c(sp)
    stw     r30, 0x120(sp)
    lfd     f1, 0x128(sp)
    lfd     f0, 0x120(sp)
    fsubs   f1, f1, f20
    stw     r5, 0x4c(sp)
    fsubs   f0, f0, f21
    stw     r4, 0x50(sp)
    fdivs   f17, f1, f0
    stw     r0, 0x54(sp)
    fmr     f1, f17
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r4, 0x4c(sp)
    fsubs   f1, f22, f17
    lwz     r0, 0x104(sp)
    addi    r3, sp, 0x40
    stw     r4, 0xa0(sp)
    lwz     r4, 0x50(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x108(sp)
    stw     r4, 0xa4(sp)
    lwz     r4, 0x54(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x10c(sp)
    stw     r4, 0xa8(sp)
    stw     r0, 0x48(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x40(sp)
    addi    r3, sp, 0x80
    lwz     r5, 0x44(sp)
    addi    r4, sp, 0xa0
    stw     r0, 0xac(sp)
    lwz     r0, 0x48(sp)
    stw     r5, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r0, 0xac(sp)
    lwz     r5, 0xb0(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0xb4(sp)
    stw     r5, 0x84(sp)
    stw     r0, 0x88(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x80(sp)
    lwz     r3, 0x84(sp)
    stw     r0, 0xf4(sp)
    lwz     r0, 0x88(sp)
    stw     r3, 0xf8(sp)
    stw     r0, 0xfc(sp)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0xf8(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xfc(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x8022bd94
    stfs    f24, 0xfc(sp)
    stfs    f24, 0xf8(sp)
    stfs    f24, 0xf4(sp)
    b       branch_0x8022bdc0

branch_0x8022bd94:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f22, f1
    lfs     f0, 0xf4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf4(sp)
    lfs     f0, 0xf8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf8(sp)
    lfs     f0, 0xfc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xfc(sp)
branch_0x8022bdc0:
    lwz     r5, 0x58(r25)
    mulli   r4, r29, 0x30
    lwz     r0, 0xf4(sp)
    stw     r31, 0x12c(sp)
    lwz     r3, 0xf8(sp)
    clrlwi  r6, r27, 16
    stw     r0, 0xe8(sp)
    add     r29, r5, r4
    lwz     r0, 0xfc(sp)
    stw     r30, 0x128(sp)
    stw     r3, 0xec(sp)
    lfd     f0, 0x128(sp)
    stw     r0, 0xf0(sp)
    fsubs   f0, f0, f21
    lfs     f3, 0x8(r29)
    lfs     f30, 0xf0(sp)
    fdivs   f6, f31, f0
    lfs     f7, 0x28(r29)
    lfs     f29, 0xec(sp)
    stw     r6, 0x124(sp)
    lfs     f5, 0xe8(sp)
    fmuls   f1, f3, f30
    lfs     f4, 0x18(r29)
    fmuls   f2, f7, f29
    stw     r30, 0x120(sp)
    fmuls   f0, f4, f5
    fmsubs  f18, f7, f5, f1
    lfd     f1, 0x120(sp)
    fmsubs  f19, f4, f30, f2
    fmsubs  f17, f3, f29, f0
    fmuls   f0, f18, f18
    fsubs   f7, f1, f20
    fmuls   f4, f30, f18
    fmadds  f0, f19, f19, f0
    fmuls   f3, f5, f17
    fmuls   f2, f29, f19
    fmadds  f1, f17, f17, f0
    fmuls   f25, f7, f6
    fmsubs  f28, f29, f17, f4
    fcmpo   cr0, f1, f23
    fmsubs  f27, f30, f19, f3
    fmsubs  f26, f5, f18, f2
    cror    2, 0, 2
    bne-    branch_0x8022be80
    lfs     f17, -0x1710(r2)
    fmr     f18, f17
    fmr     f19, f18
    b       branch_0x8022be94

branch_0x8022be80:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f22, f1
    fmuls   f19, f19, f0
    fmuls   f18, f18, f0
    fmuls   f17, f17, f0
branch_0x8022be94:
    fmuls   f0, f27, f27
    fmadds  f0, f28, f28, f0
    fmadds  f1, f26, f26, f0
    fcmpo   cr0, f1, f23
    cror    2, 0, 2
    bne-    branch_0x8022bebc
    lfs     f3, -0x1710(r2)
    fmr     f2, f3
    fmr     f1, f2
    b       branch_0x8022bed0

branch_0x8022bebc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f0, f22, f1
    fmuls   f1, f28, f0
    fmuls   f2, f27, f0
    fmuls   f3, f26, f0
branch_0x8022bed0:
    lfs     f0, 0xe8(sp)
    addi    r27, r27, 0x1
    stfs    f0, 0x0(r29)
    stfs    f29, 0x10(r29)
    stfs    f30, 0x20(r29)
    stfs    f19, 0x4(r29)
    stfs    f18, 0x14(r29)
    stfs    f17, 0x24(r29)
    stfs    f1, 0x8(r29)
    stfs    f2, 0x18(r29)
    stfs    f3, 0x28(r29)
    lfs     f1, 0xf4(sp)
    lfs     f0, 0x0(r26)
    fmadds  f0, f1, f25, f0
    stfs    f0, 0xc(r29)
    lfs     f1, 0xf8(sp)
    lfs     f0, 0x4(r26)
    fmadds  f0, f1, f25, f0
    stfs    f0, 0x1c(r29)
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x8(r26)
    fmadds  f0, f1, f25, f0
    stfs    f0, 0x2c(r29)
branch_0x8022bf2c:
    clrlwi  r29, r27, 16
    cmpw    r29, r28
    blt+    branch_0x8022bc7c
    lmw     r25, 0x134(sp)
    lwz     r0, 0x1cc(sp)
    lfd     f31, 0x1c0(sp)
    lfd     f30, 0x1b8(sp)
    mtlr    r0
    lfd     f29, 0x1b0(sp)
    lfd     f28, 0x1a8(sp)
    lfd     f27, 0x1a0(sp)
    lfd     f26, 0x198(sp)
    lfd     f25, 0x190(sp)
    lfd     f24, 0x188(sp)
    lfd     f23, 0x180(sp)
    lfd     f22, 0x178(sp)
    lfd     f21, 0x170(sp)
    lfd     f20, 0x168(sp)
    lfd     f19, 0x160(sp)
    lfd     f18, 0x158(sp)
    lfd     f17, 0x150(sp)
    addi    sp, sp, 0x1c8
    blr


.globl setUserArea__15TMultiMtxEffectFv
setUserArea__15TMultiMtxEffectFv: # 0x8022bf88
    li      r7, 0x0
    b       branch_0x8022bfc4

branch_0x8022bf90:
    lwz     r5, 0xc(r3)
    clrlslwi  r0, r7, 16, 1
    lwz     r4, 0x8(r3)
    lwz     r6, 0x4(r5)
    lhzx    r5, r4, r0
    clrlslwi  r0, r7, 16, 2
    lwz     r4, 0x10(r3)
    addi    r7, r7, 0x1
    lwz     r6, 0x20(r6)
    slwi    r5, r5, 2
    lwzx    r0, r4, r0
    lwzx    r4, r6, r5
    stw     r0, 0x4(r4)
branch_0x8022bfc4:
    lhz     r0, 0x0(r3)
    clrlwi  r4, r7, 16
    cmplw   r4, r0
    blt+    branch_0x8022bf90
    blr


.globl setup__15TMultiMtxEffectFP8J3DModelPCc
setup__15TMultiMtxEffectFP8J3DModelPCc: # 0x8022bfd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x160(sp)
    stmw    r14, 0x118(sp)
    addi    r26, r4, 0x0
    addi    r29, r3, 0x0
    addi    r14, r5, 0x0
    stw     r26, 0xc(r3)
    lis     r3, unk_8039da60@ha
    addi    r30, r3, unk_8039da60@l
    lhz     r0, 0x0(r29)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r29)
    lis     r3, __vvt__20TMtxSwingRZReverseXZ@ha
    addi    r0, r3, __vvt__20TMtxSwingRZReverseXZ@l
    lis     r11, TMtxSwingRZReverseXZCallBack__FP7J3DNodei@ha
    stw     r0, 0x10c(sp)
    addi    r0, r11, TMtxSwingRZReverseXZCallBack__FP7J3DNodei@l
    lis     r7, __vvt__14TMtxEffectBase@ha
    stw     r0, 0x110(sp)
    lis     r6, __vvt__11TMtxSwingRZ@ha
    lis     r5, __vvt__9TParamVec@ha
    lis     r4, __vvt__11TParamRT_f_@ha
    lis     r8, __vvt__11TMtxTimeLag@ha
    lis     r9, TMtxTimeLagCallBack__FP7J3DNodei@ha
    lis     r10, TMtxSwingRZCallBack__FP7J3DNodei@ha
    addi    r22, r7, __vvt__14TMtxEffectBase@l
    addi    r21, r6, __vvt__11TMtxSwingRZ@l
    addi    r19, sp, 0x68
    addi    r20, r5, __vvt__9TParamVec@l
    addi    r28, r4, __vvt__11TParamRT_f_@l
    addi    r18, sp, 0x8c
    addi    r17, r8, __vvt__11TMtxTimeLag@l
    addi    r16, r9, TMtxTimeLagCallBack__FP7J3DNodei@l
    addi    r15, r10, TMtxSwingRZCallBack__FP7J3DNodei@l
    li      r23, 0x0
    b       branch_0x8022c498

branch_0x8022c070:
    li      r3, 0x40
    bl      __nwa__FUl
    lwz     r4, 0x8(r29)
    clrlslwi  r27, r23, 16, 1
    clrlwi  r24, r23, 16
    crxor   6, 6, 6
    lhzx    r7, r4, r27
    addi    r25, r3, 0x0
    addi    r6, r14, 0x0
    addi    r5, r30, 0x34
    li      r4, 0x40
    bl      snprintf
    lwz     r3, 0x4(r29)
    lbzx    r0, r3, r24
    cmpwi   r0, 0x1
    beq-    branch_0x8022c1fc
    bge-    branch_0x8022c0c0
    cmpwi   r0, 0x0
    bge-    branch_0x8022c0cc
    b       branch_0x8022c494

branch_0x8022c0c0:
    cmpwi   r0, 0x3
    bge-    branch_0x8022c494
    b       branch_0x8022c338

branch_0x8022c0cc:
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8022c1b4
    stw     r22, 0x0(r31)
    li      r0, 0x0
    addi    r3, r30, 0x48
    sth     r0, 0x4(r31)
    stw     r17, 0x0(r31)
    stw     r25, 0x40(r31)
    stw     r0, 0x44(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x48
    addi    r4, r31, 0x40
    addi    r6, r30, 0x48
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x48(r31)
    addi    r3, r30, 0x54
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x5c
    addi    r4, r31, 0x40
    addi    r6, r30, 0x54
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x5c(r31)
    addi    r3, r30, 0x60
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x70
    addi    r4, r31, 0x40
    addi    r6, r30, 0x60
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x70(r31)
    addi    r3, r30, 0x6c
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x84
    addi    r4, r31, 0x40
    addi    r6, r30, 0x6c
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x84(r31)
    addi    r3, r30, 0x78
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x98
    addi    r4, r31, 0x40
    addi    r6, r30, 0x78
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x98(r31)
    addi    r3, r31, 0x40
    lwz     r4, 0x40(r31)
    bl      load__7TParamsFPCc
branch_0x8022c1b4:
    lwz     r3, 0x8(r29)
    slwi    r0, r24, 2
    lwz     r4, 0x4(r26)
    lhzx    r3, r3, r27
    lwz     r4, 0x20(r4)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    stw     r16, 0x8(r3)
    lwz     r3, 0x8(r29)
    lwz     r4, 0x4(r26)
    lhzx    r3, r3, r27
    lwz     r4, 0x20(r4)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    stw     r31, 0x4(r3)
    lwz     r3, 0x10(r29)
    stwx    r31, r3, r0
    b       branch_0x8022c494

branch_0x8022c1fc:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8022c2f0
    stw     r22, 0x0(r31)
    li      r0, 0x0
    addi    r3, r2, R2Off_m0x16e8
    sth     r0, 0x4(r31)
    stw     r21, 0x0(r31)
    stw     r25, 0x20(r31)
    stw     r0, 0x24(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    mr      r25, r3
    lfs     f2, -0x16e0(r2)
    addi    r3, sp, 0xc8
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8022c568
    lwz     r0, 0xc8(sp)
    mr      r5, r18
    lwz     r4, 0xcc(sp)
    mr      r6, r25
    stw     r0, 0x8c(sp)
    lwz     r0, 0xd0(sp)
    addi    r3, r31, 0x28
    stw     r4, 0x90(sp)
    addi    r4, r31, 0x20
    addi    r7, r2, R2Off_m0x16e8
    stw     r0, 0x94(sp)
    bl      __ct__30TParamT_Q29JGeometry8TVec3_f__FP7TParamsQ29JGeometry8TVec3_f_UsPCc
    stw     r20, 0x28(r31)
    addi    r3, r2, R2Off_m0x16dc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x16d8(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x44
    addi    r4, r31, 0x20
    addi    r6, r2, R2Off_m0x16dc
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x44(r31)
    addi    r3, r2, R2Off_m0x16d4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x16cc(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x58
    addi    r4, r31, 0x20
    addi    r6, r2, R2Off_m0x16d4
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x58(r31)
    addi    r3, r30, 0x84
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x170c(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x6c
    addi    r4, r31, 0x20
    addi    r6, r30, 0x84
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x6c(r31)
    addi    r3, r31, 0x20
    lwz     r4, 0x20(r31)
    bl      load__7TParamsFPCc
branch_0x8022c2f0:
    lwz     r3, 0x8(r29)
    slwi    r0, r24, 2
    lwz     r4, 0x4(r26)
    lhzx    r3, r3, r27
    lwz     r4, 0x20(r4)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    stw     r15, 0x8(r3)
    lwz     r3, 0x8(r29)
    lwz     r4, 0x4(r26)
    lhzx    r3, r3, r27
    lwz     r4, 0x20(r4)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    stw     r31, 0x4(r3)
    lwz     r3, 0x10(r29)
    stwx    r31, r3, r0
    b       branch_0x8022c494

branch_0x8022c338:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8022c44c
    stw     r22, 0x0(r31)
    li      r0, 0x0
    addi    r3, r2, R2Off_m0x16e8
    sth     r0, 0x4(r31)
    stw     r21, 0x0(r31)
    stw     r25, 0x20(r31)
    stw     r0, 0x24(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x1710(r2)
    mr      r25, r3
    lfs     f2, -0x16e0(r2)
    addi    r3, sp, 0x80
    fmr     f3, f1
    bl      __ct_f___Q29JGeometry8TVec3_f_Ffff
    lwz     r0, 0x0(r3)
    mr      r5, r19
    lwz     r8, 0x4(r3)
    addi    r6, r25, 0x0
    addi    r4, r31, 0x20
    stw     r0, 0x74(sp)
    addi    r7, r2, R2Off_m0x16e8
    stw     r8, 0x78(sp)
    lwz     r0, 0x8(r3)
    addi    r3, r31, 0x28
    stw     r0, 0x7c(sp)
    lwz     r0, 0x74(sp)
    lwz     r8, 0x78(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x7c(sp)
    stw     r8, 0x6c(sp)
    stw     r0, 0x70(sp)
    bl      __ct__30TParamT_Q29JGeometry8TVec3_f__FP7TParamsQ29JGeometry8TVec3_f_UsPCc
    stw     r20, 0x28(r31)
    addi    r3, r2, R2Off_m0x16dc
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x16d8(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x44
    addi    r4, r31, 0x20
    addi    r6, r2, R2Off_m0x16dc
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x44(r31)
    addi    r3, r2, R2Off_m0x16d4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x16cc(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x58
    addi    r4, r31, 0x20
    addi    r6, r2, R2Off_m0x16d4
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x58(r31)
    addi    r3, r30, 0x84
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lfs     f1, -0x170c(r2)
    addi    r5, r3, 0x0
    addi    r3, r31, 0x6c
    addi    r4, r31, 0x20
    addi    r6, r30, 0x84
    bl      __ct__10TParamT_f_FP7TParamsfUsPCc
    stw     r28, 0x6c(r31)
    addi    r3, r31, 0x20
    lwz     r4, 0x20(r31)
    bl      load__7TParamsFPCc
    lwz     r0, 0x10c(sp)
    stw     r0, 0x0(r31)
branch_0x8022c44c:
    lwz     r3, 0x8(r29)
    slwi    r0, r24, 2
    lwz     r4, 0x4(r26)
    lhzx    r3, r3, r27
    lwz     r4, 0x20(r4)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    lwz     r4, 0x110(sp)
    stw     r4, 0x8(r3)
    lwz     r3, 0x8(r29)
    lwz     r4, 0x4(r26)
    lhzx    r3, r3, r27
    lwz     r4, 0x20(r4)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    stw     r31, 0x4(r3)
    lwz     r3, 0x10(r29)
    stwx    r31, r3, r0
branch_0x8022c494:
    addi    r23, r23, 0x1
branch_0x8022c498:
    lhz     r0, 0x0(r29)
    clrlwi  r3, r23, 16
    cmplw   r3, r0
    blt+    branch_0x8022c070
    li      r5, 0x0
    addi    r3, r5, 0x0
    b       branch_0x8022c4d0

branch_0x8022c4b4:
    lwz     r4, 0x10(r29)
    addi    r5, r5, 0x1
    lwzx    r4, r4, r3
    addi    r3, r3, 0x4
    lhz     r0, 0x4(r4)
    ori     r0, r0, 0x2
    sth     r0, 0x4(r4)
branch_0x8022c4d0:
    lhz     r0, 0x0(r29)
    cmpw    r5, r0
    blt+    branch_0x8022c4b4
    lmw     r14, 0x118(sp)
    lwz     r0, 0x164(sp)
    addi    sp, sp, 0x160
    mtlr    r0
    blr


.globl __ct_f___Q29JGeometry8TVec3_f_Ffff
__ct_f___Q29JGeometry8TVec3_f_Ffff: # 0x8022c4f0
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__30TParamT_Q29JGeometry8TVec3_f__FP7TParamsQ29JGeometry8TVec3_f_UsPCc
__ct__30TParamT_Q29JGeometry8TVec3_f__FP7TParamsQ29JGeometry8TVec3_f_UsPCc: # 0x8022c500
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    addi    r5, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    addi    r6, r7, 0x0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__30TParamT_Q29JGeometry8TVec3_f__@ha
    addi    r0, r3, __vvt__30TParamT_Q29JGeometry8TVec3_f__@l
    stw     r0, 0x0(r30)
    mr      r3, r30
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r4, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r31)
    stw     r0, 0x18(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8022c568
set_f___Q29JGeometry8TVec3_f_Ffff_8022c568: # 0x8022c568
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl TMtxSwingRZReverseXZCallBack__FP7J3DNodei
TMtxSwingRZReverseXZCallBack__FP7J3DNodei: # 0x8022c578
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    bne-    branch_0x8022c608
    lwz     r30, 0x4(r3)
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r31, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, sp, 0x14
    addi    r6, sp, 0x20
    bl      calcLocalXY__11TMtxSwingRZFPA4_fP3VecP3Vec
    lhz     r0, 0x4(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8022c608
    lfs     f0, 0x14(sp)
    fneg    f0, f0
    stfs    f0, 0x0(r31)
    lfs     f0, 0x18(sp)
    fneg    f0, f0
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(sp)
    fneg    f0, f0
    stfs    f0, 0x20(r31)
    lfs     f0, 0x20(sp)
    fneg    f0, f0
    stfs    f0, 0x4(r31)
    lfs     f0, 0x24(sp)
    fneg    f0, f0
    stfs    f0, 0x14(r31)
    lfs     f0, 0x28(sp)
    fneg    f0, f0
    stfs    f0, 0x24(r31)
branch_0x8022c608:
    lwz     r0, 0x3c(sp)
    li      r3, 0x1
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl TMtxSwingRZCallBack__FP7J3DNodei
TMtxSwingRZCallBack__FP7J3DNodei: # 0x8022c624
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    bne-    branch_0x8022c69c
    lwz     r30, 0x4(r3)
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r31, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, sp, 0x14
    addi    r6, sp, 0x20
    bl      calcLocalXY__11TMtxSwingRZFPA4_fP3VecP3Vec
    lhz     r0, 0x4(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x8022c69c
    lfs     f0, 0x14(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x18(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x24(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x28(sp)
    stfs    f0, 0x24(r31)
branch_0x8022c69c:
    lwz     r0, 0x3c(sp)
    li      r3, 0x1
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl calcLocalXY__11TMtxSwingRZFPA4_fP3VecP3Vec
calcLocalXY__11TMtxSwingRZFPA4_fP3VecP3Vec: # 0x8022c6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stfd    f31, 0x98(sp)
    stfd    f30, 0x90(sp)
    stfd    f29, 0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x80(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x7c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x78(sp)
    mr      r28, r3
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8022c794
    lhz     r0, 0x4(r28)
    lis     r3, unk_8039da88@ha
    addi    r4, r3, unk_8039da88@l
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x4(r28)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x14(r28)
    stw     r0, 0x18(r28)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1c(r28)
    lfs     f0, 0xc(r29)
    stfs    f0, 0x6c(sp)
    lfs     f1, 0x1c(r29)
    lfs     f0, 0x54(r28)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0x74(sp)
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x8(r28)
    stw     r0, 0xc(r28)
    lwz     r0, 0x74(sp)
    stw     r0, 0x10(r28)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x4(r30)
    lfs     f0, 0x20(r29)
    stfs    f0, 0x8(r30)
    lfs     f0, 0x4(r29)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x14(r29)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x24(r29)
    stfs    f0, 0x8(r31)
    b       branch_0x8022c8ec

branch_0x8022c794:
    addi    r3, r28, 0x14
    addi    r4, r28, 0x38
    addi    r5, r3, 0x0
    bl      PSVECAdd
    addi    r3, r28, 0x14
    lfs     f1, 0x68(r28)
    mr      r4, r3
    bl      PSVECScale
    addi    r4, r28, 0x8
    addi    r5, r4, 0x0
    addi    r3, r28, 0x14
    bl      PSVECAdd
    lfs     f31, 0xc(r29)
    addi    r3, sp, 0x54
    lfs     f0, 0x8(r28)
    mr      r4, r3
    lfs     f30, 0x1c(r29)
    fsubs   f0, f0, f31
    lfs     f29, 0x2c(r29)
    stfs    f0, 0x54(sp)
    lfs     f0, 0xc(r28)
    fsubs   f0, f0, f30
    stfs    f0, 0x58(sp)
    lfs     f0, 0x10(r28)
    fsubs   f0, f0, f29
    stfs    f0, 0x5c(sp)
    bl      PSVECNormalize
    addi    r3, sp, 0x54
    lfs     f1, 0x54(r28)
    mr      r4, r3
    bl      PSVECScale
    lfs     f0, 0x54(sp)
    addi    r3, sp, 0x48
    addi    r4, r28, 0x8
    fadds   f0, f31, f0
    addi    r5, sp, 0x3c
    stfs    f0, 0x48(sp)
    lfs     f0, 0x58(sp)
    fadds   f0, f30, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x5c(sp)
    fadds   f0, f29, f0
    stfs    f0, 0x50(sp)
    bl      PSVECSubtract
    addi    r3, r28, 0x14
    addi    r5, r3, 0x0
    addi    r4, sp, 0x3c
    bl      PSVECAdd
    lwz     r5, 0x48(sp)
    mr      r3, r30
    lwz     r0, 0x4c(sp)
    mr      r4, r30
    stw     r5, 0x8(r28)
    stw     r0, 0xc(r28)
    lwz     r0, 0x50(sp)
    stw     r0, 0x10(r28)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x30(sp)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x28(r29)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x8(r28)
    fsubs   f0, f0, f31
    stfs    f0, 0x0(r30)
    lfs     f0, 0xc(r28)
    fsubs   f0, f0, f30
    stfs    f0, 0x4(r30)
    lfs     f0, 0x10(r28)
    fsubs   f0, f0, f29
    stfs    f0, 0x8(r30)
    bl      PSVECNormalize
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r3, sp, 0x30
    bl      PSVECCrossProduct
    addi    r3, r30, 0x0
    addi    r4, r30, 0x0
    bl      PSVECNormalize
    addi    r3, r31, 0x0
    addi    r4, r31, 0x0
    bl      PSVECNormalize
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    addi    r4, sp, 0x30
    bl      PSVECCrossProduct
branch_0x8022c8ec:
    lwz     r0, 0xa4(sp)
    lfd     f31, 0x98(sp)
    lfd     f30, 0x90(sp)
    mtlr    r0
    lfd     f29, 0x88(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0xa0
    blr


.globl TMtxTimeLagCallBack__FP7J3DNodei
TMtxTimeLagCallBack__FP7J3DNodei: # 0x8022c918
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x8022c93c
    lis     r4, mCurrentMtx__6J3DSys@h
    lwz     r3, 0x4(r3)
    addi    r4, r4, mCurrentMtx__6J3DSys@l
    bl      calc__11TMtxTimeLagFPA4_f
branch_0x8022c93c:
    lwz     r0, 0xc(sp)
    li      r3, 0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__11TMtxTimeLagFPA4_f
calc__11TMtxTimeLagFPA4_f: # 0x8022c950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stfd    f29, 0xd0(sp)
    stw     r31, 0xcc(sp)
    mr      r31, r3
    stw     r30, 0xc8(sp)
    addi    r30, r4, 0x0
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8022ca58
    lhz     r0, 0x4(r31)
    lis     r4, unk_8039da6c@ha
    lis     r3, unk_8039da78@ha
    rlwinm  r0, r0, 0, 31, 29
    sth     r0, 0x4(r31)
    addi    r7, r4, unk_8039da6c@l
    addi    r6, r3, unk_8039da78@l
    lwz     r5, 0x0(r7)
    mr      r3, r30
    lwz     r0, 0x4(r7)
    addi    r4, sp, 0xa8
    stw     r5, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r0, 0x8(r7)
    stw     r0, 0x10(r31)
    lfs     f0, 0xc(r30)
    stfs    f0, 0xb8(sp)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0xbc(sp)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0xc0(sp)
    lwz     r5, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    stw     r5, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0xc0(sp)
    stw     r0, 0x1c(r31)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r5, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r5, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r5, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r5, 0x20(r31)
    stw     r0, 0x24(r31)
    lwz     r5, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    stw     r5, 0x28(r31)
    stw     r0, 0x2c(r31)
    bl      MtxToQuat__FPA4_fP10Quaternion
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r3, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r3, 0xb0(sp)
    lwz     r0, 0xb4(sp)
    stw     r3, 0x38(r31)
    stw     r0, 0x3c(r31)
    b       branch_0x8022cec0

branch_0x8022ca58:
    lfs     f4, 0xc(r30)
    lfs     f0, 0x14(r31)
    lfs     f5, 0x58(r31)
    fsubs   f3, f4, f0
    lfs     f2, 0x8(r31)
    lfs     f0, 0x1c(r30)
    lfs     f1, 0x2c(r30)
    fmadds  f2, f5, f3, f2
    lfs     f6, 0x6c(r31)
    stfs    f2, 0x8(r31)
    lfs     f3, 0x18(r31)
    lfs     f2, 0xc(r31)
    fsubs   f3, f0, f3
    fmadds  f2, f5, f3, f2
    stfs    f2, 0xc(r31)
    lfs     f3, 0x1c(r31)
    lfs     f2, 0x10(r31)
    fsubs   f3, f1, f3
    fmadds  f2, f5, f3, f2
    stfs    f2, 0x10(r31)
    lfs     f2, 0x8(r31)
    fmuls   f2, f2, f6
    stfs    f2, 0x8(r31)
    lfs     f2, 0xc(r31)
    fmuls   f2, f2, f6
    stfs    f2, 0xc(r31)
    lfs     f2, 0x10(r31)
    fmuls   f2, f2, f6
    stfs    f2, 0x10(r31)
    lfs     f3, 0x14(r31)
    lfs     f2, 0x8(r31)
    fadds   f2, f3, f2
    stfs    f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f2, 0xc(r31)
    fadds   f2, f3, f2
    stfs    f2, 0x18(r31)
    lfs     f3, 0x1c(r31)
    lfs     f2, 0x10(r31)
    fadds   f2, f3, f2
    stfs    f2, 0x1c(r31)
    lfs     f5, 0x80(r31)
    lfs     f3, 0x14(r31)
    fsubs   f2, f4, f5
    fcmpo   cr0, f3, f2
    bge-    branch_0x8022cb14
    stfs    f2, 0x14(r31)
branch_0x8022cb14:
    fadds   f3, f4, f5
    lfs     f2, 0x14(r31)
    fcmpo   cr0, f2, f3
    ble-    branch_0x8022cb28
    stfs    f3, 0x14(r31)
branch_0x8022cb28:
    fsubs   f3, f0, f5
    lfs     f2, 0x18(r31)
    fcmpo   cr0, f2, f3
    bge-    branch_0x8022cb3c
    stfs    f3, 0x18(r31)
branch_0x8022cb3c:
    fadds   f2, f0, f5
    lfs     f0, 0x18(r31)
    fcmpo   cr0, f0, f2
    ble-    branch_0x8022cb50
    stfs    f2, 0x18(r31)
branch_0x8022cb50:
    fsubs   f2, f1, f5
    lfs     f0, 0x1c(r31)
    fcmpo   cr0, f0, f2
    bge-    branch_0x8022cb64
    stfs    f2, 0x1c(r31)
branch_0x8022cb64:
    fadds   f1, f1, f5
    lfs     f0, 0x1c(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x8022cb78
    stfs    f1, 0x1c(r31)
branch_0x8022cb78:
    lfs     f1, 0x0(r30)
    lfs     f0, 0x10(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x20(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x1710(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x8022cbd0
    frsqrte f3, f31
    lfd     f2, -0x16c8(r2)
    lfd     f0, -0x16c0(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f31, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f31, f0
    frsp    f0, f0
    stfs    f0, 0x2c(sp)
    lfs     f31, 0x2c(sp)
branch_0x8022cbd0:
    lfs     f1, 0x4(r30)
    lfs     f0, 0x14(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x24(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x1710(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f30, f3, f1
    fcmpo   cr0, f30, f0
    ble-    branch_0x8022cc28
    frsqrte f3, f30
    lfd     f2, -0x16c8(r2)
    lfd     f0, -0x16c0(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f30, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f30, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f30, 0x28(sp)
branch_0x8022cc28:
    lfs     f1, 0x8(r30)
    lfs     f0, 0x18(r30)
    fmuls   f2, f1, f1
    lfs     f3, 0x28(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x1710(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f29, f3, f1
    fcmpo   cr0, f29, f0
    ble-    branch_0x8022cc80
    frsqrte f3, f29
    lfd     f2, -0x16c8(r2)
    lfd     f0, -0x16c0(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f29, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f29, f0
    frsp    f0, f0
    stfs    f0, 0x24(sp)
    lfs     f29, 0x24(sp)
branch_0x8022cc80:
    lfs     f1, -0x170c(r2)
    addi    r3, sp, 0x50
    lfs     f0, 0x0(r30)
    addi    r4, sp, 0x8c
    fdivs   f2, f1, f31
    fmuls   f0, f0, f2
    fdivs   f3, f1, f30
    stfs    f0, 0x50(sp)
    lfs     f0, 0x10(r30)
    fmuls   f0, f0, f2
    fdivs   f1, f1, f29
    stfs    f0, 0x60(sp)
    lfs     f0, 0x20(r30)
    fmuls   f0, f0, f2
    stfs    f0, 0x70(sp)
    lfs     f0, 0x4(r30)
    fmuls   f0, f0, f3
    stfs    f0, 0x54(sp)
    lfs     f0, 0x14(r30)
    fmuls   f0, f0, f3
    stfs    f0, 0x64(sp)
    lfs     f0, 0x24(r30)
    fmuls   f0, f0, f3
    stfs    f0, 0x74(sp)
    lfs     f0, 0x8(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x18(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
    lfs     f0, 0x28(r30)
    fmuls   f0, f0, f1
    stfs    f0, 0x78(sp)
    bl      MtxToQuat__FPA4_fP10Quaternion
    lfs     f0, 0x34(r31)
    lfs     f4, 0x90(sp)
    lfs     f7, 0x30(r31)
    fmuls   f0, f0, f4
    lfs     f3, 0x8c(sp)
    lfs     f1, 0x38(r31)
    lfs     f5, 0x94(sp)
    fmadds  f0, f7, f3, f0
    lfs     f2, 0x3c(r31)
    lfs     f6, 0x98(sp)
    fmadds  f1, f1, f5, f0
    lfs     f0, -0x1710(r2)
    fmadds  f1, f2, f6, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8022cd54
    fneg    f3, f3
    fneg    f4, f4
    fneg    f5, f5
    fneg    f6, f6
branch_0x8022cd54:
    fsubs   f1, f3, f7
    lfs     f2, 0x94(r31)
    lfs     f0, 0x20(r31)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x20(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x24(r31)
    fsubs   f1, f4, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x28(r31)
    fsubs   f1, f5, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x2c(r31)
    fsubs   f1, f6, f1
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x2c(r31)
    lfs     f1, 0xa8(r31)
    lfs     f0, 0x20(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(r31)
    lfs     f0, 0x24(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r31)
    lfs     f0, 0x28(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x20(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x34(r31)
    lfs     f0, 0x24(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x28(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x38(r31)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x2c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r31)
    lhz     r0, 0x4(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8022ce30
    addi    r3, r30, 0x0
    addi    r4, r31, 0x30
    bl      PSMTXQuat
branch_0x8022ce30:
    lhz     r0, 0x4(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x8022cec0
    lfs     f0, 0x0(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x0(r30)
    lfs     f0, 0x10(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x10(r30)
    lfs     f0, 0x20(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x20(r30)
    lfs     f0, 0x4(r30)
    fmuls   f0, f0, f30
    stfs    f0, 0x4(r30)
    lfs     f0, 0x14(r30)
    fmuls   f0, f0, f30
    stfs    f0, 0x14(r30)
    lfs     f0, 0x24(r30)
    fmuls   f0, f0, f30
    stfs    f0, 0x24(r30)
    lfs     f0, 0x8(r30)
    fmuls   f0, f0, f29
    stfs    f0, 0x8(r30)
    lfs     f0, 0x18(r30)
    fmuls   f0, f0, f29
    stfs    f0, 0x18(r30)
    lfs     f0, 0x28(r30)
    fmuls   f0, f0, f29
    stfs    f0, 0x28(r30)
    lfs     f0, 0x14(r31)
    stfs    f0, 0xc(r30)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x1c(r31)
    stfs    f0, 0x2c(r30)
branch_0x8022cec0:
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lfd     f29, 0xd0(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    addi    sp, sp, 0xe8
    blr


.globl MtxToQuat__FPA4_fP10Quaternion
MtxToQuat__FPA4_fP10Quaternion: # 0x8022cee4
    stwu    sp, -0x28(sp)
    lfs     f3, 0x0(r3)
    lfs     f2, 0x14(r3)
    lfs     f4, 0x28(r3)
    fadds   f0, f3, f2
    lfs     f1, -0x170c(r2)
    fadds   f0, f0, f4
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f1
    fmr     f5, f0
    cror    2, 1, 2
    bne-    branch_0x8022cfb0
    lfs     f0, -0x1710(r2)
    fcmpo   cr0, f5, f0
    ble-    branch_0x8022cf50
    frsqrte f3, f5
    lfd     f2, -0x16c8(r2)
    lfd     f0, -0x16c0(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f5, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f5, f0
    frsp    f0, f0
    stfs    f0, 0x14(sp)
    lfs     f2, 0x14(sp)
    b       branch_0x8022cf54

branch_0x8022cf50:
    fmr     f2, f5
branch_0x8022cf54:
    lfs     f1, -0x1708(r2)
    lfs     f0, -0x170c(r2)
    fmuls   f3, f1, f2
    lfs     f1, -0x16b8(r2)
    fdivs   f2, f0, f3
    fmuls   f0, f1, f3
    stfs    f0, 0x24(sp)
    lfs     f1, 0x24(r3)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x20(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x10(r3)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x20(sp)
    b       branch_0x8022d0ec

branch_0x8022cfb0:
    fcmpo   cr0, f3, f2
    ble-    branch_0x8022cfc0
    li      r9, 0x0
    b       branch_0x8022cfc4

branch_0x8022cfc0:
    li      r9, 0x1
branch_0x8022cfc4:
    slwi    r5, r9, 4
    slwi    r0, r9, 2
    add     r0, r5, r0
    lfsx    f0, r3, r0
    fcmpo   cr0, f4, f0
    ble-    branch_0x8022cfe0
    li      r9, 0x2
branch_0x8022cfe0:
    lis     r5, unk_55555556@h
    lfs     f3, -0x170c(r2)
    addi    r7, r9, 0x1
    lfs     f0, -0x1710(r2)
    addi    r5, r5, unk_55555556@l
    mulhw   r6, r5, r7
    srwi    r0, r6, 31
    add     r0, r6, r0
    mulli   r0, r0, 0x3
    subf    r7, r0, r7
    addi    r6, r7, 0x1
    mulhw   r5, r5, r6
    srwi    r0, r5, 31
    add     r0, r5, r0
    mulli   r0, r0, 0x3
    subf    r10, r0, r6
    slwi    r5, r7, 4
    slwi    r6, r9, 4
    add     r8, r3, r6
    slwi    r6, r9, 2
    slwi    r0, r10, 4
    lfsx    f2, r8, r6
    add     r9, r3, r0
    add     r5, r3, r5
    slwi    r7, r7, 2
    lfsx    f1, r5, r7
    slwi    r0, r10, 2
    fsubs   f2, f2, f1
    lfsx    f1, r9, r0
    fsubs   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x8022d090
    frsqrte f3, f4
    lfd     f2, -0x16c8(r2)
    lfd     f0, -0x16c0(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f4, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f4, 0x10(sp)
branch_0x8022d090:
    lfs     f1, -0x1708(r2)
    addi    r3, sp, 0x18
    lfs     f0, -0x16b8(r2)
    fmuls   f2, f1, f4
    fmuls   f0, f0, f2
    stfsx   f0, r3, r6
    lfs     f0, -0x170c(r2)
    lfsx    f1, r8, r7
    fdivs   f2, f0, f2
    lfsx    f0, r5, r6
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfsx   f0, r3, r7
    lfsx    f1, r8, r0
    lfsx    f0, r9, r6
    fadds   f0, f1, f0
    fmuls   f0, f2, f0
    stfsx   f0, r3, r0
    lfsx    f1, r9, r7
    lfsx    f0, r5, r0
    fsubs   f0, f1, f0
    fmuls   f0, f2, f0
    stfs    f0, 0x24(sp)
branch_0x8022d0ec:
    lfs     f0, 0x18(sp)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x8(r4)
    lfs     f0, 0x24(sp)
    stfs    f0, 0xc(r4)
    addi    sp, sp, 0x28
    blr


.globl getParams__11TMtxSwingRZFv
getParams__11TMtxSwingRZFv: # 0x8022d114
    addi    r3, r3, 0x20
    blr


.globl getParams__11TMtxTimeLagFv
getParams__11TMtxTimeLagFv: # 0x8022d11c
    addi    r3, r3, 0x40
    blr


.globl getParams__14TMtxEffectBaseFv
getParams__14TMtxEffectBaseFv: # 0x8022d124
    li      r3, 0x0
    blr

