
.globl OSInitStopwatch
OSInitStopwatch: # 0x80347fe0
    stw     r4, 0x0(r3)
    li      r4, 0x0
    li      r0, -0x1
    stw     r4, 0xc(r3)
    stw     r4, 0x8(r3)
    stw     r4, 0x10(r3)
    stw     r0, 0x1c(r3)
    stw     r4, 0x18(r3)
    stw     r4, 0x24(r3)
    stw     r4, 0x20(r3)
    blr


.globl OSStartStopwatch
OSStartStopwatch: # 0x8034800c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x30(r3)
    bl      OSGetTime
    stw     r4, 0x2c(r31)
    stw     r3, 0x28(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSStopStopwatch
OSStopStopwatch: # 0x80348048
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x30(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80348100
    bl      OSGetTime
    lwz     r5, 0x2c(r31)
    li      r0, 0x0
    lwz     r6, 0x28(r31)
    subfc   r7, r5, r4
    lwz     r5, 0xc(r31)
    subfe   r6, r6, r3
    lwz     r4, 0x8(r31)
    addc    r3, r5, r7
    stw     r3, 0xc(r31)
    adde    r4, r4, r6
    xoris   r3, r6, 0x8000
    stw     r4, 0x8(r31)
    stw     r0, 0x30(r31)
    lwz     r4, 0x10(r31)
    addi    r0, r4, 0x1
    stw     r0, 0x10(r31)
    lwz     r0, 0x20(r31)
    lwz     r5, 0x24(r31)
    xoris   r4, r0, 0x8000
    subfc   r0, r7, r5
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x803480d4
    stw     r7, 0x24(r31)
    stw     r6, 0x20(r31)
branch_0x803480d4:
    lwz     r0, 0x18(r31)
    xoris   r4, r6, 0x8000
    lwz     r5, 0x1c(r31)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r7
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x80348100
    stw     r7, 0x1c(r31)
    stw     r6, 0x18(r31)
branch_0x80348100:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSCheckStopwatch
OSCheckStopwatch: # 0x80348114
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r0, 0x30(r3)
    lwz     r31, 0x8(r3)
    cmpwi   r0, 0x0
    lwz     r30, 0xc(r3)
    beq-    branch_0x80348160
    bl      OSGetTime
    lwz     r5, 0x2c(r29)
    lwz     r0, 0x28(r29)
    subfc   r4, r5, r4
    subfe   r0, r0, r3
    addc    r30, r30, r4
    adde    r31, r31, r0
branch_0x80348160:
    addi    r4, r30, 0x0
    lwz     r0, 0x24(sp)
    addi    r3, r31, 0x0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl OSResetStopwatch
OSResetStopwatch: # 0x80348184
    li      r4, 0x0
    stw     r4, 0xc(r3)
    li      r0, -0x1
    stw     r4, 0x8(r3)
    stw     r4, 0x10(r3)
    stw     r0, 0x1c(r3)
    stw     r4, 0x18(r3)
    stw     r4, 0x24(r3)
    stw     r4, 0x20(r3)
    blr

