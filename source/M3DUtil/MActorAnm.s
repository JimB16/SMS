
.globl verifySuffix__12MActorAnmBlkFPCc
verifySuffix__12MActorAnmBlkFPCc: # 0x8023a964
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x1548
    stwu    sp, -0x8(sp)
    bl      strstr
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setAnmFromIndex__12MActorAnmBlkFiPUs
setAnmFromIndex__12MActorAnmBlkFiPUs: # 0x8023a98c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r4, 0x0(r3)
    blt-    branch_0x8023a9f8
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x8023a9cc
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    b       branch_0x8023a9d0

branch_0x8023a9cc:
    li      r0, 0x0
branch_0x8023a9d0:
    stw     r0, 0x24(r31)
    addi    r3, r31, 0x4
    lwz     r4, 0x24(r31)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r31)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r31)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r31)
branch_0x8023a9f8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl updateOut__12MActorAnmBlkFv
updateOut__12MActorAnmBlkFv: # 0x8023aa0c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x28(r3)
    bl      setAnm__13J3DDeformDataFP13J3DAnmCluster
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateIn__12MActorAnmBlkFv
updateIn__12MActorAnmBlkFv: # 0x8023aa34
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    lis     r0, 0x4330
    stwu    sp, -0x30(sp)
    lwz     r3, 0x24(r3)
    lfs     f2, -0x1540(rtoc)
    lha     r3, 0x2(r3)
    lfs     f0, 0x14(r4)
    xoris   r3, r3, 0x8000
    lfd     f1, -0x1538(rtoc)
    stw     r3, 0x2c(sp)
    fadds   f2, f2, f0
    stw     r0, 0x28(sp)
    lfd     f0, 0x28(sp)
    fsubs   f0, f0, f1
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8023aa88
    lfs     f0, -0x153c(rtoc)
    stfs    f0, 0x14(r4)
branch_0x8023aa88:
    lfs     f0, 0x14(r4)
    lwz     r3, 0x24(r4)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x28(r4)
    lwz     r4, 0x24(r4)
    bl      setAnm__13J3DDeformDataFP13J3DAnmCluster
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl checkUseMaterialID__12MActorAnmBrkFPUs
checkUseMaterialID__12MActorAnmBrkFPUs: # 0x8023aab0
    li      r7, 0x0
    b       branch_0x8023aad4

branch_0x8023aab8:
    clrlslwi  r0, r7, 16, 1
    add     r5, r4, r0
    lhz     r0, 0x0(r5)
    cmplwi  r0, 0x32
    bne-    branch_0x8023aad0
    sth     r7, 0x0(r5)
branch_0x8023aad0:
    addi    r7, r7, 0x1
branch_0x8023aad4:
    lwz     r5, 0x18(r3)
    clrlwi  r6, r7, 16
    lwz     r5, 0x4(r5)
    lhz     r0, 0x24(r5)
    cmplw   r6, r0
    blt+    branch_0x8023aab8
    blr


.globl checkUseMaterialIDInit__12MActorAnmBrkFPUs
checkUseMaterialIDInit__12MActorAnmBrkFPUs: # 0x8023aaf0
    li      r7, 0x0
    b       branch_0x8023ab14

branch_0x8023aaf8:
    clrlslwi  r0, r7, 16, 1
    add     r5, r4, r0
    lhz     r0, 0x0(r5)
    cmplwi  r0, 0x32
    bne-    branch_0x8023ab10
    sth     r7, 0x0(r5)
branch_0x8023ab10:
    addi    r7, r7, 0x1
branch_0x8023ab14:
    lwz     r5, 0x18(r3)
    clrlwi  r6, r7, 16
    lwz     r5, 0x4(r5)
    lhz     r0, 0x24(r5)
    cmplw   r6, r0
    blt+    branch_0x8023aaf8
    blr


.globl updateOut__12MActorAnmBrkFv
updateOut__12MActorAnmBrkFv: # 0x8023ab30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x18(r3)
    lwz     r4, 0x24(r3)
    lwz     r3, 0x4(r5)
    bl      removeTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKey
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateIn__12MActorAnmBrkFv
updateIn__12MActorAnmBrkFv: # 0x8023ab5c
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x14(r3)
    lwz     r3, 0x24(r3)
    stfs    f0, 0x4(r3)
    lwz     r0, 0x0(r4)
    lwz     r3, 0x18(r4)
    lwz     r5, 0x28(r4)
    slwi    r0, r0, 2
    lwz     r6, 0x2c(r4)
    lwz     r3, 0x4(r3)
    lwz     r4, 0x24(r4)
    lwzx    r5, r5, r0
    lwzx    r6, r6, r0
    bl      setTevRegAnimator__12J3DModelDataFP15J3DAnmTevRegKeyP14J3DTevColorAnmP15J3DTevKColorAnm
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setTevKColorAnmKeyPtr__12MActorAnmBrkFv
setTevKColorAnmKeyPtr__12MActorAnmBrkFv: # 0x8023abb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    mr      r27, r3
    lwz     r3, 0x1c(r3)
    lwz     r29, 0x0(r3)
    slwi    r3, r29, 2
    bl      __nwa__FUl
    lis     r4, 0x8024
    stw     r3, 0x2c(r27)
    lis     r3, 0x8024
    subi    r30, r4, 0x5300
    subi    r31, r3, 0x5340
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x8023aca4

branch_0x8023abf4:
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x0(r3)
    cmpw    r28, r0
    bge-    branch_0x8023ac10
    lwz     r3, 0xc(r3)
    lwzx    r3, r3, r26
    b       branch_0x8023ac14

branch_0x8023ac10:
    li      r3, 0x0
branch_0x8023ac14:
    lhz     r25, 0x12(r3)
    slwi    r3, r25, 3
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r7, r25, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    lwz     r4, 0x2c(r27)
    cmpwi   r25, 0x0
    mtctr   r25
    li      r6, 0x0
    stwx    r3, r4, r26
    li      r3, 0x0
    ble-    branch_0x8023ac9c
branch_0x8023ac54:
    lwz     r0, 0x2c(r27)
    lwzx    r4, r26, r0
    sthx    r6, r4, r3
    lwz     r4, 0x1c(r27)
    lwz     r0, 0x0(r4)
    cmpw    r28, r0
    bge-    branch_0x8023ac7c
    lwz     r0, 0xc(r4)
    lwzx    r5, r26, r0
    b       branch_0x8023ac80

branch_0x8023ac7c:
    li      r5, 0x0
branch_0x8023ac80:
    lwz     r4, 0x2c(r27)
    addi    r0, r3, 0x4
    addi    r6, r6, 0x1
    lwzx    r4, r26, r4
    addi    r3, r3, 0x8
    stwx    r5, r4, r0
    bdnz+      branch_0x8023ac54
branch_0x8023ac9c:
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x8023aca4:
    cmpw    r28, r29
    blt+    branch_0x8023abf4
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__15J3DTevKColorAnmFv
__dt__15J3DTevKColorAnmFv: # 0x8023acc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023ace8
    extsh.  r0, r4
    ble-    branch_0x8023ace8
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023ace8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__15J3DTevKColorAnmFv
__ct__15J3DTevKColorAnmFv: # 0x8023ad00
    li      r0, 0x0
    stw     r0, 0x4(r3)
    sth     r0, 0x0(r3)
    blr


.globl setTevColorAnmKeyPtr__12MActorAnmBrkFv
setTevColorAnmKeyPtr__12MActorAnmBrkFv: # 0x8023ad10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    mr      r27, r3
    lwz     r3, 0x1c(r3)
    lwz     r29, 0x0(r3)
    slwi    r3, r29, 2
    bl      __nwa__FUl
    lis     r4, 0x8024
    stw     r3, 0x28(r27)
    lis     r3, 0x8024
    subi    r30, r4, 0x51a0
    subi    r31, r3, 0x51e0
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x8023ae04

branch_0x8023ad54:
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x0(r3)
    cmpw    r28, r0
    bge-    branch_0x8023ad70
    lwz     r3, 0xc(r3)
    lwzx    r3, r3, r26
    b       branch_0x8023ad74

branch_0x8023ad70:
    li      r3, 0x0
branch_0x8023ad74:
    lhz     r25, 0x10(r3)
    slwi    r3, r25, 3
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r7, r25, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    lwz     r4, 0x28(r27)
    cmpwi   r25, 0x0
    mtctr   r25
    li      r6, 0x0
    stwx    r3, r4, r26
    li      r3, 0x0
    ble-    branch_0x8023adfc
branch_0x8023adb4:
    lwz     r0, 0x28(r27)
    lwzx    r4, r26, r0
    sthx    r6, r4, r3
    lwz     r4, 0x1c(r27)
    lwz     r0, 0x0(r4)
    cmpw    r28, r0
    bge-    branch_0x8023addc
    lwz     r0, 0xc(r4)
    lwzx    r5, r26, r0
    b       branch_0x8023ade0

branch_0x8023addc:
    li      r5, 0x0
branch_0x8023ade0:
    lwz     r4, 0x28(r27)
    addi    r0, r3, 0x4
    addi    r6, r6, 0x1
    lwzx    r4, r26, r4
    addi    r3, r3, 0x8
    stwx    r5, r4, r0
    bdnz+      branch_0x8023adb4
branch_0x8023adfc:
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x8023ae04:
    cmpw    r28, r29
    blt+    branch_0x8023ad54
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__14J3DTevColorAnmFv
__dt__14J3DTevColorAnmFv: # 0x8023ae20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023ae48
    extsh.  r0, r4
    ble-    branch_0x8023ae48
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023ae48:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14J3DTevColorAnmFv
__ct__14J3DTevColorAnmFv: # 0x8023ae60
    li      r0, 0x0
    stw     r0, 0x4(r3)
    sth     r0, 0x0(r3)
    blr


.globl updateOut__12MActorAnmBpkFv
updateOut__12MActorAnmBpkFv: # 0x8023ae70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x18(r3)
    lwz     r4, 0x24(r3)
    lwz     r3, 0x4(r5)
    bl      removeMatColorAnimator__12J3DModelDataFP11J3DAnmColor
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateIn__12MActorAnmBpkFv
updateIn__12MActorAnmBpkFv: # 0x8023ae9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x14(r3)
    lwz     r4, 0x24(r3)
    stfs    f0, 0x4(r4)
    lwz     r4, 0x18(r3)
    lwz     r0, 0x0(r3)
    lwz     r6, 0x4(r4)
    lwz     r5, 0x28(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x24(r3)
    mr      r3, r6
    lwzx    r5, r5, r0
    bl      setMatColorAnimator__12J3DModelDataFP11J3DAnmColorP14J3DMatColorAnm
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMatColorAnmKeyPtr__12MActorAnmBpkFv
setMatColorAnmKeyPtr__12MActorAnmBpkFv: # 0x8023aee8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    mr      r27, r3
    lwz     r3, 0x1c(r3)
    lwz     r29, 0x0(r3)
    slwi    r3, r29, 2
    bl      __nwa__FUl
    lis     r4, 0x8024
    stw     r3, 0x28(r27)
    lis     r3, 0x8024
    subi    r30, r4, 0x4fc8
    subi    r31, r3, 0x5008
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x8023afdc

branch_0x8023af2c:
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x0(r3)
    cmpw    r28, r0
    bge-    branch_0x8023af48
    lwz     r3, 0xc(r3)
    lwzx    r3, r3, r26
    b       branch_0x8023af4c

branch_0x8023af48:
    li      r3, 0x0
branch_0x8023af4c:
    lhz     r25, 0x18(r3)
    slwi    r3, r25, 3
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r7, r25, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    lwz     r4, 0x28(r27)
    cmpwi   r25, 0x0
    mtctr   r25
    li      r6, 0x0
    stwx    r3, r4, r26
    li      r3, 0x0
    ble-    branch_0x8023afd4
branch_0x8023af8c:
    lwz     r0, 0x28(r27)
    lwzx    r4, r26, r0
    sthx    r6, r4, r3
    lwz     r4, 0x1c(r27)
    lwz     r0, 0x0(r4)
    cmpw    r28, r0
    bge-    branch_0x8023afb4
    lwz     r0, 0xc(r4)
    lwzx    r5, r26, r0
    b       branch_0x8023afb8

branch_0x8023afb4:
    li      r5, 0x0
branch_0x8023afb8:
    lwz     r4, 0x28(r27)
    addi    r0, r3, 0x4
    addi    r6, r6, 0x1
    lwzx    r4, r26, r4
    addi    r3, r3, 0x8
    stwx    r5, r4, r0
    bdnz+      branch_0x8023af8c
branch_0x8023afd4:
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x8023afdc:
    cmpw    r28, r29
    blt+    branch_0x8023af2c
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__14J3DMatColorAnmFv
__dt__14J3DMatColorAnmFv: # 0x8023aff8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023b020
    extsh.  r0, r4
    ble-    branch_0x8023b020
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023b020:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__14J3DMatColorAnmFv
__ct__14J3DMatColorAnmFv: # 0x8023b038
    li      r0, 0x0
    stw     r0, 0x4(r3)
    sth     r0, 0x0(r3)
    blr


.globl checkUseMaterialID__12MActorAnmBpkFPUs
checkUseMaterialID__12MActorAnmBpkFPUs: # 0x8023b048
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8023b060
    blr

branch_0x8023b060:
    li      r7, 0x0
    b       branch_0x8023b088

branch_0x8023b068:
    lwz     r5, 0x1c(r6)
    clrlslwi  r0, r7, 16, 1
    lhzx    r5, r5, r0
    cmplwi  r5, 0xffff
    beq-    branch_0x8023b084
    slwi    r0, r5, 1
    sthx    r5, r4, r0
branch_0x8023b084:
    addi    r7, r7, 0x1
branch_0x8023b088:
    lwz     r6, 0x24(r3)
    clrlwi  r0, r7, 16
    lhz     r5, 0x18(r6)
    cmplw   r0, r5
    blt+    branch_0x8023b068
    blr


.globl checkUseMaterialIDInit__12MActorAnmBpkFPUs
checkUseMaterialIDInit__12MActorAnmBpkFPUs: # 0x8023b0a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r23, 0x54(sp)
    addi    r29, r3, 0x0
    addi    r30, r4, 0x0
    li      r31, 0x0
    li      r28, 0x0
    b       branch_0x8023b164

branch_0x8023b0c4:
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x8023b0dc
    lwz     r3, 0xc(r3)
    lwzx    r26, r3, r28
    b       branch_0x8023b0e0

branch_0x8023b0dc:
    li      r26, 0x0
branch_0x8023b0e0:
    li      r24, 0x0
    b       branch_0x8023b14c

branch_0x8023b0e8:
    li      r23, 0x0
    b       branch_0x8023b130

branch_0x8023b0f0:
    lwz     r3, 0xb4(r4)
    mr      r4, r23
    lwz     r25, 0x20(r26)
    bl      getName__10JUTNameTabCFUs
    addi    r27, r3, 0x0
    addi    r3, r25, 0x0
    addi    r4, r24, 0x0
    bl      getName__10JUTNameTabCFUs
    mr      r4, r27
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8023b12c
    clrlslwi  r0, r23, 16, 1
    sthx    r24, r30, r0
    b       branch_0x8023b148

branch_0x8023b12c:
    addi    r23, r23, 0x1
branch_0x8023b130:
    lwz     r4, 0x18(r29)
    clrlwi  r3, r23, 16
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmplw   r3, r0
    blt+    branch_0x8023b0f0
branch_0x8023b148:
    addi    r24, r24, 0x1
branch_0x8023b14c:
    lhz     r0, 0x18(r26)
    clrlwi  r3, r24, 16
    cmplw   r3, r0
    blt+    branch_0x8023b0e8
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x8023b164:
    lwz     r3, 0x1c(r29)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    blt+    branch_0x8023b0c4
    lmw     r23, 0x54(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl updateOut__12MActorAnmBtkFv
updateOut__12MActorAnmBtkFv: # 0x8023b188
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x18(r3)
    lwz     r4, 0x24(r3)
    lwz     r3, 0x4(r5)
    bl      removeTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKey
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateIn__12MActorAnmBtkFv
updateIn__12MActorAnmBtkFv: # 0x8023b1b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x14(r3)
    lwz     r4, 0x24(r3)
    stfs    f0, 0x4(r4)
    lwz     r0, 0x0(r3)
    lwz     r4, 0x18(r3)
    lwz     r5, 0x28(r3)
    slwi    r0, r0, 2
    lwz     r6, 0x4(r4)
    lwz     r4, 0x24(r3)
    lwzx    r5, r5, r0
    addi    r3, r6, 0x0
    addi    r6, r5, 0x0
    bl      setTexMtxAnimator__12J3DModelDataFP19J3DAnmTextureSRTKeyP12J3DTexMtxAnmP12J3DTexMtxAnm
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setTexMtxAnmKeyPtr__12MActorAnmBtkFv
setTexMtxAnmKeyPtr__12MActorAnmBtkFv: # 0x8023b204
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r24, 0x38(sp)
    mr      r26, r3
    lwz     r3, 0x1c(r3)
    lwz     r28, 0x0(r3)
    slwi    r3, r28, 2
    bl      __nwa__FUl
    lis     r5, 0x5555
    stw     r3, 0x28(r26)
    lis     r4, 0x8024
    lis     r3, 0x8024
    addi    r29, r5, 0x5556
    subi    r30, r4, 0x4c94
    subi    r31, r3, 0x4cd4
    li      r27, 0x0
    li      r25, 0x0
    b       branch_0x8023b310

branch_0x8023b250:
    lwz     r3, 0x1c(r26)
    lwz     r0, 0x0(r3)
    cmpw    r27, r0
    bge-    branch_0x8023b26c
    lwz     r3, 0xc(r3)
    lwzx    r3, r3, r25
    b       branch_0x8023b270

branch_0x8023b26c:
    li      r3, 0x0
branch_0x8023b270:
    lhz     r0, 0x14(r3)
    mulhw   r3, r29, r0
    srwi    r0, r3, 31
    add     r0, r3, r0
    clrlslwi  r3, r0, 16, 3
    clrlwi  r24, r0, 16
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r7, r24, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    lwz     r4, 0x28(r26)
    cmpwi   r24, 0x0
    mtctr   r24
    li      r6, 0x0
    stwx    r3, r4, r25
    li      r3, 0x0
    ble-    branch_0x8023b308
branch_0x8023b2c0:
    lwz     r0, 0x28(r26)
    lwzx    r4, r25, r0
    sthx    r6, r4, r3
    lwz     r4, 0x1c(r26)
    lwz     r0, 0x0(r4)
    cmpw    r27, r0
    bge-    branch_0x8023b2e8
    lwz     r0, 0xc(r4)
    lwzx    r5, r25, r0
    b       branch_0x8023b2ec

branch_0x8023b2e8:
    li      r5, 0x0
branch_0x8023b2ec:
    lwz     r4, 0x28(r26)
    addi    r0, r3, 0x4
    addi    r6, r6, 0x1
    lwzx    r4, r25, r4
    addi    r3, r3, 0x8
    stwx    r5, r4, r0
    bdnz+      branch_0x8023b2c0
branch_0x8023b308:
    addi    r27, r27, 0x1
    addi    r25, r25, 0x4
branch_0x8023b310:
    cmpw    r27, r28
    blt+    branch_0x8023b250
    lmw     r24, 0x38(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__12J3DTexMtxAnmFv
__dt__12J3DTexMtxAnmFv: # 0x8023b32c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8023b354
    extsh.  r0, r4
    ble-    branch_0x8023b354
    mr      r3, r31
    bl      __dl__FPv
branch_0x8023b354:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__12J3DTexMtxAnmFv
__ct__12J3DTexMtxAnmFv: # 0x8023b36c
    li      r0, 0x0
    sth     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl checkUseMaterialID__12MActorAnmBtkFPUs
checkUseMaterialID__12MActorAnmBtkFPUs: # 0x8023b37c
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8023b394
    blr

branch_0x8023b394:
    lis     r5, 0x5555
    addi    r6, r5, 0x5556
    li      r9, 0x0
    b       branch_0x8023b3c4

branch_0x8023b3a4:
    lwz     r5, 0x34(r8)
    clrlslwi  r0, r9, 16, 1
    lhzx    r5, r5, r0
    cmplwi  r5, 0xffff
    beq-    branch_0x8023b3c0
    slwi    r0, r5, 1
    sthx    r5, r4, r0
branch_0x8023b3c0:
    addi    r9, r9, 0x1
branch_0x8023b3c4:
    lwz     r8, 0x24(r3)
    clrlwi  r0, r9, 16
    lhz     r5, 0x14(r8)
    mulhw   r7, r6, r5
    srwi    r5, r7, 31
    add     r5, r7, r5
    clrlwi  r5, r5, 16
    cmplw   r0, r5
    blt+    branch_0x8023b3a4
    blr


.globl checkUseMaterialIDInit__12MActorAnmBtkFPUs
checkUseMaterialIDInit__12MActorAnmBtkFPUs: # 0x8023b3ec
    mflr    r0
    lis     r5, 0x5555
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r22, 0x50(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r25, r5, 0x5556
    li      r30, 0x0
    li      r26, 0x0
    b       branch_0x8023b4c8

branch_0x8023b418:
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    bge-    branch_0x8023b430
    lwz     r3, 0xc(r3)
    lwzx    r31, r3, r26
    b       branch_0x8023b434

branch_0x8023b430:
    li      r31, 0x0
branch_0x8023b434:
    li      r29, 0x0
    b       branch_0x8023b4a0

branch_0x8023b43c:
    li      r22, 0x0
    b       branch_0x8023b484

branch_0x8023b444:
    lwz     r3, 0xb4(r4)
    mr      r4, r22
    lwz     r23, 0x38(r31)
    bl      getName__10JUTNameTabCFUs
    addi    r24, r3, 0x0
    addi    r3, r23, 0x0
    addi    r4, r29, 0x0
    bl      getName__10JUTNameTabCFUs
    mr      r4, r24
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8023b480
    clrlslwi  r0, r22, 16, 1
    sthx    r29, r28, r0
    b       branch_0x8023b49c

branch_0x8023b480:
    addi    r22, r22, 0x1
branch_0x8023b484:
    lwz     r4, 0x18(r27)
    clrlwi  r3, r22, 16
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmplw   r3, r0
    blt+    branch_0x8023b444
branch_0x8023b49c:
    addi    r29, r29, 0x1
branch_0x8023b4a0:
    lhz     r0, 0x14(r31)
    clrlwi  r4, r29, 16
    mulhw   r3, r25, r0
    srwi    r0, r3, 31
    add     r0, r3, r0
    clrlwi  r0, r0, 16
    cmplw   r4, r0
    blt+    branch_0x8023b43c
    addi    r30, r30, 0x1
    addi    r26, r26, 0x4
branch_0x8023b4c8:
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    blt+    branch_0x8023b418
    lmw     r22, 0x50(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl updateOut__12MActorAnmBtpFv
updateOut__12MActorAnmBtpFv: # 0x8023b4ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x18(r3)
    lwz     r4, 0x24(r3)
    lwz     r3, 0x4(r5)
    bl      removeTexNoAnimator__12J3DModelDataFP16J3DAnmTexPattern
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl updateIn__12MActorAnmBtpFv
updateIn__12MActorAnmBtpFv: # 0x8023b518
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x14(r3)
    lwz     r4, 0x24(r3)
    stfs    f0, 0x4(r4)
    lwz     r4, 0x18(r3)
    lwz     r0, 0x0(r3)
    lwz     r6, 0x4(r4)
    lwz     r5, 0x28(r3)
    slwi    r0, r0, 2
    lwz     r4, 0x24(r3)
    mr      r3, r6
    lwzx    r5, r5, r0
    bl      setTexNoAnimator__12J3DModelDataFP16J3DAnmTexPatternP11J3DTexNoAnm
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkUseMaterialID__12MActorAnmBtpFPUs
checkUseMaterialID__12MActorAnmBtpFPUs: # 0x8023b564
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x24(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8023b57c
    blr

branch_0x8023b57c:
    li      r7, 0x0
    b       branch_0x8023b5a4

branch_0x8023b584:
    lwz     r5, 0x1c(r6)
    clrlslwi  r0, r7, 16, 1
    lhzx    r5, r5, r0
    cmplwi  r5, 0xffff
    beq-    branch_0x8023b5a0
    slwi    r0, r5, 1
    sthx    r5, r4, r0
branch_0x8023b5a0:
    addi    r7, r7, 0x1
branch_0x8023b5a4:
    lwz     r6, 0x24(r3)
    clrlwi  r0, r7, 16
    lhz     r5, 0x1a(r6)
    cmplw   r0, r5
    blt+    branch_0x8023b584
    blr


.globl checkUseMaterialIDInit__12MActorAnmBtpFPUs
checkUseMaterialIDInit__12MActorAnmBtpFPUs: # 0x8023b5bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stmw    r22, 0x58(sp)
    addi    r28, r3, 0x0
    addi    r29, r4, 0x0
    li      r31, 0x0
    li      r27, 0x0
    b       branch_0x8023b68c

branch_0x8023b5e0:
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    bge-    branch_0x8023b5f8
    lwz     r3, 0xc(r3)
    lwzx    r25, r3, r27
    b       branch_0x8023b5fc

branch_0x8023b5f8:
    li      r25, 0x0
branch_0x8023b5fc:
    li      r30, 0x0
    b       branch_0x8023b674

branch_0x8023b604:
    lwz     r3, 0x1c(r25)
    clrlslwi  r0, r30, 16, 1
    li      r22, 0x0
    lhzx    r24, r3, r0
    b       branch_0x8023b658

branch_0x8023b618:
    lwz     r3, 0xb4(r4)
    mr      r4, r22
    lwz     r23, 0x20(r25)
    bl      getName__10JUTNameTabCFUs
    addi    r26, r3, 0x0
    addi    r3, r23, 0x0
    addi    r4, r30, 0x0
    bl      getName__10JUTNameTabCFUs
    mr      r4, r26
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8023b654
    clrlslwi  r0, r22, 16, 1
    sthx    r24, r29, r0
    b       branch_0x8023b670

branch_0x8023b654:
    addi    r22, r22, 0x1
branch_0x8023b658:
    lwz     r4, 0x18(r28)
    clrlwi  r3, r22, 16
    lwz     r4, 0x4(r4)
    lhz     r0, 0x24(r4)
    cmplw   r3, r0
    blt+    branch_0x8023b618
branch_0x8023b670:
    addi    r30, r30, 0x1
branch_0x8023b674:
    lhz     r0, 0x1a(r25)
    clrlwi  r3, r30, 16
    cmplw   r3, r0
    blt+    branch_0x8023b604
    addi    r31, r31, 0x1
    addi    r27, r27, 0x4
branch_0x8023b68c:
    lwz     r3, 0x1c(r28)
    lwz     r0, 0x0(r3)
    cmpw    r31, r0
    blt+    branch_0x8023b5e0
    lmw     r22, 0x58(sp)
    lwz     r0, 0x84(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl setTexNoAnmFullPtr__12MActorAnmBtpFv
setTexNoAnmFullPtr__12MActorAnmBtpFv: # 0x8023b6b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r25, 0x3c(sp)
    mr      r27, r3
    lwz     r3, 0x1c(r3)
    lwz     r29, 0x0(r3)
    slwi    r3, r29, 2
    bl      __nwa__FUl
    lis     r4, 0x8004
    stw     r3, 0x28(r27)
    lis     r3, 0x8004
    addi    r30, r4, 0x4c88
    addi    r31, r3, 0x4c3c
    li      r28, 0x0
    li      r26, 0x0
    b       branch_0x8023b7a8

branch_0x8023b6f4:
    lwz     r3, 0x1c(r27)
    lwz     r0, 0x0(r3)
    cmpw    r28, r0
    bge-    branch_0x8023b710
    lwz     r3, 0xc(r3)
    lwzx    r3, r3, r26
    b       branch_0x8023b714

branch_0x8023b710:
    li      r3, 0x0
branch_0x8023b714:
    lhz     r25, 0x1a(r3)
    mulli   r3, r25, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    addi    r7, r25, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    lwz     r4, 0x28(r27)
    cmpwi   r25, 0x0
    mtctr   r25
    li      r6, 0x0
    stwx    r3, r4, r26
    li      r3, 0x0
    ble-    branch_0x8023b7a0
branch_0x8023b754:
    lwz     r4, 0x28(r27)
    addi    r0, r3, 0x4
    lwzx    r4, r26, r4
    sthx    r6, r4, r0
    lwz     r4, 0x1c(r27)
    lwz     r0, 0x0(r4)
    cmpw    r28, r0
    bge-    branch_0x8023b780
    lwz     r0, 0xc(r4)
    lwzx    r5, r26, r0
    b       branch_0x8023b784

branch_0x8023b780:
    li      r5, 0x0
branch_0x8023b784:
    lwz     r4, 0x28(r27)
    addi    r0, r3, 0x8
    addi    r6, r6, 0x1
    lwzx    r4, r26, r4
    addi    r3, r3, 0xc
    stwx    r5, r4, r0
    bdnz+      branch_0x8023b754
branch_0x8023b7a0:
    addi    r28, r28, 0x1
    addi    r26, r26, 0x4
branch_0x8023b7a8:
    cmpw    r28, r29
    blt+    branch_0x8023b6f4
    lmw     r25, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl setAnmFromIndex__12MActorAnmBckFiPUs
setAnmFromIndex__12MActorAnmBckFiPUs: # 0x8023b7c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    lbz     r0, 0x2a(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8023b828
    lwz     r4, 0x0(r31)
    cmpwi   r4, -0x1
    beq-    branch_0x8023b828
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x8023b818
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r4, r3, r0
    b       branch_0x8023b81c

branch_0x8023b818:
    li      r4, 0x0
branch_0x8023b81c:
    lfs     f1, 0x14(r31)
    lwz     r3, 0x34(r31)
    bl      keepCurAnm__16TMotionBlendCtrlFP15J3DAnmTransformf
branch_0x8023b828:
    cmpwi   r30, 0x0
    stw     r30, 0x0(r31)
    blt-    branch_0x8023b880
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x0(r3)
    cmpw    r30, r0
    bge-    branch_0x8023b854
    lwz     r3, 0xc(r3)
    slwi    r0, r30, 2
    lwzx    r0, r3, r0
    b       branch_0x8023b858

branch_0x8023b854:
    li      r0, 0x0
branch_0x8023b858:
    stw     r0, 0x24(r31)
    addi    r3, r31, 0x4
    lwz     r4, 0x24(r31)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r31)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r31)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r31)
branch_0x8023b880:
    lbz     r0, 0x2a(r31)
    cmplwi  r0, 0x2
    bne-    branch_0x8023b8bc
    lwz     r3, 0x1c(r31)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x8023b8b0
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r4, r3, r0
    b       branch_0x8023b8b4

branch_0x8023b8b0:
    li      r4, 0x0
branch_0x8023b8b4:
    lwz     r3, 0x34(r31)
    bl      setNewAnm__16TMotionBlendCtrlFP15J3DAnmTransform
branch_0x8023b8bc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl updateOut__12MActorAnmBckFv
updateOut__12MActorAnmBckFv: # 0x8023b8d4
    lwz     r4, 0x18(r3)
    li      r5, 0x0
    lhz     r0, 0x28(r3)
    lwz     r3, 0x4(r4)
    slwi    r0, r0, 2
    lwz     r3, 0x20(r3)
    lwzx    r3, r3, r0
    stw     r5, 0x58(r3)
    blr


.globl updateIn__12MActorAnmBckFv
updateIn__12MActorAnmBckFv: # 0x8023b8f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x18(r3)
    lhz     r0, 0x28(r3)
    lwz     r4, 0x4(r4)
    slwi    r0, r0, 2
    lfs     f0, 0x14(r3)
    lwz     r5, 0x20(r4)
    lwz     r4, 0x24(r3)
    lwzx    r5, r5, r0
    stfs    f0, 0x4(r4)
    lbz     r0, 0x2a(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8023b99c
    bge-    branch_0x8023b948
    cmpwi   r0, 0x0
    beq-    branch_0x8023b954
    bge-    branch_0x8023b978
    b       branch_0x8023b9c8

branch_0x8023b948:
    cmpwi   r0, 0x4
    bge-    branch_0x8023b9c8
    b       branch_0x8023b9c0

branch_0x8023b954:
    lwz     r0, 0x24(r3)
    lwz     r4, 0x2c(r3)
    stw     r0, 0x58(r4)
    lwz     r3, 0x2c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023b970
    lwz     r3, 0x0(r3)
branch_0x8023b970:
    stw     r3, 0x58(r5)
    b       branch_0x8023b9c8

branch_0x8023b978:
    lwz     r0, 0x24(r3)
    lwz     r4, 0x30(r3)
    stw     r0, 0x58(r4)
    lwz     r3, 0x30(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023b994
    lwz     r3, 0x0(r3)
branch_0x8023b994:
    stw     r3, 0x58(r5)
    b       branch_0x8023b9c8

branch_0x8023b99c:
    lwz     r4, 0x34(r3)
    lwz     r4, 0x8(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x8023b9b0
    lwz     r4, 0x0(r4)
branch_0x8023b9b0:
    stw     r4, 0x58(r5)
    lwz     r3, 0x34(r3)
    bl      execSimpleMotionBlend__16TMotionBlendCtrlFv
    b       branch_0x8023b9c8

branch_0x8023b9c0:
    lwz     r0, 0x38(r3)
    stw     r0, 0x58(r5)
branch_0x8023b9c8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setModel__12MActorAnmBckFP8J3DModel
setModel__12MActorAnmBckFP8J3DModel: # 0x8023b9d8
    mflr    r0
    li      r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    stw     r4, 0x18(r3)
    lwz     r3, 0x4(r4)
    lwz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8023ba0c
    li      r5, 0x1
branch_0x8023ba0c:
    clrlwi  r0, r5, 24
    stb     r5, 0x2a(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x8023ba2c
    bge-    branch_0x8023ba90
    cmpwi   r0, 0x0
    bge-    branch_0x8023ba60
    b       branch_0x8023ba90

branch_0x8023ba2c:
    lwz     r0, 0x30(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8023ba90
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8023ba58
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      __ct__22J3DMtxCalcSoftimageAnmFP15J3DAnmTransform
branch_0x8023ba58:
    stw     r30, 0x30(r31)
    b       branch_0x8023ba90

branch_0x8023ba60:
    lwz     r0, 0x2c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8023ba90
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8023ba8c
    addi    r3, r30, 0x0
    li      r4, 0x1
    li      r5, 0x0
    bl      __ct__18J3DMtxCalcBasicAnmFP15J3DAnmTransform
branch_0x8023ba8c:
    stw     r30, 0x2c(r31)
branch_0x8023ba90:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __ct__18J3DMtxCalcBasicAnmFP15J3DAnmTransform
__ct__18J3DMtxCalcBasicAnmFP15J3DAnmTransform: # 0x8023baa8
    mflr    r0
    stw     r0, 0x4(sp)
    extsh.  r0, r4
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x8023bae4
    addi    r4, r30, 0x68
    stw     r4, 0x0(r30)
    lis     r3, 0x803b
    subi    r0, r3, 0xf38
    stw     r4, 0x50(r30)
    stw     r0, 0x68(r30)
branch_0x8023bae4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __ct__15J3DMtxCalcBasicFv
    lis     r3, 0x803e
    addi    r5, r3, 0x938
    stw     r5, 0x54(r30)
    lis     r3, 0x803e
    subi    r4, r3, 0x4ed0
    lwz     r3, 0x50(r30)
    addi    r0, r5, 0x10
    addi    r8, r30, 0x68
    stw     r0, 0x0(r3)
    li      r6, 0x0
    addi    r5, r4, 0x34
    lwz     r9, 0x50(r30)
    addi    r0, r4, 0x24
    addi    r3, r30, 0x0
    subf    r7, r9, r8
    stw     r7, 0x4(r9)
    stw     r6, 0x58(r30)
    lfs     f0, -0x1540(rtoc)
    stfs    f0, 0x60(r30)
    stw     r6, 0x5c(r30)
    stfs    f0, 0x64(r30)
    stw     r31, 0x58(r30)
    stw     r4, 0x4c(r30)
    lwz     r4, 0x0(r30)
    stw     r5, 0x0(r4)
    stw     r0, 0x54(r30)
    lwz     r4, 0x0(r30)
    subf    r0, r4, r8
    stw     r0, 0x4(r4)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl getOldMotionBlendFrame__12MActorAnmBckCFv
getOldMotionBlendFrame__12MActorAnmBckCFv: # 0x8023bb7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023bb9c
    bl      getOldMotionBlendFrame__16TMotionBlendCtrlCFv
    b       branch_0x8023bba0

branch_0x8023bb9c:
    lfs     f1, -0x153c(rtoc)
branch_0x8023bba0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform
setOldMotionBlendAnmPtr__12MActorAnmBckFP15J3DAnmTransform: # 0x8023bbb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023bbcc
    bl      setOldMotionBlendAnmPtr__16TMotionBlendCtrlFP15J3DAnmTransform
branch_0x8023bbcc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getOldMotionBlendAnmPtr__12MActorAnmBckCFv
getOldMotionBlendAnmPtr__12MActorAnmBckCFv: # 0x8023bbdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8023bbfc
    li      r3, 0x0
    b       branch_0x8023bc00

branch_0x8023bbfc:
    bl      getOldMotionBlendAnmPtr__16TMotionBlendCtrlCFv
branch_0x8023bc00:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMotionBlendRatio__12MActorAnmBckFf
setMotionBlendRatio__12MActorAnmBckFf: # 0x8023bc10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8023bc2c
    bl      setMotionBlendRatio__16TMotionBlendCtrlFf
branch_0x8023bc2c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getMotionBlendRatio__12MActorAnmBckCFv
getMotionBlendRatio__12MActorAnmBckCFv: # 0x8023bc3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8023bc5c
    lfs     f1, -0x153c(rtoc)
    b       branch_0x8023bc60

branch_0x8023bc5c:
    bl      getMotionBlendRatio__16TMotionBlendCtrlCFv
branch_0x8023bc60:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initNormalMotionBlend__12MActorAnmBckFv
initNormalMotionBlend__12MActorAnmBckFv: # 0x8023bc70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    stw     r29, 0x14(sp)
    lwz     r0, 0x34(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8023bccc
    lbz     r0, 0x2a(r30)
    li      r31, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8023bcac
    li      r31, 0x1
branch_0x8023bcac:
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8023bcc8
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    bl      __ct__16TMotionBlendCtrlFb
branch_0x8023bcc8:
    stw     r29, 0x34(r30)
branch_0x8023bccc:
    li      r0, 0x2
    stb     r0, 0x2a(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl initSimpleMotionBlend__12MActorAnmBckFi
initSimpleMotionBlend__12MActorAnmBckFi: # 0x8023bcf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    stw     r28, 0x10(sp)
    lwz     r0, 0x34(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8023bd58
    lbz     r0, 0x2a(r29)
    li      r31, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x8023bd34
    li      r31, 0x1
branch_0x8023bd34:
    li      r3, 0xc
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8023bd54
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      __ct__16TMotionBlendCtrlFbi
branch_0x8023bd54:
    stw     r28, 0x34(r29)
branch_0x8023bd58:
    li      r0, 0x2
    stb     r0, 0x2a(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl checkUseMaterialID__13MActorAnmBaseFPUs
checkUseMaterialID__13MActorAnmBaseFPUs: # 0x8023bd80
    blr


.globl checkUseMaterialIDInit__13MActorAnmBaseFPUs
checkUseMaterialIDInit__13MActorAnmBaseFPUs: # 0x8023bd84
    blr


.globl verifySuffix__12MActorAnmBrkFPCc
verifySuffix__12MActorAnmBrkFPCc: # 0x8023bd88
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x1530
    stwu    sp, -0x8(sp)
    bl      strstr
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl verifySuffix__12MActorAnmBpkFPCc
verifySuffix__12MActorAnmBpkFPCc: # 0x8023bdb0
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x1528
    stwu    sp, -0x8(sp)
    bl      strstr
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl verifySuffix__12MActorAnmBtkFPCc
verifySuffix__12MActorAnmBtkFPCc: # 0x8023bdd8
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x1520
    stwu    sp, -0x8(sp)
    bl      strstr
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl verifySuffix__12MActorAnmBtpFPCc
verifySuffix__12MActorAnmBtpFPCc: # 0x8023be00
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x1518
    stwu    sp, -0x8(sp)
    bl      strstr
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl verifySuffix__12MActorAnmBckFPCc
verifySuffix__12MActorAnmBckFPCc: # 0x8023be28
    mflr    r0
    addi    r3, r4, 0x0
    stw     r0, 0x4(sp)
    subi    r4, rtoc, 0x1510
    stwu    sp, -0x8(sp)
    bl      strstr
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr

