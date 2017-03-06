
.globl load__Q26JDrama6TLightFR20JSUMemoryInputStream
load__Q26JDrama6TLightFR20JSUMemoryInputStream: # 0x802f96b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama10TPlacementFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x20(sp)
    addi    r4, sp, 0x24
    addi    r3, r30, 0x24
    stw     r0, 0x28(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x24(sp)
    bl      GXInitLightColor
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl perform__Q26JDrama6TLightFUlPQ26JDrama9TGraphics
perform__Q26JDrama6TLightFUlPQ26JDrama9TGraphics: # 0x802f971c
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    beq-    branch_0x802f975c
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      correct__Q26JDrama6TLightCFPQ26JDrama9TGraphics
    lwz     r4, 0xe4(r31)
    addi    r3, r30, 0x24
    addi    r4, r4, 0x1
    bl      GXLoadLightObjImm
branch_0x802f975c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl correct__Q26JDrama6TLightCFPQ26JDrama9TGraphics
correct__Q26JDrama6TLightCFPQ26JDrama9TGraphics: # 0x802f9774
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r3, 0x0
    addi    r3, r4, 0xb4
    addi    r4, r31, 0x10
    addi    r5, sp, 0x10
    bl      PSMTXMultVec
    lfs     f1, 0x10(sp)
    addi    r3, r31, 0x24
    lfs     f2, 0x14(sp)
    lfs     f3, 0x18(sp)
    bl      GXInitLightPos
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl JSGGetLightType__Q26JDrama6TLightCFv
JSGGetLightType__Q26JDrama6TLightCFv: # 0x802f97c0
    lwz     r3, 0x64(r3)
    blr


.globl JSGSetLightType__Q26JDrama6TLightFQ26JStage7TELight
JSGSetLightType__Q26JDrama6TLightFQ26JStage7TELight: # 0x802f97c8
    cmpwi   r4, 0x1
    bnelr-    

    stw     r4, 0x64(r3)
    blr


.globl JSGGetPosition__Q26JDrama6TLightCFP3Vec
JSGGetPosition__Q26JDrama6TLightCFP3Vec: # 0x802f97d8
    lwz     r5, 0x10(r3)
    lwz     r0, 0x14(r3)
    stw     r5, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r3)
    stw     r0, 0x8(r4)
    blr


.globl JSGSetPosition__Q26JDrama6TLightFRC3Vec
JSGSetPosition__Q26JDrama6TLightFRC3Vec: # 0x802f97f4
    lwz     r0, 0x64(r3)
    cmpwi   r0, 0x2
    beqlr-    

    lfs     f0, 0x0(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x14(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x18(r3)
    blr


.globl JSGGetColor__Q26JDrama6TLightCFv
JSGGetColor__Q26JDrama6TLightCFv: # 0x802f981c
    mflr    r0
    addi    r3, r3, 0x24
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    addi    r4, sp, 0xc
    bl      GXGetLightColor
    lwz     r0, 0x14(sp)
    lwz     r3, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl JSGSetColor__Q26JDrama6TLightF8_GXColor
JSGSetColor__Q26JDrama6TLightF8_GXColor: # 0x802f9848
    mflr    r0
    addi    r3, r3, 0x24
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lwz     r0, 0x0(r4)
    addi    r4, sp, 0x10
    stw     r0, 0x10(sp)
    bl      GXInitLightColor
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__Q26JDrama9TLightAryFR20JSUMemoryInputStream
load__Q26JDrama9TLightAryFR20JSUMemoryInputStream: # 0x802f9878
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r23, 0x3c(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x1c(sp)
    mr      r3, r30
    bl      setLightNum__Q26JDrama9TLightAryFl
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r24, sp, 0x20
    subi    r25, r6, 0xf0c
    addi    r26, r5, 0x184
    addi    r27, r4, 0x160
    addi    r28, r3, 0x1c8
    li      r23, 0x0
    li      r29, 0x0
    b       branch_0x802f9950

branch_0x802f98e0:
    stw     r24, 0x18(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x18(sp)
    li      r5, 0x0
    stw     r25, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    stw     r28, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    lwz     r0, 0x10(r30)
    addi    r4, r24, 0x0
    add     r3, r0, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r28, 0x20(sp)
    addi    r3, r24, 0x0
    li      r4, 0x0
    stw     r27, 0x20(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r23, r23, 0x1
    addi    r29, r29, 0x6c
branch_0x802f9950:
    lwz     r0, 0x14(r30)
    cmpw    r23, r0
    blt+    branch_0x802f98e0
    lmw     r23, 0x3c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl searchF__Q26JDrama9TLightAryFUsPCc
searchF__Q26JDrama9TLightAryFUsPCc: # 0x802f9970
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802f999c
    b       branch_0x802f99ec

branch_0x802f999c:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x802f99dc

branch_0x802f99a8:
    lwz     r0, 0x10(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802f99d4
    b       branch_0x802f99ec

branch_0x802f99d4:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x6c
branch_0x802f99dc:
    lwz     r0, 0x14(r27)
    cmpw    r30, r0
    blt+    branch_0x802f99a8
    li      r3, 0x0
branch_0x802f99ec:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setLightNum__Q26JDrama9TLightAryFl
setLightNum__Q26JDrama9TLightAryFl: # 0x802f9a00
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    stw     r4, 0x14(r3)
    ble-    branch_0x802f9a54
    lwz     r31, 0x14(r30)
    mulli   r3, r31, 0x6c
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8030
    lis     r5, 0x8030
    subi    r4, r4, 0x64b4
    subi    r5, r5, 0x6568
    addi    r7, r31, 0x0
    li      r6, 0x6c
    bl      __construct_new_array
    stw     r3, 0x10(r30)
branch_0x802f9a54:
    li      r5, 0x0
    li      r3, 0x0
    b       branch_0x802f9a74

branch_0x802f9a60:
    lwz     r4, 0x10(r30)
    addi    r0, r3, 0x68
    addi    r3, r3, 0x6c
    stwx    r5, r4, r0
    addi    r5, r5, 0x1
branch_0x802f9a74:
    lwz     r0, 0x14(r30)
    cmpw    r5, r0
    blt+    branch_0x802f9a60
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl __dt__Q26JDrama9TIdxLightFv
__dt__Q26JDrama9TIdxLightFv: # 0x802f9a98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f9b30
    lis     r3, 0x803e
    addi    r3, r3, 0x1f94
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x802f9b20
    lis     r3, 0x803e
    addi    r3, r3, 0x2054
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x20
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage6TLightFv
    cmplwi  r30, 0x0
    beq-    branch_0x802f9b20
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    beq-    branch_0x802f9b20
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f9b20:
    extsh.  r0, r31
    ble-    branch_0x802f9b30
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f9b30:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__Q26JDrama9TIdxLightFv
__ct__Q26JDrama9TIdxLightFv: # 0x802f9b4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lis     r3, 0x803b
    stw     r30, 0x30(sp)
    subi    r4, r3, 0x5d60
    stw     r29, 0x2c(sp)
    stw     r31, 0x14(sp)
    stw     r31, 0x18(sp)
    lwz     r3, 0x14(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r30, 0x14(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x10
    lfs     f1, 0x408(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_802f9d04
    li      r29, 0x0
    sth     r29, 0x1c(r30)
    lis     r6, 0x803e
    lis     r3, 0x803e
    lwz     r30, 0x18(sp)
    addi    r0, r6, 0x4718
    addi    r5, r3, 0x2054
    lis     r4, 0x803e
    stw     r0, 0x20(r30)
    addi    r0, r4, 0x46b8
    stw     r0, 0x20(r30)
    addi    r4, r5, 0x24
    li      r0, 0x1
    stw     r5, 0x0(r30)
    addi    r3, r30, 0x24
    stw     r4, 0x20(r30)
    stw     r0, 0x64(r30)
    lfs     f2, 0x408(rtoc)
    lfs     f1, 0x40c(rtoc)
    fmr     f3, f2
    fmr     f4, f1
    fmr     f5, f2
    fmr     f6, f2
    bl      GXInitLightAttn
    addi    r3, sp, 0x20
    li      r4, 0xff
    li      r5, 0xff
    li      r6, 0xff
    li      r7, 0xff
    bl      set__Q28JUtility6TColorFUcUcUcUc
    lwz     r0, 0x20(sp)
    addi    r4, sp, 0x10
    addi    r3, r30, 0x24
    stw     r0, 0x10(sp)
    bl      GXInitLightColor
    lis     r3, 0x803e
    addi    r3, r3, 0x1f94
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    stw     r29, 0x68(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __dt__Q26JDrama6TLightFv
__dt__Q26JDrama6TLightFv: # 0x802f9c68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802f9ce8
    lis     r3, 0x803e
    addi    r3, r3, 0x2054
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x20
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage6TLightFv
    cmplwi  r30, 0x0
    beq-    branch_0x802f9cd8
    lis     r3, 0x803e
    addi    r0, r3, 0x2140
    stw     r0, 0x0(r30)
    beq-    branch_0x802f9cd8
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802f9cd8:
    extsh.  r0, r31
    ble-    branch_0x802f9ce8
    mr      r3, r30
    bl      __dl__FPv
branch_0x802f9ce8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_802f9d04
set_f___Q29JGeometry8TVec3_f_Ffff_802f9d04: # 0x802f9d04
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl perform__Q26JDrama9TLightAryFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TLightAryFUlPQ26JDrama9TGraphics: # 0x802f9d14
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r27, r3, 0x0
    beq-    branch_0x802f9da0
    addi    r29, r5, 0xb4
    li      r28, 0x0
    li      r31, 0x0
    b       branch_0x802f9d74

branch_0x802f9d40:
    lwz     r0, 0x10(r27)
    addi    r3, r29, 0x0
    addi    r5, sp, 0x20
    add     r30, r0, r31
    addi    r4, r30, 0x10
    bl      PSMTXMultVec
    lfs     f1, 0x20(sp)
    addi    r3, r30, 0x24
    lfs     f2, 0x24(sp)
    lfs     f3, 0x28(sp)
    bl      GXInitLightPos
    addi    r28, r28, 0x1
    addi    r31, r31, 0x6c
branch_0x802f9d74:
    lwz     r0, 0x14(r27)
    cmpw    r28, r0
    blt+    branch_0x802f9d40
    lwz     r3, 0x10(r27)
    mulli   r4, r0, 0x6c
    bl      DCFlushRange
    lwz     r4, 0x10(r27)
    li      r3, 0x18
    li      r5, 0x6c
    addi    r4, r4, 0x24
    bl      GXSetArray
branch_0x802f9da0:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl load__Q26JDrama9TAmbColorFR20JSUMemoryInputStream
load__Q26JDrama9TAmbColorFR20JSUMemoryInputStream: # 0x802f9db4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x18(sp)
    stw     r0, 0x14(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl perform__Q26JDrama9TAmbColorFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TAmbColorFUlPQ26JDrama9TGraphics: # 0x802f9e04
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x18(sp)
    beq-    branch_0x802f9e2c
    lwz     r0, 0x14(r3)
    addi    r4, sp, 0x14
    li      r3, 0x4
    stw     r0, 0x14(sp)
    bl      GXSetChanAmbColor
branch_0x802f9e2c:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl JSGGetColor__Q26JDrama9TAmbColorCFv
JSGGetColor__Q26JDrama9TAmbColorCFv: # 0x802f9e3c
    lwz     r3, 0x14(r3)
    blr


.globl JSGSetColor__Q26JDrama9TAmbColorF8_GXColor
JSGSetColor__Q26JDrama9TAmbColorF8_GXColor: # 0x802f9e44
    stwu    sp, -0x30(sp)
    lwz     r0, 0x0(r4)
    stw     r0, 0x20(sp)
    lwz     r0, 0x20(sp)
    addi    sp, sp, 0x30
    stw     r0, 0x14(r3)
    blr


.globl load__Q26JDrama7TAmbAryFR20JSUMemoryInputStream
load__Q26JDrama7TAmbAryFR20JSUMemoryInputStream: # 0x802f9e60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stmw    r23, 0x3c(sp)
    addi    r30, r3, 0x0
    addi    r31, r4, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x1c(sp)
    mr      r3, r30
    bl      setAmbNum__Q26JDrama7TAmbAryFl
    lis     r6, 0x803b
    lis     r5, 0x803e
    lis     r4, 0x803e
    lis     r3, 0x803e
    addi    r24, sp, 0x20
    subi    r25, r6, 0xf0c
    addi    r26, r5, 0x184
    addi    r27, r4, 0x160
    addi    r28, r3, 0x1c8
    li      r23, 0x0
    li      r29, 0x0
    b       branch_0x802f9f38

branch_0x802f9ec8:
    stw     r24, 0x18(sp)
    li      r0, 0x0
    li      r4, 0x0
    lwz     r3, 0x18(sp)
    li      r5, 0x0
    stw     r25, 0x0(r3)
    stb     r0, 0x4(r3)
    stw     r26, 0x0(r3)
    stw     r27, 0x0(r3)
    stw     r28, 0x0(r3)
    bl      setBuffer__20JSUMemoryInputStreamFPCvl
    addi    r3, r31, 0x0
    addi    r4, r24, 0x0
    bl      getType__Q26JDrama8TNameRefFR20JSUMemoryInputStreamR20JSUMemoryInputStream
    lwz     r0, 0x10(r30)
    addi    r4, r24, 0x0
    add     r3, r0, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    stw     r28, 0x20(sp)
    addi    r3, r24, 0x0
    li      r4, 0x0
    stw     r27, 0x20(sp)
    bl      __dt__14JSUInputStreamFv
    addi    r23, r23, 0x1
    addi    r29, r29, 0x18
branch_0x802f9f38:
    lwz     r0, 0x14(r30)
    cmpw    r23, r0
    blt+    branch_0x802f9ec8
    lmw     r23, 0x3c(sp)
    lwz     r0, 0x64(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl searchF__Q26JDrama7TAmbAryFUsPCc
searchF__Q26JDrama7TAmbAryFUsPCc: # 0x802f9f58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    bl      searchF__Q26JDrama8TNameRefFUsPCc
    cmplwi  r3, 0x0
    beq-    branch_0x802f9f84
    b       branch_0x802f9fd4

branch_0x802f9f84:
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x802f9fc4

branch_0x802f9f90:
    lwz     r0, 0x10(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x802f9fbc
    b       branch_0x802f9fd4

branch_0x802f9fbc:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x18
branch_0x802f9fc4:
    lwz     r0, 0x14(r27)
    cmpw    r30, r0
    blt+    branch_0x802f9f90
    li      r3, 0x0
branch_0x802f9fd4:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl setAmbNum__Q26JDrama7TAmbAryFl
setAmbNum__Q26JDrama7TAmbAryFl: # 0x802f9fe8
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r4, 0x14(r3)
    ble-    branch_0x802fa03c
    lwz     r31, 0x14(r30)
    mulli   r3, r31, 0x18
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8030
    lis     r5, 0x8030
    subi    r4, r4, 0x5f20
    subi    r5, r5, 0x5fac
    addi    r7, r31, 0x0
    li      r6, 0x18
    bl      __construct_new_array
    stw     r3, 0x10(r30)
branch_0x802fa03c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __dt__Q26JDrama9TAmbColorFv
__dt__Q26JDrama9TAmbColorFv: # 0x802fa054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fa0c4
    lis     r3, 0x803e
    addi    r3, r3, 0x1f30
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x10
    stw     r0, 0x10(r30)
    li      r4, 0x0
    bl      __dt__Q26JStage13TAmbientLightFv
    cmplwi  r30, 0x0
    beq-    branch_0x802fa0b4
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fa0b4:
    extsh.  r0, r31
    ble-    branch_0x802fa0c4
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fa0c4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__Q26JDrama9TAmbColorFv
__ct__Q26JDrama9TAmbColorFv: # 0x802fa0e0
    mflr    r0
    lis     r4, 0x803e
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x20f0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    lis     r3, 0x803b
    stw     r0, 0x0(r31)
    subi    r3, r3, 0x5d54
    stw     r3, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r4, 0x803e
    sth     r0, 0xc(r31)
    addi    r0, r4, 0x4718
    lis     r3, 0x803e
    stw     r0, 0x10(r31)
    addi    r0, r3, 0x4590
    lis     r3, 0x803e
    stw     r0, 0x10(r31)
    addi    r4, r3, 0x1f30
    addi    r3, r4, 0x24
    stw     r4, 0x0(r31)
    li      r4, 0x4c
    li      r0, 0xff
    stw     r3, 0x10(r31)
    mr      r3, r31
    stb     r4, 0x14(r31)
    stb     r4, 0x15(r31)
    stb     r4, 0x16(r31)
    stb     r0, 0x17(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__Q26JDrama9TLightMapFR20JSUMemoryInputStream
load__Q26JDrama9TLightMapFR20JSUMemoryInputStream: # 0x802fa184
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stmw    r27, 0x9c(sp)
    addi    r31, r4, 0x0
    addi    r30, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x40
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x40(sp)
    stw     r0, 0x10(r30)
    lwz     r29, 0x10(r30)
    slwi    r3, r29, 3
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8030
    subi    r4, r4, 0x5d88
    addi    r7, r29, 0x0
    li      r5, 0x0
    li      r6, 0x8
    bl      __construct_new_array
    stw     r3, 0x14(r30)
    li      r27, 0x0
    li      r29, 0x0
    b       branch_0x802fa258

branch_0x802fa1ec:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x3c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x3c(sp)
    mr      r3, r31
    lwz     r6, 0x14(r30)
    addi    r4, sp, 0x44
    li      r5, 0x50
    stwx    r0, r6, r29
    bl      readString__14JSUInputStreamFPcUs
    lwz     r4, -0x5db8(r13)
    addi    r3, sp, 0x44
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, sp, 0x44
    mtlr    r12
    blrl
    lwz     r4, 0x14(r30)
    addi    r0, r29, 0x4
    addi    r29, r29, 0x8
    stwx    r3, r4, r0
    addi    r27, r27, 0x1
branch_0x802fa258:
    lwz     r0, 0x10(r30)
    cmpw    r27, r0
    blt+    branch_0x802fa1ec
    lmw     r27, 0x9c(sp)
    lwz     r0, 0xb4(sp)
    addi    sp, sp, 0xb0
    mtlr    r0
    blr


.globl __ct__Q36JDrama9TLightMap10TLightInfoFv
__ct__Q36JDrama9TLightMap10TLightInfoFv: # 0x802fa278
    li      r0, 0x0
    stw     r0, 0x0(r3)
    stw     r0, 0x4(r3)
    blr


.globl perform__Q26JDrama9TLightMapFUlPQ26JDrama9TGraphics
perform__Q26JDrama9TLightMapFUlPQ26JDrama9TGraphics: # 0x802fa288
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 26, 26
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r28, r4, 0x0
    addi    r27, r3, 0x0
    addi    r29, r5, 0x0
    beq-    branch_0x802fa30c
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x802fa300

branch_0x802fa2b8:
    lwz     r0, 0x14(r27)
    add     r3, r0, r31
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802fa2f8
    lwz     r3, 0x0(r3)
    addi    r0, r31, 0x4
    addi    r4, r28, 0x0
    stw     r3, 0xe4(r29)
    mr      r5, r29
    lwz     r3, 0x14(r27)
    lwzx    r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x802fa2f8:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x8
branch_0x802fa300:
    lwz     r0, 0x10(r27)
    cmpw    r30, r0
    blt+    branch_0x802fa2b8
branch_0x802fa30c:
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __dt__Q26JDrama9TLightMapFv
__dt__Q26JDrama9TLightMapFv: # 0x802fa320
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fa378
    lis     r3, 0x803e
    addi    r0, r3, 0x1ee8
    stw     r0, 0x0(r30)
    beq-    branch_0x802fa368
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fa368:
    extsh.  r0, r31
    ble-    branch_0x802fa378
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fa378:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama7TAmbAryFv
__dt__Q26JDrama7TAmbAryFv: # 0x802fa394
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fa3ec
    lis     r3, 0x803e
    addi    r0, r3, 0x1f0c
    stw     r0, 0x0(r30)
    beq-    branch_0x802fa3dc
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fa3dc:
    extsh.  r0, r31
    ble-    branch_0x802fa3ec
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fa3ec:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__Q26JDrama7TAmbAryFUlPQ26JDrama9TGraphics
perform__Q26JDrama7TAmbAryFUlPQ26JDrama9TGraphics: # 0x802fa408
    blr


.globl __dt__Q26JDrama9TLightAryFv
__dt__Q26JDrama9TLightAryFv: # 0x802fa40c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x802fa464
    lis     r3, 0x803e
    addi    r0, r3, 0x2030
    stw     r0, 0x0(r30)
    beq-    branch_0x802fa454
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x802fa454:
    extsh.  r0, r31
    ble-    branch_0x802fa464
    mr      r3, r30
    bl      __dl__FPv
branch_0x802fa464:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl _32___dt__Q26JDrama6TLightFv
_32___dt__Q26JDrama6TLightFv: # 0x802fa480
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama6TLightFv


.globl _32_JSGSetColor__Q26JDrama6TLightF8_GXColor
_32_JSGSetColor__Q26JDrama6TLightF8_GXColor: # 0x802fa488
    subi    r3, r3, 0x20
    b       JSGSetColor__Q26JDrama6TLightF8_GXColor


.globl _32_JSGGetColor__Q26JDrama6TLightCFv
_32_JSGGetColor__Q26JDrama6TLightCFv: # 0x802fa490
    subi    r3, r3, 0x20
    b       JSGGetColor__Q26JDrama6TLightCFv


.globl _32_JSGSetPosition__Q26JDrama6TLightFRC3Vec
_32_JSGSetPosition__Q26JDrama6TLightFRC3Vec: # 0x802fa498
    subi    r3, r3, 0x20
    b       JSGSetPosition__Q26JDrama6TLightFRC3Vec


.globl _32_JSGGetPosition__Q26JDrama6TLightCFP3Vec
_32_JSGGetPosition__Q26JDrama6TLightCFP3Vec: # 0x802fa4a0
    subi    r3, r3, 0x20
    b       JSGGetPosition__Q26JDrama6TLightCFP3Vec


.globl _32_JSGSetLightType__Q26JDrama6TLightFQ26JStage7TELight
_32_JSGSetLightType__Q26JDrama6TLightFQ26JStage7TELight: # 0x802fa4a8
    subi    r3, r3, 0x20
    b       JSGSetLightType__Q26JDrama6TLightFQ26JStage7TELight


.globl _32_JSGGetLightType__Q26JDrama6TLightCFv
_32_JSGGetLightType__Q26JDrama6TLightCFv: # 0x802fa4b0
    subi    r3, r3, 0x20
    b       JSGGetLightType__Q26JDrama6TLightCFv


.globl _32___dt__Q26JDrama9TIdxLightFv
_32___dt__Q26JDrama9TIdxLightFv: # 0x802fa4b8
    subi    r3, r3, 0x20
    b       __dt__Q26JDrama9TIdxLightFv


.globl _16_JSGSetColor__Q26JDrama9TAmbColorF8_GXColor
_16_JSGSetColor__Q26JDrama9TAmbColorF8_GXColor: # 0x802fa4c0
    subi    r3, r3, 0x10
    b       JSGSetColor__Q26JDrama9TAmbColorF8_GXColor


.globl _16_JSGGetColor__Q26JDrama9TAmbColorCFv
_16_JSGGetColor__Q26JDrama9TAmbColorCFv: # 0x802fa4c8
    subi    r3, r3, 0x10
    b       JSGGetColor__Q26JDrama9TAmbColorCFv


.globl _16___dt__Q26JDrama9TAmbColorFv
_16___dt__Q26JDrama9TAmbColorFv: # 0x802fa4d0
    subi    r3, r3, 0x10
    b       __dt__Q26JDrama9TAmbColorFv

