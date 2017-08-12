
.globl __ct__11JKRAramHeapFUlUl
__ct__11JKRAramHeapFUlUl: # 0x802bd978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11JKRDisposerFv
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__11JKRAramHeap@ha
    addi    r0, r3, __vvt__11JKRAramHeap@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x18
    bl      OSInitMutex
    mr      r3, r31
    bl      findFromRoot__7JKRHeapFPv
    stw     r3, 0x30(r31)
    clrrwi  r3, r30, 5
    addi    r0, r29, 0x1f
    stw     r3, 0x3c(r31)
    clrrwi  r3, r0, 5
    li      r0, 0xff
    stw     r3, 0x34(r31)
    li      r3, 0x24
    li      r5, 0x0
    lwz     r6, 0x34(r31)
    lwz     r4, 0x3c(r31)
    add     r4, r6, r4
    stw     r4, 0x38(r31)
    stb     r0, 0x40(r31)
    lwz     r4, 0x30(r31)
    bl      __nw__FUlP7JKRHeapi
    mr.     r5, r3
    beq-    branch_0x802bda2c
    lwz     r4, 0x34(r31)
    mr      r3, r5
    lwz     r6, 0x3c(r31)
    li      r5, 0x0
    li      r7, 0xff
    li      r8, 0x0
    bl      __ct__12JKRAramBlockFUlUlUlUcb
    mr      r5, r3
branch_0x802bda2c:
    lis     r3, sAramList__11JKRAramHeap@h
    addi    r3, r3, sAramList__11JKRAramHeap@l
    addi    r4, r5, 0x4
    bl      append__10JSUPtrListFP10JSUPtrLink
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__11JKRAramHeapFv
__dt__11JKRAramHeapFv: # 0x802bda5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x64(sp)
    mr.     r29, r3
    beq-    branch_0x802bdae4
    lis     r3, __vvt__11JKRAramHeap@ha
    addi    r0, r3, __vvt__11JKRAramHeap@l
    stw     r0, 0x0(r29)
    lis     r3, 0x8040
    lwz     r31, 0x4290(r3)
    b       branch_0x802bdac0

branch_0x802bda98:
    mr      r3, r31
    lwz     r31, 0xc(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802bdac0
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bdac0:
    cmplwi  r31, 0x0
    bne+    branch_0x802bda98
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r30
    ble-    branch_0x802bdae4
    mr      r3, r29
    bl      __dl__FPv
branch_0x802bdae4:
    lwz     r0, 0x74(sp)
    mr      r3, r29
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode: # 0x802bdb04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0x18
    bl      OSLockMutex
    cmpwi   r31, 0x0
    bne-    branch_0x802bdb4c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      allocFromHead__11JKRAramHeapFUl
    mr      r31, r3
    b       branch_0x802bdb5c

branch_0x802bdb4c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      allocFromTail__11JKRAramHeapFUl
    mr      r31, r3
branch_0x802bdb5c:
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl allocFromHead__11JKRAramHeapFUl
allocFromHead__11JKRAramHeapFUl: # 0x802bdb84
    mflr    r0
    lis     r5, sAramList__11JKRAramHeap@h
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1f
    addi    r6, r3, 0x0
    stwu    sp, -0x8(sp)
    addi    r5, r5, sAramList__11JKRAramHeap@l
    clrrwi  r4, r0, 5
    lwz     r5, 0x0(r5)
    li      r8, -0x1
    li      r3, 0x0
    b       branch_0x802bdbe0

branch_0x802bdbb4:
    lwz     r7, 0x0(r5)
    lwz     r0, 0x1c(r7)
    cmplw   r0, r4
    blt-    branch_0x802bdbdc
    cmplw   r8, r0
    ble-    branch_0x802bdbdc
    cmplw   r0, r4
    mr      r8, r0
    addi    r3, r7, 0x0
    beq-    branch_0x802bdbe8
branch_0x802bdbdc:
    lwz     r5, 0xc(r5)
branch_0x802bdbe0:
    cmplwi  r5, 0x0
    bne+    branch_0x802bdbb4
branch_0x802bdbe8:
    cmplwi  r3, 0x0
    beq-    branch_0x802bdbfc
    lbz     r5, 0x40(r6)
    bl      allocHead__12JKRAramBlockFUlUcP11JKRAramHeap
    b       branch_0x802bdc00

branch_0x802bdbfc:
    li      r3, 0x0
branch_0x802bdc00:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl allocFromTail__11JKRAramHeapFUl
allocFromTail__11JKRAramHeapFUl: # 0x802bdc10
    mflr    r0
    lis     r5, sAramList__11JKRAramHeap@h
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1f
    addi    r6, r3, 0x0
    stwu    sp, -0x8(sp)
    addi    r5, r5, sAramList__11JKRAramHeap@l
    clrrwi  r4, r0, 5
    lwz     r5, 0x4(r5)
    li      r3, 0x0
    b       branch_0x802bdc58

branch_0x802bdc3c:
    lwz     r7, 0x0(r5)
    lwz     r0, 0x1c(r7)
    cmplw   r0, r4
    blt-    branch_0x802bdc54
    mr      r3, r7
    b       branch_0x802bdc60

branch_0x802bdc54:
    lwz     r5, 0x8(r5)
branch_0x802bdc58:
    cmplwi  r5, 0x0
    bne+    branch_0x802bdc3c
branch_0x802bdc60:
    cmplwi  r3, 0x0
    beq-    branch_0x802bdc74
    lbz     r5, 0x40(r6)
    bl      allocTail__12JKRAramBlockFUlUcP11JKRAramHeap
    b       branch_0x802bdc78

branch_0x802bdc74:
    li      r3, 0x0
branch_0x802bdc78:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __sinit_JKRAramHeap_cpp
__sinit_JKRAramHeap_cpp: # 0x802bdc88
    mflr    r0
    lis     r3, sAramList__11JKRAramHeap@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, sAramList__11JKRAramHeap@l
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, __dt__23JSUList_12JKRAramBlock_Fv@ha
    lis     r3, unk_803fd548@ha
    addi    r5, r3, unk_803fd548@l
    addi    r4, r4, __dt__23JSUList_12JKRAramBlock_Fv@l
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__23JSUList_12JKRAramBlock_Fv
__dt__23JSUList_12JKRAramBlock_Fv: # 0x802bdcd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802bdd10
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802bdd10
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bdd10:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

