
.globl __num2dec
__num2dec: # 0x80338a84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f1
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    mr      r29, r3
    lha     r0, 0x2(r3)
    cmpwi   r0, 0x10
    mr      r31, r0
    ble-    branch_0x80338ac0
    li      r31, 0x10
branch_0x80338ac0:
    li      r3, 0x0
    stb     r3, 0x0(r30)
    li      r0, 0x1
    sth     r3, 0x2(r30)
    stb     r0, 0x4(r30)
    lfd     f0, 0x9b0(r2)
    fcmpu   cr0, f0, f31
    bne-    branch_0x80338aec
    li      r0, 0x30
    stb     r0, 0x5(r30)
    b       branch_0x80338e18

branch_0x80338aec:
    stfd    f31, 0x28(sp)
    lis     r0, 0x7ff0
    lwz     r4, 0x28(sp)
    rlwinm  r3, r4, 0, 1, 11
    cmpw    r3, r0
    beq-    branch_0x80338b14
    bge-    branch_0x80338b5c
    cmpwi   r3, 0x0
    beq-    branch_0x80338b38
    b       branch_0x80338b5c

branch_0x80338b14:
    clrlwi. r0, r4, 12
    bne-    branch_0x80338b28
    lwz     r0, 0x2c(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x80338b30
branch_0x80338b28:
    li      r0, 0x1
    b       branch_0x80338b60

branch_0x80338b30:
    li      r0, 0x2
    b       branch_0x80338b60

branch_0x80338b38:
    clrlwi. r0, r4, 12
    bne-    branch_0x80338b4c
    lwz     r0, 0x2c(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x80338b54
branch_0x80338b4c:
    li      r0, 0x5
    b       branch_0x80338b60

branch_0x80338b54:
    li      r0, 0x3
    b       branch_0x80338b60

branch_0x80338b5c:
    li      r0, 0x4
branch_0x80338b60:
    cmpwi   r0, 0x2
    bgt-    branch_0x80338bf8
    stfd    f31, 0x20(sp)
    lis     r0, 0x7ff0
    lwz     r4, 0x20(sp)
    rlwinm  r3, r4, 0, 1, 11
    cmpw    r3, r0
    beq-    branch_0x80338b90
    bge-    branch_0x80338bd8
    cmpwi   r3, 0x0
    beq-    branch_0x80338bb4
    b       branch_0x80338bd8

branch_0x80338b90:
    clrlwi. r0, r4, 12
    bne-    branch_0x80338ba4
    lwz     r0, 0x24(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x80338bac
branch_0x80338ba4:
    li      r0, 0x1
    b       branch_0x80338bdc

branch_0x80338bac:
    li      r0, 0x2
    b       branch_0x80338bdc

branch_0x80338bb4:
    clrlwi. r0, r4, 12
    bne-    branch_0x80338bc8
    lwz     r0, 0x24(sp)
    cmpwi   r0, 0x0
    beq-    branch_0x80338bd0
branch_0x80338bc8:
    li      r0, 0x5
    b       branch_0x80338bdc

branch_0x80338bd0:
    li      r0, 0x3
    b       branch_0x80338bdc

branch_0x80338bd8:
    li      r0, 0x4
branch_0x80338bdc:
    cmpwi   r0, 0x1
    bne-    branch_0x80338bec
    li      r0, 0x4e
    b       branch_0x80338bf0

branch_0x80338bec:
    li      r0, 0x49
branch_0x80338bf0:
    stb     r0, 0x5(r30)
    b       branch_0x80338e18

branch_0x80338bf8:
    li      r0, 0x0
    stb     r0, 0x4(r30)
    lfd     f0, 0x9b0(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x80338c18
    li      r0, 0x1
    fneg    f31, f31
    stb     r0, 0x0(r30)
branch_0x80338c18:
    fmr     f1, f31
    addi    r3, sp, 0x30
    bl      frexp
    lis     r3, unk_000497e5@ha
    lwz     r4, 0x30(sp)
    addi    r0, r3, unk_000497e5@l
    mullw   r0, r4, r0
    lis     r3, unk_431bde83@ha
    addi    r3, r3, unk_431bde83@l
    mulhw   r0, r3, r0
    srawi   r0, r0, 18
    srwi    r3, r0, 31
    add.    r4, r0, r3
    lis     r3, unk_803aa900@ha
    addi    r0, r3, unk_803aa900@l
    addi    r3, r4, 0x0
    mr      r5, r0
    bge-    branch_0x80338c8c
    neg     r4, r4
    b       branch_0x80338c80

branch_0x80338c68:
    clrlwi. r0, r4, 31
    beq-    branch_0x80338c78
    lfd     f0, 0x0(r5)
    fmul    f31, f31, f0
branch_0x80338c78:
    srawi   r4, r4, 1
    addi    r5, r5, 0x8
branch_0x80338c80:
    cmpwi   r4, 0x0
    bne+    branch_0x80338c68
    b       branch_0x80338cbc

branch_0x80338c8c:
    ble-    branch_0x80338cbc
    lfd     f1, 0x9b8(r2)
    b       branch_0x80338cb0

branch_0x80338c98:
    clrlwi. r0, r4, 31
    beq-    branch_0x80338ca8
    lfd     f0, 0x0(r5)
    fmul    f1, f1, f0
branch_0x80338ca8:
    srawi   r4, r4, 1
    addi    r5, r5, 0x8
branch_0x80338cb0:
    cmpwi   r4, 0x0
    bne+    branch_0x80338c98
    fdiv    f31, f31, f1
branch_0x80338cbc:
    lfd     f1, 0x9c8(r2)
    lfd     f0, 0x9b8(r2)
    b       branch_0x80338cd0

branch_0x80338cc8:
    fmul    f31, f31, f1
    addi    r3, r3, 0x1
branch_0x80338cd0:
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    beq+    branch_0x80338cc8
    lfd     f1, 0x9d0(r2)
    lfd     f0, 0x9c8(r2)
    b       branch_0x80338cf0

branch_0x80338ce8:
    fmul    f31, f31, f1
    addi    r3, r3, -0x1
branch_0x80338cf0:
    fcmpo   cr0, f31, f0
    blt+    branch_0x80338ce8
    lis     r5, unk_66666667@h
    lfd     f1, 0x9c0(r2)
    lis     r6, unk_803aa948@ha
    addi    r4, r30, 0x5
    addi    r7, r5, unk_66666667@l
    addi    r10, r6, unk_803aa948@l
    lis     r9, 0x4330
    b       branch_0x80338dc0

branch_0x80338d18:
    cmpwi   r31, 0x8
    addi    r12, r31, 0x0
    ble-    branch_0x80338d28
    li      r12, 0x8
branch_0x80338d28:
    lbz     r6, 0x4(r30)
    slwi    r0, r12, 3
    add     r5, r10, r0
    add     r0, r6, r12
    stb     r0, 0x4(r30)
    subf    r31, r12, r31
    subf    r3, r12, r3
    lfd     f0, -0x8(r5)
    add     r4, r4, r12
    addi    r11, r12, 0x1
    fmul    f31, f31, f0
    fctiwz  f0, f31
    stfd    f0, 0x40(sp)
    lwz     r0, 0x44(sp)
    stfd    f0, 0x48(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x3c(sp)
    lwz     r6, 0x4c(sp)
    stw     r9, 0x38(sp)
    lfd     f0, 0x38(sp)
    fsub    f0, f0, f1
    fsub    f31, f31, f0
    b       branch_0x80338db4

branch_0x80338d84:
    mulhw   r8, r7, r6
    srawi   r0, r8, 2
    srwi    r5, r0, 31
    add     r0, r0, r5
    mulli   r0, r0, 0xa
    subf    r6, r0, r6
    srawi   r0, r8, 2
    addi    r6, r6, 0x30
    stb     r6, -0x1(r4)
    srwi    r5, r0, 31
    add     r6, r0, r5
    addi    r4, r4, -0x1
branch_0x80338db4:
    subic.  r11, r11, 0x1
    bne+    branch_0x80338d84
    add     r4, r4, r12
branch_0x80338dc0:
    cmpwi   r31, 0x0
    bne+    branch_0x80338d18
    lha     r5, 0x2(r29)
    cmpwi   r5, 0x24
    ble-    branch_0x80338dd8
    li      r5, 0x24
branch_0x80338dd8:
    lbz     r0, 0x4(r30)
    subf.   r5, r0, r5
    ble-    branch_0x80338e10
    addi    r6, r5, 0x1
    li      r0, 0x30
    b       branch_0x80338df8

branch_0x80338df0:
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
branch_0x80338df8:
    subic.  r6, r6, 0x1
    bne+    branch_0x80338df0
    lbz     r0, 0x4(r30)
    subf    r3, r5, r3
    add     r0, r0, r5
    stb     r0, 0x4(r30)
branch_0x80338e10:
    extsh   r0, r3
    sth     r0, 0x2(r30)
branch_0x80338e18:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x68
    blr

