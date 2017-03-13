
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
    lis     r3, 0x803e
    addi    r0, r3, 0x6ec
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
    lis     r7, 0x803b
    addi    r28, r4, 0x0
    subi    r26, r7, 0x6100
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
    lis     r3, 0x803e
    stw     r0, 0xac(sp)
    lis     r4, 0x4558
    lis     r5, 0x5049
    lis     r6, 0x5442
    lis     r7, 0x5749
    lis     r8, 0x5041
    lis     r9, 0x454e
    lis     r10, 0x4247
    clrlwi  r23, r24, 24
    addi    r14, r3, 0x668
    addi    r18, r4, 0x5431
    addi    r16, r5, 0x4331
    addi    r17, r6, 0x5831
    addi    r15, r7, 0x4e31
    addi    r21, r8, 0x4e31
    addi    r20, r9, 0x4431
    addi    r19, r10, 0x4e31
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
    b	    branch_0x802cfd14

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
    bctr			# switch jump

branch_0x802CFB8C:		# jumptable 802CFB88 case 0
    b       branch_0x802cfd14

branch_0x802CFB90:		# jumptable 802CFB88 case 1
mr	  r3, r31
lwz	  r12, 0(r31)
li	  r4, 4
lwz	  r12, 0x10(r12)
mtlr	  r12
blrl
addi	  r3, r30, 0
addi	  r4, r27, 0
addi	  r5, r31, 0
addi	  r6, r24, 0
addi	  r8, r29, 0
li	  r7, 0
li	  r9, 0
bl	  makeHiearachyPanes__9J2DScreenFP7J2DPaneP20JSURandomInputStreambbbPl # J2DScreen::makeHiearachyPanes((J2DPane	*,JSURandomInputStream *,bool,bool,bool,long *))
b	  branch_0x802cf928

branch_0x802CFBCC:		# jumptable 802CFB88 case 2
mr	  r3, r31
lwz	  r12, 0(r31)
li	  r4, 4
lwz	  r12, 0x10(r12)
mtlr	  r12
blrl
b	  branch_0x802cfd14

branch_0x802CFBE8:		# jumptable 802CFB88 case 16
li	  r3, 0xEC
bl	  __nw__FUl	# __nw(ulong)
mr.	  r27, r3
beq	  branch_0x802CFC0C
addi	  r3, r27, 0
addi	  r4, r28, 0
addi	  r5, r31, 0
addi	  r6, r29, 0
bl	  __ct__7J2DPaneFP7J2DPaneP20JSURandomInputStreamb # J2DPane::J2DPane((J2DPane *,JSURandomInputStream *,bool))

branch_0x802CFC0C:
lwz	  r0, 0xF8+var_4C(r1)
cmplwi	  r0, 0
beq	  branch_0x802cf928
lwz	  r0, 0x18(r27)
addi	  r3, r1, 0xF8+var_90
lwz	  r5, 0x20(r27)
li	  r4, 0
lwz	  r8, 0x14(r27)
lwz	  r6, 0x1C(r27)
subf	  r7, r0, r5
li	  r5, 0
subf	  r6, r8, r6
bl	  set__7JUTRectFiiii # JUTRect::set((int,int,int,int))
lwz	  r3, 0xF8+var_90(r1)
lwz	  r0, 0xF8+var_8C(r1)
stw	  r3, 0x14(r30)
stw	  r0, 0x18(r30)
lwz	  r3, 0xF8+var_88(r1)
lwz	  r0, 0xF8+var_84(r1)
stw	  r3, 0x1C(r30)
stw	  r0, 0x20(r30)
b	  branch_0x802cf928

branch_0x802CFC64:		# jumptable 802CFB88 case 17
li	  r3, 0x13C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r27, r3
beq	  branch_0x802cf928
addi	  r3, r27, 0
addi	  r4, r28, 0
addi	  r5, r31, 0
addi	  r6, r29, 0
bl	  __ct__9J2DWindowFP7J2DPaneP20JSURandomInputStreamb # J2DWindow::J2DWindow((J2DPane *,JSURandomInputStream *,bool))
b	  branch_0x802cf928

branch_0x802CFC8C:		# jumptable 802CFB88 case 18
li	  r3, 0x15C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r27, r3
beq	  branch_0x802cf928
addi	  r3, r27, 0
addi	  r4, r28, 0
addi	  r5, r31, 0
addi	  r6, r29, 0
bl	  __ct__10J2DPictureFP7J2DPaneP20JSURandomInputStreamb # J2DPicture::J2DPicture((J2DPane *,JSURandomInputStream	*,bool))
b	  branch_0x802cf928

branch_0x802CFCB4:		# jumptable 802CFB88 case 19
li	  r3, 0x128
bl	  __nw__FUl	# __nw(ulong)
mr.	  r27, r3
beq	  branch_0x802cf928
addi	  r3, r27, 0
addi	  r4, r28, 0
addi	  r5, r31, 0
addi	  r6, r29, 0
bl	  __ct__10J2DTextBoxFP7J2DPaneP20JSURandomInputStreamb # J2DTextBox::J2DTextBox((J2DPane *,JSURandomInputStream	*,bool))
b	  branch_0x802cf928

def_802CFB88:		# jumptable 802CFB88 default case
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
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    lis     r4, 0x803b
    subi    r5, r4, 0x60d4
    crxor   6, 6, 6
    stwu    sp, -0x8(sp)
    subi    r3, r3, 0x6100
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
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    lis     r4, 0x803b
    subi    r5, r4, 0x60d4
    crxor   6, 6, 6
    stwu    sp, -0x8(sp)
    subi    r3, r3, 0x6100
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
    lis     r3, 0x803e
    addi    r31, r3, 0x1448
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
    lis     r3, 0x803e
    addi    r0, r3, 0x14b0
    lis     r3, 0x803e
    stw     r0, 0x18(sp)
    addi    r0, r3, 0x1448
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
    lis     r4, 0x726f
    addi    r7, r4, 0x6f74
    addi    r8, sp, 0x1c
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x8
    li      r6, 0x1
    bl      __ct__7J2DPaneFP7J2DPaneUsbUlRC7JUTRect
    lis     r3, 0x803e
    addi    r0, r3, 0x6ec
    stw     r0, 0x0(r31)
    li      r0, -0x1
    lis     r3, 0x803e
    stw     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r0, r3, 0x6b8
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
    lis     r5, 0x803b
    subi    r0, r5, 0xf0c
    lwz     r6, 0x18(sp)
    lis     r4, 0x803e
    lis     r5, 0x803e
    stw     r0, 0x0(r6)
    addi    r0, r4, 0x184
    lis     r4, 0x803e
    stb     r29, 0x4(r6)
    addi    r29, r5, 0x160
    addi    r30, r4, 0x1c8
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
    lis     r3, 0x803e
    addi    r0, r3, 0x6b8
    stw     r0, 0x0(r30)
    beq-    branch_0x802d02c8
    lis     r3, 0x803e
    addi    r0, r3, 0x6ec
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

