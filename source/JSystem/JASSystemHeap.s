
.globl sysDramSetup__Q28JASystem6KernelFP12JKRSolidHeap
sysDramSetup__Q28JASystem6KernelFP12JKRSolidHeap: # 0x803194fc
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    beq-    branch_0x80319518
    stw     r3, R13Off_m0x5b30(r13)
    b       branch_0x80319544

branch_0x80319518:
    lwz     r3, R13Off_m0x73c0(r13)
    li      r4, 0x0
    li      r5, 0x0
    addi    r3, r3, 0x100
    bl      create__10JKRStdHeapFUlP7JKRHeapb
    lwz     r0, R13Off_m0x73c0(r13)
    addi    r4, r3, 0x0
    li      r5, 0x0
    mr      r3, r0
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    stw     r3, R13Off_m0x5b30(r13)
branch_0x80319544:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl allocFromSysDram__Q28JASystem6KernelFUl
allocFromSysDram__Q28JASystem6KernelFUl: # 0x80319554
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      OSDisableInterrupts
    lwz     r4, R13Off_m0x5b30(r13)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      OSRestoreInterrupts
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl sysAramSetup__Q28JASystem6KernelFUl
sysAramSetup__Q28JASystem6KernelFUl: # 0x803195ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    bne-    branch_0x803195c8
    lwz     r31, R13Off_m0x73bc(r13)
branch_0x803195c8:
    bl      ARGetBaseAddress
    stw     r3, R13Off_m0x5b28(r13)
    li      r0, 0x40
    lis     r3, audioAramHeap__Q28JASystem6Kernel@ha
    lwz     r6, R13Off_m0x5b28(r13)
    addi    r3, r3, audioAramHeap__Q28JASystem6Kernel@l
    stw     r0, R13Off_m0x5b24(r13)
    addis   r5, r6, 0x1
    addis   r4, r6, 0x1
    stw     r6, R13Off_m0x5b2c(r13)
    addi    r0, r5, -0x4000
    subf    r5, r0, r31
    addi    r4, r4, -0x4000
    bl      init__Q38JASystem6Kernel10TSolidHeapFPUcl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl allocFromSysAramFull__Q28JASystem6KernelFPUl
allocFromSysAramFull__Q28JASystem6KernelFPUl: # 0x80319614
    mflr    r0
    lis     r4, audioAramHeap__Q28JASystem6Kernel@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, audioAramHeap__Q28JASystem6Kernel@l
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r3, r30, 0x0
    bl      getRemain__Q38JASystem6Kernel10TSolidHeapFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, -0x20
    bl      alloc__Q38JASystem6Kernel10TSolidHeapFl
    addi    r0, r31, -0x20
    stw     r0, 0x0(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl __sinit_JASSystemHeap_cpp
__sinit_JASSystemHeap_cpp: # 0x80319674
    mflr    r0
    lis     r3, audioAramHeap__Q28JASystem6Kernel@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, audioAramHeap__Q28JASystem6Kernel@l
    stwu    sp, -0x8(sp)
    bl      __ct__Q38JASystem6Kernel10TSolidHeapFv
    lis     r4, __dt__Q38JASystem6Kernel10TSolidHeapFv@ha
    lis     r5, unk_803fdf90@ha
    addi    r4, r4, __dt__Q38JASystem6Kernel10TSolidHeapFv@l
    addi    r5, r5, unk_803fdf90@l
    bl      __register_global_object
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

