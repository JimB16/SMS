
.globl IsEqualRenderModeVIParams__6JDramaFRC16_GXRenderModeObjRC16_GXRenderModeObj
IsEqualRenderModeVIParams__6JDramaFRC16_GXRenderModeObjRC16_GXRenderModeObj: # 0x802fb808
    stwu    sp, -0x18(sp)
    li      r6, 0x0
    addi    r7, r6, 0x0
    stw     r31, 0x14(sp)
    addi    r8, r6, 0x0
    addi    r9, r6, 0x0
    lwz     r5, 0x0(r3)
    addi    r10, r6, 0x0
    lwz     r0, 0x0(r4)
    addi    r11, r6, 0x0
    addi    r12, r6, 0x0
    cmpw    r5, r0
    addi    r31, r6, 0x0
    bne-    branch_0x802fb854
    lhz     r5, 0x4(r3)
    lhz     r0, 0x4(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb854
    li      r31, 0x1
branch_0x802fb854:
    clrlwi. r0, r31, 24
    beq-    branch_0x802fb870
    lhz     r5, 0x6(r3)
    lhz     r0, 0x6(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb870
    li      r12, 0x1
branch_0x802fb870:
    clrlwi. r0, r12, 24
    beq-    branch_0x802fb88c
    lhz     r5, 0x8(r3)
    lhz     r0, 0x8(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb88c
    li      r11, 0x1
branch_0x802fb88c:
    clrlwi. r0, r11, 24
    beq-    branch_0x802fb8a8
    lhz     r5, 0xa(r3)
    lhz     r0, 0xa(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb8a8
    li      r10, 0x1
branch_0x802fb8a8:
    clrlwi. r0, r10, 24
    beq-    branch_0x802fb8c4
    lhz     r5, 0xc(r3)
    lhz     r0, 0xc(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb8c4
    li      r9, 0x1
branch_0x802fb8c4:
    clrlwi. r0, r9, 24
    beq-    branch_0x802fb8e0
    lhz     r5, 0xe(r3)
    lhz     r0, 0xe(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb8e0
    li      r8, 0x1
branch_0x802fb8e0:
    clrlwi. r0, r8, 24
    beq-    branch_0x802fb8fc
    lhz     r5, 0x10(r3)
    lhz     r0, 0x10(r4)
    cmplw   r5, r0
    bne-    branch_0x802fb8fc
    li      r7, 0x1
branch_0x802fb8fc:
    clrlwi. r0, r7, 24
    beq-    branch_0x802fb918
    lwz     r3, 0x14(r3)
    lwz     r0, 0x14(r4)
    cmpw    r3, r0
    bne-    branch_0x802fb918
    li      r6, 0x1
branch_0x802fb918:
    lwz     r31, 0x14(sp)
    mr      r3, r6
    addi    sp, sp, 0x18
    blr


.globl IsRenderModeHalfAspectRatio__6JDramaFRC16_GXRenderModeObj
IsRenderModeHalfAspectRatio__6JDramaFRC16_GXRenderModeObj: # 0x802fb928
    lhz     r0, 0x8(r3)
    lhz     r3, 0x10(r3)
    slwi    r0, r0, 1
    subf    r0, r3, r0
    cntlzw  r0, r0
    srwi    r3, r0, 5
    blr


.globl GetRenderModeYScale__6JDramaFRC16_GXRenderModeObj
GetRenderModeYScale__6JDramaFRC16_GXRenderModeObj: # 0x802fb944
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stfd    f31, 0x10(sp)
    lbz     r0, 0x19(r3)
    li      r3, 0x0
    lfs     f31, 0x448(rtoc)
    cmplwi  r0, 0x1
    bne-    branch_0x802fb998
    lwz     r0, 0x14(r5)
    li      r4, 0x1
    cmpwi   r0, 0x1
    beq-    branch_0x802fb98c
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x2
    beq-    branch_0x802fb98c
    mr      r4, r3
branch_0x802fb98c:
    clrlwi. r0, r4, 24
    beq-    branch_0x802fb998
    li      r3, 0x1
branch_0x802fb998:
    clrlwi. r0, r3, 24
    beq-    branch_0x802fb9c0
    lis     r3, 0x803b
    crxor   6, 6, 6
    lis     r4, 0x803b
    subi    r5, r4, 0x5bec
    subi    r3, r3, 0x5c00
    li      r4, 0x37
    bl      OSPanic
    b       branch_0x802fb9d0

branch_0x802fb9c0:
    lhz     r3, 0x6(r5)
    lhz     r4, 0x8(r5)
    bl      GXGetYScaleFactor
    fmr     f31, f1
branch_0x802fb9d0:
    lwz     r0, 0x1c(sp)
    fmr     f1, f31
    lfd     f31, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs
CalcRenderModeXFBHeight__6JDramaFP16_GXRenderModeObjUs: # 0x802fb9e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    lbz     r0, 0x19(r3)
    li      r3, 0x0
    cmplwi  r0, 0x1
    bne-    branch_0x802fba44
    lwz     r0, 0x14(r31)
    li      r4, 0x1
    cmpwi   r0, 0x1
    beq-    branch_0x802fba38
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x802fba38
    mr      r4, r3
branch_0x802fba38:
    clrlwi. r0, r4, 24
    beq-    branch_0x802fba44
    li      r3, 0x1
branch_0x802fba44:
    clrlwi. r0, r3, 24
    beq-    branch_0x802fba68
    lis     r3, 0x803b
    crxor   6, 6, 6
    lis     r4, 0x803b
    subi    r5, r4, 0x5bd4
    subi    r3, r3, 0x5c00
    li      r4, 0x48
    bl      OSPanic
branch_0x802fba68:
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802fba7c
    li      r30, 0x2
    b       branch_0x802fba80

branch_0x802fba7c:
    li      r30, 0x1
branch_0x802fba80:
    clrlwi  r0, r29, 16
    lhz     r3, 0x6(r31)
    divw    r0, r0, r30
    clrlwi  r4, r0, 16
    bl      GXGetYScaleFactor
    lhz     r3, 0x6(r31)
    bl      GXGetNumXfbLines
    sth     r3, 0x8(r31)
    lhz     r0, 0x8(r31)
    mullw   r0, r0, r30
    sth     r0, 0x10(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj
CalcRenderModeVIXOrigin__6JDramaFP16_GXRenderModeObj: # 0x802fbac8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      GetVIWidthMax__6JDramaFv
    lhz     r0, 0xe(r31)
    clrlwi  r3, r3, 16
    subf    r0, r0, r3
    srawi   r0, r0, 1
    addze   r0, r0
    sth     r0, 0xa(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj
CalcRenderModeVIYOrigin__6JDramaFP16_GXRenderModeObj: # 0x802fbb0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      GetVIHeightMax__6JDramaFv
    lhz     r0, 0x10(r31)
    clrlwi  r3, r3, 16
    subf    r0, r0, r3
    srawi   r0, r0, 1
    addze   r0, r0
    sth     r0, 0xc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc
CopyRenderModeSamplePattern__6JDramaFP16_GXRenderModeObjPA2_CUc: # 0x802fbb50
    mflr    r0
    addi    r3, r3, 0x1a
    stw     r0, 0x4(sp)
    li      r5, 0x18
    stwu    sp, -0x8(sp)
    bl      memcpy
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc
CopyRenderModeVFilter__6JDramaFP16_GXRenderModeObjPCUc: # 0x802fbb78
    mflr    r0
    addi    r3, r3, 0x32
    stw     r0, 0x4(sp)
    li      r5, 0x7
    stwu    sp, -0x8(sp)
    bl      memcpy
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

