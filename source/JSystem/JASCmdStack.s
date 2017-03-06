
.globl __ct__Q38JASystem6Kernel8TPortCmdFv
__ct__Q38JASystem6Kernel8TPortCmdFv: # 0x80316ea0
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    blr


.globl addPortCmdOnce__Q38JASystem6Kernel8TPortCmdFv
addPortCmdOnce__Q38JASystem6Kernel8TPortCmdFv: # 0x80316eb8
    mflr    r0
    subi    r4, r13, 0x5bc8
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      addPortCmd__Q38JASystem6Kernel8TPortCmdFPQ38JASystem6Kernel9TPortHead
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPortCmd__Q38JASystem6Kernel8TPortCmdFPFPQ38JASystem6Kernel9TPortArgs_vPQ38JASystem6Kernel9TPortArgs
setPortCmd__Q38JASystem6Kernel8TPortCmdFPFPQ38JASystem6Kernel9TPortArgs_vPQ38JASystem6Kernel9TPortArgs: # 0x80316edc
    stw     r4, 0x8(r3)
    li      r0, 0x0
    stw     r5, 0xc(r3)
    stw     r0, 0x0(r3)
    li      r3, 0x1
    blr


.globl addPortCmd__Q38JASystem6Kernel8TPortCmdFPQ38JASystem6Kernel9TPortHead
addPortCmd__Q38JASystem6Kernel8TPortCmdFPQ38JASystem6Kernel9TPortHead: # 0x80316ef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      OSDisableInterrupts
    lwz     r0, 0x0(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80316f2c
    bl      OSRestoreInterrupts
    li      r3, 0x0
    b       branch_0x80316f5c

branch_0x80316f2c:
    lwz     r4, 0x4(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80316f40
    stw     r30, 0x4(r4)
    b       branch_0x80316f44

branch_0x80316f40:
    stw     r30, 0x0(r31)
branch_0x80316f44:
    stw     r30, 0x4(r31)
    li      r0, 0x0
    stw     r0, 0x4(r30)
    stw     r31, 0x0(r30)
    bl      OSRestoreInterrupts
    li      r3, 0x1
branch_0x80316f5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl portCmdInit__Q28JASystem6KernelFv
portCmdInit__Q28JASystem6KernelFv: # 0x80316f74
    mflr    r0
    lis     r3, 0x8031
    stw     r0, 0x4(sp)
    li      r0, 0x0
    subi    r4, r13, 0x5bc8
    stwu    sp, -0x8(sp)
    subi    r5, r13, 0x5bc0
    addi    r3, r3, 0x6ffc
    stw     r0, -0x5bc8(r13)
    stw     r0, 0x4(r4)
    li      r4, 0x0
    stw     r0, -0x5bc0(r13)
    stw     r0, 0x4(r5)
    bl      registerAiCallback__Q28JASystem6KernelFPFPv_lPv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getPortCmd__Q28JASystem6KernelFPQ38JASystem6Kernel9TPortHead
getPortCmd__Q28JASystem6KernelFPQ38JASystem6Kernel9TPortHead: # 0x80316fbc
    lwz     r4, 0x0(r3)
    li      r5, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x80316ff4
    lwz     r0, 0x4(r4)
    mr      r5, r4
    stw     r0, 0x0(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80316fec
    li      r0, 0x0
    stw     r0, 0x4(r3)
branch_0x80316fec:
    li      r0, 0x0
    stw     r0, 0x0(r4)
branch_0x80316ff4:
    mr      r3, r5
    blr


.globl portCmdMain__Q28JASystem6KernelFPv
portCmdMain__Q28JASystem6KernelFPv: # 0x80316ffc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
branch_0x8031700c:
    subi    r3, r13, 0x5bc8
    bl      getPortCmd__Q28JASystem6KernelFPQ38JASystem6Kernel9TPortHead
    cmplwi  r3, 0x0
    beq-    branch_0x80317030
    lwz     r12, 0x8(r3)
    lwz     r3, 0xc(r3)
    mtlr    r12
    blrl
    b       branch_0x8031700c

branch_0x80317030:
    lwz     r31, -0x5bc0(r13)
branch_0x80317034:
    cmplwi  r31, 0x0
    beq-    branch_0x80317054
    lwz     r12, 0x8(r31)
    lwz     r3, 0xc(r31)
    mtlr    r12
    blrl
    lwz     r31, 0x4(r31)
    b       branch_0x80317034

branch_0x80317054:
    lwz     r0, 0x4c(sp)
    li      r3, 0x0
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr

