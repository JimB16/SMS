
.globl __dt__12TPerformListFv
__dt__12TPerformListFv: # 0x802a4a7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a4af4
    lis     r3, 0x803e
    subi    r3, r3, 0xd38
    addic.  r0, r30, 0x10
    stw     r3, 0x0(r30)
    beq-    branch_0x802a4ac4
    addic.  r0, r30, 0x10
    beq-    branch_0x802a4ac4
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__Q27JGadget19TSingleNodeLinkListFv
branch_0x802a4ac4:
    cmplwi  r30, 0x0
    beq-    branch_0x802a4ae4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a4ae4:
    extsh.  r0, r31
    ble-    branch_0x802a4af4
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a4af4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl push_back__12TPerformListFPQ26JDrama8TViewObjUl
push_back__12TPerformListFPQ26JDrama8TViewObjUl: # 0x802a4b10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    li      r3, 0xc
    stw     r28, 0x48(sp)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x802a4b58
    li      r0, 0x0
    stw     r0, 0x0(r28)
    stw     r30, 0x4(r28)
    stw     r31, 0x8(r28)
branch_0x802a4b58:
    addi    r3, sp, 0x2c
    lwz     r4, 0x18(r29)
    bl      __ct__Q37JGadget19TSingleNodeLinkList8iteratorFPPQ27JGadget19TSingleLinkListNode
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x44
    addi    r4, sp, 0x28
    stw     r0, 0x28(sp)
    bl      __ct__Q37JGadget19TSingleNodeLinkList8iteratorFRCQ37JGadget19TSingleNodeLinkList8iterator
    lwz     r0, 0x44(sp)
    addi    r6, r28, 0x0
    addi    r5, sp, 0x38
    stw     r0, 0x40(sp)
    addi    r3, sp, 0x34
    addi    r4, r29, 0x10
    lwz     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    bl      Insert__Q27JGadget19TSingleNodeLinkListFQ37JGadget19TSingleNodeLinkList8iteratorPQ27JGadget19TSingleLinkListNode
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl __ct__Q37JGadget19TSingleNodeLinkList8iteratorFRCQ37JGadget19TSingleNodeLinkList8iterator
__ct__Q37JGadget19TSingleNodeLinkList8iteratorFRCQ37JGadget19TSingleNodeLinkList8iterator: # 0x802a4bbc
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl __ct__Q37JGadget19TSingleNodeLinkList8iteratorFPPQ27JGadget19TSingleLinkListNode
__ct__Q37JGadget19TSingleNodeLinkList8iteratorFPPQ27JGadget19TSingleLinkListNode: # 0x802a4bc8
    stw     r4, 0x0(r3)
    blr


.globl push_back__12TPerformListFPCcUl
push_back__12TPerformListFPCcUl: # 0x802a4bd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x64(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x60(sp)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r6, -0x5db8(r13)
    lwz     r31, 0x4(r6)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    addi    r31, r3, 0x0
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802a4c48
    li      r0, 0x0
    stw     r0, 0x0(r29)
    stw     r31, 0x4(r29)
    stw     r30, 0x8(r29)
branch_0x802a4c48:
    addi    r3, sp, 0x40
    lwz     r4, 0x18(r28)
    bl      __ct__Q37JGadget19TSingleNodeLinkList8iteratorFPPQ27JGadget19TSingleLinkListNode
    lwz     r0, 0x40(sp)
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x3c
    stw     r0, 0x3c(sp)
    bl      __ct__Q37JGadget19TSingleNodeLinkList8iteratorFRCQ37JGadget19TSingleNodeLinkList8iterator
    lwz     r0, 0x5c(sp)
    addi    r6, r29, 0x0
    addi    r5, sp, 0x4c
    stw     r0, 0x58(sp)
    addi    r3, sp, 0x48
    addi    r4, r28, 0x10
    lwz     r0, 0x58(sp)
    stw     r0, 0x4c(sp)
    bl      Insert__Q27JGadget19TSingleNodeLinkListFQ37JGadget19TSingleNodeLinkList8iteratorPQ27JGadget19TSingleLinkListNode
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl load__12TPerformListFR20JSUMemoryInputStream
load__12TPerformListFR20JSUMemoryInputStream: # 0x802a4cac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stmw    r26, 0xb0(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r31, sp, 0x30
    addi    r30, sp, 0x40
    b       branch_0x802a4dc4

branch_0x802a4cd4:
    addi    r3, r29, 0x0
    addi    r4, sp, 0x5c
    li      r5, 0x50
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x5c
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x5c
    mtlr    r12
    blrl
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, sp, 0x54
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x54(sp)
    clrlwi. r0, r3, 31
    addi    r26, r3, 0x0
    beq-    branch_0x802a4d38
    ori     r26, r26, 0x3000
branch_0x802a4d38:
    cmplwi  r27, 0x0
    beq-    branch_0x802a4dc4
    li      r3, 0xc
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802a4d60
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r27, 0x4(r3)
    stw     r26, 0x8(r3)
branch_0x802a4d60:
    addi    r27, r3, 0x0
    addi    r3, sp, 0x34
    addi    r4, r28, 0x10
    bl      end__Q27JGadget19TSingleNodeLinkListFv
    lwz     r0, 0x34(sp)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x4c
    stw     r0, 0x30(sp)
    bl      __ct__Q37JGadget33TSingleLinkList_12TPerformLink_0_8iteratorFQ37JGadget19TSingleNodeLinkList8iterator
    lwz     r0, 0x4c(sp)
    mr      r3, r27
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x40(sp)
    bl      Element_getNode__Q27JGadget33TSingleLinkList_12TPerformLink_0_FP12TPerformLink
    addi    r6, r3, 0x0
    addi    r5, r30, 0x0
    addi    r3, sp, 0x3c
    addi    r4, r28, 0x10
    bl      Insert__Q27JGadget19TSingleNodeLinkListFQ37JGadget19TSingleNodeLinkList8iteratorPQ27JGadget19TSingleLinkListNode
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x44
    addi    r4, sp, 0x38
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget19TSingleNodeLinkList8iteratorFRCQ37JGadget19TSingleNodeLinkList8iterator
branch_0x802a4dc4:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r27, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x0(r29)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    subf.   r0, r3, r27
    bgt+    branch_0x802a4cd4
    lmw     r26, 0xb0(sp)
    lwz     r0, 0xcc(sp)
    addi    sp, sp, 0xc8
    mtlr    r0
    blr


.globl Element_getNode__Q27JGadget33TSingleLinkList_12TPerformLink_0_FP12TPerformLink
Element_getNode__Q27JGadget33TSingleLinkList_12TPerformLink_0_FP12TPerformLink: # 0x802a4e0c
    blr


.globl __ct__Q37JGadget33TSingleLinkList_12TPerformLink_0_8iteratorFQ37JGadget19TSingleNodeLinkList8iterator
__ct__Q37JGadget33TSingleLinkList_12TPerformLink_0_8iteratorFQ37JGadget19TSingleNodeLinkList8iterator: # 0x802a4e10
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    blr


.globl end__Q27JGadget19TSingleNodeLinkListFv
end__Q27JGadget19TSingleNodeLinkListFv: # 0x802a4e1c
    lwz     r0, 0x8(r4)
    stw     r0, 0x0(r3)
    blr


.globl perform__12TPerformListFUlPQ26JDrama9TGraphics
perform__12TPerformListFUlPQ26JDrama9TGraphics: # 0x802a4e28
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x14
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r5
    stw     r30, 0xe0(sp)
    addi    r30, r4, 0x0
    lwz     r6, 0x18(r3)
    stw     r0, 0xb4(sp)
    lwz     r0, 0xb4(sp)
    stw     r6, 0xbc(sp)
    stw     r0, 0xb0(sp)
    lwz     r3, 0xbc(sp)
    lwz     r0, 0xb0(sp)
    stw     r3, 0xb8(sp)
    stw     r0, 0xd8(sp)
    lwz     r3, 0xb8(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0xd0(sp)
    stw     r0, 0xdc(sp)
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xdc(sp)
    stw     r3, 0xd4(sp)
    stw     r0, 0xc0(sp)
    b       branch_0x802a4eb8

branch_0x802a4e90:
    lwz     r3, 0xc0(sp)
    mr      r5, r31
    lwz     r3, 0x0(r3)
    lwz     r0, 0x8(r3)
    lwz     r3, 0x4(r3)
    and     r4, r0, r30
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0xc0(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xc0(sp)
branch_0x802a4eb8:
    lwz     r3, 0xd4(sp)
    lwz     r0, 0xc0(sp)
    stw     r3, 0xa8(sp)
    stw     r0, 0xa4(sp)
    lwz     r3, 0xa8(sp)
    lwz     r0, 0xa4(sp)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x94(sp)
    lwz     r3, 0x90(sp)
    cmplw   r3, r0
    bne+    branch_0x802a4e90
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    addi    sp, sp, 0xe8
    blr

