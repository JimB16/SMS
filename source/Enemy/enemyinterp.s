
.globl SpcTrace__FPCce
SpcTrace__FPCce: # 0x8003db3c
    stwu    sp, -0x70(sp)
    bne-    cr1, branch_0x8003db64
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x8003db64:
    stw     r3, 0x8(sp)
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    addi    sp, sp, 0x70
    blr


.globl __dt__29TSpcTypedBinary_10TLiveActor_Fv
__dt__29TSpcTypedBinary_10TLiveActor_Fv: # 0x8003db8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8003dbd4
    lis     r3, __vvt__29TSpcTypedBinary_10TLiveActor_@ha
    addi    r0, r3, __vvt__29TSpcTypedBinary_10TLiveActor_@l
    stw     r0, 0x4(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10TSpcBinaryFv
    extsh.  r0, r31
    ble-    branch_0x8003dbd4
    mr      r3, r30
    bl      __dl__FPv
branch_0x8003dbd4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

