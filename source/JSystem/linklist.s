
.globl Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode: # 0x802f6b9c
    lwz     r5, 0x0(r5)
    lwz     r7, 0x4(r5)
    stw     r5, 0x0(r6)
    stw     r7, 0x4(r6)
    stw     r6, 0x4(r5)
    stw     r6, 0x0(r7)
    lwz     r5, 0x0(r4)
    addi    r0, r5, 0x1
    stw     r0, 0x0(r4)
    stw     r6, 0x0(r3)
    blr


.globl Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode: # 0x802f6bc8
    lwz     r6, 0x0(r5)
    lwz     r5, 0x4(r5)
    stw     r5, 0x4(r6)
    stw     r6, 0x0(r5)
    lwz     r5, 0x0(r4)
    subi    r0, r5, 0x1
    stw     r0, 0x0(r4)
    stw     r6, 0x0(r3)
    blr


.globl Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
Remove__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode: # 0x802f6bec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x30(sp)
    stw     r4, 0x24(sp)
    addi    r6, sp, 0x18
    addi    r4, sp, 0x20
    stw     r0, 0x18(sp)
    addi    r5, sp, 0x14
    stw     r0, 0x1c(sp)
    stw     r0, 0x14(sp)
    stw     r6, 0x18(sp)
    stw     r6, 0x1c(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x20(sp)
    bl      Remove_if_Q37JGadget9_unnamed_46TPRIsEqual_pointer__Q27JGadget13TLinkListNode____Q27JGadget13TNodeLinkListFQ37JGadget9_unnamed_46TPRIsEqual_pointer__Q27JGadget13TLinkListNode_RQ27JGadget13TNodeLinkList
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl Remove_if_Q37JGadget9_unnamed_46TPRIsEqual_pointer__Q27JGadget13TLinkListNode____Q27JGadget13TNodeLinkListFQ37JGadget9_unnamed_46TPRIsEqual_pointer__Q27JGadget13TLinkListNode_RQ27JGadget13TNodeLinkList
Remove_if_Q37JGadget9_unnamed_46TPRIsEqual_pointer__Q27JGadget13TLinkListNode____Q27JGadget13TNodeLinkListFQ37JGadget9_unnamed_46TPRIsEqual_pointer__Q27JGadget13TLinkListNode_RQ27JGadget13TNodeLinkList: # 0x802f6c3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r25, 0xa4(sp)
    mr      r26, r3
    addi    r28, r5, 0x0
    addi    r27, r4, 0x0
    addi    r29, sp, 0x74
    addi    r31, r28, 0x4
    addi    r25, r26, 0x4
    lwz     r0, 0x4(r3)
    stw     r0, 0x9c(sp)
    b       branch_0x802f6d24

branch_0x802f6c70:
    lwz     r3, 0x9c(sp)
    lwz     r0, 0x0(r27)
    cmplw   r3, r0
    bne-    branch_0x802f6d1c
    stw     r3, 0x98(sp)
    lwz     r4, 0x0(r3)
    lwz     r3, 0x98(sp)
    stw     r31, 0x8c(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x88(sp)
    stw     r0, 0x14(sp)
    lwz     r30, 0x88(sp)
    lwz     r0, 0x14(sp)
    stw     r4, 0x9c(sp)
    stw     r0, 0x90(sp)
    lwz     r4, 0x0(r30)
    stw     r3, 0x60(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x60(sp)
    lwz     r3, 0x5c(sp)
    stw     r4, 0x58(sp)
    cmplw   r3, r0
    beq-    branch_0x802f6d24
    lwz     r3, 0x58(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0x68(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x68(sp)
    lwz     r3, 0x64(sp)
    cmplw   r3, r0
    beq-    branch_0x802f6d24
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0x6c
    bl      Erase__Q27JGadget13TNodeLinkListFPQ27JGadget13TLinkListNode
    lwz     r0, 0x90(sp)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    stw     r0, 0x74(sp)
    addi    r6, r30, 0x0
    addi    r3, sp, 0x70
    bl      Insert__Q27JGadget13TNodeLinkListFQ37JGadget13TNodeLinkList8iteratorPQ27JGadget13TLinkListNode
    b       branch_0x802f6d24

branch_0x802f6d1c:
    lwz     r0, 0x0(r3)
    stw     r0, 0x9c(sp)
branch_0x802f6d24:
    lwz     r0, 0x9c(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x84(sp)
    cmplw   r0, r25
    bne+    branch_0x802f6c70
    lmw     r25, 0xa4(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr

