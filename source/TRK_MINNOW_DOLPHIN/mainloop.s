
.globl TRKHandleRequestEvent
TRKHandleRequestEvent: # 0x8033d1e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x8(r3)
    bl      TRKGetBuffer
    bl      TRKDispatchMessage
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKHandleSupportEvent
TRKHandleSupportEvent: # 0x8033d208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRKTargetSupportRequest
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKIdle
TRKIdle: # 0x8033d228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRKTargetStopped
    cmpwi   r3, 0x0
    bne-    branch_0x8033d244
    bl      TRKTargetContinue
branch_0x8033d244:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKNubMainLoop
TRKNubMainLoop: # 0x8033d254
    mflr    r0
    lis     r3, gTRKInputPendingPtr@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, gTRKInputPendingPtr@l
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    li      r29, 0x0
    b       branch_0x8033d324

branch_0x8033d280:
    addi    r3, sp, 0x8
    bl      TRKGetNextEvent
    cmpwi   r3, 0x0
    beq-    branch_0x8033d2f8
    lbz     r0, 0x8(sp)
    li      r29, 0x0
    cmpwi   r0, 0x2
    beq-    branch_0x8033d2c4
    bge-    branch_0x8033d2b4
    cmpwi   r0, 0x0
    beq-    branch_0x8033d2ec
    bge-    branch_0x8033d2d0
    b       branch_0x8033d2ec

branch_0x8033d2b4:
    cmpwi   r0, 0x5
    beq-    branch_0x8033d2e4
    bge-    branch_0x8033d2ec
    b       branch_0x8033d2d8

branch_0x8033d2c4:
    addi    r3, sp, 0x8
    bl      TRKHandleRequestEvent
    b       branch_0x8033d2ec

branch_0x8033d2d0:
    li      r30, 0x1
    b       branch_0x8033d2ec

branch_0x8033d2d8:
    addi    r3, sp, 0x8
    bl      TRKTargetInterrupt
    b       branch_0x8033d2ec

branch_0x8033d2e4:
    addi    r3, sp, 0x8
    bl      TRKHandleSupportEvent
branch_0x8033d2ec:
    addi    r3, sp, 0x8
    bl      TRKDestructEvent
    b       branch_0x8033d324

branch_0x8033d2f8:
    cmpwi   r29, 0x0
    beq-    branch_0x8033d310
    lwz     r3, 0x0(r31)
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8033d31c
branch_0x8033d310:
    li      r29, 0x1
    bl      TRKGetInput
    b       branch_0x8033d324

branch_0x8033d31c:
    bl      TRKIdle
    li      r29, 0x0
branch_0x8033d324:
    cmpwi   r30, 0x0
    beq+    branch_0x8033d280
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

