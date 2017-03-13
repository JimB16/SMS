
.globl strtol
strtol: # 0x8033b5a4
    mflr    r0
    lis     r6, 0x8000
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    subi    r4, r6, 0x1
    stw     r30, 0x28(sp)
    mr      r30, r3
    lis     r3, 0x8034
    stw     r30, 0x14(sp)
    addi    r6, sp, 0x14
    addi    r7, sp, 0x24
    stw     r0, 0x18(sp)
    subi    r0, r3, 0x4e38
    addi    r3, r5, 0x0
    mr      r5, r0
    addi    r8, sp, 0x20
    addi    r9, sp, 0x1c
    bl      __strtoul
    cmplwi  r31, 0x0
    beq-    branch_0x8033b60c
    lwz     r0, 0x24(sp)
    add     r0, r30, r0
    stw     r0, 0x0(r31)
branch_0x8033b60c:
    lwz     r0, 0x1c(sp)
    cmpwi   r0, 0x0
    bne-    branch_0x8033b648
    lwz     r5, 0x20(sp)
    cmpwi   r5, 0x0
    bne-    branch_0x8033b634
    lis     r4, 0x8000
    subi    r0, r4, 0x1
    cmplw   r3, r0
    bgt-    branch_0x8033b648
branch_0x8033b634:
    cmpwi   r5, 0x0
    beq-    branch_0x8033b670
    lis     r0, 0x8000
    cmplw   r3, r0
    ble-    branch_0x8033b670
branch_0x8033b648:
    lwz     r0, 0x20(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x8033b65c
    lis     r3, 0x8000
    b       branch_0x8033b664

branch_0x8033b65c:
    lis     r3, 0x8000
    subi    r3, r3, 0x1
branch_0x8033b664:
    li      r0, 0x22
    stw     r0, -0x5a88(r13)
    b       branch_0x8033b67c

branch_0x8033b670:
    cmpwi   r5, 0x0
    beq-    branch_0x8033b67c
    neg     r3, r3
branch_0x8033b67c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl strtoul
strtoul: # 0x8033b694
    mflr    r0
    lis     r6, 0x8000
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r4, 0x0
    subi    r4, r6, 0x1
    stw     r30, 0x28(sp)
    mr      r30, r3
    lis     r3, 0x8034
    stw     r30, 0x14(sp)
    addi    r6, sp, 0x14
    addi    r7, sp, 0x24
    stw     r0, 0x18(sp)
    subi    r0, r3, 0x4e38
    addi    r3, r5, 0x0
    mr      r5, r0
    addi    r8, sp, 0x20
    addi    r9, sp, 0x1c
    bl      __strtoul
    cmplwi  r31, 0x0
    beq-    branch_0x8033b6fc
    lwz     r0, 0x24(sp)
    add     r0, r30, r0
    stw     r0, 0x0(r31)
branch_0x8033b6fc:
    lwz     r0, 0x1c(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x8033b718
    li      r0, 0x22
    stw     r0, -0x5a88(r13)
    li      r3, -0x1
    b       branch_0x8033b728

branch_0x8033b718:
    lwz     r0, 0x20(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x8033b728
    neg     r3, r3
branch_0x8033b728:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl __strtoul
__strtoul: # 0x8033b740
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x60(sp)
    stmw    r18, 0x28(sp)
    mr.     r28, r3
    addi    r23, r9, 0x0
    mr      r21, r8
    addi    r22, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r19, r7, 0x0
    li      r24, 0x1
    li      r31, 0x0
    li      r27, 0x0
    li      r26, 0x0
    stw     r0, 0x0(r9)
    stw     r0, 0x0(r8)
    blt-    branch_0x8033b7a4
    cmpwi   r28, 0x1
    beq-    branch_0x8033b7a4
    cmpwi   r28, 0x24
    bgt-    branch_0x8033b7a4
    cmpwi   r22, 0x1
    bge-    branch_0x8033b7ac
branch_0x8033b7a4:
    li      r24, 0x40
    b       branch_0x8033b7cc

branch_0x8033b7ac:
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    li      r31, 0x1
    li      r4, 0x0
    li      r5, 0x0
    blrl
    mr      r18, r3
branch_0x8033b7cc:
    cmpwi   r28, 0x0
    beq-    branch_0x8033b7dc
    li      r0, -0x1
    divwu   r26, r0, r28
branch_0x8033b7dc:
    lis     r3, 0x803b
    lis     r4, 0x803e
    subi    r25, r3, 0x5678
    addi    r20, r4, 0x6778
    b       branch_0x8033ba24

branch_0x8033b7f0:
    cmplwi  r24, 0x10
    bgt-    branch_0x8033ba24
    slwi    r0, r24, 2
    lwzx    r0, r20, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8033b808:		# jumptable 8033B804 case 1
    clrlwi  r0, r18, 24
    add     r3, r25, r0
    lbz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 29, 30
    beq-    branch_0x8033b840
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    addi    r31, r31, 0x1
    blrl
    mr      r18, r3
    b       branch_0x8033ba24

branch_0x8033b840:
    cmpwi   r18, 0x2b
    bne-    branch_0x8033b86c
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    addi    r31, r31, 0x1
    blrl
    mr      r18, r3
    b       branch_0x8033b89c

branch_0x8033b86c:
    cmpwi   r18, 0x2d
    bne-    branch_0x8033b89c
    addi    r12, r29, 0x0
    mtlr    r12
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    addi    r31, r31, 0x1
    blrl
    li      r0, 0x1
    stw     r0, 0x0(r21)
    mr      r18, r3
branch_0x8033b89c:
    li      r24, 0x2
    b       branch_0x8033ba24

branch_0x8033B8A4:		# jumptable 8033B804 case 2
cmpwi	  r28, 0
beq	  branch_0x8033B8B4
cmpwi	  r28, 0x10
bne	  branch_0x8033B8E4

branch_0x8033B8B4:
cmpwi	  r18, 0x30
bne	  branch_0x8033B8E4
addi	  r12, r29, 0
mtlr	  r12
addi	  r3, r30, 0
li	  r24, 4
li	  r4, 0
li	  r5, 0
addi	  r31, r31, 1
blrl
mr	  r18, r3
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B8E4:
li	  r24, 8
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B8EC:		# jumptable 8033B804 case 4
cmpwi	  r18, 0x58
beq	  branch_0x8033B8FC
cmpwi	  r18, 0x78
bne	  branch_0x8033B928

branch_0x8033B8FC:
addi	  r12, r29, 0
mtlr	  r12
addi	  r3, r30, 0
li	  r28, 0x10
li	  r24, 8
li	  r4, 0
li	  r5, 0
addi	  r31, r31, 1
blrl
mr	  r18, r3
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B928:
cmpwi	  r28, 0
bne	  branch_0x8033B934
li	  r28, 8

branch_0x8033B934:
li	  r24, 0x10
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B93C:		# jumptable 8033B804 cases 8,16
cmpwi	  r28, 0
bne	  branch_0x8033B948
li	  r28, 0xA

branch_0x8033B948:
cmplwi	  r26, 0
bne	  branch_0x8033B958
li	  r0, -1
divwu	  r26, r0, r28

branch_0x8033B958:
clrlwi	  r0, r18, 24
add	  r3, r25, r0
lbz	  r3, 0(r3)
rlwinm.	  r0, r3, 0,27,27
beq	  branch_0x8033B994
addi	  r18, r18, -0x30
cmpw	  r18, r28
blt	  branch_0x8033B9D4
cmpwi	  r24, 0x10
bne	  branch_0x8033B988
li	  r24, 0x20
b	  branch_0x8033B98C

branch_0x8033B988:
li	  r24, 0x40

branch_0x8033B98C:
addi	  r18, r18, 0x30
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B994:
rlwinm.	  r0, r3, 0,24,25
beq	  branch_0x8033B9B0
mr	  r3, r18
bl	  toupper
addi	  r0, r3, -0x37
cmpw	  r0, r28
blt	  branch_0x8033B9C8

branch_0x8033B9B0:
cmpwi	  r24, 0x10
bne	  branch_0x8033B9C0
li	  r24, 0x20
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B9C0:
li	  r24, 0x40
b	  def_8033B804	# jumptable 8033B804 default case

branch_0x8033B9C8:
mr	  r3, r18
bl	  toupper
addi	  r18, r3, -0x37

branch_0x8033B9D4:
cmplw	  r27, r26
ble	  branch_0x8033B9E4
li	  r0, 1
stw	  r0, 0(r23)

branch_0x8033B9E4:
mullw	  r27, r27, r28
subfic	  r0, r27, -1
cmplw	  r18, r0
ble	  branch_0x8033B9FC
li	  r0, 1
stw	  r0, 0(r23)

branch_0x8033B9FC:
addi	  r12, r29, 0
mtlr	  r12
addi	  r3, r30, 0
add	  r27, r27, r18
li	  r24, 0x10
li	  r4, 0
li	  r5, 0
addi	  r31, r31, 1
blrl
mr	  r18, r3

def_8033B804:		# jumptable 8033B804 default case
branch_0x8033ba24:
    cmpw    r31, r22
    bgt-    branch_0x8033ba3c
    cmpwi   r18, -0x1
    beq-    branch_0x8033ba3c
    rlwinm. r0, r24, 0, 25, 26
    beq+    branch_0x8033b7f0
branch_0x8033ba3c:
    andi.   r0, r24, 0x34
    bne-    branch_0x8033ba50
    li      r27, 0x0
    li      r31, 0x0
    b       branch_0x8033ba54

branch_0x8033ba50:
    subi    r31, r31, 0x1
branch_0x8033ba54:
    mr      r12, r29
    stw     r31, 0x0(r19)
    mtlr    r12
    addi    r3, r30, 0x0
    addi    r4, r18, 0x0
    li      r5, 0x1
    blrl
    mr      r3, r27
    lmw     r18, 0x28(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr

