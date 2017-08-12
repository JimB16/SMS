
.globl DecidePixelFmt__6JDramaFbb
DecidePixelFmt__6JDramaFbb: # 0x802f8eac
    clrlwi. r0, r3, 24
    beq-    branch_0x802f8ebc
    li      r3, 0x2
    blr

branch_0x802f8ebc:
    clrlwi. r0, r4, 24
    beq-    branch_0x802f8ecc
    li      r3, 0x1
    blr

branch_0x802f8ecc:
    li      r3, 0x0
    blr


.globl IssueGXPixelFormatSetting__6JDramaFbbbbb
IssueGXPixelFormatSetting__6JDramaFbbbbb: # 0x802f8ed4
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r3, 24
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r7, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r5, 0x0
    beq-    branch_0x802f8f0c
    li      r0, 0x2
    b       branch_0x802f8f20

branch_0x802f8f0c:
    clrlwi. r0, r4, 24
    beq-    branch_0x802f8f1c
    li      r0, 0x1
    b       branch_0x802f8f20

branch_0x802f8f1c:
    li      r0, 0x0
branch_0x802f8f20:
    mr      r31, r0
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      GXSetPixelFmt
    clrlwi. r0, r28, 24
    li      r3, 0x0
    beq-    branch_0x802f8f5c
    addi    r0, r31, -0x1
    cmplwi  r0, 0x1
    li      r0, 0x1
    ble-    branch_0x802f8f50
    mr      r0, r3
branch_0x802f8f50:
    clrlwi. r0, r0, 24
    beq-    branch_0x802f8f5c
    li      r3, 0x1
branch_0x802f8f5c:
    bl      GXSetDither
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      GXSetFieldMode
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl IssueGXPixelFormatSetting__6JDramaFRC16_GXRenderModeObjbb
IssueGXPixelFormatSetting__6JDramaFRC16_GXRenderModeObjbb: # 0x802f8f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r5, 0x0
    bl      IsRenderModeHalfAspectRatio__6JDramaFRC16_GXRenderModeObj
    lbz     r4, 0x18(r29)
    addi    r31, r3, 0x0
    lbz     r0, 0x19(r29)
    neg     r4, r4
    subic   r3, r4, 0x1
    subfe   r4, r3, r4
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r29, r4, 24
    clrlwi  r3, r0, 24
    addi    r4, r30, 0x0
    bl      DecidePixelFmt__6JDramaFbb
    addi    r30, r3, 0x0
    li      r4, 0x0
    bl      GXSetPixelFmt
    clrlwi. r0, r28, 24
    li      r3, 0x0
    beq-    branch_0x802f9024
    addi    r0, r30, -0x1
    cmplwi  r0, 0x1
    li      r0, 0x1
    ble-    branch_0x802f9018
    mr      r0, r3
branch_0x802f9018:
    clrlwi. r0, r0, 24
    beq-    branch_0x802f9024
    li      r3, 0x1
branch_0x802f9024:
    bl      GXSetDither
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      GXSetFieldMode
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl IssueGXSetCopyFilter__6JDramaFbPA2_CUcbPCUc
IssueGXSetCopyFilter__6JDramaFbPA2_CUcbPCUc: # 0x802f9054
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r5, 24
    li      r5, 0x0
    stwu    sp, -0x8(sp)
    beq-    branch_0x802f9078
    cmplwi  r6, 0x0
    beq-    branch_0x802f9078
    li      r5, 0x1
branch_0x802f9078:
    clrlwi. r0, r3, 24
    li      r3, 0x0
    beq-    branch_0x802f9090
    cmplwi  r4, 0x0
    beq-    branch_0x802f9090
    li      r3, 0x1
branch_0x802f9090:
    bl      GXSetCopyFilter
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl IssueGXSetCopyClear__6JDramaFQ28JUtility6TColorUlUs
IssueGXSetCopyClear__6JDramaFQ28JUtility6TColorUlUs: # 0x802f90a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x1
    stw     r30, 0x28(sp)
    clrlwi  r30, r5, 16
    stw     r29, 0x24(sp)
    clrlwi. r29, r5, 31
    addi    r5, r31, 0x0
    beq-    branch_0x802f90dc
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x802f90dc
    li      r5, 0x0
branch_0x802f90dc:
    clrlwi. r0, r5, 24
    bne-    branch_0x802f90f0
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x802f90f0
    li      r31, 0x0
branch_0x802f90f0:
    clrlwi. r0, r31, 24
    beq-    branch_0x802f915c
    lwz     r0, 0x0(r3)
    addi    r3, sp, 0x14
    stw     r0, 0x14(sp)
    bl      GXSetCopyClear
    neg     r0, r29
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetColorUpdate
    rlwinm  r0, r30, 0, 30, 30
    neg     r0, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetAlphaUpdate
    rlwinm  r0, r30, 0, 29, 29
    neg     r0, r0
    cntlzw  r0, r0
    srwi    r29, r0, 5
    addi    r3, r29, 0x0
    addi    r5, r29, 0x0
    li      r4, 0x7
    bl      GXSetZMode
    clrlwi. r0, r29, 24
    beq-    branch_0x802f915c
    li      r3, 0x1
    bl      GXSetZCompLoc
branch_0x802f915c:
    lwz     r0, 0x34(sp)
    mr      r3, r31
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl IssueGXCopyDisp__6JDramaFPvRCQ26JDrama5TRectRC16_GXRenderModeObjQ28JUtility6TColorUl10_GXFBClampUs
IssueGXCopyDisp__6JDramaFPvRCQ26JDrama5TRectRC16_GXRenderModeObjQ28JUtility6TColorUl10_GXFBClampUs: # 0x802f917c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stmw    r25, 0x34(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r31, r6, 0x0
    addi    r29, r7, 0x0
    addi    r25, r9, 0x0
    addi    r3, r8, 0x0
    bl      GXSetCopyClamp
    lbz     r0, 0x19(r28)
    rlwinm. r4, r25, 0, 26, 26
    clrlwi  r30, r25, 16
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    li      r5, 0x0
    beq-    branch_0x802f91dc
    addic.  r0, r28, 0x32
    beq-    branch_0x802f91dc
    li      r5, 0x1
branch_0x802f91dc:
    cmplwi  r3, 0x0
    li      r3, 0x0
    beq-    branch_0x802f91f4
    addic.  r0, r28, 0x1a
    beq-    branch_0x802f91f4
    li      r3, 0x1
branch_0x802f91f4:
    addi    r4, r28, 0x1a
    addi    r6, r28, 0x32
    bl      GXSetCopyFilter
    lwz     r0, 0x0(r31)
    li      r31, 0x1
    clrlwi. r25, r30, 31
    stw     r0, 0x2c(sp)
    mr      r3, r31
    beq-    branch_0x802f9224
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x802f9224
    li      r3, 0x0
branch_0x802f9224:
    clrlwi. r0, r3, 24
    bne-    branch_0x802f9238
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x802f9238
    li      r31, 0x0
branch_0x802f9238:
    clrlwi. r0, r31, 24
    beq-    branch_0x802f92a8
    lwz     r0, 0x2c(sp)
    addi    r3, sp, 0x24
    mr      r4, r29
    stw     r0, 0x24(sp)
    bl      GXSetCopyClear
    neg     r0, r25
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetColorUpdate
    rlwinm  r0, r30, 0, 30, 30
    neg     r0, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    bl      GXSetAlphaUpdate
    rlwinm  r0, r30, 0, 29, 29
    neg     r0, r0
    cntlzw  r0, r0
    srwi    r29, r0, 5
    addi    r3, r29, 0x0
    addi    r5, r29, 0x0
    li      r4, 0x7
    bl      GXSetZMode
    clrlwi. r0, r29, 24
    beq-    branch_0x802f92a8
    li      r3, 0x1
    bl      GXSetZCompLoc
branch_0x802f92a8:
    lwz     r0, 0x0(r27)
    mr      r25, r31
    lwz     r4, 0x4(r27)
    lwz     r5, 0x8(r27)
    clrlwi  r3, r0, 16
    lwz     r0, 0xc(r27)
    clrlwi  r4, r4, 16
    clrlwi  r5, r5, 16
    clrlwi  r6, r0, 16
    bl      GXSetDispCopySrc
    mr      r3, r28
    bl      GetRenderModeYScale__6JDramaFRC16_GXRenderModeObj
    bl      GXSetDispCopyYScale
    lhz     r5, 0x4(r28)
    clrlwi  r4, r3, 16
    addi    r0, r5, 0xf
    clrrwi  r3, r0, 4
    bl      GXSetDispCopyDst
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    bl      GXCopyDisp
    lmw     r25, 0x34(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr

