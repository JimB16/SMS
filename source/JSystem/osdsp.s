
.incbin "./baserom/code/Text_0x80005600.bin", 0x332168, 0x80337780 - 0x80337768

.globl DSPAddTask
DSPAddTask: # 0x80337780
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stmw    r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r0, -0x5ab0(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x803377b8
    lis     r3, 0x803b
    subi    r3, r3, 0x5828
    crxor   6, 6, 6
    bl      OSReport
    li      r3, 0x0
    b       branch_0x803377e8

branch_0x803377b8:
    bl      OSDisableInterrupts
    addi    r0, r3, 0x0
    addi    r3, r30, 0x0
    mr      r31, r0
    bl      __DSP_insert_task
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, 0x0(r30)
    mr      r3, r31
    stw     r0, 0x8(r30)
    bl      OSRestoreInterrupts
    mr      r3, r30
branch_0x803377e8:
    lwz     r0, 0x1c(sp)
    lmw     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x3321fc, 0x80337800 - 0x803377fc

.globl DSPAddPriorTask__FP15STRUCT_DSP_TASK
DSPAddPriorTask__FP15STRUCT_DSP_TASK: # 0x80337800
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stmw    r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r0, -0x5ab0(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80337834
    lis     r3, 0x803b
    subi    r3, r3, 0x580c
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x80337860

branch_0x80337834:
    bl      OSDisableInterrupts
    stw     r30, -0x5ab0(r13)
    li      r4, 0x0
    addi    r31, r3, 0x0
    li      r0, 0x1
    stw     r4, 0x0(r30)
    addi    r3, r30, 0x0
    stw     r0, 0x8(r30)
    bl      __DSP_boot_task
    mr      r3, r31
    bl      OSRestoreInterrupts
branch_0x80337860:
    lwz     r0, 0x1c(sp)
    lmw     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

