
.globl srand
srand: # 0x8033b19c
    stw     r3, R13Off_m0x7390(r13)
    blr


.globl rand
rand: # 0x8033b1a4
    lis     r3, unk_41c64e6d@h
    lwz     r4, R13Off_m0x7390(r13)
    addi    r0, r3, unk_41c64e6d@l
    mullw   r3, r4, r0
    addi    r0, r3, 0x3039
    stw     r0, R13Off_m0x7390(r13)
    lwz     r0, R13Off_m0x7390(r13)
    extrwi  r3, r0, 15, 1
    blr

