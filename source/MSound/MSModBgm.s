
.globl xFadeBgmForce__10MSBgmXFadeFf
xFadeBgmForce__10MSBgmXFadeFf: # 0x8001d408
    mflr    r0
    lis     r4, unk_803aca40@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r4, unk_803aca40@l
    li      r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    b       branch_0x8001d468

branch_0x8001d43c:
    clrlslwi  r0, r4, 24, 2
    add     r3, r30, r0
    lfs     f0, 0x28(r3)
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x8001d464
    lfs     f0, 0x2c(r3)
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001d464
    b       branch_0x8001d478

branch_0x8001d464:
    addi    r4, r4, 0x1
branch_0x8001d468:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x11
    blt+    branch_0x8001d43c
    li      r4, 0xff
branch_0x8001d478:
    clrlwi  r31, r4, 24
    cmplwi  r31, 0xff
    beq-    branch_0x8001d4c4
    subfic  r0, r31, 0x11
    slwi    r0, r0, 2
    add     r3, r30, r0
    lfs     f1, 0x70(r3)
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    slwi    r0, r31, 2
    add     r3, r30, r0
    lfs     f1, 0x70(r3)
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    stfs    f31, 0x0(r29)
branch_0x8001d4c4:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x30
    blr


.globl xFadeBgm__10MSBgmXFadeFf
xFadeBgm__10MSBgmXFadeFf: # 0x8001d4e4
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    mr      r29, r3
    lis     r3, unk_803aca40@ha
    lfs     f1, 0x0(r29)
    addi    r30, r3, unk_803aca40@l
    b       branch_0x8001d55c

branch_0x8001d51c:
    clrlslwi  r0, r4, 24, 2
    add     r3, r30, r0
    lfs     f0, 0x28(r3)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8001d540
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8001d540
    b       branch_0x8001d56c

branch_0x8001d540:
    fcmpo   cr0, f31, f0
    bge-    branch_0x8001d558
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8001d558
    b       branch_0x8001d56c

branch_0x8001d558:
    addi    r4, r4, 0x1
branch_0x8001d55c:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x12
    blt+    branch_0x8001d51c
    li      r4, 0xff
branch_0x8001d56c:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x1
    li      r3, 0x0
    blt-    branch_0x8001d588
    cmplwi  r0, 0x10
    bgt-    branch_0x8001d588
    li      r3, 0x1
branch_0x8001d588:
    clrlwi. r0, r3, 24
    beq-    branch_0x8001d5d0
    clrlwi  r31, r4, 24
    subfic  r0, r31, 0x11
    slwi    r0, r0, 2
    add     r3, r30, r0
    lfs     f1, 0x70(r3)
    li      r3, 0x0
    li      r4, 0x2
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    slwi    r0, r31, 2
    add     r3, r30, r0
    lfs     f1, 0x70(r3)
    li      r3, 0x1
    li      r4, 0x2
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x8001d5d0:
    stfs    f31, 0x0(r29)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    mtlr    r0
    lwz     r30, 0x28(sp)
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x38
    blr


.globl changeTempo__8MSModBgmFUcUc
changeTempo__8MSModBgmFUcUc: # 0x8001d5f4
    mflr    r0
    addi    r3, r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    bl      getHandle__5MSBgmFUc
    cmplwi  r3, 0x0
    beq-    branch_0x8001d668
    clrlwi  r0, r31, 24
    lfs     f1, -0x7a18(r2)
    cmpwi   r0, 0x2
    li      r4, 0x5
    beq-    branch_0x8001d65c
    bge-    branch_0x8001d640
    cmpwi   r0, 0x0
    beq-    branch_0x8001d64c
    bge-    branch_0x8001d654
    b       branch_0x8001d664

branch_0x8001d640:
    cmpwi   r0, 0x4
    bge-    branch_0x8001d664
    b       branch_0x8001d664

branch_0x8001d64c:
    lfs     f1, -0x7a14(r2)
    b       branch_0x8001d664

branch_0x8001d654:
    lfs     f1, -0x7a10(r2)
    b       branch_0x8001d664

branch_0x8001d65c:
    lfs     f1, -0x7a0c(r2)
    li      r4, 0x14
branch_0x8001d664:
    bl      setTempoProportion__8JAISoundFfUl
branch_0x8001d668:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loop__8MSModBgmFv
loop__8MSModBgmFv: # 0x8001d67c
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x8001d690
    bge-    branch_0x8001d6a0
    b       branch_0x8001d6a0

branch_0x8001d690:
    lwz     r4, 0x4(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x4(r3)
    b       branch_0x8001d6ac

branch_0x8001d6a0:
    li      r0, 0x0
    stw     r0, 0x4(r3)
    blr

branch_0x8001d6ac:
    li      r0, 0x0
    stb     r0, 0x0(r3)
    blr


.globl modBgm__8MSModBgmFUcUc
modBgm__8MSModBgmFUcUc: # 0x8001d6b8
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 24
    cmpwi   r0, 0x2
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bge-    branch_0x8001d6f0
    cmpwi   r0, 0x0
    bge-    branch_0x8001d6e8
    b       branch_0x8001d6f0

branch_0x8001d6e8:
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8001d6f0:
    mr      r3, r5
    bl      getHandle__5MSBgmFUc
    mr.     r31, r3
    bne-    branch_0x8001d70c
    li      r31, 0x0
    stb     r31, 0x0(r30)
    b       branch_0x8001d798

branch_0x8001d70c:
    lwz     r0, 0x4(r30)
    cmpwi   r0, 0x5
    beq-    branch_0x8001d75c
    bge-    branch_0x8001d728
    cmpwi   r0, 0x0
    beq-    branch_0x8001d734
    b       branch_0x8001d798

branch_0x8001d728:
    cmpwi   r0, 0xb4
    beq-    branch_0x8001d784
    b       branch_0x8001d798

branch_0x8001d734:
    lfs     f1, -0x7a08(r2)
    addi    r3, r31, 0x0
    li      r4, 0xa
    bl      setTempoProportion__8JAISoundFfUl
    lfs     f1, -0x7a08(r2)
    addi    r3, r31, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
    b       branch_0x8001d798

branch_0x8001d75c:
    lfs     f1, -0x7a04(r2)
    addi    r3, r31, 0x0
    li      r4, 0xb4
    bl      setTempoProportion__8JAISoundFfUl
    lfs     f1, -0x7a00(r2)
    addi    r3, r31, 0x0
    li      r4, 0xb4
    li      r5, 0x0
    bl      setPitch__8JAISoundFfUlUc
    b       branch_0x8001d798

branch_0x8001d784:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      stop__8JAISoundFUl
    li      r31, 0x0
    stb     r31, 0x0(r30)
branch_0x8001d798:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MSModBgm_cpp
__sinit_MSModBgm_cpp: # 0x8001d7b4
    mflr    r0
    lis     r3, unk_803ead28@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803ead28@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d7fc
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8001d7fc:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d82c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8001d82c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d85c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8001d85c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d88c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8001d88c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d8bc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8001d8bc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d8ec
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8001d8ec:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d91c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8001d91c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d94c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8001d94c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d97c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8001d97c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d9ac
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8001d9ac:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8001d9dc
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8001d9dc:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8001da0c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8001da0c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8001da3c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8001da3c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8001da6c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8001da6c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8001da9c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8001da9c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

