
.globl __dt__Q26JStage13TAmbientLightFv
__dt__Q26JStage13TAmbientLightFv: # 0x80336ef4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80336f3c
    lis     r3, __vvt__Q26JStage13TAmbientLight@h
    addi    r0, r3, __vvt__Q26JStage13TAmbientLight@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JStage7TObjectFv
    extsh.  r0, r31
    ble-    branch_0x80336f3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x80336f3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGFGetType__Q26JStage13TAmbientLightCFv
JSGFGetType__Q26JStage13TAmbientLightCFv: # 0x80336f58
    li      r3, 0x4
    blr


.globl JSGGetColor__Q26JStage13TAmbientLightCFv
JSGGetColor__Q26JStage13TAmbientLightCFv: # 0x80336f60
    stwu    sp, -0x18(sp)
    lwz     r0, R2Off_0x988(r2)
    stw     r0, 0x10(sp)
    lwz     r3, 0x10(sp)
    addi    sp, sp, 0x18
    blr


.globl JSGSetColor__Q26JStage13TAmbientLightF8_GXColor
JSGSetColor__Q26JStage13TAmbientLightF8_GXColor: # 0x80336f78
    blr

