
.globl resetCallback__Q28JASystem6KernelFv
resetCallback__Q28JASystem6KernelFv: # 0x80316bac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x5bcc(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x80316c10
    lwz     r0, R13Off_m0x73f0(r13)
    li      r5, 0x0
    lwz     r4, R13Off_m0x5b30(r13)
    mulli   r3, r0, 0xc
    bl      __nwa__FUlP7JKRHeapi
    li      r4, 0x0
    stw     r3, R13Off_m0x5bd0(r13)
    addi    r5, r4, 0x0
    li      r6, 0x0
    b       branch_0x80316bfc

branch_0x80316bec:
    lwz     r3, R13Off_m0x5bd0(r13)
    addi    r6, r6, 0x1
    stwx    r5, r3, r4
    addi    r4, r4, 0xc
branch_0x80316bfc:
    lwz     r0, R13Off_m0x73f0(r13)
    cmplw   r6, r0
    blt+    branch_0x80316bec
    li      r0, 0x1
    stb     r0, R13Off_m0x5bcc(r13)
branch_0x80316c10:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl registerSubframeCallback__Q28JASystem6KernelFPFPv_lPv
registerSubframeCallback__Q28JASystem6KernelFPFPv_lPv: # 0x80316c20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x5bcc(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80316c40
    li      r3, -0x1
    b       branch_0x80316c68

branch_0x80316c40:
    bl      registerAiCallback__Q28JASystem6KernelFPFPv_lPv
    cmpwi   r3, -0x1
    bne-    branch_0x80316c54
    li      r3, -0x1
    b       branch_0x80316c68

branch_0x80316c54:
    mulli   r0, r3, 0xc
    lwz     r4, R13Off_m0x5bd0(r13)
    add     r4, r4, r0
    li      r0, 0x1
    stw     r0, 0x8(r4)
branch_0x80316c68:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl registerAiCallback__Q28JASystem6KernelFPFPv_lPv
registerAiCallback__Q28JASystem6KernelFPFPv_lPv: # 0x80316c78
    lbz     r7, R13Off_m0x5bcc(r13)
    cmplwi  r7, 0x0
    bne-    branch_0x80316c8c
    li      r3, -0x1
    blr

branch_0x80316c8c:
    lwz     r6, R13Off_m0x73f0(r13)
    li      r9, 0x0
    lwz     r8, R13Off_m0x5bd0(r13)
    li      r5, 0x0
    cmplwi  r6, 0x0
    mtctr   r6
    ble-    branch_0x80316cc0
branch_0x80316ca8:
    lwzx    r0, r8, r5
    cmplwi  r0, 0x0
    beq-    branch_0x80316cc0
    addi    r9, r9, 0x1
    addi    r5, r5, 0xc
    bdnz+      branch_0x80316ca8
branch_0x80316cc0:
    cmplw   r9, r6
    bne-    branch_0x80316cd0
    li      r3, -0x1
    blr

branch_0x80316cd0:
    cmplwi  r7, 0x0
    bne-    branch_0x80316ce0
    li      r6, -0x1
    b       branch_0x80316d24

branch_0x80316ce0:
    cmplwi  r6, 0x0
    mtctr   r6
    li      r6, 0x0
    li      r5, 0x0
    ble-    branch_0x80316d20
branch_0x80316cf4:
    add     r7, r8, r5
    lwz     r0, 0x0(r7)
    cmplw   r0, r3
    bne-    branch_0x80316d14
    lwz     r0, 0x4(r7)
    cmplw   r0, r4
    bne-    branch_0x80316d14
    b       branch_0x80316d24

branch_0x80316d14:
    addi    r6, r6, 0x1
    addi    r5, r5, 0xc
    bdnz+      branch_0x80316cf4
branch_0x80316d20:
    li      r6, -0x1
branch_0x80316d24:
    cmpwi   r6, -0x1
    beq-    branch_0x80316d34
    li      r3, -0x1
    blr

branch_0x80316d34:
    mulli   r7, r9, 0xc
    stwx    r3, r8, r7
    li      r5, 0x0
    addi    r3, r9, 0x0
    lwz     r0, R13Off_m0x5bd0(r13)
    add     r6, r0, r7
    stw     r4, 0x4(r6)
    lwz     r0, R13Off_m0x5bd0(r13)
    add     r4, r0, r7
    stw     r5, 0x8(r4)
    blr


.globl aiCallback__Q28JASystem6KernelFv
aiCallback__Q28JASystem6KernelFv: # 0x80316d60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    lbz     r0, R13Off_m0x5bcc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80316de4
    li      r31, 0x0
    addi    r30, r31, 0x0
    li      r29, 0x0
    b       branch_0x80316dd8

branch_0x80316d94:
    lwz     r0, R13Off_m0x5bd0(r13)
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80316dd0
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80316dd0
    lwz     r3, 0x4(r3)
    mtlr    r12
    blrl
    cmpwi   r3, -0x1
    bne-    branch_0x80316dd0
    lwz     r3, R13Off_m0x5bd0(r13)
    stwx    r30, r3, r31
branch_0x80316dd0:
    addi    r29, r29, 0x1
    addi    r31, r31, 0xc
branch_0x80316dd8:
    lwz     r0, R13Off_m0x73f0(r13)
    cmplw   r29, r0
    blt+    branch_0x80316d94
branch_0x80316de4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    blr


.globl subframeCallback__Q28JASystem6KernelFv
subframeCallback__Q28JASystem6KernelFv: # 0x80316e00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    lbz     r0, R13Off_m0x5bcc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80316e84
    li      r31, 0x0
    addi    r30, r31, 0x0
    li      r29, 0x0
    b       branch_0x80316e78

branch_0x80316e34:
    lwz     r0, R13Off_m0x5bd0(r13)
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80316e70
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80316e70
    lwz     r3, 0x4(r3)
    mtlr    r12
    blrl
    cmpwi   r3, -0x1
    bne-    branch_0x80316e70
    lwz     r3, R13Off_m0x5bd0(r13)
    stwx    r30, r3, r31
branch_0x80316e70:
    addi    r29, r29, 0x1
    addi    r31, r31, 0xc
branch_0x80316e78:
    lwz     r0, R13Off_m0x73f0(r13)
    cmplw   r29, r0
    blt+    branch_0x80316e34
branch_0x80316e84:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    blr

