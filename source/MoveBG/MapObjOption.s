
.globl __dt__14TFileLoadBlockFv
__dt__14TFileLoadBlockFv: # 0x801eed9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801eee04
    lis     r3, __vvt__14TFileLoadBlock@h
    addi    r3, r3, __vvt__14TFileLoadBlock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801eedf4
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801eedf4:
    extsh.  r0, r31
    ble-    branch_0x801eee04
    mr      r3, r30
    bl      __dl__FPv
branch_0x801eee04:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMapObjOptionWallFPCc
__ct__17TMapObjOptionWallFPCc: # 0x801eee20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__17TMapObjOptionWall@h
    addi    r3, r3, __vvt__17TMapObjOptionWall@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__17TMapObjOptionWallFv
init__17TMapObjOptionWallFv: # 0x801eee6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x68
    stw     r30, 0x10(sp)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801eee9c
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x801eee9c:
    stw     r30, 0x68(r31)
    lis     r3, unk_803939c8@h
    addi    r4, r3, unk_803939c8@l
    lwz     r3, 0x68(r31)
    li      r5, 0x0
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


.globl offCollision__17TMapObjOptionWallFv
offCollision__17TMapObjOptionWallFv: # 0x801eeedc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl onCollision__17TMapObjOptionWallFv
onCollision__17TMapObjOptionWallFv: # 0x801eef0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__14TFileLoadBlockFPCc
__ct__14TFileLoadBlockFPCc: # 0x801eef3c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__14TFileLoadBlock@h
    addi    r3, r3, __vvt__14TFileLoadBlock@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    lfs     f0, -0x21c0(r2)
    stfs    f0, 0x14c(r31)
    stfs    f0, 0x148(r31)
    stfs    f0, 0x144(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__14TFileLoadBlockFv
initMapObj__14TFileLoadBlockFv: # 0x801eefa0
    mflr    r0
    lis     r4, unk_803938d0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, unk_803938d0@l
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r3, 0x0
    bl      initMapObj__11TMapObjBaseFv
    lwz     r4, 0xf4(r29)
    addi    r3, r31, 0x118
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801eefe8
    li      r0, 0x0
    stb     r0, 0x138(r29)
    b       branch_0x801ef024

branch_0x801eefe8:
    lwz     r4, 0xf4(r29)
    addi    r3, r31, 0x128
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ef008
    li      r0, 0x1
    stb     r0, 0x138(r29)
    b       branch_0x801ef024

branch_0x801ef008:
    lwz     r4, 0xf4(r29)
    addi    r3, r31, 0x138
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ef024
    li      r0, 0x2
    stb     r0, 0x138(r29)
branch_0x801ef024:
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r30, r3, 0x6e
    lbz     r0, 0x6e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801ef054
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r31, 0x148
    li      r5, 0x6e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x801ef054:
    lfs     f2, 0x18(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x10(r29)
    stfs    f0, 0x144(r29)
    stfs    f1, 0x148(r29)
    stfs    f2, 0x14c(r29)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl loadAfter__14TFileLoadBlockFv
loadAfter__14TFileLoadBlockFv: # 0x801ef088
    mflr    r0
    lis     r4, unk_803938d0@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xa8(sp)
    addi    r30, r4, unk_803938d0@l
    stw     r29, 0xa4(sp)
    bl      loadAfter__11TMapObjBaseFv
    lbz     r0, 0x138(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801ef120
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x16c
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x16c
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r3, r30, 0x180
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x180
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
    b       branch_0x801ef1ec

branch_0x801ef120:
    cmplwi  r0, 0x1
    bne-    branch_0x801ef18c
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x194
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x194
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r3, r30, 0x180
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x180
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
    b       branch_0x801ef1ec

branch_0x801ef18c:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0x194
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x194
    mtlr    r12
    blrl
    stw     r3, 0x13c(r31)
    addi    r3, r30, 0x16c
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x16c
    mtlr    r12
    blrl
    stw     r3, 0x140(r31)
branch_0x801ef1ec:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl receiveMessage__14TFileLoadBlockFP9THitActorUl
receiveMessage__14TFileLoadBlockFP9THitActorUl: # 0x801ef208
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801ef230
    li      r0, 0x1
    b       branch_0x801ef234

branch_0x801ef230:
    li      r0, 0x0
branch_0x801ef234:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ef2e4
    cmplwi  r5, 0x2
    bne-    branch_0x801ef2e4
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ef258
    li      r0, 0x1
    b       branch_0x801ef25c

branch_0x801ef258:
    li      r0, 0x0
branch_0x801ef25c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ef2e4
    lis     r3, unk_80393a78@h
    addi    r4, r3, unk_80393a78@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r3, R13Off_m0x63e0(r13)
    lbz     r4, 0x138(r31)
    bl      setSelected__9TCardLoadFUc
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    lwz     r5, R13Off_m0x7840(r13)
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x144
    li      r4, 0x6e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x144
    li      r4, 0x39
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x78
    stw     r0, 0x104(r31)
    li      r3, 0x1
    lwz     r4, 0x13c(r31)
    stw     r0, 0x104(r4)
    lwz     r4, 0x140(r31)
    stw     r0, 0x104(r4)
    b       branch_0x801ef2e8

branch_0x801ef2e4:
    li      r3, 0x0
branch_0x801ef2e8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl touchPlayer__14TFileLoadBlockFP9THitActor
touchPlayer__14TFileLoadBlockFP9THitActor: # 0x801ef2fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x801ef324
    li      r0, 0x1
    b       branch_0x801ef328

branch_0x801ef324:
    li      r0, 0x0
branch_0x801ef328:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ef3d8
    mr      r3, r31
    bl      marioHeadAttack__11TMapObjBaseCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x801ef3d8
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ef354
    li      r0, 0x1
    b       branch_0x801ef358

branch_0x801ef354:
    li      r0, 0x0
branch_0x801ef358:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ef3d8
    lis     r3, unk_80393a78@h
    addi    r4, r3, unk_80393a78@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r3, R13Off_m0x63e0(r13)
    lbz     r4, 0x138(r31)
    bl      setSelected__9TCardLoadFUc
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x15
    lwz     r5, R13Off_m0x7840(r13)
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x144
    li      r4, 0x6e
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x144
    li      r4, 0x39
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0x78
    stw     r0, 0x104(r31)
    lwz     r3, 0x13c(r31)
    stw     r0, 0x104(r3)
    lwz     r3, 0x140(r31)
    stw     r0, 0x104(r3)
branch_0x801ef3d8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl makeBlockRock__14TFileLoadBlockFv
makeBlockRock__14TFileLoadBlockFv: # 0x801ef3ec
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeBlockNormal__14TFileLoadBlockFv
makeBlockNormal__14TFileLoadBlockFv: # 0x801ef424
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    li      r0, 0x1
    sth     r0, 0xfc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__17TMapObjOptionWallFv
__dt__17TMapObjOptionWallFv: # 0x801ef45c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ef4c4
    lis     r3, __vvt__17TMapObjOptionWall@h
    addi    r3, r3, __vvt__17TMapObjOptionWall@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ef4b4
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801ef4b4:
    extsh.  r0, r31
    ble-    branch_0x801ef4c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ef4c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjOption_cpp
__sinit_MapObjOption_cpp: # 0x801ef4e0
    mflr    r0
    lis     r3, unk_803fa648@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fa648@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef528
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801ef528:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef558
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801ef558:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef588
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801ef588:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef5b8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801ef5b8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef5e8
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801ef5e8:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef618
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801ef618:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef648
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801ef648:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef678
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801ef678:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef6a8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801ef6a8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef6d8
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801ef6d8:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef708
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801ef708:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef738
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801ef738:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef768
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801ef768:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef798
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801ef798:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801ef7c8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801ef7c8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801ef7dc
unk_801ef7dc: # 0x801ef7dc
    addi    r3, r3, -0x20
    b       __dt__17TMapObjOptionWallFv


.globl unk_801ef7e4
unk_801ef7e4: # 0x801ef7e4
    addi    r3, r3, -0x20
    b       __dt__14TFileLoadBlockFv

