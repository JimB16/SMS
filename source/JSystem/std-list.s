
.globl __ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_
__ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator_Pv_: # 0x802ea698
    lbz     r0, 0x0(r4)
    li      r4, 0x0
    stb     r0, 0x0(r3)
    addi    r0, r3, 0x8
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    blr


.globl erase__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__FQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
erase__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__FQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator: # 0x802ea6b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r5, 0x0(r5)
    lwz     r31, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    bl      __dl__FPv
    lwz     r3, 0x4(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__Q27JGadget18TList_pointer_voidFv
__dt__Q27JGadget18TList_pointer_voidFv: # 0x802ea724
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stmw    r27, 0x54(sp)
    mr.     r27, r3
    addi    r28, r4, 0x0
    beq-    branch_0x802ea7d0
    beq-    branch_0x802ea7c0
    addi    r3, sp, 0x4c
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x4c(sp)
    addi    r3, sp, 0x44
    stw     r0, 0x48(sp)
    lwz     r4, 0x8(r27)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x44(sp)
    addi    r31, sp, 0x30
    addi    r30, sp, 0x28
    stw     r0, 0x40(sp)
    addi    r29, sp, 0x24
    b       branch_0x802ea79c

branch_0x802ea77c:
    lwz     r0, 0x40(sp)
    addi    r4, r27, 0x0
    addi    r5, r31, 0x0
    stw     r0, 0x30(sp)
    addi    r3, sp, 0x2c
    bl      erase__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__FQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x2c(sp)
    stw     r0, 0x40(sp)
branch_0x802ea79c:
    lwz     r5, 0x48(sp)
    mr      r3, r29
    lwz     r0, 0x40(sp)
    mr      r4, r30
    stw     r5, 0x28(sp)
    stw     r0, 0x24(sp)
    bl      __eq__7JGadgetFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    clrlwi. r0, r3, 24
    beq+    branch_0x802ea77c
branch_0x802ea7c0:
    extsh.  r0, r28
    ble-    branch_0x802ea7d0
    mr      r3, r27
    bl      __dl__FPv
branch_0x802ea7d0:
    mr      r3, r27
    lmw     r27, 0x54(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __eq__7JGadgetFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
__eq__7JGadgetFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator: # 0x802ea7e8
    lwz     r3, 0x0(r3)
    lwz     r0, 0x0(r4)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv: # 0x802ea800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    stw     r3, 0x8(sp)
    mr      r3, r30
    lwz     r0, 0x0(r5)
    stw     r0, 0x44(sp)
    lwz     r4, 0x44(sp)
    lwz     r31, 0x4(r4)
    mr      r5, r31
    bl      CreateNode___Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__FPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_PQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_RCPv
    cmplwi  r3, 0x0
    bne-    branch_0x802ea850
    lwz     r4, 0x8(sp)
    addi    r0, r30, 0x8
    stw     r0, 0x0(r4)
    b       branch_0x802ea870

branch_0x802ea850:
    lwz     r4, 0x44(sp)
    stw     r3, 0x4(r4)
    stw     r3, 0x0(r31)
    lwz     r4, 0x4(r30)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r30)
    lwz     r4, 0x8(sp)
    stw     r3, 0x0(r4)
branch_0x802ea870:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl CreateNode___Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__FPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_PQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_RCPv
CreateNode___Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__FPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_PQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_RCPv: # 0x802ea888
    mflr    r0
    li      r3, 0xc
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    bl      __nw__FUl
    cmplwi  r3, 0x0
    bne-    branch_0x802ea8c4
    li      r3, 0x0
    b       branch_0x802ea8e0

branch_0x802ea8c4:
    stw     r29, 0x0(r3)
    addic.  r4, r3, 0x8
    stw     r30, 0x4(r3)
    stw     r4, 0x1c(sp)
    beq-    branch_0x802ea8e0
    lwz     r0, 0x0(r31)
    stw     r0, 0x0(r4)
branch_0x802ea8e0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr

