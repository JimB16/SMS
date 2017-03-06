
.globl DLInsert
DLInsert: # 0x80342c10
    addi    r7, r3, 0x0
    li      r6, 0x0
    b       branch_0x80342c2c

branch_0x80342c1c:
    cmplw   r4, r7
    ble-    branch_0x80342c34
    mr      r6, r7
    lwz     r7, 0x4(r7)
branch_0x80342c2c:
    cmplwi  r7, 0x0
    bne+    branch_0x80342c1c
branch_0x80342c34:
    stw     r7, 0x4(r4)
    cmplwi  r7, 0x0
    stw     r6, 0x0(r4)
    beq-    branch_0x80342c78
    stw     r4, 0x0(r7)
    lwz     r5, 0x8(r4)
    add     r0, r4, r5
    cmplw   r0, r7
    bne-    branch_0x80342c78
    lwz     r0, 0x8(r7)
    add     r0, r5, r0
    stw     r0, 0x8(r4)
    lwz     r7, 0x4(r7)
    cmplwi  r7, 0x0
    stw     r7, 0x4(r4)
    beq-    branch_0x80342c78
    stw     r4, 0x0(r7)
branch_0x80342c78:
    cmplwi  r6, 0x0
    beq-    branch_0x80342cb4
    stw     r4, 0x4(r6)
    lwz     r5, 0x8(r6)
    add     r0, r6, r5
    cmplw   r0, r4
    bnelr-    

    lwz     r0, 0x8(r4)
    cmplwi  r7, 0x0
    add     r0, r5, r0
    stw     r0, 0x8(r6)
    stw     r7, 0x4(r6)
    beqlr-    

    stw     r6, 0x0(r7)
    blr

branch_0x80342cb4:
    mr      r3, r4
    blr


.globl OSAllocFromHeap
OSAllocFromHeap: # 0x80342cbc
    mulli   r0, r3, 0xc
    lwz     r3, -0x5a38(r13)
    add     r5, r3, r0
    addi    r0, r4, 0x3f
    lwz     r6, 0x4(r5)
    clrrwi  r3, r0, 5
    b       branch_0x80342ce8

branch_0x80342cd8:
    lwz     r0, 0x8(r6)
    cmpw    r3, r0
    ble-    branch_0x80342cf0
    lwz     r6, 0x4(r6)
branch_0x80342ce8:
    cmplwi  r6, 0x0
    bne+    branch_0x80342cd8
branch_0x80342cf0:
    cmplwi  r6, 0x0
    bne-    branch_0x80342d00
    li      r3, 0x0
    blr

branch_0x80342d00:
    lwz     r0, 0x8(r6)
    subf    r0, r3, r0
    cmplwi  r0, 0x40
    bge-    branch_0x80342d4c
    lwz     r4, 0x4(r6)
    lwz     r3, 0x4(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x80342d28
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r4)
branch_0x80342d28:
    lwz     r4, 0x0(r6)
    cmplwi  r4, 0x0
    bne-    branch_0x80342d3c
    lwz     r3, 0x4(r6)
    b       branch_0x80342d44

branch_0x80342d3c:
    lwz     r0, 0x4(r6)
    stw     r0, 0x4(r4)
branch_0x80342d44:
    stw     r3, 0x4(r5)
    b       branch_0x80342d90

branch_0x80342d4c:
    stw     r3, 0x8(r6)
    add     r4, r6, r3
    stw     r0, 0x8(r4)
    lwz     r0, 0x0(r6)
    stw     r0, 0x0(r4)
    lwz     r0, 0x4(r6)
    stw     r0, 0x4(r4)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80342d78
    stw     r4, 0x0(r3)
branch_0x80342d78:
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80342d8c
    stw     r4, 0x4(r3)
    b       branch_0x80342d90

branch_0x80342d8c:
    stw     r4, 0x4(r5)
branch_0x80342d90:
    lwz     r3, 0x8(r5)
    li      r0, 0x0
    stw     r3, 0x4(r6)
    cmplwi  r3, 0x0
    stw     r0, 0x0(r6)
    beq-    branch_0x80342dac
    stw     r6, 0x0(r3)
branch_0x80342dac:
    stw     r6, 0x8(r5)
    addi    r3, r6, 0x20
    blr


.globl OSFreeToHeap
OSFreeToHeap: # 0x80342db8
    mflr    r0
    subi    r6, r4, 0x20
    stw     r0, 0x4(sp)
    mulli   r0, r3, 0xc
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r4, -0x5a38(r13)
    lwz     r3, 0x4(r6)
    add     r31, r4, r0
    cmplwi  r3, 0x0
    lwz     r5, 0x8(r31)
    mr      r4, r6
    beq-    branch_0x80342df4
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
branch_0x80342df4:
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    bne-    branch_0x80342e08
    lwz     r5, 0x4(r4)
    b       branch_0x80342e10

branch_0x80342e08:
    lwz     r0, 0x4(r4)
    stw     r0, 0x4(r3)
branch_0x80342e10:
    stw     r5, 0x8(r31)
    lwz     r3, 0x4(r31)
    bl      DLInsert
    stw     r3, 0x4(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSInitAlloc
OSInitAlloc: # 0x80342e34
    mulli   r7, r5, 0xc
    stw     r3, -0x5a38(r13)
    stw     r5, -0x5a34(r13)
    li      r6, 0x0
    addi    r3, r6, 0x0
    li      r8, 0x0
    li      r5, -0x1
    b       branch_0x80342e70

branch_0x80342e54:
    lwz     r0, -0x5a38(r13)
    addi    r8, r8, 0x1
    add     r9, r0, r6
    stw     r5, 0x0(r9)
    addi    r6, r6, 0xc
    stw     r3, 0x8(r9)
    stw     r3, 0x4(r9)
branch_0x80342e70:
    lwz     r0, -0x5a34(r13)
    cmpw    r8, r0
    blt+    branch_0x80342e54
    lwz     r3, -0x5a38(r13)
    clrrwi  r0, r4, 5
    li      r4, -0x1
    stw     r0, -0x5a2c(r13)
    add     r3, r3, r7
    addi    r0, r3, 0x1f
    stw     r4, -0x7380(r13)
    clrrwi  r3, r0, 5
    stw     r3, -0x5a30(r13)
    blr


.globl OSCreateHeap
OSCreateHeap: # 0x80342ea4
    lwz     r6, -0x5a34(r13)
    addi    r0, r3, 0x1f
    lwz     r5, -0x5a38(r13)
    clrrwi  r7, r0, 5
    cmpwi   r6, 0x0
    mtctr   r6
    clrrwi  r4, r4, 5
    li      r3, 0x0
    ble-    branch_0x80342f08
branch_0x80342ec8:
    lwz     r0, 0x0(r5)
    cmpwi   r0, 0x0
    bge-    branch_0x80342efc
    subf    r0, r7, r4
    stw     r0, 0x0(r5)
    li      r4, 0x0
    stw     r4, 0x0(r7)
    stw     r4, 0x4(r7)
    lwz     r0, 0x0(r5)
    stw     r0, 0x8(r7)
    stw     r7, 0x4(r5)
    stw     r4, 0x8(r5)
    blr

branch_0x80342efc:
    addi    r5, r5, 0xc
    addi    r3, r3, 0x1
    bdnz+      branch_0x80342ec8
branch_0x80342f08:
    li      r3, -0x1
    blr


.globl OSDestroyHeap
OSDestroyHeap: # 0x80342f10
    mulli   r0, r3, 0xc
    lwz     r3, -0x5a38(r13)
    li      r4, -0x1
    stwx    r4, r3, r0
    blr


.globl OSCheckHeap
OSCheckHeap: # 0x80342f24
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r6, r4, 0x6b00
    li      r0, 0x0
    stwu    sp, -0x8(sp)
    li      r4, 0x0
    lwz     r7, -0x5a38(r13)
    cmplwi  r7, 0x0
    bne-    branch_0x80342f64
    addi    r3, r6, 0x0
    crxor   6, 6, 6
    li      r4, 0x37d
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80342f64:
    cmpwi   r3, 0x0
    blt-    branch_0x80342f78
    lwz     r5, -0x5a34(r13)
    cmpw    r3, r5
    blt-    branch_0x80342f90
branch_0x80342f78:
    addi    r3, r6, 0x24
    crxor   6, 6, 6
    li      r4, 0x37e
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80342f90:
    mulli   r3, r3, 0xc
    add     r5, r7, r3
    lwz     r3, 0x0(r5)
    cmpwi   r3, 0x0
    bge-    branch_0x80342fbc
    addi    r3, r6, 0x5c
    crxor   6, 6, 6
    li      r4, 0x381
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80342fbc:
    lwz     r7, 0x8(r5)
    cmplwi  r7, 0x0
    beq-    branch_0x80342fec
    lwz     r3, 0x0(r7)
    cmplwi  r3, 0x0
    beq-    branch_0x80342fec
    addi    r3, r6, 0x84
    crxor   6, 6, 6
    li      r4, 0x383
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80342fec:
    lwz     r9, -0x5a30(r13)
    mr      r8, r7
    lwz     r10, -0x5a2c(r13)
    b       branch_0x803430e8

branch_0x80342ffc:
    cmplw   r9, r8
    bgt-    branch_0x8034300c
    cmplw   r8, r10
    blt-    branch_0x80343024
branch_0x8034300c:
    addi    r3, r6, 0xd4
    crxor   6, 6, 6
    li      r4, 0x386
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80343024:
    clrlwi. r3, r8, 27
    beq-    branch_0x80343044
    addi    r3, r6, 0x114
    crxor   6, 6, 6
    li      r4, 0x387
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80343044:
    lwz     r7, 0x4(r8)
    cmplwi  r7, 0x0
    beq-    branch_0x80343074
    lwz     r3, 0x0(r7)
    cmplw   r3, r8
    beq-    branch_0x80343074
    addi    r3, r6, 0x14c
    crxor   6, 6, 6
    li      r4, 0x388
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80343074:
    lwz     r8, 0x8(r8)
    cmplwi  r8, 0x40
    bge-    branch_0x80343098
    addi    r3, r6, 0x198
    crxor   6, 6, 6
    li      r4, 0x389
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80343098:
    clrlwi. r3, r8, 27
    beq-    branch_0x803430b8
    addi    r3, r6, 0x1cc
    crxor   6, 6, 6
    li      r4, 0x38a
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x803430b8:
    add.    r0, r0, r8
    ble-    branch_0x803430cc
    lwz     r3, 0x0(r5)
    cmpw    r0, r3
    ble-    branch_0x803430e4
branch_0x803430cc:
    addi    r3, r6, 0x20c
    crxor   6, 6, 6
    li      r4, 0x38d
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x803430e4:
    mr      r8, r7
branch_0x803430e8:
    cmplwi  r8, 0x0
    bne+    branch_0x80342ffc
    lwz     r11, 0x4(r5)
    cmplwi  r11, 0x0
    beq-    branch_0x80343244
    lwz     r3, 0x0(r11)
    cmplwi  r3, 0x0
    beq-    branch_0x80343244
    addi    r3, r6, 0x248
    crxor   6, 6, 6
    li      r4, 0x395
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274


.incbin "./baserom/code/Text_0x80005600.bin", 0x33db20, 0x80343124 - 0x80343120
branch_0x80343124:
    cmplw   r9, r11
    bgt-    branch_0x80343134
    cmplw   r11, r10
    blt-    branch_0x8034314c
branch_0x80343134:
    addi    r3, r6, 0xd4
    crxor   6, 6, 6
    li      r4, 0x398
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x8034314c:
    clrlwi. r3, r11, 27
    beq-    branch_0x8034316c
    addi    r3, r6, 0x114
    crxor   6, 6, 6
    li      r4, 0x399
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x8034316c:
    lwz     r7, 0x4(r11)
    cmplwi  r7, 0x0
    beq-    branch_0x8034319c
    lwz     r3, 0x0(r7)
    cmplw   r3, r11
    beq-    branch_0x8034319c
    addi    r3, r6, 0x14c
    crxor   6, 6, 6
    li      r4, 0x39a
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x8034319c:
    lwz     r8, 0x8(r11)
    cmplwi  r8, 0x40
    bge-    branch_0x803431c0
    addi    r3, r6, 0x198
    crxor   6, 6, 6
    li      r4, 0x39b
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x803431c0:
    clrlwi. r3, r8, 27
    beq-    branch_0x803431e0
    addi    r3, r6, 0x1cc
    crxor   6, 6, 6
    li      r4, 0x39c
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x803431e0:
    cmplwi  r7, 0x0
    beq-    branch_0x8034320c
    add     r3, r11, r8
    cmplw   r3, r7
    blt-    branch_0x8034320c
    addi    r3, r6, 0x290
    crxor   6, 6, 6
    li      r4, 0x39d
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x8034320c:
    add.    r0, r0, r8
    add     r4, r8, r4
    subi    r4, r4, 0x20
    ble-    branch_0x80343228
    lwz     r3, 0x0(r5)
    cmpw    r0, r3
    ble-    branch_0x80343240
branch_0x80343228:
    addi    r3, r6, 0x20c
    crxor   6, 6, 6
    li      r4, 0x3a1
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80343240:
    mr      r11, r7
branch_0x80343244:
    cmplwi  r11, 0x0
    bne+    branch_0x80343124
    lwz     r3, 0x0(r5)
    cmpw    r0, r3
    beq-    branch_0x80343270
    addi    r3, r6, 0x2f0
    crxor   6, 6, 6
    li      r4, 0x3a8
    bl      OSReport
    li      r3, -0x1
    b       branch_0x80343274

branch_0x80343270:
    mr      r3, r4
branch_0x80343274:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl OSReferentSize
OSReferentSize: # 0x80343284
    lwz     r3, -0x18(r3)
    subi    r3, r3, 0x20
    blr


.globl OSDumpHeap
OSDumpHeap: # 0x80343290
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x6b00
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    addi    r4, r29, 0x0
    addi    r3, r31, 0x31c
    bl      OSReport
    mulli   r0, r29, 0xc
    lwz     r3, -0x5a38(r13)
    add     r30, r3, r0
    lwz     r0, 0x0(r30)
    cmpwi   r0, 0x0
    bge-    branch_0x803432ec
    addi    r3, r31, 0x330
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x80343378

branch_0x803432ec:
    addi    r3, r31, 0x344
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r31, 0x360
    crxor   6, 6, 6
    bl      OSReport
    lwz     r29, 0x8(r30)
    b       branch_0x80343330

branch_0x8034330c:
    lwz     r5, 0x8(r29)
    mr      r4, r29
    lwz     r7, 0x0(r29)
    addi    r3, r31, 0x374
    lwz     r8, 0x4(r29)
    crxor   6, 6, 6
    add     r6, r29, r5
    bl      OSReport
    lwz     r29, 0x4(r29)
branch_0x80343330:
    cmplwi  r29, 0x0
    bne+    branch_0x8034330c
    addi    r3, r31, 0x384
    crxor   6, 6, 6
    bl      OSReport
    lwz     r30, 0x4(r30)
    b       branch_0x80343370

branch_0x8034334c:
    lwz     r5, 0x8(r30)
    mr      r4, r30
    lwz     r7, 0x0(r30)
    addi    r3, r31, 0x374
    lwz     r8, 0x4(r30)
    crxor   6, 6, 6
    add     r6, r30, r5
    bl      OSReport
    lwz     r30, 0x4(r30)
branch_0x80343370:
    cmplwi  r30, 0x0
    bne+    branch_0x8034334c
branch_0x80343378:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr

