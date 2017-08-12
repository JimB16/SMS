
.globl entry__6TYoshiFv
entry__6TYoshiFv: # 0x8026df9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stmw    r24, 0x128(sp)
    mr      r28, r3
    lbz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8026dfc4
    li      r0, 0x0
    b       branch_0x8026dfc8

branch_0x8026dfc4:
    li      r0, 0x1
branch_0x8026dfc8:
    cmpwi   r0, 0x0
    beq-    branch_0x8026e2a8
    cmplwi  r3, 0x6
    li      r5, 0x1
    beq-    branch_0x8026dfe4
    cmplwi  r3, 0x8
    bne-    branch_0x8026e01c
branch_0x8026dfe4:
    lwz     r4, 0xc(r28)
    cmpwi   r4, 0x168
    blt-    branch_0x8026e004
    cmpwi   r4, 0x258
    bge-    branch_0x8026e004
    rlwinm. r0, r4, 0, 27, 27
    bne-    branch_0x8026e004
    li      r5, 0x0
branch_0x8026e004:
    lwz     r0, 0xc(r28)
    cmpwi   r0, 0x168
    bge-    branch_0x8026e01c
    rlwinm. r0, r4, 0, 28, 28
    bne-    branch_0x8026e01c
    li      r5, 0x0
branch_0x8026e01c:
    cmplwi  r3, 0x0
    bne-    branch_0x8026e028
    li      r5, 0x0
branch_0x8026e028:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x3
    beq-    branch_0x8026e060
    cmplwi  r3, 0x4
    beq-    branch_0x8026e060
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026e058
    cmplwi  r3, 0x2
    beq-    branch_0x8026e058
    li      r0, 0x0
branch_0x8026e058:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026e064
branch_0x8026e060:
    li      r5, 0x1
branch_0x8026e064:
    lwz     r0, 0xc(r28)
    cmpwi   r0, 0x258
    bge-    branch_0x8026e078
    li      r0, 0x0
    stb     r0, 0xd0(r28)
branch_0x8026e078:
    lbz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x8026e08c
    li      r0, 0x0
    b       branch_0x8026e090

branch_0x8026e08c:
    li      r0, 0x1
branch_0x8026e090:
    cmpwi   r0, 0x0
    beq-    branch_0x8026e2a8
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x1
    bne-    branch_0x8026e2a8
    lfs     f2, 0x84(r28)
    addi    r25, sp, 0xd4
    lfs     f1, 0x88(r28)
    li      r24, 0x0
    lfs     f0, 0x8c(r28)
    fctiwz  f2, f2
    lwz     r3, 0x34(r28)
    fctiwz  f1, f1
    li      r27, 0xff
    fctiwz  f0, f0
    stfd    f2, 0x120(sp)
    lwz     r3, 0x4(r3)
    stfd    f1, 0x118(sp)
    lwz     r26, 0x4(r3)
    stfd    f0, 0x110(sp)
    lwz     r31, 0x124(sp)
    lwz     r30, 0x11c(sp)
    lwz     r29, 0x114(sp)
    b       branch_0x8026e12c

branch_0x8026e0f0:
    sth     r31, 0xd4(sp)
    clrlslwi  r0, r24, 16, 2
    addi    r5, r25, 0x0
    sth     r30, 0xd6(sp)
    li      r4, 0x2
    sth     r29, 0xd8(sp)
    sth     r27, 0xda(sp)
    lwz     r3, 0x28(r26)
    lwzx    r3, r3, r0
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r24, r24, 0x1
branch_0x8026e12c:
    lhz     r0, 0x24(r26)
    clrlwi  r3, r24, 16
    cmplw   r3, r0
    blt+    branch_0x8026e0f0
    sth     r31, 0xcc(sp)
    li      r27, 0xff
    addi    r5, sp, 0xcc
    sth     r30, 0xce(sp)
    li      r4, 0x2
    sth     r29, 0xd0(sp)
    sth     r27, 0xd2(sp)
    lwz     r3, 0x44(r28)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    sth     r31, 0xc4(sp)
    addi    r5, sp, 0xc4
    li      r4, 0x2
    sth     r30, 0xc6(sp)
    sth     r29, 0xc8(sp)
    sth     r27, 0xca(sp)
    lwz     r3, 0x48(r28)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x34(r28)
    bl      entry__6MActorFv
    lwz     r3, R13Off_m0x610c(r13)
    lwz     r4, 0x34(r28)
    lwz     r3, 0x14(r3)
    lwz     r4, 0x3c(r4)
    lwz     r3, 0x4(r3)
    bl      changeLightDrawBuffer__15TLightWithDBSetFi
    lwz     r3, 0x44(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x38(r28)
    bl      entry__12TYoshiTongueFv
    lwz     r3, R13Off_m0x610c(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x4(r3)
    bl      resetLightDrawBuffer__15TLightWithDBSetFv
    lfs     f0, -0xb60(r2)
    li      r3, 0x0
    li      r0, 0x1
    stfs    f0, 0xe8(sp)
    addi    r4, sp, 0xdc
    li      r5, 0x0
    stfs    f0, 0xec(sp)
    stfs    f0, 0xf0(sp)
    stfs    f0, 0xf4(sp)
    stb     r3, 0xf8(sp)
    stb     r0, 0xf9(sp)
    stw     r3, 0xfc(sp)
    stfs    f0, 0xdc(sp)
    stfs    f0, 0xe0(sp)
    stfs    f0, 0xe4(sp)
    lwz     r3, 0x20(r28)
    lwz     r0, 0x24(r28)
    stw     r3, 0xdc(sp)
    stw     r0, 0xe0(sp)
    lwz     r0, 0x28(r28)
    stw     r0, 0xe4(sp)
    lfs     f0, 0x114(r28)
    stfs    f0, 0xec(sp)
    stfs    f0, 0xe8(sp)
    lwz     r3, R13Off_m0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
    lwz     r5, 0x20(r28)
    addi    r4, sp, 0xb8
    lwz     r0, 0x24(r28)
    lwz     r3, R13Off_m0x6138(r13)
    stw     r5, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x28(r28)
    stw     r0, 0xc0(sp)
    lfs     f1, 0x114(r28)
    bl      request__16TQuestionManagerFQ29JGeometry8TVec3_f_f
branch_0x8026e2a8:
    lmw     r24, 0x128(sp)
    lwz     r0, 0x14c(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl viewCalc__6TYoshiFv
viewCalc__6TYoshiFv: # 0x8026e2bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8026e2e4
    li      r0, 0x0
    b       branch_0x8026e2e8

branch_0x8026e2e4:
    li      r0, 0x1
branch_0x8026e2e8:
    cmpwi   r0, 0x0
    beq-    branch_0x8026e328
    lwz     r3, 0x34(r31)
    bl      viewCalc__6MActorFv
    lwz     r3, 0x44(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x38(r31)
    bl      viewCalc__12TYoshiTongueFv
branch_0x8026e328:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl calcAnim__6TYoshiFv
calcAnim__6TYoshiFv: # 0x8026e33c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x210(sp)
    stfd    f31, 0x208(sp)
    stw     r31, 0x204(sp)
    mr      r31, r3
    stw     r30, 0x200(sp)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bgt-    branch_0x8026e428
    lis     r3, unk_803dd548@ha
    addi    r3, r3, unk_803dd548@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8026e37c:
    lha     r4, 0x70(r31)
    addi    r6, sp, 0x1c4
    lfs     f1, 0x20(r31)
    li      r3, 0x0
    lfs     f2, 0x24(r31)
    lfs     f3, 0x28(r31)
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    b       branch_0x8026e428

branch_0x8026e3a0:
    mr      r3, r31
    bl      thinkAnimation__6TYoshiFv
    lwz     r3, 0x10(r31)
    bl      getTakenMtx__6TMarioFv
    addi    r4, sp, 0x1c4
    bl      PSMTXCopy
    b       branch_0x8026e428

branch_0x8026e3bc:
    lha     r3, 0x2(r31)
    lis     r0, unk_43300000@h
    lfd     f2, -0xb58(r2)
    addi    r6, sp, 0x1c4
    xoris   r3, r3, 0x8000
    stw     r3, 0x1fc(sp)
    addi    r3, r0, unk_43300000@l
    lfs     f4, -0xb5c(r2)
    li      r5, 0x0
    stw     r0, 0x1f8(sp)
    lfs     f0, 0x24(r31)
    lfd     f1, 0x1f8(sp)
    lha     r4, 0x70(r31)
    fsubs   f2, f1, f2
    lfs     f1, 0x20(r31)
    lfs     f3, 0x28(r31)
    fmadds  f2, f4, f2, f0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
    b       branch_0x8026e428

branch_0x8026e408:
    lha     r4, 0x70(r31)
    addi    r6, sp, 0x1c4
    lfs     f1, 0x20(r31)
    li      r3, 0x0
    lfs     f2, 0x24(r31)
    lfs     f3, 0x28(r31)
    li      r5, 0x0
    bl      J3DGetTranslateRotateMtx__FsssfffPA4_f
branch_0x8026e428:
    lbz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8026e43c
    li      r0, 0x0
    b       branch_0x8026e440

branch_0x8026e43c:
    li      r0, 0x1
branch_0x8026e440:
    cmpwi   r0, 0x0
    beq-    branch_0x8026e69c
    mr      r3, r31
    bl      thinkUpper__6TYoshiFv
    lwz     r3, 0x34(r31)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0xc
    beq-    branch_0x8026e480
    bge-    branch_0x8026e474
    cmpwi   r3, 0xa
    beq-    branch_0x8026e480
    b       branch_0x8026e53c

branch_0x8026e474:
    cmpwi   r3, 0xf
    beq-    branch_0x8026e480
    b       branch_0x8026e53c

branch_0x8026e480:
    lwz     r3, 0x34(r31)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
    lwz     r3, 0x44(r31)
    lwz     r5, 0x4(r3)
    b       branch_0x8026e4ec

branch_0x8026e4d0:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x8026e4ec:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026e4d0
    lwz     r3, 0x48(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8026e528

branch_0x8026e50c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x8026e528:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026e50c
    b       branch_0x8026e5f4

branch_0x8026e53c:
    lwz     r3, 0x34(r31)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x30(r3)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
    lwz     r3, 0x44(r31)
    lwz     r5, 0x4(r3)
    b       branch_0x8026e5a8

branch_0x8026e58c:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8026e5a8:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026e58c
    lwz     r3, 0x48(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8026e5e4

branch_0x8026e5c8:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8026e5e4:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026e5c8
branch_0x8026e5f4:
    lwz     r4, 0x34(r31)
    addi    r3, sp, 0x1c4
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x34(r31)
    bl      calcAnm__6MActorFv
    lwz     r3, 0x34(r31)
    lwz     r4, 0x44(r31)
    lwz     r3, 0x4(r3)
    addi    r4, r4, 0x20
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x6f0
    bl      PSMTXCopy
    lwz     r3, 0x34(r31)
    lwz     r4, 0x48(r31)
    lwz     r3, 0x4(r3)
    addi    r4, r4, 0x20
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x600
    bl      PSMTXCopy
    lwz     r3, 0x44(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x34(r31)
    addi    r4, sp, 0x194
    lhz     r0, 0x3c(r31)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    lwz     r3, 0x38(r31)
    addi    r4, sp, 0x194
    bl      calcAnim__12TYoshiTongueFPA4_f
branch_0x8026e69c:
    lwz     r3, 0x34(r31)
    li      r4, 0x0
    lhz     r0, 0xf6(r31)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0xfc(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x100(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x104(r31)
    lwz     r3, 0x34(r31)
    lhz     r0, 0xf8(r31)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x108(r31)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x10c(r31)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x110(r31)
    lwz     r5, 0x10(r31)
    lwz     r3, 0x34(r31)
    lwz     r30, 0x4e8(r5)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x34(r31)
    li      r4, 0x0
    lfs     f31, 0xc(r3)
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    fmr     f2, f31
    lfs     f1, 0x10(r3)
    lwz     r3, 0x118(r31)
    addi    r4, r31, 0x20
    addis   r5, r30, 0x1000
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
    lfs     f2, 0x68(r31)
    addi    r4, r31, 0xfc
    lfs     f1, 0x6c(r31)
    addis   r5, r30, 0x1000
    lwz     r3, 0x120(r31)
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
    lwz     r0, 0x214(sp)
    lfd     f31, 0x208(sp)
    lwz     r31, 0x204(sp)
    mtlr    r0
    lwz     r30, 0x200(sp)
    addi    sp, sp, 0x210
    blr


.globl movement__6TYoshiFv
movement__6TYoshiFv: # 0x8026e778
    mflr    r0
    lis     r4, unk_8039f820@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x240(sp)
    stfd    f31, 0x238(sp)
    stfd    f30, 0x230(sp)
    stw     r31, 0x22c(sp)
    addi    r31, r4, unk_8039f820@l
    stw     r30, 0x228(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x224(sp)
    lwz     r5, R13Off_m0x6048(r13)
    lbz     r3, 0x124(r5)
    cmplwi  r3, 0x3
    beq-    branch_0x8026e814
    cmplwi  r3, 0x4
    beq-    branch_0x8026e814
    cmplwi  r3, 0x1
    li      r0, 0x1
    beq-    branch_0x8026e7d4
    cmplwi  r3, 0x2
    beq-    branch_0x8026e7d4
    li      r0, 0x0
branch_0x8026e7d4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026e814
    lwz     r3, 0x10(r30)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x8026e7f4
    li      r0, 0x1
    b       branch_0x8026e7f8

branch_0x8026e7f4:
    li      r0, 0x0
branch_0x8026e7f8:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026e814
    lwz     r3, 0xc(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x8026e814
    addi    r0, r3, -0x1
    stw     r0, 0xc(r30)
branch_0x8026e814:
    lwz     r3, 0x38(r30)
    lwz     r4, 0xd0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8026e85c
    mr      r3, r30
    bl      doEat__6TYoshiFUl
    lwz     r3, 0x10(r30)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026e850
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x14
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8026e850:
    lwz     r3, 0x38(r30)
    li      r0, 0x0
    stw     r0, 0xd0(r3)
branch_0x8026e85c:
    lbz     r0, 0x0(r30)
    cmplwi  r0, 0x8
    bgt-    branch_0x8026f020
    lis     r3, unk_803dd56c@ha
    addi    r3, r3, unk_803dd56c@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8026e880:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8026f020
    li      r0, 0x6
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x17
    beq-    branch_0x8026e8fc
    lwz     r29, 0x34(r30)
    li      r4, 0x17
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026e8d8
    addi    r3, r29, 0x0
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
branch_0x8026e8d8:
    addi    r3, r30, 0x0
    li      r4, 0x17
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x5c(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x8026e8fc:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x7919
    li      r5, 0x1
    li      r6, 0x1
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x8026f020

branch_0x8026e914:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8026e938
    lwz     r3, 0x34(r30)
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
branch_0x8026e938:
    lha     r3, 0x70(r30)
    lis     r0, 0x4330
    lfd     f1, -0xb58(r2)
    addi    r4, r30, 0x20
    xoris   r3, r3, 0x8000
    stw     r3, 0x21c(sp)
    addi    r5, sp, 0x200
    lfs     f2, -0xb50(r2)
    stw     r0, 0x218(sp)
    lfd     f0, 0x218(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0x200(sp)
    lwz     r3, 0x94(r30)
    bl      SMS_RideMoveByGroundActor__FP11TRidingInfoPQ29JGeometry8TVec3_f_Pf
    lfs     f1, -0xb4c(r2)
    li      r29, 0x0
    lfs     f0, 0x200(sp)
    addi    r4, sp, 0x1fc
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x210(sp)
    lwz     r0, 0x214(sp)
    sth     r0, 0x70(r30)
    stw     r29, 0x1fc(sp)
    lfs     f1, -0xb48(r2)
    lfs     f0, 0x24(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x20(r30)
    lfs     f3, 0x28(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f31, -0xb44(r2)
    fmr     f30, f1
branch_0x8026e9c0:
    lwz     r3, 0x1fc(sp)
    bl      isMarioThrough__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8026ea08
    lwz     r3, 0x1fc(sp)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8026ea08
    fsubs   f2, f30, f31
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x20(r30)
    addi    r4, sp, 0x1fc
    lfs     f3, 0x28(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    addi    r29, r29, 0x1
    fmr     f30, f1
    cmpwi   r29, 0x5
    blt+    branch_0x8026e9c0
branch_0x8026ea08:
    lwz     r3, 0x34(r30)
    addi    r5, r30, 0x20
    lwz     r4, 0x1fc(sp)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(r30)
    lfs     f1, 0x2c(r30)
    lfs     f0, 0xb18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x2c(r30)
    lfs     f1, 0x24(r30)
    lfs     f0, 0x2c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x24(r30)
    lfs     f0, 0x24(r30)
    fcmpo   cr0, f30, f0
    ble-    branch_0x8026ebb0
    lwz     r3, 0x1fc(sp)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8026ea60
    li      r0, 0x1
    b       branch_0x8026ea64

branch_0x8026ea60:
    li      r0, 0x0
branch_0x8026ea64:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026eac8
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8026ea98
    cmplwi  r3, 0x101
    beq-    branch_0x8026ea98
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8026ea98
    cmplwi  r3, 0x4104
    bne-    branch_0x8026eaa0
branch_0x8026ea98:
    li      r0, 0x1
    b       branch_0x8026eaa4

branch_0x8026eaa0:
    li      r0, 0x0
branch_0x8026eaa4:
    clrlwi. r0, r0, 24
    bne-    branch_0x8026eac8
    cmplwi  r3, 0x800
    bne-    branch_0x8026eabc
    li      r0, 0x1
    b       branch_0x8026eac0

branch_0x8026eabc:
    li      r0, 0x0
branch_0x8026eac0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026eba4
branch_0x8026eac8:
    lbz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x8026eadc
    li      r0, 0x0
    b       branch_0x8026eae0

branch_0x8026eadc:
    li      r0, 0x1
branch_0x8026eae0:
    cmpwi   r0, 0x0
    beq-    branch_0x8026f020
    cmplwi  r3, 0x8
    bne-    branch_0x8026eafc
    lwz     r3, 0x10(r30)
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x8026eafc:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8026eb14
    li      r0, 0x1
    b       branch_0x8026eb18

branch_0x8026eb14:
    li      r0, 0x0
branch_0x8026eb18:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026eb88
    li      r0, 0x3
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x19
    beq-    branch_0x8026eb90
    lwz     r29, 0x34(r30)
    li      r4, 0x19
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026eb60
    addi    r3, r29, 0x0
    li      r4, 0x19
    bl      setBckFromIndex__6MActorFi
branch_0x8026eb60:
    addi    r3, r30, 0x0
    li      r4, 0x19
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x64(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x8026eb90

branch_0x8026eb88:
    li      r0, 0x4
    stb     r0, 0x0(r30)
branch_0x8026eb90:
    li      r0, 0x0
    stb     r0, 0xd0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
    b       branch_0x8026f020

branch_0x8026eba4:
    stfs    f30, 0x24(r30)
    lfs     f0, -0xb60(r2)
    stfs    f0, 0x2c(r30)
branch_0x8026ebb0:
    mr      r3, r30
    bl      doSearch__6TYoshiFv
    lwz     r0, 0xc(r30)
    lwz     r3, 0x10(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8026f020
    lbz     r4, 0x0(r30)
    cmplwi  r4, 0x0
    bne-    branch_0x8026ebdc
    li      r0, 0x0
    b       branch_0x8026ebe0

branch_0x8026ebdc:
    li      r0, 0x1
branch_0x8026ebe0:
    cmpwi   r0, 0x0
    beq-    branch_0x8026f020
    cmplwi  r4, 0x8
    bne-    branch_0x8026ebf8
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x8026ebf8:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8026ec10
    li      r0, 0x1
    b       branch_0x8026ec14

branch_0x8026ec10:
    li      r0, 0x0
branch_0x8026ec14:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026ec84
    li      r0, 0x3
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x19
    beq-    branch_0x8026ec8c
    lwz     r29, 0x34(r30)
    li      r4, 0x19
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026ec5c
    addi    r3, r29, 0x0
    li      r4, 0x19
    bl      setBckFromIndex__6MActorFi
branch_0x8026ec5c:
    addi    r3, r30, 0x0
    li      r4, 0x19
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x64(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x8026ec8c

branch_0x8026ec84:
    li      r0, 0x4
    stb     r0, 0x0(r30)
branch_0x8026ec8c:
    li      r0, 0x0
    stb     r0, 0xd0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
    b       branch_0x8026f020

branch_0x8026eca0:
    lwz     r4, 0x10(r30)
    lis     r3, 0x4330
    lha     r5, 0x70(r30)
    lha     r4, 0x96(r4)
    xoris   r0, r5, 0x8000
    lfd     f2, -0xb58(r2)
    subf    r4, r5, r4
    stw     r0, 0x21c(sp)
    xoris   r0, r4, 0x8000
    lfs     f3, 0xe4(r30)
    stw     r0, 0x214(sp)
    stw     r3, 0x210(sp)
    stw     r3, 0x218(sp)
    lfd     f1, 0x210(sp)
    lfd     f0, 0x218(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f3, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x208(sp)
    lwz     r0, 0x20c(sp)
    sth     r0, 0x70(r30)
    b       branch_0x8026f020

branch_0x8026ecfc:
    lwz     r4, 0x10(r30)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x20(r30)
    stw     r0, 0x24(r30)
    lwz     r0, 0x18(r4)
    stw     r0, 0x28(r30)
    lwz     r3, 0x10(r30)
    lha     r0, 0x96(r3)
    sth     r0, 0x70(r30)
    lwz     r3, 0x10(r30)
    lwz     r3, 0x4fc(r3)
    lwz     r0, 0xd4(r3)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x8026ee0c
    addi    r3, r30, 0x0
    addi    r4, sp, 0x188
    addi    r5, sp, 0x194
    bl      getEmitPosDir__6TYoshiCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(r30)
    addi    r6, sp, 0x1a4
    lfsu    f0, 0xa4(r3)
    addi    r4, sp, 0x188
    addi    r5, sp, 0x194
    stfs    f0, 0x1a4(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x1a8(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x1ac(sp)
    lwz     r3, 0x38(r30)
    bl      emit__12TYoshiTongueFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r29, 0x0
branch_0x8026ed7c:
    lwz     r3, 0x38(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x38(r30)
    addi    r3, sp, 0x128
    addi    r4, sp, 0x188
    lwz     r5, 0xb8(r6)
    lwz     r0, 0xbc(r6)
    stw     r5, 0x128(sp)
    stw     r0, 0x12c(sp)
    lwz     r0, 0xc0(r6)
    stw     r0, 0x130(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x128(sp)
    lwz     r3, 0x12c(sp)
    stw     r0, 0x1b0(sp)
    lwz     r0, 0x130(sp)
    stw     r3, 0x1b4(sp)
    stw     r0, 0x1b8(sp)
    lfs     f1, 0x1b0(sp)
    lfs     f0, 0x1b4(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x1b8(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x90(r30)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x8026ee0c
    addi    r29, r29, 0x1
    cmpwi   r29, 0xa
    blt+    branch_0x8026ed7c
branch_0x8026ee0c:
    lwz     r0, 0xc(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8026f020
    lbz     r3, 0x0(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x8026ee2c
    li      r0, 0x0
    b       branch_0x8026ee30

branch_0x8026ee2c:
    li      r0, 0x1
branch_0x8026ee30:
    cmpwi   r0, 0x0
    beq-    branch_0x8026f020
    cmplwi  r3, 0x8
    bne-    branch_0x8026ee4c
    lwz     r3, 0x10(r30)
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x8026ee4c:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8026ee64
    li      r0, 0x1
    b       branch_0x8026ee68

branch_0x8026ee64:
    li      r0, 0x0
branch_0x8026ee68:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026eed8
    li      r0, 0x3
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x19
    beq-    branch_0x8026eee0
    lwz     r29, 0x34(r30)
    li      r4, 0x19
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026eeb0
    addi    r3, r29, 0x0
    li      r4, 0x19
    bl      setBckFromIndex__6MActorFi
branch_0x8026eeb0:
    addi    r3, r30, 0x0
    li      r4, 0x19
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x64(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x8026eee0

branch_0x8026eed8:
    li      r0, 0x4
    stb     r0, 0x0(r30)
branch_0x8026eee0:
    li      r0, 0x0
    stb     r0, 0xd0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
    b       branch_0x8026f020

branch_0x8026eef4:
    lha     r3, 0x2(r30)
    addi    r0, r3, -0x1
    sth     r0, 0x2(r30)
    lha     r0, 0x2(r30)
    cmpwi   r0, 0x0
    bgt-    branch_0x8026f020
    li      r0, 0x6
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x17
    beq-    branch_0x8026ef70
    lwz     r29, 0x34(r30)
    li      r4, 0x17
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026ef4c
    addi    r3, r29, 0x0
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
branch_0x8026ef4c:
    addi    r3, r30, 0x0
    li      r4, 0x17
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x5c(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x8026ef70:
    lha     r0, 0x4(r30)
    sth     r0, 0x2(r30)
    b       branch_0x8026f020

branch_0x8026ef7c:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f1, -0xb40(r2)
    bl      checkPass__12J3DFrameCtrlFf
    cmpwi   r3, 0x0
    beq-    branch_0x8026efb0
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x74
    li      r4, 0x3f
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8026efb0:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x8026f020
    li      r0, 0x5
    stb     r0, 0x0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
    b       branch_0x8026f020

branch_0x8026efdc:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r30, 0x0
    addi    r5, r30, 0x74
    li      r4, 0x3f
    li      r6, 0x0
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x5
    stb     r0, 0x0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
    b       branch_0x8026f020

branch_0x8026f008:
    li      r0, 0x0
    stb     r0, 0x0(r30)
    lwz     r3, 0xf0(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8026f020
    bl      startFruit__9TEggYoshiFv
branch_0x8026f020:
    lbz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8026f034
    li      r0, 0x0
    b       branch_0x8026f038

branch_0x8026f034:
    li      r0, 0x1
branch_0x8026f038:
    cmpwi   r0, 0x0
    beq-    branch_0x8026f384
    lbz     r0, 0xd0(r30)
    lis     r4, 0x4330
    lfd     f3, -0xb38(r2)
    slwi    r0, r0, 2
    lfs     f2, 0x84(r30)
    add     r3, r31, r0
    lfs     f1, 0x80(r30)
    lbz     r0, 0x114(r3)
    stw     r0, 0x20c(sp)
    stw     r4, 0x208(sp)
    lfd     f0, 0x208(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x84(r30)
    lbz     r0, 0xd0(r30)
    lfs     f2, 0x88(r30)
    slwi    r0, r0, 2
    lfs     f1, 0x80(r30)
    add     r3, r31, r0
    lbz     r0, 0x115(r3)
    stw     r0, 0x214(sp)
    stw     r4, 0x210(sp)
    lfd     f0, 0x210(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x88(r30)
    lbz     r0, 0xd0(r30)
    lfs     f2, 0x8c(r30)
    slwi    r0, r0, 2
    lfs     f1, 0x80(r30)
    add     r3, r31, r0
    lbz     r0, 0x116(r3)
    stw     r0, 0x21c(sp)
    stw     r4, 0x218(sp)
    lfd     f0, 0x218(sp)
    fsubs   f0, f0, f3
    fsubs   f0, f0, f2
    fmuls   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x8c(r30)
    lwz     r3, 0x38(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lfs     f1, -0xb48(r2)
    addi    r4, sp, 0x1f8
    lfs     f0, 0x24(r30)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x20(r30)
    lfs     f3, 0x28(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f30, f1
    lfs     f31, -0xb44(r2)
    li      r29, 0x0
branch_0x8026f130:
    lwz     r3, 0x1f8(sp)
    bl      isMarioThrough__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8026f178
    lwz     r3, 0x1f8(sp)
    bl      isWaterSurface__12TBGCheckDataCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8026f178
    fsubs   f2, f30, f31
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x20(r30)
    addi    r4, sp, 0x1f8
    lfs     f3, 0x28(r30)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    addi    r29, r29, 0x1
    fmr     f30, f1
    cmpwi   r29, 0x5
    blt+    branch_0x8026f130
branch_0x8026f178:
    lwz     r3, 0x34(r30)
    addi    r5, r30, 0x20
    lwz     r4, 0x1f8(sp)
    bl      setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
    lbz     r4, 0x0(r30)
    cmplwi  r4, 0x6
    bne-    branch_0x8026f2c8
    lfs     f0, 0x24(r30)
    fcmpo   cr0, f30, f0
    ble-    branch_0x8026f2c8
    lwz     r3, 0x1f8(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8026f1d0
    cmplwi  r3, 0x101
    beq-    branch_0x8026f1d0
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x8026f1d0
    cmplwi  r3, 0x4104
    bne-    branch_0x8026f1d8
branch_0x8026f1d0:
    li      r0, 0x1
    b       branch_0x8026f1dc

branch_0x8026f1d8:
    li      r0, 0x0
branch_0x8026f1dc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026f2bc
    cmplwi  r4, 0x0
    bne-    branch_0x8026f1f4
    li      r0, 0x0
    b       branch_0x8026f1f8

branch_0x8026f1f4:
    li      r0, 0x1
branch_0x8026f1f8:
    cmpwi   r0, 0x0
    beq-    branch_0x8026f2c8
    cmplwi  r4, 0x8
    bne-    branch_0x8026f214
    lwz     r3, 0x10(r30)
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x8026f214:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8026f22c
    li      r0, 0x1
    b       branch_0x8026f230

branch_0x8026f22c:
    li      r0, 0x0
branch_0x8026f230:
    clrlwi. r0, r0, 24
    beq-    branch_0x8026f2a0
    li      r0, 0x3
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x19
    beq-    branch_0x8026f2a8
    lwz     r29, 0x34(r30)
    li      r4, 0x19
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026f278
    addi    r3, r29, 0x0
    li      r4, 0x19
    bl      setBckFromIndex__6MActorFi
branch_0x8026f278:
    addi    r3, r30, 0x0
    li      r4, 0x19
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x64(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x8026f2a8

branch_0x8026f2a0:
    li      r0, 0x4
    stb     r0, 0x0(r30)
branch_0x8026f2a8:
    li      r0, 0x0
    stb     r0, 0xd0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
    b       branch_0x8026f2c8

branch_0x8026f2bc:
    stfs    f30, 0x24(r30)
    lfs     f0, -0xb60(r2)
    stfs    f0, 0x2c(r30)
branch_0x8026f2c8:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r5, 0x4(r3)
    b       branch_0x8026f2f8

branch_0x8026f2dc:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x8026f2f8:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026f2dc
    lwz     r3, 0x44(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8026f334

branch_0x8026f318:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x8026f334:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026f318
    lwz     r3, 0x48(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8026f370

branch_0x8026f354:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x8(r3)
branch_0x8026f370:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026f354
    b       branch_0x8026f43c

branch_0x8026f384:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r5, 0x4(r3)
    b       branch_0x8026f3b4

branch_0x8026f398:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8026f3b4:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026f398
    lwz     r3, 0x44(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8026f3f0

branch_0x8026f3d4:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8026f3f0:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026f3d4
    lwz     r3, 0x48(r30)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8026f42c

branch_0x8026f410:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8026f42c:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x8026f410
branch_0x8026f43c:
    lwz     r3, 0x10(r30)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026f458
    lbz     r0, 0xd0(r30)
    lwz     r3, R13Off_m0x6088(r13)
    stb     r0, 0x5d5f(r3)
branch_0x8026f458:
    lwz     r3, 0x34(r30)
    lhz     r0, 0x42(r30)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x74(r30)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x78(r30)
    lfs     f0, 0x2c(r3)
    stfs    f0, 0x7c(r30)
    lwz     r0, 0x244(sp)
    lfd     f31, 0x238(sp)
    lfd     f30, 0x230(sp)
    lwz     r31, 0x22c(sp)
    lwz     r30, 0x228(sp)
    lwz     r29, 0x224(sp)
    addi    sp, sp, 0x240
    mtlr    r0
    blr


.globl thinkHoldOut__6TYoshiFv
thinkHoldOut__6TYoshiFv: # 0x8026f4ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    lbz     r0, 0xb8(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8026f518
    bge-    branch_0x8026f4dc
    cmpwi   r0, 0x0
    bge-    branch_0x8026f4e8
    b       branch_0x8026f5f8

branch_0x8026f4dc:
    cmpwi   r0, 0x3
    bge-    branch_0x8026f5f8
    b       branch_0x8026f5f0

branch_0x8026f4e8:
    lwz     r4, 0x10(r31)
    lfs     f0, 0xc0(r31)
    lfs     f1, 0xa8(r4)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8026f5f8
    lwz     r3, 0x4fc(r4)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8026f5f8
    li      r0, 0x1
    stb     r0, 0xb8(r31)
    b       branch_0x8026f5f8

branch_0x8026f518:
    lwz     r3, 0x34(r31)
    mr      r7, r31
    lhz     r0, 0xf6(r31)
    li      r4, 0x119
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x10(r31)
    lfs     f1, -0xb60(r2)
    lfs     f2, 0xa8(r3)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8026f59c
    lfs     f0, 0xc4(r31)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8026f59c
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x7926
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8026f59c
    addi    r4, r31, 0x20
    li      r3, 0x7926
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8026f59c:
    lhz     r3, 0xba(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8026f5c8
    addi    r0, r3, -0x1
    sth     r0, 0xba(r31)
    lwz     r3, 0x10(r31)
    lfs     f0, 0xc4(r31)
    lfs     f1, 0xa8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r3)
    b       branch_0x8026f5d0

branch_0x8026f5c8:
    li      r0, 0x2
    stb     r0, 0xb8(r31)
branch_0x8026f5d0:
    lwz     r3, 0x10(r31)
    lwz     r3, 0x4fc(r3)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8026f5f8
    li      r0, 0x2
    stb     r0, 0xb8(r31)
    b       branch_0x8026f5f8

branch_0x8026f5f0:
    li      r0, 0x0
    sth     r0, 0xba(r31)
branch_0x8026f5f8:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl doEat__6TYoshiFUl
doEat__6TYoshiFUl: # 0x8026f60c
    mflr    r0
    lis     r5, unk_40000393@h
    stw     r0, 0x4(sp)
    addi    r0, r5, unk_40000393@l
    cmpw    r4, r0
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    li      r30, 0x1
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x8026f670
    bge-    branch_0x8026f654
    addi    r0, r5, 0x390
    cmpw    r4, r0
    beq-    branch_0x8026f678
    bge-    branch_0x8026f668
    b       branch_0x8026f680

branch_0x8026f654:
    addi    r0, r5, 0x395
    cmpw    r4, r0
    beq-    branch_0x8026f670
    bge-    branch_0x8026f680
    b       branch_0x8026f678

branch_0x8026f668:
    li      r31, 0x1
    b       branch_0x8026f684

branch_0x8026f670:
    li      r31, 0x2
    b       branch_0x8026f684

branch_0x8026f678:
    li      r31, 0x3
    b       branch_0x8026f684

branch_0x8026f680:
    li      r30, 0x0
branch_0x8026f684:
    lwz     r3, 0x34(r29)
    mr      r7, r29
    lhz     r0, 0xf6(r29)
    li      r4, 0x3d
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, R13Off_m0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmpwi   r30, 0x1
    bne-    branch_0x8026f714
    stb     r31, 0xd0(r29)
    addi    r7, r29, 0x0
    addi    r5, r29, 0x108
    lwz     r0, 0x8(r29)
    li      r4, 0x3e
    li      r6, 0x0
    stw     r0, 0xc(r29)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r5, 0x38(r29)
    li      r4, 0x1947
    lwz     r3, R13Off_m0x6044(r13)
    addi    r31, r5, 0xb8
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8026f714
    addi    r4, r31, 0x0
    li      r3, 0x1947
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8026f714:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl doSearch__6TYoshiFv
doSearch__6TYoshiFv: # 0x8026f730
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    mr      r31, r3
    stw     r30, 0x150(sp)
    lbz     r0, 0xdc(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8026f9d8
    bge-    branch_0x8026f768
    cmpwi   r0, 0x0
    beq-    branch_0x8026f774
    bge-    branch_0x8026f844
    b       branch_0x8026fc78

branch_0x8026f768:
    cmpwi   r0, 0x4
    bge-    branch_0x8026fc78
    b       branch_0x8026fb4c

branch_0x8026f774:
    lha     r3, 0xde(r31)
    addi    r0, r3, -0x1
    sth     r0, 0xde(r31)
    lha     r0, 0xde(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x8026fc78
    lwz     r3, 0x38(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      findTarget__12TYoshiTongueFbb
    cmplwi  r3, 0x0
    beq-    branch_0x8026f7d0
    lfs     f3, 0x10(r3)
    lfs     f2, 0x20(r31)
    lfs     f1, 0x18(r3)
    lfs     f0, 0x28(r31)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      matan__Fff
    sth     r3, 0xe0(r31)
    li      r0, 0x1
    stb     r0, 0xdc(r31)
    b       branch_0x8026fc78

branch_0x8026f7d0:
    bl      rand
    xoris   r0, r3, 0x8000
    lha     r5, 0xe8(r31)
    lha     r3, 0xea(r31)
    lis     r4, 0x4330
    stw     r0, 0x14c(sp)
    xoris   r0, r5, 0x8000
    subf    r3, r5, r3
    stw     r4, 0x148(sp)
    xoris   r3, r3, 0x8000
    lfd     f2, -0xb58(r2)
    stw     r3, 0x144(sp)
    lfd     f0, 0x148(sp)
    stw     r0, 0x13c(sp)
    fsubs   f1, f0, f2
    lfs     f0, -0xb2c(r2)
    stw     r4, 0x140(sp)
    stw     r4, 0x138(sp)
    fmuls   f3, f0, f1
    lfd     f1, 0x140(sp)
    lfd     f0, 0x138(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x130(sp)
    lwz     r0, 0x134(sp)
    sth     r0, 0xde(r31)
    b       branch_0x8026fc78

branch_0x8026f844:
    lha     r4, 0x70(r31)
    lis     r0, 0x4330
    lha     r3, 0xe0(r31)
    lfd     f1, -0xb58(r2)
    subf    r3, r4, r3
    lfs     f2, 0xe4(r31)
    xoris   r3, r3, 0x8000
    stw     r3, 0x134(sp)
    stw     r0, 0x130(sp)
    lfd     f0, 0x130(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x138(sp)
    lwz     r3, 0x13c(sp)
    extsh   r0, r3
    add     r3, r4, r3
    cmpwi   r0, -0x100
    sth     r3, 0x70(r31)
    ble-    branch_0x8026fc78
    cmpwi   r0, 0x100
    bge-    branch_0x8026fc78
    addi    r3, r31, 0x0
    addi    r4, sp, 0xf8
    addi    r5, sp, 0x104
    bl      getEmitPosDir__6TYoshiCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(r31)
    addi    r6, sp, 0x114
    lfsu    f0, 0xa4(r3)
    addi    r4, sp, 0xf8
    addi    r5, sp, 0x104
    stfs    f0, 0x114(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x118(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x11c(sp)
    lwz     r3, 0x38(r31)
    bl      emit__12TYoshiTongueFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r30, 0x0
branch_0x8026f8e0:
    lwz     r3, 0x38(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x38(r31)
    addi    r3, sp, 0xa8
    addi    r4, sp, 0xf8
    lwz     r5, 0xb8(r6)
    lwz     r0, 0xbc(r6)
    stw     r5, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0xc0(r6)
    stw     r0, 0xb0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xa8(sp)
    lwz     r3, 0xac(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0x124(sp)
    stw     r0, 0x128(sp)
    lfs     f1, 0x120(sp)
    lfs     f0, 0x124(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x128(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x90(r31)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x8026f970
    addi    r30, r30, 0x1
    cmpwi   r30, 0xa
    blt+    branch_0x8026f8e0
branch_0x8026f970:
    li      r0, 0x3
    stb     r0, 0xdc(r31)
    li      r4, 0x0
    lwz     r3, 0x34(r31)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x3
    beq-    branch_0x8026fc78
    lwz     r30, 0x34(r31)
    li      r4, 0x3
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026f9b0
    addi    r3, r30, 0x0
    li      r4, 0x3
    bl      setBckFromIndex__6MActorFi
branch_0x8026f9b0:
    addi    r3, r31, 0x0
    li      r4, 0x3
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r31)
    li      r5, 0x1
    lwz     r3, 0x118(r31)
    lwz     r4, 0xc(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x8026fc78

branch_0x8026f9d8:
    lwz     r3, 0x38(r31)
    li      r4, 0x0
    li      r5, 0x1
    bl      findTarget__12TYoshiTongueFbb
    cmplwi  r3, 0x0
    beq-    branch_0x8026fad0
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc4
    addi    r5, sp, 0xd0
    bl      getEmitPosDir__6TYoshiCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lwz     r3, 0x10(r31)
    addi    r6, sp, 0xe0
    lfsu    f0, 0xa4(r3)
    addi    r4, sp, 0xc4
    addi    r5, sp, 0xd0
    stfs    f0, 0xe0(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0xe4(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0xe8(sp)
    lwz     r3, 0x38(r31)
    bl      emit__12TYoshiTongueFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r30, 0x0
branch_0x8026fa34:
    lwz     r3, 0x38(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb8(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x38(r31)
    addi    r3, sp, 0x88
    addi    r4, sp, 0xc4
    lwz     r5, 0xb8(r6)
    lwz     r0, 0xbc(r6)
    stw     r5, 0x88(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0xc0(r6)
    stw     r0, 0x90(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    stw     r0, 0xec(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xf4(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, 0x90(r31)
    fcmpo   cr0, f1, f0
    bgt-    branch_0x8026fac4
    addi    r30, r30, 0x1
    cmpwi   r30, 0xa
    blt+    branch_0x8026fa34
branch_0x8026fac4:
    li      r0, 0x3
    stb     r0, 0xdc(r31)
    b       branch_0x8026fc78

branch_0x8026fad0:
    bl      rand
    xoris   r3, r3, 0x8000
    lha     r4, 0xe8(r31)
    lha     r0, 0xea(r31)
    lis     r5, 0x4330
    stw     r3, 0x134(sp)
    xoris   r3, r4, 0x8000
    subf    r0, r4, r0
    stw     r5, 0x130(sp)
    xoris   r4, r0, 0x8000
    lfd     f2, -0xb58(r2)
    li      r0, 0x0
    stw     r4, 0x13c(sp)
    lfd     f0, 0x130(sp)
    stw     r3, 0x144(sp)
    fsubs   f1, f0, f2
    lfs     f0, -0xb2c(r2)
    stw     r5, 0x138(sp)
    stw     r5, 0x140(sp)
    fmuls   f3, f0, f1
    lfd     f1, 0x138(sp)
    lfd     f0, 0x140(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x148(sp)
    lwz     r3, 0x14c(sp)
    sth     r3, 0xde(r31)
    stb     r0, 0xdc(r31)
    b       branch_0x8026fc78

branch_0x8026fb4c:
    lwz     r3, 0x38(r31)
    lwz     r4, 0xd0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8026fb94
    mr      r3, r31
    bl      doEat__6TYoshiFUl
    lwz     r3, 0x10(r31)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8026fb88
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x14
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
branch_0x8026fb88:
    lwz     r3, 0x38(r31)
    li      r0, 0x0
    stw     r0, 0xd0(r3)
branch_0x8026fb94:
    lwz     r3, 0x38(r31)
    lhz     r0, 0x7c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8026fc78
    bl      rand
    xoris   r3, r3, 0x8000
    lha     r4, 0xe8(r31)
    lha     r0, 0xea(r31)
    lis     r5, 0x4330
    stw     r3, 0x134(sp)
    xoris   r3, r4, 0x8000
    subf    r0, r4, r0
    stw     r5, 0x130(sp)
    xoris   r4, r0, 0x8000
    lfd     f2, -0xb58(r2)
    li      r0, 0x0
    stw     r4, 0x13c(sp)
    lfd     f0, 0x130(sp)
    li      r4, 0x0
    stw     r3, 0x144(sp)
    fsubs   f1, f0, f2
    lfs     f0, -0xb2c(r2)
    stw     r5, 0x138(sp)
    stw     r5, 0x140(sp)
    fmuls   f3, f0, f1
    lfd     f1, 0x138(sp)
    lfd     f0, 0x140(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fmadds  f0, f1, f3, f0
    fctiwz  f0, f0
    stfd    f0, 0x148(sp)
    lwz     r3, 0x14c(sp)
    sth     r3, 0xde(r31)
    stb     r0, 0xdc(r31)
    lwz     r3, 0x34(r31)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x17
    beq-    branch_0x8026fc78
    lwz     r30, 0x34(r31)
    li      r4, 0x17
    addi    r3, r30, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8026fc54
    addi    r3, r30, 0x0
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
branch_0x8026fc54:
    addi    r3, r31, 0x0
    li      r4, 0x17
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r31)
    li      r5, 0x1
    lwz     r3, 0x118(r31)
    lwz     r4, 0x5c(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x8026fc78:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    addi    sp, sp, 0x158
    blr


.globl thinkUpper__6TYoshiFv
thinkUpper__6TYoshiFv: # 0x8026fc90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    stw     r30, 0x90(sp)
    mr      r30, r3
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x8026fe20
    addi    r3, r30, 0x5c
    bl      update__12J3DFrameCtrlFv
    lwz     r4, 0x34(r30)
    lwz     r3, 0x38(r30)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x7c(r3)
    lwz     r3, 0x4(r4)
    cmplwi  r0, 0x0
    lwz     r3, 0x20(r3)
    lwz     r31, 0x48(r3)
    bne-    branch_0x8026fcf4
    lwz     r3, 0x10(r30)
    lwz     r3, 0x3e4(r3)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8026fd70
branch_0x8026fcf4:
    lwz     r3, 0x58(r31)
    lwz     r0, 0x54(r30)
    cmplw   r3, r0
    beq-    branch_0x8026fd60
    lha     r3, 0x62(r30)
    lis     r0, unk_43300001@h
    lfd     f1, -0xb58(r2)
    addi    r5, r0, unk_43300001@l
    xoris   r3, r3, 0x8000
    stw     r3, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x6c(r30)
    lfs     f0, -0xb44(r2)
    stfs    f0, 0x68(r30)
    lwz     r3, 0x4c(r30)
    lha     r0, 0x2(r3)
    sth     r0, 0x64(r30)
    lfs     f1, -0xb60(r2)
    stfs    f1, 0x6c(r30)
    lwz     r0, 0x54(r30)
    stw     r0, 0x58(r31)
    lwz     r4, 0x11c(r30)
    lwz     r3, 0x120(r30)
    lwz     r4, 0xc(r4)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x8026fd60:
    lfs     f0, 0x6c(r30)
    lwz     r3, 0x4c(r30)
    stfs    f0, 0x4(r3)
    b       branch_0x8026fe20

branch_0x8026fd70:
    lwz     r3, 0x58(r31)
    lwz     r0, 0x54(r30)
    cmplw   r3, r0
    bne-    branch_0x8026fde0
    lha     r3, 0x62(r30)
    lis     r0, unk_43300001@h
    lfd     f1, -0xb58(r2)
    addi    r5, r0, unk_43300001@l
    xoris   r3, r3, 0x8000
    stw     r3, 0x8c(sp)
    stw     r0, 0x88(sp)
    lfd     f0, 0x88(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x6c(r30)
    lfs     f0, -0xb44(r2)
    stfs    f0, 0x68(r30)
    lwz     r3, 0x50(r30)
    lha     r0, 0x2(r3)
    sth     r0, 0x64(r30)
    lfs     f1, -0xb60(r2)
    stfs    f1, 0x6c(r30)
    lwz     r0, 0x58(r30)
    stw     r0, 0x58(r31)
    lwz     r4, 0x11c(r30)
    lwz     r3, 0x120(r30)
    lwz     r4, 0x10(r4)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x8026fe14

branch_0x8026fde0:
    lwz     r0, 0x58(r30)
    cmplw   r3, r0
    bne-    branch_0x8026fe14
    lbz     r0, 0x61(r30)
    clrlwi. r0, r0, 30
    beq-    branch_0x8026fe00
    li      r0, 0x1
    b       branch_0x8026fe04

branch_0x8026fe00:
    li      r0, 0x0
branch_0x8026fe04:
    cmpwi   r0, 0x0
    beq-    branch_0x8026fe14
    li      r0, 0x0
    stw     r0, 0x58(r31)
branch_0x8026fe14:
    lfs     f0, 0x6c(r30)
    lwz     r3, 0x50(r30)
    stfs    f0, 0x4(r3)
branch_0x8026fe20:
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    addi    sp, sp, 0x98
    blr


.globl thinkAnimation__6TYoshiFv
thinkAnimation__6TYoshiFv: # 0x8026fe38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stw     r31, 0x134(sp)
    stw     r30, 0x130(sp)
    stw     r29, 0x12c(sp)
    mr      r29, r3
    stw     r28, 0x128(sp)
    lwz     r3, 0x10(r3)
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0xc(r3)
    li      r4, 0x0
    stfs    f0, 0x120(sp)
    lwz     r3, 0x34(r29)
    bl      getCurAnmIdx__6MActorCFi
    lwz     r5, 0x10(r29)
    clrlwi  r31, r3, 16
    addi    r30, r31, 0x0
    lwz     r4, 0x7c(r5)
    rlwinm. r0, r4, 0, 21, 21
    beq-    branch_0x8026fefc
    cmplwi  r31, 0xc
    bne-    branch_0x8026fea4
    li      r30, 0xb
    li      r0, 0x1
    b       branch_0x8026fea8

branch_0x8026fea4:
    li      r0, 0x0
branch_0x8026fea8:
    cmpwi   r0, 0x0
    bne-    branch_0x8027006c
    addis   r0, r4, 0xff80
    cmplwi  r0, 0x456
    li      r30, 0xf
    beq-    branch_0x8026fef4
    addis   r0, r4, 0xff7c
    cmplwi  r0, 0x45d
    beq-    branch_0x8026fef4
    addis   r0, r4, 0xfffc
    cmplwi  r0, 0x45e
    beq-    branch_0x8026fef4
    rlwinm. r0, r4, 0, 13, 13
    beq-    branch_0x8026fee8
    li      r0, 0x1
    b       branch_0x8026feec

branch_0x8026fee8:
    li      r0, 0x0
branch_0x8026feec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027006c
branch_0x8026fef4:
    li      r30, 0x13
    b       branch_0x8027006c

branch_0x8026fefc:
    rlwinm. r0, r4, 0, 20, 20
    beq-    branch_0x8026ff78
    lbz     r0, 0xb8(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x8026ff18
    li      r30, 0x9
    b       branch_0x8027006c

branch_0x8026ff18:
    addis   r0, r4, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8026ff58
    lhz     r0, 0x84(r5)
    cmpwi   r0, 0x2
    bge-    branch_0x8026ff3c
    cmpwi   r0, 0x0
    bge-    branch_0x8026ff48
    b       branch_0x8026ff58

branch_0x8026ff3c:
    cmpwi   r0, 0x4
    bge-    branch_0x8026ff58
    b       branch_0x8026ff50

branch_0x8026ff48:
    li      r30, 0x8
    b       branch_0x8027006c

branch_0x8026ff50:
    li      r30, 0x7
    b       branch_0x8027006c

branch_0x8026ff58:
    lfs     f1, 0xa8(r5)
    lfs     f0, -0xb60(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8026ff70
    li      r30, 0xa
    b       branch_0x8027006c

branch_0x8026ff70:
    li      r30, 0xc
    b       branch_0x8027006c

branch_0x8026ff78:
    rlwinm. r0, r4, 0, 22, 22
    beq-    branch_0x8026ffa0
    cmplwi  r4, 0x386
    beq-    branch_0x8026ff98
    addis   r3, r4, 0xf400
    addi    r0, r3, -0x23d
    cmplwi  r0, 0x1
    bgt-    branch_0x8026ffa0
branch_0x8026ff98:
    li      r30, 0x12
    b       branch_0x8027006c

branch_0x8026ffa0:
    rlwinm. r0, r4, 0, 16, 16
    beq-    branch_0x8026ffb0
    li      r0, 0x1
    b       branch_0x8026ffb4

branch_0x8026ffb0:
    li      r0, 0x0
branch_0x8026ffb4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8027003c
    lwz     r3, 0x4fc(r5)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x80270020
    addi    r3, r5, 0x0
    addi    r4, sp, 0x11c
    addi    r5, sp, 0x120
    addi    r6, sp, 0x118
    bl      getSideWalkValues__6TMarioFP15E_SIDEWALK_TYPEPfPf
    lwz     r0, 0x11c(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x80270010
    bge-    branch_0x8026fffc
    cmpwi   r0, 0x0
    bge-    branch_0x80270008
    b       branch_0x80270020

branch_0x8026fffc:
    cmpwi   r0, 0x3
    bge-    branch_0x80270020
    b       branch_0x80270018

branch_0x80270008:
    li      r30, 0x16
    b       branch_0x8027006c

branch_0x80270010:
    li      r30, 0x10
    b       branch_0x8027006c

branch_0x80270018:
    li      r30, 0x11
    b       branch_0x8027006c

branch_0x80270020:
    lwz     r3, 0x10(r29)
    lwz     r3, 0x4fc(r3)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x8027003c
    li      r30, 0xd
    b       branch_0x8027006c

branch_0x8027003c:
    lwz     r3, 0x10(r29)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x23c
    bne-    branch_0x80270058
    li      r30, 0x6
    b       branch_0x8027006c

branch_0x80270058:
    cmplwi  r3, 0x1302
    bne-    branch_0x80270068
    li      r30, 0x2
    b       branch_0x8027006c

branch_0x80270068:
    li      r30, 0x16
branch_0x8027006c:
    cmplwi  r31, 0x18
    bne-    branch_0x80270078
    li      r31, 0xf
branch_0x80270078:
    clrlwi  r0, r30, 16
    cmplwi  r0, 0x18
    bne-    branch_0x80270088
    li      r30, 0xf
branch_0x80270088:
    clrlwi  r28, r30, 16
    clrlwi  r0, r31, 16
    cmplw   r28, r0
    beq-    branch_0x80270108
    cmplwi  r28, 0xf
    bne-    branch_0x802700bc
    lwz     r3, 0x34(r29)
    li      r4, 0x18
    bl      setBckFromIndex__6MActorFi
    lwz     r3, 0x34(r29)
    li      r4, 0xf
    bl      setBckFromIndex__6MActorFi
    b       branch_0x802700e0

branch_0x802700bc:
    lwz     r31, 0x34(r29)
    addi    r4, r28, 0x0
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x802700e0
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x802700e0:
    addi    r3, r29, 0x0
    clrlwi  r4, r30, 16
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r29)
    clrlslwi  r0, r30, 16, 2
    lwz     r3, 0x118(r29)
    li      r5, 0x1
    lwzx    r4, r4, r0
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80270108:
    clrlwi  r0, r30, 16
    cmplwi  r0, 0xf
    bne-    branch_0x802701dc
    lwz     r3, 0x10(r29)
    lfs     f3, 0x98(r29)
    lfs     f0, 0xb0(r3)
    lfs     f1, 0x9c(r29)
    fsubs   f2, f0, f3
    lfs     f0, -0xb60(r2)
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80270140
    fmr     f1, f0
branch_0x80270140:
    lfs     f0, -0xb44(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80270150
    fmr     f1, f0
branch_0x80270150:
    lwz     r3, 0x34(r29)
    lfs     f0, -0xb44(r2)
    lwz     r3, 0xc(r3)
    fsubs   f1, f0, f1
    cmplwi  r3, 0x0
    beq-    branch_0x8027016c
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x8027016c:
    lwz     r3, 0x34(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80270184
    li      r28, 0x0
    b       branch_0x8027018c

branch_0x80270184:
    bl      getOldMotionBlendAnmPtr__12MActorAnmBckCFv
    mr      r28, r3
branch_0x8027018c:
    lwz     r3, 0x34(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    stfs    f0, 0x4(r28)
    lwz     r3, 0x10(r29)
    lwz     r4, 0x7c(r3)
    addis   r0, r4, 0xfffc
    cmplwi  r0, 0x45c
    bne-    branch_0x802701c4
    bl      getMotionFrameCtrl__6TMarioFv
    lfs     f0, 0xc(r3)
    stfs    f0, 0x120(sp)
    b       branch_0x802701f4

branch_0x802701c4:
    lfs     f2, 0xa4(r29)
    lfs     f1, 0xb0(r3)
    lfs     f0, 0xa0(r29)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x120(sp)
    b       branch_0x802701f4

branch_0x802701dc:
    lwz     r3, 0x34(r29)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802701f4
    lfs     f1, -0xb60(r2)
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x802701f4:
    lwz     r3, 0x34(r29)
    li      r4, 0x0
    lfs     f31, 0x120(sp)
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lwz     r31, 0x134(sp)
    mtlr    r0
    lwz     r30, 0x130(sp)
    lwz     r29, 0x12c(sp)
    lwz     r28, 0x128(sp)
    addi    sp, sp, 0x140
    blr


.globl getOff__6TYoshiFb
getOff__6TYoshiFb: # 0x8027022c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x802703c4
    lfs     f0, -0xb60(r2)
    clrlwi  r0, r4, 24
    li      r3, 0x6
    stfs    f0, 0x2c(r30)
    cmplwi  r0, 0x1
    stb     r3, 0x0(r30)
    lha     r0, 0x4(r30)
    sth     r0, 0x2(r30)
    bne-    branch_0x80270318
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x802702d0
    lwz     r31, 0x34(r30)
    li      r4, 0x1
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x802702ac
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x802702ac:
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x4(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x802702d0:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x7918
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80270300
    addi    r4, r30, 0x20
    li      r3, 0x7918
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80270300:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    li      r5, 0x14
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    b       branch_0x802703a4

branch_0x80270318:
    lwz     r3, 0x34(r30)
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x17
    beq-    branch_0x80270374
    lwz     r31, 0x34(r30)
    li      r4, 0x17
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80270350
    addi    r3, r31, 0x0
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
branch_0x80270350:
    addi    r3, r30, 0x0
    li      r4, 0x17
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x5c(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80270374:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x7924
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802703a4
    addi    r4, r30, 0x20
    li      r3, 0x7924
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802703a4:
    lwz     r3, 0x94(r30)
    addi    r4, r30, 0x20
    bl      SMS_RideMoveCalcLocalPos__FP11TRidingInfoRCQ29JGeometry8TVec3_f_
    lwz     r4, R13Off_m0x6044(r13)
    li      r0, 0x1
    li      r3, 0x0
    stb     r0, 0x88(r4)
    bl      setStageBgmYoshiPercussion__5MSBgmFb
branch_0x802703c4:
    lwz     r3, 0x38(r30)
    li      r0, 0x0
    sth     r0, 0x7c(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl ride__6TYoshiFv
ride__6TYoshiFv: # 0x802703e8
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x8
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stb     r0, 0x0(r3)
    lwz     r3, 0x34(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x16
    beq-    branch_0x80270464
    lwz     r31, 0x34(r30)
    li      r4, 0x16
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80270440
    addi    r3, r31, 0x0
    li      r4, 0x16
    bl      setBckFromIndex__6MActorFi
branch_0x80270440:
    addi    r3, r30, 0x0
    li      r4, 0x16
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x58(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80270464:
    lbz     r0, 0xd0(r30)
    li      r4, 0x7921
    lwz     r3, R13Off_m0x6088(r13)
    stb     r0, 0x5d5f(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802704a0
    addi    r4, r30, 0x20
    li      r3, 0x7921
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802704a0:
    lwz     r4, R13Off_m0x6044(r13)
    li      r0, 0x1
    li      r3, 0x1
    stb     r0, 0x88(r4)
    bl      setStageBgmYoshiPercussion__5MSBgmFb
    lwz     r3, R13Off_m0x6048(r13)
    mr      r4, r30
    bl      fireRideYoshi__12TMarDirectorFP6TYoshi
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl kill__6TYoshiFv
kill__6TYoshiFv: # 0x802704d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lbz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80270504
    li      r0, 0x0
    b       branch_0x80270508

branch_0x80270504:
    li      r0, 0x1
branch_0x80270508:
    cmpwi   r0, 0x0
    beq-    branch_0x802705c8
    cmplwi  r3, 0x8
    bne-    branch_0x80270524
    lwz     r3, 0x10(r30)
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x80270524:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x8027053c
    li      r0, 0x1
    b       branch_0x80270540

branch_0x8027053c:
    li      r0, 0x0
branch_0x80270540:
    clrlwi. r0, r0, 24
    beq-    branch_0x802705b0
    li      r0, 0x3
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x19
    beq-    branch_0x802705b8
    lwz     r31, 0x34(r30)
    li      r4, 0x19
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80270588
    addi    r3, r31, 0x0
    li      r4, 0x19
    bl      setBckFromIndex__6MActorFi
branch_0x80270588:
    addi    r3, r30, 0x0
    li      r4, 0x19
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x64(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x802705b8

branch_0x802705b0:
    li      r0, 0x4
    stb     r0, 0x0(r30)
branch_0x802705b8:
    li      r0, 0x0
    stb     r0, 0xd0(r30)
    li      r0, 0x1e
    sth     r0, 0x2(r30)
branch_0x802705c8:
    lwz     r3, 0x118(r30)
    bl      stop__13JAIAnimeSoundFv
    lwz     r3, 0x120(r30)
    bl      stop__13JAIAnimeSoundFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl disappear__6TYoshiFv
disappear__6TYoshiFv: # 0x802705f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lbz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8027061c
    li      r0, 0x0
    b       branch_0x80270620

branch_0x8027061c:
    li      r0, 0x1
branch_0x80270620:
    cmpwi   r0, 0x0
    beq-    branch_0x802706e8
    cmplwi  r3, 0x8
    bne-    branch_0x8027063c
    lwz     r3, 0x10(r30)
    li      r4, 0x1
    bl      getOffYoshi__6TMarioFb
branch_0x8027063c:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80270654
    li      r0, 0x1
    b       branch_0x80270658

branch_0x80270654:
    li      r0, 0x0
branch_0x80270658:
    clrlwi. r0, r0, 24
    beq-    branch_0x802706c8
    li      r0, 0x3
    stb     r0, 0x0(r30)
    li      r4, 0x0
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x19
    beq-    branch_0x802706d0
    lwz     r31, 0x34(r30)
    li      r4, 0x19
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x802706a0
    addi    r3, r31, 0x0
    li      r4, 0x19
    bl      setBckFromIndex__6MActorFi
branch_0x802706a0:
    addi    r3, r30, 0x0
    li      r4, 0x19
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x64(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    b       branch_0x802706d0

branch_0x802706c8:
    li      r0, 0x4
    stb     r0, 0x0(r30)
branch_0x802706d0:
    li      r0, 0x0
    stb     r0, 0xd0(r30)
    li      r0, 0x1e
    li      r3, 0x1
    sth     r0, 0x2(r30)
    b       branch_0x802706ec

branch_0x802706e8:
    li      r3, 0x0
branch_0x802706ec:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl appearFromEgg__6TYoshiFRCQ29JGeometry8TVec3_f_fP9TEggYoshi
appearFromEgg__6TYoshiFRCQ29JGeometry8TVec3_f_fP9TEggYoshi: # 0x80270704
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x2
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x48(sp)
    mr      r30, r3
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    lwz     r6, 0x0(r4)
    lwz     r3, 0x4(r4)
    stw     r6, 0x14(r30)
    stw     r3, 0x18(r30)
    lwz     r3, 0x8(r4)
    stw     r3, 0x1c(r30)
    lwz     r5, 0x0(r4)
    lwz     r3, 0x4(r4)
    stw     r5, 0x20(r30)
    stw     r3, 0x24(r30)
    lwz     r3, 0x8(r4)
    li      r4, 0x0
    stw     r3, 0x28(r30)
    lfs     f2, 0x24(r30)
    lfs     f0, -0xb44(r2)
    fadds   f0, f2, f0
    stfs    f0, 0x24(r30)
    lfs     f0, -0xb4c(r2)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    sth     r3, 0x70(r30)
    stb     r0, 0x0(r30)
    lwz     r3, 0x34(r30)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x0
    beq-    branch_0x802707e4
    lwz     r29, 0x34(r30)
    li      r4, 0x0
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x802707c0
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x802707c0:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r30)
    li      r5, 0x1
    lwz     r3, 0x118(r30)
    lwz     r4, 0x0(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x802707e4:
    lwz     r4, 0x10(r30)
    lwz     r29, 0x150(r31)
    lwz     r0, 0x6c(r4)
    addi    r28, r29, 0x0
    cmplw   r0, r29
    bne-    branch_0x80270828
    lwz     r12, 0x0(r28)
    mr      r3, r28
    addi    r4, r4, 0x474
    lwz     r12, 0xa0(r12)
    li      r5, 0x8
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r28)
    lwz     r3, 0x10(r30)
    stw     r0, 0x6c(r3)
branch_0x80270828:
    lwz     r12, 0x0(r29)
    mr      r3, r29
    lwz     r4, 0x10(r30)
    li      r5, 0xb
    lwz     r12, 0xa0(r12)
    addi    r4, r4, 0x474
    mtlr    r12
    blrl
    lwz     r4, 0x4c(r29)
    mr      r3, r30
    bl      doEat__6TYoshiFUl
    lwz     r0, 0x8(r30)
    li      r3, 0x1
    stw     r0, 0xc(r30)
    stw     r31, 0xf0(r30)
    lha     r0, 0x4(r30)
    sth     r0, 0x2(r30)
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl setEggYoshiPtr__6TYoshiFP9TEggYoshi
setEggYoshiPtr__6TYoshiFP9TEggYoshi: # 0x8027088c
    stw     r4, 0xf0(r3)
    blr


.globl getEmitPosDir__6TYoshiCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
getEmitPosDir__6TYoshiCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80270894
    lwz     r6, 0x34(r3)
    lhz     r0, 0x3c(r3)
    lwz     r6, 0x4(r6)
    mulli   r0, r0, 0x30
    lwz     r6, 0x58(r6)
    add     r6, r6, r0
    lfs     f0, 0x0(r6)
    stfs    f0, 0x0(r5)
    lfs     f0, 0x10(r6)
    stfs    f0, 0x4(r5)
    lfs     f0, 0x20(r6)
    stfs    f0, 0x8(r5)
    lfs     f0, 0xc(r6)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x1c(r6)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x2c(r6)
    stfs    f0, 0x8(r4)
    blr


.globl changeAnimation__6TYoshiFi
changeAnimation__6TYoshiFi: # 0x802708e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x34(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpw    r30, r3
    beq-    branch_0x80270960
    lwz     r31, 0x34(r29)
    addi    r4, r30, 0x0
    addi    r3, r31, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80270938
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x80270938:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r29)
    slwi    r0, r30, 2
    lwz     r3, 0x118(r29)
    li      r5, 0x1
    lwzx    r4, r4, r0
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80270960:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl thinkBtp__6TYoshiFi
thinkBtp__6TYoshiFi: # 0x8027097c
    mflr    r0
    cmpwi   r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802709d8
    bge-    branch_0x802709bc
    cmpwi   r4, 0x1
    beq-    branch_0x802709d0
    bge-    branch_0x802709e4
    cmpwi   r4, 0x0
    bge-    branch_0x802709c8
    b       branch_0x802709e4

branch_0x802709bc:
    cmpwi   r4, 0x19
    beq-    branch_0x802709e0
    b       branch_0x802709e4

branch_0x802709c8:
    li      r31, 0x0
    b       branch_0x802709e4

branch_0x802709d0:
    li      r31, 0x1
    b       branch_0x802709e4

branch_0x802709d8:
    li      r31, 0x2
    b       branch_0x802709e4

branch_0x802709e0:
    li      r31, 0x3
branch_0x802709e4:
    lhz     r0, 0xf4(r30)
    clrlwi  r4, r31, 16
    cmplw   r0, r4
    beq-    branch_0x80270a14
    lwz     r3, 0x34(r30)
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x34(r30)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0xb30(r2)
    stfs    f0, 0xc(r3)
    sth     r31, 0xf4(r30)
branch_0x80270a14:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initInLoadAfter__6TYoshiFv
initInLoadAfter__6TYoshiFv: # 0x80270a2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r28, r3
    lwz     r3, 0x38(r3)
    bl      initInLoadAfter__12TYoshiTongueFv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80270a68
    lis     r3, unk_8039f944@ha
    addi    r4, r3, unk_8039f944@l
    addi    r3, r29, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x80270a68:
    lwz     r4, 0x34(r28)
    mr      r3, r29
    li      r5, 0x20
    lwz     r4, 0x4(r4)
    bl      init__12TMirrorActorFP8J3DModelUs
    lis     r3, unk_8039f954@ha
    addi    r30, r3, unk_8039f954@l
    li      r29, 0x0
    li      r31, 0x0
branch_0x80270a8c:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80270aa8
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      __ct__12TMirrorActorFPCc
branch_0x80270aa8:
    addi    r0, r31, 0x44
    lwzx    r4, r28, r0
    addi    r3, r27, 0x0
    li      r5, 0x20
    bl      init__12TMirrorActorFP8J3DModelUs
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x80270a8c
    lwz     r3, 0x34(r28)
    lis     r4, YoshiHeadCtrl__FP7J3DNodei@h
    addi    r0, r4, YoshiHeadCtrl__FP7J3DNodei@l
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x54(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0x5c(sp)
    lmw     r27, 0x44(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl init__6TYoshiFP6TMario
init__6TYoshiFP6TMario: # 0x80270b00
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x1c20
    li      r0, 0x180
    stwu    sp, -0x290(sp)
    stw     r31, 0x28c(sp)
    mr      r31, r3
    stw     r30, 0x288(sp)
    stw     r29, 0x284(sp)
    stw     r28, 0x280(sp)
    stw     r4, 0x10(r3)
    lis     r3, unk_8039f820@ha
    addi    r30, r3, unk_8039f820@l
    stb     r7, 0x0(r31)
    li      r4, 0x5334
    li      r3, 0x4c
    stb     r7, 0x1(r31)
    lha     r6, 0x6(r31)
    sth     r6, 0x2(r31)
    sth     r5, 0x4(r31)
    sth     r5, 0x6(r31)
    stw     r4, 0x8(r31)
    lwz     r4, 0x8(r31)
    stw     r4, 0xc(r31)
    lfs     f2, -0xb60(r2)
    stfs    f2, 0x20(r31)
    fmr     f1, f2
    fmr     f0, f2
    stfs    f2, 0x24(r31)
    stfs    f1, 0x28(r31)
    stfs    f0, 0x2c(r31)
    sth     r7, 0x70(r31)
    sth     r0, 0x72(r31)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80270b9c
    mr      r3, r29
    bl      __ct__13MActorAnmDataFv
branch_0x80270b9c:
    stw     r29, 0x30(r31)
    addi    r4, r2, R2Off_m0xb28
    li      r5, 0x0
    lwz     r3, 0x30(r31)
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80270bcc
    mr      r3, r29
    lwz     r4, 0x30(r31)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80270bcc:
    stw     r29, 0x34(r31)
    addi    r3, r30, 0x144
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    li      r3, 0xa0
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80270c0c
    addi    r3, r29, 0x0
    lis     r4, 0x1004
    bl      load__22J3DModelLoaderDataBaseFPCvUl
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x80270c0c:
    lwz     r3, 0x34(r31)
    addi    r4, r28, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x34(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80270c30
    bl      initNormalMotionBlend__12MActorAnmBckFv
branch_0x80270c30:
    lwz     r3, 0x34(r31)
    bl      offMakeDL__6MActorFv
    lwz     r3, 0x34(r31)
    addi    r4, r30, 0x15c
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 24
    sth     r0, 0x3c(r31)
    addi    r4, r30, 0x168
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 24
    sth     r0, 0x3e(r31)
    addi    r4, r30, 0x174
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 24
    sth     r0, 0x40(r31)
    addi    r4, r2, R2Off_m0xb20
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 24
    sth     r0, 0x42(r31)
    addi    r3, r30, 0x180
    lis     r4, 0x1004
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x44(r31)
    addi    r3, r30, 0x19c
    lis     r4, 0x1004
    bl      SMS_CreatePartsModel__FPcUl
    stw     r3, 0x48(r31)
    li      r4, 0x20
    lwz     r5, 0x34(r31)
    lwz     r3, 0x44(r31)
    lwz     r5, 0x4(r5)
    lwz     r7, 0x4(r3)
    lwz     r3, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0xac(r3)
    lwz     r5, 0x4(r8)
    lwz     r6, 0x4(r3)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    lwz     r5, 0x34(r31)
    li      r4, 0x20
    lwz     r3, 0x48(r31)
    lwz     r5, 0x4(r5)
    lwz     r7, 0x4(r3)
    lwz     r3, 0x4(r5)
    lwz     r8, 0xac(r7)
    lwz     r3, 0xac(r3)
    lwz     r5, 0x4(r8)
    lwz     r6, 0x4(r3)
    lwz     r3, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0x8(r5)
    stw     r0, 0xc(r5)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0x10(r5)
    stw     r0, 0x14(r5)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0x18(r5)
    stw     r0, 0x1c(r5)
    lwz     r3, 0x4(r8)
    lwz     r0, 0x1c(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r8)
    lwz     r0, 0xc(r3)
    add     r0, r6, r0
    subf    r0, r3, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0xac(r7)
    lwz     r3, 0x4(r3)
    bl      DCFlushRange
    addi    r3, r30, 0x1b8
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x4c(r31)
    lwz     r3, 0x34(r31)
    lwz     r4, 0x4c(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r0, 0xc(r3)
    clrlwi  r3, r0, 28
    bl      J3DNewMtxCalcAnm__FUlP15J3DAnmTransform
    stw     r3, 0x54(r31)
    addi    r3, r30, 0x1d0
    bl      getGlbResource__13JKRFileLoaderFPCc
    bl      load__20J3DAnmLoaderDataBaseFPCv
    stw     r3, 0x50(r31)
    lwz     r3, 0x34(r31)
    lwz     r4, 0x50(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r0, 0xc(r3)
    clrlwi  r3, r0, 28
    bl      J3DNewMtxCalcAnm__FUlP15J3DAnmTransform
    stw     r3, 0x58(r31)
    lis     r0, unk_43300000@h
    addi    r29, r0, unk_43300000@l
    lha     r4, 0x62(r31)
    li      r3, 0xd8
    lfd     f1, -0xb58(r2)
    xoris   r4, r4, 0x8000
    stw     r4, 0x27c(sp)
    stw     r0, 0x278(sp)
    lfd     f0, 0x278(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x6c(r31)
    lfs     f0, -0xb44(r2)
    stfs    f0, 0x68(r31)
    stb     r29, 0x60(r31)
    lfs     f0, -0xb30(r2)
    stfs    f0, 0x68(r31)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80270ef8
    addi    r3, r28, 0x0
    addi    r4, r30, 0x1ec
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__10TTakeActor@ha
    addi    r3, r3, __vvt__10TTakeActor@l
    stw     r3, 0x0(r28)
    addi    r0, r3, 0x24
    lis     r3, __vvt__12TYoshiTongue@ha
    stw     r0, 0x20(r28)
    addi    r3, r3, __vvt__12TYoshiTongue@l
    addi    r0, r3, 0x24
    stw     r29, 0x68(r28)
    stw     r29, 0x6c(r28)
    stw     r3, 0x0(r28)
    stw     r0, 0x20(r28)
branch_0x80270ef8:
    stw     r28, 0x38(r31)
    mr      r4, r31
    lwz     r3, 0x38(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xb4(r12)
    mtlr    r12
    blrl
    lfs     f0, -0xb18(r2)
    lis     r4, 0x4330
    li      r3, 0x14
    stfs    f0, 0x80(r31)
    lbz     r0, 0x114(r30)
    lfd     f1, -0xb38(r2)
    stw     r0, 0x27c(sp)
    stw     r4, 0x278(sp)
    lfd     f0, 0x278(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x84(r31)
    lbz     r0, 0x115(r30)
    stw     r0, 0x274(sp)
    stw     r4, 0x270(sp)
    lfd     f0, 0x270(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x88(r31)
    lbz     r0, 0x116(r30)
    stw     r0, 0x26c(sp)
    stw     r4, 0x268(sp)
    lfd     f0, 0x268(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x8c(r31)
    lfs     f0, -0xb14(r2)
    stfs    f0, 0x90(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x80270fa0
    li      r0, 0x0
    stw     r0, 0x0(r3)
    lfs     f0, -0xb60(r2)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
branch_0x80270fa0:
    stw     r3, 0x94(r31)
    li      r3, 0x24
    lfs     f0, -0xb10(r2)
    stfs    f0, 0x98(r31)
    lfs     f0, -0xb0c(r2)
    stfs    f0, 0x9c(r31)
    lfs     f0, -0xb08(r2)
    stfs    f0, 0xa0(r31)
    lfs     f0, -0xb04(r2)
    stfs    f0, 0xa4(r31)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80270fe0
    addi    r3, r28, 0x0
    li      r4, 0x20
    bl      __ct__13J3DDrawBufferFUl
branch_0x80270fe0:
    stw     r28, 0xa8(r31)
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80271000
    addi    r3, r28, 0x0
    li      r4, 0x20
    bl      __ct__13J3DDrawBufferFUl
branch_0x80271000:
    stw     r28, 0xac(r31)
    li      r29, 0x0
    stw     r29, 0xb0(r31)
    stw     r29, 0xb4(r31)
    lwz     r3, 0xa8(r31)
    bl      frameInit__13J3DDrawBufferFv
    lwz     r3, 0xac(r31)
    bl      frameInit__13J3DDrawBufferFv
    li      r0, 0x2
    stb     r0, 0xb8(r31)
    li      r6, 0x78
    li      r5, 0x7d0
    sth     r29, 0xba(r31)
    li      r3, 0xf0
    li      r0, 0x4
    sth     r6, 0xbc(r31)
    addi    r4, r30, 0x1f8
    lfs     f0, -0xb00(r2)
    stfs    f0, 0xc0(r31)
    lfs     f0, -0xafc(r2)
    stfs    f0, 0xc4(r31)
    stb     r29, 0xd0(r31)
    stw     r5, 0xd8(r31)
    lwz     r5, 0xd8(r31)
    stw     r5, 0xd4(r31)
    stb     r29, 0xdc(r31)
    sth     r29, 0xde(r31)
    sth     r29, 0xe0(r31)
    lfs     f0, -0xb08(r2)
    stfs    f0, 0xe4(r31)
    sth     r6, 0xe8(r31)
    sth     r3, 0xea(r31)
    lfs     f0, -0xaf8(r2)
    stfs    f0, 0xec(r31)
    sth     r0, 0xf4(r31)
    stw     r29, 0xf0(r31)
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    sth     r3, 0xf6(r31)
    addi    r4, r30, 0x204
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    sth     r3, 0xf8(r31)
    li      r4, 0x0
    lfs     f0, -0xb60(r2)
    stfs    f0, 0x104(r31)
    stfs    f0, 0x100(r31)
    stfs    f0, 0xfc(r31)
    stfs    f0, 0x110(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x108(r31)
    lfs     f0, -0xaf4(r2)
    stfs    f0, 0x114(r31)
    lwz     r3, 0x34(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0xb30(r2)
    li      r4, 0x3
    stfs    f0, 0xc(r3)
    lwz     r3, 0x34(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0xb30(r2)
    stfs    f0, 0xc(r3)
    lwz     r4, 0x10(r31)
    lwz     r3, 0x34(r31)
    lwz     r4, 0x3a8(r4)
    lwz     r5, 0x4(r3)
    lwz     r3, 0x8(r4)
    addi    r4, r5, 0x20
    addi    r3, r3, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x34(r31)
    lwz     r3, 0x4(r3)
    lwz     r4, 0x4(r3)
    b       branch_0x80271174

branch_0x80271158:
    lwz     r3, 0x30(r4)
    clrlslwi  r0, r29, 16, 2
    addi    r29, r29, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80271174:
    lhz     r0, 0x2c(r4)
    clrlwi  r3, r29, 16
    cmplw   r3, r0
    blt+    branch_0x80271158
    lwz     r3, 0x34(r31)
    lwz     r4, 0x44(r31)
    lwz     r3, 0x4(r3)
    addi    r4, r4, 0x20
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x6f0
    bl      PSMTXCopy
    lwz     r3, 0x34(r31)
    lwz     r4, 0x48(r31)
    lwz     r3, 0x4(r3)
    addi    r4, r4, 0x20
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x600
    bl      PSMTXCopy
    lwz     r3, 0x44(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x48(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x44(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x80271210

branch_0x802711f4:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x80271210:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x802711f4
    lwz     r3, 0x48(r31)
    li      r4, 0x0
    lwz     r5, 0x4(r3)
    b       branch_0x8027124c

branch_0x80271230:
    lwz     r3, 0x30(r5)
    clrlslwi  r0, r4, 16, 2
    addi    r4, r4, 0x1
    lwzx    r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x8(r3)
branch_0x8027124c:
    lhz     r0, 0x2c(r5)
    clrlwi  r3, r4, 16
    cmplw   r3, r0
    blt+    branch_0x80271230
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80271284
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r28
    bl      __ct__9MAnmSoundFP6MSound
    lis     r3, __vvt__14MAnmSoundMario@ha
    addi    r0, r3, __vvt__14MAnmSoundMario@l
    stw     r0, 0x94(r28)
branch_0x80271284:
    stw     r28, 0x118(r31)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x118(r31)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    li      r3, 0x98
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802712c4
    lwz     r4, R13Off_m0x6044(r13)
    mr      r3, r28
    bl      __ct__9MAnmSoundFP6MSound
    lis     r3, __vvt__14MAnmSoundMario@ha
    addi    r0, r3, __vvt__14MAnmSoundMario@l
    stw     r0, 0x94(r28)
branch_0x802712c4:
    stw     r28, 0x120(r31)
    li      r4, 0x0
    li      r5, 0x1
    lwz     r3, 0x120(r31)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
    li      r0, 0x1a
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x11c(r31)
    li      r3, 0x18
    subfic  r0, r3, 0x1a
    lwz     r4, 0x11c(r31)
    li      r5, 0x0
    cmpwi   r3, 0x1a
    mtctr   r0
    stw     r5, 0x0(r4)
    slwi    r3, r3, 2
    lwz     r4, 0x11c(r31)
    stw     r5, 0x4(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x8(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0xc(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x10(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x14(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x18(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x1c(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x20(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x24(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x28(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x2c(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x30(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x34(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x38(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x3c(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x40(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x44(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x48(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x4c(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x50(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x54(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x58(r4)
    lwz     r4, 0x11c(r31)
    stw     r5, 0x5c(r4)
    bge-    branch_0x802713d8
branch_0x802713c8:
    lwz     r4, 0x11c(r31)
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
    bdnz+      branch_0x802713c8
branch_0x802713d8:
    addi    r3, r30, 0x210
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x0(r4)
    addi    r3, r30, 0x22c
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x4(r4)
    addi    r3, r30, 0x248
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x8(r4)
    addi    r3, r30, 0x26c
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0xc(r4)
    addi    r3, r30, 0x288
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x10(r4)
    addi    r3, r30, 0x2a8
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x14(r4)
    addi    r3, r30, 0x2c4
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x18(r4)
    addi    r3, r30, 0x2e4
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x20(r4)
    addi    r3, r30, 0x304
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x24(r4)
    addi    r3, r30, 0x324
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x28(r4)
    addi    r3, r30, 0x340
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x2c(r4)
    addi    r3, r30, 0x360
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x34(r4)
    addi    r3, r30, 0x37c
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x38(r4)
    addi    r3, r30, 0x398
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x3c(r4)
    addi    r3, r30, 0x3b4
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x40(r4)
    addi    r3, r30, 0x3d4
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x44(r4)
    addi    r3, r30, 0x3f4
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x48(r4)
    addi    r3, r30, 0x414
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x58(r4)
    addi    r3, r30, 0x430
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x5c(r4)
    addi    r3, r30, 0x450
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x11c(r31)
    stw     r3, 0x60(r4)
    addi    r3, r30, 0x46c
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r5, 0x11c(r31)
    li      r4, 0x0
    stw     r3, 0x64(r5)
    lwz     r3, 0x34(r31)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x17
    beq-    branch_0x80271584
    lwz     r29, 0x34(r31)
    li      r4, 0x17
    addi    r3, r29, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80271560
    addi    r3, r29, 0x0
    li      r4, 0x17
    bl      setBckFromIndex__6MActorFi
branch_0x80271560:
    addi    r3, r31, 0x0
    li      r4, 0x17
    bl      thinkBtp__6TYoshiFi
    lwz     r4, 0x11c(r31)
    li      r5, 0x1
    lwz     r3, 0x118(r31)
    lwz     r4, 0x5c(r4)
    lfs     f1, -0xb60(r2)
    bl      initAnmSound__9MAnmSoundFPvUlf
branch_0x80271584:
    lwz     r0, 0x294(sp)
    lwz     r31, 0x28c(sp)
    lwz     r30, 0x288(sp)
    mtlr    r0
    lwz     r29, 0x284(sp)
    lwz     r28, 0x280(sp)
    addi    sp, sp, 0x290
    blr


.globl getMtxPtrFootR__6TYoshiCFv
getMtxPtrFootR__6TYoshiCFv: # 0x802715a4
    lwz     r4, 0x34(r3)
    lhz     r0, 0x40(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getMtxPtrFootL__6TYoshiCFv
getMtxPtrFootL__6TYoshiCFv: # 0x802715c0
    lwz     r4, 0x34(r3)
    lhz     r0, 0x3e(r3)
    lwz     r3, 0x4(r4)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    blr


.globl getFrameCtrl__6TYoshiCFv
getFrameCtrl__6TYoshiCFv: # 0x802715dc
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x34(r3)
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl YoshiHeadCtrl__FP7J3DNodei
YoshiHeadCtrl__FP7J3DNodei: # 0x80271604
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    bne-    branch_0x8027167c
    bl      SMS_GetMarioWaterGun__Fv
    bl      getCurrentNozzle__9TWaterGunCFv
    lwz     r12, 0x364(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    extsh   r0, r3
    lfs     f1, -0xb60(r2)
    xoris   r0, r0, 0x8000
    lfd     f3, -0xb58(r2)
    stw     r0, 0x4c(sp)
    lis     r0, 0x4330
    lfs     f4, -0xb50(r2)
    fmr     f2, f1
    stw     r0, 0x48(sp)
    addi    r3, sp, 0x14
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f3
    fmuls   f3, f4, f0
    bl      MsMtxSetRotRPH__FPA4_ffff
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, sp, 0x14
    bl      PSMTXConcat
branch_0x8027167c:
    lwz     r0, 0x54(sp)
    li      r3, 0x1
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __sinit_Yoshi_cpp
__sinit_Yoshi_cpp: # 0x80271690
    mflr    r0
    lis     r3, unk_803fbfc0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fbfc0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802716d8
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x802716d8:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80271708
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80271708:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80271738
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80271738:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80271768
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80271768:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80271798
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80271798:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802717c8
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x802717c8:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802717f8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x802717f8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80271828
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80271828:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80271858
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80271858:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80271888
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80271888:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802718b8
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x802718b8:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802718e8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x802718e8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80271918
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80271918:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80271948
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80271948:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80271978
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80271978:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

