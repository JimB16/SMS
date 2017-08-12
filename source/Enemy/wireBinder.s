
.globl __dt__11TWireBinderFv
__dt__11TWireBinderFv: # 0x80114988
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801149d0
    lis     r3, __vvt__11TWireBinder@ha
    addi    r0, r3, __vvt__11TWireBinder@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7TBinderFv
    extsh.  r0, r31
    ble-    branch_0x801149d0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801149d0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl isEndWire__11TWireBinderCFRCQ29JGeometry8TVec3_f_f
isEndWire__11TWireBinderCFRCQ29JGeometry8TVec3_f_f: # 0x801149ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    fmr     f31, f1
    lwz     r5, R13Off_m0x6308(r13)
    lwz     r0, 0x4(r3)
    lwz     r3, 0x18(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5358(r2)
    fcmpo   cr0, f0, f31
    bge-    branch_0x80114a28
    lfs     f0, -0x5354(r2)
branch_0x80114a28:
    fsubs   f1, f1, f0
    lfs     f0, -0x5350(r2)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    mfcr    r0
    srwi    r3, r0, 31
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isOnWire__11TWireBinderFRCQ29JGeometry8TVec3_f_
isOnWire__11TWireBinderFRCQ29JGeometry8TVec3_f_: # 0x80114a54
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x6308(r13)
    bl      getWireNo__15TMapWireManagerCFRCQ29JGeometry8TVec3_f_
    subfic  r3, r3, -0x1
    subic   r0, r3, 0x1
    subfe   r3, r0, r3
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getPoint__11TWireBinderCFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
getPoint__11TWireBinderCFPQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x80114a88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r4, 0x0
    mr      r4, r5
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, R13Off_m0x6308(r13)
    lwz     r0, 0x4(r30)
    lwz     r3, 0x18(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6308(r13)
    mr      r4, r31
    lwz     r0, 0x4(r30)
    lwz     r3, 0x18(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl getPoint__11TWireBinderCFPQ29JGeometry8TVec3_f_f
getPoint__11TWireBinderCFPQ29JGeometry8TVec3_f_f: # 0x80114af4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, R13Off_m0x6308(r13)
    lwz     r0, 0x4(r3)
    lwz     r3, 0x18(r5)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getDirAtPos__11TWireBinderCFRCQ29JGeometry8TVec3_f_f
getDirAtPos__11TWireBinderCFRCQ29JGeometry8TVec3_f_f: # 0x80114b28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    fmr     f30, f1
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    lwz     r4, R13Off_m0x6308(r13)
    lwz     r0, 0x4(r31)
    lwz     r4, 0x18(r4)
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    addi    r4, r5, 0x0
    mr      r3, r0
    bl      getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x534c(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80114b8c
    lfs     f0, -0x5358(r2)
    fcmpo   cr0, f30, f0
    blt-    branch_0x80114ba8
branch_0x80114b8c:
    lfs     f0, -0x5348(r2)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x80114bb8
    lfs     f0, -0x5358(r2)
    fcmpo   cr0, f0, f30
    bge-    branch_0x80114bb8
branch_0x80114ba8:
    lfs     f0, -0x534c(r2)
    fmr     f31, f1
    fnmsubs  f1, f0, f30, f1
    b       branch_0x80114bc0

branch_0x80114bb8:
    lfs     f0, -0x534c(r2)
    fmadds  f31, f0, f30, f1
branch_0x80114bc0:
    lwz     r3, R13Off_m0x6308(r13)
    addi    r4, sp, 0x5c
    lwz     r0, 0x4(r31)
    lwz     r3, 0x18(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6308(r13)
    fmr     f1, f31
    lwz     r0, 0x4(r31)
    addi    r4, sp, 0x50
    lwz     r3, 0x18(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lfs     f2, 0x50(sp)
    lfs     f0, 0x5c(sp)
    lfs     f1, 0x60(sp)
    fsubs   f2, f2, f0
    lfs     f0, 0x64(sp)
    stfs    f2, 0x50(sp)
    lfs     f2, 0x54(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x54(sp)
    lfs     f1, 0x58(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x0(r30)
    stw     r0, 0x4(r30)
    lwz     r0, 0x58(sp)
    stw     r0, 0x8(r30)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl bind__11TWireBinderFP10TLiveActor
bind__11TWireBinderFP10TLiveActor: # 0x80114c64
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    mr      r30, r3
    lwz     r4, 0x10(r4)
    lwz     r0, 0x14(r31)
    stw     r4, 0x64(sp)
    stw     r0, 0x68(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x6c(sp)
    lfs     f1, 0x64(sp)
    lfs     f0, 0x94(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x64(sp)
    lfs     f1, 0x68(sp)
    lfs     f0, 0x98(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x9c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    lfs     f2, 0x64(sp)
    stw     r3, 0x4c(sp)
    stw     r0, 0x50(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x54(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x50(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x64(sp)
    lfs     f1, 0x68(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x68(sp)
    lfs     f1, 0x6c(sp)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x6c(sp)
    lwz     r3, R13Off_m0x6308(r13)
    lwz     r4, 0x4(r30)
    bl      getWire__15TMapWireManagerCFi
    addi    r4, sp, 0x64
    bl      getPosInWire__8TMapWireCFRCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6308(r13)
    addi    r4, sp, 0x58
    lwz     r0, 0x4(r30)
    lwz     r3, 0x18(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getPointPosOnWire__8TMapWireCFfPQ29JGeometry8TVec3_f_
    lfs     f0, 0x58(sp)
    lis     r0, unk_7f800001@h
    stfs    f0, 0x38(sp)
    lwz     r4, 0x38(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x80114d6c
    bge-    branch_0x80114d9c
    cmpwi   r3, 0x0
    beq-    branch_0x80114d84
    b       branch_0x80114d9c

branch_0x80114d6c:
    clrlwi. r0, r4, 9
    beq-    branch_0x80114d7c
    addi    r0, r0, unk_7f800001@l
    b       branch_0x80114da0

branch_0x80114d7c:
    li      r0, 0x2
    b       branch_0x80114da0

branch_0x80114d84:
    clrlwi. r0, r4, 9
    beq-    branch_0x80114d94
    li      r0, 0x5
    b       branch_0x80114da0

branch_0x80114d94:
    li      r0, 0x3
    b       branch_0x80114da0

branch_0x80114d9c:
    li      r0, 0x4
branch_0x80114da0:
    cmpwi   r0, 0x1
    beq-    branch_0x80114e78
    lfs     f0, 0x5c(sp)
    lis     r0, unk_7f800001@h
    stfs    f0, 0x34(sp)
    lwz     r4, 0x34(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x80114dd4
    bge-    branch_0x80114e04
    cmpwi   r3, 0x0
    beq-    branch_0x80114dec
    b       branch_0x80114e04

branch_0x80114dd4:
    clrlwi. r0, r4, 9
    beq-    branch_0x80114de4
    addi    r0, r0, unk_7f800001@l
    b       branch_0x80114e08

branch_0x80114de4:
    li      r0, 0x2
    b       branch_0x80114e08

branch_0x80114dec:
    clrlwi. r0, r4, 9
    beq-    branch_0x80114dfc
    li      r0, 0x5
    b       branch_0x80114e08

branch_0x80114dfc:
    li      r0, 0x3
    b       branch_0x80114e08

branch_0x80114e04:
    li      r0, 0x4
branch_0x80114e08:
    cmpwi   r0, 0x1
    beq-    branch_0x80114e78
    lfs     f0, 0x60(sp)
    lis     r0, unk_7f800001@h
    stfs    f0, 0x30(sp)
    lwz     r4, 0x30(sp)
    rlwinm  r3, r4, 0, 1, 8
    cmpw    r3, r0
    beq-    branch_0x80114e3c
    bge-    branch_0x80114e6c
    cmpwi   r3, 0x0
    beq-    branch_0x80114e54
    b       branch_0x80114e6c

branch_0x80114e3c:
    clrlwi. r0, r4, 9
    beq-    branch_0x80114e4c
    addi    r0, r0, unk_7f800001@l
    b       branch_0x80114e70

branch_0x80114e4c:
    li      r0, 0x2
    b       branch_0x80114e70

branch_0x80114e54:
    clrlwi. r0, r4, 9
    beq-    branch_0x80114e64
    li      r0, 0x5
    b       branch_0x80114e70

branch_0x80114e64:
    li      r0, 0x3
    b       branch_0x80114e70

branch_0x80114e6c:
    li      r0, 0x4
branch_0x80114e70:
    cmpwi   r0, 0x1
    bne-    branch_0x80114e90
branch_0x80114e78:
    lfs     f0, 0x10(r31)
    stfs    f0, 0x58(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x60(sp)
branch_0x80114e90:
    lfs     f1, -0x5344(r2)
    lfs     f0, 0x5c(sp)
    lfs     f2, 0x68(sp)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80114ebc
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    b       branch_0x80114ec8

branch_0x80114ebc:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x80114ec8:
    lwz     r0, 0x58(sp)
    addi    r3, sp, 0x24
    lwz     r5, 0x5c(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x24(sp)
    lwz     r0, 0x60(sp)
    stw     r5, 0x28(sp)
    stw     r0, 0x2c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x24(sp)
    lwz     r0, 0x28(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x78
    mtlr    r0
    blr


.globl getWire__15TMapWireManagerCFi
getWire__15TMapWireManagerCFi: # 0x80114f1c
    lwz     r3, 0x18(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    blr


.globl init__11TWireBinderFRCQ29JGeometry8TVec3_f_
init__11TWireBinderFRCQ29JGeometry8TVec3_f_: # 0x80114f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x6308(r13)
    bl      getWireNo__15TMapWireManagerCFRCQ29JGeometry8TVec3_f_
    stw     r3, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmpwi   r0, -0x1
    bne-    branch_0x80114f64
    li      r3, 0x0
    b       branch_0x80115020

branch_0x80114f64:
    lwz     r4, R13Off_m0x6308(r13)
    addi    r3, sp, 0x30
    slwi    r0, r0, 2
    lfs     f31, -0x5354(r2)
    lwz     r5, 0x18(r4)
    mr      r4, r3
    lwzx    r6, r5, r0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x2c(sp)
    lwz     r5, 0xc(r6)
    lwz     r0, 0x10(r6)
    lfs     f2, 0x24(sp)
    stw     r5, 0x30(sp)
    lfs     f1, 0x28(sp)
    stw     r0, 0x34(sp)
    lfs     f0, 0x2c(sp)
    lwz     r0, 0x14(r6)
    stw     r0, 0x38(sp)
    lfs     f3, 0x30(sp)
    fsubs   f2, f3, f2
    stfs    f2, 0x30(sp)
    lfs     f2, 0x34(sp)
    fsubs   f1, f2, f1
    stfs    f1, 0x34(sp)
    lfs     f1, 0x38(sp)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x5340(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80115008
    lfs     f0, -0x5358(r2)
    stfs    f0, 0x10(r31)
    stfs    f0, 0xc(r31)
    stfs    f0, 0x8(r31)
    b       branch_0x8011501c

branch_0x80115008:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r3, r31, 0x8
    addi    r4, sp, 0x30
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x8011501c:
    li      r3, 0x1
branch_0x80115020:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr

