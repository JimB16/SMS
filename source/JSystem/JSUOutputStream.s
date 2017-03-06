
.globl __dt__15JSUOutputStreamFv
__dt__15JSUOutputStreamFv: # 0x802c5590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802c55d4
    lis     r3, 0x803e
    addi    r0, r3, 0x148
    stw     r0, 0x0(r31)
    beq-    branch_0x802c55c4
    lis     r3, 0x803b
    subi    r0, r3, 0xf0c
    stw     r0, 0x0(r31)
branch_0x802c55c4:
    extsh.  r0, r4
    ble-    branch_0x802c55d4
    mr      r3, r31
    bl      __dl__FPv
branch_0x802c55d4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl write__15JSUOutputStreamFPCvl
write__15JSUOutputStreamFPCvl: # 0x802c55ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    cmpw    r3, r31
    beq-    branch_0x802c562c
    lbz     r0, 0x4(r30)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r30)
branch_0x802c562c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl skip__15JSUOutputStreamFlSc
skip__15JSUOutputStreamFlSc: # 0x802c5644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stb     r5, 0x10(sp)
    b       branch_0x802c56a8

branch_0x802c5670:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    addi    r4, sp, 0x10
    li      r5, 0x1
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x1
    beq-    branch_0x802c56a4
    lbz     r0, 0x4(r29)
    ori     r0, r0, 0x1
    stb     r0, 0x4(r29)
    b       branch_0x802c56b0

branch_0x802c56a4:
    addi    r31, r31, 0x1
branch_0x802c56a8:
    cmpw    r31, r30
    blt+    branch_0x802c5670
branch_0x802c56b0:
    lwz     r0, 0x2c(sp)
    mr      r3, r31
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl seek__21JSURandomOutputStreamFl17JSUStreamSeekFrom
seek__21JSURandomOutputStreamFl17JSUStreamSeekFrom: # 0x802c56d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r12, 0x0(r31)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x4(r31)
    clrrwi  r0, r0, 1
    stb     r0, 0x4(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

