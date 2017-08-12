
.globl __dt__11TMapObjWaveFv
__dt__11TMapObjWaveFv: # 0x801dc98c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801dc9e4
    lis     r3, __vvt__11TMapObjWave@h
    addi    r0, r3, __vvt__11TMapObjWave@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801dc9d4
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801dc9d4:
    extsh.  r0, r31
    ble-    branch_0x801dc9e4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801dc9e4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__11TMapObjWaveFPCc
__ct__11TMapObjWaveFPCc: # 0x801dca00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    stw     r29, 0x34(sp)
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r0, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r30, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r30)
    mr      r29, r30
    stw     r4, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lis     r4, __vvt__Q26JDrama8TViewObj@ha
    sth     r3, 0x8(r29)
    addi    r0, r4, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r29)
    li      r31, 0x0
    lis     r3, __vvt__11TMapObjWave@h
    sth     r31, 0xc(r29)
    addi    r0, r3, __vvt__11TMapObjWave@l
    stw     r0, 0x0(r30)
    lfs     f1, -0x2530(r2)
    stfs    f1, 0x10(r30)
    stfs    f1, 0x14(r30)
    stfs    f1, 0x18(r30)
    stw     r31, 0x20(r30)
    stfs    f1, 0x24(r30)
    stfs    f1, 0x28(r30)
    stfs    f1, 0x2c(r30)
    stfs    f1, 0x30(r30)
    stfs    f1, 0x34(r30)
    stfs    f1, 0x38(r30)
    stfs    f1, 0x3c(r30)
    stfs    f1, 0x40(r30)
    stfs    f1, 0x44(r30)
    lfs     f0, -0x252c(r2)
    stfs    f0, 0x48(r30)
    stfs    f1, 0x4c(r30)
    stfs    f1, 0x50(r30)
    lfs     f0, -0x2528(r2)
    stfs    f0, 0x54(r30)
    stfs    f0, 0x58(r30)
    stfs    f1, 0x5c(r30)
    stfs    f1, 0x60(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2518(r2)
    stw     r0, 0x2c(sp)
    lis     r29, 0x4330
    lfs     f1, -0x2524(r2)
    stw     r29, 0x28(sp)
    lfs     f0, -0x2520(r2)
    lfd     f2, 0x28(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x64(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2518(r2)
    stw     r0, 0x24(sp)
    lfs     f1, -0x2524(r2)
    stw     r29, 0x20(sp)
    lfs     f0, -0x2520(r2)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x68(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x2518(r2)
    stw     r0, 0x1c(sp)
    lfs     f0, -0x2524(r2)
    stw     r29, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x6c(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f2, -0x2518(r2)
    stw     r0, 0x14(sp)
    li      r10, 0xc8
    lfs     f0, -0x2524(r2)
    addi    r9, r13, R13Off_m0x6270
    stw     r29, 0x10(sp)
    li      r8, 0xff
    lfd     f1, 0x10(sp)
    li      r7, 0xc2
    li      r6, 0xf2
    fsubs   f1, f1, f2
    li      r5, 0xbe
    li      r4, 0x48
    li      r0, 0x90
    fmuls   f0, f0, f1
    addi    r3, r30, 0x0
    stfs    f0, 0x70(r30)
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x74(r30)
    stfs    f0, 0x78(r30)
    stw     r31, 0x94(r30)
    sth     r31, 0x98(r30)
    stb     r10, R13Off_m0x6270(r13)
    stb     r10, 0x1(r9)
    stb     r8, 0x2(r9)
    stb     r31, 0x3(r9)
    sth     r7, 0x7c(r30)
    sth     r6, 0x7e(r30)
    sth     r5, 0x80(r30)
    sth     r31, 0x82(r30)
    sth     r31, 0x84(r30)
    sth     r31, 0x86(r30)
    sth     r31, 0x88(r30)
    sth     r4, 0x8a(r30)
    sth     r31, 0x8c(r30)
    sth     r31, 0x8e(r30)
    sth     r31, 0x90(r30)
    sth     r0, 0x92(r30)
    stw     r30, R13Off_m0x626c(r13)
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl load__11TMapObjWaveFR20JSUMemoryInputStream
load__11TMapObjWaveFR20JSUMemoryInputStream: # 0x801dcc08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lfs     f0, -0x2510(r2)
    lis     r3, unk_80392568@h
    addi    r3, r3, unk_80392568@l
    stfs    f0, 0x10(r31)
    lfs     f0, -0x250c(r2)
    stfs    f0, 0x1c(r31)
    lfs     f1, 0x10(r31)
    lfs     f0, -0x2508(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, -0x2504(r2)
    lfs     f0, 0x14(r31)
    fdivs   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x1c(r31)
    fdivs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x20(sp)
    lwz     r0, 0x24(sp)
    stw     r0, 0x20(r31)
    bl      getGlbResource__13JKRFileLoaderFPCc
    stw     r3, 0x94(r31)
    lfs     f1, -0x2500(r2)
    stfs    f1, 0x60(r31)
    lfs     f0, -0x24fc(r2)
    stfs    f0, 0x74(r31)
    stfs    f1, 0x78(r31)
    lfs     f0, -0x24f8(r2)
    stfs    f0, 0x4c(r31)
    lfs     f0, -0x24f4(r2)
    stfs    f0, 0x50(r31)
    lfs     f0, -0x24f0(r2)
    stfs    f0, 0x24(r31)
    lfs     f0, -0x24ec(r2)
    stfs    f0, 0x28(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0xd
    beq-    branch_0x801dcd54
    bge-    branch_0x801dcce8
    cmpwi   r0, 0x4
    beq-    branch_0x801dcd30
    bge-    branch_0x801dccdc
    cmpwi   r0, 0x3
    bge-    branch_0x801dcd00
    b       branch_0x801dcd98

branch_0x801dccdc:
    cmpwi   r0, 0x9
    beq-    branch_0x801dcd78
    b       branch_0x801dcd98

branch_0x801dcce8:
    cmpwi   r0, 0x34
    beq-    branch_0x801dcd78
    bge-    branch_0x801dcd98
    cmpwi   r0, 0x1e
    beq-    branch_0x801dcd00
    b       branch_0x801dcd98

branch_0x801dcd00:
    lfs     f0, -0x24e8(r2)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x24e4(r2)
    stfs    f0, 0x30(r31)
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x40(r31)
    b       branch_0x801dcdb4

branch_0x801dcd30:
    lfs     f0, -0x24e0(r2)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x24dc(r2)
    stfs    f0, 0x30(r31)
    lfs     f0, -0x24d8(r2)
    stfs    f0, 0x34(r31)
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x38(r31)
    b       branch_0x801dcdb4

branch_0x801dcd54:
    lfs     f0, -0x24dc(r2)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x24e8(r2)
    stfs    f0, 0x30(r31)
    lfs     f0, -0x24d8(r2)
    stfs    f0, 0x34(r31)
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x38(r31)
    b       branch_0x801dcdb4

branch_0x801dcd78:
    lfs     f0, -0x24d4(r2)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x24d0(r2)
    stfs    f0, 0x30(r31)
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
    b       branch_0x801dcdb4

branch_0x801dcd98:
    lfs     f0, -0x24dc(r2)
    stfs    f0, 0x2c(r31)
    lfs     f0, -0x24e8(r2)
    stfs    f0, 0x30(r31)
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x34(r31)
    stfs    f0, 0x38(r31)
branch_0x801dcdb4:
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x40(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl perform__11TMapObjWaveFUlPQ26JDrama9TGraphics
perform__11TMapObjWaveFUlPQ26JDrama9TGraphics: # 0x801dcdd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r0, 0x94(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801dce48
    clrlwi. r0, r31, 31
    beq-    branch_0x801dce30
    mr      r3, r30
    bl      updateTime__11TMapObjWaveFv
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x801dce28
    cmplwi  r0, 0x6
    bne-    branch_0x801dce30
branch_0x801dce28:
    mr      r3, r30
    bl      updateHeightAndAlpha__11TMapObjWaveFv
branch_0x801dce30:
    rlwinm. r0, r31, 0, 28, 28
    beq-    branch_0x801dce48
    mr      r3, r30
    bl      initDraw__11TMapObjWaveFv
    mr      r3, r30
    bl      draw__11TMapObjWaveFv
branch_0x801dce48:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl updateTime__11TMapObjWaveFv
updateTime__11TMapObjWaveFv: # 0x801dce60
    lfs     f1, 0x64(r3)
    lfs     f0, 0x24(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x64(r3)
    lfs     f1, 0x64(r3)
    lfs     f0, -0x24cc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dce88
    fsubs   f0, f1, f0
    stfs    f0, 0x64(r3)
branch_0x801dce88:
    lfs     f1, 0x68(r3)
    lfs     f0, 0x28(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x68(r3)
    lfs     f1, 0x68(r3)
    lfs     f0, -0x24cc(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dceb0
    fsubs   f0, f1, f0
    stfs    f0, 0x68(r3)
branch_0x801dceb0:
    lfs     f1, 0x6c(r3)
    lfs     f0, 0x60(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(r3)
    lfs     f1, 0x6c(r3)
    lfs     f0, -0x2504(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dced8
    fsubs   f0, f1, f0
    stfs    f0, 0x6c(r3)
branch_0x801dced8:
    lfs     f1, 0x70(r3)
    lfs     f0, 0x60(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x70(r3)
    lfs     f1, 0x70(r3)
    lfs     f0, -0x2504(r2)
    fcmpo   cr0, f1, f0
    blelr-    

    fsubs   f0, f1, f0
    stfs    f0, 0x70(r3)
    blr


.globl updateHeightAndAlpha__11TMapObjWaveFv
updateHeightAndAlpha__11TMapObjWaveFv: # 0x801dcf04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    addi    r5, sp, 0x60
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, R13Off_m0x6328(r13)
    bl      checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
    lwz     r5, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x5c
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x0(r5)
    lfs     f2, -0x24d4(r2)
    lfs     f3, 0x8(r5)
    bl      checkGroundExactY__4TMapCFfffPPC12TBGCheckData
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x801dcf5c
    li      r0, 0x1
    b       branch_0x801dcf60

branch_0x801dcf5c:
    li      r0, 0x0
branch_0x801dcf60:
    clrlwi. r0, r0, 24
    bne-    branch_0x801dcff0
    lwz     r3, 0x5c(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801dcf98
    cmplwi  r3, 0x101
    beq-    branch_0x801dcf98
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801dcf98
    cmplwi  r3, 0x4104
    bne-    branch_0x801dcfa0
branch_0x801dcf98:
    li      r0, 0x1
    b       branch_0x801dcfa4

branch_0x801dcfa0:
    li      r0, 0x0
branch_0x801dcfa4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801dcff0
    lwz     r3, 0x60(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801dcfdc
    cmplwi  r3, 0x101
    beq-    branch_0x801dcfdc
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801dcfdc
    cmplwi  r3, 0x4104
    bne-    branch_0x801dcfe4
branch_0x801dcfdc:
    li      r0, 0x1
    b       branch_0x801dcfe8

branch_0x801dcfe4:
    li      r0, 0x0
branch_0x801dcfe8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801dd0f4
branch_0x801dcff0:
    lwz     r5, R13Off_m0x60b4(r13)
    addi    r4, sp, 0x5c
    lwz     r3, R13Off_m0x6328(r13)
    lfs     f1, 0x0(r5)
    lfs     f2, -0x2530(r2)
    lfs     f3, 0x8(r5)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    lfs     f3, 0x4c(r31)
    lfs     f0, -0x2530(r2)
    fadds   f2, f3, f1
    fcmpo   cr0, f2, f0
    blt-    branch_0x801dd044
    lwz     r3, 0x5c(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x700
    bne-    branch_0x801dd038
    li      r0, 0x1
    b       branch_0x801dd03c

branch_0x801dd038:
    li      r0, 0x0
branch_0x801dd03c:
    clrlwi. r0, r0, 24
    beq-    branch_0x801dd058
branch_0x801dd044:
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x30(r31)
    stfs    f0, 0x40(r31)
    b       branch_0x801dd08c

branch_0x801dd058:
    fdivs   f2, f2, f3
    lfs     f3, -0x2504(r2)
    lfs     f4, 0x34(r31)
    lfs     f0, 0x2c(r31)
    fsubs   f3, f3, f2
    fsubs   f0, f0, f4
    fmadds  f0, f3, f0, f4
    stfs    f0, 0x3c(r31)
    lfs     f2, 0x38(r31)
    lfs     f0, 0x30(r31)
    fsubs   f0, f0, f2
    fmadds  f0, f3, f0, f2
    stfs    f0, 0x40(r31)
branch_0x801dd08c:
    lfs     f2, 0x50(r31)
    lfs     f0, -0x2530(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x801dd0c4
    lwz     r3, 0x5c(sp)
    lhz     r0, 0x0(r3)
    cmplwi  r0, 0x700
    bne-    branch_0x801dd0b8
    li      r0, 0x1
    b       branch_0x801dd0bc

branch_0x801dd0b8:
    li      r0, 0x0
branch_0x801dd0bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801dd0d0
branch_0x801dd0c4:
    lfs     f0, 0x58(r31)
    stfs    f0, 0x54(r31)
    b       branch_0x801dd10c

branch_0x801dd0d0:
    fdivs   f1, f1, f2
    lfs     f2, -0x2504(r2)
    lfs     f3, 0x5c(r31)
    lfs     f0, 0x58(r31)
    fsubs   f1, f2, f1
    fsubs   f0, f0, f3
    fmadds  f0, f1, f0, f3
    stfs    f0, 0x54(r31)
    b       branch_0x801dd10c

branch_0x801dd0f4:
    lfs     f0, 0x34(r31)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x38(r31)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x5c(r31)
    stfs    f0, 0x54(r31)
branch_0x801dd10c:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x801dd170
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, -0x24c8(r2)
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801dd170
    lfs     f0, -0x24c4(r2)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801dd170
    lfs     f0, -0x24c0(r2)
    lfs     f1, 0x8(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801dd170
    lfs     f0, -0x24bc(r2)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801dd170
    lfs     f0, 0x34(r31)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x38(r31)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x5c(r31)
    stfs    f0, 0x54(r31)
branch_0x801dd170:
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, R13Off_m0x70e4(r13)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    beq-    branch_0x801dd1b8
    lwz     r4, R13Off_m0x70e4(r13)
    slwi    r0, r3, 2
    lfs     f1, 0x44(r31)
    lwz     r3, 0x14(r4)
    lwz     r3, 0x10(r3)
    lwzx    r3, r3, r0
    lfs     f0, 0x3c(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801dd1dc
    lfs     f0, 0x48(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x44(r31)
    b       branch_0x801dd1dc

branch_0x801dd1b8:
    lfs     f1, 0x44(r31)
    lfs     f0, -0x2530(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dd1d8
    lfs     f0, 0x48(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(r31)
    b       branch_0x801dd1dc

branch_0x801dd1d8:
    stfs    f0, 0x44(r31)
branch_0x801dd1dc:
    lfs     f1, 0x44(r31)
    lfs     f0, -0x2530(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801dd208
    lfs     f0, 0x2c(r31)
    fadds   f0, f0, f1
    stfs    f0, 0x3c(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x44(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x40(r31)
branch_0x801dd208:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl draw__11TMapObjWaveFv
draw__11TMapObjWaveFv: # 0x801dd21c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stfd    f31, 0xe8(sp)
    stfd    f30, 0xe0(sp)
    stfd    f29, 0xd8(sp)
    stfd    f28, 0xd0(sp)
    stfd    f27, 0xc8(sp)
    stfd    f26, 0xc0(sp)
    stfd    f25, 0xb8(sp)
    stfd    f24, 0xb0(sp)
    stfd    f23, 0xa8(sp)
    stfd    f22, 0xa0(sp)
    stfd    f21, 0x98(sp)
    stfd    f20, 0x90(sp)
    stmw    r26, 0x78(sp)
    mr      r26, r3
    lis     r31, 0xcc01
    lfs     f0, 0x14(r3)
    lfs     f31, -0x24b8(r2)
    fneg    f24, f0
    lfs     f29, -0x2504(r2)
    lfs     f30, -0x24b4(r2)
    b       branch_0x801dd4ec

branch_0x801dd27c:
    lwz     r5, R13Off_m0x60b4(r13)
    li      r3, 0x98
    lwz     r0, 0x20(r26)
    li      r4, 0x0
    lfs     f0, 0x8(r5)
    clrlslwi  r5, r0, 17, 1
    fadds   f25, f24, f0
    fadds   f23, f25, f1
    bl      GXBegin
    lfs     f0, 0x14(r26)
    fmuls   f27, f31, f25
    fmuls   f26, f31, f23
    fneg    f22, f0
    fabs    f28, f24
    b       branch_0x801dd4d0

branch_0x801dd2b8:
    fabs    f2, f22
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f2, f28
    fadds   f21, f22, f0
    ble-    branch_0x801dd2f0
    lfs     f0, 0x18(r26)
    lfs     f1, 0x54(r26)
    fnmsubs  f0, f0, f2, f29
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r30, 0x74(sp)
    b       branch_0x801dd30c

branch_0x801dd2f0:
    lfs     f0, 0x18(r26)
    lfs     f1, 0x54(r26)
    fnmsubs  f0, f0, f28, f29
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r30, 0x74(sp)
branch_0x801dd30c:
    lfs     f0, 0x1c(r26)
    fabs    f3, f22
    fadds   f0, f24, f0
    fabs    f2, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x801dd344
    lfs     f0, 0x18(r26)
    lfs     f1, 0x54(r26)
    fnmsubs  f0, f0, f3, f29
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r29, 0x74(sp)
    b       branch_0x801dd360

branch_0x801dd344:
    lfs     f0, 0x18(r26)
    lfs     f1, 0x54(r26)
    fnmsubs  f0, f0, f2, f29
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x70(sp)
    lwz     r29, 0x74(sp)
branch_0x801dd360:
    lwz     r0, 0x94(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x801dd374
    lfs     f0, -0x2530(r2)
    b       branch_0x801dd3ac

branch_0x801dd374:
    fmuls   f1, f31, f21
    lfs     f2, 0x24(r26)
    lfs     f0, 0x64(r26)
    fmadds  f1, f2, f1, f0
    bl      sinf
    lfs     f3, 0x3c(r26)
    lfs     f2, 0x28(r26)
    lfs     f0, 0x68(r26)
    fmuls   f20, f3, f1
    fmadds  f1, f2, f27, f0
    bl      sinf
    lfs     f0, 0x40(r26)
    fmuls   f0, f0, f1
    fadds   f0, f20, f0
branch_0x801dd3ac:
    stfs    f21, -0x8000(r31)
    addi    r28, r13, R13Off_m0x6270
    addi    r27, r13, R13Off_m0x6270
    lbz     r0, R13Off_m0x6270(r13)
    stfs    f0, -0x8000(r31)
    stfs    f25, -0x8000(r31)
    lbzu    r4, 0x2(r28)
    lbzu    r3, 0x1(r27)
    stb     r0, -0x8000(r31)
    stb     r3, -0x8000(r31)
    stb     r4, -0x8000(r31)
    stb     r30, -0x8000(r31)
    lfs     f2, 0x74(r26)
    lfs     f1, 0x6c(r26)
    fmuls   f0, f21, f2
    fmuls   f2, f25, f2
    fadds   f0, f1, f0
    stfs    f0, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    lfs     f1, 0x78(r26)
    lfs     f2, 0x70(r26)
    fmuls   f0, f21, f1
    fmuls   f1, f25, f1
    fmuls   f0, f30, f0
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    lwz     r0, 0x94(r26)
    cmplwi  r0, 0x0
    bne-    branch_0x801dd42c
    lfs     f0, -0x2530(r2)
    b       branch_0x801dd464

branch_0x801dd42c:
    fmuls   f1, f31, f21
    lfs     f2, 0x24(r26)
    lfs     f0, 0x64(r26)
    fmadds  f1, f2, f1, f0
    bl      sinf
    lfs     f3, 0x3c(r26)
    lfs     f2, 0x28(r26)
    lfs     f0, 0x68(r26)
    fmuls   f20, f3, f1
    fmadds  f1, f2, f26, f0
    bl      sinf
    lfs     f0, 0x40(r26)
    fmuls   f0, f0, f1
    fadds   f0, f20, f0
branch_0x801dd464:
    stfs    f21, -0x8000(r31)
    lbz     r0, R13Off_m0x6270(r13)
    stfs    f0, -0x8000(r31)
    stfs    f23, -0x8000(r31)
    lbz     r4, 0x0(r28)
    lbz     r3, 0x0(r27)
    stb     r0, -0x8000(r31)
    stb     r3, -0x8000(r31)
    stb     r4, -0x8000(r31)
    stb     r29, -0x8000(r31)
    lfs     f2, 0x74(r26)
    lfs     f1, 0x6c(r26)
    fmuls   f0, f21, f2
    fmuls   f2, f23, f2
    fadds   f0, f1, f0
    stfs    f0, -0x8000(r31)
    stfs    f2, -0x8000(r31)
    lfs     f1, 0x78(r26)
    lfs     f2, 0x70(r26)
    fmuls   f0, f21, f1
    fmuls   f1, f23, f1
    fmuls   f0, f30, f0
    fadds   f1, f2, f1
    stfs    f0, -0x8000(r31)
    stfs    f1, -0x8000(r31)
    lfs     f0, 0x1c(r26)
    fadds   f22, f22, f0
branch_0x801dd4d0:
    lfs     f0, 0x14(r26)
    lfs     f1, 0x1c(r26)
    fsubs   f0, f0, f1
    fcmpo   cr0, f22, f0
    cror    2, 0, 2
    beq+    branch_0x801dd2b8
    fadds   f24, f24, f1
branch_0x801dd4ec:
    lfs     f0, 0x14(r26)
    lfs     f1, 0x1c(r26)
    fsubs   f0, f0, f1
    fcmpo   cr0, f24, f0
    cror    2, 0, 2
    beq+    branch_0x801dd27c
    lmw     r26, 0x78(sp)
    lwz     r0, 0xf4(sp)
    lfd     f31, 0xe8(sp)
    lfd     f30, 0xe0(sp)
    mtlr    r0
    lfd     f29, 0xd8(sp)
    lfd     f28, 0xd0(sp)
    lfd     f27, 0xc8(sp)
    lfd     f26, 0xc0(sp)
    lfd     f25, 0xb8(sp)
    lfd     f24, 0xb0(sp)
    lfd     f23, 0xa8(sp)
    lfd     f22, 0xa0(sp)
    lfd     f21, 0x98(sp)
    lfd     f20, 0x90(sp)
    addi    sp, sp, 0xf0
    blr


.globl noWave__11TMapObjWaveFv
noWave__11TMapObjWaveFv: # 0x801dd548
    lfs     f0, -0x2530(r2)
    stfs    f0, 0x34(r3)
    stfs    f0, 0x38(r3)
    stfs    f0, 0x2c(r3)
    stfs    f0, 0x30(r3)
    stfs    f0, 0x3c(r3)
    stfs    f0, 0x40(r3)
    blr


.globl getHeight__11TMapObjWaveCFfff
getHeight__11TMapObjWaveCFfff: # 0x801dd568
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stfd    f31, 0x38(sp)
    fmr     f31, f3
    addi    r4, sp, 0x1c
    stfd    f30, 0x30(sp)
    fmr     f30, f2
    stfd    f29, 0x28(sp)
    fmr     f29, f1
    stw     r31, 0x24(sp)
    mr      r31, r3
    lfs     f0, -0x24b0(r2)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f0, f30
    bl      checkGroundExactY__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x1c(sp)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801dd5d8
    cmplwi  r3, 0x101
    beq-    branch_0x801dd5d8
    addi    r0, r3, -0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801dd5d8
    cmplwi  r3, 0x4104
    bne-    branch_0x801dd5e0
branch_0x801dd5d8:
    li      r0, 0x1
    b       branch_0x801dd5e4

branch_0x801dd5e0:
    li      r0, 0x0
branch_0x801dd5e4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801dd670
    cmplwi  r3, 0x102
    beq-    branch_0x801dd5fc
    cmplwi  r3, 0x103
    bne-    branch_0x801dd604
branch_0x801dd5fc:
    li      r0, 0x1
    b       branch_0x801dd608

branch_0x801dd604:
    li      r0, 0x0
branch_0x801dd608:
    clrlwi. r0, r0, 24
    beq-    branch_0x801dd674
    lwz     r0, 0x94(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801dd624
    lfs     f1, -0x2530(r2)
    b       branch_0x801dd674

branch_0x801dd624:
    lfs     f0, -0x24b8(r2)
    lfs     f2, 0x24(r31)
    fmuls   f1, f0, f29
    lfs     f0, 0x64(r31)
    fmadds  f1, f2, f1, f0
    bl      sinf
    lfs     f0, -0x24b8(r2)
    lfs     f4, 0x3c(r31)
    fmuls   f2, f0, f31
    lfs     f3, 0x28(r31)
    lfs     f0, 0x68(r31)
    fmuls   f31, f4, f1
    fmadds  f1, f3, f2, f0
    bl      sinf
    lfs     f0, 0x40(r31)
    fmuls   f0, f0, f1
    fadds   f1, f31, f0
    b       branch_0x801dd674

branch_0x801dd66c:
    b       branch_0x801dd674

branch_0x801dd670:
    fmr     f1, f30
branch_0x801dd674:
    lwz     r0, 0x44(sp)
    lfd     f31, 0x38(sp)
    lfd     f30, 0x30(sp)
    mtlr    r0
    lfd     f29, 0x28(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x40
    blr


.globl getWaveHeight__11TMapObjWaveCFff
getWaveHeight__11TMapObjWaveCFff: # 0x801dd694
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f2
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r0, 0x94(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801dd6c4
    lfs     f1, -0x2530(r2)
    b       branch_0x801dd708

branch_0x801dd6c4:
    lfs     f0, -0x24b8(r2)
    lfs     f2, 0x24(r31)
    fmuls   f1, f0, f1
    lfs     f0, 0x64(r31)
    fmadds  f1, f2, f1, f0
    bl      sinf
    lfs     f0, -0x24b8(r2)
    lfs     f4, 0x3c(r31)
    fmuls   f2, f0, f31
    lfs     f3, 0x28(r31)
    lfs     f0, 0x68(r31)
    fmuls   f31, f4, f1
    fmadds  f1, f3, f2, f0
    bl      sinf
    lfs     f0, 0x40(r31)
    fmuls   f0, f0, f1
    fadds   f1, f31, f0
branch_0x801dd708:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl initDraw__11TMapObjWaveFv
initDraw__11TMapObjWaveFv: # 0x801dd720
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    li      r5, 0x1
    li      r6, 0x4
    stwu    sp, -0x80(sp)
    li      r7, 0x0
    stw     r31, 0x7c(sp)
    stw     r30, 0x78(sp)
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xb
    li      r5, 0x1
    li      r6, 0x5
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xd
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    li      r3, 0x0
    li      r4, 0xe
    li      r5, 0x1
    li      r6, 0x4
    li      r7, 0x0
    bl      GXSetVtxAttrFmt
    bl      GXClearVtxDesc
    li      r3, 0x9
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xb
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xd
    li      r4, 0x1
    bl      GXSetVtxDesc
    li      r3, 0xe
    li      r4, 0x1
    bl      GXSetVtxDesc
    lis     r3, j3dSys@h
    addi    r3, r3, j3dSys@l
    li      r4, 0x0
    bl      GXLoadPosMtxImm
    li      r3, 0x0
    bl      GXSetCurrentMtx
    li      r3, 0x1
    bl      GXSetNumChans
    li      r3, 0x4
    li      r4, 0x0
    li      r5, 0x1
    li      r6, 0x1
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
    li      r3, 0x2
    bl      GXSetNumTexGens
    li      r3, 0x0
    li      r4, 0x1
    li      r5, 0x4
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x5
    li      r6, 0x3c
    li      r7, 0x0
    li      r8, 0x7d
    bl      GXSetTexCoordGen2
    lwz     r4, 0x94(r30)
    li      r31, 0x0
    addi    r3, sp, 0x24
    stw     r31, 0x4c(sp)
    bl      storeTIMG__10JUTTextureFPC7ResTIMG
    stb     r31, 0x74(sp)
    addi    r3, sp, 0x24
    li      r4, 0x0
    bl      load__10JUTTextureF11_GXTexMapID
    lwz     r5, 0x7c(r30)
    addi    r4, sp, 0x1c
    lwz     r0, 0x80(r30)
    li      r3, 0x1
    stw     r5, 0x1c(sp)
    stw     r0, 0x20(sp)
    bl      GXSetTevColorS10
    lwz     r5, 0x84(r30)
    addi    r4, sp, 0x14
    lwz     r0, 0x88(r30)
    li      r3, 0x2
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    bl      GXSetTevColorS10
    lwz     r5, 0x8c(r30)
    addi    r4, sp, 0xc
    lwz     r0, 0x90(r30)
    li      r3, 0x3
    stw     r5, 0xc(sp)
    stw     r0, 0x10(sp)
    bl      GXSetTevColorS10
    li      r3, 0x2
    bl      GXSetNumTevStages
    li      r3, 0x0
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x0
    li      r4, 0xf
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
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x5
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
    li      r6, 0x4
    bl      GXSetTevOrder
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0xf
    li      r6, 0xf
    li      r7, 0xf
    bl      GXSetTevColorIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevColorOp
    li      r3, 0x1
    li      r4, 0x7
    li      r5, 0x4
    li      r6, 0x0
    li      r7, 0x7
    bl      GXSetTevAlphaIn
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x1
    li      r7, 0x1
    li      r8, 0x0
    bl      GXSetTevAlphaOp
    li      r3, 0x1
    li      r4, 0x4
    li      r5, 0x2
    li      r6, 0x5
    bl      GXSetBlendMode
    lbz     r4, R13Off_m0x78d0(r13)
    li      r3, 0x6
    lbz     r7, R13Off_m0x78cf(r13)
    li      r5, 0x1
    li      r6, 0x3
    bl      GXSetAlphaCompare
    li      r3, 0x1
    li      r4, 0x3
    li      r5, 0x0
    bl      GXSetZMode
    li      r3, 0x0
    bl      GXSetCullMode
    addi    r3, sp, 0x24
    li      r4, -0x1
    bl      __dt__10JUTTextureFv
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl __sinit_MapObjWave_cpp
__sinit_MapObjWave_cpp: # 0x801dda4c
    mflr    r0
    li      r3, -0x1
    stw     r0, 0x4(sp)
    lis     r4, unk_803f9cd0@ha
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r4, unk_803f9cd0@l
    lbz     r0, R13Off_m0x7204(r13)
    stw     r3, R13Off_m0x6270(r13)
    extsb.  r0, r0
    bne-    branch_0x801dda9c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801dda9c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddacc
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801ddacc:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddafc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801ddafc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddb2c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801ddb2c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddb5c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801ddb5c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddb8c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801ddb8c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddbbc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801ddbbc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddbec
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801ddbec:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddc1c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801ddc1c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddc4c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801ddc4c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddc7c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801ddc7c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddcac
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801ddcac:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddcdc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801ddcdc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddd0c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801ddd0c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801ddd3c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801ddd3c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

