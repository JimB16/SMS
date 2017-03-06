
.globl throwMario__9TNpcThrowFP9THitActor
throwMario__9TNpcThrowFP9THitActor: # 0x80215004
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    stw     r30, 0x40(sp)
    mr      r30, r3
    lfs     f0, -0x1a18(rtoc)
    lfs     f2, 0x4(r3)
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    bne-    branch_0x8021504c
    lfs     f1, -0x1a14(rtoc)
    lfs     f0, -0x1a10(rtoc)
    stfs    f1, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f1, 0x3c(sp)
    b       branch_0x802150b0

branch_0x8021504c:
    lfs     f1, -0x1a14(rtoc)
    fcmpo   cr0, f2, f1
    cror    2, 0, 2
    bne-    branch_0x80215070
    stfs    f1, 0x34(sp)
    lfs     f0, -0x1a0c(rtoc)
    stfs    f1, 0x38(sp)
    stfs    f0, 0x3c(sp)
    b       branch_0x802150b0

branch_0x80215070:
    lfs     f0, -0x1a08(rtoc)
    fmuls   f1, f0, f2
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, -0x5ea4(r13)
    sraw    r0, r3, r0
    lwz     r3, -0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f0, -0x1a14(rtoc)
    lfsx    f1, r4, r0
    lfsx    f2, r3, r0
    fneg    f1, f1
    stfs    f0, 0x34(sp)
    stfs    f2, 0x38(sp)
    stfs    f1, 0x3c(sp)
branch_0x802150b0:
    lfs     f1, 0x34(r31)
    lfs     f0, -0x1a08(rtoc)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lwz     r0, -0x5eac(r13)
    clrlwi  r4, r3, 16
    lfs     f4, 0x34(sp)
    addi    r3, r31, 0x0
    sraw    r4, r4, r0
    slwi    r5, r4, 2
    lwz     r0, -0x5ea8(r13)
    lwz     r4, -0x5ea4(r13)
    fneg    f3, f4
    add     r6, r0, r5
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r6)
    add     r5, r4, r5
    fmuls   f0, f1, f0
    lfs     f2, 0x0(r5)
    li      r4, 0x7
    fmadds  f0, f4, f2, f0
    stfs    f0, 0x34(sp)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r5)
    lfs     f2, 0x0(r6)
    fmuls   f0, f1, f0
    fmadds  f0, f3, f2, f0
    stfs    f0, 0x3c(sp)
    bl      SMS_SendMessageToMario__FP9THitActorUl
    addi    r3, sp, 0x34
    lfs     f1, 0x0(r30)
    bl      SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr

