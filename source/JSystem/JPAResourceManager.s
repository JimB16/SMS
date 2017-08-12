
.globl __ct__18JPATextureResourceFUlP7JKRHeap
__ct__18JPATextureResourceFUlP7JKRHeap: # 0x803364d0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r5, 0x0
    li      r5, 0x0
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    stw     r0, 0x0(r31)
    stw     r0, 0x24(r31)
    stw     r4, 0x28(r31)
    mr      r4, r30
    lwz     r0, 0x28(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x2c(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      initialize__17JPADefaultTextureFP7JKRHeap
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl registration__18JPATextureResourceFPCUcP7JKRHeap
registration__18JPATextureResourceFPCUcP7JKRHeap: # 0x80336540
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r4, 0x0
    addi    r31, r3, 0x0
    addi    r27, r5, 0x0
    addi    r29, r26, 0xc
    li      r28, 0x0
    li      r30, 0x0
    b       branch_0x8033659c

branch_0x8033656c:
    lwz     r3, 0x2c(r31)
    mr      r4, r29
    lwzx    r3, r3, r30
    lwz     r3, 0x4(r3)
    addi    r3, r3, 0xc
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80336594
    mr      r3, r28
    b       branch_0x803365e8

branch_0x80336594:
    addi    r28, r28, 0x1
    addi    r30, r30, 0x4
branch_0x8033659c:
    lwz     r0, 0x24(r31)
    cmplw   r28, r0
    blt+    branch_0x8033656c
    addi    r4, r27, 0x0
    li      r3, 0x5c
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x803365cc
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    bl      __ct__10JPATextureFPCUcP7JKRHeap
branch_0x803365cc:
    lwz     r0, 0x24(r31)
    lwz     r4, 0x2c(r31)
    slwi    r0, r0, 2
    stwx    r3, r4, r0
    lwz     r3, 0x24(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x24(r31)
branch_0x803365e8:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl getByUserIndex__18JPAEmitterResourceFUs
getByUserIndex__18JPAEmitterResourceFUs: # 0x803365fc
    lwz     r5, 0x0(r3)
    clrlwi  r0, r4, 16
    li      r4, 0x0
    cmplwi  r5, 0x0
    mtctr   r5
    ble-    branch_0x80336638
branch_0x80336614:
    lwz     r5, 0x8(r3)
    lwzx    r6, r5, r4
    lhz     r5, 0x6(r6)
    cmplw   r0, r5
    bne-    branch_0x80336630
    mr      r3, r6
    blr

branch_0x80336630:
    addi    r4, r4, 0x4
    bdnz+      branch_0x80336614
branch_0x80336638:
    li      r3, 0x0
    blr


.globl __ct__18JPAResourceManagerFUlUlP7JKRHeap
__ct__18JPAResourceManagerFUlUlP7JKRHeap: # 0x80336640
    mflr    r0
    cmplwi  r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x80336674
    b       branch_0x80336678

branch_0x80336674:
    lwz     r6, R13Off_m0x5f2c(r13)
branch_0x80336678:
    stw     r6, 0x0(r28)
    li      r3, 0xc
    li      r5, 0x0
    lwz     r4, 0x0(r28)
    bl      __nw__FUlP7JKRHeapi
    mr.     r31, r3
    beq-    branch_0x803366b8
    lwz     r4, 0x0(r28)
    li      r0, 0x0
    li      r5, 0x0
    stw     r0, 0x0(r31)
    stw     r29, 0x4(r31)
    lwz     r0, 0x4(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, 0x8(r31)
branch_0x803366b8:
    stw     r31, 0x4(r28)
    li      r3, 0x30
    li      r5, 0x0
    lwz     r4, 0x0(r28)
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x803366e0
    lwz     r5, 0x0(r28)
    mr      r4, r30
    bl      __ct__18JPATextureResourceFUlP7JKRHeap
branch_0x803366e0:
    stw     r3, 0x8(r28)
    mr      r3, r28
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl load__18JPAResourceManagerFPCcUs
load__18JPAResourceManagerFPCcUs: # 0x80336708
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    bl      getGlbResource__13JKRFileLoaderFPCc
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    bl      load__18JPAResourceManagerFPCvUs
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl load__18JPAResourceManagerFPCvUs
load__18JPAResourceManagerFPCvUs: # 0x80336754
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r5
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    addi    r3, r4, 0x0
    lwz     r4, 0x0(r30)
    lwz     r5, 0x8(r30)
    bl      load__24JPAEmitterLoaderDataBaseFPCUcP7JKRHeapP18JPATextureResource
    lwz     r5, 0x4(r30)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    cmplw   r4, r0
    bge-    branch_0x803367a8
    sth     r31, 0x6(r3)
    lwz     r0, 0x0(r5)
    lwz     r4, 0x8(r5)
    slwi    r0, r0, 2
    stwx    r3, r4, r0
branch_0x803367a8:
    lwz     r3, 0x0(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r5)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr

