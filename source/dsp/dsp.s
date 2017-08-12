
.globl DSPCheckMailToDSP
DSPCheckMailToDSP: # 0x80353d38
    lis     r3, 0xcc00
    lhz     r0, 0x5000(r3)
    extrwi  r3, r0, 1, 16
    blr


.globl DSPCheckMailFromDSP
DSPCheckMailFromDSP: # 0x80353d48
    lis     r3, 0xcc00
    lhz     r0, 0x5004(r3)
    extrwi  r3, r0, 1, 16
    blr


.globl DSPReadMailFromDSP
DSPReadMailFromDSP: # 0x80353d58
    lis     r3, unk_cc005000@h
    addi    r3, r3, unk_cc005000@l
    lhz     r0, 0x4(r3)
    lhz     r3, 0x6(r3)
    insrwi  r3, r0, 16, 0
    blr


.globl DSPSendMailToDSP
DSPSendMailToDSP: # 0x80353d70
    lis     r4, 0xcc00
    srwi    r0, r3, 16
    sth     r0, 0x5000(r4)
    sth     r3, 0x5002(r4)
    blr


.globl DSPAssertInt
DSPAssertInt: # 0x80353d84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSDisableInterrupts
    lis     r4, unk_cc005000@h
    addi    r4, r4, unk_cc005000@l
    lhz     r5, 0xa(r4)
    li      r0, -0xa9
    and     r0, r5, r0
    ori     r0, r0, 0x2
    sth     r0, 0xa(r4)
    bl      OSRestoreInterrupts
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl DSPInit
DSPInit: # 0x80353dc4
    mflr    r0
    lis     r3, unk_803e8a88@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, unk_803e8a88@l
    crxor   6, 6, 6
    addi    r4, r3, 0x20
    stwu    sp, -0x10(sp)
    addi    r5, r3, 0x2c
    stw     r31, 0xc(sp)
    bl      __DSP_debug_printf
    lwz     r0, R13Off_m0x57f0(r13)
    cmpwi   r0, 0x1
    beq-    branch_0x80353e68
    bl      OSDisableInterrupts
    lis     r4, __DSPHandler@h
    addi    r31, r3, 0x0
    addi    r4, r4, __DSPHandler@l
    li      r3, 0x7
    bl      __OSSetInterruptHandler
    lis     r3, 0x100
    bl      __OSUnmaskInterrupts
    lis     r3, unk_cc005000@h
    addi    r6, r3, unk_cc005000@l
    lhz     r3, 0x500a(r3)
    li      r0, -0xa9
    and     r0, r3, r0
    ori     r0, r0, 0x800
    sth     r0, 0xa(r6)
    li      r5, -0xad
    li      r4, 0x0
    lhz     r7, 0xa(r6)
    li      r0, 0x1
    addi    r3, r31, 0x0
    and     r5, r7, r5
    sth     r5, 0xa(r6)
    stw     r4, R13Off_m0x5ac0(r13)
    stw     r4, R13Off_m0x57e0(r13)
    stw     r4, R13Off_m0x57e8(r13)
    stw     r4, R13Off_m0x57e4(r13)
    stw     r0, R13Off_m0x57f0(r13)
    bl      OSRestoreInterrupts
branch_0x80353e68:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

