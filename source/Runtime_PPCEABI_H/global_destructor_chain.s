
.globl __destroy_global_chain
__destroy_global_chain: # 0x80337dc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    b       branch_0x80337dec

branch_0x80337dd0:
    lwz     r0, 0x0(r3)
    li      r4, -0x1
    stw     r0, R13Off_m0x5aa8(r13)
    lwz     r12, 0x4(r3)
    lwz     r3, 0x8(r3)
    mtlr    r12
    blrl
branch_0x80337dec:
    lwz     r3, R13Off_m0x5aa8(r13)
    cmplwi  r3, 0x0
    bne+    branch_0x80337dd0
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __register_global_object
__register_global_object: # 0x80337e08
    lwz     r0, R13Off_m0x5aa8(r13)
    stw     r0, 0x0(r5)
    stw     r4, 0x4(r5)
    stw     r3, 0x8(r5)
    stw     r5, R13Off_m0x5aa8(r13)
    blr

