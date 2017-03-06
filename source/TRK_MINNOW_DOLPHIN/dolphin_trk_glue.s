
.globl TRKLoadContext
TRKLoadContext: # 0x803416f4
    lwz     r0, 0x0(r3)
    lwz     sp, 0x4(r3)
    lwz     rtoc, 0x8(r3)
    lhz     r5, 0x1a2(r3)
    rlwinm. r6, r5, 0, 30, 30
    beq-    branch_0x8034171c
    rlwinm  r5, r5, 0, 31, 29
    sth     r5, 0x1a2(r3)
    lmw     r5, 0x14(r3)
    b       branch_0x80341720

branch_0x8034171c:
    lmw     r13, 0x34(r3)
branch_0x80341720:
    mr      r31, r3
    mr      r3, r4
    lwz     r4, 0x80(r31)
    mtcrf   255, r4
    lwz     r4, 0x84(r31)
    mtlr    r4
    lwz     r4, 0x88(r31)
    mtctr   r4
    lwz     r4, 0x8c(r31)
    mtxer   r4
    mfmsr   r4
    rlwinm  r4, r4, 0, 17, 15
    rlwinm  r4, r4, 0, 31, 29
    mtmsr   r4
    mtspr   273, rtoc
    lwz     r4, 0xc(r31)
    mtspr   274, r4
    lwz     r4, 0x10(r31)
    mtspr   275, r4
    lwz     rtoc, 0x198(r31)
    lwz     r4, 0x19c(r31)
    lwz     r31, 0x7c(r31)
    b       TRKInterruptHandler


.globl TRKEXICallBack
TRKEXICallBack: # 0x8034177c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    mr      r31, r4
    bl      OSEnableScheduler
    mr      r3, r31
    li      r4, 0x500
    bl      TRKLoadContext
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl InitMetroTRKCommTable
InitMetroTRKCommTable: # 0x803417b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    cmpwi   r3, 0x1
    bne-    branch_0x8034182c
    bl      Hu_IsStub
    lis     r5, 0x8036
    lis     r4, 0x803e
    addi    r0, r5, 0x4024
    addi    r5, r4, 0x6908
    lis     r4, 0x8036
    stw     r0, 0x0(r5)
    addi    r0, r4, 0x3fd0
    lis     r4, 0x8036
    stw     r0, 0x4(r5)
    addi    r0, r4, 0x3f34
    lis     r4, 0x8036
    stw     r0, 0x8(r5)
    addi    r0, r4, 0x3ea8
    lis     r4, 0x8036
    stw     r0, 0xc(r5)
    addi    r0, r4, 0x3c48
    lis     r4, 0x8036
    stw     r0, 0x10(r5)
    addi    r0, r4, 0x3c44
    lis     r4, 0x8036
    stw     r0, 0x14(r5)
    addi    r0, r4, 0x3c40
    stw     r0, 0x18(r5)
    b       branch_0x8034188c

branch_0x8034182c:
    bl      AMC_IsStub
    lis     r5, 0x8036
    lis     r4, 0x803e
    addi    r0, r5, 0x46c0
    addi    r5, r4, 0x6908
    lis     r4, 0x8036
    stw     r0, 0x0(r5)
    addi    r0, r4, 0x46c4
    lis     r4, 0x8036
    stw     r0, 0x4(r5)
    addi    r0, r4, 0x46c8
    lis     r4, 0x8036
    stw     r0, 0x8(r5)
    addi    r0, r4, 0x46d0
    lis     r4, 0x8036
    stw     r0, 0xc(r5)
    addi    r0, r4, 0x46d8
    lis     r4, 0x8036
    stw     r0, 0x10(r5)
    addi    r0, r4, 0x46e0
    lis     r4, 0x8036
    stw     r0, 0x14(r5)
    addi    r0, r4, 0x46e4
    stw     r0, 0x18(r5)
branch_0x8034188c:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKUARTInterruptHandler
TRKUARTInterruptHandler: # 0x8034189c
    blr


.globl TRKInitializeIntDrivenUART
TRKInitializeIntDrivenUART: # 0x803418a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r3, 0x803e
    addi    r3, r3, 0x6908
    lis     r4, 0x8034
    lwz     r12, 0x0(r3)
    addi    r4, r4, 0x177c
    mr      r3, r6
    mtlr    r12
    blrl
    li      r3, 0x0
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl EnableEXI2Interrupts
EnableEXI2Interrupts: # 0x803418e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r3, 0x803e
    addi    r3, r3, 0x6908
    lwz     r12, 0x4(r3)
    mtlr    r12
    blrl
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKPollUART
TRKPollUART: # 0x80341910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r3, 0x803e
    addi    r3, r3, 0x6908
    lwz     r12, 0x8(r3)
    mtlr    r12
    blrl
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKReadUARTN
TRKReadUARTN: # 0x80341940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r5, 0x803e
    addi    r5, r5, 0x6908
    lwz     r12, 0xc(r5)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x80341970
    li      r3, 0x0
    b       branch_0x80341974

branch_0x80341970:
    li      r3, -0x1
branch_0x80341974:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRKWriteUARTN
TRKWriteUARTN: # 0x80341984
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r5, 0x803e
    addi    r5, r5, 0x6908
    lwz     r12, 0x10(r5)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    bne-    branch_0x803419b4
    li      r3, 0x0
    b       branch_0x803419b8

branch_0x803419b4:
    li      r3, -0x1
branch_0x803419b8:
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl ReserveEXI2Port
ReserveEXI2Port: # 0x803419c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r3, 0x803e
    addi    r3, r3, 0x6908
    lwz     r12, 0x14(r3)
    mtlr    r12
    blrl
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl UnreserveEXI2Port
UnreserveEXI2Port: # 0x803419f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lis     r3, 0x803e
    addi    r3, r3, 0x6908
    lwz     r12, 0x18(r3)
    mtlr    r12
    blrl
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr


.globl TRK_board_display
TRK_board_display: # 0x80341a28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    crxor   6, 6, 6
    bl      OSReport
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

