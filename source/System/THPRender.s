
.globl __dt__10TTHPRenderFv
__dt__10TTHPRenderFv: # 0x802a983c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802a9894
    lis     r3, 0x803e
    subi    r0, r3, 0xad8
    stw     r0, 0x0(r30)
    beq-    branch_0x802a9884
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802a9884:
    extsh.  r0, r31
    ble-    branch_0x802a9894
    mr      r3, r30
    bl      __dl__FPv
branch_0x802a9894:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__10TTHPRenderFUlPQ26JDrama9TGraphics
perform__10TTHPRenderFUlPQ26JDrama9TGraphics: # 0x802a98b0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802a9908
    bl      SMS_DrawInit__Fv
    addi    r3, r31, 0xb4
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lwz     r4, 0x10(r30)
    li      r3, 0x0
    lwz     r5, 0x14(r30)
    lwz     r6, 0x18(r30)
    lwz     r7, 0x1c(r30)
    bl      THPPlayerDrawCurrentFrame
    stw     r3, 0x20(r30)
branch_0x802a9908:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__10TTHPRenderFPCc
__ct__10TTHPRenderFPCc: # 0x802a9920
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r31)
    subi    r3, r3, 0xad8
    li      r0, -0x1
    stw     r3, 0x0(r31)
    mr      r3, r31
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r0, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

