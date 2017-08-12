
.globl fwrite
fwrite: # 0x80338f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r26, r4, 0x0
    addi    r27, r6, 0x0
    addi    r28, r3, 0x0
    addi    r25, r5, 0x0
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      fwide
    cmpwi   r3, 0x0
    bne-    branch_0x80338fcc
    addi    r3, r27, 0x0
    li      r4, -0x1
    bl      fwide
branch_0x80338fcc:
    mullw.  r0, r26, r25
    mr      r29, r0
    beq-    branch_0x80338ff0
    lbz     r0, 0xa(r27)
    cmplwi  r0, 0x0
    bne-    branch_0x80338ff0
    lhz     r0, 0x4(r27)
    extrwi. r0, r0, 3, 23
    bne-    branch_0x80338ff8
branch_0x80338ff0:
    li      r3, 0x0
    b       branch_0x80339254

branch_0x80338ff8:
    cmpwi   r0, 0x2
    bne-    branch_0x80339004
    bl      __stdio_atexit
branch_0x80339004:
    lbz     r0, 0x5(r27)
    li      r31, 0x1
    addi    r3, r31, 0x0
    extrwi. r0, r0, 1, 28
    addi    r4, r31, 0x0
    beq-    branch_0x80339030
    lhz     r0, 0x4(r27)
    extrwi  r0, r0, 3, 23
    cmpwi   r0, 0x3
    beq-    branch_0x80339030
    li      r4, 0x0
branch_0x80339030:
    cmpwi   r4, 0x0
    bne-    branch_0x8033904c
    lbz     r0, 0x4(r27)
    extrwi  r0, r0, 2, 29
    cmplwi  r0, 0x2
    beq-    branch_0x8033904c
    li      r3, 0x0
branch_0x8033904c:
    cmpwi   r3, 0x0
    bne-    branch_0x80339068
    lbz     r0, 0x4(r27)
    extrwi  r0, r0, 2, 29
    cmplwi  r0, 0x1
    beq-    branch_0x80339068
    li      r31, 0x0
branch_0x80339068:
    lbz     r3, 0x8(r27)
    extrwi. r0, r3, 3, 24
    bne-    branch_0x80339094
    lbz     r0, 0x4(r27)
    rlwinm. r0, r0, 29, 30, 30
    beq-    branch_0x80339094
    li      r0, 0x1
    insrwi  r3, r0, 3, 24
    stb     r3, 0x8(r27)
    mr      r3, r27
    bl      __prep_buffer
branch_0x80339094:
    lbz     r0, 0x8(r27)
    extrwi  r0, r0, 3, 24
    cmplwi  r0, 0x1
    beq-    branch_0x803390bc
    li      r0, 0x1
    stb     r0, 0xa(r27)
    li      r0, 0x0
    li      r3, 0x0
    stw     r0, 0x24(r27)
    b       branch_0x80339254

branch_0x803390bc:
    cmplwi  r29, 0x0
    addi    r30, r28, 0x0
    li      r28, 0x0
    beq-    branch_0x803391c4
    lwz     r4, 0x20(r27)
    lwz     r3, 0x18(r27)
    cmplw   r4, r3
    bne-    branch_0x803390e4
    cmpwi   r31, 0x0
    beq-    branch_0x803391c4
branch_0x803390e4:
    lwz     r0, 0x1c(r27)
    subf    r3, r3, r4
    subf    r0, r3, r0
    stw     r0, 0x24(r27)
branch_0x803390f4:
    lwz     r0, 0x24(r27)
    stw     r0, 0x20(sp)
    lwz     r0, 0x20(sp)
    cmplw   r0, r29
    ble-    branch_0x8033910c
    stw     r29, 0x20(sp)
branch_0x8033910c:
    lwz     r5, 0x20(sp)
    cmplwi  r5, 0x0
    beq-    branch_0x80339150
    lwz     r3, 0x20(r27)
    mr      r4, r30
    bl      memcpy
    lwz     r3, 0x20(sp)
    lwz     r0, 0x20(r27)
    add     r30, r30, r3
    add     r0, r0, r3
    stw     r0, 0x20(r27)
    add     r28, r28, r3
    subf    r29, r3, r29
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(r27)
    subf    r0, r3, r0
    stw     r0, 0x24(r27)
branch_0x80339150:
    lwz     r3, 0x24(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x80339174
    lhz     r0, 0x4(r27)
    extrwi  r0, r0, 3, 23
    cmpwi   r0, 0x3
    bne-    branch_0x80339174
    add     r28, r28, r29
    b       branch_0x803391c4

branch_0x80339174:
    cmplwi  r3, 0x0
    beq-    branch_0x80339188
    lbz     r0, 0x4(r27)
    extrwi. r0, r0, 2, 29
    bne-    branch_0x803391b4
branch_0x80339188:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      __flush_buffer
    cmpwi   r3, 0x0
    beq-    branch_0x803391b4
    li      r0, 0x1
    stb     r0, 0xa(r27)
    li      r0, 0x0
    li      r29, 0x0
    stw     r0, 0x24(r27)
    b       branch_0x803391c4

branch_0x803391b4:
    cmplwi  r29, 0x0
    beq-    branch_0x803391c4
    cmpwi   r31, 0x0
    bne+    branch_0x803390f4
branch_0x803391c4:
    cmplwi  r29, 0x0
    beq-    branch_0x80339230
    cmpwi   r31, 0x0
    bne-    branch_0x80339230
    lwz     r31, 0x18(r27)
    add     r0, r30, r29
    lwz     r25, 0x1c(r27)
    addi    r3, r27, 0x0
    addi    r4, sp, 0x20
    stw     r30, 0x18(r27)
    stw     r29, 0x1c(r27)
    stw     r0, 0x20(r27)
    bl      __flush_buffer
    cmpwi   r3, 0x0
    beq-    branch_0x80339210
    li      r0, 0x1
    stb     r0, 0xa(r27)
    li      r0, 0x0
    stw     r0, 0x24(r27)
branch_0x80339210:
    lwz     r0, 0x20(sp)
    mr      r3, r27
    stw     r31, 0x18(r27)
    add     r28, r28, r0
    stw     r25, 0x1c(r27)
    bl      __prep_buffer
    li      r0, 0x0
    stw     r0, 0x24(r27)
branch_0x80339230:
    lbz     r0, 0x4(r27)
    extrwi  r0, r0, 2, 29
    cmplwi  r0, 0x2
    beq-    branch_0x80339248
    li      r0, 0x0
    stw     r0, 0x24(r27)
branch_0x80339248:
    addi    r0, r26, -0x1
    add     r0, r28, r0
    divwu   r3, r0, r26
branch_0x80339254:
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr

