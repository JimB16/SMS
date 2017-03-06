
.globl PushReadedBuffer2
PushReadedBuffer2: # 0x8001fb3c
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x0
    subi    r3, r5, 0x2a60
    stwu    sp, -0x8(sp)
    li      r5, 0x1
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl PopReadedBuffer2
PopReadedBuffer2: # 0x8001fb6c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2a60
    li      r5, 0x1
    stwu    sp, -0x10(sp)
    addi    r4, sp, 0x8
    bl      OSReceiveMessage
    lwz     r0, 0x14(sp)
    lwz     r3, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl PushFreeReadBuffer
PushFreeReadBuffer: # 0x8001fba0
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x0
    subi    r3, r5, 0x2aa0
    stwu    sp, -0x8(sp)
    li      r5, 0x1
    bl      OSSendMessage
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl PopReadedBuffer
PopReadedBuffer: # 0x8001fbd0
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2a80
    li      r5, 0x1
    stwu    sp, -0x10(sp)
    addi    r4, sp, 0x8
    bl      OSReceiveMessage
    lwz     r0, 0x14(sp)
    lwz     r3, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl Reader__FPv
Reader__FPv: # 0x8001fc04
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    subi    r28, r3, 0x3ea0
    lis     r3, 0x803f
    subi    r27, r3, 0x2aa0
    li      r29, 0x0
    lwz     r31, 0xb8(r28)
    lwz     r30, 0xbc(r28)
branch_0x8001fc30:
    addi    r3, r27, 0x0
    addi    r4, sp, 0x14
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r26, 0x14(sp)
    addi    r3, r28, 0x0
    addi    r5, r30, 0x0
    lwz     r4, 0x0(r26)
    addi    r6, r31, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpw    r3, r30
    beq-    branch_0x8001fc8c
    cmpwi   r3, -0x1
    bne-    branch_0x8001fc74
    li      r0, -0x1
    stw     r0, 0xa8(r28)
branch_0x8001fc74:
    cmpwi   r29, 0x0
    bne-    branch_0x8001fc84
    li      r3, 0x0
    bl      PrepareReady__Fi
branch_0x8001fc84:
    addi    r3, r27, 0xd8
    bl      OSSuspendThread
branch_0x8001fc8c:
    stw     r29, 0x4(r26)
    addi    r4, r26, 0x0
    addi    r3, r27, 0x20
    li      r5, 0x1
    bl      OSSendMessage
    lwz     r0, 0xc0(r28)
    add     r31, r31, r30
    lwz     r5, 0x50(r28)
    add     r3, r29, r0
    lwz     r4, 0x0(r26)
    divwu   r0, r3, r5
    lwz     r30, 0x0(r4)
    mullw   r0, r0, r5
    subf    r3, r0, r3
    subi    r0, r5, 0x1
    cmplw   r3, r0
    bne-    branch_0x8001fcec
    lbz     r0, 0xa6(r28)
    clrlwi. r0, r0, 31
    beq-    branch_0x8001fce4
    lwz     r31, 0x64(r28)
    b       branch_0x8001fcec

branch_0x8001fce4:
    addi    r3, r27, 0xd8
    bl      OSSuspendThread
branch_0x8001fcec:
    addi    r29, r29, 0x1
    b       branch_0x8001fc30


.globl ReadThreadCancel
ReadThreadCancel: # 0x8001fcf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x7128(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001fd20
    lis     r3, 0x803f
    subi    r3, r3, 0x29c8
    bl      OSCancelThread
    li      r0, 0x0
    stw     r0, -0x7128(r13)
branch_0x8001fd20:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl ReadThreadStart
ReadThreadStart: # 0x8001fd30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x7128(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8001fd54
    lis     r3, 0x803f
    subi    r3, r3, 0x29c8
    bl      OSResumeThread
branch_0x8001fd54:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CreateReadThread
CreateReadThread: # 0x8001fd64
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    addi    r8, r3, 0x0
    li      r5, 0x0
    stwu    sp, -0x18(sp)
    li      r7, 0x1000
    li      r9, 0x1
    stw     r31, 0x14(sp)
    subi    r31, r4, 0x2aa0
    lis     r4, 0x8002
    subi    r4, r4, 0x3fc
    addi    r3, r31, 0xd8
    addi    r6, r31, 0x13e8
    bl      OSCreateThread
    cmpwi   r3, 0x0
    bne-    branch_0x8001fdb0
    li      r3, 0x0
    b       branch_0x8001fdec

branch_0x8001fdb0:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x60
    li      r5, 0xa
    bl      OSInitMessageQueue
    addi    r3, r31, 0x20
    addi    r4, r31, 0x88
    li      r5, 0xa
    bl      OSInitMessageQueue
    addi    r3, r31, 0x40
    addi    r4, r31, 0xb0
    li      r5, 0xa
    bl      OSInitMessageQueue
    li      r0, 0x1
    stw     r0, -0x7128(r13)
    li      r3, 0x1
branch_0x8001fdec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

