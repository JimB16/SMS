
.globl __flush_buffer
__flush_buffer: # 0x80338e38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    mr      r30, r4
    lwz     r3, 0x18(r3)
    lwz     r0, 0x20(r31)
    subf.   r0, r3, r0
    beq-    branch_0x80338eb8
    stw     r0, 0x24(r31)
    lbz     r0, 0x5(r31)
    extrwi. r0, r0, 1, 28
    lwz     r12, 0x3c(r31)
    addi    r5, r31, 0x24
    lwz     r3, 0x0(r31)
    mtlr    r12
    lwz     r4, 0x18(r31)
    lwz     r6, 0x44(r31)
    blrl
    cmplwi  r30, 0x0
    beq-    branch_0x80338e9c
    lwz     r0, 0x24(r31)
    stw     r0, 0x0(r30)
branch_0x80338e9c:
    cmpwi   r3, 0x0
    beq-    branch_0x80338ea8
    b       branch_0x80338eec

branch_0x80338ea8:
    lwz     r3, 0x14(r31)
    lwz     r0, 0x24(r31)
    add     r0, r3, r0
    stw     r0, 0x14(r31)
branch_0x80338eb8:
    lwz     r0, 0x18(r31)
    li      r3, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(r31)
    stw     r0, 0x24(r31)
    lwz     r5, 0x14(r31)
    lwz     r4, 0x28(r31)
    lwz     r0, 0x24(r31)
    and     r4, r5, r4
    subf    r0, r4, r0
    stw     r0, 0x24(r31)
    lwz     r0, 0x14(r31)
    stw     r0, 0x30(r31)
branch_0x80338eec:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __prep_buffer
__prep_buffer: # 0x80338f04
    lwz     r0, 0x18(r3)
    stw     r0, 0x20(r3)
    lwz     r0, 0x1c(r3)
    stw     r0, 0x24(r3)
    lwz     r5, 0x14(r3)
    lwz     r4, 0x28(r3)
    lwz     r0, 0x24(r3)
    and     r4, r5, r4
    subf    r0, r4, r0
    stw     r0, 0x24(r3)
    lwz     r0, 0x14(r3)
    stw     r0, 0x30(r3)
    blr

