
.globl __dt__17TMapObjSoundGroupFv
__dt__17TMapObjSoundGroupFv: # 0x80195938
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80195990
    lis     r3, __vvt__17TMapObjSoundGroup@h
    addi    r0, r3, __vvt__17TMapObjSoundGroup@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80195980
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80195980:
    extsh.  r0, r31
    ble-    branch_0x80195990
    mr      r3, r30
    bl      __dl__FPv
branch_0x80195990:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__17TMapObjSoundGroupFPCc
__ct__17TMapObjSoundGroupFPCc: # 0x801959ac
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
    lis     r3, __vvt__17TMapObjSoundGroup@h
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__17TMapObjSoundGroup@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__17TMapObjSoundGroupFR20JSUMemoryInputStream
load__17TMapObjSoundGroupFR20JSUMemoryInputStream: # 0x80195a20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x10(sp)
    addi    r28, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    mr      r3, r29
    bl      readString__14JSUInputStreamFv
    mr      r0, r3
    lwz     r3, R13Off_m0x70b0(r13)
    mr      r29, r0
    addi    r4, r29, 0x0
    bl      getGraphByName__10TConductorFPCc
    stw     r3, 0x14(r28)
    lwz     r3, 0x14(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x80195af4
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    beq-    branch_0x80195a84
    b       branch_0x80195af4

branch_0x80195a84:
    lis     r3, sound_info@ha
    li      r30, 0x0
    addi    r31, r3, sound_info@l
    b       branch_0x80195abc

branch_0x80195a94:
    mr      r4, r29
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80195ab8
    lis     r3, sound_info@ha
    addi    r0, r3, sound_info@l
    add     r3, r0, r30
    lwz     r0, 0x4(r3)
    b       branch_0x80195ad0

branch_0x80195ab8:
    addi    r30, r30, 0x8
branch_0x80195abc:
    add     r3, r31, r30
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    bne+    branch_0x80195a94
    li      r0, 0x0
branch_0x80195ad0:
    stw     r0, 0x18(r28)
    li      r3, 0x44c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80195af0
    addi    r3, r29, 0x0
    li      r4, -0x1
    bl      __ct__9MSSceneSEFUl
branch_0x80195af0:
    stw     r29, 0x10(r28)
branch_0x80195af4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl perform__17TMapObjSoundGroupFUlPQ26JDrama9TGraphics
perform__17TMapObjSoundGroupFUlPQ26JDrama9TGraphics: # 0x80195b14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xcb8(sp)
    stmw    r26, 0xca0(sp)
    mr      r28, r3
    mr      r26, r4
    lwz     r3, 0x14(r3)
    bl      isDummy__9TGraphWebCFv
    cmpwi   r3, 0x0
    bne-    branch_0x80195c90
    clrlwi. r0, r26, 31
    beq-    branch_0x80195c90
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r3, sp, 0xa0
    li      r5, 0x0
    li      r6, 0xc
    li      r7, 0x100
    bl      __construct_array
    lwz     r3, 0x14(r28)
    addi    r4, sp, 0x94
    lwz     r3, 0x0(r3)
    bl      getPoint__10TGraphNodeCFP3Vec
    addi    r31, sp, 0x64
    li      r30, 0x0
    li      r26, 0x0
    li      r29, 0x1
    li      r27, 0x10
    b       branch_0x80195c6c

branch_0x80195b88:
    lwz     r0, 0x0(r3)
    addi    r4, sp, 0x88
    add     r3, r0, r27
    bl      getPoint__10TGraphNodeCFP3Vec
    lwz     r4, R13Off_m0x7118(r13)
    addi    r6, r31, 0x0
    addi    r3, sp, 0x70
    addi    r7, r4, 0x124
    lfs     f0, 0x124(r4)
    addi    r4, sp, 0x94
    addi    r5, sp, 0x88
    stfs    f0, 0x64(sp)
    lfs     f0, 0x4(r7)
    stfs    f0, 0x68(sp)
    lfs     f0, 0x8(r7)
    stfs    f0, 0x6c(sp)
    bl      MsPerpendicFootToLineR__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x70(sp)
    addi    r4, sp, 0xa0
    lwz     r3, 0x74(sp)
    add     r4, r4, r26
    stw     r0, 0x7c(sp)
    lwz     r0, 0x78(sp)
    stw     r3, 0x80(sp)
    stw     r0, 0x84(sp)
    lfs     f0, 0x7c(sp)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x80(sp)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x84(sp)
    stfs    f0, 0x8(r4)
    lwz     r0, 0x88(sp)
    lwz     r3, 0x8c(sp)
    stw     r0, 0x94(sp)
    lwz     r0, 0x90(sp)
    stw     r3, 0x98(sp)
    stw     r0, 0x9c(sp)
    lwz     r4, 0x14(r28)
    lwz     r5, 0x0(r4)
    add     r3, r5, r27
    lwz     r3, 0x0(r3)
    lha     r0, 0x6(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80195c5c
    lwz     r3, 0x8(r4)
    addi    r0, r3, -0x1
    cmpw    r29, r0
    bge-    branch_0x80195c5c
    addi    r27, r27, 0x10
    add     r3, r5, r27
    addi    r29, r29, 0x1
    addi    r4, sp, 0x94
    bl      getPoint__10TGraphNodeCFP3Vec
branch_0x80195c5c:
    addi    r29, r29, 0x1
    addi    r27, r27, 0x10
    addi    r30, r30, 0x1
    addi    r26, r26, 0xc
branch_0x80195c6c:
    lwz     r3, 0x14(r28)
    lwz     r0, 0x8(r3)
    cmpw    r29, r0
    blt+    branch_0x80195b88
    lwz     r3, 0x10(r28)
    addi    r5, sp, 0xa0
    lwz     r4, 0x18(r28)
    clrlwi  r6, r30, 24
    bl      frameLoop__9MSSceneSEFUlP3VecUc
branch_0x80195c90:
    lmw     r26, 0xca0(sp)
    lwz     r0, 0xcbc(sp)
    addi    sp, sp, 0xcb8
    mtlr    r0
    blr


.globl perform__14TMapModelActorFUlPQ26JDrama9TGraphics
perform__14TMapModelActorFUlPQ26JDrama9TGraphics: # 0x80195ca4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    mr      r29, r3
    lwz     r3, 0x68(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80195d64
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x80195d54
    lfs     f0, 0x38(r29)
    lfs     f2, -0x424c(r2)
    lfs     f1, 0x34(r29)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r29)
    fmuls   f1, f2, f1
    lwz     r3, 0x4(r3)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f3, 0x18(r29)
    fctiwz  f5, f2
    lfs     f2, 0x14(r29)
    fctiwz  f0, f0
    stfd    f4, 0x48(sp)
    addi    r3, r3, 0x20
    lfs     f1, 0x10(r29)
    stfd    f5, 0x50(sp)
    lwz     r5, 0x4c(sp)
    stfd    f0, 0x40(sp)
    lwz     r4, 0x54(sp)
    lwz     r6, 0x44(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x68(r29)
    lwz     r3, 0x24(r29)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r4)
branch_0x80195d54:
    lwz     r3, 0x68(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x80195d64:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl __ct__13TMapStaticObjFPCc
__ct__13TMapStaticObjFPCc: # 0x80195d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__13TMapStaticObj@h
    addi    r3, r3, __vvt__13TMapStaticObj@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r4, 0x68(r31)
    stw     r4, 0x6c(r31)
    stw     r4, 0x70(r31)
    stw     r4, 0x74(r31)
    stw     r0, 0x78(r31)
    stw     r0, 0x7c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TMapStaticObjFR20JSUMemoryInputStream
load__13TMapStaticObjFR20JSUMemoryInputStream: # 0x80195de4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0x6c(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__13TMapStaticObjFv
loadAfter__13TMapStaticObjFv: # 0x80195e28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80195e58
    mr      r3, r31
    lwz     r4, 0x6c(r31)
    bl      init__13TMapStaticObjFPCc
branch_0x80195e58:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__13TMapStaticObjFPCc
init__13TMapStaticObjFPCc: # 0x80195e6c
    mflr    r0
    lis     r5, unk_80389350@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stw     r31, 0x114(sp)
    li      r31, 0x0
    stw     r30, 0x110(sp)
    addi    r30, r5, unk_80389350@l
    stw     r29, 0x10c(sp)
    stw     r28, 0x108(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x10(sp)
    lwz     r3, 0x10(sp)
    stw     r28, 0x6c(r3)
    b       branch_0x80195eac

branch_0x80195ea8:
    addi    r31, r31, 0x44
branch_0x80195eac:
    add     r29, r30, r31
    lwzu    r4, 0x304(r29)
    addi    r3, r28, 0x0
    bl      strcmp
    cmpwi   r3, 0x0
    bne+    branch_0x80195ea8
    lwz     r31, 0x10(sp)
    li      r5, 0x5
    stw     r29, 0x68(r31)
    mr      r3, r31
    lwz     r7, 0x68(r31)
    lwz     r4, 0x4(r7)
    lwz     r6, 0x8(r7)
    lfs     f1, 0xc(r7)
    lfs     f2, 0x10(r7)
    lfs     f3, 0x14(r7)
    lfs     f4, 0x18(r7)
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r3, 0x68(r31)
    lwz     r4, 0x20(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80195f0c
    mr      r3, r31
    bl      initModel__13TMapStaticObjFPCc
branch_0x80195f0c:
    lwz     r3, 0x10(sp)
    lwz     r3, 0x68(r3)
    lwz     r29, 0x28(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80195ff8
    lwz     r0, 0x40(r3)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80195f5c
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80195f50
    addi    r3, r28, 0x0
    li      r4, 0x1
    addi    r5, r2, R2Off_m0x4248
    li      r6, 0x0
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x80195f50:
    lwz     r3, 0x10(sp)
    stw     r28, 0x74(r3)
    b       branch_0x80195f88

branch_0x80195f5c:
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80195f80
    addi    r3, r28, 0x0
    addi    r5, r30, 0xadc
    li      r4, 0x1
    li      r6, 0x0
    bl      __ct__20TMapCollisionManagerFUsPCcPC10TLiveActor
branch_0x80195f80:
    lwz     r3, 0x10(sp)
    stw     r28, 0x74(r3)
branch_0x80195f88:
    lwz     r31, 0x10(sp)
    addi    r4, r29, 0x0
    li      r5, 0x0
    lwz     r3, 0x74(r31)
    li      r6, 0x0
    bl      init__20TMapCollisionManagerFPCcUsPCc
    lwz     r29, 0x74(r31)
    addi    r3, sp, 0xb0
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x10(r31)
    lfs     f2, 0x14(r31)
    lfs     f3, 0x18(r31)
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    lfs     f7, 0x24(r31)
    lfs     f8, 0x28(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r29, 0x8(r29)
    addi    r4, sp, 0xb0
    addi    r3, r29, 0x0
    bl      setMtx__17TMapCollisionBaseFPA4_f
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x80195ff8:
    lwz     r4, 0x10(sp)
    lwz     r3, 0x68(r4)
    lwz     r0, 0x30(r3)
    stw     r0, 0x78(r4)
    lwz     r3, 0x68(r4)
    lwz     r4, 0x34(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801960a8
    lbz     r0, 0x3c(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x801960a8
    bge-    branch_0x80196038
    cmpwi   r0, 0x0
    beq-    branch_0x801960a8
    bge-    branch_0x80196044
    b       branch_0x801960a8

branch_0x80196038:
    cmpwi   r0, 0x4
    bge-    branch_0x801960a8
    b       branch_0x80196078

branch_0x80196044:
    lwz     r5, 0x38(r3)
    lis     r3, gParticleFlagLoaded@ha
    addi    r0, r3, gParticleFlagLoaded@l
    clrlwi  r5, r5, 16
    add     r29, r0, r5
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801960a8
    lwz     r3, R13Off_m0x5fe0(r13)
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
    b       branch_0x801960a8

branch_0x80196078:
    lwz     r5, 0x38(r3)
    lis     r3, gParticleFlagLoaded@ha
    addi    r0, r3, gParticleFlagLoaded@l
    clrlwi  r5, r5, 16
    add     r29, r0, r5
    lbz     r0, 0x0(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801960a8
    lwz     r3, R13Off_m0x5fe0(r13)
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x801960a8:
    lwz     r3, 0x10(sp)
    lwz     r3, 0x68(r3)
    lwz     r31, 0x1c(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x80196130
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r31
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r31
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x8c
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x8c(sp)
    addi    r3, sp, 0x100
    addi    r4, sp, 0x88
    stw     r0, 0x88(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x100(sp)
    addi    r5, sp, 0xa8
    addi    r4, r31, 0x0
    stw     r0, 0xfc(sp)
    addi    r3, sp, 0xa4
    addi    r6, sp, 0x10
    lwz     r0, 0xfc(sp)
    stw     r0, 0xa8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x80196130:
    lwz     r31, 0x10(sp)
    lwz     r3, 0x68(r31)
    lwz     r0, 0x40(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8019621c
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r30, 0xae8
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xae8
    mtlr    r12
    blrl
    lwz     r5, 0x70(r31)
    addi    r4, r30, 0xb00
    lwz     r6, 0x10(r3)
    lwz     r3, 0x4(r5)
    lwz     r7, 0x20(r6)
    lwz     r6, 0x4(r3)
    lwz     r3, 0x0(r7)
    mr      r5, r7
    lwz     r8, 0xac(r6)
    lwz     r0, 0x4(r7)
    lwz     r6, 0x4(r8)
    stw     r3, 0x20(r6)
    stw     r0, 0x24(r6)
    lwz     r3, 0x8(r7)
    lwz     r0, 0xc(r7)
    stw     r3, 0x28(r6)
    stw     r0, 0x2c(r6)
    lwz     r3, 0x10(r7)
    lwz     r0, 0x14(r7)
    stw     r3, 0x30(r6)
    stw     r0, 0x34(r6)
    lwz     r3, 0x18(r7)
    lwz     r0, 0x1c(r7)
    stw     r3, 0x38(r6)
    stw     r0, 0x3c(r6)
    lwz     r3, 0x4(r8)
    lwz     r0, 0x3c(r3)
    addi    r6, r3, 0x3c
    addi    r3, r3, 0x20
    add     r0, r7, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r6)
    lwz     r3, 0x4(r8)
    lwz     r0, 0x2c(r3)
    addi    r6, r3, 0x2c
    addi    r3, r3, 0x20
    add     r0, r7, r0
    subf    r0, r3, r0
    stw     r0, 0x0(r6)
    lwz     r3, 0x70(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x8019621c:
    lwz     r3, 0x10(sp)
    bl      initUnique__13TMapStaticObjFv
    lwz     r4, 0x10(sp)
    lwz     r3, 0x68(r4)
    lwz     r0, 0x40(r3)
    rlwinm. r0, r0, 0, 26, 26
    beq-    branch_0x80196244
    lwz     r3, 0x70(r4)
    lwz     r3, 0x4(r3)
    bl      entryMirrorDrawBufferAlways__12TMirrorActorFP8J3DModel
branch_0x80196244:
    lwz     r0, 0x11c(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    mtlr    r0
    lwz     r29, 0x10c(sp)
    lwz     r28, 0x108(sp)
    addi    sp, sp, 0x118
    blr


.globl initModel__13TMapStaticObjFPCc
initModel__13TMapStaticObjFPCc: # 0x80196264
    mflr    r0
    lis     r5, unk_80389350@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, unk_80389350@l
    stw     r30, 0x138(sp)
    mr      r30, r3
    stw     r29, 0x134(sp)
    li      r29, 0x3
    lwz     r3, 0x68(r3)
    lwz     r3, 0x40(r3)
    rlwinm. r0, r3, 0, 25, 25
    beq-    branch_0x801962a4
    clrrwi  r29, r29, 1
branch_0x801962a4:
    rlwinm. r0, r3, 0, 30, 30
    beq-    branch_0x801962e8
    addi    r6, r31, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2c
    addi    r5, r4, 0xb10
    li      r4, 0x100
    bl      snprintf
    lwz     r4, R13Off_m0x62b8(r13)
    mr      r5, r29
    lwz     r6, 0x68(r30)
    addi    r3, sp, 0x2c
    lwz     r4, 0x40(r4)
    lwz     r6, 0x24(r6)
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x70(r30)
    b       branch_0x8019636c

branch_0x801962e8:
    rlwinm. r0, r3, 0, 29, 29
    beq-    branch_0x80196330
    addi    r6, r31, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2c
    addi    r5, r4, 0xb24
    li      r4, 0x100
    bl      snprintf
    lwz     r3, R13Off_m0x62b8(r13)
    bl      getMActorAnmData__11TObjManagerFv
    lwz     r5, 0x68(r30)
    mr      r4, r3
    addi    r3, sp, 0x2c
    lwz     r6, 0x24(r5)
    addi    r5, r29, 0x0
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x70(r30)
    b       branch_0x8019636c

branch_0x80196330:
    addi    r6, r31, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x2c
    addi    r5, r4, 0xb3c
    li      r4, 0x100
    bl      snprintf
    lwz     r6, R13Off_m0x6328(r13)
    mr      r5, r29
    lwz     r4, 0x68(r30)
    addi    r3, sp, 0x2c
    lwz     r7, 0x14(r6)
    lwz     r6, 0x24(r4)
    addi    r4, r7, 0x20
    bl      SMS_MakeMActorWithAnmData__FPCcP13MActorAnmDataUlUl
    stw     r3, 0x70(r30)
branch_0x8019636c:
    lwz     r3, 0x70(r30)
    mr      r4, r31
    bl      startAllAnim__11TMapObjBaseFP6MActorPCc
    lwz     r0, 0x144(sp)
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    lwz     r29, 0x134(sp)
    addi    sp, sp, 0x140
    blr


.globl initUnique__13TMapStaticObjFv
initUnique__13TMapStaticObjFv: # 0x80196394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    addi    r31, r3, 0x0
    lis     r3, unk_40000024@h
    stw     r30, 0x108(sp)
    addi    r0, r3, unk_40000024@l
    lis     r3, unk_80389350@ha
    stw     r29, 0x104(sp)
    addi    r29, r3, unk_80389350@l
    stw     r28, 0x100(sp)
    lwz     r4, 0x4c(r31)
    cmpw    r4, r0
    beq-    branch_0x801963d4
    b       branch_0x801963f8

branch_0x801963d4:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801963f0
    lfs     f0, -0x4240(r2)
    stfs    f0, -0x6310(r13)
    b       branch_0x801963f8

branch_0x801963f0:
    lfs     f0, -0x4240(r2)
    stfs    f0, -0x6310(r13)
branch_0x801963f8:
    lwz     r3, 0x6c(r31)
    addi    r4, r29, 0x114
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80196518
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x423c
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x423c
    mtlr    r12
    blrl
    lwz     r3, 0x70(r31)
    li      r5, 0x3
    lwz     r4, R13Off_m0x62b8(r13)
    lwz     r3, 0x4(r3)
    lwz     r4, 0x68(r4)
    lwz     r3, 0x4(r3)
    bl      setMaterialTable__12J3DModelDataFP16J3DMaterialTable19J3DMaterialCopyFlag
    lwz     r3, 0x70(r31)
    bl      initDL__6MActorFv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r29, 0xb54
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0xb54
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    lis     r3, j3dSys@h
    addi    r30, r3, j3dSys@l
    stw     r0, 0x44(r30)
    addi    r3, r29, 0xb6c
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r29, 0xb6c
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    stw     r0, 0x48(r30)
    lwz     r3, 0x70(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x70(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x70(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    b       branch_0x801965d8

branch_0x80196518:
    lwz     r3, 0x6c(r31)
    addi    r4, r29, 0x184
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x80196548
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0xd
    bne-    branch_0x801965d8
    li      r0, 0x3000
    stw     r0, 0x78(r31)
    b       branch_0x801965d8

branch_0x80196548:
    lwz     r3, 0x6c(r31)
    addi    r4, r29, 0x288
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801965d8
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x8
    beq-    branch_0x8019657c
    bge-    branch_0x801965d8
    cmpwi   r0, 0x2
    beq-    branch_0x801965c8
    b       branch_0x801965d8

branch_0x8019657c:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x6
    bgt-    branch_0x801965b4
    lis     r3, unk_803c1b54@h
    addi    r3, r3, unk_803c1b54@l
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
branch_0x801965a0:
    li      r0, 0x5820
    stw     r0, 0x78(r31)
    li      r0, 0x0
    stw     r0, 0x7c(r31)
    b       branch_0x801965d8

branch_0x801965b4:
    li      r0, 0x581b
    stw     r0, 0x78(r31)
    li      r0, 0x0
    stw     r0, 0x7c(r31)
    b       branch_0x801965d8

branch_0x801965c8:
    li      r0, 0x5814
    stw     r0, 0x78(r31)
    li      r0, 0x0
    stw     r0, 0x7c(r31)
branch_0x801965d8:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801965f4
    lwz     r3, 0x78(r31)
    addi    r4, r31, 0x10
    bl      registerTrans__Q214MSoundSESystem10MSRandPlayFUlPC3Vec
    stw     r3, 0x7c(r31)
branch_0x801965f4:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    lwz     r29, 0x104(sp)
    lwz     r28, 0x100(sp)
    addi    sp, sp, 0x110
    blr


.globl perform__13TMapStaticObjFUlPQ26JDrama9TGraphics
perform__13TMapStaticObjFUlPQ26JDrama9TGraphics: # 0x80196614
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x150(sp)
    stmw    r25, 0x134(sp)
    addi    r29, r4, 0x0
    addi    r28, r3, 0x0
    addi    r30, r5, 0x0
    beq-    branch_0x80196730
    lwz     r27, 0x78(r28)
    addis   r0, r27, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801966ac
    lwz     r31, 0x7c(r28)
    addis   r0, r31, 0x1
    cmplwi  r0, 0xffff
    bne-    branch_0x8019668c
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r27
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801966ac
    addi    r3, r27, 0x0
    addi    r4, r28, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801966ac

branch_0x8019668c:
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r27
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801966ac
    addi    r3, r27, 0x0
    addi    r4, r31, 0x0
    bl      startSeRandPlay__Q214MSoundSESystem10MSRandPlayFUlUl
branch_0x801966ac:
    lwz     r4, 0x68(r28)
    li      r3, 0x0
    lbz     r6, 0x3c(r4)
    cmplwi  r6, 0x1
    bne-    branch_0x801966d8
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r28, 0x0
    lwz     r4, 0x38(r4)
    addi    r5, r28, 0x10
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x801966f4

branch_0x801966d8:
    cmplwi  r6, 0x3
    bne-    branch_0x801966f4
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r28, 0x0
    lwz     r4, 0x38(r4)
    addi    r5, r28, 0x10
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x801966f4:
    lis     r4, unk_40000024@h
    lwz     r5, 0x4c(r28)
    addi    r0, r4, unk_40000024@l
    cmpw    r5, r0
    beq-    branch_0x8019670c
    b       branch_0x80196730

branch_0x8019670c:
    cmplwi  r3, 0x0
    beq-    branch_0x80196730
    lfs     f0, -0x6310(r13)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x80196730:
    rlwinm. r0, r29, 0, 29, 29
    beq-    branch_0x80196784
    lwz     r3, 0x68(r28)
    lwz     r0, 0x40(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x80196784
    addi    r3, sp, 0xd4
    bl      SMS_GetLightPerspectiveForEffectMtx__FPA4_f
    lwz     r3, 0x70(r28)
    li      r4, 0x1
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x24(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x34(r12)
    mtlr    r12
    blrl
    addi    r4, sp, 0xd4
    bl      setEffectMtx__13J3DTexMtxInfoFPA4_f
branch_0x80196784:
    rlwinm. r0, r29, 0, 22, 22
    beq-    branch_0x801967b0
    lwz     r3, 0x68(r28)
    lwz     r3, 0x40(r3)
    rlwinm. r0, r3, 0, 28, 28
    bne-    branch_0x801967a4
    rlwinm. r0, r3, 0, 26, 26
    beq-    branch_0x801967b0
branch_0x801967a4:
    rlwinm  r29, r29, 0, 23, 21
    lwz     r3, 0x70(r28)
    bl      updateMatAnm__6MActorFv
branch_0x801967b0:
    rlwinm. r31, r29, 0, 22, 22
    beq-    branch_0x801967ec
    lwz     r3, 0x68(r28)
    lwz     r0, 0x40(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801967ec
    lwz     r3, R13Off_m0x6318(r13)
    lwz     r0, 0x18(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x801967e0
    li      r0, 0x1
    b       branch_0x801967e4

branch_0x801967e0:
    li      r0, 0x0
branch_0x801967e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801968f0
branch_0x801967ec:
    lwz     r3, 0x70(r28)
    cmplwi  r3, 0x0
    beq-    branch_0x801968f0
    rlwinm. r0, r29, 0, 30, 30
    beq-    branch_0x80196878
    lfs     f0, 0x38(r28)
    lfs     f2, -0x424c(r2)
    lfs     f1, 0x34(r28)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r28)
    fmuls   f1, f2, f1
    lwz     r3, 0x4(r3)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f3, 0x18(r28)
    fctiwz  f5, f2
    lfs     f2, 0x14(r28)
    fctiwz  f0, f0
    stfd    f4, 0x120(sp)
    addi    r3, r3, 0x20
    lfs     f1, 0x10(r28)
    stfd    f5, 0x128(sp)
    lwz     r5, 0x124(sp)
    stfd    f0, 0x118(sp)
    lwz     r4, 0x12c(sp)
    lwz     r6, 0x11c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r4, 0x70(r28)
    lwz     r3, 0x24(r28)
    lwz     r4, 0x4(r4)
    lwz     r0, 0x28(r28)
    stw     r3, 0x14(r4)
    stw     r0, 0x18(r4)
    lwz     r0, 0x2c(r28)
    stw     r0, 0x1c(r4)
branch_0x80196878:
    cmplwi  r31, 0x0
    beq-    branch_0x801968e0
    lwz     r3, 0x68(r28)
    lwz     r0, 0x40(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801968e0
    lwz     r6, R13Off_m0x62b8(r13)
    lis     r3, j3dSys@h
    addi    r4, r3, j3dSys@l
    lwz     r3, 0x60(r6)
    addi    r26, r4, 0x44
    addi    r25, r4, 0x48
    lwz     r31, 0x44(r4)
    lwz     r27, 0x48(r4)
    lwz     r0, 0x10(r3)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    stw     r0, 0x0(r26)
    lwz     r3, 0x64(r6)
    lwz     r0, 0x10(r3)
    stw     r0, 0x0(r25)
    lwz     r3, 0x70(r28)
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    stw     r31, 0x0(r26)
    stw     r27, 0x0(r25)
    b       branch_0x801968f0

branch_0x801968e0:
    lwz     r3, 0x70(r28)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
branch_0x801968f0:
    lmw     r25, 0x134(sp)
    lwz     r0, 0x154(sp)
    addi    sp, sp, 0x150
    mtlr    r0
    blr


.globl getModelData__13TMapStaticObjCFv
getModelData__13TMapStaticObjCFv: # 0x80196904
    lwz     r3, 0x70(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    blr


.globl __dt__14TMapModelActorFv
__dt__14TMapModelActorFv: # 0x80196914
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8019697c
    lis     r3, __vvt__14TMapModelActor@h
    addi    r3, r3, __vvt__14TMapModelActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8019696c
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8019696c:
    extsh.  r0, r31
    ble-    branch_0x8019697c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8019697c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__13TMapStaticObjFv
__dt__13TMapStaticObjFv: # 0x80196998
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80196a00
    lis     r3, __vvt__13TMapStaticObj@h
    addi    r3, r3, __vvt__13TMapStaticObj@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801969f0
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801969f0:
    extsh.  r0, r31
    ble-    branch_0x80196a00
    mr      r3, r30
    bl      __dl__FPv
branch_0x80196a00:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapStaticObject_cpp
__sinit_MapStaticObject_cpp: # 0x80196a1c
    mflr    r0
    lis     r3, unk_803f81a0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f81a0@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80196a64
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80196a64:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80196a94
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80196a94:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80196ac4
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80196ac4:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80196af4
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80196af4:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80196b24
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80196b24:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80196b54
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80196b54:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80196b84
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80196b84:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80196bb4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80196bb4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80196be4
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80196be4:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80196c14
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80196c14:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80196c44
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80196c44:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80196c74
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80196c74:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80196ca4
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80196ca4:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80196cd4
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80196cd4:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80196d04
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80196d04:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_80196d18
unk_80196d18: # 0x80196d18
    addi    r3, r3, -0x20
    b       __dt__13TMapStaticObjFv


.globl unk_80196d20
unk_80196d20: # 0x80196d20
    addi    r3, r3, -0x20
    b       __dt__14TMapModelActorFv

