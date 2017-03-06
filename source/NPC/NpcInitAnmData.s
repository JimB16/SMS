
.globl SMSGetNpcInitAnmData__FUl
SMSGetNpcInitAnmData__FUl: # 0x80216138
    lis     r4, 0x803a
    slwi    r3, r3, 3
    subi    r0, r4, 0x3148
    add     r3, r0, r3
    blr

