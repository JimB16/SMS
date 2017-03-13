
.globl SMS_IsMarioRoofing__Fv
SMS_IsMarioRoofing__Fv: # 0x802735f0
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Status(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, MARIOSTATUS_ROOFING0
    blt-    branch_0x80273614
    cmplwi  r0, MARIOSTATUS_ROOFING1
    bgt-    branch_0x80273614
    li      r3, 0x1
    blr

branch_0x80273614:
    li      r3, 0x0
    blr


# SMS_IsMarioFencing(void)
.globl SMS_IsMarioFencing__Fv
SMS_IsMarioFencing__Fv: # 0x8027361c
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Status(r3)
    clrlwi  r0, r0, 23
    cmplwi  r0, MARIOSTATUS_FENCING0
    blt-    branch_0x80273640
    cmplwi  r0, MARIOSTATUS_FENCING1
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
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_RfPlane(r3)
    blr


.globl SMS_GetMarioWlPlane__Fv
SMS_GetMarioWlPlane__Fv: # 0x8027365c
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_WlPlane(r3)
    blr


# SMS_GetMarioGrPlane(void)
.globl SMS_GetMarioGrPlane__Fv
SMS_GetMarioGrPlane__Fv: # 0x80273668
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_GroundPlane(r3)
    blr


# SMS_GetMarioStatus(void)
.globl SMS_GetMarioStatus__Fv
SMS_GetMarioStatus__Fv: # 0x80273674
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_Status(r3)
    blr


.globl SMS_WindMoveMario__FRCQ29JGeometry8TVec3_f_
SMS_WindMoveMario__FRCQ29JGeometry8TVec3_f_: # 0x80273680
    mflr    r0
    mr      r4, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, MarioActor(r13)
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
    lwz     r3, MarioActor(r13)
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
    lwz     r3, MarioActor(r13)
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
    lwz     r3, MarioActor(r13)
    lwz     r12, MarioActor_Type(r3)
    lwz     r12, 0xac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl SMS_IsMarioDashing__Fv
SMS_IsMarioDashing__Fv: # 0x8027372c
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Flags(r3)
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

    lwz     r3, MarioActor(r13)
    bl      onYoshi__6TMarioCFv
    neg     r3, r3
    subic   r0, r3, 0x1
    subfe   r0, r0, r3
    clrlwi  r3, r0, 24

    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


/* SMS_IsMarioOpeningDoor(void)
*/
.globl SMS_IsMarioOpeningDoor__Fv
SMS_IsMarioOpeningDoor__Fv: # 0x80273794
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Status(r3)
    cmplwi  r0, MARIOSTATUS_OPENINGDOOR0
    beq-    branch_0x802737ac
    cmplwi  r0, MARIOSTATUS_OPENINGDOOR1
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
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x802737e8
    lwz     r3, MarioActor_68(r3)
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
    lwz     r3, MarioActor(r13)
    lfs     f1, -0xaa0(rtoc)
    lfs     f0, MarioActor_ec(r3)
    lfs     f2, MarioActor_PositionY(r3)
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
    lwz     r3, MarioActor(r13)
    bl      throwMario__6TMarioFRCQ29JGeometry8TVec3_f_f

    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


/* SMS_SendMessageToMario(THitActor *, unsigned long)
Input:
r3: HitActor
r4: MarioMsgNr
*/
.globl SMS_SendMessageToMario__FP9THitActorUl
SMS_SendMessageToMario__FP9THitActorUl: # 0x80273870
    mflr    r0
    mr      r5, r4
    stw     r0, 0x4(sp)
    mr      r0, r3
    mr      r4, r0
    stwu    sp, -0x8(sp)
    lwz     r3, MarioActor(r13)
    lwz     r12, MarioActor_Type(r3)
    lwz     r12, MarioActor_Type_a0(r12)
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
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_WaterGun(r3)
    blr


# SMS_GetMarioGravity(void)
.globl SMS_GetMarioGravity__Fv
SMS_GetMarioGravity__Fv: # 0x802738cc
    lwz     r3, MarioActor(r13)
    lfs     f1, MarioActor_Gravity(r3)
    blr


# SMS_GetMarioGrLevel(void)
.globl SMS_GetMarioGrLevel__Fv
SMS_GetMarioGrLevel__Fv: # 0x802738d8
    lwz     r3, MarioActor(r13)
    lfs     f1, MarioActor_ec(r3)
    blr


# SMS_GetMarioDamageRadius(void)
.globl SMS_GetMarioDamageRadius__Fv
SMS_GetMarioDamageRadius__Fv: # 0x802738e4
    lwz     r3, MarioActor(r13)
    lfs     f1, MarioActor_58(r3)
    blr


# SMS_GetMarioHP(void)
.globl SMS_GetMarioHP__Fv
SMS_GetMarioHP__Fv: # 0x802738f0
    lwz     r3, MarioActor(r13)
    lha     r3, MarioActor_HP(r3)
    blr


/* SMS_IsMarioHeadSlideAttack(void)
*/
.globl SMS_IsMarioHeadSlideAttack__Fv
SMS_IsMarioHeadSlideAttack__Fv: # 0x802738fc
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_Status(r3)
    addis   r0, r3, 0xff80
    cmplwi  r0, MARIOSTATUS_DIVESLIDE
    beq-    branch_0x80273918
    cmplwi  r0, MARIOSTATUS_DIVE
    bne-    branch_0x80273920
branch_0x80273918:
    li      r3, 0x1
    blr

branch_0x80273920:
    li      r3, 0x0
    blr


/* SMS_IsMarioStatusElecDamage(void)
*/
.globl SMS_IsMarioStatusElecDamage__Fv
SMS_IsMarioStatusElecDamage__Fv: # 0x80273928
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_Status(r3)
    addis   r0, r3, 0xfffe
    cmplwi  r0, MARIOSTATUS_ELECDAMAGE
    bne-    branch_0x80273944
    li      r3, 0x1
    blr

branch_0x80273944:
    li      r3, 0x0
    blr


/* SMS_IsMarioStatusThrownDown(void)
*/
.globl SMS_IsMarioStatusThrownDown__Fv
SMS_IsMarioStatusThrownDown__Fv: # 0x8027394c
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_Status(r3)
    addis   r0, r3, 0xfffe
    cmplwi  r0, MARIOSTATUS_THROWNDOWN
    bne-    branch_0x80273968
    li      r3, 0x1
    blr

branch_0x80273968:
    li      r3, 0x0
    blr


.globl SMS_IsMarioStatusHipDrop__Fv
SMS_IsMarioStatusHipDrop__Fv: # 0x80273970
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_Status(r3)
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
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Status(r3)
    rlwinm. r0, r0, 0, 18, 18 # MARIOSTATUS_TYPESWIMMING
    beq-    branch_0x802739ac
    li      r3, 0x1
    blr

branch_0x802739ac:
    li      r3, 0x0
    blr


# SMS_IsMarioStatusTypeJumping(void)
.globl SMS_IsMarioStatusTypeJumping__Fv
SMS_IsMarioStatusTypeJumping__Fv: # 0x802739b4
    lwz     r3, MarioActor(r13)
    lwz     r0, MarioActor_Status(r3)
    rlwinm. r0, r0, 0, 20, 20 # MARIOSTATUS_TYPEJUMPING
    beq-    branch_0x802739cc
    li      r3, 0x1
    blr

branch_0x802739cc:
    li      r3, 0x0
    blr


# SMS_GetMarioHitActor(void)
.globl SMS_GetMarioHitActor__Fv
SMS_GetMarioHitActor__Fv: # 0x802739d4
    lwz     r3, MarioHitActor(r13)
    blr


/* SMS_AskJumpIntoWaterEffectExist(void)
*/
.globl SMS_AskJumpIntoWaterEffectExist__Fv
SMS_AskJumpIntoWaterEffectExist__Fv: # 0x802739dc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, MarioActor(r13)
    bl      askJumpIntoWaterEffectExist__6TMarioCFv
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


/* SMS_GetYoshi(void)
*/
.globl SMS_GetYoshi__Fv
SMS_GetYoshi__Fv: # 0x80273a00
    lwz     r3, MarioActor(r13)
    lwz     r3, MarioActor_Yoshi(r3)
    blr


/* SMS_SetMarioAccessParams(void)
*/
.globl SMS_SetMarioAccessParams__Fv
SMS_SetMarioAccessParams__Fv: # 0x80273a0c
    lwz     r8, MarioActor(r13)
    addi    r5, r8, MarioActor_AngleX
    stw     r8, MarioHitActor(r13)
    addi    r9, r8, MarioActor_SpeedX
    addi    r4, r8, MarioActor_PositionX
    stw     r5, MarioAngleX(r13)
    addi    r3, r5, MarioActor_AngleY-MarioActor_AngleX
    addi    r0, r5, MarioActor_AngleZ-MarioActor_AngleX
    stw     r4, MarioHitActorPos(r13)
    addi    r7, r9, MarioActor_SpeedY-MarioActor_SpeedX
    addi    r6, r9, MarioActor_SpeedZ-MarioActor_SpeedX
    stw     r3, MarioAngleY(r13)
    addi    r5, r8, MarioActor_LightID
    addi    r4, r8, MarioActor_Flags
    stw     r0, MarioAngleZ(r13)
    addi    r3, r8, MarioActor_ThrowPower
    addi    r0, r8, MarioActor_GroundPlane
    stw     r9, MarioSpeedX(r13)
    stw     r7, MarioSpeedY(r13)
    stw     r6, MarioSpeedZ(r13)
    stw     r5, MarioLightID(r13)
    stw     r4, MarioFlags(r13)
    stw     r3, MarioThrowPower(r13)
    stw     r0, MarioGroundPlane(r13)
    blr
