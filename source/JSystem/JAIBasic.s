
.globl __ct__8JAIBasicFv
__ct__8JAIBasicFv: # 0x803009e0
    lis     r4, 0x803e
    addi    r0, r4, 0x24e4
    stw     r0, 0x4(r3)
    li      r6, 0x0
    li      r4, 0x3
    stw     r3, -0x5d90(r13)
    li      r0, -0x1
    stw     r3, -0x5cc0(r13)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 26
    stb     r5, 0x1c(r3)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 24
    stb     r5, 0x1c(r3)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 25
    stb     r5, 0x1c(r3)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 27
    stb     r5, 0x1c(r3)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 28
    stb     r5, 0x1c(r3)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 29
    stb     r5, 0x1c(r3)
    lbz     r5, 0x1c(r3)
    insrwi  r5, r6, 1, 30
    stb     r5, 0x1c(r3)
    stb     r6, 0x15(r3)
    stb     r6, 0x10(r3)
    stb     r6, 0x11(r3)
    stw     r6, 0x24(r3)
    stw     r6, 0x8(r3)
    stw     r6, 0x38(r3)
    stw     r6, 0x20(r3)
    stw     r6, 0x30(r3)
    stb     r4, 0x13(r3)
    stw     r6, 0x4c(r3)
    stw     r6, 0x3c(r3)
    stw     r6, 0x40(r3)
    stw     r6, 0x44(r3)
    stw     r6, 0x48(r3)
    stw     r6, 0x50(r3)
    stw     r6, 0x54(r3)
    stw     r6, 0x58(r3)
    stw     r6, 0x5c(r3)
    stw     r6, 0x68(r3)
    stw     r6, 0x6c(r3)
    stw     r0, 0x34(r3)
    stw     r6, 0x70(r3)
    stw     r6, 0xc(r3)
    stw     r6, 0x78(r3)
    blr


.globl initInterfaceMain__8JAIBasicFv
initInterfaceMain__8JAIBasicFv: # 0x80300ab8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r3, 0x0
    li      r3, 0x234
    stw     r30, 0x70(sp)
    bl      allocFromSysDram__Q28JASystem6KernelFUl
    stw     r3, 0x0(r31)
    lwz     r3, 0x0(r31)
    bl      init__7JAIDataFv
    lwz     r4, 0x0(r31)
    mr      r3, r31
    stw     r31, 0x1f4(r4)
    lwz     r4, 0x0(r31)
    stw     r31, 0x204(r4)
    lwz     r4, 0x0(r31)
    stw     r31, 0x1fc(r4)
    lwz     r4, 0x0(r31)
    stw     r31, 0x200(r4)
    lwz     r12, 0x4(r31)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x7478(r13)
    lfs     f2, -0x7474(r13)
    bl      setMixerLevel__Q28JASystem6DriverFff
    mr      r3, r31
    bl      initHeap__8JAIBasicFv
    lwz     r4, -0x5cc8(r13)
    li      r0, 0x0
    stb     r0, 0xc(sp)
    cmplwi  r4, 0x0
    beq-    branch_0x80300bf8
    addi    r3, sp, 0xc
    bl      strcat
    lwz     r3, -0x7488(r13)
    bl      strlen
    mr      r30, r3
    lwz     r3, -0x5cc8(r13)
    bl      strlen
    mr      r4, r3
    lwz     r3, -0x5b30(r13)
    addi    r0, r30, 0x1
    lwz     r12, 0x0(r3)
    add     r4, r4, r0
    li      r5, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r5, -0x5cc8(r13)
    mr      r30, r3
    lwz     r6, -0x7488(r13)
    crxor   6, 6, 6
    addi    r4, rtoc, 0x4b8
    li      r7, 0x0
    bl      sprintf
    stw     r30, -0x7488(r13)
    lwz     r3, -0x7480(r13)
    bl      strlen
    mr      r30, r3
    lwz     r3, -0x5cc8(r13)
    bl      strlen
    mr      r4, r3
    lwz     r3, -0x5b30(r13)
    addi    r0, r30, 0x1
    lwz     r12, 0x0(r3)
    add     r4, r4, r0
    li      r5, 0x0
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r5, -0x5cc8(r13)
    mr      r30, r3
    lwz     r6, -0x7480(r13)
    crxor   6, 6, 6
    addi    r4, rtoc, 0x4b8
    li      r7, 0x0
    bl      sprintf
    stw     r30, -0x7480(r13)
branch_0x80300bf8:
    mr      r3, r31
    bl      initReadFile__8JAIBasicFv
    mr      r3, r31
    bl      setWaveScene__8JAIBasicFv
    mr      r3, r31
    bl      initAllocParameter__8JAIBasicFv
    mr      r3, r31
    bl      initNullData__8JAIBasicFv
    mr      r3, r31
    bl      initSeqsLoadArea__8JAIBasicFv
    lbz     r0, 0x1c(r31)
    extrwi. r0, r0, 1, 29
    bne-    branch_0x80300c40
    mr      r3, r31
    lwz     r12, 0x4(r31)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
branch_0x80300c40:
    addi    r3, sp, 0xc
    lwz     r4, -0x7484(r13)
    bl      strcat
    addi    r3, sp, 0xc
    lwz     r4, -0x747c(r13)
    bl      strcat
    lwz     r3, 0x58(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80300c70
    addi    r3, sp, 0xc
    bl      initHeader__Q28JASystem5VloadFPc
    b       branch_0x80300c80

branch_0x80300c70:
    lwz     r4, 0x0(r3)
    addi    r3, sp, 0xc
    li      r5, 0x0
    bl      initHeaderM__Q28JASystem5VloadFPcPUcPUc
branch_0x80300c80:
    bl      initRegistTrack__Q28JASystem8TrackMgrFv
    lwz     r3, -0x747c(r13)
    bl      getArchiveHandle__Q28JASystem5VloadFPc
    stw     r3, 0x2c(r31)
    li      r0, 0x0
    lis     r4, 0x8000
    stw     r0, 0x38(r31)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x800
    addi    r5, r31, 0x38
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x4
    bl      startSoundDirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
    lbz     r0, 0x1c(r31)
    extrwi. r0, r0, 1, 26
    bne-    branch_0x80300ccc
    mr      r3, r31
    bl      checkEntriedSeq__8JAIBasicFv
branch_0x80300ccc:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl setCameraInfo__8JAIBasicFP3VecP3VecPA4_fUl
setCameraInfo__8JAIBasicFP3VecP3VecPA4_fUl: # 0x80300ce4
    lwz     r0, -0x7450(r13)
    cmplw   r0, r7
    blelr-    

    mulli   r8, r7, 0xc
    lwz     r7, 0x8(r3)
    stwx    r4, r7, r8
    lwz     r0, 0x8(r3)
    add     r4, r0, r8
    stw     r5, 0x4(r4)
    lwz     r0, 0x8(r3)
    add     r3, r0, r8
    stw     r6, 0x8(r3)
    blr


.globl initStream__8JAIBasicFv
initStream__8JAIBasicFv: # 0x80300d18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x1c(r3)
    extrwi  r0, r0, 1, 30
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    bl      init__Q27JAInter9StreamLibFb
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setRegisterTrackCallback__8JAIBasicFv
setRegisterTrackCallback__8JAIBasicFv: # 0x80300d50
    mflr    r0
    lis     r3, 0x8030
    stw     r0, 0x4(sp)
    addi    r3, r3, 0x29e0
    stwu    sp, -0x8(sp)
    bl      registerTrackCallback__Q28JASystem8TrackMgrFPFPQ28JASystem6TTrackUs_Us
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initReadFile__8JAIBasicFv
initReadFile__8JAIBasicFv: # 0x80300d78
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lbz     r0, 0x13(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x80300dc8
    bge-    branch_0x80300dac
    cmpwi   r0, 0x0
    beq-    branch_0x80300e04
    bge-    branch_0x80300dbc
    b       branch_0x80300e04

branch_0x80300dac:
    cmpwi   r0, 0x4
    beq-    branch_0x80300df0
    bge-    branch_0x80300e04
    b       branch_0x80300dd4

branch_0x80300dbc:
    mr      r3, r31
    bl      checkInitListFile__8JAIBasicFv
    b       branch_0x80300e04

branch_0x80300dc8:
    mr      r3, r31
    bl      checkInitDataFile__8JAIBasicFv
    b       branch_0x80300e04

branch_0x80300dd4:
    mr      r3, r31
    bl      checkInitListFile__8JAIBasicFv
    cmpwi   r3, 0x0
    bne-    branch_0x80300e04
    mr      r3, r31
    bl      checkInitDataFile__8JAIBasicFv
    b       branch_0x80300e04

branch_0x80300df0:
    lwz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80300e04
    mr      r3, r31
    bl      checkInitDataOnMemory__8JAIBasicFv
branch_0x80300e04:
    mr      r3, r31
    bl      initBankWave__8JAIBasicFv
    lbz     r0, 0x13(r31)
    cmplwi  r0, 0x4
    beq-    branch_0x80300e30
    lwz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80300e30
    addi    r3, r31, 0x0
    addi    r4, r31, 0x4c
    bl      deleteTmpDVDFile__8JAIBasicFPPUc
branch_0x80300e30:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkInitListFile__8JAIBasicFv
checkInitListFile__8JAIBasicFv: # 0x80300e44
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    subi    r31, r4, 0x5ab0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    bl      checkFileExsistence__18JAISystemInterfaceFPc
    cmpwi   r3, 0x0
    bne-    branch_0x80300e7c
    li      r3, 0x0
    b       branch_0x80300f18

branch_0x80300e7c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      loadDVDFile__8JAIBasicFPc
    mr.     r31, r3
    beq-    branch_0x80300f14
    lhz     r0, 0x0(r31)
    lwz     r3, -0x747c(r13)
    add     r4, r31, r0
    bl      strcpy
    lhz     r0, 0x2(r31)
    add     r0, r31, r0
    stw     r0, 0x3c(r30)
    lhz     r0, 0x4(r31)
    add     r0, r31, r0
    stw     r0, 0x40(r30)
    lhz     r0, 0x6(r31)
    lwz     r3, -0x7498(r13)
    add     r4, r31, r0
    bl      strcpy
    lhz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80300f00
    lwz     r3, -0x7494(r13)
    add     r4, r31, r0
    bl      strcpy
    lhz     r0, 0xa(r31)
    lwz     r3, -0x7490(r13)
    add     r4, r31, r0
    bl      strcpy
    lwz     r3, 0x0(r30)
    li      r0, 0x1
    stb     r0, 0x1b0(r3)
    b       branch_0x80300f0c

branch_0x80300f00:
    lwz     r3, 0x0(r30)
    li      r0, 0x0
    stb     r0, 0x1b0(r3)
branch_0x80300f0c:
    li      r3, 0x1
    b       branch_0x80300f18

branch_0x80300f14:
    li      r3, 0x0
branch_0x80300f18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl checkInitDataFile__8JAIBasicFv
checkInitDataFile__8JAIBasicFv: # 0x80300f30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, -0x748c(r13)
    bl      checkFileExsistence__18JAISystemInterfaceFPc
    cmpwi   r3, 0x0
    bne-    branch_0x80300f5c
    li      r3, 0x0
    b       branch_0x80300f8c

branch_0x80300f5c:
    lwz     r4, -0x748c(r13)
    addi    r3, r31, 0x0
    addi    r5, r31, 0x4c
    bl      loadTmpDVDFile__8JAIBasicFPcPPUc
    lwz     r0, 0x4c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80300f88
    mr      r3, r31
    bl      checkInitDataOnMemory__8JAIBasicFv
    li      r3, 0x1
    b       branch_0x80300f8c

branch_0x80300f88:
    li      r3, 0x0
branch_0x80300f8c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkInitDataOnMemory__8JAIBasicFv
checkInitDataOnMemory__8JAIBasicFv: # 0x80300fa0
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r25, 0x14(sp)
    addi    r27, r3, 0x0
    lis     r3, 0xaaab
    subi    r31, r3, 0x5555
    addi    r26, r4, 0x24c0
    li      r30, 0x0
    li      r29, 0x1
    lwz     r28, 0x0(r27)
    b       branch_0x803013b8

branch_0x80300fd4:
    lwz     r6, 0x4c(r27)
    slwi    r0, r30, 2
    addi    r30, r30, 0x1
    lwzx    r0, r6, r0
    cmplwi  r0, 0x8
    bgt-    branch_0x803013a4
    slwi    r0, r0, 2
    lwzx    r0, r26, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80300FFC:		# jumptable 80300FF8 case 0
    li      r29, 0x0
    b       branch_0x803013b8

branch_0x80301004:		# jumptable 80300FF8 case 1
slwi	  r3, r30, 2
addi	  r0, r3, 8
lwzx	  r0, r6, r0
cmplwi	  r0, 0
beq	  branch_0x803010D0
addi	  r30, r30, 1
lwzx	  r3, r6, r3
slwi	  r0, r30, 2
lwzx	  r0, r6, r0
add	  r4, r6, r3
addi	  r3, r27, 0
stw	  r0, 0xB0(r28)
addi	  r30, r30, 1
lwz	  r5, 0xB0(r28)
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x100(r28)
addi	  r3, r30, 0
addi	  r30, r30, 1
lwz	  r5, 0x4C(r27)
slwi	  r0, r30, 2
slwi	  r3, r3, 2
lwzx	  r4, r5, r3
addi	  r3, r27, 0
lwzx	  r0, r5, r0
addi	  r30, r30, 1
add	  r25, r5, r4
stw	  r0, 0x34(r28)
mr	  r4, r25
lwz	  r5, 0x34(r28)
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x84(r28)
mr	  r3, r30
addi	  r30, r30, 1
lwz	  r5, 0x4C(r27)
slwi	  r3, r3, 2
slwi	  r0, r30, 2
lwzx	  r4, r5, r3
addi	  r3, r27, 0
addi	  r30, r30, 1
add	  r4, r5, r4
stw	  r4, 0x17C(r28)
mr	  r4, r25
lwz	  r5, 0x4C(r27)
lwzx	  r0, r5, r0
stw	  r0, 0x12C(r28)
lwz	  r5, 0x12C(r28)
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x17C(r28)
li	  r0, 1
stb	  r0, 0x1B0(r28)
b	  branch_0x803013b8

branch_0x803010D0:
addi	  r30, r30, 1
lwzx	  r3, r6, r3
slwi	  r0, r30, 2
lwzx	  r0, r6, r0
add	  r4, r6, r3
addi	  r3, r27, 0
stw	  r0, 0xB0(r28)
addi	  r30, r30, 1
lwz	  r5, 0xB0(r28)
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x100(r28)
li	  r0, 0
addi	  r30, r30, 1
stb	  r0, 0x1B0(r28)
b	  branch_0x803013b8

branch_0x8030110C:		# jumptable 80300FF8 case 2
slwi	  r0, r30, 2
add	  r4, r6, r0
li	  r25, 0
li	  r3, 0
b	  branch_0x80301124

branch_0x80301120:
addi	  r3, r3, 3

branch_0x80301124:
add	  r0, r30, r3
slwi	  r0, r0, 2
lwzx	  r0, r6, r0
cmplwi	  r0, 0
bne	  branch_0x80301120
mulhwu	  r0, r31, r3
srwi	  r0, r0, 1
mulli	  r3, r0, 0xC
addi	  r5, r3, 4
addi	  r3, r27, 0
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x50(r27)
slwi	  r3, r30, 2
b	  branch_0x80301184

branch_0x8030115C:
clrlwi	  r0, r25, 24
lwz	  r4, 0x50(r27)
mulli	  r0, r0, 0xC
add	  r4, r4, r0
lwz	  r0, 0(r4)
addi	  r3, r3, 0xC
addi	  r25, r25, 1
add	  r0, r5, r0
stw	  r0, 0(r4)
addi	  r30, r30, 3

branch_0x80301184:
lwz	  r5, 0x4C(r27)
lwzx	  r0, r5, r3
cmplwi	  r0, 0
bne	  branch_0x8030115C
addi	  r30, r30, 1
b	  branch_0x803013b8

branch_0x8030119C:		# jumptable 80300FF8 case 3
slwi	  r0, r30, 2
li	  r25, 0
addi	  r3, r25, 0
add	  r4, r6, r0
b	  branch_0x803011B4

branch_0x803011B0:
addi	  r3, r3, 3

branch_0x803011B4:
add	  r0, r30, r3
slwi	  r0, r0, 2
lwzx	  r0, r6, r0
cmplwi	  r0, 0
bne	  branch_0x803011B0
mulhwu	  r0, r31, r3
srwi	  r0, r0, 1
mulli	  r3, r0, 0xC
addi	  r5, r3, 4
addi	  r3, r27, 0
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x54(r27)
slwi	  r3, r30, 2
b	  branch_0x80301214

branch_0x803011EC:
clrlwi	  r0, r25, 24
lwz	  r4, 0x54(r27)
mulli	  r0, r0, 0xC
add	  r4, r4, r0
lwz	  r0, 0(r4)
addi	  r3, r3, 0xC
addi	  r25, r25, 1
add	  r0, r5, r0
stw	  r0, 0(r4)
addi	  r30, r30, 3

branch_0x80301214:
lwz	  r5, 0x4C(r27)
lwzx	  r0, r5, r3
cmplwi	  r0, 0
bne	  branch_0x803011EC
clrlslwi  r25, r25, 24,2
addi	  r3, r27, 0
addi	  r4, r25, 0
bl	  allocHeap__8JAIBasicFUl # JAIBasic::allocHeap((ulong))
stw	  r3, 0x60(r27)
addi	  r3, r27, 0
addi	  r4, r25, 0
bl	  allocHeap__8JAIBasicFUl # JAIBasic::allocHeap((ulong))
stw	  r3, 0x64(r27)
addi	  r30, r30, 1
b	  branch_0x803013b8

branch_0x80301250:		# jumptable 80300FF8 case 4
slwi	  r25, r30, 2
add	  r4, r6, r25
addi	  r3, r27, 0
li	  r5, 8
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x58(r27)
mr	  r3, r27
lwz	  r4, 0x4C(r27)
add	  r5, r4, r25
lwz	  r0, 0(r5)
lwz	  r5, 4(r5)
add	  r4, r4, r0
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
lwz	  r4, 0x58(r27)
addi	  r30, r30, 3
stw	  r3, 0(r4)
b	  branch_0x803013b8

branch_0x80301294:		# jumptable 80300FF8 case 5
slwi	  r25, r30, 2
add	  r4, r6, r25
addi	  r3, r27, 0
li	  r5, 8
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x5C(r27)
mr	  r3, r27
lwz	  r4, 0x4C(r27)
add	  r5, r4, r25
lwz	  r0, 0(r5)
lwz	  r5, 4(r5)
add	  r4, r4, r0
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
lwz	  r4, 0x5C(r27)
addi	  r30, r30, 3
stw	  r3, 0(r4)
lwz	  r4, 0x5C(r27)
lwz	  r3, 0(r27)
lwz	  r0, 0(r4)
stw	  r0, 0x1F8(r3)
b	  branch_0x803013b8

branch_0x803012E8:		# jumptable 80300FF8 case 6
slwi	  r0, r30, 2
add	  r4, r6, r0
lwz	  r0, 0(r4)
mr	  r3, r27
lwz	  r5, 4(r4)
add	  r4, r6, r0
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
lwz	  r4, 0(r3)
addi	  r0, r3, 4
li	  r6, 0
stw	  r4, -0x74C8(r13)
li	  r4, 0
stw	  r0, 0x68(r27)
b	  branch_0x80301338

branch_0x80301320:
lwz	  r5, 0x68(r27)
addi	  r6, r6, 1
lwzx	  r0, r5, r4
add	  r0, r0, r3
stwx	  r0, r5, r4
addi	  r4, r4, 4

branch_0x80301338:
lwz	  r0, -0x74C8(r13)
cmplw	  r6, r0
blt	  branch_0x80301320
addi	  r30, r30, 3
b	  branch_0x803013b8

branch_0x8030134C:		# jumptable 80300FF8 case 7
slwi	  r0, r30, 2
add	  r4, r6, r0
lwz	  r0, 0(r4)
mr	  r3, r27
lwz	  r5, 4(r4)
add	  r4, r6, r0
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x6C(r27)
addi	  r30, r30, 3
b	  branch_0x803013b8

branch_0x80301374:		# jumptable 80300FF8 case 8
slwi	  r0, r30, 2
add	  r5, r6, r0
lwz	  r0, 4(r5)
mr	  r3, r27
lwz	  r4, 0(r5)
rlwinm	  r5, r0, 0,16,27
add	  r4, r6, r4
addi	  r5, r5, 0x10
bl	  transInitDataFile__8JAIBasicFPUcUl # JAIBasic::transInitDataFile((uchar *,ulong))
stw	  r3, 0x78(r27)
addi	  r30, r30, 3
b	  branch_0x803013b8

def_80300FF8:		# jumptable 80300FF8 default case
branch_0x803013a4:
    slwi    r0, r30, 2
    lwzx    r0, r6, r0
    addi    r30, r30, 0x1
    cmplwi  r0, 0x0
    bne+    branch_0x803013a4
branch_0x803013b8:
    cmplwi  r29, 0x0
    bne+    branch_0x80300fd4
    lmw     r25, 0x14(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl transInitDataFile__8JAIBasicFPUcUl
transInitDataFile__8JAIBasicFPUcUl: # 0x803013d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r4, r31, 0x0
    bl      allocHeap__8JAIBasicFUl
    cmplwi  r3, 0x0
    beq-    branch_0x803014a8
    cmplwi  r31, 0x0
    li      r6, 0x0
    ble-    branch_0x803014a8
    cmplwi  r31, 0x8
    subi    r4, r31, 0x8
    ble-    branch_0x8030147c
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmplwi  r4, 0x0
    mtctr   r0
    ble-    branch_0x8030147c
branch_0x8030142c:
    add     r4, r30, r6
    lbz     r0, 0x0(r4)
    add     r5, r3, r6
    addi    r6, r6, 0x8
    stb     r0, 0x0(r5)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r5)
    lbz     r0, 0x2(r4)
    stb     r0, 0x2(r5)
    lbz     r0, 0x3(r4)
    stb     r0, 0x3(r5)
    lbz     r0, 0x4(r4)
    stb     r0, 0x4(r5)
    lbz     r0, 0x5(r4)
    stb     r0, 0x5(r5)
    lbz     r0, 0x6(r4)
    stb     r0, 0x6(r5)
    lbz     r0, 0x7(r4)
    stb     r0, 0x7(r5)
    bdnz+      branch_0x8030142c
branch_0x8030147c:
    subf    r0, r6, r31
    cmplw   r6, r31
    mtctr   r0
    add     r5, r30, r6
    add     r4, r3, r6
    bge-    branch_0x803014a8
branch_0x80301494:
    lbz     r0, 0x0(r5)
    addi    r5, r5, 0x1
    stb     r0, 0x0(r4)
    addi    r4, r4, 0x1
    bdnz+      branch_0x80301494
branch_0x803014a8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl initBankWave__8JAIBasicFv
initBankWave__8JAIBasicFv: # 0x803014c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r31, r3
    lwz     r3, -0x7488(r13)
    bl      setCurrentDir__Q28JASystem13WaveArcLoaderFPCc
    li      r3, 0x100
    bl      init__Q28JASystem11WaveBankMgrFi
    bl      init__Q28JASystem13WaveArcLoaderFv
    lwz     r0, 0x54(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8030154c
    li      r29, 0x0
    addi    r28, r29, 0x0
    li      r26, 0x0
    li      r30, 0x0
    li      r27, -0x1
    b       branch_0x8030153c

branch_0x8030150c:
    cmplwi  r0, 0x0
    mr      r4, r0
    beq-    branch_0x80301530
    mr      r3, r26
    bl      registWaveBankWS__Q28JASystem11WaveBankMgrFiPv
    lwz     r3, 0x60(r31)
    stwx    r27, r3, r29
    lwz     r3, 0x64(r31)
    stwx    r28, r3, r29
branch_0x80301530:
    addi    r26, r26, 0x1
    addi    r30, r30, 0xc
    addi    r29, r29, 0x4
branch_0x8030153c:
    lwz     r3, 0x54(r31)
    lwzx    r0, r3, r30
    cmplwi  r0, 0x0
    bne+    branch_0x8030150c
branch_0x8030154c:
    lwz     r0, 0x40(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80301598
    li      r26, 0x0
    li      r30, 0x0
    b       branch_0x80301584

branch_0x80301564:
    mr      r3, r31
    bl      loadDVDFile__8JAIBasicFPc
    mr.     r4, r3
    beq-    branch_0x8030157c
    mr      r3, r26
    bl      registWaveBankWS__Q28JASystem11WaveBankMgrFiPv
branch_0x8030157c:
    addi    r26, r26, 0x1
    addi    r30, r30, 0x30
branch_0x80301584:
    lwz     r0, 0x40(r31)
    add     r4, r0, r30
    lbz     r0, 0x0(r4)
    extsb.  r0, r0
    bne+    branch_0x80301564
branch_0x80301598:
    li      r3, 0x100
    bl      init__Q28JASystem7BankMgrFi
    lwz     r0, 0x50(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80301618
    li      r26, 0x0
    li      r30, 0x0
    b       branch_0x803015d4

branch_0x803015b8:
    cmplwi  r0, 0x0
    mr      r4, r0
    beq-    branch_0x803015cc
    mr      r3, r26
    bl      registBankBNK__Q28JASystem7BankMgrFiPv
branch_0x803015cc:
    addi    r26, r26, 0x1
    addi    r30, r30, 0xc
branch_0x803015d4:
    lwz     r3, 0x50(r31)
    lwzx    r0, r3, r30
    cmplwi  r0, 0x0
    bne+    branch_0x803015b8
    li      r27, 0x0
    li      r30, 0x0
    b       branch_0x80301604

branch_0x803015f0:
    mr      r3, r27
    lwz     r4, 0x8(r4)
    bl      assignWaveBank__Q28JASystem7BankMgrFii
    addi    r27, r27, 0x1
    addi    r30, r30, 0xc
branch_0x80301604:
    lwz     r0, 0x50(r31)
    add     r4, r0, r30
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    bne+    branch_0x803015f0
branch_0x80301618:
    lwz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80301680
    li      r26, 0x0
    li      r30, 0x0
    b       branch_0x8030166c

branch_0x80301630:
    mr      r3, r31
    bl      loadDVDFile__8JAIBasicFPc
    mr.     r4, r3
    beq-    branch_0x80301648
    mr      r3, r26
    bl      registBankBNK__Q28JASystem7BankMgrFiPv
branch_0x80301648:
    mr      r3, r31
    lwz     r12, 0x4(r31)
    addi    r4, r26, 0x0
    li      r5, 0x0
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r26, r26, 0x1
    addi    r30, r30, 0x30
branch_0x8030166c:
    lwz     r0, 0x3c(r31)
    add     r4, r0, r30
    lbz     r0, 0x0(r4)
    extsb.  r0, r0
    bne+    branch_0x80301630
branch_0x80301680:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setWaveScene__8JAIBasicFv
setWaveScene__8JAIBasicFv: # 0x80301694
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r0, 0x54(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80301728
    lbz     r0, 0x1c(r29)
    extrwi. r0, r0, 1, 26
    bne-    branch_0x80301728
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80301704

branch_0x803016d4:
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x803016fc
    mr      r3, r29
    lwz     r12, 0x4(r29)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
branch_0x803016fc:
    addi    r30, r30, 0x1
    addi    r31, r31, 0xc
branch_0x80301704:
    lwz     r0, 0x54(r29)
    add     r3, r0, r31
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x803016d4
    lbz     r0, 0x1c(r29)
    li      r3, 0x1
    insrwi  r0, r3, 1, 24
    stb     r0, 0x1c(r29)
branch_0x80301728:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setSceneSetFinishCallback__8JAIBasicFll
setSceneSetFinishCallback__8JAIBasicFll: # 0x80301744
    mflr    r0
    li      r7, 0x1
    stw     r0, 0x4(sp)
    li      r0, -0x1
    slwi    r8, r4, 16
    stwu    sp, -0x8(sp)
    stw     r0, 0x34(r3)
    slwi    r0, r4, 2
    lis     r4, 0x8030
    lwz     r6, 0x64(r3)
    add     r3, r8, r5
    addi    r5, r4, 0x1790
    stwx    r7, r6, r0
    li      r4, 0x0
    bl      checkPassDvdT__Q28JASystem3DvdFUlPUlPFUl_v
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl finishSceneSet__8JAIBasicFUl
finishSceneSet__8JAIBasicFUl: # 0x80301790
    lwz     r4, -0x5d90(r13)
    rlwinm  r0, r3, 18, 14, 29
    stw     r3, 0x34(r4)
    li      r4, 0x2
    lwz     r3, -0x5d90(r13)
    lwz     r3, 0x64(r3)
    stwx    r4, r3, r0
    blr


.globl loadSceneWave__8JAIBasicFll
loadSceneWave__8JAIBasicFll: # 0x803017b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x54(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80301834
    mulli   r3, r30, 0xc
    add     r3, r0, r3
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x80301834
    lwz     r3, 0x60(r29)
    slwi    r0, r30, 2
    lwzx    r4, r3, r0
    cmpw    r31, r4
    beq-    branch_0x80301834
    cmpwi   r4, -0x1
    beq-    branch_0x80301818
    mr      r3, r30
    bl      eraseWave__Q28JASystem11WaveBankMgrFii
branch_0x80301818:
    mr      r3, r29
    lwz     r12, 0x4(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
branch_0x80301834:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl checkSceneWaveOnMemory__8JAIBasicFll
checkSceneWaveOnMemory__8JAIBasicFll: # 0x80301850
    lwz     r6, 0x60(r3)
    slwi    r4, r4, 2
    lwzx    r0, r6, r4
    cmpw    r5, r0
    bne-    branch_0x8030187c
    lwz     r3, 0x64(r3)
    lwzx    r0, r3, r4
    cmpwi   r0, 0x2
    bne-    branch_0x8030187c
    li      r3, 0x1
    blr

branch_0x8030187c:
    li      r3, 0x0
    blr


.globl loadGroupWave__8JAIBasicFll
loadGroupWave__8JAIBasicFll: # 0x80301884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    addi    r4, r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    bl      loadWave__Q28JASystem11WaveBankMgrFii
    li      r0, -0x1
    stw     r0, 0x34(r29)
    slwi    r0, r31, 16
    add     r3, r0, r30
    lwz     r6, 0x64(r29)
    lis     r4, 0x8030
    slwi    r31, r31, 2
    li      r0, 0x1
    addi    r5, r4, 0x1790
    stwx    r0, r6, r31
    li      r4, 0x0
    bl      checkPassDvdT__Q28JASystem3DvdFUlPUlPFUl_v
    lwz     r3, 0x60(r29)
    stwx    r30, r3, r31
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl initNullData__8JAIBasicFv
initNullData__8JAIBasicFv: # 0x80301908
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    addi    r7, r5, 0x2520
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x74ec
    lis     r4, 0x8040
    stw     r30, 0x30(sp)
    addi    r30, r31, 0x4
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r4, 0x7550
    addi    r3, r28, 0x0
    lfs     f1, 0x4c0(rtoc)
    lwz     r6, 0x0(r31)
    stfs    f1, 0x0(r6)
    addi    r6, sp, 0xc
    lwz     r5, 0x0(r31)
    stfs    f1, 0x4(r5)
    addi    r5, sp, 0x18
    lfs     f0, 0x4c4(rtoc)
    lwz     r4, 0x0(r31)
    stfs    f0, 0x8(r4)
    lwz     r4, 0x4(r31)
    stfs    f1, 0x0(r4)
    lwz     r4, 0x4(r31)
    stfs    f1, 0x4(r4)
    lwz     r4, 0x4(r31)
    stfs    f0, 0x8(r4)
    stfs    f1, 0x18(sp)
    lfs     f0, 0x4c8(rtoc)
    stfs    f0, 0x1c(sp)
    stfs    f1, 0x20(sp)
    lwz     r4, 0x0(r7)
    lwz     r0, 0x4(r7)
    stw     r4, 0xc(sp)
    stw     r0, 0x10(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x14(sp)
    lwz     r4, 0x0(r31)
    bl      C_MTXLookAt
    li      r8, 0x0
    li      r3, 0x0
    b       branch_0x803019fc

branch_0x803019c4:
    cmplw   r0, r8
    lwz     r7, 0x0(r30)
    lwz     r6, 0x0(r31)
    ble-    branch_0x803019f4
    lwz     r5, 0x8(r29)
    addi    r4, r3, 0x4
    addi    r0, r3, 0x8
    stwx    r6, r5, r3
    lwz     r5, 0x8(r29)
    stwx    r7, r5, r4
    lwz     r4, 0x8(r29)
    stwx    r28, r4, r0
branch_0x803019f4:
    addi    r8, r8, 0x1
    addi    r3, r3, 0xc
branch_0x803019fc:
    lwz     r0, -0x7450(r13)
    cmplw   r8, r0
    blt+    branch_0x803019c4
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl initDriver__8JAIBasicFP12JKRSolidHeapUlUc
initDriver__8JAIBasicFP12JKRSolidHeapUlUc: # 0x80301a28
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r6, 31
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x1
    stw     r30, 0x28(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r5, 0x0
    beq-    branch_0x80301a58
    ori     r31, r31, 0x2
branch_0x80301a58:
    lbz     r3, -0x74cf(r13)
    lbz     r4, -0x74ce(r13)
    bl      setPriority__Q28JASystem11AudioThreadFUcUc
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    bl      start__Q28JASystem11AudioThreadFP12JKRSolidHeapUlUl
    lwz     r3, -0x744c(r13)
    lwz     r4, -0x7448(r13)
    bl      init__Q28JASystem8TrackMgrFii
    bl      reset__Q28JASystem8TrackMgrFv
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl initInterface__8JAIBasicFUc
initInterface__8JAIBasicFUc: # 0x80301aa0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    stb     r4, 0x12(r3)
    bl      initInterfaceMain__8JAIBasicFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initAllocParameter__8JAIBasicFv
initAllocParameter__8JAIBasicFv: # 0x80301ac4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r3, 0x0(r3)
    bl      initData__7JAIDataFv
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x18(r28)
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    slwi    r4, r3, 2
    addi    r3, r28, 0x0
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x28(r28)
    mr      r3, r28
    lwz     r0, -0x7450(r13)
    mulli   r4, r0, 0xc
    bl      allocHeap__8JAIBasicFUl
    stw     r3, 0x8(r28)
    li      r31, 0x0
    addi    r30, r31, 0x0
    lfs     f31, 0x4c8(rtoc)
    li      r29, 0x0
    b       branch_0x80301b58

branch_0x80301b40:
    lwz     r3, 0x18(r28)
    stbx    r30, r3, r29
    addi    r29, r29, 0x1
    lwz     r3, 0x28(r28)
    stfsx   f31, r3, r31
    addi    r31, r31, 0x4
branch_0x80301b58:
    bl      getParamSeCategoryMax__18JAIGlobalParameterFv
    cmplw   r29, r3
    blt+    branch_0x80301b40
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x28
    blr


.globl initSeqsLoadArea__8JAIBasicFv
initSeqsLoadArea__8JAIBasicFv: # 0x80301b88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    stw     r30, 0x18(sp)
    li      r30, 0x0
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    b       branch_0x80301bd4

branch_0x80301bb0:
    mr      r3, r29
    lwz     r4, -0x74a0(r13)
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x0(r29)
    addi    r0, r31, 0x4
    addi    r30, r30, 0x1
    lwz     r4, 0x1ec(r4)
    addi    r31, r31, 0x14
    stwx    r3, r4, r0
branch_0x80301bd4:
    lwz     r0, -0x74a8(r13)
    cmplw   r30, r0
    blt+    branch_0x80301bb0
    mr      r3, r29
    lwz     r4, -0x749c(r13)
    bl      allocHeap__8JAIBasicFUl
    lwz     r4, 0x0(r29)
    lwz     r4, 0x1f0(r4)
    stw     r3, 0x4(r4)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setInitFileLoadSwitch__8JAIBasicFUc
setInitFileLoadSwitch__8JAIBasicFUc: # 0x80301c14
    stb     r4, 0x13(r3)
    blr


.globl startFrameInterfaceWork__8JAIBasicFv
startFrameInterfaceWork__8JAIBasicFv: # 0x80301c1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      processFrameWork__8JAIBasicFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl processFrameWork__8JAIBasicFv
processFrameWork__8JAIBasicFv: # 0x80301c3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    bl      checkDummyPositionBuffer__8JAIBasicFv
    lwz     r3, 0x38(r31)
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x80301ce4
    lbz     r0, 0x1c(r31)
    extrwi. r0, r0, 1, 25
    bne-    branch_0x80301ce4
    lwz     r0, 0x54(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80301ce4
    li      r29, 0x0
    addi    r30, r29, 0x0
    b       branch_0x80301cc0

branch_0x80301c90:
    lwz     r0, 0x8(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80301cb8
    mr      r3, r31
    lwz     r12, 0x4(r31)
    addi    r4, r29, 0x0
    li      r5, 0x0
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
branch_0x80301cb8:
    addi    r29, r29, 0x1
    addi    r30, r30, 0xc
branch_0x80301cc0:
    lwz     r0, 0x54(r31)
    add     r3, r0, r30
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    bne+    branch_0x80301c90
    lbz     r0, 0x1c(r31)
    li      r3, 0x1
    insrwi  r0, r3, 1, 25
    stb     r0, 0x1c(r31)
branch_0x80301ce4:
    lwz     r3, 0x38(r31)
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x4
    blt-    branch_0x80301d08
    mr      r3, r31
    lwz     r12, 0x4(r31)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
branch_0x80301d08:
    mr      r3, r31
    lwz     r12, 0x4(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      checkEntriedSeq__8JAIBasicFv
    mr      r3, r31
    bl      checkFadeoutSeq__8JAIBasicFv
    mr      r3, r31
    bl      checkStoppedSeq__8JAIBasicFv
    mr      r3, r31
    bl      checkSeMovePara__8JAIBasicFv
    mr      r3, r31
    bl      checkPlayingSeq__8JAIBasicFv
    mr      r3, r31
    bl      checkStartedSeq__8JAIBasicFv
    mr      r3, r31
    bl      checkReadSeq__8JAIBasicFv
    mr      r3, r31
    bl      checkSeqWave__8JAIBasicFv
    lbz     r0, 0x1c(r31)
    extrwi. r0, r0, 1, 29
    bne-    branch_0x80301d7c
    mr      r3, r31
    lwz     r12, 0x4(r31)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
branch_0x80301d7c:
    lwz     r3, 0x20(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x20(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl checkStream__8JAIBasicFv
checkStream__8JAIBasicFv: # 0x80301da4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      checkPlayingStream__8JAIBasicFv
    mr      r3, r31
    bl      checkRequestStream__8JAIBasicFv
    mr      r3, r31
    bl      checkWaitStream__8JAIBasicFv
    mr      r3, r31
    bl      checkEntriedStream__8JAIBasicFv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl checkDummyPositionBuffer__8JAIBasicFv
checkDummyPositionBuffer__8JAIBasicFv: # 0x80301de8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r3, 0x0(r3)
    lwz     r31, 0x22c(r3)
    b       branch_0x80301e5c

branch_0x80301e10:
    lwz     r3, 0xc(r31)
    lwz     r30, 0x4(r31)
    subi    r0, r3, 0x1
    stw     r0, 0xc(r31)
    lwz     r0, 0xc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80301e38
    lwz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80301e58
branch_0x80301e38:
    lwz     r3, 0x8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80301e4c
    li      r4, 0x0
    bl      stop__8JAISoundFUl
branch_0x80301e4c:
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      releaseDummyVecPointer__8JAIBasicFP11JAIDummyVec
branch_0x80301e58:
    mr      r31, r30
branch_0x80301e5c:
    cmplwi  r31, 0x0
    bne+    branch_0x80301e10
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl startSoundActor__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
startSoundActor__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc: # 0x80301e80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r28, r5, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    bl      getInfoPointerFromID__8JAIBasicFUl
    addi    r4, r3, 0x0
    addi    r3, r26, 0x0
    addi    r5, r27, 0x0
    bl      getInfoFormat__8JAIBasicFP13JAISoundTableUl
    clrlwi. r0, r3, 31
    beq-    branch_0x80301ee4
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r8, r31, 0x0
    bl      startSoundIndirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
    b       branch_0x80301f00

branch_0x80301ee4:
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r8, r31, 0x0
    bl      startSoundDirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
branch_0x80301f00:
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl startSoundActorReturnHandle__8JAIBasicFUlP8JAIActorUlUc
startSoundActorReturnHandle__8JAIBasicFUlP8JAIActorUlUc: # 0x80301f14
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    stw     r0, 0x1c(sp)
    bl      getInfoPointerFromID__8JAIBasicFUl
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    addi    r5, r28, 0x0
    bl      getInfoFormat__8JAIBasicFP13JAISoundTableUl
    clrlwi. r0, r3, 31
    beq-    branch_0x80301f7c
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r8, r31, 0x0
    addi    r5, sp, 0x1c
    bl      startSoundIndirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
    b       branch_0x80301f98

branch_0x80301f7c:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r8, r31, 0x0
    addi    r5, sp, 0x1c
    bl      startSoundDirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
branch_0x80301f98:
    lwz     r3, 0x1c(sp)
    cmplwi  r3, 0x0
    addi    r31, r3, 0x0
    beq-    branch_0x80301fac
    bl      release__8JAISoundFv
branch_0x80301fac:
    mr      r3, r31
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl startSoundDirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
startSoundDirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc: # 0x80301fc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r3, 0x0
    addi    r28, r5, 0x0
    addi    r27, r4, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    addi    r5, sp, 0x20
    lwz     r3, 0x0(r3)
    bl      getInfoPointer__7JAIDataFUlPPv
    lwz     r9, 0x20(sp)
    cmplwi  r9, 0x0
    beq-    branch_0x80302020
    addi    r3, r26, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r8, r31, 0x0
    bl      startSoundBasic__8JAIBasicFUlPP8JAISoundP8JAIActorUlUcPv
branch_0x80302020:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl startSoundIndirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc
startSoundIndirectID__8JAIBasicFUlPP8JAISoundP8JAIActorUlUc: # 0x80302034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r26, r3, 0x0
    addi    r28, r5, 0x0
    addi    r27, r4, 0x0
    addi    r29, r6, 0x0
    addi    r30, r7, 0x0
    addi    r31, r8, 0x0
    addi    r5, sp, 0x20
    lwz     r3, 0x0(r3)
    bl      getInfoPointer__7JAIDataFUlPPv
    lwz     r9, 0x20(sp)
    cmplwi  r9, 0x0
    beq-    branch_0x80302098
    lhz     r0, 0x6(r9)
    clrrwi  r4, r27, 10
    addi    r3, r26, 0x0
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    addi    r7, r30, 0x0
    addi    r8, r31, 0x0
    add     r4, r4, r0
    bl      startSoundBasic__8JAIBasicFUlPP8JAISoundP8JAIActorUlUcPv
branch_0x80302098:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl startSoundBasic__8JAIBasicFUlPP8JAISoundP8JAIActorUlUcPv
startSoundBasic__8JAIBasicFUlPP8JAISoundP8JAIActorUlUcPv: # 0x803020ac
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    addi    r27, r4, 0x0
    clrrwi  r4, r4, 30
    cmpw    r4, r0
    addi    r26, r3, 0x0
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    addi    r31, r9, 0x0
    beq-    branch_0x803021d4
    bge-    branch_0x803020fc
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x80302210
    b       branch_0x80302108

branch_0x803020fc:
    cmpwi   r4, 0x0
    beq-    branch_0x80302184
    b       branch_0x80302210

branch_0x80302108:
    lbz     r0, 0x1c(r26)
    extrwi  r0, r0, 1, 27
    cmplwi  r0, 0x1
    beq-    branch_0x80302210
    lwz     r3, 0x38(r26)
    cmplwi  r3, 0x0
    beq-    branch_0x80302138
    lwz     r3, 0x8(r3)
    clrlwi  r0, r27, 22
    clrlwi  r3, r3, 22
    cmplw   r3, r0
    beq-    branch_0x80302210
branch_0x80302138:
    cmplwi  r5, 0x0
    bne-    branch_0x8030215c
    addi    r3, r26, 0x0
    addi    r4, r31, 0x0
    bl      getSeqTrackNumber__8JAIBasicFPv
    lwz     r4, 0x0(r26)
    clrlslwi  r0, r3, 24, 2
    lwz     r3, 0x1e0(r4)
    add     r5, r3, r0
branch_0x8030215c:
    lwz     r3, 0x0(r26)
    addi    r4, r5, 0x0
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    addi    r7, r29, 0x0
    addi    r8, r30, 0x0
    addi    r9, r31, 0x0
    addi    r3, r3, 0x1fc
    bl      storeBuffer__11JAISeqEntryFPP8JAISoundP8JAIActorUlUlUcPv
    b       branch_0x80302210

branch_0x80302184:
    lwz     r3, 0x18(r26)
    srwi    r0, r27, 12
    lbzx    r0, r3, r0
    cmplwi  r0, 0x0
    bne-    branch_0x803021c0
    lwz     r3, 0x0(r26)
    addi    r4, r5, 0x0
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    addi    r7, r29, 0x0
    addi    r8, r30, 0x0
    addi    r9, r31, 0x0
    addi    r3, r3, 0x200
    bl      storeBuffer__10JAISeEntryFPP8JAISoundP8JAIActorUlUlUcPv
    b       branch_0x80302210

branch_0x803021c0:
    cmplwi  r5, 0x0
    beq-    branch_0x80302210
    li      r0, 0x0
    stw     r0, 0x0(r5)
    b       branch_0x80302210

branch_0x803021d4:
    lbz     r3, 0x1c(r26)
    extrwi. r0, r3, 1, 29
    bne-    branch_0x80302210
    extrwi  r0, r3, 1, 28
    cmplwi  r0, 0x1
    beq-    branch_0x80302210
    lwz     r3, 0x0(r26)
    addi    r4, r5, 0x0
    addi    r5, r28, 0x0
    addi    r6, r27, 0x0
    addi    r7, r29, 0x0
    addi    r8, r30, 0x0
    addi    r9, r31, 0x0
    addi    r3, r3, 0x204
    bl      storeBuffer__14JAIStreamEntryFPP8JAISoundP8JAIActorUlUlUcPv
branch_0x80302210:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl stopSoundHandle__8JAIBasicFP8JAISoundUl
stopSoundHandle__8JAIBasicFP8JAISoundUl: # 0x80302224
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    mr.     r30, r4
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x803023f8
    lwz     r3, 0x8(r30)
    lis     r0, 0xc000
    clrrwi  r4, r3, 30
    cmpw    r4, r0
    beq-    branch_0x80302378
    bge-    branch_0x80302278
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x803023f8
    b       branch_0x80302284

branch_0x80302278:
    cmpwi   r4, 0x0
    beq-    branch_0x8030232c
    b       branch_0x803023f8

branch_0x80302284:
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x4
    blt-    branch_0x80302298
    cmplwi  r31, 0x0
    bne-    branch_0x803022ec
branch_0x80302298:
    cmplwi  r0, 0x3
    blt-    branch_0x803022b4
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      stopSeq__18JAISystemInterfaceFl
    b       branch_0x803022d4

branch_0x803022b4:
    cmplwi  r0, 0x1
    blt-    branch_0x803022d4
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    mr      r4, r3
    lwz     r3, 0x0(r29)
    lbz     r4, 0x1754(r4)
    bl      releaseAutoHeapPointer__7JAIDataFUc
branch_0x803022d4:
    mr      r3, r30
    bl      clearMainSoundPPointer__8JAISoundFv
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      stopSeq__8JAIBasicFP8JAISound
    b       branch_0x803023f8

branch_0x803022ec:
    lbz     r0, 0x0(r30)
    lwz     r3, 0x0(r29)
    mulli   r0, r0, 0x50
    lwz     r3, 0x180(r3)
    add     r3, r3, r0
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x8(r3)
    lbz     r0, 0x0(r30)
    lwz     r3, 0x0(r29)
    mulli   r0, r0, 0x50
    lwz     r3, 0x180(r3)
    add     r3, r3, r0
    lwz     r3, 0x48(r3)
    stw     r31, 0x10(r3)
    b       branch_0x803023f8

branch_0x8030232c:
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x803023f8
    cmplwi  r31, 0x0
    beq-    branch_0x80302348
    cmplwi  r0, 0x1
    bne-    branch_0x80302358
branch_0x80302348:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      releaseSeRegist__8JAIBasicFP8JAISound
    b       branch_0x803023f8

branch_0x80302358:
    stw     r31, 0x10(r30)
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    lfs     f1, 0x4c0(rtoc)
    li      r4, 0x6
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
    b       branch_0x803023f8

branch_0x80302378:
    cmplwi  r31, 0x0
    bne-    branch_0x803023c8
    bl      stop__Q27JAInter9StreamLibFv
    li      r0, 0x0
    stb     r0, 0x1(r30)
    mr      r3, r30
    lwz     r4, 0x0(r29)
    lwz     r4, 0x184(r4)
    stw     r0, 0x14(r4)
    bl      clearMainSoundPPointer__8JAISoundFv
    mr      r3, r29
    lwz     r4, 0x38(r30)
    bl      releaseStreamParameterPointer__8JAIBasicFP18JAIStreamParameter
    lwz     r4, 0x0(r29)
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    addi    r4, r4, 0x21c
    bl      releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound
    bl      unpauseDvdT__Q28JASystem3DvdFv
    b       branch_0x803023f8

branch_0x803023c8:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803023f8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    lwz     r0, 0x10(r3)
    ori     r0, r0, 0x2
    stw     r0, 0x10(r3)
    stw     r31, 0x10(r30)
branch_0x803023f8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl changeIDToCategory__8JAIBasicFUl
changeIDToCategory__8JAIBasicFUl: # 0x80302414
    extrwi  r3, r4, 8, 12
    blr


.globl stopAllSe__8JAIBasicFUc
stopAllSe__8JAIBasicFUc: # 0x8030241c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    mulli   r0, r0, 0xc
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lwz     r3, 0x0(r3)
    lwz     r3, 0x1e8(r3)
    add     r3, r3, r0
    lwz     r4, 0x4(r3)
    b       branch_0x80302464

branch_0x80302450:
    lwz     r31, 0x30(r4)
    addi    r3, r30, 0x0
    li      r5, 0x0
    bl      stopSoundHandle__8JAIBasicFP8JAISoundUl
    mr      r4, r31
branch_0x80302464:
    cmplwi  r4, 0x0
    bne+    branch_0x80302450
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getControllerHandle__8JAIBasicFP13JAILinkBuffer
getControllerHandle__8JAIBasicFP13JAILinkBuffer: # 0x80302484
    lwz     r3, 0x0(r4)
    addi    r5, r4, 0x4
    cmplwi  r3, 0x0
    beq-    branch_0x803024d4
    lwz     r0, 0x30(r3)
    stw     r0, 0x0(r4)
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x803024b8
    stw     r0, 0x30(r3)
    lwz     r4, 0x0(r5)
    stw     r3, 0x2c(r4)
    b       branch_0x803024c0

branch_0x803024b8:
    li      r0, 0x0
    stw     r0, 0x30(r3)
branch_0x803024c0:
    li      r0, 0x0
    stw     r0, 0x2c(r3)
    stw     r3, 0x0(r5)
    stw     r0, 0x38(r3)
    blr

branch_0x803024d4:
    li      r3, 0x0
    blr


.globl releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound
releaseControllerHandle__8JAIBasicFP13JAILinkBufferP8JAISound: # 0x803024dc
    li      r3, 0x0
    stw     r3, 0x38(r5)
    addi    r6, r4, 0x4
    stw     r3, 0x34(r5)
    lwz     r0, 0x4(r4)
    cmplw   r0, r5
    beq-    branch_0x8030251c
    lwz     r0, 0x30(r5)
    lwz     r3, 0x2c(r5)
    stw     r0, 0x30(r3)
    lwz     r3, 0x30(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x80302534
    lwz     r0, 0x2c(r5)
    stw     r0, 0x2c(r3)
    b       branch_0x80302534

branch_0x8030251c:
    lwz     r0, 0x30(r5)
    stw     r0, 0x0(r6)
    lwz     r6, 0x30(r5)
    cmplwi  r6, 0x0
    beq-    branch_0x80302534
    stw     r3, 0x2c(r6)
branch_0x80302534:
    lwz     r0, 0x0(r4)
    stw     r0, 0x30(r5)
    lwz     r3, 0x30(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x8030254c
    stw     r5, 0x2c(r3)
branch_0x8030254c:
    stw     r5, 0x0(r4)
    blr


.globl getStreamParameter__8JAIBasicFv
getStreamParameter__8JAIBasicFv: # 0x80302554
    lwz     r3, 0x0(r3)
    addi    r4, r3, 0x1d4
    lwz     r5, 0x1d4(r3)
    addi    r6, r3, 0x1d8
    lwz     r0, 0x3dc(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x803025ac
    stw     r0, 0x0(r4)
    mr      r3, r5
    lwz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x80302594
    stw     r0, 0x3dc(r3)
    lwz     r4, 0x0(r6)
    stw     r3, 0x3d8(r4)
    b       branch_0x8030259c

branch_0x80302594:
    li      r0, 0x0
    stw     r0, 0x3dc(r3)
branch_0x8030259c:
    li      r0, 0x0
    stw     r0, 0x3d8(r3)
    stw     r3, 0x0(r6)
    blr

branch_0x803025ac:
    li      r3, 0x0
    blr


.globl releaseStreamParameterPointer__8JAIBasicFP18JAIStreamParameter
releaseStreamParameterPointer__8JAIBasicFP18JAIStreamParameter: # 0x803025b4
    lwz     r3, 0x0(r3)
    addi    r5, r3, 0x1d8
    lwz     r0, 0x1d8(r3)
    addi    r6, r3, 0x1d4
    cmplw   r0, r4
    beq-    branch_0x803025f0
    lwz     r0, 0x3dc(r4)
    lwz     r3, 0x3d8(r4)
    stw     r0, 0x3dc(r3)
    lwz     r3, 0x3dc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x8030260c
    lwz     r0, 0x3d8(r4)
    stw     r0, 0x3d8(r3)
    b       branch_0x8030260c

branch_0x803025f0:
    lwz     r0, 0x3dc(r4)
    stw     r0, 0x0(r5)
    lwz     r3, 0x3dc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x8030260c
    li      r0, 0x0
    stw     r0, 0x3d8(r3)
branch_0x8030260c:
    lwz     r0, 0x0(r6)
    stw     r0, 0x3dc(r4)
    lwz     r3, 0x3dc(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80302624
    stw     r4, 0x3d8(r3)
branch_0x80302624:
    stw     r4, 0x0(r6)
    blr


.globl getSeqParametermeterPointer__8JAIBasicFv
getSeqParametermeterPointer__8JAIBasicFv: # 0x8030262c
    lwz     r3, 0x0(r3)
    addi    r4, r3, 0x1bc
    lwz     r5, 0x1bc(r3)
    addi    r6, r3, 0x1c0
    lwz     r0, 0x1858(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80302684
    stw     r0, 0x0(r4)
    mr      r3, r5
    lwz     r0, 0x0(r6)
    cmplwi  r0, 0x0
    beq-    branch_0x8030266c
    stw     r0, 0x1858(r3)
    lwz     r4, 0x0(r6)
    stw     r3, 0x1854(r4)
    b       branch_0x80302674

branch_0x8030266c:
    li      r0, 0x0
    stw     r0, 0x1858(r3)
branch_0x80302674:
    li      r0, 0x0
    stw     r0, 0x1854(r3)
    stw     r3, 0x0(r6)
    blr

branch_0x80302684:
    li      r3, 0x0
    blr


.globl releaseSeqParameterPointer__8JAIBasicFP15JAISeqParameter
releaseSeqParameterPointer__8JAIBasicFP15JAISeqParameter: # 0x8030268c
    lwz     r3, 0x0(r3)
    addi    r5, r3, 0x1c0
    lwz     r0, 0x1c0(r3)
    addi    r6, r3, 0x1bc
    cmplw   r0, r4
    beq-    branch_0x803026c8
    lwz     r0, 0x1858(r4)
    lwz     r3, 0x1854(r4)
    stw     r0, 0x1858(r3)
    lwz     r3, 0x1858(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x803026e4
    lwz     r0, 0x1854(r4)
    stw     r0, 0x1854(r3)
    b       branch_0x803026e4

branch_0x803026c8:
    lwz     r0, 0x1858(r4)
    stw     r0, 0x0(r5)
    lwz     r3, 0x1858(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x803026e4
    li      r0, 0x0
    stw     r0, 0x1854(r3)
branch_0x803026e4:
    lwz     r0, 0x0(r6)
    stw     r0, 0x1858(r4)
    lwz     r3, 0x1858(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x803026fc
    stw     r4, 0x1854(r3)
branch_0x803026fc:
    stw     r4, 0x0(r6)
    blr


.globl getSeParametermeterPointer__8JAIBasicFv
getSeParametermeterPointer__8JAIBasicFv: # 0x80302704
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r4, 0x0(r3)
    lwz     r6, 0x1c8(r4)
    addi    r5, r4, 0x1c8
    addi    r7, r4, 0x1cc
    cmplwi  r6, 0x0
    beq-    branch_0x80302778
    lwz     r0, 0x440(r6)
    mr      r31, r6
    stw     r0, 0x0(r5)
    lwz     r0, 0x0(r7)
    cmplwi  r0, 0x0
    beq-    branch_0x80302754
    stw     r0, 0x440(r31)
    lwz     r4, 0x0(r7)
    stw     r31, 0x43c(r4)
    b       branch_0x8030275c

branch_0x80302754:
    li      r0, 0x0
    stw     r0, 0x440(r31)
branch_0x8030275c:
    li      r0, 0x0
    stw     r0, 0x43c(r31)
    mr      r4, r31
    stw     r31, 0x0(r7)
    lwz     r3, 0x0(r3)
    bl      initSePara__7JAIDataFP14JAISeParameter
    b       branch_0x8030277c

branch_0x80302778:
    li      r31, 0x0
branch_0x8030277c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl releaseSeParameterPointer__8JAIBasicFP14JAISeParameter
releaseSeParameterPointer__8JAIBasicFP14JAISeParameter: # 0x80302794
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r3, 0x0(r3)
    addi    r5, r3, 0x1cc
    lwz     r0, 0x1cc(r3)
    addi    r6, r3, 0x1c8
    cmplw   r0, r4
    beq-    branch_0x803027d8
    lwz     r0, 0x440(r4)
    lwz     r3, 0x43c(r4)
    stw     r0, 0x440(r3)
    lwz     r3, 0x440(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x803027f4
    lwz     r0, 0x43c(r4)
    stw     r0, 0x43c(r3)
    b       branch_0x803027f4

branch_0x803027d8:
    lwz     r0, 0x440(r4)
    stw     r0, 0x0(r5)
    lwz     r3, 0x440(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x803027f4
    li      r0, 0x0
    stw     r0, 0x43c(r3)
branch_0x803027f4:
    lwz     r0, 0x0(r6)
    stw     r0, 0x440(r4)
    lwz     r3, 0x440(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x8030280c
    stw     r4, 0x43c(r3)
branch_0x8030280c:
    stw     r4, 0x0(r6)
    blr


.globl releaseDummyVecPointer__8JAIBasicFP11JAIDummyVec
releaseDummyVecPointer__8JAIBasicFP11JAIDummyVec: # 0x80302814
    lwz     r3, 0x0(r3)
    addi    r5, r3, 0x22c
    lwz     r0, 0x22c(r3)
    addi    r6, r3, 0x228
    cmplw   r0, r4
    beq-    branch_0x80302850
    lwz     r0, 0x4(r4)
    lwz     r3, 0x0(r4)
    stw     r0, 0x4(r3)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x8030286c
    lwz     r0, 0x0(r4)
    stw     r0, 0x0(r3)
    b       branch_0x8030286c

branch_0x80302850:
    lwz     r0, 0x4(r4)
    stw     r0, 0x0(r5)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x8030286c
    li      r0, 0x0
    stw     r0, 0x0(r3)
branch_0x8030286c:
    lwz     r0, 0x0(r6)
    stw     r0, 0x4(r4)
    lwz     r3, 0x4(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80302884
    stw     r4, 0x0(r3)
branch_0x80302884:
    stw     r4, 0x0(r6)
    blr


.globl getMapInfoFxline__8JAIBasicFUl
getMapInfoFxline__8JAIBasicFUl: # 0x8030288c
    cmplwi  r4, 0x0
    bne-    branch_0x8030289c
    li      r3, 0x0
    blr

branch_0x8030289c:
    li      r3, 0x1
    blr


.globl getMapInfoGround__8JAIBasicFUl
getMapInfoGround__8JAIBasicFUl: # 0x803028a4
    cmplwi  r4, 0x0
    bne-    branch_0x803028b4
    li      r3, 0x0
    blr

branch_0x803028b4:
    li      r3, 0x1
    blr


.globl getMapInfoFxParameter__8JAIBasicFUl
getMapInfoFxParameter__8JAIBasicFUl: # 0x803028bc
    cmplwi  r4, 0x0
    bne-    branch_0x803028cc
    lfs     f1, 0x4c0(rtoc)
    blr

branch_0x803028cc:
    lfs     f1, 0x4c8(rtoc)
    blr


.globl getInfoPointerFromID__8JAIBasicFUl
getInfoPointerFromID__8JAIBasicFUl: # 0x803028d4
    lwz     r5, 0x0(r3)
    lbz     r0, 0x1b0(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x803028f0
    addi    r0, r5, 0x88
    stw     r0, -0x5d8c(r13)
    b       branch_0x80302944

branch_0x803028f0:
    clrrwi  r4, r4, 30
    lis     r0, 0xc000
    cmpw    r4, r0
    beq-    branch_0x8030293c
    bge-    branch_0x80302918
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x80302944
    b       branch_0x80302930

branch_0x80302918:
    cmpwi   r4, 0x0
    beq-    branch_0x80302924
    b       branch_0x80302944

branch_0x80302924:
    addi    r0, r5, 0x88
    stw     r0, -0x5d8c(r13)
    b       branch_0x80302944

branch_0x80302930:
    addi    r0, r5, 0xc
    stw     r0, -0x5d8c(r13)
    b       branch_0x80302944

branch_0x8030293c:
    addi    r0, r5, 0x104
    stw     r0, -0x5d8c(r13)
branch_0x80302944:
    lwz     r3, -0x5d8c(r13)
    blr


.globl getInfoFormat__8JAIBasicFP13JAISoundTableUl
getInfoFormat__8JAIBasicFP13JAISoundTableUl: # 0x8030294c
    clrrwi  r6, r5, 30
    lis     r0, 0xc000
    cmpw    r6, r0
    li      r3, 0x0
    beq-    branch_0x80302998
    bge-    branch_0x80302978
    lis     r5, 0x8000
    addi    r0, r5, 0x1
    cmpw    r6, r0
    bgelr-    

    b       branch_0x8030298c

branch_0x80302978:
    cmpwi   r6, 0x0
    bnelr-    

    lwz     r3, 0x78(r4)
    lbz     r3, 0x0(r3)
    blr

branch_0x8030298c:
    lwz     r3, 0x78(r4)
    lbz     r3, 0x1(r3)
    blr

branch_0x80302998:
    lwz     r3, 0x78(r4)
    lbz     r3, 0x2(r3)
    blr


.globl setSeCategoryVolume__8JAIBasicFUcUc
setSeCategoryVolume__8JAIBasicFUcUc: # 0x803029a4
    stwu    sp, -0x18(sp)
    clrlwi  r0, r5, 24
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfd     f2, 0x4d0(rtoc)
    stw     r0, 0x10(sp)
    clrlslwi  r0, r4, 24, 2
    lfs     f0, 0x4cc(rtoc)
    lfd     f1, 0x10(sp)
    addi    sp, sp, 0x18
    lwz     r3, 0x28(r3)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    stfsx   f0, r3, r0
    blr


.globl setParameterSeqSync__8JAIBasicFPQ28JASystem6TTrackUs
setParameterSeqSync__8JAIBasicFPQ28JASystem6TTrackUs: # 0x803029e0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    cmpwi   r0, 0x1
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    addi    r28, r3, 0x0
    li      r29, 0x0
    beq-    branch_0x80302af8
    bge-    branch_0x80302a14
    cmpwi   r0, 0x0
    bge-    branch_0x80302a20
    b       branch_0x80302b98

branch_0x80302a14:
    cmpwi   r0, 0x7f
    beq-    branch_0x80302b84
    b       branch_0x80302b98

branch_0x80302a20:
    clrlwi  r31, r0, 31
    li      r26, 0x0
    b       branch_0x80302ae8

branch_0x80302a2c:
    lwz     r3, -0x5d90(r13)
    mulli   r30, r26, 0x50
    lwz     r3, 0x0(r3)
    addi    r27, r30, 0x48
    lwz     r3, 0x180(r3)
    lwzx    r3, r3, r27
    cmplwi  r3, 0x0
    beq-    branch_0x80302ae4
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    lwz     r0, 0x2c0(r28)
    cmplw   r3, r0
    bne-    branch_0x80302ae4
    lwz     r4, 0x308(r28)
    lwz     r3, -0x5d90(r13)
    bl      routeToTrack__8JAIBasicFUl
    lwz     r5, -0x5d90(r13)
    mr      r26, r3
    lwz     r4, 0x0(r5)
    mr      r3, r5
    lwz     r4, 0x180(r4)
    lwzx    r4, r4, r27
    lwz     r4, 0x8(r4)
    bl      getSoundInfoFromID__8JAIBasicFUl
    lwz     r6, -0x5d90(r13)
    mr      r4, r28
    lwz     r0, 0x0(r3)
    mr      r5, r26
    lwz     r3, 0x0(r6)
    extrwi  r6, r0, 16, 8
    lwz     r0, 0x180(r3)
    addi    r7, r31, 0x0
    add     r3, r0, r30
    bl      outerInit__18JAISystemInterfaceFP16JAISeqUpdateDataPvUlUsUc
    lwz     r3, -0x5d90(r13)
    li      r0, 0x1
    addi    r4, r30, 0x4
    lwz     r3, 0x0(r3)
    slw     r0, r0, r26
    li      r29, 0x0
    lwz     r5, 0x180(r3)
    lwzx    r3, r5, r4
    or      r0, r3, r0
    stwx    r0, r5, r4
    lwz     r26, -0x74b8(r13)
branch_0x80302ae4:
    addi    r26, r26, 0x1
branch_0x80302ae8:
    lwz     r0, -0x74b8(r13)
    cmplw   r26, r0
    blt+    branch_0x80302a2c
    b       branch_0x80302b98

branch_0x80302af8:
    lwz     r0, 0x308(r28)
    li      r4, 0x1
    lwz     r3, -0x5d90(r13)
    clrlwi  r0, r0, 24
    lwz     r26, 0x304(r28)
    lwz     r3, 0x0(r3)
    mulli   r0, r0, 0x18
    lwz     r5, 0x0(r3)
    addi    r3, r26, 0x0
    add     r28, r5, r0
    lfs     f1, 0x4(r28)
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lfs     f1, 0x10(r28)
    addi    r3, r26, 0x0
    li      r4, 0x8
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lfs     f1, 0x8(r28)
    addi    r3, r26, 0x0
    li      r4, 0x2
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lfs     f1, 0xc(r28)
    addi    r3, r26, 0x0
    li      r4, 0x4
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    lwz     r3, -0x5d90(r13)
    lbz     r0, 0x14(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x80302b70
    lfs     f1, 0x4c0(rtoc)
    b       branch_0x80302b74

branch_0x80302b70:
    lfs     f1, 0x14(r28)
branch_0x80302b74:
    addi    r3, r26, 0x0
    li      r4, 0x10
    bl      setParam__Q38JASystem6TTrack11TOuterParamFUcf
    b       branch_0x80302b98

branch_0x80302b84:
    lwz     r5, -0x5d90(r13)
    addi    r3, r28, 0x0
    li      r4, 0x0
    lbz     r5, 0x10(r5)
    bl      writePortApp__Q28JASystem6TTrackFUlUs
branch_0x80302b98:
    mr      r3, r29
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getSoundInfoFromID__8JAIBasicFUl
getSoundInfoFromID__8JAIBasicFUl: # 0x80302bb0
    mflr    r0
    subi    r5, r13, 0x5d88
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r3)
    bl      getInfoPointer__7JAIDataFUlPPv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    lwz     r3, -0x5d88(r13)
    mtlr    r0
    blr


.globl getSeqTrackNumber__8JAIBasicFPv
getSeqTrackNumber__8JAIBasicFPv: # 0x80302bdc
    lbz     r3, 0x5(r4)
    blr


.globl getSoundPrioity__8JAIBasicFPv
getSoundPrioity__8JAIBasicFPv: # 0x80302be4
    lbz     r3, 0x4(r4)
    blr


.globl getSoundSwBit__8JAIBasicFPv
getSoundSwBit__8JAIBasicFPv: # 0x80302bec
    lwz     r3, 0x0(r4)
    blr


.globl setSeExtParameter__8JAIBasicFP8JAISound
setSeExtParameter__8JAIBasicFP8JAISound: # 0x80302bf4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr.     r31, r4
    stw     r30, 0x28(sp)
    beq-    branch_0x80302d88
    lwz     r5, 0x0(r3)
    lwz     r3, 0x8(r31)
    lbz     r0, 0x1b0(r5)
    cmplwi  r0, 0x0
    bne-    branch_0x80302c30
    addi    r0, r5, 0x88
    stw     r0, -0x5d8c(r13)
    b       branch_0x80302c84

branch_0x80302c30:
    clrrwi  r4, r3, 30
    lis     r0, 0xc000
    cmpw    r4, r0
    beq-    branch_0x80302c7c
    bge-    branch_0x80302c58
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x80302c84
    b       branch_0x80302c70

branch_0x80302c58:
    cmpwi   r4, 0x0
    beq-    branch_0x80302c64
    b       branch_0x80302c84

branch_0x80302c64:
    addi    r0, r5, 0x88
    stw     r0, -0x5d8c(r13)
    b       branch_0x80302c84

branch_0x80302c70:
    addi    r0, r5, 0xc
    stw     r0, -0x5d8c(r13)
    b       branch_0x80302c84

branch_0x80302c7c:
    addi    r0, r5, 0x104
    stw     r0, -0x5d8c(r13)
branch_0x80302c84:
    lwz     r3, 0x8(r31)
    lis     r0, 0xc000
    lwz     r5, -0x5d8c(r13)
    li      r6, 0x0
    clrrwi  r4, r3, 30
    cmpw    r4, r0
    beq-    branch_0x80302cdc
    bge-    branch_0x80302cb8
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x80302ce4
    b       branch_0x80302cd0

branch_0x80302cb8:
    cmpwi   r4, 0x0
    beq-    branch_0x80302cc4
    b       branch_0x80302ce4

branch_0x80302cc4:
    lwz     r3, 0x78(r5)
    lbz     r6, 0x0(r3)
    b       branch_0x80302ce4

branch_0x80302cd0:
    lwz     r3, 0x78(r5)
    lbz     r6, 0x1(r3)
    b       branch_0x80302ce4

branch_0x80302cdc:
    lwz     r3, 0x78(r5)
    lbz     r6, 0x2(r3)
branch_0x80302ce4:
    rlwinm. r0, r6, 0, 29, 29
    clrlwi  r30, r6, 24
    beq-    branch_0x80302d28
    lwz     r4, 0x3c(r31)
    lis     r0, 0x4330
    lfd     f2, 0x4d0(rtoc)
    mr      r3, r31
    lbz     r5, 0xc(r4)
    lfs     f0, 0x4cc(rtoc)
    li      r4, 0x0
    stw     r5, 0x24(sp)
    li      r5, 0x1
    stw     r0, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setVolume__8JAISoundFfUlUc
branch_0x80302d28:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x80302d68
    lwz     r4, 0x3c(r31)
    lis     r0, 0x4330
    lfd     f2, 0x4d0(rtoc)
    mr      r3, r31
    lbz     r5, 0xd(r4)
    lfs     f0, 0x4cc(rtoc)
    li      r4, 0x0
    stw     r5, 0x24(sp)
    li      r5, 0x1
    stw     r0, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setFxmix__8JAISoundFfUlUc
branch_0x80302d68:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80302d88
    lwz     r5, 0x3c(r31)
    addi    r3, r31, 0x0
    li      r4, 0x0
    lfs     f1, 0x8(r5)
    li      r5, 0x1
    bl      setPitch__8JAISoundFfUlUc
branch_0x80302d88:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl routeToTrack__8JAIBasicFUl
routeToTrack__8JAIBasicFUl: # 0x80302da0
    clrrwi. r3, r4, 28
    li      r5, 0x0
    bne-    branch_0x80302db4
    li      r3, 0x0
    blr

branch_0x80302db4:
    addis   r0, r3, 0xf000
    cmplwi  r0, 0x0
    bne-    branch_0x80302dc8
    li      r5, 0xf
    b       branch_0x80302dd8

branch_0x80302dc8:
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x0
    bne-    branch_0x80302dd8
    li      r5, 0xff
branch_0x80302dd8:
    and     r3, r4, r5
    blr


.globl initHeap__8JAIBasicFv
initHeap__8JAIBasicFv: # 0x80302de0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    lwz     r0, -0x5ccc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80302e14
    lwz     r4, -0x5b30(r13)
    mr      r3, r0
    li      r5, 0x0
    bl      create__12JKRSolidHeapFUlP7JKRHeapb
    stw     r3, 0xc(r31)
branch_0x80302e14:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl allocHeap__8JAIBasicFUl
allocHeap__8JAIBasicFUl: # 0x80302e28
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x5ccc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80302e58
    lwz     r4, 0xc(r3)
    addi    r3, r5, 0x0
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    b       branch_0x80302e60

branch_0x80302e58:
    mr      r3, r5
    bl      allocFromSysDram__Q28JASystem6KernelFUl
branch_0x80302e60:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeSound__8JAIBasicFUl
makeSound__8JAIBasicFUl: # 0x80302e70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r0, 0xc(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80302ec0
    addi    r31, r4, 0x0
    mulli   r3, r31, 0x44
    mr      r4, r0
    addi    r3, r3, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    subi    r4, r4, 0x5c78
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x44
    bl      __construct_new_array
    b       branch_0x80302ef0

branch_0x80302ec0:
    mr      r31, r4
    lwz     r4, -0x5b30(r13)
    mulli   r3, r31, 0x44
    addi    r3, r3, 0x8
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lis     r4, 0x8031
    subi    r4, r4, 0x5c78
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0x44
    bl      __construct_new_array
branch_0x80302ef0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadDVDFile__8JAIBasicFPc
loadDVDFile__8JAIBasicFPc: # 0x80302f04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    bl      checkFile__Q28JASystem3DvdFPc
    cmplwi  r3, 0x0
    bne-    branch_0x80302f38
    li      r3, 0x0
    b       branch_0x80302f70

branch_0x80302f38:
    lwz     r0, -0x5ccc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80302f58
    lwz     r4, 0xc(r31)
    li      r5, 0x20
    bl      __nwa__FUlP7JKRHeapi
    mr      r31, r3
    b       branch_0x80302f60

branch_0x80302f58:
    bl      allocFromSysDram__Q28JASystem6KernelFUl
    mr      r31, r3
branch_0x80302f60:
    addi    r4, r31, 0x0
    addi    r3, r30, 0x0
    bl      loadFile__Q28JASystem3DvdFPcPv
    mr      r3, r31
branch_0x80302f70:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl loadTmpDVDFile__8JAIBasicFPcPPUc
loadTmpDVDFile__8JAIBasicFPcPPUc: # 0x80302f88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r3, r30, 0x0
    bl      checkFile__Q28JASystem3DvdFPc
    mr.     r4, r3
    bne-    branch_0x80302fc0
    li      r0, 0x0
    stw     r0, 0x0(r31)
    b       branch_0x80302fe8

branch_0x80302fc0:
    lwz     r3, -0x5b30(r13)
    li      r5, -0x20
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    stw     r3, 0x0(r31)
    mr      r3, r30
    lwz     r4, 0x0(r31)
    bl      loadFile__Q28JASystem3DvdFPcPv
branch_0x80302fe8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl deleteTmpDVDFile__8JAIBasicFPPUc
deleteTmpDVDFile__8JAIBasicFPPUc: # 0x80303000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8030302c
    lwz     r3, -0x5b30(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x8030302c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadArcSeqData__8JAIBasicFUlb
loadArcSeqData__8JAIBasicFUlb: # 0x8030303c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r25, 0x24(sp)
    clrlwi  r31, r4, 22
    addi    r26, r3, 0x0
    addi    r25, r4, 0x0
    addi    r27, r5, 0x0
    addi    r3, r31, 0x0
    bl      checkSize__Q28JASystem5VloadFUl
    mr      r0, r3
    lwz     r3, 0x0(r26)
    mr      r30, r0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      checkOnMemory__7JAIDataFUlPUc
    mr      r0, r3
    lwz     r3, 0x0(r26)
    addi    r4, r25, 0x0
    mr      r29, r0
    subi    r5, r13, 0x5d88
    bl      getInfoPointer__7JAIDataFUlPPv
    lwz     r3, -0x5d88(r13)
    cmplwi  r29, 0x0
    lwz     r25, 0x0(r3)
    bne-    branch_0x80303194
    rlwinm. r0, r25, 0, 27, 27
    beq-    branch_0x803030c4
    lwz     r3, 0x0(r26)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      getFreeStayHeapPointer__7JAIDataFUlUl
    addi    r29, r3, 0x0
    li      r28, 0xff
branch_0x803030c4:
    cmplwi  r29, 0x0
    beq-    branch_0x803030d4
    rlwinm. r0, r25, 0, 26, 26
    beq-    branch_0x80303120
branch_0x803030d4:
    lwz     r3, 0x0(r26)
    bl      checkUsefulAutoHeapPosition__7JAIDataFv
    lwz     r0, -0x74a8(r13)
    addi    r28, r3, 0x0
    clrlwi  r3, r3, 24
    cmplw   r3, r0
    blt-    branch_0x803030f8
    li      r3, -0x1
    b       branch_0x80303198

branch_0x803030f8:
    lwz     r0, -0x74a0(r13)
    cmplw   r30, r0
    blt-    branch_0x8030310c
    li      r3, -0x1
    b       branch_0x80303198

branch_0x8030310c:
    lwz     r3, 0x0(r26)
    addi    r4, r28, 0x0
    addi    r5, r31, 0x0
    bl      getFreeAutoHeapPointer__7JAIDataFUcUl
    mr      r29, r3
branch_0x80303120:
    rlwinm. r0, r25, 0, 25, 25
    bne-    branch_0x80303174
    lwz     r3, 0x0(r26)
    addi    r4, r28, 0x0
    li      r5, 0x1
    bl      setAutoHeapLoadedFlag__7JAIDataFUcUc
    lis     r3, 0x8031
    lwz     r0, 0x2c(r26)
    clrlwi  r4, r27, 24
    subi    r7, r3, 0x7d70
    ori     r3, r4, 0xfe
    insrwi  r3, r31, 16, 0
    addi    r8, r3, 0x0
    insrwi  r8, r28, 8, 16
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    add     r3, r0, r31
    li      r5, 0x0
    bl      loadFileAsync__Q28JASystem5VloadFUlPUcUlUlPFUl_vUl
    li      r3, 0x1
    b       branch_0x80303198

branch_0x80303174:
    lwz     r0, 0x2c(r26)
    addi    r4, r29, 0x0
    addi    r6, r30, 0x0
    add     r3, r0, r31
    li      r5, 0x0
    bl      loadFile__Q28JASystem5VloadFUlPUcUlUl
    li      r3, 0x2
    b       branch_0x80303198

branch_0x80303194:
    li      r3, 0x0
branch_0x80303198:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __sinit_JAIBasic_cpp
__sinit_JAIBasic_cpp: # 0x803031ac
    lis     r5, 0x8040
    lis     r3, 0x8040
    lis     r4, 0x8040
    addi    r0, r5, 0x7580
    addi    r5, r3, 0x74ec
    lis     r3, 0x8040
    stw     r0, 0x0(r5)
    addi    r0, r4, 0x758c
    stw     r0, 0x4(r5)
    addi    r0, r3, 0x7550
    stw     r0, 0x8(r5)
    blr

