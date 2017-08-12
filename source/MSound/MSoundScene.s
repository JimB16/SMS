
.globl sortMaxTrans__9MSSceneSEFP3VecUcUc
sortMaxTrans__9MSSceneSEFP3VecUcUc: # 0x80017378
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r5, 24
    mulli   r0, r0, 0xc
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r29, r3, 0x0
    add     r25, r29, r0
    clrlslwi  r28, r6, 24, 2
    addi    r25, r25, 0x428
    add     r26, r25, r28
    addi    r31, r5, 0x0
    clrlwi  r27, r6, 24
    addi    r30, r4, 0x0
    lwz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x800173c8
    stw     r30, 0x0(r26)
    b       branch_0x80017534

branch_0x800173c8:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r30
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f31, f1
    lwz     r3, R13Off_m0x7164(r13)
    lwzx    r4, r25, r28
    bl      getDistFromCamera__6MSoundFP3Vec
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x80017498
    addi    r0, r27, 0x1
    cmpwi   r0, 0x3
    bge-    branch_0x80017490
    clrlwi  r28, r0, 24
    lwz     r27, 0x0(r26)
    clrlslwi  r0, r0, 24, 2
    add     r25, r25, r0
    lwz     r0, 0x0(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x80017420
    stw     r27, 0x0(r25)
    b       branch_0x80017490

branch_0x80017420:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r27
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f31, f1
    lwz     r3, R13Off_m0x7164(r13)
    lwz     r4, 0x0(r25)
    bl      getDistFromCamera__6MSoundFP3Vec
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x80017470
    addi    r0, r28, 0x1
    cmpwi   r0, 0x3
    bge-    branch_0x80017468
    lwz     r4, 0x0(r25)
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    clrlwi  r6, r0, 24
    bl      sortMaxTrans__9MSSceneSEFP3VecUcUc
branch_0x80017468:
    stw     r27, 0x0(r25)
    b       branch_0x80017490

branch_0x80017470:
    addi    r0, r28, 0x1
    cmpwi   r0, 0x3
    bge-    branch_0x80017490
    addi    r3, r29, 0x0
    addi    r4, r27, 0x0
    addi    r5, r31, 0x0
    clrlwi  r6, r0, 24
    bl      sortMaxTrans__9MSSceneSEFP3VecUcUc
branch_0x80017490:
    stw     r30, 0x0(r26)
    b       branch_0x80017534

branch_0x80017498:
    addi    r0, r27, 0x1
    cmpwi   r0, 0x3
    bge-    branch_0x80017534
    clrlwi  r28, r0, 24
    clrlslwi  r0, r0, 24, 2
    add     r25, r25, r0
    lwz     r0, 0x0(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x800174c4
    stw     r30, 0x0(r25)
    b       branch_0x80017534

branch_0x800174c4:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r30
    bl      getDistFromCamera__6MSoundFP3Vec
    fmr     f31, f1
    lwz     r3, R13Off_m0x7164(r13)
    lwz     r4, 0x0(r25)
    bl      getDistFromCamera__6MSoundFP3Vec
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x80017514
    addi    r0, r28, 0x1
    cmpwi   r0, 0x3
    bge-    branch_0x8001750c
    lwz     r4, 0x0(r25)
    addi    r3, r29, 0x0
    addi    r5, r31, 0x0
    clrlwi  r6, r0, 24
    bl      sortMaxTrans__9MSSceneSEFP3VecUcUc
branch_0x8001750c:
    stw     r30, 0x0(r25)
    b       branch_0x80017534

branch_0x80017514:
    addi    r0, r28, 0x1
    cmpwi   r0, 0x3
    bge-    branch_0x80017534
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    clrlwi  r6, r0, 24
    bl      sortMaxTrans__9MSSceneSEFP3VecUcUc
branch_0x80017534:
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl frameLoop__9MSSceneSEFUlP3VecUc
frameLoop__9MSSceneSEFUlP3VecUc: # 0x8001754c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stfd    f30, 0xb0(sp)
    stfd    f29, 0xa8(sp)
    stfd    f28, 0xa0(sp)
    stfd    f27, 0x98(sp)
    stmw    r22, 0x70(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r22, r5, 0x0
    addi    r30, r6, 0x0
    lwz     r3, R13Off_m0x7164(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8001793c
    clrlwi  r0, r30, 24
    cmpwi   r0, 0x100
    bgt-    branch_0x8001793c
    cmplwi  r0, 0x0
    addi    r8, r22, 0x0
    li      r9, 0x0
    ble-    branch_0x80017644
    cmplwi  r0, 0x8
    addi    r0, r30, -0x8
    ble-    branch_0x8001761c
    clrlwi  r0, r0, 24
    b       branch_0x80017610

branch_0x800175c0:
    clrlslwi  r3, r9, 24, 2
    addi    r7, r3, 0x4
    add     r7, r28, r7
    stw     r8, 0x0(r7)
    addi    r3, r8, 0xc
    addi    r4, r8, 0x18
    stw     r3, 0x4(r7)
    addi    r3, r8, 0x24
    addi    r6, r8, 0x30
    stw     r4, 0x8(r7)
    addi    r5, r8, 0x3c
    addi    r4, r8, 0x48
    stw     r3, 0xc(r7)
    addi    r3, r8, 0x54
    addi    r8, r8, 0x60
    stw     r6, 0x10(r7)
    addi    r9, r9, 0x8
    stw     r5, 0x14(r7)
    stw     r4, 0x18(r7)
    stw     r3, 0x1c(r7)
branch_0x80017610:
    clrlwi  r3, r9, 24
    cmplw   r3, r0
    blt+    branch_0x800175c0
branch_0x8001761c:
    clrlwi  r0, r30, 24
    b       branch_0x80017638

branch_0x80017624:
    clrlslwi  r3, r9, 24, 2
    addi    r3, r3, 0x4
    stwx    r8, r28, r3
    addi    r8, r8, 0xc
    addi    r9, r9, 0x1
branch_0x80017638:
    clrlwi  r3, r9, 24
    cmplw   r3, r0
    blt+    branch_0x80017624
branch_0x80017644:
    lwz     r4, R13Off_m0x7164(r13)
    li      r6, 0x0
    lfs     f0, -0x7ca8(r2)
    li      r3, 0x0
    lwz     r4, 0x8(r4)
    lwz     r31, 0x8(r4)
    b       branch_0x80017688

branch_0x80017660:
    clrlwi  r0, r6, 24
    mulli   r0, r0, 0xc
    add     r4, r28, r0
    stfs    f0, 0x404(r4)
    addi    r6, r6, 0x1
    stfs    f0, 0x408(r4)
    stfs    f0, 0x40c(r4)
    stw     r3, 0x428(r4)
    stw     r3, 0x42c(r4)
    stw     r3, 0x430(r4)
branch_0x80017688:
    clrlwi  r0, r6, 24
    cmplwi  r0, 0x3
    blt+    branch_0x80017660
    lfs     f29, -0x7c9c(r2)
    clrlwi  r30, r30, 24
    lfs     f30, -0x7c98(r2)
    li      r23, 0x0
    lfs     f28, -0x7ca4(r2)
    lfs     f27, -0x7ca0(r2)
    b       branch_0x800177c4

branch_0x800176b0:
    clrlslwi  r3, r23, 24, 2
    addi    r27, r3, 0x4
    add     r27, r28, r27
    lwz     r4, 0x0(r27)
    addi    r3, r31, 0x0
    addi    r5, sp, 0x3c
    bl      PSMTXMultVec
    lfs     f1, 0x3c(sp)
    lfs     f2, 0x44(sp)
    bl      atan2f
    fcmpo   cr0, f1, f27
    bge-    branch_0x800176e8
    fmr     f1, f27
    b       branch_0x800176f4

branch_0x800176e8:
    fcmpo   cr0, f1, f28
    ble-    branch_0x800176f4
    fmr     f1, f28
branch_0x800176f4:
    fcmpo   cr0, f1, f27
    cror    2, 1, 2
    bne-    branch_0x80017710
    fcmpo   cr0, f1, f29
    bge-    branch_0x80017710
    li      r22, 0x0
    b       branch_0x80017730

branch_0x80017710:
    fcmpo   cr0, f1, f29
    cror    2, 1, 2
    bne-    branch_0x8001772c
    fcmpo   cr0, f1, f30
    bge-    branch_0x8001772c
    li      r22, 0x1
    b       branch_0x80017730

branch_0x8001772c:
    li      r22, 0x2
branch_0x80017730:
    clrlwi  r0, r22, 24
    lwz     r27, 0x0(r27)
    mulli   r0, r0, 0xc
    add     r25, r28, r0
    addi    r26, r25, 0x428
    lwz     r0, 0x428(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x80017758
    stw     r27, 0x0(r26)
    b       branch_0x800177c0

branch_0x80017758:
    lwz     r3, R13Off_m0x7164(r13)
    mr      r4, r27
    bl      getDistFromCamera__6MSoundFP3Vec
    li      r0, 0x0
    fmr     f31, f1
    slwi    r4, r0, 2
    lwz     r3, R13Off_m0x7164(r13)
    addi    r24, r4, 0x428
    add     r24, r25, r24
    lwz     r4, 0x0(r24)
    bl      getDistFromCamera__6MSoundFP3Vec
    fcmpo   cr0, f1, f31
    cror    2, 1, 2
    bne-    branch_0x800177ac
    lwz     r4, 0x0(r24)
    addi    r3, r28, 0x0
    addi    r5, r22, 0x0
    li      r6, 0x1
    bl      sortMaxTrans__9MSSceneSEFP3VecUcUc
    stw     r27, 0x0(r26)
    b       branch_0x800177c0

branch_0x800177ac:
    addi    r3, r28, 0x0
    addi    r4, r27, 0x0
    addi    r5, r22, 0x0
    li      r6, 0x1
    bl      sortMaxTrans__9MSSceneSEFP3VecUcUc
branch_0x800177c0:
    addi    r23, r23, 0x1
branch_0x800177c4:
    clrlwi  r0, r23, 24
    cmplw   r0, r30
    blt+    branch_0x800176b0
    lfd     f3, -0x7c90(r2)
    li      r7, 0x0
    lis     r3, 0x4330
    b       branch_0x800178b4

branch_0x800177e0:
    clrlwi  r0, r7, 24
    mulli   r0, r0, 0xc
    add     r6, r28, r0
    li      r8, 0x0
    b       branch_0x80017848

branch_0x800177f4:
    clrlslwi  r4, r8, 24, 2
    addi    r5, r4, 0x428
    add     r5, r6, r5
    lwz     r4, 0x0(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x80017854
    lfs     f1, 0x404(r6)
    addi    r8, r8, 0x1
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x404(r6)
    lwz     r4, 0x0(r5)
    lfs     f1, 0x408(r6)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x408(r6)
    lwz     r4, 0x0(r5)
    lfs     f1, 0x40c(r6)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40c(r6)
branch_0x80017848:
    clrlwi  r0, r8, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800177f4
branch_0x80017854:
    clrlwi. r0, r8, 24
    beq-    branch_0x800178b0
    stw     r0, 0x6c(sp)
    lfs     f1, 0x404(r6)
    stw     r3, 0x68(sp)
    lfd     f0, 0x68(sp)
    stw     r0, 0x64(sp)
    fsubs   f0, f0, f3
    stw     r3, 0x60(sp)
    fdivs   f2, f1, f0
    lfd     f1, 0x60(sp)
    stw     r0, 0x5c(sp)
    stw     r3, 0x58(sp)
    lfd     f0, 0x58(sp)
    stfs    f2, 0x404(r6)
    fsubs   f1, f1, f3
    fsubs   f0, f0, f3
    lfs     f2, 0x408(r6)
    fdivs   f1, f2, f1
    stfs    f1, 0x408(r6)
    lfs     f1, 0x40c(r6)
    fdivs   f0, f1, f0
    stfs    f0, 0x40c(r6)
branch_0x800178b0:
    addi    r7, r7, 0x1
branch_0x800178b4:
    clrlwi  r0, r7, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800177e0
    li      r22, 0x0
    b       branch_0x80017930

branch_0x800178c8:
    clrlwi  r4, r22, 24
    mulli   r0, r4, 0xc
    add     r24, r28, r0
    lwz     r0, 0x428(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x8001792c
    lbz     r0, 0x0(r28)
    cmplwi  r0, 0x0
    bne-    branch_0x80017924
    add     r25, r29, r4
    lwz     r3, R13Off_m0x7164(r13)
    addi    r4, r25, 0x0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8001792c
    addi    r3, r25, 0x0
    addi    r4, r24, 0x404
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8001792c

branch_0x80017924:
    mr      r3, r29
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x8001792c:
    addi    r22, r22, 0x1
branch_0x80017930:
    clrlwi  r0, r22, 24
    cmplwi  r0, 0x3
    blt+    branch_0x800178c8
branch_0x8001793c:
    lmw     r22, 0x70(sp)
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lfd     f30, 0xb0(sp)
    mtlr    r0
    lfd     f29, 0xa8(sp)
    lfd     f28, 0xa0(sp)
    lfd     f27, 0x98(sp)
    addi    sp, sp, 0xc0
    blr


.globl __ct__9MSSceneSEFUl
__ct__9MSSceneSEFUl: # 0x80017964
    li      r0, 0x4
    li      r4, 0x0
    mtctr   r0
    addi    r11, r4, 0x0
    addi    r10, r4, 0x0
    addi    r9, r4, 0x0
    addi    r8, r4, 0x0
    addi    r7, r4, 0x0
    addi    r6, r4, 0x0
    addi    r5, r4, 0x0
    addi    r0, r4, 0x0
branch_0x80017990:
    add     r12, r3, r4
    stw     r11, 0x4(r12)
    addi    r4, r4, 0x20
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    add     r12, r3, r4
    addi    r4, r4, 0x20
    stw     r11, 0x4(r12)
    stw     r10, 0x8(r12)
    stw     r9, 0xc(r12)
    stw     r8, 0x10(r12)
    stw     r7, 0x14(r12)
    stw     r6, 0x18(r12)
    stw     r5, 0x1c(r12)
    stw     r0, 0x20(r12)
    bdnz+      branch_0x80017990
    li      r0, 0x0
    stb     r0, 0x0(r3)
    blr


.globl __sinit_MSoundScene_cpp
__sinit_MSoundScene_cpp: # 0x80017ae0
    mflr    r0
    lis     r3, _posByCamera@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, _posByCamera@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80017b28
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0xc00
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80017b28:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80017b58
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc0c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80017b58:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80017b88
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0xc18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80017b88:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80017bb8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0xc24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80017bb8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80017be8
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0xc30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80017be8:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80017c18
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xc3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80017c18:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80017c48
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xc48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80017c48:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80017c78
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xc54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80017c78:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80017ca8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xc60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80017ca8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80017cd8
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xc6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80017cd8:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80017d08
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0xc78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80017d08:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80017d38
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0xc84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80017d38:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80017d68
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xc90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80017d68:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80017d98
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xc9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80017d98:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80017dc8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xca8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80017dc8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

