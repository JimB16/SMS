
.globl updateOut__13M3UModelMarioFv
updateOut__13M3UModelMarioFv: # 0x80241758
    li      r4, 0x0
    addi    r7, r4, 0x0
    li      r8, 0x0
    b       branch_0x80241790

branch_0x80241768:
    lwz     r6, 0x8(r3)
    addi    r8, r8, 0x1
    lwz     r5, 0x24(r3)
    lwz     r6, 0x4(r6)
    lhzx    r0, r5, r4
    addi    r4, r4, 0xa
    lwz     r5, 0x20(r6)
    slwi    r0, r0, 2
    lwzx    r5, r5, r0
    stw     r7, 0x58(r5)
branch_0x80241790:
    lhz     r0, 0x10(r3)
    cmpw    r8, r0
    blt+    branch_0x80241768
    blr


.globl updateIn__13M3UModelMarioFv
updateIn__13M3UModelMarioFv: # 0x802417a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      updateInMotion__13M3UModelMarioFv
    mr      r3, r31
    bl      updateInTexPatternAnm__8M3UModelFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl updateInMotion__13M3UModelMarioFv
updateInMotion__13M3UModelMarioFv: # 0x802417d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    li      r31, 0x0
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x90(sp)
    li      r28, 0x0
    b       branch_0x80241904

branch_0x80241800:
    lwz     r0, 0x24(r29)
    lwz     r3, 0xc(r29)
    add     r30, r0, r28
    lbz     r0, 0x8(r30)
    mulli   r0, r0, 0x14
    add     r3, r3, r0
    bl      update__12J3DFrameCtrlFv
    lwz     r4, 0x8(r29)
    lhz     r3, 0x0(r30)
    lwz     r4, 0x4(r4)
    lbz     r0, 0x3(r30)
    slwi    r3, r3, 2
    lwz     r4, 0x20(r4)
    cmplwi  r0, 0xff
    lwzx    r3, r4, r3
    bne-    branch_0x8024184c
    li      r0, 0x0
    stw     r0, 0x58(r3)
    b       branch_0x802418fc

branch_0x8024184c:
    lwz     r4, 0x4(r29)
    lhz     r0, 0x4(r30)
    lwz     r5, 0x4(r4)
    slwi    r4, r0, 2
    lhz     r0, 0x6(r30)
    lwzx    r6, r5, r4
    slwi    r0, r0, 2
    cmplwi  r6, 0x0
    lwzx    r7, r5, r0
    beq-    branch_0x8024188c
    lbz     r0, 0x8(r30)
    lwz     r5, 0xc(r29)
    mulli   r4, r0, 0x14
    addi    r0, r4, 0x10
    lfsx    f0, r5, r0
    stfs    f0, 0x4(r6)
branch_0x8024188c:
    cmplwi  r7, 0x0
    beq-    branch_0x802418ac
    lbz     r0, 0x8(r30)
    lwz     r5, 0xc(r29)
    mulli   r4, r0, 0x14
    addi    r0, r4, 0x10
    lfsx    f0, r5, r0
    stfs    f0, 0x4(r7)
branch_0x802418ac:
    lbz     r0, 0x3(r30)
    lwz     r5, 0x20(r29)
    mulli   r4, r0, 0x6c
    lwz     r5, 0x18(r5)
    addi    r0, r4, 0x54
    stwx    r6, r5, r0
    lbz     r0, 0x3(r30)
    lwz     r5, 0x20(r29)
    mulli   r4, r0, 0x6c
    lwz     r5, 0x18(r5)
    addi    r0, r4, 0x58
    stwx    r7, r5, r0
    lbz     r0, 0x3(r30)
    lwz     r4, 0x20(r29)
    mulli   r0, r0, 0x6c
    lwz     r4, 0x18(r4)
    add.    r4, r4, r0
    beq-    branch_0x802418f8
    lwz     r4, 0x0(r4)
branch_0x802418f8:
    stw     r4, 0x58(r3)
branch_0x802418fc:
    addi    r31, r31, 0x1
    addi    r28, r28, 0xa
branch_0x80241904:
    lhz     r0, 0x10(r29)
    cmpw    r31, r0
    blt+    branch_0x80241800
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs
changeMtxCalcSIAnmBQAnmTransform__13M3UModelMarioFiiUs: # 0x80241930
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0xa
    stwu    sp, -0x8(sp)
    lwz     r4, 0x24(r3)
    add     r7, r4, r0
    slwi    r0, r5, 1
    add     r5, r7, r0
    lhz     r4, 0x4(r5)
    clrlwi  r0, r6, 16
    cmplw   r4, r0
    beq-    branch_0x8024198c
    sth     r6, 0x4(r5)
    slwi    r0, r0, 2
    lwz     r4, 0x4(r3)
    lbz     r5, 0x8(r7)
    lwz     r4, 0x4(r4)
    lwz     r6, 0xc(r3)
    mulli   r5, r5, 0x14
    lwzx    r3, r4, r0
    lha     r4, 0x2(r3)
    add     r3, r6, r5
    bl      init__12J3DFrameCtrlFs
branch_0x8024198c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

