
.globl __dt__9TJumpBaseFv
__dt__9TJumpBaseFv: # 0x801fd214
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fd27c
    lis     r3, 0x803d
    addi    r3, r3, 0x6c18
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fd26c
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fd26c:
    extsh.  r0, r31
    ble-    branch_0x801fd27c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fd27c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__9TJumpBaseFv
control__9TJumpBaseFv: # 0x801fd298
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stw     r31, 0x84(sp)
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    mr      r29, r3
    lwz     r0, 0xf0(r3)
    lis     r3, 0x8039
    lbz     r30, 0x138(r29)
    addi    r31, r3, 0x4438
    rlwinm. r0, r0, 0, 24, 24
    extsb   r30, r30
    beq-    branch_0x801fd2d8
    li      r0, 0x1
    b       branch_0x801fd2dc

branch_0x801fd2d8:
    li      r0, 0x0
branch_0x801fd2dc:
    cmpwi   r0, 0x0
    bne-    branch_0x801fd2f0
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r29)
branch_0x801fd2f0:
    lbz     r0, 0x138(r29)
    extsb   r0, r0
    cmpwi   r0, 0x3
    beq-    branch_0x801fd390
    bge-    branch_0x801fd31c
    cmpwi   r0, 0x1
    beq-    branch_0x801fd494
    bge-    branch_0x801fd418
    cmpwi   r0, 0x0
    bge-    branch_0x801fd32c
    b       branch_0x801fd67c

branch_0x801fd31c:
    cmpwi   r0, 0x5
    beq-    branch_0x801fd588
    bge-    branch_0x801fd67c
    b       branch_0x801fd520

branch_0x801fd32c:
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd67c
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0xf8
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x801fd384
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x1e88(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0xc(r3)
branch_0x801fd384:
    lfs     f0, -0x1e94(rtoc)
    stfs    f0, 0xb8(r29)
    b       branch_0x801fd67c

branch_0x801fd390:
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd67c
    lwz     r0, 0x64(r29)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r29)
    lwz     r3, 0xec(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801fd3c8
    lwz     r3, 0x8(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
branch_0x801fd3c8:
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x108
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    cmplwi  r3, 0x0
    beq-    branch_0x801fd67c
    lha     r4, 0x8(r3)
    lis     r0, 0x4330
    lfd     f1, -0x1e88(rtoc)
    xoris   r4, r4, 0x8000
    stw     r4, 0x74(sp)
    stw     r0, 0x70(sp)
    lfd     f0, 0x70(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x10(r3)
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0xc(r3)
    b       branch_0x801fd67c

branch_0x801fd418:
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd468
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x108
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r31, r3
    beq-    branch_0x801fd454
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0x10(r31)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r31)
branch_0x801fd454:
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
    lfs     f0, -0x1e90(rtoc)
    stfs    f0, 0xb8(r29)
branch_0x801fd468:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801fd67c
    li      r0, 0x0
    stw     r0, 0x13c(r29)
    li      r0, 0x3
    stb     r0, 0x138(r29)
    b       branch_0x801fd67c

branch_0x801fd494:
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd4f8
    lwz     r3, 0xec(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801fd4c8
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801fd4c8
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801fd4c8:
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0xf8
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r31, r3
    beq-    branch_0x801fd4f8
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0x10(r31)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r31)
branch_0x801fd4f8:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801fd67c
    li      r0, 0x0
    stw     r0, 0x13c(r29)
    stb     r0, 0x138(r29)
    b       branch_0x801fd67c

branch_0x801fd520:
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd55c
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x118
    bl      setBck__6MActorFPCc
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    mr.     r31, r3
    beq-    branch_0x801fd55c
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0x10(r31)
    bl      SMSGetAnmFrameRate__Fv
    stfs    f1, 0xc(r31)
branch_0x801fd55c:
    lwz     r3, 0x74(r29)
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    cmpwi   r3, 0x0
    beq-    branch_0x801fd67c
    li      r0, 0x0
    stw     r0, 0x13c(r29)
    li      r0, 0x3
    stb     r0, 0x138(r29)
    b       branch_0x801fd67c

branch_0x801fd588:
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd64c
    lwz     r0, 0xf0(r29)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r29)
    lwz     r3, -0x60ac(r13)
    lwz     r6, -0x5eac(r13)
    lha     r0, 0x0(r3)
    lwz     r5, -0x5ea4(r13)
    clrlwi  r0, r0, 16
    lwz     r3, -0x5ea8(r13)
    sraw    r4, r0, r6
    lfs     f0, -0x1e98(rtoc)
    sraw    r0, r0, r6
    slwi    r4, r4, 2
    slwi    r0, r0, 2
    lfsx    f2, r5, r4
    lfsx    f1, r3, r0
    stfs    f1, 0x60(sp)
    stfs    f0, 0x64(sp)
    stfs    f2, 0x68(sp)
    lwz     r3, 0x60(sp)
    lwz     r0, 0x64(sp)
    stw     r3, 0xac(r29)
    stw     r0, 0xb0(r29)
    lwz     r0, 0x68(sp)
    stw     r0, 0xb4(r29)
    lwz     r3, 0xac(r29)
    lwz     r0, 0xb0(r29)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0xb4(r29)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x10(r29)
    lfs     f0, 0x54(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x58(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r29)
    lfs     f1, 0x18(r29)
    lfs     f0, 0x5c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
branch_0x801fd64c:
    lwz     r0, 0xf0(r29)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801fd660
    li      r0, 0x1
    b       branch_0x801fd664

branch_0x801fd660:
    li      r0, 0x0
branch_0x801fd664:
    cmpwi   r0, 0x0
    bne-    branch_0x801fd67c
    li      r0, 0x0
    stw     r0, 0x13c(r29)
    li      r0, 0x2
    stb     r0, 0x138(r29)
branch_0x801fd67c:
    lbz     r0, 0x138(r29)
    extsb   r0, r0
    cmpw    r0, r30
    bne-    branch_0x801fd6ac
    lwz     r3, 0x13c(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x13c(r29)
    lwz     r0, 0x13c(r29)
    cmplwi  r0, 0x0
    bne-    branch_0x801fd6ac
    li      r0, 0x1
    stw     r0, 0x13c(r29)
branch_0x801fd6ac:
    mr      r3, r29
    bl      control__11TMapObjBaseFv
    lwz     r3, 0xc4(r29)
    cmplwi  r3, 0x0
    beq-    branch_0x801fd76c
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x801fd6d4
    li      r0, 0x1
    b       branch_0x801fd6d8

branch_0x801fd6d4:
    li      r0, 0x0
branch_0x801fd6d8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801fd720
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x801fd70c
    cmplwi  r3, 0x101
    beq-    branch_0x801fd70c
    subi    r0, r3, 0x102
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x3
    ble-    branch_0x801fd70c
    cmplwi  r3, 0x4104
    bne-    branch_0x801fd714
branch_0x801fd70c:
    li      r0, 0x1
    b       branch_0x801fd718

branch_0x801fd714:
    li      r0, 0x0
branch_0x801fd718:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fd76c
branch_0x801fd720:
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x158(r12)
    mtlr    r12
    blrl
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x13c(r29)
    li      r0, 0x2
    stb     r0, 0x138(r29)
branch_0x801fd76c:
    lwz     r0, 0x68(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801fd790
    lwz     r3, -0x608c(r13)
    lwz     r0, 0x0(r3)
    stw     r0, 0xc4(r29)
    lwz     r3, MarioHitActorPos(r13)
    lfs     f0, 0x4(r3)
    stfs    f0, 0xc8(r29)
branch_0x801fd790:
    lwz     r0, 0x8c(sp)
    lwz     r31, 0x84(sp)
    lwz     r30, 0x80(sp)
    mtlr    r0
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x88
    blr


.globl calcRootMatrix__9TJumpBaseFv
calcRootMatrix__9TJumpBaseFv: # 0x801fd7ac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801fd838
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r0, 0x68(r29)
    addi    r31, r3, 0x0
    mr      r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    addi    r30, r3, 0x0
    addi    r4, r31, 0x20
    bl      PSMTXCopy
    lwz     r3, 0x24(r29)
    lwz     r0, 0x28(r29)
    stw     r3, 0x14(r31)
    stw     r0, 0x18(r31)
    lwz     r0, 0x2c(r29)
    stw     r0, 0x1c(r31)
    lfs     f2, 0x2c(r30)
    lfs     f1, 0x1c(r30)
    lfs     f0, 0xc(r30)
    stfs    f0, 0x10(r29)
    stfs    f1, 0x14(r29)
    stfs    f2, 0x18(r29)
    b       branch_0x801fd840

branch_0x801fd838:
    mr      r3, r29
    bl      calcRootMatrix__11TMapObjBaseFv
branch_0x801fd840:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getRootJointMtx__9TJumpBaseCFv
getRootJointMtx__9TJumpBaseCFv: # 0x801fd85c
    lwz     r3, 0x74(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    blr


.globl receiveMessage__9TJumpBaseFP9THitActorUl
receiveMessage__9TJumpBaseFP9THitActorUl: # 0x801fd86c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0x8000
    cmplwi  r0, 0x1
    bne-    branch_0x801fd890
    li      r0, 0x1
    b       branch_0x801fd894

branch_0x801fd890:
    li      r0, 0x0
branch_0x801fd894:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fd97c
    cmplwi  r5, 0x4
    bne-    branch_0x801fd8f0
    lbz     r0, 0x138(r3)
    extsb.  r0, r0
    bne-    branch_0x801fd97c
    stw     r4, 0x68(r3)
    lwz     r0, 0x64(r3)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r3)
    lwz     r3, 0xec(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801fd8e8
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801fd8e8
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801fd8e8:
    li      r3, 0x1
    b       branch_0x801fd9c4

branch_0x801fd8f0:
    cmplwi  r5, 0x8
    bne-    branch_0x801fd914
    li      r4, 0x0
    stw     r4, 0x68(r3)
    li      r0, 0x2
    stw     r4, 0x13c(r3)
    stb     r0, 0x138(r3)
    li      r3, 0x1
    b       branch_0x801fd9c4

branch_0x801fd914:
    cmplwi  r5, 0x6
    bne-    branch_0x801fd938
    li      r4, 0x0
    stw     r4, 0x68(r3)
    li      r0, 0x2
    stw     r4, 0x13c(r3)
    stb     r0, 0x138(r3)
    li      r3, 0x1
    b       branch_0x801fd9c4

branch_0x801fd938:
    cmplwi  r5, 0x7
    bne-    branch_0x801fd95c
    li      r4, 0x0
    stw     r4, 0x68(r3)
    li      r0, 0x5
    stw     r4, 0x13c(r3)
    stb     r0, 0x138(r3)
    li      r3, 0x1
    b       branch_0x801fd9c4

branch_0x801fd95c:
    cmplwi  r5, 0x0
    bne-    branch_0x801fd97c
    li      r0, 0x0
    stw     r0, 0x13c(r3)
    li      r0, 0x4
    stb     r0, 0x138(r3)
    li      r3, 0x1
    b       branch_0x801fd9c4

branch_0x801fd97c:
    addis   r0, r6, 0xff00
    cmplwi  r0, 0x1
    bne-    branch_0x801fd990
    li      r0, 0x1
    b       branch_0x801fd994

branch_0x801fd990:
    li      r0, 0x0
branch_0x801fd994:
    clrlwi. r0, r0, 24
    beq-    branch_0x801fd9c0
    lbz     r0, 0x138(r3)
    cmpwi   r0, 0x3
    bne-    branch_0x801fd9c0
    li      r0, 0x0
    stw     r0, 0x13c(r3)
    li      r0, 0x1
    stb     r0, 0x138(r3)
    li      r3, 0x1
    b       branch_0x801fd9c4

branch_0x801fd9c0:
    li      r3, 0x0
branch_0x801fd9c4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl ensureTakeSituation__9TJumpBaseFv
ensureTakeSituation__9TJumpBaseFv: # 0x801fd9d4
    lwz     r4, 0x6c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x801fd9f4
    lwz     r0, 0x68(r4)
    cmplw   r0, r3
    beq-    branch_0x801fd9f4
    li      r0, 0x0
    stw     r0, 0x6c(r3)
branch_0x801fd9f4:
    lwz     r4, 0x68(r3)
    cmplwi  r4, 0x0
    beqlr-    

    lwz     r0, 0x6c(r4)
    cmplw   r0, r3
    beqlr-    

    li      r0, 0x0
    stw     r0, 0x68(r3)
    blr


.globl initMapObj__9TJumpBaseFv
initMapObj__9TJumpBaseFv: # 0x801fda18
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0xec(r30)
    cmplwi  r3, 0x0
    beq-    branch_0x801fda68
    lwz     r31, 0x8(r3)
    li      r4, 0x7
    addi    r3, r31, 0x0
    bl      setAllBGType__17TMapCollisionBaseFUs
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      setAllActor__17TMapCollisionBaseFPC10TLiveActor
    addi    r3, r31, 0x0
    li      r4, 0x2710
    bl      setAllData__17TMapCollisionBaseFs
branch_0x801fda68:
    li      r0, 0x0
    stb     r0, 0xe8(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl __ct__9TJumpBaseFPCc
__ct__9TJumpBaseFPCc: # 0x801fda88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x6c18
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x2
    stw     r3, 0x20(r31)
    mr      r3, r31
    stb     r0, 0x138(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__12TMushroom1upFUlPQ26JDrama9TGraphics
perform__12TMushroom1upFUlPQ26JDrama9TGraphics: # 0x801fdad4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x38(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x34(sp)
    mr      r29, r3
    lbz     r6, 0x139(r3)
    cmpwi   r6, 0x2
    beq-    branch_0x801fdb48
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0xf0
    bge-    branch_0x801fdb48
    rlwinm. r0, r30, 0, 22, 22
    beq-    branch_0x801fdb48
    lwz     r4, gpMarDirector(r13)
    lis     r3, 0x2aab
    subi    r0, r3, 0x5555
    lwz     r4, 0x58(r4)
    mulhw   r3, r0, r4
    srwi    r0, r3, 31
    add     r0, r3, r0
    mulli   r0, r0, 0x6
    subf    r0, r0, r4
    cmpwi   r0, 0x2
    ble-    branch_0x801fdb48
    rlwinm  r30, r30, 0, 23, 21
branch_0x801fdb48:
    clrlwi. r0, r30, 31
    beq-    branch_0x801fdb88
    lbz     r0, 0x13a(r29)
    extsb.  r0, r0
    bne-    branch_0x801fdb88
    extsb   r0, r6
    cmpwi   r0, 0x2
    beq-    branch_0x801fdb88
    lwz     r0, 0x104(r29)
    cmpwi   r0, 0x0
    bgt-    branch_0x801fdb88
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801fdb88:
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TMapObjBaseFUlPQ26JDrama9TGraphics
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    lwz     r29, 0x34(sp)
    addi    sp, sp, 0x40
    blr


.globl control__12TMushroom1upFv
control__12TMushroom1upFv: # 0x801fdbb4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    stw     r31, 0x7c(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lbz     r0, 0x13a(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x801fdd00
    lwz     r0, 0x13c(r31)
    subfic  r0, r0, 0xb4
    cmpwi   r0, 0x0
    bge-    branch_0x801fdc04
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    b       branch_0x801fdfcc

branch_0x801fdc04:
    xoris   r0, r0, 0x8000
    lwz     r4, MarioHitActorPos(r13)
    stw     r0, 0x74(sp)
    lis     r0, 0x4330
    lfd     f1, -0x1e88(rtoc)
    stw     r0, 0x70(sp)
    lfs     f2, -0x1e74(rtoc)
    lfd     f0, 0x70(sp)
    lwz     r3, 0x0(r4)
    fsubs   f0, f0, f1
    lwz     r0, 0x4(r4)
    lfs     f1, -0x1e78(rtoc)
    stw     r3, 0x50(sp)
    fmuls   f0, f2, f0
    stw     r0, 0x54(sp)
    lfs     f2, -0x1e80(rtoc)
    fmuls   f0, f1, f0
    lwz     r3, 0x8(r4)
    lwz     r0, -0x5eac(r13)
    stw     r3, 0x58(sp)
    fctiwz  f0, f0
    lfs     f1, 0x54(sp)
    lwz     r4, -0x5ea4(r13)
    stfd    f0, 0x68(sp)
    fadds   f0, f1, f2
    lfs     f2, -0x1e94(rtoc)
    lwz     r3, 0x6c(sp)
    stfs    f0, 0x54(sp)
    clrlwi  r3, r3, 16
    lfs     f3, -0x1e7c(rtoc)
    sraw    r0, r3, r0
    lfs     f0, 0x50(sp)
    slwi    r0, r0, 2
    lwz     r3, -0x5ea8(r13)
    lfsx    f1, r4, r0
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x50(sp)
    lfsx    f1, r3, r0
    lfs     f0, 0x58(sp)
    fmuls   f1, f2, f1
    fmadds  f0, f3, f1, f0
    stfs    f0, 0x58(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x58(sp)
    stw     r0, 0x18(r31)
    stfs    f3, 0x24(r31)
    stfs    f3, 0x28(r31)
    stfs    f3, 0x2c(r31)
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    lwz     r3, 0x13c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x13c(r31)
    b       branch_0x801fdfcc

branch_0x801fdd00:
    lwz     r3, 0x13c(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x13c(r31)
    lbz     r0, 0x139(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x801fdd38
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0x9c(r31)
    stfs    f0, 0x98(r31)
    stfs    f0, 0x94(r31)
    stfs    f0, 0xb4(r31)
    stfs    f0, 0xb0(r31)
    stfs    f0, 0xac(r31)
    b       branch_0x801fdfcc

branch_0x801fdd38:
    lbz     r0, 0x138(r31)
    extsb.  r0, r0
    bne-    branch_0x801fdd6c
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801fdd58
    li      r0, 0x1
    b       branch_0x801fdd5c

branch_0x801fdd58:
    li      r0, 0x0
branch_0x801fdd5c:
    cmpwi   r0, 0x0
    bne-    branch_0x801fdfcc
    li      r0, 0x1
    stb     r0, 0x138(r31)
branch_0x801fdd6c:
    lwz     r4, MarioHitActorPos(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, -0x1e98(rtoc)
    stfs    f0, 0x48(sp)
    lfs     f1, 0x44(sp)
    lfs     f3, 0x4c(sp)
    lfs     f0, 0x48(sp)
    fmuls   f2, f1, f1
    fmuls   f3, f3, f3
    fmuls   f1, f0, f0
    lfs     f0, -0x1e70(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801fddf8
    lfs     f0, -0x1e6c(rtoc)
    stfs    f0, 0x44(sp)
branch_0x801fddf8:
    lbz     r0, 0x139(r31)
    cmpwi   r0, 0x1
    bne-    branch_0x801fde28
    lfs     f0, 0x44(sp)
    fneg    f0, f0
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fneg    f0, f0
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fneg    f0, f0
    stfs    f0, 0x4c(sp)
branch_0x801fde28:
    lfs     f2, -0x1e98(rtoc)
    lfs     f1, 0x4c(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x801fde58
    lfs     f0, 0x44(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x801fde50
    lfs     f31, -0x1e68(rtoc)
    b       branch_0x801fded4

branch_0x801fde50:
    lfs     f31, -0x1e64(rtoc)
    b       branch_0x801fded4

branch_0x801fde58:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x801fde98
    lfs     f2, 0x44(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x1e88(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x1e60(rtoc)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    stw     r0, 0x68(sp)
    lfd     f1, 0x68(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f0, f1
    b       branch_0x801fded4

branch_0x801fde98:
    fneg    f1, f1
    lfs     f2, 0x44(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x1e88(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x1e60(rtoc)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x1e5c(rtoc)
    stw     r0, 0x68(sp)
    lfd     f2, 0x68(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f31, f0, f1
branch_0x801fded4:
    lfs     f0, -0x1e5c(rtoc)
    lfs     f1, 0x34(r31)
    fsubs   f2, f31, f0
    fadds   f3, f0, f31
    bl      MsWrap_f___Ffff_801fdfe4
    fsubs   f1, f31, f1
    lfs     f0, -0x1e98(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fdf14
    lfs     f0, -0x77c8(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fdf08
    b       branch_0x801fdf0c

branch_0x801fdf08:
    fmr     f0, f1
branch_0x801fdf0c:
    fmr     f2, f0
    b       branch_0x801fdf2c

branch_0x801fdf14:
    lfs     f0, -0x77c4(r13)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801fdf24
    b       branch_0x801fdf28

branch_0x801fdf24:
    fmr     f1, f0
branch_0x801fdf28:
    fmr     f2, f1
branch_0x801fdf2c:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x1e58(rtoc)
    fadds   f2, f1, f2
    b       branch_0x801fdf40

branch_0x801fdf3c:
    fsubs   f2, f2, f0
branch_0x801fdf40:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x801fdf3c
    lfs     f1, -0x1e58(rtoc)
    lfs     f0, -0x1e98(rtoc)
    b       branch_0x801fdf5c

branch_0x801fdf58:
    fadds   f2, f2, f1
branch_0x801fdf5c:
    fcmpo   cr0, f2, f0
    blt+    branch_0x801fdf58
    addi    r3, sp, 0x44
    stfs    f2, 0x34(r31)
    mr      r4, r3
    bl      PSVECNormalize
    lfs     f0, 0x44(sp)
    lfs     f1, -0x1e54(rtoc)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x4c(sp)
    lfs     f1, 0x94(r31)
    lfs     f0, 0x44(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x94(r31)
    lfs     f1, 0x98(r31)
    lfs     f0, 0x48(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f1, 0x9c(r31)
    lfs     f0, 0x4c(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x9c(r31)
branch_0x801fdfcc:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lwz     r31, 0x7c(sp)
    mtlr    r0
    addi    sp, sp, 0x88
    blr


.globl MsWrap_f___Ffff_801fdfe4
MsWrap_f___Ffff_801fdfe4: # 0x801fdfe4
    fcmpo   cr0, f2, f3
    cror    2, 1, 2
    bne-    branch_0x801fe020
    fmr     f1, f2
    blr


.incbin "./baserom/code/Text_0x80005600.bin", 0x1f89f8, 0x801fdffc - 0x801fdff8
branch_0x801fdffc:
    fsubs   f1, f1, f0
branch_0x801fe000:
    fcmpo   cr0, f1, f3
    cror    2, 1, 2
    beq+    branch_0x801fdffc
    b       branch_0x801fe014

branch_0x801fe010:
    fadds   f1, f1, f0
branch_0x801fe014:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801fe010
    blr

branch_0x801fe020:
    fsubs   f0, f3, f2
    b       branch_0x801fe000


.incbin "./baserom/code/Text_0x80005600.bin", 0x1f8a28, 0x801fe02c - 0x801fe028

.globl load__12TMushroom1upFR20JSUMemoryInputStream
load__12TMushroom1upFR20JSUMemoryInputStream: # 0x801fe02c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    lwz     r3, 0xf0(r31)
    li      r0, -0x91
    and     r0, r3, r0
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl initMapObj__12TMushroom1upFv
initMapObj__12TMushroom1upFv: # 0x801fe068
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lfs     f0, -0x1e50(rtoc)
    li      r0, -0x94
    stfs    f0, 0xcc(r31)
    lwz     r3, 0xf0(r31)
    and     r0, r3, r0
    stw     r0, 0xf0(r31)
    lbz     r0, 0x139(r31)
    cmpwi   r0, 0x2
    bne-    branch_0x801fe0c4
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x100(r12)
    mtlr    r12
    blrl
branch_0x801fe0c4:
    lfs     f0, -0x1e7c(rtoc)
    stfs    f0, 0x24(r31)
    stfs    f0, 0x28(r31)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl makeObjAppeared__12TMushroom1upFv
makeObjAppeared__12TMushroom1upFv: # 0x801fe0e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      makeObjAppeared__11TMapObjBaseFv
    li      r0, 0x4b0
    stw     r0, 0x104(r31)
    li      r0, 0x0
    stb     r0, 0x138(r31)
    stb     r0, 0x13a(r31)
    lbz     r0, 0x139(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801fe148
    lwz     r3, gpMSound(r13)
    li      r4, 0x4854
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fe148
    li      r3, 0x4854
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801fe148:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe5
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801fe198
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r3)
branch_0x801fe198:
    lwz     r3, gpMarioParticleManager(r13)
    addi    r5, r31, 0x10
    li      r4, 0xe6
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801fe1e8
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r3)
branch_0x801fe1e8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl touchPlayer__12TMushroom1upFP9THitActor
touchPlayer__12TMushroom1upFP9THitActor: # 0x801fe1fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lbz     r0, 0x13a(r3)
    cmpwi   r0, 0x1
    beq-    branch_0x801fe280
    mr      r3, r4
    lwz     r12, 0x0(r4)
    addi    r4, r31, 0x0
    li      r5, 0xe
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x801fe280
    li      r0, 0x0
    stw     r0, 0x13c(r31)
    li      r0, 0x1
    li      r4, 0x4841
    stb     r0, 0x13a(r31)
    lwz     r3, gpMSound(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801fe278
    li      r3, 0x4841
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801fe278:
    bl      getIllegalCheckData__4TMapFv
    stw     r3, 0xc4(r31)
branch_0x801fe280:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __ct__12TMushroom1upFiPCc
__ct__12TMushroom1upFiPCc: # 0x801fe294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    addi    r4, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, 0x803d
    addi    r3, r3, 0x6d7c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    li      r4, 0x0
    stw     r0, 0x20(r30)
    extsb   r0, r31
    addi    r3, r30, 0x0
    stb     r4, 0x138(r30)
    stb     r0, 0x139(r30)
    stb     r4, 0x13a(r30)
    stw     r4, 0x13c(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__12TMushroom1upFv
__dt__12TMushroom1upFv: # 0x801fe300
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801fe368
    lis     r3, 0x803d
    addi    r3, r3, 0x6d7c
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801fe358
    lis     r3, 0x803c
    addi    r3, r3, 0x2ab8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801fe358:
    extsh.  r0, r31
    ble-    branch_0x801fe368
    mr      r3, r30
    bl      __dl__FPv
branch_0x801fe368:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjItem2_cpp
__sinit_MapObjItem2_cpp: # 0x801fe384
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x5550
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe3cc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801fe3cc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe3fc
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801fe3fc:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe42c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x801fe42c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe45c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x801fe45c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe48c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x801fe48c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe4bc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801fe4bc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe4ec
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801fe4ec:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe51c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x801fe51c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe54c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x801fe54c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe57c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x801fe57c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe5ac
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801fe5ac:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe5dc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801fe5dc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe60c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x801fe60c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe63c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x801fe63c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801fe66c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x801fe66c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__12TMushroom1upFv
_32___dt__12TMushroom1upFv: # 0x801fe680
    subi    r3, r3, 0x20
    b       __dt__12TMushroom1upFv


.globl _32___dt__9TJumpBaseFv
_32___dt__9TJumpBaseFv: # 0x801fe688
    subi    r3, r3, 0x20
    b       __dt__9TJumpBaseFv

