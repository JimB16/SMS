
.globl setPosPtr__7MSStageFP3Vec
setPosPtr__7MSStageFP3Vec: # 0x802b9d34
    blr


.globl proc__24MSSTageSimpleEnvironmentFv
proc__24MSSTageSimpleEnvironmentFv: # 0x802b9d38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x4(r3)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xffff
    beq-    branch_0x802b9d64
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x802b9d64:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl proc__17MSStageCubeSwitchFv
proc__17MSStageCubeSwitchFv: # 0x802b9d74
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0x20
    lwz     r6, -0x60b4(r13)
    lfs     f0, 0x0(rtoc)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lwz     r3, -0x70cc(r13)
    stw     r5, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x18(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x18(sp)
    lwz     r0, 0x14(sp)
    lwz     r5, 0x18(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x1c(sp)
    stw     r5, 0x24(sp)
    stw     r0, 0x28(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x4(r31)
    lwz     r0, 0x4(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x802b9e8c
    bge-    branch_0x802b9f30
    cmpwi   r0, -0x1
    bge-    branch_0x802b9df8
    b       branch_0x802b9f30

branch_0x802b9df8:
    lwz     r0, 0x8(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802b9e14
    li      r0, 0x0
    stb     r0, 0x10(r31)
    stb     r0, 0x11(r31)
    b       branch_0x802b9f30

branch_0x802b9e14:
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b9e34
    bl      SMS_IsMarioStatusTypeJumping__Fv
    clrlwi  r0, r3, 24
    cntlzw  r0, r0
    srwi    r0, r0, 5
    b       branch_0x802b9e38

branch_0x802b9e34:
    li      r0, 0x1
branch_0x802b9e38:
    stb     r0, 0x10(r31)
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802b9e80
    lbz     r0, 0x11(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b9e80
    lbz     r0, -0x5fb3(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802b9e80
    li      r3, 0x1
    li      r4, 0xa
    bl      stopTrackBGM__5MSBgmFUcUl
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x802b9e80:
    lbz     r0, 0x10(r31)
    stb     r0, 0x11(r31)
    b       branch_0x802b9f30

branch_0x802b9e8c:
    lwz     r0, 0x8(r31)
    cmpwi   r0, -0x1
    bne-    branch_0x802b9ea8
    li      r0, 0x0
    stb     r0, 0x10(r31)
    stb     r0, 0x11(r31)
    b       branch_0x802b9f30

branch_0x802b9ea8:
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b9ec8
    bl      SMS_IsMarioStatusTypeJumping__Fv
    clrlwi  r0, r3, 24
    cntlzw  r0, r0
    srwi    r0, r0, 5
    b       branch_0x802b9ecc

branch_0x802b9ec8:
    li      r0, 0x1
branch_0x802b9ecc:
    stb     r0, 0x10(r31)
    lbz     r0, 0x10(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802b9f28
    lbz     r0, 0x11(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x802b9f28
    lbz     r0, -0x5fb3(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802b9f28
    lfs     f1, -0x8(rtoc)
    li      r3, 0x0
    li      r4, 0xf
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lbz     r0, -0x5fb1(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802b9f20
    lwz     r3, -0x5fbc(r13)
    bl      startBGM__5MSBgmFUl
    b       branch_0x802b9f28

branch_0x802b9f20:
    lwz     r3, -0x5fc0(r13)
    bl      startBGM__5MSBgmFUl
branch_0x802b9f28:
    lbz     r0, 0x10(r31)
    stb     r0, 0x11(r31)
branch_0x802b9f30:
    lwz     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl proc__20MSStageCubeFadeMonteFv
proc__20MSStageCubeFadeMonteFv: # 0x802b9f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1c8(sp)
    stfd    f31, 0x1c0(sp)
    stfd    f30, 0x1b8(sp)
    stw     r31, 0x1b4(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    stw     r30, 0x1b0(sp)
    bl      getHandle__5MSBgmFUc
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      getHandle__5MSBgmFUc
    cmplwi  r30, 0x0
    beq-    branch_0x802ba3d4
    lwz     r6, -0x60b4(r13)
    addi    r4, sp, 0x19c
    lwz     r3, -0x70cc(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lfs     f1, 0x0(rtoc)
    stw     r5, 0x19c(sp)
    stw     r0, 0x1a0(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x1a4(sp)
    lwz     r5, 0x14(r3)
    lwz     r5, 0x10(r5)
    lwz     r5, 0x0(r5)
    lfs     f0, 0x10(r5)
    fadds   f0, f1, f0
    stfs    f0, 0x1a0(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x4(r31)
    bl      SMS_GetMonteVillageAreaInMario__Fv
    stw     r3, 0x10(r31)
    lwz     r30, 0x4(r31)
    cmpwi   r30, -0x1
    beq-    branch_0x802ba0c8
    lfs     f0, -0x8(rtoc)
    lwz     r5, -0x60b4(r13)
    stfs    f0, 0x158(sp)
    lwz     r3, -0x70cc(r13)
    stfs    f0, 0x15c(sp)
    stfs    f0, 0x160(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x16c(sp)
    lwz     r3, 0x14(r3)
    addi    r3, r3, 0xc
    bl      begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv
    slwi    r0, r30, 2
    lfs     f1, 0x0(rtoc)
    lwzx    r6, r3, r0
    mr      r5, r30
    lwz     r3, -0x70cc(r13)
    addi    r4, sp, 0x164
    lfs     f0, 0x10(r6)
    addi    r6, sp, 0x158
    fadds   f0, f1, f0
    addi    r7, sp, 0x15c
    addi    r8, sp, 0x160
    stfs    f0, 0x168(sp)
    bl      calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf
    lfs     f1, 0x158(sp)
    lfs     f2, 0x4(rtoc)
    lfs     f0, 0x160(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    stfs    f1, 0x114(sp)
    stfs    f0, 0x110(sp)
    lwz     r3, 0x114(sp)
    lwz     r0, 0x110(sp)
    clrlwi  r3, r3, 1
    clrlwi  r0, r0, 1
    stw     r3, 0x114(sp)
    stw     r0, 0x110(sp)
    lfs     f1, 0x114(sp)
    lfs     f0, 0x110(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802ba09c
    b       branch_0x802ba0a0

branch_0x802ba09c:
    fmr     f1, f0
branch_0x802ba0a0:
    lfs     f2, 0xc(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x802ba0b4
    lfs     f30, -0x4(rtoc)
    b       branch_0x802ba0cc

branch_0x802ba0b4:
    lfs     f0, 0x4(rtoc)
    fsubs   f1, f0, f1
    fsubs   f0, f0, f2
    fdivs   f30, f1, f0
    b       branch_0x802ba0cc

branch_0x802ba0c8:
    lfs     f30, -0x8(rtoc)
branch_0x802ba0cc:
    lwz     r0, 0x10(r31)
    fmr     f0, f30
    cmpwi   r0, 0x0
    bne-    branch_0x802ba134
    li      r3, 0x5023
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x802ba124
    lfs     f1, -0x8(rtoc)
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x802ba124:
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f30, 0x0(r3)
    b       branch_0x802ba3c4

branch_0x802ba134:
    lwz     r0, 0x14(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802ba1d4
    lfs     f1, -0x4(rtoc)
    fcmpu   cr0, f1, f30
    bne-    branch_0x802ba180
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x8(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f30, 0x0(r3)
    b       branch_0x802ba238

branch_0x802ba180:
    lfs     f1, -0x8(rtoc)
    fcmpu   cr0, f1, f30
    bne-    branch_0x802ba1c0
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f30, 0x0(r3)
    b       branch_0x802ba238

branch_0x802ba1c0:
    lwz     r3, -0x6044(r13)
    fmr     f1, f0
    lwz     r3, 0xa0(r3)
    bl      xFadeBgmForce__10MSBgmXFadeFf
    b       branch_0x802ba238

branch_0x802ba1d4:
    lwz     r0, 0x4(r31)
    cmpwi   r0, -0x1
    bne-    branch_0x802ba228
    lwz     r0, 0x8(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x802ba238
    lfs     f1, -0x8(rtoc)
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r3, -0x6044(r13)
    lfs     f0, -0x8(rtoc)
    lwz     r3, 0xa0(r3)
    stfs    f0, 0x0(r3)
    b       branch_0x802ba238

branch_0x802ba228:
    lwz     r3, -0x6044(r13)
    fmr     f1, f0
    lwz     r3, 0xa0(r3)
    bl      xFadeBgm__10MSBgmXFadeFf
branch_0x802ba238:
    lwz     r4, 0x4(r31)
    cmpwi   r4, -0x1
    beq-    branch_0x802ba3c4
    lbz     r0, -0x5fb4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802ba3c4
    lwz     r3, -0x70cc(r13)
    slwi    r0, r4, 2
    lwz     r4, -0x60b4(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x10(r3)
    lwzx    r5, r3, r0
    lwz     r3, 0xc(r5)
    lwz     r0, 0x10(r5)
    stw     r3, 0x190(sp)
    stw     r0, 0x194(sp)
    lwz     r0, 0x14(r5)
    stw     r0, 0x198(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x184(sp)
    stw     r0, 0x188(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x18c(sp)
    lfs     f3, 0x188(sp)
    stfs    f3, 0x194(sp)
    lfs     f0, 0x194(sp)
    lfs     f2, 0x190(sp)
    fsubs   f4, f0, f3
    lfs     f1, 0x184(sp)
    lfs     f3, 0x198(sp)
    fsubs   f2, f2, f1
    lfs     f0, 0x18c(sp)
    fsubs   f3, f3, f0
    lfs     f0, -0x8(rtoc)
    fmuls   f1, f4, f4
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802ba32c
    frsqrte f1, f4
    lfd     f3, 0x8(rtoc)
    lfd     f2, 0x10(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0xf8(sp)
    lfs     f4, 0xf8(sp)
branch_0x802ba32c:
    lwz     r0, 0x190(sp)
    fmr     f30, f4
    lwz     r3, 0x194(sp)
    addi    r4, sp, 0xe0
    stw     r0, 0xe0(sp)
    lwz     r0, 0x198(sp)
    stw     r3, 0xe4(sp)
    addi    r5, sp, 0xec
    lwz     r3, -0x6044(r13)
    stw     r0, 0xe8(sp)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x8(r3)
    bl      PSMTXMultVec
    lwz     r0, 0xec(sp)
    fmr     f1, f30
    lwz     r4, 0xf0(sp)
    addi    r3, sp, 0x124
    stw     r0, 0x124(sp)
    lwz     r0, 0xf4(sp)
    stw     r4, 0x128(sp)
    lfs     f2, 0x18(rtoc)
    stw     r0, 0x12c(sp)
    bl      calcPan__8MSHandleFRC3Vecff
    fmr     f31, f1
    addi    r3, sp, 0x124
    fmr     f1, f30
    bl      calcDolby__8MSHandleFRC3Vecf
    fmr     f30, f1
    li      r3, 0x1
    fmr     f1, f31
    li      r4, 0x1
    li      r5, 0x0
    bl      setPan__5MSBgmFUcfUlUc
    fmr     f1, f30
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setDolby__5MSBgmFUcfUlUc
branch_0x802ba3c4:
    lwz     r0, 0x4(r31)
    stw     r0, 0x8(r31)
    lwz     r0, 0x10(r31)
    stw     r0, 0x14(r31)
branch_0x802ba3d4:
    lwz     r0, 0x1cc(sp)
    lfd     f31, 0x1c0(sp)
    lfd     f30, 0x1b8(sp)
    mtlr    r0
    lwz     r31, 0x1b4(sp)
    lwz     r30, 0x1b0(sp)
    addi    sp, sp, 0x1c8
    blr


.globl proc__21MSStageCubeFadeDoubleFv
proc__21MSStageCubeFadeDoubleFv: # 0x802ba3f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1a0(sp)
    stfd    f31, 0x198(sp)
    stfd    f30, 0x190(sp)
    stw     r31, 0x18c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    stw     r30, 0x188(sp)
    bl      getHandle__5MSBgmFUc
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      getHandle__5MSBgmFUc
    cmplwi  r30, 0x0
    beq-    branch_0x802ba76c
    lwz     r6, -0x60b4(r13)
    addi    r4, sp, 0x170
    lwz     r3, -0x70cc(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lfs     f1, 0x0(rtoc)
    stw     r5, 0x170(sp)
    stw     r0, 0x174(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x178(sp)
    lwz     r5, 0x14(r3)
    lwz     r5, 0x10(r5)
    lwz     r5, 0x0(r5)
    lfs     f0, 0x10(r5)
    fadds   f0, f1, f0
    stfs    f0, 0x174(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x4(r31)
    li      r4, 0x0
    li      r0, 0x1
    lwz     r3, 0x4(r31)
    cmpwi   r3, 0x0
    beq-    branch_0x802ba498
    cmpwi   r3, 0x1
    beq-    branch_0x802ba498
    mr      r0, r4
branch_0x802ba498:
    clrlwi. r0, r0, 24
    beq-    branch_0x802ba4b8
    lwz     r0, 0x4(r31)
    add     r3, r31, r0
    lbz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802ba4b8
    li      r4, 0x1
branch_0x802ba4b8:
    clrlwi. r0, r4, 24
    bne-    branch_0x802ba4ec
    lwz     r0, 0x8(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x802ba764
    lwz     r3, -0x6044(r13)
    lfs     f1, -0x8(rtoc)
    lwz     r3, 0xa0(r3)
    stfs    f1, 0x0(r3)
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    bl      xFadeBgmForce__10MSBgmXFadeFf
    b       branch_0x802ba764

branch_0x802ba4ec:
    lwz     r30, 0x4(r31)
    lfs     f0, -0x8(rtoc)
    lwz     r5, -0x60b4(r13)
    stfs    f0, 0x124(sp)
    lwz     r3, -0x70cc(r13)
    stfs    f0, 0x128(sp)
    stfs    f0, 0x12c(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x130(sp)
    stw     r0, 0x134(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x138(sp)
    lwz     r3, 0x14(r3)
    addi    r3, r3, 0xc
    bl      begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv
    slwi    r0, r30, 2
    lfs     f1, 0x0(rtoc)
    lwzx    r6, r3, r0
    mr      r5, r30
    lwz     r3, -0x70cc(r13)
    addi    r4, sp, 0x130
    lfs     f0, 0x10(r6)
    addi    r6, sp, 0x124
    fadds   f0, f1, f0
    addi    r7, sp, 0x128
    addi    r8, sp, 0x12c
    stfs    f0, 0x134(sp)
    bl      calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf
    lfs     f1, 0x124(sp)
    lfs     f2, 0x4(rtoc)
    lfs     f0, 0x12c(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    stfs    f1, 0xec(sp)
    stfs    f0, 0xe8(sp)
    lwz     r3, 0xec(sp)
    lwz     r0, 0xe8(sp)
    clrlwi  r3, r3, 1
    clrlwi  r0, r0, 1
    stw     r3, 0xec(sp)
    stw     r0, 0xe8(sp)
    lfs     f1, 0xec(sp)
    lfs     f0, 0xe8(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802ba5a8
    b       branch_0x802ba5ac

branch_0x802ba5a8:
    fmr     f1, f0
branch_0x802ba5ac:
    lfs     f2, 0xc(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x802ba5c0
    lfs     f0, -0x4(rtoc)
    b       branch_0x802ba5d0

branch_0x802ba5c0:
    lfs     f0, 0x4(rtoc)
    fsubs   f1, f0, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
branch_0x802ba5d0:
    lwz     r3, -0x6044(r13)
    fmr     f1, f0
    lwz     r3, 0xa0(r3)
    bl      xFadeBgm__10MSBgmXFadeFf
    lbz     r0, -0x5fb4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802ba764
    lwz     r3, -0x70cc(r13)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwz     r4, -0x60b4(r13)
    lwz     r3, 0x10(r3)
    lwzx    r5, r3, r0
    lwz     r3, 0xc(r5)
    lwz     r0, 0x10(r5)
    stw     r3, 0x160(sp)
    stw     r0, 0x164(sp)
    lwz     r0, 0x14(r5)
    stw     r0, 0x168(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x154(sp)
    stw     r0, 0x158(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x15c(sp)
    lfs     f3, 0x158(sp)
    stfs    f3, 0x164(sp)
    lfs     f0, 0x164(sp)
    lfs     f2, 0x160(sp)
    fsubs   f4, f0, f3
    lfs     f1, 0x154(sp)
    lfs     f3, 0x168(sp)
    fsubs   f2, f2, f1
    lfs     f0, 0x15c(sp)
    fsubs   f3, f3, f0
    lfs     f0, -0x8(rtoc)
    fmuls   f1, f4, f4
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802ba6cc
    frsqrte f1, f4
    lfd     f3, 0x8(rtoc)
    lfd     f2, 0x10(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0xe0(sp)
    lfs     f4, 0xe0(sp)
branch_0x802ba6cc:
    lwz     r0, 0x160(sp)
    fmr     f30, f4
    lwz     r3, 0x164(sp)
    addi    r4, sp, 0xc8
    stw     r0, 0xc8(sp)
    lwz     r0, 0x168(sp)
    stw     r3, 0xcc(sp)
    addi    r5, sp, 0xd4
    lwz     r3, -0x6044(r13)
    stw     r0, 0xd0(sp)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x8(r3)
    bl      PSMTXMultVec
    lwz     r0, 0xd4(sp)
    fmr     f1, f30
    lwz     r4, 0xd8(sp)
    addi    r3, sp, 0x100
    stw     r0, 0x100(sp)
    lwz     r0, 0xdc(sp)
    stw     r4, 0x104(sp)
    lfs     f2, 0x18(rtoc)
    stw     r0, 0x108(sp)
    bl      calcPan__8MSHandleFRC3Vecff
    fmr     f31, f1
    addi    r3, sp, 0x100
    fmr     f1, f30
    bl      calcDolby__8MSHandleFRC3Vecf
    fmr     f30, f1
    li      r3, 0x1
    fmr     f1, f31
    li      r4, 0x1
    li      r5, 0x0
    bl      setPan__5MSBgmFUcfUlUc
    fmr     f1, f30
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setDolby__5MSBgmFUcfUlUc
branch_0x802ba764:
    lwz     r0, 0x4(r31)
    stw     r0, 0x8(r31)
branch_0x802ba76c:
    lwz     r0, 0x1a4(sp)
    lfd     f31, 0x198(sp)
    lfd     f30, 0x190(sp)
    mtlr    r0
    lwz     r31, 0x18c(sp)
    lwz     r30, 0x188(sp)
    addi    sp, sp, 0x1a0
    blr


.globl setBgmVolumeForce__15MSStageCubeFadeFv
setBgmVolumeForce__15MSStageCubeFadeFv: # 0x802ba78c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r3, 0x0
    addi    r4, sp, 0x88
    stw     r30, 0x98(sp)
    lwz     r6, -0x60b4(r13)
    lfs     f0, 0x0(rtoc)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lwz     r3, -0x70cc(r13)
    stw     r5, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x84(sp)
    lfs     f1, 0x80(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x80(sp)
    lwz     r0, 0x7c(sp)
    lwz     r5, 0x80(sp)
    stw     r0, 0x88(sp)
    lwz     r0, 0x84(sp)
    stw     r5, 0x8c(sp)
    stw     r0, 0x90(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    addi    r30, r3, 0x0
    cmpwi   r30, -0x1
    beq-    branch_0x802ba8e4
    lfs     f0, -0x8(rtoc)
    lwz     r5, -0x60b4(r13)
    stfs    f0, 0x54(sp)
    lwz     r3, -0x70cc(r13)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x5c(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x60(sp)
    stw     r0, 0x64(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x68(sp)
    lwz     r3, 0x14(r3)
    addi    r3, r3, 0xc
    bl      begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv
    slwi    r0, r30, 2
    lfs     f1, 0x0(rtoc)
    lwzx    r6, r3, r0
    mr      r5, r30
    lwz     r3, -0x70cc(r13)
    addi    r4, sp, 0x60
    lfs     f0, 0x10(r6)
    addi    r6, sp, 0x54
    fadds   f0, f1, f0
    addi    r7, sp, 0x58
    addi    r8, sp, 0x5c
    stfs    f0, 0x64(sp)
    bl      calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf
    lfs     f1, 0x54(sp)
    lfs     f2, 0x4(rtoc)
    lfs     f0, 0x5c(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    stfs    f1, 0x48(sp)
    stfs    f0, 0x44(sp)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x44(sp)
    clrlwi  r3, r3, 1
    clrlwi  r0, r0, 1
    stw     r3, 0x48(sp)
    stw     r0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x44(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802ba8b8
    b       branch_0x802ba8bc

branch_0x802ba8b8:
    fmr     f1, f0
branch_0x802ba8bc:
    lfs     f2, 0xc(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x802ba8d0
    lfs     f0, -0x4(rtoc)
    b       branch_0x802ba8e8

branch_0x802ba8d0:
    lfs     f0, 0x4(rtoc)
    fsubs   f1, f0, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    b       branch_0x802ba8e8

branch_0x802ba8e4:
    lfs     f0, -0x8(rtoc)
branch_0x802ba8e8:
    lwz     r3, -0x6044(r13)
    fmr     f1, f0
    lwz     r3, 0xa0(r3)
    bl      xFadeBgmForce__10MSBgmXFadeFf
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    mtlr    r0
    addi    sp, sp, 0xa0
    blr


.globl proc__15MSStageCubeFadeFv
proc__15MSStageCubeFadeFv: # 0x802ba910
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x190(sp)
    stfd    f31, 0x188(sp)
    stfd    f30, 0x180(sp)
    stw     r31, 0x17c(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    stw     r30, 0x178(sp)
    bl      getHandle__5MSBgmFUc
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      getHandle__5MSBgmFUc
    cmplwi  r30, 0x0
    beq-    branch_0x802bac3c
    lwz     r6, -0x60b4(r13)
    addi    r4, sp, 0x164
    lwz     r3, -0x70cc(r13)
    lwz     r5, 0x0(r6)
    lwz     r0, 0x4(r6)
    lfs     f1, 0x0(rtoc)
    stw     r5, 0x164(sp)
    stw     r0, 0x168(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x16c(sp)
    lwz     r5, 0x14(r3)
    lwz     r5, 0x10(r5)
    lwz     r5, 0x0(r5)
    lfs     f0, 0x10(r5)
    fadds   f0, f1, f0
    stfs    f0, 0x168(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    stw     r3, 0x4(r31)
    lwz     r30, 0x4(r31)
    cmpwi   r30, -0x1
    bne-    branch_0x802ba9c0
    lwz     r0, 0x8(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x802bac34
    lwz     r3, -0x6044(r13)
    lfs     f0, -0x8(rtoc)
    lwz     r3, 0xa0(r3)
    stfs    f0, 0x0(r3)
    b       branch_0x802bac34

branch_0x802ba9c0:
    lfs     f0, -0x8(rtoc)
    lwz     r5, -0x60b4(r13)
    stfs    f0, 0x11c(sp)
    lwz     r3, -0x70cc(r13)
    stfs    f0, 0x120(sp)
    stfs    f0, 0x124(sp)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x128(sp)
    stw     r0, 0x12c(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x130(sp)
    lwz     r3, 0x14(r3)
    addi    r3, r3, 0xc
    bl      begin__Q27JGadget38TVector_Pv_Q27JGadget14TAllocator_Pv__Fv
    slwi    r0, r30, 2
    lfs     f1, 0x0(rtoc)
    lwzx    r6, r3, r0
    mr      r5, r30
    lwz     r3, -0x70cc(r13)
    addi    r4, sp, 0x128
    lfs     f0, 0x10(r6)
    addi    r6, sp, 0x11c
    fadds   f0, f1, f0
    addi    r7, sp, 0x120
    addi    r8, sp, 0x124
    stfs    f0, 0x12c(sp)
    bl      calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf
    lfs     f1, 0x11c(sp)
    lfs     f2, 0x4(rtoc)
    lfs     f0, 0x124(sp)
    fsubs   f1, f1, f2
    fsubs   f0, f0, f2
    stfs    f1, 0xe4(sp)
    stfs    f0, 0xe0(sp)
    lwz     r3, 0xe4(sp)
    lwz     r0, 0xe0(sp)
    clrlwi  r3, r3, 1
    clrlwi  r0, r0, 1
    stw     r3, 0xe4(sp)
    stw     r0, 0xe0(sp)
    lfs     f1, 0xe4(sp)
    lfs     f0, 0xe0(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x802baa78
    b       branch_0x802baa7c

branch_0x802baa78:
    fmr     f1, f0
branch_0x802baa7c:
    lfs     f2, 0xc(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x802baa90
    lfs     f0, -0x4(rtoc)
    b       branch_0x802baaa0

branch_0x802baa90:
    lfs     f0, 0x4(rtoc)
    fsubs   f1, f0, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
branch_0x802baaa0:
    lwz     r3, -0x6044(r13)
    fmr     f1, f0
    lwz     r3, 0xa0(r3)
    bl      xFadeBgm__10MSBgmXFadeFf
    lbz     r0, -0x5fb4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x802bac34
    lwz     r3, -0x70cc(r13)
    lwz     r0, 0x4(r31)
    lwz     r3, 0x14(r3)
    slwi    r0, r0, 2
    lwz     r4, -0x60b4(r13)
    lwz     r3, 0x10(r3)
    lwzx    r5, r3, r0
    lwz     r3, 0xc(r5)
    lwz     r0, 0x10(r5)
    stw     r3, 0x158(sp)
    stw     r0, 0x15c(sp)
    lwz     r0, 0x14(r5)
    stw     r0, 0x160(sp)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x14c(sp)
    stw     r0, 0x150(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x154(sp)
    lfs     f3, 0x150(sp)
    stfs    f3, 0x15c(sp)
    lfs     f0, 0x15c(sp)
    lfs     f2, 0x158(sp)
    fsubs   f4, f0, f3
    lfs     f1, 0x14c(sp)
    lfs     f3, 0x160(sp)
    fsubs   f2, f2, f1
    lfs     f0, 0x154(sp)
    fsubs   f3, f3, f0
    lfs     f0, -0x8(rtoc)
    fmuls   f1, f4, f4
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f4, f3, f1
    fcmpo   cr0, f4, f0
    ble-    branch_0x802bab9c
    frsqrte f1, f4
    lfd     f3, 0x8(rtoc)
    lfd     f2, 0x10(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f4, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f4, f0
    frsp    f0, f0
    stfs    f0, 0xd8(sp)
    lfs     f4, 0xd8(sp)
branch_0x802bab9c:
    lwz     r0, 0x158(sp)
    fmr     f30, f4
    lwz     r3, 0x15c(sp)
    addi    r4, sp, 0xc0
    stw     r0, 0xc0(sp)
    lwz     r0, 0x160(sp)
    stw     r3, 0xc4(sp)
    addi    r5, sp, 0xcc
    lwz     r3, -0x6044(r13)
    stw     r0, 0xc8(sp)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x8(r3)
    bl      PSMTXMultVec
    lwz     r0, 0xcc(sp)
    fmr     f1, f30
    lwz     r4, 0xd0(sp)
    addi    r3, sp, 0xf8
    stw     r0, 0xf8(sp)
    lwz     r0, 0xd4(sp)
    stw     r4, 0xfc(sp)
    lfs     f2, 0x18(rtoc)
    stw     r0, 0x100(sp)
    bl      calcPan__8MSHandleFRC3Vecff
    fmr     f31, f1
    addi    r3, sp, 0xf8
    fmr     f1, f30
    bl      calcDolby__8MSHandleFRC3Vecf
    fmr     f30, f1
    li      r3, 0x1
    fmr     f1, f31
    li      r4, 0x1
    li      r5, 0x0
    bl      setPan__5MSBgmFUcfUlUc
    fmr     f1, f30
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setDolby__5MSBgmFUcfUlUc
branch_0x802bac34:
    lwz     r0, 0x4(r31)
    stw     r0, 0x8(r31)
branch_0x802bac3c:
    lwz     r0, 0x194(sp)
    lfd     f31, 0x188(sp)
    lfd     f30, 0x180(sp)
    mtlr    r0
    lwz     r31, 0x17c(sp)
    lwz     r30, 0x178(sp)
    addi    sp, sp, 0x190
    blr


.globl proc__20MSStageDistFadeMonteFv
proc__20MSStageDistFadeMonteFv: # 0x802bac5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x118(sp)
    stfd    f31, 0x110(sp)
    stfd    f30, 0x108(sp)
    stw     r31, 0x104(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    stw     r30, 0x100(sp)
    stw     r29, 0xfc(sp)
    bl      getHandle__5MSBgmFUc
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      getHandle__5MSBgmFUc
    cmplwi  r30, 0x0
    beq-    branch_0x802bafdc
    cmplwi  r3, 0x0
    bne-    branch_0x802baca8
    b       branch_0x802bafdc

branch_0x802baca8:
    lwz     r4, -0x60b4(r13)
    lfs     f0, 0x0(rtoc)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0xb8(sp)
    stw     r0, 0xbc(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0xc0(sp)
    lfs     f1, 0xbc(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xbc(sp)
    lwz     r0, 0xb8(sp)
    lwz     r3, 0xbc(sp)
    stw     r0, 0xc4(sp)
    lwz     r0, 0xc0(sp)
    stw     r3, 0xc8(sp)
    stw     r0, 0xcc(sp)
    lwz     r3, 0x10(r31)
    lfs     f2, 0xc4(sp)
    lfs     f3, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0xc8(sp)
    fsubs   f4, f3, f2
    lfs     f2, 0x8(r3)
    fsubs   f3, f1, f0
    lfs     f0, 0xcc(sp)
    fmuls   f1, f4, f4
    fsubs   f2, f2, f0
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrtf__3stdFf
    lfs     f0, 0xc(r31)
    fmr     f30, f1
    lfs     f31, -0x8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802bad48
    lfs     f31, -0x4(rtoc)
    b       branch_0x802bad60

branch_0x802bad48:
    lfs     f2, 0x8(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x802bad60
    fsubs   f1, f2, f1
    fsubs   f0, f2, f0
    fdivs   f31, f1, f0
branch_0x802bad60:
    lwz     r0, 0x4(r31)
    lwz     r3, 0x14(r31)
    cmplw   r0, r3
    bge-    branch_0x802bada0
    stw     r0, 0xf4(sp)
    lis     r0, 0x4330
    lfd     f2, 0x20(rtoc)
    stw     r0, 0xf0(sp)
    stw     r3, 0xec(sp)
    lfd     f0, 0xf0(sp)
    stw     r0, 0xe8(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0xe8(sp)
    fmuls   f1, f31, f1
    fsubs   f0, f0, f2
    fdivs   f31, f1, f0
branch_0x802bada0:
    bl      SMS_GetMonteVillageAreaInMario__Fv
    stw     r3, 0x1c(r31)
    lwz     r0, 0x1c(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802bae0c
    li      r3, 0x5023
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    beq-    branch_0x802badfc
    lfs     f1, -0x8(rtoc)
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
branch_0x802badfc:
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f31, 0x0(r3)
    b       branch_0x802bafc8

branch_0x802bae0c:
    lwz     r0, 0x20(r31)
    cmpwi   r0, 0x0
    bne-    branch_0x802baeac
    lfs     f1, -0x4(rtoc)
    fcmpu   cr0, f1, f31
    bne-    branch_0x802bae58
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x8(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f31, 0x0(r3)
    b       branch_0x802baebc

branch_0x802bae58:
    lfs     f1, -0x8(rtoc)
    fcmpu   cr0, f1, f31
    bne-    branch_0x802bae98
    li      r3, 0x1
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0xa
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f31, 0x0(r3)
    b       branch_0x802baebc

branch_0x802bae98:
    lwz     r3, -0x6044(r13)
    fmr     f1, f31
    lwz     r3, 0xa0(r3)
    bl      xFadeBgmForce__10MSBgmXFadeFf
    b       branch_0x802baebc

branch_0x802baeac:
    lwz     r3, -0x6044(r13)
    fmr     f1, f31
    lwz     r3, 0xa0(r3)
    bl      xFadeBgm__10MSBgmXFadeFf
branch_0x802baebc:
    lwz     r7, 0x10(r31)
    addi    r4, sp, 0x68
    lwz     r29, 0x14(r31)
    addi    r5, sp, 0x74
    lwz     r30, 0x4(r31)
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    lwz     r3, -0x6044(r13)
    stw     r6, 0x68(sp)
    stw     r0, 0x6c(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x70(sp)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x8(r3)
    bl      PSMTXMultVec
    lwz     r0, 0x74(sp)
    fmr     f1, f30
    lwz     r4, 0x78(sp)
    addi    r3, sp, 0x90
    stw     r0, 0x90(sp)
    lwz     r0, 0x7c(sp)
    stw     r4, 0x94(sp)
    lfs     f2, 0x18(rtoc)
    stw     r0, 0x98(sp)
    bl      calcPan__8MSHandleFRC3Vecff
    fmr     f31, f1
    addi    r3, sp, 0x90
    fmr     f1, f30
    bl      calcDolby__8MSHandleFRC3Vecf
    cmplw   r30, r29
    fmr     f30, f1
    bge-    branch_0x802bafa0
    stw     r30, 0xec(sp)
    lis     r0, 0x4330
    lfs     f5, 0x4(rtoc)
    stw     r0, 0xe8(sp)
    lfd     f4, 0x20(rtoc)
    fsubs   f31, f31, f5
    stw     r29, 0xf4(sp)
    lfd     f0, 0xe8(sp)
    stw     r30, 0xe4(sp)
    fsubs   f0, f0, f4
    stw     r0, 0xf0(sp)
    stw     r0, 0xe0(sp)
    fmuls   f3, f31, f0
    lfd     f1, 0xf0(sp)
    stw     r29, 0xdc(sp)
    lfd     f0, 0xe0(sp)
    fsubs   f2, f1, f4
    stw     r0, 0xd8(sp)
    fsubs   f1, f0, f4
    lfd     f0, 0xd8(sp)
    fdivs   f31, f3, f2
    fmuls   f1, f30, f1
    fsubs   f0, f0, f4
    fadds   f31, f31, f5
    fdivs   f30, f1, f0
branch_0x802bafa0:
    fmr     f1, f31
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setPan__5MSBgmFUcfUlUc
    fmr     f1, f30
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setDolby__5MSBgmFUcfUlUc
branch_0x802bafc8:
    lwz     r0, 0x1c(r31)
    stw     r0, 0x20(r31)
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x802bafdc:
    lwz     r0, 0x11c(sp)
    lfd     f31, 0x110(sp)
    lfd     f30, 0x108(sp)
    mtlr    r0
    lwz     r31, 0x104(sp)
    lwz     r30, 0x100(sp)
    lwz     r29, 0xfc(sp)
    addi    sp, sp, 0x118
    blr


.globl proc__15MSStageDistFadeFv
proc__15MSStageDistFadeFv: # 0x802bb000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stw     r31, 0xc4(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    stw     r30, 0xc0(sp)
    stw     r29, 0xbc(sp)
    bl      getHandle__5MSBgmFUc
    addi    r30, r3, 0x0
    li      r3, 0x0
    bl      getHandle__5MSBgmFUc
    cmplwi  r30, 0x0
    beq-    branch_0x802bb2b4
    cmplwi  r3, 0x0
    bne-    branch_0x802bb04c
    b       branch_0x802bb2b4

branch_0x802bb04c:
    lwz     r4, -0x60b4(r13)
    lwz     r3, 0x10(r31)
    lfs     f2, 0x0(r4)
    lfs     f3, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fsubs   f4, f3, f2
    lfs     f2, 0x8(r3)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r4)
    fmuls   f1, f4, f4
    fsubs   f2, f2, f0
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f1, f2, f0
    bl      sqrtf__3stdFf
    lfs     f0, 0xc(r31)
    fmr     f31, f1
    lfs     f3, -0x8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x802bb0ac
    lfs     f3, -0x4(rtoc)
    b       branch_0x802bb0c4

branch_0x802bb0ac:
    lfs     f2, 0x8(r31)
    fcmpo   cr0, f1, f2
    bge-    branch_0x802bb0c4
    fsubs   f1, f2, f1
    fsubs   f0, f2, f0
    fdivs   f3, f1, f0
branch_0x802bb0c4:
    lwz     r3, 0x4(r31)
    lwz     r4, 0x14(r31)
    cmplw   r3, r4
    bgt-    branch_0x802bb18c
    lbz     r0, 0x18(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x802bb114
    stw     r3, 0xb4(sp)
    lis     r0, 0x4330
    lfd     f2, 0x20(rtoc)
    stw     r0, 0xb0(sp)
    stw     r4, 0xac(sp)
    lfd     f0, 0xb0(sp)
    stw     r0, 0xa8(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0xa8(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f30, f1, f0
    b       branch_0x802bb150

branch_0x802bb114:
    stw     r3, 0xac(sp)
    lis     r0, 0x4330
    lfs     f4, -0x4(rtoc)
    stw     r0, 0xa8(sp)
    lfd     f2, 0x20(rtoc)
    fsubs   f3, f3, f4
    stw     r4, 0xb4(sp)
    lfd     f0, 0xa8(sp)
    stw     r0, 0xb0(sp)
    fsubs   f1, f0, f2
    lfd     f0, 0xb0(sp)
    fmuls   f1, f3, f1
    fsubs   f0, f0, f2
    fdivs   f0, f1, f0
    fadds   f30, f4, f0
branch_0x802bb150:
    lfs     f0, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0x2
    fsubs   f1, f0, f30
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    fmr     f1, f30
    li      r3, 0x1
    li      r4, 0x2
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    lwz     r3, -0x6044(r13)
    lwz     r3, 0xa0(r3)
    stfs    f30, 0x0(r3)
    b       branch_0x802bb19c

branch_0x802bb18c:
    lwz     r3, -0x6044(r13)
    fmr     f1, f3
    lwz     r3, 0xa0(r3)
    bl      xFadeBgm__10MSBgmXFadeFf
branch_0x802bb19c:
    lwz     r7, 0x10(r31)
    addi    r4, sp, 0x50
    lwz     r29, 0x14(r31)
    addi    r5, sp, 0x5c
    lwz     r30, 0x4(r31)
    lwz     r6, 0x0(r7)
    lwz     r0, 0x4(r7)
    lwz     r3, -0x6044(r13)
    stw     r6, 0x50(sp)
    stw     r0, 0x54(sp)
    lwz     r0, 0x8(r7)
    stw     r0, 0x58(sp)
    lwz     r3, 0x8(r3)
    lwz     r3, 0x8(r3)
    bl      PSMTXMultVec
    lwz     r0, 0x5c(sp)
    fmr     f1, f31
    lwz     r4, 0x60(sp)
    addi    r3, sp, 0x70
    stw     r0, 0x70(sp)
    lwz     r0, 0x64(sp)
    stw     r4, 0x74(sp)
    lfs     f2, 0x18(rtoc)
    stw     r0, 0x78(sp)
    bl      calcPan__8MSHandleFRC3Vecff
    fmr     f30, f1
    addi    r3, sp, 0x70
    fmr     f1, f31
    bl      calcDolby__8MSHandleFRC3Vecf
    cmplw   r30, r29
    fmr     f31, f1
    bge-    branch_0x802bb280
    stw     r30, 0xac(sp)
    lis     r0, 0x4330
    lfs     f5, 0x4(rtoc)
    stw     r0, 0xa8(sp)
    lfd     f4, 0x20(rtoc)
    fsubs   f30, f30, f5
    stw     r29, 0xb4(sp)
    lfd     f0, 0xa8(sp)
    stw     r30, 0xa4(sp)
    fsubs   f0, f0, f4
    stw     r0, 0xb0(sp)
    stw     r0, 0xa0(sp)
    fmuls   f3, f30, f0
    lfd     f1, 0xb0(sp)
    stw     r29, 0x9c(sp)
    lfd     f0, 0xa0(sp)
    fsubs   f2, f1, f4
    stw     r0, 0x98(sp)
    fsubs   f1, f0, f4
    lfd     f0, 0x98(sp)
    fdivs   f30, f3, f2
    fmuls   f1, f31, f1
    fsubs   f0, f0, f4
    fadds   f30, f30, f5
    fdivs   f31, f1, f0
branch_0x802bb280:
    fmr     f1, f30
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setPan__5MSBgmFUcfUlUc
    fmr     f1, f31
    li      r3, 0x1
    li      r4, 0x1
    li      r5, 0x0
    bl      setDolby__5MSBgmFUcfUlUc
    lwz     r3, 0x4(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x4(r31)
branch_0x802bb2b4:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xd8
    blr


.globl __ct__15MSStageDistFadeFPC3VecffUlb
__ct__15MSStageDistFadeFPC3VecffUlb: # 0x802bb2d8
    lis     r7, 0x803e
    subi    r0, r7, 0x2cc
    lis     r7, 0x803e
    stw     r0, 0x0(r3)
    subi    r7, r7, 0x2e0
    stw     r7, 0x0(r3)
    li      r0, 0x0
    stw     r0, 0x4(r3)
    lfs     f0, -0x8(rtoc)
    fcmpu   cr0, f0, f1
    bne-    branch_0x802bb308
    lfs     f1, 0x28(rtoc)
branch_0x802bb308:
    stfs    f1, 0x8(r3)
    lfs     f0, -0x8(rtoc)
    fcmpu   cr0, f0, f2
    bne-    branch_0x802bb31c
    lfs     f2, 0x2c(rtoc)
branch_0x802bb31c:
    stfs    f2, 0xc(r3)
    stw     r4, 0x10(r3)
    stw     r5, 0x14(r3)
    stb     r6, 0x18(r3)
    blr


.globl stageLoop__7MSStageFv
stageLoop__7MSStageFv: # 0x802bb330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__7MSStageFUcUc
init__7MSStageFUcUc: # 0x802bb35c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stw     r31, 0x6c(sp)
    li      r31, 0x0
    stw     r30, 0x68(sp)
    mr      r30, r3
    lwz     r5, -0x6044(r13)
    stw     r31, -0x5fac(r13)
    lfs     f0, -0x8(rtoc)
    stw     r31, -0x5fa8(r13)
    stw     r31, -0x5fa4(r13)
    lwz     r3, 0xa0(r5)
    stfs    f0, 0x0(r3)
    lbz     r0, -0x5fc4(r13)
    cmpwi   r0, 0x2
    beq-    branch_0x802bb4e8
    bge-    branch_0x802bb3b8
    cmpwi   r0, 0x1
    bge-    branch_0x802bb3c4
    b       branch_0x802bb684

branch_0x802bb3b8:
    cmpwi   r0, 0x4
    bge-    branch_0x802bb684
    b       branch_0x802bb620

branch_0x802bb3c4:
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    beq-    branch_0x802bb498
    cmplwi  r0, 0x7
    lfs     f31, 0x30(rtoc)
    lfs     f30, 0x34(rtoc)
    li      r31, 0x104
    bne-    branch_0x802bb3f4
    lfs     f31, 0x38(rtoc)
    li      r31, 0x104
    lfs     f30, 0x3c(rtoc)
    b       branch_0x802bb410

branch_0x802bb3f4:
    cmplwi  r0, 0x2
    bne-    branch_0x802bb404
    li      r31, 0x104
    b       branch_0x802bb410

branch_0x802bb404:
    cmplwi  r0, 0x4
    bne-    branch_0x802bb410
    li      r31, 0x154
branch_0x802bb410:
    li      r3, 0x1c
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb490
    lwz     r6, -0x6044(r13)
    lis     r5, 0x803e
    lis     r4, 0x803e
    lbz     r7, -0x5fb0(r13)
    lwz     r6, 0xbc(r6)
    subi    r0, r5, 0x2cc
    stw     r0, 0x0(r3)
    subi    r4, r4, 0x2e0
    li      r0, 0x0
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lfs     f0, -0x8(rtoc)
    fcmpu   cr0, f0, f31
    bne-    branch_0x802bb460
    lfs     f0, 0x28(rtoc)
    b       branch_0x802bb464

branch_0x802bb460:
    fmr     f0, f31
branch_0x802bb464:
    stfs    f0, 0x8(r3)
    lfs     f0, -0x8(rtoc)
    fcmpu   cr0, f0, f30
    bne-    branch_0x802bb47c
    lfs     f0, 0x2c(rtoc)
    b       branch_0x802bb480

branch_0x802bb47c:
    fmr     f0, f30
branch_0x802bb480:
    stfs    f0, 0xc(r3)
    stw     r6, 0x10(r3)
    stw     r31, 0x14(r3)
    stb     r7, 0x18(r3)
branch_0x802bb490:
    stw     r3, -0x5fac(r13)
    b       branch_0x802bb684

branch_0x802bb498:
    li      r3, 0x24
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x802bb4e0
    lwz     r4, -0x6044(r13)
    mr      r3, r31
    lbz     r6, -0x5fb0(r13)
    li      r5, 0x5a
    lwz     r4, 0xbc(r4)
    lfs     f1, 0x30(rtoc)
    lfs     f2, 0x34(rtoc)
    bl      __ct__15MSStageDistFadeFPC3VecffUlb
    lis     r3, 0x803e
    subi    r0, r3, 0x2f4
    stw     r0, 0x0(r31)
    li      r0, 0x3
    stw     r0, 0x1c(r31)
    stw     r0, 0x20(r31)
branch_0x802bb4e0:
    stw     r31, -0x5fac(r13)
    b       branch_0x802bb684

branch_0x802bb4e8:
    lwz     r3, -0x70cc(r13)
    lbz     r0, 0x10(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802bb684
    clrlwi  r0, r30, 24
    cmplwi  r0, 0x8
    bne-    branch_0x802bb564
    li      r3, 0x18
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb55c
    lis     r4, 0x803e
    subi    r0, r4, 0x2cc
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0x308
    stw     r0, 0x0(r3)
    li      r5, -0x1
    lis     r4, 0x803e
    stw     r5, 0x4(r3)
    subi    r4, r4, 0x330
    li      r0, 0x3
    stw     r5, 0x8(r3)
    lfs     f0, -0x5fb8(r13)
    stfs    f0, 0xc(r3)
    stw     r3, -0x5fa8(r13)
    stw     r4, 0x0(r3)
    stw     r0, 0x10(r3)
    stw     r0, 0x14(r3)
branch_0x802bb55c:
    stw     r3, -0x5fac(r13)
    b       branch_0x802bb684

branch_0x802bb564:
    cmplwi  r0, 0x1
    bne-    branch_0x802bb5d8
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x5
    bne-    branch_0x802bb5d8
    li      r3, 0x14
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb5d0
    lis     r4, 0x803e
    subi    r0, r4, 0x2cc
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0x308
    stw     r0, 0x0(r3)
    li      r5, -0x1
    lis     r4, 0x803e
    stw     r5, 0x4(r3)
    subi    r0, r4, 0x31c
    stw     r5, 0x8(r3)
    lfs     f0, -0x5fb8(r13)
    stfs    f0, 0xc(r3)
    stw     r3, -0x5fa8(r13)
    stw     r0, 0x0(r3)
    stb     r31, 0x10(r3)
    stb     r31, 0x11(r3)
    stw     r3, -0x5fa4(r13)
branch_0x802bb5d0:
    stw     r3, -0x5fac(r13)
    b       branch_0x802bb684

branch_0x802bb5d8:
    li      r3, 0x10
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb618
    lis     r4, 0x803e
    subi    r0, r4, 0x2cc
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0x308
    stw     r0, 0x0(r3)
    li      r0, -0x1
    stw     r0, 0x4(r3)
    stw     r0, 0x8(r3)
    lfs     f0, -0x5fb8(r13)
    stfs    f0, 0xc(r3)
    stw     r3, -0x5fa8(r13)
branch_0x802bb618:
    stw     r3, -0x5fac(r13)
    b       branch_0x802bb684

branch_0x802bb620:
    lwz     r3, -0x70cc(r13)
    lbz     r0, 0x10(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x802bb684
    li      r3, 0x14
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb680
    lis     r4, 0x803e
    subi    r0, r4, 0x2cc
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0x308
    stw     r0, 0x0(r3)
    li      r5, -0x1
    lis     r4, 0x803e
    stw     r5, 0x4(r3)
    subi    r0, r4, 0x344
    stw     r5, 0x8(r3)
    lfs     f0, -0x5fb8(r13)
    stfs    f0, 0xc(r3)
    stw     r3, -0x5fa8(r13)
    stw     r0, 0x0(r3)
    stb     r31, 0x10(r3)
branch_0x802bb680:
    stw     r3, -0x5fac(r13)
branch_0x802bb684:
    clrlwi  r0, r30, 24
    cmpwi   r0, 0x3c
    beq-    branch_0x802bb6a0
    bge-    branch_0x802bb6d4
    cmpwi   r0, 0x34
    beq-    branch_0x802bb6a0
    b       branch_0x802bb6d4

branch_0x802bb6a0:
    li      r3, 0x8
    bl      __nw__FUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb6d0
    lis     r4, 0x803e
    subi    r0, r4, 0x2cc
    lis     r4, 0x803e
    stw     r0, 0x0(r3)
    subi    r0, r4, 0x358
    stw     r0, 0x0(r3)
    li      r0, 0x5012
    stw     r0, 0x4(r3)
branch_0x802bb6d0:
    stw     r3, -0x5fac(r13)
branch_0x802bb6d4:
    lwz     r0, 0x84(sp)
    lwz     r3, -0x5fac(r13)
    lfd     f31, 0x78(sp)
    mtlr    r0
    lfd     f30, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl startStageBGM__10MSMainProcFUcUc
startStageBGM__10MSMainProcFUcUc: # 0x802bb6f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x6044(r13)
    bl      initSound__6MSoundFv
    lwz     r3, -0x6044(r13)
    li      r4, 0x0
    stw     r4, 0xa4(r3)
    lwz     r3, -0x6044(r13)
    stb     r4, 0xcd(r3)
    lwz     r3, -0x5fd0(r13)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xfff0
    beq-    branch_0x802bb784
    lbz     r5, -0x5fc7(r13)
    rlwinm. r0, r5, 0, 30, 30
    beq-    branch_0x802bb740
    li      r4, 0x1
branch_0x802bb740:
    clrlwi. r0, r4, 24
    beq-    branch_0x802bb784
    clrlwi. r0, r5, 31
    beq-    branch_0x802bb780
    lwz     r4, -0x6044(r13)
    lbz     r0, 0xd3(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802bb784
    bl      startBGM__5MSBgmFUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb784
    lfs     f1, -0x8(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
    b       branch_0x802bb784

branch_0x802bb780:
    bl      startBGM__5MSBgmFUl
branch_0x802bb784:
    lwz     r3, -0x5fcc(r13)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xfff0
    beq-    branch_0x802bb7cc
    lbz     r0, -0x5fc8(r13)
    cmplwi  r0, 0x2
    bne-    branch_0x802bb7cc
    lwz     r4, -0x6044(r13)
    lbz     r0, 0xd3(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802bb7cc
    bl      startBGM__5MSBgmFUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb7cc
    lfs     f1, -0x8(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x802bb7cc:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl endStageEntranceDemo__10MSMainProcFUcUc
endStageEntranceDemo__10MSMainProcFUcUc: # 0x802bb7dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x5fd4(r13)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xfff0
    beq-    branch_0x802bb820
    lbz     r0, -0x5fc7(r13)
    rlwinm. r0, r0, 0, 28, 28
    beq-    branch_0x802bb80c
    li      r0, 0x1
    b       branch_0x802bb810

branch_0x802bb80c:
    li      r0, 0x0
branch_0x802bb810:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bb820
    li      r4, 0x14
    bl      stopBGM__5MSBgmFUlUl
branch_0x802bb820:
    lbz     r0, -0x5fc7(r13)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x802bb834
    li      r0, 0x1
    b       branch_0x802bb838

branch_0x802bb834:
    li      r0, 0x0
branch_0x802bb838:
    clrlwi. r0, r0, 24
    beq-    branch_0x802bb854
    lwz     r3, -0x5fd4(r13)
    li      r4, 0x14
    lfs     f1, -0x8(rtoc)
    li      r5, 0x0
    bl      setVolume__5MSBgmFUlfUlUc
branch_0x802bb854:
    lwz     r3, -0x6044(r13)
    li      r4, 0x0
    bl      demoModeOut__6MSoundFb
    lwz     r3, -0x6044(r13)
    li      r0, 0x0
    stb     r0, 0xd0(r3)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl entranceDemoLoop__10MSMainProcFUl
entranceDemoLoop__10MSMainProcFUl: # 0x802bb87c
    blr


.globl startStageEntranceDemo__10MSMainProcFUcUc
startStageEntranceDemo__10MSMainProcFUcUc: # 0x802bb880
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x5fd4(r13)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xfff0
    beq-    branch_0x802bb8a0
    bl      startBGM__5MSBgmFUl
branch_0x802bb8a0:
    lwz     r3, -0x5fcc(r13)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xfff0
    beq-    branch_0x802bb8e8
    lbz     r0, -0x5fc8(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x802bb8e8
    lwz     r4, -0x6044(r13)
    lbz     r0, 0xd3(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802bb8e8
    bl      startBGM__5MSBgmFUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bb8e8
    lfs     f1, -0x8(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x802bb8e8:
    lwz     r3, -0x6044(r13)
    li      r5, 0x0
    lhz     r4, -0x5fc6(r13)
    bl      demoModeIn__6MSoundFUsb
    lwz     r3, -0x6044(r13)
    li      r4, 0x0
    li      r0, 0x1
    stw     r4, 0xa8(r3)
    lwz     r3, -0x6044(r13)
    stb     r0, 0xcd(r3)
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setMSoundEnterStage__10MSMainProcFUcUc
setMSoundEnterStage__10MSMainProcFUcUc: # 0x802bb920
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r23, 0x64(sp)
    addi    r23, r3, 0x0
    addi    r24, r4, 0x0
    li      r3, -0x10
    bl      getSceneNo__5MSBgmFUl
    clrlwi  r0, r23, 24
    lfs     f0, 0x40(rtoc)
    li      r31, 0x1
    stw     r3, -0x5fd8(r13)
    li      r26, -0x10
    li      r30, 0x0
    stw     r26, -0x5fd0(r13)
    lis     r27, 0x8001
    addi    r3, r27, 0x17
    stw     r26, -0x5fcc(r13)
    li      r28, 0xa
    li      r29, 0x2
    stw     r3, -0x5fd4(r13)
    li      r3, 0x1c7
    cmplwi  r0, 0x3c
    stb     r28, -0x5fc7(r13)
    li      r25, 0x0
    stb     r29, -0x5fc8(r13)
    stb     r30, -0x5fc4(r13)
    stw     r26, -0x5fc0(r13)
    stw     r26, -0x5fbc(r13)
    stfs    f0, -0x5fb8(r13)
    stb     r31, -0x5fb4(r13)
    stb     r31, -0x5fb3(r13)
    stb     r31, -0x5fb2(r13)
    stb     r31, -0x5fb1(r13)
    sth     r3, -0x5fc6(r13)
    stb     r31, -0x5fb0(r13)
    stw     r30, -0x5fa4(r13)
    bgt-    branch_0x802bc254
    lis     r3, 0x803e
    subi    r3, r3, 0x44c
    slwi    r0, r0, 2
    lwzx    r0, r3, r0
    mtctr   r0
    bctr       
    addi    r3, r27, 0x1a
    bl      getSceneNo__5MSBgmFUl
    addi    r0, r27, 0x1a
    stw     r3, -0x5fd8(r13)
    stw     r0, -0x5fd0(r13)
    b       branch_0x802bc254


.incbin "./baserom/code/Text_0x80005600.bin", 0x2b63e8, 0x802bc254 - 0x802bb9e8
branch_0x802bc254:
    lwz     r3, -0x6044(r13)
    bl      initSound__6MSoundFv
    lwz     r4, -0x5fd8(r13)
    cmpwi   r4, -0x1
    beq-    branch_0x802bc278
    lwz     r3, -0x6044(r13)
    addi    r5, r23, 0x0
    addi    r6, r24, 0x0
    bl      enterStage__6MSoundF13MS_SCENE_WAVEUcUc
branch_0x802bc278:
    mr      r3, r25
    bl      setWaterCameraFir__12MSSeCallBackFb
    lwz     r3, -0x6044(r13)
    stb     r25, 0x98(r3)
    lwz     r3, -0x5fcc(r13)
    addis   r0, r3, 0x1
    cmplwi  r0, 0xfff0
    beq-    branch_0x802bc2d0
    lbz     r0, -0x5fc8(r13)
    cmplwi  r0, 0x0
    bne-    branch_0x802bc2d0
    lwz     r4, -0x6044(r13)
    lbz     r0, 0xd3(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x802bc2d0
    bl      startBGM__5MSBgmFUl
    cmplwi  r3, 0x0
    beq-    branch_0x802bc2d0
    lfs     f1, -0x8(rtoc)
    li      r4, 0x0
    li      r5, 0x0
    bl      setVolume__8JAISoundFfUlUc
branch_0x802bc2d0:
    lwz     r3, -0x6044(r13)
    li      r0, 0x1
    stb     r0, 0xcc(r3)
    lwz     r0, 0x8c(sp)
    lmw     r23, 0x64(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl setBossNotDamagedFlag__10MSMainProcFb
setBossNotDamagedFlag__10MSMainProcFb: # 0x802bc2f0
    stb     r3, -0x5fb1(r13)
    blr


.globl setBossLivesFlag2__10MSMainProcFb
setBossLivesFlag2__10MSMainProcFb: # 0x802bc2f8
    mflr    r0
    li      r4, 0xa
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    bl      stopTrackBGM__5MSBgmFUcUl
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0x12
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    stb     r31, -0x5fb2(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl setBossLivesFlagOnlyFlag__10MSMainProcFb
setBossLivesFlagOnlyFlag__10MSMainProcFb: # 0x802bc344
    stb     r3, -0x5fb3(r13)
    blr


.globl setBossLivesFlag__10MSMainProcFb
setBossLivesFlag__10MSMainProcFb: # 0x802bc34c
    mflr    r0
    li      r4, 0xa
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    li      r3, 0x1
    bl      stopTrackBGM__5MSBgmFUcUl
    lfs     f1, -0x4(rtoc)
    li      r3, 0x0
    li      r4, 0x12
    li      r5, 0x0
    bl      setTrackVolume__5MSBgmFUcfUlUc
    stb     r31, -0x5fb3(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl fromTalkingCameraDemo__10MSMainProcFb
fromTalkingCameraDemo__10MSMainProcFb: # 0x802bc398
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x6044(r13)
    bl      talkModeIn__6MSoundFb
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl toTalkingCameraDemo__10MSMainProcFv
toTalkingCameraDemo__10MSMainProcFv: # 0x802bc3c0
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmpwi   r0, 0x4
    beq-    branch_0x802bc404
    bge-    branch_0x802bc3f0
    cmpwi   r0, 0x1
    beq-    branch_0x802bc40c
    b       branch_0x802bc410

branch_0x802bc3f0:
    cmpwi   r0, 0x9
    beq-    branch_0x802bc3fc
    b       branch_0x802bc410

branch_0x802bc3fc:
    li      r4, 0x4
    b       branch_0x802bc410

branch_0x802bc404:
    li      r4, 0x4
    b       branch_0x802bc410

branch_0x802bc40c:
    li      r4, 0x4
branch_0x802bc410:
    lwz     r3, -0x6044(r13)
    lfs     f1, -0x4(rtoc)
    bl      setCategoryVOLs__6MSoundFUsf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl fromInnerCameraDemo__10MSMainProcFv
fromInnerCameraDemo__10MSMainProcFv: # 0x802bc42c
    lwz     r3, -0x6044(r13)
    li      r0, 0x0
    stb     r0, 0xce(r3)
    blr


.globl toInnerCameraDemo__10MSMainProcFv
toInnerCameraDemo__10MSMainProcFv: # 0x802bc43c
    lwz     r3, -0x6044(r13)
    li      r0, 0x1
    stb     r0, 0xce(r3)
    blr


.globl getMonteVillageActorArea__10MSMainProcFRC3Vec
getMonteVillageActorArea__10MSMainProcFRC3Vec: # 0x802bc44c
    mflr    r0
    li      r5, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    lwz     r4, -0x7164(r13)
    lbz     r0, 0xd1(r4)
    cmplwi  r0, 0x8
    bne-    branch_0x802bc4e4
    lwz     r5, 0x0(r3)
    addi    r4, sp, 0x20
    lwz     r0, 0x4(r3)
    lfs     f0, 0x0(rtoc)
    stw     r5, 0x10(sp)
    stw     r0, 0x14(sp)
    lwz     r0, 0x8(r3)
    lwz     r3, -0x70d0(r13)
    stw     r0, 0x18(sp)
    lfs     f1, 0x14(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x14(sp)
    lwz     r0, 0x10(sp)
    lwz     r5, 0x14(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x18(sp)
    stw     r5, 0x24(sp)
    stw     r0, 0x28(sp)
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    cmpwi   r3, 0x1
    beq-    branch_0x802bc4d8
    bge-    branch_0x802bc4e0
    cmpwi   r3, 0x0
    bge-    branch_0x802bc4d0
    b       branch_0x802bc4e0

branch_0x802bc4d0:
    li      r5, 0x2
    b       branch_0x802bc4e4

branch_0x802bc4d8:
    li      r5, 0x0
    b       branch_0x802bc4e4

branch_0x802bc4e0:
    li      r5, 0x3
branch_0x802bc4e4:
    lwz     r0, 0x34(sp)
    mr      r3, r5
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl getGateKeeperBGMStopFlag__10MSMainProcFv
getGateKeeperBGMStopFlag__10MSMainProcFv: # 0x802bc4f8
    lwz     r4, -0x5fa4(r13)
    cmplwi  r4, 0x0
    beq-    branch_0x802bc538
    li      r5, 0x0
    b       branch_0x802bc52c

branch_0x802bc50c:
    clrlwi  r3, r5, 24
    addi    r0, r3, 0x10
    lbzx    r0, r4, r0
    cmplwi  r0, 0x0
    beq-    branch_0x802bc528
    li      r3, 0x0
    blr

branch_0x802bc528:
    addi    r5, r5, 0x1
branch_0x802bc52c:
    clrlwi  r0, r5, 24
    cmplwi  r0, 0x2
    blt+    branch_0x802bc50c
branch_0x802bc538:
    li      r3, 0x1
    blr


.globl setGateKeeperBGMPlayFlag__10MSMainProcFUlb
setGateKeeperBGMPlayFlag__10MSMainProcFUlb: # 0x802bc540
    lwz     r5, -0x5fa4(r13)
    cmplwi  r5, 0x0
    beqlr-    

    cmplwi  r3, 0x3
    bne-    branch_0x802bc55c
    stb     r4, 0x10(r5)
    blr

branch_0x802bc55c:
    cmplwi  r3, 0x4
    bnelr-    

    stb     r4, 0x11(r5)
    blr


.globl __sinit_MSoundMainSide_cpp
__sinit_MSoundMainSide_cpp: # 0x802bc56c
    mflr    r0
    lis     r3, 0x8040
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    subi    r31, r3, 0x2b70
    lbz     r0, -0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc5b4
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x802bc5b4:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc5e4
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x802bc5e4:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc614
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x802bc614:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc644
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x802bc644:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc674
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x802bc674:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc6a4
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x802bc6a4:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc6d4
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x802bc6d4:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc704
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x802bc704:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc734
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x802bc734:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc764
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x802bc764:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc794
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x802bc794:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc7c4
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x802bc7c4:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc7f4
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x802bc7f4:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc824
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x802bc824:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x802bc854
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x802bc854:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr

