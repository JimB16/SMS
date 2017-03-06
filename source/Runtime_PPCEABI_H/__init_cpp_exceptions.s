
.globl GetR2__Fv
GetR2__Fv: # 0x803388fc
    mr      r3, rtoc
    blr


.globl __fini_cpp_exceptions
__fini_cpp_exceptions: # 0x80338904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x73a0(r13)
    cmpwi   r3, -0x2
    beq-    branch_0x80338928
    bl      __unregister_fragment
    li      r0, -0x2
    stw     r0, -0x73a0(r13)
branch_0x80338928:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __init_cpp_exceptions
__init_cpp_exceptions: # 0x80338938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x73a0(r13)
    cmpwi   r0, -0x2
    bne-    branch_0x80338968
    bl      GetR2__Fv
    lis     r5, 0x8000
    mr      r4, r3
    addi    r3, r5, 0x55dc
    bl      __register_fragment
    stw     r3, -0x73a0(r13)
branch_0x80338968:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

