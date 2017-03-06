
.globl __dt__Q26JStage7TCameraFv
__dt__Q26JStage7TCameraFv: # 0x80336f7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80336fc4
    lis     r3, 0x803e
    addi    r0, r3, 0x45c8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JStage7TObjectFv
    extsh.  r0, r31
    ble-    branch_0x80336fc4
    mr      r3, r30
    bl      __dl__FPv
branch_0x80336fc4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGFGetType__Q26JStage7TCameraCFv
JSGFGetType__Q26JStage7TCameraCFv: # 0x80336fe0
    li      r3, 0x3
    blr


.globl JSGGetProjectionType__Q26JStage7TCameraCFv
JSGGetProjectionType__Q26JStage7TCameraCFv: # 0x80336fe8
    li      r3, 0x1
    blr


.globl JSGSetProjectionType__Q26JStage7TCameraFQ26JStage18TECameraProjection
JSGSetProjectionType__Q26JStage7TCameraFQ26JStage18TECameraProjection: # 0x80336ff0
    blr


.globl JSGGetProjectionNear__Q26JStage7TCameraCFv
JSGGetProjectionNear__Q26JStage7TCameraCFv: # 0x80336ff4
    lfs     f1, 0x990(rtoc)
    blr


.globl JSGSetProjectionNear__Q26JStage7TCameraFf
JSGSetProjectionNear__Q26JStage7TCameraFf: # 0x80336ffc
    blr


.globl JSGGetProjectionFar__Q26JStage7TCameraCFv
JSGGetProjectionFar__Q26JStage7TCameraCFv: # 0x80337000
    lfs     f1, 0x994(rtoc)
    blr


.globl JSGSetProjectionFar__Q26JStage7TCameraFf
JSGSetProjectionFar__Q26JStage7TCameraFf: # 0x80337008
    blr


.globl JSGGetProjectionFovy__Q26JStage7TCameraCFv
JSGGetProjectionFovy__Q26JStage7TCameraCFv: # 0x8033700c
    lfs     f1, 0x990(rtoc)
    blr


.globl JSGSetProjectionFovy__Q26JStage7TCameraFf
JSGSetProjectionFovy__Q26JStage7TCameraFf: # 0x80337014
    blr


.globl JSGGetProjectionAspect__Q26JStage7TCameraCFv
JSGGetProjectionAspect__Q26JStage7TCameraCFv: # 0x80337018
    lfs     f1, 0x990(rtoc)
    blr


.globl JSGSetProjectionAspect__Q26JStage7TCameraFf
JSGSetProjectionAspect__Q26JStage7TCameraFf: # 0x80337020
    blr


.globl JSGGetProjectionField__Q26JStage7TCameraCFPf
JSGGetProjectionField__Q26JStage7TCameraCFPf: # 0x80337024
    blr


.globl JSGSetProjectionField__Q26JStage7TCameraFPCf
JSGSetProjectionField__Q26JStage7TCameraFPCf: # 0x80337028
    blr


.globl JSGGetViewType__Q26JStage7TCameraCFv
JSGGetViewType__Q26JStage7TCameraCFv: # 0x8033702c
    li      r3, 0x1
    blr


.globl JSGSetViewType__Q26JStage7TCameraFQ26JStage12TECameraView
JSGSetViewType__Q26JStage7TCameraFQ26JStage12TECameraView: # 0x80337034
    blr


.globl JSGGetViewPosition__Q26JStage7TCameraCFP3Vec
JSGGetViewPosition__Q26JStage7TCameraCFP3Vec: # 0x80337038
    blr


.globl JSGSetViewPosition__Q26JStage7TCameraFRC3Vec
JSGSetViewPosition__Q26JStage7TCameraFRC3Vec: # 0x8033703c
    blr


.globl JSGGetViewUpVector__Q26JStage7TCameraCFP3Vec
JSGGetViewUpVector__Q26JStage7TCameraCFP3Vec: # 0x80337040
    blr


.globl JSGSetViewUpVector__Q26JStage7TCameraFRC3Vec
JSGSetViewUpVector__Q26JStage7TCameraFRC3Vec: # 0x80337044
    blr


.globl JSGGetViewTargetPosition__Q26JStage7TCameraCFP3Vec
JSGGetViewTargetPosition__Q26JStage7TCameraCFP3Vec: # 0x80337048
    blr


.globl JSGSetViewTargetPosition__Q26JStage7TCameraFRC3Vec
JSGSetViewTargetPosition__Q26JStage7TCameraFRC3Vec: # 0x8033704c
    blr


.globl JSGGetViewRoll__Q26JStage7TCameraCFv
JSGGetViewRoll__Q26JStage7TCameraCFv: # 0x80337050
    lfs     f1, 0x990(rtoc)
    blr


.globl JSGSetViewRoll__Q26JStage7TCameraFf
JSGSetViewRoll__Q26JStage7TCameraFf: # 0x80337058
    blr

