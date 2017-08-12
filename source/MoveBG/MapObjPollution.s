
.globl __dt__23TMapObjRevivalPollutionFv
__dt__23TMapObjRevivalPollutionFv: # 0x801e8734
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e878c
    lis     r3, __vvt__23TMapObjRevivalPollution@h
    addi    r0, r3, __vvt__23TMapObjRevivalPollution@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801e877c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801e877c:
    extsh.  r0, r31
    ble-    branch_0x801e878c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e878c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__23TMapObjRevivalPollutionFPCc
__ct__23TMapObjRevivalPollutionFPCc: # 0x801e87a8
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__23TMapObjRevivalPollution@h
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__23TMapObjRevivalPollution@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__23TMapObjRevivalPollutionFR20JSUMemoryInputStream
load__23TMapObjRevivalPollutionFR20JSUMemoryInputStream: # 0x801e8818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stmw    r26, 0x60(sp)
    addi    r26, r3, 0x0
    addi    r27, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r27, 0x0
    addi    r4, r26, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r30, 0x10(r26)
    mulli   r3, r30, 0x1c
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__16TRevivalPolluterFv@ha
    addi    r4, r4, __ct__16TRevivalPolluterFv@l
    addi    r7, r30, 0x0
    li      r5, 0x0
    li      r6, 0x1c
    bl      __construct_new_array
    lis     r4, unk_80392fb8@h
    stw     r3, 0x14(r26)
    addi    r30, r4, unk_80392fb8@l
    li      r28, 0x0
    li      r31, 0x0
    b       branch_0x801e88e0

branch_0x801e8884:
    lwz     r0, 0x14(r26)
    addi    r3, r27, 0x0
    addi    r4, sp, 0x18
    add     r29, r0, r31
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    addi    r3, r27, 0x0
    addi    r4, r29, 0x18
    stw     r0, 0x0(r29)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r6, 0x0(r29)
    addi    r5, r30, 0x0
    addi    r3, sp, 0x1c
    crxor   6, 6, 6
    li      r4, 0x40
    bl      snprintf
    addi    r3, sp, 0x1c
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x4(r29)
    addi    r28, r28, 0x1
    addi    r31, r31, 0x1c
branch_0x801e88e0:
    lwz     r0, 0x10(r26)
    cmpw    r28, r0
    blt+    branch_0x801e8884
    lmw     r26, 0x60(sp)
    lwz     r0, 0x7c(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl loadAfter__23TMapObjRevivalPollutionFv
loadAfter__23TMapObjRevivalPollutionFv: # 0x801e8900
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    mr      r30, r3
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r31, 0x0
    li      r29, 0x0
    b       branch_0x801e8980

branch_0x801e8930:
    lwz     r0, 0x14(r30)
    li      r5, 0x0
    lwz     r7, R13Off_m0x62f0(r13)
    li      r6, 0x0
    add     r28, r0, r29
    lwz     r4, 0x0(r28)
    addi    r3, r7, 0x70
    lwz     r7, 0x14(r7)
    slwi    r0, r4, 2
    lwz     r10, 0x4(r28)
    lwzx    r8, r7, r0
    lwz     r9, 0x18(r28)
    lwz     r7, 0x60(r8)
    lwz     r0, 0x5c(r8)
    extsh   r8, r7
    extsh   r7, r0
    bl      registerRevivalTexStamp__22TPollutionCounterLayerFissssiP7ResTIMG
    sth     r3, 0x8(r28)
    addi    r31, r31, 0x1
    addi    r29, r29, 0x1c
branch_0x801e8980:
    lwz     r0, 0x10(r30)
    cmpw    r31, r0
    blt+    branch_0x801e8930
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl perform__23TMapObjRevivalPollutionFUlPQ26JDrama9TGraphics
perform__23TMapObjRevivalPollutionFUlPQ26JDrama9TGraphics: # 0x801e89ac
    rlwinm. r0, r4, 0, 30, 30
    beqlr-    

    lwz     r5, 0x10(r3)
    li      r6, 0x0
    cmpw    r6, r5
    bgelr-    

    cmpwi   r5, 0x8
    addi    r4, r5, -0x8
    ble-    branch_0x801e89ec
    addi    r0, r4, 0x7
    srwi    r0, r0, 3
    cmpwi   r4, 0x0
    mtctr   r0
    ble-    branch_0x801e89ec
branch_0x801e89e4:
    addi    r6, r6, 0x8
    bdnz+      branch_0x801e89e4
branch_0x801e89ec:
    subf    r0, r6, r5
    cmpw    r6, r5
    mtctr   r0
    bgelr-    

branch_0x801e89fc:
    bdnz-      branch_0x801e89fc
    blr

branch_0x801e8a04:
    b       branch_0x801e89ec

branch_0x801e8a08:
    blr


.globl __ct__16TRevivalPolluterFv
__ct__16TRevivalPolluterFv: # 0x801e8a0c
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    sth     r0, 0x8(r3)
    lfs     f0, -0x22f0(r2)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    stfs    f0, 0x14(r3)
    stw     r0, 0x18(r3)
    blr


.globl __ct__13TPolluterBaseFPCc
__ct__13TPolluterBaseFPCc: # 0x801e8a34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__13TPolluterBase@h
    addi    r3, r3, __vvt__13TPolluterBase@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TPolluterBaseFR20JSUMemoryInputStream
load__13TPolluterBaseFR20JSUMemoryInputStream: # 0x801e8a80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stw     r31, 0x94(sp)
    mr      r31, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lis     r3, unk_80392fe0@h
    lwz     r6, 0xf4(r31)
    addi    r5, r3, unk_80392fe0@l
    crxor   6, 6, 6
    addi    r3, sp, 0x38
    li      r4, 0x40
    bl      snprintf
    lwz     r3, R13Off_m0x62b8(r13)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, sp, 0x38
    li      r5, 0x3
    lis     r6, 0x1021
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x138(r31)
    addi    r4, sp, 0x38
    lwz     r3, 0xf4(r31)
    bl      makeLowerStr__11TMapObjBaseFPCcPc
    lwz     r3, 0x138(r31)
    addi    r4, sp, 0x38
    bl      setBck__6MActorFPCc
    lwz     r3, 0x138(r31)
    addi    r4, sp, 0x38
    bl      setBpk__6MActorFPCc
    lwz     r3, 0x138(r31)
    addi    r4, sp, 0x38
    bl      setBtp__6MActorFPCc
    lwz     r3, 0x138(r31)
    addi    r4, sp, 0x38
    bl      setBtk__6MActorFPCc
    lfs     f0, 0x38(r31)
    lfs     f2, -0x22ec(r2)
    lfs     f1, 0x34(r31)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r31)
    fmuls   f1, f2, f1
    lwz     r3, 0x138(r31)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lwz     r3, 0x4(r3)
    fctiwz  f5, f2
    lfs     f3, 0x18(r31)
    fctiwz  f0, f0
    stfd    f5, 0x88(sp)
    addi    r3, r3, 0x20
    lfs     f2, 0x14(r31)
    stfd    f4, 0x80(sp)
    lfs     f1, 0x10(r31)
    stfd    f0, 0x78(sp)
    lwz     r4, 0x8c(sp)
    lwz     r5, 0x84(sp)
    lwz     r6, 0x7c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x138(r31)
    lwz     r3, 0x24(r31)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r31)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r4)
    lwz     r0, 0x9c(sp)
    lwz     r31, 0x94(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl perform__13TPolluterBaseFUlPQ26JDrama9TGraphics
perform__13TPolluterBaseFUlPQ26JDrama9TGraphics: # 0x801e8ba0
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x801e8bcc
    lwz     r3, 0x138(r30)
    bl      calcAnm__6MActorFv
branch_0x801e8bcc:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x801e8be4
    lwz     r4, 0x138(r30)
    lwz     r3, R13Off_m0x62f0(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x801e8be4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__13TPolluterBaseFv
__dt__13TPolluterBaseFv: # 0x801e8bfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801e8c64
    lis     r3, __vvt__13TPolluterBase@h
    addi    r3, r3, __vvt__13TPolluterBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801e8c54
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801e8c54:
    extsh.  r0, r31
    ble-    branch_0x801e8c64
    mr      r3, r30
    bl      __dl__FPv
branch_0x801e8c64:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjPollution_cpp
__sinit_MapObjPollution_cpp: # 0x801e8c80
    mflr    r0
    lis     r3, unk_803fa1f0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa1f0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8cc8
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801e8cc8:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8cf8
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801e8cf8:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8d28
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801e8d28:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8d58
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801e8d58:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8d88
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801e8d88:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8db8
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801e8db8:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8de8
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801e8de8:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8e18
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801e8e18:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8e48
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801e8e48:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8e78
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801e8e78:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8ea8
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801e8ea8:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8ed8
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801e8ed8:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8f08
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801e8f08:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8f38
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801e8f38:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801e8f68
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801e8f68:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801e8f7c
unk_801e8f7c: # 0x801e8f7c
    addi    r3, r3, -0x20
    b       __dt__13TPolluterBaseFv

