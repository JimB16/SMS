
.globl TRKInitializeDispatcher
TRKInitializeDispatcher: # 0x8033e174
    lis     r3, 0x8040
    li      r0, 0x20
    stw     r0, 0x1fd8(r3)
    li      r3, 0x0
    blr


.globl TRKDispatchMessage
TRKDispatchMessage: # 0x8033e188
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x500
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      TRKSetBufferPosition
    addi    r3, r30, 0x0
    addi    r4, sp, 0x8
    bl      TRKReadBuffer1_ui8
    lis     r3, 0x8040
    lbz     r4, 0x8(sp)
    lwz     r0, 0x1fd8(r3)
    cmplw   r4, r0
    bge-    branch_0x8033e1f0
    lis     r3, 0x803e
    slwi    r4, r4, 2
    addi    r0, r3, 0x67d8
    add     r3, r0, r4
    lwz     r12, 0x0(r3)
    addi    r3, r30, 0x0
    mtlr    r12
    blrl
    mr      r31, r3
branch_0x8033e1f0:
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

