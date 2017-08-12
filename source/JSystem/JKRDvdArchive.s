
.globl __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection
__ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection: # 0x802c00f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x3
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__13JKRDvdArchive@ha
    addi    r0, r3, __vvt__13JKRDvdArchive@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    stw     r30, 0x5c(r31)
    bl      open__13JKRDvdArchiveFl
    lis     r3, unk_52415243@h
    addi    r0, r3, unk_52415243@l
    stw     r0, 0x2c(r31)
    lis     r3, sVolumeList__13JKRFileLoader@h
    addi    r3, r3, sVolumeList__13JKRFileLoader@l
    lwz     r5, 0x48(r31)
    addi    r4, r31, 0x18
    lwz     r6, 0x50(r31)
    lwz     r0, 0x4(r5)
    add     r0, r6, r0
    stw     r0, 0x28(r31)
    bl      prepend__10JSUPtrListFP10JSUPtrLink
    li      r0, 0x1
    stb     r0, 0x30(r31)
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__13JKRDvdArchiveFv
__dt__13JKRDvdArchiveFv: # 0x802c0198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr.     r30, r3
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    beq-    branch_0x802c027c
    lis     r3, __vvt__13JKRDvdArchive@ha
    addi    r0, r3, __vvt__13JKRDvdArchive@l
    stw     r0, 0x0(r30)
    lbz     r0, 0x30(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x802c0260
    lwz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802c0224
    lwz     r29, 0x4c(r30)
    li      r28, 0x0
    b       branch_0x802c020c

branch_0x802c01f0:
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802c0204
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802c0204:
    addi    r29, r29, 0x14
    addi    r28, r28, 0x1
branch_0x802c020c:
    lwz     r3, 0x44(r30)
    lwz     r0, 0x8(r3)
    cmplw   r28, r0
    blt+    branch_0x802c01f0
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802c0224:
    lwz     r3, 0x64(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802c0248
    beq-    branch_0x802c0248
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802c0248:
    lis     r3, sVolumeList__13JKRFileLoader@h
    addi    r3, r3, sVolumeList__13JKRFileLoader@l
    addi    r4, r30, 0x18
    bl      remove__10JSUPtrListFP10JSUPtrLink
    li      r0, 0x0
    stb     r0, 0x30(r30)
branch_0x802c0260:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JKRArchiveFv
    extsh.  r0, r31
    ble-    branch_0x802c027c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c027c:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl open__13JKRDvdArchiveFl
open__13JKRDvdArchiveFl: # 0x802c02a0
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r0, 0x44(r3)
    li      r3, 0xf8
    stw     r0, 0x60(r31)
    stw     r0, 0x48(r31)
    stw     r0, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r4, R13Off_m0x5f30(r13)
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802c02f8
    mr      r4, r29
    bl      __ct__10JKRDvdFileFl
branch_0x802c02f8:
    stw     r3, 0x64(r31)
    lwz     r0, 0x64(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802c0318
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    li      r3, 0x0
    b       branch_0x802c047c

branch_0x802c0318:
    lwz     r3, R13Off_m0x5f30(r13)
    li      r4, 0x20
    li      r5, 0x20
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    bne-    branch_0x802c034c
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802c0414

branch_0x802c034c:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r10, r31, 0x58
    li      r5, 0x1
    li      r6, 0x20
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lwz     r0, 0x5c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x802c0384
    li      r0, 0x20
    b       branch_0x802c0388

branch_0x802c0384:
    li      r0, -0x20
branch_0x802c0388:
    lwz     r3, 0xc(r30)
    mr      r4, r0
    lwz     r5, 0x38(r31)
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x44(r31)
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802c03b4
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802c0414

branch_0x802c03b4:
    lwz     r6, 0xc(r30)
    addi    r3, r29, 0x0
    li      r5, 0x1
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x20
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lwz     r3, 0x44(r31)
    lwz     r0, 0x4(r3)
    add     r0, r3, r0
    stw     r0, 0x48(r31)
    lwz     r3, 0x44(r31)
    lwz     r0, 0xc(r3)
    add     r0, r3, r0
    stw     r0, 0x4c(r31)
    lwz     r3, 0x44(r31)
    lwz     r0, 0x14(r3)
    add     r0, r3, r0
    stw     r0, 0x50(r31)
    lwz     r3, 0x8(r30)
    lwz     r0, 0xc(r30)
    add     r0, r3, r0
    stw     r0, 0x60(r31)
branch_0x802c0414:
    cmplwi  r30, 0x0
    beq-    branch_0x802c0434
    lwz     r3, R13Off_m0x5f30(r13)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802c0434:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802c0464
    lwz     r3, 0x64(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802c0464
    beq-    branch_0x802c0464
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802c0464:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802c0478
    li      r3, 0x0
    b       branch_0x802c047c

branch_0x802c0478:
    li      r3, 0x1
branch_0x802c047c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl fetchResource__13JKRDvdArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRDvdArchiveFPQ210JKRArchive12SDIFileEntryPUl: # 0x802c0498
    mflr    r0
    addi    r8, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r4
    lwz     r0, 0x10(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802c052c
    lwz     r0, 0x4(r30)
    srwi    r3, r0, 24
    rlwinm. r0, r0, 8, 29, 29
    bne-    branch_0x802c04dc
    li      r7, 0x0
    b       branch_0x802c04f0

branch_0x802c04dc:
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x802c04ec
    li      r7, 0x2
    b       branch_0x802c04f0

branch_0x802c04ec:
    li      r7, 0x1
branch_0x802c04f0:
    lwz     r4, 0x60(r8)
    addi    r9, sp, 0x14
    lwz     r0, 0x8(r30)
    lwz     r3, 0x40(r8)
    lwz     r6, 0x38(r8)
    add     r4, r4, r0
    lwz     r5, 0xc(r30)
    lwz     r8, 0x58(r8)
    bl      fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc
    cmplwi  r31, 0x0
    beq-    branch_0x802c0520
    stw     r3, 0x0(r31)
branch_0x802c0520:
    lwz     r0, 0x14(sp)
    stw     r0, 0x10(r30)
    b       branch_0x802c053c

branch_0x802c052c:
    cmplwi  r31, 0x0
    beq-    branch_0x802c053c
    lwz     r0, 0xc(r30)
    stw     r0, 0x0(r31)
branch_0x802c053c:
    lwz     r0, 0x24(sp)
    lwz     r3, 0x10(r30)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    blr


.globl fetchResource__13JKRDvdArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRDvdArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl: # 0x802c0558
    mflr    r0
    clrrwi  r10, r5, 5
    stw     r0, 0x4(sp)
    addi    r11, r3, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    lwz     r9, 0xc(r6)
    addi    r0, r9, 0x1f
    clrrwi  r0, r0, 5
    cmplw   r0, r10
    mr      r31, r0
    ble-    branch_0x802c059c
    mr      r31, r10
branch_0x802c059c:
    lwz     r4, 0x10(r6)
    cmplwi  r4, 0x0
    bne-    branch_0x802c0604
    lwz     r0, 0x4(r6)
    srwi    r3, r0, 24
    rlwinm. r0, r0, 8, 29, 29
    bne-    branch_0x802c05c0
    li      r3, 0x0
    b       branch_0x802c05d4

branch_0x802c05c0:
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x802c05d0
    li      r3, 0x2
    b       branch_0x802c05d4

branch_0x802c05d0:
    li      r3, 0x1
branch_0x802c05d4:
    lwz     r0, 0x8(r6)
    mr      r8, r3
    lwz     r4, 0x60(r11)
    mr      r5, r9
    lwz     r3, 0x40(r11)
    lwz     r9, 0x58(r11)
    addi    r6, r29, 0x0
    addi    r7, r10, 0x0
    add     r4, r4, r0
    bl      fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
    mr      r31, r3
    b       branch_0x802c0610

branch_0x802c0604:
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    bl      copyMemory__7JKRHeapFPvPvUl
branch_0x802c0610:
    cmplwi  r30, 0x0
    beq-    branch_0x802c061c
    stw     r31, 0x0(r30)
branch_0x802c061c:
    lwz     r0, 0x34(sp)
    mr      r3, r29
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii: # 0x802c063c
    mflr    r0
    cmpwi   r9, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r5, 0x0
    lis     r5, unk_803a9448@ha
    addi    r0, r26, 0x1f
    addi    r5, r5, unk_803a9448@l
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r6, 0x0
    clrrwi  r27, r0, 5
    clrrwi  r31, r7, 5
    beq-    branch_0x802c07d8
    bge-    branch_0x802c0688
    cmpwi   r9, 0x0
    bge-    branch_0x802c0694
    b       branch_0x802c07f4

branch_0x802c0688:
    cmpwi   r9, 0x3
    bge-    branch_0x802c07f4
    b       branch_0x802c07a0

branch_0x802c0694:
    cmpwi   r8, 0x0
    beq-    branch_0x802c06ac
    blt-    branch_0x802c07a0
    cmpwi   r8, 0x3
    bge-    branch_0x802c07a0
    b       branch_0x802c06e4

branch_0x802c06ac:
    cmplw   r27, r31
    ble-    branch_0x802c06b8
    mr      r27, r31
branch_0x802c06b8:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r6, r27, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r3, r27
    b       branch_0x802c080c

branch_0x802c06e4:
    lwz     r3, R13Off_m0x5f30(r13)
    li      r4, 0x20
    li      r5, 0x20
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x2
    li      r6, 0x20
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lwz     r3, R13Off_m0x5f30(r13)
    mr      r4, r27
    lbz     r0, 0x5(r27)
    lwz     r12, 0x0(r3)
    lbz     r5, 0x4(r27)
    slwi    r0, r0, 16
    lwz     r12, 0x10(r12)
    lbz     r6, 0x6(r27)
    insrwi  r0, r5, 8, 0
    lbz     r7, 0x7(r27)
    mtlr    r12
    insrwi  r0, r6, 8, 16
    or      r27, r7, r0
    blrl
    addi    r0, r27, 0x1f
    clrrwi  r0, r0, 5
    cmplw   r0, r31
    mr      r6, r0
    ble-    branch_0x802c0778
    mr      r6, r31
branch_0x802c0778:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r3, r27
    b       branch_0x802c080c

branch_0x802c07a0:
    cmplw   r26, r31
    ble-    branch_0x802c07ac
    mr      r26, r31
branch_0x802c07ac:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r6, r26, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x1
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    mr      r3, r26
    b       branch_0x802c080c

branch_0x802c07d8:
    addi    r3, r5, 0x0
    crxor   6, 6, 6
    addi    r5, r5, 0x14
    li      r4, 0x215
    bl      OSPanic
    li      r3, 0x0
    b       branch_0x802c080c

branch_0x802c07f4:
    addi    r3, r5, 0x0
    crxor   6, 6, 6
    addi    r5, r5, 0x3c
    li      r4, 0x21e
    bl      OSPanic
    li      r3, 0x0
branch_0x802c080c:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc
fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc: # 0x802c0820
    mflr    r0
    cmpwi   r8, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r25, r5, 0x0
    lis     r5, unk_803a9448@ha
    addi    r0, r25, 0x1f
    addi    r5, r5, unk_803a9448@l
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r6, 0x0
    addi    r31, r9, 0x0
    clrrwi  r26, r0, 5
    beq-    branch_0x802c09c4
    bge-    branch_0x802c086c
    cmpwi   r8, 0x0
    bge-    branch_0x802c0878
    b       branch_0x802c09e0

branch_0x802c086c:
    cmpwi   r8, 0x3
    bge-    branch_0x802c09e0
    b       branch_0x802c0980

branch_0x802c0878:
    cmpwi   r7, 0x0
    beq-    branch_0x802c0890
    blt-    branch_0x802c0980
    cmpwi   r7, 0x3
    bge-    branch_0x802c0980
    b       branch_0x802c08d4

branch_0x802c0890:
    addi    r3, r26, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    addi    r6, r26, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r27, 0x0(r31)
    mr      r3, r26
    b       branch_0x802c09f8

branch_0x802c08d4:
    addi    r5, r30, 0x0
    li      r3, 0x20
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r26, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x2
    li      r6, 0x20
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lbz     r0, 0x5(r26)
    mr      r3, r26
    lbz     r5, 0x4(r26)
    mr      r4, r30
    slwi    r0, r0, 16
    lbz     r6, 0x6(r26)
    insrwi  r0, r5, 8, 0
    lbz     r7, 0x7(r26)
    insrwi  r0, r6, 8, 16
    or      r27, r7, r0
    addi    r26, r27, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    addi    r3, r26, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r30, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r6, r26, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x1
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r30, 0x0(r31)
    mr      r3, r27
    b       branch_0x802c09f8

branch_0x802c0980:
    addi    r3, r26, 0x0
    addi    r5, r30, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    addi    r6, r25, 0x0
    addi    r9, r29, 0x0
    li      r5, 0x1
    li      r7, 0x0
    li      r8, 0x1
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r27, 0x0(r31)
    mr      r3, r26
    b       branch_0x802c09f8

branch_0x802c09c4:
    addi    r3, r5, 0x0
    crxor   6, 6, 6
    addi    r5, r5, 0x14
    li      r4, 0x260
    bl      OSPanic
    li      r3, 0x0
    b       branch_0x802c09f8

branch_0x802c09e0:
    addi    r3, r5, 0x0
    crxor   6, 6, 6
    addi    r5, r5, 0x3c
    li      r4, 0x265
    bl      OSPanic
    li      r3, 0x0
branch_0x802c09f8:
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr

