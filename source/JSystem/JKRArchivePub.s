
.globl check_mount_already__10JKRArchiveFl
check_mount_already__10JKRArchiveFl: # 0x802bec18
    lis     r4, 0x8040
    lwz     r5, 0x42b4(r4)
    b       branch_0x802bec5c

branch_0x802bec24:
    lwz     r6, 0x0(r5)
    lwz     r4, 0x2c(r6)
    addis   r0, r4, 0xadbf
    cmplwi  r0, 0x5243
    bne-    branch_0x802bec58
    lwz     r0, 0x40(r6)
    cmpw    r0, r3
    bne-    branch_0x802bec58
    lwz     r4, 0x34(r6)
    addi    r3, r6, 0x0
    addi    r0, r4, 0x1
    stw     r0, 0x34(r6)
    blr

branch_0x802bec58:
    lwz     r5, 0xc(r5)
branch_0x802bec5c:
    cmplwi  r5, 0x0
    bne+    branch_0x802bec24
    li      r3, 0x0
    blr


.globl mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection: # 0x802bec6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r27, 0x64(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    bl      DVDConvertPathToEntrynum
    mr.     r31, r3
    bge-    branch_0x802bec9c
    li      r3, 0x0
    b       branch_0x802bee1c

branch_0x802bec9c:
    lis     r3, 0x8040
    lwz     r5, 0x42b4(r3)
    b       branch_0x802becdc

branch_0x802beca8:
    lwz     r3, 0x0(r5)
    lwz     r4, 0x2c(r3)
    addis   r0, r4, 0xadbf
    cmplwi  r0, 0x5243
    bne-    branch_0x802becd8
    lwz     r0, 0x40(r3)
    cmpw    r0, r31
    bne-    branch_0x802becd8
    lwz     r4, 0x34(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x34(r3)
    b       branch_0x802bece8

branch_0x802becd8:
    lwz     r5, 0xc(r5)
branch_0x802becdc:
    cmplwi  r5, 0x0
    bne+    branch_0x802beca8
    li      r3, 0x0
branch_0x802bece8:
    cmplwi  r3, 0x0
    beq-    branch_0x802becf4
    b       branch_0x802bee1c

branch_0x802becf4:
    cmpwi   r29, 0x1
    bne-    branch_0x802bed04
    li      r0, 0x4
    b       branch_0x802bed08

branch_0x802bed04:
    li      r0, -0x4
branch_0x802bed08:
    cmpwi   r27, 0x3
    mr      r5, r0
    beq-    branch_0x802bed94
    bge-    branch_0x802bed28
    cmpwi   r27, 0x1
    beq-    branch_0x802bed34
    bge-    branch_0x802bed6c
    b       branch_0x802bede0

branch_0x802bed28:
    cmpwi   r27, 0x5
    bge-    branch_0x802bede0
    b       branch_0x802bedbc

branch_0x802bed34:
    cmpwi   r31, -0x1
    bne-    branch_0x802bed44
    li      r30, 0x0
    b       branch_0x802bede0

branch_0x802bed44:
    addi    r4, r28, 0x0
    li      r3, 0x6c
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bed64
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      __ct__13JKRMemArchiveFlQ210JKRArchive15EMountDirection
branch_0x802bed64:
    mr      r30, r3
    b       branch_0x802bede0

branch_0x802bed6c:
    addi    r4, r28, 0x0
    li      r3, 0x68
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bed8c
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      __ct__14JKRAramArchiveFlQ210JKRArchive15EMountDirection
branch_0x802bed8c:
    mr      r30, r3
    b       branch_0x802bede0

branch_0x802bed94:
    addi    r4, r28, 0x0
    li      r3, 0x68
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bedb4
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      __ct__13JKRDvdArchiveFlQ210JKRArchive15EMountDirection
branch_0x802bedb4:
    mr      r30, r3
    b       branch_0x802bede0

branch_0x802bedbc:
    addi    r4, r28, 0x0
    li      r3, 0x7c
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802beddc
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    bl      __ct__14JKRCompArchiveFlQ210JKRArchive15EMountDirection
branch_0x802beddc:
    mr      r30, r3
branch_0x802bede0:
    cmplwi  r30, 0x0
    beq-    branch_0x802bee18
    lbz     r0, 0x3c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x802bee18
    cmplwi  r30, 0x0
    addi    r3, r30, 0x0
    beq-    branch_0x802bee14
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802bee14:
    li      r30, 0x0
branch_0x802bee18:
    mr      r3, r30
branch_0x802bee1c:
    lmw     r27, 0x64(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl becomeCurrent__10JKRArchiveFPCc
becomeCurrent__10JKRArchiveFPCc: # 0x802bee30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2f
    bne-    branch_0x802bee70
    lbzu    r0, 0x1(r4)
    extsb.  r0, r0
    bne-    branch_0x802bee60
    li      r4, 0x0
branch_0x802bee60:
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      findDirectory__10JKRArchiveCFPCcUl
    b       branch_0x802bee7c

branch_0x802bee70:
    lwz     r5, R13Off_m0x5f98(r13)
    mr      r3, r31
    bl      findDirectory__10JKRArchiveCFPCcUl
branch_0x802bee7c:
    neg     r4, r3
    subic   r0, r4, 0x1
    cmplwi  r3, 0x0
    subfe   r4, r0, r4
    beq-    branch_0x802beea8
    stw     r31, R13Off_m0x5f38(r13)
    lwz     r0, 0x48(r31)
    subf    r0, r0, r3
    srawi   r0, r0, 4
    addze   r0, r0
    stw     r0, R13Off_m0x5f98(r13)
branch_0x802beea8:
    lwz     r0, 0x1c(sp)
    mr      r3, r4
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl
getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl: # 0x802beec0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      findIdxResource__10JKRArchiveCFUl
    cmplwi  r3, 0x0
    bne-    branch_0x802beef4
    li      r3, 0x0
    b       branch_0x802bef20

branch_0x802beef4:
    lwz     r0, 0x4(r3)
    srwi    r0, r0, 24
    stb     r0, 0x0(r31)
    lhz     r0, 0x0(r3)
    sth     r0, 0x2(r31)
    lwz     r0, 0x4(r3)
    li      r3, 0x1
    lwz     r4, 0x50(r30)
    clrlwi  r0, r0, 8
    add     r0, r4, r0
    stw     r0, 0x4(r31)
branch_0x802bef20:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
getGlbResource__10JKRArchiveFUlPCcP10JKRArchive: # 0x802bef38
    mflr    r0
    cmplwi  r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x64(sp)
    addi    r29, r3, 0x0
    li      r3, 0x0
    beq-    branch_0x802bef84
    mr      r3, r5
    lwz     r12, 0x0(r5)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x802befd4

branch_0x802bef84:
    lis     r4, 0x8040
    lwz     r31, 0x42b4(r4)
    b       branch_0x802befcc

branch_0x802bef90:
    lwz     r5, 0x0(r31)
    lwz     r4, 0x2c(r5)
    addis   r0, r4, 0xadbf
    cmplwi  r0, 0x5243
    bne-    branch_0x802befc8
    lwz     r12, 0x0(r5)
    mr      r3, r5
    addi    r4, r29, 0x0
    lwz     r12, 0x18(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x802befd4
branch_0x802befc8:
    lwz     r31, 0xc(r31)
branch_0x802befcc:
    cmplwi  r31, 0x0
    bne+    branch_0x802bef90
branch_0x802befd4:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl getResource__10JKRArchiveFPCc
getResource__10JKRArchiveFPCc: # 0x802beff0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2f
    bne-    branch_0x802bf028
    addi    r3, r31, 0x0
    addi    r4, r4, 0x1
    li      r5, 0x0
    bl      findFsResource__10JKRArchiveCFPCcUl
    mr      r4, r3
    b       branch_0x802bf038

branch_0x802bf028:
    lwz     r5, R13Off_m0x5f98(r13)
    mr      r3, r31
    bl      findFsResource__10JKRArchiveCFPCcUl
    mr      r4, r3
branch_0x802bf038:
    cmplwi  r4, 0x0
    beq-    branch_0x802bf05c
    lwz     r12, 0x0(r31)
    mr      r3, r31
    li      r5, 0x0
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    b       branch_0x802bf060

branch_0x802bf05c:
    li      r3, 0x0
branch_0x802bf060:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getResource__10JKRArchiveFUlPCc
getResource__10JKRArchiveFUlPCc: # 0x802bf074
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x802bf09c
    addis   r0, r4, 0xc0c1
    cmplwi  r0, 0x3f3f
    bne-    branch_0x802bf0b0
branch_0x802bf09c:
    addi    r3, r31, 0x0
    addi    r4, r5, 0x0
    bl      findNameResource__10JKRArchiveCFPCc
    mr      r4, r3
    b       branch_0x802bf0bc

branch_0x802bf0b0:
    mr      r3, r31
    bl      findTypeResource__10JKRArchiveCFUlPCc
    mr      r4, r3
branch_0x802bf0bc:
    cmplwi  r4, 0x0
    beq-    branch_0x802bf0e0
    lwz     r12, 0x0(r31)
    mr      r3, r31
    li      r5, 0x0
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    b       branch_0x802bf0e4

branch_0x802bf0e0:
    li      r3, 0x0
branch_0x802bf0e4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl readResource__10JKRArchiveFPvUlUlPCc
readResource__10JKRArchiveFPvUlUlPCc: # 0x802bf0f8
    mflr    r0
    cmplwi  r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802bf130
    addis   r0, r6, 0xc0c1
    cmplwi  r0, 0x3f3f
    bne-    branch_0x802bf144
branch_0x802bf130:
    addi    r3, r29, 0x0
    addi    r4, r7, 0x0
    bl      findNameResource__10JKRArchiveCFPCc
    mr      r6, r3
    b       branch_0x802bf158

branch_0x802bf144:
    addi    r3, r29, 0x0
    addi    r4, r6, 0x0
    addi    r5, r7, 0x0
    bl      findTypeResource__10JKRArchiveCFUlPCc
    mr      r6, r3
branch_0x802bf158:
    cmplwi  r6, 0x0
    beq-    branch_0x802bf188
    lwz     r12, 0x0(r29)
    mr      r3, r29
    addi    r4, r30, 0x0
    lwz     r12, 0x40(r12)
    addi    r5, r31, 0x0
    addi    r7, sp, 0x1c
    mtlr    r12
    blrl
    lwz     r3, 0x1c(sp)
    b       branch_0x802bf18c

branch_0x802bf188:
    li      r3, 0x0
branch_0x802bf18c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl readResource__10JKRArchiveFPvUlPCc
readResource__10JKRArchiveFPvUlPCc: # 0x802bf1a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
    lbz     r0, 0x0(r6)
    cmpwi   r0, 0x2f
    bne-    branch_0x802bf1f0
    addi    r3, r29, 0x0
    addi    r4, r6, 0x1
    li      r5, 0x0
    bl      findFsResource__10JKRArchiveCFPCcUl
    mr      r6, r3
    b       branch_0x802bf204

branch_0x802bf1f0:
    lwz     r5, R13Off_m0x5f98(r13)
    addi    r3, r29, 0x0
    addi    r4, r6, 0x0
    bl      findFsResource__10JKRArchiveCFPCcUl
    mr      r6, r3
branch_0x802bf204:
    cmplwi  r6, 0x0
    beq-    branch_0x802bf234
    lwz     r12, 0x0(r29)
    mr      r3, r29
    addi    r4, r30, 0x0
    lwz     r12, 0x40(r12)
    addi    r5, r31, 0x0
    addi    r7, sp, 0x18
    mtlr    r12
    blrl
    lwz     r3, 0x18(sp)
    b       branch_0x802bf238

branch_0x802bf234:
    li      r3, 0x0
branch_0x802bf238:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl removeResourceAll__10JKRArchiveFv
removeResourceAll__10JKRArchiveFv: # 0x802bf254
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
    beq-    branch_0x802bf2cc
    lbz     r0, 0x3c(r28)
    cmplwi  r0, 0x1
    beq-    branch_0x802bf2cc
    lwz     r30, 0x4c(r28)
    li      r29, 0x0
    li      r31, 0x0
    b       branch_0x802bf2bc

branch_0x802bf29c:
    lwz     r0, 0x10(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802bf2b8
    stw     r31, 0x10(r30)
    lwz     r3, 0x10(r30)
    lwz     r4, 0x38(r28)
    bl      free__7JKRHeapFPvP7JKRHeap
branch_0x802bf2b8:
    addi    r29, r29, 0x1
branch_0x802bf2bc:
    lwz     r3, 0x44(r28)
    lwz     r0, 0x8(r3)
    cmplw   r29, r0
    blt+    branch_0x802bf29c
branch_0x802bf2cc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl removeResource__10JKRArchiveFPv
removeResource__10JKRArchiveFPv: # 0x802bf2ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      findPtrResource__10JKRArchiveCFPCv
    cmplwi  r3, 0x0
    bne-    branch_0x802bf31c
    li      r3, 0x0
    b       branch_0x802bf334

branch_0x802bf31c:
    li      r0, 0x0
    stw     r0, 0x10(r3)
    mr      r3, r31
    lwz     r4, 0x38(r30)
    bl      free__7JKRHeapFPvP7JKRHeap
    li      r3, 0x1
branch_0x802bf334:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl detachResource__10JKRArchiveFPv
detachResource__10JKRArchiveFPv: # 0x802bf34c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      findPtrResource__10JKRArchiveCFPCv
    cmplwi  r3, 0x0
    bne-    branch_0x802bf36c
    li      r3, 0x0
    b       branch_0x802bf378

branch_0x802bf36c:
    li      r0, 0x0
    stw     r0, 0x10(r3)
    li      r3, 0x1
branch_0x802bf378:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getResSize__10JKRArchiveCFPCv
getResSize__10JKRArchiveCFPCv: # 0x802bf388
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      findPtrResource__10JKRArchiveCFPCv
    cmplwi  r3, 0x0
    bne-    branch_0x802bf3a8
    li      r3, -0x1
    b       branch_0x802bf3ac

branch_0x802bf3a8:
    lwz     r3, 0xc(r3)
branch_0x802bf3ac:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl countFile__10JKRArchiveCFPCc
countFile__10JKRArchiveCFPCc: # 0x802bf3bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2f
    bne-    branch_0x802bf3f0
    lbzu    r0, 0x1(r4)
    extsb.  r0, r0
    bne-    branch_0x802bf3e4
    li      r4, 0x0
branch_0x802bf3e4:
    li      r5, 0x0
    bl      findDirectory__10JKRArchiveCFPCcUl
    b       branch_0x802bf3f8

branch_0x802bf3f0:
    lwz     r5, R13Off_m0x5f98(r13)
    bl      findDirectory__10JKRArchiveCFPCcUl
branch_0x802bf3f8:
    cmplwi  r3, 0x0
    beq-    branch_0x802bf408
    lhz     r3, 0xa(r3)
    b       branch_0x802bf40c

branch_0x802bf408:
    li      r3, 0x0
branch_0x802bf40c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFirstFile__10JKRArchiveCFPCc
getFirstFile__10JKRArchiveCFPCc: # 0x802bf41c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2f
    bne-    branch_0x802bf464
    lbzu    r0, 0x1(r4)
    extsb.  r0, r0
    bne-    branch_0x802bf450
    li      r4, 0x0
branch_0x802bf450:
    addi    r3, r30, 0x0
    li      r5, 0x0
    bl      findDirectory__10JKRArchiveCFPCcUl
    mr      r31, r3
    b       branch_0x802bf474

branch_0x802bf464:
    lwz     r5, R13Off_m0x5f98(r13)
    mr      r3, r30
    bl      findDirectory__10JKRArchiveCFPCcUl
    mr      r31, r3
branch_0x802bf474:
    cmplwi  r31, 0x0
    beq-    branch_0x802bf4a8
    lwz     r4, R13Off_m0x5f30(r13)
    li      r3, 0x24
    li      r5, 0x0
    bl      __nw__FUlP7JKRHeapi
    cmplwi  r3, 0x0
    beq-    branch_0x802bf4ac
    lwz     r5, 0xc(r31)
    mr      r4, r30
    lhz     r6, 0xa(r31)
    bl      __ct__12JKRArcFinderFP10JKRArchivell
    b       branch_0x802bf4ac

branch_0x802bf4a8:
    li      r3, 0x0
branch_0x802bf4ac:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

