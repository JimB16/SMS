
.globl __ct__Q28JASystem14TRegisterParamFv
__ct__Q28JASystem14TRegisterParamFv: # 0x80319f34
    li      r0, 0x0
    sth     r0, 0x0(r3)
    sth     r0, 0x2(r3)
    sth     r0, 0x4(r3)
    sth     r0, 0x6(r3)
    sth     r0, 0x8(r3)
    sth     r0, 0xa(r3)
    sth     r0, 0xc(r3)
    sth     r0, 0xe(r3)
    sth     r0, 0x1a(r3)
    sth     r0, 0x10(r3)
    sth     r0, 0x12(r3)
    sth     r0, 0x14(r3)
    sth     r0, 0x16(r3)
    sth     r0, 0x18(r3)
    stw     r0, 0x20(r3)
    stw     r0, 0x24(r3)
    stw     r0, 0x28(r3)
    stw     r0, 0x2c(r3)
    blr


.globl init__Q28JASystem14TRegisterParamFv
init__Q28JASystem14TRegisterParamFv: # 0x80319f84
    li      r9, 0x0
    sth     r9, 0x0(r3)
    li      r8, 0xf0
    li      r7, 0xc
    sth     r9, 0x2(r3)
    li      r6, 0x40
    li      r5, 0x1
    sth     r9, 0x4(r3)
    li      r4, 0x7fff
    li      r0, 0x4000
    sth     r9, 0x6(r3)
    sth     r9, 0x8(r3)
    sth     r9, 0xa(r3)
    sth     r8, 0xc(r3)
    sth     r7, 0xe(r3)
    sth     r6, 0x1a(r3)
    sth     r9, 0x10(r3)
    sth     r5, 0x12(r3)
    sth     r5, 0x14(r3)
    sth     r4, 0x16(r3)
    sth     r0, 0x18(r3)
    stw     r9, 0x20(r3)
    stw     r9, 0x24(r3)
    stw     r9, 0x28(r3)
    stw     r9, 0x2c(r3)
    blr


.globl inherit__Q28JASystem14TRegisterParamFRCQ28JASystem14TRegisterParam
inherit__Q28JASystem14TRegisterParamFRCQ28JASystem14TRegisterParam: # 0x80319fec
    li      r5, 0x0
    sth     r5, 0x0(r3)
    sth     r5, 0x2(r3)
    sth     r5, 0x4(r3)
    sth     r5, 0x6(r3)
    sth     r5, 0x8(r3)
    sth     r5, 0xa(r3)
    lhz     r0, 0xc(r4)
    sth     r0, 0xc(r3)
    lhz     r0, 0xe(r4)
    sth     r0, 0xe(r3)
    lhz     r0, 0x1a(r4)
    sth     r0, 0x1a(r3)
    lhz     r0, 0x10(r4)
    sth     r0, 0x10(r3)
    lhz     r0, 0x12(r4)
    sth     r0, 0x12(r3)
    lhz     r0, 0x14(r4)
    sth     r0, 0x14(r3)
    lhz     r0, 0x16(r4)
    sth     r0, 0x16(r3)
    lhz     r0, 0x18(r4)
    sth     r0, 0x18(r3)
    stw     r5, 0x20(r3)
    stw     r5, 0x24(r3)
    stw     r5, 0x28(r3)
    stw     r5, 0x2c(r3)
    blr


.globl getBankNumber__Q28JASystem14TRegisterParamCFv
getBankNumber__Q28JASystem14TRegisterParamCFv: # 0x8031a05c
    lhz     r0, 0xc(r3)
    srawi   r0, r0, 8
    clrlwi  r3, r0, 24
    blr


.globl getProgramNumber__Q28JASystem14TRegisterParamCFv
getProgramNumber__Q28JASystem14TRegisterParamCFv: # 0x8031a06c
    lhz     r0, 0xc(r3)
    clrlwi  r3, r0, 24
    blr

