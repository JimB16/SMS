
.globl __dt__18TMapObjPoleManagerFv
__dt__18TMapObjPoleManagerFv: # 0x801e9e64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e9ebc
    lis     r3, __vvt__18TMapObjPoleManager@h
    addi    r0, r3, __vvt__18TMapObjPoleManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801e9eac
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801e9eac:
    extsh.  r0, r31
    ble-    branch_0x801e9ebc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e9ebc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__18TMapObjPoleManagerFPCc
__ct__18TMapObjPoleManagerFPCc: # 0x801e9ed8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r3, __vvt__18TMapObjPoleManager@h
    sth     r0, 0xc(r31)
    addi    r0, r3, __vvt__18TMapObjPoleManager@l
    lis     r3, __ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv@ha
    stw     r0, 0x0(r31)
    addi    r4, r3, __ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv@l
    addi    r3, r31, 0x10
    li      r5, 0x0
    li      r6, 0x58
    li      r7, 0x1
    bl      __construct_array
    stw     r31, R13Off_m0x6240(r13)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv
__ct__Q218TMapObjPoleManager15TMapObjPoleInfoFv: # 0x801e9f64
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x54(r3)
    blr


.globl load__18TMapObjPoleManagerFR20JSUMemoryInputStream
load__18TMapObjPoleManagerFR20JSUMemoryInputStream: # 0x801e9f74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x20
    bl      readString__14JSUInputStreamFPcUs
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl perform__18TMapObjPoleManagerFUlPQ26JDrama9TGraphics
perform__18TMapObjPoleManagerFUlPQ26JDrama9TGraphics: # 0x801e9fb0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 28, 28
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    stw     r29, 0x6c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x801ea040
    mr      r3, r29
    bl      initDraw__18TMapObjPoleManagerFv
    lwz     r0, 0x10(r29)
    cmpwi   r0, 0x0
    beq-    branch_0x801ea040
    lwz     r4, 0x64(r29)
    li      r31, 0x0
    addi    r3, sp, 0x14
    stw     r31, 0x3c(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x64(sp)
    addi    r3, sp, 0x14
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r30, 0x0
    b       branch_0x801ea028

branch_0x801ea014:
    addi    r0, r31, 0x14
    lwzx    r3, r29, r0
    bl      draw__11TMapObjPoleFv
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801ea028:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x801ea014
    addi    r3, sp, 0x14
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
branch_0x801ea040:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl initDraw__18TMapObjPoleManagerFv
initDraw__18TMapObjPoleManagerFv: # 0x801ea05c
    mflr    r0
    li      r3, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x9
    li      r5, 0x1
    stwu    sp, -0x18(sp)
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
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
    bl      GXSetCurrentMtx
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    li      r4, 0x0
    bl      GXLoadPosMtxImm
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
    lwz     r0, R2Off_m0x22c0(r2)
    addi    r4, sp, 0x14
    li      r3, 0x4
    stw     r0, 0x10(sp)
    lwz     r0, 0x10(sp)
    stw     r0, 0x14(sp)
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
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
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
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl draw__11TMapObjPoleFv
draw__11TMapObjPoleFv: # 0x801ea22c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r5, 0x8
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stfd    f30, 0x40(sp)
    stfd    f29, 0x38(sp)
    stfd    f28, 0x30(sp)
    stfd    f27, 0x28(sp)
    stfd    f26, 0x20(sp)
    stfd    f25, 0x18(sp)
    stfd    f24, 0x10(sp)
    lfs     f31, 0x14(r3)
    lfs     f2, -0x22b8(r2)
    lfs     f1, 0x28(r3)
    fsubs   f0, f31, f31
    lfs     f5, 0x6c(r3)
    fmadds  f26, f2, f1, f31
    lfs     f3, 0x10(r3)
    lfs     f2, 0x68(r3)
    lfs     f4, 0x18(r3)
    fmuls   f24, f5, f0
    fsubs   f1, f26, f31
    li      r3, 0x98
    fadds   f30, f3, f2
    fsubs   f29, f3, f2
    fadds   f28, f4, f2
    fsubs   f27, f4, f2
    fmuls   f25, f5, f1
    bl      GXBegin
    lis     r3, 0xcc01
    lfs     f1, -0x22bc(r2)
    stfs    f29, -0x8000(r3)
    lfs     f0, -0x22b4(r2)
    stfs    f26, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f30, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f27, -0x8000(r3)
    stfs    f1, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f26, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f25, -0x8000(r3)
    stfs    f29, -0x8000(r3)
    stfs    f31, -0x8000(r3)
    stfs    f28, -0x8000(r3)
    stfs    f0, -0x8000(r3)
    stfs    f24, -0x8000(r3)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    lfd     f29, 0x38(sp)
    lfd     f28, 0x30(sp)
    lfd     f27, 0x28(sp)
    lfd     f26, 0x20(sp)
    lfd     f25, 0x18(sp)
    lfd     f24, 0x10(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl __sinit_MapObjPole_cpp
__sinit_MapObjPole_cpp: # 0x801ea384
    mflr    r0
    lis     r3, unk_803fa368@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa368@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea3cc
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801ea3cc:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea3fc
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801ea3fc:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea42c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801ea42c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea45c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801ea45c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea48c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801ea48c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea4bc
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801ea4bc:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea4ec
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801ea4ec:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea51c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801ea51c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea54c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801ea54c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea57c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801ea57c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea5ac
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801ea5ac:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea5dc
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801ea5dc:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea60c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801ea60c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea63c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801ea63c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801ea66c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801ea66c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

