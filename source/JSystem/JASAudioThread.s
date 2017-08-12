
.globl Console_printf
Console_printf: # 0x80311090
    stwu    sp, -0x70(sp)
    bne-    cr1, branch_0x803110b8
    stfd    f1, 0x28(sp)
    stfd    f2, 0x30(sp)
    stfd    f3, 0x38(sp)
    stfd    f4, 0x40(sp)
    stfd    f5, 0x48(sp)
    stfd    f6, 0x50(sp)
    stfd    f7, 0x58(sp)
    stfd    f8, 0x60(sp)
branch_0x803110b8:
    stw     r3, 0x8(sp)
    stw     r4, 0xc(sp)
    stw     r5, 0x10(sp)
    stw     r6, 0x14(sp)
    stw     r7, 0x18(sp)
    stw     r8, 0x1c(sp)
    stw     r9, 0x20(sp)
    stw     r10, 0x24(sp)
    addi    sp, sp, 0x70
    blr


.globl setDSPSyncCount__Q28JASystem11AudioThreadFUl
setDSPSyncCount__Q28JASystem11AudioThreadFUl: # 0x803110e0
    stw     r3, R13Off_m0x5c68(r13)
    blr


.globl getDSPSyncCount__Q28JASystem11AudioThreadFv
getDSPSyncCount__Q28JASystem11AudioThreadFv: # 0x803110e8
    lwz     r3, R13Off_m0x5c68(r13)
    blr


.globl syncAudio__Q28JASystem11AudioThreadFv
syncAudio__Q28JASystem11AudioThreadFv: # 0x803110f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, R13Off_m0x5c54(r13)
    extsb.  r0, r0
    bne-    branch_0x80311114
    li      r0, 0x1
    stw     r0, R13Off_m0x5c58(r13)
    stb     r0, R13Off_m0x5c54(r13)
branch_0x80311114:
    lwz     r0, R13Off_m0x5c58(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80311128
    li      r3, 0x4
    bl      probeFinish__Q28JASystem6KernelFl
branch_0x80311128:
    li      r0, 0x0
    lis     r3, unk_803aa5b8@ha
    stw     r0, R13Off_m0x5c58(r13)
    addi    r4, r3, unk_803aa5b8@l
    li      r3, 0x4
    bl      probeStart__Q28JASystem6KernelFlPc
    lwz     r0, R13Off_m0x5c6c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80311160
    lis     r3, audioproc_mq__Q28JASystem11AudioThread@ha
    addi    r3, r3, audioproc_mq__Q28JASystem11AudioThread@l
    li      r4, 0x0
    li      r5, 0x0
    bl      OSSendMessage
branch_0x80311160:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl audioproc__Q28JASystem11AudioThreadFPv
audioproc__Q28JASystem11AudioThreadFPv: # 0x80311170
    mflr    r0
    lis     r4, audioproc_mq__Q28JASystem11AudioThread@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r4, audioproc_mq__Q28JASystem11AudioThread@l
    li      r3, 0x4
    oris    r3, r3, 0x4
    mtspr   914, r3
    li      r3, 0x5
    oris    r3, r3, 0x5
    mtspr   915, r3
    li      r3, 0x6
    oris    r3, r3, 0x6
    mtspr   916, r3
    li      r3, 0x7
    oris    r3, r3, 0x7
    mtspr   917, r3
    addi    r3, r30, 0x0
    addi    r4, r30, 0x20
    li      r5, 0x10
    bl      OSInitMessageQueue
    li      r31, 0x1
    stw     r31, R13Off_m0x5c6c(r13)
    bl      init__Q28JASystem6KernelFv
    lwz     r0, R13Off_m0x5c70(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x803111f4
    lis     r4, syncDSP__Q28JASystem11AudioThreadFPv@h
    addi    r3, r4, syncDSP__Q28JASystem11AudioThreadFPv@l
    bl      DspBoot__FPFPv_v
    stw     r31, R13Off_m0x5c70(r13)
branch_0x803111f4:
    bl      init__Q28JASystem6DriverFv
    lwz     r3, R13Off_m0x5b34(r13)
    bl      AISetDSPSampleRate
    lis     r4, syncAudio__Q28JASystem11AudioThreadFv@h
    addi    r3, r4, syncAudio__Q28JASystem11AudioThreadFv@l
    bl      AIRegisterDMACallback
    bl      AIStartDMA
branch_0x80311210:
    addi    r3, r30, 0x0
    addi    r4, sp, 0xc
    li      r5, 0x1
    bl      OSReceiveMessage
    lwz     r0, 0xc(sp)
    cmpwi   r0, 0x2
    beq+    branch_0x80311210
    bge-    branch_0x80311240
    cmpwi   r0, 0x0
    beq-    branch_0x8031124c
    bge-    branch_0x80311254
    b       branch_0x80311210

branch_0x80311240:
    cmpwi   r0, 0x4
    bge+    branch_0x80311210
    b       branch_0x803112ac

branch_0x8031124c:
    bl      updateDac__Q28JASystem6KernelFv
    b       branch_0x80311210

branch_0x80311254:
    lwz     r0, R13Off_m0x5c68(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80311268
    li      r3, 0x0
    b       branch_0x803112b8

branch_0x80311268:
    lwz     r4, R13Off_m0x5c68(r13)
    addi    r0, r4, -0x1
    stw     r0, R13Off_m0x5c68(r13)
    lwz     r0, R13Off_m0x5c68(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80311290
    li      r3, 0x7
    bl      probeFinish__Q28JASystem6KernelFl
    bl      finishDSPFrame__Q28JASystem6DSPBufFv
    b       branch_0x80311210

branch_0x80311290:
    li      r3, 0x2
    addi    r4, r2, R2Off_0x688
    bl      probeStart__Q28JASystem6KernelFlPc
    bl      updateDSP__Q28JASystem6DSPBufFv
    li      r3, 0x2
    bl      probeFinish__Q28JASystem6KernelFl
    b       branch_0x80311210

branch_0x803112ac:
    li      r3, 0x0
    bl      OSExitThread
    b       branch_0x80311210

branch_0x803112b8:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl syncDSP__Q28JASystem11AudioThreadFPv
syncDSP__Q28JASystem11AudioThreadFPv: # 0x803112d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
branch_0x803112dc:
    bl      DSPCheckMailFromDSP
    cmplwi  r3, 0x0
    beq+    branch_0x803112dc
    bl      DSPReadMailFromDSP
    lhz     r0, -0x7408(r13)
    srwi    r4, r3, 16
    cmplw   r4, r0
    bne-    branch_0x80311348
    lis     r4, unk_0000ff00@ha
    rlwinm  r5, r3, 0, 16, 23
    addi    r0, r4, unk_0000ff00@l
    cmpw    r5, r0
    beq-    branch_0x80311314
    b       branch_0x80311340

branch_0x80311314:
    lwz     r0, R13Off_m0x5c6c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80311338
    lis     r3, audioproc_mq__Q28JASystem11AudioThread@ha
    addi    r3, r3, audioproc_mq__Q28JASystem11AudioThread@l
    li      r4, 0x1
    li      r5, 0x0
    bl      OSSendMessage
    b       branch_0x80311348

branch_0x80311338:
    bl      DSPReleaseHalt__Fv
    b       branch_0x80311348

branch_0x80311340:
    clrlwi  r3, r3, 16
    bl      DspFinishWork__FUs
branch_0x80311348:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl stop__Q28JASystem11AudioThreadFv
stop__Q28JASystem11AudioThreadFv: # 0x80311358
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5c6c(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80311398
    lis     r3, audioproc_mq__Q28JASystem11AudioThread@ha
    addi    r3, r3, audioproc_mq__Q28JASystem11AudioThread@l
    li      r4, 0x3
    li      r5, 0x0
    bl      OSSendMessage
    cmpwi   r3, 0x0
    bne-    branch_0x80311398
    lis     r3, jac_audioThread__Q28JASystem11AudioThread@h
    addi    r3, r3, jac_audioThread__Q28JASystem11AudioThread@l
    bl      OSCancelThread
branch_0x80311398:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPriority__Q28JASystem11AudioThreadFUcUc
setPriority__Q28JASystem11AudioThreadFUcUc: # 0x803113a8
    clrlwi  r3, r3, 24
    clrlwi  r0, r4, 24
    stw     r3, R13Off_m0x5c60(r13)
    li      r3, 0x1
    stw     r3, R13Off_m0x5c64(r13)
    stw     r0, R13Off_m0x5c5c(r13)
    blr


.globl start__Q28JASystem11AudioThreadFP12JKRSolidHeapUlUl
start__Q28JASystem11AudioThreadFP12JKRSolidHeapUlUl: # 0x803113c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    lwz     r0, R13Off_m0x5c64(r13)
    cmpwi   r0, 0x0
    bne-    branch_0x80311410
    bl      OSGetCurrentThread
    bl      OSGetThreadPriority
    addi    r0, r3, -0x3
    stw     r0, R13Off_m0x5c60(r13)
    lwz     r3, R13Off_m0x5c60(r13)
    addi    r0, r3, 0x1
    stw     r0, R13Off_m0x5c5c(r13)
branch_0x80311410:
    mr      r3, r31
    bl      sysDramSetup__Q28JASystem6KernelFP12JKRSolidHeap
    mr      r3, r30
    bl      sysAramSetup__Q28JASystem6KernelFUl
    lis     r3, jac_audioStack__Q28JASystem11AudioThread@ha
    addi    r31, r3, jac_audioStack__Q28JASystem11AudioThread@l
    addi    r3, r31, 0x0
    li      r4, 0x200
    bl      stackInit__Q28JASystem6KernelFPUxUl
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80311470
    lis     r4, jac_audioThread__Q28JASystem11AudioThread@h
    lwz     r8, R13Off_m0x5c60(r13)
    lis     r3, audioproc__Q28JASystem11AudioThreadFPv@h
    addi    r30, r4, jac_audioThread__Q28JASystem11AudioThread@l
    addi    r4, r3, audioproc__Q28JASystem11AudioThreadFPv@l
    addi    r3, r30, 0x0
    addi    r6, r31, 0x1000
    li      r5, 0x0
    li      r7, 0x1000
    li      r9, 0x1
    bl      OSCreateThread
    mr      r3, r30
    bl      OSResumeThread
branch_0x80311470:
    lis     r3, jac_dvdStack__Q28JASystem11AudioThread@ha
    addi    r30, r3, jac_dvdStack__Q28JASystem11AudioThread@l
    addi    r3, r30, 0x0
    li      r4, 0x200
    bl      stackInit__Q28JASystem6KernelFPUxUl
    clrlwi. r0, r29, 31
    beq-    branch_0x803114c4
    bl      dvdProcInit__Q28JASystem3DvdFv
    lis     r4, jac_dvdThread__Q28JASystem11AudioThread@ha
    lwz     r8, R13Off_m0x5c5c(r13)
    lis     r3, dvdProc__Q28JASystem3DvdFPv@h
    addi    r31, r4, jac_dvdThread__Q28JASystem11AudioThread@l
    addi    r4, r3, dvdProc__Q28JASystem3DvdFPv@l
    addi    r3, r31, 0x0
    addi    r6, r30, 0x1000
    li      r5, 0x0
    li      r7, 0x1000
    li      r9, 0x1
    bl      OSCreateThread
    mr      r3, r31
    bl      OSResumeThread
branch_0x803114c4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr

