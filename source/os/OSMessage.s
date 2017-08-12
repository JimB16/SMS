
.globl OSInitMessageQueue
OSInitMessageQueue: # 0x80346130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, unk_80000000@l
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      OSInitThreadQueue
    addi    r3, r29, 0x8
    bl      OSInitThreadQueue
    stw     r30, 0x10(r29)
    li      r0, 0x0
    stw     r31, 0x14(r29)
    stw     r0, 0x18(r29)
    stw     r0, 0x1c(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSSendMessage
OSSendMessage: # 0x80346190
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    bl      OSDisableInterrupts
    addi    r30, r3, 0x0
    clrlwi  r31, r31, 31
    b       branch_0x803461e8

branch_0x803461c8:
    cmpwi   r31, 0x0
    bne-    branch_0x803461e0
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80346238

branch_0x803461e0:
    mr      r3, r28
    bl      OSSleepThread
branch_0x803461e8:
    lwz     r6, 0x14(r28)
    lwz     r4, 0x1c(r28)
    cmpw    r6, r4
    ble+    branch_0x803461c8
    lwz     r0, 0x18(r28)
    addi    r3, r28, 0x8
    lwz     r5, 0x10(r28)
    add     r4, r0, r4
    divw    r0, r4, r6
    mullw   r0, r0, r6
    subf    r0, r0, r4
    slwi    r0, r0, 2
    stwx    r29, r5, r0
    lwz     r4, 0x1c(r28)
    addi    r0, r4, 0x1
    stw     r0, 0x1c(r28)
    bl      OSWakeupThread
    mr      r3, r30
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x80346238:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl OSReceiveMessage
OSReceiveMessage: # 0x80346258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    bl      OSDisableInterrupts
    addi    r29, r3, 0x0
    clrlwi  r30, r30, 31
    b       branch_0x803462b0

branch_0x80346290:
    cmpwi   r30, 0x0
    bne-    branch_0x803462a8
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80346314

branch_0x803462a8:
    addi    r3, r31, 0x8
    bl      OSSleepThread
branch_0x803462b0:
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x0
    beq+    branch_0x80346290
    cmplwi  r28, 0x0
    beq-    branch_0x803462d8
    lwz     r0, 0x18(r31)
    lwz     r3, 0x10(r31)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    stw     r0, 0x0(r28)
branch_0x803462d8:
    lwz     r5, 0x18(r31)
    mr      r3, r31
    lwz     r4, 0x14(r31)
    addi    r5, r5, 0x1
    divw    r0, r5, r4
    mullw   r0, r0, r4
    subf    r0, r0, r5
    stw     r0, 0x18(r31)
    lwz     r4, 0x1c(r31)
    addi    r0, r4, -0x1
    stw     r0, 0x1c(r31)
    bl      OSWakeupThread
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x80346314:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

