
.globl __ct__13TPollutionObjFv
__ct__13TPollutionObjFv: # 0x8019e4ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TJointObjFv
    lis     r3, 0x803c
    addi    r0, r3, 0x1f48
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    stw     r0, 0x24(r31)
    stw     r0, 0x28(r31)
    stw     r0, 0x2c(r31)
    stw     r0, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initAreaInfo__13TPollutionObjFP15TPollutionLayer
initAreaInfo__13TPollutionObjFP15TPollutionLayer: # 0x8019e544
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x64(sp)
    stw     r28, 0x60(sp)
    stw     r31, 0x34(r3)
    lwz     r3, 0x34(r3)
    lwz     r4, 0xc(r30)
    lwz     r12, 0x0(r3)
    lfs     f1, 0x40(r4)
    addi    r29, r4, 0x40
    lwz     r12, 0x38(r12)
    addi    r28, r4, 0x4c
    mtlr    r12
    blrl
    stw     r3, 0x20(r30)
    lwz     r3, 0x34(r30)
    lfs     f1, 0x0(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    stw     r3, 0x24(r30)
    lwz     r3, 0x34(r30)
    lfs     f1, 0x8(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    stw     r3, 0x28(r30)
    lwz     r3, 0x34(r30)
    lfs     f1, 0x8(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x3c(r12)
    mtlr    r12
    blrl
    stw     r3, 0x2c(r30)
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x0
    bge-    branch_0x8019e5fc
    li      r0, 0x0
    stw     r0, 0x24(r30)
branch_0x8019e5fc:
    lwz     r0, 0x28(r30)
    cmpwi   r0, 0x0
    bge-    branch_0x8019e610
    li      r0, 0x0
    stw     r0, 0x2c(r30)
branch_0x8019e610:
    lwz     r3, 0x34(r30)
    lwz     r0, 0x24(r30)
    lwz     r3, 0x5c(r3)
    cmpw    r0, r3
    ble-    branch_0x8019e628
    stw     r3, 0x24(r30)
branch_0x8019e628:
    lwz     r3, 0x34(r30)
    lwz     r0, 0x2c(r30)
    lwz     r3, 0x60(r3)
    cmpw    r0, r3
    ble-    branch_0x8019e640
    stw     r3, 0x2c(r30)
branch_0x8019e640:
    li      r28, 0x0
    li      r29, 0x0
    b       branch_0x8019e664

branch_0x8019e64c:
    lwz     r3, 0x14(r30)
    mr      r4, r31
    lwzx    r3, r3, r29
    bl      initAreaInfo__13TPollutionObjFP15TPollutionLayer
    addi    r28, r28, 0x1
    addi    r29, r29, 0x4
branch_0x8019e664:
    lwz     r0, 0x10(r30)
    cmpw    r28, r0
    blt+    branch_0x8019e64c
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl getTexPosT__15TPollutionLayerCFf
getTexPosT__15TPollutionLayerCFf: # 0x8019e690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x40(r3)
    addi    r3, r3, 0x5c
    fsubs   f1, f1, f0
    bl      worldToTexSize__13TPollutionPosCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isCleaned__13TPollutionObjCFv
isCleaned__13TPollutionObjCFv: # 0x8019e6bc
    lwz     r3, 0x30(r3)
    lwz     r0, -0x7b00(r13)
    cmplw   r3, r0
    bge-    branch_0x8019e6d4
    li      r3, 0x1
    blr

branch_0x8019e6d4:
    li      r3, 0x0
    blr


.globl updateDepthMap__13TPollutionObjFv
updateDepthMap__13TPollutionObjFv: # 0x8019e6dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r31, r3
    lwz     r28, 0x28(r3)
    b       branch_0x8019e760

branch_0x8019e6f8:
    lwz     r27, 0x20(r31)
    srawi   r30, r28, 2
    clrlslwi  r29, r28, 30, 3
    b       branch_0x8019e750

branch_0x8019e708:
    addi    r3, r31, 0x0
    addi    r4, r27, 0x0
    addi    r5, r28, 0x0
    bl      getDepthFromMap__13TPollutionObjFii
    lwz     r4, 0x34(r31)
    srawi   r5, r27, 3
    clrlwi  r6, r27, 29
    addi    r7, r4, 0x5c
    lwz     r4, 0x64(r4)
    lwz     r7, 0x1c(r7)
    addi    r27, r27, 0x1
    subi    r0, r4, 0x3
    slw     r0, r30, r0
    add     r0, r5, r0
    slwi    r0, r0, 5
    add     r0, r0, r6
    add     r0, r0, r7
    stbx    r3, r29, r0
branch_0x8019e750:
    lwz     r0, 0x24(r31)
    cmpw    r27, r0
    blt+    branch_0x8019e708
    addi    r28, r28, 0x1
branch_0x8019e760:
    lwz     r0, 0x2c(r31)
    cmpw    r28, r0
    blt+    branch_0x8019e6f8
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getDepthFromMap__13TPollutionObjFii
getDepthFromMap__13TPollutionObjFii: # 0x8019e780
    mflr    r0
    xoris   r4, r4, 0x8000
    stw     r0, 0x4(sp)
    xoris   r0, r5, 0x8000
    lis     r5, 0x4330
    stwu    sp, -0xb0(sp)
    stfd    f31, 0xa8(sp)
    stfd    f30, 0xa0(sp)
    stfd    f29, 0x98(sp)
    stfd    f28, 0x90(sp)
    stfd    f27, 0x88(sp)
    stfd    f26, 0x80(sp)
    stfd    f25, 0x78(sp)
    stw     r4, 0x64(sp)
    addi    r4, sp, 0x54
    stfd    f24, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    lwz     r3, 0x34(r3)
    stw     r0, 0x5c(sp)
    lfd     f3, -0x4170(rtoc)
    stw     r5, 0x60(sp)
    lfs     f31, 0x70(r3)
    stw     r5, 0x58(sp)
    lfd     f1, 0x60(sp)
    lfd     f0, 0x58(sp)
    fsubs   f2, f1, f3
    lfs     f4, 0x38(r3)
    fsubs   f0, f0, f3
    lfs     f1, 0x40(r3)
    lfs     f5, -0x4180(rtoc)
    fmuls   f3, f2, f31
    lwz     r3, -0x6328(r13)
    fmuls   f0, f0, f31
    lfs     f2, -0x417c(rtoc)
    fadds   f30, f4, f3
    fadds   f29, f1, f0
    fsubs   f28, f30, f5
    fadds   f4, f30, f31
    fsubs   f27, f29, f5
    fadds   f0, f29, f31
    fmr     f1, f28
    fmr     f3, f27
    fadds   f25, f5, f4
    fadds   f24, f5, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f26, f1
    lwz     r3, -0x6328(r13)
    fmr     f1, f25
    lfs     f2, -0x417c(rtoc)
    fmr     f3, f27
    addi    r4, sp, 0x54
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f27, f1
    lwz     r3, -0x6328(r13)
    fmr     f1, f28
    lfs     f2, -0x417c(rtoc)
    fmr     f3, f24
    addi    r4, sp, 0x54
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    fmr     f28, f1
    lwz     r3, -0x6328(r13)
    fmr     f1, f25
    lfs     f2, -0x417c(rtoc)
    fmr     f3, f24
    addi    r4, sp, 0x54
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, -0x4178(rtoc)
    fsubs   f0, f26, f2
    fcmpo   cr0, f0, f28
    cror    2, 0, 2
    bne-    branch_0x8019e8b8
    fadds   f0, f2, f26
    fcmpo   cr0, f28, f0
    cror    2, 0, 2
    bne-    branch_0x8019e8b8
    li      r0, 0x1
    b       branch_0x8019e8bc

branch_0x8019e8b8:
    li      r0, 0x0
branch_0x8019e8bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019e93c
    lfs     f2, -0x4178(rtoc)
    fsubs   f0, f28, f2
    fcmpo   cr0, f0, f27
    cror    2, 0, 2
    bne-    branch_0x8019e8f0
    fadds   f0, f2, f28
    fcmpo   cr0, f27, f0
    cror    2, 0, 2
    bne-    branch_0x8019e8f0
    li      r0, 0x1
    b       branch_0x8019e8f4

branch_0x8019e8f0:
    li      r0, 0x0
branch_0x8019e8f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019e93c
    lfs     f2, -0x4178(rtoc)
    fsubs   f0, f27, f2
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x8019e928
    fadds   f0, f2, f27
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8019e928
    li      r0, 0x1
    b       branch_0x8019e92c

branch_0x8019e928:
    li      r0, 0x0
branch_0x8019e92c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019e93c
    li      r0, 0x1
    b       branch_0x8019e940

branch_0x8019e93c:
    li      r0, 0x0
branch_0x8019e940:
    clrlwi. r0, r0, 24
    beq-    branch_0x8019e97c
    lfs     f0, -0x4174(rtoc)
    addi    r4, sp, 0x54
    lwz     r3, -0x6328(r13)
    fmuls   f0, f0, f31
    lfs     f2, -0x417c(rtoc)
    fadds   f1, f30, f0
    fadds   f3, f29, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x34(r31)
    addi    r3, r3, 0x5c
    bl      worldToDepth__13TPollutionPosCFf
    clrlwi  r3, r3, 24
    b       branch_0x8019e980

branch_0x8019e97c:
    li      r3, 0xff
branch_0x8019e980:
    lwz     r0, 0xb4(sp)
    lfd     f31, 0xa8(sp)
    lfd     f30, 0xa0(sp)
    mtlr    r0
    lfd     f29, 0x98(sp)
    lfd     f28, 0x90(sp)
    lfd     f27, 0x88(sp)
    lfd     f26, 0x80(sp)
    lfd     f25, 0x78(sp)
    lfd     f24, 0x70(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0xb0
    blr


.globl newJointObj__13TPollutionObjCFv
newJointObj__13TPollutionObjCFv: # 0x8019e9b4
    mflr    r0
    li      r3, 0x38
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8019ea04
    mr      r3, r31
    bl      __ct__9TJointObjFv
    lis     r3, 0x803c
    addi    r0, r3, 0x1f48
    stw     r0, 0x0(r31)
    li      r0, 0x0
    stw     r0, 0x20(r31)
    stw     r0, 0x24(r31)
    stw     r0, 0x28(r31)
    stw     r0, 0x2c(r31)
    stw     r0, 0x30(r31)
    stw     r0, 0x34(r31)
branch_0x8019ea04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __sinit_PollutionObj_cpp
__sinit_PollutionObj_cpp: # 0x8019ea1c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7958
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ea64
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8019ea64:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ea94
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8019ea94:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8019eac4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8019eac4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8019eaf4
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8019eaf4:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8019eb24
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8019eb24:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8019eb54
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8019eb54:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8019eb84
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8019eb84:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ebb4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8019ebb4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ebe4
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8019ebe4:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ec14
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8019ec14:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ec44
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8019ec44:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ec74
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8019ec74:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8019eca4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8019eca4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ecd4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8019ecd4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8019ed04
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8019ed04:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

