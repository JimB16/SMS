
.globl load__Q26JDrama10TSmplCharaFR20JSUMemoryInputStream
load__Q26JDrama10TSmplCharaFR20JSUMemoryInputStream: # 0x802f7b1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x50
    bl      readString__14JSUInputStreamFPcUs
    addi    r3, r30, 0x0
    addi    r4, sp, 0x10
    bl      mountArc__Q26JDrama10TSmplCharaFPCc
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__Q26JDrama10TSmplCharaFv
__dt__Q26JDrama10TSmplCharaFv: # 0x802f7b70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f7be8
    lis     r3, __vvt__Q26JDrama10TSmplChara@h
    addi    r0, r3, __vvt__Q26JDrama10TSmplChara@l
    stw     r0, 0x0(r30)
    lwz     r3, 0xc(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x802f7bb8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802f7bb8:
    cmplwi  r30, 0x0
    beq-    branch_0x802f7bd8
    lis     r3, __vvt__Q26JDrama10TCharacter@ha
    addi    r0, r3, __vvt__Q26JDrama10TCharacter@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f7bd8:
    extsh.  r0, r31
    ble-    branch_0x802f7be8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f7be8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getRes__Q26JDrama10TSmplCharaCFPCc
getRes__Q26JDrama10TSmplCharaCFPCc: # 0x802f7c04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xc(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl mountArc__Q26JDrama10TSmplCharaFPCc
mountArc__Q26JDrama10TSmplCharaFPCc: # 0x802f7c34
    mflr    r0
    li      r6, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    lwz     r5, R13Off_m0x5f2c(r13)
    li      r4, 0x1
    bl      mount__10JKRArchiveFPCcQ210JKRArchive10EMountModeP7JKRHeapQ210JKRArchive15EMountDirection
    stw     r3, 0xc(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

