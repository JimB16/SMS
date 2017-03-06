
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


.incbin "./baserom/code/Text_0x80005600.bin", 0x35dd0c, 0x80363310 - 0x8036330c
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


.incbin "./baserom/code/Text_0x80005600.bin", 0x35dd90, 0x80363394 - 0x80363390
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
    bctr       
    li      r0, 0x10
    lis     r5, 0xcc01
    stb     r0, -0x8000(r5)
    li      r3, 0x1006
    li      r0, 0x273
    stw     r3, -0x8000(r5)
    stw     r0, -0x8000(r5)
    b       branch_0x8036381c


.incbin "./baserom/code/Text_0x80005600.bin", 0x35de3c, 0x8036381c - 0x8036343c
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
    bctr       
    li      r0, 0x61
    lis     r4, 0xcc01
    lis     r3, 0x6700
    stb     r0, -0x8000(r4)
    addi    r0, r3, 0x42
    stw     r0, -0x8000(r4)
    b       branch_0x80363b60


.incbin "./baserom/code/Text_0x80005600.bin", 0x35e268, 0x80363b60 - 0x80363868
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

