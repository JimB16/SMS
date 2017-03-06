
.globl SMS_EmitSinkInPollutionEffect__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_b
SMS_EmitSinkInPollutionEffect__FRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_b: # 0x802339b4
    mflr    r0
    lis     r6, 0x6666
    stw     r0, 0x4(sp)
    addi    r0, r6, 0x6667
    stwu    sp, -0xd8(sp)
    stfd    f31, 0xd0(sp)
    stfd    f30, 0xc8(sp)
    stfd    f29, 0xc0(sp)
    stfd    f28, 0xb8(sp)
    stfd    f27, 0xb0(sp)
    stfd    f26, 0xa8(sp)
    stfd    f25, 0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x98(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x94(sp)
    addi    r29, r3, 0x0
    lwz     r7, -0x6048(r13)
    lwz     r6, 0x58(r7)
    mulhw   r0, r0, r6
    srawi   r0, r0, 3
    srwi    r3, r0, 31
    add     r0, r0, r3
    mulli   r0, r0, 0x14
    subf.   r0, r0, r6
    bne-    branch_0x80233b64
    lfs     f28, -0x15e0(rtoc)
    lfs     f6, 0x0(r30)
    lfs     f5, 0x4(r30)
    fmuls   f3, f28, f6
    lfs     f1, -0x15dc(rtoc)
    lfs     f4, 0x8(r30)
    fmuls   f2, f28, f5
    lfs     f0, -0x15d8(rtoc)
    fmsubs  f29, f1, f5, f3
    fmsubs  f31, f28, f4, f2
    fnmsubs  f30, f1, f4, f3
    fmuls   f2, f6, f29
    fmuls   f1, f5, f31
    fmuls   f3, f4, f30
    fmsubs  f26, f4, f31, f2
    fmsubs  f25, f6, f30, f1
    fmsubs  f27, f5, f29, f3
    fmuls   f1, f26, f26
    fmadds  f1, f27, f27, f1
    fmadds  f1, f25, f25, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80233a88
    fmr     f26, f28
    fmr     f27, f26
    b       branch_0x80233aa0

branch_0x80233a88:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x15dc(rtoc)
    fmuls   f0, f0, f1
    fmuls   f27, f27, f0
    fmuls   f26, f26, f0
    fmuls   f28, f25, f0
branch_0x80233aa0:
    fmuls   f1, f30, f30
    lfs     f0, -0x15d8(rtoc)
    fmadds  f1, f31, f31, f1
    fmadds  f1, f29, f29, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80233acc
    lfs     f3, -0x15e0(rtoc)
    fmr     f2, f3
    fmr     f1, f2
    b       branch_0x80233ae4

branch_0x80233acc:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x15dc(rtoc)
    fmuls   f0, f0, f1
    fmuls   f1, f31, f0
    fmuls   f2, f30, f0
    fmuls   f3, f29, f0
branch_0x80233ae4:
    stfs    f27, 0x48(sp)
    clrlwi. r0, r31, 24
    stfs    f26, 0x58(sp)
    stfs    f28, 0x68(sp)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x5c(sp)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x6c(sp)
    stfs    f1, 0x50(sp)
    stfs    f2, 0x60(sp)
    stfs    f3, 0x70(sp)
    lfs     f0, 0x0(r29)
    stfs    f0, 0x54(sp)
    lfs     f0, 0x4(r29)
    stfs    f0, 0x64(sp)
    lfs     f0, 0x8(r29)
    stfs    f0, 0x74(sp)
    beq-    branch_0x80233b4c
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x48
    li      r4, 0x1d8
    li      r6, 0x2
    li      r7, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80233b4c:
    lwz     r3, -0x6070(r13)
    addi    r5, sp, 0x48
    li      r4, 0x1d9
    li      r6, 0x2
    li      r7, 0x0
    bl      emitAndBindToMtx__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x80233b64:
    lwz     r0, 0xdc(sp)
    lfd     f31, 0xd0(sp)
    lfd     f30, 0xc8(sp)
    mtlr    r0
    lfd     f29, 0xc0(sp)
    lfd     f28, 0xb8(sp)
    lfd     f27, 0xb0(sp)
    lfd     f26, 0xa8(sp)
    lfd     f25, 0xa0(sp)
    lwz     r31, 0x9c(sp)
    lwz     r30, 0x98(sp)
    lwz     r29, 0x94(sp)
    addi    sp, sp, 0xd8
    blr


.globl SMS_EmitRippleSea__FPA4_fPv
SMS_EmitRippleSea__FPA4_fPv: # 0x80233b9c
    mflr    r0
    li      r6, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x1
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r7, r30, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    addi    r5, r29, 0x0
    lwz     r3, -0x6070(r13)
    li      r4, 0x1e8
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233be4
    li      r31, 0x0
branch_0x80233be4:
    lwz     r3, -0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x107
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233c08
    li      r31, 0x0
branch_0x80233c08:
    lwz     r3, -0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x108
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233c2c
    li      r31, 0x0
branch_0x80233c2c:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl SMS_EmitRipplePool__FPA4_fPv
SMS_EmitRipplePool__FPA4_fPv: # 0x80233c4c
    mflr    r0
    li      r6, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    li      r31, 0x1
    stw     r30, 0x18(sp)
    addi    r30, r4, 0x0
    addi    r7, r30, 0x0
    stw     r29, 0x14(sp)
    mr      r29, r3
    addi    r5, r29, 0x0
    lwz     r3, -0x6070(r13)
    li      r4, 0x1e9
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233c94
    li      r31, 0x0
branch_0x80233c94:
    lwz     r3, -0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x10a
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233cb8
    li      r31, 0x0
branch_0x80233cb8:
    lwz     r3, -0x6070(r13)
    addi    r5, r29, 0x0
    addi    r7, r30, 0x0
    li      r4, 0x10b
    li      r6, 0x1
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233cdc
    li      r31, 0x0
branch_0x80233cdc:
    lwz     r0, 0x24(sp)
    mr      r3, r31
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    lwz     r29, 0x14(sp)
    addi    sp, sp, 0x20
    blr


.globl SMS_EmitRippleTiny__FPQ29JGeometry8TVec3_f_
SMS_EmitRippleTiny__FPQ29JGeometry8TVec3_f_: # 0x80233cfc
    mflr    r0
    li      r4, 0x35
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x1
    stw     r30, 0x10(sp)
    mr      r30, r3
    addi    r5, r30, 0x0
    lwz     r3, -0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233d3c
    li      r31, 0x0
branch_0x80233d3c:
    lwz     r3, -0x6070(r13)
    addi    r5, r30, 0x0
    li      r4, 0x36
    li      r6, 0x0
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    bne-    branch_0x80233d60
    li      r31, 0x0
branch_0x80233d60:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

