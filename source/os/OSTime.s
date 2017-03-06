
.globl OSGetTime
OSGetTime: # 0x803494d8
    mftb    r3, 269
    mftb    r4, 268
    mftb    r5, 269
    cmpw    r3, r5
    bne+    OSGetTime
    blr


.globl OSGetTick
OSGetTick: # 0x803494f0
    mftb    r3, 268
    blr


.globl __OSGetSystemTime
__OSGetSystemTime: # 0x803494f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      OSGetTime
    lis     r6, 0x8000
    lwz     r5, 0x30dc(r6)
    lwz     r0, 0x30d8(r6)
    addc    r29, r5, r4
    adde    r30, r0, r3
    mr      r3, r31
    bl      OSRestoreInterrupts
    mr      r4, r29
    mr      r3, r30
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GetDates
GetDates: # 0x8034955c
    lis     r5, 0x9249
    addi    r0, r5, 0x2493
    addi    r7, r3, 0x6
    mulhw   r6, r0, r7
    lis     r5, 0xb38d
    subi    r0, r5, 0x64f
    mulhw   r0, r0, r3
    add     r5, r6, r7
    srawi   r5, r5, 2
    srwi    r6, r5, 31
    add     r5, r5, r6
    add     r0, r0, r3
    mulli   r6, r5, 0x7
    srawi   r0, r0, 8
    srwi    r5, r0, 31
    add     r5, r0, r5
    subf    r0, r6, r7
    mulli   r11, r5, 0x16d
    stw     r0, 0x18(r4)
    b       branch_0x803495ac

branch_0x803495ac:
    lis     r6, 0x51ec
    subi    r10, r6, 0x7ae1
    b       branch_0x803495b8

branch_0x803495b8:
    b       branch_0x803495c4

branch_0x803495bc:
    subi    r11, r11, 0x16d
    subi    r5, r5, 0x1
branch_0x803495c4:
    cmpwi   r5, 0x1
    bge-    branch_0x803495d4
    li      r0, 0x0
    b       branch_0x80349608

branch_0x803495d4:
    subi    r0, r5, 0x1
    mulhw   r0, r10, r0
    srawi   r8, r0, 7
    srawi   r6, r0, 5
    addi    r0, r5, 0x3
    srwi    r7, r6, 31
    srawi   r0, r0, 2
    srwi    r9, r8, 31
    add     r6, r6, r7
    addze   r0, r0
    add     r7, r8, r9
    subf    r0, r6, r0
    add     r0, r7, r0
branch_0x80349608:
    add     r0, r11, r0
    cmpw    r3, r0
    blt+    branch_0x803495bc
    srawi   r6, r5, 2
    stw     r5, 0x14(r4)
    addze   r6, r6
    slwi    r6, r6, 2
    subfc   r6, r6, r5
    subf    r0, r0, r3
    cmpwi   r6, 0x0
    stw     r0, 0x1c(r4)
    li      r7, 0x1
    li      r8, 0x0
    bne-    branch_0x8034966c
    lis     r3, 0x51ec
    subi    r3, r3, 0x7ae1
    mulhw   r3, r3, r5
    srawi   r3, r3, 5
    srwi    r6, r3, 31
    add     r3, r3, r6
    mulli   r3, r3, 0x64
    subf    r3, r3, r5
    cmpwi   r3, 0x0
    beq-    branch_0x8034966c
    mr      r8, r7
branch_0x8034966c:
    cmpwi   r8, 0x0
    bne-    branch_0x803496a0
    lis     r3, 0x51ec
    subi    r3, r3, 0x7ae1
    mulhw   r3, r3, r5
    srawi   r3, r3, 7
    srwi    r6, r3, 31
    add     r3, r3, r6
    mulli   r3, r3, 0x190
    subf    r3, r3, r5
    cmpwi   r3, 0x0
    beq-    branch_0x803496a0
    li      r7, 0x0
branch_0x803496a0:
    cmpwi   r7, 0x0
    beq-    branch_0x803496b4
    lis     r3, 0x803f
    subi    r6, r3, 0x7e40
    b       branch_0x803496bc

branch_0x803496b4:
    lis     r3, 0x803f
    subi    r6, r3, 0x7e70
branch_0x803496bc:
    li      r7, 0xc
    li      r3, 0x30
    b       branch_0x803496c8

branch_0x803496c8:
    b       branch_0x803496cc

branch_0x803496cc:
    subi    r3, r3, 0x4
    lwzx    r5, r6, r3
    subi    r7, r7, 0x1
    cmpw    r0, r5
    blt+    branch_0x803496cc
    stw     r7, 0x10(r4)
    lwzx    r3, r6, r3
    subf    r3, r3, r0
    addi    r0, r3, 0x1
    stw     r0, 0xc(r4)
    blr


.globl OSTicksToCalendarTime
OSTicksToCalendarTime: # 0x803496f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    mr      r29, r3
    mr      r30, r4
    mr      r31, r5
    lis     r27, 0x8000
    lwz     r0, 0xf8(r27)
    mr      r3, r29
    mr      r4, r30
    srwi    r6, r0, 2
    li      r5, 0x0
    bl      __mod2i
    mr      r26, r3
    li      r5, 0x0
    mr      r25, r4
    xoris   r4, r26, 0x8000
    xoris   r3, r5, 0x8000
    subfc   r0, r5, r25
    subfe   r3, r3, r4
    subfe   r3, r4, r4
    neg     r3, r3
    cmpwi   r3, 0x0
    beq-    branch_0x8034976c
    lwz     r0, 0xf8(r27)
    srwi    r0, r0, 2
    addc    r25, r25, r0
    adde    r26, r26, r5
branch_0x8034976c:
    li      r4, 0x8
    mullw   r3, r26, r4
    mulhwu  r0, r25, r4
    lis     r27, 0x8000
    lwz     r6, 0xf8(r27)
    lis     r5, 0x431c
    subi    r5, r5, 0x217d
    srwi    r6, r6, 2
    mulhwu  r5, r5, r6
    srwi    r6, r5, 15
    li      r28, 0x0
    add     r3, r3, r0
    mullw   r0, r25, r28
    mullw   r4, r25, r4
    add     r3, r3, r0
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x3e8
    bl      __mod2i
    stw     r4, 0x24(r31)
    lis     r3, 0x1062
    addi    r5, r3, 0x4dd3
    lwz     r0, 0xf8(r27)
    mr      r3, r26
    mr      r4, r25
    srwi    r0, r0, 2
    mulhwu  r0, r5, r0
    srwi    r6, r0, 6
    li      r5, 0x0
    bl      __div2i
    li      r5, 0x0
    li      r6, 0x3e8
    bl      __mod2i
    stw     r4, 0x20(r31)
    subfc   r30, r25, r30
    subfe   r29, r26, r29
    lwz     r0, 0xf8(r27)
    lis     r5, 0x1
    addi    r25, r5, 0x5180
    mr      r3, r29
    srwi    r6, r0, 2
    mr      r4, r30
    li      r5, 0x0
    bl      __div2i
    mr      r6, r25
    li      r5, 0x0
    bl      __div2i
    lis     r5, 0xb
    lwz     r0, 0xf8(r27)
    addi    r5, r5, 0x2575
    addc    r26, r4, r5
    srwi    r6, r0, 2
    adde    r0, r3, r28
    mr      r3, r29
    mr      r4, r30
    li      r5, 0x0
    bl      __div2i
    mr      r6, r25
    li      r5, 0x0
    bl      __mod2i
    mr      r27, r4
    cmpwi   r27, 0x0
    bge-    branch_0x80349878
    addis   r27, r27, 0x1
    subi    r26, r26, 0x1
    addi    r27, r27, 0x5180
branch_0x80349878:
    mr      r3, r26
    mr      r4, r31
    bl      GetDates
    lis     r3, 0x8889
    subi    r5, r3, 0x7777
    mulhw   r0, r5, r27
    add     r4, r0, r27
    srawi   r0, r4, 5
    srwi    r3, r0, 31
    add     r7, r0, r3
    mulhw   r0, r5, r7
    add     r0, r0, r7
    srawi   r5, r0, 5
    srawi   r0, r0, 5
    srwi    r3, r0, 31
    add     r3, r0, r3
    srawi   r0, r4, 5
    srwi    r6, r5, 31
    mulli   r4, r3, 0x3c
    srwi    r3, r0, 31
    add     r5, r5, r6
    add     r0, r0, r3
    stw     r5, 0x8(r31)
    mulli   r0, r0, 0x3c
    subf    r3, r4, r7
    stw     r3, 0x4(r31)
    subf    r0, r0, r27
    stw     r0, 0x0(r31)
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

