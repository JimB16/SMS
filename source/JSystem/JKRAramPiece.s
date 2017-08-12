
.globl sendCommand__12JKRAramPieceFP12JKRAMCommand
sendCommand__12JKRAramPieceFP12JKRAMCommand: # 0x802f0844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      startDMA__12JKRAramPieceFP12JKRAMCommand
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v: # 0x802f0864
    mflr    r0
    lis     r9, mMutex__12JKRAramPiece@h
    stw     r0, 0x4(sp)
    lis     r10, unk_803aa0b8@ha
    addi    r0, r9, mMutex__12JKRAramPiece@l
    stwu    sp, -0x50(sp)
    stmw    r24, 0x30(sp)
    addi    r24, r3, 0x0
    addi    r26, r10, unk_803aa0b8@l
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    mr      r3, r0
    bl      OSLockMutex
    clrlwi. r0, r27, 27
    bne-    branch_0x802f08b4
    clrlwi. r0, r28, 27
    beq-    branch_0x802f0908
branch_0x802f08b4:
    addi    r3, r26, 0x0
    crxor   6, 6, 6
    addi    r4, r24, 0x0
    bl      OSReport
    addi    r4, r27, 0x0
    crxor   6, 6, 6
    addi    r3, r26, 0x10
    bl      OSReport
    addi    r4, r28, 0x0
    crxor   6, 6, 6
    addi    r3, r26, 0x20
    bl      OSReport
    addi    r4, r29, 0x0
    crxor   6, 6, 6
    addi    r3, r26, 0x34
    bl      OSReport
    addi    r3, r26, 0x44
    crxor   6, 6, 6
    li      r4, 0x66
    addi    r5, r2, R2Off_0x360
    bl      OSPanic
branch_0x802f0908:
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x8
    li      r5, -0x4
    bl      __nw__FUlP7JKRHeapi
    lwz     r4, R13Off_m0x5f30(r13)
    addi    r25, r3, 0x0
    li      r3, 0x98
    li      r5, -0x4
    bl      __nw__FUlP7JKRHeapi
    mr.     r26, r3
    beq-    branch_0x802f0940
    mr      r3, r26
    bl      __ct__12JKRAMCommandFv
    mr      r26, r3
branch_0x802f0940:
    stw     r24, 0x40(r26)
    lis     r3, sMessageQueue__7JKRAram@ha
    li      r0, 0x1
    stw     r27, 0x48(r26)
    addi    r3, r3, sMessageQueue__7JKRAram@l
    addi    r4, r25, 0x0
    stw     r28, 0x4c(r26)
    li      r5, 0x1
    stw     r30, 0x50(r26)
    stw     r29, 0x44(r26)
    stw     r31, 0x58(r26)
    stw     r0, 0x0(r25)
    stw     r26, 0x4(r25)
    bl      OSSendMessage
    lwz     r0, 0x58(r26)
    cmplwi  r0, 0x0
    beq-    branch_0x802f0994
    lis     r3, sAramPieceCommandList__12JKRAramPiece@h
    addi    r3, r3, sAramPieceCommandList__12JKRAramPiece@l
    addi    r4, r26, 0x20
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x802f0994:
    lis     r3, mMutex__12JKRAramPiece@h
    addi    r3, r3, mMutex__12JKRAramPiece@l
    bl      OSUnlockMutex
    mr      r3, r26
    lmw     r24, 0x30(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock: # 0x802f09b8
    mflr    r0
    lis     r8, mMutex__12JKRAramPiece@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r31, r8, mMutex__12JKRAramPiece@l
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r3, r31, 0x0
    bl      OSLockMutex
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    li      r8, 0x0
    bl      orderAsync__12JKRAramPieceFiUlUlUlP12JKRAramBlockPFUl_v
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      OSLockMutex
    addi    r3, r30, 0x68
    addi    r4, sp, 0x1c
    li      r5, 0x1
    bl      OSReceiveMessage
    lis     r3, sAramPieceCommandList__12JKRAramPiece@h
    addi    r3, r3, sAramPieceCommandList__12JKRAramPiece@l
    addi    r4, r30, 0x20
    bl      remove__10JSUPtrListFP10JSUPtrLink
    mr      r3, r31
    bl      OSUnlockMutex
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      __dt__12JKRAMCommandFv
    mr      r3, r31
    bl      OSUnlockMutex
    lmw     r26, 0x28(sp)
    li      r3, 0x1
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl startDMA__12JKRAramPieceFP12JKRAMCommand
startDMA__12JKRAramPieceFP12JKRAMCommand: # 0x802f0a68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x40(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802f0a98
    lwz     r3, 0x4c(r31)
    lwz     r4, 0x44(r31)
    bl      DCInvalidateRange
    b       branch_0x802f0aa4

branch_0x802f0a98:
    lwz     r3, 0x48(r31)
    lwz     r4, 0x44(r31)
    bl      DCStoreRange
branch_0x802f0aa4:
    lis     r3, doneDMA__12JKRAramPieceFUl@h
    lwz     r5, 0x40(r31)
    addi    r10, r3, doneDMA__12JKRAramPieceFUl@l
    lwz     r7, 0x48(r31)
    lwz     r8, 0x4c(r31)
    mr      r3, r31
    lwz     r9, 0x44(r31)
    li      r4, 0x0
    li      r6, 0x0
    bl      ARQPostRequest
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl doneDMA__12JKRAramPieceFUl
doneDMA__12JKRAramPieceFUl: # 0x802f0ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, 0x40(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802f0b0c
    lwz     r3, 0x4c(r31)
    lwz     r4, 0x44(r31)
    bl      DCInvalidateRange
branch_0x802f0b0c:
    lwz     r0, 0x60(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x802f0b2c
    cmpwi   r0, 0x2
    bne-    branch_0x802f0b74
    lwz     r3, 0x64(r31)
    bl      sendCommand__9JKRDecompFP16JKRDecompCommand
    b       branch_0x802f0b74

branch_0x802f0b2c:
    lwz     r12, 0x58(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x802f0b48
    mtlr    r12
    addi    r3, r31, 0x0
    blrl
    b       branch_0x802f0b74

branch_0x802f0b48:
    lwz     r3, 0x5c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802f0b64
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      OSSendMessage
    b       branch_0x802f0b74

branch_0x802f0b64:
    addi    r4, r31, 0x0
    addi    r3, r31, 0x68
    li      r5, 0x0
    bl      OSSendMessage
branch_0x802f0b74:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12JKRAMCommandFv
__ct__12JKRAMCommandFv: # 0x802f0b88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    addi    r3, r31, 0x20
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    addi    r3, r31, 0x30
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    addi    r3, r31, 0x68
    addi    r4, r31, 0x88
    li      r5, 0x1
    bl      OSInitMessageQueue
    li      r0, 0x0
    stw     r0, 0x58(r31)
    mr      r3, r31
    stw     r0, 0x5c(r31)
    stw     r0, 0x60(r31)
    stw     r0, 0x8c(r31)
    stw     r0, 0x90(r31)
    stw     r0, 0x94(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12JKRAMCommandFv
__dt__12JKRAMCommandFv: # 0x802f0bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f0c88
    lwz     r3, 0x8c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f0c2c
    bl      __dl__FPv
branch_0x802f0c2c:
    lwz     r3, 0x90(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f0c3c
    bl      __dl__FPv
branch_0x802f0c3c:
    lwz     r3, 0x94(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f0c50
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802f0c50:
    addic.  r0, r30, 0x30
    beq-    branch_0x802f0c64
    addi    r3, r30, 0x30
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802f0c64:
    addic.  r0, r30, 0x20
    beq-    branch_0x802f0c78
    addi    r3, r30, 0x20
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802f0c78:
    extsh.  r0, r31
    ble-    branch_0x802f0c88
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f0c88:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_JKRAramPiece_cpp
__sinit_JKRAramPiece_cpp: # 0x802f0ca4
    mflr    r0
    lis     r3, sAramPieceCommandList__12JKRAramPiece@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, sAramPieceCommandList__12JKRAramPiece@l
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, __dt__23JSUList_12JKRAMCommand_Fv@ha
    lis     r3, unk_803fd5e8@ha
    addi    r5, r3, unk_803fd5e8@l
    addi    r4, r4, __dt__23JSUList_12JKRAMCommand_Fv@l
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

