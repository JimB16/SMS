
.globl perform__Q26JDrama8TEfbCtrlFUlPQ26JDrama9TGraphics
perform__Q26JDrama8TEfbCtrlFUlPQ26JDrama9TGraphics: # 0x802f8774
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 24, 24
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x802f8830
    lhz     r0, 0x20(r29)
    rlwinm  r0, r0, 0, 23, 23
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetColorUpdate
    lhz     r0, 0x20(r29)
    rlwinm  r0, r0, 0, 22, 22
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetAlphaUpdate
    lhz     r0, 0x20(r29)
    li      r4, 0x3
    li      r5, 0x1
    rlwinm  r0, r0, 0, 21, 21
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetZMode
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r3, 0x18(r29)
    lwz     r0, 0x1c(r29)
    stw     r3, 0x4c(r31)
    stw     r0, 0x50(r31)
branch_0x802f8830:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect
setSrcRect__Q26JDrama8TEfbCtrlFRCQ26JDrama5TRect: # 0x802f884c
    mflr    r0
    li      r6, 0x280
    stw     r0, 0x4(sp)
    li      r7, 0x210
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    mr      r30, r3
    addi    r3, sp, 0x14
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    li      r4, 0x0
    stw     r5, 0x10(r30)
    li      r5, 0x0
    stw     r0, 0x14(r30)
    lwz     r8, 0x8(r31)
    lwz     r0, 0xc(r31)
    stw     r8, 0x18(r30)
    stw     r0, 0x1c(r30)
    bl      set__7JUTRectFiiii
    addi    r4, sp, 0x14
    addi    r3, r30, 0x10
    bl      intersect__7JUTRectFRC7JUTRect
    lwz     r4, 0x0(r31)
    addi    r3, r30, 0x10
    addi    r0, r4, 0x1
    clrrwi  r0, r0, 1
    stw     r0, 0x10(r30)
    lwz     r4, 0x4(r31)
    addi    r0, r4, 0x1
    clrrwi  r0, r0, 1
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x18(r30)
    lwz     r0, 0xc(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x1c(r30)
    bl      normalize__7JUTRectFv
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl perform__Q26JDrama12TEfbCtrlDispFUlPQ26JDrama9TGraphics
perform__Q26JDrama12TEfbCtrlDispFUlPQ26JDrama9TGraphics: # 0x802f8904
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x50(sp)
    rlwinm. r28, r4, 0, 24, 24
    beq-    branch_0x802f8960
    lhz     r6, 0xfc(r31)
    addi    r3, r31, 0x8
    rlwinm  r0, r6, 0, 27, 27
    neg     r5, r0
    subic   r4, r5, 0x1
    rlwinm  r0, r6, 0, 28, 28
    subfe   r5, r4, r5
    neg     r4, r0
    subic   r0, r4, 0x1
    subfe   r4, r0, r4
    bl      IssueGXPixelFormatSetting__6JDramaFRC16_GXRenderModeObjbb
branch_0x802f8960:
    cmplwi  r28, 0x0
    beq-    branch_0x802f89fc
    lhz     r0, 0x20(r29)
    rlwinm  r0, r0, 0, 23, 23
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetColorUpdate
    lhz     r0, 0x20(r29)
    rlwinm  r0, r0, 0, 22, 22
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetAlphaUpdate
    lhz     r0, 0x20(r29)
    li      r4, 0x3
    li      r5, 0x1
    rlwinm  r0, r0, 0, 21, 21
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetZMode
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r3, 0x18(r29)
    lwz     r0, 0x1c(r29)
    stw     r3, 0x4c(r31)
    stw     r0, 0x50(r31)
branch_0x802f89fc:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x802f8a3c
    lhz     r9, 0xfc(r31)
    rlwinm. r0, r9, 0, 25, 25
    bne-    branch_0x802f8a3c
    lwz     r8, 0xf0(r31)
    addi    r6, sp, 0x4c
    lwz     r7, 0xf8(r31)
    addi    r5, r31, 0x8
    lwz     r0, 0xf4(r31)
    addi    r4, r31, 0x44
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r3, 0x4(r31)
    bl      IssueGXCopyDisp__6JDramaFPvRCQ26JDrama5TRectRC16_GXRenderModeObjQ28JUtility6TColorUl10_GXFBClampUs
branch_0x802f8a3c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl __ct__Q26JDrama11TEfbCtrlTexFPCcQ26JDrama10TFlagT_Us_
__ct__Q26JDrama11TEfbCtrlTexFPCcQ26JDrama10TFlagT_Us_: # 0x802f8a5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    lhz     r29, 0x0(r5)
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    mr      r3, r4
    stw     r28, 0x18(sp)
    stw     r0, 0x0(r28)
    stw     r4, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r28)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r28)
    li      r30, 0x0
    lis     r3, __vvt__Q26JDrama8TEfbCtrl@h
    sth     r30, 0xc(r28)
    addi    r0, r3, __vvt__Q26JDrama8TEfbCtrl@l
    li      r4, 0x0
    lwz     r31, 0x18(sp)
    li      r5, 0x0
    li      r6, 0x0
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x10
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    lis     r3, __vvt__Q26JDrama11TEfbCtrlTex@h
    sth     r29, 0x20(r31)
    addi    r0, r3, __vvt__Q26JDrama11TEfbCtrlTex@l
    stw     r0, 0x0(r28)
    lis     r3, unk_00ffffff@ha
    li      r4, 0x3
    stw     r30, 0x2c(r28)
    addi    r0, r3, unk_00ffffff@l
    addi    r3, r28, 0x0
    stw     r4, 0x34(r28)
    stb     r30, 0x38(r28)
    stb     r30, 0x39(r28)
    stb     r30, 0x3a(r28)
    stb     r30, 0x3b(r28)
    stw     r0, 0x3c(r28)
    stw     r30, 0x40(r28)
    stw     r30, 0x44(r28)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setTexAttb__Q26JDrama11TEfbCtrlTexFRC9_GXTexObj
setTexAttb__Q26JDrama11TEfbCtrlTexFRC9_GXTexObj: # 0x802f8b40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x0
    addi    r4, r31, 0x2c
    addi    r5, sp, 0x24
    addi    r6, sp, 0x22
    addi    r7, r31, 0x30
    addi    r8, sp, 0x2c
    addi    r9, sp, 0x28
    addi    r10, sp, 0x20
    bl      GXGetTexObjAll
    lhz     r3, 0x24(sp)
    lhz     r0, 0x22(sp)
    stw     r3, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    stw     r3, 0x24(r31)
    stw     r0, 0x28(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl perform__Q26JDrama11TEfbCtrlTexFUlPQ26JDrama9TGraphics
perform__Q26JDrama11TEfbCtrlTexFUlPQ26JDrama9TGraphics: # 0x802f8bac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x18(sp)
    rlwinm. r28, r4, 0, 24, 24
    beq-    branch_0x802f8c1c
    lhz     r8, 0x20(r29)
    li      r6, 0x0
    li      r7, 0x0
    rlwinm  r0, r8, 0, 27, 27
    neg     r4, r0
    subic   r3, r4, 0x1
    rlwinm  r0, r8, 0, 28, 28
    subfe   r5, r3, r4
    neg     r4, r0
    subic   r3, r4, 0x1
    rlwinm  r0, r8, 0, 20, 20
    subfe   r4, r3, r4
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    bl      IssueGXPixelFormatSetting__6JDramaFbbbbb
branch_0x802f8c1c:
    cmplwi  r28, 0x0
    beq-    branch_0x802f8cb8
    lhz     r0, 0x20(r29)
    rlwinm  r0, r0, 0, 23, 23
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetColorUpdate
    lhz     r0, 0x20(r29)
    rlwinm  r0, r0, 0, 22, 22
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetAlphaUpdate
    lhz     r0, 0x20(r29)
    li      r4, 0x3
    li      r5, 0x1
    rlwinm  r0, r0, 0, 21, 21
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r0, r0, 24
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetZMode
    lwz     r3, 0x10(r29)
    lwz     r0, 0x14(r29)
    stw     r3, 0x44(r31)
    stw     r0, 0x48(r31)
    lwz     r3, 0x18(r29)
    lwz     r0, 0x1c(r29)
    stw     r3, 0x4c(r31)
    stw     r0, 0x50(r31)
branch_0x802f8cb8:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x802f8d84
    lwz     r3, 0x34(r29)
    bl      GXSetCopyClamp
    lhz     r7, 0x20(r29)
    lwz     r4, 0x40(r29)
    rlwinm  r0, r7, 0, 26, 26
    lwz     r6, 0x44(r29)
    neg     r5, r0
    subic   r3, r5, 0x1
    rlwinm  r0, r7, 0, 20, 20
    subfe   r5, r3, r5
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    bl      IssueGXSetCopyFilter__6JDramaFbPA2_CUcbPCUc
    lwz     r0, 0x2c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802f8d84
    lhz     r5, 0x20(r29)
    addi    r3, sp, 0x14
    lwz     r0, 0x38(r29)
    stw     r0, 0x14(sp)
    lwz     r4, 0x3c(r29)
    bl      IssueGXSetCopyClear__6JDramaFQ28JUtility6TColorUlUs
    lwz     r5, 0x14(r29)
    mr      r28, r3
    lwz     r4, 0x1c(r29)
    lwz     r7, 0x10(r29)
    subf    r6, r5, r4
    lwz     r0, 0x18(r29)
    clrlwi  r3, r7, 16
    subf    r0, r7, r0
    clrlwi  r4, r5, 16
    clrlwi  r5, r0, 16
    clrlwi  r6, r6, 16
    bl      GXSetTexCopySrc
    lhz     r0, 0x20(r29)
    lwz     r3, 0x24(r29)
    rlwinm  r4, r0, 0, 19, 19
    lwz     r0, 0x28(r29)
    neg     r6, r4
    lwz     r5, 0x30(r29)
    subic   r4, r6, 0x1
    subfe   r6, r4, r6
    clrlwi  r3, r3, 16
    clrlwi  r4, r0, 16
    bl      GXSetTexCopyDst
    lwz     r3, 0x2c(r29)
    mr      r4, r28
    bl      GXCopyTex
branch_0x802f8d84:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__Q26JDrama11TEfbCtrlTexFv
__dt__Q26JDrama11TEfbCtrlTexFv: # 0x802f8da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f8e0c
    lis     r3, __vvt__Q26JDrama11TEfbCtrlTex@h
    addi    r0, r3, __vvt__Q26JDrama11TEfbCtrlTex@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802f8dfc
    lis     r3, __vvt__Q26JDrama8TEfbCtrl@h
    addi    r0, r3, __vvt__Q26JDrama8TEfbCtrl@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802f8dfc
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f8dfc:
    extsh.  r0, r31
    ble-    branch_0x802f8e0c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f8e0c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama12TEfbCtrlDispFv
__dt__Q26JDrama12TEfbCtrlDispFv: # 0x802f8e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f8e90
    lis     r3, __vvt__Q26JDrama12TEfbCtrlDisp@h
    addi    r0, r3, __vvt__Q26JDrama12TEfbCtrlDisp@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802f8e80
    lis     r3, __vvt__Q26JDrama8TEfbCtrl@h
    addi    r0, r3, __vvt__Q26JDrama8TEfbCtrl@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802f8e80
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f8e80:
    extsh.  r0, r31
    ble-    branch_0x802f8e90
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f8e90:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

