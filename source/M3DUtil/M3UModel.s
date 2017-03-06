
.globl setMtxCalc__8M3UModelFRC17M3UMtxCalcSetInfo
setMtxCalc__8M3UModelFRC17M3UMtxCalcSetInfo: # 0x802378f0
    blr


.globl perform__8M3UModelFUlPQ26JDrama9TGraphics
perform__8M3UModelFUlPQ26JDrama9TGraphics: # 0x802378f4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x80237954
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x80237954:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x80237970
    lwz     r3, 0x8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80237970:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x802379b4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802379b4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl entryOut__8M3UModelFv
entryOut__8M3UModelFv: # 0x802379cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x1c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80237a0c
    lbz     r0, 0x0(r4)
    cmplwi  r0, 0xff
    beq-    branch_0x80237a0c
    lwz     r4, 0x4(r3)
    slwi    r0, r0, 2
    lwz     r3, 0x8(r3)
    lwz     r4, 0x8(r4)
    lwz     r3, 0x4(r3)
    lwzx    r4, r4, r0
    bl      removeTexNoAnimator__12J3DModelDataFP16J3DAnmTexPattern
branch_0x80237a0c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entryIn__8M3UModelFv
entryIn__8M3UModelFv: # 0x80237a1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x1c(r3)
    cmplwi  r6, 0x0
    beq-    branch_0x80237a88
    lbz     r0, 0x1(r6)
    lbz     r7, 0x0(r6)
    mulli   r0, r0, 0x14
    lwz     r4, 0xc(r3)
    cmplwi  r7, 0xff
    add     r5, r4, r0
    beq-    branch_0x80237a88
    lwz     r4, 0x4(r3)
    slwi    r0, r7, 2
    lfs     f0, 0x10(r5)
    lwz     r4, 0x8(r4)
    lwzx    r4, r4, r0
    stfs    f0, 0x4(r4)
    lwz     r5, 0x4(r3)
    lbz     r0, 0x0(r6)
    lwz     r3, 0x8(r3)
    lwz     r5, 0xc(r5)
    slwi    r0, r0, 2
    lwz     r3, 0x4(r3)
    lwzx    r5, r5, r0
    bl      setTexNoAnimator__12J3DModelDataFP16J3DAnmTexPatternP11J3DTexNoAnm
branch_0x80237a88:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateOut__8M3UModelFv
updateOut__8M3UModelFv: # 0x80237a98
    li      r4, 0x0
    addi    r7, r4, 0x0
    li      r8, 0x0
    b       branch_0x80237ad0

branch_0x80237aa8:
    lwz     r6, 0x8(r3)
    addi    r8, r8, 0x1
    lwz     r5, 0x14(r3)
    lwz     r6, 0x4(r6)
    lhzx    r0, r5, r4
    addi    r4, r4, 0x6
    lwz     r5, 0x20(r6)
    slwi    r0, r0, 2
    lwzx    r5, r5, r0
    stw     r7, 0x58(r5)
branch_0x80237ad0:
    lhz     r0, 0x10(r3)
    cmpw    r8, r0
    blt+    branch_0x80237aa8
    blr


.globl updateIn__8M3UModelFv
updateIn__8M3UModelFv: # 0x80237ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      updateInMotion__8M3UModelFv
    lwz     r3, 0x1c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80237b18
    lbz     r0, 0x1(r3)
    lwz     r3, 0xc(r31)
    mulli   r0, r0, 0x14
    add     r3, r3, r0
    bl      update__12J3DFrameCtrlFv
branch_0x80237b18:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl updateInTexPatternAnm__8M3UModelFv
updateInTexPatternAnm__8M3UModelFv: # 0x80237b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x1c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80237b58
    lbz     r0, 0x1(r4)
    lwz     r3, 0xc(r3)
    mulli   r0, r0, 0x14
    add     r3, r3, r0
    bl      update__12J3DFrameCtrlFv
branch_0x80237b58:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateInMotion__8M3UModelFv
updateInMotion__8M3UModelFv: # 0x80237b68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r25, 0x64(sp)
    addi    r27, r3, 0x0
    li      r30, 0x0
    li      r26, 0x0
    b       branch_0x80237c6c

branch_0x80237b88:
    lwz     r0, 0x14(r27)
    lwz     r3, 0x4(r27)
    add     r29, r0, r26
    lwz     r5, 0xc(r27)
    lbz     r4, 0x5(r29)
    lbz     r0, 0x4(r29)
    mulli   r4, r4, 0x14
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    add     r25, r5, r4
    lwzx    r28, r3, r0
    mr      r3, r25
    bl      update__12J3DFrameCtrlFv
    lwz     r4, 0x8(r27)
    lhz     r3, 0x0(r29)
    lwz     r4, 0x4(r4)
    lbz     r0, 0x3(r29)
    slwi    r3, r3, 2
    lwz     r4, 0x20(r4)
    cmplwi  r0, 0xff
    lwzx    r31, r4, r3
    bne-    branch_0x80237bec
    li      r0, 0x0
    stw     r0, 0x58(r31)
    b       branch_0x80237c64

branch_0x80237bec:
    lfs     f0, 0x10(r25)
    stfs    f0, 0x4(r28)
    lbz     r0, 0x2(r29)
    cmpwi   r0, 0x1
    beq-    branch_0x80237c2c
    bge-    branch_0x80237c44
    cmpwi   r0, 0x0
    bge-    branch_0x80237c10
    b       branch_0x80237c44

branch_0x80237c10:
    lbz     r0, 0x3(r29)
    lwz     r4, 0x4(r27)
    mulli   r3, r0, 0x70
    lwz     r4, 0x10(r4)
    addi    r0, r3, 0x58
    stwx    r28, r4, r0
    b       branch_0x80237c44

branch_0x80237c2c:
    lbz     r0, 0x3(r29)
    lwz     r4, 0x4(r27)
    mulli   r3, r0, 0x70
    lwz     r4, 0x14(r4)
    addi    r0, r3, 0x58
    stwx    r28, r4, r0
branch_0x80237c44:
    lwz     r3, 0x4(r27)
    lwz     r0, 0x14(r27)
    lwz     r12, 0x0(r3)
    add     r4, r0, r26
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    stw     r3, 0x58(r31)
branch_0x80237c64:
    addi    r30, r30, 0x1
    addi    r26, r26, 0x6
branch_0x80237c6c:
    lhz     r0, 0x10(r27)
    cmpw    r30, r0
    blt+    branch_0x80237b88
    lmw     r25, 0x64(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl changeAnmTexPattern__8M3UModelFiUc
changeAnmTexPattern__8M3UModelFiUc: # 0x80237c8c
    lwz     r6, 0x1c(r3)
    slwi    r0, r4, 1
    add     r6, r6, r0
    stb     r5, 0x0(r6)
    clrlslwi  r0, r5, 24, 2
    lwz     r4, 0x4(r3)
    lbz     r5, 0x1(r6)
    lwz     r4, 0x8(r4)
    lwz     r6, 0xc(r3)
    mulli   r5, r5, 0x14
    lwzx    r3, r4, r0
    lha     r0, 0x2(r3)
    add     r3, r6, r5
    sth     r0, 0x8(r3)
    lfs     f0, -0x1560(rtoc)
    stfs    f0, 0x10(r3)
    blr


.globl changeMtxCalcAnmTransform__8M3UModelFiUc
changeMtxCalcAnmTransform__8M3UModelFiUc: # 0x80237cd0
    mulli   r0, r4, 0x6
    lwz     r4, 0x14(r3)
    add     r6, r4, r0
    stb     r5, 0x4(r6)
    clrlslwi  r0, r5, 24, 2
    lwz     r4, 0x4(r3)
    lbz     r5, 0x5(r6)
    lwz     r4, 0x4(r4)
    lwz     r6, 0xc(r3)
    mulli   r5, r5, 0x14
    lwzx    r3, r4, r0
    lha     r0, 0x2(r3)
    add     r3, r6, r5
    sth     r0, 0x8(r3)
    lfs     f0, -0x1560(rtoc)
    stfs    f0, 0x10(r3)
    blr


.globl getMtxCalc__14M3UModelCommonFRC17M3UMtxCalcSetInfo
getMtxCalc__14M3UModelCommonFRC17M3UMtxCalcSetInfo: # 0x80237d14
    lbz     r0, 0x2(r4)
    cmpwi   r0, 0x1
    beq-    branch_0x80237d4c
    bge-    branch_0x80237d68
    cmpwi   r0, 0x0
    bge-    branch_0x80237d30
    b       branch_0x80237d68

branch_0x80237d30:
    lbz     r0, 0x3(r4)
    lwz     r3, 0x10(r3)
    mulli   r0, r0, 0x70
    add.    r3, r3, r0
    beqlr-    

    lwz     r3, 0x0(r3)
    blr

branch_0x80237d4c:
    lbz     r0, 0x3(r4)
    lwz     r3, 0x14(r3)
    mulli   r0, r0, 0x70
    add.    r3, r3, r0
    beqlr-    

    lwz     r3, 0x0(r3)
    blr

branch_0x80237d68:
    li      r3, 0x0
    blr

