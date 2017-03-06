
.globl __dt__10TSandPlaneFv
__dt__10TSandPlaneFv: # 0x801de3e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801de448
    lis     r3, 0x803d
    addi    r3, r3, 0x21c0
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801de438
    lis     r3, 0x803d
    addi    r3, r3, 0x23b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801de438:
    extsh.  r0, r31
    ble-    branch_0x801de448
    mr      r3, r30
    bl      __dl__FPv
branch_0x801de448:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl hasMapCollision__12TMapObjPlaneCFv
hasMapCollision__12TMapObjPlaneCFv: # 0x801de464
    li      r3, 0x1
    blr


.globl load__10TSandPlaneFR20JSUMemoryInputStream
load__10TSandPlaneFR20JSUMemoryInputStream: # 0x801de46c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x40
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x8039
    lfs     f0, -0x2484(rtoc)
    addi    r3, r3, 0x2930
    stfs    f0, 0xfc(r30)
    stw     r0, 0x100(r30)
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x114(r30)
    lwz     r0, 0x114(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801de4d0
    lis     r3, 0x8039
    addi    r3, r3, 0x2950
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x118(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__12TMapObjPlaneFR20JSUMemoryInputStream
branch_0x801de4d0:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl load__10TRockPlaneFR20JSUMemoryInputStream
load__10TRockPlaneFR20JSUMemoryInputStream: # 0x801de4e8
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x40
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    lis     r3, 0x8039
    lfs     f0, -0x2484(rtoc)
    addi    r3, r3, 0x2970
    stfs    f0, 0xfc(r30)
    stw     r0, 0x100(r30)
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x114(r30)
    lwz     r0, 0x114(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801de54c
    lis     r3, 0x8039
    addi    r3, r3, 0x2990
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x118(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__12TMapObjPlaneFR20JSUMemoryInputStream
branch_0x801de54c:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__12TMapObjPlaneFPCc
__ct__12TMapObjPlaneFPCc: # 0x801de564
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__10TLiveActorFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x23b8
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x2480(rtoc)
    stfs    f0, 0xf4(r31)
    stfs    f0, 0xf8(r31)
    stfs    f0, 0xfc(r31)
    stw     r0, 0x100(r31)
    stw     r0, 0x104(r31)
    stw     r0, 0x108(r31)
    stw     r0, 0x10c(r31)
    stw     r0, 0x110(r31)
    stw     r0, 0x114(r31)
    sth     r0, 0x11c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__12TMapObjPlaneFR20JSUMemoryInputStream
load__12TMapObjPlaneFR20JSUMemoryInputStream: # 0x801de5d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    stw     r29, 0x24(sp)
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lwz     r3, 0x100(r31)
    lis     r0, 0x4330
    lfd     f1, -0x2478(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, 0xfc(r31)
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    stfs    f0, 0xf4(r31)
    lfs     f1, 0xf4(r31)
    lfs     f0, -0x247c(rtoc)
    fmuls   f0, f1, f0
    stfs    f0, 0xf8(r31)
    lwz     r0, 0x100(r31)
    mullw   r0, r0, r0
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x104(r31)
    lwz     r0, 0x100(r31)
    mullw   r30, r0, r0
    mulli   r3, r30, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, 0x8002
    addi    r4, r4, 0x10dc
    addi    r7, r30, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x108(r31)
    mr      r3, r31
    bl      makeMountain__12TMapObjPlaneFv
    li      r3, 0x1c
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x801de698
    mr      r3, r29
    bl      __ct__20TMapCheckGroundPlaneFv
branch_0x801de698:
    stw     r29, 0x10c(r31)
    lwz     r4, 0x100(r31)
    lwz     r3, 0x10c(r31)
    lfs     f1, 0xfc(r31)
    mr      r5, r4
    bl      init__20TMapCheckGroundPlaneFiif
    li      r30, 0x0
    b       branch_0x801de718

branch_0x801de6b8:
    li      r29, 0x0
    b       branch_0x801de704

branch_0x801de6c0:
    lwz     r3, 0x10c(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    li      r6, 0x0
    bl      getCheckData__20TMapCheckGroundPlaneCFiii
    stw     r31, 0x44(r3)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    lwz     r3, 0x10c(r31)
    li      r6, 0x1
    bl      getCheckData__20TMapCheckGroundPlaneCFiii
    stw     r31, 0x44(r3)
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r29, r29, 0x1
branch_0x801de704:
    lwz     r3, 0x100(r31)
    subi    r0, r3, 0x1
    cmpw    r29, r0
    blt+    branch_0x801de6c0
    addi    r30, r30, 0x1
branch_0x801de718:
    lwz     r3, 0x100(r31)
    subi    r0, r3, 0x1
    cmpw    r30, r0
    blt+    branch_0x801de6b8
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl makeMountain__12TMapObjPlaneFv
makeMountain__12TMapObjPlaneFv: # 0x801de744
    mflr    r0
    lis     r5, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    lwz     r11, 0x118(r3)
    li      r3, 0x0
    lfs     f4, -0x2470(rtoc)
    lbz     r4, 0x17(r11)
    lbz     r0, 0x18(r11)
    lbz     r8, 0x13(r11)
    slwi    r6, r4, 8
    slwi    r0, r0, 16
    lbz     r4, 0x19(r11)
    lbz     r7, 0x14(r11)
    slwi    r10, r8, 8
    lbz     r9, 0x15(r11)
    slwi    r8, r7, 16
    lbz     r7, 0x16(r11)
    add     r0, r0, r6
    lbz     r11, 0x12(r11)
    add     r6, r8, r10
    lfd     f3, -0x2468(rtoc)
    add     r7, r0, r7
    lfs     f2, -0x246c(rtoc)
    slwi    r4, r4, 24
    add     r7, r4, r7
    slwi    r0, r9, 24
    add     r8, r6, r11
    add     r8, r0, r8
    subi    r7, r7, 0x1
    b       branch_0x801de838

branch_0x801de7d0:
    subf    r0, r3, r7
    mullw   r9, r8, r0
    li      r10, 0x0
    b       branch_0x801de828

branch_0x801de7e0:
    lwz     r6, 0x118(r31)
    mullw   r0, r3, r0
    lfs     f0, 0x14(r31)
    lwz     r4, 0x104(r31)
    add     r6, r6, r10
    addi    r6, r6, 0x436
    lbzx    r6, r9, r6
    add     r0, r10, r0
    slwi    r0, r0, 2
    stw     r6, 0x4c(sp)
    addi    r10, r10, 0x1
    stw     r5, 0x48(sp)
    lfd     f1, 0x48(sp)
    fsubs   f1, f1, f3
    fmuls   f1, f4, f1
    fdivs   f1, f1, f2
    fadds   f0, f1, f0
    stfsx   f0, r4, r0
branch_0x801de828:
    lwz     r0, 0x100(r31)
    cmpw    r10, r0
    blt+    branch_0x801de7e0
    addi    r3, r3, 0x1
branch_0x801de838:
    lwz     r0, 0x100(r31)
    cmpw    r3, r0
    blt+    branch_0x801de7d0
    li      r30, 0x0
    b       branch_0x801de878

branch_0x801de84c:
    li      r29, 0x0
    b       branch_0x801de868

branch_0x801de854:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      calcNrm__12TMapObjPlaneFii
    addi    r29, r29, 0x1
branch_0x801de868:
    lwz     r0, 0x100(r31)
    cmpw    r29, r0
    blt+    branch_0x801de854
    addi    r30, r30, 0x1
branch_0x801de878:
    lwz     r0, 0x100(r31)
    cmpw    r30, r0
    blt+    branch_0x801de84c
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl perform__12TMapObjPlaneFUlPQ26JDrama9TGraphics
perform__12TMapObjPlaneFUlPQ26JDrama9TGraphics: # 0x801de8a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x114(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801de8d8
    rlwinm. r0, r4, 0, 28, 28
    beq-    branch_0x801de8d8
    mr      r3, r31
    bl      initDraw__12TMapObjPlaneFv
    mr      r3, r31
    bl      draw__12TMapObjPlaneFv
branch_0x801de8d8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl receiveMessage__12TMapObjPlaneFP9THitActorUl
receiveMessage__12TMapObjPlaneFP9THitActorUl: # 0x801de8ec
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801de918
    lfs     f1, 0x10(r4)
    lfs     f2, 0x18(r4)
    lfs     f3, -0x78c8(r13)
    bl      depress__12TMapObjPlaneFfff
    li      r3, 0x1
    b       branch_0x801de93c

branch_0x801de918:
    cmplwi  r5, 0xf
    bne-    branch_0x801de938
    lfs     f1, 0x10(r4)
    lfs     f2, 0x18(r4)
    lfs     f3, -0x78c4(r13)
    bl      depress__12TMapObjPlaneFfff
    li      r3, 0x1
    b       branch_0x801de93c

branch_0x801de938:
    li      r3, 0x0
branch_0x801de93c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl depress__12TMapObjPlaneFfff
depress__12TMapObjPlaneFfff: # 0x801de94c
    mflr    r0
    lis     r7, 0x4330
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    stw     r29, 0x64(sp)
    mr      r29, r3
    stw     r28, 0x60(sp)
    lwz     r4, 0x10c(r3)
    lfd     f5, -0x2478(rtoc)
    lfs     f0, 0x14(r4)
    lfs     f6, 0xc(r4)
    fadds   f4, f1, f0
    lwz     r0, 0x100(r3)
    fadds   f0, f2, f0
    lfs     f1, -0x2460(rtoc)
    lwz     r5, 0x104(r29)
    fmuls   f7, f6, f4
    fmuls   f6, f6, f0
    fctiwz  f2, f7
    fctiwz  f0, f6
    stfd    f2, 0x58(sp)
    lwz     r31, 0x5c(sp)
    stfd    f0, 0x50(sp)
    xoris   r6, r31, 0x8000
    lwz     r30, 0x54(sp)
    mr      r4, r31
    stw     r6, 0x4c(sp)
    xoris   r6, r30, 0x8000
    stw     r6, 0x44(sp)
    mullw   r0, r30, r0
    stw     r7, 0x48(sp)
    stw     r7, 0x40(sp)
    lfd     f2, 0x48(sp)
    add     r0, r31, r0
    lfd     f0, 0x40(sp)
    slwi    r0, r0, 2
    fsubs   f4, f2, f5
    fsubs   f2, f0, f5
    add     r6, r5, r0
    lfs     f0, 0x0(r6)
    addi    r28, r30, 0x1
    fsubs   f7, f7, f4
    fsubs   f2, f6, f2
    subi    r5, r30, 0x1
    fsubs   f5, f1, f7
    fsubs   f4, f1, f2
    fadds   f1, f7, f2
    fadds   f2, f5, f2
    fadds   f5, f5, f4
    fadds   f4, f7, f4
    fnmsubs  f0, f3, f5, f0
    stfs    f0, 0x0(r6)
    lwz     r0, 0x100(r29)
    lwz     r7, 0x104(r29)
    mullw   r0, r30, r0
    add     r6, r31, r0
    addi    r0, r6, 0x1
    slwi    r0, r0, 2
    add     r6, r7, r0
    lfs     f0, 0x0(r6)
    fnmsubs  f0, f3, f4, f0
    stfs    f0, 0x0(r6)
    lwz     r0, 0x100(r29)
    lwz     r6, 0x104(r29)
    mullw   r0, r28, r0
    add     r0, r31, r0
    slwi    r0, r0, 2
    add     r6, r6, r0
    lfs     f0, 0x0(r6)
    fnmsubs  f0, f3, f2, f0
    stfs    f0, 0x0(r6)
    lwz     r0, 0x100(r29)
    lwz     r7, 0x104(r29)
    mullw   r0, r28, r0
    add     r6, r31, r0
    addi    r0, r6, 0x1
    slwi    r0, r0, 2
    add     r6, r7, r0
    lfs     f0, 0x0(r6)
    fnmsubs  f0, f3, f1, f0
    stfs    f0, 0x0(r6)
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1
    subi    r5, r30, 0x1
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    subi    r4, r31, 0x1
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    addi    r4, r31, 0x1
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    addi    r4, r31, 0x2
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r28, 0x0
    subi    r4, r31, 0x1
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r28, 0x0
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x1
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1
    addi    r5, r30, 0x2
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x2
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1
    addi    r5, r30, 0x2
    bl      calcNrm__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    subi    r4, r31, 0x1
    subi    r5, r30, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    subi    r5, r30, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x1
    subi    r5, r30, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    subi    r4, r31, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r30, 0x0
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    addi    r4, r31, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r28, 0x0
    subi    r4, r31, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r5, r28, 0x0
    bl      updateCheckData__12TMapObjPlaneFii
    addi    r3, r29, 0x0
    addi    r5, r28, 0x0
    addi    r4, r31, 0x1
    bl      updateCheckData__12TMapObjPlaneFii
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    lwz     r29, 0x64(sp)
    lwz     r28, 0x60(sp)
    addi    sp, sp, 0x70
    blr


.globl calcNrm__12TMapObjPlaneFii
calcNrm__12TMapObjPlaneFii: # 0x801debfc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x230(sp)
    stfd    f31, 0x228(sp)
    stfd    f30, 0x220(sp)
    stfd    f29, 0x218(sp)
    stfd    f28, 0x210(sp)
    stfd    f27, 0x208(sp)
    stfd    f26, 0x200(sp)
    stfd    f25, 0x1f8(sp)
    stfd    f24, 0x1f0(sp)
    stw     r31, 0x1ec(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x1e8(sp)
    mr.     r30, r4
    stw     r29, 0x1e4(sp)
    addi    r29, r3, 0x0
    blt-    branch_0x801df084
    lwz     r3, 0x100(r29)
    cmpw    r3, r30
    ble-    branch_0x801df084
    cmpwi   r31, 0x0
    blt-    branch_0x801df084
    cmpw    r3, r31
    bgt-    branch_0x801dec64
    b       branch_0x801df084

branch_0x801dec64:
    mullw   r5, r31, r3
    lwz     r4, 0x104(r29)
    add     r0, r30, r5
    slwi    r0, r0, 2
    cmpwi   r3, 0x0
    lfsx    f31, r4, r0
    subi    r0, r31, 0x1
    bgt-    branch_0x801dec94
    li      r0, 0x0
    b       branch_0x801decac


.incbin "./baserom/code/Text_0x80005600.bin", 0x1d968c, 0x801dec90 - 0x801dec8c
branch_0x801dec90:
    subf    r0, r3, r0
branch_0x801dec94:
    cmpw    r0, r3
    bge+    branch_0x801dec90
    b       branch_0x801deca4

branch_0x801deca0:
    add     r0, r0, r3
branch_0x801deca4:
    cmpwi   r0, 0x0
    blt+    branch_0x801deca0
branch_0x801decac:
    mullw   r0, r0, r3
    lfs     f26, 0xfc(r29)
    fneg    f25, f26
    add     r0, r30, r0
    slwi    r0, r0, 2
    cmpwi   r3, 0x0
    lfsx    f30, r4, r0
    addi    r0, r31, 0x1
    bgt-    branch_0x801dece0
    li      r0, 0x0
    b       branch_0x801decf8


.incbin "./baserom/code/Text_0x80005600.bin", 0x1d96d8, 0x801decdc - 0x801decd8
branch_0x801decdc:
    subf    r0, r3, r0
branch_0x801dece0:
    cmpw    r0, r3
    bge+    branch_0x801decdc
    b       branch_0x801decf0

branch_0x801decec:
    add     r0, r0, r3
branch_0x801decf0:
    cmpwi   r0, 0x0
    blt+    branch_0x801decec
branch_0x801decf8:
    mullw   r0, r0, r3
    add     r0, r30, r0
    slwi    r0, r0, 2
    cmpwi   r3, 0x0
    lfsx    f29, r4, r0
    subi    r0, r30, 0x1
    bgt-    branch_0x801ded24
    li      r0, 0x0
    b       branch_0x801ded3c


.incbin "./baserom/code/Text_0x80005600.bin", 0x1d971c, 0x801ded20 - 0x801ded1c
branch_0x801ded20:
    subf    r0, r3, r0
branch_0x801ded24:
    cmpw    r0, r3
    bge+    branch_0x801ded20
    b       branch_0x801ded34

branch_0x801ded30:
    add     r0, r0, r3
branch_0x801ded34:
    cmpwi   r0, 0x0
    blt+    branch_0x801ded30
branch_0x801ded3c:
    add     r0, r0, r5
    slwi    r0, r0, 2
    cmpwi   r3, 0x0
    lfsx    f28, r4, r0
    addi    r0, r30, 0x1
    bgt-    branch_0x801ded64
    li      r0, 0x0
    b       branch_0x801ded7c


.incbin "./baserom/code/Text_0x80005600.bin", 0x1d975c, 0x801ded60 - 0x801ded5c
branch_0x801ded60:
    subf    r0, r3, r0
branch_0x801ded64:
    cmpw    r0, r3
    bge+    branch_0x801ded60
    b       branch_0x801ded74

branch_0x801ded70:
    add     r0, r0, r3
branch_0x801ded74:
    cmpwi   r0, 0x0
    blt+    branch_0x801ded70
branch_0x801ded7c:
    lfs     f3, -0x2480(rtoc)
    add     r0, r0, r5
    slwi    r0, r0, 2
    fsubs   f5, f28, f31
    fsubs   f4, f25, f3
    fsubs   f6, f3, f25
    lfsx    f27, r4, r0
    fsubs   f7, f30, f28
    fmuls   f2, f4, f5
    fmuls   f1, f6, f3
    fmuls   f0, f7, f4
    addi    r3, sp, 0x194
    fmsubs  f2, f7, f3, f2
    fmsubs  f1, f4, f4, f1
    fmsubs  f0, f6, f5, f0
    stfs    f2, 0x194(sp)
    mr      r4, r3
    stfs    f1, 0x198(sp)
    stfs    f0, 0x19c(sp)
    lfs     f24, -0x2460(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x245c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801dedf4
    lfs     f0, -0x2480(rtoc)
    stfs    f0, 0x19c(sp)
    stfs    f0, 0x198(sp)
    stfs    f0, 0x194(sp)
    b       branch_0x801dee08

branch_0x801dedf4:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f24, f1
    addi    r3, sp, 0x194
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801dee08:
    lfs     f3, -0x2480(rtoc)
    fsubs   f7, f27, f30
    addi    r3, sp, 0x188
    fsubs   f4, f30, f31
    fsubs   f8, f3, f25
    fsubs   f5, f25, f3
    fsubs   f6, f26, f3
    mr      r4, r3
    fmuls   f2, f8, f4
    fmuls   f0, f7, f3
    fmuls   f1, f6, f5
    fmsubs  f2, f7, f5, f2
    fmsubs  f0, f6, f4, f0
    fmsubs  f1, f8, f3, f1
    stfs    f2, 0x188(sp)
    stfs    f1, 0x18c(sp)
    stfs    f0, 0x190(sp)
    lfs     f24, -0x2460(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x245c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801dee78
    lfs     f0, -0x2480(rtoc)
    stfs    f0, 0x190(sp)
    stfs    f0, 0x18c(sp)
    stfs    f0, 0x188(sp)
    b       branch_0x801dee8c

branch_0x801dee78:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f24, f1
    addi    r3, sp, 0x188
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801dee8c:
    lfs     f3, -0x2480(rtoc)
    fsubs   f7, f28, f29
    addi    r3, sp, 0x17c
    fsubs   f4, f29, f31
    fsubs   f8, f3, f26
    fsubs   f5, f26, f3
    fsubs   f6, f25, f3
    mr      r4, r3
    fmuls   f2, f8, f4
    fmuls   f0, f7, f3
    fmuls   f1, f6, f5
    fmsubs  f2, f7, f5, f2
    fmsubs  f0, f6, f4, f0
    fmsubs  f1, f8, f3, f1
    stfs    f2, 0x17c(sp)
    stfs    f1, 0x180(sp)
    stfs    f0, 0x184(sp)
    lfs     f24, -0x2460(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x245c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801deefc
    lfs     f0, -0x2480(rtoc)
    stfs    f0, 0x184(sp)
    stfs    f0, 0x180(sp)
    stfs    f0, 0x17c(sp)
    b       branch_0x801def10

branch_0x801deefc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f24, f1
    addi    r3, sp, 0x17c
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801def10:
    lfs     f3, -0x2480(rtoc)
    addi    r3, sp, 0x170
    fsubs   f5, f27, f31
    mr      r4, r3
    fsubs   f4, f26, f3
    fsubs   f6, f3, f26
    fsubs   f7, f29, f27
    fmuls   f2, f4, f5
    fmuls   f1, f6, f3
    fmuls   f0, f7, f4
    fmsubs  f2, f7, f3, f2
    fmsubs  f1, f4, f4, f1
    fmsubs  f0, f6, f5, f0
    stfs    f2, 0x170(sp)
    stfs    f1, 0x174(sp)
    stfs    f0, 0x178(sp)
    lfs     f24, -0x2460(rtoc)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x245c(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801def7c
    lfs     f0, -0x2480(rtoc)
    stfs    f0, 0x178(sp)
    stfs    f0, 0x174(sp)
    stfs    f0, 0x170(sp)
    b       branch_0x801def90

branch_0x801def7c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f24, f1
    addi    r3, sp, 0x170
    addi    r4, r3, 0x0
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801def90:
    lwz     r0, 0x100(r29)
    addi    r3, sp, 0x7c
    lwz     r7, 0x108(r29)
    addi    r4, sp, 0x188
    mullw   r6, r31, r0
    lwz     r0, 0x194(sp)
    lwz     r5, 0x198(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x19c(sp)
    add     r6, r30, r6
    stw     r5, 0x80(sp)
    mulli   r5, r6, 0xc
    stw     r0, 0x84(sp)
    add     r29, r7, r5
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x7c(sp)
    addi    r3, sp, 0x70
    lwz     r5, 0x80(sp)
    addi    r4, sp, 0x17c
    stw     r0, 0x14c(sp)
    lwz     r0, 0x84(sp)
    stw     r5, 0x150(sp)
    stw     r0, 0x154(sp)
    lwz     r0, 0x14c(sp)
    lwz     r5, 0x150(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0x154(sp)
    stw     r5, 0x74(sp)
    stw     r0, 0x78(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x70(sp)
    addi    r3, sp, 0xbc
    lwz     r5, 0x74(sp)
    addi    r4, sp, 0x170
    stw     r0, 0x158(sp)
    lwz     r0, 0x78(sp)
    stw     r5, 0x15c(sp)
    stw     r0, 0x160(sp)
    lwz     r0, 0x158(sp)
    lwz     r5, 0x15c(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x160(sp)
    stw     r5, 0xc0(sp)
    stw     r0, 0xc4(sp)
    bl      add__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0xbc(sp)
    lwz     r0, 0xc0(sp)
    stw     r3, 0x0(r29)
    stw     r0, 0x4(r29)
    lwz     r0, 0xc4(sp)
    stw     r0, 0x8(r29)
    lfs     f0, 0x0(r29)
    lfs     f1, -0x2458(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r29)
    lfs     f0, 0x4(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r29)
    lfs     f0, 0x8(r29)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r29)
branch_0x801df084:
    lwz     r0, 0x234(sp)
    lfd     f31, 0x228(sp)
    lfd     f30, 0x220(sp)
    mtlr    r0
    lfd     f29, 0x218(sp)
    lfd     f28, 0x210(sp)
    lfd     f27, 0x208(sp)
    lfd     f26, 0x200(sp)
    lfd     f25, 0x1f8(sp)
    lfd     f24, 0x1f0(sp)
    lwz     r31, 0x1ec(sp)
    lwz     r30, 0x1e8(sp)
    lwz     r29, 0x1e4(sp)
    addi    sp, sp, 0x230
    blr


.globl updateCheckData__12TMapObjPlaneFii
updateCheckData__12TMapObjPlaneFii: # 0x801df0c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    addi    r31, r5, 0x0
    stw     r30, 0xa8(sp)
    mr.     r30, r4
    stw     r29, 0xa4(sp)
    addi    r29, r3, 0x0
    blt-    branch_0x801df274
    lwz     r3, 0x100(r29)
    cmpw    r3, r30
    ble-    branch_0x801df274
    cmpwi   r31, 0x0
    blt-    branch_0x801df274
    cmpw    r3, r31
    bgt-    branch_0x801df108
    b       branch_0x801df274

branch_0x801df108:
    xoris   r0, r30, 0x8000
    lwz     r4, 0x10c(r29)
    stw     r0, 0x9c(sp)
    lis     r9, 0x4330
    mullw   r0, r31, r3
    lfd     f5, -0x2478(rtoc)
    stw     r9, 0x98(sp)
    lfs     f4, 0x8(r4)
    lfd     f0, 0x98(sp)
    xoris   r3, r31, 0x8000
    fsubs   f0, f0, f5
    stw     r3, 0x8c(sp)
    add     r0, r30, r0
    lfs     f3, 0x14(r4)
    slwi    r0, r0, 2
    stw     r9, 0x88(sp)
    fmsubs  f7, f0, f4, f3
    lwz     r3, 0x104(r29)
    addi    r4, r30, 0x1
    lfd     f2, 0x88(sp)
    lfsx    f0, r3, r0
    lfs     f1, -0x2454(rtoc)
    fsubs   f2, f2, f5
    stfs    f7, 0x64(sp)
    xoris   r0, r4, 0x8000
    fadds   f0, f1, f0
    fmsubs  f9, f2, f4, f3
    stw     r0, 0x94(sp)
    addi    r8, r31, 0x1
    xoris   r3, r8, 0x8000
    stfs    f0, 0x68(sp)
    mr      r4, r30
    stfs    f9, 0x6c(sp)
    addi    r5, r31, 0x0
    li      r6, 0x0
    lwz     r0, 0x100(r29)
    stw     r9, 0x90(sp)
    mullw   r0, r31, r0
    lwz     r7, 0x104(r29)
    lfd     f0, 0x90(sp)
    stw     r3, 0x84(sp)
    fsubs   f0, f0, f5
    add     r3, r30, r0
    fmsubs  f8, f0, f4, f3
    addi    r0, r3, 0x1
    stw     r9, 0x80(sp)
    slwi    r0, r0, 2
    lfsx    f0, r7, r0
    lfd     f2, 0x80(sp)
    fadds   f6, f1, f0
    stfs    f8, 0x58(sp)
    fsubs   f0, f2, f5
    stfs    f6, 0x5c(sp)
    fmsubs  f2, f0, f4, f3
    stfs    f9, 0x60(sp)
    lwz     r0, 0x100(r29)
    lwz     r3, 0x104(r29)
    mullw   r0, r8, r0
    add     r0, r30, r0
    slwi    r0, r0, 2
    lfsx    f0, r3, r0
    fadds   f0, f1, f0
    stfs    f7, 0x4c(sp)
    stfs    f0, 0x50(sp)
    stfs    f2, 0x54(sp)
    lwz     r0, 0x100(r29)
    lwz     r7, 0x104(r29)
    mullw   r0, r8, r0
    add     r3, r30, r0
    addi    r0, r3, 0x1
    slwi    r0, r0, 2
    lfsx    f0, r7, r0
    fadds   f0, f1, f0
    stfs    f8, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f2, 0x48(sp)
    lwz     r3, 0x10c(r29)
    bl      getCheckData__20TMapCheckGroundPlaneCFiii
    addi    r4, sp, 0x64
    addi    r5, sp, 0x4c
    addi    r6, sp, 0x58
    bl      setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r3, 0x10c(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    li      r6, 0x1
    bl      getCheckData__20TMapCheckGroundPlaneCFiii
    addi    r4, sp, 0x58
    addi    r5, sp, 0x4c
    addi    r6, sp, 0x40
    bl      setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x801df274:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl draw__12TMapObjPlaneFv
draw__12TMapObjPlaneFv: # 0x801df290
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stmw    r27, 0x8c(sp)
    addi    r28, r3, 0x0
    li      r29, 0x0
    lis     r31, 0x4330
    lis     r27, 0xcc01
    lfd     f31, -0x2478(rtoc)
    b       branch_0x801df438

branch_0x801df2c4:
    xoris   r30, r29, 0x8000
    lwz     r3, 0x10c(r28)
    stw     r30, 0x84(sp)
    clrlslwi  r5, r4, 17, 1
    lfs     f2, 0x8(r3)
    li      r4, 0x0
    stw     r31, 0x80(sp)
    lfs     f1, 0x14(r3)
    li      r3, 0x98
    lfd     f3, 0x80(sp)
    lfs     f0, 0xfc(r28)
    fsubs   f3, f3, f31
    fmsubs  f30, f3, f2, f1
    fadds   f29, f30, f0
    bl      GXBegin
    addi    r5, r29, 0x1
    lfs     f6, -0x78c0(r13)
    xoris   r0, r5, 0x8000
    li      r9, 0x0
    b       branch_0x801df428

branch_0x801df314:
    xoris   r8, r9, 0x8000
    lwz     r4, 0x10c(r28)
    stw     r8, 0x84(sp)
    mullw   r3, r29, r3
    lfs     f1, 0x8(r4)
    stw     r31, 0x80(sp)
    lfs     f0, 0x14(r4)
    lfd     f2, 0x80(sp)
    fsubs   f2, f2, f31
    add     r3, r9, r3
    stw     r8, 0x74(sp)
    slwi    r3, r3, 2
    lwz     r7, 0x104(r28)
    fmsubs  f5, f2, f1, f0
    lfsx    f0, r7, r3
    stw     r30, 0x7c(sp)
    stfs    f5, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f30, -0x8000(r27)
    lwz     r4, 0x100(r28)
    stw     r31, 0x70(sp)
    mullw   r3, r29, r4
    lwz     r6, 0x108(r28)
    stw     r8, 0x64(sp)
    lfd     f0, 0x70(sp)
    stw     r31, 0x78(sp)
    add     r3, r9, r3
    lfd     f1, 0x78(sp)
    mulli   r3, r3, 0xc
    fsubs   f0, f0, f31
    fsubs   f1, f1, f31
    stw     r0, 0x6c(sp)
    add     r8, r6, r3
    lfs     f4, 0x8(r8)
    mullw   r3, r5, r4
    lfs     f3, 0x4(r8)
    fmuls   f0, f0, f6
    lfs     f2, 0x0(r8)
    fmuls   f1, f1, f6
    stfs    f2, -0x8000(r27)
    add     r4, r9, r3
    mulli   r3, r4, 0xc
    stfs    f3, -0x8000(r27)
    stfs    f4, -0x8000(r27)
    slwi    r4, r4, 2
    add     r3, r6, r3
    stfs    f0, -0x8000(r27)
    addi    r9, r9, 0x1
    stfs    f1, -0x8000(r27)
    lfsx    f1, r7, r4
    stw     r31, 0x60(sp)
    stfs    f5, -0x8000(r27)
    lfd     f0, 0x60(sp)
    stfs    f1, -0x8000(r27)
    fsubs   f0, f0, f31
    stfs    f29, -0x8000(r27)
    stw     r31, 0x68(sp)
    fmuls   f0, f0, f6
    lfs     f4, 0x8(r3)
    lfd     f1, 0x68(sp)
    lfs     f3, 0x4(r3)
    lfs     f2, 0x0(r3)
    fsubs   f1, f1, f31
    stfs    f2, -0x8000(r27)
    fmuls   f1, f1, f6
    stfs    f3, -0x8000(r27)
    stfs    f4, -0x8000(r27)
    stfs    f0, -0x8000(r27)
    stfs    f1, -0x8000(r27)
branch_0x801df428:
    lwz     r3, 0x100(r28)
    cmpw    r9, r3
    blt+    branch_0x801df314
    addi    r29, r29, 0x1
branch_0x801df438:
    lwz     r4, 0x100(r28)
    subi    r0, r4, 0x1
    cmpw    r29, r0
    blt+    branch_0x801df2c4
    lmw     r27, 0x8c(sp)
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    addi    sp, sp, 0xb8
    blr


.globl initDraw__12TMapObjPlaneFv
initDraw__12TMapObjPlaneFv: # 0x801df468
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    li      r5, 0x1
    li      r6, 0x4
    stwu    sp, -0xd8(sp)
    li      r7, 0x0
    stw     r31, 0xd4(sp)
    addi    r31, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
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
    li      r3, 0xa
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, 0x8040
    addi    r3, r3, 0x45dc
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x1
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
    lwz     r0, -0x2490(rtoc)
    addi    r4, sp, 0x2c
    lbz     r5, -0x78bc(r13)
    li      r3, 0x4
    stw     r0, 0x28(sp)
    stb     r5, 0x28(sp)
    stb     r5, 0x29(sp)
    stb     r5, 0x2a(sp)
    lwz     r0, 0x28(sp)
    stw     r0, 0x2c(sp)
    bl      GXSetChanAmbColor
    lwz     r0, -0x248c(rtoc)
    addi    r4, sp, 0x24
    li      r3, 0x4
    stw     r0, 0x20(sp)
    lwz     r0, 0x20(sp)
    stw     r0, 0x24(sp)
    bl      GXSetChanMatColor
    lfs     f2, -0x2450(rtoc)
    addi    r3, sp, 0x90
    fmr     f3, f2
    fmr     f1, f2
    bl      GXInitLightPos
    lwz     r0, -0x2488(rtoc)
    addi    r4, sp, 0x1c
    addi    r3, sp, 0x90
    stw     r0, 0x18(sp)
    lwz     r0, 0x18(sp)
    stw     r0, 0x1c(sp)
    bl      GXInitLightColor
    addi    r3, sp, 0x90
    li      r4, 0x1
    bl      GXLoadLightObjImm
    li      r3, 0x1
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r4, 0x114(r31)
    li      r31, 0x0
    addi    r3, sp, 0x30
    stw     r31, 0x58(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x80(sp)
    addi    r3, sp, 0x30
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    li      r3, 0x1
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0xa
    li      r6, 0x8
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
    li      r4, 0x6
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
    li      r4, 0x4
    li      r5, 0x5
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
    addi    r3, sp, 0x30
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    addi    sp, sp, 0xd8
    mtlr    r0
    blr


.globl __dt__10TRockPlaneFv
__dt__10TRockPlaneFv: # 0x801df700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801df768
    lis     r3, 0x803d
    addi    r3, r3, 0x22bc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801df758
    lis     r3, 0x803d
    addi    r3, r3, 0x23b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801df758:
    extsh.  r0, r31
    ble-    branch_0x801df768
    mr      r3, r30
    bl      __dl__FPv
branch_0x801df768:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TMapObjPlaneFv
__dt__12TMapObjPlaneFv: # 0x801df784
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801df7d4
    lis     r3, 0x803d
    addi    r3, r3, 0x23b8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x801df7d4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801df7d4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjPlane_cpp
__sinit_MapObjPlane_cpp: # 0x801df7f0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x61c0
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801df838
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801df838:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801df868
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801df868:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801df898
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801df898:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801df8c8
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801df8c8:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801df8f8
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801df8f8:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801df928
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801df928:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801df958
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801df958:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801df988
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801df988:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801df9b8
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801df9b8:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801df9e8
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801df9e8:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801dfa18
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801dfa18:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801dfa48
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801dfa48:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801dfa78
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801dfa78:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801dfaa8
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801dfaa8:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801dfad8
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801dfad8:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TMapObjPlaneFv
_32___dt__12TMapObjPlaneFv: # 0x801dfaec
    subi    r3, r3, 0x20
    b       __dt__12TMapObjPlaneFv


.globl _32___dt__10TRockPlaneFv
_32___dt__10TRockPlaneFv: # 0x801dfaf4
    subi    r3, r3, 0x20
    b       __dt__10TRockPlaneFv


.globl _32___dt__10TSandPlaneFv
_32___dt__10TSandPlaneFv: # 0x801dfafc
    subi    r3, r3, 0x20
    b       __dt__10TSandPlaneFv

