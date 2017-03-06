
.globl __dt__23TNerveAnimalGraphWanderFv
__dt__23TNerveAnimalGraphWanderFv: # 0x8000a4c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8000a50c
    lis     r3, 0x803b
    subi    r0, r3, 0x42a0
    stw     r0, 0x0(r31)
    beq-    branch_0x8000a4fc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x8000a4fc:
    extsh.  r0, r4
    ble-    branch_0x8000a50c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8000a50c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__23TNerveAnimalGraphWanderCFP24TSpineBase_10TLiveActor_
execute__23TNerveAnimalGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x8000a524
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stmw    r27, 0xd4(sp)
    lwz     r31, 0x0(r4)
    lwz     r5, 0x70(r31)
    lwz     r30, 0x74(r31)
    lwz     r3, 0x5c(r5)
    lwz     r7, 0x18(r3)
    cmpwi   r7, 0x0
    beq-    branch_0x8000a5b8
    lha     r6, 0x7c(r31)
    cmpw    r6, r7
    blt-    branch_0x8000a5b8
    divw    r0, r6, r7
    lwz     r3, 0x18(r5)
    mullw   r0, r0, r7
    subf    r0, r0, r6
    slwi    r0, r0, 2
    lwzx    r27, r3, r0
    li      r4, 0x0
    lwz     r3, 0x74(r27)
    bl      getCurAnmIdx__6MActorCFi
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    bl      setBckFromIndex__6MActorFi
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lwz     r0, 0x74(r27)
    addi    r28, r3, 0x0
    li      r4, 0x0
    mr      r3, r0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, 0x10(r3)
    stfs    f0, 0x10(r28)
    b       branch_0x8000a74c

branch_0x8000a5b8:
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x1
    bne-    branch_0x8000a74c
    lwz     r0, 0x20(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8000a654
    li      r3, 0x1f4
    bl      CLBPalFrame_i___Fi
    addi    r29, r3, 0x0
    li      r3, 0x96
    bl      CLBPalFrame_i___Fi
    lwz     r27, 0x150(r31)
    li      r0, 0x0
    addi    r28, r3, 0x0
    stw     r0, 0x0(r27)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ec8(rtoc)
    stw     r0, 0xcc(sp)
    subf    r0, r28, r29
    lis     r3, 0x4330
    lfs     f1, -0x7ed8(rtoc)
    stw     r3, 0xc8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xc4(sp)
    lfd     f0, 0xc8(sp)
    stw     r3, 0xc0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xc0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xb8(sp)
    lwz     r0, 0xbc(sp)
    add     r3, r28, r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r27)
branch_0x8000a654:
    lwz     r4, 0x150(r31)
    lwz     r3, 0x0(r4)
    addi    r0, r3, 0x1
    stw     r0, 0x0(r4)
    lwz     r0, 0x0(r4)
    lwz     r3, 0x4(r4)
    cmpw    r0, r3
    blt-    branch_0x8000a678
    stw     r3, 0x0(r4)
branch_0x8000a678:
    addi    r3, r30, 0x0
    li      r4, 0x0
    li      r5, 0x0
    bl      curAnmEndsNext__6MActorFiPc
    addi    r28, r3, 0x0
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getCurAnmIdx__6MActorCFi
    cmpwi   r3, 0x1
    beq-    branch_0x8000a6a4
    b       branch_0x8000a74c

branch_0x8000a6a4:
    cmpwi   r28, 0x0
    beq-    branch_0x8000a74c
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8000a6cc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8000a6cc:
    li      r3, 0x1f4
    bl      CLBPalFrame_i___Fi
    addi    r28, r3, 0x0
    li      r3, 0x96
    bl      CLBPalFrame_i___Fi
    lwz     r27, 0x150(r31)
    li      r0, 0x0
    addi    r29, r3, 0x0
    stw     r0, 0x0(r27)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ec8(rtoc)
    stw     r0, 0xbc(sp)
    subf    r0, r29, r28
    lis     r3, 0x4330
    lfs     f1, -0x7ed8(rtoc)
    stw     r3, 0xb8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xc4(sp)
    lfd     f0, 0xb8(sp)
    stw     r3, 0xc0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xc0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    add     r3, r29, r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r27)
branch_0x8000a74c:
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      execWalk__11TAnimalBaseFb
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8000a830
    lwz     r3, 0xf4(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8000a778
    addi    r4, r3, 0x10
    b       branch_0x8000a77c

branch_0x8000a778:
    addi    r4, r31, 0xf8
branch_0x8000a77c:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x94(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x9c(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x94(sp)
    lfs     f1, 0x98(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x98(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0x94(sp)
    lfs     f0, 0x98(sp)
    lfs     f2, 0x9c(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7ed4(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000aa44
    lwz     r0, 0x118(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x8000aa44
    addi    r3, sp, 0x84
    addi    r4, r31, 0x114
    bl      pop__23TSolidStack_9TPathNode_Fv
    lwz     r0, 0x84(sp)
    stw     r0, 0xf4(r31)
    lwz     r3, 0x88(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x90(sp)
    stw     r0, 0x100(r31)
    b       branch_0x8000aa44

branch_0x8000a830:
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x8000a844
    addi    r4, r3, 0x10
    b       branch_0x8000a848

branch_0x8000a844:
    addi    r4, r31, 0x108
branch_0x8000a848:
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x78(sp)
    stw     r0, 0x7c(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x80(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x78(sp)
    lfs     f1, 0x7c(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x7c(sp)
    lfs     f1, 0x80(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x80(sp)
    lfs     f1, 0x78(sp)
    lfs     f0, 0x7c(sp)
    lfs     f2, 0x80(sp)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x7ed0(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8000aa44
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
    mr      r3, r31
    bl      resetRandomCurPathNode__11TAnimalBaseFv
    lwz     r4, 0xf4(r31)
    addi    r3, r31, 0xf4
    cmplwi  r4, 0x0
    beq-    branch_0x8000a8e8
    addi    r3, r4, 0x10
    b       branch_0x8000a8ec

branch_0x8000a8e8:
    addi    r3, r3, 0x4
branch_0x8000a8ec:
    lfs     f1, 0x14(r31)
    lfs     f0, 0x4(r3)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8000a9a4
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8000a920
    addi    r3, r30, 0x0
    li      r4, 0x1
    bl      setBckFromIndex__6MActorFi
branch_0x8000a920:
    li      r3, 0xb4
    bl      CLBPalFrame_i___Fi
    addi    r30, r3, 0x0
    li      r3, 0x3c
    bl      CLBPalFrame_i___Fi
    lwz     r27, 0x150(r31)
    li      r0, 0x0
    addi    r29, r3, 0x0
    stw     r0, 0x0(r27)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ec8(rtoc)
    stw     r0, 0xbc(sp)
    subf    r0, r29, r30
    lis     r3, 0x4330
    lfs     f1, -0x7ed8(rtoc)
    stw     r3, 0xb8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xc4(sp)
    lfd     f0, 0xb8(sp)
    stw     r3, 0xc0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xc0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    add     r3, r29, r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r27)
    b       branch_0x8000aa44

branch_0x8000a9a4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurBckFromIndex__6MActorFi
    cmpwi   r3, 0x0
    bne-    branch_0x8000a9c4
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      setBckFromIndex__6MActorFi
branch_0x8000a9c4:
    li      r3, 0x1f4
    bl      CLBPalFrame_i___Fi
    addi    r29, r3, 0x0
    li      r3, 0x96
    bl      CLBPalFrame_i___Fi
    lwz     r27, 0x150(r31)
    li      r0, 0x0
    addi    r30, r3, 0x0
    stw     r0, 0x0(r27)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7ec8(rtoc)
    stw     r0, 0xbc(sp)
    subf    r0, r30, r29
    lis     r3, 0x4330
    lfs     f1, -0x7ed8(rtoc)
    stw     r3, 0xb8(sp)
    xoris   r0, r0, 0x8000
    stw     r0, 0xc4(sp)
    lfd     f0, 0xb8(sp)
    stw     r3, 0xc0(sp)
    fsubs   f2, f0, f3
    lfd     f0, 0xc0(sp)
    fmuls   f1, f1, f2
    fsubs   f0, f0, f3
    fmuls   f0, f0, f1
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    add     r3, r30, r0
    addi    r0, r3, 0x1
    stw     r0, 0x4(r27)
branch_0x8000aa44:
    lmw     r27, 0xd4(sp)
    li      r3, 0x0
    lwz     r0, 0xec(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl pop__23TSolidStack_9TPathNode_Fv
pop__23TSolidStack_9TPathNode_Fv: # 0x8000aa5c
    lwz     r5, 0x4(r4)
    cmpwi   r5, 0x0
    bgt-    branch_0x8000aa98
    lwz     r4, 0x8(r4)
    slwi    r0, r5, 4
    add     r5, r4, r0
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r3)
    lwz     r4, 0x4(r5)
    lwz     r0, 0x8(r5)
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0xc(r5)
    stw     r0, 0xc(r3)
    blr

branch_0x8000aa98:
    subi    r0, r5, 0x1
    stw     r0, 0x4(r4)
    lwz     r0, 0x4(r4)
    lwz     r4, 0x8(r4)
    slwi    r0, r0, 4
    add     r5, r4, r0
    lwz     r0, 0x0(r5)
    stw     r0, 0x0(r3)
    lwz     r4, 0x4(r5)
    lwz     r0, 0x8(r5)
    stw     r4, 0x4(r3)
    stw     r0, 0x8(r3)
    lwz     r0, 0xc(r5)
    stw     r0, 0xc(r3)
    blr


.globl theNerve__23TNerveAnimalGraphWanderFv
theNerve__23TNerveAnimalGraphWanderFv: # 0x8000aad4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x71f0(r13)
    extsb.  r0, r0
    bne-    branch_0x8000ab24
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803b
    stw     r0, -0x71ec(r13)
    subi    r0, r3, 0x42a0
    lis     r4, 0x8001
    stw     r0, -0x71ec(r13)
    lis     r3, 0x803f
    subi    r5, r3, 0x6730
    subi    r4, r4, 0x5b38
    subi    r3, r13, 0x71ec
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f0(r13)
branch_0x8000ab24:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x71ec
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CLBPalFrame_i___Fi
CLBPalFrame_i___Fi: # 0x8000ab38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x7eb8(rtoc)
    xoris   r0, r31, 0x8000
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    fdivs   f0, f0, f1
    stw     r0, 0x10(sp)
    lfd     f2, -0x7ec8(rtoc)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
    bl      CLBRoundf_i___Ff
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl CLBRoundf_i___Ff
CLBRoundf_i___Ff: # 0x8000ab90
    stwu    sp, -0x18(sp)
    lfs     f0, -0x7ec0(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8000aba8
    lfs     f0, -0x7ebc(rtoc)
    b       branch_0x8000abac

branch_0x8000aba8:
    lfs     f0, -0x7eb4(rtoc)
branch_0x8000abac:
    fadds   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x18
    blr
