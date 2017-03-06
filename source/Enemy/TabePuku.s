
.globl __dt__18TNerveTabePukuDragFv
__dt__18TNerveTabePukuDragFv: # 0x80136578
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801365bc
    lis     r3, 0x803c
    subi    r0, r3, 0xc74
    stw     r0, 0x0(r31)
    beq-    branch_0x801365ac
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801365ac:
    extsh.  r0, r4
    ble-    branch_0x801365bc
    mr      r3, r31
    bl      __dl__FPv
branch_0x801365bc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTabePukuDragCFP24TSpineBase_10TLiveActor_
execute__18TNerveTabePukuDragCFP24TSpineBase_10TLiveActor_: # 0x801365d4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stfd    f30, 0xb0(sp)
    stfd    f29, 0xa8(sp)
    stw     r31, 0xa4(sp)
    stw     r30, 0xa0(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x801367bc
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x1e4(r31)
    stfs    f0, 0x1e8(r31)
    lfs     f0, -0x4e64(rtoc)
    stfs    f0, 0x1ec(r31)
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f4, -0x4e50(rtoc)
    stw     r0, 0x9c(sp)
    lis     r0, 0x4330
    lfs     f2, -0x4e60(rtoc)
    stw     r0, 0x98(sp)
    lfs     f1, -0x4e5c(rtoc)
    lfd     f3, 0x98(sp)
    lfs     f0, -0x4e58(rtoc)
    fsubs   f3, f3, f4
    fmuls   f2, f2, f3
    fmuls   f1, f2, f1
    fmuls   f29, f0, f1
    fmr     f1, f29
    bl      sinf
    fmr     f30, f1
    fmr     f1, f29
    bl      cosf
    fmr     f31, f1
    lfs     f29, -0x4e68(rtoc)
    addi    r3, sp, 0x44
    bl      __ct__Q29JGeometry8TVec4_f_Fv
    lfs     f5, -0x4e68(rtoc)
    fneg    f0, f29
    lfs     f1, 0x1e8(r31)
    fneg    f2, f30
    lfs     f3, 0x1ec(r31)
    fmuls   f1, f5, f1
    lfs     f4, 0x1e4(r31)
    fneg    f6, f5
    addi    r3, r31, 0x1e4
    fmsubs  f1, f30, f3, f1
    fmadds  f1, f31, f4, f1
    stfs    f1, 0x44(sp)
    lfs     f1, 0x1e4(r31)
    lfs     f3, 0x1ec(r31)
    fmuls   f1, f5, f1
    lfs     f4, 0x1e8(r31)
    fmadds  f1, f6, f3, f1
    fmadds  f1, f31, f4, f1
    stfs    f1, 0x48(sp)
    lfs     f1, 0x1e4(r31)
    lfs     f3, 0x1e8(r31)
    fmuls   f1, f30, f1
    lfs     f4, 0x1ec(r31)
    fmsubs  f1, f5, f3, f1
    fmadds  f1, f31, f4, f1
    stfs    f1, 0x4c(sp)
    lfs     f1, 0x1e8(r31)
    lfs     f3, 0x1e4(r31)
    fmuls   f1, f30, f1
    lfs     f4, 0x1ec(r31)
    fmsubs  f1, f6, f3, f1
    fnmsubs  f1, f5, f4, f1
    stfs    f1, 0x50(sp)
    lfs     f1, 0x48(sp)
    lfs     f6, 0x44(sp)
    fmuls   f5, f1, f0
    lfs     f7, 0x4c(sp)
    fmuls   f1, f1, f31
    lfs     f8, 0x50(sp)
    fmadds  f4, f6, f31, f5
    fmadds  f3, f6, f29, f1
    fmsubs  f1, f6, f2, f5
    fnmsubs  f5, f7, f2, f4
    fmadds  f4, f7, f0, f3
    fmadds  f3, f7, f31, f1
    fmadds  f1, f8, f0, f5
    fmadds  f2, f8, f2, f4
    fmadds  f3, f8, f0, f3
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_80136990
    li      r5, 0x0
    stw     r5, 0x88(sp)
    mr      r3, r31
    lwz     r4, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r4, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0x94(sp)
    lwz     r0, 0x88(sp)
    stw     r0, 0xf4(r31)
    lwz     r4, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r4, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x88(sp)
    stw     r0, 0x104(r31)
    lwz     r4, 0x8c(sp)
    lwz     r0, 0x90(sp)
    stw     r4, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x94(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x30c(r3)
    stfs    f0, 0x140(r31)
branch_0x801367bc:
    addi    r3, r31, 0x0
    addi    r4, r31, 0x1e4
    bl      swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_
    lbz     r0, 0x1dc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x80136864
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x801367e8
    li      r0, 0x1
    b       branch_0x801367ec

branch_0x801367e8:
    li      r0, 0x0
branch_0x801367ec:
    cmpwi   r0, 0x0
    beq-    branch_0x80136864
    lwz     r3, 0x104(r31)
    cmplwi  r3, 0x0
    beq-    branch_0x80136808
    addi    r6, r3, 0x10
    b       branch_0x8013680c

branch_0x80136808:
    addi    r6, r31, 0x108
branch_0x8013680c:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x54
    lwz     r0, 0x4(r6)
    addi    r4, r31, 0x10
    stw     r5, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x5c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x54
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    mr      r3, r31
    fmr     f29, f1
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x398(r3)
    fcmpo   cr0, f0, f29
    bge-    branch_0x80136880
branch_0x80136864:
    addi    r3, r31, 0x0
    li      r4, 0x8
    bl      SMS_SendMessageToMario__FP9THitActorUl
    li      r0, 0x0
    stw     r0, 0x6c(r31)
    li      r0, 0x1
    b       branch_0x80136884

branch_0x80136880:
    li      r0, 0x0
branch_0x80136884:
    clrlwi. r0, r0, 24
    beq-    branch_0x8013690c
    lbz     r0, -0x64b4(r13)
    extsb.  r0, r0
    bne-    branch_0x801368d0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64b0(r13)
    subi    r0, r3, 0xc34
    lis     r4, 0x8013
    stw     r0, -0x64b0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a28
    addi    r4, r4, 0x6934
    subi    r3, r13, 0x64b0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64b4(r13)
branch_0x801368d0:
    subi    r4, r13, 0x64b0
    cmplwi  r4, 0x0
    beq-    branch_0x80136904
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80136904
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80136904:
    li      r3, 0x1
    b       branch_0x80136910

branch_0x8013690c:
    li      r3, 0x0
branch_0x80136910:
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lfd     f30, 0xb0(sp)
    mtlr    r0
    lfd     f29, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    addi    sp, sp, 0xc0
    blr


.globl __dt__26TNerveTabePukuRecoverGraphFv
__dt__26TNerveTabePukuRecoverGraphFv: # 0x80136934
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80136978
    lis     r3, 0x803c
    subi    r0, r3, 0xc34
    stw     r0, 0x0(r31)
    beq-    branch_0x80136968
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80136968:
    extsh.  r0, r4
    ble-    branch_0x80136978
    mr      r3, r31
    bl      __dl__FPv
branch_0x80136978:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_80136990
set_f___Q29JGeometry8TVec3_f_Ffff_80136990: # 0x80136990
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl theNerve__18TNerveTabePukuDragFv
theNerve__18TNerveTabePukuDragFv: # 0x801369a0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x6494(r13)
    extsb.  r0, r0
    bne-    branch_0x801369f0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6490(r13)
    subi    r0, r3, 0xc74
    lis     r4, 0x8013
    stw     r0, -0x6490(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a58
    addi    r4, r4, 0x6578
    subi    r3, r13, 0x6490
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6494(r13)
branch_0x801369f0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6490
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__18TNerveTabePukuDiveCFP24TSpineBase_10TLiveActor_
execute__18TNerveTabePukuDiveCFP24TSpineBase_10TLiveActor_: # 0x80136a04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r4
    stw     r30, 0x50(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80136a88
    lfs     f0, 0x14(r30)
    addi    r3, r30, 0x0
    li      r4, 0x2
    stfs    f0, 0x1e0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    bl      SMSGetAnmFrameRate__Fv
    lfs     f0, -0x4e44(rtoc)
    li      r4, 0x0
    lwz     r3, 0x74(r30)
    fmuls   f31, f0, f1
    bl      getFrameCtrl__6MActorFi
    stfs    f31, 0xc(r3)
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x30c(r3)
    stfs    f0, 0x140(r30)
branch_0x80136a88:
    lfs     f2, 0xc8(r30)
    addi    r4, sp, 0x40
    lfs     f1, 0x14(r30)
    mr      r3, r30
    lfs     f0, -0x4e68(rtoc)
    fsubs   f1, f2, f1
    stfs    f0, 0x40(sp)
    stfs    f1, 0x44(sp)
    stfs    f0, 0x48(sp)
    bl      swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x348(r3)
    lfs     f2, 0x14(r30)
    lfs     f1, 0x1e0(r30)
    fneg    f0, f0
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80136b14
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x4e40(rtoc)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    blt-    branch_0x80136b14
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80136b08
    li      r0, 0x1
    b       branch_0x80136b0c

branch_0x80136b08:
    li      r0, 0x0
branch_0x80136b0c:
    cmpwi   r0, 0x0
    bne-    branch_0x80136b1c
branch_0x80136b14:
    li      r0, 0x1
    b       branch_0x80136b20

branch_0x80136b1c:
    li      r0, 0x0
branch_0x80136b20:
    clrlwi. r0, r0, 24
    beq-    branch_0x80136ba8
    lbz     r0, -0x6494(r13)
    extsb.  r0, r0
    bne-    branch_0x80136b6c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6490(r13)
    subi    r0, r3, 0xc74
    lis     r4, 0x8013
    stw     r0, -0x6490(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a58
    addi    r4, r4, 0x6578
    subi    r3, r13, 0x6490
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x6494(r13)
branch_0x80136b6c:
    subi    r4, r13, 0x6490
    cmplwi  r4, 0x0
    beq-    branch_0x80136ba0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80136ba0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80136ba0:
    li      r3, 0x1
    b       branch_0x80136bac

branch_0x80136ba8:
    li      r3, 0x0
branch_0x80136bac:
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lwz     r31, 0x54(sp)
    mtlr    r0
    lwz     r30, 0x50(sp)
    addi    sp, sp, 0x60
    blr


.globl theNerve__18TNerveTabePukuDiveFv
theNerve__18TNerveTabePukuDiveFv: # 0x80136bc8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x649c(r13)
    extsb.  r0, r0
    bne-    branch_0x80136c18
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6498(r13)
    subi    r0, r3, 0xc64
    lis     r4, 0x8013
    stw     r0, -0x6498(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a4c
    addi    r4, r4, 0x6c2c
    subi    r3, r13, 0x6498
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x649c(r13)
branch_0x80136c18:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x6498
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveTabePukuDiveFv
__dt__18TNerveTabePukuDiveFv: # 0x80136c2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80136c70
    lis     r3, 0x803c
    subi    r0, r3, 0xc64
    stw     r0, 0x0(r31)
    beq-    branch_0x80136c60
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80136c60:
    extsh.  r0, r4
    ble-    branch_0x80136c70
    mr      r3, r31
    bl      __dl__FPv
branch_0x80136c70:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTabePukuBiteCFP24TSpineBase_10TLiveActor_
execute__18TNerveTabePukuBiteCFP24TSpineBase_10TLiveActor_: # 0x80136c88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    lwz     r30, 0x0(r4)
    li      r4, 0x2
    lwz     r12, 0x0(r30)
    addi    r3, r30, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x6044(r13)
    li      r4, 0x2922
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80136cec
    addi    r4, r30, 0x10
    li      r3, 0x2922
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80136cec:
    lbz     r0, -0x649c(r13)
    extsb.  r0, r0
    bne-    branch_0x80136d30
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x6498(r13)
    subi    r0, r3, 0xc64
    lis     r4, 0x8013
    stw     r0, -0x6498(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a4c
    addi    r4, r4, 0x6c2c
    subi    r3, r13, 0x6498
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x649c(r13)
branch_0x80136d30:
    subi    r4, r13, 0x6498
    cmplwi  r4, 0x0
    beq-    branch_0x80136d64
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80136d64
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80136d64:
    lwz     r0, 0x34(sp)
    li      r3, 0x1
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    addi    sp, sp, 0x30
    blr


.globl theNerve__18TNerveTabePukuBiteFv
theNerve__18TNerveTabePukuBiteFv: # 0x80136d80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x64a4(r13)
    extsb.  r0, r0
    bne-    branch_0x80136dd0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64a0(r13)
    subi    r0, r3, 0xc54
    lis     r4, 0x8013
    stw     r0, -0x64a0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a40
    addi    r4, r4, 0x6de4
    subi    r3, r13, 0x64a0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64a4(r13)
branch_0x80136dd0:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x64a0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __dt__18TNerveTabePukuBiteFv
__dt__18TNerveTabePukuBiteFv: # 0x80136de4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80136e28
    lis     r3, 0x803c
    subi    r0, r3, 0xc54
    stw     r0, 0x0(r31)
    beq-    branch_0x80136e18
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80136e18:
    extsh.  r0, r4
    ble-    branch_0x80136e28
    mr      r3, r31
    bl      __dl__FPv
branch_0x80136e28:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveTabePukuAttackCFP24TSpineBase_10TLiveActor_
execute__20TNerveTabePukuAttackCFP24TSpineBase_10TLiveActor_: # 0x80136e40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stw     r31, 0xec(sp)
    stw     r30, 0xe8(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80136f20
    mr      r3, r31
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r3, -0x60b8(r13)
    lfs     f0, -0x4e68(rtoc)
    stw     r3, 0xd8(sp)
    cmplwi  r3, 0x0
    stfs    f0, 0xdc(sp)
    stfs    f0, 0xe0(sp)
    stfs    f0, 0xe4(sp)
    beq-    branch_0x80136ebc
    lfs     f2, 0x18(r3)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x10(r3)
    stfs    f0, 0xdc(sp)
    stfs    f1, 0xe0(sp)
    stfs    f2, 0xe4(sp)
branch_0x80136ebc:
    lwz     r4, 0xd8(sp)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stw     r4, 0xf4(r31)
    lwz     r5, 0xdc(sp)
    lwz     r4, 0xe0(sp)
    stw     r5, 0xf8(r31)
    stw     r4, 0xfc(r31)
    lwz     r4, 0xe4(sp)
    stw     r4, 0x100(r31)
    lwz     r4, 0xd8(sp)
    stw     r4, 0x104(r31)
    lwz     r5, 0xdc(sp)
    lwz     r4, 0xe0(sp)
    stw     r5, 0x108(r31)
    stw     r4, 0x10c(r31)
    lwz     r4, 0xe4(sp)
    stw     r4, 0x110(r31)
    stw     r0, 0x118(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2f8(r3)
    stfs    f0, 0x140(r31)
branch_0x80136f20:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, -0x60b4(r13)
    lfs     f0, 0x14(r31)
    lfs     f1, 0x4(r4)
    lfs     f2, 0x130(r3)
    fsubs   f0, f1, f0
    fabs    f0, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x80136f5c
    li      r0, 0x1
    b       branch_0x80137080

branch_0x80136f5c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x104(r31)
    lfs     f31, 0x11c(r3)
    cmplwi  r4, 0x0
    beq-    branch_0x80136f88
    addi    r6, r4, 0x10
    b       branch_0x80136f8c

branch_0x80136f88:
    addi    r6, r31, 0x108
branch_0x80136f8c:
    lwz     r5, 0x0(r6)
    addi    r3, sp, 0x80
    lwz     r0, 0x4(r6)
    addi    r4, r31, 0x10
    stw     r5, 0x80(sp)
    stw     r0, 0x84(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x88(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    addi    r3, sp, 0x80
    addi    r4, r3, 0x0
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    bl      sqrt__Q29JGeometry8TUtil_f_Ff
    fcmpo   cr0, f1, f31
    ble-    branch_0x80136fd0
    li      r0, 0x1
    b       branch_0x80137080

branch_0x80136fd0:
    lwz     r4, 0x124(r31)
    addi    r3, sp, 0xb8
    addi    r5, r31, 0x10
    lwz     r4, 0x0(r4)
    bl      getNearestPosOnGraphLink__9TGraphWebCFRCQ29JGeometry8TVec3_f_
    lwz     r0, 0xb8(sp)
    mr      r3, r31
    lwz     r4, 0xbc(sp)
    stw     r0, 0xac(sp)
    lwz     r0, 0xc0(sp)
    stw     r4, 0xb0(sp)
    stw     r0, 0xb4(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lfs     f1, 0xb4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xb4(sp)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f1, 0xac(sp)
    lfs     f0, 0xb0(sp)
    fmuls   f1, f1, f1
    lfs     f2, 0xb4(sp)
    fmuls   f0, f0, f0
    lfs     f3, 0x384(r3)
    fmuls   f2, f2, f2
    fadds   f0, f1, f0
    fmuls   f1, f3, f3
    fadds   f0, f2, f0
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013707c
    li      r0, 0x1
    b       branch_0x80137080

branch_0x8013707c:
    li      r0, 0x0
branch_0x80137080:
    clrlwi. r0, r0, 24
    bne-    branch_0x80137094
    lbz     r0, 0x1dc(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x80137114
branch_0x80137094:
    lbz     r0, -0x64b4(r13)
    extsb.  r0, r0
    bne-    branch_0x801370d8
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64b0(r13)
    subi    r0, r3, 0xc34
    lis     r4, 0x8013
    stw     r0, -0x64b0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a28
    addi    r4, r4, 0x6934
    subi    r3, r13, 0x64b0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64b4(r13)
branch_0x801370d8:
    subi    r4, r13, 0x64b0
    cmplwi  r4, 0x0
    beq-    branch_0x8013710c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8013710c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8013710c:
    li      r3, 0x1
    b       branch_0x801371b4

branch_0x80137114:
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x8013712c
    addi    r5, r4, 0x10
    b       branch_0x80137130

branch_0x8013712c:
    addi    r5, r3, 0x4
branch_0x80137130:
    lwz     r4, 0x0(r5)
    mr      r3, r31
    lwz     r0, 0x4(r5)
    stw     r4, 0x9c(sp)
    addi    r4, sp, 0x9c
    stw     r0, 0xa0(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f1, 0xa4(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xa4(sp)
    lfs     f1, 0x9c(sp)
    lfs     f2, -0x4e68(rtoc)
    lfs     f0, -0x4e3c(rtoc)
    fadds   f1, f1, f2
    stfs    f1, 0x9c(sp)
    lfs     f1, 0xa0(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xa0(sp)
    lfs     f0, 0xa4(sp)
    fadds   f0, f0, f2
    stfs    f0, 0xa4(sp)
    bl      swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_
    li      r3, 0x0
branch_0x801371b4:
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lwz     r31, 0xec(sp)
    mtlr    r0
    lwz     r30, 0xe8(sp)
    addi    sp, sp, 0xf8
    blr


.globl __dt__20TNerveTabePukuAttackFv
__dt__20TNerveTabePukuAttackFv: # 0x801371d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80137214
    lis     r3, 0x803c
    subi    r0, r3, 0xc44
    stw     r0, 0x0(r31)
    beq-    branch_0x80137204
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80137204:
    extsh.  r0, r4
    ble-    branch_0x80137214
    mr      r3, r31
    bl      __dl__FPv
branch_0x80137214:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__26TNerveTabePukuRecoverGraphCFP24TSpineBase_10TLiveActor_
execute__26TNerveTabePukuRecoverGraphCFP24TSpineBase_10TLiveActor_: # 0x8013722c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8013728c
    lwz     r4, 0x124(r31)
    li      r0, -0x1
    addi    r3, r31, 0x0
    stw     r0, 0x8(r4)
    lwz     r4, 0x124(r31)
    stw     r0, 0x4(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2e4(r3)
    stfs    f0, 0x140(r31)
branch_0x8013728c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80137328
    lbz     r0, -0x64c4(r13)
    extsb.  r0, r0
    bne-    branch_0x801372ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64c0(r13)
    subi    r0, r3, 0xc14
    lis     r4, 0x8013
    stw     r0, -0x64c0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a10
    addi    r4, r4, 0x7430
    subi    r3, r13, 0x64c0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64c4(r13)
branch_0x801372ec:
    subi    r4, r13, 0x64c0
    cmplwi  r4, 0x0
    beq-    branch_0x80137320
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x80137320
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x80137320:
    li      r3, 0x1
    b       branch_0x80137418

branch_0x80137328:
    lwz     r0, 0xf0(r31)
    li      r3, 0x1
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80137340
    mr      r0, r3
    b       branch_0x80137344

branch_0x80137340:
    li      r0, 0x0
branch_0x80137344:
    cmpwi   r0, 0x0
    beq-    branch_0x8013735c
    lbz     r0, 0x1dc(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8013735c
    li      r3, 0x0
branch_0x8013735c:
    clrlwi. r0, r3, 24
    beq-    branch_0x80137374
    lfs     f2, -0x4e68(rtoc)
    lfs     f3, -0x4e38(rtoc)
    fmr     f4, f2
    b       branch_0x80137380

branch_0x80137374:
    lfs     f4, -0x4e68(rtoc)
    fmr     f3, f4
    fmr     f2, f3
branch_0x80137380:
    lwz     r4, 0x104(r31)
    addi    r3, r31, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x80137398
    addi    r5, r4, 0x10
    b       branch_0x8013739c

branch_0x80137398:
    addi    r5, r3, 0x4
branch_0x8013739c:
    lwz     r4, 0x0(r5)
    mr      r3, r31
    lwz     r0, 0x4(r5)
    stw     r4, 0x44(sp)
    addi    r4, sp, 0x44
    stw     r0, 0x48(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x10(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f1, 0x4c(sp)
    lfs     f0, 0x18(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lfs     f0, 0x44(sp)
    fadds   f0, f0, f2
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fadds   f0, f0, f3
    stfs    f0, 0x48(sp)
    lfs     f0, 0x4c(sp)
    fadds   f0, f0, f4
    stfs    f0, 0x4c(sp)
    bl      swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_
    li      r3, 0x0
branch_0x80137418:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __dt__25TNerveTabePukuGraphWanderFv
__dt__25TNerveTabePukuGraphWanderFv: # 0x80137430
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80137474
    lis     r3, 0x803c
    subi    r0, r3, 0xc14
    stw     r0, 0x0(r31)
    beq-    branch_0x80137464
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x80137464:
    extsh.  r0, r4
    ble-    branch_0x80137474
    mr      r3, r31
    bl      __dl__FPv
branch_0x80137474:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl theNerve__26TNerveTabePukuRecoverGraphFv
theNerve__26TNerveTabePukuRecoverGraphFv: # 0x8013748c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lbz     r0, -0x64b4(r13)
    extsb.  r0, r0
    bne-    branch_0x801374dc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64b0(r13)
    subi    r0, r3, 0xc34
    lis     r4, 0x8013
    stw     r0, -0x64b0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a28
    addi    r4, r4, 0x6934
    subi    r3, r13, 0x64b0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64b4(r13)
branch_0x801374dc:
    lwz     r0, 0xc(sp)
    subi    r3, r13, 0x64b0
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl execute__19TNerveTabePukuFoundCFP24TSpineBase_10TLiveActor_
execute__19TNerveTabePukuFoundCFP24TSpineBase_10TLiveActor_: # 0x801374f0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    stfd    f30, 0x80(sp)
    stfd    f29, 0x78(sp)
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80137544
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x1
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x140(r30)
branch_0x80137544:
    lfs     f0, 0x198(r30)
    mr      r3, r30
    lfs     f8, 0x1a0(r30)
    lfs     f9, 0x19c(r30)
    fmuls   f1, f0, f0
    lfs     f2, 0x1a4(r30)
    fmuls   f5, f0, f8
    lfs     f7, 0x140(r30)
    lwz     r4, 0xac(r30)
    lwz     r0, 0xb0(r30)
    fmuls   f3, f2, f9
    lfs     f6, -0x4e44(rtoc)
    fmuls   f2, f2, f0
    stw     r4, 0x50(sp)
    lfs     f0, -0x4e64(rtoc)
    stw     r0, 0x54(sp)
    fmuls   f4, f6, f3
    fmuls   f3, f9, f8
    lwz     r0, 0xb4(r30)
    fmuls   f2, f6, f2
    fmadds  f31, f6, f5, f4
    stw     r0, 0x58(sp)
    fmsubs  f30, f6, f3, f2
    lwz     r12, 0x0(r30)
    fmuls   f2, f9, f9
    fnmsubs  f0, f6, f1, f0
    lwz     r12, 0x108(r12)
    fmuls   f31, f31, f7
    fnmsubs  f29, f6, f2, f0
    mtlr    r12
    fmuls   f30, f30, f7
    fmuls   f29, f29, f7
    blrl
    lfs     f1, 0x320(r3)
    lfs     f0, 0x50(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x58(sp)
    lfs     f0, 0x50(sp)
    fadds   f0, f0, f31
    stfs    f0, 0x50(sp)
    lfs     f0, 0x54(sp)
    fadds   f0, f0, f30
    stfs    f0, 0x54(sp)
    lfs     f0, 0x58(sp)
    fadds   f0, f0, f29
    stfs    f0, 0x58(sp)
    lwz     r3, 0x50(sp)
    lwz     r0, 0x54(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x58(sp)
    stw     r0, 0xb4(r30)
    lfs     f2, -0x4e68(rtoc)
    lfs     f1, 0x58(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8013765c
    lfs     f0, 0x50(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80137654
    lfs     f0, -0x4e30(rtoc)
    b       branch_0x801376d8

branch_0x80137654:
    lfs     f0, -0x4e2c(rtoc)
    b       branch_0x801376d8

branch_0x8013765c:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x8013769c
    lfs     f2, 0x50(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4e28(rtoc)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    stw     r0, 0x68(sp)
    lfd     f1, 0x68(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x801376d8

branch_0x8013769c:
    fneg    f1, f1
    lfs     f2, 0x50(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x4e28(rtoc)
    stw     r0, 0x6c(sp)
    lis     r0, 0x4330
    lfs     f0, -0x4e24(rtoc)
    stw     r0, 0x68(sp)
    lfd     f2, 0x68(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x801376d8:
    stfs    f0, 0x34(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x80137770
    lbz     r0, -0x64ac(r13)
    extsb.  r0, r0
    bne-    branch_0x80137734
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64a8(r13)
    subi    r0, r3, 0xc44
    lis     r4, 0x8013
    stw     r0, -0x64a8(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a34
    addi    r4, r4, 0x71d0
    subi    r3, r13, 0x64a8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64ac(r13)
branch_0x80137734:
    subi    r4, r13, 0x64a8
    cmplwi  r4, 0x0
    beq-    branch_0x80137768
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80137768
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80137768:
    li      r3, 0x1
    b       branch_0x80137774

branch_0x80137770:
    li      r3, 0x0
branch_0x80137774:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x90
    blr


.globl __dt__19TNerveTabePukuFoundFv
__dt__19TNerveTabePukuFoundFv: # 0x80137798
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x801377dc
    lis     r3, 0x803c
    subi    r0, r3, 0xc24
    stw     r0, 0x0(r31)
    beq-    branch_0x801377cc
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    stw     r0, 0x0(r31)
branch_0x801377cc:
    extsh.  r0, r4
    ble-    branch_0x801377dc
    mr      r3, r31
    bl      __dl__FPv
branch_0x801377dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__25TNerveTabePukuGraphWanderCFP24TSpineBase_10TLiveActor_
execute__25TNerveTabePukuGraphWanderCFP24TSpineBase_10TLiveActor_: # 0x801377f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r4
    stw     r30, 0x60(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80137864
    lwz     r4, 0x124(r30)
    li      r0, -0x1
    addi    r3, r30, 0x0
    stw     r0, 0x8(r4)
    bl      goToShortestNextGraphNode__11TSpineEnemyFv
    mr      r3, r30
    lwz     r12, 0x0(r30)
    li      r4, 0x2
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x2e4(r3)
    stfs    f0, 0x140(r30)
branch_0x80137864:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x110(r12)
    mtlr    r12
    blrl
    cmpwi   r3, 0x0
    beq-    branch_0x80137888
    mr      r3, r30
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x80137888:
    mr      r3, r30
    lfs     f1, -0x4e64(rtoc)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80137928
    lbz     r0, -0x64bc(r13)
    extsb.  r0, r0
    bne-    branch_0x801378ec
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64b8(r13)
    subi    r0, r3, 0xc24
    lis     r4, 0x8013
    stw     r0, -0x64b8(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a1c
    addi    r4, r4, 0x7798
    subi    r3, r13, 0x64b8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64bc(r13)
branch_0x801378ec:
    subi    r4, r13, 0x64b8
    cmplwi  r4, 0x0
    beq-    branch_0x80137920
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80137920
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80137920:
    li      r3, 0x1
    b       branch_0x801379c4

branch_0x80137928:
    lwz     r4, 0x104(r30)
    addi    r3, r30, 0x104
    cmplwi  r4, 0x0
    beq-    branch_0x80137940
    addi    r5, r4, 0x10
    b       branch_0x80137944

branch_0x80137940:
    addi    r5, r3, 0x4
branch_0x80137944:
    lwz     r4, 0x0(r5)
    mr      r3, r30
    lwz     r0, 0x4(r5)
    stw     r4, 0x40(sp)
    addi    r4, sp, 0x40
    stw     r0, 0x44(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x48(sp)
    lfs     f1, 0x40(sp)
    lfs     f0, 0x10(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x40(sp)
    lfs     f1, 0x44(sp)
    lfs     f0, 0x14(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x44(sp)
    lfs     f1, 0x48(sp)
    lfs     f0, 0x18(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f0, 0x40(sp)
    lfs     f1, -0x4e68(rtoc)
    fadds   f0, f0, f1
    stfs    f0, 0x40(sp)
    lfs     f0, 0x44(sp)
    fadds   f0, f0, f1
    stfs    f0, 0x44(sp)
    lfs     f0, 0x48(sp)
    fadds   f0, f0, f1
    stfs    f0, 0x48(sp)
    bl      swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_
    li      r3, 0x0
branch_0x801379c4:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl createModelData__16TTabePukuManagerFv
createModelData__16TTabePukuManagerFv: # 0x801379dc
    mflr    r0
    lis     r4, 0x8038
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x6f18
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x2c(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl load__16TTabePukuManagerFR20JSUMemoryInputStream
load__16TTabePukuManagerFR20JSUMemoryInputStream: # 0x80137a10
    mflr    r0
    lis     r5, 0x8038
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r26, r3, 0x0
    addi    r25, r4, 0x0
    addi    r30, r5, 0x6db0
    li      r3, 0x39c
    bl      __nw__FUl
    mr.     r27, r3
    beq-    branch_0x80137c28
    stw     r27, 0x10(sp)
    addi    r4, r30, 0x180
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r30, 0x194
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r31, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r30, 0x194
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, 0x803b
    subi    r29, r3, 0x42c4
    stw     r29, 0x2d4(r31)
    lis     r3, 0x803b
    subi    r28, r3, 0x42d0
    lfs     f0, -0x4e20(rtoc)
    addi    r3, r30, 0x1a0
    stfs    f0, 0x2e4(r31)
    stw     r28, 0x2d4(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2e8
    addi    r6, r30, 0x1a0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2e8(r31)
    addi    r3, r30, 0x1b0
    lfs     f0, -0x4e1c(rtoc)
    stfs    f0, 0x2f8(r31)
    stw     r28, 0x2e8(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x2fc
    addi    r6, r30, 0x1b0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x2fc(r31)
    addi    r3, r30, 0x1bc
    lfs     f0, -0x4e18(rtoc)
    stfs    f0, 0x30c(r31)
    stw     r28, 0x2fc(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x310
    addi    r6, r30, 0x1bc
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x310(r31)
    addi    r3, r30, 0x1c8
    lfs     f0, -0x4e14(rtoc)
    stfs    f0, 0x320(r31)
    stw     r28, 0x310(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x324
    addi    r6, r30, 0x1c8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x324(r31)
    addi    r3, r30, 0x1d8
    lfs     f0, -0x4e10(rtoc)
    stfs    f0, 0x334(r31)
    stw     r28, 0x324(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x338
    addi    r6, r30, 0x1d8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x338(r31)
    addi    r3, r30, 0x1e8
    lfs     f0, -0x4e0c(rtoc)
    stfs    f0, 0x348(r31)
    stw     r28, 0x338(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x34c
    addi    r6, r30, 0x1e8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x34c(r31)
    addi    r3, r30, 0x1f4
    lfs     f0, -0x4e08(rtoc)
    stfs    f0, 0x35c(r31)
    stw     r28, 0x34c(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x360
    addi    r6, r30, 0x1f4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x360(r31)
    addi    r3, r30, 0x200
    lfs     f0, -0x4e3c(rtoc)
    stfs    f0, 0x370(r31)
    stw     r28, 0x360(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x374
    addi    r6, r30, 0x200
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x374(r31)
    addi    r3, r30, 0x210
    lfs     f0, -0x4e04(rtoc)
    stfs    f0, 0x384(r31)
    stw     r28, 0x374(r31)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r31, 0x0
    addi    r3, r31, 0x388
    addi    r6, r30, 0x210
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r29, 0x388(r31)
    mr      r3, r31
    lfs     f0, -0x4e00(rtoc)
    stfs    f0, 0x398(r31)
    stw     r28, 0x388(r31)
    lwz     r4, 0x0(r31)
    bl      load__7TParamsFPCc
branch_0x80137c28:
    stw     r27, 0x38(r26)
    addi    r3, r26, 0x0
    addi    r4, r25, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__16TTabePukuManagerFPCc
__ct__16TTabePukuManagerFPCc: # 0x80137c4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, 0x803c
    subi    r0, r3, 0xc04
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_
swimTo__9TTabePukuFRCQ29JGeometry8TVec3_f_: # 0x80137c88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x1f8(sp)
    stfd    f31, 0x1f0(sp)
    stfd    f30, 0x1e8(sp)
    stfd    f29, 0x1e0(sp)
    stfd    f28, 0x1d8(sp)
    stfd    f27, 0x1d0(sp)
    stw     r31, 0x1cc(sp)
    mr      r31, r3
    li      r3, 0x0
    stw     r30, 0x1c8(sp)
    lwz     r5, 0x0(r4)
    lwz     r0, 0x4(r4)
    lfs     f0, -0x4dfc(rtoc)
    stw     r5, 0x1b4(sp)
    lfs     f1, -0x4e68(rtoc)
    fneg    f28, f0
    stw     r0, 0x1b8(sp)
    lwz     r0, 0x8(r4)
    stw     r0, 0x1bc(sp)
    lfs     f3, 0x0(r4)
    lfs     f2, 0x4(r4)
    lfs     f4, 0x8(r4)
    fmuls   f3, f3, f3
    fmuls   f2, f2, f2
    fmuls   f4, f4, f4
    fadds   f2, f3, f2
    fadds   f2, f4, f2
    fsubs   f1, f2, f1
    fcmpo   cr0, f28, f1
    cror    2, 0, 2
    bne-    branch_0x80137d1c
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80137d1c
    li      r3, 0x1
branch_0x80137d1c:
    clrlwi. r0, r3, 24
    beq-    branch_0x80137ec0
    lfs     f0, 0x198(r31)
    mr      r3, r31
    lfs     f8, 0x1a0(r31)
    lfs     f9, 0x19c(r31)
    fmuls   f1, f0, f0
    lfs     f2, 0x1a4(r31)
    fmuls   f5, f0, f8
    lfs     f7, 0x140(r31)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    fmuls   f3, f2, f9
    lfs     f6, -0x4e44(rtoc)
    fmuls   f2, f2, f0
    stw     r4, 0x158(sp)
    lfs     f0, -0x4e64(rtoc)
    stw     r0, 0x15c(sp)
    fmuls   f4, f6, f3
    fmuls   f3, f9, f8
    lwz     r0, 0xb4(r31)
    fmuls   f2, f6, f2
    fmadds  f27, f6, f5, f4
    stw     r0, 0x160(sp)
    fmsubs  f28, f6, f3, f2
    lwz     r12, 0x0(r31)
    fmuls   f2, f9, f9
    fnmsubs  f0, f6, f1, f0
    lwz     r12, 0x108(r12)
    fmuls   f27, f27, f7
    fnmsubs  f29, f6, f2, f0
    mtlr    r12
    fmuls   f28, f28, f7
    fmuls   f29, f29, f7
    blrl
    lfs     f1, 0x320(r3)
    lfs     f0, 0x158(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x158(sp)
    lfs     f0, 0x15c(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x15c(sp)
    lfs     f0, 0x160(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x160(sp)
    lfs     f0, 0x158(sp)
    fadds   f0, f0, f27
    stfs    f0, 0x158(sp)
    lfs     f0, 0x15c(sp)
    fadds   f0, f0, f28
    stfs    f0, 0x15c(sp)
    lfs     f0, 0x160(sp)
    fadds   f0, f0, f29
    stfs    f0, 0x160(sp)
    lwz     r3, 0x158(sp)
    lwz     r0, 0x15c(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x160(sp)
    stw     r0, 0xb4(r31)
    lfs     f2, -0x4e68(rtoc)
    lfs     f1, 0x160(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x80137e3c
    lfs     f0, 0x158(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x80137e34
    lfs     f0, -0x4e30(rtoc)
    b       branch_0x80137eb8

branch_0x80137e34:
    lfs     f0, -0x4e2c(rtoc)
    b       branch_0x80137eb8

branch_0x80137e3c:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80137e7c
    lfs     f2, 0x158(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4e28(rtoc)
    stw     r0, 0x1c4(sp)
    lis     r0, 0x4330
    stw     r0, 0x1c0(sp)
    lfd     f1, 0x1c0(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x80137eb8

branch_0x80137e7c:
    fneg    f1, f1
    lfs     f2, 0x158(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x4e28(rtoc)
    stw     r0, 0x1c4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x4e24(rtoc)
    stw     r0, 0x1c0(sp)
    lfd     f2, 0x1c0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x80137eb8:
    stfs    f0, 0x34(r31)
    b       branch_0x80138470

branch_0x80137ec0:
    lfs     f1, 0x1b4(sp)
    lfs     f0, 0x1b8(sp)
    fmuls   f2, f1, f1
    lfs     f3, 0x1bc(sp)
    fmuls   f1, f0, f0
    lfs     f0, -0x4dfc(rtoc)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80137f04
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x1bc(sp)
    stfs    f0, 0x1b8(sp)
    stfs    f0, 0x1b4(sp)
    b       branch_0x80137f34

branch_0x80137f04:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4e64(rtoc)
    lfs     f0, 0x1b4(sp)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x1b4(sp)
    lfs     f0, 0x1b8(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1b8(sp)
    lfs     f0, 0x1bc(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x1bc(sp)
branch_0x80137f34:
    lfs     f2, -0x4e68(rtoc)
    li      r0, 0x0
    lfs     f4, 0x1b8(sp)
    lfs     f8, 0x1b4(sp)
    fmuls   f1, f4, f2
    lfs     f5, 0x1bc(sp)
    lfs     f3, -0x4e64(rtoc)
    lfs     f0, -0x4df8(rtoc)
    fmadds  f1, f8, f2, f1
    fmadds  f1, f5, f3, f1
    fsubs   f1, f1, f0
    fcmpo   cr0, f28, f1
    cror    2, 0, 2
    bne-    branch_0x80137f80
    lfs     f0, -0x4dfc(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80137f80
    li      r0, 0x1
branch_0x80137f80:
    clrlwi. r0, r0, 24
    beq-    branch_0x80137fc0
    lfs     f1, -0x4df4(rtoc)
    lfs     f0, -0x4e58(rtoc)
    fmuls   f27, f0, f1
    fmr     f1, f27
    bl      sinf
    fmr     f28, f1
    fmr     f1, f27
    bl      cosf
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x18c(sp)
    stfs    f28, 0x190(sp)
    stfs    f0, 0x194(sp)
    stfs    f1, 0x198(sp)
    b       branch_0x801380a0

branch_0x80137fc0:
    lfs     f1, -0x4e68(rtoc)
    lfs     f0, -0x4e64(rtoc)
    fmuls   f2, f1, f5
    fmuls   f6, f1, f4
    fmuls   f7, f1, f8
    fmsubs  f29, f0, f8, f2
    fnmsubs  f30, f0, f4, f2
    fsubs   f28, f6, f7
    fmuls   f0, f29, f29
    fmadds  f0, f30, f30, f0
    fmadds  f31, f28, f28, f0
    fcmpo   cr0, f31, f1
    cror    2, 0, 2
    bne-    branch_0x80137ffc
    b       branch_0x80138020

branch_0x80137ffc:
    frsqrte f3, f31
    lfs     f2, -0x4e58(rtoc)
    lfs     f0, -0x4e48(rtoc)
    frsp    f3, f3
    fmuls   f1, f3, f3
    fmuls   f2, f2, f3
    fnmsubs  f0, f31, f1, f0
    fmuls   f0, f2, f0
    fmuls   f31, f31, f0
branch_0x80138020:
    lfs     f0, -0x4dfc(rtoc)
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x8013804c
    lfs     f1, -0x4e68(rtoc)
    lfs     f0, -0x4e64(rtoc)
    stfs    f1, 0x18c(sp)
    stfs    f1, 0x190(sp)
    stfs    f1, 0x194(sp)
    stfs    f0, 0x198(sp)
    b       branch_0x801380a0

branch_0x8013804c:
    fadds   f0, f7, f6
    lfs     f1, -0x4e64(rtoc)
    fmadds  f2, f1, f5, f0
    fmr     f1, f31
    bl      atan2f
    lfs     f0, -0x4e58(rtoc)
    lfs     f2, -0x4e64(rtoc)
    fmuls   f0, f0, f1
    fmuls   f27, f2, f0
    fmr     f1, f27
    bl      sinf
    fdivs   f1, f1, f31
    fmuls   f0, f30, f1
    fmuls   f2, f29, f1
    stfs    f0, 0x18c(sp)
    fmuls   f0, f28, f1
    fmr     f1, f27
    stfs    f2, 0x190(sp)
    stfs    f0, 0x194(sp)
    bl      cosf
    stfs    f1, 0x198(sp)
branch_0x801380a0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lfs     f31, 0x334(r3)
    addi    r3, r31, 0x198
    lfs     f27, -0x4e64(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x4dfc(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801380f0
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x110(sp)
    stfs    f0, 0x10c(sp)
    stfs    f0, 0x108(sp)
    stfs    f0, 0x104(sp)
    b       branch_0x80138104

branch_0x801380f0:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f27, f1
    addi    r3, sp, 0x104
    addi    r4, r31, 0x198
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x80138104:
    addi    r3, sp, 0x18c
    lfs     f27, -0x4e64(rtoc)
    mr      r4, r3
    bl      dot__Q29JGeometry8TVec4_f_CFRCQ29JGeometry8TVec4_f_
    lfs     f0, -0x4dfc(rtoc)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013813c
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x120(sp)
    stfs    f0, 0x11c(sp)
    stfs    f0, 0x118(sp)
    stfs    f0, 0x114(sp)
    b       branch_0x80138150

branch_0x8013813c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f27, f1
    addi    r3, sp, 0x114
    addi    r4, sp, 0x18c
    bl      scale__Q29JGeometry8TVec4_f_FfRCQ29JGeometry8TVec4_f_
branch_0x80138150:
    lfs     f1, 0x108(sp)
    lfs     f0, 0x118(sp)
    lfs     f2, 0x104(sp)
    fmuls   f0, f1, f0
    lfs     f1, 0x114(sp)
    lfs     f4, 0x10c(sp)
    lfs     f3, 0x11c(sp)
    fmadds  f1, f2, f1, f0
    lfs     f5, 0x110(sp)
    lfs     f2, 0x120(sp)
    fmadds  f1, f4, f3, f1
    lfs     f0, -0x4e68(rtoc)
    fmadds  f1, f5, f2, f1
    fcmpo   cr0, f1, f0
    bge-    branch_0x80138198
    fneg    f1, f1
    li      r30, 0x1
    b       branch_0x8013819c

branch_0x80138198:
    li      r30, 0x0
branch_0x8013819c:
    lfs     f3, -0x4e64(rtoc)
    lfs     f0, -0x4dfc(rtoc)
    fsubs   f2, f3, f1
    fcmpo   cr0, f2, f0
    cror    2, 0, 2
    bne-    branch_0x801381bc
    fsubs   f29, f3, f31
    b       branch_0x801381ec

branch_0x801381bc:
    bl      acosf
    fmr     f27, f1
    bl      sinf
    lfs     f0, -0x4e64(rtoc)
    fmr     f28, f1
    fsubs   f0, f0, f31
    fmuls   f1, f0, f27
    bl      sinf
    fdivs   f29, f1, f28
    fmuls   f1, f31, f27
    bl      sinf
    fdivs   f31, f1, f28
branch_0x801381ec:
    clrlwi. r0, r30, 24
    beq-    branch_0x801381f8
    fneg    f31, f31
branch_0x801381f8:
    lfs     f0, 0x114(sp)
    lfs     f2, 0x118(sp)
    fmuls   f0, f31, f0
    lfs     f1, 0x104(sp)
    lfs     f5, 0x120(sp)
    fmuls   f2, f31, f2
    lfs     f4, 0x11c(sp)
    lfs     f3, 0x108(sp)
    fmadds  f0, f29, f1, f0
    fmuls   f1, f31, f4
    lfs     f4, 0x10c(sp)
    lfs     f6, 0x110(sp)
    fmadds  f2, f29, f3, f2
    stfs    f0, 0x198(r31)
    fmuls   f5, f31, f5
    fmadds  f0, f29, f4, f1
    stfs    f2, 0x19c(r31)
    fmadds  f1, f29, f6, f5
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    lfs     f1, 0x198(r31)
    lfs     f0, 0x19c(r31)
    lfs     f2, 0x1a0(r31)
    fmuls   f1, f1, f1
    fmuls   f0, f0, f0
    lfs     f3, 0x1a4(r31)
    fmuls   f2, f2, f2
    fmuls   f3, f3, f3
    fadds   f1, f1, f0
    lfs     f0, -0x4dfc(rtoc)
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x8013829c
    lfs     f0, -0x4e68(rtoc)
    stfs    f0, 0x1a4(r31)
    stfs    f0, 0x1a0(r31)
    stfs    f0, 0x19c(r31)
    stfs    f0, 0x198(r31)
    b       branch_0x801382d8

branch_0x8013829c:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f2, -0x4e64(rtoc)
    lfs     f0, 0x198(r31)
    fmuls   f1, f2, f1
    fmuls   f0, f0, f1
    stfs    f0, 0x198(r31)
    lfs     f0, 0x19c(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x19c(r31)
    lfs     f0, 0x1a0(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x1a4(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1a4(r31)
branch_0x801382d8:
    lfs     f0, 0x198(r31)
    mr      r3, r31
    lfs     f8, 0x1a0(r31)
    lfs     f9, 0x19c(r31)
    fmuls   f1, f0, f0
    lfs     f2, 0x1a4(r31)
    fmuls   f5, f0, f8
    lfs     f7, 0x140(r31)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    fmuls   f3, f2, f9
    lfs     f6, -0x4e44(rtoc)
    fmuls   f2, f2, f0
    stw     r4, 0xec(sp)
    lfs     f0, -0x4e64(rtoc)
    stw     r0, 0xf0(sp)
    fmuls   f4, f6, f3
    fmuls   f3, f9, f8
    lwz     r0, 0xb4(r31)
    fmuls   f2, f6, f2
    fmadds  f27, f6, f5, f4
    stw     r0, 0xf4(sp)
    fmsubs  f28, f6, f3, f2
    lwz     r12, 0x0(r31)
    fmuls   f2, f9, f9
    fnmsubs  f0, f6, f1, f0
    lwz     r12, 0x108(r12)
    fmuls   f27, f27, f7
    fnmsubs  f29, f6, f2, f0
    mtlr    r12
    fmuls   f28, f28, f7
    fmuls   f29, f29, f7
    blrl
    lfs     f1, 0x320(r3)
    lfs     f0, 0xec(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf0(sp)
    lfs     f0, 0xf4(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0xf4(sp)
    lfs     f0, 0xec(sp)
    fadds   f0, f0, f27
    stfs    f0, 0xec(sp)
    lfs     f0, 0xf0(sp)
    fadds   f0, f0, f28
    stfs    f0, 0xf0(sp)
    lfs     f0, 0xf4(sp)
    fadds   f0, f0, f29
    stfs    f0, 0xf4(sp)
    lwz     r3, 0xec(sp)
    lwz     r0, 0xf0(sp)
    stw     r3, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0xf4(sp)
    stw     r0, 0xb4(r31)
    lfs     f2, -0x4e68(rtoc)
    lfs     f1, 0xf4(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x801383f0
    lfs     f0, 0xec(sp)
    fcmpo   cr0, f0, f2
    cror    2, 1, 2
    bne-    branch_0x801383e8
    lfs     f0, -0x4e30(rtoc)
    b       branch_0x8013846c

branch_0x801383e8:
    lfs     f0, -0x4e2c(rtoc)
    b       branch_0x8013846c

branch_0x801383f0:
    fcmpo   cr0, f1, f2
    cror    2, 1, 2
    bne-    branch_0x80138430
    lfs     f2, 0xec(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f2, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f0, -0x4e28(rtoc)
    stw     r0, 0x1c4(sp)
    lis     r0, 0x4330
    stw     r0, 0x1c0(sp)
    lfd     f1, 0x1c0(sp)
    fsubs   f1, f1, f2
    fmuls   f0, f0, f1
    b       branch_0x8013846c

branch_0x80138430:
    fneg    f1, f1
    lfs     f2, 0xec(sp)
    bl      matan__Fff
    extsh   r0, r3
    lfd     f3, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    lfs     f1, -0x4e28(rtoc)
    stw     r0, 0x1c4(sp)
    lis     r0, 0x4330
    lfs     f0, -0x4e24(rtoc)
    stw     r0, 0x1c0(sp)
    lfd     f2, 0x1c0(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fsubs   f0, f0, f1
branch_0x8013846c:
    stfs    f0, 0x34(r31)
branch_0x80138470:
    lwz     r0, 0x1fc(sp)
    lfd     f31, 0x1f0(sp)
    lfd     f30, 0x1e8(sp)
    mtlr    r0
    lfd     f29, 0x1e0(sp)
    lfd     f28, 0x1d8(sp)
    lfd     f27, 0x1d0(sp)
    lwz     r31, 0x1cc(sp)
    lwz     r30, 0x1c8(sp)
    addi    sp, sp, 0x1f8
    blr


.globl doKeepDistance__9TTabePukuFv
doKeepDistance__9TTabePukuFv: # 0x8013849c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    stw     r30, 0x20(sp)
    stw     r29, 0x1c(sp)
    stw     r28, 0x18(sp)
    mr      r28, r3
    lwz     r3, 0x8c(r3)
    lwz     r31, 0x14(r3)
    cmplwi  r31, 0x0
    beq-    branch_0x801384d0
    b       branch_0x801384d4

branch_0x801384d0:
    lwz     r31, 0x1c(r3)
branch_0x801384d4:
    lbz     r0, -0x64ac(r13)
    extsb.  r0, r0
    bne-    branch_0x80138518
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64a8(r13)
    subi    r0, r3, 0xc44
    lis     r4, 0x8013
    stw     r0, -0x64a8(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a34
    addi    r4, r4, 0x71d0
    subi    r3, r13, 0x64a8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64ac(r13)
branch_0x80138518:
    subi    r0, r13, 0x64a8
    cmplw   r31, r0
    li      r30, 0x1
    beq-    branch_0x8013857c
    lwz     r3, 0x8c(r28)
    bl      getLatestNerve__24TSpineBase_10TLiveActor_CFv
    addi    r31, r3, 0x0
    addi    r29, r30, 0x0
    addi    r28, r30, 0x0
    bl      theNerve__18TNerveTabePukuBiteFv
    cmplw   r31, r3
    beq-    branch_0x80138558
    bl      theNerve__18TNerveTabePukuDiveFv
    cmplw   r31, r3
    beq-    branch_0x80138558
    li      r28, 0x0
branch_0x80138558:
    clrlwi. r0, r28, 24
    bne-    branch_0x80138570
    bl      theNerve__18TNerveTabePukuDragFv
    cmplw   r31, r3
    beq-    branch_0x80138570
    li      r29, 0x0
branch_0x80138570:
    clrlwi. r0, r29, 24
    bne-    branch_0x8013857c
    li      r30, 0x0
branch_0x8013857c:
    clrlwi  r0, r30, 24
    lwz     r31, 0x24(sp)
    cntlzw  r0, r0
    lwz     r30, 0x20(sp)
    srwi    r3, r0, 5
    lwz     r0, 0x2c(sp)
    lwz     r29, 0x1c(sp)
    lwz     r28, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl isFindMario__9TTabePukuFf
isFindMario__9TTabePukuFf: # 0x801385a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bl      isFindMarioFromParam__11TSmallEnemyCFf
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl forceKill__9TTabePukuFv
forceKill__9TTabePukuFv: # 0x801385c8
    blr


.globl behaveToWater__9TTabePukuFP9THitActor
behaveToWater__9TTabePukuFP9THitActor: # 0x801385cc
    blr


.globl attackToMario__9TTabePukuFv
attackToMario__9TTabePukuFv: # 0x801385d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    mr      r30, r3
    lwz     r4, 0x8c(r3)
    lis     r3, 0x803f
    addi    r31, r3, 0x3a10
    lwz     r29, 0x14(r4)
    cmplwi  r29, 0x0
    beq-    branch_0x80138600
    b       branch_0x80138604

branch_0x80138600:
    lwz     r29, 0x1c(r4)
branch_0x80138604:
    lbz     r0, -0x64a4(r13)
    extsb.  r0, r0
    bne-    branch_0x80138644
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64a0(r13)
    subi    r0, r3, 0xc54
    lis     r3, 0x8013
    stw     r0, -0x64a0(r13)
    addi    r4, r3, 0x6de4
    subi    r3, r13, 0x64a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64a4(r13)
branch_0x80138644:
    subi    r0, r13, 0x64a0
    cmplw   r29, r0
    li      r28, 0x1
    addi    r27, r28, 0x0
    beq-    branch_0x80138668
    bl      theNerve__18TNerveTabePukuDiveFv
    cmplw   r29, r3
    beq-    branch_0x80138668
    li      r27, 0x0
branch_0x80138668:
    clrlwi. r0, r27, 24
    bne-    branch_0x80138680
    bl      theNerve__18TNerveTabePukuDragFv
    cmplw   r29, r3
    beq-    branch_0x80138680
    li      r28, 0x0
branch_0x80138680:
    clrlwi. r0, r28, 24
    bne-    branch_0x80138794
    lwz     r3, 0x8c(r30)
    lwz     r29, 0x14(r3)
    cmplwi  r29, 0x0
    beq-    branch_0x8013869c
    b       branch_0x801386a0

branch_0x8013869c:
    lwz     r29, 0x1c(r3)
branch_0x801386a0:
    lbz     r0, -0x64c4(r13)
    extsb.  r0, r0
    bne-    branch_0x801386e0
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64c0(r13)
    subi    r0, r3, 0xc14
    lis     r3, 0x8013
    stw     r0, -0x64c0(r13)
    addi    r4, r3, 0x7430
    subi    r3, r13, 0x64c0
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64c4(r13)
branch_0x801386e0:
    subi    r0, r13, 0x64c0
    cmplw   r29, r0
    li      r27, 0x1
    beq-    branch_0x80138700
    bl      theNerve__26TNerveTabePukuRecoverGraphFv
    cmplw   r29, r3
    beq-    branch_0x80138700
    li      r27, 0x0
branch_0x80138700:
    clrlwi. r0, r27, 24
    bne-    branch_0x80138794
    addi    r3, r30, 0x0
    li      r4, 0x4
    bl      SMS_SendMessageToMario__FP9THitActorUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80138794
    bl      SMS_GetMarioHitActor__Fv
    stw     r3, 0x6c(r30)
    li      r0, 0x0
    lwz     r3, 0x8c(r30)
    stw     r0, 0x8(r3)
    lbz     r0, -0x64a4(r13)
    extsb.  r0, r0
    bne-    branch_0x80138770
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64a0(r13)
    subi    r0, r3, 0xc54
    lis     r3, 0x8013
    stw     r0, -0x64a0(r13)
    addi    r4, r3, 0x6de4
    subi    r3, r13, 0x64a0
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64a4(r13)
branch_0x80138770:
    lwz     r4, 0x8c(r30)
    subi    r3, r13, 0x64a0
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x80138788
    stw     r0, 0x1c(r4)
branch_0x80138788:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
branch_0x80138794:
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl getBasNameTable__9TTabePukuCFv
getBasNameTable__9TTabePukuCFv: # 0x801387a8
    lis     r3, 0x803c
    subi    r3, r3, 0xc80
    blr


.globl getTakingMtx__9TTabePukuFv
getTakingMtx__9TTabePukuFv: # 0x801387b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe8(sp)
    stfd    f31, 0xe0(sp)
    stfd    f30, 0xd8(sp)
    stfd    f29, 0xd0(sp)
    stfd    f28, 0xc8(sp)
    stfd    f27, 0xc0(sp)
    stfd    f26, 0xb8(sp)
    stw     r31, 0xb4(sp)
    stw     r30, 0xb0(sp)
    stw     r29, 0xac(sp)
    mr      r29, r3
    addi    r31, r29, 0x1b8
    lfs     f3, -0x4e44(rtoc)
    addi    r30, r29, 0x1c8
    lfs     f9, 0x19c(r3)
    lfs     f10, 0x1a0(r3)
    fmuls   f12, f3, f9
    lfs     f11, 0x198(r3)
    fmuls   f2, f3, f10
    lfs     f0, 0x1a4(r3)
    fmuls   f6, f3, f11
    fmuls   f13, f3, f0
    lfs     f1, -0x4e64(rtoc)
    fmuls   f8, f12, f9
    fmuls   f7, f2, f10
    fmuls   f5, f6, f9
    fsubs   f0, f1, f8
    fmuls   f2, f6, f11
    fmuls   f3, f13, f9
    fsubs   f0, f0, f7
    fmuls   f4, f13, f10
    fsubs   f9, f1, f2
    fmuls   f6, f6, f10
    stfs    f0, 0x1a8(r29)
    fsubs   f2, f5, f4
    fadds   f0, f5, f4
    fadds   f1, f6, f3
    stfs    f2, 0x1ac(r29)
    fmuls   f5, f12, f10
    fmuls   f4, f13, f11
    stfs    f1, 0x1b0(r29)
    fsubs   f1, f9, f7
    stfs    f0, 0x1b8(r29)
    fsubs   f0, f5, f4
    fsubs   f2, f6, f3
    stfs    f1, 0x1bc(r29)
    fadds   f1, f5, f4
    stfs    f0, 0x1c0(r29)
    fsubs   f0, f9, f8
    stfs    f2, 0x1c8(r29)
    stfs    f1, 0x1cc(r29)
    stfs    f0, 0x1d0(r29)
    lwz     r12, 0x0(r29)
    lfs     f31, 0x1d0(r29)
    lwz     r12, 0x108(r12)
    lfs     f30, 0x1c0(r29)
    mtlr    r12
    lfs     f29, 0x1b0(r29)
    lfs     f28, 0x1cc(r29)
    lfs     f27, 0x1bc(r29)
    lfs     f26, 0x1ac(r29)
    blrl
    lfs     f3, 0x370(r3)
    mr      r3, r29
    lwz     r12, 0x0(r29)
    lfs     f2, 0x10(r29)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x18(r29)
    fmadds  f29, f29, f3, f2
    lwz     r12, 0x108(r12)
    fmadds  f30, f30, f3, f1
    fmadds  f31, f31, f3, f0
    mtlr    r12
    blrl
    lfs     f0, 0x35c(r3)
    addi    r3, r29, 0x1a8
    fmadds  f1, f26, f0, f29
    fmadds  f2, f27, f0, f30
    fmadds  f0, f28, f0, f31
    stfs    f1, 0x1b4(r29)
    stfs    f2, 0xc(r31)
    stfs    f0, 0xc(r30)
    lwz     r0, 0xec(sp)
    lfd     f31, 0xe0(sp)
    lfd     f30, 0xd8(sp)
    lfd     f29, 0xd0(sp)
    lfd     f28, 0xc8(sp)
    lfd     f27, 0xc0(sp)
    lfd     f26, 0xb8(sp)
    lwz     r31, 0xb4(sp)
    lwz     r30, 0xb0(sp)
    lwz     r29, 0xac(sp)
    addi    sp, sp, 0xe8
    mtlr    r0
    blr


.globl receiveMessage__9TTabePukuFP9THitActorUl
receiveMessage__9TTabePukuFP9THitActorUl: # 0x80138938
    mflr    r0
    cmpwi   r5, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bge-    branch_0x80138960
    cmpwi   r5, 0x0
    bge-    branch_0x80138958
    b       branch_0x80138960

branch_0x80138958:
    li      r3, 0x0
    b       branch_0x80138964

branch_0x80138960:
    bl      receiveMessage__11TSmallEnemyFP9THitActorUl
branch_0x80138964:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl calcRootMatrix__9TTabePukuFv
calcRootMatrix__9TTabePukuFv: # 0x80138974
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x78(sp)
    stw     r31, 0x74(sp)
    stw     r30, 0x70(sp)
    mr      r30, r3
    stw     r29, 0x6c(sp)
    lwz     r0, 0x68(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x801389a4
    li      r0, 0x1
    b       branch_0x801389a8

branch_0x801389a4:
    li      r0, 0x0
branch_0x801389a8:
    cmpwi   r0, 0x0
    beq-    branch_0x801389bc
    mr      r3, r30
    bl      calcRootMatrix__11TSpineEnemyFv
    b       branch_0x80138b18

branch_0x801389bc:
    addi    r3, sp, 0x2c
    addi    r4, r30, 0x198
    bl      setQuat__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry9TQuat4_f_
    lfs     f0, 0x10(r30)
    mr      r3, r30
    stfs    f0, 0x38(sp)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x48(sp)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x58(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x24(r30)
    addi    r31, sp, 0x2c
    lwz     r0, 0x28(r30)
    stw     r4, 0x14(r3)
    stw     r0, 0x18(r3)
    lwz     r0, 0x2c(r30)
    stw     r0, 0x1c(r3)
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    addi    r4, r4, 0x20
    bl      PSMTXCopy
    lfs     f0, -0x4e64(rtoc)
    addi    r3, r30, 0x0
    addi    r29, sp, 0x20
    stfs    f0, 0x20(sp)
    stfs    f0, 0x24(sp)
    stfs    f0, 0x28(sp)
    lwz     r31, 0x1d8(r30)
    bl      getModel__10TLiveActorCFv
    mulli   r0, r31, 0x30
    lwz     r3, 0x58(r3)
    add     r4, r3, r0
    addi    r5, r30, 0x0
    addi    r6, r29, 0x0
    li      r3, 0x178
    bl      SMS_EasyEmitParticle_24E_SMS_EFFECT_LOOP_NORMAL___F24E_SMS_EFFECT_LOOP_NORMALPA4_fPCvRCQ29JGeometry8TVec3_f_
    mr.     r31, r3
    beq-    branch_0x80138b18
    lfs     f0, 0x14(r30)
    lfs     f1, -0x4e34(rtoc)
    fneg    f2, f0
    lfs     f0, -0x4e68(rtoc)
    fdivs   f1, f2, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80138a84
    fmr     f1, f0
branch_0x80138a84:
    fctiwz  f0, f1
    stfd    f0, 0x60(sp)
    lwz     r0, 0x64(sp)
    mulli   r3, r0, 0x14
    addi    r0, r3, 0x2
    cmpwi   r0, 0xc8
    ble-    branch_0x80138aa4
    li      r0, 0xc8
branch_0x80138aa4:
    extsh   r0, r0
    sth     r0, 0x1ee(r31)
    lwz     r3, 0x8c(r30)
    lwz     r30, 0x14(r3)
    cmplwi  r30, 0x0
    beq-    branch_0x80138ac0
    b       branch_0x80138ac4

branch_0x80138ac0:
    lwz     r30, 0x1c(r3)
branch_0x80138ac4:
    lbz     r0, -0x64ac(r13)
    extsb.  r0, r0
    bne-    branch_0x80138b04
    subi    r3, r13, 0x64a8
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0xc44
    lis     r4, 0x8013
    stw     r0, -0x64a8(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a34
    addi    r4, r4, 0x71d0
    subi    r3, r13, 0x64a8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64ac(r13)
branch_0x80138b04:
    subi    r0, r13, 0x64a8
    cmplw   r30, r0
    bne-    branch_0x80138b18
    lfs     f0, -0x4df0(rtoc)
    stfs    f0, 0x1b0(r31)
branch_0x80138b18:
    lwz     r0, 0x7c(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    mtlr    r0
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x78
    blr


.globl bind__9TTabePukuFv
bind__9TTabePukuFv: # 0x80138b34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xe0(sp)
    stfd    f31, 0xd8(sp)
    stfd    f30, 0xd0(sp)
    stfd    f29, 0xc8(sp)
    stw     r31, 0xc4(sp)
    mr      r31, r3
    stw     r30, 0xc0(sp)
    stw     r29, 0xbc(sp)
    lwz     r29, 0x194(r3)
    lwz     r3, 0x68(r29)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x180(r3)
    lis     r30, 0x4330
    lwz     r3, 0x68(r29)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x4e50(rtoc)
    stw     r0, 0xb4(sp)
    lwz     r12, 0x0(r3)
    stw     r30, 0xb0(sp)
    lwz     r12, 0x108(r12)
    lfd     f0, 0xb0(sp)
    mtlr    r12
    fsubs   f29, f0, f1
    blrl
    lwz     r0, 0x16c(r3)
    lwz     r3, 0x68(r29)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x4e50(rtoc)
    stw     r0, 0xac(sp)
    lwz     r12, 0x0(r3)
    stw     r30, 0xa8(sp)
    lwz     r12, 0x108(r12)
    lfd     f0, 0xa8(sp)
    mtlr    r12
    fsubs   f30, f0, f1
    blrl
    lwz     r0, 0x1a8(r3)
    lwz     r3, 0x68(r29)
    xoris   r0, r0, 0x8000
    lfd     f1, -0x4e50(rtoc)
    stw     r0, 0xa4(sp)
    lwz     r12, 0x0(r3)
    stw     r30, 0xa0(sp)
    lwz     r12, 0x108(r12)
    lfd     f0, 0xa0(sp)
    mtlr    r12
    fsubs   f31, f0, f1
    blrl
    lwz     r0, 0x194(r3)
    mr      r3, r29
    lfd     f1, -0x4e50(rtoc)
    xoris   r0, r0, 0x8000
    stw     r0, 0x9c(sp)
    stw     r30, 0x98(sp)
    lfd     f0, 0x98(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x50(r29)
    stfs    f31, 0x54(r29)
    stfs    f30, 0x58(r29)
    stfs    f29, 0x5c(r29)
    bl      calcEntryRadius__9THitActorFv
    lwz     r3, 0x194(r31)
    bl      updateTerrainCollsion__11TTPHitActorFv
    lwz     r3, 0x194(r31)
    bl      bind__11TTPHitActorFv
    lwz     r4, 0x194(r31)
    lwz     r3, 0x6c(r4)
    lwz     r0, 0x70(r4)
    stw     r3, 0x94(r31)
    stw     r0, 0x98(r31)
    lwz     r0, 0x74(r4)
    stw     r0, 0x9c(r31)
    lwz     r3, 0x194(r31)
    lbz     r0, 0x89(r3)
    stb     r0, 0x1dc(r31)
    lwz     r3, 0x194(r31)
    lbz     r0, 0x88(r3)
    cmpwi   r0, 0x0
    beq-    branch_0x80138c94
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r31)
    b       branch_0x80138ca0

branch_0x80138c94:
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 25, 23
    stw     r0, 0xf0(r31)
branch_0x80138ca0:
    lwz     r3, 0x194(r31)
    lwz     r0, 0x84(r3)
    stw     r0, 0xc4(r31)
    lwz     r3, 0x194(r31)
    lfs     f0, 0x80(r3)
    stfs    f0, 0xc8(r31)
    lwz     r0, 0xe4(sp)
    lfd     f31, 0xd8(sp)
    lfd     f30, 0xd0(sp)
    lfd     f29, 0xc8(sp)
    lwz     r31, 0xc4(sp)
    lwz     r30, 0xc0(sp)
    lwz     r29, 0xbc(sp)
    addi    sp, sp, 0xe0
    mtlr    r0
    blr


.globl control__9TTabePukuFv
control__9TTabePukuFv: # 0x80138ce0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r27, 0x24(sp)
    mr      r31, r3
    bl      control__10TLiveActorFv
    lwz     r28, 0x194(r31)
    lis     r3, 0x8000
    addi    r30, r3, 0x1
    lhz     r0, 0x48(r28)
    lwz     r27, 0x44(r28)
    slwi    r0, r0, 2
    add     r29, r27, r0
    b       branch_0x80138d44

branch_0x80138d18:
    lwz     r3, 0x0(r27)
    lwz     r0, 0x4c(r3)
    cmpw    r0, r30
    beq-    branch_0x80138d2c
    b       branch_0x80138d40

branch_0x80138d2c:
    lwz     r3, 0x68(r28)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x168(r12)
    mtlr    r12
    blrl
branch_0x80138d40:
    addi    r27, r27, 0x4
branch_0x80138d44:
    cmplw   r27, r29
    bne+    branch_0x80138d18
    lwz     r3, 0x8c(r31)
    lwz     r28, 0x14(r3)
    cmplwi  r28, 0x0
    beq-    branch_0x80138d60
    b       branch_0x80138d64

branch_0x80138d60:
    lwz     r28, 0x1c(r3)
branch_0x80138d64:
    lbz     r0, -0x64a4(r13)
    extsb.  r0, r0
    bne-    branch_0x80138da4
    subi    r3, r13, 0x64a0
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, 0x803c
    subi    r0, r3, 0xc54
    lis     r4, 0x8013
    stw     r0, -0x64a0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a40
    addi    r4, r4, 0x6de4
    subi    r3, r13, 0x64a0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64a4(r13)
branch_0x80138da4:
    subi    r0, r13, 0x64a0
    cmplw   r28, r0
    li      r29, 0x1
    addi    r30, r29, 0x0
    beq-    branch_0x80138dc8
    bl      theNerve__18TNerveTabePukuDiveFv
    cmplw   r28, r3
    beq-    branch_0x80138dc8
    li      r30, 0x0
branch_0x80138dc8:
    clrlwi. r0, r30, 24
    bne-    branch_0x80138de0
    bl      theNerve__18TNerveTabePukuDragFv
    cmplw   r28, r3
    beq-    branch_0x80138de0
    li      r29, 0x0
branch_0x80138de0:
    clrlwi. r0, r29, 24
    beq-    branch_0x80138e18
    lwz     r3, -0x6044(r13)
    li      r4, 0x2123
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x80138e18
    addi    r4, r31, 0x10
    li      r3, 0x2123
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x80138e18:
    lmw     r27, 0x24(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl perform__9TTabePukuFUlPQ26JDrama9TGraphics
perform__9TTabePukuFUlPQ26JDrama9TGraphics: # 0x80138e2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x1c(sp)
    mr      r29, r3
    lwz     r3, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r3, r29, 0x0
    addi    r4, r30, 0x0
    addi    r5, r31, 0x0
    bl      perform__11TSmallEnemyFUlPQ26JDrama9TGraphics
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    lwz     r29, 0x1c(sp)
    addi    sp, sp, 0x28
    blr


.globl reset__9TTabePukuFv
reset__9TTabePukuFv: # 0x80138e90
    lfs     f0, -0x4dec(rtoc)
    stfs    f0, 0xb8(r3)
    blr


.globl init__9TTabePukuFP12TLiveManager
init__9TTabePukuFP12TLiveManager: # 0x80138e9c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    stw     r4, 0x70(r3)
    mr      r4, r31
    lwz     r3, 0x70(r3)
    bl      manageActor__12TLiveManagerFP10TLiveActor
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lbz     r0, -0x64c4(r13)
    extsb.  r0, r0
    bne-    branch_0x80138f1c
    lis     r3, 0x803b
    subi    r0, r3, 0x48f4
    lis     r3, 0x803c
    stw     r0, -0x64c0(r13)
    subi    r0, r3, 0xc14
    lis     r4, 0x8013
    stw     r0, -0x64c0(r13)
    lis     r3, 0x803f
    addi    r5, r3, 0x3a10
    addi    r4, r4, 0x7430
    subi    r3, r13, 0x64c0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x64c4(r13)
branch_0x80138f1c:
    lwz     r8, 0x8c(r31)
    li      r7, 0x0
    lis     r4, 0x1000
    stw     r7, 0x8(r8)
    subi    r0, r13, 0x64c0
    addi    r3, r31, 0x0
    stw     r7, 0x20(r8)
    addi    r4, r4, 0x35
    li      r5, 0x0
    stw     r0, 0x14(r8)
    li      r6, 0x0
    stw     r0, 0x18(r8)
    stw     r7, 0x1c(r8)
    lfs     f1, -0x4e68(rtoc)
    fmr     f2, f1
    fmr     f3, f1
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r0, 0x64(r31)
    li      r3, 0x8c
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x80138fa8
    lis     r4, 0x8038
    addi    r3, r30, 0x0
    addi    r4, r4, 0x6fdc
    bl      __ct__9THitActorFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0xa04
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    stw     r31, 0x68(r30)
branch_0x80138fa8:
    stw     r30, 0x194(r31)
    lwz     r3, 0x194(r31)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa4(r12)
    mtlr    r12
    blrl
    lwz     r6, 0x194(r31)
    addi    r3, sp, 0x28
    lwz     r5, 0x10(r31)
    addi    r4, r31, 0x30
    lwz     r0, 0x14(r31)
    stw     r5, 0x10(r6)
    stw     r0, 0x14(r6)
    lwz     r0, 0x18(r31)
    stw     r0, 0x18(r6)
    bl      SMS_Eular2Quat__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x28(sp)
    mr      r3, r31
    stfs    f0, 0x198(r31)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x19c(r31)
    lfs     f0, 0x30(sp)
    stfs    f0, 0x1a0(r31)
    lfs     f0, 0x34(sp)
    stfs    f0, 0x1a4(r31)
    bl      getModel__10TLiveActorCFv
    lwz     r5, 0x4(r3)
    lis     r3, 0x8038
    addi    r4, r3, 0x6fcc
    lwz     r3, 0xb0(r5)
    bl      getIndex__10JUTNameTabCFPCc
    clrlwi  r0, r3, 16
    stw     r0, 0x1d8(r31)
    mr      r3, r31
    bl      initAnmSound__10TLiveActorFv
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl __ct__9TTabePukuFPCc
__ct__9TTabePukuFPCc: # 0x8013904c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, 0x803c
    subi    r3, r3, 0xbac
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x1000
    stw     r0, 0xf0(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl bind__11TTPHitActorFv
bind__11TTPHitActorFv: # 0x8013909c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xf8(sp)
    stfd    f31, 0xf0(sp)
    stfd    f30, 0xe8(sp)
    stw     r31, 0xe4(sp)
    mr      r31, r3
    addi    r4, r31, 0x84
    stw     r30, 0xe0(sp)
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r31)
    stw     r3, 0xd4(sp)
    stw     r0, 0xd8(sp)
    lwz     r0, 0x18(r31)
    stw     r0, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0x6c(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x70(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x74(r31)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lwz     r6, 0x68(r31)
    lfs     f2, 0xd4(sp)
    lwz     r3, 0xac(r6)
    lwz     r0, 0xb0(r6)
    stw     r3, 0x8c(sp)
    stw     r0, 0x90(sp)
    lwz     r0, 0xb4(r6)
    stw     r0, 0x94(sp)
    lfs     f1, 0x8c(sp)
    lfs     f0, 0x90(sp)
    fadds   f1, f2, f1
    stfs    f1, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x94(sp)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f1, 0xd4(sp)
    lfs     f0, 0x94(r6)
    fadds   f0, f1, f0
    stfs    f0, 0xd4(sp)
    lfs     f1, 0xd8(sp)
    lfs     f0, 0x98(r6)
    fadds   f0, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f1, 0xdc(sp)
    lfs     f0, 0x9c(r6)
    fadds   f0, f1, f0
    stfs    f0, 0xdc(sp)
    lfs     f30, 0xdc(sp)
    lfs     f31, 0xd8(sp)
    lfs     f0, 0x78(r31)
    fmr     f3, f30
    lwz     r3, -0x6328(r13)
    fadds   f2, f31, f0
    lfs     f1, 0xd4(sp)
    bl      checkGroundIgnoreWaterSurface__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0x80(r31)
    lfs     f0, 0x80(r31)
    lfs     f3, -0x4e64(rtoc)
    fadds   f0, f0, f3
    stfs    f0, 0x80(r31)
    lfs     f1, -0x4e10(rtoc)
    lfs     f0, 0x80(r31)
    fadds   f0, f1, f0
    fcmpo   cr0, f31, f0
    cror    2, 0, 2
    bne-    branch_0x80139248
    li      r0, 0x0
    stb     r0, 0x88(r31)
    lwz     r3, 0x84(r31)
    lfs     f7, 0x80(r31)
    addi    r3, r3, 0x34
    lfs     f8, 0xd4(sp)
    lfs     f5, 0x4(r3)
    lfs     f4, 0x0(r3)
    fmuls   f2, f5, f31
    lfs     f6, 0x8(r3)
    fmuls   f1, f5, f7
    lfs     f0, -0x4e68(rtoc)
    fmadds  f2, f4, f8, f2
    fmadds  f1, f4, f8, f1
    fmadds  f2, f6, f30, f2
    fmadds  f1, f6, f30, f1
    fsubs   f1, f2, f1
    fsubs   f1, f3, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80139240
    fmadds  f0, f4, f1, f8
    stfs    f0, 0xd4(sp)
    lfs     f0, 0xd8(sp)
    fmadds  f0, f5, f1, f0
    stfs    f0, 0xd8(sp)
    lfs     f0, 0xdc(sp)
    fmadds  f0, f6, f1, f0
    stfs    f0, 0xdc(sp)
branch_0x80139240:
    stfs    f7, 0xd8(sp)
    b       branch_0x80139250

branch_0x80139248:
    li      r0, 0x1
    stb     r0, 0x88(r31)
branch_0x80139250:
    lfs     f0, 0xd8(sp)
    lfs     f2, 0x78(r31)
    lfs     f1, -0x4e68(rtoc)
    fadds   f0, f0, f2
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x80139274
    fneg    f0, f2
    stfs    f0, 0xd8(sp)
branch_0x80139274:
    lfs     f1, 0x7c(r31)
    li      r5, 0x1
    lfs     f0, 0xd4(sp)
    li      r0, 0x0
    addi    r4, sp, 0x98
    stfs    f0, 0x98(sp)
    lfs     f0, 0xd8(sp)
    stfs    f0, 0x9c(sp)
    lfs     f0, 0xdc(sp)
    stfs    f0, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    lwz     r3, -0x6328(r13)
    stw     r5, 0xa8(sp)
    stw     r0, 0xb0(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    lfs     f0, 0x98(sp)
    addi    r30, r3, 0x0
    addi    r3, sp, 0x34
    stfs    f0, 0xd4(sp)
    addi    r4, r31, 0x10
    lfs     f0, 0xa0(sp)
    stfs    f0, 0xdc(sp)
    lwz     r0, 0xd4(sp)
    lwz     r5, 0xd8(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xdc(sp)
    stw     r5, 0x38(sp)
    stw     r0, 0x3c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r3, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r3, 0x6c(r31)
    stw     r0, 0x70(r31)
    lwz     r0, 0x3c(sp)
    stw     r0, 0x74(r31)
    stb     r30, 0x89(r31)
    lwz     r3, 0xd4(sp)
    lwz     r0, 0xd8(sp)
    stw     r3, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0xdc(sp)
    stw     r0, 0x18(r31)
    lwz     r0, 0xfc(sp)
    lfd     f31, 0xf0(sp)
    lfd     f30, 0xe8(sp)
    lwz     r31, 0xe4(sp)
    lwz     r30, 0xe0(sp)
    addi    sp, sp, 0xf8
    mtlr    r0
    blr


.globl updateTerrainCollsion__11TTPHitActorFv
updateTerrainCollsion__11TTPHitActorFv: # 0x8013933c
    stwu    sp, -0xe8(sp)
    lwz     r5, 0x68(r3)
    lfs     f8, -0x4e44(rtoc)
    lwz     r4, 0x198(r5)
    lwz     r0, 0x19c(r5)
    lfs     f3, -0x4e64(rtoc)
    stw     r4, 0xd8(sp)
    lfs     f1, -0x4de8(rtoc)
    stw     r0, 0xdc(sp)
    lwz     r4, 0x1a0(r5)
    lwz     r0, 0x1a4(r5)
    stw     r4, 0xe0(sp)
    stw     r0, 0xe4(sp)
    lfs     f0, 0xd8(sp)
    lfs     f10, 0xdc(sp)
    lfs     f9, 0xe0(sp)
    fmuls   f4, f0, f0
    lfs     f2, 0xe4(sp)
    fmuls   f7, f0, f10
    lfs     f11, 0x54(r3)
    fmuls   f6, f2, f9
    stfs    f11, 0x78(r3)
    fmuls   f2, f2, f0
    fnmsubs  f4, f8, f4, f3
    lfs     f0, 0x50(r3)
    fmuls   f5, f9, f9
    stfs    f0, 0x7c(r3)
    fmuls   f6, f8, f6
    fmuls   f3, f10, f9
    lwz     r4, 0x68(r3)
    fmuls   f0, f8, f2
    lwz     r4, 0x6c(r4)
    fnmsubs  f4, f8, f5, f4
    fmsubs  f6, f8, f7, f6
    fmadds  f5, f8, f3, f0
    cmplwi  r4, 0x0
    fmuls   f8, f1, f11
    beq-    branch_0x801393dc
    li      r0, 0x1
    b       branch_0x801393e0

branch_0x801393dc:
    li      r0, 0x0
branch_0x801393e0:
    cmpwi   r0, 0x0
    beq-    branch_0x80139414
    lfs     f1, 0x5c(r4)
    lfs     f0, 0x78(r3)
    fadds   f8, f8, f1
    fadds   f0, f0, f1
    stfs    f0, 0x78(r3)
    lwz     r4, 0x68(r3)
    lfs     f1, 0x7c(r3)
    lwz     r4, 0x6c(r4)
    lfs     f0, 0x58(r4)
    fadds   f0, f1, f0
    stfs    f0, 0x7c(r3)
branch_0x80139414:
    lfs     f2, -0x4e58(rtoc)
    lfs     f1, 0x54(r3)
    lfs     f0, -0x4e68(rtoc)
    fmuls   f3, f2, f1
    lwz     r4, 0x68(r3)
    lfsu    f2, 0x10(r4)
    fmuls   f7, f0, f8
    lfs     f1, -0x4df8(rtoc)
    fmadds  f0, f6, f3, f2
    fadds   f0, f0, f7
    stfs    f0, 0xb4(sp)
    lfs     f0, 0x4(r4)
    fmadds  f0, f4, f3, f0
    fmadds  f0, f1, f8, f0
    stfs    f0, 0xb8(sp)
    lfs     f0, 0x8(r4)
    fmadds  f0, f5, f3, f0
    fadds   f0, f0, f7
    stfs    f0, 0xbc(sp)
    lwz     r0, 0xb4(sp)
    lwz     r4, 0xb8(sp)
    stw     r0, 0xa8(sp)
    lwz     r0, 0xbc(sp)
    stw     r4, 0xac(sp)
    stw     r0, 0xb0(sp)
    lfs     f1, 0xa8(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xa8(sp)
    lfs     f1, 0xac(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xac(sp)
    lfs     f1, 0xb0(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0xb0(sp)
    lwz     r4, 0xa8(sp)
    lwz     r0, 0xac(sp)
    stw     r4, 0x6c(r3)
    stw     r0, 0x70(r3)
    lwz     r0, 0xb0(sp)
    stw     r0, 0x74(r3)
    lwz     r4, 0xb4(sp)
    lwz     r0, 0xb8(sp)
    stw     r4, 0x10(r3)
    stw     r0, 0x14(r3)
    lwz     r0, 0xbc(sp)
    addi    sp, sp, 0xe8
    stw     r0, 0x18(r3)
    blr


.globl receiveMessage__11TTPHitActorFP9THitActorUl
receiveMessage__11TTPHitActorFP9THitActorUl: # 0x801394e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, 0x68(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl init__11TTPHitActorFv
init__11TTPHitActorFv: # 0x80139510
    mflr    r0
    lis     r4, 0x1000
    stw     r0, 0x4(sp)
    addi    r4, r4, 0x35
    li      r5, 0x1
    stwu    sp, -0x68(sp)
    lis     r6, 0x8000
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    lfs     f1, -0x4de4(rtoc)
    stw     r3, 0x8(sp)
    fmr     f2, f1
    fmr     f3, f1
    lwz     r3, 0x8(sp)
    fmr     f4, f1
    bl      initHitActor__9THitActorFUlUsiffff
    lwz     r4, 0x8(sp)
    lis     r3, 0x8038
    addi    r31, r3, 0x6ff0
    lwz     r0, 0x64(r4)
    addi    r3, r31, 0x0
    clrrwi  r0, r0, 1
    stw     r0, 0x64(r4)
    lwz     r0, 0x64(r4)
    ori     r0, r0, 0x4
    stw     r0, 0x64(r4)
    lwz     r4, -0x5db8(r13)
    lwz     r30, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r30)
    addi    r4, r3, 0x0
    addi    r3, r30, 0x0
    lwz     r12, 0x1c(r12)
    addi    r5, r31, 0x0
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x38
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x38(sp)
    addi    r3, sp, 0x54
    addi    r4, sp, 0x34
    stw     r0, 0x34(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x54(sp)
    addi    r5, sp, 0x44
    addi    r4, r31, 0x0
    stw     r0, 0x50(sp)
    addi    r3, sp, 0x40
    addi    r6, sp, 0x8
    lwz     r0, 0x50(sp)
    stw     r0, 0x44(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl __dt__16TTabePukuManagerFv
__dt__16TTabePukuManagerFv: # 0x80139600
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80139658
    lis     r3, 0x803c
    subi    r0, r3, 0xc04
    stw     r0, 0x0(r30)
    beq-    branch_0x80139648
    lis     r3, 0x803b
    addi    r0, r3, 0x2550
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x80139648:
    extsh.  r0, r31
    ble-    branch_0x80139658
    mr      r3, r30
    bl      __dl__FPv
branch_0x80139658:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TTabePukuFv
__dt__9TTabePukuFv: # 0x80139674
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801396dc
    lis     r3, 0x803c
    subi    r3, r3, 0xbac
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801396cc
    lis     r3, 0x803b
    addi    r3, r3, 0x23a8
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x801396cc:
    extsh.  r0, r31
    ble-    branch_0x801396dc
    mr      r3, r30
    bl      __dl__FPv
branch_0x801396dc:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__11TTPHitActorFv
__dt__11TTPHitActorFv: # 0x801396f8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x80139760
    lis     r3, 0x803c
    subi    r3, r3, 0xa04
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x80139750
    lis     r3, 0x803e
    subi    r3, r3, 0x5b10
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x80139750:
    extsh.  r0, r31
    ble-    branch_0x80139760
    mr      r3, r30
    bl      __dl__FPv
branch_0x80139760:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_TabePuku_cpp
__sinit_TabePuku_cpp: # 0x8013977c
    mflr    r0
    lis     r3, 0x803f
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, 0x3a10
    lbz     r0, -0x7204(r13)
    lfs     f0, -0x4de0(rtoc)
    extsb.  r0, r0
    stfs    f0, -0x64c8(r13)
    bne-    branch_0x801397cc
    subi    r3, r13, 0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x63b8
    subi    r3, r13, 0x72b8
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7204(r13)
branch_0x801397cc:
    lbz     r0, -0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801397fc
    subi    r3, r13, 0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6410
    subi    r3, r13, 0x72ac
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7203(r13)
branch_0x801397fc:
    lbz     r0, -0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8013982c
    subi    r3, r13, 0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6468
    subi    r3, r13, 0x72a0
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7202(r13)
branch_0x8013982c:
    lbz     r0, -0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8013985c
    subi    r3, r13, 0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x64c0
    subi    r3, r13, 0x7294
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7201(r13)
branch_0x8013985c:
    lbz     r0, -0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8013988c
    subi    r3, r13, 0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6518
    subi    r3, r13, 0x7288
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x7200(r13)
branch_0x8013988c:
    lbz     r0, -0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801398bc
    subi    r3, r13, 0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6570
    subi    r3, r13, 0x727c
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71ff(r13)
branch_0x801398bc:
    lbz     r0, -0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801398ec
    subi    r3, r13, 0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x65c8
    subi    r3, r13, 0x7270
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fe(r13)
branch_0x801398ec:
    lbz     r0, -0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8013991c
    subi    r3, r13, 0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6620
    subi    r3, r13, 0x7264
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fd(r13)
branch_0x8013991c:
    lbz     r0, -0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8013994c
    subi    r3, r13, 0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6678
    subi    r3, r13, 0x7258
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fc(r13)
branch_0x8013994c:
    lbz     r0, -0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8013997c
    subi    r3, r13, 0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x66d0
    subi    r3, r13, 0x724c
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fb(r13)
branch_0x8013997c:
    lbz     r0, -0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801399ac
    subi    r3, r13, 0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6728
    subi    r3, r13, 0x7240
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71fa(r13)
branch_0x801399ac:
    lbz     r0, -0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801399dc
    subi    r3, r13, 0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6780
    subi    r3, r13, 0x7234
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f9(r13)
branch_0x801399dc:
    lbz     r0, -0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x80139a0c
    subi    r3, r13, 0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x67d8
    subi    r3, r13, 0x7228
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f8(r13)
branch_0x80139a0c:
    lbz     r0, -0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x80139a3c
    subi    r3, r13, 0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6830
    subi    r3, r13, 0x721c
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f7(r13)
branch_0x80139a3c:
    lbz     r0, -0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x80139a6c
    subi    r3, r13, 0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, 0x8001
    subi    r4, r3, 0x6888
    subi    r3, r13, 0x7210
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, -0x71f6(r13)
branch_0x80139a6c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl _32___dt__11TTPHitActorFv
_32___dt__11TTPHitActorFv: # 0x80139a80
    subi    r3, r3, 0x20
    b       __dt__11TTPHitActorFv


.globl _32___dt__9TTabePukuFv
_32___dt__9TTabePukuFv: # 0x80139a88
    subi    r3, r3, 0x20
    b       __dt__9TTabePukuFv

