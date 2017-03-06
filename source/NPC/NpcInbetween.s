
.globl execMotionBlend__13TNpcInbetweenFP6MActor
execMotionBlend__13TNpcInbetweenFP6MActor: # 0x80211d68
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    mr      r30, r3
    stw     r29, 0x4c(sp)
    stw     r28, 0x48(sp)
    lfs     f31, -0x1a68(rtoc)
    lfs     f0, 0x28(r3)
    fcmpo   cr0, f0, f31
    ble-    branch_0x80211da8
    li      r0, 0x1
    b       branch_0x80211dac

branch_0x80211da8:
    li      r0, 0x0
branch_0x80211dac:
    clrlwi. r0, r0, 24
    beq-    branch_0x80211e48
    li      r28, 0x0
    stw     r28, 0x24(r30)
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80211dcc
    b       branch_0x80211dd4

branch_0x80211dcc:
    bl      getOldMotionBlendAnmPtr__12MActorAnmBckCFv
    mr      r28, r3
branch_0x80211dd4:
    cmplwi  r28, 0x0
    beq-    branch_0x80211f0c
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      getFrameCtrl__6MActorFi
    lis     r4, 0x803b
    subi    r29, r4, 0x2eac
    stw     r29, 0x20(sp)
    lbz     r0, 0x4(r3)
    stb     r0, 0x24(sp)
    lbz     r0, 0x5(r3)
    stb     r0, 0x25(sp)
    lha     r0, 0x6(r3)
    sth     r0, 0x26(sp)
    lha     r0, 0x8(r3)
    sth     r0, 0x28(sp)
    lha     r0, 0xa(r3)
    sth     r0, 0x2a(sp)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x2c(sp)
    lfs     f0, 0x10(r3)
    addi    r3, sp, 0x20
    stfs    f0, 0x30(sp)
    bl      update__12J3DFrameCtrlFv
    lfs     f0, 0x30(sp)
    stfs    f0, 0x4(r28)
    lfs     f31, 0x28(r30)
    stw     r29, 0x20(sp)
    b       branch_0x80211f0c

branch_0x80211e48:
    lwz     r3, 0x24(r30)
    cmpwi   r3, 0x0
    ble-    branch_0x80211e5c
    li      r0, 0x1
    b       branch_0x80211e60

branch_0x80211e5c:
    li      r0, 0x0
branch_0x80211e60:
    clrlwi. r0, r0, 24
    beq-    branch_0x80211f0c
    cmpwi   r3, 0x0
    ble-    branch_0x80211e7c
    lwz     r3, 0x24(r30)
    subi    r0, r3, 0x1
    stw     r0, 0x24(r30)
branch_0x80211e7c:
    lwz     r0, 0x24(r30)
    cmpwi   r0, 0x0
    ble-    branch_0x80211f0c
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80211e9c
    li      r28, 0x0
    b       branch_0x80211ea4

branch_0x80211e9c:
    bl      getOldMotionBlendAnmPtr__12MActorAnmBckCFv
    mr      r28, r3
branch_0x80211ea4:
    cmplwi  r28, 0x0
    beq-    branch_0x80211ec8
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    bne-    branch_0x80211ec0
    lfs     f1, -0x1a68(rtoc)
    b       branch_0x80211ec4

branch_0x80211ec0:
    bl      getOldMotionBlendFrame__12MActorAnmBckCFv
branch_0x80211ec4:
    stfs    f1, 0x4(r28)
branch_0x80211ec8:
    lwz     r0, 0x4(r30)
    lis     r3, 0x4330
    lwz     r4, 0x24(r30)
    xoris   r0, r0, 0x8000
    lfd     f2, -0x1a60(rtoc)
    stw     r0, 0x3c(sp)
    xoris   r0, r4, 0x8000
    lfs     f1, -0x1a64(rtoc)
    stw     r3, 0x38(sp)
    lfd     f0, 0x38(sp)
    stw     r0, 0x44(sp)
    fsubs   f0, f0, f2
    stw     r3, 0x40(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x40(sp)
    fsubs   f1, f1, f2
    fmuls   f31, f1, f0
branch_0x80211f0c:
    lwz     r3, 0xc(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80211f20
    fmr     f1, f31
    bl      setMotionBlendRatio__12MActorAnmBckFf
branch_0x80211f20:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    lwz     r29, 0x4c(sp)
    lwz     r28, 0x48(sp)
    addi    sp, sp, 0x60
    blr


.globl execPosInbetween__13TNpcInbetweenFPQ29JGeometry8TVec3_f_
execPosInbetween__13TNpcInbetweenFPQ29JGeometry8TVec3_f_: # 0x80211f44
    stwu    sp, -0x20(sp)
    lfs     f0, 0x0(r4)
    stfs    f0, 0x18(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x20(r3)
    lwz     r5, 0x8(r3)
    cmpwi   r5, 0x2
    blt-    branch_0x80211ff8
    subi    r0, r5, 0x1
    stw     r0, 0x8(r3)
    lis     r5, 0x4330
    lwz     r0, 0x0(r3)
    lwz     r6, 0x8(r3)
    xoris   r0, r0, 0x8000
    lfd     f3, -0x1a60(rtoc)
    stw     r0, 0x14(sp)
    xoris   r0, r6, 0x8000
    lfs     f2, -0x1a64(rtoc)
    stw     r5, 0x10(sp)
    lfs     f4, 0x18(r3)
    lfd     f0, 0x10(sp)
    stw     r0, 0x1c(sp)
    fsubs   f1, f0, f3
    lfs     f0, 0xc(r3)
    stw     r5, 0x18(sp)
    fsubs   f0, f0, f4
    fdivs   f1, f2, f1
    lfd     f2, 0x18(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f2, f1
    fmadds  f0, f1, f0, f4
    stfs    f0, 0x0(r4)
    lfs     f2, 0x1c(r3)
    lfs     f0, 0x10(r3)
    fsubs   f0, f0, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x4(r4)
    lfs     f2, 0x20(r3)
    lfs     f0, 0x14(r3)
    fsubs   f0, f0, f2
    fmadds  f0, f1, f0, f2
    stfs    f0, 0x8(r4)
    b       branch_0x80212018

branch_0x80211ff8:
    lfs     f0, 0x0(r4)
    li      r0, 0x0
    stfs    f0, 0xc(r3)
    lfs     f0, 0x4(r4)
    stfs    f0, 0x10(r3)
    lfs     f0, 0x8(r4)
    stfs    f0, 0x14(r3)
    stw     r0, 0x8(r3)
branch_0x80212018:
    addi    sp, sp, 0x20
    blr

