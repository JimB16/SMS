
.globl TRKInitializeNub
TRKInitializeNub: # 0x8033d5a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    bl      TRKInitializeEndian
    mr.     r30, r3
    bne-    branch_0x8033d5c8
    bl      usr_put_initialize
branch_0x8033d5c8:
    cmpwi   r30, 0x0
    bne-    branch_0x8033d5d8
    bl      TRKInitializeEventQueue
    mr      r30, r3
branch_0x8033d5d8:
    cmpwi   r30, 0x0
    bne-    branch_0x8033d5e8
    bl      TRKInitializeMessageBuffers
    mr      r30, r3
branch_0x8033d5e8:
    cmpwi   r30, 0x0
    bne-    branch_0x8033d5f8
    bl      TRKInitializeDispatcher
    mr      r30, r3
branch_0x8033d5f8:
    cmpwi   r30, 0x0
    bne-    branch_0x8033d63c
    lis     r3, 0x8040
    addi    r31, r3, 0x1fd4
    lis     r3, 0x1
    addi    r6, r31, 0x0
    subi    r3, r3, 0x1f00
    li      r4, 0x1
    li      r5, 0x0
    bl      TRKInitializeIntDrivenUART
    mr      r0, r3
    lwz     r3, 0x0(r31)
    mr      r31, r0
    bl      TRKTargetSetInputPendingPtr
    cmpwi   r31, 0x0
    beq-    branch_0x8033d63c
    mr      r30, r31
branch_0x8033d63c:
    cmpwi   r30, 0x0
    bne-    branch_0x8033d64c
    bl      TRKInitializeSerialHandler
    mr      r30, r3
branch_0x8033d64c:
    cmpwi   r30, 0x0
    bne-    branch_0x8033d65c
    bl      TRKInitializeTarget
    mr      r30, r3
branch_0x8033d65c:
    mr      r3, r30
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKTerminateNub
TRKTerminateNub: # 0x8033d678
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRKTerminateSerialHandler
    li      r3, 0x0
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKNubWelcome
TRKNubWelcome: # 0x8033d69c
    mflr    r0
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x4aa8
    stwu    sp, -0x8(sp)
    bl      TRK_board_display
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKInitializeEndian
TRKInitializeEndian: # 0x8033d6c4
    lis     r3, 0x8040
    stwu    sp, -0x10(sp)
    addi    r5, r3, 0x608
    li      r6, 0x1
    stw     r6, 0x0(r5)
    li      r0, 0x12
    li      r3, 0x34
    stb     r0, 0x8(sp)
    li      r4, 0x56
    li      r0, 0x78
    stb     r3, 0x9(sp)
    li      r3, 0x0
    stb     r4, 0xa(sp)
    stb     r0, 0xb(sp)
    lwz     r4, 0x8(sp)
    addis   r0, r4, 0xedcc
    cmplwi  r0, 0x5678
    bne-    branch_0x8033d714
    stw     r6, 0x0(r5)
    b       branch_0x8033d730

branch_0x8033d714:
    addis   r0, r4, 0x87aa
    cmplwi  r0, 0x3412
    bne-    branch_0x8033d72c
    li      r0, 0x0
    stw     r0, 0x0(r5)
    b       branch_0x8033d730

branch_0x8033d72c:
    li      r3, 0x1
branch_0x8033d730:
    addi    sp, sp, 0x10
    blr

