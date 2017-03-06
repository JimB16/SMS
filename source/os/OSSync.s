
.globl SystemCallVector
SystemCallVector: # 0x803481ac
    mfspr   r9, 1008
    ori     r10, r9, 0x8
    mtspr   1008, r10
    isync
    sync
    mtspr   1008, r9
    rfi


.incbin "./baserom/code/Text_0x80005600.bin", 0x342bc8, 0x803481cc - 0x803481c8

.globl __OSInitSystemCall
__OSInitSystemCall: # 0x803481cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r5, 0x8000
    lis     r4, 0x8035
    lis     r3, 0x8035
    addi    r31, r5, 0xc00
    subi    r0, r3, 0x7e38
    subi    r4, r4, 0x7e54
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

