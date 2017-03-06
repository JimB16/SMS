
.globl __ct__13JAIAnimeSoundFv
__ct__13JAIAnimeSoundFv: # 0x802fff9c
    lis     r4, 0x803e
    addi    r0, r4, 0x24b0
    stw     r0, 0x94(r3)
    li      r0, 0x0
    stw     r0, 0x60(r3)
    stw     r0, 0x64(r3)
    stw     r0, 0x68(r3)
    stw     r0, 0x6c(r3)
    stw     r0, 0x4(r3)
    stb     r0, 0x0(r3)
    stw     r0, 0x10(r3)
    stb     r0, 0xc(r3)
    stw     r0, 0x1c(r3)
    stb     r0, 0x18(r3)
    stw     r0, 0x28(r3)
    stb     r0, 0x24(r3)
    stw     r0, 0x34(r3)
    stb     r0, 0x30(r3)
    stw     r0, 0x40(r3)
    stb     r0, 0x3c(r3)
    stw     r0, 0x4c(r3)
    stb     r0, 0x48(r3)
    stw     r0, 0x58(r3)
    stb     r0, 0x54(r3)
    stw     r0, 0x70(r3)
    stw     r0, 0x74(r3)
    stw     r0, 0x80(r3)
    stw     r0, 0x84(r3)
    blr


.globl initActorAnimSound__13JAIAnimeSoundFPvUlf
initActorAnimSound__13JAIAnimeSoundFPvUlf: # 0x80300010
    mflr    r0
    li      r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    stw     r28, 0x20(sp)
    stw     r4, 0x90(r3)
    li      r3, 0x0
    lwz     r0, 0x90(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x803000c4
    stw     r3, 0x80(r31)
    stw     r5, 0x78(r31)
    lwz     r4, 0x90(r31)
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    mtctr   r0
    ble-    branch_0x80300084
branch_0x80300064:
    addi    r0, r3, 0xc
    lfsx    f0, r4, r0
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    beq-    branch_0x80300084
    addi    r6, r6, 0x1
    addi    r3, r3, 0x20
    bdnz+      branch_0x80300064
branch_0x80300084:
    cmplwi  r5, 0x1
    bne-    branch_0x803000a8
    li      r0, 0x0
    stw     r0, 0x80(r31)
    stw     r6, 0x7c(r31)
    lfs     f0, 0x490(rtoc)
    stfs    f0, 0x88(r31)
    stw     r0, 0x84(r31)
    b       branch_0x803000c4

branch_0x803000a8:
    stw     r6, 0x80(r31)
    li      r3, 0x0
    li      r0, -0x1
    stw     r3, 0x7c(r31)
    lfs     f0, 0x490(rtoc)
    stfs    f0, 0x88(r31)
    stw     r0, 0x84(r31)
branch_0x803000c4:
    li      r29, 0x0
    b       branch_0x80300138

branch_0x803000cc:
    clrlwi  r0, r29, 24
    mulli   r0, r0, 0xc
    add     r30, r31, r0
    lwz     r0, 0x4(r30)
    lwz     r3, 0x8(r30)
    cmplwi  r0, 0x0
    mr      r28, r0
    beq-    branch_0x8030010c
    lwz     r0, 0x10(r3)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8030010c
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    li      r0, 0x0
    stb     r0, 0x0(r30)
branch_0x8030010c:
    cmplwi  r28, 0x0
    bne-    branch_0x80300120
    li      r0, 0x0
    stb     r0, 0x0(r30)
    b       branch_0x80300134

branch_0x80300120:
    lwz     r0, 0x8(r28)
    rlwinm. r0, r0, 0, 20, 21
    bne-    branch_0x80300134
    li      r0, 0x0
    stb     r0, 0x0(r30)
branch_0x80300134:
    addi    r29, r29, 0x1
branch_0x80300138:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x8
    blt+    branch_0x803000cc
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setAnimSoundVec__13JAIAnimeSoundFP8JAIBasicP3VecffUlUc
setAnimSoundVec__13JAIAnimeSoundFP8JAIBasicP3VecffUlUc: # 0x80300164
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r5, 0x24(sp)
    stw     r5, 0x28(sp)
    stw     r5, 0x2c(sp)
    addi    r5, sp, 0x24
    stw     r6, 0x30(sp)
    addi    r6, r7, 0x0
    bl      setAnimSoundActor__13JAIAnimeSoundFP8JAIBasicP8JAIActorffUc
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setAnimSoundActor__13JAIAnimeSoundFP8JAIBasicP8JAIActorffUc
setAnimSoundActor__13JAIAnimeSoundFP8JAIBasicP8JAIActorffUc: # 0x8030019c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f2
    stfd    f30, 0x50(sp)
    fmr     f30, f1
    stfd    f29, 0x48(sp)
    stmw    r23, 0x24(sp)
    mr      r24, r3
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    lwz     r31, 0x90(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x803005d0
    lwz     r0, 0x78(r24)
    lhz     r30, 0x0(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x803003d0
    lfs     f0, 0x88(r24)
    fcmpo   cr0, f0, f30
    ble-    branch_0x80300260
    b       branch_0x80300214

branch_0x803001fc:
    fmr     f1, f31
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      playActorAnimSound__13JAIAnimeSoundFP8JAIBasicP8JAIActorfUc
branch_0x80300214:
    lwz     r0, 0x80(r24)
    cmplw   r0, r30
    bge-    branch_0x80300240
    lfs     f0, 0x88(r24)
    slwi    r3, r0, 5
    addi    r0, r3, 0xc
    fadds   f0, f0, f31
    lfsx    f1, r31, r0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq+    branch_0x803001fc
branch_0x80300240:
    lwz     r0, 0x7c(r24)
    stw     r0, 0x80(r24)
    stfs    f30, 0x88(r24)
    lwz     r3, 0x84(r24)
    cmplwi  r3, 0x100
    bge-    branch_0x80300260
    addi    r0, r3, 0x1
    stw     r0, 0x84(r24)
branch_0x80300260:
    lfs     f29, 0x490(rtoc)
    li      r29, 0x0
    b       branch_0x80300380

branch_0x8030026c:
    clrlwi  r0, r29, 24
    mulli   r0, r0, 0xc
    add     r3, r24, r0
    lbz     r0, 0x0(r3)
    addi    r28, r3, 0x4
    cmplwi  r0, 0x0
    beq-    branch_0x80300374
    lwz     r23, 0x8(r3)
    lwz     r5, 0x0(r23)
    rlwinm. r0, r5, 0, 20, 21
    bne-    branch_0x80300320
    fcmpu   cr0, f29, f31
    bne-    branch_0x803002ac
    lwz     r0, 0x10(r23)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x80300320
branch_0x803002ac:
    lfs     f1, 0x4(r23)
    lfs     f0, 0x8(r23)
    fcmpu   cr0, f1, f0
    beq-    branch_0x803002f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x803002d8
    fcmpo   cr0, f0, f30
    ble-    branch_0x803002d8
    fcmpo   cr0, f1, f30
    cror    2, 0, 2
    beq-    branch_0x803002f0
branch_0x803002d8:
    fcmpo   cr0, f1, f0
    ble-    branch_0x80300318
    fcmpo   cr0, f0, f30
    bgt-    branch_0x803002f0
    fcmpo   cr0, f1, f30
    bge-    branch_0x80300318
branch_0x803002f0:
    lwz     r12, 0x94(r24)
    mr      r3, r24
    mr      r4, r25
    lwz     r12, 0x8(r12)
    addi    r6, r28, 0x0
    addi    r7, r26, 0x0
    mtlr    r12
    addi    r8, r27, 0x0
    blrl
    b       branch_0x80300320

branch_0x80300318:
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x80300320:
    lwz     r4, 0x0(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x8030037c
    lwz     r12, 0x94(r24)
    fmr     f1, f31
    mr      r3, r24
    lwz     r12, 0xc(r12)
    mr      r5, r23
    mtlr    r12
    blrl
    lwz     r0, 0x10(r23)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8030037c
    lfs     f0, 0x8(r23)
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x8030037c
    lwz     r3, 0x0(r28)
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    b       branch_0x8030037c

branch_0x80300374:
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x8030037c:
    addi    r29, r29, 0x1
branch_0x80300380:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x8
    blt+    branch_0x8030026c
    b       branch_0x803003a8

branch_0x80300390:
    fmr     f1, f31
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      playActorAnimSound__13JAIAnimeSoundFP8JAIBasicP8JAIActorfUc
branch_0x803003a8:
    lwz     r0, 0x80(r24)
    cmplw   r0, r30
    bge-    branch_0x803005cc
    slwi    r3, r0, 5
    addi    r0, r3, 0xc
    lfsx    f0, r31, r0
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    beq+    branch_0x80300390
    b       branch_0x803005cc

branch_0x803003d0:
    lfs     f0, 0x88(r24)
    fcmpo   cr0, f0, f30
    bge-    branch_0x8030045c
    li      r29, 0x0
    li      r28, -0x1
    b       branch_0x80300400

branch_0x803003e8:
    fmr     f1, f31
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      playActorAnimSound__13JAIAnimeSoundFP8JAIBasicP8JAIActorfUc
branch_0x80300400:
    lwz     r4, 0x80(r24)
    cmplw   r4, r30
    bge-    branch_0x8030042c
    lfs     f0, 0x88(r24)
    slwi    r3, r4, 5
    addi    r0, r3, 0xc
    fsubs   f0, f0, f31
    lfsx    f1, r31, r0
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x803003e8
branch_0x8030042c:
    subi    r0, r30, 0x1
    stw     r0, 0x80(r24)
    stfs    f30, 0x88(r24)
    lwz     r3, 0x84(r24)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80300450
    cmplwi  r3, 0x100
    bge-    branch_0x8030045c
branch_0x80300450:
    lwz     r3, 0x84(r24)
    addi    r0, r3, 0x1
    stw     r0, 0x84(r24)
branch_0x8030045c:
    lfs     f29, 0x490(rtoc)
    li      r28, 0x0
    b       branch_0x80300578

branch_0x80300468:
    clrlwi  r0, r28, 24
    mulli   r0, r0, 0xc
    add     r3, r24, r0
    lbz     r0, 0x0(r3)
    addi    r29, r3, 0x4
    cmplwi  r0, 0x0
    beq-    branch_0x8030056c
    lwz     r23, 0x8(r3)
    lwz     r5, 0x0(r23)
    rlwinm. r0, r5, 0, 20, 21
    bne-    branch_0x80300518
    fcmpu   cr0, f29, f31
    bne-    branch_0x803004a8
    lwz     r0, 0x10(r23)
    rlwinm. r0, r0, 0, 26, 26
    bne-    branch_0x80300518
branch_0x803004a8:
    lfs     f1, 0x4(r23)
    lfs     f0, 0x8(r23)
    fcmpu   cr0, f1, f0
    beq-    branch_0x803004e8
    fcmpo   cr0, f1, f0
    ble-    branch_0x803004d0
    fcmpo   cr0, f0, f30
    bge-    branch_0x803004d0
    fcmpo   cr0, f1, f30
    bgt-    branch_0x803004e8
branch_0x803004d0:
    fcmpo   cr0, f1, f0
    bge-    branch_0x80300510
    fcmpo   cr0, f0, f30
    blt-    branch_0x803004e8
    fcmpo   cr0, f1, f30
    ble-    branch_0x80300510
branch_0x803004e8:
    lwz     r12, 0x94(r24)
    mr      r3, r24
    mr      r4, r25
    lwz     r12, 0x8(r12)
    addi    r6, r29, 0x0
    addi    r7, r26, 0x0
    mtlr    r12
    addi    r8, r27, 0x0
    blrl
    b       branch_0x80300518

branch_0x80300510:
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x80300518:
    lwz     r4, 0x0(r29)
    cmplwi  r4, 0x0
    beq-    branch_0x80300574
    lwz     r12, 0x94(r24)
    fmr     f1, f31
    mr      r3, r24
    lwz     r12, 0xc(r12)
    mr      r5, r23
    mtlr    r12
    blrl
    lwz     r0, 0x10(r23)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80300574
    lfs     f0, 0x8(r23)
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    bne-    branch_0x80300574
    lwz     r3, 0x0(r29)
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    b       branch_0x80300574

branch_0x8030056c:
    li      r0, 0x0
    stb     r0, 0x0(r3)
branch_0x80300574:
    addi    r28, r28, 0x1
branch_0x80300578:
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x8
    blt+    branch_0x80300468
    li      r29, 0x0
    li      r28, -0x1
    b       branch_0x803005a8

branch_0x80300590:
    fmr     f1, f31
    addi    r3, r24, 0x0
    addi    r4, r25, 0x0
    addi    r5, r26, 0x0
    addi    r6, r27, 0x0
    bl      playActorAnimSound__13JAIAnimeSoundFP8JAIBasicP8JAIActorfUc
branch_0x803005a8:
    lwz     r4, 0x80(r24)
    cmplw   r4, r30
    bge-    branch_0x803005cc
    slwi    r3, r4, 5
    addi    r0, r3, 0xc
    lfsx    f0, r31, r0
    fcmpo   cr0, f0, f30
    cror    2, 1, 2
    beq+    branch_0x80300590
branch_0x803005cc:
    stfs    f30, 0x88(r24)
branch_0x803005d0:
    lmw     r23, 0x24(sp)
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl playActorAnimSound__13JAIAnimeSoundFP8JAIBasicP8JAIActorfUc
playActorAnimSound__13JAIAnimeSoundFP8JAIBasicP8JAIActorfUc: # 0x803005f0
    mflr    r0
    addi    r8, r6, 0x0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    li      r9, -0x1
    stwu    sp, -0x58(sp)
    li      r6, 0x0
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stmw    r27, 0x3c(sp)
    mr      r30, r3
    lwz     r7, 0x80(r3)
    lwz     r10, 0x90(r3)
    slwi    r3, r7, 5
    subfc   r0, r0, r7
    addi    r31, r3, 0x8
    addi    r7, r5, 0x0
    subfze  r0, r9
    add     r31, r10, r31
    b       branch_0x80300690

branch_0x80300640:
    clrlwi  r0, r6, 24
    mulli   r0, r0, 0xc
    add     r3, r30, r0
    lbz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030069c
    lwz     r3, 0x8(r3)
    lwz     r5, 0x0(r31)
    lwz     r0, 0x0(r3)
    cmplw   r5, r0
    beq-    branch_0x80300674
    addi    r6, r6, 0x1
    b       branch_0x80300690

branch_0x80300674:
    rlwinm. r0, r5, 0, 20, 21
    bne-    branch_0x8030069c
    lwz     r3, 0x80(r30)
    lwz     r0, 0x78(r30)
    add     r0, r3, r0
    stw     r0, 0x80(r30)
    b       branch_0x803007ec

branch_0x80300690:
    clrlwi  r0, r6, 24
    cmplwi  r0, 0x8
    blt+    branch_0x80300640
branch_0x8030069c:
    clrlwi  r0, r6, 24
    cmplwi  r0, 0x8
    beq-    branch_0x803007dc
    lwz     r5, 0x10(r31)
    rlwinm. r0, r5, 0, 28, 28
    beq-    branch_0x803006c4
    lwz     r3, 0x84(r30)
    lbz     r0, 0x16(r31)
    cmplw   r3, r0
    bne-    branch_0x803007dc
branch_0x803006c4:
    lwz     r3, 0x78(r30)
    cmplwi  r3, 0x1
    bne-    branch_0x803006d8
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x803006ec
branch_0x803006d8:
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x803007dc
    clrlwi. r0, r5, 31
    bne-    branch_0x803007dc
branch_0x803006ec:
    clrlwi  r0, r6, 24
    lwz     r12, 0x94(r30)
    mulli   r0, r0, 0xc
    lwz     r5, 0x0(r31)
    lwz     r12, 0x8(r12)
    add     r28, r30, r0
    mtlr    r12
    addi    r27, r28, 0x4
    mr      r3, r30
    addi    r6, r27, 0x0
    blrl
    lwz     r0, 0x0(r27)
    cmplwi  r0, 0x0
    beq-    branch_0x803007dc
    stw     r31, 0x8(r28)
    li      r0, 0x1
    lis     r29, 0x4330
    stb     r0, 0x0(r28)
    li      r4, 0x0
    li      r5, 0x5
    lbz     r0, 0x14(r31)
    lfd     f2, 0x4a0(rtoc)
    stw     r0, 0x34(sp)
    lfs     f0, 0x494(rtoc)
    stw     r29, 0x30(sp)
    lwz     r3, 0x0(r27)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setVolume__8JAISoundFfUlUc
    lbz     r0, 0x15(r31)
    li      r4, 0x0
    lfs     f0, 0x498(rtoc)
    li      r5, 0x5
    extsb   r0, r0
    xoris   r0, r0, 0x8000
    fsubs   f2, f31, f0
    stw     r0, 0x2c(sp)
    lfd     f4, 0x4a8(rtoc)
    stw     r29, 0x28(sp)
    lfs     f1, 0x49c(rtoc)
    lfd     f3, 0x28(sp)
    lfs     f0, 0xc(r31)
    fsubs   f3, f3, f4
    lwz     r3, 0x0(r27)
    fmuls   f2, f3, f2
    fmadds  f1, f2, f1, f0
    bl      setPitch__8JAISoundFfUlUc
    lbz     r0, 0x17(r31)
    li      r4, 0x0
    lfd     f2, 0x4a0(rtoc)
    li      r5, 0x5
    stw     r0, 0x24(sp)
    lfs     f0, 0x494(rtoc)
    stw     r29, 0x20(sp)
    lwz     r3, 0x0(r27)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setPan__8JAISoundFfUlUc
branch_0x803007dc:
    lwz     r3, 0x80(r30)
    lwz     r0, 0x78(r30)
    add     r0, r3, r0
    stw     r0, 0x80(r30)
branch_0x803007ec:
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl startAnimSound__13JAIAnimeSoundFPvUlPP8JAISoundP8JAIActorUc
startAnimSound__13JAIAnimeSoundFPvUlPP8JAISoundP8JAIActorUc: # 0x80300804
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    addi    r4, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x8(sp)
    addi    r6, r7, 0x0
    li      r7, 0x0
    bl      startSoundActor__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setSpeedModifySound__13JAIAnimeSoundFP8JAISoundP22JAIAnimeFrameSoundDataf
setSpeedModifySound__13JAIAnimeSoundFP8JAISoundP22JAIAnimeFrameSoundDataf: # 0x80300838
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    mr      r30, r5
    lbz     r3, 0x15(r5)
    lfs     f1, 0xc(r5)
    extsb.  r0, r3
    beq-    branch_0x803008a0
    extsb   r0, r3
    lfs     f0, 0x498(rtoc)
    xoris   r0, r0, 0x8000
    lfd     f4, 0x4a8(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    fsubs   f2, f31, f0
    lfs     f0, 0x49c(rtoc)
    stw     r0, 0x20(sp)
    lfd     f3, 0x20(sp)
    fsubs   f3, f3, f4
    fmuls   f2, f3, f2
    fmadds  f1, f2, f0, f1
branch_0x803008a0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x5
    bl      setPitch__8JAISoundFfUlUc
    lbz     r0, 0x15(r30)
    lbz     r4, 0x14(r30)
    extsb.  r0, r0
    beq-    branch_0x80300928
    lbz     r3, 0x18(r30)
    lis     r0, 0x4330
    lfs     f0, 0x498(rtoc)
    extsb   r3, r3
    lfd     f2, 0x4a8(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f3, 0x4b0(rtoc)
    stw     r3, 0x24(sp)
    fsubs   f0, f31, f0
    stw     r0, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f3, f1
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x18(sp)
    lwz     r0, 0x1c(sp)
    add     r4, r4, r0
    extsh   r0, r4
    cmpwi   r0, 0x7f
    ble-    branch_0x8030091c
    li      r4, 0x7f
    b       branch_0x80300928

branch_0x8030091c:
    extsh.  r0, r4
    bge-    branch_0x80300928
    li      r4, 0x0
branch_0x80300928:
    clrlwi  r0, r4, 24
    lfd     f2, 0x4a0(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    lfs     f0, 0x494(rtoc)
    mr      r3, r31
    stw     r0, 0x18(sp)
    li      r4, 0x0
    lfd     f1, 0x18(sp)
    li      r5, 0x5
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setVolume__8JAISoundFfUlUc
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl stop__13JAIAnimeSoundFv
stop__13JAIAnimeSoundFv: # 0x80300978
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    b       branch_0x803009bc

branch_0x80300998:
    clrlwi  r0, r31, 24
    mulli   r3, r0, 0xc
    addi    r0, r3, 0x4
    lwzx    r3, r30, r0
    cmplwi  r3, 0x0
    beq-    branch_0x803009b8
    li      r4, 0x0
    bl      stop__8JAISoundFUl
branch_0x803009b8:
    addi    r31, r31, 0x1
branch_0x803009bc:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x8
    blt+    branch_0x80300998
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

