
.globl storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT
storeTLUT__10JUTPaletteF7_GXTlutP7ResTLUT: # 0x802ca0b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr.     r31, r5
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x802ca0f4
    lis     r3, unk_803a9ed0@ha
    crxor   6, 6, 6
    lis     r4, unk_803a9ee0@ha
    addi    r5, r4, unk_803a9ee0@l
    addi    r3, r3, unk_803a9ed0@l
    li      r4, 0x23
    bl      OSPanic
branch_0x802ca0f4:
    stw     r30, 0xc(r29)
    addi    r0, r31, 0x20
    addi    r3, r29, 0x0
    lbz     r4, 0x0(r31)
    stw     r4, 0x10(r29)
    lbz     r4, 0x1(r31)
    stw     r4, 0x1c(r29)
    lhz     r4, 0x2(r31)
    sth     r4, 0x18(r29)
    stw     r0, 0x14(r29)
    lwz     r4, 0x14(r29)
    lwz     r5, 0x10(r29)
    lhz     r6, 0x18(r29)
    bl      GXInitTlutObj
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv
__ct__10JUTPaletteF7_GXTlut10_GXTlutFmt15JUTTransparencyUsPv: # 0x802ca148
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r4, 0xc(r3)
    stw     r5, 0x10(r31)
    stw     r6, 0x1c(r31)
    sth     r7, 0x18(r31)
    stw     r8, 0x14(r31)
    lwz     r4, 0x14(r31)
    lwz     r5, 0x10(r31)
    lhz     r6, 0x18(r31)
    bl      GXInitTlutObj
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__10JUTPaletteFv
load__10JUTPaletteFv: # 0x802ca198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lhz     r5, 0x18(r3)
    neg     r4, r5
    subic   r0, r4, 0x1
    cmplwi  r5, 0x0
    subfe   r31, r0, r4
    beq-    branch_0x802ca1c8
    lwz     r4, 0xc(r3)
    bl      GXLoadTlut
branch_0x802ca1c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

