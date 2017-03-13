
.globl __GXXfVtxSpecs
__GXXfVtxSpecs: # 0x8035be70
    lwz     r5, -0x72f8(r13)
    lwz     r4, 0x14(r5)
    extrwi. r0, r4, 2, 17
    beq-    branch_0x8035be88
    li      r3, 0x1
    b       branch_0x8035be8c

branch_0x8035be88:
    li      r3, 0x0
branch_0x8035be8c:
    extrwi. r0, r4, 2, 15
    beq-    branch_0x8035be9c
    li      r4, 0x1
    b       branch_0x8035bea0

branch_0x8035be9c:
    li      r4, 0x0
branch_0x8035bea0:
    lbz     r0, 0x41d(r5)
    add     r7, r3, r4
    cmplwi  r0, 0x0
    beq-    branch_0x8035beb8
    li      r4, 0x2
    b       branch_0x8035bed0

branch_0x8035beb8:
    lbz     r0, 0x41c(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8035becc
    li      r4, 0x1
    b       branch_0x8035bed0

branch_0x8035becc:
    li      r4, 0x0
branch_0x8035bed0:
    lwz     r6, 0x18(r5)
    clrlwi. r0, r6, 30
    beq-    branch_0x8035bee4
    li      r3, 0x1
    b       branch_0x8035bee8

branch_0x8035bee4:
    li      r3, 0x0
branch_0x8035bee8:
    extrwi. r0, r6, 2, 28
    beq-    branch_0x8035bef8
    li      r5, 0x1
    b       branch_0x8035befc

branch_0x8035bef8:
    li      r5, 0x0
branch_0x8035befc:
    extrwi. r0, r6, 2, 26
    add     r8, r3, r5
    beq-    branch_0x8035bf10
    li      r3, 0x1
    b       branch_0x8035bf14

branch_0x8035bf10:
    li      r3, 0x0
branch_0x8035bf14:
    extrwi. r0, r6, 2, 24
    add     r8, r8, r3
    beq-    branch_0x8035bf28
    li      r3, 0x1
    b       branch_0x8035bf2c

branch_0x8035bf28:
    li      r3, 0x0
branch_0x8035bf2c:
    extrwi. r0, r6, 2, 22
    add     r8, r8, r3
    beq-    branch_0x8035bf40
    li      r3, 0x1
    b       branch_0x8035bf44

branch_0x8035bf40:
    li      r3, 0x0
branch_0x8035bf44:
    extrwi. r0, r6, 2, 20
    add     r8, r8, r3
    beq-    branch_0x8035bf58
    li      r3, 0x1
    b       branch_0x8035bf5c

branch_0x8035bf58:
    li      r3, 0x0
branch_0x8035bf5c:
    extrwi. r0, r6, 2, 18
    add     r8, r8, r3
    beq-    branch_0x8035bf70
    li      r3, 0x1
    b       branch_0x8035bf74

branch_0x8035bf70:
    li      r3, 0x0
branch_0x8035bf74:
    extrwi. r0, r6, 2, 16
    add     r8, r8, r3
    beq-    branch_0x8035bf88
    li      r6, 0x1
    b       branch_0x8035bf8c

branch_0x8035bf88:
    li      r6, 0x0
branch_0x8035bf8c:
    li      r0, 0x10
    lwz     r3, -0x72f8(r13)
    lis     r5, 0xcc01
    add     r8, r8, r6
    stb     r0, -0x8000(r5)
    slwi    r0, r4, 2
    li      r4, 0x1008
    stw     r4, -0x8000(r5)
    slwi    r4, r8, 4
    or      r0, r7, r0
    or      r0, r4, r0
    stw     r0, -0x8000(r5)
    li      r0, 0x1
    sth     r0, 0x2(r3)
    blr


.globl GXSetVtxDesc
GXSetVtxDesc: # 0x8035bfc8
    cmplwi  r3, 0x19
    bgt-    branch_0x8035c2cc
    lis     r5, 0x803f
    subi    r5, r5, 0x7240
    slwi    r0, r3, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035BFE8:		# jumptable 8035BFE4 case 0
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x14(r3)
    clrrwi  r0, r0, 1
    or      r0, r0, r4
    stw     r0, 0x0(r3)
    b       branch_0x8035c2cc

branch_0x8035C000:		# jumptable 8035BFE4 case 1
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 1
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,31,29
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C020:		# jumptable 8035BFE4 case 2
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 2
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,30,28
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C040:		# jumptable 8035BFE4 case 3
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 3
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,29,27
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C060:		# jumptable 8035BFE4 case 4
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 4
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,28,26
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C080:		# jumptable 8035BFE4 case 5
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 5
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,27,25
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C0A0:		# jumptable 8035BFE4 case 6
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 6
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,26,24
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C0C0:		# jumptable 8035BFE4 case 7
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 7
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,25,23
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C0E0:		# jumptable 8035BFE4 case 8
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 8
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,24,22
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C100:		# jumptable 8035BFE4 case 9
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 9
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,23,20
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C120:		# jumptable 8035BFE4 case 10
cmpwi	  r4, 0
beq	  branch_0x8035C14C
lwz	  r3, -0x72F8(r13)
li	  r5, 1
li	  r0, 0
stb	  r5, 0x41C(r3)
lwz	  r3, -0x72F8(r13)
stb	  r0, 0x41D(r3)
lwz	  r3, -0x72F8(r13)
stw	  r4, 0x418(r3)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C14C:
lwz	  r3, -0x72F8(r13)
li	  r0, 0
stb	  r0, 0x41C(r3)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C15C:		# jumptable 8035BFE4 case 25
cmpwi	  r4, 0
beq	  branch_0x8035C188
lwz	  r3, -0x72F8(r13)
li	  r5, 1
li	  r0, 0
stb	  r5, 0x41D(r3)
lwz	  r3, -0x72F8(r13)
stb	  r0, 0x41C(r3)
lwz	  r3, -0x72F8(r13)
stw	  r4, 0x418(r3)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C188:
lwz	  r3, -0x72F8(r13)
li	  r0, 0
stb	  r0, 0x41D(r3)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C198:		# jumptable 8035BFE4 case 11
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 13
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,19,16
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C1B8:		# jumptable 8035BFE4 case 12
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 15
addi	  r4, r3, 0x14
lwz	  r3, 0x14(r3)
rlwinm	  r3, r3, 0,17,14
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C1D8:		# jumptable 8035BFE4 case 13
lwz	  r3, -0x72F8(r13)
lwzu	  r0, 0x18(r3)
clrrwi	  r0, r0, 2
or	  r0, r0, r4
stw	  r0, 0(r3)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C1F0:		# jumptable 8035BFE4 case 14
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 2
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,30,27
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C210:		# jumptable 8035BFE4 case 15
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 4
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,28,25
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C230:		# jumptable 8035BFE4 case 16
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 6
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,26,23
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C250:		# jumptable 8035BFE4 case 17
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 8
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,24,21
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C270:		# jumptable 8035BFE4 case 18
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 10
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,22,19
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C290:		# jumptable 8035BFE4 case 19
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 12
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,20,17
or	  r0, r3, r0
stw	  r0, 0(r4)
b	  def_8035BFE4	# jumptable 8035BFE4 default case

branch_0x8035C2B0:		# jumptable 8035BFE4 case 20
lwz	  r3, -0x72F8(r13)
slwi	  r0, r4, 14
addi	  r4, r3, 0x18
lwz	  r3, 0x18(r3)
rlwinm	  r3, r3, 0,18,15
or	  r0, r3, r0
stw	  r0, 0(r4)

def_8035BFE4:		# jumptable 8035BFE4 default case
branch_0x8035c2cc:
    lwz     r3, -0x72f8(r13)
    lbz     r0, 0x41c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8035c2e8
    lbz     r0, 0x41d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8035c308
branch_0x8035c2e8:
    addi    r4, r3, 0x14
    lwz     r0, 0x418(r3)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 11
    rlwinm  r3, r3, 0, 21, 18
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x8035c314

branch_0x8035c308:
    lwzu    r0, 0x14(r3)
    rlwinm  r0, r0, 0, 21, 18
    stw     r0, 0x0(r3)
branch_0x8035c314:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetVtxDescv
GXSetVtxDescv: # 0x8035c328
    lis     r4, 0x803f
    subi    r4, r4, 0x71d8
    b       branch_0x8035c644

branch_0x8035c334:
    lwz     r5, 0x0(r3)
    lwz     r0, 0x4(r3)
    cmplwi  r5, 0x19
    bgt-    branch_0x8035c640
    slwi    r5, r5, 2
    lwzx    r5, r4, r5
    mtctr   r5
    bctr			# switch jump

branch_0x8035C354:		# jumptable 8035C350 case 0
    lwz     r5, -0x72f8(r13)
    addi    r6, r5, 0x14
    lwz     r5, 0x14(r5)
    clrrwi  r5, r5, 1
    or      r0, r5, r0
    stw     r0, 0x0(r6)
    b       branch_0x8035c640

branch_0x8035C370:		# jumptable 8035C350 case 1
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 1
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,31,29
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C390:		# jumptable 8035C350 case 2
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 2
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,30,28
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C3B0:		# jumptable 8035C350 case 3
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 3
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,29,27
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C3D0:		# jumptable 8035C350 case 4
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 4
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,28,26
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C3F0:		# jumptable 8035C350 case 5
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 5
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,27,25
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C410:		# jumptable 8035C350 case 6
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 6
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,26,24
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C430:		# jumptable 8035C350 case 7
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 7
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,25,23
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C450:		# jumptable 8035C350 case 8
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 8
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,24,22
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C470:		# jumptable 8035C350 case 9
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 9
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,23,20
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C490:		# jumptable 8035C350 case 10
cmpwi	  r0, 0
beq	  branch_0x8035C4BC
lwz	  r5, -0x72F8(r13)
li	  r7, 1
li	  r6, 0
stb	  r7, 0x41C(r5)
lwz	  r5, -0x72F8(r13)
stb	  r6, 0x41D(r5)
lwz	  r5, -0x72F8(r13)
stw	  r0, 0x418(r5)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C4BC:
lwz	  r5, -0x72F8(r13)
li	  r0, 0
stb	  r0, 0x41C(r5)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C4CC:		# jumptable 8035C350 case 25
cmpwi	  r0, 0
beq	  branch_0x8035C4F8
lwz	  r5, -0x72F8(r13)
li	  r7, 1
li	  r6, 0
stb	  r7, 0x41D(r5)
lwz	  r5, -0x72F8(r13)
stb	  r6, 0x41C(r5)
lwz	  r5, -0x72F8(r13)
stw	  r0, 0x418(r5)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C4F8:
lwz	  r5, -0x72F8(r13)
li	  r0, 0
stb	  r0, 0x41D(r5)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C508:		# jumptable 8035C350 case 11
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 13
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,19,16
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C528:		# jumptable 8035C350 case 12
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 15
addi	  r6, r5, 0x14
lwz	  r5, 0x14(r5)
rlwinm	  r5, r5, 0,17,14
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C548:		# jumptable 8035C350 case 13
lwz	  r5, -0x72F8(r13)
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
clrrwi	  r5, r5, 2
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C564:		# jumptable 8035C350 case 14
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 2
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,30,27
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C584:		# jumptable 8035C350 case 15
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 4
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,28,25
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C5A4:		# jumptable 8035C350 case 16
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 6
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,26,23
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C5C4:		# jumptable 8035C350 case 17
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 8
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,24,21
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C5E4:		# jumptable 8035C350 case 18
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 10
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,22,19
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C604:		# jumptable 8035C350 case 19
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 12
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,20,17
or	  r0, r5, r0
stw	  r0, 0(r6)
b	  def_8035C350	# jumptable 8035C350 default case

branch_0x8035C624:		# jumptable 8035C350 case 20
lwz	  r5, -0x72F8(r13)
slwi	  r0, r0, 14
addi	  r6, r5, 0x18
lwz	  r5, 0x18(r5)
rlwinm	  r5, r5, 0,18,15
or	  r0, r5, r0
stw	  r0, 0(r6)

def_8035C350:		# jumptable 8035C350 default case
branch_0x8035c640:
    addi    r3, r3, 0x8
branch_0x8035c644:
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0xff
    bne+    branch_0x8035c334
    lwz     r3, -0x72f8(r13)
    lbz     r0, 0x41c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8035c66c
    lbz     r0, 0x41d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8035c68c
branch_0x8035c66c:
    addi    r4, r3, 0x14
    lwz     r0, 0x418(r3)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 11
    rlwinm  r3, r3, 0, 21, 18
    or      r0, r3, r0
    stw     r0, 0x0(r4)
    b       branch_0x8035c698

branch_0x8035c68c:
    lwzu    r0, 0x14(r3)
    rlwinm  r0, r0, 0, 21, 18
    stw     r0, 0x0(r3)
branch_0x8035c698:
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr


.globl __GXSetVCD
__GXSetVCD: # 0x8035c6ac
    mflr    r0
    li      r6, 0x8
    stw     r0, 0x4(sp)
    lis     r5, 0xcc01
    li      r3, 0x50
    stwu    sp, -0x8(sp)
    li      r0, 0x60
    stb     r6, -0x8000(r5)
    lwz     r4, -0x72f8(r13)
    stb     r3, -0x8000(r5)
    lwz     r3, 0x14(r4)
    stw     r3, -0x8000(r5)
    stb     r6, -0x8000(r5)
    stb     r0, -0x8000(r5)
    lwz     r0, 0x18(r4)
    stw     r0, -0x8000(r5)
    bl      __GXXfVtxSpecs
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __GXCalculateVLim
__GXCalculateVLim: # 0x8035c700
    lwz     r3, -0x72f8(r13)
    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lwz     r9, 0x14(r3)
    subi    r5, r13, 0x72e8
    lwz     r8, 0x1c(r3)
    clrlwi  r0, r9, 31
    lwz     r4, 0x18(r3)
    extrwi  r6, r9, 1, 30
    add     r0, r0, r6
    extrwi  r6, r9, 1, 29
    add     r0, r0, r6
    extrwi  r7, r9, 1, 28
    extrwi  r6, r9, 2, 21
    lbzx    r5, r5, r6
    extrwi  r8, r8, 1, 22
    add     r0, r0, r7
    extrwi  r6, r9, 1, 27
    add     r0, r0, r6
    extrwi  r6, r9, 1, 26
    add     r0, r0, r6
    extrwi  r6, r9, 1, 25
    add     r0, r0, r6
    extrwi  r6, r9, 1, 24
    add     r0, r0, r6
    extrwi  r6, r9, 1, 23
    add     r0, r0, r6
    cmpwi   r8, 0x1
    add     r0, r0, r5
    bne-    branch_0x8035c784
    li      r8, 0x3
    b       branch_0x8035c788

branch_0x8035c784:
    li      r8, 0x1
branch_0x8035c788:
    extrwi  r6, r9, 2, 19
    subi    r5, r13, 0x72e8
    lbzx    r6, r5, r6
    extrwi  r5, r9, 2, 17
    subi    r7, r13, 0x72f0
    mullw   r8, r6, r8
    lbzx    r6, r7, r5
    add     r0, r0, r8
    extrwi  r5, r9, 2, 15
    lbzx    r9, r7, r5
    add     r0, r0, r6
    clrlwi  r6, r4, 30
    subi    r8, r13, 0x72ec
    extrwi  r5, r4, 2, 28
    lbzx    r7, r8, r6
    add     r0, r0, r9
    lbzx    r6, r8, r5
    add     r0, r0, r7
    extrwi  r5, r4, 2, 26
    lbzx    r7, r8, r5
    add     r0, r0, r6
    extrwi  r5, r4, 2, 24
    lbzx    r6, r8, r5
    add     r0, r0, r7
    extrwi  r5, r4, 2, 22
    lbzx    r7, r8, r5
    add     r0, r0, r6
    extrwi  r5, r4, 2, 20
    lbzx    r6, r8, r5
    extrwi  r5, r4, 2, 18
    add     r0, r0, r7
    lbzx    r5, r8, r5
    extrwi  r4, r4, 2, 16
    add     r0, r0, r6
    lbzx    r4, r8, r4
    add     r0, r0, r5
    add     r0, r0, r4
    sth     r0, 0x6(r3)
    blr


.globl GXGetVtxDesc
GXGetVtxDesc: # 0x8035c824
    cmplwi  r3, 0x19
    bgt-    branch_0x8035c9cc
    lis     r5, 0x803f
    subi    r5, r5, 0x7170
    slwi    r0, r3, 2
    lwzx    r0, r5, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035C844:		# jumptable 8035C840 case 0
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x14(r3)
    clrlwi  r0, r0, 31
    b       branch_0x8035c9d0

branch_0x8035C854:		# jumptable 8035C840 case 1
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,30
b	  branch_0x8035c9d0

branch_0x8035C864:		# jumptable 8035C840 case 2
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,29
b	  branch_0x8035c9d0

branch_0x8035C874:		# jumptable 8035C840 case 3
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,28
b	  branch_0x8035c9d0

branch_0x8035C884:		# jumptable 8035C840 case 4
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,27
b	  branch_0x8035c9d0

branch_0x8035C894:		# jumptable 8035C840 case 5
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,26
b	  branch_0x8035c9d0

branch_0x8035C8A4:		# jumptable 8035C840 case 6
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,25
b	  branch_0x8035c9d0

branch_0x8035C8B4:		# jumptable 8035C840 case 7
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,24
b	  branch_0x8035c9d0

branch_0x8035C8C4:		# jumptable 8035C840 case 8
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 1,23
b	  branch_0x8035c9d0

branch_0x8035C8D4:		# jumptable 8035C840 case 9
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 2,21
b	  branch_0x8035c9d0

branch_0x8035C8E4:		# jumptable 8035C840 case 10
lwz	  r3, -0x72F8(r13)
lbz	  r0, 0x41C(r3)
cmplwi	  r0, 0
beq	  branch_0x8035C900
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 2,19
b	  branch_0x8035c9d0

branch_0x8035C900:
li	  r0, 0
b	  branch_0x8035c9d0

branch_0x8035C908:		# jumptable 8035C840 case 25
lwz	  r3, -0x72F8(r13)
lbz	  r0, 0x41D(r3)
cmplwi	  r0, 0
beq	  branch_0x8035C924
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 2,19
b	  branch_0x8035c9d0

branch_0x8035C924:
li	  r0, 0
b	  branch_0x8035c9d0

branch_0x8035C92C:		# jumptable 8035C840 case 11
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 2,17
b	  branch_0x8035c9d0

branch_0x8035C93C:		# jumptable 8035C840 case 12
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x14(r3)
extrwi	  r0, r0, 2,15
b	  branch_0x8035c9d0

branch_0x8035C94C:		# jumptable 8035C840 case 13
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
clrlwi	  r0, r0, 30
b	  branch_0x8035c9d0

branch_0x8035C95C:		# jumptable 8035C840 case 14
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,28
b	  branch_0x8035c9d0

branch_0x8035C96C:		# jumptable 8035C840 case 15
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,26
b	  branch_0x8035c9d0

branch_0x8035C97C:		# jumptable 8035C840 case 16
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,24
b	  branch_0x8035c9d0

branch_0x8035C98C:		# jumptable 8035C840 case 17
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,22
b	  branch_0x8035c9d0

branch_0x8035C99C:		# jumptable 8035C840 case 18
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,20
b	  branch_0x8035c9d0

branch_0x8035C9AC:		# jumptable 8035C840 case 19
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,18
b	  branch_0x8035c9d0

branch_0x8035C9BC:		# jumptable 8035C840 case 20
lwz	  r3, -0x72F8(r13)
lwz	  r0, 0x18(r3)
extrwi	  r0, r0, 2,16
b	  branch_0x8035c9d0

def_8035C840:		# jumptable 8035C840 default case
branch_0x8035c9cc:
    li      r0, 0x0
branch_0x8035c9d0:
    stw     r0, 0x0(r4)
    blr


.globl GXGetVtxDescv
GXGetVtxDescv: # 0x8035c9d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
branch_0x8035c9fc:
    add     r4, r29, r31
    stw     r30, 0x0(r4)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x4
    bl      GXGetVtxDesc
    addi    r30, r30, 0x1
    cmpwi   r30, 0x1a
    addi    r31, r31, 0x8
    blt+    branch_0x8035c9fc
    slwi    r0, r30, 3
    li      r3, 0xff
    stwx    r3, r29, r0
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXClearVtxDesc
GXClearVtxDesc: # 0x8035ca48
    lwz     r3, -0x72f8(r13)
    li      r4, 0x0
    stw     r4, 0x14(r3)
    lwz     r3, -0x72f8(r13)
    lwzu    r0, 0x14(r3)
    rlwinm  r0, r0, 0, 23, 20
    ori     r0, r0, 0x200
    stw     r0, 0x0(r3)
    lwz     r3, -0x72f8(r13)
    stw     r4, 0x18(r3)
    lwz     r3, -0x72f8(r13)
    stb     r4, 0x41c(r3)
    lwz     r3, -0x72f8(r13)
    stb     r4, 0x41d(r3)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x8
    stw     r0, 0x4f4(r3)
    blr


.globl GXSetVtxAttrFmt
GXSetVtxAttrFmt: # 0x8035ca94
    subi    r0, r4, 0x9
    lwz     r8, -0x72f8(r13)
    slwi    r4, r3, 2
    add     r9, r8, r4
    cmplwi  r0, 0x10
    addi    r4, r9, 0x1c
    addi    r8, r9, 0x3c
    addi    r9, r9, 0x5c
    bgt-    branch_0x8035cdbc
    lis     r10, 0x803f
    subi    r10, r10, 0x7108
    slwi    r0, r0, 2
    lwzx    r0, r10, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035CAD0:		# jumptable 8035CACC case 0
    lwz     r0, 0x0(r4)
    slwi    r6, r6, 1
    clrrwi  r0, r0, 1
    or      r0, r0, r5
    stw     r0, 0x0(r4)
    clrlslwi  r0, r7, 24, 4
    lwz     r5, 0x0(r4)
    rlwinm  r5, r5, 0, 31, 27
    or      r5, r5, r6
    stw     r5, 0x0(r4)
    lwz     r5, 0x0(r4)
    rlwinm  r5, r5, 0, 28, 22
    or      r0, r5, r0
    stw     r0, 0x0(r4)
    b       branch_0x8035cdbc

branch_0x8035CB0C:		# jumptable 8035CACC cases 1,16
lwz	  r7, 0(r4)
slwi	  r0, r6, 10
cmpwi	  r5, 2
rlwinm	  r6, r7, 0,22,18
or	  r0, r6, r0
stw	  r0, 0(r4)
bne	  branch_0x8035CB4C
lwz	  r0, 0(r4)
rlwinm	  r0, r0, 0,23,21
ori	  r0, r0, 0x200
stw	  r0, 0(r4)
lwz	  r0, 0(r4)
clrlwi	  r0, r0, 1
oris	  r0, r0, 0x8000
stw	  r0, 0(r4)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CB4C:
lwz	  r6, 0(r4)
slwi	  r0, r5, 9
rlwinm	  r5, r6, 0,23,21
or	  r0, r5, r0
stw	  r0, 0(r4)
lwz	  r0, 0(r4)
clrlwi	  r0, r0, 1
stw	  r0, 0(r4)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CB70:		# jumptable 8035CACC case 2
lwz	  r7, 0(r4)
slwi	  r5, r5, 13
slwi	  r0, r6, 14
rlwinm	  r6, r7, 0,19,17
or	  r5, r6, r5
stw	  r5, 0(r4)
lwz	  r5, 0(r4)
rlwinm	  r5, r5, 0,18,14
or	  r0, r5, r0
stw	  r0, 0(r4)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CB9C:		# jumptable 8035CACC case 3
lwz	  r7, 0(r4)
slwi	  r5, r5, 17
slwi	  r0, r6, 18
rlwinm	  r6, r7, 0,15,13
or	  r5, r6, r5
stw	  r5, 0(r4)
lwz	  r5, 0(r4)
rlwinm	  r5, r5, 0,14,10
or	  r0, r5, r0
stw	  r0, 0(r4)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CBC8:		# jumptable 8035CACC case 4
lwz	  r8, 0(r4)
slwi	  r0, r5, 21
rlwinm	  r5, r8, 0,11,9
or	  r0, r5, r0
stw	  r0, 0(r4)
slwi	  r5, r6, 22
slwi	  r0, r7, 25
lwz	  r6, 0(r4)
rlwinm	  r6, r6, 0,10,6
or	  r5, r6, r5
stw	  r5, 0(r4)
lwz	  r5, 0(r4)
rlwinm	  r5, r5, 0,7,1
or	  r0, r5, r0
stw	  r0, 0(r4)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CC08:		# jumptable 8035CACC case 5
lwz	  r0, 0(r8)
slwi	  r4, r6, 1
clrrwi	  r0, r0, 1
or	  r0, r0, r5
stw	  r0, 0(r8)
clrlslwi  r0, r7, 24,4
lwz	  r5, 0(r8)
rlwinm	  r5, r5, 0,31,27
or	  r4, r5, r4
stw	  r4, 0(r8)
lwz	  r4, 0(r8)
rlwinm	  r4, r4, 0,28,22
or	  r0, r4, r0
stw	  r0, 0(r8)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CC44:		# jumptable 8035CACC case 6
lwz	  r4, 0(r8)
slwi	  r0, r5, 9
rlwinm	  r4, r4, 0,23,21
or	  r0, r4, r0
stw	  r0, 0(r8)
slwi	  r4, r6, 10
clrlslwi  r0, r7, 24,13
lwz	  r5, 0(r8)
rlwinm	  r5, r5, 0,22,18
or	  r4, r5, r4
stw	  r4, 0(r8)
lwz	  r4, 0(r8)
rlwinm	  r4, r4, 0,19,13
or	  r0, r4, r0
stw	  r0, 0(r8)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CC84:		# jumptable 8035CACC case 7
lwz	  r4, 0(r8)
slwi	  r0, r5, 18
rlwinm	  r4, r4, 0,14,12
or	  r0, r4, r0
stw	  r0, 0(r8)
slwi	  r4, r6, 19
clrlslwi  r0, r7, 24,22
lwz	  r5, 0(r8)
rlwinm	  r5, r5, 0,13,9
or	  r4, r5, r4
stw	  r4, 0(r8)
lwz	  r4, 0(r8)
rlwinm	  r4, r4, 0,10,4
or	  r0, r4, r0
stw	  r0, 0(r8)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CCC4:		# jumptable 8035CACC case 8
lwz	  r10, 0(r8)
slwi	  r0, r5, 27
slwi	  r4, r6, 28
rlwinm	  r5, r10, 0,5,3
or	  r0, r5, r0
stw	  r0, 0(r8)
clrlwi	  r0, r7, 24
lwz	  r5, 0(r8)
rlwinm	  r5, r5, 0,4,0
or	  r4, r5, r4
stw	  r4, 0(r8)
lwz	  r4, 0(r9)
clrrwi	  r4, r4, 5
or	  r0, r4, r0
stw	  r0, 0(r9)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CD04:		# jumptable 8035CACC case 9
lwz	  r4, 0(r9)
slwi	  r0, r5, 5
rlwinm	  r4, r4, 0,27,25
or	  r0, r4, r0
stw	  r0, 0(r9)
slwi	  r4, r6, 6
clrlslwi  r0, r7, 24,9
lwz	  r5, 0(r9)
rlwinm	  r5, r5, 0,26,22
or	  r4, r5, r4
stw	  r4, 0(r9)
lwz	  r4, 0(r9)
rlwinm	  r4, r4, 0,23,17
or	  r0, r4, r0
stw	  r0, 0(r9)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CD44:		# jumptable 8035CACC case 10
lwz	  r4, 0(r9)
slwi	  r0, r5, 14
rlwinm	  r4, r4, 0,18,16
or	  r0, r4, r0
stw	  r0, 0(r9)
slwi	  r4, r6, 15
clrlslwi  r0, r7, 24,18
lwz	  r5, 0(r9)
rlwinm	  r5, r5, 0,17,13
or	  r4, r5, r4
stw	  r4, 0(r9)
lwz	  r4, 0(r9)
rlwinm	  r4, r4, 0,14,8
or	  r0, r4, r0
stw	  r0, 0(r9)
b	  def_8035CACC	# jumptable 8035CACC default case

branch_0x8035CD84:		# jumptable 8035CACC case 11
lwz	  r4, 0(r9)
slwi	  r0, r5, 23
rlwinm	  r4, r4, 0,9,7
or	  r0, r4, r0
stw	  r0, 0(r9)
slwi	  r0, r6, 24
lwz	  r4, 0(r9)
rlwinm	  r4, r4, 0,8,4
or	  r0, r4, r0
stw	  r0, 0(r9)
lwz	  r0, 0(r9)
clrlwi	  r0, r0, 5
insrwi	  r0, r7, 5,0
stw	  r0, 0(r9)

def_8035CACC:		# jumptable 8035CACC default case
branch_0x8035cdbc:
    lwz     r5, -0x72f8(r13)
    clrlwi  r0, r3, 24
    li      r3, 0x1
    lwz     r4, 0x4f4(r5)
    slw     r0, r3, r0
    clrlwi  r0, r0, 24
    ori     r3, r4, 0x10
    stw     r3, 0x4f4(r5)
    lwz     r4, -0x72f8(r13)
    lbz     r3, 0x4f2(r4)
    or      r0, r3, r0
    stb     r0, 0x4f2(r4)
    blr


.globl GXSetVtxAttrFmtv
GXSetVtxAttrFmtv: # 0x8035cdf0
    lwz     r6, -0x72f8(r13)
    slwi    r0, r3, 2
    lis     r5, 0x803f
    add     r6, r6, r0
    addi    r8, r6, 0x1c
    addi    r9, r6, 0x3c
    addi    r10, r6, 0x5c
    subi    r5, r5, 0x70c4
    b       branch_0x8035d12c

branch_0x8035ce14:
    lwz     r6, 0x0(r4)
    lbz     r7, 0xc(r4)
    subi    r11, r6, 0x9
    lwz     r6, 0x8(r4)
    cmplwi  r11, 0x10
    lwz     r0, 0x4(r4)
    bgt-    branch_0x8035d128
    slwi    r11, r11, 2
    lwzx    r11, r5, r11
    mtctr   r11
    bctr			# switch jump

branch_0x8035CE40:		# jumptable 8035CE3C case 0
    lwz     r12, 0x0(r8)
    slwi    r11, r6, 1
    slwi    r6, r7, 4
    clrrwi  r7, r12, 1
    or      r0, r7, r0
    stw     r0, 0x0(r8)
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 31, 27
    or      r0, r0, r11
    stw     r0, 0x0(r8)
    lwz     r0, 0x0(r8)
    rlwinm  r0, r0, 0, 28, 22
    or      r0, r0, r6
    stw     r0, 0x0(r8)
    b       branch_0x8035d128

branch_0x8035CE7C:		# jumptable 8035CE3C cases 1,16
lwz	  r7, 0(r8)
slwi	  r6, r6, 10
cmpwi	  r0, 2
rlwinm	  r7, r7, 0,22,18
or	  r6, r7, r6
stw	  r6, 0(r8)
bne	  branch_0x8035CEBC
lwz	  r0, 0(r8)
rlwinm	  r0, r0, 0,23,21
ori	  r0, r0, 0x200
stw	  r0, 0(r8)
lwz	  r0, 0(r8)
clrlwi	  r0, r0, 1
oris	  r0, r0, 0x8000
stw	  r0, 0(r8)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CEBC:
lwz	  r6, 0(r8)
slwi	  r0, r0, 9
rlwinm	  r6, r6, 0,23,21
or	  r0, r6, r0
stw	  r0, 0(r8)
lwz	  r0, 0(r8)
clrlwi	  r0, r0, 1
stw	  r0, 0(r8)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CEE0:		# jumptable 8035CE3C case 2
lwz	  r11, 0(r8)
slwi	  r7, r0, 13
slwi	  r0, r6, 14
rlwinm	  r6, r11, 0,19,17
or	  r6, r6, r7
stw	  r6, 0(r8)
lwz	  r6, 0(r8)
rlwinm	  r6, r6, 0,18,14
or	  r0, r6, r0
stw	  r0, 0(r8)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CF0C:		# jumptable 8035CE3C case 3
lwz	  r11, 0(r8)
slwi	  r7, r0, 17
slwi	  r0, r6, 18
rlwinm	  r6, r11, 0,15,13
or	  r6, r6, r7
stw	  r6, 0(r8)
lwz	  r6, 0(r8)
rlwinm	  r6, r6, 0,14,10
or	  r0, r6, r0
stw	  r0, 0(r8)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CF38:		# jumptable 8035CE3C case 4
lwz	  r11, 0(r8)
slwi	  r0, r0, 21
slwi	  r6, r6, 22
rlwinm	  r11, r11, 0,11,9
or	  r0, r11, r0
stw	  r0, 0(r8)
slwi	  r0, r7, 25
lwz	  r7, 0(r8)
rlwinm	  r7, r7, 0,10,6
or	  r6, r7, r6
stw	  r6, 0(r8)
lwz	  r6, 0(r8)
rlwinm	  r6, r6, 0,7,1
or	  r0, r6, r0
stw	  r0, 0(r8)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CF78:		# jumptable 8035CE3C case 5
lwz	  r12, 0(r9)
slwi	  r11, r6, 1
slwi	  r6, r7, 4
clrrwi	  r7, r12, 1
or	  r0, r7, r0
stw	  r0, 0(r9)
lwz	  r0, 0(r9)
rlwinm	  r0, r0, 0,31,27
or	  r0, r0, r11
stw	  r0, 0(r9)
lwz	  r0, 0(r9)
rlwinm	  r0, r0, 0,28,22
or	  r0, r0, r6
stw	  r0, 0(r9)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CFB4:		# jumptable 8035CE3C case 6
lwz	  r11, 0(r9)
slwi	  r0, r0, 9
slwi	  r6, r6, 10
rlwinm	  r11, r11, 0,23,21
or	  r0, r11, r0
stw	  r0, 0(r9)
slwi	  r0, r7, 13
lwz	  r7, 0(r9)
rlwinm	  r7, r7, 0,22,18
or	  r6, r7, r6
stw	  r6, 0(r9)
lwz	  r6, 0(r9)
rlwinm	  r6, r6, 0,19,13
or	  r0, r6, r0
stw	  r0, 0(r9)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035CFF4:		# jumptable 8035CE3C case 7
lwz	  r11, 0(r9)
slwi	  r0, r0, 18
slwi	  r6, r6, 19
rlwinm	  r11, r11, 0,14,12
or	  r0, r11, r0
stw	  r0, 0(r9)
slwi	  r0, r7, 22
lwz	  r7, 0(r9)
rlwinm	  r7, r7, 0,13,9
or	  r6, r7, r6
stw	  r6, 0(r9)
lwz	  r6, 0(r9)
rlwinm	  r6, r6, 0,10,4
or	  r0, r6, r0
stw	  r0, 0(r9)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035D034:		# jumptable 8035CE3C case 8
lwz	  r12, 0(r9)
slwi	  r11, r0, 27
slwi	  r0, r6, 28
rlwinm	  r6, r12, 0,5,3
or	  r6, r6, r11
stw	  r6, 0(r9)
lwz	  r6, 0(r9)
rlwinm	  r6, r6, 0,4,0
or	  r0, r6, r0
stw	  r0, 0(r9)
lwz	  r0, 0(r10)
clrrwi	  r0, r0, 5
or	  r0, r0, r7
stw	  r0, 0(r10)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035D070:		# jumptable 8035CE3C case 9
lwz	  r11, 0(r10)
slwi	  r0, r0, 5
slwi	  r6, r6, 6
rlwinm	  r11, r11, 0,27,25
or	  r0, r11, r0
stw	  r0, 0(r10)
slwi	  r0, r7, 9
lwz	  r7, 0(r10)
rlwinm	  r7, r7, 0,26,22
or	  r6, r7, r6
stw	  r6, 0(r10)
lwz	  r6, 0(r10)
rlwinm	  r6, r6, 0,23,17
or	  r0, r6, r0
stw	  r0, 0(r10)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035D0B0:		# jumptable 8035CE3C case 10
lwz	  r11, 0(r10)
slwi	  r0, r0, 14
slwi	  r6, r6, 15
rlwinm	  r11, r11, 0,18,16
or	  r0, r11, r0
stw	  r0, 0(r10)
slwi	  r0, r7, 18
lwz	  r7, 0(r10)
rlwinm	  r7, r7, 0,17,13
or	  r6, r7, r6
stw	  r6, 0(r10)
lwz	  r6, 0(r10)
rlwinm	  r6, r6, 0,14,8
or	  r0, r6, r0
stw	  r0, 0(r10)
b	  def_8035CE3C	# jumptable 8035CE3C default case

branch_0x8035D0F0:		# jumptable 8035CE3C case 11
lwz	  r12, 0(r10)
slwi	  r11, r0, 23
slwi	  r0, r6, 24
rlwinm	  r6, r12, 0,9,7
or	  r6, r6, r11
stw	  r6, 0(r10)
lwz	  r6, 0(r10)
rlwinm	  r6, r6, 0,8,4
or	  r0, r6, r0
stw	  r0, 0(r10)
lwz	  r0, 0(r10)
clrlwi	  r0, r0, 5
insrwi	  r0, r7, 5,0
stw	  r0, 0(r10)

def_8035CE3C:		# jumptable 8035CE3C default case
branch_0x8035d128:
    addi    r4, r4, 0x10
branch_0x8035d12c:
    lwz     r0, 0x0(r4)
    cmpwi   r0, 0xff
    bne+    branch_0x8035ce14
    lwz     r5, -0x72f8(r13)
    clrlwi  r0, r3, 24
    li      r3, 0x1
    lwz     r4, 0x4f4(r5)
    slw     r0, r3, r0
    clrlwi  r0, r0, 24
    ori     r3, r4, 0x10
    stw     r3, 0x4f4(r5)
    lwz     r4, -0x72f8(r13)
    lbz     r3, 0x4f2(r4)
    or      r0, r3, r0
    stb     r0, 0x4f2(r4)
    blr


.globl __GXSetVAT
__GXSetVAT: # 0x8035d16c
    lwz     r10, -0x72f8(r13)
    li      r12, 0x0
    li      r11, 0x0
    lis     r7, 0xcc01
    b       branch_0x8035d1ec

branch_0x8035d180:
    clrlwi  r9, r12, 24
    lbz     r3, 0x4f2(r10)
    li      r0, 0x1
    slw     r0, r0, r9
    and.    r0, r3, r0
    beq-    branch_0x8035d1e4
    li      r8, 0x8
    stb     r8, -0x8000(r7)
    ori     r3, r9, 0x70
    addi    r0, r11, 0x1c
    stb     r3, -0x8000(r7)
    ori     r5, r9, 0x80
    addi    r4, r11, 0x3c
    lwzx    r6, r10, r0
    ori     r3, r9, 0x90
    addi    r0, r11, 0x5c
    stw     r6, -0x8000(r7)
    stb     r8, -0x8000(r7)
    stb     r5, -0x8000(r7)
    lwzx    r4, r10, r4
    stw     r4, -0x8000(r7)
    stb     r8, -0x8000(r7)
    stb     r3, -0x8000(r7)
    lwzx    r0, r10, r0
    stw     r0, -0x8000(r7)
branch_0x8035d1e4:
    addi    r11, r11, 0x4
    addi    r12, r12, 0x1
branch_0x8035d1ec:
    clrlwi  r0, r12, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8035d180
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    stb     r0, 0x4f2(r3)
    blr


.globl GXGetVtxAttrFmt
GXGetVtxAttrFmt: # 0x8035d208
    subi    r0, r4, 0x9
    lwz     r4, -0x72f8(r13)
    slwi    r3, r3, 2
    add     r4, r4, r3
    cmplwi  r0, 0x10
    addi    r3, r4, 0x1c
    addi    r8, r4, 0x3c
    addi    r9, r4, 0x5c
    bgt-    branch_0x8035d438
    lis     r4, 0x803f
    subi    r4, r4, 0x7080
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035D244:		# jumptable 8035D240 case 0
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 31
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r3)
    extrwi  r0, r0, 3, 28
    stw     r0, 0x0(r6)
    lwz     r0, 0x0(r3)
    extrwi  r0, r0, 5, 23
    stb     r0, 0x0(r7)
    blr

branch_0x8035D26C:		# jumptable 8035D240 cases 1,16
lwz	  r0, 0(r3)
extrwi	  r0, r0, 1,22
stw	  r0, 0(r5)
lwz	  r0, 0(r5)
cmpwi	  r0, 1
bne	  branch_0x8035D298
lwz	  r0, 0(r3)
srwi.	  r0, r0, 31
beq	  branch_0x8035D298
li	  r0, 2
stw	  r0, 0(r5)

branch_0x8035D298:
lwz	  r3, 0(r3)
li	  r0, 0
extrwi	  r3, r3, 3,19
stw	  r3, 0(r6)
stb	  r0, 0(r7)
blr

branch_0x8035D2B0:		# jumptable 8035D240 case 2
lwz	  r4, 0(r3)
li	  r0, 0
extrwi	  r4, r4, 1,18
stw	  r4, 0(r5)
lwz	  r3, 0(r3)
extrwi	  r3, r3, 3,15
stw	  r3, 0(r6)
stb	  r0, 0(r7)
blr

branch_0x8035D2D4:		# jumptable 8035D240 case 3
lwz	  r4, 0(r3)
li	  r0, 0
extrwi	  r4, r4, 1,14
stw	  r4, 0(r5)
lwz	  r3, 0(r3)
extrwi	  r3, r3, 3,11
stw	  r3, 0(r6)
stb	  r0, 0(r7)
blr

branch_0x8035D2F8:		# jumptable 8035D240 case 4
lwz	  r0, 0(r3)
extrwi	  r0, r0, 1,10
stw	  r0, 0(r5)
lwz	  r0, 0(r3)
extrwi	  r0, r0, 3,7
stw	  r0, 0(r6)
lwz	  r0, 0(r3)
extrwi	  r0, r0, 5,2
stb	  r0, 0(r7)
blr

branch_0x8035D320:		# jumptable 8035D240 case 5
lwz	  r0, 0(r8)
clrlwi	  r0, r0, 31
stw	  r0, 0(r5)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 3,28
stw	  r0, 0(r6)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 5,23
stb	  r0, 0(r7)
blr

branch_0x8035D348:		# jumptable 8035D240 case 6
lwz	  r0, 0(r8)
extrwi	  r0, r0, 1,22
stw	  r0, 0(r5)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 3,19
stw	  r0, 0(r6)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 5,14
stb	  r0, 0(r7)
blr

branch_0x8035D370:		# jumptable 8035D240 case 7
lwz	  r0, 0(r8)
extrwi	  r0, r0, 1,13
stw	  r0, 0(r5)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 3,10
stw	  r0, 0(r6)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 5,5
stb	  r0, 0(r7)
blr

branch_0x8035D398:		# jumptable 8035D240 case 8
lwz	  r0, 0(r8)
extrwi	  r0, r0, 1,4
stw	  r0, 0(r5)
lwz	  r0, 0(r8)
extrwi	  r0, r0, 3,1
stw	  r0, 0(r6)
lwz	  r0, 0(r9)
clrlwi	  r0, r0, 27
stb	  r0, 0(r7)
blr

branch_0x8035D3C0:		# jumptable 8035D240 case 9
lwz	  r0, 0(r9)
extrwi	  r0, r0, 1,26
stw	  r0, 0(r5)
lwz	  r0, 0(r9)
extrwi	  r0, r0, 3,23
stw	  r0, 0(r6)
lwz	  r0, 0(r9)
extrwi	  r0, r0, 5,18
stb	  r0, 0(r7)
blr

branch_0x8035D3E8:		# jumptable 8035D240 case 10
lwz	  r0, 0(r9)
extrwi	  r0, r0, 1,17
stw	  r0, 0(r5)
lwz	  r0, 0(r9)
extrwi	  r0, r0, 3,14
stw	  r0, 0(r6)
lwz	  r0, 0(r9)
extrwi	  r0, r0, 5,9
stb	  r0, 0(r7)
blr

branch_0x8035D410:		# jumptable 8035D240 case 11
lwz	  r0, 0(r9)
extrwi	  r0, r0, 1,8
stw	  r0, 0(r5)
lwz	  r0, 0(r9)
extrwi	  r0, r0, 3,5
stw	  r0, 0(r6)
lwz	  r0, 0(r9)
srwi	  r0, r0, 27
stb	  r0, 0(r7)
blr

def_8035D240:		# jumptable 8035D240 default case
branch_0x8035d438:
    li      r0, 0x1
    stw     r0, 0x0(r5)
    li      r0, 0x0
    stw     r0, 0x0(r6)
    stb     r0, 0x0(r7)
    blr


.globl GXGetVtxAttrFmtv
GXGetVtxAttrFmtv: # 0x8035d450
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x9
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
branch_0x8035d474:
    stw     r31, 0x0(r30)
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x4
    addi    r6, r30, 0x8
    addi    r7, r30, 0xc
    bl      GXGetVtxAttrFmt
    addi    r31, r31, 0x1
    cmpwi   r31, 0x1a
    addi    r30, r30, 0x10
    blt+    branch_0x8035d474
    li      r0, 0xff
    stw     r0, 0x0(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl GXSetArray
GXSetArray: # 0x8035d4c4
    cmpwi   r3, 0x19
    bne-    branch_0x8035d4d0
    li      r3, 0xa
branch_0x8035d4d0:
    li      r0, 0x8
    subi    r6, r3, 0x9
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    ori     r0, r6, 0xa0
    clrlwi  r4, r4, 2
    stb     r0, -0x8000(r3)
    subic.  r0, r6, 0xc
    stw     r4, -0x8000(r3)
    blt-    branch_0x8035d510
    cmpwi   r0, 0x4
    bge-    branch_0x8035d510
    lwz     r3, -0x72f8(r13)
    slwi    r0, r0, 2
    add     r3, r3, r0
    stw     r4, 0x88(r3)
branch_0x8035d510:
    li      r0, 0x8
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    ori     r0, r6, 0xb0
    clrlwi  r4, r5, 24
    stb     r0, -0x8000(r3)
    subic.  r0, r6, 0xc
    stw     r4, -0x8000(r3)
    bltlr-    

    cmpwi   r0, 0x4
    bgelr-    

    lwz     r3, -0x72f8(r13)
    slwi    r0, r0, 2
    add     r3, r3, r0
    stw     r4, 0x98(r3)
    blr


.globl GXInvalidateVtxCache
GXInvalidateVtxCache: # 0x8035d550
    li      r0, 0x48
    lis     r3, 0xcc01
    stb     r0, -0x8000(r3)
    blr


.globl GXSetTexCoordGen2
GXSetTexCoordGen2: # 0x8035d560
    mflr    r0
    cmplwi  r5, 0x14
    stw     r0, 0x4(sp)
    li      r11, 0x0
    li      r12, 0x0
    stwu    sp, -0x8(sp)
    li      r10, 0x5
    bgt-    branch_0x8035d614
    lis     r9, 0x803f
    subi    r9, r9, 0x7020
    slwi    r0, r5, 2
    lwzx    r0, r9, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035d598:		# jumptable 8035D594 case 0
    li      r10, 0x0
    li      r12, 0x1
    b       branch_0x8035d614

branch_0x8035d5a4:		# jumptable 8035D594 case 1
    li	    r10, 1
    li	    r12, 1
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5b0:		# jumptable 8035D594 case 2
    li	    r10, 3
    li	    r12, 1
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5bc:		# jumptable 8035D594 case 3
    li	    r10, 4
    li	    r12, 1
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5c8:		# jumptable 8035D594 case 19
    li	    r10, 2
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5d0:		# jumptable 8035D594 case 20
    li	    r10, 2
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5d8:		# jumptable 8035D594 case 4
    li	    r10, 5
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5e0:		# jumptable 8035D594 case 5
    li	    r10, 6
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5e8:		# jumptable 8035D594 case 6
    li	    r10, 7
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5f0:		# jumptable 8035D594 case 7
    li	    r10, 8
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d5f8:		# jumptable 8035D594 case 8
    li	    r10, 9
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d600:		# jumptable 8035D594 case 9
    li	    r10, 0xA
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d608:		# jumptable 8035D594 case 10
    li	    r10, 0xB
    b	    def_8035D594	# jumptable 8035D594 default case

branch_0x8035d610:		# jumptable 8035D594 case 11
    li	    r10, 0xc

def_8035D594:		# jumptable 8035D594 default case
branch_0x8035d614:
    cmpwi   r4, 0x1
    beq-    branch_0x8035d63c
    bge-    branch_0x8035d62c
    cmpwi   r4, 0x0
    bge-    branch_0x8035d650
    b       branch_0x8035d6cc

branch_0x8035d62c:
    cmpwi   r4, 0xa
    beq-    branch_0x8035d6a4
    bge-    branch_0x8035d6cc
    b       branch_0x8035d668

branch_0x8035d63c:
    slwi    r0, r12, 2
    rlwinm  r4, r0, 0, 28, 19
    slwi    r0, r10, 7
    or      r11, r4, r0
    b       branch_0x8035d6cc

branch_0x8035d650:
    slwi    r0, r12, 2
    ori     r0, r0, 0x2
    rlwinm  r4, r0, 0, 28, 19
    slwi    r0, r10, 7
    or      r11, r4, r0
    b       branch_0x8035d6cc

branch_0x8035d668:
    slwi    r0, r12, 2
    rlwinm  r0, r0, 0, 28, 24
    ori     r0, r0, 0x10
    rlwinm  r9, r0, 0, 25, 19
    slwi    r0, r10, 7
    or      r9, r9, r0
    subi    r5, r5, 0xc
    subi    r0, r4, 0x2
    rlwinm  r9, r9, 0, 20, 16
    slwi    r4, r5, 12
    or      r4, r9, r4
    rlwinm  r4, r4, 0, 17, 13
    slwi    r0, r0, 15
    or      r11, r4, r0
    b       branch_0x8035d6cc

branch_0x8035d6a4:
    cmpwi   r5, 0x13
    slwi    r0, r12, 2
    bne-    branch_0x8035d6bc
    rlwinm  r0, r0, 0, 28, 24
    ori     r0, r0, 0x20
    b       branch_0x8035d6c4

branch_0x8035d6bc:
    rlwinm  r0, r0, 0, 28, 24
    ori     r0, r0, 0x30
branch_0x8035d6c4:
    rlwinm  r0, r0, 0, 25, 19
    ori     r11, r0, 0x100
branch_0x8035d6cc:
    li      r10, 0x10
    lis     r9, 0xcc01
    stb     r10, -0x8000(r9)
    addi    r0, r3, 0x1040
    subi    r4, r8, 0x40
    stw     r0, -0x8000(r9)
    rlwinm  r5, r4, 0, 24, 22
    clrlslwi  r4, r7, 24, 8
    stw     r11, -0x8000(r9)
    addi    r0, r3, 0x1050
    cmplwi  r3, 0x6
    stb     r10, -0x8000(r9)
    or      r4, r5, r4
    stw     r0, -0x8000(r9)
    stw     r4, -0x8000(r9)
    bgt-    branch_0x8035d7fc
    lis     r4, 0x803f
    subi    r4, r4, 0x703c
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8035d724:		# jumptable 8035D720 case 0
    lwz     r4, -0x72f8(r13)
    slwi    r0, r6, 6
    addi    r5, r4, 0x80
    lwz     r4, 0x80(r4)
    rlwinm  r4, r4, 0, 26, 19
    or      r0, r4, r0
    stw     r0, 0x0(r5)
    b       branch_0x8035d818


branch_0x8035d744:		# jumptable 8035D720 case 1
    lwz	    r4, -0x72F8(r13)
    slwi    r0, r6, 12
    addi    r5, r4, 0x80
    lwz	    r4, 0x80(r4)
    rlwinm  r4, r4, 0,20,13
    or	    r0, r4, r0
    stw	    r0, 0x0(r5)
    b	    branch_0x8035d818

branch_0x8035d764:		# jumptable 8035D720 case 2
    lwz	    r4, -0x72F8(r13)
    slwi    r0, r6, 18
    addi    r5, r4, 0x80
    lwz	    r4, 0x80(r4)
    rlwinm  r4, r4, 0,14,7
    or	    r0, r4, r0
    stw	    r0, 0x0(r5)
    b	    branch_0x8035d818

branch_0x8035d784:		# jumptable 8035D720 case 3
    lwz	    r4, -0x72F8(r13)
    slwi    r0, r6, 24
    addi    r5, r4, 0x80
    lwz	    r4, 0x80(r4)
    rlwinm  r4, r4, 0,8,1
    or	    r0, r4, r0
    stw	    r0, 0x0(r5)
    b	    branch_0x8035d818

branch_0x8035d7a4:		# jumptable 8035D720 case 4
    lwz	    r4, -0x72F8(r13)
    lwzu    r0, 0x84(r4)
    clrrwi  r0, r0, 6
    or	    r0, r0, r6
    stw	    r0, 0(r4)
    b	    branch_0x8035d818

branch_0x8035d7bc:		# jumptable 8035D720 case 5
    lwz	    r4, -0x72F8(r13)
    slwi    r0, r6, 6
    addi    r5, r4, 0x84
    lwz	    r4, 0x84(r4)
    rlwinm  r4, r4, 0,26,19
    or	    r0, r4, r0
    stw	    r0, 0(r5)
    b	    branch_0x8035d818

branch_0x8035d7dc:		# jumptable 8035D720 case 6
    lwz	    r4, -0x72F8(r13)
    slwi    r0, r6, 12
    addi    r5, r4, 0x84
    lwz	    r4, 0x84(r4)
    rlwinm  r4, r4, 0,20,13
    or	    r0, r4, r0
    stw	    r0, 0(r5)
    b	    branch_0x8035d818

def_8035D720:		# jumptable 8035D720 default case
branch_0x8035d7fc:
    lwz     r4, -0x72f8(r13)
    slwi    r0, r6, 18
    addi    r5, r4, 0x84
    lwz     r4, 0x84(r4)
    rlwinm  r4, r4, 0, 14, 7
    or      r0, r4, r0
    stw     r0, 0x0(r5)
branch_0x8035d818:
    addi    r3, r3, 0x1
    bl      __GXSetMatrixIndex
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl GXSetNumTexGens
GXSetNumTexGens: # 0x8035d830
    lwz     r4, -0x72f8(r13)
    clrlwi  r7, r3, 24
    li      r3, 0x10
    addi    r6, r4, 0x204
    lwz     r5, 0x204(r4)
    lis     r4, 0xcc01
    li      r0, 0x103f
    clrrwi  r5, r5, 4
    or      r5, r5, r7
    stw     r5, 0x0(r6)
    stb     r3, -0x8000(r4)
    lwz     r3, -0x72f8(r13)
    stw     r0, -0x8000(r4)
    stw     r7, -0x8000(r4)
    lwz     r0, 0x4f4(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x4f4(r3)
    blr

