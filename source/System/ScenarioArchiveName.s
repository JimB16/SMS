
.globl load__20TScenarioArchiveNameFR20JSUMemoryInputStream
load__20TScenarioArchiveNameFR20JSUMemoryInputStream: # 0x802a8010
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0xc(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

