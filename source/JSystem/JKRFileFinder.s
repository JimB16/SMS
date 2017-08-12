
.globl __ct__12JKRArcFinderFP10JKRArchivell
__ct__12JKRArcFinderFP10JKRArchivell: # 0x802c2c14
    mflr    r0
    lis     r7, __vvt__12JKRArcFinder@ha
    stw     r0, 0x4(sp)
    li      r8, 0x0
    addi    r7, r7, __vvt__12JKRArcFinder@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__13JKRFileFinder@ha
    addi    r0, r3, __vvt__13JKRFileFinder@l
    lwz     r31, 0x8(sp)
    eqv     r3, r6, r8
    srwi    r3, r3, 31
    stw     r0, 0xc(r31)
    addi    r0, r6, -0x1
    subfc   r6, r6, r8
    stb     r8, 0x10(r31)
    addze   r6, r3
    clrlwi  r6, r6, 31
    stb     r8, 0x11(r31)
    add     r0, r5, r0
    mr      r3, r31
    stw     r7, 0xc(r31)
    stw     r4, 0x14(r31)
    stb     r6, 0x10(r31)
    stw     r5, 0x18(r31)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x20(r31)
    lwz     r12, 0xc(r31)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl findNextFile__12JKRArcFinderFv
findNextFile__12JKRArcFinderFv: # 0x802c2cb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lbz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c2d50
    lwz     r0, 0x1c(r31)
    lwz     r5, 0x20(r31)
    srawi   r3, r0, 31
    srwi    r4, r5, 31
    subfc   r0, r5, r0
    adde    r0, r3, r4
    stb     r0, 0x10(r31)
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802c2d50
    lwz     r3, 0x14(r31)
    addi    r4, sp, 0xc
    lwz     r5, 0x20(r31)
    bl      getDirEntry__10JKRArchiveCFPQ210JKRArchive9SDirEntryUl
    stb     r3, 0x10(r31)
    lwz     r0, 0x10(sp)
    stw     r0, 0x0(r31)
    lwz     r0, 0x20(r31)
    stw     r0, 0x4(r31)
    lhz     r0, 0xe(sp)
    sth     r0, 0x8(r31)
    lbz     r0, 0xc(sp)
    sth     r0, 0xa(r31)
    lhz     r0, 0xa(r31)
    rlwinm  r0, r0, 0, 30, 30
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    stb     r0, 0x11(r31)
    lwz     r3, 0x20(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x20(r31)
branch_0x802c2d50:
    lwz     r0, 0x24(sp)
    lbz     r3, 0x10(r31)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__12JKRArcFinderFv
__dt__12JKRArcFinderFv: # 0x802c2d68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802c2dac
    lis     r3, __vvt__12JKRArcFinder@ha
    addi    r0, r3, __vvt__12JKRArcFinder@l
    stw     r0, 0xc(r31)
    beq-    branch_0x802c2d9c
    lis     r3, __vvt__13JKRFileFinder@ha
    addi    r0, r3, __vvt__13JKRFileFinder@l
    stw     r0, 0xc(r31)
branch_0x802c2d9c:
    extsh.  r0, r4
    ble-    branch_0x802c2dac
    mr      r3, r31
    bl      __dl__FPv
branch_0x802c2dac:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

