
.globl SMSGetNpcInitData__FUl
SMSGetNpcInitData__FUl: # 0x80210d3c
    lis     r4, sAllNpcInitData_1622@ha
    slwi    r3, r3, 2
    addi    r0, r4, sAllNpcInitData_1622@l
    add     r3, r0, r3
    lwz     r3, 0x0(r3)
    blr


.globl __sinit_NpcInitData_cpp
__sinit_NpcInitData_cpp: # 0x80210d54
    lis     r3, sMareMB_FishingRodData@ha
    lwz     r0, R13Off_m0x77b8(r13)
    addi    r4, r3, sMareMB_FishingRodData@l
    stw     r0, 0x0(r4)
    lis     r3, 0x803e
    stw     r0, -0x6b2c(r3)
    blr

