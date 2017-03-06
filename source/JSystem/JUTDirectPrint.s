
.globl start__14JUTDirectPrintFv
start__14JUTDirectPrintFv: # 0x802c8218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    lwz     r0, -0x5ee8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802c8250
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802c824c
    mr      r3, r31
    bl      __ct__14JUTDirectPrintFv
branch_0x802c824c:
    stw     r31, -0x5ee8(r13)
branch_0x802c8250:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    lwz     r3, -0x5ee8(r13)
    mtlr    r0
    blr


.globl __ct__14JUTDirectPrintFv
__ct__14JUTDirectPrintFv: # 0x802c8268
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x0
    li      r6, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      changeFrameBuffer__14JUTDirectPrintFPvUsUs
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl erase__14JUTDirectPrintFiiii
erase__14JUTDirectPrintFiiii: # 0x802c82a4
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beqlr-    

    lhz     r0, 0x4(r3)
    cmplwi  r0, 0x190
    ble-    branch_0x802c82c4
    slwi    r4, r4, 1
    slwi    r6, r6, 1
branch_0x802c82c4:
    lhz     r0, 0x6(r3)
    cmplwi  r0, 0x12c
    ble-    branch_0x802c82d8
    slwi    r5, r5, 1
    slwi    r7, r7, 1
branch_0x802c82d8:
    lhz     r8, 0x8(r3)
    slwi    r0, r4, 1
    lwz     r9, 0x14(r3)
    subi    r10, r6, 0x8
    mullw   r4, r8, r5
    slwi    r4, r4, 1
    add     r4, r4, r0
    add     r4, r9, r4
    li      r5, 0x0
    b       branch_0x802c838c

branch_0x802c8300:
    cmpwi   r6, 0x0
    li      r8, 0x0
    ble-    branch_0x802c8378
    cmpwi   r6, 0x8
    ble-    branch_0x802c8358
    addi    r0, r10, 0x7
    srwi    r0, r0, 3
    cmpwi   r10, 0x0
    mtctr   r0
    ble-    branch_0x802c8358
    li      r0, 0x1080
branch_0x802c832c:
    sth     r0, 0x0(r4)
    addi    r8, r8, 0x8
    sth     r0, 0x2(r4)
    sth     r0, 0x4(r4)
    sth     r0, 0x6(r4)
    sth     r0, 0x8(r4)
    sth     r0, 0xa(r4)
    sth     r0, 0xc(r4)
    sth     r0, 0xe(r4)
    addi    r4, r4, 0x10
    bdnz+      branch_0x802c832c
branch_0x802c8358:
    subf    r0, r8, r6
    cmpw    r8, r6
    mtctr   r0
    li      r0, 0x1080
    bge-    branch_0x802c8378
branch_0x802c836c:
    sth     r0, 0x0(r4)
    addi    r4, r4, 0x2
    bdnz+      branch_0x802c836c
branch_0x802c8378:
    lhz     r0, 0x8(r3)
    addi    r5, r5, 0x1
    subf    r0, r6, r0
    slwi    r0, r0, 1
    add     r4, r4, r0
branch_0x802c838c:
    cmpw    r5, r7
    blt+    branch_0x802c8300
    blr


.globl drawChar__14JUTDirectPrintFiii
drawChar__14JUTDirectPrintFiii: # 0x802c8398
    stwu    sp, -0x50(sp)
    cmpwi   r6, 0x64
    stmw    r23, 0x2c(sp)
    blt-    branch_0x802c83b0
    subi    r10, r6, 0x64
    b       branch_0x802c83b4

branch_0x802c83b0:
    mr      r10, r6
branch_0x802c83b4:
    lis     r7, 0x6666
    addi    r0, r7, 0x6667
    mulhw   r9, r0, r10
    srawi   r0, r9, 1
    srwi    r7, r0, 31
    add     r0, r0, r7
    mulli   r8, r0, 0x5
    srawi   r0, r9, 1
    srwi    r7, r0, 31
    subf    r8, r8, r10
    add     r7, r0, r7
    cmpwi   r6, 0x64
    mulli   r0, r8, 0x6
    mulli   r7, r7, 0x7
    bge-    branch_0x802c8404
    lis     r6, 0x803e
    slwi    r7, r7, 2
    addi    r6, r6, 0x308
    add     r6, r6, r7
    b       branch_0x802c8414

branch_0x802c8404:
    lis     r6, 0x803e
    slwi    r7, r7, 2
    addi    r6, r6, 0x408
    add     r6, r6, r7
branch_0x802c8414:
    lhz     r7, 0x4(r3)
    cmplwi  r7, 0x190
    bge-    branch_0x802c8428
    li      r9, 0x1
    b       branch_0x802c842c

branch_0x802c8428:
    li      r9, 0x2
branch_0x802c842c:
    lhz     r7, 0x6(r3)
    cmplwi  r7, 0x12c
    bge-    branch_0x802c8440
    li      r10, 0x1
    b       branch_0x802c8444

branch_0x802c8440:
    li      r10, 0x2
branch_0x802c8444:
    lhz     r7, 0x8(r3)
    mullw   r4, r4, r9
    lwz     r8, 0x14(r3)
    mullw   r5, r7, r5
    mullw   r5, r10, r5
    slwi    r5, r5, 1
    slwi    r4, r4, 1
    add     r30, r5, r4
    mulli   r31, r9, 0x6
    add     r30, r8, r30
    slwi    r12, r9, 1
    subi    r11, r9, 0x8
    li      r29, 0x0
    lis     r8, 0x1
branch_0x802c847c:
    lwz     r4, 0x0(r6)
    li      r27, 0x0
    addi    r6, r6, 0x4
    slw     r28, r4, r0
branch_0x802c848c:
    clrrwi. r4, r28, 31
    beq-    branch_0x802c849c
    subi    r4, r8, 0x1480
    b       branch_0x802c84a0

branch_0x802c849c:
    li      r4, 0x80
branch_0x802c84a0:
    clrlwi  r26, r4, 16
    li      r25, 0x0
    b       branch_0x802c8540

branch_0x802c84ac:
    lhz     r4, 0x8(r3)
    cmpwi   r9, 0x0
    li      r23, 0x0
    mullw   r24, r4, r25
    li      r5, 0x0
    ble-    branch_0x802c853c
    cmpwi   r9, 0x8
    ble-    branch_0x802c8580
    addi    r4, r11, 0x7
    srwi    r4, r4, 3
    slwi    r7, r24, 1
    mtctr   r4
    cmpwi   r11, 0x0
    add     r4, r30, r7
    ble-    branch_0x802c8580
branch_0x802c84e8:
    add     r7, r4, r5
    sth     r26, 0x0(r7)
    addi    r23, r23, 0x8
    addi    r5, r5, 0x10
    sth     r26, 0x2(r7)
    sth     r26, 0x4(r7)
    sth     r26, 0x6(r7)
    sth     r26, 0x8(r7)
    sth     r26, 0xa(r7)
    sth     r26, 0xc(r7)
    sth     r26, 0xe(r7)
    bdnz+      branch_0x802c84e8
    b       branch_0x802c8580

branch_0x802c851c:
    subf    r4, r23, r9
    cmpw    r23, r9
    mtctr   r4
    slwi    r4, r23, 1
    bge-    branch_0x802c853c
branch_0x802c8530:
    sthx    r26, r5, r4
    addi    r4, r4, 0x2
    bdnz+      branch_0x802c8530
branch_0x802c853c:
    addi    r25, r25, 0x1
branch_0x802c8540:
    cmpw    r25, r10
    blt+    branch_0x802c84ac
    addi    r27, r27, 0x1
    cmpwi   r27, 0x6
    slwi    r28, r28, 1
    add     r30, r30, r12
    blt+    branch_0x802c848c
    lhz     r4, 0x8(r3)
    addi    r29, r29, 0x1
    cmpwi   r29, 0x7
    mullw   r4, r4, r10
    subf    r4, r31, r4
    slwi    r4, r4, 1
    add     r30, r30, r4
    blt+    branch_0x802c847c
    b       branch_0x802c858c

branch_0x802c8580:
    slwi    r4, r24, 1
    add     r5, r30, r4
    b       branch_0x802c851c

branch_0x802c858c:
    lmw     r23, 0x2c(sp)
    addi    sp, sp, 0x50
    blr


.globl changeFrameBuffer__14JUTDirectPrintFPvUsUs
changeFrameBuffer__14JUTDirectPrintFPvUsUs: # 0x802c8598
    stw     r4, 0x0(r3)
    addi    r0, r5, 0xf
    clrrwi  r0, r0, 4
    stw     r4, 0x14(r3)
    sth     r5, 0x4(r3)
    sth     r6, 0x6(r3)
    sth     r0, 0x8(r3)
    lhz     r4, 0x8(r3)
    lhz     r0, 0x6(r3)
    mullw   r0, r4, r0
    slwi    r0, r0, 1
    stw     r0, 0xc(r3)
    blr


.globl drawString__14JUTDirectPrintFUsUsPc
drawString__14JUTDirectPrintFUsUsPc: # 0x802c85cc
    mflr    r0
    addi    r7, r6, 0x0
    stw     r0, 0x4(sp)
    crxor   6, 6, 6
    addi    r6, rtoc, 0xe0
    stwu    sp, -0x8(sp)
    bl      drawString_f__14JUTDirectPrintFUsUsPCce
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl drawString_f__14JUTDirectPrintFUsUsPCce
drawString_f__14JUTDirectPrintFUsUsPCce: # 0x802c85f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a8(sp)
    stmw    r23, 0x184(sp)
    bne-    cr1, branch_0x802c862c
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x802c862c:
    stw     r3, 0x8(sp)
    mr      r24, r3
    addi    r25, r4, 0x0
    stw     r4, 0xc(sp)
    addi    r26, r5, 0x0
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    lwz     r0, 0x14(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802c876c
    lis     r0, 0x400
    stw     r0, 0x174(sp)
    addi    r0, sp, 0x1b0
    addi    r3, sp, 0x174
    stw     r0, 0x178(sp)
    addi    r0, sp, 0x8
    addi    r5, r6, 0x0
    stw     r0, 0x17c(sp)
    addi    r6, r3, 0x0
    addi    r3, sp, 0x74
    li      r4, 0x100
    bl      vsnprintf
    mr.     r29, r3
    addi    r28, r25, 0x0
    ble-    branch_0x802c8760
    lis     r4, 0x803e
    lis     r3, 0x2aab
    addi    r27, sp, 0x74
    clrlwi  r30, r25, 16
    addi    r31, r4, 0x288
    subi    r23, r3, 0x5555
    b       branch_0x802c8758

branch_0x802c86bc:
    lbz     r0, 0x0(r27)
    clrlwi  r0, r0, 25
    add     r3, r31, r0
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0xfe
    mr      r6, r0
    bne-    branch_0x802c86e4
    addi    r25, r28, 0x0
    addi    r26, r26, 0x7
    b       branch_0x802c873c

branch_0x802c86e4:
    cmpwi   r6, 0xfd
    bne-    branch_0x802c8720
    clrlwi  r5, r25, 16
    subf    r3, r30, r5
    addi    r4, r3, 0x2f
    mulhw   r0, r23, r4
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x30
    subf    r3, r0, r4
    addi    r0, r5, 0x30
    subf    r0, r3, r0
    clrlwi  r25, r0, 16
    b       branch_0x802c873c

branch_0x802c8720:
    cmpwi   r6, 0xff
    beq-    branch_0x802c8738
    addi    r3, r24, 0x0
    clrlwi  r4, r25, 16
    clrlwi  r5, r26, 16
    bl      drawChar__14JUTDirectPrintFiii
branch_0x802c8738:
    addi    r25, r25, 0x6
branch_0x802c873c:
    clrlwi  r0, r25, 16
    cmplwi  r0, 0x136
    ble-    branch_0x802c8750
    li      r25, 0x10
    addi    r26, r26, 0x8
branch_0x802c8750:
    subi    r29, r29, 0x1
    addi    r27, r27, 0x1
branch_0x802c8758:
    cmpwi   r29, 0x0
    bgt+    branch_0x802c86bc
branch_0x802c8760:
    lwz     r3, 0x14(r24)
    lwz     r4, 0xc(r24)
    bl      DCFlushRange
branch_0x802c876c:
    lmw     r23, 0x184(sp)
    lwz     r0, 0x1ac(sp)
    addi    sp, sp, 0x1a8
    mtlr    r0
    blr

