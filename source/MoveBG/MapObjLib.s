
.globl __dt__11TMapObjTurnFv
__dt__11TMapObjTurnFv: # 0x801b7d34
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b7db4
    lis     r3, __vvt__11TMapObjTurn@ha
    addi    r3, r3, __vvt__11TMapObjTurn@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b7da4
    lis     r3, __vvt__12THideObjBase@h
    addi    r3, r3, __vvt__12THideObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b7da4
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b7da4:
    extsh.  r0, r31
    ble-    branch_0x801b7db4
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b7db4:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __ct__11TMapObjTurnFPCc
__ct__11TMapObjTurnFPCc: # 0x801b7dd0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__12THideObjBaseFPCc
    lis     r3, __vvt__11TMapObjTurn@ha
    addi    r3, r3, __vvt__11TMapObjTurn@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x150(r31)
    lfs     f0, -0x2c48(r2)
    stfs    f0, 0x154(r31)
    stfs    f0, 0x158(r31)
    stfs    f0, 0x15c(r31)
    stfs    f0, 0x160(r31)
    stfs    f0, 0x164(r31)
    stb     r0, 0x168(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl __dt__12THideObjBaseFv
__dt__12THideObjBaseFv: # 0x801b7e38
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801b7ea0
    lis     r3, __vvt__12THideObjBase@h
    addi    r3, r3, __vvt__12THideObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801b7e90
    lis     r3, __vvt__11TMapObjBase@h
    addi    r3, r3, __vvt__11TMapObjBase@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__10TLiveActorFv
branch_0x801b7e90:
    extsh.  r0, r31
    ble-    branch_0x801b7ea0
    mr      r3, r30
    bl      __dl__FPv
branch_0x801b7ea0:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl initMapObj__11TMapObjTurnFv
initMapObj__11TMapObjTurnFv: # 0x801b7ebc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      initMapObj__11TMapObjBaseFv
    lwz     r3, 0x4c(r31)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x7e
    bne-    branch_0x801b7eec
    li      r0, 0x1
    b       branch_0x801b7ef0

branch_0x801b7eec:
    li      r0, 0x0
branch_0x801b7ef0:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b7f18
    li      r0, 0x1
    stw     r0, 0x150(r31)
    lfs     f0, -0x2c44(r2)
    stfs    f0, 0x15c(r31)
    lfs     f0, -0x2c40(r2)
    stfs    f0, 0x164(r31)
    lfs     f0, -0x2c3c(r2)
    stfs    f0, 0x160(r31)
branch_0x801b7f18:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl loadAfter__11TMapObjTurnFv
loadAfter__11TMapObjTurnFv: # 0x801b7f2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      loadAfter__12THideObjBaseFv
    lwz     r0, 0x138(r31)
    cmplwi  r0, 0x0
    beq-    branch_0x801b7f58
    li      r0, 0x1
    stb     r0, 0x168(r31)
branch_0x801b7f58:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__11TMapObjTurnFP9THitActorUl
receiveMessage__11TMapObjTurnFP9THitActorUl: # 0x801b7f6c
    mflr    r0
    cmplwi  r5, 0x5
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    bne-    branch_0x801b7ff4
    lwz     r6, 0x4c(r4)
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b7f98
    li      r0, 0x1
    b       branch_0x801b7f9c

branch_0x801b7f98:
    li      r0, 0x0
branch_0x801b7f9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b7fe4
    addis   r0, r6, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x801b7fb8
    li      r0, 0x1
    b       branch_0x801b7fbc

branch_0x801b7fb8:
    li      r0, 0x0
branch_0x801b7fbc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801b7fe4
    addis   r0, r6, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801b7fd8
    li      r0, 0x1
    b       branch_0x801b7fdc

branch_0x801b7fd8:
    li      r0, 0x0
branch_0x801b7fdc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b7ff4
branch_0x801b7fe4:
    li      r0, 0x1
    stb     r0, 0x168(r3)
    li      r3, 0x1
    b       branch_0x801b7ff8

branch_0x801b7ff4:
    bl      receiveMessage__11TMapObjBaseFP9THitActorUl
branch_0x801b7ff8:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl control__11TMapObjTurnFv
control__11TMapObjTurnFv: # 0x801b8008
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x140(sp)
    stw     r31, 0x13c(sp)
    mr      r31, r3
    stw     r30, 0x138(sp)
    bl      control__11TMapObjBaseFv
    lfs     f1, -0x2c48(r2)
    lfs     f0, 0x158(r31)
    fcmpu   cr0, f1, f0
    beq-    branch_0x801b8578
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0x170(r12)
    mtlr    r12
    blrl
    lwz     r0, 0x150(r31)
    cmpwi   r0, 0x1
    beq-    branch_0x801b827c
    bge-    branch_0x801b8064
    cmpwi   r0, 0x0
    bge-    branch_0x801b8070
    b       branch_0x801b8538

branch_0x801b8064:
    cmpwi   r0, 0x3
    bge-    branch_0x801b8538
    b       branch_0x801b8330

branch_0x801b8070:
    lfs     f2, 0x154(r31)
    lfs     f1, 0x118(r31)
    lfs     f0, -0x2c38(r2)
    fadds   f1, f2, f1
    b       branch_0x801b8088

branch_0x801b8084:
    fsubs   f1, f1, f0
branch_0x801b8088:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x801b8084
    lfs     f0, -0x2c38(r2)
    lfs     f3, -0x2c48(r2)
    b       branch_0x801b80a4

branch_0x801b80a0:
    fadds   f1, f1, f0
branch_0x801b80a4:
    fcmpo   cr0, f1, f3
    blt+    branch_0x801b80a0
    stfs    f1, 0x30(r31)
    addi    r4, sp, 0xf4
    lfs     f2, -0x2c34(r2)
    lfs     f0, 0x30(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f2, f0
    lwz     r6, R13Off_m0x5ea8(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    lfs     f1, -0x2c30(r2)
    fctiwz  f0, f0
    stfd    f0, 0x130(sp)
    lwz     r5, 0x134(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f4, r6, r0
    lfsx    f5, r3, r0
    fneg    f0, f4
    stfs    f1, 0xf4(sp)
    stfs    f3, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f3, 0x100(sp)
    stfs    f3, 0x104(sp)
    stfs    f5, 0x108(sp)
    stfs    f0, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f3, 0x114(sp)
    stfs    f4, 0x118(sp)
    stfs    f5, 0x11c(sp)
    stfs    f3, 0x120(sp)
    lfs     f0, 0x34(r31)
    fcmpu   cr0, f3, f0
    beq-    branch_0x801b8210
    lfs     f0, 0x30(r31)
    mr      r5, r4
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r3, sp, 0xc4
    fmuls   f0, f2, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x130(sp)
    lwz     r7, 0x134(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f4, r8, r0
    lfsx    f5, r6, r0
    fneg    f0, f4
    stfs    f1, 0xf4(sp)
    stfs    f3, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f3, 0x100(sp)
    stfs    f3, 0x104(sp)
    stfs    f5, 0x108(sp)
    stfs    f0, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f3, 0x114(sp)
    stfs    f4, 0x118(sp)
    stfs    f5, 0x11c(sp)
    stfs    f3, 0x120(sp)
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f2, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r7, 0x12c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f2
    stfs    f4, 0xc4(sp)
    stfs    f3, 0xc8(sp)
    stfs    f2, 0xcc(sp)
    stfs    f3, 0xd0(sp)
    stfs    f3, 0xd4(sp)
    stfs    f1, 0xd8(sp)
    stfs    f3, 0xdc(sp)
    stfs    f3, 0xe0(sp)
    stfs    f0, 0xe4(sp)
    stfs    f3, 0xe8(sp)
    stfs    f4, 0xec(sp)
    stfs    f3, 0xf0(sp)
    bl      PSMTXConcat
    b       branch_0x801b8538

branch_0x801b8210:
    lfs     f0, 0x30(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f2, f0
    lwz     r5, R13Off_m0x5ea8(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r4, 0x12c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    lfsx    f4, r3, r0
    fneg    f0, f2
    stfs    f1, 0xf4(sp)
    stfs    f3, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f3, 0x100(sp)
    stfs    f3, 0x104(sp)
    stfs    f4, 0x108(sp)
    stfs    f0, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f3, 0x114(sp)
    stfs    f2, 0x118(sp)
    stfs    f4, 0x11c(sp)
    stfs    f3, 0x120(sp)
    b       branch_0x801b8538

branch_0x801b827c:
    lfs     f2, 0x154(r31)
    lfs     f1, 0x11c(r31)
    lfs     f0, -0x2c38(r2)
    fadds   f1, f2, f1
    b       branch_0x801b8294

branch_0x801b8290:
    fsubs   f1, f1, f0
branch_0x801b8294:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x801b8290
    lfs     f0, -0x2c38(r2)
    lfs     f2, -0x2c48(r2)
    b       branch_0x801b82b0

branch_0x801b82ac:
    fadds   f1, f1, f0
branch_0x801b82b0:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801b82ac
    stfs    f1, 0x34(r31)
    lfs     f1, -0x2c34(r2)
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f1, f0
    lwz     r5, R13Off_m0x5ea8(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r4, 0x12c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f1, r5, r0
    lfsx    f3, r3, r0
    fneg    f0, f1
    stfs    f3, 0xf4(sp)
    stfs    f2, 0xf8(sp)
    stfs    f1, 0xfc(sp)
    stfs    f2, 0x100(sp)
    stfs    f2, 0x104(sp)
    lfs     f1, -0x2c30(r2)
    stfs    f1, 0x108(sp)
    stfs    f2, 0x10c(sp)
    stfs    f2, 0x110(sp)
    stfs    f0, 0x114(sp)
    stfs    f2, 0x118(sp)
    stfs    f3, 0x11c(sp)
    stfs    f2, 0x120(sp)
    b       branch_0x801b8538

branch_0x801b8330:
    lfs     f2, 0x154(r31)
    lfs     f1, 0x120(r31)
    lfs     f0, -0x2c38(r2)
    fadds   f1, f2, f1
    b       branch_0x801b8348

branch_0x801b8344:
    fsubs   f1, f1, f0
branch_0x801b8348:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x801b8344
    lfs     f0, -0x2c38(r2)
    lfs     f3, -0x2c48(r2)
    b       branch_0x801b8364

branch_0x801b8360:
    fadds   f1, f1, f0
branch_0x801b8364:
    fcmpo   cr0, f1, f3
    blt+    branch_0x801b8360
    stfs    f1, 0x38(r31)
    addi    r4, sp, 0xf4
    lfs     f2, -0x2c34(r2)
    lfs     f0, 0x38(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f2, f0
    lwz     r6, R13Off_m0x5ea8(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r5, 0x12c(sp)
    clrlwi  r5, r5, 16
    sraw    r0, r5, r0
    slwi    r0, r0, 2
    lfsx    f1, r6, r0
    lfsx    f4, r3, r0
    fneg    f0, f1
    stfs    f4, 0xf4(sp)
    stfs    f0, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f3, 0x100(sp)
    stfs    f1, 0x104(sp)
    stfs    f4, 0x108(sp)
    stfs    f3, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f3, 0x114(sp)
    stfs    f3, 0x118(sp)
    lfs     f1, -0x2c30(r2)
    stfs    f1, 0x11c(sp)
    stfs    f3, 0x120(sp)
    lfs     f0, 0x34(r31)
    fcmpu   cr0, f3, f0
    beq-    branch_0x801b84d0
    lfs     f0, 0x38(r31)
    mr      r5, r4
    lwz     r0, R13Off_m0x5eac(r13)
    addi    r3, sp, 0x94
    fmuls   f0, f2, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r7, 0x12c(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f4, r8, r0
    lfsx    f5, r6, r0
    fneg    f0, f4
    stfs    f5, 0xf4(sp)
    stfs    f0, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f3, 0x100(sp)
    stfs    f4, 0x104(sp)
    stfs    f5, 0x108(sp)
    stfs    f3, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f3, 0x114(sp)
    stfs    f3, 0x118(sp)
    stfs    f1, 0x11c(sp)
    stfs    f3, 0x120(sp)
    lfs     f0, 0x34(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f2, f0
    lwz     r8, R13Off_m0x5ea8(r13)
    lwz     r6, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x130(sp)
    lwz     r7, 0x134(sp)
    clrlwi  r7, r7, 16
    sraw    r0, r7, r0
    slwi    r0, r0, 2
    lfsx    f2, r8, r0
    lfsx    f4, r6, r0
    fneg    f0, f2
    stfs    f4, 0x94(sp)
    stfs    f3, 0x98(sp)
    stfs    f2, 0x9c(sp)
    stfs    f3, 0xa0(sp)
    stfs    f3, 0xa4(sp)
    stfs    f1, 0xa8(sp)
    stfs    f3, 0xac(sp)
    stfs    f3, 0xb0(sp)
    stfs    f0, 0xb4(sp)
    stfs    f3, 0xb8(sp)
    stfs    f4, 0xbc(sp)
    stfs    f3, 0xc0(sp)
    bl      PSMTXConcat
    b       branch_0x801b8538

branch_0x801b84d0:
    lfs     f0, 0x38(r31)
    lwz     r0, R13Off_m0x5eac(r13)
    fmuls   f0, f2, f0
    lwz     r5, R13Off_m0x5ea8(r13)
    lwz     r3, R13Off_m0x5ea4(r13)
    fctiwz  f0, f0
    stfd    f0, 0x128(sp)
    lwz     r4, 0x12c(sp)
    clrlwi  r4, r4, 16
    sraw    r0, r4, r0
    slwi    r0, r0, 2
    lfsx    f2, r5, r0
    lfsx    f4, r3, r0
    fneg    f0, f2
    stfs    f4, 0xf4(sp)
    stfs    f0, 0xf8(sp)
    stfs    f3, 0xfc(sp)
    stfs    f3, 0x100(sp)
    stfs    f2, 0x104(sp)
    stfs    f4, 0x108(sp)
    stfs    f3, 0x10c(sp)
    stfs    f3, 0x110(sp)
    stfs    f3, 0x114(sp)
    stfs    f3, 0x118(sp)
    stfs    f1, 0x11c(sp)
    stfs    f3, 0x120(sp)
branch_0x801b8538:
    lfs     f0, 0x10(r31)
    addi    r3, r31, 0x0
    addi    r30, sp, 0xf4
    stfs    f0, 0x100(sp)
    lfs     f0, 0x14(r31)
    stfs    f0, 0x110(sp)
    lfs     f0, 0x18(r31)
    stfs    f0, 0x120(sp)
    lfs     f1, 0x110(sp)
    lfs     f0, 0x108(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0x110(sp)
    bl      getModel__10TLiveActorCFv
    lwz     r4, 0x58(r3)
    mr      r3, r30
    bl      PSMTXCopy
branch_0x801b8578:
    lwz     r0, 0x144(sp)
    lwz     r31, 0x13c(sp)
    lwz     r30, 0x138(sp)
    mtlr    r0
    addi    sp, sp, 0x140
    blr


.globl turn__11TMapObjTurnFv
turn__11TMapObjTurnFv: # 0x801b8590
    stwu    sp, -0x30(sp)
    lfs     f1, 0x154(r3)
    lfs     f0, 0x158(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x154(r3)
    lfs     f1, 0x154(r3)
    lfs     f0, -0x2c38(r2)
    b       branch_0x801b85b4

branch_0x801b85b0:
    fsubs   f1, f1, f0
branch_0x801b85b4:
    fcmpo   cr0, f1, f0
    cror    2, 1, 2
    beq+    branch_0x801b85b0
    lfs     f0, -0x2c38(r2)
    lfs     f2, -0x2c48(r2)
    b       branch_0x801b85d0

branch_0x801b85cc:
    fadds   f1, f1, f0
branch_0x801b85d0:
    fcmpo   cr0, f1, f2
    blt+    branch_0x801b85cc
    stfs    f1, 0x154(r3)
    lwz     r0, 0xf8(r3)
    rlwinm. r0, r0, 0, 15, 15
    beq-    branch_0x801b8650
    lfs     f0, 0x154(r3)
    lis     r4, unk_b60b60b7@h
    addi    r0, r4, unk_b60b60b7@l
    fabs    f0, f0
    fctiwz  f0, f0
    stfd    f0, 0x28(sp)
    lwz     r5, 0x2c(sp)
    mulhw   r0, r0, r5
    add     r0, r0, r5
    srawi   r0, r0, 7
    srwi    r4, r0, 31
    add     r0, r0, r4
    mulli   r0, r0, 0xb4
    subf.   r0, r0, r5
    bne-    branch_0x801b862c
    stfs    f2, 0x158(r3)
    b       branch_0x801b867c

branch_0x801b862c:
    lfs     f1, 0x160(r3)
    lfs     f0, 0x158(r3)
    fabs    f2, f1
    fabs    f3, f0
    fcmpo   cr0, f3, f2
    ble-    branch_0x801b867c
    fsubs   f0, f0, f1
    stfs    f0, 0x158(r3)
    b       branch_0x801b867c

branch_0x801b8650:
    lfs     f1, 0x158(r3)
    lfs     f0, 0x160(r3)
    fsubs   f0, f1, f0
    stfs    f0, 0x158(r3)
    lfs     f1, 0x160(r3)
    lfs     f0, 0x158(r3)
    fabs    f1, f1
    fabs    f0, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801b867c
    stfs    f2, 0x158(r3)
branch_0x801b867c:
    addi    sp, sp, 0x30
    blr


.globl touchWater__11TMapObjTurnFP9THitActor
touchWater__11TMapObjTurnFP9THitActor: # 0x801b8684
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    stw     r31, 0x6c(sp)
    stw     r30, 0x68(sp)
    mr      r30, r3
    lfs     f1, 0x158(r3)
    lfs     f0, 0x164(r3)
    fabs    f2, f1
    fcmpo   cr0, f2, f0
    bge-    branch_0x801b86c8
    lfs     f0, 0x15c(r30)
    fadds   f0, f1, f0
    stfs    f0, 0x158(r30)
    b       branch_0x801b87f4

branch_0x801b86c8:
    lbz     r0, 0x168(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801b87f4
    lwz     r4, 0x138(r30)
    lwz     r3, 0x4c(r4)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801b86f0
    li      r0, 0x1
    b       branch_0x801b86f4

branch_0x801b86f0:
    li      r0, 0x0
branch_0x801b86f4:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b8714
    lis     r4, unk_2000000e@h
    lwz     r3, R13Off_m0x62b0(r13)
    addi    r4, r4, unk_2000000e@l
    bl      makeObjAppear__18TMapObjBaseManagerFUl
    mr      r31, r3
    b       branch_0x801b8718

branch_0x801b8714:
    mr      r31, r4
branch_0x801b8718:
    cmplwi  r31, 0x0
    beq-    branch_0x801b87f4
    mr      r3, r31
    lfs     f30, 0x140(r30)
    lwz     r12, 0x0(r31)
    lfs     f31, 0x13c(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f2, 0x14(r30)
    lfs     f1, -0x2c2c(r2)
    lfs     f3, 0x18(r30)
    lfs     f0, 0x10(r30)
    fadds   f1, f2, f1
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f3, 0x18(r31)
    lwz     r0, 0x74(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801b87a8
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x8(r3)
    lfs     f1, 0x18(r3)
    fmuls   f0, f0, f31
    lfs     f2, 0x28(r3)
    fmadds  f1, f1, f31, f30
    fmuls   f2, f2, f31
    stfs    f0, 0xac(r31)
    stfs    f1, 0xb0(r31)
    stfs    f2, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x801b87ec

branch_0x801b87a8:
    lfs     f1, 0x30(r30)
    addi    r3, sp, 0x34
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, 0x3c(sp)
    lfs     f1, 0x4c(sp)
    fmuls   f0, f0, f31
    lfs     f2, 0x5c(sp)
    fmadds  f1, f1, f31, f30
    fmuls   f2, f2, f31
    stfs    f0, 0xac(r31)
    stfs    f1, 0xb0(r31)
    stfs    f2, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801b87ec:
    li      r0, 0x0
    stb     r0, 0x168(r30)
branch_0x801b87f4:
    lwz     r0, 0x84(sp)
    li      r3, 0x1
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    mtlr    r0
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    blr


.globl __ct__16TMapObjMessengerFPCc
__ct__16TMapObjMessengerFPCc: # 0x801b8818
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    mr      r31, r3
    bl      __ct__9THitActorFPCc
    lis     r3, __vvt__16TMapObjMessenger@ha
    addi    r3, r3, __vvt__16TMapObjMessenger@l
    stw     r3, 0x0(r31)
    addi    r3, r3, 0x24
    li      r0, 0x0
    stw     r3, 0x20(r31)
    mr      r3, r31
    stw     r0, 0x68(r31)
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl receiveMessage__16TMapObjMessengerFP9THitActorUl
receiveMessage__16TMapObjMessengerFP9THitActorUl: # 0x801b8864
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


.globl __ct__14TMapObjLibWaveFffff
__ct__14TMapObjLibWaveFffff: # 0x801b8894
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x50(sp)
    stfd    f31, 0x48(sp)
    fmr     f31, f4
    stfd    f30, 0x40(sp)
    fmr     f30, f3
    stfd    f29, 0x38(sp)
    fmr     f29, f2
    stfd    f28, 0x30(sp)
    fmr     f28, f1
    stw     r31, 0x2c(sp)
    mr      r31, r3
    bl      rand
    xoris   r0, r3, 0x8000
    lfd     f3, -0x2c20(r2)
    stw     r0, 0x24(sp)
    lis     r0, 0x4330
    lfs     f1, -0x2c28(r2)
    mr      r3, r31
    stw     r0, 0x20(sp)
    lfs     f0, -0x2c38(r2)
    lfd     f2, 0x20(sp)
    fsubs   f2, f2, f3
    fmuls   f1, f1, f2
    fmuls   f0, f0, f1
    stfs    f0, 0x0(r31)
    stfs    f28, 0x4(r31)
    lfs     f0, -0x2c48(r2)
    stfs    f0, 0x8(r31)
    stfs    f29, 0xc(r31)
    stfs    f30, 0x10(r31)
    stfs    f31, 0x14(r31)
    lwz     r0, 0x54(sp)
    lfd     f31, 0x48(sp)
    lfd     f30, 0x40(sp)
    lfd     f29, 0x38(sp)
    lfd     f28, 0x30(sp)
    lwz     r31, 0x2c(sp)
    addi    sp, sp, 0x50
    mtlr    r0
    blr


.globl movement__14TMapObjLibWaveFv
movement__14TMapObjLibWaveFv: # 0x801b893c
    lfs     f2, 0x8(r3)
    lfs     f1, -0x2c48(r2)
    fcmpo   cr0, f2, f1
    ble-    branch_0x801b8968
    lfs     f0, 0x14(r3)
    fsubs   f0, f2, f0
    stfs    f0, 0x8(r3)
    lfs     f0, 0x8(r3)
    fcmpo   cr0, f0, f1
    bge-    branch_0x801b8968
    stfs    f1, 0x8(r3)
branch_0x801b8968:
    lfs     f1, 0x0(r3)
    lfs     f0, -0x7a30(r13)
    fadds   f0, f1, f0
    stfs    f0, 0x0(r3)
    lfs     f1, 0x0(r3)
    lfs     f0, -0x2c38(r2)
    fcmpo   cr0, f1, f0
    blelr-    

    fsubs   f0, f1, f0
    stfs    f0, 0x0(r3)
    blr


.globl getCurrentHeight__14TMapObjLibWaveCFff
getCurrentHeight__14TMapObjLibWaveCFff: # 0x801b8994
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    lwz     r3, R13Off_m0x626c(r13)
    bl      getWaveHeight__11TMapObjWaveCFff
    lfs     f0, 0x8(r31)
    lwz     r0, 0x24(sp)
    fsubs   f1, f1, f0
    lwz     r31, 0x1c(sp)
    mtlr    r0
    addi    sp, sp, 0x20
    blr


.globl push__14TMapObjLibWaveFv
push__14TMapObjLibWaveFv: # 0x801b89cc
    lfs     f1, 0x8(r3)
    lfs     f0, 0x10(r3)
    fadds   f0, f1, f0
    stfs    f0, 0x8(r3)
    lfs     f0, 0x8(r3)
    lfs     f1, 0xc(r3)
    fcmpo   cr0, f0, f1
    blelr-    

    stfs    f1, 0x8(r3)
    blr


.globl emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801b89f4
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x28(sp)
    mr      r6, r0
    stw     r31, 0x24(sp)
    addi    r31, r7, 0x0
    addi    r7, r8, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801b8a5c
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x801b8a5c:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl emitAndBindScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
emitAndBindScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801b8a70
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x28(sp)
    mr      r6, r0
    stw     r31, 0x24(sp)
    addi    r31, r7, 0x0
    addi    r7, r8, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emitAndBindToPosPtr__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801b8ad8
    lfs     f0, 0x0(r31)
    stfs    f0, 0x154(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x158(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x15c(r3)
    lfs     f0, 0x0(r31)
    stfs    f0, 0x174(r3)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x178(r3)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x17c(r3)
branch_0x801b8ad8:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
emitAndScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_: # 0x801b8aec
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x20(sp)
    mr      r6, r0
    stw     r31, 0x1c(sp)
    mr      r31, r3
    addi    r7, r31, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    cmplwi  r3, 0x0
    beq-    branch_0x801b8b50
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
branch_0x801b8b50:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl emitAndRotateScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_
emitAndRotateScale__11TMapObjBaseCFlUcPCQ29JGeometry8TVec3_f_: # 0x801b8b64
    mflr    r0
    stw     r0, 0x4(sp)
    addi    r0, r5, 0x0
    addi    r5, r6, 0x0
    stwu    sp, -0x50(sp)
    mr      r6, r0
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    mr      r30, r3
    addi    r7, r30, 0x0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r31, r3
    beq-    branch_0x801b8c3c
    lfs     f3, -0x2c14(r2)
    addi    r6, r31, 0x124
    lfs     f0, 0x30(r30)
    lfs     f2, 0x34(r30)
    fdivs   f0, f0, f3
    lfs     f1, 0x38(r30)
    lfs     f4, -0x2c18(r2)
    fdivs   f2, f2, f3
    fdivs   f1, f1, f3
    fmuls   f0, f4, f0
    fmuls   f2, f4, f2
    fmuls   f1, f4, f1
    fctiwz  f0, f0
    fctiwz  f2, f2
    fctiwz  f1, f1
    stfd    f0, 0x30(sp)
    stfd    f2, 0x40(sp)
    lwz     r0, 0x34(sp)
    stfd    f1, 0x38(sp)
    lwz     r3, 0x44(sp)
    sth     r0, 0x16c(r31)
    lwz     r0, 0x3c(sp)
    sth     r3, 0x16e(r31)
    sth     r0, 0x170(r31)
    lha     r3, 0x16c(r31)
    lha     r4, 0x16e(r31)
    lha     r5, 0x170(r31)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lfs     f0, 0x24(r30)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x24(r30)
    stfs    f0, 0x174(r31)
    lfs     f0, 0x28(r30)
    stfs    f0, 0x178(r31)
    lfs     f0, 0x2c(r30)
    stfs    f0, 0x17c(r31)
branch_0x801b8c3c:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    addi    sp, sp, 0x50
    blr


.globl emitAndSRT__11TMapObjBaseFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_
emitAndSRT__11TMapObjBaseFlUcPCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_: # 0x801b8c54
    mflr    r0
    mr      r8, r3
    stw     r0, 0x4(sp)
    addi    r0, r4, 0x0
    addi    r4, r8, 0x0
    stwu    sp, -0x50(sp)
    stw     r31, 0x4c(sp)
    stw     r30, 0x48(sp)
    addi    r30, r7, 0x0
    addi    r7, r5, 0x0
    stw     r29, 0x44(sp)
    addi    r29, r6, 0x0
    mr      r6, r0
    lwz     r3, R13Off_m0x6070(r13)
    bl      emit__21TMarioParticleManagerFlPCQ29JGeometry8TVec3_f_UcPCv
    mr.     r31, r3
    beq-    branch_0x801b8d18
    lfs     f0, 0x0(r29)
    addi    r6, r31, 0x124
    lfs     f1, 0x4(r29)
    fctiwz  f0, f0
    fctiwz  f2, f1
    lfs     f1, 0x8(r29)
    stfd    f0, 0x28(sp)
    fctiwz  f0, f1
    stfd    f2, 0x38(sp)
    lwz     r0, 0x2c(sp)
    stfd    f0, 0x30(sp)
    lwz     r3, 0x3c(sp)
    sth     r0, 0x16c(r31)
    lwz     r0, 0x34(sp)
    sth     r3, 0x16e(r31)
    sth     r0, 0x170(r31)
    lha     r3, 0x16c(r31)
    lha     r4, 0x16e(r31)
    lha     r5, 0x170(r31)
    bl      JPAGetXYZRotateMtx__FsssPA4_f
    lfs     f0, 0x0(r30)
    stfs    f0, 0x154(r31)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x158(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x15c(r31)
    lfs     f0, 0x0(r30)
    stfs    f0, 0x174(r31)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x178(r31)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x17c(r31)
branch_0x801b8d18:
    lwz     r0, 0x54(sp)
    lwz     r31, 0x4c(sp)
    lwz     r30, 0x48(sp)
    mtlr    r0
    lwz     r29, 0x44(sp)
    addi    sp, sp, 0x50
    blr


.globl emitColumnWater__11TMapObjBaseFv
emitColumnWater__11TMapObjBaseFv: # 0x801b8d34
    mflr    r0
    lis     r4, unk_80390c68@h
    stw     r0, 0x4(sp)
    addi    r5, r4, unk_80390c68@l
    li      r6, 0x0
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r3, 0x0
    addi    r4, r31, 0x10
    lwz     r3, R13Off_m0x70b0(r13)
    bl      makeOneEnemyAppear__10TConductorFRCQ29JGeometry8TVec3_f_PCci
    cmplwi  r3, 0x0
    beq-    branch_0x801b8d74
    addi    r4, r31, 0x10
    addi    r5, r31, 0x24
    bl      generate__17TEffectColumWaterFRQ29JGeometry8TVec3_f_RQ29JGeometry8TVec3_f_
branch_0x801b8d74:
    lwz     r0, 0x1c(sp)
    lwz     r31, 0x14(sp)
    addi    sp, sp, 0x18
    mtlr    r0
    blr


.globl marioHipAttack__11TMapObjBaseCFv
marioHipAttack__11TMapObjBaseCFv: # 0x801b8d88
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x28(sp)
    stw     r31, 0x24(sp)
    mr      r31, r3
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x801b8de0
    bl      SMS_IsMarioStatusHipDrop__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b8de0
    bl      SMS_GetMarioGrLevel__Fv
    lwz     r4, R13Off_m0x60b4(r13)
    lwz     r3, R13Off_m0x60a0(r13)
    lfs     f2, 0x4(r4)
    lfs     f0, 0x0(r3)
    fadds   f0, f2, f0
    fcmpo   cr0, f0, f1
    bge-    branch_0x801b8de0
    li      r3, 0x1
    b       branch_0x801b8de4

branch_0x801b8de0:
    li      r3, 0x0
branch_0x801b8de4:
    lwz     r0, 0x2c(sp)
    lwz     r31, 0x24(sp)
    addi    sp, sp, 0x28
    mtlr    r0
    blr


.globl marioHeadAttack__11TMapObjBaseCFv
marioHeadAttack__11TMapObjBaseCFv: # 0x801b8df8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x108(r3)
    lwz     r3, R13Off_m0x60b4(r13)
    fsubs   f0, f1, f0
    lfs     f1, 0x4(r3)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801b8e48
    bl      SMS_IsMarioStatusTypeJumping__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b8e48
    lwz     r3, R13Off_m0x60a0(r13)
    lfs     f0, -0x2c48(r2)
    lfs     f1, 0x0(r3)
    fcmpo   cr0, f1, f0
    ble-    branch_0x801b8e48
    li      r3, 0x1
    b       branch_0x801b8e4c

branch_0x801b8e48:
    li      r3, 0x0
branch_0x801b8e4c:
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl marioIsOn__11TMapObjBaseCFv
marioIsOn__11TMapObjBaseCFv: # 0x801b8e5c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x801b8e94
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b8e94
    li      r3, 0x1
    b       branch_0x801b8e98

branch_0x801b8e94:
    li      r3, 0x0
branch_0x801b8e98:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl marioIsOn__11TMapObjBaseFPC10TLiveActor
marioIsOn__11TMapObjBaseFPC10TLiveActor: # 0x801b8eac
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      SMS_GetMarioGrPlane__Fv
    lwz     r0, 0x44(r3)
    cmplw   r0, r31
    bne-    branch_0x801b8ee4
    bl      SMS_IsMarioTouchGround4cm__Fv
    clrlwi. r0, r3, 24
    beq-    branch_0x801b8ee4
    li      r3, 0x1
    b       branch_0x801b8ee8

branch_0x801b8ee4:
    li      r3, 0x0
branch_0x801b8ee8:
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl sendMsg__11TMapObjBaseFUlUl
sendMsg__11TMapObjBaseFUlUl: # 0x801b8efc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stmw    r27, 0x1c(sp)
    addi    r27, r3, 0x0
    addi    r28, r4, 0x0
    addi    r29, r5, 0x0
    li      r30, 0x0
    li      r31, 0x0
    b       branch_0x801b8f6c

branch_0x801b8f24:
    lwz     r3, 0x44(r27)
    lwzx    r3, r3, r31
    lwz     r0, 0x4c(r3)
    cmplw   r0, r28
    bne-    branch_0x801b8f40
    li      r0, 0x1
    b       branch_0x801b8f44

branch_0x801b8f40:
    li      r0, 0x0
branch_0x801b8f44:
    clrlwi. r0, r0, 24
    beq-    branch_0x801b8f64
    lwz     r12, 0x0(r3)
    addi    r4, r27, 0x0
    addi    r5, r29, 0x0
    lwz     r12, 0xa0(r12)
    mtlr    r12
    blrl
branch_0x801b8f64:
    addi    r30, r30, 0x1
    addi    r31, r31, 0x4
branch_0x801b8f6c:
    lhz     r0, 0x48(r27)
    cmpw    r30, r0
    blt+    branch_0x801b8f24
    lmw     r27, 0x1c(sp)
    lwz     r0, 0x34(sp)
    addi    sp, sp, 0x30
    mtlr    r0
    blr


.globl waterHitPlane__11TMapObjBaseFP9THitActor
waterHitPlane__11TMapObjBaseFP9THitActor: # 0x801b8f8c
    lwz     r6, 0x68(r3)
    lwz     r5, R13Off_m0x6088(r13)
    slwi    r0, r6, 2
    add     r3, r5, r0
    lwz     r4, 0x2914(r3)
    cmplwi  r4, 0x0
    bne-    branch_0x801b8fb0
    li      r3, 0x0
    blr

branch_0x801b8fb0:
    mulli   r3, r6, 0xc
    lfs     f1, -0x2c48(r2)
    addi    r3, r3, 0x1414
    add     r3, r5, r3
    lfs     f3, 0x0(r3)
    fcmpu   cr0, f1, f3
    bne-    branch_0x801b8fe0
    lfs     f0, 0x8(r3)
    fcmpu   cr0, f1, f0
    bne-    branch_0x801b8fe0
    li      r3, 0x0
    blr

branch_0x801b8fe0:
    lfs     f0, 0x34(r4)
    lfs     f2, -0x2c48(r2)
    fmuls   f0, f3, f0
    fcmpo   cr0, f0, f2
    bgt-    branch_0x801b9008
    lfs     f1, 0x8(r3)
    lfs     f0, 0x3c(r4)
    fmuls   f0, f1, f0
    fcmpo   cr0, f0, f2
    ble-    branch_0x801b9010
branch_0x801b9008:
    li      r3, 0x0
    blr

branch_0x801b9010:
    li      r3, 0x1
    blr


.globl getWaterPos__11TMapObjBaseFP9THitActor
getWaterPos__11TMapObjBaseFP9THitActor: # 0x801b9018
    lwz     r0, 0x68(r3)
    lwz     r4, R13Off_m0x6088(r13)
    mulli   r3, r0, 0xc
    addi    r3, r3, 0x814
    add     r3, r4, r3
    blr


.globl getWaterSpeed__11TMapObjBaseFP9THitActor
getWaterSpeed__11TMapObjBaseFP9THitActor: # 0x801b9030
    lwz     r0, 0x68(r3)
    lwz     r4, R13Off_m0x6088(r13)
    mulli   r3, r0, 0xc
    addi    r3, r3, 0x1414
    add     r3, r4, r3
    blr


.globl getWaterPlane__11TMapObjBaseFP9THitActor
getWaterPlane__11TMapObjBaseFP9THitActor: # 0x801b9048
    lwz     r0, 0x68(r3)
    lwz     r3, R13Off_m0x6088(r13)
    slwi    r0, r0, 2
    add     r3, r3, r0
    lwz     r3, 0x2914(r3)
    blr


.globl getWaterID__11TMapObjBaseFP9THitActor
getWaterID__11TMapObjBaseFP9THitActor: # 0x801b9060
    lwz     r3, 0x68(r3)
    blr


.globl getDistance__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
getDistance__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_: # 0x801b9068
    stwu    sp, -0x18(sp)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x108(r3)
    lfs     f2, 0x4(r4)
    fsubs   f0, f1, f0
    lfs     f4, 0x0(r4)
    lfs     f1, 0x10(r3)
    lfs     f3, 0x8(r4)
    fsubs   f5, f2, f0
    fsubs   f4, f4, f1
    lfs     f2, 0x18(r3)
    lfs     f0, -0x2c48(r2)
    fmuls   f1, f5, f5
    fsubs   f2, f3, f2
    fmadds  f1, f4, f4, f1
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801b90dc
    frsqrte f4, f1
    lfd     f3, -0x2c10(r2)
    lfd     f0, -0x2c08(r2)
    fmul    f2, f4, f4
    fmul    f3, f3, f4
    fnmsub   f0, f1, f2, f0
    fmul    f0, f3, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0x14(sp)
    lfs     f1, 0x14(sp)
branch_0x801b90dc:
    addi    sp, sp, 0x18
    blr


.globl getDistanceXZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
getDistanceXZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_: # 0x801b90e4
    stwu    sp, -0x18(sp)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x18(r3)
    lfs     f2, 0x0(r4)
    fsubs   f3, f1, f0
    lfs     f1, 0x10(r3)
    lfs     f0, -0x2c48(r2)
    fsubs   f2, f2, f1
    fmuls   f1, f3, f3
    fmadds  f1, f2, f2, f1
    fcmpo   cr0, f1, f0
    ble-    branch_0x801b9140
    frsqrte f4, f1
    lfd     f3, -0x2c10(r2)
    lfd     f0, -0x2c08(r2)
    fmul    f2, f4, f4
    fmul    f3, f3, f4
    fnmsub   f0, f1, f2, f0
    fmul    f0, f3, f0
    fmul    f0, f1, f0
    frsp    f0, f0
    stfs    f0, 0x10(sp)
    lfs     f1, 0x10(sp)
branch_0x801b9140:
    addi    sp, sp, 0x18
    blr


.globl getRotYFromAxisZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
getRotYFromAxisZ__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_: # 0x801b9148
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f3, 0x0(r4)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x18(r3)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      atan2
    lwz     r0, 0xc(sp)
    frsp    f1, f1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getRotYFromAxisX__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_
getRotYFromAxisX__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_: # 0x801b9184
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f3, 0x0(r4)
    lfs     f2, 0x10(r3)
    lfs     f1, 0x8(r4)
    lfs     f0, 0x18(r3)
    fsubs   f2, f3, f2
    fsubs   f1, f1, f0
    bl      atan2
    lwz     r0, 0xc(sp)
    frsp    f1, f1
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl makeVecToLocalZ__11TMapObjBaseCFfPQ29JGeometry8TVec3_f_
makeVecToLocalZ__11TMapObjBaseCFfPQ29JGeometry8TVec3_f_: # 0x801b91c0
    mflr    r0
    mr      r5, r3
    stw     r0, 0x4(sp)
    stwu    sp, -0x58(sp)
    stfd    f31, 0x50(sp)
    fmr     f31, f1
    stw     r31, 0x4c(sp)
    mr      r31, r4
    lfs     f1, 0x30(r3)
    lfs     f2, 0x34(r3)
    addi    r3, sp, 0x14
    lfs     f3, 0x38(r5)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, -0x2c48(r2)
    addi    r4, r31, 0x0
    addi    r5, r31, 0x0
    stfs    f0, 0x0(r31)
    addi    r3, sp, 0x14
    stfs    f0, 0x4(r31)
    stfs    f31, 0x8(r31)
    bl      PSMTXMultVec
    lwz     r0, 0x5c(sp)
    lfd     f31, 0x50(sp)
    lwz     r31, 0x4c(sp)
    mtlr    r0
    addi    sp, sp, 0x58
    blr


.globl getNormalVecFromTarget__11TMapObjBaseCFfffPQ29JGeometry8TVec3_f_
getNormalVecFromTarget__11TMapObjBaseCFfffPQ29JGeometry8TVec3_f_: # 0x801b922c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f5, 0x10(r3)
    lfs     f4, 0x18(r3)
    mr      r3, r4
    fsubs   f0, f1, f5
    fsubs   f1, f2, f5
    fsubs   f2, f3, f4
    stfs    f0, 0x0(r4)
    stfs    f1, 0x4(r4)
    stfs    f2, 0x8(r4)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getNormalVecFromTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_
getNormalVecFromTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_: # 0x801b9270
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lfs     f0, 0x10(r3)
    lfs     f3, 0x18(r3)
    mr      r3, r4
    fsubs   f0, f1, f0
    fsubs   f1, f2, f3
    stfs    f0, 0x0(r4)
    lfs     f0, -0x2c48(r2)
    stfs    f0, 0x4(r4)
    stfs    f1, 0x8(r4)
    bl      MsVECNormalize__FP3VecP3Vec
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl rotateVecByAxisY__11TMapObjBaseFPQ29JGeometry8TVec3_f_f
rotateVecByAxisY__11TMapObjBaseFPQ29JGeometry8TVec3_f_f: # 0x801b92b4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0xd0(sp)
    stfd    f31, 0xc8(sp)
    fmr     f31, f1
    stfd    f30, 0xc0(sp)
    stfd    f29, 0xb8(sp)
    stfd    f28, 0xb0(sp)
    stfd    f27, 0xa8(sp)
    stw     r31, 0xa4(sp)
    mr      r31, r3
    lfs     f1, -0x2c48(r2)
    bl      sinf
    fmr     f27, f1
    fmr     f1, f31
    bl      sinf
    fmr     f28, f1
    lfs     f1, -0x2c48(r2)
    bl      sinf
    fmr     f29, f1
    lfs     f1, -0x2c48(r2)
    bl      cosf
    fmr     f30, f1
    fmr     f1, f31
    bl      cosf
    fmr     f31, f1
    lfs     f1, -0x2c48(r2)
    bl      cosf
    fmuls   f0, f27, f28
    lfs     f9, 0x4(r31)
    fmuls   f8, f30, f29
    lfs     f10, 0x0(r31)
    fmuls   f7, f30, f1
    fmsubs  f3, f0, f1, f8
    lfs     f11, 0x8(r31)
    fmadds  f0, f0, f29, f7
    fmuls   f5, f27, f29
    fmuls   f6, f27, f31
    fmuls   f2, f27, f1
    fmuls   f4, f31, f1
    fmuls   f3, f9, f3
    fmuls   f1, f31, f29
    fmuls   f0, f9, f0
    fmadds  f5, f7, f28, f5
    fmadds  f3, f10, f4, f3
    fneg    f7, f28
    fmuls   f4, f9, f6
    fmadds  f3, f11, f5, f3
    fmsubs  f2, f8, f28, f2
    fmadds  f0, f10, f1, f0
    fmuls   f5, f30, f31
    stfs    f3, 0x0(r31)
    fmadds  f1, f10, f7, f4
    fmadds  f0, f11, f2, f0
    fmadds  f1, f11, f5, f1
    stfs    f0, 0x4(r31)
    stfs    f1, 0x8(r31)
    lwz     r0, 0xd4(sp)
    lfd     f31, 0xc8(sp)
    lfd     f30, 0xc0(sp)
    lfd     f29, 0xb8(sp)
    lfd     f28, 0xb0(sp)
    lfd     f27, 0xa8(sp)
    lwz     r31, 0xa4(sp)
    addi    sp, sp, 0xd0
    mtlr    r0
    blr


.globl set_f___Q29JGeometry8TVec3_f_Ffff_801b93c0
set_f___Q29JGeometry8TVec3_f_Ffff_801b93c0: # 0x801b93c0
    stfs    f1, 0x0(r3)
    stfs    f2, 0x4(r3)
    stfs    f3, 0x8(r3)
    blr


.globl setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___Ffff
setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___Ffff: # 0x801b93d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    fmr     f31, f2
    stfd    f30, 0x80(sp)
    fmr     f30, f1
    stfd    f29, 0x78(sp)
    stfd    f28, 0x70(sp)
    stfd    f27, 0x68(sp)
    stfd    f26, 0x60(sp)
    fmr     f26, f3
    stw     r31, 0x5c(sp)
    mr      r31, r3
    bl      sinf
    fmr     f27, f1
    fmr     f1, f31
    bl      sinf
    fmr     f28, f1
    fmr     f1, f26
    bl      sinf
    fmr     f29, f1
    fmr     f1, f30
    bl      cosf
    fmr     f30, f1
    fmr     f1, f31
    bl      cosf
    fmr     f31, f1
    fmr     f1, f26
    bl      cosf
    fmuls   f2, f31, f1
    fmuls   f0, f31, f29
    fmuls   f3, f27, f28
    stfs    f2, 0x0(r31)
    fmuls   f6, f30, f29
    fneg    f2, f28
    stfs    f0, 0xc(r31)
    fmuls   f5, f30, f1
    fmsubs  f0, f3, f1, f6
    stfs    f2, 0x18(r31)
    fmuls   f2, f27, f29
    fmadds  f4, f3, f29, f5
    stfs    f0, 0x4(r31)
    fmuls   f0, f27, f1
    fmuls   f3, f27, f31
    stfs    f4, 0x10(r31)
    fmadds  f2, f5, f28, f2
    fmsubs  f1, f6, f28, f0
    stfs    f3, 0x1c(r31)
    fmuls   f0, f30, f31
    stfs    f2, 0x8(r31)
    stfs    f1, 0x14(r31)
    stfs    f0, 0x20(r31)
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    lfd     f29, 0x78(sp)
    lfd     f28, 0x70(sp)
    lfd     f27, 0x68(sp)
    lfd     f26, 0x60(sp)
    lwz     r31, 0x5c(sp)
    addi    sp, sp, 0x90
    mtlr    r0
    blr


.globl getVerticalVecToTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_
getVerticalVecToTargetXZ__11TMapObjBaseCFffPQ29JGeometry8TVec3_f_: # 0x801b94d0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stfd    f31, 0x58(sp)
    stfd    f30, 0x50(sp)
    stfd    f29, 0x48(sp)
    stw     r31, 0x44(sp)
    mr      r31, r4
    lfs     f0, 0x10(r3)
    lfs     f3, 0x18(r3)
    mr      r3, r31
    fsubs   f0, f1, f0
    fsubs   f1, f2, f3
    stfs    f0, 0x0(r31)
    lfs     f0, -0x2c48(r2)
    stfs    f0, 0x4(r31)
    stfs    f1, 0x8(r31)
    bl      MsVECNormalize__FP3VecP3Vec
    addi    r3, sp, 0x18
    bl      __ct__Q29JGeometry13SMatrix33C_f_Fv
    lfs     f1, -0x2c48(r2)
    addi    r3, sp, 0x18
    lfs     f2, -0x2c00(r2)
    fmr     f3, f1
    bl      setEular__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix33_Q29JGeometry13SMatrix33C_f___Ffff
    addi    r3, sp, 0x18
    li      r4, 0x2
    li      r5, 0x1
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x4(r31)
    addi    r3, sp, 0x18
    li      r4, 0x2
    fmuls   f29, f0, f1
    li      r5, 0x0
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x0(r31)
    addi    r3, sp, 0x18
    li      r4, 0x2
    fmadds  f29, f0, f1, f29
    li      r5, 0x2
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x8(r31)
    addi    r3, sp, 0x18
    li      r4, 0x1
    fmadds  f29, f0, f1, f29
    li      r5, 0x1
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x4(r31)
    addi    r3, sp, 0x18
    li      r4, 0x1
    fmuls   f30, f0, f1
    li      r5, 0x0
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x0(r31)
    addi    r3, sp, 0x18
    li      r4, 0x1
    fmadds  f30, f0, f1, f30
    li      r5, 0x2
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x8(r31)
    addi    r3, sp, 0x18
    li      r4, 0x0
    fmadds  f30, f0, f1, f30
    li      r5, 0x1
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x4(r31)
    addi    r3, sp, 0x18
    li      r4, 0x0
    fmuls   f31, f0, f1
    li      r5, 0x0
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x0(r31)
    addi    r3, sp, 0x18
    li      r4, 0x0
    fmadds  f31, f0, f1, f31
    li      r5, 0x2
    bl      at__Q29JGeometry13SMatrix33C_f_CFUlUl
    lfs     f0, 0x8(r31)
    fmr     f2, f30
    fmr     f3, f29
    mr      r3, r31
    fmadds  f1, f0, f1, f31
    bl      set_f___Q29JGeometry8TVec3_f_Ffff_801b93c0
    lwz     r0, 0x64(sp)
    lfd     f31, 0x58(sp)
    lfd     f30, 0x50(sp)
    mtlr    r0
    lfd     f29, 0x48(sp)
    lwz     r31, 0x44(sp)
    addi    sp, sp, 0x60
    blr


.globl at__Q29JGeometry13SMatrix33C_f_CFUlUl
at__Q29JGeometry13SMatrix33C_f_CFUlUl: # 0x801b963c
    mulli   r4, r4, 0xc
    slwi    r0, r5, 2
    add     r0, r4, r0
    lfsx    f1, r3, r0
    blr


.globl __ct__Q29JGeometry13SMatrix33C_f_Fv
__ct__Q29JGeometry13SMatrix33C_f_Fv: # 0x801b9650
    blr


.globl calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_
calcReflectingVelocity__11TMapObjBaseCFPC12TBGCheckDatafPQ29JGeometry8TVec3_f_: # 0x801b9654
    lfs     f0, -0x2c30(r2)
    lfs     f3, 0x4(r5)
    fadds   f6, f0, f1
    lfs     f2, 0x38(r4)
    lfs     f4, 0x0(r5)
    fmuls   f0, f3, f2
    lfs     f1, 0x34(r4)
    lfs     f5, 0x8(r5)
    fmadds  f2, f4, f1, f0
    lfs     f3, 0x3c(r4)
    lfs     f1, 0x34(r4)
    lfs     f0, 0x0(r5)
    fmadds  f2, f5, f3, f2
    fmuls   f1, f2, f1
    fnmsubs  f0, f6, f1, f0
    stfs    f0, 0x0(r5)
    lfs     f1, 0x38(r4)
    lfs     f0, 0x4(r5)
    fmuls   f1, f2, f1
    fnmsubs  f0, f6, f1, f0
    stfs    f0, 0x4(r5)
    lfs     f1, 0x3c(r4)
    lfs     f0, 0x8(r5)
    fmuls   f1, f2, f1
    fnmsubs  f0, f6, f1, f0
    stfs    f0, 0x8(r5)
    blr


.globl makeObjMtxRotByAxis__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_fPA4_f
makeObjMtxRotByAxis__11TMapObjBaseCFRCQ29JGeometry8TVec3_f_fPA4_f: # 0x801b96c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    fmr     f31, f1
    stw     r31, 0x5c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    addi    r3, sp, 0x1c
    bl      __ct__Q29JGeometry13SMatrix34C_f_Fv
    lfs     f2, -0x2c48(r2)
    fmr     f1, f31
    lfs     f0, -0x2c30(r2)
    mr      r4, r30
    stfs    f2, 0x48(sp)
    addi    r3, sp, 0x1c
    stfs    f2, 0x38(sp)
    stfs    f2, 0x28(sp)
    stfs    f2, 0x34(sp)
    stfs    f2, 0x24(sp)
    stfs    f2, 0x40(sp)
    stfs    f2, 0x20(sp)
    stfs    f2, 0x3c(sp)
    stfs    f2, 0x2c(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x30(sp)
    stfs    f0, 0x1c(sp)
    bl      setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_f
    lfs     f0, 0x1c(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x20(sp)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x24(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x2c(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x30(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x34(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x44(sp)
    stfs    f0, 0x28(r31)
    lfs     f1, 0x0(r31)
    lfs     f0, 0x24(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r31)
    lfs     f1, 0x4(r31)
    lfs     f0, 0x28(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x4(r31)
    lfs     f1, 0x8(r31)
    lfs     f0, 0x2c(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x8(r31)
    lfs     f0, 0x10(r29)
    stfs    f0, 0xc(r31)
    lfs     f1, 0x10(r31)
    lfs     f0, 0x24(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x10(r31)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x28(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x14(r31)
    lfs     f1, 0x18(r31)
    lfs     f0, 0x2c(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x18(r31)
    lfs     f1, 0x14(r29)
    lfs     f0, 0x108(r29)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    lfs     f1, 0x20(r31)
    lfs     f0, 0x24(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x20(r31)
    lfs     f1, 0x24(r31)
    lfs     f0, 0x28(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x24(r31)
    lfs     f1, 0x28(r31)
    lfs     f0, 0x2c(r29)
    fmuls   f0, f1, f0
    stfs    f0, 0x28(r31)
    lfs     f0, 0x18(r29)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x68
    mtlr    r0
    blr


.globl setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_f
setRotate__Q29JGeometry64TRotation3_Q29JGeometry38TMatrix34_Q29JGeometry13SMatrix34C_f___FRCQ29JGeometry8TVec3_f_f: # 0x801b9854
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x98(sp)
    stfd    f31, 0x90(sp)
    fmr     f31, f1
    stfd    f30, 0x88(sp)
    stfd    f29, 0x80(sp)
    stfd    f28, 0x78(sp)
    stfd    f27, 0x70(sp)
    stw     r31, 0x6c(sp)
    mr      r31, r4
    stw     r30, 0x68(sp)
    mr      r30, r3
    lfs     f2, 0x0(r4)
    lfs     f1, 0x4(r4)
    fmuls   f2, f2, f2
    lfs     f3, 0x8(r4)
    fmuls   f1, f1, f1
    lfs     f0, -0x2bfc(r2)
    fmuls   f3, f3, f3
    fadds   f1, f2, f1
    fadds   f1, f3, f1
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801b98c8
    lfs     f29, -0x2c48(r2)
    fmr     f28, f29
    fmr     f27, f28
    b       branch_0x801b98ec

branch_0x801b98c8:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    lfs     f0, -0x2c30(r2)
    lfs     f2, 0x0(r31)
    fmuls   f3, f0, f1
    lfs     f1, 0x4(r31)
    lfs     f0, 0x8(r31)
    fmuls   f27, f2, f3
    fmuls   f28, f1, f3
    fmuls   f29, f0, f3
branch_0x801b98ec:
    fmr     f1, f31
    bl      sinf
    fmr     f30, f1
    fmr     f1, f31
    bl      cosf
    lfs     f0, -0x2c30(r2)
    fmuls   f2, f27, f27
    fmuls   f7, f30, f29
    fsubs   f11, f0, f1
    fmuls   f3, f28, f28
    fmuls   f0, f29, f29
    fmuls   f5, f11, f27
    fmadds  f4, f11, f2, f1
    fmuls   f2, f11, f28
    fmuls   f8, f28, f5
    fmuls   f10, f29, f5
    stfs    f4, 0x0(r30)
    fmuls   f9, f30, f28
    fsubs   f6, f8, f7
    fadds   f4, f8, f7
    fadds   f5, f10, f9
    stfs    f6, 0x4(r30)
    fmuls   f7, f29, f2
    fmuls   f6, f30, f27
    stfs    f5, 0x8(r30)
    fmadds  f2, f11, f3, f1
    stfs    f4, 0x10(r30)
    fsubs   f4, f7, f6
    fsubs   f3, f10, f9
    stfs    f2, 0x14(r30)
    fadds   f2, f7, f6
    stfs    f4, 0x18(r30)
    fmadds  f0, f11, f0, f1
    stfs    f3, 0x20(r30)
    stfs    f2, 0x24(r30)
    stfs    f0, 0x28(r30)
    lwz     r0, 0x9c(sp)
    lfd     f31, 0x90(sp)
    lfd     f30, 0x88(sp)
    lfd     f29, 0x80(sp)
    lfd     f28, 0x78(sp)
    lfd     f27, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x98
    mtlr    r0
    blr


.globl makeMtxRotByAxis__11TMapObjBaseFRCQ29JGeometry8TVec3_f_fPA4_f
makeMtxRotByAxis__11TMapObjBaseFRCQ29JGeometry8TVec3_f_fPA4_f: # 0x801b99a8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x80(sp)
    stfd    f31, 0x78(sp)
    stfd    f30, 0x70(sp)
    fmr     f30, f1
    stw     r31, 0x6c(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x68(sp)
    addi    r30, r3, 0x0
    mr      r4, r30
    lfs     f0, -0x2c48(r2)
    stfs    f0, 0x64(sp)
    stfs    f0, 0x54(sp)
    stfs    f0, 0x44(sp)
    stfs    f0, 0x50(sp)
    stfs    f0, 0x40(sp)
    stfs    f0, 0x5c(sp)
    stfs    f0, 0x3c(sp)
    stfs    f0, 0x58(sp)
    stfs    f0, 0x48(sp)
    lfs     f31, -0x2c30(r2)
    stfs    f31, 0x60(sp)
    stfs    f31, 0x4c(sp)
    stfs    f31, 0x38(sp)
    bl      dot__Q29JGeometry8TVec3_f_CFRCQ29JGeometry8TVec3_f_
    lfs     f0, -0x2bfc(r2)
    fcmpo   cr0, f1, f0
    cror    2, 0, 2
    bne-    branch_0x801b9a34
    lfs     f0, -0x2c48(r2)
    stfs    f0, 0x1c(sp)
    stfs    f0, 0x18(sp)
    stfs    f0, 0x14(sp)
    b       branch_0x801b9a48

branch_0x801b9a34:
    bl      inv_sqrt__Q29JGeometry8TUtil_f_Ff
    fmuls   f1, f31, f1
    addi    r4, r30, 0x0
    addi    r3, sp, 0x14
    bl      scale__Q29JGeometry8TVec3_f_FfRCQ29JGeometry8TVec3_f_
branch_0x801b9a48:
    fmr     f1, f30
    bl      sinf
    fmr     f31, f1
    fmr     f1, f30
    bl      cosf
    lfs     f0, -0x2c30(r2)
    lfs     f7, 0x14(sp)
    fsubs   f6, f0, f1
    lfs     f4, 0x18(sp)
    lfs     f5, 0x1c(sp)
    fmuls   f0, f7, f7
    fmuls   f2, f4, f4
    fmuls   f3, f6, f7
    fmadds  f0, f6, f0, f1
    fmuls   f8, f31, f5
    fmuls   f9, f4, f3
    fmuls   f11, f5, f3
    stfs    f0, 0x38(sp)
    fmuls   f10, f31, f4
    fsubs   f3, f9, f8
    fmuls   f0, f6, f4
    fadds   f4, f11, f10
    stfs    f3, 0x3c(sp)
    fadds   f3, f9, f8
    fmuls   f8, f5, f0
    fmuls   f7, f31, f7
    stfs    f4, 0x40(sp)
    fmadds  f2, f6, f2, f1
    fmuls   f0, f5, f5
    stfs    f3, 0x48(sp)
    fsubs   f4, f8, f7
    stfs    f2, 0x4c(sp)
    fsubs   f3, f11, f10
    fadds   f2, f8, f7
    stfs    f4, 0x50(sp)
    fmadds  f0, f6, f0, f1
    stfs    f3, 0x58(sp)
    stfs    f2, 0x5c(sp)
    stfs    f0, 0x60(sp)
    lfs     f0, 0x38(sp)
    stfs    f0, 0x0(r31)
    lfs     f0, 0x3c(sp)
    stfs    f0, 0x4(r31)
    lfs     f0, 0x40(sp)
    stfs    f0, 0x8(r31)
    lfs     f0, 0x48(sp)
    stfs    f0, 0x10(r31)
    lfs     f0, 0x4c(sp)
    stfs    f0, 0x14(r31)
    lfs     f0, 0x50(sp)
    stfs    f0, 0x18(r31)
    lfs     f0, 0x58(sp)
    stfs    f0, 0x20(r31)
    lfs     f0, 0x5c(sp)
    stfs    f0, 0x24(r31)
    lfs     f0, 0x60(sp)
    stfs    f0, 0x28(r31)
    lwz     r0, 0x84(sp)
    lfd     f31, 0x78(sp)
    lfd     f30, 0x70(sp)
    lwz     r31, 0x6c(sp)
    lwz     r30, 0x68(sp)
    addi    sp, sp, 0x80
    mtlr    r0
    blr


.globl concatOnlyRotFromRight__11TMapObjBaseFPA4_fPA4_fPA4_f
concatOnlyRotFromRight__11TMapObjBaseFPA4_fPA4_fPA4_f: # 0x801b9b4c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stfd    f29, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    lfs     f0, -0x2c48(r2)
    lfs     f31, 0xc(r3)
    lfs     f30, 0x1c(r3)
    lfs     f29, 0x2c(r3)
    stfs    f0, 0xc(r3)
    stfs    f0, 0x1c(r3)
    stfs    f0, 0x2c(r3)
    bl      PSMTXConcat
    stfs    f31, 0xc(r31)
    stfs    f30, 0x1c(r31)
    stfs    f29, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    lfd     f29, 0x20(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f
concatOnlyRotFromLeft__11TMapObjBaseFPA4_fPA4_fPA4_f: # 0x801b9bb8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stfd    f30, 0x28(sp)
    stfd    f29, 0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r5
    lfs     f0, -0x2c48(r2)
    lfs     f31, 0xc(r4)
    lfs     f30, 0x1c(r4)
    lfs     f29, 0x2c(r4)
    stfs    f0, 0xc(r4)
    stfs    f0, 0x1c(r4)
    stfs    f0, 0x2c(r4)
    bl      PSMTXConcat
    stfs    f31, 0xc(r31)
    stfs    f30, 0x1c(r31)
    stfs    f29, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lfd     f30, 0x28(sp)
    lfd     f29, 0x20(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl updateObjMtx__11TMapObjBaseFv
updateObjMtx__11TMapObjBaseFv: # 0x801b9c24
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stfd    f31, 0x60(sp)
    stfd    f30, 0x58(sp)
    stfd    f29, 0x50(sp)
    stfd    f28, 0x48(sp)
    stfd    f27, 0x40(sp)
    stfd    f26, 0x38(sp)
    lfs     f1, 0x14(r3)
    lfs     f0, 0x108(r3)
    lfs     f26, 0x38(r3)
    fsubs   f30, f1, f0
    lfs     f27, 0x34(r3)
    lfs     f28, 0x30(r3)
    lfs     f29, 0x18(r3)
    lfs     f31, 0x10(r3)
    bl      getModel__10TLiveActorCFv
    lfs     f0, -0x2c34(r2)
    fmr     f1, f31
    fmr     f2, f30
    lwz     r3, 0x58(r3)
    fmuls   f4, f0, f28
    fmuls   f3, f0, f27
    fmuls   f0, f0, f26
    fctiwz  f5, f4
    fctiwz  f4, f3
    fctiwz  f0, f0
    stfd    f5, 0x30(sp)
    fmr     f3, f29
    stfd    f4, 0x28(sp)
    lwz     r4, 0x34(sp)
    stfd    f0, 0x20(sp)
    lwz     r5, 0x2c(sp)
    lwz     r6, 0x24(sp)
    bl      MsMtxSetXYZRPH__FPA4_ffffsss
    lwz     r0, 0x6c(sp)
    lfd     f31, 0x60(sp)
    lfd     f30, 0x58(sp)
    mtlr    r0
    lfd     f29, 0x50(sp)
    lfd     f28, 0x48(sp)
    lfd     f27, 0x40(sp)
    lfd     f26, 0x38(sp)
    addi    sp, sp, 0x68
    blr


.globl updateRootMtxTrans__11TMapObjBaseFv
updateRootMtxTrans__11TMapObjBaseFv: # 0x801b9cdc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x20(sp)
    stw     r31, 0x1c(sp)
    mr      r31, r3
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x10(r31)
    stfs    f0, 0xc(r3)
    lfs     f1, 0x14(r31)
    lfs     f0, 0x108(r31)
    fsubs   f0, f1, f0
    stfs    f0, 0xc(r3)
    lfs     f0, 0x18(r31)
    stfs    f0, 0xc(r3)
    lwz     r0, 0x24(sp)
    lwz     r31, 0x1c(sp)
    addi    sp, sp, 0x20
    mtlr    r0
    blr


.globl makeRootMtxRotX__11TMapObjBaseFPA4_f
makeRootMtxRotX__11TMapObjBaseFPA4_f: # 0x801b9d2c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    mr      r30, r3
    lfs     f1, -0x2bf8(r2)
    lfs     f0, 0x30(r3)
    fmuls   f1, f1, f0
    bl      sinf
    lfs     f2, -0x2bf8(r2)
    fmr     f31, f1
    lfs     f0, 0x30(r30)
    fmuls   f1, f2, f0
    bl      cosf
    lfs     f2, -0x2c30(r2)
    fneg    f0, f31
    stfs    f2, 0x0(r31)
    lfs     f3, -0x2c48(r2)
    stfs    f3, 0x4(r31)
    stfs    f3, 0x8(r31)
    lfs     f2, 0x10(r30)
    stfs    f2, 0xc(r31)
    stfs    f3, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f0, 0x18(r31)
    lfs     f2, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f2, f0
    stfs    f0, 0x1c(r31)
    stfs    f3, 0x20(r31)
    stfs    f31, 0x24(r31)
    stfs    f1, 0x28(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setRootMtxRotY__11TMapObjBaseFv
setRootMtxRotY__11TMapObjBaseFv: # 0x801b9ddc
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x2bf8(r2)
    lfs     f0, 0x34(r30)
    lwz     r31, 0x58(r3)
    fmuls   f1, f1, f0
    bl      sinf
    lfs     f2, -0x2bf8(r2)
    fmr     f31, f1
    lfs     f0, 0x34(r30)
    fmuls   f1, f2, f0
    bl      cosf
    stfs    f1, 0x0(r31)
    fneg    f0, f31
    lfs     f4, -0x2c48(r2)
    stfs    f4, 0x4(r31)
    stfs    f31, 0x8(r31)
    lfs     f2, 0x10(r30)
    stfs    f2, 0xc(r31)
    stfs    f4, 0x10(r31)
    lfs     f2, -0x2c30(r2)
    stfs    f2, 0x14(r31)
    stfs    f4, 0x18(r31)
    lfs     f3, 0x14(r30)
    lfs     f2, 0x108(r30)
    fsubs   f2, f3, f2
    stfs    f2, 0x1c(r31)
    stfs    f0, 0x20(r31)
    stfs    f4, 0x24(r31)
    stfs    f1, 0x28(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl makeRootMtxRotY__11TMapObjBaseFPA4_f
makeRootMtxRotY__11TMapObjBaseFPA4_f: # 0x801b9e90
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    mr      r30, r3
    lfs     f1, -0x2bf8(r2)
    lfs     f0, 0x34(r3)
    fmuls   f1, f1, f0
    bl      sinf
    lfs     f2, -0x2bf8(r2)
    fmr     f31, f1
    lfs     f0, 0x34(r30)
    fmuls   f1, f2, f0
    bl      cosf
    stfs    f1, 0x0(r31)
    fneg    f0, f31
    lfs     f4, -0x2c48(r2)
    stfs    f4, 0x4(r31)
    stfs    f31, 0x8(r31)
    lfs     f2, 0x10(r30)
    stfs    f2, 0xc(r31)
    stfs    f4, 0x10(r31)
    lfs     f2, -0x2c30(r2)
    stfs    f2, 0x14(r31)
    stfs    f4, 0x18(r31)
    lfs     f3, 0x14(r30)
    lfs     f2, 0x108(r30)
    fsubs   f2, f3, f2
    stfs    f2, 0x1c(r31)
    stfs    f0, 0x20(r31)
    stfs    f4, 0x24(r31)
    stfs    f1, 0x28(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl setRootMtxRotZ__11TMapObjBaseFv
setRootMtxRotZ__11TMapObjBaseFv: # 0x801b9f40
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    stw     r30, 0x28(sp)
    mr      r30, r3
    bl      getModel__10TLiveActorCFv
    lfs     f1, -0x2bf8(r2)
    lfs     f0, 0x38(r30)
    lwz     r31, 0x58(r3)
    fmuls   f1, f1, f0
    bl      sinf
    lfs     f2, -0x2bf8(r2)
    fmr     f31, f1
    lfs     f0, 0x38(r30)
    fmuls   f1, f2, f0
    bl      cosf
    fneg    f0, f31
    stfs    f1, 0x0(r31)
    stfs    f0, 0x4(r31)
    lfs     f2, -0x2c48(r2)
    stfs    f2, 0x8(r31)
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    stfs    f31, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    stfs    f2, 0x20(r31)
    stfs    f2, 0x24(r31)
    lfs     f0, -0x2c30(r2)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl makeRootMtxRotZ__11TMapObjBaseFPA4_f
makeRootMtxRotZ__11TMapObjBaseFPA4_f: # 0x801b9ff4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stfd    f31, 0x30(sp)
    stw     r31, 0x2c(sp)
    mr      r31, r4
    stw     r30, 0x28(sp)
    mr      r30, r3
    lfs     f1, -0x2bf8(r2)
    lfs     f0, 0x38(r3)
    fmuls   f1, f1, f0
    bl      sinf
    lfs     f2, -0x2bf8(r2)
    fmr     f31, f1
    lfs     f0, 0x38(r30)
    fmuls   f1, f2, f0
    bl      cosf
    fneg    f0, f31
    stfs    f1, 0x0(r31)
    stfs    f0, 0x4(r31)
    lfs     f2, -0x2c48(r2)
    stfs    f2, 0x8(r31)
    lfs     f0, 0x10(r30)
    stfs    f0, 0xc(r31)
    stfs    f31, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lfs     f1, 0x14(r30)
    lfs     f0, 0x108(r30)
    fsubs   f0, f1, f0
    stfs    f0, 0x1c(r31)
    stfs    f2, 0x20(r31)
    stfs    f2, 0x24(r31)
    lfs     f0, -0x2c30(r2)
    stfs    f0, 0x28(r31)
    lfs     f0, 0x18(r30)
    stfs    f0, 0x2c(r31)
    lwz     r0, 0x3c(sp)
    lfd     f31, 0x30(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl makeLowerStr__11TMapObjBaseFPCcPc
makeLowerStr__11TMapObjBaseFPCcPc: # 0x801ba0a4
    lis     r5, unk_803aaa88@ha
    addi    r6, r5, unk_803aaa88@l
    b       branch_0x801ba0e0

branch_0x801ba0b0:
    extsb   r0, r5
    cmpwi   r0, -0x1
    bne-    branch_0x801ba0c4
    li      r0, -0x1
    b       branch_0x801ba0d0

branch_0x801ba0c4:
    clrlwi  r0, r0, 24
    add     r5, r6, r0
    lbz     r0, 0x0(r5)
branch_0x801ba0d0:
    extsb   r0, r0
    stb     r0, 0x0(r4)
    addi    r3, r3, 0x1
    addi    r4, r4, 0x1
branch_0x801ba0e0:
    lbz     r5, 0x0(r3)
    extsb.  r0, r5
    bne+    branch_0x801ba0b0
    li      r0, 0x0
    stb     r0, 0x0(r4)
    blr


.globl moveJoint__11TMapObjBaseFP8J3DJointfff
moveJoint__11TMapObjBaseFP8J3DJointfff: # 0x801ba0f8
    lfs     f0, 0x30(r3)
    fadds   f0, f0, f1
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r3)
    fadds   f0, f0, f2
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r3)
    fadds   f0, f0, f3
    stfs    f0, 0x38(r3)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x24(r3)
    lha     r0, 0x28(r3)
    sth     r0, 0x28(r3)
    lha     r0, 0x2a(r3)
    sth     r0, 0x2a(r3)
    lha     r0, 0x2c(r3)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x38(r3)
    blr


.globl getJointTransX__11TMapObjBaseFP8J3DJoint
getJointTransX__11TMapObjBaseFP8J3DJoint: # 0x801ba168
    lfs     f1, 0x30(r3)
    blr


.globl getJointTransZ__11TMapObjBaseFP8J3DJoint
getJointTransZ__11TMapObjBaseFP8J3DJoint: # 0x801ba170
    lfs     f1, 0x38(r3)
    blr


.globl setJointTransX__11TMapObjBaseFP8J3DJointf
setJointTransX__11TMapObjBaseFP8J3DJointf: # 0x801ba178
    stfs    f1, 0x30(r3)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x24(r3)
    lha     r0, 0x28(r3)
    sth     r0, 0x28(r3)
    lha     r0, 0x2a(r3)
    sth     r0, 0x2a(r3)
    lha     r0, 0x2c(r3)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x38(r3)
    blr


.globl setJointTransY__11TMapObjBaseFP8J3DJointf
setJointTransY__11TMapObjBaseFP8J3DJointf: # 0x801ba1c8
    stfs    f1, 0x34(r3)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x24(r3)
    lha     r0, 0x28(r3)
    sth     r0, 0x28(r3)
    lha     r0, 0x2a(r3)
    sth     r0, 0x2a(r3)
    lha     r0, 0x2c(r3)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x38(r3)
    blr


.globl setJointTransZ__11TMapObjBaseFP8J3DJointf
setJointTransZ__11TMapObjBaseFP8J3DJointf: # 0x801ba218
    stfs    f1, 0x38(r3)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x24(r3)
    lha     r0, 0x28(r3)
    sth     r0, 0x28(r3)
    lha     r0, 0x2a(r3)
    sth     r0, 0x2a(r3)
    lha     r0, 0x2c(r3)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x38(r3)
    blr


.globl getJointScaleY__11TMapObjBaseFP8J3DJoint
getJointScaleY__11TMapObjBaseFP8J3DJoint: # 0x801ba268
    lfs     f1, 0x20(r3)
    blr


.globl setJointScaleY__11TMapObjBaseFP8J3DJointf
setJointScaleY__11TMapObjBaseFP8J3DJointf: # 0x801ba270
    stfs    f1, 0x20(r3)
    lfs     f0, 0x1c(r3)
    stfs    f0, 0x1c(r3)
    lfs     f0, 0x20(r3)
    stfs    f0, 0x20(r3)
    lfs     f0, 0x24(r3)
    stfs    f0, 0x24(r3)
    lha     r0, 0x28(r3)
    sth     r0, 0x28(r3)
    lha     r0, 0x2a(r3)
    sth     r0, 0x2a(r3)
    lha     r0, 0x2c(r3)
    sth     r0, 0x2c(r3)
    lfs     f0, 0x30(r3)
    stfs    f0, 0x30(r3)
    lfs     f0, 0x34(r3)
    stfs    f0, 0x34(r3)
    lfs     f0, 0x38(r3)
    stfs    f0, 0x38(r3)
    blr


.globl calcMap__11TMapObjBaseFv
calcMap__11TMapObjBaseFv: # 0x801ba2c0
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x8(sp)
    lwz     r3, R13Off_m0x6328(r13)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x28(r3)
    lwz     r12, 0x0(r3)
    lwz     r12, 0x10(r12)
    mtlr    r12
    blrl
    lwz     r0, 0xc(sp)
    addi    sp, sp, 0x8
    mtlr    r0
    blr


.globl getBuildingJointObj__11TMapObjBaseFi
getBuildingJointObj__11TMapObjBaseFi: # 0x801ba300
    lwz     r4, R13Off_m0x6328(r13)
    clrlslwi  r0, r3, 16, 2
    lwz     r3, 0x14(r4)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    blr


.globl getBuildingJoint__11TMapObjBaseFi
getBuildingJoint__11TMapObjBaseFi: # 0x801ba328
    lwz     r4, R13Off_m0x6328(r13)
    clrlslwi  r0, r3, 16, 2
    lwz     r3, 0x14(r4)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwz     r3, 0x0(r3)
    lwz     r3, 0x14(r3)
    lwzx    r3, r3, r0
    lwz     r3, 0xc(r3)
    blr


.globl newAndInitBuildingCollisionMove__11TMapObjBaseFiP10TLiveActor
newAndInitBuildingCollisionMove__11TMapObjBaseFiP10TLiveActor: # 0x801ba354
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    li      r3, 0x60
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801ba38c
    mr      r3, r31
    bl      __ct__17TMapCollisionMoveFv
branch_0x801ba38c:
    lis     r3, unk_80390c84@h
    crxor   6, 6, 6
    addi    r5, r3, unk_80390c84@l
    addi    r6, r29, 0x0
    addi    r3, sp, 0x10
    li      r4, 0x40
    bl      snprintf
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r6, r30, 0x0
    addi    r4, sp, 0x10
    lwz     r12, 0x8(r12)
    li      r5, 0x0
    mtlr    r12
    blrl
    lwz     r0, 0x64(sp)
    mr      r3, r31
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor
newAndInitBuildingCollisionWarp__11TMapObjBaseFiP10TLiveActor: # 0x801ba3e8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x60(sp)
    stw     r31, 0x5c(sp)
    stw     r30, 0x58(sp)
    addi    r30, r4, 0x0
    stw     r29, 0x54(sp)
    addi    r29, r3, 0x0
    li      r3, 0x68
    bl      __nw__FUl
    mr.     r31, r3
    beq-    branch_0x801ba420
    mr      r3, r31
    bl      __ct__17TMapCollisionWarpFv
branch_0x801ba420:
    lis     r3, unk_80390c84@h
    crxor   6, 6, 6
    addi    r5, r3, unk_80390c84@l
    addi    r6, r29, 0x0
    addi    r3, sp, 0x10
    li      r4, 0x40
    bl      snprintf
    mr      r3, r31
    lwz     r12, 0x0(r31)
    addi    r6, r30, 0x0
    addi    r4, sp, 0x10
    lwz     r12, 0x8(r12)
    li      r5, 0x0
    mtlr    r12
    blrl
    lwz     r0, 0x64(sp)
    mr      r3, r31
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    mtlr    r0
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x60
    blr


.globl joinToGroup__11TMapObjBaseFPCcP9THitActor
joinToGroup__11TMapObjBaseFPCcP9THitActor: # 0x801ba47c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x68(sp)
    stw     r31, 0x64(sp)
    stw     r30, 0x60(sp)
    mr      r30, r3
    stw     r4, 0xc(sp)
    lwz     r4, R13Off_m0x5db8(r13)
    lwz     r31, 0x4(r4)
    bl      calcKeyCode__Q26JDrama8TNameRefFPCc
    lwz     r12, 0x0(r31)
    addi    r4, r3, 0x0
    addi    r3, r31, 0x0
    lwz     r12, 0x1c(r12)
    mr      r5, r30
    mtlr    r12
    blrl
    addi    r31, r3, 0x10
    addi    r3, sp, 0x3c
    addi    r4, r31, 0x8
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFPQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__6TNode_
    lwz     r0, 0x3c(sp)
    addi    r3, sp, 0x58
    addi    r4, sp, 0x38
    stw     r0, 0x38(sp)
    bl      __ct__Q37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorFRCQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iterator
    lwz     r0, 0x58(sp)
    addi    r5, sp, 0x48
    addi    r4, r31, 0x0
    stw     r0, 0x54(sp)
    addi    r3, sp, 0x44
    addi    r6, sp, 0xc
    lwz     r0, 0x54(sp)
    stw     r0, 0x48(sp)
    bl      insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList_Pv_Q27JGadget14TAllocator_Pv__8iteratorRCPv
    lwz     r0, 0x6c(sp)
    lwz     r31, 0x64(sp)
    lwz     r30, 0x60(sp)
    mtlr    r0
    addi    sp, sp, 0x68
    blr


.globl startAllAnim__11TMapObjBaseFP6MActorPCc
startAllAnim__11TMapObjBaseFP6MActorPCc: # 0x801ba520
    mflr    r0
    lis     r5, unk_803aaa88@ha
    stw     r0, 0x4(sp)
    addi    r5, r5, unk_803aaa88@l
    stwu    sp, -0xa0(sp)
    stw     r31, 0x9c(sp)
    addi    r31, r3, 0x0
    addi    r6, sp, 0x18
    b       branch_0x801ba574

branch_0x801ba544:
    extsb   r0, r3
    cmpwi   r0, -0x1
    bne-    branch_0x801ba558
    li      r0, -0x1
    b       branch_0x801ba564

branch_0x801ba558:
    clrlwi  r0, r0, 24
    add     r3, r5, r0
    lbz     r0, 0x0(r3)
branch_0x801ba564:
    extsb   r0, r0
    stb     r0, 0x0(r6)
    addi    r4, r4, 0x1
    addi    r6, r6, 0x1
branch_0x801ba574:
    lbz     r3, 0x0(r4)
    extsb.  r0, r3
    bne+    branch_0x801ba544
    li      r0, 0x0
    stb     r0, 0x0(r6)
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x0
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801ba5ac
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      setBck__6MActorFPCc
branch_0x801ba5ac:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x5
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801ba5d0
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      setBrk__6MActorFPCc
branch_0x801ba5d0:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x2
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801ba5f4
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      setBpk__6MActorFPCc
branch_0x801ba5f4:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x3
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801ba618
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      setBtp__6MActorFPCc
branch_0x801ba618:
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    li      r5, 0x4
    bl      checkAnmFileExist__6MActorFPCci
    clrlwi. r0, r3, 24
    beq-    branch_0x801ba63c
    addi    r3, r31, 0x0
    addi    r4, sp, 0x18
    bl      setBtk__6MActorFPCc
branch_0x801ba63c:
    lwz     r0, 0xa4(sp)
    lwz     r31, 0x9c(sp)
    addi    sp, sp, 0xa0
    mtlr    r0
    blr


.globl initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10
initPacketMatColor__11TMapObjBaseFP8J3DModel11_GXTevRegIDPC11_GXColorS10: # 0x801ba650
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x30(sp)
    stw     r31, 0x2c(sp)
    li      r31, 0x0
    stw     r30, 0x28(sp)
    addi    r30, r5, 0x0
    stw     r29, 0x24(sp)
    addi    r29, r4, 0x0
    stw     r28, 0x20(sp)
    addi    r28, r3, 0x0
    b       branch_0x801ba698

branch_0x801ba680:
    addi    r3, r28, 0x0
    addi    r4, r31, 0x0
    addi    r5, r29, 0x0
    addi    r6, r30, 0x0
    bl      SMS_InitPacket_OneTevColor__FP8J3DModelUs11_GXTevRegIDPC11_GXColorS10
    addi    r31, r31, 0x1
branch_0x801ba698:
    lwz     r3, 0x4(r28)
    clrlwi  r4, r31, 16
    lhz     r0, 0x24(r3)
    cmplw   r4, r0
    blt+    branch_0x801ba680
    lwz     r0, 0x34(sp)
    lwz     r31, 0x2c(sp)
    lwz     r30, 0x28(sp)
    mtlr    r0
    lwz     r29, 0x24(sp)
    lwz     r28, 0x20(sp)
    addi    sp, sp, 0x30
    blr


.globl isFruit__11TMapObjBaseFP9THitActor
isFruit__11TMapObjBaseFP9THitActor: # 0x801ba6cc
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x390
    bne-    branch_0x801ba6e4
    li      r0, 0x1
    b       branch_0x801ba6e8

branch_0x801ba6e4:
    li      r0, 0x0
branch_0x801ba6e8:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba790
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x391
    bne-    branch_0x801ba704
    li      r0, 0x1
    b       branch_0x801ba708

branch_0x801ba704:
    li      r0, 0x0
branch_0x801ba708:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba790
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x392
    bne-    branch_0x801ba724
    li      r0, 0x1
    b       branch_0x801ba728

branch_0x801ba724:
    li      r0, 0x0
branch_0x801ba728:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba790
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x393
    bne-    branch_0x801ba744
    li      r0, 0x1
    b       branch_0x801ba748

branch_0x801ba744:
    li      r0, 0x0
branch_0x801ba748:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba790
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x394
    bne-    branch_0x801ba764
    li      r0, 0x1
    b       branch_0x801ba768

branch_0x801ba764:
    li      r0, 0x0
branch_0x801ba768:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba790
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x395
    bne-    branch_0x801ba784
    li      r0, 0x1
    b       branch_0x801ba788

branch_0x801ba784:
    li      r0, 0x0
branch_0x801ba788:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ba798
branch_0x801ba790:
    li      r3, 0x1
    blr

branch_0x801ba798:
    li      r3, 0x0
    blr


.globl isCoin__11TMapObjBaseFP9THitActor
isCoin__11TMapObjBaseFP9THitActor: # 0x801ba7a0
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xe
    bne-    branch_0x801ba7b8
    li      r0, 0x1
    b       branch_0x801ba7bc

branch_0x801ba7b8:
    li      r0, 0x0
branch_0x801ba7bc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba804
    addis   r0, r3, 0xe000
    cmplwi  r0, 0xf
    bne-    branch_0x801ba7d8
    li      r0, 0x1
    b       branch_0x801ba7dc

branch_0x801ba7d8:
    li      r0, 0x0
branch_0x801ba7dc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801ba804
    addis   r0, r3, 0xe000
    cmplwi  r0, 0x10
    bne-    branch_0x801ba7f8
    li      r0, 0x1
    b       branch_0x801ba7fc

branch_0x801ba7f8:
    li      r0, 0x0
branch_0x801ba7fc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801ba80c
branch_0x801ba804:
    li      r3, 0x1
    blr

branch_0x801ba80c:
    li      r3, 0x0
    blr


.globl throwObjFromPointWithRot__11TMapObjBaseFP11TMapObjBaseRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff
throwObjFromPointWithRot__11TMapObjBaseFP11TMapObjBaseRCQ29JGeometry8TVec3_f_RCQ29JGeometry8TVec3_f_ff: # 0x801ba814
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x70(sp)
    stfd    f31, 0x68(sp)
    fmr     f31, f2
    stfd    f30, 0x60(sp)
    fmr     f30, f1
    stw     r31, 0x5c(sp)
    addi    r31, r5, 0x0
    stw     r30, 0x58(sp)
    mr      r30, r4
    stw     r29, 0x54(sp)
    mr      r29, r3
    lwz     r12, 0x0(r29)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x0(r30)
    addi    r3, sp, 0x20
    stfs    f0, 0x10(r29)
    lfs     f0, 0x4(r30)
    stfs    f0, 0x14(r29)
    lfs     f0, 0x8(r30)
    stfs    f0, 0x18(r29)
    lfs     f1, 0x0(r31)
    lfs     f2, 0x4(r31)
    lfs     f3, 0x8(r31)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, 0x28(sp)
    lfs     f1, 0x38(sp)
    fmuls   f0, f0, f30
    lfs     f2, 0x48(sp)
    fmadds  f1, f1, f30, f31
    fmuls   f2, f2, f30
    stfs    f0, 0xac(r29)
    stfs    f1, 0xb0(r29)
    stfs    f2, 0xb4(r29)
    lwz     r0, 0xf0(r29)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r29)
    lwz     r0, 0x74(sp)
    lfd     f31, 0x68(sp)
    lfd     f30, 0x60(sp)
    lwz     r31, 0x5c(sp)
    lwz     r30, 0x58(sp)
    lwz     r29, 0x54(sp)
    addi    sp, sp, 0x70
    mtlr    r0
    blr


.globl throwObjToFrontFromPoint__11TMapObjBaseCFP11TMapObjBaseRCQ29JGeometry8TVec3_f_ff
throwObjToFrontFromPoint__11TMapObjBaseCFP11TMapObjBaseRCQ29JGeometry8TVec3_f_ff: # 0x801ba8d8
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x88(sp)
    stfd    f31, 0x80(sp)
    fmr     f31, f2
    stfd    f30, 0x78(sp)
    fmr     f30, f1
    stw     r31, 0x74(sp)
    mr      r31, r5
    stw     r30, 0x70(sp)
    mr      r30, r4
    stw     r29, 0x6c(sp)
    mr      r29, r3
    mr      r3, r30
    lwz     r12, 0x0(r30)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f0, 0x0(r31)
    stfs    f0, 0x10(r30)
    lfs     f0, 0x4(r31)
    stfs    f0, 0x14(r30)
    lfs     f0, 0x8(r31)
    stfs    f0, 0x18(r30)
    lwz     r0, 0x74(r29)
    cmplwi  r0, 0x0
    beq-    branch_0x801ba984
    mr      r3, r29
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x8(r3)
    lfs     f1, 0x18(r3)
    fmuls   f0, f0, f30
    lfs     f2, 0x28(r3)
    fmadds  f1, f1, f30, f31
    fmuls   f2, f2, f30
    stfs    f0, 0xac(r30)
    stfs    f1, 0xb0(r30)
    stfs    f2, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
    b       branch_0x801ba9c8

branch_0x801ba984:
    lfs     f1, 0x30(r29)
    addi    r3, sp, 0x34
    lfs     f2, 0x34(r29)
    lfs     f3, 0x38(r29)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, 0x3c(sp)
    lfs     f1, 0x4c(sp)
    fmuls   f0, f0, f30
    lfs     f2, 0x5c(sp)
    fmadds  f1, f1, f30, f31
    fmuls   f2, f2, f30
    stfs    f0, 0xac(r30)
    stfs    f1, 0xb0(r30)
    stfs    f2, 0xb4(r30)
    lwz     r0, 0xf0(r30)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r30)
branch_0x801ba9c8:
    lwz     r0, 0x8c(sp)
    lfd     f31, 0x80(sp)
    lfd     f30, 0x78(sp)
    mtlr    r0
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    lwz     r29, 0x6c(sp)
    addi    sp, sp, 0x88
    blr


.globl throwObjToFront__11TMapObjBaseCFP11TMapObjBasefff
throwObjToFront__11TMapObjBaseCFP11TMapObjBasefff: # 0x801ba9ec
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x90(sp)
    stfd    f31, 0x88(sp)
    fmr     f31, f3
    stfd    f30, 0x80(sp)
    fmr     f30, f2
    stfd    f29, 0x78(sp)
    fmr     f29, f1
    stw     r31, 0x74(sp)
    mr      r31, r4
    stw     r30, 0x70(sp)
    mr      r30, r3
    mr      r3, r31
    lwz     r12, 0x0(r31)
    lwz     r12, 0xfc(r12)
    mtlr    r12
    blrl
    lfs     f1, 0x14(r30)
    lfs     f2, 0x18(r30)
    lfs     f0, 0x10(r30)
    fadds   f1, f1, f29
    stfs    f0, 0x10(r31)
    stfs    f1, 0x14(r31)
    stfs    f2, 0x18(r31)
    lwz     r0, 0x74(r30)
    cmplwi  r0, 0x0
    beq-    branch_0x801baa9c
    mr      r3, r30
    bl      getModel__10TLiveActorCFv
    lwz     r3, 0x58(r3)
    lfs     f0, 0x8(r3)
    lfs     f1, 0x18(r3)
    fmuls   f0, f0, f30
    lfs     f2, 0x28(r3)
    fmadds  f1, f1, f30, f31
    fmuls   f2, f2, f30
    stfs    f0, 0xac(r31)
    stfs    f1, 0xb0(r31)
    stfs    f2, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
    b       branch_0x801baae0

branch_0x801baa9c:
    lfs     f1, 0x30(r30)
    addi    r3, sp, 0x38
    lfs     f2, 0x34(r30)
    lfs     f3, 0x38(r30)
    bl      MsMtxSetRotRPH__FPA4_ffff
    lfs     f0, 0x40(sp)
    lfs     f1, 0x50(sp)
    fmuls   f0, f0, f30
    lfs     f2, 0x60(sp)
    fmadds  f1, f1, f30, f31
    fmuls   f2, f2, f30
    stfs    f0, 0xac(r31)
    stfs    f1, 0xb0(r31)
    stfs    f2, 0xb4(r31)
    lwz     r0, 0xf0(r31)
    rlwinm  r0, r0, 0, 28, 26
    stw     r0, 0xf0(r31)
branch_0x801baae0:
    lwz     r0, 0x94(sp)
    lfd     f31, 0x88(sp)
    lfd     f30, 0x80(sp)
    mtlr    r0
    lfd     f29, 0x78(sp)
    lwz     r31, 0x74(sp)
    lwz     r30, 0x70(sp)
    addi    sp, sp, 0x90
    blr


.globl checkOnManhole__11TMapObjBaseFv
checkOnManhole__11TMapObjBaseFv: # 0x801bab04
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    mr      r31, r3
    addi    r4, r31, 0xc4
    lfs     f0, 0x14(r3)
    lfs     f1, -0x2bf4(r2)
    lwz     r3, R13Off_m0x6328(r13)
    fadds   f2, f1, f0
    lfs     f1, 0x10(r31)
    lfs     f3, 0x18(r31)
    bl      checkGround__4TMapCFfffPPC12TBGCheckData
    stfs    f1, 0xc8(r31)
    lwz     r3, 0xc4(r31)
    lwz     r3, 0x44(r3)
    cmplwi  r3, 0x0
    beq-    branch_0x801bab78
    lwz     r4, 0x4c(r3)
    addis   r0, r4, 0xc000
    cmplwi  r0, 0xb
    bne-    branch_0x801bab64
    li      r0, 0x1
    b       branch_0x801bab68

branch_0x801bab64:
    li      r0, 0x0
branch_0x801bab68:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bab78
    mr      r4, r31
    bl      makeManholeUnuseful__8TManholeFPC11TMapObjBase
branch_0x801bab78:
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    addi    sp, sp, 0x38
    mtlr    r0
    blr


.globl loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl
loadHideObjInfo__11TMapObjBaseFR20JSUMemoryInputStreamPlPfPfPl: # 0x801bab8c
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x38(sp)
    stw     r31, 0x34(sp)
    addi    r31, r7, 0x0
    stw     r30, 0x30(sp)
    addi    r30, r6, 0x0
    stw     r29, 0x2c(sp)
    addi    r29, r5, 0x0
    li      r5, 0x4
    stw     r28, 0x28(sp)
    addi    r28, r3, 0x0
    bl      read__14JSUInputStreamFPvl
    addi    r3, r28, 0x0
    addi    r4, sp, 0x20
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lfs     f1, -0x2bf0(r2)
    mr      r3, r28
    lfs     f0, 0x20(sp)
    addi    r4, sp, 0x20
    li      r5, 0x4
    fmuls   f0, f1, f0
    stfs    f0, 0x0(r29)
    bl      read__14JSUInputStreamFPvl
    lfs     f1, 0x20(sp)
    lfs     f0, -0x2c48(r2)
    fcmpo   cr0, f1, f0
    bge-    branch_0x801bac08
    lfs     f0, -0x2bf4(r2)
    stfs    f0, 0x20(sp)
branch_0x801bac08:
    lfs     f0, 0x20(sp)
    addi    r3, r28, 0x0
    addi    r4, sp, 0x1c
    stfs    f0, 0x0(r30)
    li      r5, 0x4
    bl      read__14JSUInputStreamFPvl
    lwz     r0, 0x1c(sp)
    cmpwi   r0, 0x0
    bgt-    branch_0x801bac38
    li      r0, 0x4b0
    stw     r0, 0x1c(sp)
    b       branch_0x801bac40

branch_0x801bac38:
    mulli   r0, r0, 0xa
    stw     r0, 0x1c(sp)
branch_0x801bac40:
    lwz     r0, 0x1c(sp)
    stw     r0, 0x0(r31)
    lwz     r0, 0x3c(sp)
    lwz     r31, 0x34(sp)
    lwz     r30, 0x30(sp)
    mtlr    r0
    lwz     r29, 0x2c(sp)
    lwz     r28, 0x28(sp)
    addi    sp, sp, 0x38
    blr


.globl isDemo__11TMapObjBaseFv
isDemo__11TMapObjBaseFv: # 0x801bac68
    lwz     r3, R13Off_m0x6048(r13)
    li      r0, 0x1
    lbz     r3, 0x124(r3)
    cmplwi  r3, 0x1
    beq-    branch_0x801bac88
    cmplwi  r3, 0x2
    beq-    branch_0x801bac88
    li      r0, 0x0
branch_0x801bac88:
    clrlwi. r0, r0, 24
    bne-    branch_0x801bacb0
    cmplwi  r3, 0x3
    li      r0, 0x1
    beq-    branch_0x801baca8
    cmplwi  r3, 0x4
    beq-    branch_0x801baca8
    li      r0, 0x0
branch_0x801baca8:
    clrlwi. r0, r0, 24
    beq-    branch_0x801bacb8
branch_0x801bacb0:
    li      r3, 0x1
    blr

branch_0x801bacb8:
    li      r3, 0x0
    blr


.globl isHideObj__11TMapObjBaseFP9THitActor
isHideObj__11TMapObjBaseFP9THitActor: # 0x801bacc0
    lwz     r3, 0x4c(r3)
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x320
    bne-    branch_0x801bacd8
    li      r0, 0x1
    b       branch_0x801bacdc

branch_0x801bacd8:
    li      r0, 0x0
branch_0x801bacdc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x13
    bne-    branch_0x801bacf8
    li      r0, 0x1
    b       branch_0x801bacfc

branch_0x801bacf8:
    li      r0, 0x0
branch_0x801bacfc:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x12
    bne-    branch_0x801bad18
    li      r0, 0x1
    b       branch_0x801bad1c

branch_0x801bad18:
    li      r0, 0x0
branch_0x801bad1c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x18
    bne-    branch_0x801bad38
    li      r0, 0x1
    b       branch_0x801bad3c

branch_0x801bad38:
    li      r0, 0x0
branch_0x801bad3c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x19
    bne-    branch_0x801bad58
    li      r0, 0x1
    b       branch_0x801bad5c

branch_0x801bad58:
    li      r0, 0x0
branch_0x801bad5c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x1a
    bne-    branch_0x801bad78
    li      r0, 0x1
    b       branch_0x801bad7c

branch_0x801bad78:
    li      r0, 0x0
branch_0x801bad7c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x20
    bne-    branch_0x801bad98
    li      r0, 0x1
    b       branch_0x801bad9c

branch_0x801bad98:
    li      r0, 0x0
branch_0x801bad9c:
    clrlwi. r0, r0, 24
    bne-    branch_0x801badc4
    addis   r0, r3, 0xc000
    cmplwi  r0, 0x3b
    bne-    branch_0x801badb8
    li      r0, 0x1
    b       branch_0x801badbc

branch_0x801badb8:
    li      r0, 0x0
branch_0x801badbc:
    clrlwi. r0, r0, 24
    beq-    branch_0x801badcc
branch_0x801badc4:
    li      r3, 0x1
    blr

branch_0x801badcc:
    li      r3, 0x0
    blr


.globl __dt__16TMapObjMessengerFv
__dt__16TMapObjMessengerFv: # 0x801badd4
    mflr    r0
    stw     r0, 0x4(sp)
    stwu    sp, -0x18(sp)
    stw     r31, 0x14(sp)
    addi    r31, r4, 0x0
    stw     r30, 0x10(sp)
    mr.     r30, r3
    beq-    branch_0x801bae3c
    lis     r3, __vvt__16TMapObjMessenger@ha
    addi    r3, r3, __vvt__16TMapObjMessenger@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    stw     r0, 0x20(r30)
    beq-    branch_0x801bae2c
    lis     r3, __vvt__9THitActor@ha
    addi    r3, r3, __vvt__9THitActor@l
    stw     r3, 0x0(r30)
    addi    r0, r3, 0x24
    addi    r3, r30, 0x0
    stw     r0, 0x20(r30)
    li      r4, 0x0
    bl      __dt__Q26JDrama6TActorFv
branch_0x801bae2c:
    extsh.  r0, r31
    ble-    branch_0x801bae3c
    mr      r3, r30
    bl      __dl__FPv
branch_0x801bae3c:
    lwz     r0, 0x1c(sp)
    mr      r3, r30
    lwz     r31, 0x14(sp)
    lwz     r30, 0x10(sp)
    mtlr    r0
    addi    sp, sp, 0x18
    blr


.globl __sinit_MapObjLib_cpp
__sinit_MapObjLib_cpp: # 0x801bae58
    mflr    r0
    lis     r3, unk_803f9358@ha
    stw     r0, 0x4(sp)
    stwu    sp, -0x10(sp)
    stw     r31, 0xc(sp)
    addi    r31, r3, unk_803f9358@l
    lbz     r0, R13Off_m0x7204(r13)
    extsb.  r0, r0
    bne-    branch_0x801baea0
    addi    r3, r13, R13Off_m0x72b8
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__15JSUList_5MSBgm_Fv@ha
    addi    r4, r3, __dt__15JSUList_5MSBgm_Fv@l
    addi    r3, r13, R13Off_m0x72b8
    addi    r5, r31, 0x0
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7204(r13)
branch_0x801baea0:
    lbz     r0, R13Off_m0x7203(r13)
    extsb.  r0, r0
    bne-    branch_0x801baed0
    addi    r3, r13, R13Off_m0x72ac
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__24JSUList_13MSSetSoundGrp_Fv@ha
    addi    r4, r3, __dt__24JSUList_13MSSetSoundGrp_Fv@l
    addi    r3, r13, R13Off_m0x72ac
    addi    r5, r31, 0xc
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7203(r13)
branch_0x801baed0:
    lbz     r0, R13Off_m0x7202(r13)
    extsb.  r0, r0
    bne-    branch_0x801baf00
    addi    r3, r13, R13Off_m0x72a0
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__21JSUList_10MSSetSound_Fv@ha
    addi    r4, r3, __dt__21JSUList_10MSSetSound_Fv@l
    addi    r3, r13, R13Off_m0x72a0
    addi    r5, r31, 0x18
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7202(r13)
branch_0x801baf00:
    lbz     r0, R13Off_m0x7201(r13)
    extsb.  r0, r0
    bne-    branch_0x801baf30
    addi    r3, r13, R13Off_m0x7294
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7294
    addi    r5, r31, 0x24
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7201(r13)
branch_0x801baf30:
    lbz     r0, R13Off_m0x7200(r13)
    extsb.  r0, r0
    bne-    branch_0x801baf60
    addi    r3, r13, R13Off_m0x7288
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDGrp_Fv@l
    addi    r3, r13, R13Off_m0x7288
    addi    r5, r31, 0x30
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x7200(r13)
branch_0x801baf60:
    lbz     r0, R13Off_m0x71ff(r13)
    extsb.  r0, r0
    bne-    branch_0x801baf90
    addi    r3, r13, R13Off_m0x727c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDGrp_Fv@l
    addi    r3, r13, R13Off_m0x727c
    addi    r5, r31, 0x3c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71ff(r13)
branch_0x801baf90:
    lbz     r0, R13Off_m0x71fe(r13)
    extsb.  r0, r0
    bne-    branch_0x801bafc0
    addi    r3, r13, R13Off_m0x7270
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7270
    addi    r5, r31, 0x48
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fe(r13)
branch_0x801bafc0:
    lbz     r0, R13Off_m0x71fd(r13)
    extsb.  r0, r0
    bne-    branch_0x801baff0
    addi    r3, r13, R13Off_m0x7264
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7264
    addi    r5, r31, 0x54
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fd(r13)
branch_0x801baff0:
    lbz     r0, R13Off_m0x71fc(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb020
    addi    r3, r13, R13Off_m0x7258
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFGrp_Fv@l
    addi    r3, r13, R13Off_m0x7258
    addi    r5, r31, 0x60
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fc(r13)
branch_0x801bb020:
    lbz     r0, R13Off_m0x71fb(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb050
    addi    r3, r13, R13Off_m0x724c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffDist_Fv@l
    addi    r3, r13, R13Off_m0x724c
    addi    r5, r31, 0x6c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fb(r13)
branch_0x801bb050:
    lbz     r0, R13Off_m0x71fa(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb080
    addi    r3, r13, R13Off_m0x7240
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitDist_Fv@l
    addi    r3, r13, R13Off_m0x7240
    addi    r5, r31, 0x78
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71fa(r13)
branch_0x801bb080:
    lbz     r0, R13Off_m0x71f9(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb0b0
    addi    r3, r13, R13Off_m0x7234
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolDist_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolDist_Fv@l
    addi    r3, r13, R13Off_m0x7234
    addi    r5, r31, 0x84
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f9(r13)
branch_0x801bb0b0:
    lbz     r0, R13Off_m0x71f8(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb0e0
    addi    r3, r13, R13Off_m0x7228
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModEffFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModEffFunk_Fv@l
    addi    r3, r13, R13Off_m0x7228
    addi    r5, r31, 0x90
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f8(r13)
branch_0x801bb0e0:
    lbz     r0, R13Off_m0x71f7(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb110
    addi    r3, r13, R13Off_m0x721c
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModPitFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModPitFunk_Fv@l
    addi    r3, r13, R13Off_m0x721c
    addi    r5, r31, 0x9c
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f7(r13)
branch_0x801bb110:
    lbz     r0, R13Off_m0x71f6(r13)
    extsb.  r0, r0
    bne-    branch_0x801bb140
    addi    r3, r13, R13Off_m0x7210
    bl      initiate__10JSUPtrListFv
    lis     r3, __dt__26JSUList_15JALSeModVolFunk_Fv@ha
    addi    r4, r3, __dt__26JSUList_15JALSeModVolFunk_Fv@l
    addi    r3, r13, R13Off_m0x7210
    addi    r5, r31, 0xa8
    bl      __register_global_object
    li      r0, 0x1
    stb     r0, R13Off_m0x71f6(r13)
branch_0x801bb140:
    lwz     r0, 0x14(sp)
    lwz     r31, 0xc(sp)
    addi    sp, sp, 0x10
    mtlr    r0
    blr


.globl unk_801bb154
unk_801bb154: # 0x801bb154
    addi    r3, r3, -0x20
    b       __dt__16TMapObjMessengerFv


.globl unk_801bb15c
unk_801bb15c: # 0x801bb15c
    addi    r3, r3, -0x20
    b       __dt__11TMapObjTurnFv

