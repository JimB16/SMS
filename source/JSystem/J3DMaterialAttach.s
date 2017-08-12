
.globl clear__16J3DMaterialTableFv
clear__16J3DMaterialTableFv: # 0x80321c08
    li      r0, 0x0
    sth     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl __ct__16J3DMaterialTableFv
__ct__16J3DMaterialTableFv: # 0x80321c24
    lis     r4, __vvt__16J3DMaterialTable@h
    addi    r0, r4, __vvt__16J3DMaterialTable@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    sth     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl __dt__16J3DMaterialTableFv
__dt__16J3DMaterialTableFv: # 0x80321c4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80321c80
    lis     r3, __vvt__16J3DMaterialTable@h
    addi    r3, r3, __vvt__16J3DMaterialTable@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x80321c80
    mr      r3, r31
    bl      __dl__FPv
branch_0x80321c80:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

