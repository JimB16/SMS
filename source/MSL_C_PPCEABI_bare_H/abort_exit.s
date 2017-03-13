
.globl exit
exit: # 0x80338978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r0, -0x5aa0(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80338a14
    lis     r3, 0x8040
    addi    r31, r3, 0x3e0
    b       branch_0x803389c0

branch_0x803389a0:
    lwz     r3, -0x5a9c(r13)
    subi    r3, r3, 0x1
    slwi    r0, r3, 2
    stw     r3, -0x5a9c(r13)
    add     r3, r31, r0
    lwz     r12, 0x0(r3)
    mtlr    r12
    blrl
branch_0x803389c0:
    lwz     r0, -0x5a9c(r13)
    cmpwi   r0, 0x0
    bgt+    branch_0x803389a0
    bl      __destroy_global_chain
    lis     r3, off_80373480@h
    addi    r0, r3, off_80373480@l
    mr      r31, r0
    b       branch_0x803389ec

branch_0x803389e0:
    mtlr    r12
    blrl
    addi    r31, r31, 0x4
branch_0x803389ec:
    lwz     r12, 0x0(r31)
    cmplwi  r12, 0x0
    bne+    branch_0x803389e0
    lwz     r12, -0x5a94(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80338a14
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, -0x5a94(r13)
branch_0x80338a14:
    lis     r3, 0x8040
    addi    r31, r3, 0x4e0
    b       branch_0x80338a40

branch_0x80338a20:
    lwz     r3, -0x5a98(r13)
    subi    r3, r3, 0x1
    slwi    r0, r3, 2
    stw     r3, -0x5a98(r13)
    add     r3, r31, r0
    lwz     r12, 0x0(r3)
    mtlr    r12
    blrl
branch_0x80338a40:
    lwz     r0, -0x5a98(r13)
    cmpwi   r0, 0x0
    bgt+    branch_0x80338a20
    bl      __kill_critical_regions
    lwz     r12, -0x5a90(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80338a6c
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, -0x5a90(r13)
branch_0x80338a6c:
    bl      _ExitProcess
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

