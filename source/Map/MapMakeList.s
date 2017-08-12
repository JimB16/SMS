
.globl removeCheckListData__17TMapCollisionDataFUsl
removeCheckListData__17TMapCollisionDataFUsl: # 0x80191fa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r24, 0x50(sp)
    mr.     r29, r5
    addi    r28, r3, 0x0
    beq-    branch_0x801921ec
    clrlslwi  r0, r4, 16, 1
    add     r3, r28, r0
    lhz     r30, 0x42(r3)
    li      r0, 0x270f
    li      r26, 0x0
    sth     r0, 0x42(r3)
    addi    r24, r30, 0x0
    mulli   r27, r24, 0x14
    sth     r4, 0x242(r28)
    add     r31, r30, r29
    b       branch_0x80192028

branch_0x80191fe8:
    lwz     r0, 0x30(r28)
    add     r25, r0, r27
    lwz     r0, 0x4(r25)
    lwz     r3, 0xc(r25)
    stw     r0, 0x4(r3)
    lwz     r3, 0x4(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x8019201c
    lwz     r12, 0x0(r3)
    lwz     r4, 0xc(r25)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8019201c:
    stw     r26, 0x8(r25)
    addi    r24, r24, 0x1
    addi    r27, r27, 0x14
branch_0x80192028:
    cmpw    r24, r31
    blt+    branch_0x80191fe8
    lhz     r0, 0x40(r28)
    mulli   r3, r30, 0x14
    subf    r0, r29, r0
    sth     r0, 0x40(r28)
    mulli   r4, r31, 0x14
    lhz     r0, 0x40(r28)
    lwz     r6, 0x30(r28)
    add     r0, r0, r29
    subf    r0, r30, r0
    mulli   r5, r0, 0x14
    add     r3, r6, r3
    add     r4, r6, r4
    bl      memmove
    lhz     r0, 0x40(r28)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r6, r31, 0x0
    subf    r5, r30, r0
    bl      updateCheckListNode__17TMapCollisionDataFlll
    li      r0, 0x20
    mtctr   r0
    li      r5, 0x0
    li      r3, 0x0
branch_0x8019208c:
    addi    r4, r3, 0x42
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x270f
    beq-    branch_0x801920b0
    cmplw   r0, r30
    ble-    branch_0x801920b0
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x801920b0:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    cmplwi  r0, 0x270f
    beq-    branch_0x801920d8
    cmplw   r0, r30
    ble-    branch_0x801920d8
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x801920d8:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    addi    r5, r5, 0x1
    cmplwi  r0, 0x270f
    beq-    branch_0x80192104
    cmplw   r0, r30
    ble-    branch_0x80192104
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x80192104:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    addi    r5, r5, 0x1
    cmplwi  r0, 0x270f
    beq-    branch_0x80192130
    cmplw   r0, r30
    ble-    branch_0x80192130
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x80192130:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    addi    r5, r5, 0x1
    cmplwi  r0, 0x270f
    beq-    branch_0x8019215c
    cmplw   r0, r30
    ble-    branch_0x8019215c
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x8019215c:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    addi    r5, r5, 0x1
    cmplwi  r0, 0x270f
    beq-    branch_0x80192188
    cmplw   r0, r30
    ble-    branch_0x80192188
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x80192188:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    addi    r5, r5, 0x1
    cmplwi  r0, 0x270f
    beq-    branch_0x801921b4
    cmplw   r0, r30
    ble-    branch_0x801921b4
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x801921b4:
    addi    r4, r3, 0x44
    add     r4, r28, r4
    lhz     r0, 0x0(r4)
    addi    r3, r3, 0x2
    addi    r5, r5, 0x1
    cmplwi  r0, 0x270f
    beq-    branch_0x801921e0
    cmplw   r0, r30
    ble-    branch_0x801921e0
    subf    r0, r29, r0
    sth     r0, 0x0(r4)
branch_0x801921e0:
    addi    r5, r5, 0x1
    addi    r3, r3, 0x2
    bdnz+      branch_0x8019208c
branch_0x801921ec:
    lmw     r24, 0x50(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl updateCheckListNode__17TMapCollisionDataFlll
updateCheckListNode__17TMapCollisionDataFlll: # 0x80192200
    mflr    r0
    stw     r0, 0x4(sp)
    add     r0, r6, r5
    stwu    sp, -0x60(sp)
    stmw    r24, 0x40(sp)
    addi    r31, r4, 0x0
    mulli   r29, r31, 0x14
    mulli   r4, r6, 0x14
    addi    r30, r3, 0x0
    addi    r24, r31, 0x0
    add     r27, r31, r5
    lwz     r7, 0x30(r3)
    mulli   r3, r0, 0x14
    add     r28, r7, r4
    add     r0, r7, r29
    add     r26, r7, r3
    subf    r25, r0, r28
    b       branch_0x8019229c

branch_0x80192248:
    lwz     r0, 0x30(r30)
    add     r3, r0, r29
    lwz     r0, 0x4(r3)
    cmplw   r28, r0
    bgt-    branch_0x8019226c
    cmplw   r0, r26
    bge-    branch_0x8019226c
    subf    r0, r25, r0
    stw     r0, 0x4(r3)
branch_0x8019226c:
    lwz     r0, 0xc(r3)
    cmplw   r28, r0
    bgt-    branch_0x80192294
    cmplw   r0, r26
    bge-    branch_0x80192294
    lwz     r12, 0x0(r3)
    subf    r4, r25, r0
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80192294:
    addi    r24, r24, 0x1
    addi    r29, r29, 0x14
branch_0x8019229c:
    cmpw    r24, r27
    blt+    branch_0x80192248
    addi    r24, r31, 0x0
    mulli   r31, r24, 0x14
    b       branch_0x801922e4

branch_0x801922b0:
    lwz     r0, 0x30(r30)
    add     r4, r0, r31
    lwz     r3, 0xc(r4)
    stw     r4, 0x4(r3)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x801922dc
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x801922dc:
    addi    r24, r24, 0x1
    addi    r31, r31, 0x14
branch_0x801922e4:
    cmpw    r24, r27
    blt+    branch_0x801922b0
    lmw     r24, 0x40(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai
addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai: # 0x80192300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stfd    f31, 0x100(sp)
    stfd    f30, 0xf8(sp)
    stfd    f29, 0xf0(sp)
    stfd    f28, 0xe8(sp)
    stfd    f27, 0xe0(sp)
    stmw    r21, 0xb4(sp)
    addi    r28, r4, 0x0
    addi    r31, r3, 0x0
    addi    r29, r5, 0x0
    addi    r3, r28, 0x0
    bl      getPlaneType__12TBGCheckDataFv
    addi    r26, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, sp, 0x5c
    addi    r7, sp, 0x54
    addi    r8, sp, 0x58
    addi    r9, sp, 0x50
    bl      getGridArea__17TMapCollisionDataFPC12TBGCheckDataiPiPiPiPi
    clrlwi. r0, r3, 24
    beq-    branch_0x80192850
    mulli   r24, r26, 0xc
    lwz     r25, 0x54(sp)
    lfd     f30, -0x4390(r2)
    lfs     f31, -0x4398(r2)
    lfs     f27, -0x4394(r2)
    lis     r27, 0x4330
    b       branch_0x80192844

branch_0x80192380:
    addi    r0, r25, 0x1
    lwz     r30, 0x5c(sp)
    xoris   r3, r0, 0x8000
    xoris   r0, r25, 0x8000
    stw     r3, 0xac(sp)
    stw     r0, 0xa4(sp)
    stw     r27, 0xa8(sp)
    stw     r27, 0xa0(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fmuls   f29, f31, f1
    fmuls   f28, f31, f0
    b       branch_0x80192834

branch_0x801923bc:
    cmpwi   r29, 0x1
    bne-    branch_0x801924a4
    beq-    branch_0x80192400
    bge-    branch_0x801923d8
    cmpwi   r29, 0x0
    bge-    branch_0x801923e0
    b       branch_0x80192420

branch_0x801923d8:
    cmpwi   r29, 0x3
    bge-    branch_0x80192420
branch_0x801923e0:
    lwz     r0, 0x8(r31)
    lwz     r4, 0x14(r31)
    mullw   r0, r25, r0
    add     r0, r30, r0
    mulli   r0, r0, 0x24
    add     r3, r0, r24
    add     r3, r4, r3
    b       branch_0x80192424

branch_0x80192400:
    lwz     r0, 0x8(r31)
    lwz     r4, 0x18(r31)
    mullw   r0, r25, r0
    add     r0, r30, r0
    mulli   r0, r0, 0x24
    add     r3, r0, r24
    add     r3, r4, r3
    b       branch_0x80192424

branch_0x80192420:
    li      r3, 0x0
branch_0x80192424:
    cmpwi   r26, 0x1
    beq-    branch_0x80192458
    bge-    branch_0x8019243c
    cmpwi   r26, 0x0
    bge-    branch_0x80192448
    b       branch_0x80192474

branch_0x8019243c:
    cmpwi   r26, 0x3
    bge-    branch_0x80192474
    b       branch_0x80192468

branch_0x80192448:
    mr      r4, r28
    bl      addGroundNode__FP12TBGCheckListP12TBGCheckData
    mr      r21, r3
    b       branch_0x80192474

branch_0x80192458:
    mr      r4, r28
    bl      addRoofNode__FP12TBGCheckListP12TBGCheckData
    mr      r21, r3
    b       branch_0x80192474

branch_0x80192468:
    mr      r4, r28
    bl      addWallNode__FP12TBGCheckListP12TBGCheckData
    mr      r21, r3
branch_0x80192474:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x1
    bl      allocCheckList__17TMapCollisionDataFii
    stw     r28, 0x8(r3)
    mr      r6, r3
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    addi    r5, r21, 0x0
    addi    r7, r29, 0x0
    bl      addAfterPreNode__FiiP12TBGCheckListP12TBGCheckListi
    b       branch_0x80192830

branch_0x801924a4:
    cmpwi   r26, 0x2
    beq-    branch_0x80192668
    addi    r0, r30, 0x1
    lfs     f0, 0x4(r31)
    xoris   r3, r0, 0x8000
    lfs     f4, 0x0(r31)
    stw     r3, 0x9c(sp)
    fsubs   f1, f29, f0
    xoris   r0, r30, 0x8000
    fsubs   f0, f28, f0
    stw     r0, 0x74(sp)
    fctiwz  f3, f1
    stw     r27, 0x98(sp)
    fctiwz  f1, f0
    mr      r3, r31
    stw     r27, 0x70(sp)
    lfd     f2, 0x98(sp)
    mr      r4, r28
    lfd     f0, 0x70(sp)
    stfd    f1, 0x80(sp)
    fsubs   f2, f2, f30
    fsubs   f0, f0, f30
    stfd    f3, 0xa0(sp)
    fmsubs  f1, f31, f2, f4
    lwz     r0, 0x84(sp)
    fmsubs  f0, f31, f0, f4
    lwz     r5, 0xa4(sp)
    fctiwz  f1, f1
    fctiwz  f0, f0
    xoris   r7, r5, 0x8000
    xoris   r5, r0, 0x8000
    stw     r7, 0xac(sp)
    stfd    f1, 0x90(sp)
    stfd    f0, 0x68(sp)
    lwz     r6, 0x94(sp)
    lwz     r0, 0x6c(sp)
    xoris   r6, r6, 0x8000
    stw     r5, 0x7c(sp)
    xoris   r0, r0, 0x8000
    stw     r6, 0x8c(sp)
    stw     r0, 0x64(sp)
    stw     r27, 0xa8(sp)
    stw     r27, 0x88(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0x88(sp)
    stw     r27, 0x78(sp)
    fsubs   f4, f1, f30
    fsubs   f3, f0, f30
    stw     r27, 0x60(sp)
    lfd     f1, 0x78(sp)
    lfd     f0, 0x60(sp)
    fsubs   f2, f1, f30
    fsubs   f1, f0, f30
    bl      polygonIsInGrid__17TMapCollisionDataFffffP12TBGCheckData
    clrlwi. r0, r3, 24
    beq-    branch_0x80192830
    cmpwi   r29, 0x1
    beq-    branch_0x801925c4
    bge-    branch_0x8019259c
    cmpwi   r29, 0x0
    bge-    branch_0x801925a4
    b       branch_0x801925e4

branch_0x8019259c:
    cmpwi   r29, 0x3
    bge-    branch_0x801925e4
branch_0x801925a4:
    lwz     r0, 0x8(r31)
    lwz     r4, 0x14(r31)
    mullw   r0, r25, r0
    add     r0, r30, r0
    mulli   r0, r0, 0x24
    add     r3, r0, r24
    add     r3, r4, r3
    b       branch_0x801925e8

branch_0x801925c4:
    lwz     r0, 0x8(r31)
    lwz     r4, 0x18(r31)
    mullw   r0, r25, r0
    add     r0, r30, r0
    mulli   r0, r0, 0x24
    add     r3, r0, r24
    add     r3, r4, r3
    b       branch_0x801925e8

branch_0x801925e4:
    li      r3, 0x0
branch_0x801925e8:
    cmpwi   r26, 0x1
    beq-    branch_0x8019261c
    bge-    branch_0x80192600
    cmpwi   r26, 0x0
    bge-    branch_0x8019260c
    b       branch_0x80192638

branch_0x80192600:
    cmpwi   r26, 0x3
    bge-    branch_0x80192638
    b       branch_0x8019262c

branch_0x8019260c:
    mr      r4, r28
    bl      addGroundNode__FP12TBGCheckListP12TBGCheckData
    mr      r22, r3
    b       branch_0x80192638

branch_0x8019261c:
    mr      r4, r28
    bl      addRoofNode__FP12TBGCheckListP12TBGCheckData
    mr      r22, r3
    b       branch_0x80192638

branch_0x8019262c:
    mr      r4, r28
    bl      addWallNode__FP12TBGCheckListP12TBGCheckData
    mr      r22, r3
branch_0x80192638:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x1
    bl      allocCheckList__17TMapCollisionDataFii
    stw     r28, 0x8(r3)
    mr      r6, r3
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    addi    r5, r22, 0x0
    addi    r7, r29, 0x0
    bl      addAfterPreNode__FiiP12TBGCheckListP12TBGCheckListi
    b       branch_0x80192830

branch_0x80192668:
    addi    r0, r30, 0x1
    lfs     f0, 0x4(r31)
    xoris   r3, r0, 0x8000
    lfs     f4, 0x0(r31)
    xoris   r0, r30, 0x8000
    stw     r3, 0x74(sp)
    fsubs   f1, f29, f0
    mr      r3, r31
    stw     r0, 0x9c(sp)
    fsubs   f0, f28, f0
    mr      r4, r28
    stw     r27, 0x70(sp)
    fctiwz  f3, f1
    fctiwz  f1, f0
    stw     r27, 0x98(sp)
    lfd     f2, 0x70(sp)
    lfd     f0, 0x98(sp)
    fsubs   f2, f2, f30
    stfd    f3, 0x60(sp)
    fsubs   f0, f0, f30
    stfd    f1, 0x88(sp)
    fmsubs  f1, f31, f2, f4
    fmsubs  f0, f31, f0, f4
    lwz     r5, 0x64(sp)
    lwz     r0, 0x8c(sp)
    fctiwz  f1, f1
    fctiwz  f0, f0
    xoris   r7, r5, 0x8000
    stfd    f1, 0x78(sp)
    xoris   r5, r0, 0x8000
    stfd    f0, 0xa0(sp)
    lwz     r6, 0x7c(sp)
    lwz     r0, 0xa4(sp)
    xoris   r6, r6, 0x8000
    stw     r7, 0x6c(sp)
    xoris   r0, r0, 0x8000
    stw     r6, 0x84(sp)
    stw     r5, 0x94(sp)
    stw     r0, 0xac(sp)
    stw     r27, 0x68(sp)
    stw     r27, 0x80(sp)
    lfd     f1, 0x68(sp)
    stw     r27, 0x90(sp)
    lfd     f0, 0x80(sp)
    fsubs   f4, f1, f30
    stw     r27, 0xa8(sp)
    lfd     f1, 0x90(sp)
    fsubs   f2, f0, f30
    lfd     f0, 0xa8(sp)
    fsubs   f1, f1, f30
    fsubs   f0, f0, f30
    fadds   f3, f27, f2
    fsubs   f2, f1, f27
    fsubs   f1, f0, f27
    fadds   f4, f27, f4
    bl      polygonIsInGrid__17TMapCollisionDataFffffP12TBGCheckData
    clrlwi. r0, r3, 24
    beq-    branch_0x80192830
    cmpwi   r29, 0x1
    beq-    branch_0x80192790
    bge-    branch_0x80192768
    cmpwi   r29, 0x0
    bge-    branch_0x80192770
    b       branch_0x801927b0

branch_0x80192768:
    cmpwi   r29, 0x3
    bge-    branch_0x801927b0
branch_0x80192770:
    lwz     r0, 0x8(r31)
    lwz     r4, 0x14(r31)
    mullw   r0, r25, r0
    add     r0, r30, r0
    mulli   r0, r0, 0x24
    add     r3, r0, r24
    add     r3, r4, r3
    b       branch_0x801927b4

branch_0x80192790:
    lwz     r0, 0x8(r31)
    lwz     r4, 0x18(r31)
    mullw   r0, r25, r0
    add     r0, r30, r0
    mulli   r0, r0, 0x24
    add     r3, r0, r24
    add     r3, r4, r3
    b       branch_0x801927b4

branch_0x801927b0:
    li      r3, 0x0
branch_0x801927b4:
    cmpwi   r26, 0x1
    beq-    branch_0x801927e8
    bge-    branch_0x801927cc
    cmpwi   r26, 0x0
    bge-    branch_0x801927d8
    b       branch_0x80192804

branch_0x801927cc:
    cmpwi   r26, 0x3
    bge-    branch_0x80192804
    b       branch_0x801927f8

branch_0x801927d8:
    mr      r4, r28
    bl      addGroundNode__FP12TBGCheckListP12TBGCheckData
    mr      r23, r3
    b       branch_0x80192804

branch_0x801927e8:
    mr      r4, r28
    bl      addRoofNode__FP12TBGCheckListP12TBGCheckData
    mr      r23, r3
    b       branch_0x80192804

branch_0x801927f8:
    mr      r4, r28
    bl      addWallNode__FP12TBGCheckListP12TBGCheckData
    mr      r23, r3
branch_0x80192804:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r5, 0x1
    bl      allocCheckList__17TMapCollisionDataFii
    stw     r28, 0x8(r3)
    mr      r6, r3
    addi    r3, r30, 0x0
    addi    r4, r25, 0x0
    addi    r5, r23, 0x0
    addi    r7, r29, 0x0
    bl      addAfterPreNode__FiiP12TBGCheckListP12TBGCheckListi
branch_0x80192830:
    addi    r30, r30, 0x1
branch_0x80192834:
    lwz     r0, 0x58(sp)
    cmpw    r30, r0
    ble+    branch_0x801923bc
    addi    r25, r25, 0x1
branch_0x80192844:
    lwz     r0, 0x50(sp)
    cmpw    r25, r0
    ble+    branch_0x80192380
branch_0x80192850:
    lmw     r21, 0xb4(sp)
    lwz     r0, 0x10c(sp)
    lfd     f31, 0x100(sp)
    lfd     f30, 0xf8(sp)
    mtlr    r0
    lfd     f29, 0xf0(sp)
    lfd     f28, 0xe8(sp)
    lfd     f27, 0xe0(sp)
    addi    sp, sp, 0x108
    blr


.globl getGridArea__17TMapCollisionDataFPC12TBGCheckDataiPiPiPiPi
getGridArea__17TMapCollisionDataFPC12TBGCheckDataiPiPiPiPi: # 0x80192878
    stwu    sp, -0xe0(sp)
    lfs     f3, 0x1c(r4)
    lfs     f0, 0x28(r4)
    fcmpo   cr0, f3, f0
    ble-    branch_0x80192894
    fmr     f1, f0
    b       branch_0x80192898

branch_0x80192894:
    fmr     f1, f3
branch_0x80192898:
    lfs     f4, 0x10(r4)
    fcmpo   cr0, f4, f1
    ble-    branch_0x801928a8
    b       branch_0x801928ac

branch_0x801928a8:
    fmr     f1, f4
branch_0x801928ac:
    lfs     f6, 0x30(r4)
    lfs     f5, 0x24(r4)
    fcmpo   cr0, f5, f6
    ble-    branch_0x801928c4
    fmr     f2, f6
    b       branch_0x801928c8

branch_0x801928c4:
    fmr     f2, f5
branch_0x801928c8:
    lfs     f7, 0x18(r4)
    fcmpo   cr0, f7, f2
    ble-    branch_0x801928d8
    b       branch_0x801928dc

branch_0x801928d8:
    fmr     f2, f7
branch_0x801928dc:
    fcmpo   cr0, f3, f0
    ble-    branch_0x801928e8
    b       branch_0x801928ec

branch_0x801928e8:
    fmr     f3, f0
branch_0x801928ec:
    fcmpo   cr0, f4, f3
    ble-    branch_0x801928f8
    b       branch_0x801928fc

branch_0x801928f8:
    fmr     f4, f3
branch_0x801928fc:
    fcmpo   cr0, f5, f6
    fmr     f8, f4
    ble-    branch_0x8019290c
    b       branch_0x80192910

branch_0x8019290c:
    fmr     f5, f6
branch_0x80192910:
    fcmpo   cr0, f7, f5
    ble-    branch_0x8019291c
    b       branch_0x80192920

branch_0x8019291c:
    fmr     f7, f5
branch_0x80192920:
    lfs     f3, 0x0(r3)
    fmr     f5, f7
    fneg    f0, f3
    fcmpo   cr0, f4, f0
    blt-    branch_0x80192954
    lfs     f4, 0x4(r3)
    fneg    f0, f4
    fcmpo   cr0, f7, f0
    blt-    branch_0x80192954
    fcmpo   cr0, f1, f3
    bgt-    branch_0x80192954
    fcmpo   cr0, f2, f4
    ble-    branch_0x8019295c
branch_0x80192954:
    li      r3, 0x0
    b       branch_0x80192a50

branch_0x8019295c:
    cmpwi   r5, 0x2
    bne-    branch_0x80192978
    lfs     f0, -0x4394(r2)
    fsubs   f1, f1, f0
    fsubs   f2, f2, f0
    fadds   f8, f8, f0
    fadds   f5, f5, f0
branch_0x80192978:
    fadds   f0, f1, f3
    lfs     f1, -0x4388(r2)
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x0(r6)
    lwz     r0, 0x0(r6)
    cmpwi   r0, 0x0
    bge-    branch_0x801929a8
    li      r0, 0x0
    stw     r0, 0x0(r6)
branch_0x801929a8:
    lfs     f0, 0x0(r3)
    lfs     f1, -0x4388(r2)
    fadds   f0, f8, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x0(r8)
    lwz     r0, 0x0(r8)
    lwz     r4, 0x8(r3)
    cmpw    r0, r4
    blt-    branch_0x801929e0
    addi    r0, r4, -0x1
    stw     r0, 0x0(r8)
branch_0x801929e0:
    lfs     f0, 0x4(r3)
    lfs     f1, -0x4388(r2)
    fadds   f0, f2, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x0(r7)
    lwz     r0, 0x0(r7)
    cmpwi   r0, 0x0
    bge-    branch_0x80192a14
    li      r0, 0x0
    stw     r0, 0x0(r7)
branch_0x80192a14:
    lfs     f0, 0x4(r3)
    lfs     f1, -0x4388(r2)
    fadds   f0, f5, f0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0xd8(sp)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x0(r9)
    lwz     r0, 0x0(r9)
    lwz     r3, 0xc(r3)
    cmpw    r0, r3
    blt-    branch_0x80192a4c
    addi    r0, r3, -0x1
    stw     r0, 0x0(r9)
branch_0x80192a4c:
    li      r3, 0x1
branch_0x80192a50:
    addi    sp, sp, 0xe0
    blr


.globl addGroundNode__FP12TBGCheckListP12TBGCheckData
addGroundNode__FP12TBGCheckListP12TBGCheckData: # 0x80192a58
    b       branch_0x80192a90

branch_0x80192a5c:
    lwz     r6, 0x8(r5)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x8(r6)
    fcmpo   cr0, f1, f0
    bgtlr-    

    fcmpu   cr0, f1, f0
    bne-    branch_0x80192a8c
    lfs     f1, 0xc(r4)
    lfs     f0, 0xc(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80192a8c
    blr

branch_0x80192a8c:
    mr      r3, r5
branch_0x80192a90:
    lwz     r5, 0x4(r3)
    cmplwi  r5, 0x0
    bne+    branch_0x80192a5c
    blr


.globl addRoofNode__FP12TBGCheckListP12TBGCheckData
addRoofNode__FP12TBGCheckListP12TBGCheckData: # 0x80192aa0
    b       branch_0x80192ad8

branch_0x80192aa4:
    lwz     r6, 0x8(r5)
    lfs     f1, 0xc(r4)
    lfs     f0, 0xc(r6)
    fcmpo   cr0, f1, f0
    bltlr-    

    fcmpu   cr0, f1, f0
    bne-    branch_0x80192ad4
    lfs     f1, 0x8(r4)
    lfs     f0, 0x8(r6)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80192ad4
    blr

branch_0x80192ad4:
    mr      r3, r5
branch_0x80192ad8:
    lwz     r5, 0x4(r3)
    cmplwi  r5, 0x0
    bne+    branch_0x80192aa4
    blr


.globl addWallNode__FP12TBGCheckListP12TBGCheckData
addWallNode__FP12TBGCheckListP12TBGCheckData: # 0x80192ae8
    b       branch_0x80192b20

branch_0x80192aec:
    lwz     r6, 0x8(r5)
    lfs     f1, 0xc(r4)
    lfs     f0, 0xc(r6)
    fcmpo   cr0, f1, f0
    bgtlr-    

    fcmpu   cr0, f1, f0
    bne-    branch_0x80192b1c
    lfs     f1, 0x8(r4)
    lfs     f0, 0x8(r6)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80192b1c
    blr

branch_0x80192b1c:
    mr      r3, r5
branch_0x80192b20:
    lwz     r5, 0x4(r3)
    cmplwi  r5, 0x0
    bne+    branch_0x80192aec
    blr


.globl addAfterPreNode__FiiP12TBGCheckListP12TBGCheckListi
addAfterPreNode__FiiP12TBGCheckListP12TBGCheckListi: # 0x80192b30
    mflr    r0
    cmpwi   r7, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r5
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r6)
    bne-    branch_0x80192b88
    addi    r5, r31, 0x0
    extsh   r3, r3
    extsh   r0, r4
    sth     r3, 0x10(r31)
    mr      r3, r5
    sth     r0, 0x12(r31)
    mr      r4, r30
    lwz     r12, 0x0(r5)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80192b88:
    lwz     r3, 0x4(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80192ba8
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80192ba8:
    stw     r31, 0x4(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl allocCheckList__17TMapCollisionDataFii
allocCheckList__17TMapCollisionDataFii: # 0x80192bc4
    cmpwi   r4, 0x2
    beq-    branch_0x80192bf8
    bge-    branch_0x80192c14
    cmpwi   r4, 0x1
    bge-    branch_0x80192bdc
    b       branch_0x80192c14

branch_0x80192bdc:
    lwz     r0, 0x3c(r3)
    lwz     r6, 0x2c(r3)
    mulli   r4, r0, 0xc
    subf    r0, r5, r0
    stw     r0, 0x3c(r3)
    add     r3, r6, r4
    blr

branch_0x80192bf8:
    lhz     r0, 0x40(r3)
    lwz     r6, 0x30(r3)
    mulli   r4, r0, 0x14
    add     r0, r0, r5
    sth     r0, 0x40(r3)
    add     r3, r6, r4
    blr

branch_0x80192c14:
    lwz     r0, 0x38(r3)
    lwz     r6, 0x2c(r3)
    mulli   r4, r0, 0xc
    add     r0, r0, r5
    stw     r0, 0x38(r3)
    add     r3, r6, r4
    blr


.globl getEntryID__17TMapCollisionDataFv
getEntryID__17TMapCollisionDataFv: # 0x80192c30
    lhz     r0, 0x242(r3)
    lhz     r5, 0x40(r3)
    slwi    r0, r0, 1
    add     r4, r3, r0
    sth     r5, 0x42(r4)
    lhz     r5, 0x242(r3)
branch_0x80192c48:
    lhz     r4, 0x242(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x242(r3)
    lhz     r0, 0x242(r3)
    slwi    r4, r0, 1
    addi    r0, r4, 0x42
    lhzx    r0, r3, r0
    cmplwi  r0, 0x270f
    bne+    branch_0x80192c48
    mr      r3, r5
    blr


.globl allocCheckData__17TMapCollisionDataFUl
allocCheckData__17TMapCollisionDataFUl: # 0x80192c74
    lwz     r0, 0x34(r3)
    lwz     r6, 0x28(r3)
    mulli   r5, r0, 0x48
    add     r0, r0, r4
    stw     r0, 0x34(r3)
    add     r3, r6, r5
    blr

