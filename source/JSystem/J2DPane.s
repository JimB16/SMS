
.globl __ct__7J2DPaneFv
__ct__7J2DPaneFv: # 0x802cae18
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x20(sp)
    li      r7, 0x0
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x598
    lwz     r29, 0x8(sp)
    stw     r0, 0x0(r29)
    addi    r3, r29, 0x14
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x34
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r29, 0x44
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r0, r29, 0xd0
    stw     r0, 0xc(sp)
    lwz     r30, 0xc(sp)
    mr      r3, r30
    bl      initiate__10JSUPtrListFv
    addi    r3, r30, 0xc
    addi    r4, r29, 0x0
    bl      __ct__10JSUPtrLinkFPv
    li      r0, 0x10
    lis     r3, 0x5041
    sth     r0, 0x4(r29)
    addi    r0, r3, 0x4e31
    stw     r0, 0x8(r29)
    li      r30, 0x1
    li      r31, 0x0
    stb     r30, 0xc(r29)
    addi    r3, r29, 0x14
    li      r4, 0x0
    stw     r31, 0x10(r29)
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    stw     r31, 0xb4(r29)
    li      r4, 0x7a
    li      r0, 0xff
    stw     r31, 0xb8(r29)
    mr      r3, r29
    stb     r4, 0xbc(r29)
    lfs     f0, 0x178(rtoc)
    stfs    f0, 0xc0(r29)
    stw     r31, 0xc8(r29)
    stb     r0, 0xcc(r29)
    stb     r30, 0xce(r29)
    stb     r0, 0xcd(r29)
    stb     r31, 0xcf(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__7J2DPaneFP7J2DPaneUsbUlRC7JUTRect
__ct__7J2DPaneFP7J2DPaneUsbUlRC7JUTRect: # 0x802caf50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r24, 0x20(sp)
    addi    r31, r4, 0x0
    addi    r24, r5, 0x0
    addi    r25, r6, 0x0
    addi    r26, r7, 0x0
    addi    r27, r8, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x598
    lwz     r30, 0x8(sp)
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x14
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x34
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r30, 0x44
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r28, r30, 0xd0
    stw     r28, 0x1c(sp)
    lwz     r29, 0x1c(sp)
    mr      r3, r29
    bl      initiate__10JSUPtrListFv
    addi    r3, r29, 0xc
    addi    r4, r30, 0x0
    bl      __ct__10JSUPtrLinkFPv
    lis     r3, 0x5041
    sth     r24, 0x4(r30)
    addi    r0, r3, 0x4e31
    stw     r0, 0x8(r30)
    cmplwi  r31, 0x0
    stb     r25, 0xc(r30)
    stw     r26, 0x10(r30)
    lwz     r3, 0x0(r27)
    lwz     r0, 0x4(r27)
    stw     r3, 0x14(r30)
    stw     r0, 0x18(r30)
    lwz     r3, 0x8(r27)
    lwz     r0, 0xc(r27)
    stw     r3, 0x1c(r30)
    stw     r0, 0x20(r30)
    beq-    branch_0x802cb060
    cmplwi  r28, 0x0
    beq-    branch_0x802cb054
    addi    r28, r28, 0xc
branch_0x802cb054:
    addi    r4, r28, 0x0
    addi    r3, r31, 0xd0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x802cb060:
    lwz     r3, 0x8(sp)
    li      r6, 0x0
    li      r5, 0x7a
    stw     r6, 0xb4(r3)
    li      r4, 0xff
    li      r0, 0x1
    stw     r6, 0xb8(r3)
    stb     r5, 0xbc(r3)
    lfs     f0, 0x178(rtoc)
    stfs    f0, 0xc0(r3)
    stw     r6, 0xc8(r3)
    stb     r4, 0xcc(r3)
    stb     r0, 0xce(r3)
    stb     r4, 0xcd(r3)
    stb     r6, 0xcf(r3)
    lmw     r24, 0x20(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__7J2DPaneFUsUlRC7JUTRect
__ct__7J2DPaneFUsUlRC7JUTRect: # 0x802cb0b0
    mflr    r0
    lis     r7, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r7, 0x598
    li      r7, 0x0
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r31, r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    stw     r0, 0x0(r3)
    addi    r3, r31, 0x14
    bl      set__7JUTRectFiiii
    addi    r3, r31, 0x24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r31, 0x34
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r31, 0x44
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r0, r31, 0xd0
    stw     r0, 0x18(sp)
    lwz     r30, 0x18(sp)
    mr      r3, r30
    bl      initiate__10JSUPtrListFv
    addi    r3, r30, 0xc
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    lis     r3, 0x5041
    sth     r27, 0x4(r31)
    addi    r0, r3, 0x4e31
    stw     r0, 0x8(r31)
    li      r8, 0x1
    li      r5, 0x0
    stb     r8, 0xc(r31)
    li      r4, 0x7a
    li      r0, 0xff
    stw     r28, 0x10(r31)
    mr      r3, r31
    lwz     r7, 0x0(r29)
    lwz     r6, 0x4(r29)
    stw     r7, 0x14(r31)
    stw     r6, 0x18(r31)
    lwz     r7, 0x8(r29)
    lwz     r6, 0xc(r29)
    stw     r7, 0x1c(r31)
    stw     r6, 0x20(r31)
    stw     r5, 0xb4(r31)
    stw     r5, 0xb8(r31)
    stb     r4, 0xbc(r31)
    lfs     f0, 0x178(rtoc)
    stfs    f0, 0xc0(r31)
    stw     r5, 0xc8(r31)
    stb     r0, 0xcc(r31)
    stb     r8, 0xce(r31)
    stb     r0, 0xcd(r31)
    stb     r5, 0xcf(r31)
    lwz     r0, 0x3c(sp)
    lmw     r27, 0x24(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb
__ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb: # 0x802cb1e4
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r27, r6, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x598
    lwz     r31, 0x8(sp)
    stw     r0, 0x0(r31)
    addi    r3, r31, 0x14
    bl      set__7JUTRectFiiii
    addi    r3, r31, 0x24
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r31, 0x34
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r3, r31, 0x44
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    bl      set__7JUTRectFiiii
    addi    r0, r31, 0xd0
    stw     r0, 0x74(sp)
    lwz     r28, 0x74(sp)
    mr      r3, r28
    bl      initiate__10JSUPtrListFv
    addi    r3, r28, 0xc
    addi    r4, r31, 0x0
    bl      __ct__10JSUPtrLinkFPv
    clrlwi. r0, r27, 24
    beq-    branch_0x802cb4c4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x8
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x78
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x70
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x70(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x6c
    stw     r0, 0x10(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0x6c(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x6a
    stw     r0, 0x14(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0x6a(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x68
    stw     r0, 0x18(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0x14(r31)
    mr      r3, r30
    lha     r0, 0x68(sp)
    addi    r4, sp, 0x66
    li      r5, 0x2
    add     r0, r6, r0
    stw     r0, 0x1c(r31)
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x18(r31)
    lha     r0, 0x66(sp)
    add     r0, r3, r0
    stw     r0, 0x20(r31)
    lbz     r3, 0x78(sp)
    subi    r0, r3, 0x6
    stb     r0, 0x78(sp)
    lbz     r0, 0x78(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802cb3dc
    addi    r3, r30, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r3, 0x64(sp)
    lis     r0, 0x4330
    lfd     f1, 0x180(rtoc)
    stw     r3, 0x84(sp)
    stw     r0, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xc0(r31)
    lbz     r3, 0x78(sp)
    subi    r0, r3, 0x1
    stb     r0, 0x78(sp)
    b       branch_0x802cb3e4

branch_0x802cb3dc:
    lfs     f0, 0x178(rtoc)
    stfs    f0, 0xc0(r31)
branch_0x802cb3e4:
    lbz     r0, 0x78(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802cb41c
    addi    r3, r30, 0x0
    addi    r4, sp, 0x62
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r4, 0x62(sp)
    lwz     r3, 0x8(sp)
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    lbz     r3, 0x78(sp)
    subi    r0, r3, 0x1
    stb     r0, 0x78(sp)
    b       branch_0x802cb428

branch_0x802cb41c:
    lwz     r3, 0x8(sp)
    li      r4, 0x0
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
branch_0x802cb428:
    lbz     r0, 0x78(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802cb460
    addi    r3, r30, 0x0
    addi    r4, sp, 0x61
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x61(sp)
    lwz     r3, 0x8(sp)
    stb     r0, 0xcc(r3)
    lbz     r3, 0x78(sp)
    subi    r0, r3, 0x1
    stb     r0, 0x78(sp)
    b       branch_0x802cb46c

branch_0x802cb460:
    lwz     r3, 0x8(sp)
    li      r0, 0xff
    stb     r0, 0xcc(r3)
branch_0x802cb46c:
    lwz     r31, 0x8(sp)
    li      r0, 0x1
    stb     r0, 0xce(r31)
    lbz     r0, 0x78(sp)
    cmplwi  r0, 0x0
    beq-    branch_0x802cb4b4
    addi    r3, r30, 0x0
    addi    r4, sp, 0x60
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    lbz     r0, 0x60(sp)
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    stb     r0, 0xce(r31)
    lbz     r3, 0x78(sp)
    subi    r0, r3, 0x1
    stb     r0, 0x78(sp)
branch_0x802cb4b4:
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      align__20JSURandomInputStreamFl
    b       branch_0x802cb5a8

branch_0x802cb4c4:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    addi    r3, r30, 0x0
    addi    r4, r31, 0xc
    li      r5, 0x1
    bl      read__14JSUInputStreamFPvl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, sp, 0x5c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x5c(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x5a
    stw     r0, 0x10(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0x5a(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x58
    stw     r0, 0x14(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r0, 0x58(sp)
    addi    r3, r30, 0x0
    addi    r4, sp, 0x56
    stw     r0, 0x18(r31)
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0x14(r31)
    mr      r3, r30
    lha     r0, 0x56(sp)
    addi    r4, sp, 0x54
    li      r5, 0x2
    add     r0, r6, r0
    stw     r0, 0x1c(r31)
    bl      read__14JSUInputStreamFPvl
    lwz     r5, 0x18(r31)
    mr      r3, r31
    lha     r0, 0x54(sp)
    li      r4, 0x0
    add     r0, r5, r0
    stw     r0, 0x20(r31)
    bl      setBasePosition__7J2DPaneF15J2DBasePosition
    lfs     f0, 0x178(rtoc)
    li      r3, 0xff
    li      r0, 0x1
    stfs    f0, 0xc0(r31)
    stb     r3, 0xcc(r31)
    stb     r0, 0xce(r31)
branch_0x802cb5a8:
    cmplwi  r29, 0x0
    beq-    branch_0x802cb5c8
    lwz     r3, 0x8(sp)
    addic.  r4, r3, 0xd0
    beq-    branch_0x802cb5c0
    addi    r4, r4, 0xc
branch_0x802cb5c0:
    addi    r3, r29, 0xd0
    bl      append__10JSUPtrListFP10JSUPtrLink
branch_0x802cb5c8:
    lwz     r3, 0x8(sp)
    li      r4, 0x0
    li      r0, 0xff
    stw     r4, 0xc8(r3)
    stb     r0, 0xcd(r3)
    stb     r4, 0xcf(r3)
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl __dt__7J2DPaneFv
__dt__7J2DPaneFv: # 0x802cb5f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x64(sp)
    mr.     r29, r3
    beq-    branch_0x802cb6b4
    lis     r3, 0x803e
    addi    r0, r3, 0x598
    stw     r0, 0x0(r29)
    lwz     r31, 0xd0(r29)
    cmplwi  r31, 0x0
    beq-    branch_0x802cb66c
    subi    r31, r31, 0xc
    b       branch_0x802cb66c

branch_0x802cb638:
    lwz     r4, 0x18(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x802cb648
    subi    r4, r4, 0xc
branch_0x802cb648:
    lwz     r3, 0xc(r31)
    addi    r31, r4, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x802cb66c
    lwz     r12, 0x0(r3)
    li      r4, 0x1
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x802cb66c:
    cmplwi  r31, 0x0
    bne+    branch_0x802cb638
    addic.  r0, r29, 0xd0
    beq-    branch_0x802cb6a4
    addic.  r0, r29, 0xdc
    beq-    branch_0x802cb690
    addi    r3, r29, 0xdc
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x802cb690:
    addic.  r0, r29, 0xd0
    beq-    branch_0x802cb6a4
    addi    r3, r29, 0xd0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
branch_0x802cb6a4:
    extsh.  r0, r30
    ble-    branch_0x802cb6b4
    mr      r3, r29
    bl      __dl__FPv
branch_0x802cb6b4:
    lwz     r0, 0x74(sp)
    mr      r3, r29
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    addi    sp, sp, 0x70
    blr


.globl draw__7J2DPaneFiiPC14J2DGrafContextb
draw__7J2DPaneFiiPC14J2DGrafContextb: # 0x802cb6d4
    mflr    r0
    lis     r8, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r8, 0x1448
    stwu    sp, -0x148(sp)
    stmw    r25, 0x12c(sp)
    addi    r25, r3, 0x0
    addi    r28, r6, 0x0
    addi    r26, r4, 0x0
    addi    r27, r5, 0x0
    addi    r29, r7, 0x0
    addi    r3, sp, 0x54
    addi    r4, r28, 0x8
    stw     r0, 0x4c(sp)
    lwz     r0, 0x4(r6)
    stw     r0, 0x50(sp)
    bl      copy__7JUTRectFRC7JUTRect
    addi    r3, sp, 0x64
    addi    r4, r28, 0x18
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r0, 0x28(r28)
    addi    r31, sp, 0xd0
    stw     r0, 0x74(sp)
    lwz     r0, 0x2c(r28)
    stw     r0, 0x78(sp)
    lwz     r0, 0x30(r28)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x34(r28)
    stw     r0, 0x80(sp)
    lbz     r0, 0x38(r28)
    stb     r0, 0x84(sp)
    lwz     r0, 0x3c(r28)
    stw     r0, 0x88(sp)
    lwz     r0, 0x40(r28)
    stw     r0, 0x8c(sp)
    lwz     r3, 0x44(r28)
    lwz     r0, 0x48(r28)
    stw     r3, 0x90(sp)
    stw     r0, 0x94(sp)
    lwz     r3, 0x4c(r28)
    lwz     r0, 0x50(r28)
    stw     r3, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r3, 0x54(r28)
    lwz     r0, 0x58(r28)
    stw     r3, 0xa0(sp)
    stw     r0, 0xa4(sp)
    lwz     r3, 0x5c(r28)
    lwz     r0, 0x60(r28)
    stw     r3, 0xa8(sp)
    stw     r0, 0xac(sp)
    lwz     r3, 0x64(r28)
    lwz     r0, 0x68(r28)
    stw     r3, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lwz     r3, 0x6c(r28)
    lwz     r0, 0x70(r28)
    stw     r3, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r3, 0x74(r28)
    lwz     r0, 0x78(r28)
    stw     r3, 0xc0(sp)
    stw     r0, 0xc4(sp)
    lwz     r3, 0x7c(r28)
    lwz     r0, 0x80(r28)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r3, 0x84(r28)
    lwz     r0, 0x88(r28)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r3, 0x8c(r28)
    lwz     r0, 0x90(r28)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r3, 0x94(r28)
    lwz     r0, 0x98(r28)
    stw     r3, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lwz     r3, 0x9c(r28)
    lwz     r0, 0xa0(r28)
    stw     r3, 0xe8(sp)
    stw     r0, 0xec(sp)
    lwz     r3, 0xa4(r28)
    lwz     r0, 0xa8(r28)
    stw     r3, 0xf0(sp)
    stw     r0, 0xf4(sp)
    lwz     r3, 0xac(r28)
    lwz     r0, 0xb0(r28)
    stw     r3, 0xf8(sp)
    stw     r0, 0xfc(sp)
    lwz     r3, 0xb4(r28)
    lwz     r0, 0xb8(r28)
    stw     r3, 0x100(sp)
    stw     r0, 0x104(sp)
    lwz     r0, 0xbc(r28)
    stw     r0, 0x108(sp)
    lwz     r3, 0xc0(r28)
    lwz     r0, 0xc4(r28)
    stw     r3, 0x10c(sp)
    stw     r0, 0x110(sp)
    lwz     r0, 0xc8(r28)
    stw     r0, 0x114(sp)
    lwz     r3, 0xcc(r28)
    lwz     r0, 0xd0(r28)
    stw     r3, 0x118(sp)
    stw     r0, 0x11c(sp)
    lwz     r0, 0xd4(r28)
    stw     r0, 0x120(sp)
    lwz     r0, 0x50(sp)
    cmpwi   r0, 0x1
    beq-    branch_0x802cb898
    li      r29, 0x0
branch_0x802cb898:
    lwz     r3, 0xe0(r25)
    li      r30, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x802cb8ac
    lwz     r30, 0xc(r3)
branch_0x802cb8ac:
    lbz     r0, 0xc(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x802cbaac
    addi    r3, r25, 0x14
    bl      isEmpty__7JUTRectCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x802cbaac
    lwz     r4, 0x14(r25)
    mr      r3, r25
    lwz     r0, 0x18(r25)
    stw     r4, 0x24(r25)
    stw     r0, 0x28(r25)
    lwz     r4, 0x1c(r25)
    lwz     r0, 0x20(r25)
    stw     r4, 0x2c(r25)
    stw     r0, 0x30(r25)
    lwz     r4, 0x14(r25)
    lwz     r0, 0x18(r25)
    stw     r4, 0x34(r25)
    stw     r0, 0x38(r25)
    lwz     r4, 0x1c(r25)
    lwz     r0, 0x20(r25)
    stw     r4, 0x3c(r25)
    stw     r0, 0x40(r25)
    lwz     r12, 0x0(r25)
    lwz     r4, 0x14(r25)
    lwz     r12, 0x28(r12)
    lwz     r0, 0x18(r25)
    add     r4, r4, r26
    mtlr    r12
    add     r5, r0, r27
    blrl
    cmplwi  r30, 0x0
    beq-    branch_0x802cb9b4
    lwz     r4, 0x24(r30)
    addi    r3, r25, 0x24
    lwz     r5, 0x28(r30)
    bl      add__7JUTRectFii
    addi    r3, r30, 0x84
    addi    r4, r25, 0x54
    addi    r5, r25, 0x84
    bl      PSMTXConcat
    lwz     r4, 0x24(r30)
    addi    r3, r25, 0x34
    lwz     r5, 0x28(r30)
    bl      add__7JUTRectFii
    addi    r3, r25, 0x34
    addi    r4, r30, 0x34
    bl      intersect__7JUTRectFRC7JUTRect
    lbz     r0, 0xcc(r25)
    stb     r0, 0xcd(r25)
    lbz     r0, 0xce(r25)
    cmplwi  r0, 0x0
    beq-    branch_0x802cb9e8
    lbz     r4, 0xcc(r25)
    lis     r3, 0x8081
    lbz     r0, 0xcd(r30)
    subi    r3, r3, 0x7f7f
    mullw   r0, r4, r0
    mulhw   r3, r3, r0
    add     r0, r3, r0
    srawi   r0, r0, 7
    srwi    r3, r0, 31
    add     r0, r0, r3
    stb     r0, 0xcd(r25)
    b       branch_0x802cb9e8

branch_0x802cb9b4:
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r25, 0x24
    bl      add__7JUTRectFii
    addi    r3, r25, 0x54
    addi    r4, r25, 0x84
    bl      PSMTXCopy
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r3, r25, 0x34
    bl      add__7JUTRectFii
    lbz     r0, 0xcc(r25)
    stb     r0, 0xcd(r25)
branch_0x802cb9e8:
    clrlwi. r0, r29, 24
    beq-    branch_0x802cba00
    addi    r3, r28, 0x0
    addi    r4, r25, 0x44
    addi    r5, r25, 0x34
    bl      scissorBounds__13J2DOrthoGraphFP7JUTRectP7JUTRect
branch_0x802cba00:
    addi    r3, r25, 0x34
    bl      isEmpty__7JUTRectCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802cba18
    clrlwi. r0, r29, 24
    bne-    branch_0x802cbaac
branch_0x802cba18:
    addi    r3, sp, 0x4c
    addi    r4, r25, 0x24
    bl      place__14J2DGrafContextFRC7JUTRect
    clrlwi. r0, r29, 24
    beq-    branch_0x802cba40
    addi    r3, sp, 0x4c
    addi    r4, r25, 0x44
    bl      scissor__14J2DGrafContextFRC7JUTRect
    addi    r3, sp, 0x4c
    bl      setScissor__14J2DGrafContextFv
branch_0x802cba40:
    lwz     r3, 0xc8(r25)
    bl      GXSetCullMode
    mr      r3, r25
    lwz     r12, 0x0(r25)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    lwz     r12, 0x20(r12)
    addi    r6, r31, 0x0
    mtlr    r12
    blrl
    lwz     r25, 0xd0(r25)
    cmplwi  r25, 0x0
    beq-    branch_0x802cbaa4
    subi    r25, r25, 0xc
    b       branch_0x802cbaa4

branch_0x802cba7c:
    lwz     r3, 0xc(r25)
    addi    r6, r28, 0x0
    addi    r7, r29, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      draw__7J2DPaneFiiPC14J2DGrafContextb
    lwz     r25, 0x18(r25)
    cmplwi  r25, 0x0
    beq-    branch_0x802cbaa4
    subi    r25, r25, 0xc
branch_0x802cbaa4:
    cmplwi  r25, 0x0
    bne+    branch_0x802cba7c
branch_0x802cbaac:
    lis     r3, 0x803e
    addi    r0, r3, 0x1448
    stw     r0, 0x4c(sp)
    lwz     r0, 0x14c(sp)
    lmw     r25, 0x12c(sp)
    addi    sp, sp, 0x148
    mtlr    r0
    blr


.globl drawSelf__7J2DPaneFiiPA3_A4_f
drawSelf__7J2DPaneFiiPA3_A4_f: # 0x802cbacc
    blr


.globl __dt__14J2DGrafContextFv
__dt__14J2DGrafContextFv: # 0x802cbad0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x802cbb04
    lis     r3, 0x803e
    addi    r3, r3, 0x1448
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x802cbb04
    mr      r3, r31
    bl      __dl__FPv
branch_0x802cbb04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl clip__7J2DPaneFRC7JUTRect
clip__7J2DPaneFRC7JUTRect: # 0x802cbb1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x10
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r4, 0x24(r31)
    addi    r3, sp, 0x10
    lwz     r5, 0x28(r31)
    bl      add__7JUTRectFii
    addi    r3, r31, 0x34
    addi    r4, sp, 0x10
    bl      intersect__7JUTRectFRC7JUTRect
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl search__7J2DPaneFUl
search__7J2DPaneFUl: # 0x802cbb68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    lwz     r0, 0x10(r3)
    cmplw   r30, r0
    bne-    branch_0x802cbb90
    b       branch_0x802cbbe4

branch_0x802cbb90:
    lwz     r31, 0xd0(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x802cbbd8
    subi    r31, r31, 0xc
    b       branch_0x802cbbd8

branch_0x802cbba4:
    lwz     r3, 0xc(r31)
    mr      r4, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802cbbc8
    b       branch_0x802cbbe4

branch_0x802cbbc8:
    lwz     r31, 0x18(r31)
    cmplwi  r31, 0x0
    beq-    branch_0x802cbbd8
    subi    r31, r31, 0xc
branch_0x802cbbd8:
    cmplwi  r31, 0x0
    bne+    branch_0x802cbba4
    li      r3, 0x0
branch_0x802cbbe4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl makeMatrix__7J2DPaneFii
makeMatrix__7J2DPaneFii: # 0x802cbbfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    stw     r30, 0xc0(sp)
    addi    r30, r5, 0x0
    stw     r29, 0xbc(sp)
    addi    r29, r4, 0x0
    lfs     f3, 0x178(rtoc)
    lfs     f0, 0xc0(r3)
    fcmpu   cr0, f3, f0
    beq-    branch_0x802cbd14
    lwz     r3, 0xb4(r31)
    lis     r4, 0x4330
    lwz     r0, 0xb8(r31)
    neg     r3, r3
    lfd     f2, 0x190(rtoc)
    neg     r0, r0
    xoris   r3, r3, 0x8000
    stw     r3, 0xb4(sp)
    xoris   r0, r0, 0x8000
    addi    r3, sp, 0x74
    stw     r0, 0xac(sp)
    stw     r4, 0xb0(sp)
    stw     r4, 0xa8(sp)
    lfd     f1, 0xb0(sp)
    lfd     f0, 0xa8(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      PSMTXTrans
    lbz     r4, 0xbc(r31)
    cmpwi   r4, 0x7a
    bne-    branch_0x802cbc90
    lfs     f0, 0xc0(r31)
    fneg    f1, f0
    b       branch_0x802cbc94

branch_0x802cbc90:
    lfs     f1, 0xc0(r31)
branch_0x802cbc94:
    lfs     f0, 0x188(rtoc)
    addi    r3, sp, 0x44
    fmuls   f1, f0, f1
    bl      PSMTXRotRad
    lwz     r5, 0xb4(r31)
    lis     r4, 0x4330
    lwz     r0, 0xb8(r31)
    addi    r3, sp, 0x14
    add     r5, r5, r29
    add     r0, r0, r30
    lfd     f2, 0x190(rtoc)
    xoris   r5, r5, 0x8000
    lfs     f3, 0x178(rtoc)
    xoris   r0, r0, 0x8000
    stw     r5, 0xac(sp)
    stw     r0, 0xb4(sp)
    stw     r4, 0xa8(sp)
    stw     r4, 0xb0(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      PSMTXTrans
    addi    r3, sp, 0x44
    addi    r4, sp, 0x74
    addi    r5, r31, 0x54
    bl      PSMTXConcat
    addi    r4, r31, 0x54
    addi    r5, r4, 0x0
    addi    r3, sp, 0x14
    bl      PSMTXConcat
    b       branch_0x802cbd4c

branch_0x802cbd14:
    xoris   r3, r29, 0x8000
    lfd     f2, 0x190(rtoc)
    xoris   r0, r30, 0x8000
    stw     r3, 0xac(sp)
    lis     r4, 0x4330
    stw     r0, 0xb4(sp)
    addi    r3, r31, 0x54
    stw     r4, 0xa8(sp)
    stw     r4, 0xb0(sp)
    lfd     f1, 0xa8(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f1, f1, f2
    fsubs   f2, f0, f2
    bl      PSMTXTrans
branch_0x802cbd4c:
    lwz     r0, 0xcc(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    mtlr    r0
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xc8
    blr


.globl setCullBack__7J2DPaneF11_GXCullMode
setCullBack__7J2DPaneF11_GXCullMode: # 0x802cbd68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r4
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    stw     r31, 0xc8(r3)
    lwz     r28, 0xd0(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x802cbe2c
    subi    r28, r28, 0xc
    b       branch_0x802cbe2c

branch_0x802cbda0:
    lwz     r3, 0xc(r28)
    stw     r31, 0xc8(r3)
    lwz     r29, 0xd0(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x802cbe14
    subi    r29, r29, 0xc
    b       branch_0x802cbe14

branch_0x802cbdbc:
    lwz     r3, 0xc(r29)
    stw     r31, 0xc8(r3)
    addi    r3, r3, 0xd0
    bl      getFirstLink__10JSUPtrListCFv
    cmplwi  r3, 0x0
    beq-    branch_0x802cbdd8
    subi    r3, r3, 0xc
branch_0x802cbdd8:
    mr      r30, r3
    b       branch_0x802cbdfc

branch_0x802cbde0:
    lwz     r3, 0xc(r30)
    mr      r4, r31
    bl      setCullBack__7J2DPaneF11_GXCullMode
    lwz     r30, 0x18(r30)
    cmplwi  r30, 0x0
    beq-    branch_0x802cbdfc
    subi    r30, r30, 0xc
branch_0x802cbdfc:
    cmplwi  r30, 0x0
    bne+    branch_0x802cbde0
    lwz     r29, 0x18(r29)
    cmplwi  r29, 0x0
    beq-    branch_0x802cbe14
    subi    r29, r29, 0xc
branch_0x802cbe14:
    cmplwi  r29, 0x0
    bne+    branch_0x802cbdbc
    lwz     r28, 0x18(r28)
    cmplwi  r28, 0x0
    beq-    branch_0x802cbe2c
    subi    r28, r28, 0xc
branch_0x802cbe2c:
    cmplwi  r28, 0x0
    bne+    branch_0x802cbda0
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xa0
    blr


.globl setBasePosition__7J2DPaneF15J2DBasePosition
setBasePosition__7J2DPaneF15J2DBasePosition: # 0x802cbe54
    lis     r5, 0x5555
    stw     r4, 0xc4(r3)
    addi    r0, r5, 0x5556
    mulhw   r5, r0, r4
    srwi    r0, r5, 31
    add     r0, r5, r0
    mulli   r0, r0, 0x3
    subf.   r0, r0, r4
    bne-    branch_0x802cbe84
    li      r0, 0x0
    stw     r0, 0xb4(r3)
    b       branch_0x802cbeb8

branch_0x802cbe84:
    cmpwi   r0, 0x1
    bne-    branch_0x802cbea8
    lwz     r5, 0x14(r3)
    lwz     r0, 0x1c(r3)
    subf    r0, r5, r0
    srawi   r0, r0, 1
    addze   r0, r0
    stw     r0, 0xb4(r3)
    b       branch_0x802cbeb8

branch_0x802cbea8:
    lwz     r5, 0x14(r3)
    lwz     r0, 0x1c(r3)
    subf    r0, r5, r0
    stw     r0, 0xb4(r3)
branch_0x802cbeb8:
    lis     r5, 0x5555
    addi    r0, r5, 0x5556
    mulhw   r4, r0, r4
    srwi    r0, r4, 31
    add.    r0, r4, r0
    bne-    branch_0x802cbedc
    li      r0, 0x0
    stw     r0, 0xb8(r3)
    b       branch_0x802cbf10

branch_0x802cbedc:
    cmpwi   r0, 0x1
    bne-    branch_0x802cbf00
    lwz     r4, 0x18(r3)
    lwz     r0, 0x20(r3)
    subf    r0, r4, r0
    srawi   r0, r0, 1
    addze   r0, r0
    stw     r0, 0xb8(r3)
    b       branch_0x802cbf10

branch_0x802cbf00:
    lwz     r4, 0x18(r3)
    lwz     r0, 0x20(r3)
    subf    r0, r4, r0
    stw     r0, 0xb8(r3)
branch_0x802cbf10:
    li      r0, 0x7a
    stb     r0, 0xbc(r3)
    blr


.globl setConnectParent__7J2DPaneFb
setConnectParent__7J2DPaneFb: # 0x802cbf1c
    li      r0, 0x0
    stb     r0, 0xcf(r3)
    li      r3, 0x0
    blr


.globl drawSelf__7J2DPaneFii
drawSelf__7J2DPaneFii: # 0x802cbf2c
    blr

