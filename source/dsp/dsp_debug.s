
.globl __DSP_debug_printf
__DSP_debug_printf: # 0x80353e7c
    stwu    sp, -0x70(sp)
    bne-    cr1, branch_0x80353ea4
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x80353ea4:
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

