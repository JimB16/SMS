
.globl GXSetGPMetric
GXSetGPMetric: # 0x803632d8
    lwz     r5, -0x72f8(r13)
    lwz     r0, 0x4e4(r5)
    cmpwi   r0, 0x22
    beq-    branch_0x80363310
    bge-    branch_0x8036335c
    cmpwi   r0, 0xb
    bge-    branch_0x80363300
    cmpwi   r0, 0x0
    bge-    branch_0x80363310
    b       branch_0x8036335c

branch_0x80363300:
    cmpwi   r0, 0x1b
    bge-    branch_0x80363348
    b       branch_0x80363330
    b       branch_0x8036335c

branch_0x80363310:
    li      r0, 0x10
    lis     r6, 0xcc01
    stb     r0, -0x8000(r6)
    li      r5, 0x1006
    li      r0, 0x0
    stw     r5, -0x8000(r6)
    stw     r0, -0x8000(r6)
    b       branch_0x8036335c

branch_0x80363330:
    li      r0, 0x61
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    lis     r0, 0x2300
    stw     r0, -0x8000(r5)
    b       branch_0x8036335c

branch_0x80363348:
    li      r0, 0x61
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    lis     r0, 0x2400
    stw     r0, -0x8000(r5)
branch_0x8036335c:
    lwz     r5, -0x72f8(r13)
    lwz     r0, 0x4e8(r5)
    cmpwi   r0, 0x15
    beq-    branch_0x80363394
    bge-    branch_0x803633ec
    cmpwi   r0, 0x9
    bge-    branch_0x80363384
    cmpwi   r0, 0x0
    bge-    branch_0x80363394
    b       branch_0x803633ec

branch_0x80363384:
    cmpwi   r0, 0x11
    bge-    branch_0x803633e0
    b       branch_0x803633ac
    b       branch_0x803633ec

branch_0x80363394:
    li      r0, 0x61
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    lis     r0, 0x6700
    stw     r0, -0x8000(r5)
    b       branch_0x803633ec

branch_0x803633ac:
    addi    r7, r5, 0x4ec
    lwz     r0, 0x4ec(r5)
    li      r5, 0x8
    lis     r6, 0xcc01
    rlwinm  r0, r0, 0, 28, 23
    stw     r0, 0x0(r7)
    li      r0, 0x20
    stb     r5, -0x8000(r6)
    lwz     r5, -0x72f8(r13)
    stb     r0, -0x8000(r6)
    lwz     r0, 0x4ec(r5)
    stw     r0, -0x8000(r6)
    b       branch_0x803633ec

branch_0x803633e0:
    lwz     r5, -0x57d4(r13)
    li      r0, 0x0
    sth     r0, 0x6(r5)
branch_0x803633ec:
    lwz     r5, -0x72f8(r13)
    stw     r3, 0x4e4(r5)
    lwz     r3, -0x72f8(r13)
    lwz     r0, 0x4e4(r3)
    cmplwi  r0, 0x23
    bgt-    branch_0x8036381c
    lis     r3, 0x803f
    subi    r3, r3, 0x6bcc
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8036341c:		# jumptable 80363418 case 0
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x273
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036343c:		# jumptable 80363418 case 1
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x14A
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036345c:		# jumptable 80363418 case 2
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x16B
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036347c:		# jumptable 80363418 case 3
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x84
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036349c:		# jumptable 80363418 case 4
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0xC6
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803634bc:		# jumptable 80363418 case 5
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x210
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803634dc:		# jumptable 80363418 case 6
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x252
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803634fc:		# jumptable 80363418 case 7
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x231
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036351c:		# jumptable 80363418 case 8
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x1AD
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036353c:		# jumptable 80363418 case 9
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x1CE
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036355c:		# jumptable 80363418 case 34
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x21
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036357c:		# jumptable 80363418 case 10
    li	    r0, 0x10
    lis	    r5, -0x33FF
    stb	    r0, -0x8000(r5)
    li	    r3, 0x1006
    li	    r0, 0x153
    stw	    r3, -0x8000(r5)
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036359c:		# jumptable 80363418 case 11
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AE7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5181 # 0x2300AE7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803635b8:		# jumptable 80363418 case 12
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x23008E7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x7181 # 0x23008E7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803635d4:		# jumptable 80363418 case 13
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x23009E7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x6181 # 0x23009E7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803635f0:		# jumptable 80363418 case 14
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2300 # 0x23001E7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, 0x1E7F # 0x23001E7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036360c:		# jumptable 80363418 case 15
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AC3F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x53C1 # 0x2300AC3F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363628:		# jumptable 80363418 case 16
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AC7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5381 # 0x2300AC7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363644:		# jumptable 80363418 case 17
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300ACBF
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5341 # 0x2300ACBF
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363660:		# jumptable 80363418 case 18
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300ACFF
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5301 # 0x2300ACFF
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036367c:		# jumptable 80363418 case 19
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AD3F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x52C1 # 0x2300AD3F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363698:		# jumptable 80363418 case 20
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AD7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5281 # 0x2300AD7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803636b4:		# jumptable 80363418 case 21
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300ADBF
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5241 # 0x2300ADBF
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803636d0:		# jumptable 80363418 case 22
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300ADFF
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5201 # 0x2300ADFF
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803636ec:		# jumptable 80363418 case 23
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AE3F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x51C1 # 0x2300AE3F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363708:		# jumptable 80363418 case 24
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300A27F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5D81 # 0x2300A27F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363724:		# jumptable 80363418 case 25
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300A67F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5981 # 0x2300A67F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363740:		# jumptable 80363418 case 26
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2301 # 0x2300AA7F
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x5581 # 0x2300AA7F
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x8036375c:		# jumptable 80363418 case 27
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C0C6
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3F3A # 0x2402C0C6
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363778:		# jumptable 80363418 case 28
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C16B
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3E95 # 0x2402C16B
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363794:		# jumptable 80363418 case 29
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C0E7
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3F19 # 0x2402C0E7
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803637b0:		# jumptable 80363418 case 30
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C108
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3EF8 # 0x2402C108
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803637cc:		# jumptable 80363418 case 31
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C129
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3ED7 # 0x2402C129
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x803637e8:		# jumptable 80363418 case 32
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C14A
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3EB6 # 0x2402C14A
    stw	    r0, -0x8000(r5)
    b	    def_80363418	# jumptable 80363418 default case

branch_0x80363804:		# jumptable 80363418 case 33
    li	    r0, 0x61
    lis	    r5, -0x33FF
    lis	    r3, 0x2403 # 0x2402C1AD
    stb	    r0, -0x8000(r5)
    addi    r0, r3, -0x3E53 # 0x2402C1AD
    stw	    r0, -0x8000(r5)

def_80363418:		# jumptable 80363418 default case
branch_0x8036381c:
    lwz     r3, -0x72f8(r13)
    stw     r4, 0x4e8(r3)
    lwz     r4, -0x72f8(r13)
    lwz     r0, 0x4e8(r4)
    cmplwi  r0, 0x16
    bgt-    branch_0x80363b60
    lis     r3, 0x803f
    subi    r3, r3, 0x6c28
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8036384c:		# jumptable 80363848 case 0
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, 0x6700
    stb     r0, -0x8000(r4)
    addi    r0, r3, 0x42
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363868:		# jumptable 80363848 case 1
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x67000084
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x84 # 0x67000084
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363884:		# jumptable 80363848 case 2
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x67000063
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x63 # 0x67000063
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x803638a0:		# jumptable 80363848 case 3
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x67000129
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x129	# 0x67000129
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x803638bc:		# jumptable 80363848 case 8
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x67000252
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x252	# 0x67000252
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x803638d8:		# jumptable 80363848 case 21
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x67000021
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x21 # 0x67000021
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x803638f4:		# jumptable 80363848 case 4
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x6700014B
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x14B	# 0x6700014B
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363910:		# jumptable 80363848 case 5
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x6700018D
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x18D	# 0x6700018D
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x8036392c:		# jumptable 80363848 case 6
    li	    r0, 0x61
    lis	    r4, -0x33FF
    lis	    r3, 0x6700 # 0x670001CF
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x1CF	# 0x670001CF
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363948:		# jumptable 80363848 case 7
    li	    r0, 0x61
    lis	    r4, -0x33FF #	0xCC0104EC
    lis	    r3, 0x6700 # 0x67000211
    stb	    r0, -0x8000(r4)
    addi    r0, r3, 0x211	# 0x67000211
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363964:		# jumptable 80363848 case 9
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0, 28, 23
    ori	    r0, r0, 0x20
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x8036399c:		# jumptable 80363848 case 10
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0,28,23
    ori	    r0, r0, 0x30
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x803639d4:		# jumptable 80363848 case 11
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0, 28, 23
    ori	    r0, r0, 0x40
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363a0c:		# jumptable 80363848 case 12
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0,28,23
    ori	    r0, r0, 0x50
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363a44:		# jumptable 80363848 case 13
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0, 28, 23
    ori	    r0, r0, 0x60
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363a7c:		# jumptable 80363848 case 14
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0, 28, 23
    ori	    r0, r0, 0x70
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363ab4:		# jumptable 80363848 case 15
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF #	0xCC0104EC
    rlwinm  r0, r0, 0, 28, 23
    ori	    r0, r0, 0x90
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363aec:		# jumptable 80363848 case 16
    addi    r5, r4, 0x4EC	# 0xCC0104EC
    lwz	    r0, 0x4EC(r4)
    li	    r3, 0x8
    lis	    r4, -0x33FF
    rlwinm  r0, r0, 0, 28, 23
    ori	    r0, r0, 0x80
    stw	    r0, 0x0(r5)
    li	    r0, 0x20
    stb	    r3, -0x8000(r4)
    lwz	    r3, -0x72F8(r13)
    stb	    r0, -0x8000(r4)
    lwz	    r0, 0x4EC(r3)
    stw	    r0, -0x8000(r4)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363b24:		# jumptable 80363848 case 17
    lwz	    r3, -0x57D4(r13)
    li	    r0, 0x2
    sth	    r0, 0x6(r3)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363b34:		# jumptable 80363848 case 18
    lwz	    r3, -0x57D4(r13)
    li	    r0, 0x3
    sth	    r0, 0x6(r3)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363b44:		# jumptable 80363848 case 19
    lwz	    r3, -0x57D4(r13)
    li	    r0, 0x4
    sth	    r0, 0x6(r3)
    b	    def_80363848	# jumptable 80363848 default case

branch_0x80363b54:		# jumptable 80363848 case 20
    lwz	    r3, -0x57D4(r13)
    li	    r0, 0x5
    sth	    r0, 0x6(r3)

def_80363848:		# jumptable 80363848 default case
branch_0x80363b60:
    lwz     r3, -0x72f8(r13)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXClearGPMetric
GXClearGPMetric: # 0x80363b70
    lwz     r3, -0x57d4(r13)
    li      r0, 0x4
    sth     r0, 0x4(r3)
    blr


.globl GXReadPixMetric
GXReadPixMetric: # 0x80363b80
    lwz     r9, -0x57d0(r13)
    lhz     r10, 0x1a(r9)
    lhz     r0, 0x18(r9)
    insrwi  r0, r10, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r3)
    lwz     r3, -0x57d0(r13)
    lhz     r9, 0x1e(r3)
    lhz     r0, 0x1c(r3)
    insrwi  r0, r9, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r4)
    lwz     r3, -0x57d0(r13)
    lhz     r4, 0x22(r3)
    lhz     r0, 0x20(r3)
    insrwi  r0, r4, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r5)
    lwz     r3, -0x57d0(r13)
    lhz     r4, 0x26(r3)
    lhz     r0, 0x24(r3)
    insrwi  r0, r4, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r6)
    lwz     r3, -0x57d0(r13)
    lhz     r0, 0x2a(r3)
    lhz     r3, 0x28(r3)
    insrwi  r3, r0, 16, 0
    slwi    r0, r3, 2
    stw     r0, 0x0(r7)
    lwz     r4, -0x57d0(r13)
    lhz     r3, 0x2e(r4)
    lhz     r0, 0x2c(r4)
    insrwi  r0, r3, 16, 0
    stw     r0, 0x0(r8)
    blr


.globl GXClearPixMetric
GXClearPixMetric: # 0x80363c10
    li      r7, 0x61
    lwz     r3, -0x72f8(r13)
    lis     r6, 0xcc01
    lis     r5, 0x5700
    stb     r7, -0x8000(r6)
    addi    r4, r5, 0xaaa
    stw     r5, -0x8000(r6)
    li      r0, 0x0
    stb     r7, -0x8000(r6)
    stw     r4, -0x8000(r6)
    sth     r0, 0x2(r3)
    blr

