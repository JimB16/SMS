
.globl TRKTargetContinue
TRKTargetContinue: # 0x80341a4c
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      TRKTargetSetStopped
    bl      UnreserveEXI2Port
    bl      TRKSwapAndGo
    bl      ReserveEXI2Port
    li      r3, 0x0
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

