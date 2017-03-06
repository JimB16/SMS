
.globl __dt__8SDLModelFv
__dt__8SDLModelFv: # 0x8023d308
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8023d350
    lis     r3, 0x803e
    subi    r0, r3, 0x4158
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__8J3DModelFv
    extsh.  r0, r31
    ble-    branch_0x8023d350
    mr      r3, r30
    bl      __dl__FPv
branch_0x8023d350:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl viewCalcSimple__8SDLModelFv
viewCalcSimple__8SDLModelFv: # 0x8023d36c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    li      r31, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    stw     r29, 0x34(sp)
    li      r29, 0x0
    stw     r28, 0x30(sp)
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
    lwz     r3, -0x7118(r13)
    addi    r28, r3, 0x1ec
    b       branch_0x8023d3fc

branch_0x8023d3d0:
    lwz     r0, 0x7c(r30)
    mr      r3, r28
    lwz     r5, 0x64(r30)
    slwi    r4, r0, 2
    lwz     r0, 0x58(r30)
    lwzx    r5, r5, r4
    add     r4, r0, r29
    add     r5, r5, r29
    bl      PSMTXConcat
    addi    r31, r31, 0x1
    addi    r29, r29, 0x30
branch_0x8023d3fc:
    lwz     r3, 0x4(r30)
    lhz     r3, 0x98(r3)
    cmpw    r31, r3
    blt+    branch_0x8023d3d0
    lwz     r0, 0x7c(r30)
    mulli   r4, r3, 0x30
    lwz     r3, 0x64(r30)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      DCStoreRange
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl entry__8SDLModelFv
entry__8SDLModelFv: # 0x8023d444
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stmw    r27, 0xa4(sp)
    mr      r27, r3
    lwz     r3, 0xa8(r3)
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x8023d484
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8023d484
    lwz     r3, 0xa0(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x8023d484
    lwz     r0, 0x18(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8023d49c
branch_0x8023d484:
    lwz     r0, 0xa8(r27)
    addi    r3, r27, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0xa8(r27)
    bl      entry__8J3DModelFv
    b       branch_0x8023d5b0

branch_0x8023d49c:
    lwz     r0, 0xa8(r27)
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    ori     r0, r0, 0x1
    stw     r0, 0xa8(r27)
    li      r0, 0x0
    addi    r30, r3, 0x44
    stw     r0, 0xa4(r27)
    addi    r29, r3, 0x48
    lwz     r31, 0xa0(r27)
    lwz     r0, 0x10(r31)
    addi    r28, r31, 0x10
    stw     r28, 0x80(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x80(sp)
    lwz     r5, 0x44(r3)
    lwz     r6, 0x48(r3)
    stw     r0, 0x74(sp)
    lwz     r0, 0x74(sp)
    b       branch_0x8023d538

branch_0x8023d4ec:
    lwz     r3, 0x7c(sp)
    li      r4, 0x0
    lwz     r7, 0x8(r3)
    lwz     r3, 0x0(r7)
    cmplw   r3, r5
    bne-    branch_0x8023d514
    lwz     r3, 0x4(r7)
    cmplw   r3, r6
    bne-    branch_0x8023d514
    li      r4, 0x1
branch_0x8023d514:
    clrlwi. r3, r4, 24
    beq-    branch_0x8023d52c
    lwz     r0, 0x8(r7)
    stw     r0, 0xa4(r27)
    stw     r27, 0x8(r7)
    b       branch_0x8023d5b0

branch_0x8023d52c:
    lwz     r3, 0x7c(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x7c(sp)
branch_0x8023d538:
    lwz     r3, 0x7c(sp)
    stw     r3, 0x70(sp)
    lwz     r3, 0x70(sp)
    cmplw   r3, r0
    bne+    branch_0x8023d4ec
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r7, r3
    beq-    branch_0x8023d56c
    li      r0, 0x0
    stw     r0, 0x0(r7)
    stw     r0, 0x4(r7)
    stw     r0, 0x8(r7)
branch_0x8023d56c:
    stw     r7, 0x84(sp)
    addi    r5, sp, 0x60
    addi    r3, sp, 0x5c
    lwz     r0, 0x0(r30)
    addi    r4, r31, 0x8
    addi    r6, sp, 0x84
    stw     r0, 0x0(r7)
    lwz     r0, 0x0(r29)
    stw     r0, 0x4(r7)
    lwz     r7, 0x84(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0xa4(r27)
    stw     r27, 0x8(r7)
    stw     r28, 0x64(sp)
    lwz     r0, 0x64(sp)
    stw     r0, 0x60(sp)
    bl      insert__Q27JGadget68TList_P15SDLDrawBufToken_Q27JGadget30TAllocator_P15SDLDrawBufToken__FQ37JGadget68TList_P15SDLDrawBufToken_Q27JGadget30TAllocator_P15SDLDrawBufToken__8iteratorRCP15SDLDrawBufToken
branch_0x8023d5b0:
    lmw     r27, 0xa4(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl insert__Q27JGadget68TList_P15SDLDrawBufToken_Q27JGadget30TAllocator_P15SDLDrawBufToken__FQ37JGadget68TList_P15SDLDrawBufToken_Q27JGadget30TAllocator_P15SDLDrawBufToken__8iteratorRCP15SDLDrawBufToken
insert__Q27JGadget68TList_P15SDLDrawBufToken_Q27JGadget30TAllocator_P15SDLDrawBufToken__FQ37JGadget68TList_P15SDLDrawBufToken_Q27JGadget30TAllocator_P15SDLDrawBufToken__8iteratorRCP15SDLDrawBufToken: # 0x8023d5c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x38(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    li      r3, 0xc
    lwz     r31, 0x0(r5)
    lwz     r30, 0x4(r31)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x8023d60c
    li      r3, 0x0
    b       branch_0x8023d628

branch_0x8023d60c:
    stw     r31, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x2c(sp)
    beq-    branch_0x8023d628
    lwz     r0, 0x0(r29)
    stw     r0, 0x0(r4)
branch_0x8023d628:
    cmplwi  r3, 0x0
    bne-    branch_0x8023d640
    lwz     r3, 0x8(sp)
    addi    r0, r28, 0x8
    stw     r0, 0x0(r3)
    b       branch_0x8023d65c

branch_0x8023d640:
    stw     r3, 0x4(r31)
    stw     r3, 0x0(r30)
    lwz     r4, 0x4(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r28)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x8023d65c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl entryModelDataSDL__8SDLModelFP12SDLModelDataUlUl
entryModelDataSDL__8SDLModelFP12SDLModelDataUlUl: # 0x8023d67c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stmw    r20, 0x108(sp)
    clrlwi. r28, r5, 31
    addi    r27, r4, 0x0
    mr      r29, r3
    mr      r30, r6
    lwz     r31, 0x0(r4)
    stw     r31, 0x4(r3)
    beq-    branch_0x8023d6b4
    lwz     r0, 0xa8(r29)
    ori     r0, r0, 0x4
    stw     r0, 0xa8(r29)
branch_0x8023d6b4:
    rlwinm. r23, r5, 0, 30, 30
    beq-    branch_0x8023d6c8
    lwz     r0, 0xa8(r29)
    ori     r0, r0, 0x2
    stw     r0, 0xa8(r29)
branch_0x8023d6c8:
    rlwinm. r0, r5, 0, 29, 29
    beq-    branch_0x8023d6dc
    lwz     r0, 0xa8(r29)
    ori     r0, r0, 0x8
    stw     r0, 0xa8(r29)
branch_0x8023d6dc:
    lhz     r3, 0x1c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023d714
    bl      __nwa__FUl
    stw     r3, 0x50(r29)
    lhz     r3, 0x84(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8023d704
    bl      __nwa__FUl
    stw     r3, 0x54(r29)
branch_0x8023d704:
    lhz     r0, 0x1c(r31)
    mulli   r3, r0, 0x30
    bl      __nwa__FUl
    stw     r3, 0x58(r29)
branch_0x8023d714:
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023d72c
    mulli   r3, r0, 0x30
    bl      __nwa__FUl
    stw     r3, 0x5c(r29)
branch_0x8023d72c:
    cmplwi  r30, 0x0
    beq-    branch_0x8023d774
    li      r22, 0x0
    addi    r21, r22, 0x0
    slwi    r24, r30, 2
    li      r20, 0x0
branch_0x8023d744:
    mr      r3, r24
    bl      __nwa__FUl
    add     r25, r29, r22
    stw     r3, 0x60(r25)
    mr      r3, r24
    bl      __nwa__FUl
    stw     r3, 0x68(r25)
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    stw     r21, 0x70(r25)
    addi    r22, r22, 0x4
    blt+    branch_0x8023d744
branch_0x8023d774:
    li      r20, 0x0
    li      r22, 0x0
branch_0x8023d77c:
    add     r21, r29, r22
    li      r25, 0x0
    li      r24, 0x0
    b       branch_0x8023d7cc

branch_0x8023d78c:
    lhz     r0, 0x98(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023d7c4
    mulli   r3, r0, 0x30
    li      r4, 0x20
    bl      __nwa__FUli
    lwz     r5, 0x60(r21)
    li      r4, 0x20
    stwx    r3, r5, r24
    lhz     r0, 0x98(r31)
    mulli   r3, r0, 0x24
    bl      __nwa__FUli
    lwz     r4, 0x68(r21)
    stwx    r3, r4, r24
branch_0x8023d7c4:
    addi    r25, r25, 0x1
    addi    r24, r24, 0x4
branch_0x8023d7cc:
    cmplw   r25, r30
    blt+    branch_0x8023d78c
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    addi    r22, r22, 0x4
    blt+    branch_0x8023d77c
    lhz     r21, 0x2c(r31)
    cmplwi  r21, 0x0
    beq-    branch_0x8023d854
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
    b       branch_0x8023d848

branch_0x8023d828:
    lwz     r5, 0x30(r31)
    clrlslwi  r0, r6, 16, 2
    lwz     r4, 0x84(r29)
    addi    r6, r6, 0x1
    lwzx    r5, r5, r0
    addi    r0, r3, 0x14
    stwx    r5, r4, r0
    addi    r3, r3, 0x34
branch_0x8023d848:
    lhz     r0, 0x2c(r31)
    cmpw    r6, r0
    blt+    branch_0x8023d828
branch_0x8023d854:
    lhz     r24, 0x24(r31)
    cmplwi  r24, 0x0
    beq-    branch_0x8023daec
    cmplwi  r23, 0x0
    beq-    branch_0x8023d980
    lwz     r0, 0x4(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x8023d980
    mulli   r3, r24, 0x48
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8024
    lis     r5, 0x8024
    subi    r4, r4, 0x2204
    subi    r5, r5, 0x22fc
    addi    r7, r24, 0x0
    li      r6, 0x48
    bl      __construct_new_array
    lwz     r4, 0x4(r27)
    mr      r25, r3
    li      r22, 0x0
    lwz     r23, 0x80(r4)
    li      r26, 0x0
    b       branch_0x8023d96c

branch_0x8023d8b4:
    lwz     r3, 0x28(r31)
    clrlslwi  r6, r22, 16, 2
    add     r24, r25, r26
    lwzx    r0, r3, r6
    addi    r3, r24, 0x0
    stw     r0, 0x38(r24)
    lwz     r4, 0x28(r31)
    lwz     r5, 0x84(r29)
    lwzx    r4, r4, r6
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r4, r5, r0
    bl      addShapePacket__12J3DMatPacketFP14J3DShapePacket
    lwz     r0, 0xac(r31)
    li      r3, 0x10
    stw     r0, 0x40(r24)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8023d918
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x8023d918:
    addi    r6, r26, 0x30
    stw     r3, 0x30(r24)
    add     r6, r23, r6
    lwz     r4, 0x0(r6)
    addi    r22, r22, 0x1
    lwz     r3, 0x30(r24)
    addi    r26, r26, 0x48
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    lwz     r4, 0x0(r6)
    lwz     r3, 0x30(r24)
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r3)
    lwz     r4, 0x0(r6)
    lwz     r3, 0x30(r24)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r3)
    lwz     r4, 0x0(r6)
    lwz     r3, 0x30(r24)
    lwz     r0, 0xc(r4)
    stw     r0, 0xc(r3)
branch_0x8023d96c:
    lhz     r0, 0x24(r31)
    cmpw    r22, r0
    blt+    branch_0x8023d8b4
    stw     r25, 0x80(r29)
    b       branch_0x8023daec

branch_0x8023d980:
    mulli   r3, r24, 0x48
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8024
    lis     r5, 0x8024
    subi    r4, r4, 0x2204
    subi    r5, r5, 0x22fc
    addi    r7, r24, 0x0
    li      r6, 0x48
    bl      __construct_new_array
    addi    r26, r3, 0x0
    li      r24, 0x0
    li      r23, 0x0
    b       branch_0x8023dacc

branch_0x8023d9b8:
    lwz     r3, 0x28(r31)
    clrlslwi  r22, r24, 16, 2
    add     r25, r26, r23
    lwzx    r0, r3, r22
    mr      r3, r25
    stw     r0, 0x38(r25)
    lwz     r4, 0x28(r31)
    lwz     r5, 0x84(r29)
    lwzx    r4, r4, r22
    lwz     r4, 0x4(r4)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r4, r5, r0
    bl      addShapePacket__12J3DMatPacketFP14J3DShapePacket
    lwz     r0, 0xac(r31)
    cmplwi  r28, 0x0
    stw     r0, 0x40(r25)
    beq-    branch_0x8023da80
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r22
    bl      countDLSize__11J3DMaterialFv
    addi    r21, r3, 0x0
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8023da34
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x8023da34:
    addi    r22, r25, 0x30
    stw     r3, 0x30(r25)
    addi    r0, r21, 0x1f
    clrrwi  r0, r0, 5
    lwz     r3, 0x30(r25)
    li      r4, 0x20
    stw     r0, 0xc(r3)
    lwz     r3, 0x30(r25)
    lwz     r3, 0xc(r3)
    bl      __nwa__FUli
    lwz     r4, 0x0(r22)
    li      r0, 0x0
    stw     r3, 0x0(r4)
    lwz     r4, 0x0(r22)
    lwz     r3, 0x0(r4)
    stw     r3, 0x4(r4)
    lwz     r3, 0x0(r22)
    stw     r0, 0x8(r3)
    b       branch_0x8023dac4

branch_0x8023da80:
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r22
    bl      countDLSize__11J3DMaterialFv
    addi    r21, r3, 0x0
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x8023dab4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
branch_0x8023dab4:
    stw     r3, 0x30(r25)
    mr      r4, r21
    lwz     r3, 0x30(r25)
    bl      newDisplayList__17J3DDisplayListObjFUl
branch_0x8023dac4:
    addi    r24, r24, 0x1
    addi    r23, r23, 0x48
branch_0x8023dacc:
    lhz     r0, 0x24(r31)
    cmpw    r24, r0
    blt+    branch_0x8023d9b8
    stw     r26, 0x80(r29)
    lwz     r0, 0x4(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x8023daec
    stw     r29, 0x4(r27)
branch_0x8023daec:
    li      r20, 0x0
    li      r22, 0x0
    li      r23, 0x0
    b       branch_0x8023db40

branch_0x8023dafc:
    lwz     r3, 0x4(r29)
    clrlslwi  r0, r23, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r21, r3, r0
    lwz     r3, 0x24(r21)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8023db3c
    lwz     r3, 0x4(r21)
    bl      countBumpMtxNum__8J3DShapeCFv
    add     r20, r20, r3
    addi    r22, r22, 0x1
branch_0x8023db3c:
    addi    r23, r23, 0x1
branch_0x8023db40:
    lhz     r0, 0x24(r31)
    cmpw    r23, r0
    blt+    branch_0x8023dafc
    clrlwi. r0, r20, 16
    beq-    branch_0x8023db88
    cmplwi  r30, 0x0
    beq-    branch_0x8023db88
    clrlslwi  r21, r22, 16, 2
    li      r20, 0x0
    li      r23, 0x0
branch_0x8023db68:
    mr      r3, r21
    bl      __nwa__FUl
    addi    r20, r20, 0x1
    addi    r0, r23, 0x70
    cmpwi   r20, 0x2
    stwx    r3, r29, r0
    addi    r23, r23, 0x4
    blt+    branch_0x8023db68
branch_0x8023db88:
    slwi    r28, r30, 2
    li      r23, 0x0
    li      r26, 0x0
branch_0x8023db94:
    add     r21, r29, r26
    li      r24, 0x0
    li      r27, 0x0
    li      r25, 0x0
    b       branch_0x8023dbfc

branch_0x8023dba8:
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
    bne-    branch_0x8023dbf8
    mr      r3, r28
    bl      __nwa__FUl
    lwz     r4, 0x70(r21)
    stwx    r3, r4, r27
    addi    r27, r27, 0x4
    lwz     r3, 0x4(r20)
    stw     r24, 0x5c(r3)
    addi    r24, r24, 0x1
branch_0x8023dbf8:
    addi    r25, r25, 0x1
branch_0x8023dbfc:
    lhz     r0, 0x24(r31)
    cmpw    r25, r0
    blt+    branch_0x8023dba8
    addi    r23, r23, 0x1
    cmpwi   r23, 0x2
    addi    r26, r26, 0x4
    blt+    branch_0x8023db94
    li      r20, 0x0
    li      r23, 0x0
branch_0x8023dc20:
    add     r21, r29, r23
    li      r24, 0x0
    li      r26, 0x0
    b       branch_0x8023dca0

branch_0x8023dc30:
    lwz     r3, 0x4(r29)
    clrlslwi  r0, r26, 16, 2
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r0
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x8023dc9c
    li      r27, 0x0
    li      r25, 0x0
    b       branch_0x8023dc90

branch_0x8023dc6c:
    lhz     r0, 0x98(r31)
    li      r4, 0x20
    mulli   r3, r0, 0x24
    bl      __nwa__FUli
    lwz     r0, 0x70(r21)
    addi    r27, r27, 0x1
    lwzx    r4, r24, r0
    stwx    r3, r4, r25
    addi    r25, r25, 0x4
branch_0x8023dc90:
    cmplw   r27, r30
    blt+    branch_0x8023dc6c
    addi    r24, r24, 0x4
branch_0x8023dc9c:
    addi    r26, r26, 0x1
branch_0x8023dca0:
    lhz     r0, 0x24(r31)
    cmpw    r26, r0
    blt+    branch_0x8023dc30
    addi    r20, r20, 0x1
    cmpwi   r20, 0x2
    addi    r23, r23, 0x4
    blt+    branch_0x8023dc20
    clrlwi. r0, r22, 16
    beq-    branch_0x8023dcd0
    lwz     r3, 0x4(r29)
    li      r0, 0x1
    sth     r0, 0x18(r3)
branch_0x8023dcd0:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r20, r3
    beq-    branch_0x8023dcec
    addi    r4, r31, 0x3c
    addi    r3, r20, 0x0
    bl      __ct__15J3DVertexBufferFP13J3DVertexData
branch_0x8023dcec:
    stw     r20, 0x98(r29)
    lmw     r20, 0x108(sp)
    lwz     r0, 0x13c(sp)
    addi    sp, sp, 0x138
    mtlr    r0
    blr


.globl __dt__12SDLMatPacketFv
__dt__12SDLMatPacketFv: # 0x8023dd04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8023dd4c
    lis     r3, 0x803e
    subi    r0, r3, 0x4138
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__12J3DMatPacketFv
    extsh.  r0, r31
    ble-    branch_0x8023dd4c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8023dd4c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__8SDLModelFP12SDLModelDataUlUl
__ct__8SDLModelFP12SDLModelDataUlUl: # 0x8023dd68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r6
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__8J3DModelFv
    lwz     r31, 0x8(sp)
    lis     r3, 0x803e
    subi    r0, r3, 0x4158
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r28, 0xa0(r31)
    stw     r0, 0xa4(r31)
    stw     r0, 0xa8(r31)
    bl      initialize__8J3DModelFv
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    bl      entryModelDataSDL__8SDLModelFP12SDLModelDataUlUl
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__12SDLMatPacketFv
__ct__12SDLMatPacketFv: # 0x8023ddfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12J3DMatPacketFv
    lis     r3, 0x803e
    subi    r0, r3, 0x4138
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl entrySDLModels__12SDLModelDataFv
entrySDLModels__12SDLModelDataFv: # 0x8023de38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stmw    r27, 0x7c(sp)
    mr      r31, r3
    lwz     r0, 0x18(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8023e020
    lwz     r3, 0x10(r31)
    addi    r0, r31, 0x10
    stw     r3, 0x70(sp)
    stw     r0, 0x6c(sp)
    b       branch_0x8023e000

branch_0x8023de6c:
    lwz     r3, 0x0(r31)
    lwz     r4, 0x70(sp)
    lwz     r29, 0x10(r3)
    lwz     r30, 0x8(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x8023dfbc
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r28, 0x10(r29)
    cmplwi  r28, 0x0
    beq-    branch_0x8023df28
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r27, 0x10(r28)
    cmplwi  r27, 0x0
    beq-    branch_0x8023deec
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023deec:
    lwz     r27, 0x14(r28)
    cmplwi  r27, 0x0
    beq-    branch_0x8023df28
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023df28:
    lwz     r27, 0x14(r29)
    cmplwi  r27, 0x0
    beq-    branch_0x8023dfbc
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r28, 0x10(r27)
    cmplwi  r28, 0x0
    beq-    branch_0x8023df80
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r28)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r28)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023df80:
    lwz     r27, 0x14(r27)
    cmplwi  r27, 0x0
    beq-    branch_0x8023dfbc
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023dfbc:
    lwz     r3, 0x70(sp)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x8(r3)
    b       branch_0x8023dfdc

branch_0x8023dfcc:
    lwz     r0, 0xa8(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0xa8(r3)
    lwz     r3, 0xa4(r3)
branch_0x8023dfdc:
    cmplwi  r3, 0x0
    bne+    branch_0x8023dfcc
    lwz     r3, 0x70(sp)
    li      r0, 0x0
    lwz     r3, 0x8(r3)
    stw     r0, 0x8(r3)
    lwz     r3, 0x70(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x70(sp)
branch_0x8023e000:
    lwz     r3, 0x6c(sp)
    lwz     r0, 0x70(sp)
    stw     r3, 0x50(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x50(sp)
    lwz     r3, 0x4c(sp)
    cmplw   r3, r0
    bne+    branch_0x8023de6c
branch_0x8023e020:
    lmw     r27, 0x7c(sp)
    lwz     r0, 0x94(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl __ct__12SDLModelDataFP12J3DModelData
__ct__12SDLModelDataFP12J3DModelData: # 0x8023e034
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    stw     r4, 0x0(r31)
    addi    r0, r31, 0x10
    addi    r4, r31, 0x0
    stw     r5, 0x4(r31)
    lbz     r3, 0x10(sp)
    stb     r3, 0x8(r31)
    stw     r5, 0xc(r31)
    stw     r0, 0x10(r31)
    stw     r0, 0x14(r31)
    stw     r5, 0x18(r31)
    lwz     r3, -0x70b0(r13)
    bl      registerSDLModelData__10TConductorFP12SDLModelData
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken: # 0x8023e098
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    mr.     r29, r4
    addi    r31, r3, 0x0
    addi    r30, r5, 0x0
    beq-    branch_0x8023e390
    lwz     r28, 0x60(r29)
    b       branch_0x8023e100

branch_0x8023e0c0:
    lwz     r3, 0x4(r28)
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8023e0d8
    li      r0, 0x1
    b       branch_0x8023e0dc

branch_0x8023e0d8:
    li      r0, 0x0
branch_0x8023e0dc:
    cmpwi   r0, 0x0
    beq-    branch_0x8023e0ec
    lwz     r28, 0x0(r28)
    b       branch_0x8023e100

branch_0x8023e0ec:
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      entrySameMat__12SDLModelDataFP11J3DMaterialP15SDLDrawBufToken
    lwz     r28, 0x0(r28)
branch_0x8023e100:
    cmplwi  r28, 0x0
    bne+    branch_0x8023e0c0
    lwz     r28, 0x10(r29)
    cmplwi  r28, 0x0
    beq-    branch_0x8023e24c
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r27, 0x10(r28)
    cmplwi  r27, 0x0
    beq-    branch_0x8023e1b8
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r26, 0x10(r27)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e17c
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e17c:
    lwz     r26, 0x14(r27)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e1b8
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e1b8:
    lwz     r26, 0x14(r28)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e24c
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r27, 0x10(r26)
    cmplwi  r27, 0x0
    beq-    branch_0x8023e210
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e210:
    lwz     r26, 0x14(r26)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e24c
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e24c:
    lwz     r26, 0x14(r29)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e390
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r27, 0x10(r26)
    cmplwi  r27, 0x0
    beq-    branch_0x8023e2fc
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r28, 0x10(r27)
    cmplwi  r28, 0x0
    beq-    branch_0x8023e2c0
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r28)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r28)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e2c0:
    lwz     r27, 0x14(r27)
    cmplwi  r27, 0x0
    beq-    branch_0x8023e2fc
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e2fc:
    lwz     r26, 0x14(r26)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e390
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r27, 0x10(r26)
    cmplwi  r27, 0x0
    beq-    branch_0x8023e354
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r27)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e354:
    lwz     r26, 0x14(r26)
    cmplwi  r26, 0x0
    beq-    branch_0x8023e390
    addi    r3, r31, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    bl      entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x10(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
    lwz     r4, 0x14(r26)
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      recursiveEntry__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
branch_0x8023e390:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken
entryNode__12SDLModelDataFP7J3DNodeP15SDLDrawBufToken: # 0x8023e3a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    lwz     r31, 0x60(r4)
    b       branch_0x8023e40c

branch_0x8023e3cc:
    lwz     r3, 0x4(r31)
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8023e3e4
    li      r0, 0x1
    b       branch_0x8023e3e8

branch_0x8023e3e4:
    li      r0, 0x0
branch_0x8023e3e8:
    cmpwi   r0, 0x0
    beq-    branch_0x8023e3f8
    lwz     r31, 0x0(r31)
    b       branch_0x8023e40c

branch_0x8023e3f8:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      entrySameMat__12SDLModelDataFP11J3DMaterialP15SDLDrawBufToken
    lwz     r31, 0x0(r31)
branch_0x8023e40c:
    cmplwi  r31, 0x0
    bne+    branch_0x8023e3cc
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl entrySameMat__12SDLModelDataFP11J3DMaterialP15SDLDrawBufToken
entrySameMat__12SDLModelDataFP11J3DMaterialP15SDLDrawBufToken: # 0x8023e430
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    mr      r30, r5
    mr      r29, r4
    lwz     r6, 0x8(r5)
    b       branch_0x8023e460

branch_0x8023e450:
    lwz     r0, 0xa8(r6)
    clrlwi. r0, r0, 31
    bne-    branch_0x8023e468
    lwz     r6, 0xa4(r6)
branch_0x8023e460:
    cmplwi  r6, 0x0
    bne+    branch_0x8023e450
branch_0x8023e468:
    cmplwi  r6, 0x0
    beq-    branch_0x8023e550
    lis     r4, 0x8040
    addi    r4, r4, 0x45dc
    stw     r6, 0x38(r4)
    li      r28, 0x0
    lwz     r3, 0x0(r3)
    lwz     r0, 0xac(r3)
    stw     r0, 0x54(r4)
    lhz     r0, 0xc(r29)
    lwz     r3, 0x80(r6)
    mulli   r0, r0, 0x48
    add     r5, r3, r0
    stw     r28, 0x4(r5)
    mr      r31, r5
    stw     r28, 0x8(r5)
    lwz     r3, 0x4(r29)
    lwz     r4, 0x84(r6)
    lhz     r0, 0x4(r3)
    mulli   r0, r0, 0x34
    add     r3, r4, r0
    stw     r28, 0x4(r3)
    stw     r28, 0x8(r3)
    stw     r3, 0x34(r5)
    lwz     r27, 0xa4(r6)
    b       branch_0x8023e508

branch_0x8023e4d0:
    lwz     r0, 0xa8(r27)
    clrlwi. r0, r0, 31
    beq-    branch_0x8023e504
    lwz     r4, 0x4(r29)
    mr      r3, r31
    lwz     r5, 0x84(r27)
    lhz     r0, 0x4(r4)
    mulli   r0, r0, 0x34
    add     r5, r5, r0
    stw     r28, 0x4(r5)
    mr      r4, r5
    stw     r28, 0x8(r5)
    bl      addShapePacket__12J3DMatPacketFP14J3DShapePacket
branch_0x8023e504:
    lwz     r27, 0xa4(r27)
branch_0x8023e508:
    cmplwi  r27, 0x0
    bne+    branch_0x8023e4d0
    lwz     r0, 0x8(r29)
    clrlwi. r0, r0, 30
    beq-    branch_0x8023e524
    li      r0, 0x1
    b       branch_0x8023e528

branch_0x8023e524:
    li      r0, 0x0
branch_0x8023e528:
    clrlwi. r0, r0, 24
    beq-    branch_0x8023e538
    li      r0, 0x0
    b       branch_0x8023e53c

branch_0x8023e538:
    li      r0, 0x1
branch_0x8023e53c:
    slwi    r0, r0, 2
    lwzx    r3, r30, r0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      entryImm__13J3DDrawBufferFP9J3DPacketUs
branch_0x8023e550:
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl entry__12J3DMatPacketFP13J3DDrawBuffer
entry__12J3DMatPacketFP13J3DDrawBuffer: # 0x8023e564
    mflr    r0
    addi    r7, r3, 0x0
    stw     r0, 0x4(sp)
    lis     r3, 0x803e
    stwu    sp, -0x20(sp)
    lwz     r0, 0xc(r4)
    addi    r12, sp, 0x14
    mulli   r5, r0, 0xc
    addi    r0, r3, 0x1720
    add     r6, r0, r5
    lwz     r5, 0x0(r6)
    mr      r3, r4
    lwz     r0, 0x4(r6)
    addi    r4, r7, 0x0
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x1c(sp)
    bl      __ptmf_scall
    ori     r0, r0, 0x0
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

