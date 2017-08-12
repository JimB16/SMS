
.globl __dt__12TMirrorActorFv
__dt__12TMirrorActorFv: # 0x80224534
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8022458c
    lis     r3, __vvt__12TMirrorActor@ha
    addi    r0, r3, __vvt__12TMirrorActor@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8022457c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8022457c:
    extsh.  r0, r31
    ble-    branch_0x8022458c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8022458c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__12TMirrorActorFPCc
__ct__12TMirrorActorFPCc: # 0x802245a8
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
    lis     r3, __vvt__12TMirrorActor@ha
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__12TMirrorActor@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stb     r4, 0x18(r31)
    sth     r4, 0x1a(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl init__12TMirrorActorFP8J3DModelUs
init__12TMirrorActorFP8J3DModelUs: # 0x80224620
    mflr    r0
    lis     r6, unk_8039d700@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r6, unk_8039d700@l
    stw     r30, 0xd0(sp)
    stw     r29, 0xcc(sp)
    stw     r28, 0xc8(sp)
    addi    r28, r4, 0x0
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    sth     r5, 0x1a(r3)
    stw     r28, 0x10(r3)
    lhz     r0, 0x1a(r3)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x80224694
    li      r3, 0xac
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80224688
    lwz     r4, 0xa0(r28)
    addi    r3, r29, 0x0
    li      r5, 0x3
    li      r6, 0x1
    bl      __ct__8SDLModelFP12SDLModelDataUlUl
branch_0x80224688:
    lwz     r3, 0x8(sp)
    stw     r29, 0x14(r3)
    b       branch_0x802246c8

branch_0x80224694:
    lwz     r4, 0x10(r3)
    li      r3, 0xa0
    lwz     r28, 0x4(r4)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x802246c0
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    li      r5, 0x0
    li      r6, 0x1
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x802246c0:
    lwz     r3, 0x8(sp)
    stw     r29, 0x14(r3)
branch_0x802246c8:
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0xe0
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xe0
    mtlr    r12
    blrl
    addi    r30, r3, 0x10
    addi    r3, sp, 0x94
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x94(sp)
    addi    r3, sp, 0xb8
    addi    r4, sp, 0x90
    stw     r0, 0x90(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xb8(sp)
    addi    r5, sp, 0xa8
    addi    r4, r30, 0x0
    stw     r0, 0xb4(sp)
    addi    r3, sp, 0xa4
    addi    r6, sp, 0x8
    lwz     r0, 0xb4(sp)
    stw     r0, 0xa8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r5, 0x8(sp)
    lhz     r0, 0x1a(r5)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x802247fc
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0xec
    lwz     r29, 0x14(r5)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0xec
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    lis     r3, j3dSys@h
    addi    r30, r3, j3dSys@l
    stw     r0, 0x44(r30)
    addi    r3, r31, 0x108
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x108
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    mr      r3, r29
    stw     r0, 0x48(r30)
    lwz     r12, 0x0(r29)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x802247fc:
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    lwz     r29, 0xcc(sp)
    lwz     r28, 0xc8(sp)
    addi    sp, sp, 0xd8
    blr


.globl entryMirrorDrawBufferAlways__12TMirrorActorFP8J3DModel
entryMirrorDrawBufferAlways__12TMirrorActorFP8J3DModel: # 0x8022481c
    mflr    r0
    lis     r5, unk_8039d700@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r5, unk_8039d700@l
    stw     r29, 0x54(sp)
    stw     r28, 0x50(sp)
    addi    r28, r3, 0x0
    addi    r3, r30, 0xec
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0xec
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    lis     r3, j3dSys@h
    addi    r31, r3, j3dSys@l
    stw     r0, 0x44(r31)
    addi    r3, r30, 0x108
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x108
    mtlr    r12
    blrl
    lwz     r0, 0x10(r3)
    mr      r3, r28
    stw     r0, 0x48(r31)
    lwz     r12, 0x0(r28)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r3, r28
    lwz     r12, 0x0(r28)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl perform__12TMirrorActorFUlPQ26JDrama9TGraphics
perform__12TMirrorActorFUlPQ26JDrama9TGraphics: # 0x80224910
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x70(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x6c(sp)
    beq-    branch_0x802249d4
    mr      r3, r30
    bl      checkIsInMirror__12TMirrorActorFv
    lbz     r0, 0x18(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80224a30
    li      r29, 0x0
    b       branch_0x80224978

branch_0x80224954:
    clrlwi  r0, r29, 16
    lwz     r3, 0x14(r30)
    mulli   r6, r0, 0x30
    lwz     r0, 0x58(r5)
    lwz     r3, 0x58(r3)
    add     r4, r3, r6
    add     r3, r0, r6
    bl      PSMTXCopy
    addi    r29, r29, 0x1
branch_0x80224978:
    lwz     r5, 0x10(r30)
    clrlwi  r4, r29, 16
    lwz     r3, 0x4(r5)
    lhz     r0, 0x1c(r3)
    cmplw   r4, r0
    blt+    branch_0x80224954
    li      r29, 0x0
    b       branch_0x802249bc

branch_0x80224998:
    clrlwi  r0, r29, 16
    lwz     r3, 0x14(r30)
    mulli   r6, r0, 0x30
    lwz     r0, 0x5c(r5)
    lwz     r3, 0x5c(r3)
    add     r4, r3, r6
    add     r3, r0, r6
    bl      PSMTXCopy
    addi    r29, r29, 0x1
branch_0x802249bc:
    lwz     r5, 0x10(r30)
    clrlwi  r4, r29, 16
    lwz     r3, 0x4(r5)
    lhz     r0, 0x84(r3)
    cmplw   r4, r0
    blt+    branch_0x80224998
branch_0x802249d4:
    rlwinm. r0, r31, 0, 29, 29
    beq-    branch_0x802249fc
    lbz     r0, 0x18(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x802249fc
    lwz     r3, 0x14(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
branch_0x802249fc:
    rlwinm. r0, r31, 0, 22, 22
    beq-    branch_0x80224a30
    lbz     r0, 0x18(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x80224a30
    lhz     r0, 0x1a(r30)
    rlwinm. r0, r0, 0, 30, 30
    bne-    branch_0x80224a30
    lwz     r3, 0x14(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
branch_0x80224a30:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl checkIsInMirror__12TMirrorActorFv
checkIsInMirror__12TMirrorActorFv: # 0x80224a4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    lhz     r4, 0x1a(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x80224a78
    li      r0, 0x0
    stb     r0, 0x18(r31)
    b       branch_0x80224bfc

branch_0x80224a78:
    rlwinm. r0, r4, 0, 30, 30
    beq-    branch_0x80224afc
    lwz     r3, R13Off_m0x6318(r13)
    lwz     r0, 0x18(r3)
    cmpwi   r0, -0x1
    beq-    branch_0x80224a98
    li      r0, 0x1
    b       branch_0x80224a9c

branch_0x80224a98:
    li      r0, 0x0
branch_0x80224a9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80224ad8
    rlwinm. r0, r4, 0, 29, 29
    bne-    branch_0x80224ad8
    rlwinm. r0, r4, 0, 26, 26
    bne-    branch_0x80224ad8
    lwz     r3, 0x14(r31)
    lwz     r4, 0x84(r3)
    lbz     r0, 0x30(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80224acc
    bl      SMS_HideAllShapePacket__FP8J3DModel
branch_0x80224acc:
    li      r0, 0x0
    stb     r0, 0x18(r31)
    b       branch_0x80224bfc

branch_0x80224ad8:
    lwz     r3, 0x14(r31)
    lwz     r4, 0x84(r3)
    lbz     r0, 0x30(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x80224af0
    bl      SMS_ShowAllShapePacket__FP8J3DModel
branch_0x80224af0:
    li      r0, 0x1
    stb     r0, 0x18(r31)
    b       branch_0x80224bfc

branch_0x80224afc:
    lwz     r3, 0x10(r31)
    rlwinm. r0, r4, 0, 29, 29
    lwz     r3, 0x58(r3)
    bne-    branch_0x80224b28
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x50(sp)
    stfs    f1, 0x54(sp)
    stfs    f2, 0x58(sp)
    b       branch_0x80224b44

branch_0x80224b28:
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x50(sp)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x54(sp)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x58(sp)
branch_0x80224b44:
    lwz     r3, R13Off_m0x70ec(r13)
    addi    r4, sp, 0x50
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    mr      r4, r3
    lwz     r3, R13Off_m0x70ec(r13)
    bl      getDataNo__16TCubeManagerBaseCFl
    lwz     r5, R13Off_m0x6318(r13)
    addi    r4, r5, 0x18
    lwz     r4, 0x0(r4)
    cmpw    r3, r4
    beq-    branch_0x80224b7c
    li      r0, 0x0
    stb     r0, 0x18(r31)
    b       branch_0x80224bfc

branch_0x80224b7c:
    cmpwi   r4, -0x1
    beq-    branch_0x80224b8c
    li      r0, 0x1
    b       branch_0x80224b90

branch_0x80224b8c:
    li      r0, 0x0
branch_0x80224b90:
    clrlwi. r0, r0, 24
    bne-    branch_0x80224bb8
    lhz     r3, 0x1a(r31)
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x80224bb8
    rlwinm. r0, r3, 0, 26, 26
    bne-    branch_0x80224bb8
    li      r0, 0x0
    stb     r0, 0x18(r31)
    b       branch_0x80224bfc

branch_0x80224bb8:
    cmpwi   r4, -0x1
    beq-    branch_0x80224bc8
    li      r0, 0x1
    b       branch_0x80224bcc

branch_0x80224bc8:
    li      r0, 0x0
branch_0x80224bcc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80224bf4
    addi    r3, r5, 0x0
    addi    r4, sp, 0x50
    bl      isUpperThanMirrorPlane__19TMirrorModelManagerCFRCQ29JGeometry8TVec3_f_
    clrlwi. r0, r3, 24
    bne-    branch_0x80224bf4
    li      r0, 0x0
    stb     r0, 0x18(r31)
    b       branch_0x80224bfc

branch_0x80224bf4:
    li      r0, 0x1
    stb     r0, 0x18(r31)
branch_0x80224bfc:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __sinit_MirrorActor_cpp
__sinit_MirrorActor_cpp: # 0x80224c10
    mflr    r0
    lis     r3, unk_803fb1e8@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803fb1e8@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x80224c58
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x80224c58:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x80224c88
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x80224c88:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x80224cb8
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x80224cb8:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x80224ce8
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x80224ce8:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x80224d18
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x80224d18:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x80224d48
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x80224d48:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x80224d78
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x80224d78:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x80224da8
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x80224da8:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x80224dd8
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x80224dd8:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x80224e08
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x80224e08:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x80224e38
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x80224e38:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x80224e68
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x80224e68:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80224e98
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x80224e98:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80224ec8
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x80224ec8:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80224ef8
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x80224ef8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

