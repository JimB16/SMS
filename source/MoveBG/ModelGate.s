
.globl __dt__10TModelGateFv
__dt__10TModelGateFv: # 0x801eaf70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801eaff0
    lis     r3, 0x803d
    addi    r3, r3, 0x3f9c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801eafe0
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801eafe0
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801eafe0:
    extsh.  r0, r31
    ble-    branch_0x801eaff0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801eaff0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getTakingMtx__10TModelGateFv
getTakingMtx__10TModelGateFv: # 0x801eb00c
    li      r3, 0x0
    blr


.globl perform__10TModelGateFUlPQ26JDrama9TGraphics
perform__10TModelGateFUlPQ26JDrama9TGraphics: # 0x801eb014
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x220(sp)
    stfd    f31, 0x218(sp)
    stmw    r23, 0x1f4(sp)
    mr      r31, r3
    addi    r30, r4, 0x0
    addi    r29, r5, 0x0
    lbz     r0, 0x70(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x801ebaa4
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x801eb0b0
    lis     r3, 0x803f
    subi    r3, r3, 0x3ea0
    lwz     r0, 0xa0(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x801eb0b0
    lwz     r5, 0xf8(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x801eb0b0
    lwz     r3, 0x78(r31)
    lwz     r0, 0x0(r5)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r4, 0xac(r3)
    lwz     r3, 0x4(r4)
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0x4(r5)
    addi    r3, r3, 0x20
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0x8(r5)
    addi    r3, r3, 0x40
    subf    r0, r3, r0
    stw     r0, 0x1c(r3)
branch_0x801eb0b0:
    lwz     r3, 0x78(r31)
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    clrlwi. r0, r30, 31
    beq-    branch_0x801eb374
    lbz     r0, 0x70(r31)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x801eb1e4
    lwz     r4, -0x60b4(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x190(sp)
    stw     r0, 0x194(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x198(sp)
    lfs     f1, 0x190(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x190(sp)
    lfs     f1, 0x194(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x194(sp)
    lfs     f1, 0x198(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x198(sp)
    lwz     r0, 0x190(sp)
    lwz     r3, 0x194(sp)
    stw     r0, 0x1a8(sp)
    lwz     r0, 0x198(sp)
    stw     r3, 0x1ac(sp)
    stw     r0, 0x1b0(sp)
    lfs     f1, 0x1a8(sp)
    lfs     f0, 0x1ac(sp)
    lfs     f2, 0x1b0(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x22a0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eb198
    lfs     f1, 0xd0(r31)
    lfs     f0, -0x229c(rtoc)
    fadds   f0, f1, f0
    stfs    f0, 0xd0(r31)
    lfs     f1, 0xd0(r31)
    lfs     f0, -0x2298(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801eb1e4
    stfs    f0, 0xd0(r31)
    lha     r0, 0xc8(r31)
    sth     r0, 0xca(r31)
    b       branch_0x801eb1e4

branch_0x801eb198:
    lha     r3, 0xca(r31)
    subi    r0, r3, 0x1
    sth     r0, 0xca(r31)
    lha     r0, 0xca(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x801eb1b8
    li      r0, 0x0
    sth     r0, 0xca(r31)
branch_0x801eb1b8:
    lha     r3, 0xca(r31)
    lis     r0, 0x4330
    lfd     f2, -0x2278(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x22a0(rtoc)
    stw     r3, 0x1ec(sp)
    stw     r0, 0x1e8(sp)
    lfd     f1, 0x1e8(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfs    f0, 0xd0(r31)
branch_0x801eb1e4:
    lwz     r4, -0x60b4(r13)
    addi    r3, r31, 0x7c
    addi    r5, sp, 0x1cc
    bl      PSMTXMultVec
    lfs     f1, 0x104(r31)
    lfs     f2, 0x1cc(sp)
    fneg    f0, f1
    fcmpo   cr0, f0, f2
    bge-    branch_0x801eb374
    fcmpo   cr0, f2, f1
    bge-    branch_0x801eb374
    lfs     f0, 0x108(r31)
    lfs     f1, 0x1d0(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801eb374
    lfs     f0, 0x10c(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eb374
    lfs     f0, 0x110(r31)
    lfs     f1, 0x1d4(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801eb374
    lfs     f0, 0x114(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eb374
    lha     r0, 0xca(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801eb2a4
    li      r23, 0x0
    bl      SMS_IsMarioStatusTypeJumping__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801eb268
    li      r23, 0x1
branch_0x801eb268:
    clrlwi  r0, r23, 24
    cmplwi  r0, 0x1
    bne-    branch_0x801eb374
    bl      SMS_GetMarioHitActor__Fv
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x4
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x1
    bne-    branch_0x801eb374
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r31)
    b       branch_0x801eb374

branch_0x801eb2a4:
    lwz     r3, -0x60b4(r13)
    lfs     f0, 0x18(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    fsubs   f6, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f0, -0x2294(rtoc)
    fsubs   f5, f2, f1
    fmuls   f1, f6, f6
    fmadds  f4, f5, f5, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x801eb320
    frsqrte f1, f4
    lfd     f3, -0x2290(rtoc)
    lfd     f2, -0x2288(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0x184(sp)
    lfs     f4, 0x184(sp)
branch_0x801eb320:
    lfs     f0, 0x100(r31)
    fcmpo   cr0, f4, f0
    bge-    branch_0x801eb374
    fdivs   f2, f5, f4
    lwz     r5, -0x60b4(r13)
    lfs     f3, -0x2280(rtoc)
    addi    r3, sp, 0x1bc
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    fdivs   f1, f6, f4
    stw     r4, 0x1bc(sp)
    stw     r0, 0x1c0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c4(sp)
    lfs     f0, 0x1bc(sp)
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x1bc(sp)
    lfs     f0, 0x1c4(sp)
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x1c4(sp)
    bl      SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
branch_0x801eb374:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x801eba80
    lbz     r0, 0xc4(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x801eb3d4
    bge-    branch_0x801eb540
    cmpwi   r0, 0x0
    bge-    branch_0x801eb39c
    b       branch_0x801eb540


.incbin "./baserom/code/Text_0x80005600.bin", 0x1e5d98, 0x801eb39c - 0x801eb398
branch_0x801eb39c:
    lwz     r3, 0x78(r31)
    li      r4, 0x2
    bl      getFrameCtrl__6MActorFi
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 30
    beq-    branch_0x801eb3bc
    li      r0, 0x1
    b       branch_0x801eb3c0

branch_0x801eb3bc:
    li      r0, 0x0
branch_0x801eb3c0:
    cmpwi   r0, 0x0
    beq-    branch_0x801eb550
    li      r0, 0x1
    stb     r0, 0xc4(r31)
    b       branch_0x801eb550

branch_0x801eb3d4:
    lha     r0, 0xca(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801eb50c
    lwz     r3, 0x78(r31)
    mr      r7, r31
    lhz     r0, 0x72(r31)
    li      r4, 0x131
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x78(r31)
    mr      r7, r31
    lhz     r0, 0x72(r31)
    li      r4, 0x132
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x78(r31)
    mr      r7, r31
    lhz     r0, 0x72(r31)
    li      r4, 0x133
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x78(r31)
    mr      r7, r31
    lhz     r0, 0x72(r31)
    li      r4, 0x134
    lwz     r5, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, -0x6070(r13)
    lwz     r5, 0x58(r5)
    add     r5, r5, r0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lha     r3, 0xca(r31)
    li      r4, 0x3076
    subi    r0, r3, 0x1
    sth     r0, 0xca(r31)
    lha     r3, 0xcc(r31)
    addi    r0, r3, 0x1
    sth     r0, 0xcc(r31)
    lwz     r3, -0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801eb4d8
    addi    r4, r31, 0x10
    li      r3, 0x3076
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801eb4d8:
    lwz     r3, -0x6044(r13)
    li      r4, 0x3077
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801eb550
    addi    r4, r31, 0x10
    li      r3, 0x3077
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801eb550

branch_0x801eb50c:
    li      r0, 0x0
    sth     r0, 0xca(r31)
    sth     r0, 0xcc(r31)
    lfs     f1, 0xd0(r31)
    lfs     f0, 0xd8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(r31)
    lfs     f1, 0xd0(r31)
    lfs     f0, -0x2294(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eb550
    stfs    f0, 0xd0(r31)
    b       branch_0x801eb550

branch_0x801eb540:
    lfs     f1, 0xd0(r31)
    lfs     f0, 0xdc(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xd0(r31)
branch_0x801eb550:
    lfs     f1, 0xd0(r31)
    lfs     f0, -0x2298(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801eb564
    stfs    f0, 0xd0(r31)
branch_0x801eb564:
    lfs     f1, 0xd0(r31)
    lfs     f0, -0x2294(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801eb578
    stfs    f0, 0xd0(r31)
branch_0x801eb578:
    lwz     r3, 0x78(r31)
    lbz     r0, 0xb8(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r0, 0x1
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r26, 0x28(r3)
    bne-    branch_0x801eba3c
    lbz     r0, 0xb9(r31)
    stb     r0, 0xba(r31)
    lhz     r3, 0xbc(r31)
    subi    r0, r3, 0x1
    sth     r0, 0xbc(r31)
    lhz     r0, 0xbc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801eb5e4
    lbz     r3, 0xb9(r31)
    addi    r0, r3, 0x1
    stb     r0, 0xb9(r31)
    lhz     r0, 0xbe(r31)
    sth     r0, 0xbc(r31)
    lbz     r0, 0xb9(r31)
    cmplwi  r0, 0x8
    blt-    branch_0x801eb5e4
    li      r0, 0x0
    stb     r0, 0xb9(r31)
branch_0x801eb5e4:
    lwz     r3, 0xc0(r31)
    li      r5, 0x0
    li      r4, 0x1
    lwz     r3, 0xc(r3)
    lwz     r6, 0x0(r3)
    addi    r9, r6, 0x41
    addi    r23, r6, 0x64
    stb     r5, 0x41(r6)
    addi    r12, r23, 0x5
    addi    r28, r6, 0x78
    stb     r5, 0x69(r6)
    addi    r7, r28, 0x5
    stb     r5, 0x7d(r6)
    addi    r24, r28, 0x6
    addi    r27, r6, 0xa0
    stb     r5, 0x7e(r6)
    addi    r10, r28, 0x7
    addi    r8, r28, 0x8
    stb     r5, 0x7f(r6)
    addi    r11, r27, 0x11
    stb     r4, 0x80(r6)
    stb     r4, 0xb1(r6)
    lbz     r0, 0xb9(r31)
    cmplwi  r0, 0x7
    bgt-    branch_0x801eb6a8
    lis     r3, 0x803d
    addi    r3, r3, 0x4050
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    stb     r4, 0x0(r7)
    stb     r5, 0x0(r8)
    b       branch_0x801eb6a8


.incbin "./baserom/code/Text_0x80005600.bin", 0x1e606c, 0x801eb6a8 - 0x801eb66c
branch_0x801eb6a8:
    mr      r3, r26
    lwz     r12, 0x0(r26)
    addi    r24, r6, 0x3c
    li      r4, 0x0
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x5(r24)
    mr      r25, r3
    lbz     r5, 0x6(r24)
    lbz     r6, 0x7(r24)
    lbz     r7, 0x8(r24)
    lbz     r8, 0x9(r24)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r24)
    mr      r3, r25
    lbz     r0, 0x2(r24)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r25)
    lbz     r4, 0x3(r24)
    lbz     r0, 0x4(r24)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r25)
    lbz     r0, 0xa(r24)
    lbz     r5, 0xb(r24)
    lbz     r4, 0x6(r25)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r24)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r24)
    srawi   r4, r7, 1
    stb     r0, 0x6(r25)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r25)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r25)
    lbz     r5, 0x6(r25)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r25)
    lbz     r4, 0xe(r24)
    lbz     r5, 0xf(r24)
    lbz     r6, 0x10(r24)
    lbz     r7, 0x11(r24)
    lbz     r8, 0x12(r24)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
    mr      r3, r26
    lwz     r12, 0x0(r26)
    li      r4, 0x2
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x5(r23)
    mr      r25, r3
    lbz     r5, 0x6(r23)
    lbz     r6, 0x7(r23)
    lbz     r7, 0x8(r23)
    lbz     r8, 0x9(r23)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r23)
    mr      r3, r25
    lbz     r0, 0x2(r23)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r25)
    lbz     r4, 0x3(r23)
    lbz     r0, 0x4(r23)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r25)
    lbz     r0, 0xa(r23)
    lbz     r5, 0xb(r23)
    lbz     r4, 0x6(r25)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r23)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r23)
    srawi   r4, r7, 1
    stb     r0, 0x6(r25)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r25)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r25)
    lbz     r5, 0x6(r25)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r25)
    lbz     r4, 0xe(r23)
    lbz     r5, 0xf(r23)
    lbz     r6, 0x10(r23)
    lbz     r7, 0x11(r23)
    lbz     r8, 0x12(r23)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
    mr      r3, r26
    lwz     r12, 0x0(r26)
    li      r4, 0x3
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x5(r28)
    mr      r25, r3
    lbz     r5, 0x6(r28)
    lbz     r6, 0x7(r28)
    lbz     r7, 0x8(r28)
    lbz     r8, 0x9(r28)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r28)
    mr      r3, r25
    lbz     r0, 0x2(r28)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r25)
    lbz     r4, 0x3(r28)
    lbz     r0, 0x4(r28)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r25)
    lbz     r0, 0xa(r28)
    lbz     r5, 0xb(r28)
    lbz     r4, 0x6(r25)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r28)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r28)
    srawi   r4, r7, 1
    stb     r0, 0x6(r25)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r25)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r25)
    lbz     r5, 0x6(r25)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r25)
    lbz     r4, 0xe(r28)
    lbz     r5, 0xf(r28)
    lbz     r6, 0x10(r28)
    lbz     r7, 0x11(r28)
    lbz     r8, 0x12(r28)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
    mr      r3, r26
    lwz     r12, 0x0(r26)
    li      r4, 0x5
    lwz     r12, 0x70(r12)
    mtlr    r12
    blrl
    lbz     r4, 0x5(r27)
    mr      r25, r3
    lbz     r5, 0x6(r27)
    lbz     r6, 0x7(r27)
    lbz     r7, 0x8(r27)
    lbz     r8, 0x9(r27)
    bl      setTevColorOp__11J3DTevStageFUcUcUcUcUc
    lbz     r4, 0x1(r27)
    mr      r3, r25
    lbz     r0, 0x2(r27)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x2(r25)
    lbz     r4, 0x3(r27)
    lbz     r0, 0x4(r27)
    slwi    r4, r4, 4
    or      r0, r4, r0
    stb     r0, 0x3(r25)
    lbz     r0, 0xa(r27)
    lbz     r5, 0xb(r27)
    lbz     r4, 0x6(r25)
    slwi    r0, r0, 5
    lbz     r7, 0xc(r27)
    slwi    r5, r5, 2
    insrwi  r0, r4, 5, 27
    lbz     r8, 0xd(r27)
    srawi   r4, r7, 1
    stb     r0, 0x6(r25)
    slwi    r0, r8, 4
    lbz     r6, 0x6(r25)
    rlwinm  r6, r6, 0, 30, 26
    or      r5, r6, r5
    stb     r5, 0x6(r25)
    lbz     r5, 0x6(r25)
    clrrwi  r5, r5, 2
    or      r4, r5, r4
    stb     r4, 0x6(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 25, 23
    insrwi  r4, r7, 8, 17
    stb     r4, 0x7(r25)
    lbz     r4, 0x7(r25)
    rlwinm  r4, r4, 0, 28, 24
    or      r0, r4, r0
    stb     r0, 0x7(r25)
    lbz     r4, 0xe(r27)
    lbz     r5, 0xf(r27)
    lbz     r6, 0x10(r27)
    lbz     r7, 0x11(r27)
    lbz     r8, 0x12(r27)
    bl      setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
branch_0x801eba3c:
    lwz     r3, 0x78(r31)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x2278(rtoc)
    li      r4, 0x5
    xoris   r3, r3, 0x8000
    stw     r3, 0x1ec(sp)
    lfs     f2, 0xd0(r31)
    stw     r0, 0x1e8(sp)
    lwz     r3, 0x78(r31)
    lfd     f0, 0x1e8(sp)
    fsubs   f0, f0, f1
    fmuls   f31, f2, f0
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0x10(r3)
branch_0x801eba80:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x801eba94
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      screenBlur__10TModelGateFPQ26JDrama9TGraphics
branch_0x801eba94:
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    addi    r5, r29, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
branch_0x801ebaa4:
    lmw     r23, 0x1f4(sp)
    lwz     r0, 0x224(sp)
    lfd     f31, 0x218(sp)
    addi    sp, sp, 0x220
    mtlr    r0
    blr


.globl setTevAlphaOp__11J3DTevStageFUcUcUcUcUc
setTevAlphaOp__11J3DTevStageFUcUcUcUcUc: # 0x801ebabc
    lbz     r9, 0x5(r3)
    clrlwi  r10, r4, 24
    clrlslwi  r0, r4, 24, 2
    rlwinm  r4, r9, 0, 30, 28
    or      r0, r4, r0
    cmplwi  r10, 0x1
    stb     r0, 0x5(r3)
    bgt-    branch_0x801ebb04
    lbz     r4, 0x5(r3)
    clrlslwi  r0, r6, 24, 4
    clrrwi  r4, r4, 2
    or      r4, r4, r5
    stb     r4, 0x5(r3)
    lbz     r4, 0x5(r3)
    rlwinm  r4, r4, 0, 28, 25
    or      r0, r4, r0
    stb     r0, 0x5(r3)
    b       branch_0x801ebb24

branch_0x801ebb04:
    lbz     r0, 0x5(r3)
    rlwinm  r0, r0, 0, 28, 25
    rlwimi  r0, r10, 3, 26, 27
    stb     r0, 0x5(r3)
    lbz     r0, 0x5(r3)
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x3
    stb     r0, 0x5(r3)
branch_0x801ebb24:
    lbz     r0, 0x5(r3)
    rlwinm  r4, r0, 0, 29, 27
    clrlslwi  r0, r7, 24, 3
    or      r0, r4, r0
    stb     r0, 0x5(r3)
    lbz     r0, 0x5(r3)
    rlwinm  r0, r0, 0, 26, 23
    insrwi  r0, r8, 8, 18
    stb     r0, 0x5(r3)
    blr


.globl setTevColorOp__11J3DTevStageFUcUcUcUcUc
setTevColorOp__11J3DTevStageFUcUcUcUcUc: # 0x801ebb4c
    lbz     r9, 0x1(r3)
    clrlwi  r10, r4, 24
    clrlslwi  r0, r4, 24, 2
    rlwinm  r4, r9, 0, 30, 28
    or      r0, r4, r0
    cmplwi  r10, 0x1
    stb     r0, 0x1(r3)
    bgt-    branch_0x801ebb94
    lbz     r4, 0x1(r3)
    clrlslwi  r0, r6, 24, 4
    rlwinm  r4, r4, 0, 28, 25
    or      r0, r4, r0
    stb     r0, 0x1(r3)
    lbz     r0, 0x1(r3)
    clrrwi  r0, r0, 2
    or      r0, r0, r5
    stb     r0, 0x1(r3)
    b       branch_0x801ebbb4

branch_0x801ebb94:
    lbz     r0, 0x1(r3)
    rlwinm  r0, r0, 0, 28, 25
    rlwimi  r0, r10, 3, 26, 27
    stb     r0, 0x1(r3)
    lbz     r0, 0x1(r3)
    clrrwi  r0, r0, 2
    ori     r0, r0, 0x3
    stb     r0, 0x1(r3)
branch_0x801ebbb4:
    lbz     r0, 0x1(r3)
    rlwinm  r4, r0, 0, 29, 27
    clrlslwi  r0, r7, 24, 3
    or      r0, r4, r0
    stb     r0, 0x1(r3)
    lbz     r0, 0x1(r3)
    rlwinm  r0, r0, 0, 26, 23
    insrwi  r0, r8, 8, 18
    stb     r0, 0x1(r3)
    blr


.globl receiveMessage__10TModelGateFP9THitActorUl
receiveMessage__10TModelGateFP9THitActorUl: # 0x801ebbdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r4
    stw     r30, 0x80(sp)
    addi    r30, r3, 0x0
    lwz     r4, 0x4c(r4)
    addis   r0, r4, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801ebc28
    cmplwi  r5, 0xe
    bne-    branch_0x801ebc28
    li      r0, 0x0
    sth     r0, 0xc8(r30)
    li      r0, 0x2
    li      r3, 0x1
    stb     r0, 0xc4(r30)
    b       branch_0x801ebd6c

branch_0x801ebc28:
    addis   r0, r4, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x801ebd68
    addi    r3, r30, 0x7c
    addi    r4, r31, 0x10
    addi    r5, sp, 0x68
    bl      PSMTXMultVec
    lwz     r3, 0x78(r30)
    addi    r4, sp, 0x38
    lhz     r0, 0x72(r30)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXCopy
    lfs     f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    fmuls   f2, f0, f0
    lfs     f0, -0x2270(rtoc)
    fmuls   f1, f1, f1
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ebd68
    lfs     f0, -0x226c(rtoc)
    lfs     f1, 0x70(sp)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801ebd68
    lfs     f0, 0xfc(r30)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ebd68
    lbz     r0, 0x70(r30)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801ebce4
    lfs     f1, 0xd0(r30)
    lfs     f0, 0xd4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0xd0(r30)
    lfs     f1, 0xd0(r30)
    lfs     f0, -0x2298(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ebce4
    lha     r0, 0xc8(r30)
    sth     r0, 0xca(r30)
    stfs    f0, 0xd0(r30)
    lbz     r0, 0x70(r30)
    rlwinm  r0, r0, 0, 31, 29
    stb     r0, 0x70(r30)
branch_0x801ebce4:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2278(rtoc)
    stw     r0, 0x7c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x2268(rtoc)
    stw     r0, 0x78(sp)
    lfs     f0, 0xf8(r30)
    lfd     f2, 0x78(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ebd60
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    lha     r7, 0x74(r30)
    li      r4, 0x1dd
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x2
    li      r10, 0x0
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
    lwz     r3, -0x6070(r13)
    addi    r5, r31, 0x10
    lha     r7, 0x74(r30)
    li      r4, 0x1de
    li      r6, 0x0
    li      r8, 0x0
    li      r9, 0x2
    li      r10, 0x0
    bl      emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
branch_0x801ebd60:
    li      r3, 0x1
    b       branch_0x801ebd6c

branch_0x801ebd68:
    li      r3, 0x0
branch_0x801ebd6c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl screenBlur__10TModelGateFPQ26JDrama9TGraphics
screenBlur__10TModelGateFPQ26JDrama9TGraphics: # 0x801ebd84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    stw     r30, 0x90(sp)
    mr      r30, r4
    lwz     r5, -0x60b4(r13)
    lfs     f1, 0x10(r3)
    addi    r3, sp, 0x54
    lfs     f2, 0x0(r5)
    mr      r4, r3
    lfs     f0, -0x2294(rtoc)
    fsubs   f1, f2, f1
    stfs    f1, 0x54(sp)
    stfs    f0, 0x58(sp)
    lfs     f1, 0x8(r5)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x5c(sp)
    bl      PSVECNormalize
    addi    r3, r30, 0xb4
    addi    r4, sp, 0x54
    addi    r5, sp, 0x60
    bl      PSMTXMultVecSR
    lwz     r7, -0x60b4(r13)
    addi    r3, r31, 0x7c
    addi    r4, sp, 0x3c
    lwz     r6, 0x0(r7)
    addi    r5, sp, 0x48
    lwz     r0, 0x4(r7)
    stw     r6, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x44(sp)
    bl      PSMTXMultVec
    lfs     f1, -0x2264(rtoc)
    lfs     f2, 0x48(sp)
    lfs     f5, -0x2294(rtoc)
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x801ebec0
    lfs     f0, -0x2260(rtoc)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801ebec0
    lfs     f2, 0x4c(sp)
    fcmpo   cr0, f1, f2
    cror    2, 0, 2
    bne-    branch_0x801ebec0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801ebec0
    lfs     f3, 0x50(sp)
    fcmpo   cr0, f5, f3
    cror    2, 0, 2
    bne-    branch_0x801ebec0
    lfs     f4, 0xf4(r31)
    fcmpo   cr0, f3, f4
    cror    2, 0, 2
    bne-    branch_0x801ebec0
    lfs     f0, 0xf0(r31)
    fcmpo   cr0, f3, f0
    bge-    branch_0x801ebe88
    lfs     f5, -0x2298(rtoc)
branch_0x801ebe88:
    fcmpo   cr0, f0, f3
    cror    2, 0, 2
    bne-    branch_0x801ebeb4
    fcmpo   cr0, f3, f4
    cror    2, 0, 2
    bne-    branch_0x801ebeb4
    fsubs   f1, f3, f0
    lfs     f2, -0x2298(rtoc)
    fsubs   f0, f4, f0
    fdivs   f0, f1, f0
    fsubs   f5, f2, f0
branch_0x801ebeb4:
    fcmpo   cr0, f4, f3
    bge-    branch_0x801ebec0
    lfs     f5, -0x2294(rtoc)
branch_0x801ebec0:
    lwz     r3, -0x7118(r13)
    lis     r4, 0x4330
    lbz     r5, 0xe0(r31)
    lha     r0, 0x258(r3)
    stw     r5, 0x8c(sp)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x2278(rtoc)
    stw     r0, 0x84(sp)
    lfs     f3, -0x225c(rtoc)
    stw     r4, 0x80(sp)
    lfs     f2, 0x34(r31)
    lfd     f0, 0x80(sp)
    stw     r4, 0x88(sp)
    fsubs   f0, f0, f1
    lfd     f4, -0x2258(rtoc)
    lfd     f1, 0x88(sp)
    fmsubs  f0, f3, f2, f0
    fsubs   f1, f1, f4
    fctiwz  f0, f0
    fmuls   f3, f1, f5
    stfd    f0, 0x70(sp)
    lwz     r0, 0x74(sp)
    stfd    f0, 0x78(sp)
    extsh   r0, r0
    cmpwi   r0, -0x2aaa
    lwz     r0, 0x7c(sp)
    blt-    branch_0x801ebf38
    extsh   r0, r0
    cmpwi   r0, 0x2aaa
    ble-    branch_0x801ebf3c
branch_0x801ebf38:
    lfs     f3, -0x2294(rtoc)
branch_0x801ebf3c:
    lfs     f1, 0xe4(r31)
    li      r0, 0x2
    lfs     f2, 0xe8(r31)
    fsubs   f0, f3, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0xe4(r31)
    lwz     r3, -0x7118(r13)
    lfs     f1, -0x2298(rtoc)
    lfs     f0, 0x270(r3)
    lfs     f3, 0xe4(r31)
    fsubs   f2, f1, f0
    lfs     f4, 0xec(r31)
    lfs     f0, 0x60(sp)
    lfs     f1, 0x64(sp)
    fmuls   f2, f3, f2
    stfs    f0, 0x30(sp)
    lfs     f0, 0x68(sp)
    fctiwz  f2, f2
    stfs    f1, 0x34(sp)
    lwz     r4, -0x6108(r13)
    stfs    f0, 0x38(sp)
    stfd    f2, 0x70(sp)
    stb     r0, 0x15(r4)
    lwz     r0, 0x74(sp)
    stb     r0, 0x1c(r4)
    stfs    f4, 0x50(r4)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0x5c(r4)
    stw     r0, 0x60(r4)
    lwz     r0, 0x38(sp)
    stw     r0, 0x64(r4)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    lwz     r30, 0x90(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl startOpen__10TModelGateFv
startOpen__10TModelGateFv: # 0x801ebfd4
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x70(r3)
    lis     r3, 0x803d
    ori     r0, r0, 0x1
    stb     r0, 0x70(r31)
    addi    r0, r3, 0x3f70
    stb     r4, 0xc4(r31)
    lbz     r4, 0x71(r31)
    lwz     r3, 0x78(r31)
    slwi    r4, r4, 2
    add     r4, r0, r4
    lwz     r4, 0x0(r4)
    bl      setBpk__6MActorFPCc
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lbz     r0, 0x70(r31)
    ori     r0, r0, 0x2
    stb     r0, 0x70(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__10TModelGateFv
loadAfter__10TModelGateFv: # 0x801ec048
    mflr    r0
    lis     r4, 0x800
    stw     r0, 0x4(sp)
    lis     r6, 0x8039
    lis     r5, 0x803d
    stwu    sp, -0x2b0(sp)
    addi    r4, r4, 0xc0
    stmw    r27, 0x29c(sp)
    addi    r28, r6, 0x3168
    addi    r29, r5, 0x3f38
    li      r5, 0x5
    lis     r6, 0x8000
    lfs     f1, -0x2250(rtoc)
    lfs     f2, -0x224c(rtoc)
    stw     r3, 0x8(sp)
    fmr     f3, f1
    fmr     f4, f2
    lwz     r3, 0x8(sp)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x8(sp)
    li      r0, 0x0
    li      r27, 0x0
    lwz     r3, 0x64(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x64(r4)
    stb     r0, 0x70(r4)
    stb     r0, 0x71(r4)
    b       branch_0x801ec0e4

branch_0x801ec0b8:
    lwz     r30, 0x8(sp)
    clrlslwi  r0, r27, 24, 2
    add     r3, r29, r0
    lwz     r4, 0x4(r30)
    lwz     r3, 0x4c(r3)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ec0e0
    stb     r27, 0x71(r30)
    b       branch_0x801ec0f0

branch_0x801ec0e0:
    addi    r27, r27, 0x1
branch_0x801ec0e4:
    clrlwi  r0, r27, 24
    cmplwi  r0, 0x5
    blt+    branch_0x801ec0b8
branch_0x801ec0f0:
    lwz     r30, 0x8(sp)
    addi    r3, sp, 0x194
    addi    r5, r28, 0x15c
    crxor   6, 6, 6
    lbz     r0, 0x71(r30)
    lis     r27, 0x1110
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r6, 0x38(r4)
    li      r4, 0x100
    bl      snprintf
    addi    r6, r27, 0x0
    addi    r3, r28, 0x178
    addi    r4, sp, 0x194
    li      r5, 0x0
    bl      SMS_MakeMActor__FPCcPCcUlUl
    stw     r3, 0x78(r30)
    subi    r4, rtoc, 0x2248
    lwz     r3, 0x78(r30)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0xb0(r3)
    bl      getIndex__10JUTNameTabCFPCc
    lis     r4, 0x803f
    sth     r3, 0x72(r30)
    subi    r3, r4, 0x3ea0
    lwz     r0, 0xa0(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x801ec1c0
    addi    r3, sp, 0x188
    bl      THPPlayerGetVideoInfo
    lwz     r3, 0x78(r30)
    li      r5, 0x1
    lwz     r7, 0x188(sp)
    lwz     r3, 0x4(r3)
    lwz     r6, 0x18c(sp)
    extrwi  r4, r7, 15, 16
    lwz     r3, 0x4(r3)
    extrwi  r0, r6, 15, 16
    lwz     r8, 0xac(r3)
    lwz     r3, 0x4(r8)
    stb     r5, 0x0(r3)
    sth     r7, 0x2(r3)
    sth     r6, 0x4(r3)
    lwz     r3, 0x4(r8)
    stbu    r5, 0x20(r3)
    sth     r4, 0x2(r3)
    sth     r0, 0x4(r3)
    lwz     r3, 0x4(r8)
    stbu    r5, 0x40(r3)
    sth     r4, 0x2(r3)
    sth     r0, 0x4(r3)
branch_0x801ec1c0:
    lwz     r30, 0x8(sp)
    li      r3, 0x0
    li      r0, 0xf0
    stb     r3, 0xb8(r30)
    stb     r3, 0xb9(r30)
    stb     r3, 0xba(r30)
    sth     r0, 0xbe(r30)
    lhz     r0, 0xbe(r30)
    sth     r0, 0xbc(r30)
    lbz     r0, 0x71(r30)
    lwz     r3, 0x78(r30)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0x38(r4)
    bl      setBtk__6MActorFPCc
    lbz     r0, 0x71(r30)
    lwz     r3, 0x78(r30)
    slwi    r0, r0, 2
    add     r4, r29, r0
    lwz     r4, 0x38(r4)
    bl      setBrk__6MActorFPCc
    lwz     r3, 0x78(r30)
    li      r4, 0x5
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x2294(rtoc)
    stfs    f0, 0xc(r3)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801ec24c
    lwz     r4, 0x78(r30)
    mr      r3, r27
    lwz     r4, 0x4(r4)
    lwz     r4, 0x4(r4)
    bl      __ct__19SampleCtrlModelDataFP12J3DModelData
branch_0x801ec24c:
    lwz     r29, 0x8(sp)
    li      r0, 0x20
    li      r3, 0xff
    stw     r27, 0xc0(r29)
    li      r30, 0x1
    li      r4, 0x168
    stb     r0, 0xc5(r29)
    li      r31, 0x0
    li      r0, 0x3c
    stb     r3, 0xc6(r29)
    addi    r3, r28, 0x18c
    stb     r30, 0xc4(r29)
    sth     r4, 0xc8(r29)
    sth     r31, 0xca(r29)
    sth     r31, 0xcc(r29)
    sth     r0, 0xce(r29)
    lfs     f0, -0x2294(rtoc)
    stfs    f0, 0xd0(r29)
    lfs     f0, -0x2240(rtoc)
    stfs    f0, 0xd4(r29)
    lfs     f0, -0x223c(rtoc)
    stfs    f0, 0xd8(r29)
    lfs     f0, -0x2238(rtoc)
    stfs    f0, 0xdc(r29)
    lfs     f0, -0x2298(rtoc)
    stfs    f0, 0x24(r29)
    stfs    f0, 0x28(r29)
    stfs    f0, 0x2c(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x18c
    mtlr    r12
    blrl
    addi    r27, r3, 0x10
    addi    r3, sp, 0xd4
    addi    r4, r27, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xd4(sp)
    addi    r3, sp, 0x128
    addi    r4, sp, 0xd0
    stw     r0, 0xd0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x128(sp)
    addi    r5, sp, 0xf0
    addi    r4, r27, 0x0
    stw     r0, 0x124(sp)
    addi    r3, sp, 0xec
    addi    r6, sp, 0x8
    lwz     r0, 0x124(sp)
    stw     r0, 0xf0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r3, r29, 0x0
    addi    r4, sp, 0x14c
    bl      SMS_GetActorMtx__FRC9THitActorPA4_f
    lwz     r4, 0x78(r29)
    addi    r3, sp, 0x14c
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x78(r29)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x2294(rtoc)
    addi    r3, sp, 0x14c
    lfs     f3, -0x2260(rtoc)
    fmr     f2, f1
    bl      PSMTXTrans
    lwz     r3, 0x78(r29)
    addi    r4, sp, 0x14c
    lhz     r0, 0x72(r29)
    mr      r5, r4
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXConcat
    lfs     f0, -0x2294(rtoc)
    addi    r4, r29, 0xac
    addi    r5, r4, 0x0
    stfs    f0, 0xac(r29)
    addi    r3, sp, 0x14c
    stfs    f0, 0xb0(r29)
    stfs    f0, 0xb4(r29)
    bl      PSMTXMultVec
    lwz     r3, 0x78(r29)
    addi    r4, r29, 0x7c
    lhz     r0, 0x72(r29)
    lwz     r3, 0x4(r3)
    mulli   r0, r0, 0x30
    lwz     r3, 0x58(r3)
    add     r3, r3, r0
    bl      PSMTXInverse
    lwz     r3, 0x78(r29)
    lhz     r0, 0x72(r29)
    lwz     r3, 0x4(r3)
    mulli   r4, r0, 0x30
    lwz     r0, 0x58(r3)
    add     r3, r0, r4
    lfs     f1, 0x28(r3)
    lfs     f2, 0x8(r3)
    bl      matan__Fff
    sth     r3, 0x74(r29)
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    stb     r31, 0xe0(r29)
    addi    r27, r3, 0x1a
    lfs     f2, -0x2294(rtoc)
    stfs    f2, 0xe4(r29)
    lfs     f0, -0x229c(rtoc)
    stfs    f0, 0xe8(r29)
    lfs     f0, -0x223c(rtoc)
    stfs    f0, 0xec(r29)
    lfs     f0, -0x2234(rtoc)
    stfs    f0, 0xf0(r29)
    lfs     f0, -0x22a0(rtoc)
    stfs    f0, 0xf4(r29)
    lfs     f0, -0x2230(rtoc)
    stfs    f0, 0xf8(r29)
    stfs    f2, 0xfc(r29)
    lfs     f0, -0x222c(rtoc)
    stfs    f0, 0x100(r29)
    lfs     f1, -0x2228(rtoc)
    stfs    f1, 0x104(r29)
    lfs     f0, -0x2224(rtoc)
    stfs    f0, 0x108(r29)
    stfs    f1, 0x10c(r29)
    stfs    f2, 0x110(r29)
    lfs     f0, -0x2250(rtoc)
    stfs    f0, 0x114(r29)
    lbz     r0, 0x1a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec490
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x19c
    li      r5, 0x1a
    bl      load__18JPAResourceManagerFPCcUs
    stb     r30, 0x0(r27)
branch_0x801ec490:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1b
    lbz     r0, 0x1b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec4c0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x1c4
    li      r5, 0x1b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec4c0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1c
    lbz     r0, 0x1c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec4f0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x1ec
    li      r5, 0x1c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec4f0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1d
    lbz     r0, 0x1d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec520
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x214
    li      r5, 0x1d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec520:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1e
    lbz     r0, 0x1e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec550
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x240
    li      r5, 0x1e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec550:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1f
    lbz     r0, 0x1f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec580
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x26c
    li      r5, 0x1f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec580:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x20
    lbz     r0, 0x20(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec5b0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x294
    li      r5, 0x20
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec5b0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x21
    lbz     r0, 0x21(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec5e0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x2c0
    li      r5, 0x21
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec5e0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x22
    lbz     r0, 0x22(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec610
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x2e8
    li      r5, 0x22
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec610:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x23
    lbz     r0, 0x23(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec640
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x314
    li      r5, 0x23
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec640:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x3c
    lbz     r0, 0x3c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec670
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x340
    li      r5, 0x3c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec670:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x51
    lbz     r0, 0x51(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec6a0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x368
    li      r5, 0x51
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec6a0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x131
    lbz     r0, 0x131(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec6d0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x394
    li      r5, 0x131
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec6d0:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x132
    lbz     r0, 0x132(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec700
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x3bc
    li      r5, 0x132
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec700:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x133
    lbz     r0, 0x133(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec730
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x3e4
    li      r5, 0x133
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec730:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x134
    lbz     r0, 0x134(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec760
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x40c
    li      r5, 0x134
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec760:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1dd
    lbz     r0, 0x1dd(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec790
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x434
    li      r5, 0x1dd
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec790:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r27, r3, 0x1de
    lbz     r0, 0x1de(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ec7c0
    lwz     r3, -0x5fe0(r13)
    addi    r4, r28, 0x45c
    li      r5, 0x1de
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r27)
branch_0x801ec7c0:
    lwz     r4, 0x8(sp)
    li      r3, 0x0
    lbz     r0, 0x71(r4)
    cmpwi   r0, 0x2
    beq-    branch_0x801ec820
    bge-    branch_0x801ec7e8
    cmpwi   r0, 0x0
    beq-    branch_0x801ec7f8
    bge-    branch_0x801ec80c
    b       branch_0x801ec858

branch_0x801ec7e8:
    cmpwi   r0, 0x4
    beq-    branch_0x801ec848
    bge-    branch_0x801ec858
    b       branch_0x801ec834

branch_0x801ec7f8:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x385
    bl      getBool__12TFlagManagerCFUl
    b       branch_0x801ec858

branch_0x801ec80c:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x386
    bl      getBool__12TFlagManagerCFUl
    b       branch_0x801ec858

branch_0x801ec820:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x387
    bl      getBool__12TFlagManagerCFUl
    b       branch_0x801ec858

branch_0x801ec834:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x387
    bl      getBool__12TFlagManagerCFUl
    b       branch_0x801ec858

branch_0x801ec848:
    lis     r4, 0x1
    lwz     r3, -0x6060(r13)
    addi    r4, r4, 0x387
    bl      getBool__12TFlagManagerCFUl
branch_0x801ec858:
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bne-    branch_0x801ec884
    lwz     r3, 0x8(sp)
    lbz     r0, 0x70(r3)
    ori     r0, r0, 0x1
    stb     r0, 0x70(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    b       branch_0x801ec8ac

branch_0x801ec884:
    lwz     r3, 0x8(sp)
    lbz     r0, 0x70(r3)
    clrrwi  r0, r0, 1
    stb     r0, 0x70(r3)
    lbz     r0, 0x70(r3)
    ori     r0, r0, 0x2
    stb     r0, 0x70(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
branch_0x801ec8ac:
    lmw     r27, 0x29c(sp)
    lwz     r0, 0x2b4(sp)
    addi    sp, sp, 0x2b0
    mtlr    r0
    blr


.globl __sinit_ModelGate_cpp
__sinit_ModelGate_cpp: # 0x801ec8c0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5b28
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801ec908
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801ec908:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ec938
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801ec938:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ec968
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801ec968:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ec998
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801ec998:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ec9c8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801ec9c8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ec9f8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801ec9f8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801eca28
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801eca28:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801eca58
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801eca58:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801eca88
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801eca88:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ecab8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801ecab8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ecae8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801ecae8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801ecb18
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801ecb18:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801ecb48
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801ecb48:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801ecb78
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801ecb78:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801ecba8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801ecba8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TModelGateFv
_32___dt__10TModelGateFv: # 0x801ecbbc
    subi    r3, r3, 0x20
    b       __dt__10TModelGateFv

