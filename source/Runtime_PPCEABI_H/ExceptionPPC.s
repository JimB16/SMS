
.globl __unregister_fragment
__unregister_fragment: # 0x8033822c
    cmpwi   r3, 0x0
    blt-    branch_0x8033825c
    cmpwi   r3, 0x1
    bge-    branch_0x8033825c
    mulli   r4, r3, 0xc
    lis     r3, 0x8040
    addi    r0, r3, 0x3d0
    add     r3, r0, r4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
branch_0x8033825c:
    blr


.globl __register_fragment
__register_fragment: # 0x80338260
    lis     r5, 0x8040
    addi    r5, r5, 0x3d0
    b       branch_0x8033826c

branch_0x8033826c:
    b       branch_0x80338270

branch_0x80338270:
    lwz     r0, 0x8(r5)
    cmpwi   r0, 0x0
    bne-    branch_0x80338294
    stw     r3, 0x0(r5)
    li      r0, 0x1
    li      r3, 0x0
    stw     r4, 0x4(r5)
    stw     r0, 0x8(r5)
    b       branch_0x80338298

branch_0x80338294:
    li      r3, -0x1
branch_0x80338298:
    blr

