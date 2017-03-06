
.globl __ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc
__ct__Q26JDrama9TViewportFRCQ26JDrama5TRectPCc: # 0x802fccfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r30, 0x8(sp)
    mr      r3, r5
    stw     r0, 0x0(r30)
    stw     r5, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r31, 0x0
    lis     r3, 0x803e
    sth     r31, 0xc(r30)
    addi    r0, r3, 0x22a8
    addi    r4, r29, 0x0
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x10
    bl      copy__7JUTRectFRC7JUTRect
    sth     r31, 0x20(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl perform__Q26JDrama9TViewportFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TViewportFUlPQ26JDrama9TGraphics: # 0x802fcd8c
    mflr    r0
    stw     r0, 0x4(sp)
    andi.   r0, r4, 0x88
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802fce24
    lfs     f1, 0x460(rtoc)
    mr      r3, r31
    lfs     f2, 0x464(rtoc)
    addi    r4, r30, 0x10
    bl      setViewport__Q26JDrama9TGraphicsFRCQ26JDrama5TRectff
    lhz     r0, 0x20(r30)
    clrlwi. r0, r0, 31
    bne-    branch_0x802fce24
    addi    r4, r31, 0x44
    addi    r3, sp, 0x18
    bl      copy__7JUTRectFRC7JUTRect
    addi    r3, sp, 0x18
    addi    r4, r30, 0x10
    bl      intersect__7JUTRectFRC7JUTRect
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r3, 0x64(r31)
    stw     r0, 0x68(r31)
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r3, 0x6c(r31)
    stw     r0, 0x70(r31)
    lwz     r4, 0x68(r31)
    lwz     r5, 0x70(r31)
    lwz     r3, 0x64(r31)
    lwz     r0, 0x6c(r31)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
branch_0x802fce24:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl load__Q26JDrama9TViewportFR20JSUMemoryInputStream
load__Q26JDrama9TViewportFR20JSUMemoryInputStream: # 0x802fce3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama9TViewportFv
__dt__Q26JDrama9TViewportFv: # 0x802fceb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fcf0c
    lis     r3, 0x803e
    addi    r0, r3, 0x22a8
    stw     r0, 0x0(r30)
    beq-    branch_0x802fcefc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fcefc:
    extsh.  r0, r31
    ble-    branch_0x802fcf0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fcf0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

