
.globl powf
powf: # 0x8033c9b8
    stwu    sp, -0x90(sp)
    lis     r3, unk_803ab310@ha
    addi    r3, r3, unk_803ab310@l
    lfs     f3, 0xab8(r2)
    fcmpo   cr0, f1, f3
    ble-    branch_0x8033cbb0
    stfs    f1, 0x60(sp)
    lwz     r0, R2Off_0xaa8(r2)
    lwz     r9, 0x60(sp)
    stw     r0, 0x68(sp)
    lwz     r5, R2Off_0xaac(r2)
    clrlwi. r0, r9, 16
    srwi    r4, r9, 23
    stw     r5, 0x6c(sp)
    clrlwi  r6, r9, 9
    addi    r8, r4, -0x80
    extrwi  r7, r9, 7, 9
    beq-    branch_0x8033cab0
    rlwinm  r4, r9, 0, 9, 15
    oris    r5, r4, 0x3f80
    oris    r4, r6, 0x3f80
    stw     r5, 0x64(sp)
    rlwinm. r0, r9, 0, 16, 16
    stw     r4, 0x74(sp)
    beq-    branch_0x8033ca2c
    lwz     r4, 0x64(sp)
    addi    r7, r7, 0x1
    addis   r0, r4, 0x1
    stw     r0, 0x64(sp)
branch_0x8033ca2c:
    lis     r4, unk_803ab0c0@ha
    lfs     f3, 0x74(sp)
    lfs     f0, 0x64(sp)
    slwi    r5, r7, 2
    addi    r0, r4, unk_803ab0c0@l
    lfs     f1, 0x6c(sp)
    add     r4, r0, r5
    fsubs   f8, f3, f0
    lfs     f3, 0x0(r4)
    addi    r4, r2, R2Off_0xaa0
    lfs     f0, 0x68(sp)
    xoris   r0, r8, 0x8000
    fmuls   f8, f8, f3
    lfs     f4, 0x4(r4)
    stw     r0, 0x8c(sp)
    lis     r0, 0x4330
    lfs     f5, 0xaa0(r2)
    fmuls   f3, f8, f8
    stw     r0, 0x88(sp)
    fmadds  f0, f8, f1, f0
    lfd     f6, 0xad0(r2)
    lfd     f1, 0x88(sp)
    fmuls   f0, f3, f0
    lfs     f7, 0xabc(r2)
    fsubs   f3, f1, f6
    lfsx    f1, r3, r5
    fmadds  f0, f4, f8, f0
    fadds   f3, f7, f3
    fmadds  f0, f5, f8, f0
    fadds   f0, f8, f0
    fadds   f0, f1, f0
    fadds   f0, f3, f0
    b       branch_0x8033cae0

branch_0x8033cab0:
    xoris   r0, r8, 0x8000
    lfd     f3, 0xad0(r2)
    stw     r0, 0x8c(sp)
    lis     r4, 0x4330
    slwi    r0, r7, 2
    lfs     f4, 0xabc(r2)
    stw     r4, 0x88(sp)
    lfsx    f0, r3, r0
    lfd     f1, 0x88(sp)
    fsubs   f1, f1, f3
    fadds   f1, f4, f1
    fadds   f0, f1, f0
branch_0x8033cae0:
    fmuls   f2, f2, f0
    lis     r0, 0x4330
    lfd     f1, 0xad0(r2)
    fctiwz  f0, f2
    stfd    f0, 0x88(sp)
    lwz     r4, 0x8c(sp)
    stw     r4, 0x58(sp)
    lwz     r5, 0x58(sp)
    xoris   r4, r5, 0x8000
    stw     r4, 0x84(sp)
    cmpwi   r5, 0x80
    stw     r0, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fsubs   f9, f2, f0
    ble-    branch_0x8033cb28
    lfs     f1, 0xab0(r2)
    b       branch_0x8033d0f0

branch_0x8033cb28:
    cmpwi   r5, -0x7f
    bge-    branch_0x8033cb38
    lfs     f1, 0xab8(r2)
    b       branch_0x8033d0f0

branch_0x8033cb38:
    addi    r0, r5, 0x7f
    lfs     f6, 0xac4(r2)
    stw     r0, 0x58(sp)
    lfs     f7, 0xac0(r2)
    lwz     r0, 0x58(sp)
    slwi    r0, r0, 23
    stw     r0, 0x58(sp)
    lfs     f2, 0x224(r3)
    lfs     f0, 0x220(r3)
    lfs     f1, 0x21c(r3)
    fmadds  f2, f9, f2, f0
    lfs     f0, 0x218(r3)
    lfs     f4, 0x214(r3)
    lfs     f3, 0x210(r3)
    fmadds  f5, f9, f2, f1
    lfs     f2, 0x20c(r3)
    lfs     f1, 0x208(r3)
    fmadds  f5, f9, f5, f0
    lfs     f0, 0x204(r3)
    lfs     f8, 0x58(sp)
    fmadds  f4, f9, f5, f4
    fmadds  f3, f9, f4, f3
    fmadds  f2, f9, f3, f2
    fmadds  f1, f9, f2, f1
    fmadds  f0, f9, f1, f0
    fmuls   f0, f9, f0
    fadds   f0, f6, f0
    fadds   f0, f7, f0
    fmuls   f1, f8, f0
    b       branch_0x8033d0f0

branch_0x8033cbb0:
    bge-    branch_0x8033cfc8
    fctiwz  f0, f2
    lis     r5, 0x4330
    lfd     f4, 0xad0(r2)
    stfd    f0, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stfd    f0, 0x80(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0x7c(sp)
    lwz     r4, 0x84(sp)
    stw     r5, 0x78(sp)
    lfd     f0, 0x78(sp)
    fsubs   f0, f0, f4
    fsubs   f0, f2, f0
    fcmpu   cr0, f0, f3
    beq-    branch_0x8033cbf8
    lfs     f1, 0xab4(r2)
    b       branch_0x8033d0f0

branch_0x8033cbf8:
    srawi   r0, r4, 1
    addze   r0, r0
    slwi    r0, r0, 1
    subfc.  r0, r0, r4
    beq-    branch_0x8033cdec
    fneg    f0, f1
    lwz     r4, R2Off_0xaa8(r2)
    lwz     r0, R2Off_0xaac(r2)
    stw     r4, 0x48(sp)
    stfs    f0, 0x40(sp)
    lwz     r9, 0x40(sp)
    stw     r0, 0x4c(sp)
    srwi    r4, r9, 23
    clrlwi. r0, r9, 16
    clrlwi  r6, r9, 9
    addi    r8, r4, -0x80
    extrwi  r7, r9, 7, 9
    beq-    branch_0x8033ccf0
    rlwinm  r4, r9, 0, 9, 15
    oris    r5, r4, 0x3f80
    oris    r4, r6, 0x3f80
    stw     r5, 0x44(sp)
    rlwinm. r0, r9, 0, 16, 16
    stw     r4, 0x54(sp)
    beq-    branch_0x8033cc6c
    lwz     r4, 0x44(sp)
    addi    r7, r7, 0x1
    addis   r0, r4, 0x1
    stw     r0, 0x44(sp)
branch_0x8033cc6c:
    lis     r4, unk_803ab0c0@ha
    lfs     f3, 0x54(sp)
    lfs     f0, 0x44(sp)
    slwi    r5, r7, 2
    addi    r0, r4, unk_803ab0c0@l
    lfs     f1, 0x4c(sp)
    add     r4, r0, r5
    fsubs   f8, f3, f0
    lfs     f3, 0x0(r4)
    addi    r4, r2, R2Off_0xaa0
    lfs     f0, 0x48(sp)
    xoris   r0, r8, 0x8000
    fmuls   f8, f8, f3
    lfs     f4, 0x4(r4)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f5, 0xaa0(r2)
    fmuls   f3, f8, f8
    stw     r0, 0x78(sp)
    fmadds  f0, f8, f1, f0
    lfd     f6, 0xad0(r2)
    lfd     f1, 0x78(sp)
    fmuls   f0, f3, f0
    lfs     f7, 0xabc(r2)
    fsubs   f3, f1, f6
    lfsx    f1, r3, r5
    fmadds  f0, f4, f8, f0
    fadds   f3, f7, f3
    fmadds  f0, f5, f8, f0
    fadds   f0, f8, f0
    fadds   f0, f1, f0
    fadds   f0, f3, f0
    b       branch_0x8033cd18

branch_0x8033ccf0:
    xoris   r0, r8, 0x8000
    lfs     f3, 0xabc(r2)
    stw     r0, 0x7c(sp)
    slwi    r0, r7, 2
    lfsx    f0, r3, r0
    stw     r5, 0x78(sp)
    lfd     f1, 0x78(sp)
    fsubs   f1, f1, f4
    fadds   f1, f3, f1
    fadds   f0, f1, f0
branch_0x8033cd18:
    fmuls   f2, f2, f0
    lis     r0, 0x4330
    lfd     f1, 0xad0(r2)
    fctiwz  f0, f2
    stfd    f0, 0x78(sp)
    lwz     r4, 0x7c(sp)
    stw     r4, 0x38(sp)
    lwz     r5, 0x38(sp)
    xoris   r4, r5, 0x8000
    stw     r4, 0x84(sp)
    cmpwi   r5, 0x80
    stw     r0, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fsubs   f9, f2, f0
    ble-    branch_0x8033cd60
    lfs     f0, 0xab0(r2)
    b       branch_0x8033cde4

branch_0x8033cd60:
    cmpwi   r5, -0x7f
    bge-    branch_0x8033cd70
    lfs     f0, 0xab8(r2)
    b       branch_0x8033cde4

branch_0x8033cd70:
    addi    r0, r5, 0x7f
    lfs     f6, 0xac4(r2)
    stw     r0, 0x38(sp)
    lfs     f7, 0xac0(r2)
    lwz     r0, 0x38(sp)
    slwi    r0, r0, 23
    stw     r0, 0x38(sp)
    lfs     f2, 0x224(r3)
    lfs     f0, 0x220(r3)
    lfs     f1, 0x21c(r3)
    fmadds  f2, f9, f2, f0
    lfs     f0, 0x218(r3)
    lfs     f4, 0x214(r3)
    lfs     f3, 0x210(r3)
    fmadds  f5, f9, f2, f1
    lfs     f2, 0x20c(r3)
    lfs     f1, 0x208(r3)
    fmadds  f5, f9, f5, f0
    lfs     f0, 0x204(r3)
    lfs     f8, 0x38(sp)
    fmadds  f4, f9, f5, f4
    fmadds  f3, f9, f4, f3
    fmadds  f2, f9, f3, f2
    fmadds  f1, f9, f2, f1
    fmadds  f0, f9, f1, f0
    fmuls   f0, f9, f0
    fadds   f0, f6, f0
    fadds   f0, f7, f0
    fmuls   f0, f8, f0
branch_0x8033cde4:
    fneg    f1, f0
    b       branch_0x8033d0f0

branch_0x8033cdec:
    fneg    f0, f1
    lwz     r4, R2Off_0xaa8(r2)
    lwz     r0, R2Off_0xaac(r2)
    stw     r4, 0x28(sp)
    stfs    f0, 0x20(sp)
    lwz     r9, 0x20(sp)
    stw     r0, 0x2c(sp)
    srwi    r4, r9, 23
    clrlwi. r0, r9, 16
    clrlwi  r6, r9, 9
    addi    r8, r4, -0x80
    extrwi  r7, r9, 7, 9
    beq-    branch_0x8033ced0
    rlwinm  r4, r9, 0, 9, 15
    oris    r5, r4, 0x3f80
    oris    r4, r6, 0x3f80
    stw     r5, 0x24(sp)
    rlwinm. r0, r9, 0, 16, 16
    stw     r4, 0x34(sp)
    beq-    branch_0x8033ce4c
    lwz     r4, 0x24(sp)
    addi    r7, r7, 0x1
    addis   r0, r4, 0x1
    stw     r0, 0x24(sp)
branch_0x8033ce4c:
    lis     r4, unk_803ab0c0@ha
    lfs     f3, 0x34(sp)
    lfs     f0, 0x24(sp)
    slwi    r5, r7, 2
    addi    r0, r4, unk_803ab0c0@l
    lfs     f1, 0x2c(sp)
    add     r4, r0, r5
    fsubs   f8, f3, f0
    lfs     f3, 0x0(r4)
    addi    r4, r2, R2Off_0xaa0
    lfs     f0, 0x28(sp)
    xoris   r0, r8, 0x8000
    fmuls   f8, f8, f3
    lfs     f4, 0x4(r4)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f5, 0xaa0(r2)
    fmuls   f3, f8, f8
    stw     r0, 0x78(sp)
    fmadds  f0, f8, f1, f0
    lfd     f6, 0xad0(r2)
    lfd     f1, 0x78(sp)
    fmuls   f0, f3, f0
    lfs     f7, 0xabc(r2)
    fsubs   f3, f1, f6
    lfsx    f1, r3, r5
    fmadds  f0, f4, f8, f0
    fadds   f3, f7, f3
    fmadds  f0, f5, f8, f0
    fadds   f0, f8, f0
    fadds   f0, f1, f0
    fadds   f0, f3, f0
    b       branch_0x8033cef8

branch_0x8033ced0:
    xoris   r0, r8, 0x8000
    lfs     f3, 0xabc(r2)
    stw     r0, 0x7c(sp)
    slwi    r0, r7, 2
    lfsx    f0, r3, r0
    stw     r5, 0x78(sp)
    lfd     f1, 0x78(sp)
    fsubs   f1, f1, f4
    fadds   f1, f3, f1
    fadds   f0, f1, f0
branch_0x8033cef8:
    fmuls   f2, f2, f0
    lis     r0, 0x4330
    lfd     f1, 0xad0(r2)
    fctiwz  f0, f2
    stfd    f0, 0x78(sp)
    lwz     r4, 0x7c(sp)
    stw     r4, 0x18(sp)
    lwz     r5, 0x18(sp)
    xoris   r4, r5, 0x8000
    stw     r4, 0x84(sp)
    cmpwi   r5, 0x80
    stw     r0, 0x80(sp)
    lfd     f0, 0x80(sp)
    fsubs   f0, f0, f1
    fsubs   f9, f2, f0
    ble-    branch_0x8033cf40
    lfs     f1, 0xab0(r2)
    b       branch_0x8033d0f0

branch_0x8033cf40:
    cmpwi   r5, -0x7f
    bge-    branch_0x8033cf50
    lfs     f1, 0xab8(r2)
    b       branch_0x8033d0f0

branch_0x8033cf50:
    addi    r0, r5, 0x7f
    lfs     f6, 0xac4(r2)
    stw     r0, 0x18(sp)
    lfs     f7, 0xac0(r2)
    lwz     r0, 0x18(sp)
    slwi    r0, r0, 23
    stw     r0, 0x18(sp)
    lfs     f2, 0x224(r3)
    lfs     f0, 0x220(r3)
    lfs     f1, 0x21c(r3)
    fmadds  f2, f9, f2, f0
    lfs     f0, 0x218(r3)
    lfs     f4, 0x214(r3)
    lfs     f3, 0x210(r3)
    fmadds  f5, f9, f2, f1
    lfs     f2, 0x20c(r3)
    lfs     f1, 0x208(r3)
    fmadds  f5, f9, f5, f0
    lfs     f0, 0x204(r3)
    lfs     f8, 0x18(sp)
    fmadds  f4, f9, f5, f4
    fmadds  f3, f9, f4, f3
    fmadds  f2, f9, f3, f2
    fmadds  f1, f9, f2, f1
    fmadds  f0, f9, f1, f0
    fmuls   f0, f9, f0
    fadds   f0, f6, f0
    fadds   f0, f7, f0
    fmuls   f1, f8, f0
    b       branch_0x8033d0f0

branch_0x8033cfc8:
    stfs    f1, 0x14(sp)
    lis     r0, unk_7f800001@h
    lwz     r4, 0x14(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x8033cff0
    bge-    branch_0x8033d020
    cmpwi   r3, 0x0
    beq-    branch_0x8033d008
    b       branch_0x8033d020

branch_0x8033cff0:
    clrlwi. r0, r4, 9
    beq-    branch_0x8033d000
    addi    r0, r0, unk_7f800001@l
    b       branch_0x8033d024

branch_0x8033d000:
    li      r0, 0x2
    b       branch_0x8033d024

branch_0x8033d008:
    clrlwi. r0, r4, 9
    beq-    branch_0x8033d018
    li      r0, 0x5
    b       branch_0x8033d024

branch_0x8033d018:
    li      r0, 0x3
    b       branch_0x8033d024

branch_0x8033d020:
    li      r0, 0x4
branch_0x8033d024:
    cmpwi   r0, 0x1
    bne-    branch_0x8033d030
    b       branch_0x8033d0f0

branch_0x8033d030:
    stfs    f2, 0x10(sp)
    lis     r0, unk_7f800001@h
    lwz     r4, 0x10(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x8033d058
    bge-    branch_0x8033d088
    cmpwi   r3, 0x0
    beq-    branch_0x8033d070
    b       branch_0x8033d088

branch_0x8033d058:
    clrlwi. r0, r4, 9
    beq-    branch_0x8033d068
    addi    r0, r0, unk_7f800001@l
    b       branch_0x8033d08c

branch_0x8033d068:
    li      r0, 0x2
    b       branch_0x8033d08c

branch_0x8033d070:
    clrlwi. r0, r4, 9
    beq-    branch_0x8033d080
    li      r0, 0x5
    b       branch_0x8033d08c

branch_0x8033d080:
    li      r0, 0x3
    b       branch_0x8033d08c

branch_0x8033d088:
    li      r0, 0x4
branch_0x8033d08c:
    cmpwi   r0, 0x3
    beq-    branch_0x8033d0b0
    bge-    branch_0x8033d0a4
    cmpwi   r0, 0x1
    bge-    branch_0x8033d0b8
    b       branch_0x8033d0ec

branch_0x8033d0a4:
    cmpwi   r0, 0x6
    bge-    branch_0x8033d0ec
    b       branch_0x8033d0c0

branch_0x8033d0b0:
    lfs     f1, 0xac8(r2)
    b       branch_0x8033d0f0

branch_0x8033d0b8:
    lfs     f1, 0xab4(r2)
    b       branch_0x8033d0f0

branch_0x8033d0c0:
    lfs     f0, 0xab8(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8033d0ec
    lfs     f0, 0xacc(r2)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8033d0e4
    lfs     f0, 0xab0(r2)
    fneg    f1, f0
    b       branch_0x8033d0f0

branch_0x8033d0e4:
    lfs     f1, 0xab0(r2)
    b       branch_0x8033d0f0

branch_0x8033d0ec:
    lfs     f1, 0xab8(r2)
branch_0x8033d0f0:
    addi    sp, sp, 0x90
    blr


.globl expf
expf: # 0x8033d0f8
    stwu    sp, -0x28(sp)
    lis     r3, unk_803ab310@ha
    addi    r5, r3, unk_803ab310@l
    lfs     f0, 0xad8(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8033d118
    lfs     f1, 0xab0(r2)
    b       branch_0x8033d1d8

branch_0x8033d118:
    lfs     f0, 0xadc(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8033d12c
    lfs     f1, 0xab8(r2)
    b       branch_0x8033d1d8

branch_0x8033d12c:
    fctiwz  f0, f1
    lis     r3, unk_803aadf8@ha
    lis     r4, 0x4330
    lfd     f2, 0xad0(r2)
    lfs     f6, 0xae4(r2)
    stfd    f0, 0x20(sp)
    addi    r0, r3, unk_803aadf8@l
    lfs     f7, 0xae0(r2)
    lwz     r6, 0x24(sp)
    xoris   r3, r6, 0x8000
    stw     r3, 0x1c(sp)
    addi    r6, r6, 0x58
    addi    r3, r6, 0x27
    stw     r4, 0x18(sp)
    slwi    r4, r3, 23
    slwi    r3, r6, 2
    lfd     f0, 0x18(sp)
    add     r3, r0, r3
    stw     r4, 0x10(sp)
    fsubs   f0, f0, f2
    lfs     f5, 0x244(r5)
    lfs     f2, 0x240(r5)
    fsubs   f10, f1, f0
    lfs     f0, 0x23c(r5)
    lfs     f4, 0x238(r5)
    lfs     f3, 0x234(r5)
    fmadds  f5, f10, f5, f2
    lfs     f2, 0x230(r5)
    lfs     f1, 0x22c(r5)
    fmadds  f5, f10, f5, f0
    lfs     f0, 0x228(r5)
    lfs     f8, 0x10(sp)
    lfs     f9, 0x0(r3)
    fmadds  f4, f10, f5, f4
    fmadds  f3, f10, f4, f3
    fmadds  f2, f10, f3, f2
    fmadds  f1, f10, f2, f1
    fmadds  f0, f10, f1, f0
    fmuls   f0, f10, f0
    fadds   f0, f6, f0
    fadds   f0, f7, f0
    fmuls   f0, f8, f0
    fmuls   f1, f9, f0
branch_0x8033d1d8:
    addi    sp, sp, 0x28
    blr

