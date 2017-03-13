
.globl calcVolume__8MSHandleFfffUcUc
calcVolume__8MSHandleFfffUcUc: # 0x8001c8cc
    mflr    r0
    fcmpo   cr0, f1, f3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bge-    branch_0x8001c8e8
    lfs     f1, -0x7a60(rtoc)
    b       branch_0x8001c99c

branch_0x8001c8e8:
    clrlwi  r0, r3, 24
    fsubs   f1, f1, f3
    cmplwi  r0, 0x7
    fsubs   f3, f2, f3
    bgt-    branch_0x8001c988
    lis     r3, 0x803b
    subi    r3, r3, 0x35e0
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8001C914:		# jumptable 8001C910 case 1
    lfs     f2, -0x7a5c(rtoc)
    lfs     f0, -0x7a58(rtoc)
    fmuls   f2, f2, f3
    fdivs   f3, f2, f0
    b       branch_0x8001c988

branch_0x8001C928:		# jumptable 8001C910 case 2
lfs	  f2, -0x7A54(r2)
lfs	  f0, -0x7A58(r2)
fmuls	  f2, f2, f3
fdivs	  f3, f2, f0
b	  def_8001C910	# jumptable 8001C910 default case

branch_0x8001C93C:		# jumptable 8001C910 case 3
lfs	  f0, -0x7A50(r2)
fmuls	  f3, f0, f3
b	  def_8001C910	# jumptable 8001C910 default case

branch_0x8001C948:		# jumptable 8001C910 case 4
lfs	  f2, -0x7A58(r2)
lfs	  f0, -0x7A4C(r2)
fmuls	  f2, f2, f3
fmuls	  f3, f2, f0
b	  def_8001C910	# jumptable 8001C910 default case

branch_0x8001C95C:		# jumptable 8001C910 case 5
lfs	  f0, -0x7A48(r2)
fmuls	  f3, f3, f0
b	  def_8001C910	# jumptable 8001C910 default case

branch_0x8001C968:		# jumptable 8001C910 case 6
lfs	  f0, -0x7A4C(r2)
fmuls	  f3, f3, f0
b	  def_8001C910	# jumptable 8001C910 default case

branch_0x8001C974:		# jumptable 8001C910 case 7
lis	  r3, unk_803AC8EC@ha
addi	  r3, r3, unk_803AC8EC@l
clrlslwi  r0, r4, 24,4
add	  r3, r3, r0
lfs	  f3, 0xC(r3)

def_8001C910:		# jumptable 8001C910 default case
branch_0x8001c988:
    lfs     f2, -0x7a44(rtoc)
    li      r3, 0x0
    lfs     f4, -0x7a60(rtoc)
    fmr     f5, f2
    bl      linearTransform__7JALCalcFfffffb
branch_0x8001c99c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDistanceVolumeCommon__8MSHandleFfUc
setDistanceVolumeCommon__8MSHandleFfUc: # 0x8001c9ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stfd    f30, 0x20(sp)
    fmr     f30, f1
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x1c(r3)
    lfs     f31, 0x18(r3)
    bl      getParamMaxVolumeDistance__18JAIGlobalParameterFv
    lwz     r0, 0x8(r30)
    fmr     f3, f1
    srwi.   r3, r0, 30
    extrwi  r0, r0, 4, 16
    bne-    branch_0x8001c9f8
    b       branch_0x8001ca1c

branch_0x8001c9f8:
    cmplwi  r3, 0x2
    bne-    branch_0x8001ca08
    li      r0, 0x10
    b       branch_0x8001ca1c

branch_0x8001ca08:
    cmplwi  r3, 0x3
    bne-    branch_0x8001ca18
    li      r0, 0x11
    b       branch_0x8001ca1c

branch_0x8001ca18:
    li      r0, -0x1
branch_0x8001ca1c:
    fmr     f1, f31
    mr      r3, r31
    fmr     f2, f30
    clrlwi  r4, r0, 24
    bl      calcVolume__8MSHandleFfffUcUc
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    mtlr    r0
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeDistanceVolume__8MSHandleFUc
setSeDistanceVolume__8MSHandleFUc: # 0x8001ca50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 10, 10
    beq-    branch_0x8001caa0
    lwz     r4, 0x1c(r30)
    lwz     r3, 0x8(r30)
    lfs     f1, 0x18(r4)
    bl      processModDistVolume__9JALSystemFUlf
    addi    r3, r30, 0x0
    clrlwi  r5, r31, 24
    li      r4, 0x4
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
    b       branch_0x8001cb30

branch_0x8001caa0:
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x8001cb18
    mr      r3, r30
    bl      getSwBit__8JAISoundFv
    lwz     r0, 0x8(r30)
    extrwi  r4, r3, 3, 13
    srwi.   r5, r0, 30
    extrwi  r0, r0, 4, 16
    bne-    branch_0x8001cac8
    b       branch_0x8001caec

branch_0x8001cac8:
    cmplwi  r5, 0x2
    bne-    branch_0x8001cad8
    li      r0, 0x10
    b       branch_0x8001caec

branch_0x8001cad8:
    cmplwi  r5, 0x3
    bne-    branch_0x8001cae8
    li      r0, 0x11
    b       branch_0x8001caec

branch_0x8001cae8:
    li      r0, -0x1
branch_0x8001caec:
    lwz     r12, 0x40(r30)
    lis     r5, 0x803b
    subi    r5, r5, 0x3714
    slwi    r0, r0, 4
    lwz     r12, 0x2c(r12)
    add     r5, r5, r0
    mtlr    r12
    lfs     f1, 0x4(r5)
    mr      r3, r30
    blrl
    b       branch_0x8001cb1c

branch_0x8001cb18:
    lfs     f1, -0x7a60(rtoc)
branch_0x8001cb1c:
    addi    r3, r30, 0x0
    clrlwi  r5, r31, 24
    li      r4, 0x4
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
branch_0x8001cb30:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl calcDolby__8MSHandleFRC3Vecf
calcDolby__8MSHandleFRC3Vecf: # 0x8001cb48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    fmr     f31, f1
    lfs     f1, -0x7a44(rtoc)
    fcmpo   cr0, f31, f1
    cror    2, 0, 2
    bne-    branch_0x8001cb70
    b       branch_0x8001cb80

branch_0x8001cb70:
    lfs     f0, 0x8(r3)
    fneg    f0, f0
    fdivs   f1, f0, f31
    bl      MSACos__8MSHandleFf
branch_0x8001cb80:
    lfs     f0, -0x7fe4(r13)
    lfs     f4, -0x7fe0(r13)
    fcmpo   cr0, f1, f0
    lfs     f2, -0x7fdc(r13)
    bge-    branch_0x8001cb9c
    lfs     f0, -0x7a44(rtoc)
    b       branch_0x8001cbe0

branch_0x8001cb9c:
    fcmpo   cr0, f1, f4
    bge-    branch_0x8001cbbc
    fsubs   f2, f4, f0
    lfs     f3, -0x7a48(rtoc)
    fsubs   f0, f1, f0
    fdivs   f1, f3, f2
    fmuls   f0, f1, f0
    b       branch_0x8001cbe0

branch_0x8001cbbc:
    fcmpo   cr0, f1, f2
    bge-    branch_0x8001cbdc
    fsubs   f2, f2, f4
    lfs     f3, -0x7a48(rtoc)
    fsubs   f0, f1, f4
    fdivs   f1, f3, f2
    fmadds  f0, f1, f0, f3
    b       branch_0x8001cbe0

branch_0x8001cbdc:
    lfs     f0, -0x7a60(rtoc)
branch_0x8001cbe0:
    lfs     f2, -0x7fec(r13)
    fcmpo   cr0, f31, f2
    bge-    branch_0x8001cbfc
    lfs     f1, -0x7a48(rtoc)
    fsubs   f0, f0, f1
    fdivs   f0, f0, f2
    fmadds  f0, f31, f0, f1
branch_0x8001cbfc:
    lfs     f2, -0x7a60(rtoc)
    fcmpo   cr0, f0, f2
    ble-    branch_0x8001cc0c
    b       branch_0x8001cc10

branch_0x8001cc0c:
    fmr     f2, f0
branch_0x8001cc10:
    lfs     f1, -0x7a44(rtoc)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8001cc20
    b       branch_0x8001cc24

branch_0x8001cc20:
    fmr     f1, f2
branch_0x8001cc24:
    lwz     r0, 0x24(sp)
    lfd     f31, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setSeDistanceDolby__8MSHandleFUc
setSeDistanceDolby__8MSHandleFUc: # 0x8001cc38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r3, 0x1c(r3)
    lfs     f1, 0x18(r3)
    bl      calcDolby__8MSHandleFRC3Vecf
    addi    r3, r30, 0x0
    clrlwi  r5, r31, 24
    li      r4, 0x4
    li      r6, 0x0
    bl      setSeInterDolby__8JAISoundFUcfUlUc
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcPan__8MSHandleFRC3Vecff
calcPan__8MSHandleFRC3Vecff: # 0x8001cc8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stfd    f30, 0x20(sp)
    fmr     f30, f2
    stfd    f29, 0x18(sp)
    fmr     f29, f1
    lfs     f1, -0x7a44(rtoc)
    lfs     f31, -0x7ff8(r13)
    fcmpo   cr0, f29, f1
    cror    2, 0, 2
    bne-    branch_0x8001ccc4
    b       branch_0x8001ccd4

branch_0x8001ccc4:
    lfs     f0, 0x0(r3)
    fneg    f0, f0
    fdivs   f1, f0, f29
    bl      MSACos__8MSHandleFf
branch_0x8001ccd4:
    lfs     f0, -0x7a50(rtoc)
    lfs     f3, -0x7a40(rtoc)
    fmuls   f4, f0, f31
    lfs     f5, -0x7ff4(r13)
    lfs     f0, -0x7a44(rtoc)
    lfs     f2, -0x7ff0(r13)
    fmuls   f1, f4, f1
    fdivs   f1, f1, f3
    fadds   f1, f5, f1
    fsubs   f1, f1, f31
    fsubs   f1, f1, f5
    fcmpo   cr0, f1, f0
    bge-    branch_0x8001cd20
    fneg    f0, f1
    fdivs   f1, f0, f31
    bl      powf
    fneg    f0, f31
    fmuls   f4, f0, f1
    b       branch_0x8001cd2c

branch_0x8001cd20:
    fdivs   f1, f1, f31
    bl      powf
    fmuls   f4, f31, f1
branch_0x8001cd2c:
    lfs     f0, -0x7fec(r13)
    fcmpo   cr0, f29, f0
    bge-    branch_0x8001cd44
    fdivs   f0, f29, f0
    fmuls   f4, f4, f0
    b       branch_0x8001cd64

branch_0x8001cd44:
    lfs     f2, -0x7fe8(r13)
    fsubs   f1, f30, f0
    lfs     f3, -0x7a60(rtoc)
    fsubs   f0, f29, f0
    fsubs   f2, f2, f3
    fdivs   f1, f2, f1
    fmadds  f0, f1, f0, f3
    fmuls   f4, f4, f0
branch_0x8001cd64:
    fadds   f4, f4, f31
    lfs     f0, -0x7a60(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x8001cd78
    b       branch_0x8001cd7c

branch_0x8001cd78:
    fmr     f0, f4
branch_0x8001cd7c:
    lfs     f1, -0x7a44(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8001cd8c
    b       branch_0x8001cd90

branch_0x8001cd8c:
    fmr     f1, f0
branch_0x8001cd90:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lfd     f30, 0x20(sp)
    mtlr    r0
    lfd     f29, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeDistancePan__8MSHandleFUc
setSeDistancePan__8MSHandleFUc: # 0x8001cdac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    lwz     r3, 0x1c(r3)
    srwi.   r4, r0, 30
    lfs     f1, 0x18(r3)
    extrwi  r0, r0, 4, 16
    bne-    branch_0x8001cde4
    b       branch_0x8001ce08

branch_0x8001cde4:
    cmplwi  r4, 0x2
    bne-    branch_0x8001cdf4
    li      r0, 0x10
    b       branch_0x8001ce08

branch_0x8001cdf4:
    cmplwi  r4, 0x3
    bne-    branch_0x8001ce04
    li      r0, 0x11
    b       branch_0x8001ce08

branch_0x8001ce04:
    li      r0, -0x1
branch_0x8001ce08:
    lis     r4, 0x803b
    subi    r4, r4, 0x3714
    slwi    r0, r0, 4
    add     r4, r4, r0
    lfs     f2, 0x4(r4)
    bl      calcPan__8MSHandleFRC3Vecff
    addi    r3, r30, 0x0
    clrlwi  r5, r31, 24
    li      r4, 0x4
    li      r6, 0x0
    bl      setSeInterPan__8JAISoundFUcfUlUc
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl setSeDistancePitch__8MSHandleFUc
setSeDistancePitch__8MSHandleFUc: # 0x8001ce4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r4
    stw     r30, 0x38(sp)
    mr      r30, r3
    lfs     f31, -0x7a60(rtoc)
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8001cef4
    lis     r3, 0x19
    lwz     r4, -0x5d80(r13)
    addi    r0, r3, 0x660d
    lfs     f4, -0x7a60(rtoc)
    mullw   r3, r4, r0
    lfs     f3, -0x7a3c(rtoc)
    lfd     f2, -0x7a30(rtoc)
    lfs     f0, -0x7a38(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5d80(r13)
    lis     r0, 0x4330
    lwz     r3, -0x5d80(r13)
    srwi    r3, r3, 9
    oris    r3, r3, 0x3f80
    stw     r3, 0x20(sp)
    lfs     f1, 0x20(sp)
    fsubs   f1, f1, f4
    fmuls   f1, f3, f1
    fctiwz  f1, f1
    stfd    f1, 0x30(sp)
    lwz     r3, 0x34(sp)
    clrlwi  r3, r3, 28
    xoris   r3, r3, 0x8000
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    lfd     f1, 0x28(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    fsubs   f31, f4, f0
branch_0x8001cef4:
    mr      r3, r30
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 24, 25
    beq-    branch_0x8001cf2c
    lbz     r3, 0x3(r30)
    lis     r0, 0x4330
    lfd     f2, -0x7a28(rtoc)
    stw     r3, 0x2c(sp)
    lfs     f0, -0x7a38(rtoc)
    stw     r0, 0x28(sp)
    lfd     f1, 0x28(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    fadds   f31, f31, f0
branch_0x8001cf2c:
    fmr     f1, f31
    lfs     f2, -0x7a44(rtoc)
    addi    r3, r30, 0x0
    clrlwi  r5, r31, 24
    li      r4, 0x4
    bl      setSeInterPitch__8JAISoundFUcfUlf
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lwz     r31, 0x3c(sp)
    mtlr    r0
    lwz     r30, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl setSeDistanceParameters__8MSHandleFv
setSeDistanceParameters__8MSHandleFv: # 0x8001cf60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    srwi.   r3, r0, 30
    extrwi  r4, r0, 4, 16
    bne-    branch_0x8001cf8c
    b       branch_0x8001cfb0

branch_0x8001cf8c:
    cmplwi  r3, 0x2
    bne-    branch_0x8001cf9c
    li      r4, 0x10
    b       branch_0x8001cfb0

branch_0x8001cf9c:
    cmplwi  r3, 0x3
    bne-    branch_0x8001cfac
    li      r4, 0x11
    b       branch_0x8001cfb0

branch_0x8001cfac:
    li      r4, -0x1
branch_0x8001cfb0:
    lbz     r0, 0x1(r30)
    lis     r3, 0x803b
    slwi    r4, r4, 4
    subi    r3, r3, 0x3714
    add     r3, r3, r4
    cmplwi  r0, 0x2
    lbz     r31, 0x0(r3)
    bne-    branch_0x8001cfd4
    li      r31, 0x0
branch_0x8001cfd4:
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 21, 21
    bne-    branch_0x8001d080
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x18(r30)
    lwz     r12, 0x4(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x2
    bl      setFxmix__8JAISoundFfUlUc
branch_0x8001d080:
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl MSACos__8MSHandleFf
MSACos__8MSHandleFf: # 0x8001d0b0
    stwu    sp, -0x18(sp)
    lis     r3, 0x803b
    subi    r3, r3, 0x38d0
    lfs     f0, -0x7a60(rtoc)
    lfs     f2, -0x7a20(rtoc)
    fadds   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    cmpwi   r0, 0x0
    bge-    branch_0x8001d0e8
    lfs     f1, 0x28(r3)
    b       branch_0x8001d104

branch_0x8001d0e8:
    cmpwi   r0, 0x65
    blt-    branch_0x8001d0f8
    lfs     f1, 0x1b8(r3)
    b       branch_0x8001d104

branch_0x8001d0f8:
    slwi    r0, r0, 2
    add     r3, r3, r0
    lfs     f1, 0x28(r3)
branch_0x8001d104:
    addi    sp, sp, 0x18
    blr


.globl __sinit_MSHandle_cpp
__sinit_MSHandle_cpp: # 0x8001d10c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5390
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d154
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8001d154:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d184
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8001d184:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d1b4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8001d1b4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d1e4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8001d1e4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d214
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8001d214:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d244
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8001d244:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d274
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8001d274:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d2a4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8001d2a4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d2d4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8001d2d4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d304
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8001d304:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d334
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8001d334:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d364
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8001d364:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d394
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8001d394:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d3c4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8001d3c4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d3f4
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8001d3f4:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

