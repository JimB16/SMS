
.globl __ct__7J3DNodeFv
__ct__7J3DNodeFv: # 0x802dfa08
    lis     r4, __vvt__7J3DNode@h
    addi    r0, r4, __vvt__7J3DNode@l
    stw     r0, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl __dt__7J3DNodeFv
__dt__7J3DNodeFv: # 0x802dfa2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802dfa60
    lis     r3, __vvt__7J3DNode@h
    addi    r3, r3, __vvt__7J3DNode@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802dfa60
    mr      r3, r31
    bl      __dl__FPv
branch_0x802dfa60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl appendChild__7J3DNodeFP7J3DNode
appendChild__7J3DNodeFP7J3DNode: # 0x802dfa78
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802dfa8c
    stw     r4, 0x10(r3)
    blr

branch_0x802dfa8c:
    mr      r3, r0
    b       branch_0x802dfa98

branch_0x802dfa94:
    mr      r3, r0
branch_0x802dfa98:
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x802dfa94
    stw     r4, 0x14(r3)
    blr

