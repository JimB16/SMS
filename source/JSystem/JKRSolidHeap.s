
.globl create__12JKRSolidHeapFUlP7JKRHeapb
create__12JKRSolidHeapFUlP7JKRHeapb: # 0x802c46cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    mr.     r29, r4
    bne-    branch_0x802c46f4
    lwz     r29, R13Off_m0x5f28(r13)
branch_0x802c46f4:
    clrrwi  r31, r3, 4
    addi    r3, r31, 0x0
    addi    r5, r29, 0x0
    li      r4, 0x10
    bl      alloc__7JKRHeapFUliP7JKRHeap
    cmplwi  r3, 0x0
    addi    r4, r3, 0x80
    bne-    branch_0x802c471c
    li      r3, 0x0
    b       branch_0x802c4730

branch_0x802c471c:
    beq-    branch_0x802c4730
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r5, r31, -0x80
    bl      __ct__12JKRSolidHeapFPvUlP7JKRHeapb
branch_0x802c4730:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__12JKRSolidHeapFPvUlP7JKRHeapb
__ct__12JKRSolidHeapFPvUlP7JKRHeapb: # 0x802c474c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__7JKRHeapFPvUlP7JKRHeapb
    lis     r3, __vvt__12JKRSolidHeap@h
    addi    r0, r3, __vvt__12JKRSolidHeap@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    lwz     r4, 0x38(r31)
    stw     r4, 0x68(r31)
    lwz     r4, 0x30(r31)
    stw     r4, 0x6c(r31)
    lwz     r4, 0x34(r31)
    stw     r4, 0x70(r31)
    stw     r0, 0x74(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__12JKRSolidHeapFv
__dt__12JKRSolidHeapFv: # 0x802c47a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c47f8
    lis     r3, __vvt__12JKRSolidHeap@h
    addi    r0, r3, __vvt__12JKRSolidHeap@l
    stw     r0, 0x0(r30)
    mr      r3, r30
    bl      dispose__7JKRHeapFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7JKRHeapFv
    extsh.  r0, r31
    ble-    branch_0x802c47f8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c47f8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl alloc__12JKRSolidHeapFUli
alloc__12JKRSolidHeapFUli: # 0x802c4814
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
    cmplwi  r30, 0x4
    bge-    branch_0x802c484c
    li      r30, 0x4
branch_0x802c484c:
    cmpwi   r31, 0x0
    blt-    branch_0x802c487c
    cmpwi   r31, 0x4
    bge-    branch_0x802c4864
    li      r5, 0x4
    b       branch_0x802c4868

branch_0x802c4864:
    mr      r5, r31
branch_0x802c4868:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      allocFromHead__12JKRSolidHeapFUli
    mr      r31, r3
    b       branch_0x802c489c

branch_0x802c487c:
    neg     r5, r31
    cmpwi   r5, 0x4
    bge-    branch_0x802c488c
    li      r5, 0x4
branch_0x802c488c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      allocFromTail__12JKRSolidHeapFUli
    mr      r31, r3
branch_0x802c489c:
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


.globl allocFromHead__12JKRSolidHeapFUli
allocFromHead__12JKRSolidHeapFUli: # 0x802c48c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    addi    r5, r31, -0x1
    stw     r30, 0x20(sp)
    mr      r30, r3
    add     r4, r31, r4
    stw     r29, 0x1c(sp)
    not     r5, r5
    li      r29, 0x0
    stw     r28, 0x18(sp)
    lwz     r6, 0x6c(r3)
    lwz     r0, 0x68(r3)
    add     r3, r31, r6
    addi    r3, r3, -0x1
    and     r7, r5, r3
    addi    r3, r4, -0x1
    and     r28, r5, r3
    subf    r3, r6, r7
    add     r3, r28, r3
    cmplw   r3, r0
    addi    r5, r7, 0x0
    addi    r4, r3, 0x0
    bgt-    branch_0x802c4948
    add     r0, r6, r4
    stw     r0, 0x6c(r30)
    mr      r29, r5
    lwz     r0, 0x68(r30)
    subf    r0, r4, r0
    stw     r0, 0x68(r30)
    b       branch_0x802c4984

branch_0x802c4948:
    lis     r3, unk_803a98c0@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_803a98c0@l
    bl      JUTWarningConsole_f
    lbz     r0, 0x64(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x802c4984
    lwz     r12, R13Off_m0x5f24(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x802c4984
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    blrl
branch_0x802c4984:
    lwz     r0, 0x2c(sp)
    mr      r3, r29
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl allocFromTail__12JKRSolidHeapFUli
allocFromTail__12JKRSolidHeapFUli: # 0x802c49a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    addi    r5, r29, -0x1
    stw     r28, 0x18(sp)
    lwz     r6, 0x70(r3)
    add     r3, r29, r4
    not     r4, r5
    lwz     r0, 0x68(r31)
    addi    r3, r3, -0x1
    and     r28, r4, r3
    subf    r3, r28, r6
    and     r3, r4, r3
    subf    r4, r3, r6
    cmplw   r4, r0
    bgt-    branch_0x802c4a1c
    subf    r0, r4, r6
    stw     r0, 0x70(r31)
    mr      r30, r3
    lwz     r0, 0x68(r31)
    subf    r0, r4, r0
    stw     r0, 0x68(r31)
    b       branch_0x802c4a58

branch_0x802c4a1c:
    lis     r3, unk_803a98f4@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_803a98f4@l
    bl      JUTWarningConsole_f
    lbz     r0, 0x64(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802c4a58
    lwz     r12, R13Off_m0x5f24(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x802c4a58
    mtlr    r12
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    blrl
branch_0x802c4a58:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl free__12JKRSolidHeapFPv
free__12JKRSolidHeapFPv: # 0x802c4a7c
    mflr    r0
    lis     r3, unk_803a9928@ha
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, r3, unk_803a9928@l
    stwu    sp, -0x8(sp)
    bl      JUTWarningConsole_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl freeAll__12JKRSolidHeapFv
freeAll__12JKRSolidHeapFv: # 0x802c4aa8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x18
    bl      OSLockMutex
    mr      r3, r31
    bl      freeAll__7JKRHeapFv
    lwz     r4, 0x38(r31)
    li      r0, 0x0
    addi    r3, r31, 0x18
    stw     r4, 0x68(r31)
    lwz     r4, 0x30(r31)
    stw     r4, 0x6c(r31)
    lwz     r4, 0x34(r31)
    stw     r4, 0x70(r31)
    stw     r0, 0x74(r31)
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl freeTail__12JKRSolidHeapFv
freeTail__12JKRSolidHeapFv: # 0x802c4b08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x18
    bl      OSLockMutex
    lwz     r4, 0x70(r31)
    lwz     r5, 0x34(r31)
    cmplw   r4, r5
    beq-    branch_0x802c4b3c
    mr      r3, r31
    bl      dispose__7JKRHeapFPvPv
branch_0x802c4b3c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x34(r31)
    lwz     r4, 0x68(r31)
    subf    r0, r3, r0
    add     r0, r4, r0
    stw     r0, 0x68(r31)
    lwz     r0, 0x34(r31)
    stw     r0, 0x70(r31)
    lwz     r3, 0x74(r31)
    b       branch_0x802c4b70

branch_0x802c4b64:
    lwz     r0, 0x34(r31)
    stw     r0, 0xc(r3)
    lwz     r3, 0x10(r3)
branch_0x802c4b70:
    cmplwi  r3, 0x0
    bne+    branch_0x802c4b64
    addi    r3, r31, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl resize__12JKRSolidHeapFPvUl
resize__12JKRSolidHeapFPvUl: # 0x802c4b94
    mflr    r0
    lis     r3, unk_803a9950@ha
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, r3, unk_803a9950@l
    stwu    sp, -0x8(sp)
    bl      JUTWarningConsole_f
    lwz     r0, 0xc(sp)
    li      r3, -0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getSize__12JKRSolidHeapFPv
getSize__12JKRSolidHeapFPv: # 0x802c4bc4
    mflr    r0
    lis     r3, unk_803a9980@ha
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, r3, unk_803a9980@l
    stwu    sp, -0x8(sp)
    bl      JUTWarningConsole_f
    lwz     r0, 0xc(sp)
    li      r3, -0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl check__12JKRSolidHeapFv
check__12JKRSolidHeapFv: # 0x802c4bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x18
    bl      OSLockMutex
    lwz     r5, 0x30(r30)
    li      r31, 0x1
    lwz     r4, 0x6c(r30)
    lwz     r3, 0x70(r30)
    lwz     r0, 0x34(r30)
    subf    r5, r5, r4
    lwz     r6, 0x68(r30)
    subf    r0, r3, r0
    lwz     r4, 0x38(r30)
    add     r0, r5, r0
    add     r0, r6, r0
    cmplw   r0, r4
    mr      r5, r0
    beq-    branch_0x802c4c60
    lis     r3, unk_803a99b0@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_803a99b0@l
    li      r31, 0x0
    bl      JUTWarningConsole_f
branch_0x802c4c60:
    addi    r3, r30, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl dump__12JKRSolidHeapFv
dump__12JKRSolidHeapFv: # 0x802c4c84
    mflr    r0
    lis     r4, unk_803a98c0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, unk_803a98c0@l
    addi    r3, r30, 0x124
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    bl      JUTReportConsole
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r29, r3, 0x0
    addi    r3, r31, 0x18
    bl      OSLockMutex
    lwz     r6, 0x30(r31)
    addi    r3, r30, 0x138
    lwz     r5, 0x6c(r31)
    lwz     r4, 0x70(r31)
    lwz     r0, 0x34(r31)
    subf    r5, r6, r5
    lwz     r6, 0x68(r31)
    subf    r0, r4, r0
    add     r28, r5, r0
    add     r28, r6, r28
    bl      JUTReportConsole
    lwz     r4, 0x30(r31)
    addi    r3, r30, 0x150
    lwz     r0, 0x6c(r31)
    crxor   6, 6, 6
    subf    r5, r4, r0
    bl      JUTReportConsole_f
    lwz     r4, 0x70(r31)
    addi    r3, r30, 0x164
    lwz     r0, 0x34(r31)
    crxor   6, 6, 6
    subf    r5, r4, r0
    bl      JUTReportConsole_f
    lwz     r5, 0x38(r31)
    lis     r0, 0x4330
    stw     r28, 0x1c(sp)
    mr      r4, r28
    lfd     f2, 0xa0(r2)
    stw     r5, 0x14(sp)
    addi    r3, r30, 0x178
    lfs     f3, 0x98(r2)
    creqv   6, 6, 6
    stw     r0, 0x18(sp)
    stw     r0, 0x10(sp)
    lfd     f1, 0x18(sp)
    lfd     f0, 0x10(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fmuls   f1, f3, f0
    bl      JUTReportConsole_f
    addi    r3, r31, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x34(sp)
    mr      r3, r29
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl
state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl: # 0x802c4da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r5, 0xc(r4)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x38(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r31)
    lwz     r0, 0x70(r30)
    lwz     r3, 0x6c(r30)
    mulli   r0, r0, 0x3
    add     r3, r3, r0
    stw     r3, 0x8(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getTotalFreeSize__12JKRSolidHeapFv
getTotalFreeSize__12JKRSolidHeapFv: # 0x802c4e0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFreeSize__12JKRSolidHeapFv
getFreeSize__12JKRSolidHeapFv: # 0x802c4e38
    lwz     r3, 0x68(r3)
    blr


.globl state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState: # 0x802c4e40
    lwz     r6, 0x8(r4)
    li      r3, 0x1
    lwz     r0, 0x8(r5)
    cmplw   r6, r0
    beq-    branch_0x802c4e58
    li      r3, 0x0
branch_0x802c4e58:
    lwz     r4, 0x4(r4)
    lwz     r0, 0x4(r5)
    cmplw   r4, r0
    beqlr-    

    li      r3, 0x0
    blr


.globl getHeapType__12JKRSolidHeapFv
getHeapType__12JKRSolidHeapFv: # 0x802c4e70
    lis     r3, unk_534c4944@h
    addi    r3, r3, unk_534c4944@l
    blr

