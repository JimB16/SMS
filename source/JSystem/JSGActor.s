
.globl __dt__Q26JStage6TActorFv
__dt__Q26JStage6TActorFv: # 0x8033705c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x803370a4
    lis     r3, 0x803e
    addi    r0, r3, 0x4650
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JStage7TObjectFv
    extsh.  r0, r31
    ble-    branch_0x803370a4
    mr      r3, r30
    bl      __dl__FPv
branch_0x803370a4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGFGetType__Q26JStage6TActorCFv
JSGFGetType__Q26JStage6TActorCFv: # 0x803370c0
    li      r3, 0x2
    blr


.globl JSGGetTranslation__Q26JStage6TActorCFP3Vec
JSGGetTranslation__Q26JStage6TActorCFP3Vec: # 0x803370c8
    blr


.globl JSGSetTranslation__Q26JStage6TActorFRC3Vec
JSGSetTranslation__Q26JStage6TActorFRC3Vec: # 0x803370cc
    blr


.globl JSGGetScaling__Q26JStage6TActorCFP3Vec
JSGGetScaling__Q26JStage6TActorCFP3Vec: # 0x803370d0
    blr


.globl JSGSetScaling__Q26JStage6TActorFRC3Vec
JSGSetScaling__Q26JStage6TActorFRC3Vec: # 0x803370d4
    blr


.globl JSGGetRotation__Q26JStage6TActorCFP3Vec
JSGGetRotation__Q26JStage6TActorCFP3Vec: # 0x803370d8
    blr


.globl JSGSetRotation__Q26JStage6TActorFRC3Vec
JSGSetRotation__Q26JStage6TActorFRC3Vec: # 0x803370dc
    blr


.globl JSGGetShape__Q26JStage6TActorCFv
JSGGetShape__Q26JStage6TActorCFv: # 0x803370e0
    li      r3, -0x1
    blr


.globl JSGSetShape__Q26JStage6TActorFUl
JSGSetShape__Q26JStage6TActorFUl: # 0x803370e8
    blr


.globl JSGGetAnimation__Q26JStage6TActorCFv
JSGGetAnimation__Q26JStage6TActorCFv: # 0x803370ec
    li      r3, -0x1
    blr


.globl JSGSetAnimation__Q26JStage6TActorFUl
JSGSetAnimation__Q26JStage6TActorFUl: # 0x803370f4
    blr


.globl JSGGetAnimationFrame__Q26JStage6TActorCFv
JSGGetAnimationFrame__Q26JStage6TActorCFv: # 0x803370f8
    lfs     f1, 0x998(rtoc)
    blr


.globl JSGSetAnimationFrame__Q26JStage6TActorFf
JSGSetAnimationFrame__Q26JStage6TActorFf: # 0x80337100
    blr


.globl JSGGetAnimationFrameMax__Q26JStage6TActorCFv
JSGGetAnimationFrameMax__Q26JStage6TActorCFv: # 0x80337104
    lfs     f1, 0x998(rtoc)
    blr

