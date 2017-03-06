
.globl getJ3DModelDataFlag__9TMapModelCFv
getJ3DModelDataFlag__9TMapModelCFv: # 0x80194458
    lis     r3, 0x1002
    blr


.globl __ct__16TMapModelManagerFPCc
__ct__16TMapModelManagerFPCc: # 0x80194460
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TJointModelManagerFPCc
    lis     r3, 0x803c
    addi    r0, r3, 0x1b08
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x6c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__16TMapModelManagerFv
init__16TMapModelManagerFv: # 0x801944a4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    li      r0, 0x1
    subi    r4, r4, 0x6d78
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x10(sp)
    stw     r0, 0x10(r3)
    lis     r3, 0x803c
    addi    r5, r3, 0x1ac0
    addi    r3, r31, 0x0
    bl      initJointModel__18TJointModelManagerFPCcPPCc
    li      r3, 0x64
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801944f4
    mr      r3, r30
    bl      __ct__19TMapCollisionStaticFv
branch_0x801944f4:
    stw     r30, 0x6c(r31)
    lis     r3, 0x8039
    subi    r4, r3, 0x6d68
    lwz     r3, 0x6c(r31)
    li      r5, 0x2
    li      r6, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initJointModel__9TMapModelFP18TJointModelManagerPCcP13MActorAnmData
initJointModel__9TMapModelFP18TJointModelManagerPCcP13MActorAnmData: # 0x80194534
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      initJointModel__11TJointModelFP18TJointModelManagerPCcP13MActorAnmData
    lwz     r3, 0x2c(r30)
    addi    r4, r31, 0x0
    li      r5, 0x4
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x80194578
    lwz     r3, 0x2c(r30)
    mr      r4, r31
    bl      setBtk__6MActorFPCc
branch_0x80194578:
    lwz     r3, 0x2c(r30)
    addi    r4, r31, 0x0
    li      r5, 0x5
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x8019459c
    lwz     r3, 0x2c(r30)
    mr      r4, r31
    bl      setBrk__6MActorFPCc
branch_0x8019459c:
    lwz     r3, 0x2c(r30)
    bl      calc__6MActorFv
    mr      r3, r30
    bl      initUnderpass__9TMapModelFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl initUnderpass__9TMapModelFv
initUnderpass__9TMapModelFv: # 0x801945c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    lwz     r5, 0x24(r3)
    lis     r3, 0x8039
    subi    r4, r3, 0x6d54
    lwz     r3, 0xb0(r5)
    bl      getIndex__10JUTNameTabCFPCc
    cmpwi   r3, 0x0
    blt-    branch_0x80194750
    lwz     r4, 0x24(r31)
    clrlslwi  r0, r3, 16, 2
    lwz     r5, 0x10(r31)
    li      r7, 0x0
    lwz     r3, 0x20(r4)
    lwzx    r6, r3, r0
    li      r3, 0x0
    b       branch_0x80194620

branch_0x80194618:
    addi    r7, r7, 0x1
    addi    r3, r3, 0x4
branch_0x80194620:
    cmpw    r7, r5
    bge-    branch_0x8019463c
    lwz     r4, 0x14(r31)
    lwzx    r4, r4, r3
    lwz     r0, 0xc(r4)
    cmplw   r0, r6
    bne+    branch_0x80194618
branch_0x8019463c:
    lwz     r3, 0x14(r31)
    slwi    r0, r7, 2
    lwzx    r0, r3, r0
    stw     r0, 0x30(r31)
    lwz     r0, 0x60(r6)
    stw     r0, 0x34(r31)
    lwz     r3, 0x34(r31)
    bl      change__11J3DMaterialFv
    lwz     r3, 0x34(r31)
    li      r4, 0x0
    lwz     r0, 0x1c(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x1c(r3)
    lwz     r3, 0x34(r31)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stb     r0, 0x0(r3)
    li      r4, 0x0
    li      r0, 0x1e
    stb     r4, 0x1(r3)
    stb     r0, 0x2(r3)
    li      r3, 0xc4
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801946c0
    lis     r3, 0x803e
    addi    r4, r3, 0x15f8
    addi    r3, r30, 0x0
    bl      __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
branch_0x801946c0:
    li      r0, 0x2
    stb     r0, 0x1(r30)
    mr      r5, r30
    li      r4, 0x0
    lwz     r3, 0x34(r31)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x34(r31)
    lwz     r3, 0x30(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x40(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x0(r3)
    lis     r4, 0x8040
    addi    r5, r4, 0x7450
    mulli   r0, r0, 0x3
    add     r4, r5, r0
    lbz     r0, 0x0(r4)
    lbz     r4, 0x2(r4)
    slwi    r0, r0, 4
    add     r4, r0, r4
    addi    r0, r4, 0xe
    sth     r0, 0x0(r3)
    lhz     r0, 0x0(r3)
    mulli   r0, r0, 0x3
    add     r5, r5, r0
    lbz     r4, 0x1(r5)
    lbz     r0, 0x0(r5)
    slwi    r4, r4, 1
    slwi    r0, r0, 4
    add     r0, r4, r0
    sth     r0, 0x0(r3)
branch_0x80194750:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl getZMode__10J3DPEBlockFv
getZMode__10J3DPEBlockFv: # 0x80194768
    li      r3, 0x0
    blr


.globl __as__13J3DTexMtxInfoFRC13J3DTexMtxInfo
__as__13J3DTexMtxInfoFRC13J3DTexMtxInfo: # 0x80194770
    lfs     f0, 0x24(r4)
    stfs    f0, 0x24(r3)
    lfs     f0, 0x28(r4)
    stfs    f0, 0x28(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x2c(r3)
    lfs     f0, 0x30(r4)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r4)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r4)
    stfs    f0, 0x38(r3)
    lfs     f0, 0x3c(r4)
    stfs    f0, 0x3c(r3)
    lfs     f0, 0x40(r4)
    stfs    f0, 0x40(r3)
    lfs     f0, 0x44(r4)
    stfs    f0, 0x44(r3)
    lfs     f0, 0x48(r4)
    stfs    f0, 0x48(r3)
    lfs     f0, 0x4c(r4)
    stfs    f0, 0x4c(r3)
    lfs     f0, 0x50(r4)
    stfs    f0, 0x50(r3)
    lfs     f0, 0x54(r4)
    stfs    f0, 0x54(r3)
    lfs     f0, 0x58(r4)
    stfs    f0, 0x58(r3)
    lfs     f0, 0x5c(r4)
    stfs    f0, 0x5c(r3)
    lfs     f0, 0x60(r4)
    stfs    f0, 0x60(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x8(r3)
    lfs     f0, 0xc(r4)
    stfs    f0, 0xc(r3)
    lbz     r0, 0x0(r4)
    stb     r0, 0x0(r3)
    lbz     r0, 0x1(r4)
    stb     r0, 0x1(r3)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x14(r4)
    stfs    f0, 0x14(r3)
    lha     r0, 0x18(r4)
    sth     r0, 0x18(r3)
    lfs     f0, 0x1c(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r4)
    stfs    f0, 0x20(r3)
    blr


.globl perform__9TMapModelFUlPQ26JDrama9TGraphics
perform__9TMapModelFUlPQ26JDrama9TGraphics: # 0x80194844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stmw    r27, 0xc4(sp)
    mr      r29, r3
    addi    r30, r4, 0x0
    addi    r31, r5, 0x0
    lwz     r0, 0x8(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80194874
    li      r0, 0x1
    b       branch_0x80194878

branch_0x80194874:
    li      r0, 0x0
branch_0x80194878:
    clrlwi. r0, r0, 24
    bne-    branch_0x801949d0
    rlwinm. r27, r30, 0, 30, 30
    beq-    branch_0x801949ac
    lwz     r0, 0x30(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801949ac
    lwz     r3, -0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801948ac
    li      r0, 0x1
    b       branch_0x801948b0

branch_0x801948ac:
    li      r0, 0x0
branch_0x801948b0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80194998
    lwz     r28, -0x60b4(r13)
    bl      SMS_GetMarioGrLevel__Fv
    lfs     f2, -0x4324(rtoc)
    lfs     f0, 0x4(r28)
    fadds   f1, f2, f1
    fcmpo   cr0, f0, f1
    bge-    branch_0x80194998
    lwz     r3, 0x30(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x7118(r13)
    addi    r4, sp, 0x18
    lwz     r12, 0x0(r3)
    lwz     r12, 0xdc(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x7118(r13)
    addi    r4, sp, 0x24
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lfs     f3, 0x38(r29)
    addi    r3, sp, 0x60
    lfs     f1, -0x4320(rtoc)
    lfs     f0, -0x431c(rtoc)
    lfs     f5, -0x432c(rtoc)
    fmuls   f2, f1, f3
    fmuls   f1, f0, f3
    fmr     f6, f5
    fmr     f3, f2
    fmr     f4, f1
    fmr     f7, f5
    fmr     f8, f5
    bl      C_MTXLightOrtho
    lwz     r6, -0x60b4(r13)
    addi    r3, sp, 0x90
    addi    r4, sp, 0x18
    addi    r5, sp, 0x24
    bl      C_MTXLookAt
    addi    r3, sp, 0x60
    addi    r4, sp, 0x90
    addi    r5, sp, 0x30
    bl      PSMTXConcat
    lwz     r3, 0x34(r29)
    li      r4, 0x0
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0x30
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
    b       branch_0x801949ac

branch_0x80194998:
    lwz     r3, 0x30(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
branch_0x801949ac:
    cmplwi  r27, 0x0
    beq-    branch_0x801949c0
    lwz     r3, 0x2c(r29)
    rlwinm  r30, r30, 0, 31, 29
    bl      frameUpdate__6MActorFv
branch_0x801949c0:
    lwz     r3, 0x2c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801949d0:
    lmw     r27, 0xc4(sp)
    lwz     r0, 0xdc(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl __dt__16TMapModelManagerFv
__dt__16TMapModelManagerFv: # 0x801949e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80194a64
    lis     r3, 0x803c
    addi    r0, r3, 0x1b08
    stw     r0, 0x0(r30)
    beq-    branch_0x80194a54
    lis     r3, 0x803c
    addi    r3, r3, 0x1608
    addic.  r0, r30, 0x20
    stw     r3, 0x0(r30)
    beq-    branch_0x80194a34
    addi    r3, r30, 0x3c
    li      r4, -0x1
    bl      __dt__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__Fv
branch_0x80194a34:
    cmplwi  r30, 0x0
    beq-    branch_0x80194a54
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80194a54:
    extsh.  r0, r31
    ble-    branch_0x80194a64
    mr      r3, r30
    bl      __dl__FPv
branch_0x80194a64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__Fv
__dt__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__Fv: # 0x80194a80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    mr.     r29, r3
    beq-    branch_0x80194b1c
    addi    r0, r29, 0x8
    stw     r0, 0x50(sp)
    addi    r31, sp, 0x34
    lwz     r0, 0x50(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r29)
    stw     r0, 0x48(sp)
    lwz     r0, 0x48(sp)
    stw     r0, 0x44(sp)
    b       branch_0x80194aec

branch_0x80194acc:
    lwz     r0, 0x44(sp)
    addi    r4, r29, 0x0
    addi    r5, r31, 0x0
    stw     r0, 0x34(sp)
    addi    r3, sp, 0x30
    bl      erase__Q27JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__FQ37JGadget68TList_16MActorSubAnmInfo_Q27JGadget30TAllocator_16MActorSubAnmInfo__8iterator
    lwz     r0, 0x30(sp)
    stw     r0, 0x44(sp)
branch_0x80194aec:
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x2c(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    lwz     r3, 0x28(sp)
    cmplw   r3, r0
    bne+    branch_0x80194acc
    extsh.  r0, r30
    ble-    branch_0x80194b1c
    mr      r3, r29
    bl      __dl__FPv
branch_0x80194b1c:
    lwz     r0, 0x6c(sp)
    mr      r3, r29
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl newJointModel__16TMapModelManagerCFi
newJointModel__16TMapModelManagerCFi: # 0x80194b3c
    mflr    r0
    li      r3, 0x40
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80194b8c
    mr      r3, r31
    bl      __ct__11TJointModelFv
    lis     r3, 0x803c
    addi    r0, r3, 0x1ad4
    stw     r0, 0x0(r31)
    li      r0, 0x0
    stw     r0, 0x30(r31)
    stw     r0, 0x34(r31)
    lfs     f0, -0x432c(rtoc)
    stfs    f0, 0x38(r31)
    lfs     f0, -0x4328(rtoc)
    stfs    f0, 0x3c(r31)
branch_0x80194b8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_MapModel_cpp
__sinit_MapModel_cpp: # 0x80194ba4
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7fd0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80194bec
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x80194bec:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80194c1c
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x80194c1c:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80194c4c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x80194c4c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80194c7c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x80194c7c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80194cac
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x80194cac:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80194cdc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x80194cdc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80194d0c
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x80194d0c:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80194d3c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x80194d3c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80194d6c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x80194d6c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80194d9c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x80194d9c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80194dcc
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x80194dcc:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80194dfc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x80194dfc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80194e2c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80194e2c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80194e5c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80194e5c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80194e8c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80194e8c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

