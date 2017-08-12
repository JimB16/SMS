
.globl ctrlMultiPlayerCamera___15CPolarSubCameraFv
ctrlMultiPlayerCamera___15CPolarSubCameraFv: # 0x800308b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    lwz     r3, 0x2bc(r3)
    lbz     r6, 0x1(r3)
    cmpwi   r6, 0x0
    bgt-    branch_0x80030910
    lfs     f0, 0x148(r31)
    stfs    f0, 0x8c(r31)
    lfs     f0, 0x14c(r31)
    stfs    f0, 0x90(r31)
    lfs     f0, 0x150(r31)
    stfs    f0, 0x94(r31)
    lfs     f0, 0x124(r31)
    stfs    f0, 0x98(r31)
    lfs     f0, 0x128(r31)
    stfs    f0, 0x9c(r31)
    lfs     f0, 0x12c(r31)
    stfs    f0, 0xa0(r31)
    b       branch_0x80030c08

branch_0x80030910:
    lfs     f0, -0x75f0(r2)
    mr      r3, r6
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x44(sp)
    lwz     r4, 0x2bc(r31)
    lwz     r5, 0x4(r4)
    ble-    branch_0x80030a5c
    srwi.   r0, r3, 2
    mtctr   r0
    beq-    branch_0x80030a1c
branch_0x8003093c:
    lwz     r4, 0x0(r5)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r4, 0xc(r5)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r4, 0x18(r5)
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    lwz     r4, 0x24(r5)
    addi    r5, r5, 0x30
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    bdnz+      branch_0x8003093c
    andi.   r3, r3, 0x3
    beq-    branch_0x80030a5c
branch_0x80030a1c:
    mtctr   r3
branch_0x80030a20:
    lwz     r4, 0x0(r5)
    addi    r5, r5, 0xc
    lfs     f1, 0x3c(sp)
    lfs     f0, 0x0(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x3c(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x4(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x8(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x44(sp)
    bdnz+      branch_0x80030a20
branch_0x80030a5c:
    xoris   r0, r6, 0x8000
    lfd     f1, -0x75d0(r2)
    stw     r0, 0x4c(sp)
    lis     r0, unk_43300000@h
    lfs     f2, -0x75ec(r2)
    addi    r3, r6, -0x1
    stw     r0, 0x48(sp)
    lfs     f3, 0x3c(sp)
    addi    r7, r0, unk_43300000@l
    lfd     f0, 0x48(sp)
    fsubs   f0, f0, f1
    fdivs   f1, f2, f0
    fmuls   f0, f3, f1
    stfs    f0, 0x3c(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x44(sp)
    lwz     r4, 0x68(r31)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x24(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x40(sp)
    lwz     r4, 0x2bc(r31)
    lfs     f5, -0x75f0(r2)
    lwz     r8, 0x4(r4)
    b       branch_0x80030b44

branch_0x80030ad0:
    addi    r4, r7, 0x1
    subf    r0, r4, r6
    cmpw    r4, r6
    mtctr   r0
    addi    r9, r8, 0xc
    bge-    branch_0x80030b3c
branch_0x80030ae8:
    lwz     r5, 0x0(r9)
    lwz     r4, 0x0(r8)
    lfs     f2, 0x0(r5)
    lfs     f3, 0x0(r4)
    lfs     f1, 0x4(r4)
    lfs     f0, 0x4(r5)
    fsubs   f4, f3, f2
    lfs     f2, 0x8(r4)
    fsubs   f3, f1, f0
    lfs     f0, 0x8(r5)
    fmuls   f1, f4, f4
    fsubs   f2, f2, f0
    fmuls   f0, f3, f3
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f5
    ble-    branch_0x80030b34
    fmr     f5, f0
branch_0x80030b34:
    addi    r9, r9, 0xc
    bdnz+      branch_0x80030ae8
branch_0x80030b3c:
    addi    r7, r7, 0x1
    addi    r8, r8, 0xc
branch_0x80030b44:
    cmpw    r7, r3
    blt+    branch_0x80030ad0
    lfs     f0, -0x75f0(r2)
    fcmpo   cr0, f5, f0
    ble-    branch_0x80030b88
    frsqrte f3, f5
    lfd     f2, -0x75e8(r2)
    lfd     f0, -0x75e0(r2)
    fmul    f1, f3, f3
    fmul    f2, f2, f3
    fnmsub   f0, f5, f1, f0
    fmul    f0, f2, f0
    fmul    f0, f5, f0
    frsp    f0, f0
    stfs    f0, 0x28(sp)
    lfs     f3, 0x28(sp)
    b       branch_0x80030b8c

branch_0x80030b88:
    fmr     f3, f5
branch_0x80030b8c:
    lfs     f1, -0x75d4(r2)
    lfs     f0, -0x75d8(r2)
    lwz     r3, 0x68(r31)
    fmadds  f31, f1, f3, f0
    lfs     f2, 0xc(r3)
    lfs     f1, 0x8(r3)
    fcmpo   cr0, f31, f2
    ble-    branch_0x80030bb4
    fmr     f31, f2
    b       branch_0x80030bc0

branch_0x80030bb4:
    fcmpo   cr0, f31, f1
    bge-    branch_0x80030bc0
    fmr     f31, f1
branch_0x80030bc0:
    fmr     f3, f31
    bl      CLBCalcRatio_f___Ffff
    lwz     r4, 0x68(r31)
    lha     r3, 0x18(r4)
    lha     r4, 0x1a(r4)
    bl      CLBLinearInbetween_s___Fssf
    lfs     f0, 0x3c(sp)
    mr      r5, r3
    fmr     f1, f31
    addi    r3, sp, 0x3c
    stfs    f0, 0x8c(r31)
    addi    r4, r31, 0x98
    lfs     f0, 0x40(sp)
    li      r6, 0x0
    stfs    f0, 0x90(r31)
    lfs     f0, 0x44(sp)
    stfs    f0, 0x94(r31)
    bl      CLBPolarToCross__FRC3VecP3Vecfss
branch_0x80030c08:
    mr      r3, r31
    bl      calcPosAndAt___15CPolarSubCameraFv
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl removeMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_
removeMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_: # 0x80030c28
    lwz     r7, 0x2bc(r3)
    cmplwi  r7, 0x0
    bne-    branch_0x80030c3c
    li      r3, 0x0
    blr

branch_0x80030c3c:
    li      r3, 0x0
    lwz     r5, 0x4(r7)
    mr      r6, r3
    b       branch_0x80030c9c

branch_0x80030c4c:
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    beq-    branch_0x80030c6c
    cmplwi  r0, 0x0
    bne-    branch_0x80030c94
    lwz     r0, 0x0(r5)
    cmplw   r0, r4
    bne-    branch_0x80030c94
branch_0x80030c6c:
    addi    r0, r8, -0x1
    cmpw    r6, r0
    beq-    branch_0x80030c90
    lwz     r3, 0xc(r5)
    lwz     r0, 0x10(r5)
    stw     r3, 0x0(r5)
    stw     r0, 0x4(r5)
    lwz     r0, 0x14(r5)
    stw     r0, 0x8(r5)
branch_0x80030c90:
    li      r3, 0x1
branch_0x80030c94:
    addi    r6, r6, 0x1
    addi    r5, r5, 0xc
branch_0x80030c9c:
    lbz     r8, 0x1(r7)
    cmpw    r6, r8
    blt+    branch_0x80030c4c
    clrlwi  r0, r3, 24
    cmplwi  r0, 0x1
    bnelr-    

    addi    r0, r8, -0x1
    stb     r0, 0x1(r7)
    blr


.globl addMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_ff
addMultiPlayer__15CPolarSubCameraFPCQ29JGeometry8TVec3_f_ff: # 0x80030cc0
    lwz     r5, 0x2bc(r3)
    cmplwi  r5, 0x0
    bne-    branch_0x80030cd4
    li      r3, 0x0
    blr

branch_0x80030cd4:
    lbz     r3, 0x1(r5)
    lbz     r0, 0x0(r5)
    cmplw   r3, r0
    blt-    branch_0x80030cec
    li      r4, 0x0
    b       branch_0x80030d14

branch_0x80030cec:
    mulli   r0, r3, 0xc
    lwz     r3, 0x4(r5)
    add     r3, r3, r0
    stw     r4, 0x0(r3)
    li      r4, 0x1
    stfs    f1, 0x4(r3)
    stfs    f2, 0x8(r3)
    lbz     r3, 0x1(r5)
    addi    r0, r3, 0x1
    stb     r0, 0x1(r5)
branch_0x80030d14:
    mr      r3, r4
    blr


.globl createMultiPlayer__15CPolarSubCameraFUc
createMultiPlayer__15CPolarSubCameraFUc: # 0x80030d1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    mr      r30, r3
    stw     r29, 0x1c(sp)
    lwz     r0, 0x2bc(r3)
    cmplwi  r0, 0x0
    bne-    branch_0x80030d98
    li      r3, 0x8
    bl      __nw__FUl
    mr.     r29, r3
    beq-    branch_0x80030d94
    stb     r31, 0x0(r29)
    clrlwi  r31, r31, 24
    li      r0, 0x0
    stb     r0, 0x1(r29)
    mulli   r3, r31, 0xc
    stw     r0, 0x4(r29)
    addi    r3, r3, 0x8
    bl      __nwa__FUl
    lis     r4, __ct__16TMultiPlayerDataFv@h
    addi    r4, r4, __ct__16TMultiPlayerDataFv@l
    addi    r7, r31, 0x0
    li      r5, 0x0
    li      r6, 0xc
    bl      __construct_new_array
    stw     r3, 0x4(r29)
branch_0x80030d94:
    stw     r29, 0x2bc(r30)
branch_0x80030d98:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl __ct__16TMultiPlayerDataFv
__ct__16TMultiPlayerDataFv: # 0x80030db4
    li      r0, 0x0
    stw     r0, 0x0(r3)
    lfs     f0, -0x75f0(r2)
    stfs    f0, 0x4(r3)
    stfs    f0, 0x8(r3)
    blr

