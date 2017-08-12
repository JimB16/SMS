
.globl __OSModuleInit
__OSModuleInit: # 0x80346118
    lis     r4, unk_80000000@h
    li      r0, 0x0
    stw     r0, 0x30cc(r4)
    stw     r0, 0x30c8(r4)
    stw     r0, 0x30d0(r4)
    blr

