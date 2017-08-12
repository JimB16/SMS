
.globl init__Q28JASystem13WaveArcLoaderFv
init__Q28JASystem13WaveArcLoaderFv: # 0x803105dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    addi    r3, sp, 0x8
    bl      allocFromSysAramFull__Q28JASystem6KernelFPUl
    mr.     r4, r3
    bne-    branch_0x80310600
    li      r3, 0x0
    b       branch_0x80310618

branch_0x80310600:
    lis     r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
    lwz     r5, 0x8(sp)
    addi    r3, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
    li      r6, 0x0
    bl      initMotherHeap__Q38JASystem6Kernel5THeapFUlUlUc
    li      r3, 0x1
branch_0x80310618:
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl setCurrentDir__Q28JASystem13WaveArcLoaderFPCc
setCurrentDir__Q28JASystem13WaveArcLoaderFPCc: # 0x80310628
    mflr    r0
    lis     r4, sCurrentDir__Q28JASystem13WaveArcLoader@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, sCurrentDir__Q28JASystem13WaveArcLoader@l
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    bl      strcpy
    mr      r3, r31
    bl      strlen
    add     r4, r31, r3
    lbz     r0, -0x1(r4)
    cmpwi   r0, 0x2f
    beq-    branch_0x80310674
    li      r0, 0x2f
    stbx    r0, r31, r3
    li      r0, 0x0
    stb     r0, 0x1(r4)
branch_0x80310674:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getCurrentDir__Q28JASystem13WaveArcLoaderFv
getCurrentDir__Q28JASystem13WaveArcLoaderFv: # 0x80310688
    lis     r3, sCurrentDir__Q28JASystem13WaveArcLoader@h
    addi    r3, r3, sCurrentDir__Q28JASystem13WaveArcLoader@l
    blr


.globl loadWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
loadWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject: # 0x80310694
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr.     r31, r3
    bne-    branch_0x803106d0
    li      r3, 0x0
    b       branch_0x803107a8

branch_0x803106d0:
    lwz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x803106e4
    li      r3, 0x0
    b       branch_0x803107a8

branch_0x803106e4:
    lis     r3, sCurrentDir__Q28JASystem13WaveArcLoader@h
    addi    r4, r3, sCurrentDir__Q28JASystem13WaveArcLoader@l
    addi    r3, sp, 0x10
    bl      strcpy
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r4, r3, 0x0
    addi    r3, sp, 0x10
    bl      strcat
    addi    r3, sp, 0x10
    bl      checkFileExtend__Q28JASystem3DvdFPc
    mr.     r30, r3
    bne-    branch_0x8031072c
    li      r3, 0x0
    b       branch_0x803107a8

branch_0x8031072c:
    lis     r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
    addi    r4, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    bl      alloc__Q38JASystem6Kernel5THeapFPQ38JASystem6Kernel5THeapUl
    cmplwi  r3, 0x0
    bne-    branch_0x80310750
    li      r3, 0x0
    b       branch_0x803107a8

branch_0x80310750:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x0(r3)
    addi    r8, r3, 0x0
    addi    r7, r30, 0x0
    lwz     r5, 0x8(r31)
    addi    r4, sp, 0x10
    li      r3, 0x0
    li      r6, 0x0
    li      r9, 0x0
    bl      loadToAramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
    cmpwi   r3, -0x1
    bne-    branch_0x803107a4
    mr      r3, r31
    bl      free__Q38JASystem6Kernel5THeapFv
    li      r3, 0x0
    b       branch_0x803107a8

branch_0x803107a4:
    li      r3, 0x1
branch_0x803107a8:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl eraseWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject
eraseWave__Q28JASystem13WaveArcLoaderFPQ38JASystem13WaveArcLoader7TObject: # 0x803107c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr.     r31, r3
    bne-    branch_0x803107fc
    li      r3, 0x0
    b       branch_0x80310838

branch_0x803107fc:
    lwz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80310810
    li      r3, 0x0
    b       branch_0x80310838

branch_0x80310810:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r31
    bl      free__Q38JASystem6Kernel5THeapFv
    li      r3, 0x1
branch_0x80310838:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRootHeap__Q28JASystem13WaveArcLoaderFv
getRootHeap__Q28JASystem13WaveArcLoaderFv: # 0x80310850
    lis     r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
    addi    r3, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
    blr


.globl __sinit_JASWaveArcLoader_cpp
__sinit_JASWaveArcLoader_cpp: # 0x8031085c
    mflr    r0
    lis     r3, sAramHeap__Q28JASystem13WaveArcLoader@ha
    stw     r0, 0x4(sp)
    addi    r3, r3, sAramHeap__Q28JASystem13WaveArcLoader@l
    stwu    sp, -0x8(sp)
    bl      __ct__Q38JASystem6Kernel5THeapFv
    lis     r4, __dt__Q38JASystem6Kernel5THeapFv@ha
    lis     r5, unk_803fd820@ha
    addi    r4, r4, __dt__Q38JASystem6Kernel5THeapFv@l
    addi    r5, r5, unk_803fd820@l
    bl      __register_global_object
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

