
.globl __ct__Q26JDrama8TDisplayFUsPvPvRC16_GXRenderModeObj
__ct__Q26JDrama8TDisplayFUsPvPvRC16_GXRenderModeObj: # 0x802f7eac
    mflr    r0
    lis     r8, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r8, 0x1dc0
    li      r11, 0x0
    stwu    sp, -0x28(sp)
    li      r8, 0x3
    cmplw   r5, r6
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    stw     r0, 0x0(r3)
    lis     r3, 0x100
    subi    r3, r3, 0x1
    sth     r11, 0xc(r31)
    li      r0, 0x20
    lwz     r10, 0x0(r7)
    lwz     r9, 0x4(r7)
    stw     r10, 0x10(r31)
    stw     r9, 0x14(r31)
    lwz     r10, 0x8(r7)
    lwz     r9, 0xc(r7)
    stw     r10, 0x18(r31)
    stw     r9, 0x1c(r31)
    lwz     r10, 0x10(r7)
    lwz     r9, 0x14(r7)
    stw     r10, 0x20(r31)
    stw     r9, 0x24(r31)
    lwz     r10, 0x18(r7)
    lwz     r9, 0x1c(r7)
    stw     r10, 0x28(r31)
    stw     r9, 0x2c(r31)
    lwz     r10, 0x20(r7)
    lwz     r9, 0x24(r7)
    stw     r10, 0x30(r31)
    stw     r9, 0x34(r31)
    lwz     r10, 0x28(r7)
    lwz     r9, 0x2c(r7)
    stw     r10, 0x38(r31)
    stw     r9, 0x3c(r31)
    lwz     r10, 0x30(r7)
    lwz     r9, 0x34(r7)
    stw     r10, 0x40(r31)
    stw     r9, 0x44(r31)
    lwz     r7, 0x38(r7)
    stw     r7, 0x48(r31)
    sth     r4, 0x4c(r31)
    stw     r11, 0x50(r31)
    stw     r8, 0x54(r31)
    stb     r11, 0x58(r31)
    stb     r11, 0x59(r31)
    stb     r11, 0x5a(r31)
    stb     r11, 0x5b(r31)
    stw     r3, 0x5c(r31)
    sth     r0, 0x64(r31)
    stw     r5, 0x4(r31)
    stw     r6, 0x8(r31)
    bne-    branch_0x802f7fa0
    lhz     r0, 0x64(r31)
    ori     r0, r0, 0x40
    sth     r0, 0x64(r31)
branch_0x802f7fa0:
    li      r3, 0x88
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x802f7fb8
    mr      r3, r30
    bl      __ct__Q26JDrama6TVideoFv
branch_0x802f7fb8:
    stw     r30, 0x60(r31)
    mr      r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl startRendering__Q26JDrama8TDisplayFv
startRendering__Q26JDrama8TDisplayFv: # 0x802f7fd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r4, 0x60(r3)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x3c(r4)
    stw     r0, 0x40(r4)
    lwz     r3, 0x18(r31)
    lwz     r0, 0x1c(r31)
    stw     r3, 0x44(r4)
    stw     r0, 0x48(r4)
    lwz     r3, 0x20(r31)
    lwz     r0, 0x24(r31)
    stw     r3, 0x4c(r4)
    stw     r0, 0x50(r4)
    lwz     r3, 0x28(r31)
    lwz     r0, 0x2c(r31)
    stw     r3, 0x54(r4)
    stw     r0, 0x58(r4)
    lwz     r3, 0x30(r31)
    lwz     r0, 0x34(r31)
    stw     r3, 0x5c(r4)
    stw     r0, 0x60(r4)
    lwz     r3, 0x38(r31)
    lwz     r0, 0x3c(r31)
    stw     r3, 0x64(r4)
    stw     r0, 0x68(r4)
    lwz     r3, 0x40(r31)
    lwz     r0, 0x44(r31)
    stw     r3, 0x6c(r4)
    stw     r0, 0x70(r4)
    lwz     r0, 0x48(r31)
    stw     r0, 0x74(r4)
    lhz     r0, 0xc(r31)
    lwz     r3, 0x60(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x4(r4)
    bl      setNextXFB__Q26JDrama6TVideoFPCv
    lwz     r3, 0x50(r31)
    bl      GXSetDispCopyGamma
    li      r3, 0x0
    bl      GXSetDispCopyFrame2Field
    lhz     r6, 0x64(r31)
    addi    r3, r31, 0x10
    rlwinm  r0, r6, 0, 27, 27
    neg     r5, r0
    subic   r4, r5, 0x1
    rlwinm  r0, r6, 0, 28, 28
    subfe   r5, r4, r5
    neg     r4, r0
    subic   r0, r4, 0x1
    subfe   r4, r0, r4
    bl      IssueGXPixelFormatSetting__6JDramaFRC16_GXRenderModeObjbb
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl endRendering__Q26JDrama8TDisplayFv
endRendering__Q26JDrama8TDisplayFv: # 0x802f80d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x60(r3)
    lhz     r4, 0x4c(r31)
    bl      waitForRetrace__Q26JDrama6TVideoFUs
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x802f814c
    lhz     r7, 0x16(r31)
    addi    r3, sp, 0x10
    lhz     r6, 0x14(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lhz     r9, 0x64(r31)
    addi    r6, sp, 0xc
    lwz     r0, 0x58(r31)
    addi    r4, sp, 0x10
    addi    r5, r31, 0x10
    stw     r0, 0xc(sp)
    lhz     r0, 0xc(r31)
    lwz     r7, 0x5c(r31)
    slwi    r0, r0, 2
    lwz     r8, 0x54(r31)
    add     r3, r31, r0
    lwz     r3, 0x4(r3)
    bl      IssueGXCopyDisp__6JDramaFPvRCQ26JDrama5TRectRC16_GXRenderModeObjQ28JUtility6TColorUl10_GXFBClampUs
    bl      GXFlush
branch_0x802f814c:
    lhz     r0, 0xc(r31)
    xori     r0, r0, 0x1
    sth     r0, 0xc(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

