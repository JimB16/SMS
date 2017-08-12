
.globl DspHandShake__FPv
DspHandShake__FPv: # 0x80337480
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
branch_0x8033748c:
    bl      DSPCheckMailFromDSP
    stw     r3, 0x14(sp)
    lwz     r0, 0x14(sp)
    cmplwi  r0, 0x0
    beq+    branch_0x8033748c
    bl      DSPReadMailFromDSP
    bl      DSPCheckMailFromDSP
    bl      Dsp_Running_Start__Fv
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

branch_0x803374bc:
    .long 0x0

.globl DspBoot__FPFPv_v
DspBoot__FPFPv_v: # 0x803374c0
    mflr    r0
    lis     r4, audio_task@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stmw    r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, audio_task@l
    bl      DspInitWork__Fv
    li      r0, 0xf0
    lis     r3, jdsp@h
    addi    r3, r3, jdsp@l
    stw     r0, 0x4(r31)
    addis   r0, r3, 0x8000
    addis   r4, r31, 0x8000
    stw     r0, 0xc(r31)
    li      r0, 0x1ce0
    lis     r3, DspHandShake__FPv@h
    li      r7, 0x0
    stw     r0, 0x10(r31)
    addi    r6, r4, 0x60
    li      r5, 0x2000
    li      r4, 0x10
    stw     r7, 0x14(r31)
    addi    r0, r3, DspHandShake__FPv@l
    stw     r6, 0x18(r31)
    stw     r5, 0x1c(r31)
    stw     r7, 0x20(r31)
    sth     r7, 0x24(r31)
    sth     r4, 0x26(r31)
    stw     r0, 0x28(r31)
    stw     r7, 0x2c(r31)
    stw     r7, 0x30(r31)
    stw     r30, 0x34(r31)
    bl      DSPInit
    mr      r3, r31
    bl      DSPAddPriorTask__FP15STRUCT_DSP_TASK
    lwz     r0, 0x1c(sp)
    lmw     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

branch_0x80337564:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl DSPSendCommands2__FPUlUlPFUs_v
DSPSendCommands2__FPUlUlPFUs_v: # 0x80337580
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r26, 0x18(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    addi    r30, r5, 0x0
branch_0x8033759c:
    bl      Dsp_Running_Check__Fv
    cmpwi   r3, 0x0
    beq+    branch_0x8033759c
    bl      OSDisableInterrupts
    mr      r29, r3
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    beq-    branch_0x803375cc
    mr      r3, r29
    bl      OSRestoreInterrupts
    li      r3, -0x1
    b       branch_0x80337644

branch_0x803375cc:
    mr      r3, r27
    bl      DSPSendMailToDSP
    bl      DSPAssertInt
branch_0x803375d8:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803375d8
    cmplwi  r27, 0x0
    bne-    branch_0x803375f0
    li      r27, 0x2
branch_0x803375f0:
    cmplwi  r30, 0x0
    beq-    branch_0x80337608
    lwz     r3, 0x0(r26)
    mr      r4, r30
    bl      DspStartWork__FUlPFUs_v
    mr      r28, r3
branch_0x80337608:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80337630

branch_0x80337614:
    lwzx    r3, r26, r31
    bl      DSPSendMailToDSP
branch_0x8033761c:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x8033761c
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80337630:
    cmplw   r30, r27
    blt+    branch_0x80337614
    mr      r3, r29
    bl      OSRestoreInterrupts
    mr      r3, r28
branch_0x80337644:
    lmw     r26, 0x18(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr

branch_0x80337658:
    .long 0x0
    .long 0x0

.globl DspInitWork__Fv
DspInitWork__Fv: # 0x80337660
    li      r3, 0x0
    lis     r4, taskwork@h
    li      r0, 0x10
    addi    r6, r3, 0x0
    addi    r5, r4, taskwork@l
    mtctr   r0
branch_0x80337678:
    add     r4, r5, r3
    addi    r3, r3, 0x8
    stw     r6, 0x4(r4)
    bdnz+      branch_0x80337678
    blr

branch_0x8033768c:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl DspStartWork__FUlPFUs_v
DspStartWork__FUlPFUs_v: # 0x803376a0
    lwz     r8, R13Off_m0x5ac4(r13)
    lwz     r0, R13Off_m0x5ac8(r13)
    addi    r5, r8, 0x1
    clrlwi  r7, r5, 28
    addi    r9, r5, 0x0
    cmplw   r7, r0
    bne-    branch_0x803376c4
    li      r3, 0x0
    blr

branch_0x803376c4:
    lis     r5, taskwork@h
    srwi    r6, r3, 16
    slwi    r3, r8, 3
    addi    r0, r5, taskwork@l
    add     r5, r0, r3
    addi    r3, r9, 0x0
    sth     r6, 0x0(r5)
    stw     r4, 0x4(r5)
    stw     r7, R13Off_m0x5ac4(r13)
    blr

branch_0x803376ec:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl DspFinishWork__FUs
DspFinishWork__FUs: # 0x80337700
    mflr    r0
    lis     r4, taskwork@h
    stw     r0, 0x4(sp)
    addi    r0, r4, taskwork@l
    clrlwi  r4, r3, 16
    stwu    sp, -0x8(sp)
    lwz     r5, R13Off_m0x5ac8(r13)
    slwi    r3, r5, 3
    add     r3, r0, r3
    lhz     r0, 0x0(r3)
    cmplw   r4, r0
    bne-    branch_0x80337758
    lwz     r12, 0x4(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80337748
    clrlwi  r3, r5, 16
    mtlr    r12
    blrl
branch_0x80337748:
    lwz     r3, R13Off_m0x5ac8(r13)
    addi    r0, r3, 0x1
    clrlwi  r0, r0, 28
    stw     r0, R13Off_m0x5ac8(r13)
branch_0x80337758:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

branch_0x80337768:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
