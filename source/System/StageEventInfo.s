
.globl load__15TStageEventInfoFR20JSUMemoryInputStream
load__15TStageEventInfoFR20JSUMemoryInputStream: # 0x802a8a00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    mr      r3, r31
    stw     r0, 0xc(r30)
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x10(r30)
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x14(r30)
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x18(r30)
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x1c(r30)
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x20(r30)
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x24(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr

