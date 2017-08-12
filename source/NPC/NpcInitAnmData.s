
.globl SMSGetNpcInitAnmData__FUl
SMSGetNpcInitAnmData__FUl: # 0x80216138
    lis     r4, sAllNpcInitAnmData_1577@ha
    slwi    r3, r3, 3
    addi    r0, r4, sAllNpcInitAnmData_1577@l
    add     r3, r0, r3
    blr

