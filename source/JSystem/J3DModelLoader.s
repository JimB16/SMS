
.globl load__22J3DModelLoaderDataBaseFPCvUl
load__22J3DModelLoaderDataBaseFPCvUl: # 0x802e6f00
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    bne-    branch_0x802e6f28
    li      r3, 0x0
    b       branch_0x802e700c

branch_0x802e6f28:
    lwz     r6, 0x0(r3)
    addis   r0, r6, 0xb5cd
    cmplwi  r0, 0x4431
    bne-    branch_0x802e6f50
    lwz     r4, 0x4(r3)
    addis   r0, r4, 0x9d93
    cmplwi  r0, 0x6431
    bne-    branch_0x802e6f50
    li      r3, 0x0
    b       branch_0x802e700c

branch_0x802e6f50:
    addis   r0, r6, 0xb5cd
    cmplwi  r0, 0x4432
    bne-    branch_0x802e6fac
    lwz     r4, 0x4(r3)
    addis   r0, r4, 0x9d93
    cmplwi  r0, 0x6432
    bne-    branch_0x802e6fac
    lis     r4, 0x803e
    addi    r31, r4, 0x13bc
    stw     r31, 0x28(sp)
    li      r0, 0x0
    lis     r4, 0x803e
    stw     r0, 0x2c(sp)
    addi    r30, r4, 0x1360
    addi    r4, r3, 0x0
    stw     r0, 0x34(sp)
    addi    r3, sp, 0x28
    stw     r0, 0x30(sp)
    stw     r30, 0x28(sp)
    bl      load__14J3DModelLoaderFPCvUl
    stw     r30, 0x28(sp)
    stw     r31, 0x28(sp)
    b       branch_0x802e700c

branch_0x802e6fac:
    addis   r0, r6, 0xb5cd
    cmplwi  r0, 0x4432
    bne-    branch_0x802e7008
    lwz     r4, 0x4(r3)
    addis   r0, r4, 0x9d93
    cmplwi  r0, 0x6433
    bne-    branch_0x802e7008
    lis     r4, 0x803e
    addi    r30, r4, 0x13bc
    stw     r30, 0x18(sp)
    li      r0, 0x0
    lis     r4, 0x803e
    stw     r0, 0x1c(sp)
    addi    r31, r4, 0x1388
    addi    r4, r3, 0x0
    stw     r0, 0x24(sp)
    addi    r3, sp, 0x18
    stw     r0, 0x20(sp)
    stw     r31, 0x18(sp)
    bl      load__14J3DModelLoaderFPCvUl
    stw     r31, 0x18(sp)
    stw     r30, 0x18(sp)
    b       branch_0x802e700c

branch_0x802e7008:
    li      r3, 0x0
branch_0x802e700c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__18J3DModelLoader_v26Fv
__dt__18J3DModelLoader_v26Fv: # 0x802e7024
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e7068
    lis     r3, 0x803e
    addi    r0, r3, 0x1388
    stw     r0, 0x0(r31)
    beq-    branch_0x802e7058
    lis     r3, 0x803e
    addi    r0, r3, 0x13bc
    stw     r0, 0x0(r31)
branch_0x802e7058:
    extsh.  r0, r4
    ble-    branch_0x802e7068
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e7068:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18J3DModelLoader_v21Fv
__dt__18J3DModelLoader_v21Fv: # 0x802e7080
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e70c4
    lis     r3, 0x803e
    addi    r0, r3, 0x1360
    stw     r0, 0x0(r31)
    beq-    branch_0x802e70b4
    lis     r3, 0x803e
    addi    r0, r3, 0x13bc
    stw     r0, 0x0(r31)
branch_0x802e70b4:
    extsh.  r0, r4
    ble-    branch_0x802e70c4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e70c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__14J3DModelLoaderFv
__dt__14J3DModelLoaderFv: # 0x802e70dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e7110
    lis     r3, 0x803e
    addi    r3, r3, 0x13bc
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802e7110
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e7110:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadMaterialTable__22J3DModelLoaderDataBaseFPCv
loadMaterialTable__22J3DModelLoaderDataBaseFPCv: # 0x802e7128
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    bne-    branch_0x802e714c
    li      r3, 0x0
    b       branch_0x802e7230

branch_0x802e714c:
    lwz     r5, 0x0(r3)
    addis   r0, r5, 0xb5cd
    cmplwi  r0, 0x4431
    bne-    branch_0x802e7174
    lwz     r4, 0x4(r3)
    addis   r0, r4, 0x9d93
    cmplwi  r0, 0x7431
    bne-    branch_0x802e7174
    li      r3, 0x0
    b       branch_0x802e7230

branch_0x802e7174:
    addis   r0, r5, 0xb5cd
    cmplwi  r0, 0x4432
    bne-    branch_0x802e71d0
    lwz     r4, 0x4(r3)
    addis   r0, r4, 0x9d93
    cmplwi  r0, 0x7432
    bne-    branch_0x802e71d0
    lis     r4, 0x803e
    addi    r31, r4, 0x13bc
    stw     r31, 0x24(sp)
    li      r0, 0x0
    lis     r4, 0x803e
    stw     r0, 0x28(sp)
    addi    r30, r4, 0x1360
    addi    r4, r3, 0x0
    stw     r0, 0x30(sp)
    addi    r3, sp, 0x24
    stw     r0, 0x2c(sp)
    stw     r30, 0x24(sp)
    bl      loadMaterialTable__14J3DModelLoaderFPCv
    stw     r30, 0x24(sp)
    stw     r31, 0x24(sp)
    b       branch_0x802e7230

branch_0x802e71d0:
    addis   r0, r5, 0xb5cd
    cmplwi  r0, 0x4432
    bne-    branch_0x802e722c
    lwz     r4, 0x4(r3)
    addis   r0, r4, 0x9d93
    cmplwi  r0, 0x7433
    bne-    branch_0x802e722c
    lis     r4, 0x803e
    addi    r30, r4, 0x13bc
    stw     r30, 0x14(sp)
    li      r0, 0x0
    lis     r4, 0x803e
    stw     r0, 0x18(sp)
    addi    r31, r4, 0x1388
    addi    r4, r3, 0x0
    stw     r0, 0x20(sp)
    addi    r3, sp, 0x14
    stw     r0, 0x1c(sp)
    stw     r31, 0x14(sp)
    bl      loadMaterialTable__14J3DModelLoaderFPCv
    stw     r31, 0x14(sp)
    stw     r30, 0x14(sp)
    b       branch_0x802e7230

branch_0x802e722c:
    li      r3, 0x0
branch_0x802e7230:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl load__14J3DModelLoaderFPCvUl
load__14J3DModelLoaderFPCvUl: # 0x802e7248
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r17, 0x1c(sp)
    addi    r25, r3, 0x0
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    li      r3, 0xbc
    bl      __nw__FUl
    mr.     r17, r3
    beq-    branch_0x802e727c
    mr      r3, r17
    bl      __ct__12J3DModelDataFv
branch_0x802e727c:
    stw     r17, 0x4(r25)
    lwz     r3, 0x4(r25)
    bl      clear__12J3DModelDataFv
    lwz     r4, 0x4(r25)
    lis     r10, 0x4d41
    lis     r3, 0x5654
    lis     r5, 0x5445
    stw     r26, 0x4(r4)
    lis     r4, 0x5348
    lis     r6, 0x4a4e
    lis     r7, 0x4452
    lis     r9, 0x494e
    lis     r8, 0x4556
    addi    r29, r26, 0x20
    addi    r24, r3, 0x5831
    addi    r21, r5, 0x5831
    addi    r22, r4, 0x5031
    addi    r20, r6, 0x5431
    addi    r19, r7, 0x5731
    addi    r31, r10, 0x5432
    addi    r17, r9, 0x4631
    addi    r18, r8, 0x5031
    addi    r23, r10, 0x5434
    li      r30, 0x0
    li      r28, 0x0
    b       branch_0x802e7418

branch_0x802e72e4:
    lwz     r0, 0x0(r29)
    cmpw    r0, r31
    beq-    branch_0x802e73c8
    bge-    branch_0x802e7324
    cmpw    r0, r17
    beq-    branch_0x802e7354
    bge-    branch_0x802e7318
    cmpw    r0, r18
    beq-    branch_0x802e7378
    bge-    branch_0x802e7408
    cmpw    r0, r19
    beq-    branch_0x802e7388
    b       branch_0x802e7408

branch_0x802e7318:
    cmpw    r0, r20
    beq-    branch_0x802e7398
    b       branch_0x802e7408

branch_0x802e7324:
    cmpw    r0, r21
    beq-    branch_0x802e73fc
    bge-    branch_0x802e7348
    cmpw    r0, r22
    beq-    branch_0x802e73e8
    bge-    branch_0x802e7408
    cmpw    r0, r23
    bge-    branch_0x802e7408
    b       branch_0x802e73a8

branch_0x802e7348:
    cmpw    r0, r24
    beq-    branch_0x802e7368
    b       branch_0x802e7408

branch_0x802e7354:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    bl      readInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
    b       branch_0x802e7408

branch_0x802e7368:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    bl      readVertex__14J3DModelLoaderFPC14J3DVertexBlock
    b       branch_0x802e7408

branch_0x802e7378:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    bl      readEnvelop__14J3DModelLoaderFPC15J3DEnvelopBlock
    b       branch_0x802e7408

branch_0x802e7388:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    bl      readDraw__14J3DModelLoaderFPC12J3DDrawBlock
    b       branch_0x802e7408

branch_0x802e7398:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    bl      readJoint__14J3DModelLoaderFPC13J3DJointBlock
    b       branch_0x802e7408

branch_0x802e73a8:
    mr      r3, r25
    lwz     r12, 0x0(r25)
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x802e7408

branch_0x802e73c8:
    mr      r3, r25
    lwz     r12, 0x0(r25)
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    b       branch_0x802e7408

branch_0x802e73e8:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    addi    r5, r27, 0x0
    bl      readShape__14J3DModelLoaderFPC13J3DShapeBlockUl
    b       branch_0x802e7408

branch_0x802e73fc:
    addi    r3, r25, 0x0
    addi    r4, r29, 0x0
    bl      readTexture__14J3DModelLoaderFPC15J3DTextureBlock
branch_0x802e7408:
    lwz     r0, 0x4(r29)
    addi    r28, r28, 0x1
    add     r30, r30, r0
    add     r29, r29, r0
branch_0x802e7418:
    lwz     r0, 0xc(r26)
    cmplw   r28, r0
    blt+    branch_0x802e72e4
    lwz     r3, 0x4(r25)
    addi    r5, sp, 0x14
    li      r4, 0x0
    lwz     r0, 0x8(r3)
    stw     r0, 0x14(sp)
    lwz     r3, 0x4(r25)
    bl      makeHierarchy__12J3DModelDataFP7J3DNodePPC17J3DModelHierarchy
    mr      r3, r25
    lwz     r12, 0x0(r25)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x4(r25)
    lmw     r17, 0x1c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl readMaterial_v21__14J3DModelLoaderFPC20J3DMaterialBlock_v21Ul
readMaterial_v21__14J3DModelLoaderFPC20J3DMaterialBlock_v21Ul: # 0x802e746c
    blr


.globl readMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl
readMaterial__14J3DModelLoaderFPC16J3DMaterialBlockUl: # 0x802e7470
    blr


.globl loadMaterialTable__14J3DModelLoaderFPCv
loadMaterialTable__14J3DModelLoaderFPCv: # 0x802e7474
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r24, 0x10(sp)
    addi    r31, r3, 0x0
    addi    r24, r4, 0x0
    lis     r27, 0x5510
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x802e74a8
    mr      r3, r25
    bl      __ct__16J3DMaterialTableFv
branch_0x802e74a8:
    stw     r25, 0x8(r31)
    lwz     r3, 0x8(r31)
    bl      clear__16J3DMaterialTableFv
    lis     r4, 0x4d41
    lis     r3, 0x5445
    addi    r26, r24, 0x20
    addi    r30, r3, 0x5831
    addi    r28, r4, 0x5433
    addi    r29, r4, 0x5432
    li      r25, 0x0
    b       branch_0x802e7554

branch_0x802e74d4:
    lwz     r0, 0x0(r26)
    cmpw    r0, r28
    beq-    branch_0x802e74fc
    bge-    branch_0x802e74f0
    cmpw    r0, r29
    bge-    branch_0x802e751c
    b       branch_0x802e7548

branch_0x802e74f0:
    cmpw    r0, r30
    beq-    branch_0x802e753c
    b       branch_0x802e7548

branch_0x802e74fc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    b       branch_0x802e7548

branch_0x802e751c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    b       branch_0x802e7548

branch_0x802e753c:
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    bl      readTextureTable__14J3DModelLoaderFPC15J3DTextureBlock
branch_0x802e7548:
    lwz     r0, 0x4(r26)
    addi    r25, r25, 0x1
    add     r26, r26, r0
branch_0x802e7554:
    lwz     r0, 0xc(r24)
    cmplw   r25, r0
    blt+    branch_0x802e74d4
    lwz     r3, 0x8(r31)
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802e75a0
    li      r3, 0xc
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802e7598
    lis     r4, 0x803e
    addi    r0, r4, 0x13b0
    stw     r0, 0x8(r3)
    li      r0, 0x0
    sth     r0, 0x0(r3)
    stw     r0, 0x4(r3)
branch_0x802e7598:
    lwz     r4, 0x8(r31)
    stw     r3, 0xc(r4)
branch_0x802e75a0:
    lwz     r3, 0x8(r31)
    lmw     r24, 0x10(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl readMaterialTable_v21__14J3DModelLoaderFPC20J3DMaterialBlock_v21Ul
readMaterialTable_v21__14J3DModelLoaderFPC20J3DMaterialBlock_v21Ul: # 0x802e75b8
    blr


.globl readMaterialTable__14J3DModelLoaderFPC16J3DMaterialBlockUl
readMaterialTable__14J3DModelLoaderFPC16J3DMaterialBlockUl: # 0x802e75bc
    blr


.globl setupBBoardInfo__14J3DModelLoaderFv
setupBBoardInfo__14J3DModelLoaderFv: # 0x802e75c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    addi    r29, r3, 0x0
    li      r30, 0x0
    b       branch_0x802e76e4

branch_0x802e75dc:
    lwz     r3, 0x20(r4)
    clrlslwi  r31, r30, 16, 2
    lwzx    r3, r3, r31
    lwz     r4, 0x60(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x802e76e0
    lwz     r5, 0x4(r4)
    lwz     r3, 0xc(r29)
    lhz     r27, 0x4(r5)
    lwz     r4, 0x10(r3)
    bl      JSUConvertOffsetToPtr_Us___FPCvUl
    lwz     r5, 0xc(r29)
    mr      r28, r3
    lwz     r4, 0xc(r5)
    mr      r3, r5
    bl      JSUConvertOffsetToPtr_16J3DShapeInitData___FPCvUl
    slwi    r0, r27, 1
    lhzx    r0, r28, r0
    mulli   r0, r0, 0x28
    lbzx    r0, r3, r0
    cmpwi   r0, 0x2
    beq-    branch_0x802e769c
    bge-    branch_0x802e7648
    cmpwi   r0, 0x0
    beq-    branch_0x802e7654
    bge-    branch_0x802e7670
    b       branch_0x802e76e0

branch_0x802e7648:
    cmpwi   r0, 0x4
    bge-    branch_0x802e76e0
    b       branch_0x802e76c8

branch_0x802e7654:
    lwz     r3, 0x4(r29)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r31
    lbz     r0, 0x1a(r3)
    rlwinm  r0, r0, 0, 28, 23
    stb     r0, 0x1a(r3)
    b       branch_0x802e76e0

branch_0x802e7670:
    lwz     r3, 0x4(r29)
    li      r0, 0x1
    lwz     r3, 0x20(r3)
    lwzx    r4, r3, r31
    lbz     r3, 0x1a(r4)
    rlwinm  r3, r3, 0, 28, 23
    ori     r3, r3, 0x10
    stb     r3, 0x1a(r4)
    lwz     r3, 0x4(r29)
    sth     r0, 0x1a(r3)
    b       branch_0x802e76e0

branch_0x802e769c:
    lwz     r3, 0x4(r29)
    li      r0, 0x1
    lwz     r3, 0x20(r3)
    lwzx    r4, r3, r31
    lbz     r3, 0x1a(r4)
    rlwinm  r3, r3, 0, 28, 23
    ori     r3, r3, 0x20
    stb     r3, 0x1a(r4)
    lwz     r3, 0x4(r29)
    sth     r0, 0x1a(r3)
    b       branch_0x802e76e0

branch_0x802e76c8:
    lwz     r3, 0x4(r29)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r31
    lbz     r0, 0x1a(r3)
    rlwinm  r0, r0, 0, 28, 23
    stb     r0, 0x1a(r3)
branch_0x802e76e0:
    addi    r30, r30, 0x1
branch_0x802e76e4:
    lwz     r4, 0x4(r29)
    clrlwi  r0, r30, 16
    lhz     r3, 0x1c(r4)
    cmplw   r0, r3
    blt+    branch_0x802e75dc
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl readInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl
readInformation__14J3DModelLoaderFPC17J3DModelInfoBlockUl: # 0x802e770c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    lhz     r0, 0x8(r4)
    lwz     r3, 0x4(r3)
    or      r0, r5, r0
    stw     r0, 0xc(r3)
    lwz     r3, 0x4(r30)
    lwz     r0, 0xc(r3)
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    beq-    branch_0x802e77a8
    bge-    branch_0x802e7764
    cmpwi   r0, 0x0
    bge-    branch_0x802e7770
    b       branch_0x802e7884

branch_0x802e7764:
    cmpwi   r0, 0x3
    bge-    branch_0x802e7884
    b       branch_0x802e7818

branch_0x802e7770:
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e778c
    addi    r3, r29, 0x0
    li      r4, 0x1
    bl      __ct__15J3DMtxCalcBasicFv
branch_0x802e778c:
    cmplwi  r29, 0x0
    addi    r0, r29, 0x0
    beq-    branch_0x802e779c
    lwz     r0, 0x0(r29)
branch_0x802e779c:
    lwz     r3, 0x4(r30)
    stw     r0, 0x14(r3)
    b       branch_0x802e7884

branch_0x802e77a8:
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e77fc
    addi    r29, r28, 0x50
    lis     r3, 0x803b
    stw     r29, 0x0(r28)
    subi    r0, r3, 0xf38
    stw     r0, 0x50(r28)
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r3, r3, 0x8b0
    stw     r3, 0x4c(r28)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r28)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r28)
    subf    r0, r3, r29
    stw     r0, 0x4(r3)
branch_0x802e77fc:
    cmplwi  r28, 0x0
    addi    r0, r28, 0x0
    beq-    branch_0x802e780c
    lwz     r0, 0x0(r28)
branch_0x802e780c:
    lwz     r3, 0x4(r30)
    stw     r0, 0x14(r3)
    b       branch_0x802e7884

branch_0x802e7818:
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e786c
    addi    r29, r28, 0x50
    lis     r3, 0x803b
    stw     r29, 0x0(r28)
    subi    r0, r3, 0xf38
    stw     r0, 0x50(r28)
    addi    r3, r28, 0x0
    li      r4, 0x0
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r3, r3, 0x86c
    stw     r3, 0x4c(r28)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r28)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r28)
    subf    r0, r3, r29
    stw     r0, 0x4(r3)
branch_0x802e786c:
    cmplwi  r28, 0x0
    addi    r0, r28, 0x0
    beq-    branch_0x802e787c
    lwz     r0, 0x0(r28)
branch_0x802e787c:
    lwz     r3, 0x4(r30)
    stw     r0, 0x14(r3)
branch_0x802e7884:
    lwz     r0, 0xc(r31)
    mr      r3, r31
    lwz     r4, 0x4(r30)
    stw     r0, 0x80(r4)
    lwz     r0, 0x10(r31)
    lwz     r4, 0x4(r30)
    stw     r0, 0x3c(r4)
    lwz     r4, 0x14(r31)
    bl      JSUConvertOffsetToPtr_17J3DModelHierarchy___FPCvPCv
    lwz     r4, 0x4(r30)
    stw     r3, 0x8(r4)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl readVertex__14J3DModelLoaderFPC14J3DVertexBlock
readVertex__14J3DModelLoaderFPC14J3DVertexBlock: # 0x802e78d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r4
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    lwz     r5, 0x4(r3)
    addi    r3, r30, 0x0
    lwz     r4, 0x8(r4)
    addi    r31, r5, 0x3c
    bl      JSUConvertOffsetToPtr_17_GXVtxAttrFmtList___FPCvPCv
    stw     r3, 0xc(r31)
    mr      r3, r30
    lwz     r4, 0xc(r30)
    bl      JSUConvertOffsetToPtr_v___FPCvPCv
    stw     r3, 0x10(r31)
    mr      r3, r30
    lwz     r4, 0x10(r30)
    bl      JSUConvertOffsetToPtr_v___FPCvPCv
    stw     r3, 0x14(r31)
    mr      r3, r30
    lwz     r4, 0x14(r30)
    bl      JSUConvertOffsetToPtr_v___FPCvPCv
    stw     r3, 0x18(r31)
    li      r28, 0x0
    li      r29, 0x0
branch_0x802e7940:
    addi    r0, r29, 0x18
    lwzx    r4, r30, r0
    mr      r3, r30
    bl      JSUConvertOffsetToPtr_v___FPCvPCv
    addi    r28, r28, 0x1
    addi    r0, r29, 0x1c
    cmpwi   r28, 0x2
    stwx    r3, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x802e7940
    li      r28, 0x0
    li      r29, 0x0
branch_0x802e7970:
    addi    r0, r29, 0x20
    lwzx    r4, r30, r0
    mr      r3, r30
    bl      JSUConvertOffsetToPtr_v___FPCvPCv
    addi    r28, r28, 0x1
    addi    r0, r29, 0x24
    cmpwi   r28, 0x8
    stwx    r3, r31, r0
    addi    r29, r29, 0x4
    blt+    branch_0x802e7970
    lwz     r0, 0x18(r31)
    li      r4, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802e79b0
    mr      r4, r0
    b       branch_0x802e79d4

branch_0x802e79b0:
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802e79c4
    mr      r4, r0
    b       branch_0x802e79d4

branch_0x802e79c4:
    lwz     r0, 0x24(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802e79d4
    mr      r4, r0
branch_0x802e79d4:
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802e79ec
    li      r0, 0x0
    stw     r0, 0x4(r31)
    b       branch_0x802e7a38

branch_0x802e79ec:
    cmplwi  r4, 0x0
    beq-    branch_0x802e7a14
    lis     r3, 0xaaab
    subf    r0, r0, r4
    subi    r3, r3, 0x5555
    mulhwu  r0, r3, r0
    srwi    r3, r0, 3
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
    b       branch_0x802e7a38

branch_0x802e7a14:
    lwz     r4, 0x10(r30)
    lis     r3, 0xaaab
    lwz     r0, 0x4(r30)
    subi    r3, r3, 0x5555
    subf    r0, r4, r0
    mulhwu  r0, r3, r0
    srwi    r3, r0, 3
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x802e7a38:
    lwz     r0, 0x20(r31)
    li      r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802e7a50
    mr      r3, r0
    b       branch_0x802e7a60

branch_0x802e7a50:
    lwz     r0, 0x24(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802e7a60
    mr      r3, r0
branch_0x802e7a60:
    lwz     r0, 0x1c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802e7a78
    li      r0, 0x0
    stw     r0, 0x8(r31)
    b       branch_0x802e7aac

branch_0x802e7a78:
    cmplwi  r3, 0x0
    beq-    branch_0x802e7a94
    subf    r0, r0, r3
    srwi    r3, r0, 2
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x802e7aac

branch_0x802e7a94:
    lwz     r3, 0x18(r30)
    lwz     r0, 0x4(r30)
    subf    r0, r3, r0
    srwi    r3, r0, 2
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x802e7aac:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl readEnvelop__14J3DModelLoaderFPC15J3DEnvelopBlock
readEnvelop__14J3DModelLoaderFPC15J3DEnvelopBlock: # 0x802e7acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4(r3)
    mr      r3, r31
    lhz     r0, 0x8(r31)
    sth     r0, 0x84(r4)
    lwz     r4, 0xc(r31)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    lwz     r4, 0x4(r30)
    stw     r3, 0x88(r4)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    lwz     r4, 0x4(r30)
    stw     r3, 0x8c(r4)
    mr      r3, r31
    lwz     r4, 0x14(r31)
    bl      JSUConvertOffsetToPtr_f___FPCvPCv
    lwz     r4, 0x4(r30)
    stw     r3, 0x90(r4)
    mr      r3, r31
    lwz     r4, 0x18(r31)
    bl      JSUConvertOffsetToPtr_A3_A4_f___FPCvPCv
    lwz     r4, 0x4(r30)
    stw     r3, 0x94(r4)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl readDraw__14J3DModelLoaderFPC12J3DDrawBlock
readDraw__14J3DModelLoaderFPC12J3DDrawBlock: # 0x802e7b5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r4
    lwz     r4, 0x4(r3)
    addi    r3, r30, 0x0
    lhz     r0, 0x8(r30)
    addi    r31, r4, 0x98
    sth     r0, 0x98(r4)
    lwz     r4, 0xc(r30)
    bl      JSUConvertOffsetToPtr_Uc___FPCvPCv
    stw     r3, 0x4(r31)
    mr      r3, r30
    lwz     r4, 0x10(r30)
    bl      JSUConvertOffsetToPtr_Us___FPCvPCv
    stw     r3, 0x8(r31)
    li      r5, 0x0
    lhz     r4, 0x0(r31)
    b       branch_0x802e7bc8

branch_0x802e7bb0:
    lwz     r3, 0x4(r31)
    clrlwi  r0, r5, 16
    lbzx    r0, r3, r0
    cmplwi  r0, 0x1
    beq-    branch_0x802e7bd4
    addi    r5, r5, 0x1
branch_0x802e7bc8:
    clrlwi  r0, r5, 16
    cmplw   r0, r4
    blt+    branch_0x802e7bb0
branch_0x802e7bd4:
    sth     r5, 0x2(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl readJoint__14J3DModelLoaderFPC13J3DJointBlock
readJoint__14J3DModelLoaderFPC13J3DJointBlock: # 0x802e7bf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x10
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    bl      __ct__15J3DJointFactoryFRC13J3DJointBlock
    lhz     r0, 0x8(r30)
    lwz     r3, 0x4(r31)
    sth     r0, 0x1c(r3)
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802e7c64
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802e7c58
    mr      r3, r30
    lwz     r4, 0x14(r30)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e7c58:
    lwz     r3, 0x4(r31)
    stw     r29, 0xb0(r3)
    b       branch_0x802e7c70

branch_0x802e7c64:
    lwz     r3, 0x4(r31)
    li      r0, 0x0
    stw     r0, 0xb0(r3)
branch_0x802e7c70:
    lwz     r3, 0x4(r31)
    lhz     r0, 0x1c(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lwz     r4, 0x4(r31)
    li      r30, 0x0
    stw     r3, 0x20(r4)
    b       branch_0x802e7cb0

branch_0x802e7c90:
    addi    r3, sp, 0x10
    clrlwi  r4, r30, 16
    bl      create__15J3DJointFactoryFi
    lwz     r4, 0x4(r31)
    clrlslwi  r0, r30, 16, 2
    addi    r30, r30, 0x1
    lwz     r4, 0x20(r4)
    stwx    r3, r4, r0
branch_0x802e7cb0:
    lwz     r3, 0x4(r31)
    clrlwi  r4, r30, 16
    lhz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt+    branch_0x802e7c90
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl readMaterial__18J3DModelLoader_v26FPC16J3DMaterialBlockUl
readMaterial__18J3DModelLoader_v26FPC16J3DMaterialBlockUl: # 0x802e7ce0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stmw    r27, 0x94(sp)
    addi    r29, r3, 0x0
    addi    r27, r4, 0x0
    addi    r30, r5, 0x0
    addi    r3, sp, 0x18
    bl      __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
    lhz     r0, 0x8(r27)
    addi    r3, sp, 0x18
    lwz     r4, 0x4(r29)
    sth     r0, 0x24(r4)
    bl      countUniqueMaterials__18J3DMaterialFactoryFv
    lwz     r4, 0x4(r29)
    sth     r3, 0x34(r4)
    lwz     r0, 0x14(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x802e7d60
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e7d54
    mr      r3, r27
    lwz     r4, 0x14(r27)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e7d54:
    lwz     r3, 0x4(r29)
    stw     r28, 0xb4(r3)
    b       branch_0x802e7d6c

branch_0x802e7d60:
    lwz     r3, 0x4(r29)
    li      r0, 0x0
    stw     r0, 0xb4(r3)
branch_0x802e7d6c:
    lwz     r3, 0x4(r29)
    lhz     r0, 0x24(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lwz     r4, 0x4(r29)
    rlwinm. r31, r30, 0, 10, 10
    stw     r3, 0x28(r4)
    beq-    branch_0x802e7dcc
    lwz     r3, 0x4(r29)
    li      r4, 0x20
    lhz     r28, 0x34(r3)
    slwi    r3, r28, 6
    addi    r3, r3, 0x8
    bl      __nwa__FUli
    lis     r4, 0x802e
    lis     r5, 0x802e
    addi    r4, r4, 0x7f78
    addi    r5, r5, 0x7f38
    addi    r7, r28, 0x0
    li      r6, 0x40
    bl      __construct_new_array
    lwz     r4, 0x4(r29)
    stw     r3, 0x38(r4)
    b       branch_0x802e7dd8

branch_0x802e7dcc:
    lwz     r3, 0x4(r29)
    li      r0, 0x0
    stw     r0, 0x38(r3)
branch_0x802e7dd8:
    cmplwi  r31, 0x0
    beq-    branch_0x802e7e30
    li      r27, 0x0
    b       branch_0x802e7e1c

branch_0x802e7de8:
    lwz     r0, 0x38(r4)
    clrlslwi  r28, r27, 16, 6
    clrlwi  r5, r27, 16
    addi    r6, r30, 0x0
    addi    r3, sp, 0x18
    add     r4, r0, r28
    bl      create__18J3DMaterialFactoryCFP11J3DMaterialiUl
    lwz     r3, 0x4(r29)
    addi    r27, r27, 0x1
    lwz     r0, 0x38(r3)
    add     r3, r0, r28
    srwi    r0, r3, 4
    stw     r0, 0x18(r3)
branch_0x802e7e1c:
    lwz     r4, 0x4(r29)
    clrlwi  r3, r27, 16
    lhz     r0, 0x34(r4)
    cmplw   r3, r0
    blt+    branch_0x802e7de8
branch_0x802e7e30:
    li      r27, 0x0
    b       branch_0x802e7e60

branch_0x802e7e38:
    addi    r6, r30, 0x0
    addi    r3, sp, 0x18
    clrlwi  r5, r27, 16
    li      r4, 0x0
    bl      create__18J3DMaterialFactoryCFP11J3DMaterialiUl
    lwz     r4, 0x4(r29)
    clrlslwi  r0, r27, 16, 2
    addi    r27, r27, 0x1
    lwz     r4, 0x28(r4)
    stwx    r3, r4, r0
branch_0x802e7e60:
    lwz     r3, 0x4(r29)
    clrlwi  r4, r27, 16
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x802e7e38
    cmplwi  r31, 0x0
    beq-    branch_0x802e7ef0
    li      r8, 0x0
    b       branch_0x802e7ed8

branch_0x802e7e84:
    lwz     r3, 0x20(sp)
    clrlslwi  r6, r8, 16, 1
    clrlslwi  r7, r8, 16, 2
    lwz     r4, 0x38(r5)
    lhzx    r0, r3, r6
    lwz     r3, 0x28(r5)
    addi    r8, r8, 0x1
    slwi    r0, r0, 6
    add     r0, r4, r0
    lwzx    r3, r3, r7
    srwi    r0, r0, 4
    stw     r0, 0x18(r3)
    lwz     r5, 0x4(r29)
    lwz     r4, 0x20(sp)
    lwz     r3, 0x28(r5)
    lhzx    r0, r4, r6
    lwz     r4, 0x38(r5)
    slwi    r0, r0, 6
    lwzx    r3, r3, r7
    add     r0, r4, r0
    stw     r0, 0x34(r3)
branch_0x802e7ed8:
    lwz     r5, 0x4(r29)
    clrlwi  r3, r8, 16
    lhz     r0, 0x24(r5)
    cmplw   r3, r0
    blt+    branch_0x802e7e84
    b       branch_0x802e7f24

branch_0x802e7ef0:
    li      r6, 0x0
    lis     r4, 0xc000
    b       branch_0x802e7f10

branch_0x802e7efc:
    lwz     r3, 0x28(r5)
    clrlslwi  r0, r6, 16, 2
    addi    r6, r6, 0x1
    lwzx    r3, r3, r0
    stw     r4, 0x18(r3)
branch_0x802e7f10:
    lwz     r5, 0x4(r29)
    clrlwi  r3, r6, 16
    lhz     r0, 0x24(r5)
    cmplw   r3, r0
    blt+    branch_0x802e7efc
branch_0x802e7f24:
    lmw     r27, 0x94(sp)
    lwz     r0, 0xac(sp)
    addi    sp, sp, 0xa8
    mtlr    r0
    blr


.globl __dt__11J3DMaterialFv
__dt__11J3DMaterialFv: # 0x802e7f38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e7f60
    extsh.  r0, r4
    ble-    branch_0x802e7f60
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e7f60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__11J3DMaterialFv
__ct__11J3DMaterialFv: # 0x802e7f78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initialize__11J3DMaterialFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl readMaterial_v21__18J3DModelLoader_v21FPC20J3DMaterialBlock_v21Ul
readMaterial_v21__18J3DModelLoader_v21FPC20J3DMaterialBlock_v21Ul: # 0x802e7fa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r29, r3, 0x0
    addi    r27, r4, 0x0
    addi    r30, r5, 0x0
    addi    r3, sp, 0x18
    bl      __ct__22J3DMaterialFactory_v21FRC20J3DMaterialBlock_v21
    lhz     r0, 0x8(r27)
    addi    r3, sp, 0x18
    lwz     r4, 0x4(r29)
    sth     r0, 0x24(r4)
    bl      countUniqueMaterials__22J3DMaterialFactory_v21Fv
    lwz     r4, 0x4(r29)
    sth     r3, 0x34(r4)
    lwz     r0, 0x14(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x802e8028
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e801c
    mr      r3, r27
    lwz     r4, 0x14(r27)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e801c:
    lwz     r3, 0x4(r29)
    stw     r28, 0xb4(r3)
    b       branch_0x802e8034

branch_0x802e8028:
    lwz     r3, 0x4(r29)
    li      r0, 0x0
    stw     r0, 0xb4(r3)
branch_0x802e8034:
    lwz     r3, 0x4(r29)
    lhz     r0, 0x24(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lwz     r4, 0x4(r29)
    rlwinm. r31, r30, 0, 10, 10
    stw     r3, 0x28(r4)
    beq-    branch_0x802e8094
    lwz     r3, 0x4(r29)
    li      r4, 0x20
    lhz     r28, 0x34(r3)
    slwi    r3, r28, 6
    addi    r3, r3, 0x8
    bl      __nwa__FUli
    lis     r4, 0x802e
    lis     r5, 0x802e
    addi    r4, r4, 0x7f78
    addi    r5, r5, 0x7f38
    addi    r7, r28, 0x0
    li      r6, 0x40
    bl      __construct_new_array
    lwz     r4, 0x4(r29)
    stw     r3, 0x38(r4)
    b       branch_0x802e80a0

branch_0x802e8094:
    lwz     r3, 0x4(r29)
    li      r0, 0x0
    stw     r0, 0x38(r3)
branch_0x802e80a0:
    cmplwi  r31, 0x0
    beq-    branch_0x802e80f8
    li      r27, 0x0
    b       branch_0x802e80e4

branch_0x802e80b0:
    lwz     r0, 0x38(r4)
    clrlslwi  r28, r27, 16, 6
    clrlwi  r5, r27, 16
    addi    r6, r30, 0x0
    addi    r3, sp, 0x18
    add     r4, r0, r28
    bl      create__22J3DMaterialFactory_v21CFP11J3DMaterialiUl
    lwz     r3, 0x4(r29)
    addi    r27, r27, 0x1
    lwz     r0, 0x38(r3)
    add     r3, r0, r28
    srwi    r0, r3, 4
    stw     r0, 0x18(r3)
branch_0x802e80e4:
    lwz     r4, 0x4(r29)
    clrlwi  r3, r27, 16
    lhz     r0, 0x34(r4)
    cmplw   r3, r0
    blt+    branch_0x802e80b0
branch_0x802e80f8:
    li      r27, 0x0
    b       branch_0x802e8128

branch_0x802e8100:
    addi    r6, r30, 0x0
    addi    r3, sp, 0x18
    clrlwi  r5, r27, 16
    li      r4, 0x0
    bl      create__22J3DMaterialFactory_v21CFP11J3DMaterialiUl
    lwz     r4, 0x4(r29)
    clrlslwi  r0, r27, 16, 2
    addi    r27, r27, 0x1
    lwz     r4, 0x28(r4)
    stwx    r3, r4, r0
branch_0x802e8128:
    lwz     r3, 0x4(r29)
    clrlwi  r4, r27, 16
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x802e8100
    cmplwi  r31, 0x0
    beq-    branch_0x802e81b8
    li      r8, 0x0
    b       branch_0x802e81a0

branch_0x802e814c:
    lwz     r3, 0x20(sp)
    clrlslwi  r6, r8, 16, 1
    clrlslwi  r7, r8, 16, 2
    lwz     r4, 0x38(r5)
    lhzx    r0, r3, r6
    lwz     r3, 0x28(r5)
    addi    r8, r8, 0x1
    slwi    r0, r0, 6
    add     r0, r4, r0
    lwzx    r3, r3, r7
    srwi    r0, r0, 4
    stw     r0, 0x18(r3)
    lwz     r5, 0x4(r29)
    lwz     r4, 0x20(sp)
    lwz     r3, 0x28(r5)
    lhzx    r0, r4, r6
    lwz     r4, 0x38(r5)
    slwi    r0, r0, 6
    lwzx    r3, r3, r7
    add     r0, r4, r0
    stw     r0, 0x34(r3)
branch_0x802e81a0:
    lwz     r5, 0x4(r29)
    clrlwi  r3, r8, 16
    lhz     r0, 0x24(r5)
    cmplw   r3, r0
    blt+    branch_0x802e814c
    b       branch_0x802e81ec

branch_0x802e81b8:
    li      r6, 0x0
    lis     r4, 0xc000
    b       branch_0x802e81d8

branch_0x802e81c4:
    lwz     r3, 0x28(r5)
    clrlslwi  r0, r6, 16, 2
    addi    r6, r6, 0x1
    lwzx    r3, r3, r0
    stw     r4, 0x18(r3)
branch_0x802e81d8:
    lwz     r5, 0x4(r29)
    clrlwi  r3, r6, 16
    lhz     r0, 0x24(r5)
    cmplw   r3, r0
    blt+    branch_0x802e81c4
branch_0x802e81ec:
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl readShape__14J3DModelLoaderFPC13J3DShapeBlockUl
readShape__14J3DModelLoaderFPC13J3DShapeBlockUl: # 0x802e8200
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x40(sp)
    stw     r31, 0xc(r3)
    addi    r3, sp, 0x20
    bl      __ct__15J3DShapeFactoryFRC13J3DShapeBlock
    lhz     r0, 0x8(r31)
    lwz     r3, 0x4(r29)
    sth     r0, 0x2c(r3)
    lwz     r0, 0x14(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802e8280
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e8274
    mr      r3, r31
    lwz     r4, 0x14(r31)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e8274:
    lwz     r3, 0x4(r29)
    stw     r28, 0xb8(r3)
    b       branch_0x802e828c

branch_0x802e8280:
    lwz     r3, 0x4(r29)
    li      r0, 0x0
    stw     r0, 0xb8(r3)
branch_0x802e828c:
    lwz     r3, 0x4(r29)
    lhz     r0, 0x2c(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lwz     r4, 0x4(r29)
    stw     r3, 0x30(r4)
    addi    r3, sp, 0x20
    lwz     r4, 0x4(r29)
    lhz     r4, 0x2c(r4)
    bl      allocVcdVatCmdBuffer__15J3DShapeFactoryFUl
    lwz     r3, 0x4(r29)
    li      r6, 0x0
    lwz     r31, 0x8(r3)
    b       branch_0x802e831c

branch_0x802e82c4:
    cmplwi  r0, 0x12
    bne-    branch_0x802e8318
    lhz     r4, 0x2(r31)
    addi    r5, r30, 0x0
    addi    r3, sp, 0x20
    bl      create__15J3DShapeFactoryFi14J3DMdlDataFlagP14_GXVtxDescList
    lwz     r4, 0x4(r29)
    lhz     r0, 0x2(r31)
    lwz     r4, 0x30(r4)
    slwi    r0, r0, 2
    stwx    r3, r4, r0
    lhz     r0, 0x2(r31)
    lwz     r3, 0x24(sp)
    slwi    r0, r0, 1
    lwz     r4, 0x20(sp)
    lhzx    r0, r3, r0
    lwz     r5, 0x28(sp)
    mulli   r3, r0, 0x28
    addi    r0, r3, 0x4
    lhzx    r0, r4, r0
    add     r6, r5, r0
branch_0x802e8318:
    addi    r31, r31, 0x4
branch_0x802e831c:
    lhz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne+    branch_0x802e82c4
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl readTexture__14J3DModelLoaderFPC15J3DTextureBlock
readTexture__14J3DModelLoaderFPC15J3DTextureBlock: # 0x802e8348
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r29, r4
    mr      r28, r3
    mr      r3, r29
    lhz     r30, 0x8(r4)
    lwz     r4, 0xc(r4)
    bl      JSUConvertOffsetToPtr_7ResTIMG___FPCvPCv
    lwz     r0, 0x10(r29)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802e83b4
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802e83a8
    mr      r3, r29
    lwz     r4, 0x10(r29)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e83a8:
    lwz     r3, 0x4(r28)
    stw     r27, 0xa8(r3)
    b       branch_0x802e83c0

branch_0x802e83b4:
    lwz     r3, 0x4(r28)
    li      r0, 0x0
    stw     r0, 0xa8(r3)
branch_0x802e83c0:
    li      r3, 0xc
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802e83e4
    lis     r4, 0x803e
    addi    r0, r4, 0x13b0
    stw     r0, 0x8(r3)
    sth     r30, 0x0(r3)
    stw     r31, 0x4(r3)
branch_0x802e83e4:
    lwz     r4, 0x4(r28)
    stw     r3, 0xac(r4)
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl readMaterialTable__18J3DModelLoader_v26FPC16J3DMaterialBlockUl
readMaterialTable__18J3DModelLoader_v26FPC16J3DMaterialBlockUl: # 0x802e8400
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x98(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x18
    stw     r29, 0x94(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x90(sp)
    bl      __ct__18J3DMaterialFactoryFRC16J3DMaterialBlock
    lhz     r0, 0x8(r29)
    lwz     r3, 0x8(r30)
    sth     r0, 0x4(r3)
    lwz     r0, 0x14(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802e847c
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e8470
    mr      r3, r29
    lwz     r4, 0x14(r29)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e8470:
    lwz     r3, 0x8(r30)
    stw     r28, 0x10(r3)
    b       branch_0x802e8488

branch_0x802e847c:
    lwz     r3, 0x8(r30)
    li      r0, 0x0
    stw     r0, 0x10(r3)
branch_0x802e8488:
    lwz     r3, 0x8(r30)
    lhz     r0, 0x4(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lwz     r4, 0x8(r30)
    li      r29, 0x0
    stw     r3, 0x8(r4)
    b       branch_0x802e84d0

branch_0x802e84a8:
    addi    r6, r31, 0x0
    addi    r3, sp, 0x18
    clrlwi  r5, r29, 16
    li      r4, 0x0
    bl      create__18J3DMaterialFactoryCFP11J3DMaterialiUl
    lwz     r4, 0x8(r30)
    clrlslwi  r0, r29, 16, 2
    addi    r29, r29, 0x1
    lwz     r4, 0x8(r4)
    stwx    r3, r4, r0
branch_0x802e84d0:
    lwz     r3, 0x8(r30)
    clrlwi  r4, r29, 16
    lhz     r0, 0x4(r3)
    cmplw   r4, r0
    blt+    branch_0x802e84a8
    li      r6, 0x0
    b       branch_0x802e8510

branch_0x802e84ec:
    lwz     r4, 0x20(sp)
    clrlslwi  r3, r6, 16, 1
    lwz     r5, 0x8(r5)
    clrlslwi  r0, r6, 16, 2
    lhzx    r4, r4, r3
    lwzx    r3, r5, r0
    addi    r6, r6, 0x1
    add     r0, r5, r4
    stw     r0, 0x18(r3)
branch_0x802e8510:
    lwz     r5, 0x8(r30)
    clrlwi  r3, r6, 16
    lhz     r0, 0x4(r5)
    cmplw   r3, r0
    blt+    branch_0x802e84ec
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl readMaterialTable_v21__18J3DModelLoader_v21FPC20J3DMaterialBlock_v21Ul
readMaterialTable_v21__18J3DModelLoader_v21FPC20J3DMaterialBlock_v21Ul: # 0x802e8544
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x90(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x18
    stw     r29, 0x8c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x88(sp)
    bl      __ct__22J3DMaterialFactory_v21FRC20J3DMaterialBlock_v21
    lhz     r0, 0x8(r29)
    lwz     r3, 0x8(r30)
    sth     r0, 0x4(r3)
    lwz     r0, 0x14(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802e85c0
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802e85b4
    mr      r3, r29
    lwz     r4, 0x14(r29)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e85b4:
    lwz     r3, 0x8(r30)
    stw     r28, 0x10(r3)
    b       branch_0x802e85cc

branch_0x802e85c0:
    lwz     r3, 0x8(r30)
    li      r0, 0x0
    stw     r0, 0x10(r3)
branch_0x802e85cc:
    lwz     r3, 0x8(r30)
    lhz     r0, 0x4(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    lwz     r4, 0x8(r30)
    li      r29, 0x0
    stw     r3, 0x8(r4)
    b       branch_0x802e8614

branch_0x802e85ec:
    addi    r6, r31, 0x0
    addi    r3, sp, 0x18
    clrlwi  r5, r29, 16
    li      r4, 0x0
    bl      create__22J3DMaterialFactory_v21CFP11J3DMaterialiUl
    lwz     r4, 0x8(r30)
    clrlslwi  r0, r29, 16, 2
    addi    r29, r29, 0x1
    lwz     r4, 0x8(r4)
    stwx    r3, r4, r0
branch_0x802e8614:
    lwz     r3, 0x8(r30)
    clrlwi  r4, r29, 16
    lhz     r0, 0x4(r3)
    cmplw   r4, r0
    blt+    branch_0x802e85ec
    li      r6, 0x0
    b       branch_0x802e8654

branch_0x802e8630:
    lwz     r4, 0x20(sp)
    clrlslwi  r3, r6, 16, 1
    lwz     r5, 0x8(r5)
    clrlslwi  r0, r6, 16, 2
    lhzx    r4, r4, r3
    lwzx    r3, r5, r0
    addi    r6, r6, 0x1
    add     r0, r5, r4
    stw     r0, 0x18(r3)
branch_0x802e8654:
    lwz     r5, 0x8(r30)
    clrlwi  r3, r6, 16
    lhz     r0, 0x4(r5)
    cmplw   r3, r0
    blt+    branch_0x802e8630
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    mtlr    r0
    lwz     r29, 0x8c(sp)
    lwz     r28, 0x88(sp)
    addi    sp, sp, 0x98
    blr


.globl readTextureTable__14J3DModelLoaderFPC15J3DTextureBlock
readTextureTable__14J3DModelLoaderFPC15J3DTextureBlock: # 0x802e8688
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r29, r4
    mr      r28, r3
    mr      r3, r29
    lhz     r30, 0x8(r4)
    lwz     r4, 0xc(r4)
    bl      JSUConvertOffsetToPtr_7ResTIMG___FPCvPCv
    lwz     r0, 0x10(r29)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x802e86f4
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802e86e8
    mr      r3, r29
    lwz     r4, 0x10(r29)
    bl      JSUConvertOffsetToPtr_7ResNTAB___FPCvPCv
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    bl      __ct__10JUTNameTabFPC7ResNTAB
branch_0x802e86e8:
    lwz     r3, 0x8(r28)
    stw     r27, 0x14(r3)
    b       branch_0x802e8700

branch_0x802e86f4:
    lwz     r3, 0x8(r28)
    li      r0, 0x0
    stw     r0, 0x14(r3)
branch_0x802e8700:
    li      r3, 0xc
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802e8724
    lis     r4, 0x803e
    addi    r0, r4, 0x13b0
    stw     r0, 0x8(r3)
    sth     r30, 0x0(r3)
    stw     r31, 0x4(r3)
branch_0x802e8724:
    lwz     r4, 0x8(r28)
    stw     r3, 0xc(r4)
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__10J3DTextureFv
__dt__10J3DTextureFv: # 0x802e8740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802e8774
    lis     r3, 0x803e
    addi    r3, r3, 0x13b0
    extsh.  r0, r4
    stw     r3, 0x8(r31)
    ble-    branch_0x802e8774
    mr      r3, r31
    bl      __dl__FPv
branch_0x802e8774:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl JSUConvertOffsetToPtr_7ResTIMG___FPCvPCv
JSUConvertOffsetToPtr_7ResTIMG___FPCvPCv: # 0x802e878c
    cmplwi  r4, 0x0
    bne-    branch_0x802e879c
    li      r3, 0x0
    blr

branch_0x802e879c:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_A3_A4_f___FPCvPCv
JSUConvertOffsetToPtr_A3_A4_f___FPCvPCv: # 0x802e87a4
    cmplwi  r4, 0x0
    bne-    branch_0x802e87b4
    li      r3, 0x0
    blr

branch_0x802e87b4:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_v___FPCvPCv
JSUConvertOffsetToPtr_v___FPCvPCv: # 0x802e87bc
    cmplwi  r4, 0x0
    bne-    branch_0x802e87cc
    li      r3, 0x0
    blr

branch_0x802e87cc:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_17_GXVtxAttrFmtList___FPCvPCv
JSUConvertOffsetToPtr_17_GXVtxAttrFmtList___FPCvPCv: # 0x802e87d4
    cmplwi  r4, 0x0
    bne-    branch_0x802e87e4
    li      r3, 0x0
    blr

branch_0x802e87e4:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_17J3DModelHierarchy___FPCvPCv
JSUConvertOffsetToPtr_17J3DModelHierarchy___FPCvPCv: # 0x802e87ec
    cmplwi  r4, 0x0
    bne-    branch_0x802e87fc
    li      r3, 0x0
    blr

branch_0x802e87fc:
    add     r3, r3, r4
    blr


.globl JSUConvertOffsetToPtr_16J3DShapeInitData___FPCvUl
JSUConvertOffsetToPtr_16J3DShapeInitData___FPCvUl: # 0x802e8804
    cmplwi  r4, 0x0
    bne-    branch_0x802e8814
    li      r3, 0x0
    blr

branch_0x802e8814:
    add     r3, r3, r4
    blr

