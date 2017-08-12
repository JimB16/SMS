
.globl checkNextFrameSe__8JAIBasicFv
checkNextFrameSe__8JAIBasicFv: # 0x80305204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stfd    f31, 0x188(sp)
    stfd    f30, 0x180(sp)
    stfd    f29, 0x178(sp)
    stfd    f28, 0x170(sp)
    stfd    f27, 0x168(sp)
    stfd    f26, 0x160(sp)
    stmw    r17, 0x124(sp)
    addi    r24, r3, 0x0
    addi    r3, sp, 0xd0
    bl      __ct__8JAISoundFv
    lfs     f2, -0x7470(r13)
    lfs     f1, 0x4f8(r2)
    lfs     f0, 0x4fc(r2)
    fmuls   f31, f2, f2
    fdivs   f1, f2, f1
    fcmpu   cr0, f0, f1
    fmr     f30, f1
    bne-    branch_0x8030525c
    lfs     f30, 0x500(r2)
branch_0x8030525c:
    lis     r3, dummyZeroVec__8JAIConst@h
    lfs     f28, 0x508(r2)
    lis     r4, unk_7fffffff@ha
    lfd     f26, 0x510(r2)
    lfs     f27, 0x4fc(r2)
    addi    r31, sp, 0x10
    addi    r29, r3, dummyZeroVec__8JAIConst@l
    addi    r28, r4, unk_7fffffff@l
    li      r25, 0x0
    li      r23, 0x0
    li      r22, 0x0
    li      r21, 0x0
    lis     r30, 0x4330
    b       branch_0x80305920

branch_0x80305294:
    li      r8, 0x0
    li      r6, 0x0
    li      r5, 0xff
    b       branch_0x803052c4

branch_0x803052a4:
    clrlwi  r0, r8, 24
    mulli   r0, r0, 0xc
    addi    r3, sp, 0x10
    add     r3, r3, r0
    stw     r28, 0x4(r3)
    addi    r8, r8, 0x1
    stw     r6, 0x8(r3)
    stb     r5, 0x0(r3)
branch_0x803052c4:
    lwz     r7, 0x0(r24)
    clrlwi  r4, r8, 24
    lbz     r0, 0x10(r24)
    lwz     r3, 0x4(r7)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    lbzx    r0, r21, r0
    cmplw   r4, r0
    blt+    branch_0x803052a4
    lwz     r3, 0x1e8(r7)
    addi    r0, r22, 0x4
    li      r26, 0x0
    lwzx    r18, r3, r0
    b       branch_0x803056c0

branch_0x803052fc:
    lbz     r3, 0x1(r18)
    cmplwi  r3, 0x1
    bne-    branch_0x80305324
    lwz     r0, 0x8(r18)
    rlwinm. r0, r0, 0, 20, 21
    beq-    branch_0x80305324
    lbz     r3, 0x2(r18)
    addi    r0, r3, -0x1
    stb     r0, 0x2(r18)
    b       branch_0x80305350

branch_0x80305324:
    lwz     r0, 0x8(r18)
    rlwinm. r0, r0, 0, 20, 21
    bne-    branch_0x80305350
    cmplwi  r3, 0x5
    bne-    branch_0x80305350
    lwz     r0, 0x30(r18)
    addi    r3, r24, 0x0
    addi    r4, r18, 0x0
    stw     r0, 0x100(sp)
    bl      releaseSeRegist__8JAIBasicFP8JAISound
    addi    r18, sp, 0xd0
branch_0x80305350:
    lbz     r0, 0x2(r18)
    cmplwi  r0, 0x0
    bne-    branch_0x80305378
    lwz     r0, 0x30(r18)
    addi    r3, r24, 0x0
    addi    r4, r18, 0x0
    stw     r0, 0x100(sp)
    bl      releaseSeRegist__8JAIBasicFP8JAISound
    addi    r18, sp, 0xd0
    b       branch_0x803056b4

branch_0x80305378:
    lbz     r0, 0x1(r18)
    cmplwi  r0, 0x0
    beq-    branch_0x803056b4
    lbz     r3, 0x4(r18)
    lfs     f29, 0x504(r2)
    cmplwi  r3, 0x4
    bne-    branch_0x803053a4
    lwz     r0, R13Off_m0x7450(r13)
    li      r3, 0x0
    clrlwi  r0, r0, 24
    b       branch_0x803053a8

branch_0x803053a4:
    addi    r0, r3, 0x1
branch_0x803053a8:
    addi    r19, r3, 0x0
    clrlwi  r27, r0, 24
    b       branch_0x80305500

branch_0x803053b4:
    clrlwi  r5, r19, 24
    lwz     r3, 0x1c(r18)
    mulli   r0, r5, 0x1c
    add     r20, r3, r0
    lwz     r3, 0x0(r20)
    lwz     r0, 0x4(r20)
    stw     r3, 0xc(r20)
    stw     r0, 0x10(r20)
    lwz     r0, 0x8(r20)
    stw     r0, 0x14(r20)
    lwz     r4, 0x24(r18)
    cmplwi  r4, 0x0
    bne-    branch_0x80305404
    lwz     r3, 0x0(r29)
    lwz     r0, 0x4(r29)
    stw     r3, 0x0(r20)
    stw     r0, 0x4(r20)
    lwz     r0, 0x8(r29)
    stw     r0, 0x8(r20)
    b       branch_0x8030541c

branch_0x80305404:
    mulli   r3, r5, 0xc
    lwz     r5, 0x8(r24)
    addi    r0, r3, 0x8
    lwzx    r3, r5, r0
    mr      r5, r20
    bl      PSMTXMultVec
branch_0x8030541c:
    lfs     f1, 0x0(r20)
    mr      r3, r18
    lfs     f0, 0x4(r20)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r20)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0x18(r20)
    bl      getInfoPriority__8JAISoundFv
    lha     r4, 0x6(r18)
    clrlwi  r3, r3, 24
    extsh.  r0, r4
    beq-    branch_0x8030547c
    add     r3, r3, r4
    extsh.  r0, r3
    bge-    branch_0x8030546c
    li      r3, 0x0
    b       branch_0x8030547c

branch_0x8030546c:
    extsh   r0, r3
    cmpwi   r0, 0xff
    ble-    branch_0x8030547c
    li      r3, 0xff
branch_0x8030547c:
    extsh   r0, r3
    subfic  r0, r0, 0xff
    mullw   r0, r0, r0
    mulli   r0, r0, 0x1690
    xoris   r0, r0, 0x8000
    stw     r0, 0x11c(sp)
    stw     r30, 0x118(sp)
    lfd     f0, 0x118(sp)
    fsubs   f0, f0, f26
    fdivs   f1, f0, f30
    bl      __cvt_fp2unsigned
    lfs     f0, 0x18(r20)
    mr      r17, r3
    fdivs   f1, f0, f30
    bl      __cvt_fp2unsigned
    add     r0, r3, r17
    stw     r0, 0xc(r18)
    lfs     f0, 0x8(r20)
    fcmpo   cr0, f0, f27
    ble-    branch_0x803054e4
    fmuls   f0, f28, f0
    fdivs   f1, f0, f30
    bl      __cvt_fp2unsigned
    lwz     r0, 0xc(r18)
    add     r0, r0, r3
    stw     r0, 0xc(r18)
branch_0x803054e4:
    clrlwi. r0, r19, 24
    beq-    branch_0x803054f8
    lfs     f0, 0x18(r20)
    fcmpo   cr0, f0, f29
    bge-    branch_0x803054fc
branch_0x803054f8:
    lfs     f29, 0x18(r20)
branch_0x803054fc:
    addi    r19, r19, 0x1
branch_0x80305500:
    clrlwi  r0, r19, 24
    cmplw   r0, r27
    blt+    branch_0x803053b4
    lbz     r0, 0x4(r18)
    cmplwi  r0, 0x4
    bne-    branch_0x80305528
    lwz     r3, 0xc(r18)
    lwz     r0, R13Off_m0x7450(r13)
    divwu   r0, r3, r0
    stw     r0, 0xc(r18)
branch_0x80305528:
    mr      r3, r18
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x80305540
    fmr     f0, f31
    b       branch_0x80305544

branch_0x80305540:
    lfs     f0, 0x50c(r2)
branch_0x80305544:
    fcmpo   cr0, f29, f0
    ble-    branch_0x803055c8
    lwz     r0, 0x8(r18)
    rlwinm. r0, r0, 0, 20, 21
    bne-    branch_0x803055a8
    lbz     r0, 0x1(r18)
    cmplwi  r0, 0x1
    beq-    branch_0x8030559c
    lwz     r3, 0x38(r24)
    bl      getSeqParameter__8JAISoundFv
    lbz     r0, 0x0(r18)
    li      r5, 0x0
    lwz     r3, 0x0(r3)
    srawi   r4, r0, 4
    addis   r4, r4, 0x2000
    clrlslwi  r0, r0, 28, 4
    add     r4, r4, r0
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    lwz     r3, 0x38(r24)
    li      r5, 0x1
    lbz     r4, 0x0(r18)
    bl      setTrackInterruptSwitch__8JAISoundFUcUc
branch_0x8030559c:
    li      r0, 0x1
    stb     r0, 0x1(r18)
    b       branch_0x803056b4

branch_0x803055a8:
    lwz     r0, 0x30(r18)
    addi    r3, r24, 0x0
    addi    r4, r18, 0x0
    stw     r0, 0x100(sp)
    li      r5, 0x0
    bl      stopSoundHandle__8JAIBasicFP8JAISoundUl
    addi    r18, sp, 0xd0
    b       branch_0x803056b4

branch_0x803055c8:
    mr      r3, r18
    bl      getSeCategoryNumber__8JAISoundFv
    lwz     r4, 0x0(r24)
    clrlslwi  r6, r3, 24, 1
    lbz     r0, 0x10(r24)
    li      r5, 0x0
    lwz     r3, 0x4(r4)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lbzx    r6, r3, r6
    addi    r0, r6, -0x1
    b       branch_0x803056a8

branch_0x803055f8:
    clrlwi  r3, r5, 24
    lwz     r8, 0xc(r18)
    mulli   r4, r3, 0xc
    addi    r3, sp, 0x10
    add     r3, r3, r4
    addi    r4, r3, 0x4
    lwz     r7, 0x4(r3)
    cmplw   r8, r7
    blt-    branch_0x80305630
    bne-    branch_0x803056a4
    lbz     r8, 0x0(r3)
    lbz     r7, 0x1(r18)
    cmplw   r8, r7
    blt-    branch_0x803056a4
branch_0x80305630:
    clrlwi  r7, r26, 24
    cmplw   r7, r6
    bge-    branch_0x80305640
    addi    r26, r26, 0x1
branch_0x80305640:
    clrlwi  r11, r0, 24
    clrlwi  r5, r5, 24
    b       branch_0x80305680

branch_0x8030564c:
    clrlwi  r7, r11, 24
    mulli   r8, r7, 0xc
    addi    r9, sp, 0x10
    add     r9, r9, r8
    addi    r10, sp, 0x10
    lwz     r7, -0x8(r9)
    add     r10, r10, r8
    stw     r7, 0x4(r10)
    addi    r11, r11, -0x1
    lwz     r7, -0x4(r9)
    stw     r7, 0x8(r10)
    lbz     r7, -0xc(r9)
    stb     r7, 0x0(r3)
branch_0x80305680:
    clrlwi  r7, r11, 24
    cmplw   r7, r5
    bgt+    branch_0x8030564c
    lwz     r7, 0xc(r18)
    mr      r5, r6
    stw     r7, 0x0(r4)
    stw     r18, 0x8(r3)
    lbz     r4, 0x1(r18)
    stb     r4, 0x0(r3)
branch_0x803056a4:
    addi    r5, r5, 0x1
branch_0x803056a8:
    clrlwi  r3, r5, 24
    cmplw   r3, r6
    blt+    branch_0x803055f8
branch_0x803056b4:
    cmplwi  r18, 0x0
    beq-    branch_0x803056c0
    lwz     r18, 0x30(r18)
branch_0x803056c0:
    cmplwi  r18, 0x0
    bne+    branch_0x803052fc
    clrlwi  r0, r26, 24
    li      r7, 0x0
    li      r5, 0x2
    li      r4, 0x3
    b       branch_0x80305710

branch_0x803056dc:
    clrlwi  r3, r7, 24
    mulli   r3, r3, 0xc
    addi    r3, r3, 0x8
    lwzx    r6, r31, r3
    lbz     r3, 0x1(r6)
    cmplwi  r3, 0x1
    bne-    branch_0x80305700
    stb     r5, 0x1(r6)
    b       branch_0x8030570c

branch_0x80305700:
    cmplwi  r3, 0x4
    bne-    branch_0x8030570c
    stb     r4, 0x1(r6)
branch_0x8030570c:
    addi    r7, r7, 0x1
branch_0x80305710:
    clrlwi  r3, r7, 24
    cmplw   r3, r0
    blt+    branch_0x803056dc
    lwz     r3, 0x0(r24)
    li      r27, 0x0
    lbz     r0, 0x10(r24)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    lbzx    r26, r3, r21
    addi    r19, r26, 0x1
    clrlwi  r20, r26, 24
    b       branch_0x80305904

branch_0x80305744:
    lwz     r3, 0x0(r24)
    clrlwi  r0, r27, 24
    mulli   r18, r0, 0xc
    lwz     r0, 0x8(r3)
    lwzx    r3, r23, r0
    addi    r5, r18, 0x8
    li      r0, 0x0
    add     r5, r3, r5
    lwz     r4, 0x0(r5)
    cmplwi  r4, 0x0
    bne-    branch_0x80305778
    li      r0, 0x1
    b       branch_0x80305820

branch_0x80305778:
    lbz     r3, 0x1(r4)
    cmplwi  r3, 0x4
    bne-    branch_0x803057b4
    lwz     r0, 0x8(r4)
    rlwinm. r0, r0, 0, 20, 21
    beq-    branch_0x8030579c
    mr      r3, r24
    bl      releaseSeRegist__8JAIBasicFP8JAISound
    b       branch_0x803057ac

branch_0x8030579c:
    li      r0, 0x1
    stb     r0, 0x1(r4)
    li      r0, 0x0
    stb     r0, 0x2(r4)
branch_0x803057ac:
    li      r0, 0x1
    b       branch_0x80305820

branch_0x803057b4:
    cmplwi  r3, 0x0
    bne-    branch_0x803057cc
    li      r0, 0x0
    stw     r0, 0x0(r5)
    li      r0, 0x1
    b       branch_0x80305820

branch_0x803057cc:
    li      r7, 0x0
    addi    r4, r7, 0x0
    b       branch_0x80305814

branch_0x803057d8:
    lwz     r5, 0x0(r24)
    clrlwi  r3, r7, 24
    mulli   r3, r3, 0xc
    lwz     r5, 0x8(r5)
    lwzx    r5, r23, r5
    addi    r6, r3, 0x8
    add     r6, r31, r6
    addi    r5, r5, 0x8
    lwz     r3, 0x0(r6)
    lwzx    r5, r18, r5
    cmplw   r5, r3
    bne-    branch_0x80305810
    stw     r4, 0x0(r6)
    mr      r7, r26
branch_0x80305810:
    addi    r7, r7, 0x1
branch_0x80305814:
    clrlwi  r3, r7, 24
    cmplw   r3, r20
    blt+    branch_0x803057d8
branch_0x80305820:
    clrlwi  r3, r0, 24
    cmplwi  r3, 0x1
    bne-    branch_0x80305900
    li      r5, 0x0
    b       branch_0x803058d8

branch_0x80305834:
    clrlwi  r3, r5, 24
    mulli   r3, r3, 0xc
    addi    r4, r3, 0x8
    add     r4, r31, r4
    lwz     r3, 0x0(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x803058d4
    lbz     r6, 0x1(r3)
    cmplwi  r6, 0x3
    beq-    branch_0x803058d4
    li      r8, 0x0
    b       branch_0x8030589c

branch_0x80305864:
    lwz     r7, 0x0(r24)
    clrlwi  r6, r8, 24
    mulli   r6, r6, 0xc
    lwz     r7, 0x8(r7)
    lwzx    r7, r7, r23
    addi    r6, r6, 0x8
    lwzx    r6, r7, r6
    cmplwi  r6, 0x0
    beq-    branch_0x80305898
    cmplw   r3, r6
    bne-    branch_0x80305898
    li      r0, 0x0
    addi    r8, r26, 0x0
branch_0x80305898:
    addi    r8, r8, 0x1
branch_0x8030589c:
    clrlwi  r6, r8, 24
    cmplw   r6, r20
    blt+    branch_0x80305864
    clrlwi  r6, r0, 24
    cmplwi  r6, 0x1
    bne-    branch_0x803058d4
    lwz     r7, 0x0(r24)
    li      r6, 0x0
    clrlwi  r5, r19, 24
    lwz     r7, 0x8(r7)
    lwzx    r7, r23, r7
    addi    r7, r7, 0x8
    stwx    r3, r18, r7
    stw     r6, 0x0(r4)
branch_0x803058d4:
    addi    r5, r5, 0x1
branch_0x803058d8:
    clrlwi  r3, r5, 24
    cmplw   r3, r20
    blt+    branch_0x80305834
    bne-    branch_0x80305900
    lwz     r3, 0x0(r24)
    addi    r0, r18, 0x8
    li      r4, 0x0
    lwz     r3, 0x8(r3)
    lwzx    r3, r23, r3
    stwx    r4, r3, r0
branch_0x80305900:
    addi    r27, r27, 0x1
branch_0x80305904:
    clrlwi  r0, r27, 24
    cmplw   r0, r20
    blt+    branch_0x80305744
    addi    r25, r25, 0x1
    addi    r23, r23, 0x4
    addi    r22, r22, 0xc
    addi    r21, r21, 0x2
branch_0x80305920:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    cmplw   r25, r3
    blt+    branch_0x80305294
    lmw     r17, 0x124(sp)
    lwz     r0, 0x194(sp)
    lfd     f31, 0x188(sp)
    lfd     f30, 0x180(sp)
    mtlr    r0
    lfd     f29, 0x178(sp)
    lfd     f28, 0x170(sp)
    lfd     f27, 0x168(sp)
    lfd     f26, 0x160(sp)
    addi    sp, sp, 0x190
    blr


.globl sendPlayingSeCommand__8JAIBasicFv
sendPlayingSeCommand__8JAIBasicFv: # 0x80305958
    mflr    r0
    lis     r4, unk_0019660d@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stfd    f31, 0xa0(sp)
    stfd    f30, 0x98(sp)
    stfd    f29, 0x90(sp)
    stfd    f28, 0x88(sp)
    stfd    f27, 0x80(sp)
    stfd    f26, 0x78(sp)
    stmw    r17, 0x3c(sp)
    mr      r31, r3
    addi    r29, r4, unk_0019660d@l
    li      r23, 0x0
    li      r22, 0x0
    lfs     f29, 0x4fc(r2)
    lfd     f30, 0x518(r2)
    lfd     f31, 0x520(r2)
    lfs     f27, 0x528(r2)
    lfs     f28, 0x500(r2)
    b       branch_0x80305ea0

branch_0x803059ac:
    clrlslwi  r28, r22, 24, 2
    clrlslwi  r27, r22, 24, 1
    li      r25, 0x0
    b       branch_0x80305e78

branch_0x803059bc:
    clrlwi  r0, r25, 24
    lwz     r4, 0x8(r5)
    mulli   r3, r0, 0xc
    lwzx    r4, r28, r4
    addi    r0, r3, 0x8
    lwzx    r0, r4, r0
    cmplwi  r0, 0x0
    mr      r24, r0
    beq-    branch_0x80305e70
    lwz     r4, 0x14(r24)
    extrwi  r3, r23, 4, 24
    addi    r0, r4, 0x1
    stw     r0, 0x14(r24)
    addis   r4, r3, 0x2000
    clrlslwi  r0, r23, 28, 4
    lwz     r3, 0x38(r31)
    add     r21, r4, r0
    bl      getSeqParameter__8JAISoundFv
    lwz     r20, 0x0(r3)
    addis   r4, r21, 0x2
    addi    r5, sp, 0x28
    addi    r3, r20, 0x0
    bl      readPortApp__18JAISystemInterfaceFUlUlPUs
    addi    r3, r20, 0x0
    addi    r4, r21, 0x0
    addi    r5, sp, 0x26
    bl      readPortApp__18JAISystemInterfaceFUlUlPUs
    lwz     r4, 0x1c(r24)
    li      r5, 0x0
    lwz     r0, R13Off_m0x7450(r13)
    b       branch_0x80305aa0

branch_0x80305a38:
    clrlwi  r3, r5, 24
    mulli   r3, r3, 0x1c
    addi    r3, r3, 0x18
    add     r3, r4, r3
    lfs     f2, 0x0(r3)
    fcmpo   cr0, f2, f29
    ble-    branch_0x80305a98
    frsqrte f1, f2
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f30, f1
    fnmsub   f0, f2, f0, f31
    fmul    f0, f1, f0
    fmul    f0, f2, f0
    frsp    f0, f0
    stfs    f0, 0x20(sp)
    lfs     f2, 0x20(sp)
branch_0x80305a98:
    stfs    f2, 0x0(r3)
    addi    r5, r5, 0x1
branch_0x80305aa0:
    clrlwi  r3, r5, 24
    cmplw   r3, r0
    blt+    branch_0x80305a38
    lbz     r3, 0x1(r24)
    cmplwi  r3, 0x2
    bne-    branch_0x80305d74
    mr      r3, r24
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 28, 28
    stb     r23, 0x0(r24)
    mr      r17, r3
    beq-    branch_0x80305adc
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      setSeqMuteFromSeStart__8JAIBasicFP8JAISound
branch_0x80305adc:
    rlwinm. r4, r17, 0, 24, 25
    beq-    branch_0x80305b70
    lwz     r0, R13Off_m0x5d80(r13)
    cmpwi   r4, 0x80
    mullw   r3, r0, r29
    addis   r3, r3, 0x3c6f
    addi    r0, r3, -0xca1
    stw     r0, R13Off_m0x5d80(r13)
    lwz     r0, R13Off_m0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x1c(sp)
    lfs     f0, 0x1c(sp)
    fsubs   f0, f0, f28
    fmuls   f0, f27, f0
    fctiwz  f0, f0
    stfd    f0, 0x30(sp)
    lwz     r0, 0x34(sp)
    beq-    branch_0x80305b50
    bge-    branch_0x80305b38
    cmpwi   r4, 0x40
    beq-    branch_0x80305b44
    b       branch_0x80305b68

branch_0x80305b38:
    cmpwi   r4, 0xc0
    beq-    branch_0x80305b5c
    b       branch_0x80305b68

branch_0x80305b44:
    clrlwi  r0, r0, 28
    stb     r0, 0x3(r24)
    b       branch_0x80305b70

branch_0x80305b50:
    clrlwi  r0, r0, 27
    stb     r0, 0x3(r24)
    b       branch_0x80305b70

branch_0x80305b5c:
    clrlwi  r0, r0, 26
    stb     r0, 0x3(r24)
    b       branch_0x80305b70

branch_0x80305b68:
    li      r0, 0x0
    stb     r0, 0x3(r24)
branch_0x80305b70:
    mr      r3, r24
    bl      getSeParameter__8JAISoundFv
    addi    r19, r3, 0x20
    li      r18, 0x0
    li      r30, 0x1
    b       branch_0x80305bcc

branch_0x80305b88:
    clrlwi  r17, r18, 24
    slw     r26, r30, r17
    and.    r0, r0, r26
    beq-    branch_0x80305bc8
    mr      r3, r24
    bl      getSeParameter__8JAISoundFv
    mr      r5, r3
    lwz     r3, 0x38(r31)
    slwi    r0, r17, 1
    lbz     r4, 0x0(r24)
    lhzx    r6, r5, r0
    mr      r5, r18
    bl      setTrackPortData__8JAISoundFUcUcUs
    lhz     r0, 0x0(r19)
    xor     r0, r0, r26
    sth     r0, 0x0(r19)
branch_0x80305bc8:
    addi    r18, r18, 0x1
branch_0x80305bcc:
    lhz     r0, 0x0(r19)
    cmplwi  r0, 0x0
    bne+    branch_0x80305b88
    mr      r3, r24
    lwz     r12, 0x40(r24)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x4(r31)
    mr      r4, r24
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x10(r24)
    cmplwi  r0, 0x1
    ble-    branch_0x80305c48
    lfs     f1, 0x4fc(r2)
    addi    r3, r24, 0x0
    li      r4, 0x6
    li      r5, 0x0
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
    lfs     f1, 0x52c(r2)
    mr      r3, r24
    lwz     r5, 0x10(r24)
    li      r4, 0x6
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
    li      r0, 0x0
    stw     r0, 0x10(r24)
branch_0x80305c48:
    mr      r3, r31
    lwz     r12, 0x4(r31)
    mr      r4, r24
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8(r24)
    addi    r3, r24, 0x0
    li      r4, 0x800
    clrlwi  r18, r0, 22
    bl      checkSwBit__8JAISoundFUl
    cmplwi  r3, 0x0
    beq-    branch_0x80305c98
    lwz     r12, 0x4(r31)
    mr      r3, r31
    lwz     r4, 0x18(r24)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    add     r18, r18, r3
branch_0x80305c98:
    lwz     r0, R13Off_m0x7450(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x80305cf8
    addi    r3, r24, 0x0
    li      r4, 0x1000
    bl      checkSwBit__8JAISoundFUl
    cmplwi  r3, 0x0
    beq-    branch_0x80305cf8
    lwz     r3, 0x1c(r24)
    lfs     f1, -0x7470(r13)
    lfs     f26, 0x18(r3)
    fcmpo   cr0, f26, f1
    bge-    branch_0x80305cf0
    bl      __cvt_fp2unsigned
    mr      r19, r3
    fmr     f1, f26
    bl      __cvt_fp2unsigned
    lhz     r0, -0x7430(r13)
    mullw   r0, r0, r3
    divwu   r0, r0, r19
    clrlwi  r5, r0, 16
    b       branch_0x80305cfc

branch_0x80305cf0:
    lhz     r5, -0x7430(r13)
    b       branch_0x80305cfc

branch_0x80305cf8:
    li      r5, 0x0
branch_0x80305cfc:
    addi    r3, r20, 0x0
    addis   r4, r21, 0x3
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    mr      r3, r31
    lwz     r4, 0x18(r24)
    lwz     r12, 0x4(r31)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r5, r3, 0x0
    addi    r3, r20, 0x0
    addis   r4, r21, 0x6
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    addi    r3, r20, 0x0
    addi    r5, r18, 0x0
    addis   r4, r21, 0x4
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    addi    r3, r20, 0x0
    addi    r4, r21, 0x0
    li      r5, 0x1
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    lwz     r0, 0x8(r24)
    rlwinm. r0, r0, 0, 20, 21
    beq-    branch_0x80305d68
    li      r0, 0x4
    stb     r0, 0x1(r24)
    b       branch_0x80305e70

branch_0x80305d68:
    li      r0, 0x5
    stb     r0, 0x1(r24)
    b       branch_0x80305e70

branch_0x80305d74:
    lhz     r0, 0x28(sp)
    cmplwi  r0, 0x0
    bne-    branch_0x80305d9c
    lhz     r0, 0x26(sp)
    cmplwi  r0, 0x1
    beq-    branch_0x80305d9c
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      releaseSeRegist__8JAIBasicFP8JAISound
    b       branch_0x80305e70

branch_0x80305d9c:
    lwz     r0, 0x10(r24)
    cmplwi  r0, 0x0
    beq-    branch_0x80305e1c
    mr      r3, r24
    bl      getSeParameter__8JAISoundFv
    lfs     f0, 0x188(r3)
    fcmpu   cr0, f29, f0
    beq-    branch_0x80305e0c
    mr      r3, r24
    lwz     r12, 0x40(r24)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x4(r31)
    mr      r4, r24
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8(r24)
    rlwinm. r0, r0, 0, 20, 21
    beq-    branch_0x80305e00
    li      r0, 0x4
    stb     r0, 0x1(r24)
    b       branch_0x80305e70

branch_0x80305e00:
    li      r0, 0x5
    stb     r0, 0x1(r24)
    b       branch_0x80305e70

branch_0x80305e0c:
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      releaseSeRegist__8JAIBasicFP8JAISound
    b       branch_0x80305e70

branch_0x80305e1c:
    cmplwi  r3, 0x3
    bne-    branch_0x80305e70
    mr      r3, r24
    lwz     r12, 0x40(r24)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x4(r31)
    mr      r4, r24
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8(r24)
    rlwinm. r0, r0, 0, 20, 21
    beq-    branch_0x80305e68
    li      r0, 0x4
    stb     r0, 0x1(r24)
    b       branch_0x80305e70

branch_0x80305e68:
    li      r0, 0x5
    stb     r0, 0x1(r24)
branch_0x80305e70:
    addi    r23, r23, 0x1
    addi    r25, r25, 0x1
branch_0x80305e78:
    lwz     r5, 0x0(r31)
    clrlwi  r4, r25, 24
    lbz     r0, 0x10(r31)
    lwz     r3, 0x4(r5)
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    lbzx    r0, r27, r0
    cmplw   r4, r0
    blt+    branch_0x803059bc
    addi    r22, r22, 0x1
branch_0x80305ea0:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    clrlwi  r0, r22, 24
    cmplw   r0, r3
    blt+    branch_0x803059ac
    lmw     r17, 0x3c(sp)
    lwz     r0, 0xac(sp)
    lfd     f31, 0xa0(sp)
    lfd     f30, 0x98(sp)
    mtlr    r0
    lfd     f29, 0x90(sp)
    lfd     f28, 0x88(sp)
    lfd     f27, 0x80(sp)
    lfd     f26, 0x78(sp)
    addi    sp, sp, 0xa8
    blr


.globl setSeqMuteFromSeStart__8JAIBasicFP8JAISound
setSeqMuteFromSeStart__8JAIBasicFP8JAISound: # 0x80305edc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    stfd    f30, 0x30(sp)
    stmw    r26, 0x18(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    li      r31, 0x0
    li      r28, 0x0
    lis     r27, 0x4330
    lfd     f30, 0x530(r2)
    lfs     f31, 0x52c(r2)
    b       branch_0x80305f94

branch_0x80305f14:
    lwz     r3, 0x38(r29)
    addi    r4, r28, 0x48
    lwz     r5, 0x0(r29)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r5)
    cmplw   r31, r0
    lwzx    r26, r3, r4
    beq-    branch_0x80305f8c
    cmplwi  r26, 0x0
    beq-    branch_0x80305f8c
    mr      r3, r26
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 28, 28
    bne-    branch_0x80305f8c
    lbz     r0, R13Off_m0x74cd(r13)
    mr      r3, r26
    lwz     r5, R13Off_m0x7454(r13)
    li      r4, 0x9
    stw     r0, 0x14(sp)
    stw     r27, 0x10(sp)
    lfd     f0, 0x10(sp)
    fsubs   f0, f0, f30
    fdivs   f1, f0, f31
    bl      setSeqInterVolume__8JAISoundFUcfUl
    lbz     r0, 0x0(r30)
    li      r3, 0x1
    lwz     r4, 0x30(r29)
    slw     r0, r3, r0
    or      r0, r4, r0
    stw     r0, 0x30(r29)
branch_0x80305f8c:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x50
branch_0x80305f94:
    lwz     r0, R13Off_m0x74b8(r13)
    cmplw   r31, r0
    blt+    branch_0x80305f14
    lmw     r26, 0x18(sp)
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl checkSeMovePara__8JAIBasicFv
checkSeMovePara__8JAIBasicFv: # 0x80305fbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x38(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x803060cc
    bl      getSeqParameter__8JAISoundFv
    lbz     r0, 0x1755(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80305ff8
    b       branch_0x803060cc

branch_0x80305ff8:
    li      r31, 0x0
    b       branch_0x803060bc

branch_0x80306000:
    clrlwi  r0, r31, 24
    lwz     r4, 0x0(r29)
    mulli   r3, r0, 0xc
    lwz     r4, 0x1e8(r4)
    addi    r0, r3, 0x4
    lwzx    r30, r4, r0
    b       branch_0x803060b0

branch_0x8030601c:
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    addi    r4, r4, 0x124
    bl      setSeMovePara__7JAIDataFP14JAIMoveParaSet
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    addi    r4, r4, 0x1a4
    bl      setSeMovePara__7JAIDataFP14JAIMoveParaSet
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    addi    r4, r4, 0x2a4
    bl      setSeMovePara__7JAIDataFP14JAIMoveParaSet
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    addi    r4, r4, 0x324
    bl      setSeMovePara__7JAIDataFP14JAIMoveParaSet
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    addi    r4, r4, 0x3a4
    bl      setSeMovePara__7JAIDataFP14JAIMoveParaSet
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    addi    r4, r4, 0x224
    bl      setSeMovePara__7JAIDataFP14JAIMoveParaSet
    lwz     r30, 0x30(r30)
branch_0x803060b0:
    cmplwi  r30, 0x0
    bne+    branch_0x8030601c
    addi    r31, r31, 0x1
branch_0x803060bc:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    clrlwi  r0, r31, 24
    cmplw   r0, r3
    blt+    branch_0x80306000
branch_0x803060cc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl sendSeAllParameter__8JAIBasicFP8JAISound
sendSeAllParameter__8JAIBasicFP8JAISound: # 0x803060e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x40(sp)
    addi    r28, r3, 0x0
    lbz     r0, 0x0(r4)
    lwz     r4, 0x0(r3)
    addi    r3, r29, 0x0
    mulli   r0, r0, 0x18
    lwz     r4, 0x0(r4)
    add     r30, r4, r0
    bl      getSeParameter__8JAISoundFv
    mr      r31, r3
    lfs     f0, 0x538(r2)
    lfs     f1, 0x198(r3)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80306194
    lwz     r3, 0x424(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80306154
    lfs     f0, 0x0(r3)
    stfs    f0, 0x128(r31)
branch_0x80306154:
    lfs     f31, 0x500(r2)
    lfs     f1, 0x128(r31)
    lfs     f0, 0x138(r31)
    fmuls   f31, f31, f1
    lfs     f4, 0x148(r31)
    lfs     f3, 0x158(r31)
    lfs     f2, 0x168(r31)
    fmuls   f31, f31, f0
    lfs     f1, 0x178(r31)
    lfs     f0, 0x188(r31)
    fmuls   f31, f31, f4
    fmuls   f31, f31, f3
    fmuls   f31, f31, f2
    fmuls   f31, f31, f1
    fmuls   f31, f31, f0
    b       branch_0x80306198

branch_0x80306194:
    fmr     f31, f1
branch_0x80306198:
    mr      r3, r29
    bl      getSeCategoryNumber__8JAISoundFv
    lwz     r4, 0x28(r28)
    clrlslwi  r0, r3, 24, 2
    lfs     f0, 0x4(r30)
    lfsx    f1, r4, r0
    fmuls   f31, f31, f1
    fcmpu   cr0, f0, f31
    beq-    branch_0x80306224
    stfs    f31, 0x4(r30)
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x2
    beq-    branch_0x80306224
    lwz     r3, 0x38(r28)
    fmr     f1, f31
    lwz     r4, 0x0(r28)
    li      r5, 0x2
    lbz     r3, 0x0(r3)
    lbz     r0, 0x0(r29)
    mulli   r3, r3, 0x50
    lwz     r4, 0x180(r4)
    add     r3, r4, r3
    lwz     r4, 0x44(r3)
    slwi    r3, r0, 2
    lwzx    r0, r4, r3
    ori     r0, r0, 0x1
    stwx    r0, r4, r3
    lwz     r3, 0x38(r28)
    lwz     r4, 0x0(r28)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r4)
    mulli   r0, r0, 0x50
    lbz     r4, 0x0(r29)
    add     r3, r3, r0
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80306224:
    lfs     f0, 0x538(r2)
    lfs     f1, 0x218(r31)
    fcmpu   cr0, f0, f1
    bne-    branch_0x80306308
    lwz     r3, 0x428(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80306248
    lfs     f0, 0x0(r3)
    stfs    f0, 0x1a8(r31)
branch_0x80306248:
    lfs     f2, 0x53c(r2)
    lfs     f0, 0x1a8(r31)
    lfs     f1, 0x4fc(r2)
    fcmpu   cr0, f2, f0
    beq-    branch_0x80306264
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x80306264:
    lfs     f0, 0x1b8(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x80306278
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x80306278:
    lfs     f0, 0x1c8(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x8030628c
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x8030628c:
    lfs     f0, 0x1d8(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x803062a0
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x803062a0:
    lfs     f0, 0x1e8(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x803062b4
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x803062b4:
    lfs     f0, 0x1f8(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x803062c8
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x803062c8:
    lfs     f0, 0x208(r31)
    fcmpu   cr0, f2, f0
    beq-    branch_0x803062dc
    fsubs   f0, f0, f2
    fadds   f1, f1, f0
branch_0x803062dc:
    lfs     f2, 0x53c(r2)
    lfs     f0, 0x4fc(r2)
    fadds   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x803062f8
    fmr     f1, f0
    b       branch_0x80306308

branch_0x803062f8:
    lfs     f0, 0x500(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80306308
    fmr     f1, f0
branch_0x80306308:
    lfs     f0, 0x10(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80306378
    stfs    f1, 0x10(r30)
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x2
    beq-    branch_0x80306378
    lwz     r3, 0x38(r28)
    li      r5, 0x4
    lwz     r4, 0x0(r28)
    lbz     r3, 0x0(r3)
    lwz     r4, 0x180(r4)
    mulli   r3, r3, 0x50
    lbz     r0, 0x0(r29)
    add     r3, r4, r3
    lwz     r4, 0x44(r3)
    slwi    r3, r0, 2
    lwzx    r0, r4, r3
    ori     r0, r0, 0x4
    stwx    r0, r4, r3
    lwz     r3, 0x38(r28)
    lwz     r4, 0x0(r28)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r4)
    mulli   r0, r0, 0x50
    lbz     r4, 0x0(r29)
    add     r3, r3, r0
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80306378:
    lfs     f0, 0x538(r2)
    lfs     f1, 0x298(r31)
    fcmpu   cr0, f0, f1
    bne-    branch_0x803063d8
    lwz     r3, 0x42c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8030639c
    lfs     f0, 0x0(r3)
    stfs    f0, 0x228(r31)
branch_0x8030639c:
    lfs     f1, 0x500(r2)
    lfs     f2, 0x228(r31)
    lfs     f0, 0x238(r31)
    fmuls   f1, f1, f2
    lfs     f5, 0x248(r31)
    lfs     f4, 0x258(r31)
    lfs     f3, 0x268(r31)
    fmuls   f1, f1, f0
    lfs     f2, 0x278(r31)
    lfs     f0, 0x288(r31)
    fmuls   f1, f1, f5
    fmuls   f1, f1, f4
    fmuls   f1, f1, f3
    fmuls   f1, f1, f2
    fmuls   f1, f1, f0
branch_0x803063d8:
    lfs     f0, 0x8(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80306448
    stfs    f1, 0x8(r30)
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x2
    beq-    branch_0x80306448
    lwz     r3, 0x38(r28)
    li      r5, 0x3
    lwz     r4, 0x0(r28)
    lbz     r3, 0x0(r3)
    lwz     r4, 0x180(r4)
    mulli   r3, r3, 0x50
    lbz     r0, 0x0(r29)
    add     r3, r4, r3
    lwz     r4, 0x44(r3)
    slwi    r3, r0, 2
    lwzx    r0, r4, r3
    ori     r0, r0, 0x2
    stwx    r0, r4, r3
    lwz     r3, 0x38(r28)
    lwz     r4, 0x0(r28)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r4)
    mulli   r0, r0, 0x50
    lbz     r4, 0x0(r29)
    add     r3, r3, r0
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80306448:
    lfs     f0, 0x538(r2)
    lfs     f1, 0x318(r31)
    fcmpu   cr0, f0, f1
    bne-    branch_0x803064a8
    lwz     r3, 0x430(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8030646c
    lfs     f0, 0x0(r3)
    stfs    f0, 0x2a8(r31)
branch_0x8030646c:
    lfs     f1, 0x4fc(r2)
    lfs     f2, 0x2a8(r31)
    lfs     f0, 0x2b8(r31)
    fadds   f1, f1, f2
    lfs     f5, 0x2c8(r31)
    lfs     f4, 0x2d8(r31)
    lfs     f3, 0x2e8(r31)
    fadds   f1, f1, f0
    lfs     f2, 0x2f8(r31)
    lfs     f0, 0x308(r31)
    fadds   f1, f1, f5
    fadds   f1, f1, f4
    fadds   f1, f1, f3
    fadds   f1, f1, f2
    fadds   f1, f1, f0
branch_0x803064a8:
    lfs     f0, 0xc(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80306518
    stfs    f1, 0xc(r30)
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x2
    beq-    branch_0x80306518
    lwz     r3, 0x38(r28)
    li      r5, 0x5
    lwz     r4, 0x0(r28)
    lbz     r3, 0x0(r3)
    lwz     r4, 0x180(r4)
    mulli   r3, r3, 0x50
    lbz     r0, 0x0(r29)
    add     r3, r4, r3
    lwz     r4, 0x44(r3)
    slwi    r3, r0, 2
    lwzx    r0, r4, r3
    ori     r0, r0, 0x8
    stwx    r0, r4, r3
    lwz     r3, 0x38(r28)
    lwz     r4, 0x0(r28)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r4)
    mulli   r0, r0, 0x50
    lbz     r4, 0x0(r29)
    add     r3, r3, r0
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80306518:
    lfs     f0, 0x538(r2)
    lfs     f1, 0x418(r31)
    fcmpu   cr0, f0, f1
    bne-    branch_0x803065c8
    lwz     r3, 0x438(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8030653c
    lfs     f0, 0x0(r3)
    stfs    f0, 0x3a8(r31)
branch_0x8030653c:
    lfs     f2, -0x7468(r13)
    lfs     f0, 0x52c(r2)
    lfs     f1, 0x3a8(r31)
    fdivs   f9, f2, f0
    lfs     f0, 0x3b8(r31)
    lfs     f6, 0x3c8(r31)
    lfs     f5, 0x3d8(r31)
    lfs     f4, 0x3e8(r31)
    fsubs   f8, f1, f9
    lfs     f1, 0x4fc(r2)
    fsubs   f7, f0, f9
    lfs     f3, 0x3f8(r31)
    lfs     f2, 0x408(r31)
    fadds   f1, f1, f8
    lfs     f0, 0x4fc(r2)
    fsubs   f6, f6, f9
    fsubs   f5, f5, f9
    fadds   f1, f1, f7
    fsubs   f4, f4, f9
    fsubs   f3, f3, f9
    fadds   f1, f1, f6
    fsubs   f2, f2, f9
    fadds   f1, f1, f5
    fadds   f1, f1, f4
    fadds   f1, f1, f3
    fadds   f1, f1, f2
    fadds   f1, f1, f9
    fcmpo   cr0, f1, f0
    bge-    branch_0x803065b8
    fmr     f1, f0
    b       branch_0x803065c8

branch_0x803065b8:
    lfs     f0, 0x500(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x803065c8
    fmr     f1, f0
branch_0x803065c8:
    lfs     f0, 0x14(r30)
    fcmpu   cr0, f0, f1
    beq-    branch_0x80306638
    stfs    f1, 0x14(r30)
    lbz     r0, 0x1(r29)
    cmplwi  r0, 0x2
    beq-    branch_0x80306638
    lwz     r3, 0x38(r28)
    li      r5, 0x6
    lwz     r4, 0x0(r28)
    lbz     r3, 0x0(r3)
    lwz     r4, 0x180(r4)
    mulli   r3, r3, 0x50
    lbz     r0, 0x0(r29)
    add     r3, r4, r3
    lwz     r4, 0x44(r3)
    slwi    r3, r0, 2
    lwzx    r0, r4, r3
    ori     r0, r0, 0x10
    stwx    r0, r4, r3
    lwz     r3, 0x38(r28)
    lwz     r4, 0x0(r28)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r4)
    mulli   r0, r0, 0x50
    lbz     r4, 0x0(r29)
    add     r3, r3, r0
    bl      setSeqPortargsF32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcf
branch_0x80306638:
    lwz     r3, 0x38(r28)
    lwz     r5, 0x0(r28)
    lbz     r0, 0x0(r3)
    lbz     r4, 0x0(r29)
    mulli   r0, r0, 0x50
    lwz     r3, 0x180(r5)
    add     r3, r3, r0
    lwz     r5, 0x44(r3)
    slwi    r0, r4, 2
    lwzx    r6, r5, r0
    cmplwi  r6, 0x0
    beq-    branch_0x803066d0
    li      r5, 0x1
    bl      setSeqPortargsU32__18JAISystemInterfaceFP16JAISeqUpdateDataUlUcUl
    lwz     r3, 0x38(r28)
    li      r5, 0x0
    lwz     r4, 0x0(r28)
    lbz     r3, 0x0(r3)
    lbz     r0, 0x0(r29)
    mulli   r3, r3, 0x50
    lwz     r4, 0x180(r4)
    add     r3, r4, r3
    mulli   r0, r0, 0x3c
    lwz     r3, 0x4c(r3)
    add     r3, r3, r0
    stw     r5, 0x2c(r3)
    lwz     r3, 0x38(r28)
    lwz     r5, 0x0(r28)
    lbz     r3, 0x0(r3)
    lbz     r0, 0x0(r29)
    mulli   r4, r3, 0x50
    lwz     r5, 0x180(r5)
    mulli   r3, r0, 0x3c
    add     r4, r5, r4
    lwz     r0, 0x4c(r4)
    addi    r3, r3, 0x2c
    add     r3, r0, r3
    bl      addPortCmdOnce__Q38JASystem6Kernel8TPortCmdFv
branch_0x803066d0:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x58
    blr


.globl releaseSeRegist__8JAIBasicFP8JAISound
releaseSeRegist__8JAIBasicFP8JAISound: # 0x803066f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r30, r4
    addi    r29, r3, 0x0
    lbz     r0, 0x1(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x80306750
    lwz     r3, 0x38(r29)
    bl      getSeqParameter__8JAISoundFv
    lbz     r0, 0x0(r30)
    li      r5, 0x0
    lwz     r3, 0x0(r3)
    srawi   r4, r0, 4
    addis   r4, r4, 0x2000
    clrlslwi  r0, r0, 28, 4
    add     r4, r4, r0
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    lwz     r3, 0x38(r29)
    li      r5, 0x1
    lbz     r4, 0x0(r30)
    bl      setTrackInterruptSwitch__8JAISoundFUcUc
branch_0x80306750:
    lwz     r0, 0x30(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80306804
    mr      r3, r30
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 28, 28
    beq-    branch_0x80306804
    li      r31, 0x0
    addi    r28, r31, 0x0
    b       branch_0x803067f8

branch_0x80306778:
    lwz     r3, 0x38(r29)
    addi    r4, r28, 0x48
    lwz     r5, 0x0(r29)
    lbz     r0, 0x0(r3)
    lwz     r3, 0x180(r5)
    cmplw   r31, r0
    lwzx    r27, r3, r4
    beq-    branch_0x803067f0
    cmplwi  r27, 0x0
    beq-    branch_0x803067f0
    mr      r3, r27
    bl      getSwBit__8JAISoundFv
    rlwinm. r0, r3, 0, 28, 28
    bne-    branch_0x803067f0
    lbz     r0, 0x0(r30)
    li      r3, 0x1
    lwz     r4, 0x30(r29)
    slw     r0, r3, r0
    xoris   r0, r0, 0xffff
    xori     r0, r0, 0xffff
    and     r0, r4, r0
    stw     r0, 0x30(r29)
    lwz     r0, 0x30(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x803067f0
    lfs     f1, 0x500(r2)
    mr      r3, r27
    lwz     r5, R13Off_m0x7454(r13)
    li      r4, 0x9
    bl      setSeqInterVolume__8JAISoundFUcfUl
branch_0x803067f0:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x50
branch_0x803067f8:
    lwz     r0, R13Off_m0x74b8(r13)
    cmplw   r31, r0
    blt+    branch_0x80306778
branch_0x80306804:
    mr      r3, r30
    bl      getSeCategoryNumber__8JAISoundFv
    lwz     r4, 0x0(r29)
    clrlslwi  r5, r3, 24, 1
    lbz     r0, 0x10(r29)
    lwz     r3, 0x4(r4)
    slwi    r0, r0, 2
    lwzx    r4, r3, r0
    mr      r3, r30
    lbzx    r28, r4, r5
    bl      getSeCategoryNumber__8JAISoundFv
    clrlwi  r27, r3, 24
    clrlslwi  r6, r3, 24, 2
    li      r7, 0x0
    li      r3, 0x0
    b       branch_0x80306878

branch_0x80306844:
    lwz     r5, 0x0(r29)
    clrlwi  r0, r7, 24
    mulli   r4, r0, 0xc
    lwz     r0, 0x8(r5)
    lwzx    r0, r6, r0
    addi    r4, r4, 0x8
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    cmplw   r0, r30
    bne-    branch_0x80306874
    stw     r3, 0x0(r4)
    mr      r7, r28
branch_0x80306874:
    addi    r7, r7, 0x1
branch_0x80306878:
    clrlwi  r0, r7, 24
    cmplw   r0, r28
    blt+    branch_0x80306844
    mr      r3, r30
    bl      clearMainSoundPPointer__8JAISoundFv
    li      r0, 0x0
    stb     r0, 0x1(r30)
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    bl      releaseSeParameterPointer__8JAIBasicFP14JAISeParameter
    lwz     r3, 0x0(r29)
    mulli   r0, r27, 0xc
    lwz     r4, 0x1e8(r3)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    add     r4, r4, r0
    bl      releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

