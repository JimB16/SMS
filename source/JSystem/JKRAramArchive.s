
.globl __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
__ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection: # 0x802bd15c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x2
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
    lwz     r31, 0x8(sp)
    lis     r3, __vvt__14JKRAramArchive@ha
    addi    r0, r3, __vvt__14JKRAramArchive@l
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    stw     r30, 0x5c(r31)
    mr      r5, r30
    bl      open__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
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


.globl __dt__14JKRAramArchiveFv
__dt__14JKRAramArchiveFv: # 0x802bd208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr.     r30, r3
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    beq-    branch_0x802bd318
    lis     r3, __vvt__14JKRAramArchive@ha
    addi    r0, r3, __vvt__14JKRAramArchive@l
    stw     r0, 0x0(r30)
    lbz     r0, 0x30(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x802bd2fc
    lwz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802bd29c
    lwz     r29, 0x4c(r30)
    li      r28, 0x0
    b       branch_0x802bd27c

branch_0x802bd260:
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802bd274
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802bd274:
    addi    r29, r29, 0x14
    addi    r28, r28, 0x1
branch_0x802bd27c:
    lwz     r3, 0x44(r30)
    lwz     r0, 0x8(r3)
    cmplw   r28, r0
    blt+    branch_0x802bd260
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r0, 0x0
    stw     r0, 0x44(r30)
branch_0x802bd29c:
    lwz     r3, 0x64(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802bd2c0
    beq-    branch_0x802bd2c0
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bd2c0:
    lwz     r3, 0x60(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802bd2e4
    beq-    branch_0x802bd2e4
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bd2e4:
    lis     r3, sVolumeList__13JKRFileLoader@h
    addi    r3, r3, sVolumeList__13JKRFileLoader@l
    addi    r4, r30, 0x18
    bl      remove__10JSUPtrListFP10JSUPtrLink
    li      r0, 0x0
    stb     r0, 0x30(r30)
branch_0x802bd2fc:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JKRArchiveFv
    extsh.  r0, r31
    ble-    branch_0x802bd318
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bd318:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __dt__7JKRFileFv
__dt__7JKRFileFv: # 0x802bd33c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802bd384
    lis     r3, __vvt__7JKRFile@ha
    addi    r0, r3, __vvt__7JKRFile@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__11JKRDisposerFv
    extsh.  r0, r31
    ble-    branch_0x802bd384
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bd384:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl open__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
open__14JKRAramArchiveFlQ210JKRArchive15EMountDirection: # 0x802bd3a0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x28(sp)
    stw     r5, 0x5c(r3)
    li      r5, 0x0
    stw     r0, 0x44(r3)
    li      r3, 0xf8
    stw     r0, 0x48(r31)
    stw     r0, 0x4c(r31)
    stw     r0, 0x50(r31)
    stw     r0, 0x60(r31)
    lwz     r4, R13Off_m0x5f30(r13)
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bd400
    mr      r4, r29
    bl      __ct__10JKRDvdFileFl
branch_0x802bd400:
    stw     r3, 0x64(r31)
    lwz     r0, 0x64(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802bd420
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    li      r3, 0x0
    b       branch_0x802bd5a8

branch_0x802bd420:
    lwz     r3, R13Off_m0x5f30(r13)
    li      r4, 0x20
    li      r5, -0x20
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    bne-    branch_0x802bd454
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bd570

branch_0x802bd454:
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
    bne-    branch_0x802bd48c
    li      r0, 0x20
    b       branch_0x802bd490

branch_0x802bd48c:
    li      r0, -0x20
branch_0x802bd490:
    lwz     r3, 0xc(r30)
    mr      r4, r0
    lwz     r5, 0x38(r31)
    addi    r0, r3, 0x1f
    clrrwi  r28, r0, 5
    addi    r3, r28, 0x0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x44(r31)
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802bd4c8
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bd570

branch_0x802bd4c8:
    addi    r3, r29, 0x0
    addi    r6, r28, 0x0
    li      r5, 0x1
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x20
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lwz     r3, 0x44(r31)
    li      r5, 0x0
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
    lwz     r4, 0x10(r30)
    lwz     r3, R13Off_m0x5f90(r13)
    addi    r0, r4, 0x1f
    lwz     r3, 0x78(r3)
    clrrwi  r4, r0, 5
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    stw     r3, 0x60(r31)
    lwz     r4, 0x60(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802bd550
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bd570

branch_0x802bd550:
    lwz     r6, 0x8(r30)
    mr      r3, r29
    lwz     r0, 0xc(r30)
    li      r5, 0x1
    lwz     r4, 0x14(r4)
    add     r6, r6, r0
    li      r7, 0x0
    bl      loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUl
branch_0x802bd570:
    cmplwi  r30, 0x0
    beq-    branch_0x802bd590
    lwz     r3, R13Off_m0x5f30(r13)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802bd590:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802bd5a4
    li      r3, 0x0
    b       branch_0x802bd5a8

branch_0x802bd5a4:
    li      r3, 0x1
branch_0x802bd5a8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl fetchResource__14JKRAramArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__14JKRAramArchiveFPQ210JKRArchive12SDIFileEntryPUl: # 0x802bd5c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r4
    lwz     r0, 0x10(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802bd604
    cmplwi  r31, 0x0
    beq-    branch_0x802bd664
    lwz     r0, 0xc(r30)
    stw     r0, 0x0(r31)
    b       branch_0x802bd664

branch_0x802bd604:
    lwz     r0, 0x4(r30)
    srwi    r4, r0, 24
    rlwinm. r0, r0, 8, 29, 29
    bne-    branch_0x802bd61c
    li      r6, 0x0
    b       branch_0x802bd630

branch_0x802bd61c:
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x802bd62c
    li      r6, 0x2
    b       branch_0x802bd630

branch_0x802bd62c:
    li      r6, 0x1
branch_0x802bd630:
    lwz     r4, 0x60(r3)
    addi    r7, sp, 0x1c
    lwz     r0, 0x8(r30)
    lwz     r8, 0x14(r4)
    lwz     r5, 0x38(r3)
    lwz     r4, 0xc(r30)
    add     r3, r0, r8
    bl      fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc
    cmplwi  r31, 0x0
    beq-    branch_0x802bd65c
    stw     r3, 0x0(r31)
branch_0x802bd65c:
    lwz     r0, 0x1c(sp)
    stw     r0, 0x10(r30)
branch_0x802bd664:
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x10(r30)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    blr


.globl fetchResource__14JKRAramArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__14JKRAramArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl: # 0x802bd680
    mflr    r0
    addi    r8, r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0xc(r6)
    cmplw   r0, r8
    mr      r31, r0
    ble-    branch_0x802bd6b8
    mr      r31, r8
branch_0x802bd6b8:
    lwz     r4, 0x10(r6)
    cmplwi  r4, 0x0
    beq-    branch_0x802bd6d4
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    bl      copyMemory__7JKRHeapFPvPvUl
    b       branch_0x802bd728

branch_0x802bd6d4:
    lwz     r0, 0x4(r6)
    srwi    r4, r0, 24
    rlwinm. r0, r0, 8, 29, 29
    bne-    branch_0x802bd6ec
    li      r0, 0x0
    b       branch_0x802bd700

branch_0x802bd6ec:
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x802bd6fc
    li      r0, 0x2
    b       branch_0x802bd700

branch_0x802bd6fc:
    li      r0, 0x1
branch_0x802bd700:
    lwz     r3, 0x60(r3)
    mr      r7, r0
    lwz     r0, 0x8(r6)
    mr      r4, r31
    lwz     r3, 0x14(r3)
    addi    r5, r29, 0x0
    addi    r6, r8, 0x0
    add     r3, r0, r3
    bl      fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli
    mr      r31, r3
branch_0x802bd728:
    cmplwi  r30, 0x0
    beq-    branch_0x802bd734
    stw     r31, 0x0(r30)
branch_0x802bd734:
    lwz     r0, 0x3c(sp)
    mr      r3, r29
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli
fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli: # 0x802bd754
    mflr    r0
    cmpwi   r7, 0x0
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1f
    clrrwi  r0, r0, 5
    stwu    sp, -0x20(sp)
    clrrwi  r6, r6, 5
    beq-    branch_0x802bd784
    blt-    branch_0x802bd7e0
    cmpwi   r7, 0x3
    bge-    branch_0x802bd7e0
    b       branch_0x802bd7b8

branch_0x802bd784:
    cmplw   r0, r6
    ble-    branch_0x802bd790
    mr      r0, r6
branch_0x802bd790:
    addi    r4, r5, 0x0
    addi    r7, r6, 0x0
    mr      r5, r0
    addi    r10, sp, 0x1c
    li      r6, 0x0
    li      r8, 0x0
    li      r9, -0x1
    bl      aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
    lwz     r3, 0x1c(sp)
    b       branch_0x802bd800

branch_0x802bd7b8:
    addi    r4, r5, 0x0
    addi    r7, r6, 0x0
    mr      r5, r0
    addi    r10, sp, 0x1c
    li      r6, 0x1
    li      r8, 0x0
    li      r9, -0x1
    bl      aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
    lwz     r3, 0x1c(sp)
    b       branch_0x802bd800

branch_0x802bd7e0:
    lis     r3, unk_803a9310@ha
    crxor   6, 6, 6
    lis     r4, unk_803a9324@ha
    addi    r5, r4, unk_803a9324@l
    addi    r3, r3, unk_803a9310@l
    li      r4, 0x21e
    bl      OSPanic
    li      r3, 0x0
branch_0x802bd800:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc
fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc: # 0x802bd810
    mflr    r0
    cmpwi   r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r4, 0x0
    addi    r0, r26, 0x1f
    addi    r28, r3, 0x0
    addi    r29, r5, 0x0
    addi    r30, r7, 0x0
    clrrwi  r31, r0, 5
    beq-    branch_0x802bd850
    blt-    branch_0x802bd944
    cmpwi   r6, 0x3
    bge-    branch_0x802bd944
    b       branch_0x802bd894

branch_0x802bd850:
    addi    r3, r31, 0x0
    addi    r5, r29, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    addi    r5, r31, 0x0
    addi    r7, r31, 0x0
    li      r6, 0x0
    li      r8, 0x0
    li      r9, -0x1
    li      r10, 0x0
    bl      aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
    stw     r27, 0x0(r30)
    mr      r3, r26
    b       branch_0x802bd964

branch_0x802bd894:
    addi    r5, r29, 0x0
    li      r3, 0x20
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    li      r5, 0x20
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, -0x1
    li      r10, 0x0
    bl      aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
    lbz     r0, 0x5(r27)
    mr      r3, r27
    lbz     r5, 0x4(r27)
    mr      r4, r29
    slwi    r0, r0, 16
    lbz     r6, 0x6(r27)
    insrwi  r0, r5, 8, 0
    lbz     r7, 0x7(r27)
    insrwi  r0, r6, 8, 16
    or      r27, r7, r0
    bl      free__7JKRHeapFPvP7JKRHeap
    addi    r0, r27, 0x1f
    clrrwi  r26, r0, 5
    addi    r3, r26, 0x0
    addi    r5, r29, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    addi    r27, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    addi    r5, r31, 0x0
    addi    r7, r26, 0x0
    addi    r8, r29, 0x0
    addi    r10, sp, 0x20
    li      r6, 0x1
    li      r9, -0x1
    bl      aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
    stw     r27, 0x0(r30)
    lwz     r3, 0x20(sp)
    b       branch_0x802bd964

branch_0x802bd944:
    lis     r3, unk_803a9310@ha
    crxor   6, 6, 6
    lis     r4, unk_803a9324@ha
    addi    r5, r4, unk_803a9324@l
    addi    r3, r3, unk_803a9310@l
    li      r4, 0x255
    bl      OSPanic
    li      r3, 0x0
branch_0x802bd964:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr

