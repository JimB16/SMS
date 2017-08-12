
.globl create__10JKRStdHeapFUlP7JKRHeapb
create__10JKRStdHeapFUlP7JKRHeapb: # 0x802c4e7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    mr.     r29, r4
    bne-    branch_0x802c4ea4
    lwz     r29, R13Off_m0x5f28(r13)
branch_0x802c4ea4:
    clrrwi  r31, r3, 5
    addi    r3, r31, 0x0
    addi    r5, r29, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    cmplwi  r3, 0x0
    addi    r4, r3, 0x80
    bne-    branch_0x802c4ecc
    li      r3, 0x0
    b       branch_0x802c4ee0

branch_0x802c4ecc:
    beq-    branch_0x802c4ee0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r5, r31, -0x80
    bl      __ct__10JKRStdHeapFPvUlP7JKRHeapb
branch_0x802c4ee0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__10JKRStdHeapFPvUlP7JKRHeapb
__ct__10JKRStdHeapFPvUlP7JKRHeapb: # 0x802c4efc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7JKRHeapFPvUlP7JKRHeapb
    lis     r3, __vvt__10JKRStdHeap@h
    lwz     r31, 0x8(sp)
    addi    r0, r3, __vvt__10JKRStdHeap@l
    stw     r0, 0x0(r31)
    lwz     r3, 0x30(r31)
    lwz     r4, 0x34(r31)
    bl      OSCreateHeap
    stw     r3, 0x68(r31)
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__10JKRStdHeapFv
__dt__10JKRStdHeapFv: # 0x802c4f50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c4fb0
    lis     r3, __vvt__10JKRStdHeap@h
    addi    r0, r3, __vvt__10JKRStdHeap@l
    stw     r0, 0x0(r30)
    mr      r3, r30
    bl      dispose__7JKRHeapFv
    lwz     r3, 0x68(r30)
    cmpwi   r3, -0x1
    beq-    branch_0x802c4f94
    bl      OSDestroyHeap
branch_0x802c4f94:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7JKRHeapFv
    extsh.  r0, r31
    ble-    branch_0x802c4fb0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c4fb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl alloc__10JKRStdHeapFUli
alloc__10JKRStdHeapFUli: # 0x802c4fcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r3, 0x68(r3)
    cmpwi   r3, -0x1
    bne-    branch_0x802c5008
    li      r3, 0x0
    b       branch_0x802c505c

branch_0x802c5008:
    mr      r4, r29
    bl      OSAllocFromHeap
    mr.     r31, r3
    bne-    branch_0x802c5058
    lis     r3, unk_803a9a58@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_803a9a58@l
    addi    r4, r29, 0x0
    bl      JUTWarningConsole_f
    lbz     r0, 0x64(r28)
    cmplwi  r0, 0x1
    bne-    branch_0x802c5058
    lwz     r12, R13Off_m0x5f24(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x802c5058
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    blrl
branch_0x802c5058:
    mr      r3, r31
branch_0x802c505c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl free__10JKRStdHeapFPv
free__10JKRStdHeapFPv: # 0x802c507c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x68(r3)
    cmpwi   r5, -0x1
    beq-    branch_0x802c50b4
    lwz     r0, 0x30(r3)
    cmplw   r0, r4
    bgt-    branch_0x802c50b4
    lwz     r0, 0x34(r3)
    cmplw   r4, r0
    bgt-    branch_0x802c50b4
    mr      r3, r5
    bl      OSFreeToHeap
branch_0x802c50b4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl freeAll__10JKRStdHeapFv
freeAll__10JKRStdHeapFv: # 0x802c50c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x68(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x802c5104
    mr      r3, r31
    bl      freeAll__7JKRHeapFv
    lwz     r3, 0x68(r31)
    bl      OSDestroyHeap
    lwz     r3, 0x30(r31)
    lwz     r4, 0x34(r31)
    bl      OSCreateHeap
    stw     r3, 0x68(r31)
branch_0x802c5104:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl freeTail__10JKRStdHeapFv
freeTail__10JKRStdHeapFv: # 0x802c5118
    mflr    r0
    lis     r3, unk_803a9a84@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_803a9a84@l
    stwu    sp, -0x8(sp)
    bl      JUTWarningConsole
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl resize__10JKRStdHeapFPvUl
resize__10JKRStdHeapFPvUl: # 0x802c5140
    mflr    r0
    lis     r3, unk_803a9aa8@ha
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, r3, unk_803a9aa8@l
    stwu    sp, -0x8(sp)
    bl      JUTWarningConsole_f
    lwz     r0, 0xc(sp)
    li      r3, -0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFreeSize__10JKRStdHeapFv
getFreeSize__10JKRStdHeapFv: # 0x802c5170
    mflr    r0
    lis     r3, unk_803a9ad8@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_803a9ad8@l
    stwu    sp, -0x8(sp)
    bl      JUTWarningConsole
    lwz     r0, 0xc(sp)
    li      r3, -0x1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl state_register__10JKRStdHeapCFPQ27JKRHeap6TStateUl
state_register__10JKRStdHeapCFPQ27JKRHeap6TStateUl: # 0x802c519c
    stw     r5, 0xc(r4)
    li      r0, 0x0
    stw     r0, 0x4(r4)
    stw     r0, 0x8(r4)
    blr


.globl state_compare__10JKRStdHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
state_compare__10JKRStdHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState: # 0x802c51b0
    lwz     r6, 0x8(r4)
    li      r3, 0x1
    lwz     r0, 0x8(r5)
    cmplw   r6, r0
    beq-    branch_0x802c51c8
    li      r3, 0x0
branch_0x802c51c8:
    lwz     r4, 0x4(r4)
    lwz     r0, 0x4(r5)
    cmplw   r4, r0
    beqlr-    

    li      r3, 0x0
    blr


.globl getSize__10JKRStdHeapFPv
getSize__10JKRStdHeapFPv: # 0x802c51e0
    mflr    r0
    mr      r3, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSReferentSize
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getTotalFreeSize__10JKRStdHeapFv
getTotalFreeSize__10JKRStdHeapFv: # 0x802c5204
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


.globl getHeapType__10JKRStdHeapFv
getHeapType__10JKRStdHeapFv: # 0x802c5230
    lis     r3, unk_53544448@h
    addi    r3, r3, unk_53544448@l
    blr


.globl check__10JKRStdHeapFv
check__10JKRStdHeapFv: # 0x802c523c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    bl      OSCheckHeap
    subfic  r3, r3, -0x1
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl dump__10JKRStdHeapFv
dump__10JKRStdHeapFv: # 0x802c526c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x68(r3)
    bl      OSDumpHeap
    lwz     r3, 0x68(r31)
    bl      OSCheckHeap
    subfic  r3, r3, -0x1
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

