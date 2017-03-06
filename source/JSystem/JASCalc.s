
.globl initSinfT__Q28JASystem4CalcFv
initSinfT__Q28JASystem4CalcFv: # 0x80316414
    mflr    r0
    li      r3, 0x404
    stw     r0, 0x4(sp)
    li      r5, 0x0
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stfd    f30, 0x38(sp)
    stfd    f29, 0x30(sp)
    stfd    f28, 0x28(sp)
    stfd    f27, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    lwz     r4, -0x5b30(r13)
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, -0x5bd8(r13)
    li      r3, 0x404
    lwz     r4, -0x5b30(r13)
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, -0x5bd4(r13)
    li      r29, 0x0
    lfs     f29, 0x718(rtoc)
    li      r31, 0x0
    lfd     f28, 0x728(rtoc)
    lfs     f27, 0x71c(rtoc)
    lis     r30, 0x4330
branch_0x80316480:
    stw     r29, 0xc(sp)
    stw     r30, 0x8(sp)
    lfd     f0, 0x8(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f29, f0
    fmuls   f1, f0, f27
    bl      sinf
    lwz     r3, -0x5bd8(r13)
    addi    r29, r29, 0x1
    cmplwi  r29, 0x101
    stfsx   f1, r3, r31
    addi    r31, r31, 0x4
    blt+    branch_0x80316480
    lfs     f27, 0x718(rtoc)
    li      r29, 0x0
    lfs     f28, 0x724(rtoc)
    li      r31, 0x0
    lfd     f29, 0x728(rtoc)
    lfs     f30, 0x71c(rtoc)
    lis     r30, 0x4330
    lfs     f31, 0x720(rtoc)
branch_0x803164d4:
    stw     r29, 0xc(sp)
    stw     r30, 0x8(sp)
    lfd     f0, 0x8(sp)
    fsubs   f0, f0, f29
    fmuls   f0, f28, f0
    fmadds  f0, f0, f30, f31
    fmuls   f1, f27, f0
    bl      sinf
    lwz     r3, -0x5bd4(r13)
    addi    r29, r29, 0x1
    cmplwi  r29, 0x101
    stfsx   f1, r3, r31
    addi    r31, r31, 0x4
    blt+    branch_0x803164d4
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    lfd     f29, 0x30(sp)
    lfd     f28, 0x28(sp)
    lfd     f27, 0x20(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x48
    blr


.globl sinfT__Q28JASystem4CalcFf
sinfT__Q28JASystem4CalcFf: # 0x8031653c
    stwu    sp, -0x18(sp)
    lfs     f0, 0x730(rtoc)
    lwz     r3, -0x5bd8(r13)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x18
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    blr


.globl sinfDolby2__Q28JASystem4CalcFf
sinfDolby2__Q28JASystem4CalcFf: # 0x80316568
    stwu    sp, -0x18(sp)
    lfs     f0, 0x730(rtoc)
    lwz     r3, -0x5bd4(r13)
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r0, 0x14(sp)
    addi    sp, sp, 0x18
    slwi    r0, r0, 2
    lfsx    f1, r3, r0
    blr


.globl imixcopy__Q28JASystem4CalcFPCsPCsPsl
imixcopy__Q28JASystem4CalcFPCsPCsPsl: # 0x80316594
    cmpwi   r6, 0x0
    blelr-    

    srwi.   r0, r6, 3
    mtctr   r0
    beq-    branch_0x80316640
branch_0x803165a8:
    lha     r0, 0x0(r3)
    sth     r0, 0x0(r5)
    lha     r0, 0x0(r4)
    sth     r0, 0x2(r5)
    lha     r0, 0x2(r3)
    sth     r0, 0x4(r5)
    lha     r0, 0x2(r4)
    sth     r0, 0x6(r5)
    lha     r0, 0x4(r3)
    sth     r0, 0x8(r5)
    lha     r0, 0x4(r4)
    sth     r0, 0xa(r5)
    lha     r0, 0x6(r3)
    sth     r0, 0xc(r5)
    lha     r0, 0x6(r4)
    sth     r0, 0xe(r5)
    lha     r0, 0x8(r3)
    sth     r0, 0x10(r5)
    lha     r0, 0x8(r4)
    sth     r0, 0x12(r5)
    lha     r0, 0xa(r3)
    sth     r0, 0x14(r5)
    lha     r0, 0xa(r4)
    sth     r0, 0x16(r5)
    lha     r0, 0xc(r3)
    sth     r0, 0x18(r5)
    lha     r0, 0xc(r4)
    sth     r0, 0x1a(r5)
    lha     r0, 0xe(r3)
    addi    r3, r3, 0x10
    sth     r0, 0x1c(r5)
    lha     r0, 0xe(r4)
    addi    r4, r4, 0x10
    sth     r0, 0x1e(r5)
    addi    r5, r5, 0x20
    bdnz+      branch_0x803165a8
    andi.   r6, r6, 0x7
    beqlr-    

branch_0x80316640:
    mtctr   r6
branch_0x80316644:
    lha     r0, 0x0(r3)
    addi    r3, r3, 0x2
    sth     r0, 0x0(r5)
    lha     r0, 0x0(r4)
    addi    r4, r4, 0x2
    sth     r0, 0x2(r5)
    addi    r5, r5, 0x4
    bdnz+      branch_0x80316644
    blr


.globl bcopy__Q28JASystem4CalcFPCvPvUl
bcopy__Q28JASystem4CalcFPCvPvUl: # 0x80316668
    clrlwi  r6, r3, 30
    clrlwi  r0, r4, 30
    cmplw   r6, r0
    clrlwi  r8, r3, 30
    clrlwi  r7, r4, 30
    bne-    branch_0x80316764
    clrlwi. r0, r5, 28
    bne-    branch_0x80316764
    srwi.   r8, r5, 4
    beqlr-    

    srwi.   r0, r8, 2
    mtctr   r0
    beq-    branch_0x80316730
branch_0x8031669c:
    lwz     r7, 0x0(r3)
    lwz     r6, 0x4(r3)
    lwz     r5, 0x8(r3)
    lwz     r0, 0xc(r3)
    stw     r7, 0x0(r4)
    stw     r6, 0x4(r4)
    stw     r5, 0x8(r4)
    stw     r0, 0xc(r4)
    lwz     r7, 0x10(r3)
    lwz     r6, 0x14(r3)
    lwz     r5, 0x18(r3)
    lwz     r0, 0x1c(r3)
    stw     r7, 0x10(r4)
    stw     r6, 0x14(r4)
    stw     r5, 0x18(r4)
    stw     r0, 0x1c(r4)
    lwz     r7, 0x20(r3)
    lwz     r6, 0x24(r3)
    lwz     r5, 0x28(r3)
    lwz     r0, 0x2c(r3)
    stw     r7, 0x20(r4)
    stw     r6, 0x24(r4)
    stw     r5, 0x28(r4)
    stw     r0, 0x2c(r4)
    lwz     r7, 0x30(r3)
    lwz     r6, 0x34(r3)
    lwz     r5, 0x38(r3)
    lwz     r0, 0x3c(r3)
    addi    r3, r3, 0x40
    stw     r7, 0x30(r4)
    stw     r6, 0x34(r4)
    stw     r5, 0x38(r4)
    stw     r0, 0x3c(r4)
    addi    r4, r4, 0x40
    bdnz+      branch_0x8031669c
    andi.   r8, r8, 0x3
    beqlr-    

branch_0x80316730:
    mtctr   r8
branch_0x80316734:
    lwz     r7, 0x0(r3)
    lwz     r6, 0x4(r3)
    lwz     r5, 0x8(r3)
    lwz     r0, 0xc(r3)
    addi    r3, r3, 0x10
    stw     r7, 0x0(r4)
    stw     r6, 0x4(r4)
    stw     r5, 0x8(r4)
    stw     r0, 0xc(r4)
    addi    r4, r4, 0x10
    bdnz+      branch_0x80316734
    blr

branch_0x80316764:
    clrlwi  r6, r8, 24
    clrlwi  r0, r7, 24
    cmplw   r6, r0
    bne-    branch_0x803168c4
    cmplwi  r5, 0x10
    blt-    branch_0x803168c4
    cmplwi  r6, 0x0
    beq-    branch_0x803167ac
    subfic  r6, r8, 0x4
    b       branch_0x803167a4

branch_0x8031678c:
    lbz     r0, 0x0(r3)
    subi    r6, r6, 0x1
    addi    r3, r3, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    subi    r5, r5, 0x1
branch_0x803167a4:
    clrlwi. r0, r6, 24
    bne+    branch_0x8031678c
branch_0x803167ac:
    cmplwi  r5, 0x4
    srwi    r6, r5, 2
    blt-    branch_0x8031683c
    srwi.   r0, r6, 3
    mtctr   r0
    slwi    r0, r6, 2
    neg     r0, r0
    beq-    branch_0x80316820
branch_0x803167cc:
    lwz     r7, 0x0(r3)
    stw     r7, 0x0(r4)
    lwz     r7, 0x4(r3)
    stw     r7, 0x4(r4)
    lwz     r7, 0x8(r3)
    stw     r7, 0x8(r4)
    lwz     r7, 0xc(r3)
    stw     r7, 0xc(r4)
    lwz     r7, 0x10(r3)
    stw     r7, 0x10(r4)
    lwz     r7, 0x14(r3)
    stw     r7, 0x14(r4)
    lwz     r7, 0x18(r3)
    stw     r7, 0x18(r4)
    lwz     r7, 0x1c(r3)
    addi    r3, r3, 0x20
    stw     r7, 0x1c(r4)
    addi    r4, r4, 0x20
    bdnz+      branch_0x803167cc
    andi.   r6, r6, 0x7
    beq-    branch_0x80316838
branch_0x80316820:
    mtctr   r6
branch_0x80316824:
    lwz     r7, 0x0(r3)
    addi    r3, r3, 0x4
    stw     r7, 0x0(r4)
    addi    r4, r4, 0x4
    bdnz+      branch_0x80316824
branch_0x80316838:
    add     r5, r5, r0
branch_0x8031683c:
    cmplwi  r5, 0x0
    beqlr-    

    beqlr-    

    srwi.   r0, r5, 3
    mtctr   r0
    beq-    branch_0x803168a8
branch_0x80316854:
    lbz     r0, 0x0(r3)
    stb     r0, 0x0(r4)
    lbz     r0, 0x1(r3)
    stb     r0, 0x1(r4)
    lbz     r0, 0x2(r3)
    stb     r0, 0x2(r4)
    lbz     r0, 0x3(r3)
    stb     r0, 0x3(r4)
    lbz     r0, 0x4(r3)
    stb     r0, 0x4(r4)
    lbz     r0, 0x5(r3)
    stb     r0, 0x5(r4)
    lbz     r0, 0x6(r3)
    stb     r0, 0x6(r4)
    lbz     r0, 0x7(r3)
    addi    r3, r3, 0x8
    stb     r0, 0x7(r4)
    addi    r4, r4, 0x8
    bdnz+      branch_0x80316854
    andi.   r5, r5, 0x7
    beqlr-    

branch_0x803168a8:
    mtctr   r5
branch_0x803168ac:
    lbz     r0, 0x0(r3)
    addi    r3, r3, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+      branch_0x803168ac
    blr

branch_0x803168c4:
    cmplwi  r5, 0x0
    beqlr-    

    srwi.   r0, r5, 3
    mtctr   r0
    beq-    branch_0x8031692c
branch_0x803168d8:
    lbz     r0, 0x0(r3)
    stb     r0, 0x0(r4)
    lbz     r0, 0x1(r3)
    stb     r0, 0x1(r4)
    lbz     r0, 0x2(r3)
    stb     r0, 0x2(r4)
    lbz     r0, 0x3(r3)
    stb     r0, 0x3(r4)
    lbz     r0, 0x4(r3)
    stb     r0, 0x4(r4)
    lbz     r0, 0x5(r3)
    stb     r0, 0x5(r4)
    lbz     r0, 0x6(r3)
    stb     r0, 0x6(r4)
    lbz     r0, 0x7(r3)
    addi    r3, r3, 0x8
    stb     r0, 0x7(r4)
    addi    r4, r4, 0x8
    bdnz+      branch_0x803168d8
    andi.   r5, r5, 0x7
    beqlr-    

branch_0x8031692c:
    mtctr   r5
branch_0x80316930:
    lbz     r0, 0x0(r3)
    addi    r3, r3, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+      branch_0x80316930
    blr


.globl bzero__Q28JASystem4CalcFPvUl
bzero__Q28JASystem4CalcFPvUl: # 0x80316948
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 27
    stwu    sp, -0x8(sp)
    bne-    branch_0x8031696c
    clrlwi. r0, r3, 27
    bne-    branch_0x8031696c
    bl      DCZeroRange
    b       branch_0x80316b9c

branch_0x8031696c:
    clrlwi. r0, r4, 28
    clrlwi  r0, r3, 30
    bne-    branch_0x80316a48
    cmplwi  r0, 0x0
    bne-    branch_0x80316a48
    srwi.   r5, r4, 4
    li      r4, 0x0
    beq-    branch_0x80316b9c
    srwi.   r0, r5, 3
    mtctr   r0
    beq-    branch_0x80316a28
branch_0x80316998:
    stw     r4, 0x0(r3)
    stw     r4, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r4, 0xc(r3)
    stw     r4, 0x10(r3)
    stw     r4, 0x14(r3)
    stw     r4, 0x18(r3)
    stw     r4, 0x1c(r3)
    stw     r4, 0x20(r3)
    stw     r4, 0x24(r3)
    stw     r4, 0x28(r3)
    stw     r4, 0x2c(r3)
    stw     r4, 0x30(r3)
    stw     r4, 0x34(r3)
    stw     r4, 0x38(r3)
    stw     r4, 0x3c(r3)
    stw     r4, 0x40(r3)
    stw     r4, 0x44(r3)
    stw     r4, 0x48(r3)
    stw     r4, 0x4c(r3)
    stw     r4, 0x50(r3)
    stw     r4, 0x54(r3)
    stw     r4, 0x58(r3)
    stw     r4, 0x5c(r3)
    stw     r4, 0x60(r3)
    stw     r4, 0x64(r3)
    stw     r4, 0x68(r3)
    stw     r4, 0x6c(r3)
    stw     r4, 0x70(r3)
    stw     r4, 0x74(r3)
    stw     r4, 0x78(r3)
    stw     r4, 0x7c(r3)
    addi    r3, r3, 0x80
    bdnz+      branch_0x80316998
    andi.   r5, r5, 0x7
    beq-    branch_0x80316b9c
branch_0x80316a28:
    mtctr   r5
branch_0x80316a2c:
    stw     r4, 0x0(r3)
    stw     r4, 0x4(r3)
    stw     r4, 0x8(r3)
    stw     r4, 0xc(r3)
    addi    r3, r3, 0x10
    bdnz+      branch_0x80316a2c
    b       branch_0x80316b9c

branch_0x80316a48:
    cmplwi  r4, 0x10
    blt-    branch_0x80316b44
    cmplwi  r0, 0x0
    beq-    branch_0x80316a7c
    subfic  r6, r0, 0x4
    li      r5, 0x0
    b       branch_0x80316a74

branch_0x80316a64:
    stb     r5, 0x0(r3)
    addi    r3, r3, 0x1
    subi    r4, r4, 0x1
    subi    r6, r6, 0x1
branch_0x80316a74:
    clrlwi. r0, r6, 24
    bne+    branch_0x80316a64
branch_0x80316a7c:
    cmplwi  r4, 0x4
    srwi    r5, r4, 2
    li      r6, 0x0
    blt-    branch_0x80316ae4
    srwi.   r0, r5, 3
    mtctr   r0
    slwi    r0, r5, 2
    neg     r0, r0
    beq-    branch_0x80316ad0
branch_0x80316aa0:
    stw     r6, 0x0(r3)
    stw     r6, 0x4(r3)
    stw     r6, 0x8(r3)
    stw     r6, 0xc(r3)
    stw     r6, 0x10(r3)
    stw     r6, 0x14(r3)
    stw     r6, 0x18(r3)
    stw     r6, 0x1c(r3)
    addi    r3, r3, 0x20
    bdnz+      branch_0x80316aa0
    andi.   r5, r5, 0x7
    beq-    branch_0x80316ae0
branch_0x80316ad0:
    mtctr   r5
branch_0x80316ad4:
    stw     r6, 0x0(r3)
    addi    r3, r3, 0x4
    bdnz+      branch_0x80316ad4
branch_0x80316ae0:
    add     r4, r4, r0
branch_0x80316ae4:
    cmplwi  r4, 0x0
    beq-    branch_0x80316b9c
    li      r5, 0x0
    beq-    branch_0x80316b9c
    srwi.   r0, r4, 3
    mtctr   r0
    beq-    branch_0x80316b30
branch_0x80316b00:
    stb     r5, 0x0(r3)
    stb     r5, 0x1(r3)
    stb     r5, 0x2(r3)
    stb     r5, 0x3(r3)
    stb     r5, 0x4(r3)
    stb     r5, 0x5(r3)
    stb     r5, 0x6(r3)
    stb     r5, 0x7(r3)
    addi    r3, r3, 0x8
    bdnz+      branch_0x80316b00
    andi.   r4, r4, 0x7
    beq-    branch_0x80316b9c
branch_0x80316b30:
    mtctr   r4
branch_0x80316b34:
    stb     r5, 0x0(r3)
    addi    r3, r3, 0x1
    bdnz+      branch_0x80316b34
    b       branch_0x80316b9c

branch_0x80316b44:
    cmplwi  r4, 0x0
    li      r5, 0x0
    beq-    branch_0x80316b9c
    srwi.   r0, r4, 3
    mtctr   r0
    beq-    branch_0x80316b8c
branch_0x80316b5c:
    stb     r5, 0x0(r3)
    stb     r5, 0x1(r3)
    stb     r5, 0x2(r3)
    stb     r5, 0x3(r3)
    stb     r5, 0x4(r3)
    stb     r5, 0x5(r3)
    stb     r5, 0x6(r3)
    stb     r5, 0x7(r3)
    addi    r3, r3, 0x8
    bdnz+      branch_0x80316b5c
    andi.   r4, r4, 0x7
    beq-    branch_0x80316b9c
branch_0x80316b8c:
    mtctr   r4
branch_0x80316b90:
    stb     r5, 0x0(r3)
    addi    r3, r3, 0x1
    bdnz+      branch_0x80316b90
branch_0x80316b9c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

