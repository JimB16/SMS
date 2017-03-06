
.globl __init_user
__init_user: # 0x803498fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      __init_cpp
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __init_cpp
__init_cpp: # 0x8034991c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lis     r3, 0x8037
    addi    r0, r3, 0x30c0
    mr      r31, r0
    b       branch_0x8034993c

branch_0x8034993c:
    b       branch_0x80349940

branch_0x80349940:
    b       branch_0x80349950

branch_0x80349944:
    mtlr    r12
    blrl
    addi    r31, r31, 0x4
branch_0x80349950:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    bne+    branch_0x80349944
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _ExitProcess
_ExitProcess: # 0x80349970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      PPCHalt
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

