
.globl __dt__12TYoshiTongueFv
__dt__12TYoshiTongueFv: # 0x802674e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80267564
    lis     r3, __vvt__12TYoshiTongue@ha
    addi    r3, r3, __vvt__12TYoshiTongue@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80267554
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80267554
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80267554:
    extsh.  r0, r31
    ble-    branch_0x80267564
    mr      r3, r30
    bl      __dl__FPv
branch_0x80267564:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getTakingMtx__12TYoshiTongueFv
getTakingMtx__12TYoshiTongueFv: # 0x80267580
    lwz     r3, 0x78(r3)
    lwz     r3, 0x58(r3)
    blr


.globl checkTaking__12TYoshiTongueFv
checkTaking__12TYoshiTongueFv: # 0x8026758c
    blr


.globl checkTaken__12TYoshiTongueFv
checkTaken__12TYoshiTongueFv: # 0x80267590
    blr


.globl entry__12TYoshiTongueFv
entry__12TYoshiTongueFv: # 0x80267594
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r0, 0x7c(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x802675dc
    lwz     r3, 0x74(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x78(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802675dc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl viewCalc__12TYoshiTongueFv
viewCalc__12TYoshiTongueFv: # 0x802675f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lhz     r0, 0x7c(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80267638
    lwz     r3, 0x74(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x78(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80267638:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcAnim__12TYoshiTongueFPA4_f
calcAnim__12TYoshiTongueFPA4_f: # 0x8026764c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stw     r31, 0x11c(sp)
    mr      r31, r3
    lfs     f0, 0xc(r4)
    stfs    f0, 0xa0(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0xa4(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0xa8(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0xac(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0xb0(r3)
    lfs     f0, 0x20(r4)
    stfs    f0, 0xb4(r3)
    lhz     r0, 0x7c(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x802676a0
    b       branch_0x8026771c

branch_0x802676a0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x802676cc

branch_0x802676b0:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x802676cc:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x802676b0
    lwz     r3, 0x78(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80267708

branch_0x802676ec:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80267708:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x802676ec
    b       branch_0x802678b4

branch_0x8026771c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80267748

branch_0x8026772c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80267748:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026772c
    lwz     r3, 0x78(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80267784

branch_0x80267768:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x80267784:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80267768
    lwz     r3, 0xb8(r31)
    addi    r4, r31, 0xa0
    lwz     r0, 0xbc(r31)
    addi    r5, r31, 0xac
    lfs     f0, -0xc60(r2)
    stw     r3, 0x10c(sp)
    addi    r6, sp, 0x10c
    stw     r0, 0x110(sp)
    lwz     r0, 0xc0(r31)
    stw     r0, 0x114(sp)
    lfs     f1, 0x110(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x110(sp)
    lwz     r3, 0x74(r31)
    bl      SMS_MakeJointsToArc__FP8J3DModelRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r5, 0x74(r31)
    addi    r3, sp, 0xc8
    lfs     f0, -0xc5c(r2)
    mr      r4, r3
    lwz     r6, 0x4(r5)
    lwz     r7, 0x58(r5)
    lhz     r6, 0x1c(r6)
    addi    r5, r6, -0x2
    addi    r0, r6, -0x1
    mulli   r5, r5, 0x30
    mulli   r0, r0, 0x30
    add     r5, r7, r5
    add     r6, r7, r0
    lfs     f1, 0xc(r5)
    lfs     f2, 0xc(r6)
    fsubs   f1, f2, f1
    stfs    f1, 0xc8(sp)
    stfs    f0, 0xcc(sp)
    lfs     f1, 0x2c(r6)
    lfs     f0, 0x2c(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f5, -0xc5c(r2)
    addi    r3, sp, 0xdc
    lfs     f9, 0xcc(sp)
    lfs     f7, 0xd0(sp)
    fmuls   f10, f5, f9
    lfs     f6, -0xc58(r2)
    lfs     f8, 0xc8(sp)
    fmuls   f1, f5, f7
    lfs     f3, 0x10c(sp)
    fmsubs  f4, f6, f7, f10
    lfs     f0, 0x114(sp)
    fmsubs  f2, f5, f8, f1
    fnmsubs  f1, f6, f8, f10
    stfs    f4, 0xdc(sp)
    stfs    f5, 0xe0(sp)
    stfs    f8, 0xe4(sp)
    stfs    f3, 0xe8(sp)
    stfs    f2, 0xec(sp)
    stfs    f6, 0xf0(sp)
    stfs    f9, 0xf4(sp)
    lfs     f2, 0x110(sp)
    stfs    f2, 0xf8(sp)
    stfs    f1, 0xfc(sp)
    stfs    f5, 0x100(sp)
    stfs    f7, 0x104(sp)
    stfs    f0, 0x108(sp)
    lwz     r4, 0x78(r31)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x78(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802678b4:
    lwz     r0, 0x124(sp)
    lwz     r31, 0x11c(sp)
    addi    sp, sp, 0x120
    mtlr    r0
    blr


.globl movement__12TYoshiTongueFv
movement__12TYoshiTongueFv: # 0x802678c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x218(sp)
    stfd    f31, 0x210(sp)
    stw     r31, 0x20c(sp)
    stw     r30, 0x208(sp)
    mr      r30, r3
    lhz     r0, 0xd4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80267908
    lhz     r0, 0xd6(r30)
    sth     r0, 0x48(r30)
    lhz     r3, 0xd4(r30)
    addi    r0, r3, -0x1
    sth     r0, 0xd4(r30)
    b       branch_0x80267920

branch_0x80267908:
    lhz     r0, 0x48(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80267920
    sth     r0, 0xd6(r30)
    li      r0, 0x3
    sth     r0, 0xd4(r30)
branch_0x80267920:
    lhz     r0, 0x7c(r30)
    cmplwi  r0, 0x7
    bgt-    branch_0x80267944
    lis     r3, unk_803dd3d4@ha
    addi    r3, r3, unk_803dd3d4@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x80267944:
    lfs     f0, -0xc54(r2)
    mr      r3, r30
    stfs    f0, 0x50(r30)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r30)
    b       branch_0x80267bf0

branch_0x80267964:
    lfs     f0, -0xc50(r2)
    mr      r3, r30
    stfs    f0, 0x50(r30)
    bl      calcEntryRadius__9THitActorFv
    lhz     r3, 0x7e(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x7e(r30)
    lhz     r3, 0x7e(r30)
    lha     r0, 0x80(r30)
    cmpw    r3, r0
    blt-    branch_0x8026799c
    li      r0, 0x3
    sth     r0, 0x7c(r30)
    b       branch_0x80267bf0

branch_0x8026799c:
    mr      r3, r30
    bl      canGo__12TYoshiTongueFv
    cmpwi   r3, 0x0
    bne-    branch_0x80267bf0
    li      r0, 0x3
    sth     r0, 0x7c(r30)
    b       branch_0x80267bf0

branch_0x802679b8:
    lfs     f0, -0xc4c(r2)
    mr      r3, r30
    stfs    f0, 0x50(r30)
    bl      calcEntryRadius__9THitActorFv
    lwz     r5, 0xb8(r30)
    addi    r3, sp, 0x100
    lwz     r0, 0xbc(r30)
    addi    r4, r30, 0xa0
    stw     r5, 0x100(sp)
    stw     r0, 0x104(sp)
    lwz     r0, 0xc0(r30)
    stw     r0, 0x108(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x100(sp)
    lwz     r3, 0x104(sp)
    stw     r0, 0x1f8(sp)
    lwz     r0, 0x108(sp)
    stw     r3, 0x1fc(sp)
    stw     r0, 0x200(sp)
    lwz     r0, 0x6c(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80267aec
    lfs     f0, 0x1fc(sp)
    lfs     f3, 0x200(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0x1f8(sp)
    fmuls   f3, f3, f3
    lfs     f0, -0xc5c(r2)
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80267a40
    b       branch_0x80267a64

branch_0x80267a40:
    frsqrte f3, f4
    lfs     f2, -0xc48(r2)
    lfs     f0, -0xc44(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80267a64:
    lfs     f0, 0x98(r30)
    fcmpo   cr0, f4, f0
    bge-    branch_0x80267aec
    lwz     r3, 0x6c(r30)
    lfs     f1, 0x9c(r30)
    addi    r4, r3, 0x24
    lwz     r3, 0x24(r3)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1ec(sp)
    stw     r0, 0x1f0(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1f4(sp)
    lfs     f0, 0x1ec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1ec(sp)
    lfs     f0, 0x1f0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1f0(sp)
    lfs     f0, 0x1f4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1f4(sp)
    lfs     f1, 0x1ec(sp)
    lfs     f0, -0xc40(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80267ad4
    stfs    f0, 0x1ec(sp)
    stfs    f0, 0x1f0(sp)
    stfs    f0, 0x1f4(sp)
branch_0x80267ad4:
    lwz     r3, 0x1ec(sp)
    lwz     r0, 0x1f0(sp)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x1f4(sp)
    stw     r0, 0x8(r4)
branch_0x80267aec:
    lfs     f0, 0x1fc(sp)
    lfs     f3, 0x200(sp)
    fmuls   f1, f0, f0
    lfs     f2, 0x1f8(sp)
    fmuls   f3, f3, f3
    lfs     f0, -0xc5c(r2)
    fmadds  f1, f2, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80267b1c
    b       branch_0x80267b40

branch_0x80267b1c:
    frsqrte f3, f4
    lfs     f2, -0xc48(r2)
    lfs     f0, -0xc44(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80267b40:
    lfs     f0, 0x94(r30)
    fcmpo   cr0, f4, f0
    bge-    branch_0x80267bf0
    lwz     r3, 0x6c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80267ba0
    lwz     r0, 0x4c(r3)
    addi    r4, r30, 0x0
    li      r5, 0x8
    stw     r0, 0xd0(r30)
    lwz     r3, 0x6c(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x6c(r30)
    addi    r4, r30, 0x0
    li      r5, 0xb
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x6c(r30)
branch_0x80267ba0:
    li      r0, 0x0
    sth     r0, 0x7c(r30)
    b       branch_0x80267bf0

branch_0x80267bac:
    lfs     f0, -0xc4c(r2)
    mr      r3, r30
    stfs    f0, 0x50(r30)
    bl      calcEntryRadius__9THitActorFv
    lhz     r3, 0x7e(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x7e(r30)
    lhz     r3, 0x7e(r30)
    lha     r0, 0x82(r30)
    cmpw    r3, r0
    blt-    branch_0x80267bf0
    li      r0, 0x3
    sth     r0, 0x7c(r30)
    b       branch_0x80267bf0

branch_0x80267be4:
    lhz     r3, 0x7e(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x7e(r30)
branch_0x80267bf0:
    lhz     r0, 0x7c(r30)
    cmpwi   r0, 0x3
    beq-    branch_0x80267ed4
    bge-    branch_0x80267c10
    cmpwi   r0, 0x1
    beq-    branch_0x80267c3c
    bge-    branch_0x80267eb0
    b       branch_0x80267c20

branch_0x80267c10:
    cmpwi   r0, 0x8
    bge-    branch_0x80267c20
    cmpwi   r0, 0x6
    bge-    branch_0x80267f78
branch_0x80267c20:
    lwz     r3, 0xa0(r30)
    lwz     r0, 0xa4(r30)
    stw     r3, 0xb8(r30)
    stw     r0, 0xbc(r30)
    lwz     r0, 0xa8(r30)
    stw     r0, 0xc0(r30)
    b       branch_0x8026810c

branch_0x80267c3c:
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x1
    bl      findTarget__12TYoshiTongueFbb
    mr.     r31, r3
    beq-    branch_0x80267e7c
    lwz     r0, 0x6c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80267e7c
    lwz     r5, 0x10(r31)
    addi    r3, sp, 0x98
    lwz     r0, 0x14(r31)
    addi    r4, sp, 0x1e0
    lfs     f2, -0xc48(r2)
    stw     r5, 0x1e0(sp)
    stw     r0, 0x1e4(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1e8(sp)
    lfs     f1, 0x5c(r31)
    lfs     f0, 0x1e4(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1e4(sp)
    lwz     r5, 0xb8(r30)
    lwz     r0, 0xbc(r30)
    stw     r5, 0x1d4(sp)
    stw     r0, 0x1d8(sp)
    lwz     r0, 0xc0(r30)
    stw     r0, 0x1dc(sp)
    lfs     f31, 0x88(r30)
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x98
    addi    r4, r30, 0xb8
    bl      __ami__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x17c
    addi    r4, sp, 0x98
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x17c(sp)
    fmr     f1, f31
    lwz     r4, 0x180(sp)
    addi    r3, sp, 0xb8
    stw     r0, 0xb8(sp)
    lwz     r0, 0x184(sp)
    stw     r4, 0xbc(sp)
    stw     r0, 0xc0(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xb8(sp)
    addi    r3, sp, 0xf4
    lwz     r5, 0xbc(sp)
    addi    r4, sp, 0x188
    stw     r0, 0x188(sp)
    lwz     r0, 0xc0(sp)
    stw     r5, 0x18c(sp)
    stw     r0, 0x190(sp)
    lwz     r5, 0xb8(r30)
    lwz     r0, 0xbc(r30)
    stw     r5, 0xf4(sp)
    stw     r0, 0xf8(sp)
    lwz     r0, 0xc0(r30)
    stw     r0, 0xfc(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r5, 0xf4(sp)
    addi    r3, sp, 0xe8
    lwz     r0, 0xf8(sp)
    addi    r4, sp, 0x1d4
    stw     r5, 0xb8(r30)
    stw     r0, 0xbc(r30)
    lwz     r0, 0xfc(sp)
    stw     r0, 0xc0(r30)
    lwz     r5, 0xb8(r30)
    lwz     r0, 0xbc(r30)
    stw     r5, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0xc0(r30)
    stw     r0, 0xf0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xe8(sp)
    lwz     r0, 0xec(sp)
    stw     r3, 0xc4(r30)
    stw     r0, 0xc8(r30)
    lwz     r0, 0xf0(sp)
    stw     r0, 0xcc(r30)
    lwz     r0, 0x1e0(sp)
    lwz     r3, 0x1e4(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0x1e8(sp)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0xb8(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x110(sp)
    lfs     f1, 0x114(sp)
    lfs     f0, 0xbc(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f1, 0x118(sp)
    lfs     f0, 0xc0(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x118(sp)
    lwz     r0, 0x110(sp)
    lwz     r3, 0x114(sp)
    stw     r0, 0x164(sp)
    lwz     r0, 0x118(sp)
    stw     r3, 0x168(sp)
    stw     r0, 0x16c(sp)
    lfs     f1, 0x164(sp)
    lfs     f0, 0x168(sp)
    lfs     f2, 0x16c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0xc3c(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026810c
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026810c
    stw     r31, 0x6c(r30)
    li      r4, 0x7920
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80267e68
    addi    r4, r30, 0xb8
    li      r3, 0x7920
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80267e68:
    li      r0, 0x0
    sth     r0, 0x7e(r30)
    li      r0, 0x2
    sth     r0, 0x7c(r30)
    b       branch_0x8026810c

branch_0x80267e7c:
    lfs     f1, 0xb8(r30)
    lfs     f0, 0xc4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0xc8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(r30)
    lfs     f1, 0xc0(r30)
    lfs     f0, 0xcc(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(r30)
    b       branch_0x8026810c

branch_0x80267eb0:
    lhz     r3, 0x7e(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x7e(r30)
    lhz     r0, 0x7e(r30)
    cmplwi  r0, 0xa
    ble-    branch_0x8026810c
    li      r0, 0x3
    sth     r0, 0x7c(r30)
    b       branch_0x8026810c

branch_0x80267ed4:
    lfs     f31, 0x8c(r30)
    addi    r3, sp, 0x8c
    addi    r4, r30, 0xb8
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x8c
    addi    r4, r30, 0xa0
    bl      __ami__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x140
    addi    r4, sp, 0x8c
    bl      __ct__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x140(sp)
    fmr     f1, f31
    lwz     r4, 0x144(sp)
    addi    r3, sp, 0xa8
    stw     r0, 0xa8(sp)
    lwz     r0, 0x148(sp)
    stw     r4, 0xac(sp)
    stw     r0, 0xb0(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0xa8(sp)
    addi    r3, sp, 0xdc
    lwz     r5, 0xac(sp)
    addi    r4, sp, 0x14c
    stw     r0, 0x14c(sp)
    lwz     r0, 0xb0(sp)
    stw     r5, 0x150(sp)
    stw     r0, 0x154(sp)
    lwz     r5, 0xa0(r30)
    lwz     r0, 0xa4(r30)
    stw     r5, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0xa8(r30)
    stw     r0, 0xe4(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xdc(sp)
    lwz     r0, 0xe0(sp)
    stw     r3, 0xb8(r30)
    stw     r0, 0xbc(r30)
    lwz     r0, 0xe4(sp)
    stw     r0, 0xc0(r30)
    b       branch_0x8026810c

branch_0x80267f78:
    lwz     r5, 0xb8(r30)
    addi    r3, sp, 0xd0
    lwz     r0, 0xbc(r30)
    addi    r4, r30, 0xa0
    stw     r5, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0xc0(r30)
    stw     r0, 0xd8(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xd0(sp)
    lwz     r3, 0xd4(sp)
    stw     r0, 0x1c8(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0x1cc(sp)
    lfs     f0, -0xc5c(r2)
    stw     r0, 0x1d0(sp)
    lfs     f1, 0x1cc(sp)
    lfs     f3, 0x1d0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x1c8(sp)
    fmuls   f3, f3, f3
    fmadds  f1, f2, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80267fe4
    b       branch_0x80268008

branch_0x80267fe4:
    frsqrte f3, f31
    lfs     f2, -0xc48(r2)
    lfs     f0, -0xc44(r2)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x80268008:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x0(r3)
    fneg    f0, f0
    stfs    f0, 0x1b8(sp)
    lfs     f0, 0x10(r3)
    fneg    f0, f0
    stfs    f0, 0x1bc(sp)
    lfs     f0, 0x20(r3)
    fneg    f0, f0
    stfs    f0, 0x1c0(sp)
    lfs     f0, 0x90(r30)
    lhz     r0, 0x7c(r30)
    fmuls   f1, f31, f0
    cmplwi  r0, 0x7
    bne-    branch_0x8026805c
    lfs     f0, -0xc48(r2)
    fmuls   f1, f1, f0
branch_0x8026805c:
    lfs     f0, 0x1b8(sp)
    addi    r3, sp, 0xc4
    addi    r4, sp, 0x1b8
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(sp)
    lfs     f0, 0x1bc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1bc(sp)
    lfs     f0, 0x1c0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c0(sp)
    lwz     r5, 0xb8(r30)
    lwz     r0, 0xbc(r30)
    stw     r5, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0xc0(r30)
    stw     r0, 0xcc(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc4(sp)
    addi    r4, sp, 0x1ac
    lwz     r3, 0xc8(sp)
    stw     r0, 0x1ac(sp)
    lwz     r0, 0xcc(sp)
    stw     r3, 0x1b0(sp)
    stw     r0, 0x1b4(sp)
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x8026810c
    lfs     f1, 0xb8(r30)
    lfs     f0, 0x1b8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xb8(r30)
    lfs     f1, 0xbc(r30)
    lfs     f0, 0x1bc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(r30)
    lfs     f1, 0xc0(r30)
    lfs     f0, 0x1c0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc0(r30)
branch_0x8026810c:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xbc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xb8(r30)
    lwz     r0, 0xbc(r30)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0xc0(r30)
    stw     r0, 0x18(r30)
    lfs     f2, -0xc48(r2)
    lfs     f1, 0x54(r30)
    lfs     f0, 0x14(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0x21c(sp)
    lfd     f31, 0x210(sp)
    lwz     r31, 0x20c(sp)
    lwz     r30, 0x208(sp)
    addi    sp, sp, 0x218
    mtlr    r0
    blr


.globl __ami__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
__ami__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_: # 0x80268168
    lfs     f0, 0x0(r4)
    lfs     f1, 0x0(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x4(r3)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r3)
    blr


.globl findTarget__12TYoshiTongueFbb
findTarget__12TYoshiTongueFbb: # 0x8026819c
    mflr    r0
    lis     r7, unk_10000024@h
    stw     r0, 0x4(sp)
    lis     r6, unk_4000000a@h
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stfd    f28, 0xc0(sp)
    stfd    f27, 0xb8(sp)
    stfd    f26, 0xb0(sp)
    stfd    f25, 0xa8(sp)
    stmw    r23, 0x84(sp)
    mr      r25, r3
    clrlwi  r23, r5, 24
    clrlwi  r28, r4, 24
    addi    r29, r7, unk_10000024@l
    addi    r30, r7, 0x5
    addi    r31, r6, unk_4000000a@l
    li      r27, 0x0
    li      r26, 0x0
    li      r24, 0x0
    lfs     f25, -0xc38(r2)
    lfs     f27, -0xc5c(r2)
    lfs     f28, -0xc48(r2)
    lfs     f29, -0xc44(r2)
    lfs     f30, -0xc34(r2)
    lfs     f31, -0xc58(r2)
    b       branch_0x80268470

branch_0x80268210:
    lwz     r3, 0x44(r25)
    li      r4, 0x0
    lwzx    r5, r3, r24
    lwz     r3, 0x4c(r5)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x390
    bne-    branch_0x80268230
    li      r4, 0x1
branch_0x80268230:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x391
    bne-    branch_0x80268240
    li      r4, 0x1
branch_0x80268240:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x392
    bne-    branch_0x80268250
    li      r4, 0x1
branch_0x80268250:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x393
    bne-    branch_0x80268260
    li      r4, 0x1
branch_0x80268260:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x394
    bne-    branch_0x80268270
    li      r4, 0x1
branch_0x80268270:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x395
    bne-    branch_0x80268280
    li      r4, 0x1
branch_0x80268280:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x396
    bne-    branch_0x80268290
    li      r4, 0x1
branch_0x80268290:
    cmplwi  r28, 0x1
    bne-    branch_0x80268308
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x1
    bne-    branch_0x802682a8
    li      r4, 0x1
branch_0x802682a8:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x2
    bne-    branch_0x802682b8
    li      r4, 0x1
branch_0x802682b8:
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x5a
    bne-    branch_0x802682c8
    li      r4, 0x1
branch_0x802682c8:
    rlwinm. r0, r3, 0, 3, 3
    beq-    branch_0x802682d8
    li      r0, 0x1
    b       branch_0x802682dc

branch_0x802682d8:
    li      r0, 0x0
branch_0x802682dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80268308
    cmpw    r3, r29
    beq-    branch_0x80268308
    bge-    branch_0x802682fc
    cmpw    r3, r30
    beq-    branch_0x80268308
    b       branch_0x80268304

branch_0x802682fc:
    cmpw    r3, r31
    beq-    branch_0x80268308
branch_0x80268304:
    li      r4, 0x1
branch_0x80268308:
    cmpwi   r4, 0x1
    bne-    branch_0x80268468
    lwz     r6, 0x10(r5)
    addi    r3, sp, 0x34
    lwz     r0, 0x14(r5)
    addi    r4, r25, 0xb8
    stw     r6, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x78(sp)
    lfs     f1, 0x5c(r5)
    lfs     f0, 0x74(sp)
    fmadds  f0, f28, f1, f0
    stfs    f0, 0x74(sp)
    lwz     r0, 0x70(sp)
    lwz     r5, 0x74(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x78(sp)
    stw     r5, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x34(sp)
    lwz     r3, 0x38(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0x64(sp)
    stw     r0, 0x68(sp)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x68(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    mfcr    r0
    extrwi. r0, r0, 1, 2
    bne-    branch_0x80268468
    fcmpo   cr0, f1, f27
    cror    2, 0, 2
    bne-    branch_0x802683bc
    fmr     f26, f1
    b       branch_0x802683d8

branch_0x802683bc:
    frsqrte f2, f1
    frsp    f2, f2
    fmuls   f0, f2, f2
    fmuls   f2, f28, f2
    fnmsubs  f0, f1, f0, f29
    fmuls   f0, f2, f0
    fmuls   f26, f1, f0
branch_0x802683d8:
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    bne-    branch_0x802683f4
    stfs    f27, 0x68(sp)
    stfs    f27, 0x64(sp)
    stfs    f27, 0x60(sp)
    b       branch_0x80268420

branch_0x802683f4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    lfs     f0, 0x60(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x60(sp)
    lfs     f0, 0x64(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x64(sp)
    lfs     f0, 0x68(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x68(sp)
branch_0x80268420:
    cmplwi  r23, 0x0
    beq-    branch_0x80268454
    lfs     f1, 0x64(sp)
    lfs     f0, 0xb0(r25)
    lfs     f2, 0x60(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0xac(r25)
    lfs     f4, 0x68(sp)
    lfs     f3, 0xb4(r25)
    fmadds  f0, f2, f1, f0
    fmadds  f0, f4, f3, f0
    fcmpo   cr0, f0, f28
    ble-    branch_0x80268468
branch_0x80268454:
    fcmpo   cr0, f26, f25
    bge-    branch_0x80268468
    lwz     r3, 0x44(r25)
    fmr     f25, f26
    lwzx    r27, r3, r24
branch_0x80268468:
    addi    r26, r26, 0x1
    addi    r24, r24, 0x4
branch_0x80268470:
    lhz     r0, 0x48(r25)
    cmpw    r26, r0
    blt+    branch_0x80268210
    mr      r3, r27
    lmw     r23, 0x84(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    lfd     f28, 0xc0(sp)
    lfd     f27, 0xb8(sp)
    lfd     f26, 0xb0(sp)
    lfd     f25, 0xa8(sp)
    addi    sp, sp, 0xe0
    blr


.globl canGo__12TYoshiTongueFv
canGo__12TYoshiTongueFv: # 0x802684b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    addi    r4, r31, 0xa0
    lwz     r5, 0xb8(r3)
    addi    r3, sp, 0x14
    lwz     r0, 0xbc(r31)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0xc0(r31)
    stw     r0, 0x1c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x14(sp)
    lwz     r3, 0x18(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x1c(sp)
    stw     r3, 0x3c(sp)
    lfs     f0, -0xc5c(r2)
    stw     r0, 0x40(sp)
    lfs     f2, 0x3c(sp)
    lfs     f1, 0xb0(r31)
    lfs     f3, 0x38(sp)
    fmuls   f1, f2, f1
    lfs     f2, 0xac(r31)
    lfs     f5, 0x40(sp)
    lfs     f4, 0xb4(r31)
    fmadds  f1, f3, f2, f1
    fmadds  f1, f5, f4, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80268538
    li      r3, 0x0
    b       branch_0x802685d8

branch_0x80268538:
    lfs     f1, -0xc4c(r2)
    addi    r4, r31, 0xb8
    lfs     f0, 0xbc(r31)
    addi    r5, r31, 0xc0
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f1, f1, f0
    lfs     f2, -0xc60(r2)
    bl      isTouchedOneWallAndMoveXZ__4TMapCFPffPff
    clrlwi. r0, r3, 24
    ble-    branch_0x80268568
    li      r3, 0x0
    b       branch_0x802685d8

branch_0x80268568:
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, sp, 0x30
    lfs     f1, 0xb8(r31)
    lfs     f2, 0xbc(r31)
    lfs     f3, 0xc0(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0xc60(r2)
    lfs     f2, 0xbc(r31)
    fadds   f0, f0, f1
    fcmpo   cr0, f0, f2
    ble-    branch_0x802685a0
    stfs    f0, 0xbc(r31)
    li      r3, 0x1
    b       branch_0x802685d8

branch_0x802685a0:
    lwz     r3, R13Off_m0x6328(r13)
    addi    r4, sp, 0x2c
    lfs     f1, 0xb8(r31)
    lfs     f3, 0xc0(r31)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0xc60(r2)
    lfs     f0, 0xbc(r31)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x802685d4
    stfs    f1, 0xbc(r31)
    li      r3, 0x1
    b       branch_0x802685d8

branch_0x802685d4:
    li      r3, 0x1
branch_0x802685d8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl emit__12TYoshiTongueFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
emit__12TYoshiTongueFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x802685ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x58(sp)
    mr      r30, r3
    lhz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80268768
    li      r0, 0x0
    sth     r0, 0x7e(r30)
    li      r0, 0x1
    addi    r3, sp, 0x30
    sth     r0, 0x7c(r30)
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r6, 0xb8(r30)
    stw     r0, 0xbc(r30)
    lwz     r0, 0x8(r4)
    stw     r0, 0xc0(r30)
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r6, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18(r30)
    lfs     f2, -0xc48(r2)
    lfs     f1, 0x54(r30)
    lfs     f0, 0x14(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r6, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r6, 0xa0(r30)
    stw     r0, 0xa4(r30)
    lwz     r0, 0x8(r4)
    stw     r0, 0xa8(r30)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x8(r5)
    stw     r0, 0xb4(r30)
    lfs     f1, 0x84(r30)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x38(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r4, 0x30(sp)
    addi    r3, sp, 0x24
    lwz     r0, 0x34(sp)
    stw     r4, 0xc4(r30)
    stw     r0, 0xc8(r30)
    lwz     r0, 0x38(sp)
    stw     r0, 0xcc(r30)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    lfs     f1, -0xc48(r2)
    stw     r4, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x8(r31)
    stw     r0, 0x2c(sp)
    bl      scale__Q29JGeometry8TVec3_f_Ff
    lwz     r0, 0x24(sp)
    lwz     r3, 0x28(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lfs     f1, 0xc4(r30)
    lfs     f0, 0x3c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc4(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, 0x40(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(r30)
    lfs     f1, 0xcc(r30)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0xc30(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80268754
    stfs    f0, 0xc8(r30)
branch_0x80268754:
    lfs     f1, 0xc8(r30)
    lfs     f0, -0xc60(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80268768
    stfs    f0, 0xc8(r30)
branch_0x80268768:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl initInLoadAfter__12TYoshiTongueFv
initInLoadAfter__12TYoshiTongueFv: # 0x80268780
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r3, 0x8(sp)
    lis     r3, unk_8039ef58@ha
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r31, r3, unk_8039ef58@l
    addi    r3, r31, 0x54
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x54
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r30, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, sp, 0x8
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80268830
    addi    r3, r30, 0x0
    addi    r4, r31, 0x60
    bl      __ct__12TMirrorActorFPCc
branch_0x80268830:
    lwz     r4, 0x8(sp)
    mr      r3, r30
    li      r5, 0x4
    lwz     r4, 0x74(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80268860
    addi    r3, r30, 0x0
    addi    r4, r31, 0x70
    bl      __ct__12TMirrorActorFPCc
branch_0x80268860:
    lwz     r4, 0x8(sp)
    mr      r3, r30
    li      r5, 0x4
    lwz     r4, 0x78(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl init__12TYoshiTongueFP6TYoshi
init__12TYoshiTongueFP6TYoshi: # 0x8026888c
    mflr    r0
    lis     r5, unk_8039efdc@ha
    stw     r0, 0x4(sp)
    addi    r0, r5, unk_8039efdc@l
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    mr      r3, r0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, unk_10040001@h
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    stw     r30, 0x70(r31)
    addi    r30, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802688f0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    lis     r5, 0x1
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802688f0:
    stw     r29, 0x74(r31)
    li      r4, 0x0
    lwz     r3, 0x74(r31)
    lwz     r5, 0x4(r3)
    b       branch_0x80268920

branch_0x80268904:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, unk_10040001@l
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80268920:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80268904
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80268968
    lis     r3, unk_8039eff8@ha
    addi    r3, r3, unk_8039eff8@l
    bl      getGlbResource__13JKRFileLoaderFPCc
    lis     r4, unk_10040001@h
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lis     r5, 0x1
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80268968:
    stw     r29, 0x78(r31)
    li      r4, 0x0
    lwz     r3, 0x78(r31)
    lwz     r5, 0x4(r3)
    b       branch_0x80268998

branch_0x8026897c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, unk_10040001@l
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80268998:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026897c
    li      r7, 0x0
    sth     r7, 0x7c(r31)
    lis     r4, unk_08000083@h
    li      r5, 0x3c
    sth     r7, 0x7e(r31)
    li      r0, 0x258
    addi    r3, r31, 0x0
    sth     r5, 0x80(r31)
    addi    r4, r4, unk_08000083@l
    li      r5, 0x5
    sth     r0, 0x82(r31)
    lis     r6, 0x7000
    lfs     f0, -0xc4c(r2)
    stfs    f0, 0x84(r31)
    lfs     f0, -0xc2c(r2)
    stfs    f0, 0x88(r31)
    lfs     f0, -0xc28(r2)
    stfs    f0, 0x8c(r31)
    lfs     f0, -0xc40(r2)
    stfs    f0, 0x90(r31)
    lfs     f0, -0xc24(r2)
    stfs    f0, 0x94(r31)
    lfs     f2, -0xc20(r2)
    lfs     f0, 0x94(r31)
    fmr     f4, f2
    fadds   f0, f2, f0
    stfs    f0, 0x98(r31)
    lfs     f0, -0xc1c(r2)
    stfs    f0, 0x9c(r31)
    lfs     f0, -0xc5c(r2)
    stfs    f0, 0xa0(r31)
    stfs    f0, 0xa4(r31)
    stfs    f0, 0xa8(r31)
    stfs    f0, 0xb8(r31)
    stfs    f0, 0xbc(r31)
    stfs    f0, 0xc0(r31)
    stfs    f0, 0xc4(r31)
    stfs    f0, 0xc8(r31)
    stfs    f0, 0xcc(r31)
    stw     r7, 0xd0(r31)
    sth     r7, 0xd4(r31)
    lfs     f1, -0xc50(r2)
    lfs     f3, -0xc60(r2)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __sinit_Tongue_cpp
__sinit_Tongue_cpp: # 0x80268a80
    mflr    r0
    lis     r3, unk_803fbe50@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fbe50@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80268ac8
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80268ac8:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80268af8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80268af8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80268b28
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80268b28:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80268b58
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80268b58:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80268b88
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80268b88:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80268bb8
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80268bb8:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80268be8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80268be8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80268c18
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80268c18:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80268c48
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80268c48:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80268c78
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80268c78:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80268ca8
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80268ca8:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80268cd8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80268cd8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80268d08
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80268d08:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80268d38
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80268d38:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80268d68
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80268d68:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80268d7c
unk_80268d7c: # 0x80268d7c
    addi    r3, r3, -0x20
    b       __dt__12TYoshiTongueFv

