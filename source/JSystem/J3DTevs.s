
.globl J3DLoadArrayBasePtr__F7_GXAttrPv
J3DLoadArrayBasePtr__F7_GXAttrPv: # 0x802edeec
    cmpwi   r3, 0x19
    bne-    branch_0x802edefc
    li      r3, 0x1
    b       branch_0x802edf00

branch_0x802edefc:
    subi    r3, r3, 0x9
branch_0x802edf00:
    li      r0, 0x8
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    addi    r3, r3, 0xa0
    clrlwi  r0, r4, 1
    stb     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    blr


.globl J3DSetVtxAttrFmtv__F9_GXVtxFmtP17_GXVtxAttrFmtListb
J3DSetVtxAttrFmtv__F9_GXVtxFmtP17_GXVtxAttrFmtListb: # 0x802edf20
    mflr    r0
    lis     r6, 0x803e
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    li      r5, 0x1
    stwu    sp, -0xa0(sp)
    stmw    r14, 0x58(sp)
    li      r31, 0x0
    li      r30, 0x0
    stw     r5, 0x54(sp)
    li      r5, 0x4
    li      r25, 0x0
    stw     r5, 0x50(sp)
    li      r5, 0x0
    li      r26, 0x1
    stw     r5, 0x4c(sp)
    li      r5, 0x4
    li      r22, 0x4
    stw     r5, 0x48(sp)
    li      r5, 0x1
    li      r20, 0x0
    stw     r5, 0x44(sp)
    li      r5, 0x5
    li      r21, 0x1
    stw     r5, 0x40(sp)
    li      r5, 0x1
    li      r23, 0x4
    stw     r5, 0x3c(sp)
    li      r5, 0x5
    li      r15, 0x0
    stw     r5, 0x38(sp)
    li      r5, 0x1
    li      r18, 0x1
    stw     r5, 0x34(sp)
    li      r5, 0x4
    li      r19, 0x4
    stw     r5, 0x30(sp)
    li      r5, 0x0
    li      r16, 0x0
    stw     r5, 0x2c(sp)
    li      r5, 0x1
    li      r14, 0x1
    stw     r5, 0x28(sp)
    li      r5, 0x4
    li      r17, 0x4
    stw     r5, 0x24(sp)
    li      r5, 0x0
    li      r24, 0x0
    stw     r5, 0x20(sp)
    li      r5, 0x1
    li      r27, 0x1
    stw     r5, 0x1c(sp)
    li      r5, 0x4
    li      r28, 0x4
    stw     r3, 0x14(sp)
    addi    r3, r6, 0x1560
    li      r29, 0x0
    stw     r5, 0x18(sp)
    b       branch_0x802ee148

branch_0x802ee00c:
    subi    r5, r5, 0x9
    cmplwi  r5, 0x10
    bgt-    branch_0x802ee144
    slwi    r5, r5, 2
    lwzx    r5, r3, r5
    mtctr   r5
    bctr			# switch jump

branch_0x802EE028:		# jumptable 802EE024 case 0
    lwz     r5, 0x4(r4)
    stw     r5, 0x54(sp)
    lwz     r5, 0x8(r4)
    stw     r5, 0x50(sp)
    lbz     r5, 0xc(r4)
    stw     r5, 0x4c(sp)
    b       branch_0x802ee144

branch_0x802EE044:		# jumptable 802EE024 cases 1,16
lwz	  r6, 4(r4)
lwz	  r5, 8(r4)
cmpwi	  r6, 2
stw	  r5, 0xA0+var_58(r1)
bne	  branch_0x802EE064
li	  r31, 1
li	  r30, 1
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE064:
cmplwi	  r0, 0
beq	  branch_0x802EE074
li	  r31, 1
b	  branch_0x802EE078

branch_0x802EE074:
mr	  r31, r6

branch_0x802EE078:
li	  r30, 0
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE080:		# jumptable 802EE024 case 2
lwz	  r5, 4(r4)
stw	  r5, 0xA0+var_5C(r1)
lwz	  r5, 8(r4)
stw	  r5, 0xA0+var_60(r1)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE094:		# jumptable 802EE024 case 3
lwz	  r5, 4(r4)
stw	  r5, 0xA0+var_64(r1)
lwz	  r5, 8(r4)
stw	  r5, 0xA0+var_68(r1)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE0A8:		# jumptable 802EE024 case 4
lwz	  r5, 4(r4)
stw	  r5, 0xA0+var_6C(r1)
lwz	  r5, 8(r4)
stw	  r5, 0xA0+var_70(r1)
lbz	  r5, 0xC(r4)
stw	  r5, 0xA0+var_74(r1)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE0C4:		# jumptable 802EE024 case 5
lwz	  r5, 4(r4)
stw	  r5, 0xA0+var_78(r1)
lwz	  r5, 8(r4)
stw	  r5, 0xA0+var_7C(r1)
lbz	  r5, 0xC(r4)
stw	  r5, 0xA0+var_80(r1)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE0E0:		# jumptable 802EE024 case 6
lwz	  r5, 4(r4)
lbz	  r25, 0xC(r4)
stw	  r5, 0xA0+var_84(r1)
lwz	  r5, 8(r4)
stw	  r5, 0xA0+var_88(r1)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE0F8:		# jumptable 802EE024 case 7
lwz	  r26, 4(r4)
lwz	  r22, 8(r4)
lbz	  r20, 0xC(r4)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE108:		# jumptable 802EE024 case 8
lwz	  r21, 4(r4)
lwz	  r23, 8(r4)
lbz	  r15, 0xC(r4)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE118:		# jumptable 802EE024 case 9
lwz	  r18, 4(r4)
lwz	  r19, 8(r4)
lbz	  r16, 0xC(r4)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE128:		# jumptable 802EE024 case 10
lwz	  r14, 4(r4)
lwz	  r17, 8(r4)
lbz	  r24, 0xC(r4)
b	  def_802EE024	# jumptable 802EE024 default case

branch_0x802EE138:		# jumptable 802EE024 case 11
lwz	  r27, 4(r4)
lwz	  r28, 8(r4)
lbz	  r29, 0xC(r4)

def_802EE024:		# jumptable 802EE024 default case
branch_0x802ee144:
    addi    r4, r4, 0x10
branch_0x802ee148:
    lwz     r5, 0x0(r4)
    cmpwi   r5, 0xff
    bne+    branch_0x802ee00c
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x6
    cmplw   r3, r0
    ble-    branch_0x802ee170
    bl      GDOverflowed
branch_0x802ee170:
    lwz     r0, 0x50(sp)
    li      r7, 0x8
    lwz     r4, -0x5778(r13)
    slwi    r5, r0, 1
    lwz     r0, 0x4c(sp)
    lwz     r3, 0x8(r4)
    slwi    r6, r0, 4
    lwz     r0, 0x54(sp)
    or      r0, r0, r5
    addi    r5, r3, 0x1
    stw     r5, 0x8(r4)
    slwi    r4, r31, 9
    or      r0, r6, r0
    stb     r7, 0x0(r3)
    or      r0, r4, r0
    lwz     r3, 0x48(sp)
    lwz     r4, 0x44(sp)
    slwi    r3, r3, 10
    lwz     r5, -0x5778(r13)
    or      r8, r3, r0
    lwz     r3, 0x14(sp)
    slwi    r7, r4, 13
    lwz     r4, 0x8(r5)
    addi    r6, r3, 0x70
    lwz     r0, 0x40(sp)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    slwi    r0, r0, 14
    lwz     r3, 0x3c(sp)
    or      r5, r7, r8
    stb     r6, 0x0(r4)
    or      r4, r0, r5
    lwz     r0, 0x38(sp)
    slwi    r3, r3, 17
    lwz     r5, 0x34(sp)
    or      r3, r3, r4
    lwz     r6, 0x30(sp)
    slwi    r0, r0, 18
    lwz     r4, -0x5778(r13)
    or      r0, r0, r3
    slwi    r5, r5, 21
    lwz     r3, 0x8(r4)
    or      r5, r5, r0
    lwz     r0, 0x2c(sp)
    addi    r7, r3, 0x1
    slwi    r6, r6, 22
    stw     r7, 0x8(r4)
    slwi    r0, r0, 25
    or      r4, r6, r5
    or      r0, r0, r4
    slwi    r4, r30, 31
    oris    r0, r0, 0x4000
    or      r0, r4, r0
    srwi    r4, r0, 24
    stb     r4, 0x0(r3)
    extrwi  r7, r0, 8, 8
    extrwi  r3, r0, 8, 16
    lwz     r6, -0x5778(r13)
    lwz     r5, 0x8(r6)
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    stb     r7, 0x0(r5)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r6, r4, 0x1
    stw     r6, 0x8(r5)
    stb     r3, 0x0(r4)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r5, r3, 0x1
    stw     r5, 0x8(r4)
    stb     r0, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x6
    cmplw   r3, r0
    ble-    branch_0x802ee2ac
    bl      GDOverflowed
branch_0x802ee2ac:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r0, 0x24(sp)
    lwz     r3, 0x8(r4)
    slwi    r7, r0, 1
    lwz     r6, 0x28(sp)
    lwz     r0, 0x20(sp)
    or      r6, r6, r7
    addi    r7, r3, 0x1
    stw     r7, 0x8(r4)
    slwi    r0, r0, 4
    lwz     r4, 0x1c(sp)
    or      r0, r0, r6
    stb     r5, 0x0(r3)
    lwz     r3, 0x14(sp)
    slwi    r4, r4, 9
    or      r0, r4, r0
    addi    r5, r3, 0x80
    lwz     r3, 0x18(sp)
    slwi    r7, r25, 13
    slwi    r6, r3, 10
    lwz     r3, -0x5778(r13)
    or      r0, r6, r0
    lwz     r4, 0x8(r3)
    slwi    r6, r26, 18
    or      r0, r7, r0
    addi    r8, r4, 0x1
    stw     r8, 0x8(r3)
    or      r0, r6, r0
    slwi    r3, r22, 19
    stb     r5, 0x0(r4)
    slwi    r5, r20, 22
    or      r0, r3, r0
    lwz     r4, -0x5778(r13)
    or      r0, r5, r0
    slwi    r6, r21, 27
    lwz     r3, 0x8(r4)
    slwi    r5, r23, 28
    or      r0, r6, r0
    or      r0, r5, r0
    addi    r5, r3, 0x1
    oris    r0, r0, 0x8000
    stw     r5, 0x8(r4)
    srwi    r4, r0, 24
    stb     r4, 0x0(r3)
    extrwi  r7, r0, 8, 8
    extrwi  r3, r0, 8, 16
    lwz     r6, -0x5778(r13)
    lwz     r5, 0x8(r6)
    addi    r4, r5, 0x1
    stw     r4, 0x8(r6)
    stb     r7, 0x0(r5)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r6, r4, 0x1
    stw     r6, 0x8(r5)
    stb     r3, 0x0(r4)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r5, r3, 0x1
    stw     r5, 0x8(r4)
    stb     r0, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x6
    cmplw   r3, r0
    ble-    branch_0x802ee3c0
    bl      GDOverflowed
branch_0x802ee3c0:
    lwz     r4, -0x5778(r13)
    li      r0, 0x8
    lwz     r5, 0x14(sp)
    slwi    r6, r18, 5
    lwz     r3, 0x8(r4)
    addi    r7, r5, 0x90
    addi    r8, r3, 0x1
    stw     r8, 0x8(r4)
    or      r4, r15, r6
    slwi    r5, r19, 6
    stb     r0, 0x0(r3)
    or      r3, r5, r4
    slwi    r6, r16, 9
    lwz     r4, -0x5778(r13)
    or      r5, r6, r3
    slwi    r0, r14, 14
    lwz     r3, 0x8(r4)
    or      r0, r0, r5
    slwi    r6, r17, 15
    addi    r8, r3, 0x1
    stw     r8, 0x8(r4)
    or      r0, r6, r0
    slwi    r5, r24, 18
    stb     r7, 0x0(r3)
    or      r0, r5, r0
    slwi    r4, r27, 23
    lwz     r5, -0x5778(r13)
    or      r0, r4, r0
    slwi    r3, r28, 24
    lwz     r4, 0x8(r5)
    or      r0, r3, r0
    slwi    r6, r29, 27
    addi    r3, r4, 0x1
    or      r0, r6, r0
    stw     r3, 0x8(r5)
    srwi    r3, r0, 24
    stb     r3, 0x0(r4)
    extrwi  r7, r0, 8, 8
    extrwi  r6, r0, 8, 16
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r3, r4, 0x1
    stw     r3, 0x8(r5)
    stb     r0, 0x0(r4)
    lmw     r14, 0x58(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl loadCullMode__FUc
loadCullMode__FUc: # 0x802ee4ac
    blr


.globl load__11J3DLightObjCFUl
load__11J3DLightObjCFUl: # 0x802ee4b0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    slw     r31, r0, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lfs     f1, 0x0(r3)
    lfs     f2, 0x4(r3)
    lfs     f3, 0x8(r3)
    mr      r3, r31
    bl      GDSetLightPos
    lfs     f1, 0x1c(r30)
    mr      r3, r31
    lfs     f2, 0x20(r30)
    lfs     f3, 0x24(r30)
    lfs     f4, 0x28(r30)
    lfs     f5, 0x2c(r30)
    lfs     f6, 0x30(r30)
    bl      GDSetLightAttn
    lwz     r0, 0x18(r30)
    addi    r4, sp, 0x10
    addi    r3, r31, 0x0
    stw     r0, 0x10(sp)
    bl      GDSetLightColor
    lfs     f1, 0xc(r30)
    mr      r3, r31
    lfs     f2, 0x10(r30)
    lfs     f3, 0x14(r30)
    bl      GDSetLightDir
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl calc__9J3DTexMtxFv
calc__9J3DTexMtxFv: # 0x802ee544
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r6, r4, 0x5fb8
    lis     r4, 0x803b
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    mr      r31, r3
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x9c(sp)
    stw     r0, 0xa0(sp)
    lwz     r3, 0x8(r6)
    lwz     r0, 0xc(r6)
    stw     r3, 0xa4(sp)
    stw     r0, 0xa8(sp)
    lwz     r3, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r3, 0xac(sp)
    stw     r0, 0xb0(sp)
    lwz     r3, 0x18(r6)
    lwz     r0, 0x1c(r6)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r3, 0x20(r6)
    lwz     r0, 0x24(r6)
    stw     r3, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r3, 0x28(r6)
    lwz     r0, 0x2c(r6)
    stw     r3, 0xc4(sp)
    stw     r0, 0xc8(sp)
    lwzu    r3, -0x5f88(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r3, 0x18(r4)
    lwz     r0, 0x1c(r4)
    stw     r3, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r3, 0x20(r4)
    lwz     r0, 0x24(r4)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r3, 0x28(r4)
    lwz     r0, 0x2c(r4)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    lbz     r0, 0x1(r31)
    clrlwi  r3, r0, 25
    cmplwi  r3, 0x8
    extrwi  r4, r0, 1, 24
    beq-    branch_0x802ee648
    cmplwi  r3, 0x9
    beq-    branch_0x802ee648
    cmplwi  r3, 0xb
    bne-    branch_0x802ee6c4
branch_0x802ee648:
    cmplwi  r4, 0x0
    bne-    branch_0x802ee67c
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x60
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x60(sp)
    addi    r5, sp, 0xcc
    stw     r0, 0x64(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x68(sp)
    bl      J3DGetTextureMtx__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee690

branch_0x802ee67c:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee690
    addi    r3, r31, 0x10
    addi    r4, sp, 0xcc
    bl      J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee690:
    addi    r3, sp, 0xcc
    addi    r5, r3, 0x0
    addi    r4, sp, 0x9c
    bl      PSMTXConcat
    addi    r3, sp, 0xcc
    addi    r4, r31, 0x24
    addi    r5, sp, 0x10c
    bl      J3DMtxProjConcat__FPA4_fPA4_fPA4_f
    addi    r3, sp, 0x10c
    addi    r4, r31, 0x94
    addi    r5, r31, 0x64
    bl      PSMTXConcat
    b       branch_0x802ee9c0

branch_0x802ee6c4:
    cmplwi  r3, 0x7
    bne-    branch_0x802ee738
    cmplwi  r4, 0x0
    bne-    branch_0x802ee700
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x54
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x54(sp)
    addi    r5, sp, 0x10c
    stw     r0, 0x58(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x5c(sp)
    bl      J3DGetTextureMtx__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee714

branch_0x802ee700:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee714
    addi    r3, r31, 0x10
    addi    r4, sp, 0x10c
    bl      J3DGetTextureMtxMaya__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee714:
    addi    r3, sp, 0x10c
    addi    r5, r3, 0x0
    addi    r4, sp, 0x9c
    bl      PSMTXConcat
    addi    r3, sp, 0x10c
    addi    r4, r31, 0x94
    addi    r5, r31, 0x64
    bl      PSMTXConcat
    b       branch_0x802ee9c0

branch_0x802ee738:
    cmplwi  r3, 0xa
    bne-    branch_0x802ee7bc
    cmplwi  r4, 0x0
    bne-    branch_0x802ee774
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x48
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x48(sp)
    addi    r5, sp, 0xcc
    stw     r0, 0x4c(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x50(sp)
    bl      J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee788

branch_0x802ee774:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee788
    addi    r3, r31, 0x10
    addi    r4, sp, 0xcc
    bl      J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee788:
    addi    r3, sp, 0xcc
    addi    r5, r3, 0x0
    addi    r4, sp, 0x6c
    bl      PSMTXConcat
    addi    r3, sp, 0xcc
    addi    r4, r31, 0x24
    addi    r5, sp, 0x10c
    bl      J3DMtxProjConcat__FPA4_fPA4_fPA4_f
    addi    r3, sp, 0x10c
    addi    r4, r31, 0x94
    addi    r5, r31, 0x64
    bl      PSMTXConcat
    b       branch_0x802ee9c0

branch_0x802ee7bc:
    cmplwi  r3, 0x6
    bne-    branch_0x802ee830
    cmplwi  r4, 0x0
    bne-    branch_0x802ee7f8
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x3c
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x3c(sp)
    addi    r5, sp, 0x10c
    stw     r0, 0x40(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x44(sp)
    bl      J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee80c

branch_0x802ee7f8:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee80c
    addi    r3, r31, 0x10
    addi    r4, sp, 0x10c
    bl      J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee80c:
    addi    r3, sp, 0x10c
    addi    r5, r3, 0x0
    addi    r4, sp, 0x6c
    bl      PSMTXConcat
    addi    r3, sp, 0x10c
    addi    r4, r31, 0x94
    addi    r5, r31, 0x64
    bl      PSMTXConcat
    b       branch_0x802ee9c0

branch_0x802ee830:
    cmplwi  r3, 0x1
    bne-    branch_0x802ee894
    cmplwi  r4, 0x0
    bne-    branch_0x802ee86c
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x30
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x30(sp)
    addi    r5, sp, 0x10c
    stw     r0, 0x34(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x38(sp)
    bl      J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee880

branch_0x802ee86c:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee880
    addi    r3, r31, 0x10
    addi    r4, sp, 0x10c
    bl      J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee880:
    addi    r3, sp, 0x10c
    addi    r4, r31, 0x94
    addi    r5, r31, 0x64
    bl      PSMTXConcat
    b       branch_0x802ee9c0

branch_0x802ee894:
    subi    r0, r3, 0x2
    cmplwi  r0, 0x1
    ble-    branch_0x802ee8a8
    cmplwi  r3, 0x5
    bne-    branch_0x802ee914
branch_0x802ee8a8:
    cmplwi  r4, 0x0
    bne-    branch_0x802ee8dc
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x24
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x24(sp)
    addi    r5, sp, 0xcc
    stw     r0, 0x28(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x2c(sp)
    bl      J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee8f0

branch_0x802ee8dc:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee8f0
    addi    r3, r31, 0x10
    addi    r4, sp, 0xcc
    bl      J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee8f0:
    addi    r3, sp, 0xcc
    addi    r4, r31, 0x24
    addi    r5, sp, 0x10c
    bl      J3DMtxProjConcat__FPA4_fPA4_fPA4_f
    addi    r3, sp, 0x10c
    addi    r4, r31, 0x94
    addi    r5, r31, 0x64
    bl      PSMTXConcat
    b       branch_0x802ee9c0

branch_0x802ee914:
    cmplwi  r3, 0x4
    bne-    branch_0x802ee978
    cmplwi  r4, 0x0
    bne-    branch_0x802ee950
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0x18
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0x18(sp)
    addi    r5, sp, 0xcc
    stw     r0, 0x1c(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x20(sp)
    bl      J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee964

branch_0x802ee950:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee964
    addi    r3, r31, 0x10
    addi    r4, sp, 0xcc
    bl      J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee964:
    addi    r3, sp, 0xcc
    addi    r4, r31, 0x24
    addi    r5, r31, 0x64
    bl      J3DMtxProjConcat__FPA4_fPA4_fPA4_f
    b       branch_0x802ee9c0

branch_0x802ee978:
    cmplwi  r4, 0x0
    bne-    branch_0x802ee9ac
    lwz     r5, 0x4(r31)
    addi    r4, sp, 0xc
    lwz     r0, 0x8(r31)
    addi    r3, r31, 0x10
    stw     r5, 0xc(sp)
    addi    r5, r31, 0x64
    stw     r0, 0x10(sp)
    lwz     r0, 0xc(r31)
    stw     r0, 0x14(sp)
    bl      J3DGetTextureMtxOld__FRC17J3DTextureSRTInfo3VecPA4_f
    b       branch_0x802ee9c0

branch_0x802ee9ac:
    cmplwi  r4, 0x1
    bne-    branch_0x802ee9c0
    addi    r3, r31, 0x10
    addi    r4, r31, 0x64
    bl      J3DGetTextureMtxMayaOld__FRC17J3DTextureSRTInfoPA4_f
branch_0x802ee9c0:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    addi    sp, sp, 0x158
    mtlr    r0
    blr


.globl load__9J3DTexMtxCFUl
load__9J3DTexMtxCFUl: # 0x802ee9d4
    mflr    r0
    mulli   r4, r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    addi    r4, r4, 0x1e
    lbz     r5, 0x0(r3)
    addi    r3, r3, 0x64
    bl      J3DGDLoadTexMtxImm__FPA4_fUl13_GXTexMtxType
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadTexNo__FUlRCUs
loadTexNo__FUlRCUs: # 0x802eea04
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    addi    r29, r3, 0x0
    lis     r3, 0x8040
    lhz     r0, 0x0(r4)
    addi    r4, r5, 0x45dc
    lwz     r4, 0x54(r4)
    slwi    r5, r29, 3
    slwi    r0, r0, 5
    lwz     r4, 0x4(r4)
    add     r30, r4, r0
    addi    r0, r3, 0x47d0
    lhz     r3, 0x2(r30)
    add     r4, r0, r5
    sth     r3, 0x0(r4)
    mr      r3, r29
    lhz     r0, 0x4(r30)
    sth     r0, 0x2(r4)
    lbz     r0, 0x0(r30)
    lhz     r4, 0x2(r30)
    lhz     r5, 0x4(r30)
    clrlwi  r6, r0, 28
    bl      J3DGDSetTexImgAttr__F11_GXTexMapIDUsUs9_GXTexFmt
    lwz     r0, 0x1c(r30)
    addi    r3, r29, 0x0
    add     r4, r30, r0
    bl      J3DGDSetTexImgPtr__F11_GXTexMapIDPv
    lha     r0, 0x1a(r30)
    subi    r10, r13, 0x7588
    lbz     r4, 0x17(r30)
    lis     r6, 0x4330
    xoris   r0, r0, 0x8000
    stw     r0, 0x34(sp)
    extsb   r4, r4
    lbz     r0, 0x16(r30)
    xoris   r7, r4, 0x8000
    stw     r6, 0x30(sp)
    extsb   r0, r0
    lfd     f2, 0x338(rtoc)
    lfd     f0, 0x30(sp)
    xoris   r4, r0, 0x8000
    lbz     r8, 0x15(r30)
    subi    r5, r13, 0x7550
    fsubs   f0, f0, f2
    lfs     f1, 0x334(rtoc)
    subfic  r0, r8, 0x1
    stw     r4, 0x3c(sp)
    cntlzw  r4, r0
    fmuls   f0, f1, f0
    lfs     f1, 0x328(rtoc)
    stw     r7, 0x44(sp)
    lbz     r0, 0x11(r30)
    fmuls   f0, f1, f0
    stw     r6, 0x40(sp)
    cntlzw  r7, r0
    lbz     r9, 0x7(r30)
    rlwinm  r7, r7, 3, 16, 23
    fctiwz  f0, f0
    slwi    r0, r9, 2
    lbz     r9, 0x6(r30)
    lfd     f1, 0x40(sp)
    or      r0, r9, r0
    lbz     r8, 0x14(r30)
    fsubs   f1, f1, f2
    stw     r6, 0x38(sp)
    lbzx    r6, r5, r8
    rlwinm  r5, r4, 31, 20, 27
    stfd    f0, 0x28(sp)
    lwz     r3, -0x5778(r13)
    slwi    r6, r6, 5
    lfd     f0, 0x38(sp)
    or      r0, r5, r0
    or      r5, r6, r0
    lwz     r8, 0x2c(sp)
    fsubs   f0, f0, f2
    lfs     f3, 0x330(rtoc)
    or      r5, r7, r5
    lwz     r4, 0x8(r3)
    lwz     r0, 0xc(r3)
    addi    r3, r4, 0x5
    lbz     r11, 0x13(r30)
    clrlslwi  r6, r8, 24, 9
    lbz     r9, 0x12(r30)
    or      r4, r6, r5
    lbzx    r10, r10, r29
    cmplw   r3, r0
    fmuls   f30, f3, f1
    fmuls   f31, f3, f0
    slwi    r0, r9, 21
    insrwi  r4, r11, 8, 5
    slwi    r3, r10, 24
    or      r0, r0, r4
    or      r31, r3, r0
    ble-    branch_0x802eeb9c
    bl      GDOverflowed
branch_0x802eeb9c:
    lwz     r3, -0x5778(r13)
    li      r5, 0x61
    srwi    r8, r31, 24
    lwz     r4, 0x8(r3)
    extrwi  r7, r31, 8, 8
    extrwi  r6, r31, 8, 16
    addi    r0, r4, 0x1
    stw     r0, 0x8(r3)
    subi    r3, r13, 0x7580
    stb     r5, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r8, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r7, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r6, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lwz     r4, 0x8(r5)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    stb     r31, 0x0(r4)
    lfs     f1, 0x32c(rtoc)
    lwz     r5, -0x5778(r13)
    fmuls   f0, f1, f30
    lbzx    r4, r3, r29
    fmuls   f1, f1, f31
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    fctiwz  f0, f0
    addi    r3, r3, 0x5
    fctiwz  f1, f1
    cmplw   r3, r0
    stfd    f0, 0x30(sp)
    stfd    f1, 0x28(sp)
    lwz     r0, 0x34(sp)
    lwz     r3, 0x2c(sp)
    clrlslwi  r31, r0, 24, 8
    insrwi  r31, r3, 8, 24
    insrwi  r31, r4, 8, 0
    ble-    branch_0x802eec64
    bl      GDOverflowed
branch_0x802eec64:
    lwz     r4, -0x5778(r13)
    li      r8, 0x61
    srwi    r7, r31, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r31, 8, 8
    extrwi  r5, r31, 8, 16
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r8, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r7, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r6, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r31, 0x0(r3)
    lbz     r0, 0x8(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x802eed28
    lhz     r0, 0xa(r30)
    cmplwi  r0, 0x10
    ble-    branch_0x802eecf8
    li      r4, 0x10
    b       branch_0x802eecfc

branch_0x802eecf8:
    li      r4, 0x1
branch_0x802eecfc:
    slwi    r3, r29, 15
    lwz     r0, 0xc(r30)
    addis   r31, r3, 0xc
    addi    r5, r4, 0x0
    addi    r4, r31, 0x0
    add     r3, r30, r0
    bl      J3DGDLoadTlut__FPvUl11_GXTlutSize
    lbz     r5, 0x9(r30)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      J3DGDSetTexTlut__F11_GXTexMapIDUl10_GXTlutFmt
branch_0x802eed28:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x68
    blr


.globl loadDither__FUc
loadDither__FUc: # 0x802eed4c
    blr


.globl loadNBTScale__FR11J3DNBTScale
loadNBTScale__FR11J3DNBTScale: # 0x802eed50
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802eed70
    lis     r4, 0x8040
    addi    r0, r3, 0x4
    addi    r3, r4, 0x45dc
    stw     r0, 0x120(r3)
    blr

branch_0x802eed70:
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r0, 0x0
    stw     r0, 0x120(r3)
    blr


.globl makeTexCoordTable__Fv
makeTexCoordTable__Fv: # 0x802eed84
    stwu    sp, -0x38(sp)
    lis     r3, 0x803b
    subi    r7, r3, 0x5f58
    stmw    r24, 0x18(sp)
    lis     r3, 0x8040
    addi    r3, r3, 0x4828
    addi    r30, sp, 0xc
    li      r8, 0x0
    li      r12, 0x0
    li      r5, 0xb
    li      r6, 0x3
    lwz     r4, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r4, 0xc(sp)
    stw     r0, 0x10(sp)
    lhz     r0, 0x8(r7)
    sth     r0, 0x14(sp)
    lbz     r0, 0xa(r7)
    stb     r0, 0x16(sp)
branch_0x802eedd0:
    clrlwi  r29, r8, 24
    li      r9, 0x0
    li      r31, 0x0
branch_0x802eeddc:
    cmpwi   r5, 0x8
    li      r10, 0x0
    ble-    branch_0x802eef5c
    li      r0, 0xa
    srwi    r0, r0, 3
    cmpwi   r6, 0x0
    mtctr   r0
    add     r4, r31, r12
    clrlwi  r0, r9, 24
    ble-    branch_0x802eef5c
branch_0x802eee04:
    add     r11, r10, r4
    mulli   r7, r11, 0x3
    add     r27, r3, r7
    stb     r29, 0x0(r27)
    addi    r7, sp, 0xc
    add     r7, r7, r10
    stb     r0, 0x1(r27)
    addi    r24, r11, 0x1
    mulli   r25, r24, 0x3
    lbz     r26, 0x0(r7)
    stb     r26, 0x2(r27)
    add     r28, r3, r25
    addi    r24, r11, 0x2
    stb     r29, 0x0(r28)
    mulli   r26, r24, 0x3
    stb     r0, 0x1(r28)
    addi    r24, r11, 0x3
    lbz     r27, 0x1(r7)
    mulli   r25, r24, 0x3
    stb     r27, 0x2(r28)
    add     r24, r3, r26
    stb     r29, 0x0(r24)
    addi    r26, r11, 0x4
    addi    r27, r11, 0x5
    stb     r0, 0x1(r24)
    mulli   r26, r26, 0x3
    lbz     r28, 0x2(r7)
    mulli   r27, r27, 0x3
    stb     r28, 0x2(r24)
    add     r24, r3, r25
    stb     r29, 0x0(r24)
    addi    r25, r11, 0x6
    addi    r11, r11, 0x7
    stb     r0, 0x1(r24)
    mulli   r28, r25, 0x3
    lbz     r25, 0x3(r7)
    mulli   r11, r11, 0x3
    stb     r25, 0x2(r24)
    add     r24, r3, r26
    stb     r29, 0x0(r24)
    add     r25, r3, r27
    add     r27, r3, r11
    stb     r0, 0x1(r24)
    add     r26, r3, r28
    addi    r10, r10, 0x8
    lbz     r11, 0x4(r7)
    stb     r11, 0x2(r24)
    stb     r29, 0x0(r25)
    stb     r0, 0x1(r25)
    lbz     r11, 0x5(r7)
    stb     r11, 0x2(r25)
    stb     r29, 0x0(r26)
    stb     r0, 0x1(r26)
    lbz     r11, 0x6(r7)
    stb     r11, 0x2(r26)
    stb     r29, 0x0(r27)
    stb     r0, 0x1(r27)
    lbz     r7, 0x7(r7)
    stb     r7, 0x2(r27)
    bdnz+      branch_0x802eee04
    b       branch_0x802eef5c

branch_0x802eeef8:
    subfic  r0, r10, 0xb
    cmpwi   r10, 0xb
    mtctr   r0
    clrlwi  r7, r9, 24
    add     r4, r30, r10
    bge-    branch_0x802eef38
branch_0x802eef10:
    add     r0, r10, r11
    mulli   r0, r0, 0x3
    add     r24, r3, r0
    stb     r29, 0x0(r24)
    addi    r10, r10, 0x1
    stb     r7, 0x1(r24)
    lbz     r0, 0x0(r4)
    addi    r4, r4, 0x1
    stb     r0, 0x2(r24)
    bdnz+      branch_0x802eef10
branch_0x802eef38:
    addi    r9, r9, 0x1
    cmplwi  r9, 0x15
    addi    r31, r31, 0xb
    blt+    branch_0x802eeddc
    addi    r8, r8, 0x1
    cmplwi  r8, 0xb
    addi    r12, r12, 0xe7
    blt+    branch_0x802eedd0
    b       branch_0x802eef64

branch_0x802eef5c:
    add     r11, r31, r12
    b       branch_0x802eeef8

branch_0x802eef64:
    lmw     r24, 0x18(sp)
    addi    sp, sp, 0x38
    blr


.globl makeAlphaCmpTable__Fv
makeAlphaCmpTable__Fv: # 0x802eef70
    li      r0, 0x8
    lis     r3, 0x8040
    mtctr   r0
    addi    r8, r3, 0x7150
    li      r11, 0x0
    li      r3, 0x0
branch_0x802eef88:
    mulli   r5, r3, 0x3
    clrlwi  r7, r11, 24
    add     r10, r8, r5
    addi    r6, r3, 0x1
    stb     r11, 0x0(r10)
    li      r4, 0x0
    stb     r4, 0x1(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x2(r10)
    add     r10, r8, r5
    stb     r11, 0x0(r10)
    addi    r6, r3, 0x2
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x1
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r3, 0x3
    stb     r11, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x2
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r3, 0x4
    stb     r11, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x3
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r3, 0x5
    stb     r11, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x4
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r3, 0x6
    stb     r11, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x5
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r3, 0x7
    stb     r11, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x6
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    li      r0, 0x7
    stb     r11, 0x0(r10)
    addi    r9, r3, 0x8
    stb     r4, 0x1(r10)
    stb     r0, 0x2(r10)
    li      r4, 0x1
    mulli   r5, r9, 0x3
    add     r10, r8, r5
    stb     r7, 0x0(r10)
    addi    r6, r9, 0x1
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x0
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r9, 0x2
    stb     r7, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    addi    r6, r9, 0x3
    stb     r4, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x2
    addi    r6, r9, 0x4
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x3
    addi    r6, r9, 0x5
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x4
    addi    r6, r9, 0x6
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x5
    addi    r6, r9, 0x7
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x6
    addi    r9, r3, 0x10
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    li      r0, 0x7
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    stb     r0, 0x2(r10)
    li      r4, 0x2
    mulli   r5, r9, 0x3
    add     r10, r8, r5
    stb     r7, 0x0(r10)
    addi    r6, r9, 0x1
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x0
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r9, 0x2
    stb     r7, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x1
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r9, 0x3
    stb     r7, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    addi    r6, r9, 0x4
    stb     r4, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x3
    addi    r6, r9, 0x5
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x4
    addi    r6, r9, 0x6
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x5
    addi    r6, r9, 0x7
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x6
    addi    r9, r3, 0x18
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    li      r0, 0x7
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    stb     r0, 0x2(r10)
    li      r4, 0x3
    mulli   r5, r9, 0x3
    add     r10, r8, r5
    stb     r7, 0x0(r10)
    addi    r6, r9, 0x1
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x0
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r9, 0x2
    stb     r7, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x1
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r9, 0x3
    stb     r7, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    li      r0, 0x2
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    addi    r6, r9, 0x4
    stb     r7, 0x0(r10)
    mulli   r5, r6, 0x3
    stb     r4, 0x1(r10)
    addi    r6, r9, 0x5
    stb     r4, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x4
    addi    r6, r9, 0x6
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x5
    addi    r6, r9, 0x7
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    mulli   r5, r6, 0x3
    stb     r7, 0x0(r10)
    stb     r4, 0x1(r10)
    li      r0, 0x6
    addi    r11, r11, 0x1
    stb     r0, 0x2(r10)
    add     r10, r8, r5
    li      r0, 0x7
    stb     r7, 0x0(r10)
    addi    r3, r3, 0x20
    stb     r4, 0x1(r10)
    stb     r0, 0x2(r10)
    bdnz+      branch_0x802eef88
    blr


.globl makeZModeTable__Fv
makeZModeTable__Fv: # 0x802ef318
    stwu    sp, -0x20(sp)
    lis     r3, 0x8040
    addi    r9, r3, 0x7450
    stw     r31, 0x1c(sp)
    li      r12, 0x0
    li      r3, 0x0
branch_0x802ef330:
    li      r0, 0x2
    li      r4, 0x0
    mtctr   r0
    addi    r6, r4, 0x0
    clrlwi  r8, r12, 24
    li      r31, 0x0
    li      r0, 0x1
branch_0x802ef34c:
    add     r11, r4, r3
    mulli   r5, r11, 0x3
    add     r10, r9, r5
    stb     r8, 0x0(r10)
    addi    r5, r11, 0x1
    addi    r4, r4, 0x2
    stb     r31, 0x1(r10)
    mulli   r5, r5, 0x3
    stb     r6, 0x2(r10)
    add     r10, r9, r5
    stb     r8, 0x0(r10)
    add     r11, r4, r3
    mulli   r5, r11, 0x3
    stb     r31, 0x1(r10)
    stb     r0, 0x2(r10)
    add     r10, r9, r5
    addi    r5, r11, 0x1
    stb     r8, 0x0(r10)
    addi    r31, r31, 0x1
    addi    r4, r4, 0x2
    stb     r31, 0x1(r10)
    mulli   r5, r5, 0x3
    stb     r6, 0x2(r10)
    add     r10, r9, r5
    stb     r8, 0x0(r10)
    add     r11, r4, r3
    mulli   r5, r11, 0x3
    stb     r31, 0x1(r10)
    stb     r0, 0x2(r10)
    add     r10, r9, r5
    addi    r5, r11, 0x1
    stb     r8, 0x0(r10)
    addi    r31, r31, 0x1
    addi    r4, r4, 0x2
    stb     r31, 0x1(r10)
    mulli   r5, r5, 0x3
    stb     r6, 0x2(r10)
    add     r10, r9, r5
    stb     r8, 0x0(r10)
    add     r11, r4, r3
    mulli   r5, r11, 0x3
    stb     r31, 0x1(r10)
    stb     r0, 0x2(r10)
    add     r10, r9, r5
    addi    r31, r31, 0x1
    stb     r8, 0x0(r10)
    addi    r5, r11, 0x1
    mulli   r5, r5, 0x3
    stb     r31, 0x1(r10)
    stb     r6, 0x2(r10)
    add     r10, r9, r5
    clrlwi  r7, r31, 24
    stb     r8, 0x0(r10)
    addi    r31, r31, 0x1
    addi    r4, r4, 0x2
    stb     r7, 0x1(r10)
    stb     r0, 0x2(r10)
    bdnz+      branch_0x802ef34c
    addi    r12, r12, 0x1
    cmpwi   r12, 0x2
    addi    r3, r3, 0x10
    blt+    branch_0x802ef330
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    blr


.globl makeTevSwapTable__Fv
makeTevSwapTable__Fv: # 0x802ef450
    stwu    sp, -0x48(sp)
    lis     r3, 0x8040
    stmw    r21, 0x1c(sp)
    addi    r28, r3, 0x6d50
    li      r23, 0x0
    li      r3, 0x0
branch_0x802ef468:
    clrlwi  r29, r23, 24
    li      r22, 0x0
    li      r4, 0x0
branch_0x802ef474:
    li      r0, 0x2
    mtctr   r0
    add     r27, r3, r4
    clrlwi  r31, r22, 24
    li      r21, 0x0
    li      r5, 0x0
branch_0x802ef48c:
    add     r26, r5, r27
    slwi    r30, r26, 2
    add     r30, r28, r30
    stb     r29, 0x0(r30)
    addi    r0, r26, 0x1
    slwi    r10, r0, 2
    stb     r31, 0x1(r30)
    addi    r24, r26, 0x2
    slwi    r8, r24, 2
    stb     r21, 0x2(r30)
    li      r11, 0x0
    addi    r6, r26, 0x3
    stb     r11, 0x3(r30)
    add     r10, r28, r10
    slwi    r6, r6, 2
    stb     r29, 0x0(r10)
    addi    r5, r5, 0x4
    add     r26, r5, r27
    stb     r31, 0x1(r10)
    add     r25, r28, r6
    slwi    r30, r26, 2
    stb     r21, 0x2(r10)
    li      r9, 0x1
    addi    r6, r26, 0x3
    stb     r9, 0x3(r10)
    add     r8, r28, r8
    addi    r0, r26, 0x1
    stb     r29, 0x0(r8)
    slwi    r10, r0, 2
    li      r7, 0x2
    stb     r31, 0x1(r8)
    clrlwi  r12, r21, 24
    li      r0, 0x3
    stb     r21, 0x2(r8)
    add     r30, r28, r30
    addi    r21, r21, 0x1
    stb     r7, 0x3(r8)
    addi    r24, r26, 0x2
    slwi    r8, r24, 2
    stb     r29, 0x0(r25)
    add     r10, r28, r10
    add     r8, r28, r8
    stb     r31, 0x1(r25)
    slwi    r6, r6, 2
    addi    r5, r5, 0x4
    stb     r12, 0x2(r25)
    clrlwi  r12, r21, 24
    addi    r21, r21, 0x1
    stb     r0, 0x3(r25)
    add     r25, r28, r6
    stb     r29, 0x0(r30)
    stb     r31, 0x1(r30)
    stb     r12, 0x2(r30)
    stb     r11, 0x3(r30)
    stb     r29, 0x0(r10)
    stb     r31, 0x1(r10)
    stb     r12, 0x2(r10)
    stb     r9, 0x3(r10)
    stb     r29, 0x0(r8)
    stb     r31, 0x1(r8)
    stb     r12, 0x2(r8)
    stb     r7, 0x3(r8)
    stb     r29, 0x0(r25)
    stb     r31, 0x1(r25)
    stb     r12, 0x2(r25)
    stb     r0, 0x3(r25)
    bdnz+      branch_0x802ef48c
    addi    r22, r22, 0x1
    cmpwi   r22, 0x4
    addi    r4, r4, 0x10
    blt+    branch_0x802ef474
    addi    r23, r23, 0x1
    cmpwi   r23, 0x4
    addi    r3, r3, 0x40
    blt+    branch_0x802ef468
    lmw     r21, 0x1c(sp)
    addi    sp, sp, 0x48
    blr

