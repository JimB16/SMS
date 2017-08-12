
.globl createSampleModelData__13MActorAnmDataFP12J3DModelData
createSampleModelData__13MActorAnmDataFP12J3DModelData: # 0x8023be50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x20
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8023be8c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__19SampleCtrlModelDataFP12J3DModelData
branch_0x8023be8c:
    stw     r29, 0x48(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl addFileTable__13MActorAnmDataFPCc
addFileTable__13MActorAnmDataFPCc: # 0x8023beac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xd0(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    stw     r29, 0xcc(sp)
    addi    r4, r2, R2Off_m0x1508
    stw     r28, 0xc8(sp)
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023bf84
    mr      r3, r30
    bl      strlen
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x2e
    bl      strrchr
    bl      strlen
    addi    r0, r3, -0x1
    subf    r29, r0, r29
    addi    r3, r29, 0x0
    bl      __nwa__FUl
    crxor   6, 6, 6
    addi    r28, r3, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
    lwz     r3, 0x2c(r31)
    li      r4, 0x0
    lwz     r0, 0x4(r31)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    b       branch_0x8023bf58

branch_0x8023bf44:
    lbz     r3, 0x0(r28)
    mulli   r0, r4, 0x5
    extsb   r3, r3
    add     r4, r3, r0
    addi    r28, r28, 0x1
branch_0x8023bf58:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8023bf44
    lwz     r3, 0x2c(r31)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 1
    sthx    r4, r3, r0
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x8023bf84:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x14fc
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c038
    mr      r3, r30
    bl      strlen
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x2e
    bl      strrchr
    bl      strlen
    addi    r0, r3, -0x1
    subf    r29, r0, r29
    addi    r3, r29, 0x0
    bl      __nwa__FUl
    crxor   6, 6, 6
    addi    r28, r3, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
    lwz     r3, 0x30(r31)
    li      r4, 0x0
    lwz     r0, 0xc(r31)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    b       branch_0x8023c00c

branch_0x8023bff8:
    lbz     r3, 0x0(r28)
    mulli   r0, r4, 0x5
    extsb   r3, r3
    add     r4, r3, r0
    addi    r28, r28, 0x1
branch_0x8023c00c:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8023bff8
    lwz     r3, 0x30(r31)
    lwz     r0, 0xc(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 1
    sthx    r4, r3, r0
    lwz     r3, 0xc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r31)
branch_0x8023c038:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x14f4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c0ec
    mr      r3, r30
    bl      strlen
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x2e
    bl      strrchr
    bl      strlen
    addi    r0, r3, -0x1
    subf    r29, r0, r29
    addi    r3, r29, 0x0
    bl      __nwa__FUl
    crxor   6, 6, 6
    addi    r28, r3, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
    lwz     r3, 0x34(r31)
    li      r4, 0x0
    lwz     r0, 0x10(r31)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    b       branch_0x8023c0c0

branch_0x8023c0ac:
    lbz     r3, 0x0(r28)
    mulli   r0, r4, 0x5
    extsb   r3, r3
    add     r4, r3, r0
    addi    r28, r28, 0x1
branch_0x8023c0c0:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8023c0ac
    lwz     r3, 0x34(r31)
    lwz     r0, 0x10(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 1
    sthx    r4, r3, r0
    lwz     r3, 0x10(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r31)
branch_0x8023c0ec:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x14ec
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c1a0
    mr      r3, r30
    bl      strlen
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x2e
    bl      strrchr
    bl      strlen
    addi    r0, r3, -0x1
    subf    r29, r0, r29
    addi    r3, r29, 0x0
    bl      __nwa__FUl
    crxor   6, 6, 6
    addi    r28, r3, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
    lwz     r3, 0x38(r31)
    li      r4, 0x0
    lwz     r0, 0x14(r31)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    b       branch_0x8023c174

branch_0x8023c160:
    lbz     r3, 0x0(r28)
    mulli   r0, r4, 0x5
    extsb   r3, r3
    add     r4, r3, r0
    addi    r28, r28, 0x1
branch_0x8023c174:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8023c160
    lwz     r3, 0x38(r31)
    lwz     r0, 0x14(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 1
    sthx    r4, r3, r0
    lwz     r3, 0x14(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r31)
branch_0x8023c1a0:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x14e4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c254
    mr      r3, r30
    bl      strlen
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x2e
    bl      strrchr
    bl      strlen
    addi    r0, r3, -0x1
    subf    r29, r0, r29
    addi    r3, r29, 0x0
    bl      __nwa__FUl
    crxor   6, 6, 6
    addi    r28, r3, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
    lwz     r3, 0x3c(r31)
    li      r4, 0x0
    lwz     r0, 0x18(r31)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    b       branch_0x8023c228

branch_0x8023c214:
    lbz     r3, 0x0(r28)
    mulli   r0, r4, 0x5
    extsb   r3, r3
    add     r4, r3, r0
    addi    r28, r28, 0x1
branch_0x8023c228:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8023c214
    lwz     r3, 0x3c(r31)
    lwz     r0, 0x18(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 1
    sthx    r4, r3, r0
    lwz     r3, 0x18(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x18(r31)
branch_0x8023c254:
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x14dc
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c308
    mr      r3, r30
    bl      strlen
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x2e
    bl      strrchr
    bl      strlen
    addi    r0, r3, -0x1
    subf    r29, r0, r29
    addi    r3, r29, 0x0
    bl      __nwa__FUl
    crxor   6, 6, 6
    addi    r28, r3, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
    lwz     r3, 0x40(r31)
    li      r4, 0x0
    lwz     r0, 0x8(r31)
    lwz     r3, 0x8(r3)
    slwi    r0, r0, 2
    stwx    r28, r3, r0
    b       branch_0x8023c2dc

branch_0x8023c2c8:
    lbz     r3, 0x0(r28)
    mulli   r0, r4, 0x5
    extsb   r3, r3
    add     r4, r3, r0
    addi    r28, r28, 0x1
branch_0x8023c2dc:
    lbz     r0, 0x0(r28)
    extsb.  r0, r0
    bne+    branch_0x8023c2c8
    lwz     r3, 0x40(r31)
    lwz     r0, 0x8(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 1
    sthx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8023c308:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    lwz     r28, 0xc8(sp)
    addi    sp, sp, 0xd8
    blr


.globl init__13MActorAnmDataFPCcPPCc
init__13MActorAnmDataFPCcPPCc: # 0x8023c328
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x250(sp)
    stmw    r26, 0x238(sp)
    addi    r31, r3, 0x0
    addi    r30, r5, 0x0
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023c36c
    addi    r7, r4, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x138
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    addi    r6, r2, R2Off_m0x14cc
    bl      snprintf
    b       branch_0x8023c384

branch_0x8023c36c:
    addi    r6, r4, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x138
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x1500
    bl      snprintf
branch_0x8023c384:
    cmpwi   r3, 0x0
    blt-    branch_0x8023c8ec
    cmpwi   r3, 0xfe
    ble-    branch_0x8023c398
    b       branch_0x8023c8ec

branch_0x8023c398:
    addi    r3, sp, 0x38
    crxor   6, 6, 6
    addi    r6, sp, 0x138
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    addi    r7, r2, R2Off_m0x14cc
    bl      snprintf
    addi    r3, sp, 0x138
    bl      findFirstFile__13JKRFileLoaderFPCc
    addi    r29, r3, 0x0
    addi    r26, r29, 0x0
branch_0x8023c3c4:
    lwz     r27, 0x0(r29)
    addi    r4, r2, R2Off_m0x1508
    addi    r3, r27, 0x0
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c3e8
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x8023c3e8:
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x14fc
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c408
    lwz     r3, 0xc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r31)
branch_0x8023c408:
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x14f4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c428
    lwz     r3, 0x10(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r31)
branch_0x8023c428:
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x14ec
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c448
    lwz     r3, 0x14(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r31)
branch_0x8023c448:
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x14e4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c468
    lwz     r3, 0x18(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x18(r31)
branch_0x8023c468:
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x14dc
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c488
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8023c488:
    mr      r3, r26
    lwz     r12, 0xc(r26)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne+    branch_0x8023c3c4
    cmplwi  r30, 0x0
    beq-    branch_0x8023c598
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x8023c584

branch_0x8023c4b8:
    lwzx    r26, r30, r27
    addi    r4, r2, R2Off_m0x1508
    addi    r3, r26, 0x0
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c4dc
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x8023c4dc:
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x14fc
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c4fc
    lwz     r3, 0xc(r31)
    addi    r0, r3, 0x1
    stw     r0, 0xc(r31)
branch_0x8023c4fc:
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x14f4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c51c
    lwz     r3, 0x10(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x10(r31)
branch_0x8023c51c:
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x14ec
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c53c
    lwz     r3, 0x14(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r31)
branch_0x8023c53c:
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x14e4
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c55c
    lwz     r3, 0x18(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x18(r31)
branch_0x8023c55c:
    addi    r3, r26, 0x0
    addi    r4, r2, R2Off_m0x14dc
    bl      strstr
    cmplwi  r3, 0x0
    beq-    branch_0x8023c57c
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8023c57c:
    addi    r28, r28, 0x1
    addi    r27, r27, 0x4
branch_0x8023c584:
    cmpwi   r28, 0x0
    beq+    branch_0x8023c4b8
    lwzx    r0, r30, r27
    cmplwi  r0, 0x0
    bne+    branch_0x8023c4b8
branch_0x8023c598:
    cmplwi  r29, 0x0
    beq-    branch_0x8023c5b8
    mr      r3, r29
    lwz     r12, 0xc(r29)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8023c5b8:
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023c608
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8023c604
    lwz     r0, 0x4(r31)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    li      r0, 0x0
    stw     r0, 0xc(r26)
branch_0x8023c604:
    stw     r26, 0x2c(r31)
branch_0x8023c608:
    lwz     r0, 0xc(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023c658
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8023c654
    lwz     r0, 0xc(r31)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    li      r0, 0x0
    stw     r0, 0xc(r26)
branch_0x8023c654:
    stw     r26, 0x30(r31)
branch_0x8023c658:
    lwz     r0, 0x10(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023c6a8
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8023c6a4
    lwz     r0, 0x10(r31)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    li      r0, 0x0
    stw     r0, 0xc(r26)
branch_0x8023c6a4:
    stw     r26, 0x34(r31)
branch_0x8023c6a8:
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023c6f8
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8023c6f4
    lwz     r0, 0x14(r31)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    li      r0, 0x0
    stw     r0, 0xc(r26)
branch_0x8023c6f4:
    stw     r26, 0x38(r31)
branch_0x8023c6f8:
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023c748
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8023c744
    lwz     r0, 0x18(r31)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    li      r0, 0x0
    stw     r0, 0xc(r26)
branch_0x8023c744:
    stw     r26, 0x3c(r31)
branch_0x8023c748:
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023c798
    li      r3, 0x10
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8023c794
    lwz     r0, 0x8(r31)
    stw     r0, 0x0(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r26)
    lwz     r0, 0x0(r26)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x4(r26)
    li      r0, 0x0
    stw     r0, 0xc(r26)
branch_0x8023c794:
    stw     r26, 0x40(r31)
branch_0x8023c798:
    li      r0, 0x0
    stw     r0, 0x4(r31)
    addi    r3, sp, 0x138
    stw     r0, 0x8(r31)
    stw     r0, 0xc(r31)
    stw     r0, 0x10(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x18(r31)
    bl      findFirstFile__13JKRFileLoaderFPCc
    mr      r26, r3
branch_0x8023c7c0:
    lwz     r3, 0x0(r26)
    addi    r4, r2, R2Off_m0x14c8
    bl      strstr
    mr      r3, r31
    lwz     r4, 0x0(r26)
    bl      addFileTable__13MActorAnmDataFPCc
    mr      r3, r26
    lwz     r12, 0xc(r26)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    bne+    branch_0x8023c7c0
    cmplwi  r30, 0x0
    beq-    branch_0x8023c83c
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8023c83c
    li      r27, 0x0
    li      r28, 0x0
    b       branch_0x8023c828

branch_0x8023c814:
    mr      r3, r31
    lwzx    r4, r30, r28
    bl      addFileTable__13MActorAnmDataFPCc
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
branch_0x8023c828:
    cmpwi   r27, 0x0
    beq+    branch_0x8023c814
    lwzx    r0, r30, r28
    cmplwi  r0, 0x0
    bne+    branch_0x8023c814
branch_0x8023c83c:
    cmplwi  r26, 0x0
    beq-    branch_0x8023c85c
    mr      r3, r26
    lwz     r12, 0xc(r26)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x8023c85c:
    lwz     r3, 0x2c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023c874
    addi    r4, sp, 0x38
    addi    r5, r2, R2Off_m0x1508
    bl      loadAnmPtrArray__39MActorAnmDataEach_18J3DAnmTransformKey_FPCcPCc
branch_0x8023c874:
    lwz     r3, 0x30(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023c88c
    addi    r4, sp, 0x38
    addi    r5, r2, R2Off_m0x14fc
    bl      loadAnmPtrArray__35MActorAnmDataEach_14J3DAnmColorKey_FPCcPCc
branch_0x8023c88c:
    lwz     r3, 0x34(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023c8a4
    addi    r4, sp, 0x38
    addi    r5, r2, R2Off_m0x14f4
    bl      loadAnmPtrArray__37MActorAnmDataEach_16J3DAnmTexPattern_FPCcPCc
branch_0x8023c8a4:
    lwz     r3, 0x38(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023c8bc
    addi    r4, sp, 0x38
    addi    r5, r2, R2Off_m0x14ec
    bl      loadAnmPtrArray__40MActorAnmDataEach_19J3DAnmTextureSRTKey_FPCcPCc
branch_0x8023c8bc:
    lwz     r3, 0x3c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023c8d4
    addi    r4, sp, 0x38
    addi    r5, r2, R2Off_m0x14e4
    bl      loadAnmPtrArray__36MActorAnmDataEach_15J3DAnmTevRegKey_FPCcPCc
branch_0x8023c8d4:
    lwz     r3, 0x40(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023c8ec
    addi    r4, sp, 0x38
    addi    r5, r2, R2Off_m0x14dc
    bl      loadAnmPtrArray__37MActorAnmDataEach_16J3DAnmClusterKey_FPCcPCc
branch_0x8023c8ec:
    lmw     r26, 0x238(sp)
    lwz     r0, 0x254(sp)
    addi    sp, sp, 0x250
    mtlr    r0
    blr


.globl __dt__13JKRFileFinderFv
__dt__13JKRFileFinderFv: # 0x8023c900
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023c934
    lis     r3, __vvt__13JKRFileFinder@ha
    addi    r3, r3, __vvt__13JKRFileFinder@l
    extsh.  r0, r4
    stw     r3, 0xc(r31)
    ble-    branch_0x8023c934
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023c934:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl partsNameToIdx__13MActorAnmDataFPCc
partsNameToIdx__13MActorAnmDataFPCc: # 0x8023c94c
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x24
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    lwz     r5, 0x24(r3)
    stw     r5, 0x44(sp)
    stw     r0, 0x40(sp)
    b       branch_0x8023c9b0

branch_0x8023c97c:
    lwz     r3, 0x44(sp)
    addi    r4, r30, 0x0
    addi    r3, r3, 0x8
    lwz     r3, 0x4(r3)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8023c9a0
    mr      r3, r31
    b       branch_0x8023c9d4

branch_0x8023c9a0:
    lwz     r3, 0x44(sp)
    addi    r31, r31, 0x1
    lwz     r0, 0x0(r3)
    stw     r0, 0x44(sp)
branch_0x8023c9b0:
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x28(sp)
    cmplw   r3, r0
    bne+    branch_0x8023c97c
    li      r3, -0x1
branch_0x8023c9d4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl MActorCalcKeyCode__FPCc
MActorCalcKeyCode__FPCc: # 0x8023c9ec
    li      r5, 0x0
    b       branch_0x8023ca08

branch_0x8023c9f4:
    lbz     r4, 0x0(r3)
    mulli   r0, r5, 0x5
    extsb   r4, r4
    add     r5, r4, r0
    addi    r3, r3, 0x1
branch_0x8023ca08:
    lbz     r0, 0x0(r3)
    extsb.  r0, r0
    bne+    branch_0x8023c9f4
    clrlwi  r3, r5, 16
    blr


.globl __ct__13MActorAnmDataFv
__ct__13MActorAnmDataFv: # 0x8023ca1c
    stwu    sp, -0x20(sp)
    li      r4, 0x0
    addi    r5, r3, 0x24
    stw     r4, 0x0(r3)
    lbz     r0, 0x14(sp)
    addi    sp, sp, 0x20
    stb     r0, 0x1c(r3)
    stw     r4, 0x20(r3)
    stw     r5, 0x24(r3)
    stw     r5, 0x28(r3)
    stw     r4, 0x2c(r3)
    stw     r4, 0x30(r3)
    stw     r4, 0x34(r3)
    stw     r4, 0x38(r3)
    stw     r4, 0x3c(r3)
    stw     r4, 0x40(r3)
    stw     r4, 0x44(r3)
    stw     r4, 0x48(r3)
    stw     r4, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r4, 0xc(r3)
    stw     r4, 0x10(r3)
    stw     r4, 0x14(r3)
    stw     r4, 0x18(r3)
    blr


.globl sortByFileNameRaw__17MActorAnmDataBaseFPPv
sortByFileNameRaw__17MActorAnmDataBaseFPPv: # 0x8023ca80
    stwu    sp, -0x40(sp)
    stmw    r24, 0x20(sp)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    ble-    branch_0x8023cc94
    li      r6, 0x1
    li      r11, 0x2
    li      r12, 0x4
    b       branch_0x8023cc88

branch_0x8023caa4:
    subic.  r7, r6, 0x1
    lwz     r8, 0x8(r3)
    lwz     r5, 0x4(r3)
    lwzx    r8, r8, r12
    addi    r0, r7, 0x1
    lhzx    r9, r5, r11
    mtctr   r0
    lwzx    r10, r4, r12
    slwi    r30, r7, 2
    slwi    r31, r7, 1
    blt-    branch_0x8023cc58
branch_0x8023cad0:
    lwz     r0, 0x8(r3)
    addi    r28, r8, 0x0
    add     r5, r0, r30
    lwz     r0, 0x0(r5)
    mr      r27, r0
    b       branch_0x8023cb78

branch_0x8023cae8:
    extsb   r25, r26
    cmpwi   r25, 0x61
    blt-    branch_0x8023cb04
    cmpwi   r25, 0x7a
    bgt-    branch_0x8023cb04
    addi    r29, r25, -0x20
    b       branch_0x8023cb08

branch_0x8023cb04:
    mr      r29, r25
branch_0x8023cb08:
    extsb   r24, r24
    cmpwi   r24, 0x61
    blt-    branch_0x8023cb24
    cmpwi   r24, 0x7a
    bgt-    branch_0x8023cb24
    addi    r26, r24, -0x20
    b       branch_0x8023cb28

branch_0x8023cb24:
    mr      r26, r24
branch_0x8023cb28:
    cmpw    r29, r26
    ble-    branch_0x8023cb38
    li      r29, -0x1
    b       branch_0x8023cc20

branch_0x8023cb38:
    cmpwi   r25, 0x61
    blt-    branch_0x8023cb4c
    cmpwi   r25, 0x7a
    bgt-    branch_0x8023cb4c
    addi    r25, r25, -0x20
branch_0x8023cb4c:
    cmpwi   r24, 0x61
    blt-    branch_0x8023cb60
    cmpwi   r24, 0x7a
    bgt-    branch_0x8023cb60
    addi    r24, r24, -0x20
branch_0x8023cb60:
    cmpw    r25, r24
    bge-    branch_0x8023cb70
    li      r29, 0x1
    b       branch_0x8023cc20

branch_0x8023cb70:
    addi    r28, r28, 0x1
    addi    r27, r27, 0x1
branch_0x8023cb78:
    lbz     r26, 0x0(r28)
    extsb.  r29, r26
    beq-    branch_0x8023cb90
    lbz     r24, 0x0(r27)
    extsb.  r29, r24
    bne+    branch_0x8023cae8
branch_0x8023cb90:
    extsb   r24, r26
    cmpwi   r24, 0x61
    blt-    branch_0x8023cbac
    cmpwi   r24, 0x7a
    bgt-    branch_0x8023cbac
    addi    r26, r24, -0x20
    b       branch_0x8023cbb0

branch_0x8023cbac:
    mr      r26, r24
branch_0x8023cbb0:
    lbz     r25, 0x0(r27)
    extsb   r25, r25
    cmpwi   r25, 0x61
    blt-    branch_0x8023cbd0
    cmpwi   r25, 0x7a
    bgt-    branch_0x8023cbd0
    addi    r27, r25, -0x20
    b       branch_0x8023cbd4

branch_0x8023cbd0:
    mr      r27, r25
branch_0x8023cbd4:
    cmpw    r26, r27
    ble-    branch_0x8023cbe4
    li      r29, -0x1
    b       branch_0x8023cc20

branch_0x8023cbe4:
    cmpwi   r24, 0x61
    blt-    branch_0x8023cbf8
    cmpwi   r24, 0x7a
    bgt-    branch_0x8023cbf8
    addi    r24, r24, -0x20
branch_0x8023cbf8:
    cmpwi   r25, 0x61
    blt-    branch_0x8023cc0c
    cmpwi   r25, 0x7a
    bgt-    branch_0x8023cc0c
    addi    r25, r25, -0x20
branch_0x8023cc0c:
    cmpw    r24, r25
    bge-    branch_0x8023cc1c
    li      r29, 0x1
    b       branch_0x8023cc20

branch_0x8023cc1c:
    li      r29, 0x0
branch_0x8023cc20:
    cmpwi   r29, 0x0
    blt-    branch_0x8023cc58
    stw     r0, 0x4(r5)
    add     r24, r4, r30
    addi    r7, r7, -0x1
    lwz     r0, 0x4(r3)
    addi    r30, r30, -0x4
    add     r5, r0, r31
    lhz     r0, 0x0(r5)
    addi    r31, r31, -0x2
    sth     r0, 0x2(r5)
    lwz     r0, 0x0(r24)
    stw     r0, 0x4(r24)
    bdnz+      branch_0x8023cad0
branch_0x8023cc58:
    slwi    r24, r7, 2
    lwz     r5, 0x8(r3)
    addi    r30, r24, 0x4
    stwx    r8, r5, r30
    slwi    r5, r7, 1
    addi    r0, r5, 0x2
    lwz     r5, 0x4(r3)
    addi    r6, r6, 0x1
    addi    r11, r11, 0x2
    sthx    r9, r5, r0
    addi    r12, r12, 0x4
    stwx    r10, r4, r30
branch_0x8023cc88:
    lwz     r0, 0x0(r3)
    cmpw    r6, r0
    blt+    branch_0x8023caa4
branch_0x8023cc94:
    lmw     r24, 0x20(sp)
    addi    sp, sp, 0x40
    blr


.globl checkLower__17MActorAnmDataBaseFPCc
checkLower__17MActorAnmDataBaseFPCc: # 0x8023cca0
    lwz     r0, 0x0(r3)
    li      r5, 0x0
    cmpwi   r0, 0x0
    mtctr   r0
    blelr-    

branch_0x8023ccb4:
    lwz     r6, 0x8(r3)
    mr      r7, r4
    lwzx    r6, r6, r5
    b       branch_0x8023cd44

branch_0x8023ccc4:
    extsb   r9, r8
    cmpwi   r9, 0x61
    blt-    branch_0x8023cce0
    cmpwi   r9, 0x7a
    bgt-    branch_0x8023cce0
    addi    r0, r9, -0x20
    b       branch_0x8023cce4

branch_0x8023cce0:
    mr      r0, r9
branch_0x8023cce4:
    extsb   r10, r10
    cmpwi   r10, 0x61
    blt-    branch_0x8023cd00
    cmpwi   r10, 0x7a
    bgt-    branch_0x8023cd00
    addi    r8, r10, -0x20
    b       branch_0x8023cd04

branch_0x8023cd00:
    mr      r8, r10
branch_0x8023cd04:
    cmpw    r0, r8
    bgt-    branch_0x8023cd5c
    cmpwi   r9, 0x61
    blt-    branch_0x8023cd20
    cmpwi   r9, 0x7a
    bgt-    branch_0x8023cd20
    addi    r9, r9, -0x20
branch_0x8023cd20:
    cmpwi   r10, 0x61
    blt-    branch_0x8023cd34
    cmpwi   r10, 0x7a
    bgt-    branch_0x8023cd34
    addi    r10, r10, -0x20
branch_0x8023cd34:
    cmpw    r9, r10
    blt-    branch_0x8023cd5c
    addi    r7, r7, 0x1
    addi    r6, r6, 0x1
branch_0x8023cd44:
    lbz     r8, 0x0(r7)
    extsb.  r0, r8
    beq-    branch_0x8023cd5c
    lbz     r10, 0x0(r6)
    extsb.  r0, r10
    bne+    branch_0x8023ccc4
branch_0x8023cd5c:
    addi    r5, r5, 0x4
    bdnz+      branch_0x8023ccb4
    blr


.globl loadAnmPtrArray__37MActorAnmDataEach_16J3DAnmClusterKey_FPCcPCc
loadAnmPtrArray__37MActorAnmDataEach_16J3DAnmClusterKey_FPCcPCc: # 0x8023cd68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r27, 0x224(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023ce2c

branch_0x8023cda0:
    lwz     r3, 0x8(r27)
    lwzx    r7, r3, r31
    lbz     r0, 0x0(r7)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023cdec
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x11c
    addi    r6, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    b       branch_0x8023ce08

branch_0x8023cdec:
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r3, sp, 0x11c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
branch_0x8023ce08:
    addi    r3, sp, 0x11c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8023ce24
    bl      load__20J3DAnmLoaderDataBaseFPCv
    lwz     r4, 0xc(r27)
    stwx    r3, r4, r31
branch_0x8023ce24:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023ce2c:
    lwz     r0, 0x0(r27)
    cmpw    r30, r0
    blt+    branch_0x8023cda0
    mr      r3, r27
    lwz     r4, 0xc(r27)
    bl      sortByFileNameRaw__17MActorAnmDataBaseFPPv
    lmw     r27, 0x224(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr


.globl loadAnmPtrArray__36MActorAnmDataEach_15J3DAnmTevRegKey_FPCcPCc
loadAnmPtrArray__36MActorAnmDataEach_15J3DAnmTevRegKey_FPCcPCc: # 0x8023ce58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r27, 0x224(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023cf1c

branch_0x8023ce90:
    lwz     r3, 0x8(r27)
    lwzx    r7, r3, r31
    lbz     r0, 0x0(r7)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023cedc
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x11c
    addi    r6, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    b       branch_0x8023cef8

branch_0x8023cedc:
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r3, sp, 0x11c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
branch_0x8023cef8:
    addi    r3, sp, 0x11c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8023cf14
    bl      load__20J3DAnmLoaderDataBaseFPCv
    lwz     r4, 0xc(r27)
    stwx    r3, r4, r31
branch_0x8023cf14:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023cf1c:
    lwz     r0, 0x0(r27)
    cmpw    r30, r0
    blt+    branch_0x8023ce90
    mr      r3, r27
    lwz     r4, 0xc(r27)
    bl      sortByFileNameRaw__17MActorAnmDataBaseFPPv
    lmw     r27, 0x224(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr


.globl loadAnmPtrArray__40MActorAnmDataEach_19J3DAnmTextureSRTKey_FPCcPCc
loadAnmPtrArray__40MActorAnmDataEach_19J3DAnmTextureSRTKey_FPCcPCc: # 0x8023cf48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r27, 0x224(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023d00c

branch_0x8023cf80:
    lwz     r3, 0x8(r27)
    lwzx    r7, r3, r31
    lbz     r0, 0x0(r7)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023cfcc
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x11c
    addi    r6, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    b       branch_0x8023cfe8

branch_0x8023cfcc:
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r3, sp, 0x11c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
branch_0x8023cfe8:
    addi    r3, sp, 0x11c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8023d004
    bl      load__20J3DAnmLoaderDataBaseFPCv
    lwz     r4, 0xc(r27)
    stwx    r3, r4, r31
branch_0x8023d004:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023d00c:
    lwz     r0, 0x0(r27)
    cmpw    r30, r0
    blt+    branch_0x8023cf80
    mr      r3, r27
    lwz     r4, 0xc(r27)
    bl      sortByFileNameRaw__17MActorAnmDataBaseFPPv
    lmw     r27, 0x224(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr


.globl loadAnmPtrArray__37MActorAnmDataEach_16J3DAnmTexPattern_FPCcPCc
loadAnmPtrArray__37MActorAnmDataEach_16J3DAnmTexPattern_FPCcPCc: # 0x8023d038
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r27, 0x224(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023d0fc

branch_0x8023d070:
    lwz     r3, 0x8(r27)
    lwzx    r7, r3, r31
    lbz     r0, 0x0(r7)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023d0bc
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x11c
    addi    r6, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    b       branch_0x8023d0d8

branch_0x8023d0bc:
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r3, sp, 0x11c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
branch_0x8023d0d8:
    addi    r3, sp, 0x11c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8023d0f4
    bl      load__20J3DAnmLoaderDataBaseFPCv
    lwz     r4, 0xc(r27)
    stwx    r3, r4, r31
branch_0x8023d0f4:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023d0fc:
    lwz     r0, 0x0(r27)
    cmpw    r30, r0
    blt+    branch_0x8023d070
    mr      r3, r27
    lwz     r4, 0xc(r27)
    bl      sortByFileNameRaw__17MActorAnmDataBaseFPPv
    lmw     r27, 0x224(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr


.globl loadAnmPtrArray__35MActorAnmDataEach_14J3DAnmColorKey_FPCcPCc
loadAnmPtrArray__35MActorAnmDataEach_14J3DAnmColorKey_FPCcPCc: # 0x8023d128
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r27, 0x224(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023d1ec

branch_0x8023d160:
    lwz     r3, 0x8(r27)
    lwzx    r7, r3, r31
    lbz     r0, 0x0(r7)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023d1ac
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x11c
    addi    r6, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    b       branch_0x8023d1c8

branch_0x8023d1ac:
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r3, sp, 0x11c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
branch_0x8023d1c8:
    addi    r3, sp, 0x11c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8023d1e4
    bl      load__20J3DAnmLoaderDataBaseFPCv
    lwz     r4, 0xc(r27)
    stwx    r3, r4, r31
branch_0x8023d1e4:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023d1ec:
    lwz     r0, 0x0(r27)
    cmpw    r30, r0
    blt+    branch_0x8023d160
    mr      r3, r27
    lwz     r4, 0xc(r27)
    bl      sortByFileNameRaw__17MActorAnmDataBaseFPPv
    lmw     r27, 0x224(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr


.globl loadAnmPtrArray__39MActorAnmDataEach_18J3DAnmTransformKey_FPCcPCc
loadAnmPtrArray__39MActorAnmDataEach_18J3DAnmTransformKey_FPCcPCc: # 0x8023d218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x238(sp)
    stmw    r27, 0x224(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x0(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023d2dc

branch_0x8023d250:
    lwz     r3, 0x8(r27)
    lwzx    r7, r3, r31
    lbz     r0, 0x0(r7)
    cmpwi   r0, 0x2f
    beq-    branch_0x8023d29c
    addi    r6, r28, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    addi    r7, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x11c
    addi    r6, sp, 0x1c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
    b       branch_0x8023d2b8

branch_0x8023d29c:
    addi    r6, r7, 0x0
    crxor   6, 6, 6
    addi    r7, r29, 0x0
    addi    r3, sp, 0x11c
    li      r4, 0xff
    addi    r5, r2, R2Off_m0x14d4
    bl      snprintf
branch_0x8023d2b8:
    addi    r3, sp, 0x11c
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x8023d2d4
    bl      load__20J3DAnmLoaderDataBaseFPCv
    lwz     r4, 0xc(r27)
    stwx    r3, r4, r31
branch_0x8023d2d4:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023d2dc:
    lwz     r0, 0x0(r27)
    cmpw    r30, r0
    blt+    branch_0x8023d250
    mr      r3, r27
    lwz     r4, 0xc(r27)
    bl      sortByFileNameRaw__17MActorAnmDataBaseFPPv
    lmw     r27, 0x224(sp)
    lwz     r0, 0x23c(sp)
    addi    sp, sp, 0x238
    mtlr    r0
    blr

