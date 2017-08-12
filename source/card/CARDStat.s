
.globl UpdateIconOffsets
UpdateIconOffsets: # 0x8035a0e4
    lwz     r8, 0x2c(r3)
    addis   r0, r8, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8035a108
    li      r0, 0x0
    stb     r0, 0x2e(r4)
    li      r8, 0x0
    sth     r0, 0x34(r4)
    sth     r0, 0x36(r4)
branch_0x8035a108:
    lbz     r0, 0x7(r3)
    li      r9, 0x0
    clrlwi  r0, r0, 30
    cmpwi   r0, 0x2
    beq-    branch_0x8035a140
    bge-    branch_0x8035a154
    cmpwi   r0, 0x1
    bge-    branch_0x8035a12c
    b       branch_0x8035a154

branch_0x8035a12c:
    stw     r8, 0x3c(r4)
    addi    r0, r8, 0xc00
    addi    r8, r8, 0xe00
    stw     r0, 0x40(r4)
    b       branch_0x8035a160

branch_0x8035a140:
    stw     r8, 0x3c(r4)
    li      r0, -0x1
    addi    r8, r8, 0x1800
    stw     r0, 0x40(r4)
    b       branch_0x8035a160

branch_0x8035a154:
    li      r0, -0x1
    stw     r0, 0x3c(r4)
    stw     r0, 0x40(r4)
branch_0x8035a160:
    li      r0, 0x2
    mtctr   r0
    addi    r7, r4, 0x0
    li      r10, 0x0
    li      r6, 0x0
    li      r0, -0x1
branch_0x8035a178:
    lhz     r5, 0x30(r3)
    sraw    r5, r5, r6
    clrlwi  r5, r5, 30
    cmpwi   r5, 0x2
    beq-    branch_0x8035a1ac
    bge-    branch_0x8035a1b8
    cmpwi   r5, 0x1
    bge-    branch_0x8035a19c
    b       branch_0x8035a1b8

branch_0x8035a19c:
    stw     r8, 0x44(r7)
    li      r9, 0x1
    addi    r8, r8, 0x400
    b       branch_0x8035a1bc

branch_0x8035a1ac:
    stw     r8, 0x44(r7)
    addi    r8, r8, 0x800
    b       branch_0x8035a1bc

branch_0x8035a1b8:
    stw     r0, 0x44(r7)
branch_0x8035a1bc:
    lhz     r5, 0x30(r3)
    addi    r6, r6, 0x2
    addi    r7, r7, 0x4
    sraw    r5, r5, r6
    clrlwi  r5, r5, 30
    cmpwi   r5, 0x2
    beq-    branch_0x8035a1f8
    bge-    branch_0x8035a204
    cmpwi   r5, 0x1
    bge-    branch_0x8035a1e8
    b       branch_0x8035a204

branch_0x8035a1e8:
    stw     r8, 0x44(r7)
    li      r9, 0x1
    addi    r8, r8, 0x400
    b       branch_0x8035a208

branch_0x8035a1f8:
    stw     r8, 0x44(r7)
    addi    r8, r8, 0x800
    b       branch_0x8035a208

branch_0x8035a204:
    stw     r0, 0x44(r7)
branch_0x8035a208:
    lhz     r5, 0x30(r3)
    addi    r6, r6, 0x2
    addi    r10, r10, 0x1
    sraw    r5, r5, r6
    clrlwi  r5, r5, 30
    cmpwi   r5, 0x2
    addi    r7, r7, 0x4
    beq-    branch_0x8035a248
    bge-    branch_0x8035a254
    cmpwi   r5, 0x1
    bge-    branch_0x8035a238
    b       branch_0x8035a254

branch_0x8035a238:
    stw     r8, 0x44(r7)
    li      r9, 0x1
    addi    r8, r8, 0x400
    b       branch_0x8035a258

branch_0x8035a248:
    stw     r8, 0x44(r7)
    addi    r8, r8, 0x800
    b       branch_0x8035a258

branch_0x8035a254:
    stw     r0, 0x44(r7)
branch_0x8035a258:
    lhz     r5, 0x30(r3)
    addi    r6, r6, 0x2
    addi    r10, r10, 0x1
    sraw    r5, r5, r6
    clrlwi  r5, r5, 30
    cmpwi   r5, 0x2
    addi    r7, r7, 0x4
    beq-    branch_0x8035a298
    bge-    branch_0x8035a2a4
    cmpwi   r5, 0x1
    bge-    branch_0x8035a288
    b       branch_0x8035a2a4

branch_0x8035a288:
    stw     r8, 0x44(r7)
    li      r9, 0x1
    addi    r8, r8, 0x400
    b       branch_0x8035a2a8

branch_0x8035a298:
    stw     r8, 0x44(r7)
    addi    r8, r8, 0x800
    b       branch_0x8035a2a8

branch_0x8035a2a4:
    stw     r0, 0x44(r7)
branch_0x8035a2a8:
    addi    r6, r6, 0x2
    addi    r7, r7, 0x4
    addi    r10, r10, 0x1
    bdnz+      branch_0x8035a178
    cmpwi   r9, 0x0
    beq-    branch_0x8035a2cc
    stw     r8, 0x64(r4)
    addi    r8, r8, 0x200
    b       branch_0x8035a2d4

branch_0x8035a2cc:
    li      r0, -0x1
    stw     r0, 0x64(r4)
branch_0x8035a2d4:
    stw     r8, 0x68(r4)
    blr


.globl CARDGetStatus
CARDGetStatus: # 0x8035a2dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr.     r29, r4
    blt-    branch_0x8035a308
    cmpwi   r29, 0x7f
    blt-    branch_0x8035a310
branch_0x8035a308:
    li      r3, -0x80
    b       branch_0x8035a3ec

branch_0x8035a310:
    addi    r4, sp, 0x14
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x8035a324
    b       branch_0x8035a3ec

branch_0x8035a324:
    lwz     r3, 0x14(sp)
    bl      __CARDGetDirBlock
    slwi    r0, r29, 6
    add     r29, r3, r0
    lwz     r3, 0x14(sp)
    mr      r4, r29
    bl      __CARDAccess
    addi    r30, r3, 0x0
    cmpwi   r30, -0xa
    bne-    branch_0x8035a358
    mr      r3, r29
    bl      __CARDIsPublic
    mr      r30, r3
branch_0x8035a358:
    cmpwi   r30, 0x0
    blt-    branch_0x8035a3e0
    addi    r4, r29, 0x0
    addi    r3, r31, 0x28
    li      r5, 0x4
    bl      memcpy
    addi    r3, r31, 0x2c
    addi    r4, r29, 0x4
    li      r5, 0x2
    bl      memcpy
    lwz     r5, 0x14(sp)
    mr      r3, r31
    lhz     r6, 0x38(r29)
    addi    r4, r29, 0x8
    lwz     r0, 0xc(r5)
    li      r5, 0x20
    mullw   r0, r6, r0
    stw     r0, 0x20(r31)
    bl      memcpy
    lwz     r0, 0x28(r29)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    stw     r0, 0x24(r31)
    lbz     r0, 0x7(r29)
    stb     r0, 0x2e(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x30(r31)
    lhz     r0, 0x30(r29)
    sth     r0, 0x34(r31)
    lhz     r0, 0x32(r29)
    sth     r0, 0x36(r31)
    lwz     r0, 0x3c(r29)
    stw     r0, 0x38(r31)
    bl      UpdateIconOffsets
branch_0x8035a3e0:
    lwz     r3, 0x14(sp)
    mr      r4, r30
    bl      __CARDPutControlBlock
branch_0x8035a3ec:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl CARDSetStatusAsync
CARDSetStatusAsync: # 0x8035a408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr.     r31, r4
    stw     r30, 0x28(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    blt-    branch_0x8035a474
    cmpwi   r31, 0x7f
    bge-    branch_0x8035a474
    lwz     r3, 0x30(r29)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8035a458
    cmplwi  r3, 0x200
    bge-    branch_0x8035a474
branch_0x8035a458:
    lwz     r3, 0x38(r29)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x8035a47c
    clrlwi  r0, r3, 19
    cmplwi  r0, 0x1fc0
    ble-    branch_0x8035a47c
branch_0x8035a474:
    li      r3, -0x80
    b       branch_0x8035a55c

branch_0x8035a47c:
    addi    r3, r28, 0x0
    addi    r4, sp, 0x18
    bl      __CARDGetControlBlock
    cmpwi   r3, 0x0
    bge-    branch_0x8035a494
    b       branch_0x8035a55c

branch_0x8035a494:
    lwz     r3, 0x18(sp)
    bl      __CARDGetDirBlock
    slwi    r0, r31, 6
    add     r31, r3, r0
    lwz     r3, 0x18(sp)
    mr      r4, r31
    bl      __CARDAccess
    mr.     r4, r3
    bge-    branch_0x8035a4c4
    lwz     r3, 0x18(sp)
    bl      __CARDPutControlBlock
    b       branch_0x8035a55c

branch_0x8035a4c4:
    lbz     r0, 0x2e(r29)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    stb     r0, 0x7(r31)
    lwz     r0, 0x30(r29)
    stw     r0, 0x2c(r31)
    lhz     r0, 0x34(r29)
    sth     r0, 0x30(r31)
    lhz     r0, 0x36(r29)
    sth     r0, 0x32(r31)
    lwz     r0, 0x38(r29)
    stw     r0, 0x3c(r31)
    bl      UpdateIconOffsets
    lwz     r3, 0x2c(r31)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8035a518
    lhz     r0, 0x32(r31)
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x1
    sth     r0, 0x32(r31)
branch_0x8035a518:
    lis     r3, 0x8000
    lwz     r0, 0xf8(r3)
    srwi    r29, r0, 2
    bl      OSGetTime
    addi    r6, r29, 0x0
    li      r5, 0x0
    bl      __div2i
    stw     r4, 0x28(r31)
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    bl      __CARDUpdateDir
    mr.     r28, r3
    bge-    branch_0x8035a558
    lwz     r3, 0x18(sp)
    mr      r4, r28
    bl      __CARDPutControlBlock
branch_0x8035a558:
    mr      r3, r28
branch_0x8035a55c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl CARDSetStatus
CARDSetStatus: # 0x8035a57c
    mflr    r0
    lis     r6, __CARDSyncCallback@h
    stw     r0, 0x4(sp)
    addi    r6, r6, __CARDSyncCallback@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bl      CARDSetStatusAsync
    cmpwi   r3, 0x0
    bge-    branch_0x8035a5a8
    b       branch_0x8035a5b0

branch_0x8035a5a8:
    mr      r3, r31
    bl      __CARDSync
branch_0x8035a5b0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

