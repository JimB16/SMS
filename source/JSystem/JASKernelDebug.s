
.globl stackInit__Q28JASystem6KernelFPUxUl
stackInit__Q28JASystem6KernelFPUxUl: # 0x80319424
    cmplwi  r4, 0x1
    li      r9, 0x1
    li      r5, 0x8
    blelr-    

    addi    r0, r4, -0x1
    cmplwi  r0, 0x8
    addi    r8, r4, -0x8
    ble-    branch_0x803194b8
    addi    r0, r8, 0x6
    srwi    r0, r0, 3
    lis     r7, unk_12345678@h
    mtctr   r0
    lis     r6, unk_fadebabe@ha
    cmplwi  r8, 0x1
    addi    r7, r7, unk_12345678@l
    addi    r0, r6, unk_fadebabe@l
    ble-    branch_0x803194b8
branch_0x80319468:
    add     r6, r3, r5
    stw     r7, 0x4(r6)
    addi    r9, r9, 0x8
    addi    r5, r5, 0x40
    stw     r0, 0x0(r6)
    stw     r7, 0xc(r6)
    stw     r0, 0x8(r6)
    stw     r7, 0x14(r6)
    stw     r0, 0x10(r6)
    stw     r7, 0x1c(r6)
    stw     r0, 0x18(r6)
    stw     r7, 0x24(r6)
    stw     r0, 0x20(r6)
    stw     r7, 0x2c(r6)
    stw     r0, 0x28(r6)
    stw     r7, 0x34(r6)
    stw     r0, 0x30(r6)
    stw     r7, 0x3c(r6)
    stw     r0, 0x38(r6)
    bdnz+      branch_0x80319468
branch_0x803194b8:
    subf    r0, r9, r4
    lis     r6, unk_12345678@h
    mtctr   r0
    lis     r5, unk_fadebabe@ha
    cmplw   r9, r4
    addi    r6, r6, unk_12345678@l
    addi    r0, r5, unk_fadebabe@l
    slwi    r4, r9, 3
    bgelr-    

branch_0x803194dc:
    add     r5, r3, r4
    stw     r6, 0x4(r5)
    addi    r4, r4, 0x8
    stw     r0, 0x0(r5)
    bdnz+      branch_0x803194dc
    blr

