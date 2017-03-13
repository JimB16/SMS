
.globl __dt__21TMarioParticleManagerFv
__dt__21TMarioParticleManagerFv: # 0x80287698
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802876f0
    lis     r3, 0x803e
    subi    r0, r3, 0x1378
    stw     r0, 0x0(r30)
    beq-    branch_0x802876e0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802876e0:
    extsh.  r0, r31
    ble-    branch_0x802876f0
    mr      r3, r30
    bl      __dl__FPv
branch_0x802876f0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl SMSSetEmitterPolColor__FP14JPABaseEmitteri
SMSSetEmitterPolColor__FP14JPABaseEmitteri: # 0x8028770c
    cmplwi  r3, 0x0
    lis     r5, 0x803a
    addi    r5, r5, 0x1e70
    beqlr-    

    cmpwi   r4, 0x0
    bltlr-    

    cmpwi   r4, 0x7
    ble-    branch_0x80287730
    blr

branch_0x80287730:
    cmpwi   r4, 0x6
    bne-    branch_0x802877ec
    lwz     r4, gpMarDirector(r13)
    lbz     r0, 0x7c(r4)
    cmpwi   r0, 0x9
    beq-    branch_0x802877c8
    bge-    branch_0x80287784
    cmpwi   r0, 0x3
    beq-    branch_0x802877d0
    bge-    branch_0x80287770
    cmpwi   r0, 0x1
    beq-    branch_0x802877ac
    bge-    branch_0x802877c0
    cmpwi   r0, 0x0
    bge-    branch_0x802877c8
    b       branch_0x802877e8

branch_0x80287770:
    cmpwi   r0, 0x8
    bge-    branch_0x802877d8
    cmpwi   r0, 0x6
    bge-    branch_0x802877e0
    b       branch_0x802877e8

branch_0x80287784:
    cmpwi   r0, 0x37
    beq-    branch_0x802877c0
    bge-    branch_0x8028779c
    cmpwi   r0, 0xe
    beq-    branch_0x802877e0
    b       branch_0x802877e8

branch_0x8028779c:
    cmpwi   r0, 0x39
    beq-    branch_0x802877c8
    bge-    branch_0x802877e8
    b       branch_0x802877e0

branch_0x802877ac:
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x5
    bne-    branch_0x802877c0
    li      r4, 0x3
    b       branch_0x802877ec

branch_0x802877c0:
    li      r4, 0x2
    b       branch_0x802877ec

branch_0x802877c8:
    li      r4, 0x1
    b       branch_0x802877ec

branch_0x802877d0:
    li      r4, 0x3
    b       branch_0x802877ec

branch_0x802877d8:
    li      r4, 0x4
    b       branch_0x802877ec

branch_0x802877e0:
    li      r4, 0x5
    b       branch_0x802877ec

branch_0x802877e8:
    li      r4, 0x0
branch_0x802877ec:
    slwi    r0, r4, 2
    add     r4, r5, r0
    lbz     r6, 0x22(r4)
    lbz     r5, 0x21(r4)
    lbz     r0, 0x20(r4)
    stb     r0, 0x180(r3)
    stb     r5, 0x181(r3)
    stb     r6, 0x182(r3)
    lbz     r6, 0x3a(r4)
    lbz     r5, 0x39(r4)
    lbz     r0, 0x38(r4)
    stb     r0, 0x184(r3)
    stb     r5, 0x185(r3)
    stb     r6, 0x186(r3)
    blr


.globl getAvailableIdx__21TMarioParticleManagerFlUcPCv
getAvailableIdx__21TMarioParticleManagerFlUcPCv: # 0x80287828
    lwz     r10, 0x3b4(r3)
    slwi    r0, r4, 2
    add     r4, r3, r0
    cmpwi   r10, 0x0
    mtctr   r10
    clrlwi  r8, r5, 24
    li      r3, 0x0
    li      r7, 0x0
    ble-    branch_0x802878a8
branch_0x8028784c:
    cmplwi  r8, 0x3
    bne-    branch_0x80287874
    lwz     r0, 0x368(r4)
    add     r9, r0, r7
    lwz     r0, 0xc(r9)
    cmplwi  r0, 0x0
    beq-    branch_0x80287874
    lwz     r0, 0x0(r9)
    cmplw   r0, r6
    beqlr-    

branch_0x80287874:
    cmplwi  r8, 0x1
    bne-    branch_0x8028789c
    lwz     r0, 0x10(r4)
    add     r9, r0, r7
    lwz     r0, 0xc(r9)
    cmplwi  r0, 0x0
    beq-    branch_0x8028789c
    lwz     r0, 0x0(r9)
    cmplw   r0, r6
    beqlr-    

branch_0x8028789c:
    addi    r3, r3, 0x1
    addi    r7, r7, 0x10
    bdnz+      branch_0x8028784c
branch_0x802878a8:
    cmpwi   r10, 0x0
    mtctr   r10
    clrlwi  r6, r5, 24
    li      r3, 0x0
    li      r5, 0x0
    ble-    branch_0x80287944
branch_0x802878c0:
    cmplwi  r6, 0x3
    bne-    branch_0x802878fc
    lwz     r0, 0x368(r4)
    add     r7, r0, r5
    lhz     r0, 0xa(r7)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802878e4
    li      r0, 0x1
    b       branch_0x802878e8

branch_0x802878e4:
    li      r0, 0x0
branch_0x802878e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x802878fc
    lwz     r0, 0xc(r7)
    cmplwi  r0, 0x0
    beqlr-    

branch_0x802878fc:
    cmplwi  r6, 0x1
    bne-    branch_0x80287938
    lwz     r0, 0x10(r4)
    add     r7, r0, r5
    lhz     r0, 0xa(r7)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80287920
    li      r0, 0x1
    b       branch_0x80287924

branch_0x80287920:
    li      r0, 0x0
branch_0x80287924:
    clrlwi. r0, r0, 24
    bne-    branch_0x80287938
    lwz     r0, 0xc(r7)
    cmplwi  r0, 0x0
    beqlr-    

branch_0x80287938:
    addi    r3, r3, 0x1
    addi    r5, r5, 0x10
    bdnz+      branch_0x802878c0
branch_0x80287944:
    li      r3, 0x0
    blr


.globl emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc: # 0x8028794c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x58(sp)
    mr      r30, r5
    lhz     r5, 0xa(r5)
    rlwinm. r0, r5, 0, 28, 28
    beq-    branch_0x8028797c
    li      r0, 0x1
    b       branch_0x80287980

branch_0x8028797c:
    li      r0, 0x0
branch_0x80287980:
    clrlwi. r0, r0, 24
    beq-    branch_0x802879d0
    lwz     r3, 0x3b8(r3)
    mr      r5, r4
    lwz     r4, 0x4(r30)
    addi    r6, r31, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    stw     r3, 0xc(r30)
    lwz     r4, 0xc(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x80287aac
    lwz     r3, 0x4(r30)
    subi    r0, r13, 0x606c
    stw     r3, 0x120(r4)
    lwz     r3, 0xc(r30)
    stw     r0, 0x110(r3)
    b       branch_0x80287aac

branch_0x802879d0:
    rlwinm. r0, r5, 0, 26, 27
    beq-    branch_0x802879e0
    li      r0, 0x1
    b       branch_0x802879e4

branch_0x802879e0:
    li      r0, 0x0
branch_0x802879e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80287a88
    lwz     r7, 0x4(r30)
    addi    r5, r4, 0x0
    addi    r6, r31, 0x0
    lfs     f0, 0xc(r7)
    addi    r4, sp, 0x4c
    li      r7, 0x0
    stfs    f0, 0x4c(sp)
    li      r8, 0x0
    li      r9, 0x0
    lwz     r10, 0x4(r30)
    lfs     f0, 0x1c(r10)
    stfs    f0, 0x50(sp)
    lwz     r10, 0x4(r30)
    lfs     f0, 0x2c(r10)
    stfs    f0, 0x54(sp)
    lwz     r3, 0x3b8(r3)
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    stw     r3, 0xc(r30)
    lwz     r3, 0xc(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x80287aac
    lwz     r0, 0x4(r30)
    stw     r0, 0x120(r3)
    lhz     r0, 0xa(r30)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x80287a5c
    li      r0, 0x1
    b       branch_0x80287a60

branch_0x80287a5c:
    li      r0, 0x0
branch_0x80287a60:
    clrlwi. r0, r0, 24
    beq-    branch_0x80287a78
    lwz     r3, 0xc(r30)
    subi    r0, r13, 0x6068
    stw     r0, 0x110(r3)
    b       branch_0x80287aac

branch_0x80287a78:
    lwz     r3, 0xc(r30)
    subi    r0, r13, 0x6064
    stw     r0, 0x110(r3)
    b       branch_0x80287aac

branch_0x80287a88:
    lwz     r3, 0x3b8(r3)
    mr      r5, r4
    lwz     r4, 0x4(r30)
    addi    r6, r31, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    stw     r3, 0xc(r30)
branch_0x80287aac:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80287aec
    lwz     r31, 0xc(r30)
    cmplwi  r31, 0x0
    beq-    branch_0x80287aec
    lwz     r5, -0x6104(r13)
    addi    r3, r31, 0x30
    li      r4, 0x0
    lwz     r5, 0x10(r5)
    lwz     r30, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r30, 0x0
    addi    r3, r31, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
branch_0x80287aec:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl emitParticleCallBack__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcP54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_PCv
emitParticleCallBack__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcP54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_PCv: # 0x80287b04
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r6, 24
    cmplwi  r0, 0x1
    stwu    sp, -0x48(sp)
    stmw    r25, 0x2c(sp)
    addi    r29, r6, 0x0
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    bne-    branch_0x80287bd4
    subi    r25, r27, 0xfd
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    addi    r5, r29, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r25, 2
    add     r4, r26, r0
    lwz     r4, 0x10(r4)
    slwi    r0, r3, 4
    add     r25, r4, r0
    lhz     r0, 0xa(r25)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r25)
    lhz     r0, 0xa(r25)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r25)
    lhz     r0, 0xa(r25)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r25)
    lhz     r0, 0xa(r25)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r25)
    stw     r28, 0x4(r25)
    stw     r31, 0x0(r25)
    lwz     r0, 0xc(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x80287bbc
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r25, 0x0
    addi    r6, r29, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80287bbc:
    lwz     r3, 0xc(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x80287bd4
    stw     r30, 0x114(r3)
    lwz     r3, 0xc(r25)
    b       branch_0x80287c80

branch_0x80287bd4:
    clrlwi  r0, r29, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80287c7c
    subi    r25, r27, 0x1e6
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    addi    r5, r29, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r25, 2
    add     r4, r26, r0
    lwz     r4, 0x368(r4)
    slwi    r0, r3, 4
    add     r25, r4, r0
    lhz     r0, 0xa(r25)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r25)
    lhz     r0, 0xa(r25)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r25)
    lhz     r0, 0xa(r25)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r25)
    lhz     r0, 0xa(r25)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r25)
    stw     r28, 0x4(r25)
    stw     r31, 0x0(r25)
    lwz     r0, 0xc(r25)
    cmplwi  r0, 0x0
    bne-    branch_0x80287c64
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r25, 0x0
    addi    r6, r29, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80287c64:
    lwz     r3, 0xc(r25)
    cmplwi  r3, 0x0
    beq-    branch_0x80287c7c
    stw     r30, 0x114(r3)
    lwz     r3, 0xc(r25)
    b       branch_0x80287c80

branch_0x80287c7c:
    li      r3, 0x0
branch_0x80287c80:
    lmw     r25, 0x2c(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv: # 0x80287c94
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    mr      r29, r5
    addi    r31, r6, 0x0
    mr      r27, r3
    mr      r28, r4
    lfs     f0, 0xc(r5)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x3c(sp)
    bne-    branch_0x80287d10
    lwz     r3, 0x3b8(r27)
    addi    r5, r28, 0x0
    addi    r6, r31, 0x0
    addi    r4, sp, 0x34
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r30, r3
    beq-    branch_0x80287d10
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    mr      r3, r30
    b       branch_0x80287d84

branch_0x80287d10:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80287d80
    lwz     r3, 0x3b8(r27)
    addi    r5, r28, 0x0
    addi    r6, r31, 0x0
    addi    r4, sp, 0x34
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r30, r3
    beq-    branch_0x80287d80
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r5, -0x6104(r13)
    addi    r3, r30, 0x30
    li      r4, 0x0
    lwz     r5, 0x10(r5)
    lwz     r31, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r30, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
    mr      r3, r30
    b       branch_0x80287d84

branch_0x80287d80:
    li      r3, 0x0
branch_0x80287d84:
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv: # 0x80287d98
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    mr      r29, r5
    addi    r30, r6, 0x0
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r31, r7, 0x0
    lfs     f0, 0xc(r5)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x3c(sp)
    bne-    branch_0x80287e14
    lwz     r3, 0x3b8(r27)
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    addi    r4, sp, 0x34
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    cmplwi  r3, 0x0
    beq-    branch_0x80287e14
    stw     r29, 0x120(r3)
    subi    r0, r13, 0x6064
    stw     r0, 0x110(r3)
    b       branch_0x80287fc8

branch_0x80287e14:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80287e84
    lwz     r3, 0x3b8(r27)
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    addi    r4, sp, 0x34
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r26, r3
    beq-    branch_0x80287e84
    stw     r29, 0x120(r26)
    subi    r0, r13, 0x6064
    addi    r3, r26, 0x30
    stw     r0, 0x110(r26)
    li      r4, 0x0
    lwz     r5, -0x6104(r13)
    lwz     r5, 0x10(r5)
    lwz     r27, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r26, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
    mr      r3, r26
    b       branch_0x80287fc8

branch_0x80287e84:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80287f24
    subi    r26, r28, 0xfd
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x10(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x20
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x80287f14
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80287f14:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80287f24
    b       branch_0x80287fc8

branch_0x80287f24:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80287fc4
    subi    r26, r28, 0x1e6
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x368(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x20
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x80287fb4
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80287fb4:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80287fc4
    b       branch_0x80287fc8

branch_0x80287fc4:
    li      r3, 0x0
branch_0x80287fc8:
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv: # 0x80287fdc
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x58(sp)
    stmw    r26, 0x40(sp)
    mr      r29, r5
    addi    r30, r6, 0x0
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r31, r7, 0x0
    lfs     f0, 0xc(r5)
    stfs    f0, 0x34(sp)
    lfs     f0, 0x1c(r5)
    stfs    f0, 0x38(sp)
    lfs     f0, 0x2c(r5)
    stfs    f0, 0x3c(sp)
    bne-    branch_0x80288058
    lwz     r3, 0x3b8(r27)
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    addi    r4, sp, 0x34
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    cmplwi  r3, 0x0
    beq-    branch_0x80288058
    stw     r29, 0x120(r3)
    subi    r0, r13, 0x6068
    stw     r0, 0x110(r3)
    b       branch_0x8028820c

branch_0x80288058:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x2
    bne-    branch_0x802880c8
    lwz     r3, 0x3b8(r27)
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    addi    r4, sp, 0x34
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r26, r3
    beq-    branch_0x802880c8
    stw     r29, 0x120(r26)
    subi    r0, r13, 0x6068
    addi    r3, r26, 0x30
    stw     r0, 0x110(r26)
    li      r4, 0x0
    lwz     r5, -0x6104(r13)
    lwz     r5, 0x10(r5)
    lwz     r27, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r26, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
    mr      r3, r26
    b       branch_0x8028820c

branch_0x802880c8:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80288168
    subi    r26, r28, 0xfd
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x10(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x10
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x80288158
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80288158:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80288168
    b       branch_0x8028820c

branch_0x80288168:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80288208
    subi    r26, r28, 0x1e6
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x368(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x10
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802881f8
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x802881f8:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80288208
    b       branch_0x8028820c

branch_0x80288208:
    li      r3, 0x0
branch_0x8028820c:
    lmw     r26, 0x40(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv: # 0x80288220
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    addi    r30, r6, 0x0
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r31, r7, 0x0
    bne-    branch_0x80288284
    lwz     r3, 0x3b8(r27)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    cmplwi  r3, 0x0
    beq-    branch_0x80288284
    stw     r29, 0x120(r3)
    subi    r0, r13, 0x606c
    stw     r0, 0x110(r3)
    b       branch_0x80288438

branch_0x80288284:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x2
    bne-    branch_0x802882f4
    lwz     r3, 0x3b8(r27)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r26, r3
    beq-    branch_0x802882f4
    stw     r29, 0x120(r26)
    subi    r0, r13, 0x606c
    addi    r3, r26, 0x30
    stw     r0, 0x110(r26)
    li      r4, 0x0
    lwz     r5, -0x6104(r13)
    lwz     r5, 0x10(r5)
    lwz     r27, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r26, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
    mr      r3, r26
    b       branch_0x80288438

branch_0x802882f4:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x80288394
    subi    r26, r28, 0xfd
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x10(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x8
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x80288384
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80288384:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80288394
    b       branch_0x80288438

branch_0x80288394:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80288434
    subi    r26, r28, 0x1e6
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x368(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x8
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x80288424
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80288424:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80288434
    b       branch_0x80288438

branch_0x80288434:
    li      r3, 0x0
branch_0x80288438:
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv
emitWithRotate__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_sssUcPCv: # 0x8028844c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r9, 24
    stwu    sp, -0x78(sp)
    stmw    r24, 0x58(sp)
    addi    r31, r9, 0x0
    addi    r24, r3, 0x0
    addi    r25, r4, 0x0
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    bne-    branch_0x802884d0
    lwz     r3, 0x3b8(r24)
    addi    r4, r26, 0x0
    addi    r5, r25, 0x0
    addi    r6, r31, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r30, r3
    beq-    branch_0x802884d0
    sth     r27, 0x16c(r30)
    addi    r6, r30, 0x124
    sth     r28, 0x16e(r30)
    sth     r29, 0x170(r30)
    lha     r3, 0x16c(r30)
    lha     r4, 0x16e(r30)
    lha     r5, 0x170(r30)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    mr      r3, r30
    b       branch_0x80288558

branch_0x802884d0:
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80288554
    lwz     r3, 0x3b8(r24)
    addi    r4, r26, 0x0
    addi    r5, r25, 0x0
    addi    r6, r31, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r30, r3
    beq-    branch_0x80288554
    sth     r27, 0x16c(r30)
    addi    r6, r30, 0x124
    sth     r28, 0x16e(r30)
    sth     r29, 0x170(r30)
    lha     r3, 0x16c(r30)
    lha     r4, 0x16e(r30)
    lha     r5, 0x170(r30)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lwz     r5, -0x6104(r13)
    addi    r3, r30, 0x30
    li      r4, 0x0
    lwz     r5, 0x10(r5)
    lwz     r31, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r30, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
    mr      r3, r30
    b       branch_0x80288558

branch_0x80288554:
    li      r3, 0x0
branch_0x80288558:
    lmw     r24, 0x58(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv: # 0x8028856c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 24
    stwu    sp, -0x50(sp)
    stmw    r26, 0x38(sp)
    addi    r30, r6, 0x0
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r31, r7, 0x0
    bne-    branch_0x802885c4
    lwz     r3, 0x3b8(r27)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    cmplwi  r3, 0x0
    beq-    branch_0x802885c4
    b       branch_0x8028876c

branch_0x802885c4:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x2
    bne-    branch_0x80288628
    lwz     r3, 0x3b8(r27)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    bl      createSimpleEmitterID__17JPAEmitterManagerFRCQ29JGeometry8TVec3_f_lUcUcP34JPACallBackBase_P14JPABaseEmitter_P54JPACallBackBase2_P14JPABaseEmitter_P15JPABaseParticle_
    mr.     r26, r3
    beq-    branch_0x80288628
    lwz     r5, -0x6104(r13)
    addi    r3, r26, 0x30
    li      r4, 0x0
    lwz     r5, 0x10(r5)
    lwz     r27, 0x20(r5)
    bl      getMainTextureID__7JPADrawFUc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r26, 0x30
    bl      swapImage__7JPADrawFPC7ResTIMGs
    mr      r3, r26
    b       branch_0x8028876c

branch_0x80288628:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x1
    bne-    branch_0x802886c8
    subi    r26, r28, 0xfd
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x10(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x802886b8
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x802886b8:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x802886c8
    b       branch_0x8028876c

branch_0x802886c8:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x3
    bne-    branch_0x80288768
    subi    r26, r28, 0x1e6
    addi    r3, r27, 0x0
    addi    r4, r26, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    bl      getAvailableIdx__21TMarioParticleManagerFlUcPCv
    slwi    r0, r26, 2
    add     r4, r27, r0
    lwz     r4, 0x368(r4)
    slwi    r0, r3, 4
    add     r26, r4, r0
    lhz     r0, 0xa(r26)
    ori     r0, r0, 0x4
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 29, 27
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 28, 26
    sth     r0, 0xa(r26)
    lhz     r0, 0xa(r26)
    rlwinm  r0, r0, 0, 27, 25
    sth     r0, 0xa(r26)
    stw     r29, 0x4(r26)
    stw     r31, 0x0(r26)
    lwz     r0, 0xc(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x80288758
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r26, 0x0
    addi    r6, r30, 0x0
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x80288758:
    lwz     r3, 0xc(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80288768
    b       branch_0x8028876c

branch_0x80288768:
    li      r3, 0x0
branch_0x8028876c:
    lmw     r26, 0x38(sp)
    lwz     r0, 0x54(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl perform__21TMarioParticleManagerFUlPQ26JDrama9TGraphics
perform__21TMarioParticleManagerFUlPQ26JDrama9TGraphics: # 0x80288780
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0xc0(sp)
    stmw    r23, 0x9c(sp)
    addi    r26, r4, 0x0
    addi    r25, r3, 0x0
    addi    r27, r5, 0x0
    beq-    branch_0x80288a74
    bl      SMSGetAnmFrameRate__Fv
    fctiwz  f0, f1
    stfd    f0, 0x90(sp)
    lwz     r23, 0x94(sp)
    b       branch_0x802887c4

branch_0x802887b8:
    lwz     r3, 0x3b8(r25)
    bl      calc__17JPAEmitterManagerFv
    subi    r23, r23, 0x1
branch_0x802887c4:
    cmpwi   r23, 0x0
    bgt+    branch_0x802887b8
    li      r30, 0x1e6
    li      r23, 0x798
branch_0x802887d4:
    add     r31, r25, r23
    li      r29, 0x0
    li      r24, 0x0
    b       branch_0x80288904

branch_0x802887e4:
    lwz     r0, -0x430(r31)
    add     r3, r0, r24
    lhz     r0, 0x8(r3)
    addi    r28, r3, 0x0
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8028889c
    lhz     r0, 0xa(r28)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x8028889c
    lwz     r7, 0xc(r28)
    cmplwi  r7, 0x0
    bne-    branch_0x8028882c
    addi    r3, r25, 0x0
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    li      r6, 0x3
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
    b       branch_0x8028889c

branch_0x8028882c:
    lwz     r0, 0x11c(r7)
    li      r4, 0x0
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80288844
    li      r0, 0x1
    b       branch_0x80288848

branch_0x80288844:
    mr      r0, r4
branch_0x80288848:
    clrlwi. r0, r0, 24
    beq-    branch_0x80288864
    lwz     r3, 0xfc(r7)
    lwz     r0, 0x108(r7)
    add.    r0, r3, r0
    bne-    branch_0x80288864
    li      r4, 0x1
branch_0x80288864:
    clrlwi. r0, r4, 24
    beq-    branch_0x8028889c
    li      r0, -0x1
    stw     r0, 0x1e8(r7)
    li      r0, 0x0
    addi    r3, r25, 0x0
    lwz     r6, 0x11c(r7)
    addi    r4, r30, 0x0
    addi    r5, r28, 0x0
    ori     r6, r6, 0x1
    stw     r6, 0x11c(r7)
    li      r6, 0x3
    stw     r0, 0xc(r28)
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x8028889c:
    lhz     r0, 0x8(r28)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802888e8
    lhz     r0, 0xa(r28)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x802888e8
    lwz     r4, 0xc(r28)
    cmplwi  r4, 0x0
    beq-    branch_0x802888e8
    li      r0, -0x1
    stw     r0, 0x1e8(r4)
    li      r0, 0x0
    lwz     r3, 0x11c(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x11c(r4)
    stw     r0, 0xc(r28)
    stw     r0, 0x0(r28)
    stw     r0, 0x4(r28)
    stw     r0, 0x4(r28)
branch_0x802888e8:
    lhz     r0, 0xa(r28)
    addi    r29, r29, 0x1
    addi    r24, r24, 0x10
    sth     r0, 0x8(r28)
    lhz     r0, 0xa(r28)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0xa(r28)
branch_0x80288904:
    lwz     r0, 0x3b4(r25)
    cmpw    r29, r0
    blt+    branch_0x802887e4
    addi    r30, r30, 0x1
    cmpwi   r30, 0x1f9
    addi    r23, r23, 0x4
    blt+    branch_0x802887d4
    li      r28, 0xfd
    li      r24, 0x3f4
branch_0x80288928:
    add     r31, r25, r24
    li      r29, 0x0
    li      r23, 0x0
    b       branch_0x80288a58

branch_0x80288938:
    lwz     r0, -0x3e4(r31)
    add     r3, r0, r23
    lhz     r0, 0x8(r3)
    addi    r30, r3, 0x0
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802889f0
    lhz     r0, 0xa(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802889f0
    lwz     r7, 0xc(r30)
    cmplwi  r7, 0x0
    bne-    branch_0x80288980
    addi    r3, r25, 0x0
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x1
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
    b       branch_0x802889f0

branch_0x80288980:
    lwz     r0, 0x11c(r7)
    li      r4, 0x0
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80288998
    li      r0, 0x1
    b       branch_0x8028899c

branch_0x80288998:
    mr      r0, r4
branch_0x8028899c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802889b8
    lwz     r3, 0xfc(r7)
    lwz     r0, 0x108(r7)
    add.    r0, r3, r0
    bne-    branch_0x802889b8
    li      r4, 0x1
branch_0x802889b8:
    clrlwi. r0, r4, 24
    beq-    branch_0x802889f0
    li      r0, -0x1
    stw     r0, 0x1e8(r7)
    li      r0, 0x0
    addi    r3, r25, 0x0
    lwz     r6, 0x11c(r7)
    addi    r4, r28, 0x0
    addi    r5, r30, 0x0
    ori     r6, r6, 0x1
    stw     r6, 0x11c(r7)
    li      r6, 0x1
    stw     r0, 0xc(r30)
    bl      emitTry__21TMarioParticleManagerFlPQ221TMarioParticleManager5TInfoUc
branch_0x802889f0:
    lhz     r0, 0x8(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80288a3c
    lhz     r0, 0xa(r30)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80288a3c
    lwz     r4, 0xc(r30)
    cmplwi  r4, 0x0
    beq-    branch_0x80288a3c
    li      r0, -0x1
    stw     r0, 0x1e8(r4)
    li      r0, 0x0
    lwz     r3, 0x11c(r4)
    ori     r3, r3, 0x1
    stw     r3, 0x11c(r4)
    stw     r0, 0xc(r30)
    stw     r0, 0x0(r30)
    stw     r0, 0x4(r30)
    stw     r0, 0x4(r30)
branch_0x80288a3c:
    lhz     r0, 0xa(r30)
    addi    r29, r29, 0x1
    addi    r23, r23, 0x10
    sth     r0, 0x8(r30)
    lhz     r0, 0xa(r30)
    rlwinm  r0, r0, 0, 30, 28
    sth     r0, 0xa(r30)
branch_0x80288a58:
    lwz     r0, 0x3b4(r25)
    cmpw    r29, r0
    blt+    branch_0x80288938
    addi    r28, r28, 0x1
    cmpwi   r28, 0x1d3
    addi    r24, r24, 0x4
    blt+    branch_0x80288928
branch_0x80288a74:
    rlwinm. r0, r26, 0, 28, 28
    beq-    branch_0x80288b14
    rlwinm. r0, r26, 0, 1, 1
    beq-    branch_0x80288ad4
    bl      SMS_DrawInit__Fv
    addi    r0, r27, 0xb4
    lfs     f0, -0x6a0(rtoc)
    stw     r0, 0x84(sp)
    addi    r4, sp, 0x84
    li      r5, 0x2
    stfs    f0, 0x88(sp)
    lfs     f0, -0x69c(rtoc)
    stfs    f0, 0x8c(sp)
    lwz     r3, gpCamera(r13)
    lfs     f0, 0x48(r3)
    stfs    f0, 0x88(sp)
    lfs     f0, 0x4c(r3)
    stfs    f0, 0x8c(sp)
    lwz     r3, 0x3b8(r25)
    bl      draw__17JPAEmitterManagerFP11JPADrawInfoUc
    lwz     r3, 0x3b8(r25)
    addi    r4, sp, 0x84
    li      r5, 0x3
    bl      draw__17JPAEmitterManagerFP11JPADrawInfoUc
branch_0x80288ad4:
    clrrwi. r0, r26, 31
    beq-    branch_0x80288b14
    addi    r0, r27, 0xb4
    lfs     f1, -0x6a0(rtoc)
    stw     r0, 0x78(sp)
    addi    r4, sp, 0x78
    lfs     f0, -0x69c(rtoc)
    li      r5, 0x0
    stfs    f1, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lwz     r3, 0x3b8(r25)
    bl      draw__17JPAEmitterManagerFP11JPADrawInfoUc
    lwz     r3, 0x3b8(r25)
    addi    r4, sp, 0x78
    li      r5, 0x1
    bl      draw__17JPAEmitterManagerFP11JPADrawInfoUc
branch_0x80288b14:
    lmw     r23, 0x9c(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl createEffectInfoAry__21TMarioParticleManagerFi
createEffectInfoAry__21TMarioParticleManagerFi: # 0x80288b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x8029
    subi    r29, r3, 0x73a8
    li      r27, 0x0
    li      r30, 0x0
    stw     r4, 0x3b4(r31)
branch_0x80288b50:
    lwz     r28, 0x3b4(r31)
    slwi    r3, r28, 4
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r29, 0x0
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0x10
    bl      __construct_new_array
    addi    r27, r27, 0x1
    addi    r0, r30, 0x10
    cmpwi   r27, 0xd6
    stwx    r3, r31, r0
    addi    r30, r30, 0x4
    blt+    branch_0x80288b50
    lis     r3, 0x8029
    subi    r29, r3, 0x73a8
    li      r27, 0x0
    li      r30, 0x0
branch_0x80288b9c:
    lwz     r28, 0x3b4(r31)
    slwi    r3, r28, 4
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r29, 0x0
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0x10
    bl      __construct_new_array
    addi    r27, r27, 0x1
    addi    r0, r30, 0x368
    cmpwi   r27, 0x13
    stwx    r3, r31, r0
    addi    r30, r30, 0x4
    blt+    branch_0x80288b9c
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__21TMarioParticleManagerFPCc
__ct__21TMarioParticleManagerFPCc: # 0x80288bec
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, 0x803e
    sth     r4, 0xc(r31)
    subi    r0, r3, 0x1378
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x3b8(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__Q221TMarioParticleManager5TInfoFv
__ct__Q221TMarioParticleManager5TInfoFv: # 0x80288c58
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x4(r3)
    sth     r0, 0x8(r3)
    sth     r0, 0xa(r3)
    stw     r0, 0xc(r3)
    blr


.globl draw__36TMarioEmitterCallBackBindToSRTMtxPtrFP14JPABaseEmitter
draw__36TMarioEmitterCallBackBindToSRTMtxPtrFP14JPABaseEmitter: # 0x80288c78
    blr


.globl execute__36TMarioEmitterCallBackBindToSRTMtxPtrFP14JPABaseEmitter
execute__36TMarioEmitterCallBackBindToSRTMtxPtrFP14JPABaseEmitter: # 0x80288c7c
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x120(r4)
    mr      r4, r0
    bl      setGlobalSRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl draw__33TMarioEmitterCallBackBindToMtxPtrFP14JPABaseEmitter
draw__33TMarioEmitterCallBackBindToMtxPtrFP14JPABaseEmitter: # 0x80288ca8
    blr


.globl execute__33TMarioEmitterCallBackBindToMtxPtrFP14JPABaseEmitter
execute__33TMarioEmitterCallBackBindToMtxPtrFP14JPABaseEmitter: # 0x80288cac
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x120(r4)
    mr      r4, r0
    bl      setGlobalRTMatrix__14JPABaseEmitterFPA4_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl draw__33TMarioEmitterCallBackBindToPosPtrFP14JPABaseEmitter
draw__33TMarioEmitterCallBackBindToPosPtrFP14JPABaseEmitter: # 0x80288cd8
    blr


.globl execute__33TMarioEmitterCallBackBindToPosPtrFP14JPABaseEmitter
execute__33TMarioEmitterCallBackBindToPosPtrFP14JPABaseEmitter: # 0x80288cdc
    lwz     r3, 0x120(r4)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x160(r4)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x164(r4)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x168(r4)
    blr


.globl perform__23TEmitterIndirectViewObjFUlPQ26JDrama9TGraphics
perform__23TEmitterIndirectViewObjFUlPQ26JDrama9TGraphics: # 0x80288cfc
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x50(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x80288d54
    bl      SMSGetAnmFrameRate__Fv
    fctiwz  f0, f1
    stfd    f0, 0x48(sp)
    lwz     r31, 0x4c(sp)
    b       branch_0x80288d4c

branch_0x80288d40:
    lwz     r3, 0x10(r28)
    bl      calc__17JPAEmitterManagerFv
    subi    r31, r31, 0x1
branch_0x80288d4c:
    cmpwi   r31, 0x0
    bgt+    branch_0x80288d40
branch_0x80288d54:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x80288d98
    bl      SMS_DrawInit__Fv
    addi    r0, r30, 0xb4
    lfs     f0, -0x6a0(rtoc)
    stw     r0, 0x38(sp)
    addi    r4, sp, 0x38
    stfs    f0, 0x3c(sp)
    lfs     f0, -0x69c(rtoc)
    stfs    f0, 0x40(sp)
    lwz     r3, gpCamera(r13)
    lfs     f0, 0x48(r3)
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x4c(r3)
    stfs    f0, 0x40(sp)
    lwz     r3, 0x10(r28)
    bl      draw__17JPAEmitterManagerFP11JPADrawInfo
branch_0x80288d98:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl perform__15TEmitterViewObjFUlPQ26JDrama9TGraphics
perform__15TEmitterViewObjFUlPQ26JDrama9TGraphics: # 0x80288db8
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x30(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x80288e10
    bl      SMSGetAnmFrameRate__Fv
    fctiwz  f0, f1
    stfd    f0, 0x28(sp)
    lwz     r31, 0x2c(sp)
    b       branch_0x80288e08

branch_0x80288dfc:
    lwz     r3, 0x10(r28)
    bl      calc__17JPAEmitterManagerFv
    subi    r31, r31, 0x1
branch_0x80288e08:
    cmpwi   r31, 0x0
    bgt+    branch_0x80288dfc
branch_0x80288e10:
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x80288e3c
    addi    r0, r30, 0xb4
    lfs     f1, -0x6a0(rtoc)
    stw     r0, 0x1c(sp)
    addi    r4, sp, 0x1c
    lfs     f0, -0x69c(rtoc)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x24(sp)
    lwz     r3, 0x10(r28)
    bl      draw__17JPAEmitterManagerFP11JPADrawInfo
branch_0x80288e3c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    lwz     r28, 0x30(sp)
    addi    sp, sp, 0x40
    blr


.globl __ct__15TEmitterViewObjFP17JPAEmitterManagerPCc
__ct__15TEmitterViewObjFP17JPAEmitterManagerPCc: # 0x80288e5c
    mflr    r0
    lis     r6, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r4
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r5, 0x4(r3)
    mr      r3, r5
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    li      r0, 0x0
    lis     r3, 0x803e
    sth     r0, 0xc(r30)
    subi    r0, r3, 0x12d0
    addi    r3, r30, 0x0
    stw     r0, 0x0(r30)
    stw     r31, 0x10(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__23TEmitterIndirectViewObjFv
__dt__23TEmitterIndirectViewObjFv: # 0x80288ed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80288f3c
    lis     r3, 0x803e
    subi    r0, r3, 0x12f4
    stw     r0, 0x0(r30)
    beq-    branch_0x80288f2c
    lis     r3, 0x803e
    subi    r0, r3, 0x12d0
    stw     r0, 0x0(r30)
    beq-    branch_0x80288f2c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80288f2c:
    extsh.  r0, r31
    ble-    branch_0x80288f3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80288f3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TEmitterViewObjFv
__dt__15TEmitterViewObjFv: # 0x80288f58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80288fb0
    lis     r3, 0x803e
    subi    r0, r3, 0x12d0
    stw     r0, 0x0(r30)
    beq-    branch_0x80288fa0
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80288fa0:
    extsh.  r0, r31
    ble-    branch_0x80288fb0
    mr      r3, r30
    bl      __dl__FPv
branch_0x80288fb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl executeAfter__34JPACallBackBase_P14JPABaseEmitter_FP14JPABaseEmitter
executeAfter__34JPACallBackBase_P14JPABaseEmitter_FP14JPABaseEmitter: # 0x80288fcc
    blr


.globl __sinit_EmitterViewObj_cpp
__sinit_EmitterViewObj_cpp: # 0x80288fd0
    lis     r3, 0x803e
    subi    r4, r3, 0x13a0
    addi    r0, r4, 0x98
    addi    r3, r4, 0x84
    stw     r0, -0x606c(r13)
    addi    r0, r4, 0x70
    stw     r3, -0x6068(r13)
    stw     r0, -0x6064(r13)
    blr


.globl execute__34JPACallBackBase_P14JPABaseEmitter_FP14JPABaseEmitter
execute__34JPACallBackBase_P14JPABaseEmitter_FP14JPABaseEmitter: # 0x80288ff4
    blr


.globl draw__34JPACallBackBase_P14JPABaseEmitter_FP14JPABaseEmitter
draw__34JPACallBackBase_P14JPABaseEmitter_FP14JPABaseEmitter: # 0x80288ff8
    blr

