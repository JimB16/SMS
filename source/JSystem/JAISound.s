
.globl __ct__8JAISoundFv
__ct__8JAISoundFv: # 0x8030a388
    lis     r4, 0x803e
    addi    r0, r4, 0x25d0
    stw     r0, 0x40(r3)
    li      r4, 0x0
    li      r0, 0xa
    stw     r4, 0x38(r3)
    stb     r4, 0x1(r3)
    stb     r0, 0x2(r3)
    stw     r4, 0x20(r3)
    blr


.globl initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl: # 0x8030a3b0
    stwu    sp, -0x20(sp)
    lwz     r0, 0xc(r4)
    cmplwi  r0, 0x0
    bne-    branch_0x8030a3d4
    lfs     f0, 0x4(r4)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8030a3d4
    li      r3, 0x2
    b       branch_0x8030a458

branch_0x8030a3d4:
    cmplwi  r0, 0x0
    beq-    branch_0x8030a3f0
    lfs     f0, 0x0(r4)
    fcmpu   cr0, f0, f1
    bne-    branch_0x8030a3f0
    li      r3, 0x2
    b       branch_0x8030a458

branch_0x8030a3f0:
    cmplwi  r5, 0x0
    stfs    f1, 0x0(r4)
    bne-    branch_0x8030a408
    stfs    f1, 0x4(r4)
    li      r3, 0x0
    b       branch_0x8030a458

branch_0x8030a408:
    cmplwi  r5, 0x1
    bne-    branch_0x8030a424
    lfs     f1, 0x4(r4)
    lfs     f0, 0x0(r4)
    fsubs   f0, f1, f0
    stfs    f0, 0x8(r4)
    b       branch_0x8030a450

branch_0x8030a424:
    stw     r5, 0x1c(sp)
    lis     r0, 0x4330
    lfs     f3, 0x4(r4)
    stw     r0, 0x18(sp)
    lfs     f2, 0x0(r4)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x18(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r4)
branch_0x8030a450:
    stw     r5, 0xc(r4)
    li      r3, 0x1
branch_0x8030a458:
    addi    sp, sp, 0x20
    blr


.globl getSeCategoryNumber__8JAISoundFv
getSeCategoryNumber__8JAISoundFv: # 0x8030a460
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x8(r4)
    bl      changeIDToCategory__8JAIBasicFUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getSwBit__8JAISoundFv
getSwBit__8JAISoundFv: # 0x8030a48c
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r4)
    bl      getSoundSwBit__8JAIBasicFPv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl checkSwBit__8JAISoundFUl
checkSwBit__8JAISoundFUl: # 0x8030a4b8
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r4
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r5)
    bl      getSoundSwBit__8JAIBasicFPv
    lwz     r0, 0x1c(sp)
    and     r3, r31, r3
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getInfoPriority__8JAISoundFv
getInfoPriority__8JAISoundFv: # 0x8030a4f4
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r4)
    bl      getSoundPrioity__8JAIBasicFPv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl clearMainSoundPPointer__8JAISoundFv
clearMainSoundPPointer__8JAISoundFv: # 0x8030a520
    lwz     r3, 0x34(r3)
    cmplwi  r3, 0x0
    beqlr-    

    li      r0, 0x0
    stw     r0, 0x0(r3)
    blr


.globl release__8JAISoundFv
release__8JAISoundFv: # 0x8030a538
    lwz     r4, 0x34(r3)
    li      r0, 0x0
    stw     r0, 0x0(r4)
    stw     r0, 0x34(r3)
    blr


.globl stop__8JAISoundFUl
stop__8JAISoundFUl: # 0x8030a54c
    mflr    r0
    addi    r5, r4, 0x0
    stw     r0, 0x4(sp)
    mr      r0, r3
    mr      r4, r0
    stwu    sp, -0x8(sp)
    lwz     r3, -0x5cc0(r13)
    bl      stopSoundHandle__8JAIBasicFP8JAISoundUl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setVolume__8JAISoundFfUlUc
setVolume__8JAISoundFfUlUc: # 0x8030a57c
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r6, 0x8(r3)
    clrrwi  r6, r6, 30
    cmpw    r6, r0
    beq-    branch_0x8030a5e8
    bge-    branch_0x8030a5b8
    lis     r4, 0x8000
    addi    r0, r4, 0x1
    cmpw    r6, r0
    bge-    branch_0x8030a5f4
    b       branch_0x8030a5c4

branch_0x8030a5b8:
    cmpwi   r6, 0x0
    beq-    branch_0x8030a5d4
    b       branch_0x8030a5f4

branch_0x8030a5c4:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setSeqInterVolume__8JAISoundFUcfUl
    b       branch_0x8030a5f4

branch_0x8030a5d4:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    li      r6, 0x0
    bl      setSeInterVolume__8JAISoundFUcfUlUc
    b       branch_0x8030a5f4

branch_0x8030a5e8:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setStreamInterVolume__8JAISoundFUcfUl
branch_0x8030a5f4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPan__8JAISoundFfUlUc
setPan__8JAISoundFfUlUc: # 0x8030a604
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r6, 0x8(r3)
    clrrwi  r6, r6, 30
    cmpw    r6, r0
    beq-    branch_0x8030a670
    bge-    branch_0x8030a640
    lis     r4, 0x8000
    addi    r0, r4, 0x1
    cmpw    r6, r0
    bge-    branch_0x8030a67c
    b       branch_0x8030a64c

branch_0x8030a640:
    cmpwi   r6, 0x0
    beq-    branch_0x8030a65c
    b       branch_0x8030a67c

branch_0x8030a64c:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setSeqInterPan__8JAISoundFUcfUl
    b       branch_0x8030a67c

branch_0x8030a65c:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    li      r6, 0x0
    bl      setSeInterPan__8JAISoundFUcfUlUc
    b       branch_0x8030a67c

branch_0x8030a670:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setStreamInterPan__8JAISoundFUcfUl
branch_0x8030a67c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPitch__8JAISoundFfUlUc
setPitch__8JAISoundFfUlUc: # 0x8030a68c
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r6, 0x8(r3)
    clrrwi  r6, r6, 30
    cmpw    r6, r0
    beq-    branch_0x8030a6f8
    bge-    branch_0x8030a6c8
    lis     r4, 0x8000
    addi    r0, r4, 0x1
    cmpw    r6, r0
    bge-    branch_0x8030a704
    b       branch_0x8030a6d4

branch_0x8030a6c8:
    cmpwi   r6, 0x0
    beq-    branch_0x8030a6e4
    b       branch_0x8030a704

branch_0x8030a6d4:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setSeqInterPitch__8JAISoundFUcfUl
    b       branch_0x8030a704

branch_0x8030a6e4:
    lfs     f2, 0x5b8(rtoc)
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setSeInterPitch__8JAISoundFUcfUlf
    b       branch_0x8030a704

branch_0x8030a6f8:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setStreamInterPitch__8JAISoundFUcfUl
branch_0x8030a704:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFxmix__8JAISoundFfUlUc
setFxmix__8JAISoundFfUlUc: # 0x8030a714
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r6, 0x8(r3)
    clrrwi  r6, r6, 30
    cmpw    r6, r0
    beq-    branch_0x8030a77c
    bge-    branch_0x8030a750
    lis     r4, 0x8000
    addi    r0, r4, 0x1
    cmpw    r6, r0
    bge-    branch_0x8030a77c
    b       branch_0x8030a75c

branch_0x8030a750:
    cmpwi   r6, 0x0
    beq-    branch_0x8030a76c
    b       branch_0x8030a77c

branch_0x8030a75c:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setSeqInterFxmix__8JAISoundFUcfUl
    b       branch_0x8030a77c

branch_0x8030a76c:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    li      r6, 0x0
    bl      setSeInterFxmix__8JAISoundFUcfUlUc
branch_0x8030a77c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDolby__8JAISoundFfUlUc
setDolby__8JAISoundFfUlUc: # 0x8030a78c
    mflr    r0
    addi    r7, r4, 0x0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r6, 0x8(r3)
    clrrwi  r6, r6, 30
    cmpw    r6, r0
    beq-    branch_0x8030a7f4
    bge-    branch_0x8030a7c8
    lis     r4, 0x8000
    addi    r0, r4, 0x1
    cmpw    r6, r0
    bge-    branch_0x8030a7f4
    b       branch_0x8030a7d4

branch_0x8030a7c8:
    cmpwi   r6, 0x0
    beq-    branch_0x8030a7e4
    b       branch_0x8030a7f4

branch_0x8030a7d4:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    bl      setSeqInterDolby__8JAISoundFUcfUl
    b       branch_0x8030a7f4

branch_0x8030a7e4:
    addi    r4, r5, 0x0
    addi    r5, r7, 0x0
    li      r6, 0x0
    bl      setSeInterDolby__8JAISoundFUcfUlUc
branch_0x8030a7f4:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setTempoProportion__8JAISoundFfUl
setTempoProportion__8JAISoundFfUl: # 0x8030a804
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r5, 0x8(r3)
    clrrwi  r6, r5, 30
    cmpw    r6, r0
    beq-    branch_0x8030a84c
    bge-    branch_0x8030a83c
    lis     r5, 0x8000
    addi    r0, r5, 0x1
    cmpw    r6, r0
    bge-    branch_0x8030a84c
    b       branch_0x8030a848

branch_0x8030a83c:
    cmpwi   r6, 0x0
    beq-    branch_0x8030a84c
    b       branch_0x8030a84c

branch_0x8030a848:
    bl      setSeqTempoProportion__8JAISoundFfUl
branch_0x8030a84c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPortData__8JAISoundFUcUs
setPortData__8JAISoundFUcUs: # 0x8030a85c
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x8(sp)
    lwz     r6, 0x8(r3)
    clrrwi  r7, r6, 30
    cmpw    r7, r0
    beq-    branch_0x8030a8b0
    bge-    branch_0x8030a894
    lis     r6, 0x8000
    addi    r0, r6, 0x1
    cmpw    r7, r0
    bge-    branch_0x8030a8b0
    b       branch_0x8030a8a0

branch_0x8030a894:
    cmpwi   r7, 0x0
    beq-    branch_0x8030a8ac
    b       branch_0x8030a8b0

branch_0x8030a8a0:
    li      r6, 0x0
    bl      setSeqPortData__8JAISoundFUcUsUl
    b       branch_0x8030a8b0

branch_0x8030a8ac:
    bl      setSePortData__8JAISoundFUcUs
branch_0x8030a8b0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDistanceVolumeCommon__8JAISoundFfUc
setDistanceVolumeCommon__8JAISoundFfUc: # 0x8030a8c0
    stwu    sp, -0x20(sp)
    lbz     r0, 0x4(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x8030a8e4
    mulli   r0, r0, 0x1c
    lwz     r3, 0x1c(r3)
    add     r3, r3, r0
    lfs     f2, 0x18(r3)
    b       branch_0x8030a924

branch_0x8030a8e4:
    lwz     r6, 0x1c(r3)
    li      r7, 0x1
    lwz     r5, -0x7450(r13)
    lfs     f2, 0x18(r6)
    b       branch_0x8030a918

branch_0x8030a8f8:
    clrlwi  r0, r7, 24
    mulli   r3, r0, 0x1c
    addi    r0, r3, 0x18
    lfsx    f0, r6, r0
    fcmpo   cr0, f0, f2
    bge-    branch_0x8030a914
    fmr     f2, f0
branch_0x8030a914:
    addi    r7, r7, 0x1
branch_0x8030a918:
    clrlwi  r0, r7, 24
    cmplw   r0, r5
    blt+    branch_0x8030a8f8
branch_0x8030a924:
    lfs     f0, -0x746c(r13)
    fcmpo   cr0, f2, f0
    bge-    branch_0x8030a938
    lfs     f1, 0x5bc(rtoc)
    b       branch_0x8030aa0c

branch_0x8030a938:
    clrlwi  r0, r4, 24
    fsubs   f2, f2, f0
    cmplwi  r0, 0x3
    fsubs   f3, f1, f0
    ble-    branch_0x8030a980
    clrlwi  r3, r0, 30
    lfd     f1, 0x5c0(rtoc)
    addi    r0, r3, 0x1
    li      r3, 0x1
    slw     r0, r3, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fdivs   f3, f3, f0
    b       branch_0x8030a9b4

branch_0x8030a980:
    cmplwi  r0, 0x0
    beq-    branch_0x8030a9b4
    clrlwi  r0, r0, 30
    lfd     f1, 0x5c0(rtoc)
    li      r3, 0x1
    slw     r0, r3, r0
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f3, f3, f0
branch_0x8030a9b4:
    fcmpo   cr0, f2, f3
    bge-    branch_0x8030a9f4
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x3
    ble-    branch_0x8030a9d8
    fdivs   f0, f2, f3
    lfs     f1, 0x5bc(rtoc)
    fsubs   f1, f1, f0
    b       branch_0x8030aa0c

branch_0x8030a9d8:
    fdivs   f0, f2, f3
    lfs     f2, 0x5bc(rtoc)
    lfs     f3, -0x5cc4(r13)
    fsubs   f1, f2, f3
    fsubs   f0, f2, f0
    fmadds  f1, f1, f0, f3
    b       branch_0x8030aa0c

branch_0x8030a9f4:
    clrlwi  r0, r4, 24
    cmplwi  r0, 0x3
    ble-    branch_0x8030aa08
    lfs     f1, 0x5b8(rtoc)
    b       branch_0x8030aa0c

branch_0x8030aa08:
    lfs     f1, -0x5cc4(r13)
branch_0x8030aa0c:
    addi    sp, sp, 0x20
    blr


.globl setDistancePanCommon__8JAISoundFv
setDistancePanCommon__8JAISoundFv: # 0x8030aa14
    stwu    sp, -0x20(sp)
    lwz     r0, -0x7450(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x8030ab2c
    lwz     r3, 0x1c(r3)
    lfs     f0, 0x5bc(rtoc)
    lfs     f1, 0x0(r3)
    lfs     f2, 0x8(r3)
    fabs    f1, f1
    fabs    f2, f2
    fcmpo   cr0, f1, f0
    fmr     f4, f1
    fmr     f3, f2
    bge-    branch_0x8030aa5c
    fcmpo   cr0, f2, f0
    bge-    branch_0x8030aa5c
    lfs     f1, 0x5c8(rtoc)
    b       branch_0x8030ab60

branch_0x8030aa5c:
    lfs     f0, -0x7444(r13)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8030aa6c
    fmr     f4, f0
branch_0x8030aa6c:
    fcmpo   cr0, f0, f2
    bge-    branch_0x8030aa78
    fmr     f3, f0
branch_0x8030aa78:
    lfs     f1, 0x5b8(rtoc)
    lfs     f2, 0x0(r3)
    fcmpu   cr0, f1, f2
    bne-    branch_0x8030aa9c
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8030aa9c
    lfs     f0, 0x5c8(rtoc)
    b       branch_0x8030ab24

branch_0x8030aa9c:
    lfs     f0, 0x5b8(rtoc)
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030aad8
    fcmpo   cr0, f4, f3
    cror    2, 1, 2
    bne-    branch_0x8030aad8
    lfs     f2, -0x7440(r13)
    lfs     f1, -0x743c(r13)
    fsubs   f0, f2, f3
    lfs     f3, 0x5bc(rtoc)
    fsubs   f2, f2, f4
    fmuls   f0, f1, f0
    fdivs   f0, f2, f0
    fsubs   f0, f3, f0
    b       branch_0x8030ab24

branch_0x8030aad8:
    lfs     f0, 0x5b8(rtoc)
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8030ab10
    fcmpo   cr0, f4, f3
    cror    2, 1, 2
    bne-    branch_0x8030ab10
    lfs     f2, -0x7440(r13)
    lfs     f1, -0x743c(r13)
    fsubs   f0, f2, f3
    fsubs   f2, f2, f4
    fmuls   f0, f1, f0
    fdivs   f0, f2, f0
    b       branch_0x8030ab24

branch_0x8030ab10:
    lfs     f0, -0x7438(r13)
    lfs     f1, 0x5c8(rtoc)
    fmuls   f0, f0, f3
    fdivs   f0, f2, f0
    fadds   f0, f1, f0
branch_0x8030ab24:
    fmr     f1, f0
    b       branch_0x8030ab60

branch_0x8030ab2c:
    lbz     r0, 0x4(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x8030ab5c
    clrlwi  r0, r0, 31
    lfd     f1, 0x5c0(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f1, f0, f1
    b       branch_0x8030ab60

branch_0x8030ab5c:
    lfs     f1, 0x5c8(rtoc)
branch_0x8030ab60:
    addi    sp, sp, 0x20
    blr


.globl setPositionDopplarCommon__8JAISoundFUl
setPositionDopplarCommon__8JAISoundFUl: # 0x8030ab68
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    lwz     r5, -0x5cc0(r13)
    lwz     r6, 0x1c(r3)
    lwz     r3, 0x8(r5)
    lfs     f12, 0x4(r6)
    lwz     r5, 0x0(r3)
    lwz     r3, 0x4(r3)
    lfs     f2, 0x4(r5)
    lfs     f0, 0x4(r3)
    fsubs   f1, f2, f12
    lfs     f6, 0x10(r6)
    lfs     f11, 0x0(r5)
    fsubs   f7, f2, f0
    lfs     f10, 0x0(r6)
    fsubs   f0, f11, f10
    lfs     f31, 0x8(r5)
    fmuls   f3, f1, f1
    lfs     f13, 0x8(r6)
    lfs     f9, 0x0(r3)
    fsubs   f2, f31, f13
    lfs     f8, 0xc(r6)
    fmadds  f3, f0, f0, f3
    lfs     f5, 0x8(r3)
    lfs     f4, 0x14(r6)
    fmadds  f30, f2, f2, f3
    lfs     f3, 0x5b8(rtoc)
    fsubs   f6, f12, f6
    fsubs   f8, f10, f8
    fsubs   f9, f11, f9
    fsubs   f5, f31, f5
    fsubs   f4, f13, f4
    fsubs   f8, f9, f8
    fcmpo   cr0, f30, f3
    fmr     f10, f30
    fsubs   f7, f7, f6
    fsubs   f9, f5, f4
    ble-    branch_0x8030ac54
    frsqrte f4, f10
    lfd     f6, 0x5d0(rtoc)
    lfd     f5, 0x5d8(rtoc)
    fmul    f3, f4, f4
    fmul    f4, f6, f4
    fnmsub   f3, f10, f3, f5
    fmul    f4, f4, f3
    fmul    f3, f4, f4
    fmul    f4, f6, f4
    fnmsub   f3, f10, f3, f5
    fmul    f4, f4, f3
    fmul    f3, f4, f4
    fmul    f4, f6, f4
    fnmsub   f3, f10, f3, f5
    fmul    f3, f4, f3
    fmul    f3, f10, f3
    frsp    f3, f3
    stfs    f3, 0x14(sp)
    lfs     f4, 0x14(sp)
    b       branch_0x8030ac58

branch_0x8030ac54:
    fmr     f4, f10
branch_0x8030ac58:
    fadds   f5, f1, f7
    lfs     f1, 0x5b8(rtoc)
    fadds   f3, f0, f8
    fadds   f2, f2, f9
    fmuls   f0, f5, f5
    fmadds  f0, f3, f3, f0
    fmadds  f0, f2, f2, f0
    fcmpo   cr0, f0, f1
    fmr     f5, f0
    ble-    branch_0x8030acd0
    frsqrte f1, f5
    lfd     f3, 0x5d0(rtoc)
    lfd     f2, 0x5d8(rtoc)
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f5, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f5, f0, f2
    fmul    f1, f1, f0
    fmul    f0, f1, f1
    fmul    f1, f3, f1
    fnmsub   f0, f5, f0, f2
    fmul    f0, f1, f0
    fmul    f0, f5, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f0, 0x10(sp)
    b       branch_0x8030acd4

branch_0x8030acd0:
    fmr     f0, f5
branch_0x8030acd4:
    srwi    r0, r4, 8
    fsubs   f4, f4, f0
    mullw   r0, r0, r0
    lfd     f2, 0x5b0(rtoc)
    lfs     f3, -0x7434(r13)
    lfs     f5, 0x5bc(rtoc)
    lfs     f0, 0x5e0(rtoc)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    stw     r0, 0x20(sp)
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f3, f1
    fdivs   f1, f4, f1
    fsubs   f1, f5, f1
    fdivs   f1, f5, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x8030ad24
    fmr     f1, f0
    b       branch_0x8030ad34

branch_0x8030ad24:
    lfs     f0, 0x5e4(rtoc)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8030ad34
    fmr     f1, f0
branch_0x8030ad34:
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl setSeqInterVolume__8JAISoundFUcfUl
setSeqInterVolume__8JAISoundFUcfUl: # 0x8030ad44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030ae20
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030ae20
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x114
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030adec
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x1760(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0x1760(r3)
branch_0x8030adec:
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030ae20
    cmpwi   r31, 0x2
    beq-    branch_0x8030ae20
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x4
    stw     r0, 0x8(r3)
branch_0x8030ae20:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeqInterPan__8JAISoundFUcfUl
setSeqInterPan__8JAISoundFUcfUl: # 0x8030ae44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030af20
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030af20
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x254
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030aeec
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x1764(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0x1764(r3)
branch_0x8030aeec:
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030af20
    cmpwi   r31, 0x2
    beq-    branch_0x8030af20
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x8
    stw     r0, 0x8(r3)
branch_0x8030af20:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeqInterPitch__8JAISoundFUcfUl
setSeqInterPitch__8JAISoundFUcfUl: # 0x8030af44
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b020
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b020
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x394
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030afec
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x1768(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0x1768(r3)
branch_0x8030afec:
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b020
    cmpwi   r31, 0x2
    beq-    branch_0x8030b020
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x10
    stw     r0, 0x8(r3)
branch_0x8030b020:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeqInterFxmix__8JAISoundFUcfUl
setSeqInterFxmix__8JAISoundFUcfUl: # 0x8030b044
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b120
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b120
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x4d4
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030b0ec
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x176c(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0x176c(r3)
branch_0x8030b0ec:
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b120
    cmpwi   r31, 0x2
    beq-    branch_0x8030b120
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x20
    stw     r0, 0x8(r3)
branch_0x8030b120:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeqInterDolby__8JAISoundFUcfUl
setSeqInterDolby__8JAISoundFUcfUl: # 0x8030b144
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    mr      r31, r3
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    addi    r28, r4, 0x0
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b25c
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b25c
    lwz     r3, -0x5cc0(r13)
    lbz     r0, 0x14(r3)
    cmplwi  r0, 0x2
    beq-    branch_0x8030b1d4
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    clrlslwi  r4, r28, 24, 4
    lfs     f0, 0x5b8(rtoc)
    addi    r0, r4, 0x618
    lfsx    f1, r3, r0
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030b25c
    fmr     f31, f0
    b       branch_0x8030b1d4


.incbin "./baserom/code/Text_0x80005600.bin", 0x305bd0, 0x8030b1d4 - 0x8030b1d0
branch_0x8030b1d4:
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r29, r28, 24
    fmr     f1, f31
    clrlslwi  r4, r28, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x614
    addi    r3, r31, 0x0
    addi    r5, r30, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r30, r3, 0x0
    cmpwi   r30, 0x1
    bne-    branch_0x8030b228
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x1770(r3)
    slw     r0, r0, r29
    or      r0, r4, r0
    stw     r0, 0x1770(r3)
branch_0x8030b228:
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b25c
    cmpwi   r30, 0x2
    beq-    branch_0x8030b25c
    mr      r3, r31
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x40
    stw     r0, 0x8(r3)
branch_0x8030b25c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeqTempoProportion__8JAISoundFfUl
setSeqTempoProportion__8JAISoundFfUl: # 0x8030b280
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x18(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b314
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b314
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    fmr     f1, f31
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    addi    r5, r31, 0x0
    addi    r4, r4, 0x4
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b314
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x4
    stw     r0, 0x8(r3)
branch_0x8030b314:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl setSeqPortData__8JAISoundFUcUsUl
setSeqPortData__8JAISoundFUcUsUl: # 0x8030b330
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stfd    f31, 0x40(sp)
    stmw    r25, 0x24(sp)
    mr      r30, r3
    addi    r31, r4, 0x0
    addi    r25, r5, 0x0
    addi    r26, r6, 0x0
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b484
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b484
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r28, r31, 24
    lfs     f0, 0x5b8(rtoc)
    clrlslwi  r27, r31, 24, 4
    addi    r29, r27, 0x18
    lfsx    f1, r3, r29
    fcmpu   cr0, f0, f1
    bne-    branch_0x8030b3e8
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x3
    blt-    branch_0x8030b3e8
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    slwi    r4, r28, 16
    addi    r5, sp, 0x14
    bl      readPortApp__18JAISystemInterfaceFUlUlPUs
    lhz     r4, 0x14(sp)
    lis     r0, 0x4330
    lfd     f1, 0x5b0(rtoc)
    mr      r3, r30
    stw     r4, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f31, f0, f1
    bl      getSeqParameter__8JAISoundFv
    stfsx   f31, r3, r29
branch_0x8030b3e8:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r0, r25, 16
    lfd     f1, 0x5b0(rtoc)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    addi    r4, r3, 0x0
    stw     r0, 0x18(sp)
    addi    r0, r27, 0x14
    addi    r3, r30, 0x0
    lfd     f0, 0x18(sp)
    addi    r5, r26, 0x0
    add     r4, r4, r0
    fsubs   f1, f0, f1
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r29, r3, 0x0
    cmpwi   r29, 0x1
    bne-    branch_0x8030b450
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r0, r31, 24
    lwz     r5, 0x175c(r3)
    li      r4, 0x1
    slw     r0, r4, r0
    or      r0, r5, r0
    stw     r0, 0x175c(r3)
branch_0x8030b450:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b484
    cmpwi   r29, 0x2
    beq-    branch_0x8030b484
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x10
    stw     r0, 0x8(r3)
branch_0x8030b484:
    lmw     r25, 0x24(sp)
    lwz     r0, 0x4c(sp)
    lfd     f31, 0x40(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl setWaveReadMode__8JAISoundFll
setWaveReadMode__8JAISoundFll: # 0x8030b49c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b520
    mr      r3, r29
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b520
    lwz     r5, -0x5cc0(r13)
    slwi    r0, r31, 16
    slwi    r4, r31, 2
    lwz     r3, 0x60(r5)
    or      r31, r0, r30
    lwzx    r0, r3, r4
    cmpw    r30, r0
    bne-    branch_0x8030b520
    lwz     r3, 0x64(r5)
    lwzx    r0, r3, r4
    cmpwi   r0, 0x1
    bne-    branch_0x8030b520
    mr      r3, r29
    bl      getSeqParameter__8JAISoundFv
    stw     r31, 0x1758(r3)
branch_0x8030b520:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl setTrackInterruptSwitch__8JAISoundFUcUc
setTrackInterruptSwitch__8JAISoundFUcUc: # 0x8030b53c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b5c4
    mr      r3, r29
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b5c4
    mr      r3, r29
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r4, r30, 24
    addi    r0, r4, 0x1810
    stbx    r31, r3, r0
    mr      r3, r29
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b5c4
    mr      r3, r29
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x80
    stw     r0, 0x8(r3)
branch_0x8030b5c4:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl setTrackPortData__8JAISoundFUcUcUs
setTrackPortData__8JAISoundFUcUcUs: # 0x8030b5e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r26, 0x10(sp)
    mr      r28, r3
    addi    r29, r4, 0x0
    addi    r30, r5, 0x0
    addi    r31, r6, 0x0
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030b6ec
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b6ec
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030b6ec
    lbz     r0, 0x1(r28)
    cmplwi  r0, 0x4
    blt-    branch_0x8030b674
    addi    r3, r28, 0x0
    addi    r4, r29, 0x0
    addi    r5, r30, 0x0
    bl      getTrackPortRoute__8JAISoundFUcUc
    addi    r26, r3, 0x0
    addi    r3, r28, 0x0
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    addi    r4, r26, 0x0
    addi    r5, r31, 0x0
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    b       branch_0x8030b6d0

branch_0x8030b674:
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    lwz     r4, 0x1850(r3)
    mr      r3, r28
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1000
    stw     r0, 0x8(r4)
    bl      getSeqParameter__8JAISoundFv
    clrlwi  r27, r29, 24
    lwz     r4, 0x178c(r3)
    li      r26, 0x1
    slw     r0, r26, r27
    or      r0, r4, r0
    stw     r0, 0x178c(r3)
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    slwi    r4, r27, 2
    addi    r5, r4, 0x1790
    clrlwi  r0, r30, 24
    lwzx    r4, r3, r5
    slw     r0, r26, r0
    or      r0, r4, r0
    stwx    r0, r3, r5
branch_0x8030b6d0:
    mr      r3, r28
    bl      getSeqParameter__8JAISoundFv
    clrlslwi  r4, r29, 24, 5
    clrlslwi  r0, r30, 24, 1
    add     r4, r4, r0
    addi    r0, r4, 0x1354
    sthx    r31, r3, r0
branch_0x8030b6ec:
    lmw     r26, 0x10(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setSeInterVolume__8JAISoundFUcfUlUc
setSeInterVolume__8JAISoundFUcfUlUc: # 0x8030b700
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f1
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x48(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030b8a4
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030b8a4
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    clrlslwi  r4, r31, 24, 4
    addi    r31, r4, 0x124
    add     r31, r3, r31
    clrlwi. r5, r29, 24
    stfs    f31, 0x0(r31)
    beq-    branch_0x8030b854
    lis     r3, 0x19
    lwz     r4, -0x5d80(r13)
    addi    r0, r3, 0x660d
    lfs     f0, 0x5bc(rtoc)
    mullw   r3, r4, r0
    lfs     f2, 0x5e8(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5d80(r13)
    lis     r3, 0x204
    mulli   r4, r5, 0x3e8
    lwz     r0, -0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x30(sp)
    addi    r0, r3, 0x811
    mulhwu  r3, r0, r4
    lfs     f1, 0x30(sp)
    fsubs   f0, f1, f0
    subf    r0, r3, r4
    srwi    r0, r0, 1
    fmuls   f1, f2, f0
    add     r0, r0, r3
    srwi    r29, r0, 6
    bl      __cvt_fp2unsigned
    slwi    r4, r29, 1
    stw     r29, 0x3c(sp)
    divwu   r0, r3, r4
    lfd     f4, 0x5b0(rtoc)
    lfs     f1, 0x5ec(rtoc)
    lfs     f5, 0x0(r31)
    lfs     f0, 0x5bc(rtoc)
    mullw   r0, r0, r4
    subf    r3, r0, r3
    addi    r3, r3, 0x1
    lis     r0, 0x4330
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    lfd     f3, 0x40(sp)
    lfd     f2, 0x38(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fsubs   f2, f3, f2
    fdivs   f3, f2, f1
    fadds   f2, f5, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030b838
    stfs    f0, 0x0(r31)
    b       branch_0x8030b854

branch_0x8030b838:
    lfs     f1, 0x5b8(rtoc)
    fsubs   f0, f1, f3
    fcmpo   cr0, f5, f0
    bge-    branch_0x8030b850
    stfs    f1, 0x0(r31)
    b       branch_0x8030b854

branch_0x8030b850:
    stfs    f2, 0x0(r31)
branch_0x8030b854:
    lfs     f0, 0x4(r31)
    lfs     f1, 0x0(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030b8a4
    cmplwi  r30, 0x0
    bne-    branch_0x8030b874
    stfs    f1, 0x4(r31)
    b       branch_0x8030b8a4

branch_0x8030b874:
    stw     r30, 0x3c(sp)
    lis     r0, 0x4330
    stw     r30, 0xc(r31)
    stw     r0, 0x38(sp)
    lfs     f3, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x38(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r31)
branch_0x8030b8a4:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl setSeInterPan__8JAISoundFUcfUlUc
setSeInterPan__8JAISoundFUcfUlUc: # 0x8030b8c8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f1
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x48(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030ba6c
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030ba6c
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    clrlslwi  r4, r31, 24, 4
    addi    r31, r4, 0x1a4
    add     r31, r3, r31
    clrlwi. r5, r29, 24
    stfs    f31, 0x0(r31)
    beq-    branch_0x8030ba1c
    lis     r3, 0x19
    lwz     r4, -0x5d80(r13)
    addi    r0, r3, 0x660d
    lfs     f0, 0x5bc(rtoc)
    mullw   r3, r4, r0
    lfs     f2, 0x5e8(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5d80(r13)
    lis     r3, 0x204
    mulli   r4, r5, 0x3e8
    lwz     r0, -0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x30(sp)
    addi    r0, r3, 0x811
    mulhwu  r3, r0, r4
    lfs     f1, 0x30(sp)
    fsubs   f0, f1, f0
    subf    r0, r3, r4
    srwi    r0, r0, 1
    fmuls   f1, f2, f0
    add     r0, r0, r3
    srwi    r29, r0, 6
    bl      __cvt_fp2unsigned
    slwi    r4, r29, 1
    stw     r29, 0x3c(sp)
    divwu   r0, r3, r4
    lfd     f4, 0x5b0(rtoc)
    lfs     f1, 0x5ec(rtoc)
    lfs     f5, 0x0(r31)
    lfs     f0, 0x5bc(rtoc)
    mullw   r0, r0, r4
    subf    r3, r0, r3
    addi    r3, r3, 0x1
    lis     r0, 0x4330
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    lfd     f3, 0x40(sp)
    lfd     f2, 0x38(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fsubs   f2, f3, f2
    fdivs   f3, f2, f1
    fadds   f2, f5, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030ba00
    stfs    f0, 0x0(r31)
    b       branch_0x8030ba1c

branch_0x8030ba00:
    lfs     f1, 0x5b8(rtoc)
    fsubs   f0, f1, f3
    fcmpo   cr0, f5, f0
    bge-    branch_0x8030ba18
    stfs    f1, 0x0(r31)
    b       branch_0x8030ba1c

branch_0x8030ba18:
    stfs    f2, 0x0(r31)
branch_0x8030ba1c:
    lfs     f0, 0x4(r31)
    lfs     f1, 0x0(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030ba6c
    cmplwi  r30, 0x0
    bne-    branch_0x8030ba3c
    stfs    f1, 0x4(r31)
    b       branch_0x8030ba6c

branch_0x8030ba3c:
    stw     r30, 0x3c(sp)
    lis     r0, 0x4330
    stw     r30, 0xc(r31)
    stw     r0, 0x38(sp)
    lfs     f3, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x38(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r31)
branch_0x8030ba6c:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl setSeInterFxmix__8JAISoundFUcfUlUc
setSeInterFxmix__8JAISoundFUcfUlUc: # 0x8030ba90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f1
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x48(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030bc34
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030bc34
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    clrlslwi  r4, r31, 24, 4
    addi    r31, r4, 0x2a4
    add     r31, r3, r31
    clrlwi. r5, r29, 24
    stfs    f31, 0x0(r31)
    beq-    branch_0x8030bbe4
    lis     r3, 0x19
    lwz     r4, -0x5d80(r13)
    addi    r0, r3, 0x660d
    lfs     f0, 0x5bc(rtoc)
    mullw   r3, r4, r0
    lfs     f2, 0x5e8(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5d80(r13)
    lis     r3, 0x204
    mulli   r4, r5, 0x3e8
    lwz     r0, -0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x30(sp)
    addi    r0, r3, 0x811
    mulhwu  r3, r0, r4
    lfs     f1, 0x30(sp)
    fsubs   f0, f1, f0
    subf    r0, r3, r4
    srwi    r0, r0, 1
    fmuls   f1, f2, f0
    add     r0, r0, r3
    srwi    r29, r0, 6
    bl      __cvt_fp2unsigned
    slwi    r4, r29, 1
    stw     r29, 0x3c(sp)
    divwu   r0, r3, r4
    lfd     f4, 0x5b0(rtoc)
    lfs     f1, 0x5ec(rtoc)
    lfs     f5, 0x0(r31)
    lfs     f0, 0x5bc(rtoc)
    mullw   r0, r0, r4
    subf    r3, r0, r3
    addi    r3, r3, 0x1
    lis     r0, 0x4330
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    lfd     f3, 0x40(sp)
    lfd     f2, 0x38(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fsubs   f2, f3, f2
    fdivs   f3, f2, f1
    fadds   f2, f5, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030bbc8
    stfs    f0, 0x0(r31)
    b       branch_0x8030bbe4

branch_0x8030bbc8:
    lfs     f1, 0x5b8(rtoc)
    fsubs   f0, f1, f3
    fcmpo   cr0, f5, f0
    bge-    branch_0x8030bbe0
    stfs    f1, 0x0(r31)
    b       branch_0x8030bbe4

branch_0x8030bbe0:
    stfs    f2, 0x0(r31)
branch_0x8030bbe4:
    lfs     f0, 0x4(r31)
    lfs     f1, 0x0(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030bc34
    cmplwi  r30, 0x0
    bne-    branch_0x8030bc04
    stfs    f1, 0x4(r31)
    b       branch_0x8030bc34

branch_0x8030bc04:
    stw     r30, 0x3c(sp)
    lis     r0, 0x4330
    stw     r30, 0xc(r31)
    stw     r0, 0x38(sp)
    lfs     f3, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x38(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r31)
branch_0x8030bc34:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl setSeInterDolby__8JAISoundFUcfUlUc
setSeInterDolby__8JAISoundFUcfUlUc: # 0x8030bc58
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    fmr     f31, f1
    stw     r31, 0x54(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r6, 0x0
    stw     r28, 0x48(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030bdfc
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030bdfc
    mr      r3, r28
    bl      getSeParameter__8JAISoundFv
    clrlslwi  r4, r31, 24, 4
    addi    r31, r4, 0x3a4
    add     r31, r3, r31
    clrlwi. r5, r29, 24
    stfs    f31, 0x0(r31)
    beq-    branch_0x8030bdac
    lis     r3, 0x19
    lwz     r4, -0x5d80(r13)
    addi    r0, r3, 0x660d
    lfs     f0, 0x5bc(rtoc)
    mullw   r3, r4, r0
    lfs     f2, 0x5e8(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5d80(r13)
    lis     r3, 0x204
    mulli   r4, r5, 0x3e8
    lwz     r0, -0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x30(sp)
    addi    r0, r3, 0x811
    mulhwu  r3, r0, r4
    lfs     f1, 0x30(sp)
    fsubs   f0, f1, f0
    subf    r0, r3, r4
    srwi    r0, r0, 1
    fmuls   f1, f2, f0
    add     r0, r0, r3
    srwi    r29, r0, 6
    bl      __cvt_fp2unsigned
    slwi    r4, r29, 1
    stw     r29, 0x3c(sp)
    divwu   r0, r3, r4
    lfd     f4, 0x5b0(rtoc)
    lfs     f1, 0x5ec(rtoc)
    lfs     f5, 0x0(r31)
    lfs     f0, 0x5bc(rtoc)
    mullw   r0, r0, r4
    subf    r3, r0, r3
    addi    r3, r3, 0x1
    lis     r0, 0x4330
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    lfd     f3, 0x40(sp)
    lfd     f2, 0x38(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fsubs   f2, f3, f2
    fdivs   f3, f2, f1
    fadds   f2, f5, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030bd90
    stfs    f0, 0x0(r31)
    b       branch_0x8030bdac

branch_0x8030bd90:
    lfs     f1, 0x5b8(rtoc)
    fsubs   f0, f1, f3
    fcmpo   cr0, f5, f0
    bge-    branch_0x8030bda8
    stfs    f1, 0x0(r31)
    b       branch_0x8030bdac

branch_0x8030bda8:
    stfs    f2, 0x0(r31)
branch_0x8030bdac:
    lfs     f0, 0x4(r31)
    lfs     f1, 0x0(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030bdfc
    cmplwi  r30, 0x0
    bne-    branch_0x8030bdcc
    stfs    f1, 0x4(r31)
    b       branch_0x8030bdfc

branch_0x8030bdcc:
    stw     r30, 0x3c(sp)
    lis     r0, 0x4330
    stw     r30, 0xc(r31)
    stw     r0, 0x38(sp)
    lfs     f3, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x38(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r31)
branch_0x8030bdfc:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl setSeInterPitch__8JAISoundFUcfUlf
setSeInterPitch__8JAISoundFUcfUlf: # 0x8030be20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f2
    stfd    f30, 0x58(sp)
    fmr     f30, f1
    stw     r31, 0x54(sp)
    mr      r31, r3
    stw     r30, 0x50(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x4c(sp)
    addi    r29, r4, 0x0
    lwz     r0, 0x8(r3)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030bfb8
    mr      r3, r31
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030bfb8
    mr      r3, r31
    bl      getSeParameter__8JAISoundFv
    clrlslwi  r4, r29, 24, 4
    addi    r31, r4, 0x224
    add     r31, r3, r31
    stfs    f30, 0x0(r31)
    lfs     f0, 0x5b8(rtoc)
    fcmpu   cr0, f0, f31
    beq-    branch_0x8030bf68
    lfs     f0, 0x5ec(rtoc)
    fmuls   f1, f0, f31
    bl      __cvt_fp2unsigned
    lis     r4, 0x19
    lwz     r5, -0x5d80(r13)
    addi    r0, r4, 0x660d
    lfs     f0, 0x5bc(rtoc)
    mullw   r4, r5, r0
    lfs     f2, 0x5e8(rtoc)
    addis   r4, r4, 0x3c6f
    subi    r0, r4, 0xca1
    stw     r0, -0x5d80(r13)
    mr      r29, r3
    lwz     r0, -0x5d80(r13)
    srwi    r0, r0, 9
    oris    r0, r0, 0x3f80
    stw     r0, 0x30(sp)
    lfs     f1, 0x30(sp)
    fsubs   f0, f1, f0
    fmuls   f1, f2, f0
    bl      __cvt_fp2unsigned
    slwi    r4, r29, 1
    stw     r29, 0x3c(sp)
    divwu   r0, r3, r4
    lfd     f4, 0x5b0(rtoc)
    lfs     f1, 0x5ec(rtoc)
    lfs     f5, 0x0(r31)
    lfs     f0, 0x5f0(rtoc)
    mullw   r0, r0, r4
    subf    r3, r0, r3
    addi    r3, r3, 0x1
    lis     r0, 0x4330
    stw     r3, 0x44(sp)
    stw     r0, 0x40(sp)
    stw     r0, 0x38(sp)
    lfd     f3, 0x40(sp)
    lfd     f2, 0x38(sp)
    fsubs   f3, f3, f4
    fsubs   f2, f2, f4
    fsubs   f2, f3, f2
    fdivs   f3, f2, f1
    fadds   f2, f5, f3
    fcmpo   cr0, f2, f0
    ble-    branch_0x8030bf4c
    stfs    f0, 0x0(r31)
    b       branch_0x8030bf68

branch_0x8030bf4c:
    lfs     f1, 0x5e0(rtoc)
    fsubs   f0, f1, f3
    fcmpo   cr0, f5, f0
    bge-    branch_0x8030bf64
    stfs    f1, 0x0(r31)
    b       branch_0x8030bf68

branch_0x8030bf64:
    stfs    f2, 0x0(r31)
branch_0x8030bf68:
    lfs     f0, 0x4(r31)
    lfs     f1, 0x0(r31)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030bfb8
    cmplwi  r30, 0x0
    bne-    branch_0x8030bf88
    stfs    f1, 0x4(r31)
    b       branch_0x8030bfb8

branch_0x8030bf88:
    stw     r30, 0x3c(sp)
    lis     r0, 0x4330
    stw     r30, 0xc(r31)
    stw     r0, 0x38(sp)
    lfs     f3, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x38(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r31)
branch_0x8030bfb8:
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x68
    blr


.globl setSePortData__8JAISoundFUcUs
setSePortData__8JAISoundFUcUs: # 0x8030bfdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stmw    r27, 0x14(sp)
    mr      r30, r3
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    lwz     r0, 0x8(r3)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030c148
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030c148
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x1
    bne-    branch_0x8030c054
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    clrlwi  r27, r28, 24
    clrlslwi  r0, r28, 24, 1
    sthx    r29, r3, r0
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    li      r0, 0x1
    lhz     r4, 0x20(r3)
    slw     r0, r0, r27
    or      r0, r4, r0
    sth     r0, 0x20(r3)
    b       branch_0x8030c148

branch_0x8030c054:
    lwz     r3, -0x5cc0(r13)
    lbz     r31, 0x0(r30)
    lwz     r30, 0x38(r3)
    lwz     r0, 0x8(r30)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030c148
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030c148
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030c148
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x4
    blt-    branch_0x8030c0d4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    addi    r5, r28, 0x0
    bl      getTrackPortRoute__8JAISoundFUcUc
    addi    r27, r3, 0x0
    addi    r3, r30, 0x0
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    addi    r4, r27, 0x0
    addi    r5, r29, 0x0
    bl      writePortApp__18JAISystemInterfaceFUlUlUs
    b       branch_0x8030c12c

branch_0x8030c0d4:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r4, 0x1850(r3)
    mr      r3, r30
    lwz     r0, 0x8(r4)
    ori     r0, r0, 0x1000
    stw     r0, 0x8(r4)
    bl      getSeqParameter__8JAISoundFv
    li      r27, 0x1
    lwz     r4, 0x178c(r3)
    slw     r0, r27, r31
    or      r0, r4, r0
    stw     r0, 0x178c(r3)
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    slwi    r4, r31, 2
    addi    r5, r4, 0x1790
    clrlwi  r0, r28, 24
    lwzx    r4, r3, r5
    slw     r0, r27, r0
    or      r0, r4, r0
    stwx    r0, r3, r5
branch_0x8030c12c:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    slwi    r4, r31, 5
    clrlslwi  r0, r28, 24, 1
    add     r4, r4, r0
    addi    r0, r4, 0x1354
    sthx    r29, r3, r0
branch_0x8030c148:
    lmw     r27, 0x14(sp)
    lwz     r0, 0x2c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl setSeDistanceParameters__8JAISoundFv
setSeDistanceParameters__8JAISoundFv: # 0x8030c15c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    mr      r30, r3
    lbz     r0, 0x1(r3)
    lbz     r31, 0x5(r3)
    cmplwi  r0, 0x2
    bne-    branch_0x8030c188
    li      r31, 0x0
branch_0x8030c188:
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0xc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x14(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    lwz     r12, 0x24(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 21, 21
    bne-    branch_0x8030c2a0
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x18(r30)
    lwz     r12, 0x4(r3)
    lwz     r12, 0x18(r12)
    mtlr    r12
    blrl
    lwz     r3, 0x8(r30)
    lis     r0, 0xc000
    clrrwi  r4, r3, 30
    cmpw    r4, r0
    beq-    branch_0x8030c2a0
    bge-    branch_0x8030c26c
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x8030c2a0
    b       branch_0x8030c278

branch_0x8030c26c:
    cmpwi   r4, 0x0
    beq-    branch_0x8030c28c
    b       branch_0x8030c2a0

branch_0x8030c278:
    addi    r3, r30, 0x0
    li      r4, 0x2
    li      r5, 0x0
    bl      setSeqInterFxmix__8JAISoundFUcfUl
    b       branch_0x8030c2a0

branch_0x8030c28c:
    addi    r3, r30, 0x0
    li      r4, 0x2
    li      r5, 0x0
    li      r6, 0x0
    bl      setSeInterFxmix__8JAISoundFUcfUlUc
branch_0x8030c2a0:
    mr      r3, r30
    lwz     r12, 0x40(r30)
    mr      r4, r31
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl setSeDistanceVolume__8JAISoundFUc
setSeDistanceVolume__8JAISoundFUc: # 0x8030c2d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x8030c338
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    lwz     r12, 0x40(r30)
    rlwinm  r0, r3, 0, 13, 15
    lfs     f1, -0x7470(r13)
    mr      r3, r30
    lwz     r12, 0x2c(r12)
    extrwi  r4, r0, 8, 8
    mtlr    r12
    blrl
    fmr     f31, f1
    b       branch_0x8030c33c

branch_0x8030c338:
    lfs     f31, 0x5bc(rtoc)
branch_0x8030c33c:
    lwz     r0, 0x8(r30)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030c3b4
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030c3b4
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    stfsu   f31, 0x164(r3)
    lfs     f0, 0x4(r3)
    lfs     f1, 0x0(r3)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030c3b4
    clrlwi. r4, r31, 24
    bne-    branch_0x8030c384
    stfs    f1, 0x4(r3)
    b       branch_0x8030c3b4

branch_0x8030c384:
    stw     r4, 0x1c(sp)
    lis     r0, 0x4330
    stw     r4, 0xc(r3)
    stw     r0, 0x18(sp)
    lfs     f3, 0x0(r3)
    lfs     f2, 0x4(r3)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x18(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r3)
branch_0x8030c3b4:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeDistancePan__8JAISoundFUc
setSeDistancePan__8JAISoundFUc: # 0x8030c3d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r4
    stw     r30, 0x20(sp)
    mr      r30, r3
    lwz     r12, 0x40(r30)
    lwz     r12, 0x30(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8(r30)
    fmr     f31, f1
    clrrwi. r0, r0, 30
    bne-    branch_0x8030c47c
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030c47c
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    stfsu   f31, 0x1e4(r3)
    lfs     f0, 0x4(r3)
    lfs     f1, 0x0(r3)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030c47c
    clrlwi. r4, r31, 24
    bne-    branch_0x8030c44c
    stfs    f1, 0x4(r3)
    b       branch_0x8030c47c

branch_0x8030c44c:
    stw     r4, 0x1c(sp)
    lis     r0, 0x4330
    stw     r4, 0xc(r3)
    stw     r0, 0x18(sp)
    lfs     f3, 0x0(r3)
    lfs     f2, 0x4(r3)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x18(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r3)
branch_0x8030c47c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeDistancePitch__8JAISoundFUc
setSeDistancePitch__8JAISoundFUc: # 0x8030c498
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    mr      r30, r3
    lfs     f31, 0x5bc(rtoc)
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 27, 27
    beq-    branch_0x8030c548
    lis     r3, 0x19
    lwz     r4, -0x5d80(r13)
    addi    r0, r3, 0x660d
    lfs     f4, 0x5bc(rtoc)
    mullw   r3, r4, r0
    lfs     f3, 0x5f0(rtoc)
    lfd     f2, 0x5c0(rtoc)
    lfs     f0, 0x5f4(rtoc)
    addis   r3, r3, 0x3c6f
    subi    r0, r3, 0xca1
    stw     r0, -0x5d80(r13)
    lis     r0, 0x4330
    lwz     r3, -0x5d80(r13)
    srwi    r3, r3, 9
    oris    r3, r3, 0x3f80
    stw     r3, 0x24(sp)
    lfs     f1, 0x24(sp)
    fsubs   f1, f1, f4
    fmuls   f1, f3, f1
    fctiwz  f1, f1
    stfd    f1, 0x38(sp)
    lwz     r3, 0x3c(sp)
    clrlwi  r3, r3, 28
    xoris   r3, r3, 0x8000
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    fsubs   f31, f4, f0
branch_0x8030c548:
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 17, 17
    beq-    branch_0x8030c5c0
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 30, 30
    bne-    branch_0x8030c5c0
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 22, 23
    bne-    branch_0x8030c5c0
    lwz     r0, -0x7450(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x8030c5c0
    lwz     r3, 0x1c(r30)
    lfs     f1, -0x7470(r13)
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    bne-    branch_0x8030c5b4
    lfs     f0, -0x742c(r13)
    fadds   f31, f31, f0
    b       branch_0x8030c5c0

branch_0x8030c5b4:
    fdivs   f0, f0, f1
    lfs     f1, -0x742c(r13)
    fmadds  f31, f1, f0, f31
branch_0x8030c5c0:
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 24, 25
    beq-    branch_0x8030c5fc
    lbz     r3, 0x3(r30)
    lis     r0, 0x4330
    lfd     f2, 0x5b0(rtoc)
    stw     r3, 0x34(sp)
    lfs     f0, 0x5f4(rtoc)
    stw     r0, 0x30(sp)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f2
    fdivs   f0, f1, f0
    fadds   f31, f31, f0
branch_0x8030c5fc:
    lwz     r0, 0x8(r30)
    clrrwi. r0, r0, 30
    bne-    branch_0x8030c674
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030c674
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    stfsu   f31, 0x264(r3)
    lfs     f0, 0x4(r3)
    lfs     f1, 0x0(r3)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030c674
    clrlwi. r4, r31, 24
    bne-    branch_0x8030c644
    stfs    f1, 0x4(r3)
    b       branch_0x8030c674

branch_0x8030c644:
    stw     r4, 0x34(sp)
    lis     r0, 0x4330
    stw     r4, 0xc(r3)
    stw     r0, 0x30(sp)
    lfs     f3, 0x0(r3)
    lfs     f2, 0x4(r3)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x30(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r3)
branch_0x8030c674:
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lwz     r31, 0x44(sp)
    mtlr    r0
    lwz     r30, 0x40(sp)
    addi    sp, sp, 0x50
    blr


.globl setSePositionDopplar__8JAISoundFv
setSePositionDopplar__8JAISoundFv: # 0x8030c690
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    mr      r30, r3
    lbz     r0, 0x1(r3)
    lwz     r31, -0x745c(r13)
    cmplwi  r0, 0x2
    bne-    branch_0x8030c6c0
    li      r31, 0x1
branch_0x8030c6c0:
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r30)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r4, r3, 0, 22, 23
    beq-    branch_0x8030c770
    lwz     r0, -0x7450(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x8030c770
    lwz     r12, 0x40(r30)
    mr      r3, r30
    lwz     r12, 0x28(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x8(r30)
    fmr     f31, f1
    clrrwi. r0, r0, 30
    bne-    branch_0x8030c770
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030c770
    mr      r3, r30
    bl      getSeParameter__8JAISoundFv
    stfsu   f31, 0x234(r3)
    lfs     f0, 0x4(r3)
    lfs     f1, 0x0(r3)
    fcmpu   cr0, f0, f1
    beq-    branch_0x8030c770
    cmplwi  r31, 0x0
    bne-    branch_0x8030c740
    stfs    f1, 0x4(r3)
    b       branch_0x8030c770

branch_0x8030c740:
    stw     r31, 0x1c(sp)
    lis     r0, 0x4330
    stw     r31, 0xc(r3)
    stw     r0, 0x18(sp)
    lfs     f3, 0x0(r3)
    lfs     f2, 0x4(r3)
    lfd     f1, 0x5b0(rtoc)
    lfd     f0, 0x18(sp)
    fsubs   f2, f3, f2
    fsubs   f0, f0, f1
    fdivs   f0, f2, f0
    stfs    f0, 0x8(r3)
branch_0x8030c770:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeDistanceFxmix__8JAISoundFUc
setSeDistanceFxmix__8JAISoundFUc: # 0x8030c78c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r4
    stw     r29, 0x24(sp)
    mr      r29, r3
    lhz     r31, -0x5cd0(r13)
    lwz     r3, -0x5cc0(r13)
    lwz     r4, 0x3c(r29)
    bl      getSoundSwBit__8JAIBasicFPv
    rlwinm. r0, r3, 0, 29, 29
    bne-    branch_0x8030c81c
    lwz     r0, -0x7450(r13)
    cmplwi  r0, 0x1
    bne-    branch_0x8030c81c
    lwz     r3, 0x1c(r29)
    lfs     f1, -0x7470(r13)
    lfs     f0, 0x18(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x8030c818
    fdivs   f0, f0, f1
    lhz     r3, -0x74cc(r13)
    lis     r0, 0x4330
    lfd     f2, 0x5b0(rtoc)
    stw     r3, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f1, 0x18(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r31, 0x14(sp)
    b       branch_0x8030c81c

branch_0x8030c818:
    lhz     r31, -0x74cc(r13)
branch_0x8030c81c:
    clrlwi  r0, r31, 16
    cmplwi  r0, 0x7f
    ble-    branch_0x8030c82c
    li      r31, 0x7f
branch_0x8030c82c:
    clrlwi  r0, r31, 24
    lfd     f2, 0x5b0(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f0, 0x5f8(rtoc)
    mr      r3, r29
    stw     r0, 0x10(sp)
    clrlwi  r5, r30, 24
    lfd     f1, 0x10(sp)
    li      r4, 0x4
    li      r6, 0x0
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setSeInterFxmix__8JAISoundFUcfUlUc
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl setSeDistanceFir__8JAISoundFUc
setSeDistanceFir__8JAISoundFUc: # 0x8030c880
    blr


.globl setSeDistanceDolby__8JAISoundFUc
setSeDistanceDolby__8JAISoundFUc: # 0x8030c884
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r0, 0x24(r3)
    lwz     r5, 0x1c(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030c8b0
    lfs     f1, 0x8(r5)
    lfs     f2, -0x7464(r13)
    fcmpo   cr0, f1, f2
    bge-    branch_0x8030c8b8
branch_0x8030c8b0:
    lfs     f0, 0x5b8(rtoc)
    b       branch_0x8030c900

branch_0x8030c8b8:
    lfs     f0, 0x5b8(rtoc)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8030c8d8
    fsubs   f0, f2, f1
    lfs     f1, -0x7468(r13)
    fmuls   f0, f1, f0
    fdivs   f0, f0, f2
    b       branch_0x8030c900

branch_0x8030c8d8:
    lfs     f0, -0x7460(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8030c8fc
    fdivs   f0, f1, f0
    lfs     f2, -0x7468(r13)
    lfs     f1, 0x5f8(rtoc)
    fsubs   f1, f1, f2
    fmadds  f0, f1, f0, f2
    b       branch_0x8030c900

branch_0x8030c8fc:
    lfs     f0, 0x5f8(rtoc)
branch_0x8030c900:
    fctiwz  f1, f0
    clrlwi  r5, r4, 24
    lis     r0, 0x4330
    lfd     f2, 0x5b0(rtoc)
    lfs     f0, 0x5f8(rtoc)
    stfd    f1, 0x18(sp)
    li      r4, 0x4
    li      r6, 0x0
    lwz     r7, 0x1c(sp)
    clrlwi  r7, r7, 24
    stw     r7, 0x14(sp)
    stw     r0, 0x10(sp)
    lfd     f1, 0x10(sp)
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setSeInterDolby__8JAISoundFUcfUlUc
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl setStreamInterVolume__8JAISoundFUcfUl
setStreamInterVolume__8JAISoundFUcfUl: # 0x8030c950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x8030ca2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030ca2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x14
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030c9f8
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x8(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0x8(r3)
branch_0x8030c9f8:
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030ca2c
    cmpwi   r31, 0x2
    beq-    branch_0x8030ca2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    lwz     r0, 0x10(r3)
    oris    r0, r0, 0x4
    stw     r0, 0x10(r3)
branch_0x8030ca2c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setStreamInterPitch__8JAISoundFUcfUl
setStreamInterPitch__8JAISoundFUcfUl: # 0x8030ca50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x8030cb2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030cb2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x154
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030caf8
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0xc(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0xc(r3)
branch_0x8030caf8:
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030cb2c
    cmpwi   r31, 0x2
    beq-    branch_0x8030cb2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    lwz     r0, 0x10(r3)
    oris    r0, r0, 0x10
    stw     r0, 0x10(r3)
branch_0x8030cb2c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setStreamInterPan__8JAISoundFUcfUl
setStreamInterPan__8JAISoundFUcfUl: # 0x8030cb50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x8030cc2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030cc2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    clrlwi  r30, r29, 24
    fmr     f1, f31
    clrlslwi  r4, r29, 24, 4
    addi    r6, r3, 0x0
    addi    r0, r4, 0x294
    addi    r3, r28, 0x0
    addi    r5, r31, 0x0
    add     r4, r6, r0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r31, r3, 0x0
    cmpwi   r31, 0x1
    bne-    branch_0x8030cbf8
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    li      r0, 0x1
    lwz     r4, 0x10(r3)
    slw     r0, r0, r30
    or      r0, r4, r0
    stw     r0, 0x10(r3)
branch_0x8030cbf8:
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030cc2c
    cmpwi   r31, 0x2
    beq-    branch_0x8030cc2c
    mr      r3, r28
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    lwz     r0, 0x10(r3)
    oris    r0, r0, 0x8
    stw     r0, 0x10(r3)
branch_0x8030cc2c:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    lwz     r30, 0x20(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x30
    blr


.globl setPauseMode__8JAISoundFUcUc
setPauseMode__8JAISoundFUcUc: # 0x8030cc50
    mflr    r0
    stw     r0, 0x4(sp)
    lis     r0, 0xc000
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r29, 0x1c(sp)
    addi    r29, r5, 0x0
    lwz     r3, 0x8(r3)
    clrrwi  r4, r3, 30
    cmpw    r4, r0
    beq-    branch_0x8030ce18
    bge-    branch_0x8030cfe4
    lis     r3, 0x8000
    addi    r0, r3, 0x1
    cmpw    r4, r0
    bge-    branch_0x8030cfe4
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030cfe4
    clrlwi  r0, r31, 24
    cmplwi  r0, 0x3
    bne-    branch_0x8030ccbc
    li      r31, 0x4
branch_0x8030ccbc:
    clrlwi. r0, r31, 24
    beq-    branch_0x8030cd2c
    cmpwi   r0, 0x2
    beq-    branch_0x8030cd14
    bge-    branch_0x8030ce08
    cmpwi   r0, 0x1
    bge-    branch_0x8030ccdc
    b       branch_0x8030ce08

branch_0x8030ccdc:
    clrlwi  r0, r29, 24
    lfd     f2, 0x5b0(rtoc)
    stw     r0, 0x14(sp)
    lis     r0, 0x4330
    lfs     f0, 0x5f8(rtoc)
    mr      r3, r30
    stw     r0, 0x10(sp)
    li      r4, 0xb
    lfd     f1, 0x10(sp)
    li      r5, 0x1
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      setSeqInterVolume__8JAISoundFUcfUl
    b       branch_0x8030ce08

branch_0x8030cd14:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    bl      pauseTrackAll__Q28JASystem6TTrackFv
    b       branch_0x8030ce08

branch_0x8030cd2c:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lbz     r0, 0x1755(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8030cdf4
    bge-    branch_0x8030ce08
    cmpwi   r0, 0x1
    bge-    branch_0x8030cd58
    b       branch_0x8030ce08

branch_0x8030cd58:
    lwz     r0, 0x8(r30)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x8000
    cmplwi  r0, 0x0
    bne-    branch_0x8030ce08
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030ce08
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    mr      r4, r3
    lfs     f1, 0x5bc(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r4, 0x1c4
    li      r5, 0x1
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r29, r3, 0x0
    cmpwi   r29, 0x1
    bne-    branch_0x8030cdbc
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1760(r3)
    ori     r0, r0, 0x800
    stw     r0, 0x1760(r3)
branch_0x8030cdbc:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r0, 0x1850(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030ce08
    cmpwi   r29, 0x2
    beq-    branch_0x8030ce08
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x1850(r3)
    lwz     r0, 0x8(r3)
    oris    r0, r0, 0x4
    stw     r0, 0x8(r3)
    b       branch_0x8030ce08

branch_0x8030cdf4:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    lwz     r3, 0x0(r3)
    bl      handleToSeq__Q28JASystem8TrackMgrFUl
    bl      unPauseTrackAll__Q28JASystem6TTrackFv
branch_0x8030ce08:
    mr      r3, r30
    bl      getSeqParameter__8JAISoundFv
    stb     r31, 0x1755(r3)
    b       branch_0x8030cfe4

branch_0x8030ce18:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030cfe4
    clrlwi. r0, r31, 24
    beq-    branch_0x8030cf10
    cmpwi   r0, 0x2
    beq-    branch_0x8030cf04
    bge-    branch_0x8030cfd8
    cmpwi   r0, 0x1
    bge-    branch_0x8030ce48
    b       branch_0x8030cfd8

branch_0x8030ce48:
    lwz     r0, 0x8(r30)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x8030cfd8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030cfd8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    clrlwi  r0, r29, 24
    lfd     f2, 0x5b0(rtoc)
    stw     r0, 0x14(sp)
    addi    r4, r3, 0x0
    lis     r0, 0x4330
    lfs     f0, 0x5f8(rtoc)
    stw     r0, 0x10(sp)
    mr      r3, r30
    lfd     f1, 0x10(sp)
    addi    r4, r4, 0xc4
    li      r5, 0x1
    fsubs   f1, f1, f2
    fdivs   f1, f1, f0
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r29, r3, 0x0
    cmpwi   r29, 0x1
    bne-    branch_0x8030cecc
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x800
    stw     r0, 0x8(r3)
branch_0x8030cecc:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030cfd8
    cmpwi   r29, 0x2
    beq-    branch_0x8030cfd8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    lwz     r0, 0x10(r3)
    oris    r0, r0, 0x4
    stw     r0, 0x10(r3)
    b       branch_0x8030cfd8

branch_0x8030cf04:
    li      r3, 0x2
    bl      setPauseFlag__Q27JAInter9StreamLibFUc
    b       branch_0x8030cfd8

branch_0x8030cf10:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lbz     r0, 0x0(r3)
    cmpwi   r0, 0x2
    beq-    branch_0x8030cfd0
    bge-    branch_0x8030cfd8
    cmpwi   r0, 0x1
    bge-    branch_0x8030cf34
    b       branch_0x8030cfd8

branch_0x8030cf34:
    lwz     r0, 0x8(r30)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x8030cfd8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030cfd8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    mr      r4, r3
    lfs     f1, 0x5bc(rtoc)
    addi    r3, r30, 0x0
    addi    r4, r4, 0xc4
    li      r5, 0x1
    bl      initMoveParameter__8JAISoundFP14JAIMoveParaSetfUl
    addi    r29, r3, 0x0
    cmpwi   r29, 0x1
    bne-    branch_0x8030cf98
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x8(r3)
    ori     r0, r0, 0x800
    stw     r0, 0x8(r3)
branch_0x8030cf98:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r0, 0x3d4(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8030cfd8
    cmpwi   r29, 0x2
    beq-    branch_0x8030cfd8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    lwz     r3, 0x3d4(r3)
    lwz     r0, 0x10(r3)
    oris    r0, r0, 0x4
    stw     r0, 0x10(r3)
    b       branch_0x8030cfd8

branch_0x8030cfd0:
    li      r3, 0x2
    bl      clearPauseFlag__Q27JAInter9StreamLibFUc
branch_0x8030cfd8:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    stb     r31, 0x0(r3)
branch_0x8030cfe4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl getSeqInterVolume__8JAISoundFUc
getSeqInterVolume__8JAISoundFUc: # 0x8030d000
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    lbz     r0, 0x1(r3)
    cmplwi  r0, 0x4
    beq-    branch_0x8030d028
    cmplwi  r0, 0x5
    bne-    branch_0x8030d03c
branch_0x8030d028:
    bl      getSeqParameter__8JAISoundFv
    clrlslwi  r4, r31, 24, 4
    addi    r0, r4, 0x118
    lfsx    f1, r3, r0
    b       branch_0x8030d040

branch_0x8030d03c:
    lfs     f1, 0x5fc(rtoc)
branch_0x8030d040:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getStreamInterVolume__8JAISoundFUc
getStreamInterVolume__8JAISoundFUc: # 0x8030d054
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lwz     r0, 0x8(r3)
    clrrwi  r3, r0, 30
    addis   r0, r3, 0x4000
    cmplwi  r0, 0x0
    bne-    branch_0x8030d0c8
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    cmplwi  r3, 0x0
    beq-    branch_0x8030d0c8
    lbz     r0, 0x1(r30)
    cmplwi  r0, 0x4
    beq-    branch_0x8030d0a8
    cmplwi  r0, 0x5
    bne-    branch_0x8030d0c0
branch_0x8030d0a8:
    mr      r3, r30
    bl      getStreamParameter__8JAISoundFv
    clrlslwi  r4, r31, 24, 4
    addi    r0, r4, 0x18
    lfsx    f1, r3, r0
    b       branch_0x8030d0cc

branch_0x8030d0c0:
    lfs     f1, 0x5fc(rtoc)
    b       branch_0x8030d0cc

branch_0x8030d0c8:
    lfs     f1, 0x5fc(rtoc)
branch_0x8030d0cc:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getSeqParameter__8JAISoundFv
getSeqParameter__8JAISoundFv: # 0x8030d0e4
    lwz     r3, 0x38(r3)
    blr


.globl getSeParameter__8JAISoundFv
getSeParameter__8JAISoundFv: # 0x8030d0ec
    lwz     r3, 0x38(r3)
    blr


.globl getStreamParameter__8JAISoundFv
getStreamParameter__8JAISoundFv: # 0x8030d0f4
    lwz     r3, 0x38(r3)
    blr


.globl getTrackPortRoute__8JAISoundFUcUc
getTrackPortRoute__8JAISoundFUcUc: # 0x8030d0fc
    lwz     r0, 0x8(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x8030d124
    extrwi  r3, r4, 4, 24
    clrlslwi  r0, r4, 28, 4
    clrlslwi  r5, r5, 24, 16
    addis   r4, r3, 0x2000
    add     r3, r0, r5
    add     r3, r4, r3
    blr

branch_0x8030d124:
    clrlwi  r3, r4, 28
    addis   r3, r3, 0x1000
    clrlslwi  r0, r5, 24, 16
    add     r3, r3, r0
    blr

