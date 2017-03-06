
.globl getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive
getResource__15JUTResReferenceFP14JSUInputStreamUlP10JKRArchive: # 0x802ca3bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    li      r5, 0x1
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      read__14JSUInputStreamFPvl
    addi    r3, r29, 0x0
    addi    r4, r28, 0x1
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r5, 0x1(r28)
    addi    r3, r29, 0x0
    addi    r4, r28, 0x2
    bl      read__14JSUInputStreamFPvl
    lbz     r3, 0x0(r28)
    cmplwi  r3, 0x2
    beq-    branch_0x802ca434
    subi    r0, r3, 0x3
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x802ca444
branch_0x802ca434:
    lbz     r0, 0x1(r28)
    li      r4, 0x0
    add     r3, r28, r0
    stb     r4, 0x2(r3)
branch_0x802ca444:
    addi    r3, r28, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      getResource__15JUTResReferenceFUlP10JKRArchive
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl getResource__15JUTResReferenceFUlP10JKRArchive
getResource__15JUTResReferenceFUlP10JKRArchive: # 0x802ca474
    mflr    r0
    mr      r6, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x0(r3)
    li      r3, 0x0
    cmpwi   r0, 0x3
    beq-    branch_0x802ca4c4
    bge-    branch_0x802ca4a8
    cmpwi   r0, 0x1
    beq-    branch_0x802ca4dc
    bge-    branch_0x802ca4b4
    b       branch_0x802ca4dc

branch_0x802ca4a8:
    cmpwi   r0, 0x5
    bge-    branch_0x802ca4dc
    b       branch_0x802ca4d4

branch_0x802ca4b4:
    addi    r3, r4, 0x0
    addi    r4, r6, 0x2
    bl      getGlbResource__10JKRArchiveFUlPCcP10JKRArchive
    b       branch_0x802ca4dc

branch_0x802ca4c4:
    addi    r3, r6, 0x2
    addi    r4, r5, 0x0
    bl      getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
    b       branch_0x802ca4dc

branch_0x802ca4d4:
    addi    r3, r6, 0x2
    bl      getGlbResource__13JKRFileLoaderFPCc
branch_0x802ca4dc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

