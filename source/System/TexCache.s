
.globl SMS_ResetTexCacheRegion__Fv
SMS_ResetTexCacheRegion__Fv: # 0x802a57f8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    addi    r4, r3, 0x45dc
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r0, 0x34(r4)
    oris    r0, r0, 0x8000
    stw     r0, 0x34(r4)
    li      r4, 0x1
    bl      setTexCacheRegion__6J3DSysF15_GXTexCacheSize
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

