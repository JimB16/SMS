
.globl __DVDClearWaitingQueue
__DVDClearWaitingQueue: # 0x8034e748
    lis     r3, WaitingQueue@h
    addi    r3, r3, WaitingQueue@l
    stw     r3, 0x0(r3)
    addi    r5, r3, 0x8
    addi    r4, r3, 0x10
    stw     r3, 0x4(r3)
    addi    r3, r3, 0x18
    stw     r5, 0x0(r5)
    stw     r5, 0x4(r5)
    stw     r4, 0x0(r4)
    stw     r4, 0x4(r4)
    stw     r3, 0x0(r3)
    stw     r3, 0x4(r3)
    blr


.globl __DVDPushWaitingQueue
__DVDPushWaitingQueue: # 0x8034e780
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    lis     r4, WaitingQueue@h
    slwi    r5, r30, 3
    addi    r0, r4, WaitingQueue@l
    add     r5, r0, r5
    lwz     r4, 0x4(r5)
    stw     r31, 0x0(r4)
    lwz     r0, 0x4(r5)
    stw     r0, 0x4(r31)
    stw     r5, 0x0(r31)
    stw     r31, 0x4(r5)
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __DVDPopWaitingQueue
__DVDPopWaitingQueue: # 0x8034e7e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    li      r0, 0x4
    lis     r4, WaitingQueue@h
    mtctr   r0
    addi    r4, r4, WaitingQueue@l
    li      r31, 0x0
branch_0x8034e810:
    lwz     r0, 0x0(r4)
    cmplw   r0, r4
    beq-    branch_0x8034e860
    bl      OSRestoreInterrupts
    bl      OSDisableInterrupts
    lis     r4, WaitingQueue@h
    slwi    r5, r31, 3
    addi    r0, r4, WaitingQueue@l
    add     r5, r0, r5
    lwz     r31, 0x0(r5)
    lwz     r0, 0x0(r31)
    stw     r0, 0x0(r5)
    lwz     r4, 0x0(r31)
    stw     r5, 0x4(r4)
    bl      OSRestoreInterrupts
    li      r0, 0x0
    stw     r0, 0x0(r31)
    mr      r3, r31
    stw     r0, 0x4(r31)
    b       branch_0x8034e874

branch_0x8034e860:
    addi    r4, r4, 0x8
    addi    r31, r31, 0x1
    bdnz+      branch_0x8034e810
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x8034e874:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __DVDCheckWaitingQueue
__DVDCheckWaitingQueue: # 0x8034e888
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSDisableInterrupts
    li      r0, 0x4
    lis     r4, WaitingQueue@h
    mtctr   r0
    addi    r4, r4, WaitingQueue@l
branch_0x8034e8a8:
    lwz     r0, 0x0(r4)
    cmplw   r0, r4
    beq-    branch_0x8034e8c0
    bl      OSRestoreInterrupts
    li      r3, 0x1
    b       branch_0x8034e8d0

branch_0x8034e8c0:
    addi    r4, r4, 0x8
    bdnz+      branch_0x8034e8a8
    bl      OSRestoreInterrupts
    li      r3, 0x0
branch_0x8034e8d0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __DVDDequeueWaitingQueue
__DVDDequeueWaitingQueue: # 0x8034e8e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      OSDisableInterrupts
    lwz     r4, 0x4(r31)
    lwz     r5, 0x0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x8034e910
    cmplwi  r5, 0x0
    bne-    branch_0x8034e91c
branch_0x8034e910:
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x8034e92c

branch_0x8034e91c:
    stw     r5, 0x0(r4)
    stw     r4, 0x4(r5)
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x8034e92c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

