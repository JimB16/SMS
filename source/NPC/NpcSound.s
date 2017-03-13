
.globl getBasNameTable__8TBaseNPCCFv
getBasNameTable__8TBaseNPCCFv: # 0x80212bb8
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    subi    r30, r4, 0x6a88
    stw     r29, 0x14(sp)
    li      r29, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      isChild__8TBaseNPCCFv
    addi    r31, r3, 0x0
    addi    r3, r28, 0x0
    bl      isNormalMonteM__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80212c14
    clrlwi. r0, r31, 24
    beq-    branch_0x80212c0c
    addi    r29, r30, 0x94
    b       branch_0x80212d1c

branch_0x80212c0c:
    addi    r29, r30, 0x38
    b       branch_0x80212d1c

branch_0x80212c14:
    mr      r3, r28
    bl      isNormalMonteW__8TBaseNPCCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80212c3c
    clrlwi. r0, r31, 24
    beq-    branch_0x80212c34
    addi    r29, r30, 0x1c0
    b       branch_0x80212d1c

branch_0x80212c34:
    addi    r29, r30, 0x160
    b       branch_0x80212d1c

branch_0x80212c3c:
    lwz     r3, 0x4c(r28)
    addis   r4, r3, 0xfc00
    subi    r4, r4, 0x6
    cmplwi  r4, 0x17
    bgt-    branch_0x80212d1c
    lis     r3, 0x803e
    subi    r3, r3, 0x63a8
    slwi    r4, r4, 2
    lwzx    r0, r3, r4
    mtctr   r0
    bctr			# switch jump

branch_0x80212C68:		# jumptable 80212C64 case 0
    addi    r29, r30, 0xf0
    b       branch_0x80212d1c

branch_0x80212C70:		# jumptable 80212C64 case 1
addi	  r29, r30, 0x128
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212C78:		# jumptable 80212C64 case 2
addi	  r29, r13, -0x7748
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212C80:		# jumptable 80212C64 case 3
addi	  r29, r30, 0x140
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212C88:		# jumptable 80212C64 case 7
addi	  r29, r30, 0x220
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212C90:		# jumptable 80212C64 case 8
clrlwi.	  r0, r31, 24
beq	  branch_0x80212CA0
addi	  r29, r30, 0x29C
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CA0:
addi	  r29, r30, 0x248
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CA8:		# jumptable 80212C64 case 9
addi	  r29, r30, 0x2F0
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CB0:		# jumptable 80212C64 case 10
addi	  r29, r30, 0x318
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CB8:		# jumptable 80212C64 case 11
addi	  r29, r30, 0x348
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CC0:		# jumptable 80212C64 case 12
addi	  r29, r13, -0x7740
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CC8:		# jumptable 80212C64 case 13
clrlwi.	  r0, r31, 24
beq	  branch_0x80212CD8
addi	  r29, r30, 0x3C0
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CD8:
addi	  r29, r30, 0x370
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CE0:		# jumptable 80212C64 case 14
addi	  r29, r30, 0x410
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CE8:		# jumptable 80212C64 case 15
addi	  r29, r30, 0x430
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CF0:		# jumptable 80212C64 case 16
addi	  r29, r30, 0x460
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212CF8:		# jumptable 80212C64 case 17
addi	  r29, r30, 0x528
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212D00:		# jumptable 80212C64 case 18
addi	  r29, r30, 0x5B8
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212D08:		# jumptable 80212C64 case 19
addi	  r29, r30, 0x670
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212D10:		# jumptable 80212C64 case 20
addi	  r29, r30, 0x690
b	  def_80212C64	# jumptable 80212C64 default case

branch_0x80212D18:		# jumptable 80212C64 case 21
addi	  r29, r30, 0x6B8

def_80212C64:		# jumptable 80212C64 default case
branch_0x80212d1c:
    lwz     r0, 0x24(sp)
    mr      r3, r29
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr

