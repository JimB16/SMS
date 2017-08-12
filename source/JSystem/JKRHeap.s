
.globl __ct__7JKRHeapFPvUlP7JKRHeapb
__ct__7JKRHeapFPvUlP7JKRHeapb: # 0x802c3404
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r31, r7, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11JKRDisposerFv
    lwz     r30, 0x8(sp)
    lis     r3, __vvt__7JKRHeap@ha
    addi    r0, r3, __vvt__7JKRHeap@l
    stw     r0, 0x0(r30)
    addi    r28, r30, 0x3c
    stw     r28, 0x1c(sp)
    lwz     r29, 0x1c(sp)
    mr      r3, r29
    bl      initiate__10JSUPtrListFv
    addi    r3, r29, 0xc
    addi    r4, r30, 0x0
    bl      __ct__10JSUPtrLinkFPv
    addi    r3, r30, 0x58
    bl      initiate__10JSUPtrListFv
    addi    r3, r30, 0x18
    bl      OSInitMutex
    stw     r26, 0x38(r30)
    cmplwi  r27, 0x0
    add     r0, r25, r26
    stw     r25, 0x30(r30)
    stw     r0, 0x34(r30)
    bne-    branch_0x802c349c
    mr      r3, r30
    bl      becomeSystemHeap__7JKRHeapFv
    mr      r3, r30
    bl      becomeCurrentHeap__7JKRHeapFv
    b       branch_0x802c34e4

branch_0x802c349c:
    cmplwi  r28, 0x0
    beq-    branch_0x802c34a8
    addi    r28, r28, 0xc
branch_0x802c34a8:
    addi    r4, r28, 0x0
    addi    r3, r27, 0x3c
    bl      append__10JSUPtrListFP10JSUPtrLink
    lwz     r3, R13Off_m0x5f30(r13)
    lwz     r0, R13Off_m0x5f28(r13)
    cmplw   r3, r0
    bne-    branch_0x802c34cc
    lwz     r3, 0x8(sp)
    bl      becomeSystemHeap__7JKRHeapFv
branch_0x802c34cc:
    lwz     r3, R13Off_m0x5f2c(r13)
    lwz     r0, R13Off_m0x5f28(r13)
    cmplw   r3, r0
    bne-    branch_0x802c34e4
    lwz     r3, 0x8(sp)
    bl      becomeCurrentHeap__7JKRHeapFv
branch_0x802c34e4:
    lwz     r3, 0x8(sp)
    stb     r31, 0x64(r3)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802c3510
    lwz     r0, R13Off_m0x5f24(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c3510
    lis     r4, JKRDefaultMemoryErrorRoutine__FPvUli@h
    addi    r0, r4, JKRDefaultMemoryErrorRoutine__FPvUli@l
    stw     r0, R13Off_m0x5f24(r13)
branch_0x802c3510:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __dt__7JKRHeapFv
__dt__7JKRHeapFv: # 0x802c3524
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28(sp)
    mr.     r30, r3
    beq-    branch_0x802c3620
    lis     r3, __vvt__7JKRHeap@ha
    addi    r0, r3, __vvt__7JKRHeap@l
    stw     r0, 0x0(r30)
    addic.  r0, r30, 0x3c
    addi    r4, r30, 0x3c
    lwz     r3, 0x4c(r30)
    beq-    branch_0x802c3564
    addi    r4, r4, 0xc
branch_0x802c3564:
    bl      remove__10JSUPtrListFP10JSUPtrLink
    lwz     r4, R13Off_m0x5f28(r13)
    lwz     r3, 0x3c(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x802c357c
    addi    r3, r3, -0xc
branch_0x802c357c:
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplw   r0, r30
    bne-    branch_0x802c35a0
    cmplwi  r3, 0x0
    bne-    branch_0x802c3598
    mr      r0, r4
    b       branch_0x802c359c

branch_0x802c3598:
    lwz     r0, 0xc(r3)
branch_0x802c359c:
    stw     r0, R13Off_m0x5f2c(r13)
branch_0x802c35a0:
    lwz     r0, R13Off_m0x5f30(r13)
    cmplw   r0, r30
    bne-    branch_0x802c35c0
    cmplwi  r3, 0x0
    bne-    branch_0x802c35b8
    b       branch_0x802c35bc

branch_0x802c35b8:
    lwz     r4, 0xc(r3)
branch_0x802c35bc:
    stw     r4, R13Off_m0x5f30(r13)
branch_0x802c35c0:
    addic.  r0, r30, 0x58
    beq-    branch_0x802c35d4
    addi    r3, r30, 0x58
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
branch_0x802c35d4:
    addic.  r0, r30, 0x3c
    beq-    branch_0x802c3604
    addic.  r0, r30, 0x48
    beq-    branch_0x802c35f0
    addi    r3, r30, 0x48
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802c35f0:
    addic.  r0, r30, 0x3c
    beq-    branch_0x802c3604
    addi    r3, r30, 0x3c
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
branch_0x802c3604:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x802c3620
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c3620:
    lwz     r0, 0x34(sp)
    mr      r3, r30
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl initArena__7JKRHeapFPPcPUli
initArena__7JKRHeapFPPcPUli: # 0x802c363c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r31, r5, 0x0
    bl      OSGetArenaLo
    mr      r30, r3
    bl      OSGetArenaHi
    addi    r29, r3, 0x0
    cmplw   r30, r29
    bne-    branch_0x802c3678
    li      r3, 0x0
    b       branch_0x802c370c

branch_0x802c3678:
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    bl      OSInitAlloc
    addi    r0, r3, 0x1f
    crxor   6, 6, 6
    clrrwi  r31, r0, 5
    clrrwi  r30, r29, 5
    stw     r31, R13Off_m0x5f1c(r13)
    lis     r7, 0x8000
    stw     r7, R13Off_m0x5f20(r13)
    lis     r3, unk_803a9858@ha
    lwz     r5, R13Off_m0x5f1c(r13)
    addi    r3, r3, unk_803a9858@l
    stw     r31, R13Off_m0x5f18(r13)
    lwz     r4, R13Off_m0x5f20(r13)
    stw     r30, R13Off_m0x5f14(r13)
    lwz     r6, R13Off_m0x5f18(r13)
    lwz     r0, 0x28(r7)
    lwz     r7, R13Off_m0x5f14(r13)
    stw     r0, R13Off_m0x5f10(r13)
    lwz     r8, R13Off_m0x5f10(r13)
    bl      OSReport
    mr      r3, r30
    bl      OSSetArenaLo
    mr      r3, r30
    bl      OSSetArenaHi
    stw     r31, 0x0(r27)
    subf    r0, r31, r30
    lis     r3, unk_803a9868@ha
    crxor   6, 6, 6
    stw     r0, 0x0(r28)
    addi    r3, r3, unk_803a9868@l
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      OSReport
    li      r3, 0x1
branch_0x802c370c:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl becomeSystemHeap__7JKRHeapFv
becomeSystemHeap__7JKRHeapFv: # 0x802c3720
    lwz     r0, R13Off_m0x5f30(r13)
    stw     r3, R13Off_m0x5f30(r13)
    mr      r3, r0
    blr


.globl becomeCurrentHeap__7JKRHeapFv
becomeCurrentHeap__7JKRHeapFv: # 0x802c3730
    lwz     r0, R13Off_m0x5f2c(r13)
    stw     r3, R13Off_m0x5f2c(r13)
    mr      r3, r0
    blr


.globl alloc__7JKRHeapFUliP7JKRHeap
alloc__7JKRHeapFUliP7JKRHeap: # 0x802c3740
    mflr    r0
    addi    r7, r3, 0x0
    stw     r0, 0x4(sp)
    cmplwi  r5, 0x0
    addi    r6, r4, 0x0
    stwu    sp, -0x8(sp)
    li      r3, 0x0
    beq-    branch_0x802c3780
    mr      r3, r5
    lwz     r12, 0x0(r5)
    addi    r4, r7, 0x0
    addi    r5, r6, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802c37a8

branch_0x802c3780:
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c37a8
    mr      r3, r0
    lwz     r12, 0x0(r3)
    addi    r4, r7, 0x0
    addi    r5, r6, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c37a8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl free__7JKRHeapFPvP7JKRHeap
free__7JKRHeapFPvP7JKRHeap: # 0x802c37b8
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x802c37e4
    mr      r3, r31
    bl      findFromRoot__7JKRHeapFPv
    mr.     r4, r3
    beq-    branch_0x802c37fc
branch_0x802c37e4:
    mr      r3, r4
    lwz     r12, 0x0(r4)
    mr      r4, r31
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802c37fc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl freeAll__7JKRHeapFv
freeAll__7JKRHeapFv: # 0x802c3810
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    b       branch_0x802c3840

branch_0x802c3828:
    lwz     r3, 0x0(r3)
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802c3840:
    lwz     r3, 0x58(r31)
    cmplwi  r3, 0x0
    bne+    branch_0x802c3828
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl findFromRoot__7JKRHeapFPv
findFromRoot__7JKRHeapFPv: # 0x802c3860
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5f28(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3888
    mr      r3, r0
    bl      find__7JKRHeapCFPv
    b       branch_0x802c388c

branch_0x802c3888:
    li      r3, 0x0
branch_0x802c388c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl find__7JKRHeapCFPv
find__7JKRHeapCFPv: # 0x802c389c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    addi    r31, r4, 0x0
    mr      r30, r3
    lwz     r0, 0x30(r3)
    cmplw   r0, r31
    bgt-    branch_0x802c3990
    lwz     r0, 0x34(r30)
    cmplw   r31, r0
    bgt-    branch_0x802c3990
    lwz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3988
    lwz     r28, 0x3c(r30)
    cmplwi  r28, 0x0
    beq-    branch_0x802c3980
    addi    r28, r28, -0xc
    b       branch_0x802c3980

branch_0x802c38ec:
    lwz     r27, 0xc(r28)
    lwz     r0, 0x30(r27)
    cmplw   r0, r31
    bgt-    branch_0x802c3960
    lwz     r0, 0x34(r27)
    cmplw   r31, r0
    bgt-    branch_0x802c3960
    lwz     r0, 0x44(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3958
    lwz     r29, 0x3c(r27)
    cmplwi  r29, 0x0
    beq-    branch_0x802c3950
    addi    r29, r29, -0xc
    b       branch_0x802c3950

branch_0x802c3928:
    lwz     r3, 0xc(r29)
    mr      r4, r31
    bl      find__7JKRHeapCFPv
    cmplwi  r3, 0x0
    beq-    branch_0x802c3940
    b       branch_0x802c3964

branch_0x802c3940:
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x802c3950
    addi    r29, r29, -0xc
branch_0x802c3950:
    cmplwi  r29, 0x0
    bne+    branch_0x802c3928
branch_0x802c3958:
    mr      r3, r27
    b       branch_0x802c3964

branch_0x802c3960:
    li      r3, 0x0
branch_0x802c3964:
    cmplwi  r3, 0x0
    beq-    branch_0x802c3970
    b       branch_0x802c3994

branch_0x802c3970:
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x802c3980
    addi    r28, r28, -0xc
branch_0x802c3980:
    cmplwi  r28, 0x0
    bne+    branch_0x802c38ec
branch_0x802c3988:
    mr      r3, r30
    b       branch_0x802c3994

branch_0x802c3990:
    li      r3, 0x0
branch_0x802c3994:
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl dispose_subroutine__7JKRHeapFUlUl
dispose_subroutine__7JKRHeapFUlUl: # 0x802c39a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    li      r31, 0x0
    stw     r30, 0xa0(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x9c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x98(sp)
    mr      r28, r3
    lwz     r6, 0x58(r3)
    b       branch_0x802c3a24

branch_0x802c39dc:
    lwz     r3, 0x0(r6)
    cmplw   r29, r3
    bgt-    branch_0x802c3a1c
    cmplw   r3, r30
    bge-    branch_0x802c3a1c
    lwz     r12, 0x0(r3)
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    cmplwi  r31, 0x0
    bne-    branch_0x802c3a14
    lwz     r6, 0x58(r28)
    b       branch_0x802c3a24

branch_0x802c3a14:
    lwz     r6, 0xc(r31)
    b       branch_0x802c3a24

branch_0x802c3a1c:
    mr      r31, r6
    lwz     r6, 0xc(r6)
branch_0x802c3a24:
    cmplwi  r6, 0x0
    bne+    branch_0x802c39dc
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xa8
    blr


.globl dispose__7JKRHeapFPvUl
dispose__7JKRHeapFPvUl: # 0x802c3a4c
    mflr    r0
    add     r5, r4, r5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      dispose_subroutine__7JKRHeapFUlUl
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl dispose__7JKRHeapFPvPv
dispose__7JKRHeapFPvPv: # 0x802c3a74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      dispose_subroutine__7JKRHeapFUlUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl dispose__7JKRHeapFv
dispose__7JKRHeapFv: # 0x802c3a94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    b       branch_0x802c3ac4

branch_0x802c3aac:
    lwz     r3, 0x0(r3)
    li      r4, -0x1
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802c3ac4:
    lwz     r3, 0x58(r31)
    cmplwi  r3, 0x0
    bne+    branch_0x802c3aac
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl copyMemory__7JKRHeapFPvPvUl
copyMemory__7JKRHeapFPvPvUl: # 0x802c3ae4
    addi    r0, r5, 0x3
    srwi.   r6, r0, 2
    addi    r5, r6, 0x0
    beqlr-    

    srwi.   r0, r5, 3
    mtctr   r0
    beq-    branch_0x802c3b54
branch_0x802c3b00:
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r3)
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r3)
    lwz     r0, 0xc(r4)
    stw     r0, 0xc(r3)
    lwz     r0, 0x10(r4)
    stw     r0, 0x10(r3)
    lwz     r0, 0x14(r4)
    stw     r0, 0x14(r3)
    lwz     r0, 0x18(r4)
    stw     r0, 0x18(r3)
    lwz     r0, 0x1c(r4)
    addi    r4, r4, 0x20
    stw     r0, 0x1c(r3)
    addi    r3, r3, 0x20
    bdnz+      branch_0x802c3b00
    andi.   r5, r5, 0x7
    beqlr-    

branch_0x802c3b54:
    mtctr   r5
branch_0x802c3b58:
    lwz     r0, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r0, 0x0(r3)
    addi    r3, r3, 0x4
    bdnz+      branch_0x802c3b58
    blr


.globl JKRDefaultMemoryErrorRoutine__FPvUli
JKRDefaultMemoryErrorRoutine__FPvUli: # 0x802c3b70
    mflr    r0
    lis     r3, unk_803a9880@ha
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r3, r3, unk_803a9880@l
    stwu    sp, -0x8(sp)
    li      r4, 0x2b6
    addi    r5, r2, R2Off_0x90
    bl      OSPanic
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __nw__FUl
__nw__FUl: # 0x802c3ba4
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    li      r3, 0x0
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3bdc
    mr      r3, r0
    lwz     r12, 0x0(r3)
    li      r5, 0x4
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c3bdc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __nw__FUli
__nw__FUli: # 0x802c3bec
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    li      r3, 0x0
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3c28
    mr      r3, r0
    lwz     r12, 0x0(r3)
    mr      r4, r6
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c3c28:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __nw__FUlP7JKRHeapi
__nw__FUlP7JKRHeapi: # 0x802c3c38
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    cmplwi  r4, 0x0
    li      r3, 0x0
    stwu    sp, -0x8(sp)
    beq-    branch_0x802c3c70
    lwz     r12, 0x0(r4)
    mr      r3, r4
    mr      r4, r6
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802c3c94

branch_0x802c3c70:
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3c94
    mr      r3, r0
    lwz     r12, 0x0(r3)
    mr      r4, r6
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c3c94:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __nwa__FUl
__nwa__FUl: # 0x802c3ca4
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    li      r3, 0x0
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3cdc
    mr      r3, r0
    lwz     r12, 0x0(r3)
    li      r5, 0x4
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c3cdc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __nwa__FUli
__nwa__FUli: # 0x802c3cec
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    addi    r5, r4, 0x0
    li      r3, 0x0
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3d28
    mr      r3, r0
    lwz     r12, 0x0(r3)
    mr      r4, r6
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c3d28:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __nwa__FUlP7JKRHeapi
__nwa__FUlP7JKRHeapi: # 0x802c3d38
    mflr    r0
    addi    r6, r3, 0x0
    stw     r0, 0x4(sp)
    cmplwi  r4, 0x0
    li      r3, 0x0
    stwu    sp, -0x8(sp)
    beq-    branch_0x802c3d70
    lwz     r12, 0x0(r4)
    mr      r3, r4
    mr      r4, r6
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x802c3d94

branch_0x802c3d70:
    lwz     r0, R13Off_m0x5f2c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3d94
    mr      r3, r0
    lwz     r12, 0x0(r3)
    mr      r4, r6
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802c3d94:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dl__FPv
__dl__FPv: # 0x802c3da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x5f28(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3dd4
    mr      r3, r0
    addi    r4, r31, 0x0
    bl      find__7JKRHeapCFPv
    b       branch_0x802c3dd8

branch_0x802c3dd4:
    li      r3, 0x0
branch_0x802c3dd8:
    cmplwi  r3, 0x0
    beq-    branch_0x802c3df4
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802c3df4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dla__FPv
__dla__FPv: # 0x802c3e08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, R13Off_m0x5f28(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802c3e38
    mr      r3, r0
    addi    r4, r31, 0x0
    bl      find__7JKRHeapCFPv
    b       branch_0x802c3e3c

branch_0x802c3e38:
    li      r3, 0x0
branch_0x802c3e3c:
    cmplwi  r3, 0x0
    beq-    branch_0x802c3e58
    lwz     r12, 0x0(r3)
    mr      r4, r31
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802c3e58:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl state_register__7JKRHeapCFPQ27JKRHeap6TStateUl
state_register__7JKRHeapCFPQ27JKRHeap6TStateUl: # 0x802c3e6c
    blr


.globl state_compare__7JKRHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
state_compare__7JKRHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState: # 0x802c3e70
    lwz     r3, 0x8(r4)
    lwz     r0, 0x8(r5)
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl state_dump__7JKRHeapCFRCQ27JKRHeap6TState
state_dump__7JKRHeapCFRCQ27JKRHeap6TState: # 0x802c3e88
    blr


.globl dump_sort__7JKRHeapFv
dump_sort__7JKRHeapFv: # 0x802c3e8c
    li      r3, 0x1
    blr


.globl changeGroupID__7JKRHeapFUc
changeGroupID__7JKRHeapFUc: # 0x802c3e94
    li      r3, 0x0
    blr


.globl getCurrentGroupId__7JKRHeapFv
getCurrentGroupId__7JKRHeapFv: # 0x802c3e9c
    li      r3, 0x0
    blr

