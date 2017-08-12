
.globl calcKeyCode__Q26JDrama8TNameRefFPCc
calcKeyCode__Q26JDrama8TNameRefFPCc: # 0x802fa4d8
    li      r4, 0x0
    b       branch_0x802fa4f0

branch_0x802fa4e0:
    mulli   r0, r4, 0x3
    lbz     r4, 0x0(r3)
    add     r4, r4, r0
    addi    r3, r3, 0x1
branch_0x802fa4f0:
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    bne+    branch_0x802fa4e0
    clrlwi  r3, r4, 16
    blr


.globl getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream: # 0x802fa504
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    addi    r4, sp, 0x20
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x20(sp)
    mr      r3, r30
    lwz     r4, 0x8(r29)
    lwz     r0, 0x10(r29)
    addi    r5, r31, -0x4
    add     r4, r4, r0
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r31, -0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    mr      r3, r30
    bl      readString__14JSUInputStreamFv
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
genObject__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream: # 0x802fa598
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    addi    r4, sp, 0x20
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x20(sp)
    mr      r3, r30
    lwz     r4, 0x8(r29)
    lwz     r0, 0x10(r29)
    addi    r5, r31, -0x4
    add     r4, r4, r0
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, r31, -0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    mr      r3, r30
    bl      readString__14JSUInputStreamFv
    lwz     r0, R13Off_m0x5db8(r13)
    addi    r4, r3, 0x0
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl __dt__Q26JDrama8TNameRefFv
__dt__Q26JDrama8TNameRefFv: # 0x802fa648
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802fa67c
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r3, r3, __vvt__Q26JDrama8TNameRef@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802fa67c
    mr      r3, r31
    bl      __dl__FPv
branch_0x802fa67c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getType__Q26JDrama8TNameRefCFv
getType__Q26JDrama8TNameRefCFv: # 0x802fa694
    li      r3, 0x0
    blr


.globl load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
load__Q26JDrama8TNameRefFR20JSUMemoryInputStream: # 0x802fa69c
    mflr    r0
    li      r5, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, sp, 0x14
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      read__14JSUInputStreamFPvl
    lhz     r0, 0x14(sp)
    mr      r3, r31
    sth     r0, 0x8(r30)
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x4(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream
save__Q26JDrama8TNameRefFR21JSUMemoryOutputStream: # 0x802fa6f4
    blr


.globl loadAfter__Q26JDrama8TNameRefFv
loadAfter__Q26JDrama8TNameRefFv: # 0x802fa6f8
    blr


.globl searchF__Q26JDrama8TNameRefFUsPCc
searchF__Q26JDrama8TNameRefFUsPCc: # 0x802fa6fc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lhz     r3, 0x8(r3)
    cmplw   r3, r0
    bne-    branch_0x802fa740
    lwz     r3, 0x4(r30)
    mr      r4, r5
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802fa740
    li      r31, 0x1
branch_0x802fa740:
    clrlwi. r0, r31, 24
    beq-    branch_0x802fa750
    mr      r3, r30
    b       branch_0x802fa754

branch_0x802fa750:
    li      r3, 0x0
branch_0x802fa754:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr

