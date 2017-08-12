
.globl __DSP_exec_task
__DSP_exec_task: # 0x80353ecc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80353f2c
    lwz     r3, 0x18(r30)
    bl      DSPSendMailToDSP
branch_0x80353ef4:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353ef4
    lwz     r3, 0x1c(r30)
    bl      DSPSendMailToDSP
branch_0x80353f08:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f08
    lwz     r3, 0x20(r30)
    bl      DSPSendMailToDSP
branch_0x80353f1c:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f1c
    b       branch_0x80353f68

branch_0x80353f2c:
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80353f34:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f34
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80353f48:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f48
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80353f5c:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f5c
branch_0x80353f68:
    lwz     r3, 0xc(r31)
    bl      DSPSendMailToDSP
branch_0x80353f70:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f70
    lwz     r3, 0x10(r31)
    bl      DSPSendMailToDSP
branch_0x80353f84:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f84
    lwz     r3, 0x14(r31)
    bl      DSPSendMailToDSP
branch_0x80353f98:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353f98
    lwz     r0, 0x0(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80354004
    lhz     r3, 0x24(r31)
    bl      DSPSendMailToDSP
branch_0x80353fb8:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353fb8
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80353fcc:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353fcc
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80353fe0:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353fe0
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80353ff4:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80353ff4
    b       branch_0x80354054

branch_0x80354004:
    lhz     r3, 0x26(r31)
    bl      DSPSendMailToDSP
branch_0x8035400c:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x8035400c
    lwz     r3, 0x18(r31)
    bl      DSPSendMailToDSP
branch_0x80354020:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354020
    lwz     r3, 0x1c(r31)
    bl      DSPSendMailToDSP
branch_0x80354034:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354034
    lwz     r3, 0x20(r31)
    bl      DSPSendMailToDSP
branch_0x80354048:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354048
branch_0x80354054:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __DSP_boot_task
__DSP_boot_task: # 0x8035406c
    mflr    r0
    lis     r4, unk_803e8ac0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, unk_803e8ac0@l
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
branch_0x8035408c:
    bl      DSPCheckMailFromDSP
    cmplwi  r3, 0x0
    beq+    branch_0x8035408c
    bl      DSPReadMailFromDSP
    stw     r3, 0xc(sp)
    lis     r3, unk_80f3a001@ha
    addi    r3, r3, unk_80f3a001@l
    bl      DSPSendMailToDSP
branch_0x803540ac:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803540ac
    lwz     r3, 0xc(r30)
    bl      DSPSendMailToDSP
branch_0x803540c0:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803540c0
    lis     r3, unk_80f3c002@ha
    addi    r3, r3, unk_80f3c002@l
    bl      DSPSendMailToDSP
branch_0x803540d8:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803540d8
    lwz     r0, 0x14(r30)
    clrlwi  r3, r0, 16
    bl      DSPSendMailToDSP
branch_0x803540f0:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x803540f0
    lis     r3, unk_80f3a002@ha
    addi    r3, r3, unk_80f3a002@l
    bl      DSPSendMailToDSP
branch_0x80354108:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354108
    lwz     r3, 0x10(r30)
    bl      DSPSendMailToDSP
branch_0x8035411c:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x8035411c
    lis     r3, unk_80f3b002@ha
    addi    r3, r3, unk_80f3b002@l
    bl      DSPSendMailToDSP
branch_0x80354134:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354134
    li      r3, 0x0
    bl      DSPSendMailToDSP
branch_0x80354148:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354148
    lis     r3, unk_80f3d001@ha
    addi    r3, r3, unk_80f3d001@l
    bl      DSPSendMailToDSP
branch_0x80354160:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354160
    lhz     r3, 0x24(r30)
    bl      DSPSendMailToDSP
branch_0x80354174:
    bl      DSPCheckMailToDSP
    cmplwi  r3, 0x0
    bne+    branch_0x80354174
    addi    r3, r31, 0x0
    crxor   6, 6, 6
    addi    r4, r30, 0x0
    bl      __DSP_debug_printf
    lwz     r4, 0xc(r30)
    addi    r3, r31, 0x20
    crxor   6, 6, 6
    bl      __DSP_debug_printf
    lwz     r4, 0x14(r30)
    addi    r3, r31, 0x50
    crxor   6, 6, 6
    bl      __DSP_debug_printf
    lwz     r4, 0x10(r30)
    addi    r3, r31, 0x80
    crxor   6, 6, 6
    bl      __DSP_debug_printf
    lwz     r4, 0x1c(r30)
    addi    r3, r31, 0xb0
    crxor   6, 6, 6
    bl      __DSP_debug_printf
    lhz     r4, 0x24(r30)
    addi    r3, r31, 0xe0
    crxor   6, 6, 6
    bl      __DSP_debug_printf
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __DSP_insert_task
__DSP_insert_task: # 0x803541f8
    lwz     r0, R13Off_m0x57e4(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x80354220
    stw     r3, R13Off_m0x57e0(r13)
    li      r0, 0x0
    stw     r3, R13Off_m0x57e8(r13)
    stw     r3, R13Off_m0x57e4(r13)
    stw     r0, 0x3c(r3)
    stw     r0, 0x38(r3)
    blr

branch_0x80354220:
    mr      r5, r0
    b       branch_0x80354268

branch_0x80354228:
    lwz     r4, 0x4(r3)
    lwz     r0, 0x4(r5)
    cmplw   r4, r0
    bge-    branch_0x80354264
    lwz     r0, 0x3c(r5)
    stw     r0, 0x3c(r3)
    stw     r3, 0x3c(r5)
    stw     r5, 0x38(r3)
    lwz     r4, 0x3c(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8035425c
    stw     r3, R13Off_m0x57e4(r13)
    b       branch_0x80354270

branch_0x8035425c:
    stw     r3, 0x38(r4)
    b       branch_0x80354270

branch_0x80354264:
    lwz     r5, 0x38(r5)
branch_0x80354268:
    cmplwi  r5, 0x0
    bne+    branch_0x80354228
branch_0x80354270:
    cmplwi  r5, 0x0
    bnelr-    

    lwz     r4, R13Off_m0x57e8(r13)
    li      r0, 0x0
    stw     r3, 0x38(r4)
    stw     r0, 0x38(r3)
    lwz     r0, R13Off_m0x57e8(r13)
    stw     r0, 0x3c(r3)
    stw     r3, R13Off_m0x57e8(r13)
    blr


.globl __DSP_remove_task
__DSP_remove_task: # 0x80354298
    li      r4, 0x0
    stw     r4, 0x8(r3)
    li      r0, 0x3
    stw     r0, 0x0(r3)
    lwz     r0, R13Off_m0x57e4(r13)
    cmplw   r0, r3
    bne-    branch_0x803542e0
    lwz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x803542d0
    stw     r0, R13Off_m0x57e4(r13)
    lwz     r3, 0x38(r3)
    stw     r4, 0x3c(r3)
    blr

branch_0x803542d0:
    stw     r4, R13Off_m0x57e0(r13)
    stw     r4, R13Off_m0x57e8(r13)
    stw     r4, R13Off_m0x57e4(r13)
    blr

branch_0x803542e0:
    lwz     r0, R13Off_m0x57e8(r13)
    cmplw   r0, r3
    bne-    branch_0x80354308
    lwz     r0, 0x3c(r3)
    stw     r0, R13Off_m0x57e8(r13)
    lwz     r3, 0x3c(r3)
    stw     r4, 0x38(r3)
    lwz     r0, R13Off_m0x57e4(r13)
    stw     r0, R13Off_m0x57e0(r13)
    blr

branch_0x80354308:
    lwz     r0, 0x38(r3)
    stw     r0, R13Off_m0x57e0(r13)
    lwz     r0, 0x38(r3)
    lwz     r4, 0x3c(r3)
    stw     r0, 0x38(r4)
    lwz     r0, 0x3c(r3)
    lwz     r3, 0x38(r3)
    stw     r0, 0x3c(r3)
    blr

