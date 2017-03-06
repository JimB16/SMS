
.globl __dt__Q27JGadget19TSingleNodeLinkListFv
__dt__Q27JGadget19TSingleNodeLinkListFv: # 0x802f6d5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802f6d84
    extsh.  r0, r4
    ble-    branch_0x802f6d84
    mr      r3, r31
    bl      __dl__FPv
branch_0x802f6d84:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl Insert__Q27JGadget19TSingleNodeLinkListFQ37JGadget19TSingleNodeLinkList8iteratorPQ27JGadget19TSingleLinkListNode
Insert__Q27JGadget19TSingleNodeLinkListFQ37JGadget19TSingleNodeLinkList8iteratorPQ27JGadget19TSingleLinkListNode: # 0x802f6d9c
    lwz     r7, 0x0(r5)
    lwz     r0, 0x0(r7)
    stw     r0, 0x0(r6)
    cmplwi  r0, 0x0
    stw     r6, 0x0(r7)
    bne-    branch_0x802f6db8
    stw     r6, 0x8(r4)
branch_0x802f6db8:
    lwz     r6, 0x0(r4)
    addi    r0, r6, 0x1
    stw     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r3)
    blr

