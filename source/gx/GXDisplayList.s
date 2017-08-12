
.globl GXCallDisplayList
GXCallDisplayList: # 0x80362a50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r5, R13Off_m0x72f8(r13)
    lwz     r0, 0x4f4(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80362a80
    bl      __GXSetDirtyState
branch_0x80362a80:
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80362a94
    bl      __GXSendFlushPrim
branch_0x80362a94:
    li      r0, 0x40
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    stw     r30, -0x8000(r3)
    stw     r31, -0x8000(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

