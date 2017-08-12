
.globl __dt__15CPolarSubCameraFv
__dt__15CPolarSubCameraFv: # 0x80022f4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80022fb4
    lis     r3, __vvt__15CPolarSubCamera@ha
    addi    r3, r3, __vvt__15CPolarSubCamera@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80022fa4
    lis     r3, __vvt__Q26JDrama13TLookAtCamera@h
    addi    r3, r3, __vvt__Q26JDrama13TLookAtCamera@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama7TCameraFv
branch_0x80022fa4:
    extsh.  r0, r31
    ble-    branch_0x80022fb4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80022fb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getType__Q26JDrama7TCameraCFv
getType__Q26JDrama7TCameraCFv: # 0x80022fd0
    li      r3, 0x2
    blr


.globl getFinalAngleZ__15CPolarSubCameraCFv
getFinalAngleZ__15CPolarSubCameraCFv: # 0x80022fd8
    lwz     r4, R13Off_m0x7108(r13)
    lha     r3, 0x254(r3)
    lha     r0, 0x0(r4)
    add     r3, r3, r0
    blr


.globl getOffsetAngleY__15CPolarSubCameraCFv
getOffsetAngleY__15CPolarSubCameraCFv: # 0x80022fec
    lwz     r3, 0x68(r3)
    lha     r3, 0x5a(r3)
    blr


.globl getOffsetAngleX__15CPolarSubCameraCFv
getOffsetAngleX__15CPolarSubCameraCFv: # 0x80022ff8
    lwz     r3, 0x68(r3)
    lha     r3, 0x58(r3)
    blr


.globl perform__15CPolarSubCameraFUlPQ26JDrama9TGraphics
perform__15CPolarSubCameraFUlPQ26JDrama9TGraphics: # 0x80023004
    mflr    r0
    stw     r0, 0x4(sp)
    clrlwi. r0, r4, 31
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x60(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x5c(sp)
    addi    r29, r3, 0x0
    stw     r28, 0x58(sp)
    beq-    branch_0x800232f0
    lhz     r0, 0x0(r31)
    clrlwi. r0, r0, 31
    beq-    branch_0x800230fc
    lfs     f0, 0x124(r29)
    addi    r3, r29, 0x1ec
    addi    r4, r29, 0x21c
    stfs    f0, 0x13c(r29)
    lfs     f0, 0x128(r29)
    stfs    f0, 0x140(r29)
    lfs     f0, 0x12c(r29)
    stfs    f0, 0x144(r29)
    lfs     f0, 0x148(r29)
    stfs    f0, 0x160(r29)
    lfs     f0, 0x14c(r29)
    stfs    f0, 0x164(r29)
    lfs     f0, 0x150(r29)
    stfs    f0, 0x168(r29)
    lfs     f0, 0x16c(r29)
    stfs    f0, 0x1ac(r29)
    lfs     f0, 0x170(r29)
    stfs    f0, 0x1b0(r29)
    lfs     f0, 0x174(r29)
    stfs    f0, 0x1b4(r29)
    lfs     f0, 0x178(r29)
    stfs    f0, 0x1b8(r29)
    lfs     f0, 0x17c(r29)
    stfs    f0, 0x1bc(r29)
    lfs     f0, 0x180(r29)
    stfs    f0, 0x1c0(r29)
    lfs     f0, 0x184(r29)
    stfs    f0, 0x1c4(r29)
    lfs     f0, 0x188(r29)
    stfs    f0, 0x1c8(r29)
    lfs     f0, 0x18c(r29)
    stfs    f0, 0x1cc(r29)
    lfs     f0, 0x190(r29)
    stfs    f0, 0x1d0(r29)
    lfs     f0, 0x194(r29)
    stfs    f0, 0x1d4(r29)
    lfs     f0, 0x198(r29)
    stfs    f0, 0x1d8(r29)
    lfs     f0, 0x19c(r29)
    stfs    f0, 0x1dc(r29)
    lfs     f0, 0x1a0(r29)
    stfs    f0, 0x1e0(r29)
    lfs     f0, 0x1a4(r29)
    stfs    f0, 0x1e4(r29)
    lfs     f0, 0x1a8(r29)
    stfs    f0, 0x1e8(r29)
    bl      PSMTXCopy
branch_0x800230fc:
    lis     r3, 0x803f
    lfsu    f0, -0x298(r3)
    li      r0, 0x0
    stfs    f0, 0x30(r29)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x34(r29)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x38(r29)
    sth     r0, 0x254(r29)
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x49
    beq-    branch_0x8002320c
    bl      SMS_isOptionMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80023144
    mr      r3, r29
    bl      ctrlOptionCamera___15CPolarSubCameraFv
    b       branch_0x8002314c

branch_0x80023144:
    mr      r3, r29
    bl      ctrlGameCamera___15CPolarSubCameraFv
branch_0x8002314c:
    mr      r3, r29
    bl      calcFinalPosAndAt___15CPolarSubCameraFv
    lfs     f1, 0x18(r29)
    lfs     f0, 0x44(r29)
    lfs     f2, 0x10(r29)
    fsubs   f1, f1, f0
    lfs     f0, 0x3c(r29)
    fsubs   f2, f2, f0
    fmuls   f0, f1, f1
    fmadds  f1, f2, f2, f0
    bl      MsSqrtf__Ff
    lfs     f2, 0x14(r29)
    lfs     f0, 0x40(r29)
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0x256(r29)
    lfs     f3, 0x18(r29)
    lfs     f1, 0x44(r29)
    lfs     f2, 0x10(r29)
    lfs     f0, 0x3c(r29)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0x258(r29)
    addi    r3, r29, 0x25c
    lfs     f1, 0x148(r29)
    lfs     f0, 0x124(r29)
    lfs     f4, 0x14c(r29)
    lfs     f2, 0x128(r29)
    fsubs   f1, f1, f0
    lfs     f3, 0x150(r29)
    lfs     f0, 0x12c(r29)
    fsubs   f2, f4, f2
    fsubs   f3, f3, f0
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80023494
    bl      one__Q29JGeometry8TUtil_f_Fv
    addi    r3, r29, 0x25c
    addi    r4, r3, 0x0
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lwz     r4, 0x68(r29)
    lha     r5, 0x256(r29)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBCalcRatio_s___Fsss
    lfs     f2, -0x7960(r2)
    lfs     f3, -0x795c(r2)
    bl      MsClamp_f___Ffff_800233c8
    stfs    f1, 0x270(r29)
branch_0x8002320c:
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x49
    beq-    branch_0x80023244
    lfs     f1, 0x48(r29)
    addi    r3, r29, 0x16c
    lfs     f2, 0x4c(r29)
    lfs     f3, 0x28(r29)
    lfs     f4, 0x2c(r29)
    bl      C_MTXPerspective
    addi    r3, r29, 0x1ec
    addi    r4, r29, 0x124
    addi    r5, r29, 0x30
    addi    r6, r29, 0x148
    bl      C_MTXLookAt
branch_0x80023244:
    lhz     r0, 0x0(r31)
    rlwinm. r0, r0, 0, 30, 30
    beq-    branch_0x80023258
    li      r3, 0x1
    b       branch_0x8002325c

branch_0x80023258:
    li      r3, 0x0
branch_0x8002325c:
    clrlwi. r0, r3, 24
    addi    r28, r3, 0x0
    beq-    branch_0x800232e4
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x49
    beq-    branch_0x800232b8
    lhz     r3, 0x64(r29)
    rlwinm. r0, r3, 0, 21, 21
    bne-    branch_0x800232b8
    rlwinm. r0, r3, 0, 22, 22
    beq-    branch_0x80023294
    mr      r3, r29
    bl      updateGateDemoCamera___15CPolarSubCameraFv
    b       branch_0x800232b8

branch_0x80023294:
    rlwinm. r0, r3, 0, 19, 19
    beq-    branch_0x800232b8
    lwz     r4, 0x2b8(r29)
    lwz     r3, 0x2b0(r29)
    addi    r7, r4, 0x34
    addi    r6, r4, 0x28
    addi    r5, r4, 0x1c
    addi    r4, r4, 0x10
    bl      updateDemo__10TCameraBckFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_Pf
branch_0x800232b8:
    bl      SMS_isOptionMap__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x800232e4
    lwz     r0, 0x50(r29)
    cmpwi   r0, 0x2e
    beq-    branch_0x800232e4
    cmpwi   r0, 0x49
    beq-    branch_0x800232e4
    addi    r3, r29, 0x0
    li      r4, 0x0
    bl      calcInHouseNo___15CPolarSubCameraFb
branch_0x800232e4:
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      updateDemoCamera___15CPolarSubCameraFb
branch_0x800232f0:
    andi.   r0, r30, 0x14
    beq-    branch_0x800233a8
    lfs     f0, 0x16c(r29)
    addi    r4, r31, 0xb4
    addi    r3, r29, 0x1ec
    stfs    f0, 0x74(r31)
    lfs     f0, 0x170(r29)
    stfs    f0, 0x78(r31)
    lfs     f0, 0x174(r29)
    stfs    f0, 0x7c(r31)
    lfs     f0, 0x178(r29)
    stfs    f0, 0x80(r31)
    lfs     f0, 0x17c(r29)
    stfs    f0, 0x84(r31)
    lfs     f0, 0x180(r29)
    stfs    f0, 0x88(r31)
    lfs     f0, 0x184(r29)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x188(r29)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x18c(r29)
    stfs    f0, 0x94(r31)
    lfs     f0, 0x190(r29)
    stfs    f0, 0x98(r31)
    lfs     f0, 0x194(r29)
    stfs    f0, 0x9c(r31)
    lfs     f0, 0x198(r29)
    stfs    f0, 0xa0(r31)
    lfs     f0, 0x19c(r29)
    stfs    f0, 0xa4(r31)
    lfs     f0, 0x1a0(r29)
    stfs    f0, 0xa8(r31)
    lfs     f0, 0x1a4(r29)
    stfs    f0, 0xac(r31)
    lfs     f0, 0x1a8(r29)
    stfs    f0, 0xb0(r31)
    bl      PSMTXCopy
    lfs     f0, 0x28(r29)
    rlwinm. r0, r30, 0, 27, 27
    stfs    f0, 0xe8(r31)
    lfs     f0, 0x2c(r29)
    stfs    f0, 0xec(r31)
    beq-    branch_0x800233a8
    addi    r3, r31, 0x74
    li      r4, 0x0
    bl      GXSetProjection
branch_0x800233a8:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    lwz     r29, 0x5c(sp)
    lwz     r28, 0x58(sp)
    addi    sp, sp, 0x68
    blr


.globl MsClamp_f___Ffff_800233c8
MsClamp_f___Ffff_800233c8: # 0x800233c8
    fcmpo   cr0, f1, f3
    ble-    branch_0x800233d8
    fmr     f1, f3
    blr

branch_0x800233d8:
    fcmpo   cr0, f1, f2
    bgelr-    

    fmr     f1, f2
    blr


.globl setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f: # 0x800233e8
    lfs     f2, 0x0(r4)
    lfs     f0, 0x4(r4)
    fmuls   f3, f2, f2
    lfs     f4, 0x8(r4)
    fmuls   f2, f0, f0
    lfs     f0, -0x7958(r2)
    fmuls   f4, f4, f4
    fadds   f2, f3, f2
    fadds   f5, f4, f2
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x8002342c
    lfs     f0, -0x7960(r2)
    stfs    f0, 0x8(r3)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x0(r3)
    blr

branch_0x8002342c:
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f5, f0
    cror    2, 0, 2
    bne-    branch_0x80023440
    b       branch_0x80023460

branch_0x80023440:
    frsqrte f4, f5
    lfs     f3, -0x7954(r2)
    lfs     f0, -0x7950(r2)
    frsp    f4, f4
    fmuls   f2, f4, f4
    fmuls   f3, f3, f4
    fnmsubs  f0, f5, f2, f0
    fmuls   f5, f3, f0
branch_0x80023460:
    fmuls   f1, f1, f5
    lfs     f0, 0x0(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r3)
    lfs     f0, 0x4(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x4(r3)
    lfs     f0, 0x8(r4)
    fmuls   f0, f0, f1
    stfs    f0, 0x8(r3)
    blr


.globl one__Q29JGeometry8TUtil_f_Fv
one__Q29JGeometry8TUtil_f_Fv: # 0x8002348c
    lfs     f1, -0x795c(r2)
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80023494
set_f___Q29JGeometry8TVec3_f_Ffff_80023494: # 0x80023494
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl MsSqrtf__Ff
MsSqrtf__Ff: # 0x800234a4
    stwu    sp, -0x10(sp)
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800234e0
    frsqrte f4, f1
    lfd     f3, -0x7948(r2)
    lfd     f0, -0x7940(r2)
    fmul    f2, f4, f4
    fmul    f3, f3, f4
    fnmsub   f0, f1, f2, f0
    fmul    f0, f3, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0xc(sp)
    lfs     f1, 0xc(sp)
branch_0x800234e0:
    addi    sp, sp, 0x10
    blr


.globl ctrlGameCamera___15CPolarSubCameraFv
ctrlGameCamera___15CPolarSubCameraFv: # 0x800234e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stw     r31, 0x114(sp)
    mr      r31, r3
    stw     r30, 0x110(sp)
    stw     r29, 0x10c(sp)
    lhz     r0, 0x64(r3)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x8002351c
    mr      r3, r31
    bl      execDeadDemoProc___15CPolarSubCameraFv
branch_0x8002351c:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x8002353c
    lwz     r3, 0x284(r31)
    cmpwi   r3, 0x0
    ble-    branch_0x8002353c
    addi    r0, r3, -0x1
    stw     r0, 0x284(r31)
branch_0x8002353c:
    lhz     r3, 0x278(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80023550
    addi    r0, r3, -0x1
    sth     r0, 0x278(r31)
branch_0x80023550:
    lhz     r3, 0x27a(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80023564
    addi    r0, r3, -0x1
    sth     r0, 0x27a(r31)
branch_0x80023564:
    lhz     r3, 0x282(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80023578
    addi    r0, r3, -0x1
    sth     r0, 0x282(r31)
branch_0x80023578:
    lwz     r5, R13Off_m0x60b4(r13)
    mr      r3, r31
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xec(sp)
    stw     r0, 0xf0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xf4(sp)
    bl      isNormalDeadDemo__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800235ac
    lfs     f31, -0x7938(r2)
    b       branch_0x800235ec

branch_0x800235ac:
    lwz     r3, 0x68(r31)
    lfs     f2, 0xa8(r31)
    lfs     f1, 0x28(r3)
    lfs     f0, 0x24(r3)
    fmadds  f31, f2, f1, f0
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xffe0
    cmplwi  r0, 0x345
    bne-    branch_0x800235d8
    lfs     f0, -0x7934(r2)
    fadds   f31, f31, f0
branch_0x800235d8:
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x9
    bne-    branch_0x800235ec
    lfs     f0, 0x290(r31)
    fadds   f31, f31, f0
branch_0x800235ec:
    lfs     f0, 0xf0(sp)
    fadds   f0, f0, f31
    stfs    f0, 0xf0(sp)
    lwz     r3, R13Off_m0x7110(r13)
    lfs     f0, 0xec(sp)
    stfs    f0, 0x0(r3)
    lfs     f0, 0xf0(sp)
    stfs    f0, 0x4(r3)
    lfs     f0, 0xf4(sp)
    stfs    f0, 0x8(r3)
    lwz     r3, R13Off_m0x7110(r13)
    bl      calcAndSetMarioData__16TCameraMarioDataFv
    lwz     r3, 0x80(r31)
    lwz     r0, 0x84(r31)
    stw     r3, 0xb4(r31)
    stw     r0, 0xb8(r31)
    lwz     r0, 0x88(r31)
    stw     r0, 0xbc(r31)
    lwz     r3, 0x8c(r31)
    lwz     r0, 0x90(r31)
    stw     r3, 0xc0(r31)
    stw     r0, 0xc4(r31)
    lwz     r0, 0x94(r31)
    stw     r0, 0xc8(r31)
    lwz     r3, 0x98(r31)
    lwz     r0, 0x9c(r31)
    stw     r3, 0xcc(r31)
    stw     r0, 0xd0(r31)
    lwz     r0, 0xa0(r31)
    stw     r0, 0xd4(r31)
    lha     r0, 0xa4(r31)
    sth     r0, 0xd8(r31)
    lha     r0, 0xa6(r31)
    sth     r0, 0xda(r31)
    lfs     f0, 0xa8(r31)
    stfs    f0, 0xdc(r31)
    lha     r0, 0xac(r31)
    sth     r0, 0xe0(r31)
    lfs     f0, 0xb0(r31)
    stfs    f0, 0xe4(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x64(r3)
    cmplwi  r0, 0x4
    bne-    branch_0x80023738
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 21, 21
    bne-    branch_0x80023738
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isTalkCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80023708
    lwz     r4, R13Off_m0x6048(r13)
    li      r3, 0x1
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x1
    beq-    branch_0x800236dc
    cmplwi  r0, 0x2
    beq-    branch_0x800236dc
    li      r3, 0x0
branch_0x800236dc:
    clrlwi. r0, r3, 24
    bne-    branch_0x80023738
    lwz     r30, 0x5c(r31)
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      getCameraInbetweenFrame___15CPolarSubCameraFi
    extsh   r5, r3
    addi    r3, r31, 0x0
    addi    r4, r30, 0x0
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
    b       branch_0x80023738

branch_0x80023708:
    mr      r3, r31
    bl      isSimpleDemoCamera__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80023738
    addi    r3, r31, 0x0
    addi    r4, sp, 0xf8
    bl      controlByCameraCode___15CPolarSubCameraFPi
    clrlwi. r0, r3, 24
    beq-    branch_0x80023738
    mr      r3, r31
    lwz     r4, 0xf8(sp)
    bl      execCameraModeChangeProc___15CPolarSubCameraFi
branch_0x80023738:
    lwz     r0, 0x50(r31)
    addi    r3, sp, 0x38
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    lwz     r3, 0x6c(r31)
    lwz     r3, 0x4(r3)
    cmpwi   r3, 0x0
    ble-    branch_0x80023768
    li      r0, 0x1
    b       branch_0x8002376c

branch_0x80023768:
    li      r0, 0x0
branch_0x8002376c:
    clrlwi. r0, r0, 24
    beq-    branch_0x800237a0
    xoris   r0, r3, 0x8000
    lfd     f1, -0x7928(r2)
    stw     r0, 0x104(sp)
    lis     r0, 0x4330
    lwz     r3, 0x68(r31)
    addi    r4, sp, 0x38
    stw     r0, 0x100(sp)
    lfd     f0, 0x100(sp)
    fsubs   f1, f0, f1
    bl      inbetweenData__16TCameraKindParamFRC16TCameraKindParamf
    b       branch_0x800237d0

branch_0x800237a0:
    lwz     r3, 0x68(r31)
    li      r0, 0x15
    mtctr   r0
    addi    r4, sp, 0x30
    addi    r5, r3, -0x8
branch_0x800237b4:
    lwzu    r3, 0x8(r4)
    lwz     r0, 0x4(r4)
    stwu    r3, 0x8(r5)
    stw     r0, 0x4(r5)
    bdnz+      branch_0x800237b4
    lwz     r0, 0x8(r4)
    stw     r0, 0x8(r5)
branch_0x800237d0:
    lwz     r3, 0x68(r31)
    lwz     r0, 0x284(r31)
    lwz     r3, 0x68(r3)
    cmpw    r0, r3
    ble-    branch_0x800237e8
    stw     r3, 0x284(r31)
branch_0x800237e8:
    mr      r3, r31
    bl      isNormalDeadDemo__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    bne-    branch_0x80023810
    lhz     r0, 0x64(r31)
    andi.   r0, r0, 0x1200
    bne-    branch_0x80023810
    lwz     r3, 0x68(r31)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x48(r31)
branch_0x80023810:
    lwz     r4, 0x68(r31)
    mr      r3, r31
    lfs     f0, 0x4(r4)
    stfs    f0, 0x28(r31)
    lfs     f0, -0x7930(r2)
    stfs    f0, 0x2c(r31)
    bl      isNormalDeadDemo__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80023840
    mr      r3, r31
    bl      ctrlNormalDeadDemo___15CPolarSubCameraFv
    b       branch_0x80023900

branch_0x80023840:
    lwz     r29, 0x50(r31)
    cmpwi   r29, 0x2e
    beq-    branch_0x80023868
    bge-    branch_0x80023874
    cmpwi   r29, 0x2
    beq-    branch_0x8002385c
    b       branch_0x80023874

branch_0x8002385c:
    mr      r3, r31
    bl      ctrlMultiPlayerCamera___15CPolarSubCameraFv
    b       branch_0x80023900

branch_0x80023868:
    mr      r3, r31
    bl      ctrlJetCoasterCamera___15CPolarSubCameraFv
    b       branch_0x80023900

branch_0x80023874:
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    li      r30, 0x1
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800238a4
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800238a4
    li      r30, 0x0
branch_0x800238a4:
    clrlwi. r0, r30, 24
    beq-    branch_0x800238b8
    mr      r3, r31
    bl      calcPosAndAt___15CPolarSubCameraFv
    b       branch_0x80023900

branch_0x800238b8:
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800238d8
    mr      r3, r31
    bl      ctrlLButtonCamera___15CPolarSubCameraFv
    b       branch_0x80023900

branch_0x800238d8:
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isTalkCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800238f8
    mr      r3, r31
    bl      ctrlTalkCamera___15CPolarSubCameraFv
    b       branch_0x80023900

branch_0x800238f8:
    mr      r3, r31
    bl      ctrlNormalOrTowerCamera___15CPolarSubCameraFv
branch_0x80023900:
    lfs     f0, 0x10(r31)
    stfs    f0, 0x124(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x12c(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x150(r31)
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lwz     r31, 0x114(sp)
    lwz     r30, 0x110(sp)
    lwz     r29, 0x10c(sp)
    addi    sp, sp, 0x120
    mtlr    r0
    blr


.globl calcFinalPosAndAt___15CPolarSubCameraFv
calcFinalPosAndAt___15CPolarSubCameraFv: # 0x80023950
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0x50(r3)
    cmpwi   r0, 0x49
    beq-    branch_0x80023a1c
    lwz     r3, R13Off_m0x7108(r13)
    addi    r4, r31, 0x124
    addi    r5, r31, 0x148
    addi    r6, r31, 0x30
    bl      execShake__12TCameraShakeFRCQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    lwz     r4, 0x50(r31)
    cmpwi   r4, 0x2e
    beq-    branch_0x80023a1c
    mr      r3, r31
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x800239c4
    lwz     r3, 0x6c(r31)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x800239b8
    li      r0, 0x1
    b       branch_0x800239bc

branch_0x800239b8:
    li      r0, 0x0
branch_0x800239bc:
    clrlwi. r0, r0, 24
    beq-    branch_0x80023a1c
branch_0x800239c4:
    mr      r3, r31
    bl      isHellDeadDemo__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80023a00
    lwz     r3, 0x2d4(r31)
    lha     r4, 0x256(r31)
    lha     r0, 0x1d0(r3)
    cmpw    r4, r0
    ble-    branch_0x80023a1c
    li      r0, 0x1
    stw     r0, 0x7c(r31)
    lhz     r0, 0x64(r31)
    ori     r0, r0, 0x40
    sth     r0, 0x64(r31)
    b       branch_0x80023a1c

branch_0x80023a00:
    lwz     r4, 0x2d4(r31)
    addi    r5, r31, 0x124
    addi    r6, r31, 0x148
    addi    r7, r4, 0x1bc
    lha     r4, 0x1d0(r4)
    lha     r3, 0x0(r7)
    bl      CLBRevisionLookatByAngleX__FssRC3VecP3Vec
branch_0x80023a1c:
    lfs     f2, 0x124(r31)
    li      r3, 0x0
    lfs     f0, 0x148(r31)
    mr      r0, r3
    fcmpu   cr0, f2, f0
    bne-    branch_0x80023a48
    lfs     f1, 0x128(r31)
    lfs     f0, 0x14c(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80023a48
    li      r0, 0x1
branch_0x80023a48:
    clrlwi. r0, r0, 24
    beq-    branch_0x80023a64
    lfs     f1, 0x12c(r31)
    lfs     f0, 0x150(r31)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80023a64
    li      r3, 0x1
branch_0x80023a64:
    clrlwi. r0, r3, 24
    beq-    branch_0x80023aa0
    lfs     f0, 0x130(r31)
    stfs    f0, 0x124(r31)
    lfs     f0, 0x134(r31)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x138(r31)
    stfs    f0, 0x12c(r31)
    lfs     f0, 0x154(r31)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x158(r31)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x15c(r31)
    stfs    f0, 0x150(r31)
    b       branch_0x80023acc

branch_0x80023aa0:
    stfs    f2, 0x130(r31)
    lfs     f0, 0x128(r31)
    stfs    f0, 0x134(r31)
    lfs     f0, 0x12c(r31)
    stfs    f0, 0x138(r31)
    lfs     f0, 0x148(r31)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x14c(r31)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x150(r31)
    stfs    f0, 0x15c(r31)
branch_0x80023acc:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calcPosAndAt___15CPolarSubCameraFv
calcPosAndAt___15CPolarSubCameraFv: # 0x80023ae0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x2d0(sp)
    stfd    f31, 0x2c8(sp)
    stfd    f30, 0x2c0(sp)
    stfd    f29, 0x2b8(sp)
    stmw    r27, 0x2a4(sp)
    mr      r31, r3
    lwz     r4, R13Off_m0x7110(r13)
    lfs     f0, -0x7920(r2)
    lfs     f1, 0xc(r4)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x80023b24
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 25, 23
    sth     r0, 0x64(r31)
branch_0x80023b24:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 24, 24
    bne-    branch_0x80023b78
    lwz     r0, 0x284(r31)
    cmpwi   r0, 0x0
    ble-    branch_0x80023b70
    lwz     r3, 0x68(r31)
    lwz     r4, 0x68(r3)
    lwz     r3, 0x64(r3)
    subf    r5, r0, r4
    addi    r5, r5, 0x1
    cmpw    r5, r3
    bgt-    branch_0x80023b64
    lfs     f0, -0x7960(r2)
    stfs    f0, 0x288(r31)
    b       branch_0x80023b78

branch_0x80023b64:
    bl      CLBCalcRatio_l___Flll
    stfs    f1, 0x288(r31)
    b       branch_0x80023b78

branch_0x80023b70:
    lfs     f0, -0x795c(r2)
    stfs    f0, 0x288(r31)
branch_0x80023b78:
    lwz     r4, 0x68(r31)
    li      r29, 0x0
    lfs     f31, -0x7960(r2)
    lha     r3, 0x54(r4)
    lha     r4, 0x56(r4)
    lfs     f1, 0xa8(r31)
    bl      CLBLinearInbetween_s___Fssf
    lwz     r4, 0x68(r31)
    mr      r30, r3
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x4c(r4)
    lfs     f2, 0x50(r4)
    bl      CLBLinearInbetween_f___Ffff
    fmr     f30, f1
    lwz     r4, 0x50(r31)
    mr      r3, r31
    bl      isNormalCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80023c48
    lwz     r3, R13Off_m0x60d8(r13)
    mr      r28, r29
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80023be0
    li      r0, 0x1
    b       branch_0x80023be4

branch_0x80023be0:
    mr      r0, r29
branch_0x80023be4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80023c04
    lis     r4, unk_00008000@ha
    addi    r4, r4, unk_00008000@l
    bl      checkStatusType__6TMarioCFl
    clrlwi. r0, r3, 24
    beq-    branch_0x80023c04
    li      r28, 0x1
branch_0x80023c04:
    clrlwi. r0, r28, 24
    beq-    branch_0x80023c48
    extsh   r0, r30
    lwz     r3, R13Off_m0x7110(r13)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x7928(r2)
    stw     r0, 0x29c(sp)
    lis     r0, 0x4330
    lfs     f2, 0x1c(r3)
    stw     r0, 0x298(sp)
    fmuls   f31, f2, f30
    lfd     f0, 0x298(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x290(sp)
    lwz     r29, 0x294(sp)
branch_0x80023c48:
    lwz     r5, 0x2d4(r31)
    mr      r4, r29
    lwz     r3, 0x2ac(r31)
    addi    r5, r5, 0x16c
    lha     r5, 0x0(r5)
    bl      CLBChaseAngleDecrease__FPsss
    lwz     r4, 0x2d4(r31)
    fmr     f1, f31
    lwz     r3, 0x2ac(r31)
    lfs     f3, -0x7960(r2)
    lfs     f2, 0x180(r4)
    addi    r3, r3, 0x4
    bl      CLBChaseDecrease__FPffff
    lfs     f0, -0x791c(r2)
    fcmpo   cr0, f30, f0
    bge-    branch_0x80023d34
    extsh.  r0, r30
    beq-    branch_0x80023d74
    extsh.  r0, r30
    blt-    branch_0x80023ca0
    extsh   r3, r30
    b       branch_0x80023ca8

branch_0x80023ca0:
    extsh   r0, r30
    neg     r3, r0
branch_0x80023ca8:
    extsh.  r0, r29
    blt-    branch_0x80023cb8
    extsh   r4, r29
    b       branch_0x80023cc0

branch_0x80023cb8:
    extsh   r0, r29
    neg     r4, r0
branch_0x80023cc0:
    xoris   r0, r3, 0x8000
    lfd     f3, -0x7928(r2)
    stw     r0, 0x29c(sp)
    lis     r0, 0x4330
    xoris   r4, r4, 0x8000
    lfs     f1, -0x795c(r2)
    stw     r0, 0x298(sp)
    lwz     r3, 0x2ac(r31)
    lfd     f0, 0x298(sp)
    stw     r4, 0x294(sp)
    fsubs   f0, f0, f3
    stw     r0, 0x290(sp)
    fdivs   f0, f1, f0
    lfd     f2, 0x290(sp)
    fsubs   f2, f2, f3
    fmuls   f0, f2, f0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x2ac(r31)
    lfsu    f2, 0xc(r3)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80023d1c
    fmr     f2, f1
    b       branch_0x80023d2c

branch_0x80023d1c:
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80023d2c
    fmr     f2, f0
branch_0x80023d2c:
    stfs    f2, 0x0(r3)
    b       branch_0x80023d74

branch_0x80023d34:
    lfs     f1, -0x795c(r2)
    lwz     r3, 0x2ac(r31)
    fdivs   f0, f1, f30
    fmuls   f0, f31, f0
    stfs    f0, 0xc(r3)
    lwz     r3, 0x2ac(r31)
    lfsu    f2, 0xc(r3)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80023d60
    fmr     f2, f1
    b       branch_0x80023d70

branch_0x80023d60:
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f2, f0
    bge-    branch_0x80023d70
    fmr     f2, f0
branch_0x80023d70:
    stfs    f2, 0x0(r3)
branch_0x80023d74:
    lwz     r3, 0x2d4(r31)
    lwz     r5, 0x2ac(r31)
    addi    r4, r3, 0x180
    lfs     f3, -0x7960(r2)
    lfs     f1, 0xc(r5)
    addi    r3, r5, 0x8
    lfs     f2, 0x0(r4)
    bl      CLBChaseDecrease__FPffff
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 24, 22
    sth     r0, 0x64(r31)
    lwz     r3, 0x78(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80023db4
    addi    r0, r3, -0x1
    stw     r0, 0x78(r31)
branch_0x80023db4:
    lwz     r3, 0x7c(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80023dc8
    addi    r0, r3, -0x1
    stw     r0, 0x7c(r31)
branch_0x80023dc8:
    lwz     r3, R13Off_m0x7110(r13)
    li      r29, 0x1
    lfs     f1, -0x7920(r2)
    lfs     f0, 0xc(r3)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    beq-    branch_0x80023df8
    lfs     f0, 0x10(r3)
    fcmpo   cr0, f0, f1
    cror    2, 1, 2
    beq-    branch_0x80023df8
    li      r29, 0x0
branch_0x80023df8:
    lwz     r3, R13Off_m0x60d8(r13)
    li      r30, 0x1
    addi    r28, r30, 0x0
    lwz     r0, 0x118(r3)
    li      r27, 0x0
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80023e1c
    mr      r0, r30
    b       branch_0x80023e20

branch_0x80023e1c:
    mr      r0, r27
branch_0x80023e20:
    clrlwi. r0, r0, 24
    beq-    branch_0x80023e40
    lis     r4, unk_00008000@ha
    addi    r4, r4, unk_00008000@l
    bl      checkStatusType__6TMarioCFl
    clrlwi. r0, r3, 24
    beq-    branch_0x80023e40
    li      r27, 0x1
branch_0x80023e40:
    clrlwi. r0, r27, 24
    bne-    branch_0x80023e58
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x80023e58
    li      r28, 0x0
branch_0x80023e58:
    clrlwi. r0, r28, 24
    bne-    branch_0x80023eac
    lwz     r4, 0x120(r31)
    li      r3, 0x0
    cmplwi  r4, 0x0
    beq-    branch_0x80023ea0
    lfs     f1, -0x7960(r2)
    li      r0, 0x1
    lfs     f0, 0xc0(r4)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80023e94
    lfs     f0, 0xc4(r4)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80023e94
    mr      r0, r3
branch_0x80023e94:
    clrlwi. r0, r0, 24
    beq-    branch_0x80023ea0
    li      r3, 0x1
branch_0x80023ea0:
    clrlwi. r0, r3, 24
    bne-    branch_0x80023eac
    li      r30, 0x0
branch_0x80023eac:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 25, 25
    beq-    branch_0x80023ee4
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80023ecc
    li      r0, 0x1
    stw     r0, 0x78(r31)
branch_0x80023ecc:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80023f20
    li      r0, 0x1
    stw     r0, 0x7c(r31)
    b       branch_0x80023f20

branch_0x80023ee4:
    clrlwi. r0, r29, 24
    bne-    branch_0x80023ef4
    clrlwi. r0, r30, 24
    beq-    branch_0x80023f00
branch_0x80023ef4:
    li      r0, 0x0
    stw     r0, 0x7c(r31)
    stw     r0, 0x78(r31)
branch_0x80023f00:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80023f20
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80023f20
    li      r0, 0x1
    stw     r0, 0x78(r31)
branch_0x80023f20:
    lwz     r3, 0x78(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80023f38
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8002482c
branch_0x80023f38:
    cmplwi  r3, 0x0
    bne-    branch_0x80023f58
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80023f58
    lhz     r0, 0x64(r31)
    rlwinm  r0, r0, 0, 26, 24
    sth     r0, 0x64(r31)
branch_0x80023f58:
    lwz     r3, 0x6c(r31)
    lfs     f1, -0x7960(r2)
    lfs     f0, 0x44(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80023f74
    li      r0, 0x1
    b       branch_0x80023f78

branch_0x80023f74:
    li      r0, 0x0
branch_0x80023f78:
    clrlwi. r0, r0, 24
    beq-    branch_0x80023f90
    clrlwi. r0, r29, 24
    bne-    branch_0x80023f90
    clrlwi. r0, r30, 24
    beq-    branch_0x8002482c
branch_0x80023f90:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80024028
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80024028
    lwz     r3, 0x2b4(r31)
    lwz     r4, 0x0(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80023fdc
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x190(sp)
    stw     r0, 0x194(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x198(sp)
    b       branch_0x80023ff8

branch_0x80023fdc:
    lwz     r4, R13Off_m0x7110(r13)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    stw     r3, 0x190(sp)
    stw     r0, 0x194(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x198(sp)
branch_0x80023ff8:
    lwz     r0, 0x190(sp)
    lwz     r3, 0x194(sp)
    stw     r0, 0x254(sp)
    lwz     r0, 0x198(sp)
    stw     r3, 0x258(sp)
    stw     r0, 0x25c(sp)
    lfs     f0, 0x254(sp)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x258(sp)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x25c(sp)
    stfs    f0, 0x94(r31)
branch_0x80024028:
    lwz     r28, 0x50(r31)
    addi    r3, r31, 0x0
    li      r27, 0x1
    addi    r4, r28, 0x0
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8002405c
    addi    r3, r31, 0x0
    addi    r4, r28, 0x0
    bl      isDefiniteCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x8002405c
    li      r27, 0x0
branch_0x8002405c:
    clrlwi. r0, r27, 24
    beq-    branch_0x80024088
    lwz     r4, 0x8c(r31)
    li      r0, 0x0
    lwz     r3, 0x90(r31)
    stw     r4, 0x27c(sp)
    stw     r3, 0x280(sp)
    lwz     r3, 0x94(r31)
    stw     r3, 0x284(sp)
    sth     r0, 0x28c(r31)
    b       branch_0x80024800

branch_0x80024088:
    lwz     r4, 0x68(r31)
    lfs     f1, 0xa8(r31)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBLinearInbetween_s___Fssf
    sth     r3, 0xa4(r31)
    lwz     r4, 0x2ac(r31)
    lwz     r3, 0x68(r31)
    lha     r5, 0x0(r4)
    lha     r0, 0x58(r3)
    lha     r4, 0xa4(r31)
    add     r0, r0, r5
    lwz     r3, R13Off_m0x7110(r13)
    add     r0, r4, r0
    lfs     f0, -0x7920(r2)
    sth     r0, 0x27a(sp)
    lfs     f1, 0xc(r3)
    lwz     r5, 0x68(r31)
    fcmpo   cr0, f1, f0
    lha     r3, 0xa6(r31)
    lha     r0, 0x5a(r5)
    add     r29, r3, r0
    cror    2, 1, 2
    bne-    branch_0x800241a0
    lwz     r4, R13Off_m0x60ac(r13)
    lis     r0, 0x4330
    lha     r3, 0x60(r5)
    lha     r4, 0x0(r4)
    xoris   r3, r3, 0x8000
    lha     r5, 0x258(r31)
    addi    r6, r4, -0x8000
    stw     r3, 0x294(sp)
    extsh   r6, r6
    lwz     r3, R13Off_m0x5eac(r13)
    subf    r4, r5, r6
    stw     r0, 0x290(sp)
    extsh   r0, r4
    lwz     r4, R13Off_m0x5ea4(r13)
    clrlslwi  r0, r0, 17, 1
    lfs     f4, -0x795c(r2)
    sraw    r0, r0, r3
    lfd     f2, -0x7928(r2)
    slwi    r0, r0, 2
    lfd     f1, 0x290(sp)
    lfsx    f3, r4, r0
    fsubs   f1, f1, f2
    lfs     f5, -0x7954(r2)
    fsubs   f2, f4, f3
    lfs     f0, -0x7918(r2)
    fmuls   f2, f5, f2
    fmuls   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x80024164
    fmr     f1, f0
    b       branch_0x80024174

branch_0x80024164:
    lfs     f0, -0x7914(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80024174
    fmr     f1, f0
branch_0x80024174:
    subf    r0, r29, r6
    extsh.  r0, r0
    bge-    branch_0x80024184
    fneg    f1, f1
branch_0x80024184:
    lwz     r3, 0x2d4(r31)
    lha     r28, 0x144(r3)
    bl      CLBRoundf_s___Ff
    addi    r4, r3, 0x0
    addi    r5, r28, 0x0
    addi    r3, r31, 0x28e
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
branch_0x800241a0:
    lha     r0, 0x28e(r31)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x27a
    add     r29, r29, r0
    bl      calcSlopeAngleX___15CPolarSubCameraFPs
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x41
    bne-    branch_0x800241fc
    lwz     r3, R13Off_m0x7110(r13)
    bl      isMarioRocketing__16TCameraMarioDataCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800241e4
    lwz     r3, 0x2d4(r31)
    lha     r3, 0x1d0(r3)
    addi    r0, r3, -0x1770
    sth     r0, 0x27a(sp)
    b       branch_0x800241fc

branch_0x800241e4:
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x800241fc
    li      r0, 0x3e8
    sth     r0, 0x27a(sp)
branch_0x800241fc:
    addi    r3, r29, -0x4000
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r3, r3, 16
    lwz     r4, 0x68(r31)
    sraw    r0, r3, r0
    lwz     r3, R13Off_m0x5ea8(r13)
    slwi    r0, r0, 2
    lfs     f2, 0x5c(r4)
    lfsx    f1, r3, r0
    lfs     f0, 0x8c(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x27c(sp)
    lfs     f0, 0x90(r31)
    stfs    f0, 0x280(sp)
    lwz     r4, 0x68(r31)
    lwz     r3, R13Off_m0x5ea4(r13)
    lfs     f2, 0x5c(r4)
    lfsx    f1, r3, r0
    lfs     f0, 0x94(r31)
    fnmsubs  f0, f2, f1, f0
    stfs    f0, 0x284(sp)
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x2
    beq-    branch_0x800246dc
    addi    r3, r31, 0x0
    addi    r4, r29, 0x0
    addi    r5, sp, 0x27c
    bl      execSecureView___15CPolarSubCameraFsP3Vec
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    bne-    branch_0x800246dc
    lfs     f0, 0x27c(sp)
    lha     r28, 0x27a(sp)
    stfs    f0, 0x248(sp)
    lfs     f0, 0x280(sp)
    stfs    f0, 0x24c(sp)
    lfs     f0, 0x284(sp)
    stfs    f0, 0x250(sp)
    lwz     r3, 0x68(r31)
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0xc(r3)
    bl      CLBLinearInbetween_f___Ffff
    lwz     r4, 0x68(r31)
    fmr     f31, f1
    lfs     f1, 0xa8(r31)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBLinearInbetween_s___Fssf
    lwz     r4, 0x6c(r31)
    clrlwi  r3, r3, 16
    lwz     r0, R13Off_m0x5eac(r13)
    mr      r5, r28
    lfs     f0, 0x44(r4)
    sraw    r0, r3, r0
    lwz     r3, R13Off_m0x5ea4(r13)
    slwi    r0, r0, 2
    fadds   f1, f31, f0
    lfsx    f30, r3, r0
    addi    r6, r29, 0x0
    addi    r3, sp, 0x248
    addi    r4, sp, 0x1dc
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    mr      r3, r31
    bl      isNormalCameraCompletely__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80024500
    lwz     r5, 0xb4(r31)
    addi    r3, sp, 0x248
    lwz     r0, 0xb8(r31)
    addi    r4, sp, 0x1e8
    addi    r6, sp, 0x1f8
    stw     r5, 0x1e8(sp)
    addi    r5, sp, 0x1f4
    addi    r7, sp, 0x1fa
    stw     r0, 0x1ec(sp)
    lwz     r0, 0xbc(r31)
    stw     r0, 0x1f0(sp)
    lfs     f0, 0xd0(r31)
    stfs    f0, 0x1ec(sp)
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    lfs     f1, 0x1f4(sp)
    fmuls   f0, f30, f31
    fmuls   f29, f30, f1
    fcmpo   cr0, f29, f0
    ble-    branch_0x80024384
    lhz     r0, 0x64(r31)
    ori     r0, r0, 0x100
    sth     r0, 0x64(r31)
    lwz     r3, 0x1dc(sp)
    lwz     r0, 0x1e0(sp)
    stw     r3, 0x98(r31)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x1e4(sp)
    stw     r0, 0xa0(r31)
    b       branch_0x80024518

branch_0x80024384:
    lwz     r3, 0x68(r31)
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x10(r3)
    lfs     f2, 0x14(r3)
    bl      CLBLinearInbetween_f___Ffff
    fsubs   f0, f31, f1
    lwz     r3, 0x2d4(r31)
    fmuls   f1, f30, f0
    lfs     f0, 0x68(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x800243b4
    fmr     f1, f0
branch_0x800243b4:
    lwz     r5, 0x50(r31)
    li      r4, 0x1
    cmpwi   r5, 0xd
    beq-    branch_0x800243fc
    lwz     r0, 0x54(r31)
    cmpwi   r0, 0xd
    bne-    branch_0x80024400
    lwz     r3, 0x6c(r31)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x800243e8
    mr      r0, r4
    b       branch_0x800243ec

branch_0x800243e8:
    li      r0, 0x0
branch_0x800243ec:
    clrlwi. r0, r0, 24
    bne-    branch_0x800243fc
    cmpwi   r5, 0x13
    bne-    branch_0x80024400
branch_0x800243fc:
    li      r4, 0x0
branch_0x80024400:
    clrlwi. r0, r4, 24
    beq-    branch_0x80024464
    fcmpo   cr0, f29, f1
    bge-    branch_0x80024464
    lhz     r4, 0x1fa(sp)
    fsubs   f2, f1, f29
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r3, sp, 0x248
    lwz     r5, R13Off_m0x5ea8(r13)
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfs     f0, 0x1e8(sp)
    lfsx    f1, r5, r0
    addi    r4, sp, 0x1e8
    lwz     r8, R13Off_m0x5ea4(r13)
    addi    r5, sp, 0x1f4
    fmadds  f0, f2, f1, f0
    addi    r6, sp, 0x1f8
    addi    r7, sp, 0x1fa
    stfs    f0, 0x1e8(sp)
    lfsx    f1, r8, r0
    lfs     f0, 0x1f0(sp)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0x1f0(sp)
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
branch_0x80024464:
    lhz     r0, 0x64(r31)
    li      r28, 0x0
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x800244b8
    mr      r3, r31
    bl      isNormalCameraCompletely__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800244b8
    lfs     f1, 0x250(r31)
    lfs     f0, -0x791c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800244b8
    lwz     r3, 0x68(r31)
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x10(r3)
    lfs     f2, 0x14(r3)
    bl      CLBLinearInbetween_f___Ffff
    lfs     f0, -0x791c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x800244b8
    li      r28, 0x1
branch_0x800244b8:
    clrlwi. r0, r28, 24
    beq-    branch_0x800244dc
    lfs     f0, 0x1e8(sp)
    stfs    f0, 0x98(r31)
    lfs     f0, 0x1ec(sp)
    stfs    f0, 0x9c(r31)
    lfs     f0, 0x1f0(sp)
    stfs    f0, 0xa0(r31)
    b       branch_0x800244f4

branch_0x800244dc:
    lfs     f1, 0x1f4(sp)
    mr      r6, r29
    lha     r5, 0x1f8(sp)
    addi    r3, sp, 0x248
    addi    r4, r31, 0x98
    bl      CLBPolarToCross__FRC3VecP3Vecfss
branch_0x800244f4:
    lfs     f0, 0x1e0(sp)
    stfs    f0, 0x9c(r31)
    b       branch_0x80024518

branch_0x80024500:
    lwz     r3, 0x1dc(sp)
    lwz     r0, 0x1e0(sp)
    stw     r3, 0x98(r31)
    stw     r0, 0x9c(r31)
    lwz     r0, 0x1e4(sp)
    stw     r0, 0xa0(r31)
branch_0x80024518:
    lwz     r0, R13Off_m0x5eac(r13)
    clrlwi  r3, r29, 16
    lwz     r6, 0x50(r31)
    li      r5, 0x1
    sraw    r0, r3, r0
    lwz     r4, R13Off_m0x5ea8(r13)
    slwi    r0, r0, 2
    lwz     r3, R13Off_m0x5ea4(r13)
    cmpwi   r6, 0xd
    lfsx    f4, r4, r0
    lfsx    f5, r3, r0
    beq-    branch_0x80024580
    lwz     r0, 0x54(r31)
    cmpwi   r0, 0xd
    bne-    branch_0x80024584
    lwz     r3, 0x6c(r31)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x8002456c
    mr      r0, r5
    b       branch_0x80024570

branch_0x8002456c:
    li      r0, 0x0
branch_0x80024570:
    clrlwi. r0, r0, 24
    bne-    branch_0x80024580
    cmpwi   r6, 0x13
    bne-    branch_0x80024584
branch_0x80024580:
    li      r5, 0x0
branch_0x80024584:
    clrlwi. r0, r5, 24
    beq-    branch_0x80024628
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0xa0(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0x0(r3)
    fsubs   f3, f1, f0
    lfs     f1, 0x98(r31)
    lfs     f0, -0x7960(r2)
    fsubs   f2, f2, f1
    fmuls   f1, f3, f3
    fmadds  f6, f2, f2, f1
    fcmpo   cr0, f6, f0
    ble-    branch_0x800245e8
    frsqrte f3, f6
    lfd     f2, -0x7948(r2)
    lfd     f0, -0x7940(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f6, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f6, f0
    frsp    f0, f0
    stfs    f0, 0x130(sp)
    lfs     f6, 0x130(sp)
branch_0x800245e8:
    lwz     r3, 0x2d4(r31)
    fmuls   f1, f31, f30
    lfs     f0, 0x68(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x80024600
    b       branch_0x80024604

branch_0x80024600:
    fmr     f0, f1
branch_0x80024604:
    fcmpo   cr0, f6, f0
    bge-    branch_0x80024628
    fsubs   f1, f0, f6
    lfs     f0, 0x98(r31)
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x98(r31)
    lfs     f0, 0xa0(r31)
    fmadds  f0, f5, f1, f0
    stfs    f0, 0xa0(r31)
branch_0x80024628:
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0xd
    beq-    branch_0x80024668
    bge-    branch_0x80024640
    cmpwi   r0, 0x8
    beq-    branch_0x80024668
branch_0x80024640:
    lwz     r3, 0x2ac(r31)
    lfs     f0, 0x98(r31)
    lfs     f1, 0x4(r3)
    fnmsubs  f0, f1, f4, f0
    stfs    f0, 0x98(r31)
    lwz     r3, 0x2ac(r31)
    lfs     f0, 0xa0(r31)
    lfs     f1, 0x4(r3)
    fnmsubs  f0, f1, f5, f0
    stfs    f0, 0xa0(r31)
branch_0x80024668:
    lwz     r3, 0x6c(r31)
    lfs     f1, -0x7960(r2)
    lfs     f0, 0x44(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80024684
    li      r0, 0x1
    b       branch_0x80024688

branch_0x80024684:
    li      r0, 0x0
branch_0x80024688:
    clrlwi. r0, r0, 24
    beq-    branch_0x800246dc
    clrlwi. r0, r30, 24
    beq-    branch_0x800246dc
    lwz     r3, 0x68(r31)
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0xc(r3)
    bl      CLBLinearInbetween_f___Ffff
    lwz     r3, 0x6c(r31)
    mr      r6, r29
    lha     r5, 0x27a(sp)
    addi    r4, sp, 0x26c
    lfs     f0, 0x44(r3)
    addi    r3, r3, 0x24
    fadds   f1, f1, f0
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    lwz     r3, 0x6c(r31)
    addi    r4, sp, 0x26c
    addi    r5, r3, 0x24
    bl      warpPosAndAt__16TCameraInbetweenFRC3VecRC3Vec
branch_0x800246dc:
    lfs     f0, 0x98(r31)
    mr      r3, r31
    stfs    f0, 0x80(r31)
    lfs     f0, 0xa0(r31)
    stfs    f0, 0x88(r31)
    bl      execHeightPan___15CPolarSubCameraFv
    lfs     f0, 0x90(r31)
    mr      r3, r31
    stfs    f0, 0x280(sp)
    lwz     r4, 0x80(r31)
    lwz     r0, 0x84(r31)
    stw     r4, 0x260(sp)
    stw     r0, 0x264(sp)
    lwz     r0, 0x88(r31)
    stw     r0, 0x268(sp)
    bl      isNeedWallCheck___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80024798
    addi    r3, r31, 0x0
    addi    r4, sp, 0x260
    bl      execWallCheck___15CPolarSubCameraFP3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x80024798
    lfs     f1, 0x88(r31)
    lfs     f0, 0x94(r31)
    lfs     f2, 0x80(r31)
    fsubs   f1, f1, f0
    lfs     f0, 0x8c(r31)
    fsubs   f2, f2, f0
    fmuls   f0, f1, f1
    fmadds  f1, f2, f2, f0
    bl      MsSqrtf__Ff
    lfs     f2, 0x84(r31)
    lfs     f0, 0x90(r31)
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0xa4(r31)
    lfs     f3, 0x88(r31)
    lfs     f1, 0x94(r31)
    lfs     f2, 0x80(r31)
    lfs     f0, 0x8c(r31)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0xa6(r31)
    lfs     f0, 0xdc(r31)
    stfs    f0, 0xa8(r31)
branch_0x80024798:
    mr      r3, r31
    bl      isNeedRoofCheck___15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x800247cc
    lwz     r0, 0x260(sp)
    addi    r4, sp, 0x23c
    lwz     r5, 0x264(sp)
    mr      r3, r31
    stw     r0, 0x23c(sp)
    lwz     r0, 0x268(sp)
    stw     r5, 0x240(sp)
    stw     r0, 0x244(sp)
    bl      execRoofCheck___15CPolarSubCameraF3Vec
branch_0x800247cc:
    mr      r3, r31
    bl      isNeedGroundCheck___15CPolarSubCameraFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80024800
    lwz     r0, 0x260(sp)
    addi    r4, sp, 0x230
    lwz     r5, 0x264(sp)
    mr      r3, r31
    stw     r0, 0x230(sp)
    lwz     r0, 0x268(sp)
    stw     r5, 0x234(sp)
    stw     r0, 0x238(sp)
    bl      execGroundCheck___15CPolarSubCameraF3Vec
branch_0x80024800:
    lfs     f0, 0x27c(sp)
    addi    r5, sp, 0x224
    lfs     f1, 0x280(sp)
    addi    r4, r31, 0x80
    stfs    f0, 0x224(sp)
    lfs     f0, 0x284(sp)
    stfs    f1, 0x228(sp)
    lwz     r6, R13Off_m0x60b4(r13)
    stfs    f0, 0x22c(sp)
    lwz     r3, 0x6c(r31)
    bl      execCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
branch_0x8002482c:
    lwz     r0, 0x78(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80024a08
    mr      r3, r31
    lwz     r4, 0x54(r31)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80024890
    mr      r3, r31
    lwz     r4, 0x50(r31)
    bl      isRailCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80024890
    lwz     r3, 0x6c(r31)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x80024878
    li      r0, 0x1
    b       branch_0x8002487c

branch_0x80024878:
    li      r0, 0x0
branch_0x8002487c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80024890
    lfs     f30, -0x795c(r2)
    fmr     f29, f30
    b       branch_0x800249c0

branch_0x80024890:
    lwz     r0, 0x50(r31)
    lwz     r3, 0x68(r31)
    cmpwi   r0, 0x41
    lfs     f29, 0x94(r3)
    lfs     f30, 0x9c(r3)
    bne-    branch_0x80024900
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x80024900
    lwz     r3, R13Off_m0x7110(r13)
    lwz     r0, 0x18(r3)
    cmplwi  r0, 0x78
    bge-    branch_0x80024900
    subfic  r0, r0, 0x78
    lwz     r3, 0x68(r31)
    stw     r0, 0x294(sp)
    lis     r0, 0x4330
    lfd     f3, -0x7908(r2)
    stw     r0, 0x290(sp)
    lfs     f0, -0x7910(r2)
    lfd     f2, 0x290(sp)
    lfs     f1, 0x9c(r3)
    fsubs   f3, f2, f3
    lfs     f2, -0x7960(r2)
    fdivs   f3, f3, f0
    bl      CLBLinearInbetween_f___Ffff
    fmr     f30, f1
branch_0x80024900:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 29, 29
    beq-    branch_0x80024914
    lfs     f29, -0x795c(r2)
    b       branch_0x80024970

branch_0x80024914:
    lwz     r3, 0x120(r31)
    lfs     f1, -0x7960(r2)
    lfs     f0, 0x5c(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x80024934
    lfs     f0, 0x58(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x80024970
branch_0x80024934:
    lwz     r3, R13Off_m0x7110(r13)
    lfs     f0, -0x790c(r2)
    lfs     f3, 0xc(r3)
    fcmpo   cr0, f3, f0
    ble-    branch_0x8002494c
    fmr     f3, f0
branch_0x8002494c:
    lfs     f1, -0x790c(r2)
    lfs     f2, -0x7960(r2)
    bl      CLBCalcRatio_f___Ffff
    lwz     r3, 0x68(r31)
    fmr     f3, f1
    lfs     f1, 0x94(r3)
    lfs     f2, 0x98(r3)
    bl      CLBEaseInInbetween_f___Ffff
    fmr     f29, f1
branch_0x80024970:
    lwz     r3, 0x120(r31)
    lfs     f1, -0x7960(r2)
    lfs     f0, 0x5c(r3)
    fcmpu   cr0, f1, f0
    beq-    branch_0x800249c0
    lwz     r3, R13Off_m0x7110(r13)
    lfs     f0, -0x790c(r2)
    lfs     f3, 0x10(r3)
    fcmpo   cr0, f3, f0
    ble-    branch_0x8002499c
    fmr     f3, f0
branch_0x8002499c:
    lfs     f1, -0x790c(r2)
    lfs     f2, -0x7960(r2)
    bl      CLBCalcRatio_f___Ffff
    lwz     r3, 0x68(r31)
    fmr     f3, f1
    lfs     f1, 0x9c(r3)
    lfs     f2, 0xa0(r3)
    bl      CLBEaseInInbetween_f___Ffff
    fmr     f30, f1
branch_0x800249c0:
    lwz     r3, 0x6c(r31)
    fmr     f2, f29
    fmr     f31, f29
    lfs     f3, -0x7960(r2)
    lfs     f1, 0x18(r3)
    addi    r28, r3, 0x18
    addi    r3, r31, 0x10
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f30
    lfs     f1, 0x4(r28)
    lfs     f3, -0x7960(r2)
    addi    r3, r31, 0x14
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f31
    lfs     f1, 0x8(r28)
    lfs     f3, -0x7960(r2)
    addi    r3, r31, 0x18
    bl      CLBChaseDecrease__FPffff
branch_0x80024a08:
    lwz     r0, 0x7c(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80024a64
    lwz     r5, 0x68(r31)
    addi    r3, r31, 0x3c
    lwz     r4, 0x6c(r31)
    lfs     f2, 0xa4(r5)
    lfs     f30, 0xa8(r5)
    addi    r28, r4, 0x24
    fmr     f31, f2
    lfs     f1, 0x24(r4)
    lfs     f3, -0x7960(r2)
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f30
    lfs     f1, 0x4(r28)
    lfs     f3, -0x7960(r2)
    addi    r3, r31, 0x40
    bl      CLBChaseDecrease__FPffff
    fmr     f2, f31
    lfs     f1, 0x8(r28)
    lfs     f3, -0x7960(r2)
    addi    r3, r31, 0x44
    bl      CLBChaseDecrease__FPffff
branch_0x80024a64:
    lmw     r27, 0x2a4(sp)
    lwz     r0, 0x2d4(sp)
    lfd     f31, 0x2c8(sp)
    lfd     f30, 0x2c0(sp)
    mtlr    r0
    lfd     f29, 0x2b8(sp)
    addi    sp, sp, 0x2d0
    blr


.globl calcSlopeAngleX___15CPolarSubCameraFPs
calcSlopeAngleX___15CPolarSubCameraFPs: # 0x80024a84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x110(sp)
    stfd    f31, 0x108(sp)
    stfd    f30, 0x100(sp)
    stw     r31, 0xfc(sp)
    li      r31, 0x0
    stw     r30, 0xf8(sp)
    addi    r30, r4, 0x0
    stw     r29, 0xf4(sp)
    addi    r29, r3, 0x0
    stw     r28, 0xf0(sp)
    li      r28, 0x0
    lwz     r5, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r5)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80024ad0
    li      r0, 0x1
    b       branch_0x80024ad4

branch_0x80024ad0:
    mr      r0, r28
branch_0x80024ad4:
    clrlwi. r0, r0, 24
    beq-    branch_0x80024af8
    lis     r4, unk_00008000@ha
    addi    r3, r5, 0x0
    addi    r4, r4, unk_00008000@l
    bl      checkStatusType__6TMarioCFl
    clrlwi. r0, r3, 24
    beq-    branch_0x80024af8
    li      r28, 0x1
branch_0x80024af8:
    clrlwi. r0, r28, 24
    bne-    branch_0x80024cfc
    lwz     r3, R13Off_m0x608c(r13)
    li      r4, 0x0
    lwz     r3, 0x0(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x80024b38
    lhz     r0, 0x0(r3)
    andi.   r0, r0, 0xa000
    beq-    branch_0x80024b28
    li      r0, 0x1
    b       branch_0x80024b2c

branch_0x80024b28:
    mr      r0, r4
branch_0x80024b2c:
    clrlwi. r0, r0, 24
    beq-    branch_0x80024b38
    li      r4, 0x1
branch_0x80024b38:
    clrlwi. r0, r4, 24
    beq-    branch_0x80024cfc
    mr      r3, r29
    bl      isSlopeCameraMode__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80024cfc
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f0, 0x10(r29)
    lfs     f1, 0x0(r3)
    lfs     f3, 0x8(r3)
    fsubs   f1, f1, f0
    lfs     f2, 0x18(r29)
    lfs     f0, -0x7960(r2)
    fsubs   f2, f3, f2
    stfs    f1, 0xe0(sp)
    stfs    f0, 0xe4(sp)
    stfs    f2, 0xe8(sp)
    lfs     f1, 0xe0(sp)
    lfs     f0, 0xe4(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0xe8(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x7958(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    mfcr    r0
    extrwi. r0, r0, 1, 2
    bne-    branch_0x80024cfc
    bl      SMS_GetMarioGrLevel__Fv
    lwz     r5, 0x2d4(r29)
    fmr     f31, f1
    addi    r3, sp, 0xe0
    lfs     f30, 0x20c(r5)
    addi    r4, sp, 0xd4
    lha     r31, 0x1e4(r5)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0xd4(sp)
    clrlwi  r3, r31, 16
    addi    r4, sp, 0xc4
    fmuls   f0, f0, f30
    stfs    f0, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fmuls   f0, f0, f30
    stfs    f0, 0xdc(sp)
    lwz     r9, R13Off_m0x60b4(r13)
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, 0x0(r9)
    lwz     r6, 0x4(r9)
    sraw    r0, r3, r0
    slwi    r8, r0, 2
    lfs     f0, 0xd4(sp)
    stw     r5, 0x98(sp)
    lwz     r5, R13Off_m0x5ea4(r13)
    stw     r6, 0x9c(sp)
    lfs     f1, -0x795c(r2)
    lwz     r0, 0x8(r9)
    lwz     r6, R13Off_m0x5ea8(r13)
    stw     r0, 0xa0(sp)
    lfs     f2, -0x7900(r2)
    lfs     f3, 0x98(sp)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f0, f3, f0
    stfs    f0, 0x98(sp)
    lfs     f3, 0x9c(sp)
    lfs     f0, 0xd8(sp)
    fadds   f0, f3, f0
    stfs    f0, 0x9c(sp)
    lfs     f3, 0xa0(sp)
    lfs     f0, 0xdc(sp)
    fadds   f0, f3, f0
    stfs    f0, 0xa0(sp)
    lwz     r0, 0x98(sp)
    lwz     r7, 0x9c(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0xa0(sp)
    stw     r7, 0xbc(sp)
    stw     r0, 0xc0(sp)
    lwz     r0, 0xb8(sp)
    lwz     r7, 0xbc(sp)
    stw     r0, 0xc8(sp)
    lwz     r0, 0xc0(sp)
    stw     r7, 0xcc(sp)
    stw     r0, 0xd0(sp)
    lfsx    f0, r5, r8
    lfsx    f5, r6, r8
    fdivs   f4, f1, f0
    lfs     f0, 0x4(r9)
    lfs     f1, 0xc8(sp)
    lfs     f3, 0xd0(sp)
    fmuls   f4, f5, f4
    fmadds  f2, f30, f4, f2
    fadds   f2, f2, f0
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    fsubs   f1, f1, f31
    lfs     f0, -0x7960(r2)
    li      r3, 0x0
    fcmpo   cr0, f1, f0
    fmr     f2, f1
    ble-    branch_0x80024ce4
    fmr     f1, f30
    bl      matan__Fff
branch_0x80024ce4:
    extsh   r0, r3
    cmpw    r0, r31
    ble-    branch_0x80024cf8
    li      r31, 0x0
    b       branch_0x80024cfc

branch_0x80024cf8:
    mr      r31, r3
branch_0x80024cfc:
    lwz     r5, 0x2d4(r29)
    addi    r4, r31, 0x0
    addi    r3, r29, 0x28c
    lha     r5, 0x1f8(r5)
    bl      CLBChaseGeneralConstantSpecifySpeed_s___FPsss
    lha     r3, 0x28c(r29)
    lha     r0, 0x0(r30)
    subf    r0, r3, r0
    sth     r0, 0x0(r30)
    lwz     r4, 0x2d4(r29)
    lha     r5, 0x0(r30)
    addi    r3, r4, 0x1d0
    lha     r0, 0x1bc(r4)
    lha     r3, 0x0(r3)
    cmpw    r5, r3
    ble-    branch_0x80024d44
    mr      r5, r3
    b       branch_0x80024d50

branch_0x80024d44:
    cmpw    r5, r0
    bge-    branch_0x80024d50
    mr      r5, r0
branch_0x80024d50:
    sth     r5, 0x0(r30)
    lwz     r0, 0x114(sp)
    lfd     f31, 0x108(sp)
    lfd     f30, 0x100(sp)
    mtlr    r0
    lwz     r31, 0xfc(sp)
    lwz     r30, 0xf8(sp)
    lwz     r29, 0xf4(sp)
    lwz     r28, 0xf0(sp)
    addi    sp, sp, 0x110
    blr


.globl checkStatusType__6TMarioCFl
checkStatusType__6TMarioCFl: # 0x80024d7c
    lwz     r0, 0x7c(r3)
    and.    r0, r0, r4
    beq-    branch_0x80024d90
    li      r3, 0x1
    blr

branch_0x80024d90:
    li      r3, 0x0
    blr


.globl isMomentDefinite___15CPolarSubCameraCFv
isMomentDefinite___15CPolarSubCameraCFv: # 0x80024d98
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    li      r31, 0x0
    stw     r30, 0x10(sp)
    mr      r30, r3
    lhz     r0, 0x64(r3)
    rlwinm. r0, r0, 0, 23, 23
    bne-    branch_0x80024e04
    mr      r3, r30
    bl      isNormalCameraCompletely__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x80024e04
    lfs     f1, 0x250(r30)
    lfs     f0, -0x791c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80024e04
    lwz     r3, 0x68(r30)
    lfs     f3, 0xa8(r30)
    lfs     f1, 0x10(r3)
    lfs     f2, 0x14(r3)
    bl      CLBLinearInbetween_f___Ffff
    lfs     f0, -0x791c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80024e04
    li      r31, 0x1
branch_0x80024e04:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl execInvalidAutoChase___15CPolarSubCameraFv
execInvalidAutoChase___15CPolarSubCameraFv: # 0x80024e20
    lwz     r4, 0x68(r3)
    lwz     r0, 0x68(r4)
    stw     r0, 0x284(r3)
    blr


.globl isMarioCrabWalk___15CPolarSubCameraCFv
isMarioCrabWalk___15CPolarSubCameraCFv: # 0x80024e30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r31, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    lwz     r5, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r5)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80024e6c
    li      r0, 0x1
    b       branch_0x80024e70

branch_0x80024e6c:
    mr      r0, r31
branch_0x80024e70:
    clrlwi. r0, r0, 24
    beq-    branch_0x80024e94
    lis     r4, unk_00008000@ha
    addi    r3, r5, 0x0
    addi    r4, r4, unk_00008000@l
    bl      checkStatusType__6TMarioCFl
    clrlwi. r0, r3, 24
    beq-    branch_0x80024e94
    li      r30, 0x1
branch_0x80024e94:
    clrlwi. r0, r30, 24
    beq-    branch_0x80024eb0
    lwz     r3, 0x120(r29)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80024eb0
    li      r31, 0x1
branch_0x80024eb0:
    lwz     r0, 0x3c(sp)
    mr      r3, r31
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl isMarioAimWithGun___15CPolarSubCameraCFv
isMarioAimWithGun___15CPolarSubCameraCFv: # 0x80024ed0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r31, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    lwz     r5, R13Off_m0x60d8(r13)
    lwz     r0, 0x118(r5)
    rlwinm. r0, r0, 0, 16, 16
    beq-    branch_0x80024f0c
    li      r0, 0x1
    b       branch_0x80024f10

branch_0x80024f0c:
    mr      r0, r31
branch_0x80024f10:
    clrlwi. r0, r0, 24
    beq-    branch_0x80024f34
    lis     r4, unk_00008000@ha
    addi    r3, r5, 0x0
    addi    r4, r4, unk_00008000@l
    bl      checkStatusType__6TMarioCFl
    clrlwi. r0, r3, 24
    beq-    branch_0x80024f34
    li      r30, 0x1
branch_0x80024f34:
    clrlwi. r0, r30, 24
    beq-    branch_0x80024f50
    lwz     r3, 0x120(r29)
    lwz     r0, 0xd0(r3)
    rlwinm. r0, r0, 0, 21, 21
    beq-    branch_0x80024f50
    li      r31, 0x1
branch_0x80024f50:
    lwz     r0, 0x3c(sp)
    mr      r3, r31
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    blr


.globl onMoveApproach___15CPolarSubCameraFv
onMoveApproach___15CPolarSubCameraFv: # 0x80024f70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lfs     f4, 0x10(r3)
    lfs     f3, 0x3c(r3)
    lfs     f2, 0x14(r3)
    fsubs   f5, f4, f3
    lfs     f1, 0x40(r3)
    lfs     f3, 0x18(r3)
    fsubs   f4, f2, f1
    lfs     f1, 0x44(r3)
    fsubs   f3, f3, f1
    lfs     f0, -0x7960(r2)
    fmuls   f2, f5, f5
    fmuls   f1, f4, f4
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f31, f3, f1
    fcmpo   cr0, f31, f0
    ble-    branch_0x80024ff8
    frsqrte f3, f31
    lfd     f2, -0x7948(r2)
    lfd     f0, -0x7940(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f31, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f31, f0
    frsp    f0, f0
    stfs    f0, 0xc(sp)
    lfs     f31, 0xc(sp)
branch_0x80024ff8:
    lwz     r3, 0x68(r31)
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0xc(r3)
    bl      CLBLinearInbetween_f___Ffff
    fsubs   f0, f31, f1
    lwz     r3, 0x6c(r31)
    stfs    f0, 0x44(r3)
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl offMoveApproach___15CPolarSubCameraFv
offMoveApproach___15CPolarSubCameraFv: # 0x80025030
    lfs     f0, -0x7960(r2)
    lwz     r3, 0x6c(r3)
    stfs    f0, 0x44(r3)
    blr


.globl rotateY_ByStickX___15CPolarSubCameraFf
rotateY_ByStickX___15CPolarSubCameraFf: # 0x80025040
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stfd    f31, 0x28(sp)
    fmr     f31, f1
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      SMS_IsMarioOpeningDoor__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x800250b8
    lwz     r4, 0x68(r31)
    lfs     f1, 0xa8(r31)
    lha     r3, 0x20(r4)
    lha     r4, 0x22(r4)
    bl      CLBLinearInbetween_s___Fssf
    extsh   r0, r3
    lfd     f1, -0x7928(r2)
    xoris   r3, r0, 0x8000
    lha     r0, 0xa6(r31)
    stw     r3, 0x1c(sp)
    lis     r3, 0x4330
    stw     r3, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    fmuls   f0, f31, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    add     r0, r0, r3
    sth     r0, 0xa6(r31)
branch_0x800250b8:
    lwz     r0, 0x34(sp)
    lfd     f31, 0x28(sp)
    lwz     r31, 0x24(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl rotateX_ByStickY___15CPolarSubCameraFf
rotateX_ByStickY___15CPolarSubCameraFf: # 0x800250d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stfd    f31, 0x20(sp)
    fmr     f31, f1
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMS_IsMarioOpeningDoor__Fv
    clrlwi. r0, r3, 24
    bne-    branch_0x8002517c
    lwz     r4, 0x68(r31)
    mr      r3, r31
    lfs     f0, 0xa8(r31)
    lfs     f1, 0x1c(r4)
    fnmsubs  f0, f31, f1, f0
    stfs    f0, 0xa8(r31)
    lwz     r4, 0x50(r31)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80025150
    lfs     f1, 0xa8(r31)
    lfs     f0, -0x795c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80025138
    fmr     f1, f0
    b       branch_0x80025148

branch_0x80025138:
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80025148
    fmr     f1, f0
branch_0x80025148:
    stfs    f1, 0xa8(r31)
    b       branch_0x8002517c

branch_0x80025150:
    lfs     f1, 0x26c(r31)
    lfs     f2, 0xa8(r31)
    lfs     f0, 0x268(r31)
    fcmpo   cr0, f2, f1
    ble-    branch_0x8002516c
    fmr     f2, f1
    b       branch_0x80025178

branch_0x8002516c:
    fcmpo   cr0, f2, f0
    bge-    branch_0x80025178
    fmr     f2, f0
branch_0x80025178:
    stfs    f2, 0xa8(r31)
branch_0x8002517c:
    lwz     r0, 0x2c(sp)
    lfd     f31, 0x20(sp)
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl calcNowTargetFromPosAndAt___15CPolarSubCameraFRC3VecRC3Vec
calcNowTargetFromPosAndAt___15CPolarSubCameraFRC3VecRC3Vec: # 0x80025194
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r5, 0x0
    addi    r5, sp, 0x20
    stw     r30, 0x30(sp)
    addi    r30, r4, 0x0
    addi    r6, sp, 0x1e
    stw     r29, 0x2c(sp)
    addi    r29, r3, 0x0
    addi    r3, r31, 0x0
    addi    r7, sp, 0x1c
    bl      CLBCrossToPolar__FRC3VecRC3VecPfPsPs
    lwz     r4, 0x68(r29)
    lha     r5, 0x1e(sp)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBCalcRatio_s___Fsss
    stfs    f1, 0xa8(r29)
    mr      r3, r29
    lwz     r4, 0x50(r29)
    bl      isLButtonCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80025228
    lfs     f1, 0xa8(r29)
    lfs     f0, -0x795c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80025210
    fmr     f1, f0
    b       branch_0x80025220

branch_0x80025210:
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80025220
    fmr     f1, f0
branch_0x80025220:
    stfs    f1, 0xa8(r29)
    b       branch_0x80025254

branch_0x80025228:
    lfs     f1, 0x26c(r29)
    lfs     f2, 0xa8(r29)
    lfs     f0, 0x268(r29)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80025244
    fmr     f2, f1
    b       branch_0x80025250

branch_0x80025244:
    fcmpo   cr0, f2, f0
    bge-    branch_0x80025250
    fmr     f2, f0
branch_0x80025250:
    stfs    f2, 0xa8(r29)
branch_0x80025254:
    lwz     r4, 0x68(r29)
    lfs     f1, 0xa8(r29)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBLinearInbetween_s___Fssf
    sth     r3, 0xa4(r29)
    lha     r0, 0x1c(sp)
    sth     r0, 0xa6(r29)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x80(r29)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x84(r29)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x88(r29)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x98(r29)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x9c(r29)
    lfs     f0, 0x8(r30)
    stfs    f0, 0xa0(r29)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x8c(r29)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x90(r29)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x94(r29)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    lwz     r29, 0x2c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl calcDistFromXRotRatio___15CPolarSubCameraCFv
calcDistFromXRotRatio___15CPolarSubCameraCFv: # 0x800252d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x68(r3)
    lfs     f3, 0xa8(r3)
    lfs     f1, 0x8(r4)
    lfs     f2, 0xc(r4)
    bl      CLBLinearInbetween_f___Ffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcAngleXFromXRotRatio___15CPolarSubCameraCFv
calcAngleXFromXRotRatio___15CPolarSubCameraCFv: # 0x80025308
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r4, 0x68(r3)
    lfs     f1, 0xa8(r3)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBLinearInbetween_s___Fssf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getUsualLookat__15CPolarSubCameraCFv
getUsualLookat__15CPolarSubCameraCFv: # 0x80025338
    stwu    sp, -0x28(sp)
    lwz     r4, 0x2b4(r4)
    lwz     r5, 0x0(r4)
    cmplwi  r5, 0x0
    beq-    branch_0x80025368
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x24(sp)
    b       branch_0x80025384

branch_0x80025368:
    lwz     r5, R13Off_m0x7110(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x1c(sp)
    stw     r0, 0x20(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x24(sp)
branch_0x80025384:
    lwz     r4, 0x1c(sp)
    lwz     r0, 0x20(sp)
    stw     r4, 0x0(r3)
    stw     r0, 0x4(r3)
    lwz     r0, 0x24(sp)
    stw     r0, 0x8(r3)
    addi    sp, sp, 0x28
    blr


.globl getToroccoMtx___15CPolarSubCameraCFv
getToroccoMtx___15CPolarSubCameraCFv: # 0x800253a4
    lwz     r3, R13Off_m0x60d8(r13)
    lwz     r3, 0x3f8(r3)
    lwz     r3, 0x4(r3)
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x60
    blr


.globl isNowInbetween__15CPolarSubCameraCFv
isNowInbetween__15CPolarSubCameraCFv: # 0x800253bc
    lwz     r3, 0x6c(r3)
    lwz     r0, 0x4(r3)
    cmpwi   r0, 0x0
    ble-    branch_0x800253d4
    li      r3, 0x1
    blr

branch_0x800253d4:
    li      r3, 0x0
    blr


.globl loadAfter__15CPolarSubCameraFv
loadAfter__15CPolarSubCameraFv: # 0x800253dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stfd    f31, 0x138(sp)
    stw     r31, 0x134(sp)
    mr      r31, r3
    stw     r30, 0x130(sp)
    bl      loadAfter__Q26JDrama8TNameRefFv
    li      r0, 0x0
    stw     r0, 0x5c(r31)
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x7
    bne-    branch_0x80025420
    li      r0, 0x14
    stw     r0, 0x5c(r31)
    b       branch_0x80025464

branch_0x80025420:
    bl      SMS_isExMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80025438
    li      r0, 0x26
    stw     r0, 0x5c(r31)
    b       branch_0x80025464

branch_0x80025438:
    bl      SMS_isMultiPlayerMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80025450
    li      r0, 0x2
    stw     r0, 0x5c(r31)
    b       branch_0x80025464

branch_0x80025450:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80025464
    li      r0, 0x2e
    stw     r0, 0x5c(r31)
branch_0x80025464:
    lwz     r30, R13Off_m0x7fcc(r13)
    mr      r3, r30
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, R13Off_m0x70c0(r13)
    mr      r5, r30
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    mr.     r4, r3
    beq-    branch_0x800254a4
    addi    r3, r31, 0x0
    li      r5, 0x1
    bl      changeCamModeSpecifyCamMapToolAndFrame___15CPolarSubCameraFPC14TCameraMapTooli
    b       branch_0x800254b4

branch_0x800254a4:
    lwz     r4, 0x5c(r31)
    addi    r3, r31, 0x0
    li      r5, 0x1
    bl      changeCamModeSpecifyFrame___15CPolarSubCameraFii
branch_0x800254b4:
    lwz     r0, 0x50(r31)
    lwz     r3, 0x68(r31)
    slwi    r0, r0, 2
    add     r4, r31, r0
    lwz     r4, 0x2d8(r4)
    bl      copySaveParam__16TCameraKindParamFRC17TCamSaveKindParam
    lwz     r5, 0x68(r31)
    addi    r3, sp, 0xec
    crxor   6, 6, 6
    li      r4, 0x40
    lfs     f0, 0x0(r5)
    addi    r5, r2, R2Off_m0x78fc
    stfs    f0, 0x48(r31)
    lwz     r6, 0x68(r31)
    lfs     f0, 0x4(r6)
    stfs    f0, 0x28(r31)
    lwz     r7, R13Off_m0x6048(r13)
    lwz     r6, R13Off_m0x7fc8(r13)
    lbz     r7, 0xd0(r7)
    bl      snprintf
    addi    r3, sp, 0xec
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    mr      r4, r3
    lwz     r3, R13Off_m0x70c0(r13)
    addi    r5, sp, 0xec
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c(r12)
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x80025578
    lfs     f1, 0x26c(r31)
    lfs     f2, 0x10(r3)
    lfs     f0, 0x268(r31)
    fcmpo   cr0, f2, f1
    ble-    branch_0x8002554c
    fmr     f2, f1
    b       branch_0x80025558

branch_0x8002554c:
    fcmpo   cr0, f2, f0
    bge-    branch_0x80025558
    fmr     f2, f0
branch_0x80025558:
    stfs    f2, 0xa8(r31)
    lfs     f1, 0x1c(r3)
    lfs     f0, -0x78f4(r2)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    addi    r0, r3, -0x8000
    sth     r0, 0xa6(r31)
    b       branch_0x800255b8

branch_0x80025578:
    lwz     r3, 0x2d4(r31)
    lfs     f1, 0x26c(r31)
    lfs     f2, 0x18(r3)
    lfs     f0, 0x268(r31)
    fcmpo   cr0, f2, f1
    ble-    branch_0x80025598
    fmr     f2, f1
    b       branch_0x800255a4

branch_0x80025598:
    fcmpo   cr0, f2, f0
    bge-    branch_0x800255a4
    fmr     f2, f0
branch_0x800255a4:
    stfs    f2, 0xa8(r31)
    lwz     r3, R13Off_m0x60ac(r13)
    lha     r3, 0x0(r3)
    addi    r0, r3, -0x8000
    sth     r0, 0xa6(r31)
branch_0x800255b8:
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x800255e8
    lwz     r3, 0x2b8(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800255e8
    lbz     r0, 0xc(r3)
    clrlwi. r0, r0, 31
    beq-    branch_0x800255e8
    addi    r3, r31, 0x0
    li      r4, 0x2e
    bl      setUpToLButtonCamera___15CPolarSubCameraFi
branch_0x800255e8:
    lfs     f0, 0xa8(r31)
    stfs    f0, 0x270(r31)
    lwz     r4, 0x68(r31)
    lfs     f1, 0xa8(r31)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBLinearInbetween_s___Fssf
    sth     r3, 0xa4(r31)
    mr      r3, r31
    lwz     r5, R13Off_m0x60b4(r13)
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0xb4(sp)
    stw     r0, 0xb8(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xbc(sp)
    bl      isNormalDeadDemo__15CPolarSubCameraCFv
    clrlwi. r0, r3, 24
    beq-    branch_0x8002563c
    lfs     f31, -0x7938(r2)
    b       branch_0x8002567c

branch_0x8002563c:
    lwz     r3, 0x68(r31)
    lfs     f2, 0xa8(r31)
    lfs     f1, 0x28(r3)
    lfs     f0, 0x24(r3)
    fmadds  f31, f2, f1, f0
    bl      SMS_GetMarioStatus__Fv
    addis   r0, r3, 0xffe0
    cmplwi  r0, 0x345
    bne-    branch_0x80025668
    lfs     f0, -0x7934(r2)
    fadds   f31, f31, f0
branch_0x80025668:
    lwz     r0, 0x50(r31)
    cmpwi   r0, 0x9
    bne-    branch_0x8002567c
    lfs     f0, 0x290(r31)
    fadds   f31, f31, f0
branch_0x8002567c:
    lfs     f0, 0xb8(sp)
    fadds   f0, f0, f31
    stfs    f0, 0xb8(sp)
    lwz     r3, R13Off_m0x7110(r13)
    lfs     f0, 0xb4(sp)
    stfs    f0, 0x0(r3)
    lfs     f0, 0xb8(sp)
    stfs    f0, 0x4(r3)
    lfs     f0, 0xbc(sp)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x70(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x800256c0
    addi    r4, r31, 0x10
    addi    r5, r31, 0x3c
    bl      calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
    b       branch_0x80025704

branch_0x800256c0:
    lwz     r3, R13Off_m0x7110(r13)
    lfs     f0, 0x0(r3)
    stfs    f0, 0x3c(r31)
    lfs     f0, 0x4(r3)
    stfs    f0, 0x40(r31)
    lfs     f0, 0x8(r3)
    stfs    f0, 0x44(r31)
    lwz     r3, 0x68(r31)
    lfs     f3, 0xa8(r31)
    lfs     f1, 0x8(r3)
    lfs     f2, 0xc(r3)
    bl      CLBLinearInbetween_f___Ffff
    lha     r5, 0xa4(r31)
    addi    r3, r31, 0x3c
    lha     r6, 0xa6(r31)
    addi    r4, r31, 0x10
    bl      CLBPolarToCross__FRC3VecP3Vecfss
branch_0x80025704:
    lha     r4, 0xa6(r31)
    addi    r3, r31, 0x0
    addi    r5, r31, 0x294
    addi    r6, r31, 0x298
    bl      calcSecureViewTarget___15CPolarSubCameraFsPfPf
    lfs     f1, 0x10(r31)
    lfs     f0, 0x294(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x298(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x3c(r31)
    lfs     f0, 0x294(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(r31)
    lfs     f1, 0x44(r31)
    lfs     f0, 0x298(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x44(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x80(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x84(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x88(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x98(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x9c(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0xa0(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x94(r31)
    bl      SMS_isOptionMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80025818
    lfs     f0, 0x10(r31)
    li      r3, 0x40
    stfs    f0, 0x80(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x84(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x88(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x94(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80025814
    lwz     r5, 0x10(r31)
    addi    r4, sp, 0xdc
    lwz     r0, 0x14(r31)
    mr      r3, r30
    stw     r5, 0xdc(sp)
    addi    r5, r31, 0x8c
    stw     r0, 0xe0(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xe4(sp)
    bl      __ct__13TCameraOptionFQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
branch_0x80025814:
    stw     r30, R13Off_m0x70b8(r13)
branch_0x80025818:
    lha     r0, 0xa4(r31)
    sth     r0, 0x256(r31)
    lha     r0, 0xa6(r31)
    sth     r0, 0x258(r31)
    lwz     r4, 0x80(r31)
    lwz     r0, 0x84(r31)
    stw     r4, 0xb4(r31)
    stw     r0, 0xb8(r31)
    lwz     r0, 0x88(r31)
    stw     r0, 0xbc(r31)
    lwz     r4, 0x8c(r31)
    lwz     r0, 0x90(r31)
    stw     r4, 0xc0(r31)
    stw     r0, 0xc4(r31)
    lwz     r0, 0x94(r31)
    stw     r0, 0xc8(r31)
    lwz     r4, 0x98(r31)
    lwz     r0, 0x9c(r31)
    stw     r4, 0xcc(r31)
    stw     r0, 0xd0(r31)
    lwz     r0, 0xa0(r31)
    stw     r0, 0xd4(r31)
    lha     r0, 0xa4(r31)
    sth     r0, 0xd8(r31)
    lha     r0, 0xa6(r31)
    sth     r0, 0xda(r31)
    lfs     f0, 0xa8(r31)
    stfs    f0, 0xdc(r31)
    lha     r0, 0xac(r31)
    sth     r0, 0xe0(r31)
    lfs     f0, 0xb0(r31)
    stfs    f0, 0xe4(r31)
    lwz     r4, 0xb4(r31)
    lwz     r0, 0xb8(r31)
    stw     r4, 0xe8(r31)
    stw     r0, 0xec(r31)
    lwz     r0, 0xbc(r31)
    stw     r0, 0xf0(r31)
    lwz     r4, 0xc0(r31)
    lwz     r0, 0xc4(r31)
    stw     r4, 0xf4(r31)
    stw     r0, 0xf8(r31)
    lwz     r0, 0xc8(r31)
    stw     r0, 0xfc(r31)
    lwz     r4, 0xcc(r31)
    lwz     r0, 0xd0(r31)
    stw     r4, 0x100(r31)
    stw     r0, 0x104(r31)
    lwz     r0, 0xd4(r31)
    stw     r0, 0x108(r31)
    lha     r0, 0xd8(r31)
    sth     r0, 0x10c(r31)
    lha     r0, 0xda(r31)
    sth     r0, 0x10e(r31)
    lfs     f0, 0xdc(r31)
    stfs    f0, 0x110(r31)
    lha     r0, 0xe0(r31)
    sth     r0, 0x114(r31)
    lfs     f0, 0xe4(r31)
    stfs    f0, 0x118(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x124(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x128(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x12c(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x130(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x134(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x138(r31)
    lfs     f0, 0x10(r31)
    stfs    f0, 0x13c(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x140(r31)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x144(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x148(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x14c(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x150(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x3c(r31)
    stfs    f0, 0x160(r31)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x164(r31)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x168(r31)
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x800259dc
    lwz     r3, 0x2b8(r31)
    lfs     f0, 0x10(r31)
    stfsu   f0, 0x10(r3)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x8(r3)
    lwz     r3, 0x2b8(r31)
    lfs     f0, 0x3c(r31)
    stfsu   f0, 0x1c(r3)
    lfs     f0, 0x40(r31)
    stfs    f0, 0x4(r3)
    lfs     f0, 0x44(r31)
    stfs    f0, 0x8(r3)
branch_0x800259dc:
    lwz     r6, R13Off_m0x60b4(r13)
    addi    r4, r31, 0x10
    lwz     r3, 0x6c(r31)
    addi    r5, r31, 0x3c
    bl      initCameraInbetween__16TCameraInbetweenFRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
    lfs     f1, 0x48(r31)
    addi    r3, r31, 0x16c
    lfs     f2, 0x4c(r31)
    lfs     f3, 0x28(r31)
    lfs     f4, 0x2c(r31)
    bl      C_MTXPerspective
    addi    r3, r31, 0x1ec
    addi    r4, r31, 0x124
    addi    r5, r31, 0x30
    addi    r6, r31, 0x148
    bl      C_MTXLookAt
    lfs     f0, 0x16c(r31)
    addi    r3, r31, 0x1ec
    addi    r4, r31, 0x21c
    stfs    f0, 0x1ac(r31)
    lfs     f0, 0x170(r31)
    stfs    f0, 0x1b0(r31)
    lfs     f0, 0x174(r31)
    stfs    f0, 0x1b4(r31)
    lfs     f0, 0x178(r31)
    stfs    f0, 0x1b8(r31)
    lfs     f0, 0x17c(r31)
    stfs    f0, 0x1bc(r31)
    lfs     f0, 0x180(r31)
    stfs    f0, 0x1c0(r31)
    lfs     f0, 0x184(r31)
    stfs    f0, 0x1c4(r31)
    lfs     f0, 0x188(r31)
    stfs    f0, 0x1c8(r31)
    lfs     f0, 0x18c(r31)
    stfs    f0, 0x1cc(r31)
    lfs     f0, 0x190(r31)
    stfs    f0, 0x1d0(r31)
    lfs     f0, 0x194(r31)
    stfs    f0, 0x1d4(r31)
    lfs     f0, 0x198(r31)
    stfs    f0, 0x1d8(r31)
    lfs     f0, 0x19c(r31)
    stfs    f0, 0x1dc(r31)
    lfs     f0, 0x1a0(r31)
    stfs    f0, 0x1e0(r31)
    lfs     f0, 0x1a4(r31)
    stfs    f0, 0x1e4(r31)
    lfs     f0, 0x1a8(r31)
    stfs    f0, 0x1e8(r31)
    bl      PSMTXCopy
    lfs     f1, 0x18(r31)
    lfs     f0, 0x44(r31)
    lfs     f2, 0x10(r31)
    fsubs   f1, f1, f0
    lfs     f0, 0x3c(r31)
    fsubs   f2, f2, f0
    fmuls   f0, f1, f1
    fmadds  f1, f2, f2, f0
    bl      MsSqrtf__Ff
    lfs     f2, 0x14(r31)
    lfs     f0, 0x40(r31)
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0x256(r31)
    lfs     f3, 0x18(r31)
    lfs     f1, 0x44(r31)
    lfs     f2, 0x10(r31)
    lfs     f0, 0x3c(r31)
    fsubs   f1, f3, f1
    fsubs   f2, f2, f0
    bl      matan__Fff
    sth     r3, 0x258(r31)
    addi    r3, r31, 0x25c
    addi    r4, r3, 0x0
    lfs     f1, 0x148(r31)
    lfs     f0, 0x124(r31)
    lfs     f3, 0x14c(r31)
    lfs     f2, 0x128(r31)
    fsubs   f0, f1, f0
    lfs     f4, 0x150(r31)
    lfs     f1, 0x12c(r31)
    fsubs   f2, f3, f2
    stfs    f0, 0x25c(r31)
    fsubs   f0, f4, f1
    stfs    f2, 0x260(r31)
    stfs    f0, 0x264(r31)
    lfs     f1, -0x795c(r2)
    bl      setLength__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_f
    lwz     r4, 0x68(r31)
    lha     r5, 0x256(r31)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBCalcRatio_s___Fsss
    lfs     f0, -0x795c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80025b68
    fmr     f1, f0
    b       branch_0x80025b78

branch_0x80025b68:
    lfs     f0, -0x7960(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80025b78
    fmr     f1, f0
branch_0x80025b78:
    stfs    f1, 0x270(r31)
    lhz     r0, 0x64(r31)
    rlwinm. r0, r0, 0, 19, 19
    beq-    branch_0x80025bd4
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7d(r3)
    cmplwi  r0, 0x1
    bne-    branch_0x80025bd4
    li      r0, 0x0
    sth     r0, 0xd8(sp)
    addi    r0, sp, 0xd8
    lis     r4, JetCoasterDemoCallBack__FUlUl@h
    stw     r0, 0x8(sp)
    addi    r8, r4, JetCoasterDemoCallBack__FUlUl@l
    addi    r9, r31, 0x0
    lwz     r4, R13Off_m0x7fbc(r13)
    li      r5, 0x0
    lfs     f1, -0x7960(r2)
    li      r6, -0x1
    li      r7, 0x1
    li      r10, 0x0
    bl      fireStartDemoCamera__12TMarDirectorFPCcPCQ29JGeometry8TVec3_f_lfbPFUlUl_lUlPQ26JDrama6TActorQ26JDrama10TFlagT_Us_
    b       branch_0x80025bf0

branch_0x80025bd4:
    lwz     r3, R13Off_m0x7fb8(r13)
    bl      getGlbResource__13JKRFileLoaderFPCc
    cmplwi  r3, 0x0
    bne-    branch_0x80025bf0
    addi    r3, r31, 0x0
    li      r4, 0x1
    bl      calcInHouseNo___15CPolarSubCameraFb
branch_0x80025bf0:
    lwz     r0, 0x144(sp)
    lfd     f31, 0x138(sp)
    lwz     r31, 0x134(sp)
    mtlr    r0
    lwz     r30, 0x130(sp)
    addi    sp, sp, 0x140
    blr


.globl JetCoasterDemoCallBack__FUlUl
JetCoasterDemoCallBack__FUlUl: # 0x80025c0c
    mflr    r0
    cmplwi  r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    bne-    branch_0x80025c6c
    addi    r31, r3, 0x2b0
    lwz     r4, R13Off_m0x7fc0(r13)
    lwz     r3, 0x2b0(r3)
    li      r5, 0x0
    bl      startDemo__10TCameraBckFPCcPCQ29JGeometry8TVec3_f_
    lwz     r3, R13Off_m0x6048(r13)
    lis     r0, 0x4330
    lfd     f1, -0x7928(r2)
    lwz     r3, 0x58(r3)
    lfs     f2, -0x7954(r2)
    xoris   r4, r3, 0x8000
    lwz     r3, 0x0(r31)
    stw     r4, 0x24(sp)
    stw     r0, 0x20(sp)
    lfd     f0, 0x20(sp)
    fsubs   f0, f0, f1
    fmuls   f1, f2, f0
    bl      setFrame__10TCameraBckFf
branch_0x80025c6c:
    lwz     r0, 0x34(sp)
    li      r3, 0x1
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl __ct__15CPolarSubCameraFPCc
__ct__15CPolarSubCameraFPCc: # 0x80025c84
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stmw    r27, 0x44(sp)
    stw     r3, 0x8(sp)
    lwz     r31, 0x8(sp)
    stw     r31, 0x28(sp)
    lwz     r3, 0x28(sp)
    bl      __ct__Q26JDrama8TViewObjFPCc
    lwz     r29, 0x28(sp)
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r29)
    addi    r3, r29, 0x10
    lfs     f1, -0x7960(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80023494
    li      r0, 0x0
    lis     r3, __vvt__Q26JStage7TObject@h
    sth     r0, 0x1c(r29)
    addi    r4, r3, __vvt__Q26JStage7TObject@l
    lis     r3, __vvt__Q26JStage7TCamera@h
    stw     r4, 0x20(r31)
    addi    r4, r3, __vvt__Q26JStage7TCamera@l
    lis     r3, __vvt__Q26JDrama7TCamera@h
    stw     r4, 0x20(r31)
    addi    r3, r3, __vvt__Q26JDrama7TCamera@l
    stw     r3, 0x0(r31)
    addi    r4, r3, 0x24
    lis     r3, __vvt__Q26JDrama13TLookAtCamera@h
    stw     r4, 0x20(r31)
    addi    r7, r3, __vvt__Q26JDrama13TLookAtCamera@l
    lis     r4, CLBConstUpVec@ha
    sth     r0, 0x24(r31)
    lis     r3, __vvt__15CPolarSubCamera@ha
    addi    r5, r3, __vvt__15CPolarSubCamera@l
    lfs     f0, -0x7900(r2)
    addi    r8, r4, CLBConstUpVec@l
    addi    r6, r7, 0x24
    stfs    f0, 0x28(r31)
    addi    r4, r5, 0x24
    li      r3, -0x1
    lfs     f0, -0x7930(r2)
    stfs    f0, 0x2c(r31)
    stw     r7, 0x0(r31)
    stw     r6, 0x20(r31)
    lwz     r7, 0x0(r8)
    lwz     r6, 0x4(r8)
    stw     r7, 0x30(r31)
    stw     r6, 0x34(r31)
    lwz     r6, 0x8(r8)
    stw     r6, 0x38(r31)
    lwz     r7, 0x0(r8)
    lwz     r6, 0x4(r8)
    stw     r7, 0x3c(r31)
    stw     r6, 0x40(r31)
    lwz     r6, 0x8(r8)
    stw     r6, 0x44(r31)
    lfs     f3, -0x7960(r2)
    stfs    f3, 0x48(r31)
    stfs    f3, 0x4c(r31)
    lwz     r7, 0x0(r8)
    lwz     r6, 0x4(r8)
    stw     r7, 0x10(r31)
    stw     r6, 0x14(r31)
    lwz     r6, 0x8(r8)
    stw     r6, 0x18(r31)
    stw     r5, 0x0(r31)
    stw     r4, 0x20(r31)
    stw     r3, 0x50(r31)
    stw     r3, 0x54(r31)
    stw     r3, 0x58(r31)
    stw     r3, 0x5c(r31)
    stw     r0, 0x60(r31)
    sth     r0, 0x64(r31)
    stw     r0, 0x70(r31)
    stw     r0, 0x74(r31)
    stw     r0, 0x78(r31)
    stw     r0, 0x7c(r31)
    stw     r0, 0x11c(r31)
    fmr     f0, f3
    fmr     f2, f3
    li      r3, 0x6a8
    stw     r0, 0x120(r31)
    fmr     f1, f3
    stfs    f3, 0x24c(r31)
    stfs    f0, 0x250(r31)
    fmr     f0, f3
    sth     r0, 0x254(r31)
    stfs    f2, 0x268(r31)
    lfs     f2, -0x795c(r2)
    stfs    f2, 0x26c(r31)
    sth     r0, 0x274(r31)
    sth     r0, 0x276(r31)
    sth     r0, 0x278(r31)
    sth     r0, 0x27a(r31)
    sth     r0, 0x27c(r31)
    sth     r0, 0x27e(r31)
    sth     r0, 0x280(r31)
    sth     r0, 0x282(r31)
    stw     r0, 0x284(r31)
    stfs    f2, 0x288(r31)
    sth     r0, 0x28c(r31)
    sth     r0, 0x28e(r31)
    stfs    f3, 0x290(r31)
    stfs    f1, 0x294(r31)
    stfs    f0, 0x298(r31)
    stw     r0, 0x2ac(r31)
    stw     r0, 0x2b0(r31)
    stw     r0, 0x2b4(r31)
    stw     r0, 0x2b8(r31)
    stw     r0, 0x2bc(r31)
    lfs     f0, -0x7950(r2)
    stfs    f0, 0x2c0(r31)
    lfs     f0, -0x78f0(r2)
    stfs    f0, 0x2c4(r31)
    stw     r31, R13Off_m0x7118(r13)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025e70
    mr      r3, r28
    bl      __ct__12TCameraShakeFv
branch_0x80025e70:
    stw     r28, R13Off_m0x7108(r13)
    li      r3, 0x20
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025e8c
    mr      r3, r28
    bl      __ct__16TCameraMarioDataFv
branch_0x80025e8c:
    li      r29, 0x0
    stw     r28, R13Off_m0x7110(r13)
    li      r3, 0xc
    stw     r29, R13Off_m0x70b8(r13)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025ec8
    li      r0, 0x4
    stw     r0, 0x0(r28)
    stw     r29, 0x4(r28)
    stw     r29, 0x8(r28)
    lwz     r0, 0x0(r28)
    slwi    r3, r0, 2
    bl      __nwa__FUl
    stw     r3, 0x8(r28)
branch_0x80025ec8:
    lwz     r29, 0x8(sp)
    li      r3, 0xac
    stw     r28, 0x60(r29)
    bl      __nw__FUl
    stw     r3, 0x68(r29)
    li      r3, 0x48
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025ef4
    mr      r3, r28
    bl      __ct__16TCameraInbetweenFv
branch_0x80025ef4:
    lwz     r4, 0x8(sp)
    li      r3, 0x10
    stw     r28, 0x6c(r4)
    bl      __nw__FUl
    mr.     r5, r3
    beq-    branch_0x80025f24
    li      r0, 0x0
    sth     r0, 0x0(r5)
    lfs     f0, -0x7960(r2)
    stfs    f0, 0x4(r5)
    stfs    f0, 0x8(r5)
    stfs    f0, 0xc(r5)
branch_0x80025f24:
    lwz     r4, 0x8(sp)
    li      r3, 0x18
    stw     r5, 0x2ac(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025f44
    mr      r3, r28
    bl      __ct__10TCameraBckFv
branch_0x80025f44:
    lwz     r4, 0x8(sp)
    li      r3, 0x18
    stw     r28, 0x2b0(r4)
    bl      __nw__FUl
    mr.     r5, r3
    beq-    branch_0x80025f7c
    li      r0, 0x0
    stw     r0, 0x0(r5)
    lfs     f0, -0x7960(r2)
    stfs    f0, 0x4(r5)
    stw     r0, 0x8(r5)
    stb     r0, 0xc(r5)
    stw     r0, 0x10(r5)
    stw     r0, 0x14(r5)
branch_0x80025f7c:
    lwz     r4, 0x8(sp)
    li      r3, 0xbc
    stw     r5, 0x2b4(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025f9c
    mr      r3, r28
    bl      __ct__14TCamSaveNoticeFv
branch_0x80025f9c:
    lwz     r4, 0x8(sp)
    li      r3, 0x210
    stw     r28, 0x2d0(r4)
    bl      __nw__FUl
    mr.     r28, r3
    beq-    branch_0x80025fbc
    mr      r3, r28
    bl      __ct__10TCamSaveExFv
branch_0x80025fbc:
    lwz     r4, 0x8(sp)
    lis     r3, mCamKindNameSaveFile__15CPolarSubCamera@ha
    addi    r29, r3, mCamKindNameSaveFile__15CPolarSubCamera@l
    stw     r28, 0x2d4(r4)
    li      r28, 0x0
    li      r31, 0x0
branch_0x80025fd4:
    li      r3, 0x968
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80025ff4
    add     r3, r29, r31
    lwz     r4, 0x0(r3)
    mr      r3, r27
    bl      __ct__17TCamSaveKindParamFPCc
branch_0x80025ff4:
    addi    r28, r28, 0x1
    lwz     r30, 0x8(sp)
    addi    r0, r31, 0x2d8
    cmpwi   r28, 0x49
    stwx    r27, r30, r0
    addi    r31, r31, 0x4
    blt+    branch_0x80025fd4
    bl      SMS_isMultiPlayerMap__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x80026028
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      createMultiPlayer__15CPolarSubCameraFUc
branch_0x80026028:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    lbz     r29, 0x7d(r3)
    cmplwi  r0, 0x3a
    bne-    branch_0x80026098
    cmplwi  r29, 0x0
    beq-    branch_0x8002604c
    cmplwi  r29, 0x1
    bne-    branch_0x80026098
branch_0x8002604c:
    lwz     r4, 0x8(sp)
    li      r3, 0x3c
    lhz     r0, 0x64(r4)
    ori     r0, r0, 0x1000
    sth     r0, 0x64(r4)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80026074
    mr      r3, r27
    bl      __ct__17TCameraJetCoasterFv
branch_0x80026074:
    lwz     r3, 0x8(sp)
    cmpwi   r29, 0x0
    stw     r27, 0x2b8(r3)
    beq-    branch_0x80026088
    b       branch_0x80026098

branch_0x80026088:
    lwz     r3, 0x2b0(r3)
    li      r5, 0x0
    lwz     r4, R13Off_m0x7fc4(r13)
    bl      startDemo__10TCameraBckFPCcPCQ29JGeometry8TVec3_f_
branch_0x80026098:
    lwz     r3, 0x8(sp)
    li      r4, -0x1
    li      r0, 0x0
    sth     r4, 0x2ca(r3)
    sth     r4, 0x2c8(r3)
    stb     r0, 0x2cc(r3)
    lmw     r27, 0x44(sp)
    lwz     r0, 0x5c(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl __dt__Q26JDrama13TLookAtCameraFv
__dt__Q26JDrama13TLookAtCameraFv: # 0x800260c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80026114
    lis     r3, __vvt__Q26JDrama13TLookAtCamera@h
    addi    r3, r3, __vvt__Q26JDrama13TLookAtCamera@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama7TCameraFv
    extsh.  r0, r31
    ble-    branch_0x80026114
    mr      r3, r30
    bl      __dl__FPv
branch_0x80026114:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__Q26JDrama10TPlacementFv
__dt__Q26JDrama10TPlacementFv: # 0x80026130
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80026188
    lis     r3, __vvt__Q26JDrama10TPlacement@h
    addi    r0, r3, __vvt__Q26JDrama10TPlacement@l
    stw     r0, 0x0(r30)
    beq-    branch_0x80026178
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x80026178:
    extsh.  r0, r31
    ble-    branch_0x80026188
    mr      r3, r30
    bl      __dl__FPv
branch_0x80026188:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__Q26JDrama8TViewObjFPCc
__ct__Q26JDrama8TViewObjFPCc: # 0x800261a4
    mflr    r0
    lis     r5, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r5, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    stw     r0, 0x0(r3)
    mr      r3, r4
    stw     r4, 0x4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r31)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    sth     r0, 0xc(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl CLBEaseInInbetween_f___Ffff
CLBEaseInInbetween_f___Ffff: # 0x80026200
    mflr    r0
    fsubs   f4, f2, f1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      CLBTwoDegreeGeneralInbetween_f___Fffff
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl CLBTwoDegreeGeneralInbetween_f___Fffff
CLBTwoDegreeGeneralInbetween_f___Fffff: # 0x80026224
    fsubs   f0, f2, f1
    fmuls   f5, f4, f3
    fsubs   f0, f0, f4
    fmuls   f0, f3, f0
    fmadds  f0, f3, f5, f0
    fadds   f1, f1, f0
    blr


.globl CLBLinearInbetween_s___Fssf
CLBLinearInbetween_s___Fssf: # 0x80026240
    extsh   r5, r3
    stwu    sp, -0x28(sp)
    extsh   r0, r4
    subf    r0, r5, r0
    lfd     f3, -0x7928(r2)
    xoris   r3, r0, 0x8000
    xoris   r0, r5, 0x8000
    stw     r3, 0x24(sp)
    lis     r3, 0x4330
    stw     r0, 0x1c(sp)
    stw     r3, 0x20(sp)
    stw     r3, 0x18(sp)
    lfd     f2, 0x20(sp)
    lfd     f0, 0x18(sp)
    fsubs   f2, f2, f3
    fsubs   f0, f0, f3
    fmadds  f0, f1, f2, f0
    fctiwz  f0, f0
    stfd    f0, 0x10(sp)
    lwz     r3, 0x14(sp)
    addi    sp, sp, 0x28
    blr


.globl CLBCalcRatio_l___Flll
CLBCalcRatio_l___Flll: # 0x80026298
    stwu    sp, -0x28(sp)
    cmpw    r3, r4
    lfs     f1, -0x7960(r2)
    beq-    branch_0x800262ec
    subf    r0, r3, r4
    lfd     f2, -0x7928(r2)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x795c(r2)
    stw     r0, 0x1c(sp)
    lis     r0, 0x4330
    subf    r3, r3, r5
    stw     r0, 0x18(sp)
    xoris   r3, r3, 0x8000
    lfd     f0, 0x18(sp)
    stw     r3, 0x24(sp)
    fsubs   f0, f0, f2
    stw     r0, 0x20(sp)
    fdivs   f0, f1, f0
    lfd     f1, 0x20(sp)
    fsubs   f1, f1, f2
    fmuls   f1, f1, f0
branch_0x800262ec:
    addi    sp, sp, 0x28
    blr


.globl CLBCalcRatio_f___Ffff
CLBCalcRatio_f___Ffff: # 0x800262f4
    fcmpu   cr0, f1, f2
    lfs     f0, -0x7960(r2)
    beq-    branch_0x80026314
    fsubs   f0, f2, f1
    lfs     f2, -0x795c(r2)
    fsubs   f1, f3, f1
    fdivs   f0, f2, f0
    fmuls   f0, f1, f0
branch_0x80026314:
    fmr     f1, f0
    blr


.globl CLBChaseGeneralConstantSpecifySpeed_s___FPsss
CLBChaseGeneralConstantSpecifySpeed_s___FPsss: # 0x8002631c
    lha     r6, 0x0(r3)
    extsh.  r0, r5
    extsh   r7, r4
    subf    r6, r6, r7
    bge-    branch_0x80026334
    neg     r5, r5
branch_0x80026334:
    extsh.  r0, r6
    ble-    branch_0x8002635c
    subf    r6, r5, r6
    extsh.  r0, r6
    ble-    branch_0x80026354
    subf    r0, r6, r7
    sth     r0, 0x0(r3)
    b       branch_0x80026378

branch_0x80026354:
    sth     r4, 0x0(r3)
    b       branch_0x80026378

branch_0x8002635c:
    add     r6, r6, r5
    extsh.  r0, r6
    bge-    branch_0x80026374
    subf    r0, r6, r7
    sth     r0, 0x0(r3)
    b       branch_0x80026378

branch_0x80026374:
    sth     r4, 0x0(r3)
branch_0x80026378:
    lha     r3, 0x0(r3)
    extsh   r0, r4
    cmpw    r3, r0
    bne-    branch_0x80026390
    li      r3, 0x0
    blr

branch_0x80026390:
    li      r3, 0x1
    blr


.globl unk_80026398
unk_80026398: # 0x80026398
    addi    r3, r3, -0x20
    b       JSGSetFlag__Q26JDrama7TCameraFUl


.globl unk_800263a0
unk_800263a0: # 0x800263a0
    addi    r3, r3, -0x20
    b       JSGGetFlag__Q26JDrama7TCameraCFv


.globl unk_800263a8
unk_800263a8: # 0x800263a8
    addi    r3, r3, -0x20
    b       JSGSetViewTargetPosition__Q26JDrama13TLookAtCameraFRC3Vec


.globl unk_800263b0
unk_800263b0: # 0x800263b0
    addi    r3, r3, -0x20
    b       JSGGetViewTargetPosition__Q26JDrama13TLookAtCameraCFP3Vec


.globl unk_800263b8
unk_800263b8: # 0x800263b8
    addi    r3, r3, -0x20
    b       JSGSetViewUpVector__Q26JDrama13TLookAtCameraFRC3Vec


.globl unk_800263c0
unk_800263c0: # 0x800263c0
    addi    r3, r3, -0x20
    b       JSGGetViewUpVector__Q26JDrama13TLookAtCameraCFP3Vec


.globl unk_800263c8
unk_800263c8: # 0x800263c8
    addi    r3, r3, -0x20
    b       JSGSetViewPosition__Q26JDrama13TLookAtCameraFRC3Vec


.globl unk_800263d0
unk_800263d0: # 0x800263d0
    addi    r3, r3, -0x20
    b       JSGGetViewPosition__Q26JDrama13TLookAtCameraCFP3Vec


.globl unk_800263d8
unk_800263d8: # 0x800263d8
    addi    r3, r3, -0x20
    b       JSGSetProjectionAspect__Q26JDrama13TLookAtCameraFf


.globl unk_800263e0
unk_800263e0: # 0x800263e0
    addi    r3, r3, -0x20
    b       JSGGetProjectionAspect__Q26JDrama13TLookAtCameraCFv


.globl unk_800263e8
unk_800263e8: # 0x800263e8
    addi    r3, r3, -0x20
    b       JSGSetProjectionFovy__Q26JDrama13TLookAtCameraFf


.globl unk_800263f0
unk_800263f0: # 0x800263f0
    addi    r3, r3, -0x20
    b       JSGGetProjectionFovy__Q26JDrama13TLookAtCameraCFv


.globl unk_800263f8
unk_800263f8: # 0x800263f8
    addi    r3, r3, -0x20
    b       JSGSetProjectionFar__Q26JDrama7TCameraFf


.globl unk_80026400
unk_80026400: # 0x80026400
    addi    r3, r3, -0x20
    b       JSGGetProjectionFar__Q26JDrama7TCameraCFv


.globl unk_80026408
unk_80026408: # 0x80026408
    addi    r3, r3, -0x20
    b       JSGSetProjectionNear__Q26JDrama7TCameraFf


.globl unk_80026410
unk_80026410: # 0x80026410
    addi    r3, r3, -0x20
    b       JSGGetProjectionNear__Q26JDrama7TCameraCFv


.globl unk_80026418
unk_80026418: # 0x80026418
    addi    r3, r3, -0x20
    b       JSGSetProjectionType__Q26JDrama13TLookAtCameraFQ26JStage18TECameraProjection


.globl unk_80026420
unk_80026420: # 0x80026420
    addi    r3, r3, -0x20
    b       JSGGetProjectionType__Q26JDrama13TLookAtCameraCFv


.globl unk_80026428
unk_80026428: # 0x80026428
    addi    r3, r3, -0x20
    b       __dt__15CPolarSubCameraFv

