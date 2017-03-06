
.globl SMS_IsMarioRoofing__Fv
SMS_IsMarioRoofing__Fv: # 0x802735f0
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x147
    blt-    branch_0x80273614
    cmplwi  r0, 0x14a
    bgt-    branch_0x80273614
    li      r3, 0x1
    blr

branch_0x80273614:
    li      r3, 0x0
    blr


.globl SMS_IsMarioFencing__Fv
SMS_IsMarioFencing__Fv: # 0x8027361c
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, 0x168
    blt-    branch_0x80273640
    cmplwi  r0, 0x16c
    bgt-    branch_0x80273640
    li      r3, 0x1
    blr

branch_0x80273640:
    li      r3, 0x0
    blr


.globl SMS_GetMarioStatus__FP9THitActor
SMS_GetMarioStatus__FP9THitActor: # 0x80273648
    lwz     r3, 0x7c(r3)
    blr


.globl SMS_GetMarioRfPlane__Fv
SMS_GetMarioRfPlane__Fv: # 0x80273650
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0xdc(r3)
    blr


.globl SMS_GetMarioWlPlane__Fv
SMS_GetMarioWlPlane__Fv: # 0x8027365c
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0xd8(r3)
    blr


.globl SMS_GetMarioGrPlane__Fv
SMS_GetMarioGrPlane__Fv: # 0x80273668
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0xe0(r3)
    blr


.globl SMS_GetMarioStatus__Fv
SMS_GetMarioStatus__Fv: # 0x80273674
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x7c(r3)
    blr


.globl SMS_WindMoveMario__FRCQ29JGeometry8TVec3_f_
SMS_WindMoveMario__FRCQ29JGeometry8TVec3_f_: # 0x80273680
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    bl      windMove__6TMarioFRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_FlowMoveMario__FRCQ29JGeometry8TVec3_f_
SMS_FlowMoveMario__FRCQ29JGeometry8TVec3_f_: # 0x802736a8
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    bl      flowMove__6TMarioFRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_MarioWarpRequest__FRCQ29JGeometry8TVec3_f_f
SMS_MarioWarpRequest__FRCQ29JGeometry8TVec3_f_f: # 0x802736d0
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    bl      warpRequest__6TMarioFRCQ29JGeometry8TVec3_f_f
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_
SMS_MarioMoveRequest__FRCQ29JGeometry8TVec3_f_: # 0x802736f8
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_IsMarioDashing__Fv
SMS_IsMarioDashing__Fv: # 0x8027372c
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x118(r3)
    rlwinm. r0, r0, 0, 17, 17
    beq-    branch_0x80273744
    li      r0, 0x1
    b       branch_0x80273748

branch_0x80273744:
    li      r0, 0x0
branch_0x80273748:
    clrlwi  r0, r0, 24
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    blr


# SMS_IsMarioOnYoshi(void)
.globl SMS_IsMarioOnYoshi__Fv
SMS_IsMarioOnYoshi__Fv: # 0x80273760
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)

    lwz     r3, -0x60d8(r13)
    bl      onYoshi__6TMarioCFv
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24

    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


# SMS_IsMarioOpeningDoor(void)
.globl SMS_IsMarioOpeningDoor__Fv
SMS_IsMarioOpeningDoor__Fv: # 0x80273794
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    cmplwi  r0, 0x1320
    beq-    branch_0x802737ac
    cmplwi  r0, 0x1321
    bne-    branch_0x802737b4
branch_0x802737ac:
    li      r3, 0x1
    blr

branch_0x802737b4:
    li      r3, 0x0
    blr


# SMS_IsMarioOnWire(void)
.globl SMS_IsMarioOnWire__Fv
SMS_IsMarioOnWire__Fv: # 0x802737bc
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802737e8
    lwz     r3, 0x68(r3)
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x98
    bne-    branch_0x802737e8
    li      r0, 0x1
    b       branch_0x802737ec

branch_0x802737e8:
    li      r0, 0x0
branch_0x802737ec:
    clrlwi  r0, r0, 24
    neg     r3, r0
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24
    blr


# SMS_IsMarioTouchGround4cm(void)
.globl SMS_IsMarioTouchGround4cm__Fv
SMS_IsMarioTouchGround4cm__Fv: # 0x80273804
    lwz     r3, -0x60d8(r13)
    lfs     f1, -0xaa0(rtoc)
    lfs     f0, 0xec(r3)
    lfs     f2, 0x14(r3)
    fadds   f0, f1, f0
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x8027382c
    li      r0, 0x1
    b       branch_0x80273830

branch_0x8027382c:
    li      r0, 0x0
branch_0x80273830:
    clrlwi. r0, r0, 24
    beq-    branch_0x80273840
    li      r3, 0x1
    blr

branch_0x80273840:
    li      r3, 0x0
    blr


.globl SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f
SMS_ThrowMario__FRCQ29JGeometry8TVec3_f_f: # 0x80273848
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    bl      throwMario__6TMarioFRCQ29JGeometry8TVec3_f_f

    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


# SMS_SendMessageToMario(THitActor *, unsigned long)
.globl SMS_SendMessageToMario__FP9THitActorUl
SMS_SendMessageToMario__FP9THitActorUl: # 0x80273870
    mflr    r0
    mr      r5, r4
    stw     r0, 0x4(sp)
    mr      r0, r3
    mr      r4, r0
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x802738ac
    li      r3, 0x1
    b       branch_0x802738b0

branch_0x802738ac:
    li      r3, 0x0
branch_0x802738b0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


# SMS_GetMarioWaterGun(void)
.globl SMS_GetMarioWaterGun__Fv
SMS_GetMarioWaterGun__Fv: # 0x802738c0
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x3e4(r3)
    blr


# SMS_GetMarioGravity(void)
.globl SMS_GetMarioGravity__Fv
SMS_GetMarioGravity__Fv: # 0x802738cc
    lwz     r3, -0x60d8(r13)
    lfs     f1, 0xb18(r3)
    blr


# SMS_GetMarioGrLevel(void)
.globl SMS_GetMarioGrLevel__Fv
SMS_GetMarioGrLevel__Fv: # 0x802738d8
    lwz     r3, -0x60d8(r13)
    lfs     f1, 0xec(r3)
    blr


# SMS_GetMarioDamageRadius(void)
.globl SMS_GetMarioDamageRadius__Fv
SMS_GetMarioDamageRadius__Fv: # 0x802738e4
    lwz     r3, -0x60d8(r13)
    lfs     f1, 0x58(r3)
    blr


# SMS_GetMarioHP(void)
.globl SMS_GetMarioHP__Fv
SMS_GetMarioHP__Fv: # 0x802738f0
    lwz     r3, -0x60d8(r13)
    lha     r3, 0x120(r3)
    blr


# SMS_IsMarioHeadSlideAttack(void)
.globl SMS_IsMarioHeadSlideAttack__Fv
SMS_IsMarioHeadSlideAttack__Fv: # 0x802738fc
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x456
    beq-    branch_0x80273918
    cmplwi  r0, 0x88a
    bne-    branch_0x80273920
branch_0x80273918:
    li      r3, 0x1
    blr

branch_0x80273920:
    li      r3, 0x0
    blr


.globl SMS_IsMarioStatusElecDamage__Fv
SMS_IsMarioStatusElecDamage__Fv: # 0x80273928
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x338
    bne-    branch_0x80273944
    li      r3, 0x1
    blr

branch_0x80273944:
    li      r3, 0x0
    blr


.globl SMS_IsMarioStatusThrownDown__Fv
SMS_IsMarioStatusThrownDown__Fv: # 0x8027394c
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xfffe
    cmplwi  r0, 0x8b8
    bne-    branch_0x80273968
    li      r3, 0x1
    blr

branch_0x80273968:
    li      r3, 0x0
    blr


.globl SMS_IsMarioStatusHipDrop__Fv
SMS_IsMarioStatusHipDrop__Fv: # 0x80273970
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x7c(r3)
    addis   r0, r3, 0xff80
    cmplwi  r0, 0x8a9
    bne-    branch_0x8027398c
    li      r3, 0x1
    blr

branch_0x8027398c:
    li      r3, 0x0
    blr


.globl SMS_IsMarioStatusTypeSwimming__Fv
SMS_IsMarioStatusTypeSwimming__Fv: # 0x80273994
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 18, 18
    beq-    branch_0x802739ac
    li      r3, 0x1
    blr

branch_0x802739ac:
    li      r3, 0x0
    blr


.globl SMS_IsMarioStatusTypeJumping__Fv
SMS_IsMarioStatusTypeJumping__Fv: # 0x802739b4
    lwz     r3, -0x60d8(r13)
    lwz     r0, 0x7c(r3)
    rlwinm. r0, r0, 0, 20, 20
    beq-    branch_0x802739cc
    li      r3, 0x1
    blr

branch_0x802739cc:
    li      r3, 0x0
    blr


.globl SMS_GetMarioHitActor__Fv
SMS_GetMarioHitActor__Fv: # 0x802739d4
    lwz     r3, -0x60b8(r13)
    blr


.globl SMS_AskJumpIntoWaterEffectExist__Fv
SMS_AskJumpIntoWaterEffectExist__Fv: # 0x802739dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, -0x60d8(r13)
    bl      askJumpIntoWaterEffectExist__6TMarioCFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_GetYoshi__Fv
SMS_GetYoshi__Fv: # 0x80273a00
    lwz     r3, -0x60d8(r13)
    lwz     r3, 0x3f0(r3)
    blr


.globl SMS_SetMarioAccessParams__Fv
SMS_SetMarioAccessParams__Fv: # 0x80273a0c
    lwz     r8, -0x60d8(r13)
    addi    r5, r8, 0x94
    stw     r8, -0x60b8(r13)
    addi    r9, r8, 0xa4
    addi    r4, r8, 0x10
    stw     r5, -0x60b0(r13)
    addi    r3, r5, 0x2
    addi    r0, r5, 0x4
    stw     r4, -0x60b4(r13)
    addi    r7, r9, 0x4
    addi    r6, r9, 0x8
    stw     r3, -0x60ac(r13)
    addi    r5, r8, 0xf8
    addi    r4, r8, 0x118
    stw     r0, -0x60a8(r13)
    addi    r3, r8, 0x820
    addi    r0, r8, 0xe0
    stw     r9, -0x60a4(r13)
    stw     r7, -0x60a0(r13)
    stw     r6, -0x609c(r13)
    stw     r5, -0x6098(r13)
    stw     r4, -0x6094(r13)
    stw     r3, -0x6090(r13)
    stw     r0, -0x608c(r13)
    blr
