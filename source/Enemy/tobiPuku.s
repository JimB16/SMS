
.globl __dt__24TNerveTobiPukuSwimWanderFv
__dt__24TNerveTobiPukuSwimWanderFv: # 0x800996e4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80099728
    lis     r3, __vvt__24TNerveTobiPukuSwimWander@h
    addi    r0, r3, __vvt__24TNerveTobiPukuSwimWander@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80099718
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80099718:
    extsh.  r0, r4
    ble-    branch_0x80099728
    mr      r3, r31
    bl      __dl__FPv
branch_0x80099728:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveTobiPukuSwimWanderCFP24TSpineBase_10TLiveActor_
execute__24TNerveTobiPukuSwimWanderCFP24TSpineBase_10TLiveActor_: # 0x80099740
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009979c
    lfs     f0, 0x14(r31)
    mr      r3, r31
    stfs    f0, 0x1e0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1d8(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r31)
branch_0x8009979c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1f8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x800997c0
    mr      r3, r31
    bl      goToRandomNextGraphNode__11TSpineEnemyFv
branch_0x800997c0:
    mr      r3, r31
    lfs     f1, -0x6658(r2)
    lwz     r12, 0x0(r31)
    li      r4, 0x0
    lwz     r12, 0x1ac(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x24(sp)
    li      r3, 0x0
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl execute__26TNerveTobiPukuReturnLaunchCFP24TSpineBase_10TLiveActor_
execute__26TNerveTobiPukuReturnLaunchCFP24TSpineBase_10TLiveActor_: # 0x800997f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x800998a4
    lwz     r4, 0x1dc(r31)
    li      r5, 0x0
    addi    r3, r31, 0x0
    stw     r5, 0x44(sp)
    addi    r6, r4, 0x10
    lwz     r4, 0x10(r4)
    lwz     r0, 0x4(r6)
    stw     r4, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x8(r6)
    stw     r0, 0x50(sp)
    lwz     r0, 0x44(sp)
    stw     r0, 0xf4(r31)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0xf8(r31)
    stw     r0, 0xfc(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x100(r31)
    lwz     r0, 0x44(sp)
    stw     r0, 0x104(r31)
    lwz     r4, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r4, 0x108(r31)
    stw     r0, 0x10c(r31)
    lwz     r0, 0x50(sp)
    stw     r0, 0x110(r31)
    stw     r5, 0x118(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1d8(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1e0(r31)
branch_0x800998a4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1f4(r12)
    mtlr    r12
    blrl
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1f8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x80099954
    lbz     r0, R13Off_m0x6bfc(r13)
    extsb.  r0, r0
    bne-    branch_0x80099918
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTobiPukuPrepareFly@h
    stw     r0, R13Off_m0x6bf8(r13)
    addi    r0, r3, __vvt__24TNerveTobiPukuPrepareFly@l
    lis     r4, __dt__24TNerveTobiPukuPrepareFlyFv@ha
    stw     r0, R13Off_m0x6bf8(r13)
    lis     r3, unk_803f12bc@h
    addi    r5, r3, unk_803f12bc@l
    addi    r4, r4, __dt__24TNerveTobiPukuPrepareFlyFv@l
    addi    r3, r13, R13Off_m0x6bf8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bfc(r13)
branch_0x80099918:
    addi    r4, r13, R13Off_m0x6bf8
    cmplwi  r4, 0x0
    beq-    branch_0x8009994c
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8009994c
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8009994c:
    li      r3, 0x1
    b       branch_0x80099a30

branch_0x80099954:
    lwz     r6, 0x1dc(r31)
    addi    r3, sp, 0x24
    addi    r4, r31, 0x10
    lwz     r5, 0x10(r6)
    lwz     r0, 0x14(r6)
    stw     r5, 0x24(sp)
    stw     r0, 0x28(sp)
    lwz     r0, 0x18(r6)
    stw     r0, 0x2c(sp)
    bl      sub__Q29JGeometry8TVec3_f_FRCQ29JGeometry8TVec3_f_
    lwz     r0, 0x24(sp)
    addi    r3, sp, 0x58
    lwz     r5, 0x28(sp)
    mr      r4, r3
    stw     r0, 0x58(sp)
    lwz     r0, 0x2c(sp)
    stw     r5, 0x5c(sp)
    lfs     f0, -0x6654(r2)
    stw     r0, 0x60(sp)
    stfs    f0, 0x5c(sp)
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f0, 0x1d0(r31)
    lfs     f1, -0x6650(r2)
    lfs     f3, 0x140(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1d0(r31)
    lfs     f0, 0x1d8(r31)
    fmuls   f0, f0, f1
    stfs    f0, 0x1d8(r31)
    lfs     f1, 0x58(sp)
    lfs     f0, 0x1d0(r31)
    lfs     f2, 0x10(r31)
    fmsubs  f0, f1, f3, f0
    fadds   f0, f2, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x60(sp)
    lfs     f0, 0x1d8(r31)
    lfs     f2, 0x18(r31)
    fmsubs  f0, f1, f3, f0
    fadds   f0, f2, f0
    stfs    f0, 0x18(r31)
    lfs     f2, -0x664c(r2)
    lfs     f1, 0x1ec(r31)
    lfs     f0, -0x6648(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80099a18
    fmr     f1, f0
    b       branch_0x80099a28

branch_0x80099a18:
    lfs     f0, -0x6654(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80099a28
    fmr     f1, f0
branch_0x80099a28:
    stfs    f1, 0x1ec(r31)
    li      r3, 0x0
branch_0x80099a30:
    lwz     r0, 0x74(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    mtlr    r0
    addi    sp, sp, 0x70
    blr


.globl __dt__24TNerveTobiPukuPrepareFlyFv
__dt__24TNerveTobiPukuPrepareFlyFv: # 0x80099a48
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80099a8c
    lis     r3, __vvt__24TNerveTobiPukuPrepareFly@h
    addi    r0, r3, __vvt__24TNerveTobiPukuPrepareFly@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80099a7c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80099a7c:
    extsh.  r0, r4
    ble-    branch_0x80099a8c
    mr      r3, r31
    bl      __dl__FPv
branch_0x80099a8c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__26TNerveTobiPukuReturnLaunchFv
__dt__26TNerveTobiPukuReturnLaunchFv: # 0x80099aa4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80099ae8
    lis     r3, __vvt__26TNerveTobiPukuReturnLaunch@h
    addi    r0, r3, __vvt__26TNerveTobiPukuReturnLaunch@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80099ad8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80099ad8:
    extsh.  r0, r4
    ble-    branch_0x80099ae8
    mr      r3, r31
    bl      __dl__FPv
branch_0x80099ae8:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__24TNerveTobiPukuPrepareFlyCFP24TSpineBase_10TLiveActor_
execute__24TNerveTobiPukuPrepareFlyCFP24TSpineBase_10TLiveActor_: # 0x80099b00
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80099b70
    lfs     f2, 0x1b4(r31)
    lfs     f0, -0x6644(r2)
    b       branch_0x80099b38

branch_0x80099b34:
    fsubs   f2, f2, f0
branch_0x80099b38:
    fcmpo   cr0, f2, f0
    cror    2, 1, 2
    beq+    branch_0x80099b34
    lfs     f1, -0x6644(r2)
    lfs     f0, -0x6654(r2)
    b       branch_0x80099b54

branch_0x80099b50:
    fadds   f2, f2, f1
branch_0x80099b54:
    fcmpo   cr0, f2, f0
    blt+    branch_0x80099b50
    lfs     f1, 0x30(r31)
    lfs     f0, -0x6640(r2)
    fsubs   f1, f2, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x1f0(r31)
branch_0x80099b70:
    lwz     r3, 0x1dc(r31)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x10(r3)
    lfs     f2, -0x663c(r2)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x10(r31)
    lwz     r3, 0x1dc(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x14(r3)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x14(r31)
    lwz     r3, 0x1dc(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x18(r3)
    fsubs   f0, f0, f1
    fmadds  f0, f2, f0, f1
    stfs    f0, 0x18(r31)
    lfs     f2, 0x1ec(r31)
    lfs     f1, -0x6638(r2)
    lfs     f0, -0x6648(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x80099bdc
    fmr     f1, f0
    b       branch_0x80099bec

branch_0x80099bdc:
    lfs     f0, -0x6654(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x80099bec
    fmr     f1, f0
branch_0x80099bec:
    stfs    f1, 0x1ec(r31)
    lis     r0, 0x4330
    lfs     f1, 0x30(r31)
    lfs     f0, 0x1f0(r31)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r31)
    lwz     r3, 0x20(r30)
    lfd     f1, -0x6630(r2)
    xoris   r3, r3, 0x8000
    lfs     f2, -0x6634(r2)
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f0, 0x30(sp)
    fsubs   f0, f0, f1
    fcmpu   cr0, f2, f0
    bne-    branch_0x80099c40
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1d4(r12)
    mtlr    r12
    blrl
branch_0x80099c40:
    lwz     r3, 0x20(r30)
    lis     r0, 0x4330
    lfd     f2, -0x6630(r2)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x6640(r2)
    stw     r3, 0x34(sp)
    stw     r0, 0x30(sp)
    lfd     f1, 0x30(sp)
    fsubs   f1, f1, f2
    fcmpo   cr0, f1, f0
    ble-    branch_0x80099c8c
    lwz     r3, 0x1dc(r31)
    mr      r4, r31
    bl      forceLaunch__18TTobiPukuLaunchPadFP9TTobiPuku
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
branch_0x80099c8c:
    lwz     r0, 0x44(sp)
    li      r3, 0x0
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl execute__19TNerveTobiPukuBoundCFP24TSpineBase_10TLiveActor_
execute__19TNerveTobiPukuBoundCFP24TSpineBase_10TLiveActor_: # 0x80099ca8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r4
    lwz     r0, 0x20(r4)
    lwz     r5, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x80099d88
    li      r0, 0x1
    stb     r0, 0x1ae(r5)
    lwz     r3, 0x19c(r5)
    lwz     r4, 0x198(r5)
    lwz     r0, 0x33c(r3)
    cmpw    r4, r0
    bge-    branch_0x80099d88
    addi    r0, r4, 0x1
    stw     r0, 0x198(r5)
    lwz     r4, 0x19c(r5)
    lwz     r3, 0x1d0(r5)
    lfs     f2, 0x350(r4)
    lwz     r0, 0x1d4(r5)
    lfs     f0, -0x7ec0(r13)
    stw     r3, 0x48(sp)
    fmuls   f3, f0, f2
    lfs     f0, -0x6628(r2)
    stw     r0, 0x4c(sp)
    lwz     r0, 0x1d8(r5)
    stw     r0, 0x50(sp)
    lfs     f1, 0x48(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x48(sp)
    lfs     f1, 0x50(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x50(sp)
    lfs     f2, 0x1b0(r5)
    lfs     f1, 0xc8(r5)
    fsubs   f1, f2, f1
    fmuls   f1, f3, f1
    fdivs   f0, f1, f0
    stfs    f0, 0x4c(sp)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0x1d0(r5)
    stw     r0, 0x1d4(r5)
    lwz     r0, 0x50(sp)
    stw     r0, 0x1d8(r5)
    lwz     r3, 0x48(sp)
    lwz     r0, 0x4c(sp)
    stw     r3, 0xac(r5)
    stw     r0, 0xb0(r5)
    lwz     r0, 0x50(sp)
    stw     r0, 0xb4(r5)
    lwz     r0, 0xf0(r5)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r5)
branch_0x80099d88:
    lwz     r3, 0xac(r5)
    lwz     r0, 0xb0(r5)
    lfs     f0, -0x6654(r2)
    stw     r3, 0x54(sp)
    stw     r0, 0x58(sp)
    lwz     r0, 0xb4(r5)
    stw     r0, 0x5c(sp)
    lfs     f1, 0x58(sp)
    fcmpo   cr0, f1, f0
    ble-    branch_0x80099db8
    lfs     f0, 0x14(r5)
    stfs    f0, 0x1b0(r5)
branch_0x80099db8:
    lwz     r0, 0xf0(r5)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x80099dcc
    li      r0, 0x1
    b       branch_0x80099dd0

branch_0x80099dcc:
    li      r0, 0x0
branch_0x80099dd0:
    cmpwi   r0, 0x0
    bne-    branch_0x80099e58
    lbz     r0, R13Off_m0x6c0c(r13)
    extsb.  r0, r0
    bne-    branch_0x80099e1c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTobiPukuLand@h
    stw     r0, R13Off_m0x6c08(r13)
    addi    r0, r3, __vvt__18TNerveTobiPukuLand@l
    lis     r4, __dt__18TNerveTobiPukuLandFv@ha
    stw     r0, R13Off_m0x6c08(r13)
    lis     r3, unk_803f12a4@h
    addi    r5, r3, unk_803f12a4@l
    addi    r4, r4, __dt__18TNerveTobiPukuLandFv@l
    addi    r3, r13, R13Off_m0x6c08
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c0c(r13)
branch_0x80099e1c:
    addi    r4, r13, R13Off_m0x6c08
    cmplwi  r4, 0x0
    beq-    branch_0x80099e50
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x80099e50
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x80099e50:
    li      r3, 0x1
    b       branch_0x80099e5c

branch_0x80099e58:
    li      r3, 0x0
branch_0x80099e5c:
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl __dt__18TNerveTobiPukuLandFv
__dt__18TNerveTobiPukuLandFv: # 0x80099e70
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80099eb4
    lis     r3, __vvt__18TNerveTobiPukuLand@h
    addi    r0, r3, __vvt__18TNerveTobiPukuLand@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80099ea4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80099ea4:
    extsh.  r0, r4
    ble-    branch_0x80099eb4
    mr      r3, r31
    bl      __dl__FPv
branch_0x80099eb4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__19TNerveTobiPukuBoundFv
__dt__19TNerveTobiPukuBoundFv: # 0x80099ecc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x80099f10
    lis     r3, __vvt__19TNerveTobiPukuBound@h
    addi    r0, r3, __vvt__19TNerveTobiPukuBound@l
    stw     r0, 0x0(r31)
    beq-    branch_0x80099f00
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x80099f00:
    extsh.  r0, r4
    ble-    branch_0x80099f10
    mr      r3, r31
    bl      __dl__FPv
branch_0x80099f10:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__18TNerveTobiPukuLandCFP24TSpineBase_10TLiveActor_
execute__18TNerveTobiPukuLandCFP24TSpineBase_10TLiveActor_: # 0x80099f28
    mflr    r0
    lis     r3, unk_803f1250@h
    stw     r0, 0x4(sp)
    stwu    sp, -0xa8(sp)
    stw     r31, 0xa4(sp)
    addi    r31, r3, unk_803f1250@l
    stw     r30, 0xa0(sp)
    stw     r29, 0x9c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x2
    bge-    branch_0x8009a0f8
    lwz     r3, 0xc4(r30)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x80099f84
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x80099f84
    cmplwi  r3, 0x4104
    bne-    branch_0x80099f8c
branch_0x80099f84:
    li      r0, 0x1
    b       branch_0x80099f90

branch_0x80099f8c:
    li      r0, 0x0
branch_0x80099f90:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009a00c
    lfs     f1, 0x14(r30)
    mr      r3, r30
    lfs     f0, -0x6624(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    lbz     r0, R13Off_m0x7ebc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8009a4b0
    lfs     f1, 0x1e4(r30)
    lfs     f0, -0x6620(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0x1e4(r30)
    lfs     f2, -0x661c(r2)
    lfs     f0, 0x1e4(r30)
    lfs     f1, -0x6648(r2)
    fdivs   f2, f2, f0
    lfs     f0, 0x30(r30)
    fabs    f2, f2
    fsubs   f0, f1, f0
    fdivs   f0, f0, f2
    stfs    f0, 0x1e8(r30)
    b       branch_0x8009a4b0

branch_0x8009a00c:
    lbz     r0, R13Off_m0x7ec4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8009a0c0
    lwz     r3, 0x19c(r30)
    lwz     r4, 0x198(r30)
    lwz     r0, 0x33c(r3)
    cmpw    r4, r0
    bge-    branch_0x8009a034
    li      r0, 0x1
    b       branch_0x8009a03c

branch_0x8009a034:
    li      r0, 0x0
    stb     r0, 0x1ae(r30)
branch_0x8009a03c:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009a0c0
    lbz     r0, R13Off_m0x6c04(r13)
    extsb.  r0, r0
    bne-    branch_0x8009a084
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__19TNerveTobiPukuBound@h
    stw     r0, R13Off_m0x6c00(r13)
    addi    r0, r3, __vvt__19TNerveTobiPukuBound@l
    lis     r3, __dt__19TNerveTobiPukuBoundFv@ha
    stw     r0, R13Off_m0x6c00(r13)
    addi    r4, r3, __dt__19TNerveTobiPukuBoundFv@l
    addi    r3, r13, R13Off_m0x6c00
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c04(r13)
branch_0x8009a084:
    addi    r4, r13, R13Off_m0x6c00
    cmplwi  r4, 0x0
    beq-    branch_0x8009a0b8
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8009a0b8
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8009a0b8:
    li      r3, 0x1
    b       branch_0x8009a4b4

branch_0x8009a0c0:
    lwz     r4, 0x10(r30)
    mr      r3, r30
    lwz     r0, 0x14(r30)
    stw     r4, 0x1b8(r30)
    stw     r0, 0x1bc(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1c0(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1f0(r12)
    mtlr    r12
    blrl
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x30(r30)
    b       branch_0x8009a4b0

branch_0x8009a0f8:
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1cc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009a258
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x1
    bne-    branch_0x8009a150
    lfs     f1, 0x10(r30)
    lfs     f0, 0x1b8(r30)
    lfs     f3, 0x14(r30)
    lfs     f2, 0x1bc(r30)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r30)
    lfs     f1, 0x1c0(r30)
    fsubs   f2, f3, f2
    stfs    f0, 0x1c4(r30)
    fsubs   f0, f4, f1
    stfs    f2, 0x1c8(r30)
    stfs    f0, 0x1cc(r30)
branch_0x8009a150:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x14
    bge-    branch_0x8009a1c8
    xoris   r0, r0, 0x8000
    lfs     f2, -0x6618(r2)
    stw     r0, 0x94(sp)
    lis     r0, 0x4330
    lfd     f1, -0x6630(r2)
    stw     r0, 0x90(sp)
    lwz     r3, 0x1b8(r30)
    lwz     r0, 0x1bc(r30)
    lfd     f0, 0x90(sp)
    stw     r3, 0x10(r30)
    fsubs   f0, f0, f1
    stw     r0, 0x14(r30)
    lwz     r0, 0x1c0(r30)
    fmuls   f2, f2, f0
    stw     r0, 0x18(r30)
    lfs     f1, 0x1c4(r30)
    lfs     f0, 0x10(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x10(r30)
    lfs     f1, 0x1c8(r30)
    lfs     f0, 0x14(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x1cc(r30)
    lfs     f0, 0x18(r30)
    fmadds  f0, f1, f2, f0
    stfs    f0, 0x18(r30)
branch_0x8009a1c8:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009a4b0
    lbz     r0, R13Off_m0x6c1c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009a21c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTobiPukuPitiPiti@h
    stw     r0, R13Off_m0x6c18(r13)
    addi    r0, r3, __vvt__22TNerveTobiPukuPitiPiti@l
    lis     r3, __dt__22TNerveTobiPukuPitiPitiFv@ha
    stw     r0, R13Off_m0x6c18(r13)
    addi    r4, r3, __dt__22TNerveTobiPukuPitiPitiFv@l
    addi    r3, r13, R13Off_m0x6c18
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c1c(r13)
branch_0x8009a21c:
    addi    r4, r13, R13Off_m0x6c18
    cmplwi  r4, 0x0
    beq-    branch_0x8009a250
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8009a250
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8009a250:
    li      r3, 0x1
    b       branch_0x8009a4b4

branch_0x8009a258:
    lbz     r0, R13Off_m0x7ebc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8009a448
    lfs     f1, 0x1e0(r30)
    lfs     f0, 0x14(r30)
    lwz     r3, 0x1d0(r30)
    lwz     r0, 0x1d4(r30)
    fsubs   f0, f1, f0
    lfs     f2, -0x6614(r2)
    stw     r3, 0x7c(sp)
    stw     r0, 0x80(sp)
    lwz     r0, 0x1d8(r30)
    stw     r0, 0x84(sp)
    lfs     f1, 0x1d4(r30)
    fmuls   f1, f1, f2
    stfs    f1, 0x1d4(r30)
    stfs    f1, 0x7c(sp)
    lfs     f1, 0x1d8(r30)
    fmuls   f1, f1, f2
    stfs    f1, 0x1d8(r30)
    stfs    f1, 0x84(sp)
    lfs     f2, -0x661c(r2)
    lfs     f3, 0x1e4(r30)
    fsubs   f1, f2, f0
    fmuls   f1, f3, f1
    fdivs   f1, f1, f2
    stfs    f1, 0x80(sp)
    lfs     f3, 0x30(r30)
    lfs     f2, 0x1e8(r30)
    lfs     f1, -0x6648(r2)
    fadds   f2, f3, f2
    fcmpo   cr0, f2, f1
    ble-    branch_0x8009a2e4
    fmr     f2, f1
    b       branch_0x8009a2f4

branch_0x8009a2e4:
    lfs     f1, -0x6654(r2)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8009a2f4
    fmr     f2, f1
branch_0x8009a2f4:
    stfs    f2, 0x30(r30)
    fabs    f3, f0
    lfs     f2, -0x6610(r2)
    lfs     f1, 0x30(r30)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f2, f2, f1
    lwz     r4, R13Off_m0x5ea4(r13)
    lfs     f1, 0x7c(sp)
    fctiwz  f2, f2
    stfd    f2, 0x90(sp)
    lwz     r3, 0x94(sp)
    clrlwi  r3, r3, 16
    sraw    r0, r3, r0
    slwi    r0, r0, 2
    lfsx    f2, r4, r0
    fmuls   f1, f1, f2
    stfs    f1, 0x7c(sp)
    lfs     f1, 0x84(sp)
    fmuls   f1, f1, f2
    stfs    f1, 0x84(sp)
    lfs     f1, 0x1e4(r30)
    stfs    f1, 0x80(sp)
    lfs     f2, 0x10(r30)
    lfs     f1, 0x7c(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x10(r30)
    lfs     f2, 0x14(r30)
    lfs     f1, 0x80(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x14(r30)
    lfs     f2, 0x18(r30)
    lfs     f1, 0x84(sp)
    fadds   f1, f2, f1
    stfs    f1, 0x18(r30)
    lfs     f1, -0x660c(r2)
    fcmpo   cr0, f3, f1
    ble-    branch_0x8009a3bc
    lfs     f3, -0x6638(r2)
    lfs     f2, 0x1ec(r30)
    lfs     f1, -0x6648(r2)
    fadds   f2, f3, f2
    fcmpo   cr0, f2, f1
    ble-    branch_0x8009a3a8
    fmr     f2, f1
    b       branch_0x8009a3b8

branch_0x8009a3a8:
    lfs     f1, -0x6654(r2)
    fcmpo   cr0, f2, f1
    bge-    branch_0x8009a3b8
    fmr     f2, f1
branch_0x8009a3b8:
    stfs    f2, 0x1ec(r30)
branch_0x8009a3bc:
    fabs    f1, f0
    lfs     f0, -0x661c(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8009a4b0
    lbz     r0, R13Off_m0x6bf4(r13)
    extsb.  r0, r0
    bne-    branch_0x8009a40c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveTobiPukuReturnLaunch@h
    stw     r0, R13Off_m0x6bf0(r13)
    addi    r0, r3, __vvt__26TNerveTobiPukuReturnLaunch@l
    lis     r3, __dt__26TNerveTobiPukuReturnLaunchFv@ha
    stw     r0, R13Off_m0x6bf0(r13)
    addi    r4, r3, __dt__26TNerveTobiPukuReturnLaunchFv@l
    addi    r3, r13, R13Off_m0x6bf0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bf4(r13)
branch_0x8009a40c:
    addi    r4, r13, R13Off_m0x6bf0
    cmplwi  r4, 0x0
    beq-    branch_0x8009a440
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8009a440
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8009a440:
    li      r3, 0x1
    b       branch_0x8009a4b4

branch_0x8009a448:
    lfs     f1, 0x14(r30)
    mr      r3, r30
    lfs     f0, -0x6608(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009a490
    lfs     f1, 0x30(r30)
    lfs     f0, -0x7ec8(r13)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8009a490
    lfs     f0, -0x6604(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x30(r30)
branch_0x8009a490:
    lwz     r0, 0x20(r29)
    cmpwi   r0, 0x64
    ble-    branch_0x8009a4b0
    lwz     r0, 0xf0(r30)
    li      r3, 0x1
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r30)
    b       branch_0x8009a4b4

branch_0x8009a4b0:
    li      r3, 0x0
branch_0x8009a4b4:
    lwz     r0, 0xac(sp)
    lwz     r31, 0xa4(sp)
    lwz     r30, 0xa0(sp)
    mtlr    r0
    lwz     r29, 0x9c(sp)
    addi    sp, sp, 0xa8
    blr


.globl __dt__22TNerveTobiPukuPitiPitiFv
__dt__22TNerveTobiPukuPitiPitiFv: # 0x8009a4d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009a514
    lis     r3, __vvt__22TNerveTobiPukuPitiPiti@h
    addi    r0, r3, __vvt__22TNerveTobiPukuPitiPiti@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009a504
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009a504:
    extsh.  r0, r4
    ble-    branch_0x8009a514
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009a514:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveTobiPukuDieCFP24TSpineBase_10TLiveActor_
execute__17TNerveTobiPukuDieCFP24TSpineBase_10TLiveActor_: # 0x8009a52c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r4
    stw     r29, 0x44(sp)
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009a634
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009a56c
    li      r0, 0x1
    b       branch_0x8009a570

branch_0x8009a56c:
    li      r0, 0x0
branch_0x8009a570:
    cmpwi   r0, 0x0
    beq-    branch_0x8009a5e4
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x34(sp)
    stfs    f0, 0x38(sp)
    stfs    f0, 0x3c(sp)
    lwz     r4, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r4, 0x28(sp)
    stw     r0, 0x2c(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x30(sp)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x38(sp)
    lwz     r4, 0x34(sp)
    lwz     r0, 0x38(sp)
    stw     r4, 0xac(r31)
    stw     r0, 0xb0(r31)
    lwz     r0, 0x3c(sp)
    stw     r0, 0xb4(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1e8(r12)
    mtlr    r12
    blrl
    b       branch_0x8009a634

branch_0x8009a5e4:
    lbz     r0, 0x1ad(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x8009a614
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1ec(r12)
    mtlr    r12
    blrl
    b       branch_0x8009a634

branch_0x8009a614:
    lwz     r0, 0xf0(r31)
    addi    r3, r31, 0x0
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x154(r12)
    mtlr    r12
    blrl
branch_0x8009a634:
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009a708
    lwz     r0, 0xf0(r31)
    li      r29, 0x0
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    ori     r0, r0, 0x8
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 16, 14
    stw     r0, 0xf0(r31)
    stw     r29, 0x68(r31)
    bl      stopAnmSound__10TLiveActorFv
    stw     r29, 0x8(r30)
    bl      theNerve__19TNerveSmallEnemyDieFv
    lwz     r0, 0x14(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8009a6a0
    stw     r0, 0x1c(r30)
branch_0x8009a6a0:
    li      r0, 0x0
    stw     r0, 0x20(r30)
    stw     r3, 0x14(r30)
    lwz     r5, 0x18(r30)
    cmplwi  r5, 0x0
    beq-    branch_0x8009a6e0
    lwz     r4, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r4, r0
    bge-    branch_0x8009a6e0
    lwz     r3, 0xc(r30)
    slwi    r0, r4, 2
    stwx    r5, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8009a6e0:
    lwz     r0, 0x64(r31)
    addi    r3, r31, 0x0
    ori     r0, r0, 0x1
    stw     r0, 0x64(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x114(r12)
    mtlr    r12
    blrl
    li      r3, 0x1
    b       branch_0x8009a70c

branch_0x8009a708:
    li      r3, 0x0
branch_0x8009a70c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl __dt__17TNerveTobiPukuDieFv
__dt__17TNerveTobiPukuDieFv: # 0x8009a728
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009a76c
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009a75c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009a75c:
    extsh.  r0, r4
    ble-    branch_0x8009a76c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009a76c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveTobiPukuPitiPitiCFP24TSpineBase_10TLiveActor_
execute__22TNerveTobiPukuPitiPitiCFP24TSpineBase_10TLiveActor_: # 0x8009a784
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r4
    stw     r30, 0x30(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009a7c0
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
branch_0x8009a7c0:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009a880
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    lwz     r4, 0x20(r31)
    lwz     r0, 0x364(r3)
    cmpw    r4, r0
    ble-    branch_0x8009a880
    li      r0, 0x0
    stb     r0, 0x1ad(r30)
    lbz     r0, R13Off_m0x6c14(r13)
    extsb.  r0, r0
    bne-    branch_0x8009a844
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    stw     r0, R13Off_m0x6c10(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    lis     r4, __dt__17TNerveTobiPukuDieFv@ha
    stw     r0, R13Off_m0x6c10(r13)
    lis     r3, unk_803f1298@h
    addi    r5, r3, unk_803f1298@l
    addi    r4, r4, __dt__17TNerveTobiPukuDieFv@l
    addi    r3, r13, R13Off_m0x6c10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c14(r13)
branch_0x8009a844:
    addi    r4, r13, R13Off_m0x6c10
    cmplwi  r4, 0x0
    beq-    branch_0x8009a878
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8009a878
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8009a878:
    li      r3, 0x1
    b       branch_0x8009a884

branch_0x8009a880:
    li      r3, 0x0
branch_0x8009a884:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    addi    sp, sp, 0x38
    blr


.globl execute__18TNerveTobiPukuFallCFP24TSpineBase_10TLiveActor_
execute__18TNerveTobiPukuFallCFP24TSpineBase_10TLiveActor_: # 0x8009a89c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    stw     r30, 0x38(sp)
    mr      r30, r4
    lwz     r0, 0x20(r4)
    lwz     r31, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009a8e0
    lfs     f0, -0x6654(r2)
    mr      r3, r31
    stfs    f0, 0x30(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1e4(r12)
    mtlr    r12
    blrl
branch_0x8009a8e0:
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009a8f4
    li      r0, 0x1
    b       branch_0x8009a8f8

branch_0x8009a8f4:
    li      r0, 0x0
branch_0x8009a8f8:
    cmpwi   r0, 0x0
    bne-    branch_0x8009aa64
    lwz     r3, 0xc4(r31)
    lhz     r3, 0x0(r3)
    cmplwi  r3, 0x100
    beq-    branch_0x8009a928
    addi    r0, r3, -0x101
    clrlwi  r0, r0, 16
    cmplwi  r0, 0x4
    ble-    branch_0x8009a928
    cmplwi  r3, 0x4104
    bne-    branch_0x8009a930
branch_0x8009a928:
    li      r0, 0x1
    b       branch_0x8009a934

branch_0x8009a930:
    li      r0, 0x0
branch_0x8009a934:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009a9d8
    lbz     r0, R13Off_m0x6c14(r13)
    extsb.  r0, r0
    bne-    branch_0x8009a980
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    stw     r0, R13Off_m0x6c10(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    lis     r4, __dt__17TNerveTobiPukuDieFv@ha
    stw     r0, R13Off_m0x6c10(r13)
    lis     r3, unk_803f1298@h
    addi    r5, r3, unk_803f1298@l
    addi    r4, r4, __dt__17TNerveTobiPukuDieFv@l
    addi    r3, r13, R13Off_m0x6c10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c14(r13)
branch_0x8009a980:
    addi    r4, r13, R13Off_m0x6c10
    cmplwi  r4, 0x0
    beq-    branch_0x8009a9b4
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8009a9b4
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8009a9b4:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
    b       branch_0x8009aa5c

branch_0x8009a9d8:
    lbz     r0, R13Off_m0x6c14(r13)
    extsb.  r0, r0
    bne-    branch_0x8009aa1c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    stw     r0, R13Off_m0x6c10(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    lis     r4, __dt__17TNerveTobiPukuDieFv@ha
    stw     r0, R13Off_m0x6c10(r13)
    lis     r3, unk_803f1298@h
    addi    r5, r3, unk_803f1298@l
    addi    r4, r4, __dt__17TNerveTobiPukuDieFv@l
    addi    r3, r13, R13Off_m0x6c10
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c14(r13)
branch_0x8009aa1c:
    addi    r4, r13, R13Off_m0x6c10
    cmplwi  r4, 0x0
    beq-    branch_0x8009aa50
    lwz     r5, 0x8(r30)
    lwz     r0, 0x4(r30)
    cmpw    r5, r0
    bge-    branch_0x8009aa50
    lwz     r3, 0xc(r30)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r30)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r30)
branch_0x8009aa50:
    lwz     r0, 0xf0(r31)
    oris    r0, r0, 0x2
    stw     r0, 0xf0(r31)
branch_0x8009aa5c:
    li      r3, 0x1
    b       branch_0x8009aa68

branch_0x8009aa64:
    li      r3, 0x0
branch_0x8009aa68:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    lwz     r30, 0x38(sp)
    mtlr    r0
    addi    sp, sp, 0x40
    blr


.globl __dt__18TNerveTobiPukuFallFv
__dt__18TNerveTobiPukuFallFv: # 0x8009aa80
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009aac4
    lis     r3, __vvt__18TNerveTobiPukuFall@h
    addi    r0, r3, __vvt__18TNerveTobiPukuFall@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009aab4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009aab4:
    extsh.  r0, r4
    ble-    branch_0x8009aac4
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009aac4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveTobiPukuHitWaterCFP24TSpineBase_10TLiveActor_
execute__22TNerveTobiPukuHitWaterCFP24TSpineBase_10TLiveActor_: # 0x8009aadc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009ab88
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009ab18
    li      r0, 0x1
    b       branch_0x8009ab1c

branch_0x8009ab18:
    li      r0, 0x0
branch_0x8009ab1c:
    cmpwi   r0, 0x0
    beq-    branch_0x8009ab68
    lfs     f2, 0x14(r30)
    lfs     f1, 0xc8(r30)
    lfs     f0, -0x6634(r2)
    fsubs   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8009ab88
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1dc(r12)
    mtlr    r12
    blrl
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1fc(r12)
    mtlr    r12
    blrl
    b       branch_0x8009ab88

branch_0x8009ab68:
    lbz     r0, 0x1ae(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x8009ab88
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1e0(r12)
    mtlr    r12
    blrl
branch_0x8009ab88:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009ab9c
    li      r0, 0x1
    b       branch_0x8009aba0

branch_0x8009ab9c:
    li      r0, 0x0
branch_0x8009aba0:
    cmpwi   r0, 0x0
    bne-    branch_0x8009ac60
    lwz     r3, R13Off_m0x60b4(r13)
    lfs     f1, 0x10(r30)
    lfs     f0, 0x0(r3)
    lfs     f3, 0x18(r30)
    fsubs   f0, f1, f0
    lfs     f1, 0x8(r3)
    lfs     f2, -0x6654(r2)
    fsubs   f1, f3, f1
    stfs    f0, 0x38(sp)
    stfs    f2, 0x3c(sp)
    stfs    f1, 0x40(sp)
    lfs     f1, 0x38(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8009ac04
    lfs     f0, 0x3c(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8009ac04
    lfs     f0, 0x40(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8009ac04
    lfs     f0, -0x664c(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
branch_0x8009ac04:
    addi    r3, sp, 0x38
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lfs     f1, -0x6600(r2)
    stfs    f1, 0x3c(sp)
    lfs     f0, 0x38(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x38(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f1
    stfs    f0, 0x40(sp)
    lwz     r3, 0x38(sp)
    lwz     r0, 0x3c(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x40(sp)
    stw     r0, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lfs     f0, 0x14(r30)
    fadds   f0, f0, f1
    stfs    f0, 0x14(r30)
branch_0x8009ac60:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009ad10
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009ad08
    lbz     r0, R13Off_m0x6c24(r13)
    extsb.  r0, r0
    bne-    branch_0x8009acd4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTobiPukuFall@h
    stw     r0, R13Off_m0x6c20(r13)
    addi    r0, r3, __vvt__18TNerveTobiPukuFall@l
    lis     r4, __dt__18TNerveTobiPukuFallFv@ha
    stw     r0, R13Off_m0x6c20(r13)
    lis     r3, unk_803f1280@h
    addi    r5, r3, unk_803f1280@l
    addi    r4, r4, __dt__18TNerveTobiPukuFallFv@l
    addi    r3, r13, R13Off_m0x6c20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c24(r13)
branch_0x8009acd4:
    addi    r4, r13, R13Off_m0x6c20
    cmplwi  r4, 0x0
    beq-    branch_0x8009ad08
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8009ad08
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8009ad08:
    li      r3, 0x1
    b       branch_0x8009ad14

branch_0x8009ad10:
    li      r3, 0x0
branch_0x8009ad14:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__22TNerveTobiPukuHitWaterFv
__dt__22TNerveTobiPukuHitWaterFv: # 0x8009ad2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009ad70
    lis     r3, __vvt__22TNerveTobiPukuHitWater@h
    addi    r0, r3, __vvt__22TNerveTobiPukuHitWater@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009ad60
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009ad60:
    extsh.  r0, r4
    ble-    branch_0x8009ad70
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009ad70:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__20TNerveTobiPukuAttackCFP24TSpineBase_10TLiveActor_
execute__20TNerveTobiPukuAttackCFP24TSpineBase_10TLiveActor_: # 0x8009ad88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    mr      r31, r4
    stw     r30, 0x48(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009adc4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1dc(r12)
    mtlr    r12
    blrl
branch_0x8009adc4:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009add8
    li      r0, 0x1
    b       branch_0x8009addc

branch_0x8009add8:
    li      r0, 0x0
branch_0x8009addc:
    cmpwi   r0, 0x0
    beq-    branch_0x8009aefc
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      getCurAnmFrameNo__11TSpineEnemyCFi
    lfs     f0, -0x65fc(r2)
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    bne-    branch_0x8009ae68
    li      r0, 0x0
    stb     r0, 0x194(r30)
    lwz     r3, 0xac(r30)
    lwz     r0, 0xb0(r30)
    lfs     f1, -0x6654(r2)
    stw     r3, 0x3c(sp)
    stw     r0, 0x40(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x44(sp)
    stfs    f1, 0x30(sp)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x34(sp)
    stfs    f1, 0x38(sp)
    lwz     r3, 0x30(sp)
    lwz     r0, 0x34(sp)
    stw     r3, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x38(sp)
    stw     r0, 0xb4(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x65f8(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
branch_0x8009ae68:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009af04
    lbz     r0, R13Off_m0x6c24(r13)
    extsb.  r0, r0
    bne-    branch_0x8009aec0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTobiPukuFall@h
    stw     r0, R13Off_m0x6c20(r13)
    addi    r0, r3, __vvt__18TNerveTobiPukuFall@l
    lis     r4, __dt__18TNerveTobiPukuFallFv@ha
    stw     r0, R13Off_m0x6c20(r13)
    lis     r3, unk_803f1280@h
    addi    r5, r3, unk_803f1280@l
    addi    r4, r4, __dt__18TNerveTobiPukuFallFv@l
    addi    r3, r13, R13Off_m0x6c20
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c24(r13)
branch_0x8009aec0:
    addi    r4, r13, R13Off_m0x6c20
    cmplwi  r4, 0x0
    beq-    branch_0x8009aef4
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8009aef4
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8009aef4:
    li      r3, 0x1
    b       branch_0x8009af08

branch_0x8009aefc:
    li      r3, 0x1
    b       branch_0x8009af08

branch_0x8009af04:
    li      r3, 0x0
branch_0x8009af08:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl __dt__20TNerveTobiPukuAttackFv
__dt__20TNerveTobiPukuAttackFv: # 0x8009af20
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009af64
    lis     r3, __vvt__20TNerveTobiPukuAttack@h
    addi    r0, r3, __vvt__20TNerveTobiPukuAttack@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009af54
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009af54:
    extsh.  r0, r4
    ble-    branch_0x8009af64
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009af64:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__17TNerveTobiPukuFlyCFP24TSpineBase_10TLiveActor_
execute__17TNerveTobiPukuFlyCFP24TSpineBase_10TLiveActor_: # 0x8009af7c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r4
    stw     r30, 0x58(sp)
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009afc4
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1d4(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
branch_0x8009afc4:
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      checkCurAnmEnd__11TSpineEnemyCFi
    cmpwi   r3, 0x0
    beq-    branch_0x8009b008
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1c4(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009b008
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1d0(r12)
    mtlr    r12
    blrl
branch_0x8009b008:
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009b01c
    li      r0, 0x1
    b       branch_0x8009b020

branch_0x8009b01c:
    li      r0, 0x0
branch_0x8009b020:
    cmpwi   r0, 0x0
    bne-    branch_0x8009b0a8
    lbz     r0, R13Off_m0x6c0c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009b06c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTobiPukuLand@h
    stw     r0, R13Off_m0x6c08(r13)
    addi    r0, r3, __vvt__18TNerveTobiPukuLand@l
    lis     r4, __dt__18TNerveTobiPukuLandFv@ha
    stw     r0, R13Off_m0x6c08(r13)
    lis     r3, unk_803f12a4@h
    addi    r5, r3, unk_803f12a4@l
    addi    r4, r4, __dt__18TNerveTobiPukuLandFv@l
    addi    r3, r13, R13Off_m0x6c08
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c0c(r13)
branch_0x8009b06c:
    addi    r4, r13, R13Off_m0x6c08
    cmplwi  r4, 0x0
    beq-    branch_0x8009b0a0
    lwz     r5, 0x8(r31)
    lwz     r0, 0x4(r31)
    cmpw    r5, r0
    bge-    branch_0x8009b0a0
    lwz     r3, 0xc(r31)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r31)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r31)
branch_0x8009b0a0:
    li      r3, 0x1
    b       branch_0x8009b0f8

branch_0x8009b0a8:
    lwz     r5, 0xac(r30)
    addi    r4, sp, 0x30
    lwz     r0, 0xb0(r30)
    addi    r3, sp, 0x3c
    stw     r5, 0x48(sp)
    stw     r0, 0x4c(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x50(sp)
    lfs     f0, 0x4c(sp)
    stfs    f0, 0x1e4(r30)
    lwz     r5, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r5, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x38(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x3c(sp)
    li      r3, 0x0
    stfs    f0, 0x30(r30)
branch_0x8009b0f8:
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    addi    sp, sp, 0x60
    blr


.globl __dt__17TNerveTobiPukuFlyFv
__dt__17TNerveTobiPukuFlyFv: # 0x8009b110
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009b154
    lis     r3, __vvt__17TNerveTobiPukuFly@h
    addi    r0, r3, __vvt__17TNerveTobiPukuFly@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009b144
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009b144:
    extsh.  r0, r4
    ble-    branch_0x8009b154
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009b154:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl execute__22TNerveTobiPukuGenerateCFP24TSpineBase_10TLiveActor_
execute__22TNerveTobiPukuGenerateCFP24TSpineBase_10TLiveActor_: # 0x8009b16c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    stw     r30, 0x50(sp)
    stw     r29, 0x4c(sp)
    mr      r29, r4
    lwz     r0, 0x20(r4)
    lwz     r30, 0x0(r4)
    cmpwi   r0, 0x0
    bne-    branch_0x8009b1f4
    lwz     r0, 0xf0(r30)
    addi    r4, sp, 0x30
    addi    r3, sp, 0x3c
    ori     r0, r0, 0x10
    stw     r0, 0xf0(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, -0x65f4(r2)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(r30)
    lwz     r5, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r5, 0x30(sp)
    stw     r0, 0x34(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x38(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x3c(sp)
    mr      r3, r30
    stfs    f0, 0x30(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1d0(r12)
    mtlr    r12
    blrl
branch_0x8009b1f4:
    lfs     f1, 0x14(r30)
    lfs     f0, 0x1d4(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x14(r30)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x1b0(r30)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8009b2f8
    li      r0, 0x0
    stw     r0, 0x198(r30)
    li      r31, 0x1
    addi    r3, sp, 0x24
    stb     r31, 0x194(r30)
    addi    r4, r30, 0x1d0
    lwz     r5, 0x1d0(r30)
    lwz     r0, 0x1d4(r30)
    stw     r5, 0xac(r30)
    stw     r0, 0xb0(r30)
    lwz     r0, 0x1d8(r30)
    stw     r0, 0xb4(r30)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x24(sp)
    mr      r3, r30
    stfs    f0, 0x1b4(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1a0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xf0(r30)
    ori     r0, r0, 0x80
    stw     r0, 0xf0(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    lbz     r0, R13Off_m0x6c3c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009b2bc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuFly@h
    stw     r0, R13Off_m0x6c38(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuFly@l
    lis     r4, __dt__17TNerveTobiPukuFlyFv@ha
    stw     r0, R13Off_m0x6c38(r13)
    lis     r3, unk_803f125c@h
    addi    r5, r3, unk_803f125c@l
    addi    r4, r4, __dt__17TNerveTobiPukuFlyFv@l
    addi    r3, r13, R13Off_m0x6c38
    bl      __register_global_object
    stb     r31, R13Off_m0x6c3c(r13)
branch_0x8009b2bc:
    addi    r4, r13, R13Off_m0x6c38
    cmplwi  r4, 0x0
    beq-    branch_0x8009b2f0
    lwz     r5, 0x8(r29)
    lwz     r0, 0x4(r29)
    cmpw    r5, r0
    bge-    branch_0x8009b2f0
    lwz     r3, 0xc(r29)
    slwi    r0, r5, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r29)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r29)
branch_0x8009b2f0:
    li      r3, 0x1
    b       branch_0x8009b2fc

branch_0x8009b2f8:
    li      r3, 0x0
branch_0x8009b2fc:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    lwz     r30, 0x50(sp)
    mtlr    r0
    lwz     r29, 0x4c(sp)
    addi    sp, sp, 0x58
    blr


.globl __dt__22TNerveTobiPukuGenerateFv
__dt__22TNerveTobiPukuGenerateFv: # 0x8009b318
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr.     r31, r3
    beq-    branch_0x8009b35c
    lis     r3, __vvt__22TNerveTobiPukuGenerate@h
    addi    r0, r3, __vvt__22TNerveTobiPukuGenerate@l
    stw     r0, 0x0(r31)
    beq-    branch_0x8009b34c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    stw     r0, 0x0(r31)
branch_0x8009b34c:
    extsh.  r0, r4
    ble-    branch_0x8009b35c
    mr      r3, r31
    bl      __dl__FPv
branch_0x8009b35c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl getBasNameTable__8TMoePukuCFv
getBasNameTable__8TMoePukuCFv: # 0x8009b374
    lis     r3, moepuku_bastable@h
    addi    r3, r3, moepuku_bastable@l
    blr


.globl generateEffectColumWater__8TMoePukuFv
generateEffectColumWater__8TMoePukuFv: # 0x8009b380
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8009b4d8
    lis     r4, unk_8037c750@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_8037c750@l
    addi    r4, r31, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x8009b3cc
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x8009b3cc:
    lbz     r0, R13Off_m0x6c44(r13)
    extsb.  r0, r0
    bne-    branch_0x8009b410
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTobiPukuGenerate@h
    stw     r0, R13Off_m0x6c40(r13)
    addi    r0, r3, __vvt__22TNerveTobiPukuGenerate@l
    lis     r4, __dt__22TNerveTobiPukuGenerateFv@ha
    stw     r0, R13Off_m0x6c40(r13)
    lis     r3, unk_803f1250@h
    addi    r5, r3, unk_803f1250@l
    addi    r4, r4, __dt__22TNerveTobiPukuGenerateFv@l
    addi    r3, r13, R13Off_m0x6c40
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c44(r13)
branch_0x8009b410:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6c40
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009b458
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x296a
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009b488
    addi    r4, r31, 0x10
    li      r3, 0x296a
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8009b488

branch_0x8009b458:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x2809
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009b488
    addi    r4, r31, 0x10
    li      r3, 0x2809
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8009b488:
    lwz     r3, R13Off_m0x6070(r13)
    addi    r5, r31, 0x10
    li      r4, 0x1d4
    li      r6, 0x2
    li      r7, 0x0
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8009b4d8
    lfs     f0, 0x24(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x24(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x28(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x2c(r31)
    stfs    f0, 0x17c(r3)
branch_0x8009b4d8:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setJumpStartAnm__8TMoePukuFv
setJumpStartAnm__8TMoePukuFv: # 0x8009b4ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x8009b50c
    li      r0, 0x1
    b       branch_0x8009b510

branch_0x8009b50c:
    li      r0, 0x0
branch_0x8009b510:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b52c
    lwz     r12, 0x0(r3)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8009b52c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFallEndLandAnm__8TMoePukuFv
setFallEndLandAnm__8TMoePukuFv: # 0x8009b53c
    mflr    r0
    li      r4, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDeadAnm__8TMoePukuFv
setDeadAnm__8TMoePukuFv: # 0x8009b56c
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDownLandAnm__8TMoePukuFv
setDownLandAnm__8TMoePukuFv: # 0x8009b59c
    mflr    r0
    li      r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDownAirAnm__8TMoePukuFv
setDownAirAnm__8TMoePukuFv: # 0x8009b5cc
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFallAnm__8TMoePukuFv
setFallAnm__8TMoePukuFv: # 0x8009b5fc
    mflr    r0
    li      r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPichiAnm__8TMoePukuFv
setPichiAnm__8TMoePukuFv: # 0x8009b62c
    mflr    r0
    li      r4, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setAttackAnm__8TMoePukuFv
setAttackAnm__8TMoePukuFv: # 0x8009b65c
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setSwimAnm__8TMoePukuFv
setSwimAnm__8TMoePukuFv: # 0x8009b68c
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setJumpAnm__8TMoePukuFv
setJumpAnm__8TMoePukuFv: # 0x8009b6bc
    mflr    r0
    li      r4, 0x6
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isJumpStartBck__8TMoePukuFv
isJumpStartBck__8TMoePukuFv: # 0x8009b6ec
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x8009b700
    li      r0, 0x1
    b       branch_0x8009b704

branch_0x8009b700:
    li      r0, 0x0
branch_0x8009b704:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b714
    li      r3, 0x1
    blr

branch_0x8009b714:
    li      r3, 0x0
    blr


.globl isFallEndLandBck__8TMoePukuFv
isFallEndLandBck__8TMoePukuFv: # 0x8009b71c
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x8009b730
    li      r0, 0x1
    b       branch_0x8009b734

branch_0x8009b730:
    li      r0, 0x0
branch_0x8009b734:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b744
    li      r3, 0x1
    blr

branch_0x8009b744:
    li      r3, 0x0
    blr


.globl isAttackBck__8TMoePukuFv
isAttackBck__8TMoePukuFv: # 0x8009b74c
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8009b760
    li      r0, 0x1
    b       branch_0x8009b764

branch_0x8009b760:
    li      r0, 0x0
branch_0x8009b764:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b774
    li      r3, 0x1
    blr

branch_0x8009b774:
    li      r3, 0x0
    blr


.globl isDeadBck__8TMoePukuFv
isDeadBck__8TMoePukuFv: # 0x8009b77c
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8009b790
    li      r0, 0x1
    b       branch_0x8009b794

branch_0x8009b790:
    li      r0, 0x0
branch_0x8009b794:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b7a4
    li      r3, 0x1
    blr

branch_0x8009b7a4:
    li      r3, 0x0
    blr


.globl isJumpBck__8TMoePukuFv
isJumpBck__8TMoePukuFv: # 0x8009b7ac
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x8009b7c0
    li      r0, 0x1
    b       branch_0x8009b7c4

branch_0x8009b7c0:
    li      r0, 0x0
branch_0x8009b7c4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b7d4
    li      r3, 0x1
    blr

branch_0x8009b7d4:
    li      r3, 0x0
    blr


.globl isPichiEffect__8TMoePukuFv
isPichiEffect__8TMoePukuFv: # 0x8009b7dc
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x8
    bne-    branch_0x8009b7f0
    li      r0, 0x1
    b       branch_0x8009b7f4

branch_0x8009b7f0:
    li      r0, 0x0
branch_0x8009b7f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009b804
    li      r3, 0x1
    blr

branch_0x8009b804:
    li      r3, 0x0
    blr


.globl hitWater__8TMoePukuFv
hitWater__8TMoePukuFv: # 0x8009b80c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stw     r31, 0x54(sp)
    mr      r31, r3
    bl      hitWater__9TTobiPukuFv
    lwz     r3, 0x74(r31)
    addi    r5, r31, 0x10
    li      r4, 0x8b
    lwz     r3, 0x4(r3)
    li      r6, 0x0
    li      r7, 0x0
    lwz     r3, 0x58(r3)
    addi    r3, r3, 0x30
    lfs     f2, 0x2c(r3)
    lfs     f1, 0x1c(r3)
    lfs     f0, 0xc(r3)
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8009b888
    lfs     f0, -0x65f8(r2)
    stfs    f0, 0x154(r3)
    stfs    f0, 0x158(r3)
    stfs    f0, 0x15c(r3)
    stfs    f0, 0x174(r3)
    stfs    f0, 0x178(r3)
    stfs    f0, 0x17c(r3)
branch_0x8009b888:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x28c5
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009b8b8
    addi    r4, r31, 0x10
    li      r3, 0x28c5
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8009b8b8:
    lwz     r0, 0x5c(sp)
    lwz     r31, 0x54(sp)
    addi    sp, sp, 0x58
    mtlr    r0
    blr


.globl calcRootMatrix__8TMoePukuFv
calcRootMatrix__8TMoePukuFv: # 0x8009b8cc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x120(sp)
    stfd    f31, 0x118(sp)
    stfd    f30, 0x110(sp)
    stfd    f29, 0x108(sp)
    stfd    f28, 0x100(sp)
    stfd    f27, 0xf8(sp)
    stfd    f26, 0xf0(sp)
    stw     r31, 0xec(sp)
    mr      r31, r3
    stw     r31, R13Off_m0x6c48(r13)
    bl      calcRootMatrix__11TSpineEnemyFv
    lfs     f1, -0x6654(r2)
    lfs     f0, 0x30(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8009b99c
    mr      r3, r31
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8009b9f4
    lfs     f26, 0x30(r31)
    mr      r3, r31
    lfs     f1, -0x65f0(r2)
    lfs     f0, -0x7ec8(r13)
    fmuls   f1, f1, f26
    lfs     f2, 0x14(r31)
    lfs     f27, 0x38(r31)
    lfs     f28, 0x34(r31)
    fdivs   f0, f1, f0
    lfs     f29, 0x18(r31)
    lfs     f31, 0x10(r31)
    fadds   f30, f2, f0
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x6610(r2)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f26
    fmuls   f2, f0, f28
    fmuls   f0, f0, f27
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0xe0(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0xd8(sp)
    lwz     r4, 0xe4(sp)
    stfd    f0, 0xd0(sp)
    lwz     r5, 0xdc(sp)
    lwz     r6, 0xd4(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
branch_0x8009b99c:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009b9f4
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1a0
    lwz     r3, 0x4(r3)
    li      r4, 0x177
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    lfs     f2, 0x5c(r3)
    lfs     f1, 0x4c(r3)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8009b9f4:
    lbz     r0, R13Off_m0x6c3c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009ba38
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuFly@h
    stw     r0, R13Off_m0x6c38(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuFly@l
    lis     r4, __dt__17TNerveTobiPukuFlyFv@ha
    stw     r0, R13Off_m0x6c38(r13)
    lis     r3, unk_803f125c@h
    addi    r5, r3, unk_803f125c@l
    addi    r4, r4, __dt__17TNerveTobiPukuFlyFv@l
    addi    r3, r13, R13Off_m0x6c38
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c3c(r13)
branch_0x8009ba38:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6c38
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009bae8
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x20c3
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009ba7c
    addi    r4, r31, 0x10
    li      r3, 0x20c3
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8009ba7c:
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x1d1
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x1d2
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x1f8
    lwz     r5, 0x4(r5)
    li      r6, 0x3
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x30
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
branch_0x8009bae8:
    lwz     r0, 0x124(sp)
    lfd     f31, 0x118(sp)
    lfd     f30, 0x110(sp)
    mtlr    r0
    lfd     f29, 0x108(sp)
    lfd     f28, 0x100(sp)
    lfd     f27, 0xf8(sp)
    lfd     f26, 0xf0(sp)
    lwz     r31, 0xec(sp)
    addi    sp, sp, 0x120
    blr


.globl reset__9TPukuPukuFv
reset__9TPukuPukuFv: # 0x8009bb14
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    stw     r30, 0x30(sp)
    mr      r30, r3
    stw     r30, R13Off_m0x6c48(r13)
    bl      reset__12TWalkerEnemyFv
    lbz     r0, R13Off_m0x6c44(r13)
    extsb.  r0, r0
    bne-    branch_0x8009bb74
    addi    r3, r13, R13Off_m0x6c40
    bl      __ct__24TNerveBase_10TLiveActor_Fv
    lis     r3, __vvt__22TNerveTobiPukuGenerate@h
    addi    r0, r3, __vvt__22TNerveTobiPukuGenerate@l
    lis     r4, __dt__22TNerveTobiPukuGenerateFv@ha
    stw     r0, R13Off_m0x6c40(r13)
    lis     r3, unk_803f1250@h
    addi    r5, r3, unk_803f1250@l
    addi    r4, r4, __dt__22TNerveTobiPukuGenerateFv@l
    addi    r3, r13, R13Off_m0x6c40
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c44(r13)
branch_0x8009bb74:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6c40
    stw     r3, 0x8(r4)
    li      r31, 0x1
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    stb     r31, 0x1ad(r30)
    stb     r3, 0x194(r30)
    lwz     r3, 0x10(r30)
    lwz     r0, 0x14(r30)
    stw     r3, 0x1c4(r30)
    stw     r0, 0x1c8(r30)
    lwz     r0, 0x18(r30)
    stw     r0, 0x1cc(r30)
    lwz     r3, 0x1c4(r30)
    lwz     r0, 0x1c8(r30)
    stw     r3, 0x1b8(r30)
    stw     r0, 0x1bc(r30)
    lwz     r0, 0x1cc(r30)
    stw     r0, 0x1c0(r30)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1e0(r30)
    lbz     r0, R13Off_m0x6bec(r13)
    extsb.  r0, r0
    bne-    branch_0x8009bc18
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTobiPukuSwimWander@h
    stw     r0, R13Off_m0x6be8(r13)
    addi    r0, r3, __vvt__24TNerveTobiPukuSwimWander@l
    lis     r4, __dt__24TNerveTobiPukuSwimWanderFv@ha
    stw     r0, R13Off_m0x6be8(r13)
    lis     r3, unk_803f12d4@h
    addi    r5, r3, unk_803f12d4@l
    addi    r4, r4, __dt__24TNerveTobiPukuSwimWanderFv@l
    addi    r3, r13, R13Off_m0x6be8
    bl      __register_global_object
    stb     r31, R13Off_m0x6bec(r13)
branch_0x8009bc18:
    lwz     r4, 0x8c(r30)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6be8
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl init__9TPukuPukuFP12TLiveManager
init__9TPukuPukuFP12TLiveManager: # 0x8009bc50
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000012@h
    addi    r0, r3, unk_10000012@l
    stw     r0, 0x4c(r31)
    li      r0, 0x31
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r31)
    lis     r3, TobiPukuRollCallback__FP7J3DNodei@ha
    addi    r5, r3, TobiPukuRollCallback__FP7J3DNodei@l
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lbz     r0, R13Off_m0x6bec(r13)
    extsb.  r0, r0
    bne-    branch_0x8009bcec
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTobiPukuSwimWander@h
    stw     r0, R13Off_m0x6be8(r13)
    addi    r0, r3, __vvt__24TNerveTobiPukuSwimWander@l
    lis     r4, __dt__24TNerveTobiPukuSwimWanderFv@ha
    stw     r0, R13Off_m0x6be8(r13)
    lis     r3, unk_803f12d4@h
    addi    r5, r3, unk_803f12d4@l
    addi    r4, r4, __dt__24TNerveTobiPukuSwimWanderFv@l
    addi    r3, r13, R13Off_m0x6be8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bec(r13)
branch_0x8009bcec:
    lwz     r4, 0x8c(r31)
    li      r3, 0x0
    addi    r0, r13, R13Off_m0x6be8
    stw     r3, 0x8(r4)
    stw     r3, 0x20(r4)
    stw     r0, 0x14(r4)
    stw     r0, 0x18(r4)
    stw     r3, 0x1c(r4)
    stw     r3, R13Off_m0x6c48(r13)
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl load__9TPukuPukuFR20JSUMemoryInputStream
load__9TPukuPukuFR20JSUMemoryInputStream: # 0x8009bd24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stb     r0, 0x1ac(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9TPukuPukuFPCc
__ct__9TPukuPukuFPCc: # 0x8009bd6c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9TTobiPukuFPCc
    lis     r3, __vvt__9TPukuPuku@h
    addi    r3, r3, __vvt__9TPukuPuku@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    addi    r3, r31, 0x0
    stw     r0, 0x20(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__9TTobiPukuFv
__dt__9TTobiPukuFv: # 0x8009bdb0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009be30
    lis     r3, __vvt__9TTobiPuku@h
    addi    r3, r3, __vvt__9TTobiPuku@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009be20
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009be20
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8009be20:
    extsh.  r0, r31
    ble-    branch_0x8009be30
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009be30:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl getBasNameTable__9TTobiPukuCFv
getBasNameTable__9TTobiPukuCFv: # 0x8009be4c
    lis     r3, pukupuku_bastable@h
    addi    r3, r3, pukupuku_bastable@l
    blr


.globl scalingChangeActor__9TTobiPukuFv
scalingChangeActor__9TTobiPukuFv: # 0x8009be58
    lwz     r4, 0x178(r3)
    lfs     f2, -0x65ec(r2)
    lfs     f1, 0x140(r4)
    lfs     f0, -0x6638(r2)
    fadds   f1, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x8009be7c
    fmr     f1, f0
    b       branch_0x8009be8c

branch_0x8009be7c:
    lfs     f0, -0x6654(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8009be8c
    fmr     f1, f0
branch_0x8009be8c:
    stfs    f1, 0x148(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x140(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x2c(r4)
    lwz     r4, 0x178(r3)
    stfs    f1, 0x24(r4)
    lwz     r4, 0x178(r3)
    lfs     f1, -0x65e8(r2)
    lfsu    f0, 0x144(r4)
    lfs     f2, -0x7efc(r13)
    fadds   f1, f1, f0
    fcmpo   cr0, f1, f2
    ble-    branch_0x8009becc
    fmr     f1, f2
    b       branch_0x8009bedc

branch_0x8009becc:
    lfs     f0, -0x6654(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8009bedc
    fmr     f1, f0
branch_0x8009bedc:
    stfs    f1, 0x0(r4)
    lwz     r3, 0x178(r3)
    stfs    f1, 0x28(r3)
    blr


.globl initAttacker__9TTobiPukuFP9THitActor
initAttacker__9TTobiPukuFP9THitActor: # 0x8009beec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r5, 0x30(r4)
    lwz     r0, 0x34(r4)
    stw     r5, 0x30(r3)
    stw     r0, 0x34(r3)
    lwz     r0, 0x38(r4)
    stw     r0, 0x38(r3)
    lbz     r0, R13Off_m0x6c3c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009bf5c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuFly@h
    stw     r0, R13Off_m0x6c38(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuFly@l
    lis     r4, __dt__17TNerveTobiPukuFlyFv@ha
    stw     r0, R13Off_m0x6c38(r13)
    lis     r3, unk_803f125c@h
    addi    r5, r3, unk_803f125c@l
    addi    r4, r4, __dt__17TNerveTobiPukuFlyFv@l
    addi    r3, r13, R13Off_m0x6c38
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c3c(r13)
branch_0x8009bf5c:
    addi    r6, r13, R13Off_m0x6c38
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8009bfb4
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8009bfa8
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8009bfa8
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8009bfa8:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8009bfb4:
    li      r0, 0x1
    stb     r0, 0x184(r31)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl changeOut__9TTobiPukuFv
changeOut__9TTobiPukuFv: # 0x8009bfd0
    mflr    r0
    li      r4, 0xcd
    stw     r0, 0x4(sp)
    li      r6, 0x0
    li      r7, 0x0
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    stw     r30, 0x18(sp)
    mr      r30, r3
    addi    r5, r30, 0x10
    lwz     r0, 0xf0(r3)
    rlwinm  r0, r0, 0, 31, 29
    stw     r0, 0xf0(r3)
    lwz     r8, 0x178(r3)
    lwz     r3, 0x10(r8)
    lwz     r0, 0x14(r8)
    stw     r3, 0x10(r30)
    stw     r0, 0x14(r30)
    lwz     r0, 0x18(r8)
    stw     r0, 0x18(r30)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    lwz     r31, 0x74(r30)
    bl      SMSGetAnmFrameRate__Fv
    addi    r3, r31, 0x0
    li      r4, 0x0
    bl      setFrameRate__6MActorFfi
    lwz     r3, 0x178(r30)
    lwz     r12, 0x0(r3)
    lwz     r12, 0xe4(r12)
    mtlr    r12
    blrl
    li      r0, 0x0
    stw     r0, 0x178(r30)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    lwz     r30, 0x18(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl genEventCoin__9TTobiPukuFv
genEventCoin__9TTobiPukuFv: # 0x8009c070
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1c0(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl forceKill__9TTobiPukuFv
forceKill__9TTobiPukuFv: # 0x8009c09c
    mflr    r0
    lis     r4, unk_803f1250@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    addi    r31, r4, unk_803f1250@l
    stw     r30, 0x48(sp)
    addi    r30, r3, 0x0
    lbz     r0, R13Off_m0x6c14(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c0fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    stw     r0, R13Off_m0x6c10(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    lis     r3, __dt__17TNerveTobiPukuDieFv@ha
    stw     r0, R13Off_m0x6c10(r13)
    addi    r4, r3, __dt__17TNerveTobiPukuDieFv@l
    addi    r3, r13, R13Off_m0x6c10
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c14(r13)
branch_0x8009c0fc:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6c10
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009c1dc
    lbz     r0, R13Off_m0x6bfc(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c150
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTobiPukuPrepareFly@h
    stw     r0, R13Off_m0x6bf8(r13)
    addi    r0, r3, __vvt__24TNerveTobiPukuPrepareFly@l
    lis     r3, __dt__24TNerveTobiPukuPrepareFlyFv@ha
    stw     r0, R13Off_m0x6bf8(r13)
    addi    r4, r3, __dt__24TNerveTobiPukuPrepareFlyFv@l
    addi    r3, r13, R13Off_m0x6bf8
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bfc(r13)
branch_0x8009c150:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6bf8
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009c1dc
    lbz     r0, R13Off_m0x6c3c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c1a4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuFly@h
    stw     r0, R13Off_m0x6c38(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuFly@l
    lis     r3, __dt__17TNerveTobiPukuFlyFv@ha
    stw     r0, R13Off_m0x6c38(r13)
    addi    r4, r3, __dt__17TNerveTobiPukuFlyFv@l
    addi    r3, r13, R13Off_m0x6c38
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c3c(r13)
branch_0x8009c1a4:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6c38
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009c1dc
    lwz     r0, 0xf0(r30)
    rlwinm. r0, r0, 0, 27, 27
    bne-    branch_0x8009c1dc
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0x1bc(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
branch_0x8009c1dc:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl kill__9TTobiPukuFv
kill__9TTobiPukuFv: # 0x8009c1f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r3
    stw     r30, 0x40(sp)
    lwz     r0, 0xf0(r3)
    clrlwi. r0, r0, 31
    bne-    branch_0x8009c358
    lwz     r3, 0xc4(r31)
    lhz     r0, 0x4(r3)
    rlwinm. r0, r0, 0, 27, 27
    beq-    branch_0x8009c230
    li      r0, 0x1
    b       branch_0x8009c234

branch_0x8009c230:
    li      r0, 0x0
branch_0x8009c234:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009c240
    b       branch_0x8009c358

branch_0x8009c240:
    li      r30, 0x1
    stb     r30, 0x13c(r31)
    lbz     r0, R13Off_m0x6c14(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c288
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    stw     r0, R13Off_m0x6c10(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    lis     r4, __dt__17TNerveTobiPukuDieFv@ha
    stw     r0, R13Off_m0x6c10(r13)
    lis     r3, unk_803f1298@h
    addi    r5, r3, unk_803f1298@l
    addi    r4, r4, __dt__17TNerveTobiPukuDieFv@l
    addi    r3, r13, R13Off_m0x6c10
    bl      __register_global_object
    stb     r30, R13Off_m0x6c14(r13)
branch_0x8009c288:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6c10
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009c2a8
    lbz     r0, 0x1ad(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8009c358
branch_0x8009c2a8:
    li      r30, 0x1
    stb     r30, 0x1ad(r31)
    li      r0, 0x0
    lwz     r3, 0x8c(r31)
    stw     r0, 0x8(r3)
    lbz     r0, R13Off_m0x6c14(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c2fc
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__17TNerveTobiPukuDie@h
    stw     r0, R13Off_m0x6c10(r13)
    addi    r0, r3, __vvt__17TNerveTobiPukuDie@l
    lis     r4, __dt__17TNerveTobiPukuDieFv@ha
    stw     r0, R13Off_m0x6c10(r13)
    lis     r3, unk_803f1298@h
    addi    r5, r3, unk_803f1298@l
    addi    r4, r4, __dt__17TNerveTobiPukuDieFv@l
    addi    r3, r13, R13Off_m0x6c10
    bl      __register_global_object
    stb     r30, R13Off_m0x6c14(r13)
branch_0x8009c2fc:
    lwz     r4, 0x8c(r31)
    addi    r3, r13, R13Off_m0x6c10
    lwz     r0, 0x14(r4)
    cmplwi  r0, 0x0
    beq-    branch_0x8009c314
    stw     r0, 0x1c(r4)
branch_0x8009c314:
    li      r0, 0x0
    stw     r0, 0x20(r4)
    stw     r3, 0x14(r4)
    lwz     r5, 0x8c(r31)
    lwz     r4, 0x18(r5)
    cmplwi  r4, 0x0
    beq-    branch_0x8009c358
    lwz     r6, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r6, r0
    bge-    branch_0x8009c358
    lwz     r3, 0xc(r5)
    slwi    r0, r6, 2
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8009c358:
    lwz     r0, 0x4c(sp)
    lwz     r31, 0x44(sp)
    lwz     r30, 0x40(sp)
    mtlr    r0
    addi    sp, sp, 0x48
    blr


.globl hitWater__9TTobiPukuFv
hitWater__9TTobiPukuFv: # 0x8009c370
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    mr      r31, r3
    lwz     r3, 0xac(r3)
    lwz     r0, 0xb0(r31)
    lwz     r4, R13Off_m0x60b4(r13)
    stw     r3, 0x44(sp)
    stw     r0, 0x48(sp)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x4c(sp)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x0(r4)
    lfs     f3, 0x14(r31)
    lfs     f2, 0x4(r4)
    fsubs   f0, f1, f0
    lfs     f4, 0x18(r31)
    lfs     f1, 0x8(r4)
    fsubs   f2, f3, f2
    stfs    f0, 0x38(sp)
    fsubs   f0, f4, f1
    stfs    f2, 0x3c(sp)
    stfs    f0, 0x40(sp)
    lfs     f2, -0x6654(r2)
    lfs     f1, 0x38(sp)
    fcmpu   cr0, f2, f1
    bne-    branch_0x8009c404
    lfs     f0, 0x3c(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8009c404
    lfs     f0, 0x40(sp)
    fcmpu   cr0, f2, f0
    bne-    branch_0x8009c404
    lfs     f0, -0x664c(r2)
    fadds   f0, f1, f0
    stfs    f0, 0x38(sp)
branch_0x8009c404:
    addi    r3, sp, 0x38
    addi    r4, r3, 0x0
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r3, 0x19c(r31)
    lis     r0, 0x4330
    lfs     f0, 0x38(sp)
    lfs     f2, 0x38c(r3)
    lfs     f1, -0x65f8(r2)
    fmuls   f0, f0, f2
    stfs    f0, 0x44(sp)
    lfs     f0, 0x3c(sp)
    fmuls   f0, f0, f2
    fmuls   f0, f1, f0
    stfs    f0, 0x48(sp)
    lfs     f0, 0x40(sp)
    fmuls   f0, f0, f2
    stfs    f0, 0x4c(sp)
    lwz     r4, 0x44(sp)
    lwz     r3, 0x48(sp)
    stw     r4, 0xac(r31)
    stw     r3, 0xb0(r31)
    lwz     r3, 0x4c(sp)
    stw     r3, 0xb4(r31)
    lwz     r4, 0x44(sp)
    lwz     r3, 0x48(sp)
    stw     r4, 0x1d0(r31)
    stw     r3, 0x1d4(r31)
    lwz     r3, 0x4c(sp)
    stw     r3, 0x1d8(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1b0(r31)
    lwz     r3, R13Off_m0x60ac(r13)
    lfd     f2, -0x6630(r2)
    lha     r3, 0x0(r3)
    lfs     f3, -0x65e4(r2)
    xoris   r3, r3, 0x8000
    lfs     f0, -0x6648(r2)
    stw     r3, 0x54(sp)
    stw     r0, 0x50(sp)
    lfd     f1, 0x50(sp)
    fsubs   f1, f1, f2
    fnmsubs  f0, f3, f1, f0
    stfs    f0, 0x34(r31)
    lwz     r0, 0x64(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x60
    mtlr    r0
    blr


.globl getGravityY__9TTobiPukuCFv
getGravityY__9TTobiPukuCFv: # 0x8009c4c4
    lbz     r0, 0x194(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8009c4dc
    lwz     r3, 0x19c(r3)
    lfs     f1, 0x378(r3)
    blr

branch_0x8009c4dc:
    lfs     f1, 0xcc(r3)
    blr


.globl attackToMario__9TTobiPukuFv
attackToMario__9TTobiPukuFv: # 0x8009c4e4
    mflr    r0
    li      r4, 0xe
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    bl      SMS_SendMessageToMario__FP9THitActorUl
    lbz     r0, R13Off_m0x6c34(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c544
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTobiPukuAttack@h
    stw     r0, R13Off_m0x6c30(r13)
    addi    r0, r3, __vvt__20TNerveTobiPukuAttack@l
    lis     r4, __dt__20TNerveTobiPukuAttackFv@ha
    stw     r0, R13Off_m0x6c30(r13)
    lis     r3, unk_803f1268@h
    addi    r5, r3, unk_803f1268@l
    addi    r4, r4, __dt__20TNerveTobiPukuAttackFv@l
    addi    r3, r13, R13Off_m0x6c30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c34(r13)
branch_0x8009c544:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6c30
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009c64c
    lbz     r0, 0x1ae(r31)
    cmplwi  r0, 0x0
    bne-    branch_0x8009c64c
    lwz     r3, R13Off_m0x6094(r13)
    lwz     r0, 0x0(r3)
    rlwinm. r0, r0, 0, 14, 14
    beq-    branch_0x8009c57c
    li      r0, 0x1
    b       branch_0x8009c580

branch_0x8009c57c:
    li      r0, 0x0
branch_0x8009c580:
    clrlwi. r0, r0, 24
    bne-    branch_0x8009c64c
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x28(sp)
    stfs    f0, 0x2c(sp)
    stfs    f0, 0x30(sp)
    lwz     r3, 0x28(sp)
    lwz     r0, 0x2c(sp)
    stw     r3, 0x1d0(r31)
    stw     r0, 0x1d4(r31)
    lwz     r0, 0x30(sp)
    stw     r0, 0x1d8(r31)
    lbz     r0, R13Off_m0x6c34(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c5f4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__20TNerveTobiPukuAttack@h
    stw     r0, R13Off_m0x6c30(r13)
    addi    r0, r3, __vvt__20TNerveTobiPukuAttack@l
    lis     r4, __dt__20TNerveTobiPukuAttackFv@ha
    stw     r0, R13Off_m0x6c30(r13)
    lis     r3, unk_803f1268@h
    addi    r5, r3, unk_803f1268@l
    addi    r4, r4, __dt__20TNerveTobiPukuAttackFv@l
    addi    r3, r13, R13Off_m0x6c30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c34(r13)
branch_0x8009c5f4:
    addi    r6, r13, R13Off_m0x6c30
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8009c64c
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8009c640
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8009c640
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8009c640:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8009c64c:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl generateEffectColumWater__9TTobiPukuFv
generateEffectColumWater__9TTobiPukuFv: # 0x8009c660
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8009c768
    lis     r4, unk_8037c750@ha
    lwz     r3, R13Off_m0x70b0(r13)
    addi    r5, r4, unk_8037c750@l
    addi    r4, r31, 0x10
    li      r6, 0x0
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x8009c6ac
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x8009c6ac:
    lbz     r0, R13Off_m0x6c44(r13)
    extsb.  r0, r0
    bne-    branch_0x8009c6f0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTobiPukuGenerate@h
    stw     r0, R13Off_m0x6c40(r13)
    addi    r0, r3, __vvt__22TNerveTobiPukuGenerate@l
    lis     r4, __dt__22TNerveTobiPukuGenerateFv@ha
    stw     r0, R13Off_m0x6c40(r13)
    lis     r3, unk_803f1250@h
    addi    r5, r3, unk_803f1250@l
    addi    r4, r4, __dt__22TNerveTobiPukuGenerateFv@l
    addi    r3, r13, R13Off_m0x6c40
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c44(r13)
branch_0x8009c6f0:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6c40
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009c738
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x286d
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009c768
    addi    r4, r31, 0x10
    li      r3, 0x286d
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
    b       branch_0x8009c768

branch_0x8009c738:
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x286c
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009c768
    addi    r4, r31, 0x10
    li      r3, 0x286c
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8009c768:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl isReachedToGoalXZ__9TTobiPukuFv
isReachedToGoalXZ__9TTobiPukuFv: # 0x8009c77c
    mflr    r0
    addi    r4, r3, 0x104
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    lwz     r5, 0x104(r3)
    cmplwi  r5, 0x0
    beq-    branch_0x8009c7a0
    addi    r5, r5, 0x10
    b       branch_0x8009c7a4

branch_0x8009c7a0:
    addi    r5, r4, 0x4
branch_0x8009c7a4:
    lwz     r4, 0x0(r5)
    lwz     r0, 0x4(r5)
    stw     r4, 0x14(sp)
    stw     r0, 0x18(sp)
    lwz     r0, 0x8(r5)
    stw     r0, 0x1c(sp)
    lfs     f1, 0x14(sp)
    lfs     f0, 0x10(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x18(sp)
    lfs     f0, 0x14(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x18(sp)
    lfs     f1, 0x1c(sp)
    lfs     f0, 0x18(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(sp)
    lfs     f1, -0x6654(r2)
    stfs    f1, 0x18(sp)
    lfs     f0, 0x14(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8009c814
    lfs     f0, 0x1c(sp)
    fcmpu   cr0, f1, f0
    bne-    branch_0x8009c814
    li      r3, 0x1
    b       branch_0x8009c834

branch_0x8009c814:
    addi    r3, sp, 0x14
    bl      MsVECMag2__FP3Vec
    lfs     f0, -0x65e0(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x8009c830
    li      r3, 0x1
    b       branch_0x8009c834

branch_0x8009c830:
    li      r3, 0x0
branch_0x8009c834:
    lwz     r0, 0x24(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl swimEffect__9TTobiPukuFv
swimEffect__9TTobiPukuFv: # 0x8009c844
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 29, 29
    bne-    branch_0x8009c8e0
    lwz     r5, 0x74(r31)
    mr      r7, r31
    lwz     r3, R13Off_m0x6070(r13)
    li      r4, 0x178
    lwz     r5, 0x4(r5)
    li      r6, 0x1
    lwz     r5, 0x58(r5)
    addi    r5, r5, 0x120
    bl      emitAndBindToMtxPtr__21TMarioParticleManagerFlPA4_fUcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x8009c8e0
    lfs     f1, 0xc8(r31)
    lis     r4, unk_51eb851f@ha
    lfs     f0, 0x14(r31)
    addi    r4, r4, unk_51eb851f@l
    fsubs   f0, f1, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r0, 0x2c(sp)
    extsh   r0, r0
    slwi    r0, r0, 4
    mulhw   r0, r4, r0
    srawi   r0, r0, 5
    srwi    r4, r0, 31
    add     r4, r0, r4
    addi    r0, r4, 0x14
    extsh   r0, r0
    cmpwi   r0, 0xc8
    ble-    branch_0x8009c8dc
    li      r0, 0xc8
branch_0x8009c8dc:
    sth     r0, 0x1ee(r3)
branch_0x8009c8e0:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl walkBehavior__9TTobiPukuFif
walkBehavior__9TTobiPukuFif: # 0x8009c8f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    mr      r31, r3
    bl      walkBehavior__12TWalkerEnemyFif
    lwz     r4, 0x8c(r31)
    lis     r5, 0x4330
    lfd     f1, -0x6630(r2)
    addi    r3, sp, 0x34
    lwz     r0, 0x20(r4)
    lfs     f2, -0x65f8(r2)
    addi    r4, sp, 0x40
    xoris   r0, r0, 0x8000
    lfs     f3, -0x6610(r2)
    stw     r0, 0x5c(sp)
    lwz     r0, R13Off_m0x5eac(r13)
    stw     r5, 0x58(sp)
    lwz     r6, R13Off_m0x5ea8(r13)
    lfd     f0, 0x58(sp)
    lfs     f4, -0x6624(r2)
    fsubs   f1, f0, f1
    lfs     f0, 0x1e0(r31)
    lfs     f5, 0x14(r31)
    fmuls   f1, f2, f1
    fmuls   f1, f3, f1
    fctiwz  f1, f1
    stfd    f1, 0x50(sp)
    lwz     r5, 0x54(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    fmadds  f0, f4, f1, f0
    stfs    f0, 0x14(r31)
    lwz     r5, 0x94(r31)
    lwz     r0, 0x98(r31)
    stw     r5, 0x40(sp)
    stw     r0, 0x44(sp)
    lwz     r0, 0x9c(r31)
    stw     r0, 0x48(sp)
    lfs     f0, 0x14(r31)
    fsubs   f0, f5, f0
    stfs    f0, 0x44(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x34(sp)
    stfs    f0, 0x30(r31)
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl behaveToWater__9TTobiPukuFP9THitActor
behaveToWater__9TTobiPukuFP9THitActor: # 0x8009c9c4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stw     r31, 0x3c(sp)
    addi    r31, r3, 0x0
    lbz     r0, R13Off_m0x6c2c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009ca1c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTobiPukuHitWater@h
    stw     r0, R13Off_m0x6c28(r13)
    addi    r0, r3, __vvt__22TNerveTobiPukuHitWater@l
    lis     r4, __dt__22TNerveTobiPukuHitWaterFv@ha
    stw     r0, R13Off_m0x6c28(r13)
    lis     r3, unk_803f1274@h
    addi    r5, r3, unk_803f1274@l
    addi    r4, r4, __dt__22TNerveTobiPukuHitWaterFv@l
    addi    r3, r13, R13Off_m0x6c28
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c2c(r13)
branch_0x8009ca1c:
    lwz     r3, 0x8c(r31)
    addi    r0, r13, R13Off_m0x6c28
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009cafc
    lwz     r3, R13Off_m0x6044(r13)
    li      r4, 0x282b
    bl      gateCheck__6MSoundFUl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009ca60
    addi    r4, r31, 0x10
    li      r3, 0x282b
    li      r5, 0x0
    li      r6, 0x0
    li      r7, 0x0
    li      r8, 0x4
    bl      startSoundActor__Q214MSoundSESystem8MSoundSEFUlPC3VecUlPP8JAISoundUlUc
branch_0x8009ca60:
    lbz     r0, R13Off_m0x6c2c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009caa4
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTobiPukuHitWater@h
    stw     r0, R13Off_m0x6c28(r13)
    addi    r0, r3, __vvt__22TNerveTobiPukuHitWater@l
    lis     r4, __dt__22TNerveTobiPukuHitWaterFv@ha
    stw     r0, R13Off_m0x6c28(r13)
    lis     r3, unk_803f1274@h
    addi    r5, r3, unk_803f1274@l
    addi    r4, r4, __dt__22TNerveTobiPukuHitWaterFv@l
    addi    r3, r13, R13Off_m0x6c28
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c2c(r13)
branch_0x8009caa4:
    addi    r6, r13, R13Off_m0x6c28
    lwz     r5, 0x8c(r31)
    cmplwi  r6, 0x0
    beq-    branch_0x8009cafc
    lwz     r0, 0x14(r5)
    cmplwi  r0, 0x0
    beq-    branch_0x8009caf0
    stw     r0, 0x1c(r5)
    lwz     r3, 0x8(r5)
    lwz     r0, 0x4(r5)
    cmpw    r3, r0
    bge-    branch_0x8009caf0
    lwz     r4, 0x14(r5)
    slwi    r0, r3, 2
    lwz     r3, 0xc(r5)
    stwx    r4, r3, r0
    lwz     r3, 0x8(r5)
    addi    r0, r3, 0x1
    stw     r0, 0x8(r5)
branch_0x8009caf0:
    li      r0, 0x0
    stw     r0, 0x20(r5)
    stw     r6, 0x14(r5)
branch_0x8009cafc:
    lwz     r0, 0x44(sp)
    lwz     r31, 0x3c(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl setJumpStartAnm__9TTobiPukuFv
setJumpStartAnm__9TTobiPukuFv: # 0x8009cb10
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x8009cb30
    li      r0, 0x1
    b       branch_0x8009cb34

branch_0x8009cb30:
    li      r0, 0x0
branch_0x8009cb34:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009cb50
    lwz     r12, 0x0(r3)
    li      r4, 0x7
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
branch_0x8009cb50:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFallEndLandAnm__9TTobiPukuFv
setFallEndLandAnm__9TTobiPukuFv: # 0x8009cb60
    mflr    r0
    li      r4, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDeadAnm__9TTobiPukuFv
setDeadAnm__9TTobiPukuFv: # 0x8009cb90
    mflr    r0
    li      r4, 0x1
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDownLandAnm__9TTobiPukuFv
setDownLandAnm__9TTobiPukuFv: # 0x8009cbc0
    mflr    r0
    li      r4, 0x3
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setDownAirAnm__9TTobiPukuFv
setDownAirAnm__9TTobiPukuFv: # 0x8009cbf0
    mflr    r0
    li      r4, 0x2
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setFallAnm__9TTobiPukuFv
setFallAnm__9TTobiPukuFv: # 0x8009cc20
    mflr    r0
    li      r4, 0x4
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setPichiAnm__9TTobiPukuFv
setPichiAnm__9TTobiPukuFv: # 0x8009cc50
    mflr    r0
    li      r4, 0x8
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setAttackAnm__9TTobiPukuFv
setAttackAnm__9TTobiPukuFv: # 0x8009cc80
    mflr    r0
    li      r4, 0x0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setSwimAnm__9TTobiPukuFv
setSwimAnm__9TTobiPukuFv: # 0x8009ccb0
    mflr    r0
    li      r4, 0x9
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl setJumpAnm__9TTobiPukuFv
setJumpAnm__9TTobiPukuFv: # 0x8009cce0
    mflr    r0
    li      r4, 0x6
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x190(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl isJumpStartBck__9TTobiPukuFv
isJumpStartBck__9TTobiPukuFv: # 0x8009cd10
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x7
    bne-    branch_0x8009cd24
    li      r0, 0x1
    b       branch_0x8009cd28

branch_0x8009cd24:
    li      r0, 0x0
branch_0x8009cd28:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009cd38
    li      r3, 0x1
    blr

branch_0x8009cd38:
    li      r3, 0x0
    blr


.globl isFallEndLandBck__9TTobiPukuFv
isFallEndLandBck__9TTobiPukuFv: # 0x8009cd40
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x5
    bne-    branch_0x8009cd54
    li      r0, 0x1
    b       branch_0x8009cd58

branch_0x8009cd54:
    li      r0, 0x0
branch_0x8009cd58:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009cd68
    li      r3, 0x1
    blr

branch_0x8009cd68:
    li      r3, 0x0
    blr


.globl isAttackBck__9TTobiPukuFv
isAttackBck__9TTobiPukuFv: # 0x8009cd70
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x0
    bne-    branch_0x8009cd84
    li      r0, 0x1
    b       branch_0x8009cd88

branch_0x8009cd84:
    li      r0, 0x0
branch_0x8009cd88:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009cd98
    li      r3, 0x1
    blr

branch_0x8009cd98:
    li      r3, 0x0
    blr


.globl isDeadBck__9TTobiPukuFv
isDeadBck__9TTobiPukuFv: # 0x8009cda0
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x1
    bne-    branch_0x8009cdb4
    li      r0, 0x1
    b       branch_0x8009cdb8

branch_0x8009cdb4:
    li      r0, 0x0
branch_0x8009cdb8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009cdc8
    li      r3, 0x1
    blr

branch_0x8009cdc8:
    li      r3, 0x0
    blr


.globl isJumpBck__9TTobiPukuFv
isJumpBck__9TTobiPukuFv: # 0x8009cdd0
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x6
    bne-    branch_0x8009cde4
    li      r0, 0x1
    b       branch_0x8009cde8

branch_0x8009cde4:
    li      r0, 0x0
branch_0x8009cde8:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009cdf8
    li      r3, 0x1
    blr

branch_0x8009cdf8:
    li      r3, 0x0
    blr


.globl isPichiEffect__9TTobiPukuFv
isPichiEffect__9TTobiPukuFv: # 0x8009ce00
    lwz     r0, 0x15c(r3)
    cmpwi   r0, 0x8
    bne-    branch_0x8009ce14
    li      r0, 0x1
    b       branch_0x8009ce18

branch_0x8009ce14:
    li      r0, 0x0
branch_0x8009ce18:
    clrlwi. r0, r0, 24
    beq-    branch_0x8009ce28
    li      r3, 0x1
    blr

branch_0x8009ce28:
    li      r3, 0x0
    blr


.globl calcRootMatrix__9TTobiPukuFv
calcRootMatrix__9TTobiPukuFv: # 0x8009ce30
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xc0(sp)
    stfd    f31, 0xb8(sp)
    stfd    f30, 0xb0(sp)
    stfd    f29, 0xa8(sp)
    stfd    f28, 0xa0(sp)
    stfd    f27, 0x98(sp)
    stfd    f26, 0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    stw     r31, R13Off_m0x6c48(r13)
    bl      calcRootMatrix__11TSpineEnemyFv
    lfs     f1, -0x6654(r2)
    lfs     f0, 0x30(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x8009cf00
    mr      r3, r31
    bl      isEaten__11TSmallEnemyFv
    clrlwi. r0, r3, 24
    bne-    branch_0x8009cf58
    lfs     f26, 0x30(r31)
    mr      r3, r31
    lfs     f1, -0x65f0(r2)
    lfs     f0, -0x7ec8(r13)
    fmuls   f1, f1, f26
    lfs     f2, 0x14(r31)
    lfs     f27, 0x38(r31)
    lfs     f28, 0x34(r31)
    fdivs   f0, f1, f0
    lfs     f29, 0x18(r31)
    lfs     f31, 0x10(r31)
    fadds   f30, f2, f0
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x6610(r2)
    fmr     f1, f31
    addi    r3, r3, 0x20
    fmuls   f3, f0, f26
    fmuls   f2, f0, f28
    fmuls   f0, f0, f27
    fctiwz  f3, f3
    fctiwz  f4, f2
    fctiwz  f0, f0
    stfd    f3, 0x80(sp)
    fmr     f2, f30
    fmr     f3, f29
    stfd    f4, 0x78(sp)
    lwz     r4, 0x84(sp)
    stfd    f0, 0x70(sp)
    lwz     r5, 0x7c(sp)
    lwz     r6, 0x74(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
branch_0x8009cf00:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x1b8(r12)
    mtlr    r12
    blrl
    clrlwi. r0, r3, 24
    beq-    branch_0x8009cf58
    lwz     r3, 0x74(r31)
    addi    r7, r31, 0x0
    addi    r5, r31, 0x1a0
    lwz     r3, 0x4(r3)
    li      r4, 0x177
    li      r6, 0x1
    lwz     r3, 0x58(r3)
    lfs     f2, 0x5c(r3)
    lfs     f1, 0x4c(r3)
    lfs     f0, 0x3c(r3)
    stfs    f0, 0x1a0(r31)
    stfs    f1, 0x1a4(r31)
    stfs    f2, 0x1a8(r31)
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
branch_0x8009cf58:
    lwz     r0, 0xc4(sp)
    lfd     f31, 0xb8(sp)
    lfd     f30, 0xb0(sp)
    mtlr    r0
    lfd     f29, 0xa8(sp)
    lfd     f28, 0xa0(sp)
    lfd     f27, 0x98(sp)
    lfd     f26, 0x90(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0xc0
    blr


.globl hitWall__9TTobiPukuFv
hitWall__9TTobiPukuFv: # 0x8009cf84
    mflr    r0
    li      r5, 0x1
    stw     r0, 0x4(sp)
    li      r0, 0x0
    stwu    sp, -0x90(sp)
    stw     r31, 0x8c(sp)
    mr      r31, r3
    addi    r4, sp, 0x5c
    lfs     f1, 0x14(r3)
    lfs     f0, 0xc0(r3)
    lfs     f3, 0x148(r3)
    fadds   f5, f1, f0
    lfs     f2, 0x14c(r3)
    lfs     f6, 0x18(r3)
    lfs     f0, 0x10(r3)
    fmuls   f1, f3, f2
    stfs    f0, 0x5c(sp)
    lfs     f4, -0x65dc(r2)
    stfs    f5, 0x60(sp)
    fmuls   f0, f4, f1
    lwz     r3, R13Off_m0x6328(r13)
    stfs    f6, 0x64(sp)
    stfs    f0, 0x68(sp)
    stw     r5, 0x6c(sp)
    stw     r0, 0x74(sp)
    bl      isTouchedWallsAndMoveXZ__4TMapCFP18TBGWallCheckRecord
    clrlwi. r0, r3, 24
    beq-    branch_0x8009d080
    lwz     r4, 0x78(sp)
    lfs     f1, 0xb0(r31)
    lfs     f0, 0x38(r4)
    lfs     f3, 0xac(r31)
    fmuls   f0, f1, f0
    lfs     f2, 0x34(r4)
    lfs     f5, 0xb4(r31)
    lfs     f4, 0x3c(r4)
    fmadds  f2, f3, f2, f0
    lfs     f6, -0x65f8(r2)
    lfs     f1, 0x34(r4)
    fmadds  f2, f5, f4, f2
    lfs     f0, 0xac(r31)
    fmuls   f2, f6, f2
    fneg    f2, f2
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xac(r31)
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x6614(r2)
    fmuls   f0, f1, f0
    stfs    f0, 0xb0(r31)
    lwz     r3, 0x78(sp)
    lfs     f0, 0xb4(r31)
    lfs     f1, 0x3c(r3)
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xb4(r31)
    lwz     r3, 0xac(r31)
    lwz     r0, 0xb0(r31)
    stw     r3, 0x1d0(r31)
    stw     r0, 0x1d4(r31)
    lwz     r0, 0xb4(r31)
    stw     r0, 0x1d8(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1b0(r31)
    b       branch_0x8009d0cc

branch_0x8009d080:
    lfs     f1, 0x14(r31)
    addi    r4, sp, 0x54
    lfs     f0, 0xc0(r31)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkRoof__4TMapCFfffPPC12TBGCheckData
    lwz     r3, 0x54(sp)
    cmplwi  r3, 0x0
    beq-    branch_0x8009d0cc
    lwz     r0, 0x44(r3)
    cmplwi  r0, 0x0
    beq-    branch_0x8009d0cc
    lfs     f1, 0xb0(r31)
    lfs     f0, -0x6654(r2)
    fcmpo   cr0, f1, f0
    ble-    branch_0x8009d0cc
    stfs    f0, 0xb0(r31)
branch_0x8009d0cc:
    lwz     r0, 0x94(sp)
    lwz     r31, 0x8c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl moveObject__9TTobiPukuFv
moveObject__9TTobiPukuFv: # 0x8009d0e0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    lwz     r3, 0x19c(r3)
    lfs     f0, 0x1bc(r3)
    stfs    f0, 0x144(r31)
    lbz     r0, R13Off_m0x7ec4(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8009d134
    lwz     r0, 0xf0(r31)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009d120
    li      r0, 0x1
    b       branch_0x8009d124

branch_0x8009d120:
    li      r0, 0x0
branch_0x8009d124:
    cmpwi   r0, 0x0
    beq-    branch_0x8009d134
    mr      r3, r31
    bl      hitWall__9TTobiPukuFv
branch_0x8009d134:
    mr      r3, r31
    bl      moveObject__12TWalkerEnemyFv
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl reset__9TTobiPukuFv
reset__9TTobiPukuFv: # 0x8009d150
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r3
    stw     r31, R13Off_m0x6c48(r13)
    bl      reset__12TWalkerEnemyFv
    lbz     r0, R13Off_m0x6c44(r13)
    extsb.  r0, r0
    bne-    branch_0x8009d1b0
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__22TNerveTobiPukuGenerate@h
    stw     r0, R13Off_m0x6c40(r13)
    addi    r0, r3, __vvt__22TNerveTobiPukuGenerate@l
    lis     r4, __dt__22TNerveTobiPukuGenerateFv@ha
    stw     r0, R13Off_m0x6c40(r13)
    lis     r3, unk_803f1250@h
    addi    r5, r3, unk_803f1250@l
    addi    r4, r4, __dt__22TNerveTobiPukuGenerateFv@l
    addi    r3, r13, R13Off_m0x6c40
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c44(r13)
branch_0x8009d1b0:
    lwz     r5, 0x8c(r31)
    li      r4, 0x0
    addi    r3, r13, R13Off_m0x6c40
    stw     r4, 0x8(r5)
    li      r0, 0x1
    stw     r4, 0x20(r5)
    stw     r3, 0x14(r5)
    stw     r3, 0x18(r5)
    stw     r4, 0x1c(r5)
    stb     r0, 0x1ad(r31)
    stb     r4, 0x194(r31)
    lwz     r3, 0x10(r31)
    lwz     r0, 0x14(r31)
    stw     r3, 0x1c4(r31)
    stw     r0, 0x1c8(r31)
    lwz     r0, 0x18(r31)
    stw     r0, 0x1cc(r31)
    lwz     r3, 0x1c4(r31)
    lwz     r0, 0x1c8(r31)
    stw     r3, 0x1b8(r31)
    stw     r0, 0x1bc(r31)
    lwz     r0, 0x1cc(r31)
    stw     r0, 0x1c0(r31)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x1e0(r31)
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl init__9TTobiPukuFP12TLiveManager
init__9TTobiPukuFP12TLiveManager: # 0x8009d228
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__12TWalkerEnemyFP12TLiveManager
    lis     r3, unk_10000012@h
    addi    r0, r3, unk_10000012@l
    stw     r0, 0x4c(r31)
    li      r0, 0x31
    addi    r3, r31, 0x0
    stw     r0, 0x150(r31)
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x19c(r31)
    lis     r3, TobiPukuRollCallback__FP7J3DNodei@ha
    addi    r5, r3, TobiPukuRollCallback__FP7J3DNodei@l
    lwz     r3, 0x74(r31)
    li      r4, 0x1
    bl      setJointCallback__6MActorFiPFP7J3DNodei_i
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __ct__9TTobiPukuFPCc
__ct__9TTobiPukuFPCc: # 0x8009d294
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    stw     r3, 0x8(sp)
    lwz     r3, 0x8(sp)
    bl      __ct__12TWalkerEnemyFPCc
    lis     r3, __vvt__9TTobiPuku@h
    lwz     r30, 0x8(sp)
    addi    r3, r3, __vvt__9TTobiPuku@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    lis     r3, __ct__Q29JGeometry8TVec3_f_Fv@h
    stw     r0, 0x20(r30)
    li      r31, 0x0
    addi    r4, r3, __ct__Q29JGeometry8TVec3_f_Fv@l
    stb     r31, 0x194(r30)
    li      r0, 0x1
    addi    r3, r30, 0x1b8
    stw     r31, 0x198(r30)
    li      r5, 0x0
    li      r6, 0xc
    stw     r31, 0x19c(r30)
    li      r7, 0x2
    stb     r0, 0x1ac(r30)
    stb     r0, 0x1ad(r30)
    stb     r31, 0x1ae(r30)
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x1b0(r30)
    stfs    f0, 0x1b4(r30)
    bl      __construct_array
    lfs     f0, -0x6654(r2)
    mr      r3, r30
    stfs    f0, 0x1e0(r30)
    stfs    f0, 0x1e4(r30)
    stfs    f0, 0x1e8(r30)
    stfs    f0, 0x1ec(r30)
    stw     r31, R13Off_m0x6c48(r13)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl launch__17TMoePukuLaunchPadFv
launch__17TMoePukuLaunchPadFv: # 0x8009d348
    mflr    r0
    lis     r4, unk_8037c76c@ha
    stw     r0, 0x4(sp)
    addi    r5, r4, unk_8037c76c@l
    li      r6, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x10
    lwz     r3, R13Off_m0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r31, r3
    beq-    branch_0x8009d390
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      forceLaunch__18TTobiPukuLaunchPadFP9TTobiPuku
    stw     r31, 0x1a8(r30)
branch_0x8009d390:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl forceLaunch__18TTobiPukuLaunchPadFP9TTobiPuku
forceLaunch__18TTobiPukuLaunchPadFP9TTobiPuku: # 0x8009d3a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd8(sp)
    stw     r31, 0xd4(sp)
    mr      r31, r4
    stw     r30, 0xd0(sp)
    mr      r30, r3
    lwz     r3, 0x10(r3)
    lwz     r0, 0x14(r30)
    lfs     f1, -0x65d8(r2)
    stw     r3, 0xbc(sp)
    lfs     f4, -0x65d4(r2)
    stw     r0, 0xc0(sp)
    lwz     r4, R13Off_m0x5eac(r13)
    lwz     r0, 0x18(r30)
    lwz     r6, R13Off_m0x5ea8(r13)
    stw     r0, 0xc4(sp)
    lwz     r5, R13Off_m0x5ea4(r13)
    lfs     f0, 0x34(r30)
    lwz     r3, 0x70(r30)
    fmuls   f0, f1, f0
    lbz     r0, 0x60(r3)
    fdivs   f0, f0, f4
    cmplwi  r0, 0x0
    fctiwz  f0, f0
    stfd    f0, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f2, r6, r0
    lfsx    f5, r5, r0
    beq-    branch_0x8009d488
    lwz     r5, 0x198(r30)
    mr      r4, r30
    lfs     f0, 0xbc(sp)
    addi    r3, sp, 0x84
    lfs     f1, 0x30c(r5)
    addi    r5, sp, 0xbc
    fmadds  f0, f2, f1, f0
    stfs    f0, 0xbc(sp)
    lfs     f0, 0xc4(sp)
    fmadds  f0, f5, f1, f0
    stfs    f0, 0xc4(sp)
    lwz     r7, 0x198(r30)
    lwz     r6, 0x19c(r31)
    lfs     f1, 0x2f8(r7)
    lfs     f2, 0x378(r6)
    bl      calcVelocityToJumpToY__10TLiveActorCFRCQ29JGeometry8TVec3_f_ff
    lwz     r0, 0x84(sp)
    lwz     r3, 0x88(sp)
    stw     r0, 0x98(sp)
    lwz     r0, 0x8c(sp)
    stw     r3, 0x9c(sp)
    stw     r0, 0xa0(sp)
    b       branch_0x8009d4e0

branch_0x8009d488:
    lfs     f0, 0x30(r30)
    lfs     f6, 0x19c(r30)
    fmuls   f1, f1, f0
    lfs     f0, -0x664c(r2)
    fmuls   f3, f2, f6
    fmuls   f2, f0, f6
    fdivs   f0, f1, f4
    fctiwz  f1, f0
    fmuls   f0, f5, f6
    stfd    f1, 0xc8(sp)
    lwz     r0, 0xcc(sp)
    clrlwi  r0, r0, 16
    sraw    r0, r0, r4
    slwi    r0, r0, 2
    lfsx    f4, r5, r0
    fmuls   f1, f3, f4
    fmuls   f0, f0, f4
    stfs    f1, 0x98(sp)
    lfsx    f1, r6, r0
    fmuls   f1, f2, f1
    stfs    f1, 0x9c(sp)
    stfs    f0, 0xa0(sp)
branch_0x8009d4e0:
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r5, 0x10(r30)
    addi    r4, sp, 0x6c
    lwz     r0, 0x14(r30)
    addi    r3, sp, 0x78
    stw     r5, 0x10(r31)
    stw     r0, 0x14(r31)
    lwz     r0, 0x18(r30)
    stw     r0, 0x18(r31)
    lwz     r5, 0x30(r30)
    lwz     r0, 0x34(r30)
    stw     r5, 0x30(r31)
    stw     r0, 0x34(r31)
    lwz     r0, 0x38(r30)
    stw     r0, 0x38(r31)
    lwz     r5, 0x98(sp)
    lwz     r0, 0x9c(sp)
    stw     r5, 0x1d0(r31)
    stw     r0, 0x1d4(r31)
    lwz     r0, 0xa0(sp)
    stw     r0, 0x1d8(r31)
    lfs     f0, 0x14(r30)
    stfs    f0, 0x1b0(r31)
    stw     r30, 0x1dc(r31)
    lwz     r5, 0xac(r30)
    lwz     r0, 0xb0(r30)
    stw     r5, 0x6c(sp)
    stw     r0, 0x70(sp)
    lwz     r0, 0xb4(r30)
    stw     r0, 0x74(sp)
    bl      MsGetRotFromZaxis__FRCQ29JGeometry8TVec3_f_
    lfs     f0, 0x78(sp)
    stfs    f0, 0x1b4(r31)
    lwz     r0, 0xdc(sp)
    lwz     r31, 0xd4(sp)
    lwz     r30, 0xd0(sp)
    mtlr    r0
    addi    sp, sp, 0xd8
    blr


.globl launch__18TTobiPukuLaunchPadFv
launch__18TTobiPukuLaunchPadFv: # 0x8009d58c
    mflr    r0
    lis     r4, unk_8037c784@ha
    stw     r0, 0x4(sp)
    addi    r5, r4, unk_8037c784@l
    li      r6, 0x1
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    stw     r30, 0x10(sp)
    addi    r30, r3, 0x0
    addi    r4, r30, 0x10
    lwz     r3, R13Off_m0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    mr.     r31, r3
    beq-    branch_0x8009d5d4
    addi    r3, r30, 0x0
    addi    r4, r31, 0x0
    bl      forceLaunch__18TTobiPukuLaunchPadFP9TTobiPuku
    stw     r31, 0x1a8(r30)
branch_0x8009d5d4:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl reset__18TTobiPukuLaunchPadFv
reset__18TTobiPukuLaunchPadFv: # 0x8009d5ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      reset__11TSmallEnemyFv
    li      r0, 0x0
    stw     r0, 0x194(r31)
    stw     r0, 0x1a8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__18TTobiPukuLaunchPadFR20JSUMemoryInputStream
load__18TTobiPukuLaunchPadFR20JSUMemoryInputStream: # 0x8009d624
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x20(sp)
    addi    r30, r3, 0x0
    bl      load__11TSmallEnemyFR20JSUMemoryInputStream
    addi    r3, r31, 0x0
    addi    r4, sp, 0x10
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r4, 0x10(sp)
    lis     r0, 0x4330
    lfd     f1, -0x6630(r2)
    addi    r3, r30, 0x0
    xoris   r4, r4, 0x8000
    stw     r4, 0x1c(sp)
    stw     r0, 0x18(sp)
    lfd     f0, 0x18(sp)
    fsubs   f0, f0, f1
    stfs    f0, 0x19c(r30)
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    lwz     r30, 0x20(sp)
    mtlr    r0
    addi    sp, sp, 0x28
    blr


.globl init__18TTobiPukuLaunchPadFP12TLiveManager
init__18TTobiPukuLaunchPadFP12TLiveManager: # 0x8009d6a4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      init__11TSmallEnemyFP12TLiveManager
    lis     r3, unk_10000012@h
    addi    r0, r3, unk_10000012@l
    stw     r0, 0x4c(r31)
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x108(r12)
    mtlr    r12
    blrl
    stw     r3, 0x198(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl perform__18TTobiPukuLaunchPadFUlPQ26JDrama9TGraphics
perform__18TTobiPukuLaunchPadFUlPQ26JDrama9TGraphics: # 0x8009d6f4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r5, 0xf0(r3)
    rlwinm. r0, r5, 0, 22, 22
    bne-    branch_0x8009d7a0
    clrlwi. r0, r5, 31
    bne-    branch_0x8009d7a0
    clrlwi. r0, r4, 31
    beq-    branch_0x8009d7a0
    lbz     r0, R13Off_m0x7ebc(r13)
    cmplwi  r0, 0x0
    beq-    branch_0x8009d768
    lwz     r4, 0x1a8(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x8009d748
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1a8(r12)
    mtlr    r12
    blrl
    b       branch_0x8009d7a0

branch_0x8009d748:
    lwz     r0, 0xf0(r4)
    clrlwi. r0, r0, 31
    beq-    branch_0x8009d7a0
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1a8(r12)
    mtlr    r12
    blrl
    b       branch_0x8009d7a0

branch_0x8009d768:
    lwz     r4, 0x194(r3)
    addi    r0, r4, 0x1
    stw     r0, 0x194(r3)
    lwz     r4, 0x198(r3)
    lwz     r5, 0x194(r3)
    lwz     r0, 0x2e4(r4)
    cmpw    r5, r0
    ble-    branch_0x8009d7a0
    li      r0, 0x0
    stw     r0, 0x194(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x1a8(r12)
    mtlr    r12
    blrl
branch_0x8009d7a0:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl __ct__18TTobiPukuLaunchPadFPCc
__ct__18TTobiPukuLaunchPadFPCc: # 0x8009d7b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__18TTobiPukuLaunchPad@h
    addi    r3, r3, __vvt__18TTobiPukuLaunchPad@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x194(r31)
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x19c(r31)
    stw     r0, 0x1a8(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__15TMoePukuManagerFv
createEnemyInstance__15TMoePukuManagerFv: # 0x8009d808
    mflr    r0
    li      r3, 0x1f4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8009d84c
    lis     r4, unk_8037c79c@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_8037c79c@l
    bl      __ct__9TTobiPukuFPCc
    lis     r3, __vvt__8TMoePuku@h
    addi    r3, r3, __vvt__8TMoePuku@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r31)
branch_0x8009d84c:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__16TTobiPukuManagerFv
createEnemyInstance__16TTobiPukuManagerFv: # 0x8009d864
    mflr    r0
    li      r3, 0x1f4
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8009d894
    lis     r3, unk_8037c7a8@ha
    addi    r4, r3, unk_8037c7a8@l
    addi    r3, r31, 0x0
    bl      __ct__9TTobiPukuFPCc
branch_0x8009d894:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__16TTobiPukuManagerFR20JSUMemoryInputStream
load__16TTobiPukuManagerFR20JSUMemoryInputStream: # 0x8009d8ac
    mflr    r0
    lis     r5, unk_8037c4c0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x40(sp)
    stmw    r23, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r28, r4, 0x0
    addi    r31, r5, unk_8037c4c0@l
    li      r3, 0x390
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8009d9f8
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x2f4
    lwz     r3, 0x10(sp)
    bl      __ct__18TWalkerEnemyParamsFPCc
    addi    r3, r31, 0x308
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r27, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x308
    addi    r4, r27, 0x0
    addi    r3, r27, 0x32c
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r23, r3, __vvt__10TParamT_l_@l
    stw     r23, 0x32c(r27)
    li      r0, 0x3
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x33c(r27)
    addi    r24, r3, __vvt__11TParamRT_l_@l
    addi    r3, r31, 0x314
    stw     r24, 0x32c(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x340
    addi    r6, r31, 0x314
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r25, r3, __vvt__10TParamT_f_@l
    stw     r25, 0x340(r27)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r26, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6620(r2)
    addi    r3, r31, 0x320
    stfs    f0, 0x350(r27)
    stw     r26, 0x340(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x354
    addi    r6, r31, 0x320
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r23, 0x354(r27)
    li      r0, 0xc8
    addi    r3, r31, 0x330
    stw     r0, 0x364(r27)
    stw     r24, 0x354(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x368
    addi    r6, r31, 0x330
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x368(r27)
    addi    r3, r31, 0x340
    lfs     f0, -0x65d0(r2)
    stfs    f0, 0x378(r27)
    stw     r26, 0x368(r27)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r27, 0x0
    addi    r3, r27, 0x37c
    addi    r6, r31, 0x340
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r25, 0x37c(r27)
    mr      r3, r27
    lfs     f0, -0x664c(r2)
    stfs    f0, 0x38c(r27)
    stw     r26, 0x37c(r27)
    lwz     r4, 0x0(r27)
    bl      load__7TParamsFPCc
branch_0x8009d9f8:
    stw     r30, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r23, 0x1c(sp)
    lwz     r0, 0x44(sp)
    addi    sp, sp, 0x40
    mtlr    r0
    blr


.globl __ct__16TTobiPukuManagerFPCc
__ct__16TTobiPukuManagerFPCc: # 0x8009da1c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__16TTobiPukuManager@h
    addi    r0, r3, __vvt__16TTobiPukuManager@l
    stw     r0, 0x0(r31)
    mr      r3, r31
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl createEnemyInstance__24TMoePukuLaunchPadManagerFv
createEnemyInstance__24TMoePukuLaunchPadManagerFv: # 0x8009da58
    mflr    r0
    li      r3, 0x1ac
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8009dac4
    lis     r4, unk_8037c814@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_8037c814@l
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__18TTobiPukuLaunchPad@h
    addi    r3, r3, __vvt__18TTobiPukuLaunchPad@l
    stw     r3, 0x0(r31)
    addi    r0, r3, 0x24
    lis     r3, __vvt__17TMoePukuLaunchPad@h
    stw     r0, 0x20(r31)
    li      r4, 0x0
    addi    r3, r3, __vvt__17TMoePukuLaunchPad@l
    stw     r4, 0x194(r31)
    addi    r0, r3, 0x24
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x19c(r31)
    stw     r4, 0x1a8(r31)
    stw     r3, 0x0(r31)
    stw     r0, 0x20(r31)
branch_0x8009dac4:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__18TTobiPukuLaunchPadFv
__dt__18TTobiPukuLaunchPadFv: # 0x8009dadc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009db44
    lis     r3, __vvt__18TTobiPukuLaunchPad@h
    addi    r3, r3, __vvt__18TTobiPukuLaunchPad@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009db34
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8009db34:
    extsh.  r0, r31
    ble-    branch_0x8009db44
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009db44:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl perform__25TTobiPukuLaunchPadManagerFUlPQ26JDrama9TGraphics
perform__25TTobiPukuLaunchPadManagerFUlPQ26JDrama9TGraphics: # 0x8009db60
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x48(sp)
    stmw    r27, 0x34(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x8009dbb0

branch_0x8009db88:
    lwz     r3, 0x18(r27)
    addi    r4, r28, 0x0
    addi    r5, r29, 0x0
    lwzx    r3, r3, r31
    lwz     r12, 0x0(r3)
    lwz     r12, 0x20(r12)
    mtlr    r12
    blrl
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x8009dbb0:
    lwz     r3, 0x38(r27)
    cmplwi  r3, 0x0
    bne-    branch_0x8009dbc4
    lwz     r3, 0x14(r27)
    b       branch_0x8009dbdc

branch_0x8009dbc4:
    lbz     r0, 0xa4(r3)
    lwz     r3, 0x14(r27)
    cmpw    r0, r3
    ble-    branch_0x8009dbd8
    b       branch_0x8009dbdc

branch_0x8009dbd8:
    mr      r3, r0
branch_0x8009dbdc:
    cmpw    r30, r3
    blt+    branch_0x8009db88
    lmw     r27, 0x34(sp)
    lwz     r0, 0x4c(sp)
    addi    sp, sp, 0x48
    mtlr    r0
    blr


.globl createEnemyInstance__25TTobiPukuLaunchPadManagerFv
createEnemyInstance__25TTobiPukuLaunchPadManagerFv: # 0x8009dbf8
    mflr    r0
    li      r3, 0x1ac
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x8009dc50
    lis     r4, unk_8037c824@ha
    addi    r3, r31, 0x0
    addi    r4, r4, unk_8037c824@l
    bl      __ct__11TSmallEnemyFPCc
    lis     r3, __vvt__18TTobiPukuLaunchPad@h
    addi    r3, r3, __vvt__18TTobiPukuLaunchPad@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    stw     r0, 0x194(r31)
    lfs     f0, -0x6654(r2)
    stfs    f0, 0x19c(r31)
    stw     r0, 0x1a8(r31)
branch_0x8009dc50:
    lwz     r0, 0x1c(sp)
    mr      r3, r31
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl load__25TTobiPukuLaunchPadManagerFR20JSUMemoryInputStream
load__25TTobiPukuLaunchPadManagerFR20JSUMemoryInputStream: # 0x8009dc68
    mflr    r0
    lis     r5, unk_8037c4c0@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stmw    r25, 0x1c(sp)
    addi    r29, r3, 0x0
    addi    r28, r4, 0x0
    addi    r31, r5, unk_8037c4c0@l
    li      r3, 0x338
    bl      __nw__FUl
    mr.     r30, r3
    beq-    branch_0x8009ddb4
    stw     r30, 0x10(sp)
    addi    r4, r31, 0x374
    lwz     r3, 0x10(sp)
    bl      __ct__17TSmallEnemyParamsFPCc
    addi    r3, r31, 0x390
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r26, 0x10(sp)
    addi    r5, r3, 0x0
    addi    r6, r31, 0x390
    addi    r4, r26, 0x0
    addi    r3, r26, 0x2d4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_l_@ha
    addi    r0, r3, __vvt__10TParamT_l_@l
    stw     r0, 0x2d4(r26)
    li      r0, 0x12c
    lis     r3, __vvt__11TParamRT_l_@ha
    stw     r0, 0x2e4(r26)
    addi    r0, r3, __vvt__11TParamRT_l_@l
    addi    r3, r31, 0x3a4
    stw     r0, 0x2d4(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x2e8
    addi    r6, r31, 0x3a4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    lis     r3, __vvt__10TParamT_f_@ha
    addi    r27, r3, __vvt__10TParamT_f_@l
    stw     r27, 0x2e8(r26)
    lis     r3, __vvt__11TParamRT_f_@ha
    addi    r25, r3, __vvt__11TParamRT_f_@l
    lfs     f0, -0x6608(r2)
    addi    r3, r31, 0x3b8
    stfs    f0, 0x2f8(r26)
    stw     r25, 0x2e8(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x2fc
    addi    r6, r31, 0x3b8
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x2fc(r26)
    addi    r3, r31, 0x3c4
    lfs     f0, -0x65cc(r2)
    stfs    f0, 0x30c(r26)
    stw     r25, 0x2fc(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x310
    addi    r6, r31, 0x3c4
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x310(r26)
    addi    r3, r31, 0x3d0
    lfs     f0, -0x6628(r2)
    stfs    f0, 0x320(r26)
    stw     r25, 0x310(r26)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    addi    r5, r3, 0x0
    addi    r4, r26, 0x0
    addi    r3, r26, 0x324
    addi    r6, r31, 0x3d0
    bl      __ct__10TBaseParamFP7TParamsUsPCc
    stw     r27, 0x324(r26)
    mr      r3, r26
    lfs     f0, -0x65c8(r2)
    stfs    f0, 0x334(r26)
    stw     r25, 0x324(r26)
    lwz     r4, 0x0(r26)
    bl      load__7TParamsFPCc
branch_0x8009ddb4:
    stw     r30, 0x38(r29)
    addi    r3, r29, 0x0
    addi    r4, r28, 0x0
    bl      load__18TSmallEnemyManagerFR20JSUMemoryInputStream
    lmw     r25, 0x1c(sp)
    lwz     r0, 0x3c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl __ct__25TTobiPukuLaunchPadManagerFPCc
__ct__25TTobiPukuLaunchPadManagerFPCc: # 0x8009ddd8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__18TSmallEnemyManagerFPCc
    lis     r3, __vvt__25TTobiPukuLaunchPadManager@h
    addi    r0, r3, __vvt__25TTobiPukuLaunchPadManager@l
    stw     r0, 0x0(r31)
    li      r0, 0x0
    addi    r3, r31, 0x0
    stb     r0, 0x60(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl TobiPukuRollCallback__FP7J3DNodei
TobiPukuRollCallback__FP7J3DNodei: # 0x8009de1c
    mflr    r0
    cmpwi   r4, 0x0
    stw     r0, 0x4(sp)
    lis     r4, unk_803f1250@h
    stwu    sp, -0xd0(sp)
    stw     r31, 0xcc(sp)
    addi    r31, r4, unk_803f1250@l
    stw     r30, 0xc8(sp)
    stw     r29, 0xc4(sp)
    addi    r29, r3, 0x0
    bne-    branch_0x8009e020
    lwz     r30, R13Off_m0x6c48(r13)
    cmplwi  r30, 0x0
    beq-    branch_0x8009df64
    lbz     r0, R13Off_m0x6c0c(r13)
    extsb.  r0, r0
    bne-    branch_0x8009de94
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__18TNerveTobiPukuLand@h
    stw     r0, R13Off_m0x6c08(r13)
    addi    r0, r3, __vvt__18TNerveTobiPukuLand@l
    lis     r3, __dt__18TNerveTobiPukuLandFv@ha
    stw     r0, R13Off_m0x6c08(r13)
    addi    r4, r3, __dt__18TNerveTobiPukuLandFv@l
    addi    r3, r13, R13Off_m0x6c08
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6c0c(r13)
branch_0x8009de94:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6c08
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009df50
    lbz     r0, R13Off_m0x6bfc(r13)
    extsb.  r0, r0
    bne-    branch_0x8009dee8
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__24TNerveTobiPukuPrepareFly@h
    stw     r0, R13Off_m0x6bf8(r13)
    addi    r0, r3, __vvt__24TNerveTobiPukuPrepareFly@l
    lis     r3, __dt__24TNerveTobiPukuPrepareFlyFv@ha
    stw     r0, R13Off_m0x6bf8(r13)
    addi    r4, r3, __dt__24TNerveTobiPukuPrepareFlyFv@l
    addi    r3, r13, R13Off_m0x6bf8
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bfc(r13)
branch_0x8009dee8:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6bf8
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    beq-    branch_0x8009df50
    lbz     r0, R13Off_m0x6bf4(r13)
    extsb.  r0, r0
    bne-    branch_0x8009df3c
    lis     r3, __vvt__24TNerveBase_10TLiveActor_@ha
    addi    r0, r3, __vvt__24TNerveBase_10TLiveActor_@l
    lis     r3, __vvt__26TNerveTobiPukuReturnLaunch@h
    stw     r0, R13Off_m0x6bf0(r13)
    addi    r0, r3, __vvt__26TNerveTobiPukuReturnLaunch@l
    lis     r3, __dt__26TNerveTobiPukuReturnLaunchFv@ha
    stw     r0, R13Off_m0x6bf0(r13)
    addi    r4, r3, __dt__26TNerveTobiPukuReturnLaunchFv@l
    addi    r3, r13, R13Off_m0x6bf0
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x6bf4(r13)
branch_0x8009df3c:
    lwz     r3, 0x8c(r30)
    addi    r0, r13, R13Off_m0x6bf0
    lwz     r3, 0x14(r3)
    cmplw   r3, r0
    bne-    branch_0x8009df58
branch_0x8009df50:
    li      r0, 0x1
    b       branch_0x8009df5c

branch_0x8009df58:
    li      r0, 0x0
branch_0x8009df5c:
    clrlwi. r0, r0, 24
    bne-    branch_0x8009df6c
branch_0x8009df64:
    li      r3, 0x1
    b       branch_0x8009e024

branch_0x8009df6c:
    lwz     r5, R13Off_m0x6c48(r13)
    addi    r30, sp, 0x80
    lhz     r0, 0x18(r29)
    mr      r4, r30
    lfs     f0, 0x1ec(r5)
    lfs     f1, -0x6610(r2)
    mulli   r3, r0, 0x30
    lwz     r5, 0x74(r5)
    fmuls   f0, f1, f0
    lwz     r0, R13Off_m0x5eac(r13)
    lwz     r5, 0x4(r5)
    lwz     r8, R13Off_m0x5ea8(r13)
    fctiwz  f0, f0
    lwz     r5, 0x58(r5)
    lwz     r6, R13Off_m0x5ea4(r13)
    stfd    f0, 0xb8(sp)
    add     r3, r5, r3
    addi    r5, r3, 0x0
    lwz     r7, 0xbc(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f3, r6, r0
    fneg    f0, f2
    stfs    f3, 0x80(sp)
    stfs    f0, 0x84(sp)
    lfs     f1, -0x6654(r2)
    stfs    f1, 0x88(sp)
    stfs    f1, 0x8c(sp)
    stfs    f2, 0x90(sp)
    stfs    f3, 0x94(sp)
    stfs    f1, 0x98(sp)
    stfs    f1, 0x9c(sp)
    stfs    f1, 0xa0(sp)
    stfs    f1, 0xa4(sp)
    lfs     f0, -0x664c(r2)
    stfs    f0, 0xa8(sp)
    stfs    f1, 0xac(sp)
    bl      PSMTXConcat
    lis     r3, mCurrentMtx__6J3DSys@h
    addi    r5, r3, mCurrentMtx__6J3DSys@l
    addi    r3, r5, 0x0
    addi    r4, r30, 0x0
    bl      PSMTXConcat
branch_0x8009e020:
    li      r3, 0x1
branch_0x8009e024:
    lwz     r0, 0xd4(sp)
    lwz     r31, 0xcc(sp)
    lwz     r30, 0xc8(sp)
    mtlr    r0
    lwz     r29, 0xc4(sp)
    addi    sp, sp, 0xd0
    blr


.globl swimEffect__8TMoePukuFv
swimEffect__8TMoePukuFv: # 0x8009e040
    blr


.globl isInhibitedForceMove__9TTobiPukuFv
isInhibitedForceMove__9TTobiPukuFv: # 0x8009e044
    lwz     r0, 0xf0(r3)
    rlwinm. r0, r0, 0, 24, 24
    beq-    branch_0x8009e058
    li      r3, 0x1
    blr

branch_0x8009e058:
    li      r3, 0x0
    blr


.globl __dt__8TMoePukuFv
__dt__8TMoePukuFv: # 0x8009e060
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e0e0
    lis     r3, __vvt__8TMoePuku@h
    addi    r3, r3, __vvt__8TMoePuku@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009e0d0
    lis     r3, __vvt__9TTobiPuku@h
    addi    r3, r3, __vvt__9TTobiPuku@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009e0d0
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x8009e0d0:
    extsh.  r0, r31
    ble-    branch_0x8009e0e0
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e0e0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__9TPukuPukuFv
__dt__9TPukuPukuFv: # 0x8009e0fc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e17c
    lis     r3, __vvt__9TPukuPuku@h
    addi    r3, r3, __vvt__9TPukuPuku@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009e16c
    lis     r3, __vvt__9TTobiPuku@h
    addi    r3, r3, __vvt__9TTobiPuku@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009e16c
    lis     r3, __vvt__12TWalkerEnemy@h
    addi    r3, r3, __vvt__12TWalkerEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSmallEnemyFv
branch_0x8009e16c:
    extsh.  r0, r31
    ble-    branch_0x8009e17c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e17c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__17TMoePukuLaunchPadFv
__dt__17TMoePukuLaunchPadFv: # 0x8009e198
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e218
    lis     r3, __vvt__17TMoePukuLaunchPad@h
    addi    r3, r3, __vvt__17TMoePukuLaunchPad@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009e208
    lis     r3, __vvt__18TTobiPukuLaunchPad@h
    addi    r3, r3, __vvt__18TTobiPukuLaunchPad@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x8009e208
    lis     r3, __vvt__11TSmallEnemy@h
    addi    r3, r3, __vvt__11TSmallEnemy@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__11TSpineEnemyFv
branch_0x8009e208:
    extsh.  r0, r31
    ble-    branch_0x8009e218
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e218:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__15TMoePukuManagerFv
__dt__15TMoePukuManagerFv: # 0x8009e234
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e29c
    lis     r3, __vvt__15TMoePukuManager@h
    addi    r0, r3, __vvt__15TMoePukuManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8009e28c
    lis     r3, __vvt__16TTobiPukuManager@h
    addi    r0, r3, __vvt__16TTobiPukuManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8009e28c
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8009e28c:
    extsh.  r0, r31
    ble-    branch_0x8009e29c
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e29c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__16TTobiPukuManagerFv
__dt__16TTobiPukuManagerFv: # 0x8009e2b8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e310
    lis     r3, __vvt__16TTobiPukuManager@h
    addi    r0, r3, __vvt__16TTobiPukuManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8009e300
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8009e300:
    extsh.  r0, r31
    ble-    branch_0x8009e310
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e310:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__24TMoePukuLaunchPadManagerFv
__dt__24TMoePukuLaunchPadManagerFv: # 0x8009e32c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e394
    lis     r3, __vvt__24TMoePukuLaunchPadManager@h
    addi    r0, r3, __vvt__24TMoePukuLaunchPadManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8009e384
    lis     r3, __vvt__25TTobiPukuLaunchPadManager@h
    addi    r0, r3, __vvt__25TTobiPukuLaunchPadManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8009e384
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8009e384:
    extsh.  r0, r31
    ble-    branch_0x8009e394
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e394:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __dt__25TTobiPukuLaunchPadManagerFv
__dt__25TTobiPukuLaunchPadManagerFv: # 0x8009e3b0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x8009e408
    lis     r3, __vvt__25TTobiPukuLaunchPadManager@h
    addi    r0, r3, __vvt__25TTobiPukuLaunchPadManager@l
    stw     r0, 0x0(r30)
    beq-    branch_0x8009e3f8
    lis     r3, __vvt__18TSmallEnemyManager@h
    addi    r0, r3, __vvt__18TSmallEnemyManager@l
    stw     r0, 0x0(r30)
    addi    r3, r30, 0x0
    li      r4, 0x0
    bl      __dt__13TEnemyManagerFv
branch_0x8009e3f8:
    extsh.  r0, r31
    ble-    branch_0x8009e408
    mr      r3, r30
    bl      __dl__FPv
branch_0x8009e408:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_tobiPuku_cpp
__sinit_tobiPuku_cpp: # 0x8009e424
    mflr    r0
    lis     r3, unk_803f1250@h
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f1250@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e46c
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x8009e46c:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e49c
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x8009e49c:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e4cc
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x8009e4cc:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e4fc
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0xb4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x8009e4fc:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e52c
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0xc0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x8009e52c:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e55c
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0xcc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x8009e55c:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e58c
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0xd8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x8009e58c:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e5bc
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0xe4
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x8009e5bc:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e5ec
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0xf0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x8009e5ec:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e61c
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0xfc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x8009e61c:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e64c
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x108
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x8009e64c:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e67c
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x114
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x8009e67c:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e6ac
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x120
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x8009e6ac:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e6dc
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x12c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x8009e6dc:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x8009e70c
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0x138
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x8009e70c:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_8009e720
unk_8009e720: # 0x8009e720
    addi    r3, r3, -0x20
    b       __dt__18TTobiPukuLaunchPadFv


.globl unk_8009e728
unk_8009e728: # 0x8009e728
    addi    r3, r3, -0x20
    b       __dt__17TMoePukuLaunchPadFv


.globl unk_8009e730
unk_8009e730: # 0x8009e730
    addi    r3, r3, -0x20
    b       __dt__9TTobiPukuFv


.globl unk_8009e738
unk_8009e738: # 0x8009e738
    addi    r3, r3, -0x20
    b       __dt__9TPukuPukuFv


.globl unk_8009e740
unk_8009e740: # 0x8009e740
    addi    r3, r3, -0x20
    b       __dt__8TMoePukuFv

