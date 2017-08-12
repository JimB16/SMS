
.globl __DSPHandler
__DSPHandler: # 0x80337880
    mflr    r0
    lis     r3, unk_cc005000@h
    stw     r0, 0x4(sp)
    lis     r4, unk_803aa818@ha
    addi    r3, r3, unk_cc005000@l
    li      r0, -0x29
    stwu    sp, -0x2f0(sp)
    stw     r31, 0x2ec(sp)
    addi    r31, r4, unk_803aa818@l
    lhz     r4, 0xa(r3)
    and     r0, r4, r0
    ori     r0, r0, 0x80
    sth     r0, 0xa(r3)
    lbz     r0, R13Off_m0x5ab8(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x803378cc
    lbz     r0, R13Off_m0x5ab8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x803378d4
branch_0x803378cc:
    lwz     r0, R13Off_m0x5ab0(r13)
    stw     r0, R13Off_m0x57e0(r13)
branch_0x803378d4:
    bl      DSPCheckMailFromDSP
    cmplwi  r3, 0x0
    beq+    branch_0x803378d4
    bl      DSPReadMailFromDSP
    lwz     r4, R13Off_m0x57e0(r13)
    lwz     r0, 0x8(r4)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80337908
    addis   r0, r3, 0x232f
    cmplwi  r0, 0x2
    bne-    branch_0x80337908
    lis     r3, unk_dcd10003@h
    addi    r3, r3, unk_dcd10003@l
branch_0x80337908:
    lis     r5, unk_dcd10003@h
    addi    r0, r5, unk_dcd10003@l
    cmpw    r3, r0
    beq-    branch_0x80337a44
    bge-    branch_0x80337938
    addi    r0, r5, 0x1
    cmpw    r3, r0
    beq-    branch_0x80337980
    bge-    branch_0x803379c8
    cmpw    r3, r5
    bge-    branch_0x8033794c
    b       branch_0x80337b94

branch_0x80337938:
    addi    r0, r5, 0x5
    cmpw    r3, r0
    beq-    branch_0x80337afc
    bge-    branch_0x80337b94
    b       branch_0x80337ae0

branch_0x8033794c:
    li      r5, 0x1
    stw     r5, 0x0(r4)
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r0, R13Off_m0x5ab0(r13)
    cmplw   r3, r0
    bne-    branch_0x80337968
    stb     r5, R13Off_m0x5ab8(r13)
branch_0x80337968:
    lwz     r12, 0x28(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80337bac
    mtlr    r12
    blrl
    b       branch_0x80337bac

branch_0x80337980:
    li      r5, 0x1
    stw     r5, 0x0(r4)
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r0, R13Off_m0x5ab0(r13)
    cmplw   r3, r0
    bne-    branch_0x803379a0
    stb     r5, R13Off_m0x5ab8(r13)
    bl      Dsp_Update_Request__Fv
branch_0x803379a0:
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r12, 0x2c(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x803379b8
    mtlr    r12
    blrl
branch_0x803379b8:
    addi    r3, r31, 0x0
    crxor   6, 6, 6
    bl      Console_printf
    b       branch_0x80337bac

branch_0x803379c8:
    addi    r3, r31, 0x10
    crxor   6, 6, 6
    bl      Console_printf
    lis     r3, unk_cdd10001@h
    addi    r3, r3, unk_cdd10001@l
    bl      DSPSendMailToDSP
branch_0x803379e0:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803379e0
    lwz     r3, R13Off_m0x57e0(r13)
    li      r0, 0x2
    stw     r0, 0x0(r3)
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r4, 0x38(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80337a30
    lwz     r0, R13Off_m0x5ab4(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80337a30
    lwz     r4, R13Off_m0x5ab0(r13)
    bl      __DSP_exec_task
    lwz     r0, R13Off_m0x5ab0(r13)
    li      r3, 0x0
    stw     r3, R13Off_m0x5ab4(r13)
    stw     r0, R13Off_m0x57e0(r13)
    b       branch_0x80337bac

branch_0x80337a30:
    bl      __DSP_exec_task
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r0, 0x38(r3)
    stw     r0, R13Off_m0x57e0(r13)
    b       branch_0x80337bac

branch_0x80337a44:
    addi    r3, r31, 0x20
    crxor   6, 6, 6
    bl      Console_printf
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r12, 0x30(r3)
    cmplwi  r12, 0x0
    beq-    branch_0x80337a68
    mtlr    r12
    blrl
branch_0x80337a68:
    lis     r3, unk_cdd10001@h
    addi    r3, r3, unk_cdd10001@l
    bl      DSPSendMailToDSP
branch_0x80337a74:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80337a74
    lwz     r3, R13Off_m0x57e0(r13)
    li      r0, 0x3
    stw     r0, 0x0(r3)
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r4, 0x38(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x80337abc
    li      r3, 0x0
    lwz     r4, R13Off_m0x5ab0(r13)
    bl      __DSP_exec_task
    lwz     r3, R13Off_m0x57e0(r13)
    bl      __DSP_remove_task
    lwz     r0, R13Off_m0x5ab0(r13)
    stw     r0, R13Off_m0x57e0(r13)
    b       branch_0x80337bac

branch_0x80337abc:
    li      r3, 0x0
    bl      __DSP_exec_task
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r0, 0x38(r3)
    stw     r0, R13Off_m0x57e0(r13)
    lwz     r3, R13Off_m0x57e0(r13)
    lwz     r3, 0x3c(r3)
    bl      __DSP_remove_task
    b       branch_0x80337bac

branch_0x80337ae0:
    lwz     r12, 0x34(r4)
    cmplwi  r12, 0x0
    beq-    branch_0x80337bac
    addi    r3, r4, 0x0
    mtlr    r12
    blrl
    b       branch_0x80337bac

branch_0x80337afc:
    lwz     r0, R13Off_m0x57e4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x80337b14
    lwz     r0, R13Off_m0x5ab4(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80337b44
branch_0x80337b14:
    lis     r3, unk_cdd10003@h
    addi    r3, r3, unk_cdd10003@l
    bl      DSPSendMailToDSP
branch_0x80337b20:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80337b20
    lwz     r0, R13Off_m0x5ab0(r13)
    li      r3, 0x0
    stw     r3, R13Off_m0x5ab4(r13)
    stw     r0, R13Off_m0x57e0(r13)
    bl      Dsp_Update_Request__Fv
    b       branch_0x80337bac

branch_0x80337b44:
    addi    r3, r31, 0x34
    crxor   6, 6, 6
    bl      Console_printf
    li      r0, 0x3
    lis     r3, unk_cdd10001@h
    stb     r0, R13Off_m0x5ab8(r13)
    addi    r3, r3, unk_cdd10001@l
    bl      DSPSendMailToDSP
branch_0x80337b64:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80337b64
    lwz     r3, R13Off_m0x5ab0(r13)
    lwz     r4, R13Off_m0x57e4(r13)
    bl      __DSP_exec_task
    lwz     r0, R13Off_m0x57e4(r13)
    addi    r3, r31, 0x48
    stw     r0, R13Off_m0x57e0(r13)
    crxor   6, 6, 6
    bl      Console_printf
    b       branch_0x80337bac

branch_0x80337b94:
    addi    r6, r3, 0x0
    addi    r3, r31, 0x5c
    addi    r5, r31, 0x6c
    li      r4, 0x10b
    crxor   6, 6, 6
    bl      OSPanic
branch_0x80337bac:
    lwz     r0, 0x2f4(sp)
    lwz     r31, 0x2ec(sp)
    addi    sp, sp, 0x2f0
    mtlr    r0
    blr


.globl DsyncFrame2__FUlUlUl
DsyncFrame2__FUlUlUl: # 0x80337bc0
    mflr    r0
    lis     r6, sync_stack@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r28, 0x18(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, sync_stack@l
    lbz     r0, R13Off_m0x5ab8(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x80337c18
    lis     r3, unk_803aa8c8@ha
    addi    r3, r3, unk_803aa8c8@l
    crxor   6, 6, 6
    bl      Console_printf
    stw     r28, 0x0(r31)
    li      r0, 0x1
    stw     r29, 0x4(r31)
    stw     r30, 0x8(r31)
    stw     r0, R13Off_m0x5ab4(r13)
    b       branch_0x80337c30

branch_0x80337c18:
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      DsyncFrame__FUlUlUl
    li      r0, 0x0
    stw     r0, R13Off_m0x5ab4(r13)
branch_0x80337c30:
    lmw     r28, 0x18(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr

branch_0x80337c44:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0

.globl Dsp_Update_Request__Fv
Dsp_Update_Request__Fv: # 0x80337c60
    mflr    r0
    lis     r3, sync_stack@h
    stw     r0, 0x4(sp)
    addi    r5, r3, sync_stack@l
    stwu    sp, -0x8(sp)
    lwz     r0, R13Off_m0x5ab4(r13)
    cmpwi   r0, 0x0
    beq-    branch_0x80337c90
    lwz     r3, 0x0(r5)
    lwz     r4, 0x4(r5)
    lwz     r5, 0x8(r5)
    bl      DsyncFrame2__FUlUlUl
branch_0x80337c90:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl Dsp_Running_Check__Fv
Dsp_Running_Check__Fv: # 0x80337ca0
    lbz     r0, R13Off_m0x5ab8(r13)
    cmplwi  r0, 0x1
    beq-    branch_0x80337cb4
    li      r3, 0x0
    blr

branch_0x80337cb4:
    li      r3, 0x1
    blr

branch_0x80337cbc:
    .long 0x0

.globl Dsp_Running_Start__Fv
Dsp_Running_Start__Fv: # 0x80337cc0
    li      r0, 0x1
    stb     r0, R13Off_m0x5ab8(r13)
    blr

