
.globl makeColorTable__FP17JPAColorRegAnmKeyiiP7JKRHeap
makeColorTable__FP17JPAColorRegAnmKeyiiP7JKRHeap: # 0x80335994
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, 0x0
    li      r4, 0x4
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r5, 0x1
    addi    r5, r6, 0x0
    slwi    r3, r29, 2
    bl      alloc__7JKRHeapFUliP7JKRHeap
    lbz     r7, 0x2(r30)
    lis     r0, unk_43300000@h
    lbz     r6, 0x3(r30)
    cmpwi   r29, 0x0
    stw     r7, 0x3c(sp)
    lbz     r5, 0x4(r30)
    mtctr   r29
    stw     r6, 0x34(sp)
    addi    r6, r0, unk_43300000@l
    lbz     r4, 0x5(r30)
    stw     r5, 0x2c(sp)
    li      r5, 0x0
    lfs     f9, 0x950(r2)
    li      r7, 0x0
    stw     r4, 0x24(sp)
    fmr     f8, f9
    lfd     f6, 0x958(r2)
    stw     r0, 0x38(sp)
    li      r4, 0x0
    lfs     f5, 0x954(r2)
    stw     r0, 0x30(sp)
    fmr     f7, f8
    lfd     f0, 0x38(sp)
    stw     r0, 0x28(sp)
    lfd     f2, 0x30(sp)
    fsubs   f10, f0, f6
    stw     r0, 0x20(sp)
    fmr     f3, f7
    lfd     f1, 0x28(sp)
    lfd     f0, 0x20(sp)
    fsubs   f2, f2, f6
    lfd     f4, 0x960(r2)
    fsubs   f1, f1, f6
    fsubs   f0, f0, f6
    fmr     f11, f2
    fmr     f12, f1
    fmr     f13, f0
    ble-    branch_0x80335be8
branch_0x80335a60:
    add     r12, r30, r6
    lha     r8, 0x0(r12)
    cmpw    r5, r8
    bne-    branch_0x80335b88
    lwz     r8, 0x2(r12)
    addi    r4, r4, 0x1
    cmpw    r4, r31
    stwx    r8, r3, r7
    addi    r6, r6, 0x6
    lbz     r11, 0x2(r12)
    lbz     r10, 0x3(r12)
    lbz     r9, 0x4(r12)
    lbz     r8, 0x5(r12)
    stw     r11, 0x24(sp)
    stw     r10, 0x2c(sp)
    stw     r9, 0x34(sp)
    stw     r8, 0x3c(sp)
    stw     r0, 0x20(sp)
    stw     r0, 0x28(sp)
    lfd     f1, 0x20(sp)
    lfd     f0, 0x28(sp)
    stw     r0, 0x30(sp)
    fsubs   f10, f1, f6
    fsubs   f11, f0, f6
    stw     r0, 0x38(sp)
    lfd     f1, 0x30(sp)
    lfd     f0, 0x38(sp)
    fsubs   f12, f1, f6
    fsubs   f13, f0, f6
    bge-    branch_0x80335b74
    add     r12, r30, r6
    lha     r9, -0x6(r12)
    lha     r8, 0x0(r12)
    lbz     r11, 0x2(r12)
    subf    r8, r9, r8
    lbz     r10, 0x3(r12)
    xoris   r8, r8, 0x8000
    lbz     r9, 0x4(r12)
    stw     r8, 0x24(sp)
    lbz     r8, 0x5(r12)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    stw     r11, 0x2c(sp)
    fsubs   f0, f0, f4
    stw     r10, 0x34(sp)
    fdivs   f9, f5, f0
    stw     r9, 0x3c(sp)
    stw     r8, 0x1c(sp)
    stw     r0, 0x28(sp)
    stw     r0, 0x30(sp)
    stw     r0, 0x38(sp)
    lfd     f0, 0x28(sp)
    stw     r0, 0x18(sp)
    lfd     f2, 0x30(sp)
    fsubs   f3, f0, f6
    lfd     f1, 0x38(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f6
    fsubs   f1, f1, f6
    fsubs   f0, f0, f6
    fsubs   f3, f3, f10
    fsubs   f2, f2, f11
    fsubs   f1, f1, f12
    fsubs   f0, f0, f13
    fmuls   f3, f9, f3
    fmuls   f7, f9, f2
    fmuls   f8, f9, f1
    fmuls   f9, f9, f0
    b       branch_0x80335bdc

branch_0x80335b74:
    lfs     f9, 0x950(r2)
    fmr     f8, f9
    fmr     f7, f8
    fmr     f3, f7
    b       branch_0x80335bdc

branch_0x80335b88:
    fadds   f10, f10, f3
    add     r10, r3, r7
    fadds   f11, f11, f7
    fadds   f12, f12, f8
    fctiwz  f1, f10
    fctiwz  f0, f11
    fadds   f13, f13, f9
    stfd    f1, 0x18(sp)
    fctiwz  f1, f12
    stfd    f0, 0x20(sp)
    fctiwz  f0, f13
    lwz     r8, 0x1c(sp)
    stfd    f1, 0x28(sp)
    lwz     r9, 0x24(sp)
    stb     r8, 0x0(r10)
    lwz     r8, 0x2c(sp)
    stb     r9, 0x1(r10)
    stfd    f0, 0x30(sp)
    stb     r8, 0x2(r10)
    lwz     r8, 0x34(sp)
    stb     r8, 0x3(r10)
branch_0x80335bdc:
    addi    r5, r5, 0x1
    addi    r7, r7, 0x4
    bdnz+      branch_0x80335a60
branch_0x80335be8:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl __ct__12JPABaseShapeFPCUcP7JKRHeap
__ct__12JPABaseShapeFPCUcP7JKRHeap: # 0x80335c04
    mflr    r0
    lis     r7, __vvt__12JPADataBlock@h
    stw     r0, 0x4(sp)
    addi    r7, r7, __vvt__12JPADataBlock@l
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__12JPABaseShape@h
    addi    r0, r3, __vvt__12JPABaseShape@l
    lwz     r6, 0x8(sp)
    stw     r7, 0x0(r6)
    stw     r0, 0x0(r6)
    lfs     f0, 0x18(r4)
    stfs    f0, 0x18(r6)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x14(r6)
    lha     r0, 0x20(r4)
    sth     r0, 0x58(r6)
    lbz     r0, 0x24(r4)
    stb     r0, 0x69(r6)
    lbz     r0, 0x25(r4)
    stb     r0, 0x6a(r6)
    lbz     r0, 0x26(r4)
    stb     r0, 0x6b(r6)
    lbz     r5, 0x22(r4)
    lbz     r6, 0x23(r4)
    clrlwi. r0, r5, 31
    beq-    branch_0x80335c90
    lis     r3, unk_0000ffff@ha
    addi    r4, r3, unk_0000ffff@l
    b       branch_0x80335c94

branch_0x80335c90:
    li      r4, 0x0
branch_0x80335c94:
    lwz     r3, 0x8(sp)
    extsh   r4, r4
    clrlwi. r0, r6, 31
    sth     r4, 0x5a(r3)
    beq-    branch_0x80335cb4
    lis     r3, unk_0000ffff@ha
    addi    r4, r3, unk_0000ffff@l
    b       branch_0x80335cb8

branch_0x80335cb4:
    li      r4, 0x0
branch_0x80335cb8:
    lwz     r3, 0x8(sp)
    rlwinm. r0, r5, 0, 30, 30
    extsh   r4, r4
    li      r5, 0x1
    sth     r4, 0x5c(r3)
    addi    r4, r5, 0x0
    bne-    branch_0x80335ce4
    lbz     r0, 0x69(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80335ce4
    li      r4, 0x0
branch_0x80335ce4:
    clrlwi. r0, r4, 24
    bne-    branch_0x80335d00
    lwz     r3, 0x8(sp)
    lbz     r0, 0x69(r3)
    cmplwi  r0, 0x6
    beq-    branch_0x80335d00
    li      r5, 0x0
branch_0x80335d00:
    clrlwi. r0, r5, 24
    beq-    branch_0x80335d10
    li      r3, 0x1
    b       branch_0x80335d14

branch_0x80335d10:
    li      r3, 0x0
branch_0x80335d14:
    rlwinm. r0, r6, 0, 30, 30
    li      r4, 0x1
    addi    r5, r4, 0x0
    clrlwi  r6, r3, 24
    bne-    branch_0x80335d3c
    lwz     r3, 0x8(sp)
    lbz     r0, 0x69(r3)
    cmplwi  r0, 0x5
    beq-    branch_0x80335d3c
    li      r5, 0x0
branch_0x80335d3c:
    clrlwi. r0, r5, 24
    bne-    branch_0x80335d58
    lwz     r3, 0x8(sp)
    lbz     r0, 0x69(r3)
    cmplwi  r0, 0x6
    beq-    branch_0x80335d58
    li      r4, 0x0
branch_0x80335d58:
    clrlwi. r0, r4, 24
    beq-    branch_0x80335d68
    li      r0, 0x1
    b       branch_0x80335d6c

branch_0x80335d68:
    li      r0, 0x0
branch_0x80335d6c:
    slwi    r3, r6, 1
    lwz     r5, 0x8(sp)
    clrlwi  r0, r0, 24
    or      r0, r3, r0
    stb     r0, 0x68(r5)
    lbz     r0, 0x30(r30)
    cmpwi   r0, 0x3
    beq-    branch_0x80335e1c
    bge-    branch_0x80335da8
    cmpwi   r0, 0x1
    beq-    branch_0x80335dd8
    bge-    branch_0x80335df8
    cmpwi   r0, 0x0
    bge-    branch_0x80335db8
    b       branch_0x80335e7c

branch_0x80335da8:
    cmpwi   r0, 0x5
    beq-    branch_0x80335e64
    bge-    branch_0x80335e7c
    b       branch_0x80335e40

branch_0x80335db8:
    li      r4, 0xf
    stw     r4, 0x48(r5)
    li      r3, 0x8
    li      r0, 0xc
    stw     r3, 0x4c(r5)
    stw     r0, 0x50(r5)
    stw     r4, 0x54(r5)
    b       branch_0x80335e7c

branch_0x80335dd8:
    li      r4, 0xf
    stw     r4, 0x48(r5)
    li      r3, 0x2
    li      r0, 0x8
    stw     r3, 0x4c(r5)
    stw     r0, 0x50(r5)
    stw     r4, 0x54(r5)
    b       branch_0x80335e7c

branch_0x80335df8:
    li      r0, 0x2
    stw     r0, 0x48(r5)
    li      r0, 0xc
    li      r3, 0x8
    stw     r0, 0x4c(r5)
    li      r0, 0xf
    stw     r3, 0x50(r5)
    stw     r0, 0x54(r5)
    b       branch_0x80335e7c

branch_0x80335e1c:
    li      r0, 0x4
    stw     r0, 0x48(r5)
    li      r0, 0x2
    li      r3, 0x8
    stw     r0, 0x4c(r5)
    li      r0, 0xf
    stw     r3, 0x50(r5)
    stw     r0, 0x54(r5)
    b       branch_0x80335e7c

branch_0x80335e40:
    li      r0, 0xf
    stw     r0, 0x48(r5)
    li      r0, 0x8
    li      r3, 0x2
    stw     r0, 0x4c(r5)
    li      r0, 0x4
    stw     r3, 0x50(r5)
    stw     r0, 0x54(r5)
    b       branch_0x80335e7c

branch_0x80335e64:
    li      r3, 0xf
    stw     r3, 0x48(r5)
    li      r0, 0x2
    stw     r3, 0x4c(r5)
    stw     r3, 0x50(r5)
    stw     r0, 0x54(r5)
branch_0x80335e7c:
    lbz     r4, 0x31(r30)
    li      r0, 0x0
    lwz     r3, 0x8(sp)
    stb     r4, 0x6c(r3)
    lbz     r4, 0x35(r30)
    stb     r4, 0x6d(r3)
    lbz     r4, 0x36(r30)
    stb     r4, 0x6e(r3)
    lbz     r4, 0x37(r30)
    stb     r4, 0x6f(r3)
    lbz     r4, 0x38(r30)
    stb     r4, 0x70(r3)
    lbz     r4, 0x39(r30)
    stb     r4, 0x71(r3)
    lbz     r4, 0x3a(r30)
    stb     r4, 0x72(r3)
    lbz     r4, 0x3b(r30)
    stb     r4, 0x73(r3)
    lbz     r4, 0x3c(r30)
    stb     r4, 0x74(r3)
    lbz     r4, 0x3d(r30)
    stb     r4, 0x75(r3)
    lbz     r4, 0x3e(r30)
    extrwi  r4, r4, 1, 30
    cntlzw  r4, r4
    srwi    r4, r4, 5
    stb     r4, 0x76(r3)
    lbz     r4, 0x3f(r30)
    stb     r4, 0x77(r3)
    lbz     r4, 0x40(r30)
    stb     r4, 0x78(r3)
    lbz     r4, 0x41(r30)
    stb     r4, 0x79(r3)
    lbz     r4, 0x42(r30)
    stb     r4, 0x7a(r3)
    lbz     r4, 0x43(r30)
    stb     r4, 0x7b(r3)
    lbz     r4, 0x44(r30)
    stb     r4, 0x7c(r3)
    lbz     r4, 0x4d(r30)
    stb     r4, 0x7d(r3)
    lbz     r4, 0x4e(r30)
    stb     r4, 0x7e(r3)
    lbz     r4, 0x4f(r30)
    stb     r4, 0x7f(r3)
    lbz     r4, 0x4c(r30)
    clrlwi. r4, r4, 31
    beq-    branch_0x80335f4c
    lbz     r3, 0x7e(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80335f4c
    li      r0, 0x1
branch_0x80335f4c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80335f5c
    li      r0, 0x1
    b       branch_0x80335f60

branch_0x80335f5c:
    li      r0, 0x0
branch_0x80335f60:
    lwz     r3, 0x8(sp)
    stb     r0, 0x80(r3)
    lbz     r0, 0x4c(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80335f7c
    li      r0, 0x0
    b       branch_0x80335f80

branch_0x80335f7c:
    li      r0, 0x1
branch_0x80335f80:
    lwz     r29, 0x8(sp)
    stb     r0, 0x81(r29)
    lha     r0, 0x5c(r30)
    sth     r0, 0x5e(r29)
    lbz     r0, 0x5e(r30)
    stb     r0, 0x82(r29)
    lbz     r0, 0x60(r30)
    stb     r0, 0x83(r29)
    lbz     r0, 0x61(r30)
    stb     r0, 0x84(r29)
    lbz     r0, 0x62(r30)
    stb     r0, 0x85(r29)
    lbz     r0, 0x63(r30)
    stb     r0, 0x86(r29)
    lwz     r0, 0x64(r30)
    stw     r0, 0x60(r29)
    lwz     r0, 0x68(r30)
    stw     r0, 0x64(r29)
    lha     r3, 0x80(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x968(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x1c(r29)
    lha     r3, 0x82(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x968(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(r29)
    lha     r3, 0x84(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x968(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x24(r29)
    lha     r3, 0x86(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x968(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x28(r29)
    lha     r3, 0x88(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x968(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x2c(r29)
    lha     r3, 0x8a(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x968(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x30(r29)
    lha     r3, 0x8c(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x34(r29)
    lha     r3, 0x8e(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x38(r29)
    lha     r3, 0x90(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x96c(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x3c(r29)
    lha     r3, 0x92(r30)
    bl      JPAConvertFixToFloat__Fs
    lfs     f0, 0x96c(r2)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(r29)
    lha     r3, 0x94(r30)
    bl      JPAConvertFixToFloat__Fs
    stfs    f1, 0x44(r29)
    lbz     r0, 0x96(r30)
    stb     r0, 0x87(r29)
    lbz     r0, 0x80(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x803360cc
    lbz     r3, 0x7e(r29)
    addi    r5, r31, 0x0
    li      r4, 0x4
    bl      alloc__7JKRHeapFUliP7JKRHeap
    stw     r3, 0x8(r29)
    lha     r0, 0x12(r30)
    lwz     r3, 0x8(r29)
    lbz     r5, 0x7e(r29)
    add     r4, r30, r0
    bl      memcpy
    b       branch_0x803360d4

branch_0x803360cc:
    li      r0, 0x0
    stw     r0, 0x8(r29)
branch_0x803360d4:
    lwz     r29, 0x8(sp)
    lbz     r0, 0x83(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80336104
    lha     r0, 0x14(r30)
    mr      r6, r31
    lbz     r4, 0x85(r29)
    lha     r5, 0x5e(r29)
    add     r3, r30, r0
    bl      makeColorTable__FP17JPAColorRegAnmKeyiiP7JKRHeap
    stw     r3, 0xc(r29)
    b       branch_0x8033610c

branch_0x80336104:
    li      r0, 0x0
    stw     r0, 0xc(r29)
branch_0x8033610c:
    lwz     r29, 0x8(sp)
    lbz     r0, 0x84(r29)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x8033613c
    lha     r0, 0x16(r30)
    mr      r6, r31
    lbz     r4, 0x86(r29)
    lha     r5, 0x5e(r29)
    add     r3, r30, r0
    bl      makeColorTable__FP17JPAColorRegAnmKeyiiP7JKRHeap
    stw     r3, 0x10(r29)
    b       branch_0x80336144

branch_0x8033613c:
    li      r0, 0x0
    stw     r0, 0x10(r29)
branch_0x80336144:
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __dt__12JPABaseShapeFv
__dt__12JPABaseShapeFv: # 0x80336164
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x803361a8
    lis     r3, __vvt__12JPABaseShape@h
    addi    r0, r3, __vvt__12JPABaseShape@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80336198
    lis     r3, __vvt__12JPADataBlock@h
    addi    r0, r3, __vvt__12JPADataBlock@l
    stw     r0, 0x0(r31)
branch_0x80336198:
    extsh.  r0, r4
    ble-    branch_0x803361a8
    mr      r3, r31
    bl      __dl__FPv
branch_0x803361a8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

