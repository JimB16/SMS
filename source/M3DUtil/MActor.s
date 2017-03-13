
.globl updateMatAnm__6MActorFv
updateMatAnm__6MActorFv: # 0x80237d70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r4, 0x4(r3)
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    lwz     r4, 0x4(r4)
    lwz     r0, 0xac(r4)
    stw     r0, 0x54(r3)
    b       branch_0x80237ddc

branch_0x80237da8:
    lwz     r3, 0x30(r30)
    clrlslwi  r4, r31, 16, 1
    lhzx    r0, r3, r4
    cmplwi  r0, 0x32
    bne-    branch_0x80237dcc
    lwz     r3, 0x2c(r30)
    lhzx    r0, r3, r4
    cmplwi  r0, 0x32
    beq-    branch_0x80237dd8
branch_0x80237dcc:
    lwz     r3, 0x4(r30)
    mr      r4, r31
    bl      SMS_CalcMatAnmAndMakeDL__FP8J3DModelUs
branch_0x80237dd8:
    addi    r31, r31, 0x1
branch_0x80237ddc:
    lwz     r0, 0x34(r30)
    clrlwi  r3, r31, 16
    cmpw    r3, r0
    blt+    branch_0x80237da8
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl entryOut__6MActorFv
entryOut__6MActorFv: # 0x80237e04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x8
    stw     r30, 0x20(sp)
    li      r30, 0x2
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
branch_0x80237e28:
    lwz     r3, 0x28(r29)
    lwzx    r3, r3, r31
    cmplwi  r3, 0x0
    beq-    branch_0x80237e54
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80237e54
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80237e54:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x6
    addi    r31, r31, 0x4
    blt+    branch_0x80237e28
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl updateOut__13MActorAnmBaseFv
updateOut__13MActorAnmBaseFv: # 0x80237e80
    blr


.globl entryIn__6MActorFv
entryIn__6MActorFv: # 0x80237e84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x8
    stw     r30, 0x20(sp)
    li      r30, 0x2
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
branch_0x80237ea8:
    lwz     r3, 0x28(r29)
    lwzx    r3, r3, r31
    cmplwi  r3, 0x0
    beq-    branch_0x80237ed4
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80237ed4
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80237ed4:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x6
    addi    r31, r31, 0x4
    blt+    branch_0x80237ea8
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl updateIn__13MActorAnmBaseFv
updateIn__13MActorAnmBaseFv: # 0x80237f00
    blr


.globl updateOut__6MActorFv
updateOut__6MActorFv: # 0x80237f04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r3
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80237f4c
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80237f4c
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80237f4c:
    lwz     r0, 0x10(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80237fa0
    li      r30, 0x0
    addi    r31, r30, 0x0
    b       branch_0x80237f90

branch_0x80237f64:
    lwz     r3, 0x10(r29)
    lwzx    r3, r3, r31
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80237f88
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80237f88:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80237f90:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    blt+    branch_0x80237f64
branch_0x80237fa0:
    lwz     r3, 0x28(r29)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80237fcc
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80237fcc
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80237fcc:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl updateIn__6MActorFv
updateIn__6MActorFv: # 0x80237fe8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r3
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238030
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80238030
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80238030:
    lwz     r0, 0x10(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x80238084
    li      r30, 0x0
    addi    r31, r30, 0x0
    b       branch_0x80238074

branch_0x80238048:
    lwz     r3, 0x10(r29)
    lwzx    r3, r3, r31
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8023806c
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8023806c:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80238074:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    blt+    branch_0x80238048
branch_0x80238084:
    lwz     r3, 0x28(r29)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802380b0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802380b0
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802380b0:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl setBrkFromIndex__6MActorFi
setBrkFromIndex__6MActorFi: # 0x802380cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238108
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x80238108:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnmFromIndex__35MActorAnmMatEach_15J3DAnmTevRegKey_FiPUs
setAnmFromIndex__35MActorAnmMatEach_15J3DAnmTevRegKey_FiPUs: # 0x8023811c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r5
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r4, 0x0(r3)
    bge-    branch_0x8023814c
    li      r0, 0x0
    b       branch_0x8023819c

branch_0x8023814c:
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x8023816c
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    b       branch_0x80238170

branch_0x8023816c:
    li      r0, 0x0
branch_0x80238170:
    stw     r0, 0x24(r30)
    addi    r3, r30, 0x4
    lwz     r4, 0x24(r30)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r30)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r30)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r30)
    li      r0, 0x1
branch_0x8023819c:
    clrlwi. r0, r0, 24
    beq-    branch_0x802381cc
    lwz     r4, 0x18(r30)
    lwz     r3, 0x24(r30)
    lwz     r4, 0x4(r4)
    bl      searchUpdateMaterialID__15J3DAnmTevRegKeyFP12J3DModelData
    mr      r3, r30
    lwz     r12, 0x20(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802381cc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setBrk__6MActorFPCc
setBrk__6MActorFPCc: # 0x802381e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x20(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238220
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x80238220:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__32MActorAnmEach_15J3DAnmTevRegKey_FPCcPUs
setAnm__32MActorAnmEach_15J3DAnmTevRegKey_FPCcPUs: # 0x80238234
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r30, 0x0
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r29)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r25, -0x1
    ble-    branch_0x802382a4
branch_0x80238280:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x80238298
    addi    r25, r7, 0x0
    addi    r8, r8, 0x1
branch_0x80238298:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x80238280
branch_0x802382a4:
    cmpwi   r8, 0x1
    bne-    branch_0x802382b0
    b       branch_0x80238330

branch_0x802382b0:
    clrlwi  r26, r3, 16
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x802382fc

branch_0x802382c4:
    lwz     r4, 0x4(r3)
    lhzx    r0, r4, r27
    cmplw   r26, r0
    bne-    branch_0x802382f0
    lwz     r4, 0x8(r3)
    mr      r3, r30
    lwzx    r4, r4, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802382f0
    b       branch_0x80238330

branch_0x802382f0:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
branch_0x802382fc:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r25, r0
    blt+    branch_0x802382c4
    mr      r4, r30
    bl      checkLower__17MActorAnmDataBaseFPCc
    mr      r3, r29
    lwz     r12, 0x20(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r25, -0x1
branch_0x80238330:
    mr      r3, r29
    lwz     r12, 0x20(r29)
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setBlk__6MActorFPCc
setBlk__6MActorFPCc: # 0x80238360
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x24(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023839c
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x8023839c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__33MActorAnmEach_16J3DAnmClusterKey_FPCcPUs
setAnm__33MActorAnmEach_16J3DAnmClusterKey_FPCcPUs: # 0x802383b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r30, 0x0
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r29)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r25, -0x1
    ble-    branch_0x80238420
branch_0x802383fc:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x80238414
    addi    r25, r7, 0x0
    addi    r8, r8, 0x1
branch_0x80238414:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x802383fc
branch_0x80238420:
    cmpwi   r8, 0x1
    bne-    branch_0x8023842c
    b       branch_0x802384ac

branch_0x8023842c:
    clrlwi  r26, r3, 16
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x80238478

branch_0x80238440:
    lwz     r4, 0x4(r3)
    lhzx    r0, r4, r27
    cmplw   r26, r0
    bne-    branch_0x8023846c
    lwz     r4, 0x8(r3)
    mr      r3, r30
    lwzx    r4, r4, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8023846c
    b       branch_0x802384ac

branch_0x8023846c:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
branch_0x80238478:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r25, r0
    blt+    branch_0x80238440
    mr      r4, r30
    bl      checkLower__17MActorAnmDataBaseFPCc
    mr      r3, r29
    lwz     r12, 0x20(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r25, -0x1
branch_0x802384ac:
    mr      r3, r29
    lwz     r12, 0x20(r29)
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setBtkFromIndex__6MActorFi
setBtkFromIndex__6MActorFi: # 0x802384dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x1c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238518
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x80238518:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnmFromIndex__39MActorAnmMatEach_19J3DAnmTextureSRTKey_FiPUs
setAnmFromIndex__39MActorAnmMatEach_19J3DAnmTextureSRTKey_FiPUs: # 0x8023852c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r5
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r4, 0x0(r3)
    bge-    branch_0x8023855c
    li      r0, 0x0
    b       branch_0x802385ac

branch_0x8023855c:
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x8023857c
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    b       branch_0x80238580

branch_0x8023857c:
    li      r0, 0x0
branch_0x80238580:
    stw     r0, 0x24(r30)
    addi    r3, r30, 0x4
    lwz     r4, 0x24(r30)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r30)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r30)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r30)
    li      r0, 0x1
branch_0x802385ac:
    clrlwi. r0, r0, 24
    beq-    branch_0x802385dc
    lwz     r4, 0x18(r30)
    lwz     r3, 0x24(r30)
    lwz     r4, 0x4(r4)
    bl      searchUpdateMaterialID__19J3DAnmTextureSRTKeyFP12J3DModelData
    mr      r3, r30
    lwz     r12, 0x20(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x802385dc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setBtk__6MActorFPCc
setBtk__6MActorFPCc: # 0x802385f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x1c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238630
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x80238630:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__36MActorAnmEach_19J3DAnmTextureSRTKey_FPCcPUs
setAnm__36MActorAnmEach_19J3DAnmTextureSRTKey_FPCcPUs: # 0x80238644
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r30, 0x0
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r29)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r25, -0x1
    ble-    branch_0x802386b4
branch_0x80238690:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x802386a8
    addi    r25, r7, 0x0
    addi    r8, r8, 0x1
branch_0x802386a8:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x80238690
branch_0x802386b4:
    cmpwi   r8, 0x1
    bne-    branch_0x802386c0
    b       branch_0x80238740

branch_0x802386c0:
    clrlwi  r26, r3, 16
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x8023870c

branch_0x802386d4:
    lwz     r4, 0x4(r3)
    lhzx    r0, r4, r27
    cmplw   r26, r0
    bne-    branch_0x80238700
    lwz     r4, 0x8(r3)
    mr      r3, r30
    lwzx    r4, r4, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80238700
    b       branch_0x80238740

branch_0x80238700:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
branch_0x8023870c:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r25, r0
    blt+    branch_0x802386d4
    mr      r4, r30
    bl      checkLower__17MActorAnmDataBaseFPCc
    mr      r3, r29
    lwz     r12, 0x20(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r25, -0x1
branch_0x80238740:
    mr      r3, r29
    lwz     r12, 0x20(r29)
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setBtpFromIndex__6MActorFi
setBtpFromIndex__6MActorFi: # 0x80238770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x18(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80238798
    cmpwi   r4, 0x0
    bge-    branch_0x802387bc
branch_0x80238798:
    cmpwi   r4, 0x0
    blt-    branch_0x802387bc
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x802387bc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnmFromIndex__36MActorAnmMatEach_16J3DAnmTexPattern_FiPUs
setAnmFromIndex__36MActorAnmMatEach_16J3DAnmTexPattern_FiPUs: # 0x802387d0
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r5
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r4, 0x0(r3)
    bge-    branch_0x80238800
    li      r0, 0x0
    b       branch_0x80238850

branch_0x80238800:
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x80238820
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    b       branch_0x80238824

branch_0x80238820:
    li      r0, 0x0
branch_0x80238824:
    stw     r0, 0x24(r30)
    addi    r3, r30, 0x4
    lwz     r4, 0x24(r30)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r30)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r30)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r30)
    li      r0, 0x1
branch_0x80238850:
    clrlwi. r0, r0, 24
    beq-    branch_0x80238880
    lwz     r4, 0x18(r30)
    lwz     r3, 0x24(r30)
    lwz     r4, 0x4(r4)
    bl      searchUpdateMaterialID__16J3DAnmTexPatternFP12J3DModelData
    mr      r3, r30
    lwz     r12, 0x20(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x80238880:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setBtp__6MActorFPCc
setBtp__6MActorFPCc: # 0x80238898
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x18(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802388d4
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x802388d4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__33MActorAnmEach_16J3DAnmTexPattern_FPCcPUs
setAnm__33MActorAnmEach_16J3DAnmTexPattern_FPCcPUs: # 0x802388e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r30, 0x0
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r29)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r25, -0x1
    ble-    branch_0x80238958
branch_0x80238934:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x8023894c
    addi    r25, r7, 0x0
    addi    r8, r8, 0x1
branch_0x8023894c:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x80238934
branch_0x80238958:
    cmpwi   r8, 0x1
    bne-    branch_0x80238964
    b       branch_0x802389e4

branch_0x80238964:
    clrlwi  r26, r3, 16
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x802389b0

branch_0x80238978:
    lwz     r4, 0x4(r3)
    lhzx    r0, r4, r27
    cmplw   r26, r0
    bne-    branch_0x802389a4
    lwz     r4, 0x8(r3)
    mr      r3, r30
    lwzx    r4, r4, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x802389a4
    b       branch_0x802389e4

branch_0x802389a4:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
branch_0x802389b0:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r25, r0
    blt+    branch_0x80238978
    mr      r4, r30
    bl      checkLower__17MActorAnmDataBaseFPCc
    mr      r3, r29
    lwz     r12, 0x20(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r25, -0x1
branch_0x802389e4:
    mr      r3, r29
    lwz     r12, 0x20(r29)
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setBpkFromIndex__6MActorFi
setBpkFromIndex__6MActorFi: # 0x80238a14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x14(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238a50
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x80238a50:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnmFromIndex__34MActorAnmMatEach_14J3DAnmColorKey_FiPUs
setAnmFromIndex__34MActorAnmMatEach_14J3DAnmColorKey_FiPUs: # 0x80238a64
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r5
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    stw     r4, 0x0(r3)
    bge-    branch_0x80238a94
    li      r0, 0x0
    b       branch_0x80238ae4

branch_0x80238a94:
    lwz     r3, 0x1c(r30)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x80238ab4
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    b       branch_0x80238ab8

branch_0x80238ab4:
    li      r0, 0x0
branch_0x80238ab8:
    stw     r0, 0x24(r30)
    addi    r3, r30, 0x4
    lwz     r4, 0x24(r30)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r30)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r30)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r30)
    li      r0, 0x1
branch_0x80238ae4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80238b14
    lwz     r4, 0x18(r30)
    lwz     r3, 0x24(r30)
    lwz     r4, 0x4(r4)
    bl      searchUpdateMaterialID__11J3DAnmColorFP12J3DModelData
    mr      r3, r30
    lwz     r12, 0x20(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x80238b14:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl setBpk__6MActorFPCc
setBpk__6MActorFPCc: # 0x80238b2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x14(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238b68
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r31)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      resetDL__6MActorFv
branch_0x80238b68:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setAnm__31MActorAnmEach_14J3DAnmColorKey_FPCcPUs
setAnm__31MActorAnmEach_14J3DAnmColorKey_FPCcPUs: # 0x80238b7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r30, 0x0
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r29)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r25, -0x1
    ble-    branch_0x80238bec
branch_0x80238bc8:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x80238be0
    addi    r25, r7, 0x0
    addi    r8, r8, 0x1
branch_0x80238be0:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x80238bc8
branch_0x80238bec:
    cmpwi   r8, 0x1
    bne-    branch_0x80238bf8
    b       branch_0x80238c78

branch_0x80238bf8:
    clrlwi  r26, r3, 16
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x80238c44

branch_0x80238c0c:
    lwz     r4, 0x4(r3)
    lhzx    r0, r4, r27
    cmplw   r26, r0
    bne-    branch_0x80238c38
    lwz     r4, 0x8(r3)
    mr      r3, r30
    lwzx    r4, r4, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80238c38
    b       branch_0x80238c78

branch_0x80238c38:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
branch_0x80238c44:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r25, r0
    blt+    branch_0x80238c0c
    mr      r4, r30
    bl      checkLower__17MActorAnmDataBaseFPCc
    mr      r3, r29
    lwz     r12, 0x20(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r25, -0x1
branch_0x80238c78:
    mr      r3, r29
    lwz     r12, 0x20(r29)
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl setAnm__35MActorAnmEach_18J3DAnmTransformKey_FPCcPUs
setAnm__35MActorAnmEach_18J3DAnmTransformKey_FPCcPUs: # 0x80238ca8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stmw    r25, 0x54(sp)
    addi    r30, r4, 0x0
    addi    r29, r3, 0x0
    addi    r31, r5, 0x0
    addi    r3, r30, 0x0
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r29)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r25, -0x1
    ble-    branch_0x80238d18
branch_0x80238cf4:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x80238d0c
    addi    r25, r7, 0x0
    addi    r8, r8, 0x1
branch_0x80238d0c:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x80238cf4
branch_0x80238d18:
    cmpwi   r8, 0x1
    bne-    branch_0x80238d24
    b       branch_0x80238da4

branch_0x80238d24:
    clrlwi  r26, r3, 16
    li      r25, 0x0
    li      r28, 0x0
    li      r27, 0x0
    b       branch_0x80238d70

branch_0x80238d38:
    lwz     r4, 0x4(r3)
    lhzx    r0, r4, r27
    cmplw   r26, r0
    bne-    branch_0x80238d64
    lwz     r4, 0x8(r3)
    mr      r3, r30
    lwzx    r4, r4, r28
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80238d64
    b       branch_0x80238da4

branch_0x80238d64:
    addi    r25, r25, 0x1
    addi    r28, r28, 0x4
    addi    r27, r27, 0x2
branch_0x80238d70:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r25, r0
    blt+    branch_0x80238d38
    mr      r4, r30
    bl      checkLower__17MActorAnmDataBaseFPCc
    mr      r3, r29
    lwz     r12, 0x20(r29)
    mr      r4, r30
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    li      r25, -0x1
branch_0x80238da4:
    mr      r3, r29
    lwz     r12, 0x20(r29)
    addi    r4, r25, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lmw     r25, 0x54(sp)
    lwz     r0, 0x74(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl checkCurBckFromIndex__6MActorFi
checkCurBckFromIndex__6MActorFi: # 0x80238dd4
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80238de8
    li      r3, 0x0
    blr

branch_0x80238de8:
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bne-    branch_0x80238dfc
    li      r3, 0x1
    blr

branch_0x80238dfc:
    li      r3, 0x0
    blr


.globl setBckFromIndex__6MActorFi
setBckFromIndex__6MActorFi: # 0x80238e04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238e30
    lwz     r12, 0x20(r3)
    li      r5, 0x0
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x80238e30:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setBck__6MActorFPCc
setBck__6MActorFPCc: # 0x80238e40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80238e6c
    lwz     r12, 0x20(r3)
    li      r5, 0x0
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x80238e6c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFrameRate__6MActorFfi
setFrameRate__6MActorFfi: # 0x80238e7c
    lwz     r3, 0x28(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    beqlr-    

    stfs    f1, 0x10(r3)
    blr


.globl getCurAnmIdx__6MActorCFi
getCurAnmIdx__6MActorCFi: # 0x80238e98
    lwz     r3, 0x28(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    bne-    branch_0x80238eb4
    li      r3, -0x1
    blr

branch_0x80238eb4:
    lwz     r3, 0x0(r3)
    blr


.globl checkBckPass__6MActorFf
checkBckPass__6MActorFf: # 0x80238ebc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80238ee0
    li      r3, 0x0
    b       branch_0x80238ef8

branch_0x80238ee0:
    addic.  r0, r3, 0x4
    mr      r3, r0
    bne-    branch_0x80238ef4
    li      r3, 0x0
    b       branch_0x80238ef8

branch_0x80238ef4:
    bl      checkPass__12J3DFrameCtrlFf
branch_0x80238ef8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getFrameCtrl__6MActorFi
getFrameCtrl__6MActorFi: # 0x80238f08
    lwz     r3, 0x28(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    bne-    branch_0x80238f24
    li      r3, 0x0
    blr

branch_0x80238f24:
    addi    r3, r3, 0x4
    blr


.globl checkAnmFileExist__6MActorFPCci
checkAnmFileExist__6MActorFPCci: # 0x80238f2c
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r5, 2
    stwu    sp, -0x68(sp)
    stmw    r26, 0x50(sp)
    addi    r30, r4, 0x0
    lwz     r3, 0x28(r3)
    lwzx    r31, r3, r0
    cmplwi  r31, 0x0
    beq-    branch_0x80239034
    mr      r3, r30
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r31)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r26, -0x1
    ble-    branch_0x80238fa8
branch_0x80238f84:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x80238f9c
    addi    r26, r7, 0x0
    addi    r8, r8, 0x1
branch_0x80238f9c:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x80238f84
branch_0x80238fa8:
    cmpwi   r8, 0x0
    bne-    branch_0x80238fb8
    li      r26, -0x1
    b       branch_0x80239024

branch_0x80238fb8:
    cmpwi   r8, 0x1
    bne-    branch_0x80238fc4
    b       branch_0x80239024

branch_0x80238fc4:
    clrlwi  r27, r3, 16
    li      r26, 0x0
    li      r29, 0x0
    li      r28, 0x0
    b       branch_0x80239010

branch_0x80238fd8:
    lwz     r3, 0x4(r4)
    lhzx    r0, r3, r28
    cmplw   r27, r0
    bne-    branch_0x80239004
    lwz     r4, 0x8(r4)
    mr      r3, r30
    lwzx    r4, r4, r29
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80239004
    b       branch_0x80239024

branch_0x80239004:
    addi    r26, r26, 0x1
    addi    r29, r29, 0x4
    addi    r28, r28, 0x2
branch_0x80239010:
    lwz     r4, 0x1c(r31)
    lwz     r0, 0x0(r4)
    cmpw    r26, r0
    blt+    branch_0x80238fd8
    li      r26, -0x1
branch_0x80239024:
    cmpwi   r26, 0x0
    blt-    branch_0x80239034
    li      r3, 0x1
    b       branch_0x80239038

branch_0x80239034:
    li      r3, 0x0
branch_0x80239038:
    lmw     r26, 0x50(sp)
    lwz     r0, 0x6c(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl checkCurAnmFromIndex__6MActorFii
checkCurAnmFromIndex__6MActorFii: # 0x8023904c
    lwz     r3, 0x28(r3)
    slwi    r0, r5, 2
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    bne-    branch_0x80239068
    li      r3, 0x0
    blr

branch_0x80239068:
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bne-    branch_0x8023907c
    li      r3, 0x1
    blr

branch_0x8023907c:
    li      r3, 0x0
    blr


.globl checkCurAnm__6MActorFPCci
checkCurAnm__6MActorFPCci: # 0x80239084
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r24, 0x58(sp)
    mr      r27, r3
    slwi    r29, r5, 2
    addi    r28, r4, 0x0
    lwz     r3, 0x28(r3)
    lwzx    r30, r3, r29
    cmplwi  r30, 0x0
    bne-    branch_0x802390b8
    li      r3, 0x0
    b       branch_0x802391a8

branch_0x802390b8:
    mr      r3, r28
    bl      MActorCalcKeyCode__FPCc
    lwz     r9, 0x1c(r30)
    li      r8, 0x0
    addi    r7, r8, 0x0
    lwz     r0, 0x0(r9)
    addi    r4, r8, 0x0
    clrlwi  r6, r3, 16
    cmpwi   r0, 0x0
    mtctr   r0
    li      r31, -0x1
    ble-    branch_0x8023910c
branch_0x802390e8:
    lwz     r5, 0x4(r9)
    lhzx    r0, r5, r4
    cmplw   r6, r0
    bne-    branch_0x80239100
    addi    r31, r7, 0x0
    addi    r8, r8, 0x1
branch_0x80239100:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x2
    bdnz+      branch_0x802390e8
branch_0x8023910c:
    cmpwi   r8, 0x0
    bne-    branch_0x8023911c
    li      r31, -0x1
    b       branch_0x80239188

branch_0x8023911c:
    cmpwi   r8, 0x1
    bne-    branch_0x80239128
    b       branch_0x80239188

branch_0x80239128:
    clrlwi  r24, r3, 16
    li      r31, 0x0
    li      r26, 0x0
    li      r25, 0x0
    b       branch_0x80239174

branch_0x8023913c:
    lwz     r3, 0x4(r4)
    lhzx    r0, r3, r25
    cmplw   r24, r0
    bne-    branch_0x80239168
    lwz     r4, 0x8(r4)
    mr      r3, r28
    lwzx    r4, r4, r26
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80239168
    b       branch_0x80239188

branch_0x80239168:
    addi    r31, r31, 0x1
    addi    r26, r26, 0x4
    addi    r25, r25, 0x2
branch_0x80239174:
    lwz     r4, 0x1c(r30)
    lwz     r0, 0x0(r4)
    cmpw    r31, r0
    blt+    branch_0x8023913c
    li      r31, -0x1
branch_0x80239188:
    lwz     r3, 0x28(r27)
    lwzx    r3, r3, r29
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bne-    branch_0x802391a4
    li      r3, 0x1
    b       branch_0x802391a8

branch_0x802391a4:
    li      r3, 0x0
branch_0x802391a8:
    lmw     r24, 0x58(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl perform__6MActorFUlPQ26JDrama9TGraphics
perform__6MActorFUlPQ26JDrama9TGraphics: # 0x802391bc
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    beq-    branch_0x802392bc
    mr      r3, r31
    bl      frameUpdate__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80239214
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239214
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80239214:
    mr      r3, r31
    bl      updateInSubBck__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80239248
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239248
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80239248:
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80239288
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239288
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80239288:
    mr      r3, r31
    bl      updateOutSubBck__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802392bc
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802392bc
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802392bc:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x802392e4
    lbz     r0, 0x39(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x802392e4
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x802392e4:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x8023937c
    lbz     r0, 0x39(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023937c
    lwz     r3, 0x3c(r31)
    li      r30, 0x0
    addis   r0, r3, 0x0
    cmplwi  r0, 0xffff
    beq-    branch_0x80239338
    cmpwi   r3, 0x0
    bge-    branch_0x80239318
    stw     r30, 0x3c(r31)
branch_0x80239318:
    lwz     r3, -0x610c(r13)
    lwz     r0, 0x44(r31)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x3c(r31)
    lwzx    r3, r3, r0
    bl      changeLightDrawBuffer__15TLightWithDBSetFi
    li      r30, 0x1
branch_0x80239338:
    mr      r3, r31
    bl      entryIn__6MActorFv
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      entryOut__6MActorFv
    clrlwi. r0, r30, 24
    beq-    branch_0x8023937c
    lwz     r3, -0x610c(r13)
    lwz     r0, 0x44(r31)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      resetLightDrawBuffer__15TLightWithDBSetFv
branch_0x8023937c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl matAnmFrameUpdate__6MActorFv
matAnmFrameUpdate__6MActorFv: # 0x80239394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x8
    stw     r30, 0x28(sp)
    li      r30, 0x2
    stw     r29, 0x24(sp)
    addi    r29, r3, 0x0
branch_0x802393b8:
    lwz     r3, 0x28(r29)
    lwzx    r3, r3, r31
    cmplwi  r3, 0x0
    beq-    branch_0x802393dc
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802393dc
    addi    r3, r3, 0x4
    bl      update__12J3DFrameCtrlFv
branch_0x802393dc:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x6
    addi    r31, r31, 0x4
    blt+    branch_0x802393b8
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl frameUpdate__6MActorFv
frameUpdate__6MActorFv: # 0x80239408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    li      r31, 0x0
    stw     r30, 0x48(sp)
    li      r30, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
branch_0x8023942c:
    lwz     r3, 0x28(r29)
    lwzx    r3, r3, r31
    cmplwi  r3, 0x0
    beq-    branch_0x80239450
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239450
    addi    r3, r3, 0x4
    bl      update__12J3DFrameCtrlFv
branch_0x80239450:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x6
    addi    r31, r31, 0x4
    blt+    branch_0x8023942c
    lwz     r0, 0x10(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x802394ac
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8023949c

branch_0x80239478:
    lwz     r3, 0x10(r29)
    lwzx    r3, r3, r31
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239494
    addi    r3, r3, 0x4
    bl      update__12J3DFrameCtrlFv
branch_0x80239494:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8023949c:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    blt+    branch_0x80239478
branch_0x802394ac:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl entry__6MActorFv
entry__6MActorFv: # 0x802394c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    stw     r28, 0x40(sp)
    lbz     r0, 0x39(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802395f4
    lwz     r3, 0x3c(r31)
    li      r28, 0x0
    addis   r0, r3, 0x0
    cmplwi  r0, 0xffff
    beq-    branch_0x80239538
    cmpwi   r3, 0x0
    bge-    branch_0x80239518
    li      r0, 0x0
    stw     r0, 0x3c(r31)
branch_0x80239518:
    lwz     r3, -0x610c(r13)
    lwz     r0, 0x44(r31)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x3c(r31)
    lwzx    r3, r3, r0
    bl      changeLightDrawBuffer__15TLightWithDBSetFi
    li      r28, 0x1
branch_0x80239538:
    li      r29, 0x2
    li      r30, 0x8
branch_0x80239540:
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r30
    cmplwi  r3, 0x0
    beq-    branch_0x8023956c
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8023956c
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8023956c:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x6
    addi    r30, r30, 0x4
    blt+    branch_0x80239540
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    li      r29, 0x2
    li      r30, 0x8
branch_0x80239598:
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r30
    cmplwi  r3, 0x0
    beq-    branch_0x802395c4
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802395c4
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802395c4:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x6
    addi    r30, r30, 0x4
    blt+    branch_0x80239598
    clrlwi. r0, r28, 24
    beq-    branch_0x802395f4
    lwz     r3, -0x610c(r13)
    lwz     r0, 0x44(r31)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      resetLightDrawBuffer__15TLightWithDBSetFv
branch_0x802395f4:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    lwz     r28, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl setLightType__6MActorFi
setLightType__6MActorFi: # 0x80239614
    stw     r4, 0x44(r3)
    slwi    r0, r4, 2
    li      r4, 0x1
    lwz     r3, -0x610c(r13)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    stb     r4, 0x20(r3)
    blr


.globl setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_
setLightData__6MActorFPC12TBGCheckDataRCQ29JGeometry8TVec3_f_: # 0x80239634
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lbz     r0, 0x40(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239704
    lwz     r3, CubeManager4(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x8023968c
    mr      r4, r31
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x8023968c
    li      r0, 0x1
    stw     r0, 0x3c(r29)
    b       branch_0x80239704

branch_0x8023968c:
    cmplwi  r30, 0x0
    beq-    branch_0x80239704
    li      r3, 0x0
    stw     r3, 0x3c(r29)
    lhz     r0, 0x0(r30)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x802396ac
    li      r3, 0x1
branch_0x802396ac:
    clrlwi. r0, r3, 24
    beq-    branch_0x80239704
    lfs     f1, 0x8(r31)
    lfs     f0, 0x3c(r30)
    lfs     f3, 0x0(r31)
    fmuls   f0, f1, f0
    lfs     f2, 0x34(r30)
    lfs     f4, 0x40(r30)
    lfs     f1, 0x38(r30)
    fmadds  f2, f3, f2, f0
    lfs     f3, -0x1558(rtoc)
    lfs     f0, 0x4(r31)
    fadds   f2, f4, f2
    fneg    f2, f2
    fdivs   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80239704
    lha     r3, 0x2(r30)
    li      r0, 0x0
    stw     r0, 0x3c(r29)
    stw     r3, 0x3c(r29)
branch_0x80239704:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl setLightID__6MActorFs
setLightID__6MActorFs: # 0x80239720
    li      r0, 0x0
    stw     r0, 0x3c(r3)
    extsh   r0, r4
    stw     r0, 0x3c(r3)
    blr


.globl viewCalc__6MActorFv
viewCalc__6MActorFv: # 0x80239734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, 0x39(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239760
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x80239760:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calc__6MActorFv
calc__6MActorFv: # 0x80239770
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lbz     r0, 0x39(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239864
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802397bc
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802397bc
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802397bc:
    mr      r3, r31
    bl      updateInSubBck__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802397f0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802397f0
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802397f0:
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80239830
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239830
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80239830:
    mr      r3, r31
    bl      updateOutSubBck__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80239864
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239864
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80239864:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl calcAnm__6MActorFv
calcAnm__6MActorFv: # 0x80239878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x78(sp)
    stw     r29, 0x74(sp)
    li      r29, 0x0
    addi    r30, r29, 0x0
branch_0x8023989c:
    lwz     r3, 0x28(r31)
    lwzx    r3, r3, r30
    cmplwi  r3, 0x0
    beq-    branch_0x802398c0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802398c0
    addi    r3, r3, 0x4
    bl      update__12J3DFrameCtrlFv
branch_0x802398c0:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x6
    addi    r30, r30, 0x4
    blt+    branch_0x8023989c
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023991c
    li      r29, 0x0
    li      r30, 0x0
    b       branch_0x8023990c

branch_0x802398e8:
    lwz     r3, 0x10(r31)
    lwzx    r3, r3, r30
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239904
    addi    r3, r3, 0x4
    bl      update__12J3DFrameCtrlFv
branch_0x80239904:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8023990c:
    lwz     r3, 0x0(r31)
    lwz     r0, 0x0(r3)
    cmpw    r29, r0
    blt+    branch_0x802398e8
branch_0x8023991c:
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80239948
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239948
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80239948:
    mr      r3, r31
    bl      updateInSubBck__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023997c
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x8023997c
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8023997c:
    lwz     r3, 0x4(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r31)
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802399bc
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802399bc
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802399bc:
    mr      r3, r31
    bl      updateOutSubBck__6MActorFv
    lwz     r3, 0x28(r31)
    lwz     r3, 0x4(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x802399f0
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x802399f0
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x802399f0:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    lwz     r29, 0x74(sp)
    addi    sp, sp, 0x80
    blr


.globl updateOutSubBck__6MActorFv
updateOutSubBck__6MActorFv: # 0x80239a0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239a7c
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80239a6c

branch_0x80239a40:
    lwz     r3, 0x10(r29)
    lwzx    r3, r3, r31
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239a64
    lwz     r12, 0x20(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x80239a64:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80239a6c:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    blt+    branch_0x80239a40
branch_0x80239a7c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl updateInSubBck__6MActorFv
updateInSubBck__6MActorFv: # 0x80239a98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239b08
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x80239af8

branch_0x80239acc:
    lwz     r3, 0x10(r29)
    lwzx    r3, r3, r31
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    blt-    branch_0x80239af0
    lwz     r12, 0x20(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80239af0:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x80239af8:
    lwz     r3, 0x0(r29)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    blt+    branch_0x80239acc
branch_0x80239b08:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl setJointCallback__6MActorFiPFP7J3DNodei_i
setJointCallback__6MActorFiPFP7J3DNodei_i: # 0x80239b24
    lwz     r3, 0x4(r3)
    clrlslwi  r0, r4, 16, 2
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    stw     r5, 0x8(r3)
    blr


.globl offMakeDL__6MActorFv
offMakeDL__6MActorFv: # 0x80239b40
    li      r0, 0x0
    stb     r0, 0x38(r3)
    li      r6, 0x0
    b       branch_0x80239b74

branch_0x80239b50:
    clrlwi  r0, r6, 16
    lwz     r5, 0x4(r3)
    mulli   r4, r0, 0x48
    lwz     r5, 0x80(r5)
    addi    r4, r4, 0x10
    lwzx    r0, r5, r4
    addi    r6, r6, 0x1
    clrrwi  r0, r0, 1
    stwx    r0, r5, r4
branch_0x80239b74:
    lwz     r0, 0x34(r3)
    clrlwi  r4, r6, 16
    cmpw    r4, r0
    blt+    branch_0x80239b50
    blr


.globl unlockDLIfNeed__6MActorFv
unlockDLIfNeed__6MActorFv: # 0x80239b88
    lbz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    beqlr-    

    li      r7, 0x0
    b       branch_0x80239be4

branch_0x80239b9c:
    clrlwi  r6, r7, 16
    lwz     r4, 0x30(r3)
    clrlslwi  r5, r7, 16, 1
    lhzx    r0, r4, r5
    cmplwi  r0, 0x32
    bne-    branch_0x80239bc4
    lwz     r4, 0x2c(r3)
    lhzx    r0, r4, r5
    cmplwi  r0, 0x32
    beq-    branch_0x80239be0
branch_0x80239bc4:
    mulli   r4, r6, 0x48
    lwz     r5, 0x4(r3)
    lwz     r5, 0x80(r5)
    addi    r4, r4, 0x10
    lwzx    r0, r5, r4
    clrrwi  r0, r0, 1
    stwx    r0, r5, r4
branch_0x80239be0:
    addi    r7, r7, 0x1
branch_0x80239be4:
    lwz     r0, 0x34(r3)
    clrlwi  r4, r7, 16
    cmpw    r4, r0
    blt+    branch_0x80239b9c
    blr


.globl resetDL__6MActorFv
resetDL__6MActorFv: # 0x80239bf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    mr      r27, r3
    lbz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239d28
    lis     r3, 0x8040
    lwz     r0, 0x4(r27)
    addi    r30, r3, 0x45dc
    stw     r0, 0x38(r30)
    lis     r3, 0x803e
    addi    r31, r3, 0x7a8
    lwz     r3, 0x4(r27)
    li      r28, 0x0
    lwz     r3, 0x4(r3)
    lwz     r0, 0xac(r3)
    stw     r0, 0x54(r30)
    b       branch_0x80239d18

branch_0x80239c48:
    clrlwi  r5, r28, 16
    lwz     r3, 0x30(r27)
    clrlslwi  r4, r28, 16, 1
    lhzx    r0, r3, r4
    cmplwi  r0, 0x32
    bne-    branch_0x80239c70
    lwz     r3, 0x2c(r27)
    lhzx    r0, r3, r4
    cmplwi  r0, 0x32
    beq-    branch_0x80239c90
branch_0x80239c70:
    mulli   r3, r5, 0x48
    lwz     r4, 0x4(r27)
    lwz     r4, 0x80(r4)
    addi    r3, r3, 0x10
    lwzx    r0, r4, r3
    clrrwi  r0, r0, 1
    stwx    r0, r4, r3
    b       branch_0x80239d14

branch_0x80239c90:
    lwz     r4, 0x4(r27)
    mulli   r29, r5, 0x48
    lwz     r0, 0x80(r4)
    add     r3, r0, r29
    lwz     r0, 0x10(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80239cb4
    li      r0, 0x1
    b       branch_0x80239cb8

branch_0x80239cb4:
    li      r0, 0x0
branch_0x80239cb8:
    cmpwi   r0, 0x0
    bne-    branch_0x80239d14
    lwz     r3, 0x4(r4)
    slwi    r26, r5, 2
    addi    r4, r31, 0x0
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r26
    bl      calc__11J3DMaterialFPA4_f
    lwz     r3, 0x4(r27)
    lwz     r0, 0x80(r3)
    add     r0, r0, r29
    stw     r0, 0x3c(r30)
    lwz     r3, 0x4(r27)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r26
    bl      makeDisplayList__11J3DMaterialFv
    lwz     r4, 0x4(r27)
    addi    r3, r29, 0x10
    lwz     r4, 0x80(r4)
    lwzx    r0, r4, r3
    ori     r0, r0, 0x1
    stwx    r0, r4, r3
branch_0x80239d14:
    addi    r28, r28, 0x1
branch_0x80239d18:
    lwz     r0, 0x34(r27)
    clrlwi  r3, r28, 16
    cmpw    r3, r0
    blt+    branch_0x80239c48
branch_0x80239d28:
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl initDL__6MActorFv
initDL__6MActorFv: # 0x80239d3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r26, 0x98(sp)
    mr      r26, r3
    lbz     r0, 0x38(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80239e50
    lis     r3, 0x8040
    lwz     r0, 0x4(r26)
    addi    r30, r3, 0x45dc
    stw     r0, 0x38(r30)
    lis     r3, 0x803e
    addi    r31, r3, 0x7a8
    lwz     r3, 0x4(r26)
    li      r27, 0x0
    lwz     r3, 0x4(r3)
    lwz     r0, 0xac(r3)
    stw     r0, 0x54(r30)
    b       branch_0x80239e40

branch_0x80239d8c:
    clrlwi  r4, r27, 16
    lwz     r3, 0x4(r26)
    mulli   r28, r4, 0x48
    lwz     r0, 0x80(r3)
    add     r3, r0, r28
    lwz     r0, 0x10(r3)
    clrlslwi  r5, r27, 16, 1
    clrrwi  r0, r0, 1
    stw     r0, 0x10(r3)
    lwz     r3, 0x30(r26)
    lhzx    r0, r3, r5
    cmplwi  r0, 0x32
    bne-    branch_0x80239e3c
    lwz     r3, 0x2c(r26)
    lhzx    r0, r3, r5
    cmplwi  r0, 0x32
    bne-    branch_0x80239e3c
    lwz     r3, 0x4(r26)
    slwi    r29, r4, 2
    addi    r4, r31, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r29
    bl      calc__11J3DMaterialFPA4_f
    lwz     r3, 0x4(r26)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r29
    bl      setCurrentMtx__11J3DMaterialFv
    lwz     r3, 0x4(r26)
    lwz     r0, 0x80(r3)
    add     r0, r0, r28
    stw     r0, 0x3c(r30)
    lwz     r3, 0x4(r26)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r29
    bl      makeDisplayList__11J3DMaterialFv
    lwz     r4, 0x4(r26)
    addi    r3, r28, 0x10
    lwz     r4, 0x80(r4)
    lwzx    r0, r4, r3
    ori     r0, r0, 0x1
    stwx    r0, r4, r3
branch_0x80239e3c:
    addi    r27, r27, 0x1
branch_0x80239e40:
    lwz     r0, 0x34(r26)
    clrlwi  r3, r27, 16
    cmpw    r3, r0
    blt+    branch_0x80239d8c
branch_0x80239e50:
    lmw     r26, 0x98(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl setAnimation__6MActorFPCci
setAnimation__6MActorFPCci: # 0x80239e64
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r5, 2
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r0
    cmplwi  r3, 0x0
    beq-    branch_0x80239ec4
    lwz     r12, 0x20(r3)
    lwz     r5, 0x2c(r30)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x38(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80239ec4
    cmpwi   r31, 0x0
    beq-    branch_0x80239ec4
    mr      r3, r30
    bl      resetDL__6MActorFv
branch_0x80239ec4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl curAnmEndsNext__6MActorFiPc
curAnmEndsNext__6MActorFiPc: # 0x80239edc
    mflr    r0
    stw     r0, 0x4(sp)
    slwi    r0, r4, 2
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    lwz     r3, 0x28(r3)
    lwzx    r6, r3, r0
    cmplwi  r6, 0x0
    bne-    branch_0x80239f0c
    li      r3, 0x1
    b       branch_0x8023a034

branch_0x80239f0c:
    cmpwi   r4, 0x0
    bne-    branch_0x80239fe8
    cmplwi  r5, 0x0
    bne-    branch_0x80239f6c
    lha     r3, 0xc(r6)
    lis     r0, 0x4330
    lfs     f1, 0x14(r6)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x10(r6)
    stw     r3, 0x44(sp)
    fadds   f2, f1, f0
    lfs     f3, -0x1554(rtoc)
    stw     r0, 0x40(sp)
    lfd     f1, -0x1550(rtoc)
    lfd     f0, 0x40(sp)
    fadds   f2, f3, f2
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80239f64
    li      r3, 0x1
    b       branch_0x8023a034

branch_0x80239f64:
    li      r3, 0x0
    b       branch_0x8023a034

branch_0x80239f6c:
    lwz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80239f80
    li      r3, 0x1
    b       branch_0x8023a034

branch_0x80239f80:
    lwz     r3, 0x0(r31)
    mr      r4, r5
    bl      partsNameToIdx__13MActorAnmDataFPCc
    lwz     r4, 0x10(r31)
    slwi    r3, r3, 2
    lis     r0, 0x4330
    lfs     f3, -0x1554(rtoc)
    lwzx    r4, r4, r3
    lfd     f1, -0x1550(rtoc)
    lha     r3, 0xc(r4)
    lfs     f2, 0x14(r4)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x10(r4)
    stw     r3, 0x44(sp)
    fadds   f2, f2, f0
    stw     r0, 0x40(sp)
    lfd     f0, 0x40(sp)
    fadds   f2, f3, f2
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x80239fe0
    li      r3, 0x1
    b       branch_0x8023a034

branch_0x80239fe0:
    li      r3, 0x0
    b       branch_0x8023a034

branch_0x80239fe8:
    lha     r3, 0xc(r6)
    lis     r0, 0x4330
    lfs     f1, 0x14(r6)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x10(r6)
    stw     r3, 0x44(sp)
    fadds   f2, f1, f0
    lfs     f3, -0x1554(rtoc)
    stw     r0, 0x40(sp)
    lfd     f1, -0x1550(rtoc)
    lfd     f0, 0x40(sp)
    fadds   f2, f3, f2
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8023a030
    li      r3, 0x1
    b       branch_0x8023a034

branch_0x8023a030:
    li      r3, 0x0
branch_0x8023a034:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl isCurAnmAlreadyEnd__6MActorFi
isCurAnmAlreadyEnd__6MActorFi: # 0x8023a048
    stwu    sp, -0x38(sp)
    slwi    r0, r4, 2
    lwz     r5, 0x28(r3)
    li      r3, 0x1
    lwzx    r4, r5, r0
    cmplwi  r4, 0x0
    bne-    branch_0x8023a06c
    li      r4, 0x0
    b       branch_0x8023a070

branch_0x8023a06c:
    addi    r4, r4, 0x4
branch_0x8023a070:
    cmplwi  r4, 0x0
    beq-    branch_0x8023a108
    lbz     r6, 0x5(r4)
    li      r5, 0x1
    addi    r3, r5, 0x0
    clrlwi. r0, r6, 31
    beq-    branch_0x8023a094
    mr      r0, r5
    b       branch_0x8023a098

branch_0x8023a094:
    li      r0, 0x0
branch_0x8023a098:
    cmpwi   r0, 0x0
    bne-    branch_0x8023a0c0
    rlwinm. r0, r6, 0, 30, 30
    beq-    branch_0x8023a0b0
    li      r0, 0x1
    b       branch_0x8023a0b4

branch_0x8023a0b0:
    li      r0, 0x0
branch_0x8023a0b4:
    cmpwi   r0, 0x0
    bne-    branch_0x8023a0c0
    li      r3, 0x0
branch_0x8023a0c0:
    clrlwi. r0, r3, 24
    bne-    branch_0x8023a104
    lha     r3, 0x8(r4)
    lis     r0, 0x4330
    lfs     f2, -0x1554(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f0, 0x10(r4)
    stw     r3, 0x34(sp)
    lfd     f1, -0x1550(rtoc)
    fadds   f2, f2, f0
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq-    branch_0x8023a104
    li      r5, 0x0
branch_0x8023a104:
    mr      r3, r5
branch_0x8023a108:
    addi    sp, sp, 0x38
    blr


.globl setModel__6MActorFP8J3DModelUl
setModel__6MActorFP8J3DModelUl: # 0x8023a110
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stmw    r25, 0xdc(sp)
    mr      r30, r3
    mr      r26, r5
    stw     r4, 0x4(r3)
    lwz     r3, 0x4(r4)
    lhz     r0, 0x24(r3)
    stw     r0, 0x34(r30)
    lwz     r0, 0x34(r30)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    stw     r3, 0x2c(r30)
    lwz     r0, 0x34(r30)
    slwi    r3, r0, 1
    bl      __nwa__FUl
    not     r0, r26
    stw     r3, 0x30(r30)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x8023a16c
    li      r0, 0x1
    stb     r0, 0x38(r30)
branch_0x8023a16c:
    lwz     r3, 0x4(r30)
    li      r31, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    lwz     r0, 0x58(r3)
    stw     r0, 0x8(r30)
    b       branch_0x8023a238

branch_0x8023a18c:
    lwz     r5, 0x4(r30)
    clrlslwi  r4, r31, 16, 2
    lwz     r3, 0x30(r30)
    clrlslwi  r27, r31, 16, 1
    lwz     r5, 0x4(r5)
    li      r0, 0x32
    lwz     r5, 0x28(r5)
    li      r26, 0x0
    lwzx    r28, r5, r4
    sthx    r0, r3, r27
    lwz     r3, 0x2c(r30)
    sthx    r0, r3, r27
    b       branch_0x8023a214

branch_0x8023a1c0:
    lwz     r3, 0x24(r28)
    clrlwi  r29, r26, 24
    addi    r4, r29, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8023a210
    lwz     r3, 0x24(r28)
    mr      r4, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a210
    lwz     r0, 0x30(r30)
    sthx    r31, r27, r0
branch_0x8023a210:
    addi    r26, r26, 0x1
branch_0x8023a214:
    lwz     r3, 0x24(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    clrlwi  r0, r26, 24
    cmplw   r0, r3
    blt+    branch_0x8023a1c0
    addi    r31, r31, 0x1
branch_0x8023a238:
    lwz     r0, 0x34(r30)
    clrlwi  r3, r31, 16
    cmpw    r3, r0
    blt+    branch_0x8023a18c
    li      r26, 0x0
    li      r31, 0x0
branch_0x8023a250:
    lwz     r3, 0x28(r30)
    lwzx    r3, r3, r31
    cmplwi  r3, 0x0
    beq-    branch_0x8023a290
    lwz     r12, 0x20(r3)
    lwz     r4, 0x4(r30)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x28(r30)
    lwz     r4, 0x2c(r30)
    lwzx    r3, r3, r31
    lwz     r12, 0x20(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x8023a290:
    addi    r26, r26, 0x1
    cmpwi   r26, 0x6
    addi    r31, r31, 0x4
    blt+    branch_0x8023a250
    lwz     r3, 0x0(r30)
    lwz     r0, 0x0(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8023a310
    lwzu    r0, 0x24(r3)
    li      r31, 0x0
    stw     r0, 0xd4(sp)
    stw     r3, 0xd0(sp)
    b       branch_0x8023a2f0

branch_0x8023a2c4:
    lwz     r3, 0x10(r30)
    lwz     r4, 0x4(r30)
    lwzx    r3, r3, r31
    lwz     r12, 0x20(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xd4(sp)
    addi    r31, r31, 0x4
    lwz     r0, 0x0(r3)
    stw     r0, 0xd4(sp)
branch_0x8023a2f0:
    lwz     r3, 0xd0(sp)
    lwz     r0, 0xd4(sp)
    stw     r3, 0x90(sp)
    stw     r0, 0x8c(sp)
    lwz     r0, 0x90(sp)
    lwz     r3, 0x8c(sp)
    cmplw   r3, r0
    bne+    branch_0x8023a2c4
branch_0x8023a310:
    lis     r3, 0x803e
    addi    r29, r3, 0x1798
    li      r31, 0x0
    lis     r28, 0xc000
    b       branch_0x8023a3b8

branch_0x8023a324:
    lwz     r3, 0x4(r30)
    clrlslwi  r0, r31, 16, 2
    clrlwi  r26, r31, 16
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwzx    r27, r3, r0
    lwz     r0, 0x38(r27)
    cmplw   r0, r28
    bge-    branch_0x8023a34c
    b       branch_0x8023a350

branch_0x8023a34c:
    li      r0, 0x0
branch_0x8023a350:
    cmplwi  r0, 0x0
    bne-    branch_0x8023a3a4
    lwz     r3, 0x2c(r30)
    slwi    r4, r26, 1
    lhzx    r0, r3, r4
    cmplwi  r0, 0x32
    bne-    branch_0x8023a37c
    lwz     r3, 0x30(r30)
    lhzx    r0, r3, r4
    cmplwi  r0, 0x32
    beq-    branch_0x8023a3a4
branch_0x8023a37c:
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a398
    stw     r29, 0x0(r25)
    mr      r3, r25
    bl      initialize__14J3DMaterialAnmFv
branch_0x8023a398:
    mr      r3, r27
    bl      change__11J3DMaterialFv
    stw     r25, 0x38(r27)
branch_0x8023a3a4:
    lwz     r3, 0x2c(r30)
    slwi    r0, r26, 1
    li      r4, 0x32
    sthx    r4, r3, r0
    addi    r31, r31, 0x1
branch_0x8023a3b8:
    lwz     r0, 0x34(r30)
    clrlwi  r3, r31, 16
    cmpw    r3, r0
    blt+    branch_0x8023a324
    mr      r3, r30
    bl      initDL__6MActorFv
    lwz     r3, 0x0(r30)
    lwz     r0, 0x48(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8023a3ec
    lwz     r4, 0x4(r30)
    lwz     r4, 0x4(r4)
    bl      createSampleModelData__13MActorAnmDataFP12J3DModelData
branch_0x8023a3ec:
    lmw     r25, 0xdc(sp)
    lwz     r0, 0xfc(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl setModel__13MActorAnmBaseFP8J3DModel
setModel__13MActorAnmBaseFP8J3DModel: # 0x8023a400
    stw     r4, 0x18(r3)
    blr


.globl __ct__6MActorFP13MActorAnmData
__ct__6MActorFP13MActorAnmData: # 0x8023a408
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stmw    r24, 0xe8(sp)
    li      r27, 0x0
    addi    r30, r3, 0x0
    li      r26, 0x1
    addi    r31, r4, 0x0
    stw     r27, 0x0(r3)
    lis     r3, 0x1
    subi    r0, r3, 0x1
    stw     r27, 0x4(r30)
    li      r3, 0x18
    stw     r27, 0x8(r30)
    stw     r27, 0xc(r30)
    stw     r27, 0x10(r30)
    stw     r27, 0x14(r30)
    stw     r27, 0x18(r30)
    stw     r27, 0x1c(r30)
    stw     r27, 0x20(r30)
    stw     r27, 0x24(r30)
    stw     r27, 0x28(r30)
    stw     r27, 0x2c(r30)
    stw     r27, 0x30(r30)
    stw     r27, 0x34(r30)
    stb     r27, 0x38(r30)
    stb     r26, 0x39(r30)
    stw     r0, 0x3c(r30)
    stb     r26, 0x40(r30)
    stw     r26, 0x44(r30)
    stw     r31, 0x0(r30)
    bl      __nwa__FUl
    stw     r3, 0x28(r30)
    lwz     r3, 0x28(r30)
    stw     r27, 0x0(r3)
    lwz     r3, 0x28(r30)
    stw     r27, 0x4(r3)
    lwz     r3, 0x28(r30)
    stw     r27, 0x8(r3)
    lwz     r3, 0x28(r30)
    stw     r27, 0xc(r3)
    lwz     r3, 0x28(r30)
    stw     r27, 0x10(r3)
    lwz     r3, 0x28(r30)
    stw     r27, 0x14(r3)
    lwz     r0, 0x2c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a560
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a544
    lis     r3, 0x803e
    subi    r0, r3, 0x4190
    stw     r0, 0x20(r25)
    li      r0, -0x1
    lis     r3, 0x803b
    stw     r0, 0x0(r25)
    subi    r0, r3, 0x2eac
    addi    r3, r25, 0x0
    stw     r0, 0x4(r25)
    addi    r3, r3, 0x4
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    stw     r27, 0x18(r25)
    lis     r4, 0x803e
    lis     r3, 0x803e
    stw     r27, 0x1c(r25)
    subi    r4, r4, 0x42a8
    subi    r0, r3, 0x41b8
    stw     r4, 0x20(r25)
    stw     r27, 0x24(r25)
    stw     r0, 0x20(r25)
    sth     r27, 0x28(r25)
    stb     r26, 0x2a(r25)
    stw     r27, 0x2c(r25)
    stw     r27, 0x30(r25)
    stw     r27, 0x34(r25)
    stw     r27, 0x38(r25)
branch_0x8023a544:
    stw     r25, 0xc(r30)
    lwz     r0, 0x2c(r31)
    lwz     r3, 0xc(r30)
    stw     r0, 0x1c(r3)
    lwz     r0, 0xc(r30)
    lwz     r3, 0x28(r30)
    stw     r0, 0x0(r3)
branch_0x8023a560:
    lwz     r0, 0x30(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a5d8
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a5b4
    mr      r3, r25
    bl      __ct__13MActorAnmBaseFv
    lis     r3, 0x803e
    subi    r0, r3, 0x42d0
    stw     r0, 0x20(r25)
    li      r4, 0x0
    lis     r3, 0x803e
    stw     r4, 0x24(r25)
    subi    r0, r3, 0x42f8
    lis     r3, 0x803e
    stw     r0, 0x20(r25)
    subi    r0, r3, 0x4230
    stw     r0, 0x20(r25)
    stw     r4, 0x28(r25)
branch_0x8023a5b4:
    stw     r25, 0x14(r30)
    lwz     r0, 0x30(r31)
    lwz     r3, 0x14(r30)
    stw     r0, 0x1c(r3)
    lwz     r3, 0x14(r30)
    bl      setMatColorAnmKeyPtr__12MActorAnmBpkFv
    lwz     r0, 0x14(r30)
    lwz     r3, 0x28(r30)
    stw     r0, 0x8(r3)
branch_0x8023a5d8:
    lwz     r0, 0x34(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a650
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a62c
    mr      r3, r25
    bl      __ct__13MActorAnmBaseFv
    lis     r3, 0x803e
    subi    r0, r3, 0x4320
    stw     r0, 0x20(r25)
    li      r4, 0x0
    lis     r3, 0x803e
    stw     r4, 0x24(r25)
    subi    r0, r3, 0x4348
    lis     r3, 0x803e
    stw     r0, 0x20(r25)
    subi    r0, r3, 0x41e0
    stw     r0, 0x20(r25)
    stw     r4, 0x28(r25)
branch_0x8023a62c:
    stw     r25, 0x18(r30)
    lwz     r0, 0x34(r31)
    lwz     r3, 0x18(r30)
    stw     r0, 0x1c(r3)
    lwz     r3, 0x18(r30)
    bl      setTexNoAnmFullPtr__12MActorAnmBtpFv
    lwz     r0, 0x18(r30)
    lwz     r3, 0x28(r30)
    stw     r0, 0xc(r3)
branch_0x8023a650:
    lwz     r0, 0x38(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a6c8
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a6a4
    mr      r3, r25
    bl      __ct__13MActorAnmBaseFv
    lis     r3, 0x803e
    subi    r0, r3, 0x4370
    stw     r0, 0x20(r25)
    li      r4, 0x0
    lis     r3, 0x803e
    stw     r4, 0x24(r25)
    subi    r0, r3, 0x4398
    lis     r3, 0x803e
    stw     r0, 0x20(r25)
    subi    r0, r3, 0x4208
    stw     r0, 0x20(r25)
    stw     r4, 0x28(r25)
branch_0x8023a6a4:
    stw     r25, 0x1c(r30)
    lwz     r0, 0x38(r31)
    lwz     r3, 0x1c(r30)
    stw     r0, 0x1c(r3)
    lwz     r3, 0x1c(r30)
    bl      setTexMtxAnmKeyPtr__12MActorAnmBtkFv
    lwz     r0, 0x1c(r30)
    lwz     r3, 0x28(r30)
    stw     r0, 0x10(r3)
branch_0x8023a6c8:
    lwz     r0, 0x3c(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a744
    li      r3, 0x30
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a718
    mr      r3, r25
    bl      __ct__13MActorAnmBaseFv
    lis     r3, 0x803e
    subi    r0, r3, 0x43c0
    stw     r0, 0x20(r25)
    li      r0, 0x0
    lis     r3, 0x803e
    stw     r0, 0x24(r25)
    subi    r0, r3, 0x43e8
    lis     r3, 0x803e
    stw     r0, 0x20(r25)
    subi    r0, r3, 0x4258
    stw     r0, 0x20(r25)
branch_0x8023a718:
    stw     r25, 0x20(r30)
    lwz     r0, 0x3c(r31)
    lwz     r3, 0x20(r30)
    stw     r0, 0x1c(r3)
    lwz     r3, 0x20(r30)
    bl      setTevColorAnmKeyPtr__12MActorAnmBrkFv
    lwz     r3, 0x20(r30)
    bl      setTevKColorAnmKeyPtr__12MActorAnmBrkFv
    lwz     r0, 0x20(r30)
    lwz     r3, 0x28(r30)
    stw     r0, 0x14(r3)
branch_0x8023a744:
    lwz     r0, 0x40(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8023a7d8
    li      r3, 0x2c
    bl      __nw__FUl
    mr.     r25, r3
    beq-    branch_0x8023a7bc
    lis     r3, 0x803e
    subi    r0, r3, 0x4190
    stw     r0, 0x20(r25)
    li      r0, -0x1
    lis     r3, 0x803b
    stw     r0, 0x0(r25)
    subi    r0, r3, 0x2eac
    addi    r3, r25, 0x0
    stw     r0, 0x4(r25)
    addi    r3, r3, 0x4
    li      r4, 0x0
    bl      init__12J3DFrameCtrlFs
    li      r5, 0x0
    stw     r5, 0x18(r25)
    lis     r4, 0x803e
    lis     r3, 0x803e
    stw     r5, 0x1c(r25)
    subi    r4, r4, 0x4410
    subi    r0, r3, 0x4280
    stw     r4, 0x20(r25)
    stw     r5, 0x24(r25)
    stw     r0, 0x20(r25)
    stw     r5, 0x28(r25)
branch_0x8023a7bc:
    stw     r25, 0x24(r30)
    lwz     r0, 0x40(r31)
    lwz     r3, 0x24(r30)
    stw     r0, 0x1c(r3)
    lwz     r0, 0x24(r30)
    lwz     r3, 0x28(r30)
    stw     r0, 0x4(r3)
branch_0x8023a7d8:
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8023a8e8
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x10(r30)
    lis     r6, 0x803e
    lis     r5, 0x803b
    lwz     r7, 0x0(r30)
    lis     r4, 0x803e
    lwzu    r0, 0x24(r7)
    lis     r3, 0x803e
    subi    r26, r6, 0x4190
    stw     r0, 0xe0(sp)
    subi    r27, r5, 0x2eac
    subi    r28, r4, 0x42a8
    stw     r7, 0xdc(sp)
    subi    r29, r3, 0x41b8
    li      r25, 0x0
    b       branch_0x8023a8c8

branch_0x8023a828:
    li      r3, 0x3c
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8023a88c
    stw     r26, 0x20(r24)
    li      r0, -0x1
    addi    r3, r24, 0x0
    stw     r0, 0x0(r24)
    addi    r3, r3, 0x4
    li      r4, 0x0
    stw     r27, 0x4(r24)
    bl      init__12J3DFrameCtrlFs
    li      r3, 0x0
    stw     r3, 0x18(r24)
    li      r0, 0x1
    stw     r3, 0x1c(r24)
    stw     r28, 0x20(r24)
    stw     r3, 0x24(r24)
    stw     r29, 0x20(r24)
    sth     r3, 0x28(r24)
    stb     r0, 0x2a(r24)
    stw     r3, 0x2c(r24)
    stw     r3, 0x30(r24)
    stw     r3, 0x34(r24)
    stw     r3, 0x38(r24)
branch_0x8023a88c:
    lwz     r3, 0x10(r30)
    stwx    r24, r3, r25
    lwz     r3, 0x10(r30)
    lwz     r0, 0x2c(r31)
    lwzx    r3, r3, r25
    stw     r0, 0x1c(r3)
    lwz     r4, 0xe0(sp)
    lwz     r3, 0x10(r30)
    lhz     r0, 0x8(r4)
    lwzx    r3, r3, r25
    addi    r25, r25, 0x4
    sth     r0, 0x28(r3)
    lwz     r3, 0xe0(sp)
    lwz     r0, 0x0(r3)
    stw     r0, 0xe0(sp)
branch_0x8023a8c8:
    lwz     r3, 0xdc(sp)
    lwz     r0, 0xe0(sp)
    stw     r3, 0x64(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x64(sp)
    lwz     r3, 0x60(sp)
    cmplw   r3, r0
    bne+    branch_0x8023a828
branch_0x8023a8e8:
    mr      r3, r30
    lmw     r24, 0xe8(sp)
    lwz     r0, 0x10c(sp)
    addi    sp, sp, 0x108
    mtlr    r0
    blr


.globl __ct__13MActorAnmBaseFv
__ct__13MActorAnmBaseFv: # 0x8023a900
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    subi    r0, r4, 0x4190
    li      r4, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x20(r3)
    li      r0, -0x1
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    subi    r0, r3, 0x2eac
    addi    r3, r31, 0x4
    stw     r0, 0x4(r31)
    bl      init__12J3DFrameCtrlFs
    li      r0, 0x0
    stw     r0, 0x18(r31)
    mr      r3, r31
    stw     r0, 0x1c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr

