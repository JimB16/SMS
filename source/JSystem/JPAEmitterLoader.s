
.globl load__24JPAEmitterLoaderDataBaseFPCUcP7JKRHeapP18JPATextureResource
load__24JPAEmitterLoaderDataBaseFPCUcP7JKRHeapP18JPATextureResource: # 0x803353b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    lwz     r6, 0x0(r3)
    addis   r0, r6, 0xb5bb
    cmplwi  r0, 0x4646
    bne-    branch_0x80335424
    lwz     r5, 0x4(r3)
    addis   r0, r5, 0x9590
    cmplwi  r0, 0x6131
    bne-    branch_0x80335424
    addi    r5, r3, 0x0
    addi    r6, r3, 0x0
    addi    r3, sp, 0x14
    bl      __ct__20JPAEmitterLoader_v10FP7JKRHeapPCUcPC15JPABinaryHeader
    addi    r3, sp, 0x14
    addi    r4, r31, 0x0
    bl      load__20JPAEmitterLoader_v10FP18JPATextureResource
    lis     r4, 0x803e
    addi    r0, r4, 0x4498
    lis     r4, 0x803e
    stw     r0, 0x14(sp)
    addi    r0, r4, 0x448c
    stw     r0, 0x14(sp)
    b       branch_0x80335428

branch_0x80335424:
    li      r3, 0x0
branch_0x80335428:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__20JPAEmitterLoader_v10Fv
__dt__20JPAEmitterLoader_v10Fv: # 0x8033543c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80335480
    lis     r3, 0x803e
    addi    r0, r3, 0x4498
    stw     r0, 0x0(r31)
    beq-    branch_0x80335470
    lis     r3, 0x803e
    addi    r0, r3, 0x448c
    stw     r0, 0x0(r31)
branch_0x80335470:
    extsh.  r0, r4
    ble-    branch_0x80335480
    mr      r3, r31
    bl      __dl__FPv
branch_0x80335480:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__20JPAEmitterLoader_v10FP7JKRHeapPCUcPC15JPABinaryHeader
__ct__20JPAEmitterLoader_v10FP7JKRHeapPCUcPC15JPABinaryHeader: # 0x80335498
    lis     r7, 0x803e
    addi    r0, r7, 0x448c
    stw     r0, 0x0(r3)
    lis     r7, 0x803e
    li      r8, 0x0
    stw     r5, 0x8(r3)
    addi    r0, r7, 0x4498
    stw     r6, 0xc(r3)
    stw     r8, 0x10(r3)
    stw     r4, 0x4(r3)
    stw     r0, 0x0(r3)
    blr


.globl __dt__16JPAEmitterLoaderFv
__dt__16JPAEmitterLoaderFv: # 0x803354c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x803354fc
    lis     r3, 0x803e
    addi    r3, r3, 0x448c
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x803354fc
    mr      r3, r31
    bl      __dl__FPv
branch_0x803354fc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__20JPAEmitterLoader_v10FP18JPATextureResource
load__20JPAEmitterLoader_v10FP18JPATextureResource: # 0x80335514
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r23, 0x34(sp)
    addi    r23, r4, 0x0
    addi    r31, r3, 0x0
    lwz     r4, 0x4(r3)
    li      r3, 0x8
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x8033554c
    li      r0, 0x0
    stw     r0, 0x0(r3)
branch_0x8033554c:
    stw     r3, 0x10(r31)
    li      r5, 0x20
    li      r24, 0x0
    lwz     r3, 0xc(r31)
    li      r25, 0x0
    li      r26, 0x0
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x803355c4
branch_0x80335574:
    lwz     r0, 0x8(r31)
    add     r3, r0, r5
    lwz     r4, 0x0(r3)
    lwz     r3, 0x4(r3)
    addis   r0, r4, 0xb9b4
    cmplwi  r0, 0x4431
    bne-    branch_0x80335598
    addi    r24, r24, 0x1
    b       branch_0x803355bc

branch_0x80335598:
    addis   r0, r4, 0xabbb
    cmplwi  r0, 0x5831
    bne-    branch_0x803355ac
    addi    r25, r25, 0x1
    b       branch_0x803355bc

branch_0x803355ac:
    addis   r0, r4, 0xb4ba
    cmplwi  r0, 0x4131
    bne-    branch_0x803355bc
    addi    r26, r26, 0x1
branch_0x803355bc:
    add     r5, r5, r3
    bdnz+      branch_0x80335574
branch_0x803355c4:
    lwz     r3, 0x10(r31)
    li      r0, 0x1
    li      r5, 0x0
    sth     r0, 0x4(r3)
    lwz     r3, 0x10(r31)
    lwz     r4, 0x4(r31)
    lhz     r0, 0x4(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    lwz     r4, 0x10(r31)
    li      r5, 0x0
    stw     r3, 0x0(r4)
    li      r3, 0x24
    lwz     r4, 0x4(r31)
    bl      __nw__FUlP7JKRHeapi
    mr.     r29, r3
    beq-    branch_0x80335638
    li      r0, 0x0
    stw     r0, 0x0(r29)
    stw     r0, 0x4(r29)
    stw     r0, 0x8(r29)
    stw     r0, 0xc(r29)
    stw     r0, 0x10(r29)
    stw     r0, 0x14(r29)
    stw     r0, 0x18(r29)
    stw     r0, 0x1c(r29)
    stb     r0, 0x20(r29)
    stb     r0, 0x21(r29)
    stb     r0, 0x22(r29)
branch_0x80335638:
    clrlwi. r0, r26, 24
    stb     r26, 0x22(r29)
    beq-    branch_0x80335658
    lwz     r4, 0x4(r31)
    slwi    r3, r0, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    b       branch_0x8033565c

branch_0x80335658:
    li      r3, 0x0
branch_0x8033565c:
    stw     r3, 0x14(r29)
    clrlwi. r0, r24, 24
    stb     r24, 0x20(r29)
    beq-    branch_0x80335680
    lwz     r4, 0x4(r31)
    slwi    r3, r0, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    b       branch_0x80335684

branch_0x80335680:
    li      r3, 0x0
branch_0x80335684:
    stw     r3, 0x18(r29)
    clrlwi. r0, r25, 24
    stb     r25, 0x21(r29)
    beq-    branch_0x803356a8
    lwz     r5, 0x4(r31)
    slwi    r3, r0, 1
    li      r4, 0x4
    bl      alloc__7JKRHeapFUliP7JKRHeap
    b       branch_0x803356ac

branch_0x803356a8:
    li      r3, 0x0
branch_0x803356ac:
    stw     r3, 0x1c(r29)
    clrlwi  r25, r25, 24
    li      r30, 0x20
    li      r26, 0x0
    li      r27, 0x0
    li      r28, 0x0
    b       branch_0x80335884

branch_0x803356c8:
    lwz     r0, 0x8(r31)
    add     r3, r0, r30
    lwz     r4, 0x0(r3)
    lwz     r24, 0x4(r3)
    addis   r0, r4, 0xb9b4
    cmplwi  r0, 0x4431
    bne-    branch_0x8033571c
    lwz     r4, 0x4(r31)
    li      r3, 0x8
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x8033570c
    lwz     r0, 0x8(r31)
    lwz     r5, 0x4(r31)
    add     r4, r0, r30
    bl      __ct__12JPADataBlockFPCUcP7JKRHeap
branch_0x8033570c:
    lwz     r4, 0x18(r29)
    stwx    r3, r4, r26
    addi    r26, r26, 0x4
    b       branch_0x8033587c

branch_0x8033571c:
    addis   r0, r4, 0xb4ba
    cmplwi  r0, 0x4131
    bne-    branch_0x80335760
    lwz     r4, 0x4(r31)
    li      r3, 0x8
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80335750
    lwz     r0, 0x8(r31)
    lwz     r5, 0x4(r31)
    add     r4, r0, r30
    bl      __ct__16JPAKeyFrameAnimeFPCUcP7JKRHeap
branch_0x80335750:
    lwz     r4, 0x14(r29)
    stwx    r3, r4, r27
    addi    r27, r27, 0x4
    b       branch_0x8033587c

branch_0x80335760:
    addis   r0, r4, 0xbdbb
    cmplwi  r0, 0x4d31
    bne-    branch_0x8033579c
    lwz     r4, 0x4(r31)
    li      r3, 0x8
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80335794
    lwz     r0, 0x8(r31)
    lwz     r5, 0x4(r31)
    add     r4, r0, r30
    bl      __ct__12JPADataBlockFPCUcP7JKRHeap
branch_0x80335794:
    stw     r3, 0x0(r29)
    b       branch_0x8033587c

branch_0x8033579c:
    addis   r0, r4, 0xbdad
    cmplwi  r0, 0x5031
    bne-    branch_0x803357d8
    lwz     r4, 0x4(r31)
    li      r3, 0x88
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x803357d0
    lwz     r0, 0x8(r31)
    lwz     r5, 0x4(r31)
    add     r4, r0, r30
    bl      __ct__12JPABaseShapeFPCUcP7JKRHeap
branch_0x803357d0:
    stw     r3, 0x4(r29)
    b       branch_0x8033587c

branch_0x803357d8:
    addis   r0, r4, 0xbaad
    cmplwi  r0, 0x5031
    bne-    branch_0x80335810
    lwz     r4, 0x4(r31)
    li      r3, 0x80
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80335808
    lwz     r0, 0x8(r31)
    add     r4, r0, r30
    bl      __ct__13JPAExtraShapeFPCUc
branch_0x80335808:
    stw     r3, 0x8(r29)
    b       branch_0x8033587c

branch_0x80335810:
    addis   r0, r4, 0xacad
    cmplwi  r0, 0x5031
    bne-    branch_0x80335848
    lwz     r4, 0x4(r31)
    li      r3, 0x50
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80335840
    lwz     r0, 0x8(r31)
    add     r4, r0, r30
    bl      __ct__13JPASweepShapeFPCUc
branch_0x80335840:
    stw     r3, 0xc(r29)
    b       branch_0x8033587c

branch_0x80335848:
    addis   r0, r4, 0xbaac
    cmplwi  r0, 0x5831
    bne-    branch_0x8033587c
    lwz     r4, 0x4(r31)
    li      r3, 0x2c
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x80335878
    lwz     r0, 0x8(r31)
    add     r4, r0, r30
    bl      __ct__13JPAExTexShapeFPCUc
branch_0x80335878:
    stw     r3, 0x10(r29)
branch_0x8033587c:
    add     r30, r30, r24
    addi    r28, r28, 0x1
branch_0x80335884:
    lwz     r3, 0xc(r31)
    lwz     r0, 0xc(r3)
    subf    r0, r25, r0
    cmplw   r28, r0
    blt+    branch_0x803356c8
    li      r27, 0x0
    li      r24, 0x0
    b       branch_0x803358d0

branch_0x803358a4:
    lwz     r0, 0x8(r31)
    mr      r3, r23
    lwz     r5, 0x4(r31)
    add     r4, r0, r30
    lwz     r26, 0x4(r4)
    bl      registration__18JPATextureResourceFPCUcP7JKRHeap
    lwz     r4, 0x1c(r29)
    add     r30, r30, r26
    addi    r27, r27, 0x1
    sthx    r3, r4, r24
    addi    r24, r24, 0x2
branch_0x803358d0:
    cmpw    r27, r25
    blt+    branch_0x803358a4
    lwz     r3, 0x10(r31)
    lwz     r3, 0x0(r3)
    stw     r29, 0x0(r3)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x5c(sp)
    lmw     r23, 0x34(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __ct__16JPAKeyFrameAnimeFPCUcP7JKRHeap
__ct__16JPAKeyFrameAnimeFPCUcP7JKRHeap: # 0x803358fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__12JPADataBlockFPCUcP7JKRHeap
    lis     r3, 0x803e
    addi    r0, r3, 0x4480
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__16JPAKeyFrameAnimeFv
__dt__16JPAKeyFrameAnimeFv: # 0x80335938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8033597c
    lis     r3, 0x803e
    addi    r0, r3, 0x4480
    stw     r0, 0x0(r31)
    beq-    branch_0x8033596c
    lis     r3, 0x803e
    addi    r0, r3, 0x4474
    stw     r0, 0x0(r31)
branch_0x8033596c:
    extsh.  r0, r4
    ble-    branch_0x8033597c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8033597c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

