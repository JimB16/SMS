
.globl __ct__13TObjCheckListFv
__ct__13TObjCheckListFv: # 0x8021b2f8
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl __ct__12TObjHitCheckFv
__ct__12TObjHitCheckFv: # 0x8021b308
    mflr    r0
    lis     r4, 0x8022
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x8
    stwu    sp, -0x20(sp)
    li      r7, 0x100
    stw     r31, 0x1c(sp)
    subi    r31, r4, 0x4d08
    addi    r4, r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __construct_array
    lis     r3, 0x1
    subi    r3, r3, 0x2538
    bl      __nwa__FUl
    addi    r4, r31, 0x0
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x1b58
    bl      __construct_new_array
    stw     r3, 0x800(r30)
    li      r4, 0x0
    li      r0, 0x4
    stw     r4, 0x804(r30)
    mtctr   r0
    addi    r3, r4, 0x0
branch_0x8021b374:
    add     r5, r30, r3
    stw     r4, 0x0(r5)
    addi    r3, r3, 0x40
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    bdnz+      branch_0x8021b374
    li      r0, 0x0
    stw     r0, 0x804(r30)
    mr      r3, r30
    stw     r30, -0x6150(r13)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl clearHitNum__12TObjHitCheckFv
clearHitNum__12TObjHitCheckFv: # 0x8021b4e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x228(sp)
    stw     r31, 0x224(sp)
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x8021b598
    lwz     r4, 0x2c(r3)
    addi    r3, sp, 0xf8
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xf8(sp)
    addi    r3, sp, 0x208
    addi    r4, sp, 0xf4
    stw     r0, 0xf4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x208(sp)
    mr      r4, r31
    addi    r3, sp, 0xf0
    stw     r0, 0x200(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xf0(sp)
    addi    r3, sp, 0x20c
    addi    r4, sp, 0xec
    stw     r0, 0xec(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x200(sp)
    li      r4, 0x0
    lwz     r3, 0x20c(sp)
    stw     r0, 0x13c(sp)
    stw     r3, 0x204(sp)
    lwz     r0, 0x13c(sp)
    b       branch_0x8021b584

branch_0x8021b56c:
    lwz     r3, 0x204(sp)
    lwz     r3, 0x8(r3)
    sth     r4, 0x48(r3)
    lwz     r3, 0x204(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x204(sp)
branch_0x8021b584:
    lwz     r3, 0x204(sp)
    stw     r3, 0x138(sp)
    lwz     r3, 0x138(sp)
    cmplw   r3, r0
    bne+    branch_0x8021b56c
branch_0x8021b598:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x8021b640
    lwz     r4, 0x30(r3)
    addi    r3, sp, 0xe8
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xe8(sp)
    addi    r3, sp, 0x1e4
    addi    r4, sp, 0xe4
    stw     r0, 0xe4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1e4(sp)
    mr      r4, r31
    addi    r3, sp, 0xe0
    stw     r0, 0x1dc(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xe0(sp)
    addi    r3, sp, 0x1e8
    addi    r4, sp, 0xdc
    stw     r0, 0xdc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1dc(sp)
    li      r4, 0x0
    lwz     r3, 0x1e8(sp)
    stw     r0, 0x130(sp)
    stw     r3, 0x1e0(sp)
    lwz     r0, 0x130(sp)
    b       branch_0x8021b62c

branch_0x8021b614:
    lwz     r3, 0x1e0(sp)
    lwz     r3, 0x8(r3)
    sth     r4, 0x48(r3)
    lwz     r3, 0x1e0(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x1e0(sp)
branch_0x8021b62c:
    lwz     r3, 0x1e0(sp)
    stw     r3, 0x12c(sp)
    lwz     r3, 0x12c(sp)
    cmplw   r3, r0
    bne+    branch_0x8021b614
branch_0x8021b640:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x8021b6e8
    lwz     r4, 0x34(r3)
    addi    r3, sp, 0xd8
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xd8(sp)
    addi    r3, sp, 0x1c0
    addi    r4, sp, 0xd4
    stw     r0, 0xd4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1c0(sp)
    mr      r4, r31
    addi    r3, sp, 0xd0
    stw     r0, 0x1b8(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xd0(sp)
    addi    r3, sp, 0x1c4
    addi    r4, sp, 0xcc
    stw     r0, 0xcc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1b8(sp)
    li      r4, 0x0
    lwz     r3, 0x1c4(sp)
    stw     r0, 0x124(sp)
    stw     r3, 0x1bc(sp)
    lwz     r0, 0x124(sp)
    b       branch_0x8021b6d4

branch_0x8021b6bc:
    lwz     r3, 0x1bc(sp)
    lwz     r3, 0x8(r3)
    sth     r4, 0x48(r3)
    lwz     r3, 0x1bc(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x1bc(sp)
branch_0x8021b6d4:
    lwz     r3, 0x1bc(sp)
    stw     r3, 0x120(sp)
    lwz     r3, 0x120(sp)
    cmplw   r3, r0
    bne+    branch_0x8021b6bc
branch_0x8021b6e8:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x8021b790
    lwz     r4, 0x28(r3)
    addi    r3, sp, 0xc8
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xc8(sp)
    addi    r3, sp, 0x19c
    addi    r4, sp, 0xc4
    stw     r0, 0xc4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x19c(sp)
    mr      r4, r31
    addi    r3, sp, 0xc0
    stw     r0, 0x194(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xc0(sp)
    addi    r3, sp, 0x1a0
    addi    r4, sp, 0xbc
    stw     r0, 0xbc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x194(sp)
    li      r4, 0x0
    lwz     r3, 0x1a0(sp)
    stw     r0, 0x118(sp)
    stw     r3, 0x198(sp)
    lwz     r0, 0x118(sp)
    b       branch_0x8021b77c

branch_0x8021b764:
    lwz     r3, 0x198(sp)
    lwz     r3, 0x8(r3)
    sth     r4, 0x48(r3)
    lwz     r3, 0x198(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x198(sp)
branch_0x8021b77c:
    lwz     r3, 0x198(sp)
    stw     r3, 0x114(sp)
    lwz     r3, 0x114(sp)
    cmplw   r3, r0
    bne+    branch_0x8021b764
branch_0x8021b790:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8021b838
    lwz     r4, 0x38(r3)
    addi    r3, sp, 0xb8
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xb8(sp)
    addi    r3, sp, 0x178
    addi    r4, sp, 0xb4
    stw     r0, 0xb4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x178(sp)
    mr      r4, r31
    addi    r3, sp, 0xb0
    stw     r0, 0x170(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xb0(sp)
    addi    r3, sp, 0x17c
    addi    r4, sp, 0xac
    stw     r0, 0xac(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x170(sp)
    li      r4, 0x0
    lwz     r3, 0x17c(sp)
    stw     r0, 0x10c(sp)
    stw     r3, 0x174(sp)
    lwz     r0, 0x10c(sp)
    b       branch_0x8021b824

branch_0x8021b80c:
    lwz     r3, 0x174(sp)
    lwz     r3, 0x8(r3)
    sth     r4, 0x48(r3)
    lwz     r3, 0x174(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x174(sp)
branch_0x8021b824:
    lwz     r3, 0x174(sp)
    stw     r3, 0x108(sp)
    lwz     r3, 0x108(sp)
    cmplw   r3, r0
    bne+    branch_0x8021b80c
branch_0x8021b838:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x8021b8e0
    lwz     r4, 0x24(r3)
    addi    r3, sp, 0xa8
    addi    r31, r4, 0x10
    addi    r4, r31, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xa8(sp)
    addi    r3, sp, 0x154
    addi    r4, sp, 0xa4
    stw     r0, 0xa4(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x154(sp)
    mr      r4, r31
    addi    r3, sp, 0xa0
    stw     r0, 0x14c(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0xa0(sp)
    addi    r3, sp, 0x158
    addi    r4, sp, 0x9c
    stw     r0, 0x9c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x14c(sp)
    li      r4, 0x0
    lwz     r3, 0x158(sp)
    stw     r0, 0x100(sp)
    stw     r3, 0x150(sp)
    lwz     r0, 0x100(sp)
    b       branch_0x8021b8cc

branch_0x8021b8b4:
    lwz     r3, 0x150(sp)
    lwz     r3, 0x8(r3)
    sth     r4, 0x48(r3)
    lwz     r3, 0x150(sp)
    lwz     r3, 0x0(r3)
    stw     r3, 0x150(sp)
branch_0x8021b8cc:
    lwz     r3, 0x150(sp)
    stw     r3, 0xfc(sp)
    lwz     r3, 0xfc(sp)
    cmplw   r3, r0
    bne+    branch_0x8021b8b4
branch_0x8021b8e0:
    lwz     r0, 0x22c(sp)
    lwz     r31, 0x224(sp)
    addi    sp, sp, 0x228
    mtlr    r0
    blr


.globl begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv: # 0x8021b8f4
    lwz     r0, 0x8(r4)
    stw     r0, 0x0(r3)
    blr


.globl checkActorsHit__12TObjHitCheckFv
checkActorsHit__12TObjHitCheckFv: # 0x8021b900
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x4
    mtctr   r0
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    stw     r30, 0xd0(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    stw     r29, 0xcc(sp)
branch_0x8021b92c:
    add     r5, r30, r3
    stw     r4, 0x0(r5)
    addi    r3, r3, 0x40
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    add     r5, r30, r3
    addi    r3, r3, 0x40
    stw     r4, 0x0(r5)
    stw     r4, 0x8(r5)
    stw     r4, 0x10(r5)
    stw     r4, 0x18(r5)
    stw     r4, 0x20(r5)
    stw     r4, 0x28(r5)
    stw     r4, 0x30(r5)
    stw     r4, 0x38(r5)
    bdnz+      branch_0x8021b92c
    li      r0, 0x0
    stw     r0, 0x804(r30)
    lwz     r4, gpStrategy(r13)
    lhz     r0, 0x50(r4)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x8021ba94
    mr      r3, r30
    lwz     r4, 0x1c(r4)
    bl      entryGroup__12TObjHitCheckFP12TIdxGroupObj
branch_0x8021ba94:
    lwz     r4, gpStrategy(r13)
    lhz     r0, 0x50(r4)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x8021bab0
    mr      r3, r30
    lwz     r4, 0x2c(r4)
    bl      checkAndEntryGroup__12TObjHitCheckFP12TIdxGroupObj
branch_0x8021bab0:
    lwz     r4, gpStrategy(r13)
    lhz     r0, 0x50(r4)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x8021bacc
    mr      r3, r30
    lwz     r4, 0x30(r4)
    bl      checkAndEntryGroup__12TObjHitCheckFP12TIdxGroupObj
branch_0x8021bacc:
    lwz     r4, gpStrategy(r13)
    lhz     r0, 0x50(r4)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x8021bae8
    mr      r3, r30
    lwz     r4, 0x34(r4)
    bl      checkAndEntryGroup__12TObjHitCheckFP12TIdxGroupObj
branch_0x8021bae8:
    lwz     r4, gpStrategy(r13)
    lhz     r0, 0x50(r4)
    rlwinm. r0, r0, 0, 25, 25
    bne-    branch_0x8021bb04
    mr      r3, r30
    lwz     r4, 0x28(r4)
    bl      checkAndEntryGroup__12TObjHitCheckFP12TIdxGroupObj
branch_0x8021bb04:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8021bb2c
    lwz     r3, gpModelWaterManager(r13)
    bl      askDoWaterHitCheck__18TModelWaterManagerFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8021bb2c
    mr      r3, r30
    bl      checkWater__12TObjHitCheckFv
branch_0x8021bb2c:
    lwz     r3, gpStrategy(r13)
    lhz     r0, 0x50(r3)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x8021bc30
    lwz     r4, 0x24(r3)
    addi    r3, sp, 0x68
    addi    r29, r4, 0x10
    addi    r4, r29, 0x0
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x68(sp)
    addi    r3, sp, 0x9c
    addi    r4, sp, 0x64
    stw     r0, 0x64(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x9c(sp)
    mr      r4, r29
    lwz     r31, MarioHitActor(r13)
    addi    r3, sp, 0x60
    stw     r0, 0x94(sp)
    bl      begin__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x60(sp)
    addi    r3, sp, 0xa0
    addi    r4, sp, 0x5c
    stw     r0, 0x5c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xa0(sp)
    stw     r0, 0x98(sp)
    b       branch_0x8021bc10

branch_0x8021bb9c:
    lwz     r3, 0x98(sp)
    li      r0, 0x0
    lwz     r3, 0x8(r3)
    sth     r0, 0x48(r3)
    lwz     r3, 0x98(sp)
    lwz     r5, 0x8(r3)
    lwz     r0, 0x64(r5)
    clrlwi. r0, r0, 31
    bne-    branch_0x8021bc04
    addi    r3, r3, 0x8
    lfs     f4, 0x5c(r31)
    lwz     r3, 0x0(r3)
    addi    r4, r31, 0x10
    lfs     f3, 0x58(r31)
    lfs     f2, 0x54(r5)
    addi    r3, r3, 0x10
    lfs     f1, 0x50(r5)
    bl      checkDistance__FRCQ29JGeometry8TVec3_f_ffRCQ29JGeometry8TVec3_f_ff
    clrlwi. r0, r3, 24
    beq-    branch_0x8021bc04
    lwz     r4, 0x98(sp)
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addi    r4, r4, 0x8
    lwz     r4, 0x0(r4)
    bl      suffererIsInAttackArea__12TObjHitCheckFP9THitActorP9THitActor
branch_0x8021bc04:
    lwz     r3, 0x98(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0x98(sp)
branch_0x8021bc10:
    lwz     r3, 0x94(sp)
    lwz     r0, 0x98(sp)
    stw     r3, 0x70(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x70(sp)
    lwz     r3, 0x6c(sp)
    cmplw   r3, r0
    bne+    branch_0x8021bb9c
branch_0x8021bc30:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    addi    sp, sp, 0xd8
    blr


.globl entryGroup__12TObjHitCheckFP12TIdxGroupObj
entryGroup__12TObjHitCheckFP12TIdxGroupObj: # 0x8021bc4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stfd    f28, 0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x70
    stw     r29, 0xb4(sp)
    stw     r28, 0xb0(sp)
    addi    r28, r4, 0x10
    addi    r4, r28, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x70(sp)
    addi    r3, sp, 0x68
    stw     r0, 0x6c(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0xac(sp)
    lwz     r4, 0x8(r28)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x68(sp)
    lfs     f31, -0x18c0(rtoc)
    stw     r0, 0x64(sp)
    lwz     r0, 0x64(sp)
    stw     r0, 0xa8(sp)
    b       branch_0x8021bdd4

branch_0x8021bcc0:
    lwz     r3, 0xa8(sp)
    li      r0, 0x0
    lwz     r3, 0x8(r3)
    sth     r0, 0x48(r3)
    lwz     r3, 0xa8(sp)
    lwz     r4, 0x8(r3)
    lwz     r0, 0x64(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x8021bdc8
    lfs     f0, 0x14(r4)
    lfs     f1, 0x10(r4)
    fabs    f2, f0
    lfs     f0, 0x18(r4)
    fabs    f1, f1
    lfs     f29, 0x60(r4)
    fabs    f3, f0
    fadds   f0, f1, f2
    fadds   f30, f3, f0
    fsubs   f0, f30, f29
    fmuls   f28, f31, f0
    fmr     f1, f28
    bl      __cvt_fp2unsigned
    fadds   f0, f30, f29
    mr      r28, r3
    fmuls   f29, f31, f0
    fmr     f1, f29
    bl      __cvt_fp2unsigned
    fmr     f1, f29
    mr      r31, r3
    bl      __cvt_fp2unsigned
    mr      r29, r3
    fmr     f1, f28
    bl      __cvt_fp2unsigned
    cmplw   r3, r29
    bne-    branch_0x8021bd50
    addi    r31, r31, 0x1
branch_0x8021bd50:
    clrlwi  r31, r31, 24
    clrlwi  r7, r28, 24
    b       branch_0x8021bdc0

branch_0x8021bd5c:
    lwz     r3, 0xa8(sp)
    lwz     r5, 0x8(r3)
    lwz     r3, 0x64(r5)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8021bd78
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x8021bdac
branch_0x8021bd78:
    lwz     r3, 0x804(r30)
    slwi    r0, r7, 3
    lwz     r4, 0x800(r30)
    add     r6, r30, r0
    slwi    r0, r3, 3
    add     r3, r4, r0
    stw     r5, 0x4(r3)
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r3)
    stw     r3, 0x0(r6)
    lwz     r3, 0x804(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x804(r30)
branch_0x8021bdac:
    cmplwi  r7, 0xff
    bne-    branch_0x8021bdbc
    li      r7, 0x0
    b       branch_0x8021bdc0

branch_0x8021bdbc:
    addi    r7, r7, 0x1
branch_0x8021bdc0:
    cmplw   r7, r31
    bne+    branch_0x8021bd5c
branch_0x8021bdc8:
    lwz     r3, 0xa8(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xa8(sp)
branch_0x8021bdd4:
    lwz     r3, 0xac(sp)
    lwz     r0, 0xa8(sp)
    stw     r3, 0x78(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x78(sp)
    lwz     r3, 0x74(sp)
    cmplw   r3, r0
    bne+    branch_0x8021bcc0
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    mtlr    r0
    lfd     f29, 0xc8(sp)
    lfd     f28, 0xc0(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    lwz     r29, 0xb4(sp)
    lwz     r28, 0xb0(sp)
    addi    sp, sp, 0xe0
    blr


.globl checkAndEntryGroup__12TObjHitCheckFP12TIdxGroupObj
checkAndEntryGroup__12TObjHitCheckFP12TIdxGroupObj: # 0x8021be24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stfd    f30, 0x130(sp)
    stfd    f29, 0x128(sp)
    stfd    f28, 0x120(sp)
    stmw    r25, 0x104(sp)
    addi    r26, r4, 0x10
    addi    r25, r3, 0x0
    addi    r3, sp, 0xbc
    addi    r4, r26, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xbc(sp)
    addi    r3, sp, 0xb4
    stw     r0, 0xb8(sp)
    lwz     r0, 0xb8(sp)
    stw     r0, 0xf8(sp)
    lwz     r4, 0x8(r26)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xb4(sp)
    lfs     f31, -0x18c0(rtoc)
    stw     r0, 0xb0(sp)
    lwz     r0, 0xb0(sp)
    stw     r0, 0xf4(sp)
    b       branch_0x8021c0a0

branch_0x8021be8c:
    lwz     r3, 0xf4(sp)
    li      r0, 0x0
    lwz     r3, 0x8(r3)
    sth     r0, 0x48(r3)
    lwz     r3, 0xf4(sp)
    lwz     r4, 0x8(r3)
    lwz     r0, 0x64(r4)
    clrlwi. r0, r0, 31
    bne-    branch_0x8021c094
    lfs     f0, 0x14(r4)
    lfs     f1, 0x10(r4)
    fabs    f2, f0
    lfs     f0, 0x18(r4)
    fabs    f1, f1
    lfs     f29, 0x60(r4)
    fabs    f3, f0
    fadds   f0, f1, f2
    fadds   f30, f3, f0
    fsubs   f0, f30, f29
    fmuls   f28, f31, f0
    fmr     f1, f28
    bl      __cvt_fp2unsigned
    fadds   f0, f30, f29
    mr      r28, r3
    fmuls   f29, f31, f0
    fmr     f1, f29
    bl      __cvt_fp2unsigned
    fmr     f1, f29
    mr      r27, r3
    bl      __cvt_fp2unsigned
    mr      r26, r3
    fmr     f1, f28
    bl      __cvt_fp2unsigned
    cmplw   r3, r26
    bne-    branch_0x8021bf1c
    addi    r27, r27, 0x1
branch_0x8021bf1c:
    clrlwi  r27, r27, 24
    clrlwi  r26, r28, 24
    b       branch_0x8021c08c

branch_0x8021bf28:
    slwi    r0, r26, 3
    lwz     r3, 0xf4(sp)
    add     r28, r25, r0
    lwz     r29, 0x0(r28)
    lwz     r30, 0x8(r3)
    b       branch_0x8021c028

branch_0x8021bf40:
    lwz     r3, 0x64(r30)
    lwz     r31, 0x4(r29)
    rlwinm. r0, r3, 0, 30, 30
    lwz     r29, 0x0(r29)
    bne-    branch_0x8021bfb8
    lwz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8021bfb8
    lwz     r0, 0x4c(r31)
    clrrwi  r0, r0, 16
    and.    r0, r3, r0
    beq-    branch_0x8021bf78
    li      r0, 0x1
    b       branch_0x8021bf7c

branch_0x8021bf78:
    li      r0, 0x0
branch_0x8021bf7c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021bfb8
    lfs     f4, 0x5c(r31)
    addi    r3, r30, 0x10
    lfs     f3, 0x58(r31)
    addi    r4, r31, 0x10
    lfs     f2, 0x54(r30)
    lfs     f1, 0x50(r30)
    bl      checkDistance__FRCQ29JGeometry8TVec3_f_ffRCQ29JGeometry8TVec3_f_ff
    clrlwi. r0, r3, 24
    beq-    branch_0x8021bfb8
    addi    r3, r25, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      suffererIsInAttackArea__12TObjHitCheckFP9THitActorP9THitActor
branch_0x8021bfb8:
    lwz     r3, 0x64(r31)
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x8021c028
    lwz     r0, 0x64(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8021c028
    lwz     r0, 0x4c(r30)
    clrrwi  r0, r0, 16
    and.    r0, r3, r0
    beq-    branch_0x8021bfe8
    li      r0, 0x1
    b       branch_0x8021bfec

branch_0x8021bfe8:
    li      r0, 0x0
branch_0x8021bfec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021c028
    lfs     f4, 0x5c(r30)
    addi    r3, r31, 0x10
    lfs     f3, 0x58(r30)
    addi    r4, r30, 0x10
    lfs     f2, 0x54(r31)
    lfs     f1, 0x50(r31)
    bl      checkDistance__FRCQ29JGeometry8TVec3_f_ffRCQ29JGeometry8TVec3_f_ff
    clrlwi. r0, r3, 24
    beq-    branch_0x8021c028
    addi    r3, r25, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      suffererIsInAttackArea__12TObjHitCheckFP9THitActorP9THitActor
branch_0x8021c028:
    cmplwi  r29, 0x0
    bne+    branch_0x8021bf40
    lwz     r3, 0xf4(sp)
    lwz     r4, 0x8(r3)
    lwz     r3, 0x64(r4)
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x8021c04c
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x8021c078
branch_0x8021c04c:
    lwz     r0, 0x804(r25)
    lwz     r3, 0x800(r25)
    slwi    r0, r0, 3
    add     r3, r3, r0
    stw     r4, 0x4(r3)
    lwz     r0, 0x0(r28)
    stw     r0, 0x0(r3)
    stw     r3, 0x0(r28)
    lwz     r3, 0x804(r25)
    addi    r0, r3, 0x1
    stw     r0, 0x804(r25)
branch_0x8021c078:
    cmplwi  r26, 0xff
    bne-    branch_0x8021c088
    li      r26, 0x0
    b       branch_0x8021c08c

branch_0x8021c088:
    addi    r26, r26, 0x1
branch_0x8021c08c:
    cmplw   r26, r27
    bne+    branch_0x8021bf28
branch_0x8021c094:
    lwz     r3, 0xf4(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xf4(sp)
branch_0x8021c0a0:
    lwz     r3, 0xf8(sp)
    lwz     r0, 0xf4(sp)
    stw     r3, 0xc4(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0xc4(sp)
    lwz     r3, 0xc0(sp)
    cmplw   r3, r0
    bne+    branch_0x8021be8c
    lmw     r25, 0x104(sp)
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lfd     f30, 0x130(sp)
    mtlr    r0
    lfd     f29, 0x128(sp)
    lfd     f28, 0x120(sp)
    addi    sp, sp, 0x140
    blr


.globl checkWater__12TObjHitCheckFv
checkWater__12TObjHitCheckFv: # 0x8021c0e4
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stfd    f28, 0x98(sp)
    stmw    r20, 0x68(sp)
    subi    r31, r4, 0x3d4c
    addi    r26, r3, 0x0
    li      r27, 0x0
    li      r25, 0x0
    li      r24, 0x0
    li      r23, 0x0
    lwz     r5, gpModelWaterManager(r13)
    lfs     f31, -0x18c0(rtoc)
    lfs     f29, 0x60(r31)
    addi    r29, r5, 0x814
    addi    r28, r5, 0x2514
    b       branch_0x8021c268

branch_0x8021c138:
    addi    r0, r23, 0x414
    lhzx    r0, r3, r0
    clrlwi  r0, r0, 28
    cmpwi   r0, 0x1
    bne-    branch_0x8021c154
    li      r0, 0x1
    b       branch_0x8021c158

branch_0x8021c154:
    li      r0, 0x0
branch_0x8021c158:
    clrlwi. r0, r0, 24
    beq-    branch_0x8021c258
    add     r30, r29, r24
    lfs     f0, 0x4(r30)
    lfs     f1, 0x0(r30)
    fabs    f2, f0
    lfs     f0, 0x8(r30)
    fabs    f1, f1
    fabs    f3, f0
    fadds   f0, f1, f2
    fadds   f30, f3, f0
    fsubs   f0, f30, f29
    fmuls   f28, f31, f0
    fmr     f1, f28
    bl      __cvt_fp2unsigned
    fadds   f0, f30, f29
    mr      r21, r3
    fmuls   f30, f31, f0
    fmr     f1, f30
    bl      __cvt_fp2unsigned
    fmr     f1, f30
    mr      r20, r3
    bl      __cvt_fp2unsigned
    mr      r22, r3
    fmr     f1, f28
    bl      __cvt_fp2unsigned
    cmplw   r3, r22
    bne-    branch_0x8021c1cc
    addi    r20, r20, 0x1
branch_0x8021c1cc:
    clrlwi  r3, r21, 24
    clrlwi  r20, r20, 24
    clrlslwi  r0, r21, 24, 3
    cmplw   r3, r20
    add     r3, r26, r0
    beq-    branch_0x8021c258
    lwz     r22, 0x0(r3)
    b       branch_0x8021c248

branch_0x8021c1ec:
    lwz     r21, 0x4(r22)
    lwz     r22, 0x0(r22)
    lwz     r0, 0x4c(r21)
    clrrwi. r0, r0, 31
    beq-    branch_0x8021c208
    li      r0, 0x1
    b       branch_0x8021c20c

branch_0x8021c208:
    li      r0, 0x0
branch_0x8021c20c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8021c248
    lwz     r0, 0x64(r21)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8021c248
    lfs     f4, 0x5c(r21)
    mr      r3, r30
    lfs     f3, 0x58(r21)
    addi    r4, r21, 0x10
    lfs     f2, 0x54(r31)
    lfs     f1, 0x50(r31)
    bl      checkDistance__FRCQ29JGeometry8TVec3_f_ffRCQ29JGeometry8TVec3_f_ff
    clrlwi. r0, r3, 24
    beq-    branch_0x8021c248
    b       branch_0x8021c254

branch_0x8021c248:
    cmplwi  r22, 0x0
    bne+    branch_0x8021c1ec
    li      r21, 0x0
branch_0x8021c254:
    stwx    r21, r28, r25
branch_0x8021c258:
    addi    r27, r27, 0x1
    addi    r25, r25, 0x4
    addi    r24, r24, 0xc
    addi    r23, r23, 0x2
branch_0x8021c268:
    lwz     r3, gpModelWaterManager(r13)
    lhz     r0, 0x12(r3)
    cmpw    r27, r0
    blt+    branch_0x8021c138
    lmw     r20, 0x68(sp)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lfd     f28, 0x98(sp)
    addi    sp, sp, 0xb8
    blr


.globl suffererIsInAttackArea__12TObjHitCheckFP9THitActorP9THitActor
suffererIsInAttackArea__12TObjHitCheckFP9THitActorP9THitActor: # 0x8021c29c
    lhz     r7, 0x48(r4)
    lhz     r0, 0x4a(r4)
    cmplw   r7, r0
    bgelr-    

    cmplwi  r7, 0x0
    mtctr   r7
    li      r3, 0x0
    ble-    branch_0x8021c2d4
branch_0x8021c2bc:
    lwz     r6, 0x44(r4)
    lwzx    r0, r6, r3
    cmplw   r0, r5
    beqlr-    

    addi    r3, r3, 0x4
    bdnz+      branch_0x8021c2bc
branch_0x8021c2d4:
    lwz     r3, 0x44(r4)
    slwi    r0, r7, 2
    stwx    r5, r3, r0
    lhz     r3, 0x48(r4)
    addi    r0, r3, 0x1
    sth     r0, 0x48(r4)
    blr


.globl checkDistance__FRCQ29JGeometry8TVec3_f_ffRCQ29JGeometry8TVec3_f_ff
checkDistance__FRCQ29JGeometry8TVec3_f_ffRCQ29JGeometry8TVec3_f_ff: # 0x8021c2f0
    lfs     f6, 0x4(r4)
    lfs     f5, 0x4(r3)
    fadds   f0, f6, f4
    fcmpo   cr0, f5, f0
    ble-    branch_0x8021c30c
    li      r3, 0x0
    blr

branch_0x8021c30c:
    fadds   f0, f5, f2
    fcmpo   cr0, f0, f6
    bge-    branch_0x8021c320
    li      r3, 0x0
    blr

branch_0x8021c320:
    lfs     f2, 0x8(r3)
    fadds   f1, f1, f3
    lfs     f0, 0x8(r4)
    lfs     f3, 0x0(r3)
    fsubs   f4, f2, f0
    lfs     f0, 0x0(r4)
    fmuls   f1, f1, f1
    fsubs   f2, f3, f0
    fmuls   f0, f4, f4
    fmadds  f0, f2, f2, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8021c35c
    li      r3, 0x0
    blr

branch_0x8021c35c:
    li      r3, 0x1
    blr

