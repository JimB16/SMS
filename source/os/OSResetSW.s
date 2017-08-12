
.globl __OSResetSWInterruptHandler
__OSResetSWInterruptHandler: # 0x803470e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    bl      __OSGetSystemTime
    lis     r5, 0x8000
    stw     r4, R13Off_m0x59c4(r13)
    lwz     r0, 0xf8(r5)
    lis     r4, unk_431bde83@ha
    addi    r4, r4, unk_431bde83@l
    stw     r3, R13Off_m0x59c8(r13)
    srwi    r0, r0, 2
    mulhwu  r0, r4, r0
    srwi    r0, r0, 15
    mulli   r0, r0, 0x64
    srwi    r29, r0, 3
    li      r30, 0x0
    lis     r31, 0xcc00
branch_0x80347134:
    bl      __OSGetSystemTime
    lwz     r6, R13Off_m0x59c4(r13)
    xoris   r5, r30, 0x8000
    lwz     r0, R13Off_m0x59c8(r13)
    subfc   r4, r6, r4
    subfe   r0, r0, r3
    xoris   r3, r0, 0x8000
    subfc   r0, r29, r4
    subfe   r5, r5, r3
    subfe   r5, r3, r3
    neg.    r5, r5
    beq-    branch_0x80347170
    lwz     r0, 0x3000(r31)
    rlwinm. r0, r0, 0, 15, 15
    beq+    branch_0x80347134
branch_0x80347170:
    lis     r3, 0xcc00
    lwz     r0, 0x3000(r3)
    rlwinm. r0, r0, 0, 15, 15
    bne-    branch_0x803471b0
    li      r0, 0x1
    stw     r0, R13Off_m0x59dc(r13)
    li      r3, 0x200
    stw     r0, R13Off_m0x59d8(r13)
    bl      __OSMaskInterrupts
    lwz     r12, R13Off_m0x59e0(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x803471b0
    li      r0, 0x0
    mtlr    r12
    stw     r0, R13Off_m0x59e0(r13)
    blrl
branch_0x803471b0:
    li      r0, 0x2
    lis     r3, 0xcc00
    stw     r0, 0x3000(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSGetResetButtonState
OSGetResetButtonState: # 0x803471d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    bl      OSDisableInterrupts
    mr      r30, r3
    bl      __OSGetSystemTime
    lis     r5, 0xcc00
    lwz     r0, 0x3000(r5)
    rlwinm. r0, r0, 0, 15, 15
    bne-    branch_0x803472e4
    lwz     r0, R13Off_m0x59dc(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80347254
    lwz     r0, R13Off_m0x59d0(r13)
    li      r6, 0x0
    lwz     r5, R13Off_m0x59cc(r13)
    li      r7, 0x1
    xor     r0, r0, r6
    xor     r5, r5, r6
    stw     r7, R13Off_m0x59dc(r13)
    or.     r0, r5, r0
    beq-    branch_0x80347240
    b       branch_0x80347244

branch_0x80347240:
    mr      r7, r6
branch_0x80347244:
    stw     r4, R13Off_m0x59c4(r13)
    mr      r29, r7
    stw     r3, R13Off_m0x59c8(r13)
    b       branch_0x80347398

branch_0x80347254:
    lwz     r0, R13Off_m0x59d0(r13)
    li      r9, 0x0
    lwz     r5, R13Off_m0x59cc(r13)
    li      r10, 0x1
    xor     r0, r0, r9
    xor     r5, r5, r9
    or.     r0, r5, r0
    bne-    branch_0x803472c8
    lis     r6, 0x8000
    lwz     r5, R13Off_m0x59c4(r13)
    lwz     r7, 0xf8(r6)
    lis     r6, unk_431bde83@ha
    addi    r8, r6, unk_431bde83@l
    lwz     r0, R13Off_m0x59c8(r13)
    srwi    r6, r7, 2
    mulhwu  r6, r8, r6
    srwi    r6, r6, 15
    mulli   r6, r6, 0x64
    subfc   r7, r5, r4
    subfe   r0, r0, r3
    srwi    r8, r6, 3
    xoris   r5, r0, 0x8000
    xoris   r6, r9, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    bne-    branch_0x803472c8
    mr      r10, r9
branch_0x803472c8:
    cmpwi   r10, 0x0
    beq-    branch_0x803472d8
    li      r0, 0x1
    b       branch_0x803472dc

branch_0x803472d8:
    li      r0, 0x0
branch_0x803472dc:
    mr      r29, r0
    b       branch_0x80347398

branch_0x803472e4:
    lwz     r0, R13Off_m0x59dc(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80347320
    lwz     r5, R13Off_m0x59d8(r13)
    li      r0, 0x0
    stw     r0, R13Off_m0x59dc(r13)
    cmpwi   r5, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x80347314
    stw     r4, R13Off_m0x59cc(r13)
    stw     r3, R13Off_m0x59d0(r13)
    b       branch_0x80347398

branch_0x80347314:
    stw     r0, R13Off_m0x59cc(r13)
    stw     r0, R13Off_m0x59d0(r13)
    b       branch_0x80347398

branch_0x80347320:
    lwz     r6, R13Off_m0x59d0(r13)
    li      r8, 0x0
    lwz     r7, R13Off_m0x59cc(r13)
    xor     r0, r6, r8
    xor     r5, r7, r8
    or.     r0, r5, r0
    beq-    branch_0x80347388
    lis     r5, 0x8000
    lwz     r0, 0xf8(r5)
    lis     r5, unk_10624dd3@h
    addi    r5, r5, unk_10624dd3@l
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r0, r0, 6
    mulli   r0, r0, 0x28
    subfc   r7, r7, r4
    subfe   r5, r6, r3
    xoris   r6, r5, 0x8000
    xoris   r5, r8, 0x8000
    subfc   r0, r0, r7
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80347388
    li      r29, 0x1
    b       branch_0x80347398

branch_0x80347388:
    li      r0, 0x0
    stw     r0, R13Off_m0x59cc(r13)
    li      r29, 0x0
    stw     r0, R13Off_m0x59d0(r13)
branch_0x80347398:
    lis     r5, 0x8000
    stw     r29, R13Off_m0x59d8(r13)
    lbz     r0, 0x30e3(r5)
    clrlwi. r0, r0, 26
    beq-    branch_0x80347448
    mulli   r10, r0, 0x3c
    lwz     r0, 0xf8(r5)
    lwz     r9, R13Off_m0x5a44(r13)
    lwz     r8, R13Off_m0x5a48(r13)
    srwi    r6, r0, 2
    srawi   r0, r10, 31
    mullw   r7, r0, r6
    mulhwu  r0, r10, r6
    mullw   r5, r10, r6
    addc    r9, r9, r5
    li      r31, 0x0
    add     r7, r7, r0
    mullw   r0, r10, r31
    add     r0, r7, r0
    adde    r8, r8, r0
    xoris   r7, r8, 0x8000
    xoris   r5, r3, 0x8000
    subfc   r0, r4, r9
    subfe   r5, r5, r7
    subfe   r5, r7, r7
    neg.    r5, r5
    beq-    branch_0x80347448
    subfc   r4, r9, r4
    subfe   r3, r8, r3
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x2
    bl      __div2i
    li      r0, 0x1
    and     r4, r4, r0
    and     r0, r3, r31
    xor     r3, r4, r31
    xor     r0, r0, r31
    or.     r0, r3, r0
    bne-    branch_0x80347444
    li      r29, 0x1
    b       branch_0x80347448

branch_0x80347444:
    li      r29, 0x0
branch_0x80347448:
    mr      r3, r30
    bl      OSRestoreInterrupts
    mr      r3, r29
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSGetResetSwitchState
OSGetResetSwitchState: # 0x80347470
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      OSGetResetButtonState
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

