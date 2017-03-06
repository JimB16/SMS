
.globl __ct__14J2DGrafContextFRC7JUTRect
__ct__14J2DGrafContextFRC7JUTRect: # 0x802eb460
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x1448
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    addi    r3, r30, 0x8
    bl      copy__7JUTRectFRC7JUTRect
    addi    r3, r30, 0x18
    addi    r4, r31, 0x0
    bl      copy__7JUTRectFRC7JUTRect
    li      r8, -0x1
    stw     r8, 0x28(r30)
    li      r0, 0x0
    addi    r7, sp, 0x24
    stw     r8, 0x2c(r30)
    addi    r6, sp, 0x20
    addi    r5, sp, 0x1c
    stw     r8, 0x30(r30)
    addi    r4, sp, 0x18
    addi    r3, r30, 0x0
    stw     r8, 0x34(r30)
    stw     r0, 0x3c(r30)
    stw     r0, 0x40(r30)
    stw     r8, 0x28(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x10(sp)
    stw     r0, 0x24(sp)
    stw     r0, 0x20(sp)
    stw     r0, 0x1c(sp)
    stw     r0, 0x18(sp)
    bl      setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
    addi    r3, r30, 0x0
    li      r4, 0x6
    bl      setLineWidth__14J2DGrafContextFUc
    lwz     r0, 0x3c(sp)
    mr      r3, r30
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __ct__14J2DGrafContextFiiii
__ct__14J2DGrafContextFiiii: # 0x802eb51c
    mflr    r0
    lis     r8, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r8, 0x1448
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    add     r30, r28, r6
    add     r31, r29, r7
    addi    r27, r3, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    stw     r0, 0x0(r3)
    addi    r3, r27, 0x8
    bl      set__7JUTRectFiiii
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    addi    r3, r27, 0x18
    bl      set__7JUTRectFiiii
    li      r8, -0x1
    stw     r8, 0x28(r27)
    li      r0, 0x0
    addi    r7, sp, 0x30
    stw     r8, 0x2c(r27)
    addi    r6, sp, 0x2c
    addi    r5, sp, 0x28
    stw     r8, 0x30(r27)
    addi    r4, sp, 0x24
    addi    r3, r27, 0x0
    stw     r8, 0x34(r27)
    stw     r0, 0x3c(r27)
    stw     r0, 0x40(r27)
    stw     r8, 0x34(sp)
    lwz     r0, 0x34(sp)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x1c(sp)
    stw     r0, 0x30(sp)
    stw     r0, 0x2c(sp)
    stw     r0, 0x28(sp)
    stw     r0, 0x24(sp)
    bl      setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
    addi    r3, r27, 0x0
    li      r4, 0x6
    bl      setLineWidth__14J2DGrafContextFUc
    mr      r3, r27
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setPort__14J2DGrafContextFv
setPort__14J2DGrafContextFv: # 0x802eb5f0
    mflr    r0
    lis     r5, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r6, 0xc(r3)
    lwz     r0, 0x14(r3)
    xoris   r4, r6, 0x8000
    lwz     r7, 0x8(r3)
    lwz     r3, 0x10(r3)
    subf    r6, r6, r0
    xoris   r0, r7, 0x8000
    stw     r4, 0x24(sp)
    subf    r3, r7, r3
    stw     r0, 0x2c(sp)
    xoris   r3, r3, 0x8000
    xoris   r0, r6, 0x8000
    lfd     f4, 0x300(rtoc)
    stw     r3, 0x1c(sp)
    lfs     f5, 0x2f8(rtoc)
    stw     r0, 0x14(sp)
    lfs     f6, 0x2fc(rtoc)
    stw     r5, 0x20(sp)
    stw     r5, 0x28(sp)
    lfd     f0, 0x20(sp)
    stw     r5, 0x18(sp)
    lfd     f1, 0x28(sp)
    fsubs   f2, f0, f4
    stw     r5, 0x10(sp)
    lfd     f3, 0x18(sp)
    fsubs   f1, f1, f4
    lfd     f0, 0x10(sp)
    fsubs   f3, f3, f4
    fsubs   f4, f0, f4
    bl      GXSetViewport
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setup2D__14J2DGrafContextFv
setup2D__14J2DGrafContextFv: # 0x802eb6bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x0
    bl      GXSetVtxDesc
    addi    r3, r31, 0x84
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetAlphaCompare
    addi    r3, sp, 0xc
    bl      PSMTXIdentity
    addi    r3, sp, 0xc
    li      r4, 0x3c
    li      r5, 0x0
    bl      GXLoadTexMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x3
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetVtxAttrFmt
    lbz     r3, 0x38(r31)
    li      r4, 0x0
    bl      GXSetLineWidth
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x0
    bl      GXSetNumIndStages
    li      r31, 0x0
branch_0x802eb840:
    mr      r3, r31
    bl      GXSetTevDirect
    addi    r31, r31, 0x1
    cmpwi   r31, 0x8
    blt+    branch_0x802eb840
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setScissor__14J2DGrafContextFv
setScissor__14J2DGrafContextFv: # 0x802eb868
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x400
    stwu    sp, -0x38(sp)
    li      r7, 0x3e8
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x1c
    bl      set__7JUTRectFiiii
    addi    r3, sp, 0xc
    addi    r4, r31, 0x18
    bl      copy__7JUTRectFRC7JUTRect
    addi    r3, r31, 0x18
    addi    r4, sp, 0x1c
    bl      intersect__7JUTRectFRC7JUTRect
    addi    r3, sp, 0xc
    bl      normalize__7JUTRectFv
    addi    r3, sp, 0xc
    li      r4, 0x0
    li      r5, -0x1
    bl      add__7JUTRectFii
    addi    r3, sp, 0xc
    addi    r4, sp, 0x1c
    bl      intersect__7JUTRectFRC7JUTRect
    clrlwi. r0, r3, 24
    beq-    branch_0x802eb8f8
    lwz     r4, 0x10(sp)
    lwz     r5, 0x18(sp)
    lwz     r3, 0xc(sp)
    lwz     r0, 0x14(sp)
    subf    r6, r4, r5
    subf    r5, r3, r0
    bl      GXSetScissor
    b       branch_0x802eb90c

branch_0x802eb8f8:
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      GXSetScissor
branch_0x802eb90c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl scissor__14J2DGrafContextFRC7JUTRect
scissor__14J2DGrafContextFRC7JUTRect: # 0x802eb920
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x18(r3)
    stw     r0, 0x1c(r3)
    lwz     r5, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r5, 0x20(r3)
    stw     r0, 0x24(r3)
    blr


.globl place__14J2DGrafContextFRC7JUTRect
place__14J2DGrafContextFRC7JUTRect: # 0x802eb944
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x8(r3)
    stw     r0, 0xc(r3)
    lwz     r5, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r5, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r5, 0x18(r3)
    stw     r0, 0x1c(r3)
    lwz     r5, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r5, 0x20(r3)
    stw     r0, 0x24(r3)
    blr


.globl setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor
setColor__14J2DGrafContextFQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColorQ28JUtility6TColor: # 0x802eb988
    lwz     r0, 0x0(r4)
    li      r8, 0x1
    li      r4, 0x4
    stw     r0, 0x28(r3)
    li      r0, 0x5
    lwz     r5, 0x0(r5)
    stw     r5, 0x2c(r3)
    lwz     r5, 0x0(r6)
    stw     r5, 0x30(r3)
    lwz     r5, 0x0(r7)
    stw     r5, 0x34(r3)
    stw     r8, 0xb4(r3)
    stw     r4, 0xb8(r3)
    stw     r0, 0xbc(r3)
    stw     r8, 0xc0(r3)
    stw     r4, 0xc4(r3)
    stw     r0, 0xc8(r3)
    stw     r8, 0xcc(r3)
    stw     r4, 0xd0(r3)
    stw     r0, 0xd4(r3)
    lwz     r0, 0x28(r3)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bnelr-    

    li      r4, 0x0
    stw     r4, 0xb4(r3)
    stw     r8, 0xb8(r3)
    stw     r4, 0xbc(r3)
    lwz     r0, 0x30(r3)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bnelr-    

    stw     r4, 0xc0(r3)
    stw     r8, 0xc4(r3)
    stw     r4, 0xc8(r3)
    lwz     r0, 0x2c(r3)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bnelr-    

    lwz     r0, 0x34(r3)
    clrlwi  r0, r0, 24
    cmplwi  r0, 0xff
    bnelr-    

    stw     r4, 0xcc(r3)
    stw     r8, 0xd0(r3)
    stw     r4, 0xd4(r3)
    blr


.globl setLineWidth__14J2DGrafContextFUc
setLineWidth__14J2DGrafContextFUc: # 0x802eba44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stb     r4, 0x38(r3)
    li      r4, 0x0
    lbz     r3, 0x38(r3)
    bl      GXSetLineWidth
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl fillBox__14J2DGrafContextFRC7JUTRect
fillBox__14J2DGrafContextFRC7JUTRect: # 0x802eba70
    mflr    r0
    li      r6, 0xf
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x40(sp)
    addi    r30, r3, 0x0
    lwz     r3, 0xcc(r3)
    lwz     r4, 0xd0(r30)
    lwz     r5, 0xd4(r30)
    bl      GXSetBlendMode
    addi    r3, r30, 0x84
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lwz     r0, 0x0(r31)
    lis     r5, 0xcc01
    lwz     r3, 0x4(r31)
    li      r4, 0x0
    extsh   r6, r0
    sth     r6, -0x8000(r5)
    extsh   r7, r3
    sth     r7, -0x8000(r5)
    sth     r4, -0x8000(r5)
    lwz     r0, 0x28(r30)
    stw     r0, -0x8000(r5)
    lwz     r0, 0x8(r31)
    extsh   r3, r0
    sth     r3, -0x8000(r5)
    sth     r7, -0x8000(r5)
    sth     r4, -0x8000(r5)
    lwz     r0, 0x2c(r30)
    stw     r0, -0x8000(r5)
    lwz     r0, 0xc(r31)
    sth     r3, -0x8000(r5)
    extsh   r3, r0
    sth     r3, -0x8000(r5)
    sth     r4, -0x8000(r5)
    lwz     r0, 0x34(r30)
    stw     r0, -0x8000(r5)
    sth     r6, -0x8000(r5)
    sth     r3, -0x8000(r5)
    sth     r4, -0x8000(r5)
    lwz     r0, 0x30(r30)
    stw     r0, -0x8000(r5)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl place__14J2DGrafContextFiiii
place__14J2DGrafContextFiiii: # 0x802ebb4c
    mflr    r0
    add     r6, r4, r6
    stw     r0, 0x4(sp)
    add     r7, r5, r7
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x1c
    bl      set__7JUTRectFiiii
    lwz     r12, 0x0(r31)
    mr      r3, r31
    addi    r4, sp, 0x1c
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setLookat__14J2DGrafContextFv
setLookat__14J2DGrafContextFv: # 0x802ebb9c
    blr

