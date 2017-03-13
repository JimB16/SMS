
.globl __ct__11TMapObjBaseFPCc
__ct__11TMapObjBaseFPCc: # 0x801af6a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__10TLiveActorFPCc
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, 0x1
    stw     r0, 0x20(r31)
    li      r5, 0x0
    li      r4, 0x1
    stw     r5, 0xf4(r31)
    subi    r0, r3, 0x1
    addi    r3, r31, 0x0
    stw     r5, 0xf8(r31)
    sth     r4, 0xfc(r31)
    sth     r0, 0xfe(r31)
    sth     r0, 0x100(r31)
    sth     r5, 0x102(r31)
    stw     r5, 0x104(r31)
    lfs     f0, -0x3e28(rtoc)
    stfs    f0, 0x108(r31)
    stw     r5, 0x130(r31)
    stw     r5, 0x134(r31)
    stfs    f0, 0x114(r31)
    stfs    f0, 0x110(r31)
    stfs    f0, 0x10c(r31)
    stfs    f0, 0x120(r31)
    stfs    f0, 0x11c(r31)
    stfs    f0, 0x118(r31)
    lfs     f0, -0x3e24(rtoc)
    stfs    f0, 0x124(r31)
    stfs    f0, 0x128(r31)
    stfs    f0, 0x12c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


# TMapObjBase::load((JSUMemoryInputStream &))
.globl load__11TMapObjBaseFR20JSUMemoryInputStream
load__11TMapObjBaseFR20JSUMemoryInputStream: # 0x801af750

.set var_10, -0x10
.set var_8, -8
.set var_4, -4
.set arg_4,  4

    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x28+var_4(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x28+var_8(sp)

    addi    r30, r3, 0x0
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream

    mr      r3, r31
    bl      readString__14JSUInputStreamFv
    stw     r3, 0xf4(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    lwz     r12, 0x0(r30)
    lwz     r12, 0x124(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    addi    r3, r30, 0x0
    rlwinm  r0, r0, 0, 14, 12
    stw     r0, 0xf8(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801af81c
    addi    r3, r31, 0x0
    addi    r4, sp, 0x28+var_10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x28+var_10(sp)
    mr      r3, r30
    stfs    f0, 0x5c(r30)
    bl      calcEntryRadius__9THitActorFv
    lfs     f0, 0x28+var_10(sp)
    mr      r3, r30
    stfs    f0, 0x54(r30)
    bl      calcEntryRadius__9THitActorFv
    lwz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 30, 28
    stw     r0, 0x64(r30)
    lwz     r0, 0x64(r30)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0x64(r30)
branch_0x801af81c:
    lwz     r0, 0x28+arg_4(sp)
    lwz     r31, 0x28+var_4(sp)
    lwz     r30, 0x28+var_8(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


# TMapObjBase::loadAfter((void))
.globl loadAfter__11TMapObjBaseFv
loadAfter__11TMapObjBaseFv: # 0x801af834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__Q26JDrama8TNameRefFv
    lwz     r3, gpMap(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


# TMapObjBase::initAndRegister((char const *))
.globl initAndRegister__11TMapObjBaseFPCc
initAndRegister__11TMapObjBaseFPCc: # 0x801af874
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    stw     r4, 0xf4(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x120(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x130(r31)
    lwz     r30, 0xc(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x801af92c
    lwz     r4, -0x5db8(r13)
    mr      r3, r30
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x40
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x40(sp)
    addi    r3, sp, 0x5c
    addi    r4, sp, 0x3c
    stw     r0, 0x3c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x5c(sp)
    addi    r5, sp, 0x4c
    addi    r4, r31, 0x0
    stw     r0, 0x58(sp)
    addi    r3, sp, 0x48
    addi    r6, sp, 0x8
    lwz     r0, 0x58(sp)
    stw     r0, 0x4c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x801af92c:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl receiveMessage__11TMapObjBaseFP9THitActorUl
receiveMessage__11TMapObjBaseFP9THitActorUl: # 0x801af944
    mflr    r0
    cmplwi  r5, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801af970
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x801af970
    stw     r4, 0x6c(r3)
    li      r3, 0x1
    b       branch_0x801af990

branch_0x801af970:
    cmplwi  r5, 0xf
    bne-    branch_0x801af98c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14c(r12)
    mtlr    r12
    blrl
    b       branch_0x801af990

branch_0x801af98c:
    li      r3, 0x0
branch_0x801af990:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__11TMapObjBaseFv
calcRootMatrix__11TMapObjBaseFv: # 0x801af9a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r30)
    mr      r31, r3
    lfs     f2, -0x3e20(rtoc)
    addi    r3, r31, 0x20
    lfs     f1, 0x34(r30)
    fmuls   f0, f2, f0
    lfs     f3, 0x30(r30)
    fmuls   f1, f2, f1
    lfs     f7, 0x14(r30)
    fmuls   f2, f2, f3
    fctiwz  f4, f1
    lfs     f6, 0x108(r30)
    fctiwz  f5, f2
    lfs     f3, 0x18(r30)
    fctiwz  f0, f0
    stfd    f5, 0x28(sp)
    fsubs   f2, f7, f6
    lfs     f1, 0x10(r30)
    stfd    f4, 0x20(sp)
    lwz     r4, 0x2c(sp)
    stfd    f0, 0x18(sp)
    lwz     r5, 0x24(sp)
    lwz     r6, 0x1c(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r3, 0x24(r30)
    lwz     r0, 0x28(r30)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getRootJointMtx__11TMapObjBaseCFv
getRootJointMtx__11TMapObjBaseCFv: # 0x801afa4c
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x801afa68
    lfs     f1, -0x3e28(rtoc)
    lfs     f0, 0x108(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801afa78
branch_0x801afa68:
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    blr

branch_0x801afa78:
    li      r3, 0x0
    blr


.globl getShadowType__11TMapObjBaseFv
getShadowType__11TMapObjBaseFv: # 0x801afa80
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x34
    bne-    branch_0x801afa98
    li      r0, 0x1
    b       branch_0x801afa9c

branch_0x801afa98:
    li      r0, 0x0
branch_0x801afa9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801afb24
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x35
    bne-    branch_0x801afab8
    li      r0, 0x1
    b       branch_0x801afabc

branch_0x801afab8:
    li      r0, 0x0
branch_0x801afabc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801afb24
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x36
    bne-    branch_0x801afad8
    li      r0, 0x1
    b       branch_0x801afadc

branch_0x801afad8:
    li      r0, 0x0
branch_0x801afadc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801afb24
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x37
    bne-    branch_0x801afaf8
    li      r0, 0x1
    b       branch_0x801afafc

branch_0x801afaf8:
    li      r0, 0x0
branch_0x801afafc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801afb24
    addis   r0, r4, 0xc000
    cmplwi  r0, 0x39
    bne-    branch_0x801afb18
    li      r0, 0x1
    b       branch_0x801afb1c

branch_0x801afb18:
    li      r0, 0x0
branch_0x801afb1c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801afb2c
branch_0x801afb24:
    li      r3, 0x2
    blr

branch_0x801afb2c:
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x801afb40
    li      r3, 0x1
    blr

branch_0x801afb40:
    li      r3, 0x0
    blr


.globl perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
perform__11TMapObjBaseFUlPQ26JDrama9TGraphics: # 0x801afb48
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x88(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x84(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x80(sp)
    lwz     r6, gpMarDirector(r13)
    lbz     r3, 0x124(r6)
    cmplwi  r3, 0x1
    beq-    branch_0x801afb90
    cmplwi  r3, 0x2
    beq-    branch_0x801afb90
    li      r0, 0x0
branch_0x801afb90:
    clrlwi. r0, r0, 24
    beq-    branch_0x801afca4
    cmplwi  r3, 0x3
    li      r0, 0x1
    beq-    branch_0x801afbb0
    cmplwi  r3, 0x4
    beq-    branch_0x801afbb0
    li      r0, 0x0
branch_0x801afbb0:
    clrlwi. r0, r0, 24
    bne-    branch_0x801afca4
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x801aff54
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x3b
    bne-    branch_0x801afbdc
    li      r0, 0x1
    b       branch_0x801afbe0

branch_0x801afbdc:
    li      r0, 0x0
branch_0x801afbe0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801afbec
    b       branch_0x801aff54

branch_0x801afbec:
    clrlwi. r0, r30, 31
    beq-    branch_0x801afc0c
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc4(r12)
    mtlr    r12
    blrl
    clrrwi  r30, r30, 1
branch_0x801afc0c:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x801afc78
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801afc78
    lwz     r0, 0xf0(r29)
    andi.   r0, r0, 0x204
    beq-    branch_0x801afc54
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x84(r3)
    lbz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801afc78
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    bl      SMS_HideAllShapePacket__FP8J3DModel
    b       branch_0x801afc78

branch_0x801afc54:
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x84(r3)
    lbz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801afc78
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
branch_0x801afc78:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 22, 22
    bne-    branch_0x801aff54
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xec(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801afca4
    rlwinm  r30, r30, 0, 31, 29
branch_0x801afca4:
    clrlwi. r0, r30, 31
    beq-    branch_0x801afdb0
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0x0
    ble-    branch_0x801afcc0
    li      r0, 0x1
    b       branch_0x801afcc4

branch_0x801afcc0:
    li      r0, 0x0
branch_0x801afcc4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801afcd8
    lwz     r3, 0x104(r29)
    subi    r0, r3, 0x1
    stw     r0, 0x104(r29)
branch_0x801afcd8:
    lhz     r0, 0x100(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801afd90
    lwz     r3, 0x130(r29)
    lwz     r3, 0x1c(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x801afd48
    lis     r3, 0x803c
    slwi    r4, r0, 2
    addi    r0, r3, 0x2c58
    add     r3, r0, r4
    lwz     r28, 0x0(r3)
    addis   r0, r28, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801afd90
    lwz     r3, gpMSound(r13)
    mr      r4, r28
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801afd90
    addi    r3, r28, 0x0
    addi    r4, r29, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801afd90

branch_0x801afd48:
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    lwzx    r28, r3, r0
    addis   r0, r28, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801afd90
    lwz     r3, gpMSound(r13)
    mr      r4, r28
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801afd90
    addi    r3, r28, 0x0
    addi    r4, r29, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801afd90:
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    beq-    branch_0x801afdb0
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x140(r12)
    mtlr    r12
    blrl
branch_0x801afdb0:
    lwz     r0, 0xf0(r29)
    clrlwi. r0, r0, 31
    bne-    branch_0x801aff54
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x801afdd8
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x13c(r12)
    mtlr    r12
    blrl
branch_0x801afdd8:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x801afe08
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x801afdf0
    rlwinm  r30, r30, 0, 31, 29
branch_0x801afdf0:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x801afdfc
    rlwinm  r30, r30, 0, 23, 21
branch_0x801afdfc:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x801afe08
    rlwinm  r30, r30, 0, 30, 28
branch_0x801afe08:
    rlwinm. r0, r30, 0, 30, 30
    beq-    branch_0x801afed0
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x138(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801afe88
    lwz     r0, 0xf0(r29)
    andi.   r0, r0, 0x204
    beq-    branch_0x801afe64
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x84(r3)
    lbz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801afe88
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    bl      SMS_HideAllShapePacket__FP8J3DModel
    b       branch_0x801afe88

branch_0x801afe64:
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x84(r3)
    lbz     r0, 0x30(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801afe88
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
branch_0x801afe88:
    lwz     r3, 0xf8(r29)
    rlwinm. r0, r3, 0, 23, 23
    beq-    branch_0x801afe9c
    rlwinm  r30, r30, 0, 31, 29
    b       branch_0x801afed0

branch_0x801afe9c:
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x801afed0
    lwz     r3, 0x74(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801afed0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801afed0
    lwz     r0, 0xf8(r29)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r29)
branch_0x801afed0:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x801afef4
    lwz     r3, 0xf8(r29)
    rlwinm. r0, r3, 0, 19, 19
    beq-    branch_0x801afee8
    rlwinm  r30, r30, 0, 23, 21
branch_0x801afee8:
    rlwinm. r0, r3, 0, 20, 20
    beq-    branch_0x801afef4
    rlwinm  r30, r30, 0, 23, 21
branch_0x801afef4:
    rlwinm. r0, r30, 0, 29, 29
    beq-    branch_0x801aff44
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801aff44
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x801aff44
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    rlwinm  r30, r30, 0, 30, 28
    lwz     r12, 0xd4(r12)
    mtlr    r12
    blrl
branch_0x801aff44:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__10TLiveActorFUlPQ26JDrama9TGraphics
branch_0x801aff54:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    lwz     r30, 0x88(sp)
    mtlr    r0
    lwz     r29, 0x84(sp)
    lwz     r28, 0x80(sp)
    addi    sp, sp, 0x90
    blr


.globl setGroundCollision__11TMapObjBaseFv
setGroundCollision__11TMapObjBaseFv: # 0x801aff74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b00e4
    lwz     r3, 0x8(r3)
    lwz     r0, 0x8(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x801affa8
    b       branch_0x801b00e4

branch_0x801affa8:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x801affec
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801affcc
    lha     r0, 0x102(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x801b00e4
branch_0x801affcc:
    lha     r3, 0x102(r31)
    subi    r0, r3, 0x1
    sth     r0, 0x102(r31)
    lhz     r0, 0x48(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801affec
    li      r0, 0x4
    sth     r0, 0x102(r31)
branch_0x801affec:
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x801b0028
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0xec(r31)
    lwz     r4, 0x58(r3)
    lwz     r3, 0x8(r5)
    cmplwi  r3, 0x0
    beq-    branch_0x801b00e4
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    b       branch_0x801b00e4

branch_0x801b0028:
    lfs     f2, 0x14(r31)
    lfs     f1, 0x108(r31)
    lfs     f3, 0x18(r31)
    lfs     f0, 0x10(r31)
    fsubs   f1, f2, f1
    stfs    f0, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f3, 0x54(sp)
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x801b00ac
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    lhz     r0, 0x5c(r3)
    rlwinm  r0, r0, 0, 17, 15
    sth     r0, 0x5c(r3)
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    lhz     r0, 0x5c(r3)
    rlwinm  r0, r0, 0, 18, 16
    sth     r0, 0x5c(r3)
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b00e4
    lwz     r12, 0x0(r3)
    addi    r4, sp, 0x4c
    addi    r5, r31, 0x30
    lwz     r12, 0xc(r12)
    addi    r6, r31, 0x24
    mtlr    r12
    blrl
    b       branch_0x801b00e4

branch_0x801b00ac:
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    lhz     r0, 0x5c(r3)
    rlwinm  r0, r0, 0, 18, 16
    sth     r0, 0x5c(r3)
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b00e4
    lwz     r12, 0x0(r3)
    addi    r4, sp, 0x4c
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x801b00e4:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl control__11TMapObjBaseFv
control__11TMapObjBaseFv: # 0x801b00f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    li      r31, 0x0
    stw     r30, 0x60(sp)
    li      r30, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    b       branch_0x801b0144

branch_0x801b0120:
    lwz     r12, 0x0(r29)
    mr      r3, r29
    lwz     r4, 0x44(r29)
    lwz     r12, 0x144(r12)
    lwzx    r4, r4, r31
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801b0144:
    lhz     r0, 0x48(r29)
    cmpw    r30, r0
    blt+    branch_0x801b0120
    lwz     r3, 0x130(r29)
    lwz     r31, 0x2c(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x801b0254
    lwz     r4, 0x8(r31)
    lwz     r3, 0x4(r31)
    lfs     f0, 0x10(r4)
    stfs    f0, 0x4(r3)
    lwz     r3, 0x8(r31)
    bl      update__12J3DFrameCtrlFv
    lwz     r3, 0x4(r31)
    addi    r5, sp, 0x20
    li      r4, 0x1
    lwz     r12, 0xc(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x34(sp)
    lis     r3, 0x4330
    lfs     f1, 0x10c(r29)
    lfs     f0, 0x10(r29)
    fadds   f1, f2, f1
    fsubs   f0, f1, f0
    stfs    f0, 0x94(r29)
    lfs     f2, 0x38(sp)
    lfs     f1, 0x110(r29)
    lfs     f0, 0x14(r29)
    fadds   f1, f2, f1
    fsubs   f0, f1, f0
    stfs    f0, 0x98(r29)
    lfs     f2, 0x3c(sp)
    lfs     f1, 0x114(r29)
    lfs     f0, 0x18(r29)
    fadds   f1, f2, f1
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(r29)
    lha     r0, 0x2c(sp)
    lfd     f2, -0x3e18(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f3, -0x3e1c(rtoc)
    stw     r0, 0x54(sp)
    lfs     f0, 0x118(r29)
    stw     r3, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x30(r29)
    lha     r0, 0x2e(sp)
    lfs     f0, 0x11c(r29)
    xoris   r0, r0, 0x8000
    stw     r0, 0x4c(sp)
    stw     r3, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x34(r29)
    lha     r0, 0x30(sp)
    lfs     f0, 0x120(r29)
    xoris   r0, r0, 0x8000
    stw     r0, 0x44(sp)
    stw     r3, 0x40(sp)
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x38(r29)
branch_0x801b0254:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    addi    sp, sp, 0x68
    blr


.globl ensureTakeSituation__11TMapObjBaseFv
ensureTakeSituation__11TMapObjBaseFv: # 0x801b0270
    lwz     r4, 0x6c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801b0290
    lwz     r0, 0x68(r4)
    cmplw   r0, r3
    beq-    branch_0x801b0290
    li      r0, 0x0
    stw     r0, 0x6c(r3)
branch_0x801b0290:
    lwz     r4, 0x68(r3)
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x6c(r4)
    cmplw   r0, r3
    beqlr-    

    lfs     f1, 0x14(r3)
    lfs     f0, 0xc8(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801b02c4
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r3)
branch_0x801b02c4:
    li      r0, 0x0
    stw     r0, 0x68(r3)
    blr


.globl touchActor__11TMapObjBaseFP9THitActor
touchActor__11TMapObjBaseFP9THitActor: # 0x801b02d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x4c(r4)
    clrrwi. r0, r5, 31
    beq-    branch_0x801b02f0
    li      r0, 0x1
    b       branch_0x801b02f4

branch_0x801b02f0:
    li      r0, 0x0
branch_0x801b02f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b0310
    lwz     r12, 0x0(r3)
    lwz     r12, 0x148(r12)
    mtlr    r12
    blrl
    b       branch_0x801b036c

branch_0x801b0310:
    rlwinm. r0, r5, 0, 3, 3
    beq-    branch_0x801b0320
    li      r0, 0x1
    b       branch_0x801b0324

branch_0x801b0320:
    li      r0, 0x0
branch_0x801b0324:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b0340
    lwz     r12, 0x0(r3)
    lwz     r12, 0x150(r12)
    mtlr    r12
    blrl
    b       branch_0x801b036c

branch_0x801b0340:
    rlwinm. r0, r5, 0, 4, 4
    beq-    branch_0x801b0350
    li      r0, 0x1
    b       branch_0x801b0354

branch_0x801b0350:
    li      r0, 0x0
branch_0x801b0354:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b036c
    lwz     r12, 0x0(r3)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
branch_0x801b036c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchPlayer__11TMapObjBaseFP9THitActor
touchPlayer__11TMapObjBaseFP9THitActor: # 0x801b037c
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchEnemy__11TMapObjBaseFP9THitActor
touchEnemy__11TMapObjBaseFP9THitActor: # 0x801b03b8
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl touchBoss__11TMapObjBaseFP9THitActor
touchBoss__11TMapObjBaseFP9THitActor: # 0x801b03f4
    mflr    r0
    li      r5, 0xe
    stw     r0, 0x4(sp)
    addi    r0, r3, 0x0
    addi    r3, r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r4)
    mr      r4, r0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeObjAppeared__11TMapObjBaseFv
makeObjAppeared__11TMapObjBaseFv: # 0x801b0430
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    li      r0, -0xa
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stfd    f30, 0xb0(sp)
    stfd    f29, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    li      r30, 0x0
    lwz     r3, 0xf0(r3)
    and     r0, r3, r0
    stw     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    lfs     f0, -0x3e28(rtoc)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    stw     r30, 0x104(r31)
    lwz     r0, 0x64(r31)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x118(r12)
    mtlr    r12
    blrl
    lhz     r0, 0x100(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b04bc
    sth     r30, 0x100(r31)
branch_0x801b04bc:
    lwz     r3, 0x130(r31)
    lwz     r3, 0x1c(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x801b0524
    lhz     r4, 0x100(r31)
    lis     r3, 0x803c
    addi    r0, r3, 0x2c58
    slwi    r3, r4, 2
    add     r3, r0, r3
    lwz     r30, 0x0(r3)
    addis   r0, r30, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801b0570
    lwz     r3, gpMSound(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b0570
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801b0570

branch_0x801b0524:
    lhz     r0, 0x100(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
    addis   r0, r30, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801b0570
    lwz     r3, gpMSound(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b0570
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801b0570:
    lwz     r3, gpMap(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801b059c
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x801b059c:
    lwz     r3, 0x130(r31)
    lwz     r3, 0x2c(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b05f0
    lwz     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x3e18(rtoc)
    lha     r3, 0x6(r4)
    xoris   r3, r3, 0x8000
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r4)
    lfs     f0, -0x3e24(rtoc)
    stfs    f0, 0xc(r4)
    bl      SMSGetAnmFrameRate__Fv
    lwz     r3, 0x130(r31)
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x8(r3)
    stfs    f1, 0xc(r3)
branch_0x801b05f0:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      startAnim__11TMapObjBaseFUs
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b0614
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_ShowAllShapePacket__FP8J3DModel
branch_0x801b0614:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x108(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r3, 0x130(r31)
    lwz     r3, 0x18(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b06fc
    lwz     r3, 0x4(r3)
    lwz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b06fc
    lfs     f1, 0x14(r31)
    li      r4, 0x0
    lfs     f0, 0x108(r31)
    lfs     f31, 0x10(r31)
    fsubs   f30, f1, f0
    lfs     f29, 0x18(r31)
    lwz     r3, 0xec(r31)
    bl      changeCollision__20TMapCollisionManagerFUl
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x801b06a4
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0xec(r31)
    lwz     r3, 0x58(r3)
    lwz     r30, 0x8(r4)
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x801b06fc

branch_0x801b06a4:
    lwz     r30, 0xec(r31)
    fmr     f1, f31
    lfs     f0, 0x2c(r31)
    fmr     f2, f30
    fmr     f3, f29
    stfs    f0, 0x8(sp)
    addi    r3, sp, 0x44
    lfs     f4, 0x30(r31)
    lfs     f5, 0x34(r31)
    lfs     f6, 0x38(r31)
    lfs     f7, 0x24(r31)
    lfs     f8, 0x28(r31)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r30, 0x8(r30)
    addi    r4, sp, 0x44
    addi    r3, r30, 0x0
    bl      setMtx__17TMapCollisionBaseFPA4_f
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x801b06fc:
    lfs     f1, 0x14(r31)
    li      r0, 0x1
    lfs     f0, 0x108(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lfd     f30, 0xb0(sp)
    lfd     f29, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xc0
    mtlr    r0
    blr


.globl makeObjDead__11TMapObjBaseFv
makeObjDead__11TMapObjBaseFv: # 0x801b0738
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r3
    stw     r30, 0x48(sp)
    lfs     f0, -0x3e28(rtoc)
    stfs    f0, 0xb4(r3)
    stfs    f0, 0xb0(r3)
    stfs    f0, 0xac(r3)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r3)
    lhz     r4, 0xfe(r3)
    cmplwi  r4, 0xffff
    beq-    branch_0x801b07fc
    lwz     r3, 0x130(r31)
    lwz     r3, 0x10(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b07fc
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b07fc
    mulli   r0, r4, 0x14
    lwz     r3, 0x4(r3)
    add     r3, r3, r0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b07fc
    lbz     r30, 0x8(r3)
    lwz     r3, 0x74(r31)
    mr      r4, r30
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x3e28(rtoc)
    mr      r4, r30
    stfs    f0, 0xc(r3)
    lwz     r3, 0x74(r31)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x3e28(rtoc)
    lis     r4, 0x1
    slwi    r5, r30, 2
    stfs    f0, 0x10(r3)
    li      r6, -0x1
    subi    r0, r4, 0x1
    lwz     r3, 0x74(r31)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r5
    stw     r6, 0x0(r3)
    sth     r0, 0xfe(r31)
branch_0x801b07fc:
    lis     r3, 0x1
    subi    r0, r3, 0x1
    sth     r0, 0x100(r31)
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0xec(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801b0854
    lwz     r4, 0x8(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801b0854
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x801b0854
    cmplwi  r4, 0x0
    beq-    branch_0x801b0854
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801b0854:
    li      r30, 0x0
    stw     r30, 0x104(r31)
    lwz     r3, 0x6c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801b0884
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    stw     r30, 0x6c(r31)
branch_0x801b0884:
    lwz     r3, 0x68(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801b08b0
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0x8
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x68(r31)
branch_0x801b08b0:
    lwz     r3, 0xf0(r31)
    li      r0, 0x0
    ori     r3, r3, 0xd9
    stw     r3, 0xf0(r31)
    sth     r0, 0xfc(r31)
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b08dc
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    bl      SMS_HideAllShapePacket__FP8J3DModel
branch_0x801b08dc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl makeObjDefault__11TMapObjBaseFv
makeObjDefault__11TMapObjBaseFv: # 0x801b08f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lfs     f2, 0x110(r3)
    lfs     f1, 0x108(r3)
    lfs     f3, 0x114(r3)
    lfs     f0, 0x10c(r3)
    fadds   f1, f2, f1
    stfs    f0, 0x10(r3)
    stfs    f1, 0x14(r3)
    stfs    f3, 0x18(r3)
    lwz     r3, 0x118(r3)
    lwz     r0, 0x11c(r31)
    stw     r3, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x120(r31)
    stw     r0, 0x38(r31)
    lwz     r3, 0x124(r31)
    lwz     r0, 0x128(r31)
    stw     r3, 0x24(r31)
    stw     r0, 0x28(r31)
    lwz     r0, 0x12c(r31)
    stw     r0, 0x2c(r31)
    lfs     f0, -0x3e28(rtoc)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r0, 0x74(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b09ac
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x801b09ac:
    lwz     r3, gpMap(r13)
    addi    r4, r31, 0x10
    addi    r5, r31, 0xc4
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl startAnim__11TMapObjBaseFUs
startAnim__11TMapObjBaseFUs: # 0x801b09d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    mr      r29, r3
    stw     r28, 0x50(sp)
    lwz     r0, 0x80(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b0a10
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      setAnmSound__10TLiveActorFPCc
branch_0x801b0a10:
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801b0a44
    lwz     r3, 0x130(r29)
    lwz     r3, 0x10(r3)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b0a44
    lwz     r4, 0x4(r3)
    lwz     r3, 0x78(r29)
    lwz     r4, 0x0(r4)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r29)
branch_0x801b0a44:
    lwz     r3, 0x130(r29)
    lwz     r3, 0x10(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b0ba8
    lhz     r4, 0x0(r3)
    clrlwi  r0, r30, 16
    cmplw   r4, r0
    bgt-    branch_0x801b0a68
    b       branch_0x801b0ba8

branch_0x801b0a68:
    mulli   r0, r0, 0x14
    lwz     r5, 0x4(r3)
    add     r31, r5, r0
    lbz     r0, 0x8(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801b0b34
    lhz     r0, 0xfe(r29)
    cmplwi  r0, 0xffff
    beq-    branch_0x801b0b00
    cmplwi  r3, 0x0
    beq-    branch_0x801b0b00
    cmplwi  r4, 0x0
    beq-    branch_0x801b0b00
    mulli   r0, r0, 0x14
    add     r3, r5, r0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b0b00
    lbz     r28, 0x8(r3)
    lwz     r3, 0x74(r29)
    mr      r4, r28
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x3e28(rtoc)
    mr      r4, r28
    stfs    f0, 0xc(r3)
    lwz     r3, 0x74(r29)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x3e28(rtoc)
    lis     r4, 0x1
    slwi    r5, r28, 2
    stfs    f0, 0x10(r3)
    li      r6, -0x1
    subi    r0, r4, 0x1
    lwz     r3, 0x74(r29)
    lwz     r3, 0x28(r3)
    lwzx    r3, r3, r5
    stw     r6, 0x0(r3)
    sth     r0, 0xfe(r29)
branch_0x801b0b00:
    mr      r3, r29
    bl      stopAnmSound__10TLiveActorFv
    lhz     r3, 0xfe(r29)
    clrlwi  r0, r30, 16
    cmplw   r3, r0
    beq-    branch_0x801b0b34
    sth     r30, 0xfe(r29)
    lwz     r4, 0x0(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801b0b34
    lwz     r3, 0x78(r29)
    bl      getMActor__13TMActorKeeperCFPCc
    stw     r3, 0x74(r29)
branch_0x801b0b34:
    lwz     r0, 0x4(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b0b8c
    lwz     r0, 0xf8(r29)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r29)
    lwz     r3, 0x74(r29)
    lwz     r4, 0x4(r31)
    lbz     r5, 0x8(r31)
    bl      setAnimation__6MActorFPCci
    lwz     r0, 0xf8(r29)
    rlwinm. r0, r0, 0, 22, 22
    beq-    branch_0x801b0b74
    lwz     r0, 0xf8(r29)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r29)
branch_0x801b0b74:
    lwz     r4, 0x10(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x801b0ba8
    mr      r3, r29
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x801b0ba8

branch_0x801b0b8c:
    lwz     r4, 0x74(r29)
    lwz     r3, 0x4(r4)
    lwz     r0, 0x8(r4)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    stw     r0, 0x58(r3)
branch_0x801b0ba8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl startBck__11TMapObjBaseFPCc
startBck__11TMapObjBaseFPCc: # 0x801b0bc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf8(r3)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r3)
    lwz     r3, 0x74(r3)
    bl      setBck__6MActorFPCc
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl startControlAnim__11TMapObjBaseFUs
startControlAnim__11TMapObjBaseFUs: # 0x801b0bf8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      startAnim__11TMapObjBaseFUs
    lwz     r4, 0x130(r30)
    lwz     r3, 0x10(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x801b0c5c
    lhz     r0, 0x0(r3)
    clrlwi  r3, r31, 16
    cmplw   r3, r0
    bge-    branch_0x801b0c5c
    lwz     r4, 0x10(r4)
    mulli   r0, r3, 0x14
    lwz     r3, 0x74(r30)
    lwz     r4, 0x4(r4)
    add     r4, r4, r0
    lbz     r4, 0x8(r4)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x3e28(rtoc)
    stfs    f0, 0xc(r3)
branch_0x801b0c5c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl animIsFinished__11TMapObjBaseCFv
animIsFinished__11TMapObjBaseCFv: # 0x801b0c74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x130(r3)
    lwz     r4, 0x10(r4)
    cmplwi  r4, 0x0
    beq-    branch_0x801b0cb8
    lhz     r0, 0x0(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x801b0cb8
    lhz     r0, 0xfe(r3)
    lwz     r4, 0x4(r4)
    mulli   r0, r0, 0x14
    add     r4, r4, r0
    lwz     r0, 0x4(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x801b0cc0
branch_0x801b0cb8:
    li      r3, 0x1
    b       branch_0x801b0ce4

branch_0x801b0cc0:
    lwz     r3, 0x74(r3)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801b0ce0
    li      r3, 0x1
    b       branch_0x801b0ce4

branch_0x801b0ce0:
    li      r3, 0x0
branch_0x801b0ce4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl hasAnim__11TMapObjBaseCFUs
hasAnim__11TMapObjBaseCFUs: # 0x801b0cf4
    lwz     r3, 0x130(r3)
    lwz     r5, 0x10(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x801b0d2c
    lhz     r3, 0x0(r5)
    clrlwi  r0, r4, 16
    cmplw   r3, r0
    ble-    branch_0x801b0d2c
    mulli   r0, r0, 0x14
    lwz     r3, 0x4(r5)
    add     r3, r3, r0
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801b0d34
branch_0x801b0d2c:
    li      r3, 0x0
    blr

branch_0x801b0d34:
    li      r3, 0x1
    blr


.globl hasModelOrAnimData__11TMapObjBaseCFUs
hasModelOrAnimData__11TMapObjBaseCFUs: # 0x801b0d3c
    lwz     r3, 0x130(r3)
    lwz     r5, 0x10(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x801b0d80
    lhz     r3, 0x0(r5)
    clrlwi  r0, r4, 16
    cmplw   r3, r0
    ble-    branch_0x801b0d80
    mulli   r4, r0, 0x14
    lwz     r5, 0x4(r5)
    add     r3, r5, r4
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801b0d88
    lwzx    r0, r5, r4
    cmplwi  r0, 0x0
    bne-    branch_0x801b0d88
branch_0x801b0d80:
    li      r3, 0x0
    blr

branch_0x801b0d88:
    li      r3, 0x1
    blr


.globl startSound__11TMapObjBaseFUs
startSound__11TMapObjBaseFUs: # 0x801b0d90
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi  r0, r4, 16
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    lhz     r3, 0x100(r3)
    cmplw   r3, r0
    beq-    branch_0x801b0dbc
    sth     r4, 0x100(r31)
branch_0x801b0dbc:
    lwz     r3, 0x130(r31)
    lwz     r3, 0x1c(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x801b0e24
    lhz     r4, 0x100(r31)
    lis     r3, 0x803c
    addi    r0, r3, 0x2c58
    slwi    r3, r4, 2
    add     r3, r0, r3
    lwz     r30, 0x0(r3)
    addis   r0, r30, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801b0e70
    lwz     r3, gpMSound(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b0e70
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801b0e70

branch_0x801b0e24:
    lhz     r0, 0x100(r31)
    lwz     r3, 0x4(r3)
    slwi    r0, r0, 2
    lwzx    r30, r3, r0
    addis   r0, r30, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x801b0e70
    lwz     r3, gpMSound(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b0e70
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801b0e70:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl soundBas__11TMapObjBaseFUlff
soundBas__11TMapObjBaseFUlff: # 0x801b0e88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    fmr     f31, f2
    stfd    f30, 0x38(sp)
    fmr     f30, f1
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    li      r4, 0x0
    stw     r30, 0x30(sp)
    mr      r30, r3
    lwz     r3, 0x74(r3)
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f0, f30
    cror    2, 0, 2
    bne-    branch_0x801b0f0c
    fadds   f0, f0, f31
    fcmpo   cr0, f30, f0
    bge-    branch_0x801b0f0c
    lwz     r3, gpMSound(r13)
    mr      r4, r31
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801b0f0c
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801b0f0c:
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    lfd     f30, 0x38(sp)
    mtlr    r0
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x48
    blr


.globl setUpMapCollision__11TMapObjBaseFUs
setUpMapCollision__11TMapObjBaseFUs: # 0x801b0f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r3
    lwz     r3, 0x130(r3)
    lwz     r3, 0x18(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b1034
    clrlwi  r5, r4, 16
    lwz     r3, 0x4(r3)
    clrlslwi  r0, r4, 16, 3
    lwzx    r0, r3, r0
    cmplwi  r0, 0x0
    bne-    branch_0x801b0f7c
    b       branch_0x801b1034

branch_0x801b0f7c:
    lfs     f1, 0x14(r30)
    mr      r4, r5
    lfs     f0, 0x108(r30)
    lfs     f31, 0x10(r30)
    fsubs   f30, f1, f0
    lfs     f29, 0x18(r30)
    lwz     r3, 0xec(r30)
    bl      changeCollision__20TMapCollisionManagerFUl
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x801b0fdc
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0xec(r30)
    lwz     r3, 0x58(r3)
    lwz     r31, 0x8(r4)
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x801b1034

branch_0x801b0fdc:
    lwz     r31, 0xec(r30)
    fmr     f1, f31
    lfs     f0, 0x2c(r30)
    fmr     f2, f30
    fmr     f3, f29
    stfs    f0, 0x8(sp)
    addi    r3, sp, 0x2c
    lfs     f4, 0x30(r30)
    lfs     f5, 0x34(r30)
    lfs     f6, 0x38(r30)
    lfs     f7, 0x24(r30)
    lfs     f8, 0x28(r30)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r31, 0x8(r31)
    addi    r3, sp, 0x2c
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x801b1034:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lfd     f29, 0x80(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    addi    sp, sp, 0x98
    blr


.globl setUpCurrentMapCollision__11TMapObjBaseFv
setUpCurrentMapCollision__11TMapObjBaseFv: # 0x801b1058
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    mr      r30, r3
    lwz     r31, 0xec(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x801b1118
    lwz     r0, 0xf8(r30)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x801b10bc
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0xec(r30)
    lwz     r3, 0x58(r3)
    lwz     r31, 0x8(r4)
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x801b1118

branch_0x801b10bc:
    lfs     f2, 0x14(r30)
    addi    r3, sp, 0x2c
    lfs     f0, 0x108(r30)
    lfs     f1, 0x10(r30)
    fsubs   f2, f2, f0
    lfs     f3, 0x18(r30)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x8(sp)
    lfs     f4, 0x30(r30)
    lfs     f5, 0x34(r30)
    lfs     f6, 0x38(r30)
    lfs     f7, 0x24(r30)
    lfs     f8, 0x28(r30)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    lwz     r31, 0x8(r31)
    addi    r3, sp, 0x2c
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x801b1118:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl removeMapCollision__11TMapObjBaseFv
removeMapCollision__11TMapObjBaseFv: # 0x801b1130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b117c
    lwz     r4, 0x8(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801b117c
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x801b117c
    cmplwi  r4, 0x0
    beq-    branch_0x801b117c
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801b117c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setObjHitData__11TMapObjBaseFUs
setObjHitData__11TMapObjBaseFUs: # 0x801b118c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0x130(r3)
    lwz     r6, 0x14(r5)
    cmplwi  r6, 0x0
    beq-    branch_0x801b1228
    lwz     r5, 0x0(r6)
    clrlwi  r0, r4, 16
    cmpw    r5, r0
    ble-    branch_0x801b1228
    lwz     r4, 0xc(r6)
    slwi    r0, r0, 4
    lfs     f0, -0x3e28(rtoc)
    add     r4, r4, r0
    lfs     f1, 0x0(r4)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x801b1228
    lfs     f3, 0x24(r3)
    lfs     f0, 0x2c(r3)
    fcmpo   cr0, f3, f0
    ble-    branch_0x801b11ec
    b       branch_0x801b11f0

branch_0x801b11ec:
    fmr     f3, f0
branch_0x801b11f0:
    lfs     f0, 0x0(r4)
    lfs     f2, 0x8(r4)
    fmuls   f0, f0, f3
    lfs     f4, 0x28(r3)
    lfs     f1, 0x4(r4)
    fmuls   f3, f2, f3
    lfs     f2, 0xc(r4)
    stfs    f0, 0x50(r3)
    fmuls   f1, f1, f4
    fmuls   f0, f2, f4
    stfs    f1, 0x54(r3)
    stfs    f3, 0x58(r3)
    stfs    f0, 0x5c(r3)
    bl      calcEntryRadius__9THitActorFv
branch_0x801b1228:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl sleep__11TMapObjBaseFv
sleep__11TMapObjBaseFv: # 0x801b1238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf0(r3)
    ori     r0, r0, 0x4000
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801b129c
    lwz     r4, 0x8(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801b129c
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x801b129c
    cmplwi  r4, 0x0
    beq-    branch_0x801b129c
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801b129c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl awake__11TMapObjBaseFv
awake__11TMapObjBaseFv: # 0x801b12ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 18, 16
    stw     r0, 0xf0(r3)
    lwz     r0, 0x64(r3)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getSDLModelFlag__11TMapObjBaseCFv
getSDLModelFlag__11TMapObjBaseCFv: # 0x801b12f0
    li      r3, 0x3
    blr


.globl changeObjSRT__11TMapObjBaseFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
changeObjSRT__11TMapObjBaseFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801b12f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    addi    r31, r3, 0x0
    addi    r3, sp, 0x20
    lfs     f0, 0x8(r6)
    stfs    f0, 0x8(sp)
    lfs     f1, 0x0(r4)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    lfs     f4, 0x0(r5)
    lfs     f5, 0x4(r5)
    lfs     f6, 0x8(r5)
    lfs     f7, 0x0(r6)
    lfs     f8, 0x4(r6)
    bl      MsMtxSetTRS__FPA4_ffffffffff
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r4, sp, 0x20
    lwz     r12, 0x10c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl changeObjMtx__11TMapObjBaseFPA4_f
changeObjMtx__11TMapObjBaseFPA4_f: # 0x801b1368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    mr      r31, r3
    lfs     f0, 0xc(r4)
    stfs    f0, 0x10(r3)
    lfs     f1, 0x1c(r4)
    lfs     f0, 0x108(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lfs     f0, 0x2c(r4)
    stfs    f0, 0x18(r3)
    lwz     r0, 0x74(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801b13f8
    lwz     r0, 0xf8(r31)
    rlwinm. r0, r0, 0, 23, 23
    beq-    branch_0x801b13cc
    lwz     r12, 0x0(r31)
    mr      r3, r31
    lwz     r12, 0x11c(r12)
    mtlr    r12
    blrl
    b       branch_0x801b13f8

branch_0x801b13cc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x801b13f8:
    lwz     r3, 0xec(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x801b1438
    lwz     r4, 0x8(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801b1438
    lwz     r0, 0x8(r4)
    cmpwi   r0, 0x0
    beq-    branch_0x801b1438
    cmplwi  r4, 0x0
    beq-    branch_0x801b1438
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801b1438:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __sinit_MapObjBase_cpp
__sinit_MapObjBase_cpp: # 0x801b1460
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x6f88
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801b14a8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801b14a8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801b14d8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801b14d8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1508
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801b1508:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1538
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801b1538:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1568
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801b1568:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1598
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801b1598:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801b15c8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801b15c8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801b15f8
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801b15f8:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1628
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801b1628:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1658
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801b1658:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1688
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801b1688:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801b16b8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801b16b8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801b16e8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801b16e8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1718
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801b1718:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801b1748
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801b1748:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TMapObjBaseFv
_32___dt__11TMapObjBaseFv: # 0x801b175c
    subi    r3, r3, 0x20
    b       __dt__11TMapObjBaseFv
