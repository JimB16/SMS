
.globl setParamInitDataPointer__18JAIGlobalParameterFPv
setParamInitDataPointer__18JAIGlobalParameterFPv: # 0x8030a218
    lwz     r4, -0x5d90(r13)
    li      r0, 0x4
    stw     r3, 0x4c(r4)
    lwz     r3, -0x5d90(r13)
    stb     r0, 0x13(r3)
    blr


.globl setParamSeqPlayTrackMax__18JAIGlobalParameterFUl
setParamSeqPlayTrackMax__18JAIGlobalParameterFUl: # 0x8030a230
    slwi    r0, r3, 1
    stw     r3, -0x74b8(r13)
    stw     r0, -0x74b4(r13)
    blr


.globl setParamSeqControlBufferMax__18JAIGlobalParameterFUl
setParamSeqControlBufferMax__18JAIGlobalParameterFUl: # 0x8030a240
    stw     r3, -0x74b4(r13)
    blr


.globl setParamAutoHeapMax__18JAIGlobalParameterFUl
setParamAutoHeapMax__18JAIGlobalParameterFUl: # 0x8030a248
    stw     r3, -0x74a8(r13)
    blr


.globl setParamStayHeapMax__18JAIGlobalParameterFUl
setParamStayHeapMax__18JAIGlobalParameterFUl: # 0x8030a250
    stw     r3, -0x74a4(r13)
    blr


.globl setParamInputGainDown__18JAIGlobalParameterFf
setParamInputGainDown__18JAIGlobalParameterFf: # 0x8030a258
    stfs    f1, -0x7478(r13)
    blr


.globl setParamOutputGainUp__18JAIGlobalParameterFf
setParamOutputGainUp__18JAIGlobalParameterFf: # 0x8030a260
    stfs    f1, -0x7474(r13)
    blr


.globl setParamDistanceMax__18JAIGlobalParameterFf
setParamDistanceMax__18JAIGlobalParameterFf: # 0x8030a268
    stfs    f1, -0x7470(r13)
    blr


.globl setParamMaxVolumeDistance__18JAIGlobalParameterFf
setParamMaxVolumeDistance__18JAIGlobalParameterFf: # 0x8030a270
    stfs    f1, -0x746c(r13)
    blr


.globl setParamMinDistanceVolume__18JAIGlobalParameterFf
setParamMinDistanceVolume__18JAIGlobalParameterFf: # 0x8030a278
    stfs    f1, -0x5cc4(r13)
    blr


.globl setParamStreamInsideBufferCut__18JAIGlobalParameterFb
setParamStreamInsideBufferCut__18JAIGlobalParameterFb: # 0x8030a280
    lwz     r4, -0x5d90(r13)
    lbz     r0, 0x1c(r4)
    insrwi  r0, r3, 1, 30
    stb     r0, 0x1c(r4)
    blr


.globl setParamAutoHeapRoomSize__18JAIGlobalParameterFUl
setParamAutoHeapRoomSize__18JAIGlobalParameterFUl: # 0x8030a294
    stw     r3, -0x74a0(r13)
    blr


.globl setParamStayHeapSize__18JAIGlobalParameterFUl
setParamStayHeapSize__18JAIGlobalParameterFUl: # 0x8030a29c
    stw     r3, -0x749c(r13)
    blr


.globl setParamInitDataFileName__18JAIGlobalParameterFPc
setParamInitDataFileName__18JAIGlobalParameterFPc: # 0x8030a2a4
    stw     r3, -0x748c(r13)
    blr


.globl setParamWavePath__18JAIGlobalParameterFPc
setParamWavePath__18JAIGlobalParameterFPc: # 0x8030a2ac
    stw     r3, -0x7488(r13)
    blr


.globl setParamSequenceArchivesPath__18JAIGlobalParameterFPc
setParamSequenceArchivesPath__18JAIGlobalParameterFPc: # 0x8030a2b4
    stw     r3, -0x7484(r13)
    blr


.globl setParamStreamPath__18JAIGlobalParameterFPc
setParamStreamPath__18JAIGlobalParameterFPc: # 0x8030a2bc
    stw     r3, -0x7480(r13)
    blr


.globl setParamSystemTrackMax__18JAIGlobalParameterFl
setParamSystemTrackMax__18JAIGlobalParameterFl: # 0x8030a2c4
    stw     r3, -0x744c(r13)
    blr


.globl setParamSystemRootTrackMax__18JAIGlobalParameterFl
setParamSystemRootTrackMax__18JAIGlobalParameterFl: # 0x8030a2cc
    stw     r3, -0x7448(r13)
    blr


.globl setParamSoundOutputMode__18JAIGlobalParameterFUl
setParamSoundOutputMode__18JAIGlobalParameterFUl: # 0x8030a2d4
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    li      r5, 0x1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x0
    beq-    branch_0x8030a31c
    bge-    branch_0x8030a304
    cmpwi   r3, 0x0
    bge-    branch_0x8030a310
    b       branch_0x8030a330

branch_0x8030a304:
    cmpwi   r3, 0x3
    bge-    branch_0x8030a330
    b       branch_0x8030a328

branch_0x8030a310:
    li      r5, 0x0
    li      r31, 0x0
    b       branch_0x8030a330

branch_0x8030a31c:
    li      r5, 0x1
    li      r31, 0x1
    b       branch_0x8030a330

branch_0x8030a328:
    li      r5, 0x2
    li      r31, 0x1
branch_0x8030a330:
    lwz     r4, -0x5d90(r13)
    clrlwi  r0, r3, 24
    addi    r3, r5, 0x0
    stb     r0, 0x14(r4)
    bl      setOutputMode__Q28JASystem6DriverFUl
    mr      r3, r31
    bl      setOutputMode__Q27JAInter9StreamLibFUl
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl getParamSeCategoryMax__18JAIGlobalParameterFv
getParamSeCategoryMax__18JAIGlobalParameterFv: # 0x8030a360
    lwz     r3, -0x5d90(r13)
    lwz     r3, 0x0(r3)
    lbz     r3, 0x89(r3)
    blr


.globl getParamSeqTrackMax__18JAIGlobalParameterFv
getParamSeqTrackMax__18JAIGlobalParameterFv: # 0x8030a370
    lwz     r3, -0x74bc(r13)
    blr


.globl getParamOutputGainUp__18JAIGlobalParameterFv
getParamOutputGainUp__18JAIGlobalParameterFv: # 0x8030a378
    lfs     f1, -0x7474(r13)
    blr


.globl getParamMaxVolumeDistance__18JAIGlobalParameterFv
getParamMaxVolumeDistance__18JAIGlobalParameterFv: # 0x8030a380
    lfs     f1, -0x746c(r13)
    blr

