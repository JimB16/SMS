
.globl __ct__17TMapCollisionWarpFv
__ct__17TMapCollisionWarpFv: # 0x8018d8bc
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1744
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    addi    r3, r30, 0x20
    stw     r31, 0x4(r30)
    stw     r31, 0x8(r30)
    stw     r31, 0xc(r30)
    stw     r31, 0x10(r30)
    stw     r31, 0x14(r30)
    stw     r31, 0x18(r30)
    stw     r31, 0x1c(r30)
    sth     r31, 0x5c(r30)
    bl      PSMTXIdentity
    lfs     f0, -0x4400(rtoc)
    lis     r3, 0x803c
    addi    r0, r3, 0x16d8
    stfs    f0, 0x50(r30)
    mr      r3, r30
    stfs    f0, 0x54(r30)
    stfs    f0, 0x58(r30)
    stw     r0, 0x0(r30)
    sth     r31, 0x60(r30)
    stw     r31, 0x64(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__17TMapCollisionWarpFPCcUsPC10TLiveActor
init__17TMapCollisionWarpFPCcUsPC10TLiveActor: # 0x8018d94c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      init__17TMapCollisionBaseFPCcUsPC10TLiveActor
    li      r0, 0x2
    stw     r0, 0x8(r29)
    addi    r3, r29, 0x0
    addi    r6, r31, 0x0
    ori     r5, r30, 0x2
    li      r4, -0x270f
    bl      initCheckData__17TMapCollisionBaseFsUsPC10TLiveActor
    lhz     r0, 0x5c(r29)
    ori     r0, r0, 0x1
    sth     r0, 0x5c(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl remove__17TMapCollisionWarpFv
remove__17TMapCollisionWarpFv: # 0x8018d9b8
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r0, 0x5c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8018d9dc
    li      r0, 0x1
    b       branch_0x8018d9e0

branch_0x8018d9dc:
    li      r0, 0x0
branch_0x8018d9e0:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018d9f0
    li      r0, 0x0
    b       branch_0x8018d9f4

branch_0x8018d9f0:
    li      r0, 0x1
branch_0x8018d9f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018da18
    lhz     r0, 0x5c(r5)
    ori     r0, r0, 0x1
    sth     r0, 0x5c(r5)
    lwz     r3, -0x6320(r13)
    lhz     r4, 0x60(r5)
    lwz     r5, 0x64(r5)
    bl      removeCheckListData__17TMapCollisionDataFUsl
branch_0x8018da18:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setUpTrans__17TMapCollisionWarpFRCQ29JGeometry8TVec3_f_
setUpTrans__17TMapCollisionWarpFRCQ29JGeometry8TVec3_f_: # 0x8018da28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    lhz     r0, 0x5c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8018da58
    li      r0, 0x1
    b       branch_0x8018da5c

branch_0x8018da58:
    li      r0, 0x0
branch_0x8018da5c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018daa8
    lhz     r0, 0x5c(r30)
    clrrwi  r0, r0, 1
    sth     r0, 0x5c(r30)
    lwz     r3, -0x6320(r13)
    bl      getEntryID__17TMapCollisionDataFv
    sth     r3, 0x60(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
    lhz     r0, 0x60(r30)
    lwz     r4, -0x6320(r13)
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r0, 0x40(r4)
    lhz     r3, 0x42(r3)
    subf    r0, r3, r0
    stw     r0, 0x64(r30)
branch_0x8018daa8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl setUp__17TMapCollisionWarpFv
setUp__17TMapCollisionWarpFv: # 0x8018dac0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lhz     r0, 0x5c(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x8018dae8
    li      r0, 0x1
    b       branch_0x8018daec

branch_0x8018dae8:
    li      r0, 0x0
branch_0x8018daec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018db7c
    lhz     r0, 0x5c(r31)
    clrrwi  r0, r0, 1
    sth     r0, 0x5c(r31)
    lwz     r3, -0x6320(r13)
    bl      getEntryID__17TMapCollisionDataFv
    sth     r3, 0x60(r31)
    lhz     r0, 0x5c(r31)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x8018db20
    li      r0, 0x1
    b       branch_0x8018db24

branch_0x8018db20:
    li      r0, 0x0
branch_0x8018db24:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018db54
    lfs     f2, 0x4c(r31)
    mr      r3, r31
    lfs     f1, 0x3c(r31)
    addi    r4, sp, 0x20
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x20(sp)
    stfs    f1, 0x24(sp)
    stfs    f2, 0x28(sp)
    bl      updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
    b       branch_0x8018db5c

branch_0x8018db54:
    mr      r3, r31
    bl      update__17TMapCollisionBaseFv
branch_0x8018db5c:
    lhz     r0, 0x60(r31)
    lwz     r4, -0x6320(r13)
    slwi    r0, r0, 1
    add     r3, r4, r0
    lhz     r0, 0x40(r4)
    lhz     r3, 0x42(r3)
    subf    r0, r3, r0
    stw     r0, 0x64(r31)
branch_0x8018db7c:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__17TMapCollisionMoveFv
__ct__17TMapCollisionMoveFv: # 0x8018db90
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1744
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    li      r0, 0x0
    addi    r3, r31, 0x20
    stw     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    stw     r0, 0xc(r31)
    stw     r0, 0x10(r31)
    stw     r0, 0x14(r31)
    stw     r0, 0x18(r31)
    stw     r0, 0x1c(r31)
    sth     r0, 0x5c(r31)
    bl      PSMTXIdentity
    lfs     f0, -0x4400(rtoc)
    lis     r3, 0x803c
    addi    r0, r3, 0x16fc
    stfs    f0, 0x50(r31)
    mr      r3, r31
    stfs    f0, 0x54(r31)
    stfs    f0, 0x58(r31)
    stw     r0, 0x0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__17TMapCollisionMoveFPCcUsPC10TLiveActor
init__17TMapCollisionMoveFPCcUsPC10TLiveActor: # 0x8018dc10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      init__17TMapCollisionBaseFPCcUsPC10TLiveActor
    li      r0, 0x1
    stw     r0, 0x8(r29)
    addi    r3, r29, 0x0
    addi    r6, r31, 0x0
    ori     r5, r30, 0x2
    li      r4, -0x270f
    bl      initCheckData__17TMapCollisionBaseFsUsPC10TLiveActor
    lhz     r0, 0x5c(r29)
    ori     r0, r0, 0x1
    sth     r0, 0x5c(r29)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl init__17TMapCollisionMoveFUlUssPC10TLiveActor
init__17TMapCollisionMoveFUlUssPC10TLiveActor: # 0x8018dc7c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x1
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r7
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    stw     r0, 0x8(r3)
    stw     r4, 0xc(r3)
    lwz     r4, 0xc(r3)
    lwz     r3, -0x6320(r13)
    bl      allocCheckData__17TMapCollisionDataFUl
    stw     r3, 0x4(r28)
    li      r6, 0x0
    li      r3, 0x0
    b       branch_0x8018dcf8

branch_0x8018dcd0:
    lwz     r5, 0x4(r28)
    addi    r4, r3, 0x2
    addi    r0, r3, 0x44
    sthx    r29, r5, r3
    addi    r6, r6, 0x1
    addi    r3, r3, 0x48
    lwz     r5, 0x4(r28)
    sthx    r30, r5, r4
    lwz     r4, 0x4(r28)
    stwx    r31, r4, r0
branch_0x8018dcf8:
    lwz     r0, 0xc(r28)
    cmplw   r6, r0
    blt+    branch_0x8018dcd0
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl moveTrans__17TMapCollisionMoveFRCQ29JGeometry8TVec3_f_
moveTrans__17TMapCollisionMoveFRCQ29JGeometry8TVec3_f_: # 0x8018dd24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lhz     r5, 0x5c(r3)
    clrlwi. r0, r5, 31
    beq-    branch_0x8018dd44
    li      r0, 0x1
    b       branch_0x8018dd48

branch_0x8018dd44:
    li      r0, 0x0
branch_0x8018dd48:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018dd78
    rlwinm. r0, r5, 0, 17, 17
    beq-    branch_0x8018dd60
    li      r0, 0x1
    b       branch_0x8018dd64

branch_0x8018dd60:
    li      r0, 0x0
branch_0x8018dd64:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018dd74
    bl      setList__17TMapCollisionMoveFv
    b       branch_0x8018dd78

branch_0x8018dd74:
    bl      updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
branch_0x8018dd78:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl move__17TMapCollisionMoveFv
move__17TMapCollisionMoveFv: # 0x8018dd88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lhz     r4, 0x5c(r3)
    clrlwi. r0, r4, 31
    beq-    branch_0x8018dda8
    li      r0, 0x1
    b       branch_0x8018ddac

branch_0x8018dda8:
    li      r0, 0x0
branch_0x8018ddac:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018de1c
    rlwinm. r0, r4, 0, 17, 17
    beq-    branch_0x8018ddc4
    li      r0, 0x1
    b       branch_0x8018ddc8

branch_0x8018ddc4:
    li      r0, 0x0
branch_0x8018ddc8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018ddd8
    bl      setList__17TMapCollisionMoveFv
    b       branch_0x8018de1c

branch_0x8018ddd8:
    rlwinm. r0, r4, 0, 16, 16
    beq-    branch_0x8018dde8
    li      r0, 0x1
    b       branch_0x8018ddec

branch_0x8018dde8:
    li      r0, 0x0
branch_0x8018ddec:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018de18
    lfs     f0, 0x2c(r3)
    addi    r4, sp, 0xc
    stfs    f0, 0xc(sp)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0x10(sp)
    lfs     f0, 0x4c(r3)
    stfs    f0, 0x14(sp)
    bl      updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
    b       branch_0x8018de1c

branch_0x8018de18:
    bl      update__17TMapCollisionBaseFv
branch_0x8018de1c:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__19TMapCollisionStaticFv
__ct__19TMapCollisionStaticFv: # 0x8018de2c
    mflr    r0
    lis     r4, 0x803c
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x1744
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    addi    r3, r30, 0x20
    stw     r31, 0x4(r30)
    stw     r31, 0x8(r30)
    stw     r31, 0xc(r30)
    stw     r31, 0x10(r30)
    stw     r31, 0x14(r30)
    stw     r31, 0x18(r30)
    stw     r31, 0x1c(r30)
    sth     r31, 0x5c(r30)
    bl      PSMTXIdentity
    lfs     f0, -0x4400(rtoc)
    lis     r3, 0x803c
    addi    r0, r3, 0x1720
    stfs    f0, 0x50(r30)
    mr      r3, r30
    stfs    f0, 0x54(r30)
    stfs    f0, 0x58(r30)
    stw     r0, 0x0(r30)
    stw     r31, 0x60(r30)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl init__19TMapCollisionStaticFPCcUsPC10TLiveActor
init__19TMapCollisionStaticFPCcUsPC10TLiveActor: # 0x8018deb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r6, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      init__17TMapCollisionBaseFPCcUsPC10TLiveActor
    li      r3, 0x0
    rlwinm. r0, r30, 0, 30, 30
    stw     r3, 0x8(r29)
    bne-    branch_0x8018df08
    addi    r3, r29, 0x0
    addi    r5, r30, 0x0
    addi    r6, r31, 0x0
    li      r4, -0x270f
    bl      initCheckData__17TMapCollisionBaseFsUsPC10TLiveActor
    b       branch_0x8018df18

branch_0x8018df08:
    stw     r31, 0x60(r29)
    lhz     r0, 0x5c(r29)
    ori     r0, r0, 0x1
    sth     r0, 0x5c(r29)
branch_0x8018df18:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl setUp__19TMapCollisionStaticFv
setUp__19TMapCollisionStaticFv: # 0x8018df34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x4(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8018df78
    lhz     r0, 0x5c(r3)
    li      r5, 0x0
    clrrwi  r0, r0, 1
    sth     r0, 0x5c(r3)
    lwz     r0, 0x10(r3)
    cmplwi  r0, 0x15e
    blt-    branch_0x8018df6c
    ori     r5, r5, 0x4
branch_0x8018df6c:
    lwz     r6, 0x60(r3)
    li      r4, -0x270f
    bl      initCheckData__17TMapCollisionBaseFsUsPC10TLiveActor
branch_0x8018df78:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__17TMapCollisionBaseFPCcUsPC10TLiveActor
init__17TMapCollisionBaseFPCcUsPC10TLiveActor: # 0x8018df88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x130(sp)
    stw     r31, 0x12c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x128(sp)
    stw     r29, 0x124(sp)
    addi    r29, r4, 0x0
    lis     r4, 0x8039
    stw     r28, 0x120(sp)
    subi    r30, r4, 0x7118
    addi    r28, r5, 0x0
    addi    r3, r29, 0x0
    subi    r4, rtoc, 0x43fc
    bl      strstr
    cmplwi  r3, 0x0
    bne-    branch_0x8018e00c
    lbz     r0, 0x0(r29)
    cmpwi   r0, 0x2f
    beq-    branch_0x8018dff0
    addi    r5, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x18
    addi    r4, r30, 0x38
    bl      sprintf
    b       branch_0x8018e004

branch_0x8018dff0:
    addi    r5, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x18
    addi    r4, r30, 0x48
    bl      sprintf
branch_0x8018e004:
    addi    r29, sp, 0x18
    b       branch_0x8018e02c

branch_0x8018e00c:
    lbz     r0, 0x0(r29)
    cmpwi   r0, 0x2f
    beq-    branch_0x8018e02c
    addi    r5, r29, 0x0
    crxor   6, 6, 6
    addi    r3, sp, 0x18
    addi    r4, r30, 0x58
    bl      sprintf
branch_0x8018e02c:
    mr      r3, r29
    bl      getGlbResource__13JKRFileLoaderFPCc
    lwz     r4, 0x0(r3)
    rlwinm. r0, r28, 0, 16, 16
    stw     r4, 0x10(r31)
    lwz     r0, 0x4(r3)
    add     r0, r3, r0
    stw     r0, 0x14(r31)
    lwz     r0, 0x8(r3)
    stw     r0, 0x18(r31)
    lwz     r0, 0xc(r3)
    add     r0, r3, r0
    stw     r0, 0x1c(r31)
    beq-    branch_0x8018e070
    lhz     r0, 0x5c(r31)
    ori     r0, r0, 0x8000
    sth     r0, 0x5c(r31)
branch_0x8018e070:
    lwz     r4, 0x1c(r31)
    lhz     r0, 0x4(r4)
    rlwinm. r0, r0, 0, 16, 16
    bne-    branch_0x8018e120
    li      r8, 0x0
    b       branch_0x8018e110

branch_0x8018e088:
    extsh   r0, r8
    lwz     r4, 0x1c(r31)
    mulli   r6, r0, 0x18
    addi    r5, r6, 0x8
    add     r5, r4, r5
    lwz     r0, 0x0(r5)
    addi    r4, r6, 0xc
    addi    r7, r6, 0x10
    add     r0, r3, r0
    stw     r0, 0x0(r5)
    addi    r5, r6, 0x14
    lwz     r0, 0x1c(r31)
    add     r4, r0, r4
    lwz     r0, 0x0(r4)
    add     r0, r3, r0
    stw     r0, 0x0(r4)
    lwz     r0, 0x1c(r31)
    add     r7, r0, r7
    lwz     r0, 0x0(r7)
    add     r0, r3, r0
    stw     r0, 0x0(r7)
    lwz     r0, 0x1c(r31)
    add     r5, r0, r5
    lwz     r0, 0x0(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8018e0f8
    add     r0, r3, r0
    stw     r0, 0x0(r5)
branch_0x8018e0f8:
    lwz     r5, 0x1c(r31)
    addi    r4, r6, 0x4
    addi    r8, r8, 0x1
    lhzx    r0, r5, r4
    ori     r0, r0, 0x8000
    sthx    r0, r5, r4
branch_0x8018e110:
    lwz     r0, 0x18(r31)
    extsh   r4, r8
    cmplw   r4, r0
    blt+    branch_0x8018e088
branch_0x8018e120:
    lwz     r0, 0x134(sp)
    lwz     r31, 0x12c(sp)
    lwz     r30, 0x128(sp)
    mtlr    r0
    lwz     r29, 0x124(sp)
    lwz     r28, 0x120(sp)
    addi    sp, sp, 0x130
    blr


.globl setAllActor__17TMapCollisionBaseFPC10TLiveActor
setAllActor__17TMapCollisionBaseFPC10TLiveActor: # 0x8018e140
    li      r7, 0x0
    li      r5, 0x0
    b       branch_0x8018e160

branch_0x8018e14c:
    lwz     r6, 0x4(r3)
    addi    r0, r5, 0x44
    addi    r5, r5, 0x48
    stwx    r4, r6, r0
    addi    r7, r7, 0x1
branch_0x8018e160:
    lwz     r0, 0xc(r3)
    cmplw   r7, r0
    blt+    branch_0x8018e14c
    blr


.globl setAllData__17TMapCollisionBaseFs
setAllData__17TMapCollisionBaseFs: # 0x8018e170
    li      r7, 0x0
    li      r5, 0x0
    b       branch_0x8018e190

branch_0x8018e17c:
    lwz     r6, 0x4(r3)
    addi    r0, r5, 0x2
    addi    r5, r5, 0x48
    sthx    r4, r6, r0
    addi    r7, r7, 0x1
branch_0x8018e190:
    lwz     r0, 0xc(r3)
    cmplw   r7, r0
    blt+    branch_0x8018e17c
    blr


.globl setAllBGType__17TMapCollisionBaseFUs
setAllBGType__17TMapCollisionBaseFUs: # 0x8018e1a0
    li      r7, 0x0
    li      r5, 0x0
    b       branch_0x8018e1bc

branch_0x8018e1ac:
    lwz     r6, 0x4(r3)
    addi    r7, r7, 0x1
    sthx    r4, r6, r5
    addi    r5, r5, 0x48
branch_0x8018e1bc:
    lwz     r0, 0xc(r3)
    cmplw   r7, r0
    blt+    branch_0x8018e1ac
    blr


.globl setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
setVertexData__17TMapCollisionBaseFUlRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8018e1cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mulli   r31, r4, 0x48
    stw     r30, 0x20(sp)
    addi    r4, r5, 0x0
    lwz     r0, 0x4(r3)
    addi    r30, r3, 0x0
    addi    r5, r6, 0x0
    addi    r6, r7, 0x0
    add     r3, r0, r31
    bl      setVertex__12TBGCheckDataFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lwz     r0, 0x4(r30)
    lwz     r5, 0x8(r30)
    lwz     r3, -0x6320(r13)
    add     r4, r0, r31
    bl      addCheckDataToGrid__17TMapCollisionDataFP12TBGCheckDatai
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl moveSRT__17TMapCollisionMoveFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
moveSRT__17TMapCollisionMoveFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x8018e22c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r3, r31, 0x20
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
    lhz     r3, 0x5c(r31)
    clrlwi. r0, r3, 31
    beq-    branch_0x8018e284
    li      r0, 0x1
    b       branch_0x8018e288

branch_0x8018e284:
    li      r0, 0x0
branch_0x8018e288:
    clrlwi. r0, r0, 24
    bne-    branch_0x8018e304
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x8018e2a0
    li      r0, 0x1
    b       branch_0x8018e2a4

branch_0x8018e2a0:
    li      r0, 0x0
branch_0x8018e2a4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018e2b8
    mr      r3, r31
    bl      setList__17TMapCollisionMoveFv
    b       branch_0x8018e304

branch_0x8018e2b8:
    rlwinm. r0, r3, 0, 16, 16
    beq-    branch_0x8018e2c8
    li      r0, 0x1
    b       branch_0x8018e2cc

branch_0x8018e2c8:
    li      r0, 0x0
branch_0x8018e2cc:
    clrlwi. r0, r0, 24
    beq-    branch_0x8018e2fc
    lfs     f0, 0x2c(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x24
    stfs    f0, 0x24(sp)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x28(sp)
    lfs     f0, 0x4c(r31)
    stfs    f0, 0x2c(sp)
    bl      updateTrans__17TMapCollisionBaseFRCQ29JGeometry8TVec3_f_
    b       branch_0x8018e304

branch_0x8018e2fc:
    mr      r3, r31
    bl      update__17TMapCollisionBaseFv
branch_0x8018e304:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl remove__19TMapCollisionStaticFv
remove__19TMapCollisionStaticFv: # 0x8018e318
    blr

