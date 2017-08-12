
.globl __dt__Q26JStage7TObjectFv
__dt__Q26JStage7TObjectFv: # 0x803371c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x803371f4
    lis     r3, __vvt__Q26JStage7TObject@h
    addi    r3, r3, __vvt__Q26JStage7TObject@l
    extsh.  r0, r4
    stw     r3, 0x0(r31)
    ble-    branch_0x803371f4
    mr      r3, r31
    bl      __dl__FPv
branch_0x803371f4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl JSGGetName__Q26JStage7TObjectCFv
JSGGetName__Q26JStage7TObjectCFv: # 0x8033720c
    li      r3, 0x0
    blr


.globl JSGGetFlag__Q26JStage7TObjectCFv
JSGGetFlag__Q26JStage7TObjectCFv: # 0x80337214
    li      r3, 0x0
    blr


.globl JSGSetFlag__Q26JStage7TObjectFUl
JSGSetFlag__Q26JStage7TObjectFUl: # 0x8033721c
    blr


.globl JSGGetData__Q26JStage7TObjectCFUlPvUl
JSGGetData__Q26JStage7TObjectCFUlPvUl: # 0x80337220
    li      r3, 0x0
    blr


.globl JSGSetData__Q26JStage7TObjectFUlPCvUl
JSGSetData__Q26JStage7TObjectFUlPCvUl: # 0x80337228
    blr


.globl JSGGetParent__Q26JStage7TObjectCFPPQ26JStage7TObjectPUl
JSGGetParent__Q26JStage7TObjectCFPPQ26JStage7TObjectPUl: # 0x8033722c
    blr


.globl JSGSetParent__Q26JStage7TObjectFPQ26JStage7TObjectUl
JSGSetParent__Q26JStage7TObjectFPQ26JStage7TObjectUl: # 0x80337230
    blr


.globl JSGSetRelation__Q26JStage7TObjectFbPQ26JStage7TObjectUl
JSGSetRelation__Q26JStage7TObjectFbPQ26JStage7TObjectUl: # 0x80337234
    blr

