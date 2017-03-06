
.globl __ct__17TMarioSoundValuesFv
__ct__17TMarioSoundValuesFv: # 0x802851d8
    li      r5, 0x0
    stw     r5, 0x0(r3)
    li      r4, -0x1
    li      r0, 0x1
    stw     r4, 0x4(r3)
    stw     r5, 0x8(r3)
    stw     r5, 0xc(r3)
    stw     r5, 0x10(r3)
    stw     r5, 0x14(r3)
    stb     r5, 0x18(r3)
    stw     r5, 0x1c(r3)
    stb     r5, 0x20(r3)
    sth     r5, 0x22(r3)
    stb     r5, 0x24(r3)
    sth     r5, 0x26(r3)
    stw     r5, 0x14(r3)
    stb     r5, 0x29(r3)
    stb     r0, 0x2a(r3)
    stb     r5, 0x2b(r3)
    stb     r5, 0x2c(r3)
    blr


.globl startSoundActor__6TMarioFUl
startSoundActor__6TMarioFUl: # 0x8028522c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lwz     r0, -0x6044(r13)
    mr      r3, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285278
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285278:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl stopVoice__6TMarioFv
stopVoice__6TMarioFv: # 0x80285290
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r12, 0x0(r3)
    lwz     r31, -0x6044(r13)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    clrlwi  r4, r3, 24
    addi    r3, r31, 0x0
    li      r5, 0x0
    bl      stopMarioVoice__6MSoundFUlUc
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl startVoiceIfNoVoice__6TMarioFUl
startVoiceIfNoVoice__6TMarioFUl: # 0x802852d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    li      r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    lwz     r0, -0x6044(r13)
    mr      r3, r0
    bl      getMarioVoiceID__6MSoundFUc
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8028535c
    mr      r3, r29
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x8028532c
    li      r3, 0x0
    b       branch_0x80285360

branch_0x8028532c:
    mr      r3, r29
    lwz     r31, -0x6044(r13)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r29)
    mr      r6, r3
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80285360

branch_0x8028535c:
    li      r3, 0x0
branch_0x80285360:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl startVoice__6TMarioFUl
startVoice__6TMarioFUl: # 0x8028537c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x802853b0
    li      r3, 0x0
    b       branch_0x802853dc

branch_0x802853b0:
    mr      r3, r29
    lwz     r31, -0x6044(r13)
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r29)
    mr      r6, r3
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x802853dc:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getVoiceStatus__6TMarioFv
getVoiceStatus__6TMarioFv: # 0x802853f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80285420
    li      r3, 0x1
    b       branch_0x80285450

branch_0x80285420:
    lbz     r0, 0x388(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80285444
    bge-    branch_0x8028544c
    cmpwi   r0, 0x1
    bge-    branch_0x8028543c
    b       branch_0x8028544c

branch_0x8028543c:
    li      r3, 0x2
    b       branch_0x80285450

branch_0x80285444:
    li      r3, 0x6
    b       branch_0x80285450

branch_0x8028544c:
    li      r3, 0x0
branch_0x80285450:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl soundTorocco__6TMarioFv
soundTorocco__6TMarioFv: # 0x80285464
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x38(sp)
    lfs     f1, 0x30(sp)
    lfs     f0, 0x404(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x408(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x40c(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    lwz     r0, 0x30(sp)
    lwz     r3, 0x34(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x40(sp)
    stw     r0, 0x44(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x40(sp)
    lfs     f2, 0x44(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fmr     f31, f1
    lwz     r3, -0x6044(r13)
    li      r4, 0x305a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285540
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x305a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80285540:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl animSound__6TMarioFv
animSound__6TMarioFv: # 0x80285558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    lwz     r3, 0xe0(r3)
    lbz     r0, 0x6(r3)
    stw     r0, 0x4e8(r31)
    lwz     r3, 0x118(r31)
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x80285590
    li      r0, 0x1
    b       branch_0x80285594

branch_0x80285590:
    li      r0, 0x0
branch_0x80285594:
    clrlwi. r0, r0, 24
    beq-    branch_0x80285600
    lwz     r0, 0x350(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802855f0
    lha     r3, 0x2428(r31)
    lis     r0, 0x4330
    lfd     f2, -0x6b0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x24dc(r31)
    stw     r3, 0x74(sp)
    lfs     f3, 0x368(r31)
    stw     r0, 0x70(sp)
    lfd     f1, 0x70(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fcmpo   cr0, f3, f0
    cror    2, 1, 2
    bne-    branch_0x802855f0
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x600
    stw     r0, 0x4e8(r31)
    b       branch_0x802856b8

branch_0x802855f0:
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x500
    stw     r0, 0x4e8(r31)
    b       branch_0x802856b8

branch_0x80285600:
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x80285610
    li      r0, 0x1
    b       branch_0x80285614

branch_0x80285610:
    li      r0, 0x0
branch_0x80285614:
    clrlwi. r0, r0, 24
    bne-    branch_0x80285658
    lwz     r3, 0xe0(r31)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x80285644
    cmplwi  r0, 0x4004
    beq-    branch_0x80285644
    cmplwi  r0, 0x8004
    beq-    branch_0x80285644
    cmplwi  r0, 0xc004
    bne-    branch_0x8028564c
branch_0x80285644:
    li      r0, 0x1
    b       branch_0x80285650

branch_0x8028564c:
    li      r0, 0x0
branch_0x80285650:
    clrlwi. r0, r0, 24
    beq-    branch_0x80285664
branch_0x80285658:
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x700
    stw     r0, 0x4e8(r31)
branch_0x80285664:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 14, 15
    beq-    branch_0x80285678
    li      r0, 0x1
    b       branch_0x8028567c

branch_0x80285678:
    li      r0, 0x0
branch_0x8028567c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802856b8
    lfs     f2, 0xf0(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, -0x6b4(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x802856ac
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x200
    stw     r0, 0x4e8(r31)
    b       branch_0x802856b8

branch_0x802856ac:
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0x4e8(r31)
branch_0x802856b8:
    lfs     f4, 0x368(r31)
    lfs     f0, -0x6b8(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x802856d0
    li      r0, 0x1
    b       branch_0x802856d4

branch_0x802856d0:
    li      r0, 0x0
branch_0x802856d4:
    cmpwi   r0, 0x0
    beq-    branch_0x80285734
    lha     r3, 0x2428(r31)
    lis     r0, 0x4330
    lfd     f3, -0x6b0(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f1, 0x2450(r31)
    stw     r3, 0x74(sp)
    lfs     f0, -0x6b4(rtoc)
    stw     r0, 0x70(sp)
    lfd     f2, 0x70(sp)
    fsubs   f2, f2, f3
    fdivs   f2, f4, f2
    fneg    f2, f2
    fmuls   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80285728
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x400
    stw     r0, 0x4e8(r31)
    b       branch_0x80285734

branch_0x80285728:
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x300
    stw     r0, 0x4e8(r31)
branch_0x80285734:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80285758
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x98
    bne-    branch_0x80285758
    li      r0, 0x1
    b       branch_0x8028575c

branch_0x80285758:
    li      r0, 0x0
branch_0x8028575c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80285770
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x15
    stw     r0, 0x4e8(r31)
branch_0x80285770:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80285784
    li      r0, 0x1
    b       branch_0x80285788

branch_0x80285784:
    li      r0, 0x0
branch_0x80285788:
    clrlwi. r0, r0, 24
    beq-    branch_0x80285794
    b       branch_0x802857a0

branch_0x80285794:
    lwz     r0, 0x4e8(r31)
    ori     r0, r0, 0x1000
    stw     r0, 0x4e8(r31)
branch_0x802857a0:
    lbz     r0, 0x388(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802857bc
    lwz     r0, 0x4e8(r31)
    oris    r0, r0, 0x2000
    stw     r0, 0x4e8(r31)
    b       branch_0x802857d0

branch_0x802857bc:
    cmplwi  r0, 0x2
    bne-    branch_0x802857d0
    lwz     r0, 0x4e8(r31)
    oris    r0, r0, 0x6000
    stw     r0, 0x4e8(r31)
branch_0x802857d0:
    lha     r0, 0x120(r31)
    mr      r3, r31
    lwz     r4, 0x4e8(r31)
    slwi    r0, r0, 24
    add     r0, r4, r0
    stw     r0, 0x4e8(r31)
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80285824
    lwz     r5, 0x3a8(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lwz     r5, 0xc(r5)
    lfs     f31, 0xc(r5)
    bl      getCurrentFrame__6TMarioFi
    fmr     f2, f31
    lwz     r3, 0x4dc(r31)
    lwz     r5, 0x4e8(r31)
    addi    r4, r31, 0x10
    li      r6, 0x4
    bl      animeLoop__9MAnmSoundFP3VecffUlUc
branch_0x80285824:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl soundMovement__6TMarioFv
soundMovement__6TMarioFv: # 0x8028583c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2d0(sp)
    stfd    f31, 0x2c8(sp)
    stmw    r27, 0x2b4(sp)
    mr      r31, r3
    li      r29, 0x1
    lwz     r4, -0x6044(r13)
    lwz     r30, 0x7c(r3)
    lbz     r0, 0xac(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x80285878
    li      r0, 0x0
    stb     r0, 0x518(r31)
    b       branch_0x80285880

branch_0x80285878:
    li      r0, 0x1
    stb     r0, 0x518(r31)
branch_0x80285880:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80285c38
    lwz     r3, 0x3e4(r31)
    bl      isEmitting__9TWaterGunFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802858f0
    lwz     r3, 0x3e4(r31)
    bl      getCurrentNozzle__9TWaterGunCFv
    lfs     f1, 0x378(r3)
    lfs     f0, -0x6b8(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802858f0
    lwz     r5, 0x3f0(r31)
    li      r4, 0x7129
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802858f0
    addi    r4, r28, 0x0
    li      r3, 0x7129
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802858f0:
    rlwinm. r0, r30, 0, 13, 13
    beq-    branch_0x80285988
    lwz     r5, 0x3f0(r31)
    li      r4, 0x1009
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285930
    addi    r4, r28, 0x0
    li      r3, 0x1009
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285930:
    addis   r0, r30, 0xff7c
    cmplwi  r0, 0x452
    bne-    branch_0x802859d0
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x452
    beq-    branch_0x802859d0
    lwz     r5, 0x3f0(r31)
    li      r4, 0x7926
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802859d0
    addi    r4, r28, 0x0
    li      r3, 0x7926
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x802859d0

branch_0x80285988:
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xff7c
    cmplwi  r0, 0x452
    bne-    branch_0x802859d0
    lwz     r5, 0x3f0(r31)
    li      r4, 0x792a
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802859d0
    addi    r4, r28, 0x0
    li      r3, 0x792a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802859d0:
    rlwinm. r0, r30, 0, 20, 20
    beq-    branch_0x80285a1c
    lwz     r0, 0x500(r31)
    rlwinm. r0, r0, 0, 20, 20
    bne-    branch_0x80285a1c
    lwz     r5, 0x3f0(r31)
    li      r4, 0x791d
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285a1c
    addi    r4, r28, 0x0
    li      r3, 0x791d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285a1c:
    addis   r0, r30, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x80285a70
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    beq-    branch_0x80285a70
    lwz     r5, 0x3f0(r31)
    li      r4, 0x792b
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285a70
    addi    r4, r28, 0x0
    li      r3, 0x792b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285a70:
    addis   r0, r30, 0xff80
    cmplwi  r0, 0x23c
    bne-    branch_0x80285ac4
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x80285ac4
    lwz     r5, 0x3f0(r31)
    li      r4, 0x198d
    lwz     r3, -0x6044(r13)
    addi    r28, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285ac4
    addi    r4, r28, 0x0
    li      r3, 0x198d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285ac4:
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    beq-    branch_0x80287314
    lwz     r3, 0x74(r31)
    lwz     r0, 0x50c(r31)
    rlwinm  r3, r3, 0, 29, 29
    neg     r4, r3
    subic   r3, r4, 0x1
    subfe   r3, r3, r4
    rlwinm  r0, r0, 0, 29, 29
    clrlwi. r29, r3, 24
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r28, r0, 24
    beq-    branch_0x80285b18
    cmpwi   r28, 0x0
    bne-    branch_0x80285b18
    li      r0, 0x0
    stw     r0, 0x51c(r31)
branch_0x80285b18:
    cmpwi   r29, 0x0
    beq-    branch_0x80285b2c
    lwz     r3, 0x51c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x51c(r31)
branch_0x80285b2c:
    lbz     r3, 0x520(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80285bf4
    subi    r0, r3, 0x1
    stb     r0, 0x520(r31)
    lbz     r0, 0x520(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80285b90
    cmpwi   r29, 0x0
    bne-    branch_0x80285bf4
    lwz     r5, 0x3f0(r31)
    li      r4, 0x195a
    lwz     r3, -0x6044(r13)
    addi    r27, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285bf4
    addi    r4, r27, 0x0
    li      r3, 0x195a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80285bf4

branch_0x80285b90:
    cmplwi  r0, 0x4
    bne-    branch_0x80285bf4
    cmpwi   r29, 0x0
    bne-    branch_0x80285bec
    lwz     r5, 0x3f0(r31)
    li      r4, 0x195a
    lwz     r3, -0x6044(r13)
    addi    r27, r5, 0x20
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285bd8
    addi    r4, r27, 0x0
    li      r3, 0x195a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285bd8:
    lwz     r3, -0x6044(r13)
    li      r4, 0x792a
    li      r5, 0x1
    li      r6, 0x1
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80285bec:
    li      r0, 0x0
    stb     r0, 0x520(r31)
branch_0x80285bf4:
    cmpwi   r29, 0x0
    bne-    branch_0x80287314
    cmpwi   r28, 0x0
    beq-    branch_0x80287314
    lwz     r0, 0x51c(r31)
    cmplwi  r0, 0x78
    ble-    branch_0x80285c2c
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x6a8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80285c2c
    li      r0, 0x8
    stb     r0, 0x520(r31)
    b       branch_0x80287314

branch_0x80285c2c:
    li      r0, 0x4
    stb     r0, 0x520(r31)
    b       branch_0x80287314

branch_0x80285c38:
    lwz     r0, 0x7c(r31)
    subfic  r3, r0, 0x895
    subfic  r0, r0, 0x896
    cntlzw  r3, r3
    cntlzw  r0, r0
    extrwi  r3, r3, 8, 19
    extrwi  r0, r0, 8, 19
    or.     r28, r3, r0
    beq-    branch_0x80285cb4
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80285cc0
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80285ca4
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78b9
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80285ca4:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x10
    stw     r0, 0x504(r31)
    b       branch_0x80285cc0

branch_0x80285cb4:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x10
    stw     r0, 0x504(r31)
branch_0x80285cc0:
    cmpwi   r28, 0x0
    beq-    branch_0x80285d14
    lhz     r3, 0x522(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x522(r31)
    lhz     r0, 0x522(r31)
    cmplwi  r0, 0xa
    bne-    branch_0x80285d1c
    lwz     r3, -0x6044(r13)
    li      r4, 0x198e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285d1c
    addi    r4, r31, 0x10
    li      r3, 0x198e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80285d1c

branch_0x80285d14:
    li      r0, 0x0
    sth     r0, 0x522(r31)
branch_0x80285d1c:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x884
    bne-    branch_0x80285d64
    lwz     r0, 0x508(r31)
    cmplwi  r0, 0x884
    beq-    branch_0x80285d64
    lwz     r3, 0xe0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80285d64
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80285d64
    lha     r6, 0x2(r3)
    addi    r4, r31, 0x10
    lwz     r5, 0x4e8(r31)
    lwz     r3, -0x6044(r13)
    lfs     f1, -0x6b8(rtoc)
    bl      startForceJumpSound__6MSoundFP3VecUlfUl
branch_0x80285d64:
    lwz     r3, 0x500(r31)
    li      r6, 0x0
    cmplwi  r3, 0x383
    bne-    branch_0x80285d78
    li      r6, 0x1
branch_0x80285d78:
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x387
    bne-    branch_0x80285d88
    li      r6, 0x2
branch_0x80285d88:
    clrlwi. r5, r6, 24
    beq-    branch_0x80285f48
    lwz     r4, 0x6c(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80285f54
    lis     r3, 0x4000
    lwz     r4, 0x4c(r4)
    addi    r0, r3, 0x64
    cmpw    r4, r0
    bge-    branch_0x80285ddc
    addi    r0, r3, 0x5a
    cmpw    r4, r0
    bge-    branch_0x80285dcc
    addi    r0, r3, 0x46
    cmpw    r4, r0
    beq-    branch_0x80285ea4
    b       branch_0x80285f54

branch_0x80285dcc:
    addi    r0, r3, 0x5e
    cmpw    r4, r0
    bge-    branch_0x80285f54
    b       branch_0x80285ea4

branch_0x80285ddc:
    addi    r0, r3, 0x390
    cmpw    r4, r0
    bge-    branch_0x80285df8
    addi    r0, r3, 0x66
    cmpw    r4, r0
    bge-    branch_0x80285f54
    b       branch_0x80285ea4

branch_0x80285df8:
    addi    r0, r3, 0x397
    cmpw    r4, r0
    bge-    branch_0x80285f54
    cmplwi  r5, 0x1
    bne-    branch_0x80285e58
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80285f54
    lwz     r3, -0x6044(r13)
    li      r4, 0x194d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285e48
    addi    r4, r31, 0x10
    li      r3, 0x194d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285e48:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x40
    stw     r0, 0x504(r31)
    b       branch_0x80285f54

branch_0x80285e58:
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80285f54
    lwz     r3, -0x6044(r13)
    li      r4, 0x194e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285e94
    addi    r4, r31, 0x10
    li      r3, 0x194e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285e94:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x40
    stw     r0, 0x504(r31)
    b       branch_0x80285f54

branch_0x80285ea4:
    clrlwi  r0, r6, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80285efc
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80285f54
    lwz     r3, -0x6044(r13)
    li      r4, 0x1800
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285eec
    addi    r4, r31, 0x10
    li      r3, 0x1800
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285eec:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x40
    stw     r0, 0x504(r31)
    b       branch_0x80285f54

branch_0x80285efc:
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80285f54
    lwz     r3, -0x6044(r13)
    li      r4, 0x194c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285f38
    addi    r4, r31, 0x10
    li      r3, 0x194c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285f38:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x40
    stw     r0, 0x504(r31)
    b       branch_0x80285f54

branch_0x80285f48:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x40
    stw     r0, 0x504(r31)
branch_0x80285f54:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x33c
    bne-    branch_0x80285fb0
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80285fbc
    lwz     r3, -0x6044(r13)
    li      r4, 0x197b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80285fa0
    addi    r4, r31, 0x10
    li      r3, 0x197b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80285fa0:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x4
    stw     r0, 0x504(r31)
    b       branch_0x80285fbc

branch_0x80285fb0:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x4
    stw     r0, 0x504(r31)
branch_0x80285fbc:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x33c
    bne-    branch_0x80286040
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x33c
    beq-    branch_0x80286040
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286018
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x783b
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286018:
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    clrlwi  r4, r3, 24
    addi    r3, r27, 0x0
    li      r5, 0x0
    bl      stopMarioVoice__6MSoundFUlUc
branch_0x80286040:
    lwz     r3, 0x500(r31)
    li      r4, 0x0
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8b8
    bne-    branch_0x80286080
    lwz     r0, 0x74(r31)
    addi    r3, r4, 0x0
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80286074
    lwz     r0, 0x50c(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80286074
    li      r3, 0x1
branch_0x80286074:
    clrlwi. r0, r3, 24
    beq-    branch_0x80286080
    li      r4, 0x1
branch_0x80286080:
    lbz     r3, 0x524(r31)
    clrlwi  r4, r4, 24
    cmplwi  r3, 0x0
    beq-    branch_0x80286098
    subi    r0, r3, 0x1
    stb     r0, 0x524(r31)
branch_0x80286098:
    cmpwi   r4, 0x0
    beq-    branch_0x80286120
    lwz     r3, -0x6044(r13)
    li      r4, 0x193e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802860d0
    addi    r4, r31, 0x10
    li      r3, 0x193e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802860d0:
    lbz     r0, 0x524(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80286120
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286118
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x783b
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286118:
    li      r0, 0xb4
    stb     r0, 0x524(r31)
branch_0x80286120:
    addis   r0, r30, 0xfffe
    cmplwi  r0, 0x8b8
    bne-    branch_0x8028613c
    lhz     r3, 0x526(r31)
    addi    r0, r3, 0x1
    sth     r0, 0x526(r31)
    b       branch_0x80286144

branch_0x8028613c:
    li      r0, 0x0
    sth     r0, 0x526(r31)
branch_0x80286144:
    lis     r3, 0x1000
    lwz     r4, 0x514(r31)
    addi    r0, r3, 0x15
    cmpw    r4, r0
    beq-    branch_0x80286170
    bge-    branch_0x802861bc
    lis     r3, 0x800
    addi    r0, r3, 0x16
    cmpw    r4, r0
    bge-    branch_0x802861bc
    b       branch_0x802861bc

branch_0x80286170:
    lhz     r0, 0x526(r31)
    cmplwi  r0, 0x3c
    bne-    branch_0x80286204
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286204
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x786b
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80286204

branch_0x802861bc:
    lhz     r0, 0x526(r31)
    cmplwi  r0, 0x1e
    bne-    branch_0x80286204
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286204
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78bf
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286204:
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80286278
    lwz     r3, 0x44(r31)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802862a0
    li      r0, 0x4
    stb     r0, 0x529(r31)
    lwz     r3, 0x44(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x514(r31)
    lwz     r3, 0x44(r31)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x4c(r3)
    rlwinm. r0, r0, 0, 5, 5
    beq-    branch_0x80286254
    li      r0, 0x1
    b       branch_0x80286258

branch_0x80286254:
    li      r0, 0x0
branch_0x80286258:
    clrlwi. r0, r0, 24
    beq-    branch_0x8028626c
    li      r0, 0x1
    stb     r0, 0x528(r31)
    b       branch_0x802862a0

branch_0x8028626c:
    li      r0, 0x2
    stb     r0, 0x528(r31)
    b       branch_0x802862a0

branch_0x80286278:
    lbz     r3, 0x529(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8028628c
    subi    r0, r3, 0x1
    stb     r0, 0x529(r31)
branch_0x8028628c:
    lbz     r0, 0x529(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802862a0
    li      r0, 0x0
    stb     r0, 0x528(r31)
branch_0x802862a0:
    lwz     r6, 0x7c(r31)
    rlwinm. r0, r6, 0, 14, 14
    beq-    branch_0x802864f0
    lis     r5, 0x2
    lwz     r3, 0x500(r31)
    addi    r4, r5, 0x466
    addi    r0, r5, 0x8b0
    addi    r5, r5, 0x8b3
    subf    r4, r6, r4
    subf    r0, r6, r0
    subf    r6, r6, r5
    cntlzw  r5, r4
    cntlzw  r4, r0
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x440
    cntlzw  r6, r6
    extrwi  r0, r4, 8, 19
    extrwi  r3, r5, 8, 19
    extrwi  r4, r6, 8, 19
    or      r0, r3, r0
    or      r28, r4, r0
    bne-    branch_0x8028634c
    addis   r0, r30, 0xfffe
    cmplwi  r0, 0x462
    bne-    branch_0x8028634c
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8028634c
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8028634c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x783b
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x8028634c:
    cmpwi   r28, 0x0
    beq-    branch_0x802864fc
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x8028639c
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8028639c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x783b
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x8028639c:
    lbz     r0, 0x528(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x80286428
    bge-    branch_0x802863b8
    cmpwi   r0, 0x0
    bge-    branch_0x802863c4
    b       branch_0x802864fc

branch_0x802863b8:
    cmpwi   r0, 0x3
    bge-    branch_0x802864fc
    b       branch_0x8028648c

branch_0x802863c4:
    cmpwi   r28, 0x0
    beq-    branch_0x80286418
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802864fc
    lwz     r3, -0x6044(r13)
    li      r4, 0x1965
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286408
    addi    r4, r31, 0x10
    li      r3, 0x1965
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286408:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x8
    stw     r0, 0x504(r31)
    b       branch_0x802864fc

branch_0x80286418:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x504(r31)
    b       branch_0x802864fc

branch_0x80286428:
    cmpwi   r28, 0x0
    beq-    branch_0x8028647c
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802864fc
    lwz     r3, -0x6044(r13)
    li      r4, 0x1949
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028646c
    addi    r4, r31, 0x10
    li      r3, 0x1949
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8028646c:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x8
    stw     r0, 0x504(r31)
    b       branch_0x802864fc

branch_0x8028647c:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x504(r31)
    b       branch_0x802864fc

branch_0x8028648c:
    cmpwi   r28, 0x0
    beq-    branch_0x802864e0
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802864fc
    lwz     r3, -0x6044(r13)
    li      r4, 0x1948
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802864d0
    addi    r4, r31, 0x10
    li      r3, 0x1948
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802864d0:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x8
    stw     r0, 0x504(r31)
    b       branch_0x802864fc

branch_0x802864e0:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x504(r31)
    b       branch_0x802864fc

branch_0x802864f0:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x8
    stw     r0, 0x504(r31)
branch_0x802864fc:
    lwz     r0, 0x74(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80286548
    lwz     r3, 0x3e4(r31)
    lwz     r0, 0x1c80(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80286548
    lwz     r3, -0x6044(r13)
    li      r4, 0x802
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286548
    addi    r4, r31, 0x10
    li      r3, 0x802
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286548:
    lwz     r27, 0x3e4(r31)
    lbz     r0, 0x52a(r31)
    lfs     f1, -0x6a4(rtoc)
    lfs     f0, 0x1cec(r27)
    cmplwi  r0, 0x0
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x2a8(sp)
    lwz     r28, 0x2ac(sp)
    bne-    branch_0x802865a8
    clrlwi. r0, r28, 24
    beq-    branch_0x802865a8
    lwz     r3, -0x6044(r13)
    li      r4, 0x807
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802865a8
    addi    r4, r31, 0x10
    li      r3, 0x807
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802865a8:
    lbz     r0, 0x52a(r31)
    cmplwi  r0, 0x12
    bne-    branch_0x802865fc
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x13
    bne-    branch_0x802865fc
    lbz     r0, 0x1c84(r27)
    cmpwi   r0, 0x0
    bne-    branch_0x802865fc
    lwz     r3, -0x6044(r13)
    li      r4, 0x808
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802865fc
    addi    r4, r31, 0x10
    li      r3, 0x808
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802865fc:
    lbz     r0, 0x52a(r31)
    cmplwi  r0, 0x31
    bne-    branch_0x80286644
    clrlwi  r0, r28, 24
    cmplwi  r0, 0x32
    bne-    branch_0x80286644
    lwz     r3, -0x6044(r13)
    li      r4, 0x815
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286644
    addi    r4, r31, 0x10
    li      r3, 0x815
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286644:
    stb     r28, 0x52a(r31)
    mr      r3, r31
    bl      isWearingCap__6TMarioFv
    clrlwi. r0, r3, 24
    beq-    branch_0x802866a4
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x80286694
    lwz     r3, -0x6044(r13)
    li      r4, 0x1982
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286694
    addi    r4, r31, 0x10
    li      r3, 0x1982
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286694:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x80
    stw     r0, 0x504(r31)
    b       branch_0x802866f4

branch_0x802866a4:
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x802866e0
    lwz     r3, -0x6044(r13)
    li      r4, 0x1983
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802866e0
    addi    r4, r31, 0x10
    li      r3, 0x1983
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802866e0:
    lwz     r3, 0x504(r31)
    rlwinm. r0, r3, 0, 24, 24
    beq-    branch_0x802866f4
    xori     r0, r3, 0x80
    stw     r0, 0x504(r31)
branch_0x802866f4:
    cmplwi  r30, 0x560
    beq-    branch_0x80286710
    addis   r0, r30, 0xfffc
    cmplwi  r0, 0x561
    beq-    branch_0x80286710
    cmplwi  r30, 0x894
    bne-    branch_0x8028685c
branch_0x80286710:
    lwz     r3, 0x500(r31)
    cmplwi  r3, 0x560
    beq-    branch_0x802867c4
    addis   r0, r3, 0xfffc
    cmplwi  r0, 0x561
    beq-    branch_0x802867c4
    cmplwi  r3, 0x894
    beq-    branch_0x802867c4
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x8028677c
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802867b8
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x788f
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x802867b8

branch_0x8028677c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802867b8
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78fb
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x802867b8:
    li      r0, 0x78
    stb     r0, 0x52b(r31)
    b       branch_0x8028685c

branch_0x802867c4:
    cmplwi  r30, 0x894
    bne-    branch_0x8028685c
    cmplwi  r3, 0x894
    beq-    branch_0x8028685c
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x80286820
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8028685c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7807
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x8028685c

branch_0x80286820:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x8028685c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7903
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x8028685c:
    lbz     r3, 0x52b(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80286870
    subi    r0, r3, 0x1
    stb     r0, 0x52b(r31)
branch_0x80286870:
    lwz     r0, 0x6c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802868d8
    rlwinm. r0, r30, 0, 21, 21
    beq-    branch_0x802868d8
    lbz     r0, 0x52b(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802868d8
    lbz     r0, 0x518(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802868d8
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x802868d8
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7094
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x802868d8:
    lwz     r3, 0xe0(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80286954
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80286910
    cmplwi  r3, 0x101
    beq-    branch_0x80286910
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x80286910
    cmplwi  r3, 0x4104
    bne-    branch_0x80286918
branch_0x80286910:
    li      r0, 0x1
    b       branch_0x8028691c

branch_0x80286918:
    li      r0, 0x0
branch_0x8028691c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80286948
    cmplwi  r3, 0x102
    beq-    branch_0x80286934
    cmplwi  r3, 0x103
    bne-    branch_0x8028693c
branch_0x80286934:
    li      r0, 0x1
    b       branch_0x80286940

branch_0x8028693c:
    li      r0, 0x0
branch_0x80286940:
    clrlwi. r0, r0, 24
    beq-    branch_0x80286950
branch_0x80286948:
    li      r29, 0x0
    b       branch_0x80286954

branch_0x80286950:
    li      r29, 0x1
branch_0x80286954:
    rlwinm. r0, r30, 0, 15, 15
    beq-    branch_0x80286a4c
    lwz     r0, 0x500(r31)
    rlwinm. r0, r0, 0, 15, 15
    bne-    branch_0x80286984
    li      r0, 0x1e
    stb     r0, 0x52c(r31)
    lwz     r3, 0x504(r31)
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x80286984
    xori     r0, r3, 0x200
    stw     r0, 0x504(r31)
branch_0x80286984:
    lbz     r0, 0x52c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80286a08
    lwz     r3, -0x6044(r13)
    li      r4, 0x27
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802869c0
    addi    r4, r31, 0x10
    li      r3, 0x27
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802869c0:
    lbz     r3, 0x52c(r31)
    subi    r0, r3, 0x1
    stb     r0, 0x52c(r31)
    lbz     r0, 0x52c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80286a08
    lwz     r3, -0x6044(r13)
    li      r4, 0x826
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286a08
    addi    r4, r31, 0x10
    li      r3, 0x826
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286a08:
    lwz     r3, -0x6044(r13)
    li      r4, 0x117e
    lfs     f31, 0xb0(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286a60
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x117e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x80286a60

branch_0x80286a4c:
    li      r0, 0x0
    stb     r0, 0x52c(r31)
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x200
    stw     r0, 0x504(r31)
branch_0x80286a60:
    lis     r3, 0x81
    addi    r0, r3, 0x446
    cmpw    r30, r0
    beq-    branch_0x80286a9c
    bge-    branch_0x80286a88
    lis     r3, 0x2
    addi    r0, r3, 0x8b3
    cmpw    r30, r0
    beq-    branch_0x80286bac
    b       branch_0x80286bac

branch_0x80286a88:
    lis     r3, 0x281
    addi    r0, r3, 0x89a
    cmpw    r30, r0
    beq-    branch_0x80286b5c
    b       branch_0x80286bac

branch_0x80286a9c:
    lwz     r0, 0x504(r31)
    ori     r0, r0, 0x100
    stw     r0, 0x504(r31)
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xfd7f
    cmplwi  r0, 0x89a
    bne-    branch_0x80286af4
    clrlwi. r0, r29, 24
    bne-    branch_0x80286bac
    lwz     r3, -0x6044(r13)
    li      r4, 0x828
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286bac
    addi    r4, r31, 0x10
    li      r3, 0x828
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80286bac

branch_0x80286af4:
    clrlwi. r0, r29, 24
    beq-    branch_0x80286b04
    li      r3, 0x117f
    b       branch_0x80286b08

branch_0x80286b04:
    li      r3, 0x117d
branch_0x80286b08:
    lbz     r0, 0x52c(r31)
    addi    r27, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80286bac
    lwz     r3, -0x6044(r13)
    mr      r4, r27
    lfs     f31, 0xb0(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286bac
    fmr     f1, f31
    addi    r3, r27, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
    b       branch_0x80286bac

branch_0x80286b5c:
    clrlwi. r0, r29, 24
    bne-    branch_0x80286bac
    lwz     r0, 0x504(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x80286bac
    lwz     r3, -0x6044(r13)
    li      r4, 0x828
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286ba0
    addi    r4, r31, 0x10
    li      r3, 0x828
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286ba0:
    lwz     r0, 0x504(r31)
    xori     r0, r0, 0x100
    stw     r0, 0x504(r31)
branch_0x80286bac:
    lwz     r0, 0x118(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80286bc0
    li      r0, 0x1
    b       branch_0x80286bc4

branch_0x80286bc0:
    li      r0, 0x0
branch_0x80286bc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80286c6c
    cmplwi  r30, 0x884
    bne-    branch_0x80286d4c
    lwz     r0, 0x500(r31)
    cmplwi  r0, 0x884
    beq-    branch_0x80286d4c
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x80286c2c
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286d4c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78b9
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80286d4c

branch_0x80286c2c:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286d4c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7907
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80286d4c

branch_0x80286c6c:
    cmplwi  r30, 0x884
    bne-    branch_0x80286d4c
    lwz     r0, 0x500(r31)
    cmplwi  r0, 0x884
    beq-    branch_0x80286d4c
    lis     r3, 0x803f
    subi    r3, r3, 0x6900
    lbz     r0, 0xe(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80286d4c
    lwz     r3, -0x6044(r13)
    li      r4, 0x1812
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80286cc4
    addi    r4, r31, 0x10
    li      r3, 0x1812
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80286cc4:
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x80286d10
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286d4c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78b9
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80286d4c

branch_0x80286d10:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286d4c
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7907
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286d4c:
    lwz     r0, 0x500(r31)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x80286dec
    addis   r0, r30, 0xc800
    cmplwi  r0, 0x34b
    bne-    branch_0x80286dec
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x80286db0
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286dec
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7890
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80286dec

branch_0x80286db0:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286dec
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78fc
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286dec:
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xeffe
    cmplwi  r0, 0x370
    beq-    branch_0x80286e44
    addis   r0, r30, 0xeffe
    cmplwi  r0, 0x370
    bne-    branch_0x80286e44
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286e44
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x784f
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286e44:
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xfc00
    cmplwi  r0, 0x471
    bne-    branch_0x80286e98
    cmplwi  r30, 0x88c
    bne-    branch_0x80286e98
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80286e98
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7913
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80286e98:
    lwz     r4, 0x500(r31)
    rlwinm. r0, r4, 0, 20, 20
    beq-    branch_0x80287008
    lis     r3, 0x1000
    addi    r0, r3, 0x357
    cmpw    r30, r0
    beq-    branch_0x80286ee8
    bge-    branch_0x80286ecc
    cmpwi   r30, 0x354
    bge-    branch_0x80287008
    cmpwi   r30, 0x350
    bge-    branch_0x80286f74
    b       branch_0x80287008

branch_0x80286ecc:
    addi    r0, r3, 0x557
    cmpw    r30, r0
    bge-    branch_0x80287008
    addi    r0, r3, 0x554
    cmpw    r30, r0
    bge-    branch_0x80286ee8
    b       branch_0x80287008

branch_0x80286ee8:
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x80286f34
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80287008
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x7890
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80287008

branch_0x80286f34:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80287008
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78f2
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80287008

branch_0x80286f74:
    subi    r0, r4, 0x892
    cmplwi  r0, 0x1
    ble-    branch_0x80287008
    lha     r0, 0x120(r31)
    cmpwi   r0, 0x2
    ble-    branch_0x80286fcc
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80287008
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x788f
    bl      startMarioVoice__6MSoundFUlsUc
    b       branch_0x80287008

branch_0x80286fcc:
    mr      r3, r31
    bl      onYoshi__6TMarioCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80287008
    mr      r3, r31
    lwz     r27, -0x6044(r13)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    lha     r5, 0x120(r31)
    mr      r6, r3
    addi    r3, r27, 0x0
    li      r4, 0x78f3
    bl      startMarioVoice__6MSoundFUlsUc
branch_0x80287008:
    addis   r3, r30, 0xff7c
    subi    r0, r3, 0x452
    cmplwi  r0, 0x1
    bgt-    branch_0x80287064
    lbz     r0, 0x518(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80287064
    mr      r3, r31
    bl      isRunningInWater__6TMarioFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80287064
    lwz     r3, -0x6044(r13)
    li      r4, 0x1009
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80287064
    addi    r4, r31, 0x10
    li      r3, 0x1009
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80287064:
    lwz     r3, 0x500(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x802870c4
    addis   r0, r30, 0xff80
    cmplwi  r0, 0x8a9
    beq-    branch_0x802870c4
    rlwinm. r0, r30, 0, 14, 14
    bne-    branch_0x8028710c
    clrrwi. r0, r30, 31
    bne-    branch_0x8028710c
    lwz     r3, -0x6044(r13)
    li      r4, 0x180e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028710c
    addi    r4, r31, 0x10
    li      r3, 0x180e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8028710c

branch_0x802870c4:
    addis   r0, r30, 0xffe0
    cmplwi  r0, 0x346
    bne-    branch_0x8028710c
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8028710c
    lwz     r3, -0x6044(r13)
    li      r4, 0x180e
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8028710c
    addi    r4, r31, 0x10
    li      r3, 0x180e
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8028710c:
    lwz     r3, 0x7c(r31)
    clrlwi  r0, r3, 23
    cmplwi  r0, 0x150
    blt-    branch_0x80287210
    cmplwi  r0, 0x15c
    bgt-    branch_0x80287210
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x358
    beq-    branch_0x80287210
    lfs     f0, 0x448(r31)
    lfs     f1, -0x6b8(rtoc)
    fcmpo   cr0, f0, f1
    ble-    branch_0x802871a0
    lfs     f0, 0x444(r31)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x802871a0
    lwz     r3, -0x6044(r13)
    li      r4, 0x381c
    lfs     f31, 0x44c(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80287190
    fmr     f1, f31
    addi    r4, r31, 0x428
    li      r3, 0x381c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80287190:
    lbz     r3, 0x54d(r31)
    li      r0, 0x381c
    stb     r3, 0x54c(r31)
    stw     r0, 0x548(r31)
branch_0x802871a0:
    lfs     f0, 0x448(r31)
    lfs     f1, -0x6b8(rtoc)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80287210
    lfs     f0, 0x444(r31)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x80287210
    lwz     r3, -0x6044(r13)
    li      r4, 0x381d
    lfs     f31, 0x44c(r31)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80287200
    fmr     f1, f31
    addi    r4, r31, 0x428
    li      r3, 0x381d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80287200:
    lbz     r3, 0x54d(r31)
    li      r0, 0x381d
    stb     r3, 0x54c(r31)
    stw     r0, 0x548(r31)
branch_0x80287210:
    lbz     r3, 0x54c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80287274
    subi    r0, r3, 0x1
    stb     r0, 0x54c(r31)
    lbz     r0, 0x54c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80287274
    lwz     r27, 0x548(r31)
    lwz     r3, -0x6044(r13)
    lfs     f31, 0x44c(r31)
    mr      r4, r27
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80287274
    fmr     f1, f31
    addi    r3, r27, 0x0
    addi    r4, r31, 0x434
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80287274:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x1336
    bne-    branch_0x802872c8
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802872c8
    lhz     r0, 0x86(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802872c8
    lwz     r3, -0x6044(r13)
    li      r4, 0x1979
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x802872c8
    addi    r4, r31, 0x10
    li      r3, 0x1979
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x802872c8:
    lwz     r3, 0x7c(r31)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x338
    bne-    branch_0x80287314
    lhz     r0, 0x84(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80287314
    lwz     r3, -0x6044(r13)
    li      r4, 0x1814
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80287314
    addi    r4, r31, 0x10
    li      r3, 0x1814
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80287314:
    lwz     r0, 0x7c(r31)
    stw     r0, 0x508(r31)
    stw     r30, 0x500(r31)
    lwz     r0, 0x74(r31)
    stw     r0, 0x50c(r31)
    lwz     r0, 0x78(r31)
    stw     r0, 0x510(r31)
    lwz     r0, 0x2d4(sp)
    lfd     f31, 0x2c8(sp)
    lmw     r27, 0x2b4(sp)
    addi    sp, sp, 0x2d0
    mtlr    r0
    blr


.globl __sinit_MarioSound_cpp
__sinit_MarioSound_cpp: # 0x80287348
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x3a90
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80287390
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80287390:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802873c0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802873c0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802873f0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802873f0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80287420
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80287420:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80287450
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80287450:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80287480
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80287480:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802874b0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802874b0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802874e0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802874e0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80287510
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80287510:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80287540
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80287540:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80287570
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80287570:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802875a0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802875a0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802875d0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802875d0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80287600
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80287600:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80287630
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80287630:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
