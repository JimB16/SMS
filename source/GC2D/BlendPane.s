
.globl update__10TBlendPaneFv
update__10TBlendPaneFv: # 0x8017900c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stfd    f30, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      update__10TBoundPaneFv
    lbz     r0, 0x70(r29)
    addi    r31, r3, 0x0
    cmplwi  r0, 0x0
    beq-    branch_0x801790b8
    lfs     f1, 0x6c(r29)
    lfs     f0, -0x4720(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80179064
    stfs    f0, 0x6c(r29)
    li      r0, 0x0
    stb     r0, 0x70(r29)
branch_0x80179064:
    lfs     f0, -0x4720(rtoc)
    lfs     f30, 0x6c(r29)
    lwz     r30, 0x0(r29)
    fsubs   f31, f0, f30
    stfs    f30, 0x104(r30)
    mr      r3, r30
    stfs    f31, 0x108(r30)
    stfs    f0, 0x10c(r30)
    stfs    f0, 0x110(r30)
    bl      setBlendKonstColor__10J2DPictureFv
    stfs    f30, 0x114(r30)
    mr      r3, r30
    stfs    f31, 0x118(r30)
    lfs     f0, -0x4720(rtoc)
    stfs    f0, 0x11c(r30)
    stfs    f0, 0x120(r30)
    bl      setBlendKonstAlpha__10J2DPictureFv
    lfs     f1, 0x6c(r29)
    lfs     f0, 0x68(r29)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(r29)
branch_0x801790b8:
    clrlwi. r0, r31, 24
    li      r3, 0x0
    beq-    branch_0x801790d4
    lbz     r0, 0x70(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801790d4
    li      r3, 0x1
branch_0x801790d4:
    clrlwi. r0, r3, 24
    beq-    branch_0x801790e4
    li      r3, 0x1
    b       branch_0x801790e8

branch_0x801790e4:
    li      r3, 0x0
branch_0x801790e8:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    mtlr    r0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__10TBlendPaneFP9J2DScreenUl
__ct__10TBlendPaneFP9J2DScreenUl: # 0x8017910c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      __ct__10TBoundPaneFP9J2DScreenUl
    lis     r3, 0x803c
    addi    r0, r3, 0xfc0
    stw     r0, 0x74(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x70(r31)
    lfs     f0, -0x471c(rtoc)
    stfs    f0, 0x68(r31)
    stfs    f0, 0x6c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

