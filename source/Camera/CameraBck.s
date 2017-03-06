
.globl setFrame__10TCameraBckFf
setFrame__10TCameraBckFf: # 0x80031c50
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stfd    f31, 0x18(sp)
    fmr     f31, f1
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r3, 0x0(r3)
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, -0x1
    beq-    branch_0x80031c88
    li      r0, 0x1
    b       branch_0x80031c8c

branch_0x80031c88:
    li      r0, 0x0
branch_0x80031c8c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80031cac
    lwz     r3, 0x0(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80031cac
    stfs    f31, 0x10(r3)
branch_0x80031cac:
    lwz     r0, 0x24(sp)
    lfd     f31, 0x18(sp)
    lwz     r31, 0x14(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl updateDemo__10TCameraBckFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_Pf
updateDemo__10TCameraBckFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_Pf: # 0x80031cc4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r27, 0x6c(sp)
    mr      r27, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    addi    r31, r7, 0x0
    lwz     r3, 0x0(r3)
    bl      calcAnm__6MActorFv
    cmplwi  r28, 0x0
    beq-    branch_0x80031d14
    lwz     r3, 0xc(r27)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x0(r28)
    stfs    f1, 0x4(r28)
    stfs    f2, 0x8(r28)
branch_0x80031d14:
    cmplwi  r29, 0x0
    beq-    branch_0x80031d38
    lwz     r3, 0x10(r27)
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x0(r29)
    stfs    f1, 0x4(r29)
    stfs    f2, 0x8(r29)
branch_0x80031d38:
    cmplwi  r30, 0x0
    beq-    branch_0x80031d5c
    lwz     r3, 0xc(r27)
    lfs     f2, 0x24(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x0(r30)
    stfs    f1, 0x4(r30)
    stfs    f2, 0x8(r30)
branch_0x80031d5c:
    cmplwi  r31, 0x0
    beq-    branch_0x80031db0
    lwz     r3, 0x0(r27)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x80031d7c
    li      r0, 0x0
    b       branch_0x80031d80

branch_0x80031d7c:
    lwz     r0, 0x24(r3)
branch_0x80031d80:
    cmplwi  r0, 0x0
    mr      r3, r0
    beq-    branch_0x80031db0
    lwz     r12, 0xc(r3)
    addi    r5, sp, 0x44
    lwz     r0, 0x8(r27)
    lwz     r12, 0xc(r12)
    clrlwi  r4, r0, 16
    mtlr    r12
    blrl
    lfs     f0, 0x48(sp)
    stfs    f0, 0x0(r31)
branch_0x80031db0:
    lwz     r3, 0x14(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x80031e30
    cmplwi  r28, 0x0
    beq-    branch_0x80031df4
    lfs     f1, 0x0(r28)
    lfs     f0, 0x0(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r28)
    lfs     f1, 0x4(r28)
    lfs     f0, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r28)
    lfs     f1, 0x8(r28)
    lfs     f0, 0x8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r28)
branch_0x80031df4:
    cmplwi  r29, 0x0
    beq-    branch_0x80031e30
    lwz     r3, 0x14(r27)
    lfs     f1, 0x0(r29)
    lfs     f0, 0x0(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r29)
    lfs     f1, 0x4(r29)
    lfs     f0, 0x4(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x4(r29)
    lfs     f1, 0x8(r29)
    lfs     f0, 0x8(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r29)
branch_0x80031e30:
    lwz     r3, 0x0(r27)
    li      r31, 0x1
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80031e70
    lbz     r0, 0x5(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80031e58
    b       branch_0x80031e5c

branch_0x80031e58:
    li      r31, 0x0
branch_0x80031e5c:
    cmpwi   r31, 0x0
    beq-    branch_0x80031e6c
    li      r31, 0x1
    b       branch_0x80031e70

branch_0x80031e6c:
    li      r31, 0x0
branch_0x80031e70:
    mr      r3, r31
    lmw     r27, 0x6c(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl getTransform__18J3DAnmTransformKeyCFUsP16J3DTransformInfo
getTransform__18J3DAnmTransformKeyCFUsP16J3DTransformInfo: # 0x80031e88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0xc(r3)
    lfs     f1, 0x4(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl endDemo__10TCameraBckFv
endDemo__10TCameraBckFv: # 0x80031eb8
    mflr    r0
    li      r4, -0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r3)
    bl      setBckFromIndex__6MActorFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getTotalDemoFrames__10TCameraBckCFv
getTotalDemoFrames__10TCameraBckCFv: # 0x80031ee0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    lwz     r3, 0x0(r3)
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80031f28
    lbz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80031f1c
    li      r31, -0x1
    b       branch_0x80031f28

branch_0x80031f1c:
    lha     r3, 0x8(r3)
    addi    r0, r3, 0x1
    slwi    r31, r0, 1
branch_0x80031f28:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl startDemo__10TCameraBckFPCcPCQ29JGeometry8TVec3_f_
startDemo__10TCameraBckFPCcPCQ29JGeometry8TVec3_f_: # 0x80031f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r3, 0x0(r3)
    bl      setBck__6MActorFPCc
    stw     r31, 0x14(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl isFileExist__10TCameraBckCFPCc
isFileExist__10TCameraBckCFPCc: # 0x80031f80
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x0(r3)
    bl      checkAnmFileExist__6MActorFPCci
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__10TCameraBckFv
__ct__10TCameraBckFv: # 0x80031fa8
    mflr    r0
    lis     r4, 0x8037
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0x5a88
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r0, 0x14(r31)
    bl      SMS_CreateMinimumSDLModel__FPCc
    addi    r30, r3, 0x0
    li      r3, 0x4c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80031ff4
    mr      r3, r29
    bl      __ct__13MActorAnmDataFv
branch_0x80031ff4:
    stw     r29, 0x4(r31)
    lis     r3, 0x803b
    subi    r5, r3, 0x2cf8
    lwz     r3, 0x4(r31)
    lwz     r4, -0x7f90(r13)
    bl      init__13MActorAnmDataFPCcPPCc
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80032028
    mr      r3, r29
    lwz     r4, 0x4(r31)
    bl      __ct__6MActorFP13MActorAnmData
branch_0x80032028:
    stw     r29, 0x0(r31)
    addi    r4, r30, 0x0
    li      r5, 0x0
    lwz     r3, 0x0(r31)
    bl      setModel__6MActorFP8J3DModelUl
    lwz     r3, 0x4(r30)
    lwz     r4, -0x7f98(r13)
    lwz     r29, 0xb0(r3)
    mr      r3, r29
    bl      getIndex__10JUTNameTabCFPCc
    stw     r3, 0x8(r31)
    mr      r3, r29
    lwz     r0, 0x8(r31)
    lwz     r4, 0x58(r30)
    clrlwi  r0, r0, 16
    mulli   r0, r0, 0x30
    add     r0, r4, r0
    stw     r0, 0xc(r31)
    lwz     r4, -0x7f94(r13)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    lwz     r3, 0x58(r30)
    mulli   r0, r0, 0x30
    add     r0, r3, r0
    stw     r0, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr

