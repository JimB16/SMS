
.globl __dt__12TItemManagerFv
__dt__12TItemManagerFv: # 0x801bfc54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bfccc
    lis     r3, __vvt__12TItemManager@ha
    addi    r0, r3, __vvt__12TItemManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801bfcbc
    lis     r3, __vvt__18TMapObjBaseManager@ha
    addi    r0, r3, __vvt__18TMapObjBaseManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801bfcbc
    lis     r3, __vvt__12TLiveManager@ha
    addi    r0, r3, __vvt__12TLiveManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801bfcbc
    lis     r3, __vvt__11TObjManager@ha
    addi    r0, r3, __vvt__11TObjManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TViewObjFv
branch_0x801bfcbc:
    extsh.  r0, r31
    ble-    branch_0x801bfccc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bfccc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__12TItemManagerCFv
hasMapCollision__12TItemManagerCFv: # 0x801bfce8
    li      r3, 0x0
    blr


.globl __ct__12TItemManagerFPCc
__ct__12TItemManagerFPCc: # 0x801bfcf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      __ct__18TMapObjBaseManagerFPCc
    lis     r3, __vvt__12TItemManager@ha
    addi    r0, r3, __vvt__12TItemManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    mr      r3, r31
    lfs     f0, -0x2b48(r2)
    stfs    f0, 0x70(r31)
    lfs     f0, -0x2b44(r2)
    stfs    f0, 0x74(r31)
    stw     r0, 0x78(r31)
    stfs    f0, 0x6c(r31)
    stfs    f0, 0x5c(r31)
    stfs    f0, 0x4c(r31)
    stfs    f0, 0x58(r31)
    stfs    f0, 0x48(r31)
    stfs    f0, 0x64(r31)
    stfs    f0, 0x44(r31)
    stfs    f0, 0x60(r31)
    stfs    f0, 0x50(r31)
    lfs     f0, -0x2b40(r2)
    stfs    f0, 0x68(r31)
    stfs    f0, 0x54(r31)
    stfs    f0, 0x40(r31)
    stw     r31, R13Off_m0x62b0(r13)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__12TItemManagerFR20JSUMemoryInputStream
load__12TItemManagerFR20JSUMemoryInputStream: # 0x801bfd7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    stw     r30, 0x10(sp)
    bl      load__18TMapObjBaseManagerFR20JSUMemoryInputStream
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801bfdb8
    lis     r3, unk_80390f90@h
    addi    r4, r3, unk_80390f90@l
    addi    r3, r30, 0x0
    bl      __ct__10TCoinEmptyFPCc
branch_0x801bfdb8:
    stw     r30, 0x78(r31)
    lis     r3, unk_2000000e@h
    addi    r4, r3, unk_2000000e@l
    lfs     f1, -0x2b44(r2)
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    li      r6, 0x0
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__12TItemManagerFv
loadAfter__12TItemManagerFv: # 0x801bfdfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stfd    f30, 0x48(sp)
    stmw    r27, 0x34(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r28, 0x0
branch_0x801bfe1c:
    li      r3, 0x158
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x801bfe38
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x2b3c
    bl      __ct__5TCoinFPCc
branch_0x801bfe38:
    addi    r3, r27, 0x0
    addi    r4, r2, R2Off_m0x2b34
    bl      initAndRegister__11TMapObjBaseFPCc
    addi    r28, r28, 0x1
    cmpwi   r28, 0x14
    blt+    branch_0x801bfe1c
    lis     r3, unk_80390f9c@h
    lfs     f30, -0x2b40(r2)
    lfs     f31, -0x2b44(r2)
    addi    r30, sp, 0xc
    addi    r29, sp, 0x18
    addi    r28, sp, 0x24
    addi    r31, r3, unk_80390f9c@l
    li      r27, 0x0
branch_0x801bfe70:
    stfs    f30, 0xc(sp)
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    stfs    f31, 0x18(sp)
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    stfs    f31, 0x24(sp)
    stfs    f30, 0x10(sp)
    stfs    f31, 0x1c(sp)
    stfs    f31, 0x28(sp)
    stfs    f30, 0x14(sp)
    stfs    f31, 0x20(sp)
    stfs    f31, 0x2c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    addi    r27, r27, 0x1
    cmpwi   r27, 0x2
    blt+    branch_0x801bfe70
    lmw     r27, 0x34(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lfd     f30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl newAndRegisterCoinReal__12TItemManagerFv
newAndRegisterCoinReal__12TItemManagerFv: # 0x801bfed0
    mflr    r0
    li      r3, 0x158
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801bfefc
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x2b3c
    bl      __ct__5TCoinFPCc
branch_0x801bfefc:
    addi    r3, r31, 0x0
    addi    r4, r2, R2Off_m0x2b34
    bl      initAndRegister__11TMapObjBaseFPCc
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__12TItemManagerFUlPQ26JDrama9TGraphics
perform__12TItemManagerFUlPQ26JDrama9TGraphics: # 0x801bff20
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x30(sp)
    beq-    branch_0x801bffd0
    lfs     f1, 0x74(r3)
    lfs     f0, 0x70(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x74(r3)
    lfs     f1, 0x74(r3)
    lfs     f0, -0x2b2c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801bff5c
    fsubs   f0, f1, f0
    stfs    f0, 0x74(r3)
branch_0x801bff5c:
    lfs     f1, -0x2b28(r2)
    lfs     f0, 0x74(r3)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r7, 0x2c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f1, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f1
    stfs    f3, 0x40(r3)
    lfs     f2, -0x2b44(r2)
    stfs    f2, 0x44(r3)
    stfs    f1, 0x48(r3)
    stfs    f2, 0x4c(r3)
    stfs    f2, 0x50(r3)
    lfs     f1, -0x2b40(r2)
    stfs    f1, 0x54(r3)
    stfs    f2, 0x58(r3)
    stfs    f2, 0x5c(r3)
    stfs    f0, 0x60(r3)
    stfs    f2, 0x64(r3)
    stfs    f3, 0x68(r3)
    stfs    f2, 0x6c(r3)
branch_0x801bffd0:
    bl      perform__12TLiveManagerFUlPQ26JDrama9TGraphics
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl newAndRegisterCoin__12TItemManagerFUl
newAndRegisterCoin__12TItemManagerFUl: # 0x801bffe4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r3, 0x0
    cmplwi  r31, 0x32
    bge-    branch_0x801c0048
    lfs     f0, -0x2b44(r2)
    lis     r3, unk_80390fac@h
    lfs     f1, -0x2b40(r2)
    addi    r6, sp, 0x3c
    stfs    f0, 0x48(sp)
    addi    r5, sp, 0x48
    stfs    f1, 0x3c(sp)
    addi    r4, sp, 0x54
    addi    r3, r3, unk_80390fac@l
    stfs    f0, 0x54(sp)
    stfs    f1, 0x40(sp)
    stfs    f0, 0x4c(sp)
    stfs    f0, 0x58(sp)
    stfs    f1, 0x44(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x5c(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    b       branch_0x801c00b4

branch_0x801c0048:
    cmplwi  r31, 0x64
    bne-    branch_0x801c005c
    lwz     r3, R13Off_m0x62b0(r13)
    lwz     r3, 0x78(r3)
    b       branch_0x801c00b4

branch_0x801c005c:
    cmplwi  r31, 0xc8
    bne-    branch_0x801c00ac
    lfs     f0, -0x2b44(r2)
    lis     r3, unk_80390fb8@h
    lfs     f1, -0x2b40(r2)
    addi    r6, sp, 0x18
    stfs    f0, 0x24(sp)
    addi    r5, sp, 0x24
    stfs    f1, 0x18(sp)
    addi    r4, sp, 0x30
    addi    r3, r3, unk_80390fb8@l
    stfs    f0, 0x30(sp)
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x34(sp)
    stfs    f1, 0x20(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x38(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    b       branch_0x801c00b4

branch_0x801c00ac:
    li      r3, 0x0
    b       branch_0x801c00b8

branch_0x801c00b4:
    stw     r31, 0x134(r3)
branch_0x801c00b8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl makeShineAppearWithDemoOffset__12TItemManagerFPCcPCcfff
makeShineAppearWithDemoOffset__12TItemManagerFPCcPCcfff: # 0x801c00cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f3
    stfd    f30, 0x50(sp)
    fmr     f30, f2
    stfd    f29, 0x48(sp)
    fmr     f29, f1
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r5
    stw     r29, 0x3c(sp)
    mr      r29, r4
    lwz     r3, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r3)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    lfs     f0, 0x10(r3)
    mr      r31, r3
    addi    r4, r30, 0x0
    fadds   f0, f0, f29
    stfs    f0, 0x10(r31)
    lfs     f0, 0x14(r31)
    fadds   f0, f0, f30
    stfs    f0, 0x14(r31)
    lfs     f0, 0x18(r31)
    fadds   f0, f0, f31
    stfs    f0, 0x18(r31)
    bl      appearWithDemo__6TShineFPCc
    lwz     r0, 0x64(sp)
    mr      r3, r31
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x60
    blr


.globl makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
makeShineAppearWithDemo__12TItemManagerFPCcPCcfff: # 0x801c018c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f3
    stfd    f30, 0x50(sp)
    fmr     f30, f2
    stfd    f29, 0x48(sp)
    fmr     f29, f1
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    mr      r30, r5
    stw     r29, 0x3c(sp)
    mr      r29, r4
    lwz     r3, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r3)
    mr      r3, r29
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r29
    mtlr    r12
    blrl
    stfs    f29, 0x10(r3)
    mr      r31, r3
    addi    r4, r30, 0x0
    stfs    f30, 0x14(r31)
    stfs    f31, 0x18(r31)
    bl      appearWithDemo__6TShineFPCc
    lwz     r0, 0x64(sp)
    mr      r3, r31
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x60
    blr


.globl makeShineAppearWithTime__12TItemManagerFPCcifffiii
makeShineAppearWithTime__12TItemManagerFPCcifffiii: # 0x801c0234
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    fmr     f31, f3
    stfd    f30, 0x68(sp)
    fmr     f30, f2
    stfd    f29, 0x60(sp)
    fmr     f29, f1
    stmw    r26, 0x48(sp)
    mr      r26, r4
    mr      r27, r5
    addi    r28, r6, 0x0
    addi    r29, r7, 0x0
    addi    r30, r8, 0x0
    lwz     r3, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r3)
    addi    r3, r26, 0x0
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r26
    mtlr    r12
    blrl
    stfs    f29, 0x10(r3)
    mr      r31, r3
    addi    r4, r27, 0x0
    stfs    f30, 0x14(r31)
    addi    r5, r28, 0x0
    addi    r6, r29, 0x0
    stfs    f31, 0x18(r31)
    mr      r7, r30
    bl      appearWithTime__6TShineFiiii
    mr      r3, r31
    lmw     r26, 0x48(sp)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lfd     f29, 0x60(sp)
    addi    sp, sp, 0x78
    blr


.globl resetNozzleBoxesModel__12TItemManagerFi
resetNozzleBoxesModel__12TItemManagerFi: # 0x801c02e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stmw    r27, 0x3c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    li      r30, 0x0
    li      r31, 0x0
    lfs     f31, -0x2b48(r2)
    b       branch_0x801c03a0

branch_0x801c0310:
    lwz     r3, 0x18(r27)
    lwzx    r4, r3, r31
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x68
    bne-    branch_0x801c0330
    li      r0, 0x1
    b       branch_0x801c0334

branch_0x801c0330:
    li      r0, 0x0
branch_0x801c0334:
    clrlwi. r0, r0, 24
    beq-    branch_0x801c0398
    lwz     r0, 0x148(r4)
    addi    r29, r4, 0x0
    cmpw    r28, r0
    bne-    branch_0x801c0398
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x801c0390
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r29, 0x10
    li      r4, 0xe4
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801c0390
    stfs    f31, 0x154(r3)
    stfs    f31, 0x158(r3)
    stfs    f31, 0x15c(r3)
    stfs    f31, 0x174(r3)
    stfs    f31, 0x178(r3)
    stfs    f31, 0x17c(r3)
branch_0x801c0390:
    mr      r3, r29
    bl      makeModelValid__10TNozzleBoxFv
branch_0x801c0398:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801c03a0:
    lwz     r0, 0x14(r27)
    cmpw    r30, r0
    blt+    branch_0x801c0310
    lmw     r27, 0x3c(sp)
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __sinit_ItemManager_cpp
__sinit_ItemManager_cpp: # 0x801c03c4
    mflr    r0
    lis     r3, unk_803f94c8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f94c8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801c040c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801c040c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801c043c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801c043c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801c046c
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801c046c:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801c049c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801c049c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801c04cc
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801c04cc:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801c04fc
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801c04fc:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801c052c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801c052c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801c055c
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801c055c:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801c058c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801c058c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801c05bc
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801c05bc:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801c05ec
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801c05ec:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801c061c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801c061c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801c064c
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801c064c:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801c067c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801c067c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801c06ac
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801c06ac:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

