
.globl frexp
frexp: # 0x8033c168
    stwu    sp, -0x18(sp)
    lis     r0, unk_7ff00000@h
    addi    r4, r0, unk_7ff00000@l
    stfd    f1, 0x8(sp)
    lwz     r5, 0x8(sp)
    lwz     r8, 0xc(sp)
    clrlwi  r6, r5, 1
    cmpw    r6, r0
    stw     r4, 0x0(r3)
    addi    r7, r5, 0x0
    addi    r4, r6, 0x0
    bge-    branch_0x8033c1a0
    or.     r0, r4, r8
    bne-    branch_0x8033c1a8
branch_0x8033c1a0:
    lfd     f1, 0x8(sp)
    b       branch_0x8033c1fc

branch_0x8033c1a8:
    lis     r0, unk_000fffca@ha
    cmpw    r4, r0
    bge-    branch_0x8033c1d8
    lfd     f1, 0x8(sp)
    addi    r0, r0, unk_000fffca@l
    lfd     f0, 0xa60(r2)
    fmul    f0, f1, f0
    stfd    f0, 0x8(sp)
    lwz     r4, 0x8(sp)
    stw     r0, 0x0(r3)
    addi    r7, r4, 0x0
    clrlwi  r4, r4, 1
branch_0x8033c1d8:
    lwz     r5, 0x0(r3)
    srawi   r4, r4, 20
    rlwinm  r0, r7, 0, 12, 0
    add     r4, r4, r5
    addi    r4, r4, -0x3fe
    stw     r4, 0x0(r3)
    oris    r0, r0, 0x3fe0
    stw     r0, 0x8(sp)
    lfd     f1, 0x8(sp)
branch_0x8033c1fc:
    addi    sp, sp, 0x18
    blr

