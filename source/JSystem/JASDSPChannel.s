
.globl forceStop__Q28JASystem11TDSPChannelFv
forceStop__Q28JASystem11TDSPChannelFv: # 0x80314660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80314688
    li      r3, 0x0
    b       branch_0x803146dc

branch_0x80314688:
    cmplwi  r0, 0x1
    bne-    branch_0x80314698
    li      r3, 0x0
    b       branch_0x803146dc

branch_0x80314698:
    lwz     r3, 0xc(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x803146b0
    li      r3, 0x0
    b       branch_0x803146dc

branch_0x803146b0:
    lwz     r3, -0x5c1c(r13)
    li      r0, 0x1
    subi    r3, r3, 0x1
    stw     r3, -0x5c1c(r13)
    lwz     r3, 0xc(r31)
    sth     r0, 0x10a(r3)
    lwz     r3, 0xc(r31)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    li      r0, 0x2
    stb     r0, 0x1(r31)
    li      r3, 0x1
branch_0x803146dc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl forceDelete__Q28JASystem11TDSPChannelFv
forceDelete__Q28JASystem11TDSPChannelFv: # 0x803146f0
    li      r0, 0x0
    stw     r0, 0x8(r3)
    stb     r0, 0x3(r3)
    stw     r0, 0x10(r3)
    blr


.globl play__Q28JASystem11TDSPChannelFv
play__Q28JASystem11TDSPChannelFv: # 0x80314704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0xc(r3)
    bl      playStart__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r3, 0xc(r31)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl stop__Q28JASystem11TDSPChannelFv
stop__Q28JASystem11TDSPChannelFv: # 0x8031473c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    lwz     r4, 0xc(r3)
    sth     r0, 0x0(r4)
    lwz     r3, 0xc(r3)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initAll__Q28JASystem11TDSPChannelFv
initAll__Q28JASystem11TDSPChannelFv: # 0x8031476c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    stw     r28, 0x8(sp)
    lbz     r0, -0x5c14(r13)
    extsb.  r0, r0
    bne-    branch_0x803147a0
    li      r0, 0x1
    stw     r0, -0x5c18(r13)
    stb     r0, -0x5c14(r13)
branch_0x803147a0:
    lwz     r0, -0x5c18(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x8031483c
    lwz     r4, -0x5b30(r13)
    li      r3, 0x508
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    lis     r5, 0x8031
    addi    r4, r4, 0x489c
    addi    r5, r5, 0x485c
    li      r6, 0x14
    li      r7, 0x40
    bl      __construct_new_array
    stw     r3, -0x5c20(r13)
    li      r28, 0x0
    li      r30, 0x1
    li      r31, 0x0
    b       branch_0x80314828

branch_0x803147ec:
    clrlwi  r0, r28, 24
    lwz     r3, -0x5c20(r13)
    mulli   r0, r0, 0x14
    add     r29, r3, r0
    stb     r28, 0x0(r29)
    mr      r3, r28
    stb     r30, 0x1(r29)
    stw     r31, 0x8(r29)
    sth     r31, 0x6(r29)
    stw     r31, 0x10(r29)
    stb     r31, 0x3(r29)
    sth     r31, 0x4(r29)
    bl      getDSPHandle__Q28JASystem12DSPInterfaceFUc
    stw     r3, 0xc(r29)
    addi    r28, r28, 0x1
branch_0x80314828:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x40
    blt+    branch_0x803147ec
    li      r0, 0x0
    stw     r0, -0x5c18(r13)
branch_0x8031483c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    lwz     r29, 0xc(sp)
    lwz     r28, 0x8(sp)
    addi    sp, sp, 0x18
    blr


.globl __dt__Q28JASystem11TDSPChannelFv
__dt__Q28JASystem11TDSPChannelFv: # 0x8031485c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80314884
    extsh.  r0, r4
    ble-    branch_0x80314884
    mr      r3, r31
    bl      __dl__FPv
branch_0x80314884:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q28JASystem11TDSPChannelFv
__ct__Q28JASystem11TDSPChannelFv: # 0x8031489c
    li      r0, 0x0
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl alloc__Q28JASystem11TDSPChannelFUlUl
alloc__Q28JASystem11TDSPChannelFUlUl: # 0x803148ac
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    beq-    branch_0x803148dc
    li      r3, 0x0
    b       branch_0x8031498c

branch_0x803148dc:
    li      r29, 0x0
    li      r31, 0x0
branch_0x803148e4:
    lwz     r0, -0x5c20(r13)
    add     r3, r0, r31
    lbz     r4, 0x1(r3)
    cmplwi  r4, 0x1
    bne-    branch_0x80314900
    li      r0, 0x1
    b       branch_0x80314904

branch_0x80314900:
    li      r0, 0x0
branch_0x80314904:
    cmpwi   r0, 0x0
    beq-    branch_0x80314978
    cmplwi  r4, 0x1
    bne-    branch_0x8031491c
    li      r0, 0x1
    b       branch_0x80314920

branch_0x8031491c:
    li      r0, 0x0
branch_0x80314920:
    cmpwi   r0, 0x0
    bne-    branch_0x80314930
    li      r30, 0x0
    b       branch_0x8031494c

branch_0x80314930:
    li      r0, 0x0
    stb     r0, 0x1(r3)
    li      r30, 0x1
    stw     r28, 0x8(r3)
    stb     r30, 0x3(r3)
    lwz     r3, 0xc(r3)
    bl      allocInit__Q38JASystem12DSPInterface9DSPBufferFv
branch_0x8031494c:
    cmpwi   r30, 0x0
    beq-    branch_0x80314978
    lwz     r4, -0x7410(r13)
    lwz     r3, -0x5c1c(r13)
    subi    r5, r4, 0x1
    lwz     r0, -0x5c20(r13)
    addi    r4, r3, 0x1
    stw     r5, -0x7410(r13)
    add     r3, r0, r31
    stw     r4, -0x5c1c(r13)
    b       branch_0x8031498c

branch_0x80314978:
    addi    r29, r29, 0x1
    cmplwi  r29, 0x40
    addi    r31, r31, 0x14
    blt+    branch_0x803148e4
    li      r3, 0x0
branch_0x8031498c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl
free__Q28JASystem11TDSPChannelFPQ28JASystem11TDSPChannelUl: # 0x803149ac
    cmplwi  r3, 0x0
    bne-    branch_0x803149bc
    li      r3, -0x1
    blr

branch_0x803149bc:
    lwz     r0, 0x8(r3)
    cmplw   r0, r4
    bne-    branch_0x803149d0
    li      r0, 0x1
    b       branch_0x803149d4

branch_0x803149d0:
    li      r0, 0x0
branch_0x803149d4:
    cmpwi   r0, 0x0
    bne-    branch_0x803149e4
    li      r3, -0x2
    blr

branch_0x803149e4:
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x803149fc
    lwz     r4, -0x5c1c(r13)
    subi    r0, r4, 0x1
    stw     r0, -0x5c1c(r13)
branch_0x803149fc:
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x80314a14
    lwz     r4, -0x7410(r13)
    addi    r0, r4, 0x1
    stw     r0, -0x7410(r13)
branch_0x80314a14:
    li      r0, 0x1
    stb     r0, 0x1(r3)
    li      r0, 0x0
    stb     r0, 0x3(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x8(r3)
    li      r3, 0x0
    blr


.globl getLower__Q28JASystem11TDSPChannelFv
getLower__Q28JASystem11TDSPChannelFv: # 0x80314a34
    lwz     r5, -0x5c20(r13)
    li      r7, 0xff
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    b       branch_0x80314acc

branch_0x80314a4c:
    clrlwi  r0, r10, 24
    mulli   r0, r0, 0x14
    add     r4, r5, r0
    lbz     r0, 0x1(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80314ac8
    cmplwi  r0, 0x1
    bne-    branch_0x80314a74
    li      r0, 0x1
    b       branch_0x80314a78

branch_0x80314a74:
    li      r0, 0x0
branch_0x80314a78:
    cmpwi   r0, 0x0
    beq-    branch_0x80314a88
    mr      r8, r10
    b       branch_0x80314ad8

branch_0x80314a88:
    lwz     r0, 0x10(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80314ac8
    lbz     r6, 0x3(r4)
    clrlwi  r0, r7, 24
    cmplw   r6, r0
    bgt-    branch_0x80314ac8
    bne-    branch_0x80314ab8
    lwz     r3, 0xc(r4)
    lwz     r0, 0x10c(r3)
    cmplw   r0, r9
    blt-    branch_0x80314ac8
branch_0x80314ab8:
    lwz     r3, 0xc(r4)
    addi    r8, r10, 0x0
    addi    r7, r6, 0x0
    lwz     r9, 0x10c(r3)
branch_0x80314ac8:
    addi    r10, r10, 0x1
branch_0x80314acc:
    clrlwi  r0, r10, 24
    cmplwi  r0, 0x40
    blt+    branch_0x80314a4c
branch_0x80314ad8:
    clrlwi  r0, r8, 24
    mulli   r0, r0, 0x14
    add     r3, r5, r0
    blr


.globl getLowerActive__Q28JASystem11TDSPChannelFv
getLowerActive__Q28JASystem11TDSPChannelFv: # 0x80314ae8
    lwz     r5, -0x5c20(r13)
    li      r7, 0xff
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    b       branch_0x80314b58

branch_0x80314b00:
    clrlwi  r0, r10, 24
    mulli   r0, r0, 0x14
    add     r4, r5, r0
    lbz     r0, 0x1(r4)
    cmplwi  r0, 0x2
    beq-    branch_0x80314b54
    cmplwi  r0, 0x1
    beq-    branch_0x80314b54
    lbz     r6, 0x3(r4)
    clrlwi  r0, r7, 24
    cmplw   r6, r0
    bgt-    branch_0x80314b54
    bne-    branch_0x80314b44
    lwz     r3, 0xc(r4)
    lwz     r0, 0x10c(r3)
    cmplw   r0, r9
    blt-    branch_0x80314b54
branch_0x80314b44:
    lwz     r3, 0xc(r4)
    addi    r8, r10, 0x0
    addi    r7, r6, 0x0
    lwz     r9, 0x10c(r3)
branch_0x80314b54:
    addi    r10, r10, 0x1
branch_0x80314b58:
    clrlwi  r0, r10, 24
    cmplwi  r0, 0x40
    blt+    branch_0x80314b00
    clrlwi  r0, r8, 24
    mulli   r0, r0, 0x14
    add     r3, r5, r0
    blr


.globl breakLower__Q28JASystem11TDSPChannelFUc
breakLower__Q28JASystem11TDSPChannelFUc: # 0x80314b74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    bl      getLower__Q28JASystem11TDSPChannelFv
    mr      r31, r3
    lbz     r3, 0x3(r3)
    clrlwi  r0, r30, 24
    cmplw   r3, r0
    ble-    branch_0x80314bac
    li      r3, 0x0
    b       branch_0x80314c48

branch_0x80314bac:
    lbz     r0, 0x1(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x80314bc0
    li      r0, 0x1
    b       branch_0x80314bc4

branch_0x80314bc0:
    li      r0, 0x0
branch_0x80314bc4:
    cmpwi   r0, 0x0
    bne-    branch_0x80314c3c
    lwz     r12, 0x10(r31)
    cmplwi  r12, 0x0
    beq-    branch_0x80314bec
    mtlr    r12
    addi    r3, r31, 0x0
    li      r4, 0x3
    blrl
    sth     r3, 0x6(r31)
branch_0x80314bec:
    lbz     r0, 0x1(r31)
    cmplwi  r0, 0x2
    beq-    branch_0x80314c44
    cmplwi  r0, 0x1
    beq-    branch_0x80314c44
    lwz     r3, 0xc(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80314c44
    lwz     r3, -0x5c1c(r13)
    li      r0, 0x1
    subi    r3, r3, 0x1
    stw     r3, -0x5c1c(r13)
    lwz     r3, 0xc(r31)
    sth     r0, 0x10a(r3)
    lwz     r3, 0xc(r31)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
    li      r0, 0x2
    stb     r0, 0x1(r31)
    b       branch_0x80314c44

branch_0x80314c3c:
    li      r3, 0x0
    b       branch_0x80314c48

branch_0x80314c44:
    li      r3, 0x1
branch_0x80314c48:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl updateAll__Q28JASystem11TDSPChannelFv
updateAll__Q28JASystem11TDSPChannelFv: # 0x80314c60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    bl      OSGetTick
    lwz     r0, -0x5c10(r13)
    stw     r3, -0x5c10(r13)
    subf    r29, r0, r3
    bl      getDSPSyncCount__Q28JASystem11AudioThreadFv
    subfic  r5, r3, 0x7
    lis     r3, 0x803e
    slwi    r0, r5, 2
    addi    r4, r3, 0x2fc0
    add     r3, r4, r0
    cmplwi  r5, 0x0
    stw     r29, 0x0(r3)
    beq-    branch_0x80314d48
    lwz     r3, 0x0(r4)
    lis     r0, 0x4330
    stw     r29, 0x34(sp)
    lfd     f3, 0x6c8(rtoc)
    stw     r3, 0x3c(sp)
    lfs     f0, -0x740c(r13)
    stw     r0, 0x38(sp)
    stw     r0, 0x30(sp)
    lfd     f2, 0x38(sp)
    lfd     f1, 0x30(sp)
    fsubs   f2, f2, f3
    fsubs   f1, f1, f3
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80314d48
    bl      getLowerActive__Q28JASystem11TDSPChannelFv
    lbz     r0, 0x3(r3)
    mr      r29, r3
    cmplwi  r0, 0x7e
    bgt-    branch_0x80314d48
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x1
    bne-    branch_0x80314d14
    li      r0, 0x1
    b       branch_0x80314d18

branch_0x80314d14:
    li      r0, 0x0
branch_0x80314d18:
    cmpwi   r0, 0x0
    bne-    branch_0x80314d48
    lwz     r12, 0x10(r29)
    cmplwi  r12, 0x0
    beq-    branch_0x80314d40
    mtlr    r12
    addi    r3, r29, 0x0
    li      r4, 0x3
    blrl
    sth     r3, 0x6(r29)
branch_0x80314d40:
    mr      r3, r29
    bl      forceStop__Q28JASystem11TDSPChannelFv
branch_0x80314d48:
    li      r30, 0x0
    li      r29, 0x0
branch_0x80314d50:
    lwz     r0, -0x5c20(r13)
    add     r28, r0, r29
    lbz     r0, 0x1(r28)
    lwz     r31, 0xc(r28)
    cmplwi  r0, 0x1
    beq-    branch_0x80314e50
    lhz     r0, 0x2(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80314da8
    lwz     r12, 0x10(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x80314d94
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x2
    blrl
    sth     r3, 0x6(r28)
branch_0x80314d94:
    li      r0, 0x0
    sth     r0, 0x2(r31)
    mr      r3, r31
    sth     r0, 0x0(r31)
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
branch_0x80314da8:
    lhz     r0, 0x10a(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80314dec
    lwz     r3, 0x10c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x10c(r31)
    lwz     r3, 0x10c(r31)
    lhz     r0, 0x4(r28)
    cmplw   r3, r0
    bne-    branch_0x80314dec
    lwz     r12, 0x10(r28)
    cmplwi  r12, 0x0
    beq-    branch_0x80314dec
    mtlr    r12
    addi    r3, r28, 0x0
    li      r4, 0x4
    blrl
branch_0x80314dec:
    lwz     r0, 0x10(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x80314e50
    lhz     r3, 0x6(r28)
    subi    r0, r3, 0x1
    sth     r0, 0x6(r28)
    lhz     r0, 0x6(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80314e50
    lwz     r12, 0x10(r28)
    addi    r3, r28, 0x0
    li      r4, 0x0
    mtlr    r12
    blrl
    sth     r3, 0x6(r28)
    lhz     r0, 0x6(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80314e50
    li      r0, 0x0
    sth     r0, 0x2(r31)
    li      r3, 0x1
    sth     r0, 0x0(r31)
    bl      deQueue__Q38JASystem6Driver8DSPQueueFUc
    mr      r3, r31
    bl      flushChannel__Q38JASystem12DSPInterface9DSPBufferFv
branch_0x80314e50:
    addi    r30, r30, 0x1
    cmplwi  r30, 0x40
    addi    r29, r29, 0x14
    blt+    branch_0x80314d50
    bl      checkQueue__Q38JASystem6Driver8DSPQueueFv
    bl      PPCSync
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr

