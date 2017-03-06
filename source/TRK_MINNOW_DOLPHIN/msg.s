
.globl TRKMessageSend
TRKMessageSend: # 0x8033d738
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x8(r3)
    addi    r3, r3, 0x10
    bl      TRKWriteUARTN
    addi    sp, sp, 0x8
    lwz     r0, 0x4(sp)
    mtlr    r0
    blr

