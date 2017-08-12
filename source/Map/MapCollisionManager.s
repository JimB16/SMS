
.globl __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
__ct__20TMapCollisionManagerFUsPCcPC10TLiveActor: # 0x8018e31c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    clrlslwi  r3, r4, 16, 2
    bl      __nwa__FUl
    stw     r3, 0x0(r28)
    li      r0, 0x0
    addi    r3, r28, 0x0
    sth     r29, 0x4(r28)
    sth     r0, 0x6(r28)
    stw     r0, 0x8(r28)
    stw     r30, 0xc(r28)
    stw     r31, 0x10(r28)
    sth     r0, 0x14(r28)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__20TMapCollisionManagerFPCcUsPCc
init__20TMapCollisionManagerFPCcUsPCc: # 0x8018e394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x230(sp)
    stw     r31, 0x22c(sp)
    stw     r30, 0x228(sp)
    mr      r30, r3
    stw     r29, 0x224(sp)
    stw     r28, 0x220(sp)
    addi    r28, r4, 0x0
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018e3c8
    stw     r6, 0xc(r30)
branch_0x8018e3c8:
    clrlwi  r31, r5, 30
    clrlwi  r29, r5, 16
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    bl      createCollision__20TMapCollisionManagerFPCcUc
    lwz     r6, 0xc(r30)
    cmplwi  r6, 0x0
    beq-    branch_0x8018e418
    lbz     r0, 0x0(r6)
    cmpwi   r0, 0x2f
    beq-    branch_0x8018e41c
    crxor   6, 6, 6
    addi    r3, sp, 0x1c
    li      r4, 0x100
    addi    r5, r2, R2Off_m0x43f0
    bl      snprintf
    addi    r6, sp, 0x1c
    b       branch_0x8018e41c

branch_0x8018e414:
    b       branch_0x8018e41c

branch_0x8018e418:
    addi    r6, r2, R2Off_m0x43ec
branch_0x8018e41c:
    lbz     r0, 0x0(r28)
    cmpwi   r0, 0x2f
    beq-    branch_0x8018e444
    addi    r5, r6, 0x0
    crxor   6, 6, 6
    addi    r6, r28, 0x0
    addi    r3, sp, 0x11c
    addi    r4, r2, R2Off_m0x43e8
    bl      sprintf
    b       branch_0x8018e45c

branch_0x8018e444:
    addi    r5, r6, 0x0
    crxor   6, 6, 6
    addi    r6, r28, 0x0
    addi    r3, sp, 0x11c
    addi    r4, r2, R2Off_m0x43e0
    bl      sprintf
branch_0x8018e45c:
    lhz     r0, 0x6(r30)
    rlwinm  r5, r29, 0, 16, 29
    lwz     r3, 0x0(r30)
    addi    r4, sp, 0x11c
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    ori     r5, r5, 0x2
    lwz     r6, 0x10(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x6(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8018e4ac
    lwz     r3, 0x0(r30)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    stw     r0, 0x8(r30)
    b       branch_0x8018e4b4

branch_0x8018e4ac:
    li      r0, 0x0
    stw     r0, 0x8(r30)
branch_0x8018e4b4:
    clrlwi. r0, r31, 24
    bne-    branch_0x8018e4d0
    lhz     r0, 0x6(r30)
    lwz     r3, 0x0(r30)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    stw     r0, 0x8(r30)
branch_0x8018e4d0:
    lhz     r3, 0x6(r30)
    addi    r0, r3, 0x1
    sth     r0, 0x6(r30)
    lwz     r0, 0x234(sp)
    lwz     r31, 0x22c(sp)
    lwz     r30, 0x228(sp)
    lwz     r29, 0x224(sp)
    lwz     r28, 0x220(sp)
    addi    sp, sp, 0x230
    mtlr    r0
    blr


.globl createCollision__20TMapCollisionManagerFPCcUc
createCollision__20TMapCollisionManagerFPCcUc: # 0x8018e4fc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    cmpwi   r0, 0x1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    beq-    branch_0x8018e574
    bge-    branch_0x8018e530
    cmpwi   r0, 0x0
    bge-    branch_0x8018e53c
    b       branch_0x8018e5c8

branch_0x8018e530:
    cmpwi   r0, 0x3
    bge-    branch_0x8018e5c8
    b       branch_0x8018e5a0

branch_0x8018e53c:
    lhz     r0, 0x14(r31)
    li      r3, 0x64
    ori     r0, r0, 0x8000
    sth     r0, 0x14(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8018e560
    mr      r3, r30
    bl      __ct__19TMapCollisionStaticFv
branch_0x8018e560:
    lhz     r0, 0x6(r31)
    lwz     r3, 0x0(r31)
    slwi    r0, r0, 2
    stwx    r30, r3, r0
    b       branch_0x8018e5c8

branch_0x8018e574:
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8018e58c
    mr      r3, r30
    bl      __ct__17TMapCollisionMoveFv
branch_0x8018e58c:
    lhz     r0, 0x6(r31)
    lwz     r3, 0x0(r31)
    slwi    r0, r0, 2
    stwx    r30, r3, r0
    b       branch_0x8018e5c8

branch_0x8018e5a0:
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8018e5b8
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x8018e5b8:
    lhz     r0, 0x6(r31)
    lwz     r3, 0x0(r31)
    slwi    r0, r0, 2
    stwx    r30, r3, r0
branch_0x8018e5c8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl changeCollision__20TMapCollisionManagerFUl
changeCollision__20TMapCollisionManagerFUl: # 0x8018e5e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lhz     r0, 0x6(r3)
    cmplw   r4, r0
    bge-    branch_0x8018e640
    lwz     r5, 0x0(r30)
    slwi    r31, r4, 2
    lwz     r3, 0x8(r30)
    lwzx    r0, r5, r31
    cmplw   r3, r0
    beq-    branch_0x8018e640
    cmplwi  r3, 0x0
    beq-    branch_0x8018e634
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x8018e634:
    lwz     r3, 0x0(r30)
    lwzx    r0, r3, r31
    stw     r0, 0x8(r30)
branch_0x8018e640:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

