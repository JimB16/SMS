
.globl OSGetConsoleType
OSGetConsoleType: # 0x80341c08
    lwz     r3, R13Off_m0x5a70(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80341c20
    lwz     r3, 0x2c(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80341c2c
branch_0x80341c20:
    lis     r3, unk_10000002@h
    addi    r3, r3, unk_10000002@l
    b       branch_0x80341c2c

branch_0x80341c2c:
    blr


.globl ClearArena
ClearArena: # 0x80341c30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSGetResetCode
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    beq-    branch_0x80341c80
    li      r0, 0x0
    stw     r0, R13Off_m0x5a54(r13)
    stw     r0, R13Off_m0x5a58(r13)
    bl      OSGetArenaHi
    mr      r31, r3
    bl      OSGetArenaLo
    subf    r31, r3, r31
    bl      OSGetArenaLo
    mr      r5, r31
    li      r4, 0x0
    bl      memset
    b       branch_0x80341d44

branch_0x80341c80:
    lis     r4, 0x8130
    lwz     r3, -0x2010(r4)
    lwz     r0, -0x2014(r4)
    cmplwi  r3, 0x0
    stw     r3, R13Off_m0x5a54(r13)
    stw     r0, R13Off_m0x5a58(r13)
    bne-    branch_0x80341cc0
    bl      OSGetArenaHi
    mr      r31, r3
    bl      OSGetArenaLo
    subf    r31, r3, r31
    bl      OSGetArenaLo
    mr      r5, r31
    li      r4, 0x0
    bl      memset
    b       branch_0x80341d44

branch_0x80341cc0:
    bl      OSGetArenaLo
    lwz     r0, R13Off_m0x5a54(r13)
    cmplw   r3, r0
    bge-    branch_0x80341d44
    bl      OSGetArenaHi
    lwz     r0, R13Off_m0x5a54(r13)
    cmplw   r3, r0
    bgt-    branch_0x80341d04
    bl      OSGetArenaHi
    mr      r31, r3
    bl      OSGetArenaLo
    subf    r31, r3, r31
    bl      OSGetArenaLo
    mr      r5, r31
    li      r4, 0x0
    bl      memset
    b       branch_0x80341d44

branch_0x80341d04:
    bl      OSGetArenaLo
    lwz     r0, R13Off_m0x5a54(r13)
    subf    r31, r3, r0
    bl      OSGetArenaLo
    mr      r5, r31
    li      r4, 0x0
    bl      memset
    bl      OSGetArenaHi
    lwz     r31, R13Off_m0x5a58(r13)
    cmplw   r3, r31
    ble-    branch_0x80341d44
    bl      OSGetArenaHi
    subf    r5, r31, r3
    mr      r3, r31
    li      r4, 0x0
    bl      memset
branch_0x80341d44:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl InquiryCallback
InquiryCallback: # 0x80341d58
    lwz     r0, 0xc(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x80341d68
    b       branch_0x80341d84

branch_0x80341d68:
    lis     r3, DriveInfo@h
    addi    r3, r3, DriveInfo@l
    lhz     r0, 0x2(r3)
    lis     r3, 0x8000
    ori     r0, r0, 0x8000
    sth     r0, 0x30e6(r3)
    b       branch_0x80341d90

branch_0x80341d84:
    li      r0, 0x1
    lis     r3, 0x8000
    sth     r0, 0x30e6(r3)
branch_0x80341d90:
    blr


.globl OSInit
OSInit: # 0x80341d94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r29, 0xc(sp)
    lwz     r0, R13Off_m0x5a60(r13)
    lis     r4, DriveInfo@h
    lis     r3, unk_803e6940@h
    cmpwi   r0, 0x0
    addi    r30, r4, DriveInfo@l
    addi    r31, r3, unk_803e6940@l
    bne-    branch_0x80342130
    li      r0, 0x1
    stw     r0, R13Off_m0x5a60(r13)
    bl      __OSGetSystemTime
    stw     r4, R13Off_m0x5a44(r13)
    stw     r3, R13Off_m0x5a48(r13)
    bl      OSDisableInterrupts
    bl      PPCDisableSpeculation
    bl      PPCSetFpNonIEEEMode
    li      r0, 0x0
    lis     r4, 0x8000
    stw     r0, R13Off_m0x5a6c(r13)
    stw     r4, R13Off_m0x5a70(r13)
    stw     r0, R13Off_m0x5954(r13)
    lwz     r3, 0xf4(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80341e38
    addi    r0, r3, 0xc
    stw     r0, R13Off_m0x5a6c(r13)
    lwz     r0, 0x24(r3)
    lwz     r3, R13Off_m0x5a6c(r13)
    stw     r0, R13Off_m0x587c(r13)
    lwz     r0, 0x0(r3)
    clrlwi  r0, r0, 24
    stb     r0, 0x30e8(r4)
    lwz     r0, R13Off_m0x587c(r13)
    clrlwi  r0, r0, 24
    stb     r0, 0x30e9(r4)
    b       branch_0x80341e5c

branch_0x80341e38:
    lwz     r0, 0x34(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80341e5c
    lbz     r3, 0x30e8(r4)
    addi    r0, r13, R13Off_m0x5a68
    stw     r3, R13Off_m0x5a68(r13)
    stw     r0, R13Off_m0x5a6c(r13)
    lbz     r0, 0x30e9(r4)
    stw     r0, R13Off_m0x587c(r13)
branch_0x80341e5c:
    li      r0, 0x1
    lwz     r3, R13Off_m0x5a70(r13)
    stw     r0, R13Off_m0x5954(r13)
    lwz     r3, 0x30(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80341e80
    lis     r3, unk_80429800@ha
    addi    r3, r3, unk_80429800@l
    b       branch_0x80341e80

branch_0x80341e80:
    bl      OSSetArenaLo
    lwz     r3, R13Off_m0x5a70(r13)
    lwz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80341ec0
    lwz     r3, R13Off_m0x5a6c(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80341ec0
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x2
    bge-    branch_0x80341ec0
    lis     r3, unk_804277e8@h
    addi    r3, r3, unk_804277e8@l
    addi    r0, r3, 0x1f
    clrrwi  r3, r0, 5
    bl      OSSetArenaLo
branch_0x80341ec0:
    lwz     r3, R13Off_m0x5a70(r13)
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80341edc
    lis     r3, unk_81700000@h
    addi    r3, r3, unk_81700000@l
    b       branch_0x80341edc

branch_0x80341edc:
    bl      OSSetArenaHi
    bl      OSExceptionInit
    bl      __OSInitSystemCall
    bl      OSInitAlarm
    bl      __OSModuleInit
    bl      __OSInterruptInit
    lis     r3, __OSResetSWInterruptHandler@h
    addi    r4, r3, __OSResetSWInterruptHandler@l
    li      r3, 0x16
    bl      __OSSetInterruptHandler
    bl      __OSContextInit
    bl      __OSCacheInit
    bl      EXIInit
    bl      SIInit
    bl      __OSInitSram
    bl      __OSThreadInit
    bl      __OSInitAudioSystem
    bl      PPCMfhid2
    rlwinm  r3, r3, 0, 2, 0
    bl      PPCMthid2
    lwz     r3, R13Off_m0x5a70(r13)
    addi    r4, r3, 0x2c
    lwz     r0, 0x0(r4)
    rlwinm  r0, r0, 0, 3, 3
    cmplwi  r0, 0x0
    beq-    branch_0x80341f54
    lis     r3, unk_10000004@h
    addi    r0, r3, unk_10000004@l
    stw     r0, 0x0(r4)
    b       branch_0x80341f5c

branch_0x80341f54:
    li      r0, 0x1
    stw     r0, 0x0(r4)
branch_0x80341f5c:
    lis     r3, unk_cc003000@h
    lwz     r4, R13Off_m0x5a70(r13)
    addi    r3, r3, unk_cc003000@l
    lwz     r0, 0x2c(r3)
    lwz     r3, 0x2c(r4)
    clrrwi  r0, r0, 28
    srwi    r0, r0, 28
    add     r0, r3, r0
    stw     r0, 0x2c(r4)
    lwz     r0, R13Off_m0x5a50(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80341f90
    bl      __OSInitMemoryProtection
branch_0x80341f90:
    mr      r3, r31
    crxor   6, 6, 6
    bl      OSReport
    addi    r3, r31, 0x20
    crxor   6, 6, 6
    addi    r4, r31, 0x38
    addi    r5, r31, 0x44
    bl      OSReport
    addi    r3, r31, 0x50
    crxor   6, 6, 6
    bl      OSReport
    lwz     r3, R13Off_m0x5a70(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80341fd4
    lwz     r4, 0x2c(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80341fe0
branch_0x80341fd4:
    lis     r3, unk_10000002@h
    addi    r4, r3, unk_10000002@l
    b       branch_0x80341fe0

branch_0x80341fe0:
    rlwinm  r0, r4, 0, 3, 3
    cmplwi  r0, 0x0
    bne-    branch_0x80341ffc
    crxor   6, 6, 6
    addi    r3, r31, 0x60
    bl      OSReport
    b       branch_0x80342084

branch_0x80341ffc:
    lis     r3, unk_10000002@h
    addi    r0, r3, unk_10000002@l
    cmpw    r4, r0
    beq-    branch_0x80342050
    bge-    branch_0x80342020
    cmpw    r4, r3
    beq-    branch_0x80342030
    bge-    branch_0x80342040
    b       branch_0x80342070

branch_0x80342020:
    addi    r0, r3, 0x4
    cmpw    r4, r0
    bge-    branch_0x80342070
    b       branch_0x80342060

branch_0x80342030:
    addi    r3, r31, 0x6c
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x80342084

branch_0x80342040:
    addi    r3, r31, 0x7c
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x80342084

branch_0x80342050:
    addi    r3, r31, 0x8c
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x80342084

branch_0x80342060:
    addi    r3, r31, 0x9c
    crxor   6, 6, 6
    bl      OSReport
    b       branch_0x80342084

branch_0x80342070:
    addis   r4, r4, 0xf000
    crxor   6, 6, 6
    addi    r3, r31, 0xac
    addi    r4, r4, -0x3
    bl      OSReport
branch_0x80342084:
    lwz     r4, R13Off_m0x5a70(r13)
    addi    r3, r31, 0xc0
    crxor   6, 6, 6
    lwz     r0, 0x28(r4)
    srwi    r4, r0, 20
    bl      OSReport
    bl      OSGetArenaHi
    mr      r29, r3
    bl      OSGetArenaLo
    mr      r4, r3
    crxor   6, 6, 6
    mr      r5, r29
    addi    r3, r31, 0xd0
    bl      OSReport
    lwz     r3, R13Off_m0x5a6c(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x803420d8
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x2
    blt-    branch_0x803420d8
    bl      EnableMetroTRKInterrupts
branch_0x803420d8:
    bl      ClearArena
    bl      OSEnableInterrupts
    lwz     r0, R13Off_m0x5a50(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80342130
    bl      DVDInit
    lwz     r0, R13Off_m0x5a64(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80342110
    lis     r3, unk_00009000@ha
    addi    r0, r3, unk_00009000@l
    lis     r3, 0x8000
    sth     r0, 0x30e6(r3)
    b       branch_0x80342130

branch_0x80342110:
    mr      r3, r30
    li      r4, 0x20
    bl      DCInvalidateRange
    lis     r3, InquiryCallback@h
    addi    r5, r3, InquiryCallback@l
    mr      r4, r30
    addi    r3, r30, 0x20
    bl      DVDInquiryAsync
branch_0x80342130:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    lwz     r29, 0xc(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl OSExceptionInit
OSExceptionInit: # 0x8034214c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r20, 0x8(sp)
    lis     r3, unk_80000060@h
    lwz     r0, 0x60(r3)
    lis     r4, unk_8034248c@h
    addi    r30, r4, unk_8034248c@l
    lis     r5, OSExceptionVector@h
    lwz     r25, 0x0(r30)
    lis     r4, branch_0x803424bc@h
    addi    r5, r5, OSExceptionVector@l
    addi    r4, r4, branch_0x803424bc@l
    lis     r6, unk_803e6940@h
    cmplwi  r0, 0x0
    mr      r24, r5
    addi    r29, r6, unk_803e6940@l
    subf    r23, r5, r4
    addi    r20, r3, unk_80000060@l
    bne-    branch_0x803421e4
    addi    r3, r29, 0x124
    crxor   6, 6, 6
    bl      DBPrintf
    lis     r4, __OSDBIntegrator@h
    lis     r3, __OSDBJump@h
    addi    r0, r3, __OSDBJump@l
    addi    r4, r4, __OSDBIntegrator@l
    subf    r21, r4, r0
    mr      r3, r20
    mr      r5, r21
    bl      memcpy
    mr      r3, r20
    mr      r4, r21
    bl      DCFlushRangeNoSync
    sync
    mr      r3, r20
    mr      r4, r21
    bl      ICInvalidateRange
branch_0x803421e4:
    lis     r4, __OSDBJump@h
    lis     r3, __OSSetExceptionHandler@h
    addi    r31, r4, __OSDBJump@l
    addi    r0, r3, __OSSetExceptionHandler@l
    addi    r28, r29, 0xe8
    subf    r27, r31, r0
    li      r26, 0x0
    b       branch_0x80342204

branch_0x80342204:
    lis     r3, unk_8034247c@h
    addi    r21, r3, unk_8034247c@l
    lis     r22, 0x6000
    b       branch_0x80342214

branch_0x80342214:
    b       branch_0x8034235c

branch_0x80342218:
    lwz     r3, R13Off_m0x5a6c(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80342254
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x2
    blt-    branch_0x80342254
    mr      r3, r26
    bl      __DBIsExceptionMarked
    cmpwi   r3, 0x0
    beq-    branch_0x80342254
    addi    r3, r29, 0x140
    crxor   6, 6, 6
    clrlwi  r4, r26, 24
    bl      DBPrintf
    b       branch_0x80342354

branch_0x80342254:
    clrlwi  r20, r26, 24
    or      r0, r25, r20
    stw     r0, 0x0(r30)
    mr      r3, r26
    bl      __DBIsExceptionMarked
    cmpwi   r3, 0x0
    beq-    branch_0x80342294
    mr      r4, r20
    crxor   6, 6, 6
    addi    r3, r29, 0x170
    bl      DBPrintf
    mr      r3, r21
    mr      r4, r31
    mr      r5, r27
    bl      memcpy
    b       branch_0x80342320

branch_0x80342294:
    mr      r4, r21
    b       branch_0x8034229c

branch_0x8034229c:
    cmplwi  r27, 0x0
    addi    r3, r27, 0x3
    srwi    r3, r3, 2
    ble-    branch_0x80342320
    srwi    r0, r3, 3
    cmplwi  r0, 0x0
    mtctr   r0
    beq-    branch_0x8034230c
    b       branch_0x803422c0

branch_0x803422c0:
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    bdnz+      branch_0x803422c0
    andi.   r3, r3, 0x7
    beq-    branch_0x80342320
branch_0x8034230c:
    mtctr   r3
    b       branch_0x80342314

branch_0x80342314:
    stw     r22, 0x0(r4)
    addi    r4, r4, 0x4
    bdnz+      branch_0x80342314
branch_0x80342320:
    lwz     r3, 0x0(r28)
    mr      r4, r24
    mr      r5, r23
    addis   r20, r3, 0x8000
    mr      r3, r20
    bl      memcpy
    mr      r3, r20
    mr      r4, r23
    bl      DCFlushRangeNoSync
    sync
    mr      r3, r20
    mr      r4, r23
    bl      ICInvalidateRange
branch_0x80342354:
    addi    r28, r28, 0x4
    addi    r26, r26, 0x1
branch_0x8034235c:
    clrlwi  r0, r26, 24
    cmplwi  r0, 0xf
    blt+    branch_0x80342218
    lis     r3, unk_80003000@h
    addi    r0, r3, unk_80003000@l
    stw     r0, R13Off_m0x5a5c(r13)
    li      r20, 0x0
    b       branch_0x8034237c

branch_0x8034237c:
    lis     r3, OSDefaultExceptionHandler@h
    addi    r23, r3, OSDefaultExceptionHandler@l
    b       branch_0x80342388

branch_0x80342388:
    b       branch_0x8034239c

branch_0x8034238c:
    mr      r3, r20
    mr      r4, r23
    bl      __OSSetExceptionHandler
    addi    r20, r20, 0x1
branch_0x8034239c:
    clrlwi  r0, r20, 24
    cmplwi  r0, 0xf
    blt+    branch_0x8034238c
    stw     r25, 0x0(r30)
    addi    r3, r29, 0x1a0
    crxor   6, 6, 6
    bl      DBPrintf
    lmw     r20, 0x8(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __OSDBIntegrator
__OSDBIntegrator: # 0x803423cc
    li      r5, 0x40
    mflr    r3
    stw     r3, 0xc(r5)
    lwz     r3, 0x8(r5)
    oris    r3, r3, 0x8000
    mtlr    r3
    li      r3, 0x30
    mtmsr   r3
    blr


.globl __OSDBJump
__OSDBJump: # 0x803423f0
    bla     0x60

.globl __OSSetExceptionHandler
__OSSetExceptionHandler: # 0x803423f4
    clrlwi  r0, r3, 24
    lwz     r3, R13Off_m0x5a5c(r13)
    slwi    r0, r0, 2
    add     r5, r3, r0
    lwz     r3, 0x0(r5)
    stw     r4, 0x0(r5)
    blr


.globl __OSGetExceptionHandler
__OSGetExceptionHandler: # 0x80342410
    clrlwi  r0, r3, 24
    lwz     r3, R13Off_m0x5a5c(r13)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    blr


.globl OSExceptionVector
OSExceptionVector: # 0x80342424
    mtspr   272, r4
    lwz     r4, 0xc0(r0)
    stw     r3, 0xc(r4)
    mfspr   r3, 272
    stw     r3, 0x10(r4)
    stw     r5, 0x14(r4)
    lhz     r3, 0x1a2(r4)
    ori     r3, r3, 0x2
    sth     r3, 0x1a2(r4)
    mfcr    r3
    stw     r3, 0x80(r4)
    mflr    r3
    stw     r3, 0x84(r4)
    mfctr   r3
    stw     r3, 0x88(r4)
    mfxer   r3
    stw     r3, 0x8c(r4)
    mfspr   r3, 26
    stw     r3, 0x198(r4)
    mfspr   r3, 27
    stw     r3, 0x19c(r4)
    mr      r5, r3
    ori     r0, r0, 0x0
    mfmsr   r3
    ori     r3, r3, 0x30
    mtspr   27, r3
    li      r3, 0x0
    lwz     r4, 0xd4(r0)
    rlwinm. r5, r5, 0, 30, 30
    bne-    branch_0x803424ac
    lis     r5, OSDefaultExceptionHandler@h
    addi    r5, r5, OSDefaultExceptionHandler@l
    mtspr   26, r5
    rfi

branch_0x803424ac:
    clrlslwi  r5, r3, 24, 2
    lwz     r5, 0x3000(r5)
    mtspr   26, r5
    rfi

branch_0x803424bc:
    ori     r0, r0, 0x0

.globl OSDefaultExceptionHandler
OSDefaultExceptionHandler: # 0x803424c0
    stw     r0, 0x0(r4)
    stw     sp, 0x4(r4)
    stw     r2, 0x8(r4)
    stmw    r6, 0x18(r4)
    mfspr   r0, 913
    stw     r0, 0x1a8(r4)
    mfspr   r0, 914
    stw     r0, 0x1ac(r4)
    mfspr   r0, 915
    stw     r0, 0x1b0(r4)
    mfspr   r0, 916
    stw     r0, 0x1b4(r4)
    mfspr   r0, 917
    stw     r0, 0x1b8(r4)
    mfspr   r0, 918
    stw     r0, 0x1bc(r4)
    mfspr   r0, 919
    stw     r0, 0x1c0(r4)
    mfspr   r5, 18
    mfspr   r6, 19
    stwu    sp, -0x8(sp)
    b       __OSUnhandledException


.globl __OSPSInit
__OSPSInit: # 0x80342518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      PPCMfhid2
    oris    r3, r3, 0xa000
    bl      PPCMthid2
    bl      ICFlashInvalidate
    sync
    li      r3, 0x0
    mtspr   912, r3
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __OSGetDIConfig
__OSGetDIConfig: # 0x80342550
    lis     r3, unk_cc006000@h
    addi    r3, r3, unk_cc006000@l
    lwz     r0, 0x24(r3)
    clrlwi  r3, r0, 24
    blr

