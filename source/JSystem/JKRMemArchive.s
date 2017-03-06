
.globl __ct__13JKRMemArchiveFv
__ct__13JKRMemArchiveFv: # 0x802c3ea4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__10JKRArchiveFv
    lis     r3, 0x803e
    addi    r0, r3, 0x28
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
__ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection: # 0x802c3ee0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x1
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
    lis     r3, 0x803e
    lwz     r31, 0x8(sp)
    addi    r0, r3, 0x28
    stw     r0, 0x0(r31)
    mr      r3, r31
    mr      r4, r29
    stw     r30, 0x5c(r31)
    lwz     r5, 0x5c(r31)
    bl      open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
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


.globl __ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag
__ct__13JKRMemArchiveFPvUl15JKRMemBreakFlag: # 0x802c3f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    li      r5, 0x1
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
    lwz     r31, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x28
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    bl      open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
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
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__13JKRMemArchiveFv
__dt__13JKRMemArchiveFv: # 0x802c4044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c40d0
    lis     r3, 0x803e
    addi    r0, r3, 0x28
    stw     r0, 0x0(r30)
    lbz     r0, 0x30(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x802c40b4
    lbz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802c409c
    lwz     r3, 0x60(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802c409c
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802c409c:
    lis     r3, 0x8040
    addi    r3, r3, 0x42b4
    addi    r4, r30, 0x18
    bl      remove__10JSUPtrListFP10JSUPtrLink
    li      r0, 0x0
    stb     r0, 0x30(r30)
branch_0x802c40b4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JKRArchiveFv
    extsh.  r0, r31
    ble-    branch_0x802c40d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c40d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag
mountFixed__13JKRMemArchiveFPv15JKRMemBreakFlag: # 0x802c40ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    addi    r3, r29, 0x0
    bl      check_mount_already__10JKRArchiveFl
    cmplwi  r3, 0x0
    beq-    branch_0x802c4128
    li      r3, 0x0
    b       branch_0x802c41e0

branch_0x802c4128:
    li      r4, 0x0
    stb     r4, 0x30(r31)
    li      r3, 0x1
    li      r0, 0x2
    stb     r3, 0x3c(r31)
    stw     r3, 0x34(r31)
    stw     r0, 0x54(r31)
    lwz     r0, -0x5f2c(r13)
    stw     r0, 0x38(r31)
    stw     r29, 0x40(r31)
    lwz     r0, -0x5f38(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c4164
    stw     r31, -0x5f38(r13)
    stw     r4, -0x5f98(r13)
branch_0x802c4164:
    lis     r5, 0x1
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    subi    r5, r5, 0x1
    bl      open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
    clrlwi. r0, r3, 24
    bne-    branch_0x802c418c
    li      r3, 0x0
    b       branch_0x802c41e0

branch_0x802c418c:
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
    cmpwi   r30, 0x1
    bne-    branch_0x802c41cc
    li      r0, 0x1
    b       branch_0x802c41d0

branch_0x802c41cc:
    li      r0, 0x0
branch_0x802c41d0:
    stb     r0, 0x68(r31)
    li      r0, 0x1
    li      r3, 0x1
    stb     r0, 0x30(r31)
branch_0x802c41e0:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl unmountFixed__13JKRMemArchiveFv
unmountFixed__13JKRMemArchiveFv: # 0x802c41fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, -0x5f38(r13)
    cmplw   r0, r31
    bne-    branch_0x802c4224
    li      r0, 0x0
    stw     r0, -0x5f38(r13)
branch_0x802c4224:
    lbz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802c4244
    lwz     r3, 0x60(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802c4244
    lwz     r4, 0x38(r31)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802c4244:
    lis     r3, 0x8040
    addi    r3, r3, 0x42b4
    addi    r4, r31, 0x18
    bl      remove__10JSUPtrListFP10JSUPtrLink
    li      r0, 0x0
    stb     r0, 0x30(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
open__13JKRMemArchiveFlQ210JKRArchive15EMountDirection: # 0x802c4270
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x60(r3)
    stw     r0, 0x44(r3)
    stw     r0, 0x64(r3)
    stw     r0, 0x48(r3)
    stw     r0, 0x4c(r3)
    stw     r0, 0x50(r3)
    stb     r0, 0x68(r3)
    stw     r5, 0x5c(r3)
    lwz     r0, 0x5c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x802c42e0
    lwz     r7, 0x38(r31)
    addi    r3, r4, 0x0
    addi    r10, r31, 0x58
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r8, 0x1
    li      r9, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r3, 0x60(r31)
    b       branch_0x802c4308

branch_0x802c42e0:
    lwz     r7, 0x38(r31)
    addi    r3, r4, 0x0
    addi    r10, r31, 0x58
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x0
    li      r8, 0x2
    li      r9, 0x0
    bl      loadToMainRAM__12JKRDvdRipperFlPUc15JKRExpandSwitchUlP7JKRHeapQ212JKRDvdRipper15EAllocDirectionUlPi
    stw     r3, 0x60(r31)
branch_0x802c4308:
    lwz     r4, 0x60(r31)
    cmplwi  r4, 0x0
    bne-    branch_0x802c4320
    li      r0, 0x0
    stb     r0, 0x3c(r31)
    b       branch_0x802c437c

branch_0x802c4320:
    lwz     r3, 0x8(r4)
    li      r0, 0x1
    add     r3, r4, r3
    stw     r3, 0x44(r31)
    lwz     r4, 0x44(r31)
    lwz     r3, 0x4(r4)
    add     r3, r4, r3
    stw     r3, 0x48(r31)
    lwz     r4, 0x44(r31)
    lwz     r3, 0xc(r4)
    add     r3, r4, r3
    stw     r3, 0x4c(r31)
    lwz     r4, 0x44(r31)
    lwz     r3, 0x14(r4)
    add     r3, r4, r3
    stw     r3, 0x50(r31)
    lwz     r5, 0x60(r31)
    lwz     r4, 0xc(r5)
    lwz     r3, 0x8(r5)
    add     r3, r3, r4
    add     r3, r5, r3
    stw     r3, 0x64(r31)
    stb     r0, 0x68(r31)
branch_0x802c437c:
    lbz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802c4390
    li      r3, 0x0
    b       branch_0x802c4394

branch_0x802c4390:
    li      r3, 0x1
branch_0x802c4394:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl open__13JKRMemArchiveFPvUl15JKRMemBreakFlag
open__13JKRMemArchiveFPvUl15JKRMemBreakFlag: # 0x802c43a8
    mflr    r0
    cmpwi   r6, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r4, 0x60(r3)
    lwz     r3, 0x60(r3)
    lwz     r0, 0x8(r3)
    add     r0, r3, r0
    stw     r0, 0x44(r31)
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
    lwz     r5, 0x60(r31)
    lwz     r3, 0xc(r5)
    lwz     r0, 0x8(r5)
    add     r0, r0, r3
    add     r0, r5, r0
    stw     r0, 0x64(r31)
    bne-    branch_0x802c4428
    li      r0, 0x1
    b       branch_0x802c442c

branch_0x802c4428:
    li      r0, 0x0
branch_0x802c442c:
    stb     r0, 0x68(r31)
    mr      r3, r4
    bl      findFromRoot__7JKRHeapFPv
    stw     r3, 0x38(r31)
    li      r0, 0x0
    li      r3, 0x1
    stw     r0, 0x58(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPQ210JKRArchive12SDIFileEntryPUl: # 0x802c445c
    lwz     r0, 0x10(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x802c4478
    lwz     r3, 0x64(r3)
    lwz     r0, 0x8(r4)
    add     r0, r3, r0
    stw     r0, 0x10(r4)
branch_0x802c4478:
    cmplwi  r5, 0x0
    beq-    branch_0x802c4488
    lwz     r0, 0xc(r4)
    stw     r0, 0x0(r5)
branch_0x802c4488:
    lwz     r3, 0x10(r4)
    blr


.globl fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl
fetchResource__13JKRMemArchiveFPvUlPQ210JKRArchive12SDIFileEntryPUl: # 0x802c4490
    mflr    r0
    clrrwi  r9, r5, 5
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    lwz     r8, 0xc(r6)
    addi    r0, r8, 0x1f
    clrrwi  r0, r0, 5
    cmplw   r0, r9
    mr      r31, r0
    ble-    branch_0x802c44d0
    mr      r31, r9
branch_0x802c44d0:
    lwz     r4, 0x10(r6)
    cmplwi  r4, 0x0
    beq-    branch_0x802c44ec
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    bl      copyMemory__7JKRHeapFPvPvUl
    b       branch_0x802c453c

branch_0x802c44ec:
    lwz     r0, 0x4(r6)
    srwi    r4, r0, 24
    rlwinm. r0, r0, 8, 29, 29
    bne-    branch_0x802c4504
    li      r4, 0x0
    b       branch_0x802c4518

branch_0x802c4504:
    rlwinm. r0, r4, 0, 24, 24
    beq-    branch_0x802c4514
    li      r4, 0x2
    b       branch_0x802c4518

branch_0x802c4514:
    li      r4, 0x1
branch_0x802c4518:
    lwz     r0, 0x8(r6)
    mr      r7, r4
    lwz     r3, 0x64(r3)
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r6, r9, 0x0
    add     r3, r3, r0
    bl      fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
    mr      r31, r3
branch_0x802c453c:
    cmplwi  r30, 0x0
    beq-    branch_0x802c4548
    stw     r31, 0x0(r30)
branch_0x802c4548:
    lwz     r0, 0x34(sp)
    mr      r3, r29
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl removeResourceAll__13JKRMemArchiveFv
removeResourceAll__13JKRMemArchiveFv: # 0x802c4568
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lbz     r0, 0x3c(r3)
    cmplwi  r0, 0x1
    beqlr-    

    lwz     r6, 0x4c(r3)
    li      r7, 0x0
    li      r5, 0x0
    b       branch_0x802c45a4

branch_0x802c4590:
    lwz     r0, 0x10(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x802c45a0
    stw     r5, 0x10(r6)
branch_0x802c45a0:
    addi    r7, r7, 0x1
branch_0x802c45a4:
    lwz     r4, 0x44(r3)
    lwz     r0, 0x8(r4)
    cmplw   r7, r0
    blt+    branch_0x802c4590
    blr


.globl removeResource__13JKRMemArchiveFPv
removeResource__13JKRMemArchiveFPv: # 0x802c45b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      findPtrResource__10JKRArchiveCFPCv
    cmplwi  r3, 0x0
    bne-    branch_0x802c45d8
    li      r3, 0x0
    b       branch_0x802c45e4

branch_0x802c45d8:
    li      r0, 0x0
    stw     r0, 0x10(r3)
    li      r3, 0x1
branch_0x802c45e4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli
fetchResource_subroutine__13JKRMemArchiveFPUcUlPUcUli: # 0x802c45f4
    mflr    r0
    cmpwi   r7, 0x0
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1f
    addi    r4, r3, 0x0
    stwu    sp, -0x28(sp)
    clrrwi  r8, r6, 5
    stw     r31, 0x24(sp)
    clrrwi  r31, r0, 5
    beq-    branch_0x802c462c
    blt-    branch_0x802c4698
    cmpwi   r7, 0x3
    bge-    branch_0x802c4698
    b       branch_0x802c464c

branch_0x802c462c:
    cmplw   r31, r8
    ble-    branch_0x802c4638
    mr      r31, r8
branch_0x802c4638:
    addi    r3, r5, 0x0
    addi    r5, r31, 0x0
    bl      copyMemory__7JKRHeapFPvPvUl
    mr      r3, r31
    b       branch_0x802c46b8

branch_0x802c464c:
    lbz     r0, 0x5(r4)
    lbz     r3, 0x4(r4)
    slwi    r0, r0, 16
    lbz     r6, 0x6(r4)
    insrwi  r0, r3, 8, 0
    lbz     r7, 0x7(r4)
    insrwi  r0, r6, 8, 16
    or      r0, r7, r0
    cmplw   r0, r8
    mr      r31, r0
    ble-    branch_0x802c467c
    mr      r31, r8
branch_0x802c467c:
    addi    r3, r4, 0x0
    addi    r4, r5, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x0
    bl      orderSync__9JKRDecompFPUcPUcUlUl
    mr      r3, r31
    b       branch_0x802c46b8

branch_0x802c4698:
    lis     r3, 0x803b
    crxor   6, 6, 6
    lis     r4, 0x803b
    subi    r5, r4, 0x675c
    subi    r3, r3, 0x6770
    li      r4, 0x2d0
    bl      OSPanic
    li      r3, 0x0
branch_0x802c46b8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

