
.globl initCheckData__17TMapCollisionBaseFsUsPC10TLiveActor
initCheckData__17TMapCollisionBaseFsUsPC10TLiveActor: # 0x801912f8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r5, 0, 29, 29
    stwu    sp, -0x1090(sp)
    stw     r31, 0x108c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x1088(sp)
    mr      r30, r5
    stw     r29, 0x1084(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x1080(sp)
    mr      r28, r3
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x50(r3)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0x54(r3)
    lfs     f0, 0x4c(r3)
    stfs    f0, 0x58(r3)
    beq-    branch_0x80191360
    lwz     r5, 0x14(r28)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    bl      initAllCheckData__17TMapCollisionBaseFsPCfUsPC10TLiveActor
    b       branch_0x8019138c

branch_0x80191360:
    lwz     r4, 0x14(r28)
    addi    r3, r28, 0x20
    lwz     r6, 0x10(r28)
    addi    r5, sp, 0x14
    bl      PSMTXMultVecArray
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    addi    r5, sp, 0x14
    bl      initAllCheckData__17TMapCollisionBaseFsPCfUsPC10TLiveActor
branch_0x8019138c:
    lwz     r0, 0x1094(sp)
    lwz     r31, 0x108c(sp)
    lwz     r30, 0x1088(sp)
    mtlr    r0
    lwz     r29, 0x1084(sp)
    lwz     r28, 0x1080(sp)
    addi    sp, sp, 0x1090
    blr


.globl initAllCheckData__17TMapCollisionBaseFsPCfUsPC10TLiveActor
initAllCheckData__17TMapCollisionBaseFsPCfUsPC10TLiveActor: # 0x801913ac
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0xd0(sp)
    stmw    r16, 0x90(sp)
    mr      r19, r3
    addi    r20, r4, 0x0
    addi    r21, r5, 0x0
    addi    r22, r7, 0x0
    rlwinm  r31, r6, 0, 30, 30
    li      r30, 0x0
    lwz     r8, -0x6320(r13)
    lwz     r3, 0x34(r8)
    lwz     r8, 0x28(r8)
    mulli   r3, r3, 0x48
    add     r3, r8, r3
    stw     r3, 0x4(r19)
    stw     r0, 0xc(r19)
    b       branch_0x801915c4

branch_0x801913f8:
    extsh   r0, r30
    lwz     r4, 0x1c(r19)
    mulli   r0, r0, 0x18
    lwz     r3, -0x6320(r13)
    add     r5, r4, r0
    lha     r29, 0x2(r5)
    lhz     r0, 0x4(r5)
    lhz     r28, 0x0(r5)
    mr      r4, r29
    lwz     r16, 0xc(r5)
    clrlwi  r27, r0, 31
    lwz     r18, 0x10(r5)
    lwz     r26, 0x8(r5)
    lwz     r25, 0x14(r5)
    bl      allocCheckData__17TMapCollisionDataFUl
    addi    r17, r16, 0x0
    addi    r24, r3, 0x0
    li      r23, 0x0
    li      r16, 0x0
    b       branch_0x801915b8

branch_0x80191448:
    sth     r28, 0x0(r24)
    cmpwi   r31, 0x0
    stw     r22, 0x44(r24)
    beq-    branch_0x801914dc
    lha     r0, 0x0(r26)
    mr      r3, r24
    lha     r5, 0x2(r26)
    addi    r4, sp, 0x64
    mulli   r6, r0, 0xc
    lha     r0, 0x4(r26)
    add     r6, r21, r6
    lfs     f2, 0x8(r6)
    mulli   r5, r5, 0xc
    lfs     f1, 0x4(r6)
    lfs     f0, 0x0(r6)
    mulli   r0, r0, 0xc
    stfs    f0, 0x64(sp)
    stfs    f1, 0x68(sp)
    add     r8, r21, r5
    add     r7, r21, r0
    stfs    f2, 0x6c(sp)
    addi    r5, sp, 0x70
    addi    r6, sp, 0x7c
    lfs     f2, 0x8(r8)
    lfs     f1, 0x4(r8)
    lfs     f0, 0x0(r8)
    stfs    f0, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f2, 0x78(sp)
    lfs     f2, 0x8(r7)
    lfs     f1, 0x4(r7)
    lfs     f0, 0x0(r7)
    stfs    f0, 0x7c(sp)
    stfs    f1, 0x80(sp)
    stfs    f2, 0x84(sp)
    bl      setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    b       branch_0x8019156c

branch_0x801914dc:
    lha     r0, 0x0(r26)
    mr      r3, r24
    lha     r5, 0x2(r26)
    addi    r4, sp, 0x40
    mulli   r6, r0, 0xc
    lha     r0, 0x4(r26)
    add     r6, r21, r6
    lfs     f2, 0x8(r6)
    mulli   r5, r5, 0xc
    lfs     f1, 0x4(r6)
    lfs     f0, 0x0(r6)
    mulli   r0, r0, 0xc
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    add     r8, r21, r5
    add     r7, r21, r0
    stfs    f2, 0x48(sp)
    addi    r5, sp, 0x4c
    addi    r6, sp, 0x58
    lfs     f2, 0x8(r8)
    lfs     f1, 0x4(r8)
    lfs     f0, 0x0(r8)
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f2, 0x54(sp)
    lfs     f2, 0x8(r7)
    lfs     f1, 0x4(r7)
    lfs     f0, 0x0(r7)
    stfs    f0, 0x58(sp)
    stfs    f1, 0x5c(sp)
    stfs    f2, 0x60(sp)
    bl      setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r5, 0x8(r19)
    mr      r4, r24
    lwz     r3, -0x6320(r13)
    bl      addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai
branch_0x8019156c:
    cmpwi   r27, 0x0
    beq-    branch_0x80191580
    lhax    r0, r25, r16
    sth     r0, 0x2(r24)
    b       branch_0x80191584

branch_0x80191580:
    sth     r20, 0x2(r24)
branch_0x80191584:
    lbz     r0, 0x0(r17)
    addi    r26, r26, 0x6
    addi    r23, r23, 0x1
    stb     r0, 0x6(r24)
    addi    r17, r17, 0x1
    addi    r16, r16, 0x2
    lbz     r0, 0x0(r18)
    addi    r18, r18, 0x1
    stb     r0, 0x7(r24)
    addi    r24, r24, 0x48
    lwz     r3, 0xc(r19)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r19)
branch_0x801915b8:
    cmpw    r23, r29
    blt+    branch_0x80191448
    addi    r30, r30, 0x1
branch_0x801915c4:
    lwz     r0, 0x18(r19)
    extsh   r3, r30
    cmplw   r3, r0
    blt+    branch_0x801913f8
    lmw     r16, 0x90(sp)
    lwz     r0, 0xd4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl update__17TMapCollisionBaseFv
update__17TMapCollisionBaseFv: # 0x801915e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1088(sp)
    stw     r31, 0x1084(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x1080(sp)
    stw     r29, 0x107c(sp)
    stw     r28, 0x1078(sp)
    mr      r28, r3
    lwz     r4, 0x14(r3)
    addi    r3, r28, 0x20
    lwz     r6, 0x10(r28)
    bl      PSMTXMultVecArray
    lwz     r3, 0x1c(r28)
    lwz     r29, 0x4(r28)
    lwz     r30, 0x8(r3)
    lwz     r31, 0xc(r28)
    b       branch_0x80191654

branch_0x80191630:
    lwz     r7, 0x8(r28)
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    addi    r4, sp, 0xc
    bl      setCheckData__17TMapCollisionBaseFPCfPCsP12TBGCheckDatai
    addi    r30, r30, 0x6
    addi    r29, r29, 0x48
    subi    r31, r31, 0x1
branch_0x80191654:
    cmplwi  r31, 0x0
    bne+    branch_0x80191630
    lwz     r0, 0x108c(sp)
    lwz     r31, 0x1084(sp)
    lwz     r30, 0x1080(sp)
    mtlr    r0
    lwz     r29, 0x107c(sp)
    lwz     r28, 0x1078(sp)
    addi    sp, sp, 0x1088
    blr


.globl updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_: # 0x8019167c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    stfd    f30, 0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    mr      r29, r4
    stw     r28, 0x50(sp)
    mr      r28, r3
    addi    r3, sp, 0x2c
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    addi    r4, r28, 0x50
    stw     r5, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0x34(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x2c(sp)
    li      r30, 0x0
    lwz     r3, 0x30(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r31, 0x4(r28)
    lfs     f31, 0x48(sp)
    lfs     f30, 0x4c(sp)
    b       branch_0x801917c8

branch_0x801916f8:
    lfs     f1, 0x10(r31)
    mr      r4, r31
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f0, f31
    stfs    f0, 0x14(r31)
    lfs     f0, 0x18(r31)
    fadds   f0, f0, f30
    stfs    f0, 0x18(r31)
    lfs     f1, 0x1c(r31)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f0, 0x20(r31)
    fadds   f0, f0, f31
    stfs    f0, 0x20(r31)
    lfs     f0, 0x24(r31)
    fadds   f0, f0, f30
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f0, 0x2c(r31)
    fadds   f0, f0, f31
    stfs    f0, 0x2c(r31)
    lfs     f0, 0x30(r31)
    fadds   f0, f0, f30
    stfs    f0, 0x30(r31)
    lfs     f0, 0x8(r31)
    fadds   f0, f0, f31
    stfs    f0, 0x8(r31)
    lfs     f0, 0xc(r31)
    fadds   f0, f0, f31
    stfs    f0, 0xc(r31)
    lfs     f1, 0x38(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x34(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f4, 0x3c(r31)
    lfs     f3, 0x18(r31)
    fmadds  f0, f2, f1, f0
    fnmadds  f0, f4, f3, f0
    stfs    f0, 0x40(r31)
    lwz     r5, 0x8(r28)
    lwz     r3, -0x6320(r13)
    bl      addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai
    addi    r31, r31, 0x48
    addi    r30, r30, 0x1
branch_0x801917c8:
    lwz     r0, 0xc(r28)
    cmplw   r30, r0
    blt+    branch_0x801916f8
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r3, 0x50(r28)
    stw     r0, 0x54(r28)
    lwz     r0, 0x8(r29)
    stw     r0, 0x58(r28)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setCheckData__17TMapCollisionBaseFPCfPCsP12TBGCheckDatai
setCheckData__17TMapCollisionBaseFPCfPCsP12TBGCheckDatai: # 0x80191814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r6
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x8c(sp)
    mr      r29, r7
    lha     r0, 0x0(r5)
    lha     r6, 0x2(r5)
    mulli   r3, r0, 0xc
    lha     r0, 0x4(r5)
    add     r5, r4, r3
    lfs     f0, 0x0(r5)
    mulli   r3, r6, 0xc
    stfs    f0, 0x78(sp)
    add     r6, r4, r3
    lfs     f0, 0x4(r5)
    mulli   r0, r0, 0xc
    stfs    f0, 0x7c(sp)
    add     r4, r4, r0
    lfs     f0, 0x8(r5)
    stfs    f0, 0x80(sp)
    lfs     f0, 0x0(r6)
    lwz     r3, 0x78(sp)
    stfs    f0, 0x6c(sp)
    lwz     r0, 0x7c(sp)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x70(sp)
    lfs     f0, 0x8(r6)
    stfs    f0, 0x74(sp)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x60(sp)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x64(sp)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x68(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0x18(r31)
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x1c(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x74(sp)
    stw     r0, 0x24(r31)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0x28(r31)
    stw     r0, 0x2c(r31)
    lwz     r0, 0x68(sp)
    stw     r0, 0x30(r31)
    lfs     f3, 0x24(r31)
    lfs     f0, 0x18(r31)
    lfs     f2, 0x30(r31)
    fsubs   f1, f3, f0
    lfs     f4, 0x20(r31)
    lfs     f0, 0x2c(r31)
    fsubs   f2, f2, f3
    lfs     f3, 0x14(r31)
    fsubs   f0, f0, f4
    fsubs   f3, f4, f3
    fmuls   f0, f1, f0
    fmsubs  f0, f3, f2, f0
    stfs    f0, 0x34(r31)
    lfs     f3, 0x1c(r31)
    lfs     f0, 0x10(r31)
    lfs     f2, 0x28(r31)
    fsubs   f1, f3, f0
    lfs     f4, 0x24(r31)
    lfs     f0, 0x30(r31)
    fsubs   f2, f2, f3
    lfs     f3, 0x18(r31)
    fsubs   f0, f0, f4
    fsubs   f3, f4, f3
    fmuls   f0, f1, f0
    fmsubs  f0, f3, f2, f0
    stfs    f0, 0x38(r31)
    lfs     f3, 0x20(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x2c(r31)
    fsubs   f1, f3, f0
    lfs     f4, 0x1c(r31)
    lfs     f0, 0x28(r31)
    fsubs   f2, f2, f3
    lfs     f3, 0x10(r31)
    fsubs   f0, f0, f4
    fsubs   f3, f4, f3
    fmuls   f0, f1, f0
    fmsubs  f0, f3, f2, f0
    stfs    f0, 0x3c(r31)
    lfs     f1, -0x43a0(rtoc)
    lfs     f0, 0x34(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801919b0
    lfs     f0, 0x38(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801919b0
    lfs     f0, 0x3c(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80191a44
branch_0x801919b0:
    addi    r3, r31, 0x34
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x38(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x34(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f4, 0x3c(r31)
    lfs     f3, 0x18(r31)
    fmadds  f0, f2, f1, f0
    fnmadds  f0, f4, f3, f0
    stfs    f0, 0x40(r31)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x2c(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801919f8
    b       branch_0x801919fc

branch_0x801919f8:
    fmr     f0, f1
branch_0x801919fc:
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80191a0c
    b       branch_0x80191a10

branch_0x80191a0c:
    fmr     f0, f1
branch_0x80191a10:
    stfs    f0, 0x8(r31)
    lfs     f0, 0x20(r31)
    lfs     f1, 0x2c(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80191a28
    b       branch_0x80191a2c

branch_0x80191a28:
    fmr     f0, f1
branch_0x80191a2c:
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80191a3c
    b       branch_0x80191a40

branch_0x80191a3c:
    fmr     f1, f0
branch_0x80191a40:
    stfs    f1, 0xc(r31)
branch_0x80191a44:
    cmpwi   r29, 0x3
    beq-    branch_0x80191a5c
    lwz     r5, 0x8(r30)
    mr      r4, r31
    lwz     r3, -0x6320(r13)
    bl      addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai
branch_0x80191a5c:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    addi    sp, sp, 0x98
    blr


.globl setList__17TMapCollisionMoveFv
setList__17TMapCollisionMoveFv: # 0x80191a78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r31, 0x4(r3)
    lwz     r30, 0xc(r3)
    b       branch_0x80191ab8

branch_0x80191aa0:
    lwz     r5, 0x8(r29)
    mr      r4, r31
    lwz     r3, -0x6320(r13)
    bl      addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai
    addi    r31, r31, 0x48
    subi    r30, r30, 0x1
branch_0x80191ab8:
    cmplwi  r30, 0x0
    bne+    branch_0x80191aa0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80191adc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lwz     r7, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r7, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r3)
    lwz     r3, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r3, 0x1c(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x8(r5)
    stw     r0, 0x24(r31)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x28(r31)
    stw     r0, 0x2c(r31)
    lwz     r0, 0x8(r6)
    stw     r0, 0x30(r31)
    lfs     f3, 0x24(r31)
    lfs     f0, 0x18(r31)
    lfs     f2, 0x30(r31)
    fsubs   f1, f3, f0
    lfs     f4, 0x20(r31)
    lfs     f0, 0x2c(r31)
    fsubs   f2, f2, f3
    lfs     f3, 0x14(r31)
    fsubs   f0, f0, f4
    fsubs   f3, f4, f3
    fmuls   f0, f1, f0
    fmsubs  f0, f3, f2, f0
    stfs    f0, 0x34(r31)
    lfs     f3, 0x1c(r31)
    lfs     f0, 0x10(r31)
    lfs     f2, 0x28(r31)
    fsubs   f1, f3, f0
    lfs     f4, 0x24(r31)
    lfs     f0, 0x30(r31)
    fsubs   f2, f2, f3
    lfs     f3, 0x18(r31)
    fsubs   f0, f0, f4
    fsubs   f3, f4, f3
    fmuls   f0, f1, f0
    fmsubs  f0, f3, f2, f0
    stfs    f0, 0x38(r31)
    lfs     f3, 0x20(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x2c(r31)
    fsubs   f1, f3, f0
    lfs     f4, 0x1c(r31)
    lfs     f0, 0x28(r31)
    fsubs   f2, f2, f3
    lfs     f3, 0x10(r31)
    fsubs   f0, f0, f4
    fsubs   f3, f4, f3
    fmuls   f0, f1, f0
    fmsubs  f0, f3, f2, f0
    stfs    f0, 0x3c(r31)
    lfs     f1, -0x43a0(rtoc)
    lfs     f0, 0x34(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80191bfc
    lfs     f0, 0x38(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80191bfc
    lfs     f0, 0x3c(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80191c90
branch_0x80191bfc:
    addi    r3, r31, 0x34
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, 0x38(r31)
    lfs     f0, 0x14(r31)
    lfs     f2, 0x34(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f4, 0x3c(r31)
    lfs     f3, 0x18(r31)
    fmadds  f0, f2, f1, f0
    fnmadds  f0, f4, f3, f0
    stfs    f0, 0x40(r31)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x2c(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80191c44
    b       branch_0x80191c48

branch_0x80191c44:
    fmr     f0, f1
branch_0x80191c48:
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80191c58
    b       branch_0x80191c5c

branch_0x80191c58:
    fmr     f0, f1
branch_0x80191c5c:
    stfs    f0, 0x8(r31)
    lfs     f0, 0x20(r31)
    lfs     f1, 0x2c(r31)
    fcmpo   cr0, f0, f1
    ble-    branch_0x80191c74
    b       branch_0x80191c78

branch_0x80191c74:
    fmr     f0, f1
branch_0x80191c78:
    lfs     f1, 0x14(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80191c88
    b       branch_0x80191c8c

branch_0x80191c88:
    fmr     f1, f0
branch_0x80191c8c:
    stfs    f1, 0xc(r31)
branch_0x80191c90:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __sinit_MapMakeData_cpp
__sinit_MapMakeData_cpp: # 0x80191ca4
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7ec0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80191cec
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80191cec:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80191d1c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80191d1c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80191d4c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80191d4c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80191d7c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80191d7c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80191dac
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80191dac:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80191ddc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80191ddc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80191e0c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80191e0c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80191e3c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80191e3c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80191e6c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80191e6c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80191e9c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80191e9c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80191ecc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80191ecc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80191efc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80191efc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80191f2c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80191f2c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80191f5c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80191f5c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80191f8c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80191f8c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

