
.globl load__7TParamsFPCc
load__7TParamsFPCc: # 0x802a4594
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r26, 0x48(sp)
    mr      r26, r4
    addi    r30, r3, 0x0
    li      r27, 0x0
    lbz     r0, 0x0(r4)
    cmpwi   r0, 0x2f
    bne-    branch_0x802a45c0
    addi    r26, r26, 0x1
branch_0x802a45c0:
    lwz     r3, R13Off_m0x604c(r13)
    li      r31, 0x0
    cmplwi  r3, 0x0
    beq-    branch_0x802a460c
    lwz     r12, 0x0(r3)
    lis     r4, SceneParamsDir@h
    addi    r4, r4, SceneParamsDir@l
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x802a460c
    lwz     r3, R13Off_m0x604c(r13)
    mr      r4, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r31, r3
branch_0x802a460c:
    cmplwi  r31, 0x0
    beq-    branch_0x802a46a8
    lwz     r3, R13Off_m0x604c(r13)
    mr      r4, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r27, sp, 0x34
    stw     r27, 0x1c(sp)
    lis     r5, __vvt__10JSUIosBase@ha
    addi    r0, r5, __vvt__10JSUIosBase@l
    lwz     r6, 0x1c(sp)
    lis     r5, __vvt__20JSURandomInputStream@h
    addi    r29, r5, __vvt__20JSURandomInputStream@l
    stw     r0, 0x0(r6)
    li      r0, 0x0
    addi    r5, r3, 0x0
    lis     r4, __vvt__14JSUInputStream@h
    stb     r0, 0x4(r6)
    addi    r0, r4, __vvt__14JSUInputStream@l
    stw     r0, 0x0(r6)
    lis     r4, __vvt__20JSUMemoryInputStream@h
    addi    r28, r4, __vvt__20JSUMemoryInputStream@l
    stw     r29, 0x0(r6)
    addi    r3, r6, 0x0
    mr      r4, r31
    stw     r28, 0x0(r6)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r27, 0x0
    bl      load__7TParamsFR20JSUMemoryInputStream
    stw     r28, 0x34(sp)
    addi    r3, r27, 0x0
    li      r27, 0x1
    stw     r29, 0x34(sp)
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
    b       branch_0x802a4778

branch_0x802a46a8:
    lwz     r3, R13Off_m0x6050(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x802a4778
    lwz     r12, 0x0(r3)
    addi    r4, r2, R2Off_m0x438
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x6050(r13)
    mr      r4, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr.     r26, r3
    beq-    branch_0x802a4778
    lwz     r3, R13Off_m0x6050(r13)
    mr      r4, r26
    lwz     r12, 0x0(r3)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    addi    r28, sp, 0x20
    stw     r28, 0x18(sp)
    lis     r5, __vvt__10JSUIosBase@ha
    addi    r0, r5, __vvt__10JSUIosBase@l
    lwz     r6, 0x18(sp)
    lis     r5, __vvt__20JSURandomInputStream@h
    addi    r29, r5, __vvt__20JSURandomInputStream@l
    stw     r0, 0x0(r6)
    li      r0, 0x0
    addi    r5, r3, 0x0
    lis     r4, __vvt__14JSUInputStream@h
    stb     r0, 0x4(r6)
    addi    r0, r4, __vvt__14JSUInputStream@l
    stw     r0, 0x0(r6)
    lis     r4, __vvt__20JSUMemoryInputStream@h
    addi    r31, r4, __vvt__20JSUMemoryInputStream@l
    stw     r29, 0x0(r6)
    addi    r3, r6, 0x0
    mr      r4, r26
    stw     r31, 0x0(r6)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r30, 0x0
    addi    r4, r28, 0x0
    bl      load__7TParamsFR20JSUMemoryInputStream
    stw     r31, 0x20(sp)
    addi    r3, r28, 0x0
    li      r27, 0x1
    stw     r29, 0x20(sp)
    li      r4, 0x0
    bl      __dt__14JSUInputStreamFv
branch_0x802a4778:
    mr      r3, r27
    lmw     r26, 0x48(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl finalize__7TParamsFv
finalize__7TParamsFv: # 0x802a4790
    li      r0, 0x0
    stw     r0, R13Off_m0x6050(r13)
    stw     r0, R13Off_m0x604c(r13)
    blr


.globl init__7TParamsFv
init__7TParamsFv: # 0x802a47a0
    mflr    r0
    addi    r3, r2, R2Off_m0x434
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      getVolume__13JKRFileLoaderFPCc
    stw     r3, R13Off_m0x6050(r13)
    addi    r3, r2, R2Off_m0x42c
    bl      getVolume__13JKRFileLoaderFPCc
    stw     r3, R13Off_m0x604c(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__7TParamsFR20JSUMemoryInputStream
load__7TParamsFR20JSUMemoryInputStream: # 0x802a47d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stmw    r26, 0x88(sp)
    mr      r26, r3
    addi    r27, r4, 0x0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802a48c4
    addi    r3, r27, 0x0
    addi    r4, sp, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r31, 0x28(sp)
    li      r29, 0x0
    b       branch_0x802a48bc

branch_0x802a4814:
    addi    r3, r27, 0x0
    addi    r4, sp, 0x24
    li      r5, 0x2
    bl      read__14JSUInputStreamFPvl
    lhz     r30, 0x24(sp)
    addi    r3, r27, 0x0
    addi    r4, sp, 0x2c
    li      r5, 0x50
    bl      readString__14JSUInputStreamFPcUs
    lwz     r28, 0x4(r26)
    b       branch_0x802a4880

branch_0x802a4840:
    lhz     r0, 0x4(r28)
    cmplw   r30, r0
    bne-    branch_0x802a487c
    addi    r3, sp, 0x2c
    lwz     r4, 0x8(r28)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802a487c
    mr      r3, r28
    lwz     r12, 0x0(r28)
    mr      r4, r27
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    b       branch_0x802a4888

branch_0x802a487c:
    lwz     r28, 0xc(r28)
branch_0x802a4880:
    cmplwi  r28, 0x0
    bne+    branch_0x802a4840
branch_0x802a4888:
    cmplwi  r28, 0x0
    bne-    branch_0x802a48b8
    addi    r3, r27, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r12, 0x0(r27)
    mr      r3, r27
    lwz     r4, 0x20(sp)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802a48b8:
    addi    r29, r29, 0x1
branch_0x802a48bc:
    cmpw    r29, r31
    blt+    branch_0x802a4814
branch_0x802a48c4:
    lmw     r26, 0x88(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr

