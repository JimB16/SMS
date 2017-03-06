
.globl __dt__7TBinderFv
__dt__7TBinderFv: # 0x80224110
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80224144
    lis     r3, 0x803e
    subi    r3, r3, 0x5a68
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x80224144
    mr      r3, r31
    bl      __dl__FPv
branch_0x80224144:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__7TBinderFv
__ct__7TBinderFv: # 0x8022415c
    lis     r4, 0x803e
    subi    r0, r4, 0x5a68
    stw     r0, 0x0(r3)
    blr

