
.globl THPAudioDecode
THPAudioDecode: # 0x80372b84
    mflr    r0
    cmplwi  r3, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r20, 0x28(sp)
    addi    r31, r4, 0x0
    beq-    branch_0x80372ba8
    cmplwi  r31, 0x0
    bne-    branch_0x80372bb0
branch_0x80372ba8:
    li      r3, 0x0
    b       branch_0x80372fd4

branch_0x80372bb0:
    lwz     r0, 0x0(r31)
    cmpwi   r5, 0x1
    addi    r4, r31, 0x50
    add     r27, r31, r0
    addi    r27, r27, 0x50
    bne-    branch_0x80372be0
    lwz     r0, 0x4(r31)
    addi    r30, r3, 0x0
    li      r26, 0x1
    slwi    r0, r0, 1
    add     r29, r3, r0
    b       branch_0x80372bec

branch_0x80372be0:
    addi    r30, r3, 0x0
    addi    r29, r3, 0x2
    li      r26, 0x2
branch_0x80372bec:
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80372d48
    addi    r3, sp, 0x14
    bl      __THPAudioInitialize
    lis     r25, 0x1
    lha     r21, 0x48(r31)
    lis     r23, 0x8000
    lha     r20, 0x4a(r31)
    slwi    r27, r26, 1
    subi    r26, r25, 0x1
    subi    r24, r23, 0x1
    li      r22, 0x0
    b       branch_0x80372d38

branch_0x80372c24:
    addi    r3, sp, 0x14
    bl      __THPAudioGetNewSample
    lbz     r5, 0x1c(sp)
    extsh   r6, r20
    lbz     r0, 0x1d(sp)
    extsh   r4, r21
    slwi    r5, r5, 2
    add     r5, r31, r5
    lha     r7, 0xa(r5)
    slw     r0, r3, r0
    lha     r3, 0x8(r5)
    slwi    r5, r0, 11
    mullw   r6, r7, r6
    mullw   r4, r3, r4
    srawi   r3, r6, 31
    srawi   r0, r4, 31
    addc    r4, r6, r4
    adde    r3, r3, r0
    srawi   r0, r5, 31
    addc    r4, r4, r5
    adde    r3, r3, r0
    li      r5, 0x5
    bl      __shl2i
    and     r0, r4, r26
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x8000
    li      r6, 0x0
    and     r7, r3, r6
    ble-    branch_0x80372ca4
    addc    r4, r4, r25
    adde    r3, r3, r6
    b       branch_0x80372cc4

branch_0x80372ca4:
    bne-    branch_0x80372cc4
    and     r0, r4, r25
    xor     r5, r0, r6
    xor     r0, r7, r6
    or.     r0, r5, r0
    beq-    branch_0x80372cc4
    addc    r4, r4, r25
    adde    r3, r3, r6
branch_0x80372cc4:
    li      r0, 0x0
    xoris   r6, r0, 0x8000
    xoris   r5, r3, 0x8000
    subfc   r0, r4, r24
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80372cec
    subi    r4, r23, 0x1
    li      r3, 0x0
branch_0x80372cec:
    li      r0, -0x1
    xoris   r5, r0, 0x8000
    xoris   r6, r3, 0x8000
    subfc   r0, r23, r4
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80372d14
    lis     r4, 0x8000
    li      r3, -0x1
branch_0x80372d14:
    li      r5, 0x10
    bl      __shr2i
    sth     r4, 0x0(r29)
    mr      r20, r21
    addi    r21, r4, 0x0
    sth     r4, 0x0(r30)
    add     r29, r29, r27
    add     r30, r30, r27
    addi    r22, r22, 0x1
branch_0x80372d38:
    lwz     r0, 0x4(r31)
    cmplw   r22, r0
    blt+    branch_0x80372c24
    b       branch_0x80372fd0

branch_0x80372d48:
    addi    r3, sp, 0x14
    bl      __THPAudioInitialize
    lis     r24, 0x1
    lha     r22, 0x48(r31)
    lis     r25, 0x8000
    lha     r20, 0x4a(r31)
    slwi    r28, r26, 1
    subi    r23, r24, 0x1
    subi    r26, r25, 0x1
    li      r21, 0x0
    b       branch_0x80372e80

branch_0x80372d74:
    addi    r3, sp, 0x14
    bl      __THPAudioGetNewSample
    lbz     r5, 0x1c(sp)
    extsh   r6, r20
    lbz     r0, 0x1d(sp)
    extsh   r4, r22
    slwi    r5, r5, 2
    add     r5, r31, r5
    lha     r7, 0xa(r5)
    slw     r0, r3, r0
    lha     r3, 0x8(r5)
    slwi    r5, r0, 11
    mullw   r6, r7, r6
    mullw   r4, r3, r4
    srawi   r3, r6, 31
    srawi   r0, r4, 31
    addc    r4, r6, r4
    adde    r3, r3, r0
    srawi   r0, r5, 31
    addc    r4, r4, r5
    adde    r3, r3, r0
    li      r5, 0x5
    bl      __shl2i
    and     r0, r4, r23
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x8000
    li      r6, 0x0
    and     r7, r3, r6
    ble-    branch_0x80372df4
    addc    r4, r4, r24
    adde    r3, r3, r6
    b       branch_0x80372e14

branch_0x80372df4:
    bne-    branch_0x80372e14
    and     r0, r4, r24
    xor     r5, r0, r6
    xor     r0, r7, r6
    or.     r0, r5, r0
    beq-    branch_0x80372e14
    addc    r4, r4, r24
    adde    r3, r3, r6
branch_0x80372e14:
    li      r7, 0x0
    xoris   r6, r7, 0x8000
    xoris   r5, r3, 0x8000
    subfc   r0, r4, r26
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80372e3c
    subi    r4, r25, 0x1
    addi    r3, r7, 0x0
branch_0x80372e3c:
    li      r7, -0x1
    xoris   r6, r3, 0x8000
    xoris   r5, r7, 0x8000
    subfc   r0, r25, r4
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80372e64
    lis     r4, 0x8000
    addi    r3, r7, 0x0
branch_0x80372e64:
    li      r5, 0x10
    bl      __shr2i
    sth     r4, 0x0(r29)
    addi    r20, r22, 0x0
    addi    r22, r4, 0x0
    add     r29, r29, r28
    addi    r21, r21, 0x1
branch_0x80372e80:
    lwz     r0, 0x4(r31)
    cmplw   r21, r0
    blt+    branch_0x80372d74
    addi    r3, sp, 0x14
    addi    r4, r27, 0x0
    bl      __THPAudioInitialize
    lis     r26, 0x1
    lha     r23, 0x4c(r31)
    lis     r27, 0x8000
    lha     r21, 0x4e(r31)
    subi    r25, r26, 0x1
    subi    r29, r27, 0x1
    li      r22, 0x0
    b       branch_0x80372fc4

branch_0x80372eb8:
    addi    r3, sp, 0x14
    bl      __THPAudioGetNewSample
    lbz     r5, 0x1c(sp)
    extsh   r6, r21
    lbz     r0, 0x1d(sp)
    extsh   r4, r23
    slwi    r5, r5, 2
    add     r5, r31, r5
    lha     r7, 0x2a(r5)
    slw     r0, r3, r0
    lha     r3, 0x28(r5)
    slwi    r5, r0, 11
    mullw   r6, r7, r6
    mullw   r4, r3, r4
    srawi   r3, r6, 31
    srawi   r0, r4, 31
    addc    r4, r6, r4
    adde    r3, r3, r0
    srawi   r0, r5, 31
    addc    r4, r4, r5
    adde    r3, r3, r0
    li      r5, 0x5
    bl      __shl2i
    and     r0, r4, r25
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x8000
    li      r6, 0x0
    and     r7, r3, r6
    ble-    branch_0x80372f38
    addc    r4, r4, r26
    adde    r3, r3, r6
    b       branch_0x80372f58

branch_0x80372f38:
    bne-    branch_0x80372f58
    and     r0, r4, r26
    xor     r5, r0, r6
    xor     r0, r7, r6
    or.     r0, r5, r0
    beq-    branch_0x80372f58
    addc    r4, r4, r26
    adde    r3, r3, r6
branch_0x80372f58:
    li      r7, 0x0
    xoris   r6, r7, 0x8000
    xoris   r5, r3, 0x8000
    subfc   r0, r4, r29
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80372f80
    subi    r4, r27, 0x1
    addi    r3, r7, 0x0
branch_0x80372f80:
    li      r7, -0x1
    xoris   r6, r3, 0x8000
    xoris   r5, r7, 0x8000
    subfc   r0, r27, r4
    subfe   r5, r5, r6
    subfe   r5, r6, r6
    neg.    r5, r5
    beq-    branch_0x80372fa8
    lis     r4, 0x8000
    addi    r3, r7, 0x0
branch_0x80372fa8:
    li      r5, 0x10
    bl      __shr2i
    sth     r4, 0x0(r30)
    addi    r21, r23, 0x0
    addi    r23, r4, 0x0
    add     r30, r30, r28
    addi    r22, r22, 0x1
branch_0x80372fc4:
    lwz     r0, 0x4(r31)
    cmplw   r22, r0
    blt+    branch_0x80372eb8
branch_0x80372fd0:
    lwz     r3, 0x4(r31)
branch_0x80372fd4:
    lmw     r20, 0x28(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __THPAudioGetNewSample
__THPAudioGetNewSample: # 0x80372fe8
    lwz     r0, 0x4(r3)
    clrlwi. r0, r0, 28
    bne-    branch_0x8037302c
    lwz     r4, 0x0(r3)
    lbz     r0, 0x0(r4)
    extrwi  r0, r0, 3, 25
    stb     r0, 0x8(r3)
    lwz     r4, 0x0(r3)
    lbz     r0, 0x0(r4)
    clrlwi  r0, r0, 28
    stb     r0, 0x9(r3)
    lwz     r4, 0x0(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r3)
    lwz     r4, 0x4(r3)
    addi    r0, r4, 0x2
    stw     r0, 0x4(r3)
branch_0x8037302c:
    lwz     r0, 0x4(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80373054
    lwz     r5, 0x0(r3)
    lbz     r4, 0x0(r5)
    addi    r0, r5, 0x1
    stw     r0, 0x0(r3)
    slwi    r0, r4, 28
    srawi   r5, r0, 28
    b       branch_0x80373064

branch_0x80373054:
    lwz     r4, 0x0(r3)
    lbz     r0, 0x0(r4)
    extlwi  r0, r0, 4, 24
    srawi   r5, r0, 28
branch_0x80373064:
    lwz     r4, 0x4(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r3)
    mr      r3, r5
    blr


.globl __THPAudioInitialize
__THPAudioInitialize: # 0x80373078
    stw     r4, 0x0(r3)
    li      r0, 0x2
    stw     r0, 0x4(r3)
    lwz     r4, 0x0(r3)
    lbz     r0, 0x0(r4)
    extrwi  r0, r0, 3, 25
    stb     r0, 0x8(r3)
    lwz     r4, 0x0(r3)
    lbz     r0, 0x0(r4)
    clrlwi  r0, r0, 28
    stb     r0, 0x9(r3)
    lwz     r4, 0x0(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x0(r3)
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x36dab4, 0x803730c0 - 0x803730b4
