
.globl updateDSP__Q28JASystem6DSPBufFv
updateDSP__Q28JASystem6DSPBufFv: # 0x80314160
    mflr    r0
    lis     r3, 0x803b
    stw     r0, 0x4(sp)
    subi    r4, r3, 0x5a28
    li      r3, 0x3
    stwu    sp, -0x8(sp)
    lwz     r5, -0x5c24(r13)
    addi    r0, r5, 0x1
    stw     r0, -0x5c24(r13)
    bl      probeStart__Q28JASystem6KernelFlPc
    bl      invalChannelAll__Q28JASystem12DSPInterfaceFv
    bl      subframeCallback__Q28JASystem6KernelFv
    bl      updateAll__Q28JASystem11TDSPChannelFv
    bl      DSPReleaseHalt__Fv
    bl      aiCallback__Q28JASystem6KernelFv
    li      r3, 0x3
    bl      probeFinish__Q28JASystem6KernelFl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl mixDSP__Q28JASystem6DSPBufFl
mixDSP__Q28JASystem6DSPBufFl: # 0x803141b4
    mflr    r0
    li      r3, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl finishDSPFrame__Q28JASystem6DSPBufFv
finishDSPFrame__Q28JASystem6DSPBufFv: # 0x803141d8
    mflr    r0
    li      r3, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS
process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS: # 0x803141fc
    mflr    r0
    cmpwi   r3, 0x1
    stw     r0, 0x4(sp)
    lis     r4, 0x8040
    stwu    sp, -0x38(sp)
    stmw    r26, 0x20(sp)
    subi    r31, r4, 0x2748
    lwz     r29, -0x73c8(r13)
    beq-    branch_0x80314358
    bge-    branch_0x80314230
    cmpwi   r3, 0x0
    bge-    branch_0x8031423c
    b       branch_0x8031463c

branch_0x80314230:
    cmpwi   r3, 0x3
    bge-    branch_0x8031463c
    b       branch_0x80314408

branch_0x8031423c:
    li      r3, 0x2
    li      r0, 0x0
    stb     r3, -0x5c28(r13)
    slwi    r28, r29, 1
    stb     r0, -0x5c27(r13)
    slwi    r30, r29, 2
    subi    r29, r28, 0x8
    li      r27, 0x0
    li      r26, 0x0
branch_0x80314260:
    mr      r3, r30
    bl      allocFromSysDram__Q28JASystem6KernelFUl
    add     r4, r31, r26
    cmplwi  r28, 0x0
    stw     r3, 0x0(r4)
    li      r12, 0x0
    li      r3, 0x0
    ble-    branch_0x80314330
    cmplwi  r28, 0x8
    ble-    branch_0x80314308
    addi    r0, r29, 0x7
    srwi    r0, r0, 3
    cmplwi  r29, 0x0
    mtctr   r0
    ble-    branch_0x80314308
branch_0x8031429c:
    lwz     r5, 0x0(r4)
    li      r11, 0x0
    addi    r0, r3, 0x2
    sthx    r11, r5, r3
    addi    r9, r3, 0x4
    addi    r8, r3, 0x6
    lwz     r5, 0x0(r4)
    addi    r7, r3, 0x8
    addi    r6, r3, 0xa
    sthx    r11, r5, r0
    addi    r5, r3, 0xc
    addi    r0, r3, 0xe
    lwz     r10, 0x0(r4)
    addi    r12, r12, 0x8
    addi    r3, r3, 0x10
    sthx    r11, r10, r9
    lwz     r9, 0x0(r4)
    sthx    r11, r9, r8
    lwz     r8, 0x0(r4)
    sthx    r11, r8, r7
    lwz     r7, 0x0(r4)
    sthx    r11, r7, r6
    lwz     r6, 0x0(r4)
    sthx    r11, r6, r5
    lwz     r5, 0x0(r4)
    sthx    r11, r5, r0
    bdnz+      branch_0x8031429c
branch_0x80314308:
    subf    r0, r12, r28
    cmplw   r12, r28
    mtctr   r0
    slwi    r3, r12, 1
    li      r0, 0x0
    bge-    branch_0x80314330
branch_0x80314320:
    lwz     r5, 0x0(r4)
    sthx    r0, r5, r3
    addi    r3, r3, 0x2
    bdnz+      branch_0x80314320
branch_0x80314330:
    lwz     r3, 0x0(r4)
    mr      r4, r30
    bl      DCStoreRange
    addi    r27, r27, 0x1
    cmplwi  r27, 0x3
    addi    r26, r26, 0x4
    blt+    branch_0x80314260
    li      r0, 0x0
    stb     r0, -0x5c26(r13)
    b       branch_0x8031463c

branch_0x80314358:
    lbz     r3, -0x5c28(r13)
    addi    r0, r3, 0x1
    clrlwi  r4, r0, 24
    cmplwi  r4, 0x3
    bne-    branch_0x80314370
    li      r4, 0x0
branch_0x80314370:
    lbz     r0, -0x5c27(r13)
    clrlwi  r3, r4, 24
    cmplw   r3, r0
    bne-    branch_0x8031438c
    li      r0, 0x0
    stb     r0, -0x5c26(r13)
    b       branch_0x8031463c

branch_0x8031438c:
    lwz     r3, -0x73cc(r13)
    stb     r4, -0x5c28(r13)
    bl      setDSPSyncCount__Q28JASystem11AudioThreadFUl
    lis     r3, 0x803b
    subi    r4, r3, 0x5a1c
    li      r3, 0x7
    bl      probeStart__Q28JASystem6KernelFlPc
    lbz     r4, -0x5c28(r13)
    slwi    r0, r29, 1
    lwz     r3, -0x73cc(r13)
    slwi    r4, r4, 2
    lwzx    r4, r31, r4
    add     r5, r4, r0
    bl      DsyncFrame2__FUlUlUl
    lwz     r4, -0x5c24(r13)
    li      r0, 0x1
    stb     r0, -0x5c26(r13)
    lis     r3, 0x803b
    addi    r0, r4, 0x1
    stw     r0, -0x5c24(r13)
    subi    r4, r3, 0x5a28
    li      r3, 0x3
    bl      probeStart__Q28JASystem6KernelFlPc
    bl      invalChannelAll__Q28JASystem12DSPInterfaceFv
    bl      subframeCallback__Q28JASystem6KernelFv
    bl      updateAll__Q28JASystem11TDSPChannelFv
    bl      DSPReleaseHalt__Fv
    bl      aiCallback__Q28JASystem6KernelFv
    li      r3, 0x3
    bl      probeFinish__Q28JASystem6KernelFl
    b       branch_0x8031463c

branch_0x80314408:
    lbz     r4, -0x5c27(r13)
    addi    r0, r4, 0x1
    clrlwi  r5, r0, 24
    cmplwi  r5, 0x3
    bne-    branch_0x80314420
    li      r5, 0x0
branch_0x80314420:
    lbz     r0, -0x5c28(r13)
    clrlwi  r3, r5, 24
    cmplw   r3, r0
    bne-    branch_0x80314600
    slwi    r0, r4, 2
    lwzx    r3, r31, r0
    cmplwi  r29, 0x0
    clrrwi  r0, r29, 1
    subi    r4, r3, 0x2
    slwi    r3, r29, 1
    lhax    r0, r4, r0
    lhax    r5, r4, r3
    li      r4, 0x0
    li      r7, 0x0
    ble-    branch_0x80314518
    cmplwi  r29, 0x8
    subi    r9, r29, 0x8
    ble-    branch_0x803144ec
    addi    r6, r9, 0x7
    lbz     r8, -0x5c27(r13)
    srwi    r6, r6, 3
    cmplwi  r9, 0x0
    mtctr   r6
    slwi    r27, r8, 2
    ble-    branch_0x803144ec
branch_0x80314484:
    lwzx    r8, r31, r27
    addi    r6, r7, 0x2
    addi    r12, r7, 0x4
    sthx    r0, r8, r7
    addi    r11, r7, 0x6
    addi    r10, r7, 0x8
    lwzx    r26, r31, r27
    addi    r9, r7, 0xa
    addi    r8, r7, 0xc
    sthx    r0, r26, r6
    addi    r6, r7, 0xe
    addi    r4, r4, 0x8
    lwzx    r26, r31, r27
    addi    r7, r7, 0x10
    sthx    r0, r26, r12
    lwzx    r12, r31, r27
    sthx    r0, r12, r11
    lwzx    r11, r31, r27
    sthx    r0, r11, r10
    lwzx    r10, r31, r27
    sthx    r0, r10, r9
    lwzx    r9, r31, r27
    sthx    r0, r9, r8
    lwzx    r8, r31, r27
    sthx    r0, r8, r6
    bdnz+      branch_0x80314484
branch_0x803144ec:
    subf    r6, r4, r29
    lbz     r7, -0x5c27(r13)
    cmplw   r4, r29
    mtctr   r6
    slwi    r7, r7, 2
    slwi    r4, r4, 1
    bge-    branch_0x80314518
branch_0x80314508:
    lwzx    r6, r31, r7
    sthx    r0, r6, r4
    addi    r4, r4, 0x2
    bdnz+      branch_0x80314508
branch_0x80314518:
    cmplw   r29, r3
    bge-    branch_0x803145e8
    subf    r0, r29, r3
    cmplwi  r0, 0x8
    subi    r6, r3, 0x8
    ble-    branch_0x803145bc
    addi    r0, r6, 0x7
    lbz     r4, -0x5c27(r13)
    subf    r0, r29, r0
    srwi    r0, r0, 3
    cmplw   r29, r6
    mtctr   r0
    slwi    r12, r4, 2
    slwi    r4, r29, 1
    bge-    branch_0x803145bc
branch_0x80314554:
    lwzx    r6, r31, r12
    addi    r0, r4, 0x2
    addi    r10, r4, 0x4
    sthx    r5, r6, r4
    addi    r9, r4, 0x6
    addi    r8, r4, 0x8
    lwzx    r11, r31, r12
    addi    r7, r4, 0xa
    addi    r6, r4, 0xc
    sthx    r5, r11, r0
    addi    r0, r4, 0xe
    addi    r29, r29, 0x8
    lwzx    r11, r31, r12
    addi    r4, r4, 0x10
    sthx    r5, r11, r10
    lwzx    r10, r31, r12
    sthx    r5, r10, r9
    lwzx    r9, r31, r12
    sthx    r5, r9, r8
    lwzx    r8, r31, r12
    sthx    r5, r8, r7
    lwzx    r7, r31, r12
    sthx    r5, r7, r6
    lwzx    r6, r31, r12
    sthx    r5, r6, r0
    bdnz+      branch_0x80314554
branch_0x803145bc:
    subf    r0, r29, r3
    lbz     r4, -0x5c27(r13)
    cmplw   r29, r3
    mtctr   r0
    slwi    r0, r4, 2
    slwi    r3, r29, 1
    bge-    branch_0x803145e8
branch_0x803145d8:
    lwzx    r4, r31, r0
    sthx    r5, r4, r3
    addi    r3, r3, 0x2
    bdnz+      branch_0x803145d8
branch_0x803145e8:
    lbz     r0, -0x5c26(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8031462c
    li      r3, 0x1
    bl      process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS
    b       branch_0x8031462c

branch_0x80314600:
    stb     r5, -0x5c27(r13)
    slwi    r4, r29, 2
    lbz     r0, -0x5c27(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    bl      DCInvalidateRange
    lbz     r0, -0x5c26(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x8031462c
    li      r3, 0x1
    bl      process__Q28JASystem6DSPBufFQ38JASystem6DSPBuf13DSPBUF_EVENTS
branch_0x8031462c:
    lbz     r0, -0x5c27(r13)
    slwi    r0, r0, 2
    lwzx    r3, r31, r0
    b       branch_0x8031464c

branch_0x8031463c:
    li      r3, 0x0
    b       branch_0x8031464c


.incbin "./baserom/code/Text_0x80005600.bin", 0x30f044, 0x8031464c - 0x80314644
branch_0x8031464c:
    lmw     r26, 0x20(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr

