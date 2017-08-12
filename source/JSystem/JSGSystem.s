
.globl __dt__Q26JStage7TSystemFv
__dt__Q26JStage7TSystemFv: # 0x80337238
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80337280
    lis     r3, __vvt__Q26JStage7TSystem@h
    addi    r0, r3, __vvt__Q26JStage7TSystem@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JStage7TObjectFv
    extsh.  r0, r31
    ble-    branch_0x80337280
    mr      r3, r30
    bl      __dl__FPv
branch_0x80337280:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl JSGFGetType__Q26JStage7TSystemCFv
JSGFGetType__Q26JStage7TSystemCFv: # 0x8033729c
    li      r3, 0x1
    blr


.globl JSGFindObject__Q26JStage7TSystemCFPCcQ26JStage8TEObject
JSGFindObject__Q26JStage7TSystemCFPCcQ26JStage8TEObject: # 0x803372a4
    li      r3, 0x0
    blr


.globl JSGCreateObject__Q26JStage7TSystemFPCcQ26JStage8TEObjectUl
JSGCreateObject__Q26JStage7TSystemFPCcQ26JStage8TEObjectUl: # 0x803372ac
    li      r3, 0x0
    blr


.globl JSGDestroyObject__Q26JStage7TSystemFPQ26JStage7TObject
JSGDestroyObject__Q26JStage7TSystemFPQ26JStage7TObject: # 0x803372b4
    blr


.globl JSGGetSystemData__Q26JStage7TSystemFUl
JSGGetSystemData__Q26JStage7TSystemFUl: # 0x803372b8
    li      r3, 0x0
    blr


.globl JSGSetSystemData__Q26JStage7TSystemFUlUl
JSGSetSystemData__Q26JStage7TSystemFUlUl: # 0x803372c0
    blr

branch_0x803372c4:
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
    .long 0x0
