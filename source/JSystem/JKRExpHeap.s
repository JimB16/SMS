
.globl createRoot__10JKRExpHeapFib
createRoot__10JKRExpHeapFib: # 0x802c0f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    lwz     r0, -0x5f28(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c0fec
    addi    r5, r3, 0x0
    addi    r3, sp, 0x24
    addi    r4, sp, 0x20
    bl      initArena__7JKRHeapFPPcPUli
    lwz     r3, 0x24(sp)
    lwz     r5, 0x20(sp)
    cmplwi  r3, 0x0
    addi    r4, r3, 0x90
    subi    r5, r5, 0x90
    beq-    branch_0x802c0fe4
    addi    r7, r31, 0x0
    li      r6, 0x0
    bl      __ct__10JKRExpHeapFPvUlP7JKRHeapb
branch_0x802c0fe4:
    mr      r4, r3
    stw     r3, -0x5f28(r13)
branch_0x802c0fec:
    li      r0, 0x1
    stb     r0, 0x6a(r4)
    mr      r3, r4
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl create__10JKRExpHeapFUlP7JKRHeapb
create__10JKRExpHeapFUlP7JKRHeapb: # 0x802c100c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x20(sp)
    mr.     r28, r4
    bne-    branch_0x802c1038
    lwz     r28, -0x5f28(r13)
branch_0x802c1038:
    clrrwi  r31, r3, 4
    addi    r3, r31, 0x0
    addi    r5, r28, 0x0
    li      r4, 0x10
    bl      alloc__7JKRHeapFUliP7JKRHeap
    mr.     r30, r3
    addi    r4, r30, 0x90
    bne-    branch_0x802c1060
    li      r3, 0x0
    b       branch_0x802c10d0

branch_0x802c1060:
    subic.  r0, r31, 0x90
    bgt-    branch_0x802c1090
    lis     r3, 0x803b
    crxor   6, 6, 6
    subi    r3, r3, 0x6b38
    subi    r4, r31, 0x90
    bl      OSReport
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r3, 0x0
    b       branch_0x802c10d0

branch_0x802c1090:
    cmplwi  r30, 0x0
    addi    r3, r30, 0x0
    beq-    branch_0x802c10ac
    addi    r6, r28, 0x0
    addi    r7, r29, 0x0
    subi    r5, r31, 0x90
    bl      __ct__10JKRExpHeapFPvUlP7JKRHeapb
branch_0x802c10ac:
    cmplwi  r3, 0x0
    bne-    branch_0x802c10c8
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r3, 0x0
    b       branch_0x802c10d0

branch_0x802c10c8:
    li      r0, 0x0
    stb     r0, 0x6a(r3)
branch_0x802c10d0:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl create__10JKRExpHeapFPvUlP7JKRHeapb
create__10JKRExpHeapFPvUlP7JKRHeapb: # 0x802c10f0
    mflr    r0
    cmplwi  r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x802c1138
    lwz     r3, -0x5f28(r13)
    mr      r4, r29
    bl      find__7JKRHeapCFPv
    mr.     r5, r3
    bne-    branch_0x802c1138
    li      r3, 0x0
    b       branch_0x802c1178

branch_0x802c1138:
    mr.     r6, r29
    subi    r0, r30, 0x90
    clrrwi  r8, r0, 4
    addi    r4, r6, 0x90
    li      r3, 0x0
    beq-    branch_0x802c1168
    mr      r3, r6
    beq-    branch_0x802c1168
    addi    r6, r5, 0x0
    addi    r7, r31, 0x0
    subi    r5, r8, 0x90
    bl      __ct__10JKRExpHeapFPvUlP7JKRHeapb
branch_0x802c1168:
    li      r0, 0x1
    stb     r0, 0x6a(r3)
    stw     r29, 0x6c(r3)
    stw     r30, 0x70(r3)
branch_0x802c1178:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl destroy__10JKRExpHeapFv
destroy__10JKRExpHeapFv: # 0x802c1194
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lbz     r0, 0x6a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x802c11f4
    lwz     r3, 0x4c(r30)
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    mr      r31, r0
    beq-    branch_0x802c120c
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      free__7JKRHeapFPvP7JKRHeap
    b       branch_0x802c120c

branch_0x802c11f4:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, -0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802c120c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__10JKRExpHeapFPvUlP7JKRHeapb
__ct__10JKRExpHeapFPvUlP7JKRHeapb: # 0x802c1224
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__7JKRHeapFPvUlP7JKRHeapb
    lis     r3, 0x803e
    lwz     r30, 0x8(sp)
    subi    r0, r3, 0xc8
    stw     r0, 0x0(r30)
    li      r31, 0x0
    li      r0, 0xff
    stb     r31, 0x68(r30)
    subi    r6, r29, 0x10
    li      r4, 0x0
    stb     r0, 0x69(r30)
    li      r5, 0x0
    li      r7, 0x0
    stw     r28, 0x74(r30)
    li      r8, 0x0
    lwz     r0, 0x74(r30)
    stw     r0, 0x78(r30)
    lwz     r3, 0x74(r30)
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    stw     r31, 0x7c(r30)
    mr      r3, r30
    stw     r31, 0x80(r30)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__10JKRExpHeapFv
__dt__10JKRExpHeapFv: # 0x802c12c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802c1318
    lis     r3, 0x803e
    subi    r0, r3, 0xc8
    stw     r0, 0x0(r30)
    mr      r3, r30
    bl      dispose__7JKRHeapFv
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7JKRHeapFv
    extsh.  r0, r31
    ble-    branch_0x802c1318
    mr      r3, r30
    bl      __dl__FPv
branch_0x802c1318:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl changeGroupID__10JKRExpHeapFUc
changeGroupID__10JKRExpHeapFUc: # 0x802c1334
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0x18
    bl      OSLockMutex
    lbz     r31, 0x69(r29)
    addi    r3, r29, 0x18
    stb     r30, 0x69(r29)
    bl      OSUnlockMutex
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl alloc__10JKRExpHeapFUli
alloc__10JKRExpHeapFUli: # 0x802c138c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r3, r28, 0x18
    bl      OSLockMutex
    cmplwi  r29, 0x4
    bge-    branch_0x802c13c8
    li      r29, 0x4
branch_0x802c13c8:
    li      r0, 0x0
    cmpwi   r30, 0x0
    stw     r0, -0x5f54(r13)
    blt-    branch_0x802c141c
    cmpwi   r30, 0x4
    bgt-    branch_0x802c13fc
    li      r0, 0x1
    stw     r0, -0x5f58(r13)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      allocFromHead__10JKRExpHeapFUl
    mr      r31, r3
    b       branch_0x802c145c

branch_0x802c13fc:
    li      r0, 0x2
    stw     r0, -0x5f58(r13)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      allocFromHead__10JKRExpHeapFUli
    mr      r31, r3
    b       branch_0x802c145c

branch_0x802c141c:
    neg     r5, r30
    cmpwi   r5, 0x4
    bgt-    branch_0x802c1444
    li      r0, 0x3
    stw     r0, -0x5f58(r13)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      allocFromTail__10JKRExpHeapFUl
    mr      r31, r3
    b       branch_0x802c145c

branch_0x802c1444:
    li      r0, 0x4
    stw     r0, -0x5f58(r13)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      allocFromTail__10JKRExpHeapFUli
    mr      r31, r3
branch_0x802c145c:
    cmplwi  r31, 0x0
    bne-    branch_0x802c14a4
    lis     r3, 0x803b
    crxor   6, 6, 6
    subi    r3, r3, 0x6b28
    addi    r4, r29, 0x0
    bl      JUTWarningConsole_f
    lbz     r0, 0x64(r28)
    cmplwi  r0, 0x1
    bne-    branch_0x802c14a4
    lwz     r12, -0x5f24(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x802c14a4
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    blrl
branch_0x802c14a4:
    addi    r3, r28, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl allocFromHead__10JKRExpHeapFUli
allocFromHead__10JKRExpHeapFUli: # 0x802c14d0
    mflr    r0
    li      r8, -0x1
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x1
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r28, r3, 0x0
    addi    r3, r4, 0x3
    clrrwi  r29, r3, 2
    not     r4, r0
    li      r31, 0x0
    li      r30, 0x0
    lwz     r9, 0x74(r28)
    b       branch_0x802c1558

branch_0x802c1508:
    addi    r6, r9, 0x10
    lwz     r7, 0x4(r9)
    add     r3, r5, r6
    subi    r0, r3, 0x1
    and     r0, r4, r0
    subf    r3, r6, r0
    add     r0, r29, r3
    cmplw   r7, r0
    blt-    branch_0x802c1554
    cmplw   r8, r7
    ble-    branch_0x802c1554
    lbz     r0, 0x68(r28)
    addi    r8, r7, 0x0
    addi    r30, r9, 0x0
    cmplwi  r0, 0x0
    addi    r31, r3, 0x0
    bne-    branch_0x802c1560
    cmplw   r7, r29
    beq-    branch_0x802c1560
branch_0x802c1554:
    lwz     r9, 0xc(r9)
branch_0x802c1558:
    cmplwi  r9, 0x0
    bne+    branch_0x802c1508
branch_0x802c1560:
    cmplwi  r30, 0x0
    stw     r8, -0x5f50(r13)
    stw     r31, -0x5f4c(r13)
    stw     r30, -0x5f48(r13)
    beq-    branch_0x802c178c
    cmplwi  r31, 0x10
    blt-    branch_0x802c166c
    lwz     r5, -0x5f54(r13)
    addi    r3, r30, 0x0
    subi    r4, r31, 0x10
    addi    r0, r5, 0x1
    stw     r0, -0x5f54(r13)
    li      r5, 0x0
    li      r6, 0x0
    lwz     r27, 0x8(r30)
    li      r7, 0x0
    lwz     r26, 0xc(r30)
    li      r8, 0x0
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    mr.     r31, r3
    beq-    branch_0x802c15e4
    lwz     r5, -0x5f54(r13)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r0, r5, 0x2
    stw     r0, -0x5f54(r13)
    li      r6, 0x0
    li      r7, 0x0
    lbz     r5, 0x69(r28)
    li      r8, 0x0
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    mr      r29, r3
    b       branch_0x802c15e8

branch_0x802c15e4:
    li      r29, 0x0
branch_0x802c15e8:
    cmplwi  r29, 0x0
    beq-    branch_0x802c1608
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r5, r27, 0x0
    addi    r6, r29, 0x0
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
    b       branch_0x802c161c

branch_0x802c1608:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r5, r27, 0x0
    addi    r6, r26, 0x0
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
branch_0x802c161c:
    cmplwi  r29, 0x0
    beq-    branch_0x802c1644
    lwz     r5, -0x5f54(r13)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r0, r5, 0x4
    stw     r0, -0x5f54(r13)
    addi    r5, r30, 0x0
    addi    r6, r26, 0x0
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
branch_0x802c1644:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r4, -0x5f54(r13)
    addi    r3, r31, 0x10
    stw     r29, -0x5f44(r13)
    addi    r0, r4, 0x8
    stw     r0, -0x5f54(r13)
    stw     r31, -0x5f40(r13)
    b       branch_0x802c179c

branch_0x802c166c:
    cmplwi  r31, 0x0
    beq-    branch_0x802c1704
    lwz     r5, -0x5f54(r13)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r0, r5, 0x10
    stw     r0, -0x5f54(r13)
    lwz     r26, 0x8(r30)
    lwz     r27, 0xc(r30)
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r0, 0x4(r30)
    add     r30, r30, r31
    addi    r3, r30, 0x0
    subf    r0, r31, r0
    stw     r0, 0x4(r30)
    addi    r4, r29, 0x0
    clrlwi  r6, r31, 24
    lbz     r5, 0x69(r28)
    li      r7, 0x0
    li      r8, 0x0
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    mr.     r4, r3
    beq-    branch_0x802c16e4
    lwz     r5, -0x5f54(r13)
    addi    r3, r28, 0x0
    addi    r6, r27, 0x0
    addi    r0, r5, 0x20
    stw     r0, -0x5f54(r13)
    addi    r5, r26, 0x0
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
branch_0x802c16e4:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r4, -0x5f54(r13)
    addi    r3, r30, 0x10
    addi    r0, r4, 0x40
    stw     r0, -0x5f54(r13)
    b       branch_0x802c179c

branch_0x802c1704:
    lwz     r5, -0x5f54(r13)
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r0, r5, 0x80
    stw     r0, -0x5f54(r13)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r26, 0x8(r30)
    li      r8, 0x0
    lwz     r27, 0xc(r30)
    lbz     r5, 0x69(r28)
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    addi    r29, r3, 0x0
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    cmplwi  r29, 0x0
    beq-    branch_0x802c176c
    lwz     r5, -0x5f54(r13)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r0, r5, 0x100
    stw     r0, -0x5f54(r13)
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
branch_0x802c176c:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r4, -0x5f54(r13)
    addi    r3, r30, 0x10
    addi    r0, r4, 0x200
    stw     r0, -0x5f54(r13)
    b       branch_0x802c179c

branch_0x802c178c:
    lwz     r4, -0x5f54(r13)
    li      r3, 0x0
    addi    r0, r4, 0x400
    stw     r0, -0x5f54(r13)
branch_0x802c179c:
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl allocFromHead__10JKRExpHeapFUl
allocFromHead__10JKRExpHeapFUl: # 0x802c17b0
    mflr    r0
    li      r5, -0x1
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3
    clrrwi  r4, r0, 2
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r6, 0x74(r3)
    b       branch_0x802c1814

branch_0x802c17e0:
    lwz     r3, 0x4(r6)
    cmplw   r3, r4
    blt-    branch_0x802c1810
    cmplw   r5, r3
    ble-    branch_0x802c1810
    lbz     r0, 0x68(r30)
    addi    r5, r3, 0x0
    addi    r31, r6, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x802c181c
    cmplw   r3, r4
    beq-    branch_0x802c181c
branch_0x802c1810:
    lwz     r6, 0xc(r6)
branch_0x802c1814:
    cmplwi  r6, 0x0
    bne+    branch_0x802c17e0
branch_0x802c181c:
    lwz     r3, -0x5f54(r13)
    cmplwi  r31, 0x0
    addi    r0, r3, 0x1
    stw     r0, -0x5f54(r13)
    beq-    branch_0x802c18b4
    lbz     r5, 0x69(r30)
    addi    r3, r31, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    lwz     r5, -0x5f54(r13)
    mr.     r4, r3
    addi    r0, r5, 0x2
    stw     r0, -0x5f54(r13)
    beq-    branch_0x802c187c
    lwz     r5, -0x5f54(r13)
    addi    r3, r30, 0x0
    addi    r0, r5, 0x4
    stw     r0, -0x5f54(r13)
    lwz     r5, 0x8(r31)
    lwz     r6, 0xc(r31)
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
    b       branch_0x802c1894

branch_0x802c187c:
    lwz     r5, -0x5f54(r13)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r0, r5, 0x8
    stw     r0, -0x5f54(r13)
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
branch_0x802c1894:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r4, -0x5f54(r13)
    addi    r3, r31, 0x10
    addi    r0, r4, 0x10
    stw     r0, -0x5f54(r13)
    b       branch_0x802c18c4

branch_0x802c18b4:
    lwz     r4, -0x5f54(r13)
    li      r3, 0x0
    addi    r0, r4, 0x20
    stw     r0, -0x5f54(r13)
branch_0x802c18c4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl allocFromTail__10JKRExpHeapFUli
allocFromTail__10JKRExpHeapFUli: # 0x802c18dc
    mflr    r0
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x1
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    li      r31, 0x0
    li      r30, 0x0
    li      r29, 0x0
    lwz     r8, 0x78(r3)
    not     r3, r0
    b       branch_0x802c1944

branch_0x802c190c:
    lwz     r7, 0x4(r8)
    add     r5, r8, r7
    addi    r5, r5, 0x10
    subf    r0, r4, r5
    and     r6, r3, r0
    subf    r0, r6, r5
    cmplw   r7, r0
    mr      r28, r0
    blt-    branch_0x802c1940
    addi    r30, r8, 0x0
    subf    r31, r28, r7
    subi    r29, r6, 0x10
    b       branch_0x802c194c

branch_0x802c1940:
    lwz     r8, 0x8(r8)
branch_0x802c1944:
    cmplwi  r8, 0x0
    bne+    branch_0x802c190c
branch_0x802c194c:
    cmplwi  r30, 0x0
    beq-    branch_0x802c1a1c
    cmplwi  r31, 0x10
    blt-    branch_0x802c199c
    lbz     r7, 0x69(r27)
    addi    r3, r29, 0x0
    addi    r6, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r8, 0x80
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    lwz     r0, 0x4(r30)
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    subf    r5, r28, r0
    subi    r0, r5, 0x10
    stw     r0, 0x4(r30)
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    addi    r3, r29, 0x10
    b       branch_0x802c1a20

branch_0x802c199c:
    cmplwi  r31, 0x0
    beq-    branch_0x802c19e0
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lbz     r7, 0x69(r27)
    addi    r3, r29, 0x0
    addi    r6, r28, 0x0
    ori     r8, r31, 0x80
    li      r4, 0x0
    li      r5, 0x0
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    addi    r3, r29, 0x10
    b       branch_0x802c1a20

branch_0x802c19e0:
    addi    r3, r27, 0x0
    addi    r4, r30, 0x0
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lbz     r7, 0x69(r27)
    addi    r3, r29, 0x0
    addi    r6, r28, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r8, 0x80
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    addi    r3, r27, 0x0
    addi    r4, r29, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    addi    r3, r29, 0x10
    b       branch_0x802c1a20

branch_0x802c1a1c:
    li      r3, 0x0
branch_0x802c1a20:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl allocFromTail__10JKRExpHeapFUl
allocFromTail__10JKRExpHeapFUl: # 0x802c1a34
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x3
    clrrwi  r4, r0, 2
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    lwz     r3, 0x78(r3)
    b       branch_0x802c1a7c

branch_0x802c1a64:
    lwz     r0, 0x4(r3)
    cmplw   r0, r4
    blt-    branch_0x802c1a78
    mr      r31, r3
    b       branch_0x802c1a84

branch_0x802c1a78:
    lwz     r3, 0x8(r3)
branch_0x802c1a7c:
    cmplwi  r3, 0x0
    bne+    branch_0x802c1a64
branch_0x802c1a84:
    cmplwi  r31, 0x0
    beq-    branch_0x802c1af4
    lbz     r7, 0x69(r29)
    addi    r3, r31, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r8, 0x0
    bl      allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    mr.     r30, r3
    beq-    branch_0x802c1ab4
    mr      r4, r31
    b       branch_0x802c1ac8

branch_0x802c1ab4:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    addi    r30, r31, 0x0
    li      r4, 0x0
branch_0x802c1ac8:
    cmplwi  r4, 0x0
    beq-    branch_0x802c1ae0
    lwz     r5, 0x8(r31)
    mr      r3, r29
    lwz     r6, 0xc(r31)
    bl      setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
branch_0x802c1ae0:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    addi    r3, r30, 0x10
    b       branch_0x802c1af8

branch_0x802c1af4:
    li      r3, 0x0
branch_0x802c1af8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl free__10JKRExpHeapFPv
free__10JKRExpHeapFPv: # 0x802c1b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x18
    bl      OSLockMutex
    lwz     r0, 0x30(r30)
    cmplw   r0, r31
    bgt-    branch_0x802c1b68
    lwz     r0, 0x34(r30)
    cmplw   r31, r0
    bgt-    branch_0x802c1b68
    mr      r3, r31
    bl      getHeapBlock__Q210JKRExpHeap9CMemBlockFPv
    cmplwi  r3, 0x0
    beq-    branch_0x802c1b68
    mr      r4, r30
    bl      free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap
branch_0x802c1b68:
    addi    r3, r30, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl freeAll__10JKRExpHeapFv
freeAll__10JKRExpHeapFv: # 0x802c1b88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x18
    bl      OSLockMutex
    mr      r3, r31
    bl      freeAll__7JKRHeapFv
    lwz     r0, 0x30(r31)
    li      r4, 0x0
    li      r5, 0x0
    stw     r0, 0x74(r31)
    li      r7, 0x0
    li      r8, 0x0
    lwz     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    lwz     r6, 0x38(r31)
    lwz     r3, 0x74(r31)
    subi    r6, r6, 0x10
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    li      r0, 0x0
    stw     r0, 0x7c(r31)
    addi    r3, r31, 0x18
    stw     r0, 0x80(r31)
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl freeTail__10JKRExpHeapFv
freeTail__10JKRExpHeapFv: # 0x802c1c04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0x18
    bl      OSLockMutex
    lwz     r31, 0x7c(r29)
    b       branch_0x802c1c68

branch_0x802c1c30:
    lbz     r0, 0x2(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802c1c64
    lwz     r5, 0x4(r31)
    addi    r4, r31, 0x10
    mr      r3, r29
    bl      dispose__7JKRHeapFPvUl
    lwz     r30, 0xc(r31)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap
    mr      r31, r30
    b       branch_0x802c1c68

branch_0x802c1c64:
    lwz     r31, 0xc(r31)
branch_0x802c1c68:
    cmplwi  r31, 0x0
    bne+    branch_0x802c1c30
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl resize__10JKRExpHeapFPvUl
resize__10JKRExpHeapFPvUl: # 0x802c1c94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0x18
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    bl      OSLockMutex
    mr      r3, r28
    bl      getHeapBlock__Q210JKRExpHeap9CMemBlockFPv
    mr.     r31, r3
    beq-    branch_0x802c1cec
    lwz     r0, 0x30(r29)
    cmplw   r28, r0
    blt-    branch_0x802c1cec
    lwz     r0, 0x34(r29)
    cmplw   r0, r28
    bge-    branch_0x802c1cfc
branch_0x802c1cec:
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    li      r3, -0x1
    b       branch_0x802c1e34

branch_0x802c1cfc:
    addi    r0, r30, 0x3
    lwz     r3, 0x4(r31)
    clrrwi  r30, r0, 2
    cmplw   r30, r3
    bne-    branch_0x802c1d20
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    mr      r3, r30
    b       branch_0x802c1e34

branch_0x802c1d20:
    ble-    branch_0x802c1df0
    addi    r0, r31, 0x10
    lwz     r4, 0x74(r29)
    add     r0, r0, r3
    li      r28, 0x0
    b       branch_0x802c1d4c

branch_0x802c1d38:
    cmplw   r4, r0
    bne-    branch_0x802c1d48
    mr      r28, r4
    b       branch_0x802c1d54

branch_0x802c1d48:
    lwz     r4, 0xc(r4)
branch_0x802c1d4c:
    cmplwi  r4, 0x0
    bne+    branch_0x802c1d38
branch_0x802c1d54:
    cmplwi  r28, 0x0
    bne-    branch_0x802c1d6c
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    li      r3, -0x1
    b       branch_0x802c1e34

branch_0x802c1d6c:
    lwz     r0, 0x4(r28)
    add     r3, r3, r0
    addi    r0, r3, 0x10
    cmplw   r30, r0
    ble-    branch_0x802c1d90
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    li      r3, -0x1
    b       branch_0x802c1e34

branch_0x802c1d90:
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r3, 0x4(r31)
    lwz     r0, 0x4(r28)
    add     r3, r0, r3
    addi    r0, r3, 0x10
    stw     r0, 0x4(r31)
    lwz     r0, 0x4(r31)
    subf    r0, r30, r0
    cmplwi  r0, 0x10
    ble-    branch_0x802c1e28
    lbz     r5, 0x3(r31)
    mr      r3, r31
    lbz     r6, 0x2(r31)
    addi    r4, r30, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    mr.     r4, r3
    beq-    branch_0x802c1e28
    mr      r3, r29
    bl      recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    b       branch_0x802c1e28

branch_0x802c1df0:
    subf    r0, r30, r3
    cmplwi  r0, 0x10
    ble-    branch_0x802c1e28
    lbz     r5, 0x3(r31)
    mr      r3, r31
    lbz     r6, 0x2(r31)
    addi    r4, r30, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
    mr.     r4, r3
    beq-    branch_0x802c1e28
    mr      r3, r29
    bl      recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
branch_0x802c1e28:
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    lwz     r3, 0x4(r31)
branch_0x802c1e34:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl getSize__10JKRExpHeapFPv
getSize__10JKRExpHeapFPv: # 0x802c1e54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r3, r29, 0x18
    bl      OSLockMutex
    mr      r3, r30
    bl      getHeapBlock__Q210JKRExpHeap9CMemBlockFPv
    mr.     r31, r3
    beq-    branch_0x802c1ea4
    lwz     r0, 0x30(r29)
    cmplw   r30, r0
    blt-    branch_0x802c1ea4
    lwz     r0, 0x34(r29)
    cmplw   r0, r30
    bge-    branch_0x802c1eb4
branch_0x802c1ea4:
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    li      r3, -0x1
    b       branch_0x802c1ec0

branch_0x802c1eb4:
    addi    r3, r29, 0x18
    bl      OSUnlockMutex
    lwz     r3, 0x4(r31)
branch_0x802c1ec0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl getFreeSize__10JKRExpHeapFv
getFreeSize__10JKRExpHeapFv: # 0x802c1edc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x18
    bl      OSLockMutex
    lwz     r3, 0x74(r30)
    li      r31, 0x0
    b       branch_0x802c1f1c

branch_0x802c1f08:
    lwz     r0, 0x4(r3)
    cmpw    r31, r0
    bge-    branch_0x802c1f18
    mr      r31, r0
branch_0x802c1f18:
    lwz     r3, 0xc(r3)
branch_0x802c1f1c:
    cmplwi  r3, 0x0
    bne+    branch_0x802c1f08
    addi    r3, r30, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getTotalFreeSize__10JKRExpHeapFv
getTotalFreeSize__10JKRExpHeapFv: # 0x802c1f48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x18
    bl      OSLockMutex
    lwz     r3, 0x74(r30)
    b       branch_0x802c1f80

branch_0x802c1f74:
    lwz     r0, 0x4(r3)
    lwz     r3, 0xc(r3)
    add     r31, r31, r0
branch_0x802c1f80:
    cmplwi  r3, 0x0
    bne+    branch_0x802c1f74
    addi    r3, r30, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getUsedSize__10JKRExpHeapCFUc
getUsedSize__10JKRExpHeapCFUc: # 0x802c1fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x18
    bl      OSLockMutex
    lwz     r4, 0x7c(r30)
    clrlwi  r3, r31, 24
    li      r31, 0x0
    b       branch_0x802c1ffc

branch_0x802c1fe0:
    lbz     r0, 0x3(r4)
    cmplw   r0, r3
    bne-    branch_0x802c1ff8
    lwz     r0, 0x4(r4)
    add     r31, r0, r31
    addi    r31, r31, 0x10
branch_0x802c1ff8:
    lwz     r4, 0xc(r4)
branch_0x802c1ffc:
    cmplwi  r4, 0x0
    bne+    branch_0x802c1fe0
    addi    r3, r30, 0x18
    bl      OSUnlockMutex
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl check__10JKRExpHeapFv
check__10JKRExpHeapFv: # 0x802c2028
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r28, r3, 0x0
    lis     r3, 0x803b
    subi    r31, r3, 0x6b38
    addi    r3, r28, 0x18
    bl      OSLockMutex
    lwz     r27, 0x7c(r28)
    li      r30, 0x0
    li      r29, 0x1
    b       branch_0x802c211c

branch_0x802c205c:
    lhz     r3, 0x0(r27)
    cmplwi  r3, 0x484d
    beq-    branch_0x802c2088
    srawi   r0, r3, 8
    crxor   6, 6, 6
    clrlwi  r6, r3, 24
    clrlwi  r5, r0, 24
    addi    r4, r27, 0x0
    addi    r3, r31, 0x38
    li      r29, 0x0
    bl      JUTWarningConsole_f
branch_0x802c2088:
    lwz     r5, 0xc(r27)
    cmplwi  r5, 0x0
    beq-    branch_0x802c20e0
    lhz     r0, 0x0(r5)
    cmplwi  r0, 0x484d
    beq-    branch_0x802c20b8
    addi    r4, r27, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0x64
    li      r29, 0x0
    bl      JUTWarningConsole_f
    b       branch_0x802c2124

branch_0x802c20b8:
    lwz     r0, 0x8(r5)
    cmplw   r0, r27
    beq-    branch_0x802c2100
    addi    r4, r5, 0x0
    crxor   6, 6, 6
    mr      r5, r0
    addi    r3, r31, 0x94
    li      r29, 0x0
    bl      JUTWarningConsole_f
    b       branch_0x802c2100

branch_0x802c20e0:
    lwz     r5, 0x80(r28)
    cmplw   r5, r27
    beq-    branch_0x802c2100
    addi    r4, r27, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0xc0
    li      r29, 0x0
    bl      JUTWarningConsole_f
branch_0x802c2100:
    lbz     r0, 0x2(r27)
    lwz     r3, 0x4(r27)
    clrlwi  r0, r0, 25
    lwz     r27, 0xc(r27)
    add     r0, r3, r0
    add     r30, r0, r30
    addi    r30, r30, 0x10
branch_0x802c211c:
    cmplwi  r27, 0x0
    bne+    branch_0x802c205c
branch_0x802c2124:
    lwz     r27, 0x74(r28)
    b       branch_0x802c21b4

branch_0x802c212c:
    lwz     r4, 0xc(r27)
    lwz     r0, 0x4(r27)
    cmplwi  r4, 0x0
    add     r30, r0, r30
    addi    r30, r30, 0x10
    beq-    branch_0x802c2190
    lwz     r5, 0x8(r4)
    cmplw   r5, r27
    beq-    branch_0x802c2160
    crxor   6, 6, 6
    addi    r3, r31, 0x94
    li      r29, 0x0
    bl      JUTWarningConsole_f
branch_0x802c2160:
    lwz     r5, 0x4(r27)
    lwz     r0, 0xc(r27)
    addi    r3, r5, 0x10
    add     r3, r27, r3
    cmplw   r3, r0
    ble-    branch_0x802c21b0
    addi    r4, r27, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0xec
    li      r29, 0x0
    bl      JUTWarningConsole_f
    b       branch_0x802c21b0

branch_0x802c2190:
    lwz     r5, 0x78(r28)
    cmplw   r5, r27
    beq-    branch_0x802c21b0
    addi    r4, r27, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0xc0
    li      r29, 0x0
    bl      JUTWarningConsole_f
branch_0x802c21b0:
    lwz     r27, 0xc(r27)
branch_0x802c21b4:
    cmplwi  r27, 0x0
    bne+    branch_0x802c212c
    lwz     r4, 0x38(r28)
    cmplw   r30, r4
    beq-    branch_0x802c21dc
    crxor   6, 6, 6
    addi    r5, r30, 0x0
    addi    r3, r31, 0x114
    li      r29, 0x0
    bl      JUTWarningConsole_f
branch_0x802c21dc:
    clrlwi. r0, r29, 24
    bne-    branch_0x802c21ec
    addi    r3, r31, 0x144
    bl      JUTWarningConsole
branch_0x802c21ec:
    addi    r3, r28, 0x18
    bl      OSUnlockMutex
    mr      r3, r29
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
appendUsedList__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock: # 0x802c220c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x802c2248
    lis     r3, 0x803b
    crxor   6, 6, 6
    lis     r4, 0x803b
    subi    r5, r4, 0x69bc
    subi    r3, r3, 0x69cc
    li      r4, 0x5f7
    bl      OSPanic
branch_0x802c2248:
    lwz     r3, 0x80(r30)
    li      r0, 0x484d
    cmplwi  r3, 0x0
    sth     r0, 0x0(r31)
    beq-    branch_0x802c2268
    stw     r31, 0xc(r3)
    stw     r3, 0x8(r31)
    b       branch_0x802c2270

branch_0x802c2268:
    li      r0, 0x0
    stw     r0, 0x8(r31)
branch_0x802c2270:
    stw     r31, 0x80(r30)
    lwz     r0, 0x7c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802c2284
    stw     r31, 0x7c(r30)
branch_0x802c2284:
    li      r0, 0x0
    stw     r0, 0xc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock
setFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlock: # 0x802c22a4
    cmplwi  r5, 0x0
    bne-    branch_0x802c22bc
    stw     r4, 0x74(r3)
    li      r0, 0x0
    stw     r0, 0x8(r4)
    b       branch_0x802c22c4

branch_0x802c22bc:
    stw     r4, 0xc(r5)
    stw     r5, 0x8(r4)
branch_0x802c22c4:
    cmplwi  r6, 0x0
    bne-    branch_0x802c22dc
    stw     r4, 0x78(r3)
    li      r0, 0x0
    stw     r0, 0xc(r4)
    b       branch_0x802c22e4

branch_0x802c22dc:
    stw     r4, 0x8(r6)
    stw     r6, 0xc(r4)
branch_0x802c22e4:
    li      r0, 0x0
    sth     r0, 0x0(r4)
    blr


.globl removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
removeFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock: # 0x802c22f0
    lwz     r5, 0x8(r4)
    lwz     r4, 0xc(r4)
    cmplwi  r5, 0x0
    bne-    branch_0x802c2308
    stw     r4, 0x74(r3)
    b       branch_0x802c230c

branch_0x802c2308:
    stw     r4, 0xc(r5)
branch_0x802c230c:
    cmplwi  r4, 0x0
    bne-    branch_0x802c231c
    stw     r5, 0x78(r3)
    blr

branch_0x802c231c:
    stw     r5, 0x8(r4)
    blr


.globl recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock: # 0x802c2324
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
    lwz     r6, 0x4(r4)
    sth     r5, 0x0(r4)
    add     r7, r4, r6
    lbz     r0, 0x2(r4)
    clrlwi  r3, r0, 25
    clrlwi. r0, r0, 25
    beq-    branch_0x802c237c
    subf    r31, r3, r4
    stb     r5, 0x3(r31)
    add     r6, r6, r3
    add     r7, r31, r6
    stb     r5, 0x2(r31)
    stw     r6, 0x4(r31)
branch_0x802c237c:
    lwz     r3, 0x74(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x802c23c4
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    stw     r31, 0x74(r30)
    li      r0, 0x0
    stw     r31, 0x78(r30)
    stw     r31, 0x74(r30)
    stw     r0, 0x8(r31)
    stw     r31, 0x78(r30)
    stw     r0, 0xc(r31)
    sth     r0, 0x0(r31)
    b       branch_0x802c24f0

branch_0x802c23c4:
    cmplw   r3, r7
    blt-    branch_0x802c2428
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    lwz     r3, 0x74(r30)
    li      r0, 0x0
    stw     r31, 0x74(r30)
    cmplwi  r3, 0x0
    stw     r0, 0x8(r31)
    bne-    branch_0x802c2408
    stw     r31, 0x78(r30)
    stw     r0, 0xc(r31)
    b       branch_0x802c2410

branch_0x802c2408:
    stw     r31, 0x8(r3)
    stw     r3, 0xc(r31)
branch_0x802c2410:
    li      r0, 0x0
    sth     r0, 0x0(r31)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    b       branch_0x802c24f0

branch_0x802c2428:
    lwz     r0, 0x78(r30)
    cmplw   r0, r31
    bgt-    branch_0x802c2490
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
    lwz     r3, 0x78(r30)
    cmplwi  r3, 0x0
    bne-    branch_0x802c2468
    stw     r31, 0x74(r30)
    li      r0, 0x0
    stw     r0, 0x8(r31)
    b       branch_0x802c2470

branch_0x802c2468:
    stw     r31, 0xc(r3)
    stw     r3, 0x8(r31)
branch_0x802c2470:
    stw     r31, 0x78(r30)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r0, 0xc(r31)
    sth     r0, 0x0(r31)
    lwz     r4, 0x8(r31)
    bl      joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    b       branch_0x802c24f0

branch_0x802c2490:
    mr      r29, r3
    b       branch_0x802c24e8

branch_0x802c2498:
    cmplw   r29, r31
    bge-    branch_0x802c24e4
    lwz     r0, 0xc(r29)
    cmplw   r31, r0
    bge-    branch_0x802c24e4
    stw     r0, 0xc(r31)
    li      r0, 0x0
    addi    r3, r30, 0x0
    stw     r29, 0x8(r31)
    mr      r4, r31
    stw     r31, 0xc(r29)
    lwz     r5, 0xc(r31)
    stw     r31, 0x8(r5)
    stb     r0, 0x3(r31)
    bl      joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    b       branch_0x802c24f0

branch_0x802c24e4:
    lwz     r29, 0xc(r29)
branch_0x802c24e8:
    cmplwi  r29, 0x0
    bne+    branch_0x802c2498
branch_0x802c24f0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
joinTwoBlocks__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock: # 0x802c250c
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r30, r4
    mr      r29, r3
    subi    r28, r5, 0x6b38
    lwz     r31, 0xc(r4)
    lwz     r4, 0x4(r4)
    lbz     r0, 0x2(r31)
    add     r26, r30, r4
    clrlwi  r0, r0, 25
    subf    r27, r0, r31
    addi    r26, r26, 0x10
    cmplw   r26, r27
    ble-    branch_0x802c2588
    addi    r4, r30, 0x0
    crxor   6, 6, 6
    addi    r3, r28, 0x198
    bl      JUTWarningConsole_f
    lwz     r3, -0x5f2c(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    addi    r3, r28, 0x16c
    crxor   6, 6, 6
    addi    r5, r28, 0x1bc
    li      r4, 0x710
    bl      OSPanic
branch_0x802c2588:
    cmplw   r26, r27
    bne-    branch_0x802c2600
    lbz     r0, 0x2(r31)
    lwz     r3, 0x4(r31)
    clrlwi  r0, r0, 25
    lwz     r4, 0x4(r30)
    add     r0, r3, r0
    add     r3, r0, r4
    addi    r0, r3, 0x10
    stw     r0, 0x4(r30)
    lwz     r3, 0x8(r30)
    lwz     r4, 0xc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x802c25d0
    stw     r30, 0x74(r29)
    li      r0, 0x0
    stw     r0, 0x8(r30)
    b       branch_0x802c25d8

branch_0x802c25d0:
    stw     r30, 0xc(r3)
    stw     r3, 0x8(r30)
branch_0x802c25d8:
    cmplwi  r4, 0x0
    bne-    branch_0x802c25f0
    stw     r30, 0x78(r29)
    li      r0, 0x0
    stw     r0, 0xc(r30)
    b       branch_0x802c25f8

branch_0x802c25f0:
    stw     r30, 0x8(r4)
    stw     r4, 0xc(r30)
branch_0x802c25f8:
    li      r0, 0x0
    sth     r0, 0x0(r30)
branch_0x802c2600:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl dump__10JKRExpHeapFv
dump__10JKRExpHeapFv: # 0x802c2614
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r26, r3, 0x0
    lis     r3, 0x803b
    subi    r31, r3, 0x6b38
    addi    r3, r26, 0x18
    bl      OSLockMutex
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    addi    r3, r31, 0x1cc
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x0
    bl      JUTReportConsole
    addi    r3, r31, 0x204
    bl      JUTReportConsole
    lwz     r0, 0x7c(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802c2680
    addi    r3, rtoc, 0x58
    bl      JUTReportConsole
branch_0x802c2680:
    lwz     r25, 0x7c(r26)
    b       branch_0x802c2704

branch_0x802c2688:
    lhz     r0, 0x0(r25)
    cmplwi  r0, 0x484d
    beq-    branch_0x802c26a8
    addi    r4, r25, 0x0
    crxor   6, 6, 6
    addi    r3, r31, 0x214
    bl      JUTReportConsole_f
    b       branch_0x802c270c

branch_0x802c26a8:
    lbz     r3, 0x2(r25)
    addi    r5, r25, 0x10
    rlwinm. r0, r3, 0, 24, 24
    clrlwi  r8, r3, 25
    beq-    branch_0x802c26c4
    addi    r4, rtoc, 0x60
    b       branch_0x802c26c8

branch_0x802c26c4:
    addi    r4, rtoc, 0x68
branch_0x802c26c8:
    lwz     r6, 0x4(r25)
    addi    r3, r31, 0x250
    lbz     r7, 0x3(r25)
    crxor   6, 6, 6
    lwz     r9, 0x8(r25)
    lwz     r10, 0xc(r25)
    bl      JUTReportConsole_f
    lbz     r0, 0x2(r25)
    addi    r28, r28, 0x1
    lwz     r3, 0x4(r25)
    clrlwi  r0, r0, 25
    lwz     r25, 0xc(r25)
    add     r0, r3, r0
    add     r29, r0, r29
    addi    r29, r29, 0x10
branch_0x802c2704:
    cmplwi  r25, 0x0
    bne+    branch_0x802c2688
branch_0x802c270c:
    addi    r3, r31, 0x278
    bl      JUTReportConsole
    lwz     r0, 0x74(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802c2728
    addi    r3, rtoc, 0x58
    bl      JUTReportConsole
branch_0x802c2728:
    lwz     r25, 0x74(r26)
    b       branch_0x802c2764

branch_0x802c2730:
    lbz     r0, 0x2(r25)
    addi    r5, r25, 0x10
    lwz     r6, 0x4(r25)
    addi    r3, r31, 0x250
    lbz     r7, 0x3(r25)
    lwz     r9, 0x8(r25)
    clrlwi  r8, r0, 25
    lwz     r10, 0xc(r25)
    crxor   6, 6, 6
    addi    r4, rtoc, 0x70
    bl      JUTReportConsole_f
    lwz     r25, 0xc(r25)
    addi    r27, r27, 0x1
branch_0x802c2764:
    cmplwi  r25, 0x0
    bne+    branch_0x802c2730
    lwz     r5, 0x38(r26)
    lis     r0, 0x4330
    stw     r29, 0x24(sp)
    mr      r4, r29
    lfd     f2, 0x80(rtoc)
    stw     r5, 0x1c(sp)
    mr      r6, r28
    lfs     f3, 0x78(rtoc)
    addi    r7, r27, 0x0
    stw     r0, 0x20(sp)
    creqv   6, 6, 6
    addi    r3, r31, 0x288
    stw     r0, 0x18(sp)
    lfd     f1, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fmuls   f1, f3, f0
    bl      JUTReportConsole_f
    addi    r3, r26, 0x18
    bl      OSUnlockMutex
    mr      r3, r30
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl dump_sort__10JKRExpHeapFv
dump_sort__10JKRExpHeapFv: # 0x802c27dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r26, r3, 0x0
    lis     r3, 0x803b
    subi    r31, r3, 0x6b38
    addi    r3, r26, 0x18
    bl      OSLockMutex
    mr      r3, r26
    lwz     r12, 0x0(r26)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    addi    r3, r31, 0x1cc
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x0
    bl      JUTReportConsole
    addi    r3, r31, 0x204
    bl      JUTReportConsole
    lwz     r0, 0x7c(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802c284c
    addi    r3, rtoc, 0x58
    bl      JUTReportConsole
    b       branch_0x802c2904

branch_0x802c284c:
    li      r4, 0x0
branch_0x802c2850:
    lwz     r3, 0x7c(r26)
    li      r25, -0x1
    b       branch_0x802c2874

branch_0x802c285c:
    cmplw   r4, r3
    bge-    branch_0x802c2870
    cmplw   r3, r25
    bge-    branch_0x802c2870
    mr      r25, r3
branch_0x802c2870:
    lwz     r3, 0xc(r3)
branch_0x802c2874:
    cmplwi  r3, 0x0
    bne+    branch_0x802c285c
    addis   r0, r25, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802c2904
    lhz     r0, 0x0(r25)
    cmplwi  r0, 0x484d
    beq-    branch_0x802c28a4
    crxor   6, 6, 6
    addi    r3, r31, 0x214
    bl      JUTReportConsole_f
    b       branch_0x802c2904

branch_0x802c28a4:
    lbz     r3, 0x2(r25)
    addi    r5, r25, 0x10
    rlwinm. r0, r3, 0, 24, 24
    clrlwi  r8, r3, 25
    beq-    branch_0x802c28c0
    addi    r4, rtoc, 0x60
    b       branch_0x802c28c4

branch_0x802c28c0:
    addi    r4, rtoc, 0x68
branch_0x802c28c4:
    lwz     r6, 0x4(r25)
    addi    r3, r31, 0x250
    lbz     r7, 0x3(r25)
    crxor   6, 6, 6
    lwz     r9, 0x8(r25)
    lwz     r10, 0xc(r25)
    bl      JUTReportConsole_f
    lbz     r0, 0x2(r25)
    mr      r4, r25
    lwz     r3, 0x4(r25)
    addi    r28, r28, 0x1
    clrlwi  r0, r0, 25
    add     r0, r3, r0
    add     r29, r0, r29
    addi    r29, r29, 0x10
    b       branch_0x802c2850

branch_0x802c2904:
    addi    r3, r31, 0x278
    bl      JUTReportConsole
    lwz     r0, 0x74(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802c2920
    addi    r3, rtoc, 0x58
    bl      JUTReportConsole
branch_0x802c2920:
    lwz     r25, 0x74(r26)
    b       branch_0x802c295c

branch_0x802c2928:
    lbz     r0, 0x2(r25)
    addi    r5, r25, 0x10
    lwz     r6, 0x4(r25)
    addi    r3, r31, 0x250
    lbz     r7, 0x3(r25)
    lwz     r9, 0x8(r25)
    clrlwi  r8, r0, 25
    lwz     r10, 0xc(r25)
    crxor   6, 6, 6
    addi    r4, rtoc, 0x70
    bl      JUTReportConsole_f
    lwz     r25, 0xc(r25)
    addi    r27, r27, 0x1
branch_0x802c295c:
    cmplwi  r25, 0x0
    bne+    branch_0x802c2928
    lwz     r5, 0x38(r26)
    lis     r0, 0x4330
    stw     r29, 0x24(sp)
    mr      r4, r29
    lfd     f2, 0x80(rtoc)
    stw     r5, 0x1c(sp)
    mr      r6, r28
    lfs     f3, 0x78(rtoc)
    addi    r7, r27, 0x0
    stw     r0, 0x20(sp)
    creqv   6, 6, 6
    addi    r3, r31, 0x288
    stw     r0, 0x18(sp)
    lfd     f1, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fmuls   f1, f3, f0
    bl      JUTReportConsole_f
    addi    r3, r26, 0x18
    bl      OSUnlockMutex
    mr      r3, r30
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc
initiate__Q210JKRExpHeap9CMemBlockFPQ210JKRExpHeap9CMemBlockPQ210JKRExpHeap9CMemBlockUlUcUc: # 0x802c29d4
    li      r0, 0x484d
    sth     r0, 0x0(r3)
    stb     r8, 0x2(r3)
    stb     r7, 0x3(r3)
    stw     r6, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r5, 0xc(r3)
    blr


.globl allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
allocFore__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc: # 0x802c29f4
    stb     r5, 0x3(r3)
    addi    r5, r4, 0x10
    li      r9, 0x0
    stb     r6, 0x2(r3)
    lwz     r0, 0x4(r3)
    cmplw   r0, r5
    blt-    branch_0x802c2a30
    add     r9, r4, r3
    stb     r7, 0x13(r9)
    stb     r8, 0x12(r9)
    lwz     r0, 0x4(r3)
    subf    r0, r5, r0
    stw     r0, 0x14(r9)
    addi    r9, r9, 0x10
    stw     r4, 0x4(r3)
branch_0x802c2a30:
    mr      r3, r9
    blr


.globl allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc
allocBack__Q210JKRExpHeap9CMemBlockFUlUcUcUcUc: # 0x802c2a38
    lwz     r0, 0x4(r3)
    addi    r9, r4, 0x10
    li      r10, 0x0
    cmplw   r0, r9
    blt-    branch_0x802c2a7c
    add     r0, r3, r0
    subf    r10, r4, r0
    stb     r7, 0x3(r10)
    ori     r0, r8, 0x80
    stb     r0, 0x2(r10)
    stw     r4, 0x4(r10)
    stb     r5, 0x3(r3)
    stb     r6, 0x2(r3)
    lwz     r0, 0x4(r3)
    subf    r0, r9, r0
    stw     r0, 0x4(r3)
    b       branch_0x802c2a88

branch_0x802c2a7c:
    stb     r7, 0x3(r3)
    li      r0, 0x80
    stb     r0, 0x2(r3)
branch_0x802c2a88:
    mr      r3, r10
    blr


.globl free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap
free__Q210JKRExpHeap9CMemBlockFP10JKRExpHeap: # 0x802c2a90
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x8(r3)
    lwz     r3, 0xc(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x802c2ab8
    stw     r3, 0x7c(r4)
    b       branch_0x802c2abc

branch_0x802c2ab8:
    stw     r3, 0xc(r5)
branch_0x802c2abc:
    cmplwi  r3, 0x0
    bne-    branch_0x802c2acc
    stw     r5, 0x80(r4)
    b       branch_0x802c2ad0

branch_0x802c2acc:
    stw     r5, 0x8(r3)
branch_0x802c2ad0:
    addi    r3, r4, 0x0
    addi    r4, r6, 0x0
    bl      recycleFreeBlock__10JKRExpHeapFPQ210JKRExpHeap9CMemBlock
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getHeapBlock__Q210JKRExpHeap9CMemBlockFPv
getHeapBlock__Q210JKRExpHeap9CMemBlockFPv: # 0x802c2af0
    cmplwi  r3, 0x0
    beq-    branch_0x802c2b04
    lhzu    r0, -0x10(r3)
    cmplwi  r0, 0x484d
    beqlr-    

branch_0x802c2b04:
    li      r3, 0x0
    blr


.globl state_register__10JKRExpHeapCFPQ27JKRHeap6TStateUl
state_register__10JKRExpHeapCFPQ27JKRHeap6TStateUl: # 0x802c2b0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    cmplwi  r31, 0xff
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x2c(sp)
    mr      r29, r3
    stw     r31, 0xc(r4)
    bgt-    branch_0x802c2b50
    addi    r3, r29, 0x0
    clrlwi  r4, r31, 24
    bl      getUsedSize__10JKRExpHeapCFUc
    stw     r3, 0x4(r30)
    b       branch_0x802c2b70

branch_0x802c2b50:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x38(r29)
    subf    r0, r3, r0
    stw     r0, 0x4(r30)
branch_0x802c2b70:
    lwz     r4, 0x7c(r29)
    li      r3, 0x0
    b       branch_0x802c2ba8

branch_0x802c2b7c:
    cmplwi  r31, 0xff
    bgt-    branch_0x802c2b9c
    lbz     r0, 0x3(r4)
    cmplw   r0, r31
    bne-    branch_0x802c2ba4
    mulli   r0, r4, 0x3
    add     r3, r3, r0
    b       branch_0x802c2ba4

branch_0x802c2b9c:
    mulli   r0, r4, 0x3
    add     r3, r3, r0
branch_0x802c2ba4:
    lwz     r4, 0xc(r4)
branch_0x802c2ba8:
    cmplwi  r4, 0x0
    bne+    branch_0x802c2b7c
    stw     r3, 0x8(r30)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
state_compare__10JKRExpHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState: # 0x802c2bd0
    lwz     r6, 0x8(r4)
    li      r3, 0x1
    lwz     r0, 0x8(r5)
    cmplw   r6, r0
    beq-    branch_0x802c2be8
    li      r3, 0x0
branch_0x802c2be8:
    lwz     r4, 0x4(r4)
    lwz     r0, 0x4(r5)
    cmplw   r4, r0
    beqlr-    

    li      r3, 0x0
    blr


.globl getCurrentGroupId__10JKRExpHeapFv
getCurrentGroupId__10JKRExpHeapFv: # 0x802c2c00
    lbz     r3, 0x69(r3)
    blr


.globl getHeapType__10JKRExpHeapFv
getHeapType__10JKRExpHeapFv: # 0x802c2c08
    lis     r3, 0x4558
    addi    r3, r3, 0x5048
    blr

