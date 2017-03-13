
.globl __dt__4TSkyFv
__dt__4TSkyFv: # 0x8019fdc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8019fe18
    lis     r3, 0x803c
    addi    r3, r3, 0x2010
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
    extsh.  r0, r31
    ble-    branch_0x8019fe18
    mr      r3, r30
    bl      __dl__FPv
branch_0x8019fe18:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__4TSkyFPCc
__ct__4TSkyFPCc: # 0x8019fe34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    stw     r31, 0x10(sp)
    stw     r31, 0x14(sp)
    lwz     r3, 0x10(sp)
    bl      __ct__Q26JDrama8TNameRefFPCc
    lwz     r3, 0x10(sp)
    lis     r4, 0x803b
    subi    r0, r4, 0x497c
    stw     r0, 0x0(r3)
    addi    r3, r3, 0xc
    li      r4, 0x0
    bl      __ct__Q26JDrama10TFlagT_Us_FUs
    lwz     r30, 0x14(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x10
    lfs     f1, -0x413c(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8019ff3c
    li      r5, 0x0
    lis     r3, 0x803e
    sth     r5, 0x1c(r30)
    addi    r0, r3, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    addi    r0, r3, 0x4650
    lis     r3, 0x803e
    stw     r0, 0x20(r31)
    addi    r3, r3, 0x1920
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x803c
    stw     r0, 0x20(r31)
    addi    r4, r3, 0x2010
    addi    r0, r4, 0x24
    lfs     f0, -0x4138(rtoc)
    mr      r3, r31
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x413c(rtoc)
    stfs    f0, 0x30(r31)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    stw     r5, 0x3c(r31)
    stw     r5, 0x40(r31)
    stw     r4, 0x0(r31)
    stw     r0, 0x20(r31)
    stw     r5, 0x44(r31)
    lfs     f0, -0x4134(rtoc)
    stfs    f0, 0x48(r31)
    lfs     f0, -0x4130(rtoc)
    stfs    f0, 0x4c(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8019ff3c
set_f___Q29JGeometry8TVec3_f_Ffff_8019ff3c: # 0x8019ff3c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl load__4TSkyFR20JSUMemoryInputStream
load__4TSkyFR20JSUMemoryInputStream: # 0x8019ff4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lwz     r4, gpMap(r13)
    lis     r3, 0x8039
    subi    r3, r3, 0x5df0
    lwz     r4, 0x14(r4)
    li      r5, 0x3
    lis     r6, 0x1022
    addi    r4, r4, 0x20
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x44(r31)
    lwz     r3, -0x62b8(r13)
    lwz     r4, 0x68(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x8019ffb4
    lwz     r3, 0x44(r31)
    li      r5, 0x3
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x44(r31)
    bl      initDL__6MActorFv
branch_0x8019ffb4:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xf
    beq-    branch_0x8019ffd0
    lwz     r3, 0x44(r31)
    subi    r4, rtoc, 0x412c
    bl      startAllAnim__11TMapObjBaseFP6MActorPCc
branch_0x8019ffd0:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl perform__4TSkyFUlPQ26JDrama9TGraphics
perform__4TSkyFUlPQ26JDrama9TGraphics: # 0x8019ffe4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stw     r31, 0x12c(sp)
    stw     r30, 0x128(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x124(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x120(sp)
    addi    r28, r3, 0x0
    beq-    branch_0x801a0194
    lwz     r3, gpCamera(r13)
    addi    r4, sp, 0xec
    addi    r31, r3, 0x1ec
    addi    r3, r31, 0x0
    bl      PSMTXInverse
    addi    r3, sp, 0xbc
    bl      PSMTXIdentity
    lfs     f2, 0xec(sp)
    lfs     f1, 0xf0(sp)
    lfs     f0, 0x1c(r31)
    fneg    f4, f2
    lfs     f3, 0xc(r31)
    fmuls   f2, f1, f0
    lfs     f1, 0xfc(sp)
    lfs     f0, 0x10c(sp)
    lfs     f5, 0xf4(sp)
    fneg    f6, f1
    fmsubs  f1, f4, f3, f2
    lfs     f4, 0x2c(r31)
    lfs     f2, 0x100(sp)
    fneg    f3, f0
    lfs     f7, 0x104(sp)
    fnmsubs  f0, f5, f4, f1
    lfs     f1, 0x110(sp)
    lfs     f4, 0x114(sp)
    lwz     r3, gpMarDirector(r13)
    stfs    f0, 0xc8(sp)
    lfs     f0, 0x1c(r31)
    lfs     f5, 0xc(r31)
    fmuls   f0, f2, f0
    lfs     f2, 0x2c(r31)
    fmsubs  f0, f6, f5, f0
    fnmsubs  f0, f7, f2, f0
    stfs    f0, 0xd8(sp)
    lfs     f0, 0x1c(r31)
    lfs     f2, 0xc(r31)
    fmuls   f0, f1, f0
    lfs     f1, 0x2c(r31)
    fmsubs  f0, f3, f2, f0
    fnmsubs  f0, f4, f1, f0
    stfs    f0, 0xe8(sp)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xf
    bne-    branch_0x801a0180
    lfs     f1, -0x4128(rtoc)
    lfs     f0, 0x48(r28)
    fmuls   f1, f1, f0
    bl      sinf
    lfs     f2, -0x4128(rtoc)
    fmr     f31, f1
    lfs     f0, 0x48(r28)
    fmuls   f1, f2, f0
    bl      cosf
    stfs    f1, 0x8c(sp)
    addi    r4, sp, 0xbc
    lfs     f3, -0x413c(rtoc)
    fneg    f0, f31
    lfs     f2, -0x4138(rtoc)
    stfs    f3, 0x90(sp)
    addi    r5, r4, 0x0
    addi    r3, sp, 0x8c
    stfs    f31, 0x94(sp)
    stfs    f3, 0x98(sp)
    stfs    f3, 0x9c(sp)
    stfs    f2, 0xa0(sp)
    stfs    f3, 0xa4(sp)
    stfs    f3, 0xa8(sp)
    stfs    f0, 0xac(sp)
    stfs    f3, 0xb0(sp)
    stfs    f1, 0xb4(sp)
    stfs    f3, 0xb8(sp)
    bl      PSMTXConcat
    lfs     f1, 0x48(r28)
    lfs     f0, 0x4c(r28)
    fadds   f0, f1, f0
    stfs    f0, 0x48(r28)
    lfs     f2, 0x48(r28)
    lfs     f0, -0x4124(rtoc)
    b       branch_0x801a0158

branch_0x801a0154:
    fsubs   f2, f2, f0
branch_0x801a0158:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801a0154
    lfs     f1, -0x4124(rtoc)
    lfs     f0, -0x413c(rtoc)
    b       branch_0x801a0174

branch_0x801a0170:
    fadds   f2, f2, f1
branch_0x801a0174:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801a0170
    stfs    f2, 0x48(r28)
branch_0x801a0180:
    lwz     r4, 0x44(r28)
    addi    r3, sp, 0xbc
    lwz     r4, 0x4(r4)
    addi    r4, r4, 0x20
    bl      PSMTXCopy
branch_0x801a0194:
    lwz     r3, 0x44(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    rlwinm. r0, r29, 0, 28, 28
    beq-    branch_0x801a0318
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0x0
    li      r4, 0x9
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x1
    bl      GXSetCullMode
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x1
    li      r8, 0x2
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
    lwz     r0, -0x4140(rtoc)
    addi    r4, sp, 0x58
    li      r3, 0x4
    stw     r0, 0x54(sp)
    lwz     r0, 0x54(sp)
    stw     r0, 0x58(sp)
    bl      GXSetChanMatColor
    li      r3, 0x0
    bl      GXSetNumTexGens
    li      r3, 0x0
    bl      GXSetCurrentMtx
    lfs     f1, -0x4120(rtoc)
    addi    r3, sp, 0x5c
    fmr     f2, f1
    fmr     f3, f1
    bl      PSMTXScale
    addi    r3, sp, 0x5c
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    addi    r3, sp, 0x5c
    li      r4, 0x0
    bl      GXLoadNrmMtxImm
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0x4
    bl      GXSetTevOp
    li      r3, 0x1
    bl      GXSetZCompLoc
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x1
    bl      GXSetZMode
    li      r3, 0x7
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x7
    li      r7, 0x0
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    li      r6, 0x5
    bl      GXSetBlendMode
    li      r3, 0x8
    li      r4, 0x10
    bl      GXDrawSphere
branch_0x801a0318:
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lwz     r31, 0x12c(sp)
    mtlr    r0
    lwz     r30, 0x128(sp)
    lwz     r29, 0x124(sp)
    lwz     r28, 0x120(sp)
    addi    sp, sp, 0x138
    blr


.globl __sinit_Sky_cpp
__sinit_Sky_cpp: # 0x801a033c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x7730
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0384
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801a0384:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801a03b4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801a03b4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801a03e4
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801a03e4:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0414
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801a0414:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0444
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801a0444:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0474
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801a0474:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801a04a4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801a04a4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801a04d4
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801a04d4:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0504
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801a0504:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0534
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801a0534:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0564
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801a0564:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0594
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801a0594:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a05c4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801a05c4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801a05f4
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801a05f4:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801a0624
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801a0624:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__4TSkyFv
_32___dt__4TSkyFv: # 0x801a0638
    subi    r3, r3, 0x20
    b       __dt__4TSkyFv

