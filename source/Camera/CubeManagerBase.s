
.globl __dt__16TCubeManagerBaseFv
__dt__16TCubeManagerBaseFv: # 0x8002f834
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8002f88c
    lis     r3, __vvt__16TCubeManagerBase@ha
    addi    r0, r3, __vvt__16TCubeManagerBase@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8002f87c
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
branch_0x8002f87c:
    extsh.  r0, r31
    ble-    branch_0x8002f88c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8002f88c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl SMS_IsInSameCameraCube__FRC3Vec
SMS_IsInSameCameraCube__FRC3Vec: # 0x8002f8a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stmw    r26, 0x80(sp)
    li      r31, 0x0
    mr      r29, r3
    mr      r28, r31
    li      r30, 0x0
    lwz     r4, R13Off_m0x60b4(r13)
    lfs     f0, -0x7630(r2)
    lwz     r3, 0x0(r4)
    lwz     r0, 0x4(r4)
    lwz     r27, R13Off_m0x70f0(r13)
    stw     r3, 0x74(sp)
    stw     r0, 0x78(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x7c(sp)
    lfs     f1, 0x78(sp)
    fadds   f0, f1, f0
    stfs    f0, 0x78(sp)
    b       branch_0x8002f930

branch_0x8002f8fc:
    lwz     r4, 0x14(r27)
    addi    r3, sp, 0x74
    lwz     r4, 0x10(r4)
    lwzx    r4, r4, r28
    addi    r6, r4, 0x24
    addi    r5, r4, 0x18
    addi    r4, r4, 0xc
    bl      CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8002f928
    b       branch_0x8002f940

branch_0x8002f928:
    addi    r31, r31, 0x1
    addi    r28, r28, 0x4
branch_0x8002f930:
    lbz     r0, 0x10(r27)
    cmplw   r31, r0
    blt+    branch_0x8002f8fc
    li      r31, -0x1
branch_0x8002f940:
    lwz     r26, R13Off_m0x70f0(r13)
    li      r27, 0x0
    li      r28, 0x0
    b       branch_0x8002f984

branch_0x8002f950:
    lwz     r4, 0x14(r26)
    mr      r3, r29
    lwz     r4, 0x10(r4)
    lwzx    r4, r4, r28
    addi    r6, r4, 0x24
    addi    r5, r4, 0x18
    addi    r4, r4, 0xc
    bl      CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8002f97c
    b       branch_0x8002f994

branch_0x8002f97c:
    addi    r27, r27, 0x1
    addi    r28, r28, 0x4
branch_0x8002f984:
    lbz     r0, 0x10(r26)
    cmplw   r27, r0
    blt+    branch_0x8002f950
    li      r27, -0x1
branch_0x8002f994:
    cmpw    r31, r27
    bne-    branch_0x8002f9a8
    cmpwi   r31, -0x1
    beq-    branch_0x8002f9a8
    li      r30, 0x1
branch_0x8002f9a8:
    mr      r3, r30
    lmw     r26, 0x80(sp)
    lwz     r0, 0x9c(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl SMS_IsInOtherFastCube__FRC3Vec
SMS_IsInOtherFastCube__FRC3Vec: # 0x8002f9c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    li      r29, 0x0
    stw     r28, 0x18(sp)
    addi    r28, r3, 0x0
    li      r3, 0x1
    lwz     r4, R13Off_m0x6048(r13)
    lbz     r0, 0x124(r4)
    cmplwi  r0, 0x3
    beq-    branch_0x8002fa04
    cmplwi  r0, 0x4
    beq-    branch_0x8002fa04
    li      r3, 0x0
branch_0x8002fa04:
    clrlwi. r0, r3, 24
    bne-    branch_0x8002fac4
    lwz     r30, R13Off_m0x70d8(r13)
    addi    r4, r28, 0x0
    li      r31, 0x0
    addi    r3, r30, 0x0
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    lwz     r0, 0x1c(r30)
    cmpwi   r0, -0x1
    beq-    branch_0x8002fa40
    cmpwi   r3, -0x1
    beq-    branch_0x8002fa40
    cmpw    r0, r3
    beq-    branch_0x8002fa40
    li      r31, 0x1
branch_0x8002fa40:
    clrlwi. r0, r31, 24
    bne-    branch_0x8002fac0
    lwz     r31, R13Off_m0x70d4(r13)
    addi    r4, r28, 0x0
    li      r30, 0x0
    addi    r3, r31, 0x0
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    lwz     r0, 0x1c(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x8002fa7c
    cmpwi   r3, -0x1
    beq-    branch_0x8002fa7c
    cmpw    r0, r3
    beq-    branch_0x8002fa7c
    li      r30, 0x1
branch_0x8002fa7c:
    clrlwi. r0, r30, 24
    bne-    branch_0x8002fac0
    lwz     r31, R13Off_m0x70d0(r13)
    addi    r4, r28, 0x0
    li      r30, 0x0
    addi    r3, r31, 0x0
    bl      getInCubeNo__16TCubeManagerBaseCFRC3Vec
    lwz     r0, 0x1c(r31)
    cmpwi   r0, -0x1
    beq-    branch_0x8002fab8
    cmpwi   r3, -0x1
    beq-    branch_0x8002fab8
    cmpw    r0, r3
    beq-    branch_0x8002fab8
    li      r30, 0x1
branch_0x8002fab8:
    clrlwi. r0, r30, 24
    beq-    branch_0x8002fac4
branch_0x8002fac0:
    li      r29, 0x1
branch_0x8002fac4:
    lwz     r0, 0x2c(sp)
    mr      r3, r29
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    addi    sp, sp, 0x28
    blr


.globl isInAreaCube__16TCubeManagerAreaCFRC3Vec
isInAreaCube__16TCubeManagerAreaCFRC3Vec: # 0x8002fae8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xb8(sp)
    stmw    r27, 0xa4(sp)
    li      r29, 0x0
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r30, r29, 0x0
    li      r31, 0x0
    b       branch_0x8002fb44

branch_0x8002fb10:
    lwz     r4, 0x14(r27)
    mr      r3, r28
    lwz     r4, 0x10(r4)
    lwzx    r4, r4, r30
    addi    r6, r4, 0x24
    addi    r5, r4, 0x18
    addi    r4, r4, 0xc
    bl      CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8002fb3c
    b       branch_0x8002fb54

branch_0x8002fb3c:
    addi    r29, r29, 0x1
    addi    r30, r30, 0x4
branch_0x8002fb44:
    lbz     r0, 0x10(r27)
    cmplw   r29, r0
    blt+    branch_0x8002fb10
    li      r29, -0x1
branch_0x8002fb54:
    lwz     r5, 0x1c(r27)
    cmpw    r5, r29
    bne-    branch_0x8002fb68
    li      r31, 0x1
    b       branch_0x8002fc1c

branch_0x8002fb68:
    lwz     r3, R13Off_m0x6048(r13)
    lbz     r0, 0x7c(r3)
    cmplwi  r0, 0x7
    bne-    branch_0x8002fc1c
    cmpwi   r5, -0x1
    beq-    branch_0x8002fc1c
    cmpwi   r29, -0x1
    beq-    branch_0x8002fc1c
    lwz     r4, 0x14(r27)
    slwi    r3, r5, 2
    slwi    r0, r29, 2
    lwz     r6, 0x10(r4)
    addi    r4, r2, R2Off_m0x762c
    add     r5, r6, r3
    lwzx    r3, r6, r0
    lwz     r5, 0x0(r5)
    lwz     r30, 0x4(r3)
    lwz     r29, 0x4(r5)
    mr      r3, r29
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8002fbf0
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x7624
    bl      strcmp
    cmpwi   r3, 0x0
    beq-    branch_0x8002fbe8
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x761c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8002fc1c
branch_0x8002fbe8:
    li      r31, 0x1
    b       branch_0x8002fc1c

branch_0x8002fbf0:
    addi    r3, r29, 0x0
    addi    r4, r2, R2Off_m0x7624
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8002fc1c
    addi    r3, r30, 0x0
    addi    r4, r2, R2Off_m0x761c
    bl      strcmp
    cmpwi   r3, 0x0
    bne-    branch_0x8002fc1c
    li      r31, 0x1
branch_0x8002fc1c:
    mr      r3, r31
    lmw     r27, 0xa4(sp)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xb8
    mtlr    r0
    blr


.globl calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf
calcPointInCubeRatio__16TCubeManagerBaseCFRC3VeclPfPfPf: # 0x8002fc34
    mflr    r0
    mr      r9, r8
    stw     r0, 0x4(sp)
    addi    r8, r7, 0x0
    slwi    r0, r5, 2
    stwu    sp, -0x8(sp)
    addi    r7, r6, 0x0
    lwz     r3, 0x14(r3)
    lwz     r3, 0x10(r3)
    lwzx    r10, r3, r0
    addi    r3, r4, 0x0
    addi    r6, r10, 0x24
    addi    r5, r10, 0x18
    addi    r4, r10, 0xc
    bl      CLBCalcPointInCubeRatio__FRC3VecRC3VecRC3VecRC3VecPfPfPf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isInCube__16TCubeManagerBaseCFRC3Vecl
isInCube__16TCubeManagerBaseCFRC3Vecl: # 0x8002fc80
    mflr    r0
    cmpwi   r5, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    blt-    branch_0x8002fcd8
    lbz     r0, 0x10(r3)
    cmpw    r5, r0
    bge-    branch_0x8002fcd8
    lwz     r6, 0x14(r3)
    addi    r3, r4, 0x0
    slwi    r0, r5, 2
    lwz     r4, 0x10(r6)
    lwzx    r4, r4, r0
    addi    r6, r4, 0x24
    addi    r5, r4, 0x18
    addi    r4, r4, 0xc
    bl      CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8002fcd8
    li      r31, 0x1
branch_0x8002fcd8:
    lwz     r0, 0x3c(sp)
    mr      r3, r31
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl getInCubeNo__16TCubeManagerBaseCFRC3Vec
getInCubeNo__16TCubeManagerBaseCFRC3Vec: # 0x8002fcf0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    li      r31, 0x0
    stw     r30, 0x30(sp)
    li      r30, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    b       branch_0x8002fd58

branch_0x8002fd20:
    lwz     r4, 0x14(r28)
    mr      r3, r29
    lwz     r4, 0x10(r4)
    lwzx    r4, r4, r31
    addi    r6, r4, 0x24
    addi    r5, r4, 0x18
    addi    r4, r4, 0xc
    bl      CLBIsPointInCube__FRC3VecRC3VecRC3VecRC3Vec
    clrlwi. r0, r3, 24
    beq-    branch_0x8002fd50
    mr      r3, r30
    b       branch_0x8002fd68

branch_0x8002fd50:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8002fd58:
    lbz     r0, 0x10(r28)
    cmplw   r30, r0
    blt+    branch_0x8002fd20
    li      r3, -0x1
branch_0x8002fd68:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl getDataNo__16TCubeManagerBaseCFl
getDataNo__16TCubeManagerBaseCFl: # 0x8002fd88
    cmpwi   r4, 0x0
    li      r5, -0x1
    blt-    branch_0x8002fdb4
    lbz     r0, 0x10(r3)
    cmpw    r4, r0
    bge-    branch_0x8002fdb4
    lwz     r3, 0x14(r3)
    slwi    r0, r4, 2
    lwz     r3, 0x10(r3)
    lwzx    r3, r3, r0
    lwz     r5, 0x34(r3)
branch_0x8002fdb4:
    mr      r3, r5
    blr


.globl perform__16TCubeManagerBaseFUlPQ26JDrama9TGraphics
perform__16TCubeManagerBaseFUlPQ26JDrama9TGraphics: # 0x8002fdbc
    blr


.globl load__16TCubeManagerBaseFR20JSUMemoryInputStream
load__16TCubeManagerBaseFR20JSUMemoryInputStream: # 0x8002fdc0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    stw     r30, 0x40(sp)
    stw     r29, 0x3c(sp)
    mr      r29, r3
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    lwz     r3, R13Off_m0x5db8(r13)
    lwz     r31, 0x18(r29)
    lwz     r30, 0x4(r3)
    mr      r3, r31
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r31
    mtlr    r12
    blrl
    cmplwi  r3, 0x0
    beq-    branch_0x8002fe4c
    stw     r3, 0x14(r29)
    lwz     r3, 0x14(r29)
    addi    r4, r3, 0xc
    lwz     r3, 0x10(r3)
    cmplwi  r3, 0x0
    bne-    branch_0x8002fe38
    li      r0, 0x0
    b       branch_0x8002fe48

branch_0x8002fe38:
    lwz     r0, 0x8(r4)
    subf    r0, r3, r0
    srawi   r0, r0, 2
    addze   r0, r0
branch_0x8002fe48:
    stb     r0, 0x10(r29)
branch_0x8002fe4c:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    lwz     r29, 0x3c(sp)
    addi    sp, sp, 0x48
    blr


.globl __ct__16TCubeManagerBaseFPCcUc
__ct__16TCubeManagerBaseFPCcUc: # 0x8002fe68
    mflr    r0
    lis     r6, unk_80375810@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r26, 0x30(sp)
    mr      r27, r5
    addi    r31, r6, unk_80375810@l
    stw     r3, 0x8(sp)
    lis     r3, __vvt__Q26JDrama8TNameRef@h
    addi    r28, r3, __vvt__Q26JDrama8TNameRef@l
    lwz     r29, 0x8(sp)
    addi    r3, r4, 0x0
    stw     r28, 0x0(r29)
    stw     r4, 0x4(r29)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r29)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r29)
    li      r4, 0x0
    lis     r3, __vvt__16TCubeManagerBase@ha
    sth     r4, 0xc(r29)
    addi    r0, r3, __vvt__16TCubeManagerBase@l
    li      r3, 0x24
    stw     r0, 0x0(r29)
    stb     r27, 0x10(r29)
    stw     r4, 0x14(r29)
    stw     r4, 0x18(r29)
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x8002ff18
    stw     r27, 0x20(sp)
    addi    r3, r31, 0x20
    stw     r28, 0x0(r27)
    lwz     r28, 0x20(sp)
    stw     r3, 0x4(r28)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r28)
    addi    r3, r28, 0xc
    addi    r4, sp, 0x18
    bl      __ct__Q27JGadget20TVector_pointer_voidFRCQ27JGadget14TAllocator_Pv_
    lis     r3, __vvt__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_@ha
    addi    r0, r3, __vvt__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_@l
    stw     r0, 0x0(r28)
branch_0x8002ff18:
    lwz     r4, 0x8(sp)
    stw     r27, 0x14(r4)
    lwz     r3, 0x14(r4)
    lbz     r4, 0x10(r4)
    addi    r3, r3, 0xc
    bl      reserve__Q27JGadget20TVector_pointer_voidFUl
    lis     r4, __vvt__Q26JDrama8TNameRef@h
    lis     r3, __vvt__16TCubeGeneralInfo@ha
    addi    r28, r4, __vvt__Q26JDrama8TNameRef@l
    addi    r29, r31, 0x34
    addi    r31, r3, __vvt__16TCubeGeneralInfo@l
    li      r27, 0x0
    b       branch_0x8002fff0

branch_0x8002ff4c:
    li      r3, 0x38
    bl      __nw__FUl
    mr.     r26, r3
    beq-    branch_0x8002ffd0
    stw     r26, 0x1c(sp)
    mr      r3, r29
    stw     r28, 0x0(r26)
    lwz     r30, 0x1c(sp)
    stw     r29, 0x4(r30)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    addi    r3, r30, 0xc
    stw     r31, 0x0(r30)
    lfs     f1, -0x7614(r2)
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80030014
    lfs     f1, -0x7614(r2)
    addi    r3, r30, 0x18
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80030014
    lfs     f1, -0x7610(r2)
    addi    r3, r30, 0x24
    fmr     f2, f1
    fmr     f3, f1
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80030014
    li      r0, 0x80
    sth     r0, 0x30(r30)
    li      r3, 0x2
    li      r0, 0x0
    sth     r3, 0x32(r30)
    stw     r0, 0x34(r30)
branch_0x8002ffd0:
    stw     r26, 0x28(sp)
    addi    r5, sp, 0x28
    lwz     r3, 0x8(sp)
    lwz     r3, 0x14(r3)
    addi    r3, r3, 0xc
    lwz     r4, 0x8(r3)
    bl      insert__Q27JGadget20TVector_pointer_voidFPPvRCPv
    addi    r27, r27, 0x1
branch_0x8002fff0:
    lwz     r3, 0x8(sp)
    lbz     r0, 0x10(r3)
    cmpw    r27, r0
    blt+    branch_0x8002ff4c
    lmw     r26, 0x30(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80030014
set_f___Q29JGeometry8TVec3_f_Ffff_80030014: # 0x80030014
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl __ct__16TCubeManagerBaseFPCcPCc
__ct__16TCubeManagerBaseFPCcPCc: # 0x80030024
    mflr    r0
    lis     r6, __vvt__Q26JDrama8TNameRef@h
    stw     r0, 0x4(sp)
    addi    r0, r6, __vvt__Q26JDrama8TNameRef@l
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    stw     r30, 0x18(sp)
    addi    r30, r3, 0x0
    stw     r0, 0x0(r3)
    stw     r4, 0x4(r3)
    mr      r3, r4
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    sth     r3, 0x8(r30)
    lis     r3, __vvt__Q26JDrama8TViewObj@ha
    addi    r0, r3, __vvt__Q26JDrama8TViewObj@l
    stw     r0, 0x0(r30)
    li      r4, 0x0
    lis     r3, __vvt__16TCubeManagerBase@ha
    sth     r4, 0xc(r30)
    addi    r0, r3, __vvt__16TCubeManagerBase@l
    addi    r3, r30, 0x0
    stw     r0, 0x0(r30)
    stb     r4, 0x10(r30)
    stw     r4, 0x14(r30)
    stw     r31, 0x18(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl __dt__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_Fv
__dt__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_Fv: # 0x800300a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80030100
    lis     r3, __vvt__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_@ha
    addi    r3, r3, __vvt__54TNameRefPtrAryT_16TCubeGeneralInfo_Q26JDrama8TNameRef_@l
    addic.  r0, r30, 0xc
    stw     r3, 0x0(r30)
    beq-    branch_0x800300e4
    addi    r3, r30, 0xc
    li      r4, 0x0
    bl      __dt__Q27JGadget20TVector_pointer_voidFv
branch_0x800300e4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x80030100
    mr      r3, r30
    bl      __dl__FPv
branch_0x80030100:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr

