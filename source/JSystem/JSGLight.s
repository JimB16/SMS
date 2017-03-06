
.globl __dt__Q26JStage6TLightFv
__dt__Q26JStage6TLightFv: # 0x8033710c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80337154
    lis     r3, 0x803e
    addi    r0, r3, 0x46b8
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JStage7TObjectFv
    extsh.  r0, r31
    ble-    branch_0x80337154
    mr      r3, r30
    bl      __dl__FPv
branch_0x80337154:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGFGetType__Q26JStage6TLightCFv
JSGFGetType__Q26JStage6TLightCFv: # 0x80337170
    li      r3, 0x5
    blr


.globl JSGGetLightType__Q26JStage6TLightCFv
JSGGetLightType__Q26JStage6TLightCFv: # 0x80337178
    li      r3, 0x1
    blr


.globl JSGSetLightType__Q26JStage6TLightFQ26JStage7TELight
JSGSetLightType__Q26JStage6TLightFQ26JStage7TELight: # 0x80337180
    blr


.globl JSGGetColor__Q26JStage6TLightCFv
JSGGetColor__Q26JStage6TLightCFv: # 0x80337184
    stwu    sp, -0x18(sp)
    lwz     r0, 0x9a0(rtoc)
    stw     r0, 0x10(sp)
    lwz     r3, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl JSGSetColor__Q26JStage6TLightF8_GXColor
JSGSetColor__Q26JStage6TLightF8_GXColor: # 0x8033719c
    blr


.globl JSGGetDistanceAttenuation__Q26JStage6TLightCFPfPfP13_GXDistAttnFn
JSGGetDistanceAttenuation__Q26JStage6TLightCFPfPfP13_GXDistAttnFn: # 0x803371a0
    blr


.globl JSGSetDistanceAttenuation__Q26JStage6TLightFff13_GXDistAttnFn
JSGSetDistanceAttenuation__Q26JStage6TLightFff13_GXDistAttnFn: # 0x803371a4
    blr


.globl JSGGetAngleAttenuation__Q26JStage6TLightCFPfP9_GXSpotFn
JSGGetAngleAttenuation__Q26JStage6TLightCFPfP9_GXSpotFn: # 0x803371a8
    blr


.globl JSGSetAngleAttenuation__Q26JStage6TLightFf9_GXSpotFn
JSGSetAngleAttenuation__Q26JStage6TLightFf9_GXSpotFn: # 0x803371ac
    blr


.globl JSGGetPosition__Q26JStage6TLightCFP3Vec
JSGGetPosition__Q26JStage6TLightCFP3Vec: # 0x803371b0
    blr


.globl JSGSetPosition__Q26JStage6TLightFRC3Vec
JSGSetPosition__Q26JStage6TLightFRC3Vec: # 0x803371b4
    blr


.globl JSGGetDirection__Q26JStage6TLightCFP3Vec
JSGGetDirection__Q26JStage6TLightCFP3Vec: # 0x803371b8
    blr


.globl JSGSetDirection__Q26JStage6TLightFRC3Vec
JSGSetDirection__Q26JStage6TLightFRC3Vec: # 0x803371bc
    blr

