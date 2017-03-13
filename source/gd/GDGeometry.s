
.globl GDSetVtxDescv
GDSetVtxDescv: # 0x8036486c
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x6b38
    stwu    sp, -0x58(sp)
    stmw    r15, 0x14(sp)
    li      r31, 0x0
    li      r30, 0x0
    li      r29, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x1
    li      r25, 0x0
    li      r24, 0x0
    li      r23, 0x0
    li      r22, 0x0
    li      r21, 0x0
    li      r20, 0x0
    li      r19, 0x0
    li      r18, 0x0
    li      r17, 0x0
    li      r16, 0x0
    li      r15, 0x0
    b       branch_0x80364ad8

branch_0x803648cc:
    cmplwi  r0, 0x19
    bgt-    branch_0x80364ad4
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr

branch_0x803648e4:
    lwz     r28, 0x4(r3)
    b       branch_0x80364ad4

branch_0x803648ec:		# jumptable 803648E0 case 1
    lwz	    r0, 0x4(r3)
    clrrwi  r5, r27, 1
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x803648fc:		# jumptable 803648E0 case 2
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0,31,29
    slwi    r0, r0, 1
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364910:		# jumptable 803648E0 case 3
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0,30,28
    slwi    r0, r0, 2
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364924:		# jumptable 803648E0 case 4
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0, 29, 27
    slwi    r0, r0, 3
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364938:		# jumptable 803648E0 case 5
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0, 28, 26
    slwi    r0, r0, 4
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x8036494c:		# jumptable 803648E0 case 6
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0,27,25
    slwi    r0, r0, 5
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364960:		# jumptable 803648E0 case 7
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0,26,24
    slwi    r0, r0, 6
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364974:		# jumptable 803648E0 case 8
    lwz	    r0, 0x4(r3)
    rlwinm  r5, r27, 0, 25, 23
    slwi    r0, r0, 0x7
    or	    r27, r5, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364988:		# jumptable 803648E0 case 9
    lwz	    r26, 0x4(r3)
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364990:		# jumptable 803648E0 case 10
    lwz	    r0, 0x4(r3)
    cmpwi   r0, 0x0
    beq	    def_803648E0	# jumptable 803648E0 default case
    mr	    r25, r0
    li	    r31, 0x1
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x803649a8:		# jumptable 803648E0 case 25
    lwz	    r0, 0x4(r3)
    cmpwi   r0, 0x0
    beq	    def_803648E0	# jumptable 803648E0 default case
    mr	    r25, r0
    li	    r31, 0x2
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x803649c0:		# jumptable 803648E0 case 11
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r24, r6, 0x0
    add	    r30, r30, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x803649dc:		# jumptable 803648E0 case 12
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r23, r6, 0x0
    add	    r30, r30, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x803649f8:		# jumptable 803648E0 case 13
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r22, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364a14:		# jumptable 803648E0 case 14
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r21, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364a30:		# jumptable 803648E0 case 15
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r20, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364a4c:		# jumptable 803648E0 case 16
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r19, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364a68:		# jumptable 803648E0 case 17
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r18, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364a84:		# jumptable 803648E0 case 18
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r17, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364aa0:		# jumptable 803648E0 case 19
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r16, r6, 0x0
    add	    r29, r29, r0
    b	    def_803648E0	# jumptable 803648E0 default case

branch_0x80364abc:		# jumptable 803648E0 case 20
    lwz	    r6, 0x4(r3)
    neg	    r5, r6
    addic   r0, r5, -0x1
    subfe   r0, r0, r5
    addi    r15, r6, 0x0
    add	    r29, r29, r0

def_803648E0:		# jumptable 803648E0 default case
branch_0x80364ad4:
    addi    r3, r3, 0x8
branch_0x80364ad8:
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0xff
    bne+    branch_0x803648cc
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80364b00
    bl      GDOverflowed
branch_0x80364b00:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80364b34
    bl      GDOverflowed
branch_0x80364b34:
    lwz     r4, -0x5778(r13)
    li      r5, 0x50
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80364b68
    bl      GDOverflowed
branch_0x80364b68:
    lwz     r4, -0x5778(r13)
    slwi    r0, r27, 1
    slwi    r5, r26, 9
    lwz     r3, 0x8(r4)
    or      r0, r28, r0
    or      r5, r5, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r6, r25, 11
    slwi    r7, r24, 13
    or      r0, r6, r5
    slwi    r4, r23, 15
    or      r0, r7, r0
    or      r7, r4, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
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
    stb     r7, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80364c08
    bl      GDOverflowed
branch_0x80364c08:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80364c3c
    bl      GDOverflowed
branch_0x80364c3c:
    lwz     r4, -0x5778(r13)
    li      r5, 0x60
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80364c70
    bl      GDOverflowed
branch_0x80364c70:
    lwz     r4, -0x5778(r13)
    slwi    r0, r21, 2
    slwi    r5, r20, 4
    or      r0, r22, r0
    lwz     r3, 0x8(r4)
    slwi    r6, r19, 6
    or      r0, r5, r0
    or      r5, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r7, r18, 8
    or      r0, r7, r5
    slwi    r6, r17, 10
    slwi    r4, r16, 12
    or      r0, r6, r0
    slwi    r5, r15, 14
    or      r0, r4, r0
    or      r7, r5, r0
    srwi    r0, r7, 24
    stb     r0, 0x0(r3)
    extrwi  r6, r7, 8, 8
    extrwi  r5, r7, 8, 16
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
    stb     r7, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80364d20
    bl      GDOverflowed
branch_0x80364d20:
    lwz     r4, -0x5778(r13)
    li      r5, 0x10
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80364d54
    bl      GDOverflowed
branch_0x80364d54:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80364d9c
    bl      GDOverflowed
branch_0x80364d9c:
    lwz     r4, -0x5778(r13)
    li      r6, 0x10
    li      r5, 0x8
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
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80364de8
    bl      GDOverflowed
branch_0x80364de8:
    lwz     r4, -0x5778(r13)
    slwi    r0, r31, 2
    slwi    r5, r29, 4
    lwz     r3, 0x8(r4)
    or      r0, r30, r0
    or      r7, r5, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    srwi    r0, r7, 24
    extrwi  r6, r7, 8, 8
    stb     r0, 0x0(r3)
    extrwi  r5, r7, 8, 16
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
    stb     r7, 0x0(r3)
    lmw     r15, 0x14(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl GDSetVtxAttrFmtv
GDSetVtxAttrFmtv: # 0x80364e68

.set var_90, -0x90
.set var_8C, -0x8C
.set var_88, -0x88
.set var_84, -0x84
.set var_80, -0x80
.set var_7C, -0x7C
.set var_78, -0x78
.set var_74, -0x74
.set var_70, -0x70
.set var_6C, -0x6C
.set var_68, -0x68
.set var_64, -0x64
.set var_60, -0x60
.set var_5C, -0x5C
.set var_58, -0x58
.set var_54, -0x54
.set var_50, -0x50
.set var_48, -0x48
.set arg_4,  4

    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0xa0(sp)
    stmw    r14, 0x58(sp)
    li      r30, 0x0
    li      r31, 0x0
    stw     r0, 0x50(sp)
    li      r0, 0x4
    li      r24, 0x0
    stw     r0, 0x4c(sp)
    li      r0, 0x0
    li      r23, 0x1
    stw     r0, 0x48(sp)
    li      r0, 0x4
    li      r25, 0x4
    stw     r0, 0x44(sp)
    li      r0, 0x1
    li      r20, 0x0
    stw     r0, 0x40(sp)
    li      r0, 0x5
    li      r21, 0x1
    stw     r0, 0x3c(sp)
    li      r0, 0x1
    li      r22, 0x4
    stw     r0, 0x38(sp)
    li      r0, 0x5
    li      r14, 0x0
    stw     r0, 0x34(sp)
    li      r0, 0x1
    li      r15, 0x1
    stw     r0, 0x30(sp)
    li      r0, 0x4
    li      r16, 0x4
    stw     r0, 0x2c(sp)
    li      r0, 0x0
    li      r17, 0x0
    stw     r0, 0x28(sp)
    li      r0, 0x1
    li      r18, 0x1
    stw     r0, 0x24(sp)
    li      r0, 0x4
    li      r19, 0x4
    stw     r0, 0x20(sp)
    li      r0, 0x0
    li      r26, 0x0
    stw     r0, 0x1c(sp)
    li      r0, 0x1
    li      r27, 0x1
    stw     r0, 0x18(sp)
    li      r0, 0x4
    li      r28, 0x4
    stw     r3, 0x10(sp)
    subi    r3, r5, 0x6ad0
    li      r29, 0x0
    stw     r0, 0x14(sp)
    b       branch_0x8036507c

branch_0x80364f50:
    subi    r0, r5, 0x9
    cmplwi  r0, 0x10
    bgt-    branch_0x80365078
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr

branch_0x80364f6c:
    lwz     r0, 0x4(r4)
    stw     r0, 0x50(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    lbz     r0, 0xc(r4)
    stw     r0, 0x48(sp)
    b       branch_0x80365078

branch_0x80364f88:		# jumptable 80364F68 cases 1,16
    lwz	    r5, 0x4(r4)
    lwz	    r0, 0x8(r4)
    cmpwi   r5, 0x2
    stw	    r0, 0xA0+var_5C(r1)
    bne	    branch_0x80364fa8
    li	    r30, 0x1
    li	    r31, 0x1
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x80364fa8:
    addi    r30, r5, 0x0
    li	    r31, 0x0
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x80364fb4:		# jumptable 80364F68 case 2
    lwz	    r0, 0x4(r4)
    stw	    r0, 0xA0+var_60(r1)
    lwz	    r0, 0x8(r4)
    stw	    r0, 0xA0+var_64(r1)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x80364fc8:		# jumptable 80364F68 case 3
    lwz	    r0, 0x4(r4)
    stw	    r0, 0xA0+var_68(r1)
    lwz	    r0, 0x8(r4)
    stw	    r0, 0xA0+var_6C(r1)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x80364fdc:		# jumptable 80364F68 case 4
    lwz	    r0, 0x4(r4)
    stw	    r0, 0xA0+var_70(r1)
    lwz	    r0, 0x8(r4)
    stw	    r0, 0xA0+var_74(r1)
    lbz	    r0, 0xC(r4)
    stw	    r0, 0xA0+var_78(r1)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x80364ff8:		# jumptable 80364F68 case 5
    lwz	    r0, 0x4(r4)
    stw	    r0, 0xA0+var_7C(r1)
    lwz	    r0, 0x8(r4)
    stw	    r0, 0xA0+var_80(r1)
    lbz	    r0, 0xC(r4)
    stw	    r0, 0xA0+var_84(r1)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x80365014:		# jumptable 80364F68 case 6
    lwz	    r0, 0x4(r4)
    lbz	    r24, 0xC(r4)
    stw	    r0, 0xA0+var_88(r1)
    lwz	    r0, 0x8(r4)
    stw	    r0, 0xA0+var_8C(r1)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x8036502C:		# jumptable 80364F68 case 7
    lwz	    r23, 0x4(r4)
    lwz	    r25, 0x8(r4)
    lbz	    r20, 0xC(r4)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x8036503C:		# jumptable 80364F68 case 8
    lwz	    r21, 0x4(r4)
    lwz	    r22, 0x8(r4)
    lbz	    r14, 0xC(r4)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x8036504C:		# jumptable 80364F68 case 9
    lwz	    r15, 0x4(r4)
    lwz	    r16, 0x8(r4)
    lbz	    r17, 0xC(r4)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x8036505C:		# jumptable 80364F68 case 10
    lwz	    r18, 0x4(r4)
    lwz	    r19, 0x8(r4)
    lbz	    r26, 0xC(r4)
    b	    branch_0x80365078	# jumptable 80364F68 default case

branch_0x8036506C:		# jumptable 80364F68 case 11
    lwz	    r27, 0x4(r4)
    lwz	    r28, 0x8(r4)
    lbz	    r29, 0xC(r4)

branch_0x80365078:		# jumptable 80364F68 default case
    addi    r4, r4, 0x10
branch_0x8036507c:
    lwz     r5, 0x0(r4)
    cmpwi   r5, 0xff
    bne+    branch_0x80364f50
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803650a4
    bl      GDOverflowed
branch_0x803650a4:
    lwz     r4, -0x5778(r13)
    li      r0, 0x8
    lwz     r3, 0x8(r4)
    addi    r5, r3, 0x1
    stw     r5, 0x8(r4)
    stb     r0, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803650d8
    bl      GDOverflowed
branch_0x803650d8:
    lwz     r3, 0x10(sp)
    lwz     r4, -0x5778(r13)
    addi    r0, r3, 0x70
    lwz     r3, 0x8(r4)
    addi    r5, r3, 0x1
    stw     r5, 0x8(r4)
    stb     r0, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365110
    bl      GDOverflowed
branch_0x80365110:
    lwz     r0, 0x4c(sp)
    slwi    r5, r30, 9
    lwz     r7, -0x5778(r13)
    slwi    r3, r0, 1
    lwz     r0, 0x48(sp)
    slwi    r4, r0, 4
    lwz     r0, 0x50(sp)
    or      r0, r0, r3
    lwz     r3, 0x8(r7)
    or      r4, r4, r0
    lwz     r0, 0x44(sp)
    or      r5, r5, r4
    lwz     r4, 0x40(sp)
    slwi    r0, r0, 10
    or      r5, r0, r5
    lwz     r0, 0x3c(sp)
    slwi    r4, r4, 13
    or      r4, r4, r5
    lwz     r5, 0x38(sp)
    slwi    r0, r0, 14
    or      r4, r0, r4
    lwz     r0, 0x34(sp)
    slwi    r5, r5, 17
    or      r5, r5, r4
    lwz     r4, 0x30(sp)
    slwi    r0, r0, 18
    or      r0, r0, r5
    lwz     r5, 0x2c(sp)
    slwi    r4, r4, 21
    or      r4, r4, r0
    lwz     r0, 0x28(sp)
    slwi    r5, r5, 22
    addi    r6, r3, 0x1
    slwi    r0, r0, 25
    stw     r6, 0x8(r7)
    or      r4, r5, r4
    or      r0, r0, r4
    slwi    r4, r31, 31
    oris    r0, r0, 0x4000
    or      r6, r4, r0
    srwi    r0, r6, 24
    stb     r0, 0x0(r3)
    extrwi  r5, r6, 8, 8
    extrwi  r7, r6, 8, 16
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
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
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365218
    bl      GDOverflowed
branch_0x80365218:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x8036524c
    bl      GDOverflowed
branch_0x8036524c:
    lwz     r3, 0x10(sp)
    lwz     r4, -0x5778(r13)
    addi    r5, r3, 0x80
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365284
    bl      GDOverflowed
branch_0x80365284:
    lwz     r0, 0x20(sp)
    slwi    r7, r25, 19
    lwz     r6, 0x18(sp)
    slwi    r3, r0, 1
    lwz     r0, 0x1c(sp)
    lwz     r4, -0x5778(r13)
    slwi    r6, r6, 9
    slwi    r5, r0, 4
    lwz     r0, 0x24(sp)
    or      r0, r0, r3
    lwz     r3, 0x8(r4)
    or      r5, r5, r0
    lwz     r0, 0x14(sp)
    or      r5, r6, r5
    slwi    r0, r0, 10
    or      r0, r0, r5
    slwi    r6, r24, 13
    or      r6, r6, r0
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    slwi    r5, r23, 18
    or      r0, r5, r6
    slwi    r4, r20, 22
    or      r0, r7, r0
    or      r0, r4, r0
    slwi    r5, r21, 27
    slwi    r4, r22, 28
    or      r0, r5, r0
    or      r0, r4, r0
    oris    r0, r0, 0x8000
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
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365364
    bl      GDOverflowed
branch_0x80365364:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365398
    bl      GDOverflowed
branch_0x80365398:
    lwz     r4, 0x10(sp)
    lwz     r3, -0x5778(r13)
    addi    r5, r4, 0x90
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r3)
    stb     r5, 0x0(r4)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803653d0
    bl      GDOverflowed
branch_0x803653d0:
    slwi    r0, r15, 5
    lwz     r3, -0x5778(r13)
    slwi    r4, r16, 6
    or      r0, r14, r0
    lwz     r5, 0x8(r3)
    or      r0, r4, r0
    slwi    r6, r17, 9
    or      r0, r6, r0
    slwi    r4, r18, 14
    or      r4, r4, r0
    addi    r0, r5, 0x1
    stw     r0, 0x8(r3)
    slwi    r6, r19, 15
    or      r0, r6, r4
    slwi    r7, r26, 18
    slwi    r3, r27, 23
    or      r0, r7, r0
    or      r0, r3, r0
    slwi    r4, r28, 24
    slwi    r3, r29, 27
    or      r0, r4, r0
    or      r0, r3, r0
    srwi    r3, r0, 24
    stb     r3, 0x0(r5)
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


.globl GDSetArray
GDSetArray: # 0x80365488
    mflr    r0
    cmpwi   r3, 0x19
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    bne-    branch_0x803654b8
    li      r31, 0x1
    b       branch_0x803654bc

branch_0x803654b8:
    subi    r31, r3, 0x9
branch_0x803654bc:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803654d8
    bl      GDOverflowed
branch_0x803654d8:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x8036550c
    bl      GDOverflowed
branch_0x8036550c:
    lwz     r4, -0x5778(r13)
    addi    r5, r31, 0xa0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365540
    bl      GDOverflowed
branch_0x80365540:
    lwz     r4, -0x5778(r13)
    addis   r8, r29, 0x8000
    srwi    r7, r8, 24
    lwz     r3, 0x8(r4)
    extrwi  r6, r8, 8, 8
    extrwi  r5, r8, 8, 16
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
    stb     r8, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803655bc
    bl      GDOverflowed
branch_0x803655bc:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803655f0
    bl      GDOverflowed
branch_0x803655f0:
    lwz     r4, -0x5778(r13)
    addi    r5, r31, 0xb0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365624
    bl      GDOverflowed
branch_0x80365624:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl GDSetArrayRaw
GDSetArrayRaw: # 0x80365694
    mflr    r0
    cmpwi   r3, 0x19
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    bne-    branch_0x803656c4
    li      r31, 0x1
    b       branch_0x803656c8

branch_0x803656c4:
    subi    r31, r3, 0x9
branch_0x803656c8:
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803656e4
    bl      GDOverflowed
branch_0x803656e4:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365718
    bl      GDOverflowed
branch_0x80365718:
    lwz     r4, -0x5778(r13)
    addi    r5, r31, 0xa0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x8036574c
    bl      GDOverflowed
branch_0x8036574c:
    lwz     r4, -0x5778(r13)
    srwi    r7, r29, 24
    extrwi  r6, r29, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r29, 8, 16
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
    stb     r29, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803657c4
    bl      GDOverflowed
branch_0x803657c4:
    lwz     r4, -0x5778(r13)
    li      r5, 0x8
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803657f8
    bl      GDOverflowed
branch_0x803657f8:
    lwz     r4, -0x5778(r13)
    addi    r5, r31, 0xb0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x8036582c
    bl      GDOverflowed
branch_0x8036582c:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl GDSetCullMode
GDSetCullMode: # 0x8036589c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x803658cc
    bl      GDOverflowed
branch_0x803658cc:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365900
    bl      GDOverflowed
branch_0x80365900:
    lwz     r5, -0x5778(r13)
    li      r8, 0xfe
    li      r7, 0x0
    lwz     r4, 0x8(r5)
    li      r6, 0xc0
    subi    r3, r13, 0x72d0
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
    stb     r7, 0x0(r4)
    lwz     r5, -0x5778(r13)
    lbzx    r4, r3, r31
    lwz     r3, 0x8(r5)
    lwz     r0, 0xc(r5)
    slwi    r31, r4, 14
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365984
    bl      GDOverflowed
branch_0x80365984:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x803659b8
    bl      GDOverflowed
branch_0x803659b8:
    lwz     r4, -0x5778(r13)
    srwi    r7, r31, 24
    extrwi  r6, r31, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r31, 8, 16
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
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl GDSetGenMode2
GDSetGenMode2: # 0x80365a28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r27, r4, 0x0
    mr      r30, r5
    addi    r28, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r8, -0x5778(r13)
    lwz     r3, 0x8(r8)
    lwz     r0, 0xc(r8)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365a68
    bl      GDOverflowed
branch_0x80365a68:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365a9c
    bl      GDOverflowed
branch_0x80365a9c:
    lwz     r5, -0x5778(r13)
    clrlwi  r3, r30, 24
    subi    r3, r3, 0x1
    lwz     r4, 0x8(r5)
    li      r10, 0x7
    clrlwi  r29, r29, 24
    addi    r0, r4, 0x1
    stw     r0, 0x8(r5)
    li      r0, 0xfe
    slwi    r3, r3, 10
    stb     r0, 0x0(r4)
    clrlslwi  r0, r27, 24, 4
    or      r0, r29, r0
    lwz     r7, -0x5778(r13)
    li      r9, 0xfc
    li      r8, 0x3f
    lwz     r6, 0x8(r7)
    subi    r5, r13, 0x72cc
    clrlwi  r30, r27, 24
    addi    r4, r6, 0x1
    stw     r4, 0x8(r7)
    or      r4, r3, r0
    stb     r10, 0x0(r6)
    clrlslwi  r6, r28, 24, 16
    lwz     r7, -0x5778(r13)
    lwz     r3, 0x8(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r7)
    stb     r9, 0x0(r3)
    lwz     r7, -0x5778(r13)
    lwz     r3, 0x8(r7)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r7)
    stb     r8, 0x0(r3)
    lwz     r7, -0x5778(r13)
    lbzx    r5, r5, r31
    lwz     r3, 0x8(r7)
    lwz     r0, 0xc(r7)
    slwi    r5, r5, 14
    addi    r3, r3, 0x1
    cmplw   r3, r0
    or      r0, r5, r4
    or      r31, r6, r0
    ble-    branch_0x80365b50
    bl      GDOverflowed
branch_0x80365b50:
    lwz     r4, -0x5778(r13)
    li      r5, 0x61
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365b84
    bl      GDOverflowed
branch_0x80365b84:
    lwz     r4, -0x5778(r13)
    srwi    r7, r31, 24
    extrwi  r6, r31, 8, 8
    lwz     r3, 0x8(r4)
    extrwi  r5, r31, 8, 16
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
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365bfc
    bl      GDOverflowed
branch_0x80365bfc:
    lwz     r4, -0x5778(r13)
    li      r5, 0x10
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80365c30
    bl      GDOverflowed
branch_0x80365c30:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80365c78
    bl      GDOverflowed
branch_0x80365c78:
    lwz     r4, -0x5778(r13)
    li      r6, 0x10
    li      r5, 0x9
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
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365cc4
    bl      GDOverflowed
branch_0x80365cc4:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r30, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x1
    cmplw   r3, r0
    ble-    branch_0x80365d34
    bl      GDOverflowed
branch_0x80365d34:
    lwz     r4, -0x5778(r13)
    li      r5, 0x10
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80365d68
    bl      GDOverflowed
branch_0x80365d68:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x2
    cmplw   r3, r0
    ble-    branch_0x80365db0
    bl      GDOverflowed
branch_0x80365db0:
    lwz     r4, -0x5778(r13)
    li      r6, 0x10
    li      r5, 0x3f
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
    lwz     r0, 0xc(r4)
    addi    r3, r3, 0x4
    cmplw   r3, r0
    ble-    branch_0x80365dfc
    bl      GDOverflowed
branch_0x80365dfc:
    lwz     r4, -0x5778(r13)
    li      r5, 0x0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r5, 0x0(r3)
    lwz     r4, -0x5778(r13)
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
    stb     r29, 0x0(r3)
    lwz     r0, 0x2c(sp)
    lmw     r27, 0x14(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

