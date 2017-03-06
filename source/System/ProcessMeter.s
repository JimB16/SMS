
.globl __ct__13TProcessMeterFl
__ct__13TProcessMeterFl: # 0x802a8d78
    li      r0, 0x28
    stw     r0, 0x0(r3)
    li      r0, 0x1c2
    li      r6, 0x230
    stw     r0, 0x4(r3)
    li      r5, 0x4
    li      r0, 0x0
    stw     r6, 0x8(r3)
    stw     r5, 0xc(r3)
    stw     r4, 0x10(r3)
    lfs     f0, -0x3a0(rtoc)
    stfs    f0, 0x14(r3)
    stfs    f0, 0x18(r3)
    sth     r0, 0x1c(r3)
    sth     r0, 0x1e(r3)
    blr
