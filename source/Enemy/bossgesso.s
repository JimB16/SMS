
.globl __dt__12TNerveBGRollFv
__dt__12TNerveBGRollFv: # 0x8007279c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800727e0
    lis     r3, 0x803b
    addi    r0, r3, 0x29d8
    stw     r0, 0x0(r31)
    beq-    branch_0x800727d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800727d0:
    extsh.  r0, r4
    ble-    branch_0x800727e0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800727e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBGRollCFP24TSpineBase_10TLiveActor_
execute__12TNerveBGRollCFP24TSpineBase_10TLiveActor_: # 0x800727f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    lwz     r31, 0x0(r4)
    lbz     r0, 0x1a1(r31)
    lwz     r30, 0x74(r31)
    extsb.  r0, r0
    bne-    branch_0x80072b90
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800728e8
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x13
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072868
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072868:
    lwz     r3, 0x74(r31)
    li      r4, 0x13
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800728b8
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x800728b8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800728dc
    li      r4, 0x0
    b       branch_0x800728e0

branch_0x800728dc:
    lwz     r4, 0x4c(r3)
branch_0x800728e0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x800728e8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80072b88
    addi    r3, r30, 0x0
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80072ab0
    lbz     r0, 0x196(r31)
    extsb   r0, r0
    cmpwi   r0, 0x3
    bge-    branch_0x800729ec
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0xe
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x8007295c
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x8007295c:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800729ac
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x800729ac:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800729d0
    li      r4, 0x0
    b       branch_0x800729d4

branch_0x800729d0:
    lwz     r4, 0x38(r3)
branch_0x800729d4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lbz     r3, 0x196(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x196(r31)
    b       branch_0x80072b88

branch_0x800729ec:
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x12
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072a24
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072a24:
    lwz     r3, 0x74(r31)
    li      r4, 0x12
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80072a74
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80072a74:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80072a98
    li      r4, 0x0
    b       branch_0x80072a9c

branch_0x80072a98:
    lwz     r4, 0x48(r3)
branch_0x80072a9c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    li      r0, 0x0
    stb     r0, 0x196(r31)
    b       branch_0x80072b88

branch_0x80072ab0:
    addi    r3, r30, 0x0
    li      r4, 0x13
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80072b80
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0xe
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072afc
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072afc:
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80072b4c
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80072b4c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80072b70
    li      r4, 0x0
    b       branch_0x80072b74

branch_0x80072b70:
    lwz     r4, 0x38(r3)
branch_0x80072b74:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x80072b88

branch_0x80072b80:
    li      r3, 0x1
    b       branch_0x80072ef8

branch_0x80072b88:
    li      r3, 0x0
    b       branch_0x80072ef8

branch_0x80072b90:
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80072c54
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x11
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072bd4
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072bd4:
    lwz     r3, 0x74(r31)
    li      r4, 0x11
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80072c24
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80072c24:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80072c48
    li      r4, 0x0
    b       branch_0x80072c4c

branch_0x80072c48:
    lwz     r4, 0x44(r3)
branch_0x80072c4c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80072c54:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80072ef4
    addi    r3, r30, 0x0
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80072e1c
    lbz     r0, 0x196(r31)
    extsb   r0, r0
    cmpwi   r0, 0x3
    bge-    branch_0x80072d58
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0xf
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072cc8
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072cc8:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80072d18
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80072d18:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80072d3c
    li      r4, 0x0
    b       branch_0x80072d40

branch_0x80072d3c:
    lwz     r4, 0x3c(r3)
branch_0x80072d40:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lbz     r3, 0x196(r31)
    addi    r0, r3, 0x1
    stb     r0, 0x196(r31)
    b       branch_0x80072ef4

branch_0x80072d58:
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x10
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072d90
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072d90:
    lwz     r3, 0x74(r31)
    li      r4, 0x10
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80072de0
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80072de0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80072e04
    li      r4, 0x0
    b       branch_0x80072e08

branch_0x80072e04:
    lwz     r4, 0x40(r3)
branch_0x80072e08:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    li      r0, 0x0
    stb     r0, 0x196(r31)
    b       branch_0x80072ef4

branch_0x80072e1c:
    addi    r3, r30, 0x0
    li      r4, 0x11
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80072eec
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0xf
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80072e68
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80072e68:
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80072eb8
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80072eb8:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80072edc
    li      r4, 0x0
    b       branch_0x80072ee0

branch_0x80072edc:
    lwz     r4, 0x3c(r3)
branch_0x80072ee0:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x80072ef4

branch_0x80072eec:
    li      r3, 0x1
    b       branch_0x80072ef8

branch_0x80072ef4:
    li      r3, 0x0
branch_0x80072ef8:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi: # 0x80072f14
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r4, 0x0(r3)
    bge-    branch_0x80072f3c
    li      r3, 0x0
    b       branch_0x80072f8c

branch_0x80072f3c:
    lwz     r3, 0x1c(r31)
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x80072f5c
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r0, r3, r0
    b       branch_0x80072f60

branch_0x80072f5c:
    li      r0, 0x0
branch_0x80072f60:
    stw     r0, 0x24(r31)
    addi    r3, r31, 0x4
    lwz     r4, 0x24(r31)
    lha     r4, 0x2(r4)
    bl      init__12J3DFrameCtrlFs
    lwz     r3, 0x24(r31)
    lbz     r0, 0x0(r3)
    stb     r0, 0x8(r31)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0x10(r31)
    li      r3, 0x1
branch_0x80072f8c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi: # 0x80072fa0
    lwz     r0, 0x0(r3)
    cmpw    r4, r0
    bge-    branch_0x80072fbc
    lwz     r3, 0xc(r3)
    slwi    r0, r4, 2
    lwzx    r3, r3, r0
    blr

branch_0x80072fbc:
    li      r3, 0x0
    blr


.globl getMActorAnmData__13TMActorKeeperCFv
getMActorAnmData__13TMActorKeeperCFv: # 0x80072fc4
    lwz     r3, 0xc(r3)
    blr


.globl theNerve__12TNerveBGRollFv
theNerve__12TNerveBGRollFv: # 0x80072fcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e00(r13)
    extsb.  r0, r0
    bne-    branch_0x8007301c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6dfc(r13)
    addi    r0, r3, 0x29d8
    lis     r4, 0x8007
    stw     r0, -0x6dfc(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbe8
    addi    r4, r4, 0x279c
    subi    r3, r13, 0x6dfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e00(r13)
branch_0x8007301c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6dfc
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__15TNerveBGPolDropCFP24TSpineBase_10TLiveActor_
execute__15TNerveBGPolDropCFP24TSpineBase_10TLiveActor_: # 0x80073030
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    mr      r30, r4
    stw     r29, 0xa4(sp)
    stw     r28, 0xa0(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800731a0
    lwz     r28, 0x164(r31)
    lwz     r3, 0x64(r28)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x1
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r28)
    cmplw   r0, r3
    beq-    branch_0x8007309c
    stw     r0, 0x58(r28)
    stw     r3, 0x54(r28)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r28)
branch_0x8007309c:
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800730ec
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x800730ec:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80073110
    li      r4, 0x0
    b       branch_0x80073114

branch_0x80073110:
    lwz     r4, 0x4(r3)
branch_0x80073114:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    li      r28, 0x0
    addi    r29, r28, 0x0
branch_0x80073124:
    addi    r0, r29, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80073168
    cmpwi   r4, 0x6
    beq-    branch_0x8007314c
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80073154
branch_0x8007314c:
    li      r0, 0x1
    b       branch_0x80073158

branch_0x80073154:
    li      r0, 0x0
branch_0x80073158:
    cmpwi   r0, 0x0
    bne-    branch_0x80073168
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80073168:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80073124
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
branch_0x800731a0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a84(rtoc)
    lfs     f1, 0x10(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x800731d0
    lfs     f0, -0x6a80(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800731d0
    mr      r3, r31
    bl      launchPolDrop__10TBossGessoFv
branch_0x800731d0:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80073330
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x94(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lfs     f1, 0x90(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x90(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2ac(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    fmuls   f31, f0, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x195(r31)
    lfs     f0, 0x1f8(r3)
    extsb   r0, r0
    cmpwi   r0, 0x3
    fmuls   f3, f0, f0
    bge-    branch_0x80073328
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x94(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f3, f0
    cror    2, 0, 2
    bne-    branch_0x80073328
    fcmpo   cr0, f0, f31
    bge-    branch_0x80073328
    lbz     r0, -0x6e08(r13)
    extsb.  r0, r0
    bne-    branch_0x800732f4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e04(r13)
    addi    r0, r3, 0x2a28
    lis     r4, 0x8007
    stw     r0, -0x6e04(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbdc
    addi    r4, r4, 0x336c
    subi    r3, r13, 0x6e04
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e08(r13)
branch_0x800732f4:
    subi    r4, r13, 0x6e04
    cmplwi  r4, 0x0
    beq-    branch_0x80073328
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80073328
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80073328:
    li      r3, 0x1
    b       branch_0x80073348

branch_0x80073330:
    lfs     f1, -0x6a88(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x80073348:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lwz     r31, 0xac(sp)
    mtlr    r0
    lwz     r30, 0xa8(sp)
    lwz     r29, 0xa4(sp)
    lwz     r28, 0xa0(sp)
    addi    sp, sp, 0xb8
    blr


.globl __dt__15TNerveBGPolDropFv
__dt__15TNerveBGPolDropFv: # 0x8007336c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800733b0
    lis     r3, 0x803b
    addi    r0, r3, 0x2a28
    stw     r0, 0x0(r31)
    beq-    branch_0x800733a0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x800733a0:
    extsh.  r0, r4
    ble-    branch_0x800733b0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800733b0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__15TNerveBGPolDropFv
theNerve__15TNerveBGPolDropFv: # 0x800733c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e08(r13)
    extsb.  r0, r0
    bne-    branch_0x80073418
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e04(r13)
    addi    r0, r3, 0x2a28
    lis     r4, 0x8007
    stw     r0, -0x6e04(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbdc
    addi    r4, r4, 0x336c
    subi    r3, r13, 0x6e04
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e08(r13)
branch_0x80073418:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e04
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__15TNerveBGPolluteCFP24TSpineBase_10TLiveActor_
execute__15TNerveBGPolluteCFP24TSpineBase_10TLiveActor_: # 0x8007342c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    mr      r30, r4
    stw     r29, 0x7c(sp)
    stw     r28, 0x78(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800735ac
    lwz     r28, 0x164(r31)
    lwz     r3, 0x64(r28)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0xa
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r28)
    cmplw   r0, r3
    beq-    branch_0x80073494
    stw     r0, 0x58(r28)
    stw     r3, 0x54(r28)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r28)
branch_0x80073494:
    lwz     r3, 0x74(r31)
    li      r4, 0xa
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800734e4
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x800734e4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80073508
    li      r4, 0x0
    b       branch_0x8007350c

branch_0x80073508:
    lwz     r4, 0x28(r3)
branch_0x8007350c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x178(r31)
    li      r4, 0x4
    bl      setBckFromIndex__6MActorFi
    li      r0, 0x1
    li      r28, 0x0
    stb     r0, 0x17c(r31)
    mr      r29, r28
branch_0x80073530:
    addi    r0, r29, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80073574
    cmpwi   r4, 0x6
    beq-    branch_0x80073558
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80073560
branch_0x80073558:
    li      r0, 0x1
    b       branch_0x80073564

branch_0x80073560:
    li      r0, 0x0
branch_0x80073564:
    cmpwi   r0, 0x0
    bne-    branch_0x80073574
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80073574:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80073530
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
branch_0x800735ac:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x5a
    bne-    branch_0x800735dc
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0xa0
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0x510
    li      r7, 0x0
    bl      emitAndBindToSRTMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x800735dc:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xe2
    bne-    branch_0x80073618
    addi    r3, r31, 0x0
    addi    r5, sp, 0x64
    li      r4, 0x1
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, sp, 0x64
    li      r4, 0x9b
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r0, 0xe6
    stb     r0, 0x193(r31)
branch_0x80073618:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xe6
    bne-    branch_0x80073644
    lwz     r3, -0x7108(r13)
    li      r4, 0x14
    lfs     f1, -0x6a98(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x2
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80073644:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80073678
    lwz     r3, 0x178(r31)
    li      r4, -0x1
    bl      setBckFromIndex__6MActorFi
    li      r0, 0x0
    stb     r0, 0x17c(r31)
    li      r3, 0x1
    b       branch_0x8007367c

branch_0x80073678:
    li      r3, 0x0
branch_0x8007367c:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    lwz     r28, 0x78(sp)
    addi    sp, sp, 0x88
    blr


.globl theNerve__15TNerveBGPolluteFv
theNerve__15TNerveBGPolluteFv: # 0x8007369c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x800736ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r4, 0x8007
    stw     r0, -0x6e0c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbd0
    addi    r4, r4, 0x3700
    subi    r3, r13, 0x6e0c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x800736ec:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e0c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__15TNerveBGPolluteFv
__dt__15TNerveBGPolluteFv: # 0x80073700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80073744
    lis     r3, 0x803b
    addi    r0, r3, 0x2a38
    stw     r0, 0x0(r31)
    beq-    branch_0x80073734
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80073734:
    extsh.  r0, r4
    ble-    branch_0x80073744
    mr      r3, r31
    bl      __dl__FPv
branch_0x80073744:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__11TNerveBGDieCFP24TSpineBase_10TLiveActor_
execute__11TNerveBGDieCFP24TSpineBase_10TLiveActor_: # 0x8007375c
    mflr    r0
    lis     r3, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c0(sp)
    stw     r31, 0x1bc(sp)
    stw     r30, 0x1b8(sp)
    subi    r30, r3, 0x5ed8
    stw     r29, 0x1b4(sp)
    mr      r29, r4
    stw     r28, 0x1b0(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80073a40
    lwz     r28, 0x164(r31)
    lwz     r3, 0x64(r28)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x2
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r28)
    cmplw   r0, r3
    beq-    branch_0x800737cc
    stw     r0, 0x58(r28)
    stw     r3, 0x54(r28)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r28)
branch_0x800737cc:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x8007381c
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x1ac(sp)
    stw     r0, 0x1a8(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x8007381c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80073840
    li      r4, 0x0
    b       branch_0x80073844

branch_0x80073840:
    lwz     r4, 0x8(r3)
branch_0x80073844:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a7c(rtoc)
    stfs    f0, 0x10(r3)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x80073894
    cmplwi  r0, 0x3b
    bne-    branch_0x800738ac
branch_0x80073894:
    li      r3, 0x7
    li      r4, 0xa
    bl      stopTrackBGMs__5MSBgmFUcUl
    li      r3, 0x0
    bl      setBossLivesFlag__10MSMainProcFb
    b       branch_0x800738c8

branch_0x800738ac:
    cmplwi  r0, 0x9
    bne-    branch_0x800738c8
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    li      r3, 0x0
    bl      setBossLivesFlagOnlyFlag__10MSMainProcFb
branch_0x800738c8:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x80073910
    li      r0, 0x0
    sth     r0, 0x180(sp)
    addi    r0, sp, 0x180
    addi    r4, r30, 0x3ac
    stw     r0, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x6a88(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x8007399c

branch_0x80073910:
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80073924
    li      r0, 0x1
    b       branch_0x80073928

branch_0x80073924:
    li      r0, 0x0
branch_0x80073928:
    cmpwi   r0, 0x0
    bne-    branch_0x80073968
    li      r0, 0x0
    sth     r0, 0x17c(sp)
    addi    r0, sp, 0x17c
    addi    r4, r30, 0x3c0
    stw     r0, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x6a88(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x8007399c

branch_0x80073968:
    li      r0, 0x0
    sth     r0, 0x178(sp)
    addi    r0, sp, 0x178
    addi    r4, r30, 0x3d4
    stw     r0, 0x8(sp)
    li      r5, 0x0
    li      r6, -0x1
    lfs     f1, -0x6a88(rtoc)
    li      r7, 0x1
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
branch_0x8007399c:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x800739b4
    cmplwi  r0, 0x3b
    bne-    branch_0x800739d8
branch_0x800739b4:
    lfs     f1, -0x6a78(rtoc)
    addi    r4, r30, 0x3e8
    lfs     f0, 0x14(r31)
    addi    r5, r30, 0x3fc
    lwz     r3, gpItemManager(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      makeShineAppearWithDemo__12TItemManagerFPCcPCcfff
branch_0x800739d8:
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x410
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x410
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80073a10
    bl      killChildren__13TEnemyManagerFv
branch_0x80073a10:
    lwz     r3, gpMSound(r13)
    li      r4, 0x2953
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80073a40
    addi    r4, r31, 0x10
    li      r3, 0x2953
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80073a40:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    bne-    branch_0x80073ab8
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x2e4
    blt-    branch_0x80073ab8
    cmpwi   r0, 0x2ee
    bgt-    branch_0x80073ab8
    lwz     r3, gpMSound(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80073a94
    addi    r4, r31, 0x10
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80073a94:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x2e9
    bne-    branch_0x80073ab8
    lfs     f0, -0x6a98(rtoc)
    addi    r5, r31, 0x1a4
    li      r4, 0x8
    stfs    f0, 0x1a4(r31)
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x80073ab8:
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80073cd4
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80073cd4
    lwz     r28, 0x164(r31)
    lwz     r3, 0x64(r28)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x6
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r28)
    cmplw   r0, r3
    beq-    branch_0x80073b1c
    stw     r0, 0x58(r28)
    stw     r3, 0x54(r28)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r28)
branch_0x80073b1c:
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80073b6c
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x1ac(sp)
    stw     r0, 0x1a8(sp)
    lfd     f0, 0x1a8(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80073b6c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80073b90
    li      r4, 0x0
    b       branch_0x80073b94

branch_0x80073b90:
    lwz     r4, 0x18(r3)
branch_0x80073b94:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    li      r30, 0x0
    addi    r29, r30, 0x0
branch_0x80073ba4:
    addi    r0, r29, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80073be8
    cmpwi   r4, 0x6
    beq-    branch_0x80073bcc
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80073bd4
branch_0x80073bcc:
    li      r0, 0x1
    b       branch_0x80073bd8

branch_0x80073bd4:
    li      r0, 0x0
branch_0x80073bd8:
    cmpwi   r0, 0x0
    bne-    branch_0x80073be8
    li      r4, 0x8
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80073be8:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80073ba4
    lfs     f1, 0x18(r31)
    li      r5, 0x0
    lfs     f0, 0x10(r31)
    mr      r3, r31
    lfs     f2, -0x6a74(rtoc)
    stfs    f0, 0x19c(sp)
    lfs     f0, -0x6a70(rtoc)
    fadds   f1, f2, f1
    stw     r5, 0x168(sp)
    stfs    f0, 0x1a0(sp)
    stfs    f1, 0x1a4(sp)
    lwz     r4, 0x19c(sp)
    lwz     r0, 0x1a0(sp)
    stw     r4, 0x16c(sp)
    stw     r0, 0x170(sp)
    lwz     r0, 0x1a4(sp)
    stw     r0, 0x174(sp)
    lwz     r0, 0x168(sp)
    stw     r0, 0xf4(r31)
    lwz     r4, 0x16c(sp)
    lwz     r0, 0x170(sp)
    stw     r4, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x174(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x168(sp)
    stw     r0, 0x104(r31)
    lwz     r4, 0x16c(sp)
    lwz     r0, 0x170(sp)
    stw     r4, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x174(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    fmr     f2, f1
    lfs     f1, -0x6a6c(rtoc)
    addi    r4, r31, 0x0
    addi    r3, sp, 0x15c
    addi    r5, sp, 0x19c
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r4, 0x15c(sp)
    li      r3, 0x0
    lwz     r0, 0x160(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x164(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    b       branch_0x80073e50

branch_0x80073cd4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80073d3c
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x184(sp)
    stfs    f0, 0x188(sp)
    stfs    f0, 0x18c(sp)
    lwz     r3, 0x184(sp)
    lwz     r0, 0x188(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x18c(sp)
    stw     r0, 0xb4(r31)
    lwz     r3, 0x184(sp)
    lwz     r0, 0x188(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x18c(sp)
    stw     r0, 0x9c(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
branch_0x80073d3c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80073e4c
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x124(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x80073e4c
    li      r28, 0x0
    li      r29, 0x0
branch_0x80073d70:
    addi    r0, r29, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80073db4
    cmpwi   r4, 0x6
    beq-    branch_0x80073d98
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80073da0
branch_0x80073d98:
    li      r0, 0x1
    b       branch_0x80073da4

branch_0x80073da0:
    li      r0, 0x0
branch_0x80073da4:
    cmpwi   r0, 0x0
    bne-    branch_0x80073db4
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80073db4:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80073d70
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x428
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x428
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80073e44
    lwz     r12, 0x0(r3)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    lfs     f1, -0x6a98(rtoc)
    li      r3, 0x0
    li      r4, 0x5
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x80073e44:
    li      r3, 0x1
    b       branch_0x80073e50

branch_0x80073e4c:
    li      r3, 0x0
branch_0x80073e50:
    lwz     r0, 0x1c4(sp)
    lwz     r31, 0x1bc(sp)
    lwz     r30, 0x1b8(sp)
    mtlr    r0
    lwz     r29, 0x1b4(sp)
    lwz     r28, 0x1b0(sp)
    addi    sp, sp, 0x1c0
    blr


.globl theNerve__11TNerveBGDieFv
theNerve__11TNerveBGDieFv: # 0x80073e70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e18(r13)
    extsb.  r0, r0
    bne-    branch_0x80073ec0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e14(r13)
    addi    r0, r3, 0x2a48
    lis     r4, 0x8007
    stw     r0, -0x6e14(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbc4
    addi    r4, r4, 0x3ed4
    subi    r3, r13, 0x6e14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e18(r13)
branch_0x80073ec0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e14
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__11TNerveBGDieFv
__dt__11TNerveBGDieFv: # 0x80073ed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80073f18
    lis     r3, 0x803b
    addi    r0, r3, 0x2a48
    stw     r0, 0x0(r31)
    beq-    branch_0x80073f08
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80073f08:
    extsh.  r0, r4
    ble-    branch_0x80073f18
    mr      r3, r31
    bl      __dl__FPv
branch_0x80073f18:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__11TNerveBGTugCFP24TSpineBase_10TLiveActor_
execute__11TNerveBGTugCFP24TSpineBase_10TLiveActor_: # 0x80073f30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stw     r31, 0xbc(sp)
    stw     r30, 0xb8(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8007400c
    lwz     r30, 0x164(r31)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x5
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x80073f8c
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r30)
branch_0x80073f8c:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80073fdc
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80073fdc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80074000
    li      r4, 0x0
    b       branch_0x80074004

branch_0x80074000:
    lwz     r4, 0x14(r3)
branch_0x80074004:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8007400c:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x138
    addi    r5, r5, 0x8d0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x139
    addi    r5, r5, 0x150
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x139
    addi    r5, r5, 0xc0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, 0x160(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8007424c
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xa4(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xac(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xa4(sp)
    lfs     f0, 0xa8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xac(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6a88(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f5, 0x194(r3)
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80074120
    b       branch_0x80074144

branch_0x80074120:
    frsqrte f3, f4
    lfs     f2, -0x6a64(rtoc)
    lfs     f0, -0x6a60(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80074144:
    fcmpo   cr0, f4, f5
    cror    2, 1, 2
    bne-    branch_0x8007424c
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a7c(rtoc)
    stfs    f0, 0x10(r3)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    lwz     r3, 0x74(r31)
    li      r4, 0x9
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8007424c
    lwz     r30, 0x164(r31)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x9
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x800741cc
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r30)
branch_0x800741cc:
    lwz     r3, 0x74(r31)
    li      r4, 0x9
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x8007421c
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x8007421c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80074240
    li      r4, 0x0
    b       branch_0x80074244

branch_0x80074240:
    lwz     r4, 0x24(r3)
branch_0x80074244:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x8007424c:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80074394
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x8007427c
    li      r0, 0x1
    b       branch_0x800742c8

branch_0x8007427c:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80074294
    li      r0, 0x1
    b       branch_0x800742c8

branch_0x80074294:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800742ac
    li      r0, 0x1
    b       branch_0x800742c8

branch_0x800742ac:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800742c4
    li      r0, 0x1
    b       branch_0x800742c8

branch_0x800742c4:
    li      r0, 0x0
branch_0x800742c8:
    cmpwi   r0, 0x0
    beq-    branch_0x8007438c
    lwz     r30, 0x164(r31)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x5
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x80074308
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r30)
branch_0x80074308:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80074358
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0xb4(sp)
    stw     r0, 0xb0(sp)
    lfd     f0, 0xb0(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80074358:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x8007437c
    li      r4, 0x0
    b       branch_0x80074380

branch_0x8007437c:
    lwz     r4, 0x14(r3)
branch_0x80074380:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x80074394

branch_0x8007438c:
    li      r3, 0x1
    b       branch_0x800743b4

branch_0x80074394:
    lfs     f1, -0x6a88(rtoc)
    mr      r3, r31
    lfs     f2, 0x144(r31)
    lfs     f0, -0x6a94(rtoc)
    fmr     f3, f1
    fmuls   f2, f0, f2
    bl      walkToCurPathNode__11TSpineEnemyFfff
    li      r3, 0x0
branch_0x800743b4:
    lwz     r0, 0xc4(sp)
    lwz     r31, 0xbc(sp)
    lwz     r30, 0xb8(sp)
    mtlr    r0
    addi    sp, sp, 0xc0
    blr


.globl theNerve__11TNerveBGTugFv
theNerve__11TNerveBGTugFv: # 0x800743cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e20(r13)
    extsb.  r0, r0
    bne-    branch_0x8007441c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e1c(r13)
    addi    r0, r3, 0x2a58
    lis     r4, 0x8007
    stw     r0, -0x6e1c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbb8
    addi    r4, r4, 0x4430
    subi    r3, r13, 0x6e1c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e20(r13)
branch_0x8007441c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e1c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__11TNerveBGTugFv
__dt__11TNerveBGTugFv: # 0x80074430
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80074474
    lis     r3, 0x803b
    addi    r0, r3, 0x2a58
    stw     r0, 0x0(r31)
    beq-    branch_0x80074464
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80074464:
    extsh.  r0, r4
    ble-    branch_0x80074474
    mr      r3, r31
    bl      __dl__FPv
branch_0x80074474:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveBGTentacleDamageCFP24TSpineBase_10TLiveActor_
execute__22TNerveBGTentacleDamageCFP24TSpineBase_10TLiveActor_: # 0x8007448c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80074570
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x3
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x800744f0
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x800744f0:
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80074540
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x64(sp)
    stw     r0, 0x60(sp)
    lfd     f0, 0x60(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80074540:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80074564
    li      r4, 0x0
    b       branch_0x80074568

branch_0x80074564:
    lwz     r4, 0xc(r3)
branch_0x80074568:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80074570:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1e
    beq-    branch_0x80074584
    cmpwi   r0, 0x130
    bne-    branch_0x800745d0
branch_0x80074584:
    addi    r3, r31, 0x0
    addi    r5, sp, 0x50
    li      r4, 0x2f
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f1, -0x6a5c(rtoc)
    addi    r4, sp, 0x4c
    lfs     f0, 0x54(sp)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x50(sp)
    lfs     f3, 0x58(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x54(sp)
    addi    r5, sp, 0x50
    li      r4, 0x9a
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x800745d0:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xa
    bne-    branch_0x800745fc
    lwz     r3, -0x7108(r13)
    li      r4, 0x15
    lfs     f1, -0x6a98(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x1
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x800745fc:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x130
    bne-    branch_0x80074628
    lwz     r3, -0x7108(r13)
    li      r4, 0x14
    lfs     f1, -0x6a98(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x1
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80074628:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80074734
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80074658
    li      r0, 0x1
    b       branch_0x800746a4

branch_0x80074658:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80074670
    li      r0, 0x1
    b       branch_0x800746a4

branch_0x80074670:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80074688
    li      r0, 0x1
    b       branch_0x800746a4

branch_0x80074688:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800746a0
    li      r0, 0x1
    b       branch_0x800746a4

branch_0x800746a0:
    li      r0, 0x0
branch_0x800746a4:
    cmpwi   r0, 0x0
    bne-    branch_0x800746b4
    li      r3, 0x1
    b       branch_0x80074738

branch_0x800746b4:
    lbz     r0, -0x6e28(r13)
    extsb.  r0, r0
    bne-    branch_0x800746f8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e24(r13)
    addi    r0, r3, 0x2a68
    lis     r4, 0x8007
    stw     r0, -0x6e24(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbac
    addi    r4, r4, 0x4754
    subi    r3, r13, 0x6e24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e28(r13)
branch_0x800746f8:
    subi    r4, r13, 0x6e24
    cmplwi  r4, 0x0
    beq-    branch_0x8007472c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8007472c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8007472c:
    li      r3, 0x1
    b       branch_0x80074738

branch_0x80074734:
    li      r3, 0x0
branch_0x80074738:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__22TNerveBGTentacleDamageFv
__dt__22TNerveBGTentacleDamageFv: # 0x80074754
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80074798
    lis     r3, 0x803b
    addi    r0, r3, 0x2a68
    stw     r0, 0x0(r31)
    beq-    branch_0x80074788
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80074788:
    extsh.  r0, r4
    ble-    branch_0x80074798
    mr      r3, r31
    bl      __dl__FPv
branch_0x80074798:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__22TNerveBGTentacleDamageFv
theNerve__22TNerveBGTentacleDamageFv: # 0x800747b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e28(r13)
    extsb.  r0, r0
    bne-    branch_0x80074800
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e24(r13)
    addi    r0, r3, 0x2a68
    lis     r4, 0x8007
    stw     r0, -0x6e24(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbac
    addi    r4, r4, 0x4754
    subi    r3, r13, 0x6e24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e28(r13)
branch_0x80074800:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e24
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__18TNerveBGBeakDamageCFP24TSpineBase_10TLiveActor_
execute__18TNerveBGBeakDamageCFP24TSpineBase_10TLiveActor_: # 0x80074814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x158(sp)
    stw     r31, 0x154(sp)
    stw     r30, 0x150(sp)
    mr      r30, r4
    stw     r29, 0x14c(sp)
    stw     r28, 0x148(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800749e0
    lwz     r28, 0x164(r31)
    lwz     r3, 0x64(r28)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x7
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r28)
    cmplw   r0, r3
    beq-    branch_0x8007487c
    stw     r0, 0x58(r28)
    stw     r3, 0x54(r28)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r28)
branch_0x8007487c:
    lwz     r3, 0x74(r31)
    li      r4, 0x7
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800748cc
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x144(sp)
    stw     r0, 0x140(sp)
    lfd     f0, 0x140(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x800748cc:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x800748f0
    li      r4, 0x0
    b       branch_0x800748f4

branch_0x800748f0:
    lwz     r4, 0x1c(r3)
branch_0x800748f4:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      setBtkFromIndex__6MActorFi
    li      r28, 0x0
    addi    r29, r28, 0x0
branch_0x80074910:
    addi    r0, r29, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80074954
    cmpwi   r4, 0x6
    beq-    branch_0x80074938
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80074940
branch_0x80074938:
    li      r0, 0x1
    b       branch_0x80074944

branch_0x80074940:
    li      r0, 0x0
branch_0x80074944:
    cmpwi   r0, 0x0
    bne-    branch_0x80074954
    li      r4, 0x8
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80074954:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80074910
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a98(rtoc)
    li      r4, 0x1
    stfs    f0, 0xc(r3)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a7c(rtoc)
    stfs    f0, 0x10(r3)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x800749c8
    cmplwi  r0, 0x3b
    bne-    branch_0x800749e0
branch_0x800749c8:
    lis     r3, 0x8001
    addi    r3, r3, 0xd
    li      r4, 0xa
    bl      stopBGM__5MSBgmFUlUl
    li      r3, 0x0
    bl      setBossNotDamagedFlag__10MSMainProcFb
branch_0x800749e0:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1
    bne-    branch_0x80074a2c
    lwz     r28, 0x18c(r31)
    lwz     r0, 0xc(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80074a2c
    lwz     r3, 0x8(r28)
    li      r4, 0x8
    bl      setBckFromIndex__6MActorFi
    lwz     r4, 0x4(r28)
    lwz     r3, 0x8(r28)
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r3)
    addi    r3, r4, 0x20
    addi    r4, r5, 0x20
    bl      PSMTXCopy
    li      r0, 0x1
    stw     r0, 0xc(r28)
branch_0x80074a2c:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xc
    bne-    branch_0x80074aa4
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x97
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0x510
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x99
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0x510
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x98
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0x510
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80074aa4:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x12
    bne-    branch_0x80074ad0
    lwz     r3, -0x7108(r13)
    li      r4, 0x12
    lfs     f1, -0x6a98(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x1
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80074ad0:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0xea
    bne-    branch_0x80074afc
    lwz     r3, -0x7108(r13)
    li      r4, 0x13
    lfs     f1, -0x6a98(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x2
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80074afc:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1fe
    bne-    branch_0x80074b28
    lwz     r3, -0x7108(r13)
    li      r4, 0x14
    lfs     f1, -0x6a98(rtoc)
    bl      startShake__12TCameraShakeF16EnumCamShakeModef
    addi    r3, r31, 0x0
    addi    r5, r31, 0x10
    li      r4, 0x1
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80074b28:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x1fe
    beq-    branch_0x80074b3c
    cmpwi   r0, 0xec
    bne-    branch_0x80074b88
branch_0x80074b3c:
    addi    r3, r31, 0x0
    addi    r5, sp, 0x130
    li      r4, 0x2f
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f1, -0x6a5c(rtoc)
    addi    r4, sp, 0x12c
    lfs     f0, 0x134(sp)
    lwz     r3, gpMap(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x130(sp)
    lfs     f3, 0x138(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x134(sp)
    addi    r5, sp, 0x130
    li      r4, 0x9a
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x80074b88:
    lwz     r0, 0x20(r30)
    cmpwi   r0, 0x28
    bne-    branch_0x80074bdc
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x9c
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0x150
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x9d
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r5, r5, 0xc0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80074bdc:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80074d70
    li      r28, 0x0
    li      r29, 0x0
branch_0x80074bfc:
    addi    r0, r29, 0x150
    lwzx    r3, r31, r0
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    addi    r29, r29, 0x4
    blt+    branch_0x80074bfc
    lwz     r3, 0x74(r31)
    li      r4, 0x4
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x10(r3)
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x80074c78
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r4, 0x8007
    stw     r0, -0x6e0c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbd0
    addi    r4, r4, 0x3700
    subi    r3, r13, 0x6e0c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x80074c78:
    subi    r4, r13, 0x6e0c
    cmplwi  r4, 0x0
    beq-    branch_0x80074cac
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80074cac
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80074cac:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    beq-    branch_0x80074cc4
    cmplwi  r0, 0x3b
    bne-    branch_0x80074d68
branch_0x80074cc4:
    lis     r3, 0x8001
    addi    r3, r3, 0x2a
    bl      startBGM__5MSBgmFUl
    lwz     r3, -0x70cc(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80074d48
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, sp, 0x120
    lfs     f0, -0x6a58(rtoc)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0xfc(sp)
    stw     r0, 0x100(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x104(sp)
    lfs     f1, 0x100(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x100(sp)
    lwz     r0, 0xfc(sp)
    lwz     r5, 0x100(sp)
    stw     r0, 0x120(sp)
    lwz     r0, 0x104(sp)
    stw     r5, 0x124(sp)
    stw     r0, 0x128(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, -0x1
    bne-    branch_0x80074d48
    lfs     f1, -0x6a88(rtoc)
    li      r3, 0x1
    li      r4, 0x0
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    b       branch_0x80074d68

branch_0x80074d48:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3b
    bne-    branch_0x80074d68
    lwz     r3, -0x5fa8(r13)
    cmplwi  r3, 0x0
    beq-    branch_0x80074d68
    bl      setBgmVolumeForce__15MSStageCubeFadeFv
branch_0x80074d68:
    li      r3, 0x1
    b       branch_0x80074d74

branch_0x80074d70:
    li      r3, 0x0
branch_0x80074d74:
    lwz     r0, 0x15c(sp)
    lwz     r31, 0x154(sp)
    lwz     r30, 0x150(sp)
    mtlr    r0
    lwz     r29, 0x14c(sp)
    lwz     r28, 0x148(sp)
    addi    sp, sp, 0x158
    blr


.globl theNerve__18TNerveBGBeakDamageFv
theNerve__18TNerveBGBeakDamageFv: # 0x80074d94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x80074de4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r4, 0x8007
    stw     r0, -0x6e2c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xba0
    addi    r4, r4, 0x4df8
    subi    r3, r13, 0x6e2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x80074de4:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e2c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveBGBeakDamageFv
__dt__18TNerveBGBeakDamageFv: # 0x80074df8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80074e3c
    lis     r3, 0x803b
    addi    r0, r3, 0x2a78
    stw     r0, 0x0(r31)
    beq-    branch_0x80074e2c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80074e2c:
    extsh.  r0, r4
    ble-    branch_0x80074e3c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80074e3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveBGEyeDamageCFP24TSpineBase_10TLiveActor_
execute__17TNerveBGEyeDamageCFP24TSpineBase_10TLiveActor_: # 0x80074e54
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb0(sp)
    stw     r31, 0xac(sp)
    stw     r30, 0xa8(sp)
    stw     r29, 0xa4(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80074fe8
    lwz     r29, 0x164(r31)
    lwz     r3, 0x64(r29)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x5
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r29)
    cmplw   r0, r3
    beq-    branch_0x80074eb4
    stw     r0, 0x58(r29)
    stw     r3, 0x54(r29)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r29)
branch_0x80074eb4:
    lwz     r3, 0x74(r31)
    li      r4, 0x5
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80074f04
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x9c(sp)
    stw     r0, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80074f04:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80074f28
    li      r4, 0x0
    b       branch_0x80074f2c

branch_0x80074f28:
    lwz     r4, 0x14(r3)
branch_0x80074f2c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    lwz     r3, 0x160(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80074fb8
    lwz     r0, 0x168(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x80074fb8
    addi    r3, r31, 0x0
    li      r4, 0x2
    bl      changeAttackMode__10TBossGessoFi
    li      r29, 0x0
    addi    r30, r29, 0x0
branch_0x80074f64:
    addi    r0, r30, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80074fa8
    cmpwi   r4, 0x6
    beq-    branch_0x80074f8c
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80074f94
branch_0x80074f8c:
    li      r0, 0x1
    b       branch_0x80074f98

branch_0x80074f94:
    li      r0, 0x0
branch_0x80074f98:
    cmpwi   r0, 0x0
    bne-    branch_0x80074fa8
    li      r4, 0x1
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80074fa8:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r30, r30, 0x4
    blt+    branch_0x80074f64
branch_0x80074fb8:
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a7c(rtoc)
    stfs    f0, 0x10(r3)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xc(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
branch_0x80074fe8:
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x80075030
    lwz     r3, 0x74(r31)
    li      r4, 0x2
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
    li      r3, 0x1
    b       branch_0x800750dc

branch_0x80075030:
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x139
    addi    r5, r5, 0x150
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x139
    addi    r5, r5, 0xc0
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lha     r0, 0x1ae(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x800750bc
    li      r0, 0x78
    sth     r0, 0x1ae(r31)
    li      r4, 0x2912
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x800750bc
    addi    r4, r31, 0x10
    li      r3, 0x2912
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x800750bc:
    lbz     r3, 0x193(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800750d8
    subi    r0, r3, 0x1
    stb     r0, 0x193(r31)
    li      r0, 0x5
    stb     r0, 0x194(r31)
branch_0x800750d8:
    li      r3, 0x0
branch_0x800750dc:
    lwz     r0, 0xb4(sp)
    lwz     r31, 0xac(sp)
    lwz     r30, 0xa8(sp)
    mtlr    r0
    lwz     r29, 0xa4(sp)
    addi    sp, sp, 0xb0
    blr


.globl theNerve__17TNerveBGEyeDamageFv
theNerve__17TNerveBGEyeDamageFv: # 0x800750f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e38(r13)
    extsb.  r0, r0
    bne-    branch_0x80075148
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e34(r13)
    addi    r0, r3, 0x2a88
    lis     r4, 0x8007
    stw     r0, -0x6e34(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xb94
    addi    r4, r4, 0x515c
    subi    r3, r13, 0x6e34
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e38(r13)
branch_0x80075148:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e34
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__17TNerveBGEyeDamageFv
__dt__17TNerveBGEyeDamageFv: # 0x8007515c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x800751a0
    lis     r3, 0x803b
    addi    r0, r3, 0x2a88
    stw     r0, 0x0(r31)
    beq-    branch_0x80075190
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80075190:
    extsh.  r0, r4
    ble-    branch_0x800751a0
    mr      r3, r31
    bl      __dl__FPv
branch_0x800751a0:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__12TNerveBGWaitCFP24TSpineBase_10TLiveActor_
execute__12TNerveBGWaitCFP24TSpineBase_10TLiveActor_: # 0x800751b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    stw     r30, 0x98(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800754c8
    lbz     r0, 0x13c(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x800752a4
    lwz     r30, 0x164(r31)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x1b
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x80075220
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r30)
branch_0x80075220:
    lwz     r3, 0x74(r31)
    li      r4, 0x1b
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80075270
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80075270:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80075294
    li      r4, 0x0
    b       branch_0x80075298

branch_0x80075294:
    lwz     r4, 0x6c(r3)
branch_0x80075298:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x80075420

branch_0x800752a4:
    cmplwi  r0, 0x2
    bne-    branch_0x80075368
    lwz     r30, 0x164(r31)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x1a
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x800752e4
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r30)
branch_0x800752e4:
    lwz     r3, 0x74(r31)
    li      r4, 0x1a
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x80075334
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x80075334:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80075358
    li      r4, 0x0
    b       branch_0x8007535c

branch_0x80075358:
    lwz     r4, 0x68(r3)
branch_0x8007535c:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
    b       branch_0x80075420

branch_0x80075368:
    lwz     r30, 0x164(r31)
    lwz     r3, 0x64(r30)
    lwz     r3, 0x78(r3)
    bl      getMActorAnmData__13TMActorKeeperCFv
    lwz     r3, 0x2c(r3)
    li      r4, 0x19
    bl      getAnmPtr__39MActorAnmDataEach_18J3DAnmTransformKey_CFi
    lwz     r0, 0x54(r30)
    cmplw   r0, r3
    beq-    branch_0x800753a0
    stw     r0, 0x58(r30)
    stw     r3, 0x54(r30)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x50(r30)
branch_0x800753a0:
    lwz     r3, 0x74(r31)
    li      r4, 0x19
    lwz     r3, 0xc(r3)
    bl      setFrameCtrl__35MActorAnmEach_18J3DAnmTransformKey_Fi
    lwz     r3, 0x74(r31)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x800753f0
    lha     r3, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x6a90(rtoc)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6a94(rtoc)
    stw     r3, 0x94(sp)
    stw     r0, 0x90(sp)
    lfd     f0, 0x90(sp)
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x188(r31)
branch_0x800753f0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xf8(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80075414
    li      r4, 0x0
    b       branch_0x80075418

branch_0x80075414:
    lwz     r4, 0x64(r3)
branch_0x80075418:
    mr      r3, r31
    bl      setAnmSound__10TLiveActorFPCc
branch_0x80075420:
    lwz     r3, MarioHitActor(r13)
    lfs     f0, -0x6a88(rtoc)
    stw     r3, 0x6c(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0x70(sp)
    stfs    f0, 0x74(sp)
    stfs    f0, 0x78(sp)
    beq-    branch_0x80075458
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x70(sp)
    stfs    f1, 0x74(sp)
    stfs    f2, 0x78(sp)
branch_0x80075458:
    lwz     r3, 0x6c(sp)
    li      r0, 0x0
    li      r4, 0x2
    stw     r3, 0xf4(r31)
    lwz     r5, 0x70(sp)
    lwz     r3, 0x74(sp)
    stw     r5, 0xf8(r31)
    stw     r3, 0xfc(r31)
    lwz     r3, 0x78(sp)
    stw     r3, 0x100(r31)
    lwz     r3, 0x6c(sp)
    stw     r3, 0x104(r31)
    lwz     r5, 0x70(sp)
    lwz     r3, 0x74(sp)
    stw     r5, 0x108(r31)
    stw     r3, 0x10c(r31)
    lwz     r3, 0x78(sp)
    stw     r3, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r3, 0x74(r31)
    bl      setBtpFromIndex__6MActorFi
    lwz     r3, 0x74(r31)
    li      r4, 0x3
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x10(r3)
    lwz     r3, 0x74(r31)
    bl      resetDL__6MActorFv
branch_0x800754c8:
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x84(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x7c(sp)
    lfs     f3, 0x84(sp)
    lfs     f0, 0x80(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6a88(rtoc)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x80075548
    b       branch_0x8007556c

branch_0x80075548:
    frsqrte f3, f4
    lfs     f2, -0x6a64(rtoc)
    lfs     f0, -0x6a60(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8007556c:
    lfs     f0, -0x6a54(rtoc)
    fcmpo   cr0, f4, f0
    ble-    branch_0x80075580
    lfs     f2, -0x6a98(rtoc)
    b       branch_0x80075588

branch_0x80075580:
    lfs     f0, -0x6a50(rtoc)
    fdivs   f2, f0, f4
branch_0x80075588:
    lfs     f0, 0x144(r31)
    mr      r3, r31
    lfs     f1, -0x6a88(rtoc)
    fmuls   f2, f2, f0
    fmr     f3, f1
    bl      walkToCurPathNode__11TSpineEnemyFfff
    lwz     r0, 0xa4(sp)
    li      r3, 0x0
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl theNerve__12TNerveBGWaitFv
theNerve__12TNerveBGWaitFv: # 0x800755bc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x8007560c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e3c(r13)
    addi    r0, r3, 0x2a98
    lis     r4, 0x8007
    stw     r0, -0x6e3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xb88
    addi    r4, r4, 0x5620
    subi    r3, r13, 0x6e3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x8007560c:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6e3c
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TNerveBGWaitFv
__dt__12TNerveBGWaitFv: # 0x80075620
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80075664
    lis     r3, 0x803b
    addi    r0, r3, 0x2a98
    stw     r0, 0x0(r31)
    beq-    branch_0x80075654
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80075654:
    extsh.  r0, r4
    ble-    branch_0x80075664
    mr      r3, r31
    bl      __dl__FPv
branch_0x80075664:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__17TBossGessoManagerFR20JSUMemoryInputStream
load__17TBossGessoManagerFR20JSUMemoryInputStream: # 0x8007567c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    li      r3, 0x314
    stw     r29, 0x14(sp)
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x800756bc
    lis     r3, 0x8038
    subi    r4, r3, 0x5a90
    addi    r3, r29, 0x0
    bl      __ct__16TBossGessoParamsFPCc
branch_0x800756bc:
    stw     r29, 0x38(r30)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      load__13TEnemyManagerFR20JSUMemoryInputStream
    mr      r3, r30
    bl      initJParticle__17TBossGessoManagerFv
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl initJParticle__17TBossGessoManagerFv
initJParticle__17TBossGessoManagerFv: # 0x800756f0
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    subi    r3, r3, 0x2f98
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x8c
    lbz     r0, 0x8c(r3)
    lis     r3, 0x8038
    subi    r31, r3, 0x5ed8
    cmplwi  r0, 0x0
    bne-    branch_0x8007573c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x460
    li      r5, 0x8c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007573c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x8d
    lbz     r0, 0x8d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007576c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x488
    li      r5, 0x8d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007576c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x8e
    lbz     r0, 0x8e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007579c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4b0
    li      r5, 0x8e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007579c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x8f
    lbz     r0, 0x8f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800757cc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x4d8
    li      r5, 0x8f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800757cc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x90
    lbz     r0, 0x90(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800757fc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x500
    li      r5, 0x90
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800757fc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x91
    lbz     r0, 0x91(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007582c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x524
    li      r5, 0x91
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007582c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x92
    lbz     r0, 0x92(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007585c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x548
    li      r5, 0x92
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007585c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x93
    lbz     r0, 0x93(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007588c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x56c
    li      r5, 0x93
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007588c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x94
    lbz     r0, 0x94(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800758bc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x594
    li      r5, 0x94
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800758bc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x95
    lbz     r0, 0x95(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800758ec
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x5bc
    li      r5, 0x95
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800758ec:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x96
    lbz     r0, 0x96(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007591c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x5e4
    li      r5, 0x96
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007591c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x97
    lbz     r0, 0x97(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007594c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x60c
    li      r5, 0x97
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007594c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x98
    lbz     r0, 0x98(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x8007597c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x630
    li      r5, 0x98
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x8007597c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x99
    lbz     r0, 0x99(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800759ac
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x654
    li      r5, 0x99
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800759ac:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x9a
    lbz     r0, 0x9a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800759dc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x678
    li      r5, 0x9a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x800759dc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x9b
    lbz     r0, 0x9b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075a0c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x6a0
    li      r5, 0x9b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075a0c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x9c
    lbz     r0, 0x9c(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075a3c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x6c4
    li      r5, 0x9c
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075a3c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x9d
    lbz     r0, 0x9d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075a6c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x6ec
    li      r5, 0x9d
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075a6c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x9e
    lbz     r0, 0x9e(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075a9c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x714
    li      r5, 0x9e
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075a9c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x9f
    lbz     r0, 0x9f(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075acc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x73c
    li      r5, 0x9f
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075acc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0xa0
    lbz     r0, 0xa0(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075afc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x764
    li      r5, 0xa0
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075afc:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x138
    lbz     r0, 0x138(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075b2c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x788
    li      r5, 0x138
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075b2c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x139
    lbz     r0, 0x139(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075b5c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x7ac
    li      r5, 0x139
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075b5c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x13a
    lbz     r0, 0x13a(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075b8c
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x7d0
    li      r5, 0x13a
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075b8c:
    lis     r3, 0x8040
    subi    r3, r3, 0x2f98
    addi    r30, r3, 0x13b
    lbz     r0, 0x13b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075bbc
    lwz     r3, -0x5fe0(r13)
    addi    r4, r31, 0x7f4
    li      r5, 0x13b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r30)
branch_0x80075bbc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl createModelData__17TBossGessoManagerFv
createModelData__17TBossGessoManagerFv: # 0x80075bd4
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    subi    r4, r4, 0x5b98
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__17TBossGessoManagerFPCc
__ct__17TBossGessoManagerFPCc: # 0x80075c08
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__13TEnemyManagerFPCc
    lis     r3, 0x803b
    addi    r0, r3, 0x2aa8
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__10TBossGessoFUlPQ26JDrama9TGraphics
perform__10TBossGessoFUlPQ26JDrama9TGraphics: # 0x80075c44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2c8(sp)
    stfd    f31, 0x2c0(sp)
    stmw    r19, 0x28c(sp)
    rlwinm. r26, r4, 0, 30, 30
    addi    r29, r4, 0x0
    lis     r4, 0x8038
    addi    r31, r3, 0x0
    addi    r30, r5, 0x0
    subi    r28, r4, 0x5ed8
    beq-    branch_0x80075d34
    lwz     r3, 0x160(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80075cf0
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80075c9c
    li      r0, 0x1
    b       branch_0x80075ce8

branch_0x80075c9c:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80075cb4
    li      r0, 0x1
    b       branch_0x80075ce8

branch_0x80075cb4:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80075ccc
    li      r0, 0x1
    b       branch_0x80075ce8

branch_0x80075ccc:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80075ce4
    li      r0, 0x1
    b       branch_0x80075ce8

branch_0x80075ce4:
    li      r0, 0x0
branch_0x80075ce8:
    cmpwi   r0, 0x0
    beq-    branch_0x80075d34
branch_0x80075cf0:
    lwz     r3, MarioActor(r13)
    lfs     f0, -0x6a4c(rtoc)
    lfs     f1, 0x8c(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80075d34
    lwz     r3, gpMSound(r13)
    li      r4, 0x208d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80075d34
    addi    r4, r31, 0x10
    li      r3, 0x208d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80075d34:
    clrlwi. r25, r29, 31
    beq-    branch_0x80075e70
    lbz     r0, 0x1a0(r31)
    extsb.  r0, r0
    bne-    branch_0x80075e10
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80075d60
    li      r0, 0x1
    b       branch_0x80075d64

branch_0x80075d60:
    li      r0, 0x0
branch_0x80075d64:
    cmpwi   r0, 0x0
    bne-    branch_0x80075e10
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x218(sp)
    stw     r0, 0x21c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x220(sp)
    lfs     f1, 0x218(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x218(sp)
    lfs     f1, 0x21c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x21c(sp)
    lfs     f1, 0x220(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x220(sp)
    lfs     f1, 0x218(sp)
    lfs     f3, 0x220(sp)
    lfs     f0, 0x21c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6a48(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80075e10
    lwz     r3, 0x19c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x19c(r31)
    lwz     r0, 0x19c(r31)
    cmpwi   r0, 0x4b0
    blt-    branch_0x80075e10
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      showMessage__10TBossGessoFUl
    li      r0, 0x1
    stb     r0, 0x1a0(r31)
branch_0x80075e10:
    lwz     r4, 0x160(r31)
    lwz     r0, 0x68(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80075e48
    lwz     r3, 0x16c(r31)
    srawi   r0, r3, 2
    addze   r0, r0
    slwi    r0, r0, 2
    subfc.  r0, r0, r3
    bne-    branch_0x80075e48
    addi    r3, r31, 0x0
    addi    r5, r4, 0x10
    li      r4, 0x1
    bl      rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
branch_0x80075e48:
    lha     r3, 0x1ac(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80075e5c
    subi    r0, r3, 0x1
    sth     r0, 0x1ac(r31)
branch_0x80075e5c:
    lha     r3, 0x1ae(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x80075e70
    subi    r0, r3, 0x1
    sth     r0, 0x1ae(r31)
branch_0x80075e70:
    lwz     r0, 0x168(r31)
    cmpwi   r0, 0x6
    bne-    branch_0x80075f48
    cmplwi  r26, 0x0
    beq-    branch_0x80075f34
    lwz     r4, -0x5db8(r13)
    addi    r3, r28, 0x818
    lwz     r20, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r20)
    addi    r4, r3, 0x0
    addi    r3, r20, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r28, 0x818
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    bne-    branch_0x80075ec8
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80075f34

branch_0x80075ec8:
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80075f34
    lfs     f0, -0x6a44(rtoc)
    lfs     f1, -0x6a40(rtoc)
    stfs    f0, 0x20c(sp)
    lfs     f0, -0x6a3c(rtoc)
    stfs    f1, 0x210(sp)
    stfs    f0, 0x214(sp)
    lwz     r4, 0x24(r3)
    lwz     r3, 0x20c(sp)
    lwz     r0, 0x210(sp)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x214(sp)
    stw     r0, 0x8(r4)
    lfs     f0, -0x6a38(rtoc)
    stfs    f0, 0x20c(sp)
    lwz     r4, 0x150(r31)
    lwz     r3, 0x20c(sp)
    lwz     r4, 0x24(r4)
    lwz     r0, 0x210(sp)
    stw     r3, 0x28(r4)
    stw     r0, 0x2c(r4)
    lwz     r0, 0x214(sp)
    stw     r0, 0x30(r4)
branch_0x80075f34:
    lwz     r3, 0x150(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    b       branch_0x800765f8

branch_0x80075f48:
    rlwinm. r27, r29, 0, 22, 22
    beq-    branch_0x80076014
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x80075f94
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r4, 0x8007
    stw     r0, -0x6e2c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xba0
    addi    r4, r4, 0x4df8
    subi    r3, r13, 0x6e2c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x80075f94:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6e2c
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80075fac
    b       branch_0x80075fb0

branch_0x80075fac:
    lwz     r3, 0x1c(r4)
branch_0x80075fb0:
    cmplw   r3, r0
    bne-    branch_0x80075fd4
    lwz     r3, 0x74(r31)
    addi    r5, r30, 0x0
    addi    r4, r31, 0x10
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    b       branch_0x80075fe4

branch_0x80075fd4:
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x80075fe4:
    lwz     r3, 0x74(r31)
    addi    r5, r31, 0x190
    li      r4, 0x0
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
branch_0x80076014:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__11TSpineEnemyFUlPQ26JDrama9TGraphics
    lwz     r3, 0x180(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r0, 0xf0(r31)
    clrlwi. r0, r0, 31
    bne-    branch_0x800765f8
    cmplwi  r26, 0x0
    beq-    branch_0x80076080
    lbz     r0, 0x194(r31)
    extsb.  r0, r0
    ble-    branch_0x80076080
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    mr      r7, r31
    lwz     r3, gpMarioParticleManager(r13)
    li      r4, 0x13b
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r3, 0x194(r31)
    subi    r0, r3, 0x1
    stb     r0, 0x194(r31)
branch_0x80076080:
    lwz     r3, 0x18c(r31)
    lwz     r0, 0xc(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800760bc
    cmplwi  r26, 0x0
    lwz     r20, 0x4(r3)
    beq-    branch_0x800760c0
    lwz     r3, 0x0(r3)
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lwz     r4, 0x4(r20)
    addi    r3, r3, 0x510
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    b       branch_0x800760c0

branch_0x800760bc:
    lwz     r20, 0x8(r3)
branch_0x800760c0:
    addi    r3, r20, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      perform__6MActorFUlPQ26JDrama9TGraphics
    rlwinm. r0, r29, 0, 29, 29
    beq-    branch_0x800761e4
    lfs     f0, -0x6a88(rtoc)
    li      r4, 0x0
    li      r0, 0x1
    stfs    f0, 0x268(sp)
    addi    r3, sp, 0x240
    stfs    f0, 0x26c(sp)
    stfs    f0, 0x270(sp)
    stfs    f0, 0x274(sp)
    stb     r4, 0x278(sp)
    stb     r0, 0x279(sp)
    stw     r4, 0x27c(sp)
    stfs    f0, 0x25c(sp)
    stfs    f0, 0x260(sp)
    stfs    f0, 0x264(sp)
    lwz     r4, 0x74(r31)
    lwz     r4, 0x4(r4)
    lwz     r4, 0x58(r4)
    lfs     f0, 0x3c(r4)
    addi    r5, r4, 0x30
    stfs    f0, 0x250(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x254(sp)
    lfs     f0, 0x5c(r4)
    stfs    f0, 0x258(sp)
    lwz     r0, 0x250(sp)
    lwz     r4, 0x254(sp)
    stw     r0, 0x25c(sp)
    lwz     r0, 0x258(sp)
    stw     r4, 0x260(sp)
    stw     r0, 0x264(sp)
    lfs     f2, 0x20(r5)
    lfs     f1, 0x10(r5)
    lfs     f0, 0x0(r5)
    stfs    f0, 0x240(sp)
    stfs    f1, 0x244(sp)
    stfs    f2, 0x248(sp)
    lfs     f2, 0x28(r5)
    lfs     f1, 0x18(r5)
    lfs     f0, 0x8(r5)
    stfs    f0, 0x234(sp)
    stfs    f1, 0x238(sp)
    stfs    f2, 0x23c(sp)
    bl      PSVECMag
    stfs    f1, 0x268(sp)
    addi    r3, sp, 0x234
    bl      PSVECMag
    stfs    f1, 0x26c(sp)
    mr      r3, r31
    lfs     f1, 0x268(sp)
    lfs     f0, 0xb8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x268(sp)
    lfs     f1, 0x26c(sp)
    lfs     f0, 0xb8(r31)
    fmuls   f0, f1, f0
    stfs    f0, 0x26c(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe0(r12)
    mtlr    r12
    blrl
    stb     r3, 0x278(sp)
    addi    r4, sp, 0x25c
    lfs     f0, 0x34(r31)
    stfs    f0, 0x270(sp)
    lwz     r5, 0x4c(r31)
    lwz     r3, -0x6100(r13)
    bl      request__19TMBindShadowManagerFRC20TCircleShadowRequestUl
branch_0x800761e4:
    lwz     r3, 0x160(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x170(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x174(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    lwz     r3, 0x184(r31)
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    cmplwi  r25, 0x0
    beq-    branch_0x8007626c
    lfs     f0, 0x188(r31)
    lwz     r3, 0x164(r31)
    fneg    f0, f0
    lfs     f1, 0x50(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x50(r3)
    lfs     f1, 0x50(r3)
    lfs     f0, -0x6a88(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8007625c
    stfs    f0, 0x50(r3)
    b       branch_0x8007626c

branch_0x8007625c:
    lfs     f0, -0x6a98(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007626c
    stfs    f0, 0x50(r3)
branch_0x8007626c:
    lbz     r0, 0x17c(r31)
    extsb.  r0, r0
    beq-    branch_0x800762bc
    cmplwi  r26, 0x0
    beq-    branch_0x800762a4
    lwz     r4, 0x74(r31)
    lwz     r3, 0x178(r31)
    lwz     r4, 0x4(r4)
    lwz     r5, 0x4(r3)
    addi    r3, r4, 0x20
    addi    r4, r5, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x178(r31)
    bl      calcAnm__6MActorFv
branch_0x800762a4:
    cmplwi  r27, 0x0
    beq-    branch_0x800762bc
    lwz     r4, 0x178(r31)
    lwz     r3, gpPollution(r13)
    lwz     r4, 0x4(r4)
    bl      stampModel__17TPollutionManagerFP8J3DModel
branch_0x800762bc:
    cmplwi  r26, 0x0
    beq-    branch_0x800763f0
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80076384
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x800762fc
    lwz     r4, 0x24(r3)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x8(r4)
branch_0x800762fc:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80076328
    lwz     r4, 0x24(r3)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x8(r4)
branch_0x80076328:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80076354
    lwz     r4, 0x24(r3)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x8(r4)
branch_0x80076354:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x800763f0
    lwz     r4, 0x24(r3)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x18(r31)
    stw     r0, 0x8(r4)
    b       branch_0x800763f0

branch_0x80076384:
    li      r22, 0x0
    li      r20, 0x0
branch_0x8007638c:
    addi    r21, r20, 0x150
    add     r21, r31, r21
    lwz     r3, 0x0(r21)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x800763e0
    add     r3, r28, r20
    lwz     r4, 0x290(r3)
    addi    r3, r31, 0x0
    addi    r5, sp, 0x228
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    cmpwi   r3, 0x0
    blt-    branch_0x800763e0
    lwz     r4, 0x0(r21)
    lwz     r3, 0x228(sp)
    lwz     r4, 0x24(r4)
    lwz     r0, 0x22c(sp)
    stw     r3, 0x0(r4)
    stw     r0, 0x4(r4)
    lwz     r0, 0x230(sp)
    stw     r0, 0x8(r4)
branch_0x800763e0:
    addi    r22, r22, 0x1
    cmpwi   r22, 0x4
    addi    r20, r20, 0x4
    blt+    branch_0x8007638c
branch_0x800763f0:
    lis     r6, 0x803b
    lis     r5, 0x803b
    lis     r4, 0x8007
    lis     r3, 0x803f
    subi    r22, r6, 0x48f4
    addi    r23, r5, 0x2a78
    addi    r24, r4, 0x4df8
    addi    r28, r3, 0xba0
    li      r21, 0x0
    li      r20, 0x0
branch_0x80076418:
    cmplwi  r27, 0x0
    beq-    branch_0x800764bc
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007644c
    stw     r22, -0x6e2c(r13)
    subi    r3, r13, 0x6e2c
    addi    r4, r24, 0x0
    stw     r23, -0x6e2c(r13)
    addi    r5, r28, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007644c:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6e2c
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80076464
    b       branch_0x80076468

branch_0x80076464:
    lwz     r3, 0x1c(r4)
branch_0x80076468:
    cmplw   r3, r0
    bne-    branch_0x800764a4
    addi    r19, r20, 0x150
    add     r19, r31, r19
    lwz     r3, 0x0(r19)
    lwz     r3, 0x2c(r3)
    bl      offMakeDL__6MActorFv
    lwz     r3, 0x0(r19)
    addi    r5, r30, 0x0
    addi    r4, r31, 0x10
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_AddDamageFogEffect__FP12J3DModelDataRCQ29JGeometry8TVec3_f_PQ26JDrama9TGraphics
    b       branch_0x800764bc

branch_0x800764a4:
    addi    r0, r20, 0x150
    lwzx    r3, r31, r0
    lwz     r3, 0x2c(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    bl      SMS_ResetDamageFogEffect__FP12J3DModelData
branch_0x800764bc:
    addi    r0, r20, 0x150
    lwzx    r3, r31, r0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      testPerform__Q26JDrama8TViewObjFUlPQ26JDrama9TGraphics
    addi    r21, r21, 0x1
    cmpwi   r21, 0x4
    addi    r20, r20, 0x4
    blt+    branch_0x80076418
    cmplwi  r26, 0x0
    beq-    branch_0x80076558
    lwz     r3, 0x74(r31)
    li      r4, 0xe
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x80076510
    lwz     r3, 0x74(r31)
    li      r4, 0xf
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80076558
branch_0x80076510:
    mr      r3, r31
    bl      lenFromToeToMario__10TBossGessoFv
    fmr     f31, f1
    lwz     r3, gpMSound(r13)
    li      r4, 0x215c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80076558
    fmr     f1, f31
    addi    r4, r31, 0x10
    li      r3, 0x215c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x80076558:
    cmplwi  r25, 0x0
    beq-    branch_0x800765f8
    lwz     r3, 0x160(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800765f8
    lbz     r0, 0x193(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x800765f8
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x8007659c
    cmpwi   r0, 0x6
    beq-    branch_0x8007659c
    cmpwi   r0, 0x3
    bne-    branch_0x800765a4
branch_0x8007659c:
    li      r0, 0x1
    b       branch_0x800765a8

branch_0x800765a4:
    li      r0, 0x0
branch_0x800765a8:
    cmpwi   r0, 0x0
    beq-    branch_0x800765e4
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x800765d0
    cmpwi   r0, 0x6
    beq-    branch_0x800765d0
    cmpwi   r0, 0x3
    bne-    branch_0x800765d8
branch_0x800765d0:
    li      r0, 0x1
    b       branch_0x800765dc

branch_0x800765d8:
    li      r0, 0x0
branch_0x800765dc:
    cmpwi   r0, 0x0
    bne-    branch_0x800765f8
branch_0x800765e4:
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x3
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x800765f8:
    lmw     r19, 0x28c(sp)
    lwz     r0, 0x2cc(sp)
    lfd     f31, 0x2c0(sp)
    addi    sp, sp, 0x2c8
    mtlr    r0
    blr


.globl calcRootMatrix__10TBossGessoFv
calcRootMatrix__10TBossGessoFv: # 0x80076610
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stw     r31, 0x7c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x78(sp)
    lbz     r0, -0x6e18(r13)
    extsb.  r0, r0
    bne-    branch_0x8007666c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e14(r13)
    addi    r0, r3, 0x2a48
    lis     r4, 0x8007
    stw     r0, -0x6e14(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbc4
    addi    r4, r4, 0x3ed4
    subi    r3, r13, 0x6e14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e18(r13)
branch_0x8007666c:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6e14
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80076684
    b       branch_0x80076688

branch_0x80076684:
    lwz     r3, 0x1c(r4)
branch_0x80076688:
    cmplw   r3, r0
    bne-    branch_0x800767b8
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x800767b8
    addi    r3, sp, 0x24
    addi    r4, r31, 0xac
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lwz     r4, 0x24(sp)
    mr      r3, r31
    lwz     r0, 0x28(sp)
    stw     r4, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x2c(sp)
    stw     r0, 0x38(r31)
    bl      getModel__10TLiveActorCFv
    lfs     f0, 0x38(r31)
    addi    r30, r3, 0x20
    lfs     f2, -0x6a34(rtoc)
    mr      r3, r30
    lfs     f1, 0x34(r31)
    fmuls   f0, f2, f0
    lfs     f4, 0x30(r31)
    fmuls   f1, f2, f1
    lfs     f3, 0x18(r31)
    fmuls   f2, f2, f4
    fctiwz  f4, f1
    lfs     f1, 0x10(r31)
    fctiwz  f5, f2
    lfs     f2, 0x14(r31)
    fctiwz  f0, f0
    stfd    f4, 0x68(sp)
    stfd    f5, 0x70(sp)
    lwz     r5, 0x6c(sp)
    stfd    f0, 0x60(sp)
    lwz     r4, 0x74(sp)
    lwz     r6, 0x64(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r0, -0x5eac(r13)
    li      r4, 0x4000
    lwz     r5, -0x5ea8(r13)
    addi    r3, r30, 0x0
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lwz     r4, -0x5ea4(r13)
    lfsx    f3, r5, r0
    mr      r5, r30
    lfsx    f4, r4, r0
    addi    r4, sp, 0x30
    lfs     f2, -0x6a98(rtoc)
    lfs     f1, -0x6a88(rtoc)
    fneg    f0, f3
    stfs    f2, 0x30(sp)
    stfs    f1, 0x34(sp)
    stfs    f1, 0x38(sp)
    stfs    f1, 0x3c(sp)
    stfs    f1, 0x40(sp)
    stfs    f4, 0x44(sp)
    stfs    f0, 0x48(sp)
    stfs    f1, 0x4c(sp)
    stfs    f1, 0x50(sp)
    stfs    f3, 0x54(sp)
    stfs    f4, 0x58(sp)
    stfs    f1, 0x5c(sp)
    bl      PSMTXConcat
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r31)
    lwz     r0, 0x28(r31)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r31)
    stw     r0, 0x1c(r3)
    b       branch_0x800767c0

branch_0x800767b8:
    mr      r3, r31
    bl      calcRootMatrix__11TSpineEnemyFv
branch_0x800767c0:
    lwz     r0, 0x84(sp)
    lwz     r31, 0x7c(sp)
    lwz     r30, 0x78(sp)
    mtlr    r0
    addi    sp, sp, 0x80
    blr


.globl reset__10TBossGessoFv
reset__10TBossGessoFv: # 0x800767d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    addi    r27, r3, 0x0
    li      r28, 0x0
    li      r31, 0x0
    li      r30, 0x1
branch_0x800767f8:
    addi    r29, r31, 0x150
    add     r29, r27, r29
    lwz     r3, 0x0(r29)
    addi    r4, r27, 0x10
    bl      resetAllNodes__11TBGTentacleFRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x0(r29)
    addi    r28, r28, 0x1
    cmpwi   r28, 0x4
    lwz     r3, 0x24(r3)
    addi    r31, r31, 0x4
    stw     r30, 0x24(r3)
    blt+    branch_0x800767f8
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x3
    bne-    branch_0x80076854
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80076854
    addi    r3, r27, 0x0
    li      r4, 0x6
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80076860

branch_0x80076854:
    addi    r3, r27, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
branch_0x80076860:
    mr      r3, r27
    lwz     r12, 0x0(r27)
    lwz     r12, 0xc0(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x74(r27)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl moveObject__10TBossGessoFv
moveObject__10TBossGessoFv: # 0x800768a0
    mflr    r0
    lis     r4, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stw     r31, 0xd4(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xd0(sp)
    addi    r30, r4, 0xb88
    stw     r29, 0xcc(sp)
    bl      moveObject__10TLiveActorFv
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x800768e4
    b       branch_0x800768e8

branch_0x800768e4:
    lwz     r29, 0x1c(r3)
branch_0x800768e8:
    lbz     r0, -0x6e18(r13)
    extsb.  r0, r0
    bne-    branch_0x80076928
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e14(r13)
    addi    r0, r3, 0x2a48
    lis     r3, 0x8007
    stw     r0, -0x6e14(r13)
    addi    r4, r3, 0x3ed4
    subi    r3, r13, 0x6e14
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e18(r13)
branch_0x80076928:
    subi    r0, r13, 0x6e14
    cmplw   r29, r0
    beq-    branch_0x80076f38
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80076948
    b       branch_0x8007694c

branch_0x80076948:
    lwz     r29, 0x1c(r3)
branch_0x8007694c:
    lbz     r0, -0x6e08(r13)
    extsb.  r0, r0
    bne-    branch_0x8007698c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e04(r13)
    addi    r0, r3, 0x2a28
    lis     r3, 0x8007
    stw     r0, -0x6e04(r13)
    addi    r4, r3, 0x336c
    subi    r3, r13, 0x6e04
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e08(r13)
branch_0x8007698c:
    subi    r0, r13, 0x6e04
    cmplw   r29, r0
    beq-    branch_0x80076f38
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x800769ac
    b       branch_0x800769b0

branch_0x800769ac:
    lwz     r29, 0x1c(r3)
branch_0x800769b0:
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x800769f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r3, 0x8007
    stw     r0, -0x6e0c(r13)
    addi    r4, r3, 0x3700
    subi    r3, r13, 0x6e0c
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x800769f0:
    subi    r0, r13, 0x6e0c
    cmplw   r29, r0
    beq-    branch_0x80076f38
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80076a10
    b       branch_0x80076a14

branch_0x80076a10:
    lwz     r29, 0x1c(r3)
branch_0x80076a14:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x80076a54
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x80076a54:
    subi    r0, r13, 0x6e2c
    cmplw   r29, r0
    beq-    branch_0x80076f38
    lwz     r0, 0x168(r31)
    cmplwi  r0, 0x7
    bgt-    branch_0x80076cec
    lis     r3, 0x803b
    addi    r3, r3, 0x29e8
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x80076A84:		# jumptable 80076A80 case 0
    mr      r3, r31
    bl      doAttackSingle__10TBossGessoFv
    b       branch_0x80076cec

branch_0x80076A90:		# jumptable 80076A80 case 1
mr	  r3, r31
bl	  doAttackDouble__10TBossGessoFv # TBossGesso::doAttackDouble((void))
b	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076A9C:		# jumptable 80076A80 case 4
mr	  r3, r31
bl	  doAttackSkipRope__10TBossGessoFv # TBossGesso::doAttackSkipRope((void))
b	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076AA8:		# jumptable 80076A80 case 2
mr	  r3, r31
bl	  doAttackUnison__10TBossGessoFv # TBossGesso::doAttackUnison((void))
b	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076AB4:		# jumptable 80076A80 case 5
mr	  r3, r31
bl	  doAttackShoot__10TBossGessoFv	# TBossGesso::doAttackShoot((void))
b	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076AC0:		# jumptable 80076A80 case 3
lwz	  r3, 0x160(r31)
lwz	  r0, 0x68(r3)
cmplwi	  r0, 0
beq	  branch_0x80076AE0
addi	  r3, r31, 0
li	  r4, 4
bl	  changeAttackMode__10TBossGessoFi # TBossGesso::changeAttackMode((int))
b	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076AE0:
mr	  r3, r31
lwz	  r12, 0(r31)
lwz	  r12, 0x108(r12)
mtlr	  r12
blrl
lfs	  f30, 0x2FC(r3)
bl	  SMS_GetMarioPos__Fv #	SMS_GetMarioPos(void)
lwz	  r5, 0(r3)
addi	  r4, r31, 0x10
lwz	  r0, 4(r3)
stw	  r5, 0x58(r1)
stw	  r0, 0x5C(r1)
lwz	  r0, 8(r3)
addi	  r3, r1, 0x58
stw	  r0, 0x60(r1)
bl	  sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
addi	  r3, r1, 0x58
bl	  MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
fmr	  f31, f1
lfs	  f0, -0x6A30(r2)
lfs	  f1, 0x34(r31)
fsubs	  f2, f31, f0
fadds	  f3, f0, f31
bl	  MsWrap_f___Ffff_80076f5c
fsubs	  f1, f31, f1
lfs	  f0, -0x6A64(r2)
fmuls	  f0, f0, f30
fabs	  f1, f1
fcmpo	  cr0, f1, f0
bge	  branch_0x80076B60
li	  r0, 1
b	  branch_0x80076B64

branch_0x80076B60:
li	  r0, 0

branch_0x80076B64:
cmpwi	  r0, 0
beq	  def_80076A80	# jumptable 80076A80 default case
lwz	  r5, MarioHitActorPos(r13)
mr	  r3, r31
lwz	  r4, 0(r5)
lwz	  r0, 4(r5)
stw	  r4, 0xAC(r1)
stw	  r0, 0xB0(r1)
lwz	  r0, 8(r5)
stw	  r0, 0xB4(r1)
lfs	  f1, 0xAC(r1)
lfs	  f0, 0x10(r31)
fsubs	  f0, f1, f0
stfs	  f0, 0xAC(r1)
lfs	  f1, 0xB0(r1)
lfs	  f0, 0x14(r31)
fsubs	  f0, f1, f0
stfs	  f0, 0xB0(r1)
lfs	  f1, 0xB4(r1)
lfs	  f0, 0x18(r31)
fsubs	  f0, f1, f0
stfs	  f0, 0xB4(r1)
lwz	  r12, 0(r31)
lwz	  r12, 0x108(r12)
mtlr	  r12
blrl
lfs	  f1, 0xAC(r1)
lfs	  f0, 0xB0(r1)
fmuls	  f1, f1, f1
lfs	  f2, 0xB4(r1)
fmuls	  f0, f0, f0
lfs	  f3, 0x248(r3)
fmuls	  f2, f2, f2
fadds	  f0, f1, f0
fmuls	  f3, f3, f3
fadds	  f0, f2, f0
fcmpo	  cr0, f3, f0
blt	  branch_0x80076C54
lwz	  r3, 0x15C(r31)
lwz	  r0, 0x10(r3)
cmpwi	  r0, 4
beq	  branch_0x80076C14
cmpwi	  r0, 6
bne	  branch_0x80076C1C

branch_0x80076C14:
li	  r0, 1
b	  branch_0x80076C20

branch_0x80076C1C:
li	  r0, 0

branch_0x80076C20:
cmpwi	  r0, 0
beq	  def_80076A80	# jumptable 80076A80 default case
lwz	  r3, 0x154(r31)
lwz	  r0, 0x10(r3)
cmpwi	  r0, 4
beq	  branch_0x80076C40
cmpwi	  r0, 6
bne	  branch_0x80076C48

branch_0x80076C40:
li	  r0, 1
b	  branch_0x80076C4C

branch_0x80076C48:
li	  r0, 0

branch_0x80076C4C:
cmpwi	  r0, 0
beq	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076C54:
addi	  r3, r31, 0
li	  r4, 0
bl	  changeAllTentacleState__10TBossGessoFi # TBossGesso::changeAllTentacleState((int))
addi	  r3, r31, 0
li	  r4, 0
bl	  changeAttackMode__10TBossGessoFi # TBossGesso::changeAttackMode((int))
b	  def_80076A80	# jumptable 80076A80 default case

branch_0x80076C70:		# jumptable 80076A80 case 7
lbz	  r0, -0x6E00(r13)
extsb.	  r0, r0
bne	  branch_0x80076CB0
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B29D8@h
stw	  r0, -0x6DFC(r13)
addi	  r0, r3, unk_803B29D8@l
lis	  r3, __dt__12TNerveBGRollFv@h # TNerveBGRoll::~TNerveBGRoll((void))
stw	  r0, -0x6DFC(r13)
addi	  r4, r3, __dt__12TNerveBGRollFv@l # TNerveBGRoll::~TNerveBGRoll((void))
addi	  r3, r13, -0x6DFC
addi	  r5, r30, 0x60
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E00(r13)

branch_0x80076CB0:
lwz	  r4, 0x8C(r31)
addi	  r0, r13, -0x6DFC
lwz	  r3, 0x14(r4)
cmplwi	  r3, 0
beq	  branch_0x80076CC8
b	  branch_0x80076CCC

branch_0x80076CC8:
lwz	  r3, 0x1C(r4)

branch_0x80076CCC:
cmplw	  r3, r0
beq	  def_80076A80	# jumptable 80076A80 default case
addi	  r3, r31, 0
li	  r4, 0
bl	  changeAllTentacleState__10TBossGessoFi # TBossGesso::changeAllTentacleState((int))
addi	  r3, r31, 0
li	  r4, 0
bl	  changeAttackMode__10TBossGessoFi # TBossGesso::changeAttackMode((int))

def_80076A80:		# jumptable 80076A80 default case
branch_0x80076cec:
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80076d00
    b       branch_0x80076d04

branch_0x80076d00:
    lwz     r29, 0x1c(r3)
branch_0x80076d04:
    lbz     r0, -0x6e28(r13)
    extsb.  r0, r0
    bne-    branch_0x80076d44
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e24(r13)
    addi    r0, r3, 0x2a68
    lis     r3, 0x8007
    stw     r0, -0x6e24(r13)
    addi    r4, r3, 0x4754
    subi    r3, r13, 0x6e24
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e28(r13)
branch_0x80076d44:
    subi    r0, r13, 0x6e24
    cmplw   r29, r0
    beq-    branch_0x80076f2c
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80076d64
    b       branch_0x80076d68

branch_0x80076d64:
    lwz     r29, 0x1c(r3)
branch_0x80076d68:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x80076da8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x80076da8:
    subi    r0, r13, 0x6e2c
    cmplw   r29, r0
    beq-    branch_0x80076f2c
    lwz     r3, 0x8c(r31)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x80076dc8
    b       branch_0x80076dcc

branch_0x80076dc8:
    lwz     r29, 0x1c(r3)
branch_0x80076dcc:
    lbz     r0, -0x6e20(r13)
    extsb.  r0, r0
    bne-    branch_0x80076e0c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e1c(r13)
    addi    r0, r3, 0x2a58
    lis     r3, 0x8007
    stw     r0, -0x6e1c(r13)
    addi    r4, r3, 0x4430
    subi    r3, r13, 0x6e1c
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e20(r13)
branch_0x80076e0c:
    subi    r0, r13, 0x6e1c
    cmplw   r29, r0
    beq-    branch_0x80076f2c
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80076e30
    li      r0, 0x1
    b       branch_0x80076e7c

branch_0x80076e30:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80076e48
    li      r0, 0x1
    b       branch_0x80076e7c

branch_0x80076e48:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80076e60
    li      r0, 0x1
    b       branch_0x80076e7c

branch_0x80076e60:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80076e78
    li      r0, 0x1
    b       branch_0x80076e7c

branch_0x80076e78:
    li      r0, 0x0
branch_0x80076e7c:
    cmpwi   r0, 0x0
    bne-    branch_0x80076e94
    lwz     r3, 0x160(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80076f2c
branch_0x80076e94:
    lbz     r0, -0x6e20(r13)
    extsb.  r0, r0
    bne-    branch_0x80076ed4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e1c(r13)
    addi    r0, r3, 0x2a58
    lis     r3, 0x8007
    stw     r0, -0x6e1c(r13)
    addi    r4, r3, 0x4430
    subi    r3, r13, 0x6e1c
    addi    r5, r30, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e20(r13)
branch_0x80076ed4:
    subi    r6, r13, 0x6e1c
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x80076f2c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x80076f20
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x80076f20
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x80076f20:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x80076f2c:
    lwz     r3, 0x16c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x16c(r31)
branch_0x80076f38:
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    lwz     r29, 0xcc(sp)
    addi    sp, sp, 0xe8
    blr


.globl MsWrap_f___Ffff_80076f5c
MsWrap_f___Ffff_80076f5c: # 0x80076f5c
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x80076f98
    fmr     f1, f2
    blr
    b       branch_0x80076f78

branch_0x80076f74:
    fsubs   f1, f1, f0
branch_0x80076f78:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x80076f74
    b       branch_0x80076f8c

branch_0x80076f88:
    fadds   f1, f1, f0
branch_0x80076f8c:
    fcmpo   cr0, f1, f2
    blt+    branch_0x80076f88
    blr

branch_0x80076f98:
    fsubs   f0, f3, f2
    b       branch_0x80076f78
    blr


.globl MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_: # 0x80076fa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    lfs     f2, -0x6a88(rtoc)
    lfs     f1, 0x8(r3)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80076fe0
    lfs     f0, 0x0(r3)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80076fd8
    lfs     f1, -0x6a2c(rtoc)
    b       branch_0x8007705c

branch_0x80076fd8:
    lfs     f1, -0x6a28(rtoc)
    b       branch_0x8007705c

branch_0x80076fe0:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80077020
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6a90(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6a24(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f0, f1
    b       branch_0x8007705c

branch_0x80077020:
    fneg    f1, f1
    lfs     f2, 0x0(r3)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6a90(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6a24(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6a30(rtoc)
    stw     r0, 0x10(sp)
    lfd     f2, 0x10(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f1, f0, f1
branch_0x8007705c:
    lwz     r0, 0x1c(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl SMS_GetMarioPos__Fv
SMS_GetMarioPos__Fv: # 0x8007706c
    lwz     r3, MarioHitActorPos(r13)
    blr


.globl doAttackShoot__10TBossGessoFv
doAttackShoot__10TBossGessoFv: # 0x80077074
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    lwz     r3, 0x160(r3)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800770b4
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80077260

branch_0x800770b4:
    lwz     r0, 0x16c(r31)
    cmpwi   r0, 0x78
    ble-    branch_0x80077138
    lwz     r3, 0x8c(r31)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x800770d4
    b       branch_0x800770d8

branch_0x800770d4:
    lwz     r30, 0x1c(r3)
branch_0x800770d8:
    lbz     r0, -0x6e08(r13)
    extsb.  r0, r0
    bne-    branch_0x8007711c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e04(r13)
    addi    r0, r3, 0x2a28
    lis     r4, 0x8007
    stw     r0, -0x6e04(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbdc
    addi    r4, r4, 0x336c
    subi    r3, r13, 0x6e04
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e08(r13)
branch_0x8007711c:
    subi    r0, r13, 0x6e04
    cmplw   r30, r0
    beq-    branch_0x80077138
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80077260

branch_0x80077138:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, r31, 0x10
    lfs     f30, 0x2fc(r3)
    addi    r3, sp, 0x48
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x50(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x48
    bl      MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
    fmr     f31, f1
    lfs     f0, -0x6a30(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f31, f1
    lfs     f0, -0x6a64(rtoc)
    fmuls   f0, f0, f30
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800771b8
    li      r0, 0x1
    b       branch_0x800771bc

branch_0x800771b8:
    li      r0, 0x0
branch_0x800771bc:
    cmpwi   r0, 0x0
    beq-    branch_0x80077260
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x70(sp)
    stw     r0, 0x74(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x78(sp)
    lfs     f1, 0x70(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x70(sp)
    lfs     f1, 0x74(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x74(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x70(sp)
    lfs     f0, 0x74(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x78(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x1f8(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    bge-    branch_0x80077260
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
branch_0x80077260:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    addi    sp, sp, 0x98
    blr


.globl doAttackUnison__10TBossGessoFv
doAttackUnison__10TBossGessoFv: # 0x80077280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    lwz     r3, 0x160(r3)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x800772c8
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80077508

branch_0x800772c8:
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x8c(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x220(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    fmuls   f31, f0, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, r31, 0x10
    lfs     f29, 0x2fc(r3)
    addi    r3, sp, 0x60
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x68(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x60
    bl      MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
    fmr     f30, f1
    lfs     f0, -0x6a30(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f30, f1
    lfs     f0, -0x6a64(rtoc)
    fmuls   f0, f0, f29
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800773b0
    li      r0, 0x1
    b       branch_0x800773b4

branch_0x800773b0:
    li      r0, 0x0
branch_0x800773b4:
    cmpwi   r0, 0x0
    beq-    branch_0x8007748c
    lwz     r3, MarioActor(r13)
    lfs     f1, -0x6a20(rtoc)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x800773e4
    li      r0, 0x1
    b       branch_0x800773e8

branch_0x800773e4:
    li      r0, 0x0
branch_0x800773e8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007748c
    lfs     f1, 0x84(sp)
    lfs     f0, 0x88(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x8c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f31
    bge-    branch_0x8007748c
    li      r4, 0x1
    li      r29, 0x0
    li      r30, 0x0
branch_0x80077424:
    lwz     r0, 0x16c(r31)
    addi    r3, r30, 0x150
    lwzx    r3, r31, r3
    srawi   r0, r0, 3
    addze   r0, r0
    cmpw    r29, r0
    bne-    branch_0x80077458
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80077458
    li      r4, 0x1
    bl      changeStateAndFixNodes__11TBGTentacleFi
    li      r4, 0x0
branch_0x80077458:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r30, r30, 0x4
    blt+    branch_0x80077424
    cmpwi   r4, 0x0
    beq-    branch_0x80077508
    lwz     r0, 0x16c(r31)
    cmpwi   r0, 0x12c
    ble-    branch_0x80077508
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80077508

branch_0x8007748c:
    li      r29, 0x0
    li      r30, 0x0
branch_0x80077494:
    addi    r0, r30, 0x150
    lwzx    r3, r31, r0
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80077508
    cmpwi   r0, 0x4
    beq-    branch_0x800774b8
    cmpwi   r0, 0x6
    bne-    branch_0x800774c0
branch_0x800774b8:
    li      r4, 0x1
    b       branch_0x800774c4

branch_0x800774c0:
    li      r4, 0x0
branch_0x800774c4:
    cmpwi   r4, 0x0
    bne-    branch_0x800774ec
    cmpwi   r0, 0x0
    beq-    branch_0x800774ec
    cmpwi   r0, 0x2
    beq-    branch_0x800774ec
    cmpwi   r0, 0x5
    beq-    branch_0x800774ec
    li      r4, 0x2
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x800774ec:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r30, r30, 0x4
    blt+    branch_0x80077494
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
branch_0x80077508:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xb8
    blr


.globl doAttackSkipRope__10TBossGessoFv
doAttackSkipRope__10TBossGessoFv: # 0x80077530
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    stfd    f30, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r3, 0x160(r3)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80077574
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800776e8

branch_0x80077574:
    bne-    branch_0x800775f4
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077590
    li      r0, 0x1
    b       branch_0x800775dc

branch_0x80077590:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800775a8
    li      r0, 0x1
    b       branch_0x800775dc

branch_0x800775a8:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800775c0
    li      r0, 0x1
    b       branch_0x800775dc

branch_0x800775c0:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800775d8
    li      r0, 0x1
    b       branch_0x800775dc

branch_0x800775d8:
    li      r0, 0x0
branch_0x800775dc:
    cmpwi   r0, 0x0
    bne-    branch_0x800775f4
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800776e8

branch_0x800775f4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, r31, 0x10
    lfs     f30, 0x2fc(r3)
    addi    r3, sp, 0x58
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x58(sp)
    stw     r0, 0x5c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x60(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x58
    bl      MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
    fmr     f31, f1
    lfs     f0, -0x6a30(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f31, f1
    lfs     f0, -0x6a64(rtoc)
    fmuls   f0, f0, f30
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80077674
    li      r0, 0x1
    b       branch_0x80077678

branch_0x80077674:
    li      r0, 0x0
branch_0x80077678:
    cmpwi   r0, 0x0
    beq-    branch_0x800776e8
    li      r29, 0x0
    li      r30, 0x0
branch_0x80077688:
    subi    r3, rtoc, 0x6aa0
    lwzx    r0, r3, r30
    slwi    r3, r0, 2
    addi    r0, r3, 0x150
    lwzx    r3, r31, r0
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x800776d8
    cmpwi   r0, 0x1
    beq-    branch_0x800776d8
    cmpwi   r0, 0x4
    beq-    branch_0x800776d8
    cmpwi   r0, 0x5
    beq-    branch_0x800776d8
    cmpwi   r0, 0x3
    beq-    branch_0x800776d8
    cmpwi   r0, 0x6
    beq-    branch_0x800776d8
    li      r4, 0x1
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x800776d8:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x80077688
branch_0x800776e8:
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    mtlr    r0
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x98
    blr


.globl doAttackDouble__10TBossGessoFv
doAttackDouble__10TBossGessoFv: # 0x8007770c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stfd    f31, 0xb0(sp)
    stfd    f30, 0xa8(sp)
    stfd    f29, 0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    stw     r29, 0x94(sp)
    stw     r28, 0x90(sp)
    lwz     r3, 0x160(r3)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x800777b4
    lwz     r3, 0x150(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077760
    li      r0, 0x1
    b       branch_0x800777ac

branch_0x80077760:
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077778
    li      r0, 0x1
    b       branch_0x800777ac

branch_0x80077778:
    lwz     r3, 0x158(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077790
    li      r0, 0x1
    b       branch_0x800777ac

branch_0x80077790:
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x800777a8
    li      r0, 0x1
    b       branch_0x800777ac

branch_0x800777a8:
    li      r0, 0x0
branch_0x800777ac:
    cmpwi   r0, 0x0
    beq-    branch_0x800777c4
branch_0x800777b4:
    addi    r3, r31, 0x0
    li      r4, 0x4
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x80077994

branch_0x800777c4:
    lwz     r4, 0x10(r31)
    mr      r3, r31
    lwz     r0, 0x14(r31)
    lwz     r5, MarioHitActorPos(r13)
    stw     r4, 0x84(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x8c(sp)
    lfs     f1, 0x84(sp)
    lfs     f0, 0x0(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x84(sp)
    lfs     f1, 0x88(sp)
    lfs     f0, 0x4(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x88(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x8(r5)
    fsubs   f0, f1, f0
    stfs    f0, 0x8c(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x20c(r3)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    fmuls   f29, f0, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, r31, 0x10
    lfs     f30, 0x2fc(r3)
    addi    r3, sp, 0x5c
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x5c(sp)
    stw     r0, 0x60(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x64(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x5c
    bl      MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
    fmr     f31, f1
    lfs     f0, -0x6a30(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f31, f1
    lfs     f0, -0x6a64(rtoc)
    fmuls   f0, f0, f30
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800778ac
    li      r0, 0x1
    b       branch_0x800778b0

branch_0x800778ac:
    li      r0, 0x0
branch_0x800778b0:
    cmpwi   r0, 0x0
    beq-    branch_0x80077920
    lfs     f1, 0x84(sp)
    lfs     f0, 0x88(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x8c(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f29
    bge-    branch_0x80077920
    li      r28, 0x0
    li      r30, 0x0
    subi    r29, rtoc, 0x6aa8
branch_0x800778ec:
    lwzx    r0, r29, r30
    slwi    r3, r0, 2
    addi    r0, r3, 0x150
    lwzx    r3, r31, r0
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x80077910
    li      r4, 0x1
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80077910:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r30, r30, 0x4
    blt+    branch_0x800778ec
branch_0x80077920:
    lwz     r3, 0x160(r31)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80077994
    lwz     r3, 0x15c(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077948
    cmpwi   r0, 0x6
    bne-    branch_0x80077950
branch_0x80077948:
    li      r0, 0x1
    b       branch_0x80077954

branch_0x80077950:
    li      r0, 0x0
branch_0x80077954:
    cmpwi   r0, 0x0
    beq-    branch_0x80077988
    lwz     r3, 0x154(r31)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077974
    cmpwi   r0, 0x6
    bne-    branch_0x8007797c
branch_0x80077974:
    li      r0, 0x1
    b       branch_0x80077980

branch_0x8007797c:
    li      r0, 0x0
branch_0x80077980:
    cmpwi   r0, 0x0
    bne-    branch_0x80077994
branch_0x80077988:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
branch_0x80077994:
    lwz     r0, 0xbc(sp)
    lfd     f31, 0xb0(sp)
    lfd     f30, 0xa8(sp)
    mtlr    r0
    lfd     f29, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    lwz     r28, 0x90(sp)
    addi    sp, sp, 0xb8
    blr


.globl doAttackSingle__10TBossGessoFv
doAttackSingle__10TBossGessoFv: # 0x800779c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x280(sp)
    stfd    f31, 0x278(sp)
    stfd    f30, 0x270(sp)
    stfd    f29, 0x268(sp)
    stfd    f28, 0x260(sp)
    stw     r31, 0x25c(sp)
    stw     r30, 0x258(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x254(sp)
    stw     r28, 0x250(sp)
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x80077a34
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r4, 0x8007
    stw     r0, -0x6e0c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbd0
    addi    r4, r4, 0x3700
    subi    r3, r13, 0x6e0c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x80077a34:
    lwz     r4, 0x8c(r30)
    subi    r0, r13, 0x6e0c
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80077a4c
    b       branch_0x80077a50

branch_0x80077a4c:
    lwz     r3, 0x1c(r4)
branch_0x80077a50:
    cmplw   r3, r0
    beq-    branch_0x80077a6c
    lwz     r3, 0x178(r30)
    li      r4, -0x1
    bl      setBckFromIndex__6MActorFi
    li      r0, 0x0
    stb     r0, 0x17c(r30)
branch_0x80077a6c:
    lwz     r4, gpMarDirector(r13)
    lwz     r0, 0x58(r4)
    cmpwi   r0, 0x1e0
    blt-    branch_0x800783e8
    lbz     r5, 0x124(r4)
    li      r3, 0x1
    addi    r0, r3, 0x0
    cmplwi  r5, 0x1
    beq-    branch_0x80077a9c
    cmplwi  r5, 0x2
    beq-    branch_0x80077a9c
    li      r0, 0x0
branch_0x80077a9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x80077ac8
    cmplwi  r5, 0x3
    li      r0, 0x1
    beq-    branch_0x80077abc
    cmplwi  r5, 0x4
    beq-    branch_0x80077abc
    li      r0, 0x0
branch_0x80077abc:
    clrlwi. r0, r0, 24
    bne-    branch_0x80077ac8
    li      r3, 0x0
branch_0x80077ac8:
    clrlwi. r0, r3, 24
    beq-    branch_0x80077ad4
    b       branch_0x800783e8

branch_0x80077ad4:
    lwz     r3, 0x1a8(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x80077aec
    subi    r0, r3, 0x1
    stw     r0, 0x1a8(r30)
    b       branch_0x800783e8

branch_0x80077aec:
    lbz     r0, 0x7d(r4)
    cmplwi  r0, 0x4
    bne-    branch_0x80077b00
    li      r0, 0x1
    b       branch_0x80077b04

branch_0x80077b00:
    li      r0, 0x0
branch_0x80077b04:
    cmpwi   r0, 0x0
    beq-    branch_0x80077b98
    lwz     r4, MarioHitActorPos(r13)
    lfs     f1, -0x6a1c(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x238(sp)
    stw     r0, 0x23c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x240(sp)
    lfs     f0, 0x23c(sp)
    lfs     f2, 0x14(r30)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f2
    blt-    branch_0x800783e8
    lfs     f1, 0x238(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x238(sp)
    lfs     f0, 0x23c(sp)
    fsubs   f0, f0, f2
    stfs    f0, 0x23c(sp)
    lfs     f1, 0x240(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x240(sp)
    lfs     f1, 0x238(sp)
    lfs     f3, 0x240(sp)
    lfs     f0, 0x23c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6a18(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    bgt-    branch_0x800783e8
branch_0x80077b98:
    lfs     f31, -0x6a30(rtoc)
    li      r31, 0x0
    lfs     f30, -0x6a64(rtoc)
    li      r29, 0x0
branch_0x80077ba8:
    addi    r3, r30, 0x0
    subi    r4, rtoc, 0x6ab8
    lwz     r12, 0x0(r30)
    lwzx    r0, r4, r29
    lwz     r12, 0x108(r12)
    slwi    r4, r0, 2
    addi    r0, r4, 0x150
    mtlr    r12
    lwzx    r28, r30, r0
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, r30, 0x10
    lfs     f28, 0x2fc(r3)
    addi    r3, sp, 0x198
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x198(sp)
    stw     r0, 0x19c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x1a0(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x198
    bl      MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
    fmr     f29, f1
    lfs     f1, 0x34(r30)
    fsubs   f2, f29, f31
    fadds   f3, f31, f29
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f29, f1
    fmuls   f0, f30, f28
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80077c34
    li      r0, 0x1
    b       branch_0x80077c38

branch_0x80077c34:
    li      r0, 0x0
branch_0x80077c38:
    cmpwi   r0, 0x0
    beq-    branch_0x80077cf0
    lwz     r0, 0x10(r28)
    cmpwi   r0, 0x0
    bne-    branch_0x80077cf0
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r30
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x22c(sp)
    stw     r0, 0x230(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x234(sp)
    lwz     r4, 0x24(r28)
    lfs     f1, 0x22c(sp)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x22c(sp)
    lfs     f1, 0x230(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x230(sp)
    lfs     f1, 0x234(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x234(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x22c(sp)
    lfs     f0, 0x230(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x234(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x1f8(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f3, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f3
    bge-    branch_0x80077cf0
    addi    r3, r28, 0x0
    li      r4, 0x1
    bl      changeStateAndFixNodes__11TBGTentacleFi
    b       branch_0x80077d00

branch_0x80077cf0:
    addi    r31, r31, 0x1
    cmpwi   r31, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x80077ba8
branch_0x80077d00:
    lwz     r3, 0x15c(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077d18
    cmpwi   r0, 0x6
    bne-    branch_0x80077d20
branch_0x80077d18:
    li      r0, 0x1
    b       branch_0x80077d24

branch_0x80077d20:
    li      r0, 0x0
branch_0x80077d24:
    cmpwi   r0, 0x0
    beq-    branch_0x80077e08
    lwz     r3, 0x154(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077d44
    cmpwi   r0, 0x6
    bne-    branch_0x80077d4c
branch_0x80077d44:
    li      r0, 0x1
    b       branch_0x80077d50

branch_0x80077d4c:
    li      r0, 0x0
branch_0x80077d50:
    cmpwi   r0, 0x0
    beq-    branch_0x80077e08
    lwz     r3, 0x158(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077d70
    cmpwi   r0, 0x6
    bne-    branch_0x80077d78
branch_0x80077d70:
    li      r0, 0x1
    b       branch_0x80077d7c

branch_0x80077d78:
    li      r0, 0x0
branch_0x80077d7c:
    cmpwi   r0, 0x0
    beq-    branch_0x80077db0
    lwz     r3, 0x150(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077d9c
    cmpwi   r0, 0x6
    bne-    branch_0x80077da4
branch_0x80077d9c:
    li      r0, 0x1
    b       branch_0x80077da8

branch_0x80077da4:
    li      r0, 0x0
branch_0x80077da8:
    cmpwi   r0, 0x0
    bne-    branch_0x80077e08
branch_0x80077db0:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x16c(r30)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    ble-    branch_0x800783e8
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80077dec
    li      r0, 0x1
    b       branch_0x80077df0

branch_0x80077dec:
    li      r0, 0x0
branch_0x80077df0:
    cmpwi   r0, 0x0
    beq-    branch_0x800783e8
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800783e8

branch_0x80077e08:
    lwz     r3, 0x150(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077e20
    li      r0, 0x1
    b       branch_0x80077e6c

branch_0x80077e20:
    lwz     r3, 0x154(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077e38
    li      r0, 0x1
    b       branch_0x80077e6c

branch_0x80077e38:
    lwz     r3, 0x158(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077e50
    li      r0, 0x1
    b       branch_0x80077e6c

branch_0x80077e50:
    lwz     r3, 0x15c(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x80077e68
    li      r0, 0x1
    b       branch_0x80077e6c

branch_0x80077e68:
    li      r0, 0x0
branch_0x80077e6c:
    cmpwi   r0, 0x0
    bne-    branch_0x800783e8
    lwz     r5, MarioHitActorPos(r13)
    mr      r3, r30
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x218(sp)
    stw     r0, 0x21c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x220(sp)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x220(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    fmuls   f31, f0, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x234(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    fmuls   f30, f0, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x218(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x218(sp)
    lfs     f1, 0x21c(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x21c(sp)
    lfs     f1, 0x220(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x220(sp)
    lwz     r3, 0x160(r30)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x80077fd8
    lwz     r3, 0x15c(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077f34
    cmpwi   r0, 0x6
    bne-    branch_0x80077f3c
branch_0x80077f34:
    li      r0, 0x1
    b       branch_0x80077f40

branch_0x80077f3c:
    li      r0, 0x0
branch_0x80077f40:
    cmpwi   r0, 0x0
    beq-    branch_0x80077f74
    lwz     r3, 0x154(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x80077f60
    cmpwi   r0, 0x6
    bne-    branch_0x80077f68
branch_0x80077f60:
    li      r0, 0x1
    b       branch_0x80077f6c

branch_0x80077f68:
    li      r0, 0x0
branch_0x80077f6c:
    cmpwi   r0, 0x0
    bne-    branch_0x80077fd8
branch_0x80077f74:
    li      r28, 0x0
    li      r31, 0x0
    subi    r29, rtoc, 0x6ab0
branch_0x80077f80:
    lwzx    r0, r29, r31
    slwi    r3, r0, 2
    addi    r0, r3, 0x150
    lwzx    r3, r30, r0
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x80077fc4
    cmpwi   r0, 0x4
    beq-    branch_0x80077fc4
    cmpwi   r0, 0x5
    beq-    branch_0x80077fc4
    cmpwi   r0, 0x3
    beq-    branch_0x80077fc4
    cmpwi   r0, 0x6
    beq-    branch_0x80077fc4
    li      r4, 0x1
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80077fc4:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r31, r31, 0x4
    blt+    branch_0x80077f80
    b       branch_0x800783e8

branch_0x80077fd8:
    lfs     f1, 0x218(sp)
    lfs     f0, 0x21c(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0x220(sp)
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f28, f2, f0
    fcmpo   cr0, f28, f30
    bge-    branch_0x80078044
    lwz     r3, MarioActor(r13)
    lfs     f1, -0x6a20(rtoc)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80078028
    li      r0, 0x1
    b       branch_0x8007802c

branch_0x80078028:
    li      r0, 0x0
branch_0x8007802c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80078044
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800783e8

branch_0x80078044:
    fcmpo   cr0, f28, f31
    bge-    branch_0x800780e8
    lwz     r3, MarioActor(r13)
    lfs     f1, -0x6a20(rtoc)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x80078074
    li      r0, 0x1
    b       branch_0x80078078

branch_0x80078074:
    li      r0, 0x0
branch_0x80078078:
    clrlwi. r0, r0, 24
    beq-    branch_0x800780e8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x16c(r30)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    ble-    branch_0x800783e8
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x800780bc
    li      r0, 0x1
    b       branch_0x800780c0

branch_0x800780bc:
    li      r0, 0x0
branch_0x800780c0:
    cmpwi   r0, 0x0
    beq-    branch_0x800780d8
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800783e8

branch_0x800780d8:
    addi    r3, r30, 0x0
    li      r4, 0x2
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800783e8

branch_0x800780e8:
    lwz     r3, 0x150(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80078100
    li      r0, 0x1
    b       branch_0x8007814c

branch_0x80078100:
    lwz     r3, 0x154(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80078118
    li      r0, 0x1
    b       branch_0x8007814c

branch_0x80078118:
    lwz     r3, 0x158(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80078130
    li      r0, 0x1
    b       branch_0x8007814c

branch_0x80078130:
    lwz     r3, 0x15c(r30)
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x80078148
    li      r0, 0x1
    b       branch_0x8007814c

branch_0x80078148:
    li      r0, 0x0
branch_0x8007814c:
    cmpwi   r0, 0x0
    bne-    branch_0x800783e8
    lwz     r3, 0x18c(r30)
    lwz     r0, 0xc(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80078300
    lbz     r0, 0x195(r30)
    extsb   r0, r0
    cmpwi   r0, 0x3
    bge-    branch_0x80078300
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2ac(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    fmuls   f29, f0, f0
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x16c(r30)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    ble-    branch_0x800783e8
    fcmpo   cr0, f28, f29
    bge-    branch_0x800783e8
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x1b8(sp)
    stw     r0, 0x1bc(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1c0(sp)
    lfs     f1, 0x1b8(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1b8(sp)
    lfs     f1, 0x1bc(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1bc(sp)
    lfs     f1, 0x1c0(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c0(sp)
    lfs     f2, -0x6a88(rtoc)
    lfs     f1, 0x1c0(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80078238
    lfs     f0, 0x1b8(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80078230
    lfs     f28, -0x6a2c(rtoc)
    b       branch_0x800782b4

branch_0x80078230:
    lfs     f28, -0x6a28(rtoc)
    b       branch_0x800782b4

branch_0x80078238:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80078278
    lfs     f2, 0x1b8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x6a90(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x6a24(rtoc)
    stw     r0, 0x24c(sp)
    lis     r0, 0x4330
    stw     r0, 0x248(sp)
    lfd     f1, 0x248(sp)
    fsubs   f1, f1, f2
    fmuls   f28, f0, f1
    b       branch_0x800782b4

branch_0x80078278:
    fneg    f1, f1
    lfs     f2, 0x1b8(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x6a90(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x6a24(rtoc)
    stw     r0, 0x24c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x6a30(rtoc)
    stw     r0, 0x248(sp)
    lfd     f2, 0x248(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f28, f0, f1
branch_0x800782b4:
    lfs     f0, -0x6a30(rtoc)
    lfs     f1, 0x34(r30)
    fsubs   f2, f28, f0
    fadds   f3, f0, f28
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f28, f1
    lfs     f0, -0x6a14(rtoc)
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800782e4
    li      r0, 0x1
    b       branch_0x800782e8

branch_0x800782e4:
    li      r0, 0x0
branch_0x800782e8:
    cmpwi   r0, 0x0
    beq-    branch_0x800783e8
    addi    r3, r30, 0x0
    li      r4, 0x5
    bl      changeAttackMode__10TBossGessoFi
    b       branch_0x800783e8

branch_0x80078300:
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80078318
    li      r0, 0x1
    b       branch_0x8007831c

branch_0x80078318:
    li      r0, 0x0
branch_0x8007831c:
    cmpwi   r0, 0x0
    beq-    branch_0x800783e8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r6, MarioHitActorPos(r13)
    addi    r4, r30, 0x10
    lfs     f28, 0x2fc(r3)
    addi    r3, sp, 0x164
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x16c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x164
    bl      MsGetRotFromZaxisY__FRCQ29JGeometry8TVec3_f_
    fmr     f30, f1
    lfs     f0, -0x6a30(rtoc)
    lfs     f1, 0x34(r30)
    fsubs   f2, f30, f0
    fadds   f3, f0, f30
    bl      MsWrap_f___Ffff_80076f5c
    fsubs   f1, f30, f1
    lfs     f0, -0x6a64(rtoc)
    fmuls   f0, f0, f28
    fabs    f1, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x800783a4
    li      r0, 0x1
    b       branch_0x800783a8

branch_0x800783a4:
    li      r0, 0x0
branch_0x800783a8:
    cmpwi   r0, 0x0
    beq-    branch_0x800783e8
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x16c(r30)
    lwz     r0, 0xb8(r3)
    cmpw    r4, r0
    ble-    branch_0x800783e8
    addi    r3, r30, 0x0
    li      r4, 0x7
    bl      changeAttackMode__10TBossGessoFi
    li      r0, 0x0
    stb     r0, 0x195(r30)
branch_0x800783e8:
    lwz     r0, 0x284(sp)
    lfd     f31, 0x278(sp)
    lfd     f30, 0x270(sp)
    mtlr    r0
    lfd     f29, 0x268(sp)
    lfd     f28, 0x260(sp)
    lwz     r31, 0x25c(sp)
    lwz     r30, 0x258(sp)
    lwz     r29, 0x254(sp)
    lwz     r28, 0x250(sp)
    addi    sp, sp, 0x280
    blr


.globl receiveMessage__10TBossGessoFP9THitActorUl
receiveMessage__10TBossGessoFP9THitActorUl: # 0x80078418
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8007845c
    cmplwi  r5, 0xf
    bne-    branch_0x8007845c
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r4, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x80078460

branch_0x8007845c:
    li      r3, 0x0
branch_0x80078460:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBasNameTable__10TBossGessoCFv
getBasNameTable__10TBossGessoCFv: # 0x80078470
    lis     r3, 0x803b
    addi    r3, r3, 0x2968
    blr


.globl beakHeld__10TBossGessoCFv
beakHeld__10TBossGessoCFv: # 0x8007847c
    lwz     r3, 0x160(r3)
    lwz     r0, 0x68(r3)
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    blr


.globl tentacleHeld__10TBossGessoCFv
tentacleHeld__10TBossGessoCFv: # 0x80078498
    lwz     r4, 0x150(r3)
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x800784b0
    li      r3, 0x1
    blr

branch_0x800784b0:
    lwz     r4, 0x154(r3)
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x800784c8
    li      r3, 0x1
    blr

branch_0x800784c8:
    lwz     r4, 0x158(r3)
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x800784e0
    li      r3, 0x1
    blr

branch_0x800784e0:
    lwz     r4, 0x15c(r3)
    lwz     r0, 0x10(r4)
    cmpwi   r0, 0x3
    bne-    branch_0x800784f8
    li      r3, 0x1
    blr

branch_0x800784f8:
    li      r3, 0x0
    blr


.globl launchPolDrop__10TBossGessoFv
launchPolDrop__10TBossGessoFv: # 0x80078500
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r3
    lwz     r3, 0x180(r3)
    lwz     r0, 0x58(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x800785e4
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80078560
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    lfs     f0, -0x6a98(rtoc)
    stw     r3, 0x2c(sp)
    stw     r0, 0x30(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0x34(sp)
    lfs     f1, 0x2c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x2c(sp)
    b       branch_0x80078570

branch_0x80078560:
    addi    r3, r30, 0x0
    addi    r5, sp, 0x2c
    li      r4, 0x1a
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x80078570:
    lwz     r3, MarioHitActorPos(r13)
    addi    r4, sp, 0x2c
    lfs     f1, -0x6a10(rtoc)
    addi    r5, sp, 0x20
    lfs     f2, -0x6a0c(rtoc)
    bl      SMSCalcJumpVelocityXZ__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ffPQ29JGeometry8TVec3_f_
    lwz     r3, 0x180(r30)
    addi    r4, sp, 0x2c
    addi    r5, sp, 0x20
    bl      launch__10TBGPolDropFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x58(r3)
    li      r4, 0x94
    lwz     r3, gpMarioParticleManager(r13)
    li      r6, 0x0
    addi    r31, r5, 0x510
    addi    r5, r31, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x0
    li      r4, 0x93
    li      r6, 0x0
    li      r7, 0x0
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lbz     r3, 0x195(r30)
    addi    r0, r3, 0x1
    stb     r0, 0x195(r30)
branch_0x800785e4:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl changeAllTentacleState__10TBossGessoFi
changeAllTentacleState__10TBossGessoFi: # 0x800785fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    li      r31, 0x0
    stw     r30, 0x20(sp)
    li      r30, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
branch_0x80078628:
    addi    r0, r31, 0x150
    lwzx    r3, r28, r0
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x5
    beq-    branch_0x80078670
    cmpwi   r0, 0x4
    beq-    branch_0x80078654
    cmpwi   r0, 0x6
    beq-    branch_0x80078654
    cmpwi   r0, 0x3
    bne-    branch_0x8007865c
branch_0x80078654:
    li      r0, 0x1
    b       branch_0x80078660

branch_0x8007865c:
    li      r0, 0x0
branch_0x80078660:
    cmpwi   r0, 0x0
    bne-    branch_0x80078670
    mr      r4, r29
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80078670:
    addi    r30, r30, 0x1
    cmpwi   r30, 0x4
    addi    r31, r31, 0x4
    blt+    branch_0x80078628
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl gotTentacleDamage__10TBossGessoFv
gotTentacleDamage__10TBossGessoFv: # 0x800786a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r29, 0x2c(sp)
    lwz     r4, 0x8c(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0xb88
    lwz     r29, 0x14(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x800786d8
    b       branch_0x800786dc

branch_0x800786d8:
    lwz     r29, 0x1c(r4)
branch_0x800786dc:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007871c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007871c:
    subi    r0, r13, 0x6e2c
    cmplw   r29, r0
    beq-    branch_0x80078818
    lwz     r3, 0x8c(r30)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6e28(r13)
    extsb.  r0, r0
    bne-    branch_0x80078774
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e24(r13)
    addi    r0, r3, 0x2a68
    lis     r3, 0x8007
    stw     r0, -0x6e24(r13)
    addi    r4, r3, 0x4754
    subi    r3, r13, 0x6e24
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e28(r13)
branch_0x80078774:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6e24
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007878c
    stw     r0, 0x1c(r4)
branch_0x8007878c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x800787d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e3c(r13)
    addi    r0, r3, 0x2a98
    lis     r3, 0x8007
    stw     r0, -0x6e3c(r13)
    addi    r4, r3, 0x5620
    subi    r3, r13, 0x6e3c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x800787d8:
    subi    r5, r13, 0x6e3c
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x80078810
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x80078810
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x80078810:
    li      r0, 0x1
    stb     r0, 0x1a0(r30)
branch_0x80078818:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl changeAttackMode__10TBossGessoFi
changeAttackMode__10TBossGessoFi: # 0x80078834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    li      r29, 0x0
    stw     r28, 0x98(sp)
    stw     r4, 0x168(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0xb88
    stw     r29, 0x16c(r31)
    lwz     r0, 0x168(r31)
    cmplwi  r0, 0x7
    bgt-    branch_0x80078e30
    lis     r3, 0x803b
    addi    r3, r3, 0x2a08
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr			# switch jump

branch_0x8007888C:		# jumptable 80078888 case 3
    li      r28, 0x0
    subi    r30, r13, 0x7ef0
branch_0x80078894:
    lwzx    r0, r30, r29
    slwi    r3, r0, 2
    addi    r0, r3, 0x150
    lwzx    r3, r31, r0
    lwz     r0, 0x10(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x800788c0
    cmpwi   r0, 0x6
    beq-    branch_0x800788c0
    cmpwi   r0, 0x3
    bne-    branch_0x800788c8
branch_0x800788c0:
    li      r0, 0x1
    b       branch_0x800788cc

branch_0x800788c8:
    li      r0, 0x0
branch_0x800788cc:
    cmpwi   r0, 0x0
    bne-    branch_0x800788dc
    li      r4, 0xa
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x800788dc:
    addi    r28, r28, 0x1
    cmpwi   r28, 0x2
    addi    r29, r29, 0x4
    blt+    branch_0x80078894
    b       branch_0x80078e30

branch_0x800788F0:		# jumptable 80078888 case 2
li	  r30, 0

branch_0x800788F4:
addi	  r0, r30, 0x150
lwzx	  r3, r31, r0
lwz	  r4, 0x10(r3)
cmpwi	  r4, 5
beq	  branch_0x80078938
cmpwi	  r4, 6
beq	  branch_0x8007891C
addi	  r0, r4, -3
cmplwi	  r0, 1
bgt	  branch_0x80078924

branch_0x8007891C:
li	  r0, 1
b	  branch_0x80078928

branch_0x80078924:
li	  r0, 0

branch_0x80078928:
cmpwi	  r0, 0
bne	  branch_0x80078938
li	  r4, 0
bl	  changeStateAndFixNodes__11TBGTentacleFi # TBGTentacle::changeStateAndFixNodes((int))

branch_0x80078938:
addi	  r29, r29, 1
cmpwi	  r29, 4
addi	  r30, r30, 4
blt	  branch_0x800788F4
b	  def_80078888	# jumptable 80078888 default case

branch_0x8007894C:		# jumptable 80078888 case 7
bl	  rand
xoris	  r0, r3, 0x8000
lfd	  f3, -0x6A90(r2)
stw	  r0, 0xA8+var_18+4(r1)
lis	  r0, 0x4330
lfs	  f1, -0x6A08(r2)
stw	  r0, 0xA8+var_18(r1)
lfs	  f0, -0x6A68(r2)
lfd	  f2, 0xA8+var_18(r1)
fsubs	  f2, f2, f3
fmuls	  f1, f1, f2
fmuls	  f0, f0, f1
fctiwz	  f0, f0
stfd	  f0, 0xA8+var_20(r1)
lwz	  r0, 0xA8+var_20+4(r1)
cmpwi	  r0, 0x28
bge	  branch_0x8007899C
li	  r0, 1
stb	  r0, 0x1A1(r31)
b	  branch_0x800789A0

branch_0x8007899C:
stb	  r29, 0x1A1(r31)

branch_0x800789A0:
li	  r28, 0
li	  r29, 0

branch_0x800789A8:
addi	  r0, r29, 0x150
lwzx	  r3, r31, r0
lwz	  r4, 0x10(r3)
cmpwi	  r4, 5
beq	  branch_0x800789EC
cmpwi	  r4, 6
beq	  branch_0x800789D0
addi	  r0, r4, -3
cmplwi	  r0, 1
bgt	  branch_0x800789D8

branch_0x800789D0:
li	  r0, 1
b	  branch_0x800789DC

branch_0x800789D8:
li	  r0, 0

branch_0x800789DC:
cmpwi	  r0, 0
bne	  branch_0x800789EC
li	  r4, 8
bl	  changeStateAndFixNodes__11TBGTentacleFi # TBGTentacle::changeStateAndFixNodes((int))

branch_0x800789EC:
addi	  r28, r28, 1
cmpwi	  r28, 4
addi	  r29, r29, 4
blt	  branch_0x800789A8
lwz	  r3, 0x8C(r31)
li	  r0, 0
stw	  r0, 8(r3)
lbz	  r0, -0x6E00(r13)
extsb.	  r0, r0
bne	  branch_0x80078A48
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B29D8@h
stw	  r0, -0x6DFC(r13)
addi	  r0, r3, unk_803B29D8@l
lis	  r3, __dt__12TNerveBGRollFv@h # TNerveBGRoll::~TNerveBGRoll((void))
stw	  r0, -0x6DFC(r13)
addi	  r4, r3, __dt__12TNerveBGRollFv@l # TNerveBGRoll::~TNerveBGRoll((void))
addi	  r3, r13, -0x6DFC
addi	  r5, r30, 0x60
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E00(r13)

branch_0x80078A48:
lwz	  r4, 0x8C(r31)
addi	  r3, r13, -0x6DFC
lwz	  r0, 0x14(r4)
cmplwi	  r0, 0
beq	  branch_0x80078A60
stw	  r0, 0x1C(r4)

branch_0x80078A60:
li	  r0, 0
stw	  r0, 0x20(r4)
stw	  r3, 0x14(r4)
lbz	  r0, -0x6E40(r13)
extsb.	  r0, r0
bne	  branch_0x80078AAC
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A98@h
stw	  r0, -0x6E3C(r13)
addi	  r0, r3, unk_803B2A98@l
lis	  r3, __dt__12TNerveBGWaitFv@h # TNerveBGWait::~TNerveBGWait((void))
stw	  r0, -0x6E3C(r13)
addi	  r4, r3, __dt__12TNerveBGWaitFv@l # TNerveBGWait::~TNerveBGWait((void))
addi	  r3, r13, -0x6E3C
addi	  r5, r30, 0
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E40(r13)

branch_0x80078AAC:
addi	  r5, r13, -0x6E3C
lwz	  r4, 0x8C(r31)
cmplwi	  r5, 0
beq	  def_80078888	# jumptable 80078888 default case
lwz	  r6, 8(r4)
lwz	  r0, 4(r4)
cmpw	  r6, r0
bge	  def_80078888	# jumptable 80078888 default case
lwz	  r3, 0xC(r4)
slwi	  r0, r6, 2
stwx	  r5, r3, r0
lwz	  r3, 8(r4)
addi	  r0, r3, 1
stw	  r0, 8(r4)
b	  def_80078888	# jumptable 80078888 default case

branch_0x80078AE8:		# jumptable 80078888 case 5
lwz	  r3, 0x8C(r31)
lwz	  r28, 0x14(r3)
cmplwi	  r28, 0
beq	  branch_0x80078AFC
b	  branch_0x80078B00

branch_0x80078AFC:
lwz	  r28, 0x1C(r3)

branch_0x80078B00:
lbz	  r0, -0x6E08(r13)
extsb.	  r0, r0
bne	  branch_0x80078B40
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A28@h
stw	  r0, -0x6E04(r13)
addi	  r0, r3, unk_803B2A28@l
lis	  r3, __dt__15TNerveBGPolDropFv@h # TNerveBGPolDrop::~TNerveBGPolDrop((void))
stw	  r0, -0x6E04(r13)
addi	  r4, r3, __dt__15TNerveBGPolDropFv@l #	TNerveBGPolDrop::~TNerveBGPolDrop((void))
addi	  r3, r13, -0x6E04
addi	  r5, r30, 0x54
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E08(r13)

branch_0x80078B40:
addi	  r0, r13, -0x6E04
cmplw	  r28, r0
beq	  def_80078888	# jumptable 80078888 default case
lwz	  r3, 0x8C(r31)
lwz	  r28, 0x14(r3)
cmplwi	  r28, 0
beq	  branch_0x80078B60
b	  branch_0x80078B64

branch_0x80078B60:
lwz	  r28, 0x1C(r3)

branch_0x80078B64:
lbz	  r0, -0x6E10(r13)
extsb.	  r0, r0
bne	  branch_0x80078BA4
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A38@h
stw	  r0, -0x6E0C(r13)
addi	  r0, r3, unk_803B2A38@l
lis	  r3, __dt__15TNerveBGPolluteFv@h # TNerveBGPollute::~TNerveBGPollute((void))
stw	  r0, -0x6E0C(r13)
addi	  r4, r3, __dt__15TNerveBGPolluteFv@l #	TNerveBGPollute::~TNerveBGPollute((void))
addi	  r3, r13, -0x6E0C
addi	  r5, r30, 0x48
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E10(r13)

branch_0x80078BA4:
addi	  r0, r13, -0x6E0C
cmplw	  r28, r0
beq	  def_80078888	# jumptable 80078888 default case
lwz	  r3, 0x8C(r31)
lwz	  r28, 0x14(r3)
cmplwi	  r28, 0
beq	  branch_0x80078BC4
b	  branch_0x80078BC8

branch_0x80078BC4:
lwz	  r28, 0x1C(r3)

branch_0x80078BC8:
lbz	  r0, -0x6E28(r13)
extsb.	  r0, r0
bne	  branch_0x80078C08
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A68@h
stw	  r0, -0x6E24(r13)
addi	  r0, r3, unk_803B2A68@l
lis	  r3, __dt__22TNerveBGTentacleDamageFv@h # TNerveBGTentacleDamage::~TNerveBGTentacleDamage((void))
stw	  r0, -0x6E24(r13)
addi	  r4, r3, __dt__22TNerveBGTentacleDamageFv@l # TNerveBGTentacleDamage::~TNerveBGTentacleDamage((void))
addi	  r3, r13, -0x6E24
addi	  r5, r30, 0x24
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E28(r13)

branch_0x80078C08:
addi	  r0, r13, -0x6E24
cmplw	  r28, r0
beq	  def_80078888	# jumptable 80078888 default case
lwz	  r3, 0x8C(r31)
lwz	  r28, 0x14(r3)
cmplwi	  r28, 0
beq	  branch_0x80078C28
b	  branch_0x80078C2C

branch_0x80078C28:
lwz	  r28, 0x1C(r3)

branch_0x80078C2C:
lbz	  r0, -0x6E38(r13)
extsb.	  r0, r0
bne	  branch_0x80078C6C
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A88@h
stw	  r0, -0x6E34(r13)
addi	  r0, r3, unk_803B2A88@l
lis	  r3, __dt__17TNerveBGEyeDamageFv@h # TNerveBGEyeDamage::~TNerveBGEyeDamage((void))
stw	  r0, -0x6E34(r13)
addi	  r4, r3, __dt__17TNerveBGEyeDamageFv@l	# TNerveBGEyeDamage::~TNerveBGEyeDamage((void))
addi	  r3, r13, -0x6E34
addi	  r5, r30, 0xC
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E38(r13)

branch_0x80078C6C:
addi	  r0, r13, -0x6E34
cmplw	  r28, r0
beq	  def_80078888	# jumptable 80078888 default case
lwz	  r3, 0x8C(r31)
lwz	  r28, 0x14(r3)
cmplwi	  r28, 0
beq	  branch_0x80078C8C
b	  branch_0x80078C90

branch_0x80078C8C:
lwz	  r28, 0x1C(r3)

branch_0x80078C90:
lbz	  r0, -0x6E30(r13)
extsb.	  r0, r0
bne	  branch_0x80078CD0
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A78@h
stw	  r0, -0x6E2C(r13)
addi	  r0, r3, unk_803B2A78@l
lis	  r3, __dt__18TNerveBGBeakDamageFv@h # TNerveBGBeakDamage::~TNerveBGBeakDamage((void))
stw	  r0, -0x6E2C(r13)
addi	  r4, r3, __dt__18TNerveBGBeakDamageFv@l # TNerveBGBeakDamage::~TNerveBGBeakDamage((void))
addi	  r3, r13, -0x6E2C
addi	  r5, r30, 0x18
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E30(r13)

branch_0x80078CD0:
addi	  r0, r13, -0x6E2C
cmplw	  r28, r0
beq	  def_80078888	# jumptable 80078888 default case
lwz	  r3, 0x8C(r31)
li	  r0, 0
stw	  r0, 8(r3)
lbz	  r0, -0x6E08(r13)
extsb.	  r0, r0
bne	  branch_0x80078D28
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A28@h
stw	  r0, -0x6E04(r13)
addi	  r0, r3, unk_803B2A28@l
lis	  r3, __dt__15TNerveBGPolDropFv@h # TNerveBGPolDrop::~TNerveBGPolDrop((void))
stw	  r0, -0x6E04(r13)
addi	  r4, r3, __dt__15TNerveBGPolDropFv@l #	TNerveBGPolDrop::~TNerveBGPolDrop((void))
addi	  r3, r13, -0x6E04
addi	  r5, r30, 0x54
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E08(r13)

branch_0x80078D28:
lwz	  r4, 0x8C(r31)
addi	  r3, r13, -0x6E04
lwz	  r0, 0x14(r4)
cmplwi	  r0, 0
beq	  branch_0x80078D40
stw	  r0, 0x1C(r4)

branch_0x80078D40:
li	  r0, 0
stw	  r0, 0x20(r4)
stw	  r3, 0x14(r4)
lbz	  r0, -0x6E40(r13)
extsb.	  r0, r0
bne	  branch_0x80078D8C
lis	  r3, unk_803AB70C@ha
addi	  r0, r3, unk_803AB70C@l
lis	  r3, unk_803B2A98@h
stw	  r0, -0x6E3C(r13)
addi	  r0, r3, unk_803B2A98@l
lis	  r3, __dt__12TNerveBGWaitFv@h # TNerveBGWait::~TNerveBGWait((void))
stw	  r0, -0x6E3C(r13)
addi	  r4, r3, __dt__12TNerveBGWaitFv@l # TNerveBGWait::~TNerveBGWait((void))
addi	  r3, r13, -0x6E3C
addi	  r5, r30, 0
bl	  __register_global_object
li	  r0, 1
stb	  r0, -0x6E40(r13)

branch_0x80078D8C:
addi	  r5, r13, -0x6E3C
lwz	  r4, 0x8C(r31)
cmplwi	  r5, 0
beq	  branch_0x80078DC4
lwz	  r6, 8(r4)
lwz	  r0, 4(r4)
cmpw	  r6, r0
bge	  branch_0x80078DC4
lwz	  r3, 0xC(r4)
slwi	  r0, r6, 2
stwx	  r5, r3, r0
lwz	  r3, 8(r4)
addi	  r0, r3, 1
stw	  r0, 8(r4)

branch_0x80078DC4:
li	  r28, 0
li	  r29, 0

branch_0x80078DCC:
addi	  r0, r29, 0x150
lwzx	  r3, r31, r0
lwz	  r4, 0x10(r3)
cmpwi	  r4, 5
beq	  branch_0x80078E10
cmpwi	  r4, 6
beq	  branch_0x80078DF4
addi	  r0, r4, -3
cmplwi	  r0, 1
bgt	  branch_0x80078DFC

branch_0x80078DF4:
li	  r0, 1
b	  branch_0x80078E00

branch_0x80078DFC:
li	  r0, 0

branch_0x80078E00:
cmpwi	  r0, 0
bne	  branch_0x80078E10
li	  r4, 8
bl	  changeStateAndFixNodes__11TBGTentacleFi # TBGTentacle::changeStateAndFixNodes((int))

branch_0x80078E10:
addi	  r28, r28, 1
cmpwi	  r28, 4
addi	  r29, r29, 4
blt	  branch_0x80078DCC
b	  def_80078888	# jumptable 80078888 default case

branch_0x80078E24:		# jumptable 80078888 case 6
lwz	  r3, 0x150(r31)
li	  r4, 9
bl	  changeStateAndFixNodes__11TBGTentacleFi # TBGTentacle::changeStateAndFixNodes((int))

def_80078888:		# jumptable 80078888 default case
branch_0x80078e30:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    lwz     r28, 0x98(sp)
    addi    sp, sp, 0xa8
    blr


.globl stopIfRoll__10TBossGessoFv
stopIfRoll__10TBossGessoFv: # 0x80078e50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    stw     r30, 0x30(sp)
    stw     r29, 0x2c(sp)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x80078f50
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      changeAttackMode__10TBossGessoFi
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x80078ed4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e3c(r13)
    addi    r0, r3, 0x2a98
    lis     r4, 0x8007
    stw     r0, -0x6e3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xb88
    addi    r4, r4, 0x5620
    subi    r3, r13, 0x6e3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x80078ed4:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6e3c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80078eec
    stw     r0, 0x1c(r4)
branch_0x80078eec:
    li      r29, 0x0
    stw     r29, 0x20(r4)
    mr      r30, r29
    stw     r3, 0x14(r4)
branch_0x80078efc:
    addi    r0, r30, 0x150
    lwzx    r3, r31, r0
    lwz     r4, 0x10(r3)
    cmpwi   r4, 0x5
    beq-    branch_0x80078f40
    cmpwi   r4, 0x6
    beq-    branch_0x80078f24
    subi    r0, r4, 0x3
    cmplwi  r0, 0x1
    bgt-    branch_0x80078f2c
branch_0x80078f24:
    li      r0, 0x1
    b       branch_0x80078f30

branch_0x80078f2c:
    li      r0, 0x0
branch_0x80078f30:
    cmpwi   r0, 0x0
    bne-    branch_0x80078f40
    li      r4, 0x0
    bl      changeStateAndFixNodes__11TBGTentacleFi
branch_0x80078f40:
    addi    r29, r29, 0x1
    cmpwi   r29, 0x4
    addi    r30, r30, 0x4
    blt+    branch_0x80078efc
branch_0x80078f50:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl is2ndFightNow__10TBossGessoCFv
is2ndFightNow__10TBossGessoCFv: # 0x80078f6c
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80078f84
    li      r3, 0x1
    blr

branch_0x80078f84:
    li      r3, 0x0
    blr


.globl showMessage__10TBossGessoFUl
showMessage__10TBossGessoFUl: # 0x80078f8c
    mflr    r0
    cmplwi  r4, 0x25
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bne-    branch_0x80078fb4
    li      r3, 0x3
    b       branch_0x80078fb8

branch_0x80078fb4:
    subi    r3, r4, 0x3
branch_0x80078fb8:
    cmplwi  r4, 0x3
    bne-    branch_0x80078fc8
    li      r31, 0x0
    b       branch_0x80078fd0

branch_0x80078fc8:
    li      r0, 0x1
    slw     r31, r0, r3
branch_0x80078fd0:
    lwz     r0, 0x198(r30)
    and.    r0, r0, r31
    bne-    branch_0x80078fec
    lwz     r3, gpMarDirector(r13)
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x80078fec:
    lwz     r0, 0x198(r30)
    or      r0, r0, r31
    stw     r0, 0x198(r30)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl lenFromToeToMario__10TBossGessoFv
lenFromToeToMario__10TBossGessoFv: # 0x80079010
    stwu    sp, -0x48(sp)
    li      r0, 0x2
    mtctr   r0
    li      r7, 0x0
    lfs     f1, -0x6a04(rtoc)
    lfs     f5, -0x6a88(rtoc)
    li      r4, 0x0
    lfs     f4, -0x6a64(rtoc)
    lfs     f2, -0x6a60(rtoc)
branch_0x80079034:
    addi    r0, r4, 0x150
    lwzx    r6, r3, r0
    lwz     r0, 0x10(r6)
    cmpwi   r0, 0x4
    beq-    branch_0x80079050
    cmpwi   r0, 0x6
    bne-    branch_0x80079058
branch_0x80079050:
    li      r0, 0x1
    b       branch_0x8007905c

branch_0x80079058:
    li      r0, 0x0
branch_0x8007905c:
    cmpwi   r0, 0x0
    bne-    branch_0x800790e4
    lwz     r5, 0x20(r6)
    lwz     r6, 0x24(r6)
    subi    r0, r5, 0x1
    mulli   r0, r0, 0x28
    add     r6, r6, r0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x38(sp)
    lfs     f0, 0x34(sp)
    lfs     f6, 0x38(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x30(sp)
    fmuls   f6, f6, f6
    fmadds  f0, f3, f3, f0
    fadds   f6, f6, f0
    fcmpo   cr0, f6, f5
    cror    2, 0, 2
    bne-    branch_0x800790bc
    b       branch_0x800790d8

branch_0x800790bc:
    frsqrte f3, f6
    frsp    f3, f3
    fmuls   f0, f3, f3
    fmuls   f3, f4, f3
    fnmsubs  f0, f6, f0, f2
    fmuls   f0, f3, f0
    fmuls   f6, f6, f0
branch_0x800790d8:
    fcmpo   cr0, f6, f1
    bge-    branch_0x800790e4
    fmr     f1, f6
branch_0x800790e4:
    addi    r0, r4, 0x154
    lwzx    r6, r3, r0
    addi    r4, r4, 0x4
    lwz     r0, 0x10(r6)
    cmpwi   r0, 0x4
    beq-    branch_0x80079104
    cmpwi   r0, 0x6
    bne-    branch_0x8007910c
branch_0x80079104:
    li      r0, 0x1
    b       branch_0x80079110

branch_0x8007910c:
    li      r0, 0x0
branch_0x80079110:
    cmpwi   r0, 0x0
    bne-    branch_0x80079198
    lwz     r5, 0x20(r6)
    lwz     r6, 0x24(r6)
    subi    r0, r5, 0x1
    mulli   r0, r0, 0x28
    add     r6, r6, r0
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    stw     r5, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x38(sp)
    lfs     f0, 0x34(sp)
    lfs     f6, 0x38(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x30(sp)
    fmuls   f6, f6, f6
    fmadds  f0, f3, f3, f0
    fadds   f6, f6, f0
    fcmpo   cr0, f6, f5
    cror    2, 0, 2
    bne-    branch_0x80079170
    b       branch_0x8007918c

branch_0x80079170:
    frsqrte f3, f6
    frsp    f3, f3
    fmuls   f0, f3, f3
    fmuls   f3, f4, f3
    fnmsubs  f0, f6, f0, f2
    fmuls   f0, f3, f0
    fmuls   f6, f6, f0
branch_0x8007918c:
    fcmpo   cr0, f6, f1
    bge-    branch_0x80079198
    fmr     f1, f6
branch_0x80079198:
    addi    r7, r7, 0x1
    addi    r4, r4, 0x4
    bdnz+      branch_0x80079034
    addi    sp, sp, 0x48
    blr


.globl rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_
rumblePad__10TBossGessoFiRCQ29JGeometry8TVec3_f_: # 0x800791ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    addi    r29, r3, 0x0
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x800792f0
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x20(sp)
    stw     r0, 0x24(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f0, 0x0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x20(sp)
    lfs     f1, 0x24(sp)
    lfs     f0, 0x4(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x24(sp)
    lfs     f1, 0x28(sp)
    lfs     f0, 0x8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x28(sp)
    lfs     f1, 0x20(sp)
    lfs     f3, 0x28(sp)
    lfs     f0, 0x24(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x6a88(rtoc)
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8007925c
    b       branch_0x80079280

branch_0x8007925c:
    frsqrte f3, f4
    lfs     f2, -0x6a64(rtoc)
    lfs     f0, -0x6a60(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x80079280:
    lfs     f0, -0x6a50(rtoc)
    lfs     f1, -0x6a00(rtoc)
    fsubs   f2, f0, f4
    lfs     f0, -0x6a88(rtoc)
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x800792f0
    lfs     f0, -0x6a98(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800792ac
    fmr     f1, f0
branch_0x800792ac:
    cmpwi   r30, 0x1
    beq-    branch_0x800792d4
    bge-    branch_0x800792dc
    cmpwi   r30, 0x0
    bge-    branch_0x800792c8
    b       branch_0x800792dc
    b       branch_0x800792dc

branch_0x800792c8:
    lfs     f0, -0x69fc(rtoc)
    fmuls   f1, f1, f0
    b       branch_0x800792dc

branch_0x800792d4:
    lfs     f0, -0x69f8(rtoc)
    fmuls   f1, f1, f0
branch_0x800792dc:
    stfs    f1, 0x1a4(r29)
    addi    r5, r29, 0x1a4
    li      r4, 0x8
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
branch_0x800792f0:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl init__10TBossGessoFP12TLiveManager
init__10TBossGessoFP12TLiveManager: # 0x8007930c
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x250(sp)
    stmw    r27, 0x23c(sp)
    mr      r31, r3
    subi    r30, r5, 0x5ed8
    stw     r4, 0x70(r3)
    addi    r4, r31, 0x0
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    li      r3, 0x18
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80079358
    lwz     r4, 0x70(r31)
    addi    r3, r27, 0x0
    li      r5, 0xf
    bl      __ct__13TMActorKeeperFP12TLiveManagerUs
branch_0x80079358:
    stw     r27, 0x78(r31)
    addi    r4, r30, 0x2a0
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x74(r31)
    li      r27, 0x0
    li      r28, 0x0
branch_0x80079378:
    li      r3, 0xa4
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x8007939c
    addi    r3, r29, 0x0
    addi    r4, r31, 0x0
    addi    r6, r27, 0x0
    li      r5, 0x6
    bl      __ct__11TBGTentacleFP10TBossGessoii
branch_0x8007939c:
    addi    r27, r27, 0x1
    addi    r0, r28, 0x150
    cmpwi   r27, 0x4
    stwx    r29, r31, r0
    addi    r28, r28, 0x4
    blt+    branch_0x80079378
    li      r3, 0xb0
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80079514
    stw     r29, 0x228(sp)
    mr      r3, r29
    addi    r4, r30, 0x824
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r29)
    addi    r0, r3, 0x24
    lis     r3, 0x803b
    stw     r0, 0x20(r29)
    li      r4, 0x0
    addi    r3, r3, 0x2dac
    stw     r4, 0x68(r29)
    addi    r0, r3, 0x24
    stw     r4, 0x6c(r29)
    lwz     r28, 0x228(sp)
    stw     r3, 0x0(r28)
    addi    r3, r28, 0x74
    stw     r0, 0x20(r28)
    stw     r31, 0x70(r28)
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lwz     r4, -0x5db8(r13)
    addi    r3, r30, 0x838
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x838
    mtlr    r12
    blrl
    addi    r27, r3, 0x10
    addi    r4, r27, 0x0
    addi    r3, sp, 0x138
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x138(sp)
    addi    r4, sp, 0x134
    addi    r3, sp, 0x1e4
    stw     r0, 0x134(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1e4(sp)
    addi    r5, sp, 0x184
    addi    r4, r27, 0x0
    stw     r0, 0x1e0(sp)
    addi    r3, sp, 0x180
    addi    r6, sp, 0x228
    lwz     r0, 0x1e0(sp)
    stw     r0, 0x184(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x180(sp)
    addi    r3, sp, 0x1dc
    addi    r4, sp, 0x17c
    stw     r0, 0x17c(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x70(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x70(r28)
    addi    r27, r3, 0x158
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6a88(rtoc)
    lis     r4, 0x800
    lfs     f3, 0x16c(r3)
    addi    r3, r28, 0x0
    fmr     f2, f1
    lfs     f4, 0x0(r27)
    addi    r4, r4, 0x8
    li      r5, 0x1
    lis     r6, 0x8000
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r28)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r28)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xac(r28)
    stfs    f0, 0xa8(r28)
    stfs    f0, 0xa4(r28)
branch_0x80079514:
    stw     r29, 0x160(r31)
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80079648
    stw     r28, 0x220(sp)
    subi    r4, rtoc, 0x69f4
    lwz     r3, 0x220(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    lwz     r29, 0x220(sp)
    addi    r3, r3, 0x2d08
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x7
    stw     r3, 0x20(r29)
    addi    r3, r30, 0x838
    stw     r31, 0x68(r29)
    stw     r0, 0x6c(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x838
    mtlr    r12
    blrl
    addi    r27, r3, 0x10
    addi    r4, r27, 0x0
    addi    r3, sp, 0x130
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x130(sp)
    addi    r4, sp, 0x12c
    addi    r3, sp, 0x1d0
    stw     r0, 0x12c(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1d0(sp)
    addi    r5, sp, 0x170
    addi    r4, r27, 0x0
    stw     r0, 0x1cc(sp)
    addi    r3, sp, 0x16c
    addi    r6, sp, 0x220
    lwz     r0, 0x1cc(sp)
    stw     r0, 0x170(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x16c(sp)
    addi    r3, sp, 0x1c8
    addi    r4, sp, 0x168
    stw     r0, 0x168(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r29)
    addi    r27, r3, 0x298
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6a88(rtoc)
    lis     r4, 0x800
    lfs     f3, 0x284(r3)
    addi    r3, r29, 0x0
    fmr     f2, f1
    lfs     f4, 0x0(r27)
    addi    r4, r4, 0x9
    li      r5, 0x1
    lis     r6, 0x100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x80079648:
    stw     r28, 0x170(r31)
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x8007977c
    stw     r28, 0x218(sp)
    subi    r4, rtoc, 0x69f4
    lwz     r3, 0x218(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    lwz     r29, 0x218(sp)
    addi    r3, r3, 0x2d08
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x4
    stw     r3, 0x20(r29)
    addi    r3, r30, 0x838
    stw     r31, 0x68(r29)
    stw     r0, 0x6c(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x838
    mtlr    r12
    blrl
    addi    r27, r3, 0x10
    addi    r4, r27, 0x0
    addi    r3, sp, 0x128
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x128(sp)
    addi    r4, sp, 0x124
    addi    r3, sp, 0x1bc
    stw     r0, 0x124(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1bc(sp)
    addi    r5, sp, 0x15c
    addi    r4, r27, 0x0
    stw     r0, 0x1b8(sp)
    addi    r3, sp, 0x158
    addi    r6, sp, 0x218
    lwz     r0, 0x1b8(sp)
    stw     r0, 0x15c(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x158(sp)
    addi    r3, sp, 0x1b4
    addi    r4, sp, 0x154
    stw     r0, 0x154(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r29)
    addi    r27, r3, 0x298
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x6a88(rtoc)
    lis     r4, 0x800
    lfs     f3, 0x284(r3)
    addi    r3, r29, 0x0
    fmr     f2, f1
    lfs     f4, 0x0(r27)
    addi    r4, r4, 0x9
    li      r5, 0x1
    lis     r6, 0x100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x8007977c:
    stw     r28, 0x174(r31)
    li      r3, 0x70
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80079880
    stw     r28, 0x210(sp)
    subi    r4, rtoc, 0x69f0
    lwz     r3, 0x210(sp)
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803b
    lwz     r29, 0x210(sp)
    addi    r3, r3, 0x2c64
    stw     r3, 0x0(r29)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r29)
    addi    r3, r30, 0x838
    stw     r31, 0x68(r29)
    stw     r0, 0x6c(r29)
    lwz     r4, -0x5db8(r13)
    lwz     r27, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r27)
    addi    r4, r3, 0x0
    addi    r3, r27, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x838
    mtlr    r12
    blrl
    addi    r27, r3, 0x10
    addi    r4, r27, 0x0
    addi    r3, sp, 0x120
    bl      end__Q27JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__Fv
    lwz     r0, 0x120(sp)
    addi    r4, sp, 0x11c
    addi    r3, sp, 0x1a8
    stw     r0, 0x11c(sp)
    bl      __ct__Q37JGadget26TList_pointer_P9THitActor_8iteratorFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x1a8(sp)
    addi    r5, sp, 0x148
    addi    r4, r27, 0x0
    stw     r0, 0x1a4(sp)
    addi    r3, sp, 0x144
    addi    r6, sp, 0x210
    lwz     r0, 0x1a4(sp)
    stw     r0, 0x148(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x144(sp)
    addi    r3, sp, 0x1a0
    addi    r4, sp, 0x140
    stw     r0, 0x140(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lfs     f1, -0x69e8(rtoc)
    lis     r4, 0x800
    addi    r3, r29, 0x0
    fmr     f2, f1
    addi    r4, r4, 0x5
    fmr     f3, f1
    li      r5, 0x1
    fmr     f4, f1
    lis     r6, 0x8100
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
branch_0x80079880:
    stw     r28, 0x184(r31)
    lis     r4, 0x800
    addi    r3, r31, 0x0
    lfs     f1, -0x69e8(rtoc)
    addi    r4, r4, 0x5
    li      r5, 0x5
    fmr     f2, f1
    lis     r6, 0x8100
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x800798fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e3c(r13)
    addi    r0, r3, 0x2a98
    lis     r4, 0x8007
    stw     r0, -0x6e3c(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xb88
    addi    r4, r4, 0x5620
    subi    r3, r13, 0x6e3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x800798fc:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    subi    r0, r13, 0x6e3c
    stw     r4, 0x8(r5)
    li      r3, 0x70
    stw     r4, 0x20(r5)
    stw     r0, 0x14(r5)
    stw     r0, 0x18(r5)
    stw     r4, 0x1c(r5)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80079980
    addi    r28, r27, 0x68
    lis     r3, 0x803b
    stw     r28, 0x0(r27)
    subi    r0, r3, 0xf38
    stw     r0, 0x68(r27)
    addi    r3, r27, 0x0
    li      r4, 0x0
    li      r5, 0x1
    bl      __ct__24M3UMtxCalcSIAnmBlendQuatFb
    lis     r3, 0x803b
    addi    r3, r3, 0x2c20
    stw     r3, 0x4c(r27)
    addi    r0, r3, 0x24
    lwz     r3, 0x0(r27)
    stw     r0, 0x0(r3)
    lwz     r3, 0x0(r27)
    subf    r0, r3, r28
    stw     r0, 0x4(r3)
    stw     r31, 0x64(r27)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x50(r27)
branch_0x80079980:
    stw     r27, 0x164(r31)
    lwz     r4, 0x164(r31)
    cmplwi  r4, 0x0
    beq-    branch_0x80079994
    lwz     r4, 0x0(r4)
branch_0x80079994:
    lwz     r3, 0x74(r31)
    lwz     r3, 0xc(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x800799b0
    stw     r4, 0x38(r3)
    li      r0, 0x3
    stb     r0, 0x2a(r3)
branch_0x800799b0:
    lwz     r3, 0x74(r31)
    bl      calc__6MActorFv
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setLightType__6MActorFi
    lwz     r3, 0x78(r31)
    addi    r4, r30, 0x2d0
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x178(r31)
    li      r3, 0x5c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x800799f4
    addi    r3, r27, 0x0
    addi    r4, r30, 0x844
    bl      __ct__10TBGPolDropFPCc
branch_0x800799f4:
    stw     r27, 0x180(r31)
    addi    r4, r30, 0x2fc
    li      r5, 0x0
    lwz     r3, 0x78(r31)
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r0, 0x78(r31)
    addi    r28, r3, 0x0
    addi    r4, r30, 0x2e8
    mr      r3, r0
    li      r5, 0x0
    bl      createMActor__13TMActorKeeperFPCcUl
    lwz     r4, 0x180(r31)
    stw     r3, 0x50(r4)
    li      r3, 0x10
    stw     r28, 0x54(r4)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80079a80
    stw     r31, 0x0(r27)
    li      r0, 0x0
    addi    r4, r30, 0x318
    stw     r0, 0x4(r27)
    li      r5, 0x0
    stw     r0, 0x8(r27)
    stw     r0, 0xc(r27)
    lwz     r3, 0x0(r27)
    lwz     r3, 0x78(r3)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x4(r27)
    addi    r4, r30, 0x328
    li      r5, 0x0
    lwz     r3, 0x0(r27)
    lwz     r3, 0x78(r3)
    bl      createMActor__13TMActorKeeperFPCcUl
    stw     r3, 0x8(r27)
branch_0x80079a80:
    stw     r27, 0x18c(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r0, 0x8c(r3)
    addi    r27, r3, 0x0
    cmplwi  r0, 0x0
    bne-    branch_0x80079ac4
    li      r3, 0x14
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80079ab4
    mr      r3, r28
    bl      __ct__13J3DSkinDeformFv
branch_0x80079ab4:
    addi    r4, r28, 0x0
    addi    r3, r27, 0x0
    li      r5, 0x1
    bl      setSkinDeform__8J3DModelFP13J3DSkinDeform19J3DDeformAttachFlag
branch_0x80079ac4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80079b10
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lbz     r0, 0x7c(r3)
    b       branch_0x80079b14

branch_0x80079b10:
    li      r0, 0x1
branch_0x80079b14:
    stb     r0, 0x13c(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf0(r31)
    lwz     r3, 0x74(r31)
    bl      offMakeDL__6MActorFv
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lfs     f0, -0x69e4(rtoc)
    stfs    f0, 0xb8(r31)
    bl      initAnmSound__10TLiveActorFv
    li      r3, 0x0
    stb     r3, 0x190(r31)
    li      r0, 0xe6
    addi    r5, r31, 0x190
    stb     r3, 0x191(r31)
    li      r4, 0x0
    stb     r3, 0x192(r31)
    stb     r0, 0x193(r31)
    lwz     r3, 0x74(r31)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x28(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x38(r12)
    mtlr    r12
    blrl
    addi    r3, r30, 0x854
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    beq-    branch_0x80079bb8
    lwz     r6, 0x74(r31)
    addi    r5, r3, 0x0
    addi    r4, r30, 0x878
    lwz     r3, 0x4(r6)
    lwz     r3, 0x4(r3)
    bl      SMS_ChangeTextureAll__FP12J3DModelDataPCcRC7ResTIMG
branch_0x80079bb8:
    lmw     r27, 0x23c(sp)
    lwz     r0, 0x254(sp)
    addi    sp, sp, 0x250
    mtlr    r0
    blr


.globl __ct__10TBossGessoFPCc
__ct__10TBossGessoFPCc: # 0x80079bcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__11TSpineEnemyFPCc
    lis     r3, 0x803b
    lwz     r4, 0x8(sp)
    addi    r3, r3, 0x2afc
    stw     r3, 0x0(r4)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r4)
    li      r3, 0x4
    stw     r0, 0x160(r4)
    stw     r0, 0x164(r4)
    stw     r0, 0x168(r4)
    stw     r0, 0x16c(r4)
    stw     r0, 0x178(r4)
    stb     r0, 0x17c(r4)
    stw     r0, 0x180(r4)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x188(r4)
    stw     r0, 0x18c(r4)
    stb     r0, 0x194(r4)
    stb     r0, 0x195(r4)
    stb     r0, 0x196(r4)
    stw     r0, 0x198(r4)
    stw     r0, 0x19c(r4)
    stb     r0, 0x1a0(r4)
    stb     r0, 0x1a1(r4)
    stfs    f0, 0x1a4(r4)
    stw     r0, 0x1a8(r4)
    sth     r0, 0x1ac(r4)
    sth     r0, 0x1ae(r4)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x80079c7c
    mr      r3, r31
    bl      __ct__7TBinderFv
    lis     r3, 0x803b
    addi    r0, r3, 0x2c10
    stw     r0, 0x0(r31)
branch_0x80079c7c:
    lwz     r3, 0x8(sp)
    stw     r31, 0x88(r3)
    lfs     f0, -0x6a0c(rtoc)
    stfs    f0, 0x144(r3)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl bind__9TBGBinderFP10TLiveActor
bind__9TBGBinderFP10TLiveActor: # 0x80079ca0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stfd    f31, 0xf8(sp)
    stfd    f30, 0xf0(sp)
    stfd    f29, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r4
    stw     r30, 0xe0(sp)
    lwz     r3, 0x94(r4)
    lwz     r0, 0x98(r4)
    stw     r3, 0xd0(sp)
    stw     r0, 0xd4(sp)
    lwz     r0, 0x9c(r4)
    stw     r0, 0xd8(sp)
    lwz     r3, 0x10(r4)
    lwz     r0, 0x14(r4)
    lfs     f1, 0xd0(sp)
    stw     r3, 0xc4(sp)
    lfs     f0, 0xd4(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0x18(r4)
    stw     r0, 0xcc(sp)
    lfs     f2, 0xc4(sp)
    fadds   f1, f2, f1
    stfs    f1, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xd8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lwz     r0, 0xf0(r4)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80079d38
    li      r0, 0x1
    b       branch_0x80079d3c

branch_0x80079d38:
    li      r0, 0x0
branch_0x80079d3c:
    cmpwi   r0, 0x0
    beq-    branch_0x80079dd8
    lwz     r4, 0xac(r31)
    mr      r3, r31
    lwz     r0, 0xb0(r31)
    lfs     f1, 0xc4(sp)
    stw     r4, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0xc0(sp)
    lfs     f0, 0xb8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc4(sp)
    lfs     f1, 0xc8(sp)
    lfs     f0, 0xbc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xc8(sp)
    lfs     f1, 0xcc(sp)
    lfs     f0, 0xc0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xcc(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0xbc(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xbc(sp)
    lfs     f1, -0x7738(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80079dc0
    stfs    f1, 0xbc(sp)
branch_0x80079dc0:
    lwz     r3, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xc0(sp)
    stw     r0, 0xb4(r31)
branch_0x80079dd8:
    lbz     r0, -0x6e18(r13)
    extsb.  r0, r0
    bne-    branch_0x80079e1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e14(r13)
    addi    r0, r3, 0x2a48
    lis     r4, 0x8007
    stw     r0, -0x6e14(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0xbc4
    addi    r4, r4, 0x3ed4
    subi    r3, r13, 0x6e14
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e18(r13)
branch_0x80079e1c:
    lwz     r4, 0x8c(r31)
    subi    r0, r13, 0x6e14
    lwz     r3, 0x14(r4)
    cmplwi  r3, 0x0
    beq-    branch_0x80079e34
    b       branch_0x80079e38

branch_0x80079e34:
    lwz     r3, 0x1c(r4)
branch_0x80079e38:
    cmplw   r3, r0
    bne-    branch_0x80079fc0
    lwz     r3, 0x74(r31)
    li      r4, 0x6
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    beq-    branch_0x80079fc0
    lwz     r0, 0xc4(sp)
    addi    r3, sp, 0x4c
    lwz     r5, 0xc8(sp)
    addi    r4, r31, 0x10
    stw     r0, 0x4c(sp)
    lwz     r0, 0xcc(sp)
    stw     r5, 0x50(sp)
    stw     r0, 0x54(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x4c(sp)
    lwz     r0, 0x50(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x54(sp)
    stw     r0, 0x9c(r31)
    lwz     r3, gpMarDirector(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x9
    beq-    branch_0x8007a0e4
    lfs     f1, 0x14(r31)
    lfs     f2, 0xc8(sp)
    lfs     f0, -0x6a88(rtoc)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007a0e4
    lfs     f1, 0x148(r31)
    addi    r4, sp, 0xb4
    lfs     f0, 0xc0(r31)
    lfs     f31, 0xcc(sp)
    fmuls   f0, f1, f0
    lwz     r3, gpMap(r13)
    fmr     f3, f31
    lfs     f1, 0xc4(sp)
    fadds   f2, f2, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f2, 0x148(r31)
    fmr     f3, f31
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0xb0
    lfs     f4, -0x6a98(rtoc)
    fmuls   f2, f2, f0
    lfs     f0, 0x14(r31)
    fadds   f30, f1, f4
    lwz     r3, gpMap(r13)
    fadds   f2, f0, f2
    lfs     f1, 0xc4(sp)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x6a98(rtoc)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f30
    ble-    branch_0x8007a0e4
    lis     r4, 0x8038
    lwz     r3, -0x70b0(r13)
    subi    r5, r4, 0x5650
    addi    r4, r31, 0x10
    li      r6, 0x1
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r30, r3
    beq-    branch_0x80079f74
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2e8(r3)
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    stfs    f0, 0xa4(sp)
    addi    r5, sp, 0xa4
    stfs    f0, 0xa8(sp)
    stfs    f0, 0xac(sp)
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x80079f74:
    lwz     r3, gpMSound(r13)
    li      r4, 0x286a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80079fa4
    addi    r4, r31, 0x10
    li      r3, 0x286a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80079fa4:
    lfs     f0, -0x6a98(rtoc)
    addi    r5, r31, 0x1a4
    li      r4, 0x8
    stfs    f0, 0x1a4(r31)
    lwz     r3, -0x60f0(r13)
    bl      start__9RumbleMgrFiPf
    b       branch_0x8007a0e4

branch_0x80079fc0:
    lfs     f1, 0x148(r31)
    addi    r4, sp, 0xa0
    lfs     f0, 0xc0(r31)
    lfs     f30, 0xcc(sp)
    fmuls   f0, f1, f0
    lfs     f31, 0xc8(sp)
    fmr     f3, f30
    lwz     r3, gpMap(r13)
    lfs     f1, 0xc4(sp)
    fadds   f2, f31, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f4, 0x14(r31)
    lfs     f3, -0x6a98(rtoc)
    fsubs   f2, f4, f31
    lfs     f0, -0x6a88(rtoc)
    fadds   f29, f1, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8007a048
    lfs     f1, 0x148(r31)
    fmr     f3, f30
    lfs     f0, 0xc0(r31)
    addi    r4, sp, 0x9c
    lwz     r3, gpMap(r13)
    fmuls   f0, f1, f0
    lfs     f1, 0xc4(sp)
    fadds   f2, f4, f0
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    lfs     f0, -0x6a98(rtoc)
    fadds   f0, f1, f0
    fcmpo   cr0, f0, f29
    ble-    branch_0x8007a048
    lwz     r0, 0x9c(sp)
    fmr     f29, f0
    stw     r0, 0xa0(sp)
branch_0x8007a048:
    fcmpo   cr0, f31, f29
    cror    2, 0, 2
    bne-    branch_0x8007a090
    stfs    f29, 0xc8(sp)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x80(sp)
    lwz     r3, 0x78(sp)
    lwz     r0, 0x7c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x80(sp)
    stw     r0, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
    b       branch_0x8007a09c

branch_0x8007a090:
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
branch_0x8007a09c:
    stfs    f29, 0xc8(r31)
    addi    r3, sp, 0x40
    addi    r4, r31, 0x10
    lwz     r0, 0xa0(sp)
    stw     r0, 0xc4(r31)
    lwz     r0, 0xc4(sp)
    lwz     r5, 0xc8(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0xcc(sp)
    stw     r5, 0x44(sp)
    stw     r0, 0x48(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x40(sp)
    lwz     r0, 0x44(sp)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x48(sp)
    stw     r0, 0x9c(r31)
branch_0x8007a0e4:
    lwz     r0, 0x104(sp)
    lfd     f31, 0xf8(sp)
    lfd     f30, 0xf0(sp)
    mtlr    r0
    lfd     f29, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    addi    sp, sp, 0x100
    blr


.globl calc__17TBossGessoMtxCalcFUs
calc__17TBossGessoMtxCalcFUs: # 0x8007a108
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    bl      calc__24M3UMtxCalcSIAnmBlendQuatFUs
    clrlwi  r0, r30, 16
    cmplwi  r0, 0x1a
    bne-    branch_0x8007a2d4
    lwz     r3, 0x64(r29)
    lwz     r31, 0x160(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x8007a27c
    lwz     r0, 0x68(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8007a160
    li      r0, 0x1
    b       branch_0x8007a164

branch_0x8007a160:
    li      r0, 0x0
branch_0x8007a164:
    cmpwi   r0, 0x0
    beq-    branch_0x8007a27c
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r30, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    lfs     f0, 0x10(r31)
    add     r30, r3, r0
    stfs    f0, 0xc(r30)
    addi    r3, sp, 0x30
    lfs     f1, -0x6a6c(rtoc)
    lfs     f0, 0x14(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r30)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x2c(r30)
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x38(sp)
    lwz     r4, 0x64(r29)
    lfs     f1, 0x30(sp)
    lfsu    f0, 0x10(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(sp)
    lfs     f1, 0x34(sp)
    lfs     f0, 0x4(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x38(sp)
    lfs     f0, 0x8(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x38(sp)
    bl      PSVECMag
    lfs     f0, -0x6a88(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8007a20c
    lfs     f0, -0x69e8(rtoc)
    fdivs   f31, f0, f1
    b       branch_0x8007a210

branch_0x8007a20c:
    lfs     f31, -0x6a98(rtoc)
branch_0x8007a210:
    lfs     f0, -0x6a98(rtoc)
    fcmpo   cr0, f31, f0
    ble-    branch_0x8007a220
    fmr     f31, f0
branch_0x8007a220:
    lis     r3, 0x8040
    addi    r4, r3, 0x4788
    addi    r3, r30, 0x0
    bl      PSMTXCopy
    lfs     f0, 0x0(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x0(r30)
    lfs     f0, 0x10(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x10(r30)
    lfs     f0, 0x20(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x20(r30)
    lfs     f0, 0x8(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x8(r30)
    lfs     f0, 0x18(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x18(r30)
    lfs     f0, 0x28(r30)
    fmuls   f0, f0, f31
    stfs    f0, 0x28(r30)
    b       branch_0x8007a2d4

branch_0x8007a27c:
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x8007a2d4
    bl      getModel__10TLiveActorCFv
    clrlwi  r0, r30, 16
    lwz     r3, 0x58(r3)
    mulli   r0, r0, 0x30
    lfs     f1, -0x69e0(rtoc)
    add     r5, r3, r0
    lfs     f0, 0x0(r5)
    lis     r4, 0x8040
    addi    r3, r5, 0x0
    fmuls   f0, f0, f1
    addi    r4, r4, 0x4788
    stfs    f0, 0x0(r5)
    lfs     f0, 0x10(r5)
    fmuls   f0, f0, f1
    stfs    f0, 0x10(r5)
    lfs     f0, 0x20(r5)
    fmuls   f0, f0, f1
    stfs    f0, 0x20(r5)
    bl      PSMTXCopy
branch_0x8007a2d4:
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    lwz     r30, 0x48(sp)
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x58
    blr


.globl perform__10TBGBodyHitFUlPQ26JDrama9TGraphics
perform__10TBGBodyHitFUlPQ26JDrama9TGraphics: # 0x8007a2f4
    mflr    r0
    stw     r0, 0x4(sp)
    rlwinm. r0, r4, 0, 30, 30
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    beq-    branch_0x8007a330
    lwz     r3, 0x68(r29)
    addi    r5, r29, 0x10
    lwz     r4, 0x6c(r29)
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8007a330:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl receiveMessage__10TBGBodyHitFP9THitActorUl
receiveMessage__10TBGBodyHitFP9THitActorUl: # 0x8007a35c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8007a3a0
    cmplwi  r5, 0xf
    bne-    branch_0x8007a3a0
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r4, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x8007a3b4

branch_0x8007a3a0:
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8007a3b4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl perform__9TBGEyeHitFUlPQ26JDrama9TGraphics
perform__9TBGEyeHitFUlPQ26JDrama9TGraphics: # 0x8007a3c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      perform__9THitActorFUlPQ26JDrama9TGraphics
    rlwinm. r0, r31, 0, 30, 30
    beq-    branch_0x8007a3fc
    lwz     r3, 0x68(r30)
    addi    r5, r30, 0x10
    lwz     r4, 0x6c(r30)
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
branch_0x8007a3fc:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl receiveMessage__9TBGEyeHitFP9THitActorUl
receiveMessage__9TBGEyeHitFP9THitActorUl: # 0x8007a414
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x48(sp)
    lwz     r31, 0x68(r3)
    lis     r3, 0x803f
    addi    r30, r3, 0xb88
    lwz     r0, 0x168(r31)
    cmpwi   r0, 0x3
    bne-    branch_0x8007a454
    li      r3, 0x0
    b       branch_0x8007a6b0

branch_0x8007a454:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8007a698
    cmplwi  r5, 0xf
    bne-    branch_0x8007a698
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007a480
    b       branch_0x8007a484

branch_0x8007a480:
    lwz     r28, 0x1c(r3)
branch_0x8007a484:
    lbz     r0, -0x6e38(r13)
    extsb.  r0, r0
    bne-    branch_0x8007a4c4
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e34(r13)
    addi    r0, r3, 0x2a88
    lis     r3, 0x8007
    stw     r0, -0x6e34(r13)
    addi    r4, r3, 0x515c
    subi    r3, r13, 0x6e34
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e38(r13)
branch_0x8007a4c4:
    subi    r0, r13, 0x6e34
    cmplw   r28, r0
    beq-    branch_0x8007a678
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007a4e4
    b       branch_0x8007a4e8

branch_0x8007a4e4:
    lwz     r28, 0x1c(r3)
branch_0x8007a4e8:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007a528
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007a528:
    subi    r0, r13, 0x6e2c
    cmplw   r28, r0
    beq-    branch_0x8007a678
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007a548
    b       branch_0x8007a54c

branch_0x8007a548:
    lwz     r28, 0x1c(r3)
branch_0x8007a54c:
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x8007a58c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r3, 0x8007
    stw     r0, -0x6e0c(r13)
    addi    r4, r3, 0x3700
    subi    r3, r13, 0x6e0c
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x8007a58c:
    subi    r0, r13, 0x6e0c
    cmplw   r28, r0
    beq-    branch_0x8007a678
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6e38(r13)
    extsb.  r0, r0
    bne-    branch_0x8007a5e0
    subi    r3, r13, 0x6e34
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a88
    lis     r3, 0x8007
    stw     r0, -0x6e34(r13)
    addi    r4, r3, 0x515c
    subi    r3, r13, 0x6e34
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e38(r13)
branch_0x8007a5e0:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6e34
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007a5f8
    stw     r0, 0x1c(r4)
branch_0x8007a5f8:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x8007a640
    subi    r3, r13, 0x6e3c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a98
    lis     r3, 0x8007
    stw     r0, -0x6e3c(r13)
    addi    r4, r3, 0x5620
    subi    r3, r13, 0x6e3c
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x8007a640:
    subi    r5, r13, 0x6e3c
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8007a678
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8007a678
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8007a678:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r29, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x8007a6b0

branch_0x8007a698:
    lwz     r12, 0x0(r31)
    mr      r3, r31
    mr      r4, r29
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8007a6b0:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x58
    blr


.globl perform__10TBGBeakHitFUlPQ26JDrama9TGraphics
perform__10TBGBeakHitFUlPQ26JDrama9TGraphics: # 0x8007a6d0
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    lis     r4, 0x803f
    stwu    sp, -0x138(sp)
    stfd    f31, 0x130(sp)
    stw     r31, 0x12c(sp)
    addi    r31, r4, 0xb88
    stw     r30, 0x128(sp)
    addi    r30, r3, 0x0
    stw     r29, 0x124(sp)
    beq-    branch_0x8007ad08
    lwz     r3, 0x70(r30)
    addi    r5, r30, 0x10
    li      r4, 0x1a
    bl      getJointTransByIndex__10TLiveActorCFiPQ29JGeometry8TVec3_f_
    lfs     f2, -0x6a64(rtoc)
    mr      r3, r30
    lfs     f1, 0x5c(r30)
    lfs     f0, 0x14(r30)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xa8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8007a814
    lfs     f4, 0xa4(r30)
    lfs     f0, 0xa8(r30)
    fmuls   f2, f4, f4
    lfs     f3, 0xac(r30)
    fmuls   f1, f0, f0
    lfs     f0, -0x69dc(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x8007a814
    lfs     f0, 0x10(r30)
    addi    r4, sp, 0x114
    fadds   f0, f0, f4
    stfs    f0, 0x10(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0xa8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x18(r30)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r30)
    lwz     r5, 0x68(r30)
    lwz     r3, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r3, 0x114(sp)
    stw     r0, 0x118(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x11c(sp)
    lfs     f1, 0x114(sp)
    lfs     f0, 0xa4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x114(sp)
    lfs     f1, 0x118(sp)
    lfs     f0, 0xa8(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x118(sp)
    lfs     f1, 0x11c(sp)
    lfs     f0, 0xac(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x11c(sp)
    lwz     r3, 0x68(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0xac(r30)
    stfs    f0, 0xa8(r30)
    stfs    f0, 0xa4(r30)
branch_0x8007a814:
    lwz     r0, 0x68(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8007ad08
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x108(sp)
    stw     r0, 0x10c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x110(sp)
    lwz     r3, 0x70(r30)
    lfs     f1, 0x108(sp)
    lfsu    f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x108(sp)
    lfs     f1, 0x10c(sp)
    lfs     f0, 0x4(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x8(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x110(sp)
    lfs     f1, 0x108(sp)
    lfs     f3, 0x110(sp)
    lfs     f0, 0x10c(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x69dc(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x8007a8b0
    addi    r3, sp, 0x108
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    b       branch_0x8007a8c4

branch_0x8007a8b0:
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x108(sp)
    stfs    f0, 0x10c(sp)
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x110(sp)
branch_0x8007a8c4:
    lwz     r0, 0x108(sp)
    lwz     r3, 0x10c(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x110(sp)
    stw     r3, 0xf4(sp)
    lfs     f4, -0x6a88(rtoc)
    stw     r0, 0xf8(sp)
    lfs     f5, -0x6a98(rtoc)
    lfs     f0, 0x10c(sp)
    lfs     f1, 0x110(sp)
    fmuls   f6, f4, f0
    lfs     f3, 0x108(sp)
    fmuls   f0, f4, f1
    fmsubs  f2, f5, f1, f6
    fmsubs  f1, f4, f3, f0
    fnmsubs  f0, f5, f3, f6
    stfs    f2, 0xe4(sp)
    stfs    f1, 0xe8(sp)
    stfs    f0, 0xec(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xec(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x69dc(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    beq-    branch_0x8007a950
    addi    r3, sp, 0xe4
    addi    r4, r3, 0x0
    bl      PSVECNormalize
    b       branch_0x8007a95c

branch_0x8007a950:
    stfs    f5, 0xe4(sp)
    stfs    f4, 0xe8(sp)
    stfs    f4, 0xec(sp)
branch_0x8007a95c:
    lfs     f0, 0xe4(sp)
    stfs    f0, 0x74(r30)
    lfs     f0, 0xe8(sp)
    stfs    f0, 0x84(r30)
    lfs     f0, 0xec(sp)
    stfs    f0, 0x94(r30)
    lfs     f0, -0x6a88(rtoc)
    stfs    f0, 0x78(r30)
    lfs     f1, -0x6a98(rtoc)
    stfs    f1, 0x88(r30)
    stfs    f0, 0x98(r30)
    lfs     f1, 0x108(sp)
    stfs    f1, 0x7c(r30)
    lfs     f1, 0x10c(sp)
    stfs    f1, 0x8c(r30)
    lfs     f1, 0x110(sp)
    stfs    f1, 0x9c(r30)
    lfs     f2, 0x58(r30)
    lfs     f1, 0xf0(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0xf0(sp)
    lfs     f1, 0xf4(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0xf4(sp)
    lfs     f1, 0xf8(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0xf8(sp)
    lfs     f2, 0xf0(sp)
    lfs     f1, 0x10(r30)
    fadds   f1, f2, f1
    stfs    f1, 0xf0(sp)
    lfs     f2, 0xf4(sp)
    lfs     f1, 0x14(r30)
    fadds   f1, f2, f1
    stfs    f1, 0xf4(sp)
    lfs     f2, 0xf8(sp)
    lfs     f1, 0x18(r30)
    fadds   f1, f2, f1
    stfs    f1, 0xf8(sp)
    lfs     f1, 0xf0(sp)
    stfs    f1, 0x80(r30)
    lfs     f1, 0xf4(sp)
    stfs    f1, 0x90(r30)
    lfs     f1, 0xf8(sp)
    stfs    f1, 0xa0(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0xd8(sp)
    stw     r0, 0xdc(sp)
    lwz     r0, 0x18(r30)
    stw     r0, 0xe0(sp)
    lwz     r3, 0x70(r30)
    lfs     f2, 0xd8(sp)
    lfsu    f1, 0x10(r3)
    fsubs   f1, f2, f1
    stfs    f1, 0xd8(sp)
    lfs     f2, 0xdc(sp)
    lfs     f1, 0x4(r3)
    fsubs   f1, f2, f1
    stfs    f1, 0xdc(sp)
    lfs     f2, 0xe0(sp)
    lfs     f1, 0x8(r3)
    fsubs   f1, f2, f1
    stfs    f1, 0xe0(sp)
    lfs     f2, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f3, 0xe0(sp)
    fmuls   f2, f2, f2
    fmuls   f1, f1, f1
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8007aa8c
    b       branch_0x8007aab0

branch_0x8007aa8c:
    frsqrte f3, f31
    lfs     f2, -0x6a64(rtoc)
    lfs     f0, -0x6a60(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x8007aab0:
    lwz     r3, 0x70(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x70(r30)
    lfs     f0, 0x1a8(r3)
    lbz     r0, 0x193(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007ab00
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x8007ab00
    lwz     r3, 0x68(r30)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x8007ab00:
    lwz     r3, 0x70(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x180(r3)
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x8007ad08
    lwz     r3, 0x68(r30)
    addi    r4, r30, 0x0
    li      r5, 0x8
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r30, 0x70(r30)
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8007ab58
    b       branch_0x8007ab5c

branch_0x8007ab58:
    lwz     r29, 0x1c(r3)
branch_0x8007ab5c:
    lbz     r0, -0x6e28(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ab9c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e24(r13)
    addi    r0, r3, 0x2a68
    lis     r3, 0x8007
    stw     r0, -0x6e24(r13)
    addi    r4, r3, 0x4754
    subi    r3, r13, 0x6e24
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e28(r13)
branch_0x8007ab9c:
    subi    r0, r13, 0x6e24
    cmplw   r29, r0
    beq-    branch_0x8007ad08
    lbz     r3, 0x13c(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x8007abbc
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r30)
branch_0x8007abbc:
    lbz     r0, 0x13c(r30)
    cmplwi  r0, 0x0
    bne-    branch_0x8007ac2c
    lbz     r0, -0x6e18(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ac04
    subi    r3, r13, 0x6e14
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a48
    lis     r3, 0x8007
    stw     r0, -0x6e14(r13)
    addi    r4, r3, 0x3ed4
    subi    r3, r13, 0x6e14
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e18(r13)
branch_0x8007ac04:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6e14
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007ac1c
    stw     r0, 0x1c(r4)
branch_0x8007ac1c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x8007ad00

branch_0x8007ac2c:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ac68
    subi    r3, r13, 0x6e2c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007ac68:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x6e2c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007ac80
    stw     r0, 0x1c(r4)
branch_0x8007ac80:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x8007acc8
    subi    r3, r13, 0x6e3c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a98
    lis     r3, 0x8007
    stw     r0, -0x6e3c(r13)
    addi    r4, r3, 0x5620
    subi    r3, r13, 0x6e3c
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x8007acc8:
    subi    r5, r13, 0x6e3c
    lwz     r4, 0x8c(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x8007ad00
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8007ad00
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8007ad00:
    li      r0, 0x1
    stb     r0, 0x1a0(r30)
branch_0x8007ad08:
    lwz     r0, 0x13c(sp)
    lfd     f31, 0x130(sp)
    lwz     r31, 0x12c(sp)
    mtlr    r0
    lwz     r30, 0x128(sp)
    lwz     r29, 0x124(sp)
    addi    sp, sp, 0x138
    blr


.globl receiveMessage__10TBGBeakHitFP9THitActorUl
receiveMessage__10TBGBeakHitFP9THitActorUl: # 0x8007ad28
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x100(sp)
    stw     r31, 0xfc(sp)
    addi    r31, r3, 0x0
    stw     r30, 0xf8(sp)
    stw     r29, 0xf4(sp)
    mr      r29, r4
    stw     r28, 0xf0(sp)
    addi    r28, r5, 0x0
    lwz     r6, 0x4c(r4)
    lis     r4, 0x803f
    addi    r30, r4, 0xb88
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8007ad70
    li      r0, 0x1
    b       branch_0x8007ad74

branch_0x8007ad70:
    li      r0, 0x0
branch_0x8007ad74:
    clrlwi. r0, r0, 24
    beq-    branch_0x8007b00c
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x8007ad90
    li      r0, 0x1
    b       branch_0x8007ad94

branch_0x8007ad90:
    li      r0, 0x0
branch_0x8007ad94:
    clrlwi. r0, r0, 24
    bne-    branch_0x8007ada4
    li      r0, 0x0
    b       branch_0x8007adcc

branch_0x8007ada4:
    lwz     r0, 0x68(r29)
    lwz     r3, gpModelWaterManager(r13)
    slwi    r0, r0, 1
    add     r3, r3, r0
    lhz     r0, 0x414(r3)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x8007adc8
    li      r0, 0x1
    b       branch_0x8007adcc

branch_0x8007adc8:
    li      r0, 0x0
branch_0x8007adcc:
    cmpwi   r0, 0x0
    bne-    branch_0x8007addc
    li      r3, 0x1
    b       branch_0x8007b468

branch_0x8007addc:
    lwz     r31, 0x70(r31)
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007adf4
    b       branch_0x8007adf8

branch_0x8007adf4:
    lwz     r28, 0x1c(r3)
branch_0x8007adf8:
    lbz     r0, -0x6e38(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ae38
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e34(r13)
    addi    r0, r3, 0x2a88
    lis     r3, 0x8007
    stw     r0, -0x6e34(r13)
    addi    r4, r3, 0x515c
    subi    r3, r13, 0x6e34
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e38(r13)
branch_0x8007ae38:
    subi    r0, r13, 0x6e34
    cmplw   r28, r0
    beq-    branch_0x8007afec
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007ae58
    b       branch_0x8007ae5c

branch_0x8007ae58:
    lwz     r28, 0x1c(r3)
branch_0x8007ae5c:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007ae9c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007ae9c:
    subi    r0, r13, 0x6e2c
    cmplw   r28, r0
    beq-    branch_0x8007afec
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007aebc
    b       branch_0x8007aec0

branch_0x8007aebc:
    lwz     r28, 0x1c(r3)
branch_0x8007aec0:
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x8007af00
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r3, 0x8007
    stw     r0, -0x6e0c(r13)
    addi    r4, r3, 0x3700
    subi    r3, r13, 0x6e0c
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x8007af00:
    subi    r0, r13, 0x6e0c
    cmplw   r28, r0
    beq-    branch_0x8007afec
    lwz     r3, 0x8c(r31)
    li      r0, 0x0
    stw     r0, 0x8(r3)
    lbz     r0, -0x6e38(r13)
    extsb.  r0, r0
    bne-    branch_0x8007af54
    subi    r3, r13, 0x6e34
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a88
    lis     r3, 0x8007
    stw     r0, -0x6e34(r13)
    addi    r4, r3, 0x515c
    subi    r3, r13, 0x6e34
    addi    r5, r30, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e38(r13)
branch_0x8007af54:
    lwz     r4, 0x8c(r31)
    subi    r3, r13, 0x6e34
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007af6c
    stw     r0, 0x1c(r4)
branch_0x8007af6c:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x8007afb4
    subi    r3, r13, 0x6e3c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a98
    lis     r3, 0x8007
    stw     r0, -0x6e3c(r13)
    addi    r4, r3, 0x5620
    subi    r3, r13, 0x6e3c
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x8007afb4:
    subi    r5, r13, 0x6e3c
    lwz     r4, 0x8c(r31)
    cmplwi  r5, 0x0
    beq-    branch_0x8007afec
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8007afec
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8007afec:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r29, 0x10
    li      r4, 0xe7
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    li      r3, 0x1
    b       branch_0x8007b468

branch_0x8007b00c:
    lwz     r3, 0x70(r31)
    lwz     r0, 0x168(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x8007b024
    li      r3, 0x0
    b       branch_0x8007b468

branch_0x8007b024:
    lbz     r0, -0x6e10(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b064
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e0c(r13)
    addi    r0, r3, 0x2a38
    lis     r3, 0x8007
    stw     r0, -0x6e0c(r13)
    addi    r4, r3, 0x3700
    subi    r3, r13, 0x6e0c
    addi    r5, r30, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e10(r13)
branch_0x8007b064:
    lwz     r3, 0x70(r31)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subi    r0, r13, 0x6e0c
    cmplw   r3, r0
    beq-    branch_0x8007b12c
    lbz     r0, -0x6e08(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b0bc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e04(r13)
    addi    r0, r3, 0x2a28
    lis     r3, 0x8007
    stw     r0, -0x6e04(r13)
    addi    r4, r3, 0x336c
    subi    r3, r13, 0x6e04
    addi    r5, r30, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e08(r13)
branch_0x8007b0bc:
    lwz     r3, 0x70(r31)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subi    r0, r13, 0x6e04
    cmplw   r3, r0
    beq-    branch_0x8007b12c
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b114
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e2c(r13)
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007b114:
    lwz     r3, 0x70(r31)
    lwz     r3, 0x8c(r3)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    subi    r0, r13, 0x6e2c
    cmplw   r3, r0
    bne-    branch_0x8007b134
branch_0x8007b12c:
    li      r3, 0x0
    b       branch_0x8007b468

branch_0x8007b134:
    lwz     r3, 0x4c(r29)
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x8007b464
    cmplwi  r28, 0x4
    bne-    branch_0x8007b1bc
    lwz     r0, 0x6c(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x8007b168
    cmplw   r0, r31
    beq-    branch_0x8007b168
    li      r3, 0x0
    b       branch_0x8007b468

branch_0x8007b168:
    stw     r29, 0x68(r31)
    lwz     r28, 0x70(r31)
    lbz     r0, 0x193(r28)
    cmplwi  r0, 0x0
    beq-    branch_0x8007b1a8
    lwz     r0, 0x198(r28)
    rlwinm. r0, r0, 0, 28, 28
    bne-    branch_0x8007b19c
    lwz     r3, gpMarDirector(r13)
    li      r4, 0x25
    li      r5, 0x1
    lwz     r3, 0x74(r3)
    bl      startAppearBalloon__11TGCConsole2FUlb
branch_0x8007b19c:
    lwz     r0, 0x198(r28)
    ori     r0, r0, 0x8
    stw     r0, 0x198(r28)
branch_0x8007b1a8:
    lwz     r4, 0x70(r31)
    li      r0, 0x1
    li      r3, 0x1
    stb     r0, 0x1a0(r4)
    b       branch_0x8007b468

branch_0x8007b1bc:
    subi    r0, r28, 0x7
    cmplwi  r0, 0x1
    bgt-    branch_0x8007b464
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0xe4(sp)
    stw     r0, 0xe8(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xec(sp)
    lwz     r3, 0x70(r31)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xe4(sp)
    lfs     f1, 0xe8(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xec(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xec(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x6a88(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    lfs     f5, 0x194(r3)
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    cror    2, 0, 2
    bne-    branch_0x8007b25c
    b       branch_0x8007b280

branch_0x8007b25c:
    frsqrte f3, f4
    lfs     f2, -0x6a64(rtoc)
    lfs     f0, -0x6a60(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f4, f1, f0
    fmuls   f0, f2, f0
    fmuls   f4, f4, f0
branch_0x8007b280:
    fcmpo   cr0, f4, f5
    cror    2, 1, 2
    bne-    branch_0x8007b454
    lwz     r29, 0x70(r31)
    lwz     r3, 0x8c(r29)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x8007b2a4
    b       branch_0x8007b2a8

branch_0x8007b2a4:
    lwz     r28, 0x1c(r3)
branch_0x8007b2a8:
    lbz     r0, -0x6e28(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b2e8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x6e24(r13)
    addi    r0, r3, 0x2a68
    lis     r3, 0x8007
    stw     r0, -0x6e24(r13)
    addi    r4, r3, 0x4754
    subi    r3, r13, 0x6e24
    addi    r5, r30, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e28(r13)
branch_0x8007b2e8:
    subi    r0, r13, 0x6e24
    cmplw   r28, r0
    beq-    branch_0x8007b454
    lbz     r3, 0x13c(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x8007b308
    subi    r0, r3, 0x1
    stb     r0, 0x13c(r29)
branch_0x8007b308:
    lbz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x8007b378
    lbz     r0, -0x6e18(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b350
    subi    r3, r13, 0x6e14
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a48
    lis     r3, 0x8007
    stw     r0, -0x6e14(r13)
    addi    r4, r3, 0x3ed4
    subi    r3, r13, 0x6e14
    addi    r5, r30, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e18(r13)
branch_0x8007b350:
    lwz     r4, 0x8c(r29)
    subi    r3, r13, 0x6e14
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007b368
    stw     r0, 0x1c(r4)
branch_0x8007b368:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    b       branch_0x8007b44c

branch_0x8007b378:
    lbz     r0, -0x6e30(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b3b4
    subi    r3, r13, 0x6e2c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a78
    lis     r3, 0x8007
    stw     r0, -0x6e2c(r13)
    addi    r4, r3, 0x4df8
    subi    r3, r13, 0x6e2c
    addi    r5, r30, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e30(r13)
branch_0x8007b3b4:
    lwz     r4, 0x8c(r29)
    subi    r3, r13, 0x6e2c
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8007b3cc
    stw     r0, 0x1c(r4)
branch_0x8007b3cc:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lbz     r0, -0x6e40(r13)
    extsb.  r0, r0
    bne-    branch_0x8007b414
    subi    r3, r13, 0x6e3c
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803b
    addi    r0, r3, 0x2a98
    lis     r3, 0x8007
    stw     r0, -0x6e3c(r13)
    addi    r4, r3, 0x5620
    subi    r3, r13, 0x6e3c
    addi    r5, r30, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6e40(r13)
branch_0x8007b414:
    subi    r5, r13, 0x6e3c
    lwz     r4, 0x8c(r29)
    cmplwi  r5, 0x0
    beq-    branch_0x8007b44c
    lwz     r6, 0x8(r4)
    lwz     r0, 0x4(r4)
    cmpw    r6, r0
    bge-    branch_0x8007b44c
    lwz     r3, 0xc(r4)
    slwi    r0, r6, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r4)
branch_0x8007b44c:
    li      r0, 0x1
    stb     r0, 0x1a0(r29)
branch_0x8007b454:
    li      r0, 0x0
    stw     r0, 0x68(r31)
    li      r3, 0x1
    b       branch_0x8007b468

branch_0x8007b464:
    li      r3, 0x0
branch_0x8007b468:
    lwz     r0, 0x104(sp)
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    mtlr    r0
    lwz     r29, 0xf4(sp)
    lwz     r28, 0xf0(sp)
    addi    sp, sp, 0x100
    blr


.globl moveRequest__10TBGBeakHitFRCQ29JGeometry8TVec3_f_
moveRequest__10TBGBeakHitFRCQ29JGeometry8TVec3_f_: # 0x8007b488
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    mr      r30, r3
    lwz     r3, 0x70(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r5, MarioActor(r13)
    lis     r0, 0x4330
    lfs     f2, 0x270(r3)
    addi    r3, sp, 0x44
    lha     r4, 0x90(r5)
    lfs     f0, 0x8c(r5)
    xoris   r4, r4, 0x8000
    lfd     f1, -0x6a90(rtoc)
    stw     r4, 0x6c(sp)
    fmuls   f5, f2, f0
    lfs     f3, -0x6a24(rtoc)
    stw     r0, 0x68(sp)
    lfs     f4, -0x6a34(rtoc)
    lfd     f0, 0x68(sp)
    lwz     r0, -0x5eac(r13)
    fsubs   f0, f0, f1
    lwz     r6, -0x5ea4(r13)
    lwz     r4, -0x5ea8(r13)
    lfs     f2, -0x6a88(rtoc)
    fmuls   f0, f3, f0
    fmuls   f0, f4, f0
    fctiwz  f0, f0
    stfd    f0, 0x60(sp)
    lwz     r5, 0x64(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f0, r4, r0
    fmuls   f3, f5, f1
    fmuls   f1, f5, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_8007b628
    lwz     r4, 0x44(sp)
    li      r3, 0x0
    lwz     r0, 0x48(sp)
    stw     r4, 0xa4(r30)
    stw     r0, 0xa8(r30)
    lwz     r0, 0x4c(sp)
    stw     r0, 0xac(r30)
    lwz     r5, 0x70(r30)
    lwz     r4, 0x10(r5)
    lwz     r0, 0x14(r5)
    stw     r4, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x18(r5)
    stw     r0, 0x58(sp)
    lfs     f1, 0x50(sp)
    lfs     f0, 0x0(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x50(sp)
    lfs     f1, 0x54(sp)
    lfs     f0, 0x4(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x54(sp)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x8(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x58(sp)
    lfs     f0, 0x50(sp)
    lfs     f1, -0x69d8(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f1, 0xa4(r30)
    lfs     f0, 0x50(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa4(r30)
    lfs     f1, 0xa8(r30)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa8(r30)
    lfs     f1, 0xac(r30)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xac(r30)
    lwz     r4, 0x0(r31)
    lwz     r0, 0x4(r31)
    stw     r4, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x8(r31)
    stw     r0, 0x18(r30)
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    addi    sp, sp, 0x78
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_8007b628
set_f___Q29JGeometry8TVec3_f_Ffff_8007b628: # 0x8007b628
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl getTakingMtx__10TBGBeakHitFv
getTakingMtx__10TBGBeakHitFv: # 0x8007b638
    addi    r3, r3, 0x74
    blr


.globl __ct__16TBossGessoParamsFPCc
__ct__16TBossGessoParamsFPCc: # 0x8007b640
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    addi    r31, r3, 0x0
    subi    r30, r5, 0x5ed8
    bl      __ct__17TSpineEnemyParamsFPCc
    addi    r3, r30, 0x8a4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xa8
    addi    r6, r30, 0x8a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r27, r3, 0x42ac
    stw     r27, 0xa8(r31)
    li      r0, 0x7d0
    lis     r3, 0x803b
    stw     r0, 0xb8(r31)
    subi    r26, r3, 0x42b8
    addi    r3, r30, 0x8b4
    stw     r26, 0xa8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xbc
    addi    r6, r30, 0x8b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xbc(r31)
    li      r28, 0xc8
    addi    r3, r30, 0x8c4
    stw     r28, 0xcc(r31)
    stw     r26, 0xbc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xd0
    addi    r6, r30, 0x8c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xd0(r31)
    addi    r3, r30, 0x8d4
    stw     r28, 0xe0(r31)
    stw     r26, 0xd0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xe4
    addi    r6, r30, 0x8d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xe4(r31)
    addi    r3, r30, 0x8e4
    stw     r28, 0xf4(r31)
    stw     r26, 0xe4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0xf8
    addi    r6, r30, 0x8e4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0xf8(r31)
    li      r0, 0x12c0
    addi    r3, r30, 0x8f4
    stw     r0, 0x108(r31)
    stw     r26, 0xf8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x10c
    addi    r6, r30, 0x8f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x10c(r31)
    li      r28, 0x4b0
    addi    r3, r30, 0x904
    stw     r28, 0x11c(r31)
    stw     r26, 0x10c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x120
    addi    r6, r30, 0x904
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x120(r31)
    li      r0, 0x168
    addi    r3, r30, 0x910
    stw     r0, 0x130(r31)
    stw     r26, 0x120(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x134
    addi    r6, r30, 0x910
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x134(r31)
    addi    r3, r30, 0x91c
    stw     r28, 0x144(r31)
    stw     r26, 0x134(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x148
    addi    r6, r30, 0x91c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x148(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x69d4(rtoc)
    addi    r3, r30, 0x930
    stfs    f0, 0x158(r31)
    stw     r28, 0x148(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x15c
    addi    r6, r30, 0x930
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x15c(r31)
    addi    r3, r30, 0x944
    lfs     f0, -0x69d4(rtoc)
    stfs    f0, 0x16c(r31)
    stw     r28, 0x15c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x170
    addi    r6, r30, 0x944
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x170(r31)
    addi    r3, r30, 0x958
    lfs     f0, -0x69d0(rtoc)
    stfs    f0, 0x180(r31)
    stw     r28, 0x170(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x184
    addi    r6, r30, 0x958
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x184(r31)
    addi    r3, r30, 0x96c
    lfs     f0, -0x69cc(rtoc)
    stfs    f0, 0x194(r31)
    stw     r28, 0x184(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x198
    addi    r6, r30, 0x96c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x198(r31)
    addi    r3, r30, 0x984
    lfs     f0, -0x6a5c(rtoc)
    stfs    f0, 0x1a8(r31)
    stw     r28, 0x198(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1ac
    addi    r6, r30, 0x984
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1ac(r31)
    addi    r3, r30, 0x99c
    lfs     f0, -0x69c8(rtoc)
    stfs    f0, 0x1bc(r31)
    stw     r28, 0x1ac(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1c0
    addi    r6, r30, 0x99c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1c0(r31)
    addi    r3, r30, 0x9b4
    lfs     f0, -0x69c4(rtoc)
    stfs    f0, 0x1d0(r31)
    stw     r28, 0x1c0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1d4
    addi    r6, r30, 0x9b4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1d4(r31)
    addi    r3, r30, 0x9cc
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x1e4(r31)
    stw     r28, 0x1d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1e8
    addi    r6, r30, 0x9cc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1e8(r31)
    addi    r3, r30, 0x9e0
    lfs     f0, -0x69c0(rtoc)
    stfs    f0, 0x1f8(r31)
    stw     r28, 0x1e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x1fc
    addi    r6, r30, 0x9e0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x1fc(r31)
    addi    r3, r30, 0x9f4
    lfs     f0, -0x69bc(rtoc)
    stfs    f0, 0x20c(r31)
    stw     r28, 0x1fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x210
    addi    r6, r30, 0x9f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x210(r31)
    addi    r3, r30, 0xa08
    lfs     f0, -0x69bc(rtoc)
    stfs    f0, 0x220(r31)
    stw     r28, 0x210(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x224
    addi    r6, r30, 0xa08
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x224(r31)
    addi    r3, r30, 0xa1c
    lfs     f0, -0x6a54(rtoc)
    stfs    f0, 0x234(r31)
    stw     r28, 0x224(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x238
    addi    r6, r30, 0xa1c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x238(r31)
    addi    r3, r30, 0xa28
    lfs     f0, -0x6a5c(rtoc)
    stfs    f0, 0x248(r31)
    stw     r28, 0x238(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x24c
    addi    r6, r30, 0xa28
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x24c(r31)
    addi    r3, r30, 0xa3c
    lfs     f0, -0x6a4c(rtoc)
    stfs    f0, 0x25c(r31)
    stw     r28, 0x24c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x260
    addi    r6, r30, 0xa3c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x260(r31)
    addi    r3, r30, 0xa4c
    lfs     f0, -0x69b8(rtoc)
    stfs    f0, 0x270(r31)
    stw     r28, 0x260(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x274
    addi    r6, r30, 0xa4c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x274(r31)
    addi    r3, r30, 0xa60
    lfs     f0, -0x6a68(rtoc)
    stfs    f0, 0x284(r31)
    stw     r28, 0x274(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x288
    addi    r6, r30, 0xa60
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x288(r31)
    addi    r3, r30, 0xa74
    lfs     f0, -0x69d4(rtoc)
    stfs    f0, 0x298(r31)
    stw     r28, 0x288(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x29c
    addi    r6, r30, 0xa74
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x29c(r31)
    addi    r3, r30, 0xa84
    lfs     f0, -0x69b4(rtoc)
    stfs    f0, 0x2ac(r31)
    stw     r28, 0x29c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2b0
    addi    r6, r30, 0xa84
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x2b0(r31)
    li      r0, 0xa
    addi    r3, r30, 0xa94
    stw     r0, 0x2c0(r31)
    stw     r26, 0x2b0(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2c4
    addi    r6, r30, 0xa94
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2c4(r31)
    addi    r3, r30, 0xaa4
    lfs     f0, -0x6a98(rtoc)
    stfs    f0, 0x2d4(r31)
    stw     r28, 0x2c4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d8
    addi    r6, r30, 0xaa4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2d8(r31)
    addi    r3, r30, 0xab4
    lfs     f0, -0x6a60(rtoc)
    stfs    f0, 0x2e8(r31)
    stw     r28, 0x2d8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2ec
    addi    r6, r30, 0xab4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2ec(r31)
    addi    r3, r30, 0xac4
    lfs     f0, -0x69b0(rtoc)
    stfs    f0, 0x2fc(r31)
    stw     r28, 0x2ec(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x300
    addi    r6, r30, 0xac4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x300(r31)
    li      r0, 0x2d0
    addi    r3, r31, 0x0
    stw     r0, 0x310(r31)
    stw     r26, 0x300(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
    mr      r3, r31
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl __dt__17TBossGessoManagerFv
__dt__17TBossGessoManagerFv: # 0x8007bbec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007bc34
    lis     r3, 0x803b
    addi    r0, r3, 0x2aa8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
    extsh.  r0, r31
    ble-    branch_0x8007bc34
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007bc34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBossGessoFv
__dt__10TBossGessoFv: # 0x8007bc50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007bca0
    lis     r3, 0x803b
    addi    r3, r3, 0x2afc
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
    extsh.  r0, r31
    ble-    branch_0x8007bca0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007bca0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TBGBinderFv
__dt__9TBGBinderFv: # 0x8007bcbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007bd04
    lis     r3, 0x803b
    addi    r0, r3, 0x2c10
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__7TBinderFv
    extsh.  r0, r31
    ble-    branch_0x8007bd04
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007bd04:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TBossGessoMtxCalcFv
__dt__17TBossGessoMtxCalcFv: # 0x8007bd20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007bdb0
    lis     r3, 0x803b
    addi    r3, r3, 0x2c20
    stw     r3, 0x4c(r30)
    addi    r4, r3, 0x24
    addi    r0, r30, 0x68
    lwz     r3, 0x0(r30)
    stw     r4, 0x0(r3)
    lwz     r3, 0x0(r30)
    subf    r0, r3, r0
    stw     r0, 0x4(r3)
    beq-    branch_0x8007bda0
    lis     r3, 0x803e
    subi    r3, r3, 0x4484
    stw     r3, 0x4c(r30)
    addi    r6, r3, 0x24
    addi    r0, r30, 0x64
    lwz     r5, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    stw     r6, 0x0(r5)
    lwz     r5, 0x0(r30)
    subf    r0, r5, r0
    stw     r0, 0x4(r5)
    bl      __dt__19J3DMtxCalcSoftimageFv
branch_0x8007bda0:
    extsh.  r0, r31
    ble-    branch_0x8007bdb0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007bdb0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBGBodyHitFv
__dt__10TBGBodyHitFv: # 0x8007bdcc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007be34
    lis     r3, 0x803b
    addi    r3, r3, 0x2c64
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8007be24
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8007be24:
    extsh.  r0, r31
    ble-    branch_0x8007be34
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007be34:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TBGEyeHitFv
__dt__9TBGEyeHitFv: # 0x8007be50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007beb8
    lis     r3, 0x803b
    addi    r3, r3, 0x2d08
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8007bea8
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8007bea8:
    extsh.  r0, r31
    ble-    branch_0x8007beb8
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007beb8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TBGBeakHitFv
__dt__10TBGBeakHitFv: # 0x8007bed4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8007bf54
    lis     r3, 0x803b
    addi    r3, r3, 0x2dac
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8007bf44
    lis     r3, 0x803b
    subi    r3, r3, 0x48e4
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8007bf44
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x8007bf44:
    extsh.  r0, r31
    ble-    branch_0x8007bf54
    mr      r3, r30
    bl      __dl__FPv
branch_0x8007bf54:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_bossgesso_cpp
__sinit_bossgesso_cpp: # 0x8007bf70
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0xb88
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8007bfb8
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x8007bfb8:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8007bfe8
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x8007bfe8:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c018
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8007c018:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c048
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8007c048:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c078
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8007c078:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c0a8
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x8007c0a8:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c0d8
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x8007c0d8:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c108
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8007c108:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c138
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8007c138:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c168
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8007c168:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c198
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x8007c198:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c1c8
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x8007c1c8:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c1f8
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x8007c1f8:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c228
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x8007c228:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8007c258
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x8007c258:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__10TBGBeakHitFv
_32___dt__10TBGBeakHitFv: # 0x8007c26c
    subi    r3, r3, 0x20
    b       __dt__10TBGBeakHitFv


.globl _32___dt__9TBGEyeHitFv
_32___dt__9TBGEyeHitFv: # 0x8007c274
    subi    r3, r3, 0x20
    b       __dt__9TBGEyeHitFv


.globl _32___dt__10TBGBodyHitFv
_32___dt__10TBGBodyHitFv: # 0x8007c27c
    subi    r3, r3, 0x20
    b       __dt__10TBGBodyHitFv


.globl _104_4_calc__17TBossGessoMtxCalcFUs
_104_4_calc__17TBossGessoMtxCalcFUs: # 0x8007c284
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calc__17TBossGessoMtxCalcFUs


.globl _104_4_calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo
_104_4_calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo: # 0x8007c298
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       calcTransform__24M3UMtxCalcSIAnmBlendQuatFUsRC16J3DTransformInfo


.globl _104_4_init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf
_104_4_init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf: # 0x8007c2ac
    li      r11, 0x4
    lwzx    r11, r3, r11
    add     r3, r3, r11
    subi    r3, r3, 0x68
    b       init__24M3UMtxCalcSIAnmBlendQuatFRC3VecRA3_A4_Cf


.globl _32___dt__10TBossGessoFv
_32___dt__10TBossGessoFv: # 0x8007c2c0
    subi    r3, r3, 0x20
    b       __dt__10TBossGessoFv

