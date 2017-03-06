
.globl OSInitAlarm
OSInitAlarm: # 0x80342564
    mflr    r0
    li      r3, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      __OSGetExceptionHandler
    lis     r4, 0x8034
    addi    r4, r4, 0x2bc0
    cmplw   r3, r4
    beq-    branch_0x803425a0
    li      r0, 0x0
    subi    r3, r13, 0x5a40
    stw     r0, 0x4(r3)
    li      r3, 0x8
    stw     r0, -0x5a40(r13)
    bl      __OSSetExceptionHandler
branch_0x803425a0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSCreateAlarm
OSCreateAlarm: # 0x803425b0
    li      r0, 0x0
    stw     r0, 0x0(r3)
    blr


.globl InsertAlarm
InsertAlarm: # 0x803425bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    li      r28, 0x0
    mr      r29, r3
    xoris   r4, r28, 0x8000
    addi    r25, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r0, 0x18(r3)
    lwz     r8, 0x1c(r3)
    xoris   r3, r0, 0x8000
    subfc   r0, r8, r28
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x8034267c
    bl      __OSGetSystemTime
    lwz     r7, 0x20(r29)
    xoris   r5, r3, 0x8000
    lwz     r8, 0x24(r29)
    xoris   r6, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    addi    r30, r8, 0x0
    addi    r25, r7, 0x0
    beq-    branch_0x8034267c
    lwz     r27, 0x18(r29)
    subfc   r4, r8, r4
    lwz     r26, 0x1c(r29)
    subfe   r3, r7, r3
    addi    r5, r27, 0x0
    addi    r6, r26, 0x0
    bl      __div2i
    li      r0, 0x1
    addc    r5, r4, r0
    mullw   r4, r27, r5
    mulhwu  r0, r26, r5
    adde    r3, r3, r28
    add     r4, r4, r0
    mullw   r0, r26, r3
    mullw   r3, r26, r5
    add     r0, r4, r0
    addc    r30, r30, r3
    adde    r25, r25, r0
branch_0x8034267c:
    stw     r31, 0x0(r29)
    xoris   r4, r25, 0x8000
    stw     r30, 0xc(r29)
    stw     r25, 0x8(r29)
    lwz     r6, -0x5a40(r13)
    b       branch_0x80342754

branch_0x80342694:
    lwz     r0, 0x8(r6)
    lwz     r5, 0xc(r6)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r30
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x80342750
    lwz     r0, 0x10(r6)
    stw     r0, 0x10(r29)
    stw     r29, 0x10(r6)
    stw     r6, 0x14(r29)
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x803426d8
    stw     r29, 0x14(r3)
    b       branch_0x803427f8

branch_0x803426d8:
    stw     r29, -0x5a40(r13)
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r29)
    li      r7, 0x0
    lwz     r0, 0x8(r29)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x8034271c
    li      r3, 0x0
    bl      PPCMtdec
    b       branch_0x803427f8

branch_0x8034271c:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq-    branch_0x80342744
    mr      r3, r8
    bl      PPCMtdec
    b       branch_0x803427f8

branch_0x80342744:
    subi    r3, r4, 0x1
    bl      PPCMtdec
    b       branch_0x803427f8

branch_0x80342750:
    lwz     r6, 0x14(r6)
branch_0x80342754:
    cmplwi  r6, 0x0
    bne+    branch_0x80342694
    li      r30, 0x0
    stw     r30, 0x14(r29)
    subi    r3, r13, 0x5a40
    lwz     r4, 0x4(r3)
    stwu    r29, 0x4(r3)
    cmplwi  r4, 0x0
    stw     r4, 0x10(r29)
    beq-    branch_0x80342784
    stw     r29, 0x14(r4)
    b       branch_0x803427f8

branch_0x80342784:
    stw     r29, 0x0(r3)
    stw     r29, -0x5a40(r13)
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r29)
    xoris   r5, r30, 0x8000
    lwz     r0, 0x8(r29)
    subfc   r7, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r30, r7
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x803427c8
    li      r3, 0x0
    bl      PPCMtdec
    b       branch_0x803427f8

branch_0x803427c8:
    lis     r4, 0x8000
    xoris   r3, r30, 0x8000
    subfc   r0, r4, r7
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq-    branch_0x803427f0
    mr      r3, r7
    bl      PPCMtdec
    b       branch_0x803427f8

branch_0x803427f0:
    subi    r3, r4, 0x1
    bl      PPCMtdec
branch_0x803427f8:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl OSSetAlarm
OSSetAlarm: # 0x8034280c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    addi    r28, r6, 0x0
    addi    r30, r7, 0x0
    bl      OSDisableInterrupts
    li      r0, 0x0
    stw     r0, 0x1c(r27)
    mr      r31, r3
    stw     r0, 0x18(r27)
    bl      __OSGetSystemTime
    addc    r6, r28, r4
    adde    r5, r29, r3
    addi    r3, r27, 0x0
    addi    r7, r30, 0x0
    bl      InsertAlarm
    mr      r3, r31
    bl      OSRestoreInterrupts
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl OSCancelAlarm
OSCancelAlarm: # 0x80342874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x803428b0
    mr      r3, r31
    bl      OSRestoreInterrupts
    b       branch_0x80342974

branch_0x803428b0:
    lwz     r29, 0x14(r30)
    cmplwi  r29, 0x0
    bne-    branch_0x803428cc
    lwz     r0, 0x10(r30)
    subi    r3, r13, 0x5a40
    stw     r0, 0x4(r3)
    b       branch_0x803428d4

branch_0x803428cc:
    lwz     r0, 0x10(r30)
    stw     r0, 0x10(r29)
branch_0x803428d4:
    lwz     r3, 0x10(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x803428e8
    stw     r29, 0x14(r3)
    b       branch_0x80342964

branch_0x803428e8:
    cmplwi  r29, 0x0
    stw     r29, -0x5a40(r13)
    beq-    branch_0x80342964
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r29)
    li      r7, 0x0
    lwz     r0, 0x8(r29)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80342934
    li      r3, 0x0
    bl      PPCMtdec
    b       branch_0x80342964

branch_0x80342934:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq-    branch_0x8034295c
    mr      r3, r8
    bl      PPCMtdec
    b       branch_0x80342964

branch_0x8034295c:
    subi    r3, r4, 0x1
    bl      PPCMtdec
branch_0x80342964:
    li      r0, 0x0
    stw     r0, 0x0(r30)
    mr      r3, r31
    bl      OSRestoreInterrupts
branch_0x80342974:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl DecrementerExceptionCallback
DecrementerExceptionCallback: # 0x80342990
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2f0(sp)
    stw     r31, 0x2ec(sp)
    stw     r30, 0x2e8(sp)
    stw     r29, 0x2e4(sp)
    mr      r29, r4
    stw     r28, 0x2e0(sp)
    bl      __OSGetSystemTime
    lwz     r0, -0x5a40(r13)
    addi    r28, r4, 0x0
    addi    r30, r3, 0x0
    cmplwi  r0, 0x0
    mr      r31, r0
    bne-    branch_0x803429d4
    mr      r3, r29
    bl      OSLoadContext
branch_0x803429d4:
    lwz     r0, 0x8(r31)
    xoris   r4, r30, 0x8000
    lwz     r5, 0xc(r31)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r28
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x80342a70
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r31)
    li      r7, 0x0
    lwz     r0, 0x8(r31)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80342a38
    li      r3, 0x0
    bl      PPCMtdec
    b       branch_0x80342a68

branch_0x80342a38:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq-    branch_0x80342a60
    mr      r3, r8
    bl      PPCMtdec
    b       branch_0x80342a68

branch_0x80342a60:
    subi    r3, r4, 0x1
    bl      PPCMtdec
branch_0x80342a68:
    mr      r3, r29
    bl      OSLoadContext
branch_0x80342a70:
    lwz     r3, 0x14(r31)
    cmplwi  r3, 0x0
    stw     r3, -0x5a40(r13)
    bne-    branch_0x80342a90
    li      r0, 0x0
    subi    r3, r13, 0x5a40
    stw     r0, 0x4(r3)
    b       branch_0x80342a98

branch_0x80342a90:
    li      r0, 0x0
    stw     r0, 0x10(r3)
branch_0x80342a98:
    lwz     r30, 0x0(r31)
    li      r6, 0x0
    xoris   r4, r6, 0x8000
    stw     r6, 0x0(r31)
    lwz     r0, 0x18(r31)
    lwz     r5, 0x1c(r31)
    xoris   r3, r0, 0x8000
    subfc   r0, r5, r6
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg.    r3, r3
    beq-    branch_0x80342adc
    addi    r3, r31, 0x0
    addi    r7, r30, 0x0
    li      r6, 0x0
    li      r5, 0x0
    bl      InsertAlarm
branch_0x80342adc:
    lwz     r28, -0x5a40(r13)
    cmplwi  r28, 0x0
    beq-    branch_0x80342b58
    bl      __OSGetSystemTime
    lwz     r6, 0xc(r28)
    li      r7, 0x0
    lwz     r0, 0x8(r28)
    xoris   r5, r7, 0x8000
    subfc   r8, r4, r6
    subfe   r0, r3, r0
    xoris   r6, r0, 0x8000
    subfc   r0, r7, r8
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80342b28
    li      r3, 0x0
    bl      PPCMtdec
    b       branch_0x80342b58

branch_0x80342b28:
    lis     r4, 0x8000
    xoris   r3, r7, 0x8000
    subfc   r0, r4, r8
    subfe   r3, r3, r6
    subfe   r3, r6, r6
    neg.    r3, r3
    beq-    branch_0x80342b50
    mr      r3, r8
    bl      PPCMtdec
    b       branch_0x80342b58

branch_0x80342b50:
    subi    r3, r4, 0x1
    bl      PPCMtdec
branch_0x80342b58:
    bl      OSDisableScheduler
    addi    r3, sp, 0x18
    bl      OSClearContext
    addi    r3, sp, 0x18
    bl      OSSetCurrentContext
    addi    r12, r30, 0x0
    mtlr    r12
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    blrl
    addi    r3, sp, 0x18
    bl      OSClearContext
    mr      r3, r29
    bl      OSSetCurrentContext
    bl      OSEnableScheduler
    bl      __OSReschedule
    mr      r3, r29
    bl      OSLoadContext
    lwz     r0, 0x2f4(sp)
    lwz     r31, 0x2ec(sp)
    lwz     r30, 0x2e8(sp)
    lwz     r29, 0x2e4(sp)
    lwz     r28, 0x2e0(sp)
    addi    sp, sp, 0x2f0
    mtlr    r0
    blr


.globl DecrementerExceptionHandler
DecrementerExceptionHandler: # 0x80342bc0
    stw     r0, 0x0(r4)
    stw     sp, 0x4(r4)
    stw     rtoc, 0x8(r4)
    stmw    r6, 0x18(r4)
    mfspr   r0, 913
    stw     r0, 0x1a8(r4)
    mfspr   r0, 914
    stw     r0, 0x1ac(r4)
    mfspr   r0, 915
    stw     r0, 0x1b0(r4)
    mfspr   r0, 916
    stw     r0, 0x1b4(r4)
    mfspr   r0, 917
    stw     r0, 0x1b8(r4)
    mfspr   r0, 918
    stw     r0, 0x1bc(r4)
    mfspr   r0, 919
    stw     r0, 0x1c0(r4)
    stwu    sp, -0x8(sp)
    b       DecrementerExceptionCallback

