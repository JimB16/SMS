
.globl init__Q28JASystem3DvdFv
init__Q28JASystem3DvdFv: # 0x8031706c
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x73e8(r13)
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 6
    bl      __nwa__FUlP7JKRHeapi
    lwz     r0, -0x73e8(r13)
    li      r5, 0x0
    stw     r3, -0x5b90(r13)
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, -0x5b8c(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl extendPath__Q28JASystem3DvdFPcPc
extendPath__Q28JASystem3DvdFPcPc: # 0x803170b8
    mflr    r0
    lis     r5, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lbzu    r0, 0x3028(r5)
    extsb.  r0, r0
    beq-    branch_0x8031711c
    addi    r3, r30, 0x0
    addi    r4, r5, 0x0
    bl      strcpy
    lbz     r0, 0x0(r31)
    cmpwi   r0, 0x2f
    bne-    branch_0x8031710c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x1
    bl      strcat
    b       branch_0x80317128

branch_0x8031710c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      strcat
    b       branch_0x80317128

branch_0x8031711c:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      strcpy
branch_0x80317128:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl dvdProcInit__Q28JASystem3DvdFv
dvdProcInit__Q28JASystem3DvdFv: # 0x80317140
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2728
    li      r5, 0x20
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    stw     r30, 0x8(sp)
    lwz     r4, -0x5b8c(r13)
    bl      OSInitMessageQueue
    lwz     r0, -0x73e0(r13)
    li      r3, 0x1
    stw     r3, -0x5bb8(r13)
    li      r5, 0x0
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, -0x5b70(r13)
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x803171b4

branch_0x80317194:
    lwz     r4, -0x5b30(r13)
    li      r3, 0x40
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    lwz     r4, -0x5b70(r13)
    addi    r30, r30, 0x1
    stwx    r3, r4, r31
    addi    r31, r31, 0x4
branch_0x803171b4:
    lwz     r0, -0x73e0(r13)
    cmpw    r30, r0
    blt+    branch_0x80317194
    lwz     r4, -0x5b30(r13)
    slwi    r3, r0, 2
    li      r5, 0x0
    bl      __nwa__FUlP7JKRHeapi
    stw     r3, -0x5b6c(r13)
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    lwz     r30, 0x8(sp)
    mtlr    r0
    addi    sp, sp, 0x10
    blr


.globl dvdProc__Q28JASystem3DvdFPv
dvdProc__Q28JASystem3DvdFPv: # 0x803171ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    bl      allocDvdBuffer__Q28JASystem3DvdFv
    lwz     r0, -0x73e4(r13)
    slwi    r3, r0, 1
    bl      allocFromSysDram__Q28JASystem6KernelFUl
    addi    r29, r3, 0x0
    subi    r3, r13, 0x5b84
    bl      OSInitThreadQueue
    lis     r3, 0x8040
    subi    r31, r3, 0x2728
branch_0x80317228:
    addi    r3, r31, 0x0
    addi    r4, sp, 0xc
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r30, 0xc(sp)
    bl      updateBuffer__Q28JASystem3DvdFv
    lwz     r0, -0x5bb4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8031725c
    lwz     r5, -0x73e4(r13)
    addi    r3, r29, 0x0
    li      r4, 0x2
    bl      writeBufferSize__Q28JASystem3DvdFPUcUlUl
branch_0x8031725c:
    cmplwi  r30, 0x0
    beq+    branch_0x80317228
    lwz     r12, 0x0(r30)
    addi    r3, r30, 0x4
    mtlr    r12
    blrl
    b       branch_0x80317228


.globl loadToDramDvdTMain__Q28JASystem3DvdFPv
loadToDramDvdTMain__Q28JASystem3DvdFPv: # 0x80317278
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    stw     r30, 0x88(sp)
    addi    r30, r3, 0x0
    lbzu    r0, 0x3028(r4)
    extsb.  r0, r0
    beq-    branch_0x803172d4
    addi    r3, sp, 0xc
    bl      strcpy
    lbz     r0, 0x4(r30)
    cmpwi   r0, 0x2f
    bne-    branch_0x803172c4
    addi    r3, sp, 0xc
    addi    r4, r30, 0x5
    bl      strcat
    b       branch_0x803172e0

branch_0x803172c4:
    addi    r3, sp, 0xc
    addi    r4, r30, 0x4
    bl      strcat
    b       branch_0x803172e0

branch_0x803172d4:
    addi    r3, sp, 0xc
    addi    r4, r30, 0x4
    bl      strcpy
branch_0x803172e0:
    addi    r3, sp, 0xc
    addi    r4, sp, 0x4c
    bl      openDvd__Q28JASystem3DvdFPcP11DVDFileInfo
    cmpwi   r3, 0x0
    bne-    branch_0x80317308
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      doError__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
    li      r3, -0x1
    b       branch_0x80317388

branch_0x80317308:
    lwz     r3, 0x80(sp)
    cmplwi  r3, 0x0
    bne-    branch_0x80317328
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      doError__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
    li      r3, -0x1
    b       branch_0x80317388

branch_0x80317328:
    lwz     r0, 0x2c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x80317348
    stw     r3, 0x2c(r30)
    lwz     r3, 0x28(r30)
    lwz     r0, 0x2c(r30)
    subf    r0, r3, r0
    stw     r0, 0x2c(r30)
branch_0x80317348:
    lwz     r3, 0x24(r30)
    lwz     r4, 0x2c(r30)
    bl      DCInvalidateRange
    lwz     r4, 0x24(r30)
    addi    r3, sp, 0x4c
    lwz     r5, 0x2c(r30)
    addi    r7, r30, 0x4
    lwz     r6, 0x28(r30)
    bl      dvdReadMutex__Q28JASystem3DvdFP11DVDFileInfoPvllPc
    addi    r31, r3, 0x0
    addi    r3, sp, 0x4c
    bl      DVDClose
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      doFinish__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
    li      r3, 0x0
branch_0x80317388:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    addi    sp, sp, 0x90
    blr


.globl loadToDramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
loadToDramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v: # 0x803173a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r26, 0x60(sp)
    addi    r30, sp, 0x24
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r31, r9, 0x0
    stw     r3, 0x24(sp)
    addi    r3, r30, 0x4
    bl      strcpy
    stw     r26, 0x48(sp)
    cmplwi  r29, 0x0
    stw     r29, 0x54(sp)
    beq-    branch_0x803173ec
    li      r0, 0x0
    stw     r0, 0x0(r29)
branch_0x803173ec:
    stw     r31, 0x58(sp)
    stw     r27, 0x4c(sp)
    stw     r28, 0x50(sp)
    lwz     r0, -0x5bb8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8031743c
    bl      getCallStack__Q28JASystem3DvdFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4
    li      r5, 0x38
    bl      bcopy__Q28JASystem4CalcFPCvPvUl
    lis     r3, 0x8031
    addi    r0, r3, 0x7278
    lis     r3, 0x8040
    stw     r0, 0x0(r31)
    subi    r3, r3, 0x2728
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      OSSendMessage
branch_0x8031743c:
    lmw     r26, 0x60(sp)
    li      r3, 0x0
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl loadToAramDvdTMain__Q28JASystem3DvdFPv
loadToAramDvdTMain__Q28JASystem3DvdFPv: # 0x80317454
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r3, 0x0
    subi    r31, r4, 0x2728
    lbz     r0, -0x5b64(r13)
    extsb.  r0, r0
    bne-    branch_0x8031748c
    li      r3, 0x0
    li      r0, 0x1
    stw     r3, -0x5b68(r13)
    stb     r0, -0x5b64(r13)
branch_0x8031748c:
    lis     r3, 0x803e
    addi    r4, r3, 0x3028
    lbz     r0, 0x0(r4)
    extsb.  r0, r0
    beq-    branch_0x803174d4
    addi    r3, sp, 0x10
    bl      strcpy
    lbz     r0, 0x4(r30)
    cmpwi   r0, 0x2f
    bne-    branch_0x803174c4
    addi    r3, sp, 0x10
    addi    r4, r30, 0x5
    bl      strcat
    b       branch_0x803174e0

branch_0x803174c4:
    addi    r3, sp, 0x10
    addi    r4, r30, 0x4
    bl      strcat
    b       branch_0x803174e0

branch_0x803174d4:
    addi    r3, sp, 0x10
    addi    r4, r30, 0x4
    bl      strcpy
branch_0x803174e0:
    addi    r3, sp, 0x10
    addi    r4, r31, 0x20
    bl      openDvd__Q28JASystem3DvdFPcP11DVDFileInfo
    cmpwi   r3, 0x0
    bne-    branch_0x80317508
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      doError__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
    li      r3, -0x1
    b       branch_0x803176a8

branch_0x80317508:
    lwz     r0, 0x54(r31)
    cmplwi  r0, 0x0
    mr      r29, r0
    bne-    branch_0x8031752c
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      doError__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
    li      r3, -0x1
    b       branch_0x803176a8

branch_0x8031752c:
    lwz     r0, 0x2c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8031754c
    stw     r29, 0x2c(r30)
    lwz     r3, 0x28(r30)
    lwz     r0, 0x2c(r30)
    subf    r0, r3, r0
    stw     r0, 0x2c(r30)
branch_0x8031754c:
    bl      OSGetTick
    lis     r3, 0x8032
    subi    r26, r3, 0x7fb0
    lis     r25, 0x1234
    b       branch_0x80317674

branch_0x80317560:
    lwz     r5, -0x5b98(r13)
    subi    r4, r13, 0x5ba0
    lwz     r6, -0x5bb0(r13)
    addi    r3, r5, 0x1
    divwu   r0, r3, r6
    mullw   r0, r0, r6
    slwi    r5, r5, 2
    lwzx    r27, r4, r5
    subf    r0, r0, r3
    stw     r0, -0x5b98(r13)
branch_0x80317588:
    lwz     r0, -0x5b94(r13)
    cmplw   r0, r6
    beq+    branch_0x80317588
    lwz     r3, 0x2c(r30)
    lwz     r0, -0x5bb4(r13)
    cmplw   r3, r0
    bge-    branch_0x803175d4
    addi    r0, r3, 0x1f
    lwz     r6, 0x28(r30)
    clrrwi  r28, r0, 5
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r3, r31, 0x20
    addi    r7, r30, 0x4
    bl      dvdReadMutex__Q28JASystem3DvdFP11DVDFileInfoPvllPc
    li      r0, 0x0
    stw     r0, 0x2c(r30)
    mr      r29, r3
    b       branch_0x80317614

branch_0x803175d4:
    mr      r28, r0
    lwz     r6, 0x28(r30)
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    addi    r3, r31, 0x20
    addi    r7, r30, 0x4
    bl      dvdReadMutex__Q28JASystem3DvdFP11DVDFileInfoPvllPc
    lwz     r4, 0x28(r30)
    addi    r29, r3, 0x0
    lwz     r0, -0x5bb4(r13)
    add     r0, r4, r0
    stw     r0, 0x28(r30)
    lwz     r3, -0x5bb4(r13)
    lwz     r0, 0x2c(r30)
    subf    r0, r3, r0
    stw     r0, 0x2c(r30)
branch_0x80317614:
    lwz     r0, -0x5b68(r13)
    mr      r7, r27
    lwz     r8, 0x24(r30)
    addi    r9, r28, 0x0
    slwi    r0, r0, 5
    add     r3, r31, r0
    addi    r10, r26, 0x0
    addi    r4, r25, 0x5678
    li      r5, 0x0
    li      r6, 0x1
    addi    r3, r3, 0x5c
    bl      ARQPostRequest
    lwz     r3, -0x5b68(r13)
    lwz     r4, -0x5b94(r13)
    addi    r0, r3, 0x1
    stw     r0, -0x5b68(r13)
    addi    r3, r4, 0x1
    lwz     r0, -0x5b68(r13)
    stw     r3, -0x5b94(r13)
    clrlwi  r0, r0, 30
    stw     r0, -0x5b68(r13)
    lwz     r0, 0x24(r30)
    add     r0, r0, r28
    stw     r0, 0x24(r30)
branch_0x80317674:
    lwz     r0, 0x2c(r30)
    cmplwi  r0, 0x0
    bne+    branch_0x80317560
    addi    r3, r31, 0x20
    bl      DVDClose
branch_0x80317688:
    lwz     r0, -0x5b94(r13)
    cmplwi  r0, 0x0
    bne+    branch_0x80317688
    bl      OSGetTick
    addi    r3, r30, 0x0
    addi    r4, r29, 0x0
    bl      doFinish__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
    li      r3, 0x0
branch_0x803176a8:
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl loadToAramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v
loadToAramDvdT__Q28JASystem3DvdFUlPcPvUlUlPUlPFUl_v: # 0x803176bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r26, 0x60(sp)
    addi    r30, sp, 0x24
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r31, r9, 0x0
    stw     r3, 0x24(sp)
    addi    r3, r30, 0x4
    bl      strcpy
    stw     r26, 0x48(sp)
    cmplwi  r29, 0x0
    stw     r29, 0x54(sp)
    beq-    branch_0x80317708
    li      r0, 0x0
    stw     r0, 0x0(r29)
branch_0x80317708:
    stw     r31, 0x58(sp)
    stw     r27, 0x4c(sp)
    stw     r28, 0x50(sp)
    lwz     r0, -0x5bb8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80317758
    bl      getCallStack__Q28JASystem3DvdFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4
    li      r5, 0x38
    bl      bcopy__Q28JASystem4CalcFPCvPvUl
    lis     r3, 0x8031
    addi    r0, r3, 0x7454
    lis     r3, 0x8040
    stw     r0, 0x0(r31)
    subi    r3, r3, 0x2728
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      OSSendMessage
branch_0x80317758:
    lmw     r26, 0x60(sp)
    li      r3, 0x0
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl checkFileExtend__Q28JASystem3DvdFPc
checkFileExtend__Q28JASystem3DvdFPc: # 0x80317770
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    lis     r5, 0x8040
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    subi    r31, r5, 0x2728
    stw     r30, 0x50(sp)
    addi    r30, r3, 0x0
    lbzu    r0, 0x3028(r4)
    extsb.  r0, r0
    beq-    branch_0x803177d4
    addi    r3, sp, 0xc
    bl      strcpy
    lbz     r0, 0x0(r30)
    cmpwi   r0, 0x2f
    bne-    branch_0x803177c4
    addi    r3, sp, 0xc
    addi    r4, r30, 0x1
    bl      strcat
    b       branch_0x803177e0

branch_0x803177c4:
    addi    r3, sp, 0xc
    addi    r4, r30, 0x0
    bl      strcat
    b       branch_0x803177e0

branch_0x803177d4:
    addi    r3, sp, 0xc
    addi    r4, r30, 0x0
    bl      strcpy
branch_0x803177e0:
    addi    r3, sp, 0xc
    addi    r4, r31, 0x194
    bl      openDvd__Q28JASystem3DvdFPcP11DVDFileInfo
    cmpwi   r3, 0x0
    bne-    branch_0x803177fc
    li      r3, 0x0
    b       branch_0x8031780c

branch_0x803177fc:
    lwz     r30, 0x1c8(r31)
    addi    r3, r31, 0x194
    bl      DVDClose
    mr      r3, r30
branch_0x8031780c:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl loadFileDvdT__Q28JASystem3DvdFPcPv
loadFileDvdT__Q28JASystem3DvdFPcPv: # 0x80317824
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    li      r31, 0x0
    stw     r30, 0x58(sp)
    addi    r30, sp, 0x10
    stw     r29, 0x54(sp)
    addi    r29, r4, 0x0
    addi    r4, r3, 0x0
    stw     r31, 0x48(sp)
    addi    r3, r30, 0x4
    stw     r31, 0x10(sp)
    bl      strcpy
    stw     r29, 0x34(sp)
    addi    r3, sp, 0x48
    addic.  r0, sp, 0x48
    stw     r3, 0x40(sp)
    beq-    branch_0x80317874
    stw     r31, 0x48(sp)
branch_0x80317874:
    li      r0, 0x0
    stw     r0, 0x44(sp)
    stw     r0, 0x38(sp)
    stw     r0, 0x3c(sp)
    lwz     r0, -0x5bb8(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x803178c8
    bl      getCallStack__Q28JASystem3DvdFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4
    li      r5, 0x38
    bl      bcopy__Q28JASystem4CalcFPCvPvUl
    lis     r3, 0x8031
    addi    r0, r3, 0x7278
    lis     r3, 0x8040
    stw     r0, 0x0(r31)
    subi    r3, r3, 0x2728
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      OSSendMessage
branch_0x803178c8:
    lwz     r0, 0x48(sp)
    cmplwi  r0, 0x0
    beq+    branch_0x803178c8
    lwz     r3, 0x48(sp)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x803178ec
    li      r3, 0x0
    b       branch_0x803178f0

branch_0x803178ec:
    lwz     r3, 0x48(sp)
branch_0x803178f0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl checkPassDvdT__Q28JASystem3DvdFUlPUlPFUl_v
checkPassDvdT__Q28JASystem3DvdFUlPUlPFUl_v: # 0x8031790c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    addi    r30, sp, 0x14
    stw     r3, 0x14(sp)
    lwz     r0, -0x5bb8(r13)
    stw     r4, 0x44(sp)
    cmplwi  r0, 0x0
    stw     r5, 0x48(sp)
    beq-    branch_0x80317974
    bl      getCallStack__Q28JASystem3DvdFv
    addi    r31, r3, 0x0
    addi    r3, r30, 0x0
    addi    r4, r31, 0x4
    li      r5, 0x38
    bl      bcopy__Q28JASystem4CalcFPCvPvUl
    lis     r3, 0x8031
    addi    r0, r3, 0x7da0
    lis     r3, 0x8040
    stw     r0, 0x0(r31)
    subi    r3, r3, 0x2728
    addi    r4, r31, 0x0
    li      r5, 0x1
    bl      OSSendMessage
branch_0x80317974:
    lwz     r0, 0x5c(sp)
    li      r3, 0x0
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl checkFile__Q28JASystem3DvdFPc
checkFile__Q28JASystem3DvdFPc: # 0x80317990
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    subi    r31, r4, 0x2728
    addi    r4, r31, 0x1d0
    stw     r30, 0x10(sp)
    bl      openDvd__Q28JASystem3DvdFPcP11DVDFileInfo
    cmpwi   r3, 0x0
    bne-    branch_0x803179c4
    li      r3, 0x0
    b       branch_0x803179d4

branch_0x803179c4:
    lwz     r30, 0x204(r31)
    addi    r3, r31, 0x1d0
    bl      DVDClose
    mr      r3, r30
branch_0x803179d4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadFile__Q28JASystem3DvdFPcPv
loadFile__Q28JASystem3DvdFPcPv: # 0x803179ec
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    subi    r31, r5, 0x2728
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    addi    r4, r31, 0x20c
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      openDvd__Q28JASystem3DvdFPcP11DVDFileInfo
    cmpwi   r3, 0x0
    bne-    branch_0x80317a30
    li      r3, 0x0
    b       branch_0x80317a80

branch_0x80317a30:
    lwz     r30, 0x240(r31)
branch_0x80317a34:
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    addi    r3, r31, 0x20c
    li      r6, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, -0x1
    bne-    branch_0x80317a74
    lwz     r12, -0x5b78(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80317a74
    mtlr    r12
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    blrl
    b       branch_0x80317a34

branch_0x80317a74:
    addi    r3, r31, 0x20c
    bl      DVDClose
    mr      r3, r30
branch_0x80317a80:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl pauseDvdT__Q28JASystem3DvdFv
pauseDvdT__Q28JASystem3DvdFv: # 0x80317aa0
    li      r0, 0x1
    stw     r0, -0x5b7c(r13)
    blr


.globl unpauseDvdT__Q28JASystem3DvdFv
unpauseDvdT__Q28JASystem3DvdFv: # 0x80317aac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, -0x5b7c(r13)
    cmpwi   r0, 0x1
    bne-    branch_0x80317acc
    subi    r3, r13, 0x5b84
    bl      OSWakeupThread
branch_0x80317acc:
    li      r0, 0x0
    stw     r0, -0x5b7c(r13)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl registerFastOpen__Q28JASystem3DvdFPc
registerFastOpen__Q28JASystem3DvdFPc: # 0x80317ae4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    mr      r29, r3
    bl      strlen
    cmplwi  r3, 0x3f
    ble-    branch_0x80317b14
    li      r3, -0x1
    b       branch_0x80317bb8

branch_0x80317b14:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80317b4c

branch_0x80317b20:
    lwz     r3, -0x5b70(r13)
    mr      r4, r29
    lwzx    r3, r3, r31
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80317b44
    lwz     r3, -0x5b6c(r13)
    lwzx    r3, r3, r31
    b       branch_0x80317bb8

branch_0x80317b44:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80317b4c:
    lwz     r3, -0x5b74(r13)
    cmplw   r30, r3
    blt+    branch_0x80317b20
    lwz     r0, -0x73e0(r13)
    cmplw   r3, r0
    bne-    branch_0x80317b6c
    li      r3, -0x1
    b       branch_0x80317bb8

branch_0x80317b6c:
    mr      r3, r29
    bl      DVDConvertPathToEntrynum
    addi    r30, r3, 0x0
    cmpwi   r30, -0x1
    beq-    branch_0x80317bb4
    lwz     r0, -0x5b74(r13)
    mr      r4, r29
    lwz     r3, -0x5b70(r13)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      strcpy
    lwz     r0, -0x5b74(r13)
    lwz     r3, -0x5b6c(r13)
    slwi    r0, r0, 2
    stwx    r30, r3, r0
    lwz     r3, -0x5b74(r13)
    addi    r0, r3, 0x1
    stw     r0, -0x5b74(r13)
branch_0x80317bb4:
    mr      r3, r30
branch_0x80317bb8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl openDvd__Q28JASystem3DvdFPcP11DVDFileInfo
openDvd__Q28JASystem3DvdFPcP11DVDFileInfo: # 0x80317bd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      registerFastOpen__Q28JASystem3DvdFPc
    cmpwi   r3, -0x1
    bne-    branch_0x80317c0c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      DVDOpen
    b       branch_0x80317c14

branch_0x80317c0c:
    mr      r4, r31
    bl      DVDFastOpen
branch_0x80317c14:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getCallStack__Q28JASystem3DvdFv
getCallStack__Q28JASystem3DvdFv: # 0x80317c2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    bl      OSDisableInterrupts
    lwz     r4, -0x5b88(r13)
    lwz     r5, -0x5b90(r13)
    addi    r0, r4, 0x1
    stw     r0, -0x5b88(r13)
    slwi    r0, r4, 6
    add     r31, r5, r0
    lwz     r0, -0x5b88(r13)
    cmplwi  r0, 0x20
    bne-    branch_0x80317c6c
    li      r0, 0x0
    stw     r0, -0x5b88(r13)
branch_0x80317c6c:
    bl      OSRestoreInterrupts
    lwz     r0, 0x14(sp)
    mr      r3, r31
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl dvdReadMutex__Q28JASystem3DvdFP11DVDFileInfoPvllPc
dvdReadMutex__Q28JASystem3DvdFP11DVDFileInfoPvllPc: # 0x80317c88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r0, -0x5b7c(r13)
    cmpwi   r0, 0x1
    bne-    branch_0x80317cc0
    subi    r3, r13, 0x5b84
    bl      OSSleepThread
branch_0x80317cc0:
    addi    r3, r27, 0x0
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    li      r7, 0x2
    bl      DVDReadPrio
    cmpwi   r3, -0x1
    bne-    branch_0x80317d00
    lwz     r12, -0x5b78(r13)
    cmplwi  r12, 0x0
    beq-    branch_0x80317d00
    mtlr    r12
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    blrl
    b       branch_0x80317cc0

branch_0x80317d00:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl doError__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
doError__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl: # 0x80317d14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x30(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80317d34
    li      r0, -0x1
    stw     r0, 0x0(r4)
branch_0x80317d34:
    lwz     r12, 0x34(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80317d4c
    mtlr    r12
    li      r3, -0x1
    blrl
branch_0x80317d4c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl doFinish__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl
doFinish__Q28JASystem3DvdFPQ38JASystem3Dvd8TDvdCallUl: # 0x80317d5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x30(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x80317d78
    stw     r4, 0x0(r5)
branch_0x80317d78:
    lwz     r12, 0x34(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80317d90
    lwz     r3, 0x0(r3)
    mtlr    r12
    blrl
branch_0x80317d90:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl dvdThreadCheckBack__Q28JASystem3DvdFPv
dvdThreadCheckBack__Q28JASystem3DvdFPv: # 0x80317da0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x30(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80317dc0
    stw     r0, 0x0(r4)
branch_0x80317dc0:
    lwz     r12, 0x34(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80317dd8
    lwz     r3, 0x0(r3)
    mtlr    r12
    blrl
branch_0x80317dd8:
    lwz     r0, 0xc(sp)
    li      r3, 0x0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl allocDvdBuffer__Q28JASystem3DvdFv
allocDvdBuffer__Q28JASystem3DvdFv: # 0x80317dec
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    lwz     r0, -0x5bb4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80317eb8
    lwz     r11, -0x5bb0(r13)
    li      r31, 0x0
    li      r3, 0x0
    cmplwi  r11, 0x0
    ble-    branch_0x80317eb8
    cmplwi  r11, 0x8
    subi    r4, r11, 0x8
    ble-    branch_0x80317e88
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmplwi  r4, 0x0
    mtctr   r0
    addi    r10, r3, 0x0
    addi    r9, r3, 0x0
    addi    r8, r3, 0x0
    addi    r7, r3, 0x0
    addi    r6, r3, 0x0
    addi    r5, r3, 0x0
    addi    r4, r3, 0x0
    addi    r0, r3, 0x0
    ble-    branch_0x80317e88
branch_0x80317e54:
    subi    r12, r13, 0x5ba0
    add     r12, r12, r3
    stw     r10, 0x0(r12)
    addi    r31, r31, 0x8
    addi    r3, r3, 0x20
    stw     r9, 0x4(r12)
    stw     r8, 0x8(r12)
    stw     r7, 0xc(r12)
    stw     r6, 0x10(r12)
    stw     r5, 0x14(r12)
    stw     r4, 0x18(r12)
    stw     r0, 0x1c(r12)
    bdnz+      branch_0x80317e54
branch_0x80317e88:
    subf    r0, r31, r11
    cmplw   r31, r11
    mtctr   r0
    slwi    r3, r31, 2
    li      r0, 0x0
    subi    r4, r13, 0x5ba0
    bge-    branch_0x80317eb8
branch_0x80317ea4:
    stwx    r0, r4, r3
    addi    r3, r3, 0x4
    bdnz+      branch_0x80317ea4
    b       branch_0x80317eb8


.incbin "./baserom/code/Text_0x80005600.bin", 0x3128b4, 0x80317eb8 - 0x80317eb4
branch_0x80317eb8:
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    blr


.globl writeBufferSize__Q28JASystem3DvdFPUcUlUl
writeBufferSize__Q28JASystem3DvdFPUcUlUl: # 0x80317ec4
    cmplwi  r4, 0x0
    stw     r5, -0x5bb4(r13)
    li      r8, 0x0
    stw     r4, -0x5bb0(r13)
    li      r6, 0x0
    blelr-    

    cmplwi  r4, 0x8
    subi    r7, r4, 0x8
    ble-    branch_0x80317f50
    addi    r0, r7, 0x7
    srwi    r0, r0, 3
    cmplwi  r7, 0x0
    mtctr   r0
    ble-    branch_0x80317f50
branch_0x80317efc:
    subi    r7, r13, 0x5ba0
    add     r7, r7, r6
    stw     r3, 0x0(r7)
    add     r3, r3, r5
    addi    r8, r8, 0x8
    stw     r3, 0x4(r7)
    add     r3, r3, r5
    addi    r6, r6, 0x20
    stw     r3, 0x8(r7)
    add     r3, r3, r5
    stw     r3, 0xc(r7)
    add     r3, r3, r5
    stw     r3, 0x10(r7)
    add     r3, r3, r5
    stw     r3, 0x14(r7)
    add     r3, r3, r5
    stw     r3, 0x18(r7)
    add     r3, r3, r5
    stw     r3, 0x1c(r7)
    add     r3, r3, r5
    bdnz+      branch_0x80317efc
branch_0x80317f50:
    subf    r0, r8, r4
    cmplw   r8, r4
    mtctr   r0
    slwi    r4, r8, 2
    subi    r6, r13, 0x5ba0
    bgelr-    

branch_0x80317f68:
    stwx    r3, r6, r4
    add     r3, r3, r5
    addi    r4, r4, 0x4
    bdnz+      branch_0x80317f68
    blr


.globl updateBuffer__Q28JASystem3DvdFv
updateBuffer__Q28JASystem3DvdFv: # 0x80317f7c
    lwz     r7, -0x5ba4(r13)
    cmplwi  r7, 0x0
    beqlr-    

    lwz     r8, -0x5bac(r13)
    li      r4, 0x0
    stw     r7, -0x5bb0(r13)
    mr      r3, r4
    lwz     r5, -0x5ba8(r13)
    stw     r8, -0x5bb4(r13)
    ble-    branch_0x80318040
    cmplwi  r7, 0x8
    subi    r6, r7, 0x8
    ble-    branch_0x80318018
    addi    r0, r6, 0x7
    srwi    r0, r0, 3
    cmplwi  r6, 0x0
    mtctr   r0
    ble-    branch_0x80318018
branch_0x80317fc4:
    subi    r6, r13, 0x5ba0
    add     r6, r6, r3
    stw     r5, 0x0(r6)
    add     r5, r5, r8
    addi    r4, r4, 0x8
    stw     r5, 0x4(r6)
    add     r5, r5, r8
    addi    r3, r3, 0x20
    stw     r5, 0x8(r6)
    add     r5, r5, r8
    stw     r5, 0xc(r6)
    add     r5, r5, r8
    stw     r5, 0x10(r6)
    add     r5, r5, r8
    stw     r5, 0x14(r6)
    add     r5, r5, r8
    stw     r5, 0x18(r6)
    add     r5, r5, r8
    stw     r5, 0x1c(r6)
    add     r5, r5, r8
    bdnz+      branch_0x80317fc4
branch_0x80318018:
    subf    r0, r4, r7
    cmplw   r4, r7
    mtctr   r0
    slwi    r3, r4, 2
    subi    r4, r13, 0x5ba0
    bge-    branch_0x80318040
branch_0x80318030:
    stwx    r5, r4, r3
    add     r5, r5, r8
    addi    r3, r3, 0x4
    bdnz+      branch_0x80318030
branch_0x80318040:
    li      r0, 0x0
    stw     r0, -0x5ba4(r13)
    stw     r0, -0x5ba8(r13)
    blr


.globl aramDmaFinish__Q28JASystem3DvdFUl
aramDmaFinish__Q28JASystem3DvdFUl: # 0x80318050
    lwz     r3, -0x5b94(r13)
    subi    r0, r3, 0x1
    stw     r0, -0x5b94(r13)
    blr

