
.globl __ct__Q26JDrama6TVideoFv
__ct__Q26JDrama6TVideoFv: # 0x802fc8a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    li      r30, 0x0
    stw     r30, 0x78(r3)
    stw     r30, 0x7c(r3)
    bl      OSGetTick
    stw     r3, 0x80(r31)
    bl      VIGetRetraceCount
    addi    r0, r3, 0x1
    stw     r0, 0x84(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r0, 0x3c(r31)
    sth     r30, 0x40(r31)
    sth     r30, 0x42(r31)
    sth     r30, 0x44(r31)
    sth     r30, 0x46(r31)
    sth     r30, 0x48(r31)
    sth     r30, 0x4a(r31)
    sth     r30, 0x4c(r31)
    stw     r0, 0x50(r31)
    lwz     r4, 0x3c(r31)
    lwz     r0, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x4(r31)
    lwz     r4, 0x44(r31)
    lwz     r0, 0x48(r31)
    stw     r4, 0x8(r31)
    stw     r0, 0xc(r31)
    lwz     r4, 0x4c(r31)
    lwz     r0, 0x50(r31)
    stw     r4, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r4, 0x54(r31)
    lwz     r0, 0x58(r31)
    stw     r4, 0x18(r31)
    stw     r0, 0x1c(r31)
    lwz     r4, 0x5c(r31)
    lwz     r0, 0x60(r31)
    stw     r4, 0x20(r31)
    stw     r0, 0x24(r31)
    lwz     r4, 0x64(r31)
    lwz     r0, 0x68(r31)
    stw     r4, 0x28(r31)
    stw     r0, 0x2c(r31)
    lwz     r4, 0x6c(r31)
    lwz     r0, 0x70(r31)
    stw     r4, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x74(r31)
    stw     r0, 0x38(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setNextXFB__Q26JDrama6TVideoFPCv
setNextXFB__Q26JDrama6TVideoFPCv: # 0x802fc99c
    stw     r4, 0x7c(r3)
    blr


.globl waitForRetrace__Q26JDrama6TVideoFUs
waitForRetrace__Q26JDrama6TVideoFUs: # 0x802fc9a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x14(sp)
    b       branch_0x802fc9cc

branch_0x802fc9c8:
    bl      VIWaitForRetrace
branch_0x802fc9cc:
    bl      VIGetRetraceCount
    lwz     r0, 0x84(r30)
    subf    r0, r3, r0
    cmpwi   r0, 0x1
    bgt+    branch_0x802fc9c8
    addi    r3, r30, 0x0
    addi    r4, r30, 0x3c
    bl      IsEqualRenderModeVIParams__6JDramaFRC16_GXRenderModeObjRC16_GXRenderModeObj
    clrlwi. r0, r3, 24
    bne-    branch_0x802fca70
    addi    r3, r30, 0x3c
    bl      VIConfigure
    lwz     r3, 0x0(r30)
    lwz     r0, 0x3c(r30)
    cmpw    r3, r0
    beq-    branch_0x802fca70
    li      r3, 0x1
    bl      VISetBlack
    li      r0, 0x0
    stw     r0, 0x78(r30)
    bl      VIFlush
    bl      VIWaitForRetrace
    lwz     r0, 0x0(r30)
    clrlwi  r3, r0, 30
    cmpwi   r3, 0x2
    bne-    branch_0x802fca44
    lwz     r0, 0x3c(r30)
    clrlwi  r0, r0, 30
    cmpwi   r0, 0x2
    bne-    branch_0x802fca5c
branch_0x802fca44:
    cmpwi   r3, 0x2
    beq-    branch_0x802fca70
    lwz     r0, 0x3c(r30)
    clrlwi  r0, r0, 30
    cmpwi   r0, 0x2
    bne-    branch_0x802fca70
branch_0x802fca5c:
    li      r29, 0x0
branch_0x802fca60:
    bl      VIWaitForRetrace
    addi    r29, r29, 0x1
    cmpwi   r29, 0x3c
    blt+    branch_0x802fca60
branch_0x802fca70:
    lwz     r0, 0x78(r30)
    lwz     r3, 0x7c(r30)
    cmplw   r0, r3
    beq-    branch_0x802fcaa0
    cmplwi  r3, 0x0
    beq-    branch_0x802fca98
    bl      VISetNextFrameBuffer
    li      r3, 0x0
    bl      VISetBlack
    b       branch_0x802fcaa0

branch_0x802fca98:
    li      r3, 0x1
    bl      VISetBlack
branch_0x802fcaa0:
    lwz     r3, 0x3c(r30)
    lwz     r0, 0x40(r30)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r3, 0x44(r30)
    lwz     r0, 0x48(r30)
    stw     r3, 0x8(r30)
    stw     r0, 0xc(r30)
    lwz     r3, 0x4c(r30)
    lwz     r0, 0x50(r30)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r3, 0x54(r30)
    lwz     r0, 0x58(r30)
    stw     r3, 0x18(r30)
    stw     r0, 0x1c(r30)
    lwz     r3, 0x5c(r30)
    lwz     r0, 0x60(r30)
    stw     r3, 0x20(r30)
    stw     r0, 0x24(r30)
    lwz     r3, 0x64(r30)
    lwz     r0, 0x68(r30)
    stw     r3, 0x28(r30)
    stw     r0, 0x2c(r30)
    lwz     r3, 0x6c(r30)
    lwz     r0, 0x70(r30)
    stw     r3, 0x30(r30)
    stw     r0, 0x34(r30)
    lwz     r0, 0x74(r30)
    stw     r0, 0x38(r30)
    lwz     r0, 0x7c(r30)
    stw     r0, 0x78(r30)
    bl      VIFlush
    bl      VIWaitForRetrace
    bl      OSGetTick
    stw     r3, 0x80(r30)
    bl      VIGetRetraceCount
    clrlwi  r0, r31, 16
    add     r0, r0, r3
    stw     r0, 0x84(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

