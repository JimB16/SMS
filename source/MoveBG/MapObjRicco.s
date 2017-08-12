
.globl __dt__14TFruitLauncherFv
__dt__14TFruitLauncherFv: # 0x801cd134
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cd19c
    lis     r3, __vvt__14TFruitLauncher@ha
    addi    r3, r3, __vvt__14TFruitLauncher@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cd18c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cd18c:
    extsh.  r0, r31
    ble-    branch_0x801cd19c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cd19c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl loadAfter__14TFruitLauncherFv
loadAfter__14TFruitLauncherFv: # 0x801cd1b8
    mflr    r0
    lis     r4, unk_80391770@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x108(sp)
    stw     r31, 0x104(sp)
    addi    r31, r4, unk_80391770@l
    stw     r30, 0x100(sp)
    addi    r30, r3, 0x0
    stw     r29, 0xfc(sp)
    stw     r28, 0xf8(sp)
    bl      loadAfter__11TMapObjBaseFv
    lfs     f0, -0x28d0(r2)
    addi    r6, sp, 0xd4
    lfs     f1, -0x28cc(r2)
    addi    r5, sp, 0xe0
    stfs    f0, 0xe0(sp)
    addi    r4, sp, 0xec
    stfs    f1, 0xd4(sp)
    addi    r3, r31, 0xf8
    stfs    f0, 0xec(sp)
    stfs    f1, 0xd8(sp)
    stfs    f0, 0xe4(sp)
    stfs    f0, 0xf0(sp)
    stfs    f1, 0xdc(sp)
    stfs    f0, 0xe8(sp)
    stfs    f0, 0xf4(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    li      r29, 0x1
    stb     r29, 0x1a4(r3)
    addi    r6, sp, 0xb0
    addi    r5, sp, 0xbc
    lfs     f0, -0x28d0(r2)
    addi    r4, sp, 0xc8
    lfs     f1, -0x28cc(r2)
    addi    r3, r31, 0x108
    stfs    f0, 0xbc(sp)
    stfs    f1, 0xb0(sp)
    stfs    f0, 0xc8(sp)
    stfs    f1, 0xb4(sp)
    stfs    f0, 0xc0(sp)
    stfs    f0, 0xcc(sp)
    stfs    f1, 0xb8(sp)
    stfs    f0, 0xc4(sp)
    stfs    f0, 0xd0(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stb     r29, 0x1a4(r3)
    addi    r6, sp, 0x8c
    addi    r5, sp, 0x98
    lfs     f0, -0x28d0(r2)
    addi    r4, sp, 0xa4
    lfs     f1, -0x28cc(r2)
    addi    r3, r31, 0x114
    stfs    f0, 0x98(sp)
    stfs    f1, 0x8c(sp)
    stfs    f0, 0xa4(sp)
    stfs    f1, 0x90(sp)
    stfs    f0, 0x9c(sp)
    stfs    f0, 0xa8(sp)
    stfs    f1, 0x94(sp)
    stfs    f0, 0xa0(sp)
    stfs    f0, 0xac(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stb     r29, 0x1a4(r3)
    addi    r6, sp, 0x68
    addi    r5, sp, 0x74
    lfs     f0, -0x28d0(r2)
    addi    r4, sp, 0x80
    lfs     f1, -0x28cc(r2)
    addi    r3, r31, 0x120
    stfs    f0, 0x74(sp)
    stfs    f1, 0x68(sp)
    stfs    f0, 0x80(sp)
    stfs    f1, 0x6c(sp)
    stfs    f0, 0x78(sp)
    stfs    f0, 0x84(sp)
    stfs    f1, 0x70(sp)
    stfs    f0, 0x7c(sp)
    stfs    f0, 0x88(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stb     r29, 0x1a4(r3)
    addi    r6, sp, 0x44
    addi    r5, sp, 0x50
    lfs     f0, -0x28d0(r2)
    addi    r4, sp, 0x5c
    lfs     f1, -0x28cc(r2)
    addi    r3, r31, 0x12c
    stfs    f0, 0x50(sp)
    stfs    f1, 0x44(sp)
    stfs    f0, 0x5c(sp)
    stfs    f1, 0x48(sp)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x60(sp)
    stfs    f1, 0x4c(sp)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x64(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stb     r29, 0x1a4(r3)
    addi    r3, r31, 0x138
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x138
    mtlr    r12
    blrl
    stw     r3, 0x138(r30)
    addi    r3, r31, 0x14c
    lwz     r4, 0x138(r30)
    stw     r30, 0x138(r4)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r28, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r28)
    addi    r4, r3, 0x0
    addi    r3, r28, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x14c
    mtlr    r12
    blrl
    stw     r3, 0x13c(r30)
    addi    r4, r31, 0x160
    lwz     r3, 0x13c(r30)
    stw     r30, 0x138(r3)
    stw     r29, 0x140(r30)
    lwz     r29, 0x138(r30)
    mr      r3, r29
    bl      startBck__11TMapObjBaseFPCc
    lwz     r0, 0x64(r29)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r29)
    lwz     r3, 0xec(r29)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801cd3ec
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801cd3ec:
    lwz     r0, 0x10c(sp)
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    mtlr    r0
    lwz     r29, 0xfc(sp)
    lwz     r28, 0xf8(sp)
    addi    sp, sp, 0x108
    blr


.globl fireObj__14TFruitLauncherFv
fireObj__14TFruitLauncherFv: # 0x801cd40c
    mflr    r0
    li      r4, 0x11
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stfd    f30, 0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    addi    r5, r31, 0x10
    stw     r30, 0x60(sp)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x384c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cd474
    addi    r4, r31, 0x10
    li      r3, 0x384c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cd474:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x387d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cd4a4
    addi    r4, r31, 0x10
    li      r3, 0x387d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cd4a4:
    lwz     r0, 0x140(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x801cd4bc
    li      r0, 0x1
    stw     r0, 0x140(r31)
    b       branch_0x801cd4c4

branch_0x801cd4bc:
    li      r0, 0x0
    stw     r0, 0x140(r31)
branch_0x801cd4c4:
    lwz     r0, 0x140(r31)
    slwi    r0, r0, 2
    add     r3, r31, r0
    lwz     r30, 0x138(r3)
    mr      r3, r30
    bl      getMActor__10TLiveActorCFv
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lfs     f0, -0x28d0(r2)
    stfs    f0, 0x10(r3)
    mr      r3, r30
    lwz     r0, 0x64(r30)
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r30)
    bl      getModel__10TLiveActorCFv
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0xec(r30)
    lwz     r3, 0x58(r3)
    lwz     r30, 0x8(r4)
    addi    r4, r30, 0x20
    bl      PSMTXCopy
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x28a8(r2)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x28c8(r2)
    stw     r0, 0x58(sp)
    lfs     f1, -0x28c4(r2)
    lfd     f3, 0x58(sp)
    lfs     f0, -0x28c0(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd5a0
    lis     r4, unk_40000390@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000390@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd650

branch_0x801cd5a0:
    lfs     f0, -0x28bc(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd5d0
    lis     r4, unk_40000391@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000391@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd650

branch_0x801cd5d0:
    lfs     f0, -0x28b8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd600
    lis     r4, unk_40000392@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000392@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd650

branch_0x801cd600:
    lfs     f0, -0x28b4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd630
    lis     r4, unk_40000393@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000393@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd650

branch_0x801cd630:
    lis     r4, unk_40000394@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000394@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x801cd650:
    cmplwi  r3, 0x0
    addi    r30, r3, 0x0
    bne-    branch_0x801cd770
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x28a8(r2)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x28c8(r2)
    stw     r0, 0x58(sp)
    lfs     f1, -0x28c4(r2)
    lfd     f3, 0x58(sp)
    lfs     f0, -0x28c0(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd6bc
    lis     r4, unk_40000390@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000390@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd76c

branch_0x801cd6bc:
    lfs     f0, -0x28bc(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd6ec
    lis     r4, unk_40000391@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000391@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd76c

branch_0x801cd6ec:
    lfs     f0, -0x28b8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd71c
    lis     r4, unk_40000392@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000392@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd76c

branch_0x801cd71c:
    lfs     f0, -0x28b4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd74c
    lis     r4, unk_40000393@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000393@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd76c

branch_0x801cd74c:
    lis     r4, unk_40000394@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000394@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x801cd76c:
    mr      r30, r3
branch_0x801cd770:
    cmplwi  r30, 0x0
    bne-    branch_0x801cd88c
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x28a8(r2)
    stw     r0, 0x5c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x28c8(r2)
    stw     r0, 0x58(sp)
    lfs     f1, -0x28c4(r2)
    lfd     f3, 0x58(sp)
    lfs     f0, -0x28c0(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd7d8
    lis     r4, unk_40000390@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000390@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd888

branch_0x801cd7d8:
    lfs     f0, -0x28bc(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd808
    lis     r4, unk_40000391@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000391@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd888

branch_0x801cd808:
    lfs     f0, -0x28b8(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd838
    lis     r4, unk_40000392@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000392@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd888

branch_0x801cd838:
    lfs     f0, -0x28b4(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cd868
    lis     r4, unk_40000393@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000393@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
    b       branch_0x801cd888

branch_0x801cd868:
    lis     r4, unk_40000394@h
    lwz     r3, R13Off_m0x62b0(r13)
    lfs     f1, 0x10(r31)
    addi    r4, r4, unk_40000394@l
    lfs     f2, 0x14(r31)
    li      r5, 0x0
    lfs     f3, 0x18(r31)
    bl      makeObjAppear__18TMapObjBaseManagerFfffUlb
branch_0x801cd888:
    mr      r30, r3
branch_0x801cd88c:
    cmplwi  r30, 0x0
    beq-    branch_0x801cd9b8
    lfs     f0, 0x10(r31)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x18(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfs     f0, -0x7960(r13)
    stw     r0, 0x5c(sp)
    lis     r31, 0x4330
    lfd     f3, -0x28a8(r2)
    fneg    f31, f0
    stw     r31, 0x58(sp)
    lfs     f2, -0x28c8(r2)
    lfd     f1, 0x58(sp)
    lfs     f0, -0x28b0(r2)
    fsubs   f3, f1, f3
    lfs     f1, -0x7964(r13)
    fmuls   f2, f2, f3
    fsubs   f0, f2, f0
    fmuls   f30, f1, f0
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x28a8(r2)
    stw     r0, 0x54(sp)
    lis     r3, unk_803918dc@h
    lfs     f2, -0x28c8(r2)
    addi    r4, r3, unk_803918dc@l
    stw     r31, 0x50(sp)
    lfs     f0, -0x28b0(r2)
    li      r0, 0x0
    lfd     f3, 0x50(sp)
    addi    r11, sp, 0x4c
    lfs     f1, -0x7964(r13)
    fsubs   f3, f3, f4
    addi    r5, r30, 0x10
    li      r6, -0x1
    li      r7, 0x1
    fmuls   f2, f2, f3
    li      r8, 0x0
    li      r9, 0x0
    fsubs   f0, f2, f0
    li      r10, 0x0
    fmuls   f0, f1, f0
    stfs    f0, 0xac(r30)
    stfs    f31, 0xb0(r30)
    stfs    f30, 0xb4(r30)
    lwz     r3, 0xf0(r30)
    rlwinm  r3, r3, 0, 28, 26
    stw     r3, 0xf0(r30)
    lwz     r3, R13Off_m0x6048(r13)
    sth     r0, 0x4c(sp)
    stw     r11, 0x8(sp)
    lfs     f1, -0x28d0(r2)
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x4849
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cd99c
    li      r3, 0x4849
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801cd99c:
    mr      r3, r30
    bl      isFruit__11TMapObjBaseFP9THitActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801cd9b8
    mr      r3, r30
    lwz     r4, R13Off_m0x795c(r13)
    bl      killByTimer__11TResetFruitFi
branch_0x801cd9b8:
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lfd     f30, 0x68(sp)
    mtlr    r0
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    addi    sp, sp, 0x78
    blr


.globl getMActor__10TLiveActorCFv
getMActor__10TLiveActorCFv: # 0x801cd9d8
    lwz     r3, 0x74(r3)
    blr


.globl receiveMessage__12TFruitSwitchFP9THitActorUl
receiveMessage__12TFruitSwitchFP9THitActorUl: # 0x801cd9e0
    mflr    r0
    cmplwi  r5, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    bne-    branch_0x801cda48
    lis     r3, unk_803918d0@h
    addi    r4, r3, unk_803918d0@l
    addi    r3, r31, 0x0
    bl      startBck__11TMapObjBaseFPCc
    lwz     r0, 0x64(r31)
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r3, 0xec(r31)
    lwz     r3, 0x8(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801cda38
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
branch_0x801cda38:
    lwz     r3, 0x138(r31)
    bl      fireObj__14TFruitLauncherFv
    li      r3, 0x1
    b       branch_0x801cda4c

branch_0x801cda48:
    li      r3, 0x0
branch_0x801cda4c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl initMapObj__12TSurfGesoObjFv
initMapObj__12TSurfGesoObjFv: # 0x801cda60
    mflr    r0
    lis     r4, unk_80391770@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, unk_80391770@l
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r3, 0x0
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0xf4(r29)
    addi    r4, r31, 0x188
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801cdab8
    li      r3, 0xff
    sth     r3, 0x154(r29)
    li      r0, 0xb4
    sth     r0, 0x156(r29)
    sth     r3, 0x158(r29)
    sth     r3, 0x15a(r29)
    b       branch_0x801cdb14

branch_0x801cdab8:
    lwz     r3, 0xf4(r29)
    addi    r4, r31, 0x194
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801cdae8
    li      r3, 0xff
    sth     r3, 0x154(r29)
    li      r0, 0x7d
    sth     r3, 0x156(r29)
    sth     r0, 0x158(r29)
    sth     r3, 0x15a(r29)
    b       branch_0x801cdb14

branch_0x801cdae8:
    lwz     r3, 0xf4(r29)
    addi    r4, r31, 0x1a4
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801cdb14
    li      r3, 0xb4
    sth     r3, 0x154(r29)
    li      r0, 0xff
    sth     r0, 0x156(r29)
    sth     r3, 0x158(r29)
    sth     r0, 0x15a(r29)
branch_0x801cdb14:
    lwz     r3, R13Off_m0x62b8(r13)
    lwz     r30, 0x98(r3)
    bl      getMActorAnmData__11TObjManagerFv
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    li      r5, 0x3
    bl      SMS_MakeMActorFromSDLModelData__FP12SDLModelDataP13MActorAnmDataUl
    stw     r3, 0x74(r29)
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    addi    r5, r29, 0x154
    li      r4, 0x2
    bl      initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
    lwz     r3, 0x74(r29)
    addi    r4, r31, 0x1b4
    bl      setBck__6MActorFPCc
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__15TRiccoWatermillFPCc
__ct__15TRiccoWatermillFPCc: # 0x801cdb70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__15TRiccoWatermill@ha
    addi    r3, r3, __vvt__15TRiccoWatermill@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    lfs     f0, -0x28d0(r2)
    stfs    f0, 0x138(r31)
    stw     r0, 0x13c(r31)
    stw     r0, 0x140(r31)
    stb     r0, 0x144(r31)
    stw     r0, 0x148(r31)
    stw     r0, 0x14c(r31)
    stw     r0, 0x150(r31)
    stw     r0, 0x154(r31)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl loadAfter__15TRiccoWatermillFv
loadAfter__15TRiccoWatermillFv: # 0x801cdbdc
    mflr    r0
    lis     r4, unk_80391770@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, unk_80391770@l
    stw     r30, 0x48(sp)
    stw     r29, 0x44(sp)
    addi    r29, r3, 0x0
    bl      loadAfter__11TMapObjBaseFv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r31, 0x1c4
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1c4
    mtlr    r12
    blrl
    stw     r3, 0x13c(r29)
    addi    r3, r31, 0x1d0
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x1d0
    mtlr    r12
    blrl
    stw     r3, 0x148(r29)
    lwz     r3, 0x148(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x104(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x796c(r13)
    lwz     r3, 0x13c(r29)
    stfs    f0, 0x14(r3)
    lwz     r3, 0x13c(r29)
    bl      removeMapCollision__11TMapObjBaseFv
    lwz     r3, 0x13c(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl calc__15TRiccoWatermillFv
calc__15TRiccoWatermillFv: # 0x801cdcbc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setRootMtxRotZ__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__15TRiccoWatermillFv
control__15TRiccoWatermillFv: # 0x801cdcdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r3
    stw     r30, 0x68(sp)
    bl      control__11TMapObjBaseFv
    lhz     r3, 0xfc(r31)
    cmplwi  r3, 0x2
    bne-    branch_0x801cdd14
    li      r0, 0x1
    b       branch_0x801cdd18

branch_0x801cdd14:
    li      r0, 0x0
branch_0x801cdd18:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cdd58
    cmplwi  r3, 0x3
    bne-    branch_0x801cdd30
    li      r0, 0x1
    b       branch_0x801cdd34

branch_0x801cdd30:
    li      r0, 0x0
branch_0x801cdd34:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cdd58
    cmplwi  r3, 0x4
    bne-    branch_0x801cdd4c
    li      r0, 0x1
    b       branch_0x801cdd50

branch_0x801cdd4c:
    li      r0, 0x0
branch_0x801cdd50:
    clrlwi. r0, r0, 24
    beq-    branch_0x801cde9c
branch_0x801cdd58:
    lfs     f0, -0x28d0(r2)
    lfs     f1, 0x138(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x801cde5c
    lfs     f0, 0x38(r31)
    li      r4, 0x3031
    fsubs   f0, f0, f1
    stfs    f0, 0x38(r31)
    lfs     f0, 0x138(r31)
    lwz     r3, R13Off_m0x6044(r13)
    fabs    f31, f0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cddb8
    fmr     f1, f31
    addi    r4, r31, 0x10
    addi    r8, r31, 0x14c
    li      r3, 0x3031
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801cddb8:
    lfs     f1, 0x138(r31)
    li      r4, 0x3030
    lfs     f0, -0x7974(r13)
    lwz     r3, 0x13c(r31)
    fmuls   f30, f1, f0
    lfs     f0, 0x14(r3)
    fadds   f0, f0, f30
    fabs    f31, f30
    stfs    f0, 0x14(r3)
    lwz     r3, R13Off_m0x6044(r13)
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cde18
    fmr     f1, f31
    lis     r3, submarineCranePos_forSound@ha
    addi    r4, r3, submarineCranePos_forSound@l
    addi    r8, r31, 0x150
    li      r3, 0x3030
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801cde18:
    fabs    f31, f30
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3023
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cde5c
    fmr     f1, f31
    lis     r3, submarineCranePos_forSound@ha
    addi    r4, r3, submarineCranePos_forSound@l
    addi    r8, r31, 0x154
    li      r3, 0x3023
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r9, 0x0
    li      r10, 0x4
    bl      startSoundActorWithInfo__Q214MSoundSESystem8MSoundSEFUlPC3VecP3VecfUlUlPP8JAISoundUlUc
branch_0x801cde5c:
    lwz     r3, 0x140(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801cde94
    lfs     f1, 0x138(r31)
    lfs     f0, -0x7978(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x138(r31)
    lfs     f0, -0x797c(r13)
    lfs     f1, 0x138(r31)
    fneg    f0, f0
    fcmpo   cr0, f1, f0
    bge-    branch_0x801cde9c
    stfs    f0, 0x138(r31)
    b       branch_0x801cde9c

branch_0x801cde94:
    addi    r0, r3, -0x1
    stw     r0, 0x140(r31)
branch_0x801cde9c:
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801cdfbc
    bge-    branch_0x801cdebc
    cmpwi   r0, 0x1
    beq-    branch_0x801ce0c4
    bge-    branch_0x801cdecc
    b       branch_0x801ce0c4

branch_0x801cdebc:
    cmpwi   r0, 0x5
    beq-    branch_0x801ce0c4
    bge-    branch_0x801ce0c4
    b       branch_0x801ce038

branch_0x801cdecc:
    lwz     r3, 0x13c(r31)
    lfs     f1, -0x7970(r13)
    lfsu    f0, 0x14(r3)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801cdf88
    stfs    f1, 0x0(r3)
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801cdef8
    li      r0, 0x1
    b       branch_0x801cdefc

branch_0x801cdef8:
    li      r0, 0x0
branch_0x801cdefc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801cdf88
    lwz     r5, 0x13c(r31)
    li      r4, 0x3832
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801cdf3c
    addi    r4, r30, 0x0
    li      r3, 0x3832
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801cdf3c:
    lbz     r0, 0x144(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x801cdf80
    lfs     f1, -0x289c(r2)
    mr      r3, r31
    lfs     f0, -0x7970(r13)
    addi    r5, sp, 0x58
    lfs     f2, -0x28a0(r2)
    fadds   f3, f1, f0
    lfs     f1, -0x28c0(r2)
    stfs    f2, 0x58(sp)
    lfs     f0, -0x2898(r2)
    fmr     f2, f1
    stfs    f3, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lwz     r4, 0x148(r31)
    bl      throwObjToFrontFromPoint__11TMapObjBaseCFP11TMapObjBaseRCQ29JGeometry8TVec3_f_ff
branch_0x801cdf80:
    li      r0, 0x1
    stb     r0, 0x144(r31)
branch_0x801cdf88:
    lfs     f1, 0x138(r31)
    lfs     f0, -0x28d0(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ce0c4
    lbz     r0, 0x144(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801cdfb0
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801ce0c4

branch_0x801cdfb0:
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801ce0c4

branch_0x801cdfbc:
    lwz     r3, 0x13c(r31)
    lfs     f1, -0x6290(r13)
    lfsu    f0, 0x14(r3)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801ce0c4
    stfs    f1, 0x0(r3)
    li      r4, 0x0
    lwz     r3, 0x13c(r31)
    bl      setUpMapCollision__11TMapObjBaseFUs
    lfs     f0, -0x28d0(r2)
    li      r4, 0x3832
    stfs    f0, 0x138(r31)
    lwz     r5, 0x13c(r31)
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ce024
    addi    r4, r30, 0x0
    li      r3, 0x3832
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ce024:
    lwz     r3, R13Off_m0x7968(r13)
    li      r0, 0x5
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801ce0c4

branch_0x801ce038:
    lwz     r3, 0x13c(r31)
    lfs     f1, -0x796c(r13)
    lfsu    f0, 0x14(r3)
    fcmpo   cr0, f0, f1
    cror    2, 0, 2
    bne-    branch_0x801ce0c4
    stfs    f1, 0x0(r3)
    li      r4, 0x0
    lwz     r3, 0x13c(r31)
    bl      setUpMapCollision__11TMapObjBaseFUs
    lfs     f0, -0x28d0(r2)
    li      r4, 0x3833
    stfs    f0, 0x138(r31)
    lwz     r3, 0x13c(r31)
    lwz     r0, 0xf8(r3)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r3)
    lwz     r0, 0xf8(r31)
    ori     r0, r0, 0x100
    stw     r0, 0xf8(r31)
    lwz     r5, 0x13c(r31)
    lwz     r3, R13Off_m0x6044(r13)
    addi    r30, r5, 0x10
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ce0bc
    addi    r4, r30, 0x0
    li      r3, 0x3833
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ce0bc:
    li      r0, 0x1
    sth     r0, 0xfc(r31)
branch_0x801ce0c4:
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl touchWater__15TRiccoWatermillFP9THitActor
touchWater__15TRiccoWatermillFP9THitActor: # 0x801ce0e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lhz     r0, 0xfc(r3)
    cmplwi  r0, 0x5
    bne-    branch_0x801ce10c
    li      r0, 0x1
    b       branch_0x801ce110

branch_0x801ce10c:
    li      r0, 0x0
branch_0x801ce110:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ce120
    li      r3, 0x1
    b       branch_0x801ce1c0

branch_0x801ce120:
    li      r0, 0x5
    stw     r0, 0x140(r31)
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801ce13c
    li      r0, 0x1
    b       branch_0x801ce140

branch_0x801ce13c:
    li      r0, 0x0
branch_0x801ce140:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ce154
    lwz     r3, 0x13c(r31)
    li      r4, 0x1
    bl      setUpMapCollision__11TMapObjBaseFUs
branch_0x801ce154:
    lwz     r0, 0xf8(r31)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r31)
    lwz     r3, 0x13c(r31)
    lwz     r0, 0xf8(r3)
    rlwinm  r0, r0, 0, 24, 22
    stw     r0, 0xf8(r3)
    lwz     r3, 0x13c(r31)
    lfs     f0, -0x7970(r13)
    lfs     f1, 0x14(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ce1b4
    lfs     f1, 0x138(r31)
    lfs     f0, -0x7984(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x138(r31)
    lfs     f0, 0x138(r31)
    lfs     f1, -0x7980(r13)
    fcmpo   cr0, f0, f1
    ble-    branch_0x801ce1a8
    stfs    f1, 0x138(r31)
branch_0x801ce1a8:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    b       branch_0x801ce1bc

branch_0x801ce1b4:
    lfs     f0, -0x28d0(r2)
    stfs    f0, 0x138(r31)
branch_0x801ce1bc:
    li      r3, 0x1
branch_0x801ce1c0:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl calc__11TCraneCargoFv
calc__11TCraneCargoFv: # 0x801ce1d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      updateRootMtxTrans__11TMapObjBaseFv
    mr      r3, r31
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    addi    r3, r31, 0x0
    addi    r4, r4, 0x30
    bl      calcLeanMtx__10TLeanBlockFPA4_f
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl control__11TCraneCargoFv
control__11TCraneCargoFv: # 0x801ce218
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, -0x28d0(r2)
    stfs    f0, 0x160(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x158(r3)
    bl      control__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl initMapObj__12TCraneUpDownFv
initMapObj__12TCraneUpDownFv: # 0x801ce248
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0xec(r31)
    li      r4, 0x0
    lwz     r3, 0x8(r3)
    bl      setAllActor__17TMapCollisionBaseFPC10TLiveActor
    lfs     f0, -0x28d0(r2)
    lis     r3, unk_80391958@h
    lfs     f1, -0x28cc(r2)
    addi    r6, sp, 0x14
    stfs    f0, 0x20(sp)
    addi    r5, sp, 0x20
    stfs    f1, 0x14(sp)
    addi    r4, sp, 0x2c
    addi    r3, r3, unk_80391958@l
    stfs    f0, 0x2c(sp)
    stfs    f1, 0x18(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x30(sp)
    stfs    f1, 0x1c(sp)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x34(sp)
    bl      newAndRegisterObj__18TMapObjBaseManagerFPCcRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    stw     r3, 0x138(r31)
    lwz     r3, 0x138(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lis     r4, unk_8039196c@h
    lwz     r3, 0x4(r31)
    addi    r4, r4, unk_8039196c@l
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ce300
    lfs     f0, -0x2894(r2)
    li      r0, 0x3036
    stfs    f0, 0x144(r31)
    lfs     f0, -0x2890(r2)
    stfs    f0, 0x140(r31)
    stw     r0, 0x13c(r31)
    b       branch_0x801ce318

branch_0x801ce300:
    lfs     f0, -0x2894(r2)
    li      r0, 0x3037
    stfs    f0, 0x144(r31)
    lfs     f0, -0x288c(r2)
    stfs    f0, 0x140(r31)
    stw     r0, 0x13c(r31)
branch_0x801ce318:
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x28a8(r2)
    stw     r0, 0x3c(sp)
    lis     r0, 0x4330
    lfs     f1, -0x28c8(r2)
    stw     r0, 0x38(sp)
    lfs     f4, 0x144(r31)
    lfd     f2, 0x38(sp)
    lfs     f0, 0x140(r31)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f4
    fmuls   f1, f1, f2
    fmadds  f0, f0, f1, f4
    stfs    f0, 0x30(r31)
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl control__12TCraneUpDownFv
control__12TCraneUpDownFv: # 0x801ce368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    mr      r31, r3
    stw     r30, 0x98(sp)
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801ce43c
    bge-    branch_0x801ce3a4
    cmpwi   r0, 0x0
    beq-    branch_0x801ce3dc
    bge-    branch_0x801ce3b0
    b       branch_0x801ce46c

branch_0x801ce3a4:
    cmpwi   r0, 0x4
    bge-    branch_0x801ce46c
    b       branch_0x801ce410

branch_0x801ce3b0:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ce3c4
    li      r0, 0x1
    b       branch_0x801ce3c8

branch_0x801ce3c4:
    li      r0, 0x0
branch_0x801ce3c8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ce46c
    li      r0, 0x0
    sth     r0, 0xfc(r31)
    b       branch_0x801ce46c

branch_0x801ce3dc:
    lfs     f1, 0x30(r31)
    lfs     f0, -0x798c(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x140(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801ce46c
    lwz     r3, R13Off_m0x7988(r13)
    li      r0, 0x3
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801ce46c

branch_0x801ce410:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ce424
    li      r0, 0x1
    b       branch_0x801ce428

branch_0x801ce424:
    li      r0, 0x0
branch_0x801ce428:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ce46c
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    b       branch_0x801ce46c

branch_0x801ce43c:
    lfs     f1, 0x30(r31)
    lfs     f0, -0x798c(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x30(r31)
    lfs     f1, 0x30(r31)
    lfs     f0, 0x144(r31)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801ce46c
    lwz     r3, R13Off_m0x7988(r13)
    li      r0, 0x1
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
branch_0x801ce46c:
    lwz     r4, 0x138(r31)
    mr      r3, r31
    lfs     f0, -0x28d0(r2)
    stfsu   f0, 0x10(r4)
    stfs    f0, 0x4(r4)
    lfs     f0, -0x2888(r2)
    stfs    f0, 0x8(r4)
    bl      getModel__10TLiveActorCFv
    lwz     r30, 0x58(r3)
    addi    r3, sp, 0x54
    bl      PSMTXIdentity
    lfs     f3, -0x2884(r2)
    mr      r4, r30
    lfs     f0, 0x30(r31)
    mr      r5, r30
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f3, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    addi    r3, sp, 0x54
    lfs     f2, -0x28cc(r2)
    fctiwz  f0, f0
    stfd    f0, 0x90(sp)
    lwz     r7, 0x94(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f4, r8, r0
    lfsx    f5, r6, r0
    fneg    f0, f4
    stfs    f2, 0x0(r30)
    lfs     f1, -0x28d0(r2)
    stfs    f1, 0x4(r30)
    stfs    f1, 0x8(r30)
    stfs    f1, 0xc(r30)
    stfs    f1, 0x10(r30)
    stfs    f5, 0x14(r30)
    stfs    f0, 0x18(r30)
    stfs    f1, 0x1c(r30)
    stfs    f1, 0x20(r30)
    stfs    f4, 0x24(r30)
    stfs    f5, 0x28(r30)
    stfs    f1, 0x2c(r30)
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f3, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x88(sp)
    lwz     r7, 0x8c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f3, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f3
    stfs    f4, 0x54(sp)
    stfs    f1, 0x58(sp)
    stfs    f3, 0x5c(sp)
    stfs    f1, 0x60(sp)
    stfs    f1, 0x64(sp)
    stfs    f2, 0x68(sp)
    stfs    f1, 0x6c(sp)
    stfs    f1, 0x70(sp)
    stfs    f0, 0x74(sp)
    stfs    f1, 0x78(sp)
    stfs    f4, 0x7c(sp)
    stfs    f1, 0x80(sp)
    bl      PSMTXConcat
    lwz     r4, 0x138(r31)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x10
    addi    r5, r4, 0x0
    bl      PSMTXMultVec
    lwz     r3, 0x138(r31)
    lfs     f0, 0x10(r31)
    lfs     f1, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r3)
    lfs     f1, 0x14(r31)
    lwz     r3, 0x138(r31)
    lfs     f0, 0x108(r31)
    lfs     f2, 0x108(r3)
    fsubs   f0, f1, f0
    lfs     f1, 0x14(r3)
    fadds   f0, f0, f2
    fadds   f0, f1, f0
    stfs    f0, 0x14(r3)
    lwz     r3, 0x138(r31)
    lfs     f0, 0x18(r31)
    lfs     f1, 0x18(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r3)
    lhz     r3, 0xfc(r31)
    cmplwi  r3, 0x2
    bne-    branch_0x801ce5f8
    li      r0, 0x1
    b       branch_0x801ce5fc

branch_0x801ce5f8:
    li      r0, 0x0
branch_0x801ce5fc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ce620
    cmplwi  r3, 0x0
    bne-    branch_0x801ce614
    li      r0, 0x1
    b       branch_0x801ce618

branch_0x801ce614:
    li      r0, 0x0
branch_0x801ce618:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ce654
branch_0x801ce620:
    lwz     r30, 0x13c(r31)
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ce654
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ce654:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl load__10TCraneRotYFR20JSUMemoryInputStream
load__10TCraneRotYFR20JSUMemoryInputStream: # 0x801ce66c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x140
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f0, 0x34(r30)
    stfs    f0, 0x138(r30)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x28a8(r2)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lis     r3, unk_8039197c@h
    lfs     f2, -0x28c8(r2)
    stw     r0, 0x10(sp)
    lfs     f1, -0x287c(r2)
    addi    r4, r3, unk_8039197c@l
    lfd     f3, 0x10(sp)
    lfs     f0, -0x2880(r2)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x144(r30)
    lwz     r3, 0x4(r30)
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x801ce700
    li      r0, 0x3034
    stw     r0, 0x148(r30)
    b       branch_0x801ce708

branch_0x801ce700:
    li      r0, 0x3035
    stw     r0, 0x148(r30)
branch_0x801ce708:
    li      r0, 0x0
    sth     r0, 0xfc(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl control__10TCraneRotYFv
control__10TCraneRotYFv: # 0x801ce728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801ce7d8
    bge-    branch_0x801ce764
    cmpwi   r0, 0x0
    beq-    branch_0x801ce770
    bge-    branch_0x801ce7ac
    b       branch_0x801ce83c

branch_0x801ce764:
    cmpwi   r0, 0x4
    bge-    branch_0x801ce83c
    b       branch_0x801ce814

branch_0x801ce770:
    lfs     f1, 0x34(r31)
    lfs     f0, 0x144(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x138(r31)
    lfs     f0, 0x140(r31)
    lfs     f2, 0x34(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    ble-    branch_0x801ce83c
    lwz     r3, R13Off_m0x7990(r13)
    li      r0, 0x3
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801ce83c

branch_0x801ce7ac:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ce7c0
    li      r0, 0x1
    b       branch_0x801ce7c4

branch_0x801ce7c0:
    li      r0, 0x0
branch_0x801ce7c4:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ce83c
    li      r0, 0x0
    sth     r0, 0xfc(r31)
    b       branch_0x801ce83c

branch_0x801ce7d8:
    lfs     f1, 0x34(r31)
    lfs     f0, 0x144(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x34(r31)
    lfs     f1, 0x138(r31)
    lfs     f0, 0x13c(r31)
    lfs     f2, 0x34(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    bge-    branch_0x801ce83c
    lwz     r3, R13Off_m0x7990(r13)
    li      r0, 0x1
    stw     r3, 0x104(r31)
    sth     r0, 0xfc(r31)
    b       branch_0x801ce83c

branch_0x801ce814:
    lwz     r0, 0x104(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x801ce828
    li      r0, 0x1
    b       branch_0x801ce82c

branch_0x801ce828:
    li      r0, 0x0
branch_0x801ce82c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ce83c
    li      r0, 0x2
    sth     r0, 0xfc(r31)
branch_0x801ce83c:
    lhz     r3, 0xfc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x801ce850
    li      r0, 0x1
    b       branch_0x801ce854

branch_0x801ce850:
    li      r0, 0x0
branch_0x801ce854:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ce878
    cmplwi  r3, 0x2
    bne-    branch_0x801ce86c
    li      r0, 0x1
    b       branch_0x801ce870

branch_0x801ce86c:
    li      r0, 0x0
branch_0x801ce870:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ce8ac
branch_0x801ce878:
    lwz     r30, 0x148(r31)
    lwz     r3, R13Off_m0x6044(r13)
    mr      r4, r30
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801ce8ac
    addi    r3, r30, 0x0
    addi    r4, r31, 0x10
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801ce8ac:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl calc__10TCraneRotYFv
calc__10TCraneRotYFv: # 0x801ce8c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      setRootMtxRotY__11TMapObjBaseFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__12TFruitSwitchFv
__dt__12TFruitSwitchFv: # 0x801ce8e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ce94c
    lis     r3, __vvt__12TFruitSwitch@ha
    addi    r3, r3, __vvt__12TFruitSwitch@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ce93c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ce93c:
    extsh.  r0, r31
    ble-    branch_0x801ce94c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ce94c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TSurfGesoObjFv
__dt__12TSurfGesoObjFv: # 0x801ce968
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ce9e8
    lis     r3, __vvt__12TSurfGesoObj@ha
    addi    r3, r3, __vvt__12TSurfGesoObj@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ce9d8
    lis     r3, __vvt__5TItem@ha
    addi    r3, r3, __vvt__5TItem@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ce9d8
    lis     r3, __vvt__14TMapObjGeneral@ha
    addi    r3, r3, __vvt__14TMapObjGeneral@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TMapObjBaseFv
branch_0x801ce9d8:
    extsh.  r0, r31
    ble-    branch_0x801ce9e8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ce9e8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TRiccoWatermillFv
__dt__15TRiccoWatermillFv: # 0x801cea04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cea6c
    lis     r3, __vvt__15TRiccoWatermill@ha
    addi    r3, r3, __vvt__15TRiccoWatermill@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cea5c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cea5c:
    extsh.  r0, r31
    ble-    branch_0x801cea6c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cea6c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TCraneCargoFv
__dt__11TCraneCargoFv: # 0x801cea88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ceb08
    lis     r3, __vvt__11TCraneCargo@ha
    addi    r3, r3, __vvt__11TCraneCargo@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ceaf8
    lis     r3, __vvt__10TLeanBlock@ha
    addi    r3, r3, __vvt__10TLeanBlock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ceaf8
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ceaf8:
    extsh.  r0, r31
    ble-    branch_0x801ceb08
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ceb08:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__12TCraneUpDownFv
__dt__12TCraneUpDownFv: # 0x801ceb24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801ceb8c
    lis     r3, __vvt__12TCraneUpDown@ha
    addi    r3, r3, __vvt__12TCraneUpDown@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801ceb7c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801ceb7c:
    extsh.  r0, r31
    ble-    branch_0x801ceb8c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801ceb8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__10TCraneRotYFv
__dt__10TCraneRotYFv: # 0x801ceba8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801cec10
    lis     r3, __vvt__10TCraneRotY@ha
    addi    r3, r3, __vvt__10TCraneRotY@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801cec00
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801cec00:
    extsh.  r0, r31
    ble-    branch_0x801cec10
    mr      r3, r30
    bl      __dl__FPv
branch_0x801cec10:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjRicco_cpp
__sinit_MapObjRicco_cpp: # 0x801cec2c
    mflr    r0
    lis     r3, submarineCranePos_forSound@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, submarineCranePos_forSound@l
    lfs     f2, -0x2878(r2)
    stfs    f2, 0x0(r31)
    lfs     f0, -0x2874(r2)
    stfs    f0, 0x4(r31)
    lfs     f1, -0x2870(r2)
    stfs    f1, 0x8(r31)
    stfs    f2, 0xc(r31)
    lfs     f0, -0x286c(r2)
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801cec9c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801cec9c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801ceccc
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801ceccc:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801cecfc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801cecfc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801ced2c
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801ced2c:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801ced5c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801ced5c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801ced8c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801ced8c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801cedbc
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801cedbc:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801cedec
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801cedec:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801cee1c
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801cee1c:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801cee4c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801cee4c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801cee7c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801cee7c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801ceeac
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801ceeac:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801ceedc
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801ceedc:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801cef0c
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801cef0c:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801cef3c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801cef3c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801cef50
unk_801cef50: # 0x801cef50
    addi    r3, r3, -0x20
    b       __dt__10TCraneRotYFv


.globl unk_801cef58
unk_801cef58: # 0x801cef58
    addi    r3, r3, -0x20
    b       __dt__12TCraneUpDownFv


.globl unk_801cef60
unk_801cef60: # 0x801cef60
    addi    r3, r3, -0x20
    b       __dt__11TCraneCargoFv


.globl unk_801cef68
unk_801cef68: # 0x801cef68
    addi    r3, r3, -0x20
    b       __dt__15TRiccoWatermillFv


.globl unk_801cef70
unk_801cef70: # 0x801cef70
    addi    r3, r3, -0x20
    b       __dt__12TSurfGesoObjFv


.globl unk_801cef78
unk_801cef78: # 0x801cef78
    addi    r3, r3, -0x20
    b       __dt__12TFruitSwitchFv


.globl unk_801cef80
unk_801cef80: # 0x801cef80
    addi    r3, r3, -0x20
    b       __dt__14TFruitLauncherFv

