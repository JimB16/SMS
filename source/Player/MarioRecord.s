
.globl reset__17TMarioInputReplayFv
reset__17TMarioInputReplayFv: # 0x80257ef4
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    sth     r0, 0x2(r3)
    addi    r3, r31, 0x10
    sth     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    bl      reset__22TRecordValueManager_f_Fv
    addi    r3, r31, 0x2c
    bl      reset__22TRecordValueManager_s_Fv
    addi    r3, r31, 0x48
    bl      reset__23TRecordValueManager_Us_Fv
    addi    r3, r31, 0x64
    bl      reset__23TRecordValueManager_Uc_Fv
    addi    r3, r31, 0x80
    bl      reset__23TRecordValueManager_Uc_Fv
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl play__17TMarioInputReplayFPfPsPUlPUlPUcPUc
play__17TMarioInputReplayFPfPsPUlPUlPUcPUc: # 0x80257f54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r26, 0x28(sp)
    mr      r31, r3
    addi    r26, r5, 0x0
    addi    r27, r6, 0x0
    addi    r28, r7, 0x0
    addi    r29, r8, 0x0
    addi    r30, r9, 0x0
    lhz     r0, 0x2(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80258020
    lwz     r3, 0x8(r31)
    lwz     r0, 0xc(r31)
    cmplw   r3, r0
    bge-    branch_0x80258018
    addi    r3, r31, 0x10
    bl      get__22TRecordValueManager_f_FPf
    addi    r3, r31, 0x2c
    addi    r4, r26, 0x0
    bl      get__22TRecordValueManager_s_FPs
    addi    r3, r31, 0x48
    addi    r4, sp, 0x24
    bl      get__23TRecordValueManager_Us_FPUs
    lhz     r5, 0x24(sp)
    mr      r4, r29
    lhz     r0, 0x4(r31)
    addi    r3, r31, 0x64
    xor     r0, r5, r0
    sth     r5, 0x4(r31)
    and     r6, r5, r0
    lwz     r5, 0x0(r27)
    lhz     r0, 0x24(sp)
    rlwimi  r0, r5, 0, 0, 15
    stw     r0, 0x0(r27)
    lwz     r0, 0x0(r28)
    clrrwi  r0, r0, 16
    insrwi  r0, r6, 16, 16
    stw     r0, 0x0(r28)
    bl      get__23TRecordValueManager_Uc_FPUc
    addi    r3, r31, 0x80
    addi    r4, r30, 0x0
    bl      get__23TRecordValueManager_Uc_FPUc
    lwz     r4, 0x8(r31)
    li      r3, 0x1
    addi    r0, r4, 0x1
    stw     r0, 0x8(r31)
    b       branch_0x80258024

branch_0x80258018:
    li      r0, 0x0
    sth     r0, 0x2(r31)
branch_0x80258020:
    li      r3, 0x0
branch_0x80258024:
    lmw     r26, 0x28(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl init__17TMarioInputReplayFPUc
init__17TMarioInputReplayFPUc: # 0x80258038
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    sth     r0, 0x0(r3)
    addi    r3, r30, 0x10
    sth     r0, 0x2(r30)
    sth     r0, 0x4(r30)
    stw     r0, 0x8(r30)
    lwz     r0, 0x10(r4)
    stw     r0, 0xc(r30)
    lwz     r0, 0x14(r4)
    add     r0, r31, r0
    stw     r0, 0x10(r30)
    lwz     r0, 0x18(r4)
    add     r0, r31, r0
    stw     r0, 0x14(r30)
    bl      reset__22TRecordValueManager_f_Fv
    lwz     r0, 0x1c(r31)
    addi    r3, r30, 0x2c
    add     r0, r31, r0
    stw     r0, 0x2c(r30)
    lwz     r0, 0x20(r31)
    add     r0, r31, r0
    stw     r0, 0x30(r30)
    bl      reset__22TRecordValueManager_s_Fv
    lwz     r0, 0x24(r31)
    addi    r3, r30, 0x48
    add     r0, r31, r0
    stw     r0, 0x48(r30)
    lwz     r0, 0x28(r31)
    add     r0, r31, r0
    stw     r0, 0x4c(r30)
    bl      reset__23TRecordValueManager_Us_Fv
    lwz     r0, 0x2c(r31)
    addi    r3, r30, 0x64
    add     r0, r31, r0
    stw     r0, 0x64(r30)
    lwz     r0, 0x30(r31)
    add     r0, r31, r0
    stw     r0, 0x68(r30)
    bl      reset__23TRecordValueManager_Uc_Fv
    lwz     r0, 0x34(r31)
    addi    r3, r30, 0x80
    add     r0, r31, r0
    stw     r0, 0x80(r30)
    lwz     r0, 0x38(r31)
    add     r0, r31, r0
    stw     r0, 0x84(r30)
    bl      reset__23TRecordValueManager_Uc_Fv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl reset__23TRecordValueManager_Uc_Fv
reset__23TRecordValueManager_Uc_Fv: # 0x80258128
    lwz     r4, 0x0(r3)
    li      r0, 0x0
    stw     r4, 0x8(r3)
    lwz     r4, 0x4(r3)
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl get__23TRecordValueManager_Uc_FPUc
get__23TRecordValueManager_Uc_FPUc: # 0x80258148
    lwz     r5, 0xc(r3)
    lbz     r0, 0x0(r5)
    stb     r0, 0x0(r4)
    lwz     r4, 0x10(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x10(r3)
    lwz     r4, 0x8(r3)
    lwz     r5, 0x10(r3)
    lwz     r0, 0x0(r4)
    cmplw   r5, r0
    blt-    branch_0x80258198
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    li      r0, 0x0
    lwz     r4, 0xc(r3)
    addi    r4, r4, 0x1
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    li      r3, 0x1
    blr

branch_0x80258198:
    li      r3, 0x0
    blr


.globl reset__23TRecordValueManager_Us_Fv
reset__23TRecordValueManager_Us_Fv: # 0x802581a0
    lwz     r4, 0x0(r3)
    li      r0, 0x0
    stw     r4, 0x8(r3)
    lwz     r4, 0x4(r3)
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl get__23TRecordValueManager_Us_FPUs
get__23TRecordValueManager_Us_FPUs: # 0x802581c0
    lwz     r5, 0xc(r3)
    lhz     r0, 0x0(r5)
    sth     r0, 0x0(r4)
    lwz     r4, 0x10(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x10(r3)
    lwz     r4, 0x8(r3)
    lwz     r5, 0x10(r3)
    lwz     r0, 0x0(r4)
    cmplw   r5, r0
    blt-    branch_0x80258210
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    li      r0, 0x0
    lwz     r4, 0xc(r3)
    addi    r4, r4, 0x2
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    li      r3, 0x1
    blr

branch_0x80258210:
    li      r3, 0x0
    blr


.globl reset__22TRecordValueManager_s_Fv
reset__22TRecordValueManager_s_Fv: # 0x80258218
    lwz     r4, 0x0(r3)
    li      r0, 0x0
    stw     r4, 0x8(r3)
    lwz     r4, 0x4(r3)
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl get__22TRecordValueManager_s_FPs
get__22TRecordValueManager_s_FPs: # 0x80258238
    lwz     r5, 0xc(r3)
    lha     r0, 0x0(r5)
    sth     r0, 0x0(r4)
    lwz     r4, 0x10(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x10(r3)
    lwz     r4, 0x8(r3)
    lwz     r5, 0x10(r3)
    lwz     r0, 0x0(r4)
    cmplw   r5, r0
    blt-    branch_0x80258288
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    li      r0, 0x0
    lwz     r4, 0xc(r3)
    addi    r4, r4, 0x2
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    li      r3, 0x1
    blr

branch_0x80258288:
    li      r3, 0x0
    blr


.globl reset__22TRecordValueManager_f_Fv
reset__22TRecordValueManager_f_Fv: # 0x80258290
    lwz     r4, 0x0(r3)
    li      r0, 0x0
    stw     r4, 0x8(r3)
    lwz     r4, 0x4(r3)
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    blr


.globl get__22TRecordValueManager_f_FPf
get__22TRecordValueManager_f_FPf: # 0x802582b0
    lwz     r5, 0xc(r3)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x0(r4)
    lwz     r4, 0x10(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x10(r3)
    lwz     r4, 0x8(r3)
    lwz     r5, 0x10(r3)
    lwz     r0, 0x0(r4)
    cmplw   r5, r0
    blt-    branch_0x80258300
    addi    r0, r4, 0x4
    stw     r0, 0x8(r3)
    li      r0, 0x0
    lwz     r4, 0xc(r3)
    addi    r4, r4, 0x4
    stw     r4, 0xc(r3)
    stw     r0, 0x10(r3)
    li      r3, 0x1
    blr

branch_0x80258300:
    li      r3, 0x0
    blr
