
.globl getIndex__10RumbleTypeFPc
getIndex__10RumbleTypeFPc: # 0x802356b4
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r27, r3, 0x0
    subi    r30, r4, 0x45a8
    li      r28, 0x0
    li      r31, 0x0
    b       branch_0x80235704

branch_0x802356dc:
    add     r29, r30, r31
    lwz     r4, 0x4(r29)
    mr      r3, r27
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802356fc
    lwz     r3, 0x0(r29)
    b       branch_0x80235714

branch_0x802356fc:
    addi    r28, r28, 0x1
    addi    r31, r31, 0x8
branch_0x80235704:
    lwz     r0, -0x75e4(r13)
    cmpw    r28, r0
    blt+    branch_0x802356dc
    li      r3, -0x1
branch_0x80235714:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

