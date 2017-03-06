
.globl __ct__10JKRArchiveFv
__ct__10JKRArchiveFv: # 0x802bc9ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13JKRFileLoaderFv
    lis     r3, 0x803e
    subi    r0, r3, 0x1d8
    stw     r0, 0x0(r31)
    li      r3, 0x0
    li      r0, 0x1
    stb     r3, 0x30(r31)
    mr      r3, r31
    stw     r0, 0x5c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__10JKRArchiveFlQ210JKRArchive10EMountMode
__ct__10JKRArchiveFlQ210JKRArchive10EMountMode: # 0x802bc9f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__13JKRFileLoaderFv
    lis     r3, 0x803e
    lwz     r31, 0x8(sp)
    subi    r0, r3, 0x1d8
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x30(r31)
    li      r0, 0x1
    stb     r30, 0x3c(r31)
    stw     r0, 0x34(r31)
    stw     r0, 0x54(r31)
    bl      findFromRoot__7JKRHeapFPv
    stw     r3, 0x38(r31)
    addi    r3, r31, 0x38
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802bca70
    lwz     r0, -0x5f2c(r13)
    stw     r0, 0x0(r3)
branch_0x802bca70:
    lwz     r3, 0x8(sp)
    stw     r29, 0x40(r3)
    lwz     r0, -0x5f38(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802bca90
    li      r0, 0x0
    stw     r3, -0x5f38(r13)
    stw     r0, -0x5f98(r13)
branch_0x802bca90:
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__10JKRArchiveFv
__dt__10JKRArchiveFv: # 0x802bcab0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802bcaf8
    lis     r3, 0x803e
    subi    r0, r3, 0x1d8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13JKRFileLoaderFv
    extsh.  r0, r31
    ble-    branch_0x802bcaf8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802bcaf8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl findDirectory__10JKRArchiveCFPCcUl
findDirectory__10JKRArchiveCFPCcUl: # 0x802bcb14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x248(sp)
    stmw    r26, 0x230(sp)
    mr.     r29, r4
    addi    r28, r3, 0x0
    addi    r26, r5, 0x0
    bne-    branch_0x802bcb44
    lwz     r3, 0x48(r28)
    slwi    r0, r26, 4
    add     r3, r3, r0
    b       branch_0x802bccc0

branch_0x802bcb44:
    addi    r4, r29, 0x0
    addi    r3, sp, 0x128
    li      r5, 0x2f
    bl      store__Q210JKRArchive8CArcNameFPCcc
    lwz     r5, 0x48(r28)
    slwi    r0, r26, 4
    lwz     r4, 0x4c(r28)
    addi    r29, r3, 0x0
    add     r31, r5, r0
    lwz     r0, 0xc(r31)
    addi    r26, sp, 0x12c
    li      r30, 0x0
    mulli   r0, r0, 0x14
    add     r27, r4, r0
    b       branch_0x802bccb0

branch_0x802bcb80:
    lhz     r3, 0x128(sp)
    lhz     r0, 0x2(r27)
    lwz     r4, 0x4(r27)
    cmplw   r3, r0
    clrlwi  r3, r4, 8
    beq-    branch_0x802bcba0
    li      r0, 0x0
    b       branch_0x802bcbbc

branch_0x802bcba0:
    lwz     r0, 0x50(r28)
    addi    r4, r26, 0x0
    add     r3, r0, r3
    bl      strcmp
    neg     r0, r3
    cntlzw  r0, r0
    srwi    r0, r0, 5
branch_0x802bcbbc:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bcca8
    lwz     r0, 0x4(r27)
    rlwinm. r0, r0, 8, 30, 30
    beq-    branch_0x802bccbc
    cmplwi  r29, 0x0
    lwz     r26, 0x8(r27)
    mr      r4, r29
    bne-    branch_0x802bcbf0
    lwz     r3, 0x48(r28)
    slwi    r0, r26, 4
    add     r3, r3, r0
    b       branch_0x802bccc0

branch_0x802bcbf0:
    addi    r3, sp, 0x1c
    li      r5, 0x2f
    bl      store__Q210JKRArchive8CArcNameFPCcc
    lwz     r5, 0x48(r28)
    slwi    r0, r26, 4
    lwz     r4, 0x4c(r28)
    addi    r29, r3, 0x0
    add     r30, r5, r0
    lwz     r0, 0xc(r30)
    addi    r31, sp, 0x20
    li      r27, 0x0
    mulli   r0, r0, 0x14
    add     r26, r4, r0
    b       branch_0x802bcc94

branch_0x802bcc28:
    lhz     r3, 0x1c(sp)
    lhz     r0, 0x2(r26)
    lwz     r4, 0x4(r26)
    cmplw   r3, r0
    clrlwi  r3, r4, 8
    beq-    branch_0x802bcc48
    li      r0, 0x0
    b       branch_0x802bcc64

branch_0x802bcc48:
    lwz     r0, 0x50(r28)
    addi    r4, r31, 0x0
    add     r3, r0, r3
    bl      strcmp
    neg     r0, r3
    cntlzw  r0, r0
    srwi    r0, r0, 5
branch_0x802bcc64:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bcc8c
    lwz     r0, 0x4(r26)
    rlwinm. r0, r0, 8, 30, 30
    beq-    branch_0x802bcca0
    lwz     r5, 0x8(r26)
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    bl      findDirectory__10JKRArchiveCFPCcUl
    b       branch_0x802bccc0

branch_0x802bcc8c:
    addi    r26, r26, 0x14
    addi    r27, r27, 0x1
branch_0x802bcc94:
    lhz     r0, 0xa(r30)
    cmpw    r27, r0
    blt+    branch_0x802bcc28
branch_0x802bcca0:
    li      r3, 0x0
    b       branch_0x802bccc0

branch_0x802bcca8:
    addi    r27, r27, 0x14
    addi    r30, r30, 0x1
branch_0x802bccb0:
    lhz     r0, 0xa(r31)
    cmpw    r30, r0
    blt+    branch_0x802bcb80
branch_0x802bccbc:
    li      r3, 0x0
branch_0x802bccc0:
    lmw     r26, 0x230(sp)
    lwz     r0, 0x24c(sp)
    addi    sp, sp, 0x248
    mtlr    r0
    blr


.globl findTypeResource__10JKRArchiveCFUlPCc
findTypeResource__10JKRArchiveCFUlPCc: # 0x802bccd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stmw    r27, 0x12c(sp)
    mr.     r27, r4
    addi    r29, r3, 0x0
    beq-    branch_0x802bcdb4
    addi    r3, sp, 0x20
    addi    r4, r5, 0x0
    bl      store__Q210JKRArchive8CArcNameFPCc
    lwz     r3, 0x44(r29)
    lwz     r28, 0x48(r29)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x802bcd2c
branch_0x802bcd14:
    lwz     r0, 0x0(r28)
    cmplw   r0, r27
    bne-    branch_0x802bcd24
    b       branch_0x802bcd30

branch_0x802bcd24:
    addi    r28, r28, 0x10
    bdnz+      branch_0x802bcd14
branch_0x802bcd2c:
    li      r28, 0x0
branch_0x802bcd30:
    cmplwi  r28, 0x0
    beq-    branch_0x802bcdb4
    lwz     r0, 0xc(r28)
    addi    r31, sp, 0x24
    lwz     r3, 0x4c(r29)
    li      r30, 0x0
    mulli   r0, r0, 0x14
    add     r27, r3, r0
    b       branch_0x802bcda8

branch_0x802bcd54:
    lhz     r3, 0x20(sp)
    lhz     r0, 0x2(r27)
    lwz     r4, 0x4(r27)
    cmplw   r3, r0
    clrlwi  r3, r4, 8
    beq-    branch_0x802bcd74
    li      r0, 0x0
    b       branch_0x802bcd90

branch_0x802bcd74:
    lwz     r0, 0x50(r29)
    addi    r4, r31, 0x0
    add     r3, r0, r3
    bl      strcmp
    neg     r0, r3
    cntlzw  r0, r0
    srwi    r0, r0, 5
branch_0x802bcd90:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bcda0
    mr      r3, r27
    b       branch_0x802bcdb8

branch_0x802bcda0:
    addi    r27, r27, 0x14
    addi    r30, r30, 0x1
branch_0x802bcda8:
    lhz     r0, 0xa(r28)
    cmpw    r30, r0
    blt+    branch_0x802bcd54
branch_0x802bcdb4:
    li      r3, 0x0
branch_0x802bcdb8:
    lmw     r27, 0x12c(sp)
    lwz     r0, 0x144(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl findFsResource__10JKRArchiveCFPCcUl
findFsResource__10JKRArchiveCFPCcUl: # 0x802bcdcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stmw    r26, 0x128(sp)
    mr.     r30, r4
    addi    r29, r3, 0x0
    addi    r26, r5, 0x0
    beq-    branch_0x802bceb8
    addi    r4, r30, 0x0
    addi    r3, sp, 0x1c
    li      r5, 0x2f
    bl      store__Q210JKRArchive8CArcNameFPCcc
    lwz     r5, 0x48(r29)
    slwi    r0, r26, 4
    lwz     r4, 0x4c(r29)
    addi    r30, r3, 0x0
    add     r31, r5, r0
    lwz     r0, 0xc(r31)
    addi    r28, sp, 0x20
    li      r26, 0x0
    mulli   r0, r0, 0x14
    add     r27, r4, r0
    b       branch_0x802bceac

branch_0x802bce28:
    lhz     r3, 0x1c(sp)
    lhz     r0, 0x2(r27)
    lwz     r4, 0x4(r27)
    cmplw   r3, r0
    clrlwi  r3, r4, 8
    beq-    branch_0x802bce48
    li      r0, 0x0
    b       branch_0x802bce64

branch_0x802bce48:
    lwz     r0, 0x50(r29)
    addi    r4, r28, 0x0
    add     r3, r0, r3
    bl      strcmp
    neg     r0, r3
    cntlzw  r0, r0
    srwi    r0, r0, 5
branch_0x802bce64:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bcea4
    lwz     r0, 0x4(r27)
    rlwinm. r0, r0, 8, 30, 30
    beq-    branch_0x802bce8c
    lwz     r5, 0x8(r27)
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      findFsResource__10JKRArchiveCFPCcUl
    b       branch_0x802bcebc

branch_0x802bce8c:
    cmplwi  r30, 0x0
    bne-    branch_0x802bce9c
    mr      r3, r27
    b       branch_0x802bcebc

branch_0x802bce9c:
    li      r3, 0x0
    b       branch_0x802bcebc

branch_0x802bcea4:
    addi    r27, r27, 0x14
    addi    r26, r26, 0x1
branch_0x802bceac:
    lhz     r0, 0xa(r31)
    cmpw    r26, r0
    blt+    branch_0x802bce28
branch_0x802bceb8:
    li      r3, 0x0
branch_0x802bcebc:
    lmw     r26, 0x128(sp)
    lwz     r0, 0x144(sp)
    addi    sp, sp, 0x140
    mtlr    r0
    blr


.globl findIdxResource__10JKRArchiveCFUl
findIdxResource__10JKRArchiveCFUl: # 0x802bced0
    lwz     r5, 0x44(r3)
    lwz     r0, 0x8(r5)
    cmplw   r4, r0
    bge-    branch_0x802bcef0
    mulli   r0, r4, 0x14
    lwz     r3, 0x4c(r3)
    add     r3, r3, r0
    blr

branch_0x802bcef0:
    li      r3, 0x0
    blr


.globl findNameResource__10JKRArchiveCFPCc
findNameResource__10JKRArchiveCFPCc: # 0x802bcef8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    stw     r30, 0x128(sp)
    stw     r29, 0x124(sp)
    stw     r28, 0x120(sp)
    mr      r28, r3
    lwz     r30, 0x4c(r3)
    addi    r3, sp, 0x18
    bl      store__Q210JKRArchive8CArcNameFPCc
    addi    r31, sp, 0x1c
    li      r29, 0x0
    b       branch_0x802bcf84

branch_0x802bcf30:
    lhz     r3, 0x18(sp)
    lhz     r0, 0x2(r30)
    lwz     r4, 0x4(r30)
    cmplw   r3, r0
    clrlwi  r3, r4, 8
    beq-    branch_0x802bcf50
    li      r0, 0x0
    b       branch_0x802bcf6c

branch_0x802bcf50:
    lwz     r0, 0x50(r28)
    addi    r4, r31, 0x0
    add     r3, r0, r3
    bl      strcmp
    neg     r0, r3
    cntlzw  r0, r0
    srwi    r0, r0, 5
branch_0x802bcf6c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bcf7c
    mr      r3, r30
    b       branch_0x802bcf98

branch_0x802bcf7c:
    addi    r30, r30, 0x14
    addi    r29, r29, 0x1
branch_0x802bcf84:
    lwz     r3, 0x44(r28)
    lwz     r0, 0x8(r3)
    cmplw   r29, r0
    blt+    branch_0x802bcf30
    li      r3, 0x0
branch_0x802bcf98:
    lwz     r0, 0x134(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    lwz     r29, 0x124(sp)
    lwz     r28, 0x120(sp)
    addi    sp, sp, 0x130
    blr


.globl findPtrResource__10JKRArchiveCFPCv
findPtrResource__10JKRArchiveCFPCv: # 0x802bcfb8
    lwz     r5, 0x44(r3)
    lwz     r3, 0x4c(r3)
    lwz     r0, 0x8(r5)
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x802bcfe4
branch_0x802bcfd0:
    lwz     r0, 0x10(r3)
    cmplw   r0, r4
    beqlr-    

    addi    r3, r3, 0x14
    bdnz+      branch_0x802bcfd0
branch_0x802bcfe4:
    li      r3, 0x0
    blr


.globl store__Q210JKRArchive8CArcNameFPCc
store__Q210JKRArchive8CArcNameFPCc: # 0x802bcfec
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    sth     r0, 0x0(r3)
    b       branch_0x802bd054

branch_0x802bd01c:
    extsb   r3, r3
    bl      tolower
    lhz     r0, 0x0(r29)
    cmpwi   r31, 0x100
    mulli   r0, r0, 0x3
    add     r0, r3, r0
    sth     r0, 0x0(r29)
    bge-    branch_0x802bd050
    addi    r4, r31, 0x0
    extsb   r3, r3
    addi    r0, r4, 0x4
    stbx    r3, r29, r0
    addi    r31, r31, 0x1
branch_0x802bd050:
    addi    r30, r30, 0x1
branch_0x802bd054:
    lbz     r3, 0x0(r30)
    extsb.  r0, r3
    bne+    branch_0x802bd01c
    sth     r31, 0x2(r29)
    add     r3, r29, r31
    li      r0, 0x0
    stb     r0, 0x4(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl store__Q210JKRArchive8CArcNameFPCcc
store__Q210JKRArchive8CArcNameFPCcc: # 0x802bd08c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    extsb   r31, r5
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    sth     r0, 0x0(r3)
    b       branch_0x802bd0fc

branch_0x802bd0c4:
    extsb   r3, r3
    bl      tolower
    lhz     r0, 0x0(r28)
    cmpwi   r30, 0x100
    mulli   r0, r0, 0x3
    add     r0, r3, r0
    sth     r0, 0x0(r28)
    bge-    branch_0x802bd0f8
    addi    r4, r30, 0x0
    extsb   r3, r3
    addi    r0, r4, 0x4
    stbx    r3, r28, r0
    addi    r30, r30, 0x1
branch_0x802bd0f8:
    addi    r29, r29, 0x1
branch_0x802bd0fc:
    lbz     r3, 0x0(r29)
    extsb.  r0, r3
    beq-    branch_0x802bd114
    extsb   r0, r3
    cmpw    r0, r31
    bne+    branch_0x802bd0c4
branch_0x802bd114:
    sth     r30, 0x2(r28)
    add     r3, r28, r30
    li      r0, 0x0
    stb     r0, 0x4(r3)
    lbz     r0, 0x0(r29)
    extsb.  r0, r0
    bne-    branch_0x802bd138
    li      r3, 0x0
    b       branch_0x802bd13c

branch_0x802bd138:
    addi    r3, r29, 0x1
branch_0x802bd13c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr

