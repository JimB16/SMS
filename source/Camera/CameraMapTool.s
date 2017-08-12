
.globl __dt__14TCameraMapToolFv
__dt__14TCameraMapToolFv: # 0x8003011c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80030164
    lis     r3, __vvt__14TCameraMapTool@ha
    addi    r0, r3, __vvt__14TCameraMapTool@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__Q26JDrama8TNameRefFv
    extsh.  r0, r31
    ble-    branch_0x80030164
    mr      r3, r30
    bl      __dl__FPv
branch_0x80030164:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_
calcPosAndAt__14TCameraMapToolCFPQ29JGeometry8TVec3_f_PQ29JGeometry8TVec3_f_: # 0x80030180
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    lfs     f0, 0xc(r3)
    stfs    f0, 0x0(r4)
    lfs     f0, 0x10(r3)
    stfs    f0, 0x4(r4)
    lfs     f0, 0x14(r3)
    stfs    f0, 0x8(r4)
    lwz     r3, R13Off_m0x7118(r13)
    lwz     r4, 0x24(r31)
    bl      isFixCameraSpecifyMode__15CPolarSubCameraCFi
    clrlwi. r0, r3, 24
    beq-    branch_0x80030214
    lfs     f1, 0x1c(r31)
    lfs     f0, -0x7608(r2)
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, 0x18(r31)
    mr      r31, r3
    lfs     f0, -0x7608(r2)
    fneg    f1, f1
    fmuls   f1, f0, f1
    bl      CLBRoundf_s___Ff
    lfs     f1, -0x7604(r2)
    addi    r5, r3, 0x0
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r6, r31, 0x0
    bl      CLBPolarToCross__FRC3VecP3Vecfss
    b       branch_0x80030238

branch_0x80030214:
    addi    r3, sp, 0x14
    lwz     r4, R13Off_m0x7118(r13)
    bl      getUsualLookat__15CPolarSubCameraCFv
    lfs     f0, 0x14(sp)
    stfs    f0, 0x0(r30)
    lfs     f0, 0x18(sp)
    stfs    f0, 0x4(r30)
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x8(r30)
branch_0x80030238:
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    addi    sp, sp, 0x30
    blr


.globl load__14TCameraMapToolFR20JSUMemoryInputStream
load__14TCameraMapToolFR20JSUMemoryInputStream: # 0x80030254
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r3, 0x0
    bl      load__Q26JDrama8TNameRefFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, r30, 0xc
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x14
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x18
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x1c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x24
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x28
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    addi    r3, r31, 0x0
    addi    r4, r30, 0x2c
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x28(r30)
    cmpwi   r0, 0x0
    bge-    branch_0x80030318
    li      r0, 0x0
    stw     r0, 0x28(r30)
branch_0x80030318:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr

