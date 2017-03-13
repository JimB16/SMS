
.globl checkMonoSound__Q214MSoundSESystem8MSoundSEFUlP8JAIActor
checkMonoSound__Q214MSoundSESystem8MSoundSEFUlP8JAIActor: # 0x80017ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x0
    lwz     r5, -0x5d90(r13)
    lwz     r3, 0x0(r5)
    addi    r5, sp, 0x2c
    bl      getInfoPointer__7JAIDataFUlPPv
    lwz     r3, 0x2c(sp)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80017e94
    lwz     r3, -0x5d90(r13)
    mr      r4, r30
    bl      changeIDToCategory__8JAIBasicFUl
    lwz     r6, -0x5d90(r13)
    clrlwi  r0, r3, 24
    mulli   r0, r0, 0xc
    lwz     r3, 0x0(r6)
    lwz     r3, 0x1e8(r3)
    add     r3, r3, r0
    lwz     r4, 0x4(r3)
    b       branch_0x80017e8c

branch_0x80017e48:
    lwz     r3, 0x20(r4)
    lwz     r0, 0x0(r31)
    lwz     r5, 0x30(r4)
    cmplw   r3, r0
    lwz     r3, 0x3c(r4)
    bne-    branch_0x80017e88
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80017e88
    lwz     r0, 0x8(r4)
    cmplw   r30, r0
    beq-    branch_0x80017e88
    addi    r3, r6, 0x0
    li      r5, 0x0
    bl      stopSoundHandle__8JAIBasicFP8JAISoundUl
    b       branch_0x80017e94

branch_0x80017e88:
    mr      r4, r5
branch_0x80017e8c:
    cmplwi  r4, 0x0
    bne+    branch_0x80017e48
branch_0x80017e94:
    lwz     r0, 0x3c(sp)
    li      r3, 0x1
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
startSoundNpcActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc: # 0x80017eb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    addi    r31, r8, 0x0
    stw     r30, 0x80(sp)
    mr      r30, r7
    stw     r29, 0x7c(sp)
    mr      r29, r6
    stw     r28, 0x78(sp)
    mr      r28, r3
    stw     r4, 0x64(sp)
    lwz     r3, -0x5d90(r13)
    stw     r4, 0x68(sp)
    stw     r4, 0x6c(sp)
    addi    r4, r28, 0x0
    stw     r5, 0x70(sp)
    addi    r5, sp, 0x58
    lwz     r3, 0x0(r3)
    bl      getInfoPointer__7JAIDataFUlPPv
    lwz     r3, 0x58(sp)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80017f88
    lwz     r3, -0x5d90(r13)
    mr      r4, r28
    bl      changeIDToCategory__8JAIBasicFUl
    lwz     r7, -0x5d90(r13)
    clrlwi  r0, r3, 24
    mulli   r0, r0, 0xc
    lwz     r6, 0x64(sp)
    lwz     r3, 0x0(r7)
    lwz     r3, 0x1e8(r3)
    add     r3, r3, r0
    lwz     r4, 0x4(r3)
    b       branch_0x80017f80

branch_0x80017f40:
    lwz     r0, 0x20(r4)
    lwz     r5, 0x30(r4)
    cmplw   r0, r6
    lwz     r3, 0x3c(r4)
    bne-    branch_0x80017f7c
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80017f7c
    lwz     r0, 0x8(r4)
    cmplw   r28, r0
    beq-    branch_0x80017f7c
    addi    r3, r7, 0x0
    li      r5, 0x0
    bl      stopSoundHandle__8JAIBasicFP8JAISoundUl
    b       branch_0x80017f88

branch_0x80017f7c:
    mr      r4, r5
branch_0x80017f80:
    cmplwi  r4, 0x0
    bne+    branch_0x80017f40
branch_0x80017f88:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    addi    r5, sp, 0x64
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl getNewIDBySurfaceCode__Q214MSoundSESystem8MSoundSEFUlP8JAIActor
getNewIDBySurfaceCode__Q214MSoundSESystem8MSoundSEFUlP8JAIActor: # 0x80017fc0
    lwz     r0, 0xc(r4)
    rlwinm. r5, r0, 0, 20, 23
    beqlr-    

    subi    r0, r3, 0x1820
    cmplwi  r0, 0x6
    bgtlr-    

    lis     r4, 0x803b
    subi    r4, r4, 0x39e4
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80017FF0:		# jumptable 80017FEC case 0
    cmpwi   r5, 0x400
    beq-    branch_0x80018058
    bge-    branch_0x80018020
    cmpwi   r5, 0x200
    beq-    branch_0x80018048
    bge-    branch_0x80018014
    cmpwi   r5, 0x100
    beq-    branch_0x80018040
    blr

branch_0x80018014:
    cmpwi   r5, 0x300
    beq-    branch_0x80018050
    blr

branch_0x80018020:
    cmpwi   r5, 0x600
    beq-    branch_0x80018058
    bge-    branch_0x80018038
    cmpwi   r5, 0x500
    beq-    branch_0x80018050
    blr

branch_0x80018038:
    cmpwi   r5, 0x700
    bnelr-    

branch_0x80018040:
    li      r3, 0x1924
    blr

branch_0x80018048:
    li      r3, 0x1928
    blr

branch_0x80018050:
    li      r3, 0x192c
    blr

branch_0x80018058:
    li      r3, 0x1930
    blr

branch_0x80018060:		# jumptable 80017FEC case 4
cmpwi	  r5, 0x400
beq	  branch_0x800180C8
bge	  branch_0x80018090
cmpwi	  r5, 0x200
beq	  branch_0x800180B8
bge	  branch_0x80018084
cmpwi	  r5, 0x100
beq	  branch_0x800180B0
blr

branch_0x80018084:
cmpwi	  r5, 0x300
beq	  branch_0x800180C0
blr

branch_0x80018090:
cmpwi	  r5, 0x600
beq	  branch_0x800180C8
bge	  branch_0x800180A8
cmpwi	  r5, 0x500
beq	  branch_0x800180C0
blr

branch_0x800180A8:
cmpwi	  r5, 0x700
bnelr

branch_0x800180B0:
li	  r3, 0x1926
blr

branch_0x800180B8:
li	  r3, 0x192A
blr

branch_0x800180C0:
li	  r3, 0x192E
blr

branch_0x800180C8:
li	  r3, 0x1932
blr

branch_0x800180D0:		# jumptable 80017FEC cases 2,6
li	  r3, -1

locret_800180D4:	# jumptable 80017FEC cases 1,3,5
blr


.globl startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc: # 0x800180d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    bl      getBstSwitch__6MSoundFUl
    addis   r0, r28, 0x1
    cmplwi  r0, 0xffff
    addi    r31, r3, 0x0
    beq-    branch_0x800183b4
    lwz     r3, -0x7164(r13)
    lbz     r3, 0xd1(r3)
    cmpwi   r3, 0x8
    beq-    branch_0x800181c0
    bge-    branch_0x8001829c
    cmpwi   r3, 0x7
    bge-    branch_0x80018130
    b       branch_0x8001829c

branch_0x80018130:
    lwz     r4, 0x4(r28)
    bl      checkSoundArea__Q214MSoundSESystem8MSoundSEFUlRC3Vec
    clrlwi. r0, r3, 24
    bne-    branch_0x8001829c
    srwi.   r3, r26, 30
    extrwi  r4, r26, 4, 16
    bne-    branch_0x80018154
    mr      r0, r4
    b       branch_0x80018178

branch_0x80018154:
    cmplwi  r3, 0x2
    bne-    branch_0x80018164
    li      r0, 0x10
    b       branch_0x80018178

branch_0x80018164:
    cmplwi  r3, 0x3
    bne-    branch_0x80018174
    li      r0, 0x11
    b       branch_0x80018178

branch_0x80018174:
    li      r0, -0x1
branch_0x80018178:
    cmplwi  r0, 0x1
    beq-    branch_0x8001829c
    cmplwi  r3, 0x0
    bne-    branch_0x8001818c
    b       branch_0x800181b0

branch_0x8001818c:
    cmplwi  r3, 0x2
    bne-    branch_0x8001819c
    li      r4, 0x10
    b       branch_0x800181b0

branch_0x8001819c:
    cmplwi  r3, 0x3
    bne-    branch_0x800181ac
    li      r4, 0x11
    b       branch_0x800181b0

branch_0x800181ac:
    li      r4, -0x1
branch_0x800181b0:
    cmplwi  r4, 0x0
    beq-    branch_0x8001829c
    li      r3, 0x0
    b       branch_0x80018484

branch_0x800181c0:
    lwz     r4, 0x4(r28)
    bl      checkSoundArea__Q214MSoundSESystem8MSoundSEFUlRC3Vec
    clrlwi. r0, r3, 24
    bne-    branch_0x80018250
    srwi.   r3, r26, 30
    extrwi  r4, r26, 4, 16
    bne-    branch_0x800181e4
    mr      r0, r4
    b       branch_0x80018208

branch_0x800181e4:
    cmplwi  r3, 0x2
    bne-    branch_0x800181f4
    li      r0, 0x10
    b       branch_0x80018208

branch_0x800181f4:
    cmplwi  r3, 0x3
    bne-    branch_0x80018204
    li      r0, 0x11
    b       branch_0x80018208

branch_0x80018204:
    li      r0, -0x1
branch_0x80018208:
    cmplwi  r0, 0x1
    beq-    branch_0x80018250
    cmplwi  r3, 0x0
    bne-    branch_0x8001821c
    b       branch_0x80018240

branch_0x8001821c:
    cmplwi  r3, 0x2
    bne-    branch_0x8001822c
    li      r4, 0x10
    b       branch_0x80018240

branch_0x8001822c:
    cmplwi  r3, 0x3
    bne-    branch_0x8001823c
    li      r4, 0x11
    b       branch_0x80018240

branch_0x8001823c:
    li      r4, -0x1
branch_0x80018240:
    cmplwi  r4, 0x0
    beq-    branch_0x80018250
    li      r3, 0x0
    b       branch_0x80018484

branch_0x80018250:
    cmpwi   r26, 0x3824
    beq-    branch_0x80018280
    bge-    branch_0x80018274
    cmpwi   r26, 0x193b
    beq-    branch_0x80018298
    bge-    branch_0x8001829c
    cmpwi   r26, 0x193a
    bge-    branch_0x80018290
    b       branch_0x8001829c

branch_0x80018274:
    cmpwi   r26, 0x3826
    bge-    branch_0x8001829c
    b       branch_0x80018288

branch_0x80018280:
    li      r26, 0x38ad
    b       branch_0x8001829c

branch_0x80018288:
    li      r26, 0x38af
    b       branch_0x8001829c

branch_0x80018290:
    li      r26, 0x38ab
    b       branch_0x8001829c

branch_0x80018298:
    li      r26, 0x38ac
branch_0x8001829c:
    rlwinm. r0, r31, 0, 20, 20
    beq-    branch_0x800183b4
    lwz     r0, 0xc(r28)
    rlwinm. r25, r0, 0, 3, 3
    beq-    branch_0x80018300
    cmpwi   r26, 0x1824
    beq-    branch_0x800182e4
    bge-    branch_0x80018300
    cmpwi   r26, 0x1820
    beq-    branch_0x800182c8
    b       branch_0x80018300

branch_0x800182c8:
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    li      r3, 0x1942
    li      r4, 0x0
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    b       branch_0x80018300

branch_0x800182e4:
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    li      r3, 0x1943
    li      r4, 0x0
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    b       branch_0x80018484

branch_0x80018300:
    addi    r3, r26, 0x0
    addi    r4, r28, 0x0
    bl      getNewIDBySurfaceCode__Q214MSoundSESystem8MSoundSEFUlP8JAIActor
    addi    r26, r3, 0x0
    addis   r0, r26, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80018324
    li      r3, 0x0
    b       branch_0x80018484

branch_0x80018324:
    lwz     r5, 0xc(r28)
    rlwinm. r0, r5, 0, 20, 23
    beq-    branch_0x80018338
    mr      r4, r26
    b       branch_0x80018368

branch_0x80018338:
    subi    r0, r26, 0x1820
    cmplwi  r0, 0x6
    addi    r4, r26, 0x0
    bgt-    branch_0x80018368
    lis     r3, 0x803b
    subi    r3, r3, 0x3974
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80018360:		# jumptable 8001835C cases 0,2,4,6
    clrlslwi  r0, r5, 24, 3
    add     r4, r4, r0

def_8001835C:		# jumptable 8001835C default case
branch_0x80018368:
    addi    r26, r4, 0x0
    addis   r0, r26, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80018380
    li      r3, 0x0
    b       branch_0x80018484

branch_0x80018380:
    cmplwi  r25, 0x0
    beq-    branch_0x800183b4
    subi    r0, r4, 0x1820
    cmplwi  r0, 0x14
    bgt-    branch_0x800183b4
    lis     r3, 0x803b
    subi    r3, r3, 0x39c8
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x800183AC:		# jumptable 800183A8 cases 0,4,8,12,16,20
    li      r3, 0x0
    b       branch_0x80018484

def_800183A8:		# jumptable 800183A8 default case
branch_0x800183b4:
    clrrwi. r0, r31, 31
    beq-    branch_0x800183c8
    mr      r3, r26
    bl      getRandomID__Q214MSoundSESystem8MSoundSEFUl
    mr      r26, r3
branch_0x800183c8:
    lwz     r3, -0x7164(r13)
    lbz     r0, 0xd1(r3)
    cmplwi  r0, 0x8
    bne-    branch_0x800183ec
    cmplwi  r26, 0x1878
    blt-    branch_0x800183ec
    cmplwi  r26, 0x187f
    bgt-    branch_0x800183ec
    subi    r26, r26, 0x8
branch_0x800183ec:
    addis   r0, r28, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x80018440
    cmplwi  r27, 0x0
    beq-    branch_0x80018424
    lwz     r3, -0x7160(r13)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r7, r29, 0x0
    li      r6, 0x0
    li      r8, 0x4
    bl      startSoundDirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
    lwz     r3, 0x0(r27)
    b       branch_0x80018484

branch_0x80018424:
    lwz     r3, -0x7160(r13)
    addi    r4, r26, 0x0
    addi    r6, r29, 0x0
    li      r5, 0x0
    li      r7, 0x4
    bl      startSoundActorReturnHandle__8JAIBasicFUlP8JAIActorUlUc
    b       branch_0x80018484

branch_0x80018440:
    cmplwi  r27, 0x0
    beq-    branch_0x8001846c
    lwz     r3, -0x7160(r13)
    addi    r4, r26, 0x0
    addi    r5, r27, 0x0
    addi    r6, r28, 0x0
    addi    r7, r29, 0x0
    addi    r8, r30, 0x0
    bl      startSoundActor__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
    lwz     r3, 0x0(r27)
    b       branch_0x80018484

branch_0x8001846c:
    lwz     r3, -0x7160(r13)
    addi    r4, r26, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    bl      startSoundActorReturnHandle__8JAIBasicFUlP8JAIActorUlUc
branch_0x80018484:
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl checkSoundArea__Q214MSoundSESystem8MSoundSEFUlRC3Vec
checkSoundArea__Q214MSoundSESystem8MSoundSEFUlRC3Vec: # 0x80018498
    mflr    r0
    cmpwi   r3, 0x8
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    addi    r30, r4, 0x0
    beq-    branch_0x80018598
    bge-    branch_0x800185d8
    cmpwi   r3, 0x7
    bge-    branch_0x800184cc
    b       branch_0x800185d8

branch_0x800184cc:
    lwz     r3, -0x7164(r13)
    addi    r4, sp, 0x44
    lfs     f0, -0x7c88(rtoc)
    lwz     r6, 0xb0(r3)
    lwz     r3, -0x70f0(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x30(sp)
    lfs     f1, 0x2c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    lwz     r0, 0x28(sp)
    lwz     r5, 0x2c(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x30(sp)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    lwz     r5, 0x0(r30)
    mr      r31, r3
    lwz     r0, 0x4(r30)
    addi    r4, sp, 0x38
    lfs     f0, -0x7c88(rtoc)
    stw     r5, 0x18(sp)
    lwz     r3, -0x70f0(r13)
    stw     r0, 0x1c(sp)
    lwz     r0, 0x8(r30)
    stw     r0, 0x20(sp)
    lfs     f1, 0x1c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lwz     r0, 0x18(sp)
    lwz     r5, 0x1c(sp)
    stw     r0, 0x38(sp)
    lwz     r0, 0x20(sp)
    stw     r5, 0x3c(sp)
    stw     r0, 0x40(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x80018590
    cmpw    r3, r31
    bne-    branch_0x80018588
    li      r0, 0x1
    b       branch_0x800185d8

branch_0x80018588:
    li      r0, 0x0
    b       branch_0x800185d8

branch_0x80018590:
    li      r0, 0x1
    b       branch_0x800185d8

branch_0x80018598:
    bl      SMS_GetMonteVillageAreaInMario__Fv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    bl      getMonteVillageActorArea__10MSMainProcFRC3Vec
    cmpwi   r31, 0x1
    bne-    branch_0x800185b4
    li      r31, 0x3
branch_0x800185b4:
    cmpwi   r31, 0x3
    bne-    branch_0x800185c4
    li      r0, 0x1
    b       branch_0x800185d8

branch_0x800185c4:
    cmpw    r31, r3
    bne-    branch_0x800185d4
    li      r0, 0x1
    b       branch_0x800185d8

branch_0x800185d4:
    li      r0, 0x0
branch_0x800185d8:
    mr      r3, r0
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc: # 0x800185f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stfd    f30, 0x78(sp)
    fmr     f30, f1
    stmw    r26, 0x60(sp)
    addi    r26, r3, 0x0
    cmpwi   r26, 0x305b
    fmr     f31, f30
    addi    r27, r4, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    addi    r31, r10, 0x0
    beq-    branch_0x800186ac
    bge-    branch_0x8001865c
    cmpwi   r26, 0x2052
    beq-    branch_0x8001868c
    bge-    branch_0x80018650
    cmpwi   r26, 0x1818
    beq-    branch_0x800186f0
    b       branch_0x80018704

branch_0x80018650:
    cmpwi   r26, 0x3048
    beq-    branch_0x80018848
    b       branch_0x80018704

branch_0x8001865c:
    cmpwi   r26, 0x3821
    bge-    branch_0x8001867c
    cmpwi   r26, 0x3804
    beq-    branch_0x800186b4
    blt-    branch_0x80018704
    cmpwi   r26, 0x381c
    bge-    branch_0x80018694
    b       branch_0x80018704

branch_0x8001867c:
    cmpwi   r26, 0x3862
    beq-    branch_0x800186b4
    b       branch_0x80018704
    b       branch_0x80018848

branch_0x8001868c:
    lfs     f30, 0x4(r27)
    b       branch_0x80018704

branch_0x80018694:
    stfs    f30, 0x4c(sp)
    lwz     r0, 0x4c(sp)
    clrlwi  r0, r0, 1
    stw     r0, 0x4c(sp)
    lfs     f30, 0x4c(sp)
    b       branch_0x80018704

branch_0x800186ac:
    lfs     f30, 0x4(r27)
    b       branch_0x80018704

branch_0x800186b4:
    lfs     f1, 0x0(r5)
    lfs     f0, 0x4(r5)
    fmuls   f1, f1, f1
    lfs     f2, 0x8(r5)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrtf__3stdFf
    stfs    f1, 0x48(sp)
    lwz     r0, 0x48(sp)
    clrlwi  r0, r0, 1
    stw     r0, 0x48(sp)
    lfs     f30, 0x48(sp)
    b       branch_0x80018704

branch_0x800186f0:
    cmplwi  r6, 0x4
    bge-    branch_0x80018700
    add     r26, r26, r6
    b       branch_0x80018704

branch_0x80018700:
    addi    r26, r26, 0x4
branch_0x80018704:
    mr      r3, r26
    fmr     f1, f30
    bl      gateCheckFunc__9JALSystemFUlf
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    beq-    branch_0x80018848
    stw     r27, 0x50(sp)
    addi    r3, r26, 0x0
    addi    r4, r29, 0x0
    stw     r27, 0x54(sp)
    addi    r6, r30, 0x0
    addi    r7, r31, 0x0
    stw     r27, 0x58(sp)
    addi    r5, sp, 0x50
    stw     r28, 0x5c(sp)
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    mr.     r31, r3
    beq-    branch_0x80018848
    cmpwi   r26, 0x305b
    beq-    branch_0x800187fc
    bge-    branch_0x80018828
    cmpwi   r26, 0x2007
    beq-    branch_0x80018764
    b       branch_0x80018828

branch_0x80018764:
    lwz     r4, 0x14(r31)
    subi    r3, r13, 0x7154
    lfs     f1, 0x4(r3)
    li      r5, 0x0
    cmplwi  r4, 0x0
    ble-    branch_0x800187e4
    cmplwi  r4, 0x8
    subi    r3, r4, 0x8
    ble-    branch_0x80018840
    addi    r0, r3, 0x7
    lfs     f0, -0x7154(r13)
    srwi    r0, r0, 3
    cmplwi  r3, 0x0
    mtctr   r0
    ble-    branch_0x80018840
branch_0x800187a0:
    fmuls   f1, f1, f0
    addi    r5, r5, 0x8
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    fmuls   f1, f1, f0
    bdnz+      branch_0x800187a0
    b       branch_0x80018840

branch_0x800187cc:
    subf    r0, r5, r4
    cmplw   r5, r4
    mtctr   r0
    bge-    branch_0x800187e4
branch_0x800187dc:
    fmuls   f1, f1, f0
    bdnz+      branch_0x800187dc
branch_0x800187e4:
    lfs     f2, -0x7c84(rtoc)
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setSeInterPitch__8JAISoundFUcfUlf
    b       branch_0x80018828

branch_0x800187fc:
    lfs     f2, -0x7c84(rtoc)
    fmr     f1, f31
    lfs     f3, -0x7c80(rtoc)
    li      r3, 0x1
    fmr     f4, f2
    lfs     f5, -0x7c7c(rtoc)
    bl      linearTransform__7JALCalcFfffffb
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x80018828:
    fmr     f1, f30
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      processModFunc__9JALSystemFP8JAISoundfUlUc
    b       branch_0x80018848

branch_0x80018840:
    lfs     f0, -0x7154(r13)
    b       branch_0x800187cc

branch_0x80018848:
    lmw     r26, 0x60(sp)
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl: # 0x80018864
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    cmpwi   r29, 0x481e
    beq-    branch_0x80018894
    b       branch_0x800188e8

branch_0x80018894:
    subi    r30, r30, 0x1
    cmpwi   r30, 0x3
    beq-    branch_0x800188d4
    bge-    branch_0x800188b4
    cmpwi   r30, 0x1
    beq-    branch_0x800188c4
    bge-    branch_0x800188cc
    b       branch_0x800188e8

branch_0x800188b4:
    cmpwi   r30, 0x5
    beq-    branch_0x800188e4
    bge-    branch_0x800188e8
    b       branch_0x800188dc

branch_0x800188c4:
    li      r3, 0x482e
    b       branch_0x800188e8

branch_0x800188cc:
    li      r3, 0x482f
    b       branch_0x800188e8

branch_0x800188d4:
    li      r3, 0x4830
    b       branch_0x800188e8

branch_0x800188dc:
    li      r3, 0x4831
    b       branch_0x800188e8

branch_0x800188e4:
    li      r3, 0x4832
branch_0x800188e8:
    addi    r4, r5, 0x0
    li      r5, -0x1
    li      r7, 0x4
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    mr.     r31, r3
    bne-    branch_0x80018908
    li      r3, 0x0
    b       branch_0x800189b4

branch_0x80018908:
    cmpwi   r29, 0x481e
    beq-    branch_0x80018914
    b       branch_0x800189b0

branch_0x80018914:
    lfs     f1, -0x7c78(rtoc)
    cmpwi   r30, 0x3
    fmr     f31, f1
    beq-    branch_0x80018970
    bge-    branch_0x80018940
    cmpwi   r30, 0x1
    beq-    branch_0x8001895c
    bge-    branch_0x80018964
    cmpwi   r30, 0x0
    bge-    branch_0x80018950
    b       branch_0x8001898c

branch_0x80018940:
    cmpwi   r30, 0x5
    beq-    branch_0x80018984
    bge-    branch_0x8001898c
    b       branch_0x8001897c

branch_0x80018950:
    lfs     f1, -0x7c74(rtoc)
    fmr     f31, f1
    b       branch_0x8001898c

branch_0x8001895c:
    lfs     f31, -0x7c84(rtoc)
    b       branch_0x8001898c

branch_0x80018964:
    lfs     f1, -0x7c70(rtoc)
    lfs     f31, -0x7c74(rtoc)
    b       branch_0x8001898c

branch_0x80018970:
    lfs     f1, -0x7c74(rtoc)
    lfs     f31, -0x7c70(rtoc)
    b       branch_0x8001898c

branch_0x8001897c:
    lfs     f31, -0x7c7c(rtoc)
    b       branch_0x8001898c

branch_0x80018984:
    lfs     f1, -0x7c70(rtoc)
    fmr     f31, f1
branch_0x8001898c:
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setPan__8JAISoundFfUlUc
    fmr     f1, f31
    addi    r3, r31, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setDolby__8JAISoundFfUlUc
branch_0x800189b0:
    mr      r3, r31
branch_0x800189b4:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x30
    blr


.globl startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc: # 0x800189d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r4, 0x20(sp)
    stw     r4, 0x24(sp)
    stw     r4, 0x28(sp)
    mr      r4, r6
    addi    r6, r7, 0x0
    stw     r5, 0x2c(sp)
    addi    r7, r8, 0x0
    addi    r5, sp, 0x20
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getRandomID__Q214MSoundSESystem8MSoundSEFUl
getRandomID__Q214MSoundSESystem8MSoundSEFUl: # 0x80018a14
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm  r0, r3, 8, 24, 25
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stmw    r26, 0x98(sp)
    addi    r30, r3, 0x0
    rlwimi  r0, r30, 21, 31, 31
    clrlwi  r27, r0, 24
    addi    r28, sp, 0x18
    li      r31, 0x0
    li      r29, 0x0
branch_0x80018a44:
    add     r26, r30, r31
    addi    r3, r26, 0x0
    bl      getBstSwitch__6MSoundFUl
    rlwinm  r0, r26, 8, 24, 25
    rlwimi  r0, r26, 21, 31, 31
    clrlwi  r0, r0, 24
    cmplw   r27, r0
    bne-    branch_0x80018aa0
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x80018aa0
    cmplwi  r31, 0x0
    beq-    branch_0x80018a80
    clrrwi. r0, r3, 31
    bne-    branch_0x80018aa0
branch_0x80018a80:
    rlwinm. r0, r3, 0, 1, 3
    beq-    branch_0x80018aa0
    addi    r31, r31, 0x1
    srwi    r0, r0, 28
    stwx    r0, r28, r29
    cmplwi  r31, 0xf
    addi    r29, r29, 0x4
    blt+    branch_0x80018a44
branch_0x80018aa0:
    cmplwi  r31, 0x1
    bgt-    branch_0x80018ab0
    mr      r3, r30
    b       branch_0x80018c68

branch_0x80018ab0:
    cmplwi  r31, 0x0
    lfs     f31, -0x7c84(rtoc)
    li      r8, 0x0
    li      r3, 0x0
    ble-    branch_0x80018c00
    cmplwi  r31, 0x8
    subi    r4, r31, 0x8
    ble-    branch_0x80018bc0
    addi    r0, r4, 0x7
    lfd     f2, -0x7c68(rtoc)
    srwi    r0, r0, 3
    cmplwi  r4, 0x0
    mtctr   r0
    lis     r6, 0x4330
    ble-    branch_0x80018bc0
branch_0x80018aec:
    addi    r7, sp, 0x18
    add     r7, r7, r3
    lwz     r4, 0x0(r7)
    addi    r8, r8, 0x8
    lwz     r0, 0x4(r7)
    addi    r3, r3, 0x20
    stw     r4, 0x94(sp)
    lwz     r5, 0x8(r7)
    stw     r6, 0x90(sp)
    lwz     r4, 0xc(r7)
    stw     r0, 0x8c(sp)
    lfd     f0, 0x90(sp)
    stw     r5, 0x84(sp)
    fsubs   f1, f0, f2
    lwz     r0, 0x10(r7)
    stw     r6, 0x88(sp)
    lwz     r5, 0x14(r7)
    stw     r4, 0x7c(sp)
    lfd     f0, 0x88(sp)
    fadds   f31, f31, f1
    stw     r0, 0x74(sp)
    fsubs   f1, f0, f2
    lwz     r4, 0x18(r7)
    stw     r6, 0x80(sp)
    lwz     r0, 0x1c(r7)
    stw     r5, 0x6c(sp)
    lfd     f0, 0x80(sp)
    fadds   f31, f31, f1
    stw     r4, 0x64(sp)
    fsubs   f1, f0, f2
    stw     r6, 0x78(sp)
    stw     r0, 0x5c(sp)
    fadds   f31, f31, f1
    lfd     f0, 0x78(sp)
    stw     r6, 0x70(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x70(sp)
    stw     r6, 0x68(sp)
    fadds   f31, f31, f1
    fsubs   f1, f0, f2
    lfd     f0, 0x68(sp)
    stw     r6, 0x60(sp)
    fadds   f31, f31, f1
    stw     r6, 0x58(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0x60(sp)
    fadds   f31, f31, f1
    fsubs   f1, f0, f2
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f2
    fadds   f31, f31, f1
    fadds   f31, f31, f0
    bdnz+      branch_0x80018aec
branch_0x80018bc0:
    subf    r0, r8, r31
    lfd     f1, -0x7c68(rtoc)
    cmplw   r8, r31
    mtctr   r0
    addi    r5, sp, 0x18
    slwi    r3, r8, 2
    lis     r0, 0x4330
    bge-    branch_0x80018c00
branch_0x80018be0:
    lwzx    r4, r5, r3
    addi    r3, r3, 0x4
    stw     r4, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fadds   f31, f31, f0
    bdnz+      branch_0x80018be0
branch_0x80018c00:
    bl      getRandom_0_1__7JALCalcFv
    cmplwi  r31, 0x0
    fmuls   f2, f31, f1
    mtctr   r31
    lfs     f3, -0x7c84(rtoc)
    lfd     f1, -0x7c68(rtoc)
    addi    r5, sp, 0x18
    li      r6, 0x0
    li      r7, 0x0
    li      r3, 0x0
    lis     r0, 0x4330
    ble-    branch_0x80018c64
branch_0x80018c30:
    lwzx    r4, r5, r3
    stw     r4, 0x5c(sp)
    stw     r0, 0x58(sp)
    lfd     f0, 0x58(sp)
    fsubs   f0, f0, f1
    fadds   f3, f3, f0
    fcmpo   cr0, f2, f3
    bge-    branch_0x80018c58
    mr      r6, r7
    b       branch_0x80018c64

branch_0x80018c58:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x4
    bdnz+      branch_0x80018c30
branch_0x80018c64:
    add     r3, r30, r6
branch_0x80018c68:
    lmw     r26, 0x98(sp)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl construct__Q214MSoundSESystem8MSoundSEFv
construct__Q214MSoundSESystem8MSoundSEFv: # 0x80018c80
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    lis     r3, 0x803f
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r4, 0x3f08
    stw     r30, 0x98(sp)
    subi    r30, r3, 0x5550
    li      r3, 0x1
    stw     r29, 0x94(sp)
    bl      __nw__FUl
    stw     r3, -0x7158(r13)
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018cd0
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      __ct__Q214MSoundSESystem9MSRandVolFUl
branch_0x80018cd0:
    addi    r4, r29, 0x4
    addi    r3, r30, 0xc
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018d08
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x3813
    li      r5, 0x1e
    li      r6, 0xf0
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018d08:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018d40
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x7865
    li      r5, 0x3
    li      r6, 0x14
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018d40:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018d78
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x7094
    li      r5, 0x3
    li      r6, 0x14
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018d78:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018db0
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x1950
    li      r5, 0x5
    li      r6, 0x3c
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018db0:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018de8
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x3869
    li      r5, 0x66
    li      r6, 0x181
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018de8:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018e20
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x386d
    li      r5, 0x66
    li      r6, 0x181
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018e20:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018e58
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x5814
    li      r5, 0x66
    li      r6, 0x181
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018e58:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018e90
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x581b
    li      r5, 0x66
    li      r6, 0x181
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018e90:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018ec8
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x5820
    li      r5, 0x66
    li      r6, 0x181
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018ec8:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018f00
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x3870
    li      r5, 0x66
    li      r6, 0x181
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018f00:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018f38
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x5814
    li      r5, 0x2d
    li      r6, 0xad
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018f38:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018f70
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x581b
    li      r5, 0x2d
    li      r6, 0xad
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018f70:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80018fa8
    lfs     f1, -0x74f0(r13)
    mr      r3, r29
    lfs     f2, -0x74ec(r13)
    li      r4, 0x5820
    li      r5, 0x2d
    li      r6, 0xad
    bl      __ct__Q214MSoundSESystem10MSRandPlayFUlllff
branch_0x80018fa8:
    addi    r4, r29, 0x0
    addi    r3, r30, 0x24
    bl      append__10JSUPtrListFP10JSUPtrLink
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x20
    lfs     f2, -0x7c60(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    lfs     f3, -0x7c5c(rtoc)
    li      r5, 0x2052
    lfs     f4, -0x7c78(rtoc)
    li      r6, 0x0
    lfs     f5, -0x7c58(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7c54(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c84(rtoc)
    addi    r4, r31, 0x3c
    lfs     f1, -0x7c50(rtoc)
    li      r3, 0x2
    fmr     f6, f2
    lfs     f3, -0x7c5c(rtoc)
    li      r5, 0x6800
    lfs     f4, -0x7c4c(rtoc)
    li      r6, 0x0
    lfs     f5, -0x7c7c(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7c48(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x58
    lfs     f2, -0x7c44(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    lfs     f3, -0x7c40(rtoc)
    li      r5, 0x3031
    lfs     f4, -0x7c3c(rtoc)
    li      r6, 0x1
    lfs     f5, -0x7c38(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7c34(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x6c
    lfs     f5, -0x7c7c(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    fmr     f7, f5
    lfs     f2, -0x7c30(rtoc)
    lfs     f3, -0x7c5c(rtoc)
    li      r5, 0x3030
    lfs     f4, -0x7c78(rtoc)
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x84
    lfs     f5, -0x7c7c(rtoc)
    li      r3, 0x1
    fmr     f4, f1
    fmr     f6, f1
    lfs     f2, -0x7c44(rtoc)
    fmr     f7, f5
    lfs     f3, -0x7c40(rtoc)
    li      r5, 0x3031
    li      r6, 0x0
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x98
    lfs     f5, -0x7c7c(rtoc)
    li      r3, 0x1
    fmr     f6, f1
    fmr     f7, f5
    lfs     f2, -0x7c30(rtoc)
    lfs     f3, -0x7c5c(rtoc)
    li      r5, 0x3023
    lfs     f4, -0x7c78(rtoc)
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c2c(rtoc)
    addi    r4, r31, 0xb0
    lfs     f2, -0x7c28(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c24(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x3045
    lfs     f5, -0x7c20(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7c80(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c2c(rtoc)
    addi    r4, r31, 0xb0
    lfs     f2, -0x7c28(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c24(rtoc)
    lfs     f4, -0x7c78(rtoc)
    li      r5, 0x3045
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7c80(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0xbc
    lfs     f2, -0x7c1c(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    lfs     f3, -0x7c40(rtoc)
    li      r5, 0x3044
    lfs     f4, -0x7c3c(rtoc)
    li      r6, 0x2
    lfs     f5, -0x7c38(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7c80(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0xbc
    lfs     f2, -0x7c1c(rtoc)
    li      r3, 0x1
    fmr     f6, f1
    lfs     f3, -0x7c40(rtoc)
    li      r5, 0x3044
    lfs     f4, -0x7c18(rtoc)
    li      r6, 0x2
    lfs     f5, -0x7c38(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7c80(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c14(rtoc)
    addi    r4, r31, 0xcc
    lfs     f2, -0x7c74(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c5c(rtoc)
    lfs     f4, -0x7c78(rtoc)
    li      r5, 0x3042
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7c80(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c10(rtoc)
    addi    r4, r31, 0xe4
    lfs     f2, -0x7c0c(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c5c(rtoc)
    lfs     f4, -0x7c08(rtoc)
    li      r5, 0x3040
    lfs     f5, -0x7c04(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7c80(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0xe4
    lfs     f2, -0x7c0c(rtoc)
    li      r3, 0x1
    fmr     f6, f1
    lfs     f3, -0x7c5c(rtoc)
    li      r5, 0x3040
    lfs     f4, -0x7c3c(rtoc)
    li      r6, 0x2
    lfs     f5, -0x7c7c(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7c80(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c7c(rtoc)
    li      r3, 0x2
    lfs     f1, -0x7c14(rtoc)
    subi    r4, rtoc, 0x7c00
    fmr     f5, f2
    lfs     f3, -0x7c5c(rtoc)
    li      r5, 0x0
    lfs     f4, -0x7bf8(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    li      r7, 0x1
    lfs     f7, -0x7c34(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c14(rtoc)
    addi    r4, r31, 0xf8
    lfs     f2, -0x7bf4(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c1c(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x195a
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bf0(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f3, -0x7c7c(rtoc)
    addi    r4, r31, 0x10c
    lfs     f1, -0x7bec(rtoc)
    li      r3, 0x2
    fmr     f4, f3
    lfs     f2, -0x7be8(rtoc)
    li      r5, 0x3866
    lfs     f5, -0x7be4(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7be0(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f3, -0x7c7c(rtoc)
    addi    r4, r31, 0x10c
    lfs     f1, -0x7be8(rtoc)
    li      r3, 0x1
    fmr     f5, f3
    lfs     f2, -0x7bec(rtoc)
    li      r5, 0x3866
    lfs     f4, -0x7bdc(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7be0(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x11c
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x1
    fmr     f6, f1
    fmr     f5, f3
    lfs     f2, -0x7c80(rtoc)
    lfs     f4, -0x7bd8(rtoc)
    li      r5, 0x3060
    lfs     f7, -0x7bf4(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x11c
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    fmr     f5, f3
    lfs     f2, -0x7c80(rtoc)
    lfs     f4, -0x7bd4(rtoc)
    li      r5, 0x3060
    lfs     f7, -0x7bf4(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x138
    lfs     f2, -0x7c80(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    lfs     f3, -0x7c7c(rtoc)
    li      r5, 0x3061
    lfs     f4, -0x7c78(rtoc)
    li      r6, 0x2
    lfs     f5, -0x7bd0(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7bcc(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x144
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x1
    fmr     f4, f1
    fmr     f5, f3
    lfs     f2, -0x7c80(rtoc)
    fmr     f6, f1
    lfs     f7, -0x7bf0(rtoc)
    li      r5, 0x4842
    li      r6, 0x0
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c14(rtoc)
    addi    r4, r31, 0x158
    lfs     f2, -0x7bc8(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c34(rtoc)
    lfs     f4, -0x7bc4(rtoc)
    li      r5, 0x24
    lfs     f5, -0x7bd0(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bf0(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c30(rtoc)
    addi    r4, r31, 0x174
    lfs     f2, -0x7bc0(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c1c(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x3889
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bbc(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c30(rtoc)
    addi    r4, r31, 0x18c
    lfs     f2, -0x7bc0(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c1c(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x388c
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bbc(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c1c(rtoc)
    addi    r4, r31, 0x1a0
    lfs     f1, -0x7c14(rtoc)
    li      r3, 0x1
    fmr     f3, f2
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x308a
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    li      r7, 0x1
    lfs     f7, -0x7bbc(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c1c(rtoc)
    addi    r4, r31, 0x1b4
    lfs     f1, -0x7c14(rtoc)
    li      r3, 0x1
    fmr     f3, f2
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x308b
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    li      r7, 0x1
    lfs     f7, -0x7bbc(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c14(rtoc)
    addi    r4, r31, 0x1a0
    lfs     f2, -0x7c1c(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c7c(rtoc)
    lfs     f4, -0x7bb8(rtoc)
    li      r5, 0x308a
    lfs     f5, -0x7bb4(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bbc(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c14(rtoc)
    addi    r4, r31, 0x1b4
    lfs     f2, -0x7c1c(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c7c(rtoc)
    lfs     f4, -0x7bb8(rtoc)
    li      r5, 0x308b
    lfs     f5, -0x7bb4(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bbc(rtoc)
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c7c(rtoc)
    addi    r4, r31, 0x1c8
    lfs     f3, -0x7c84(rtoc)
    li      r3, 0x1
    fmr     f5, f2
    fmr     f6, f3
    lfs     f1, -0x7bb0(rtoc)
    lfs     f4, -0x7bf8(rtoc)
    li      r5, 0x3849
    lfs     f7, -0x7c1c(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c7c(rtoc)
    addi    r4, r31, 0x1d4
    lfs     f4, -0x7c84(rtoc)
    li      r3, 0x40
    fmr     f5, f1
    fmr     f6, f4
    lfs     f2, -0x7bac(rtoc)
    lfs     f3, -0x7ba8(rtoc)
    li      r5, 0x0
    lfs     f7, -0x7bcc(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    li      r3, 0x40
    li      r4, 0x0
    li      r5, 0x381c
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x0
    li      r5, 0x381d
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x0
    li      r5, 0x381e
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x0
    li      r5, 0x381f
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x0
    li      r5, 0x3820
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    lfs     f1, -0x7c7c(rtoc)
    addi    r4, r31, 0x1e4
    lfs     f4, -0x7c84(rtoc)
    li      r3, 0x40
    fmr     f5, f1
    fmr     f6, f4
    lfs     f2, -0x7ba4(rtoc)
    lfs     f3, -0x7bb4(rtoc)
    li      r5, 0x1
    lfs     f7, -0x7bcc(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    li      r3, 0x40
    li      r4, 0x1
    li      r5, 0x1815
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x1
    li      r5, 0x1816
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x1
    li      r5, 0x1817
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x1
    li      r5, 0x180f
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    lfs     f2, -0x7c84(rtoc)
    addi    r4, r31, 0x204
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x80
    fmr     f6, f2
    fmr     f4, f3
    lfs     f1, -0x7bbc(rtoc)
    lfs     f5, -0x7c58(rtoc)
    li      r5, 0x2
    lfs     f7, -0x7bf0(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    li      r3, 0x80
    li      r4, 0x2
    li      r5, 0x3804
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x80
    li      r4, 0x2
    li      r5, 0x3862
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x228
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x40
    fmr     f4, f1
    fmr     f5, f3
    lfs     f2, -0x7c80(rtoc)
    fmr     f6, f1
    lfs     f7, -0x7bf0(rtoc)
    li      r5, 0x2
    li      r6, 0x0
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    li      r3, 0x40
    li      r4, 0x2
    li      r5, 0x3804
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x2
    li      r5, 0x3862
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x250
    lfs     f2, -0x7bf4(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    lfs     f3, -0x7ba0(rtoc)
    li      r5, 0x305a
    lfs     f4, -0x7c7c(rtoc)
    li      r6, 0x0
    lfs     f5, -0x7b9c(rtoc)
    li      r7, 0x0
    lfs     f7, -0x7bcc(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x268
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x40
    fmr     f4, f1
    fmr     f5, f3
    lfs     f2, -0x7bbc(rtoc)
    fmr     f6, f1
    lfs     f7, -0x7bf0(rtoc)
    li      r5, 0x3
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    li      r3, 0x40
    li      r4, 0x3
    li      r5, 0x3867
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x40
    li      r4, 0x3
    li      r5, 0x3868
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x278
    lfs     f3, -0x7c7c(rtoc)
    li      r3, 0x80
    fmr     f6, f1
    fmr     f5, f3
    lfs     f2, -0x7bbc(rtoc)
    lfs     f4, -0x7bf8(rtoc)
    li      r5, 0x3
    lfs     f7, -0x7bf0(rtoc)
    li      r6, 0x2
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    li      r3, 0x80
    li      r4, 0x3
    li      r5, 0x3867
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    li      r3, 0x80
    li      r4, 0x3
    li      r5, 0x3868
    bl      appendGrpMember__9JALSystemFQ29JALSystem7ModTypeUlUl
    lfs     f2, -0x7c84(rtoc)
    addi    r4, r31, 0x288
    lfs     f1, -0x7b98(rtoc)
    li      r3, 0x8
    fmr     f4, f2
    fmr     f6, f2
    lfs     f3, -0x7b94(rtoc)
    lfs     f5, -0x7c7c(rtoc)
    li      r5, 0x2844
    lfs     f7, -0x7c54(rtoc)
    li      r6, 0x1
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c84(rtoc)
    addi    r4, r31, 0x298
    lfs     f1, -0x7b90(rtoc)
    li      r3, 0x8
    fmr     f4, f2
    fmr     f6, f2
    lfs     f3, -0x7c1c(rtoc)
    lfs     f5, -0x7c7c(rtoc)
    li      r5, 0x2054
    lfs     f7, -0x7c54(rtoc)
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c84(rtoc)
    addi    r4, r31, 0x2a8
    lfs     f1, -0x7b8c(rtoc)
    li      r3, 0x8
    fmr     f4, f2
    fmr     f6, f2
    lfs     f3, -0x7c80(rtoc)
    lfs     f5, -0x7c7c(rtoc)
    li      r5, 0x2045
    lfs     f7, -0x7c54(rtoc)
    li      r6, 0x1
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c84(rtoc)
    addi    r4, r31, 0x2c8
    lfs     f1, -0x7b8c(rtoc)
    li      r3, 0x8
    fmr     f4, f2
    fmr     f6, f2
    lfs     f3, -0x7b88(rtoc)
    lfs     f5, -0x7c7c(rtoc)
    li      r5, 0x2052
    lfs     f7, -0x7c54(rtoc)
    li      r6, 0x1
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7b84(rtoc)
    addi    r4, r31, 0x2e8
    lfs     f2, -0x7bf4(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c7c(rtoc)
    lfs     f4, -0x7c30(rtoc)
    li      r5, 0x20ff
    lfs     f5, -0x7bb4(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7b8c(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f3, -0x7b7c(rtoc)
    addi    r4, r31, 0x304
    lfs     f1, -0x7b80(rtoc)
    li      r3, 0x2
    fmr     f7, f3
    lfs     f2, -0x7c7c(rtoc)
    li      r5, 0x20c2
    lfs     f4, -0x7b78(rtoc)
    li      r6, 0x1
    lfs     f5, -0x7b74(rtoc)
    li      r7, 0x0
    lfs     f6, -0x7c84(rtoc)
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7c7c(rtoc)
    addi    r4, r31, 0x304
    lfs     f3, -0x7b7c(rtoc)
    li      r3, 0x1
    fmr     f5, f2
    fmr     f7, f3
    lfs     f1, -0x7b80(rtoc)
    lfs     f4, -0x7b70(rtoc)
    li      r5, 0x20c2
    lfs     f6, -0x7c84(rtoc)
    li      r6, 0x1
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7b6c(rtoc)
    addi    r4, r31, 0x318
    lfs     f4, -0x7c84(rtoc)
    li      r3, 0x2
    fmr     f7, f2
    fmr     f6, f4
    lfs     f1, -0x7bf0(rtoc)
    lfs     f3, -0x7c34(rtoc)
    li      r5, 0x20df
    lfs     f5, -0x7be4(rtoc)
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f3, -0x7c7c(rtoc)
    addi    r4, r31, 0x334
    lfs     f4, -0x7c84(rtoc)
    li      r3, 0x1
    fmr     f5, f3
    fmr     f6, f4
    lfs     f1, -0x7b68(rtoc)
    lfs     f2, -0x7bb4(rtoc)
    li      r5, 0x28f7
    lfs     f7, -0x7b64(rtoc)
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7bb8(rtoc)
    addi    r4, r31, 0x344
    lfs     f2, -0x7b60(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c1c(rtoc)
    lfs     f4, -0x7bd8(rtoc)
    li      r5, 0x28ad
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bd0(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7bb8(rtoc)
    addi    r4, r31, 0x344
    lfs     f2, -0x7b60(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c1c(rtoc)
    lfs     f4, -0x7bd8(rtoc)
    li      r5, 0x28ad
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7bd0(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7b5c(rtoc)
    addi    r4, r31, 0x358
    lfs     f2, -0x7b9c(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7b58(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x212f
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7b80(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f2, -0x7b6c(rtoc)
    addi    r4, r31, 0x358
    lfs     f4, -0x7c84(rtoc)
    li      r3, 0x2
    fmr     f7, f2
    fmr     f6, f4
    lfs     f1, -0x7bf0(rtoc)
    lfs     f3, -0x7c34(rtoc)
    li      r5, 0x212f
    lfs     f5, -0x7be4(rtoc)
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7b54(rtoc)
    addi    r4, r31, 0x36c
    lfs     f2, -0x7b6c(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7b7c(rtoc)
    lfs     f4, -0x7b50(rtoc)
    li      r5, 0x210c
    lfs     f5, -0x7b4c(rtoc)
    li      r6, 0x2
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7b48(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7b44(rtoc)
    addi    r4, r31, 0x380
    lfs     f2, -0x7b40(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7b58(rtoc)
    lfs     f4, -0x7b3c(rtoc)
    li      r5, 0x215c
    lfs     f5, -0x7b38(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7b34(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7b44(rtoc)
    addi    r4, r31, 0x380
    lfs     f2, -0x7b40(rtoc)
    li      r3, 0x1
    lfs     f3, -0x7c34(rtoc)
    lfs     f4, -0x7bf8(rtoc)
    li      r5, 0x215c
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x1
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7b34(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7b58(rtoc)
    addi    r4, r31, 0x398
    lfs     f2, -0x7b30(rtoc)
    li      r3, 0x2
    lfs     f3, -0x7c7c(rtoc)
    lfs     f4, -0x7c70(rtoc)
    li      r5, 0x20d2
    lfs     f5, -0x7b74(rtoc)
    li      r6, 0x0
    lfs     f6, -0x7c84(rtoc)
    lfs     f7, -0x7b6c(rtoc)
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7bf8(rtoc)
    lis     r30, 0x1
    lfs     f3, -0x7c58(rtoc)
    addi    r4, r31, 0x3b0
    fmr     f4, f1
    fmr     f7, f3
    lfs     f2, -0x7b2c(rtoc)
    lfs     f5, -0x7c7c(rtoc)
    subi    r5, r30, 0x7ecb
    lfs     f6, -0x7c84(rtoc)
    li      r3, 0x2
    li      r6, 0x0
    li      r7, 0x1
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x3c0
    lfs     f3, -0x7c58(rtoc)
    li      r3, 0x2
    fmr     f6, f1
    fmr     f7, f3
    lfs     f2, -0x7b28(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x2981
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x0
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x3c0
    lfs     f3, -0x7c58(rtoc)
    li      r3, 0x1
    fmr     f6, f1
    fmr     f7, f3
    lfs     f2, -0x7b28(rtoc)
    lfs     f4, -0x7c3c(rtoc)
    li      r5, 0x2981
    lfs     f5, -0x7c7c(rtoc)
    li      r6, 0x0
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    lfs     f1, -0x7c84(rtoc)
    addi    r4, r31, 0x3cc
    lfs     f2, -0x7c7c(rtoc)
    subi    r5, r30, 0x7e63
    lfs     f3, -0x7c58(rtoc)
    fmr     f5, f2
    lfs     f4, -0x7bf8(rtoc)
    fmr     f6, f1
    li      r3, 0x2
    fmr     f7, f3
    li      r6, 0x2
    li      r7, 0x0
    bl      append__9JALSystemFQ29JALSystem7ModTypePCcUlfffffQ27JALCalc9CurveSignffUc
    bl      init__10MSSetSoundFv
    li      r3, 0xc8
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80019d00
    stw     r31, 0x50(sp)
    li      r3, 0x1
    li      r4, 0xf
    lwz     r30, 0x50(sp)
    li      r7, 0xb4
    li      r0, 0x0
    stw     r3, 0x8(sp)
    addi    r3, r30, 0x0
    addi    r6, r30, 0x0
    stw     r4, 0xc(sp)
    li      r4, 0x0
    subi    r5, rtoc, 0x7b24
    stw     r7, 0x10(sp)
    li      r7, 0x3
    li      r8, 0x2
    lfs     f4, -0x7c7c(rtoc)
    li      r9, 0x13
    li      r10, 0x2
    stfs    f4, 0x14(sp)
    fmr     f5, f4
    fmr     f8, f4
    lfs     f6, -0x7c84(rtoc)
    stfs    f6, 0x18(sp)
    stw     r0, 0x1c(sp)
    lfs     f1, -0x7b7c(rtoc)
    lfs     f2, -0x7b1c(rtoc)
    fmr     f3, f1
    lfs     f7, -0x7b18(rtoc)
    bl      __ct__29MSSetSoundTL_13MSSetSoundGrp_FUlPCcP13MSSetSoundGrpUcUcUcUcfUcffffflflfffb
    addi    r3, r30, 0xbc
    bl      __ct__10JSUPtrListFv
    lis     r3, 0x803b
    subi    r3, r3, 0x3940
    stw     r3, 0x18(r30)
    addi    r0, r3, 0x8
    stw     r0, 0x14(r30)
branch_0x80019d00:
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019d2c
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3813
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b14(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019d2c:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019d6c
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3814
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b14(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019d6c:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019dac
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3815
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b14(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019dac:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019dec
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3816
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b14(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019dec:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019e2c
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3817
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b14(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019e2c:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019e6c
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3818
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b14(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019e6c:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019eac
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x3819
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b10(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019eac:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019eec
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x381a
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b10(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019eec:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80019f2c
    addi    r3, r29, 0x0
    addi    r4, r3, 0x0
    li      r5, 0x381b
    li      r6, 0x0
    bl      __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
    lfs     f0, -0x7b10(rtoc)
    stfs    f0, 0x18(r29)
branch_0x80019f2c:
    addi    r4, r29, 0x4
    addi    r3, r31, 0xbc
    bl      append__10JSUPtrListFP10JSUPtrLink
    addi    r0, r31, 0xbc
    stw     r0, 0x14(r29)
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xa0
    blr


.globl __ct__10JSUPtrListFv
__ct__10JSUPtrListFv: # 0x80019f5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initiate__10JSUPtrListFv
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl randPlay__Q214MSoundSESystem10MSRandPlayFUl
randPlay__Q214MSoundSESystem10MSRandPlayFUl: # 0x80019f8c
    mflr    r0
    stw     r0, 0x4(sp)
    mulli   r0, r4, 0x24
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    addi    r30, r3, 0x0
    lwz     r3, 0x10(r3)
    add     r31, r3, r0
    lbz     r0, 0x4(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8001a06c
    bge-    branch_0x8001a090
    cmpwi   r0, 0x0
    bge-    branch_0x80019fcc
    b       branch_0x8001a090

branch_0x80019fcc:
    lwz     r3, 0x24(r30)
    lis     r0, 0x4330
    lfd     f4, -0x7b08(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x7c78(rtoc)
    stw     r3, 0x34(sp)
    lfs     f2, 0x28(r30)
    stw     r0, 0x30(sp)
    lfs     f3, 0x2c(r30)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f4
    fmuls   f1, f1, f0
    bl      getRandom__7JALCalcFfff
    fctiwz  f0, f1
    lwz     r3, 0x20(r30)
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    cmpw    r0, r3
    ble-    branch_0x8001a020
    stfd    f0, 0x28(sp)
    lwz     r3, 0x2c(sp)
branch_0x8001a020:
    stw     r3, 0x8(r31)
    lwz     r0, 0x8(r31)
    lwz     r3, 0x24(r30)
    cmpw    r0, r3
    bge-    branch_0x8001a038
    b       branch_0x8001a03c

branch_0x8001a038:
    mr      r0, r3
branch_0x8001a03c:
    stw     r0, 0x8(r31)
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8001a058
    li      r0, 0x2
    stb     r0, 0x4(r31)
    b       branch_0x8001a090

branch_0x8001a058:
    li      r0, 0x0
    stw     r0, 0xc(r31)
    li      r0, 0x1
    stb     r0, 0x4(r31)
    b       branch_0x8001a138

branch_0x8001a06c:
    lwz     r0, 0x8(r31)
    lwz     r3, 0xc(r31)
    cmpw    r0, r3
    ble-    branch_0x8001a088
    addi    r0, r3, 0x1
    stw     r0, 0xc(r31)
    b       branch_0x8001a138

branch_0x8001a088:
    li      r0, 0x2
    stb     r0, 0x4(r31)
branch_0x8001a090:
    lbz     r0, 0x4(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x8001a124
    bge-    branch_0x8001a138
    cmpwi   r0, 0x2
    bge-    branch_0x8001a0ac
    b       branch_0x8001a138

branch_0x8001a0ac:
    lwz     r4, 0x1c(r30)
    cmpwi   r4, 0x3813
    beq-    branch_0x8001a0bc
    b       branch_0x8001a0e0

branch_0x8001a0bc:
    lwz     r3, -0x7164(r13)
    li      r6, 0x0
    lwz     r5, 0x0(r31)
    li      r7, 0x0
    lfs     f1, -0x7c84(rtoc)
    li      r8, 0x0
    li      r9, 0x4
    bl      startSoundSetGrp__6MSoundFUlPC3VecUlfUlUlUc
    b       branch_0x8001a110

branch_0x8001a0e0:
    lwz     r3, 0x0(r31)
    li      r0, 0x0
    addi    r4, r31, 0x20
    stw     r3, 0x14(sp)
    addi    r5, sp, 0x14
    li      r6, 0x0
    stw     r3, 0x18(sp)
    li      r7, 0x4
    stw     r3, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r3, 0x1c(r30)
    bl      startSoundActorInner__Q214MSoundSESystem8MSoundSEFUlPP8JAISoundP8JAIActorUlUc
branch_0x8001a110:
    li      r0, 0x3
    stb     r0, 0x4(r31)
    li      r0, 0x0
    stw     r0, 0xc(r31)
    b       branch_0x8001a138

branch_0x8001a124:
    lwz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8001a138
    li      r0, 0x0
    stb     r0, 0x4(r31)
branch_0x8001a138:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __ct__Q214MSoundSESystem10MSRandPlayFUlllff
__ct__Q214MSoundSESystem10MSRandPlayFUlllff: # 0x8001a150
    mflr    r0
    lis     r7, 0x803b
    stw     r0, 0x4(sp)
    subi    r0, r7, 0x39f0
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f2
    stfd    f30, 0x38(sp)
    fmr     f30, f1
    stw     r31, 0x34(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x28(sp)
    mr      r28, r3
    addi    r4, r28, 0x0
    stw     r0, 0x18(r28)
    bl      __ct__10JSUPtrLinkFPv
    li      r0, 0x0
    stw     r0, 0x10(r28)
    mr      r3, r28
    sth     r0, 0x14(r28)
    sth     r0, 0x16(r28)
    stw     r29, 0x1c(r28)
    stw     r30, 0x20(r28)
    stw     r31, 0x24(r28)
    stfs    f30, 0x28(r28)
    stfs    f31, 0x2c(r28)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl: # 0x8001a1f0
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    subi    r5, r5, 0x552c
    stwu    sp, -0x8(sp)
    lwz     r5, 0x0(r5)
    b       branch_0x8001a238

branch_0x8001a20c:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x1c(r6)
    cmplw   r3, r0
    bne-    branch_0x8001a234
    lwz     r12, 0x18(r6)
    mr      r3, r6
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    b       branch_0x8001a240

branch_0x8001a234:
    lwz     r5, 0xc(r5)
branch_0x8001a238:
    cmplwi  r5, 0x0
    bne+    branch_0x8001a20c
branch_0x8001a240:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__Q214MSoundSESystem13MSRandPlayVecFv
__dt__Q214MSoundSESystem13MSRandPlayVecFv: # 0x8001a250
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8001a294
    addic.  r0, r30, 0x10
    beq-    branch_0x8001a284
    addi    r3, r30, 0x10
    li      r4, 0x0
    bl      __dt__10JSUPtrLinkFv
branch_0x8001a284:
    extsh.  r0, r31
    ble-    branch_0x8001a294
    mr      r3, r30
    bl      __dl__FPv
branch_0x8001a294:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__Q214MSoundSESystem13MSRandPlayVecFv
__ct__Q214MSoundSESystem13MSRandPlayVecFv: # 0x8001a2b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    mr      r4, r30
    stw     r31, 0x0(r3)
    addi    r3, r30, 0x10
    stb     r31, 0x4(r30)
    stw     r31, 0x8(r30)
    stw     r31, 0xc(r30)
    bl      __ct__10JSUPtrLinkFPv
    stw     r31, 0x20(r30)
    mr      r3, r30
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs
createRandPlayVec__Q214MSoundSESystem10MSRandPlayFUlUs: # 0x8001a308
    mflr    r0
    lis     r5, 0x803f
    stw     r0, 0x4(sp)
    subi    r5, r5, 0x552c
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    stw     r29, 0x5c(sp)
    mr      r29, r4
    lwz     r5, 0x0(r5)
    b       branch_0x8001a388

branch_0x8001a334:
    lwz     r30, 0x0(r5)
    lwz     r0, 0x1c(r30)
    cmplw   r3, r0
    bne-    branch_0x8001a384
    clrlwi  r31, r29, 16
    mulli   r3, r31, 0x24
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8002
    lis     r5, 0x8002
    subi    r4, r4, 0x5d50
    subi    r5, r5, 0x5db0
    addi    r7, r31, 0x0
    li      r6, 0x24
    bl      __construct_new_array
    stw     r3, 0x10(r30)
    li      r0, 0x0
    sth     r29, 0x14(r30)
    sth     r0, 0x16(r30)
    b       branch_0x8001a390

branch_0x8001a384:
    lwz     r5, 0xc(r5)
branch_0x8001a388:
    cmplwi  r5, 0x0
    bne+    branch_0x8001a334
branch_0x8001a390:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec: # 0x8001a3ac
    lis     r5, 0x803f
    subi    r5, r5, 0x552c
    lwz     r5, 0x0(r5)
    b       branch_0x8001a3f0

branch_0x8001a3bc:
    lwz     r6, 0x0(r5)
    lwz     r0, 0x1c(r6)
    cmplw   r3, r0
    bne-    branch_0x8001a3ec
    lhz     r0, 0x16(r6)
    lwz     r3, 0x10(r6)
    mulli   r0, r0, 0x24
    stwx    r4, r3, r0
    lhz     r3, 0x16(r6)
    addi    r0, r3, 0x1
    sth     r0, 0x16(r6)
    blr

branch_0x8001a3ec:
    lwz     r5, 0xc(r5)
branch_0x8001a3f0:
    cmplwi  r5, 0x0
    bne+    branch_0x8001a3bc
    li      r3, -0x1
    blr


.globl getRandVol__Q214MSoundSESystem9MSRandVolFUl
getRandVol__Q214MSoundSESystem9MSRandVolFUl: # 0x8001a400
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm  r0, r4, 8, 28, 29
    add     r5, r3, r0
    stwu    sp, -0x8(sp)
    rlwinm  r0, r4, 10, 28, 29
    lfs     f1, 0x3c(r5)
    rlwinm  r5, r4, 12, 28, 29
    lfs     f0, 0x18(r3)
    add     r4, r3, r5
    add     r3, r3, r0
    fmuls   f1, f1, f0
    lfs     f3, 0x1c(r4)
    lfs     f2, 0x2c(r3)
    bl      getRandom__7JALCalcFfff
    lfs     f0, -0x7c7c(rtoc)
    lfs     f2, -0x7c84(rtoc)
    fadds   f0, f0, f1
    fcmpo   cr0, f0, f2
    bge-    branch_0x8001a454
    b       branch_0x8001a458

branch_0x8001a454:
    fmr     f2, f0
branch_0x8001a458:
    lfs     f1, -0x7c58(rtoc)
    fcmpo   cr0, f2, f1
    ble-    branch_0x8001a468
    b       branch_0x8001a46c

branch_0x8001a468:
    fmr     f1, f2
branch_0x8001a46c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__Q214MSoundSESystem9MSRandVolFUl
__ct__Q214MSoundSESystem9MSRandVolFUl: # 0x8001a47c
    mflr    r0
    lis     r5, 0x803b
    stw     r0, 0x4(sp)
    subi    r0, r5, 0x3928
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    addi    r3, r30, 0x4
    stw     r0, 0x0(r30)
    addi    r4, r30, 0x0
    bl      __ct__10JSUPtrLinkFPv
    stw     r31, 0x14(r30)
    mr      r3, r30
    lfs     f4, -0x7c78(rtoc)
    stfs    f4, 0x18(r30)
    lfs     f0, -0x7c84(rtoc)
    stfs    f0, 0x1c(r30)
    lfs     f3, -0x7bc4(rtoc)
    stfs    f3, 0x20(r30)
    stfs    f4, 0x24(r30)
    lfs     f2, -0x7b00(rtoc)
    stfs    f2, 0x28(r30)
    lfs     f1, -0x7c7c(rtoc)
    stfs    f1, 0x2c(r30)
    lfs     f0, -0x7bd0(rtoc)
    stfs    f0, 0x30(r30)
    lfs     f0, -0x7c58(rtoc)
    stfs    f0, 0x34(r30)
    lfs     f0, -0x7b58(rtoc)
    stfs    f0, 0x38(r30)
    stfs    f3, 0x3c(r30)
    stfs    f4, 0x40(r30)
    stfs    f2, 0x44(r30)
    stfs    f1, 0x48(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_
__ct__31JALLinkD_16MSSetSoundMember_Ul_FP16MSSetSoundMemberUlP31JALListD_16MSSetSoundMember_Ul_: # 0x8001a524
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r6
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    addi    r30, r31, 0x4
    stw     r5, 0x0(r31)
    mr      r3, r30
    bl      __ct__10JSUPtrLinkFPv
    cmplwi  r29, 0x0
    stw     r29, 0x14(r31)
    beq-    branch_0x8001a574
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r29, 0x14(r31)
branch_0x8001a574:
    lwz     r0, 0x34(sp)
    lwz     r3, 0x8(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl __ct__29MSSetSoundTL_13MSSetSoundGrp_FUlPCcP13MSSetSoundGrpUcUcUcUcfUcffffflflfffb
__ct__29MSSetSoundTL_13MSSetSoundGrp_FUlPCcP13MSSetSoundGrpUcUcUcUcfUcffffflflfffb: # 0x8001a594
    mflr    r0
    lis     r11, 0x8037
    stw     r0, 0x4(sp)
    mr      r0, r4
    addi    r4, r5, 0x0
    stwu    sp, -0x128(sp)
    mr      r5, r0
    stfd    f31, 0x120(sp)
    lfs     f31, 0x140(sp)
    stfd    f30, 0x118(sp)
    lfs     f30, 0x13c(sp)
    stfd    f29, 0x110(sp)
    fmr     f29, f8
    stfd    f28, 0x108(sp)
    fmr     f28, f7
    stfd    f27, 0x100(sp)
    fmr     f27, f6
    stfd    f26, 0xf8(sp)
    fmr     f26, f5
    stfd    f25, 0xf0(sp)
    fmr     f25, f4
    stfd    f24, 0xe8(sp)
    fmr     f24, f3
    stfd    f23, 0xe0(sp)
    fmr     f23, f2
    stfd    f22, 0xd8(sp)
    fmr     f22, f1
    stmw    r22, 0xb0(sp)
    mr      r24, r7
    lbz     r28, 0x133(sp)
    mr      r25, r8
    lwz     r29, 0x134(sp)
    lwz     r30, 0x138(sp)
    mr      r26, r9
    lbz     r31, 0x147(sp)
    addi    r27, r10, 0x0
    addi    r22, r11, 0x3f08
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__34JALListHioNode_13MSSetSoundGrp_Ul_FPCcUlP13MSSetSoundGrp
    lwz     r23, 0x8(sp)
    lis     r3, 0x803b
    subi    r0, r3, 0x391c
    lis     r3, 0x803b
    stw     r0, 0x14(r23)
    subi    r3, r3, 0x3958
    stw     r3, 0x18(r23)
    addi    r0, r3, 0x8
    addi    r4, r24, 0x0
    stw     r0, 0x14(r23)
    addi    r3, r23, 0x1c
    addi    r5, r22, 0x3e0
    bl      __ct__10JADPrm_Uc_FUcPCc
    addi    r4, r25, 0x0
    addi    r3, r23, 0x1d
    addi    r5, r22, 0x3f0
    bl      __ct__10JADPrm_Uc_FUcPCc
    addi    r4, r26, 0x0
    addi    r3, r23, 0x1e
    addi    r5, r22, 0x400
    bl      __ct__10JADPrm_Uc_FUcPCc
    addi    r4, r27, 0x0
    addi    r3, r23, 0x1f
    addi    r5, r22, 0x410
    bl      __ct__10JADPrm_Uc_FUcPCc
    fmr     f1, f22
    addi    r3, r23, 0x20
    addi    r4, r22, 0x41c
    bl      __ct__9JADPrm_f_FfPCc
    addi    r4, r28, 0x0
    addi    r3, r23, 0x24
    addi    r5, r22, 0x428
    bl      __ct__10JADPrm_Uc_FUcPCc
    fmr     f1, f23
    addi    r3, r23, 0x28
    addi    r4, r22, 0x438
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f24
    addi    r3, r23, 0x2c
    addi    r4, r22, 0x448
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f25
    addi    r3, r23, 0x30
    addi    r4, r22, 0x458
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f26
    addi    r3, r23, 0x34
    addi    r4, r22, 0x470
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f27
    addi    r3, r23, 0x38
    addi    r4, r22, 0x484
    bl      __ct__9JADPrm_f_FfPCc
    addi    r4, r29, 0x0
    addi    r3, r23, 0x3c
    addi    r5, r22, 0x494
    bl      __ct__9JADPrm_l_FlPCc
    fmr     f1, f28
    addi    r3, r23, 0x40
    addi    r4, r22, 0x4b4
    bl      __ct__9JADPrm_f_FfPCc
    addi    r4, r30, 0x0
    addi    r3, r23, 0x44
    addi    r5, r22, 0x4cc
    bl      __ct__9JADPrm_l_FlPCc
    fmr     f1, f29
    addi    r3, r23, 0x48
    addi    r4, r22, 0x4dc
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f30
    addi    r3, r23, 0x4c
    addi    r4, r22, 0x4f8
    bl      __ct__9JADPrm_f_FfPCc
    fmr     f1, f31
    addi    r3, r23, 0x50
    addi    r4, r22, 0x510
    bl      __ct__9JADPrm_f_FfPCc
    li      r4, 0x0
    stw     r4, 0x54(r23)
    li      r0, 0x1
    addi    r3, r23, 0x0
    stb     r4, 0x58(r23)
    lfs     f0, -0x7c84(rtoc)
    stfs    f0, 0xac(r23)
    stfs    f0, 0xb0(r23)
    stfs    f0, 0xb4(r23)
    stb     r4, 0xb8(r23)
    stb     r31, 0xb9(r23)
    stb     r4, 0x5a(r23)
    stb     r0, 0x59(r23)
    stw     r4, 0x5c(r23)
    stw     r4, 0x60(r23)
    stw     r4, 0x64(r23)
    stw     r4, 0x68(r23)
    stw     r4, 0x6c(r23)
    lwz     r0, 0x12c(sp)
    lfd     f31, 0x120(sp)
    lfd     f30, 0x118(sp)
    lfd     f29, 0x110(sp)
    lfd     f28, 0x108(sp)
    lfd     f27, 0x100(sp)
    lfd     f26, 0xf8(sp)
    lfd     f25, 0xf0(sp)
    lfd     f24, 0xe8(sp)
    lfd     f23, 0xe0(sp)
    lfd     f22, 0xd8(sp)
    lmw     r22, 0xb0(sp)
    addi    sp, sp, 0x128
    mtlr    r0
    blr


.globl frameLoopDyna__33JALListFrameLoop_13MSSetSoundGrp_Fv
frameLoopDyna__33JALListFrameLoop_13MSSetSoundGrp_Fv: # 0x8001a7ec
    blr


.globl __ct__9JADPrm_l_FlPCc
__ct__9JADPrm_l_FlPCc: # 0x8001a7f0
    stw     r4, 0x0(r3)
    blr


.globl __ct__9JADPrm_f_FfPCc
__ct__9JADPrm_f_FfPCc: # 0x8001a7f8
    stfs    f1, 0x0(r3)
    blr


.globl __ct__34JALListHioNode_13MSSetSoundGrp_Ul_FPCcUlP13MSSetSoundGrp
__ct__34JALListHioNode_13MSSetSoundGrp_Ul_FPCcUlP13MSSetSoundGrp: # 0x8001a800
    mflr    r0
    addi    r4, r6, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r30, 0x18(sp)
    bl      __ct__10JSUPtrLinkFPv
    subi    r3, r13, 0x72ac
    lwz     r4, 0x18(sp)
    bl      append__10JSUPtrListFP10JSUPtrLink
    stw     r31, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __sinit_MSoundSE_cpp
__sinit_MSoundSE_cpp: # 0x8001a854
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    subi    r31, r3, 0x5550
    stw     r30, 0x30(sp)
    addi    r30, r31, 0xc
    addi    r3, r30, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, 0x8002
    addi    r3, r30, 0x0
    subi    r4, r4, 0x53fc
    addi    r5, r31, 0x0
    bl      __register_global_object
    addi    r30, r31, 0x24
    addi    r3, r30, 0x0
    bl      initiate__10JSUPtrListFv
    lis     r4, 0x8002
    addi    r3, r30, 0x0
    subi    r4, r4, 0x5454
    addi    r5, r31, 0x18
    bl      __register_global_object
    lfs     f1, -0x7c7c(rtoc)
    subi    r3, r13, 0x7154
    lfs     f0, -0x7c70(rtoc)
    stfs    f1, -0x7154(r13)
    stfs    f0, 0x4(r3)
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8001a8f4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8001a8f4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8001a924
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8001a924:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8001a954
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8001a954:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8001a984
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8001a984:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8001a9b4
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8001a9b4:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8001a9e4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8001a9e4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8001aa14
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8001aa14:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8001aa44
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8001aa44:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8001aa74
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8001aa74:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8001aaa4
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8001aaa4:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8001aad4
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8001aad4:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8001ab04
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8001ab04:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8001ab34
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8001ab34:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8001ab64
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8001ab64:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8001ab94
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8001ab94:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl __dt__39JSUList_Q214MSoundSESystem10MSRandPlay_Fv
__dt__39JSUList_Q214MSoundSESystem10MSRandPlay_Fv: # 0x8001abac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8001abe8
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x8001abe8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8001abe8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__37JSUList_Q214MSoundSESystem9MSRandVol_Fv
__dt__37JSUList_Q214MSoundSESystem9MSRandVol_Fv: # 0x8001ac04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8001ac40
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__10JSUPtrListFv
    extsh.  r0, r31
    ble-    branch_0x8001ac40
    mr      r3, r30
    bl      __dl__FPv
branch_0x8001ac40:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _20_frameLoopDyna__29MSSetSoundTL_13MSSetSoundGrp_Fv
_20_frameLoopDyna__29MSSetSoundTL_13MSSetSoundGrp_Fv: # 0x8001ac5c
    subi    r3, r3, 0x14
    b       frameLoopDyna__29MSSetSoundTL_13MSSetSoundGrp_Fv

