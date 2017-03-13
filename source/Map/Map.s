
.globl __dt__4TMapFv
__dt__4TMapFv: # 0x80189504
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8018955c
    lis     r3, 0x803c
    addi    r0, r3, 0x1658
    stw     r0, 0x0(r30)
    beq-    branch_0x8018954c
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8018954c:
    extsh.  r0, r31
    ble-    branch_0x8018955c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8018955c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__4TMapFPCc
__ct__4TMapFPCc: # 0x80189578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lis     r3, 0x803e
    addi    r0, r3, 0x20f0
    lwz     r31, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, 0x803b
    subi    r0, r3, 0x497c
    stw     r0, 0x0(r31)
    li      r0, 0x0
    lis     r3, 0x803c
    sth     r0, 0xc(r31)
    addi    r0, r3, 0x1658
    li      r3, 0x248
    stw     r0, 0x0(r31)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801895e4
    mr      r3, r31
    bl      __ct__17TMapCollisionDataFv
branch_0x801895e4:
    lwz     r4, 0x8(sp)
    li      r3, 0x70
    stw     r31, 0x10(r4)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8018960c
    lis     r3, 0x8039
    subi    r4, r3, 0x7308
    addi    r3, r31, 0x0
    bl      __ct__16TMapModelManagerFPCc
branch_0x8018960c:
    lwz     r4, 0x8(sp)
    li      r3, 0x10
    stw     r31, 0x14(r4)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8018962c
    mr      r3, r31
    bl      __ct__8TMapWarpFv
branch_0x8018962c:
    lwz     r4, 0x8(sp)
    li      r3, 0x8
    stw     r31, 0x18(r4)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8018964c
    mr      r3, r31
    bl      __ct__7TMapXluFv
branch_0x8018964c:
    lwz     r4, 0x8(sp)
    li      r0, 0x0
    stw     r31, 0x1c(r4)
    mr      r3, r4
    stb     r0, 0x20(r4)
    stw     r4, gpMap(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


# TMap::load((JSUMemoryInputStream &))
.globl load__4TMapFR20JSUMemoryInputStream
load__4TMapFR20JSUMemoryInputStream: # 0x80189678
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r3, 0x1c(r30)
    mr      r4, r31
    bl      init__7TMapXluFR20JSUMemoryInputStream
    lwz     r3, 0x14(r30)
    bl      init__16TMapModelManagerFv
    lwz     r3, 0x10(r30)
    mr      r4, r31
    bl      init__17TMapCollisionDataFR20JSUMemoryInputStream
    lwz     r3, 0x18(r30)
    bl      initModel__8TMapWarpFv
    lwz     r3, 0x18(r30)
    mr      r4, r31
    bl      init__8TMapWarpFR20JSUMemoryInputStream
    lwz     r3, 0x14(r30)
    lwz     r3, 0x6c(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


# TMap::loadAfter((void))
.globl loadAfter__4TMapFv
loadAfter__4TMapFv: # 0x801896fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    bl      initStage__Fv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


# TMap::perform((unsigned long,	JDrama::TGraphics *))
.globl perform__4TMapFUlPQ26JDrama9TGraphics
perform__4TMapFUlPQ26JDrama9TGraphics: # 0x80189720
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x80189764
    mr      r3, r29
    bl      update__4TMapFv
    lwz     r3, 0x10(r29)
    bl      initMoveCollision__17TMapCollisionDataFv
    lwz     r3, 0x18(r29)
    bl      watchToWarp__8TMapWarpFv
branch_0x80189764:
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x801897b4
    rlwinm. r0, r30, 0, 6, 6
    beq-    branch_0x8018978c
    lwz     r3, 0x1c(r29)
    li      r4, 0x1
    bl      changeXluJoint__7TMapXluFi
    clrlwi. r0, r3, 24
    bne-    branch_0x801897b4
    b       branch_0x801897e8

branch_0x8018978c:
    rlwinm. r0, r30, 0, 5, 5
    beq-    branch_0x801897ac
    lwz     r3, 0x1c(r29)
    li      r4, 0x0
    bl      changeXluJoint__7TMapXluFi
    clrlwi. r0, r3, 24
    bne-    branch_0x801897b4
    b       branch_0x801897e8

branch_0x801897ac:
    lwz     r3, 0x1c(r29)
    bl      changeNormalJoint__7TMapXluFv
branch_0x801897b4:
    rlwinm. r0, r30, 0, 28, 28
    beq-    branch_0x801897cc
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      draw__4TMapCFUlPQ26JDrama9TGraphics
branch_0x801897cc:
    lwz     r3, 0x14(r29)
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801897e8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl changeModel__4TMapCFs
changeModel__4TMapCFs: # 0x80189804
    mflr    r0
    extsh   r4, r4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x18(r3)
    bl      changeModel__8TMapWarpFi
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkGround__4TMapCFfffPPC12TBGCheckData
checkGround__4TMapCFfffPPC12TBGCheckData: # 0x8018982c
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
checkGround__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData: # 0x80189858
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0x0(r4)
    lwz     r3, 0x10(r3)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    li      r4, 0x0
    bl      checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkGroundExactY__4TMapCFfffPPC12TBGCheckData
checkGroundExactY__4TMapCFfffPPC12TBGCheckData: # 0x8018988c
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    lfs     f0, -0x4470(rtoc)
    lwz     r3, 0x10(r3)
    fsubs   f2, f2, f0
    bl      checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkGroundIgnoreWaterSurface__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
checkGroundIgnoreWaterSurface__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData: # 0x801898c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0x0(r4)
    lwz     r3, 0x10(r3)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    li      r4, 0x1
    bl      checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData: # 0x801898f4
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x1
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkGroundIgnoreWaterThrough__4TMapCFfffPPC12TBGCheckData
checkGroundIgnoreWaterThrough__4TMapCFfffPPC12TBGCheckData: # 0x80189920
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x4
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      checkGround__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkRoof__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData
checkRoof__4TMapCFRCQ29JGeometry8TVec3_f_PPC12TBGCheckData: # 0x8018994c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0x0(r4)
    lwz     r3, 0x10(r3)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    li      r4, 0x0
    bl      checkRoof__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkRoof__4TMapCFfffPPC12TBGCheckData
checkRoof__4TMapCFfffPPC12TBGCheckData: # 0x80189980
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x0
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      checkRoof__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkRoofIgnoreWaterThrough__4TMapCFfffPPC12TBGCheckData
checkRoofIgnoreWaterThrough__4TMapCFfffPPC12TBGCheckData: # 0x801899ac
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    li      r4, 0x4
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      checkRoof__17TMapCollisionDataCFfffUcPPC12TBGCheckData
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord: # 0x801899d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      checkWalls__17TMapCollisionDataCFP18TBGWallCheckRecord
    cmpwi   r3, 0x0
    beq-    branch_0x801899fc
    li      r3, 0x1
    b       branch_0x80189a00

branch_0x801899fc:
    li      r3, 0x0
branch_0x80189a00:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isTouchedOneWallAndMoveXZ__4TMapCFPffPff
isTouchedOneWallAndMoveXZ__4TMapCFPffPff: # 0x80189a10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    li      r31, 0x0
    stw     r30, 0x58(sp)
    li      r30, 0x1
    stw     r29, 0x54(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x50(sp)
    addi    r28, r4, 0x0
    lfs     f0, 0x0(r4)
    addi    r4, sp, 0x24
    lfs     f3, 0x0(r5)
    stfs    f0, 0x24(sp)
    stfs    f1, 0x28(sp)
    stfs    f3, 0x2c(sp)
    stfs    f2, 0x30(sp)
    stw     r30, 0x34(sp)
    stw     r31, 0x3c(sp)
    lwz     r3, 0x10(r3)
    bl      checkWalls__17TMapCollisionDataCFP18TBGWallCheckRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80189a74
    b       branch_0x80189a78

branch_0x80189a74:
    mr      r30, r31
branch_0x80189a78:
    clrlwi. r0, r30, 24
    beq-    branch_0x80189a98
    lfs     f0, 0x24(sp)
    li      r3, 0x1
    stfs    f0, 0x0(r28)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x0(r29)
    b       branch_0x80189a9c

branch_0x80189a98:
    li      r3, 0x0
branch_0x80189a9c:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    lwz     r28, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl isTouchedOneWall__4TMapCFffff
isTouchedOneWall__4TMapCFffff: # 0x80189abc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f4
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    addi    r3, sp, 0x20
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80189b4c
    stfs    f31, 0x2c(sp)
    li      r30, 0x1
    li      r31, 0x0
    stw     r30, 0x30(sp)
    addi    r4, sp, 0x20
    stw     r31, 0x38(sp)
    lwz     r3, 0x10(r29)
    bl      checkWalls__17TMapCollisionDataCFP18TBGWallCheckRecord
    cmpwi   r3, 0x0
    beq-    branch_0x80189b14
    b       branch_0x80189b18

branch_0x80189b14:
    mr      r30, r31
branch_0x80189b18:
    clrlwi. r0, r30, 24
    beq-    branch_0x80189b28
    li      r3, 0x1
    b       branch_0x80189b2c

branch_0x80189b28:
    li      r3, 0x0
branch_0x80189b2c:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    mtlr    r0
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x68
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80189b4c
set_f___Q29JGeometry8TVec3_f_Ffff_80189b4c: # 0x80189b4c
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl intersectLine__4TMapCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
intersectLine__4TMapCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_: # 0x80189b5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x10(r3)
    bl      intersectLine__17TMapCollisionDataCFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_bPQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isInArea__4TMapCFff
isInArea__4TMapCFff: # 0x80189b80
    lwz     r3, 0x10(r3)
    lfs     f3, 0x0(r3)
    fneg    f0, f3
    fcmpo   cr0, f0, f1
    bge-    branch_0x80189bbc
    fcmpo   cr0, f1, f3
    bge-    branch_0x80189bbc
    lfs     f1, 0x4(r3)
    fneg    f0, f1
    fcmpo   cr0, f0, f2
    bge-    branch_0x80189bbc
    fcmpo   cr0, f2, f1
    bge-    branch_0x80189bbc
    li      r3, 0x1
    blr

branch_0x80189bbc:
    li      r3, 0x0
    blr


# TMap::getIllegalCheckData((void))
.globl getIllegalCheckData__4TMapFv
getIllegalCheckData__4TMapFv: # 0x80189bc4
    lis     r3, 0x803f
    addi    r3, r3, 0x7b98
    blr


# TMap::update((void))
.globl update__4TMapFv
update__4TMapFv: # 0x80189bd0
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stw     r31, 0x10c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x108(sp)
    addi    r30, r4, 0x7a20
    stw     r29, 0x104(sp)
    lwz     r5, gpMarDirector(r13)
    lbz     r0, 0x7c(r5)
    cmpwi   r0, 0x7
    beq-    branch_0x80189cc4
    bge-    branch_0x80189c14
    cmpwi   r0, 0x3
    beq-    branch_0x80189c20
    b       branch_0x80189d00

branch_0x80189c14:
    cmpwi   r0, 0x9
    bge-    branch_0x80189d00
    b       branch_0x80189c80

branch_0x80189c20:
    lbz     r0, -0x6324(r13)
    extsb.  r0, r0
    bne-    branch_0x80189c4c
    lfs     f0, -0x446c(rtoc)
    li      r0, 0x1
    stfs    f0, 0x0(r30)
    lfs     f0, -0x4468(rtoc)
    stfs    f0, 0x4(r30)
    lfs     f0, -0x4464(rtoc)
    stfs    f0, 0x8(r30)
    stb     r0, -0x6324(r13)
branch_0x80189c4c:
    lwz     r3, gpMSound(r13)
    li      r4, 0x3000
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80189d00
    addi    r4, r30, 0x0
    li      r3, 0x3000
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x80189d00

branch_0x80189c80:
    lbz     r0, 0x7d(r5)
    cmplwi  r0, 0x1
    beq-    branch_0x80189ca4
    cmplwi  r0, 0x3
    beq-    branch_0x80189ca4
    cmplwi  r0, 0x5
    beq-    branch_0x80189ca4
    cmplwi  r0, 0x7
    bne-    branch_0x80189d00
branch_0x80189ca4:
    lwz     r5, -0x62b8(r13)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x156
    addi    r5, r5, 0x44
    li      r6, 0x1
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    b       branch_0x80189d00

branch_0x80189cc4:
    lwz     r3, 0x18(r31)
    lwz     r4, -0x70dc(r13)
    lwz     r0, 0x8(r3)
    lwz     r4, 0x1c(r4)
    cmpw    r4, r0
    beq-    branch_0x80189d00
    cmpwi   r4, -0x1
    beq-    branch_0x80189cec
    bl      changeModel__8TMapWarpFi
    b       branch_0x80189d00

branch_0x80189cec:
    lbz     r0, 0x7d(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80189d00
    li      r4, 0x3
    bl      changeModel__8TMapWarpFi
branch_0x80189d00:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80189e18
    lwz     r30, gpCamera(r13)
    li      r29, 0x1
    addi    r3, r30, 0x0
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80189d4c
    lwz     r0, 0x50(r30)
    cmpwi   r0, 0x49
    bne-    branch_0x80189d3c
    mr      r0, r29
    b       branch_0x80189d40

branch_0x80189d3c:
    li      r0, 0x0
branch_0x80189d40:
    clrlwi. r0, r0, 24
    bne-    branch_0x80189d4c
    li      r29, 0x0
branch_0x80189d4c:
    clrlwi. r0, r29, 24
    beq-    branch_0x80189d5c
    li      r0, 0x1
    b       branch_0x80189d60

branch_0x80189d5c:
    li      r0, 0x0
branch_0x80189d60:
    clrlwi. r0, r0, 24
    beq-    branch_0x80189d6c
    b       branch_0x80189e18

branch_0x80189d6c:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x39
    beq-    branch_0x80189e18
    cmplwi  r0, 0x10
    beq-    branch_0x80189e18
    lwz     r3, MarioFlags(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 30, 30 # MARIOFLAG_2
    beq-    branch_0x80189d9c
    li      r0, 0x1
    b       branch_0x80189da0

branch_0x80189d9c:
    li      r0, 0x0
branch_0x80189da0:
    clrlwi. r0, r0, 24
    beq-    branch_0x80189dac
    b       branch_0x80189e18

branch_0x80189dac:
    lwz     r4, gpCamera(r13)
    lfsu    f1, 0x124(r4)
    lwz     r3, gpMapObjWave(r13)
    lfs     f2, 0x4(r4)
    lfs     f3, 0x8(r4)
    bl      getHeight__11TMapObjWaveCFfff
    lwz     r3, gpCamera(r13)
    lfs     f0, 0x128(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80189ddc
    fcmpo   cr0, f0, f1
    ble-    branch_0x80189dfc
branch_0x80189ddc:
    lbz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80189e18
    li      r0, 0x1
    stb     r0, 0x20(r31)
    li      r3, 0x0
    bl      setWaterCameraFir__12MSSeCallBackFb
    b       branch_0x80189e18

branch_0x80189dfc:
    lbz     r0, 0x20(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80189e18
    li      r0, 0x0
    stb     r0, 0x20(r31)
    li      r3, 0x1
    bl      setWaterCameraFir__12MSSeCallBackFb
branch_0x80189e18:
    lwz     r0, 0x114(sp)
    lwz     r31, 0x10c(sp)
    lwz     r30, 0x108(sp)
    mtlr    r0
    lwz     r29, 0x104(sp)
    addi    sp, sp, 0x110
    blr


.globl initStage__Fv
initStage__Fv: # 0x80189e34
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    subi    r31, r4, 0x7400
    stw     r30, 0x68(sp)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x9
    bgt-    branch_0x80189fcc
    bl      initStageCommon__Fv
    lwz     r4, gpMarDirector(r13)
    lbz     r0, 0x7c(r4)
    cmplwi  r0, 0xf
    bgt-    branch_0x80189fcc
    lis     r3, 0x803c
    addi    r3, r3, 0x167c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80189E8C:		# jumptable 80189E88 case 1
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x5
    beq-    branch_0x80189fcc
    cmplwi  r0, 0x9
    beq-    branch_0x80189fcc
    li      r3, 0x1
    li      r4, 0x0
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    li      r3, 0x2
    li      r4, 0x0
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    b       branch_0x80189fcc

branch_0x80189EDC:		# jumptable 80189E88 case 2
lbz	  r0, 0x7D(r4)
cmplwi	  r0, 0
beq	  def_80189E88	# jumptable 80189E88 default case
li	  r3, 1
li	  r4, 0
bl	  newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor	# TMapObjBase::newAndInitBuildingCollisionWarp((int,TLiveActor *))
lwz	  r12, 0(r3)
lwz	  r12, 0x18(r12)
mtlr	  r12
blrl
li	  r3, 2
li	  r4, 0
bl	  newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor	# TMapObjBase::newAndInitBuildingCollisionWarp((int,TLiveActor *))
lwz	  r12, 0(r3)
lwz	  r12, 0x18(r12)
mtlr	  r12
blrl
b	  def_80189E88	# jumptable 80189E88 default case

branch_0x80189F24:		# jumptable 80189E88 case 9
bl	  initMare__Fv
b	  def_80189E88	# jumptable 80189E88 default case

branch_0x80189F2C:		# jumptable 80189E88 case 8
bl	  initMonte__Fv
b	  def_80189E88	# jumptable 80189E88 default case

branch_0x80189F34:		# jumptable 80189E88 case 6
lbz	  r0, 0x7D(r4)
cmplwi	  r0, 0
beq	  def_80189E88	# jumptable 80189E88 default case
li	  r3, 1
li	  r4, 0
bl	  newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor	# TMapObjBase::newAndInitBuildingCollisionWarp((int,TLiveActor *))
lwz	  r12, 0(r3)
lwz	  r12, 0x18(r12)
mtlr	  r12
blrl
b	  def_80189E88	# jumptable 80189E88 default case

branch_0x80189F60:		# jumptable 80189E88 case 5
lis	  r3, unk_803FD068@ha
addi	  r3, r3, unk_803FD068@l
addi	  r30, r3, 0x6A
lbz	  r0, 0x6a(r3) #(byte_803FD0D2 - unk_803FD068)(r3)
cmplwi	  r0, 0
bne	  def_80189E88	# jumptable 80189E88 default case
lwz	  r3, -0x5FE0(r13)
addi	  r4, r31, 0x108
li	  r5, 0x6A
bl	  load__18JPAResourceManagerFPCcUs # JPAResourceManager::load((char const *,ushort))
li	  r0, 1
stb	  r0, 0(r30)
b	  def_80189E88	# jumptable 80189E88 default case

branch_0x80189F94:		# jumptable 80189E88 case 13
bl	  initPinnaParco__Fv
b	  def_80189E88	# jumptable 80189E88 default case

branch_0x80189F9C:		# jumptable 80189E88 case 15
li	  r3, 0x6C
bl	  __nw__FUl	# __nw(ulong)
mr.	  r30, r3
beq	  branch_0x80189FB8
addi	  r3, r30, 0
addi	  r4, r31, 0x124
bl	  __ct__17TMapObjOptionWallFPCc	# TMapObjOptionWall::TMapObjOptionWall((char const *))

branch_0x80189FB8:
mr	  r3, r30
bl	  init__17TMapObjOptionWallFv #	TMapObjOptionWall::init((void))
addi	  r3, r31, 0x134
addi	  r4, r30, 0
bl	  joinToGroup__11TMapObjBaseFPCcP9THitActor # TMapObjBase::joinToGroup((char const *,THitActor *))

def_80189E88:		# jumptable 80189E88 default case
branch_0x80189fcc:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl initStageCommon__Fv
initStageCommon__Fv: # 0x80189fe4
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d0(sp)
    stw     r31, 0x1cc(sp)
    stw     r30, 0x1c8(sp)
    subi    r30, r4, 0x7400
    stw     r29, 0x1c4(sp)
    lwz     r3, -0x5db8(r13)
    lwz     r29, 0x4(r3)
    addi    r3, r30, 0x144
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x144
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r31, r3, 0x0
    addi    r3, r30, 0x134
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x134
    mtlr    r12
    blrl
    lwz     r3, gpMarDirector(r13)
    lbz     r3, 0x7c(r3)
    cmplwi  r3, 0x4
    beq-    branch_0x8018a0a8
    cmplwi  r3, 0x3
    beq-    branch_0x8018a0a8
    cmplwi  r3, 0xd
    beq-    branch_0x8018a0a8
    cmplwi  r3, 0x9
    beq-    branch_0x8018a0a8
    subi    r0, r3, 0x5
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    ble-    branch_0x8018a0a8
    cmplwi  r3, 0x14
    beq-    branch_0x8018a0a8
    cmplwi  r3, 0x1
    bgt-    branch_0x8018a228
branch_0x8018a0a8:
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a0c4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x15c
    bl      __ct__13TMapStaticObjFPCc
branch_0x8018a0c4:
    stw     r29, 0x1b8(sp)
    subi    r4, rtoc, 0x4460
    lwz     r3, 0x1b8(sp)
    bl      init__13TMapStaticObjFPCc
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a0f0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x168
    bl      __ct__13TMapStaticObjFPCc
branch_0x8018a0f0:
    stw     r29, 0x1b8(sp)
    addi    r4, r30, 0x17c
    lwz     r3, 0x1b8(sp)
    bl      init__13TMapStaticObjFPCc
    addi    r29, r31, 0x10
    addi    r3, sp, 0x118
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x118(sp)
    addi    r3, sp, 0x184
    addi    r4, sp, 0x114
    stw     r0, 0x114(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x184(sp)
    addi    r5, sp, 0x148
    addi    r4, r29, 0x0
    stw     r0, 0x180(sp)
    addi    r3, sp, 0x144
    addi    r6, sp, 0x1b8
    lwz     r0, 0x180(sp)
    stw     r0, 0x148(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a164
    addi    r3, r29, 0x0
    addi    r4, r30, 0x188
    bl      __ct__18TMapObjWaterFilterFPCc
branch_0x8018a164:
    stw     r29, 0x1b4(sp)
    lwz     r3, 0x1b4(sp)
    bl      init__18TMapObjWaterFilterFv
    addi    r29, r31, 0x10
    addi    r3, sp, 0x110
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x110(sp)
    addi    r3, sp, 0x178
    addi    r4, sp, 0x10c
    stw     r0, 0x10c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x178(sp)
    addi    r5, sp, 0x13c
    addi    r4, r29, 0x0
    stw     r0, 0x174(sp)
    addi    r3, sp, 0x138
    addi    r6, sp, 0x1b4
    lwz     r0, 0x174(sp)
    stw     r0, 0x13c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a1d4
    addi    r3, r29, 0x0
    addi    r4, r30, 0x19c
    bl      __ct__18TMapObjSeaIndirectFPCc
branch_0x8018a1d4:
    stw     r29, 0x1b0(sp)
    lwz     r3, 0x1b0(sp)
    bl      init__18TMapObjSeaIndirectFv
    addi    r29, r31, 0x10
    addi    r3, sp, 0x108
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x108(sp)
    addi    r3, sp, 0x16c
    addi    r4, sp, 0x104
    stw     r0, 0x104(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x16c(sp)
    addi    r5, sp, 0x130
    addi    r4, r29, 0x0
    stw     r0, 0x168(sp)
    addi    r3, sp, 0x12c
    addi    r6, sp, 0x1b0
    lwz     r0, 0x168(sp)
    stw     r0, 0x130(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x8018a228:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8018a2a8
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a254
    addi    r3, r29, 0x0
    addi    r4, r30, 0x19c
    bl      __ct__18TMapObjSeaIndirectFPCc
branch_0x8018a254:
    stw     r29, 0x1ac(sp)
    lwz     r3, 0x1ac(sp)
    bl      init__18TMapObjSeaIndirectFv
    addi    r29, r31, 0x10
    addi    r3, sp, 0x100
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x100(sp)
    addi    r3, sp, 0x15c
    addi    r4, sp, 0xfc
    stw     r0, 0xfc(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x15c(sp)
    addi    r5, sp, 0x124
    addi    r4, r29, 0x0
    stw     r0, 0x158(sp)
    addi    r3, sp, 0x120
    addi    r6, sp, 0x1ac
    lwz     r0, 0x158(sp)
    stw     r0, 0x124(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x8018a2a8:
    lwz     r0, 0x1d4(sp)
    lwz     r31, 0x1cc(sp)
    lwz     r30, 0x1c8(sp)
    mtlr    r0
    lwz     r29, 0x1c4(sp)
    addi    sp, sp, 0x1d0
    blr


.globl initPinnaParco__Fv
initPinnaParco__Fv: # 0x8018a2c4
    mflr    r0
    li      r3, 0xa0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8018a30c
    lwz     r4, gpMap(r13)
    addi    r3, r31, 0x0
    li      r5, 0x0
    lwz     r4, 0x14(r4)
    li      r6, 0x1
    lwz     r4, 0x14(r4)
    lwz     r4, 0x0(r4)
    lwz     r4, 0x24(r4)
    bl      __ct__8J3DModelFP12J3DModelDataUlUl
branch_0x8018a30c:
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8018a330
    lwz     r4, gpMap(r13)
    mr      r3, r30
    lwz     r4, 0x14(r4)
    addi    r4, r4, 0x20
    bl      __ct__6MActorFP13MActorAnmData
branch_0x8018a330:
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    li      r5, 0x0
    bl      setModel__6MActorFP8J3DModelUl
    li      r3, 0x6c
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8018a37c
    lis     r4, 0x8039
    addi    r3, r31, 0x0
    subi    r4, r4, 0x7248
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    addi    r3, r3, 0x1b70
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stw     r0, 0x68(r31)
branch_0x8018a37c:
    lis     r3, 0x8039
    stw     r30, 0x68(r31)
    addi    r4, r31, 0x0
    subi    r3, r3, 0x7230
    bl      joinToGroup__11TMapObjBaseFPCcP9THitActor
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl initMare__Fv
initMare__Fv: # 0x8018a3a8
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0x148(sp)
    stw     r31, 0x144(sp)
    stw     r30, 0x140(sp)
    subi    r30, r4, 0x7400
    stw     r29, 0x13c(sp)
    lwz     r3, -0x5db8(r13)
    lwz     r29, 0x4(r3)
    addi    r3, r30, 0x134
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x134
    mtlr    r12
    blrl
    lwz     r4, gpMarDirector(r13)
    mr      r31, r3
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x5
    bne-    branch_0x8018a47c
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a424
    addi    r3, r29, 0x0
    addi    r4, r30, 0x1dc
    bl      __ct__13TMapStaticObjFPCc
branch_0x8018a424:
    stw     r29, 0x130(sp)
    addi    r4, r30, 0x1f0
    lwz     r3, 0x130(sp)
    bl      init__13TMapStaticObjFPCc
    addi    r29, r31, 0x10
    addi    r3, sp, 0xb4
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xb4(sp)
    addi    r3, sp, 0x124
    addi    r4, sp, 0xb0
    stw     r0, 0xb0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x124(sp)
    addi    r5, sp, 0xe4
    addi    r4, r29, 0x0
    stw     r0, 0x120(sp)
    addi    r3, sp, 0xe0
    addi    r6, sp, 0x130
    lwz     r0, 0x120(sp)
    stw     r0, 0xe4(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
branch_0x8018a47c:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018a4ec
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x69
    lbz     r0, 0x69(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018a4bc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x1fc
    li      r5, 0x69
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x8018a4bc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r29, r3, 0x1e5
    lbz     r0, 0x1e5(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018a4ec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r30, 0x220
    li      r5, 0x1e5
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r29)
branch_0x8018a4ec:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8018a52c
    beq-    branch_0x8018a52c
    li      r29, 0x1
branch_0x8018a504:
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    cmpwi   r29, 0x8
    blt+    branch_0x8018a504
branch_0x8018a52c:
    li      r3, 0x50
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a548
    addi    r3, r29, 0x0
    addi    r4, r30, 0x244
    bl      __ct__21TMareEventDepressWallFPCc
branch_0x8018a548:
    stw     r29, 0x12c(sp)
    lwz     r3, 0x12c(sp)
    bl      init1stEvent__21TMareEventDepressWallFv
    addi    r29, r31, 0x10
    addi    r3, sp, 0xac
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xac(sp)
    addi    r3, sp, 0x10c
    addi    r4, sp, 0xa8
    stw     r0, 0xa8(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x10c(sp)
    addi    r5, sp, 0xd8
    addi    r4, r29, 0x0
    stw     r0, 0x108(sp)
    addi    r3, sp, 0xd4
    addi    r6, sp, 0x12c
    lwz     r0, 0x108(sp)
    stw     r0, 0xd8(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x50
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a5b8
    addi    r3, r29, 0x0
    addi    r4, r30, 0x244
    bl      __ct__21TMareEventDepressWallFPCc
branch_0x8018a5b8:
    stw     r29, 0x12c(sp)
    lwz     r3, 0x12c(sp)
    bl      init2ndEvent__21TMareEventDepressWallFv
    addi    r29, r31, 0x10
    addi    r3, sp, 0xa4
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0xa4(sp)
    addi    r3, sp, 0x100
    addi    r4, sp, 0xa0
    stw     r0, 0xa0(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x100(sp)
    addi    r5, sp, 0xcc
    addi    r4, r29, 0x0
    stw     r0, 0xfc(sp)
    addi    r3, sp, 0xc8
    addi    r6, sp, 0x12c
    lwz     r0, 0xfc(sp)
    stw     r0, 0xcc(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    li      r3, 0x50
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a628
    addi    r3, r29, 0x0
    addi    r4, r30, 0x244
    bl      __ct__21TMareEventDepressWallFPCc
branch_0x8018a628:
    stw     r29, 0x12c(sp)
    lwz     r3, 0x12c(sp)
    bl      init3rdEvent__21TMareEventDepressWallFv
    addi    r29, r31, 0x10
    addi    r3, sp, 0x9c
    addi    r4, r29, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x9c(sp)
    addi    r3, sp, 0xf4
    addi    r4, sp, 0x98
    stw     r0, 0x98(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xf4(sp)
    addi    r5, sp, 0xc0
    addi    r4, r29, 0x0
    stw     r0, 0xf0(sp)
    addi    r3, sp, 0xbc
    addi    r6, sp, 0x12c
    lwz     r0, 0xf0(sp)
    stw     r0, 0xc0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x14c(sp)
    lwz     r31, 0x144(sp)
    lwz     r30, 0x140(sp)
    mtlr    r0
    lwz     r29, 0x13c(sp)
    addi    sp, sp, 0x148
    blr


.globl initMonte__Fv
initMonte__Fv: # 0x8018a698
    mflr    r0
    lis     r4, 0x8039
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stw     r31, 0xe4(sp)
    subi    r31, r4, 0x7400
    stw     r30, 0xe0(sp)
    stw     r29, 0xdc(sp)
    lwz     r3, -0x5db8(r13)
    lwz     r30, 0x4(r3)
    addi    r3, r31, 0x144
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x144
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    li      r3, 0x80
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8018a704
    addi    r3, r29, 0x0
    addi    r4, r31, 0x260
    bl      __ct__13TMapStaticObjFPCc
branch_0x8018a704:
    stw     r29, 0xd4(sp)
    addi    r4, r31, 0x17c
    lwz     r3, 0xd4(sp)
    bl      init__13TMapStaticObjFPCc
    addi    r30, r30, 0x10
    addi    r3, sp, 0x94
    addi    r4, r30, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x94(sp)
    addi    r3, sp, 0xd0
    addi    r4, sp, 0x90
    stw     r0, 0x90(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0xd0(sp)
    addi    r5, sp, 0xa0
    addi    r4, r30, 0x0
    stw     r0, 0xcc(sp)
    addi    r3, sp, 0x9c
    addi    r6, sp, 0xd4
    lwz     r0, 0xcc(sp)
    stw     r0, 0xa0(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r3, gpMarDirector(r13)
    lbz     r3, 0x7d(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x8018a784
    cmplwi  r3, 0x2
    beq-    branch_0x8018a784
    subi    r0, r3, 0x5
    clrlwi  r0, r0, 24
    cmplwi  r0, 0x1
    bgt-    branch_0x8018a7e4
branch_0x8018a784:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x1dc
    lbz     r0, 0x1dc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018a7b4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x274
    li      r5, 0x1dc
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8018a7b4:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x65
    lbz     r0, 0x65(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018a7e4
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x29c
    li      r5, 0x65
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8018a7e4:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    beq-    branch_0x8018a80c
    cmplwi  r0, 0x3
    beq-    branch_0x8018a80c
    cmplwi  r0, 0x5
    beq-    branch_0x8018a80c
    cmplwi  r0, 0x7
    bne-    branch_0x8018a83c
branch_0x8018a80c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x156
    lbz     r0, 0x156(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018a83c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x2c4
    li      r5, 0x156
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8018a83c:
    lwz     r0, 0xec(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    mtlr    r0
    lwz     r29, 0xdc(sp)
    addi    sp, sp, 0xe8
    blr


.globl __sinit_Map_cpp
__sinit_Map_cpp: # 0x8018a858
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x7a20
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a8a0
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8018a8a0:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a8d0
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8018a8d0:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a900
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8018a900:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a930
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8018a930:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a960
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8018a960:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a990
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8018a990:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a9c0
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8018a9c0:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8018a9f0
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8018a9f0:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8018aa20
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8018aa20:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8018aa50
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8018aa50:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8018aa80
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8018aa80:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8018aab0
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8018aab0:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8018aae0
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8018aae0:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ab10
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8018ab10:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8018ab40
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8018ab40:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr
