
.globl clear__12J3DModelDataFv
clear__12J3DModelDataFv: # 0x802dcf68
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    sth     r0, 0x18(r3)
    sth     r0, 0x1a(r3)
    sth     r0, 0x1c(r3)
    stw     r0, 0x20(r3)
    sth     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    sth     r0, 0x2c(r3)
    stw     r0, 0x30(r3)
    sth     r0, 0x34(r3)
    stw     r0, 0x38(r3)
    stw     r0, 0xa8(r3)
    stw     r0, 0xac(r3)
    stw     r0, 0xa4(r3)
    sth     r0, 0x84(r3)
    stw     r0, 0x88(r3)
    stw     r0, 0x8c(r3)
    stw     r0, 0x90(r3)
    stw     r0, 0x94(r3)
    stw     r0, 0xb0(r3)
    stw     r0, 0xb4(r3)
    stw     r0, 0xb8(r3)
    stw     r0, 0x80(r3)
    blr


.globl __ct__12J3DModelDataFv
__ct__12J3DModelDataFv: # 0x802dcfdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x1178
    lwz     r31, 0x8(sp)
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x3c
    bl      __ct__13J3DVertexDataFv
    addi    r3, r31, 0x98
    bl      __ct__14J3DDrawMtxDataFv
    mr      r3, r31
    bl      clear__12J3DModelDataFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12J3DModelDataFv
__dt__12J3DModelDataFv: # 0x802dd030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802dd084
    lis     r3, 0x803e
    addi    r0, r3, 0x1178
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x98
    li      r4, -0x1
    bl      __dt__14J3DDrawMtxDataFv
    addi    r3, r30, 0x3c
    li      r4, -0x1
    bl      __dt__13J3DVertexDataFv
    extsh.  r0, r31
    ble-    branch_0x802dd084
    mr      r3, r30
    bl      __dl__FPv
branch_0x802dd084:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl makeHierarchy__12J3DModelDataFP7J3DNodePPC17J3DModelHierarchy
makeHierarchy__12J3DModelDataFP7J3DNodePPC17J3DModelHierarchy: # 0x802dd0a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r22, 0x20(sp)
    addi    r24, r3, 0x0
    addi    r25, r4, 0x0
    lis     r3, 0x803e
    addi    r26, r5, 0x0
    addi    r30, r25, 0x0
    addi    r22, r24, 0x98
    addi    r23, r24, 0x3c
    addi    r31, r3, 0x1110
branch_0x802dd0d0:
    lwz     r3, 0x0(r26)
    li      r29, 0x0
    li      r28, 0x0
    lhz     r0, 0x0(r3)
    li      r27, 0x0
    cmplwi  r0, 0x12
    bgt-    branch_0x802dd18c
    slwi    r0, r0, 2
    lwzx    r0, r31, r0
    mtctr   r0
    bctr			# switch jump

branch_0x802DD0FC:		# jumptable 802DD0F8 case 1
    lwz     r5, 0x0(r26)
    addi    r3, r24, 0x0
    addi    r4, r30, 0x0
    addi    r0, r5, 0x4
    stw     r0, 0x0(r26)
    mr      r5, r26
    bl      makeHierarchy__12J3DModelDataFP7J3DNodePPC17J3DModelHierarchy
    b       branch_0x802dd18c

branch_0x802DD11C:		# jumptable 802DD0F8 case 2
lwz	  r3, 0(r26)
addi	  r0, r3, 4
stw	  r0, 0(r26)
b	  branch_0x802DD238

branch_0x802DD12C:		# jumptable 802DD0F8 case 0
b	  branch_0x802DD238

branch_0x802DD130:		# jumptable 802DD0F8 case 16
lwz	  r3, 0(r26)
lwz	  r4, 0x20(r24)
addi	  r0, r3, 4
stw	  r0, 0(r26)
lhz	  r0, 2(r3)
slwi	  r0, r0, 2
lwzx	  r29, r4, r0
b	  def_802DD0F8	# jumptable 802DD0F8 default case

branch_0x802DD150:		# jumptable 802DD0F8 case 17
lwz	  r3, 0(r26)
lwz	  r4, 0x28(r24)
addi	  r0, r3, 4
stw	  r0, 0(r26)
lhz	  r0, 2(r3)
slwi	  r0, r0, 2
lwzx	  r28, r4, r0
b	  def_802DD0F8	# jumptable 802DD0F8 default case

branch_0x802DD170:		# jumptable 802DD0F8 case 18
lwz	  r3, 0(r26)
lwz	  r4, 0x30(r24)
addi	  r0, r3, 4
stw	  r0, 0(r26)
lhz	  r0, 2(r3)
slwi	  r0, r0, 2
lwzx	  r27, r4, r0

def_802DD0F8:		# jumptable 802DD0F8 default case
branch_0x802dd18c:
    cmplwi  r29, 0x0
    beq-    branch_0x802dd1b8
    cmplwi  r25, 0x0
    addi    r30, r29, 0x0
    bne-    branch_0x802dd1a8
    stw     r29, 0x10(r24)
    b       branch_0x802dd0d0

branch_0x802dd1a8:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    bl      appendChild__7J3DNodeFP7J3DNode
    b       branch_0x802dd0d0

branch_0x802dd1b8:
    cmplwi  r28, 0x0
    beq-    branch_0x802dd1f0
    mr      r3, r25
    lwz     r12, 0x0(r25)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xb1b6
    cmplwi  r0, 0x4e54
    bne-    branch_0x802dd1f0
    addi    r3, r25, 0x0
    addi    r4, r28, 0x0
    bl      addMesh__8J3DJointFP11J3DMaterial
    b       branch_0x802dd0d0

branch_0x802dd1f0:
    cmplwi  r27, 0x0
    beq+    branch_0x802dd0d0
    mr      r3, r25
    lwz     r12, 0x0(r25)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xb1b6
    cmplwi  r0, 0x4e54
    bne+    branch_0x802dd0d0
    lwz     r3, 0x60(r25)
    mr      r4, r27
    bl      addShape__11J3DMaterialFP8J3DShape
    stw     r22, 0x48(r27)
    mr      r3, r27
    stw     r23, 0x44(r27)
    bl      makeVcdVatCmd__8J3DShapeFv
    b       branch_0x802dd0d0

branch_0x802DD238:
lmw	  r22, 0x48+var_28(r1)
lwz	  r0, 0x48+arg_4(r1)
addi	  r1, r1, 0x48
mtlr	  r0
blr


.globl getType__7J3DNodeCFv
getType__7J3DNodeCFv: # 0x802dd24c
    lis     r3, 0x4e4e
    addi    r3, r3, 0x4f4e
    blr


.globl isDeformableVertexFormat__12J3DModelDataCFv
isDeformableVertexFormat__12J3DModelDataCFv: # 0x802dd258
    lwz     r3, 0x48(r3)
    li      r4, 0x0
    b       branch_0x802dd2b8

branch_0x802dd264:
    cmpwi   r0, 0xa
    beq-    branch_0x802dd29c
    bge-    branch_0x802dd2b4
    cmpwi   r0, 0x9
    bge-    branch_0x802dd27c
    b       branch_0x802dd2b4

branch_0x802dd27c:
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x4
    bne-    branch_0x802dd294
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x802dd2b4
branch_0x802dd294:
    li      r3, 0x0
    blr

branch_0x802dd29c:
    lwz     r0, 0x8(r3)
    li      r4, 0x1
    cmpwi   r0, 0x4
    beq-    branch_0x802dd2b4
    li      r3, 0x0
    blr

branch_0x802dd2b4:
    addi    r3, r3, 0x10
branch_0x802dd2b8:
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0xff
    bne+    branch_0x802dd264
    clrlwi. r0, r4, 24
    beq-    branch_0x802dd2d4
    li      r3, 0x1
    blr

branch_0x802dd2d4:
    li      r3, 0x0
    blr


.globl setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag: # 0x802dd2dc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r5, 31
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r28, r5, 0x0
    addi    r31, r3, 0x0
    addi    r27, r4, 0x0
    beq-    branch_0x802dd35c
    li      r29, 0x0
    b       branch_0x802dd34c

branch_0x802dd308:
    lwz     r3, 0x10(r27)
    mr      r4, r29
    lwz     r30, 0xb4(r31)
    bl      getName__10JUTNameTabCFUs
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, -0x1
    beq-    branch_0x802dd348
    lwz     r6, 0x8(r27)
    clrlslwi  r4, r29, 16, 2
    lwz     r5, 0x28(r31)
    clrlslwi  r0, r3, 16, 2
    lwzx    r4, r6, r4
    lwzx    r3, r5, r0
    bl      copy__11J3DMaterialFP11J3DMaterial
branch_0x802dd348:
    addi    r29, r29, 0x1
branch_0x802dd34c:
    lhz     r0, 0x4(r27)
    clrlwi  r3, r29, 16
    cmplw   r3, r0
    blt+    branch_0x802dd308
branch_0x802dd35c:
    rlwinm. r0, r28, 0, 30, 30
    beq-    branch_0x802dd380
    lwz     r3, 0xc(r27)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802dd380
    stw     r3, 0xac(r31)
    lwz     r0, 0x14(r27)
    stw     r0, 0xa8(r31)
branch_0x802dd380:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl entryMatColorAnimator__12J3DModelDataFP11J3DAnmColor
entryMatColorAnimator__12J3DModelDataFP11J3DAnmColor: # 0x802dd394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    mr      r26, r4
    addi    r25, r3, 0x0
    li      r28, 0x0
    li      r27, 0x0
    lis     r31, 0xc000
    lhz     r30, 0x18(r4)
    b       branch_0x802dd424

branch_0x802dd3c0:
    lwz     r3, 0x1c(r26)
    clrlslwi  r0, r27, 16, 1
    lhzx    r0, r3, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802dd420
    lwz     r3, 0x28(r25)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r29, 0x38(r3)
    cmplw   r29, r31
    bge-    branch_0x802dd3f0
    b       branch_0x802dd3f4

branch_0x802dd3f0:
    li      r29, 0x0
branch_0x802dd3f4:
    cmplwi  r29, 0x0
    bne-    branch_0x802dd404
    li      r28, 0x1
    b       branch_0x802dd420

branch_0x802dd404:
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802dd41c
    stw     r26, 0x4(r3)
    sth     r27, 0x0(r3)
branch_0x802dd41c:
    stw     r3, 0x4(r29)
branch_0x802dd420:
    addi    r27, r27, 0x1
branch_0x802dd424:
    clrlwi  r0, r27, 16
    cmplw   r0, r30
    blt+    branch_0x802dd3c0
    mr      r3, r28
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl entryTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
entryTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey: # 0x802dd448
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r19, 0x5c(sp)
    addi    r22, r4, 0x0
    lis     r4, 0x5555
    addi    r4, r4, 0x5556
    addi    r21, r3, 0x0
    li      r25, 0x0
    li      r24, 0x0
    lis     r29, 0xc000
    lhz     r0, 0x14(r22)
    mulhw   r4, r4, r0
    srwi    r0, r4, 31
    add     r0, r4, r0
    lis     r4, 0x803e
    clrlwi  r28, r0, 16
    addi    r30, r4, 0x15f8
    b       branch_0x802dd5f8

branch_0x802dd494:
    clrlwi  r26, r24, 16
    lwz     r3, 0x34(r22)
    clrlslwi  r0, r24, 16, 1
    lhzx    r0, r3, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802dd5f4
    lwz     r3, 0x28(r21)
    slwi    r0, r0, 2
    lwzx    r31, r3, r0
    lwz     r27, 0x38(r31)
    cmplw   r27, r29
    bge-    branch_0x802dd4c8
    b       branch_0x802dd4cc

branch_0x802dd4c8:
    li      r27, 0x0
branch_0x802dd4cc:
    lwz     r3, 0x30(r22)
    cmplwi  r27, 0x0
    lbzx    r23, r3, r26
    bne-    branch_0x802dd4e4
    li      r25, 0x1
    b       branch_0x802dd5f4

branch_0x802dd4e4:
    addi    r20, r23, 0x0
    cmplwi  r20, 0xff
    beq-    branch_0x802dd5f4
    lwz     r3, 0x24(r31)
    mr      r4, r20
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802dd56c
    li      r3, 0xc4
    bl      __nw__FUl
    mr.     r19, r3
    beq-    branch_0x802dd52c
    addi    r3, r19, 0x0
    addi    r4, r30, 0x0
    bl      __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
branch_0x802dd52c:
    lwz     r3, 0x24(r31)
    addi    r5, r19, 0x0
    addi    r4, r20, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x24(r31)
    mr      r4, r20
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    mulli   r4, r23, 0x3
    addi    r0, r4, 0x1e
    stb     r0, 0x2(r3)
branch_0x802dd56c:
    lwz     r3, 0x24(r31)
    mr      r4, r20
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802dd5a0
    sth     r24, 0x0(r3)
    stw     r22, 0x4(r3)
branch_0x802dd5a0:
    lwz     r0, 0x6c(r22)
    mulli   r8, r26, 0xc
    lbz     r4, 0x1(r31)
    slwi    r0, r0, 7
    insrwi  r0, r4, 7, 25
    stb     r0, 0x1(r31)
    slwi    r4, r23, 2
    addi    r0, r4, 0xc
    lwz     r7, 0x3c(r22)
    addi    r6, r8, 0x4
    addi    r5, r8, 0x8
    add     r4, r7, r8
    lfs     f0, 0x0(r4)
    stfs    f0, 0x4(r31)
    lwz     r4, 0x3c(r22)
    lfsx    f0, r4, r6
    stfs    f0, 0x8(r31)
    lwz     r4, 0x3c(r22)
    lfsx    f0, r4, r5
    stfs    f0, 0xc(r31)
    stwx    r3, r27, r0
branch_0x802dd5f4:
    addi    r24, r24, 0x1
branch_0x802dd5f8:
    clrlwi  r0, r24, 16
    cmplw   r0, r28
    blt+    branch_0x802dd494
    mr      r3, r25
    lmw     r19, 0x5c(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl entryTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKey
entryTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKey: # 0x802dd61c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r23, 0x5c(sp)
    mr      r27, r4
    mr      r26, r3
    li      r29, 0x0
    li      r28, 0x0
    lis     r25, 0xc000
    lhz     r31, 0x10(r4)
    lhz     r30, 0x12(r4)
    b       branch_0x802dd6cc

branch_0x802dd64c:
    clrlwi  r4, r28, 16
    lwz     r3, 0x24(r27)
    clrlslwi  r0, r28, 16, 1
    lhzx    r0, r3, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802dd6c8
    lwz     r3, 0x28(r26)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r24, 0x38(r3)
    cmplw   r24, r25
    bge-    branch_0x802dd680
    b       branch_0x802dd684

branch_0x802dd680:
    li      r24, 0x0
branch_0x802dd684:
    mulli   r3, r4, 0x1c
    lwz     r4, 0x34(r27)
    addi    r0, r3, 0x18
    cmplwi  r24, 0x0
    lbzx    r23, r4, r0
    bne-    branch_0x802dd6a4
    li      r29, 0x1
    b       branch_0x802dd6c8

branch_0x802dd6a4:
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802dd6bc
    stw     r27, 0x4(r3)
    sth     r28, 0x0(r3)
branch_0x802dd6bc:
    slwi    r4, r23, 2
    addi    r0, r4, 0x4c
    stwx    r3, r24, r0
branch_0x802dd6c8:
    addi    r28, r28, 0x1
branch_0x802dd6cc:
    clrlwi  r0, r28, 16
    cmplw   r0, r31
    blt+    branch_0x802dd64c
    li      r28, 0x0
    lis     r31, 0xc000
    b       branch_0x802dd764

branch_0x802dd6e4:
    clrlwi  r4, r28, 16
    lwz     r3, 0x2c(r27)
    clrlslwi  r0, r28, 16, 1
    lhzx    r0, r3, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802dd760
    lwz     r3, 0x28(r26)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lwz     r24, 0x38(r3)
    cmplw   r24, r31
    bge-    branch_0x802dd718
    b       branch_0x802dd71c

branch_0x802dd718:
    li      r24, 0x0
branch_0x802dd71c:
    mulli   r3, r4, 0x1c
    lwz     r4, 0x38(r27)
    addi    r0, r3, 0x18
    cmplwi  r24, 0x0
    lbzx    r23, r4, r0
    bne-    branch_0x802dd73c
    li      r29, 0x1
    b       branch_0x802dd760

branch_0x802dd73c:
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802dd754
    stw     r27, 0x4(r3)
    sth     r28, 0x0(r3)
branch_0x802dd754:
    slwi    r4, r23, 2
    addi    r0, r4, 0x5c
    stwx    r3, r24, r0
branch_0x802dd760:
    addi    r28, r28, 0x1
branch_0x802dd764:
    clrlwi  r0, r28, 16
    cmplw   r0, r30
    blt+    branch_0x802dd6e4
    mr      r3, r29
    lmw     r23, 0x5c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl removeMatColorAnimator__12J3DModelDataFP11J3DAnmColor
removeMatColorAnimator__12J3DModelDataFP11J3DAnmColor: # 0x802dd788
    lhz     r8, 0x18(r4)
    li      r9, 0x0
    li      r10, 0x0
    lis     r6, 0xc000
    li      r5, 0x0
    b       branch_0x802dd7ec

branch_0x802dd7a0:
    lwz     r7, 0x1c(r4)
    clrlslwi  r0, r10, 16, 1
    lhzx    r0, r7, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802dd7e8
    lwz     r7, 0x28(r3)
    slwi    r0, r0, 2
    lwzx    r7, r7, r0
    lwz     r7, 0x38(r7)
    cmplw   r7, r6
    bge-    branch_0x802dd7d0
    b       branch_0x802dd7d4

branch_0x802dd7d0:
    li      r7, 0x0
branch_0x802dd7d4:
    cmplwi  r7, 0x0
    bne-    branch_0x802dd7e4
    li      r9, 0x1
    b       branch_0x802dd7e8

branch_0x802dd7e4:
    stw     r5, 0x4(r7)
branch_0x802dd7e8:
    addi    r10, r10, 0x1
branch_0x802dd7ec:
    clrlwi  r0, r10, 16
    cmplw   r0, r8
    blt+    branch_0x802dd7a0
    mr      r3, r9
    blr


.globl removeTexNoAnimator__12J3DModelDataFP16J3DAnmTexPattern
removeTexNoAnimator__12J3DModelDataFP16J3DAnmTexPattern: # 0x802dd800
    lhz     r8, 0x1a(r4)
    li      r10, 0x0
    li      r11, 0x0
    lis     r7, 0xc000
    b       branch_0x802dd880

branch_0x802dd814:
    clrlwi  r6, r11, 16
    lwz     r5, 0x1c(r4)
    clrlslwi  r0, r11, 16, 1
    lhzx    r0, r5, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802dd87c
    lwz     r5, 0x28(r3)
    slwi    r0, r0, 2
    lwzx    r5, r5, r0
    lwz     r9, 0x38(r5)
    cmplw   r9, r7
    bge-    branch_0x802dd848
    b       branch_0x802dd84c

branch_0x802dd848:
    li      r9, 0x0
branch_0x802dd84c:
    slwi    r5, r6, 3
    lwz     r6, 0x14(r4)
    addi    r0, r5, 0x4
    cmplwi  r9, 0x0
    lbzx    r0, r6, r0
    bne-    branch_0x802dd86c
    li      r10, 0x1
    b       branch_0x802dd87c

branch_0x802dd86c:
    slwi    r5, r0, 2
    addi    r0, r5, 0x2c
    li      r5, 0x0
    stwx    r5, r9, r0
branch_0x802dd87c:
    addi    r11, r11, 0x1
branch_0x802dd880:
    clrlwi  r0, r11, 16
    cmplw   r0, r8
    blt+    branch_0x802dd814
    mr      r3, r10
    blr


.globl removeTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
removeTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey: # 0x802dd894
    lis     r5, 0x5555
    lhz     r0, 0x14(r4)
    addi    r5, r5, 0x5556
    mulhw   r5, r5, r0
    srwi    r0, r5, 31
    add     r0, r5, r0
    clrlwi  r8, r0, 16
    li      r10, 0x0
    li      r11, 0x0
    lis     r6, 0xc000
    b       branch_0x802dd924

branch_0x802dd8c0:
    clrlwi  r9, r11, 16
    lwz     r7, 0x34(r4)
    clrlslwi  r0, r11, 16, 1
    lwz     r5, 0x28(r3)
    lhzx    r0, r7, r0
    slwi    r0, r0, 2
    lwzx    r5, r5, r0
    lwz     r7, 0x38(r5)
    cmplw   r7, r6
    bge-    branch_0x802dd8ec
    b       branch_0x802dd8f0

branch_0x802dd8ec:
    li      r7, 0x0
branch_0x802dd8f0:
    lwz     r5, 0x30(r4)
    cmplwi  r7, 0x0
    lbzx    r0, r5, r9
    bne-    branch_0x802dd908
    li      r10, 0x1
    b       branch_0x802dd920

branch_0x802dd908:
    cmplwi  r0, 0xff
    beq-    branch_0x802dd920
    slwi    r5, r0, 2
    addi    r0, r5, 0xc
    li      r5, 0x0
    stwx    r5, r7, r0
branch_0x802dd920:
    addi    r11, r11, 0x1
branch_0x802dd924:
    clrlwi  r0, r11, 16
    cmplw   r0, r8
    blt+    branch_0x802dd8c0
    mr      r3, r10
    blr


.globl removeTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKey
removeTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKey: # 0x802dd938
    lhz     r9, 0x10(r4)
    li      r5, 0x0
    lhz     r0, 0x12(r4)
    li      r12, 0x0
    lis     r8, 0xc000
    b       branch_0x802dd9bc

branch_0x802dd950:
    clrlwi  r11, r12, 16
    lwz     r7, 0x24(r4)
    clrlslwi  r6, r12, 16, 1
    lhzx    r6, r7, r6
    cmplwi  r6, 0xffff
    beq-    branch_0x802dd9b8
    lwz     r7, 0x28(r3)
    slwi    r6, r6, 2
    lwzx    r6, r7, r6
    lwz     r10, 0x38(r6)
    cmplw   r10, r8
    bge-    branch_0x802dd984
    b       branch_0x802dd988

branch_0x802dd984:
    li      r10, 0x0
branch_0x802dd988:
    mulli   r6, r11, 0x1c
    lwz     r7, 0x34(r4)
    addi    r6, r6, 0x18
    cmplwi  r10, 0x0
    lbzx    r6, r7, r6
    bne-    branch_0x802dd9a8
    li      r5, 0x1
    b       branch_0x802dd9b8

branch_0x802dd9a8:
    slwi    r6, r6, 2
    addi    r6, r6, 0x4c
    li      r7, 0x0
    stwx    r7, r10, r6
branch_0x802dd9b8:
    addi    r12, r12, 0x1
branch_0x802dd9bc:
    clrlwi  r6, r12, 16
    cmplw   r6, r9
    blt+    branch_0x802dd950
    li      r11, 0x0
    lis     r8, 0xc000
    b       branch_0x802dda40

branch_0x802dd9d4:
    clrlwi  r10, r11, 16
    lwz     r7, 0x2c(r4)
    clrlslwi  r6, r11, 16, 1
    lhzx    r6, r7, r6
    cmplwi  r6, 0xffff
    beq-    branch_0x802dda3c
    lwz     r7, 0x28(r3)
    slwi    r6, r6, 2
    lwzx    r6, r7, r6
    lwz     r9, 0x38(r6)
    cmplw   r9, r8
    bge-    branch_0x802dda08
    b       branch_0x802dda0c

branch_0x802dda08:
    li      r9, 0x0
branch_0x802dda0c:
    mulli   r6, r10, 0x1c
    lwz     r7, 0x38(r4)
    addi    r6, r6, 0x18
    cmplwi  r9, 0x0
    lbzx    r6, r7, r6
    bne-    branch_0x802dda2c
    li      r5, 0x1
    b       branch_0x802dda3c

branch_0x802dda2c:
    slwi    r6, r6, 2
    addi    r6, r6, 0x5c
    li      r7, 0x0
    stwx    r7, r9, r6
branch_0x802dda3c:
    addi    r11, r11, 0x1
branch_0x802dda40:
    clrlwi  r6, r11, 16
    cmplw   r6, r0
    blt+    branch_0x802dd9d4
    mr      r3, r5
    blr


.globl setMatColorAnimator__12J3DModelDataFP11J3DAnmColorP14J3DMatColorAnm
setMatColorAnimator__12J3DModelDataFP11J3DAnmColorP14J3DMatColorAnm: # 0x802dda54
    lhz     r8, 0x18(r4)
    li      r10, 0x0
    li      r11, 0x0
    lis     r6, 0xc000
    b       branch_0x802ddac0

branch_0x802dda68:
    clrlwi  r9, r11, 16
    lwz     r7, 0x1c(r4)
    clrlslwi  r0, r11, 16, 1
    lhzx    r0, r7, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802ddabc
    lwz     r7, 0x28(r3)
    slwi    r0, r0, 2
    lwzx    r7, r7, r0
    lwz     r7, 0x38(r7)
    cmplw   r7, r6
    bge-    branch_0x802dda9c
    b       branch_0x802ddaa0

branch_0x802dda9c:
    li      r7, 0x0
branch_0x802ddaa0:
    cmplwi  r7, 0x0
    bne-    branch_0x802ddab0
    li      r10, 0x1
    b       branch_0x802ddabc

branch_0x802ddab0:
    slwi    r0, r9, 3
    add     r0, r5, r0
    stw     r0, 0x4(r7)
branch_0x802ddabc:
    addi    r11, r11, 0x1
branch_0x802ddac0:
    clrlwi  r0, r11, 16
    cmplw   r0, r8
    blt+    branch_0x802dda68
    mr      r3, r10
    blr


.globl setTexNoAnimator__12J3DModelDataFP16J3DAnmTexPatternP11J3DTexNoAnm
setTexNoAnimator__12J3DModelDataFP16J3DAnmTexPatternP11J3DTexNoAnm: # 0x802ddad4
    stwu    sp, -0x38(sp)
    li      r12, 0x0
    lis     r8, 0xc000
    stw     r31, 0x34(sp)
    li      r31, 0x0
    lhz     r9, 0x1a(r4)
    b       branch_0x802ddb60

branch_0x802ddaf0:
    clrlwi  r11, r31, 16
    lwz     r6, 0x1c(r4)
    clrlslwi  r0, r31, 16, 1
    lhzx    r0, r6, r0
    cmplwi  r0, 0xffff
    beq-    branch_0x802ddb5c
    lwz     r6, 0x28(r3)
    slwi    r0, r0, 2
    lwzx    r6, r6, r0
    lwz     r10, 0x38(r6)
    cmplw   r10, r8
    bge-    branch_0x802ddb24
    b       branch_0x802ddb28

branch_0x802ddb24:
    li      r10, 0x0
branch_0x802ddb28:
    slwi    r6, r11, 3
    lwz     r7, 0x14(r4)
    addi    r0, r6, 0x4
    cmplwi  r10, 0x0
    lbzx    r6, r7, r0
    bne-    branch_0x802ddb48
    li      r12, 0x1
    b       branch_0x802ddb5c

branch_0x802ddb48:
    mulli   r0, r11, 0xc
    slwi    r6, r6, 2
    add     r7, r5, r0
    addi    r0, r6, 0x2c
    stwx    r7, r10, r0
branch_0x802ddb5c:
    addi    r31, r31, 0x1
branch_0x802ddb60:
    clrlwi  r0, r31, 16
    cmplw   r0, r9
    blt+    branch_0x802ddaf0
    lwz     r31, 0x34(sp)
    mr      r3, r12
    addi    sp, sp, 0x38
    blr


.globl setTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKeyP12J3DTexMtxAnmP12J3DTexMtxAnm
setTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKeyP12J3DTexMtxAnmP12J3DTexMtxAnm: # 0x802ddb7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r22, 0x60(sp)
    addi    r24, r4, 0x0
    lis     r4, 0x5555
    addi    r4, r4, 0x5556
    addi    r23, r3, 0x0
    addi    r25, r5, 0x0
    li      r27, 0x0
    li      r26, 0x0
    lis     r31, 0xc000
    lhz     r0, 0x14(r24)
    mulhw   r4, r4, r0
    srwi    r0, r4, 31
    add     r0, r4, r0
    clrlwi  r30, r0, 16
    b       branch_0x802ddc90

branch_0x802ddbc4:
    clrlwi  r28, r26, 16
    lwz     r4, 0x34(r24)
    clrlslwi  r0, r26, 16, 1
    lwz     r3, 0x28(r23)
    lhzx    r0, r4, r0
    slwi    r0, r0, 2
    lwzx    r4, r3, r0
    lwz     r29, 0x38(r4)
    cmplw   r29, r31
    bge-    branch_0x802ddbf0
    b       branch_0x802ddbf4

branch_0x802ddbf0:
    li      r29, 0x0
branch_0x802ddbf4:
    lwz     r3, 0x30(r24)
    cmplwi  r29, 0x0
    lbzx    r0, r3, r28
    bne-    branch_0x802ddc0c
    li      r27, 0x1
    b       branch_0x802ddc8c

branch_0x802ddc0c:
    mr      r22, r0
    cmplwi  r22, 0xff
    beq-    branch_0x802ddc8c
    lwz     r3, 0x24(r4)
    mr      r4, r22
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x6c(r24)
    mulli   r8, r28, 0xc
    lbz     r4, 0x1(r3)
    slwi    r0, r0, 7
    insrwi  r0, r4, 7, 25
    stb     r0, 0x1(r3)
    slwi    r0, r28, 3
    slwi    r4, r22, 2
    lwz     r5, 0x3c(r24)
    addi    r7, r8, 0x4
    addi    r6, r8, 0x8
    add     r5, r5, r8
    lfs     f0, 0x0(r5)
    add     r5, r25, r0
    addi    r0, r4, 0xc
    stfs    f0, 0x4(r3)
    lwz     r4, 0x3c(r24)
    lfsx    f0, r4, r7
    stfs    f0, 0x8(r3)
    lwz     r4, 0x3c(r24)
    lfsx    f0, r4, r6
    stfs    f0, 0xc(r3)
    stwx    r5, r29, r0
branch_0x802ddc8c:
    addi    r26, r26, 0x1
branch_0x802ddc90:
    clrlwi  r0, r26, 16
    cmplw   r0, r30
    blt+    branch_0x802ddbc4
    mr      r3, r27
    lmw     r22, 0x60(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl setTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKeyP14J3DTevColorAnmP15J3DTevKColorAnm
setTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKeyP14J3DTevColorAnmP15J3DTevKColorAnm: # 0x802ddcb4
    stwu    sp, -0x60(sp)
    li      r7, 0x0
    lis     r10, 0xc000
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    li      r30, 0x0
    lhz     r11, 0x10(r4)
    lhz     r0, 0x12(r4)
    b       branch_0x802ddd48

branch_0x802ddcd8:
    clrlwi  r31, r30, 16
    lwz     r9, 0x24(r4)
    clrlslwi  r8, r30, 16, 1
    lhzx    r8, r9, r8
    cmplwi  r8, 0xffff
    beq-    branch_0x802ddd44
    lwz     r9, 0x28(r3)
    slwi    r8, r8, 2
    lwzx    r8, r9, r8
    lwz     r12, 0x38(r8)
    cmplw   r12, r10
    bge-    branch_0x802ddd0c
    b       branch_0x802ddd10

branch_0x802ddd0c:
    li      r12, 0x0
branch_0x802ddd10:
    mulli   r8, r31, 0x1c
    lwz     r9, 0x34(r4)
    addi    r8, r8, 0x18
    cmplwi  r12, 0x0
    lbzx    r8, r9, r8
    bne-    branch_0x802ddd30
    li      r7, 0x1
    b       branch_0x802ddd44

branch_0x802ddd30:
    slwi    r9, r31, 3
    slwi    r8, r8, 2
    add     r9, r5, r9
    addi    r8, r8, 0x4c
    stwx    r9, r12, r8
branch_0x802ddd44:
    addi    r30, r30, 0x1
branch_0x802ddd48:
    clrlwi  r8, r30, 16
    cmplw   r8, r11
    blt+    branch_0x802ddcd8
    li      r12, 0x0
    lis     r9, 0xc000
    b       branch_0x802dddd0

branch_0x802ddd60:
    clrlwi  r11, r12, 16
    lwz     r8, 0x2c(r4)
    clrlslwi  r5, r12, 16, 1
    lhzx    r5, r8, r5
    cmplwi  r5, 0xffff
    beq-    branch_0x802dddcc
    lwz     r8, 0x28(r3)
    slwi    r5, r5, 2
    lwzx    r5, r8, r5
    lwz     r10, 0x38(r5)
    cmplw   r10, r9
    bge-    branch_0x802ddd94
    b       branch_0x802ddd98

branch_0x802ddd94:
    li      r10, 0x0
branch_0x802ddd98:
    mulli   r5, r11, 0x1c
    lwz     r8, 0x38(r4)
    addi    r5, r5, 0x18
    cmplwi  r10, 0x0
    lbzx    r5, r8, r5
    bne-    branch_0x802dddb8
    li      r7, 0x1
    b       branch_0x802dddcc

branch_0x802dddb8:
    slwi    r8, r11, 3
    slwi    r5, r5, 2
    add     r8, r6, r8
    addi    r5, r5, 0x5c
    stwx    r8, r10, r5
branch_0x802dddcc:
    addi    r12, r12, 0x1
branch_0x802dddd0:
    clrlwi  r5, r12, 16
    cmplw   r5, r0
    blt+    branch_0x802ddd60
    lwz     r31, 0x5c(sp)
    mr      r3, r7
    lwz     r30, 0x58(sp)
    addi    sp, sp, 0x60
    blr


.globl __ct__8J3DModelFv
__ct__8J3DModelFv: # 0x802dddf0
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x115c
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    bl      initialize__8J3DModelFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__8J3DModelFP12J3DModelDataUlUl
__ct__8J3DModelFP12J3DModelDataUlUl: # 0x802dde2c
    mflr    r0
    lis     r7, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r7, 0x115c
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    stw     r0, 0x0(r3)
    bl      initialize__8J3DModelFv
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      entryModelData__8J3DModelFP12J3DModelDataUlUl
    lwz     r0, 0x2c(sp)
    mr      r3, r28
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__8J3DModelFv
__dt__8J3DModelFv: # 0x802ddea0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dded4
    lis     r3, 0x803e
    addi    r3, r3, 0x115c
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802dded4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dded4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initialize__8J3DModelFv
initialize__8J3DModelFv: # 0x802ddeec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    stw     r31, 0xc(r3)
    addi    r3, r30, 0x20
    stw     r31, 0x8(r30)
    stw     r31, 0x4(r30)
    stw     r31, 0x88(r30)
    stw     r31, 0x8c(r30)
    lfs     f0, 0x288(rtoc)
    stfs    f0, 0x14(r30)
    stfs    f0, 0x18(r30)
    stfs    f0, 0x1c(r30)
    bl      PSMTXIdentity
    stw     r31, 0x50(r30)
    stw     r31, 0x54(r30)
    stw     r31, 0x58(r30)
    stw     r31, 0x5c(r30)
    stw     r31, 0x60(r30)
    stw     r31, 0x64(r30)
    stw     r31, 0x68(r30)
    stw     r31, 0x6c(r30)
    stw     r31, 0x70(r30)
    stw     r31, 0x74(r30)
    stw     r31, 0x7c(r30)
    stw     r31, 0x98(r30)
    stw     r31, 0x80(r30)
    stw     r31, 0x84(r30)
    stw     r31, 0x9c(r30)
    stw     r31, 0x90(r30)
    stw     r31, 0x94(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl entryModelData__8J3DModelFP12J3DModelDataUlUl
entryModelData__8J3DModelFP12J3DModelDataUlUl: # 0x802ddf90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stmw    r20, 0xb8(sp)
    addi    r31, r4, 0x0
    addi    r29, r3, 0x0
    addi    r28, r5, 0x0
    addi    r30, r6, 0x0
    stw     r31, 0x4(r3)
    lhz     r3, 0x1c(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x802ddfec
    bl      __nwa__FUl
    stw     r3, 0x50(r29)
    lhz     r3, 0x84(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ddfdc
    bl      __nwa__FUl
    stw     r3, 0x54(r29)
branch_0x802ddfdc:
    lhz     r0, 0x1c(r31)
    mulli   r3, r0, 0x30
    bl      __nwa__FUl
    stw     r3, 0x58(r29)
branch_0x802ddfec:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802de004
    mulli   r3, r0, 0x30
    bl      __nwa__FUl
    stw     r3, 0x5c(r29)
branch_0x802de004:
    cmplwi  r30, 0x0
    beq-    branch_0x802de04c
    li      r23, 0x0
    addi    r24, r23, 0x0
    slwi    r25, r30, 2
    li      r20, 0x0
branch_0x802de01c:
    mr      r3, r25
    bl      __nwa__FUl
    add     r21, r29, r23
    stw     r3, 0x60(r21)
    mr      r3, r25
    bl      __nwa__FUl
    stw     r3, 0x68(r21)
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    stw     r24, 0x70(r21)
    addi    r23, r23, 0x4
    blt+    branch_0x802de01c
branch_0x802de04c:
    li      r20, 0x0
    li      r23, 0x0
branch_0x802de054:
    add     r25, r29, r23
    li      r21, 0x0
    li      r24, 0x0
    b       branch_0x802de0a4

branch_0x802de064:
    lhz     r0, 0x98(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802de09c
    mulli   r3, r0, 0x30
    li      r4, 0x20
    bl      __nwa__FUli
    lwz     r5, 0x60(r25)
    li      r4, 0x20
    stwx    r3, r5, r24
    lhz     r0, 0x98(r31)
    mulli   r3, r0, 0x24
    bl      __nwa__FUli
    lwz     r4, 0x68(r25)
    stwx    r3, r4, r24
branch_0x802de09c:
    addi    r21, r21, 0x1
    addi    r24, r24, 0x4
branch_0x802de0a4:
    cmplw   r21, r30
    blt+    branch_0x802de064
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    addi    r23, r23, 0x4
    blt+    branch_0x802de054
    lhz     r21, 0x2c(r31)
    cmplwi  r21, 0x0
    beq-    branch_0x802de12c
    mulli   r3, r21, 0x34
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x802f
    lis     r5, 0x802f
    subi    r4, r4, 0x2328
    subi    r5, r5, 0x2268
    addi    r7, r21, 0x0
    li      r6, 0x34
    bl      __construct_new_array
    stw     r3, 0x84(r29)
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x802de120

branch_0x802de100:
    lwz     r5, 0x30(r31)
    clrlslwi  r0, r6, 16, 2
    lwz     r4, 0x84(r29)
    addi    r6, r6, 0x1
    lwzx    r5, r5, r0
    addi    r0, r3, 0x14
    stwx    r5, r4, r0
    addi    r3, r3, 0x34
branch_0x802de120:
    lhz     r0, 0x2c(r31)
    cmpw    r6, r0
    blt+    branch_0x802de100
branch_0x802de12c:
    lhz     r21, 0x24(r31)
    cmplwi  r21, 0x0
    beq-    branch_0x802de258
    mulli   r3, r21, 0x48
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x802f
    lis     r5, 0x802f
    subi    r4, r4, 0x24a8
    subi    r5, r5, 0x2454
    addi    r7, r21, 0x0
    li      r6, 0x48
    bl      __construct_new_array
    stw     r3, 0x80(r29)
    rlwinm  r28, r28, 0, 14, 14
    li      r26, 0x0
    li      r23, 0x0
    b       branch_0x802de24c

branch_0x802de174:
    lwz     r4, 0x28(r31)
    clrlslwi  r27, r26, 16, 2
    lwz     r3, 0x80(r29)
    addi    r0, r23, 0x38
    lwzx    r4, r4, r27
    stwx    r4, r3, r0
    lwz     r3, 0x28(r31)
    lwz     r0, 0x80(r29)
    lwzx    r4, r3, r27
    add     r3, r0, r23
    lwz     r5, 0x84(r29)
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r4, r5, r0
    bl      addShapePacket__12J3DMatPacketFP14J3DShapePacket
    lwz     r4, 0xac(r31)
    cmplwi  r28, 0x0
    lwz     r3, 0x80(r29)
    addi    r0, r23, 0x40
    stwx    r4, r3, r0
    beq-    branch_0x802de1f8
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r27
    mr      r24, r3
    bl      countDLSize__11J3DMaterialFv
    addi    r4, r3, 0x0
    addi    r3, r24, 0x0
    bl      newSharedDisplayList__11J3DMaterialFUl
    lwz     r4, 0x80(r29)
    addi    r0, r23, 0x30
    stwx    r3, r4, r0
    b       branch_0x802de244

branch_0x802de1f8:
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r27
    bl      countDLSize__11J3DMaterialFv
    lwz     r0, 0x80(r29)
    addi    r25, r3, 0x0
    li      r3, 0x10
    add     r24, r0, r23
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802de234
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x802de234:
    stw     r3, 0x30(r24)
    mr      r4, r25
    lwz     r3, 0x30(r24)
    bl      newDisplayList__17J3DDisplayListObjFUl
branch_0x802de244:
    addi    r26, r26, 0x1
    addi    r23, r23, 0x48
branch_0x802de24c:
    lhz     r0, 0x24(r31)
    cmpw    r26, r0
    blt+    branch_0x802de174
branch_0x802de258:
    li      r20, 0x0
    li      r26, 0x0
    li      r22, 0x0
    b       branch_0x802de2ac

branch_0x802de268:
    lwz     r3, 0x4(r29)
    clrlslwi  r0, r22, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r21, r3, r0
    lwz     r3, 0x24(r21)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802de2a8
    lwz     r3, 0x4(r21)
    bl      countBumpMtxNum__8J3DShapeCFv
    add     r20, r20, r3
    addi    r26, r26, 0x1
branch_0x802de2a8:
    addi    r22, r22, 0x1
branch_0x802de2ac:
    lhz     r0, 0x24(r31)
    cmpw    r22, r0
    blt+    branch_0x802de268
    clrlwi. r0, r20, 16
    beq-    branch_0x802de2f4
    cmplwi  r30, 0x0
    beq-    branch_0x802de2f4
    clrlslwi  r24, r26, 16, 2
    li      r20, 0x0
    li      r23, 0x0
branch_0x802de2d4:
    mr      r3, r24
    bl      __nwa__FUl
    addi    r20, r20, 0x1
    addi    r0, r23, 0x70
    cmpwi   r20, 0x2
    stwx    r3, r29, r0
    addi    r23, r23, 0x4
    blt+    branch_0x802de2d4
branch_0x802de2f4:
    slwi    r21, r30, 2
    li      r27, 0x0
    li      r24, 0x0
branch_0x802de300:
    add     r22, r29, r24
    li      r28, 0x0
    li      r23, 0x0
    li      r25, 0x0
    b       branch_0x802de368

branch_0x802de314:
    lwz     r3, 0x4(r29)
    clrlslwi  r0, r25, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r20, r3, r0
    lwz     r3, 0x24(r20)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802de364
    mr      r3, r21
    bl      __nwa__FUl
    lwz     r4, 0x70(r22)
    stwx    r3, r4, r23
    addi    r23, r23, 0x4
    lwz     r3, 0x4(r20)
    stw     r28, 0x5c(r3)
    addi    r28, r28, 0x1
branch_0x802de364:
    addi    r25, r25, 0x1
branch_0x802de368:
    lhz     r0, 0x24(r31)
    cmpw    r25, r0
    blt+    branch_0x802de314
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    addi    r24, r24, 0x4
    blt+    branch_0x802de300
    li      r20, 0x0
    li      r25, 0x0
branch_0x802de38c:
    add     r21, r29, r25
    li      r27, 0x0
    li      r22, 0x0
    b       branch_0x802de40c

branch_0x802de39c:
    lwz     r3, 0x4(r29)
    clrlslwi  r0, r22, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r0
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802de408
    li      r23, 0x0
    li      r28, 0x0
    b       branch_0x802de3fc

branch_0x802de3d8:
    lhz     r0, 0x98(r31)
    li      r4, 0x20
    mulli   r3, r0, 0x24
    bl      __nwa__FUli
    lwz     r0, 0x70(r21)
    addi    r23, r23, 0x1
    lwzx    r4, r27, r0
    stwx    r3, r4, r28
    addi    r28, r28, 0x4
branch_0x802de3fc:
    cmplw   r23, r30
    blt+    branch_0x802de3d8
    addi    r27, r27, 0x4
branch_0x802de408:
    addi    r22, r22, 0x1
branch_0x802de40c:
    lhz     r0, 0x24(r31)
    cmpw    r22, r0
    blt+    branch_0x802de39c
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    addi    r25, r25, 0x4
    blt+    branch_0x802de38c
    clrlwi. r0, r26, 16
    beq-    branch_0x802de43c
    lwz     r3, 0x4(r29)
    li      r0, 0x1
    sth     r0, 0x18(r3)
branch_0x802de43c:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x802de458
    addi    r4, r31, 0x3c
    addi    r3, r20, 0x0
    bl      __ct__15J3DVertexBufferFP13J3DVertexData
branch_0x802de458:
    stw     r20, 0x98(r29)
    lmw     r20, 0xb8(sp)
    lwz     r0, 0xec(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl lock__8J3DModelFv
lock__8J3DModelFv: # 0x802de470
    stwu    sp, -0x28(sp)
    li      r5, 0x0
    li      r6, 0x0
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    lwz     r4, 0x4(r3)
    lhz     r4, 0x24(r4)
    cmpwi   r4, 0x0
    ble-    branch_0x802de590
    cmpwi   r4, 0x8
    subi    r7, r4, 0x8
    ble-    branch_0x802de560
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmpwi   r7, 0x0
    mtctr   r0
    ble-    branch_0x802de560
branch_0x802de4b4:
    lwz     r9, 0x80(r3)
    addi    r8, r6, 0x10
    addi    r31, r6, 0x58
    lwzx    r0, r9, r8
    addi    r12, r6, 0xa0
    addi    r11, r6, 0xe8
    ori     r0, r0, 0x1
    stwx    r0, r9, r8
    addi    r10, r6, 0x130
    addi    r9, r6, 0x178
    lwz     r30, 0x80(r3)
    addi    r8, r6, 0x1c0
    addi    r7, r6, 0x208
    lwzx    r0, r30, r31
    addi    r5, r5, 0x8
    addi    r6, r6, 0x240
    ori     r0, r0, 0x1
    stwx    r0, r30, r31
    lwz     r31, 0x80(r3)
    lwzx    r0, r31, r12
    ori     r0, r0, 0x1
    stwx    r0, r31, r12
    lwz     r12, 0x80(r3)
    lwzx    r0, r12, r11
    ori     r0, r0, 0x1
    stwx    r0, r12, r11
    lwz     r11, 0x80(r3)
    lwzx    r0, r11, r10
    ori     r0, r0, 0x1
    stwx    r0, r11, r10
    lwz     r10, 0x80(r3)
    lwzx    r0, r10, r9
    ori     r0, r0, 0x1
    stwx    r0, r10, r9
    lwz     r9, 0x80(r3)
    lwzx    r0, r9, r8
    ori     r0, r0, 0x1
    stwx    r0, r9, r8
    lwz     r8, 0x80(r3)
    lwzx    r0, r8, r7
    ori     r0, r0, 0x1
    stwx    r0, r8, r7
    bdnz+      branch_0x802de4b4
branch_0x802de560:
    subf    r0, r5, r4
    cmpw    r5, r4
    mtctr   r0
    mulli   r4, r5, 0x48
    bge-    branch_0x802de590
branch_0x802de574:
    lwz     r6, 0x80(r3)
    addi    r5, r4, 0x10
    addi    r4, r4, 0x48
    lwzx    r0, r6, r5
    ori     r0, r0, 0x1
    stwx    r0, r6, r5
    bdnz+      branch_0x802de574
branch_0x802de590:
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    blr


.globl unlock__8J3DModelFv
unlock__8J3DModelFv: # 0x802de5a0
    stwu    sp, -0x28(sp)
    li      r5, 0x0
    li      r6, 0x0
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    lwz     r4, 0x4(r3)
    lhz     r4, 0x24(r4)
    cmpwi   r4, 0x0
    ble-    branch_0x802de6c0
    cmpwi   r4, 0x8
    subi    r7, r4, 0x8
    ble-    branch_0x802de690
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmpwi   r7, 0x0
    mtctr   r0
    ble-    branch_0x802de690
branch_0x802de5e4:
    lwz     r9, 0x80(r3)
    addi    r8, r6, 0x10
    addi    r31, r6, 0x58
    lwzx    r0, r9, r8
    addi    r12, r6, 0xa0
    addi    r11, r6, 0xe8
    clrrwi  r0, r0, 1
    stwx    r0, r9, r8
    addi    r10, r6, 0x130
    addi    r9, r6, 0x178
    lwz     r30, 0x80(r3)
    addi    r8, r6, 0x1c0
    addi    r7, r6, 0x208
    lwzx    r0, r30, r31
    addi    r5, r5, 0x8
    addi    r6, r6, 0x240
    clrrwi  r0, r0, 1
    stwx    r0, r30, r31
    lwz     r31, 0x80(r3)
    lwzx    r0, r31, r12
    clrrwi  r0, r0, 1
    stwx    r0, r31, r12
    lwz     r12, 0x80(r3)
    lwzx    r0, r12, r11
    clrrwi  r0, r0, 1
    stwx    r0, r12, r11
    lwz     r11, 0x80(r3)
    lwzx    r0, r11, r10
    clrrwi  r0, r0, 1
    stwx    r0, r11, r10
    lwz     r10, 0x80(r3)
    lwzx    r0, r10, r9
    clrrwi  r0, r0, 1
    stwx    r0, r10, r9
    lwz     r9, 0x80(r3)
    lwzx    r0, r9, r8
    clrrwi  r0, r0, 1
    stwx    r0, r9, r8
    lwz     r8, 0x80(r3)
    lwzx    r0, r8, r7
    clrrwi  r0, r0, 1
    stwx    r0, r8, r7
    bdnz+      branch_0x802de5e4
branch_0x802de690:
    subf    r0, r5, r4
    cmpw    r5, r4
    mtctr   r0
    mulli   r4, r5, 0x48
    bge-    branch_0x802de6c0
branch_0x802de6a4:
    lwz     r6, 0x80(r3)
    addi    r5, r4, 0x10
    addi    r4, r4, 0x48
    lwzx    r0, r6, r5
    clrrwi  r0, r0, 1
    stwx    r0, r6, r5
    bdnz+      branch_0x802de6a4
branch_0x802de6c0:
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    blr


.globl makeDL__8J3DModelFv
makeDL__8J3DModelFv: # 0x802de6d0
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x45dc
    stw     r30, 0x38(sp)
    li      r30, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    stw     r29, 0x38(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0xac(r3)
    stw     r0, 0x54(r31)
    b       branch_0x802de738

branch_0x802de70c:
    clrlwi  r0, r30, 16
    lwz     r3, 0x80(r29)
    mulli   r0, r0, 0x48
    add     r0, r3, r0
    stw     r0, 0x3c(r31)
    clrlslwi  r0, r30, 16, 2
    lwz     r3, 0x4(r29)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r0
    bl      makeDisplayList__11J3DMaterialFv
    addi    r30, r30, 0x1
branch_0x802de738:
    lwz     r3, 0x4(r29)
    clrlwi  r4, r30, 16
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x802de70c
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag: # 0x802de768
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r4, 0x8c(r3)
    bne-    branch_0x802de7a4
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x8(r31)
    b       branch_0x802de7d0

branch_0x802de7a4:
    lwz     r0, 0x8(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x8(r31)
    lwz     r3, 0x8c(r31)
    lwz     r4, 0x4(r31)
    bl      initMtxIndexArray__13J3DSkinDeformFP12J3DModelData
    lwz     r3, 0x98(r31)
    bl      copyTransformedVtxArray__15J3DVertexBufferFv
branch_0x802de7d0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calcWeightEnvelopeMtx__8J3DModelFv
calcWeightEnvelopeMtx__8J3DModelFv: # 0x802de7e4
    stwu    sp, -0x48(sp)
    subi    r9, r13, 0x75a0
    li      r4, -0x1
    stfd    f31, 0x40(sp)
    li      r7, -0x30
    stfd    f30, 0x38(sp)
    stfd    f29, 0x30(sp)
    stfd    f28, 0x28(sp)
    stfd    f27, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lwz     r5, 0x4(r3)
    lwz     r6, 0x8c(r5)
    lwz     r8, 0x90(r5)
    lhz     r11, 0x84(r5)
    subi    r5, r6, 0x2
    subi    r6, r8, 0x4
    psq_l   f27, 0x0(9), 0, 0
    ps_merge00 f10, f27, f27
    ps_merge00 f12, f27, f27
    ps_merge00 f31, f27, f27
    b       branch_0x802de984

branch_0x802de844:
    lwz     r8, 0x54(r3)
    li      r0, 0x1
    add     r28, r8, r4
    stb     r0, 0x0(r28)
    lwz     r0, 0x5c(r3)
    add     r31, r0, r7
    ps_merge00 f9, f27, f27
    ps_merge00 f11, f27, f27
    ps_merge00 f13, f27, f27
    lwz     r8, 0x4(r3)
    clrlwi  r0, r4, 16
    lwz     r8, 0x88(r8)
    li      r29, 0x0
    lbzx    r12, r8, r0
branch_0x802de87c:
    lhzu    r30, 0x2(r5)
    lwz     r8, 0x4(r3)
    clrlwi  r0, r30, 16
    mulli   r9, r0, 0x30
    lwz     r10, 0x94(r8)
    lwz     r8, 0x58(r3)
    mulli   r0, r30, 0x30
    add     r9, r10, r9
    add     r8, r8, r0
    psq_l   f0, 0x0(9), 0, 0
    psq_l   f1, 0x0(8), 0, 0
    psq_l   f3, 0x10(8), 0, 0
    psq_l   f5, 0x20(8), 0, 0
    ps_muls0 f8, f0, f1
    psq_l   f6, 0x10(9), 0, 0
    ps_muls0 f30, f0, f3
    ps_muls0 f29, f0, f5
    psq_l   f7, 0x20(9), 0, 0
    ps_madds1 f8, f6, f1, f8
    psq_l   f2, 0x8(8), 0, 0
    ps_madds1 f30, f6, f3, f30
    psq_l   f4, 0x18(8), 0, 0
    ps_madds1 f29, f6, f5, f29
    psq_l   f6, 0x28(8), 0, 0
    ps_madds0 f8, f7, f2, f8
    lfsu    f0, 0x4(r6)
    ps_madds0 f30, f7, f4, f30
    ps_madds0 f29, f7, f6, f29
    psq_l   f7, 0x8(9), 0, 0
    ps_madds0 f9, f8, f0, f9
    ps_madds0 f11, f30, f0, f11
    ps_madds0 f13, f29, f0, f13
    psq_l   f8, 0x18(9), 0, 0
    ps_muls0 f30, f7, f1
    ps_muls0 f29, f7, f3
    ps_muls0 f28, f7, f5
    psq_l   f7, 0x28(9), 0, 0
    psq_st  f9, 0x0(31), 0, 0
    ps_madds1 f30, f8, f1, f30
    ps_madds1 f29, f8, f3, f29
    ps_madds1 f28, f8, f5, f28
    ps_madds0 f30, f7, f2, f30
    ps_madds0 f29, f7, f4, f29
    ps_madds0 f28, f7, f6, f28
    psq_st  f11, 0x10(31), 0, 0
    psq_st  f13, 0x20(31), 0, 0
    ps_madd f30, f27, f2, f30
    ps_madd f29, f27, f4, f29
    ps_madd f28, f27, f6, f28
    ps_madds0 f10, f30, f0, f10
    ps_madds0 f12, f29, f0, f12
    ps_madds0 f31, f28, f0, f31
    lwz     r8, 0x50(r3)
    addi    r29, r29, 0x1
    lbz     r9, 0x0(r28)
    lbzx    r0, r8, r30
    cmpw    r29, r12
    and     r0, r9, r0
    stb     r0, 0x0(r28)
    blt+    branch_0x802de87c
    psq_st  f10, 0x8(31), 0, 0
    ps_merge00 f10, f27, f27
    psq_st  f12, 0x18(31), 0, 0
    ps_merge00 f12, f27, f27
    psq_st  f31, 0x28(31), 0, 0
    ps_merge00 f31, f27, f27
branch_0x802de984:
    addi    r4, r4, 0x1
    cmpw    r4, r11
    addi    r7, r7, 0x30
    blt+    branch_0x802de844
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    lfd     f29, 0x30(sp)
    lfd     f28, 0x28(sp)
    lfd     f27, 0x20(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x48
    blr


.globl update__8J3DModelFv
update__8J3DModelFv: # 0x802de9c0
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x45dc
    stw     r30, 0x50(sp)
    stw     r31, 0x38(r3)
    lwz     r0, 0x8(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802de9f8
    li      r0, 0x1
    b       branch_0x802de9fc

branch_0x802de9f8:
    li      r0, 0x0
branch_0x802de9fc:
    cmpwi   r0, 0x0
    beq-    branch_0x802dea1c
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x34(r3)
    b       branch_0x802dea30

branch_0x802dea1c:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x34(r3)
branch_0x802dea30:
    lwz     r0, 0x8(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802dea44
    li      r0, 0x1
    b       branch_0x802dea48

branch_0x802dea44:
    li      r0, 0x0
branch_0x802dea48:
    cmpwi   r0, 0x0
    beq-    branch_0x802dea68
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x34(r3)
    b       branch_0x802dea7c

branch_0x802dea68:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x34(r3)
branch_0x802dea7c:
    lwz     r3, 0x98(r31)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(r3)
    lwz     r0, 0xc(r3)
    stw     r0, 0x30(r3)
    lwz     r0, 0x14(r3)
    stw     r0, 0x34(r3)
    lwz     r3, 0x9c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802deab8
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r31)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802deab8:
    lwz     r3, 0x88(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802deacc
    mr      r4, r31
    bl      deform__13J3DDeformDataFP8J3DModel
branch_0x802deacc:
    lwz     r3, 0x90(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802deaec
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802deaec:
    lwz     r3, 0x94(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802deb0c
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802deb0c:
    lwz     r4, 0x4(r31)
    lis     r3, 0x8040
    addi    r30, r3, 0x45dc
    lwz     r0, 0x14(r4)
    addi    r4, r31, 0x14
    addi    r5, r31, 0x20
    stw     r0, 0x30(r30)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x14(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4(r31)
    lwz     r0, 0xac(r3)
    stw     r0, 0x54(r30)
    lwz     r4, 0x4(r31)
    lwz     r3, 0x14(r4)
    lwz     r4, 0x10(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      calcWeightEnvelopeMtx__8J3DModelFv
    lwz     r3, 0x8c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802deb90
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802deb90:
    lwz     r12, 0xc(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x802debac
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x0
    blrl
branch_0x802debac:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl calc__8J3DModelFv
calc__8J3DModelFv: # 0x802debc4
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x45dc
    stw     r30, 0x50(sp)
    stw     r31, 0x38(r3)
    lwz     r0, 0x8(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802debfc
    li      r0, 0x1
    b       branch_0x802dec00

branch_0x802debfc:
    li      r0, 0x0
branch_0x802dec00:
    cmpwi   r0, 0x0
    beq-    branch_0x802dec20
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x34(r3)
    b       branch_0x802dec34

branch_0x802dec20:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x34(r3)
branch_0x802dec34:
    lwz     r0, 0x8(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802dec48
    li      r0, 0x1
    b       branch_0x802dec4c

branch_0x802dec48:
    li      r0, 0x0
branch_0x802dec4c:
    cmpwi   r0, 0x0
    beq-    branch_0x802dec6c
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x34(r3)
    b       branch_0x802dec80

branch_0x802dec6c:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r0, 0x34(r3)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x34(r3)
branch_0x802dec80:
    lwz     r3, 0x98(r31)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(r3)
    lwz     r0, 0xc(r3)
    stw     r0, 0x30(r3)
    lwz     r0, 0x14(r3)
    stw     r0, 0x34(r3)
    lwz     r3, 0x9c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802decbc
    lwz     r12, 0x0(r3)
    lwz     r4, 0x4(r31)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802decbc:
    lwz     r3, 0x88(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802decd0
    mr      r4, r31
    bl      deform__13J3DDeformDataFP8J3DModel
branch_0x802decd0:
    lwz     r3, 0x90(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802decf0
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802decf0:
    lwz     r3, 0x94(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ded10
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802ded10:
    lwz     r4, 0x4(r31)
    lis     r3, 0x8040
    addi    r30, r3, 0x45dc
    lwz     r0, 0x14(r4)
    addi    r4, r31, 0x14
    addi    r5, r31, 0x20
    stw     r0, 0x30(r30)
    lwz     r3, 0x4(r31)
    lwz     r3, 0x14(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4(r31)
    lwz     r0, 0xac(r3)
    stw     r0, 0x54(r30)
    lwz     r4, 0x4(r31)
    lwz     r3, 0x14(r4)
    lwz     r4, 0x10(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      calcWeightEnvelopeMtx__8J3DModelFv
    lwz     r3, 0x8c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802ded94
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802ded94:
    lwz     r12, 0xc(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x802dedb0
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x0
    blrl
branch_0x802dedb0:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl entry__8J3DModelFv
entry__8J3DModelFv: # 0x802dedc8
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x45dc
    stwu    sp, -0x8(sp)
    stw     r3, 0x38(r4)
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802dedf4
    li      r0, 0x1
    b       branch_0x802dedf8

branch_0x802dedf4:
    li      r0, 0x0
branch_0x802dedf8:
    cmpwi   r0, 0x0
    beq-    branch_0x802dee18
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    lwz     r0, 0x34(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x34(r4)
    b       branch_0x802dee2c

branch_0x802dee18:
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    lwz     r0, 0x34(r4)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x34(r4)
branch_0x802dee2c:
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802dee40
    li      r0, 0x1
    b       branch_0x802dee44

branch_0x802dee40:
    li      r0, 0x0
branch_0x802dee44:
    cmpwi   r0, 0x0
    beq-    branch_0x802dee64
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    lwz     r0, 0x34(r4)
    ori     r0, r0, 0x8
    stw     r0, 0x34(r4)
    b       branch_0x802dee78

branch_0x802dee64:
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    lwz     r0, 0x34(r4)
    rlwinm  r0, r0, 0, 29, 27
    stw     r0, 0x34(r4)
branch_0x802dee78:
    lwz     r5, 0x4(r3)
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    lwz     r0, 0xac(r5)
    stw     r0, 0x54(r4)
    lwz     r4, 0x4(r3)
    lwz     r3, 0x14(r4)
    lwz     r4, 0x10(r4)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl viewCalc__8J3DModelFv
viewCalc__8J3DModelFv: # 0x802deeb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    mr      r30, r3
    lwz     r0, 0x7c(r3)
    lwz     r4, 0x60(r3)
    slwi    r0, r0, 2
    lwz     r3, 0x64(r3)
    add     r5, r4, r0
    lwz     r4, 0x0(r5)
    lwzx    r0, r3, r0
    stw     r0, 0x0(r5)
    lwz     r0, 0x7c(r30)
    lwz     r3, 0x64(r30)
    slwi    r0, r0, 2
    stwx    r4, r3, r0
    lwz     r0, 0x7c(r30)
    lwz     r4, 0x68(r30)
    slwi    r0, r0, 2
    lwz     r3, 0x6c(r30)
    add     r5, r4, r0
    lwz     r4, 0x0(r5)
    lwzx    r0, r3, r0
    stw     r0, 0x0(r5)
    lwz     r0, 0x7c(r30)
    lwz     r3, 0x6c(r30)
    slwi    r0, r0, 2
    stwx    r4, r3, r0
    lwz     r0, 0x8(r30)
    clrlwi. r0, r0, 31
    beq-    branch_0x802def44
    li      r0, 0x1
    b       branch_0x802def48

branch_0x802def44:
    li      r0, 0x0
branch_0x802def48:
    cmpwi   r0, 0x0
    beq-    branch_0x802df000
    li      r31, 0x0
    b       branch_0x802def94

branch_0x802def58:
    lwz     r3, 0xa0(r5)
    clrlslwi  r0, r31, 16, 1
    lwz     r5, 0x7c(r30)
    clrlwi  r4, r31, 16
    lhzx    r0, r3, r0
    lwz     r6, 0x64(r30)
    slwi    r5, r5, 2
    mulli   r4, r4, 0x30
    lwz     r3, 0x58(r30)
    lwzx    r5, r6, r5
    mulli   r0, r0, 0x30
    add     r4, r5, r4
    add     r3, r3, r0
    bl      PSMTXCopy
    addi    r31, r31, 0x1
branch_0x802def94:
    lwz     r5, 0x4(r30)
    clrlwi  r0, r31, 16
    lhz     r3, 0x9a(r5)
    cmplw   r0, r3
    blt+    branch_0x802def58
    li      r31, 0x0
    b       branch_0x802defe8

branch_0x802defb0:
    lhz     r4, 0x9a(r4)
    clrlwi  r5, r31, 16
    lwz     r6, 0x7c(r30)
    mulli   r0, r5, 0x30
    lwz     r7, 0x64(r30)
    lwz     r3, 0x5c(r30)
    add     r4, r5, r4
    slwi    r5, r6, 2
    mulli   r4, r4, 0x30
    lwzx    r5, r7, r5
    add     r4, r5, r4
    add     r3, r3, r0
    bl      PSMTXCopy
    addi    r31, r31, 0x1
branch_0x802defe8:
    lwz     r4, 0x4(r30)
    clrlwi  r0, r31, 16
    lhz     r3, 0x84(r4)
    cmplw   r0, r3
    blt+    branch_0x802defb0
    b       branch_0x802df078

branch_0x802df000:
    lwz     r5, 0x4(r30)
    lis     r3, 0x8040
    addi    r0, r3, 0x45dc
    lhz     r7, 0x9a(r5)
    mr      r31, r0
    cmplwi  r7, 0x0
    beq-    branch_0x802df03c
    lwz     r0, 0x7c(r30)
    mr      r3, r31
    lwz     r4, 0x64(r30)
    slwi    r0, r0, 2
    lwz     r5, 0xa0(r5)
    lwzx    r6, r4, r0
    lwz     r4, 0x58(r30)
    bl      J3DMTXConcatArrayIndexedSrc__FPA4_CfPA3_A4_CfPCUsPA3_A4_fUl
branch_0x802df03c:
    lwz     r4, 0x4(r30)
    lhz     r5, 0x9a(r4)
    lhz     r0, 0x98(r4)
    cmplw   r0, r5
    ble-    branch_0x802df078
    lwz     r3, 0x7c(r30)
    mulli   r0, r5, 0x30
    lwz     r5, 0x64(r30)
    lhz     r6, 0x84(r4)
    slwi    r3, r3, 2
    lwz     r4, 0x5c(r30)
    lwzx    r5, r5, r3
    addi    r3, r31, 0x0
    add     r5, r5, r0
    bl      J3DPSMtxArrayConcat__FPA4_fPA4_fPA4_fUl
branch_0x802df078:
    mr      r3, r30
    bl      calcNrmMtx__8J3DModelFv
    mr      r3, r30
    bl      calcBBoard__8J3DModelFv
    mr      r3, r30
    bl      calcBumpMtx__8J3DModelFv
    lwz     r3, 0x4(r30)
    lwz     r0, 0x7c(r30)
    lhz     r4, 0x98(r3)
    lwz     r3, 0x64(r30)
    slwi    r0, r0, 2
    mulli   r4, r4, 0x30
    lwzx    r3, r3, r0
    bl      DCStoreRange
    lwz     r3, 0x4(r30)
    lwz     r0, 0x7c(r30)
    lhz     r4, 0x98(r3)
    lwz     r3, 0x6c(r30)
    slwi    r0, r0, 2
    mulli   r4, r4, 0x24
    lwzx    r3, r3, r0
    bl      DCStoreRange
    mr      r3, r30
    bl      prepareShapePackets__8J3DModelFv
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl calcNrmMtx__8J3DModelFv
calcNrmMtx__8J3DModelFv: # 0x802df0f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    b       branch_0x802df21c

branch_0x802df110:
    lwz     r3, 0x9c(r4)
    clrlwi  r0, r31, 16
    lbzx    r3, r3, r0
    cmplwi  r3, 0x0
    bne-    branch_0x802df1a0
    lwz     r4, 0xa0(r4)
    slwi    r3, r0, 1
    lwz     r5, 0x50(r30)
    lhzx    r3, r4, r3
    lbzx    r3, r5, r3
    cmplwi  r3, 0x1
    bne-    branch_0x802df170
    lwz     r4, 0x7c(r30)
    mulli   r5, r0, 0x30
    lwz     r6, 0x64(r30)
    lwz     r3, 0x6c(r30)
    slwi    r4, r4, 2
    lwzx    r6, r6, r4
    mulli   r0, r0, 0x24
    lwzx    r4, r3, r4
    add     r3, r6, r5
    add     r4, r4, r0
    bl      J3DPSMtx33CopyFrom34__FPA4_fPA3_f
    b       branch_0x802df218

branch_0x802df170:
    lwz     r5, 0x7c(r30)
    mulli   r4, r0, 0x24
    lwz     r6, 0x6c(r30)
    lwz     r3, 0x64(r30)
    slwi    r7, r5, 2
    lwzx    r5, r6, r7
    mulli   r0, r0, 0x30
    lwzx    r3, r3, r7
    add     r4, r5, r4
    add     r3, r3, r0
    bl      J3DPSCalcInverseTranspose__FPA4_fPA3_f
    b       branch_0x802df218

branch_0x802df1a0:
    lwz     r4, 0xa0(r4)
    slwi    r3, r0, 1
    lwz     r5, 0x54(r30)
    lhzx    r3, r4, r3
    lbzx    r3, r5, r3
    cmplwi  r3, 0x1
    bne-    branch_0x802df1ec
    lwz     r4, 0x7c(r30)
    mulli   r5, r0, 0x30
    lwz     r6, 0x64(r30)
    lwz     r3, 0x6c(r30)
    slwi    r4, r4, 2
    lwzx    r6, r6, r4
    mulli   r0, r0, 0x24
    lwzx    r4, r3, r4
    add     r3, r6, r5
    add     r4, r4, r0
    bl      J3DPSMtx33CopyFrom34__FPA4_fPA3_f
    b       branch_0x802df218

branch_0x802df1ec:
    lwz     r5, 0x7c(r30)
    mulli   r4, r0, 0x24
    lwz     r6, 0x6c(r30)
    lwz     r3, 0x64(r30)
    slwi    r7, r5, 2
    lwzx    r5, r6, r7
    mulli   r0, r0, 0x30
    lwzx    r3, r3, r7
    add     r4, r5, r4
    add     r3, r3, r0
    bl      J3DPSCalcInverseTranspose__FPA4_fPA3_f
branch_0x802df218:
    addi    r31, r31, 0x1
branch_0x802df21c:
    lwz     r4, 0x4(r30)
    clrlwi  r0, r31, 16
    lhz     r3, 0x98(r4)
    cmplw   r0, r3
    blt+    branch_0x802df110
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl calcBumpMtx__8J3DModelFv
calcBumpMtx__8J3DModelFv: # 0x802df248
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r30, r3
    lwz     r3, 0x4(r3)
    lhz     r0, 0x18(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802df328
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x802df318

branch_0x802df278:
    lwz     r3, 0x28(r3)
    clrlslwi  r0, r31, 16, 2
    lwzx    r26, r3, r0
    lwz     r3, 0x24(r26)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802df314
    lwz     r3, 0x24(r26)
    lwz     r4, 0x74(r30)
    lwz     r12, 0x0(r3)
    lwz     r0, 0x7c(r30)
    lwz     r12, 0x40(r12)
    lwzx    r5, r4, r29
    slwi    r0, r0, 2
    lwz     r4, 0x6c(r30)
    mtlr    r12
    lwzx    r28, r5, r0
    lwzx    r27, r4, r0
    blrl
    lwz     r0, 0x4(r26)
    addi    r4, r3, 0x4
    addi    r5, r27, 0x0
    mr      r3, r0
    addi    r6, r28, 0x0
    bl      calcNBTScale__8J3DShapeFRC3VecPA3_A3_fPA3_A3_f
    lwz     r4, 0x4(r30)
    lwz     r3, 0x74(r30)
    lwz     r0, 0x7c(r30)
    lhz     r4, 0x98(r4)
    lwzx    r3, r3, r29
    slwi    r0, r0, 2
    mulli   r4, r4, 0x24
    lwzx    r3, r3, r0
    bl      DCStoreRange
    addi    r29, r29, 0x4
branch_0x802df314:
    addi    r31, r31, 0x1
branch_0x802df318:
    lwz     r3, 0x4(r30)
    lhz     r0, 0x24(r3)
    cmpw    r31, r0
    blt+    branch_0x802df278
branch_0x802df328:
    lmw     r26, 0x30(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl calcBBoard__8J3DModelFv
calcBBoard__8J3DModelFv: # 0x802df33c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stfd    f28, 0xe0(sp)
    stfd    f27, 0xd8(sp)
    stfd    f26, 0xd0(sp)
    stfd    f25, 0xc8(sp)
    stw     r31, 0xc4(sp)
    stw     r30, 0xc0(sp)
    stw     r29, 0xbc(sp)
    mr      r29, r3
    stw     r28, 0xb8(sp)
    lwz     r3, 0x4(r3)
    lhz     r0, 0x1a(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802df808
    lfs     f28, 0x28c(rtoc)
    li      r30, 0x0
    lfd     f29, 0x290(rtoc)
    lfd     f30, 0x298(rtoc)
    lfs     f31, 0x288(rtoc)
    b       branch_0x802df7f4

branch_0x802df3a0:
    lwz     r3, 0x9c(r4)
    clrlwi  r31, r30, 16
    lbzx    r0, r3, r31
    cmplwi  r0, 0x0
    bne-    branch_0x802df7f0
    lwz     r3, 0xa0(r4)
    slwi    r0, r31, 1
    lwz     r4, 0x20(r4)
    lhzx    r0, r3, r0
    slwi    r0, r0, 2
    lwzx    r3, r4, r0
    lbz     r0, 0x1a(r3)
    rlwinm  r3, r0, 0, 24, 27
    extrwi  r0, r0, 4, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802df5ac
    lwz     r3, 0x7c(r29)
    mulli   r0, r31, 0x30
    lwz     r4, 0x64(r29)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    add     r3, r3, r0
    lfs     f1, 0x0(r3)
    lfs     f0, 0x10(r3)
    lfs     f2, 0x20(r3)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f28
    ble-    branch_0x802df464
    frsqrte f2, f0
    fmul    f1, f2, f2
    fmul    f2, f29, f2
    fnmsub   f1, f0, f1, f30
    fmul    f2, f2, f1
    fmul    f1, f2, f2
    fmul    f2, f29, f2
    fnmsub   f1, f0, f1, f30
    fmul    f2, f2, f1
    fmul    f1, f2, f2
    fmul    f2, f29, f2
    fnmsub   f1, f0, f1, f30
    fmul    f1, f2, f1
    fmul    f0, f0, f1
    frsp    f0, f0
    stfs    f0, 0x54(sp)
    lfs     f0, 0x54(sp)
branch_0x802df464:
    lfs     f2, 0x4(r3)
    lfs     f1, 0x14(r3)
    fmuls   f2, f2, f2
    lfs     f3, 0x24(r3)
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f28
    ble-    branch_0x802df4d0
    frsqrte f3, f1
    fmul    f2, f3, f3
    fmul    f3, f29, f3
    fnmsub   f2, f1, f2, f30
    fmul    f3, f3, f2
    fmul    f2, f3, f3
    fmul    f3, f29, f3
    fnmsub   f2, f1, f2, f30
    fmul    f3, f3, f2
    fmul    f2, f3, f3
    fmul    f3, f29, f3
    fnmsub   f2, f1, f2, f30
    fmul    f2, f3, f2
    fmul    f1, f1, f2
    frsp    f1, f1
    stfs    f1, 0x50(sp)
    lfs     f1, 0x50(sp)
branch_0x802df4d0:
    lfs     f3, 0x8(r3)
    lfs     f2, 0x18(r3)
    fmuls   f3, f3, f3
    lfs     f4, 0x28(r3)
    fmuls   f2, f2, f2
    fmuls   f4, f4, f4
    fadds   f2, f3, f2
    fadds   f4, f4, f2
    fcmpo   cr0, f4, f28
    ble-    branch_0x802df53c
    frsqrte f3, f4
    fmul    f2, f3, f3
    fmul    f3, f29, f3
    fnmsub   f2, f4, f2, f30
    fmul    f3, f3, f2
    fmul    f2, f3, f3
    fmul    f3, f29, f3
    fnmsub   f2, f4, f2, f30
    fmul    f3, f3, f2
    fmul    f2, f3, f3
    fmul    f3, f29, f3
    fnmsub   f2, f4, f2, f30
    fmul    f2, f3, f2
    fmul    f2, f4, f2
    frsp    f2, f2
    stfs    f2, 0x4c(sp)
    lfs     f4, 0x4c(sp)
branch_0x802df53c:
    stfs    f0, 0x0(r3)
    fdivs   f2, f31, f0
    mulli   r0, r31, 0x24
    stfs    f28, 0x4(r3)
    stfs    f28, 0x8(r3)
    stfs    f28, 0x10(r3)
    stfs    f1, 0x14(r3)
    fdivs   f1, f31, f1
    stfs    f28, 0x18(r3)
    stfs    f28, 0x20(r3)
    stfs    f28, 0x24(r3)
    stfs    f4, 0x28(r3)
    lwz     r3, 0x7c(r29)
    fdivs   f0, f31, f4
    lwz     r4, 0x6c(r29)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    add     r3, r3, r0
    stfs    f2, 0x0(r3)
    stfs    f28, 0x4(r3)
    stfs    f28, 0x8(r3)
    stfs    f28, 0xc(r3)
    stfs    f1, 0x10(r3)
    stfs    f28, 0x14(r3)
    stfs    f28, 0x18(r3)
    stfs    f28, 0x1c(r3)
    stfs    f0, 0x20(r3)
    b       branch_0x802df7f0

branch_0x802df5ac:
    srawi   r0, r3, 4
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x2
    bne-    branch_0x802df7f0
    lwz     r3, 0x7c(r29)
    mulli   r0, r31, 0x30
    lwz     r4, 0x64(r29)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    add     r28, r3, r0
    lfs     f1, 0x0(r28)
    lfs     f0, 0x10(r28)
    lfs     f2, 0x20(r28)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f27, f2, f0
    fcmpo   cr0, f27, f28
    ble-    branch_0x802df640
    frsqrte f1, f27
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f27, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f27, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f27, f0, f30
    fmul    f0, f1, f0
    fmul    f0, f27, f0
    frsp    f0, f0
    stfs    f0, 0x40(sp)
    lfs     f27, 0x40(sp)
branch_0x802df640:
    lfs     f1, 0x4(r28)
    lfs     f0, 0x14(r28)
    fmuls   f1, f1, f1
    lfs     f2, 0x24(r28)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f26, f2, f0
    fcmpo   cr0, f26, f28
    ble-    branch_0x802df6ac
    frsqrte f1, f26
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f26, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f26, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f26, f0, f30
    fmul    f0, f1, f0
    fmul    f0, f26, f0
    frsp    f0, f0
    stfs    f0, 0x3c(sp)
    lfs     f26, 0x3c(sp)
branch_0x802df6ac:
    lfs     f1, 0x8(r28)
    lfs     f0, 0x18(r28)
    fmuls   f1, f1, f1
    lfs     f2, 0x28(r28)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f25, f2, f0
    fcmpo   cr0, f25, f28
    ble-    branch_0x802df718
    frsqrte f1, f25
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f25, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f25, f0, f30
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f29, f1
    fnmsub   f0, f25, f0, f30
    fmul    f0, f1, f0
    fmul    f0, f25, f0
    frsp    f0, f0
    stfs    f0, 0x38(sp)
    lfs     f25, 0x38(sp)
branch_0x802df718:
    stfs    f31, 0x84(sp)
    addi    r3, sp, 0x84
    addi    r4, sp, 0x78
    stfs    f28, 0x88(sp)
    addi    r5, sp, 0x6c
    stfs    f28, 0x8c(sp)
    lfs     f0, 0x4(r28)
    stfs    f0, 0x78(sp)
    lfs     f0, 0x14(r28)
    stfs    f0, 0x7c(sp)
    lfs     f0, 0x24(r28)
    stfs    f0, 0x80(sp)
    bl      PSVECCrossProduct
    addi    r3, sp, 0x78
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    addi    r3, sp, 0x6c
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    lfs     f0, 0x84(sp)
    mulli   r0, r31, 0x24
    fmuls   f0, f0, f27
    mr      r3, r28
    stfs    f0, 0x0(r28)
    lfs     f0, 0x78(sp)
    fmuls   f0, f0, f26
    stfs    f0, 0x4(r28)
    lfs     f0, 0x6c(sp)
    fmuls   f0, f0, f25
    stfs    f0, 0x8(r28)
    lfs     f0, 0x88(sp)
    fmuls   f0, f0, f27
    stfs    f0, 0x10(r28)
    lfs     f0, 0x7c(sp)
    fmuls   f0, f0, f26
    stfs    f0, 0x14(r28)
    lfs     f0, 0x70(sp)
    fmuls   f0, f0, f25
    stfs    f0, 0x18(r28)
    lfs     f0, 0x8c(sp)
    fmuls   f0, f0, f27
    stfs    f0, 0x20(r28)
    lfs     f0, 0x80(sp)
    fmuls   f0, f0, f26
    stfs    f0, 0x24(r28)
    lfs     f0, 0x74(sp)
    fmuls   f0, f0, f25
    stfs    f0, 0x28(r28)
    lwz     r4, 0x7c(r29)
    lwz     r5, 0x6c(r29)
    slwi    r4, r4, 2
    lwzx    r4, r5, r4
    add     r4, r4, r0
    bl      J3DPSCalcInverseTranspose__FPA4_fPA3_f
branch_0x802df7f0:
    addi    r30, r30, 0x1
branch_0x802df7f4:
    lwz     r4, 0x4(r29)
    clrlwi  r0, r30, 16
    lhz     r3, 0x98(r4)
    cmplw   r0, r3
    blt+    branch_0x802df3a0
branch_0x802df808:
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    mtlr    r0
    lfd     f29, 0xe8(sp)
    lfd     f28, 0xe0(sp)
    lfd     f27, 0xd8(sp)
    lfd     f26, 0xd0(sp)
    lfd     f25, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    lwz     r29, 0xbc(sp)
    lwz     r28, 0xb8(sp)
    addi    sp, sp, 0x100
    blr


.globl prepareShapePackets__8J3DModelFv
prepareShapePackets__8J3DModelFv: # 0x802df844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    addi    r5, r31, 0x7c
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    lwz     r4, 0x4(r3)
    li      r3, 0x0
    lhz     r0, 0x2c(r4)
    b       branch_0x802df970

branch_0x802df874:
    lwz     r4, 0x4(r31)
    clrlwi  r6, r3, 16
    clrlslwi  r8, r3, 16, 2
    lwz     r7, 0x84(r31)
    lwz     r9, 0x30(r4)
    lwz     r4, 0x50(r31)
    mulli   r6, r6, 0x34
    lwzx    r8, r9, r8
    stw     r4, 0x4c(r8)
    add     r4, r7, r6
    lwz     r6, 0x8(r31)
    rlwinm. r6, r6, 0, 29, 29
    beq-    branch_0x802df8b0
    li      r6, 0x1
    b       branch_0x802df8b4

branch_0x802df8b0:
    li      r6, 0x0
branch_0x802df8b4:
    cmpwi   r6, 0x0
    beq-    branch_0x802df8cc
    lwz     r6, 0x8(r8)
    ori     r6, r6, 0x4
    stw     r6, 0x8(r8)
    b       branch_0x802df8d8

branch_0x802df8cc:
    lwz     r6, 0x8(r8)
    rlwinm  r6, r6, 0, 30, 28
    stw     r6, 0x8(r8)
branch_0x802df8d8:
    lwz     r6, 0x8(r31)
    rlwinm. r6, r6, 0, 28, 28
    beq-    branch_0x802df8ec
    li      r6, 0x1
    b       branch_0x802df8f0

branch_0x802df8ec:
    li      r6, 0x0
branch_0x802df8f0:
    cmpwi   r6, 0x0
    beq-    branch_0x802df928
    lwz     r6, 0x8(r8)
    rlwinm. r6, r6, 0, 27, 27
    beq-    branch_0x802df90c
    li      r6, 0x1
    b       branch_0x802df910

branch_0x802df90c:
    li      r6, 0x0
branch_0x802df910:
    cmpwi   r6, 0x0
    bne-    branch_0x802df928
    lwz     r6, 0x8(r8)
    ori     r6, r6, 0x8
    stw     r6, 0x8(r8)
    b       branch_0x802df934

branch_0x802df928:
    lwz     r6, 0x8(r8)
    rlwinm  r6, r6, 0, 29, 27
    stw     r6, 0x8(r8)
branch_0x802df934:
    lwz     r6, 0x98(r31)
    addi    r3, r3, 0x1
    lwz     r6, 0x2c(r6)
    stw     r6, 0x24(r4)
    lwz     r6, 0x98(r31)
    lwz     r6, 0x30(r6)
    stw     r6, 0x28(r4)
    lwz     r6, 0x98(r31)
    lwz     r6, 0x34(r6)
    stw     r6, 0x2c(r4)
    lwz     r6, 0x64(r31)
    stw     r6, 0x18(r4)
    lwz     r6, 0x6c(r31)
    stw     r6, 0x1c(r4)
    stw     r5, 0x20(r4)
branch_0x802df970:
    clrlwi  r4, r3, 16
    cmplw   r4, r0
    blt+    branch_0x802df874
    li      r29, 0x0
    b       branch_0x802df9dc

branch_0x802df984:
    lwz     r3, 0x28(r3)
    clrlslwi  r0, r29, 16, 2
    lwzx    r30, r3, r0
    lwz     r3, 0x24(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802df9d8
    lwz     r3, 0x4(r30)
    lwz     r6, 0x74(r31)
    lhz     r0, 0x4(r3)
    lwz     r5, 0x5c(r3)
    mulli   r3, r0, 0x34
    lwz     r4, 0x84(r31)
    slwi    r0, r5, 2
    lwzx    r5, r6, r0
    addi    r0, r3, 0x1c
    stwx    r5, r4, r0
branch_0x802df9d8:
    addi    r29, r29, 0x1
branch_0x802df9dc:
    lwz     r3, 0x4(r31)
    lhz     r0, 0x24(r3)
    cmpw    r29, r0
    blt+    branch_0x802df984
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr

