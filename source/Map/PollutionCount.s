
.globl __ct__25TPollutionRevivalTexStampFv
__ct__25TPollutionRevivalTexStampFv: # 0x8019ab44
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    sth     r0, 0x8(r3)
    sth     r0, 0xa(r3)
    sth     r0, 0xc(r3)
    sth     r0, 0xe(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
    stw     r0, 0x18(r3)
    blr


.globl __ct__18TPollutionTexStampFv
__ct__18TPollutionTexStampFv: # 0x8019ab70
    li      r0, 0x0
    sth     r0, 0x0(r3)
    sth     r0, 0x2(r3)
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    stw     r0, 0xc(r3)
    stw     r0, 0x10(r3)
    blr


.globl __ct__23TPollutionLayerTaskInfoFv
__ct__23TPollutionLayerTaskInfoFv: # 0x8019ab90
    li      r0, 0x0
    stb     r0, 0x0(r3)
    sth     r0, 0x2(r3)
    sth     r0, 0x4(r3)
    sth     r0, 0x6(r3)
    sth     r0, 0x8(r3)
    blr


.globl pushTask__18TPollutionTexStampFUcUsUsUss
pushTask__18TPollutionTexStampFUcUsUsUss: # 0x8019abac
    lwz     r9, 0x8(r3)
    lwz     r0, 0xc(r3)
    cmpw    r9, r0
    bgelr-    

    mulli   r0, r9, 0xa
    lwz     r9, 0x10(r3)
    add     r9, r9, r0
    sth     r6, 0x2(r9)
    lwz     r0, 0x8(r3)
    lwz     r6, 0x10(r3)
    mulli   r0, r0, 0xa
    add     r6, r6, r0
    sth     r7, 0x4(r6)
    lwz     r0, 0x8(r3)
    lwz     r6, 0x10(r3)
    mulli   r0, r0, 0xa
    add     r6, r6, r0
    sth     r5, 0x6(r6)
    lwz     r0, 0x8(r3)
    lwz     r5, 0x10(r3)
    mulli   r0, r0, 0xa
    stbx    r4, r5, r0
    lwz     r0, 0x8(r3)
    lwz     r4, 0x10(r3)
    mulli   r0, r0, 0xa
    add     r4, r4, r0
    sth     r8, 0x8(r4)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r3)
    blr


.globl __ct__22TPollutionCounterLayerFv
__ct__22TPollutionCounterLayerFv: # 0x8019ac28
    mflr    r0
    lis     r4, 0x803b
    stw     r0, 0x4(sp)
    subi    r0, r4, 0x2e6c
    lis     r5, 0x803c
    stwu    sp, -0x18(sp)
    li      r6, 0x8
    li      r7, 0x14
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x803c
    stw     r0, 0x0(r30)
    addi    r0, r3, 0x1d90
    lis     r3, 0x801a
    stw     r0, 0x0(r30)
    addi    r0, r5, 0x1db8
    subi    r4, r3, 0x52f4
    stw     r31, 0x4(r30)
    addi    r3, r30, 0x34
    li      r5, 0x0
    stw     r31, 0x8(r30)
    stw     r31, 0xc(r30)
    stw     r31, 0x10(r30)
    stw     r0, 0x0(r30)
    stw     r31, 0x14(r30)
    sth     r31, 0x18(r30)
    sth     r31, 0x1a(r30)
    stw     r31, 0x1c(r30)
    sth     r31, 0x20(r30)
    sth     r31, 0x22(r30)
    stw     r31, 0x24(r30)
    sth     r31, 0x28(r30)
    stw     r31, 0x2c(r30)
    stw     r31, 0x30(r30)
    bl      __construct_array
    lis     r3, 0x801a
    sth     r31, 0xd4(r30)
    subi    r4, r3, 0x5308
    addi    r3, r30, 0xd8
    li      r5, 0x0
    li      r6, 0x8
    li      r7, 0x14
    bl      __construct_array
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__26TPollutionJointObjTaskInfoFv
__ct__26TPollutionJointObjTaskInfoFv: # 0x8019acf8
    li      r0, 0x0
    stb     r0, 0x0(r3)
    stb     r0, 0x1(r3)
    stw     r0, 0x4(r3)
    blr


.globl __ct__23TPollutionModelTaskInfoFv
__ct__23TPollutionModelTaskInfoFv: # 0x8019ad0c
    li      r0, 0x0
    stb     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl init__22TPollutionCounterLayerFiUsUs
init__22TPollutionCounterLayerFiUsUs: # 0x8019ad1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r24, 0x28(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    addi    r30, r6, 0x0
    stw     r28, 0x4(r3)
    lwz     r0, 0x4(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r27)
    slwi    r31, r28, 2
    addi    r3, r31, 0x0
    bl      __nwa__FUl
    cmpwi   r28, 0x0
    stw     r3, 0x10(r27)
    li      r3, 0x0
    addi    r4, r3, 0x0
    ble-    branch_0x8019ae6c
    cmpwi   r28, 0x8
    subi    r5, r28, 0x8
    ble-    branch_0x8019ae3c
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8019ae3c
branch_0x8019ad90:
    lwz     r5, 0xc(r27)
    li      r0, 0x0
    addi    r12, r4, 0x4
    stwx    r0, r5, r4
    addi    r11, r4, 0x8
    addi    r10, r4, 0xc
    lwz     r5, 0x10(r27)
    addi    r9, r4, 0x10
    addi    r8, r4, 0x14
    stwx    r0, r5, r4
    addi    r7, r4, 0x18
    addi    r6, r4, 0x1c
    lwz     r5, 0xc(r27)
    addi    r3, r3, 0x8
    addi    r4, r4, 0x20
    stwx    r0, r5, r12
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r12
    lwz     r5, 0xc(r27)
    stwx    r0, r5, r11
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r11
    lwz     r5, 0xc(r27)
    stwx    r0, r5, r10
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r10
    lwz     r5, 0xc(r27)
    stwx    r0, r5, r9
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r9
    lwz     r5, 0xc(r27)
    stwx    r0, r5, r8
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r8
    lwz     r5, 0xc(r27)
    stwx    r0, r5, r7
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r7
    lwz     r5, 0xc(r27)
    stwx    r0, r5, r6
    lwz     r5, 0x10(r27)
    stwx    r0, r5, r6
    bdnz+      branch_0x8019ad90
branch_0x8019ae3c:
    subf    r0, r3, r28
    cmpw    r3, r28
    mtctr   r0
    slwi    r3, r3, 2
    li      r0, 0x0
    bge-    branch_0x8019ae6c
branch_0x8019ae54:
    lwz     r4, 0xc(r27)
    stwx    r0, r4, r3
    lwz     r4, 0x10(r27)
    stwx    r0, r4, r3
    addi    r3, r3, 0x4
    bdnz+      branch_0x8019ae54
branch_0x8019ae6c:
    lwz     r0, 0x4(r27)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x14(r27)
    li      r6, 0x0
    li      r3, 0x0
    li      r5, 0x0
    b       branch_0x8019ae9c

branch_0x8019ae8c:
    lwz     r4, 0x14(r27)
    addi    r6, r6, 0x1
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
branch_0x8019ae9c:
    lwz     r0, 0x4(r27)
    cmpw    r6, r0
    blt+    branch_0x8019ae8c
    sth     r29, 0x18(r27)
    lhz     r26, 0x18(r27)
    mulli   r3, r26, 0x14
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801a
    subi    r4, r4, 0x5490
    addi    r7, r26, 0x0
    li      r5, 0x0
    li      r6, 0x14
    bl      __construct_new_array
    stw     r3, 0x1c(r27)
    sth     r30, 0x20(r27)
    lhz     r26, 0x20(r27)
    mulli   r3, r26, 0x1c
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801a
    subi    r4, r4, 0x54bc
    addi    r7, r26, 0x0
    li      r5, 0x0
    li      r6, 0x1c
    bl      __construct_new_array
    stw     r3, 0x24(r27)
    mr      r3, r31
    bl      __nwa__FUl
    stw     r3, 0x2c(r27)
    slwi    r3, r28, 1
    bl      __nwa__FUl
    stw     r3, 0x30(r27)
    mr      r3, r28
    bl      __nwa__FUl
    stw     r3, 0x178(r27)
    li      r25, 0x0
    li      r29, 0x0
    li      r30, 0x0
    li      r26, 0x0
    li      r31, 0x1
    b       branch_0x8019af84

branch_0x8019af44:
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r24, r3
    beq-    branch_0x8019af60
    addi    r3, r24, 0x0
    li      r4, 0x10
    bl      __ct__13J3DDrawBufferFUl
branch_0x8019af60:
    lwz     r3, 0x2c(r27)
    stwx    r24, r3, r30
    addi    r30, r30, 0x4
    lwz     r3, 0x30(r27)
    sthx    r26, r3, r29
    addi    r29, r29, 0x2
    lwz     r3, 0x178(r27)
    stbx    r31, r3, r25
    addi    r25, r25, 0x1
branch_0x8019af84:
    cmpw    r25, r28
    blt+    branch_0x8019af44
    lmw     r24, 0x28(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl offLayer__22TPollutionCounterLayerFi
offLayer__22TPollutionCounterLayerFi: # 0x8019afa0
    lwz     r5, 0x178(r3)
    li      r6, 0x0
    slwi    r0, r4, 2
    stbx    r6, r5, r4
    lwz     r3, 0xc(r3)
    lwzx    r3, r3, r0
    stw     r6, 0x0(r3)
    blr


.globl stampIsCleanType__22TPollutionCounterLayerCFUs
stampIsCleanType__22TPollutionCounterLayerCFUs: # 0x8019afc0
    clrlwi  r0, r4, 16
    lwz     r3, 0x1c(r3)
    mulli   r0, r0, 0x14
    lhzx    r0, r3, r0
    cmplwi  r0, 0x0
    bne-    branch_0x8019afe0
    li      r3, 0x1
    blr

branch_0x8019afe0:
    li      r3, 0x0
    blr


.globl registerLayer__22TPollutionCounterLayerFPC15TPollutionLayerPUl
registerLayer__22TPollutionCounterLayerFPC15TPollutionLayerPUl: # 0x8019afe8
    lwz     r6, 0x8(r3)
    li      r7, 0x2
    lwz     r8, 0x14(r3)
    li      r0, -0x1
    slwi    r6, r6, 2
    stwx    r4, r8, r6
    lwz     r4, 0x8(r3)
    lwz     r6, 0x10(r3)
    slwi    r4, r4, 2
    stwx    r7, r6, r4
    lwz     r4, 0x8(r3)
    lwz     r6, 0xc(r3)
    slwi    r4, r4, 2
    stwx    r5, r6, r4
    stw     r0, 0x0(r5)
    lwz     r4, 0x8(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x8(r3)
    blr


.globl registerTexStamp__22TPollutionCounterLayerFUsUsP7ResTIMG
registerTexStamp__22TPollutionCounterLayerFUsUsP7ResTIMG: # 0x8019b034
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lhz     r0, 0x18(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8019b064
    li      r3, 0x0
    b       branch_0x8019b0bc

branch_0x8019b064:
    lhz     r3, 0x1a(r29)
    clrlwi  r0, r5, 16
    lwz     r5, 0x1c(r29)
    mulli   r3, r3, 0x14
    add     r30, r5, r3
    sth     r4, 0x0(r30)
    stw     r6, 0x4(r30)
    stw     r0, 0xc(r30)
    lwz     r31, 0xc(r30)
    mulli   r3, r31, 0xa
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x801a
    subi    r4, r4, 0x5470
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0xa
    bl      __construct_new_array
    stw     r3, 0x10(r30)
    lhz     r3, 0x1a(r29)
    addi    r0, r3, 0x1
    sth     r0, 0x1a(r29)
branch_0x8019b0bc:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl registerRevivalTexStamp__22TPollutionCounterLayerFissssiP7ResTIMG
registerRevivalTexStamp__22TPollutionCounterLayerFissssiP7ResTIMG: # 0x8019b0d8
    lhz     r11, 0x22(r3)
    li      r0, 0x0
    lwz     r12, 0x24(r3)
    mulli   r11, r11, 0x1c
    add     r11, r12, r11
    stw     r4, 0x4(r11)
    sth     r5, 0x8(r11)
    sth     r6, 0xa(r11)
    sth     r7, 0xc(r11)
    sth     r8, 0xe(r11)
    stw     r10, 0x10(r11)
    stw     r0, 0x0(r11)
    stw     r9, 0x18(r11)
    lhz     r4, 0x22(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x22(r3)
    mr      r3, r4
    blr


.globl pushModelStampTask__22TPollutionCounterLayerFUcP8J3DModel
pushModelStampTask__22TPollutionCounterLayerFUcP8J3DModel: # 0x8019b120
    lhz     r0, 0x28(r3)
    cmplwi  r0, 0x14
    bgelr-    

    slwi    r0, r0, 3
    add     r6, r3, r0
    stb     r4, 0x34(r6)
    clrlslwi  r6, r4, 24, 1
    lhz     r0, 0x28(r3)
    slwi    r0, r0, 3
    add     r4, r3, r0
    stw     r5, 0x38(r4)
    lwz     r5, 0x30(r3)
    lhzx    r4, r5, r6
    addi    r0, r4, 0x1
    sthx    r0, r5, r6
    lhz     r4, 0x28(r3)
    addi    r0, r4, 0x1
    sth     r0, 0x28(r3)
    blr


.globl calcViewMtx__22TPollutionCounterLayerFv
calcViewMtx__22TPollutionCounterLayerFv: # 0x8019b16c
    mflr    r0
    lis     r4, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    addi    r0, sp, 0x78
    stmw    r20, 0xa8(sp)
    addi    r31, r4, 0x45dc
    addi    r23, r3, 0x0
    mr      r3, r0
    addi    r4, r31, 0x0
    bl      gekko_ps_copy12__9JGeometryFPvPv
    lfs     f31, -0x4198(rtoc)
    addi    r27, r31, 0x44
    lwz     r29, 0x44(r31)
    addi    r26, r31, 0x48
    lwz     r28, 0x48(r31)
    addi    r30, sp, 0x3c
    li      r25, 0x0
    li      r22, 0x0
    b       branch_0x8019b2b0

branch_0x8019b1c0:
    lwz     r5, gpPollution(r13)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r5, 0x14(r5)
    lwzx    r5, r5, r22
    lfs     f0, 0x40(r5)
    lfs     f1, 0x38(r5)
    lfs     f2, 0x74(r5)
    fneg    f0, f0
    fneg    f1, f1
    stfs    f31, 0x68(sp)
    fmuls   f0, f0, f2
    stfs    f31, 0x58(sp)
    fmuls   f1, f1, f2
    stfs    f31, 0x48(sp)
    stfs    f31, 0x64(sp)
    stfs    f31, 0x54(sp)
    stfs    f31, 0x44(sp)
    stfs    f31, 0x60(sp)
    stfs    f31, 0x50(sp)
    stfs    f31, 0x40(sp)
    stfs    f31, 0x5c(sp)
    stfs    f31, 0x4c(sp)
    stfs    f31, 0x3c(sp)
    stfs    f2, 0x3c(sp)
    stfs    f1, 0x48(sp)
    stfs    f2, 0x54(sp)
    stfs    f0, 0x58(sp)
    bl      PSMTXCopy
    lwz     r3, 0x2c(r23)
    li      r24, 0x0
    li      r21, 0x0
    lwzx    r0, r3, r22
    stw     r0, 0x0(r27)
    lwz     r3, 0x2c(r23)
    lwzx    r0, r3, r22
    stw     r0, 0x0(r26)
    b       branch_0x8019b29c

branch_0x8019b258:
    add     r3, r23, r21
    lbz     r0, 0x34(r3)
    cmpw    r0, r25
    bne-    branch_0x8019b294
    addi    r20, r3, 0x38
    lwz     r3, 0x38(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x0(r20)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x8019b294:
    addi    r24, r24, 0x1
    addi    r21, r21, 0x8
branch_0x8019b29c:
    lhz     r0, 0x28(r23)
    cmpw    r24, r0
    blt+    branch_0x8019b258
    addi    r25, r25, 0x1
    addi    r22, r22, 0x4
branch_0x8019b2b0:
    lwz     r0, 0x8(r23)
    cmpw    r25, r0
    blt+    branch_0x8019b1c0
    lis     r4, 0x8040
    addi    r3, sp, 0x78
    addi    r4, r4, 0x45dc
    bl      PSMTXCopy
    stw     r29, 0x0(r27)
    stw     r28, 0x0(r26)
    lmw     r20, 0xa8(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl pushJointObjStampTask__22TPollutionCounterLayerFUcUcP13TPollutionObj
pushJointObjStampTask__22TPollutionCounterLayerFUcUcP13TPollutionObj: # 0x8019b2ec
    lhz     r0, 0xd4(r3)
    cmplwi  r0, 0x14
    bgelr-    

    slwi    r0, r0, 3
    add     r7, r3, r0
    stb     r4, 0xd8(r7)
    lhz     r0, 0xd4(r3)
    slwi    r0, r0, 3
    add     r4, r3, r0
    stb     r5, 0xd9(r4)
    lhz     r0, 0xd4(r3)
    slwi    r0, r0, 3
    add     r4, r3, r0
    stw     r6, 0xdc(r4)
    lhz     r4, 0xd4(r3)
    addi    r0, r4, 0x1
    sth     r0, 0xd4(r3)
    blr


.globl resetTask__22TPollutionCounterLayerFv
resetTask__22TPollutionCounterLayerFv: # 0x8019b334
    li      r4, 0x0
    addi    r6, r4, 0x0
    li      r7, 0x0
    b       branch_0x8019b358

branch_0x8019b344:
    lwz     r5, 0x1c(r3)
    addi    r0, r4, 0x8
    addi    r4, r4, 0x14
    stwx    r6, r5, r0
    addi    r7, r7, 0x1
branch_0x8019b358:
    lhz     r0, 0x1a(r3)
    cmpw    r7, r0
    blt+    branch_0x8019b344
    li      r7, 0x0
    li      r4, 0x0
    li      r6, 0x0
    b       branch_0x8019b384

branch_0x8019b374:
    lwz     r5, 0x30(r3)
    addi    r7, r7, 0x1
    sthx    r6, r5, r4
    addi    r4, r4, 0x2
branch_0x8019b384:
    lwz     r0, 0x8(r3)
    cmpw    r7, r0
    blt+    branch_0x8019b374
    li      r0, 0x0
    sth     r0, 0x28(r3)
    sth     r0, 0xd4(r3)
    blr


.globl countTexDegree__22TPollutionCounterLayerFi
countTexDegree__22TPollutionCounterLayerFi: # 0x8019b3a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stmw    r26, 0xa8(sp)
    mr      r29, r3
    mr      r30, r4
    lwz     r3, 0x178(r3)
    lbzx    r0, r3, r30
    cmplwi  r0, 0x0
    beq-    branch_0x8019b5e0
    bl      ReInitializeGX
    lwz     r3, 0x14(r29)
    slwi    r31, r30, 2
    lwzx    r27, r3, r31
    lwz     r28, 0x58(r27)
    lhz     r3, 0x2(r28)
    lhz     r4, 0x4(r28)
    bl      drawBlack__FUsUs
    lwz     r0, 0x1c(r28)
    addi    r3, sp, 0x80
    lhz     r6, 0x4(r28)
    li      r7, 0x1
    lhz     r5, 0x2(r28)
    add     r4, r28, r0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x4198(rtoc)
    addi    r3, sp, 0x80
    lfs     f2, -0x4194(rtoc)
    li      r4, 0x0
    fmr     f3, f1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x80
    li      r4, 0x0
    bl      GXLoadTexObj
    lhz     r4, 0x32(r27)
    lhz     r3, 0x30(r27)
    lbz     r5, 0x85(r27)
    lbz     r6, 0x84(r27)
    bl      initGXforPollutionLayer__FiUsUcUc
    bl      GXClearPixMetric
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lwz     r4, 0x58(r3)
    lhz     r3, 0x2(r4)
    lhz     r4, 0x4(r4)
    bl      drawTex__FUsUs
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    mr      r3, r29
    lwz     r12, 0x0(r29)
    mr      r4, r30
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    bl      GXSetDrawSync
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    li      r3, 0x0
    bl      GXSetDrawSync
    lhz     r0, 0x28(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8019b4dc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r0, 0x7
    stw     r0, 0x4c(r3)
    lwz     r3, 0x2c(r29)
    lwzx    r3, r3, r31
    bl      draw__13J3DDrawBufferCFv
    lwz     r3, 0x2c(r29)
    lwzx    r3, r3, r31
    bl      frameInit__13J3DDrawBufferFv
branch_0x8019b4dc:
    bl      ReInitializeGX
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      drawJointObjStamp__22TPollutionCounterLayerCFi
    lwz     r3, 0x14(r29)
    lwzx    r3, r3, r31
    lwz     r6, 0x64(r3)
    lwz     r0, 0x68(r3)
    cmpw    r6, r0
    blt-    branch_0x8019b508
    b       branch_0x8019b50c

branch_0x8019b508:
    mr      r6, r0
branch_0x8019b50c:
    lwz     r5, 0x58(r3)
    lwz     r3, 0x78(r3)
    lhz     r4, 0x2(r5)
    lhz     r5, 0x4(r5)
    bl      initGXforStamp__FPCUcUsUsi
    li      r27, 0x0
    addi    r28, r27, 0x0
    b       branch_0x8019b5a8

branch_0x8019b52c:
    lwz     r0, 0x1c(r29)
    add     r26, r0, r28
    lhz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x8019b55c
    li      r3, 0x2
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    b       branch_0x8019b574

branch_0x8019b55c:
    li      r3, 0x2
    li      r4, 0xc
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
branch_0x8019b574:
    lwz     r0, 0x14(r29)
    clrlwi  r3, r30, 16
    lwz     r4, 0x8(r26)
    lwzx    r6, r31, r0
    lwz     r5, 0x10(r26)
    lwz     r8, 0x58(r6)
    lwz     r9, 0x48(r6)
    lhz     r7, 0x2(r8)
    lwz     r6, 0x4(r26)
    lhz     r8, 0x4(r8)
    bl      doTask__FUsiP23TPollutionLayerTaskInfoP7ResTIMGUsUsl
    addi    r27, r27, 0x1
    addi    r28, r28, 0x14
branch_0x8019b5a8:
    lhz     r0, 0x1a(r29)
    cmpw    r27, r0
    blt+    branch_0x8019b52c
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      drawRevivalTexStamp__22TPollutionCounterLayerCFi
    lwz     r3, 0x30(r29)
    slwi    r0, r30, 1
    lhzx    r0, r3, r0
    cmplwi  r0, 0x0
    beq-    branch_0x8019b5e0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    bl      cleanProhibitArea__22TPollutionCounterLayerCFi
branch_0x8019b5e0:
    lmw     r26, 0xa8(sp)
    lwz     r0, 0xc4(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl cleanProhibitArea__22TPollutionCounterLayerCFi
cleanProhibitArea__22TPollutionCounterLayerCFi: # 0x8019b5f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x0
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lwz     r0, -0x419c(rtoc)
    addi    r4, sp, 0x2c
    li      r3, 0x2
    stw     r0, 0x28(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    bl      GXSetTevColor
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x2
    li      r6, 0x6
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetAlphaCompare
    lwz     r4, 0x14(r31)
    slwi    r0, r30, 2
    li      r3, 0x80
    lwzx    r6, r4, r0
    li      r4, 0x0
    li      r5, 0x4
    lwz     r6, 0x58(r6)
    lhz     r31, 0x2(r6)
    lhz     r30, 0x4(r6)
    bl      GXBegin
    li      r4, 0x0
    lis     r3, 0xcc01
    sth     r4, -0x8000(r3)
    li      r0, 0x1
    sth     r4, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r31, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r31, -0x8000(r3)
    sth     r30, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r30, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r0, -0x8000(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl drawRevivalTexStamp__22TPollutionCounterLayerCFi
drawRevivalTexStamp__22TPollutionCounterLayerCFi: # 0x8019b7d8
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r6, 0x3
    li      r7, 0x0
    stwu    sp, -0xa0(sp)
    stmw    r25, 0x84(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    li      r3, 0x0
    li      r4, 0x9
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumChans
    lwz     r0, -0x41a0(rtoc)
    addi    r4, sp, 0x24
    li      r3, 0x4
    stw     r0, 0x20(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    bl      GXSetChanMatColor
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xc
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x5
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0xff
    bl      GXSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r30, 0x0
    li      r27, 0x0
    lis     r26, 0xcc01
    b       branch_0x8019baa4

branch_0x8019b99c:
    lwz     r0, 0x24(r28)
    add     r31, r0, r27
    lwz     r0, 0x18(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x8019b9d4
    lwz     r3, 0x14(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x14(r31)
    lwz     r3, 0x14(r31)
    lwz     r0, 0x18(r31)
    cmpw    r3, r0
    blt-    branch_0x8019ba9c
    li      r0, 0x0
    stw     r0, 0x14(r31)
branch_0x8019b9d4:
    lwz     r0, 0x4(r31)
    cmpw    r0, r29
    bne-    branch_0x8019ba9c
    lwz     r0, 0x0(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x8019b9f4
    li      r0, 0x1
    b       branch_0x8019b9f8

branch_0x8019b9f4:
    li      r0, 0x0
branch_0x8019b9f8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019ba9c
    lwz     r4, 0x10(r31)
    li      r25, 0x0
    addi    r3, sp, 0x28
    stw     r25, 0x50(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r25, 0x78(sp)
    addi    r3, sp, 0x28
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lha     r8, 0xa(r31)
    li      r5, 0x1
    lha     r7, 0x8(r31)
    addi    r3, sp, 0x28
    li      r4, -0x1
    sth     r7, -0x8000(r26)
    sth     r8, -0x8000(r26)
    sth     r25, -0x8000(r26)
    sth     r25, -0x8000(r26)
    lha     r0, 0xc(r31)
    add     r6, r7, r0
    sth     r6, -0x8000(r26)
    sth     r8, -0x8000(r26)
    sth     r5, -0x8000(r26)
    sth     r25, -0x8000(r26)
    lha     r0, 0xe(r31)
    sth     r6, -0x8000(r26)
    add     r0, r8, r0
    sth     r0, -0x8000(r26)
    sth     r5, -0x8000(r26)
    sth     r5, -0x8000(r26)
    sth     r7, -0x8000(r26)
    sth     r0, -0x8000(r26)
    sth     r25, -0x8000(r26)
    sth     r5, -0x8000(r26)
    bl      __dt__10JUTTextureFv
branch_0x8019ba9c:
    addi    r30, r30, 0x1
    addi    r27, r27, 0x1c
branch_0x8019baa4:
    lhz     r0, 0x22(r28)
    cmpw    r30, r0
    blt+    branch_0x8019b99c
    lmw     r25, 0x84(sp)
    lwz     r0, 0xa4(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl initGXforStamp__FPCUcUsUsi
initGXforStamp__FPCUcUsUsi: # 0x8019bac4
    mflr    r0
    li      r7, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    addi    r31, r6, 0x0
    li      r6, 0x3
    stw     r30, 0x40(sp)
    addi    r30, r5, 0x0
    li      r5, 0x0
    stw     r29, 0x3c(sp)
    addi    r29, r4, 0x0
    li      r4, 0x9
    stw     r28, 0x38(sp)
    addi    r28, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    clrlwi  r7, r31, 24
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x1
    li      r6, 0x3
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xe
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x5
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    addi    r3, sp, 0x14
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      GXInitTexObj
    lfs     f1, -0x4198(rtoc)
    addi    r3, sp, 0x14
    lfs     f2, -0x4194(rtoc)
    li      r4, 0x0
    fmr     f3, f1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x14
    li      r4, 0x1
    bl      GXLoadTexObj
    li      r3, 0x3
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x1
    li      r6, 0x6
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x3
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x1
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xf
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x3
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0xe
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x2
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x2
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    lwz     r28, 0x38(sp)
    addi    sp, sp, 0x48
    blr


.globl doTask__FUsiP23TPollutionLayerTaskInfoP7ResTIMGUsUsl
doTask__FUsiP23TPollutionLayerTaskInfoP7ResTIMGUsUsl: # 0x8019bd90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r14, 0x90(sp)
    li      r15, 0x0
    addi    r18, r3, 0x0
    addi    r14, r4, 0x0
    addi    r30, r5, 0x0
    addi    r17, r7, 0x0
    addi    r16, r8, 0x0
    addi    r31, r9, 0x0
    addi    r4, r6, 0x0
    addi    r3, sp, 0x38
    stw     r15, 0x60(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r15, 0x88(sp)
    addi    r3, sp, 0x38
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    clrlwi  r3, r17, 16
    clrlwi  r0, r16, 16
    cmplw   r3, r0
    li      r25, 0x1
    li      r24, 0x1
    bgt-    branch_0x8019bdfc
    divw    r25, r0, r3
    b       branch_0x8019be00

branch_0x8019bdfc:
    divw    r24, r3, r0
branch_0x8019be00:
    clrlwi  r26, r18, 16
    addi    r28, sp, 0x34
    addi    r27, sp, 0x2c
    li      r23, 0x0
    lis     r29, 0xcc01
    b       branch_0x8019bf54

branch_0x8019be18:
    lbz     r0, 0x0(r30)
    cmpw    r26, r0
    bne-    branch_0x8019bf4c
    lha     r0, 0x8(r30)
    subf.   r3, r31, r0
    add     r15, r0, r31
    addi    r5, r3, 0x0
    bge-    branch_0x8019be3c
    li      r5, 0x0
branch_0x8019be3c:
    cmpwi   r15, 0xff
    ble-    branch_0x8019be48
    li      r15, 0xff
branch_0x8019be48:
    lwz     r0, -0x41a8(rtoc)
    mr      r4, r28
    li      r3, 0x1
    stw     r0, 0x30(sp)
    stb     r5, 0x30(sp)
    stb     r5, 0x31(sp)
    stb     r5, 0x32(sp)
    stb     r5, 0x33(sp)
    lwz     r0, 0x30(sp)
    stw     r0, 0x34(sp)
    bl      GXSetTevColor
    lwz     r0, -0x41a4(rtoc)
    mr      r4, r27
    li      r3, 0x2
    stw     r0, 0x28(sp)
    stb     r15, 0x28(sp)
    stb     r15, 0x29(sp)
    stb     r15, 0x2a(sp)
    stb     r15, 0x2b(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    bl      GXSetTevColor
    lhz     r0, 0x6(r30)
    li      r3, 0x80
    lhz     r5, 0x2(r30)
    li      r4, 0x0
    srawi   r0, r0, 1
    addze   r0, r0
    lhz     r6, 0x4(r30)
    subf    r22, r0, r5
    subf    r21, r0, r6
    add     r20, r5, r0
    add     r19, r6, r0
    mullw   r18, r22, r25
    mullw   r17, r20, r25
    mullw   r16, r21, r24
    mullw   r15, r19, r24
    li      r5, 0x4
    bl      GXBegin
    sth     r22, -0x8000(r29)
    li      r3, 0x0
    li      r0, 0x1
    sth     r21, -0x8000(r29)
    sth     r3, -0x8000(r29)
    sth     r3, -0x8000(r29)
    sth     r18, -0x8000(r29)
    sth     r16, -0x8000(r29)
    sth     r20, -0x8000(r29)
    sth     r21, -0x8000(r29)
    sth     r0, -0x8000(r29)
    sth     r3, -0x8000(r29)
    sth     r17, -0x8000(r29)
    sth     r16, -0x8000(r29)
    sth     r20, -0x8000(r29)
    sth     r19, -0x8000(r29)
    sth     r0, -0x8000(r29)
    sth     r0, -0x8000(r29)
    sth     r17, -0x8000(r29)
    sth     r15, -0x8000(r29)
    sth     r22, -0x8000(r29)
    sth     r19, -0x8000(r29)
    sth     r3, -0x8000(r29)
    sth     r0, -0x8000(r29)
    sth     r18, -0x8000(r29)
    sth     r15, -0x8000(r29)
branch_0x8019bf4c:
    addi    r23, r23, 0x1
    addi    r30, r30, 0xa
branch_0x8019bf54:
    clrlwi  r0, r23, 16
    cmpw    r0, r14
    blt+    branch_0x8019be18
    addi    r3, sp, 0x38
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lmw     r14, 0x90(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl drawJointObjStamp__22TPollutionCounterLayerCFi
drawJointObjStamp__22TPollutionCounterLayerCFi: # 0x8019bf80
    mflr    r0
    lis     r5, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stmw    r20, 0xa8(sp)
    addi    r23, r3, 0x0
    addi    r24, r4, 0x0
    addi    r29, sp, 0x68
    addi    r30, sp, 0x70
    addi    r31, r5, 0x45dc
    li      r27, 0x0
    li      r22, 0x0
    lfs     f31, -0x4198(rtoc)
    b       branch_0x8019c1e4

branch_0x8019bfbc:
    add     r3, r23, r22
    lbz     r0, 0xd9(r3)
    addi    r26, r3, 0xd8
    cmpw    r0, r24
    bne-    branch_0x8019c1dc
    lwz     r3, gpPollution(r13)
    lbz     r0, 0x1(r26)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwzx    r20, r3, r0
    bl      initDrawObjGX__Fv
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lbz     r0, 0x0(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x8019c05c
    lwz     r0, -0x41b0(rtoc)
    addi    r4, r30, 0x0
    li      r3, 0x4
    stw     r0, 0x6c(sp)
    lwz     r0, 0x6c(sp)
    stw     r0, 0x70(sp)
    bl      GXSetChanMatColor
    b       branch_0x8019c078

branch_0x8019c05c:
    lwz     r0, -0x41ac(rtoc)
    addi    r4, r29, 0x0
    li      r3, 0x4
    stw     r0, 0x64(sp)
    lwz     r0, 0x64(sp)
    stw     r0, 0x68(sp)
    bl      GXSetChanMatColor
branch_0x8019c078:
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x5
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    lfs     f0, 0x40(r20)
    addi    r3, sp, 0x74
    lfs     f1, 0x38(r20)
    li      r4, 0x0
    lfs     f2, 0x74(r20)
    fneg    f1, f1
    stfs    f31, 0xa0(sp)
    fneg    f0, f0
    stfs    f31, 0x90(sp)
    fmuls   f1, f1, f2
    fmuls   f0, f0, f2
    stfs    f31, 0x80(sp)
    stfs    f31, 0x9c(sp)
    stfs    f31, 0x8c(sp)
    stfs    f31, 0x7c(sp)
    stfs    f31, 0x98(sp)
    stfs    f31, 0x88(sp)
    stfs    f31, 0x78(sp)
    stfs    f31, 0x94(sp)
    stfs    f31, 0x84(sp)
    stfs    f31, 0x74(sp)
    stfs    f2, 0x74(sp)
    stfs    f1, 0x80(sp)
    stfs    f2, 0x8c(sp)
    stfs    f0, 0x90(sp)
    bl      GXLoadPosMtxImm
    lwz     r3, 0x24(r20)
    li      r25, 0x0
    li      r21, 0x0
    lwz     r0, 0x4c(r3)
    stw     r0, 0x10c(r31)
    b       branch_0x8019c1cc

branch_0x8019c17c:
    lwz     r3, 0x1c(r3)
    li      r4, 0xc0
    lwzx    r28, r3, r21
    lwz     r3, 0x28(r28)
    bl      GXCallDisplayList
    mr      r3, r28
    bl      loadVtxArray__8J3DShapeCFv
    li      r20, 0x0
    b       branch_0x8019c1b4

branch_0x8019c1a0:
    lwz     r3, 0x38(r28)
    clrlslwi  r0, r20, 16, 2
    lwzx    r3, r3, r0
    bl      draw__12J3DShapeDrawCFv
    addi    r20, r20, 0x1
branch_0x8019c1b4:
    lhz     r0, 0x6(r28)
    clrlwi  r3, r20, 16
    cmplw   r3, r0
    blt+    branch_0x8019c1a0
    addi    r25, r25, 0x1
    addi    r21, r21, 0x4
branch_0x8019c1cc:
    lwz     r3, 0x4(r26)
    lwz     r0, 0x18(r3)
    cmpw    r25, r0
    blt+    branch_0x8019c17c
branch_0x8019c1dc:
    addi    r27, r27, 0x1
    addi    r22, r22, 0x8
branch_0x8019c1e4:
    lhz     r0, 0xd4(r23)
    cmpw    r27, r0
    blt+    branch_0x8019bfbc
    lmw     r20, 0xa8(sp)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl initGXforPollutionLayer__FiUsUcUc
initGXforPollutionLayer__FiUsUcUc: # 0x8019c208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    rlwinm. r31, r4, 0, 30, 30
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x8019c23c
    li      r30, 0x2
branch_0x8019c23c:
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x0
    bl      GXSetNumChans
    lwz     r0, -0x41b8(rtoc)
    addi    r4, sp, 0x24
    li      r3, 0x1
    stw     r0, 0x20(sp)
    stb     r30, 0x20(sp)
    stb     r30, 0x21(sp)
    stb     r30, 0x22(sp)
    stb     r30, 0x23(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    bl      GXSetTevColor
    lwz     r0, -0x41b4(rtoc)
    addi    r4, sp, 0x1c
    li      r3, 0x2
    stw     r0, 0x18(sp)
    stb     r29, 0x18(sp)
    stb     r29, 0x19(sp)
    stb     r29, 0x1a(sp)
    stb     r29, 0x1b(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    bl      GXSetTevColor
    cmpwi   r28, 0x7
    bne-    branch_0x8019c3cc
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x4
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x2
    li      r6, 0x1
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    b       branch_0x8019c55c

branch_0x8019c3cc:
    cmpwi   r31, 0x0
    beq-    branch_0x8019c45c
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    b       branch_0x8019c55c

branch_0x8019c45c:
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x8
    li      r6, 0x2
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x4
    li      r6, 0x1
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0x8
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x4
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
branch_0x8019c55c:
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetAlphaUpdate
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl drawTex__FUsUs
drawTex__FUsUs: # 0x8019c5c8
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r6, 0x2
    li      r7, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    li      r4, 0x9
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x2
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    li      r4, 0x0
    lis     r3, 0xcc01
    sth     r4, -0x8000(r3)
    li      r0, 0x1
    sth     r4, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r30, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r30, -0x8000(r3)
    sth     r31, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r0, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r31, -0x8000(r3)
    sth     r4, -0x8000(r3)
    sth     r0, -0x8000(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__20TPollutionCounterObjFv
__ct__20TPollutionCounterObjFv: # 0x8019c6ac
    lis     r4, 0x803b
    subi    r0, r4, 0x2e6c
    lis     r4, 0x803c
    stw     r0, 0x0(r3)
    addi    r0, r4, 0x1d90
    stw     r0, 0x0(r3)
    li      r5, 0x0
    lis     r4, 0x803c
    stw     r5, 0x4(r3)
    addi    r0, r4, 0x1da4
    stw     r5, 0x8(r3)
    stw     r5, 0xc(r3)
    stw     r5, 0x10(r3)
    stw     r0, 0x0(r3)
    stw     r5, 0x14(r3)
    blr


.globl init__20TPollutionCounterObjFi
init__20TPollutionCounterObjFi: # 0x8019c6ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    stw     r30, 0x4(r3)
    lwz     r0, 0x4(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0xc(r29)
    slwi    r31, r30, 2
    addi    r3, r31, 0x0
    bl      __nwa__FUl
    cmpwi   r30, 0x0
    stw     r3, 0x10(r29)
    li      r3, 0x0
    addi    r4, r3, 0x0
    ble-    branch_0x8019c83c
    cmpwi   r30, 0x8
    subi    r5, r30, 0x8
    ble-    branch_0x8019c80c
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8019c80c
branch_0x8019c760:
    lwz     r5, 0xc(r29)
    li      r12, 0x0
    addi    r11, r4, 0x4
    stwx    r12, r5, r4
    addi    r10, r4, 0x8
    addi    r9, r4, 0xc
    lwz     r5, 0x10(r29)
    addi    r8, r4, 0x10
    addi    r7, r4, 0x14
    stwx    r12, r5, r4
    addi    r6, r4, 0x18
    addi    r0, r4, 0x1c
    lwz     r5, 0xc(r29)
    addi    r3, r3, 0x8
    addi    r4, r4, 0x20
    stwx    r12, r5, r11
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r11
    lwz     r5, 0xc(r29)
    stwx    r12, r5, r10
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r10
    lwz     r5, 0xc(r29)
    stwx    r12, r5, r9
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r9
    lwz     r5, 0xc(r29)
    stwx    r12, r5, r8
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r8
    lwz     r5, 0xc(r29)
    stwx    r12, r5, r7
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r7
    lwz     r5, 0xc(r29)
    stwx    r12, r5, r6
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r6
    lwz     r5, 0xc(r29)
    stwx    r12, r5, r0
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r0
    bdnz+      branch_0x8019c760
branch_0x8019c80c:
    subf    r0, r3, r30
    cmpw    r3, r30
    mtctr   r0
    slwi    r3, r3, 2
    li      r0, 0x0
    bge-    branch_0x8019c83c
branch_0x8019c824:
    lwz     r4, 0xc(r29)
    stwx    r0, r4, r3
    lwz     r4, 0x10(r29)
    stwx    r0, r4, r3
    addi    r3, r3, 0x4
    bdnz+      branch_0x8019c824
branch_0x8019c83c:
    mr      r3, r31
    bl      __nwa__FUl
    cmpwi   r30, 0x0
    stw     r3, 0x14(r29)
    li      r3, 0x0
    li      r4, 0x0
    ble-    branch_0x8019c954
    cmpwi   r30, 0x8
    subi    r5, r30, 0x8
    ble-    branch_0x8019c924
    addi    r0, r5, 0x7
    srwi    r0, r0, 3
    cmpwi   r5, 0x0
    mtctr   r0
    ble-    branch_0x8019c924
branch_0x8019c878:
    lwz     r5, 0x14(r29)
    li      r12, 0x0
    addi    r11, r4, 0x4
    stwx    r12, r5, r4
    addi    r10, r4, 0x8
    addi    r9, r4, 0xc
    lwz     r5, 0x10(r29)
    addi    r8, r4, 0x10
    addi    r7, r4, 0x14
    stwx    r12, r5, r4
    addi    r6, r4, 0x18
    addi    r0, r4, 0x1c
    lwz     r5, 0x14(r29)
    addi    r3, r3, 0x8
    addi    r4, r4, 0x20
    stwx    r12, r5, r11
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r11
    lwz     r5, 0x14(r29)
    stwx    r12, r5, r10
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r10
    lwz     r5, 0x14(r29)
    stwx    r12, r5, r9
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r9
    lwz     r5, 0x14(r29)
    stwx    r12, r5, r8
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r8
    lwz     r5, 0x14(r29)
    stwx    r12, r5, r7
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r7
    lwz     r5, 0x14(r29)
    stwx    r12, r5, r6
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r6
    lwz     r5, 0x14(r29)
    stwx    r12, r5, r0
    lwz     r5, 0x10(r29)
    stwx    r12, r5, r0
    bdnz+      branch_0x8019c878
branch_0x8019c924:
    subf    r0, r3, r30
    cmpw    r3, r30
    mtctr   r0
    slwi    r3, r3, 2
    li      r0, 0x0
    bge-    branch_0x8019c954
branch_0x8019c93c:
    lwz     r4, 0x14(r29)
    stwx    r0, r4, r3
    lwz     r4, 0x10(r29)
    stwx    r0, r4, r3
    addi    r3, r3, 0x4
    bdnz+      branch_0x8019c93c
branch_0x8019c954:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl registerPollutionObj__20TPollutionCounterObjFP13TPollutionObjPUl
registerPollutionObj__20TPollutionCounterObjFP13TPollutionObjPUl: # 0x8019c970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r30, r3
    mr      r27, r4
    addi    r31, r5, 0x0
    li      r28, 0x0
    li      r29, 0x0
    lwz     r0, 0x8(r3)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    stwx    r27, r3, r0
    b       branch_0x8019c9d4

branch_0x8019c9a8:
    lwz     r3, 0x1c(r27)
    lwzx    r3, r3, r29
    bl      SMS_CountPolygonNumInShape__FP8J3DShape
    lwz     r0, 0x8(r30)
    addi    r28, r28, 0x1
    lwz     r5, 0x10(r30)
    addi    r29, r29, 0x4
    slwi    r4, r0, 2
    lwzx    r0, r5, r4
    add     r0, r0, r3
    stwx    r0, r5, r4
branch_0x8019c9d4:
    lwz     r0, 0x18(r27)
    cmpw    r28, r0
    blt+    branch_0x8019c9a8
    lwz     r3, 0x8(r30)
    li      r0, -0x1
    lwz     r4, 0xc(r30)
    slwi    r3, r3, 2
    stwx    r31, r4, r3
    stw     r0, 0x0(r31)
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
    lwz     r0, 0x3c(sp)
    lmw     r27, 0x24(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl countObjDegree__20TPollutionCounterObjCFv
countObjDegree__20TPollutionCounterObjCFv: # 0x8019ca18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stfd    f30, 0x128(sp)
    stfd    f29, 0x120(sp)
    stfd    f28, 0x118(sp)
    stfd    f27, 0x110(sp)
    stmw    r23, 0xec(sp)
    mr      r27, r3
    bl      ReInitializeGX
    bl      initDrawObjGX__Fv
    lis     r3, 0x8040
    lfs     f29, -0x4198(rtoc)
    lfs     f30, -0x4194(rtoc)
    addi    r31, r3, 0x45dc
    lfs     f31, -0x4190(rtoc)
    li      r28, 0x0
    b       branch_0x8019ccb4

branch_0x8019ca64:
    lwz     r3, 0x14(r27)
    clrlslwi  r0, r28, 16, 2
    lwzx    r4, r3, r0
    addi    r3, sp, 0x7c
    lwz     r4, 0xc(r4)
    addi    r4, r4, 0x40
    lfs     f27, 0x8(r4)
    lfs     f28, 0x0(r4)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    addi    r3, sp, 0xac
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    stfs    f29, 0xa8(sp)
    addi    r3, sp, 0x7c
    addi    r5, r3, 0x0
    stfs    f29, 0x98(sp)
    addi    r4, sp, 0xac
    stfs    f29, 0x88(sp)
    stfs    f29, 0x94(sp)
    stfs    f29, 0x84(sp)
    stfs    f29, 0xa0(sp)
    stfs    f29, 0x80(sp)
    stfs    f29, 0x9c(sp)
    stfs    f29, 0x8c(sp)
    stfs    f30, 0xa4(sp)
    stfs    f29, 0xd8(sp)
    stfs    f30, 0x90(sp)
    stfs    f29, 0xc8(sp)
    stfs    f30, 0x7c(sp)
    stfs    f29, 0xb8(sp)
    stfs    f29, 0xc4(sp)
    stfs    f29, 0xb4(sp)
    stfs    f29, 0xd0(sp)
    stfs    f29, 0xb0(sp)
    stfs    f29, 0xcc(sp)
    stfs    f29, 0xbc(sp)
    stfs    f30, 0xd4(sp)
    stfs    f30, 0xc0(sp)
    stfs    f30, 0xac(sp)
    stfs    f31, 0xac(sp)
    stfs    f29, 0xb0(sp)
    stfs    f29, 0xb4(sp)
    stfs    f29, 0xbc(sp)
    stfs    f31, 0xc0(sp)
    stfs    f29, 0xc4(sp)
    stfs    f29, 0xcc(sp)
    stfs    f29, 0xd0(sp)
    stfs    f29, 0xd4(sp)
    bl      PSMTXConcat
    addi    r3, sp, 0xac
    li      r4, -0x4000
    li      r5, 0x0
    li      r6, 0x0
    bl      setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fsss
    addi    r3, sp, 0x7c
    addi    r5, r3, 0x0
    addi    r4, sp, 0xac
    bl      PSMTXConcat
    fneg    f1, f28
    addi    r3, sp, 0x7c
    fneg    f0, f27
    li      r4, 0x0
    fmuls   f1, f1, f31
    fmuls   f0, f0, f31
    stfs    f1, 0x88(sp)
    stfs    f0, 0x98(sp)
    stfs    f29, 0xa8(sp)
    bl      GXLoadPosMtxImm
    lwz     r3, 0x14(r27)
    cmplwi  r3, 0x0
    beq-    branch_0x8019cc7c
    slwi    r29, r30, 2
    lwzx    r3, r3, r29
    cmplwi  r3, 0x0
    beq-    branch_0x8019cc7c
    lwz     r4, 0x34(r3)
    addi    r3, sp, 0x54
    li      r7, 0x1
    lwz     r4, 0x58(r4)
    li      r8, 0x0
    li      r9, 0x0
    lwz     r0, 0x1c(r4)
    li      r10, 0x0
    lhz     r6, 0x4(r4)
    lhz     r5, 0x2(r4)
    add     r4, r4, r0
    bl      GXInitTexObj
    lfs     f1, -0x4198(rtoc)
    addi    r3, sp, 0x54
    lfs     f2, -0x4194(rtoc)
    li      r4, 0x0
    fmr     f3, f1
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    bl      GXInitTexObjLOD
    addi    r3, sp, 0x54
    li      r4, 0x0
    bl      GXLoadTexObj
    lwz     r3, 0x14(r27)
    lwzx    r3, r3, r29
    lwz     r3, 0x34(r3)
    lwz     r3, 0x24(r3)
    lwz     r0, 0x4c(r3)
    stw     r0, 0x10c(r31)
    bl      GXClearPixMetric
    li      r25, 0x0
    addi    r26, r25, 0x0
    b       branch_0x8019cc68

branch_0x8019cc18:
    lwz     r3, 0x1c(r3)
    li      r4, 0xc0
    lwzx    r23, r3, r26
    lwz     r3, 0x28(r23)
    bl      GXCallDisplayList
    mr      r3, r23
    bl      loadVtxArray__8J3DShapeCFv
    li      r24, 0x0
    b       branch_0x8019cc50

branch_0x8019cc3c:
    lwz     r3, 0x38(r23)
    clrlslwi  r0, r24, 16, 2
    lwzx    r3, r3, r0
    bl      draw__12J3DShapeDrawCFv
    addi    r24, r24, 0x1
branch_0x8019cc50:
    lhz     r0, 0x6(r23)
    clrlwi  r3, r24, 16
    cmplw   r3, r0
    blt+    branch_0x8019cc3c
    addi    r25, r25, 0x1
    addi    r26, r26, 0x4
branch_0x8019cc68:
    lwz     r0, 0x14(r27)
    lwzx    r3, r29, r0
    lwz     r0, 0x18(r3)
    cmpw    r25, r0
    blt+    branch_0x8019cc18
branch_0x8019cc7c:
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    mr      r3, r27
    lwz     r12, 0x0(r27)
    mr      r4, r30
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    bl      GXSetDrawSync
    lwz     r3, -0x5ff0(r13)
    bl      pushBreakPoint__16TDrawSyncManagerFv
    li      r3, 0x0
    bl      GXSetDrawSync
    addi    r28, r28, 0x1
branch_0x8019ccb4:
    lwz     r0, 0x8(r27)
    clrlwi  r30, r28, 16
    cmpw    r30, r0
    blt+    branch_0x8019ca64
    lmw     r23, 0xec(sp)
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lfd     f30, 0x128(sp)
    mtlr    r0
    lfd     f29, 0x120(sp)
    lfd     f28, 0x118(sp)
    lfd     f27, 0x110(sp)
    addi    sp, sp, 0x138
    blr


.globl setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fsss
setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___Fsss: # 0x8019ccec
    lwz     r7, -0x5eac(r13)
    clrlwi  r4, r4, 16
    clrlwi  r0, r5, 16
    lwz     r9, -0x5ea4(r13)
    sraw    r5, r4, r7
    sraw    r4, r0, r7
    lwz     r8, -0x5ea8(r13)
    clrlwi  r0, r6, 16
    slwi    r4, r4, 2
    sraw    r0, r0, r7
    lfsx    f7, r9, r4
    slwi    r6, r0, 2
    lfsx    f5, r8, r4
    slwi    r0, r5, 2
    lfsx    f8, r9, r6
    lfsx    f3, r8, r0
    fneg    f0, f5
    lfsx    f4, r8, r6
    fmuls   f2, f7, f8
    lfsx    f6, r9, r0
    fmuls   f1, f7, f4
    stfs    f2, 0x0(r3)
    fmuls   f10, f3, f5
    fmuls   f11, f6, f4
    stfs    f1, 0x10(r3)
    fmuls   f9, f6, f8
    fmuls   f1, f3, f4
    stfs    f0, 0x20(r3)
    fmsubs  f2, f10, f8, f11
    fmuls   f0, f3, f8
    fmadds  f4, f10, f4, f9
    stfs    f2, 0x4(r3)
    fmuls   f3, f3, f7
    fmadds  f2, f9, f5, f1
    stfs    f4, 0x14(r3)
    fmsubs  f1, f11, f5, f0
    stfs    f3, 0x24(r3)
    fmuls   f0, f6, f7
    stfs    f2, 0x8(r3)
    stfs    f1, 0x18(r3)
    stfs    f0, 0x28(r3)
    blr


.globl initDrawObjGX__Fv
initDrawObjGX__Fv: # 0x8019cd94
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    lfs     f1, -0x4198(rtoc)
    addi    r3, sp, 0x14
    lfs     f0, -0x4194(rtoc)
    stfs    f1, 0x40(sp)
    stfs    f1, 0x30(sp)
    stfs    f1, 0x20(sp)
    stfs    f1, 0x2c(sp)
    stfs    f1, 0x1c(sp)
    stfs    f1, 0x38(sp)
    stfs    f1, 0x18(sp)
    stfs    f1, 0x34(sp)
    stfs    f1, 0x24(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x14(sp)
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x41bc(rtoc)
    addi    r4, sp, 0x10
    li      r3, 0x4
    stw     r0, 0xc(sp)
    lwz     r0, 0xc(sp)
    stw     r0, 0x10(sp)
    bl      GXSetChanMatColor
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0xff
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x8
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x0
    li      r4, 0x4
    li      r5, 0x7
    li      r6, 0x7
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl drawSyncCallback__21TPollutionCounterBaseFUs
drawSyncCallback__21TPollutionCounterBaseFUs: # 0x8019cf4c
    mflr    r0
    clrlwi  r4, r4, 16
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r12, 0x0(r30)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r4, 0xc(r30)
    slwi    r31, r3, 2
    addi    r3, sp, 0x10
    lwzx    r7, r4, r31
    addi    r4, r3, 0x0
    addi    r5, r3, 0x0
    addi    r6, r3, 0x0
    addi    r8, r3, 0x0
    bl      GXReadPixMetric
    lwz     r3, 0xc(r30)
    lwz     r4, 0x10(r30)
    lwzx    r3, r3, r31
    lwzx    r4, r4, r31
    lwz     r0, 0x0(r3)
    slwi    r4, r4, 2
    subf    r0, r4, r0
    stw     r0, 0x0(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl drawBlack__FUsUs
drawBlack__FUsUs: # 0x8019cfd4
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    li      r6, 0x2
    li      r7, 0x1
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    li      r4, 0x9
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    li      r3, 0x5
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x2
    bl      GXSetChanCtrl
    lwz     r0, -0x41c0(rtoc)
    addi    r4, sp, 0x14
    li      r3, 0x4
    stw     r0, 0x10(sp)
    lwz     r0, 0x10(sp)
    stw     r0, 0x14(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x0
    li      r4, 0x7
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    li      r6, 0x0
    lis     r5, 0xcc01
    sth     r6, -0x8000(r5)
    li      r4, 0x1
    clrlslwi  r3, r31, 16, 1
    sth     r4, -0x8000(r5)
    clrlslwi  r0, r30, 17, 1
    addi    r3, r3, 0x1
    sth     r0, -0x8000(r5)
    sth     r4, -0x8000(r5)
    sth     r0, -0x8000(r5)
    sth     r3, -0x8000(r5)
    sth     r6, -0x8000(r5)
    sth     r3, -0x8000(r5)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl getCounterNo__20TPollutionCounterObjCFUl
getCounterNo__20TPollutionCounterObjCFUl: # 0x8019d160
    subi    r3, r4, 0x92
    blr


.globl getTokenNo__20TPollutionCounterObjCFi
getTokenNo__20TPollutionCounterObjCFi: # 0x8019d168
    addi    r3, r4, 0x92
    blr


.globl getCounterNo__22TPollutionCounterLayerCFUl
getCounterNo__22TPollutionCounterLayerCFUl: # 0x8019d170
    subi    r3, r4, 0x7e
    blr


.globl getTokenNo__22TPollutionCounterLayerCFi
getTokenNo__22TPollutionCounterLayerCFi: # 0x8019d178
    addi    r3, r4, 0x7e
    blr


.globl __sinit_PollutionCount_cpp
__sinit_PollutionCount_cpp: # 0x8019d180
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7ac8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d1c8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8019d1c8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d1f8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8019d1f8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d228
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8019d228:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d258
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8019d258:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d288
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8019d288:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d2b8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8019d2b8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d2e8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8019d2e8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d318
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8019d318:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d348
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8019d348:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d378
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8019d378:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d3a8
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8019d3a8:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d3d8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8019d3d8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d408
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8019d408:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d438
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8019d438:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019d468
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8019d468:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

