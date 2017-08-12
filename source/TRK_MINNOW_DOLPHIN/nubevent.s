
.globl TRKInitializeEventQueue
TRKInitializeEventQueue: # 0x8033d348
    mflr    r0
    lis     r3, gTRKEventQueue@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, gTRKEventQueue@l
    addi    r3, r31, 0x0
    bl      TRKInitializeMutex
    mr      r3, r31
    bl      TRKAcquireMutex
    li      r3, 0x0
    stw     r3, 0x4(r31)
    li      r0, 0x100
    stw     r3, 0x8(r31)
    mr      r3, r31
    stw     r0, 0x24(r31)
    bl      TRKReleaseMutex
    li      r3, 0x0
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKCopyEvent
TRKCopyEvent: # 0x8033d3a4
    mflr    r0
    li      r5, 0xc
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRK_memcpy
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKGetNextEvent
TRKGetNextEvent: # 0x8033d3c8
    mflr    r0
    lis     r4, gTRKEventQueue@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, gTRKEventQueue@l
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    li      r29, 0x0
    stw     r28, 0x8(sp)
    addi    r28, r3, 0x0
    addi    r3, r31, 0x0
    bl      TRKAcquireMutex
    addi    r30, r31, 0x4
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8033d458
    addi    r29, r31, 0x8
    lwz     r0, 0x8(r31)
    addi    r3, r28, 0x0
    mulli   r0, r0, 0xc
    add     r4, r31, r0
    addi    r4, r4, 0xc
    bl      TRKCopyEvent
    lwz     r3, 0x0(r30)
    addi    r0, r3, -0x1
    stw     r0, 0x0(r30)
    lwz     r3, 0x0(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r29)
    lwz     r0, 0x0(r29)
    cmpwi   r0, 0x2
    bne-    branch_0x8033d454
    li      r0, 0x0
    stw     r0, 0x0(r29)
branch_0x8033d454:
    li      r29, 0x1
branch_0x8033d458:
    lis     r3, gTRKEventQueue@h
    addi    r3, r3, gTRKEventQueue@l
    bl      TRKReleaseMutex
    mr      r3, r29
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKPostEvent
TRKPostEvent: # 0x8033d488
    mflr    r0
    lis     r4, gTRKEventQueue@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r4, gTRKEventQueue@l
    addi    r3, r30, 0x0
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)
    li      r28, 0x0
    bl      TRKAcquireMutex
    addi    r29, r30, 0x4
    lwz     r3, 0x4(r30)
    cmpwi   r3, 0x2
    bne-    branch_0x8033d4d4
    li      r28, 0x100
    b       branch_0x8033d538

branch_0x8033d4d4:
    lwz     r0, 0x8(r30)
    addi    r4, r31, 0x0
    add     r0, r0, r3
    srawi   r3, r0, 1
    addze   r3, r3
    slwi    r3, r3, 1
    subfc   r3, r3, r0
    mulli   r0, r3, 0xc
    add     r31, r30, r0
    addi    r3, r31, 0xc
    bl      TRKCopyEvent
    addi    r4, r30, 0x24
    lwz     r0, 0x24(r30)
    stw     r0, 0x10(r31)
    lwz     r3, 0x24(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x24(r30)
    lwz     r0, 0x24(r30)
    cmplwi  r0, 0x100
    bge-    branch_0x8033d52c
    li      r0, 0x100
    stw     r0, 0x0(r4)
branch_0x8033d52c:
    lwz     r3, 0x0(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r29)
branch_0x8033d538:
    lis     r3, gTRKEventQueue@h
    addi    r3, r3, gTRKEventQueue@l
    bl      TRKReleaseMutex
    mr      r3, r28
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKConstructEvent
TRKConstructEvent: # 0x8033d568
    stb     r4, 0x0(r3)
    li      r4, 0x0
    li      r0, -0x1
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    blr


.globl TRKDestructEvent
TRKDestructEvent: # 0x8033d580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x8(r3)
    bl      TRKReleaseBuffer
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

