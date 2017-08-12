
.globl __dt__9J2DScreenFv
__dt__9J2DScreenFv: # 0x802cf6e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802cf72c
    lis     r3, __vvt__9J2DScreen@h
    addi    r0, r3, __vvt__9J2DScreen@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7J2DPaneFv
    extsh.  r0, r31
    ble-    branch_0x802cf72c
    mr      r3, r30
    bl      __dl__FPv
branch_0x802cf72c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl makeHiearachyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreambbbPl
makeHiearachyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreambbbPl: # 0x802cf748
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r7, 24
    stwu    sp, -0xf8(sp)
    stmw    r14, 0xb0(sp)
    addi    r22, r7, 0x0
    lis     r7, unk_803a9f00@ha
    addi    r28, r4, 0x0
    addi    r26, r7, unk_803a9f00@l
    addi    r30, r3, 0x0
    addi    r31, r5, 0x0
    addi    r24, r6, 0x0
    addi    r29, r8, 0x0
    addi    r25, r9, 0x0
    addi    r27, r28, 0x0
    beq-    branch_0x802cf8d8
    addi    r3, r31, 0x0
    addi    r4, sp, 0xa4
    li      r5, 0x4
    bl      peek__20JSURandomInputStreamFPvl
    lwz     r3, 0xa4(sp)
    addis   r0, r3, 0xacbd
    cmplwi  r0, 0x524e
    bne-    branch_0x802cf7b0
    li      r3, 0x1
    b       branch_0x802cf7b4

branch_0x802cf7b0:
    li      r3, 0x0
branch_0x802cf7b4:
    li      r0, 0x0
    stw     r0, 0x8c(sp)
    clrlwi. r0, r3, 24
    mr      r29, r3
    lwz     r0, 0x8c(sp)
    stw     r0, 0xf0(r30)
    beq-    branch_0x802cf8d8
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x64
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x64(sp)
    addis   r0, r3, 0x9d94
    cmplwi  r0, 0x6f31
    bne-    branch_0x802cfd14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x18
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x60
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x60(sp)
    addis   r0, r3, 0xb6b2
    cmplwi  r0, 0x4631
    bne-    branch_0x802cfd14
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r31, 0x0
    addi    r4, sp, 0x5e
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r14, 0x5e(sp)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x5c
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lha     r7, 0x5c(sp)
    addi    r6, r14, 0x0
    addi    r3, sp, 0x7c
    li      r4, 0x0
    li      r5, 0x0
    bl      set__7JUTRectFiiii
    lwz     r0, 0x7c(sp)
    mr      r3, r31
    lwz     r6, 0x80(sp)
    addi    r4, sp, 0x58
    li      r5, 0x4
    stw     r0, 0x14(r30)
    stw     r6, 0x18(r30)
    lwz     r0, 0x84(sp)
    lwz     r6, 0x88(sp)
    stw     r0, 0x1c(r30)
    stw     r6, 0x20(r30)
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x58(sp)
    addi    r25, sp, 0xa8
    stw     r0, 0x78(sp)
    lwz     r0, 0x78(sp)
    stw     r0, 0xf0(r30)
branch_0x802cf8d8:
    clrlwi  r0, r22, 24
    lis     r3, unk_803e0668@h
    stw     r0, 0xac(sp)
    lis     r4, unk_45585431@h
    lis     r5, unk_50494331@h
    lis     r6, unk_54425831@h
    lis     r7, unk_57494e31@h
    lis     r8, unk_50414e31@h
    lis     r9, unk_454e4431@h
    lis     r10, unk_42474e31@h
    clrlwi  r23, r24, 24
    addi    r14, r3, unk_803e0668@l
    addi    r18, r4, unk_45585431@l
    addi    r16, r5, unk_50494331@l
    addi    r17, r6, unk_54425831@l
    addi    r15, r7, unk_57494e31@l
    addi    r21, r8, unk_50414e31@l
    addi    r20, r9, unk_454e4431@l
    addi    r19, r10, unk_42474e31@l
    clrlwi  r22, r29, 24
branch_0x802cf928:
    cmplwi  r22, 0x0
    beq-    branch_0x802cfb44
    addi    r3, r31, 0x0
    addi    r4, sp, 0x98
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    cmplwi  r3, 0x4
    beq-    branch_0x802cf95c
    addi    r3, r26, 0x0
    crxor   6, 6, 6
    addi    r5, r26, 0x10
    li      r4, 0x91
    bl      OSPanic
branch_0x802cf95c:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x94
    li      r5, 0x4
    bl      peek__20JSURandomInputStreamFPvl
    cmplwi  r3, 0x4
    beq-    branch_0x802cf988
    addi    r3, r26, 0x0
    crxor   6, 6, 6
    addi    r5, r26, 0x10
    li      r4, 0x96
    bl      OSPanic
branch_0x802cf988:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, -0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x94(sp)
    add     r0, r0, r3
    stw     r0, 0x0(r25)
    lwz     r0, 0x98(sp)
    cmpw    r0, r21
    beq-    branch_0x802cfa64
    bge-    branch_0x802cf9f4
    cmpw    r0, r20
    beq-    branch_0x802cfa50
    bge-    branch_0x802cf9e8
    cmpw    r0, r19
    beq-    branch_0x802cfa1c
    b       branch_0x802cfb04

branch_0x802cf9e8:
    cmpw    r0, r18
    beq-    branch_0x802cfd14
    b       branch_0x802cfb04

branch_0x802cf9f4:
    cmpw    r0, r17
    beq-    branch_0x802cfadc
    bge-    branch_0x802cfa0c
    cmpw    r0, r16
    beq-    branch_0x802cfab4
    b       branch_0x802cfb04

branch_0x802cfa0c:
    cmpw    r0, r15
    beq-    branch_0x802cfa8c
    b       branch_0x802cfb04

branch_0x802cfa18:
    b       branch_0x802cfd14

branch_0x802cfa1c:
    lwz     r4, 0x0(r25)
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    addi    r5, r31, 0x0
    addi    r6, r24, 0x0
    addi    r8, r29, 0x0
    addi    r9, r25, 0x0
    li      r7, 0x0
    bl      makeHiearachyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreambbbPl
    b       branch_0x802cfb30

branch_0x802cfa50:
    lwz     r4, 0x0(r25)
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
    b       branch_0x802cfd14

branch_0x802cfa64:
    li      r3, 0xec
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802cfb30
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cfb30

branch_0x802cfa8c:
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802cfb30
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cfb30

branch_0x802cfab4:
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802cfb30
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cfb30

branch_0x802cfadc:
    li      r3, 0x128
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802cfb30
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cfb30

branch_0x802cfb04:
    cmplwi  r23, 0x0
    beq-    branch_0x802cfb30
    mr      r3, r30
    lwz     r4, 0x8(r30)
    lwz     r12, 0x0(r30)
    addi    r5, r28, 0x0
    addi    r6, r31, 0x0
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    mr      r27, r3
branch_0x802cfb30:
    lwz     r4, 0x0(r25)
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      seek__20JSURandomInputStreamFl17JSUStreamSeekFrom
    b       branch_0x802cf928

branch_0x802cfb44:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x90
    li      r5, 0x2
    bl      peek__20JSURandomInputStreamFPvl
    cmplwi  r3, 0x2
    beq-    branch_0x802cfb70
    addi    r3, r26, 0x0
    crxor   6, 6, 6
    addi    r5, r26, 0x10
    li      r4, 0xc7
    bl      OSPanic
branch_0x802cfb70:
    lhz     r4, 0x90(sp)
    cmplwi  r4, 0x13
    bgt-    branch_0x802cfcdc
    slwi    r0, r4, 2
    lwzx    r0, r14, r0
    mtctr   r0
    bctr       
branch_0x802cfb8c:
    b       branch_0x802cfd14

branch_0x802cfb90:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    addi    r5, r31, 0x0
    addi    r6, r24, 0x0
    addi    r8, r29, 0x0
    li      r7, 0x0
    li      r9, 0x0
    bl      makeHiearachyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreambbbPl
    b       branch_0x802cf928

branch_0x802cfbcc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x4
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x802cfd14

branch_0x802cfbe8:
    li      r3, 0xec
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x802cfc0c
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb
branch_0x802cfc0c:
    lwz     r0, 0xac(sp)
    cmplwi  r0, 0x0
    beq+    branch_0x802cf928
    lwz     r0, 0x18(r27)
    addi    r3, sp, 0x68
    lwz     r5, 0x20(r27)
    li      r4, 0x0
    lwz     r8, 0x14(r27)
    lwz     r6, 0x1c(r27)
    subf    r7, r0, r5
    li      r5, 0x0
    subf    r6, r8, r6
    bl      set__7JUTRectFiiii
    lwz     r3, 0x68(sp)
    lwz     r0, 0x6c(sp)
    stw     r3, 0x14(r30)
    stw     r0, 0x18(r30)
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    stw     r3, 0x1c(r30)
    stw     r0, 0x20(r30)
    b       branch_0x802cf928

branch_0x802cfc64:
    li      r3, 0x13c
    bl      __nw__FUl
    mr.     r27, r3
    beq+    branch_0x802cf928
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cf928

branch_0x802cfc8c:
    li      r3, 0x15c
    bl      __nw__FUl
    mr.     r27, r3
    beq+    branch_0x802cf928
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cf928

branch_0x802cfcb4:
    li      r3, 0x128
    bl      __nw__FUl
    mr.     r27, r3
    beq+    branch_0x802cf928
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    addi    r6, r29, 0x0
    bl      __ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamb
    b       branch_0x802cf928

branch_0x802cfcdc:
    cmplwi  r23, 0x0
    beq-    branch_0x802cfd04
    lwz     r12, 0x0(r30)
    mr      r3, r30
    mr      r5, r28
    lwz     r12, 0x2c(r12)
    addi    r6, r31, 0x0
    mtlr    r12
    blrl
    b       branch_0x802cfd0c

branch_0x802cfd04:
    mr      r3, r30
    bl      stop__9J2DScreenFv
branch_0x802cfd0c:
    mr      r27, r3
    b       branch_0x802cf928

branch_0x802cfd14:
    lmw     r14, 0xb0(sp)
    lwz     r0, 0xfc(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl makeUserPane__9J2DScreenFUsP7J2DPaneP20JSURandomInputStream
makeUserPane__9J2DScreenFUsP7J2DPaneP20JSURandomInputStream: # 0x802cfd28
    mflr    r0
    lis     r3, unk_803a9f00@ha
    stw     r0, 0x4(sp)
    lis     r4, unk_803a9f2c@ha
    addi    r5, r4, unk_803a9f2c@l
    crxor   6, 6, 6
    stwu    sp, -0x8(sp)
    addi    r3, r3, unk_803a9f00@l
    li      r4, 0x10e
    bl      OSPanic
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeUserPane__9J2DScreenFUlP7J2DPaneP20JSURandomInputStream
makeUserPane__9J2DScreenFUlP7J2DPaneP20JSURandomInputStream: # 0x802cfd64
    li      r3, 0x0
    blr


.globl stop__9J2DScreenFv
stop__9J2DScreenFv: # 0x802cfd6c
    mflr    r0
    lis     r3, unk_803a9f00@ha
    stw     r0, 0x4(sp)
    lis     r4, unk_803a9f2c@ha
    addi    r5, r4, unk_803a9f2c@l
    crxor   6, 6, 6
    stwu    sp, -0x8(sp)
    addi    r3, r3, unk_803a9f00@l
    li      r4, 0x137
    bl      OSPanic
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl draw__9J2DScreenFiiPC14J2DGrafContext
draw__9J2DScreenFiiPC14J2DGrafContext: # 0x802cfda8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f8(sp)
    stmw    r27, 0x1e4(sp)
    mr.     r30, r6
    addi    r29, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    beq-    branch_0x802cff80
    lis     r3, __vvt__14J2DGrafContext@h
    addi    r31, r3, __vvt__14J2DGrafContext@l
    stw     r31, 0x108(sp)
    addi    r3, sp, 0x110
    addi    r4, r30, 0x8
    lwz     r0, 0x4(r30)
    stw     r0, 0x10c(sp)
    bl      copy__7JUTRectFRC7JUTRect
    addi    r3, sp, 0x120
    addi    r4, r30, 0x18
    bl      copy__7JUTRectFRC7JUTRect
    lwz     r0, 0x28(r30)
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    stw     r0, 0x130(sp)
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    lwz     r0, 0x2c(r30)
    stw     r0, 0x134(sp)
    lwz     r0, 0x30(r30)
    stw     r0, 0x138(sp)
    lwz     r0, 0x34(r30)
    stw     r0, 0x13c(sp)
    lbz     r0, 0x38(r30)
    stb     r0, 0x140(sp)
    lwz     r0, 0x3c(r30)
    stw     r0, 0x144(sp)
    lwz     r0, 0x40(r30)
    stw     r0, 0x148(sp)
    lwz     r7, 0x44(r30)
    lwz     r0, 0x48(r30)
    stw     r7, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r7, 0x4c(r30)
    lwz     r0, 0x50(r30)
    stw     r7, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r7, 0x54(r30)
    lwz     r0, 0x58(r30)
    stw     r7, 0x15c(sp)
    stw     r0, 0x160(sp)
    lwz     r7, 0x5c(r30)
    lwz     r0, 0x60(r30)
    stw     r7, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r7, 0x64(r30)
    lwz     r0, 0x68(r30)
    stw     r7, 0x16c(sp)
    stw     r0, 0x170(sp)
    lwz     r7, 0x6c(r30)
    lwz     r0, 0x70(r30)
    stw     r7, 0x174(sp)
    stw     r0, 0x178(sp)
    lwz     r7, 0x74(r30)
    lwz     r0, 0x78(r30)
    stw     r7, 0x17c(sp)
    stw     r0, 0x180(sp)
    lwz     r7, 0x7c(r30)
    lwz     r0, 0x80(r30)
    stw     r7, 0x184(sp)
    stw     r0, 0x188(sp)
    lwz     r7, 0x84(r30)
    lwz     r0, 0x88(r30)
    stw     r7, 0x18c(sp)
    stw     r0, 0x190(sp)
    lwz     r7, 0x8c(r30)
    lwz     r0, 0x90(r30)
    stw     r7, 0x194(sp)
    stw     r0, 0x198(sp)
    lwz     r7, 0x94(r30)
    lwz     r0, 0x98(r30)
    stw     r7, 0x19c(sp)
    stw     r0, 0x1a0(sp)
    lwz     r7, 0x9c(r30)
    lwz     r0, 0xa0(r30)
    stw     r7, 0x1a4(sp)
    stw     r0, 0x1a8(sp)
    lwz     r7, 0xa4(r30)
    lwz     r0, 0xa8(r30)
    stw     r7, 0x1ac(sp)
    stw     r0, 0x1b0(sp)
    lwz     r7, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r7, 0x1b4(sp)
    stw     r0, 0x1b8(sp)
    lwz     r7, 0xb4(r30)
    lwz     r0, 0xb8(r30)
    stw     r7, 0x1bc(sp)
    stw     r0, 0x1c0(sp)
    lwz     r0, 0xbc(r30)
    stw     r0, 0x1c4(sp)
    lwz     r7, 0xc0(r30)
    lwz     r0, 0xc4(r30)
    stw     r7, 0x1c8(sp)
    stw     r0, 0x1cc(sp)
    lwz     r0, 0xc8(r30)
    stw     r0, 0x1d0(sp)
    lwz     r7, 0xcc(r30)
    lwz     r0, 0xd0(r30)
    stw     r7, 0x1d4(sp)
    stw     r0, 0x1d8(sp)
    lwz     r0, 0xd4(r30)
    stw     r0, 0x1dc(sp)
    lbz     r7, 0xec(r29)
    bl      draw__7J2DPaneFiiPC14J2DGrafContextb
    addi    r3, sp, 0x108
    bl      setScissor__14J2DGrafContextFv
    stw     r31, 0x108(sp)
    b       branch_0x802cffd8

branch_0x802cff80:
    addi    r3, sp, 0x18
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x280
    li      r7, 0x1e0
    bl      __ct__13J2DOrthoGraphFiiii
    addi    r3, sp, 0x18
    bl      setPort__13J2DOrthoGraphFv
    lbz     r7, 0xec(r29)
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, sp, 0x18
    bl      draw__7J2DPaneFiiPC14J2DGrafContextb
    addi    r3, sp, 0x18
    bl      setScissor__14J2DGrafContextFv
    lis     r3, __vvt__13J2DOrthoGraph@h
    addi    r0, r3, __vvt__13J2DOrthoGraph@l
    lis     r3, __vvt__14J2DGrafContext@h
    stw     r0, 0x18(sp)
    addi    r0, r3, __vvt__14J2DGrafContext@l
    stw     r0, 0x18(sp)
branch_0x802cffd8:
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
    li      r3, 0xd
    li      r4, 0x0
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetCullMode
    lmw     r27, 0x1e4(sp)
    lwz     r0, 0x1fc(sp)
    addi    sp, sp, 0x1f8
    mtlr    r0
    blr


.globl search__9J2DScreenFUl
search__9J2DScreenFUl: # 0x802d0050
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x802d006c
    li      r3, 0x0
    b       branch_0x802d0070

branch_0x802d006c:
    bl      search__7J2DPaneFUl
branch_0x802d0070:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__12J2DSetScreenFPCcP10JKRArchive
__ct__12J2DSetScreenFPCcP10JKRArchive: # 0x802d0080
    mflr    r0
    li      r6, 0x280
    stw     r0, 0x4(sp)
    li      r7, 0x1e0
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r28, r4, 0x0
    addi    r27, r5, 0x0
    li      r4, 0x0
    li      r5, 0x0
    stw     r3, 0x8(sp)
    addi    r3, sp, 0x1c
    lwz     r31, 0x8(sp)
    bl      set__7JUTRectFiiii
    lis     r4, unk_726f6f74@h
    addi    r7, r4, unk_726f6f74@l
    addi    r8, sp, 0x1c
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x8
    li      r6, 0x1
    bl      __ct__7J2DPaneFP7J2DPaneUsbUlRC7JUTRect
    lis     r3, __vvt__9J2DScreen@h
    addi    r0, r3, __vvt__9J2DScreen@l
    stw     r0, 0x0(r31)
    li      r0, -0x1
    lis     r3, __vvt__12J2DSetScreen@h
    stw     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r0, r3, __vvt__12J2DSetScreen@l
    stb     r29, 0xec(r31)
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    stw     r0, 0x0(r31)
    bl      getGlbResource__13JKRFileLoaderFPCcP13JKRFileLoader
    cmplwi  r3, 0x0
    addi    r27, r3, 0x0
    beq-    branch_0x802d01a8
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      getResSize__13JKRFileLoaderFPvP13JKRFileLoader
    addi    r28, sp, 0x2c
    stw     r28, 0x18(sp)
    lis     r5, __vvt__10JSUIosBase@ha
    addi    r0, r5, __vvt__10JSUIosBase@l
    lwz     r6, 0x18(sp)
    lis     r4, __vvt__14JSUInputStream@h
    lis     r5, __vvt__20JSURandomInputStream@h
    stw     r0, 0x0(r6)
    addi    r0, r4, __vvt__14JSUInputStream@l
    lis     r4, __vvt__20JSUMemoryInputStream@h
    stb     r29, 0x4(r6)
    addi    r29, r5, __vvt__20JSURandomInputStream@l
    addi    r30, r4, __vvt__20JSUMemoryInputStream@l
    stw     r0, 0x0(r6)
    addi    r5, r3, 0x0
    addi    r3, r6, 0x0
    stw     r29, 0x0(r6)
    addi    r4, r27, 0x0
    stw     r30, 0x0(r6)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r31, 0x0
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    bl      makeHiearachyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreambbbPl
    stw     r30, 0x2c(sp)
    addi    r3, r28, 0x0
    li      r4, 0x0
    stw     r29, 0x2c(sp)
    bl      __dt__14JSUInputStreamFv
branch_0x802d01a8:
    lwz     r3, 0x8(sp)
    li      r0, 0x0
    stb     r0, 0xec(r3)
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl drawSelf__9J2DScreenFiiPA3_A4_f
drawSelf__9J2DScreenFiiPA3_A4_f: # 0x802d01c8
    mflr    r0
    li      r4, 0x4
    stw     r0, 0x4(sp)
    li      r5, 0x5
    li      r6, 0xf
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    bl      GXSetBlendMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    li      r7, 0x0
    lis     r6, 0xcc01
    sth     r7, -0x8000(r6)
    sth     r7, -0x8000(r6)
    sth     r7, -0x8000(r6)
    lwz     r5, 0xf0(r31)
    stw     r5, -0x8000(r6)
    lwz     r3, 0x14(r31)
    lwz     r0, 0x1c(r31)
    subf    r0, r3, r0
    extsh   r4, r0
    sth     r4, -0x8000(r6)
    sth     r7, -0x8000(r6)
    sth     r7, -0x8000(r6)
    stw     r5, -0x8000(r6)
    lwz     r3, 0x18(r31)
    lwz     r0, 0x20(r31)
    subf    r0, r3, r0
    sth     r4, -0x8000(r6)
    extsh   r0, r0
    sth     r0, -0x8000(r6)
    sth     r7, -0x8000(r6)
    stw     r5, -0x8000(r6)
    sth     r7, -0x8000(r6)
    sth     r0, -0x8000(r6)
    sth     r7, -0x8000(r6)
    stw     r5, -0x8000(r6)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __dt__12J2DSetScreenFv
__dt__12J2DSetScreenFv: # 0x802d0280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802d02d8
    lis     r3, __vvt__12J2DSetScreen@h
    addi    r0, r3, __vvt__12J2DSetScreen@l
    stw     r0, 0x0(r30)
    beq-    branch_0x802d02c8
    lis     r3, __vvt__9J2DScreen@h
    addi    r0, r3, __vvt__9J2DScreen@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7J2DPaneFv
branch_0x802d02c8:
    extsh.  r0, r31
    ble-    branch_0x802d02d8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802d02d8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

