
.globl __ct__12TPoolManagerFPCc
__ct__12TPoolManagerFPCc: # 0x801f8020
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TMapObjBaseManagerFPCc
    lis     r3, 0x803d
    addi    r0, r3, 0x6614
    stw     r0, 0x0(r31)
    mr      r3, r31
    stw     r31, gpPoolManager(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl subWaterLevel__12TPoolManagerFPC12TBGCheckData
subWaterLevel__12TPoolManagerFPC12TBGCheckData: # 0x801f8060
    mflr    r0
    cmplwi  r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    beq-    branch_0x801f8080
    lwz     r4, 0x44(r4)
    cmplwi  r4, 0x0
    bne-    branch_0x801f8088
branch_0x801f8080:
    li      r3, 0x1
    b       branch_0x801f80f8

branch_0x801f8088:
    lha     r4, 0x7c(r4)
    cmpwi   r4, 0xff
    bne-    branch_0x801f809c
    li      r0, 0x1
    b       branch_0x801f80a0

branch_0x801f809c:
    li      r0, 0x0
branch_0x801f80a0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f80b0
    li      r3, 0x1
    b       branch_0x801f80f8

branch_0x801f80b0:
    lwz     r3, 0x18(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    lfs     f1, 0x13c(r3)
    lfs     f0, 0x144(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x13c(r3)
    lfs     f1, 0x13c(r3)
    lfs     f0, -0x1fcc(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801f80f4
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    li      r3, 0x0
    b       branch_0x801f80f8

branch_0x801f80f4:
    li      r3, 0x1
branch_0x801f80f8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getWaterLevel__12TPoolManagerCFPC12TBGCheckData
getWaterLevel__12TPoolManagerCFPC12TBGCheckData: # 0x801f8108
    cmplwi  r4, 0x0
    beq-    branch_0x801f811c
    lwz     r5, 0x44(r4)
    cmplwi  r5, 0x0
    bne-    branch_0x801f812c
branch_0x801f811c:
    lfs     f1, -0x1fc8(rtoc)
    lfs     f0, 0x8(r4)
    fadds   f1, f1, f0
    blr

branch_0x801f812c:
    lha     r4, 0x7c(r5)
    cmpwi   r4, 0xff
    bne-    branch_0x801f8140
    li      r0, 0x1
    b       branch_0x801f8144

branch_0x801f8140:
    li      r0, 0x0
branch_0x801f8144:
    clrlwi. r0, r0, 24
    beq-    branch_0x801f8154
    lfs     f1, -0x1fc4(rtoc)
    blr

branch_0x801f8154:
    lwz     r3, 0x18(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    lfs     f1, 0x14(r3)
    lfs     f0, 0x13c(r3)
    fadds   f1, f1, f0
    blr


.globl __ct__5TPoolFPCc
__ct__5TPoolFPCc: # 0x801f8170
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x64b0
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    li      r5, -0x1
    li      r4, 0xc8
    stw     r0, 0x138(r31)
    li      r0, 0xff
    addi    r3, r31, 0x0
    lfs     f0, -0x1fd0(rtoc)
    stfs    f0, 0x13c(r31)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stw     r5, 0x148(r31)
    stb     r4, 0x148(r31)
    stb     r4, 0x149(r31)
    stb     r0, 0x14a(r31)
    stb     r4, 0x14b(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__5TPoolFR20JSUMemoryInputStream
load__5TPoolFR20JSUMemoryInputStream: # 0x801f81ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lfs     f0, -0x1fc0(rtoc)
    stfs    f0, 0x144(r31)
    lfs     f0, -0x1fc8(rtoc)
    stfs    f0, 0x140(r31)
    lfs     f0, 0x140(r31)
    stfs    f0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeObjAppeared__5TPoolFv
makeObjAppeared__5TPoolFv: # 0x801f8230
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      makeObjAppeared__11TMapObjBaseFv
    lfs     f0, 0x140(r31)
    stfs    f0, 0x13c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl draw__5TPoolCFv
draw__5TPoolCFv: # 0x801f8264
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    li      r5, 0x1
    li      r6, 0x4
    stwu    sp, -0x38(sp)
    li      r7, 0x0
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
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
    lwz     r0, 0x148(r31)
    addi    r4, sp, 0x2c
    li      r3, 0x4
    stw     r0, 0x2c(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetNumTexGens
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
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x5
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    li      r3, 0x80
    li      r4, 0x0
    li      r5, 0x4
    bl      GXBegin
    lfs     f4, -0x1fbc(rtoc)
    lis     r3, 0xcc01
    lfs     f0, 0x10(r31)
    lfs     f3, 0x14(r31)
    lfs     f5, 0x18(r31)
    fsubs   f1, f0, f4
    lfs     f2, 0x13c(r31)
    fadds   f0, f4, f0
    fsubs   f6, f5, f4
    fadds   f3, f3, f2
    stfs    f1, -0x8000(r3)
    fadds   f2, f4, f5
    stfs    f3, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f6, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f3, -0x8000(r3)
    stfs    f2, -0x8000(r3)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__12TPoolManagerFv
__dt__12TPoolManagerFv: # 0x801f8464
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801f84dc
    lis     r3, 0x803d
    addi    r0, r3, 0x6614
    stw     r0, 0x0(r30)
    beq-    branch_0x801f84cc
    lis     r3, 0x803d
    subi    r0, r3, 0x72b8
    stw     r0, 0x0(r30)
    beq-    branch_0x801f84cc
    lis     r3, 0x803e
    subi    r0, r3, 0x6098
    stw     r0, 0x0(r30)
    beq-    branch_0x801f84cc
    lis     r3, 0x803e
    subi    r0, r3, 0x6058
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TViewObjFv
branch_0x801f84cc:
    extsh.  r0, r31
    ble-    branch_0x801f84dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801f84dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_Pool_cpp
__sinit_Pool_cpp: # 0x801f84f8
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x56d8
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8540
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801f8540:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8570
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801f8570:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801f85a0
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801f85a0:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801f85d0
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801f85d0:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8600
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801f8600:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8630
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801f8630:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8660
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801f8660:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8690
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801f8690:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801f86c0
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801f86c0:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801f86f0
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801f86f0:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8720
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801f8720:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8750
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801f8750:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801f8780
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801f8780:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801f87b0
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801f87b0:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801f87e0
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801f87e0:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__5TPoolFv
_32___dt__5TPoolFv: # 0x801f87f4
    subi    r3, r3, 0x20
    b       __dt__5TPoolFv

