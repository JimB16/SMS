
.globl __dt__13TSMSSmplCharaFv
__dt__13TSMSSmplCharaFv: # 0x80223d68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80223dcc
    lis     r3, __vvt__13TSMSSmplChara@ha
    addi    r0, r3, __vvt__13TSMSSmplChara@l
    stw     r0, 0x0(r30)
    lwz     r3, 0xc(r30)
    bl      __dla__FPv
    cmplwi  r30, 0x0
    beq-    branch_0x80223dbc
    lis     r3, __vvt__Q26JDrama10TCharacter@ha
    addi    r0, r3, __vvt__Q26JDrama10TCharacter@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80223dbc:
    extsh.  r0, r31
    ble-    branch_0x80223dcc
    mr      r3, r30
    bl      __dl__FPv
branch_0x80223dcc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRes__13TSMSSmplCharaCFPCc
getRes__13TSMSSmplCharaCFPCc: # 0x80223de8
    mflr    r0
    addi    r4, r3, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r5, r2, R2Off_m0x1838
    stwu    sp, -0x110(sp)
    addi    r3, sp, 0x10
    lwz     r6, 0xc(r4)
    addi    r7, r3, 0x0
    li      r4, 0x100
    bl      snprintf
    addi    r3, sp, 0x10
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r0, 0x114(sp)
    addi    sp, sp, 0x110
    mtlr    r0
    blr


.globl load__13TSMSSmplCharaFR20JSUMemoryInputStream
load__13TSMSSmplCharaFR20JSUMemoryInputStream: # 0x80223e2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r4, 0xc(r30)
    addi    r3, r31, 0x0
    li      r5, 0x100
    bl      readString__14JSUInputStreamFPcUs
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

