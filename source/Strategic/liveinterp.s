
.globl initUserBuiltin__29TSpcTypedBinary_10TLiveActor_Fv
initUserBuiltin__29TSpcTypedBinary_10TLiveActor_Fv: # 0x802192a4
    mflr    r0
    lis     r4, unk_8039d1a0@ha
    stw     r0, 0x4(sp)
    lis     r5, linPushNerve__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r4, r4, unk_8039d1a0@l
    stwu    sp, -0x18(sp)
    addi    r5, r5, linPushNerve__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetBck__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetBck__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x1928
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetBpk__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetBpk__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x1920
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetBtp__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetBtp__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x1918
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetBtk__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetBtk__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x1910
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetBlk__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetBlk__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x1908
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetBls__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetBls__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x1900
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linSetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x18f8
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r3, linGetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linGetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x18f0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lis     r4, unk_8039d1ac@ha
    lis     r3, linSetAnmRate__FP29TSpcTypedInterp_10TLiveActor_Ul@ha
    addi    r5, r3, linSetAnmRate__FP29TSpcTypedInterp_10TLiveActor_Ul@l
    addi    r4, r4, unk_8039d1ac@l
    addi    r3, r31, 0x0
    bl      bindSystemDataToSymbol__10TSpcBinaryFPCcUl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl linPushNerve__FP29TSpcTypedInterp_10TLiveActor_Ul
linPushNerve__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x80219398
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x48(sp)
    mr      r30, r3
    stw     r29, 0x44(sp)
    stw     r4, 0xc(sp)
    lis     r4, unk_8039d0c0@ha
    addi    r31, r4, unk_8039d0c0@l
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r30)
    lwz     r29, 0x10(r30)
    cmpwi   r3, 0x0
    bgt-    branch_0x80219408
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x28(sp)
    b       branch_0x8021942c

branch_0x80219408:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r30)
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x20(r30)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x28(sp)
branch_0x8021942c:
    lwz     r0, 0x28(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x30(sp)
    beq-    branch_0x80219454
    bge-    branch_0x80219468
    cmpwi   r4, 0x0
    bge-    branch_0x8021944c
    b       branch_0x80219468

branch_0x8021944c:
    lwz     r3, 0x30(sp)
    b       branch_0x8021946c

branch_0x80219454:
    lfs     f0, 0x30(sp)
    fctiwz  f0, f0
    stfd    f0, 0x38(sp)
    lwz     r3, 0x3c(sp)
    b       branch_0x8021946c

branch_0x80219468:
    li      r3, 0x0
branch_0x8021946c:
    bl      NerveGetByIndex__Fi
    cmplwi  r3, 0x0
    bne-    branch_0x802194d0
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x802194a4
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80219574

branch_0x802194a4:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
    b       branch_0x80219574

branch_0x802194d0:
    lwz     r6, 0x8c(r29)
    beq-    branch_0x80219520
    lwz     r0, 0x14(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80219514
    stw     r0, 0x1c(r6)
    lwz     r4, 0x8(r6)
    lwz     r0, 0x4(r6)
    cmpw    r4, r0
    bge-    branch_0x80219514
    lwz     r5, 0x14(r6)
    slwi    r0, r4, 2
    lwz     r4, 0xc(r6)
    stwx    r5, r4, r0
    lwz     r4, 0x8(r6)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r6)
branch_0x80219514:
    li      r0, 0x0
    stw     r0, 0x20(r6)
    stw     r3, 0x14(r6)
branch_0x80219520:
    li      r0, 0x0
    stw     r0, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x18(r30)
    cmpw    r3, r0
    blt-    branch_0x8021954c
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x80219574

branch_0x8021954c:
    lwz     r5, 0x20(r30)
    slwi    r4, r3, 3
    lwz     r3, 0x14(sp)
    lwz     r0, 0x18(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r30)
branch_0x80219574:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl linSetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x80219590
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    mr      r27, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    lis     r4, unk_8039d0c0@ha
    addi    r31, r4, unk_8039d0c0@l
    li      r4, 0x3
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r27)
    lwz     r30, 0x10(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x802195f8
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
    b       branch_0x8021961c

branch_0x802195f8:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x3c(sp)
branch_0x8021961c:
    lwz     r0, 0x3c(sp)
    stw     r0, 0x58(sp)
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021965c
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r28, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
    b       branch_0x80219680

branch_0x8021965c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r28, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x34(sp)
branch_0x80219680:
    lwz     r0, 0x34(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r27)
    cmpwi   r3, 0x0
    bgt-    branch_0x802196c0
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x802196e4

branch_0x802196c0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r27)
    lwz     r0, 0x1c(r27)
    lwz     r3, 0x20(r27)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x802196e4:
    lwz     r0, 0x2c(sp)
    cmpwi   r29, 0x1
    stw     r0, 0x48(sp)
    beq-    branch_0x80219728
    bge-    branch_0x80219730
    cmpwi   r29, 0x0
    bge-    branch_0x80219704
    b       branch_0x80219730

branch_0x80219704:
    lwz     r3, 0x58(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18e0(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f2, f0, f1
    b       branch_0x80219734

branch_0x80219728:
    lfs     f2, 0x58(sp)
    b       branch_0x80219734

branch_0x80219730:
    lfs     f2, -0x18e8(r2)
branch_0x80219734:
    cmpwi   r4, 0x1
    beq-    branch_0x80219754
    bge-    branch_0x80219768
    cmpwi   r4, 0x0
    bge-    branch_0x8021974c
    b       branch_0x80219768

branch_0x8021974c:
    lwz     r0, 0x48(sp)
    b       branch_0x8021976c

branch_0x80219754:
    lfs     f0, 0x48(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    b       branch_0x8021976c

branch_0x80219768:
    li      r0, 0x0
branch_0x8021976c:
    cmpwi   r0, 0x1
    beq-    branch_0x80219790
    bge-    branch_0x80219784
    cmpwi   r0, 0x0
    bge-    branch_0x80219834
    b       branch_0x80219918

branch_0x80219784:
    cmpwi   r0, 0x3
    bge-    branch_0x80219918
    b       branch_0x802198a8

branch_0x80219790:
    lfs     f0, -0x18e4(r2)
    b       branch_0x8021979c

branch_0x80219798:
    fsubs   f2, f2, f0
branch_0x8021979c:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80219798
    lfs     f1, -0x18e4(r2)
    lfs     f0, -0x18e8(r2)
    b       branch_0x802197b8

branch_0x802197b4:
    fadds   f2, f2, f1
branch_0x802197b8:
    fcmpo   cr0, f2, f0
    blt+    branch_0x802197b4
    cmpwi   r28, 0x1
    beq-    branch_0x802197e0
    bge-    branch_0x802197f4
    cmpwi   r28, 0x0
    bge-    branch_0x802197d8
    b       branch_0x802197f4

branch_0x802197d8:
    lwz     r0, 0x50(sp)
    b       branch_0x802197f8

branch_0x802197e0:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    b       branch_0x802197f8

branch_0x802197f4:
    li      r0, 0x0
branch_0x802197f8:
    cmpwi   r0, 0x1
    beq-    branch_0x80219824
    bge-    branch_0x80219810
    cmpwi   r0, 0x0
    bge-    branch_0x8021981c
    b       branch_0x80219918

branch_0x80219810:
    cmpwi   r0, 0x3
    bge-    branch_0x80219918
    b       branch_0x8021982c

branch_0x8021981c:
    stfs    f2, 0x30(r30)
    b       branch_0x80219918

branch_0x80219824:
    stfs    f2, 0x34(r30)
    b       branch_0x80219918

branch_0x8021982c:
    stfs    f2, 0x38(r30)
    b       branch_0x80219918

branch_0x80219834:
    cmpwi   r28, 0x1
    beq-    branch_0x80219854
    bge-    branch_0x80219868
    cmpwi   r28, 0x0
    bge-    branch_0x8021984c
    b       branch_0x80219868

branch_0x8021984c:
    lwz     r0, 0x50(sp)
    b       branch_0x8021986c

branch_0x80219854:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    b       branch_0x8021986c

branch_0x80219868:
    li      r0, 0x0
branch_0x8021986c:
    cmpwi   r0, 0x1
    beq-    branch_0x80219898
    bge-    branch_0x80219884
    cmpwi   r0, 0x0
    bge-    branch_0x80219890
    b       branch_0x80219918

branch_0x80219884:
    cmpwi   r0, 0x3
    bge-    branch_0x80219918
    b       branch_0x802198a0

branch_0x80219890:
    stfs    f2, 0x10(r30)
    b       branch_0x80219918

branch_0x80219898:
    stfs    f2, 0x14(r30)
    b       branch_0x80219918

branch_0x802198a0:
    stfs    f2, 0x18(r30)
    b       branch_0x80219918

branch_0x802198a8:
    cmpwi   r28, 0x1
    beq-    branch_0x802198c8
    bge-    branch_0x802198dc
    cmpwi   r28, 0x0
    bge-    branch_0x802198c0
    b       branch_0x802198dc

branch_0x802198c0:
    lwz     r0, 0x50(sp)
    b       branch_0x802198e0

branch_0x802198c8:
    lfs     f0, 0x50(sp)
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    b       branch_0x802198e0

branch_0x802198dc:
    li      r0, 0x0
branch_0x802198e0:
    cmpwi   r0, 0x1
    beq-    branch_0x8021990c
    bge-    branch_0x802198f8
    cmpwi   r0, 0x0
    bge-    branch_0x80219904
    b       branch_0x80219918

branch_0x802198f8:
    cmpwi   r0, 0x3
    bge-    branch_0x80219918
    b       branch_0x80219914

branch_0x80219904:
    stfs    f2, 0x24(r30)
    b       branch_0x80219918

branch_0x8021990c:
    stfs    f2, 0x28(r30)
    b       branch_0x80219918

branch_0x80219914:
    stfs    f2, 0x2c(r30)
branch_0x80219918:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x18(r27)
    cmpw    r3, r0
    blt-    branch_0x80219944
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021996c

branch_0x80219944:
    lwz     r5, 0x20(r27)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r27)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r27)
branch_0x8021996c:
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl linGetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul
linGetSRT__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x80219980
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stw     r31, 0xdc(sp)
    addi    r5, sp, 0xc
    stw     r30, 0xd8(sp)
    stw     r29, 0xd4(sp)
    stw     r28, 0xd0(sp)
    mr      r28, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_8039d0c0@ha
    addi    r31, r4, unk_8039d0c0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r28)
    lwz     r30, 0x10(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x802199f4
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0xb0(sp)
    b       branch_0x80219a18

branch_0x802199f4:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0xb0(sp)
branch_0x80219a18:
    lwz     r0, 0xb0(sp)
    stw     r0, 0xc0(sp)
    lwz     r3, 0x1c(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x80219a58
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa8(sp)
    b       branch_0x80219a7c

branch_0x80219a58:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0xa8(sp)
branch_0x80219a7c:
    lwz     r0, 0xa8(sp)
    cmpwi   r4, 0x1
    stw     r0, 0xb8(sp)
    beq-    branch_0x80219aa4
    bge-    branch_0x80219ab8
    cmpwi   r4, 0x0
    bge-    branch_0x80219a9c
    b       branch_0x80219ab8

branch_0x80219a9c:
    lwz     r0, 0xb8(sp)
    b       branch_0x80219abc

branch_0x80219aa4:
    lfs     f0, 0xb8(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    b       branch_0x80219abc

branch_0x80219ab8:
    li      r0, 0x0
branch_0x80219abc:
    cmpwi   r0, 0x1
    beq-    branch_0x80219ae0
    bge-    branch_0x80219ad4
    cmpwi   r0, 0x0
    bge-    branch_0x80219ccc
    b       branch_0x8021a0a4

branch_0x80219ad4:
    cmpwi   r0, 0x3
    bge-    branch_0x8021a0a4
    b       branch_0x80219eb8

branch_0x80219ae0:
    cmpwi   r29, 0x1
    beq-    branch_0x80219b00
    bge-    branch_0x80219b14
    cmpwi   r29, 0x0
    bge-    branch_0x80219af8
    b       branch_0x80219b14

branch_0x80219af8:
    lwz     r0, 0xc0(sp)
    b       branch_0x80219b18

branch_0x80219b00:
    lfs     f0, 0xc0(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    b       branch_0x80219b18

branch_0x80219b14:
    li      r0, 0x0
branch_0x80219b18:
    cmpwi   r0, 0x1
    beq-    branch_0x80219ba4
    bge-    branch_0x80219b30
    cmpwi   r0, 0x0
    bge-    branch_0x80219b3c
    b       branch_0x80219c74

branch_0x80219b30:
    cmpwi   r0, 0x3
    bge-    branch_0x80219c74
    b       branch_0x80219c0c

branch_0x80219b3c:
    li      r3, 0x0
    stw     r3, 0x9c(sp)
    li      r0, 0x1
    stw     r3, 0xa0(sp)
    stw     r0, 0x9c(sp)
    lfs     f0, 0x30(r30)
    stfs    f0, 0xa0(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219b78
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219b78:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x9c(sp)
    lwz     r0, 0xa0(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219ba4:
    li      r3, 0x0
    stw     r3, 0x90(sp)
    li      r0, 0x1
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfs     f0, 0x34(r30)
    stfs    f0, 0x94(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219be0
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219be0:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x90(sp)
    lwz     r0, 0x94(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219c0c:
    li      r3, 0x0
    stw     r3, 0x84(sp)
    li      r0, 0x1
    stw     r3, 0x88(sp)
    stw     r0, 0x84(sp)
    lfs     f0, 0x38(r30)
    stfs    f0, 0x88(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219c48
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219c48:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x84(sp)
    lwz     r0, 0x88(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219c74:
    li      r0, 0x0
    stw     r0, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219ca0
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219ca0:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219ccc:
    cmpwi   r29, 0x1
    beq-    branch_0x80219cec
    bge-    branch_0x80219d00
    cmpwi   r29, 0x0
    bge-    branch_0x80219ce4
    b       branch_0x80219d00

branch_0x80219ce4:
    lwz     r0, 0xc0(sp)
    b       branch_0x80219d04

branch_0x80219cec:
    lfs     f0, 0xc0(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    b       branch_0x80219d04

branch_0x80219d00:
    li      r0, 0x0
branch_0x80219d04:
    cmpwi   r0, 0x1
    beq-    branch_0x80219d90
    bge-    branch_0x80219d1c
    cmpwi   r0, 0x0
    bge-    branch_0x80219d28
    b       branch_0x80219e60

branch_0x80219d1c:
    cmpwi   r0, 0x3
    bge-    branch_0x80219e60
    b       branch_0x80219df8

branch_0x80219d28:
    li      r3, 0x0
    stw     r3, 0x70(sp)
    li      r0, 0x1
    stw     r3, 0x74(sp)
    stw     r0, 0x70(sp)
    lfs     f0, 0x10(r30)
    stfs    f0, 0x74(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219d64
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219d64:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x70(sp)
    lwz     r0, 0x74(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219d90:
    li      r3, 0x0
    stw     r3, 0x64(sp)
    li      r0, 0x1
    stw     r3, 0x68(sp)
    stw     r0, 0x64(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x68(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219dcc
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219dcc:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x64(sp)
    lwz     r0, 0x68(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219df8:
    li      r3, 0x0
    stw     r3, 0x58(sp)
    li      r0, 0x1
    stw     r3, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x5c(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219e34
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219e34:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x58(sp)
    lwz     r0, 0x5c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219e60:
    li      r0, 0x0
    stw     r0, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219e8c
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219e8c:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219eb8:
    cmpwi   r29, 0x1
    beq-    branch_0x80219ed8
    bge-    branch_0x80219eec
    cmpwi   r29, 0x0
    bge-    branch_0x80219ed0
    b       branch_0x80219eec

branch_0x80219ed0:
    lwz     r0, 0xc0(sp)
    b       branch_0x80219ef0

branch_0x80219ed8:
    lfs     f0, 0xc0(sp)
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    b       branch_0x80219ef0

branch_0x80219eec:
    li      r0, 0x0
branch_0x80219ef0:
    cmpwi   r0, 0x1
    beq-    branch_0x80219f7c
    bge-    branch_0x80219f08
    cmpwi   r0, 0x0
    bge-    branch_0x80219f14
    b       branch_0x8021a04c

branch_0x80219f08:
    cmpwi   r0, 0x3
    bge-    branch_0x8021a04c
    b       branch_0x80219fe4

branch_0x80219f14:
    li      r3, 0x0
    stw     r3, 0x44(sp)
    li      r0, 0x1
    stw     r3, 0x48(sp)
    stw     r0, 0x44(sp)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x48(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219f50
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219f50:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x44(sp)
    lwz     r0, 0x48(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219f7c:
    li      r3, 0x0
    stw     r3, 0x38(sp)
    li      r0, 0x1
    stw     r3, 0x3c(sp)
    stw     r0, 0x38(sp)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x3c(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x80219fb8
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x80219fb8:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x80219fe4:
    li      r3, 0x0
    stw     r3, 0x2c(sp)
    li      r0, 0x1
    stw     r3, 0x30(sp)
    stw     r0, 0x2c(sp)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x30(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8021a020
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x8021a020:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x30(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x8021a04c:
    li      r0, 0x0
    stw     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8021a078
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x8021a078:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x20(sp)
    lwz     r0, 0x24(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
    b       branch_0x8021a0f8

branch_0x8021a0a4:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8021a0d0
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a0f8

branch_0x8021a0d0:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x8021a0f8:
    lwz     r0, 0xe4(sp)
    lwz     r31, 0xdc(sp)
    lwz     r30, 0xd8(sp)
    mtlr    r0
    lwz     r29, 0xd4(sp)
    lwz     r28, 0xd0(sp)
    addi    sp, sp, 0xe0
    blr


.globl linSetAnmRate__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetAnmRate__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a118
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r5, sp, 0xc
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    mr      r28, r3
    stw     r4, 0xc(sp)
    lis     r4, unk_8039d0c0@ha
    addi    r31, r4, unk_8039d0c0@l
    li      r4, 0x2
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r28)
    lwz     r30, 0x10(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a18c
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a1b0

branch_0x8021a18c:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r29, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a1b0:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x3c(sp)
    lwz     r3, 0x1c(r28)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a1f0
    addi    r3, r31, 0xf8
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
    b       branch_0x8021a214

branch_0x8021a1f0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r28)
    lwz     r0, 0x1c(r28)
    lwz     r3, 0x20(r28)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x24(sp)
branch_0x8021a214:
    lwz     r0, 0x24(sp)
    cmpwi   r4, 0x1
    stw     r0, 0x34(sp)
    beq-    branch_0x8021a23c
    bge-    branch_0x8021a250
    cmpwi   r4, 0x0
    bge-    branch_0x8021a234
    b       branch_0x8021a250

branch_0x8021a234:
    lwz     r0, 0x34(sp)
    b       branch_0x8021a254

branch_0x8021a23c:
    lfs     f0, 0x34(sp)
    fctiwz  f0, f0
    stfd    f0, 0x48(sp)
    lwz     r0, 0x4c(sp)
    b       branch_0x8021a254

branch_0x8021a250:
    li      r0, 0x0
branch_0x8021a254:
    cmpwi   r0, 0x1
    beq-    branch_0x8021a2c4
    bge-    branch_0x8021a318
    cmpwi   r0, 0x0
    bge-    branch_0x8021a26c
    b       branch_0x8021a318

branch_0x8021a26c:
    cmpwi   r29, 0x1
    beq-    branch_0x8021a2a8
    bge-    branch_0x8021a2b0
    cmpwi   r29, 0x0
    bge-    branch_0x8021a284
    b       branch_0x8021a2b0

branch_0x8021a284:
    lwz     r3, 0x3c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18e0(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x4c(sp)
    stw     r0, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f1, f0, f1
    b       branch_0x8021a2b4

branch_0x8021a2a8:
    lfs     f1, 0x3c(sp)
    b       branch_0x8021a2b4

branch_0x8021a2b0:
    lfs     f1, -0x18e8(r2)
branch_0x8021a2b4:
    lwz     r3, 0x74(r30)
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    b       branch_0x8021a318

branch_0x8021a2c4:
    cmpwi   r29, 0x1
    beq-    branch_0x8021a300
    bge-    branch_0x8021a308
    cmpwi   r29, 0x0
    bge-    branch_0x8021a2dc
    b       branch_0x8021a308

branch_0x8021a2dc:
    lwz     r3, 0x3c(sp)
    lis     r0, 0x4330
    lfd     f1, -0x18e0(r2)
    xoris   r3, r3, 0x8000
    stw     r3, 0x4c(sp)
    stw     r0, 0x48(sp)
    lfd     f0, 0x48(sp)
    fsubs   f1, f0, f1
    b       branch_0x8021a30c

branch_0x8021a300:
    lfs     f1, 0x3c(sp)
    b       branch_0x8021a30c

branch_0x8021a308:
    lfs     f1, -0x18e8(r2)
branch_0x8021a30c:
    lwz     r3, 0x74(r30)
    li      r4, 0x3
    bl      setFrameRate__6MActorFfi
branch_0x8021a318:
    li      r0, 0x0
    stw     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x18(r28)
    cmpw    r3, r0
    blt-    branch_0x8021a344
    addi    r3, r31, 0x118
    crxor   6, 6, 6
    bl      SpcTrace__FPCce
    b       branch_0x8021a36c

branch_0x8021a344:
    lwz     r5, 0x20(r28)
    slwi    r4, r3, 3
    lwz     r3, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r28)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r28)
branch_0x8021a36c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl linSetBls__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetBls__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a38c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a3ec
    lis     r3, unk_8039d1b8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1b8@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a410

branch_0x8021a3ec:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a410:
    stw     r4, 0x34(sp)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x38(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8021a434
    lwz     r0, 0x34(sp)
    cmpwi   r0, 0x2
branch_0x8021a434:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021a464
    lis     r3, unk_8039d1d8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1d8@l
    bl      SpcTrace__FPCce
    b       branch_0x8021a48c

branch_0x8021a464:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021a48c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl linSetBlk__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetBlk__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a4a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a500
    lis     r3, unk_8039d1b8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1b8@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a524

branch_0x8021a500:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a524:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8021a55c
    cmpwi   r4, 0x2
    beq-    branch_0x8021a54c
    b       branch_0x8021a554

branch_0x8021a54c:
    lwz     r4, 0x34(sp)
    b       branch_0x8021a558

branch_0x8021a554:
    addi    r4, r2, R2Off_m0x18d8
branch_0x8021a558:
    bl      setBlk__6MActorFPCc
branch_0x8021a55c:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021a58c
    lis     r3, unk_8039d1d8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1d8@l
    bl      SpcTrace__FPCce
    b       branch_0x8021a5b4

branch_0x8021a58c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021a5b4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl linSetBtk__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetBtk__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a5c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a628
    lis     r3, unk_8039d1b8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1b8@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a64c

branch_0x8021a628:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a64c:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8021a684
    cmpwi   r4, 0x2
    beq-    branch_0x8021a674
    b       branch_0x8021a67c

branch_0x8021a674:
    lwz     r4, 0x34(sp)
    b       branch_0x8021a680

branch_0x8021a67c:
    addi    r4, r2, R2Off_m0x18d8
branch_0x8021a680:
    bl      setBtk__6MActorFPCc
branch_0x8021a684:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021a6b4
    lis     r3, unk_8039d1d8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1d8@l
    bl      SpcTrace__FPCce
    b       branch_0x8021a6dc

branch_0x8021a6b4:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021a6dc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl linSetBtp__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetBtp__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a6f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a750
    lis     r3, unk_8039d1b8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1b8@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a774

branch_0x8021a750:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a774:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8021a7ac
    cmpwi   r4, 0x2
    beq-    branch_0x8021a79c
    b       branch_0x8021a7a4

branch_0x8021a79c:
    lwz     r4, 0x34(sp)
    b       branch_0x8021a7a8

branch_0x8021a7a4:
    addi    r4, r2, R2Off_m0x18d8
branch_0x8021a7a8:
    bl      setBtp__6MActorFPCc
branch_0x8021a7ac:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021a7dc
    lis     r3, unk_8039d1d8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1d8@l
    bl      SpcTrace__FPCce
    b       branch_0x8021a804

branch_0x8021a7dc:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021a804:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl linSetBpk__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetBpk__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a878
    lis     r3, unk_8039d1b8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1b8@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a89c

branch_0x8021a878:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a89c:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8021a8d4
    cmpwi   r4, 0x2
    beq-    branch_0x8021a8c4
    b       branch_0x8021a8cc

branch_0x8021a8c4:
    lwz     r4, 0x34(sp)
    b       branch_0x8021a8d0

branch_0x8021a8cc:
    addi    r4, r2, R2Off_m0x18d8
branch_0x8021a8d0:
    bl      setBpk__6MActorFPCc
branch_0x8021a8d4:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021a904
    lis     r3, unk_8039d1d8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1d8@l
    bl      SpcTrace__FPCce
    b       branch_0x8021a92c

branch_0x8021a904:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021a92c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl linSetBck__FP29TSpcTypedInterp_10TLiveActor_Ul
linSetBck__FP29TSpcTypedInterp_10TLiveActor_Ul: # 0x8021a940
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    addi    r5, sp, 0xc
    stw     r4, 0xc(sp)
    li      r4, 0x1
    bl      verifyArgNum__10TSpcInterpFUlPUl
    lwz     r3, 0x1c(r31)
    cmpwi   r3, 0x0
    bgt-    branch_0x8021a9a0
    lis     r3, unk_8039d1b8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1b8@l
    bl      SpcTrace__FPCce
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
    b       branch_0x8021a9c4

branch_0x8021a9a0:
    addi    r0, r3, -0x1
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 3
    add     r3, r3, r0
    lwz     r4, 0x0(r3)
    lwz     r0, 0x4(r3)
    stw     r0, 0x2c(sp)
branch_0x8021a9c4:
    lwz     r0, 0x2c(sp)
    stw     r0, 0x34(sp)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x8021a9fc
    cmpwi   r4, 0x2
    beq-    branch_0x8021a9ec
    b       branch_0x8021a9f4

branch_0x8021a9ec:
    lwz     r4, 0x34(sp)
    b       branch_0x8021a9f8

branch_0x8021a9f4:
    addi    r4, r2, R2Off_m0x18d8
branch_0x8021a9f8:
    bl      setBck__6MActorFPCc
branch_0x8021a9fc:
    li      r0, 0x0
    stw     r0, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8021aa2c
    lis     r3, unk_8039d1d8@ha
    crxor   6, 6, 6
    addi    r3, r3, unk_8039d1d8@l
    bl      SpcTrace__FPCce
    b       branch_0x8021aa54

branch_0x8021aa2c:
    lwz     r5, 0x20(r31)
    slwi    r4, r3, 3
    lwz     r3, 0x1c(sp)
    lwz     r0, 0x20(sp)
    add     r4, r5, r4
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r3, 0x1c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x1c(r31)
branch_0x8021aa54:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl NerveGetByIndex__Fi
NerveGetByIndex__Fi: # 0x8021aa68
    mflr    r0
    cmplwi  r3, 0x6a
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bgt-    branch_0x8021adec
    lis     r4, unk_803d9db8@ha
    addi    r4, r4, unk_803d9db8@l
    slwi    r0, r3, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x8021aa94:
    bl      theNerve__22TNerveSmallEnemyFreezeFv
    b       branch_0x8021adf0

branch_0x8021aa9c:
    bl      theNerve__19TNerveSmallEnemyDieFv
    b       branch_0x8021adf0

branch_0x8021aaa4:
    bl      theNerve__20TNerveSmallEnemyJumpFv
    b       branch_0x8021adf0

branch_0x8021aaac:
    bl      theNerve__28TNerveSmallEnemyHitWaterJumpFv
    b       branch_0x8021adf0

branch_0x8021aab4:
    bl      theNerve__20TNerveWalkerGenerateFv
    b       branch_0x8021adf0

branch_0x8021aabc:
    bl      theNerve__23TNerveWalkerGraphWanderFv
    b       branch_0x8021adf0

branch_0x8021aac4:
    bl      theNerve__18TNerveWalkerEscapeFv
    b       branch_0x8021adf0

branch_0x8021aacc:
    bl      theNerve__18TNerveWalkerAttackFv
    b       branch_0x8021adf0

branch_0x8021aad4:
    bl      theNerve__22TNerveWalkerPostAttackFv
    b       branch_0x8021adf0

branch_0x8021aadc:
    bl      theNerve__22TNerveWalkerTraceMarioFv
    b       branch_0x8021adf0

branch_0x8021aae4:
    bl      theNerve__25TNerveNameKuriDrawPolluteFv
    b       branch_0x8021adf0

branch_0x8021aaec:
    bl      theNerve__18TNerveNameKuriLandFv
    b       branch_0x8021adf0

branch_0x8021aaf4:
    bl      theNerve__24TNerveNameKuriJumpAttackFv
    b       branch_0x8021adf0

branch_0x8021aafc:
    bl      theNerve__31TNerveNameKuriJumpAttackPrepareFv
    b       branch_0x8021adf0

branch_0x8021ab04:
    bl      theNerve__23TNerveNameKuriExplosionFv
    b       branch_0x8021adf0

branch_0x8021ab0c:
    bl      theNerve__21TNerveNameKuriDiffuseFv
    b       branch_0x8021adf0

branch_0x8021ab14:
    bl      theNerve__19TNerveNKFollowMarioFv
    b       branch_0x8021adf0

branch_0x8021ab1c:
    bl      theNerve__12TNerveBGWaitFv
    b       branch_0x8021adf0

branch_0x8021ab24:
    bl      theNerve__22TNerveBGTentacleDamageFv
    b       branch_0x8021adf0

branch_0x8021ab2c:
    bl      theNerve__17TNerveBGEyeDamageFv
    b       branch_0x8021adf0

branch_0x8021ab34:
    bl      theNerve__18TNerveBGBeakDamageFv
    b       branch_0x8021adf0

branch_0x8021ab3c:
    bl      theNerve__11TNerveBGTugFv
    b       branch_0x8021adf0

branch_0x8021ab44:
    bl      theNerve__11TNerveBGDieFv
    b       branch_0x8021adf0

branch_0x8021ab4c:
    bl      theNerve__15TNerveBGPolluteFv
    b       branch_0x8021adf0

branch_0x8021ab54:
    bl      theNerve__15TNerveBGPolDropFv
    b       branch_0x8021adf0

branch_0x8021ab5c:
    bl      theNerve__12TNerveBGRollFv
    b       branch_0x8021adf0

branch_0x8021ab64:
    bl      theNerve__12TNerveBPWaitFv
    b       branch_0x8021adf0

branch_0x8021ab6c:
    bl      theNerve__14TNerveBPCannonFv
    b       branch_0x8021adf0

branch_0x8021ab74:
    bl      theNerve__13TNerveBPVomitFv
    b       branch_0x8021adf0

branch_0x8021ab7c:
    bl      theNerve__15TNerveBPTornadoFv
    b       branch_0x8021adf0

branch_0x8021ab84:
    bl      theNerve__13TNerveBPPivotFv
    b       branch_0x8021adf0

branch_0x8021ab8c:
    bl      theNerve__15TNerveBPSwallowFv
    b       branch_0x8021adf0

branch_0x8021ab94:
    bl      theNerve__16TNerveBPTumbleInFv
    b       branch_0x8021adf0

branch_0x8021ab9c:
    bl      theNerve__14TNerveBPTumbleFv
    b       branch_0x8021adf0

branch_0x8021aba4:
    bl      theNerve__17TNerveBPTumbleOutFv
    b       branch_0x8021adf0

branch_0x8021abac:
    bl      theNerve__13TNerveBPGetUpFv
    b       branch_0x8021adf0

branch_0x8021abb4:
    bl      theNerve__13TNerveBPSwingFv
    b       branch_0x8021adf0

branch_0x8021abbc:
    bl      theNerve__18TNerveBPStompReactFv
    b       branch_0x8021adf0

branch_0x8021abc4:
    bl      theNerve__17TNerveBPJumpReactFv
    b       branch_0x8021adf0

branch_0x8021abcc:
    bl      theNerve__14TNerveBPPreDieFv
    b       branch_0x8021adf0

branch_0x8021abd4:
    bl      theNerve__11TNerveBPDieFv
    b       branch_0x8021adf0

branch_0x8021abdc:
    bl      theNerve__15TNerveBPTakeOffFv
    b       branch_0x8021adf0

branch_0x8021abe4:
    bl      theNerve__11TNerveBPFlyFv
    b       branch_0x8021adf0

branch_0x8021abec:
    bl      theNerve__17TNerveBPTouchDownFv
    b       branch_0x8021adf0

branch_0x8021abf4:
    bl      theNerve__17TNerveBPFlyCannonFv
    b       branch_0x8021adf0

branch_0x8021abfc:
    bl      theNerve__16TNerveBPFlyPivotFv
    b       branch_0x8021adf0

branch_0x8021ac04:
    bl      theNerve__12TNerveBPFallFv
    b       branch_0x8021adf0

branch_0x8021ac0c:
    bl      theNerve__13TNerveBPHoverFv
    b       branch_0x8021adf0

branch_0x8021ac14:
    bl      theNerve__13TNerveBPSleepFv
    b       branch_0x8021adf0

branch_0x8021ac1c:
    bl      theNerve__18TNerveBPBreakSleepFv
    b       branch_0x8021adf0

branch_0x8021ac24:
    bl      theNerve__13TNerveBPWaitLFv
    b       branch_0x8021adf0

branch_0x8021ac2c:
    bl      theNerve__15TNerveBPCannonLFv
    b       branch_0x8021adf0

branch_0x8021ac34:
    bl      theNerve__19TNerveBWGraphWanderFv
    b       branch_0x8021adf0

branch_0x8021ac3c:
    bl      theNerve__12TNerveBWRollFv
    b       branch_0x8021adf0

branch_0x8021ac44:
    bl      theNerve__12TNerveBWBarkFv
    b       branch_0x8021adf0

branch_0x8021ac4c:
    bl      theNerve__12TNerveBWJumpFv
    b       branch_0x8021adf0

branch_0x8021ac54:
    bl      theNerve__12TNerveBWStunFv
    b       branch_0x8021adf0

branch_0x8021ac5c:
    bl      theNerve__14TNerveBWWakeupFv
    b       branch_0x8021adf0

branch_0x8021ac64:
    bl      theNerve__18TNerveBWJumpToBathFv
    b       branch_0x8021adf0

branch_0x8021ac6c:
    bl      theNerve__11TNerveBWDieFv
    b       branch_0x8021adf0

branch_0x8021ac74:
    bl      theNerve__16TNerveBWJumpAwayFv
    b       branch_0x8021adf0

branch_0x8021ac7c:
    bl      theNerve__13TNerveBWShakeFv
    b       branch_0x8021adf0

branch_0x8021ac84:
    bl      theNerve__12TNerveBWFallFv
    b       branch_0x8021adf0

branch_0x8021ac8c:
    bl      theNerve__23TNerveBEelTearsGenerateFv
    b       branch_0x8021adf0

branch_0x8021ac94:
    bl      theNerve__27TNerveBEelTearsMarioRecoverFv
    b       branch_0x8021adf0

branch_0x8021ac9c:
    bl      theNerve__20TNerveBEelTearsSplitFv
    b       branch_0x8021adf0

branch_0x8021aca4:
    bl      theNerve__23TNerveBEelTearsWaterHitFv
    b       branch_0x8021adf0

branch_0x8021acac:
    bl      theNerve__21TNerveBEelTearsMoveUpFv
    b       branch_0x8021adf0

branch_0x8021acb4:
    bl      theNerve__17TNerveOilBallStayFv
    b       branch_0x8021adf0

branch_0x8021acbc:
    bl      theNerve__23TNerveBossEelWaitAppearFv
    b       branch_0x8021adf0

branch_0x8021acc4:
    bl      theNerve__22TNerveBossEelFirstSpinFv
    b       branch_0x8021adf0

branch_0x8021accc:
    bl      theNerve__23TNerveBossEelSecondSpinFv
    b       branch_0x8021adf0

branch_0x8021acd4:
    bl      theNerve__19TNerveBossEelAppearFv
    b       branch_0x8021adf0

branch_0x8021acdc:
    bl      theNerve__20TNerveBossEelOutWaitFv
    b       branch_0x8021adf0

branch_0x8021ace4:
    bl      theNerve__21TNerveBossEelSlowBackFv
    b       branch_0x8021adf0

branch_0x8021acec:
    bl      theNerve__22TNerveBossEelQuickBackFv
    b       branch_0x8021adf0

branch_0x8021acf4:
    bl      theNerve__16TNerveBossEelEatFv
    b       branch_0x8021adf0

branch_0x8021acfc:
    bl      theNerve__16TNerveBossEelDieFv
    b       branch_0x8021adf0

branch_0x8021ad04:
    bl      theNerve__26TNerveBossEelMouthOpenWaitFv
    b       branch_0x8021adf0

branch_0x8021ad0c:
    bl      theNerve__26TNerveBossEelSleepOnBottomFv
    b       branch_0x8021adf0

branch_0x8021ad14:
    bl      theNerve__29TNerveBossHanachanGraphWanderFv
    b       branch_0x8021adf0

branch_0x8021ad1c:
    bl      theNerve__24TNerveBossHanachanTumbleFv
    b       branch_0x8021adf0

branch_0x8021ad24:
    bl      theNerve__22TNerveBossHanachanDownFv
    b       branch_0x8021adf0

branch_0x8021ad2c:
    bl      theNerve__23TNerveBossHanachanGetUpFv
    b       branch_0x8021adf0

branch_0x8021ad34:
    bl      theNerve__24TNerveBossHanachanDamageFv
    b       branch_0x8021adf0

branch_0x8021ad3c:
    bl      theNerve__23TNerveBossHanachanSnortFv
    b       branch_0x8021adf0

branch_0x8021ad44:
    bl      theNerve__22TNerveBossHanachanDeadFv
    b       branch_0x8021adf0

branch_0x8021ad4c:
    bl      theNerve__23TNerveSBH_SleepContinueFv
    b       branch_0x8021adf0

branch_0x8021ad54:
    bl      theNerve__14TNerveSBH_FallFv
    b       branch_0x8021adf0

branch_0x8021ad5c:
    bl      theNerve__24TNerveTypicalGraphWanderFv
    b       branch_0x8021adf0

branch_0x8021ad64:
    bl      theNerve__20TNerveNPCGraphWanderFv
    b       branch_0x8021adf0

branch_0x8021ad6c:
    bl      theNerve__14TNerveNPCUTurnFv
    b       branch_0x8021adf0

branch_0x8021ad74:
    bl      theNerve__18TNerveNPCGraphWaitFv
    b       branch_0x8021adf0

branch_0x8021ad7c:
    bl      theNerve__21TNerveNPCWaitContinueFv
    b       branch_0x8021adf0

branch_0x8021ad84:
    bl      theNerve__26TNerveNPCWaitMarioApproachFv
    b       branch_0x8021adf0

branch_0x8021ad8c:
    bl      theNerve__20TNerveNPCTurnToMarioFv
    b       branch_0x8021adf0

branch_0x8021ad94:
    bl      theNerve__12TNerveNPCWetFv
    b       branch_0x8021adf0

branch_0x8021ad9c:
    bl      theNerve__13TNerveNPCSinkFv
    b       branch_0x8021adf0

branch_0x8021ada4:
    bl      theNerve__24TNerveNPCRecoverFromSinkFv
    b       branch_0x8021adf0

branch_0x8021adac:
    bl      theNerve__21TNerveNPCRecoverAfterFv
    b       branch_0x8021adf0

branch_0x8021adb4:
    bl      theNerve__30TNerveNPCSetPosAfterSinkBottomFv
    b       branch_0x8021adf0

branch_0x8021adbc:
    bl      theNerve__13TNerveNPCTalkFv
    b       branch_0x8021adf0

branch_0x8021adc4:
    bl      theNerve__14TNerveNPCThrowFv
    b       branch_0x8021adf0

branch_0x8021adcc:
    bl      theNerve__12TNerveNPCMadFv
    b       branch_0x8021adf0

branch_0x8021add4:
    bl      theNerve__14TNerveNPCBlownFv
    b       branch_0x8021adf0

branch_0x8021addc:
    bl      theNerve__18TNerveNPCMareStandFv
    b       branch_0x8021adf0

branch_0x8021ade4:
    bl      theNerve__23TNerveAnimalGraphWanderFv
    b       branch_0x8021adf0

branch_0x8021adec:
    li      r3, 0x0
branch_0x8021adf0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

