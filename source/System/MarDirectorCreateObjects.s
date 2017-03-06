
.globl createObjects__12TMarDirectorFv
createObjects__12TMarDirectorFv: # 0x802b767c
    mflr    r0
    li      r3, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802b76b4
    lis     r4, 0x803e
    addi    r0, r4, 0x2130
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0xec8
    stw     r0, 0x0(r3)
branch_0x802b76b4:
    stw     r3, -0x5db8(r13)
    li      r3, 0x58
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802b76d8
    lis     r3, 0x803b
    subi    r4, r3, 0x7240
    addi    r3, r31, 0x0
    bl      __ct__22TLightWithDBSetManagerFPCc
branch_0x802b76d8:
    stw     r31, -0x610c(r13)
    li      r3, 0x0
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

