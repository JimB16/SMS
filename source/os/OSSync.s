
.globl SystemCallVector
SystemCallVector: # 0x803481ac
    mfspr   r9, 1008
    ori     r10, r9, 0x8
    mtspr   1008, r10
    isync
    sync
    mtspr   1008, r9
    rfi

branch_0x803481c8:
    ori     r0, r0, 0x0

.globl __OSInitSystemCall
__OSInitSystemCall: # 0x803481cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r5, unk_80000c00@h
    lis     r4, SystemCallVector@ha
    lis     r3, branch_0x803481c8@ha
    addi    r31, r5, unk_80000c00@l
    addi    r0, r3, branch_0x803481c8@l
    addi    r4, r4, SystemCallVector@l
    mr      r3, r31
    subf    r5, r4, r0
    bl      memcpy
    mr      r3, r31
    li      r4, 0x100
    bl      DCFlushRangeNoSync
    sync
    mr      r3, r31
    li      r4, 0x100
    bl      ICInvalidateRange
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

