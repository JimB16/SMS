
.globl __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection
__ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection: # 0x802bf4c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x4
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
    lwz     r31, 0x8(sp)
    lis     r3, 0x803e
    subi    r0, r3, 0x190
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    stw     r30, 0x5c(r31)
    bl      open__14JKRCompArchiveFl
    lis     r3, 0x5241
    addi    r0, r3, 0x5243
    stw     r0, 0x2c(r31)
    lis     r3, 0x8040
    addi    r3, r3, 0x42b4
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


.globl __dt__14JKRCompArchiveFv
__dt__14JKRCompArchiveFv: # 0x802bf56c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr.     r30, r3
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    beq-    branch_0x802bf67c
    lis     r3, 0x803e
    subi    r0, r3, 0x190
    stw     r0, 0x0(r30)
    lwz     r0, 0x44(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802bf600
    lwz     r29, 0x4c(r30)
    li      r28, 0x0
    b       branch_0x802bf5e0

branch_0x802bf5b8:
    lwz     r0, 0x4(r29)
    rlwinm. r0, r0, 8, 27, 27
    bne-    branch_0x802bf5d8
    lwz     r3, 0x10(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x802bf5d8
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802bf5d8:
    addi    r29, r29, 0x14
    addi    r28, r28, 0x1
branch_0x802bf5e0:
    lwz     r3, 0x44(r30)
    lwz     r0, 0x8(r3)
    cmplw   r28, r0
    blt+    branch_0x802bf5b8
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r0, 0x0
    stw     r0, 0x44(r30)
branch_0x802bf600:
    lwz     r3, 0x64(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802bf624
    beq-    branch_0x802bf624
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bf624:
    lwz     r3, 0x6c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802bf648
    beq-    branch_0x802bf648
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bf648:
    lis     r3, 0x8040
    addi    r3, r3, 0x42b4
    addi    r4, r30, 0x18
    bl      remove__10JSUPtrListFP10JSUPtrLink
    li      r0, 0x0
    stb     r0, 0x30(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JKRArchiveFv
    extsh.  r0, r31
    ble-    branch_0x802bf67c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bf67c:
    lwz     r0, 0x2c(sp)
    mr      r3, r30
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl open__14JKRCompArchiveFl
open__14JKRCompArchiveFl: # 0x802bf6a0
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x60(sp)
    stmw    r25, 0x44(sp)
    addi    r31, r3, 0x0
    addi    r29, r4, 0x0
    stw     r0, 0x44(r3)
    li      r3, 0xf8
    stw     r0, 0x60(r31)
    stw     r0, 0x64(r31)
    stw     r0, 0x68(r31)
    stw     r0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    stw     r0, 0x48(r31)
    stw     r0, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r4, -0x5f30(r13)
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bf704
    mr      r4, r29
    bl      __ct__10JKRDvdFileFl
branch_0x802bf704:
    stw     r3, 0x6c(r31)
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802bf724
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    li      r3, 0x0
    b       branch_0x802bfb50

branch_0x802bf724:
    lwz     r3, -0x5f30(r13)
    li      r4, 0x20
    li      r5, -0x20
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    bne-    branch_0x802bf758
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaec

branch_0x802bf758:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r10, r31, 0x58
    li      r5, 0x1
    li      r6, 0x20
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lwz     r0, 0x14(r30)
    stw     r0, 0x70(r31)
    lwz     r0, 0x18(r30)
    stw     r0, 0x74(r31)
    lwz     r0, 0x58(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x802bf8d8
    bge-    branch_0x802bf7a8
    cmpwi   r0, 0x0
    bge-    branch_0x802bf7b0
    b       branch_0x802bfaec

branch_0x802bf7a8:
    cmpwi   r0, 0x3
    bge-    branch_0x802bfaec
branch_0x802bf7b0:
    lwz     r0, 0x5c(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x802bf7c4
    li      r0, 0x20
    b       branch_0x802bf7c8

branch_0x802bf7c4:
    li      r0, -0x20
branch_0x802bf7c8:
    mr      r4, r0
    lwz     r3, 0xc(r30)
    lwz     r0, 0x70(r31)
    lwz     r5, 0x38(r31)
    add     r3, r3, r0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x44(r31)
    lwz     r4, 0x44(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802bf7fc
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaec

branch_0x802bf7fc:
    lwz     r5, 0xc(r30)
    addi    r3, r29, 0x0
    lwz     r0, 0x70(r31)
    li      r7, 0x0
    li      r8, 0x1
    add     r6, r5, r0
    li      r5, 0x1
    li      r9, 0x20
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lwz     r3, 0x44(r31)
    lwz     r0, 0xc(r30)
    add     r0, r3, r0
    stw     r0, 0x60(r31)
    lwz     r4, 0x74(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x802bf894
    lwz     r3, -0x5f90(r13)
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    stw     r3, 0x64(r31)
    lwz     r4, 0x64(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802bf86c
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaec

branch_0x802bf86c:
    lwz     r6, 0x70(r31)
    mr      r3, r29
    lwz     r0, 0xc(r30)
    li      r5, 0x1
    lwz     r7, 0x8(r30)
    add     r6, r0, r6
    lwz     r4, 0x14(r4)
    add     r6, r7, r6
    li      r7, 0x0
    bl      loadToAram__16JKRDvdAramRipperFlUl15JKRExpandSwitchUlUl
branch_0x802bf894:
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
    stw     r0, 0x68(r31)
    b       branch_0x802bfaec

branch_0x802bf8d8:
    lwz     r3, 0x6c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x5c(r31)
    addi    r3, r3, 0x1f
    clrrwi  r25, r3, 5
    cmpwi   r0, 0x1
    bne-    branch_0x802bf908
    li      r28, 0x20
    b       branch_0x802bf90c

branch_0x802bf908:
    li      r28, -0x20
branch_0x802bf90c:
    lwz     r3, -0x5f30(r13)
    neg     r26, r28
    addi    r4, r25, 0x0
    lwz     r12, 0x0(r3)
    addi    r5, r26, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    addi    r27, r3, 0x0
    bne-    branch_0x802bf944
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaac

branch_0x802bf944:
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    addi    r6, r25, 0x0
    li      r5, 0x2
    li      r7, 0x0
    li      r8, 0x1
    li      r9, 0x0
    li      r10, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    lbz     r0, 0x5(r27)
    mr      r4, r26
    lbz     r3, 0x4(r27)
    slwi    r0, r0, 16
    lbz     r6, 0x6(r27)
    insrwi  r0, r3, 8, 0
    lbz     r7, 0x7(r27)
    insrwi  r0, r6, 8, 16
    lwz     r5, 0x38(r31)
    or      r3, r7, r0
    addi    r0, r3, 0x1f
    clrrwi  r25, r0, 5
    addi    r3, r25, 0x0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    cmplwi  r3, 0x0
    addi    r29, r3, 0x0
    bne-    branch_0x802bf9b8
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaac

branch_0x802bf9b8:
    addi    r30, r29, 0x0
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    addi    r5, r25, 0x0
    li      r6, 0x0
    bl      orderSync__9JKRDecompFPUcPUcUlUl
    lwz     r3, -0x5f30(r13)
    mr      r4, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xc(r29)
    mr      r4, r28
    lwz     r0, 0x70(r31)
    lwz     r5, 0x38(r31)
    add     r3, r3, r0
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x44(r31)
    lwz     r3, 0x44(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x802bfa1c
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaac

branch_0x802bfa1c:
    lwz     r5, 0xc(r30)
    addi    r4, r30, 0x20
    lwz     r0, 0x70(r31)
    add     r5, r5, r0
    bl      copyMemory__7JKRHeapFPvPvUl
    lwz     r3, 0x44(r31)
    lwz     r0, 0xc(r30)
    add     r0, r3, r0
    stw     r0, 0x60(r31)
    lwz     r4, 0x74(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x802bfaac
    lwz     r3, -0x5f90(r13)
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    stw     r3, 0x64(r31)
    lwz     r8, 0x64(r31)
    cmplwi  r8, 0x0
    bne-    branch_0x802bfa78
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802bfaac

branch_0x802bfa78:
    lwz     r4, 0x8(r30)
    li      r6, 0x0
    lwz     r3, 0xc(r30)
    li      r7, 0x0
    lwz     r0, 0x70(r31)
    add     r3, r4, r3
    lwz     r4, 0x14(r8)
    add     r3, r3, r0
    lwz     r5, 0x74(r31)
    add     r3, r29, r3
    li      r8, 0x0
    li      r9, -0x1
    bl      mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapi
branch_0x802bfaac:
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
    stw     r0, 0x68(r31)
branch_0x802bfaec:
    cmplwi  r30, 0x0
    beq-    branch_0x802bfb00
    lwz     r4, 0x38(r31)
    mr      r3, r30
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802bfb00:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802bfb38
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802bfb38
    beq-    branch_0x802bfb30
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bfb30:
    li      r0, 0x0
    stw     r0, 0x6c(r31)
branch_0x802bfb38:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802bfb4c
    li      r3, 0x0
    b       branch_0x802bfb50

branch_0x802bfb4c:
    li      r3, 0x1
branch_0x802bfb50:
    lmw     r25, 0x44(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl fetchResource__14JKRCompArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__14JKRCompArchiveFPQ210JKRArchive12SDIFileEntryPUl: # 0x802bfb64
    mflr    r0
    addi    r8, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    mr      r30, r4
    lwz     r0, 0x10(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802bfca0
    lwz     r0, 0x4(r30)
    srwi    r4, r0, 24
    rlwinm. r0, r0, 8, 27, 27
    beq-    branch_0x802bfbc4
    lwz     r3, 0x60(r8)
    cmplwi  r31, 0x0
    lwz     r0, 0x8(r30)
    add     r0, r3, r0
    stw     r0, 0x10(r30)
    beq-    branch_0x802bfcb0
    lwz     r0, 0xc(r30)
    stw     r0, 0x0(r31)
    b       branch_0x802bfcb0

branch_0x802bfbc4:
    rlwinm. r0, r4, 0, 26, 26
    beq-    branch_0x802bfc34
    rlwinm. r0, r4, 0, 29, 29
    clrlwi  r3, r4, 24
    bne-    branch_0x802bfbe0
    li      r6, 0x0
    b       branch_0x802bfbf4

branch_0x802bfbe0:
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x802bfbf0
    li      r6, 0x2
    b       branch_0x802bfbf4

branch_0x802bfbf0:
    li      r6, 0x1
branch_0x802bfbf4:
    lwz     r3, 0x64(r8)
    addi    r7, sp, 0x20
    lwz     r0, 0x8(r30)
    lwz     r4, 0x14(r3)
    lwz     r3, 0x70(r8)
    add     r0, r0, r4
    lwz     r4, 0xc(r30)
    lwz     r5, 0x38(r8)
    subf    r3, r3, r0
    bl      fetchResource_subroutine__14JKRAramArchiveFUlUlP7JKRHeapiPPUc
    cmplwi  r31, 0x0
    beq-    branch_0x802bfc28
    stw     r3, 0x0(r31)
branch_0x802bfc28:
    lwz     r0, 0x20(sp)
    stw     r0, 0x10(r30)
    b       branch_0x802bfcb0

branch_0x802bfc34:
    rlwinm. r0, r4, 0, 25, 25
    beq-    branch_0x802bfcb0
    rlwinm. r0, r4, 0, 29, 29
    clrlwi  r3, r4, 24
    bne-    branch_0x802bfc50
    li      r7, 0x0
    b       branch_0x802bfc64

branch_0x802bfc50:
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x802bfc60
    li      r7, 0x2
    b       branch_0x802bfc64

branch_0x802bfc60:
    li      r7, 0x1
branch_0x802bfc64:
    lwz     r4, 0x68(r8)
    addi    r9, sp, 0x1c
    lwz     r0, 0x8(r30)
    lwz     r3, 0x40(r8)
    lwz     r6, 0x38(r8)
    add     r4, r4, r0
    lwz     r5, 0xc(r30)
    lwz     r8, 0x58(r8)
    bl      fetchResource_subroutine__13JKRDvdArchiveFlUlUlP7JKRHeapiiPPUc
    cmplwi  r31, 0x0
    beq-    branch_0x802bfc94
    stw     r3, 0x0(r31)
branch_0x802bfc94:
    lwz     r0, 0x1c(sp)
    stw     r0, 0x10(r30)
    b       branch_0x802bfcb0

branch_0x802bfca0:
    cmplwi  r31, 0x0
    beq-    branch_0x802bfcb0
    lwz     r0, 0xc(r30)
    stw     r0, 0x0(r31)
branch_0x802bfcb0:
    lwz     r0, 0x34(sp)
    lwz     r3, 0x10(r30)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x30
    blr


.globl fetchResource__14JKRCompArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__14JKRCompArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl: # 0x802bfccc
    mflr    r0
    lis     r8, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r23, 0x34(sp)
    mr      r26, r6
    addi    r24, r3, 0x0
    addi    r31, r4, 0x0
    addi    r25, r5, 0x0
    addi    r27, r7, 0x0
    subi    r23, r8, 0x6c30
    li      r30, 0x0
    lwz     r6, 0xc(r6)
    addi    r0, r6, 0x1f
    clrrwi. r0, r0, 5
    mr      r29, r0
    bne-    branch_0x802bfd24
    addi    r3, r23, 0x28
    crxor   6, 6, 6
    addi    r5, r23, 0x3c
    li      r4, 0x287
    bl      OSPanic
branch_0x802bfd24:
    lwz     r4, 0x10(r26)
    cmplwi  r4, 0x0
    beq-    branch_0x802bfd54
    clrrwi  r0, r25, 5
    cmplw   r29, r0
    ble-    branch_0x802bfd40
    mr      r29, r0
branch_0x802bfd40:
    addi    r3, r31, 0x0
    addi    r5, r29, 0x0
    bl      copyMemory__7JKRHeapFPvPvUl
    mr      r30, r29
    b       branch_0x802bfeb8

branch_0x802bfd54:
    lwz     r0, 0x4(r26)
    srwi    r4, r0, 24
    rlwinm. r0, r0, 8, 29, 29
    bne-    branch_0x802bfd6c
    li      r3, 0x0
    b       branch_0x802bfd80

branch_0x802bfd6c:
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x802bfd7c
    li      r3, 0x2
    b       branch_0x802bfd80

branch_0x802bfd7c:
    li      r3, 0x1
branch_0x802bfd80:
    rlwinm. r0, r4, 0, 27, 27
    addi    r28, r3, 0x0
    beq-    branch_0x802bfe30
    clrrwi  r0, r25, 5
    cmplw   r29, r0
    ble-    branch_0x802bfd9c
    mr      r29, r0
branch_0x802bfd9c:
    rlwinm. r0, r4, 0, 29, 29
    bne-    branch_0x802bfdc0
    lwz     r4, 0x60(r24)
    mr      r3, r31
    lwz     r0, 0x8(r26)
    addi    r5, r29, 0x0
    add     r4, r4, r0
    bl      copyMemory__7JKRHeapFPvPvUl
    b       branch_0x802bfe08

branch_0x802bfdc0:
    lwz     r3, 0x60(r24)
    lwz     r0, 0x8(r26)
    add     r3, r3, r0
    lbz     r0, 0x5(r3)
    lbz     r4, 0x4(r3)
    slwi    r0, r0, 16
    lbz     r5, 0x6(r3)
    insrwi  r0, r4, 8, 0
    lbz     r6, 0x7(r3)
    insrwi  r0, r5, 8, 16
    or      r0, r6, r0
    cmplw   r0, r25
    ble-    branch_0x802bfdf8
    mr      r0, r25
branch_0x802bfdf8:
    mr      r5, r0
    addi    r4, r31, 0x0
    li      r6, 0x0
    bl      orderSync__9JKRDecompFPUcPUcUlUl
branch_0x802bfe08:
    lwz     r3, 0x60(r24)
    mr      r4, r29
    lwz     r0, 0x8(r26)
    addi    r5, r31, 0x0
    addi    r6, r25, 0x0
    addi    r7, r28, 0x0
    add     r3, r3, r0
    bl      fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
    mr      r30, r3
    b       branch_0x802bfeb8

branch_0x802bfe30:
    rlwinm. r0, r4, 0, 26, 26
    beq-    branch_0x802bfe6c
    lwz     r3, 0x64(r24)
    mr      r4, r29
    lwz     r0, 0x8(r26)
    mr      r5, r31
    lwz     r7, 0x14(r3)
    lwz     r3, 0x70(r24)
    addi    r6, r25, 0x0
    add     r0, r0, r7
    addi    r7, r28, 0x0
    subf    r3, r3, r0
    bl      fetchResource_subroutine__14JKRAramArchiveFUlUlPUcUli
    mr      r30, r3
    b       branch_0x802bfeb8

branch_0x802bfe6c:
    rlwinm. r0, r4, 0, 25, 25
    beq-    branch_0x802bfea4
    lwz     r4, 0x68(r24)
    mr      r5, r29
    lwz     r0, 0x8(r26)
    mr      r6, r31
    lwz     r3, 0x40(r24)
    lwz     r9, 0x58(r24)
    addi    r7, r25, 0x0
    addi    r8, r28, 0x0
    add     r4, r4, r0
    bl      fetchResource_subroutine__13JKRDvdArchiveFlUlUlPUcUlii
    mr      r30, r3
    b       branch_0x802bfeb8

branch_0x802bfea4:
    addi    r3, r23, 0x28
    crxor   6, 6, 6
    addi    r5, r23, 0x5c
    li      r4, 0x2d7
    bl      OSPanic
branch_0x802bfeb8:
    cmplwi  r27, 0x0
    beq-    branch_0x802bfec4
    stw     r30, 0x0(r27)
branch_0x802bfec4:
    mr      r3, r31
    lmw     r23, 0x34(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl removeResourceAll__14JKRCompArchiveFv
removeResourceAll__14JKRCompArchiveFv: # 0x802bfedc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802bff60
    lbz     r0, 0x3c(r28)
    cmplwi  r0, 0x1
    beq-    branch_0x802bff60
    lwz     r30, 0x4c(r28)
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x802bff50

branch_0x802bff24:
    lwz     r3, 0x10(r30)
    lwz     r0, 0x4(r30)
    cmplwi  r3, 0x0
    srwi    r0, r0, 24
    beq-    branch_0x802bff4c
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x802bff48
    lwz     r4, 0x38(r28)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802bff48:
    stw     r31, 0x10(r30)
branch_0x802bff4c:
    addi    r29, r29, 0x1
branch_0x802bff50:
    lwz     r3, 0x44(r28)
    lwz     r0, 0x8(r3)
    cmplw   r29, r0
    blt+    branch_0x802bff24
branch_0x802bff60:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl removeResource__14JKRCompArchiveFPv
removeResource__14JKRCompArchiveFPv: # 0x802bff80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      findPtrResource__10JKRArchiveCFPCv
    mr.     r31, r3
    bne-    branch_0x802bffb4
    li      r3, 0x0
    b       branch_0x802bffd8

branch_0x802bffb4:
    lwz     r0, 0x4(r31)
    rlwinm. r0, r0, 8, 27, 27
    bne-    branch_0x802bffcc
    lwz     r4, 0x38(r29)
    mr      r3, r30
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802bffcc:
    li      r0, 0x0
    stw     r0, 0x10(r31)
    li      r3, 0x1
branch_0x802bffd8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

