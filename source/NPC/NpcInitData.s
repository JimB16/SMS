
.globl SMSGetNpcInitData__FUl
SMSGetNpcInitData__FUl: # 0x80210d3c
    lis     r4, 0x803e
    slwi    r3, r3, 2
    subi    r0, r4, 0x6b00
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    blr


.globl __sinit_NpcInitData_cpp
__sinit_NpcInitData_cpp: # 0x80210d54
    lis     r3, 0x803e
    lwz     r0, -0x77b8(r13)
    subi    r4, r3, 0x6b58
    stw     r0, 0x0(r4)
    lis     r3, 0x803e
    stw     r0, -0x6b2c(r3)
    blr

