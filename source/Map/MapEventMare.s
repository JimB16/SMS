
.globl __dt__19TMareEventBumpyWallFv
__dt__19TMareEventBumpyWallFv: # 0x801a42e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a434c
    lis     r3, __vvt__19TMareEventBumpyWall@h
    addi    r3, r3, __vvt__19TMareEventBumpyWall@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801a433c
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801a433c:
    extsh.  r0, r31
    ble-    branch_0x801a434c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a434c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__19TMareEventBumpyWallFPCc
__ct__19TMareEventBumpyWallFPCc: # 0x801a4368
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TMapObjBaseFPCc
    lis     r3, __vvt__19TMareEventBumpyWall@h
    addi    r3, r3, __vvt__19TMareEventBumpyWall@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x138(r31)
    stw     r0, 0x13c(r31)
    lfs     f0, -0x4058(r2)
    stfs    f0, 0x140(r31)
    stfs    f0, 0x144(r31)
    stw     r0, 0x148(r31)
    stw     r0, 0x14c(r31)
    stw     r0, 0x150(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__19TMareEventBumpyWallFR20JSUMemoryInputStream
load__19TMareEventBumpyWallFR20JSUMemoryInputStream: # 0x801a43d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    bl      load__11TMapObjBaseFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0x138
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r3, 0x138(r30)
    bl      getBuildingJoint__11TMapObjBaseFi
    stw     r3, 0x13c(r30)
    li      r4, 0x0
    lwz     r3, 0x138(r30)
    bl      newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
    stw     r3, 0x148(r30)
    li      r4, 0x0
    lwz     r3, 0x138(r30)
    bl      newAndInitBuildingCollisionMove__11TMapObjBaseFiP10TLiveActor
    stw     r3, 0x14c(r30)
    lwz     r3, 0x148(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x4054(r2)
    stfs    f0, 0x140(r30)
    lfs     f0, -0x4050(r2)
    stfs    f0, 0x144(r30)
    lwz     r0, 0x138(r30)
    cmpwi   r0, 0x32
    bge-    branch_0x801a447c
    cmpwi   r0, 0x2a
    beq-    branch_0x801a44a4
    bge-    branch_0x801a44c4
    cmpwi   r0, 0x27
    bge-    branch_0x801a44b0
    cmpwi   r0, 0x22
    bge-    branch_0x801a44a4
    b       branch_0x801a44c4

branch_0x801a447c:
    cmpwi   r0, 0x3f
    bge-    branch_0x801a4490
    cmpwi   r0, 0x3b
    bge-    branch_0x801a44bc
    b       branch_0x801a4498

branch_0x801a4490:
    cmpwi   r0, 0x44
    bge-    branch_0x801a44c4
branch_0x801a4498:
    li      r0, 0x0
    stw     r0, 0x150(r30)
    b       branch_0x801a44c4

branch_0x801a44a4:
    li      r0, 0x1
    stw     r0, 0x150(r30)
    b       branch_0x801a44c4

branch_0x801a44b0:
    li      r0, 0x2
    stw     r0, 0x150(r30)
    b       branch_0x801a44c4

branch_0x801a44bc:
    li      r0, 0x3
    stw     r0, 0x150(r30)
branch_0x801a44c4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl control__19TMareEventBumpyWallFv
control__19TMareEventBumpyWallFv: # 0x801a44dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      control__11TMapObjBaseFv
    lhz     r0, 0xfc(r31)
    cmpwi   r0, 0x3
    beq-    branch_0x801a4530
    bge-    branch_0x801a4514
    cmpwi   r0, 0x1
    beq-    branch_0x801a4550
    bge-    branch_0x801a4524
    b       branch_0x801a4550

branch_0x801a4514:
    cmpwi   r0, 0x5
    beq-    branch_0x801a4548
    bge-    branch_0x801a4550
    b       branch_0x801a453c

branch_0x801a4524:
    mr      r3, r31
    bl      bumpUpX__19TMareEventBumpyWallFv
    b       branch_0x801a4550

branch_0x801a4530:
    mr      r3, r31
    bl      bumpUpZ__19TMareEventBumpyWallFv
    b       branch_0x801a4550

branch_0x801a453c:
    mr      r3, r31
    bl      bumpDownX__19TMareEventBumpyWallFv
    b       branch_0x801a4550

branch_0x801a4548:
    mr      r3, r31
    bl      bumpDownZ__19TMareEventBumpyWallFv
branch_0x801a4550:
    lhz     r0, 0xfc(r31)
    cmplwi  r0, 0x1
    bne-    branch_0x801a4564
    li      r0, 0x1
    b       branch_0x801a4568

branch_0x801a4564:
    li      r0, 0x0
branch_0x801a4568:
    clrlwi. r0, r0, 24
    bne-    branch_0x801a4574
    bl      calcMap__11TMapObjBaseFv
branch_0x801a4574:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl bumpUpX__19TMareEventBumpyWallFv
bumpUpX__19TMareEventBumpyWallFv: # 0x801a4588
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x13c(r3)
    bl      getJointTransX__11TMapObjBaseFP8J3DJoint
    fmr     f31, f1
    lfs     f0, -0x4058(r2)
    stfs    f31, 0x14(sp)
    stfs    f0, 0x18(sp)
    stfs    f0, 0x1c(sp)
    lfs     f1, 0x144(r31)
    fcmpo   cr0, f31, f1
    bge-    branch_0x801a4668
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a4634
    lfs     f0, 0x140(r31)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    fadds   f31, f31, f0
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a4640
    addi    r4, r31, 0x10
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801a4640

branch_0x801a4634:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
branch_0x801a4640:
    lwz     r3, 0x13c(r31)
    fmr     f1, f31
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a46c0

branch_0x801a4668:
    stfs    f1, 0x14(sp)
    lwz     r3, 0x13c(r31)
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x148(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801a46c0:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl bumpDownX__19TMareEventBumpyWallFv
bumpDownX__19TMareEventBumpyWallFv: # 0x801a46d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x13c(r3)
    bl      getJointTransX__11TMapObjBaseFP8J3DJoint
    fmr     f31, f1
    lfs     f0, -0x4058(r2)
    stfs    f31, 0x14(sp)
    stfs    f0, 0x18(sp)
    stfs    f0, 0x1c(sp)
    lfs     f0, 0x144(r31)
    fneg    f1, f0
    fcmpo   cr0, f31, f1
    ble-    branch_0x801a47bc
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a4788
    lfs     f0, 0x140(r31)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    fsubs   f31, f31, f0
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a4794
    addi    r4, r31, 0x10
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801a4794

branch_0x801a4788:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
branch_0x801a4794:
    lwz     r3, 0x13c(r31)
    fmr     f1, f31
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a4814

branch_0x801a47bc:
    stfs    f1, 0x14(sp)
    lwz     r3, 0x13c(r31)
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x148(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801a4814:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl bumpUpZ__19TMareEventBumpyWallFv
bumpUpZ__19TMareEventBumpyWallFv: # 0x801a482c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x13c(r3)
    bl      getJointTransZ__11TMapObjBaseFP8J3DJoint
    lfs     f0, -0x4058(r2)
    fmr     f31, f1
    stfs    f0, 0x14(sp)
    stfs    f0, 0x18(sp)
    stfs    f31, 0x1c(sp)
    lfs     f1, 0x144(r31)
    fcmpo   cr0, f31, f1
    bge-    branch_0x801a490c
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a48d8
    lfs     f0, 0x140(r31)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    fadds   f31, f31, f0
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a48e4
    addi    r4, r31, 0x10
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801a48e4

branch_0x801a48d8:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
branch_0x801a48e4:
    lwz     r3, 0x13c(r31)
    fmr     f1, f31
    bl      setJointTransZ__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a4964

branch_0x801a490c:
    stfs    f1, 0x1c(sp)
    lwz     r3, 0x13c(r31)
    bl      setJointTransZ__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x148(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801a4964:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl bumpDownZ__19TMareEventBumpyWallFv
bumpDownZ__19TMareEventBumpyWallFv: # 0x801a497c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x13c(r3)
    bl      getJointTransZ__11TMapObjBaseFP8J3DJoint
    lfs     f0, -0x4058(r2)
    fmr     f31, f1
    stfs    f0, 0x14(sp)
    stfs    f0, 0x18(sp)
    stfs    f31, 0x1c(sp)
    lfs     f0, 0x144(r31)
    fneg    f1, f0
    fcmpo   cr0, f31, f1
    ble-    branch_0x801a4a5c
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a4a2c
    lfs     f0, 0x140(r31)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    fsubs   f31, f31, f0
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a4a34
    addi    r4, r31, 0x10
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x801a4a34

branch_0x801a4a2c:
    lwz     r3, R13Off_m0x60f0(r13)
    bl      stop__9RumbleMgrFv
branch_0x801a4a34:
    lwz     r3, 0x13c(r31)
    fmr     f1, f31
    bl      setJointTransZ__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a4ab4

branch_0x801a4a5c:
    stfs    f1, 0x1c(sp)
    lwz     r3, 0x13c(r31)
    bl      setJointTransZ__11TMapObjBaseFP8J3DJointf
    lwz     r3, 0x14c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x148(r31)
    addi    r4, sp, 0x14
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
branch_0x801a4ab4:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl touchWater__19TMareEventBumpyWallFP9THitActor
touchWater__19TMareEventBumpyWallFP9THitActor: # 0x801a4acc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    lwz     r0, 0x150(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x801a4b18
    bge-    branch_0x801a4b00
    cmpwi   r0, 0x0
    beq-    branch_0x801a4b0c
    bge-    branch_0x801a4b24
    b       branch_0x801a4b38

branch_0x801a4b00:
    cmpwi   r0, 0x4
    bge-    branch_0x801a4b38
    b       branch_0x801a4b30

branch_0x801a4b0c:
    li      r0, 0x2
    sth     r0, 0xfc(r31)
    b       branch_0x801a4b38

branch_0x801a4b18:
    li      r0, 0x3
    sth     r0, 0xfc(r31)
    b       branch_0x801a4b38

branch_0x801a4b24:
    li      r0, 0x4
    sth     r0, 0xfc(r31)
    b       branch_0x801a4b38

branch_0x801a4b30:
    li      r0, 0x5
    sth     r0, 0xfc(r31)
branch_0x801a4b38:
    lwz     r3, 0x148(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x14c(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    li      r3, 0x1
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__21TMareEventDepressWallFPCc
__ct__21TMareEventDepressWallFPCc: # 0x801a4b78
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__21TMareEventDepressWall@h
    sth     r4, 0xc(r31)
    addi    r0, r3, __vvt__21TMareEventDepressWall@l
    addi    r3, r31, 0x0
    stw     r0, 0x0(r31)
    stw     r4, 0x10(r31)
    stw     r4, 0x14(r31)
    stw     r4, 0x18(r31)
    stw     r4, 0x1c(r31)
    stw     r4, 0x20(r31)
    stw     r4, 0x24(r31)
    stw     r4, 0x28(r31)
    stw     r4, 0x30(r31)
    stw     r4, 0x34(r31)
    stw     r4, 0x38(r31)
    stw     r4, 0x3c(r31)
    stw     r4, 0x40(r31)
    stw     r4, 0x44(r31)
    stw     r4, 0x48(r31)
    stw     r4, 0x4c(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl init1stEvent__21TMareEventDepressWallFv
init1stEvent__21TMareEventDepressWallFv: # 0x801a4c1c
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0xb
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x10(r3)
    li      r0, 0x8
    stw     r0, 0x14(r30)
    bl      initCommon__21TMareEventDepressWallFv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x4048
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x4048
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x801a4cb8
    stw     r30, 0x68(r3)
    li      r0, 0xe10
    li      r6, 0x1
    lwz     r4, 0x18(r30)
    li      r3, 0x4
    li      r5, 0x78
    stw     r0, 0x0(r4)
    b       branch_0x801a4cac

branch_0x801a4c9c:
    lwz     r4, 0x18(r30)
    addi    r6, r6, 0x1
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
branch_0x801a4cac:
    lwz     r0, 0x10(r30)
    cmpw    r6, r0
    blt+    branch_0x801a4c9c
branch_0x801a4cb8:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl init2ndEvent__21TMareEventDepressWallFv
init2ndEvent__21TMareEventDepressWallFv: # 0x801a4cd0
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0xf
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x10(r3)
    li      r0, 0x13
    stw     r0, 0x14(r30)
    bl      initCommon__21TMareEventDepressWallFv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x4040
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x4040
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x801a4d6c
    stw     r30, 0x68(r3)
    li      r0, 0xe10
    li      r6, 0x1
    lwz     r4, 0x18(r30)
    li      r3, 0x4
    li      r5, 0x78
    stw     r0, 0x0(r4)
    b       branch_0x801a4d60

branch_0x801a4d50:
    lwz     r4, 0x18(r30)
    addi    r6, r6, 0x1
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
branch_0x801a4d60:
    lwz     r0, 0x10(r30)
    cmpw    r6, r0
    blt+    branch_0x801a4d50
branch_0x801a4d6c:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl init3rdEvent__21TMareEventDepressWallFv
init3rdEvent__21TMareEventDepressWallFv: # 0x801a4d84
    mflr    r0
    stw     r0, 0x4(sp)
    li      r0, 0x7
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    addi    r31, r3, 0x0
    stw     r30, 0x28(sp)
    stw     r0, 0x10(r3)
    li      r0, 0x2b
    stw     r0, 0x14(r31)
    bl      initCommon__21TMareEventDepressWallFv
    lwz     r4, R13Off_m0x5db8(r13)
    addi    r3, r2, R2Off_m0x4038
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r2, R2Off_m0x4038
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x801a4ef4
    stw     r31, 0x68(r3)
    li      r0, 0x960
    li      r6, 0x1
    lwz     r4, 0x18(r31)
    li      r3, 0x4
    li      r5, 0x78
    stw     r0, 0x0(r4)
    b       branch_0x801a4e14

branch_0x801a4e04:
    lwz     r4, 0x18(r31)
    addi    r6, r6, 0x1
    stwx    r5, r4, r3
    addi    r3, r3, 0x4
branch_0x801a4e14:
    lwz     r0, 0x10(r31)
    cmpw    r6, r0
    blt+    branch_0x801a4e04
    lwz     r0, 0x14(r31)
    li      r4, 0x0
    lfs     f0, -0x4030(r2)
    subfic  r0, r0, 0x2b
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lfs     f0, -0x402c(r2)
    subfic  r0, r0, 0x2c
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lwz     r3, 0x20(r31)
    subfic  r0, r0, 0x2d
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lwz     r3, 0x20(r31)
    subfic  r0, r0, 0x2e
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lfs     f0, -0x4050(r2)
    subfic  r0, r0, 0x2f
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lfs     f0, -0x4028(r2)
    subfic  r0, r0, 0x30
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lfs     f0, -0x4024(r2)
    subfic  r0, r0, 0x31
    lwz     r3, 0x20(r31)
    slwi    r0, r0, 2
    stfsx   f0, r3, r0
    lwz     r0, 0x14(r31)
    lwz     r3, 0x1c(r31)
    subfic  r0, r0, 0x2f
    stbx    r4, r3, r0
    lwz     r0, 0x14(r31)
    lwz     r3, 0x1c(r31)
    subfic  r0, r0, 0x30
    stbx    r4, r3, r0
    lwz     r0, 0x14(r31)
    lwz     r3, 0x1c(r31)
    subfic  r0, r0, 0x31
    stbx    r4, r3, r0
branch_0x801a4ef4:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl initCommon__21TMareEventDepressWallFv
initCommon__21TMareEventDepressWallFv: # 0x801a4f0c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1d8(sp)
    stmw    r27, 0x1c4(sp)
    mr      r31, r3
    lwz     r0, 0x10(r3)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x18(r31)
    lwz     r0, 0x10(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x20(r31)
    lwz     r3, 0x10(r31)
    bl      __nwa__FUl
    stw     r3, 0x1c(r31)
    li      r5, 0x0
    li      r3, 0x0
    lfs     f0, -0x4050(r2)
    li      r0, 0x1
    b       branch_0x801a4f78

branch_0x801a4f60:
    lwz     r4, 0x20(r31)
    stfsx   f0, r4, r3
    addi    r3, r3, 0x4
    lwz     r4, 0x1c(r31)
    stbx    r0, r4, r5
    addi    r5, r5, 0x1
branch_0x801a4f78:
    lwz     r28, 0x10(r31)
    cmpw    r5, r28
    blt+    branch_0x801a4f60
    mulli   r3, r28, 0x68
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__17TMapCollisionWarpFv@ha
    addi    r4, r4, __ct__17TMapCollisionWarpFv@l
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0x68
    bl      __construct_new_array
    stw     r3, 0x24(r31)
    lwz     r28, 0x10(r31)
    mulli   r3, r28, 0x60
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__17TMapCollisionMoveFv@ha
    addi    r4, r4, __ct__17TMapCollisionMoveFv@l
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0x60
    bl      __construct_new_array
    lis     r4, unk_8038a628@ha
    stw     r3, 0x28(r31)
    addi    r28, r4, unk_8038a628@l
    li      r27, 0x0
    li      r30, 0x0
    li      r29, 0x0
    b       branch_0x801a50a8

branch_0x801a4ff0:
    lwz     r0, 0x14(r31)
    addi    r5, r28, 0x0
    addi    r3, sp, 0xc0
    crxor   6, 6, 6
    add     r6, r27, r0
    li      r4, 0x100
    bl      snprintf
    lwz     r0, 0x24(r31)
    addi    r4, sp, 0xc0
    li      r5, 0x0
    add     r3, r0, r29
    lwz     r12, 0x0(r3)
    li      r6, 0x0
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(r31)
    add     r3, r0, r29
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x28(r31)
    addi    r4, sp, 0xc0
    li      r5, 0x0
    add     r3, r0, r30
    lwz     r12, 0x0(r3)
    li      r6, 0x0
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x28(r31)
    add     r3, r0, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x28(r31)
    add     r3, r0, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r27, r27, 0x1
    addi    r30, r30, 0x60
    addi    r29, r29, 0x68
branch_0x801a50a8:
    lwz     r0, 0x10(r31)
    cmpw    r27, r0
    blt+    branch_0x801a4ff0
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x30(r31)
    lwz     r28, 0x10(r31)
    mulli   r3, r28, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__Q29JGeometry8TVec3_f_Fv@h
    addi    r29, r4, __ct__Q29JGeometry8TVec3_f_Fv@l
    addi    r4, r29, 0x0
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x34(r31)
    lwz     r28, 0x10(r31)
    mulli   r3, r28, 0xc
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    addi    r4, r29, 0x0
    addi    r7, r28, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x38(r31)
    lwz     r0, 0x10(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x3c(r31)
    lwz     r0, 0x10(r31)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x40(r31)
    li      r6, 0x0
    lwz     r4, R13Off_m0x6328(r13)
    lwz     r3, 0x10(r31)
    lwz     r5, 0x14(r4)
    lwz     r4, 0x14(r31)
    addi    r0, r3, -0x1
    lwz     r3, 0x14(r5)
    add     r0, r4, r0
    lwz     r3, 0x0(r3)
    subfic  r4, r0, 0x43
    cmpwi   r4, 0x0
    lwz     r3, 0x24(r3)
    lwz     r3, 0x20(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x10(r3)
    lwz     r3, 0x14(r3)
    lwz     r7, 0x10(r3)
    ble-    branch_0x801a51e0
    cmpwi   r4, 0x8
    addi    r3, r4, -0x8
    ble-    branch_0x801a51c8
    addi    r0, r3, 0x7
    srwi    r0, r0, 3
    cmpwi   r3, 0x0
    mtctr   r0
    ble-    branch_0x801a51c8
branch_0x801a51a0:
    lwz     r3, 0x14(r7)
    addi    r6, r6, 0x8
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r7, 0x14(r3)
    bdnz+      branch_0x801a51a0
branch_0x801a51c8:
    subf    r0, r6, r4
    cmpw    r6, r4
    mtctr   r0
    bge-    branch_0x801a51e0
branch_0x801a51d8:
    lwz     r7, 0x14(r7)
    bdnz+      branch_0x801a51d8
branch_0x801a51e0:
    lfs     f0, -0x404c(r2)
    li      r8, 0x0
    lfs     f10, -0x4020(r2)
    lfs     f8, -0x4058(r2)
    lfd     f7, -0x4018(r2)
    lfd     f6, -0x4010(r2)
    lfs     f5, -0x4008(r2)
    lfs     f3, -0x4000(r2)
    lfs     f2, -0x4004(r2)
    b       branch_0x801a5328

branch_0x801a5208:
    addi    r0, r3, -0x1
    lwz     r3, 0x30(r31)
    subf    r0, r8, r0
    slwi    r6, r0, 2
    stwx    r7, r3, r6
    mulli   r5, r0, 0xc
    lfs     f4, 0x40(r7)
    lfs     f1, 0x4c(r7)
    addi    r3, r5, 0x4
    lfs     f9, 0x44(r7)
    addi    r0, r5, 0x8
    fadds   f1, f4, f1
    lfs     f4, 0x50(r7)
    lwz     r4, 0x34(r31)
    fadds   f4, f9, f4
    lfs     f11, 0x48(r7)
    lfs     f9, 0x54(r7)
    fmuls   f1, f1, f0
    add     r4, r4, r5
    fadds   f9, f11, f9
    stfs    f1, 0x0(r4)
    fmuls   f1, f4, f0
    fmuls   f4, f9, f0
    stfs    f1, 0x4(r4)
    stfs    f4, 0x8(r4)
    lfs     f4, 0x4c(r7)
    lfs     f1, 0x40(r7)
    lwz     r4, 0x38(r31)
    fsubs   f1, f4, f1
    fdivs   f1, f1, f10
    stfsx   f1, r4, r5
    lfs     f4, 0x50(r7)
    lfs     f1, 0x44(r7)
    lwz     r4, 0x38(r31)
    fsubs   f1, f4, f1
    fdivs   f1, f1, f10
    stfsx   f1, r4, r3
    lfs     f4, 0x54(r7)
    lfs     f1, 0x48(r7)
    lwz     r3, 0x38(r31)
    fsubs   f1, f4, f1
    fdivs   f1, f1, f10
    stfsx   f1, r3, r0
    lwz     r0, 0x38(r31)
    add     r3, r0, r5
    lfs     f4, 0x0(r3)
    lfs     f1, 0x4(r3)
    lfs     f9, 0x8(r3)
    fmuls   f1, f4, f1
    fmuls   f1, f9, f1
    fcmpo   cr0, f1, f8
    fmr     f9, f1
    ble-    branch_0x801a5304
    frsqrte f4, f9
    fmul    f1, f4, f4
    fmul    f4, f7, f4
    fnmsub   f1, f9, f1, f6
    fmul    f1, f4, f1
    fmul    f1, f9, f1
    frsp    f1, f1
    stfs    f1, 0xa0(sp)
    lfs     f1, 0xa0(sp)
    b       branch_0x801a5308

branch_0x801a5304:
    fmr     f1, f9
branch_0x801a5308:
    fmuls   f4, f5, f1
    lwz     r3, 0x3c(r31)
    fmadds  f1, f3, f9, f2
    addi    r8, r8, 0x1
    stfsx   f4, r3, r6
    lwz     r3, 0x40(r31)
    stfsx   f1, r3, r6
    lwz     r7, 0x14(r7)
branch_0x801a5328:
    lwz     r3, 0x10(r31)
    cmpw    r8, r3
    blt+    branch_0x801a5208
    lis     r3, gParticleFlagLoaded@ha
    addi    r3, r3, gParticleFlagLoaded@l
    addi    r28, r3, 0x15b
    lbz     r0, 0x15b(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x801a5370
    lis     r4, unk_8038a648@ha
    lwz     r3, R13Off_m0x5fe0(r13)
    addi    r4, r4, unk_8038a648@l
    li      r5, 0x15b
    bl      load__18JPAResourceManagerFPCcUs
    li      r0, 0x1
    stb     r0, 0x0(r28)
    b       branch_0x801a5370

branch_0x801a536c:
    b       branch_0x801a51c8

branch_0x801a5370:
    lmw     r27, 0x1c4(sp)
    lwz     r0, 0x1dc(sp)
    addi    sp, sp, 0x1d8
    mtlr    r0
    blr


.globl startEvent__21TMareEventDepressWallFv
startEvent__21TMareEventDepressWallFv: # 0x801a5384
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    stw     r29, 0x14(sp)
    stw     r28, 0x10(sp)
    mr      r28, r3
    lwz     r0, 0x44(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x801a53b8
    li      r3, 0x0
    b       branch_0x801a541c

branch_0x801a53b8:
    li      r29, 0x0
    li      r31, 0x0
    li      r30, 0x0
    b       branch_0x801a5404

branch_0x801a53c8:
    lwz     r0, 0x28(r28)
    add     r3, r0, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(r28)
    add     r3, r0, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r29, r29, 0x1
    addi    r31, r31, 0x68
    addi    r30, r30, 0x60
branch_0x801a5404:
    lwz     r0, 0x10(r28)
    cmpw    r29, r0
    blt+    branch_0x801a53c8
    li      r0, 0x1
    stw     r0, 0x44(r28)
    li      r3, 0x1
branch_0x801a541c:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    lwz     r28, 0x10(sp)
    addi    sp, sp, 0x20
    blr


.globl perform__21TMareEventDepressWallFUlPQ26JDrama9TGraphics
perform__21TMareEventDepressWallFUlPQ26JDrama9TGraphics: # 0x801a543c
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    beq-    branch_0x801a5544
    lwz     r0, 0x44(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x801a5498
    bge-    branch_0x801a5478
    cmpwi   r0, 0x0
    beq-    branch_0x801a5544
    bge-    branch_0x801a5488
    b       branch_0x801a5544

branch_0x801a5478:
    cmpwi   r0, 0x4
    beq-    branch_0x801a5518
    bge-    branch_0x801a5544
    b       branch_0x801a5508

branch_0x801a5488:
    mr      r3, r31
    bl      depressing__21TMareEventDepressWallFv
    bl      calcMap__11TMapObjBaseFv
    b       branch_0x801a5544

branch_0x801a5498:
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a5544
    lwz     r3, 0x4c(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801a54fc
    lwz     r0, 0x48(r31)
    lwz     r3, 0x28(r31)
    mulli   r0, r0, 0x60
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x48(r31)
    lwz     r3, 0x24(r31)
    mulli   r0, r0, 0x68
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    li      r0, 0x3
    stw     r0, 0x44(r31)
    b       branch_0x801a5544

branch_0x801a54fc:
    addi    r0, r3, -0x1
    stw     r0, 0x4c(r31)
    b       branch_0x801a5544

branch_0x801a5508:
    mr      r3, r31
    bl      rising__21TMareEventDepressWallFv
    bl      calcMap__11TMapObjBaseFv
    b       branch_0x801a5544

branch_0x801a5518:
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a5544
    lwz     r3, 0x4c(r31)
    cmpwi   r3, 0x0
    bne-    branch_0x801a553c
    li      r0, 0x0
    stw     r0, 0x44(r31)
    b       branch_0x801a5544

branch_0x801a553c:
    addi    r0, r3, -0x1
    stw     r0, 0x4c(r31)
branch_0x801a5544:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl depressing__21TMareEventDepressWallFv
depressing__21TMareEventDepressWallFv: # 0x801a5558
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stmw    r24, 0xb8(sp)
    addi    r29, r3, 0x0
    li      r31, 0x0
    li      r30, 0x0
    li      r28, 0x0
    li      r27, 0x0
    li      r26, 0x0
    li      r25, 0x0
    lfs     f30, -0x4058(r2)
    b       branch_0x801a591c

branch_0x801a5594:
    lwz     r3, 0x30(r29)
    lwzx    r3, r3, r25
    bl      getJointTransX__11TMapObjBaseFP8J3DJoint
    lwz     r3, 0x1c(r29)
    fmr     f31, f1
    lbzx    r0, r3, r30
    cmplwi  r0, 0x0
    beq-    branch_0x801a575c
    lwz     r3, 0x20(r29)
    lfsx    f0, r3, r25
    fcmpo   cr0, f31, f0
    bge-    branch_0x801a5754
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a56b4
    lfs     f0, -0x7a74(r13)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    fadds   f31, f31, f0
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r0, 0x34(r29)
    li      r4, 0x3008
    lwz     r3, R13Off_m0x6044(r13)
    add     r24, r0, r26
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a5634
    addi    r4, r24, 0x0
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801a5634:
    lwz     r0, 0x34(r29)
    li      r4, 0x15b
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x1
    add     r5, r0, r26
    addi    r7, r5, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801a56c0
    lwz     r0, 0x38(r29)
    add     r4, r0, r26
    lfs     f0, 0x0(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
    lwz     r4, 0x3c(r29)
    lfsx    f0, r4, r25
    stfs    f0, 0x1b0(r3)
    lwz     r4, 0x40(r29)
    lfsx    f0, r4, r25
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    b       branch_0x801a56c0

branch_0x801a56b4:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
branch_0x801a56c0:
    lwz     r3, 0x30(r29)
    fmr     f1, f31
    lwzx    r3, r3, r25
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    stfs    f31, 0x84(sp)
    addi    r4, sp, 0x84
    stfs    f30, 0x88(sp)
    stfs    f30, 0x8c(sp)
    lwz     r0, 0x28(r29)
    add     r3, r0, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r29)
    lfsx    f0, r3, r25
    fcmpo   cr0, f31, f0
    cror    2, 1, 2
    bne-    branch_0x801a5908
    lwz     r0, 0x28(r29)
    add     r3, r0, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    stfs    f31, 0xa8(sp)
    addi    r4, sp, 0xa8
    stfs    f30, 0xac(sp)
    stfs    f30, 0xb0(sp)
    lwz     r0, 0x24(r29)
    add     r3, r0, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
    b       branch_0x801a5908

branch_0x801a5754:
    addi    r31, r31, 0x1
    b       branch_0x801a5908

branch_0x801a575c:
    lwz     r3, 0x20(r29)
    lfsx    f0, r3, r25
    fneg    f0, f0
    fcmpo   cr0, f31, f0
    ble-    branch_0x801a5904
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a5860
    lfs     f0, -0x7a74(r13)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    li      r5, -0x1
    fsubs   f31, f31, f0
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
    lwz     r0, 0x34(r29)
    li      r4, 0x3008
    lwz     r3, R13Off_m0x6044(r13)
    add     r24, r0, r26
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a57e0
    addi    r4, r24, 0x0
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801a57e0:
    lwz     r0, 0x34(r29)
    li      r4, 0x15b
    lwz     r3, R13Off_m0x6070(r13)
    li      r6, 0x1
    add     r5, r0, r26
    addi    r7, r5, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801a586c
    lwz     r0, 0x38(r29)
    add     r4, r0, r26
    lfs     f0, 0x0(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
    lwz     r4, 0x3c(r29)
    lfsx    f0, r4, r25
    stfs    f0, 0x1b0(r3)
    lwz     r4, 0x40(r29)
    lfsx    f0, r4, r25
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
    b       branch_0x801a586c

branch_0x801a5860:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
branch_0x801a586c:
    lwz     r3, 0x30(r29)
    fmr     f1, f31
    lwzx    r3, r3, r25
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    stfs    f31, 0x6c(sp)
    addi    r4, sp, 0x6c
    stfs    f30, 0x70(sp)
    stfs    f30, 0x74(sp)
    lwz     r0, 0x28(r29)
    add     r3, r0, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x20(r29)
    lfsx    f0, r3, r25
    fneg    f0, f0
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x801a5908
    lwz     r0, 0x28(r29)
    add     r3, r0, r27
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    stfs    f31, 0x9c(sp)
    addi    r4, sp, 0x9c
    stfs    f30, 0xa0(sp)
    stfs    f30, 0xa4(sp)
    lwz     r0, 0x24(r29)
    add     r3, r0, r28
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    addi    r31, r31, 0x1
    b       branch_0x801a5908

branch_0x801a5904:
    addi    r31, r31, 0x1
branch_0x801a5908:
    addi    r30, r30, 0x1
    addi    r28, r28, 0x68
    addi    r27, r27, 0x60
    addi    r26, r26, 0xc
    addi    r25, r25, 0x4
branch_0x801a591c:
    lwz     r0, 0x10(r29)
    cmpw    r30, r0
    blt+    branch_0x801a5594
    cmpw    r31, r0
    bne-    branch_0x801a5988
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x484d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a5958
    li      r3, 0x484d
    li      r4, 0x0
    li      r5, 0x0
    li      r6, 0x0
    bl      startSoundSystemSE__Q214MSoundSESystem8MSoundSEFUlUlPP8JAISoundUl
branch_0x801a5958:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    li      r0, 0x0
    stw     r0, 0x48(r29)
    li      r0, 0x2
    lwz     r3, 0x48(r29)
    lwz     r4, 0x18(r29)
    slwi    r3, r3, 2
    lwzx    r3, r4, r3
    stw     r3, 0x4c(r29)
    stw     r0, 0x44(r29)
branch_0x801a5988:
    lmw     r24, 0xb8(sp)
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    mtlr    r0
    addi    sp, sp, 0xe8
    blr


.globl rising__21TMareEventDepressWallFv
rising__21TMareEventDepressWallFv: # 0x801a59a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stw     r31, 0x84(sp)
    mr      r31, r3
    stw     r30, 0x80(sp)
    stw     r29, 0x7c(sp)
    lwz     r0, 0x48(r3)
    lwz     r3, 0x30(r3)
    slwi    r0, r0, 2
    lwzx    r3, r3, r0
    bl      getJointTransX__11TMapObjBaseFP8J3DJoint
    lwz     r0, 0x48(r31)
    fmr     f31, f1
    lwz     r5, 0x34(r31)
    li      r4, 0x3008
    mulli   r0, r0, 0xc
    lwz     r3, R13Off_m0x6044(r13)
    add     r30, r5, r0
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a5a1c
    addi    r4, r30, 0x0
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801a5a1c:
    lwz     r30, 0x48(r31)
    li      r4, 0x15b
    lwz     r0, 0x34(r31)
    li      r6, 0x1
    mulli   r29, r30, 0xc
    lwz     r3, R13Off_m0x6070(r13)
    add     r5, r0, r29
    addi    r7, r5, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801a5aa4
    lwz     r0, 0x38(r31)
    slwi    r5, r30, 2
    add     r4, r0, r29
    lfs     f0, 0x0(r4)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x17c(r3)
    lwz     r4, 0x3c(r31)
    lfsx    f0, r4, r5
    stfs    f0, 0x1b0(r3)
    lwz     r4, 0x40(r31)
    lfsx    f0, r4, r5
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x801a5aa4:
    lwz     r3, 0x1c(r31)
    lwz     r29, 0x48(r31)
    lbzx    r0, r3, r29
    cmplwi  r0, 0x0
    beq-    branch_0x801a5bd4
    lfs     f0, -0x4058(r2)
    fcmpo   cr0, f31, f0
    ble-    branch_0x801a5b14
    lfs     f0, -0x7a70(r13)
    slwi    r0, r29, 2
    lwz     r3, 0x30(r31)
    fsubs   f31, f31, f0
    lwzx    r3, r3, r0
    fmr     f1, f31
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    stfs    f31, 0x5c(sp)
    mulli   r0, r29, 0x60
    lfs     f0, -0x4058(r2)
    stfs    f0, 0x60(sp)
    addi    r4, sp, 0x5c
    stfs    f0, 0x64(sp)
    lwz     r3, 0x28(r31)
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a5cec

branch_0x801a5b14:
    stfs    f0, 0x50(sp)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x58(sp)
    lwz     r0, 0x48(r31)
    lwz     r3, 0x28(r31)
    mulli   r0, r0, 0x60
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x48(r31)
    addi    r4, sp, 0x50
    lwz     r3, 0x24(r31)
    mulli   r0, r0, 0x68
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x48(r31)
    lwz     r3, 0x30(r31)
    slwi    r0, r0, 2
    lfs     f1, -0x4058(r2)
    lwzx    r3, r3, r0
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    lwz     r3, 0x48(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x48(r31)
    lwz     r3, 0x48(r31)
    lwz     r0, 0x10(r31)
    cmpw    r3, r0
    bne-    branch_0x801a5bb8
    li      r0, 0x4
    stw     r0, 0x44(r31)
    lwz     r0, R13Off_m0x7a6c(r13)
    stw     r0, 0x4c(r31)
    b       branch_0x801a5cec

branch_0x801a5bb8:
    lwz     r4, 0x18(r31)
    slwi    r3, r3, 2
    li      r0, 0x2
    lwzx    r3, r4, r3
    stw     r3, 0x4c(r31)
    stw     r0, 0x44(r31)
    b       branch_0x801a5cec

branch_0x801a5bd4:
    lfs     f0, -0x4058(r2)
    fcmpo   cr0, f31, f0
    bge-    branch_0x801a5c30
    lfs     f0, -0x7a70(r13)
    slwi    r0, r29, 2
    lwz     r3, 0x30(r31)
    fadds   f31, f31, f0
    lwzx    r3, r3, r0
    fmr     f1, f31
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    stfs    f31, 0x44(sp)
    mulli   r0, r29, 0x60
    lfs     f0, -0x4058(r2)
    stfs    f0, 0x48(sp)
    addi    r4, sp, 0x44
    stfs    f0, 0x4c(sp)
    lwz     r3, 0x28(r31)
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a5cec

branch_0x801a5c30:
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lwz     r0, 0x48(r31)
    lwz     r3, 0x28(r31)
    mulli   r0, r0, 0x60
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x48(r31)
    addi    r4, sp, 0x38
    lwz     r3, 0x24(r31)
    mulli   r0, r0, 0x68
    add     r3, r3, r0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x48(r31)
    lwz     r3, 0x30(r31)
    slwi    r0, r0, 2
    lfs     f1, -0x4058(r2)
    lwzx    r3, r3, r0
    bl      setJointTransX__11TMapObjBaseFP8J3DJointf
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    bl      stop__9RumbleMgrFi
    lwz     r3, 0x48(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x48(r31)
    lwz     r3, 0x48(r31)
    lwz     r0, 0x10(r31)
    cmpw    r3, r0
    bne-    branch_0x801a5cd4
    li      r0, 0x4
    stw     r0, 0x44(r31)
    lwz     r0, R13Off_m0x7a6c(r13)
    stw     r0, 0x4c(r31)
    b       branch_0x801a5cec

branch_0x801a5cd4:
    lwz     r4, 0x18(r31)
    slwi    r3, r3, 2
    li      r0, 0x2
    lwzx    r3, r4, r3
    stw     r3, 0x4c(r31)
    stw     r0, 0x44(r31)
branch_0x801a5cec:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lwz     r31, 0x84(sp)
    mtlr    r0
    lwz     r30, 0x80(sp)
    lwz     r29, 0x7c(sp)
    addi    sp, sp, 0x90
    blr


.globl __ct__18TMareEventWallRockFPCc
__ct__18TMareEventWallRockFPCc: # 0x801a5d0c
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r4, 0x0
    lis     r3, __vvt__18TMareEventWallRock@h
    sth     r4, 0xc(r31)
    addi    r3, r3, __vvt__18TMareEventWallRock@l
    li      r0, 0x7
    stw     r3, 0x0(r31)
    mr      r3, r31
    stw     r0, 0x10(r31)
    stw     r4, 0x14(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl load__18TMareEventWallRockFR20JSUMemoryInputStream
load__18TMareEventWallRockFR20JSUMemoryInputStream: # 0x801a5d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stmw    r27, 0x74(sp)
    mr      r31, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r30, 0x10(r31)
    mulli   r3, r30, 0x12c
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__13TMareWallRockFv@h
    lis     r5, __dt__13TMareWallRockFv@h
    addi    r4, r4, __ct__13TMareWallRockFv@l
    addi    r5, r5, __dt__13TMareWallRockFv@l
    addi    r7, r30, 0x0
    li      r6, 0x12c
    bl      __construct_new_array
    stw     r3, 0x14(r31)
    lis     r3, unk_8038a66c@ha
    addi    r30, r3, unk_8038a66c@l
    lwz     r4, R13Off_m0x5db8(r13)
    mr      r3, r30
    lwz     r29, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r29)
    addi    r4, r3, 0x0
    addi    r3, r29, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r30, 0x0
    mtlr    r12
    blrl
    addi    r29, r3, 0x10
    addi    r28, sp, 0x50
    li      r27, 0x0
    li      r30, 0x0
    b       branch_0x801a5e74

branch_0x801a5e10:
    lwz     r4, 0x14(r31)
    addi    r0, r30, 0xf8
    addi    r3, sp, 0x44
    stwx    r27, r4, r0
    addi    r4, r29, 0x8
    lwz     r0, 0x14(r31)
    add     r0, r0, r30
    stw     r0, 0x68(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x44(sp)
    addi    r3, sp, 0x60
    addi    r4, sp, 0x40
    stw     r0, 0x40(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x60(sp)
    addi    r4, r29, 0x0
    addi    r5, r28, 0x0
    stw     r0, 0x5c(sp)
    addi    r3, sp, 0x4c
    addi    r6, sp, 0x68
    lwz     r0, 0x5c(sp)
    stw     r0, 0x50(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    addi    r27, r27, 0x1
    addi    r30, r30, 0x12c
branch_0x801a5e74:
    lwz     r0, 0x10(r31)
    cmpw    r27, r0
    blt+    branch_0x801a5e10
    lmw     r27, 0x74(sp)
    lwz     r0, 0x8c(sp)
    addi    sp, sp, 0x88
    mtlr    r0
    blr


.globl __dt__13TMareWallRockFv
__dt__13TMareWallRockFv: # 0x801a5e94
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a5ee4
    lis     r3, __vvt__13TMareWallRock@h
    addi    r3, r3, __vvt__13TMareWallRock@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
    extsh.  r0, r31
    ble-    branch_0x801a5ee4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a5ee4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__13TMareWallRockFv
__ct__13TMareWallRockFv: # 0x801a5f00
    mflr    r0
    lis     r4, unk_8038a67c@ha
    stw     r0, 0x4(sp)
    addi    r4, r4, unk_8038a67c@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    bl      __ct__10TLiveActorFPCc
    lis     r3, __vvt__13TMareWallRock@h
    addi    r3, r3, __vvt__13TMareWallRock@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0xf4(r31)
    stw     r0, 0xf8(r31)
    stw     r0, 0x100(r31)
    stw     r0, 0x104(r31)
    stw     r0, 0x108(r31)
    stw     r0, 0x10c(r31)
    lfs     f1, -0x4058(r2)
    stfs    f1, 0x128(r31)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x110(r31)
    stfs    f0, 0x114(r31)
    stfs    f0, 0x118(r31)
    stfs    f1, 0x124(r31)
    stfs    f1, 0x120(r31)
    stfs    f1, 0x11c(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__13TMareWallRockFR20JSUMemoryInputStream
load__13TMareWallRockFR20JSUMemoryInputStream: # 0x801a5f8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      load__Q26JDrama6TActorFR20JSUMemoryInputStream
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl loadAfter__13TMareWallRockFv
loadAfter__13TMareWallRockFv: # 0x801a5fac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x170(sp)
    stw     r31, 0x16c(sp)
    mr      r31, r3
    stw     r30, 0x168(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r3, 0x8
    bl      __nwa__FUl
    stw     r3, 0x10c(r31)
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801a5fec
    mr      r3, r30
    bl      __ct__17TMapCollisionMoveFv
branch_0x801a5fec:
    lwz     r4, 0x10c(r31)
    li      r3, 0x68
    stw     r30, 0x0(r4)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x801a600c
    mr      r3, r30
    bl      __ct__17TMapCollisionWarpFv
branch_0x801a600c:
    lwz     r4, 0x10c(r31)
    lis     r3, unk_8038a68c@ha
    addi    r5, r3, unk_8038a68c@l
    crxor   6, 6, 6
    stw     r30, 0x4(r4)
    addi    r3, sp, 0x64
    lwz     r6, 0xf8(r31)
    li      r4, 0x100
    addi    r6, r6, 0x1
    bl      snprintf
    lwz     r3, 0x10c(r31)
    addi    r6, r31, 0x0
    addi    r4, sp, 0x64
    lwz     r3, 0x0(r3)
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x10c(r31)
    addi    r6, r31, 0x0
    addi    r4, sp, 0x64
    lwz     r3, 0x4(r3)
    li      r5, 0x0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x8(r12)
    mtlr    r12
    blrl
    lwz     r3, 0xf8(r31)
    addi    r3, r3, 0x1
    bl      getBuildingJointObj__11TMapObjBaseFi
    stw     r3, 0x104(r31)
    lwz     r0, 0xf8(r31)
    stw     r0, 0x108(r31)
    lwz     r3, 0x104(r31)
    lfs     f2, -0x404c(r2)
    lwz     r4, 0xc(r3)
    addi    r3, r4, 0x4c
    lfs     f1, 0x4c(r4)
    lfsu    f0, 0x40(r4)
    fadds   f0, f1, f0
    fmuls   f0, f0, f2
    stfs    f0, 0x10(r31)
    lfs     f1, 0x4(r3)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    fmuls   f0, f0, f2
    stfs    f0, 0x14(r31)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    fmuls   f0, f0, f2
    stfs    f0, 0x18(r31)
    lfs     f1, 0x8(r3)
    lfs     f0, 0x8(r4)
    lfs     f2, -0x4020(r2)
    fsubs   f0, f1, f0
    fadds   f0, f2, f0
    stfs    f0, 0xfc(r31)
    lfs     f1, -0x4058(r2)
    lwz     r3, 0x104(r31)
    fmr     f2, f1
    lfs     f3, 0xfc(r31)
    lwz     r3, 0xc(r3)
    bl      moveJoint__11TMapObjBaseFP8J3DJointfff
    lwz     r3, 0x104(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lfs     f1, -0x4058(r2)
    lis     r4, unk_4000022c@h
    addi    r3, r31, 0x0
    fmr     f2, f1
    addi    r4, r4, unk_4000022c@l
    fmr     f3, f1
    li      r5, 0x1
    fmr     f4, f1
    li      r6, 0x0
    bl      initHitActor__9THitActorFUlUsiffff
    mr      r3, r31
    bl      initEffect__13TMareWallRockFv
    lwz     r0, 0x174(sp)
    lwz     r31, 0x16c(sp)
    lwz     r30, 0x168(sp)
    mtlr    r0
    addi    sp, sp, 0x170
    blr


.globl initEffect__13TMareWallRockFv
initEffect__13TMareWallRockFv: # 0x801a616c
    lwz     r4, 0xf8(r3)
    addi    r0, r4, 0x1
    cmplwi  r0, 0x7
    bgtlr-    

    lis     r4, unk_803c25dc@h
    addi    r4, r4, unk_803c25dc@l
    slwi    r0, r0, 2
    lwzx    r0, r4, r0
    mtctr   r0
    bctr       
branch_0x801a6194:
    lfs     f0, -0x3ff8(r2)
    stfs    f0, 0x110(r3)
    lfs     f0, -0x3ff4(r2)
    stfs    f0, 0x114(r3)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3ff0(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3fec(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3fe8(r2)
    stfs    f0, 0x124(r3)
    blr

branch_0x801a61c8:
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x110(r3)
    stfs    f0, 0x114(r3)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3fe4(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3fe0(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3fdc(r2)
    stfs    f0, 0x124(r3)
    blr

branch_0x801a61f4:
    lfs     f0, -0x3fd8(r2)
    stfs    f0, 0x110(r3)
    lfs     f0, -0x3fd4(r2)
    stfs    f0, 0x114(r3)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3fd0(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3fcc(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3fc8(r2)
    stfs    f0, 0x124(r3)
    blr

branch_0x801a6228:
    lfs     f0, -0x3fc4(r2)
    stfs    f0, 0x110(r3)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x114(r3)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3fc0(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3fbc(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3fb8(r2)
    stfs    f0, 0x124(r3)
    blr

branch_0x801a6258:
    lfs     f0, -0x3fb4(r2)
    stfs    f0, 0x110(r3)
    lfs     f0, -0x3fb0(r2)
    stfs    f0, 0x114(r3)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3fac(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3fa8(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3fa4(r2)
    stfs    f0, 0x124(r3)
    blr

branch_0x801a628c:
    lfs     f0, -0x3fa0(r2)
    stfs    f0, 0x110(r3)
    lfs     f0, -0x3f9c(r2)
    stfs    f0, 0x114(r3)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3f98(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3f94(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3f90(r2)
    stfs    f0, 0x124(r3)
    blr

branch_0x801a62c0:
    lfs     f0, -0x3ff8(r2)
    stfs    f0, 0x110(r3)
    stfs    f0, 0x114(r3)
    lfs     f0, -0x3ffc(r2)
    stfs    f0, 0x118(r3)
    lfs     f0, -0x3f8c(r2)
    stfs    f0, 0x11c(r3)
    lfs     f0, -0x3f88(r2)
    stfs    f0, 0x120(r3)
    lfs     f0, -0x3f84(r2)
    stfs    f0, 0x124(r3)
    blr


.globl perform__13TMareWallRockFUlPQ26JDrama9TGraphics
perform__13TMareWallRockFUlPQ26JDrama9TGraphics: # 0x801a62f0
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
    beq-    branch_0x801a6324
    mr      r3, r29
    bl      movement__13TMareWallRockFv
branch_0x801a6324:
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


.globl movement__13TMareWallRockFv
movement__13TMareWallRockFv: # 0x801a6350
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf0(sp)
    stw     r31, 0xec(sp)
    mr      r31, r3
    stw     r30, 0xe8(sp)
    lwz     r0, 0xf4(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x801a63d4
    bge-    branch_0x801a6384
    cmpwi   r0, 0x0
    beq-    branch_0x801a6394
    b       branch_0x801a66c0

branch_0x801a6384:
    cmpwi   r0, 0x4
    beq-    branch_0x801a6588
    bge-    branch_0x801a66c0
    b       branch_0x801a6558

branch_0x801a6394:
    lwz     r3, R13Off_m0x62f0(r13)
    lwz     r0, 0x108(r31)
    lwz     r4, 0x14(r3)
    slwi    r3, r0, 2
    lwz     r0, R13Off_m0x7a80(r13)
    lwzx    r3, r4, r3
    lwz     r3, 0x34(r3)
    cmplw   r3, r0
    bge-    branch_0x801a66c0
    mr      r3, r31
    bl      appear__13TMareWallRockFv
    lwz     r3, R13Off_m0x62f0(r13)
    lwz     r4, 0x108(r31)
    addi    r3, r3, 0x70
    bl      offLayer__22TPollutionCounterLayerFi
    b       branch_0x801a66c0

branch_0x801a63d4:
    lwz     r3, 0x104(r31)
    lwz     r3, 0xc(r3)
    addi    r30, r3, 0x1c
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a6470
    lfs     f1, 0x1c(r30)
    mr      r3, r31
    lfs     f0, -0x7a88(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r30)
    bl      marioIsOn__11TMapObjBaseFPC10TLiveActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801a641c
    lfs     f1, 0x18(r31)
    lfs     f0, -0x7a88(r13)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(r31)
branch_0x801a641c:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x3008
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x801a644c
    addi    r4, r31, 0x10
    li      r3, 0x3008
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x801a644c:
    lwz     r3, R13Off_m0x60f0(r13)
    li      r4, 0x13
    li      r5, -0x1
    li      r6, 0x0
    bl      start__9RumbleMgrFiiPf
    lwz     r3, R13Off_m0x7108(r13)
    li      r4, 0x5
    lfs     f1, -0x404c(r2)
    bl      keepShake__12TCameraShakeF16EnumCamShakeModef
branch_0x801a6470:
    lwz     r3, 0x104(r31)
    lfs     f0, 0x0(r30)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x24(r3)
    lha     r0, 0xc(r30)
    sth     r0, 0x28(r3)
    lha     r0, 0xe(r30)
    sth     r0, 0x2a(r3)
    lha     r0, 0x10(r30)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0x38(r3)
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1c(r30)
    lfs     f0, -0x4058(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801a652c
    lwz     r0, R13Off_m0x7a78(r13)
    stw     r0, 0x100(r31)
    lwz     r3, 0x10c(r31)
    lwz     r3, 0x4(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    li      r0, 0x1
    stw     r0, 0xf4(r31)
    li      r4, 0x13
    lwz     r3, R13Off_m0x60f0(r13)
    bl      stop__9RumbleMgrFi
    b       branch_0x801a66c0

branch_0x801a652c:
    stfs    f0, 0xd8(sp)
    addi    r4, sp, 0xd8
    stfs    f0, 0xdc(sp)
    stfs    f1, 0xe0(sp)
    lwz     r3, 0x10c(r31)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    b       branch_0x801a66c0

branch_0x801a6558:
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a66c0
    lwz     r3, 0x100(r31)
    addi    r0, r3, -0x1
    stw     r0, 0x100(r31)
    lwz     r0, 0x100(r31)
    cmpwi   r0, 0x0
    bgt-    branch_0x801a66c0
    mr      r3, r31
    bl      appear__13TMareWallRockFv
    b       branch_0x801a66c0

branch_0x801a6588:
    lwz     r3, 0x104(r31)
    lwz     r3, 0xc(r3)
    addi    r30, r3, 0x1c
    bl      isDemo__11TMapObjBaseFv
    clrlwi. r0, r3, 24
    bne-    branch_0x801a65d0
    lfs     f1, 0x1c(r30)
    mr      r3, r31
    lfs     f0, -0x7a84(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x1c(r30)
    bl      marioIsOn__11TMapObjBaseFPC10TLiveActor
    clrlwi. r0, r3, 24
    beq-    branch_0x801a65d0
    lfs     f1, 0x18(r31)
    lfs     f0, -0x7a84(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
branch_0x801a65d0:
    lwz     r3, 0x104(r31)
    lfs     f0, 0x0(r30)
    lwz     r3, 0xc(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x24(r3)
    lha     r0, 0xc(r30)
    sth     r0, 0x28(r3)
    lha     r0, 0xe(r30)
    sth     r0, 0x2a(r3)
    lha     r0, 0x10(r30)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x1c(r30)
    stfs    f0, 0x38(r3)
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x1c(r30)
    lfs     f0, 0xfc(r31)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801a6694
    lwz     r3, 0x10c(r31)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x104(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, R13Off_m0x7a7c(r13)
    li      r0, 0x3
    stw     r3, 0x100(r31)
    stw     r0, 0xf4(r31)
    b       branch_0x801a66c0

branch_0x801a6694:
    lfs     f0, -0x4058(r2)
    addi    r4, sp, 0xcc
    stfs    f0, 0xcc(sp)
    stfs    f0, 0xd0(sp)
    stfs    f1, 0xd4(sp)
    lwz     r3, 0x10c(r31)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
branch_0x801a66c0:
    lwz     r0, 0xf4(sp)
    lwz     r31, 0xec(sp)
    lwz     r30, 0xe8(sp)
    mtlr    r0
    addi    sp, sp, 0xf0
    blr


.globl appear__13TMareWallRockFv
appear__13TMareWallRockFv: # 0x801a66d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stfd    f31, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    lwz     r3, 0x10c(r3)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x104(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xfc(r30)
    addi    r4, sp, 0x40
    lfs     f0, -0x4058(r2)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    stfs    f1, 0x48(sp)
    lwz     r3, 0x10c(r30)
    lwz     r3, 0x0(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    addi    r5, r30, 0x11c
    lfs     f31, 0x128(r30)
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r5, 0x0
    li      r4, 0x69
    li      r6, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r31, r3
    beq-    branch_0x801a67d0
    lfs     f1, -0x4058(r2)
    fctiwz  f0, f31
    addi    r6, r31, 0x124
    fctiwz  f1, f1
    stfd    f0, 0x58(sp)
    stfd    f1, 0x60(sp)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x64(sp)
    stfd    f1, 0x50(sp)
    sth     r0, 0x16c(r31)
    lwz     r0, 0x54(sp)
    sth     r3, 0x16e(r31)
    sth     r0, 0x170(r31)
    lha     r3, 0x16c(r31)
    lha     r4, 0x16e(r31)
    lha     r5, 0x170(r31)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lfs     f0, 0x110(r30)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x114(r30)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x118(r30)
    stfs    f0, 0x15c(r31)
branch_0x801a67d0:
    addi    r5, r30, 0x11c
    lwz     r3, R13Off_m0x6070(r13)
    addi    r7, r5, 0x0
    li      r4, 0x1e5
    li      r6, 0x2
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r31, r3
    beq-    branch_0x801a684c
    lfs     f1, -0x4058(r2)
    fctiwz  f0, f31
    addi    r6, r31, 0x124
    fctiwz  f1, f1
    stfd    f0, 0x58(sp)
    stfd    f1, 0x50(sp)
    lwz     r3, 0x5c(sp)
    lwz     r0, 0x54(sp)
    stfd    f1, 0x60(sp)
    sth     r0, 0x16c(r31)
    lwz     r0, 0x64(sp)
    sth     r3, 0x16e(r31)
    sth     r0, 0x170(r31)
    lha     r3, 0x16c(r31)
    lha     r4, 0x16e(r31)
    lha     r5, 0x170(r31)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lfs     f0, 0x110(r30)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x114(r30)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x118(r30)
    stfs    f0, 0x15c(r31)
branch_0x801a684c:
    li      r0, 0x2
    stw     r0, 0xf4(r30)
    lwz     r0, 0x7c(sp)
    lfd     f31, 0x70(sp)
    lwz     r31, 0x6c(sp)
    mtlr    r0
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x78
    blr


.globl __dt__21TMareEventDepressWallFv
__dt__21TMareEventDepressWallFv: # 0x801a6870
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a68c8
    lis     r3, __vvt__21TMareEventDepressWall@h
    addi    r0, r3, __vvt__21TMareEventDepressWall@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801a68b8
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801a68b8:
    extsh.  r0, r31
    ble-    branch_0x801a68c8
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a68c8:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__18TMareEventWallRockFv
__dt__18TMareEventWallRockFv: # 0x801a68e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801a693c
    lis     r3, __vvt__18TMareEventWallRock@h
    addi    r0, r3, __vvt__18TMareEventWallRock@l
    stw     r0, 0x0(r30)
    beq-    branch_0x801a692c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x801a692c:
    extsh.  r0, r31
    ble-    branch_0x801a693c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801a693c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__18TMareEventWallRockFUlPQ26JDrama9TGraphics
perform__18TMareEventWallRockFUlPQ26JDrama9TGraphics: # 0x801a6958
    blr


.globl __sinit_MapEventMare_cpp
__sinit_MapEventMare_cpp: # 0x801a695c
    mflr    r0
    lis     r3, unk_803f8e50@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f8e50@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801a69a4
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801a69a4:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801a69d4
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801a69d4:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6a04
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801a6a04:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6a34
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801a6a34:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6a64
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801a6a64:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6a94
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801a6a94:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6ac4
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801a6ac4:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6af4
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801a6af4:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6b24
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801a6b24:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6b54
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801a6b54:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6b84
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801a6b84:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6bb4
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801a6bb4:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6be4
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801a6be4:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6c14
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801a6c14:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801a6c44
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801a6c44:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801a6c58
unk_801a6c58: # 0x801a6c58
    addi    r3, r3, -0x20
    b       __dt__13TMareWallRockFv


.globl unk_801a6c60
unk_801a6c60: # 0x801a6c60
    addi    r3, r3, -0x20
    b       __dt__19TMareEventBumpyWallFv

