
.globl DCEnable
DCEnable: # 0x80343648
    sync
    mfspr   r3, 1008
    ori     r3, r3, 0x4000
    mtspr   1008, r3
    blr


.globl DCInvalidateRange
DCInvalidateRange: # 0x8034365c
    cmplwi  r4, 0x0
    blelr-    

    clrlwi. r5, r3, 27
    beq-    branch_0x80343670
    addi    r4, r4, 0x20
branch_0x80343670:
    addi    r4, r4, 0x1f
    srwi    r4, r4, 5
    mtctr   r4
branch_0x8034367c:
    dcbi    r0, r3
    addi    r3, r3, 0x20
    bdnz+      branch_0x8034367c
    blr


.globl DCFlushRange
DCFlushRange: # 0x8034368c
    cmplwi  r4, 0x0
    blelr-    

    clrlwi. r5, r3, 27
    beq-    branch_0x803436a0
    addi    r4, r4, 0x20
branch_0x803436a0:
    addi    r4, r4, 0x1f
    srwi    r4, r4, 5
    mtctr   r4
branch_0x803436ac:
    dcbf    r0, r3
    addi    r3, r3, 0x20
    bdnz+      branch_0x803436ac
    sc
    blr


.globl DCStoreRange
DCStoreRange: # 0x803436c0
    cmplwi  r4, 0x0
    blelr-    

    clrlwi. r5, r3, 27
    beq-    branch_0x803436d4
    addi    r4, r4, 0x20
branch_0x803436d4:
    addi    r4, r4, 0x1f
    srwi    r4, r4, 5
    mtctr   r4
branch_0x803436e0:
    dcbst   r0, r3
    addi    r3, r3, 0x20
    bdnz+      branch_0x803436e0
    sc
    blr


.globl DCFlushRangeNoSync
DCFlushRangeNoSync: # 0x803436f4
    cmplwi  r4, 0x0
    blelr-    

    clrlwi. r5, r3, 27
    beq-    branch_0x80343708
    addi    r4, r4, 0x20
branch_0x80343708:
    addi    r4, r4, 0x1f
    srwi    r4, r4, 5
    mtctr   r4
branch_0x80343714:
    dcbf    r0, r3
    addi    r3, r3, 0x20
    bdnz+      branch_0x80343714
    blr


.globl DCZeroRange
DCZeroRange: # 0x80343724
    cmplwi  r4, 0x0
    blelr-    

    clrlwi. r5, r3, 27
    beq-    branch_0x80343738
    addi    r4, r4, 0x20
branch_0x80343738:
    addi    r4, r4, 0x1f
    srwi    r4, r4, 5
    mtctr   r4
branch_0x80343744:
    dcbz    r0, r3
    addi    r3, r3, 0x20
    bdnz+      branch_0x80343744
    blr


.globl ICInvalidateRange
ICInvalidateRange: # 0x80343754
    cmplwi  r4, 0x0
    blelr-    

    clrlwi. r5, r3, 27
    beq-    branch_0x80343768
    addi    r4, r4, 0x20
branch_0x80343768:
    addi    r4, r4, 0x1f
    srwi    r4, r4, 5
    mtctr   r4
branch_0x80343774:
    icbi    r0, r3
    addi    r3, r3, 0x20
    bdnz+      branch_0x80343774
    sync
    isync
    blr


.globl ICFlashInvalidate
ICFlashInvalidate: # 0x8034378c
    mfspr   r3, 1008
    ori     r3, r3, 0x800
    mtspr   1008, r3
    blr


.globl ICEnable
ICEnable: # 0x8034379c
    isync
    mfspr   r3, 1008
    ori     r3, r3, 0x8000
    mtspr   1008, r3
    blr


.globl __LCEnable
__LCEnable: # 0x803437b0
    mfmsr   r5
    ori     r5, r5, 0x1000
    mtmsr   r5
    lis     r3, unk_80000020@h
    li      r4, 0x400
    mtctr   r4
branch_0x803437c8:
    dcbt    r0, r3
    dcbst   r0, r3
    addi    r3, r3, unk_80000020@l
    bdnz+      branch_0x803437c8
    mfspr   r4, 920
    oris    r4, r4, 0x100f
    mtspr   920, r4
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    lis     r3, unk_e0000002@h
    ori     r3, r3, unk_e0000002@l
    mtspr   543, r3
    ori     r3, r3, 0x1fe
    mtspr   542, r3
    isync
    lis     r3, unk_e0000020@h
    li      r6, 0x200
    mtctr   r6
    li      r6, 0x0
branch_0x8034383c:
    dcbz_l  r6, r3
    addi    r3, r3, unk_e0000020@l
    bdnz+      branch_0x8034383c
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    ori     r0, r0, 0x0
    blr


.globl LCEnable
LCEnable: # 0x8034387c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    mr      r31, r3
    bl      __LCEnable
    mr      r3, r31
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl LCDisable
LCDisable: # 0x803438b4
    lis     r3, unk_e0000020@h
    li      r4, 0x200
    mtctr   r4
branch_0x803438c0:
    dcbi    r0, r3
    addi    r3, r3, unk_e0000020@l
    bdnz+      branch_0x803438c0
    mfspr   r4, 920
    rlwinm  r4, r4, 0, 4, 2
    mtspr   920, r4
    blr


.globl LCStoreBlocks
LCStoreBlocks: # 0x803438dc
    extrwi  r6, r5, 5, 25
    clrlwi  r3, r3, 4
    or      r6, r6, r3
    mtspr   922, r6
    clrlslwi  r6, r5, 30, 2
    or      r6, r6, r4
    ori     r6, r6, 0x2
    mtspr   923, r6
    blr


.globl LCStoreData
LCStoreData: # 0x80343900
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    mr      r28, r3
    mr      r29, r4
    addi    r0, r5, 0x1f
    srwi    r3, r0, 5
    addi    r0, r3, 0x7f
    mr      r31, r3
    srwi    r30, r0, 7
    b       branch_0x8034393c

branch_0x8034393c:
    b       branch_0x80343940

branch_0x80343940:
    b       branch_0x80343980

branch_0x80343944:
    cmplwi  r31, 0x80
    bge-    branch_0x80343964
    mr      r3, r28
    mr      r4, r29
    mr      r5, r31
    bl      LCStoreBlocks
    li      r31, 0x0
    b       branch_0x80343980

branch_0x80343964:
    mr      r3, r28
    mr      r4, r29
    li      r5, 0x0
    bl      LCStoreBlocks
    addi    r31, r31, -0x80
    addi    r28, r28, 0x1000
    addi    r29, r29, 0x1000
branch_0x80343980:
    cmplwi  r31, 0x0
    bne+    branch_0x80343944
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl LCQueueWait
LCQueueWait: # 0x803439ac
    addi    r3, r3, 0x1
branch_0x803439b0:
    mfspr   r4, 920
    extrwi  r4, r4, 4, 4
    cmpw    cr2, r4, r3
    bge+    cr2, branch_0x803439b0
    blr


.globl L2GlobalInvalidate
L2GlobalInvalidate: # 0x803439c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    sync
    bl      PPCMfl2cr
    clrlwi  r3, r3, 1
    bl      PPCMtl2cr
    sync
    bl      PPCMfl2cr
    oris    r3, r3, 0x20
    bl      PPCMtl2cr
    b       branch_0x803439f8

branch_0x803439f8:
    b       branch_0x803439fc

branch_0x803439fc:
    bl      PPCMfl2cr
    clrlwi  r0, r3, 31
    cmplwi  r0, 0x0
    bne+    branch_0x803439fc
    bl      PPCMfl2cr
    rlwinm  r3, r3, 0, 11, 9
    bl      PPCMtl2cr
    b       branch_0x80343a1c

branch_0x80343a1c:
    lis     r3, unk_803e6f18@h
    addi    r31, r3, unk_803e6f18@l
    b       branch_0x80343a28

branch_0x80343a28:
    b       branch_0x80343a38

branch_0x80343a2c:
    mr      r3, r31
    crxor   6, 6, 6
    bl      DBPrintf
branch_0x80343a38:
    bl      PPCMfl2cr
    clrlwi  r0, r3, 31
    cmplwi  r0, 0x0
    bne+    branch_0x80343a2c
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl DMAErrorHandler
DMAErrorHandler: # 0x80343a5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    bne-    cr1, branch_0x80343a98
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x80343a98:
    stw     r3, 0x8(sp)
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    mr      r29, r4
    lis     r3, unk_803e6f18@h
    addi    r31, r3, unk_803e6f18@l
    bl      PPCMfhid2
    mr      r30, r3
    crxor   6, 6, 6
    addi    r3, r31, 0x2c
    bl      OSReport
    lwz     r5, 0x19c(r29)
    mr      r4, r30
    addi    r3, r31, 0x44
    crxor   6, 6, 6
    bl      OSReport
    rlwinm  r0, r30, 0, 8, 11
    cmplwi  r0, 0x0
    beq-    branch_0x80343b08
    lwz     r0, 0x19c(r29)
    rlwinm  r0, r0, 0, 10, 10
    cmplwi  r0, 0x0
    bne-    branch_0x80343b20
branch_0x80343b08:
    addi    r3, r31, 0x60
    crxor   6, 6, 6
    bl      OSReport
    mr      r3, r29
    bl      OSDumpContext
    bl      PPCHalt
branch_0x80343b20:
    addi    r3, r31, 0x90
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r31, 0xcc
    crxor   6, 6, 6
    bl      OSReport
    rlwinm  r0, r30, 0, 8, 8
    cmplwi  r0, 0x0
    beq-    branch_0x80343b50
    addi    r3, r31, 0x104
    crxor   6, 6, 6
    bl      OSReport
branch_0x80343b50:
    rlwinm  r0, r30, 0, 9, 9
    cmplwi  r0, 0x0
    beq-    branch_0x80343b68
    addi    r3, r31, 0x144
    crxor   6, 6, 6
    bl      OSReport
branch_0x80343b68:
    rlwinm  r0, r30, 0, 10, 10
    cmplwi  r0, 0x0
    beq-    branch_0x80343b80
    addi    r3, r31, 0x170
    crxor   6, 6, 6
    bl      OSReport
branch_0x80343b80:
    rlwinm  r0, r30, 0, 11, 11
    cmplwi  r0, 0x0
    beq-    branch_0x80343b98
    addi    r3, r31, 0x190
    crxor   6, 6, 6
    bl      OSReport
branch_0x80343b98:
    mr      r3, r30
    bl      PPCMthid2
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl __OSCacheInit
__OSCacheInit: # 0x80343bbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    lis     r3, unk_803e6f18@h
    addi    r31, r3, unk_803e6f18@l
    bl      PPCMfhid0
    rlwinm  r0, r3, 0, 16, 16
    cmplwi  r0, 0x0
    bne-    branch_0x80343bf8
    bl      ICEnable
    addi    r3, r31, 0x1ac
    crxor   6, 6, 6
    bl      DBPrintf
branch_0x80343bf8:
    bl      PPCMfhid0
    rlwinm  r0, r3, 0, 17, 17
    cmplwi  r0, 0x0
    bne-    branch_0x80343c18
    bl      DCEnable
    addi    r3, r31, 0x1c8
    crxor   6, 6, 6
    bl      DBPrintf
branch_0x80343c18:
    bl      PPCMfl2cr
    clrrwi  r0, r3, 31
    cmplwi  r0, 0x0
    bne-    branch_0x80343c7c
    bl      PPCMfmsr
    mr      r30, r3
    sync
    li      r3, 0x30
    bl      PPCMtmsr
    sync
    sync
    bl      PPCMfl2cr
    clrlwi  r3, r3, 1
    bl      PPCMtl2cr
    sync
    bl      L2GlobalInvalidate
    mr      r3, r30
    bl      PPCMtmsr
    bl      PPCMfl2cr
    oris    r0, r3, 0x8000
    rlwinm  r3, r0, 0, 11, 9
    bl      PPCMtl2cr
    addi    r3, r31, 0x1e4
    crxor   6, 6, 6
    bl      DBPrintf
branch_0x80343c7c:
    lis     r3, DMAErrorHandler@h
    addi    r4, r3, DMAErrorHandler@l
    li      r3, 0x1
    bl      OSSetErrorHandler
    addi    r3, r31, 0x1fc
    crxor   6, 6, 6
    bl      DBPrintf
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

