
.globl create__7JKRAramFUlUllll
create__7JKRAramFUlUllll: # 0x802bdd2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r0, R13Off_m0x5f90(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802bdd88
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x88
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bdd84
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r31, 0x0
    bl      __ct__7JKRAramFUlUll
branch_0x802bdd84:
    stw     r3, R13Off_m0x5f90(r13)
branch_0x802bdd88:
    mr      r3, r29
    bl      create__13JKRAramStreamFl
    mr      r3, r30
    bl      create__9JKRDecompFl
    lwz     r3, R13Off_m0x5f90(r13)
    lwz     r3, 0x2c(r3)
    bl      OSResumeThread
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    lwz     r3, R13Off_m0x5f90(r13)
    mtlr    r0
    blr


.globl __ct__7JKRAramFUlUll
__ct__7JKRAramFUlUll: # 0x802bddbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    li      r5, 0x10
    stw     r28, 0x18(sp)
    mr      r28, r4
    li      r4, 0x4000
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__9JKRThreadFUlii
    lwz     r30, 0x8(sp)
    lis     r3, __vvt__7JKRAram@ha
    addi    r0, r3, __vvt__7JKRAram@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x7c
    li      r4, 0x3
    bl      ARInit
    mr      r31, r3
    bl      ARQInit
    bl      ARGetSize
    addis   r0, r29, 0x1
    stw     r28, 0x64(r30)
    cmplwi  r0, 0xffff
    bne-    branch_0x802bde44
    subf    r0, r28, r3
    subf    r0, r31, r0
    stw     r0, 0x6c(r30)
    li      r0, 0x0
    stw     r0, 0x74(r30)
    b       branch_0x802bde58

branch_0x802bde44:
    add     r0, r28, r29
    stw     r29, 0x6c(r30)
    subf    r0, r0, r3
    subf    r0, r31, r0
    stw     r0, 0x74(r30)
branch_0x802bde58:
    lwz     r31, 0x8(sp)
    lwz     r3, 0x64(r31)
    bl      ARAlloc
    stw     r3, 0x60(r31)
    lwz     r3, 0x6c(r31)
    bl      ARAlloc
    stw     r3, 0x68(r31)
    lwz     r3, 0x74(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x802bde8c
    bl      ARAlloc
    stw     r3, 0x70(r31)
    b       branch_0x802bde94

branch_0x802bde8c:
    li      r0, 0x0
    stw     r0, 0x70(r31)
branch_0x802bde94:
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x44
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bdebc
    lwz     r5, 0x8(sp)
    lwz     r4, 0x68(r5)
    lwz     r5, 0x6c(r5)
    bl      __ct__11JKRAramHeapFUlUl
branch_0x802bdebc:
    lwz     r4, 0x8(sp)
    stw     r3, 0x78(r4)
    mr      r3, r4
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__7JKRAramFv
__dt__7JKRAramFv: # 0x802bdee8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802bdf5c
    lis     r3, __vvt__7JKRAram@ha
    addi    r0, r3, __vvt__7JKRAram@l
    stw     r0, 0x0(r30)
    li      r0, 0x0
    stw     r0, R13Off_m0x5f90(r13)
    lwz     r3, 0x78(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802bdf40
    beq-    branch_0x802bdf40
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bdf40:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__9JKRThreadFv
    extsh.  r0, r31
    ble-    branch_0x802bdf5c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bdf5c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl run__7JKRAramFv
run__7JKRAramFv: # 0x802bdf78
    mflr    r0
    lis     r3, sMessageBuffer__7JKRAram@ha
    stw     r0, 0x4(sp)
    li      r5, 0x4
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, sMessageBuffer__7JKRAram@l
    addi    r4, r31, 0x0
    stw     r30, 0x18(sp)
    addi    r3, r31, 0x10
    stw     r29, 0x14(sp)
    bl      OSInitMessageQueue
branch_0x802bdfa8:
    addi    r3, r31, 0x10
    addi    r4, sp, 0xc
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r3, 0xc(sp)
    lwz     r30, 0x0(r3)
    lwz     r29, 0x4(r3)
    bl      __dl__FPv
    cmpwi   r30, 0x1
    beq-    branch_0x802bdfd4
    b       branch_0x802bdfa8

branch_0x802bdfd4:
    mr      r3, r29
    bl      startDMA__12JKRAramPieceFP12JKRAMCommand
    b       branch_0x802bdfa8


.globl mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapi
mainRamToAram__7JKRAramFPUcUlUl15JKRExpandSwitchUlP7JKRHeapi: # 0x802bdfe0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r3, 27
    stwu    sp, -0x78(sp)
    stmw    r24, 0x58(sp)
    addi    r31, r3, 0x0
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r24, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    li      r30, 0x0
    beq-    branch_0x802be03c
    clrlwi. r0, r25, 27
    beq-    branch_0x802be03c
    lis     r3, unk_803a9340@ha
    crxor   6, 6, 6
    lis     r4, unk_803a934c@ha
    addi    r5, r4, unk_803a934c@l
    addi    r3, r3, unk_803a9340@l
    li      r4, 0xe1
    bl      OSPanic
branch_0x802be03c:
    cmpwi   r24, 0x1
    bne-    branch_0x802be064
    mr      r3, r31
    bl      checkCompressed__9JKRDecompFPUc
    cmpwi   r3, 0x0
    beq-    branch_0x802be05c
    li      r0, 0x1
    b       branch_0x802be060

branch_0x802be05c:
    li      r0, 0x0
branch_0x802be060:
    mr      r24, r0
branch_0x802be064:
    cmpwi   r24, 0x1
    bne-    branch_0x802be1c4
    mr      r3, r31
    bl      checkCompressed__9JKRDecompFPUc
    cmpwi   r3, 0x0
    beq-    branch_0x802be0a0
    lbz     r0, 0x5(r31)
    lbz     r3, 0x4(r31)
    slwi    r0, r0, 16
    lbz     r4, 0x6(r31)
    insrwi  r0, r3, 8, 0
    lbz     r5, 0x7(r31)
    insrwi  r0, r4, 8, 16
    or      r24, r5, r0
    b       branch_0x802be0a4

branch_0x802be0a0:
    li      r24, 0x0
branch_0x802be0a4:
    cmplwi  r27, 0x0
    beq-    branch_0x802be0b4
    cmplw   r27, r24
    ble-    branch_0x802be0b8
branch_0x802be0b4:
    mr      r27, r24
branch_0x802be0b8:
    cmplwi  r25, 0x0
    bne-    branch_0x802be10c
    lwz     r3, R13Off_m0x5f90(r13)
    addi    r4, r27, 0x0
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    bne-    branch_0x802be0e8
    li      r3, 0x0
    b       branch_0x802be244

branch_0x802be0e8:
    cmpwi   r29, 0x0
    bge-    branch_0x802be100
    lwz     r4, R13Off_m0x5f90(r13)
    lwz     r4, 0x78(r4)
    lbz     r0, 0x40(r4)
    b       branch_0x802be104

branch_0x802be100:
    clrlwi  r0, r29, 24
branch_0x802be104:
    stb     r0, 0x20(r3)
    lwz     r25, 0x14(r3)
branch_0x802be10c:
    cmplwi  r26, 0x0
    beq-    branch_0x802be11c
    cmplw   r26, r24
    ble-    branch_0x802be120
branch_0x802be11c:
    mr      r26, r24
branch_0x802be120:
    cmplw   r27, r26
    ble-    branch_0x802be12c
    mr      r27, r26
branch_0x802be12c:
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    li      r4, -0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    cmplwi  r3, 0x0
    addi    r24, r3, 0x0
    bne-    branch_0x802be174
    cmplwi  r30, 0x0
    beq-    branch_0x802be16c
    mr      r3, r30
    beq-    branch_0x802be16c
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802be16c:
    li      r3, 0x0
    b       branch_0x802be244

branch_0x802be174:
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    addi    r5, r27, 0x0
    li      r6, 0x0
    bl      orderSync__9JKRDecompFPUcPUcUlUl
    addi    r4, r24, 0x0
    addi    r5, r25, 0x0
    addi    r6, r26, 0x0
    addi    r7, r30, 0x0
    li      r3, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    addi    r3, r24, 0x0
    addi    r4, r28, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    cmplwi  r30, 0x0
    bne-    branch_0x802be1bc
    li      r3, -0x1
    b       branch_0x802be244

branch_0x802be1bc:
    mr      r3, r30
    b       branch_0x802be244

branch_0x802be1c4:
    cmplwi  r25, 0x0
    bne-    branch_0x802be218
    lwz     r3, R13Off_m0x5f90(r13)
    addi    r4, r26, 0x0
    li      r5, 0x0
    lwz     r3, 0x78(r3)
    bl      alloc__11JKRAramHeapFUlQ211JKRAramHeap10EAllocMode
    cmpwi   r29, 0x0
    addi    r30, r3, 0x0
    bge-    branch_0x802be1fc
    lwz     r4, R13Off_m0x5f90(r13)
    lwz     r4, 0x78(r4)
    lbz     r0, 0x40(r4)
    b       branch_0x802be200

branch_0x802be1fc:
    clrlwi  r0, r29, 24
branch_0x802be200:
    cmplwi  r3, 0x0
    stb     r0, 0x20(r3)
    bne-    branch_0x802be214
    li      r3, 0x0
    b       branch_0x802be244

branch_0x802be214:
    lwz     r25, 0x14(r3)
branch_0x802be218:
    addi    r4, r31, 0x0
    addi    r5, r25, 0x0
    addi    r6, r26, 0x0
    addi    r7, r30, 0x0
    li      r3, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    cmplwi  r30, 0x0
    bne-    branch_0x802be240
    li      r3, -0x1
    b       branch_0x802be244

branch_0x802be240:
    mr      r3, r30
branch_0x802be244:
    lmw     r24, 0x58(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl: # 0x802be258
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r22, 0x98(sp)
    mr.     r31, r10
    addi    r28, r3, 0x0
    addi    r23, r4, 0x0
    addi    r29, r5, 0x0
    addi    r22, r6, 0x0
    addi    r24, r7, 0x0
    addi    r27, r8, 0x0
    addi    r30, r9, 0x0
    li      r26, 0x0
    beq-    branch_0x802be298
    li      r0, 0x0
    stw     r0, 0x0(r31)
branch_0x802be298:
    clrlwi. r0, r23, 27
    beq-    branch_0x802be2c4
    clrlwi. r0, r28, 27
    beq-    branch_0x802be2c4
    lis     r3, unk_803a9340@ha
    crxor   6, 6, 6
    lis     r4, unk_803a934c@ha
    addi    r5, r4, unk_803a934c@l
    addi    r3, r3, unk_803a9340@l
    li      r4, 0xe1
    bl      OSPanic
branch_0x802be2c4:
    cmpwi   r22, 0x1
    bne-    branch_0x802be318
    addi    r0, sp, 0x73
    clrrwi  r25, r0, 5
    addi    r4, r28, 0x0
    addi    r5, r25, 0x0
    li      r3, 0x1
    li      r6, 0x20
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    mr      r3, r25
    bl      checkCompressed__9JKRDecompFPUc
    lbz     r0, 0x5(r25)
    addi    r26, r3, 0x0
    lbz     r4, 0x4(r25)
    slwi    r0, r0, 16
    lbz     r5, 0x6(r25)
    insrwi  r0, r4, 8, 0
    lbz     r6, 0x7(r25)
    insrwi  r0, r5, 8, 16
    or      r25, r6, r0
branch_0x802be318:
    cmpwi   r26, 0x2
    bne-    branch_0x802be3c4
    cmplwi  r24, 0x0
    beq-    branch_0x802be334
    cmplw   r24, r25
    bge-    branch_0x802be334
    mr      r25, r24
branch_0x802be334:
    cmplwi  r23, 0x0
    bne-    branch_0x802be350
    addi    r3, r25, 0x0
    addi    r5, r27, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    mr      r23, r3
branch_0x802be350:
    cmplwi  r23, 0x0
    bne-    branch_0x802be360
    li      r3, 0x0
    b       branch_0x802be534

branch_0x802be360:
    lwz     r3, R13Off_m0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbaa8
    cmplwi  r0, 0x5048
    bne-    branch_0x802be38c
    cmpwi   r30, 0x0
    blt-    branch_0x802be38c
    stb     r30, -0xd(r23)
branch_0x802be38c:
    addi    r3, r28, 0x0
    addi    r4, r23, 0x0
    addi    r5, r29, 0x0
    addi    r6, r25, 0x0
    li      r7, 0x0
    bl      JKRDecompressFromAramToMainRam__FUlPvUlUlUl
    addi    r3, r23, 0x0
    addi    r4, r25, 0x0
    bl      DCStoreRange
    cmplwi  r31, 0x0
    beq-    branch_0x802be3bc
    stw     r25, 0x0(r31)
branch_0x802be3bc:
    mr      r3, r23
    b       branch_0x802be534

branch_0x802be3c4:
    cmpwi   r26, 0x1
    bne-    branch_0x802be4b4
    addi    r3, r29, 0x0
    addi    r5, r27, 0x0
    li      r4, -0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    cmplwi  r3, 0x0
    addi    r26, r3, 0x0
    bne-    branch_0x802be3f0
    li      r3, 0x0
    b       branch_0x802be534

branch_0x802be3f0:
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r29, 0x0
    li      r3, 0x1
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    cmplwi  r24, 0x0
    beq-    branch_0x802be41c
    cmplw   r24, r25
    bge-    branch_0x802be41c
    mr      r25, r24
branch_0x802be41c:
    cmplwi  r23, 0x0
    bne-    branch_0x802be438
    addi    r3, r25, 0x0
    addi    r5, r27, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    mr      r23, r3
branch_0x802be438:
    cmplwi  r23, 0x0
    bne-    branch_0x802be454
    addi    r3, r26, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r3, 0x0
    b       branch_0x802be534

branch_0x802be454:
    lwz     r3, R13Off_m0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbaa8
    cmplwi  r0, 0x5048
    bne-    branch_0x802be480
    cmpwi   r30, 0x0
    blt-    branch_0x802be480
    stb     r30, -0xd(r23)
branch_0x802be480:
    addi    r3, r26, 0x0
    addi    r4, r23, 0x0
    addi    r5, r25, 0x0
    li      r6, 0x0
    bl      orderSync__9JKRDecompFPUcPUcUlUl
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    cmplwi  r31, 0x0
    beq-    branch_0x802be4ac
    stw     r25, 0x0(r31)
branch_0x802be4ac:
    mr      r3, r23
    b       branch_0x802be534

branch_0x802be4b4:
    cmplwi  r23, 0x0
    bne-    branch_0x802be4d0
    addi    r3, r29, 0x0
    addi    r5, r27, 0x0
    li      r4, 0x20
    bl      alloc__7JKRHeapFUliP7JKRHeap
    mr      r23, r3
branch_0x802be4d0:
    cmplwi  r23, 0x0
    bne-    branch_0x802be4e0
    li      r3, 0x0
    b       branch_0x802be534

branch_0x802be4e0:
    lwz     r3, R13Off_m0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    addis   r0, r3, 0xbaa8
    cmplwi  r0, 0x5048
    bne-    branch_0x802be50c
    cmpwi   r30, 0x0
    blt-    branch_0x802be50c
    stb     r30, -0xd(r23)
branch_0x802be50c:
    addi    r4, r28, 0x0
    addi    r5, r23, 0x0
    addi    r6, r29, 0x0
    li      r3, 0x1
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    cmplwi  r31, 0x0
    beq-    branch_0x802be530
    stw     r29, 0x0(r31)
branch_0x802be530:
    mr      r3, r23
branch_0x802be534:
    lmw     r22, 0x98(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl aramToMainRam__7JKRAramFP12JKRAramBlockPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl
aramToMainRam__7JKRAramFP12JKRAramBlockPUcUlUl15JKRExpandSwitchUlP7JKRHeapiPUl: # 0x802be548
    mflr    r0
    lis     r11, unk_803a9340@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r22, 0x30(sp)
    addi    r23, r11, unk_803a9340@l
    lwz     r31, 0x60(sp)
    addi    r24, r3, 0x0
    addi    r25, r4, 0x0
    cmplwi  r31, 0x0
    addi    r22, r5, 0x0
    addi    r26, r6, 0x0
    addi    r27, r7, 0x0
    addi    r28, r8, 0x0
    addi    r29, r9, 0x0
    addi    r30, r10, 0x0
    beq-    branch_0x802be594
    li      r0, 0x0
    stw     r0, 0x0(r31)
branch_0x802be594:
    cmplwi  r24, 0x0
    beq-    branch_0x802be5c0
    lwz     r0, 0x14(r24)
    add     r0, r26, r0
    clrlwi. r0, r0, 27
    beq-    branch_0x802be5c0
    addi    r3, r23, 0x0
    crxor   6, 6, 6
    addi    r5, r23, 0xc
    li      r4, 0xea
    bl      OSPanic
branch_0x802be5c0:
    cmplwi  r24, 0x0
    bne-    branch_0x802be5dc
    addi    r3, r23, 0x0
    crxor   6, 6, 6
    addi    r5, r23, 0x2c
    li      r4, 0x2a1
    bl      OSPanic
branch_0x802be5dc:
    lwz     r4, 0x18(r24)
    cmplw   r26, r4
    blt-    branch_0x802be5f0
    li      r3, 0x0
    b       branch_0x802be640

branch_0x802be5f0:
    cmplwi  r22, 0x0
    bne-    branch_0x802be600
    mr      r3, r4
    b       branch_0x802be604

branch_0x802be600:
    mr      r3, r22
branch_0x802be604:
    add     r0, r26, r3
    cmplw   r0, r4
    addi    r22, r3, 0x0
    ble-    branch_0x802be618
    subf    r22, r26, r4
branch_0x802be618:
    lwz     r0, 0x14(r24)
    addi    r4, r25, 0x0
    addi    r5, r22, 0x0
    addi    r6, r27, 0x0
    addi    r7, r28, 0x0
    addi    r8, r29, 0x0
    addi    r9, r30, 0x0
    addi    r10, r31, 0x0
    add     r3, r26, r0
    bl      aramToMainRam__7JKRAramFUlPUcUl15JKRExpandSwitchUlP7JKRHeapiPUl
branch_0x802be640:
    lmw     r22, 0x30(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl JKRDecompressFromAramToMainRam__FUlPvUlUlUl
JKRDecompressFromAramToMainRam__FUlPvUlUlUl: # 0x802be654
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r27, r3, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    li      r4, 0x400
    li      r5, 0x20
    lwz     r0, R13Off_m0x5f30(r13)
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x5f8c(r13)
    cmplwi  r31, 0x0
    lwz     r3, R13Off_m0x5f8c(r13)
    addi    r0, r3, 0x400
    stw     r0, R13Off_m0x5f88(r13)
    beq-    branch_0x802be6e4
    lwz     r3, R13Off_m0x5f30(r13)
    li      r4, 0x1120
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, R13Off_m0x5f84(r13)
    lwz     r3, R13Off_m0x5f84(r13)
    addi    r0, r3, 0x1120
    stw     r3, R13Off_m0x5f7c(r13)
    stw     r0, R13Off_m0x5f80(r13)
    b       branch_0x802be6ec

branch_0x802be6e4:
    li      r0, 0x0
    stw     r0, R13Off_m0x5f84(r13)
branch_0x802be6ec:
    li      r0, 0x0
    stw     r27, R13Off_m0x5f6c(r13)
    cmplwi  r29, 0x0
    stw     r0, R13Off_m0x5f78(r13)
    beq-    branch_0x802be708
    mr      r3, r29
    b       branch_0x802be70c

branch_0x802be708:
    li      r3, -0x1
branch_0x802be70c:
    li      r0, 0x0
    stw     r3, R13Off_m0x5f74(r13)
    stw     r31, R13Off_m0x5f68(r13)
    stw     r0, R13Off_m0x5f64(r13)
    stw     r30, R13Off_m0x5f60(r13)
    bl      firstSrcData__Fv
    mr      r4, r28
    bl      decompSZS_subroutine__FPUcPUc
    lwz     r3, R13Off_m0x5f8c(r13)
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    lwz     r3, R13Off_m0x5f84(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802be74c
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802be74c:
    lmw     r27, 0x24(sp)
    li      r3, 0x0
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl decompSZS_subroutine__FPUcPUc
decompSZS_subroutine__FPUcPUc: # 0x802be764
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x59
    li      r0, 0x0
    bne-    branch_0x802be7b4
    lbz     r5, 0x1(r3)
    cmpwi   r5, 0x61
    bne-    branch_0x802be7b4
    lbz     r5, 0x2(r3)
    cmpwi   r5, 0x7a
    bne-    branch_0x802be7b4
    lbz     r5, 0x3(r3)
    cmpwi   r5, 0x30
    beq-    branch_0x802be7bc
branch_0x802be7b4:
    li      r3, -0x1
    b       branch_0x802be9d8

branch_0x802be7bc:
    lwz     r7, R13Off_m0x5f68(r13)
    lwz     r6, 0x4(r3)
    lwz     r5, R13Off_m0x5f60(r13)
    subf    r6, r7, r6
    add     r6, r30, r6
    add     r5, r30, r5
    cmplw   r6, r5
    addi    r31, r6, 0x0
    ble-    branch_0x802be7e4
    mr      r31, r5
branch_0x802be7e4:
    addi    r3, r3, 0x10
branch_0x802be7e8:
    cmpwi   r4, 0x0
    bne-    branch_0x802be818
    lwz     r0, R13Off_m0x5f70(r13)
    cmplw   r3, r0
    ble-    branch_0x802be80c
    lwz     r0, R13Off_m0x5f74(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802be80c
    bl      nextSrcData__FPUc
branch_0x802be80c:
    lbz     r0, 0x0(r3)
    li      r4, 0x8
    addi    r3, r3, 0x1
branch_0x802be818:
    rlwinm. r5, r0, 0, 24, 24
    beq-    branch_0x802be8a8
    lwz     r6, R13Off_m0x5f68(r13)
    cmplwi  r6, 0x0
    beq-    branch_0x802be880
    lwz     r5, R13Off_m0x5f64(r13)
    cmplw   r5, r6
    blt-    branch_0x802be84c
    lbz     r5, 0x0(r3)
    stb     r5, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802be9d4
branch_0x802be84c:
    lwz     r6, R13Off_m0x5f7c(r13)
    lbz     r7, 0x0(r3)
    addi    r5, r6, 0x1
    stw     r5, R13Off_m0x5f7c(r13)
    stb     r7, 0x0(r6)
    lwz     r6, R13Off_m0x5f7c(r13)
    lwz     r5, R13Off_m0x5f80(r13)
    cmplw   r6, r5
    bne-    branch_0x802be878
    lwz     r5, R13Off_m0x5f84(r13)
    stw     r5, R13Off_m0x5f7c(r13)
branch_0x802be878:
    addi    r3, r3, 0x1
    b       branch_0x802be898

branch_0x802be880:
    lbz     r5, 0x0(r3)
    addi    r3, r3, 0x1
    stb     r5, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802be9d4
branch_0x802be898:
    lwz     r5, R13Off_m0x5f64(r13)
    addi    r5, r5, 0x1
    stw     r5, R13Off_m0x5f64(r13)
    b       branch_0x802be9c4

branch_0x802be8a8:
    lwz     r8, R13Off_m0x5f68(r13)
    lbz     r6, 0x0(r3)
    cmplwi  r8, 0x0
    lbz     r9, 0x1(r3)
    insrwi  r9, r6, 4, 20
    srawi   r5, r6, 4
    addi    r3, r3, 0x2
    beq-    branch_0x802be8f4
    lwz     r6, R13Off_m0x5f7c(r13)
    lwz     r7, R13Off_m0x5f84(r13)
    subf    r6, r9, r6
    addi    r6, r6, -0x1
    cmplw   r6, r7
    addi    r9, r6, 0x0
    bge-    branch_0x802be8fc
    lwz     r6, R13Off_m0x5f80(r13)
    subf    r6, r7, r6
    add     r9, r9, r6
    b       branch_0x802be8fc

branch_0x802be8f4:
    subf    r6, r9, r30
    addi    r9, r6, -0x1
branch_0x802be8fc:
    cmpwi   r5, 0x0
    bne-    branch_0x802be914
    lbz     r5, 0x0(r3)
    addi    r3, r3, 0x1
    addi    r5, r5, 0x12
    b       branch_0x802be918

branch_0x802be914:
    addi    r5, r5, 0x2
branch_0x802be918:
    cmplwi  r8, 0x0
    beq-    branch_0x802be998
branch_0x802be920:
    lwz     r7, R13Off_m0x5f64(r13)
    lwz     r6, R13Off_m0x5f68(r13)
    cmplw   r7, r6
    blt-    branch_0x802be944
    lbz     r6, 0x0(r9)
    stb     r6, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802be9c4
branch_0x802be944:
    lwz     r7, R13Off_m0x5f7c(r13)
    lbz     r8, 0x0(r9)
    addi    r6, r7, 0x1
    stw     r6, R13Off_m0x5f7c(r13)
    stb     r8, 0x0(r7)
    lwz     r6, R13Off_m0x5f7c(r13)
    lwz     r7, R13Off_m0x5f80(r13)
    cmplw   r6, r7
    bne-    branch_0x802be970
    lwz     r6, R13Off_m0x5f84(r13)
    stw     r6, R13Off_m0x5f7c(r13)
branch_0x802be970:
    addi    r9, r9, 0x1
    cmplw   r9, r7
    bne-    branch_0x802be980
    lwz     r9, R13Off_m0x5f84(r13)
branch_0x802be980:
    lwz     r6, R13Off_m0x5f64(r13)
    subic.  r5, r5, 0x1
    addi    r6, r6, 0x1
    stw     r6, R13Off_m0x5f64(r13)
    bne+    branch_0x802be920
    b       branch_0x802be9c4

branch_0x802be998:
    lbz     r6, 0x0(r9)
    stb     r6, 0x0(r30)
    addi    r30, r30, 0x1
    cmplw   r30, r31
    beq-    branch_0x802be9c4
    lwz     r6, R13Off_m0x5f64(r13)
    subic.  r5, r5, 0x1
    addi    r9, r9, 0x1
    addi    r6, r6, 0x1
    stw     r6, R13Off_m0x5f64(r13)
    bne+    branch_0x802be998
branch_0x802be9c4:
    cmplw   r30, r31
    slwi    r0, r0, 1
    addi    r4, r4, -0x1
    blt+    branch_0x802be7e8
branch_0x802be9d4:
    li      r3, 0x0
branch_0x802be9d8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl firstSrcData__Fv
firstSrcData__Fv: # 0x802be9f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    lwz     r4, R13Off_m0x5f88(r13)
    lwz     r3, R13Off_m0x5f8c(r13)
    addi    r0, r4, -0x19
    lwz     r31, R13Off_m0x5f74(r13)
    subf    r4, r3, r4
    stw     r0, R13Off_m0x5f70(r13)
    cmplw   r31, r4
    addi    r30, r3, 0x0
    addi    r0, r4, 0x0
    bge-    branch_0x802bea30
    b       branch_0x802bea34

branch_0x802bea30:
    mr      r31, r0
branch_0x802bea34:
    lwz     r4, R13Off_m0x5f6c(r13)
    addi    r0, r31, 0x1f
    lwz     r3, R13Off_m0x5f78(r13)
    addi    r5, r30, 0x0
    clrrwi  r6, r0, 5
    add     r4, r4, r3
    li      r3, 0x1
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    lwz     r4, R13Off_m0x5f78(r13)
    mr      r3, r30
    lwz     r0, R13Off_m0x5f74(r13)
    add     r4, r4, r31
    subf    r0, r31, r0
    stw     r4, R13Off_m0x5f78(r13)
    stw     r0, R13Off_m0x5f74(r13)
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl nextSrcData__FPUc
nextSrcData__FPUc: # 0x802bea8c
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    lwz     r0, R13Off_m0x5f88(r13)
    subf    r0, r4, r0
    clrlwi. r5, r0, 27
    mr      r29, r0
    beq-    branch_0x802bead0
    lwz     r3, R13Off_m0x5f8c(r13)
    addi    r0, r3, 0x20
    subf    r30, r5, r0
    b       branch_0x802bead4

branch_0x802bead0:
    lwz     r30, R13Off_m0x5f8c(r13)
branch_0x802bead4:
    addi    r3, r30, 0x0
    addi    r5, r29, 0x0
    bl      memcpy
    lwz     r0, R13Off_m0x5f88(r13)
    add     r31, r30, r29
    lwz     r3, R13Off_m0x5f74(r13)
    subf    r0, r31, r0
    cmplw   r0, r3
    mr      r28, r0
    ble-    branch_0x802beb00
    mr      r28, r3
branch_0x802beb00:
    lwz     r4, R13Off_m0x5f6c(r13)
    addi    r0, r28, 0x1f
    lwz     r3, R13Off_m0x5f78(r13)
    add     r5, r30, r29
    clrrwi  r6, r0, 5
    add     r4, r4, r3
    li      r3, 0x1
    li      r7, 0x0
    bl      orderSync__12JKRAramPieceFiUlUlUlP12JKRAramBlock
    lwz     r0, R13Off_m0x5f74(r13)
    lwz     r3, R13Off_m0x5f78(r13)
    subf    r0, r28, r0
    stw     r0, R13Off_m0x5f74(r13)
    add     r3, r3, r28
    lwz     r0, R13Off_m0x5f74(r13)
    stw     r3, R13Off_m0x5f78(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802beb50
    add     r0, r31, r28
    stw     r0, R13Off_m0x5f70(r13)
branch_0x802beb50:
    lwz     r0, 0x24(sp)
    mr      r3, r30
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl __sinit_JKRAram_cpp
__sinit_JKRAram_cpp: # 0x802beb74
    mflr    r0
    lis     r3, sAramCommandList__7JKRAram@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, sAramCommandList__7JKRAram@l
    addi    r3, r31, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, __dt__23JSUList_12JKRAMCommand_Fv@ha
    lis     r3, unk_803fd558@ha
    addi    r5, r3, unk_803fd558@l
    addi    r4, r4, __dt__23JSUList_12JKRAMCommand_Fv@l
    addi    r3, r31, 0x0
    bl      __register_global_object
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl __dt__23JSUList_12JKRAMCommand_Fv
__dt__23JSUList_12JKRAMCommand_Fv: # 0x802bebc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802bebfc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x802bebfc
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bebfc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

