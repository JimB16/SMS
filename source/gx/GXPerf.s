
.globl GXSetGPMetric
GXSetGPMetric: # 0x803632d8
    lwz     r5, R13Off_m0x72f8(r13)
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

branch_0x8036330c:
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
    lis     r0, unk_23000061@h
    stw     r0, -0x8000(r5)
    b       branch_0x8036335c

branch_0x80363348:
    addi    r0, r0, unk_23000061@l
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    lis     r0, 0x2400
    stw     r0, -0x8000(r5)
branch_0x8036335c:
    lwz     r5, R13Off_m0x72f8(r13)
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

branch_0x80363390:
    b       branch_0x803633ec

branch_0x80363394:
    li      r0, 0x61
    lis     r5, unk_cc0104ec@h
    stb     r0, -0x8000(r5)
    lis     r0, 0x6700
    stw     r0, -0x8000(r5)
    b       branch_0x803633ec

branch_0x803633ac:
    addi    r7, r5, unk_cc0104ec@l
    lwz     r0, 0x4ec(r5)
    li      r5, 0x8
    lis     r6, 0xcc01
    rlwinm  r0, r0, 0, 28, 23
    stw     r0, 0x0(r7)
    li      r0, 0x20
    stb     r5, -0x8000(r6)
    lwz     r5, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r6)
    lwz     r0, 0x4ec(r5)
    stw     r0, -0x8000(r6)
    b       branch_0x803633ec

branch_0x803633e0:
    lwz     r5, R13Off_m0x57d4(r13)
    li      r0, 0x0
    sth     r0, 0x6(r5)
branch_0x803633ec:
    lwz     r5, R13Off_m0x72f8(r13)
    stw     r3, 0x4e4(r5)
    lwz     r3, R13Off_m0x72f8(r13)
    lwz     r0, 0x4e4(r3)
    cmplwi  r0, 0x23
    bgt-    branch_0x8036381c
    lis     r3, unk_803e9434@ha
    addi    r3, r3, unk_803e9434@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8036341c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x273
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036343c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x14a
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036345c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x16b
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036347c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x84
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036349c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0xc6
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803634bc:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x210
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803634dc:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x252
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803634fc:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x231
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036351c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x1ad
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036353c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x1ce
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036355c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x21
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036357c:
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x153
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036359c:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300ae7f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300ae7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803635b8:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_23008e7f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_23008e7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803635d4:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_23009e7f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_23009e7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803635f0:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_23001e7f@h
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_23001e7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036360c:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300ac3f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300ac3f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363628:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300ac7f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300ac7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363644:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300acbf@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300acbf@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363660:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300acff@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300acff@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036367c:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300ad3f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300ad3f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363698:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300ad7f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300ad7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803636b4:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300adbf@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300adbf@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803636d0:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300adff@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300adff@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803636ec:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300ae3f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300ae3f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363708:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300a27f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300a27f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363724:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300a67f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300a67f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363740:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2300aa7f@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2300aa7f@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x8036375c:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c0c6@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c0c6@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363778:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c16b@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c16b@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363794:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c0e7@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c0e7@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803637b0:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c108@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c108@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803637cc:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c129@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c129@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x803637e8:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c14a@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c14a@l
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c

branch_0x80363804:
    li      r0, 0x61
    lis     r5, 0xcc01
    lis     r3, unk_2402c1ad@ha
    stb     r0, -0x8000(r5)
    addi    r0, r3, unk_2402c1ad@l
    stw     r0, -0x8000(r5)
branch_0x8036381c:
    lwz     r3, R13Off_m0x72f8(r13)
    stw     r4, 0x4e8(r3)
    lwz     r4, R13Off_m0x72f8(r13)
    lwz     r0, 0x4e8(r4)
    cmplwi  r0, 0x16
    bgt-    branch_0x80363b60
    lis     r3, unk_803e93d8@ha
    addi    r3, r3, unk_803e93d8@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x8036384c:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_67000042@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000042@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363868:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_67000084@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000084@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363884:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_67000063@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000063@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x803638a0:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_67000129@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000129@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x803638bc:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_67000252@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000252@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x803638d8:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_67000021@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000021@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x803638f4:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_6700014b@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_6700014b@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363910:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_6700018d@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_6700018d@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x8036392c:
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, unk_670001cf@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_670001cf@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363948:
    li      r0, 0x61
    lis     r4, unk_cc0104ec@h
    lis     r3, unk_67000211@h
    stb     r0, -0x8000(r4)
    addi    r0, r3, unk_67000211@l
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363964:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x20
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x8036399c:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x30
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x803639d4:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x40
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363a0c:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x50
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363a44:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x60
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363a7c:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x70
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363ab4:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, unk_cc0104ec@h
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x90
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363aec:
    addi    r5, r4, unk_cc0104ec@l
    lwz     r0, 0x4ec(r4)
    li      r3, 0x8
    lis     r4, 0xcc01
    rlwinm  r0, r0, 0, 28, 23
    ori     r0, r0, 0x80
    stw     r0, 0x0(r5)
    li      r0, 0x20
    stb     r3, -0x8000(r4)
    lwz     r3, R13Off_m0x72f8(r13)
    stb     r0, -0x8000(r4)
    lwz     r0, 0x4ec(r3)
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60

branch_0x80363b24:
    lwz     r3, R13Off_m0x57d4(r13)
    li      r0, 0x2
    sth     r0, 0x6(r3)
    b       branch_0x80363b60

branch_0x80363b34:
    lwz     r3, R13Off_m0x57d4(r13)
    li      r0, 0x3
    sth     r0, 0x6(r3)
    b       branch_0x80363b60

branch_0x80363b44:
    lwz     r3, R13Off_m0x57d4(r13)
    li      r0, 0x4
    sth     r0, 0x6(r3)
    b       branch_0x80363b60

branch_0x80363b54:
    lwz     r3, R13Off_m0x57d4(r13)
    li      r0, 0x5
    sth     r0, 0x6(r3)
branch_0x80363b60:
    lwz     r3, R13Off_m0x72f8(r13)
    li      r0, 0x0
    sth     r0, 0x2(r3)
    blr


.globl GXClearGPMetric
GXClearGPMetric: # 0x80363b70
    lwz     r3, R13Off_m0x57d4(r13)
    li      r0, 0x4
    sth     r0, 0x4(r3)
    blr


.globl GXReadPixMetric
GXReadPixMetric: # 0x80363b80
    lwz     r9, R13Off_m0x57d0(r13)
    lhz     r10, 0x1a(r9)
    lhz     r0, 0x18(r9)
    insrwi  r0, r10, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r3)
    lwz     r3, R13Off_m0x57d0(r13)
    lhz     r9, 0x1e(r3)
    lhz     r0, 0x1c(r3)
    insrwi  r0, r9, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r4)
    lwz     r3, R13Off_m0x57d0(r13)
    lhz     r4, 0x22(r3)
    lhz     r0, 0x20(r3)
    insrwi  r0, r4, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r5)
    lwz     r3, R13Off_m0x57d0(r13)
    lhz     r4, 0x26(r3)
    lhz     r0, 0x24(r3)
    insrwi  r0, r4, 16, 0
    slwi    r0, r0, 2
    stw     r0, 0x0(r6)
    lwz     r3, R13Off_m0x57d0(r13)
    lhz     r0, 0x2a(r3)
    lhz     r3, 0x28(r3)
    insrwi  r3, r0, 16, 0
    slwi    r0, r3, 2
    stw     r0, 0x0(r7)
    lwz     r4, R13Off_m0x57d0(r13)
    lhz     r3, 0x2e(r4)
    lhz     r0, 0x2c(r4)
    insrwi  r0, r3, 16, 0
    stw     r0, 0x0(r8)
    blr


.globl GXClearPixMetric
GXClearPixMetric: # 0x80363c10
    li      r7, 0x61
    lwz     r3, R13Off_m0x72f8(r13)
    lis     r6, 0xcc01
    lis     r5, unk_57000aaa@h
    stb     r7, -0x8000(r6)
    addi    r4, r5, unk_57000aaa@l
    stw     r5, -0x8000(r6)
    li      r0, 0x0
    stb     r7, -0x8000(r6)
    stw     r4, -0x8000(r6)
    sth     r0, 0x2(r3)
    blr

